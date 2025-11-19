uint64_t sub_1005F50F8(uint64_t a1)
{
  v15 = type metadata accessor for EnvironmentValues();
  v2 = *(v15 - 8);
  __chkstk_darwin(v15);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008EE800);
  __chkstk_darwin(v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for DismissAction();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001B104(a1, v7, &qword_1008EE800);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v15);
  }

  DismissAction.callAsFunction()();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1005F5374()
{
  sub_100140278(&qword_1008F55E8);
  sub_100141EEC(&qword_1008F55F0);
  sub_100141EEC(&qword_1008F55F8);
  sub_100141EEC(&qword_1008F5600);
  sub_100141EEC(&qword_1008F0478);
  sub_10014A6B0(&qword_1008F5608, &qword_1008F5600);
  sub_100141EEC(&qword_1008F0500);
  sub_10014A6B0(&qword_1008F0508, &qword_1008F0500);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_10000FCBC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1005F558C()
{
  result = qword_1008F5618;
  if (!qword_1008F5618)
  {
    sub_100141EEC(&qword_1008F5610);
    sub_1005F5618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5618);
  }

  return result;
}

unint64_t sub_1005F5618()
{
  result = qword_1008F5620;
  if (!qword_1008F5620)
  {
    sub_100141EEC(&qword_1008F5628);
    sub_10014A6B0(&qword_1008F5630, &qword_1008F5638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5620);
  }

  return result;
}

uint64_t sub_1005F56E0(uint64_t a1, uint64_t a2)
{
  InfoPaneDetailView = type metadata accessor for TrainingLoadInfoPaneDetailView();
  (*(*(InfoPaneDetailView - 8) + 16))(a2, a1, InfoPaneDetailView);
  return a2;
}

uint64_t sub_1005F5744(uint64_t a1, uint64_t a2)
{
  InfoPaneDetailView = type metadata accessor for TrainingLoadInfoPaneDetailView();
  (*(*(InfoPaneDetailView - 8) + 32))(a2, a1, InfoPaneDetailView);
  return a2;
}

uint64_t sub_1005F57A8()
{
  v1 = *(type metadata accessor for TrainingLoadInfoPaneDetailView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1005F50F8(v2);
}

uint64_t sub_1005F5808(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1005F5850(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1005F5894(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1005F58BC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v33 = a3;
  v35 = a2;
  v6 = sub_100140278(&unk_1008DB8A0);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  if (a4 == 2)
  {
    return v35;
  }

  if (a4 == 1)
  {
    if (a1 && (v13 = [a1 allFriends]) != 0)
    {
      v14 = v13;
      sub_100288F9C();
      sub_10001E0D8(&qword_1008EE6C0, sub_100288F9C);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
    {
      sub_10029CE74(_swiftEmptyArrayStorage);
      v15 = v31;
    }

    else
    {
      v15 = &_swiftEmptySetSingleton;
    }

    sub_100311230(v15);

    v36 = sub_100474770(v16);
    sub_10047367C(&v36);

    v17 = v36;
    if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
    {
LABEL_36:
      v34 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v34 = *(v36 + 16);
    }

    v12 = 0;
    while (1)
    {
      if (v34 == v12)
      {

        return 0;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v12 >= *(v17 + 16))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v19 = *(v17 + 8 * v12 + 32);
      }

      v20 = v19;
      v21 = [v19 UUID];
      if (v21)
      {
        v22 = v21;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = 0;
      }

      else
      {
        v23 = 1;
      }

      v24 = type metadata accessor for UUID();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v9, v23, 1, v24);
      sub_100315E0C(v9, v11);
      if ((*(v25 + 48))(v11, 1, v24) == 1)
      {
        sub_10020864C(v11);
      }

      else
      {
        v26 = UUID.uuidString.getter();
        v28 = v27;
        (*(v25 + 8))(v11, v24);
        if (v26 == v35 && v28 == v33)
        {

          return v12;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v29)
        {

          return v12;
        }
      }

      if (__OFADD__(v12++, 1))
      {
        goto LABEL_35;
      }
    }
  }

  if (a4)
  {
    return -1;
  }

  else
  {
    return v35;
  }
}

Swift::Int sub_1005F5CC8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_100035B30(v7, a3);
  String.hash(into:)();

  if (!a3 || a3 == 2)
  {
    Hasher._combine(_:)(a1);
  }

  else if (a3 == 1)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t sub_1005F5D7C(uint64_t a1)
{
  v2 = sub_100061584();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F5DB8(uint64_t a1)
{
  v2 = sub_100061584();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F5DF4(uint64_t a1)
{
  v2 = sub_1000613DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F5E30(uint64_t a1)
{
  v2 = sub_1000613DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F5E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005F6864(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F5EA0(uint64_t a1)
{
  v2 = sub_10005AA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F5EDC(uint64_t a1)
{
  v2 = sub_10005AA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F5F18(uint64_t a1)
{
  v2 = sub_1005F803C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F5F54(uint64_t a1)
{
  v2 = sub_1005F803C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F5F90(uint64_t a1)
{
  v2 = sub_10005AAEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F5FCC(uint64_t a1)
{
  v2 = sub_10005AAEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005F60A0(uint64_t a1)
{
  v2 = sub_1005F80E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F60DC(uint64_t a1)
{
  v2 = sub_1005F80E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6118(uint64_t a1)
{
  v2 = sub_1005F8090();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F6154(uint64_t a1)
{
  v2 = sub_1005F8090();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6190(uint64_t a1)
{
  v2 = sub_1005F818C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F61CC(uint64_t a1)
{
  v2 = sub_1005F818C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6208(uint64_t a1)
{
  v2 = sub_1005F81E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F6244(uint64_t a1)
{
  v2 = sub_1005F81E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6280(uint64_t a1)
{
  v2 = sub_10005C8C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F62BC(uint64_t a1)
{
  v2 = sub_10005C8C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F62F8(uint64_t a1)
{
  v2 = sub_1005F7F40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F6334(uint64_t a1)
{
  v2 = sub_1005F7F40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6370(uint64_t a1)
{
  v2 = sub_100061648();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F63AC(uint64_t a1)
{
  v2 = sub_100061648();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F63E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1005F6468(uint64_t a1)
{
  v2 = sub_1005F7F94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F64A4(uint64_t a1)
{
  v2 = sub_1005F7F94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F64E0(uint64_t a1)
{
  v2 = sub_10006169C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F651C(uint64_t a1)
{
  v2 = sub_10006169C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F6558@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1005F6C7C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_1005F6594()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_100035B30(*v0, *(v0 + 16));
  String.hash(into:)();

  if (!v2 || v2 == 2)
  {
    Hasher._combine(_:)(v1);
  }

  else if (v2 == 1)
  {

    String.hash(into:)();
  }
}

Swift::Int sub_1005F664C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  sub_100035B30(v5, v3);
  String.hash(into:)();

  if (!v3 || v3 == 2)
  {
    Hasher._combine(_:)(v1);
  }

  else if (v3 == 1)
  {
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

unint64_t sub_1005F66F8()
{
  result = qword_1008F5658;
  if (!qword_1008F5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5658);
  }

  return result;
}

uint64_t sub_1005F674C()
{
  v0 = &off_10083D778;
  if ((FIIsTinkerVegaOrFitnessJunior() & 1) == 0)
  {
    v4[0] = &off_10083D778;
    sub_10019ECD4(&off_10083DCD8);
    v0 = &off_10083D778;
  }

  v1 = type metadata accessor for WorkoutFeatures();
  v4[3] = v1;
  v4[4] = sub_10001E0D8(&qword_1008E4E00, &type metadata accessor for WorkoutFeatures);
  v2 = sub_100005994(v4);
  (*(*(v1 - 8) + 104))(v2, enum case for WorkoutFeatures.Kahana(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005A40(v4);
  if ((v1 & 1) != 0 || (os_variant_has_internal_content() & 1) == 0)
  {
    v4[0] = &off_10083D778;
    sub_10019ECD4(&off_10083DD10);
    return v4[0];
  }

  return v0;
}

uint64_t sub_1005F6864(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73676E6972 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684107116 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F74736968 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63697274656DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6472617761 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x646E65697266 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100747FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100747F80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100747F60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x54676F6C61746163 && a2 == 0xEA00000000007069 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x73646E657274 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646E657274 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100747F40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1005F6C7C(void *a1)
{
  v2 = sub_100140278(&qword_1008F5660);
  v80 = *(v2 - 8);
  v81 = v2;
  __chkstk_darwin(v2);
  v95 = &v56 - v3;
  v4 = sub_100140278(&qword_1008F5668);
  v82 = *(v4 - 8);
  v83 = v4;
  __chkstk_darwin(v4);
  v91 = &v56 - v5;
  v6 = sub_100140278(&qword_1008F5670);
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v90 = &v56 - v7;
  v77 = sub_100140278(&qword_1008F5678);
  v76 = *(v77 - 8);
  __chkstk_darwin(v77);
  v89 = &v56 - v8;
  v75 = sub_100140278(&qword_1008F5680);
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v88 = &v56 - v9;
  v73 = sub_100140278(&qword_1008F5688);
  v72 = *(v73 - 8);
  __chkstk_darwin(v73);
  v87 = &v56 - v10;
  v71 = sub_100140278(&qword_1008F5690);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v86 = &v56 - v11;
  v62 = sub_100140278(&qword_1008F5698);
  v69 = *(v62 - 8);
  __chkstk_darwin(v62);
  v94 = &v56 - v12;
  v67 = sub_100140278(&qword_1008F56A0);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v85 = &v56 - v13;
  v68 = sub_100140278(&qword_1008F56A8);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v84 = &v56 - v14;
  v64 = sub_100140278(&qword_1008F56B0);
  v63 = *(v64 - 8);
  __chkstk_darwin(v64);
  v93 = &v56 - v15;
  v92 = sub_100140278(&qword_1008F56B8);
  v61 = *(v92 - 8);
  __chkstk_darwin(v92);
  v17 = &v56 - v16;
  v18 = sub_100140278(&qword_1008F56C0);
  v60 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v56 - v19;
  v21 = sub_100140278(&qword_1008F56C8);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v56 - v23;
  v25 = a1[3];
  v97 = a1;
  v26 = sub_1000066AC(a1, v25);
  sub_10005AA98();
  v27 = v96;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v28 = v97;
  }

  else
  {
    v57 = v20;
    v56 = v18;
    v58 = v17;
    v29 = v92;
    v30 = v93;
    v32 = v94;
    v31 = v95;
    v59 = v22;
    v96 = KeyedDecodingContainer.allKeys.getter();
    if (*(v96 + 16) != 1 || *(v96 + 32) == 13)
    {
      v34 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v35;
      sub_100140278(&qword_1008F56D8);
      *v36 = &type metadata for CardType;
      v26 = v24;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v34 - 8) + 104))(v36, enum case for DecodingError.typeMismatch(_:), v34);
      swift_willThrow();
      (*(v59 + 8))(v24, v21);
      swift_unknownObjectRelease();
      v28 = v97;
    }

    else
    {
      switch(*(v96 + 32))
      {
        case 1:
          v99 = 1;
          sub_1005F81E0();
          v49 = v58;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v61 + 8))(v49, v29);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 1;
          v28 = v97;
          break;
        case 2:
          v100 = 2;
          sub_1005F818C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v63 + 8))(v30, v64);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 2;
          goto LABEL_21;
        case 3:
          v102 = 3;
          sub_10005C8C8();
          v44 = v84;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1005F8138();
          v45 = v68;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v46 = v97;
          v47 = v59;
          (*(v66 + 8))(v44, v45);
          (*(v47 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = v101;
          v28 = v46;
          break;
        case 4:
          v103 = 4;
          sub_100061584();
          v42 = v85;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v65 + 8))(v42, v67);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 3;
          goto LABEL_21;
        case 5:
          v104 = 5;
          sub_1005F80E4();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v50 = v62;
          v51 = KeyedDecodingContainer.decode(_:forKey:)();
          v52 = v97;
          v26 = v51;
          (*(v69 + 8))(v32, v50);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v28 = v52;
          break;
        case 6:
          v105 = 6;
          sub_1005F8090();
          v53 = v86;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v70 + 8))(v53, v71);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 4;
          goto LABEL_21;
        case 7:
          v106 = 7;
          sub_10005AAEC();
          v48 = v87;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v72 + 8))(v48, v73);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 5;
          goto LABEL_21;
        case 8:
          v107 = 8;
          sub_1005F803C();
          v55 = v88;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v74 + 8))(v55, v75);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 6;
          goto LABEL_21;
        case 9:
          v108 = 9;
          sub_1000613DC();
          v43 = v89;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v76 + 8))(v43, v77);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 7;
          goto LABEL_21;
        case 0xA:
          v109 = 10;
          sub_10006169C();
          v54 = v90;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v78 + 8))(v54, v79);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 8;
          goto LABEL_21;
        case 0xB:
          v111 = 11;
          sub_1005F7F94();
          v38 = v91;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          sub_1005F7FE8();
          v39 = v83;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v40 = v97;
          v41 = v59;
          (*(v82 + 8))(v38, v39);
          (*(v41 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = v110;
          v28 = v40;
          break;
        case 0xC:
          v112 = 12;
          sub_1005F7F40();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v80 + 8))(v31, v81);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 9;
          goto LABEL_21;
        default:
          v98 = 0;
          sub_100061648();
          v33 = v57;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v60 + 8))(v33, v56);
          (*(v59 + 8))(v24, v21);
          swift_unknownObjectRelease();
          v26 = 0;
LABEL_21:
          v28 = v97;
          break;
      }
    }
  }

  sub_100005A40(v28);
  return v26;
}

unint64_t sub_1005F7F40()
{
  result = qword_1008F56E0;
  if (!qword_1008F56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56E0);
  }

  return result;
}

unint64_t sub_1005F7F94()
{
  result = qword_1008F56E8;
  if (!qword_1008F56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56E8);
  }

  return result;
}

unint64_t sub_1005F7FE8()
{
  result = qword_1008F56F0;
  if (!qword_1008F56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F56F0);
  }

  return result;
}

unint64_t sub_1005F803C()
{
  result = qword_1008F5708;
  if (!qword_1008F5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5708);
  }

  return result;
}

unint64_t sub_1005F8090()
{
  result = qword_1008F5718;
  if (!qword_1008F5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5718);
  }

  return result;
}

unint64_t sub_1005F80E4()
{
  result = qword_1008F5720;
  if (!qword_1008F5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5720);
  }

  return result;
}

unint64_t sub_1005F8138()
{
  result = qword_1008F5738;
  if (!qword_1008F5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5738);
  }

  return result;
}

unint64_t sub_1005F818C()
{
  result = qword_1008F5740;
  if (!qword_1008F5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5740);
  }

  return result;
}

unint64_t sub_1005F81E0()
{
  result = qword_1008F5748;
  if (!qword_1008F5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5748);
  }

  return result;
}

unint64_t sub_1005F8234()
{
  result = qword_1008F57C8;
  if (!qword_1008F57C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57C8);
  }

  return result;
}

unint64_t sub_1005F828C()
{
  result = qword_1008F57D8;
  if (!qword_1008F57D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57D8);
  }

  return result;
}

unint64_t sub_1005F82E4()
{
  result = qword_1008F57E0;
  if (!qword_1008F57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57E0);
  }

  return result;
}

unint64_t sub_1005F833C()
{
  result = qword_1008F57E8;
  if (!qword_1008F57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57E8);
  }

  return result;
}

unint64_t sub_1005F8394()
{
  result = qword_1008F57F0;
  if (!qword_1008F57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57F0);
  }

  return result;
}

unint64_t sub_1005F83EC()
{
  result = qword_1008F57F8;
  if (!qword_1008F57F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F57F8);
  }

  return result;
}

unint64_t sub_1005F8444()
{
  result = qword_1008F5800;
  if (!qword_1008F5800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5800);
  }

  return result;
}

unint64_t sub_1005F849C()
{
  result = qword_1008F5808;
  if (!qword_1008F5808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5808);
  }

  return result;
}

unint64_t sub_1005F84F4()
{
  result = qword_1008F5810;
  if (!qword_1008F5810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5810);
  }

  return result;
}

unint64_t sub_1005F854C()
{
  result = qword_1008F5818;
  if (!qword_1008F5818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5818);
  }

  return result;
}

unint64_t sub_1005F85A4()
{
  result = qword_1008F5820;
  if (!qword_1008F5820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5820);
  }

  return result;
}

unint64_t sub_1005F85FC()
{
  result = qword_1008F5828;
  if (!qword_1008F5828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5828);
  }

  return result;
}

unint64_t sub_1005F8654()
{
  result = qword_1008F5830;
  if (!qword_1008F5830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5830);
  }

  return result;
}

unint64_t sub_1005F86AC()
{
  result = qword_1008F5838;
  if (!qword_1008F5838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5838);
  }

  return result;
}

unint64_t sub_1005F8704()
{
  result = qword_1008F5840;
  if (!qword_1008F5840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5840);
  }

  return result;
}

unint64_t sub_1005F875C()
{
  result = qword_1008F5848;
  if (!qword_1008F5848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5848);
  }

  return result;
}

unint64_t sub_1005F87B4()
{
  result = qword_1008F5850;
  if (!qword_1008F5850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5850);
  }

  return result;
}

unint64_t sub_1005F880C()
{
  result = qword_1008F5858;
  if (!qword_1008F5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5858);
  }

  return result;
}

unint64_t sub_1005F8864()
{
  result = qword_1008F5860;
  if (!qword_1008F5860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5860);
  }

  return result;
}

unint64_t sub_1005F88BC()
{
  result = qword_1008F5868;
  if (!qword_1008F5868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5868);
  }

  return result;
}

unint64_t sub_1005F8914()
{
  result = qword_1008F5870;
  if (!qword_1008F5870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5870);
  }

  return result;
}

unint64_t sub_1005F896C()
{
  result = qword_1008F5878;
  if (!qword_1008F5878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5878);
  }

  return result;
}

unint64_t sub_1005F89C4()
{
  result = qword_1008F5880;
  if (!qword_1008F5880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5880);
  }

  return result;
}

unint64_t sub_1005F8A1C()
{
  result = qword_1008F5888;
  if (!qword_1008F5888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5888);
  }

  return result;
}

unint64_t sub_1005F8A74()
{
  result = qword_1008F5890;
  if (!qword_1008F5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5890);
  }

  return result;
}

unint64_t sub_1005F8ACC()
{
  result = qword_1008F5898;
  if (!qword_1008F5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5898);
  }

  return result;
}

unint64_t sub_1005F8B24()
{
  result = qword_1008F58A0;
  if (!qword_1008F58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58A0);
  }

  return result;
}

unint64_t sub_1005F8B7C()
{
  result = qword_1008F58A8;
  if (!qword_1008F58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58A8);
  }

  return result;
}

unint64_t sub_1005F8BD4()
{
  result = qword_1008F58B0;
  if (!qword_1008F58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58B0);
  }

  return result;
}

unint64_t sub_1005F8C2C()
{
  result = qword_1008F58B8;
  if (!qword_1008F58B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58B8);
  }

  return result;
}

unint64_t sub_1005F8C84()
{
  result = qword_1008F58C0;
  if (!qword_1008F58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58C0);
  }

  return result;
}

unint64_t sub_1005F8CDC()
{
  result = qword_1008F58C8;
  if (!qword_1008F58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58C8);
  }

  return result;
}

unint64_t sub_1005F8D34()
{
  result = qword_1008F58D0;
  if (!qword_1008F58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F58D0);
  }

  return result;
}

uint64_t sub_1005F8D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1005FA030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1005F8DD0(uint64_t a1)
{
  v2 = sub_100008C88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1005F8E0C(uint64_t a1)
{
  v2 = sub_100008C88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1005F8E48()
{
  v1 = 0x1000000000000;
  if (!v0[6])
  {
    v1 = 0;
  }

  v2 = 0x10000000000;
  if (!v0[5])
  {
    v2 = 0;
  }

  v3 = &_mh_execute_header;
  if (!v0[4])
  {
    v3 = 0;
  }

  v4 = 0x1000000;
  if (!v0[3])
  {
    v4 = 0;
  }

  v5 = 0x10000;
  if (!v0[2])
  {
    v5 = 0;
  }

  v6 = 256;
  if (!v0[1])
  {
    v6 = 0;
  }

  return sub_10000F520(v6 | *v0 | v5 | v4 | v3 | v2 | v1);
}

unint64_t sub_1005F8EFC()
{
  result = sub_1005F8F20();
  qword_100926090 = result;
  *algn_100926098 = v1;
  return result;
}

unint64_t sub_1005F8F20()
{
  v0 = 0xD00000000000001DLL;
  v1 = type metadata accessor for WorkoutFeatures();
  v5[3] = v1;
  v5[4] = sub_100043B08();
  v2 = sub_100005994(v5);
  (*(*(v1 - 8) + 104))(v2, enum case for WorkoutFeatures.Kahana(_:), v1);
  LOBYTE(v1) = isFeatureEnabled(_:)();
  sub_100005A40(v5);
  if ((v1 & 1) == 0)
  {
    if (os_variant_has_internal_content())
    {
      return 0xD000000000000020;
    }
  }

  return v0;
}

void sub_1005F9000()
{
  v0 = static os_log_type_t.default.getter();
  v1 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v0))
  {
    v2 = v1;
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17[0] = v4;
    *v3 = 136315138;
    v5 = _typeName(_:qualified:)();
    v7 = sub_10000AFDC(v5, v6, v17);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v2, v0, "%s did receive HKStandalonePhoneFitnessModeDidUpdateNotification notification", v3, 0xCu);
    sub_100005A40(v4);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = 0x1000000000000;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 6))
    {
      v10 = 0;
    }

    v11 = 0x10000000000;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 5))
    {
      v11 = 0;
    }

    v12 = &_mh_execute_header;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 4))
    {
      v12 = 0;
    }

    v13 = 0x1000000;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 3))
    {
      v13 = 0;
    }

    v14 = 0x10000;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 2))
    {
      v14 = 0;
    }

    v15 = 256;
    if (!*(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1))
    {
      v15 = 0;
    }

    v16 = sub_100008D00(v15 | *(Strong + OBJC_IVAR___CHOnboardingCoordinator_criteria) | v14 | v13 | v12 | v11 | v10);
    if (!*&v9[OBJC_IVAR___CHOnboardingCoordinator_activityGoalsQuery] && v16 != 5)
    {
      sub_100009004();
    }
  }
}

id sub_1005F91E8()
{
  v1 = *&v0[OBJC_IVAR___CHOnboardingCoordinator_notifyTokens];
  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      notify_cancel(*(v1 + v3));
      v3 += 4;
      --v2;
    }

    while (v2);
  }

  v5.receiver = v0;
  v5.super_class = type metadata accessor for OnboardingCoordinator();
  return objc_msgSendSuper2(&v5, "dealloc");
}

void *sub_1005F930C()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria);
  v2 = 0x1000000000000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 6))
  {
    v2 = 0;
  }

  v3 = 0x10000000000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 5))
  {
    v3 = 0;
  }

  v4 = &_mh_execute_header;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 4))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 3))
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 2))
  {
    v6 = 0;
  }

  v7 = 256;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1))
  {
    v7 = 0;
  }

  v46 = sub_100008D00(v7 | *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria) | v6 | v5 | v4 | v3 | v2);
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:1 forKey:v10];

  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v14 = v1[3];
  v15 = objc_opt_self();
  v16 = [v15 isRunningInStoreDemoMode];
  v17 = [v15 sharedApplication];
  v18 = [v17 launchedToTest];

  v19 = [v8 standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  v21 = [v19 BOOLForKey:v20];

  *v1 = v11;
  v1[1] = v12;
  v1[2] = v13;
  v1[3] = v14;
  v1[4] = v21;
  v1[5] = v16;
  v1[6] = v18;
  v22 = 0x1000000000000;
  if (!v18)
  {
    v22 = 0;
  }

  v23 = 0x10000000000;
  if (!v16)
  {
    v23 = 0;
  }

  v24 = &_mh_execute_header;
  if (!v21)
  {
    v24 = 0;
  }

  v25 = 0x1000000;
  if (!v14)
  {
    v25 = 0;
  }

  v26 = 0x10000;
  if (!v13)
  {
    v26 = 0;
  }

  v27 = 256;
  if (!v12)
  {
    v27 = 0;
  }

  v28 = sub_100008D00(v27 | v11 | v26 | v25 | v24 | v23 | v22);
  v29 = static os_log_type_t.default.getter();
  v30 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v29))
  {
    v31 = v30;
    v32 = swift_slowAlloc();
    v47[0] = swift_slowAlloc();
    *v32 = 136315650;
    v33 = _typeName(_:qualified:)();
    v35 = sub_10000AFDC(v33, v34, v47);

    *(v32 + 4) = v35;
    *(v32 + 12) = 2080;
    v36 = 0x1000000000000;
    if (!v1[6])
    {
      v36 = 0;
    }

    v37 = 0x10000000000;
    if (!v1[5])
    {
      v37 = 0;
    }

    v38 = &_mh_execute_header;
    if (!v1[4])
    {
      v38 = 0;
    }

    v39 = 0x1000000;
    if (!v1[3])
    {
      v39 = 0;
    }

    v40 = 0x10000;
    if (!v1[2])
    {
      v40 = 0;
    }

    v41 = 256;
    if (!v1[1])
    {
      v41 = 0;
    }

    v42 = sub_10000F520(v41 | *v1 | v40 | v39 | v38 | v37 | v36);
    v44 = sub_10000AFDC(v42, v43, v47);

    *(v32 + 14) = v44;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v28;
    _os_log_impl(&_mh_execute_header, v31, v29, "%s set completed welcome views default; criteria %s newPhase %ld", v32, 0x20u);
    swift_arrayDestroy();
  }

  result = sub_10000B2DC();
  if (v28 != v46)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result onboardingCoordinatorPhaseDidChangeTo:v28];
      result = swift_unknownObjectRelease();
    }
  }

  if (v28 == 5)
  {
    __chkstk_darwin(result);
    return UnfairLock.acquire<A>(_:)();
  }

  return result;
}

void *sub_1005F9818()
{
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria);
  if (*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 6))
  {
    v2 = 0x1000000000000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 5))
  {
    v3 = 0x10000000000;
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 4))
  {
    v4 = &_mh_execute_header;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 3))
  {
    v5 = 0;
  }

  v6 = 0x10000;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 2))
  {
    v6 = 0;
  }

  v7 = 256;
  if (!*(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria + 1))
  {
    v7 = 0;
  }

  v8 = sub_100008D00(v7 | *(v0 + OBJC_IVAR___CHOnboardingCoordinator_criteria) | v6 | v5 | v4 | v3 | v2);
  v9 = [objc_opt_self() standardUserDefaults];
  if (qword_1008DAEF8 != -1)
  {
    swift_once();
  }

  v10 = String._bridgeToObjectiveC()();
  [v9 setBool:1 forKey:v10];

  if (v1[6])
  {
    v11 = 0x1000000000000;
  }

  else
  {
    v11 = 0;
  }

  if (v1[5])
  {
    v12 = 0x10000000000;
  }

  else
  {
    v12 = 0;
  }

  if (v1[4])
  {
    v13 = &_mh_execute_header;
  }

  else
  {
    v13 = 0;
  }

  v14 = 0x1000000;
  if (!v1[3])
  {
    v14 = 0;
  }

  v15 = 0x10000;
  if (!v1[2])
  {
    v15 = 0;
  }

  v16 = 256;
  if (!v1[1])
  {
    v16 = 0;
  }

  v17 = sub_100008D00(v16 | *v1 | v15 | v14 | v13 | v12 | v11);
  v18 = static os_log_type_t.default.getter();
  v19 = HKLogActivity;
  if (os_log_type_enabled(HKLogActivity, v18))
  {
    v34 = v19;
    v20 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v20 = 136315650;
    v21 = _typeName(_:qualified:)();
    v23 = sub_10000AFDC(v21, v22, v35);

    *(v20 + 4) = v23;
    *(v20 + 12) = 2080;
    v24 = 0x1000000000000;
    if (!v1[6])
    {
      v24 = 0;
    }

    v25 = 0x10000000000;
    if (!v1[5])
    {
      v25 = 0;
    }

    v26 = &_mh_execute_header;
    if (!v1[4])
    {
      v26 = 0;
    }

    v27 = 0x1000000;
    if (!v1[3])
    {
      v27 = 0;
    }

    v28 = 0x10000;
    if (!v1[2])
    {
      v28 = 0;
    }

    v29 = 256;
    if (!v1[1])
    {
      v29 = 0;
    }

    v30 = sub_10000F520(v29 | *v1 | v28 | v27 | v26 | v25 | v24);
    v32 = sub_10000AFDC(v30, v31, v35);

    *(v20 + 14) = v32;
    *(v20 + 22) = 2048;
    *(v20 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v34, v18, "%s set completed what's new views default; criteria %s newPhase %ld", v20, 0x20u);
    swift_arrayDestroy();
  }

  result = sub_10000B2DC();
  if (v17 != v8)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      [result onboardingCoordinatorPhaseDidChangeTo:v17];
      result = swift_unknownObjectRelease();
    }
  }

  if (v17 == 5)
  {
    __chkstk_darwin(result);
    return UnfairLock.acquire<A>(_:)();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OnboardingCoordinator.Criteria(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[7])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OnboardingCoordinator.Criteria(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1005F9D6C()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 BOOLForKey:v2];

  v4 = objc_opt_self();
  v5 = [v4 isRunningInStoreDemoMode];
  v6 = [v4 sharedApplication];
  v7 = [v6 launchedToTest];

  v8 = [v0 standardUserDefaults];
  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 BOOLForKey:v9];

  v11 = 0x1000000000000;
  if (!v7)
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if (!v5)
  {
    v12 = 0;
  }

  v13 = &_mh_execute_header;
  if (!v10)
  {
    v13 = 0;
  }

  v14 = 256;
  if (!v3)
  {
    v14 = 0;
  }

  return v14 | v3 | v12 | v11 | v13;
}

unint64_t sub_1005F9EE4(int a1, unsigned int a2)
{
  v2 = a1;
  v3 = (a1 | a2) & 0x100;
  v4 = (a1 | a2) & 0x10000;
  v5 = (a1 | a2) & 0x1000000;
  v6 = a2 & 1;
  v7 = objc_opt_self();
  v8 = [v7 isRunningInStoreDemoMode];
  v9 = [v7 sharedApplication];
  v10 = [v9 launchedToTest];

  v11 = [objc_opt_self() standardUserDefaults];
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 BOOLForKey:v12];

  v14 = 0x1000000000000;
  if (!v10)
  {
    v14 = 0;
  }

  v15 = 0x10000000000;
  if (!v8)
  {
    v15 = 0;
  }

  v16 = &_mh_execute_header;
  if (!v13)
  {
    v16 = 0;
  }

  if (v2)
  {
    v17 = 1;
  }

  else
  {
    v17 = v6;
  }

  return v3 | v17 | v4 | v5 | v15 | v14 | v16;
}

uint64_t sub_1005FA030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4765766F4D736168 && a2 == 0xEB000000006C616FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100766850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6372657845736168 && a2 == 0xEF6C616F47657369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E617453736168 && a2 == 0xEC0000006C616F47 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100766870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4D6F6D65447369 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100766890 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_1005FA2CC()
{
  result = qword_1008F5970;
  if (!qword_1008F5970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5970);
  }

  return result;
}

uint64_t sub_1005FA33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1005FA384(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1005FA404()
{
  v1 = type metadata accessor for AccessibilityChildBehavior();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100140278(&qword_1008F5A50);
  __chkstk_darwin(v5);
  v7 = (&v24 - v6);
  *v7 = static Alignment.topTrailing.getter();
  v7[1] = v8;
  v9 = sub_100140278(&qword_1008F5A58);
  sub_1005FA670(v0, v7 + *(v9 + 44));
  v10 = [objc_opt_self() secondarySystemBackgroundColor];
  v11 = Color.init(uiColor:)();
  v12 = static Edge.Set.all.getter();
  v13 = v7 + *(sub_100140278(&qword_1008F5A60) + 36);
  *v13 = v11;
  v13[8] = v12;
  v14 = v7 + *(v5 + 36);
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #12.0 }

  *v14 = _Q0;
  *&v14[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  static AccessibilityChildBehavior.combine.getter();
  sub_1005FCA1C();
  View.accessibilityElement(children:)();
  (*(v2 + 8))(v4, v1);
  return sub_10000EA04(v7, &qword_1008F5A50);
}

uint64_t sub_1005FA670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008F5A88);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v30[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v8);
  v10 = &v30[-v9 - 8];
  v11 = sub_100140278(&qword_1008F5A90);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v15);
  v17 = &v30[-v16 - 8];
  *v17 = static HorizontalAlignment.center.getter();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = sub_100140278(&qword_1008F5A98);
  sub_1005FA994(a1, &v17[*(v18 + 44)]);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v19 = &v17[*(v12 + 44)];
  v20 = v32;
  *v19 = v31;
  *(v19 + 1) = v20;
  *(v19 + 2) = v33;
  v21 = swift_allocObject();
  v22 = *(a1 + 48);
  *(v21 + 48) = *(a1 + 32);
  *(v21 + 64) = v22;
  *(v21 + 80) = *(a1 + 64);
  *(v21 + 96) = *(a1 + 80);
  v23 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v23;
  sub_1005FCBF4(a1, v30);
  sub_100140278(&qword_1008F5AA0);
  sub_1005FCC2C();
  Button.init(action:label:)();
  v24 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v26 = &v10[*(v5 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_10001B104(v17, v14, &qword_1008F5A90);
  sub_10001B104(v10, v7, &qword_1008F5A88);
  sub_10001B104(v14, a2, &qword_1008F5A90);
  v27 = sub_100140278(&qword_1008F5AB0);
  sub_10001B104(v7, a2 + *(v27 + 48), &qword_1008F5A88);
  sub_10000EA04(v10, &qword_1008F5A88);
  sub_10000EA04(v17, &qword_1008F5A90);
  sub_10000EA04(v7, &qword_1008F5A88);
  return sub_10000EA04(v14, &qword_1008F5A90);
}

uint64_t sub_1005FA994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a1;
  *&v68 = sub_100140278(&qword_1008F5AB8) - 8;
  __chkstk_darwin(v68);
  v69 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v71 = &v62 - v6;
  v7 = *(a1 + 40);
  sub_100549ED0(v7, 80.0);
  v72 = Image.init(uiImage:)();
  v67 = static Edge.Set.all.getter();
  v8 = [v7 givenName];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v99 = v9;
  v100 = v11;
  sub_10000FCBC();
  v12 = Text.init<A>(_:)();
  v14 = v13;
  LOBYTE(v11) = v15;
  static Font.body.getter();
  v16 = Text.font(_:)();
  v75 = v17;
  v76 = v16;
  v19 = v18;
  v70 = v20;

  sub_10004642C(v12, v14, v11 & 1);

  v21 = static Edge.Set.all.getter();
  v73 = v19 & 1;
  v74 = v21;
  LOBYTE(v99) = v19 & 1;
  LOBYTE(v88[0]) = 0;
  LocalizedStringKey.init(stringLiteral:)();
  v22 = Text.init(_:tableName:bundle:comment:)();
  v24 = v23;
  LOBYTE(v14) = v25;
  static Font.footnote.getter();
  v26 = Text.font(_:)();
  v28 = v27;
  v30 = v29;
  v62 = v31;

  sub_10004642C(v22, v24, v14 & 1);

  static Color.secondary.getter();
  v32 = Text.foregroundColor(_:)();
  v64 = v33;
  v65 = v32;
  LOBYTE(v14) = v34;
  v36 = v35;
  v63 = v35;

  sub_10004642C(v26, v28, v30 & 1);

  v37 = static Edge.Set.bottom.getter();
  LOBYTE(v28) = v37;
  LODWORD(v62) = v37;
  EdgeInsets.init(_all:)();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  LOBYTE(v14) = v14 & 1;
  LOBYTE(v99) = v14;
  LOBYTE(v88[0]) = 0;
  v46 = v71;
  sub_1005FAF3C(v71);
  LOBYTE(v22) = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v47 = v46 + *(v68 + 44);
  *v47 = v22;
  *(v47 + 8) = v48;
  *(v47 + 16) = v49;
  *(v47 + 24) = v50;
  *(v47 + 32) = v51;
  *(v47 + 40) = 0;
  v52 = v69;
  sub_10001B104(v46, v69, &qword_1008F5AB8);
  *a2 = v72;
  *(a2 + 8) = v67;
  *(a2 + 16) = xmmword_1006D4680;
  *(a2 + 32) = xmmword_1006D46B0;
  *(a2 + 48) = 0;
  *&v81 = v76;
  *(&v81 + 1) = v75;
  LOBYTE(v82) = v73;
  *(&v82 + 1) = *v80;
  DWORD1(v82) = *&v80[3];
  *(&v82 + 1) = v70;
  LOBYTE(v83[0]) = v74;
  DWORD1(v83[0]) = *&v79[3];
  *(v83 + 1) = *v79;
  v68 = xmmword_1006FF9E0;
  *(v83 + 8) = xmmword_1006FF9E0;
  *(&v83[1] + 8) = xmmword_1006FF9E0;
  BYTE8(v83[2]) = 0;
  v53 = v82;
  *(a2 + 56) = v81;
  *(a2 + 72) = v53;
  v54 = v83[1];
  *(a2 + 88) = v83[0];
  *(a2 + 104) = v54;
  *(a2 + 113) = *(&v83[1] + 9);
  v56 = v64;
  v55 = v65;
  *&v84 = v65;
  *(&v84 + 1) = v64;
  LOBYTE(v85) = v14;
  DWORD1(v85) = *(v78 + 3);
  *(&v85 + 1) = v78[0];
  *(&v85 + 1) = v36;
  LOBYTE(v86) = v28;
  DWORD1(v86) = *&v77[3];
  *(&v86 + 1) = *v77;
  *(&v86 + 1) = v39;
  *&v87[0] = v41;
  *(&v87[0] + 1) = v43;
  *&v87[1] = v45;
  BYTE8(v87[1]) = 0;
  *(a2 + 136) = v84;
  v57 = v85;
  v58 = v86;
  v59 = v87[0];
  *(a2 + 193) = *(v87 + 9);
  *(a2 + 184) = v59;
  *(a2 + 168) = v58;
  *(a2 + 152) = v57;
  v60 = sub_100140278(&qword_1008F5AC0);
  sub_10001B104(v52, a2 + *(v60 + 80), &qword_1008F5AB8);

  sub_10001B104(&v81, &v99, &qword_1008DC4C0);
  sub_10001B104(&v84, &v99, &qword_1008DC4C0);
  sub_10000EA04(v71, &qword_1008F5AB8);
  sub_10000EA04(v52, &qword_1008F5AB8);
  v88[0] = v55;
  v88[1] = v56;
  v89 = v14;
  *v90 = v78[0];
  *&v90[3] = *(v78 + 3);
  v91 = v63;
  v92 = v62;
  *v93 = *v77;
  *&v93[3] = *&v77[3];
  v94 = v39;
  v95 = v41;
  v96 = v43;
  v97 = v45;
  v98 = 0;
  sub_10000EA04(v88, &qword_1008DC4C0);
  v99 = v76;
  v100 = v75;
  v101 = v73;
  *v102 = *v80;
  *&v102[3] = *&v80[3];
  v103 = v70;
  v104 = v74;
  *v105 = *v79;
  *&v105[3] = *&v79[3];
  v106 = v68;
  v107 = v68;
  v108 = 0;
  sub_10000EA04(&v99, &qword_1008DC4C0);
}

uint64_t sub_1005FAF3C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for Capsule();
  __chkstk_darwin(v2 - 8);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for BorderedProminentButtonStyle();
  v4 = *(v44 - 8);
  __chkstk_darwin(v44);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100140278(&qword_1008F5AC8);
  __chkstk_darwin(v7);
  v9 = &v44 - v8;
  v10 = sub_1005FB750();
  if (v10)
  {
    v46 = static Color.clear.getter();
    v11 = [objc_opt_self() tertiarySystemBackgroundColor];
    v12 = Color.init(uiColor:)();
  }

  else
  {
    v13 = [objc_opt_self() tertiarySystemBackgroundColor];
    v46 = Color.init(uiColor:)();
    v12 = static Color.clear.getter();
  }

  v45 = v12;
  v14 = swift_allocObject();
  v15 = *(v1 + 48);
  *(v14 + 56) = *(v1 + 32);
  *(v14 + 72) = v15;
  *(v14 + 88) = *(v1 + 64);
  v16 = *(v1 + 16);
  *(v14 + 24) = *v1;
  *(v14 + 104) = *(v1 + 80);
  *(v14 + 16) = v10 & 1;
  *(v14 + 40) = v16;
  __chkstk_darwin(v14);
  *(&v44 - 80) = v17;
  *(&v44 - 9) = xmmword_1006FF9F0;
  *(&v44 - 7) = xmmword_1006FFA00;
  *(&v44 - 5) = 0u;
  *(&v44 - 3) = 0u;
  sub_1005FCBF4(v1, v49);
  sub_100140278(&qword_1008F5AD0);
  sub_10014A6B0(&qword_1008F5AD8, &qword_1008F5AD0);
  Button.init(action:label:)();
  KeyPath = swift_getKeyPath();
  *&v49[0] = v46;

  v19 = AnyShapeStyle.init<A>(_:)();
  v20 = &v9[*(v7 + 36)];
  *v20 = KeyPath;
  v20[1] = v19;
  BorderedProminentButtonStyle.init()();
  sub_1005FCD0C();
  sub_1000660C8(&qword_1008DC548, &type metadata accessor for BorderedProminentButtonStyle);
  v21 = v47;
  v22 = v44;
  View.buttonStyle<A>(_:)();
  (*(v4 + 8))(v6, v22);
  sub_10000EA04(v9, &qword_1008F5AC8);
  v23 = (v21 + *(sub_100140278(&qword_1008F5AF8) + 36));
  sub_100140278(&qword_1008DC568);
  static ButtonBorderShape.capsule.getter();
  *v23 = swift_getKeyPath();
  v24 = (v21 + *(sub_100140278(&qword_1008F5B00) + 36));
  v25 = *(sub_100140278(&qword_1008DC578) + 28);
  v26 = enum case for ControlSize.small(_:);
  v27 = type metadata accessor for ControlSize();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  v28 = enum case for RoundedCornerStyle.continuous(_:);
  v29 = type metadata accessor for RoundedCornerStyle();
  v30 = v48;
  (*(*(v29 - 8) + 104))(v48, v28, v29);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v31 = v21 + *(sub_100140278(&qword_1008F5B08) + 36);
  sub_1005FCDF0(v30, v31);
  v32 = v31 + *(sub_100140278(&qword_1008F5B10) + 36);
  v33 = v49[1];
  *v32 = v49[0];
  *(v32 + 16) = v33;
  *(v32 + 32) = v50;
  v34 = sub_100140278(&qword_1008F5B18);
  *(v31 + *(v34 + 52)) = v45;
  *(v31 + *(v34 + 56)) = 256;

  v35 = static Alignment.center.getter();
  v37 = v36;
  sub_1005FCE54(v30);
  v38 = (v31 + *(sub_100140278(&qword_1008F5B20) + 36));
  *v38 = v35;
  v38[1] = v37;
  v39 = static Alignment.center.getter();
  v41 = v40;

  result = sub_100140278(&qword_1008F5B28);
  v43 = (v31 + *(result + 36));
  *v43 = v39;
  v43[1] = v41;
  return result;
}

uint64_t sub_1005FB554()
{
  v0 = type metadata accessor for Font.TextStyle();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = Image.init(systemName:)();
  (*(v1 + 104))(v3, enum case for Font.TextStyle.footnote(_:), v0);
  static Font.Weight.bold.getter();
  v5 = static Font.system(_:weight:)();
  (*(v1 + 8))(v3, v0);
  KeyPath = swift_getKeyPath();
  v7 = static Edge.Set.all.getter();
  v14 = 0;
  *&v9 = v4;
  *(&v9 + 1) = KeyPath;
  *&v10 = v5;
  BYTE8(v10) = v7;
  v11 = 0x4020000000000000uLL;
  *&v12 = 0;
  *(&v12 + 1) = 0x4020000000000000;
  v13 = 0;
  LocalizedStringKey.init(stringLiteral:)();
  sub_100140278(&qword_1008F1C58);
  sub_1005298B0();
  View.accessibilityLabel(_:)();

  v15[2] = v11;
  v15[3] = v12;
  v16 = v13;
  v15[0] = v9;
  v15[1] = v10;
  return sub_10000EA04(v15, &qword_1008F1C58);
}

uint64_t sub_1005FB750()
{
  if (*v0)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    if (!v25)
    {
      return 0;
    }

    v1 = v26 & 0xFFFFFFFFFFFFFF8;
    if (v26 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v3 = 0;
      v23 = v1;
      v4 = &selRef_currentItem;
      v22 = i;
      while (1)
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v3 >= *(v1 + 16))
          {
            goto LABEL_25;
          }

          v6 = *(v26 + 8 * v3 + 32);
        }

        v7 = v6;
        v1 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        isa = Array._bridgeToObjectiveC()().super.isa;
        v9 = [v7 contactWithKeys:isa];

        if (v9)
        {
          v10 = [v9 v4[432]];
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0;
        }

        v14 = v4;
        v15 = [*(v24 + 40) v4[432]];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v13)
        {
          if (v11 == v16 && v13 == v18)
          {

LABEL_23:
            v20 = 1;
            goto LABEL_28;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        ++v3;
        v5 = v1 == v22;
        v1 = v23;
        v4 = v14;
        if (v5)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_27:
    v20 = 0;
LABEL_28:

    return v20;
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_1000660C8(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1005FBA4C(char a1, uint64_t a2)
{
  v4 = sub_100140278(&qword_1008E1760);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5 - 8];
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for MainActor();
  sub_1005FCBF4(a2, v15);
  if (a1)
  {
    v8 = &unk_1006FFCD0;
  }

  else
  {
    v8 = &unk_1006FFCC0;
  }

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = &protocol witness table for MainActor;
  v11 = *(a2 + 48);
  *(v10 + 64) = *(a2 + 32);
  *(v10 + 80) = v11;
  *(v10 + 96) = *(a2 + 64);
  *(v10 + 112) = *(a2 + 80);
  v12 = *(a2 + 16);
  *(v10 + 32) = *a2;
  *(v10 + 48) = v12;
  sub_10026E198(0, 0, v6, v8, v10);
}

double sub_1005FBBD0@<D0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v20 = static VerticalAlignment.center.getter();
  v31 = 1;
  sub_1005FBD54(a1, &v26, a3, a4, a5, a6, a7, a8, a9, a10);
  v33 = v27;
  v34 = v28;
  v35[0] = v29[0];
  *(v35 + 9) = *(v29 + 9);
  v32 = v26;
  v36[2] = v28;
  v37[0] = v29[0];
  *(v37 + 9) = *(v29 + 9);
  v36[0] = v26;
  v36[1] = v27;
  sub_10001B104(&v32, v25, &qword_1008DC4C0);
  sub_10000EA04(v36, &qword_1008DC4C0);
  *&v30[7] = v32;
  *&v30[64] = *(v35 + 9);
  *&v30[55] = v35[0];
  *&v30[39] = v34;
  *&v30[23] = v33;
  v21 = *v30;
  *(a2 + 33) = *&v30[16];
  v22 = *&v30[48];
  *(a2 + 49) = *&v30[32];
  *(a2 + 65) = v22;
  result = *&v30[64];
  *(a2 + 81) = *&v30[64];
  v24 = v31;
  *a2 = v20;
  *(a2 + 8) = 0;
  *(a2 + 16) = v24;
  *(a2 + 17) = v21;
  return result;
}

uint64_t sub_1005FBD54@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v20 = type metadata accessor for Font.TextStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v24 - 8);
  if (a1)
  {
    LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v25);
    Image.init(systemName:)();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)();

    v26._countAndFlagsBits = 32;
    v26._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v26);
    v27 = [objc_opt_self() mainBundle];
    v28 = String._bridgeToObjectiveC()();
    v29 = [v27 localizedStringForKey:v28 value:0 table:0];

    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v33._countAndFlagsBits = v30;
    v33._object = v32;
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v33);

    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v34);
    LocalizedStringKey.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    a6 = a10;
    a5 = a9;
    a4 = a8;
    a3 = a7;
  }

  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  v39 = v38;
  (*(v21 + 104))(v23, enum case for Font.TextStyle.caption2(_:), v20);
  static Font.Weight.bold.getter();
  static Font.system(_:weight:)();
  (*(v21 + 8))(v23, v20);
  v40 = Text.font(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;

  sub_10004642C(v35, v37, v39 & 1);

  result = static Edge.Set.all.getter();
  *a2 = v40;
  *(a2 + 8) = v42;
  *(a2 + 16) = v44 & 1;
  *(a2 + 24) = v46;
  *(a2 + 32) = result;
  *(a2 + 40) = a3;
  *(a2 + 48) = a4;
  *(a2 + 56) = a5;
  *(a2 + 64) = a6;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1005FC0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1005FC174, v6, v5);
}

uint64_t sub_1005FC174()
{
  v1 = v0[7];
  v2 = *v1;
  v0[11] = *v1;
  if (v2)
  {
    v3 = v1[6];
    v4 = v1[7];
    v5 = v1[8];
    v6 = v1[9];

    v7 = swift_task_alloc();
    v0[12] = v7;
    *v7 = v0;
    v7[1] = sub_1005FC2D8;

    return sub_10019401C(v3, v4, v5, v6);
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_1000660C8(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_1005FC2D8(char a1)
{
  v2 = *v1;
  *(*v1 + 49) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_1005FC424, v4, v3);
}

uint64_t sub_1005FC424()
{
  v1 = *(v0 + 49);

  if (v1)
  {
LABEL_4:
    v2 = *(v0 + 8);

    return v2();
  }

  if (*(*(v0 + 56) + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 16;

    static Published.subscript.setter();
    goto LABEL_4;
  }

  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_1000660C8(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);

  return EnvironmentObject.error()();
}

uint64_t sub_1005FC560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  type metadata accessor for MainActor();
  v4[8] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[9] = v6;
  v4[10] = v5;

  return _swift_task_switch(sub_1005FC5F8, v6, v5);
}

uint64_t sub_1005FC5F8()
{
  v1 = v0[7];
  v2 = *v1;
  v0[11] = *v1;
  if (v2)
  {
    v3 = v1[6];
    v4 = v1[7];

    v5 = swift_task_alloc();
    v0[12] = v5;
    *v5 = v0;
    v5[1] = sub_1005FC744;

    return sub_100194C18(v3, v4);
  }

  else
  {
    type metadata accessor for ActivitySharingFriendListDataProvider();
    sub_1000660C8(&qword_1008DC038, type metadata accessor for ActivitySharingFriendListDataProvider);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_1005FC744(char a1)
{
  v2 = *v1;
  *(*v1 + 49) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_1005FC890, v4, v3);
}

uint64_t sub_1005FC890()
{
  v1 = *(v0 + 49);

  if (v1)
  {
LABEL_4:
    v2 = *(v0 + 8);

    return v2();
  }

  if (*(*(v0 + 56) + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = 1;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    *(v0 + 48) = 16;

    static Published.subscript.setter();
    goto LABEL_4;
  }

  type metadata accessor for ActivitySharingFriendDetailAlertCoordinator();
  sub_1000660C8(&qword_1008EB690, type metadata accessor for ActivitySharingFriendDetailAlertCoordinator);

  return EnvironmentObject.error()();
}

unint64_t sub_1005FCA1C()
{
  result = qword_1008F5A68;
  if (!qword_1008F5A68)
  {
    sub_100141EEC(&qword_1008F5A50);
    sub_1005FCAD4();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5A68);
  }

  return result;
}

unint64_t sub_1005FCAD4()
{
  result = qword_1008F5A70;
  if (!qword_1008F5A70)
  {
    sub_100141EEC(&qword_1008F5A60);
    sub_10014A6B0(&qword_1008F5A78, &qword_1008F5A80);
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5A70);
  }

  return result;
}

uint64_t sub_1005FCBB8()
{
  v1 = *(v0 + 72);
  v3[0] = *(v0 + 56);
  v3[1] = v1;
  v3[2] = *(v0 + 88);
  return sub_100432B88(v3);
}

unint64_t sub_1005FCC2C()
{
  result = qword_1008F5AA8;
  if (!qword_1008F5AA8)
  {
    sub_100141EEC(&qword_1008F5AA0);
    sub_1005298B0();
    sub_1000660C8(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5AA8);
  }

  return result;
}

unint64_t sub_1005FCD0C()
{
  result = qword_1008F5AE0;
  if (!qword_1008F5AE0)
  {
    sub_100141EEC(&qword_1008F5AC8);
    sub_10014A6B0(&qword_1008F5AE8, &qword_1008F5AF0);
    sub_10014A6B0(&qword_1008E2BB8, &qword_1008E2BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5AE0);
  }

  return result;
}

uint64_t sub_1005FCDF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Capsule();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1005FCE54(uint64_t a1)
{
  v2 = type metadata accessor for Capsule();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1005FCEB0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BACC;

  return sub_1005FC0DC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1005FCF60()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_1005FCFD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10002BBC0;

  return sub_1005FC560(a1, v4, v5, v1 + 32);
}

unint64_t sub_1005FD084()
{
  result = qword_1008F5B30;
  if (!qword_1008F5B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B30);
  }

  return result;
}

unint64_t sub_1005FD0DC()
{
  result = qword_1008F5B38;
  if (!qword_1008F5B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B38);
  }

  return result;
}

unint64_t sub_1005FD134()
{
  result = qword_1008F5B40;
  if (!qword_1008F5B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B40);
  }

  return result;
}

uint64_t sub_1005FD18C()
{
  AppDependency.wrappedValue.getter();
  v0 = v6;
  v6 = 0;
  v1 = [v0 wheelchairUseWithError:&v6];

  if (v1)
  {
    v2 = v6;
    [v1 wheelchairUse];

    return sub_10007C29C();
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v5 = sub_10007C29C();

    return v5;
  }
}

uint64_t sub_1005FD29C()
{
  sub_100140278(&qword_1008DD148);
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  qword_1009260A0 = result;
  return result;
}

uint64_t sub_1005FD30C()
{
  v0 = sub_100140278(&qword_1008DD138);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = type metadata accessor for TypeDisplayRepresentation();
  sub_100163368(v5, qword_1009260A8);
  sub_10001AC90(v5, qword_1009260A8);
  LocalizedStringResource.init(stringLiteral:)();
  (*(v4 + 56))(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1005FD47C()
{
  v0 = sub_100140278(&qword_1008F5B90);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  v4 = sub_100140278(&qword_1008F5B98);
  __chkstk_darwin(v4);
  v5 = sub_100140278(&qword_1008F5B88);
  sub_100163368(v5, qword_1009260C0);
  sub_10001AC90(v5, qword_1009260C0);
  sub_10018542C();
  EntityURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v6._object = 0x80000001007494F0;
  v6._countAndFlagsBits = 0xD000000000000014;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v6);
  (*(v1 + 104))(v3, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  EntityURLRepresentation.StringInterpolation.appendInterpolation(_:)();
  (*(v1 + 8))(v3, v0);
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  EntityURLRepresentation.StringInterpolation.appendLiteral(_:)(v7);
  return EntityURLRepresentation.init(stringInterpolation:)();
}

uint64_t sub_1005FD678@<X0>(void *a1@<X8>)
{
  if (qword_1008DAF00 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1009260A0;
}

unint64_t sub_1005FD6F0()
{
  result = qword_1008F5B48;
  if (!qword_1008F5B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B48);
  }

  return result;
}

uint64_t sub_1005FD744@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAF10 != -1)
  {
    swift_once();
  }

  v2 = sub_100140278(&qword_1008F5B88);
  v3 = sub_10001AC90(v2, qword_1009260C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1005FD7FC()
{
  result = qword_1008F5B50;
  if (!qword_1008F5B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B50);
  }

  return result;
}

unint64_t sub_1005FD850()
{
  result = qword_1008F5B58;
  if (!qword_1008F5B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B58);
  }

  return result;
}

unint64_t sub_1005FD8A8()
{
  result = qword_1008F5B60;
  if (!qword_1008F5B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B60);
  }

  return result;
}

uint64_t sub_1005FD908()
{
  sub_1005FDC4C();
  v1 = URLRepresentableEntity.urlRepresentationParameter.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1005FD974@<X0>(uint64_t a1@<X8>)
{
  if (qword_1008DAF08 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = sub_10001AC90(v2, qword_1009260A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1005FDA20()
{
  result = qword_1008F5B68;
  if (!qword_1008F5B68)
  {
    sub_100141EEC(&qword_1008F5B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B68);
  }

  return result;
}

uint64_t sub_1005FDA84(uint64_t a1)
{
  v2 = sub_10018542C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1005FDAD4()
{
  result = qword_1008F5B78;
  if (!qword_1008F5B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B78);
  }

  return result;
}

uint64_t sub_1005FDB28()
{
  v0 = sub_1005FD18C();

  return DisplayRepresentation.init(stringLiteral:)(v0);
}

uint64_t sub_1005FDB68(uint64_t a1)
{
  v2 = sub_1005FD8A8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1005FDBB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1005FDBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1005FDC4C()
{
  result = qword_1008F5B80;
  if (!qword_1008F5B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5B80);
  }

  return result;
}

Swift::Int sub_1005FDCA8()
{
  v1 = type metadata accessor for Date();
  v52 = *(v1 - 8);
  v53 = v1;
  __chkstk_darwin(v1);
  v48 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v3 - 8);
  v50 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v46 - v6;
  __chkstk_darwin(v7);
  v51 = &v46 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&unk_1008DB8A0);
  __chkstk_darwin(v12 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  Hasher.init()();
  v21 = type metadata accessor for FriendCard();
  v22 = v21[5];
  v54 = v0;
  v23 = (v0 + v22);
  v24 = *v23;
  v25 = *(v23 + 16);
  sub_100035B30(*v23, *(v23 + 16));
  String.hash(into:)();

  if (!v25 || v25 == 2)
  {
    Hasher._combine(_:)(v24);
  }

  else if (v25 == 1)
  {
    String.hash(into:)();
  }

  v26 = v54;
  Hasher._combine(_:)(*(v54 + v21[6]));
  Hasher._combine(_:)(*(v26 + v21[7]));
  v27 = *(v26 + v21[10]);
  if (v27)
  {
    v28 = [v27 UUID];
    if (v28)
    {
      v29 = v28;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v10 + 56))(v17, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v17, 1, 1, v9);
    }

    sub_100015E80(v17, v20, &unk_1008DB8A0);
  }

  else
  {
    (*(v10 + 56))(v20, 1, 1, v9);
  }

  sub_10001B104(v20, v14, &unk_1008DB8A0);
  v30 = (*(v10 + 48))(v14, 1, v9);
  v31 = v52;
  if (v30 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v32 = v47;
    (*(v10 + 32))(v47, v14, v9);
    Hasher._combine(_:)(1u);
    sub_100071910(&qword_1008E4E10, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v10 + 8))(v32, v9);
  }

  v33 = v53;
  v34 = v51;
  sub_10000EA04(v20, &unk_1008DB8A0);
  v35 = *(v26 + v21[11]);
  v36 = v50;
  if (v35)
  {
    v37 = [v35 snapshotUploadedDate];
    if (v37)
    {
      v38 = v49;
      v39 = v37;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v40 = 0;
    }

    else
    {
      v40 = 1;
      v38 = v49;
    }

    (*(v31 + 56))(v38, v40, 1, v33);
    sub_100015E80(v38, v34, &unk_1008F73A0);
  }

  else
  {
    (*(v31 + 56))(v34, 1, 1, v33);
  }

  sub_10001B104(v34, v36, &unk_1008F73A0);
  if ((*(v31 + 48))(v36, 1, v33) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v41 = v48;
    (*(v31 + 32))(v48, v36, v33);
    Hasher._combine(_:)(1u);
    sub_100071910(&qword_1008DEF18, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v31 + 8))(v41, v33);
  }

  sub_10000EA04(v34, &unk_1008F73A0);
  if (v27 && (v42 = [v27 currentCompetition]) != 0)
  {
    v43 = v42;
    v44 = [v42 description];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  NSObject.hash(into:)();
  return Hasher.finalize()();
}

uint64_t sub_1005FE3BC()
{
  type metadata accessor for FriendCard();
  _print_unlocked<A, B>(_:_:)();
  v0._countAndFlagsBits = 58;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  _print_unlocked<A, B>(_:_:)();
  v1._countAndFlagsBits = 58;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100071910(&qword_1008EE840, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 540945696;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  sub_100140278(&qword_1008F5BA0);
  v4._countAndFlagsBits = Optional.description.getter();
  String.append(_:)(v4);

  return 0;
}

void sub_1005FE57C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10006DAB0(319, &qword_1008F5C10, &qword_1008E53D0);
    if (v1 <= 0x3F)
    {
      sub_10006DAB0(319, &unk_1008F2148, &qword_1008E9FF8);
      if (v2 <= 0x3F)
      {
        sub_10006DAB0(319, &unk_1008F5C18, &unk_1008F15E0);
        if (v3 <= 0x3F)
        {
          sub_1000059F8(319, &qword_1008F24B0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_1005FE6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_powerController] = 0;
  *&v3[OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellPadding] = 0x4028000000000000;
  *&v3[OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_cellInset] = 0x4030000000000000;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v15.receiver = v3;
  v15.super_class = type metadata accessor for WorkoutDetailPowerTableViewCell();
  v6 = objc_msgSendSuper2(&v15, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006D4E70;
  v9 = v6;
  v10 = [v9 contentView];
  v11 = [v10 heightAnchor];

  v12 = [v11 constraintGreaterThanOrEqualToConstant:132.0];
  *(v8 + 32) = v12;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v7 activateConstraints:isa];

  return v9;
}

void sub_1005FE960(void *a1, void *a2, void *a3, void *a4, unint64_t a5, void *a6)
{
  v163 = a6;
  v194 = a5;
  v185 = a4;
  v184 = a3;
  v164 = type metadata accessor for WorkoutDetailChartView();
  __chkstk_darwin(v164);
  v165 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v168 = &v162 - v10;
  v201 = type metadata accessor for WorkoutChartViewModel(0);
  v195 = *(v201 - 8);
  __chkstk_darwin(v201);
  v167 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_100140278(&qword_1008DD4A8);
  v190 = *(v191 - 8);
  __chkstk_darwin(v191);
  v189 = &v162 - v12;
  v188 = sub_100140278(&qword_1008DD4B0);
  v187 = *(v188 - 8);
  __chkstk_darwin(v188);
  v186 = &v162 - v13;
  v183 = sub_100140278(&qword_1008DD250);
  __chkstk_darwin(v183);
  v192 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v182 = &v162 - v16;
  __chkstk_darwin(v17);
  v181 = &v162 - v18;
  v180 = sub_100140278(&qword_1008DD6D8);
  v179 = *(v180 - 8);
  __chkstk_darwin(v180);
  v178 = &v162 - v19;
  v200 = sub_100140278(&unk_1008F73D0);
  v176 = *(v200 - 1);
  __chkstk_darwin(v200);
  v174 = &v162 - v20;
  v21 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v21 - 8);
  v177 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v162 - v24;
  __chkstk_darwin(v26);
  v171 = &v162 - v27;
  __chkstk_darwin(v28);
  v30 = &v162 - v29;
  v31 = type metadata accessor for Date();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v172 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v173 = &v162 - v35;
  __chkstk_darwin(v36);
  v199 = &v162 - v37;
  __chkstk_darwin(v38);
  v40 = &v162 - v39;
  __chkstk_darwin(v41);
  v43 = &v162 - v42;
  v45 = __chkstk_darwin(v44);
  v47 = &v162 - v46;
  v196 = &v162 - v46;
  v197 = v40;
  v193 = a2;
  v198 = a1;
  v175 = v43;
  if (a2)
  {
    v48 = a2;
    v49 = [a2 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v50 = v32;
    v51 = v32[4];
    v51(v30, v43, v31);
    v52 = v50;
    v53 = 1;
    v202 = v50[7];
    v202(v30, 0, 1, v31);
    v51(v47, v30, v31);
    v54 = [v48 endDate];
    if (v54)
    {
      v55 = v54;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v53 = 0;
    }

    v56 = v171;
    v202(v25, v53, 1, v31);
    sub_1002239C4(v25, v56);
    v57 = v50[6];
    if (v57(v56, 1, v31) != 1)
    {
      v62 = v197;
      v51(v197, v56, v31);
      v32 = v52;
      v40 = v62;
      v47 = v196;
      v61 = v175;
      goto LABEL_12;
    }

    v32 = v52;
    v47 = v196;
    v40 = v197;
  }

  else
  {
    v202 = v32[7];
    (v202)(v30, 1, 1, v31, v45);
    v58 = [a1 startDate];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v57 = v32[6];
    if (v57(v30, 1, v31) != 1)
    {
      sub_10000EA04(v30, &unk_1008F73A0);
    }

    v56 = v171;
    v202(v171, 1, 1, v31);
  }

  v59 = [v198 endDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v60 = v57(v56, 1, v31);
  v61 = v175;
  if (v60 != 1)
  {
    sub_10000EA04(v56, &unk_1008F73A0);
  }

LABEL_12:
  v63 = v32[2];
  v63(v61, v47, v31);
  v63(v199, v40, v31);
  v64 = v63;
  v65 = [objc_opt_self() mainScreen];
  [v65 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v208.origin.x = v67;
  v208.origin.y = v69;
  v208.size.width = v71;
  v208.size.height = v73;
  v74 = CGRectGetWidth(v208) + -56.0;
  type metadata accessor for WorkoutChartProperties();
  v75 = swift_allocObject();
  *(v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBuckets) = 0x404E000000000000;
  *(v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_bucketDuration) = 0x404E000000000000;
  v76 = v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth;
  v170 = (v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_viewWidth);
  *v76 = 0;
  *(v76 + 8) = 1;
  v77 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties__touchPoint;
  v206 = 0;
  v207 = 1;
  v169 = sub_100140278(&unk_1008F73E0);
  v78 = v174;
  Published.init(initialValue:)();
  v79 = v176;
  (*(v176 + 4))(v75 + v77, v78, v200);
  *(v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v174 = OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate;
  v171 = (v32 + 7);
  v202((v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_selectedDate), 1, 1, v31);
  *(v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetAmount) = 0;
  v80 = v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_offsetFrom;
  *v80 = 0;
  *(v80 + 8) = 1;
  v81 = v173;
  v64(v173, v61, v31);
  v203 = v31;
  swift_beginAccess();
  v64(v172, v81, v203);
  v82 = v203;
  Published.init(initialValue:)();
  v83 = v32[1];
  v83(v81, v82);
  swift_endAccess();
  v64((v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_onScreenBucketStartDate), v61, v82);
  swift_beginAccess();
  (*(v79 + 1))(v75 + v77, v200);
  v204 = 0;
  v205 = 1;
  Published.init(initialValue:)();
  swift_endAccess();
  v84 = v170;
  *v170 = v74;
  *(v84 + 8) = 0;
  v64((v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutStartDate), v61, v82);
  v85 = v199;
  v64((v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutEndDate), v199, v82);
  Date.timeIntervalSince(_:)();
  *(v75 + OBJC_IVAR____TtC10FitnessApp22WorkoutChartProperties_workoutDuration) = v86;
  sub_1002E552C(1, 10.0, 90.0);
  v83(v85, v82);
  v199 = (v32 + 1);
  v176 = v83;
  v83(v61, v82);
  v87 = v177;
  v202(v177, 1, 1, v82);
  v88 = v174;
  swift_beginAccess();
  sub_100169198(v87, &v88[v75]);
  swift_endAccess();
  type metadata accessor for WorkoutDetailPowerDataStore();
  v89 = swift_allocObject();
  v90 = OBJC_IVAR____TtC10FitnessApp27WorkoutDetailPowerDataStore__powerInfo;
  v206 = 0;
  v91 = v193;
  v202 = v193;
  v200 = v184;
  v92 = v185;
  v93 = v198;
  sub_100140278(&qword_1008DD6E0);
  v94 = v178;
  Published.init(initialValue:)();
  (*(v179 + 32))(&v89[v90], v94, v180);
  v95 = [objc_allocWithZone(NSAttributedString) init];
  swift_beginAccess();
  v204 = v95;
  sub_1000059F8(0, &qword_1008DD230);
  Published.init(initialValue:)();
  swift_endAccess();
  *(v89 + 5) = 0;
  swift_unknownObjectWeakInit();
  v96 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutData;
  v97 = v195;
  v98 = v181;
  (*(v195 + 56))(v181, 1, 1, v201);
  sub_100169118(v98, v182);
  v99 = v186;
  Published.init(initialValue:)();
  sub_10000EA04(v98, &qword_1008DD250);
  (*(v187 + 32))(&v89[v96], v99, v188);
  v100 = OBJC_IVAR____TtC10FitnessApp22WorkoutDetailDataStore__inWorkoutProperties;
  v206 = 0;
  sub_100140278(&unk_1008DD260);
  v101 = v189;
  Published.init(initialValue:)();
  (*(v190 + 32))(&v89[v100], v101, v191);
  *(v89 + 2) = v93;
  *(v89 + 3) = v91;
  v102 = v200;
  *(v89 + 6) = v200;
  *(v89 + 8) = v92;
  v103 = v93;
  v104 = v202;
  v105 = v102;
  v106 = v92;
  v107 = [v106 fitnessUIFormattingManager];
  type metadata accessor for WorkoutChartDataElementFormattingManager();
  v108 = swift_allocObject();
  v109 = sub_10005772C();

  v108[2] = v107;
  v108[3] = v103;
  v108[4] = v91;
  v108[5] = v109;
  *(v89 + 7) = v108;
  sub_1004CD80C(v194);
  swift_getKeyPath();
  swift_getKeyPath();

  v110 = v192;
  static Published.subscript.getter();

  if ((*(v97 + 48))(v110, 1, v201) == 1)
  {

    v111 = v203;
    v112 = v176;
    v176(v197, v203);
    v112(v196, v111);
    sub_10000EA04(v110, &qword_1008DD250);
    return;
  }

  v113 = v203;
  v114 = v167;
  sub_10017A92C(v110, v167);
  v115 = v168;
  sub_10017A990(v114, v168, type metadata accessor for WorkoutChartViewModel);
  *(v115 + *(v164 + 20)) = v75;
  v116 = OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_powerController;
  v117 = v166;
  v118 = *&v166[OBJC_IVAR___CHWorkoutDetailPowerTableViewCell_powerController];
  if (v118)
  {
    sub_10017A990(v115, v165, type metadata accessor for WorkoutDetailChartView);
    v119 = v118;
    dispatch thunk of UIHostingController.rootView.setter();
    v120 = [v119 view];
    if (v120)
    {
      v121 = v120;
LABEL_26:
      v161 = v176;
      [v121 layoutIfNeeded];

      sub_1003515A0(v115, type metadata accessor for WorkoutDetailChartView);
      sub_1003515A0(v114, type metadata accessor for WorkoutChartViewModel);
      v161(v197, v113);
      v161(v196, v113);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }

  sub_10017A990(v115, v165, type metadata accessor for WorkoutDetailChartView);
  v122 = objc_allocWithZone(sub_100140278(&qword_1008E9D80));
  v123 = UIHostingController.init(rootView:)();
  v124 = *&v117[v116];
  *&v117[v116] = v123;
  v125 = v123;

  v119 = v125;
  v126 = [v119 view];
  if (!v126)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v127 = v126;
  [v126 setTranslatesAutoresizingMaskIntoConstraints:0];

  v128 = [v119 view];
  if (!v128)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v129 = v128;
  v130 = [objc_opt_self() clearColor];
  [v129 setBackgroundColor:v130];

  v131 = [v117 contentView];
  v132 = [v119 view];
  if (!v132)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v133 = v132;
  [v131 addSubview:v132];

  [v163 addChildViewController:v119];
  sub_100140278(&unk_1008E4E20);
  v134 = swift_allocObject();
  *(v134 + 16) = xmmword_1006D5300;
  v135 = [v119 view];
  if (!v135)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v136 = v135;
  v137 = [v135 topAnchor];

  v138 = [v117 contentView];
  v139 = [v138 topAnchor];

  v140 = [v137 constraintEqualToAnchor:v139 constant:12.0];
  *(v134 + 32) = v140;
  v141 = [v119 view];
  if (!v141)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v142 = v141;
  v143 = [v141 leadingAnchor];

  v144 = [v117 contentView];
  v145 = [v144 leadingAnchor];

  v146 = [v143 constraintEqualToAnchor:v145 constant:12.0];
  *(v134 + 40) = v146;
  v147 = [v119 view];
  if (!v147)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v148 = v147;
  v149 = [v147 trailingAnchor];

  v150 = [v117 contentView];
  v151 = [v150 trailingAnchor];

  v152 = [v149 constraintEqualToAnchor:v151 constant:-12.0];
  *(v134 + 48) = v152;
  v153 = [v119 view];
  if (!v153)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v154 = v153;
  v155 = objc_opt_self();
  v156 = [v154 bottomAnchor];

  v157 = [v117 contentView];
  v158 = [v157 bottomAnchor];

  v159 = [v156 constraintEqualToAnchor:v158 constant:-12.0];
  *(v134 + 56) = v159;
  sub_1000059F8(0, &qword_1008DC980);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v155 activateConstraints:isa];

  [v119 didMoveToParentViewController:v163];
  v121 = [v119 view];

  if (v121)
  {
    v115 = v168;
    v114 = v167;
    v113 = v203;
    goto LABEL_26;
  }

LABEL_35:
  __break(1u);
}

id sub_100600124()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailPowerTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FitnessPlusUpNextCardActionContext()
{
  result = qword_1008F5D00;
  if (!qword_1008F5D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100600200()
{
  result = type metadata accessor for CatalogLockup();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricLocation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_100600284()
{
  _StringGuts.grow(_:)(48);

  v0._countAndFlagsBits = CatalogLockup.description.getter();
  String.append(_:)(v0);

  return 0xD00000000000002ELL;
}

unint64_t sub_100600304()
{
  sub_100140278(&qword_1008DD8E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D46C0;
  *(inited + 32) = static HealthDataConstants.catalogWorkoutIdentifierProperty.getter();
  *(inited + 40) = v1;
  v2 = CatalogLockup.identifier.getter();
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_1002FC244(inited);
  swift_setDeallocating();
  sub_10054AE7C(inited + 32);
  return v4;
}

uint64_t sub_1006003A0()
{
  v1 = type metadata accessor for AttributedString();
  __chkstk_darwin(v1 - 8);
  v2 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = *(v0 + OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator);
  if (!v5 || !v5[OBJC_IVAR___CHDivingDataCalculator_diveSectionMode])
  {
    sub_1002226E0();
    AttributedString.init(stringLiteral:)();
    return NSAttributedString.init(_:)();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  static Published.subscript.getter();

  v37[8] = v34;
  v37[9] = v35;
  v38[0] = v36[0];
  *(v38 + 9) = *(v36 + 9);
  v37[4] = v30;
  v37[5] = v31;
  v37[6] = v32;
  v37[7] = v33;
  v37[0] = v26;
  v37[1] = v27;
  v37[2] = v28;
  v37[3] = v29;
  v8 = *(&v29 + 1);
  v7 = v30;

  sub_10021D28C(v37);
  v9 = objc_allocWithZone(NSMutableAttributedString);
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 initWithString:v10];

  v24 = v8;
  v25 = v7;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v39[8] = v34;
  v39[9] = v35;
  v40[0] = v36[0];
  *(v40 + 9) = *(v36 + 9);
  v39[4] = v30;
  v39[5] = v31;
  v39[6] = v32;
  v39[7] = v33;
  v39[0] = v26;
  v39[1] = v27;
  v39[2] = v28;
  v39[3] = v29;
  v12 = *(&v30 + 1);
  v13 = v31;

  sub_10021D28C(v39);
  *&v26 = v12;
  *(&v26 + 1) = v13;
  v14 = type metadata accessor for Locale();
  (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
  sub_10000FCBC();
  StringProtocol.range<A>(of:options:range:locale:)();
  v16 = v15;
  v18 = v17;
  sub_10018BB64(v4);

  if ((v18 & 1) == 0)
  {
    v20 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v20 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v20 < v16 >> 14)
    {
      __break(1u);
    }

    else
    {
      v21 = 7;
      if (((v7 >> 60) & ((v8 & 0x800000000000000) == 0)) != 0)
      {
        v21 = 11;
      }

      *&v26 = v16;
      *(&v26 + 1) = v21 | (v20 << 16);
      v24 = v8;
      v25 = v7;
      sub_100140278(&qword_1008EB548);
      sub_1006014E4();
      v4 = _NSRange.init<A, B>(_:in:)();
      v7 = v22;
      v8 = NSFontAttributeName;
      if (qword_1008DAFE8 == -1)
      {
        goto LABEL_12;
      }
    }

    swift_once();
LABEL_12:
    isa = UIFont.smallCapsVersion()().super.isa;
    [v11 addAttribute:v8 value:isa range:{v4, v7}];

    return v11;
  }

  return v11;
}

void sub_1006007E8()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator];
  if (v1)
  {
    v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
    v3 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
    v4 = objc_opt_self();
    v5 = v3;
    v50 = v1;
    v6 = [v4 mainBundle];
    v7 = String._bridgeToObjectiveC()();
    v8 = [v6 localizedStringForKey:v7 value:0 table:0];

    if (!v8)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v8];
    v9 = *&v0[v2];
    v10 = objc_opt_self();
    v11 = v9;
    v51 = v10;
    v12 = [v10 defaultFontForTextStyle:UIFontTextStyleBody];
    [v11 setFont:v12];

    v13 = *&v0[v2];
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 labelColor];
    [v15 setTextColor:v16];

    v17 = [v0 contentView];
    [v17 addSubview:*&v0[v2]];

    v18 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
    v19 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
    v20 = sub_1006003A0();
    [v19 setAttributedText:v20];

    v21 = *&v0[v18];
    v22 = objc_opt_self();
    v23 = v21;
    v24 = [v22 diveColors];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 nonGradientTextColor];

      [v23 setTextColor:v26];
      v27 = qword_1008DAFE8;
      v28 = *&v0[v18];
      if (v27 != -1)
      {
        swift_once();
      }

      v29 = qword_1009261E0;
      [v28 setFont:qword_1009261E0];

      [*&v0[v18] setNumberOfLines:0];
      v30 = [v0 contentView];
      [v30 addSubview:*&v0[v18]];

      v31 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2;
      v32 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2];
      v33 = [v4 mainBundle];
      v34 = String._bridgeToObjectiveC()();
      v35 = [v33 localizedStringForKey:v34 value:0 table:0];

      if (!v35)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v35 = String._bridgeToObjectiveC()();
      }

      [v32 setText:v35];
      v36 = *&v0[v31];
      v37 = [v51 defaultFontForTextStyle:UIFontTextStyleBody];
      [v36 setFont:v37];

      v38 = *&v0[v31];
      v39 = [v14 labelColor];
      [v38 setTextColor:v39];

      v40 = [v0 contentView];
      [v40 addSubview:*&v0[v31]];

      v41 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2;
      v42 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2];
      v43 = [v22 elapsedTimeColors];
      if (v43)
      {
        v44 = v43;
        v45 = [v43 nonGradientTextColor];

        [v42 setTextColor:v45];
        [*&v0[v41] setFont:v29];
        v46 = *&v0[v41];
        swift_getKeyPath();
        swift_getKeyPath();
        v47 = v46;
        static Published.subscript.getter();

        v63[8] = v60;
        v63[9] = v61;
        v64[0] = *v62;
        *(v64 + 9) = *&v62[9];
        v63[4] = v56;
        v63[5] = v57;
        v63[6] = v58;
        v63[7] = v59;
        v63[0] = v52;
        v63[1] = v53;
        v63[2] = v54;
        v63[3] = v55;

        sub_10021D28C(v63);
        v48 = String._bridgeToObjectiveC()();

        [v47 setText:v48];

        [*&v0[v41] setNumberOfLines:0];
        v49 = [v0 contentView];
        [v49 addSubview:*&v0[v41]];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_100600E6C()
{
  v1 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_dataCalculator];
  if (v1)
  {
    v2 = OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1;
    v3 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel1];
    v4 = objc_opt_self();
    v5 = v3;
    v6 = v1;
    v7 = [v4 mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    if (!v9)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = String._bridgeToObjectiveC()();
    }

    [v5 setText:v9];
    v10 = *&v0[v2];
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 defaultFontForTextStyle:UIFontTextStyleBody];
    [v12 setFont:v13];

    v14 = *&v0[v2];
    v15 = objc_opt_self();
    v16 = v14;
    v17 = [v15 labelColor];
    [v16 setTextColor:v17];

    v18 = [v0 contentView];
    [v18 addSubview:*&v0[v2]];

    v19 = OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1;
    v20 = *&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel1];
    swift_getKeyPath();
    swift_getKeyPath();
    v21 = v20;
    static Published.subscript.getter();

    v43[8] = v40;
    v43[9] = v41;
    v44[0] = *v42;
    *(v44 + 9) = *&v42[9];
    v43[4] = v36;
    v43[5] = v37;
    v43[6] = v38;
    v43[7] = v39;
    v43[0] = v32;
    v43[1] = v33;
    v43[2] = v34;
    v43[3] = v35;

    sub_10021D28C(v43);
    v22 = String._bridgeToObjectiveC()();

    [v21 setText:v22];

    v23 = *&v0[v19];
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 paceColors];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 nonGradientTextColor];

      [v25 setTextColor:v28];
      v29 = qword_1008DAFE8;
      v30 = *&v0[v19];
      if (v29 != -1)
      {
        swift_once();
      }

      [v30 setFont:qword_1009261E0];

      [*&v0[v19] setNumberOfLines:0];
      v31 = [v0 contentView];
      [v31 addSubview:*&v0[v19]];

      [*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_titleLabel2] removeFromSuperview];
      [*&v0[OBJC_IVAR___CHDivingDetailMapTableViewCell_valueLabel2] removeFromSuperview];
    }

    else
    {
      __break(1u);
    }
  }
}

double sub_1006012A0@<D0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *v14 = *v13;
  *&v14[9] = *&v13[9];
  a1[8] = v11;
  a1[9] = v12;
  a1[10] = *v14;
  *(a1 + 169) = *&v13[9];
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

uint64_t sub_100601394(_OWORD *a1, void **a2)
{
  v3 = a1[9];
  v18[8] = a1[8];
  v18[9] = v3;
  v19[0] = a1[10];
  *(v19 + 9) = *(a1 + 169);
  v4 = a1[5];
  v18[4] = a1[4];
  v18[5] = v4;
  v5 = a1[7];
  v18[6] = a1[6];
  v18[7] = v5;
  v6 = a1[1];
  v18[0] = *a1;
  v18[1] = v6;
  v7 = a1[3];
  v18[2] = a1[2];
  v18[3] = v7;
  v8 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = a1[9];
  v16[20] = a1[8];
  v16[21] = v9;
  v17[0] = a1[10];
  *(v17 + 9) = *(a1 + 169);
  v10 = a1[5];
  v16[16] = a1[4];
  v16[17] = v10;
  v11 = a1[7];
  v16[18] = a1[6];
  v16[19] = v11;
  v12 = a1[1];
  v16[12] = *a1;
  v16[13] = v12;
  v13 = a1[3];
  v16[14] = a1[2];
  v16[15] = v13;
  sub_100601488(v18, v16);
  v14 = v8;
  return static Published.subscript.setter();
}

unint64_t sub_1006014E4()
{
  result = qword_1008EB550;
  if (!qword_1008EB550)
  {
    sub_100141EEC(&qword_1008EB548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008EB550);
  }

  return result;
}

uint64_t sub_100601548()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100163368(v0, qword_1009260D8);
  sub_10001AC90(v0, qword_1009260D8);
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100601708(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for Date();
  sub_100163368(v7, a2);
  v8 = sub_10001AC90(v7, a2);
  return sub_10060177C(a3, a4, v8);
}

uint64_t sub_10060177C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[0] = a2;
  v28 = a1;
  v29 = a3;
  v27 = type metadata accessor for Calendar.Component();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v6 - 8);
  v26 = v23 - v7;
  v8 = type metadata accessor for Calendar();
  v24 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v23 - v17;
  static Calendar.current.getter();
  Date.init()();
  Calendar.startOfDay(for:)();
  v25 = *(v13 + 8);
  v25(v15, v12);
  v19 = *(v9 + 8);
  v23[1] = v9 + 8;
  v19(v11, v8);
  static Calendar.current.getter();
  v20 = v27;
  (*(v3 + 104))(v5, enum case for Calendar.Component.hour(_:), v27);
  v21 = v26;
  Calendar.date(byAdding:value:to:wrappingComponents:)();
  (*(v3 + 8))(v5, v20);
  v19(v11, v24);
  if ((*(v13 + 48))(v21, 1, v12) == 1)
  {
    sub_1001F145C(v21);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v25(v18, v12);
    return (*(v13 + 32))(v29, v21, v12);
  }

  return result;
}

char *sub_100601B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementCellContentView;
  v7 = [objc_allocWithZone(type metadata accessor for AchievementCellContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v6] = v7;
  v8 = OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView;
  v9 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3[v8] = v9;
  v10 = *(*&v3[v6] + OBJC_IVAR____TtC10FitnessApp26AchievementCellContentView_achievementBadgeView);
  *&v3[OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementBadgeView] = v10;
  v11 = v10;
  if (a3)
  {
    v12 = String._bridgeToObjectiveC()();
  }

  else
  {
    v12 = 0;
  }

  v25.receiver = v3;
  v25.super_class = type metadata accessor for WorkoutDetailAwardTableViewCell();
  v13 = objc_msgSendSuper2(&v25, "initWithStyle:reuseIdentifier:", a1, v12);

  v14 = v13;
  v15 = [v14 contentView];
  [v15 addSubview:*&v14[OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementCellContentView]];

  v16 = OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView;
  v17 = *&v14[OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView];
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 separatorColor];
  [v19 setBackgroundColor:v20];

  [*&v14[v16] setTranslatesAutoresizingMaskIntoConstraints:0];
  v21 = [v14 contentView];
  [v21 addSubview:*&v14[v16]];

  v22 = [v14 contentView];
  v23 = sub_100046170();
  [v22 setBackgroundColor:v23];

  sub_100601E40();
  return v14;
}

void sub_100601E40()
{
  v1 = v0;
  v38 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1006D68B0;
  v3 = *&v1[OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementCellContentView];
  v4 = [v3 topAnchor];
  v5 = [v1 contentView];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor:v6];
  *(v2 + 32) = v7;
  v8 = [v3 bottomAnchor];
  v9 = [v1 contentView];
  v10 = [v9 bottomAnchor];

  v11 = [v8 constraintEqualToAnchor:v10];
  *(v2 + 40) = v11;
  v12 = [v3 leadingAnchor];
  v13 = [v1 contentView];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintEqualToAnchor:v14];
  *(v2 + 48) = v15;
  v16 = [v3 trailingAnchor];
  v17 = [v1 contentView];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18];
  *(v2 + 56) = v19;
  v20 = *&v1[OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView];
  v21 = [v20 bottomAnchor];
  v22 = [v1 contentView];
  v23 = [v22 bottomAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v2 + 64) = v24;
  v25 = [v20 leadingAnchor];
  v26 = [v1 contentView];
  v27 = [v26 leadingAnchor];

  v28 = [v25 constraintEqualToAnchor:v27 constant:10.0];
  *(v2 + 72) = v28;
  v29 = [v20 trailingAnchor];
  v30 = [v1 contentView];
  v31 = [v30 trailingAnchor];

  v32 = [v29 constraintEqualToAnchor:v31 constant:-10.0];
  *(v2 + 80) = v32;
  v33 = [v20 heightAnchor];
  v34 = [objc_opt_self() mainScreen];
  [v34 scale];
  v36 = v35;

  v37 = [v33 constraintEqualToConstant:1.0 / v36];
  *(v2 + 88) = v37;
  sub_10019EC5C();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v38 activateConstraints:isa];
}

void sub_1006022F8(void *a1, void *a2, void *a3, char a4)
{
  v9 = type metadata accessor for AppEntityVisualState();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for LocalizedStringResource();
  [*(v4 + OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView) setHidden:{a4 & 1, __chkstk_darwin(v10 - 8).n128_f64[0]}];
  sub_1001E1FE8(a1, a2, a3);
  sub_100140278(&unk_1008F8F40);
  v11 = a1;
  LocalizedStringResource.init(stringLiteral:)();
  EntityProperty<>.init(title:)();
  v12 = v11;

  [v12 unearned];
  EntityProperty.wrappedValue.setter();

  sub_10033A70C();
  sub_100140278(&unk_1008F8F50);
  sub_10033A764();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v13 = objc_allocWithZone(type metadata accessor for AppEntityViewAnnotation());
  sub_10007151C();
  v14 = AppEntityViewAnnotation.init<A>(entity:state:)();
  UIView.annotate(with:)();
}

id sub_1006026A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutDetailAwardTableViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10060275C()
{
  v1 = OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_achievementCellContentView;
  v2 = [objc_allocWithZone(type metadata accessor for AchievementCellContentView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR___CHWorkoutDetailAwardTableViewCell_separatorView;
  v4 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  *(v0 + v3) = v4;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10060284C()
{
  result = [objc_allocWithZone(type metadata accessor for PaceFormatter()) init];
  qword_1008F5D78 = result;
  return result;
}

id sub_100602880()
{
  result = [objc_allocWithZone(NSMeasurementFormatter) init];
  qword_1008F5D80 = result;
  return result;
}

id sub_1006028B4()
{
  v0 = [objc_allocWithZone(NSNumberFormatter) init];
  [v0 setMaximumFractionDigits:0];
  result = [v0 setNumberStyle:3];
  qword_1008F5D88 = v0;
  return result;
}

id sub_100602918(void *a1, signed __int8 a2)
{
  v5 = sub_1003D2500(byte_10070027E[a2]);
  if ([a1 isCompatibleWithUnit:v5])
  {
    [a1 doubleValueForUnit:v5];
    v7 = v6;
    result = [*(v2 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
    if (result)
    {
      v9 = result;
      v10 = sub_1005831C0(result, a2, v7);

      return *&v10;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    v11 = HKLogActivity;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  return result;
}

id sub_100602A44(void *a1)
{
  result = [*(v1 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) unitManager];
  if (*&result == 0.0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = [result userDistanceHKUnitForDistanceType:1];

    v6 = [objc_opt_self() secondUnit];
    v7 = [v5 unitDividedByUnit:v6];

    if ([a1 isCompatibleWithUnit:v7])
    {
      [a1 doubleValueForUnit:v7];
      v9 = v8;

      *&result = 1.0 / v9;
    }

    else
    {
      static os_log_type_t.error.getter();
      v10 = HKLogActivity;
      os_log(_:dso:log:_:_:)();

      *&result = 0.0;
    }
  }

  return result;
}

uint64_t sub_100602BB8(void *a1)
{
  v2 = type metadata accessor for DateComponents();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = COERCE_DOUBLE(sub_100602918(a1, 7));
  if ((v7 & 1) == 0)
  {
    v8 = v6;
    v9 = COERCE_DOUBLE(sub_100602A44(a1));
    if ((v10 & 1) == 0 && (~*&v9 & 0x7FF0000000000000) != 0)
    {
      v11 = v9;
      v12 = objc_opt_self();
      v13 = [objc_allocWithZone(NSNumber) initWithDouble:v8];
      v14 = [v12 stringWithNumber:v13 decimalPrecision:3 roundingMode:4];

      if (v14)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        if (qword_1008DAF38 != -1)
        {
          swift_once();
        }

        v15 = qword_1008F5D78;
        sub_1002E0648(v11);
        isa = DateComponents._bridgeToObjectiveC()().super.isa;
        v17 = [v15 stringForObjectValue:isa];

        if (v17)
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          (*(v3 + 8))(v5, v2);
          return v18;
        }

        (*(v3 + 8))(v5, v2);
      }
    }
  }

  return 0;
}

uint64_t sub_100602E08(void *a1, unsigned __int8 a2)
{
  if (((a2 - 3) & 0xFB) == 0)
  {
    v24 = sub_100602BB8(a1);
    if (!v25)
    {
      goto LABEL_21;
    }

    v26 = v25;
    v44 = v24;
    if (a2 <= 8u && ((1 << a2) & 0x127) != 0)
    {
      v27 = sub_10007ABFC(a2, 0, 1.0);
      if (v28)
      {
        v29 = v27;
        v30 = v28;
        v31 = [objc_opt_self() mainBundle];
        v32 = String._bridgeToObjectiveC()();
        v33 = [v31 localizedStringForKey:v32 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1006D46C0;
        *(v34 + 56) = &type metadata for String;
        *(v34 + 64) = sub_10000A788();
        *(v34 + 32) = v29;
        *(v34 + 40) = v30;
        static String.localizedStringWithFormat(_:_:)();

LABEL_14:
        sub_10000FCBC();
        v35 = StringProtocol.localizedUppercase.getter();
        v37 = v36;

        v38 = sub_100604A98();
        v2 = sub_1004C154C(v44, v26, v35, v37, v38);

        goto LABEL_15;
      }
    }

    else
    {
      sub_10007ABFC(a2, 0, 1.0);
      if (v41)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_20;
  }

  v4 = sub_100602918(a1, a2);
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = *&v4;
  if (a2 <= 8u && ((1 << a2) & 0x127) != 0)
  {
    v7 = sub_10007ABFC(a2, 0, *&v4);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = [objc_opt_self() mainBundle];
      v12 = String._bridgeToObjectiveC()();
      v13 = [v11 localizedStringForKey:v12 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1006D46C0;
      *(v14 + 56) = &type metadata for String;
      *(v14 + 64) = sub_10000A788();
      *(v14 + 32) = v9;
      *(v14 + 40) = v10;
      v2 = static String.localizedStringWithFormat(_:_:)();

      goto LABEL_7;
    }

LABEL_21:
    sub_1002D8190();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
    return v2;
  }

  v39 = sub_10007ABFC(a2, 0, *&v4);
  if (!v40)
  {
    goto LABEL_21;
  }

  v2 = v39;
LABEL_7:
  v15 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  v16 = [objc_opt_self() stringWithNumber:v15 decimalPrecision:qword_100700288[a2] roundingMode:4];

  if (!v16)
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  sub_10000FCBC();
  v20 = StringProtocol.localizedUppercase.getter();
  v22 = v21;

  v23 = sub_100604A98();
  v2 = sub_1004C154C(v17, v19, v20, v22, v23);

LABEL_15:

  return v2;
}

id sub_1006032CC(unsigned __int8 a1)
{
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 localizedStringForKey:v5 value:0 table:0];

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (((a1 - 3) & 0xFB) != 0)
  {
    if (a1 <= 8u && ((1 << a1) & 0x127) != 0)
    {
      v9 = sub_10007ABFC(a1, 0, 1.0);
      if (v10)
      {
        goto LABEL_9;
      }

LABEL_12:

      sub_1002D8190();
      swift_allocError();
      *v22 = 0;
      swift_willThrow();
      return v1;
    }

LABEL_11:
    sub_10007ABFC(a1, 0, 1.0);
    if (v21)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (a1 > 8u || ((1 << a1) & 0x127) == 0)
  {
    goto LABEL_11;
  }

  v9 = sub_10007ABFC(a1, 0, 1.0);
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_9:
  v11 = v9;
  v12 = v10;
  v13 = [v3 mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006D46C0;
  *(v16 + 56) = &type metadata for String;
  *(v16 + 64) = sub_10000A788();
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  static String.localizedStringWithFormat(_:_:)();

LABEL_10:
  sub_10000FCBC();
  v17 = StringProtocol.localizedUppercase.getter();
  v19 = v18;

  v20 = sub_100604A98();
  v1 = sub_1004C154C(v24, v8, v17, v19, v20);

  return v1;
}

uint64_t sub_100603634(void *a1, char a2)
{
  v3 = sub_100602918(a1, a2);
  if (v4)
  {
    return 0;
  }

  v6 = *&v3;
  sub_10007ABFC(a2, 0, *&v3);
  if (!v7)
  {
    return 0;
  }

  v8 = [objc_allocWithZone(NSNumber) initWithDouble:v6];
  v9 = [objc_opt_self() stringWithNumber:v8 decimalPrecision:qword_100700288[a2] roundingMode:4];

  if (!v9)
  {

    return 0;
  }

  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v13 = [objc_opt_self() mainBundle];
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 localizedStringForKey:v14 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100140278(&unk_1008E4E50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1006D1F70;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_10000A788();
  *(v16 + 64) = v17;
  *(v16 + 32) = v10;
  *(v16 + 40) = v12;
  sub_10000FCBC();
  v18 = StringProtocol.localizedUppercase.getter();
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v17;
  *(v16 + 72) = v18;
  *(v16 + 80) = v19;

  v20 = String.init(format:_:)();

  return v20;
}

uint64_t sub_100603864(void *a1)
{
  v3 = [objc_allocWithZone(FIUIWorkoutActivityType) initWithActivityTypeIdentifier:52 isIndoor:0];
  v4 = sub_100602BB8(a1);
  if (v5)
  {
    v8 = v4;
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = [*(v1 + OBJC_IVAR____TtC10FitnessApp23TrendsFormattingManager_fiuiFormatter) localizedSpeedUnitStringForActivityType:v3];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v15;
      v31 = v14;

      v33 = v8;
      v29 = objc_opt_self();
      v16 = [v29 mainBundle];
      v17 = String._bridgeToObjectiveC()();
      v18 = [v16 localizedStringForKey:v17 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_100140278(&unk_1008E4E50);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1006D1F70;
      *(v19 + 56) = &type metadata for String;
      v20 = sub_10000A788();
      *(v19 + 32) = v10;
      *(v19 + 40) = v11;
      *(v19 + 96) = &type metadata for String;
      *(v19 + 104) = v20;
      *(v19 + 64) = v20;
      *(v19 + 72) = v31;
      *(v19 + 80) = v30;

      v32 = static String.localizedStringWithFormat(_:_:)();
      v22 = v21;

      v23 = [v29 mainBundle];
      v24 = String._bridgeToObjectiveC()();
      v25 = [v23 localizedStringForKey:v24 value:0 table:0];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1006D1F70;

      *(v26 + 56) = &type metadata for String;
      *(v26 + 64) = v20;
      *(v26 + 32) = v33;
      *(v26 + 40) = v9;
      *(v26 + 96) = &type metadata for String;
      *(v26 + 104) = v20;
      *(v26 + 72) = v32;
      *(v26 + 80) = v22;
      v27 = static String.localizedStringWithFormat(_:_:)();

      return v27;
    }
  }

  return 0;
}

uint64_t sub_100603B5C@<X0>(void *a1@<X0>, unsigned __int8 a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v105) = a3;
  v110 = a4;
  v7 = sub_100140278(&qword_1008EF8C8);
  v8 = __chkstk_darwin(v7 - 8);
  v104 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v99 - v10;
  v12 = sub_100140278(&qword_1008EB540);
  __chkstk_darwin(v12 - 8);
  v108 = &v99 - v13;
  v14 = sub_100140278(&qword_1008E1900);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v99 - v18;
  v109 = sub_100140278(&qword_1008E1908);
  v107 = *(v109 - 8);
  v20 = __chkstk_darwin(v109);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v99 - v23;
  v25 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v25 - 8);
  v106 = &v99 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a2 - 3) & 0xFB) == 0)
  {
    v58 = sub_100602BB8(a1);
    if (!v59)
    {
      goto LABEL_29;
    }

    v61 = v59;
    v62 = v60;
    v101 = v58;
    if (a2 <= 8u && ((1 << a2) & 0x127) != 0)
    {
      v63 = sub_10007ABFC(a2, 0, 1.0);
      if (v64)
      {
        v65 = v63;
        v66 = v64;
        v100 = v62;
        v102 = v11;
        v103 = v4;
        v67 = [objc_opt_self() mainBundle];
        v68 = String._bridgeToObjectiveC()();
        v69 = [v67 localizedStringForKey:v68 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v70 = swift_allocObject();
        *(v70 + 16) = xmmword_1006D46C0;
        *(v70 + 56) = &type metadata for String;
        *(v70 + 64) = sub_10000A788();
        *(v70 + 32) = v65;
        *(v70 + 40) = v66;
        v71 = static String.localizedStringWithFormat(_:_:)();
        v73 = v72;

LABEL_15:
        v113 = v71;
        v114 = v73;
        v99 = sub_10000FCBC();
        v74 = StringProtocol.localizedUppercase.getter();
        v76 = v75;

        v105 = sub_10007B988(v105);
        v77 = [objc_opt_self() mainBundle];
        v78 = String._bridgeToObjectiveC()();
        v79 = [v77 localizedStringForKey:v78 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v80 = swift_allocObject();
        *(v80 + 16) = xmmword_1006D1F70;
        *(v80 + 56) = &type metadata for String;
        v81 = sub_10000A788();
        *(v80 + 32) = v101;
        *(v80 + 40) = v61;
        *(v80 + 96) = &type metadata for String;
        *(v80 + 104) = v81;
        *(v80 + 64) = v81;
        *(v80 + 72) = v74;
        *(v80 + 80) = v76;

        String.init(format:_:)();

        AttributeContainer.init()();
        v82 = v105;
        AttributedString.init(_:attributes:)();
        v111 = v82;
        sub_10005F988();

        AttributedString.subscript.setter();
        v111 = v74;
        v112 = v76;
        v83 = type metadata accessor for Locale();
        v84 = v108;
        (*(*(v83 - 8) + 56))(v108, 1, 1, v83);
        type metadata accessor for AttributedString();
        sub_10007BD90();
        AttributedStringProtocol.range<A>(of:options:locale:)();
        sub_10000EA04(v84, &qword_1008EB540);
        if ((*(v107 + 48))(v17, 1, v109) == 1)
        {
          v85 = &qword_1008E1900;
          v86 = v17;
        }

        else
        {
          sub_10007BE08(v17, v22);
          v87 = v102;
          static Text.Scale.secondary.getter();
          v88 = type metadata accessor for Text.Scale();
          (*(*(v88 - 8) + 56))(v87, 0, 1, v88);
          sub_10007C0F0();
          v89 = AttributedString.subscript.modify();
          sub_10007C1D8(v87, v104);
          sub_10007C248();
          AttributedSubstring.subscript.setter();
          sub_10000EA04(v87, &qword_1008EF8C8);
          v89(&v111, 0);
          v85 = &qword_1008E1908;
          v86 = v22;
        }

        sub_10000EA04(v86, v85);
      }
    }

    else
    {
      v96 = sub_10007ABFC(a2, 0, 1.0);
      if (v97)
      {
        v71 = v96;
        v73 = v97;
        v100 = v62;
        v102 = v11;
        v103 = v4;
        goto LABEL_15;
      }
    }

LABEL_28:

    goto LABEL_29;
  }

  v27 = sub_100602918(a1, a2);
  if ((v28 & 1) == 0)
  {
    v29 = *&v27;
    if (a2 <= 8u && ((1 << a2) & 0x127) != 0)
    {
      v30 = sub_10007ABFC(a2, 0, *&v27);
      if (v31)
      {
        v32 = v30;
        v33 = v31;
        v102 = v11;
        v103 = v4;
        v34 = [objc_opt_self() mainBundle];
        v35 = String._bridgeToObjectiveC()();
        v36 = [v34 localizedStringForKey:v35 value:0 table:0];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        sub_100140278(&unk_1008E4E50);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1006D46C0;
        *(v37 + 56) = &type metadata for String;
        *(v37 + 64) = sub_10000A788();
        *(v37 + 32) = v32;
        *(v37 + 40) = v33;
        v38 = static String.localizedStringWithFormat(_:_:)();
        v40 = v39;

        goto LABEL_7;
      }
    }

    else
    {
      v94 = sub_10007ABFC(a2, 0, *&v27);
      if (v95)
      {
        v38 = v94;
        v40 = v95;
        v102 = v11;
        v103 = v4;
LABEL_7:
        v41 = [objc_allocWithZone(NSNumber) initWithDouble:v29];
        v42 = [objc_opt_self() stringWithNumber:v41 decimalPrecision:qword_100700288[a2] roundingMode:4];

        if (v42)
        {
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v44 = v43;

          v113 = v38;
          v114 = v40;
          v101 = sub_10000FCBC();
          v45 = StringProtocol.localizedUppercase.getter();
          v47 = v46;

          v99 = sub_10007B988(v105);
          v48 = [objc_opt_self() mainBundle];
          v49 = String._bridgeToObjectiveC()();
          v50 = [v48 localizedStringForKey:v49 value:0 table:0];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100140278(&unk_1008E4E50);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1006D1F70;
          *(v51 + 56) = &type metadata for String;
          v52 = sub_10000A788();
          *(v51 + 32) = v100;
          *(v51 + 40) = v44;
          *(v51 + 96) = &type metadata for String;
          *(v51 + 104) = v52;
          *(v51 + 64) = v52;
          *(v51 + 72) = v45;
          *(v51 + 80) = v47;
          v105 = v44;

          v53 = v99;
          String.init(format:_:)();

          AttributeContainer.init()();
          AttributedString.init(_:attributes:)();
          v111 = v53;
          sub_10005F988();

          AttributedString.subscript.setter();
          v111 = v45;
          v112 = v47;
          v54 = type metadata accessor for Locale();
          v55 = v108;
          (*(*(v54 - 8) + 56))(v108, 1, 1, v54);
          type metadata accessor for AttributedString();
          sub_10007BD90();
          AttributedStringProtocol.range<A>(of:options:locale:)();
          sub_10000EA04(v55, &qword_1008EB540);
          if ((*(v107 + 48))(v19, 1, v109) == 1)
          {
            v56 = &qword_1008E1900;
            v57 = v19;
          }

          else
          {
            sub_10007BE08(v19, v24);
            v90 = v102;
            static Text.Scale.secondary.getter();
            v91 = type metadata accessor for Text.Scale();
            (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
            sub_10007C0F0();
            v92 = AttributedString.subscript.modify();
            sub_10007C1D8(v90, v104);
            sub_10007C248();
            AttributedSubstring.subscript.setter();
            sub_10000EA04(v90, &qword_1008EF8C8);
            v92(&v111, 0);
            v56 = &qword_1008E1908;
            v57 = v24;
          }

          sub_10000EA04(v57, v56);
        }

        goto LABEL_28;
      }
    }
  }

LABEL_29:
  sub_1002D8190();
  swift_allocError();
  *v98 = 0;
  return swift_willThrow();
}

id sub_1006048E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrendsFormattingManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100604948(char a1)
{
  if (a1)
  {
    if (qword_1008DAF40 != -1)
    {
      swift_once();
    }

    v1 = qword_1008F5D80;
    [qword_1008F5D80 setUnitStyle:3];
    v2 = [objc_opt_self() hours];
    v3 = [v1 stringFromUnit:v2];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = [objc_opt_self() mainBundle];
    v6 = String._bridgeToObjectiveC()();
    v3 = [v5 localizedStringForKey:v6 value:0 table:0];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  return v4;
}

uint64_t sub_100604A98()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultFontForTextStyle:UIFontTextStyleTitle3];
  if (v1)
  {
    v2 = v1;
    [v1 pointSize];
    v4 = v3;
    v5 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleTitle3];
    v6 = [v0 systemFontOfSize:UIFontSystemFontDesignRounded weight:v4 design:UIFontWeightMedium];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 scaledFontForFont:v6];

      return v8;
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100604BFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 / (round(a2 * 100.0) / 100.0);
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 localizedStringForKey:v6 value:0 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (qword_1008DAF48 != -1)
  {
    swift_once();
  }

  v8 = qword_1008F5D88;
  v9 = [objc_allocWithZone(NSNumber) initWithDouble:v4];
  v10 = [v8 stringFromNumber:v9];

  if (v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v12;

    v13 = objc_opt_self();
    v14 = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    v15 = [v13 stringWithNumber:v14 decimalPrecision:1];

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [objc_allocWithZone(NSNumber) initWithInteger:a2];
      v20 = [v13 stringWithNumber:v19 decimalPrecision:1];

      if (v20)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        sub_100140278(&unk_1008E4E50);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1006D46C0;
        *(v24 + 56) = &type metadata for String;
        *(v24 + 64) = sub_10000A788();
        *(v24 + 32) = v11;
        *(v24 + 40) = v31;
        v25 = static String.localizedStringWithFormat(_:_:)();
        v27 = v26;

        v28 = sub_100604A98();
        v29 = sub_1004C50E8(v16, v18, v21, v23, v25, v27, v28);

        return v29;
      }
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_100604F84()
{
  result = qword_1008F5DC0;
  if (!qword_1008F5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5DC0);
  }

  return result;
}

uint64_t sub_100604FFC(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1006050C4()
{
  result = static Solarium.isEnabled.getter();
  v1 = 20.0;
  if (result)
  {
    v1 = 16.0;
  }

  qword_1008F5DC8 = *&v1;
  return result;
}

id sub_1006050F4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController] = 0;
  v9 = &v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_loadingCardHeightProvider] = 0;
  v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling] = 0;
  v10 = &v4[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card];
  v11 = type metadata accessor for ActivityDashboardCardCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v15.receiver = v4;
  v15.super_class = v11;
  v12 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v13 = [v12 layer];
  if (qword_1008DAF50 != -1)
  {
    swift_once();
  }

  [v13 setCornerRadius:*&qword_1008F5DC8];

  return v12;
}

id sub_10060522C(void *a1)
{
  *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController] = 0;
  v3 = &v1[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_loadingCardHeightProvider] = 0;
  v1[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_isJiggling] = 0;
  v4 = &v1[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_card];
  v5 = type metadata accessor for ActivityDashboardCardCell();
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 4) = 0;
  v11.receiver = v1;
  v11.super_class = v5;
  v6 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    v9 = [v8 layer];
    if (qword_1008DAF50 != -1)
    {
      swift_once();
    }

    [v9 setCornerRadius:*&qword_1008F5DC8];
  }

  else
  {
    v9 = a1;
  }

  return v7;
}

uint64_t sub_10060537C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v11 = type metadata accessor for AccessibilityChildBehavior();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_100140278(&qword_1008EE7C0);
  __chkstk_darwin(v15);
  v17 = &v27[-v16];
  *v17 = static Alignment.topLeading.getter();
  v17[1] = v18;
  v19 = sub_100140278(&qword_1008F5E20);
  sub_10060563C(a1, a2, a3, a4, v28, v17 + *(v19 + 44));
  static AccessibilityChildBehavior.combine.getter();
  sub_10014A6B0(&qword_1008EE7C8, &qword_1008EE7C0);
  View.accessibilityElement(children:)();
  (*(v12 + 8))(v14, v11);
  sub_10000EA04(v17, &qword_1008EE7C0);
  v20 = (a6 + *(sub_100140278(&qword_1008EE7B0) + 36));
  v21 = sub_100140278(&qword_1008E3A58);
  static ContentShapeKinds.accessibility.getter();
  if (qword_1008DAF50 != -1)
  {
    swift_once();
  }

  v22 = qword_1008F5DC8;
  v23 = *(type metadata accessor for RoundedRectangle() + 20);
  v24 = enum case for RoundedCornerStyle.continuous(_:);
  v25 = type metadata accessor for RoundedCornerStyle();
  result = (*(*(v25 - 8) + 104))(v20 + v23, v24, v25);
  *v20 = v22;
  v20[1] = v22;
  *(v20 + *(v21 + 36)) = 0;
  return result;
}

uint64_t sub_10060563C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v171 = a5;
  v193 = a3;
  v194 = a4;
  v201 = a6;
  v8 = type metadata accessor for AccessibilityTraits();
  v186 = *(v8 - 8);
  v187 = v8;
  __chkstk_darwin(v8);
  v185 = &v170[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for AccessibilityActionKind();
  v183 = *(v10 - 8);
  v184 = v10;
  __chkstk_darwin(v10);
  v182 = &v170[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DynamicTypeSize();
  v173 = *(v12 - 8);
  v174 = v12;
  __chkstk_darwin(v12);
  v172 = &v170[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v176 = sub_100140278(&qword_1008F5E28);
  __chkstk_darwin(v176);
  v175 = &v170[-v14];
  v181 = sub_100140278(&qword_1008F5E30);
  v179 = *(v181 - 8);
  __chkstk_darwin(v181);
  v178 = &v170[-v15];
  v203 = sub_100140278(&qword_1008F5E38);
  v200 = *(v203 - 8);
  __chkstk_darwin(v203);
  v177 = &v170[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v17);
  v180 = &v170[-v18];
  __chkstk_darwin(v19);
  v190 = &v170[-v20];
  __chkstk_darwin(v21);
  v189 = &v170[-v22];
  __chkstk_darwin(v23);
  v188 = &v170[-v24];
  v25 = sub_100140278(&qword_1008F5E40);
  __chkstk_darwin(v25 - 8);
  v199 = &v170[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v202 = &v170[-v28];
  v29 = sub_100140278(&qword_1008F5E48);
  __chkstk_darwin(v29);
  v31 = &v170[-v30];
  v191 = sub_100140278(&qword_1008F5E50);
  __chkstk_darwin(v191);
  v33 = &v170[-v32];
  v192 = sub_100140278(&qword_1008F5E58);
  __chkstk_darwin(v192);
  v35 = &v170[-v34];
  v195 = sub_100140278(&qword_1008F5E60);
  __chkstk_darwin(v195);
  v204 = &v170[-v36];
  v196 = sub_100140278(&qword_1008F5E68);
  __chkstk_darwin(v196);
  v198 = &v170[-((v37 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v38);
  v197 = &v170[-v39];
  __chkstk_darwin(v40);
  v205 = &v170[-v41];
  v42 = type metadata accessor for DashboardCardView();
  sub_100007C5C(a1, v31 + v42[5]);
  v43 = *(*(a2 + OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context) + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
  AppCoordinator.composer.getter();

  v44 = (v31 + v42[7]);
  v44[3] = type metadata accessor for ActivityDashboardCardCell();
  v44[4] = &off_1008644C8;
  v45 = v193;
  *v44 = v193;
  *v31 = swift_getKeyPath();
  sub_100140278(&qword_1008EE6A0);
  swift_storeEnumTagMultiPayload();
  *(v31 + v42[8]) = v194;
  *(v31 + v42[9]) = 0;
  *(v31 + v42[10]) = 0;
  v46 = qword_1008DAF50;
  v193 = v45;

  if (v46 != -1)
  {
    swift_once();
  }

  v47 = qword_1008F5DC8;
  v48 = (v31 + *(v29 + 36));
  v49 = *(type metadata accessor for RoundedRectangle() + 20);
  v50 = enum case for RoundedCornerStyle.continuous(_:);
  v51 = type metadata accessor for RoundedCornerStyle();
  (*(*(v51 - 8) + 104))(v48 + v49, v50, v51);
  *v48 = v47;
  v48[1] = v47;
  *(v48 + *(sub_100140278(&qword_1008DE1E0) + 36)) = 256;
  v52 = a1[3];
  v53 = a1[4];
  sub_1000066AC(a1, v52);
  v54 = (*(v53 + 16))(v52, v53);
  if (v56 <= 1u)
  {
    if (v56)
    {
      sub_10001D4F8(v54, v55, 1);
    }

    goto LABEL_7;
  }

  if (v56 == 2 || v54 | v55 || (v57 = 0.5, (v171 & 1) == 0))
  {
LABEL_7:
    v57 = 1.0;
  }

  sub_100015E80(v31, v33, &qword_1008F5E48);
  *&v33[*(v191 + 36)] = v57;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100015E80(v33, v35, &qword_1008F5E50);
  v58 = &v35[*(v192 + 36)];
  v59 = v217;
  v58[4] = v216;
  v58[5] = v59;
  v58[6] = v218;
  v60 = v213;
  *v58 = v212;
  v58[1] = v60;
  v61 = v215;
  v58[2] = v214;
  v58[3] = v61;
  v62 = a1[3];
  v63 = a1[4];
  sub_1000066AC(a1, v62);
  v64 = (*(v63 + 16))(v62, v63);
  v67 = 0;
  if (v66 <= 1u)
  {
    v68 = v204;
    if (!v66)
    {
      goto LABEL_19;
    }

    sub_10001D4F8(v64, v65, 1);
    goto LABEL_18;
  }

  v68 = v204;
  if (v66 != 2)
  {
    if (v64 >= 2 || (v67 = v171, v64 | v65))
    {
LABEL_18:
      v67 = 0;
    }
  }

LABEL_19:
  KeyPath = swift_getKeyPath();
  v70 = swift_allocObject();
  *(v70 + 16) = v67 & 1;
  sub_100015E80(v35, v68, &qword_1008F5E58);
  v71 = (v68 + *(v195 + 36));
  *v71 = KeyPath;
  v71[1] = sub_1000526DC;
  v71[2] = v70;
  v72 = a1[3];
  v73 = a1[4];
  sub_1000066AC(a1, v72);
  if ((*(v73 + 56))(v72, v73))
  {
    goto LABEL_26;
  }

  v74 = *&v193[OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_loadingCardHeightProvider];
  if (v74)
  {
    v75 = a1[3];
    v76 = a1[4];
    sub_1000066AC(a1, v75);
    v77 = *(v76 + 16);

    v78 = v77(v75, v76);
    v80 = v79;
    v82 = v81;
    v83 = a1[3];
    v84 = a1[4];
    sub_1000066AC(a1, v83);
    v85 = (*(v84 + 24))(v83, v84);
    v86 = [objc_opt_self() sharedApplication];
    v87 = [v86 preferredContentSizeCategory];

    v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v90 = v89;

    v226[0] = v78;
    v226[1] = v80;
    v227 = v82;
    v228 = v85 & 1;
    v229 = v88;
    v230 = v90;
    swift_beginAccess();
    if (*(*(v74 + 16) + 16))
    {
      sub_10001D510(v78, v80, v82);

      sub_1000358C4(v226);
      v92 = v91;
      sub_10001D4F8(v78, v80, v82);

      if (v92)
      {

        sub_10001D4F8(v78, v80, v82);

        v68 = v204;
        goto LABEL_26;
      }
    }

    sub_10001D4F8(v78, v80, v82);

    v68 = v204;
  }

  sub_100068564(a1);
LABEL_26:
  static Alignment.center.getter();
  v93 = 1;
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v94 = v197;
  sub_100015E80(v68, v197, &qword_1008F5E60);
  v95 = &v94[*(v196 + 36)];
  v96 = v224;
  v95[4] = v223;
  v95[5] = v96;
  v95[6] = v225;
  v97 = v220;
  *v95 = v219;
  v95[1] = v97;
  v98 = v222;
  v95[2] = v221;
  v95[3] = v98;
  sub_100015E80(v94, v205, &qword_1008F5E68);
  v99 = a1[3];
  v100 = a1[4];
  sub_1000066AC(a1, v99);
  if ((*(v100 + 32))(v99, v100))
  {
    v101 = a1[3];
    v102 = a1[4];
    sub_1000066AC(a1, v101);
    v103 = (*(v102 + 16))(v101, v102);
    if (v105 != 3 || v103 | v104)
    {
      sub_10001D4F8(v103, v104, v105);
      v106 = Image.init(systemName:)();
      v204 = v106;
      static Font.title3.getter();
      static Font.Weight.bold.getter();
      v107 = Font.weight(_:)();

      v108 = swift_getKeyPath();
      v208 = v106;
      __asm { FMOV            V0.2D, #-6.0 }

      v209 = _Q0;
      v210 = v108;
      v211 = v107;
      v114 = v172;
      v115 = v173;
      v116 = v174;
      (*(v173 + 104))(v172, enum case for DynamicTypeSize.medium(_:), v174);
      sub_100140278(&qword_1008F5E78);
      sub_100609140();
      v117 = v175;
      View.dynamicTypeSize(_:)();
      (*(v115 + 8))(v114, v116);

      v118 = (v117 + *(sub_100140278(&qword_1008F5E98) + 36));
      v119 = *(sub_100140278(&qword_1008E9848) + 28);
      static SymbolRenderingMode.palette.getter();
      v120 = type metadata accessor for SymbolRenderingMode();
      (*(*(v120 - 8) + 56))(v118 + v119, 0, 1, v120);
      *v118 = swift_getKeyPath();
      v121 = static Color.black.getter();
      v122 = (v117 + *(sub_100140278(&qword_1008F5EA0) + 36));
      sub_100140278(&qword_1008F5EA8);
      static Material.ultraThin.getter();
      *v122 = v121;
      v123 = swift_getKeyPath();
      v124 = v176;
      v125 = (v117 + *(v176 + 36));
      v126 = *(sub_100140278(&qword_1008EC798) + 28);
      v127 = enum case for ColorScheme.light(_:);
      v128 = type metadata accessor for ColorScheme();
      (*(*(v128 - 8) + 104))(v125 + v126, v127, v128);
      *v125 = v123;
      sub_100007C5C(a1, &v208);
      v129 = swift_allocObject();
      v130 = v193;
      *(v129 + 16) = v193;
      sub_100006260(&v208, v129 + 24);
      v131 = sub_10060927C();
      v132 = v130;
      v133 = v178;
      View.onTapGesture(count:perform:)();

      sub_10000EA04(v117, &qword_1008F5E28);
      sub_100007C5C(a1, &v208);
      v134 = swift_allocObject();
      *(v134 + 16) = v132;
      sub_100006260(&v208, v134 + 24);
      v135 = v132;
      v136 = v182;
      static AccessibilityActionKind.default.getter();
      v206 = v124;
      v207 = v131;
      swift_getOpaqueTypeConformance2();
      v137 = v177;
      v138 = v181;
      View.accessibilityAction(_:_:)();

      (*(v183 + 8))(v136, v184);
      (*(v179 + 8))(v133, v138);
      v139 = v185;
      static AccessibilityTraits.isImage.getter();
      v140 = v180;
      ModifiedContent<>.accessibilityRemoveTraits(_:)();
      v141 = v187;
      v142 = *(v186 + 8);
      v142(v139, v187);
      sub_10000EA04(v137, &qword_1008F5E38);
      static AccessibilityTraits.isButton.getter();
      ModifiedContent<>.accessibilityAddTraits(_:)();
      v142(v139, v141);
      sub_10000EA04(v140, &qword_1008F5E38);
      v143 = [objc_opt_self() mainBundle];
      v144 = String._bridgeToObjectiveC()();
      v145 = [v143 localizedStringForKey:v144 value:0 table:0];

      v146 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v148 = v147;

      v208 = v146;
      *&v209 = v148;
      sub_10000FCBC();
      v150 = v189;
      v149 = v190;
      ModifiedContent<>.accessibilityLabel<A>(_:)();

      sub_10000EA04(v149, &qword_1008F5E38);
      sub_100140278(&qword_1008DCF58);
      v151 = swift_allocObject();
      *(v151 + 16) = xmmword_1006D64F0;
      *(v151 + 32) = static FitnessAccessibilityIdentifier.SummaryView.base.getter();
      *(v151 + 40) = v152;
      v153 = a1[3];
      v154 = a1[4];
      sub_1000066AC(a1, v153);
      v231._countAndFlagsBits = (*(v154 + 16))(v153, v154);
      countAndFlagsBits = v231._countAndFlagsBits;
      object = v231._object;
      LOBYTE(v153) = v157;
      v158 = sub_100035B30(v231, v157);
      v160 = v159;
      sub_10001D4F8(countAndFlagsBits, object, v153);
      *(v151 + 48) = v158;
      *(v151 + 56) = v160;
      *(v151 + 64) = static FitnessAccessibilityIdentifier.SummaryView.deleteButton.getter();
      *(v151 + 72) = v161;
      static FitnessAccessibilityIdentifier.build(_:)();

      v162 = v188;
      ModifiedContent<>.accessibilityIdentifier(_:)();

      sub_10000EA04(v150, &qword_1008F5E38);
      sub_1000A2250(v162, v202);
      v93 = 0;
    }

    else
    {
      v93 = 1;
    }
  }

  v163 = v202;
  (*(v200 + 56))(v202, v93, 1, v203);
  v164 = v205;
  v165 = v198;
  sub_10001B104(v205, v198, &qword_1008F5E68);
  v166 = v199;
  sub_1000A21A4(v163, v199);
  v167 = v201;
  sub_10001B104(v165, v201, &qword_1008F5E68);
  v168 = sub_100140278(&qword_1008F5E70);
  sub_1000A21A4(v166, v167 + *(v168 + 48));
  sub_10000EA04(v163, &qword_1008F5E40);
  sub_10000EA04(v164, &qword_1008F5E68);
  sub_10000EA04(v166, &qword_1008F5E40);
  return sub_10000EA04(v165, &qword_1008F5E68);
}

void sub_100606B4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (v2)
  {
    v4 = v2;
    sub_1003E11C4(a2);
  }
}

id sub_100606C4C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityDashboardCardCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100606D00@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100606D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100140278(&qword_1008DCF78);
  __chkstk_darwin(v12 - 8);
  v101 = &v87 - v13;
  v100 = type metadata accessor for TrendsCard();
  v97 = *(v100 - 8);
  __chkstk_darwin(v100);
  v95 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v15 - 8);
  v93 = &v87 - v16;
  v92 = type metadata accessor for CatalogTipSection();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v89 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for URL();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v96 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v19 - 8);
  v21 = &v87 - v20;
  v22 = type metadata accessor for CatalogTipCard();
  v94 = *(v22 - 8);
  __chkstk_darwin(v22);
  v90 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a4;
  v108 = a5;
  v24 = sub_100005994(v106);
  (*(*(a4 - 8) + 16))(v24, a1, a4);
  v25 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v26 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (!v26)
  {
    return sub_100005A40(v106);
  }

  v87 = OnboardingNavigationView;
  v88 = v11;
  v28 = v107;
  v27 = v108;
  sub_1000066AC(v106, v107);
  v29 = *(v27 + 56);
  v30 = v26;
  if ((v29(v28, v27) & 1) == 0)
  {
    goto LABEL_47;
  }

  v31 = v30;
  v32 = v107;
  v33 = v108;
  sub_1000066AC(v106, v107);
  if ((*(v33 + 32))(v32, v33))
  {
    v34 = *(a3 + v25);
    if (v34)
    {
      v35 = v107;
      v36 = v108;
      sub_1000066AC(v106, v107);
      v37 = *(v36 + 16);
      v38 = v34;
      v39 = v37(v35, v36);
      if (v41 != 3 || v39 | v40)
      {
        sub_10001D4F8(v39, v40, v41);
        v42 = v107;
        v43 = v108;
        v44 = sub_1000066AC(v106, v107);
        sub_100475448(v44, v38, v42, v43);
      }
    }

    return sub_100005A40(v106);
  }

  v45 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
  swift_beginAccess();
  sub_10001B104(a3 + v45, &v103, &qword_1008EE7A8);
  if (v105)
  {
    sub_100007C5C(&v103, v102);
    sub_10000EA04(&v103, &qword_1008EE7A8);
    v46 = sub_1000066AC(v102, v102[3]);
    v47 = *(*v46 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
    __chkstk_darwin(v46);
    *(&v87 - 2) = v106;

    sub_10047CE14(sub_1004A8728, (&v87 - 4), v47);
    v49 = v48;

    sub_100005A40(v102);
    if ((v49 & 1) == 0)
    {
      sub_100637300(v106);
    }
  }

  else
  {
    sub_10000EA04(&v103, &qword_1008EE7A8);
  }

  v50 = v107;
  v51 = v108;
  sub_1000066AC(v106, v107);
  v52 = (*(v51 + 16))(v50, v51);
  v30 = v31;
  if (v54 <= 1u)
  {
    if (!v54)
    {
      v55 = v107;
      v56 = v108;
      sub_1000066AC(v106, v107);
      v57 = (*(v56 + 16))(v55, v56);
      v59 = v58;
      LOBYTE(v56) = v60;
      v61 = sub_1000490C8(v57, v58, v60);
      sub_10001D4F8(v57, v59, v56);
      sub_10038FF78(v61, 0, 0x100u);

      return sub_100005A40(v106);
    }

    sub_10001D4F8(v52, v53, 1);
LABEL_23:
    v66 = ASActivityAppLaunchURLForSharingFriendList();
    v67 = v96;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v68 = [objc_opt_self() sharedApplication];
    URL._bridgeToObjectiveC()(v69);
    v71 = v70;
    sub_1004C9534(_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_100609098(&qword_1008F7990, type metadata accessor for OpenExternalURLOptionsKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v68 openURL:v71 options:isa completionHandler:0];

    (*(v98 + 8))(v67, v99);
    return sub_100005A40(v106);
  }

  if (v54 != 2)
  {
    if (v52 <= 4)
    {
      if (v52 > 1)
      {
        if (!(v52 ^ 2 | v53))
        {
          [v31 navigateToHistoryAnimated:1];
          goto LABEL_47;
        }

        if (v52 ^ 3 | v53)
        {
          goto LABEL_23;
        }

        v73 = [v31 navigateToTrophyCaseAnimated:1 initialAchievement:0 shouldShowCelebration:0 forModalPresentation:0];
        goto LABEL_36;
      }

      if (!(v52 | v53))
      {
        v73 = [v31 showTodayAndShareImmediately:0 animated:1 forGoalCompleteNotification:0 goalRecommendation:0];
LABEL_36:

        goto LABEL_47;
      }

      if (qword_1008DA938 != -1)
      {
        swift_once();
      }

      v77 = qword_100925688;
      swift_getKeyPath();
      v103 = v77;
      sub_100609098(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v77 + 16))
      {
        v30 = v31;
        [v31 showLoad];
        goto LABEL_47;
      }

      v79 = v88;
      *v88 = ASFriendListDisplayMode.id.getter;
      v79[1] = 0;
      v79[2] = 0;
      v79[3] = 0;
      v102[0] = _swiftEmptyArrayStorage;
      sub_100140278(&qword_1008DDD40);
      State.init(wrappedValue:)();
      v80 = v104;
      v79[4] = v103;
      v79[5] = v80;
      LOBYTE(v102[0]) = 0;
      State.init(wrappedValue:)();
      v81 = v104;
      *(v79 + 48) = v103;
      v79[7] = v81;
      LOBYTE(v102[0]) = 0;
      State.init(wrappedValue:)();
      v82 = v104;
      *(v79 + 64) = v103;
      v79[9] = v82;
      v83 = *(v87 + 36);
      *(v79 + v83) = swift_getKeyPath();
      sub_100140278(&qword_1008EE800);
      swift_storeEnumTagMultiPayload();
      v84 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
      v30 = UIHostingController.init(rootView:)();
      v74 = v31;
      [v31 presentViewController:v30 animated:1 completion:0];
LABEL_51:

      return sub_100005A40(v106);
    }

    if (v52 <= 6)
    {
      if (v52 ^ 5 | v53)
      {
        goto LABEL_47;
      }

      v74 = *(*&v31[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
      sub_1005D1004();
      goto LABEL_51;
    }

    if (!(v52 ^ 7 | v53))
    {
      sub_100007C5C(v106, &v103);
      sub_100140278(&unk_1008EE6B0);
      if (swift_dynamicCast())
      {
        (*(v94 + 56))(v21, 0, 1, v22);
        v75 = v90;
        sub_10006151C(v21, v90, type metadata accessor for CatalogTipCard);
        v76 = v93;
        sub_10001B104(v75 + *(v22 + 36), v93, &qword_1008E4E80);
        if ((*(v91 + 48))(v76, 1, v92) == 1)
        {
          sub_1006090E0(v75, type metadata accessor for CatalogTipCard);

          sub_10000EA04(v76, &qword_1008E4E80);
        }

        else
        {
          v85 = v76;
          v86 = v89;
          sub_10006151C(v85, v89, type metadata accessor for CatalogTipSection);
          sub_10039B4C4(v86);
          sub_100399D60(v86);

          sub_1006090E0(v86, type metadata accessor for CatalogTipSection);
          sub_1006090E0(v75, type metadata accessor for CatalogTipCard);
        }
      }

      else
      {

        (*(v94 + 56))(v21, 1, 1, v22);
        sub_10000EA04(v21, &qword_1008DCF90);
      }

      return sub_100005A40(v106);
    }

    if (!(v52 ^ 8 | v53))
    {
      goto LABEL_18;
    }

    sub_1005D4C54();
LABEL_47:

    return sub_100005A40(v106);
  }

LABEL_18:
  sub_100007C5C(v106, &v103);
  sub_100140278(&unk_1008EE6B0);
  v62 = v101;
  v63 = v100;
  if (swift_dynamicCast())
  {
    (*(v97 + 56))(v62, 0, 1, v63);
    v64 = v62;
    v65 = v95;
    sub_10006151C(v64, v95, type metadata accessor for TrendsCard);
    if (*(v65 + *(v63 + 36) + 8))
    {
      [v31 showAllTrendsAnimated:1];
    }

    sub_1006090E0(v65, type metadata accessor for TrendsCard);
  }

  else
  {

    (*(v97 + 56))(v62, 1, 1, v63);
    sub_10000EA04(v62, &qword_1008DCF78);
  }

  return sub_100005A40(v106);
}

uint64_t sub_100607BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OnboardingNavigationView = type metadata accessor for TrainingLoadOnboardingNavigationView();
  __chkstk_darwin(OnboardingNavigationView);
  v12 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100140278(&qword_1008E3D18);
  __chkstk_darwin(v13 - 8);
  v140 = &v122 - v14;
  v139 = type metadata accessor for TrendListMetric();
  v138 = *(v139 - 8);
  __chkstk_darwin(v139);
  v137 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100140278(&qword_1008EEC90);
  __chkstk_darwin(v16 - 8);
  v142 = &v122 - v17;
  v143 = type metadata accessor for TrendsActionContext(0);
  v141 = *(v143 - 8);
  __chkstk_darwin(v143);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v20 - 8);
  v130 = &v122 - v21;
  v129 = type metadata accessor for CatalogTipSection();
  v128 = *(v129 - 8);
  __chkstk_darwin(v129);
  v125 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100140278(&qword_1008DCF90);
  __chkstk_darwin(v23 - 8);
  v136 = &v122 - v24;
  v135 = type metadata accessor for CatalogTipCard();
  v133 = *(v135 - 8);
  __chkstk_darwin(v135);
  v127 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100140278(&qword_1008EEC98);
  __chkstk_darwin(v26 - 8);
  v134 = &v122 - v27;
  CardActionContext = type metadata accessor for FitnessPlusUpNextCardActionContext();
  v131 = *(CardActionContext - 8);
  __chkstk_darwin(CardActionContext);
  v126 = &v122 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = a4;
  v159 = a5;
  v29 = sub_100005994(&v157);
  (*(*(a4 - 8) + 16))(v29, a1, a4);
  v30 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController;
  v31 = a3;
  v32 = *(a3 + OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_hostViewController);
  if (v32)
  {
    v123 = v19;
    v33 = a2;
    v124 = OnboardingNavigationView;
    v34 = v12;
    v35 = v158;
    v36 = v159;
    sub_1000066AC(&v157, v158);
    v37 = *(v36 + 32);
    v144 = v32;
    if (v37(v35, v36))
    {
      v38 = *(v31 + v30);
      if (v38)
      {
        v39 = v158;
        v40 = v159;
        sub_1000066AC(&v157, v158);
        v41 = *(v40 + 16);
        v42 = v38;
        v43 = v41(v39, v40);
        if (v45 != 3 || v43 | v44)
        {
          sub_10001D4F8(v43, v44, v45);
          v46 = v158;
          v47 = v159;
          v48 = sub_1000066AC(&v157, v158);
          sub_100475448(v48, v42, v46, v47);
        }
      }

      goto LABEL_8;
    }

    v50 = OBJC_IVAR____TtC10FitnessApp25ActivityDashboardCardCell_summaryCoordinator;
    swift_beginAccess();
    sub_10001B104(v31 + v50, &v145, &qword_1008EE7A8);
    if (*(&v146 + 1))
    {
      sub_100007C5C(&v145, &v154);
      sub_10000EA04(&v145, &qword_1008EE7A8);
      v51 = sub_1000066AC(&v154, *(&v155 + 1));
      v52 = *(*v51 + OBJC_IVAR____TtC10FitnessApp18SummaryCoordinator_clientActiveCards);
      __chkstk_darwin(v51);
      *(&v122 - 2) = &v157;

      sub_10047CE14(sub_1004A9490, (&v122 - 4), v52);
      v54 = v53;

      sub_100005A40(&v154);
      v55 = v34;
      v56 = v33;
      if ((v54 & 1) == 0)
      {
        sub_100637300(&v157);
      }
    }

    else
    {
      sub_10000EA04(&v145, &qword_1008EE7A8);
      v55 = v34;
      v56 = v33;
    }

    v57 = v158;
    v58 = v159;
    sub_1000066AC(&v157, v158);
    v59 = (*(v58 + 16))(v57, v58);
    v62 = v124;
    v63 = v123;
    if (v61 <= 1u)
    {
      if (!v61)
      {
        v64 = v158;
        v65 = v159;
        v66 = v59;
        sub_1000066AC(&v157, v158);
        v67 = (*(v65 + 16))(v64, v65);
        v69 = v68;
        LOBYTE(v65) = v70;
        v71 = sub_1000490C8(v67, v68, v70);
        sub_10001D4F8(v67, v69, v65);
        v72 = v144;
        sub_100390768(v66, v71, 1, 0, 256);

        return sub_100005A40(&v157);
      }

      sub_10001D4F8(v59, v60, 1);
      v79 = v144;
      goto LABEL_22;
    }

    if (v61 == 2)
    {
      goto LABEL_18;
    }

    if (v59 > 4)
    {
      if (v59 <= 6)
      {
        if (!(v59 ^ 5 | v60))
        {
          sub_10001B104(v56, &v145, &qword_1008E51F0);
          if (*(&v146 + 1))
          {
            v73 = v134;
            v92 = CardActionContext;
            v93 = swift_dynamicCast();
            v94 = v131;
            (*(v131 + 56))(v73, v93 ^ 1u, 1, v92);
            if ((*(v94 + 48))(v73, 1, v92) != 1)
            {
              v114 = v126;
              sub_10006151C(v73, v126, type metadata accessor for FitnessPlusUpNextCardActionContext);
              v115 = v144;
              sub_100399214(v114, v114 + *(v92 + 20));
              v116 = CatalogLockup.identifier.getter();
              v118 = v117;
              v119 = *(*&v115[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_fitnessAppContext);
              sub_1005D1938(v116, v118);

              sub_1006090E0(v114, type metadata accessor for FitnessPlusUpNextCardActionContext);
              return sub_100005A40(&v157);
            }
          }

          else
          {

            sub_10000EA04(&v145, &qword_1008E51F0);
            v73 = v134;
            (*(v131 + 56))(v134, 1, 1, CardActionContext);
          }

          v86 = &qword_1008EEC98;
          goto LABEL_42;
        }
      }

      else
      {
        if (!(v59 ^ 7 | v60))
        {
          sub_100007C5C(&v157, &v145);
          sub_100140278(&unk_1008EE6B0);
          v99 = v136;
          v100 = v135;
          v101 = swift_dynamicCast();
          v102 = v144;
          if ((v101 & 1) == 0)
          {

            (*(v133 + 56))(v99, 1, 1, v100);
            sub_10000EA04(v99, &qword_1008DCF90);
            return sub_100005A40(&v157);
          }

          (*(v133 + 56))(v99, 0, 1, v100);
          v63 = v127;
          sub_10006151C(v99, v127, type metadata accessor for CatalogTipCard);
          v103 = v63 + *(v100 + 36);
          v104 = v130;
          sub_10001B104(v103, v130, &qword_1008E4E80);
          if ((*(v128 + 48))(v104, 1, v129) == 1)
          {
            sub_1006090E0(v63, type metadata accessor for CatalogTipCard);

            sub_10000EA04(v104, &qword_1008E4E80);
            return sub_100005A40(&v157);
          }

          v120 = v104;
          v121 = v125;
          sub_10006151C(v120, v125, type metadata accessor for CatalogTipSection);
          sub_10039B4C4(v121);
          sub_100399D60(v121);

          sub_1006090E0(v121, type metadata accessor for CatalogTipSection);
          v106 = type metadata accessor for CatalogTipCard;
          goto LABEL_69;
        }

        if (!(v59 ^ 8 | v60))
        {
LABEL_18:
          sub_10001B104(v56, &v145, &qword_1008E51F0);
          if (!*(&v146 + 1))
          {

            sub_10000EA04(&v145, &qword_1008E51F0);
            v73 = v142;
            (*(v141 + 56))(v142, 1, 1, v143);
            goto LABEL_41;
          }

          v73 = v142;
          v74 = v143;
          v75 = swift_dynamicCast();
          v76 = v141;
          (*(v141 + 56))(v73, v75 ^ 1u, 1, v74);
          v77 = (*(v76 + 48))(v73, 1, v74);
          v78 = v144;
          if (v77 == 1)
          {

LABEL_41:
            v86 = &qword_1008EEC90;
LABEL_42:
            sub_10000EA04(v73, v86);
            return sub_100005A40(&v157);
          }

          sub_10006151C(v73, v63, type metadata accessor for TrendsActionContext);
          v87 = v140;
          sub_10001B104(v63, v140, &qword_1008E3D18);
          if ((*(v138 + 48))(v87, 1, v139) == 1)
          {
            sub_10000EA04(v87, &qword_1008E3D18);
            if (*(v63 + *(v74 + 20) + 8) != 255)
            {
              v88 = *(*&v78[OBJC_IVAR____TtC10FitnessApp31ActivityDashboardViewController_context] + OBJC_IVAR____TtC10FitnessApp24ActivityDashboardContext_trendsAvailabilityManager);
              v89 = objc_allocWithZone(type metadata accessor for TrendsSplashViewController());
              v90 = sub_1001C083C(v88);
              [v78 presentViewController:v90 animated:1 completion:0];

              sub_1006090E0(v63, type metadata accessor for TrendsActionContext);
              return sub_100005A40(&v157);
            }
          }

          else
          {
            v95 = v137;
            sub_10006151C(v87, v137, type metadata accessor for TrendListMetric);
            sub_10039C45C(v95);

            sub_1006090E0(v95, type metadata accessor for TrendListMetric);
          }

          v106 = type metadata accessor for TrendsActionContext;
LABEL_69:
          sub_1006090E0(v63, v106);
          return sub_100005A40(&v157);
        }

        sub_10001B104(v56, &v145, &qword_1008E51F0);
        if (!*(&v146 + 1))
        {

          goto LABEL_44;
        }

        type metadata accessor for QuickStartWorkoutActionContext();
        v82 = swift_dynamicCast();
        v83 = v144;
        if (v82)
        {
          v84 = v154;
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            [Strong handleQuickStartWorkoutActionContext:v84];

            swift_unknownObjectRelease();
          }

          else
          {
          }

          return sub_100005A40(&v157);
        }
      }

LABEL_8:

      return sub_100005A40(&v157);
    }

    if (v59 > 1)
    {
      v79 = v144;
      if (v59 ^ 2 | v60)
      {
        if (v59 ^ 3 | v60)
        {
LABEL_22:
          sub_10001B104(v56, &v145, &qword_1008E51F0);
          if (*(&v146 + 1))
          {
            if (swift_dynamicCast())
            {
              v80 = v154;

              sub_100315688(v80, 1);

              return sub_100005A40(&v157);
            }

LABEL_32:

            return sub_100005A40(&v157);
          }

LABEL_44:
          sub_10000EA04(&v145, &qword_1008E51F0);
          return sub_100005A40(&v157);
        }

        sub_10001B104(v56, &v154, &qword_1008E51F0);
        if (*(&v155 + 1))
        {
          if (swift_dynamicCast())
          {
            v81 = v147;
            sub_100392B10(v147, v31, v148, v149, v150, v151, *&v145, *(&v145 + 1), *&v146, *(&v146 + 1));
          }

          goto LABEL_32;
        }

        v113 = &qword_1008E51F0;
      }

      else
      {
        sub_10001B104(v56, v152, &qword_1008E51F0);
        if (v153)
        {
          if (swift_dynamicCast())
          {
            if (*(&v155 + 1))
            {
              v146 = v155;
              v145 = v154;
              v96 = v156;
              v147 = v156;
              v97 = *(&v155 + 1);
              v98 = sub_1000066AC(&v145, *(&v155 + 1));
              sub_10039DBCC(v98, v79, v97, v96);

              sub_1002FB468(&v145);
              return sub_100005A40(&v157);
            }
          }

          else
          {
            v156 = 0;
            v155 = 0u;
            v154 = 0u;
          }
        }

        else
        {

          sub_10000EA04(v152, &qword_1008E51F0);
          v154 = 0u;
          v155 = 0u;
          v156 = 0;
        }

        v113 = &unk_1008EECA0;
      }

      sub_10000EA04(&v154, v113);
      return sub_100005A40(&v157);
    }

    v91 = v144;
    if (v59 | v60)
    {
      if (qword_1008DA938 != -1)
      {
        swift_once();
      }

      v105 = qword_100925688;
      swift_getKeyPath();
      *&v145 = v105;
      sub_100609098(&qword_1008E9438, type metadata accessor for TrainingLoadOnboardingStateHandler);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v105 + 16))
      {
        [v91 showLoad];
      }

      else
      {
        *v55 = ASFriendListDisplayMode.id.getter;
        *(v55 + 1) = 0;
        *(v55 + 2) = 0;
        *(v55 + 3) = 0;
        *&v154 = _swiftEmptyArrayStorage;
        sub_100140278(&qword_1008DDD40);
        State.init(wrappedValue:)();
        v107 = *(&v145 + 1);
        *(v55 + 4) = v145;
        *(v55 + 5) = v107;
        LOBYTE(v154) = 0;
        State.init(wrappedValue:)();
        v108 = *(&v145 + 1);
        v55[48] = v145;
        *(v55 + 7) = v108;
        LOBYTE(v154) = 0;
        State.init(wrappedValue:)();
        v109 = *(&v145 + 1);
        v55[64] = v145;
        *(v55 + 9) = v109;
        v110 = *(v62 + 36);
        *&v55[v110] = swift_getKeyPath();
        sub_100140278(&qword_1008EE800);
        swift_storeEnumTagMultiPayload();
        v111 = objc_allocWithZone(sub_100140278(&qword_1008EE808));
        v112 = UIHostingController.init(rootView:)();
        [v91 presentViewController:v112 animated:1 completion:0];
      }
    }

    else
    {
    }
  }

  return sub_100005A40(&v157);
}

uint64_t sub_100609098(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1006090E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100609140()
{
  result = qword_1008F5E80;
  if (!qword_1008F5E80)
  {
    sub_100141EEC(&qword_1008F5E78);
    sub_1006091F8();
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5E80);
  }

  return result;
}

unint64_t sub_1006091F8()
{
  result = qword_1008F5E88;
  if (!qword_1008F5E88)
  {
    sub_100141EEC(&qword_1008F5E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5E88);
  }

  return result;
}

unint64_t sub_10060927C()
{
  result = qword_1008F5EB0;
  if (!qword_1008F5EB0)
  {
    sub_100141EEC(&qword_1008F5E28);
    sub_100609334();
    sub_10014A6B0(&qword_1008EC7B0, &qword_1008EC798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5EB0);
  }

  return result;
}

unint64_t sub_100609334()
{
  result = qword_1008F5EB8;
  if (!qword_1008F5EB8)
  {
    sub_100141EEC(&qword_1008F5EA0);
    sub_1006093EC();
    sub_10014A6B0(&qword_1008F5EC8, &qword_1008F5EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5EB8);
  }

  return result;
}

unint64_t sub_1006093EC()
{
  result = qword_1008F5EC0;
  if (!qword_1008F5EC0)
  {
    sub_100141EEC(&qword_1008F5E98);
    sub_100141EEC(&qword_1008F5E78);
    sub_100609140();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E9860, &qword_1008E9848);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F5EC0);
  }

  return result;
}

uint64_t type metadata accessor for VideoLooperRepresentable()
{
  result = qword_1008F5F28;
  if (!qword_1008F5F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100609578()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_1006095EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v2, v5);
  LOBYTE(a2) = *(v2 + *(a2 + 20));
  v9 = objc_allocWithZone(type metadata accessor for VideoLooperView());
  return sub_10065479C(v7, a2);
}

uint64_t sub_1006096CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100609844(&qword_1008F5F68);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10060974C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100609844(&qword_1008F5F68);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1006097CC()
{
  sub_100609844(&qword_1008F5F68);
  UIViewRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_100609844(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for VideoLooperRepresentable();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100609888()
{
  v1 = v0;
  v16.receiver = v0;
  v16.super_class = type metadata accessor for TrendsScrubberFlagpoleView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    [v1 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v1 bounds];
    v13 = CGRectGetWidth(v17) * 0.5;
    v14 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v8, v10, v12, v13}];
    v15 = [v14 CGPath];

    [v4 setPath:v15];
  }

  else
  {

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t sub_100609BFC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *&v4[v10] = sub_100555C98();
  v11 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel;
  *&v4[v11] = sub_100555C98();
  *&v4[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint] = 0;
  *&v4[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint] = 0;
  v12 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_platterColor;
  v13 = objc_opt_self();
  *&v5[v12] = [v13 whiteColor];
  v37.receiver = v5;
  v37.super_class = type metadata accessor for TrendsScrubberPlatterView();
  v14 = objc_msgSendSuper2(&v37, "initWithFrame:", a1, a2, a3, a4);
  v15 = [v14 layer];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = [*&v14[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_platterColor] CGColor];
    [v17 setFillColor:v18];

    v19 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel;
    v20 = *&v14[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel];
    v21 = objc_opt_self();
    v15 = UIContentSizeCategoryExtraExtraExtraLarge;
    v22 = v20;
    v23 = [v21 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
    if (v23)
    {
      v24 = v23;
      [v22 setFont:v23];

      v25 = *&v14[v19];
      v26 = [v13 blackColor];
      [v25 setTextColor:v26];

      LODWORD(v27) = 1148846080;
      [*&v14[v19] setContentCompressionResistancePriority:0 forAxis:v27];
      v28 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel;
      v29 = *&v14[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel];
      v30 = [v21 _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
      if (v30)
      {
        v31 = v30;
        [v29 setFont:v30];

        v32 = *&v14[v28];
        v33 = [v13 blackColor];
        [v32 setTextColor:v33];

        LODWORD(v34) = 1148846080;
        [*&v14[v28] setContentCompressionResistancePriority:0 forAxis:v34];
        [v14 addSubview:*&v14[v19]];
        [v14 addSubview:*&v14[v28]];
        sub_10060A468();
        v35 = [objc_opt_self() defaultCenter];
        [v35 addObserver:v14 selector:"fontSizeChangedWithNote:" name:UIContentSizeCategoryDidChangeNotification object:0];

        return v14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_10060A04C()
{
  v1 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel);
  v2 = objc_opt_self();
  v3 = [v2 _preferredFontForTextStyle:UIFontTextStyleCaption2 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v3)
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = v3;
  [v1 setFont:v3];

  v5 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel);
  v6 = [v2 _preferredFontForTextStyle:UIFontTextStyleTitle3 variant:1024 maximumContentSizeCategory:UIContentSizeCategoryExtraExtraExtraLarge];
  if (!v6)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = v6;
  [v5 setFont:v6];

  v8 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint);
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v1 font];
  if (!v10)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v10;
  [v10 _scaledValueForValue:6.0];
  v13 = v12;

  [v9 setConstant:v13];
LABEL_6:
  v14 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint);
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v5 font];
  if (!v16)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = v16;
  [v16 _scaledValueForValue:-3.0];
  v19 = v18;

  [v15 setConstant:v19];
LABEL_9:
  v20 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint);
  if (v20)
  {
    v21 = v20;
    v22 = 0.0;
    if ((FIUICurrentLanguageRequiresTallScript() & 1) == 0)
    {
      v23 = [v1 font];
      if (!v23)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v24 = v23;
      [v23 _scaledValueForValue:-1.0];
      v22 = v25;
    }

    [v21 setConstant:v22];
  }

  v26 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint);
  if (v26)
  {
    v27 = v26;
    v28 = [v1 font];
    if (v28)
    {
      v29 = v28;
      [v28 _scaledValueForValue:4.0];
      v31 = v30;

      [v27 setConstant:v31];
      goto LABEL_17;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_17:
  v32 = *(v0 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint);
  if (!v32)
  {
    return;
  }

  v37 = v32;
  v33 = [v1 font];
  if (!v33)
  {
    goto LABEL_28;
  }

  v34 = v33;
  [v33 _scaledValueForValue:-4.0];
  v36 = v35;

  [v37 setConstant:v36];
}

void sub_10060A468()
{
  v1 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel];
  v2 = [v1 leadingAnchor];
  v3 = [v0 leadingAnchor];
  v4 = [v1 font];
  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4;
  [v4 _scaledValueForValue:4.0];
  v7 = v6;

  v8 = [v2 constraintEqualToAnchor:v3 constant:v7];
  v9 = [v1 trailingAnchor];
  v10 = [v0 trailingAnchor];
  v11 = [v1 font];
  if (!v11)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v60 = v8;
  [v11 _scaledValueForValue:-4.0];
  v14 = v13;

  v59 = [v9 constraintEqualToAnchor:v10 constant:v14];
  v15 = [v1 topAnchor];
  v16 = [v0 topAnchor];
  v17 = [v1 font];
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  [v17 _scaledValueForValue:6.0];
  v20 = v19;

  v58 = [v15 constraintEqualToAnchor:v16 constant:v20];
  v21 = FIUICurrentLanguageRequiresTallScript();
  v22 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel];
  v23 = [v22 topAnchor];
  v24 = [v1 bottomAnchor];
  v25 = [v1 font];
  if (!v25)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v26 = v25;
  v27 = -1.0;
  if (v21)
  {
    v27 = 0.0;
  }

  [v25 _scaledValueForValue:v27];
  v29 = v28;

  v30 = [v23 constraintEqualToAnchor:v24 constant:v29];
  v31 = [v22 leadingAnchor];
  v32 = [v1 leadingAnchor];
  v57 = [v31 constraintEqualToAnchor:v32];

  v33 = [v22 trailingAnchor];
  v34 = [v1 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];

  v36 = [v22 bottomAnchor];
  v37 = [v0 bottomAnchor];
  v38 = [v22 font];
  if (!v38)
  {
    goto LABEL_15;
  }

  v39 = v38;
  [v38 _scaledValueForValue:-3.0];
  v41 = v40;

  v42 = [v36 constraintEqualToAnchor:v37 constant:v41];
  v55 = objc_opt_self();
  sub_100140278(&unk_1008E4E20);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1006D9800;
  *(v43 + 32) = v60;
  *(v43 + 40) = v59;
  *(v43 + 48) = v58;
  *(v43 + 56) = v30;
  *(v43 + 64) = v57;
  *(v43 + 72) = v35;
  *(v43 + 80) = v42;
  sub_1000059F8(0, &qword_1008DC980);
  v56 = v60;
  v61 = v59;
  v44 = v58;
  v45 = v30;
  v46 = v57;
  v47 = v35;
  v48 = v42;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 activateConstraints:isa];

  v50 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint] = v44;

  v51 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint] = v48;

  v52 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint] = v45;

  v53 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint];
  *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint] = v56;

  v54 = *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint];
  *&v0[OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint] = v61;
}

uint64_t sub_10060A9DC(void *a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topLabel;
  sub_1000059F8(0, &qword_1008E2D40);
  *(v1 + v3) = sub_100555C98();
  v4 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomLabel;
  *(v1 + v4) = sub_100555C98();
  v5 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_topConstraint) = 0;
  v6 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_bottomConstraint) = 0;
  v7 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_midConstraint) = 0;
  v8 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_leadingConstaint) = 0;
  v9 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint;
  *(v1 + OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_trailingConstraint) = 0;
  v10 = OBJC_IVAR____TtC10FitnessApp25TrendsScrubberPlatterView_platterColor;
  v11 = [objc_opt_self() whiteColor];

  *(v2 + v10) = v11;
  type metadata accessor for TrendsScrubberPlatterView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_10060AB60()
{
  v1 = v0;
  v17.receiver = v0;
  v17.super_class = type metadata accessor for TrendsScrubberPlatterView();
  objc_msgSendSuper2(&v17, "layoutSubviews");
  v2 = [v0 layer];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = [v1 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      [v6 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      v15 = [objc_opt_self() bezierPathWithRoundedRect:v8 cornerRadius:{v10, v12, v14, 8.0}];
      v16 = [v15 CGPath];

      [v4 setPath:v16];
      return;
    }
  }

  else
  {
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_10060AD74(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_10060AE9C(void *a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *a2;
  v5 = *&v2[*a2];
  *&v3[*a2] = a1;
  v6 = a1;

  v7 = [v3 layer];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = [*&v3[v4] CGColor];
    [v9 setFillColor:v10];
  }

  else
  {

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t type metadata accessor for LoadItemsList()
{
  result = qword_1008F6068;
  if (!qword_1008F6068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10060B038()
{
  sub_1000059F8(319, &unk_1008DC348);
  if (v0 <= 0x3F)
  {
    type metadata accessor for FitnessAppContext();
    if (v1 <= 0x3F)
    {
      type metadata accessor for StackFormattingManager();
      if (v2 <= 0x3F)
      {
        type metadata accessor for SeymourCatalogItemDataProvider();
        if (v3 <= 0x3F)
        {
          type metadata accessor for AAUIAwardsDataProvider();
          if (v4 <= 0x3F)
          {
            type metadata accessor for WorkoutImageProvider();
            if (v5 <= 0x3F)
            {
              sub_10060B1FC(319, &qword_1008F03A8, type metadata accessor for LoadDetailViewControllerCoordinator, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                type metadata accessor for TrainingLoadDataType();
                if (v7 <= 0x3F)
                {
                  sub_1000059F8(319, &qword_1008F24B0);
                  if (v8 <= 0x3F)
                  {
                    sub_10060B1FC(319, &qword_1008E0B78, type metadata accessor for BalanceDataProvider, &type metadata accessor for Environment);
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

void sub_10060B1FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10060B27C()
{
  DataType = type metadata accessor for TrainingLoadDataType();
  v2 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemsList = type metadata accessor for LoadItemsList();
  (*(v2 + 16))(v4, v0 + *(ItemsList + 44), DataType);
  v6 = (*(v2 + 88))(v4, DataType);
  if (v6 == enum case for TrainingLoadDataType.workoutType(_:))
  {
    (*(v2 + 96))(v4, DataType);
    v7 = [objc_opt_self() mainBundle];
    v8 = String._bridgeToObjectiveC()();
    v9 = [v7 localizedStringForKey:v8 value:0 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_100140278(&unk_1008E4E50);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1006D46C0;
    v11 = FILocalizedNameForIndoorAgnosticActivityType();
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_10000A788();
      *(v10 + 32) = v13;
      *(v10 + 40) = v15;
      v16 = String.init(format:_:)();

      return v16;
    }

    __break(1u);
  }

  else if (v6 == enum case for TrainingLoadDataType.allDay(_:) || v6 == enum case for TrainingLoadDataType.workout(_:))
  {
    v17 = [objc_opt_self() mainBundle];
    v18 = String._bridgeToObjectiveC()();
    v19 = [v17 localizedStringForKey:v18 value:0 table:0];

    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v16;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10060B630()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  DataType = type metadata accessor for TrainingLoadDataType();
  v6 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemsList = type metadata accessor for LoadItemsList();
  (*(v6 + 104))(v8, enum case for TrainingLoadDataType.allDay(_:), DataType);
  v10 = static TrainingLoadDataType.== infix(_:_:)();
  (*(v6 + 8))(v8, DataType);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v12 = v0 + *(ItemsList + 52);
    v13 = *v12;
    v14 = *(v12 + 8);
    if (v14 == 1)
    {
      v15 = v13;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v16 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_1000A73A4(v13, 0);
      (*(v2 + 8))(v4, v1);
      v15 = v23;
    }

    swift_getKeyPath();
    v23 = v15;
    sub_100080000(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = v15[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__isFetchingWorkouts];

    if (v17)
    {
      v11 = 1;
    }

    else
    {
      if (v14)
      {
        v18 = v13;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v19 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v13, 0);
        (*(v2 + 8))(v4, v1);
        v18 = v23;
      }

      swift_getKeyPath();
      v23 = v18;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = v18[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__workoutEffortCacheIsPopulated];

      v11 = v20 ^ 1;
    }
  }

  return v11 & 1;
}

void sub_10060B9F0()
{
  v1 = sub_100140278(&qword_1008DF220);
  v21 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v21 - v2;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v0 + *(type metadata accessor for LoadItemsList() + 52);
  v9 = *v8;
  if (*(v8 + 8) == 1)
  {
    v10 = v9;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000A73A4(v9, 0);
    (*(v5 + 8))(v7, v4);
    v10 = v22;
  }

  swift_getKeyPath();
  v22 = v10;
  sub_100080000(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *&v10[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummariesForTheWeek];

  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = *(v1 + 48);
    v16 = v12 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    while (v14 < *(v12 + 16))
    {
      sub_10001B104(v16 + *(v21 + 72) * v14, v3, &qword_1008DF220);
      v18 = *&v3[v15];
      if (v18)
      {
        v19 = [*&v3[v15] paused];

        if (v19)
        {

          v20 = type metadata accessor for DayIndex();
          (*(*(v20 - 8) + 8))(v3, v20);
          return;
        }
      }

      ++v14;
      v17 = type metadata accessor for DayIndex();
      (*(*(v17 - 8) + 8))(v3, v17);
      if (v13 == v14)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
  }
}

uint64_t sub_10060BD84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v215 = a2;
  v3 = sub_100140278(&qword_1008F6168);
  v206 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v161 - v4;
  v216 = sub_100140278(&qword_1008F6170);
  __chkstk_darwin(v216);
  v7 = &v161 - v6;
  v211 = sub_100140278(&qword_1008F6150);
  __chkstk_darwin(v211);
  v198 = &v161 - v8;
  v189 = type metadata accessor for PlainButtonStyle();
  v188 = *(v189 - 8);
  __chkstk_darwin(v189);
  v187 = &v161 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_100140278(&qword_1008F6178);
  __chkstk_darwin(v185);
  v186 = &v161 - v10;
  v192 = sub_100140278(&qword_1008F6180);
  __chkstk_darwin(v192);
  v190 = &v161 - v11;
  v194 = sub_100140278(&qword_1008F6188);
  v193 = *(v194 - 8);
  __chkstk_darwin(v194);
  v191 = &v161 - v12;
  v197 = sub_100140278(&qword_1008F6190);
  v196 = *(v197 - 8);
  __chkstk_darwin(v197);
  v195 = &v161 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v207 = &v161 - v15;
  v181 = sub_100140278(&qword_1008F6198);
  v169 = *(v181 - 8);
  __chkstk_darwin(v181);
  v168 = &v161 - v16;
  v177 = sub_100140278(&qword_1008F61A0);
  __chkstk_darwin(v177);
  v178 = &v161 - v17;
  v209 = sub_100140278(&qword_1008F61A8);
  __chkstk_darwin(v209);
  v210 = &v161 - v18;
  v184 = sub_100140278(&qword_1008F6140);
  __chkstk_darwin(v184);
  v174 = &v161 - v19;
  ItemsList = type metadata accessor for LoadItemsList();
  v203 = *(ItemsList - 8);
  __chkstk_darwin(ItemsList);
  v204 = v21;
  KeyPath = &v161 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_100140278(&qword_1008F61B0);
  v172 = *(v173 - 8);
  __chkstk_darwin(v173);
  v170 = &v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v171 = &v161 - v24;
  v166 = sub_100140278(&qword_1008F61B8);
  v165 = *(v166 - 8);
  __chkstk_darwin(v166);
  v164 = &v161 - v25;
  v26 = sub_100140278(&qword_1008F61C0);
  __chkstk_darwin(v26 - 8);
  v167 = &v161 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v199 = &v161 - v29;
  v179 = sub_100140278(&qword_1008F61C8);
  __chkstk_darwin(v179);
  v180 = &v161 - v30;
  v212 = sub_100140278(&qword_1008F6130);
  __chkstk_darwin(v212);
  v176 = &v161 - v31;
  v208 = sub_100140278(&qword_1008F6120);
  __chkstk_darwin(v208);
  v182 = &v161 - v32;
  v202 = type metadata accessor for EnvironmentValues();
  v201 = *(v202 - 8);
  __chkstk_darwin(v202);
  v200 = &v161 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100140278(&qword_1008F61D0);
  __chkstk_darwin(v34 - 8);
  v183 = &v161 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v214 = &v161 - v37;
  DataType = type metadata accessor for TrainingLoadDataType();
  v39 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v41 = &v161 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100140278(&qword_1008F6110);
  __chkstk_darwin(v42);
  v213 = &v161 - v43;
  if (sub_10060B630())
  {
    v217 = 0;
    LOBYTE(v218) = 1;
    static VerticalEdge.Set.all.getter();
    View.listRowSeparator(_:edges:)();
    v44 = v206;
    (*(v206 + 16))(v7, v5, v3);
    swift_storeEnumTagMultiPayload();
    sub_10060FBF0();
    v217 = &type metadata for Spacer;
    v218 = &protocol witness table for Spacer;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v44 + 8))(v5, v3);
  }

  else
  {
    v163 = v42;
    v175 = v7;
    v206 = v3;
    (*(v39 + 16))(v41, a1 + *(ItemsList + 44), DataType);
    v46 = (*(v39 + 88))(v41, DataType);
    v47 = enum case for TrainingLoadDataType.allDay(_:);
    (*(v39 + 8))(v41, DataType);
    v48 = a1 + *(ItemsList + 52);
    v49 = *v48;
    v50 = *(v48 + 8);
    if (v46 == v47)
    {
      v51 = v175;
      v52 = v213;
      if (*(v48 + 8))
      {
        v53 = v49;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v55 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v56 = v200;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v49, 0);
        (*(v201 + 8))(v56, v202);
        v53 = v217;
      }

      swift_getKeyPath();
      v217 = v53;
      v214 = sub_100080000(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v57 = *&v53[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummaries];

      if (v57 >> 62)
      {
        v58 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v58)
      {
        LODWORD(v207) = v50;
        sub_10060B9F0();
        if (v59)
        {
          LocalizedStringKey.init(stringLiteral:)();
          v60 = Text.init(_:tableName:bundle:comment:)();
          v62 = v61;
          v217 = v60;
          v218 = v61;
          v64 = v63 & 1;
          LOBYTE(v219) = v63 & 1;
          v220 = v65;
          static VerticalEdge.Set.all.getter();
          v66 = v164;
          View.listRowSeparator(_:edges:)();
          sub_10004642C(v60, v62, v64);

          v67 = v66 + *(v212 + 36);
          *v67 = xmmword_100700670;
          *(v67 + 16) = xmmword_100700670;
          *(v67 + 32) = 0;
          v68 = static HierarchicalShapeStyle.secondary.getter();
          v69 = v166;
          *(v66 + *(v166 + 36)) = v68;
          v70 = v199;
          sub_1000A2644(v66, v199);
          v71 = 0;
          v72 = v203;
        }

        else
        {
          v71 = 1;
          v72 = v203;
          v70 = v199;
          v69 = v166;
        }

        (*(v165 + 56))(v70, v71, 1, v69);
        if (v207)
        {
          v100 = v49;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v143 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v144 = v200;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000A73A4(v49, 0);
          (*(v201 + 8))(v144, v202);
          v100 = v217;
        }

        swift_getKeyPath();
        v217 = v100;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v145 = *&v100[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__activitySummariesForTheWeek];

        v217 = v145;
        swift_getKeyPath();
        v146 = a1;
        v147 = KeyPath;
        sub_10060FE48(v146, KeyPath);
        v148 = (*(v72 + 80) + 16) & ~*(v72 + 80);
        v149 = swift_allocObject();
        sub_10060FEAC(v147, v149 + v148);
        v150 = swift_allocObject();
        *(v150 + 16) = sub_100610870;
        *(v150 + 24) = v149;
        sub_100140278(&qword_1008F62B0);
        sub_100140278(&qword_1008F62B8);
        sub_10014A6B0(&qword_1008F62C0, &qword_1008F62B0);
        sub_100080000(&qword_1008F62C8, &type metadata accessor for DayIndex);
        sub_100610954();
        v151 = v171;
        ForEach<>.init(_:id:content:)();
        v152 = v167;
        sub_10001B104(v70, v167, &qword_1008F61C0);
        v153 = v172;
        v154 = *(v172 + 16);
        v155 = v170;
        v156 = v173;
        v154(v170, v151, v173);
        v157 = v174;
        sub_10001B104(v152, v174, &qword_1008F61C0);
        v158 = sub_100140278(&qword_1008F6318);
        v154((v157 + *(v158 + 48)), v155, v156);
        v159 = *(v153 + 8);
        v159(v155, v156);
        sub_10000EA04(v152, &qword_1008F61C0);
        sub_10001B104(v157, v180, &qword_1008F6140);
        swift_storeEnumTagMultiPayload();
        sub_10060FD60();
        sub_10014A6B0(&qword_1008F6138, &qword_1008F6140);
        v88 = v182;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v157, &qword_1008F6140);
        v159(v151, v156);
        sub_10000EA04(v199, &qword_1008F61C0);
        v51 = v175;
        v52 = v213;
      }

      else
      {
        v217 = sub_10060B27C();
        v218 = v79;
        sub_10000FCBC();
        v80 = Text.init<A>(_:)();
        v82 = v81;
        v217 = v80;
        v218 = v81;
        v84 = v83 & 1;
        LOBYTE(v219) = v83 & 1;
        v220 = v85;
        static VerticalEdge.Set.all.getter();
        v86 = v176;
        View.listRowSeparator(_:edges:)();
        sub_10004642C(v80, v82, v84);

        v87 = v86 + *(v212 + 36);
        *v87 = xmmword_100700670;
        *(v87 + 16) = xmmword_100700670;
        *(v87 + 32) = 0;
        sub_10001B104(v86, v180, &qword_1008F6130);
        swift_storeEnumTagMultiPayload();
        sub_10060FD60();
        sub_10014A6B0(&qword_1008F6138, &qword_1008F6140);
        v88 = v182;
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v86, &qword_1008F6130);
      }

      sub_10001B104(v88, v210, &qword_1008F6120);
      swift_storeEnumTagMultiPayload();
      sub_10060FCA8();
      sub_10014A6B0(&qword_1008F6148, &qword_1008F6150);
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v88, &qword_1008F6120);
    }

    else
    {
      v162 = a1;
      if (v50)
      {
        v54 = v49;
      }

      else
      {

        static os_log_type_t.fault.getter();
        v73 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v74 = v200;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000A73A4(v49, 0);
        (*(v201 + 8))(v74, v202);
        v54 = v217;
      }

      v75 = KeyPath;
      swift_getKeyPath();
      v217 = v54;
      sub_100080000(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v76 = *&v54[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyListForTheWeek];

      v77 = *(v76 + 16);

      if (v77)
      {
        if (v50)
        {
          v78 = v49;
        }

        else
        {

          static os_log_type_t.fault.getter();
          v101 = static Log.runtimeIssuesLog.getter();
          os_log(_:dso:log:_:_:)();

          v102 = v200;
          EnvironmentValues.init()();
          swift_getAtKeyPath();
          sub_1000A73A4(v49, 0);
          (*(v201 + 8))(v102, v202);
          v78 = v217;
        }

        swift_getKeyPath();
        v217 = v78;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v103 = *&v78[OBJC_IVAR____TtC10FitnessApp19BalanceDataProvider__historyListForTheWeek];

        v217 = v103;
        KeyPath = swift_getKeyPath();
        v104 = v162;
        sub_10060FE48(v162, v75);
        v99 = v203;
        v105 = (*(v203 + 80) + 16) & ~*(v203 + 80);
        v106 = swift_allocObject();
        sub_10060FEAC(v75, v106 + v105);
        sub_100140278(&qword_1008DE500);
        sub_100140278(&qword_1008F61D8);
        sub_10014A6B0(&qword_1008F61E0, &qword_1008DE500);
        sub_100080000(&qword_1008E4E10, &type metadata accessor for UUID);
        sub_10060FF90();
        v107 = v168;
        v89 = v104;
        ForEach<>.init(_:id:content:)();
        v108 = v169;
        v109 = v181;
        (*(v169 + 16))(v178, v107, v181);
        swift_storeEnumTagMultiPayload();
        sub_10060FD60();
        sub_1006102A8();
        _ConditionalContent<>.init(storage:)();
        (*(v108 + 8))(v107, v109);
      }

      else
      {
        v89 = v162;
        v217 = sub_10060B27C();
        v218 = v90;
        sub_10000FCBC();
        v91 = Text.init<A>(_:)();
        v93 = v92;
        v217 = v91;
        v218 = v92;
        v95 = v94 & 1;
        LOBYTE(v219) = v94 & 1;
        v220 = v96;
        static VerticalEdge.Set.all.getter();
        v97 = v176;
        View.listRowSeparator(_:edges:)();
        sub_10004642C(v91, v93, v95);

        v98 = v97 + *(v212 + 36);
        *v98 = xmmword_100700670;
        *(v98 + 16) = xmmword_100700670;
        *(v98 + 32) = 0;
        sub_10001B104(v97, v178, &qword_1008F6130);
        swift_storeEnumTagMultiPayload();
        sub_10060FD60();
        sub_1006102A8();
        _ConditionalContent<>.init(storage:)();
        sub_10000EA04(v97, &qword_1008F6130);
        v99 = v203;
      }

      sub_10060FE48(v89, v75);
      v110 = (*(v99 + 80) + 16) & ~*(v99 + 80);
      v111 = swift_allocObject();
      sub_10060FEAC(v75, v111 + v110);
      sub_100140278(&qword_1008F6228);
      sub_100610394();
      v112 = v186;
      Button.init(action:label:)();
      v113 = v112 + *(sub_100140278(&qword_1008F6248) + 36);
      *v113 = xmmword_100700680;
      *(v113 + 16) = xmmword_100700690;
      *(v113 + 32) = 0;
      v114 = static Edge.Set.all.getter();
      EdgeInsets.init(_all:)();
      v115 = v112 + *(v185 + 36);
      *v115 = v114;
      *(v115 + 8) = v116;
      *(v115 + 16) = v117;
      *(v115 + 24) = v118;
      *(v115 + 32) = v119;
      *(v115 + 40) = 0;
      v120 = v187;
      PlainButtonStyle.init()();
      sub_10061044C();
      sub_100080000(&qword_1008F0708, &type metadata accessor for PlainButtonStyle);
      v121 = v190;
      v122 = v189;
      View.buttonStyle<A>(_:)();
      (*(v188 + 8))(v120, v122);
      sub_10000EA04(v112, &qword_1008F6178);
      v123 = sub_100046170();
      v124 = Color.init(uiColor:)();
      v125 = static Edge.Set.all.getter();
      v126 = v192;
      v127 = v121 + *(v192 + 36);
      *v127 = v124;
      *(v127 + 8) = v125;
      Solarium.init()();
      v128 = sub_100140278(&qword_1008F6270);
      v129 = sub_100140278(&qword_1008F6278);
      v130 = sub_1006105BC();
      v131 = sub_100610700();
      v160 = sub_1006107B8();
      v132 = v191;
      View.staticIf<A, B, C>(_:then:else:)();
      sub_10000EA04(v121, &qword_1008F6180);
      static VerticalEdge.Set.all.getter();
      v217 = v126;
      v218 = &type metadata for Solarium;
      v219 = v128;
      v220 = v129;
      v221 = v130;
      v222 = &protocol witness table for Solarium;
      v223 = v131;
      v224 = v160;
      swift_getOpaqueTypeConformance2();
      v133 = v207;
      v134 = v194;
      View.listRowSeparator(_:edges:)();
      (*(v193 + 8))(v132, v134);
      v135 = v183;
      sub_10001B104(v214, v183, &qword_1008F61D0);
      v136 = v196;
      v137 = *(v196 + 16);
      v138 = v195;
      v139 = v197;
      v137(v195, v133, v197);
      v140 = v198;
      sub_10001B104(v135, v198, &qword_1008F61D0);
      v141 = sub_100140278(&qword_1008F62A8);
      v137((v140 + *(v141 + 48)), v138, v139);
      v142 = *(v136 + 8);
      v142(v138, v139);
      sub_10000EA04(v135, &qword_1008F61D0);
      sub_10001B104(v140, v210, &qword_1008F6150);
      swift_storeEnumTagMultiPayload();
      sub_10060FCA8();
      sub_10014A6B0(&qword_1008F6148, &qword_1008F6150);
      v52 = v213;
      _ConditionalContent<>.init(storage:)();
      sub_10000EA04(v140, &qword_1008F6150);
      v142(v207, v139);
      sub_10000EA04(v214, &qword_1008F61D0);
      v51 = v175;
    }

    sub_10001B104(v52, v51, &qword_1008F6110);
    swift_storeEnumTagMultiPayload();
    sub_10060FBF0();
    v217 = &type metadata for Spacer;
    v218 = &protocol witness table for Spacer;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_10000EA04(v52, &qword_1008F6110);
  }
}

double sub_10060DDE4@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a3;
  v61 = a2;
  v62 = a1;
  v71 = a4;
  ItemsList = type metadata accessor for LoadItemsList();
  v6 = ItemsList - 8;
  v70 = *(ItemsList - 8);
  v69 = *(v70 + 64);
  __chkstk_darwin(ItemsList);
  v68 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessibilityTraits();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for AccessibilityChildBehavior();
  v11 = *(v58 - 8);
  __chkstk_darwin(v58);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivitySummaryItemView();
  __chkstk_darwin(v14);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100140278(&qword_1008F6320);
  v17 = *(v57 - 8);
  __chkstk_darwin(v57);
  v19 = &v56 - v18;
  v59 = sub_100140278(&qword_1008F62E0);
  __chkstk_darwin(v59);
  v21 = &v56 - v20;
  v22 = sub_100140278(&qword_1008F62D8);
  v23 = *(v22 - 8);
  v66 = v22;
  v67 = v23;
  __chkstk_darwin(v22);
  v63 = &v56 - v24;
  v25 = *(a3 + *(v6 + 56));
  v26 = *(v14 + 24);
  v27 = type metadata accessor for DayIndex();
  (*(*(v27 - 8) + 16))(&v16[v26], v62, v27);
  v28 = v61;
  *v16 = v61;
  *(v16 + 1) = v25;
  v62 = v28;
  v29 = v25;
  static AccessibilityChildBehavior.combine.getter();
  v30 = sub_100080000(&qword_1008F6310, type metadata accessor for ActivitySummaryItemView);
  View.accessibilityElement(children:)();
  (*(v11 + 8))(v13, v58);
  sub_100610D18(v16);
  static AccessibilityTraits.isButton.getter();
  v72 = v14;
  v73 = v30;
  swift_getOpaqueTypeConformance2();
  v31 = v57;
  View.accessibility(addTraits:)();
  (*(v64 + 8))(v10, v65);
  (*(v17 + 8))(v19, v31);
  v32 = sub_100046170();
  v33 = Color.init(uiColor:)();
  LOBYTE(v16) = static Edge.Set.all.getter();
  v34 = &v21[*(sub_100140278(&qword_1008F62F8) + 36)];
  *v34 = v33;
  v34[8] = v16;
  v35 = v59;
  v36 = &v21[*(v59 + 36)];
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  v45 = v68;
  sub_10060FE48(v60, v68);
  v46 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v47 = (v69 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_10060FEAC(v45, v48 + v46);
  *(v48 + v47) = v28;
  v49 = sub_100610A8C();
  v50 = v62;
  v51 = v63;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v21, &qword_1008F62E0);
  static VerticalEdge.Set.all.getter();
  v72 = v35;
  v73 = v49;
  swift_getOpaqueTypeConformance2();
  v52 = v71;
  v53 = v66;
  View.listRowSeparator(_:edges:)();
  (*(v67 + 8))(v51, v53);
  v54 = v52 + *(sub_100140278(&qword_1008F62B8) + 36);
  result = 5.0;
  *v54 = xmmword_100700670;
  *(v54 + 16) = xmmword_100700670;
  *(v54 + 32) = 0;
  return result;
}

void sub_10060E4A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100140278(&unk_1008F73A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v12 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48))
  {
    if (a2)
    {
      sub_1002651F0(v6);
      if ((*(v8 + 48))(v6, 1, v7) != 1)
      {
        (*(v8 + 32))(v11, v6, v7);
LABEL_8:

        (*(v8 + 8))(v11, v7);
        return;
      }
    }

    else
    {
      (*(v8 + 56))(v6, 1, 1, v7, v9);
    }

    Date.init()();
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_10000EA04(v6, &unk_1008F73A0);
    }

    goto LABEL_8;
  }
}

double sub_10060E6A4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a1;
  v76 = a3;
  ItemsList = type metadata accessor for LoadItemsList();
  v75 = *(ItemsList - 8);
  v74 = *(v75 + 64);
  __chkstk_darwin(ItemsList - 8);
  v73 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AccessibilityTraits();
  v71 = *(v7 - 8);
  v72 = v7;
  __chkstk_darwin(v7);
  v70 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for AccessibilityChildBehavior();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100140278(&unk_1008EE8E0);
  __chkstk_darwin(v58);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v57 - v13;
  v15 = sub_100140278(&qword_1008F6208);
  __chkstk_darwin(v15);
  v17 = &v57 - v16;
  v61 = sub_100140278(&qword_1008F6328);
  v63 = *(v61 - 8);
  __chkstk_darwin(v61);
  v19 = &v57 - v18;
  v66 = sub_100140278(&qword_1008F61F8);
  __chkstk_darwin(v66);
  v59 = &v57 - v20;
  v21 = sub_100140278(&qword_1008F61F0);
  v22 = *(v21 - 8);
  v68 = v21;
  v69 = v22;
  __chkstk_darwin(v21);
  v62 = &v57 - v23;
  sub_100007C5C(a1, v17);
  v57 = a2;
  v24 = *a2;
  v26 = *(a2 + 16);
  v25 = *(a2 + 24);
  v27 = type metadata accessor for AttributedString();
  (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
  *(v17 + 5) = v24;
  *(v17 + 6) = v26;
  *(v17 + 7) = v25;
  type metadata accessor for BalanceDataProvider();
  sub_100080000(&qword_1008DCD90, type metadata accessor for BalanceDataProvider);
  v28 = v24;
  v29 = v26;
  v30 = v25;
  *(v17 + 8) = Environment.init<A>(_:)();
  v17[72] = v31 & 1;
  type metadata accessor for LoadHistoryItemView();
  sub_10001B104(v14, v11, &unk_1008EE8E0);
  State.init(wrappedValue:)();
  sub_10000EA04(v14, &unk_1008EE8E0);
  v32 = &v17[*(v15 + 36)];
  v33 = *(type metadata accessor for RoundedRectangle() + 20);
  v34 = enum case for RoundedCornerStyle.continuous(_:);
  v35 = type metadata accessor for RoundedCornerStyle();
  (*(*(v35 - 8) + 104))(&v32[v33], v34, v35);
  __asm { FMOV            V0.2D, #16.0 }

  *v32 = _Q0;
  *&v32[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  v41 = v64;
  static AccessibilityChildBehavior.combine.getter();
  v42 = sub_1006101C0();
  View.accessibilityElement(children:)();
  (*(v65 + 8))(v41, v67);
  sub_10000EA04(v17, &qword_1008F6208);
  v43 = v70;
  static AccessibilityTraits.isButton.getter();
  *&v77[0] = v15;
  *(&v77[0] + 1) = v42;
  swift_getOpaqueTypeConformance2();
  v44 = v59;
  v45 = v61;
  View.accessibility(addTraits:)();
  (*(v71 + 8))(v43, v72);
  (*(v63 + 8))(v19, v45);
  v46 = v73;
  sub_10060FE48(v57, v73);
  sub_100007C5C(v60, v77);
  v47 = (*(v75 + 80) + 16) & ~*(v75 + 80);
  v48 = (v74 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  sub_10060FEAC(v46, v49 + v47);
  sub_1001AB740(v77, v49 + v48);
  v50 = sub_1006100C8();
  v51 = v62;
  v52 = v66;
  View.onTapGesture(count:perform:)();

  sub_10000EA04(v44, &qword_1008F61F8);
  static VerticalEdge.Set.all.getter();
  *&v77[0] = v52;
  *(&v77[0] + 1) = v50;
  swift_getOpaqueTypeConformance2();
  v53 = v76;
  v54 = v68;
  View.listRowSeparator(_:edges:)();
  (*(v69 + 8))(v51, v54);
  v55 = v53 + *(sub_100140278(&qword_1008F61D8) + 36);
  result = 5.0;
  *v55 = xmmword_100700670;
  *(v55 + 16) = xmmword_100700670;
  *(v55 + 32) = 0;
  return result;
}

double sub_10060EE8C@<D0>(uint64_t a1@<X8>)
{
  v2 = static VerticalAlignment.center.getter();
  sub_10060EFCC(v13);
  *&v4[7] = v13[0];
  *&v4[23] = v13[1];
  *&v4[39] = v14[0];
  *&v4[51] = *(v14 + 12);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v5[52] = v9;
  *&v5[68] = v10;
  *&v5[84] = v11;
  *&v5[100] = v12;
  *&v5[4] = v6;
  *&v5[20] = v7;
  *&v5[36] = v8;
  *(a1 + 33) = *&v4[16];
  *(a1 + 49) = *&v4[32];
  *(a1 + 65) = *&v4[48];
  *(a1 + 17) = *v4;
  *(a1 + 148) = *&v5[64];
  *(a1 + 164) = *&v5[80];
  *(a1 + 180) = *&v5[96];
  *(a1 + 84) = *v5;
  *(a1 + 100) = *&v5[16];
  result = *&v5[32];
  *(a1 + 116) = *&v5[32];
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v4[63];
  *(a1 + 196) = HIDWORD(v12);
  *(a1 + 132) = *&v5[48];
  return result;
}

uint64_t sub_10060EFCC@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.body.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  sub_10004642C(v2, v4, v6 & 1);

  v14 = Image.init(systemName:)();
  v15 = static HierarchicalShapeStyle.secondary.getter();
  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v13;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v14;
  *(a1 + 56) = v15;
  sub_10006965C(v7, v9, v11 & 1);

  sub_10004642C(v7, v9, v11 & 1);
}

uint64_t sub_10060F140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_100140278(&qword_1008F6270) + 36);
  v5 = enum case for RoundedCornerStyle.continuous(_:);
  v6 = type metadata accessor for RoundedCornerStyle();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(sub_100140278(&qword_1008F6298) + 36)) = 256;
  return sub_10001B104(a1, a2, &qword_1008F6180);
}

uint64_t sub_10060F20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(sub_100140278(&qword_1008F6278) + 36));
  v5 = *(type metadata accessor for RoundedRectangle() + 20);
  v6 = enum case for RoundedCornerStyle.continuous(_:);
  v7 = type metadata accessor for RoundedCornerStyle();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #16.0 }

  *v4 = _Q0;
  *&v4[*(sub_100140278(&qword_1008DE1E0) + 36)] = 256;
  return sub_10001B104(a1, a2, &qword_1008F6180);
}

uint64_t sub_10060F2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100140278(&qword_1008DC0E0);
  v5 = *(v4 - 8);
  v36 = v4;
  v37 = v5;
  __chkstk_darwin(v4);
  v7 = &v34 - v6;
  v8 = sub_100140278(&qword_1008F6158);
  __chkstk_darwin(v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  DataType = type metadata accessor for TrainingLoadDataType();
  v15 = *(DataType - 8);
  __chkstk_darwin(DataType);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  ItemsList = type metadata accessor for LoadItemsList();
  (*(v15 + 16))(v17, a1 + *(ItemsList + 44), DataType);
  v19 = (*(v15 + 88))(v17, DataType);
  v20 = enum case for TrainingLoadDataType.allDay(_:);
  (*(v15 + 8))(v17, DataType);
  LocalizedStringKey.init(stringLiteral:)();
  v38 = Text.init(_:tableName:bundle:comment:)();
  v39 = v21;
  v40 = v22 & 1;
  v41 = v23;
  v42 = v19 != v20;
  _ConditionalContent<>.init(storage:)();
  v24 = v45;
  v25 = v43;
  v34 = v43;
  v35 = v44;
  v26 = *(&v43 + 1);
  v27 = v44;
  sub_10017A7AC(v43, *(&v43 + 1), v44);
  v28 = sub_10060B630();
  v29 = 1;
  v30 = v36;
  if (v28)
  {
    ProgressView<>.init<>()();
    (*(v37 + 32))(v13, v7, v30);
    v29 = 0;
  }

  (*(v37 + 56))(v13, v29, 1, v30);
  sub_10001B104(v13, v10, &qword_1008F6158);
  v31 = v35;
  *a2 = v34;
  *(a2 + 16) = v31;
  *(a2 + 32) = v24;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  v32 = sub_100140278(&qword_1008F6160);
  sub_10001B104(v10, a2 + *(v32 + 64), &qword_1008F6158);
  sub_10017A7AC(v25, v26, v27);
  sub_10017A8F0(v25, v26, v27);
  sub_10000EA04(v13, &qword_1008F6158);
  sub_10000EA04(v10, &qword_1008F6158);
  return sub_10017A8F0(v25, v26, v27);
}

uint64_t sub_10060F76C()
{
  v1 = v0;
  v2 = sub_100140278(&qword_1008F60C0);
  __chkstk_darwin(v2);
  v4 = &v13[-v3];
  v5 = sub_100140278(&qword_1008F60C8);
  __chkstk_darwin(v5);
  v7 = &v13[-v6];
  v14 = v1;
  *v4 = static VerticalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v8 = sub_100140278(&qword_1008F60D0);
  sub_10060F2F4(v1, &v4[*(v8 + 44)]);
  v9 = static Font.title2.getter();
  KeyPath = swift_getKeyPath();
  v11 = &v4[*(v2 + 36)];
  *v11 = KeyPath;
  v11[1] = v9;
  static Font.Weight.bold.getter();
  sub_10060F95C();
  View.fontWeight(_:)();
  sub_10000EA04(v4, &qword_1008F60C0);
  *&v7[*(v5 + 36)] = static Color.white.getter();
  sub_100140278(&qword_1008F60F0);
  sub_10060FA40();
  sub_10060FB34();
  return Section<>.init(header:content:)();
}

unint64_t sub_10060F95C()
{
  result = qword_1008F60D8;
  if (!qword_1008F60D8)
  {
    sub_100141EEC(&qword_1008F60C0);
    sub_10014A6B0(&qword_1008F60E0, &qword_1008F60E8);
    sub_10014A6B0(&qword_1008DC4C8, &qword_1008DC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F60D8);
  }

  return result;
}

unint64_t sub_10060FA40()
{
  result = qword_1008F60F8;
  if (!qword_1008F60F8)
  {
    sub_100141EEC(&qword_1008F60C8);
    sub_100141EEC(&qword_1008F60C0);
    sub_10060F95C();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E0740, &qword_1008E0748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F60F8);
  }

  return result;
}

unint64_t sub_10060FB34()
{
  result = qword_1008F6100;
  if (!qword_1008F6100)
  {
    sub_100141EEC(&qword_1008F60F0);
    sub_10060FBF0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6100);
  }

  return result;
}

unint64_t sub_10060FBF0()
{
  result = qword_1008F6108;
  if (!qword_1008F6108)
  {
    sub_100141EEC(&qword_1008F6110);
    sub_10060FCA8();
    sub_10014A6B0(&qword_1008F6148, &qword_1008F6150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6108);
  }

  return result;
}

unint64_t sub_10060FCA8()
{
  result = qword_1008F6118;
  if (!qword_1008F6118)
  {
    sub_100141EEC(&qword_1008F6120);
    sub_10060FD60();
    sub_10014A6B0(&qword_1008F6138, &qword_1008F6140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6118);
  }

  return result;
}

unint64_t sub_10060FD60()
{
  result = qword_1008F6128;
  if (!qword_1008F6128)
  {
    sub_100141EEC(&qword_1008F6130);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6128);
  }

  return result;
}

uint64_t sub_10060FE48(uint64_t a1, uint64_t a2)
{
  ItemsList = type metadata accessor for LoadItemsList();
  (*(*(ItemsList - 8) + 16))(a2, a1, ItemsList);
  return a2;
}

uint64_t sub_10060FEAC(uint64_t a1, uint64_t a2)
{
  ItemsList = type metadata accessor for LoadItemsList();
  (*(*(ItemsList - 8) + 32))(a2, a1, ItemsList);
  return a2;
}

double sub_10060FF10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LoadItemsList() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10060E6A4(a1, v6, a2);
}

unint64_t sub_10060FF90()
{
  result = qword_1008F61E8;
  if (!qword_1008F61E8)
  {
    sub_100141EEC(&qword_1008F61D8);
    sub_100141EEC(&qword_1008F61F0);
    sub_100141EEC(&qword_1008F61F8);
    sub_1006100C8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F61E8);
  }

  return result;
}

unint64_t sub_1006100C8()
{
  result = qword_1008F6200;
  if (!qword_1008F6200)
  {
    sub_100141EEC(&qword_1008F61F8);
    sub_100141EEC(&qword_1008F6208);
    sub_1006101C0();
    swift_getOpaqueTypeConformance2();
    sub_100080000(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6200);
  }

  return result;
}

unint64_t sub_1006101C0()
{
  result = qword_1008F6210;
  if (!qword_1008F6210)
  {
    sub_100141EEC(&qword_1008F6208);
    sub_100080000(&qword_1008F6218, type metadata accessor for LoadHistoryItemView);
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6210);
  }

  return result;
}

unint64_t sub_1006102A8()
{
  result = qword_1008F6220;
  if (!qword_1008F6220)
  {
    sub_100141EEC(&qword_1008F6198);
    sub_10060FF90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6220);
  }

  return result;
}

void sub_10061032C()
{
  v1 = *(type metadata accessor for LoadItemsList() - 8);
  if (*(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 48))
  {
    sub_10043BF28(1);
  }
}

unint64_t sub_100610394()
{
  result = qword_1008F6230;
  if (!qword_1008F6230)
  {
    sub_100141EEC(&qword_1008F6228);
    sub_10014A6B0(&qword_1008F6238, &qword_1008F6240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6230);
  }

  return result;
}

unint64_t sub_10061044C()
{
  result = qword_1008F6250;
  if (!qword_1008F6250)
  {
    sub_100141EEC(&qword_1008F6178);
    sub_1006104D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6250);
  }

  return result;
}

unint64_t sub_1006104D8()
{
  result = qword_1008F6258;
  if (!qword_1008F6258)
  {
    sub_100141EEC(&qword_1008F6248);
    sub_10014A6B0(&qword_1008F6260, &qword_1008F6268);
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6258);
  }

  return result;
}

unint64_t sub_1006105BC()
{
  result = qword_1008F6280;
  if (!qword_1008F6280)
  {
    sub_100141EEC(&qword_1008F6180);
    sub_100141EEC(&qword_1008F6178);
    type metadata accessor for PlainButtonStyle();
    sub_10061044C();
    sub_100080000(&qword_1008F0708, &type metadata accessor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6280);
  }

  return result;
}

unint64_t sub_100610700()
{
  result = qword_1008F6288;
  if (!qword_1008F6288)
  {
    sub_100141EEC(&qword_1008F6270);
    sub_1006105BC();
    sub_10014A6B0(&qword_1008F6290, &qword_1008F6298);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6288);
  }

  return result;
}

unint64_t sub_1006107B8()
{
  result = qword_1008F62A0;
  if (!qword_1008F62A0)
  {
    sub_100141EEC(&qword_1008F6278);
    sub_1006105BC();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F62A0);
  }

  return result;
}

double sub_100610870@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for LoadItemsList() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_10060DDE4(a1, a2, v8, a3);
}

uint64_t sub_1006108F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_100140278(&qword_1008DF220);
  return v3(a1, *(a1 + *(v4 + 48)));
}

unint64_t sub_100610954()
{
  result = qword_1008F62D0;
  if (!qword_1008F62D0)
  {
    sub_100141EEC(&qword_1008F62B8);
    sub_100141EEC(&qword_1008F62D8);
    sub_100141EEC(&qword_1008F62E0);
    sub_100610A8C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10014A6B0(&qword_1008DD570, &qword_1008DD578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F62D0);
  }

  return result;
}

unint64_t sub_100610A8C()
{
  result = qword_1008F62E8;
  if (!qword_1008F62E8)
  {
    sub_100141EEC(&qword_1008F62E0);
    sub_100610B44();
    sub_10014A6B0(&qword_1008E0760, &qword_1008DE1E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F62E8);
  }

  return result;
}

unint64_t sub_100610B44()
{
  result = qword_1008F62F0;
  if (!qword_1008F62F0)
  {
    sub_100141EEC(&qword_1008F62F8);
    sub_100610BFC();
    sub_10014A6B0(&qword_1008E0750, &qword_1008E0758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F62F0);
  }

  return result;
}

unint64_t sub_100610BFC()
{
  result = qword_1008F6300;
  if (!qword_1008F6300)
  {
    sub_100141EEC(&qword_1008F6308);
    type metadata accessor for ActivitySummaryItemView();
    sub_100080000(&qword_1008F6310, type metadata accessor for ActivitySummaryItemView);
    swift_getOpaqueTypeConformance2();
    sub_100080000(&qword_1008DCEF8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6300);
  }

  return result;
}

uint64_t sub_100610D18(uint64_t a1)
{
  v2 = type metadata accessor for ActivitySummaryItemView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100610D74()
{
  v1 = *(type metadata accessor for LoadItemsList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10060E4A4(v0 + v2, v3);
}

void sub_100610E00()
{
  v1 = *(type metadata accessor for LoadItemsList() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  if (*(v0 + v2 + 48))
  {
    sub_10043BBCC(v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  }
}

unint64_t sub_100610E94()
{
  result = qword_1008F6330;
  if (!qword_1008F6330)
  {
    sub_100141EEC(&qword_1008F6338);
    sub_10060FA40();
    sub_10060FB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1008F6330);
  }

  return result;
}

uint64_t sub_100610F3C(char a1, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    v5 = 1702260557;
    v6 = 0x65636E6174736944;
    v7 = 0x20676E696B6C6157;
    if (a1)
    {
      v7 = 0xD000000000000014;
    }

    if (a2 != 2)
    {
      v6 = v7;
    }

    v8 = 1819045714;
    if ((a1 & 1) == 0)
    {
      v8 = 0x646E617453;
    }

    if (!a2)
    {
      v5 = v8;
    }

    if (a2 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      return 0x78614D20324F56;
    }

    else
    {
      return 0x6573696372657845;
    }
  }

  else
  {
    v2 = 0x694D20646E617453;
    if (a1)
    {
      v2 = 0x6E696D206C6C6F52;
    }

    v3 = 0x20676E696E6E7552;
    if (a1)
    {
      v3 = 0xD000000000000013;
    }

    if (a2 != 7)
    {
      v3 = 0x2073746867696C46;
    }

    if (a2 == 6)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

unint64_t sub_1006110F8(unsigned __int8 a1, uint64_t a2, char a3)
{
  sub_100140278(&qword_1008EB598);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006D1F70;
  strcpy((inited + 32), "arrowDirection");
  *(inited + 47) = -18;
  v6 = String._bridgeToObjectiveC()();

  *(inited + 48) = v6;
  *(inited + 56) = 0x63697274656DLL;
  *(inited + 64) = 0xE600000000000000;
  sub_100610F3C(a3 & 1, a1);
  v7 = String._bridgeToObjectiveC()();

  *(inited + 72) = v7;
  v8 = sub_1004C9668(inited);
  swift_setDeallocating();
  sub_100140278(&unk_1008EB5A0);
  swift_arrayDestroy();
  return v8;
}

uint64_t sub_100611254(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  sub_10000B210(a2);
  result = sub_1000245E0(v6);
  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1006112B4()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CatalogTipActivityTileDataModel.State()
{
  result = qword_1008F6478;
  if (!qword_1008F6478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100611394()
{
  sub_100611418();
  if (v0 <= 0x3F)
  {
    sub_1002FC49C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100611418()
{
  if (!qword_1008DDD28)
  {
    sub_100141EEC(&qword_1008DDD30);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1008DDD28);
    }
  }
}

void *sub_100611488(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CatalogTipActivityTileDataModel.State();
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 0;
  *(v6 + 1) = 0;
  v8 = *(v7 + 28);
  v9 = type metadata accessor for CatalogTipSection();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  sub_100140278(&qword_1008F64B0);
  v10 = swift_allocObject();
  *(v10 + ((*(*v10 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1006119B8(v6, v10 + *(*v10 + class metadata base offset for ManagedBuffer + 16));
  v2[3] = a1;
  v2[4] = v10;
  type metadata accessor for CatalogTipDataProvider();
  swift_allocObject();
  swift_retain_n();
  v2[2] = CatalogTipDataProvider.init(dependencies:)();
  sub_100611A1C();

  dispatch thunk of CatalogTipDataProvider.delegate.setter();

  dispatch thunk of CatalogTipDataProvider.activate()();

  return v2;
}

void sub_10061166C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100140278(&qword_1008EC4E8);
  __chkstk_darwin(v5 - 8);
  v7 = &v23[-v6];
  v8 = sub_100140278(&qword_1008EC4F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v23[-v9];
  v11 = sub_100140278(&qword_1008E4E80);
  __chkstk_darwin(v11 - 8);
  v13 = &v23[-v12];
  sub_10001B104(a1, v10, &qword_1008EC4F0);
  sub_10001B104(a2, v7, &qword_1008EC4E8);
  v14 = *(v2 + 24);

  sub_1003F53A0(v10, v7, v14, v13);
  v15 = *(v2 + 32);
  v24 = v13;
  v16 = (v15 + *(*v15 + class metadata base offset for ManagedBuffer + 16));
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  sub_1006118FC(v16);
  os_unfair_lock_unlock((v15 + v17));
  sub_100073798(v13);
  os_unfair_lock_lock((v15 + v17));
  v18 = *v16;
  v19 = v16[1];
  if (*v16)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    v21 = sub_10007BD68;
  }

  else
  {
    v21 = 0;
  }

  sub_10000B210(v18);
  os_unfair_lock_unlock((v15 + v17));
  if (v18)
  {

    (v21)(v22);
    sub_1000245E0(v21);
    sub_1000245E0(v21);
  }
}