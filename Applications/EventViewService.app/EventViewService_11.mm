uint64_t sub_10015AAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10015AB48()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10015AB84(uint64_t *a1, int a2)
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

uint64_t sub_10015ABCC(uint64_t result, int a2, int a3)
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

uint64_t sub_10015AC68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v30 = a1;
  v31 = a7;
  v25 = a6;
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  v36 = sub_1000E6518();
  WitnessTable = swift_getWitnessTable();
  v26 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  v24[1] = swift_getWitnessTable();
  v24[2] = type metadata accessor for _BackgroundModifier();
  v8 = type metadata accessor for ModifiedContent();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  v15 = swift_allocObject();
  v16 = v25;
  v15[2] = a5;
  v15[3] = v16;
  v17 = v28;
  v15[4] = v27;
  v15[5] = v17;
  v15[6] = v29;

  v34 = GeometryReader.init(content:)();
  v35 = v18;
  static Alignment.center.getter();
  v19 = swift_getWitnessTable();
  View.background<A>(_:alignment:)();

  v20 = swift_getWitnessTable();
  v32 = v19;
  v33 = v20;
  v21 = swift_getWitnessTable();
  sub_1000EE87C(v12, v8, v21);
  v22 = *(v9 + 8);
  v22(v12, v8);
  sub_1000EE87C(v14, v8, v21);
  return (v22)(v14, v8);
}

uint64_t sub_10015AFC4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v24[4] = a3;
  v26 = a1;
  v27 = a6;
  v24[1] = a4;
  v24[2] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v24[0] = sub_10000460C(&qword_1002267C8);
  v24[3] = type metadata accessor for _PreferenceWritingModifier();
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v24 - v15;
  v17 = static Color.clear.getter();
  KeyPath = swift_getKeyPath();
  v31 = v17;
  v18 = GeometryProxy.safeAreaInsets.getter();
  a2(v18);
  v19 = sub_1000E6518();
  View.preference<A>(key:value:)();
  (*(v7 + 8))(v9, AssociatedTypeWitness);

  WitnessTable = swift_getWitnessTable();
  v28 = v19;
  v29 = WitnessTable;
  v21 = swift_getWitnessTable();
  sub_1000EE87C(v14, v10, v21);
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_1000EE87C(v16, v10, v21);
  return (v22)(v16, v10);
}

uint64_t sub_10015B2AC()
{

  return swift_deallocObject();
}

uint64_t sub_10015B2FC()
{
  type metadata accessor for SafeAreaModifier();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000460C(&qword_1002267C8);
  type metadata accessor for _PreferenceWritingModifier();
  type metadata accessor for ModifiedContent();
  sub_1000E6518();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for GeometryReader();
  swift_getWitnessTable();
  type metadata accessor for _BackgroundModifier();
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

Class sub_10015B4A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100007C60();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

void sub_10015B530(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = a3;
  if (*(a4 + 72))
  {
    v9 = *(a4 + 64);
    v10 = *(a4 + 72);
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_1001894F4(1, 3, 1, inited);
  v17 = &type metadata for AnalyticsString;
  v18 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v9;
  v16 = v10;
  v11[2] = 3;
  sub_10002FF68(&aBlock, (v11 + 14));
  v12 = String._bridgeToObjectiveC()();
  v13 = swift_allocObject();
  v13[2] = 0xD00000000000001CLL;
  v13[3] = 0x80000001001C84E0;
  v13[4] = v11;
  v18 = sub_10015B784;
  v19 = v13;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v16 = sub_10015B4A4;
  v17 = &unk_100219378;
  v14 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v14);
}

uint64_t sub_10015B744()
{

  return swift_deallocObject();
}

uint64_t sub_10015B7A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10015B7BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = a1 + 32;
  v3 = &_swiftEmptyDictionarySingleton;
  while (1)
  {
    sub_10002FF80(v2, v37);
    v7 = v38;
    v8 = v39;
    sub_10001BED0(v37, v38);
    v9 = (*(v8 + 16))(v7, v8);
    if (v9 <= 1)
    {
      if (v9)
      {
        v11 = 0xE800000000000000;
        v10 = 0x4449656C646E7562;
        if (!v3[2])
        {
LABEL_19:

          goto LABEL_20;
        }
      }

      else
      {
        v11 = 0xE200000000000000;
        v10 = 25705;
        if (!v3[2])
        {
          goto LABEL_19;
        }
      }
    }

    else if (v9 == 2)
    {
      v11 = 0xE800000000000000;
      v10 = 0x656D614E65676170;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else if (v9 == 3)
    {
      v10 = 0x614E656C75646F6DLL;
      v11 = 0xEA0000000000656DLL;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0x6341656C75646F6DLL;
      v11 = 0xEC0000006E6F6974;
      if (!v3[2])
      {
        goto LABEL_19;
      }
    }

    sub_10005846C(v10, v11);
    v13 = v12;

    if (v13)
    {
      goto LABEL_4;
    }

LABEL_20:
    v14 = v38;
    v15 = v39;
    sub_10001BED0(v37, v38);
    v16 = (*(v15 + 16))(v14, v15);
    if (v16 <= 1)
    {
      v17 = v16 ? 0x4449656C646E7562 : 25705;
      v18 = v16 ? 0xE800000000000000 : 0xE200000000000000;
    }

    else if (v16 == 2)
    {
      v18 = 0xE800000000000000;
      v17 = 0x656D614E65676170;
    }

    else if (v16 == 3)
    {
      v17 = 0x614E656C75646F6DLL;
      v18 = 0xEA0000000000656DLL;
    }

    else
    {
      v17 = 0x6341656C75646F6DLL;
      v18 = 0xEC0000006E6F6974;
    }

    v19 = v38;
    v20 = v39;
    sub_10001BED0(v37, v38);
    v21 = (*(v20 + 32))(v19, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v23 = sub_10005846C(v17, v18);
    v25 = v3[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v3[3] < v28)
    {
      sub_1001A92DC(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_10005846C(v17, v18);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_46;
      }

LABEL_37:
      if (v29)
      {
        goto LABEL_3;
      }

      goto LABEL_38;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_37;
    }

    v34 = v23;
    sub_1001A99F4();
    v23 = v34;
    if (v29)
    {
LABEL_3:
      v4 = v23;

      v3 = v36;
      v5 = v36[7];
      v6 = *(v5 + 8 * v4);
      *(v5 + 8 * v4) = v21;

      goto LABEL_4;
    }

LABEL_38:
    v3 = v36;
    v36[(v23 >> 6) + 8] |= 1 << v23;
    v31 = (v36[6] + 16 * v23);
    *v31 = v17;
    v31[1] = v18;
    *(v36[7] + 8 * v23) = v21;
    v32 = v36[2];
    v27 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v27)
    {
      goto LABEL_45;
    }

    v36[2] = v33;
LABEL_4:
    sub_100012A7C(v37);
    v2 += 40;
    if (!--v1)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

__n128 sub_10015BB5C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10015BB80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10015BBC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10015BC48()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (v5)
  {
    if (*(v5 + 88) && *(v5 + 80) == 1)
    {
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v6 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v7 = [objc_opt_self() currentDevice];
    v8 = [v7 userInterfaceIdiom];

    if (v8 == 1)
    {
      v15 = *(v0 + 64);
      v9 = *(v0 + 56);
      v14 = v9;
      if (v15 != 1)
      {

        static os_log_type_t.fault.getter();
        v10 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000050C4(&v14, &qword_10022A5D8);
        (*(v2 + 8))(v4, v1);
        LOBYTE(v9) = v13[15];
      }

      v11 = v9 ^ 1;
      return v11 & 1;
    }

LABEL_11:
    v11 = 0;
    return v11 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10015ED88(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10015BED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ScrollViewProxy();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  static Axis.Set.horizontal.getter();
  v16 = a2;
  sub_1000024C4(&qword_10022A580);
  sub_10015C7E0();
  ScrollView.init(_:showsIndicators:content:)();
  (*(v7 + 16))(&v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v9 = (*(v7 + 80) + 81) & ~*(v7 + 80);
  v10 = swift_allocObject();
  v11 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a2 + 64);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  (*(v7 + 32))(v10 + v9, &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v13 = (a3 + *(sub_1000024C4(&qword_10022A5A0) + 36));
  *v13 = sub_10015C988;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  return sub_10010A470(a2, v17);
}

uint64_t sub_10015C0AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_1000024C4(&qword_10022A598);
  __chkstk_darwin(v3 - 8);
  v5 = v21 - v4;
  *v5 = static VerticalAlignment.center.getter();
  *(v5 + 1) = 0x4020000000000000;
  v5[16] = 0;
  v21[1] = *(sub_1000024C4(&qword_10022A5A8) + 44);
  v24 = *a1;
  v25 = v24;
  swift_getKeyPath();
  v6 = swift_allocObject();
  v7 = *(a1 + 48);
  *(v6 + 48) = *(a1 + 32);
  *(v6 + 64) = v7;
  *(v6 + 80) = *(a1 + 64);
  v8 = *(a1 + 16);
  *(v6 + 16) = *a1;
  *(v6 + 32) = v8;
  sub_10000BEB8(&v25, v23, &qword_10022A5B0);
  sub_10010A470(a1, v23);
  sub_1000024C4(&qword_10022A5B0);
  sub_1000024C4(&qword_10022A5B8);
  sub_10000BFFC(&qword_10022A5C0, &qword_10022A5B0);
  sub_10015E190();
  sub_10000BFFC(&qword_10022A5D0, &qword_10022A5B8);
  ForEach<>.init(_:id:content:)();
  v9 = static Edge.Set.horizontal.getter();
  sub_10015BC48();
  EdgeInsets.init(_all:)();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v22;
  sub_10001AE00(v5, v22, &qword_10022A598);
  result = sub_1000024C4(&qword_10022A580);
  v20 = v18 + *(result + 36);
  *v20 = v9;
  *(v20 + 8) = v11;
  *(v20 + 16) = v13;
  *(v20 + 24) = v15;
  *(v20 + 32) = v17;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_10015C348@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for TabButton();
  __chkstk_darwin(v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_1000024C4(&qword_10022A5B8);
  __chkstk_darwin(v9);
  v11 = &v25[-v10 - 8];
  v12 = *a1;
  v13 = a1[1];
  v14 = *(a2 + 16);
  if (v14 == 1)
  {
    if (v13 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (!v14)
  {
    if (!v13)
    {
LABEL_11:
      v15 = 1;
      goto LABEL_12;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_12;
  }

  if (v13 < 2)
  {
    goto LABEL_8;
  }

  if (*(a2 + 8) == v12 && v14 == v13)
  {
    goto LABEL_11;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_12:
  v16 = swift_allocObject();
  v17 = *(a2 + 48);
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = v17;
  *(v16 + 80) = *(a2 + 64);
  v18 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v18;
  *(v16 + 88) = v12;
  *(v16 + 96) = v13;
  *v8 = v12;
  *(v8 + 1) = v13;
  v8[16] = v15 & 1;
  *(v8 + 3) = sub_10015E2A4;
  *(v8 + 4) = v16;
  v19 = *(v6 + 28);
  *&v8[v19] = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  swift_storeEnumTagMultiPayload();
  if (v13)
  {
    if (v13 == 1)
    {
      v20 = 0xEF6E6F697461636FLL;
      v21 = 0x4C746E6572727563;
    }

    else
    {
      v21 = v12;
      v20 = v13;
    }
  }

  else
  {
    v20 = 0xE300000000000000;
    v21 = 7105633;
  }

  sub_10015E2D8(v8, v11);
  v22 = &v11[*(v9 + 52)];
  *v22 = v21;
  v22[1] = v20;
  sub_10001AE00(v11, a3, &qword_10022A5B8);
  sub_1000088D0(v12, v13);
  sub_1000088D0(v12, v13);
  sub_1000088D0(v12, v13);
  return sub_10010A470(a2, v25);
}

uint64_t sub_10015C5D4(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = *a1;

    v4 = sub_1001AC180(v3, v2);
    v6 = v5;

    if (v6 != 2)
    {
      (*(a1 + 24))(v4, v6);
      if (v6)
      {
        if (v6 == 1)
        {
          sub_10015E114(v4, 1uLL);
        }
      }

      else
      {
        sub_10015E114(v4, 0);
      }

      static UnitPoint.trailing.getter();
      ScrollViewProxy.scrollTo<A>(_:anchor:)();
    }
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10015ED88(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10015C740@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v3;
  v11 = *(v1 + 64);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = *(v1 + 48);
  *(v5 + 48) = *(v1 + 32);
  *(v5 + 64) = v6;
  *(v5 + 80) = *(v1 + 64);
  v7 = *(v1 + 16);
  *(v5 + 16) = *v1;
  *(v5 + 32) = v7;
  *a1 = sub_10015C7D0;
  a1[1] = v5;
  return sub_10010A470(v10, v9);
}

unint64_t sub_10015C7E0()
{
  result = qword_10022A588;
  if (!qword_10022A588)
  {
    sub_10000460C(&qword_10022A580);
    sub_10000BFFC(&qword_10022A590, &qword_10022A598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A588);
  }

  return result;
}

uint64_t sub_10015C898()
{
  v1 = type metadata accessor for ScrollViewProxy();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));
  (*(v2 + 8))(v0 + ((v3 + 81) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_10015C988()
{
  type metadata accessor for ScrollViewProxy();

  return sub_10015C5D4(v0 + 16);
}

void sub_10015C9EC()
{
  v0 = [objc_opt_self() mainBundle];
  v4._object = 0xE000000000000000;
  v1._object = 0x80000001001C8580;
  v1._countAndFlagsBits = 0xD00000000000001BLL;
  v2._countAndFlagsBits = 0;
  v2._object = 0xE000000000000000;
  v4._countAndFlagsBits = 0;
  v3 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, 0, v0, v2, v4);

  xmmword_10022A570 = v3;
}

uint64_t sub_10015CA90@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = sub_1000024C4(&qword_10022A688);
  __chkstk_darwin(v2);
  v4 = &v22 - v3;
  v23 = sub_1000024C4(&qword_10022A690);
  __chkstk_darwin(v23);
  v22 = &v22 - v5;
  v26 = sub_1000024C4(&qword_10022A698);
  __chkstk_darwin(v26);
  v7 = &v22 - v6;
  v8 = sub_1000024C4(&qword_10022A6A0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v25 = sub_1000024C4(&qword_10022A6A8);
  __chkstk_darwin(v25);
  v12 = &v22 - v11;
  v13 = sub_1000024C4(&qword_10022A6B0);
  __chkstk_darwin(v13);
  v15 = &v22 - v14;
  v24 = sub_1000024C4(&qword_10022A6B8);
  __chkstk_darwin(v24);
  v17 = &v22 - v16;
  v18 = v1[1];
  if (v18)
  {
    if (v18 == 1)
    {
      sub_10015D560(v4);
      sub_10015E98C();
      v19 = v22;
      View.accessibilityIdentifier(_:)();
      sub_1000050C4(v4, &qword_10022A688);
      sub_10000BEB8(v19, v10, &qword_10022A690);
      swift_storeEnumTagMultiPayload();
      sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &unk_1001C1CD0, sub_10015E5CC);
      sub_10015E8D8(&qword_10022A708, &qword_10022A690, &unk_1001C1CA8, sub_10015E98C);
      _ConditionalContent<>.init(storage:)();
      sub_10000BEB8(v12, v7, &qword_10022A6A8);
      swift_storeEnumTagMultiPayload();
      sub_10015E7F4();
      _ConditionalContent<>.init(storage:)();
      sub_1000050C4(v12, &qword_10022A6A8);
      return sub_1000050C4(v19, &qword_10022A690);
    }

    sub_10015D144(*v1, v18, v15);
    sub_10015E5CC();
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v15, &qword_10022A6B0);
    sub_10000BEB8(v17, v7, &qword_10022A6B8);
    swift_storeEnumTagMultiPayload();
    sub_10015E7F4();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &unk_1001C1CD0, sub_10015E5CC);
    _ConditionalContent<>.init(storage:)();
    v21 = v17;
  }

  else
  {
    if (qword_100220C28 != -1)
    {
      swift_once();
    }

    sub_10015D144(xmmword_10022A570, *(&xmmword_10022A570 + 1), v15);
    sub_10015E5CC();
    View.accessibilityIdentifier(_:)();
    sub_1000050C4(v15, &qword_10022A6B0);
    sub_10000BEB8(v17, v10, &qword_10022A6B8);
    swift_storeEnumTagMultiPayload();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &unk_1001C1CD0, sub_10015E5CC);
    sub_10015E8D8(&qword_10022A708, &qword_10022A690, &unk_1001C1CA8, sub_10015E98C);
    _ConditionalContent<>.init(storage:)();
    sub_10000BEB8(v12, v7, &qword_10022A6A8);
    swift_storeEnumTagMultiPayload();
    sub_10015E7F4();
    _ConditionalContent<>.init(storage:)();
    sub_1000050C4(v12, &qword_10022A6A8);
    v21 = v17;
  }

  return sub_1000050C4(v21, &qword_10022A6B8);
}

uint64_t sub_10015D144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v41 = type metadata accessor for ColorScheme();
  v6 = *(v41 - 8);
  v7 = __chkstk_darwin(v41);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_1000024C4(&qword_10022A6E0);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v15 = &v41 - v14;
  v42 = sub_1000024C4(&qword_10022A6D0);
  __chkstk_darwin(v42);
  v43 = &v41 - v16;
  v45 = a1;
  v46 = a2;
  v47 = v3;

  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  Button.init(action:label:)();
  LOBYTE(a1) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v17 = &v15[*(v13 + 44)];
  *v17 = a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = v19;
  *(v17 + 3) = v20;
  *(v17 + 4) = v21;
  v17[40] = 0;
  if (*(v3 + 16) == 1)
  {
    v22 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton();
    sub_100039EE0(v11);
    v23 = v41;
    (*(v6 + 104))(v9, enum case for ColorScheme.light(_:), v41);
    v24 = static ColorScheme.== infix(_:_:)();
    v25 = *(v6 + 8);
    v25(v9, v23);
    v25(v11, v23);
    v26 = objc_opt_self();
    if (v24)
    {
      v27 = [v26 systemGray6Color];
    }

    else
    {
      v27 = [v26 systemGray5Color];
    }

    v28 = v27;
    v22 = Color.init(uiColor:)();
  }

  v29 = v22;
  v30 = v43;
  v31 = static Edge.Set.all.getter();
  sub_10001AE00(v15, v30, &qword_10022A6E0);
  v32 = v30 + *(v42 + 36);
  *v32 = v29;
  *(v32 + 8) = v31;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v33 = qword_1002390E0;
  v34 = sub_1000024C4(&qword_10022A6B0);
  v35 = v44;
  v36 = (v44 + *(v34 + 36));
  v37 = *(type metadata accessor for RoundedRectangle() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = type metadata accessor for RoundedCornerStyle();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = v33;
  v36[1] = v33;
  *(v36 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  return sub_10001AE00(v30, v35, &qword_10022A6D0);
}

uint64_t sub_10015D560@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v88 = type metadata accessor for AccessibilityTraits();
  v86 = *(v88 - 8);
  __chkstk_darwin(v88);
  v85 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ColorScheme();
  v68 = *(v69 - 8);
  v3 = __chkstk_darwin(v69);
  v67 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v66 = &v66 - v5;
  v6 = type metadata accessor for TitleAndIconLabelStyle();
  v7 = *(v6 - 8);
  v78 = v6;
  v79 = v7;
  __chkstk_darwin(v6);
  v76 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SymbolVariants();
  v74 = *(v9 - 8);
  v75 = v9;
  __chkstk_darwin(v9);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000024C4(&qword_10022A770);
  __chkstk_darwin(v12 - 8);
  v14 = &v66 - v13;
  v15 = type metadata accessor for LocationButton();
  v71 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000024C4(&qword_10022A758);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v22 = sub_1000024C4(&qword_10022A750);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v70 = &v66 - v24;
  v77 = sub_1000024C4(&qword_10022A740);
  __chkstk_darwin(v77);
  v81 = &v66 - v25;
  v80 = sub_1000024C4(&qword_10022A730);
  __chkstk_darwin(v80);
  v82 = &v66 - v26;
  v83 = sub_1000024C4(&qword_10022A720);
  __chkstk_darwin(v83);
  v84 = &v66 - v27;
  static LocationButton.Title.currentLocation.getter();
  v28 = type metadata accessor for LocationButton.Title();
  (*(*(v28 - 8) + 56))(v14, 0, 1, v28);

  LocationButton.init(_:action:)();
  static SymbolVariants.fill.getter();
  v29 = sub_10015ED88(&qword_10022A760, &type metadata accessor for LocationButton);
  View.symbolVariant(_:)();
  (*(v74 + 8))(v11, v75);
  (*(v71 + 8))(v17, v15);
  v30 = v76;
  TitleAndIconLabelStyle.init()();
  v89 = v15;
  v90 = v29;
  swift_getOpaqueTypeConformance2();
  sub_10015ED88(&qword_10022A768, &type metadata accessor for TitleAndIconLabelStyle);
  v31 = v70;
  v32 = v72;
  v33 = v78;
  View.labelStyle<A>(_:)();
  (*(v79 + 8))(v30, v33);
  (*(v73 + 8))(v21, v32);
  v34 = static Font.footnote.getter();
  KeyPath = swift_getKeyPath();
  v36 = &v31[*(v23 + 44)];
  *v36 = KeyPath;
  v36[1] = v34;
  v37 = *(v1 + 16);
  if (v37 == 1)
  {
    if (qword_100220B88 != -1)
    {
      swift_once();
    }

    v38 = qword_1002390A8;
  }

  else
  {
    v38 = static Color.primary.getter();
  }

  v39 = v82;
  v40 = swift_getKeyPath();
  v41 = v31;
  v42 = v81;
  sub_10001AE00(v41, v81, &qword_10022A750);
  v43 = (v42 + *(v77 + 36));
  *v43 = v40;
  v43[1] = v38;
  if (v37)
  {
    v44 = static Color.primary.getter();
  }

  else
  {
    type metadata accessor for TabButton();
    v45 = v66;
    sub_100039EE0(v66);
    v46 = v68;
    v47 = v67;
    v48 = v69;
    (*(v68 + 104))(v67, enum case for ColorScheme.light(_:), v69);
    v49 = static ColorScheme.== infix(_:_:)();
    v50 = *(v46 + 8);
    v50(v47, v48);
    v50(v45, v48);
    v51 = objc_opt_self();
    if (v49)
    {
      v52 = [v51 systemGray6Color];
    }

    else
    {
      v52 = [v51 systemGray5Color];
    }

    v53 = v52;
    v44 = Color.init(uiColor:)();
  }

  v54 = v44;
  v55 = swift_getKeyPath();
  v89 = v54;
  v56 = AnyShapeStyle.init<A>(_:)();
  sub_10001AE00(v42, v39, &qword_10022A740);
  v57 = (v39 + *(v80 + 36));
  *v57 = v55;
  v57[1] = v56;
  if (qword_100220BC8 != -1)
  {
    swift_once();
  }

  v58 = qword_1002390E0;
  v59 = v84;
  v60 = &v84[*(v83 + 36)];
  v61 = *(type metadata accessor for RoundedRectangle() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = type metadata accessor for RoundedCornerStyle();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  *v60 = v58;
  v60[1] = v58;
  *(v60 + *(sub_1000024C4(&qword_100221C80) + 36)) = 256;
  sub_10001AE00(v39, v59, &qword_10022A730);
  v64 = v85;
  static AccessibilityTraits.isButton.getter();
  sub_10015E9BC();
  View.accessibility(addTraits:)();
  (*(v86 + 8))(v64, v88);
  return sub_1000050C4(v59, &qword_10022A720);
}

double sub_10015DF6C@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10001877C();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.footnote.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_100017398(v3, v5, v7 & 1);

  if (*(a1 + 16) == 1)
  {
    v13 = [objc_opt_self() systemBackgroundColor];
    Color.init(uiColor:)();
  }

  else
  {
    static Color.primary.getter();
  }

  v14 = Text.foregroundStyle<A>(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_100017398(v8, v10, v12 & 1);

  v21 = static Edge.Set.horizontal.getter();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  result = 0.0;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 1;
  return result;
}

uint64_t sub_10015E114(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_10004921C(a1, a2);
  }

  return a1;
}

uint64_t sub_10015E124()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));

  return swift_deallocObject();
}

unint64_t sub_10015E190()
{
  result = qword_10022A5C8;
  if (!qword_10022A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A5C8);
  }

  return result;
}

uint64_t type metadata accessor for TabButton()
{
  result = qword_10022A638;
  if (!qword_10022A638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10015E230()
{

  if (*(v0 + 32) >= 2uLL)
  {
  }

  sub_10001BC5C(*(v0 + 72), *(v0 + 80));
  if (*(v0 + 96) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10015E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TabButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10015E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000024C4(&qword_100221B80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015E420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000024C4(&qword_100221B80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10015E4D0()
{
  sub_100023D44();
  if (v0 <= 0x3F)
  {
    sub_10001B7F8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_10015E5CC()
{
  result = qword_10022A6C0;
  if (!qword_10022A6C0)
  {
    sub_10000460C(&qword_10022A6B0);
    sub_10015E684();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6C0);
  }

  return result;
}

unint64_t sub_10015E684()
{
  result = qword_10022A6C8;
  if (!qword_10022A6C8)
  {
    sub_10000460C(&qword_10022A6D0);
    sub_10015E73C();
    sub_10000BFFC(&qword_100221D50, &qword_100221D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6C8);
  }

  return result;
}

unint64_t sub_10015E73C()
{
  result = qword_10022A6D8;
  if (!qword_10022A6D8)
  {
    sub_10000460C(&qword_10022A6E0);
    sub_10000BFFC(&qword_10022A6E8, &qword_10022A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6D8);
  }

  return result;
}

unint64_t sub_10015E7F4()
{
  result = qword_10022A6F8;
  if (!qword_10022A6F8)
  {
    sub_10000460C(&qword_10022A6A8);
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &unk_1001C1CD0, sub_10015E5CC);
    sub_10015E8D8(&qword_10022A708, &qword_10022A690, &unk_1001C1CA8, sub_10015E98C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A6F8);
  }

  return result;
}

uint64_t sub_10015E8D8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10015ED88(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10015E9BC()
{
  result = qword_10022A718;
  if (!qword_10022A718)
  {
    sub_10000460C(&qword_10022A720);
    sub_10015EA74();
    sub_10000BFFC(&qword_100221D60, &qword_100221C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A718);
  }

  return result;
}

unint64_t sub_10015EA74()
{
  result = qword_10022A728;
  if (!qword_10022A728)
  {
    sub_10000460C(&qword_10022A730);
    sub_10015EB2C();
    sub_10000BFFC(&qword_100225800, &qword_100225808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A728);
  }

  return result;
}

unint64_t sub_10015EB2C()
{
  result = qword_10022A738;
  if (!qword_10022A738)
  {
    sub_10000460C(&qword_10022A740);
    sub_10015EBE4();
    sub_10000BFFC(&qword_1002238C0, &qword_1002238C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A738);
  }

  return result;
}

unint64_t sub_10015EBE4()
{
  result = qword_10022A748;
  if (!qword_10022A748)
  {
    sub_10000460C(&qword_10022A750);
    sub_10000460C(&qword_10022A758);
    type metadata accessor for TitleAndIconLabelStyle();
    type metadata accessor for LocationButton();
    sub_10015ED88(&qword_10022A760, &type metadata accessor for LocationButton);
    swift_getOpaqueTypeConformance2();
    sub_10015ED88(&qword_10022A768, &type metadata accessor for TitleAndIconLabelStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_100222260, &qword_100222268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A748);
  }

  return result;
}

uint64_t sub_10015ED88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10015EDF8()
{
  result = qword_10022A778;
  if (!qword_10022A778)
  {
    sub_10000460C(&qword_10022A780);
    sub_10015E7F4();
    sub_10015E8D8(&qword_10022A700, &qword_10022A6B8, &unk_1001C1CD0, sub_10015E5CC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A778);
  }

  return result;
}

uint64_t sub_10015EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000024C4(qword_100224528);
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

uint64_t sub_10015EFB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000024C4(qword_100224528);
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

uint64_t type metadata accessor for LoadingView()
{
  result = qword_10022A800;
  if (!qword_10022A800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10015F0C0()
{
  sub_100082DA0();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10015F160()
{
  result = LocalizedStringKey.init(stringLiteral:)();
  qword_10022A788 = result;
  unk_10022A790 = v1;
  byte_10022A798 = v2 & 1;
  qword_10022A7A0 = v3;
  return result;
}

uint64_t sub_10015F1A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = static Alignment.center.getter();
  a2[1] = v4;
  v5 = sub_1000024C4(&qword_10022A858);
  sub_10015F234(a1, (a2 + *(v5 + 44)));
  v6 = static SafeAreaRegions.all.getter();
  v7 = static Edge.Set.all.getter();
  result = sub_1000024C4(&qword_10022A838);
  v9 = a2 + *(result + 36);
  *v9 = v6;
  v9[8] = v7;
  return result;
}

uint64_t sub_10015F234@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v27 = a1;
  v29 = a2;
  v2 = sub_1000024C4(&qword_10022A860);
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v24 - v3;
  v28 = sub_1000024C4(&qword_10022A868);
  __chkstk_darwin(v28);
  v6 = &v24 - v5;
  v7 = sub_1000024C4(&qword_10022A870);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = [objc_opt_self() systemGroupedBackgroundColor];
  v26 = Color.init(uiColor:)();
  if (qword_100220C30 != -1)
  {
    swift_once();
  }

  ProgressView<>.init<>(_:)();
  sub_10000BFFC(&qword_10022A878, &qword_10022A860);
  v15 = v25;
  View.accessibilityIdentifier(_:)();
  v16 = (*(v24 + 8))(v4, v15);
  __chkstk_darwin(v16);
  *(&v24 - 2) = v27;
  sub_1000024C4(&qword_100226950);
  sub_10015FF78();
  v17 = sub_10000460C(&qword_1002245F8);
  v18 = sub_1000ED768();
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  sub_100160060(v6);
  v19 = *(v8 + 16);
  v19(v11, v13, v7);
  v20 = v29;
  *v29 = v26;
  v21 = sub_1000024C4(&qword_10022A888);
  v19(v20 + *(v21 + 48), v11, v7);
  v22 = *(v8 + 8);

  v22(v13, v7);
  v22(v11, v7);
}

uint64_t sub_10015F668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_1000024C4(&qword_1002245E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v7 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v7 - 8);
  v27 = sub_1000024C4(&qword_1002245F0);
  v8 = *(v27 - 8);
  __chkstk_darwin(v27);
  v10 = &v25 - v9;
  v28 = sub_1000024C4(&qword_1002245F8);
  v11 = __chkstk_darwin(v28);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = *(type metadata accessor for LoadingView() + 20);
  v26 = a1;
  v17 = *(a1 + v16);
  if (v17)
  {
    v30 = v15;
    if (*(v17 + 88) && (*(v17 + 80) & 1) != 0)
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        (*(v4 + 56))(v13, 1, 1, v3);
        v19 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
        v31 = v27;
        v32 = v19;
        swift_getOpaqueTypeConformance2();
        v20 = v30;
        static ToolbarContentBuilder.buildIf<A>(_:)();
        sub_1000EDDE4(v13);
LABEL_8:
        sub_1000ED768();
        static ToolbarContentBuilder.buildBlock<A>(_:)();
        return sub_1000EDDE4(v20);
      }
    }

    else
    {
    }

    v21 = static ToolbarItemPlacement.topBarTrailing.getter();
    v22 = v27;
    __chkstk_darwin(v21);
    *(&v25 - 2) = v26;
    sub_10008B1A4();
    ToolbarItem<>.init(placement:content:)();
    v23 = sub_10000BFFC(&qword_100224628, &qword_1002245F0);
    static ToolbarContentBuilder.buildBlock<A>(_:)();
    (*(v4 + 16))(v13, v6, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
    v31 = v22;
    v32 = v23;
    swift_getOpaqueTypeConformance2();
    v20 = v30;
    static ToolbarContentBuilder.buildIf<A>(_:)();
    sub_1000EDDE4(v13);
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v22);
    goto LABEL_8;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_10009249C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_10015FB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for EnvironmentValues();
  v22 = *(v4 - 8);
  v23 = v4;
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000024C4(&qword_1002216C0);
  __chkstk_darwin(v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for DismissAction();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v22 - v15;
  sub_100134210(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v11 + 32);
    v17(v16, v9, v10);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v18 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v22 + 8))(v6, v23);
    v17 = *(v11 + 32);
  }

  v17(v14, v16, v10);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  result = (v17)(v20 + v19, v14, v10);
  *a2 = 0;
  *(a2 + 8) = sub_1000172FC;
  *(a2 + 16) = v20;
  return result;
}

uint64_t sub_10015FE40()
{
  sub_1000024C4(&qword_10022A838);
  sub_10015FEB8();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_10015FEB8()
{
  result = qword_10022A840;
  if (!qword_10022A840)
  {
    sub_10000460C(&qword_10022A838);
    sub_10000BFFC(&qword_10022A848, &qword_10022A850);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A840);
  }

  return result;
}

unint64_t sub_10015FF78()
{
  result = qword_10022A880;
  if (!qword_10022A880)
  {
    sub_10000460C(&qword_10022A868);
    sub_10000BFFC(&qword_10022A878, &qword_10022A860);
    sub_10009249C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022A880);
  }

  return result;
}

uint64_t sub_100160060(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_10022A868);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001600D0()
{
  v1 = type metadata accessor for DismissAction();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1001601B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100160270(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DesignTimeTicketAttribution()
{
  result = qword_10022A8F8;
  if (!qword_10022A8F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Int sub_100160360()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100160408()
{
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_100160494()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for URL();
  sub_1001605D8(&qword_100221260, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100160580(uint64_t a1)
{
  result = sub_1001605D8(qword_10022A938, type metadata accessor for DesignTimeTicketAttribution);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1001605D8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100160620()
{
  type metadata accessor for Optional();
  if (v0 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    type metadata accessor for Optional();
    if (v1 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      type metadata accessor for Optional();
      if (v2 <= 0x3F)
      {
        sub_10000693C();
        if (v3 <= 0x3F)
        {
          swift_checkMetadataState();
          if (v4 <= 0x3F)
          {
            swift_checkMetadataState();
            if (v5 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v6 <= 0x3F)
              {
                type metadata accessor for ObservationRegistrar();
                if (v7 <= 0x3F)
                {
                  swift_initClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100160920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  sub_100164500(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_100160988@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = *(*v1 + 128);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100160B18(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 128);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100160CB8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = *(*v1 + 136);
  swift_beginAccess();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100160DA8(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 136);
  swift_beginAccess();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_100160E70()
{
  v0 = sub_100168CB8();

  return v0;
}

uint64_t sub_100160EA8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 144));
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100160BE0();
  }
}

uint64_t sub_100161030()
{
  swift_getKeyPath();
  sub_100160A78();

  return *(v0 + *(*v0 + 152));
}

uint64_t sub_1001610C0(char a1)
{
  v3 = *(*v1 + 152);
  sub_100011044();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(result);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100160BE0();
  }

  return result;
}

uint64_t sub_100161230()
{
  sub_100168D4C();
}

uint64_t sub_100161258(uint64_t a1)
{
  v3 = *(*v1 + 160);
  type metadata accessor for Array();
  swift_getWitnessTable();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100160BE0();
  }
}

uint64_t sub_100161440@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = *(*v1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100161594(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 168);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_10016168C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = *(*v1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1001617CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 176);
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

uint64_t sub_1001618C4@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = *(*v1 + 184);
  swift_beginAccess();
  return sub_100073F10(v1 + v3, a1);
}

uint64_t sub_10016197C(uint64_t a1)
{
  v2 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - v3;
  sub_100073F10(a1, &v6 - v3);
  return sub_100161A10(v4);
}

uint64_t sub_100161A10(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = *(v4 + 184);
  swift_beginAccess();
  sub_100073F10(v1 + v8, v7);
  v9 = *(v4 + 80);
  v16 = *(v4 + 96);
  v17 = v9;
  v15 = *(v4 + 112);
  sub_100074048();
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = sub_1000050C4(v7, &qword_1002214F8);
  if (v10)
  {
    swift_beginAccess();
    sub_1000740FC(a1, v2 + v8);
    swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v11);
    v12 = v16;
    *(&v15 - 3) = v17;
    *(&v15 - 2) = v12;
    *(&v15 - 1) = v15;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v15 - 2) = v2;
    *(&v15 - 1) = a1;
    sub_100160BE0();
  }

  return sub_1000050C4(a1, &qword_1002214F8);
}

uint64_t sub_100161C48(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 184);
  swift_beginAccess();
  sub_1000740FC(a2, a1 + v4);
  return swift_endAccess();
}

void *sub_100161CC0()
{
  v0 = sub_100169404();
  v1 = v0;
  return v0;
}

void sub_100161CEC(void *a1)
{
  v3 = *(*v1 + 192);
  sub_1000024C4(&qword_100223F78);
  sub_100074C20();
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v4)
  {
    v5 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    __chkstk_darwin(v4);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100160BE0();
  }
}

double sub_100161E74@<D0>(_OWORD *a1@<X8>)
{
  sub_100169494(v6);
  sub_10002089C(v6, &v5);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  result = *&v7;
  v4 = v8;
  a1[2] = v7;
  a1[3] = v4;
  return result;
}

uint64_t sub_100161EC0(uint64_t a1)
{
  swift_getKeyPath();
  sub_100160BE0();
  sub_100006C2C(a1);
}

uint64_t sub_100161F78(uint64_t a1, _OWORD *a2)
{
  v2 = (a1 + *(*a1 + 232));
  v3 = a2[1];
  *v2 = *a2;
  v2[1] = v3;
  v4 = a2[3];
  v2[2] = a2[2];
  v2[3] = v4;
  sub_10002089C(a2, &v6);
}

uint64_t sub_10016201C()
{
  v0 = sub_100169830();

  return v0;
}

uint64_t sub_100162054(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 240));
  sub_1000024C4(&qword_10022AF10);
  sub_10002FC90();
  v6 = dispatch thunk of static Equatable.== infix(_:_:)();
  if (v6)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    __chkstk_darwin(v6);
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100160BE0();
  }
}

uint64_t sub_1001621F0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  sub_100162450();
  v8 = *(AssociatedTypeWitness - 8);
  if ((*(v8 + 48))(v7, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v7, v4);
    return (*(*(v1 + 8) + 136))(v2);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v8 + 8))(v7, AssociatedTypeWitness);
    return v11;
  }
}

uint64_t sub_100162450()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v6 = v10 - v5;
  (*(v1 + 88))(v2, v1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v4 + 8))(v6, AssociatedTypeWitness);
  v10[1] = v8;
  swift_getAssociatedTypeWitness();
  type metadata accessor for Array();
  swift_getWitnessTable();
  Collection.first.getter();
}

uint64_t sub_100162674(uint64_t a1, uint64_t a2)
{
  v4 = *(*(*v2 + 104) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v9 = v24 - v8;
  v10 = sub_10016413C();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_1000024C4(&qword_100221A38);
    v14 = swift_allocObject();
    v24[1] = a2;
    v15 = v14;
    *(v14 + 16) = xmmword_1001B3B50;
    (*(v4 + 168))(v5, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = sub_100023254(AssociatedTypeWitness, AssociatedConformanceWitness);
    v19 = v18;
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    v15[7] = &type metadata for String;
    v20 = sub_100017D20();
    v15[4] = v17;
    v15[5] = v19;
    v15[12] = &type metadata for String;
    v15[13] = v20;
    v15[8] = v20;
    v15[9] = v12;
    v15[10] = v13;
    return String.init(format:_:)();
  }

  else
  {
    (*(v4 + 168))(v5, v4);
    v22 = swift_getAssociatedConformanceWitness();
    v23 = sub_100023254(AssociatedTypeWitness, v22);
    (*(v7 + 8))(v9, AssociatedTypeWitness);
    return v23;
  }
}

uint64_t sub_10016292C()
{
  v1 = *(v0 + *(*v0 + 248));

  return v1;
}

uint64_t sub_100162A0C@<X0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - v5;
  sub_100162450();
  v7 = *(AssociatedTypeWitness - 8);
  if ((*(v7 + 48))(v6, 1, AssociatedTypeWitness) == 1)
  {
    (*(v4 + 8))(v6, v3);
    swift_getAssociatedConformanceWitness();
    v8 = swift_getAssociatedTypeWitness();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v7 + 8))(v6, AssociatedTypeWitness);
  }
}

uint64_t sub_100162CA8@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v8 = v18 - v7;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v18 - v11;
  (*(v10 + 16))(v18 - v11, v1 + *(v2 + 208), v9);
  v13 = *(v4 - 8);
  if ((*(v13 + 48))(v12, 1, v4) == 1)
  {
    (*(v10 + 8))(v12, v9);
    swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedTypeWitness();
    return (*(*(v14 - 8) + 56))(v18[0], 1, 1, v14);
  }

  else
  {
    (*(v3 + 104))(v4, v3);
    (*(v13 + 8))(v12, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = (*(AssociatedConformanceWitness + 56))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v18[1] = v17;
    swift_getAssociatedTypeWitness();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
  }
}

uint64_t sub_100163044()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = type metadata accessor for Optional();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9 - v3;
  sub_100162450();
  v5 = *(AssociatedTypeWitness - 8);
  if ((*(v5 + 48))(v4, 1, AssociatedTypeWitness) == 1)
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v4, AssociatedTypeWitness);
    return v8;
  }
}

void *sub_1001632E4()
{
  sub_100169494(v3);
  if (!v3[3] || !v3[1])
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000024C4(&qword_100221500);
  type metadata accessor for URLQueryItem();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B3B50;
  sub_10002089C(v3, &v2);
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  sub_100006C2C(v3);
  return v0;
}

uint64_t sub_100163434()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 64))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_1001636D0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_10016396C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v3 = &v11 - v2;
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - v6;
  sub_100161440(&v11 - v6);
  if ((*(v1 + 48))(v7, 1, AssociatedTypeWitness))
  {
    (*(v5 + 8))(v7, v4);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    return static Array._allocateUninitialized(_:)();
  }

  else
  {
    (*(v1 + 16))(v3, v7, AssociatedTypeWitness);
    (*(v5 + 8))(v7, v4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v10 = (*(AssociatedConformanceWitness + 80))(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v1 + 8))(v3, AssociatedTypeWitness);
    return v10;
  }
}

uint64_t sub_100163C08@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v5 = &v13 - v4;
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v13 - v8;
  sub_100161440(&v13 - v8);
  if ((*(v3 + 48))(v9, 1, AssociatedTypeWitness))
  {
    (*(v7 + 8))(v9, v6);
    v10 = type metadata accessor for URL();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v9, AssociatedTypeWitness);
    (*(v7 + 8))(v9, v6);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 88))(AssociatedTypeWitness, AssociatedConformanceWitness);
    return (*(v3 + 8))(v5, AssociatedTypeWitness);
  }
}

uint64_t sub_100163E98()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v7 = &v16 - v6;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  (*(v9 + 16))(&v16 - v10, v0 + *(v1 + 208), v8);
  v12 = *(v3 - 8);
  if ((*(v12 + 48))(v11, 1, v3) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v13 = 0;
  }

  else
  {
    (*(v2 + 104))(v3, v2);
    (*(v12 + 8))(v11, v3);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = sub_1000F57B8(AssociatedTypeWitness, AssociatedConformanceWitness);
    (*(v5 + 8))(v7, AssociatedTypeWitness);
  }

  return v13 & 1;
}

id sub_10016413C()
{
  result = sub_100169404();
  if (result)
  {
    result = [result addressRepresentations];
    if (result)
    {
      v1 = result;
      v2 = [result cityName];

      if (v2)
      {
        v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        return v3;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1001641CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v18 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v17 - v10;
  (*(v4 + 16))(v6, v0 + *(v1 + 208), v3);
  v12 = *(v2 - 8);
  if ((*(v12 + 48))(v6, 1, v2) == 1)
  {
    (*(v4 + 8))(v6, v3);
    return 0;
  }

  sub_100187A54(v2, v7, v11);
  (*(v12 + 8))(v6, v2);
  v13 = *(AssociatedTypeWitness - 8);
  if ((*(v13 + 48))(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v18 + 8))(v11, v9);
    return 0;
  }

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v13 + 8))(v11, AssociatedTypeWitness);
  return v16;
}

uint64_t sub_100164500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v79 = a3;
  v73 = a2;
  v72 = a1;
  v5 = *v4;
  v6 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v6 - 8);
  v8 = &v69 - v7;
  v9 = v5[10];
  v78 = type metadata accessor for Optional();
  v77 = *(v78 - 8);
  v10 = __chkstk_darwin(v78);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v69 - v12;
  v14 = v5[16];
  v69 = *(v9 - 8);
  v15 = v69 + 56;
  v16 = *(v69 + 56);
  v16(v4 + v14, 1, 1, v9);
  v75 = v15;
  v74 = v16;
  v16(v13, 1, 1, v9);
  v17 = *(*v4 + 136);
  v18 = type metadata accessor for Optional();
  (*(*(v18 - 8) + 32))(v4 + v17, v13, v18);
  v19 = (v4 + *(*v4 + 144));
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  *(v4 + *(*v4 + 152)) = 1;
  *(v4 + *(*v4 + 160)) = static Array._allocateUninitialized(_:)();
  v20 = *(*v4 + 168);
  v71 = v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v4 + v20, 1, 1, AssociatedTypeWitness);
  v22 = *(*v4 + 176);
  v70 = v5[12];
  v23 = swift_getAssociatedTypeWitness();
  (*(*(v23 - 8) + 56))(v4 + v22, 1, 1, v23);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  sub_100073EA0(v8, v4 + *(*v4 + 184));
  *(v4 + *(*v4 + 192)) = 0;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  memset(v86, 0, sizeof(v86));
  sub_10002089C(&v82, v81);
  sub_100006C2C(v86);
  v25 = (v4 + *(*v4 + 232));
  v26 = v85;
  v25[2] = v84;
  v25[3] = v26;
  v27 = v83;
  *v25 = v82;
  v25[1] = v27;
  v28 = (v4 + *(*v4 + 240));
  *v28 = 0;
  v28[1] = 0;
  v29 = v4 + *(*v4 + 248);
  *v29 = LocalizedStringKey.init(stringLiteral:)();
  *(v29 + 8) = v30;
  *(v29 + 16) = v31 & 1;
  *(v29 + 24) = v32;
  v33 = (v4 + *(*v4 + 256));
  v34 = objc_opt_self();
  v35 = [v34 mainBundle];
  v87._object = 0xE000000000000000;
  v36._countAndFlagsBits = 0xD00000000000002ALL;
  v36._object = 0x80000001001C4970;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v87._countAndFlagsBits = 0;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v87);

  *v33 = v38;
  v39 = (v4 + *(*v4 + 264));
  v40 = [v34 mainBundle];
  v88._object = 0xE000000000000000;
  v41 = v69;
  v42._countAndFlagsBits = 0xD00000000000002DLL;
  v42._object = 0x80000001001C4A60;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  v88._countAndFlagsBits = 0;
  v44 = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, 0, v40, v43, v88);

  *v39 = v44;
  v45 = (v4 + *(*v4 + 272));
  v46 = [v34 mainBundle];
  v89._object = 0xE000000000000000;
  v47._countAndFlagsBits = 0xD00000000000003ALL;
  v47._object = 0x80000001001C4A90;
  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  v89._countAndFlagsBits = 0;
  v49 = NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v89);

  *v45 = v49;
  v50 = (v4 + *(*v4 + 280));
  *v50 = 0xD000000000000010;
  v50[1] = 0x80000001001C4AD0;
  v51 = (v4 + *(*v4 + 288));
  v52 = [v34 mainBundle];
  v90._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0xD000000000000029;
  v53._object = 0x80000001001C49C0;
  v54._countAndFlagsBits = 0;
  v54._object = 0xE000000000000000;
  v90._countAndFlagsBits = 0;
  v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v52, v54, v90);

  *v51 = v55;
  v56 = (v4 + *(*v4 + 296));
  v57 = [v34 mainBundle];
  v91._object = 0xE000000000000000;
  v58._countAndFlagsBits = 0xD000000000000037;
  v58._object = 0x80000001001C49F0;
  v59._countAndFlagsBits = 0;
  v59._object = 0xE000000000000000;
  v91._countAndFlagsBits = 0;
  v60 = NSLocalizedString(_:tableName:bundle:value:comment:)(v58, 0, v57, v59, v91);

  *v56 = v60;
  v61 = v72;
  v62 = v73;
  ObservationRegistrar.init()();
  (*(v41 + 16))(v4 + *(*v4 + 200), v61, v9);
  v63 = *(v41 + 48);
  if (v63(v62, 1, v9) == 1)
  {
    v64 = v76;
    (*(v41 + 32))(v76, v61, v9);
    v65 = v63(v62, 1, v9);
    v66 = v78;
    v67 = v77;
    if (v65 != 1)
    {
      (*(v77 + 8))(v62, v78);
    }
  }

  else
  {
    (*(v41 + 8))(v61, v9);
    v64 = v76;
    (*(v41 + 32))(v76, v62, v9);
    v66 = v78;
    v67 = v77;
  }

  v74(v64, 0, 1, v9);
  (*(v67 + 32))(v4 + *(*v4 + 208), v64, v66);
  (*(*(v71 - 8) + 32))(v4 + *(*v4 + 216), v79);
  (*(*(v70 - 8) + 32))(v4 + *(*v4 + 224), v80);
  return v4;
}

uint64_t sub_100164F24(uint64_t a1)
{
  sub_10007D594(a1);
  if (!v1)
  {
    sub_1001641CC();
    if (!v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100164F60()
{
  v1[42] = v0;
  v1[43] = *v0;
  v2 = type metadata accessor for URLComponents();
  v1[44] = v2;
  v1[45] = *(v2 - 8);
  v1[46] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[47] = static MainActor.shared.getter();
  v1[48] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[49] = v3;

  return _swift_task_switch(sub_10016507C);
}

uint64_t sub_10016507C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_task_alloc();
  *(v0 + 400) = v7;
  *v7 = v0;
  v7[1] = sub_1001651A8;

  return sub_1001537FC(v0 + 144, v4, v6);
}

uint64_t sub_1001651A8()
{

  return _swift_task_switch(sub_1001652C8);
}

uint64_t sub_1001652C8()
{

  sub_100161EC0((v0 + 18));
  sub_100169494((v0 + 10));
  if (v0[13] && v0[17])
  {
    sub_1000024C4(&qword_100221500);
    type metadata accessor for URLQueryItem();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1001B3B50;
    sub_10002089C((v0 + 10), (v0 + 34));
    URLQueryItem.init(name:value:)();
    URLQueryItem.init(name:value:)();
    sub_100006C2C((v0 + 10));
    v2 = v1;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  v3 = v2[2];

  if (v3)
  {
    URLComponents.init()();
    sub_100169494((v0 + 2));
    if (v0[5] && v0[9])
    {
      sub_1000024C4(&qword_100221500);
      type metadata accessor for URLQueryItem();
      *(swift_allocObject() + 16) = xmmword_1001B3B50;
      sub_10002089C((v0 + 2), (v0 + 26));
      URLQueryItem.init(name:value:)();
      URLQueryItem.init(name:value:)();
      sub_100006C2C((v0 + 2));
    }

    v5 = v0[45];
    v4 = v0[46];
    v6 = v0[44];
    URLComponents.queryItems.setter();
    v7 = URLComponents.percentEncodedQuery.getter();
    sub_100162054(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1001655AC()
{
  v0 = sub_1000024C4(&qword_1002214F8);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v10 - v4;
  sub_100163C08(v3);
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v3, 1, v6) == 1)
  {
    sub_1000050C4(v3, &qword_1002214F8);
    v8 = 1;
  }

  else
  {
    sub_1001632E4();
    URL.appending(queryItems:)();

    (*(v7 + 8))(v3, v6);
    v8 = 0;
  }

  (*(v7 + 56))(v5, v8, 1, v6);
  return sub_100161A10(v5);
}

uint64_t sub_100165744(char a1)
{
  if (a1)
  {
    v1 = sub_1001621F0();
  }

  else
  {
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  return sub_100160EA8(v1, v2);
}

uint64_t sub_10016577C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 112);
  v3[6] = *(v4 + 88);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[11] = static MainActor.shared.getter();
  v3[12] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[13] = v6;

  return _swift_task_switch(sub_1001658C8);
}

uint64_t sub_1001658C8()
{
  v10 = v0[5];

  v1 = ResourceID.init(_:)();
  v3 = v2;
  v0[14] = v2;
  v9 = (*(v10 + 48) + **(v10 + 48));
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_100165A30;
  v5 = v0[10];
  v7 = v0[5];
  v6 = v0[6];

  return v9(v5, v1, v3, v6, v7);
}

uint64_t sub_100165A30()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_100165C28;
  }

  else
  {

    v2 = sub_100165B4C;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100165B4C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_100168DDC(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100165C28()
{
  v13 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_100139F7C(v5, v4, &v12);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch music artist for artist: %s, error: %@", v6, 0x16u);
    sub_1000050C4(v7, &qword_100221718);

    sub_100012A7C(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100165E58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 120);
  v3[6] = *(v4 + 96);
  v3[7] = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[12] = static MainActor.shared.getter();
  v3[13] = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v6;

  return _swift_task_switch(sub_100165FB0);
}

uint64_t sub_100165FB0()
{
  v1 = v0[3];
  if (v1)
  {
    v21 = v0[5];
    v2 = sub_1001641CC();
    v4 = v3;
    v0[15] = v3;
    v20 = (*(v21 + 24) + **(v21 + 24));
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_100166218;
    v6 = v0[11];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[2];

    return v20(v6, v9, v1, v2, v4, v7, v8);
  }

  else
  {
    v11 = sub_1001641CC();
    v0[18] = v12;
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v15 = swift_task_alloc();
      v0[19] = v15;
      *v15 = v0;
      v15[1] = sub_100166454;
      v16 = v0[10];
      v18 = v0[5];
      v17 = v0[6];

      return sub_10001219C(v16, v13, v14, v17, v18);
    }

    else
    {

      v19 = v0[1];

      return v19();
    }
  }
}

uint64_t sub_100166218()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_100166690;
  }

  else
  {
    v2 = sub_100166370;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_100166370()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_100169108(v1);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100166454()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_100166948;
  }

  else
  {
    v2 = sub_1001665AC;
  }

  return _swift_task_switch(v2);
}

uint64_t sub_1001665AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];

  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_100169108(v1);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_100166690()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001641CC();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000050C4(v8, &qword_100221718);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100166948()
{
  v19 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000BE10(v2, qword_100239158);

  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136315650;
    if (v5)
    {
      v9 = v1;
    }

    else
    {
      v6 = 1701736270;
      v9 = 0xE400000000000000;
    }

    v10 = sub_100139F7C(v6, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_1001641CC();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v11 = 1701736270;
      v13 = 0xE400000000000000;
    }

    v14 = sub_100139F7C(v11, v13, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2112;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v15;
    *v8 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed to fetch promotional playlist. Configuration playlist ID: %s, event playlist ID: %s, error: %@", v7, 0x20u);
    sub_1000050C4(v8, &qword_100221718);

    swift_arrayDestroy();
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_100166C00()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v3 = *(*(v2 + 104) + 8);
  v4 = *(v2 + 80);
  v7 = (*(v3 + 184) + **(v3 + 184));
  v5 = swift_task_alloc();
  v1[5] = v5;
  *v5 = v1;
  v5[1] = sub_100166D80;

  return v7(v4, v3);
}

uint64_t sub_100166D80(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    dispatch thunk of Actor.unownedExecutor.getter();
    v5 = sub_100166F70;
  }

  else
  {
    *(v4 + 56) = a1;
    dispatch thunk of Actor.unownedExecutor.getter();
    v5 = sub_100166F00;
  }

  return _swift_task_switch(v5);
}

uint64_t sub_100166F00()
{
  v1 = *(v0 + 56);

  sub_100161258(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100166F70()
{
  v15 = v0;

  if (qword_100220C90 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000BE10(v1, qword_100239158);

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v4 = 136315394;
    v7 = sub_100163044();
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v7 = 45;
      v9 = 0xE100000000000000;
    }

    v10 = sub_100139F7C(v7, v9, &v14);

    *(v4 + 4) = v10;
    *(v4 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v11;
    *v5 = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to fetch schedule for artist: %s, error: %@", v4, 0x16u);
    sub_1000050C4(v5, &qword_100221718);

    sub_100012A7C(v6);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1001671C8()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *(*(*v0 + 104) + 8);
  v1[4] = *(v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[5] = AssociatedTypeWitness;
  v1[6] = *(AssociatedTypeWitness - 8);
  v1[7] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[8] = static MainActor.shared.getter();
  v1[9] = dispatch thunk of Actor.unownedExecutor.getter();
  v1[10] = v4;

  return _swift_task_switch(sub_100167304);
}

uint64_t sub_100167304()
{
  if (sub_100169404())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    (*(*(*(**(v0 + 16) + 104) + 8) + 176))(*(**(v0 + 16) + 80));
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *v3 = v0;
    v3[1] = sub_100167480;
    v5 = *(v0 + 56);
    v6 = *(v0 + 40);

    return sub_1000C5148(v5, v6, AssociatedConformanceWitness);
  }
}

uint64_t sub_100167480(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 48);

  v7 = (v6 + 8);
  v8 = *(v4 + 56);
  v9 = *(v4 + 40);
  if (v1)
  {

    (*v7)(v8, v9);
    v10 = sub_1001676A0;
  }

  else
  {
    *(v5 + 96) = a1;
    (*v7)(v8, v9);
    v10 = sub_100167628;
  }

  return _swift_task_switch(v10);
}

uint64_t sub_100167628()
{
  v1 = *(v0 + 96);

  sub_100161CEC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1001676A0()
{

  sub_100161CEC(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100167760(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*(*(*v1 + 104) + 8) + 120))(*(*v1 + 80));
  v6 = v5;
  v7 = sub_10012BCC8(v2 + *(*v2 + 200), *(*v2 + 80), *(*(*v2 + 104) + 8));
  sub_10015B530(v4, v6, v7, a1);
}

void sub_100167864(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v11 = (*(*(*(*v5 + 104) + 8) + 120))(*(*v5 + 80));
  v13 = v12;
  v14 = sub_10012BCC8(v5 + *(*v5 + 200), *(*v5 + 80), *(*(*v5 + 104) + 8));
  sub_1000024C4(&qword_100221508);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B60;
  *(inited + 56) = &type metadata for AnalyticsString;
  *(inited + 64) = &off_100228B70;
  *(inited + 32) = 0;
  *(inited + 40) = v11;
  *(inited + 48) = v13;
  *(inited + 96) = &type metadata for AnalyticsPageName;
  *(inited + 104) = &off_100228B48;
  *(inited + 72) = v14;
  *(inited + 136) = &type metadata for AnalyticsModuleName;
  *(inited + 144) = &off_100228BD0;
  *(inited + 112) = a1;
  *(inited + 176) = &type metadata for AnalyticsModuleAction;
  *(inited + 184) = &off_100228BA8;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  if (*(a5 + 72))
  {
    v16 = *(a5 + 64);
    v17 = *(a5 + 72);
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  LOBYTE(aBlock) = 1;
  v24 = v16;
  v25 = v17;

  sub_100006C80(a2, a3, a4);

  v18 = sub_1001894F4(1, 5, 1, inited);
  v22 = v18;
  sub_100006C98(&aBlock, v29);
  sub_100118768(4, v29, &v22, &type metadata for AnalyticsString, &off_100228B70);
  sub_100006CF4(&aBlock);
  v19 = String._bridgeToObjectiveC()();
  v20 = swift_allocObject();
  v20[2] = 0xD00000000000001ELL;
  v20[3] = 0x80000001001C4640;
  v20[4] = v18;
  v27 = sub_100006D88;
  v28 = v20;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10015B4A4;
  v26 = &unk_1002195F0;
  v21 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();

  _Block_release(v21);
}

void sub_100167BA0(uint64_t a1)
{
  v42 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = type metadata accessor for Optional();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v6 = &v40 - v5;
  v7 = *(v2 + 104);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  sub_1000024C4(&qword_100221508);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1001B49A0;
  v14 = *(v7 + 8);
  v15 = sub_10012BCC8(v1 + *(v2 + 200), v3, v14);
  *(v13 + 56) = &type metadata for AnalyticsPageName;
  *(v13 + 64) = &off_100228B48;
  *(v13 + 32) = v15;
  *(v13 + 96) = &type metadata for AnalyticsModuleName;
  *(v13 + 104) = &off_100228BD0;
  *(v13 + 72) = 3;
  sub_100162CA8(v12);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v12, 1, AssociatedTypeWitness) == 1)
  {
    v16 = 12;
  }

  else
  {
    v16 = 11;
  }

  v17 = v12;
  v18 = v40;
  (*(v10 + 8))(v17, v9);
  *(v13 + 136) = &type metadata for AnalyticsModuleAction;
  *(v13 + 144) = &off_100228BA8;
  *(v13 + 112) = v16;
  *(v13 + 120) = 0;
  *(v13 + 128) = 3;
  v48 = v13;
  v19 = v1 + *(*v1 + 208);
  v20 = v41;
  (*(v18 + 16))(v6, v19, v41);
  v21 = *(v3 - 8);
  v22 = &type metadata for AnalyticsString;
  v23 = &off_100228B70;
  if ((*(v21 + 48))(v6, 1, v3) == 1)
  {
    (*(v18 + 8))(v6, v20);
  }

  else
  {
    v24 = (*(v14 + 120))(v3, v14);
    v26 = v25;
    (*(v21 + 8))(v6, v3);
    v28 = *(v13 + 16);
    v27 = *(v13 + 24);
    if (v28 >= v27 >> 1)
    {
      v13 = sub_1001894F4((v27 > 1), v28 + 1, 1, v13);
    }

    v45 = &type metadata for AnalyticsString;
    v46 = &off_100228B70;
    LOBYTE(aBlock) = 0;
    *(&aBlock + 1) = v24;
    v44 = v26;
    *(v13 + 16) = v28 + 1;
    sub_10002FF68(&aBlock, v13 + 40 * v28 + 32);
  }

  if (*(v42 + 72))
  {
    v29 = *(v42 + 64);
    v30 = *(v42 + 72);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
  }

  v45 = &type metadata for AnalyticsString;
  v46 = &off_100228B70;
  LOBYTE(aBlock) = 1;
  *(&aBlock + 1) = v29;
  v44 = v30;
  v48 = v13;
  v31 = *(v13 + 16);
  v32 = *(v13 + 24);

  if (v31 >= v32 >> 1)
  {
    v13 = sub_1001894F4((v32 > 1), v31 + 1, 1, v13);
    v48 = v13;
    v22 = v45;
    v23 = v46;
  }

  v33 = sub_10002FAD0(&aBlock, v22);
  __chkstk_darwin(v33);
  v35 = &v40 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v35);
  sub_100118768(v31, v35, &v48, v22, v23);
  sub_100012A7C(&aBlock);
  v37 = String._bridgeToObjectiveC()();
  v38 = swift_allocObject();
  v38[2] = 0xD00000000000001ELL;
  v38[3] = 0x80000001001C4640;
  v38[4] = v13;
  v46 = sub_100026FEC;
  v47 = v38;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v44 = sub_10015B4A4;
  v45 = &unk_100219640;
  v39 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v39);
}

char *sub_1001681B8()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v3 = *(*v0 + 80);
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 8);
  v5(&v0[v2], v4);
  v5(&v0[*(*v0 + 136)], v4);

  v6 = *(*v0 + 168);
  v7 = *(v1 + 88);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  (*(*(v8 - 8) + 8))(&v0[v6], v8);
  v9 = *(*v0 + 176);
  v10 = *(v1 + 96);
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  (*(*(v11 - 8) + 8))(&v0[v9], v11);
  sub_1000050C4(&v0[*(*v0 + 184)], &qword_1002214F8);

  (*(*(v3 - 8) + 8))(&v0[*(*v0 + 200)], v3);
  v5(&v0[*(*v0 + 208)], v4);
  (*(*(v7 - 8) + 8))(&v0[*(*v0 + 216)], v7);
  (*(*(v10 - 8) + 8))(&v0[*(*v0 + 224)], v10);

  v12 = *(*v0 + 304);
  v13 = type metadata accessor for ObservationRegistrar();
  (*(*(v13 - 8) + 8))(&v0[v12], v13);
  return v0;
}

uint64_t sub_1001686C0()
{
  sub_1001681B8();

  return swift_deallocClassInstance();
}

uint64_t sub_100168730(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 128);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v18 = v12;
  v20 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v6;
    v16 = v18;
    *(&v18 - 40) = v19;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100160BE0();
  }
}

uint64_t sub_1001689F4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 80);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - v9;
  v11 = *(v4 + 136);
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v19 = *(v5 + 88);
  v12 = *(v5 + 104);
  v13 = *(v4 + 120);
  v18 = v12;
  v20 = *(*(*(v12 + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v4) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v4)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, a1, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v18 - 6) = v6;
    v16 = v18;
    *(&v18 - 40) = v19;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v13;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100160BE0();
  }
}

uint64_t sub_100168CB8()
{
  swift_getKeyPath();
  sub_100160A78();

  return *(v0 + *(*v0 + 144));
}

uint64_t sub_100168D4C()
{
  swift_getKeyPath();
  sub_100160A78();

  return *(v0 + *(*v0 + 160));
}

uint64_t sub_100168DDC(uint64_t a1)
{
  v2 = v1;
  v20 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 88);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = v3[21];
  swift_beginAccess();
  (*(v8 + 16))(v10, v2 + v11, v7);
  v18 = v3[10];
  v19 = *(v4 + 6);
  v12 = v3[15];
  v13 = v20;
  v21 = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v3) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v8 + 8))(v10, v7);
  if (v3)
  {
    swift_beginAccess();
    (*(v8 + 24))(v2 + v11, v13, v7);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    *(&v17 - 6) = v18;
    *(&v17 - 5) = v6;
    *(&v17 - 2) = v19;
    *(&v17 - 2) = v5;
    *(&v17 - 1) = v12;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v17 - 2) = v2;
    *(&v17 - 1) = v13;
    sub_100160BE0();
  }
}

uint64_t sub_100169108(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  v6 = *(*v1 + 120);
  v7 = *(*v1 + 96);
  swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  v12 = *(v4 + 176);
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v12, v8);
  v13 = *(v5 + 104);
  v18 = *(v5 + 80);
  v19 = v13;
  v20 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  swift_getWitnessTable();
  LOBYTE(v5) = dispatch thunk of static Equatable.== infix(_:_:)();
  v14 = (*(v9 + 8))(v11, v8);
  if (v5)
  {
    swift_beginAccess();
    (*(v9 + 24))(v2 + v12, a1, v8);
    return swift_endAccess();
  }

  else
  {
    __chkstk_darwin(v14);
    v16 = v19;
    *(&v18 - 3) = v18;
    *(&v18 - 4) = v7;
    *(&v18 - 24) = v16;
    *(&v18 - 1) = v6;
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    *(&v18 - 2) = v2;
    *(&v18 - 1) = a1;
    sub_100160BE0();
  }
}

uint64_t sub_100169404()
{
  swift_getKeyPath();
  sub_100160A78();

  return *(v0 + *(*v0 + 192));
}

__n128 sub_100169494@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_100160A78();

  v3 = v1 + *(*v1 + 232);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_100169540@<X0>(_OWORD *a1@<X8>)
{
  sub_100169494(v6);
  v2 = v6[1];
  *a1 = v6[0];
  a1[1] = v2;
  v3 = v6[3];
  a1[2] = v6[2];
  a1[3] = v3;
  return sub_10002089C(v6, &v5);
}

uint64_t sub_100169590(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  sub_10002089C(v5, &v4);
  return sub_100161EC0(v5);
}

__n128 sub_1001695E8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_1001696D8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100168D4C();
}

uint64_t sub_10016974C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100169830();
  a1[1] = v2;
}

uint64_t sub_10016978C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100162054(v1, v2);
}

uint64_t sub_1001697D8()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 240));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100169830()
{
  swift_getKeyPath();
  sub_100160A78();

  return *(v0 + *(*v0 + 240));
}

uint64_t sub_100169944(uint64_t a1, unsigned __int8 a2)
{
  v2 = *(a1 + 88);
  if (!v2 || !*(v2 + 16))
  {
    goto LABEL_7;
  }

  v4 = sub_1000FBDA8(a2);
  if ((v5 & 1) == 0)
  {

LABEL_7:
    v7 = 1;
    return v7 & 1;
  }

  v6 = *(*(v2 + 56) + v4);

  if (v6 <= 1 || v6 == 2)
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v9 ^ 1;
  }

  else
  {

    v7 = 0;
  }

  return v7 & 1;
}

id sub_100169A3C@<X0>(void *a1@<X8>)
{
  v2 = sub_100169404();
  *a1 = v2;

  return v2;
}

void sub_100169A78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100161CEC(v1);
}

void sub_100169AB4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 192);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  v5 = v2;
}

uint64_t sub_100169B64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100169B7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100161030();
  *a1 = result;
  return result;
}

uint64_t sub_100169BDC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_100168CB8();
  a1[1] = v2;
}

uint64_t sub_100169C1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_100160EA8(v1, v2);
}

uint64_t sub_100169C68()
{
  v1 = v0[4];
  v2 = (v0[2] + *(*v0[2] + 144));
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_100169CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = sub_10008C468(*(*v4 + 80), *(*(*v4 + 104) + 8));
  sub_1001641CC();
  v11 = v10;
  if (v10)
  {
  }

  v12 = sub_100163E98();
  v13 = [a4 isHidden];
  v14 = *(a1 + 72);
  if (!v14)
  {
    v15 = 0;
    v16 = 0;
    if ((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  if (*(a1 + 64) == a2 && v14 == a3)
  {
    if (!((v11 != 0 || (v9 & 1) == 0) | (v12 | v13) & 1))
    {
      v15 = 1;
LABEL_13:
      v16 = v15 ^ 1;
      return v16 & 1;
    }
  }

  else
  {
    v17 = v11 != 0;
    v18 = v13;
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (!((v17 || (v9 & 1) == 0) | (v12 | v18) & 1))
    {
      v15 = v19;
      goto LABEL_13;
    }
  }

  v16 = 0;
  return v16 & 1;
}

uint64_t sub_100169E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for TimeZone();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100169F7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for TimeZone();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for DesignTimeTime()
{
  result = qword_10022AA18;
  if (!qword_10022AA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10016A0C4()
{
  result = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimeZone();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10016A148@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateInterval();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10016A1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for TimeZone();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

Swift::Int sub_10016A224()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016A310()
{
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10016A3E4()
{
  Hasher.init(_seed:)();
  type metadata accessor for DateInterval();
  sub_10016A5D4(&qword_10022AA60, &type metadata accessor for DateInterval);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for TimeZone();
  sub_10016A5D4(&qword_10022AA68, &type metadata accessor for TimeZone);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10016A4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static DateInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return static TimeZone.== infix(_:_:)(a1 + v6, a2 + v6);
}

uint64_t sub_10016A57C(uint64_t a1)
{
  result = sub_10016A5D4(&qword_10022AA58, type metadata accessor for DesignTimeTime);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10016A5D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10016A66C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  swift_getWitnessTable();
  Bindable<A>.init(wrappedValue:)();
  v6 = type metadata accessor for HeaderModule();
  v7 = (a3 + v6[13]);
  *v7 = a1;
  v7[1] = a2;
  v8 = v6[14];
  *(a3 + v8) = swift_getKeyPath();
  sub_1000024C4(qword_100221928);
  swift_storeEnumTagMultiPayload();
  v9 = v6[15];
  *(a3 + v9) = swift_getKeyPath();
  sub_1000024C4(&qword_1002229F8);
  swift_storeEnumTagMultiPayload();
  v10 = (a3 + v6[16]);
  type metadata accessor for RemoteViewConfiguration();
  sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.init()();
  *v10 = result;
  v10[1] = v12;
  return result;
}

double sub_10016A880()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  result = 281.0;
  if (v1 == 1)
  {
    return 380.0;
  }

  return result;
}

void sub_10016A9D4()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();
  if (v0 <= 0x3F)
  {
    sub_100023D44();
    if (v1 <= 0x3F)
    {
      sub_10016AE54(319, &qword_1002219C0, &type metadata accessor for OpenURLAction);
      if (v2 <= 0x3F)
      {
        sub_10016AE54(319, &qword_100226230, &type metadata accessor for ContentSizeCategory);
        if (v3 <= 0x3F)
        {
          sub_100017044();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10016AB00(uint64_t a1, uint64_t a2, int *a3)
{
  type metadata accessor for HeaderViewModel();
  v6 = type metadata accessor for Bindable();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[13]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_1000024C4(&qword_1002222A0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[14];
      goto LABEL_3;
    }

    v15 = sub_1000024C4(qword_100228110);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[15];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10016ACB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  type metadata accessor for HeaderViewModel();
  result = type metadata accessor for Bindable();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v13 = sub_1000024C4(&qword_1002222A0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[14];
    goto LABEL_3;
  }

  v15 = sub_1000024C4(qword_100228110);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[15];

  return v16(v17, a2, a2, v15);
}

void sub_10016AE54(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_10016AEEC()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();
  Bindable.wrappedValue.getter();
  return v1;
}

uint64_t sub_10016AF30()
{
  type metadata accessor for HeaderViewModel();
  type metadata accessor for Bindable();

  return Bindable.projectedValue.getter();
}

uint64_t sub_10016AF80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = type metadata accessor for TaskPriority();
  v91 = *(v92 - 8);
  v3 = __chkstk_darwin(v92);
  v90 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = *(a1 - 1);
  v96 = v88[8];
  __chkstk_darwin(v3);
  v98 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = "defaultHeroImageSymbolName";
  v6 = a1[2];
  v7 = a1[4];
  type metadata accessor for HeaderViewModel();
  v94 = type metadata accessor for Bindable();
  v87 = *(v94 - 1);
  __chkstk_darwin(v94);
  v71 = &v65 - v8;
  v86 = a1;
  *&v100 = a1[3];
  v9 = a1[5];
  v108 = v100;
  v109 = v9;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for ZStack();
  WitnessTable = swift_getWitnessTable();
  v108 = v10;
  v109 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000460C(&qword_10022AB08);
  sub_10000460C(&qword_10022AB10);
  swift_getTupleTypeMetadata3();
  v73 = type metadata accessor for TupleView();
  v72 = swift_getWitnessTable();
  v12 = type metadata accessor for VStack();
  v85 = *(v12 - 8);
  __chkstk_darwin(v12);
  v66 = &v65 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v108 = AssociatedTypeWitness;
  v109 = v15;
  v110 = AssociatedConformanceWitness;
  v111 = v17;
  v18 = type metadata accessor for TicketView();
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v108 = v12;
  v109 = v18;
  v70 = v12;
  v67 = v18;
  v110 = v19;
  v111 = v20;
  v21 = v19;
  v69 = v19;
  v68 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v76 = OpaqueTypeMetadata2;
  v81 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v95 = &v65 - v23;
  v108 = v12;
  v109 = v18;
  v110 = v21;
  v111 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v108 = OpaqueTypeMetadata2;
  v109 = OpaqueTypeConformance2;
  v80 = &unk_1001C94C8;
  v78 = swift_getOpaqueTypeMetadata2();
  v83 = *(v78 - 8);
  __chkstk_darwin(v78);
  v74 = &v65 - v24;
  v82 = type metadata accessor for ModifiedContent();
  v84 = *(v82 - 8);
  v25 = __chkstk_darwin(v82);
  v77 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v79 = &v65 - v27;
  static HorizontalAlignment.center.getter();
  *&v28 = v6;
  *(&v28 + 1) = v100;
  *&v29 = v7;
  *(&v29 + 1) = v9;
  v99 = v29;
  v100 = v28;
  v103 = v28;
  v104 = v29;
  v30 = v97;
  v105 = v97;
  VStack.init(alignment:spacing:content:)();
  v31 = v71;
  v32 = v86;
  sub_10016AF30();
  v101 = v100;
  v102 = v99;
  swift_getKeyPath();
  v33 = v94;
  Bindable<A>.subscript.getter();

  (*(v87 + 8))(v31, v33);
  LODWORD(v73) = v110;
  v34 = v88;
  v94 = v88[2];
  v35 = v98;
  (v94)(v98, v30, v32);
  v36 = *(v34 + 80);
  v87 = (v36 + 48) & ~v36;
  v37 = swift_allocObject();
  v38 = v99;
  *(v37 + 16) = v100;
  *(v37 + 32) = v38;
  v39 = v34[4];
  v39(v37 + ((v36 + 48) & ~v36), v35, v32);
  v40 = v39;
  v88 = v39;
  swift_checkMetadataState();
  v41 = v70;
  v42 = v66;
  View.sheet<A>(isPresented:onDismiss:content:)();

  (*(v85 + 8))(v42, v41);
  v43 = v98;
  (v94)(v98, v97, v32);
  type metadata accessor for MainActor();
  v44 = static MainActor.shared.getter();
  v45 = swift_allocObject();
  *(v45 + 16) = v44;
  *(v45 + 24) = &protocol witness table for MainActor;
  v46 = v99;
  *(v45 + 32) = v100;
  *(v45 + 48) = v46;
  v40(v45 + ((v36 + 64) & ~v36), v43, v32);
  v47 = v90;
  v48 = v76;
  v49 = OpaqueTypeConformance2;
  j___sScP13userInitiatedScPvgZ();
  v50 = v74;
  v51 = v45;
  v52 = v95;
  sub_10000250C(0, v47, 0xD000000000000023, (v89 | 0x8000000000000000), 131, &unk_1001C24A0, v51, v74, v48, v49);
  (*(v91 + 8))(v47, v92);
  (*(v81 + 8))(v52, v48);
  v53 = v98;
  (v94)(v98, v97, v32);
  v54 = v87;
  v55 = swift_allocObject();
  v56 = v99;
  *(v55 + 16) = v100;
  *(v55 + 32) = v56;
  (v88)(v55 + v54, v53, v32);
  v108 = v48;
  v109 = v49;
  v57 = swift_getOpaqueTypeConformance2();
  v58 = v77;
  v59 = v78;
  View.onDisappear(perform:)();

  (*(v83 + 8))(v50, v59);
  v106 = v57;
  v107 = &protocol witness table for _AppearanceActionModifier;
  v60 = v82;
  v61 = swift_getWitnessTable();
  v62 = v79;
  sub_1000EE87C(v58, v60, v61);
  v63 = *(v84 + 8);
  v63(v58, v60);
  sub_1000EE87C(v62, v60, v61);
  return (v63)(v62, v60);
}

uint64_t sub_10016BC64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v95 = a4;
  v122 = a1;
  v116 = a6;
  v86 = sub_1000024C4(&qword_10022AB18);
  __chkstk_darwin(v86);
  v84 = (&v83 - v9);
  v89 = sub_1000024C4(&qword_10022AB20);
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v83 - v10;
  v120 = sub_1000024C4(&qword_10022AB28);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v85 = &v83 - v11;
  v114 = sub_1000024C4(&qword_10022AB10);
  v12 = __chkstk_darwin(v114);
  v115 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v121 = &v83 - v14;
  v106 = type metadata accessor for AccessibilityTraits();
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v102 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AccessibilityChildBehavior();
  v126 = *(v118 - 8);
  __chkstk_darwin(v118);
  v117 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1000024C4(&qword_10022AB30);
  __chkstk_darwin(v99);
  v96 = (&v83 - v17);
  v100 = sub_1000024C4(&qword_10022AB38);
  v101 = *(v100 - 8);
  __chkstk_darwin(v100);
  v97 = &v83 - v18;
  v125 = sub_1000024C4(&qword_10022AB40);
  __chkstk_darwin(v125);
  v98 = &v83 - v19;
  v113 = sub_1000024C4(&qword_10022AB08);
  v112 = *(v113 - 8);
  v20 = __chkstk_darwin(v113);
  v111 = &v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v124 = &v83 - v22;
  v142 = a3;
  v143 = a5;
  v90 = a5;
  v93 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v94 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  v23 = type metadata accessor for ZStack();
  v110 = &protocol conformance descriptor for ZStack<A>;
  WitnessTable = swift_getWitnessTable();
  v142 = v23;
  v143 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v25 = type metadata accessor for ZStack();
  v26 = *(v25 - 8);
  v27 = __chkstk_darwin(v25);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v83 - v30;
  static Alignment.bottomTrailing.getter();
  v32 = a2;
  v91 = a2;
  v132 = a2;
  v133 = a3;
  v33 = a3;
  v92 = a3;
  v34 = v95;
  v134 = v95;
  v135 = a5;
  v35 = v122;
  v136 = v122;
  ZStack.init(alignment:content:)();
  v36 = swift_getWitnessTable();
  v109 = v31;
  v103 = v36;
  sub_1000EE87C(v29, v25, v36);
  v104 = v26;
  v37 = *(v26 + 8);
  v123 = v29;
  v110 = v25;
  v108 = v26 + 8;
  v107 = v37;
  v37(v29, v25);
  v38 = static HorizontalAlignment.center.getter();
  v39 = v96;
  *v96 = v38;
  *(v39 + 8) = 0x4008000000000000;
  *(v39 + 16) = 0;
  v40 = sub_1000024C4(&qword_10022AB48);
  v41 = v90;
  sub_10016E3A4(v35, v32, v33, v34, v90, v39 + *(v40 + 44));
  v42 = v117;
  static AccessibilityChildBehavior.combine.getter();
  v43 = sub_10000BFFC(&qword_10022AB50, &qword_10022AB30);
  v44 = v97;
  v45 = v99;
  View.accessibilityElement(children:)();
  v46 = v126[1];
  ++v126;
  v83 = v46;
  v46(v42, v118);
  sub_1000050C4(v39, &qword_10022AB30);
  v47 = v102;
  static AccessibilityTraits.isHeader.getter();
  v142 = v45;
  v143 = v43;
  v48 = v41;
  swift_getOpaqueTypeConformance2();
  v49 = v98;
  v50 = v100;
  View.accessibilityAddTraits(_:)();
  (*(v105 + 8))(v47, v106);
  (*(v101 + 8))(v44, v50);
  v51 = v91;
  v127 = v91;
  v52 = v92;
  v128 = v92;
  v129 = v34;
  v130 = v48;
  v53 = v122;
  v131 = v122;
  v54 = sub_1000024C4(&qword_10022AB58);
  v55 = sub_1001713B4();
  v56 = sub_10000BFFC(&qword_10022AB68, &qword_10022AB58);
  v106 = v54;
  v105 = v55;
  v102 = v56;
  View.accessibilityLabel<A>(content:)();
  sub_1000050C4(v49, &qword_10022AB40);
  v57 = v51;
  v142 = v51;
  v143 = v52;
  v58 = v34;
  v144 = v34;
  v145 = v48;
  type metadata accessor for HeaderModule();
  v59 = v53;
  sub_10016AEEC();
  LOBYTE(v54) = sub_10002DE48();

  v60 = 1;
  if (v54)
  {
    v61 = static HorizontalAlignment.center.getter();
    v62 = v84;
    *v84 = v61;
    *(v62 + 8) = 0x4020000000000000;
    *(v62 + 16) = 0;
    v63 = sub_1000024C4(&qword_10022AB90);
    sub_10016EDE8(v53, v51, v52, v34, v48, v62 + *(v63 + 44));
    v64 = v117;
    static AccessibilityChildBehavior.combine.getter();
    v65 = sub_10000BFFC(&qword_10022AB80, &qword_10022AB18);
    v66 = v87;
    v67 = v86;
    View.accessibilityElement(children:)();
    v83(v64, v118);
    v68 = sub_1000050C4(v62, &qword_10022AB18);
    v126 = &v83;
    __chkstk_darwin(v68);
    *(&v83 - 6) = v57;
    *(&v83 - 5) = v52;
    *(&v83 - 4) = v58;
    *(&v83 - 3) = v48;
    *(&v83 - 2) = v59;
    sub_1000024C4(&qword_10022AB78);
    v142 = v67;
    v143 = v65;
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_10022AB88, &qword_10022AB78);
    v69 = v85;
    v70 = v89;
    View.accessibilityLabel<A>(content:)();
    (*(v88 + 8))(v66, v70);
    (*(v119 + 32))(v121, v69, v120);
    v60 = 0;
  }

  v71 = v121;
  (*(v119 + 56))(v121, v60, 1, v120);
  v72 = v123;
  v73 = v109;
  v74 = v110;
  (*(v104 + 16))(v123, v109, v110);
  v141[0] = v72;
  v75 = v112;
  v76 = v111;
  v77 = v124;
  v78 = v113;
  (*(v112 + 16))(v111, v124, v113);
  v141[1] = v76;
  v79 = v115;
  sub_10000BEB8(v71, v115, &qword_10022AB10);
  v140[0] = v74;
  v140[1] = v78;
  v140[2] = v114;
  v137 = v103;
  v141[2] = v79;
  v142 = v125;
  v143 = v106;
  v144 = v105;
  v145 = v102;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v139 = sub_1001714E0();
  sub_1000E76FC(v141, 3uLL, v140);
  sub_1000050C4(v71, &qword_10022AB10);
  v80 = *(v75 + 8);
  v80(v77, v78);
  v81 = v107;
  v107(v73, v74);
  sub_1000050C4(v79, &qword_10022AB10);
  v80(v76, v78);
  return v81(v123, v74);
}

uint64_t sub_10016CBD8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v107 = a4;
  v105 = a2;
  v94 = a1;
  v104 = a6;
  v120 = a2;
  v121 = a3;
  *&v106 = a3;
  v122 = a4;
  v123 = a5;
  v110 = type metadata accessor for HeaderModule();
  v88 = *(v110 - 8);
  v85[1] = *(v88 + 64);
  __chkstk_darwin(v110);
  v86 = v85 - v8;
  v87 = type metadata accessor for PlayButtonView();
  __chkstk_darwin(v87);
  v90 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1000024C4(&qword_10022AC28);
  __chkstk_darwin(v100);
  v91 = v85 - v10;
  v109 = sub_1000024C4(&qword_10022AC30);
  v102 = *(v109 - 8);
  v11 = __chkstk_darwin(v109);
  v93 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v92 = v85 - v13;
  v101 = sub_1000024C4(&qword_10022AB00);
  v14 = __chkstk_darwin(v101);
  v103 = v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v108 = v85 - v16;
  v99 = type metadata accessor for AccessibilityChildBehavior();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v18 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = a3;
  v121 = a5;
  v96 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  WitnessTable = swift_getWitnessTable();
  v19 = type metadata accessor for ZStack();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v85 - v21;
  v23 = swift_getWitnessTable();
  v120 = v19;
  v121 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v111 = *(OpaqueTypeMetadata2 - 8);
  v25 = __chkstk_darwin(OpaqueTypeMetadata2);
  v27 = (v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v25);
  v29 = v85 - v28;
  static Alignment.topLeading.getter();
  v112 = v105;
  v113 = v106;
  v114 = v107;
  v115 = a5;
  v89 = a5;
  v30 = v94;
  v116 = v94;
  v31 = v109;
  ZStack.init(alignment:content:)();
  static AccessibilityChildBehavior.combine.getter();
  View.accessibilityElement(children:)();
  v98[1](v18, v99);
  (*(v20 + 8))(v22, v19);
  v120 = v19;
  v121 = v23;
  v32 = v108;
  v33 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  WitnessTable = v29;
  v95 = OpaqueTypeConformance2;
  sub_1000EE87C(v27, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v36 = v111 + 8;
  v35 = *(v111 + 8);
  v98 = v27;
  v99 = OpaqueTypeMetadata2;
  v96 = v35;
  v35(v27, OpaqueTypeMetadata2);
  sub_10016AEEC();
  LOBYTE(v18) = sub_10002E1E0();

  if (v18)
  {
    v37 = v110;
    sub_10016AEEC();
    v38 = sub_10002E23C();

    v39 = v88;
    v40 = v86;
    (*(v88 + 16))(v86, v30, v37);
    v41 = (*(v39 + 80) + 48) & ~*(v39 + 80);
    v42 = swift_allocObject();
    v43 = v106;
    *(v42 + 2) = v105;
    *(v42 + 3) = v43;
    v44 = v89;
    *(v42 + 4) = v107;
    *(v42 + 5) = v44;
    (*(v39 + 32))(&v42[v41], v40, v37);
    v45 = v90;
    *v90 = v38;
    *(v45 + 8) = sub_100172BD0;
    *(v45 + 16) = v42;
    v46 = *(v87 + 20);
    *(v45 + v46) = swift_getKeyPath();
    sub_1000024C4(&qword_100222A00);
    swift_storeEnumTagMultiPayload();
    sub_1000024C4(&qword_100222388);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001B3B50;
    LOBYTE(v37) = static Edge.Set.bottom.getter();
    *(inited + 32) = v37;
    v48 = static Edge.Set.trailing.getter();
    *(inited + 33) = v48;
    v49 = Edge.Set.init(rawValue:)();
    Edge.Set.init(rawValue:)();
    if (Edge.Set.init(rawValue:)() != v37)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    Edge.Set.init(rawValue:)();
    v50 = Edge.Set.init(rawValue:)();
    v85[0] = v36;
    if (v50 != v48)
    {
      v49 = Edge.Set.init(rawValue:)();
    }

    EdgeInsets.init(_all:)();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v91;
    sub_100172CFC(v45, v91, type metadata accessor for PlayButtonView);
    v60 = v59 + *(v100 + 36);
    *v60 = v49;
    *(v60 + 8) = v52;
    *(v60 + 16) = v54;
    *(v60 + 24) = v56;
    *(v60 + 32) = v58;
    *(v60 + 40) = 0;
    sub_10016AEEC();

    v107 = sub_1000024C4(&qword_100221A38);
    v61 = swift_allocObject();
    v106 = xmmword_1001B49B0;
    *(v61 + 16) = xmmword_1001B49B0;
    sub_10016AEEC();
    v62 = sub_10002DD28();
    v64 = v63;

    *(v61 + 56) = &type metadata for String;
    v105 = sub_100017D20();
    *(v61 + 64) = v105;
    *(v61 + 32) = v62;
    *(v61 + 40) = v64;
    v65 = String.init(format:_:)();
    v67 = v66;

    v120 = v65;
    v121 = v67;
    sub_10016AEEC();
    sub_10002E23C();

    sub_1001728C0();
    v90 = sub_10001877C();
    v68 = v93;
    View.accessibilityLabel<A>(_:isEnabled:)();

    sub_1000050C4(v59, &qword_10022AC28);
    sub_10016AEEC();

    v69 = swift_allocObject();
    *(v69 + 16) = v106;
    sub_10016AEEC();
    v70 = sub_10002DD28();
    v72 = v71;

    v73 = v105;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = v73;
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    v74 = String.init(format:_:)();
    v76 = v75;

    v120 = v74;
    v121 = v76;
    sub_10016AEEC();
    sub_10002E23C();

    v77 = v92;
    v31 = v109;
    ModifiedContent<>.accessibilityLabel<A>(_:isEnabled:)();

    sub_1000050C4(v68, &qword_10022AC30);
    v32 = v108;
    sub_10001AE00(v77, v108, &qword_10022AC30);
    v33 = 0;
  }

  (*(v102 + 56))(v32, v33, 1, v31);
  v78 = v98;
  v79 = WitnessTable;
  v80 = v99;
  (*(v111 + 16))(v98, WitnessTable, v99);
  v120 = v78;
  v81 = v103;
  sub_10000BEB8(v32, v103, &qword_10022AB00);
  v121 = v81;
  v119[0] = v80;
  v119[1] = v101;
  v117 = v95;
  v118 = sub_10017275C();
  sub_1000E76FC(&v120, 2uLL, v119);
  sub_1000050C4(v32, &qword_10022AB00);
  v82 = v79;
  v83 = v96;
  v96(v82, v80);
  sub_1000050C4(v81, &qword_10022AB00);
  return v83(v78, v80);
}

uint64_t sub_10016D918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  WitnessTable = a4;
  v75 = a6;
  v72 = sub_1000024C4(&qword_10022AC58);
  v70 = *(v72 - 8);
  __chkstk_darwin(v72);
  v60 = &v58 - v10;
  v71 = sub_1000024C4(&qword_10022AAF8);
  v11 = __chkstk_darwin(v71);
  v74 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v73 = &v58 - v13;
  v69 = type metadata accessor for AccessibilityTraits();
  v67 = *(v69 - 8);
  __chkstk_darwin(v69);
  v66 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for AccessibilityChildBehavior();
  v79 = *(v76 - 8);
  v15 = __chkstk_darwin(v76);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = *(a3 - 8);
  __chkstk_darwin(v15);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v83 = a3;
  *(&v83 + 1) = a5;
  v63 = &opaque type descriptor for <<opaque return type of View.accessibilityElement(children:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v65 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v22 = &v58 - v21;
  type metadata accessor for AccessibilityAttachmentModifier();
  v62 = type metadata accessor for ModifiedContent();
  v77 = *(v62 - 8);
  v23 = __chkstk_darwin(v62);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v58 - v27;
  __chkstk_darwin(v26);
  v78 = &v58 - v29;
  *&v83 = a2;
  *(&v83 + 1) = a3;
  *&v84 = WitnessTable;
  *(&v84 + 1) = a5;
  v61 = type metadata accessor for HeaderModule();
  (*(a1 + *(v61 + 52)))();
  static AccessibilityChildBehavior.ignore.getter();
  View.accessibilityElement(children:)();
  v30 = *(v79 + 8);
  v59 = v17;
  v79 += 8;
  v58 = v30;
  v30(v17, v76);
  (*(v64 + 8))(v19, a3);
  v31 = v66;
  static AccessibilityTraits.isImage.getter();
  *&v83 = a3;
  *(&v83 + 1) = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityAddTraits(_:)();
  (*(v67 + 8))(v31, v69);
  (*(v65 + 8))(v22, OpaqueTypeMetadata2);
  v33 = v62;
  sub_10016AEEC();
  v34 = sub_10002DB78();
  v36 = v35;

  *&v83 = v34;
  *(&v83 + 1) = v36;
  sub_10001877C();
  ModifiedContent<>.accessibilityLabel<A>(_:)();

  v37 = *(v77 + 8);
  v37(v25, v33);
  v38 = sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v88 = OpaqueTypeConformance2;
  v89 = v38;
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v28, v33, WitnessTable);
  v69 = v28;
  v37(v28, v33);
  sub_10016AEEC();
  LOBYTE(v36) = sub_10002D91C();

  if (v36)
  {
    v39 = sub_10016AEEC();
    v40 = (v39 + *(*v39 + 176));
    v41 = *v40;
    v42 = v40[1];

    v43 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    LOBYTE(v86) = 0;
    *&v80 = v41;
    *(&v80 + 1) = v42;
    LOBYTE(v81) = v43;
    *(&v81 + 1) = v44;
    *v82 = v45;
    *&v82[8] = v46;
    *&v82[16] = v47;
    v82[24] = 0;
    v48 = v59;
    static AccessibilityChildBehavior.ignore.getter();
    sub_1000024C4(&qword_10022AC68);
    sub_100173378(&qword_10022AC70, &qword_10022AC68, &unk_1001C2618, sub_100172E58);
    v49 = v60;
    View.accessibilityElement(children:)();
    v58(v48, v76);
    v83 = v80;
    v84 = v81;
    *v85 = *v82;
    *&v85[9] = *&v82[9];
    sub_1000050C4(&v83, &qword_10022AC68);
    v50 = v70;
    v51 = v73;
    v52 = v49;
    v53 = v72;
    (*(v70 + 32))(v73, v52, v72);
    (*(v50 + 56))(v51, 0, 1, v53);
  }

  else
  {
    v51 = v73;
    (*(v70 + 56))(v73, 1, 1, v72);
  }

  v54 = v69;
  v55 = v78;
  (*(v77 + 16))(v69, v78, v33);
  *&v83 = v54;
  v56 = v74;
  sub_10000BEB8(v51, v74, &qword_10022AAF8);
  *(&v83 + 1) = v56;
  *&v80 = v33;
  *(&v80 + 1) = v71;
  v86 = WitnessTable;
  v87 = sub_100172D64();
  sub_1000E76FC(&v83, 2uLL, &v80);
  sub_1000050C4(v51, &qword_10022AAF8);
  v37(v55, v33);
  sub_1000050C4(v56, &qword_10022AAF8);
  return (v37)(v54, v33);
}

uint64_t sub_10016E2AC(uint64_t a1)
{
  v2 = type metadata accessor for HeaderModule();
  sub_10016AEEC();
  sub_10002EB28();

  sub_10016AEEC();
  if (*(a1 + *(v2 + 64)))
  {

    sub_10002F350(v3);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_10016E3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a6;
  v11 = sub_1000024C4(&qword_10022ABF0);
  v12 = __chkstk_darwin(v11 - 8);
  v88 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v87 = &v68 - v14;
  v15 = type metadata accessor for ContentSizeCategory();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v68 - v20;
  v22 = sub_1000024C4(&qword_10022ABF8);
  v84 = *(v22 - 8);
  v85 = v22;
  v23 = __chkstk_darwin(v22);
  v86 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v78 = &v68 - v26;
  __chkstk_darwin(v25);
  v90 = &v68 - v27;
  *&v103 = a2;
  *(&v103 + 1) = a3;
  *&v104 = a4;
  *(&v104 + 1) = a5;
  v79 = type metadata accessor for HeaderModule();
  v83 = a1;
  sub_10016AEEC();
  sub_10002FB3C();

  static Font.title.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v28 = Text.font(_:)();
  v81 = v29;
  v82 = v28;
  v31 = v30;
  v80 = v32;

  KeyPath = swift_getKeyPath();
  v73 = *(v79 + 60);
  sub_10003A100(v21);
  v34 = *(v16 + 104);
  v72 = enum case for ContentSizeCategory.accessibilityMedium(_:);
  v70 = v16 + 104;
  v71 = v34;
  v34(v19);
  LOBYTE(a5) = sub_100172140(v21, v19);
  v35 = *(v16 + 8);
  v75 = v19;
  v35(v19, v15);
  v74 = v21;
  v76 = v16 + 8;
  v77 = v15;
  v35(v21, v15);
  if (a5)
  {
    v36 = 3;
  }

  else
  {
    v36 = 2;
  }

  v37 = swift_getKeyPath();
  v109 = v31 & 1;
  v108 = 0;
  *&v98 = v82;
  *(&v98 + 1) = v81;
  LOBYTE(v99) = v31 & 1;
  *(&v99 + 1) = v80;
  *&v100 = KeyPath;
  BYTE8(v100) = 1;
  *&v101 = v37;
  *(&v101 + 1) = v36;
  v102 = 0;
  v38 = sub_1000024C4(&qword_10022AC00);
  v39 = sub_1001725BC();
  View.accessibilityIdentifier(_:)();
  v105 = v100;
  v106 = v101;
  v107 = v102;
  v103 = v98;
  v104 = v99;
  sub_1000050C4(&v103, &qword_10022AC00);
  sub_10016AEEC();
  sub_10002FBC8();
  v41 = v40;

  if (v41)
  {
    v80 = v39;
    v81 = v38;
    v82 = v35;
    static Font.subheadline.getter();
    v42 = Text.font(_:)();
    v44 = v43;
    v46 = v45;

    if (qword_100220B98 != -1)
    {
      swift_once();
    }

    *&v98 = qword_1002390B8;

    v79 = Text.foregroundStyle<A>(_:)();
    v69 = v47;
    v49 = v48;
    v51 = v50;
    sub_100017398(v42, v44, v46 & 1);

    v52 = swift_getKeyPath();
    v53 = v74;
    sub_10003A100(v74);
    v54 = v75;
    v55 = v77;
    v71(v75, v72, v77);
    v56 = sub_100172140(v53, v54);
    v57 = v82;
    v82(v54, v55);
    v57(v53, v55);
    if (v56)
    {
      v58 = 3;
    }

    else
    {
      v58 = 2;
    }

    v59 = swift_getKeyPath();
    v97 = v49 & 1;
    v96 = 0;
    *&v91 = v79;
    *(&v91 + 1) = v69;
    LOBYTE(v92) = v49 & 1;
    *(&v92 + 1) = v51;
    *&v93 = v52;
    BYTE8(v93) = 1;
    *&v94 = v59;
    *(&v94 + 1) = v58;
    v95 = 0;
    v60 = v78;
    View.accessibilityIdentifier(_:)();
    v100 = v93;
    v101 = v94;
    v102 = v95;
    v98 = v91;
    v99 = v92;
    sub_1000050C4(&v98, &qword_10022AC00);
    v61 = v87;
    sub_10001AE00(v60, v87, &qword_10022ABF8);
    (*(v84 + 56))(v61, 0, 1, v85);
  }

  else
  {
    v61 = v87;
    (*(v84 + 56))(v87, 1, 1, v85);
  }

  v62 = v90;
  v63 = v86;
  sub_10000BEB8(v90, v86, &qword_10022ABF8);
  v64 = v88;
  sub_10000BEB8(v61, v88, &qword_10022ABF0);
  v65 = v89;
  sub_10000BEB8(v63, v89, &qword_10022ABF8);
  v66 = sub_1000024C4(&qword_10022AC20);
  sub_10000BEB8(v64, v65 + *(v66 + 48), &qword_10022ABF0);
  sub_1000050C4(v61, &qword_10022ABF0);
  sub_1000050C4(v62, &qword_10022ABF8);
  sub_1000050C4(v64, &qword_10022ABF0);
  return sub_1000050C4(v63, &qword_10022ABF8);
}

uint64_t sub_10016EB78@<X0>(uint64_t a1@<X4>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  type metadata accessor for HeaderModule();
  sub_10016AEEC();
  sub_10002FB3C();

  sub_10001877C();
  v4 = Text.init<A>(_:)();
  v6 = v5;
  v21 = v7;
  v9 = v8;
  sub_10016AEEC();
  v10 = sub_10002FD64();
  v12 = v11;

  if (v12)
  {
    v22 = v10;
    v23 = v12;
    Text.init<A>(_:)();
  }

  else
  {
    sub_10016AEEC();
    v13 = sub_10002FBC8();
    v15 = v14;

    if (!v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = -1;
      goto LABEL_6;
    }

    v22 = v13;
    v23 = v15;
    Text.init<A>(_:)();
  }

  _ConditionalContent<>.init(storage:)();
  v16 = v22;
  v15 = v23;
  v17 = a1;
  v18 = a2;
  v19 = v26;
  sub_10017205C(v22, v23, a1);
LABEL_6:
  sub_1000187D8(v4, v6, v21 & 1);

  sub_100172044(v16, v15, v17, v18, v19);
  sub_100172098(v16, v15, v17, v18, v19);
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v21 & 1;
  *(a3 + 24) = v9;
  *(a3 + 32) = v16;
  *(a3 + 40) = v15;
  *(a3 + 48) = v17;
  *(a3 + 56) = v18;
  *(a3 + 64) = v19;
  sub_100172098(v16, v15, v17, v18, v19);
  sub_100017398(v4, v6, v21 & 1);
}

uint64_t sub_10016EDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v106 = a6;
  v86 = type metadata accessor for AttributionModule();
  __chkstk_darwin(v86);
  v85 = (&v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1000024C4(&qword_10022ABA8);
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin(v12);
  v84 = &v80 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = type metadata accessor for Optional();
  v80 = *(v81 - 8);
  v15 = __chkstk_darwin(v81);
  v87 = &v80 - v16;
  v102 = AssociatedTypeWitness;
  v101 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v15);
  v88 = &v80 - v17;
  v18 = sub_1000024C4(&qword_10022ABB0);
  v19 = __chkstk_darwin(v18 - 8);
  v103 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v107 = &v80 - v21;
  v98 = type metadata accessor for GlassProminentButtonStyle();
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v95 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v117 = a2;
  *(&v117 + 1) = a3;
  *&v118 = a4;
  *(&v118 + 1) = a5;
  v23 = type metadata accessor for HeaderModule();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = &v80 - v25;
  v94 = sub_1000024C4(&qword_10022ABB8);
  __chkstk_darwin(v94);
  v89 = &v80 - v27;
  v96 = sub_1000024C4(&qword_10022ABC0);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v80 - v28;
  v29 = sub_1000024C4(&qword_10022ABC8);
  v30 = __chkstk_darwin(v29 - 8);
  v100 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v90 = &v80 - v32;
  v33 = *(v24 + 16);
  v91 = a1;
  v92 = v23;
  v33(v26, a1, v23);
  v34 = (*(v24 + 80) + 48) & ~*(v24 + 80);
  v35 = swift_allocObject();
  *(v35 + 2) = a2;
  *(v35 + 3) = a3;
  *(v35 + 4) = a4;
  *(v35 + 5) = a5;
  (*(v24 + 32))(&v35[v34], v26, v23);
  v108 = a2;
  v109 = a3;
  v110 = a4;
  v111 = a5;
  v112 = a1;
  sub_1000024C4(&qword_100225910);
  sub_1000C2318();
  v36 = v89;
  Button.init(action:label:)();
  v83 = a2;
  v82 = a4;
  sub_10016A880();
  static Alignment.center.getter();
  v37 = 1;
  _FrameLayout.init(width:height:alignment:)();
  v38 = v94;
  v39 = (v36 + *(v94 + 36));
  v40 = v118;
  *v39 = v117;
  v39[1] = v40;
  v39[2] = v119;
  v41 = v95;
  GlassProminentButtonStyle.init()();
  v42 = sub_10017172C();
  v43 = sub_10017297C(&qword_100225810, &type metadata accessor for GlassProminentButtonStyle);
  v44 = v93;
  v45 = v98;
  View.buttonStyle<A>(_:)();
  v46 = v90;
  (*(v99 + 8))(v41, v45);
  sub_1000050C4(v36, &qword_10022ABB8);
  v113 = v38;
  v114 = v45;
  v47 = v107;
  v115 = v42;
  v116 = v43;
  swift_getOpaqueTypeConformance2();
  v48 = v96;
  View.accessibilityIdentifier(_:)();
  (*(v97 + 8))(v44, v48);
  v49 = sub_10016AEEC();
  LOBYTE(v48) = sub_10002DF88(v49);

  if (v48)
  {
    sub_10016AEEC();
    v50 = v87;
    sub_10002E16C();

    if ((*(v101 + 48))(v50, 1, v102) == 1)
    {
      (*(v80 + 8))(v50, v81);
      v37 = 1;
    }

    else
    {
      v51 = v50;
      v52 = v102;
      (*(v101 + 32))(v88, v51, v102);
      sub_10016AEEC();
      v99 = sub_10002DB04();
      v98 = v53;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v97 = (*(AssociatedConformanceWitness + 16))(v52, AssociatedConformanceWitness);
      v96 = v55;
      v56 = type metadata accessor for AttributionViewModel();
      v57 = *(v56 + 32);
      v58 = type metadata accessor for URL();
      v59 = v85;
      (*(*(v58 - 8) + 56))(v85 + v57, 1, 1, v58);
      sub_10016AEEC();
      LODWORD(v95) = sub_10002EC40();

      v60 = objc_opt_self();
      v61 = [v60 mainBundle];
      v120._object = 0xE000000000000000;
      v62._countAndFlagsBits = 0xD000000000000031;
      v62._object = 0x80000001001C63A0;
      v63._countAndFlagsBits = 0;
      v63._object = 0xE000000000000000;
      v120._countAndFlagsBits = 0;
      v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v62, 0, v61, v63, v120);

      *v59 = v64;
      v65 = [v60 mainBundle];
      v121._object = 0xE000000000000000;
      v66._countAndFlagsBits = 0xD00000000000002CLL;
      v66._object = 0x80000001001C63E0;
      v67._countAndFlagsBits = 0;
      v67._object = 0xE000000000000000;
      v121._countAndFlagsBits = 0;
      v68 = NSLocalizedString(_:tableName:bundle:value:comment:)(v66, 0, v65, v67, v121);

      v59[1] = v68;
      v69 = v98;
      v59[2]._countAndFlagsBits = v99;
      v59[2]._object = v69;
      v70 = v96;
      v59[3]._countAndFlagsBits = v97;
      v59[3]._object = v70;
      v71 = *(v56 + 36);
      v47 = v107;
      *(&v59->_countAndFlagsBits + v71) = v95;
      v72 = (&v59->_countAndFlagsBits + *(v86 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      *v72 = EnvironmentObject.init()();
      v72[1] = v73;
      sub_10017297C(&qword_100224A20, type metadata accessor for AttributionModule);
      v74 = v84;
      View.accessibilityIdentifier(_:)();
      sub_100096258(v59);
      (*(v101 + 8))(v88, v102);
      sub_10001AE00(v74, v47, &qword_10022ABA8);
      v37 = 0;
    }
  }

  (*(v104 + 56))(v47, v37, 1, v105);
  v75 = v100;
  sub_10000BEB8(v46, v100, &qword_10022ABC8);
  v76 = v103;
  sub_10000BEB8(v47, v103, &qword_10022ABB0);
  v77 = v106;
  sub_10000BEB8(v75, v106, &qword_10022ABC8);
  v78 = sub_1000024C4(&qword_10022ABE8);
  sub_10000BEB8(v76, v77 + *(v78 + 48), &qword_10022ABB0);
  sub_1000050C4(v47, &qword_10022ABB0);
  sub_1000050C4(v46, &qword_10022ABC8);
  sub_1000050C4(v76, &qword_10022ABB0);
  return sub_1000050C4(v75, &qword_10022ABC8);
}

uint64_t sub_10016FAFC(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v35 = *(v3 - 8);
  __chkstk_darwin(v3);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for OpenURLAction();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  v29 = *(a1 + 16);
  v30 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v28 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v11 = &v27 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v9);
  v14 = &v27 - v13;
  sub_10016AEEC();
  v15 = sub_10002E0A4();

  sub_10016AEEC();
  if (v15)
  {
    v27 = v3;
    v16 = sub_10002DDD4();

    v36 = v16;
    type metadata accessor for Array();
    swift_getWitnessTable();
    Collection.first.getter();
    if ((*(v12 + 48))(v11, 1, AssociatedTypeWitness) == 1)
    {
      (*(v28 + 8))(v11, v8);
    }

    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);

    v19 = v31;
    sub_100039C90(v31);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = v33;
    (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
    OpenURLAction.callAsFunction(_:)();
    (*(v35 + 8))(v21, v27);
    (*(v32 + 8))(v19, v34);
    sub_10016AEEC();
    v22 = (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v24 = *(v1 + *(a1 + 64));
    if (v24)
    {
      v25 = v22;
      v26 = v23;

      sub_10002EFE8(v25, v26, v24);

      return (*(v12 + 8))(v14, AssociatedTypeWitness);
    }

LABEL_11:
    type metadata accessor for RemoteViewConfiguration();
    sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
    return result;
  }

  sub_10002CF64(1);

  sub_10016AEEC();
  if (!*(v1 + *(a1 + 64)))
  {
    goto LABEL_11;
  }

  sub_10002EC88(v18);
}

__n128 sub_100170050@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  type metadata accessor for HeaderModule();
  sub_10016AEEC();

  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  static Font.body.getter();
  static Font.Weight.bold.getter();
  Font.weight(_:)();

  v11 = Text.font(_:)();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_100017398(v6, v8, v10 & 1);

  LOBYTE(v6) = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  *&v27[39] = v30;
  *a5 = v11;
  *(a5 + 8) = v13;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v17;
  *(a5 + 32) = v6;
  *(a5 + 40) = v19;
  *(a5 + 48) = v21;
  *(a5 + 56) = v23;
  *(a5 + 64) = v25;
  *(a5 + 72) = 0;
  *(a5 + 137) = *&v27[64];
  *(a5 + 153) = *&v27[80];
  *(a5 + 169) = *&v27[96];
  *(a5 + 184) = *(&v34 + 1);
  *(a5 + 73) = *v27;
  *(a5 + 89) = *&v27[16];
  result = *&v27[32];
  *(a5 + 105) = *&v27[32];
  *(a5 + 121) = *&v27[48];
  return result;
}

uint64_t sub_1001702B0@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t *a5@<X8>)
{
  v80 = a5;
  v9 = type metadata accessor for AttributionModule();
  v78 = *(v9 - 8);
  v79 = v9;
  __chkstk_darwin(v9);
  v70 = &v63[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v67 = *(v12 - 8);
  v68 = v12;
  v13 = __chkstk_darwin(v12);
  v15 = &v63[-v14];
  v72 = AssociatedTypeWitness;
  v74 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v13);
  v71 = &v63[-v16];
  v17 = sub_1000024C4(&qword_10022AB98);
  v18 = __chkstk_darwin(v17 - 8);
  v77 = &v63[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v21 = &v63[-v20];
  v81 = a1;
  v82 = a2;
  v69 = a3;
  v83 = a3;
  v84 = a4;
  type metadata accessor for HeaderModule();
  sub_10016AEEC();

  v22 = Text.init(_:tableName:bundle:comment:)();
  v75 = v23;
  v76 = v22;
  v73 = v24;
  v26 = v25;
  v27 = sub_10016AEEC();
  LOBYTE(AssociatedTypeWitness) = sub_10002DF88(v27);

  if (AssociatedTypeWitness)
  {
    sub_10016AEEC();
    sub_10002E16C();

    if ((*(v74 + 48))(v15, 1, v72) != 1)
    {
      v30 = v15;
      v31 = v72;
      (*(v74 + 32))(v71, v30, v72);
      sub_10016AEEC();
      v32 = sub_10002DB04();
      v67 = v33;
      v68 = v32;

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v69 = (*(AssociatedConformanceWitness + 16))(v31, AssociatedConformanceWitness);
      v66 = v35;
      v65 = type metadata accessor for AttributionViewModel();
      v36 = *(v65 + 32);
      v37 = type metadata accessor for URL();
      v38 = v70;
      (*(*(v37 - 8) + 56))(v70 + v36, 1, 1, v37);
      sub_10016AEEC();
      v64 = sub_10002EC40();

      v39 = objc_opt_self();
      v40 = [v39 mainBundle];
      v85._object = 0xE000000000000000;
      v41._countAndFlagsBits = 0xD000000000000031;
      v41._object = 0x80000001001C63A0;
      v42._countAndFlagsBits = 0;
      v42._object = 0xE000000000000000;
      v85._countAndFlagsBits = 0;
      v43 = NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v85);

      *v38 = v43;
      v44 = [v39 mainBundle];
      v86._object = 0xE000000000000000;
      v45._object = 0x80000001001C63E0;
      v45._countAndFlagsBits = 0xD00000000000002CLL;
      v46._countAndFlagsBits = 0;
      v46._object = 0xE000000000000000;
      v86._countAndFlagsBits = 0;
      v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v86);

      v38[1] = v47;
      v48 = v67;
      v38[2]._countAndFlagsBits = v68;
      v38[2]._object = v48;
      v49 = v65;
      v50 = v66;
      v38[3]._countAndFlagsBits = v69;
      v38[3]._object = v50;
      *(&v38->_countAndFlagsBits + *(v49 + 36)) = v64;
      v51 = v79;
      v52 = (&v38->_countAndFlagsBits + *(v79 + 20));
      type metadata accessor for RemoteViewConfiguration();
      sub_10017297C(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      v53 = EnvironmentObject.init()();
      v55 = v54;
      (*(v74 + 8))(v71, v31);
      *v52 = v53;
      v52[1] = v55;
      sub_100172CFC(v38, v21, type metadata accessor for AttributionModule);
      v29 = v51;
      v28 = 0;
      goto LABEL_6;
    }

    v67[1](v15, v68);
  }

  v28 = 1;
  v29 = v79;
LABEL_6:
  (*(v78 + 56))(v21, v28, 1, v29);
  v56 = v77;
  sub_10000BEB8(v21, v77, &qword_10022AB98);
  v57 = v80;
  v59 = v75;
  v58 = v76;
  *v80 = v76;
  v57[1] = v59;
  v60 = v73 & 1;
  *(v57 + 16) = v73 & 1;
  v57[3] = v26;
  v61 = sub_1000024C4(&qword_10022ABA0);
  sub_10000BEB8(v56, v57 + *(v61 + 48), &qword_10022AB98);
  sub_1000187D8(v58, v59, v60);

  sub_1000050C4(v21, &qword_10022AB98);
  sub_1000050C4(v56, &qword_10022AB98);
  sub_100017398(v58, v59, v60);
}

uint64_t sub_1001709C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  __chkstk_darwin(v10 - 8);
  v38 = &v32 - v11;
  v12 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v40 = AssociatedTypeWitness;
  v41 = v12;
  v42 = AssociatedConformanceWitness;
  v43 = v14;
  v35 = v14;
  v36 = AssociatedConformanceWitness;
  v15 = v14;
  v16 = type metadata accessor for TicketViewModel();
  __chkstk_darwin(v16 - 8);
  v34 = &v32 - v17;
  v40 = AssociatedTypeWitness;
  v41 = v12;
  v42 = AssociatedConformanceWitness;
  v43 = v15;
  v18 = type metadata accessor for TicketView();
  v37 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v32 - v22;
  v40 = a1;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  type metadata accessor for HeaderModule();
  sub_10016AEEC();
  v24 = sub_10002DB04();
  v32 = v25;
  v33 = v24;

  sub_10016AEEC();
  v26 = v38;
  sub_10002E16C();

  sub_10016AEEC();
  v27 = sub_10002DDD4();

  v28 = v34;
  sub_10015A1D0(v33, v32, v26, v27, v34);
  sub_1000162A8(v28, v21);
  WitnessTable = swift_getWitnessTable();
  sub_1000EE87C(v21, v18, WitnessTable);
  v30 = *(v37 + 8);
  v30(v21, v18);
  sub_1000EE87C(v23, v18, WitnessTable);
  return (v30)(v23, v18);
}

uint64_t sub_100170D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a3;
  type metadata accessor for MainActor();
  v7[11] = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100170DC4);
}

uint64_t sub_100170DC4()
{
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  type metadata accessor for HeaderModule();
  sub_10016AEEC();
  v1 = sub_10002E1E0();

  if (v1)
  {
    sub_10016AEEC();
    sub_10002EAB8();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100170E8C()
{
  type metadata accessor for HeaderModule();
  sub_10016AEEC();
  v0 = sub_10002E1E0();

  if (v0)
  {
    sub_10016AEEC();
    sub_10002EBD4();
  }

  return result;
}

uint64_t sub_100170F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10002CEF0();
  *a1 = result & 1;
  return result;
}

__n128 sub_100170F90(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_100170FA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  type metadata accessor for HeaderModule();

  return sub_1001709C8(v3, v4, v5, v6, a1);
}

uint64_t sub_10017104C()
{
  v1 = type metadata accessor for HeaderModule();
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;
  type metadata accessor for HeaderViewModel();
  v4 = type metadata accessor for Bindable();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  v5 = *(v1 + 56);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for OpenURLAction();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  else
  {
  }

  v7 = *(v1 + 60);
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for ContentSizeCategory();
    (*(*(v8 - 8) + 8))(v3 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100171260()
{
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for HeaderModule() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v0[2];
  v9 = v0[3];
  v10 = swift_task_alloc();
  v1[6] = v10;
  *v10 = v1;
  v10[1] = sub_1000D8A84;

  return sub_100170D24(v8, v9, v0 + v7, v3, v2, v4, v5);
}

unint64_t sub_1001713B4()
{
  result = qword_10022AB60;
  if (!qword_10022AB60)
  {
    sub_10000460C(&qword_10022AB40);
    sub_10000460C(&qword_10022AB30);
    sub_10000BFFC(&qword_10022AB50, &qword_10022AB30);
    swift_getOpaqueTypeConformance2();
    sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB60);
  }

  return result;
}

unint64_t sub_1001714E0()
{
  result = qword_10022AB70;
  if (!qword_10022AB70)
  {
    sub_10000460C(&qword_10022AB10);
    sub_10000460C(&qword_10022AB20);
    sub_10000460C(&qword_10022AB78);
    sub_10000460C(&qword_10022AB18);
    sub_10000BFFC(&qword_10022AB80, &qword_10022AB18);
    swift_getOpaqueTypeConformance2();
    sub_10000BFFC(&qword_10022AB88, &qword_10022AB78);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AB70);
  }

  return result;
}

uint64_t sub_100171680()
{
  type metadata accessor for HeaderModule();
  v0 = type metadata accessor for HeaderModule();
  return sub_10016FAFC(v0);
}

unint64_t sub_10017172C()
{
  result = qword_10022ABD0;
  if (!qword_10022ABD0)
  {
    sub_10000460C(&qword_10022ABB8);
    sub_10000BFFC(&qword_10022ABD8, &qword_10022ABE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022ABD0);
  }

  return result;
}

uint64_t sub_1001717E4()
{
  v0 = type metadata accessor for Color.RGBColorSpace();
  __chkstk_darwin(v0);
  (*(v2 + 104))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for Color.RGBColorSpace.sRGB(_:));
  result = Color.init(_:red:green:blue:opacity:)();
  qword_10022AA70 = result;
  return result;
}

uint64_t sub_1001718CC@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v1 = sub_1000024C4(&qword_10022AC80);
  __chkstk_darwin(v1);
  v3 = &v43 - v2;

  static Font.footnote.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v4 = Text.font(_:)();
  v6 = v5;
  v8 = v7;

  v46 = static Color.white.getter();
  v9 = Text.foregroundStyle<A>(_:)();
  v43 = v10;
  v44 = v9;
  v12 = v11;
  v14 = v13;
  sub_100017398(v4, v6, v8 & 1);

  KeyPath = swift_getKeyPath();
  LOBYTE(v4) = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v12 &= 1u;
  v49 = v12;
  v48 = 0;
  v47 = 0;
  v24 = static Edge.Set.vertical.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v50 = 0;
  v33 = static Alignment.center.getter();
  v34 = &v3[*(v1 + 36)];
  *v34 = v33;
  v34[1] = v35;
  v36 = sub_1000024C4(&qword_10022AC88);
  sub_100171B98(v34 + *(v36 + 44));
  v37 = static Alignment.center.getter();
  v39 = v38;
  v40 = (v34 + *(sub_1000024C4(&qword_10022AC90) + 36));
  *v40 = v37;
  v40[1] = v39;
  v41 = v43;
  *v3 = v44;
  *(v3 + 1) = v41;
  v3[16] = v12;
  *(v3 + 3) = v14;
  *(v3 + 4) = KeyPath;
  *(v3 + 5) = 1;
  v3[48] = 0;
  v3[56] = v4;
  *(v3 + 8) = v17;
  *(v3 + 9) = v19;
  *(v3 + 10) = v21;
  *(v3 + 11) = v23;
  v3[96] = 0;
  v3[104] = v24;
  *(v3 + 14) = v26;
  *(v3 + 15) = v28;
  *(v3 + 16) = v30;
  *(v3 + 17) = v32;
  v3[144] = 0;
  sub_100173294();
  View.accessibilityIdentifier(_:)();
  return sub_1000050C4(v3, &qword_10022AC80);
}

uint64_t sub_100171B98@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v30 = sub_1000024C4(&qword_1002259F8);
  v1 = __chkstk_darwin(v30);
  v31 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v4 = &v29 - v3;
  v5 = sub_1000024C4(&qword_10022ACA8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = (&v29 - v10);
  v12 = &v29 + *(v9 + 44) - v10;
  v13 = type metadata accessor for RoundedRectangle();
  v14 = *(v13 + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = type metadata accessor for RoundedCornerStyle();
  v17 = *(*(v16 - 8) + 104);
  v17(&v12[v14], v15, v16);
  __asm { FMOV            V0.2D, #12.0 }

  v29 = _Q0;
  *v12 = _Q0;
  *&v12[*(sub_1000024C4(&qword_100221C80) + 36)] = 256;
  *v11 = 11;
  v17(&v4[*(v13 + 20)], v15, v16);
  *v4 = v29;
  if (qword_100220C38 != -1)
  {
    swift_once();
  }

  v23 = Color.opacity(_:)();
  v24 = v30;
  *&v4[*(v30 + 52)] = v23;
  *&v4[*(v24 + 56)] = 256;
  sub_10000BEB8(v11, v8, &qword_10022ACA8);
  v25 = v31;
  sub_10000BEB8(v4, v31, &qword_1002259F8);
  v26 = v32;
  sub_10000BEB8(v8, v32, &qword_10022ACA8);
  v27 = sub_1000024C4(&qword_10022ACB0);
  sub_10000BEB8(v25, v26 + *(v27 + 48), &qword_1002259F8);
  sub_1000050C4(v4, &qword_1002259F8);
  sub_1000050C4(v11, &qword_10022ACA8);
  sub_1000050C4(v25, &qword_1002259F8);
  return sub_1000050C4(v8, &qword_10022ACA8);
}

uint64_t sub_100171EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100171F8C@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100171FF0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100172044(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_10017205C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_10017205C(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000187D8(a1, a2, a3 & 1);
}

uint64_t sub_100172098(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1001720B0(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1001720B0(uint64_t a1, uint64_t a2, char a3)
{
  sub_100017398(a1, a2, a3 & 1);
}

uint64_t sub_1001720EC@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.multilineTextAlignment.getter();
  *a1 = result;
  return result;
}

BOOL sub_100172140(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = *(v4 + 16);
  v10(&v18 - v8, a1, v3);
  v11 = *(v4 + 88);
  v12 = v11(v9, v3);
  v13 = 0;
  v14 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v12 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v12 == enum case for ContentSizeCategory.small(_:))
    {
      v13 = 1;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.medium(_:))
    {
      v13 = 2;
      goto LABEL_24;
    }

    if (v12 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v12 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v13 = 4;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v13 = 5;
    }

    else if (v12 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v13 = 6;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v13 = 7;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v13 = 8;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v13 = 9;
    }

    else if (v12 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v13 = 10;
    }

    else
    {
      if (v12 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v9, v3);
LABEL_7:
        v13 = 3;
        goto LABEL_24;
      }

      v13 = 11;
    }
  }

LABEL_24:
  v10(v7, v19, v3);
  v15 = v11(v7, v3);
  if (v15 == v14)
  {
    v16 = 0;
  }

  else if (v15 == enum case for ContentSizeCategory.small(_:))
  {
    v16 = 1;
  }

  else if (v15 == enum case for ContentSizeCategory.medium(_:))
  {
    v16 = 2;
  }

  else
  {
    if (v15 != enum case for ContentSizeCategory.large(_:))
    {
      if (v15 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v16 = 4;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v16 = 5;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v16 = 6;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v16 = 7;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v16 = 8;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v16 = 9;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v16 = 10;
        return v13 >= v16;
      }

      if (v15 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v16 = 11;
        return v13 >= v16;
      }

      (*(v4 + 8))(v7, v3);
    }

    v16 = 3;
  }

  return v13 >= v16;
}

uint64_t sub_100172558@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_1001725BC()
{
  result = qword_10022AC08;
  if (!qword_10022AC08)
  {
    sub_10000460C(&qword_10022AC00);
    sub_100172674();
    sub_10000BFFC(&qword_100221B48, &qword_100221B50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC08);
  }

  return result;
}

unint64_t sub_100172674()
{
  result = qword_10022AC10;
  if (!qword_10022AC10)
  {
    sub_10000460C(&qword_10022AC18);
    sub_10000BFFC(&qword_100223108, &qword_100223110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC10);
  }

  return result;
}

unint64_t sub_10017275C()
{
  result = qword_10022AC38;
  if (!qword_10022AC38)
  {
    sub_10000460C(&qword_10022AB00);
    sub_10017280C(&qword_10022AC40, &qword_10022AC30, &unk_1001C25D0, sub_1001728C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC38);
  }

  return result;
}

uint64_t sub_10017280C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    sub_10017297C(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001728C0()
{
  result = qword_10022AC48;
  if (!qword_10022AC48)
  {
    sub_10000460C(&qword_10022AC28);
    sub_10017297C(&qword_10022AC50, type metadata accessor for PlayButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC48);
  }

  return result;
}

uint64_t sub_10017297C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001729C4()
{
  v1 = type metadata accessor for HeaderModule();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80));
  type metadata accessor for HeaderViewModel();
  v3 = type metadata accessor for Bindable();
  (*(*(v3 - 8) + 8))(v2, v3);

  v4 = *(v1 + 56);
  sub_1000024C4(qword_100221928);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for OpenURLAction();
    (*(*(v5 - 8) + 8))(v2 + v4, v5);
  }

  else
  {
  }

  v6 = *(v1 + 60);
  sub_1000024C4(&qword_1002229F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ContentSizeCategory();
    (*(*(v7 - 8) + 8))(v2 + v6, v7);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100172BE8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(type metadata accessor for HeaderModule() - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return a1(v7, v2, v3, v4, v5);
}

uint64_t sub_100172CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100172D64()
{
  result = qword_10022AC60;
  if (!qword_10022AC60)
  {
    sub_10000460C(&qword_10022AAF8);
    sub_10000460C(&qword_10022AC68);
    sub_100173378(&qword_10022AC70, &qword_10022AC68, &unk_1001C2618, sub_100172E58);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC60);
  }

  return result;
}

unint64_t sub_100172E58()
{
  result = qword_10022AC78;
  if (!qword_10022AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC78);
  }

  return result;
}

uint64_t sub_100172EBC()
{
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  sub_10000460C(&qword_10022AAF8);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AB00);
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for ZStack();
  sub_10000460C(&qword_10022AB08);
  sub_10000460C(&qword_10022AB10);
  swift_getTupleTypeMetadata3();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for TicketView();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ModifiedContent();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

unint64_t sub_100173294()
{
  result = qword_10022AC98;
  if (!qword_10022AC98)
  {
    sub_10000460C(&qword_10022AC80);
    sub_100173378(&qword_100229288, &qword_100229290, &unk_1001C0648, sub_1000F4924);
    sub_10000BFFC(&qword_10022ACA0, &qword_10022AC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10022AC98);
  }

  return result;
}

uint64_t sub_100173378(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000460C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_100173454()
{
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  if (v0 <= 0x3F)
  {
    sub_100017044();
    if (v1 <= 0x3F)
    {
      sub_1000CD2D0(319, &qword_1002219B8, &type metadata accessor for DismissAction);
      if (v2 <= 0x3F)
      {
        sub_1000CD2D0(319, &qword_100221C00, &type metadata accessor for ColorScheme);
        if (v3 <= 0x3F)
        {
          sub_100029AB4();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_10017358C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 72);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 76);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1001736DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000024C4(qword_100224528);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 72);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000024C4(&qword_100221B80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 76);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_10017387C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v7 - v5, a1, a2);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100173974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v8 - v6, a1, a3);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_100173A6C@<X0>(uint64_t a1@<X1>, char a2@<W2>, void *a3@<X8>)
{
  State.init(wrappedValue:)();
  *a3 = v12;
  a3[1] = v13;
  type metadata accessor for RemoteViewConfiguration();
  sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  a3[2] = EnvironmentObject.init()();
  a3[3] = v6;
  v7 = type metadata accessor for MusicEventView();
  v8 = v7[18];
  *(a3 + v8) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C0);
  swift_storeEnumTagMultiPayload();
  v9 = v7[19];
  *(a3 + v9) = swift_getKeyPath();
  sub_1000024C4(&qword_1002216C8);
  result = swift_storeEnumTagMultiPayload();
  v11 = a3 + v7[20];
  *v11 = a1;
  v11[8] = a2 & 1;
  return result;
}

uint64_t sub_100173C74(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  State.wrappedValue.getter();
  return v2;
}

uint64_t sub_100173CD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for State();
  State.projectedValue.getter();
  return v2;
}

uint64_t sub_100173D40(uint64_t a1)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 16);
  if (v7)
  {
    if (*(v7 + 88) && *(v7 + 80) == 1)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {

        goto LABEL_11;
      }
    }

    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 == 1)
    {
      v11 = v1 + *(a1 + 80);
      v12 = *v11;
      if (*(v11 + 8) != 1)
      {

        static os_log_type_t.fault.getter();
        v13 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_10001BC5C(v12, 0);
        (*(v4 + 8))(v6, v3);
        LOBYTE(v12) = v16[15];
      }

      v14 = v12 ^ 1;
      return v14 & 1;
    }

LABEL_11:
    v14 = 0;
    return v14 & 1;
  }

  type metadata accessor for RemoteViewConfiguration();
  sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_100173FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v181 = a2;
  v3 = type metadata accessor for TaskPriority();
  v179 = *(v3 - 8);
  v180 = v3;
  v4 = __chkstk_darwin(v3);
  v178 = &v149 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = *(a1 - 8);
  v195 = *(v196 + 64);
  __chkstk_darwin(v4);
  v188 = &v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = "r-Past-Event-Badge";
  v7 = *(a1 + 16);
  v192 = a1;
  type metadata accessor for Optional();
  v189 = type metadata accessor for Binding();
  v194 = *(v189 - 8);
  __chkstk_darwin(v189);
  v176 = &v149 - v8;
  v186 = type metadata accessor for NavigationPath();
  v9 = *(a1 + 40);
  swift_getAssociatedTypeWitness();
  v10 = v9;
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  v13 = type metadata accessor for _ConditionalContent();
  v190 = *(v10 + 8);
  v14 = v190;
  WitnessTable = swift_getWitnessTable();
  v16 = sub_1000ED714();
  v226 = WitnessTable;
  v227 = v16;
  v17 = swift_getWitnessTable();
  *&v228 = v7;
  *(&v228 + 1) = v13;
  *&v229 = v14;
  *(&v229 + 1) = v17;
  type metadata accessor for HeaderModule();
  v18 = type metadata accessor for ModifiedContent();
  v224 = swift_getWitnessTable();
  v225 = &protocol witness table for _PaddingLayout;
  *&v198 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v19 = swift_getWitnessTable();
  *&v228 = v18;
  *(&v228 + 1) = v19;
  *&v228 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48);
  sub_10000460C(&qword_100223418);
  *&v197 = v10;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedTypeWitness();
  v21 = swift_getAssociatedConformanceWitness();
  v220 = AssociatedTypeWitness;
  v221 = v20;
  v222 = AssociatedConformanceWitness;
  v223 = v21;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v22 = type metadata accessor for Button();
  v23 = type metadata accessor for PlainButtonStyle();
  v24 = swift_getWitnessTable();
  v25 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v220 = v22;
  v221 = v23;
  v222 = v24;
  v223 = v25;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v184 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648);
  type metadata accessor for _ConditionalContent();
  *(&v228 + 1) = type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  *&v229 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  v191 = v7;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  *(&v229 + 1) = type metadata accessor for ModifiedContent();
  v26 = *(v192 + 24);
  v193 = *(v192 + 48);
  v175 = v26;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  v27 = type metadata accessor for ModifiedContent();
  v218 = swift_getWitnessTable();
  v219 = &protocol witness table for _PaddingLayout;
  v28 = swift_getWitnessTable();
  v220 = v27;
  v221 = v28;
  swift_getOpaqueTypeMetadata2();
  v185 = type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v230 = type metadata accessor for Optional();
  v29 = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  v31 = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v220 = v29;
  v221 = v30;
  v222 = v31;
  v223 = v32;
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  v231 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  v232 = type metadata accessor for Optional();
  v233 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  swift_getWitnessTable();
  v33 = type metadata accessor for ScrollView();
  v34 = swift_getWitnessTable();
  *&v228 = v33;
  *(&v228 + 1) = v34;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v228 = v33;
  *(&v228 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v228 = OpaqueTypeMetadata2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_100221D58);
  v37 = type metadata accessor for ModifiedContent();
  *&v228 = OpaqueTypeMetadata2;
  *(&v228 + 1) = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v216 = v38;
  v217 = v39;
  v40 = swift_getWitnessTable();
  *&v228 = v37;
  *(&v228 + 1) = v40;
  v41 = swift_getOpaqueTypeMetadata2();
  *&v228 = v37;
  *(&v228 + 1) = v40;
  v42 = swift_getOpaqueTypeConformance2();
  v43 = sub_10001877C();
  *&v228 = v41;
  *(&v228 + 1) = &type metadata for String;
  *&v229 = v42;
  *(&v229 + 1) = v43;
  v44 = swift_getOpaqueTypeMetadata2();
  *&v228 = v41;
  *(&v228 + 1) = &type metadata for String;
  *&v229 = v42;
  *(&v229 + 1) = v43;
  v45 = swift_getOpaqueTypeConformance2();
  *&v228 = v44;
  *(&v228 + 1) = v45;
  v46 = swift_getOpaqueTypeMetadata2();
  *&v228 = v44;
  *(&v228 + 1) = v45;
  v47 = swift_getOpaqueTypeConformance2();
  *&v228 = v46;
  *(&v228 + 1) = &type metadata for Bool;
  *&v229 = v47;
  *(&v229 + 1) = &protocol witness table for Bool;
  v48 = swift_getOpaqueTypeMetadata2();
  v49 = sub_10000460C(&qword_1002245C0);
  *&v228 = v46;
  *(&v228 + 1) = &type metadata for Bool;
  *&v229 = v47;
  *(&v229 + 1) = &protocol witness table for Bool;
  v50 = swift_getOpaqueTypeConformance2();
  v51 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  *&v228 = v48;
  *(&v228 + 1) = v49;
  *&v229 = v50;
  *(&v229 + 1) = v51;
  v159 = swift_getOpaqueTypeMetadata2();
  *&v228 = v48;
  *(&v228 + 1) = v49;
  *&v229 = v50;
  *(&v229 + 1) = v51;
  v158 = swift_getOpaqueTypeConformance2();
  v52 = type metadata accessor for NavigationStack();
  v161 = *(v52 - 8);
  __chkstk_darwin(v52);
  v155 = &v149 - v53;
  v150 = v52;
  v54 = type metadata accessor for ModifiedContent();
  v169 = *(v54 - 8);
  __chkstk_darwin(v54);
  v182 = &v149 - v55;
  v56 = type metadata accessor for AppleMusicFetcher();
  v57 = sub_1001831E4(&qword_100221760, type metadata accessor for AppleMusicFetcher);
  v58 = v191;
  *&v228 = v191;
  *(&v228 + 1) = v56;
  *&v229 = v197;
  *(&v229 + 1) = v57;
  v59 = type metadata accessor for PromotionalAssetsView();
  v60 = swift_getWitnessTable();
  v149 = v60;
  v61 = sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v214 = v60;
  v215 = v61;
  v62 = swift_getWitnessTable();
  v63 = *(v190 + 16);
  v64 = swift_getWitnessTable();
  *&v228 = v54;
  *(&v228 + 1) = v58;
  v153 = v62;
  v154 = v54;
  v151 = v59;
  v152 = v64;
  *&v229 = v59;
  *(&v229 + 1) = v62;
  v65 = v62;
  v230 = v63;
  v231 = v64;
  v66 = swift_getOpaqueTypeMetadata2();
  v170 = *(v66 - 8);
  __chkstk_darwin(v66);
  v186 = &v149 - v67;
  *&v228 = v54;
  *(&v228 + 1) = v58;
  *&v229 = v59;
  *(&v229 + 1) = v65;
  v230 = v63;
  v231 = v64;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v192;
  v70 = swift_getWitnessTable();
  *&v228 = v66;
  *(&v228 + 1) = v58;
  v71 = v66;
  v160 = v66;
  *&v229 = v69;
  *(&v229 + 1) = v68;
  v156 = v70;
  v157 = v68;
  v230 = v63;
  v231 = v70;
  v183 = v63;
  v164 = swift_getOpaqueTypeMetadata2();
  v168 = *(v164 - 8);
  __chkstk_darwin(v164);
  v184 = &v149 - v72;
  v73 = type metadata accessor for ModifiedContent();
  v166 = v73;
  v174 = *(v73 - 8);
  __chkstk_darwin(v73);
  v185 = &v149 - v74;
  *&v228 = v71;
  *(&v228 + 1) = v58;
  *&v229 = v69;
  *(&v229 + 1) = v68;
  v230 = v63;
  v231 = v70;
  v162 = swift_getOpaqueTypeConformance2();
  v212 = v162;
  v213 = &protocol witness table for _AppearanceActionModifier;
  v165 = swift_getWitnessTable();
  *&v228 = v73;
  *(&v228 + 1) = v165;
  v171 = &unk_1001C94C8;
  v75 = swift_getOpaqueTypeMetadata2();
  v76 = *(v75 - 8);
  v172 = v75;
  v173 = v76;
  v77 = __chkstk_darwin(v75);
  v163 = &v149 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v167 = &v149 - v79;
  *&v80 = *(v69 + 32);
  *(&v80 + 1) = v197;
  *&v81 = v58;
  *(&v81 + 1) = v175;
  v197 = v80;
  v198 = v81;
  v207 = v81;
  v208 = v80;
  v82 = *(v69 + 56);
  v83 = v193;
  v209 = v193;
  v210 = v82;
  v84 = v82;
  v211 = v187;
  v85 = v155;
  NavigationStack.init<>(root:)();
  v86 = v150;
  View.accessibilityIdentifier(_:)();
  (*(v161 + 8))(v85, v86);
  v87 = sub_100173CD8(v69);
  v89 = v88;
  v91 = v90;
  v203 = v198;
  v204 = v197;
  v205 = v83;
  v206 = v84;
  swift_getKeyPath();
  v220 = v87;
  v221 = v89;
  v222 = v91;
  v229 = v197;
  v228 = v198;
  v230 = v83;
  v231 = v84;
  type metadata accessor for MusicEventViewModel();
  v161 = type metadata accessor for Binding();
  v92 = v176;
  Binding.subscript.getter();

  v93 = swift_allocObject();
  v94 = v197;
  *(v93 + 16) = v198;
  *(v93 + 32) = v94;
  *(v93 + 48) = v83;
  *(v93 + 56) = v84;
  v95 = v84;
  v190 = v84;
  swift_checkMetadataState();
  v96 = v154;
  v97 = v182;
  View.sheet<A, B>(item:onDismiss:content:)();

  v98 = *(v194 + 8);
  v194 += 8;
  v175 = v98;
  v98(v92, v189);
  (*(v169 + 1))(v97, v96);
  v99 = v192;
  v100 = v187;
  v101 = sub_100173CD8(v192);
  v103 = v102;
  v105 = v104;
  v199 = v198;
  v200 = v197;
  v201 = v83;
  v202 = v95;
  swift_getKeyPath();
  *&v228 = v101;
  *(&v228 + 1) = v103;
  *&v229 = v105;
  Binding.subscript.getter();

  v106 = v196;
  v107 = *(v196 + 16);
  v161 = v196 + 16;
  v169 = v107;
  v108 = v188;
  v109 = v100;
  v110 = v100;
  v111 = v99;
  v107(v188, v109, v99);
  v112 = *(v106 + 80);
  v113 = (v112 + 64) & ~v112;
  v114 = swift_allocObject();
  v115 = v197;
  *(v114 + 16) = v198;
  *(v114 + 32) = v115;
  v116 = v193;
  v117 = v190;
  *(v114 + 48) = v193;
  *(v114 + 56) = v117;
  v182 = *(v106 + 32);
  v196 = v106 + 32;
  (v182)(v114 + v113, v108, v111);
  v118 = v160;
  v119 = v186;
  View.sheet<A, B>(item:onDismiss:content:)();

  v175(v92, v189);
  (*(v170 + 8))(v119, v118);
  v120 = v188;
  v121 = v169;
  v169(v188, v110, v111);
  v122 = swift_allocObject();
  v123 = v197;
  *(v122 + 16) = v198;
  *(v122 + 32) = v123;
  v124 = v190;
  *(v122 + 48) = v116;
  *(v122 + 56) = v124;
  v125 = v122 + v113;
  v126 = v120;
  (v182)(v125, v120, v111);
  v127 = v184;
  v128 = v164;
  View.onAppear(perform:)();

  (*(v168 + 8))(v127, v128);
  v121(v126, v110, v111);
  type metadata accessor for MainActor();
  v129 = static MainActor.shared.getter();
  v130 = swift_allocObject();
  *(v130 + 16) = v129;
  *(v130 + 24) = &protocol witness table for MainActor;
  v131 = v197;
  *(v130 + 32) = v198;
  *(v130 + 48) = v131;
  v132 = v190;
  *(v130 + 64) = v193;
  *(v130 + 72) = v132;
  (v182)(v130 + ((v112 + 80) & ~v112), v126, v111);
  v133 = v178;
  v135 = v165;
  v134 = v166;
  j___sScP13userInitiatedScPvgZ();
  v147 = v134;
  v148 = v135;
  v136 = v135;
  v137 = v134;
  v138 = v163;
  v139 = v133;
  v140 = v133;
  v141 = v185;
  sub_10000250C(0, v139, 0xD000000000000025, (v177 | 0x8000000000000000), 215, &unk_1001C27E0, v130, v163, v147, v148);
  (*(v179 + 8))(v140, v180);
  (*(v174 + 8))(v141, v137);
  *&v228 = v137;
  *(&v228 + 1) = v136;
  v142 = swift_getOpaqueTypeConformance2();
  v143 = v167;
  v144 = v172;
  sub_1000EE87C(v138, v172, v142);
  v145 = *(v173 + 8);
  v145(v138, v144);
  sub_1000EE87C(v143, v144, v142);
  return (v145)(v143, v144);
}

uint64_t sub_10017580C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v169 = a7;
  v170 = a6;
  v171 = a4;
  v172 = a1;
  v174 = a3;
  v166 = a8;
  OpaqueTypeMetadata2 = a2;
  v195 = a3;
  v196 = a4;
  v197 = a5;
  v198 = a6;
  v199 = a7;
  v10 = type metadata accessor for MusicEventView();
  v164 = *(v10 - 8);
  v165 = v10;
  v162 = *(v164 + 64);
  __chkstk_darwin(v10);
  v163 = v122 - v11;
  v12 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v160 = *(v12 - 8);
  v161 = v12;
  __chkstk_darwin(v12);
  v159 = v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ContentMarginPlacement();
  v157 = *(v14 - 8);
  v158 = v14;
  __chkstk_darwin(v14);
  v156 = v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ScrollIndicatorVisibility();
  v154 = *(v16 - 8);
  v155 = v16;
  __chkstk_darwin(v16);
  v153 = v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  v20 = type metadata accessor for _ConditionalContent();
  v21 = a5[1];
  WitnessTable = swift_getWitnessTable();
  v23 = sub_1000ED714();
  v192 = WitnessTable;
  v193 = v23;
  v24 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = a2;
  v195 = v20;
  v196 = v21;
  v197 = v24;
  type metadata accessor for HeaderModule();
  v25 = type metadata accessor for ModifiedContent();
  v190 = swift_getWitnessTable();
  v191 = &protocol witness table for _PaddingLayout;
  v167 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v26 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v25;
  v195 = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48);
  sub_10000460C(&qword_100223418);
  v168 = a5;
  v173 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v186 = AssociatedTypeWitness;
  v187 = v27;
  v188 = AssociatedConformanceWitness;
  v189 = v28;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v29 = type metadata accessor for Button();
  v30 = type metadata accessor for PlainButtonStyle();
  v31 = swift_getWitnessTable();
  v32 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  v186 = v29;
  v187 = v30;
  v188 = v31;
  v189 = v32;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  v152 = &protocol conformance descriptor for TupleView<A>;
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648);
  type metadata accessor for _ConditionalContent();
  v195 = type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  v196 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v197 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  v33 = type metadata accessor for ModifiedContent();
  v184 = swift_getWitnessTable();
  v185 = &protocol witness table for _PaddingLayout;
  v34 = swift_getWitnessTable();
  v186 = v33;
  v187 = v34;
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v198 = type metadata accessor for Optional();
  v35 = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  v37 = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v186 = v35;
  v187 = v36;
  v188 = v37;
  v189 = v38;
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  v199 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  v200 = type metadata accessor for Optional();
  v201 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v122[2] = type metadata accessor for VStack();
  v122[1] = swift_getWitnessTable();
  v39 = type metadata accessor for ScrollView();
  v132 = *(v39 - 8);
  __chkstk_darwin(v39);
  v122[0] = v122 - v40;
  v41 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v39;
  v195 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v131 = *(v42 - 8);
  __chkstk_darwin(v42);
  v125 = v122 - v43;
  v127 = v39;
  OpaqueTypeMetadata2 = v39;
  v195 = v41;
  v122[8] = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v42;
  v195 = OpaqueTypeConformance2;
  v45 = swift_getOpaqueTypeMetadata2();
  v138 = *(v45 - 8);
  __chkstk_darwin(v45);
  v130 = v122 - v46;
  sub_10000460C(&qword_100221D58);
  v141 = v45;
  v47 = type metadata accessor for ModifiedContent();
  v137 = *(v47 - 8);
  __chkstk_darwin(v47);
  v129 = v122 - v48;
  v135 = v42;
  OpaqueTypeMetadata2 = v42;
  v195 = OpaqueTypeConformance2;
  v122[7] = OpaqueTypeConformance2;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = sub_10000BFFC(&qword_100221D50, &qword_100221D58);
  v122[3] = v49;
  v182 = v49;
  v183 = v50;
  v51 = swift_getWitnessTable();
  OpaqueTypeMetadata2 = v47;
  v195 = v51;
  v52 = swift_getOpaqueTypeMetadata2();
  v124 = *(v52 - 8);
  __chkstk_darwin(v52);
  v123 = v122 - v53;
  v140 = v47;
  OpaqueTypeMetadata2 = v47;
  v195 = v51;
  v122[4] = v51;
  v54 = swift_getOpaqueTypeConformance2();
  v55 = sub_10001877C();
  OpaqueTypeMetadata2 = v52;
  v195 = &type metadata for String;
  v196 = v54;
  v197 = v55;
  v56 = swift_getOpaqueTypeMetadata2();
  v139 = *(v56 - 8);
  __chkstk_darwin(v56);
  v133 = v122 - v57;
  v126 = v52;
  OpaqueTypeMetadata2 = v52;
  v195 = &type metadata for String;
  v122[5] = v55;
  v122[6] = v54;
  v196 = v54;
  v197 = v55;
  v58 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v56;
  v195 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v151 = *(v59 - 8);
  __chkstk_darwin(v59);
  v167 = v122 - v60;
  v144 = v56;
  OpaqueTypeMetadata2 = v56;
  v195 = v58;
  v122[9] = v58;
  v61 = swift_getOpaqueTypeConformance2();
  OpaqueTypeMetadata2 = v59;
  v195 = &type metadata for Bool;
  v196 = v61;
  v197 = &protocol witness table for Bool;
  v62 = swift_getOpaqueTypeMetadata2();
  v149 = *(v62 - 8);
  __chkstk_darwin(v62);
  v148 = v122 - v63;
  v64 = sub_10000460C(&qword_1002245C0);
  v152 = v59;
  OpaqueTypeMetadata2 = v59;
  v195 = &type metadata for Bool;
  v143 = v61;
  v196 = v61;
  v197 = &protocol witness table for Bool;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = sub_10000BFFC(&qword_1002245C8, &qword_1002245C0);
  v150 = v62;
  OpaqueTypeMetadata2 = v62;
  v195 = v64;
  v67 = v122[0];
  v147 = v64;
  v142 = v65;
  v196 = v65;
  v197 = v66;
  v136 = v66;
  v68 = swift_getOpaqueTypeMetadata2();
  v145 = *(v68 - 8);
  v146 = v68;
  v69 = __chkstk_darwin(v68);
  v128 = v122 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v134 = v122 - v71;
  v175 = v173;
  v176 = v174;
  v177 = v171;
  v178 = v168;
  v179 = v170;
  v180 = v169;
  v181 = v172;
  static Axis.Set.vertical.getter();
  sub_1000E7A24();
  v72 = v153;
  static ScrollIndicatorVisibility.never.getter();
  sub_1000024C4(&qword_1002245D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B3B50;
  LOBYTE(v37) = static Axis.Set.vertical.getter();
  *(inited + 32) = v37;
  v74 = static Axis.Set.horizontal.getter();
  *(inited + 33) = v74;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v37)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v74)
  {
    Axis.Set.init(rawValue:)();
  }

  v75 = v125;
  v76 = v127;
  View.scrollIndicators(_:axes:)();
  (*(v154 + 8))(v72, v155);
  (*(v132 + 8))(v67, v76);
  static Edge.Set.top.getter();
  static Solarium.isEnabled.getter();
  v77 = v156;
  static ContentMarginPlacement.scrollContent.getter();
  v78 = v130;
  v79 = v135;
  View.contentMargins(_:_:for:)();
  (*(v157 + 8))(v77, v158);
  (*(v131 + 8))(v75, v79);
  v80 = [objc_opt_self() systemGroupedBackgroundColor];
  OpaqueTypeMetadata2 = Color.init(uiColor:)();
  static Edge.Set.all.getter();
  v81 = v129;
  v82 = v141;
  View.background<A>(_:ignoresSafeAreaEdges:)();

  (*(v138 + 8))(v78, v82);
  v84 = v159;
  v83 = v160;
  v85 = v161;
  (*(v160 + 104))(v159, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v161);
  v86 = v123;
  v87 = v140;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v83 + 8))(v84, v85);
  (*(v137 + 8))(v81, v87);
  v88 = v165;
  sub_100173C74(v165);
  v89 = sub_100168CB8();
  v91 = v90;

  OpaqueTypeMetadata2 = v89;
  v195 = v91;
  v92 = v133;
  v93 = v126;
  View.navigationTitle<A>(_:)();

  (*(v124 + 8))(v86, v93);
  sub_100173C74(v88);
  sub_100161030();

  sub_1000024C4(&qword_1002245D8);
  type metadata accessor for ToolbarPlacement();
  *(swift_allocObject() + 16) = xmmword_1001B49B0;
  static ToolbarPlacement.navigationBar.getter();
  v94 = v144;
  View.toolbarBackgroundVisibility(_:for:)();

  (*(v139 + 8))(v92, v94);
  v95 = swift_allocObject();
  v96 = v174;
  v95[2] = v173;
  v95[3] = v96;
  v97 = v170;
  v99 = v168;
  v98 = v169;
  v95[4] = v171;
  v95[5] = v99;
  v95[6] = v97;
  v95[7] = v98;
  v101 = v163;
  v100 = v164;
  (*(v164 + 16))(v163, v172, v88);
  v102 = (*(v100 + 80) + 64) & ~*(v100 + 80);
  v103 = swift_allocObject();
  v104 = v174;
  *(v103 + 2) = v173;
  *(v103 + 3) = v104;
  *(v103 + 4) = v171;
  *(v103 + 5) = v99;
  *(v103 + 6) = v97;
  *(v103 + 7) = v98;
  (*(v100 + 32))(&v103[v102], v101, v88);
  v121 = &protocol witness table for Bool;
  v105 = v148;
  v106 = v152;
  v107 = v167;
  View.onScrollGeometryChange<A>(for:of:action:)();

  v108 = (*(v151 + 8))(v107, v106);
  __chkstk_darwin(v108);
  v109 = v174;
  v122[-8] = v173;
  v122[-7] = v109;
  v110 = v172;
  v122[-6] = v171;
  v122[-5] = v99;
  v122[-4] = v97;
  v122[-3] = v98;
  v121 = v110;
  v111 = v128;
  v112 = v150;
  v113 = v147;
  v114 = v142;
  v115 = v136;
  View.toolbar<A>(content:)();
  (*(v149 + 8))(v105, v112);
  OpaqueTypeMetadata2 = v112;
  v195 = v113;
  v196 = v114;
  v197 = v115;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v134;
  v118 = v146;
  sub_1000EE87C(v111, v146, v116);
  v119 = *(v145 + 8);
  v119(v111, v118);
  sub_1000EE87C(v117, v118, v116);
  return (v119)(v117, v118);
}

uint64_t sub_100177010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v24 = a7;
  v27 = a6;
  v22 = a4;
  v26 = a3;
  v23 = a1;
  v25 = a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  type metadata accessor for _ConditionalContent();
  WitnessTable = swift_getWitnessTable();
  v44 = sub_1000ED714();
  swift_getWitnessTable();
  type metadata accessor for HeaderModule();
  type metadata accessor for ModifiedContent();
  v41 = swift_getWitnessTable();
  v42 = &protocol witness table for _PaddingLayout;
  v20 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_10000460C(&qword_10022AD48);
  sub_10000460C(&qword_100223418);
  v21 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  type metadata accessor for Button();
  type metadata accessor for PlainButtonStyle();
  swift_getWitnessTable();
  sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();
  sub_10000460C(&qword_1002230D0);
  type metadata accessor for ModifiedContent();
  type metadata accessor for ModifiedContent();
  type metadata accessor for _ConditionalContent();
  sub_10000460C(&qword_100224648);
  type metadata accessor for _ConditionalContent();
  v46 = type metadata accessor for Optional();
  type metadata accessor for DetailsModule();
  v47 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for LocationModule();
  v48 = type metadata accessor for ModifiedContent();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for MusicModule();
  type metadata accessor for ModifiedContent();
  v35 = swift_getWitnessTable();
  v36 = &protocol witness table for _PaddingLayout;
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for AccessibilityAttachmentModifier();
  type metadata accessor for ModifiedContent();
  v49 = type metadata accessor for Optional();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v40 = swift_getAssociatedConformanceWitness();
  type metadata accessor for PlaylistModule();
  type metadata accessor for ModifiedContent();
  v50 = type metadata accessor for Optional();
  type metadata accessor for UpcomingModule();
  v51 = type metadata accessor for Optional();
  v52 = sub_10000460C(&qword_1002245B8);
  swift_getTupleTypeMetadata();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v10 = type metadata accessor for VStack();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v20 - v15;
  static HorizontalAlignment.leading.getter();
  v28 = a2;
  v29 = v26;
  v30 = v22;
  v31 = v21;
  v32 = v27;
  v33 = v24;
  v34 = v23;
  VStack.init(alignment:spacing:content:)();
  v17 = swift_getWitnessTable();
  sub_1000EE87C(v14, v10, v17);
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_1000EE87C(v16, v10, v17);
  return (v18)(v16, v10);
}

uint64_t sub_10017799C@<X0>(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v719 = a7;
  v722 = a4;
  v726 = a1;
  v662 = a8;
  v659 = type metadata accessor for AppModule();
  v658 = *(v659 - 8);
  __chkstk_darwin(v659);
  v614 = (v555 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v660 = sub_1000024C4(&qword_1002245B8);
  v13 = __chkstk_darwin(v660);
  v693 = v555 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v661 = v555 - v15;
  type metadata accessor for Optional();
  v16 = type metadata accessor for Binding();
  __chkstk_darwin(v16 - 8);
  v593 = v555 - v17;
  v18 = *(a5 + 1);
  v19 = type metadata accessor for UpcomingViewModel();
  __chkstk_darwin(v19 - 8);
  v592 = v555 - v20;
  v21 = type metadata accessor for UpcomingModule();
  v657 = *(v21 - 8);
  v22 = __chkstk_darwin(v21);
  v595 = v555 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v594 = v555 - v24;
  v692 = v25;
  v713 = type metadata accessor for Optional();
  v689 = *(v713 - 8);
  v26 = __chkstk_darwin(v713);
  v712 = v555 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v711 = v555 - v28;
  v724 = a6;
  v717 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v598 = AssociatedTypeWitness;
  *&v818 = AssociatedTypeWitness;
  *(&v818 + 1) = v30;
  v596 = v30;
  v568 = AssociatedConformanceWitness;
  *&v819 = AssociatedConformanceWitness;
  *(&v819 + 1) = v32;
  v566 = v32;
  v33 = type metadata accessor for PlaylistModule();
  v569 = *(v33 - 8);
  __chkstk_darwin(v33);
  v567 = v555 - v34;
  v691 = v35;
  v36 = type metadata accessor for ModifiedContent();
  v656 = *(v36 - 8);
  v37 = __chkstk_darwin(v36);
  v571 = v555 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v570 = v555 - v39;
  v690 = v40;
  v710 = type metadata accessor for Optional();
  v687 = *(v710 - 8);
  v41 = __chkstk_darwin(v710);
  v709 = v555 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v708 = v555 - v43;
  v44 = type metadata accessor for AccessibilityChildBehavior();
  v590 = *(v44 - 8);
  v591 = v44;
  __chkstk_darwin(v44);
  v589 = v555 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = swift_getAssociatedTypeWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v694 = v46;
  v48 = type metadata accessor for MusicViewModel();
  __chkstk_darwin(v48 - 8);
  v577 = v555 - v49;
  v613 = v47;
  v50 = type metadata accessor for MusicModule();
  v586 = *(v50 - 8);
  __chkstk_darwin(v50);
  v583 = v555 - v51;
  v52 = type metadata accessor for ModifiedContent();
  v587 = *(v52 - 8);
  __chkstk_darwin(v52);
  v584 = v555 - v53;
  v588 = v50;
  WitnessTable = swift_getWitnessTable();
  v816 = WitnessTable;
  v817 = &protocol witness table for _PaddingLayout;
  v714 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v54 = swift_getWitnessTable();
  v688 = v52;
  *&v818 = v52;
  *(&v818 + 1) = v54;
  v686 = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v580 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v578 = v555 - v56;
  type metadata accessor for AccessibilityAttachmentModifier();
  v582 = OpaqueTypeMetadata2;
  v57 = type metadata accessor for ModifiedContent();
  v654 = *(v57 - 8);
  v58 = __chkstk_darwin(v57);
  v585 = v555 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v579 = v555 - v61;
  __chkstk_darwin(v60);
  v581 = v555 - v62;
  v695 = v63;
  v707 = type metadata accessor for Optional();
  v683 = *(v707 - 8);
  v64 = __chkstk_darwin(v707);
  v706 = v555 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v705 = v555 - v66;
  v67 = swift_getAssociatedTypeWitness();
  __chkstk_darwin(v67);
  v672 = v555 - v68;
  v720 = v18;
  v69 = swift_getAssociatedConformanceWitness();
  v647 = v67;
  v646 = v69;
  v70 = type metadata accessor for LocationModule();
  v650 = *(v70 - 8);
  __chkstk_darwin(v70);
  v649 = v555 - v71;
  v651 = v72;
  v704 = type metadata accessor for ModifiedContent();
  v682 = *(v704 - 8);
  v73 = __chkstk_darwin(v704);
  v685 = v555 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v73);
  v648 = v555 - v76;
  __chkstk_darwin(v75);
  v703 = v555 - v77;
  v78 = type metadata accessor for DetailsModule();
  v644 = *(v78 - 8);
  __chkstk_darwin(v78);
  v643 = v555 - v79;
  v645 = v80;
  v716 = type metadata accessor for ModifiedContent();
  v681 = *(v716 - 8);
  v81 = __chkstk_darwin(v716);
  v684 = v555 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __chkstk_darwin(v81);
  v642 = v555 - v84;
  __chkstk_darwin(v83);
  v702 = v555 - v85;
  v86 = sub_1000024C4(&qword_1002214F8);
  __chkstk_darwin(v86 - 8);
  v663 = v555 - v87;
  v562 = type metadata accessor for ServicesUpsellModule();
  __chkstk_darwin(v562);
  v564 = (v555 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  v667 = sub_1000024C4(&qword_100224648);
  v89 = __chkstk_darwin(v667);
  v563 = v555 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v89);
  v565 = v555 - v91;
  sub_10000460C(&qword_100223418);
  swift_getAssociatedTypeWitness();
  v723 = a5;
  v721 = a2;
  swift_getAssociatedConformanceWitness();
  v92 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v93 = swift_getAssociatedTypeWitness();
  v94 = swift_getAssociatedConformanceWitness();
  v95 = swift_getAssociatedConformanceWitness();
  *&v818 = v92;
  *(&v818 + 1) = v93;
  *&v819 = v94;
  *(&v819 + 1) = v95;
  v96 = v94;
  type metadata accessor for PromotionalAssetsEntryView();
  swift_getWitnessTable();
  v97 = type metadata accessor for Button();
  v98 = type metadata accessor for PlainButtonStyle();
  v99 = swift_getWitnessTable();
  v100 = sub_1001831E4(&qword_100222DD0, &type metadata accessor for PlainButtonStyle);
  *&v818 = v97;
  *(&v818 + 1) = v98;
  *&v819 = v99;
  *(&v819 + 1) = v100;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v101 = type metadata accessor for TupleView();
  v555[1] = swift_getWitnessTable();
  v555[2] = v101;
  v102 = type metadata accessor for VStack();
  v557 = *(v102 - 8);
  __chkstk_darwin(v102);
  v556 = v555 - v103;
  sub_10000460C(&qword_1002230D0);
  v680 = v102;
  v104 = type metadata accessor for ModifiedContent();
  v559 = *(v104 - 8);
  __chkstk_darwin(v104);
  v573 = v555 - v105;
  v679 = v106;
  v107 = type metadata accessor for ModifiedContent();
  v561 = *(v107 - 8);
  v108 = __chkstk_darwin(v107);
  v560 = v555 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __chkstk_darwin(v108);
  v558 = v555 - v111;
  __chkstk_darwin(v110);
  v575 = v555 - v112;
  v113 = type metadata accessor for Optional();
  v615 = *(v113 - 8);
  v616 = v113;
  v114 = __chkstk_darwin(v113);
  v653 = v555 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __chkstk_darwin(v114);
  v608 = v555 - v117;
  v118 = __chkstk_darwin(v116);
  v572 = v555 - v119;
  v696 = *(v92 - 8);
  v120 = __chkstk_darwin(v118);
  v666 = v555 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __chkstk_darwin(v120);
  v612 = v555 - v123;
  __chkstk_darwin(v122);
  v574 = v555 - v124;
  v125 = sub_10000460C(&qword_10022AD48);
  v678 = v107;
  v126 = type metadata accessor for _ConditionalContent();
  v611 = *(v126 - 8);
  __chkstk_darwin(v126);
  v610 = v555 - v127;
  v603 = sub_1000024C4(&qword_10022AD50);
  v128 = __chkstk_darwin(v603);
  v637 = (v555 - v129);
  v609 = v125;
  v130 = __chkstk_darwin(v128);
  v604 = v555 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v130);
  v605 = v555 - v132;
  v133 = v719;
  v134 = v722;
  v135 = swift_getAssociatedTypeWitness();
  v136 = type metadata accessor for Optional();
  v601 = *(v136 - 8);
  v602 = v136;
  v137 = __chkstk_darwin(v136);
  v636 = v555 - v138;
  v665 = v135;
  v664 = *(v135 - 8);
  __chkstk_darwin(v137);
  v638 = v555 - v139;
  v677 = v126;
  v676 = type metadata accessor for _ConditionalContent();
  v715 = type metadata accessor for Optional();
  v718 = *(v715 - 8);
  v140 = __chkstk_darwin(v715);
  v701 = v555 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v140);
  v700 = v555 - v142;
  v143 = v721;
  *&v818 = v721;
  *(&v818 + 1) = v717;
  v819 = __PAIR128__(v723, v134);
  v820 = v724;
  v821 = v133;
  v144 = type metadata accessor for MusicEventView();
  v697 = *(v144 - 8);
  v655 = *(v697 + 64);
  __chkstk_darwin(v144);
  v668 = v555 - v145;
  v146 = type metadata accessor for Optional();
  v599 = *(v146 - 8);
  v600 = v146;
  v147 = __chkstk_darwin(v146);
  v624 = v555 - v148;
  v149 = v143;
  v150 = *(v143 - 8);
  v151 = __chkstk_darwin(v147);
  v640 = v555 - ((v152 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __chkstk_darwin(v151);
  v639 = v555 - v154;
  v155 = __chkstk_darwin(v153);
  v671 = v555 - v156;
  v157 = __chkstk_darwin(v155);
  v669 = v555 - v158;
  __chkstk_darwin(v157);
  v160 = v555 - v159;
  swift_getAssociatedTypeWitness();
  v597 = v96;
  v674 = v92;
  swift_getAssociatedConformanceWitness();
  type metadata accessor for HeroImageView();
  v161 = type metadata accessor for _ConditionalContent();
  v162 = swift_getWitnessTable();
  v163 = sub_1000ED714();
  v814 = v162;
  v815 = v163;
  v164 = swift_getWitnessTable();
  *&v818 = v149;
  *(&v818 + 1) = v161;
  v165 = v149;
  v628 = v161;
  *&v819 = v720;
  *(&v819 + 1) = v164;
  v626 = v164;
  v166 = type metadata accessor for HeaderModule();
  v632 = *(v166 - 8);
  __chkstk_darwin(v166);
  v630 = v555 - v167;
  v168 = type metadata accessor for ModifiedContent();
  v635 = *(v168 - 8);
  __chkstk_darwin(v168);
  v634 = v555 - v169;
  v633 = v166;
  v625 = swift_getWitnessTable();
  v812 = v625;
  v813 = &protocol witness table for _PaddingLayout;
  v170 = swift_getWitnessTable();
  v652 = v168;
  *&v818 = v168;
  *(&v818 + 1) = v170;
  v631 = v170;
  v714 = swift_getOpaqueTypeMetadata2();
  v673 = *(v714 - 1);
  v171 = __chkstk_darwin(v714);
  v675 = v555 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __chkstk_darwin(v171);
  v629 = v555 - v174;
  __chkstk_darwin(v173);
  v699 = v555 - v175;
  v176 = sub_100173C74(v144);
  v177 = *(v150 + 16);
  v178 = v176 + *(*v176 + 200);
  v627 = v160;
  v179 = v160;
  v180 = v165;
  v177(v179, v178, v165);

  sub_100173C74(v144);
  v623 = sub_1001621F0();
  v622 = v181;

  sub_100173C74(v144);
  v621 = sub_100162654();
  v620 = v182;

  sub_100173C74(v144);
  v619 = sub_10016290C();
  v618 = v183;

  v184 = sub_100173C74(v144);
  v185 = (v184 + *(*v184 + 272));
  v186 = v185[1];
  v617 = *v185;

  v187 = sub_100173C74(v144);
  v188 = v187 + *(*v187 + 200);
  v189 = v669;
  v670 = v150 + 16;
  v698 = v177;
  v177(v669, v188, v180);

  v190 = sub_10008C468(v180, v720);
  v191 = *(v150 + 8);
  v192 = v189;
  v193 = v694;
  v641 = v150 + 8;
  v669 = v191;
  (v191)(v192, v180);
  v725 = v144;
  sub_100173C74(v144);
  v194 = sub_100163434();

  *&v789 = v194;
  v195 = type metadata accessor for Array();
  v606 = swift_getWitnessTable();
  v607 = v195;
  v196 = v624;
  Collection.first.getter();

  v197 = *(v193 - 8);
  if ((*(v197 + 48))(v196, 1, v193) == 1)
  {
    (*(v599 + 8))(v196, v600);
    v820 = 0;
    v818 = 0u;
    v819 = 0u;
  }

  else
  {
    *(&v819 + 1) = v193;
    v820 = v613;
    v198 = sub_10005EC40(&v818);
    (*(v197 + 32))(v198, v196, v193);
  }

  v199 = v721;
  type metadata accessor for HeaderViewModel();
  v622 = sub_10002E5E4(v627, v623, v622, v621, v620, v619, v618, v617, v186, v190 & 1, &v818);
  v200 = v697;
  v201 = v668;
  v202 = v725;
  v627 = *(v697 + 16);
  v627(v668, v726, v725);
  v203 = (*(v200 + 80) + 64) & ~*(v200 + 80);
  v624 = &v655[v203];
  v204 = swift_allocObject();
  v204[2] = v199;
  v205 = v717;
  v206 = v722;
  v204[3] = v717;
  v204[4] = v206;
  v207 = v724;
  v204[5] = v723;
  v204[6] = v207;
  v204[7] = v719;
  v208 = *(v200 + 32);
  v655 = v203;
  v697 = v200 + 32;
  v623 = v208;
  v208(v204 + v203, v201, v202);
  v209 = v630;
  sub_10016A66C(sub_100182EE4, v204, v630);
  static Edge.Set.horizontal.getter();
  if (sub_100173D40(v202))
  {
    sub_100082FDC();
  }

  v210 = v634;
  v211 = v633;
  View.padding(_:_:)();
  (*(v632 + 8))(v209, v211);
  v212 = v668;
  v213 = v726;
  v214 = v725;
  v627(v668, v726, v725);
  v215 = swift_allocObject();
  *(v215 + 16) = v721;
  *(v215 + 24) = v205;
  v216 = v723;
  *(v215 + 32) = v722;
  *(v215 + 40) = v216;
  v217 = v719;
  *(v215 + 48) = v724;
  *(v215 + 56) = v217;
  v218 = v213;
  v623(&v655[v215], v212, v214);
  v219 = v629;
  v220 = v652;
  v221 = v631;
  View.onScrollVisibilityChange(threshold:_:)();

  (*(v635 + 8))(v210, v220);
  *&v818 = v220;
  *(&v818 + 1) = v221;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v223 = v714;
  v652 = OpaqueTypeConformance2;
  sub_1000EE87C(v219, v714, OpaqueTypeConformance2);
  v224 = *(v673 + 8);
  v668 = (v673 + 8);
  v655 = v224;
  (v224)(v219, v223);
  v225 = v214;
  sub_100173C74(v214);
  v226 = v636;
  sub_10016168C(v636);

  v227 = v664;
  v228 = v665;
  v229 = (*(v664 + 48))(v226, 1, v665);
  v230 = v724;
  v231 = v723;
  v232 = v722;
  if (v229 != 1)
  {
    v291 = *(v227 + 32);
    v292 = v638;
    v291(v638, v226, v228);
    v293 = static HorizontalAlignment.leading.getter();
    v294 = v637;
    *v637 = v293;
    v294[1] = 0x4024000000000000;
    *(v294 + 16) = 0;
    v295 = sub_1000024C4(&qword_10022AD78);
    v296 = v721;
    sub_10017CEDC(v218, v292, v721, v717, v232, v231, v230, v217, v294 + *(v295 + 44));
    *(v294 + *(v603 + 36)) = 0;
    v297 = static Edge.Set.horizontal.getter();
    if (sub_100173D40(v225))
    {
      sub_100083044();
    }

    EdgeInsets.init(_all:)();
    v299 = v298;
    v301 = v300;
    v303 = v302;
    v305 = v304;
    v306 = v604;
    sub_10001AE00(v637, v604, &qword_10022AD50);
    v307 = v609;
    v308 = v306 + *(v609 + 36);
    *v308 = v297;
    *(v308 + 8) = v299;
    *(v308 + 16) = v301;
    *(v308 + 24) = v303;
    *(v308 + 32) = v305;
    *(v308 + 40) = 0;
    v309 = v306;
    v310 = v605;
    sub_10001AE00(v309, v605, &qword_10022AD48);
    v311 = sub_10018306C();
    v312 = swift_getWitnessTable();
    v313 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
    v733 = v312;
    v734 = v313;
    v731 = swift_getWitnessTable();
    v732 = &protocol witness table for _PaddingLayout;
    v314 = swift_getWitnessTable();
    v315 = v610;
    sub_10017387C(v310, v307);
    v729 = v311;
    v730 = v314;
    v316 = v677;
    v317 = swift_getWitnessTable();
    v318 = v296;
    v319 = sub_10008B70C();
    v320 = v701;
    sub_10017387C(v315, v316);
    (*(v611 + 8))(v315, v316);
    sub_1000050C4(v310, &qword_10022AD48);
    (*(*(v676 - 8) + 56))(v320, 0, 1, v676);
    v727 = v317;
    v728 = v319;
    v290 = v318;
    swift_getWitnessTable();
    sub_1000E7690(v320, v700);
    (*(v718 + 8))(v320, v715);
    (*(v664 + 8))(v638, v665);
LABEL_19:
    v328 = v725;
    goto LABEL_20;
  }

  (*(v601 + 8))(v226, v602);
  sub_100173C74(v225);
  v233 = sub_100163E98();

  v234 = v721;
  v235 = v225;
  if ((v233 & 1) == 0)
  {
LABEL_10:
    sub_100173C74(v235);
    v240 = *(v218 + 16);
    if (!v240)
    {
LABEL_56:
      type metadata accessor for RemoteViewConfiguration();
      sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      result = EnvironmentObject.error()();
      __break(1u);
      return result;
    }

    v241 = objc_allocWithZone(LSApplicationWorkspace);

    v242 = [v241 init];
    v243 = objc_opt_self();
    v244 = String._bridgeToObjectiveC()();
    v245 = [v243 applicationWithBundleIdentifier:v244];

    v246 = sub_100169CC0(v240, 0x6C7070612E6D6F63, 0xEF636973754D2E65, v245);

    if (v246)
    {
      v247 = v725;
      sub_100173C74(v725);
      v697 = sub_100162994();
      v665 = v248;

      sub_100173C74(v247);
      v249 = v663;
      sub_1001618C4(v663);

      v250 = sub_100173C74(v247);
      v251 = (v250 + *(*v250 + 264));
      v252 = *v251;
      v253 = v251[1];

      sub_100173C74(v247);
      v254 = sub_100169830();
      v256 = v255;

      sub_100173C74(v247);
      v257 = sub_100167714();

      type metadata accessor for ServicesUpsellViewModel();
      v258 = swift_allocObject();
      ObservationRegistrar.init()();
      *(v258 + 16) = 0;
      v259 = v665;
      *(v258 + 24) = v697;
      *(v258 + 32) = v259;
      sub_10001AE00(v249, v258 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_openURL, &qword_1002214F8);
      v260 = (v258 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_subtitle);
      *v260 = v252;
      v260[1] = v253;
      v261 = (v258 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_metricsQuery);
      *v261 = v254;
      v261[1] = v256;
      *(v258 + OBJC_IVAR____TtC16EventViewService23ServicesUpsellViewModel_analyticsPageNameType) = v257;
      v262 = v564;
      *v564 = v258;
      type metadata accessor for RemoteViewConfiguration();
      sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
      v262[1] = EnvironmentObject.init()();
      v262[2] = v263;
      v264 = *(v562 + 24);
      *(v262 + v264) = swift_getKeyPath();
      sub_1000024C4(qword_100221928);
      swift_storeEnumTagMultiPayload();
      v265 = static Edge.Set.horizontal.getter();
      v266 = sub_100173D40(v247);
      v267 = v721;
      if (v266)
      {
        sub_100083044();
      }

      EdgeInsets.init(_all:)();
      v269 = v268;
      v271 = v270;
      v273 = v272;
      v275 = v274;
      v276 = v262;
      v277 = v563;
      sub_10018324C(v276, v563, type metadata accessor for ServicesUpsellModule);
      v278 = v667;
      v279 = v277 + *(v667 + 36);
      *v279 = v265;
      *(v279 + 8) = v269;
      *(v279 + 16) = v271;
      *(v279 + 24) = v273;
      *(v279 + 32) = v275;
      *(v279 + 40) = 0;
      v280 = v565;
      sub_10001AE00(v277, v565, &qword_100224648);
      v281 = sub_10018306C();
      v282 = swift_getWitnessTable();
      v283 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
      v749 = v282;
      v750 = v283;
      v747 = swift_getWitnessTable();
      v748 = &protocol witness table for _PaddingLayout;
      v284 = swift_getWitnessTable();
      v745 = v281;
      v746 = v284;
      v285 = v677;
      v286 = swift_getWitnessTable();
      v287 = v267;
      v288 = sub_10008B70C();
      v289 = v701;
      sub_100173974(v280, v285, v278);
      sub_1000050C4(v280, &qword_100224648);
      (*(*(v676 - 8) + 56))(v289, 0, 1, v676);
      v743 = v286;
      v744 = v288;
      v290 = v287;
      swift_getWitnessTable();
      sub_1000E7690(v289, v700);
      (*(v718 + 8))(v289, v715);
    }

    else
    {
      v321 = v701;
      (*(*(v676 - 8) + 56))(v701, 1, 1, v676);
      v322 = sub_10018306C();
      v323 = swift_getWitnessTable();
      v324 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
      v810 = v323;
      v811 = v324;
      v808 = swift_getWitnessTable();
      v809 = &protocol witness table for _PaddingLayout;
      v325 = swift_getWitnessTable();
      v806 = v322;
      v807 = v325;
      v326 = swift_getWitnessTable();
      v327 = sub_10008B70C();
      v804 = v326;
      v805 = v327;
      swift_getWitnessTable();
      sub_1000E7690(v321, v700);
      (*(v718 + 8))(v321, v715);
      v290 = v721;
    }

    goto LABEL_19;
  }

  sub_100173C74(v225);
  v236 = v218;
  v237 = v572;
  sub_100162450();

  v238 = v696;
  v239 = v674;
  if ((*(v696 + 48))(v237, 1, v674) == 1)
  {
    (*(v615 + 8))(v237, v616);
    v218 = v236;
    goto LABEL_10;
  }

  v377 = *(v238 + 32);
  v378 = v574;
  v377(v574, v237, v239);
  v379 = static HorizontalAlignment.leading.getter();
  __chkstk_darwin(v379);
  v380 = v717;
  v555[-8] = v234;
  v555[-7] = v380;
  v555[-6] = v232;
  v555[-5] = v231;
  v551 = v230;
  v552 = v719;
  v553 = v236;
  v554 = v378;
  v381 = v556;
  VStack.init(alignment:spacing:content:)();
  v382 = v680;
  v383 = swift_getWitnessTable();
  sub_100055E18();
  v697 = v383;
  View.contentShape<A>(_:eoFill:)();
  (*(v557 + 8))(v381, v382);
  static Edge.Set.horizontal.getter();
  if (sub_100173D40(v235))
  {
    sub_100083044();
  }

  v534 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v741 = v697;
  v742 = v534;
  v535 = v679;
  v536 = swift_getWitnessTable();
  v537 = v558;
  v538 = v573;
  View.padding(_:_:)();
  (*(v559 + 8))(v538, v535);
  v739 = v536;
  v740 = &protocol witness table for _PaddingLayout;
  v539 = v678;
  v540 = swift_getWitnessTable();
  v541 = v575;
  sub_1000EE87C(v537, v539, v540);
  v697 = *(v561 + 8);
  (v697)(v537, v539);
  v542 = v560;
  sub_1000EE87C(v541, v539, v540);
  v543 = sub_10018306C();
  v544 = v610;
  sub_100173974(v542, v609, v539);
  v737 = v543;
  v738 = v540;
  v545 = v677;
  v546 = swift_getWitnessTable();
  v547 = sub_10008B70C();
  v548 = v701;
  sub_10017387C(v544, v545);
  (*(v611 + 8))(v544, v545);
  v549 = v542;
  v550 = v697;
  (v697)(v549, v539);
  v550(v575, v539);
  (*(*(v676 - 8) + 56))(v548, 0, 1, v676);
  v735 = v546;
  v736 = v547;
  swift_getWitnessTable();
  sub_1000E7690(v548, v700);
  (*(v718 + 8))(v548, v715);
  (*(v696 + 8))(v574, v674);
  v328 = v725;
  v290 = v721;
LABEL_20:
  type metadata accessor for DetailsViewModel();
  v329 = sub_100173C74(v328);
  v330 = v671;
  v698(v671, v329 + *(*v329 + 200), v290);

  sub_100173C74(v328);
  v331 = sub_100169404();
  v332 = v331;

  sub_1000F6130(v330, v331);
  v333 = v643;
  sub_1000924E4(v643);
  static Edge.Set.horizontal.getter();
  if (sub_100173D40(v328))
  {
    sub_1000830AC();
  }

  else
  {
    static Solarium.isEnabled.getter();
  }

  v334 = v645;
  v335 = swift_getWitnessTable();
  v336 = v642;
  View.padding(_:_:)();
  (*(v644 + 8))(v333, v334);
  v802 = v335;
  v803 = &protocol witness table for _PaddingLayout;
  v337 = v716;
  v665 = swift_getWitnessTable();
  sub_1000EE87C(v336, v337, v665);
  v338 = *(v681 + 8);
  v697 = v681 + 8;
  v667 = v338;
  v338(v336, v337);
  v664 = type metadata accessor for LocationViewModel();
  v339 = v725;
  v340 = sub_100173C74(v725);
  v341 = v671;
  v342 = v698;
  v698(v671, v340 + *(*v340 + 200), v290);
  v343 = v342;

  v344 = v720;
  v647 = (*(v720 + 120))(v290, v720);
  v646 = v345;
  (v669)(v341, v290);
  v346 = sub_100173C74(v339);
  v347 = v639;
  v343(v639, v346 + *(*v346 + 200), v290);

  (*(v344 + 176))(v290, v344);
  v348 = v669;
  (v669)(v347, v290);
  sub_100173C74(v339);
  v349 = sub_100169404();
  v350 = v349;

  v351 = sub_100173C74(v339);
  v352 = v640;
  v698(v640, v351 + *(*v351 + 200), v290);

  LOBYTE(v337) = sub_10012BCC8(v352, v290, v344);
  v348(v352, v290);
  sub_1001AC5D4(v647, v646, v672, v349, v337);
  v353 = v649;
  sub_100090A38(v649);
  static Edge.Set.horizontal.getter();
  if (sub_100173D40(v339))
  {
    sub_100083044();
  }

  v354 = v695;
  v355 = v666;
  v356 = v651;
  v357 = swift_getWitnessTable();
  v358 = v648;
  View.padding(_:_:)();
  (*(v650 + 8))(v353, v356);
  v800 = v357;
  v801 = &protocol witness table for _PaddingLayout;
  v359 = v704;
  v670 = swift_getWitnessTable();
  sub_1000EE87C(v358, v359, v670);
  v360 = *(v682 + 8);
  v672 = v682 + 8;
  v671 = v360;
  (v360)(v358, v359);
  v361 = v725;
  v362 = v726;
  sub_100173C74(v725);
  v363 = v362[2];
  if (!v363)
  {
    goto LABEL_56;
  }

  v365 = sub_100169934(v364);

  if ((v365 & 1) != 0 && (sub_100173C74(v361), v366 = sub_100163434(), , *&v818 = v366, v367 = Collection.isEmpty.getter(), , (v367 & 1) == 0))
  {
    sub_100173C74(v361);
    v371 = sub_100163434();

    sub_100173C74(v361);
    v372 = v663;
    sub_100163C08(v663);

    sub_100173C74(v361);
    v373 = sub_1001632E4();

    sub_100173C74(v361);
    v374 = sub_100167714();

    v375 = v577;
    sub_100099048(v371, v372, v373, v374, v577);
    v376 = v583;
    sub_10005CD20(v375, v583);
    static Edge.Set.horizontal.getter();
    if (sub_100173D40(v725))
    {
      sub_100083044();
    }

    v384 = v695;
    v355 = v666;
    v385 = v584;
    v386 = v588;
    View.padding(_:_:)();
    (*(v586 + 8))(v376, v386);
    v387 = v589;
    static AccessibilityChildBehavior.contain.getter();
    v388 = v578;
    v389 = v688;
    v390 = v686;
    View.accessibilityElement(children:)();
    (*(v590 + 8))(v387, v591);
    (*(v587 + 8))(v385, v389);
    *&v818 = v389;
    *(&v818 + 1) = v390;
    v391 = swift_getOpaqueTypeConformance2();
    v392 = v579;
    v393 = v582;
    View.accessibilityIdentifier(_:)();
    (*(v580 + 8))(v388, v393);
    v394 = sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    v751 = v391;
    v752 = v394;
    v395 = swift_getWitnessTable();
    v396 = v581;
    sub_1000EE87C(v392, v384, v395);
    v397 = v654;
    v398 = *(v654 + 8);
    v398(v392, v384);
    v399 = v585;
    sub_1000EE87C(v396, v384, v395);
    v398(v396, v384);
    v368 = v706;
    (*(v397 + 32))(v706, v399, v384);
    (*(v397 + 56))(v368, 0, 1, v384);
    v361 = v725;
  }

  else
  {
    v368 = v706;
    (*(v654 + 56))(v706, 1, 1, v354);
    *&v818 = v688;
    *(&v818 + 1) = v686;
    v369 = swift_getOpaqueTypeConformance2();
    v370 = sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
    v798 = v369;
    v799 = v370;
    swift_getWitnessTable();
  }

  sub_1000E7690(v368, v705);
  v400 = *(v683 + 8);
  v694 = v683 + 8;
  v669 = v400;
  (v400)(v368, v707);
  sub_100173C74(v361);

  v402 = sub_10016993C(v401);

  v403 = v674;
  if ((v402 & 1) == 0)
  {
    goto LABEL_37;
  }

  sub_100173C74(v361);
  v404 = v608;
  sub_100162450();

  v405 = v696;
  if ((*(v696 + 48))(v404, 1, v403) == 1)
  {
    (*(v615 + 8))(v404, v616);
LABEL_37:
    v406 = v709;
    (*(v656 + 56))(v709, 1, 1, v690);
    v796 = swift_getWitnessTable();
    v797 = &protocol witness table for _PaddingLayout;
    swift_getWitnessTable();
    goto LABEL_38;
  }

  (*(v405 + 32))(v612, v404, v403);
  sub_100173C74(v361);
  v415 = sub_1001636D0();

  *&v818 = v415;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v416 = Collection.isEmpty.getter();

  if (v416)
  {
    sub_100173C74(v361);
    v417 = sub_10016396C();

    *&v818 = v417;
    type metadata accessor for Array();
    swift_getWitnessTable();
    v418 = Collection.isEmpty.getter();

    if (v418)
    {
      (*(v696 + 8))(v612, v403);
      goto LABEL_37;
    }
  }

  v698 = (*(v597 + 48))(v403);
  v513 = v512;
  sub_100173C74(v361);
  v514 = sub_1001636D0();

  sub_100173C74(v361);
  v515 = sub_10016396C();

  sub_100173C74(v361);
  v516 = sub_1001632E4();

  sub_100173C74(v361);
  v517 = sub_100167714();

  v554 = v566;
  v553 = v568;
  sub_1000A889C(v698, v513, v514, v515, v516, v517, &v818);
  KeyPath = swift_getKeyPath();
  v519 = v567;
  sub_10014CA54(&v818, KeyPath, 0, v567);
  static Edge.Set.bottom.getter();
  v520 = v691;
  v521 = swift_getWitnessTable();
  v522 = v571;
  View.padding(_:_:)();
  (*(v569 + 8))(v519, v520);
  (*(v696 + 8))(v612, v674);
  v753 = v521;
  v754 = &protocol witness table for _PaddingLayout;
  v523 = v690;
  v524 = swift_getWitnessTable();
  v525 = v570;
  sub_1000EE87C(v522, v523, v524);
  v526 = v656;
  v527 = *(v656 + 8);
  v527(v522, v523);
  sub_1000EE87C(v525, v523, v524);
  v528 = v525;
  v529 = v725;
  v527(v528, v523);
  v530 = v523;
  v531 = v709;
  v532 = v674;
  (*(v526 + 32))(v709, v522, v530);
  v533 = v531;
  (*(v526 + 56))(v531, 0, 1, v530);
  v361 = v529;
  v403 = v532;
  v355 = v666;
  v406 = v533;
LABEL_38:
  sub_1000E7690(v406, v708);
  v407 = *(v687 + 8);
  v698 = (v687 + 8);
  v664 = v407;
  v407(v406, v710);
  sub_100173C74(v361);
  v408 = v653;
  sub_100162450();

  v409 = v696;
  if ((*(v696 + 48))(v408, 1, v403) == 1)
  {
    (*(v615 + 8))(v408, v616);
    v410 = v712;
LABEL_42:
    (*(v657 + 56))(v410, 1, 1, v692);
    swift_getWitnessTable();
    goto LABEL_47;
  }

  (*(v409 + 32))(v355, v408, v403);
  sub_100173C74(v361);
  v411 = sub_100168D4C();

  *&v789 = v411;
  v412 = v361;
  v413 = v721;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v414 = Collection.isEmpty.getter();

  if (v414)
  {
    (*(v696 + 8))(v355, v403);
    v410 = v712;
    v361 = v412;
    goto LABEL_42;
  }

  v419 = sub_100173C74(v412);
  v420 = (v419 + *(*v419 + 256));
  v421 = v420[1];
  v656 = *v420;
  v654 = v421;

  v653 = (*(v597 + 48))(v403);
  v651 = v422;
  sub_100173C74(v412);
  v650 = sub_100168D4C();

  v423 = sub_100173CD8(v412);
  v649 = v363;
  v424 = v423;
  v648 = v423;
  v647 = v425;
  v427 = v426;
  __chkstk_darwin(v423);
  v555[-6] = v413;
  v428 = v413;
  v429 = v717;
  v430 = v722;
  v555[-5] = v717;
  v551 = v430;
  v431 = v723;
  v432 = v724;
  v552 = v723;
  v433 = v719;
  v554 = v719;
  swift_getKeyPath();
  v781 = v424;
  v782 = v647;
  v783 = v427;
  *&v789 = v428;
  *(&v789 + 1) = v429;
  v790 = v430;
  v791 = v431;
  v792 = v432;
  v434 = v725;
  v793 = v433;
  type metadata accessor for MusicEventViewModel();
  type metadata accessor for Binding();
  v435 = v593;
  Binding.subscript.getter();

  v553 = v720;
  v436 = v592;
  sub_1000EF8A0(v656, v654, v653, v651, 0, v650, v435, v592);
  v437 = swift_getKeyPath();
  v438 = v595;
  sub_1000C72AC(v436, v437, 0, v595);
  (*(v696 + 8))(v666, v674);
  v439 = v692;
  v440 = swift_getWitnessTable();
  v441 = v594;
  sub_1000EE87C(v438, v439, v440);
  v442 = v657;
  v443 = *(v657 + 8);
  v443(v438, v439);
  sub_1000EE87C(v441, v439, v440);
  v443(v441, v439);
  v410 = v712;
  (*(v442 + 32))(v712, v438, v439);
  (*(v442 + 56))(v410, 0, 1, v439);
  v361 = v434;
LABEL_47:
  sub_1000E7690(v410, v711);
  v444 = *(v689 + 8);
  v724 = v689 + 8;
  v723 = v444;
  (v444)(v410, v713);
  sub_100173C74(v361);

  v446 = sub_100011730(v445);
  v448 = v447;

  if (!v448)
  {
    goto LABEL_51;
  }

  v449 = HIBYTE(v448) & 0xF;
  if ((v448 & 0x2000000000000000) == 0)
  {
    v449 = v446 & 0xFFFFFFFFFFFFLL;
  }

  if (!v449)
  {
    v478 = 1;
    v477 = v661;
    v474 = v659;
  }

  else
  {
LABEL_51:
    sub_100173C74(v361);
    v450 = sub_100162994();
    v452 = v451;

    sub_100173C74(v361);
    v453 = v663;
    sub_100163270();

    sub_100173C74(v361);

    v455 = v361;
    v456 = sub_100011730(v454);
    v458 = v457;

    sub_100173C74(v455);
    v459 = sub_100167714();

    type metadata accessor for AppViewModel();
    v460 = swift_allocObject();
    v461 = v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_subheaderTitle;
    *v461 = LocalizedStringKey.init(stringLiteral:)();
    *(v461 + 8) = v462;
    *(v461 + 16) = v463 & 1;
    *(v461 + 24) = v464;
    v465 = v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_descriptionTitle;
    *v465 = LocalizedStringKey.init(stringLiteral:)();
    *(v465 + 8) = v466;
    *(v465 + 16) = v467 & 1;
    *(v465 + 24) = v468;
    ObservationRegistrar.init()();
    *(v460 + 16) = 0;
    *(v460 + 24) = v450;
    *(v460 + 32) = v452;
    sub_10001AE00(v453, v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_eventURL, &qword_1002214F8);
    v469 = (v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_queryAppID);
    *v469 = v456;
    v469[1] = v458;
    *(v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_shouldShowDiscoveryDetail) = 0;
    *(v460 + OBJC_IVAR____TtC16EventViewService12AppViewModel_analyticsPageNameType) = v459;
    v470 = swift_getKeyPath();
    v471 = v614;
    *v614 = v460;
    v782 = 0;
    v781 = 0;
    sub_1000024C4(&qword_10022AF10);
    State.init(wrappedValue:)();
    v472 = v790;
    *(v471 + 8) = v789;
    *(v471 + 24) = v472;
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *(v471 + 32) = EnvironmentObject.init()();
    *(v471 + 40) = v473;
    v474 = v659;
    v475 = *(v659 + 28);
    *(v471 + v475) = swift_getKeyPath();
    sub_1000024C4(qword_100221928);
    swift_storeEnumTagMultiPayload();
    v476 = v471 + *(v474 + 32);
    *v476 = v470;
    *(v476 + 8) = 0;
    v477 = v661;
    sub_10018324C(v471, v661, type metadata accessor for AppModule);
    v478 = 0;
  }

  (*(v658 + 56))(v477, v478, 1, v474);
  v479 = v675;
  v480 = v714;
  (*(v673 + 16))(v675, v699);
  *&v789 = v479;
  v481 = v701;
  v482 = v715;
  (*(v718 + 16))(v701, v700);
  *(&v789 + 1) = v481;
  v483 = v684;
  v484 = v716;
  (*(v681 + 16))(v684, v702);
  v790 = v483;
  v485 = v685;
  v486 = v704;
  (*(v682 + 16))(v685, v703);
  v791 = v485;
  v487 = v706;
  v488 = v707;
  (*(v683 + 16))(v706, v705);
  v792 = v487;
  v489 = v709;
  v490 = v710;
  (*(v687 + 16))();
  v793 = v489;
  v491 = v712;
  v492 = v713;
  (*(v689 + 16))(v712, v711, v713);
  v794 = v491;
  v493 = v693;
  sub_10000BEB8(v477, v693, &qword_1002245B8);
  v795 = v493;
  v781 = v480;
  v782 = v482;
  v783 = v484;
  v784 = v486;
  v494 = v486;
  v785 = v488;
  v786 = v490;
  v787 = v492;
  v788 = v660;
  v773 = v652;
  v495 = sub_10018306C();
  v496 = swift_getWitnessTable();
  v497 = sub_10000BFFC(&qword_1002230D8, &qword_1002230D0);
  v771 = v496;
  v772 = v497;
  v769 = swift_getWitnessTable();
  v770 = &protocol witness table for _PaddingLayout;
  v498 = swift_getWitnessTable();
  v767 = v495;
  v768 = v498;
  v499 = swift_getWitnessTable();
  v500 = sub_10008B70C();
  v765 = v499;
  v766 = v500;
  v764 = swift_getWitnessTable();
  v774 = swift_getWitnessTable();
  v775 = v665;
  v776 = v670;
  v762 = v688;
  v763 = v686;
  v501 = swift_getOpaqueTypeConformance2();
  v502 = sub_1001831E4(&qword_100221C50, &type metadata accessor for AccessibilityAttachmentModifier);
  v760 = v501;
  v761 = v502;
  v759 = swift_getWitnessTable();
  v777 = swift_getWitnessTable();
  v757 = swift_getWitnessTable();
  v758 = &protocol witness table for _PaddingLayout;
  v756 = swift_getWitnessTable();
  v778 = swift_getWitnessTable();
  v755 = swift_getWitnessTable();
  v779 = swift_getWitnessTable();
  v780 = sub_10008B7C8();
  sub_1000E76FC(&v789, 8uLL, &v781);
  sub_1000050C4(v477, &qword_1002245B8);
  v503 = v723;
  (v723)(v711, v492);
  v504 = v664;
  (v664)(v708, v490);
  v505 = v669;
  (v669)(v705, v488);
  v506 = v494;
  v507 = v671;
  (v671)(v703, v506);
  v508 = v667;
  (v667)(v702, v716);
  v509 = *(v718 + 8);
  v718 += 8;
  v726 = v509;
  v509(v700, v715);
  v510 = v655;
  (v655)(v699, v714);
  sub_1000050C4(v693, &qword_1002245B8);
  v503(v712, v713);
  v504(v709, v710);
  v505(v706, v707);
  v507(v685, v704);
  v508(v684, v716);
  v726(v701, v715);
  return v510(v675, v714);
}

uint64_t sub_10017C79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a6;
  v51 = a7;
  v48 = a3;
  v49 = a4;
  v52 = a1;
  v56 = a8;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for HeroImageView();
  v47 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v46 = &v42 - v15;
  v44 = type metadata accessor for Optional();
  v43 = *(v44 - 8);
  v16 = __chkstk_darwin(v44);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v42 - v20;
  v22 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v19);
  v24 = &v42 - v23;
  v25 = type metadata accessor for _ConditionalContent();
  v54 = *(v25 - 8);
  v55 = v25;
  __chkstk_darwin(v25);
  v53 = &v42 - v26;
  v59 = a2;
  v60 = v48;
  v61 = v49;
  v62 = a5;
  v63 = v50;
  v64 = v51;
  v27 = type metadata accessor for MusicEventView();
  sub_100173C74(v27);
  sub_100162A0C(v21);

  if ((*(v22 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v43 + 8))(v21, v44);
    v28 = sub_100173C74(v27);
    v29 = (v28 + *(*v28 + 280));
    v31 = *v29;
    v30 = v29[1];

    sub_100173C74(v27);
    sub_1000024C4(&qword_100221D18);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1001B3B50;
    *(v32 + 32) = Color.init(_:bundle:)();
    *(v32 + 40) = Color.init(_:bundle:)();

    v59 = v31;
    v60 = v30;
    v61 = v32;
    swift_getWitnessTable();
    sub_1000ED714();
    v33 = v53;
    sub_100173974(&v59, v11, &type metadata for DefaultHeroImageView);
  }

  else
  {
    (*(v22 + 32))(v24, v21, AssociatedTypeWitness);
    (*(v22 + 16))(v18, v24, AssociatedTypeWitness);
    (*(v22 + 56))(v18, 0, 1, AssociatedTypeWitness);
    sub_10010EFE0(v18, v14);
    WitnessTable = swift_getWitnessTable();
    v35 = v46;
    sub_1000EE87C(v14, v11, WitnessTable);
    v36 = *(v47 + 8);
    v36(v14, v11);
    sub_1000EE87C(v35, v11, WitnessTable);
    sub_1000ED714();
    v33 = v53;
    sub_10017387C(v14, v11);
    v36(v14, v11);
    v36(v35, v11);
    (*(v22 + 8))(v24, AssociatedTypeWitness);
  }

  v37 = swift_getWitnessTable();
  v38 = sub_1000ED714();
  v57 = v37;
  v58 = v38;
  v39 = v55;
  v40 = swift_getWitnessTable();
  sub_1000EE87C(v33, v39, v40);
  return (*(v54 + 8))(v33, v39);
}

uint64_t sub_10017CE7C(char a1)
{
  v2 = type metadata accessor for MusicEventView();
  sub_100173C74(v2);
  sub_100165744((a1 & 1) == 0);
}

uint64_t sub_10017CEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v73 = a8;
  v74 = a5;
  v78 = a2;
  v72 = a1;
  v83 = a9;
  v79 = type metadata accessor for PromotionalPlaylistModule();
  v15 = __chkstk_darwin(v79);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v69 - v18;
  __chkstk_darwin(v17);
  v81 = &v69 - v20;
  v76 = type metadata accessor for AccessibilityTraits();
  v75 = *(v76 - 8);
  __chkstk_darwin(v76);
  v71 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000024C4(&qword_100223418);
  v23 = __chkstk_darwin(v22 - 8);
  v80 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v70 = &v69 - v25;
  *&v87 = a3;
  *(&v87 + 1) = a4;
  *&v88 = a5;
  *(&v88 + 1) = a6;
  *&v89 = a7;
  *(&v89 + 1) = a8;
  v77 = type metadata accessor for MusicEventView();
  sub_100173C74(v77);
  sub_10016292C();

  v26 = Text.init(_:tableName:bundle:comment:)();
  v28 = v27;
  LOBYTE(a4) = v29;
  static Font.title3.getter();
  static Font.Weight.semibold.getter();
  Font.weight(_:)();

  v30 = Text.font(_:)();
  v32 = v31;
  LOBYTE(a6) = v33;
  v35 = v34;

  v36 = a4 & 1;
  v37 = v70;
  sub_100017398(v26, v28, v36);

  LOBYTE(v26) = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  LOBYTE(v84) = a6 & 1;
  v92 = 0;
  *&v87 = v30;
  *(&v87 + 1) = v32;
  LOBYTE(v88) = a6 & 1;
  *(&v88 + 1) = v35;
  LOBYTE(v89) = v26;
  *(&v89 + 1) = v38;
  *v90 = v39;
  *&v90[8] = v40;
  *&v90[16] = v41;
  v90[24] = 0;
  v42 = v71;
  static AccessibilityTraits.isHeader.getter();
  sub_1000024C4(&qword_100223488);
  sub_10005D968();
  View.accessibility(addTraits:)();
  (*(v75 + 8))(v42, v76);
  v93[2] = v89;
  *v94 = *v90;
  *&v94[9] = *&v90[9];
  v93[0] = v87;
  v93[1] = v88;
  v43 = v72;
  sub_1000050C4(v93, &qword_100223488);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v45 = sub_10005EC40(&v84);
  (*(*(AssociatedTypeWitness - 8) + 16))(v45, v78, AssociatedTypeWitness);
  v46 = *(v43 + 16);
  if (v46)
  {
    v48 = *(v46 + 64);
    v47 = *(v46 + 72);

    v49 = v77;
    sub_100173C74(v77);
    v50 = sub_1001632E4();

    sub_100173C74(v49);
    v51 = sub_100167714();

    if (qword_100220C18 != -1)
    {
      swift_once();
    }

    *&v87 = qword_100239130;

    *(&v87 + 1) = LocalizedStringKey.init(stringLiteral:)();
    *&v88 = v52;
    BYTE8(v88) = v53 & 1;
    *&v89 = v54;
    sub_10002FF68(&v84, &v89 + 8);
    *v91 = v48;
    *&v91[8] = v47;
    *&v91[16] = v50;
    v91[24] = 0;
    v91[25] = v51;
    v55 = *v91;
    *(v19 + 4) = *&v90[16];
    *(v19 + 5) = v55;
    *(v19 + 90) = *&v91[10];
    v56 = v88;
    *v19 = v87;
    *(v19 + 1) = v56;
    v57 = *v90;
    *(v19 + 2) = v89;
    *(v19 + 3) = v57;
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    *(v19 + 14) = EnvironmentObject.init()();
    *(v19 + 15) = v58;
    v59 = v79;
    v60 = *(v79 + 24);
    *&v19[v60] = swift_getKeyPath();
    sub_1000024C4(qword_100221928);
    swift_storeEnumTagMultiPayload();
    v61 = *(v59 + 28);
    *&v19[v61] = swift_getKeyPath();
    sub_1000024C4(&qword_1002216C8);
    swift_storeEnumTagMultiPayload();
    v62 = *(v59 + 32);
    *&v19[v62] = swift_getKeyPath();
    sub_1000024C4(&qword_1002229F8);
    swift_storeEnumTagMultiPayload();
    v63 = v81;
    sub_10018324C(v19, v81, type metadata accessor for PromotionalPlaylistModule);
    v64 = v80;
    sub_10000BEB8(v37, v80, &qword_100223418);
    v65 = v82;
    sub_1001832B4(v63, v82);
    v66 = v83;
    sub_10000BEB8(v64, v83, &qword_100223418);
    v67 = sub_1000024C4(&qword_10022AD80);
    sub_1001832B4(v65, v66 + *(v67 + 48));
    sub_100183318(v63, type metadata accessor for PromotionalPlaylistModule);
    sub_1000050C4(v37, &qword_100223418);
    sub_100183318(v65, type metadata accessor for PromotionalPlaylistModule);
    return sub_1000050C4(v64, &qword_100223418);
  }

  else
  {
    type metadata accessor for RemoteViewConfiguration();
    sub_1001831E4(&qword_1002216B8, type metadata accessor for RemoteViewConfiguration);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}