uint64_t sub_1528()
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v0 = *(*(sub_BB00() - 8) + 64);
  __chkstk_darwin();
  type metadata accessor for WirelessInsightsSettings();
  sub_BAF0();
  sub_BAD0();
}

unint64_t sub_1610()
{
  result = qword_143A8;
  if (!qword_143A8)
  {
    sub_BAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_143A8);
  }

  return result;
}

uint64_t sub_165C()
{
  sub_BAE0();
  sub_1610();
  return sub_BB10();
}

Swift::Int sub_16CC()
{
  v1 = *v0;
  sub_BDD0();
  sub_BDE0(v1);
  return sub_BE00();
}

Swift::Int sub_1740()
{
  v1 = *v0;
  sub_BDD0();
  sub_BDE0(v1);
  return sub_BE00();
}

uint64_t sub_1784()
{
  v1 = 0x6D69547472617473;
  v2 = 0x6E656469666E6F63;
  if (*v0 != 2)
  {
    v2 = 0x746361706D69;
  }

  if (*v0)
  {
    v1 = 0x6E6F697461727564;
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

uint64_t sub_1804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1844(uint64_t a1)
{
  v2 = sub_1B08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1880(uint64_t a1)
{
  v2 = sub_1B08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_18BC(void *a1)
{
  v3 = v1;
  v5 = sub_1A7C(&qword_143B0, &qword_C380);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1AC4(a1, a1[3]);
  sub_1B08();
  sub_BE20();
  v11 = *v3;
  v18[15] = 0;
  sub_BD90();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v18[14] = 1;
  sub_BD90();
  v13 = v3[2];
  v14 = v3[3];
  v18[13] = 2;
  sub_BD80();
  v16 = v3[4];
  v17 = v3[5];
  v18[12] = 3;
  sub_BD80();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_1AC4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1B08()
{
  result = qword_145B0[0];
  if (!qword_145B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_145B0);
  }

  return result;
}

uint64_t sub_1B5C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_BDF0(*&v1);
  v2 = *(v0 + 8);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_BDF0(*&v2);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_BB70();
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_BB70();
}

double sub_1BD8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_9C04(a1, v6);
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

Swift::Int sub_1C34()
{
  sub_BDD0();
  sub_1B5C();
  return sub_BE00();
}

Swift::Int sub_1C78()
{
  sub_BDD0();
  sub_1B5C();
  return sub_BE00();
}

uint64_t sub_1CB4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  if ((*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_BDB0() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return sub_BDB0();
}

void sub_1D74()
{
  v1 = OBJC_IVAR___WirelessInsightsSettings____lazy_storage___titleSpecifier;
  v2 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___titleSpecifier);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___titleSpecifier);
LABEL_5:
    v17 = v2;
    return;
  }

  v4 = objc_opt_self();
  v5 = sub_BB30();
  type metadata accessor for WirelessInsightsSettings();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = [v7 bundleForClass:ObjCClassFromMetadata];
  v18._countAndFlagsBits = 0xE000000000000000;
  v20._object = 0x800000000000CEE0;
  v20._countAndFlagsBits = 0xD000000000000017;
  v22.value._countAndFlagsBits = 0x6974746553534957;
  v22.value._object = 0xEB0000000073676ELL;
  v9.super.isa = v8;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  sub_B9D0(v20, v22, v9, v24, v18);

  v10 = sub_BB30();

  v11 = [v4 groupSpecifierWithID:v5 name:v10];

  if (v11)
  {
    v12 = v11;
    v13 = [v7 bundleForClass:ObjCClassFromMetadata];
    v19._countAndFlagsBits = 0xE000000000000000;
    v21._countAndFlagsBits = 0xD00000000000001ELL;
    v21._object = 0x800000000000CF00;
    v23.value._countAndFlagsBits = 0x6974746553534957;
    v23.value._object = 0xEB0000000073676ELL;
    v14.super.isa = v13;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_B9D0(v21, v23, v14, v25, v19);

    v15 = sub_BB30();

    [v12 setProperty:v15 forKey:PSFooterTextGroupKey];

    v16 = *(v0 + v1);
    *(v0 + v1) = v12;
    v12;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_1FC4()
{
  v1 = OBJC_IVAR___WirelessInsightsSettings____lazy_storage___simulationModeSpecifier;
  v2 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___simulationModeSpecifier);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___simulationModeSpecifier);
LABEL_5:
    v13 = v2;
    return;
  }

  swift_getObjectType();
  v4 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x6974746553534957;
  v16.value._object = 0xEB0000000073676ELL;
  v15._countAndFlagsBits = 0x4954414C554D4953;
  v15._object = 0xEF45444F4D5F4E4FLL;
  v7.super.isa = v6;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_B9D0(v15, v16, v7, v17, v14);

  v8 = sub_BB30();

  v9 = [v4 preferenceSpecifierNamed:v8 target:v0 set:0 get:"getPredictionSimulationMode:" detail:0 cell:4 edit:0];

  if (v9)
  {
    v10 = v9;
    v11 = sub_BB30();
    [v10 setIdentifier:v11];

    v12 = *(v0 + v1);
    *(v0 + v1) = v10;
    v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2188()
{
  v1 = OBJC_IVAR___WirelessInsightsSettings____lazy_storage___startSimulationButtonSpecifier;
  v2 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___startSimulationButtonSpecifier);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___startSimulationButtonSpecifier);
LABEL_5:
    v13 = v2;
    return;
  }

  swift_getObjectType();
  v4 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v16.value._countAndFlagsBits = 0x6974746553534957;
  v16.value._object = 0xEB0000000073676ELL;
  v15._object = 0x800000000000CEA0;
  v15._countAndFlagsBits = 0xD000000000000010;
  v7.super.isa = v6;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_B9D0(v15, v16, v7, v17, v14);

  v8 = sub_BB30();

  v9 = [v4 preferenceSpecifierNamed:v8 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v9)
  {
    [v9 setButtonAction:"startPredictionSimulation:"];
    v10 = v9;
    v11 = sub_BB30();
    [v10 setIdentifier:v11];

    v12 = *(v0 + v1);
    *(v0 + v1) = v10;
    v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

void sub_2364()
{
  v1 = OBJC_IVAR___WirelessInsightsSettings____lazy_storage___stopSimulationButtonSpecifier;
  v2 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___stopSimulationButtonSpecifier);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___stopSimulationButtonSpecifier);
LABEL_5:
    v13 = v2;
    return;
  }

  swift_getObjectType();
  v4 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v14._countAndFlagsBits = 0xE000000000000000;
  v15._countAndFlagsBits = 0x4D49535F504F5453;
  v15._object = 0xEF4E4F4954414C55;
  v16.value._countAndFlagsBits = 0x6974746553534957;
  v16.value._object = 0xEB0000000073676ELL;
  v7.super.isa = v6;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_B9D0(v15, v16, v7, v17, v14);

  v8 = sub_BB30();

  v9 = [v4 preferenceSpecifierNamed:v8 target:v0 set:0 get:0 detail:0 cell:13 edit:0];

  if (v9)
  {
    [v9 setButtonAction:"stopPredictionSimulation:"];
    v10 = v9;
    v11 = sub_BB30();
    [v10 setIdentifier:v11];

    v12 = *(v0 + v1);
    *(v0 + v1) = v10;
    v10;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
}

id sub_253C()
{
  swift_getObjectType();
  v1 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v10._countAndFlagsBits = 0xE000000000000000;
  v11._countAndFlagsBits = 0x464F5F5452415453;
  v11._object = 0xEC00000054455346;
  v12.value._countAndFlagsBits = 0x6974746553534957;
  v12.value._object = 0xEB0000000073676ELL;
  v4.super.isa = v3;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_B9D0(v11, v12, v4, v13, v10);

  v5 = sub_BB30();

  v6 = [v1 preferenceSpecifierNamed:v5 target:v0 set:0 get:"startTimeString:" detail:0 cell:4 edit:0];

  if (v6)
  {
    v7 = v6;
    v8 = sub_BB30();
    [v7 setIdentifier:v8];
  }

  return v6;
}

id sub_26C8()
{
  v1 = objc_opt_self();
  v2 = sub_BB30();
  v3 = [v1 preferenceSpecifierNamed:v2 target:v0 set:"setStartTimeWithValue:forSpecifier:" get:"startTime:" detail:0 cell:5 edit:0];

  if (v3)
  {
    v4 = v3;
    isa = sub_BC90().super.super.isa;
    [v4 setProperty:isa forKey:PSControlMaximumKey];

    v6 = v4;
    v7 = sub_BC90().super.super.isa;
    [v6 setProperty:v7 forKey:PSControlMinimumKey];

    v8 = objc_allocWithZone(NSNumber);
    v9 = v6;
    v10 = [v8 initWithBool:1];
    [v9 setProperty:v10 forKey:PSSliderIsContinuous];

    v11 = v9;
    v12 = sub_BB30();
    [v11 setIdentifier:v12];
  }

  return v3;
}

id sub_2888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  swift_getObjectType();
  v9 = objc_opt_self();
  v10 = sub_BB30();
  object = [v9 preferenceSpecifierNamed:v10 target:v6 set:*a5 get:*a6 detail:0 cell:9 edit:0];

  if (object)
  {
    sub_1A7C(&qword_143E8, &qword_C388);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_C330;
    *(v12 + 32) = 1751607656;
    *(v12 + 40) = 0xE400000000000000;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = 6579565;
    *(v12 + 72) = 0xE300000000000000;
    *(v12 + 120) = &type metadata for String;
    *(v12 + 88) = &type metadata for String;
    *(v12 + 96) = 7827308;
    *(v12 + 104) = 0xE300000000000000;
    v38 = object;
    isa = sub_BC30().super.isa;

    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_C330;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = objc_opt_self();
    v16 = [v15 bundleForClass:ObjCClassFromMetadata];
    v35._countAndFlagsBits = 0xE000000000000000;
    v35._object = object;
    v43.value._object = 0xEB0000000073676ELL;
    v40._countAndFlagsBits = 1212631368;
    v40._object = 0xE400000000000000;
    v43.value._countAndFlagsBits = 0x6974746553534957;
    v17.super.isa = v16;
    v46._countAndFlagsBits = 0;
    v46._object = 0xE000000000000000;
    v18 = sub_B9D0(v40, v43, v17, v46, v35);
    v20 = v19;

    *(v13 + 56) = &type metadata for String;
    *(v13 + 32) = v18;
    *(v13 + 40) = v20;
    v21 = [v15 bundleForClass:ObjCClassFromMetadata];
    v36._countAndFlagsBits = 0xE000000000000000;
    v41._countAndFlagsBits = 0x4D554944454DLL;
    v41._object = 0xE600000000000000;
    v44.value._countAndFlagsBits = 0x6974746553534957;
    v44.value._object = 0xEB0000000073676ELL;
    v22.super.isa = v21;
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    v23 = sub_B9D0(v41, v44, v22, v47, v36);
    v25 = v24;

    *(v13 + 88) = &type metadata for String;
    *(v13 + 64) = v23;
    *(v13 + 72) = v25;
    v26 = [v15 bundleForClass:ObjCClassFromMetadata];
    v37._countAndFlagsBits = 0xE000000000000000;
    v42._countAndFlagsBits = 5721932;
    v42._object = 0xE300000000000000;
    v45.value._countAndFlagsBits = 0x6974746553534957;
    v45.value._object = 0xEB0000000073676ELL;
    object = v37._object;
    v27.super.isa = v26;
    v48._countAndFlagsBits = 0;
    v48._object = 0xE000000000000000;
    v28 = sub_B9D0(v42, v45, v27, v48, v37);
    v30 = v29;

    *(v13 + 120) = &type metadata for String;
    *(v13 + 96) = v28;
    *(v13 + 104) = v30;
    v31 = sub_BC30().super.isa;

    [v38 setValues:isa titles:v31];

    v32 = v38;
    v33 = sub_BB30();
    [v32 setIdentifier:v33];
  }

  return object;
}

void sub_2BF8()
{
  v1 = OBJC_IVAR___WirelessInsightsSettings____lazy_storage___currentSpecifiers;
  if (*(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___currentSpecifiers))
  {
    v2 = *(v0 + OBJC_IVAR___WirelessInsightsSettings____lazy_storage___currentSpecifiers);
LABEL_12:

    return;
  }

  v3 = v0;
  swift_getObjectType();
  sub_1A7C(&qword_14588, &qword_C770);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_C340;
  sub_1D74();
  *(v4 + 32) = v5;
  sub_1FC4();
  *(v4 + 40) = v6;
  sub_2188();
  *(v4 + 48) = v7;
  sub_2364();
  *(v4 + 56) = v8;
  v9 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v29._countAndFlagsBits = 0xE000000000000000;
  v32._countAndFlagsBits = 0x4954434944455250;
  v32._object = 0xEB00000000534E4FLL;
  v33.value._countAndFlagsBits = 0x6974746553534957;
  v33.value._object = 0xEB0000000073676ELL;
  v12.super.isa = v11;
  v34._countAndFlagsBits = 0;
  v34._object = 0xE000000000000000;
  sub_B9D0(v32, v33, v12, v34, v29);

  v13 = sub_BB30();

  v14 = [v9 groupSpecifierWithName:v13];

  if (v14)
  {
    *(v4 + 64) = v14;
    v15 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    swift_beginAccess();
    v16 = *(v3 + v15);
    v17 = *(v16 + 16);
    if (!v17)
    {
LABEL_11:
      v27 = sub_2EFC(&_swiftEmptyArrayStorage);

      sub_8654(v27);
      v28 = *(v3 + v1);
      *(v3 + v1) = v4;

      goto LABEL_12;
    }

    v30 = v4;
    v31 = v1;

    sub_87E4(0, v17, 0);
    v18 = 0;
    v19 = *(v16 + 16);
    v20 = (v16 + 72);
    while (v19 != v18)
    {
      v21 = *(v20 - 2);
      v22 = *v20;

      sub_9E48(v18);
      v24 = v23;

      v26 = *(&_swiftEmptyArrayStorage + 2);
      v25 = *(&_swiftEmptyArrayStorage + 3);
      if (v26 >= v25 >> 1)
      {
        sub_87E4((v25 > 1), v26 + 1, 1);
      }

      ++v18;
      *(&_swiftEmptyArrayStorage + 2) = v26 + 1;
      *(&_swiftEmptyArrayStorage + v26 + 4) = v24;
      v20 += 6;
      if (v17 == v18)
      {

        v4 = v30;
        v1 = v31;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2EFC(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return &_swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = &_swiftEmptyArrayStorage;
  v29 = a1 + 32;
  v3 = &qword_14590;
  while (1)
  {
    v5 = *(v29 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 8 * v1);
      }

      v7 = sub_BD40();
    }

    else
    {
      v7 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_BD40();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return &_swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *(&dword_18 + (v2 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_BD40();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_BD20();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_B90C();
      for (i = 0; i != v15; ++i)
      {
        sub_1A7C(v3, &qword_C778);
        v19 = v3;
        v20 = sub_9940(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_B8C4(0, &qword_14580, PSSpecifier_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_BD40();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_31D0()
{
  v1 = sub_BB30();
  v2 = [v0 valueForKey:v1];

  if (v2)
  {
    sub_BCE0();
    swift_unknownObjectRelease();
    sub_A488(&v11, v13);
    sub_A488(v13, &v11);
    sub_1A7C(&qword_14400, &qword_C398);
  }

  else
  {
    sub_1A7C(&qword_143F8, &qword_C390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_C350;
    *(inited + 32) = 0x696669636570735FLL;
    *(inited + 40) = 0xEB00000000737265;
    sub_2BF8();
    v5 = sub_3448(v4);

    *(inited + 72) = sub_1A7C(&qword_14400, &qword_C398);
    *(inited + 48) = v5;
    sub_A358(inited);
    swift_setDeallocating();
    sub_B52C(inited + 32, &qword_14408, &qword_C3A0);
    isa = sub_BB20().super.isa;

    [v0 setValuesForKeysWithDictionary:isa];

    v7 = sub_BB30();
    v8 = [v0 valueForKey:v7];

    if (v8)
    {
      sub_BCE0();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v13[0] = v11;
    v13[1] = v12;
    if (!*(&v12 + 1))
    {
      sub_B52C(v13, &qword_14410, &qword_C3A8);
      return 0;
    }
  }

  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

char *sub_3448(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_BD40();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_8804(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_BD10();
        sub_B8C4(0, &qword_14580, PSSpecifier_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_8804((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_A488(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_B8C4(0, &qword_14580, PSSpecifier_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_8804((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_A488(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_3730(void *a1, void *a2)
{
  v3 = v2;
  sub_B8C4(0, &qword_14418, OS_os_log_ptr);
  v6 = a1;
  v7 = sub_BCC0();
  v8 = sub_BCA0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_0, v7, v8, "set start time offset value: %@", v9, 0xCu);
    sub_B52C(v10, &qword_14420, &qword_C3B0);
  }

  v12 = sub_A904(a2);
  if ((v13 & 1) == 0)
  {
    v14 = v12;
    [v6 doubleValue];
    v16 = v15;
    v17 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    swift_beginAccess();
    v18 = *&v3[v17];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v3[v17] = v18;
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v18 = sub_979C(v18);
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v14 < *(v18 + 2))
        {
          *&v18[48 * v14 + 32] = round(v16);
          *&v3[v17] = v18;
          swift_endAccess();
          sub_BD00(19);
          v24 = v14;
          v20 = sub_BDA0();
          v22 = v21;

          v25 = v22;
          v26._object = 0x800000000000CC70;
          v26._countAndFlagsBits = 0xD000000000000011;
          sub_BB90(v26);
          v23 = sub_BB30();

          [v3 reloadSpecifierID:{v23, v24, v20, v25}];

          return;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_3A80(void *a1)
{
  v2 = sub_A904(a1);
  if (v3)
  {
    sub_B8C4(0, &qword_14428, NSNumber_ptr);
    v4.super.super.isa = sub_BCB0(120).super.super.isa;
LABEL_6:
    isa = v4.super.super.isa;
    v10 = [(objc_class *)v4.super.super.isa stringValue];

    v11 = sub_BB40();
    return v11;
  }

  v5 = v2;
  v6 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
  result = swift_beginAccess();
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v1 + v6);
    if (v5 < *(v8 + 16))
    {
      v4.super.super.isa = [objc_allocWithZone(NSNumber) initWithDouble:*(v8 + 48 * v5 + 32)];
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_3E1C(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_B8C4(0, &qword_14418, OS_os_log_ptr);

  v8 = sub_BCC0();
  v9 = sub_BCA0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_80AC(a1, a2, &v19);
    _os_log_impl(&dword_0, v8, v9, "set impact value: %s", v10, 0xCu);
    sub_B970(v11);
  }

  result = sub_A904(a3);
  if ((v13 & 1) == 0)
  {
    v14 = result;
    v15 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    swift_beginAccess();
    v16 = *(v4 + v15);

    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v15) = v16;
    if (result)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = sub_979C(v16);
      v16 = result;
      *(v4 + v15) = result;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v14 < *(v16 + 16))
        {
          v17 = v16 + 48 * v14;
          v18 = *(v17 + 72);
          *(v17 + 64) = a1;
          *(v17 + 72) = a2;
          *(v4 + v15) = v16;
          swift_endAccess();
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_4164(uint64_t a1, unint64_t a2, void *a3)
{
  v4 = v3;
  sub_B8C4(0, &qword_14418, OS_os_log_ptr);

  v8 = sub_BCC0();
  v9 = sub_BCA0();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_80AC(a1, a2, &v19);
    _os_log_impl(&dword_0, v8, v9, "set confidence value: %s", v10, 0xCu);
    sub_B970(v11);
  }

  result = sub_A904(a3);
  if ((v13 & 1) == 0)
  {
    v14 = result;
    v15 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
    swift_beginAccess();
    v16 = *(v4 + v15);

    result = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v15) = v16;
    if (result)
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      result = sub_979C(v16);
      v16 = result;
      *(v4 + v15) = result;
      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_6:
        if (v14 < *(v16 + 16))
        {
          v17 = v16 + 48 * v14;
          v18 = *(v17 + 56);
          *(v17 + 48) = a1;
          *(v17 + 56) = a2;
          *(v4 + v15) = v16;
          swift_endAccess();
        }

LABEL_11:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_4344(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, id))
{
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = sub_BB40();
  v11 = v10;
  v12 = a4;
  v13 = a1;
  a6(v9, v11, v12);
}

uint64_t sub_4598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_BC60();
  v4[3] = sub_BC50();
  v6 = sub_BC40();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_4630, v6, v5);
}

uint64_t sub_4630()
{
  sub_BA30();
  *(v0 + 48) = sub_BA20();
  v1 = async function pointer to WIS.XPC.ServerConnection.start()[1];
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_46D8;

  return WIS.XPC.ServerConnection.start()();
}

uint64_t sub_46D8()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[8] = v4;
  *v4 = v3;
  v4[1] = sub_4830;
  v5 = v1[6];
  v6 = v1[2];

  return sub_49BC(v5);
}

uint64_t sub_4830()
{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_4950, v4, v3);
}

uint64_t sub_4950()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];

  return v3();
}

uint64_t sub_49BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_BAC0();
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_1A7C(&qword_14430, &qword_C3C0);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = sub_BA70();
  v2[14] = v9;
  v10 = *(v9 - 8);
  v2[15] = v10;
  v11 = *(v10 + 64) + 15;
  v2[16] = swift_task_alloc();
  v12 = *(*(sub_1A7C(&qword_14438, &qword_C3C8) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  sub_BC60();
  v2[19] = sub_BC50();
  v14 = sub_BC40();
  v2[20] = v14;
  v2[21] = v13;

  return _swift_task_switch(sub_4BC4, v14, v13);
}

uint64_t sub_4BC4()
{
  v1 = v0[16];
  sub_BA60();
  v2 = async function pointer to WIS.XPC.ServerConnection.sendMessage<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[22] = v3;
  v4 = sub_B4E4(&qword_14440, &type metadata accessor for WIS.XPC.ServicePredictionGetSimulationModeRequest);
  *v3 = v0;
  v3[1] = sub_4CA8;
  v5 = v0[18];
  v6 = v0[16];
  v7 = v0[14];
  v8 = v0[5];

  return WIS.XPC.ServerConnection.sendMessage<A>(_:)(v5, v6, v7, v4);
}

uint64_t sub_4CA8()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 176);
  v5 = *v1;

  v6 = v2[16];
  v7 = v2[15];
  v8 = v2[14];
  if (v0)
  {

    (*(v7 + 8))(v6, v8);
    v9 = v3[20];
    v10 = v3[21];
    v11 = sub_50DC;
  }

  else
  {
    (*(v7 + 8))(v6, v8);
    v9 = v3[20];
    v10 = v3[21];
    v11 = sub_4E3C;
  }

  return _swift_task_switch(v11, v9, v10);
}

uint64_t sub_4E3C()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[11];

  (*(v5 + 56))(v2, 0, 1, v4);
  sub_B85C(v2, v3, &qword_14438, &qword_C3C8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[17];
    sub_B52C(v0[18], &qword_14438, &qword_C3C8);
    v7 = v6;
    v8 = &qword_14438;
    v9 = &qword_C3C8;
  }

  else
  {
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[10];
    sub_ACF8(v0[17], v11);
    sub_B85C(v11, v10, &qword_14430, &qword_C3C0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[18];
    v15 = v0[12];
    v16 = v0[13];
    if (EnumCaseMultiPayload == 1)
    {
      sub_B52C(v0[13], &qword_14430, &qword_C3C0);
      sub_B52C(v14, &qword_14438, &qword_C3C8);
      v7 = v15;
      v8 = &qword_14430;
      v9 = &qword_C3C0;
    }

    else
    {
      v18 = v0[8];
      v17 = v0[9];
      v20 = v0[6];
      v19 = v0[7];
      (*(v18 + 32))(v17, v0[12], v19);
      v21 = sub_BAB0();
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = &v20[OBJC_IVAR___WirelessInsightsSettings_simulationMode];
      swift_beginAccess();
      v25 = v24[1];
      *v24 = v21;
      v24[1] = v23;

      [v20 reloadSpecifiers];
      sub_B52C(v16, &qword_14430, &qword_C3C0);
      v8 = &qword_14438;
      v9 = &qword_C3C8;
      v7 = v14;
    }
  }

  sub_B52C(v7, v8, v9);
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[9];

  v32 = v0[1];

  return v32();
}

uint64_t sub_50DC()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[10];
  v5 = v0[11];

  (*(v5 + 56))(v2, 1, 1, v4);
  sub_B85C(v2, v3, &qword_14438, &qword_C3C8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v6 = v0[17];
    sub_B52C(v0[18], &qword_14438, &qword_C3C8);
    v7 = v6;
    v8 = &qword_14438;
    v9 = &qword_C3C8;
  }

  else
  {
    v10 = v0[12];
    v11 = v0[13];
    v12 = v0[10];
    sub_ACF8(v0[17], v11);
    sub_B85C(v11, v10, &qword_14430, &qword_C3C0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v14 = v0[18];
    v15 = v0[12];
    v16 = v0[13];
    if (EnumCaseMultiPayload == 1)
    {
      sub_B52C(v0[13], &qword_14430, &qword_C3C0);
      sub_B52C(v14, &qword_14438, &qword_C3C8);
      v7 = v15;
      v8 = &qword_14430;
      v9 = &qword_C3C0;
    }

    else
    {
      v18 = v0[8];
      v17 = v0[9];
      v20 = v0[6];
      v19 = v0[7];
      (*(v18 + 32))(v17, v0[12], v19);
      v21 = sub_BAB0();
      v23 = v22;
      (*(v18 + 8))(v17, v19);
      v24 = &v20[OBJC_IVAR___WirelessInsightsSettings_simulationMode];
      swift_beginAccess();
      v25 = v24[1];
      *v24 = v21;
      v24[1] = v23;

      [v20 reloadSpecifiers];
      sub_B52C(v16, &qword_14430, &qword_C3C0);
      v8 = &qword_14438;
      v9 = &qword_C3C8;
      v7 = v14;
    }
  }

  sub_B52C(v7, v8, v9);
  v27 = v0[17];
  v26 = v0[18];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[9];

  v32 = v0[1];

  return v32();
}

uint64_t sub_537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(sub_1A7C(&qword_14448, &qword_C3D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = v26 - v10;
  sub_B85C(a3, v26 - v10, &qword_14448, &qword_C3D0);
  v12 = sub_BC80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_B52C(v11, &qword_14448, &qword_C3D0);
  }

  else
  {
    sub_BC70();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_BC40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_BB50() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_B52C(a3, &qword_14448, &qword_C3D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B52C(a3, &qword_14448, &qword_C3D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_5764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_B9F0();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = sub_BA50();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();
  v11 = *(*(sub_1A7C(&qword_14540, &qword_C718) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = sub_BA90();
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = sub_BAA0();
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = *(*(sub_1A7C(&qword_14530, &qword_C710) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = sub_BC60();
  v4[21] = sub_BC50();
  v20 = sub_BC40();
  v4[22] = v20;
  v4[23] = v19;

  return _swift_task_switch(sub_59E0, v20, v19);
}

uint64_t sub_59E0()
{
  sub_BA30();
  *(v0 + 192) = sub_BA20();
  v1 = async function pointer to WIS.XPC.ServerConnection.start()[1];
  v2 = swift_task_alloc();
  *(v0 + 200) = v2;
  *v2 = v0;
  v2[1] = sub_5A88;

  return WIS.XPC.ServerConnection.start()();
}

uint64_t sub_5A88()
{
  v1 = *v0;
  v2 = *(*v0 + 200);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_5BA8, v4, v3);
}

uint64_t sub_5BA8()
{
  v1 = v0[18];
  (*(v0[14] + 104))(v0[15], enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.simulatedOnly(_:), v0[13]);
  sub_BA80();
  v2 = async function pointer to WIS.XPC.ServerConnection.sendMessage<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[26] = v3;
  v4 = sub_B4E4(&qword_14538, &type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest);
  *v3 = v0;
  v3[1] = sub_5CB8;
  v5 = v0[24];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[16];

  return WIS.XPC.ServerConnection.sendMessage<A>(_:)(v6, v7, v8, v4);
}

uint64_t sub_5CB8()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v4 = (*v1)[18];
  v5 = (*v1)[17];
  v6 = (*v1)[16];
  v11 = *v1;
  (*v1)[27] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_6520;
  }

  else
  {
    sub_B52C(v2[19], &qword_14530, &qword_C710);
    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_5E48;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_5E48()
{
  v1 = v0;
  v2 = v0[5];
  v3 = OBJC_IVAR___WirelessInsightsSettings_simulatedItems;
  swift_beginAccess();
  v4 = *(v2 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v1[7];

    sub_8824(0, v5, 0);
    v7 = (v4 + 72);
    do
    {
      v8 = v1[20];
      v9 = *(v7 - 5);
      v10 = *(v7 - 4);
      v12 = *(v7 - 3);
      v11 = *(v7 - 2);
      v13 = *v7;
      v28 = *(v7 - 1);

      sub_BC50();
      sub_BC40();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = v1[8];

      sub_B9E0();

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_8824(v15 > 1, v16 + 1, 1);
      }

      v17 = v1[8];
      v18 = v1[6];
      _swiftEmptyArrayStorage[2] = v16 + 1;
      (*(v6 + 32))(_swiftEmptyArrayStorage + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v17, v18);
      v7 += 6;
      --v5;
    }

    while (v5);
  }

  v19 = v1[11];
  sub_BA40();
  v20 = async function pointer to WIS.XPC.ServerConnection.sendMessage<A>(_:)[1];
  v21 = swift_task_alloc();
  v1[28] = v21;
  v22 = sub_B4E4(&qword_14548, &type metadata accessor for WIS.XPC.ServicePredictionSimulateRequest);
  *v21 = v1;
  v21[1] = sub_6110;
  v23 = v1[24];
  v25 = v1[11];
  v24 = v1[12];
  v26 = v1[9];

  return WIS.XPC.ServerConnection.sendMessage<A>(_:)(v24, v25, v26, v22);
}

uint64_t sub_6110()
{
  v2 = *v1;
  v3 = (*v1)[28];
  v4 = (*v1)[11];
  v5 = (*v1)[10];
  v6 = (*v1)[9];
  v11 = *v1;
  (*v1)[29] = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_65DC;
  }

  else
  {
    sub_B52C(v2[12], &qword_14540, &qword_C718);
    v7 = v2[22];
    v8 = v2[23];
    v9 = sub_62A0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_62A0()
{
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_6338;
  v2 = v0[24];
  v3 = v0[5];

  return sub_49BC(v2);
}

uint64_t sub_6338()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v6 = *v0;

  v3 = *(v1 + 184);
  v4 = *(v1 + 176);

  return _swift_task_switch(sub_6458, v4, v3);
}

uint64_t sub_6458()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[8];

  v9 = v0[1];

  return v9();
}

uint64_t sub_6520()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[27];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_65DC()
{
  v1 = v0[24];
  v2 = v0[21];

  v3 = v0[29];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[15];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[8];

  v10 = v0[1];

  return v10();
}

uint64_t sub_6698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (*(*(sub_1A7C(&qword_14448, &qword_C3D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = v23 - v9;
  sub_B85C(a3, v23 - v9, &qword_14448, &qword_C3D0);
  v11 = sub_BC80();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_B52C(v10, &qword_14448, &qword_C3D0);
  }

  else
  {
    sub_BC70();
    (*(v12 + 8))(v10, v11);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_BC40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_BB50() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_B52C(a3, &qword_14448, &qword_C3D0);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_B52C(a3, &qword_14448, &qword_C3D0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_6968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_BA90();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();
  v8 = sub_BAA0();
  v4[6] = v8;
  v9 = *(v8 - 8);
  v4[7] = v9;
  v10 = *(v9 + 64) + 15;
  v4[8] = swift_task_alloc();
  v11 = sub_1A7C(&qword_14530, &qword_C710);
  v4[9] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  sub_BC60();
  v4[11] = sub_BC50();
  v14 = sub_BC40();
  v4[12] = v14;
  v4[13] = v13;

  return _swift_task_switch(sub_6AF4, v14, v13);
}

uint64_t sub_6AF4()
{
  sub_BA30();
  *(v0 + 112) = sub_BA20();
  v1 = async function pointer to WIS.XPC.ServerConnection.start()[1];
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_6B9C;

  return WIS.XPC.ServerConnection.start()();
}

uint64_t sub_6B9C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_6CBC, v4, v3);
}

uint64_t sub_6CBC()
{
  v1 = v0[8];
  (*(v0[4] + 104))(v0[5], enum case for WIS.XPC.ServicePredictionSetSimulationModeRequest.SimulationMode.real(_:), v0[3]);
  sub_BA80();
  v2 = async function pointer to WIS.XPC.ServerConnection.sendMessage<A>(_:)[1];
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = sub_B4E4(&qword_14538, &type metadata accessor for WIS.XPC.ServicePredictionSetSimulationModeRequest);
  *v3 = v0;
  v3[1] = sub_6DD0;
  v5 = v0[14];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[6];

  return WIS.XPC.ServerConnection.sendMessage<A>(_:)(v6, v7, v8, v4);
}

uint64_t sub_6DD0()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 104);
  v9 = *(v2 + 96);
  if (v0)
  {
    v10 = sub_7254;
  }

  else
  {
    v10 = sub_6F68;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_6F68()
{
  v2 = v0[9];
  v1 = v0[10];
  sub_1A7C(&qword_143E8, &qword_C388);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_C350;
  *(v3 + 56) = v2;
  v4 = sub_B480((v3 + 32));
  sub_B85C(v1, v4, &qword_14530, &qword_C710);
  sub_BDC0();

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_7084;
  v6 = v0[14];
  v7 = v0[2];

  return sub_49BC(v6);
}

uint64_t sub_7084()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return _swift_task_switch(sub_71A4, v4, v3);
}

uint64_t sub_71A4()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  sub_B52C(v2, &qword_14530, &qword_C710);

  v6 = v0[1];

  return v6();
}

uint64_t sub_7254()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[5];

  v6 = v0[1];
  v7 = v0[17];

  return v6();
}

void sub_7310(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(*(sub_1A7C(&qword_14448, &qword_C3D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v15 - v9;
  sub_BC60();
  sub_BC50();
  sub_BC40();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_BC80();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = a1;
  v13 = sub_BC50();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = &protocol witness table for MainActor;
  v14[4] = v12;
  sub_6698(0, 0, v10, a6, v14);
}

id sub_74AC(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[OBJC_IVAR___WirelessInsightsSettings_simulationMode];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&v3[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___titleSpecifier] = 0;
  *&v3[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___simulationModeSpecifier] = 0;
  *&v3[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___startSimulationButtonSpecifier] = 0;
  *&v3[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___stopSimulationButtonSpecifier] = 0;
  *&v3[OBJC_IVAR___WirelessInsightsSettings_simulatedItems] = &off_106F8;
  *&v3[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___currentSpecifiers] = 0;
  if (a2)
  {
    v8 = sub_BB30();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_7680(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR___WirelessInsightsSettings_simulationMode];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___titleSpecifier] = 0;
  *&v1[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___simulationModeSpecifier] = 0;
  *&v1[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___startSimulationButtonSpecifier] = 0;
  *&v1[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___stopSimulationButtonSpecifier] = 0;
  *&v1[OBJC_IVAR___WirelessInsightsSettings_simulatedItems] = &off_10778;
  *&v1[OBJC_IVAR___WirelessInsightsSettings____lazy_storage___currentSpecifiers] = 0;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_77F8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_78D0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_79C8;

  return v7(a1);
}

uint64_t sub_79C8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_7AC0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return _swiftEmptyArrayStorage;
    }

    v7 = sub_BC20();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_7E80(0, 1, 1, _swiftEmptyArrayStorage);
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
    v14 = sub_7E80((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = _swiftEmptyArrayStorage;
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
        v19 = sub_BC00();
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

        v14 = sub_BB80();
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
        v18 = sub_BB80();
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
          v7 = sub_BC20();
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

        v14 = sub_7E80(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_BC20();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_7E80(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_7E80((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_BB80();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_7E80(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7C(&qword_14570, &qword_C760);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_7F8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7C(&qword_14560, &qword_C758);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_80AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_8178(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_B754(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_B970(v11);
  return v7;
}

unint64_t sub_8178(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_8284(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_BD30();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_8284(uint64_t a1, unint64_t a2)
{
  v4 = sub_82D0(a1, a2);
  sub_8400(&off_106D0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_82D0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_84EC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_BD30();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_BBA0();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_84EC(v10, 0);
        result = sub_BCF0();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_8400(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_8560(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_84EC(uint64_t a1, uint64_t a2)
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

  sub_1A7C(&qword_14558, &qword_C750);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_8560(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7C(&qword_14558, &qword_C750);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_8654(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_BD40();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_BD40();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_8744(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_97B0(v9 + 8 * *(&dword_10 + v9) + 32, (*(&dword_18 + v9) >> 1) - *(&dword_10 + v9), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_8744(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(&dword_18 + (v3 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_BD40();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_BD20();
  *v1 = result;
  return result;
}

void *sub_87E4(void *a1, int64_t a2, char a3)
{
  result = sub_8844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_8804(char *a1, int64_t a2, char a3)
{
  result = sub_8978(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_8824(size_t a1, int64_t a2, char a3)
{
  result = sub_8A88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_8844(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A7C(&qword_145A0, &qword_C780);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A7C(&qword_14590, &qword_C778);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8978(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A7C(&qword_143E8, &qword_C388);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_8A88(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1A7C(&qword_14550, &qword_C720);
  v10 = *(sub_B9F0() - 8);
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
  v15 = *(sub_B9F0() - 8);
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

unint64_t sub_8C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_BDD0();
  sub_BB70();
  v6 = sub_BE00();

  return sub_8CD8(a1, a2, v6);
}

unint64_t sub_8CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_BDB0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_8D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_B808();

  result = sub_BC10();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_9328();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_BD30();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_9328()
{
  v0 = sub_BC20();
  v4 = sub_93A8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_93A8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_BB60();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_BCD0();
  if (!v9)
  {
    v11 = _swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_84EC(v9, 0);
  v12 = sub_9500(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_BB60();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_BD30();
LABEL_4:

  return sub_BB60();
}

unint64_t sub_9500(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_9720(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_BBE0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_BD30();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_9720(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_BBB0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_9720(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_BBF0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_BBC0();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_97B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_BD40();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8));
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_BD40();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_B90C();
          for (i = 0; i != v6; ++i)
          {
            sub_1A7C(&qword_14590, &qword_C778);
            v9 = sub_9940(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) <= a2)
      {
        sub_B8C4(0, &qword_14580, PSSpecifier_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_9940(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_BD10();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_99C0;
  }

  __break(1u);
  return result;
}

uint64_t sub_99C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_BD30();
  }

  result = sub_A498(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_9A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_BDB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_BDB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563 || (sub_BDB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746361706D69 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_BDB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_9C04@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1A7C(&qword_145A8, &qword_C788);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_1AC4(a1, a1[3]);
  sub_1B08();
  sub_BE10();
  if (v2)
  {
    return sub_B970(a1);
  }

  v27 = 0;
  sub_BD70();
  v12 = v11;
  v26 = 1;
  sub_BD70();
  v14 = v13;
  v25 = 2;
  v15 = sub_BD60();
  v17 = v16;
  v23 = v15;
  v24 = 3;
  v18 = sub_BD60();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  result = sub_B970(a1);
  *a2 = v12;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v17;
  a2[4] = v18;
  a2[5] = v20;
  return result;
}

void sub_9E48(void *a1)
{
  swift_getObjectType();
  sub_1A7C(&qword_14588, &qword_C770);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_C360;
  v3 = objc_opt_self();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = objc_opt_self();
  v6 = [v5 bundleForClass:ObjCClassFromMetadata];
  v24._countAndFlagsBits = 0xE000000000000000;
  v31._countAndFlagsBits = 0x49545F5452415453;
  v31._object = 0xEA0000000000454DLL;
  v38.value._countAndFlagsBits = 0x6974746553534957;
  v38.value._object = 0xEB0000000073676ELL;
  v7.super.isa = v6;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  sub_B9D0(v31, v38, v7, v41, v24);

  v8 = sub_BB30();

  v9 = [v3 groupSpecifierWithName:v8];

  if (!v9)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v2 + 32) = v9;
  sub_BD00(19);
  sub_BDA0();

  v32._object = 0x800000000000CC70;
  v32._countAndFlagsBits = 0xD000000000000011;
  sub_BB90(v32);
  v10 = sub_253C();

  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + 40) = v10;
  v25._object = a1;
  sub_BDA0();
  v33._countAndFlagsBits = 0x545F54524154532ELL;
  v33._object = 0xEB00000000454D49;
  sub_BB90(v33);
  v11 = sub_26C8();

  if (!v11)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 48) = v11;
  v12 = [v5 bundleForClass:ObjCClassFromMetadata];
  v25._countAndFlagsBits = 0xE000000000000000;
  v34._countAndFlagsBits = 0x544341504D49;
  v34._object = 0xE600000000000000;
  v39.value._countAndFlagsBits = 0x6974746553534957;
  v39.value._object = 0xEB0000000073676ELL;
  v13.super.isa = v12;
  v42._countAndFlagsBits = 0;
  v42._object = 0xE000000000000000;
  sub_B9D0(v34, v39, v13, v42, v25);

  v14 = sub_BB30();

  v15 = [v3 groupSpecifierWithName:v14];

  if (!v15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 56) = v15;
  v26._object = a1;
  v27 = sub_BDA0();
  v29 = v16;
  v35._countAndFlagsBits = 0x544341504D492ELL;
  v35._object = 0xE700000000000000;
  sub_BB90(v35);
  v17 = sub_2888(v27, v29, 0x746361706D49, 0xE600000000000000, &selRef_setImpactWithValue_forSpecifier_, &selRef_impact_);

  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v2 + 64) = v17;
  v18 = [v5 bundleForClass:ObjCClassFromMetadata];
  v26._countAndFlagsBits = 0xE000000000000000;
  v36._countAndFlagsBits = 0x4E454449464E4F43;
  v36._object = 0xEA00000000004543;
  v40.value._countAndFlagsBits = 0x6974746553534957;
  v40.value._object = 0xEB0000000073676ELL;
  v19.super.isa = v18;
  v43._countAndFlagsBits = 0;
  v43._object = 0xE000000000000000;
  sub_B9D0(v36, v40, v19, v43, v26);

  v20 = sub_BB30();

  v21 = [v3 groupSpecifierWithName:v20];

  if (!v21)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 72) = v21;
  v28 = sub_BDA0();
  v30 = v22;
  v37._countAndFlagsBits = 0x454449464E4F432ELL;
  v37._object = 0xEB0000000045434ELL;
  sub_BB90(v37);
  v23 = sub_2888(v28, v30, 0x6E656469666E6F43, 0xEA00000000006563, &selRef_setConfidenceWithValue_forSpecifier_, &selRef_confidence_);

  if (v23)
  {
    *(v2 + 80) = v23;
    return;
  }

LABEL_15:
  __break(1u);
}

unint64_t sub_A358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A7C(&qword_14578, &qword_C768);
    v3 = sub_BD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_B85C(v4, &v13, &qword_14408, &qword_C3A0);
      v5 = v13;
      v6 = v14;
      result = sub_8C60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_A488(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

_OWORD *sub_A488(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_A498(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_9720(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_BBD0();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_9720(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_9720(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_BBD0();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

id sub_A904(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v2 = result;
    v3 = sub_BB40();
    v5 = v4;

    v17[0] = 46;
    v17[1] = 0xE100000000000000;
    __chkstk_darwin();
    v15[2] = v17;
    v6 = sub_7AC0(0x7FFFFFFFFFFFFFFFLL, 1, sub_B7B0, v15, v3, v5, &v16);
    if (v6[2] && (v7 = v6[4], v8 = v6[5], v10 = v6[6], v9 = v6[7], , , (v8 ^ v7) >> 14))
    {
      v11 = sub_99C8(v7, v8, v10, v9, 10);
      if ((v12 & 0x100) != 0)
      {
        v11 = sub_8D90(v7, v8, v10, v9, 10);
      }

      v13 = v11;
      v14 = v12;

      if (v14)
      {
        return 0;
      }

      else
      {
        return v13;
      }
    }

    else
    {

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_AA64()
{
  swift_getObjectType();
  v1 = (*(*(sub_1A7C(&qword_14448, &qword_C3D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v3 = &v20 - v2;
  v4 = &v0[OBJC_IVAR___WirelessInsightsSettings_simulationMode];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = objc_opt_self();

    v9 = [v8 bundleForClass:ObjCClassFromMetadata];
    v19._countAndFlagsBits = 0xE000000000000000;
    v21._countAndFlagsBits = v5;
    v21._object = v6;
    v23.value._countAndFlagsBits = 0x6974746553534957;
    v23.value._object = 0xEB0000000073676ELL;
    v10.super.isa = v9;
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    v11 = sub_B9D0(v21, v23, v10, v25, v19);
  }

  else
  {
    v12 = sub_BC80();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    sub_BC60();
    v13 = v0;
    v14 = sub_BC50();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = &protocol witness table for MainActor;
    v15[4] = v13;
    sub_537C(v5, 0, v3, &unk_C730, v15);

    v16 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass:v16];
    v19._countAndFlagsBits = 0xE000000000000000;
    v22._countAndFlagsBits = 0x474E4944414F4CLL;
    v22._object = 0xE700000000000000;
    v24.value._countAndFlagsBits = 0x6974746553534957;
    v24.value._object = 0xEB0000000073676ELL;
    v17.super.isa = v9;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v11 = sub_B9D0(v22, v24, v17, v26, v19);
  }

  return v11;
}

uint64_t sub_ACF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A7C(&qword_14430, &qword_C3C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_AD70()
{
  result = qword_14450;
  if (!qword_14450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14450);
  }

  return result;
}

unint64_t sub_ADE4()
{
  result = qword_14458;
  if (!qword_14458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14458);
  }

  return result;
}

__n128 sub_AE90(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_AEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_AEEC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_AF4C()
{
  result = qword_14520;
  if (!qword_14520)
  {
    sub_AFA4(&qword_14528, &qword_C5E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14520);
  }

  return result;
}

uint64_t sub_AFA4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WirelessInsightsSettings.Item.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WirelessInsightsSettings.Item.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_B160()
{
  result = qword_149C0[0];
  if (!qword_149C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_149C0);
  }

  return result;
}

unint64_t sub_B1B8()
{
  result = qword_14AD0;
  if (!qword_14AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14AD0);
  }

  return result;
}

unint64_t sub_B210()
{
  result = qword_14AD8[0];
  if (!qword_14AD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_14AD8);
  }

  return result;
}

uint64_t sub_B264()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B2F8;

  return sub_6968(v3, v4, v5, v2);
}

uint64_t sub_B2F8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_B3EC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B9CC;

  return sub_5764(v3, v4, v5, v2);
}

uint64_t *sub_B480(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B4E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_B52C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1A7C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_B590()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_B5D0()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_B2F8;

  return sub_4598(v3, v4, v5, v2);
}

uint64_t sub_B664()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_B69C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_B9CC;

  return sub_78D0(a1, v5);
}

uint64_t sub_B754(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_B7B0(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_BDB0() & 1;
  }
}

unint64_t sub_B808()
{
  result = qword_14568;
  if (!qword_14568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14568);
  }

  return result;
}

uint64_t sub_B85C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A7C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_B8C4(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_B90C()
{
  result = qword_14598;
  if (!qword_14598)
  {
    sub_AFA4(&qword_14590, &qword_C778);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_14598);
  }

  return result;
}

uint64_t sub_B970(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}