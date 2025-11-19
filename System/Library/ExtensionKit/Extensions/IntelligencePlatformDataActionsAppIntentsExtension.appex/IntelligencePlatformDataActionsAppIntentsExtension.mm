IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional __swiftcall AppUsageActivityOptions.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v5._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_100039950;
  v5._object = object;
  v3 = sub_10002DDF0(v2, v5);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t AppUsageActivityOptions.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 7105633;
  }

  if (a1 == 1)
  {
    return 7368801;
  }

  return 0x65746973626577;
}

IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional sub_100001878@<W0>(Swift::String *a1@<X0>, IntelligencePlatformDataActionsAppIntentsExtension::AppUsageActivityOptions_optional *a2@<X8>)
{
  result.value = AppUsageActivityOptions.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1000018A8@<X0>(uint64_t *a1@<X8>)
{
  result = AppUsageActivityOptions.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static AppUsageActivityOptions.typeDisplayRepresentation.getter()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = sub_100002CD8(v0);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = sub_10002D740();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  sub_100002C9C();
  sub_10002D730();
  sub_100001AC4(v5, 1, 1, v6);
  return sub_10002D610();
}

uint64_t sub_100001A7C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100001AEC()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v20 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - v6;
  v8 = sub_10002D740();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100001A7C(&qword_10003C1C0, &qword_10002E7C0);
  v10 = (sub_100001A7C(&qword_10003C1C8, qword_10002E7C8) - 8);
  v11 = *(*v10 + 72);
  v12 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v13 = swift_allocObject();
  v20[1] = v13;
  *(v13 + 16) = xmmword_10002E420;
  v14 = v13 + v12;
  v15 = v10[14];
  *(v13 + v12) = 0;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  v16 = sub_10002D4E0();
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v17 = v10[14];
  *(v14 + v11) = 1;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  v18 = v10[14];
  *(v14 + 2 * v11) = 2;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v16);
  sub_10002D500();
  sub_10002D510();
  sub_1000029DC();
  result = sub_10002DBB0();
  static AppUsageActivityOptions.caseDisplayRepresentations = result;
  return result;
}

uint64_t *AppUsageActivityOptions.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_10003C0B0 != -1)
  {
    sub_100002CAC();
  }

  return &static AppUsageActivityOptions.caseDisplayRepresentations;
}

uint64_t static AppUsageActivityOptions.caseDisplayRepresentations.getter()
{
  if (qword_10003C0B0 != -1)
  {
    sub_100002CAC();
  }
}

uint64_t sub_100001EC8(uint64_t a1)
{
  v2 = sub_1000028D4();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100001F14()
{
  AppUsageActivityOptions.caseDisplayRepresentations.unsafeMutableAddressor();
}

uint64_t sub_100001F44(uint64_t a1)
{
  v2 = sub_100002830();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t variable initialization expression of DeviceActivityDeviceAppEntity._name()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_10002D730();
  return sub_10002D300();
}

uint64_t variable initialization expression of DeviceActivityDeviceAppEntity._isAllDevices()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C110, &unk_10002E440);
  sub_10002D730();
  return sub_10002D320();
}

uint64_t variable initialization expression of FindSportsEvents._sportsTeamAppEntity()
{
  v0 = sub_10002D5C0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_100002C9C();
  v5 = v4 - v3;
  v6 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v7 = sub_100002CD8(v6);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v24 - v13;
  v15 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v16 = sub_100002CD8(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v24 - v19;
  v21 = sub_10002D740();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C120, &qword_10002E450);
  sub_10002D730();
  sub_100002CE4(v20);
  sub_10002D1F0();
  memset(v24, 0, sizeof(v24));
  sub_100002CE4(v14);
  sub_100002CE4(v12);
  (*(v1 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100002310();
  return sub_10002D3B0();
}

unint64_t sub_100002310()
{
  result = qword_10003C128;
  if (!qword_10003C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C128);
  }

  return result;
}

uint64_t variable initialization expression of SportsEventAppEntity._teams()
{
  sub_100001A7C(&qword_10003C130, &qword_10002E458);
  sub_100002310();
  return sub_10002D2B0();
}

uint64_t sub_1000023B8()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C138, &qword_10002E460);
  sub_10002D730();
  sub_100002310();
  return sub_10002D2A0();
}

uint64_t variable initialization expression of SportsEventAppEntity._startTime()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_10002D730();
  return sub_10002D2F0();
}

uint64_t variable initialization expression of SportsEventAppEntity._endTime()
{
  v0 = sub_10002D740();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_100002D00();
  sub_100001A7C(&qword_10003C140, &qword_10002E468);
  sub_10002D730();
  return sub_10002D2F0();
}

unint64_t sub_1000025BC()
{
  result = qword_10003C148;
  if (!qword_10003C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C148);
  }

  return result;
}

unint64_t sub_100002614()
{
  result = qword_10003C150;
  if (!qword_10003C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C150);
  }

  return result;
}

unint64_t sub_10000266C()
{
  result = qword_10003C158;
  if (!qword_10003C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C158);
  }

  return result;
}

unint64_t sub_1000026C4()
{
  result = qword_10003C160;
  if (!qword_10003C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C160);
  }

  return result;
}

unint64_t sub_100002728()
{
  result = qword_10003C168;
  if (!qword_10003C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C168);
  }

  return result;
}

unint64_t sub_100002780()
{
  result = qword_10003C170;
  if (!qword_10003C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C170);
  }

  return result;
}

unint64_t sub_1000027D8()
{
  result = qword_10003C178;
  if (!qword_10003C178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C178);
  }

  return result;
}

unint64_t sub_100002830()
{
  result = qword_10003C180;
  if (!qword_10003C180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C180);
  }

  return result;
}

unint64_t sub_1000028D4()
{
  result = qword_10003C188;
  if (!qword_10003C188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C188);
  }

  return result;
}

unint64_t sub_10000292C()
{
  result = qword_10003C190;
  if (!qword_10003C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C190);
  }

  return result;
}

unint64_t sub_100002984()
{
  result = qword_10003C198;
  if (!qword_10003C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C198);
  }

  return result;
}

unint64_t sub_1000029DC()
{
  result = qword_10003C1A0;
  if (!qword_10003C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C1A0);
  }

  return result;
}

unint64_t sub_100002A34()
{
  result = qword_10003C1A8;
  if (!qword_10003C1A8)
  {
    sub_100002A98(&qword_10003C1B0, &qword_10002E718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C1A8);
  }

  return result;
}

uint64_t sub_100002A98(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for AppUsageActivityOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppUsageActivityOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        JUMPOUT(0x100002C44);
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100002CAC()
{

  return swift_once();
}

uint64_t sub_100002CE4(uint64_t a1)
{

  return sub_100001AC4(a1, 1, 1, v1);
}

uint64_t type metadata accessor for AppUsageAppEntity()
{
  result = qword_10003C2A0;
  if (!qword_10003C2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100002DA0()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10002D740();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10002D620();
  sub_100004480(v6, qword_10003CBD0);
  sub_100004448(v6, qword_10003CBD0);
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

uint64_t sub_100002EDC()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v0);
  v2 = *(v1 + 64);
  sub_10000457C();
  __chkstk_darwin(v3);
  v5 = &v19 - v4;
  v6 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v6);
  v8 = *(v7 + 64);
  sub_10000457C();
  __chkstk_darwin(v9);
  v10 = sub_10002D740();
  sub_100004570(v10);
  v12 = *(v11 + 64);
  __chkstk_darwin(v13);
  sub_100002C9C();
  sub_100003028();
  sub_100004588();
  sub_100001AC4(v14, v15, v16, v10);
  sub_1000031E4(v5);
  v17 = sub_10002D4E0();
  sub_100001AC4(v5, 0, 1, v17);
  return sub_10002D500();
}

uint64_t sub_100003028()
{
  v1 = sub_10002D3F0();
  v2 = sub_100004534(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002C9C();
  v9 = v8 - v7;
  v10 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  sub_100002CD8(v10);
  v12 = *(v11 + 64);
  sub_10000457C();
  __chkstk_darwin(v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for AppUsageAppEntity();
  sub_10000437C(v0 + *(v16 + 20), v15);
  v17 = sub_10002DAA0();
  if (sub_1000040D4(v15, 1, v17) == 1)
  {
    sub_1000043EC(v15, &qword_10003C240, &qword_10002F350);
    v18 = *v0;
    sub_10002D270();
    sub_10002D3D0();
    (*(v4 + 8))(v9, v1);
  }

  else
  {
    sub_10002DA90();
    sub_100004570(v17);
    (*(v19 + 8))(v15, v17);
  }

  return sub_10002D730();
}

uint64_t sub_1000031E4@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = sub_10002D3F0();
  v3 = sub_100004534(v2);
  v51 = v4;
  v52 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100002C9C();
  v9 = v8 - v7;
  v10 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  sub_100002CD8(v10);
  v12 = *(v11 + 64);
  sub_10000457C();
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_10002D770();
  v17 = sub_100004534(v16);
  v50 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_100004560();
  v49 = v21 - v22;
  __chkstk_darwin(v23);
  v48 = &v48 - v24;
  v25 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v26 = sub_100002CD8(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100004560();
  v31 = v29 - v30;
  __chkstk_darwin(v32);
  v34 = &v48 - v33;
  v35 = *(type metadata accessor for AppUsageAppEntity() + 20);
  sub_10000437C(v1 + v35, v34);
  v36 = sub_10002DAA0();
  if (sub_1000040D4(v34, 1, v36) == 1)
  {
    sub_1000043EC(v34, &qword_10003C240, &qword_10002F350);
  }

  else
  {
    sub_10002DA60();
    v38 = v37;
    sub_100004570(v36);
    (*(v39 + 8))(v34, v36);
    if (v38 >> 60 != 15)
    {
      return sub_10002D4D0();
    }
  }

  sub_10000437C(v1 + v35, v31);
  if (sub_1000040D4(v31, 1, v36) == 1)
  {
    sub_1000043EC(v31, &qword_10003C240, &qword_10002F350);
    sub_100004588();
    sub_100001AC4(v40, v41, v42, v16);
LABEL_7:
    sub_1000043EC(v15, &qword_10003C2F8, &qword_10002EA60);
    v44 = *v1;
    sub_10002D270();
    sub_10002D3D0();
    (*(v51 + 8))(v9, v52);
    return sub_10002D4B0();
  }

  sub_10002DA70();
  sub_100004570(v36);
  (*(v43 + 8))(v31, v36);
  if (sub_1000040D4(v15, 1, v16) == 1)
  {
    goto LABEL_7;
  }

  v46 = v50;
  v47 = v48;
  (*(v50 + 32))(v48, v15, v16);
  (*(v46 + 16))(v49, v47, v16);
  sub_10002D4C0();
  return (*(v46 + 8))(v47, v16);
}

uint64_t sub_1000035F0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002D740();
  v3 = sub_100002CD8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C2F0, "N");
  sub_100004594();
  *a1 = sub_10002D2C0();
  v6 = *(type metadata accessor for AppUsageAppEntity() + 20);
  sub_10002DAA0();
  sub_100004588();
  return sub_100001AC4(v7, v8, v9, v10);
}

uint64_t sub_1000036A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_10002D3F0();
  v7 = sub_100004534(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100004560();
  v14 = (v12 - v13);
  __chkstk_darwin(v15);
  v17 = &v30 - v16;
  v18 = sub_10002D740();
  v19 = sub_100002CD8(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C2F0, "N");
  sub_100004594();
  *a3 = sub_10002D2C0();
  v22 = *(type metadata accessor for AppUsageAppEntity() + 20);
  sub_10002DAA0();
  sub_100004588();
  sub_100001AC4(v23, v24, v25, v26);
  sub_10000430C(a2, a3 + v22);
  v27 = *(v9 + 16);
  v27(v17, a1, v6);
  v27(v14, v17, v6);
  sub_10002D280();
  sub_1000043EC(a2, &qword_10003C240, &qword_10002F350);
  v28 = *(v9 + 8);
  v28(a1, v6);
  return (v28)(v17, v6);
}

uint64_t sub_1000039BC(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C300, type metadata accessor for AppUsageAppEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100003B80(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C300, type metadata accessor for AppUsageAppEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100003BFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0B8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, qword_10003CBD0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100003CE8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002A98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100003D30(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C1D0, type metadata accessor for AppUsageAppEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100003DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100003EBC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100003EBC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100003FB0(uint64_t a1)
{
  v2 = sub_1000044E4(&qword_10003C218, type metadata accessor for AppUsageAppEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100004040(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
    v9 = a1 + *(a3 + 20);

    return sub_1000040D4(v9, a2, v8);
  }
}

void *sub_100004110(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
    v8 = v5 + *(a4 + 20);

    return sub_100001AC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_10000419C()
{
  sub_100004220();
  if (v0 <= 0x3F)
  {
    sub_1000042B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100004220()
{
  if (!qword_10003C2B0)
  {
    sub_10002D3F0();
    sub_1000044E4(&qword_10003C2B8, &type metadata accessor for IntentApplication);
    v0 = sub_10002D330();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C2B0);
    }
  }
}

void sub_1000042B4()
{
  if (!qword_10003C2C0)
  {
    sub_10002DAA0();
    v0 = sub_10002DD40();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C2C0);
    }
  }
}

uint64_t sub_10000430C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000437C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000043EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A7C(a2, a3);
  sub_100004570(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_100004448(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004480(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000044E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100004594()
{

  return sub_10002D730();
}

uint64_t type metadata accessor for AppUsageResultEntity()
{
  result = qword_10003C3D0;
  if (!qword_10003C3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004648()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_10002D740();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_10002D620();
  sub_100004480(v6, qword_10003CBE8);
  sub_100004448(v6, qword_10003CBE8);
  sub_10002D730();
  sub_100001AC4(v3, 1, 1, v4);
  return sub_10002D610();
}

id sub_10000477C()
{
  result = [objc_allocWithZone(NSDateComponentsFormatter) init];
  qword_10003C308 = result;
  return result;
}

uint64_t sub_1000047B0()
{
  v1 = *(v0 + 24);
  sub_10002D270();
  return v3;
}

uint64_t sub_1000047E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v30[1] = a1;
  v3 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v3);
  v5 = *(v4 + 64);
  sub_10000457C();
  __chkstk_darwin(v6);
  v30[0] = v30 - v7;
  v8 = sub_100001A7C(&qword_10003C418, "> ");
  sub_100004534(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_10000457C();
  __chkstk_darwin(v13);
  v15 = v30 - v14;
  v16 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v16);
  v18 = *(v17 + 64);
  sub_10000457C();
  __chkstk_darwin(v19);
  v21 = v30 - v20;
  v22 = sub_10002D740();
  v23 = sub_100006D2C(v22);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  sub_100002C9C();
  sub_100004A40();
  if (qword_10003C0C8 != -1)
  {
    sub_100006D54();
  }

  v26 = *(v1 + 16);
  v27 = qword_10003C308;
  sub_10002D270();
  sub_1000060D0();

  (*(v10 + 8))(v15, v8);
  sub_10002D730();
  sub_100001AC4(v21, 0, 1, v22);
  v28 = type metadata accessor for AppUsageResultEntity();
  sub_100006C50(v2 + *(v28 + 40), v30[0], &qword_10003C1B8, &unk_10002EA50);
  return sub_10002D500();
}

uint64_t sub_100004A40()
{
  v1 = sub_10002D510();
  v2 = sub_100004534(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002C9C();
  v9 = v8 - v7;
  v10 = sub_10002D3F0();
  v11 = sub_100004534(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002C9C();
  v18 = v17 - v16;
  if (v0[7])
  {
    v19 = v0[6];

    return sub_10002D730();
  }

  else
  {
    v22 = v0[4];
    v21 = v0[5];

    sub_10002D400();
    sub_10002D3E0();
    (*(v13 + 8))(v18, v10);
    sub_10002D4F0();
    return (*(v4 + 8))(v9, v1);
  }
}

uint64_t sub_100004C00@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10002D740();
  v3 = sub_100002CD8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002C9C();
  sub_100001A7C(&qword_10003C498, &qword_10002ED60);
  sub_10002D730();
  sub_100006D3C();
  sub_100006CA0(v6, v7);
  *a1 = sub_10002D2A0();
  sub_100001A7C(&qword_10003C4A0, &qword_10002ED68);
  sub_100006DC0();
  sub_10002D730();
  a1[1] = sub_10002D2E0();
  sub_100001A7C(&qword_10003C4A8, &unk_10002ED70);
  sub_100006DA8();
  sub_10002D730();
  a1[2] = sub_10002D2D0();
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_100006D74();
  sub_10002D730();
  a1[3] = sub_10002D300();
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  v8 = type metadata accessor for AppUsageResultEntity();
  a1[6] = 0;
  a1[7] = 0;
  v9 = *(v8 + 40);
  v10 = sub_10002D4E0();
  return sub_100001AC4(a1 + v9, 1, 1, v10);
}

uint64_t sub_100004D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v139 = a2;
  v151 = a1;
  v128 = sub_10002D510();
  v4 = sub_100004534(v128);
  v127 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_100002C9C();
  v126 = v9 - v8;
  v125 = sub_10002D3F0();
  v10 = sub_100004534(v125);
  v124 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100002C9C();
  v135 = v15 - v14;
  v16 = sub_100001A7C(&qword_10003C3E8, "F ");
  v17 = sub_100002CD8(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v20);
  v132 = (v120 - v21);
  v22 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  sub_100002CD8(v22);
  v24 = *(v23 + 64);
  sub_10000457C();
  __chkstk_darwin(v25);
  v143 = v120 - v26;
  v27 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  v28 = sub_100002CD8(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v31);
  sub_100006D1C();
  v33 = __chkstk_darwin(v32);
  v146 = v120 - v34;
  __chkstk_darwin(v33);
  v140 = v120 - v35;
  v144 = sub_10002D770();
  v36 = sub_100004534(v144);
  v123 = v37;
  v39 = *(v38 + 64);
  __chkstk_darwin(v36);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v40);
  v120[0] = v120 - v41;
  v42 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v43 = sub_100002CD8(v42);
  v45 = *(v44 + 64);
  __chkstk_darwin(v43);
  sub_100006D08();
  sub_100006D1C();
  __chkstk_darwin(v46);
  sub_100006D1C();
  v48 = __chkstk_darwin(v47);
  v50 = v120 - v49;
  __chkstk_darwin(v48);
  v52 = v120 - v51;
  v53 = sub_100001A7C(&qword_10003C418, "> ");
  v54 = sub_100004534(v53);
  v56 = v55;
  v58 = *(v57 + 64);
  v59 = __chkstk_darwin(v54);
  v61 = v120 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v59);
  v63 = v120 - v62;
  v64 = sub_10002D740();
  v65 = sub_100002CD8(v64);
  v67 = *(v66 + 64);
  __chkstk_darwin(v65);
  sub_100006D08();
  v147 = v68;
  __chkstk_darwin(v69);
  sub_100001A7C(&qword_10003C498, &qword_10002ED60);
  sub_10002D730();
  sub_100006D3C();
  sub_100006CA0(v70, v71);
  v129 = sub_10002D2A0();
  *a3 = v129;
  sub_100001A7C(&qword_10003C4A0, &qword_10002ED68);
  sub_100006DC0();
  sub_10002D730();
  v130 = sub_10002D2E0();
  a3[1] = v130;
  sub_100001A7C(&qword_10003C4A8, &unk_10002ED70);
  sub_100006DA8();
  sub_10002D730();
  v72 = sub_10002D2D0();
  a3[2] = v72;
  sub_100001A7C(&qword_10003C108, &unk_10002F390);
  sub_100006D74();
  sub_10002D730();
  v148 = sub_10002D300();
  a3[3] = v148;
  v73 = type metadata accessor for AppUsageResultEntity();
  a3[6] = 0;
  a3[7] = 0;
  v74 = *(v73 + 40);
  v136 = sub_10002D4E0();
  v137 = v74;
  sub_100001AC4(a3 + v74, 1, 1, v136);
  v121 = sub_10002DAE0();
  a3[4] = v121;
  a3[5] = v75;
  v120[1] = v75;
  sub_10002DAF0();
  v76 = [objc_opt_self() seconds];
  sub_100006B10();
  sub_10002D6A0();
  (*(v56 + 16))(v61, v63, v53);
  v145 = v72;
  sub_10002D280();
  v77 = *(v56 + 8);
  v141 = v63;
  v142 = v77;
  v149 = v56 + 8;
  v150 = v53;
  v77(v63, v53);
  v78 = v139;
  sub_100006C50(v139, v52, &qword_10003C240, &qword_10002F350);
  v79 = sub_10002DAA0();
  if (sub_100006E18(v52) == 1)
  {
    sub_100006BA4(v52, &qword_10003C240, &qword_10002F350);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = sub_10002DA90();
    v81 = v82;
    sub_100006D98();
    (*(v83 + 8))(v52, v79);
  }

  a3[6] = v80;
  a3[7] = v81;
  sub_100006C50(v78, v50, &qword_10003C240, &qword_10002F350);
  v84 = sub_100006E18(v50);

  v85 = v140;
  v138 = v80;
  if (v84 == 1)
  {
    sub_100006BA4(v50, &qword_10003C240, &qword_10002F350);
  }

  else
  {
    sub_10002DA60();
    v87 = v86;
    sub_100006D98();
    (*(v88 + 8))(v50, v79);
    if (v87 >> 60 != 15)
    {
      v96 = v143;
      sub_10002D4D0();
      v93 = v151;
      v91 = v146;
      v92 = v144;
      goto LABEL_13;
    }
  }

  v89 = v134;
  sub_100006C50(v78, v134, &qword_10003C240, &qword_10002F350);
  v90 = sub_100006E18(v89);
  v91 = v146;
  if (v90 == 1)
  {
    sub_100006BA4(v89, &qword_10003C240, &qword_10002F350);
    v92 = v144;
    sub_100001AC4(v85, 1, 1, v144);
    v93 = v151;
LABEL_10:
    sub_100006BA4(v85, &qword_10003C2F8, &qword_10002EA60);
    sub_10002DAE0();
    v96 = v143;
    sub_10002D4B0();
    goto LABEL_13;
  }

  sub_10002DA70();
  sub_100006D98();
  (*(v94 + 8))(v89, v79);
  v92 = v144;
  v95 = sub_1000040D4(v85, 1, v144);
  v93 = v151;
  if (v95 == 1)
  {
    goto LABEL_10;
  }

  v97 = v123;
  v98 = v120[0];
  (*(v123 + 32))(v120[0], v85, v92);
  (*(v97 + 16))(v122, v98, v92);
  v96 = v143;
  sub_10002D4C0();
  v99 = v98;
  v93 = v151;
  (*(v97 + 8))(v99, v92);
LABEL_13:
  sub_100001AC4(v96, 0, 1, v136);
  sub_100006B54(v96, a3 + v137, &qword_10003C1B8, &unk_10002EA50);
  v100 = sub_10002DAD0();
  sub_10002DAE0();
  if (v100)
  {
    v101 = v135;
    sub_10002D400();
    v102 = v131;
    sub_100006C50(v78, v131, &qword_10003C240, &qword_10002F350);
    v103 = v132;
    sub_1000036A4(v101, v102, v132);
    v104 = type metadata accessor for AppUsageAppEntity();
    sub_100001AC4(v103, 0, 1, v104);
    v105 = &qword_10003C3E8;
    v106 = "F ";
    sub_100006DF8(v103, &v154);
    sub_10002D280();
    v107 = v103;
  }

  else
  {
    sub_10002D760();

    if (sub_100006E18(v91) || (v109 = v123, v110 = v122, (*(v123 + 16))(v122, v91, v92), sub_10002D750(), v112 = v111, (*(v109 + 8))(v110, v92), !v112))
    {
      v152 = 0x2F2F3A70747468;
      v153 = 0xE700000000000000;
      v156._countAndFlagsBits = sub_10002DAE0();
      sub_10002DC90(v156);

      v108 = v133;
      sub_10002D760();

      sub_100006B54(v108, v91, &qword_10003C2F8, &qword_10002EA60);
    }

    else
    {

      v108 = v133;
    }

    v105 = &qword_10003C2F8;
    v106 = &qword_10002EA60;
    sub_100006C50(v91, v108, &qword_10003C2F8, &qword_10002EA60);
    sub_100006DF8(v108, &v155);
    sub_10002D280();
    sub_100006BA4(v108, &qword_10003C2F8, &qword_10002EA60);
    v107 = v91;
  }

  sub_100006BA4(v107, v105, v106);
  v152 = 0;
  v153 = 0xE000000000000000;
  if (v81)
  {
    sub_10002D730();
  }

  else
  {

    v113 = v135;
    sub_10002D400();
    v114 = v126;
    sub_10002D3E0();
    (*(v124 + 8))(v113, v125);
    sub_10002D4F0();
    (*(v127 + 8))(v114, v128);
  }

  v157._countAndFlagsBits = sub_10002DC60();
  sub_10002DC90(v157);

  v158._countAndFlagsBits = 10272;
  v158._object = 0xE200000000000000;
  sub_10002DC90(v158);
  if (qword_10003C0C8 != -1)
  {
    sub_100006D54();
  }

  v115 = qword_10003C308;
  v116 = v141;
  sub_10002D270();
  sub_1000060D0();

  v142(v116, v150);
  sub_10002D730();
  v159._countAndFlagsBits = sub_10002DC60();
  sub_10002DC90(v159);

  v160._countAndFlagsBits = 41;
  v160._object = 0xE100000000000000;
  sub_10002DC90(v160);
  sub_10002D280();
  sub_100006BA4(v78, &qword_10003C240, &qword_10002F350);
  v117 = sub_10002DB00();
  sub_100006D2C(v117);
  return (*(v118 + 8))(v93);
}

uint64_t sub_100005C44(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C4C8, type metadata accessor for AppUsageResultEntity);

  return static TransientAppEntity.defaultQuery.getter(a1, v2);
}

uint64_t sub_100005E08(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C4C8, type metadata accessor for AppUsageResultEntity);

  return TransientAppEntity.id.getter(a1, v2);
}

uint64_t sub_100005E84@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D620();
  v3 = sub_100004448(v2, qword_10003CBE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100005F70(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C310, type metadata accessor for AppUsageResultEntity);

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_100006038(uint64_t a1)
{
  v2 = sub_100006CA0(&qword_10003C358, type metadata accessor for AppUsageResultEntity);

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000060D0()
{
  [v0 setUnitsStyle:1];
  sub_100001A7C(&qword_10003C418, "> ");
  sub_10002D6B0();
  if (v1 >= 60.0)
  {
    sub_10002D6B0();
    if (v2 >= 3600.0)
    {
      v3 = 96;
    }

    else
    {
      v3 = 64;
    }

    [v0 setAllowedUnits:v3];
  }

  else
  {
    [v0 setAllowedUnits:128];
  }

  sub_10002D6B0();
  v4 = [v0 stringFromTimeInterval:?];
  if (v4)
  {
    v5 = v4;
    v6 = sub_10002DC20();

    return v6;
  }

  else
  {
    sub_10002D6B0();
    sub_100006BFC();
    return sub_10002DBA0();
  }
}

uint64_t sub_1000061F4()
{
  v0 = sub_10002D8A0();
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002C9C();
  sub_10002D890();
  type metadata accessor for AppUsageResultEntity();
  sub_100006CF0();
  sub_100006CA0(v4, v5);
  return sub_10002D860();
}

uint64_t sub_1000062BC(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_10002DC50();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10000637C, 0, 0);
}

uint64_t sub_10000637C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(v0[4] + 24);
  sub_10002D270();
  v5 = v0[2];
  v6 = v0[3];
  sub_10002DC40();
  v7 = sub_10002DC30();
  v9 = v8;

  (*(v2 + 8))(v1, v3);
  if (v9 >> 60 == 15)
  {
    v7 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v9;
  }

  v11 = v0[1];

  return v11(v7, v10);
}

uint64_t sub_100006480(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
    v9 = a1 + *(a3 + 40);

    return sub_1000040D4(v9, a2, v8);
  }
}

void *sub_100006528(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
    v8 = v5 + *(a4 + 40);

    return sub_100001AC4(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000065B4()
{
  sub_1000067AC(319, &qword_10003C3E0, &qword_10003C3E8, "F ", sub_1000066F8);
  if (v0 <= 0x3F)
  {
    sub_1000067AC(319, &qword_10003C3F8, &qword_10003C2F8, &qword_10002EA60, sub_10000681C);
    if (v1 <= 0x3F)
    {
      sub_1000068D0();
      if (v2 <= 0x3F)
      {
        sub_100006974();
        if (v3 <= 0x3F)
        {
          sub_100006A24();
          if (v4 <= 0x3F)
          {
            sub_100006A74();
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

unint64_t sub_1000066F8()
{
  result = qword_10003C3F0;
  if (!qword_10003C3F0)
  {
    sub_100002A98(&qword_10003C3E8, "F ");
    sub_100006CA0(&qword_10003C210, type metadata accessor for AppUsageAppEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C3F0);
  }

  return result;
}

void sub_1000067AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_100002A98(a3, a4);
    a5();
    v7 = sub_10002D330();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_10000681C()
{
  result = qword_10003C400;
  if (!qword_10003C400)
  {
    sub_100002A98(&qword_10003C2F8, &qword_10002EA60);
    sub_100006CA0(&qword_10003C408, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C400);
  }

  return result;
}

void sub_1000068D0()
{
  if (!qword_10003C410)
  {
    sub_100002A98(&qword_10003C418, "> ");
    sub_100003CE8(&qword_10003C420, &qword_10003C418, "> ");
    v0 = sub_10002D330();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C410);
    }
  }
}

void sub_100006974()
{
  if (!qword_10003C428)
  {
    sub_1000069D0();
    v0 = sub_10002D330();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C428);
    }
  }
}

unint64_t sub_1000069D0()
{
  result = qword_10003C430;
  if (!qword_10003C430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C430);
  }

  return result;
}

void sub_100006A24()
{
  if (!qword_10003C438)
  {
    v0 = sub_10002DD40();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C438);
    }
  }
}

void sub_100006A74()
{
  if (!qword_10003C440)
  {
    sub_10002D4E0();
    v0 = sub_10002DD40();
    if (!v1)
    {
      atomic_store(v0, &qword_10003C440);
    }
  }
}

unint64_t sub_100006B10()
{
  result = qword_10003C4B0;
  if (!qword_10003C4B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003C4B0);
  }

  return result;
}

uint64_t sub_100006B54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006DD8(a1, a2, a3, a4);
  sub_100006D2C(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

uint64_t sub_100006BA4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001A7C(a2, a3);
  sub_100006D2C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_100006BFC()
{
  result = qword_10003C4B8;
  if (!qword_10003C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4B8);
  }

  return result;
}

uint64_t sub_100006C50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100006DD8(a1, a2, a3, a4);
  sub_100006D2C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_100006CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100006D54()
{

  return swift_once();
}

uint64_t sub_100006DD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100001A7C(a3, a4);
}

uint64_t sub_100006DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_100006C50(a1, v5, v2, v3);
}

uint64_t sub_100006E18(uint64_t a1)
{

  return sub_1000040D4(a1, 1, v1);
}

unint64_t sub_100006E34()
{
  result = qword_10003C4D0;
  if (!qword_10003C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D0);
  }

  return result;
}

unint64_t sub_100006E8C()
{
  result = qword_10003C4D8;
  if (!qword_10003C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C4D8);
  }

  return result;
}

uint64_t sub_100006F30()
{
  v0 = sub_10002D740();
  sub_100004480(v0, qword_10003CC00);
  sub_100004448(v0, qword_10003CC00);
  return sub_10002D730();
}

uint64_t sub_100006F94()
{
  v0 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v1 = sub_100002CD8(v0);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  __chkstk_darwin(v4);
  v5 = sub_10002D740();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100002C9C();
  sub_10002D730();
  sub_100004588();
  sub_100001AC4(v8, v9, v10, v5);
  sub_100001A7C(&qword_10003C5A0, &qword_10002EF88);
  v11 = *(v6 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_10002ED90;
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10002D730();
  sub_10000C198();
  sub_100001AC4(v13, v14, v15, v5);
  sub_10002D420();
  sub_10002D410();
  v16 = sub_10000BFF4();
  return sub_100001AC4(v16, v17, v18, v19);
}

uint64_t sub_1000071E4()
{
  KeyPath = swift_getKeyPath();
  v1 = sub_100001A7C(&qword_10003C5A8, &qword_10002EFB8);
  v2 = sub_10000B9BC();
  v3 = sub_100003CE8(&qword_10003C5B0, &qword_10003C5A8, &qword_10002EFB8);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1000072D4, 0, v1, v2, v3);
}

uint64_t sub_1000072D4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_100001A7C(&qword_10003C5B8, &qword_10002EFC0);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v33 = v27 - v6;
  v7 = sub_100001A7C(&qword_10003C5C0, &qword_10002EFC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v27 - v13;
  __chkstk_darwin(v12);
  v31 = v27 - v15;
  v40 = 6;
  v37 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v27[3] = sub_10000B9BC();
  v16 = sub_10000BD24();
  v27[2] = sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0);
  sub_10002D670();
  v27[1] = sub_100003CE8(&qword_10003C5E0, &qword_10003C5C0, &qword_10002EFC8);
  sub_10002D640();
  v38 = *(v8 + 8);
  v28 = v14;
  v38(v14, v7);
  v29 = v8 + 8;
  v39 = 5;
  v17 = v30;
  v27[0] = v16;
  sub_10002D670();
  sub_10002D640();
  v38(v17, v7);
  v18 = v32;
  sub_10002D690();
  sub_100003CE8(&qword_10003C5E8, &qword_10003C5B8, &qword_10002EFC0);
  v19 = v33;
  v20 = v18;
  v21 = v34;
  sub_10002D640();
  v22 = *(v35 + 8);
  v22(v20, v21);
  v23 = v31;
  v24 = v28;
  sub_10002D630();
  v22(v19, v21);
  v25 = v38;
  v38(v24, v7);
  return v25(v23, v7);
}

uint64_t sub_1000077A4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C610, &qword_10002F070);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0);
  sub_10002D5E0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_10002D5D0();
  return (v13)(v12, v5);
}

uint64_t sub_100007BC0@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C610, &qword_10002F070);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0);
  sub_10002D5E0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_10002D5D0();
  return (v13)(v12, v5);
}

uint64_t sub_100007F08@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_100001A7C(&qword_10003C5F0, &qword_10002EFD8);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100001A7C(&qword_10003C5F8, &qword_10002EFE0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100001A7C(&qword_10003C5C8, &qword_10002EFD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_10000B9BC();
  sub_10002D5A0();
  sub_10002D590();
  swift_getKeyPath();
  sub_100001A7C(&qword_10003C600, &qword_10002EFE8);
  sub_10002D580();

  sub_10002D590();
  sub_10002D5B0();
  sub_10002D570();
  sub_100003CE8(&qword_10003C5D8, &qword_10003C5C8, &qword_10002EFD0);
  sub_10002D5E0();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_10002D5D0();
  return (v13)(v12, v5);
}

uint64_t sub_100008200()
{
  swift_getKeyPath();
  sub_10000B9BC();
  v0 = sub_10002D550();

  swift_getKeyPath();

  v1 = sub_10002D550();

  sub_100001A7C(&qword_10003C608, &qword_10002F040);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10002EDA0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;

  v3 = sub_10002D540();

  return v3;
}

uint64_t sub_1000082F4@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  v122 = sub_100001A7C(&qword_10003C508, &qword_10002EF08);
  v131 = *(v122 - 8);
  v1 = *(v131 + 64);
  sub_10000457C();
  __chkstk_darwin(v2);
  v123 = &v114 - v3;
  v4 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v4);
  v6 = *(v5 + 64);
  sub_10000457C();
  __chkstk_darwin(v7);
  v120 = &v114 - v8;
  v127 = type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider(0);
  v9 = sub_100006D2C(v127);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_100002C9C();
  v119 = v13 - v12;
  v14 = sub_100001A7C(&qword_10003C518, &qword_10002EF18);
  sub_100002CD8(v14);
  v16 = *(v15 + 64);
  sub_10000457C();
  __chkstk_darwin(v17);
  v118 = &v114 - v18;
  v125 = sub_10002D5C0();
  v19 = *(v125 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v125);
  sub_100002C9C();
  v23 = v22 - v21;
  v24 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  v25 = sub_100002CD8(v24);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v30 = &v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v31);
  v33 = *(v32 + 64);
  sub_10000457C();
  __chkstk_darwin(v34);
  v36 = &v114 - v35;
  v37 = sub_10002D740();
  v38 = sub_100006D2C(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100002C9C();
  v43 = v42 - v41;
  v121 = sub_100001A7C(&qword_10003C520, &qword_10002EF30);
  sub_10002D730();
  sub_100004588();
  v128 = v37;
  sub_100001AC4(v44, v45, v46, v37);
  v133 = 0;
  v47 = sub_10002D1F0();
  sub_100004588();
  sub_100001AC4(v48, v49, v50, v47);
  sub_100004588();
  sub_100001AC4(v51, v52, v53, v47);
  v117 = enum case for InputConnectionBehavior.never(_:);
  v54 = *(v19 + 104);
  v130 = v19 + 104;
  v126 = v54;
  v54(v23);
  sub_10000BA10();
  v55 = v43;
  v56 = v23;
  v121 = sub_10002D390();
  v115 = sub_100001A7C(&qword_10003C530, &qword_10002EF38);
  sub_10002D730();
  sub_10002D730();
  sub_10000C198();
  sub_100001AC4(v57, v58, v59, v37);
  type metadata accessor for DeviceActivityDeviceAppEntity();
  sub_100004588();
  sub_100001AC4(v60, v61, v62, v63);
  sub_100004588();
  v129 = v47;
  sub_100001AC4(v64, v65, v66, v47);
  v114 = v30;
  sub_100004588();
  sub_100001AC4(v67, v68, v69, v47);
  sub_10002D900();
  v70 = v120;
  sub_100004588();
  sub_100001AC4(v71, v72, v73, v74);
  sub_10001DDA0(v70);
  v116 = enum case for InputConnectionBehavior.default(_:);
  v75 = v125;
  v76 = v126;
  v126(v23);
  sub_10000BC44(&qword_10003C538, type metadata accessor for DataActionUtils.AppUsageDeviceCollectionProvider);
  sub_10000BC44(&qword_10003C540, type metadata accessor for DeviceActivityDeviceAppEntity);
  v120 = sub_10002D3A0();
  v127 = sub_100001A7C(&qword_10003C548, &qword_10002EF40);
  sub_10002D730();
  v77 = v36;
  sub_10002D730();
  sub_10000C198();
  v78 = v128;
  sub_100001AC4(v79, v80, v81, v128);
  v132 = 0;
  sub_100004588();
  v82 = v129;
  sub_100001AC4(v83, v84, v85, v129);
  sub_100004588();
  sub_100001AC4(v86, v87, v88, v82);
  v76(v56, v117, v75);
  sub_1000028D4();
  sub_10000C3C4();
  v89 = v56;
  v119 = sub_10002D390();
  v127 = sub_100001A7C(&qword_10003C550, &qword_10002EF48);
  sub_10000C514();
  v90 = v55;
  sub_10002D730();
  sub_10002D730();
  v91 = sub_10000BFF4();
  sub_100001AC4(v91, v92, v93, v78);
  v117 = enum case for IntentParameter.DateKind.dateTime<A>(_:);
  v94 = *(v131 + 104);
  v131 += 104;
  v115 = v94;
  v96 = v122;
  v95 = v123;
  v94(v123);
  sub_100004588();
  sub_100001AC4(v97, v98, v99, v129);
  v100 = v116;
  v101 = v126;
  (v126)(v89, v116, v75);
  v102 = sub_10000C3C4();
  v118 = sub_10000C528(v102, v103);
  sub_10000C1F4();
  sub_10002D730();
  v104 = sub_10000BFF4();
  sub_100001AC4(v104, v105, v106, v128);
  v115(v95, v117, v96);
  sub_100004588();
  sub_100001AC4(v107, v108, v109, v129);
  v101(v89, v100, v125);
  result = sub_10000C528(v90, v77);
  v111 = v124;
  v112 = v120;
  *v124 = v121;
  v111[1] = v112;
  v113 = v118;
  v111[2] = v119;
  v111[3] = v113;
  v111[4] = result;
  return result;
}

uint64_t sub_100008AE4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for DataActionUtils.AppDisplayInfoProvider(0);
  sub_100002CD8(v3);
  v5 = *(v4 + 64);
  v2[5] = sub_10000C3DC();
  v6 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v6);
  v8 = *(v7 + 64);
  v2[6] = sub_10000C450();
  v2[7] = swift_task_alloc();
  v9 = sub_10002DB90();
  v2[8] = v9;
  sub_10000C028(v9);
  v2[9] = v10;
  v12 = *(v11 + 64);
  v2[10] = sub_10000C3DC();
  v13 = sub_100001A7C(&qword_10003C558, &qword_10002EF58);
  sub_100002CD8(v13);
  v15 = *(v14 + 64);
  v2[11] = sub_10000C3DC();
  v16 = sub_10002DA00();
  v2[12] = v16;
  sub_10000C028(v16);
  v2[13] = v17;
  v19 = *(v18 + 64);
  v2[14] = sub_10000C3DC();
  v20 = type metadata accessor for DeviceActivityDeviceAppEntity();
  v2[15] = v20;
  sub_100002CD8(v20);
  v22 = *(v21 + 64);
  v2[16] = sub_10000C3DC();
  v23 = sub_100001A7C(&qword_10003C560, &qword_10002EF60);
  sub_100002CD8(v23);
  v25 = *(v24 + 64);
  v2[17] = sub_10000C450();
  v2[18] = swift_task_alloc();
  v26 = sub_10002D930();
  v2[19] = v26;
  sub_10000C028(v26);
  v2[20] = v27;
  v29 = *(v28 + 64);
  v2[21] = sub_10000C3DC();
  v30 = sub_100001A7C(&qword_10003C518, &qword_10002EF18);
  sub_100002CD8(v30);
  v32 = *(v31 + 64);
  v2[22] = sub_10000C450();
  v2[23] = swift_task_alloc();
  v33 = sub_100001A7C(&qword_10003C568, &qword_10002EF68);
  sub_100002CD8(v33);
  v35 = *(v34 + 64);
  v2[24] = sub_10000C3DC();
  v36 = sub_10002D740();
  sub_100002CD8(v36);
  v38 = *(v37 + 64);
  v2[25] = sub_10000C3DC();
  v39 = sub_100001A7C(&qword_10003C118, &unk_10002EF20);
  sub_100002CD8(v39);
  v41 = *(v40 + 64);
  v2[26] = sub_10000C450();
  v2[27] = swift_task_alloc();
  v42 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  sub_100002CD8(v42);
  v44 = *(v43 + 64);
  v2[28] = sub_10000C450();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v45 = sub_100001A7C(&qword_10003C578, &qword_10002EF78);
  sub_100002CD8(v45);
  v47 = *(v46 + 64);
  v2[32] = sub_10000C3DC();
  v48 = sub_10002D6F0();
  v2[33] = v48;
  sub_10000C028(v48);
  v2[34] = v49;
  v51 = *(v50 + 64);
  v2[35] = sub_10000C3DC();
  v52 = sub_10002D850();
  v2[36] = v52;
  sub_10000C028(v52);
  v2[37] = v53;
  v55 = *(v54 + 64);
  v2[38] = sub_10000C450();
  v2[39] = swift_task_alloc();
  v56 = sub_10002D7E0();
  v2[40] = v56;
  sub_10000C028(v56);
  v2[41] = v57;
  v59 = *(v58 + 64);
  v2[42] = sub_10000C450();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v60 = sub_10002D8C0();
  v2[50] = v60;
  sub_10000C028(v60);
  v2[51] = v61;
  v63 = *(v62 + 64);
  v2[52] = sub_10000C3DC();

  return _swift_task_switch(sub_100008FD4, 0, 0);
}

uint64_t sub_100008FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void (*a33)(uint64_t), uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v39 = *(v38 + 416);
  sub_10002D880();
  v40 = sub_10002D8B0();
  v41 = sub_10002DD00();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&_mh_execute_header, v40, v41, "AppUsageIntent query execution", v42, 2u);
  }

  v44 = *(v38 + 408);
  v43 = *(v38 + 416);
  v46 = *(v38 + 392);
  v45 = *(v38 + 400);
  v47 = *(v38 + 312);
  v49 = *(v38 + 256);
  v48 = *(v38 + 264);
  v50 = *(v38 + 32);

  (*(v44 + 8))(v43, v45);
  sub_10002D7C0();
  sub_10002D830();
  *(v38 + 424) = *v50;
  sub_10002D360();
  v51 = *(v38 + 552);
  sub_10002A804();
  if (sub_1000040D4(v49, 1, v48) == 1)
  {
    sub_100006BA4(*(v38 + 256), &qword_10003C578, &qword_10002EF78);
  }

  else
  {
    v52 = *(v38 + 320);
    v54 = *(v38 + 272);
    v53 = *(v38 + 280);
    v55 = *(v38 + 264);
    v57 = *(v38 + 240);
    v56 = *(v38 + 248);
    v58 = *(v38 + 32);
    (*(v54 + 32))(v53, *(v38 + 256), v55);
    sub_10000C378();
    sub_10002D6E0();
    sub_10000C198();
    sub_100001AC4(v59, v60, v61, v52);
    v62 = *(v58 + 24);
    v63 = sub_10000C1E8();
    sub_10000BC8C(v63, v64);
    sub_10002D370();
    sub_100006BA4(v56, &qword_10003C570, &qword_10002EF70);
    sub_10000C378();
    sub_10002D6C0();
    sub_10000C198();
    sub_100001AC4(v65, v66, v67, v52);
    v68 = *(v58 + 32);
    v69 = sub_10000C1E8();
    sub_10000BC8C(v69, v70);
    sub_10002D370();
    sub_100006BA4(v56, &qword_10003C570, &qword_10002EF70);
    v71 = *(v54 + 8);
    v50 = (v54 + 8);
    v71(v53, v55);
  }

  v72 = *(v38 + 320);
  v73 = *(v38 + 232);
  v74 = *(*(v38 + 32) + 24);
  sub_10002D360();
  v75 = sub_10000C36C();
  if (sub_1000040D4(v75, v76, v72) == 1)
  {
    v77 = *(v38 + 216);
    v78 = *(v38 + 200);
    sub_100006BA4(*(v38 + 232), &qword_10003C570, &qword_10002EF70);
    *(v38 + 432) = sub_10002D380();
    sub_10000C514();
    sub_10002D730();
    sub_10002D200();
    sub_10002D1F0();
    v79 = sub_10000BFF4();
    sub_100001AC4(v79, v80, v81, v82);
    v83 = async function pointer to IntentParameter.requestValue(_:)[1];
    v84 = swift_task_alloc();
    *(v38 + 440) = v84;
    *v84 = v38;
    v84[1] = sub_10000996C;
    v85 = *(v38 + 368);
    v86 = *(v38 + 216);
LABEL_8:
    sub_10000C1A4();

    return IntentParameter.requestValue(_:)(v87, v88, v89, v90, v91, v92, v93, v94, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  sub_10000C384();
  v96 = *(v38 + 376);
  v95 = *(v38 + 384);
  v97 = *(v38 + 320);
  v98 = *(v38 + 328);
  v100 = *(v98 + 32);
  v99 = v98 + 32;
  (v100)(v96, *(v38 + 232), v97);
  (v100)(v95, v96, v97);
  a33 = v100;
  *(v38 + 456) = v100;
  v101 = *(v38 + 424);
  sub_10002D360();
  v103 = TemporalOptions.rawValue.getter(*(v38 + 553)) == v73 && v102 == v72;
  if (v103)
  {

    goto LABEL_19;
  }

  v104 = sub_10000C548();

  if (v104)
  {
LABEL_19:
    v104 = *(v38 + 384);
    v115 = *(v38 + 352);
    v116 = *(v38 + 320);
    v117 = *(v38 + 328);
    v118 = *(v38 + 296);
    v99 = *(v38 + 304);
    v119 = *(v38 + 288);
    a31 = v119;
    a32 = *(v38 + 360);
    sub_10002D830();
    sub_10002D7F0();
    v121 = *(v118 + 8);
    v73 = (v118 + 8);
    v120 = v121;
    v121(v99, v119);
    v122 = *(v117 + 8);
    v50 = (v117 + 8);
    v122(v104, v116);
    v123 = sub_10000C4F4();
    a33(v123);
    sub_10000C378();
    sub_10002AB58();
    sub_10002D830();
    sub_10002D7F0();
    v120(v99, v119);
    v124 = sub_10000C1E8();
    (v122)(v124);
    goto LABEL_20;
  }

  sub_10000C4A0();
  v105 = sub_10000C36C();
  if (sub_1000040D4(v105, v106, v104) == 1)
  {
    v108 = *(v38 + 200);
    v107 = *(v38 + 208);
    sub_100006BA4(*(v38 + 224), &qword_10003C570, &qword_10002EF70);
    *(v38 + 464) = sub_10002D380();
    sub_10000C1F4();
    sub_10002D200();
    sub_10002D1F0();
    v109 = sub_10000BFF4();
    sub_100001AC4(v109, v110, v111, v112);
    v113 = async function pointer to IntentParameter.requestValue(_:)[1];
    v114 = swift_task_alloc();
    *(v38 + 472) = v114;
    *v114 = v38;
    sub_10000C1C0(v114);
    goto LABEL_8;
  }

  sub_10000C500();
  v115 = v156 + 32;
  a33(v104);
  v157 = sub_10000C3C4();
  a33(v157);
LABEL_20:
  sub_10000C414();
  sub_10000BFB0();
  v127 = sub_10000BC44(v125, v126);
  if (sub_10000C2F0(v127))
  {
    sub_10000C16C();
    sub_10000BF98();
    sub_10000BC44(v128, v129);
    v130 = sub_10000C3A4();
    sub_10000C434(v130, v131);
    sub_10000C404();
    (*(v132 + 104))();
    swift_willThrow();
    v133 = sub_10000C3F4();
    v73(v133);
    (v73)(v99, v104);
    v134 = v50[1];
    v135 = sub_10000C1E8();
    v136(v135);
    (v73)(a32, v104);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v138(v137, v138, v139, v140, v141, v142, v143, v144, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244();
    v145 = sub_10000C36C();
    if (sub_1000040D4(v145, v146, v115))
    {
      sub_100006BA4(*(v38 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v147 = sub_10000BFC8();
      v148(v147);
      sub_100006BA4(v73, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v149 = sub_10000C124();
      v150(v149);
    }

    v151 = sub_10000C21C();
    sub_10000C0B8(v151);
    v152 = sub_10000C314();
    if (v103)
    {
      sub_100006BA4(v152, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v104 = *(v38 + 120);
      sub_10000BB18(v152, *(v38 + 128));
      sub_10000C468();
      if (*(v38 + 555))
      {
        v153 = *(v38 + 128);
        sub_10000BE1C();
        sub_10000BB7C(v154, v155);
      }

      else
      {
        v158 = sub_10000C004();
        v159(v158);
        sub_10000BE1C();
        sub_10000BB7C(v73, v160);
        v161 = sub_10000BFF4();
        sub_10000C4C4(v161, v162, v163);
      }
    }

    sub_10000C484();
    switch(*(v38 + 554))
    {
      case 3:
        v171 = sub_10000C134();
        v172(v171);
        break;
      default:
        v164 = sub_10000C058();
        v165(v164);
        sub_10000C198();
        sub_100001AC4(v166, v167, v168, v104);
        v169 = sub_10000C2DC();
        v170(v169);
        break;
    }

    if (!sub_10000C29C())
    {
      v173 = sub_10000C108();
      v174(v173);
      sub_10002DB30();
      v175 = sub_10000C340();
      v176(v175);
      v177 = *(v38 + 144);
      v73 = *(v38 + 64);
    }

    v178 = *(v38 + 56);
    v179 = sub_10002D900();
    if (!sub_10000C078(v179))
    {
      v180 = sub_10000C038();
      v181(v180);
      sub_10002DB60();
      v73 = v182;
      v183 = sub_10000C124();
      v184(v183);
    }

    *(v38 + 496) = v73;
    v185 = async function pointer to static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)[1];
    v186 = swift_task_alloc();
    *(v38 + 504) = v186;
    *v186 = v38;
    sub_10000BEC4(v186);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v187, v188, v189, v190, v191, v192, v193, v194, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }
}

uint64_t sub_10000996C()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  v5 = v2[55];
  *v4 = *v1;
  v3[56] = v0;

  v6 = v2[54];
  sub_100006BA4(v2[27], &qword_10003C118, &unk_10002EF20);

  sub_10000C424();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100009AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void (*a32)(uint64_t), uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  sub_10000C384();
  v43 = *(*(v40 + 328) + 32);
  (v43)(*(v40 + 384), *(v40 + 368), *(v40 + 320));
  *(v40 + 456) = v43;
  v44 = *(v40 + 424);
  sub_10002D360();
  v46 = TemporalOptions.rawValue.getter(*(v40 + 553)) == v39 && v45 == v38;
  if (v46)
  {

    goto LABEL_11;
  }

  v47 = sub_10000C548();

  if (v47)
  {
LABEL_11:
    v47 = *(v40 + 384);
    a32 = v43;
    a33 = *(v40 + 360);
    v66 = *(v40 + 352);
    v67 = *(v40 + 320);
    v68 = *(v40 + 328);
    v69 = *(v40 + 296);
    v41 = *(v40 + 304);
    v70 = *(v40 + 288);
    a31 = v70;
    sub_10002D830();
    sub_10002D7F0();
    v72 = *(v69 + 8);
    v39 = (v69 + 8);
    v71 = v72;
    v72(v41, v70);
    v73 = *(v68 + 8);
    v42 = v68 + 8;
    v73(v47, v67);
    v74 = sub_10000C4F4();
    a32(v74);
    sub_10000C378();
    sub_10002AB58();
    sub_10002D830();
    sub_10002D7F0();
    v71(v41, v70);
    v75 = sub_10000C1E8();
    (v73)(v75);
    goto LABEL_12;
  }

  sub_10000C4A0();
  v48 = sub_10000C36C();
  if (sub_1000040D4(v48, v49, v47) == 1)
  {
    v51 = *(v40 + 200);
    v50 = *(v40 + 208);
    sub_100006BA4(*(v40 + 224), &qword_10003C570, &qword_10002EF70);
    *(v40 + 464) = sub_10002D380();
    sub_10000C1F4();
    sub_10002D200();
    sub_10002D1F0();
    v52 = sub_10000BFF4();
    sub_100001AC4(v52, v53, v54, v55);
    v56 = async function pointer to IntentParameter.requestValue(_:)[1];
    v57 = swift_task_alloc();
    *(v40 + 472) = v57;
    *v57 = v40;
    sub_10000C1C0(v57);
    sub_10000C1A4();

    return IntentParameter.requestValue(_:)(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  sub_10000C500();
  v107 = v43;
  v66 = v108 + 32;
  v107(v47);
  v109 = sub_10000C3C4();
  v107(v109);
LABEL_12:
  sub_10000C414();
  sub_10000BFB0();
  v78 = sub_10000BC44(v76, v77);
  if (sub_10000C2F0(v78))
  {
    sub_10000C16C();
    sub_10000BF98();
    sub_10000BC44(v79, v80);
    v81 = sub_10000C3A4();
    sub_10000C434(v81, v82);
    sub_10000C404();
    (*(v83 + 104))();
    swift_willThrow();
    v84 = sub_10000C3F4();
    v39(v84);
    (v39)(v41, v47);
    v85 = *(v42 + 8);
    v86 = sub_10000C1E8();
    v87(v86);
    (v39)(a32, v47);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v89(v88, v89, v90, v91, v92, v93, v94, v95, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244();
    v96 = sub_10000C36C();
    if (sub_1000040D4(v96, v97, v66))
    {
      sub_100006BA4(*(v40 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v98 = sub_10000BFC8();
      v99(v98);
      sub_100006BA4(v39, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v100 = sub_10000C124();
      v101(v100);
    }

    v102 = sub_10000C21C();
    sub_10000C0B8(v102);
    v103 = sub_10000C314();
    if (v46)
    {
      sub_100006BA4(v103, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v47 = *(v40 + 120);
      sub_10000BB18(v103, *(v40 + 128));
      sub_10000C468();
      if (*(v40 + 555))
      {
        v104 = *(v40 + 128);
        sub_10000BE1C();
        sub_10000BB7C(v105, v106);
      }

      else
      {
        v110 = sub_10000C004();
        v111(v110);
        sub_10000BE1C();
        sub_10000BB7C(v39, v112);
        v113 = sub_10000BFF4();
        sub_10000C4C4(v113, v114, v115);
      }
    }

    sub_10000C484();
    switch(*(v40 + 554))
    {
      case 3:
        v123 = sub_10000C134();
        v124(v123);
        break;
      default:
        v116 = sub_10000C058();
        v117(v116);
        sub_10000C198();
        sub_100001AC4(v118, v119, v120, v47);
        v121 = sub_10000C2DC();
        v122(v121);
        break;
    }

    if (!sub_10000C29C())
    {
      v125 = sub_10000C108();
      v126(v125);
      sub_10002DB30();
      v127 = sub_10000C340();
      v128(v127);
      v129 = *(v40 + 144);
      v39 = *(v40 + 64);
    }

    v130 = *(v40 + 56);
    v131 = sub_10002D900();
    if (!sub_10000C078(v131))
    {
      v132 = sub_10000C038();
      v133(v132);
      sub_10002DB60();
      v39 = v134;
      v135 = sub_10000C124();
      v136(v135);
    }

    *(v40 + 496) = v39;
    v137 = async function pointer to static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)[1];
    v138 = swift_task_alloc();
    *(v40 + 504) = v138;
    *v138 = v40;
    sub_10000BEC4(v138);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v139, v140, v141, v142, v143, v144, v145, v146, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }
}

uint64_t sub_10000A184()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  v5 = v2[59];
  *v4 = *v1;
  v3[60] = v0;

  v6 = v2[58];
  sub_100006BA4(v2[26], &qword_10003C118, &unk_10002EF20);

  sub_10000C424();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10000A2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v44 = *(v40 + 328) + 32;
  (*(v40 + 456))(*(v40 + 360), *(v40 + 336), *(v40 + 320));
  sub_10000C414();
  sub_10000BFB0();
  v47 = sub_10000BC44(v45, v46);
  if (sub_10000C2F0(v47))
  {
    sub_10000C16C();
    sub_10000BF98();
    sub_10000BC44(v48, v49);
    v50 = sub_10000C3A4();
    sub_10000C434(v50, v51);
    sub_10000C404();
    (*(v52 + 104))();
    swift_willThrow();
    v53 = sub_10000C3F4();
    v39(v53);
    (v39)(v42, v38);
    v54 = *(v43 + 8);
    v55 = sub_10000C1E8();
    v56(v55);
    (v39)(a32, v38);
    sub_10000BF0C();

    sub_10000C354();
    sub_10000C1A4();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }

  else
  {
    sub_10000C244();
    v66 = sub_10000C36C();
    if (sub_1000040D4(v66, v67, v41))
    {
      sub_100006BA4(*(v40 + 184), &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v68 = sub_10000BFC8();
      v69(v68);
      sub_100006BA4(v39, &qword_10003C518, &qword_10002EF18);
      sub_10002D910();
      v70 = sub_10000C124();
      v71(v70);
    }

    v72 = sub_10000C21C();
    sub_10000C0B8(v72);
    v73 = sub_10000C314();
    if (v74)
    {
      sub_100006BA4(v73, &qword_10003C518, &qword_10002EF18);
    }

    else
    {
      v38 = *(v40 + 120);
      sub_10000BB18(v73, *(v40 + 128));
      sub_10000C468();
      if (*(v40 + 555))
      {
        v75 = *(v40 + 128);
        sub_10000BE1C();
        sub_10000BB7C(v76, v77);
      }

      else
      {
        v78 = sub_10000C004();
        v79(v78);
        sub_10000BE1C();
        sub_10000BB7C(v39, v80);
        v81 = sub_10000BFF4();
        sub_10000C4C4(v81, v82, v83);
      }
    }

    sub_10000C484();
    switch(*(v40 + 554))
    {
      case 3:
        v91 = sub_10000C134();
        v92(v91);
        break;
      default:
        v84 = sub_10000C058();
        v85(v84);
        sub_10000C198();
        sub_100001AC4(v86, v87, v88, v38);
        v89 = sub_10000C2DC();
        v90(v89);
        break;
    }

    if (!sub_10000C29C())
    {
      v93 = sub_10000C108();
      v94(v93);
      sub_10002DB30();
      v95 = sub_10000C340();
      v96(v95);
      v97 = *(v40 + 144);
      v39 = *(v40 + 64);
    }

    v98 = *(v40 + 56);
    v99 = sub_10002D900();
    if (!sub_10000C078(v99))
    {
      v100 = sub_10000C038();
      v101(v100);
      sub_10002DB60();
      v39 = v102;
      v103 = sub_10000C124();
      v104(v103);
    }

    *(v40 + 496) = v39;
    v105 = async function pointer to static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)[1];
    v106 = swift_task_alloc();
    *(v40 + 504) = v106;
    *v106 = v40;
    sub_10000BEC4(v106);
    sub_10000C1A4();

    return static AppUsageAction.computeAppUsage(queryService:user:deviceId:activityType:startTime:endTime:localDataOnly:)(v107, v108, v109, v110, v111, v112, v113, v114, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
  }
}

uint64_t sub_10000A79C()
{
  v2 = *v1;
  sub_10000C3D0();
  *v4 = v3;
  v5 = v2[63];
  v6 = *v1;
  sub_10000C3D0();
  *v7 = v6;
  *(v9 + 512) = v8;
  *(v9 + 520) = v0;

  v10 = v2[62];
  sub_100006BA4(v2[7], &qword_10003C510, &qword_10002EF10);

  sub_10000C424();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_10000A8F8()
{
  v1 = v0[61];
  v2 = v0[5];
  v3 = v0[6];
  sub_100004588();
  sub_100001AC4(v4, v5, v6, v7);
  sub_10000C690(v3);
  v8 = swift_task_alloc();
  v0[66] = v8;
  *v8 = v0;
  v8[1] = sub_10000A9B0;
  v9 = v0[64];
  v10 = v0[5];

  return sub_10000C694();
}

uint64_t sub_10000A9B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_10000C3D0();
  *v6 = v5;
  v7 = v4[66];
  *v6 = *v2;
  v5[67] = v1;

  v8 = v4[64];
  v9 = v4[5];
  if (v1)
  {
    sub_10000BB7C(v9, type metadata accessor for DataActionUtils.AppDisplayInfoProvider);

    v10 = sub_10000B3B4;
  }

  else
  {
    v5[68] = a1;
    sub_10000BB7C(v9, type metadata accessor for DataActionUtils.AppDisplayInfoProvider);

    v10 = sub_10000AB40;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_10000AB40()
{
  v17 = v0[49];
  v18 = v0[52];
  v16 = v0[48];
  v19 = v0[47];
  v20 = v0[46];
  v21 = v0[44];
  v22 = v0[43];
  v1 = v0[41];
  v2 = v0[40];
  v15 = v0[39];
  v3 = v0[37];
  v23 = v0[42];
  v24 = v0[38];
  v13 = v0[45];
  v14 = v0[36];
  v25 = v0[35];
  v26 = v0[32];
  v27 = v0[31];
  v28 = v0[30];
  v29 = v0[29];
  v30 = v0[28];
  v31 = v0[27];
  v32 = v0[26];
  v33 = v0[25];
  v11 = v0[24];
  v35 = v0[23];
  v37 = v0[22];
  v39 = v0[21];
  v0[2] = v0[68];
  v12 = v0[18];
  v34 = v0[17];
  v36 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[12];
  v38 = v0[11];
  v40 = v0[10];
  v41 = v0[7];
  v42 = v0[6];
  v43 = v0[5];
  v7 = v0[3];
  sub_100001A7C(&qword_10003C588, &qword_10002EF80);
  sub_10000BA64();
  sub_10002D250();
  (*(v5 + 8))(v4, v6);
  sub_100006BA4(v11, &qword_10003C568, &qword_10002EF68);
  v8 = *(v1 + 8);
  v8(v13, v2);
  v8(v16, v2);
  (*(v3 + 8))(v15, v14);
  v8(v17, v2);

  sub_100006BA4(v12, &qword_10003C560, &qword_10002EF60);

  sub_10000C354();

  return v9();
}

uint64_t sub_10000AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v39 = v38[49];
  v40 = v38[40];
  v41 = v38[41];
  (*(v38[37] + 8))(v38[39], v38[36]);
  v42 = *(v41 + 8);
  v43 = sub_10000C3C4();
  v44(v43);
  sub_10000BE34(v38[56]);

  sub_10000C354();
  sub_10000C1A4();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B00C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v39 = v38[49];
  v40 = v38[39];
  v41 = v38[36];
  v42 = v38[37];
  v43 = *(v38[41] + 8);
  (v43)(v38[48], v38[40]);
  (*(v42 + 8))(v40, v41);
  v44 = sub_10000C3C4();
  v43(v44);
  sub_10000BE34(v38[60]);

  sub_10000C354();
  sub_10000C1A4();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v47 = sub_10000C26C();
  v48(v47);
  sub_100006BA4(v44, &qword_10003C568, &qword_10002EF68);
  v49 = *(v46 + 8);
  v49(v39, v41);
  v50 = sub_10000C4F4();
  (v49)(v50);
  (*(v38 + 8))(v42, v43);
  v49(a34, v41);
  sub_100006BA4(v45, &qword_10003C560, &qword_10002EF60);
  sub_10000BE34(*(v40 + 520));

  sub_10000C354();
  sub_10000C1A4();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  sub_10000C2C0();
  sub_10000C360();
  v47 = sub_10000C26C();
  v48(v47);
  sub_100006BA4(v44, &qword_10003C568, &qword_10002EF68);
  v49 = *(v46 + 8);
  v49(v39, v41);
  v50 = sub_10000C4F4();
  (v49)(v50);
  (*(v38 + 8))(v42, v43);
  v49(a34, v41);
  sub_100006BA4(v45, &qword_10003C560, &qword_10002EF60);
  sub_10000BE34(*(v40 + 536));

  sub_10000C354();
  sub_10000C1A4();

  return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_10000B5AC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C0D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10002D740();
  v3 = sub_100004448(v2, qword_10003CC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000B670(uint64_t a1)
{
  v4 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  *(v2 + 48) = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_10000B71C;

  return sub_100008AE4(a1);
}

uint64_t sub_10000B71C()
{
  v1 = *(*v0 + 56);
  v2 = *v0;
  sub_10000C3D0();
  *v3 = v2;

  sub_10000C354();

  return v4();
}

double sub_10000B808@<D0>(uint64_t a1@<X8>)
{
  sub_1000082F4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_10000B84C(uint64_t a1)
{
  v2 = sub_10000B9BC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10000B888(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000B89C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10000B8DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000B9BC()
{
  result = qword_10003C500;
  if (!qword_10003C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C500);
  }

  return result;
}

unint64_t sub_10000BA10()
{
  result = qword_10003C528;
  if (!qword_10003C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C528);
  }

  return result;
}

unint64_t sub_10000BA64()
{
  result = qword_10003C590;
  if (!qword_10003C590)
  {
    sub_100002A98(&qword_10003C588, &qword_10002EF80);
    sub_10000BC44(&qword_10003C350, type metadata accessor for AppUsageResultEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C590);
  }

  return result;
}

uint64_t sub_10000BB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityDeviceAppEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BB7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100006D2C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000BBD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C560, &qword_10002EF60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BC44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000BC8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C570, &qword_10002EF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000BCFC()
{
  sub_10000C444();
  result = sub_1000072B0();
  *v0 = result;
  return result;
}

unint64_t sub_10000BD24()
{
  result = qword_10003C5D0;
  if (!qword_10003C5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C5D0);
  }

  return result;
}

uint64_t sub_10000BD78()
{
  sub_10000C444();
  result = sub_100007B78();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDA0()
{
  sub_10000C444();
  result = sub_100007B9C();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDC8()
{
  sub_10000C444();
  result = sub_100007B30();
  *v0 = result;
  return result;
}

uint64_t sub_10000BDF0()
{
  sub_10000C444();
  result = sub_100007B54();
  *v0 = result;
  return result;
}

uint64_t sub_10000BE34@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 88) = a1;
  v4 = v1[52];
  v6 = v1[48];
  v5 = v1[49];
  v8 = v1[46];
  v7 = v1[47];
  v10 = v1[44];
  v9 = v1[45];
  v12 = v1[42];
  v11 = v1[43];
  v13 = v1[39];
  v20 = v1[38];
  v21 = v1[35];
  v22 = v1[32];
  v23 = v1[31];
  v24 = v1[30];
  v25 = v1[29];
  v26 = v1[28];
  v27 = v1[27];
  v28 = v1[26];
  v29 = v1[25];
  v30 = v1[24];
  v31 = v1[23];
  v32 = v1[22];
  v33 = v1[21];
  v34 = v1[18];
  v35 = v1[17];
  v36 = v1[16];
  v15 = v1[10];
  v14 = v1[11];
  *(v2 - 136) = v1[14];
  *(v2 - 128) = v14;
  v17 = v1[6];
  v16 = v1[7];
  *(v2 - 120) = v15;
  *(v2 - 112) = v16;
  v18 = v1[5];
  *(v2 - 104) = v17;
  *(v2 - 96) = v18;
}

uint64_t sub_10000BEC4(uint64_t a1)
{
  *(a1 + 8) = sub_10000A79C;
  v2 = v1[48];
  v3 = v1[45];
  v4 = v1[24];
  v5 = v1[14];
  return v1[7];
}

uint64_t sub_10000BF0C()
{
  v3 = v0[52];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[46];
  v7 = v0[47];
  v9 = v0[44];
  v8 = v0[45];
  v11 = v0[42];
  v10 = v0[43];
  v12 = v0[39];
  v16 = v0[38];
  v17 = v0[35];
  v18 = v0[32];
  v19 = v0[31];
  v20 = v0[30];
  v21 = v0[29];
  v22 = v0[28];
  v23 = v0[27];
  v24 = v0[26];
  v25 = v0[25];
  v26 = v0[24];
  v27 = v0[23];
  v28 = v0[22];
  v29 = v0[21];
  v30 = v0[18];
  v31 = v0[17];
  v32 = v0[16];
  v33 = v0[14];
  v13 = v0[10];
  *(v1 - 136) = v0[11];
  *(v1 - 128) = v13;
  v14 = v0[6];
  *(v1 - 120) = v0[7];
  *(v1 - 112) = v14;
  *(v1 - 104) = v0[5];
}

uint64_t sub_10000BFC8()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = *(v0[20] + 16);
  v4 = v0[23] + *(v0[15] + 20);
  return v0[21];
}

uint64_t sub_10000C004()
{
  v1 = v0[18];
  v2 = v0[8];
  v3 = *(v0[9] + 16);
  v4 = v0[16] + *(v0[15] + 24);
  return v0[17];
}

uint64_t sub_10000C038()
{
  v1 = v0[18];
  v2 = v0[8];
  v3 = *(v0[9] + 16);
  return v0[10];
}

uint64_t sub_10000C058()
{
  v2 = v0[14];
  v3 = v0[12];
  v4 = *v1;
  v5 = *(v0[13] + 104);
  return v0[11];
}

uint64_t sub_10000C078(uint64_t a1)
{
  *(v3 + 488) = a1;
  sub_100001AC4(v4, 1, 1, a1);
  return sub_1000040D4(v1, 1, v2);
}

uint64_t sub_10000C0B8(uint64_t a1)
{
  sub_100001AC4(v2, v1, 1, a1);
  sub_100001AC4(v3, 1, 1, v4);

  return sub_10002D360();
}

uint64_t sub_10000C134()
{
  v3 = v0[13];
  v2 = v0[14];
  sub_100001AC4(v0[11], 1, 1, v0[12]);
  v4 = *v1;
  v5 = *(v3 + 104);
  return v2;
}

uint64_t sub_10000C16C()
{
  v3 = v0[48];
  *(v1 - 104) = v0[49];
  v4 = v0[45];
  v5 = v0[40];
  v6 = v0[41];
  v7 = v0[39];
  v8 = v0[36];
  v9 = v0[37];

  return sub_10002D8D0();
}

uint64_t sub_10000C1C0(uint64_t a1)
{
  *(a1 + 8) = sub_10000A184;
  result = *(v1 + 336);
  v3 = *(v1 + 208);
  return result;
}

uint64_t sub_10000C1F4()
{

  return sub_10002D730();
}

uint64_t sub_10000C21C()
{
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[8];

  return sub_10002D240();
}

uint64_t sub_10000C244()
{
  v2 = v0[23];
  v3 = v0[15];
  v4 = *(v0[4] + 8);

  return sub_10002D360();
}

uint64_t sub_10000C26C()
{
  v2 = v0[48];
  *(v1 - 88) = v0[49];
  v3 = v0[45];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[39];
  v8 = v0[36];
  v7 = v0[37];
  v9 = v0[24];
  v10 = v0[18];
  result = v0[14];
  v12 = v0[12];
  v13 = *(v0[13] + 8);
  return result;
}

uint64_t sub_10000C29C()
{
  v2 = *(v0 + 144);
  v3 = *(v0 + 64);

  return sub_1000040D4(v2, 1, v3);
}

uint64_t sub_10000C2F0(uint64_t a1)
{

  return dispatch thunk of static Comparable.< infix(_:_:)(v1, v2, v3, a1);
}

uint64_t sub_10000C354()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000C3A4()
{

  return swift_allocError();
}

uint64_t sub_10000C3DC()
{

  return swift_task_alloc();
}

void sub_10000C414()
{
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[40];
}

uint64_t sub_10000C450()
{

  return swift_task_alloc();
}

uint64_t sub_10000C468()
{
  v3 = *(v1 + *(v0 + 32));

  return sub_10002D270();
}

uint64_t sub_10000C484()
{
  v2 = *(*(v0 + 32) + 16);

  return sub_10002D360();
}

uint64_t sub_10000C4A0()
{
  v2 = v0[40];
  v3 = v0[28];
  v4 = *(v0[4] + 32);

  return sub_10002D360();
}

uint64_t sub_10000C4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100001AC4(a1, a2, a3, v5);

  return sub_10000BBD4(v3, v4);
}

void sub_10000C500()
{
  v1 = v0[45];
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[28];
}

uint64_t sub_10000C528(uint64_t a1, uint64_t a2)
{
  v7 = *(v5 - 128);

  return IntentParameter<>.init(title:description:kind:requestValueDialog:inputConnectionBehavior:)(a1, a2, v2, v4, v3);
}

uint64_t sub_10000C548()
{

  return sub_10002DE10();
}

uint64_t sub_10000C618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000C694()
{
  sub_10001DFE4();
  v1[21] = v2;
  v1[22] = v0;
  v3 = type metadata accessor for AppUsageResultEntity();
  sub_10000C028(v3);
  v1[23] = v4;
  v6 = *(v5 + 64);
  v1[24] = sub_10000C450();
  v1[25] = swift_task_alloc();
  v7 = sub_100001A7C(&qword_10003C2F8, &qword_10002EA60);
  sub_100002CD8(v7);
  v9 = *(v8 + 64);
  v1[26] = sub_10000C450();
  v1[27] = swift_task_alloc();
  v10 = sub_10002DAA0();
  v1[28] = v10;
  sub_10000C028(v10);
  v1[29] = v11;
  v13 = *(v12 + 64);
  v1[30] = sub_10000C3DC();
  v14 = sub_100001A7C(&qword_10003C240, &qword_10002F350);
  v1[31] = v14;
  sub_100002CD8(v14);
  v16 = *(v15 + 64);
  v1[32] = sub_10000C450();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v17 = sub_10002DB00();
  v1[35] = v17;
  sub_10000C028(v17);
  v1[36] = v18;
  v20 = *(v19 + 64);
  v1[37] = sub_10000C450();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v21 = sub_10002D8C0();
  v1[40] = v21;
  sub_10000C028(v21);
  v1[41] = v22;
  v24 = *(v23 + 64);
  v1[42] = sub_10000C450();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v25 = sub_10001DEBC();

  return _swift_task_switch(v25, v26, v27);
}

uint64_t sub_10000C8D4()
{
  v1 = *(v0 + 176);
  sub_10002D8E0();
  if (*(v0 + 80))
  {
    v2 = *(v0 + 168);
    sub_10001B480((v0 + 56), v0 + 16);
    v3 = *(v2 + 16);
    *(v0 + 360) = v3;
    if (v3)
    {
      v4 = *(v0 + 288);
      v5 = *(v0 + 168);
      sub_100020348(0, v3, 0);
      v6 = *(v4 + 16);
      v4 += 16;
      v7 = v5 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v53 = *(v4 + 56);
      v55 = v6;
      v51 = (v4 - 8);
      do
      {
        v55(*(v0 + 312), v7, *(v0 + 280));
        v8 = sub_10002DAE0();
        v10 = v9;
        v11 = *v51;
        v12 = sub_10001E0A0();
        v13(v12);
        v15 = _swiftEmptyArrayStorage[2];
        v14 = _swiftEmptyArrayStorage[3];
        if (v15 >= v14 >> 1)
        {
          sub_100020348((v14 > 1), v15 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v15 + 1;
        v16 = &_swiftEmptyArrayStorage[2 * v15];
        *(v16 + 4) = v8;
        *(v16 + 5) = v10;
        v7 += v53;
        --v3;
      }

      while (v3);
    }

    v17 = *(v0 + 352);
    v18 = sub_10000DF9C(_swiftEmptyArrayStorage);
    *(v0 + 368) = v18;
    sub_10002D880();

    v19 = sub_10002D8B0();
    v20 = sub_10002DD00();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = *(v18 + 16);

      _os_log_impl(&_mh_execute_header, v19, v20, "Fetching appInfo for %ld bundle identifiers", v21, 0xCu);
      sub_10001E144();
    }

    else
    {
    }

    v39 = *(v0 + 352);
    v40 = *(v0 + 320);
    v41 = *(v0 + 328);
    v42 = *(v41 + 8);
    *(v0 + 376) = v42;
    *(v0 + 384) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v39, v40);
    v43 = *(v0 + 48);
    sub_10001B498((v0 + 16), *(v0 + 40));
    v44 = async function pointer to dispatch thunk of DeviceActivitySource.fetchAppInfo(for:)[1];
    v45 = swift_task_alloc();
    *(v0 + 392) = v45;
    *v45 = v0;
    v45[1] = sub_10000CDA0;
    v46 = sub_10001E2E0();

    return dispatch thunk of DeviceActivitySource.fetchAppInfo(for:)(v46);
  }

  else
  {
    v22 = *(v0 + 336);
    sub_100006BA4(v0 + 56, &qword_10003C708, &qword_10002F2E8);
    sub_10002D880();
    v23 = sub_10002D8B0();
    sub_10002DD20();
    sub_10001E1F0();
    if (os_log_type_enabled(v23, v24))
    {
      *swift_slowAlloc() = 0;
      sub_10001E338(&_mh_execute_header, v25, v26, "Screentime is not enabled.");
      sub_10001E144();
    }

    v27 = *(v0 + 344);
    v28 = *(v0 + 352);
    v30 = *(v0 + 328);
    v29 = *(v0 + 336);
    v32 = *(v0 + 312);
    v31 = *(v0 + 320);
    v34 = *(v0 + 296);
    v33 = *(v0 + 304);
    v47 = *(v0 + 272);
    v48 = *(v0 + 264);
    v49 = *(v0 + 256);
    v50 = *(v0 + 240);
    v52 = *(v0 + 216);
    v54 = *(v0 + 208);
    v56 = *(v0 + 200);
    v57 = *(v0 + 192);

    (*(v30 + 8))(v29, v31);
    v35 = sub_10002D8D0();
    sub_10000C618(&qword_10003C598, &type metadata accessor for DataActionError);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for DataActionError.deviceActivityUnauthorized(_:), v35);
    swift_willThrow();

    sub_10000C354();

    return v37();
  }
}

uint64_t sub_10000CDA0()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v4 = *(v3 + 392);
  v5 = *(v3 + 368);
  v6 = *v0;
  sub_10001DF00();
  *v7 = v6;
  *(v9 + 400) = v8;

  v10 = sub_10001DEBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000D3BC()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v1[15] = v0;
  v1[16] = v3;
  v1[17] = v4;
  v6 = *(v5 + 464);
  v7 = *(v5 + 456);
  v8 = *v0;
  sub_10001DF00();
  *v9 = v8;

  v10 = sub_10001DEBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000D9AC()
{
  sub_10001DFE4();
  sub_10001E220();
  sub_10001E1A8();
  *v2 = v1;
  v1[18] = v0;
  v1[19] = v3;
  v1[20] = v4;
  v6 = *(v5 + 472);
  v7 = *(v5 + 456);
  v8 = *v0;
  sub_10001DF00();
  *v9 = v8;

  v10 = sub_10001DEBC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_10000DF9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_10002DCF0();
  v4 = 0;
  v10 = result;
  v5 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v5 == v4)
    {

      return v10;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v8 = *(i - 1);
    v7 = *i;

    sub_10001B8CC(&v9, v8, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_10001B54C(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = sub_10002DAA0();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = sub_10002DAA0();
    v11 = a4;
    v12 = 1;
  }

  return sub_100001AC4(v11, v12, 1, v13);
}

uint64_t sub_10000E120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001E094();
  v6 = sub_100001A7C(v4, v5);
  v7 = sub_100002CD8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = sub_10002D900();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001DA64();
  sub_10001E378(v11);
  if (v17)
  {
    sub_10002D8F0();
    sub_100006BA4(a1, &qword_10003C510, &qword_10002EF10);
    sub_10001E378(v11);
    if (!v17)
    {
      sub_100006BA4(v11, &qword_10003C510, &qword_10002EF10);
    }
  }

  else
  {
    sub_100006BA4(a1, &qword_10003C510, &qword_10002EF10);
    (*(v13 + 32))(v16, v11, v12);
  }

  return (*(v13 + 32))(a2, v16, v12);
}

uint64_t sub_10000E2E0()
{
  sub_10001DFE4();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_10002D740();
  v1[4] = v3;
  sub_100002CD8(v3);
  v5 = *(v4 + 64);
  v1[5] = sub_10000C3DC();
  v6 = sub_100001A7C(&qword_10003C710, &unk_10002F780);
  v1[6] = v6;
  sub_10000C028(v6);
  v1[7] = v7;
  v9 = *(v8 + 64);
  v1[8] = sub_10000C3DC();
  v10 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v10);
  v12 = *(v11 + 64);
  v1[9] = sub_10000C3DC();
  v13 = sub_10002D8C0();
  v1[10] = v13;
  sub_10000C028(v13);
  v1[11] = v14;
  v16 = *(v15 + 64);
  v1[12] = sub_10000C3DC();
  v17 = sub_10002D720();
  v1[13] = v17;
  sub_10000C028(v17);
  v1[14] = v18;
  v20 = *(v19 + 64);
  v1[15] = sub_10000C3DC();
  v21 = sub_10002D210();
  v1[16] = v21;
  sub_10000C028(v21);
  v1[17] = v22;
  v24 = *(v23 + 64);
  v1[18] = sub_10000C450();
  v1[19] = swift_task_alloc();
  v25 = sub_10002D240();
  v1[20] = v25;
  sub_10000C028(v25);
  v1[21] = v26;
  v28 = *(v27 + 64);
  v1[22] = sub_10000C450();
  v1[23] = swift_task_alloc();
  v29 = sub_100001A7C(&qword_10003C718, &qword_10002F300);
  sub_100002CD8(v29);
  v31 = *(v30 + 64);
  v1[24] = sub_10000C3DC();
  v32 = type metadata accessor for DeviceActivityDeviceAppEntity();
  v1[25] = v32;
  sub_10000C028(v32);
  v1[26] = v33;
  v35 = *(v34 + 64);
  v1[27] = sub_10000C450();
  v1[28] = swift_task_alloc();
  v36 = sub_10002DB90();
  v1[29] = v36;
  sub_10000C028(v36);
  v1[30] = v37;
  v39 = *(v38 + 64);
  v1[31] = sub_10000C450();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v40 = sub_10002D930();
  v1[34] = v40;
  sub_10000C028(v40);
  v1[35] = v41;
  v43 = *(v42 + 64);
  v1[36] = sub_10000C450();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v44 = sub_100001A7C(&qword_10003C720, &qword_10002F308);
  sub_100002CD8(v44);
  v46 = *(v45 + 64);
  v1[39] = sub_10000C450();
  v1[40] = swift_task_alloc();
  v47 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v47);
  v49 = *(v48 + 64);
  v1[41] = sub_10000C3DC();
  v50 = sub_10001DEBC();

  return _swift_task_switch(v50, v51, v52);
}

uint64_t sub_10000E6D8()
{
  v260 = v0;
  v1 = v0[41];
  v2 = v0[3];
  v3 = sub_10002D900();
  sub_100006D2C(v3);
  v5 = *(v4 + 16);
  v6 = sub_10001DF8C();
  v7(v6);
  sub_10000C198();
  sub_100001AC4(v8, v9, v10, v3);
  v11 = sub_10002DAC0();
  sub_100006BA4(v1, &qword_10003C510, &qword_10002EF10);
  v12 = v0[35];
  v13 = v0[30];
  v251 = v0;
  v252 = v0[26];
  v14 = v0[21];
  v227 = v0[18];
  v15 = v0[17];
  v16 = v0[14];
  v17 = v0[11];
  v18 = sub_10000F7C8(v11);
  sub_100001A7C(&qword_10003C728, &qword_10002F310);
  v229 = sub_10002DBB0();
  v19 = 0;
  v20 = v18 + 64;
  v231 = v18;
  v21 = -1;
  v22 = -1 << *(v18 + 32);
  if (-v22 < 64)
  {
    v21 = ~(-1 << -v22);
  }

  v23 = v21 & *(v18 + 64);
  v24 = (63 - v22) >> 6;
  v250 = (v12 + 16);
  v247 = (v12 + 32);
  v253 = (v13 + 16);
  v257 = (v13 + 8);
  v25 = v251;
  v246 = (v14 + 8);
  v243 = (v15 + 88);
  v244 = (v15 + 16);
  v242 = enum case for IntentPerson.Name.displayName(_:);
  v237 = enum case for IntentPerson.Name.components(_:);
  v241 = (v15 + 8);
  v230 = v12;
  v238 = (v12 + 8);
  v236 = (v17 + 8);
  v228 = (v15 + 96);
  v225 = (v16 + 8);
  v226 = (v16 + 32);
  v239 = v24;
  v240 = v18 + 64;
  while (1)
  {
    if (v23)
    {
      v249 = v19;
      v26 = v19;
      goto LABEL_10;
    }

    do
    {
      v26 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_58;
      }

      if (v26 >= v24)
      {
        v249 = v19;
        v122 = v25[39];
        sub_100001A7C(&qword_10003C730, &qword_10002F318);
        sub_10001E2D4();
        sub_100004588();
        sub_100001AC4(v123, v124, v125, v126);
        v29 = 0;
        goto LABEL_11;
      }

      v23 = *(v20 + 8 * v26);
      ++v19;
    }

    while (!v23);
    v249 = v26;
LABEL_10:
    v27 = v25[39];
    v28 = __clz(__rbit64(v23));
    v29 = (v23 - 1) & v23;
    v30 = v28 | (v26 << 6);
    (*(v230 + 16))(v25[38], *(v231 + 48) + *(v230 + 72) * v30, v25[34]);
    v31 = *(*(v231 + 56) + 8 * v30);
    v32 = sub_100001A7C(&qword_10003C730, &qword_10002F318);
    v33 = *(v32 + 48);
    v34 = *(v230 + 32);
    v35 = sub_10000C3C4();
    v36(v35);
    *(v27 + v33) = v31;
    sub_10000C198();
    sub_100001AC4(v37, v38, v39, v32);

LABEL_11:
    v40 = v25[40];
    sub_10001B4DC(v25[39], v40);
    v41 = sub_100001A7C(&qword_10003C730, &qword_10002F318);
    sub_10001E378(v40);
    if (v42)
    {
      break;
    }

    v248 = v29;
    v43 = v25[34];
    v44 = *(v25[40] + *(v41 + 48));
    (*v247)(v25[37]);
    v45 = *(v44 + 16);
    if (v45)
    {
      v258 = _swiftEmptyArrayStorage;
      sub_100020388(0, v45, 0);
      v46 = v258;
      sub_10001E198();
      v48 = v44 + v47;
      v254 = *(v49 + 72);
      v50 = *(v49 + 16);
      do
      {
        v52 = v25[31];
        v51 = v25[32];
        v53 = v25;
        v56 = v25 + 28;
        v55 = v25[28];
        v54 = v56[1];
        v50(v51, v48, v54);
        v50(v52, v51, v54);
        DeviceActivityDeviceAppEntity.init(device:)(v52, v55);
        v57 = *v257;
        v58 = sub_10001E0A0();
        v59(v58);
        v258 = v46;
        v61 = *(v46 + 2);
        v60 = *(v46 + 3);
        if (v61 >= v60 >> 1)
        {
          v65 = sub_10001E208(v60);
          sub_100020388(v65, v66, v67);
          v46 = v258;
        }

        v62 = v53[28];
        *(v46 + 2) = v61 + 1;
        sub_10001E198();
        v64 = *(v63 + 72);
        sub_10001DFCC();
        sub_10001DB14();
        v48 += v254;
        --v45;
        v25 = v53;
      }

      while (v45);
    }

    else
    {

      v46 = _swiftEmptyArrayStorage;
    }

    v68 = v25[37];
    v69 = v25[38];
    v71 = v25[33];
    v70 = v25[34];

    sub_10002DB40();
    v72 = v25;
    v73 = *v250;
    v74 = sub_10000C3C4();
    v73(v74);
    sub_10001E2C8();
    sub_10002DB50();
    v75 = *(v46 + 2);

    v255 = v73;
    if (v75 > 1)
    {
      v76 = v72[32];
      v77 = v72[27];
      v78 = v72[24];
      (*v253)(v76, v72[33], v72[29]);
      DeviceActivityDeviceAppEntity.init(device:)(v76, v77);
      sub_10001DFCC();
      sub_10001E2E0();
      sub_10001DB14();
      v79 = *(v46 + 2);
      if (!swift_isUniquelyReferenced_nonNull_native() || v79 >= *(v46 + 3) >> 1)
      {
        sub_10002309C();
        v46 = v80;
      }

      v72 = v251;
      sub_10001D6D4(0, 0, 1, v251[24]);
    }

    v81 = v72[37];
    v82 = v72[23];
    v84 = v72[19];
    v83 = v72[20];
    v85 = v72[18];
    v86 = v72[16];
    sub_10002D910();
    sub_10002D230();
    v87 = *v246;
    v88 = sub_10001E2E0();
    v87(v88);
    (*v244)(v85, v84, v86);
    v89 = *v243;
    v90 = sub_10001E2C8();
    v92 = v91(v90);
    if (v92 == v242)
    {
      v127 = v251;
      v128 = v251[18];
      (*v241)(v251[19], v251[16]);
      v129 = *v228;
      v130 = sub_10000C3C4();
      v131(v130);
      v132 = *v128;
      v133 = *(v227 + 8);
      goto LABEL_33;
    }

    v245 = v87;
    if (v92 == v237)
    {
      v127 = v251;
      v134 = v251[18];
      v135 = v251[15];
      v136 = v251[13];
      (*v228)(v134, v251[16]);
      (*v226)(v135, v134, v136);
      v132 = sub_10002D710();
      v133 = v137;
      (*v225)(v135, v136);
      v138 = *v241;
      v139 = sub_10001E094();
      v140(v139);
      v87 = v245;
LABEL_33:
      v141 = v127[37];
      v142 = v127[22];
      v143 = v127[20];
      sub_10002D910();
      LOBYTE(v141) = sub_10002D220();
      v144 = sub_10001E094();
      v87(v144);
      if (v141)
      {

        v145 = 0x636976654420794DLL;
        v146 = 0xEA00000000007365;
      }

      else
      {
        v258 = 32;
        v259 = 0xE100000000000000;
        v261._countAndFlagsBits = v132;
        v261._object = v133;
        sub_10002DC90(v261);

        v262._countAndFlagsBits = 0x6369766544207327;
        v262._object = 0xEA00000000007365;
        sub_10002DC90(v262);
        v145 = v258;
        v146 = v259;
      }

      v23 = v248;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v258 = v229;
      result = sub_10001B54C(v145, v146);
      v150 = *(v229 + 16);
      v151 = (v149 & 1) == 0;
      v152 = v150 + v151;
      if (__OFADD__(v150, v151))
      {
        goto LABEL_67;
      }

      v153 = result;
      v154 = v149;
      sub_100001A7C(&qword_10003C748, &qword_10002F320);
      result = sub_10002DDC0(isUniquelyReferenced_nonNull_native, v152);
      v155 = v258;
      if (result)
      {
        result = sub_10001B54C(v145, v146);
        v25 = v251;
        if ((v154 & 1) != (v156 & 1))
        {
          sub_10001E31C();

          return sub_10002DE30();
        }

        v153 = result;
      }

      else
      {
        v25 = v251;
      }

      v229 = v155;
      if (v154)
      {
        v157 = v155[7];
        v158 = *(v157 + 8 * v153);
        *(v157 + 8 * v153) = v46;
      }

      else
      {
        v155[(v153 >> 6) + 8] |= 1 << v153;
        v159 = (v155[6] + 16 * v153);
        *v159 = v145;
        v159[1] = v146;
        *(v155[7] + 8 * v153) = v46;
        v160 = v155[2];
        v161 = __OFADD__(v160, 1);
        v162 = v160 + 1;
        if (v161)
        {
          goto LABEL_68;
        }

        v155[2] = v162;
      }

      v163 = v25[37];
      v164 = v25[34];
      (*v257)(v25[33], v25[29]);
      v165 = *v238;
      v166 = sub_10000C3C4();
      v167(v166);
      v24 = v239;
      v20 = v240;
      v19 = v249;
    }

    else
    {
      v93 = v251[36];
      v94 = v251[37];
      v95 = v251[34];
      v96 = v251[18];
      v97 = v251[12];
      v98 = *v241;
      (*v241)(v251[19], v251[16]);
      v99 = sub_10001E094();
      v98(v99);

      sub_10002D880();
      v100 = sub_10001DF8C();
      v255(v100);
      v101 = sub_10002D8B0();
      v102 = sub_10002DD20();
      v103 = os_log_type_enabled(v101, v102);
      v105 = v251[36];
      v104 = v251[37];
      v106 = v251[33];
      v107 = v251[34];
      v108 = v251[29];
      if (v103)
      {
        v256 = v251[33];
        v109 = v251[22];
        v110 = v251[20];
        v234 = v251[10];
        v235 = v251[12];
        v233 = v251[29];
        v111 = swift_slowAlloc();
        v232 = v104;
        v112 = swift_slowAlloc();
        v258 = v112;
        *v111 = 136315138;
        sub_10002D910();
        sub_10000C618(&qword_10003C740, &type metadata accessor for IntentPerson);
        v113 = v110;
        v114 = sub_10002DBC0();
        v116 = v115;
        (v245)(v109, v113);
        v117 = *v238;
        (*v238)(v105, v107);
        v118 = sub_1000237CC(v114, v116, &v258);

        *(v111 + 4) = v118;
        _os_log_impl(&_mh_execute_header, v101, v102, "No username for %s, skipping section!", v111, 0xCu);
        sub_10001C6CC(v112);
        sub_10001E144();
        sub_10001E144();

        (*v236)(v235, v234);
        (*v257)(v256, v233);
        v117(v232, v107);
      }

      else
      {
        v119 = v251[12];
        v120 = v251[10];

        v121 = *v238;
        (*v238)(v105, v107);
        (*v236)(v119, v120);
        (*v257)(v106, v108);
        v121(v104, v107);
      }

      v24 = v239;
      v20 = v240;
      v23 = v248;
      v19 = v249;
      v25 = v251;
    }
  }

  if (*(v229 + 16) == 1)
  {

    v168 = sub_10000FBEC(v229);

    if (v168)
    {
      v169 = v25[25];
      v170 = v25[9];
      v171 = v25[4];
      v172 = v25[2];
      sub_100004588();
      sub_100001AC4(v173, v174, v175, v176);
      sub_10000C618(&qword_10003C738, type metadata accessor for DeviceActivityDeviceAppEntity);
      sub_10000C618(&qword_10003C620, type metadata accessor for DeviceActivityDeviceAppEntity);
      sub_10002D470();
      goto LABEL_59;
    }
  }

  v258 = sub_10001C610(v177);
  sub_10001C5A4(&v258);

  v178 = v258;
  v179 = *(v258 + 16);
  if (!v179)
  {
LABEL_58:

    v202 = v25[25];
    v203 = v25[9];
    v204 = v25[4];
    v205 = v25[2];
    sub_100004588();
    sub_100001AC4(v206, v207, v208, v209);
    sub_10001DFB4();
    sub_10000C618(v210, v211);
    sub_10002D480();
LABEL_59:
    v213 = v25[40];
    v212 = v25[41];
    v215 = v25[38];
    v214 = v25[39];
    v217 = v25[36];
    v216 = v25[37];
    v218 = v25;
    v219 = v25[33];
    v220 = v218[31];
    v221 = v218[32];
    sub_10001DF28();

    sub_10000C354();
    sub_10001E31C();

    __asm { BRAA            X1, X16 }
  }

  v180 = v25[7];
  v258 = _swiftEmptyArrayStorage;
  sub_100020368(0, v179, 0);
  v181 = v258;
  v182 = (v178 + 40);
  while (1)
  {
    v183 = v25[5];
    v184 = *(v182 - 1);
    v185 = *v182;
    swift_bridgeObjectRetain_n();
    result = sub_10002D730();
    if (!*(v229 + 16))
    {
      break;
    }

    result = sub_10001B54C(v184, v185);
    if ((v186 & 1) == 0)
    {
      goto LABEL_66;
    }

    v187 = v25[25];
    v188 = v25[8];
    v189 = v25;
    v190 = v25[5];
    v191 = *(*(v229 + 56) + 8 * result);
    sub_10001DFB4();
    sub_10000C618(&qword_10003C620, v192);

    sub_10002D440();

    v258 = v181;
    v194 = *(v181 + 2);
    v193 = *(v181 + 3);
    if (v194 >= v193 >> 1)
    {
      v199 = sub_10001E208(v193);
      sub_100020368(v199, v200, v201);
      v181 = v258;
    }

    v195 = v189[8];
    v196 = v189[6];
    *(v181 + 2) = v194 + 1;
    sub_10001E198();
    (*(v198 + 32))(&v181[v197 + *(v198 + 72) * v194]);
    v182 += 2;
    --v179;
    v25 = v189;
    if (!v179)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_10000F7C8(uint64_t a1)
{
  v2 = sub_10002D930();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v53 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_10002DB90();
  v6 = *(*(v52 - 8) + 64);
  v7 = __chkstk_darwin(v52);
  v46 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v38 - v9;
  v10 = 0;
  v11 = &_swiftEmptyDictionarySingleton;
  v54 = &_swiftEmptyDictionarySingleton;
  v12 = *(a1 + 16);
  v48 = v13;
  v49 = v12;
  v47 = v13 + 16;
  v50 = (v13 + 32);
  v41 = v3 + 32;
  v42 = v3;
  v40 = (v3 + 8);
  v39 = xmmword_10002F0C0;
  v43 = v2;
  v44 = a1;
  while (1)
  {
    if (v49 == v10)
    {

      return v11;
    }

    if (v10 >= *(a1 + 16))
    {
      break;
    }

    v14 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v15 = *(v48 + 72);
    (*(v48 + 16))(v51, a1 + v14 + v15 * v10, v52);
    v16 = v53;
    sub_10002DB80();
    v18 = sub_10001B5C4(v16);
    v19 = v11[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v11[3] < v21)
    {
      sub_10001C1CC(v21, 1);
      v11 = v54;
      v23 = sub_10001B5C4(v53);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v18 = v23;
    }

    if (v22)
    {
      (*v40)(v53, v2);
      v25 = v11[7];
      v26 = *v50;
      (*v50)(v46, v51, v52);
      v27 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v27;
      v45 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = *(v27 + 16);
        sub_100023178();
        v27 = v35;
        *(v25 + 8 * v18) = v35;
      }

      v29 = *(v27 + 16);
      if (v29 >= *(v27 + 24) >> 1)
      {
        sub_100023178();
        v27 = v36;
        *(v25 + 8 * v18) = v36;
      }

      v2 = v43;
      *(v27 + 16) = v29 + 1;
      v45((v27 + v14 + v29 * v15), v46, v52);
      a1 = v44;
    }

    else
    {
      sub_100001A7C(&qword_10003C758, &qword_10002F330);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      (*v50)((v30 + v14), v51, v52);
      v11[(v18 >> 6) + 8] |= 1 << v18;
      (*(v42 + 32))(v11[6] + *(v42 + 72) * v18, v53, v2);
      *(v11[7] + 8 * v18) = v30;
      v31 = v11[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_20;
      }

      v11[2] = v33;
    }

    ++v10;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_10002DE30();
  __break(1u);
  return result;
}

uint64_t sub_10000FBEC(uint64_t a1)
{
  result = sub_10001D9C8(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_10001DA08(result, v3, 0, a1);
  }
}

uint64_t sub_10000FC50()
{
  sub_10001DFE4();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_10002D8C0();
  v1[14] = v3;
  sub_10000C028(v3);
  v1[15] = v4;
  v6 = *(v5 + 64);
  v1[16] = sub_10000C450();
  v1[17] = swift_task_alloc();
  v7 = sub_10002DB90();
  v1[18] = v7;
  sub_10000C028(v7);
  v1[19] = v8;
  v10 = *(v9 + 64);
  v1[20] = sub_10000C450();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v11 = sub_100001A7C(&qword_10003C510, &qword_10002EF10);
  sub_100002CD8(v11);
  v13 = *(v12 + 64);
  v1[23] = sub_10000C3DC();
  v14 = sub_10001DEBC();

  return _swift_task_switch(v14, v15, v16);
}

uint64_t sub_10000FD90()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 104);
  v3 = sub_10002D900();
  sub_100006D2C(v3);
  v5 = *(v4 + 16);
  v6 = sub_10000C3C4();
  v7(v6);
  sub_10000C198();
  sub_100001AC4(v8, v9, v10, v3);
  v11 = sub_10002DAC0();
  v12 = *(v0 + 104);
  sub_100006BA4(*(v0 + 184), &qword_10003C510, &qword_10002EF10);
  sub_10002D8E0();
  if (!*(v0 + 80))
  {

    sub_100006BA4(v0 + 56, &qword_10003C708, &qword_10002F2E8);
LABEL_5:
    v16 = *(v0 + 136);
    sub_10002D880();
    v17 = sub_10002D8B0();
    sub_10002DD20();
    sub_10001E1F0();
    if (os_log_type_enabled(v17, v18))
    {
      *swift_slowAlloc() = 0;
      sub_10001E338(&_mh_execute_header, v19, v20, "Current device not found as the default value for device!");
      sub_10001E144();
    }

    v21 = *(v0 + 136);
    v22 = *(v0 + 112);
    v23 = *(v0 + 120);
    v24 = *(v0 + 96);

    v25 = *(v23 + 8);
    v26 = sub_10001E2E0();
    v27(v26);
    type metadata accessor for DeviceActivityDeviceAppEntity();
    sub_100004588();
    sub_100001AC4(v28, v29, v30, v31);
LABEL_8:
    v33 = *(v0 + 176);
    v32 = *(v0 + 184);
    v35 = *(v0 + 160);
    v34 = *(v0 + 168);
    v37 = *(v0 + 128);
    v36 = *(v0 + 136);

    sub_10000C354();

    return v38();
  }

  sub_10001B480((v0 + 56), v0 + 16);
  v13 = *(v0 + 48);
  sub_10001B498((v0 + 16), *(v0 + 40));
  result = sub_10002DB10();
  v39 = v15;
  if (!v15)
  {
LABEL_3:

    sub_10001C6CC((v0 + 16));
    goto LABEL_5;
  }

  v40 = result;
  v41 = 0;
  v42 = *(v0 + 152);
  v57 = *(v11 + 16);
  v43 = (v42 + 8);
  while (1)
  {
    if (v57 == v41)
    {

      goto LABEL_3;
    }

    if (v41 >= *(v11 + 16))
    {
      break;
    }

    v44 = *(v42 + 16);
    (v44)(*(v0 + 168), v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v41, *(v0 + 144));
    if (sub_10002DB60() == v40 && v39 == v45)
    {

LABEL_23:

      v48 = *(v0 + 176);
      v49 = *(v0 + 160);
      v50 = *(v0 + 144);
      v51 = *(v0 + 96);
      (*(*(v0 + 152) + 32))(v48, *(v0 + 168), v50);
      v52 = sub_10001DF8C();
      v44(v52);
      DeviceActivityDeviceAppEntity.init(device:)(v49, v51);
      (*v43)(v48, v50);
      type metadata accessor for DeviceActivityDeviceAppEntity();
      sub_10000C198();
      sub_100001AC4(v53, v54, v55, v56);
      sub_10001C6CC((v0 + 16));
      goto LABEL_8;
    }

    v47 = sub_10002DE10();

    if (v47)
    {
      goto LABEL_23;
    }

    result = (*v43)(*(v0 + 168), *(v0 + 144));
    ++v41;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010270()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010308;

  return sub_10000E2E0();
}

uint64_t sub_100010308()
{
  sub_10001DFE4();
  sub_10001E220();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10001DF00();
  *v4 = v3;

  sub_10000C354();

  return v5();
}

uint64_t sub_1000103E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100010308;

  return sub_10000FC50();
}

unint64_t sub_100010488()
{
  result = qword_10003C638;
  if (!qword_10003C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C638);
  }

  return result;
}

uint64_t sub_100010510(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002A98(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010564()
{
  sub_10001DFE4();
  *(v0 + 16) = v1;
  v2 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  sub_100002CD8(v2);
  v4 = *(v3 + 64);
  *(v0 + 24) = sub_10000C3DC();
  v5 = sub_10001DEBC();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000105E8()
{
  sub_10001DFE4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_10002D740();
  sub_10001E2D4();
  sub_100004588();
  sub_100001AC4(v3, v4, v5, v6);
  sub_1000069D0();
  sub_10002D460();

  sub_10000C354();

  return v7();
}

uint64_t sub_100010694()
{
  v0 = sub_100001A7C(&qword_10003C1B8, &unk_10002EA50);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v27 - v2;
  v4 = sub_100001A7C(&qword_10003C100, &unk_10002E430);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = sub_10002D740();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = sub_100001A7C(&qword_10003C6E0, &qword_10002F2B0);
  v28 = *(v10 - 8);
  v11 = v28;
  v12 = *(v28 + 64);
  v13 = __chkstk_darwin(v10);
  v27 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  v17 = sub_10002D4E0();
  sub_100001AC4(v3, 1, 1, v17);
  sub_1000069D0();
  sub_10002D450();
  sub_10002D730();
  sub_100001AC4(v7, 1, 1, v8);
  sub_100001AC4(v3, 1, 1, v17);
  v18 = v27;
  sub_10002D450();
  sub_100001A7C(&qword_10003C6E8, &qword_10002F2B8);
  v19 = *(v28 + 72);
  v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_10002F0D0;
  v22 = v21 + v20;
  v23 = *(v11 + 16);
  v23(v22, v16, v10);
  v23(v22 + v19, v18, v10);
  v24 = sub_10002D430();

  v25 = *(v11 + 8);
  v25(v18, v10);
  v25(v16, v10);
  return v24;
}

uint64_t sub_100010A54()
{
  v0 = sub_100001A7C(&qword_10003C6F0, &qword_10002F2C0);
  v101 = *(v0 - 8);
  v102 = v0 - 8;
  v105 = v101;
  v1 = *(v101 + 64);
  v2 = __chkstk_darwin(v0);
  v111 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v110 = &v99 - v5;
  v6 = __chkstk_darwin(v4);
  v109 = &v99 - v7;
  v8 = __chkstk_darwin(v6);
  v100 = &v99 - v9;
  v10 = __chkstk_darwin(v8);
  v107 = &v99 - v11;
  v12 = __chkstk_darwin(v10);
  v103 = &v99 - v13;
  v14 = __chkstk_darwin(v12);
  v112 = &v99 - v15;
  v16 = __chkstk_darwin(v14);
  v113 = &v99 - v17;
  v18 = __chkstk_darwin(v16);
  v114 = &v99 - v19;
  v20 = __chkstk_darwin(v18);
  v115 = &v99 - v21;
  v22 = __chkstk_darwin(v20);
  v104 = &v99 - v23;
  v24 = __chkstk_darwin(v22);
  v106 = &v99 - v25;
  __chkstk_darwin(v24);
  v108 = &v99 - v26;
  v27 = objc_opt_self();
  v28 = [v27 localizedStringForLabel:CNLabelContactRelationMother];
  v29 = sub_10002DC20();
  v31 = v30;

  v116 = v29;
  v117 = v31;
  v32 = sub_1000069D0();
  sub_10002D1C0();

  v33 = [v27 localizedStringForLabel:CNLabelContactRelationFather];
  v34 = sub_10002DC20();
  v36 = v35;

  v116 = v34;
  v117 = v36;
  sub_10002D1C0();

  v37 = [v27 localizedStringForLabel:CNLabelContactRelationParent];
  v38 = sub_10002DC20();
  v40 = v39;

  v116 = v38;
  v117 = v40;
  sub_10002D1C0();

  v41 = [v27 localizedStringForLabel:CNLabelContactRelationBrother];
  v42 = sub_10002DC20();
  v44 = v43;

  v116 = v42;
  v117 = v44;
  sub_10002D1C0();

  v45 = [v27 localizedStringForLabel:CNLabelContactRelationSister];
  v46 = sub_10002DC20();
  v48 = v47;

  v116 = v46;
  v117 = v48;
  sub_10002D1C0();

  v49 = [v27 localizedStringForLabel:CNLabelContactRelationSon];
  v50 = sub_10002DC20();
  v52 = v51;

  v116 = v50;
  v117 = v52;
  v53 = v32;
  sub_10002D1C0();

  v54 = [v27 localizedStringForLabel:CNLabelContactRelationDaughter];
  v55 = sub_10002DC20();
  v57 = v56;

  v116 = v55;
  v117 = v57;
  sub_10002D1C0();

  v58 = [v27 localizedStringForLabel:CNLabelContactRelationChild];
  v59 = sub_10002DC20();
  v61 = v60;

  v116 = v59;
  v117 = v61;
  v62 = v103;
  sub_10002D1C0();

  v63 = [v27 localizedStringForLabel:CNLabelContactRelationFriend];
  v64 = sub_10002DC20();
  v66 = v65;

  v116 = v64;
  v117 = v66;
  sub_10002D1C0();

  v67 = [v27 localizedStringForLabel:CNLabelContactRelationSpouse];
  v68 = sub_10002DC20();
  v70 = v69;

  v116 = v68;
  v117 = v70;
  v71 = v100;
  sub_10002D1C0();

  v72 = [v27 localizedStringForLabel:CNLabelContactRelationPartner];
  v73 = sub_10002DC20();
  v75 = v74;

  v116 = v73;
  v117 = v75;
  sub_10002D1C0();

  v76 = [v27 localizedStringForLabel:CNLabelContactRelationAssistant];
  v77 = sub_10002DC20();
  v79 = v78;

  v116 = v77;
  v117 = v79;
  v99 = v53;
  sub_10002D1C0();

  v80 = [v27 localizedStringForLabel:CNLabelContactRelationManager];
  v81 = sub_10002DC20();
  v83 = v82;

  v116 = v81;
  v117 = v83;
  sub_10002D1C0();

  sub_100001A7C(&qword_10003C6F8, &qword_10002F2C8);
  v84 = *(v101 + 72);
  v85 = v105;
  v86 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_10002F0E0;
  v88 = v87 + v86;
  v89 = *(v85 + 16);
  v89(v87 + v86, v108, v0);
  v89(v88 + v84, v106, v0);
  v89(v88 + 2 * v84, v104, v0);
  v89(v88 + 3 * v84, v115, v0);
  v89(v88 + 4 * v84, v114, v0);
  v89(v88 + 5 * v84, v113, v0);
  v89(v88 + 6 * v84, v112, v0);
  v89(v88 + 7 * v84, v62, v0);
  v90 = v107;
  v89(v88 + 8 * v84, v107, v0);
  v91 = v71;
  v89(v88 + 9 * v84, v71, v0);
  v92 = v109;
  v89(v88 + 10 * v84, v109, v0);
  v93 = v110;
  v89(v88 + 11 * v84, v110, v0);
  v94 = v88 + 12 * v84;
  v95 = v111;
  v89(v94, v111, v0);
  v96 = sub_10002D1B0();

  v97 = *(v105 + 8);
  v97(v95, v0);
  v97(v93, v0);
  v97(v92, v0);
  v97(v91, v0);
  v97(v90, v0);
  v97(v103, v0);
  v97(v112, v0);
  v97(v113, v0);
  v97(v114, v0);
  v97(v115, v0);
  v97(v104, v0);
  v97(v106, v0);
  v97(v108, v0);
  return v96;
}

uint64_t sub_100011454()
{
  v0 = sub_100001A7C(&qword_10003C6F0, &qword_10002F2C0);
  v1314 = *(v0 - 8);
  v1315 = v0 - 8;
  v1318 = v1314;
  v1 = *(v1314 + 64);
  v2 = __chkstk_darwin(v0);
  v1325 = &v1314 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v1324 = &v1314 - v5;
  v6 = __chkstk_darwin(v4);
  v1323 = &v1314 - v7;
  v8 = __chkstk_darwin(v6);
  v1322 = &v1314 - v9;
  v10 = __chkstk_darwin(v8);
  v1317 = &v1314 - v11;
  v12 = __chkstk_darwin(v10);
  v1532 = &v1314 - v13;
  v14 = __chkstk_darwin(v12);
  v1531 = &v1314 - v15;
  v16 = __chkstk_darwin(v14);
  v1530 = &v1314 - v17;
  v18 = __chkstk_darwin(v16);
  v1529 = &v1314 - v19;
  v20 = __chkstk_darwin(v18);
  v1528 = &v1314 - v21;
  v22 = __chkstk_darwin(v20);
  v1527 = &v1314 - v23;
  v24 = __chkstk_darwin(v22);
  v1526 = &v1314 - v25;
  v26 = __chkstk_darwin(v24);
  v1525 = &v1314 - v27;
  v28 = __chkstk_darwin(v26);
  v1524 = &v1314 - v29;
  v30 = __chkstk_darwin(v28);
  v1523 = &v1314 - v31;
  v32 = __chkstk_darwin(v30);
  v1522 = &v1314 - v33;
  v34 = __chkstk_darwin(v32);
  v1521 = &v1314 - v35;
  v36 = __chkstk_darwin(v34);
  v1520 = &v1314 - v37;
  v38 = __chkstk_darwin(v36);
  v1519 = &v1314 - v39;
  v40 = __chkstk_darwin(v38);
  v1518 = &v1314 - v41;
  v42 = __chkstk_darwin(v40);
  v1517 = &v1314 - v43;
  v44 = __chkstk_darwin(v42);
  v1516 = &v1314 - v45;
  v46 = __chkstk_darwin(v44);
  v1515 = &v1314 - v47;
  v48 = __chkstk_darwin(v46);
  v1514 = &v1314 - v49;
  v50 = __chkstk_darwin(v48);
  v1513 = &v1314 - v51;
  v52 = __chkstk_darwin(v50);
  v1512 = &v1314 - v53;
  v54 = __chkstk_darwin(v52);
  v1511 = &v1314 - v55;
  v56 = __chkstk_darwin(v54);
  v1510 = &v1314 - v57;
  v58 = __chkstk_darwin(v56);
  v1509 = &v1314 - v59;
  v60 = __chkstk_darwin(v58);
  v1508 = &v1314 - v61;
  v62 = __chkstk_darwin(v60);
  v1507 = &v1314 - v63;
  v64 = __chkstk_darwin(v62);
  v1506 = &v1314 - v65;
  v66 = __chkstk_darwin(v64);
  v1505 = &v1314 - v67;
  v68 = __chkstk_darwin(v66);
  v1504 = &v1314 - v69;
  v70 = __chkstk_darwin(v68);
  v1503 = &v1314 - v71;
  v72 = __chkstk_darwin(v70);
  v1502 = &v1314 - v73;
  v74 = __chkstk_darwin(v72);
  v1501 = &v1314 - v75;
  v76 = __chkstk_darwin(v74);
  v1500 = &v1314 - v77;
  v78 = __chkstk_darwin(v76);
  v1499 = &v1314 - v79;
  v80 = __chkstk_darwin(v78);
  v1498 = &v1314 - v81;
  v82 = __chkstk_darwin(v80);
  v1497 = &v1314 - v83;
  v84 = __chkstk_darwin(v82);
  v1496 = &v1314 - v85;
  v86 = __chkstk_darwin(v84);
  v1495 = &v1314 - v87;
  v88 = __chkstk_darwin(v86);
  v1494 = &v1314 - v89;
  v90 = __chkstk_darwin(v88);
  v1493 = &v1314 - v91;
  v92 = __chkstk_darwin(v90);
  v1492 = &v1314 - v93;
  v94 = __chkstk_darwin(v92);
  v1491 = &v1314 - v95;
  v96 = __chkstk_darwin(v94);
  v1490 = &v1314 - v97;
  v98 = __chkstk_darwin(v96);
  v1489 = &v1314 - v99;
  v100 = __chkstk_darwin(v98);
  v1488 = &v1314 - v101;
  v102 = __chkstk_darwin(v100);
  v1487 = &v1314 - v103;
  v104 = __chkstk_darwin(v102);
  v1486 = &v1314 - v105;
  v106 = __chkstk_darwin(v104);
  v1485 = &v1314 - v107;
  v108 = __chkstk_darwin(v106);
  v1484 = &v1314 - v109;
  v110 = __chkstk_darwin(v108);
  v1483 = &v1314 - v111;
  v112 = __chkstk_darwin(v110);
  v1482 = &v1314 - v113;
  v114 = __chkstk_darwin(v112);
  v1481 = &v1314 - v115;
  v116 = __chkstk_darwin(v114);
  v1480 = &v1314 - v117;
  v118 = __chkstk_darwin(v116);
  v1479 = &v1314 - v119;
  v120 = __chkstk_darwin(v118);
  v1478 = &v1314 - v121;
  v122 = __chkstk_darwin(v120);
  v1477 = &v1314 - v123;
  v124 = __chkstk_darwin(v122);
  v1476 = &v1314 - v125;
  v126 = __chkstk_darwin(v124);
  v1475 = &v1314 - v127;
  v128 = __chkstk_darwin(v126);
  v1474 = &v1314 - v129;
  v130 = __chkstk_darwin(v128);
  v1473 = &v1314 - v131;
  v132 = __chkstk_darwin(v130);
  v1472 = &v1314 - v133;
  v134 = __chkstk_darwin(v132);
  v1471 = &v1314 - v135;
  v136 = __chkstk_darwin(v134);
  v1470 = &v1314 - v137;
  v138 = __chkstk_darwin(v136);
  v1469 = &v1314 - v139;
  v140 = __chkstk_darwin(v138);
  v1468 = &v1314 - v141;
  v142 = __chkstk_darwin(v140);
  v1467 = &v1314 - v143;
  v144 = __chkstk_darwin(v142);
  v1466 = &v1314 - v145;
  v146 = __chkstk_darwin(v144);
  v1465 = &v1314 - v147;
  v148 = __chkstk_darwin(v146);
  v1464 = &v1314 - v149;
  v150 = __chkstk_darwin(v148);
  v1463 = &v1314 - v151;
  v152 = __chkstk_darwin(v150);
  v1462 = &v1314 - v153;
  v154 = __chkstk_darwin(v152);
  v1461 = &v1314 - v155;
  v156 = __chkstk_darwin(v154);
  v1460 = &v1314 - v157;
  v158 = __chkstk_darwin(v156);
  v1459 = &v1314 - v159;
  v160 = __chkstk_darwin(v158);
  v1458 = &v1314 - v161;
  v162 = __chkstk_darwin(v160);
  v1457 = &v1314 - v163;
  v164 = __chkstk_darwin(v162);
  v1456 = &v1314 - v165;
  v166 = __chkstk_darwin(v164);
  v1455 = &v1314 - v167;
  v168 = __chkstk_darwin(v166);
  v1454 = &v1314 - v169;
  v170 = __chkstk_darwin(v168);
  v1453 = &v1314 - v171;
  v172 = __chkstk_darwin(v170);
  v1452 = &v1314 - v173;
  v174 = __chkstk_darwin(v172);
  v1451 = &v1314 - v175;
  v176 = __chkstk_darwin(v174);
  v1450 = &v1314 - v177;
  v178 = __chkstk_darwin(v176);
  v1449 = &v1314 - v179;
  v180 = __chkstk_darwin(v178);
  v1448 = &v1314 - v181;
  v182 = __chkstk_darwin(v180);
  v1447 = &v1314 - v183;
  v184 = __chkstk_darwin(v182);
  v1446 = &v1314 - v185;
  v186 = __chkstk_darwin(v184);
  v1445 = &v1314 - v187;
  v188 = __chkstk_darwin(v186);
  v1444 = &v1314 - v189;
  v190 = __chkstk_darwin(v188);
  v1443 = &v1314 - v191;
  v192 = __chkstk_darwin(v190);
  v1442 = &v1314 - v193;
  v194 = __chkstk_darwin(v192);
  v1441 = &v1314 - v195;
  v196 = __chkstk_darwin(v194);
  v1440 = &v1314 - v197;
  v198 = __chkstk_darwin(v196);
  v1439 = &v1314 - v199;
  v200 = __chkstk_darwin(v198);
  v1438 = &v1314 - v201;
  v202 = __chkstk_darwin(v200);
  v1437 = &v1314 - v203;
  v204 = __chkstk_darwin(v202);
  v1436 = &v1314 - v205;
  v206 = __chkstk_darwin(v204);
  v1435 = &v1314 - v207;
  v208 = __chkstk_darwin(v206);
  v1434 = &v1314 - v209;
  v210 = __chkstk_darwin(v208);
  v1433 = &v1314 - v211;
  v212 = __chkstk_darwin(v210);
  v1432 = &v1314 - v213;
  v214 = __chkstk_darwin(v212);
  v1431 = &v1314 - v215;
  v216 = __chkstk_darwin(v214);
  v1430 = &v1314 - v217;
  v218 = __chkstk_darwin(v216);
  v1429 = &v1314 - v219;
  v220 = __chkstk_darwin(v218);
  v1428 = &v1314 - v221;
  v222 = __chkstk_darwin(v220);
  v1427 = &v1314 - v223;
  v224 = __chkstk_darwin(v222);
  v1426 = &v1314 - v225;
  v226 = __chkstk_darwin(v224);
  v1316 = &v1314 - v227;
  v228 = __chkstk_darwin(v226);
  v1425 = &v1314 - v229;
  v230 = __chkstk_darwin(v228);
  v1424 = &v1314 - v231;
  v232 = __chkstk_darwin(v230);
  v1423 = &v1314 - v233;
  v234 = __chkstk_darwin(v232);
  v1327 = &v1314 - v235;
  v236 = __chkstk_darwin(v234);
  v1422 = &v1314 - v237;
  v238 = __chkstk_darwin(v236);
  v1421 = &v1314 - v239;
  v240 = __chkstk_darwin(v238);
  v1326 = &v1314 - v241;
  v242 = __chkstk_darwin(v240);
  v1420 = &v1314 - v243;
  v244 = __chkstk_darwin(v242);
  v1419 = &v1314 - v245;
  v246 = __chkstk_darwin(v244);
  v1329 = &v1314 - v247;
  v248 = __chkstk_darwin(v246);
  v1418 = &v1314 - v249;
  v250 = __chkstk_darwin(v248);
  v1417 = &v1314 - v251;
  v252 = __chkstk_darwin(v250);
  v1328 = &v1314 - v253;
  v254 = __chkstk_darwin(v252);
  v1416 = &v1314 - v255;
  v256 = __chkstk_darwin(v254);
  v1415 = &v1314 - v257;
  v258 = __chkstk_darwin(v256);
  v1331 = &v1314 - v259;
  v260 = __chkstk_darwin(v258);
  v1414 = &v1314 - v261;
  v262 = __chkstk_darwin(v260);
  v1413 = &v1314 - v263;
  v264 = __chkstk_darwin(v262);
  v1330 = &v1314 - v265;
  v266 = __chkstk_darwin(v264);
  v1412 = &v1314 - v267;
  v268 = __chkstk_darwin(v266);
  v1411 = &v1314 - v269;
  v270 = __chkstk_darwin(v268);
  v1333 = &v1314 - v271;
  v272 = __chkstk_darwin(v270);
  v1410 = &v1314 - v273;
  v274 = __chkstk_darwin(v272);
  v1409 = &v1314 - v275;
  v276 = __chkstk_darwin(v274);
  v1334 = &v1314 - v277;
  v278 = __chkstk_darwin(v276);
  v1408 = &v1314 - v279;
  v280 = __chkstk_darwin(v278);
  v1407 = &v1314 - v281;
  v282 = __chkstk_darwin(v280);
  v1332 = &v1314 - v283;
  v284 = __chkstk_darwin(v282);
  v1406 = &v1314 - v285;
  v286 = __chkstk_darwin(v284);
  v1405 = &v1314 - v287;
  v288 = __chkstk_darwin(v286);
  v1336 = &v1314 - v289;
  v290 = __chkstk_darwin(v288);
  v1404 = &v1314 - v291;
  v292 = __chkstk_darwin(v290);
  v1403 = &v1314 - v293;
  v294 = __chkstk_darwin(v292);
  v1337 = &v1314 - v295;
  v296 = __chkstk_darwin(v294);
  v1402 = &v1314 - v297;
  v298 = __chkstk_darwin(v296);
  v1401 = &v1314 - v299;
  v300 = __chkstk_darwin(v298);
  v1335 = &v1314 - v301;
  v302 = __chkstk_darwin(v300);
  v1400 = &v1314 - v303;
  v304 = __chkstk_darwin(v302);
  v1399 = &v1314 - v305;
  v306 = __chkstk_darwin(v304);
  v1339 = &v1314 - v307;
  v308 = __chkstk_darwin(v306);
  v1398 = &v1314 - v309;
  v310 = __chkstk_darwin(v308);
  v1340 = &v1314 - v311;
  v312 = __chkstk_darwin(v310);
  v1397 = &v1314 - v313;
  v314 = __chkstk_darwin(v312);
  v1338 = &v1314 - v315;
  v316 = __chkstk_darwin(v314);
  v1396 = &v1314 - v317;
  v318 = __chkstk_darwin(v316);
  v1342 = &v1314 - v319;
  v320 = __chkstk_darwin(v318);
  v1395 = &v1314 - v321;
  v322 = __chkstk_darwin(v320);
  v1343 = &v1314 - v323;
  v324 = __chkstk_darwin(v322);
  v1394 = &v1314 - v325;
  v326 = __chkstk_darwin(v324);
  v1344 = &v1314 - v327;
  v328 = __chkstk_darwin(v326);
  v1393 = &v1314 - v329;
  v330 = __chkstk_darwin(v328);
  v1341 = &v1314 - v331;
  v332 = __chkstk_darwin(v330);
  v1392 = &v1314 - v333;
  v334 = __chkstk_darwin(v332);
  v1346 = &v1314 - v335;
  v336 = __chkstk_darwin(v334);
  v1391 = &v1314 - v337;
  v338 = __chkstk_darwin(v336);
  v1347 = &v1314 - v339;
  v340 = __chkstk_darwin(v338);
  v1390 = &v1314 - v341;
  v342 = __chkstk_darwin(v340);
  v1348 = &v1314 - v343;
  v344 = __chkstk_darwin(v342);
  v1389 = &v1314 - v345;
  v346 = __chkstk_darwin(v344);
  v1345 = &v1314 - v347;
  v348 = __chkstk_darwin(v346);
  v1388 = &v1314 - v349;
  v350 = __chkstk_darwin(v348);
  v1350 = &v1314 - v351;
  v352 = __chkstk_darwin(v350);
  v1387 = &v1314 - v353;
  v354 = __chkstk_darwin(v352);
  v1351 = &v1314 - v355;
  v356 = __chkstk_darwin(v354);
  v1386 = &v1314 - v357;
  v358 = __chkstk_darwin(v356);
  v1352 = &v1314 - v359;
  v360 = __chkstk_darwin(v358);
  v1385 = &v1314 - v361;
  v362 = __chkstk_darwin(v360);
  v1349 = &v1314 - v363;
  v364 = __chkstk_darwin(v362);
  v1384 = &v1314 - v365;
  v366 = __chkstk_darwin(v364);
  v1354 = &v1314 - v367;
  v368 = __chkstk_darwin(v366);
  v1383 = &v1314 - v369;
  v370 = __chkstk_darwin(v368);
  v1355 = &v1314 - v371;
  v372 = __chkstk_darwin(v370);
  v1356 = &v1314 - v373;
  v374 = __chkstk_darwin(v372);
  v1357 = &v1314 - v375;
  v376 = __chkstk_darwin(v374);
  v1358 = &v1314 - v377;
  v378 = __chkstk_darwin(v376);
  v1359 = &v1314 - v379;
  v380 = __chkstk_darwin(v378);
  v1353 = &v1314 - v381;
  v382 = __chkstk_darwin(v380);
  v1361 = &v1314 - v383;
  v384 = __chkstk_darwin(v382);
  v1362 = &v1314 - v385;
  v386 = __chkstk_darwin(v384);
  v1363 = &v1314 - v387;
  v388 = __chkstk_darwin(v386);
  v1364 = &v1314 - v389;
  v390 = __chkstk_darwin(v388);
  v1365 = &v1314 - v391;
  v392 = __chkstk_darwin(v390);
  v1366 = &v1314 - v393;
  v394 = __chkstk_darwin(v392);
  v1367 = &v1314 - v395;
  v396 = __chkstk_darwin(v394);
  v1360 = &v1314 - v397;
  v398 = __chkstk_darwin(v396);
  v1369 = &v1314 - v399;
  v400 = __chkstk_darwin(v398);
  v1370 = &v1314 - v401;
  v402 = __chkstk_darwin(v400);
  v1371 = &v1314 - v403;
  v404 = __chkstk_darwin(v402);
  v1372 = &v1314 - v405;
  v406 = __chkstk_darwin(v404);
  v1373 = &v1314 - v407;
  v408 = __chkstk_darwin(v406);
  v1374 = &v1314 - v409;
  v410 = __chkstk_darwin(v408);
  v1375 = &v1314 - v411;
  v412 = __chkstk_darwin(v410);
  v1368 = &v1314 - v413;
  v414 = __chkstk_darwin(v412);
  v1376 = &v1314 - v415;
  v416 = __chkstk_darwin(v414);
  v1377 = &v1314 - v417;
  v418 = __chkstk_darwin(v416);
  v1378 = &v1314 - v419;
  v420 = __chkstk_darwin(v418);
  v1379 = &v1314 - v421;
  v422 = __chkstk_darwin(v420);
  v1380 = &v1314 - v423;
  v424 = __chkstk_darwin(v422);
  v1381 = &v1314 - v425;
  v426 = __chkstk_darwin(v424);
  v1382 = &v1314 - v427;
  v428 = __chkstk_darwin(v426);
  v1319 = &v1314 - v429;
  v430 = __chkstk_darwin(v428);
  v1320 = &v1314 - v431;
  __chkstk_darwin(v430);
  v1321 = &v1314 - v432;
  v433 = objc_opt_self();
  v434 = [v433 localizedStringForLabel:CNLabelContactRelationAssistant];
  v435 = sub_10002DC20();
  v437 = v436;

  v1533 = v435;
  v1534 = v437;
  sub_1000069D0();
  sub_10002D1C0();

  v438 = [v433 localizedStringForLabel:CNLabelContactRelationManager];
  v439 = sub_10002DC20();
  v441 = v440;

  v1533 = v439;
  v1534 = v441;
  sub_10002D1C0();

  v442 = [v433 localizedStringForLabel:CNLabelContactRelationColleague];
  v443 = sub_10002DC20();
  v445 = v444;

  v1533 = v443;
  v1534 = v445;
  sub_10002D1C0();

  v446 = [v433 localizedStringForLabel:CNLabelContactRelationTeacher];
  v447 = sub_10002DC20();
  v449 = v448;

  v1533 = v447;
  v1534 = v449;
  sub_10002D1C0();

  v450 = [v433 localizedStringForLabel:CNLabelContactRelationSibling];
  v451 = sub_10002DC20();
  v453 = v452;

  v1533 = v451;
  v1534 = v453;
  sub_10002D1C0();

  v454 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerSibling];
  v455 = sub_10002DC20();
  v457 = v456;

  v1533 = v455;
  v1534 = v457;
  sub_10002D1C0();

  v458 = [v433 localizedStringForLabel:CNLabelContactRelationElderSibling];
  v459 = sub_10002DC20();
  v461 = v460;

  v1533 = v459;
  v1534 = v461;
  sub_10002D1C0();

  v462 = [v433 localizedStringForLabel:CNLabelContactRelationSister];
  v463 = sub_10002DC20();
  v465 = v464;

  v1533 = v463;
  v1534 = v465;
  sub_10002D1C0();

  v466 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerSister];
  v467 = sub_10002DC20();
  v469 = v468;

  v1533 = v467;
  v1534 = v469;
  sub_10002D1C0();

  v470 = [v433 localizedStringForLabel:CNLabelContactRelationYoungestSister];
  v471 = sub_10002DC20();
  v473 = v472;

  v1533 = v471;
  v1534 = v473;
  sub_10002D1C0();

  v474 = [v433 localizedStringForLabel:CNLabelContactRelationElderSister];
  v475 = sub_10002DC20();
  v477 = v476;

  v1533 = v475;
  v1534 = v477;
  sub_10002D1C0();

  v478 = [v433 localizedStringForLabel:CNLabelContactRelationEldestSister];
  v479 = sub_10002DC20();
  v481 = v480;

  v1533 = v479;
  v1534 = v481;
  sub_10002D1C0();

  v482 = [v433 localizedStringForLabel:CNLabelContactRelationBrother];
  v483 = sub_10002DC20();
  v485 = v484;

  v1533 = v483;
  v1534 = v485;
  sub_10002D1C0();

  v486 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerBrother];
  v487 = sub_10002DC20();
  v489 = v488;

  v1533 = v487;
  v1534 = v489;
  sub_10002D1C0();

  v490 = [v433 localizedStringForLabel:CNLabelContactRelationYoungestBrother];
  v491 = sub_10002DC20();
  v493 = v492;

  v1533 = v491;
  v1534 = v493;
  sub_10002D1C0();

  v494 = [v433 localizedStringForLabel:CNLabelContactRelationElderBrother];
  v495 = sub_10002DC20();
  v497 = v496;

  v1533 = v495;
  v1534 = v497;
  sub_10002D1C0();

  v498 = [v433 localizedStringForLabel:CNLabelContactRelationEldestBrother];
  v499 = sub_10002DC20();
  v501 = v500;

  v1533 = v499;
  v1534 = v501;
  sub_10002D1C0();

  v502 = [v433 localizedStringForLabel:CNLabelContactRelationFriend];
  v503 = sub_10002DC20();
  v505 = v504;

  v1533 = v503;
  v1534 = v505;
  sub_10002D1C0();

  v506 = [v433 localizedStringForLabel:CNLabelContactRelationMaleFriend];
  v507 = sub_10002DC20();
  v509 = v508;

  v1533 = v507;
  v1534 = v509;
  sub_10002D1C0();

  v510 = [v433 localizedStringForLabel:CNLabelContactRelationFemaleFriend];
  v511 = sub_10002DC20();
  v513 = v512;

  v1533 = v511;
  v1534 = v513;
  sub_10002D1C0();

  v514 = [v433 localizedStringForLabel:CNLabelContactRelationSpouse];
  v515 = sub_10002DC20();
  v517 = v516;

  v1533 = v515;
  v1534 = v517;
  sub_10002D1C0();

  v518 = [v433 localizedStringForLabel:CNLabelContactRelationWife];
  v519 = sub_10002DC20();
  v521 = v520;

  v1533 = v519;
  v1534 = v521;
  sub_10002D1C0();

  v522 = [v433 localizedStringForLabel:CNLabelContactRelationHusband];
  v523 = sub_10002DC20();
  v525 = v524;

  v1533 = v523;
  v1534 = v525;
  sub_10002D1C0();

  v526 = [v433 localizedStringForLabel:CNLabelContactRelationPartner];
  v527 = sub_10002DC20();
  v529 = v528;

  v1533 = v527;
  v1534 = v529;
  sub_10002D1C0();

  v530 = [v433 localizedStringForLabel:CNLabelContactRelationMalePartner];
  v531 = sub_10002DC20();
  v533 = v532;

  v1533 = v531;
  v1534 = v533;
  sub_10002D1C0();

  v534 = [v433 localizedStringForLabel:CNLabelContactRelationFemalePartner];
  v535 = sub_10002DC20();
  v537 = v536;

  v1533 = v535;
  v1534 = v537;
  sub_10002D1C0();

  v538 = [v433 localizedStringForLabel:CNLabelContactRelationGirlfriendOrBoyfriend];
  v539 = sub_10002DC20();
  v541 = v540;

  v1533 = v539;
  v1534 = v541;
  sub_10002D1C0();

  v542 = [v433 localizedStringForLabel:CNLabelContactRelationGirlfriend];
  v543 = sub_10002DC20();
  v545 = v544;

  v1533 = v543;
  v1534 = v545;
  sub_10002D1C0();

  v546 = [v433 localizedStringForLabel:CNLabelContactRelationBoyfriend];
  v547 = sub_10002DC20();
  v549 = v548;

  v1533 = v547;
  v1534 = v549;
  sub_10002D1C0();

  v550 = [v433 localizedStringForLabel:CNLabelContactRelationParent];
  v551 = sub_10002DC20();
  v553 = v552;

  v1533 = v551;
  v1534 = v553;
  sub_10002D1C0();

  v554 = [v433 localizedStringForLabel:CNLabelContactRelationMother];
  v555 = sub_10002DC20();
  v557 = v556;

  v1533 = v555;
  v1534 = v557;
  sub_10002D1C0();

  v558 = [v433 localizedStringForLabel:CNLabelContactRelationFather];
  v559 = sub_10002DC20();
  v561 = v560;

  v1533 = v559;
  v1534 = v561;
  sub_10002D1C0();

  v562 = [v433 localizedStringForLabel:CNLabelContactRelationChild];
  v563 = sub_10002DC20();
  v565 = v564;

  v1533 = v563;
  v1534 = v565;
  sub_10002D1C0();

  v566 = [v433 localizedStringForLabel:CNLabelContactRelationDaughter];
  v567 = sub_10002DC20();
  v569 = v568;

  v1533 = v567;
  v1534 = v569;
  sub_10002D1C0();

  v570 = [v433 localizedStringForLabel:CNLabelContactRelationSon];
  v571 = sub_10002DC20();
  v573 = v572;

  v1533 = v571;
  v1534 = v573;
  sub_10002D1C0();

  v574 = [v433 localizedStringForLabel:CNLabelContactRelationGrandparent];
  v575 = sub_10002DC20();
  v577 = v576;

  v1533 = v575;
  v1534 = v577;
  sub_10002D1C0();

  v578 = [v433 localizedStringForLabel:CNLabelContactRelationGrandmother];
  v579 = sub_10002DC20();
  v581 = v580;

  v1533 = v579;
  v1534 = v581;
  sub_10002D1C0();

  v582 = [v433 localizedStringForLabel:CNLabelContactRelationGrandmotherMothersMother];
  v583 = sub_10002DC20();
  v585 = v584;

  v1533 = v583;
  v1534 = v585;
  sub_10002D1C0();

  v586 = [v433 localizedStringForLabel:CNLabelContactRelationGrandmotherFathersMother];
  v587 = sub_10002DC20();
  v589 = v588;

  v1533 = v587;
  v1534 = v589;
  sub_10002D1C0();

  v590 = [v433 localizedStringForLabel:CNLabelContactRelationGrandfather];
  v591 = sub_10002DC20();
  v593 = v592;

  v1533 = v591;
  v1534 = v593;
  sub_10002D1C0();

  v594 = [v433 localizedStringForLabel:CNLabelContactRelationGrandfatherMothersFather];
  v595 = sub_10002DC20();
  v597 = v596;

  v1533 = v595;
  v1534 = v597;
  sub_10002D1C0();

  v598 = [v433 localizedStringForLabel:CNLabelContactRelationGrandfatherFathersFather];
  v599 = sub_10002DC20();
  v601 = v600;

  v1533 = v599;
  v1534 = v601;
  sub_10002D1C0();

  v602 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandparent];
  v603 = sub_10002DC20();
  v605 = v604;

  v1533 = v603;
  v1534 = v605;
  sub_10002D1C0();

  v606 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandfather];
  v607 = sub_10002DC20();
  v609 = v608;

  v1533 = v607;
  v1534 = v609;
  sub_10002D1C0();

  v610 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandmother];
  v611 = sub_10002DC20();
  v613 = v612;

  v1533 = v611;
  v1534 = v613;
  sub_10002D1C0();

  v614 = [v433 localizedStringForLabel:CNLabelContactRelationGrandchild];
  v615 = sub_10002DC20();
  v617 = v616;

  v1533 = v615;
  v1534 = v617;
  sub_10002D1C0();

  v618 = [v433 localizedStringForLabel:CNLabelContactRelationGranddaughter];
  v619 = sub_10002DC20();
  v621 = v620;

  v1533 = v619;
  v1534 = v621;
  sub_10002D1C0();

  v622 = [v433 localizedStringForLabel:CNLabelContactRelationGranddaughterDaughtersDaughter];
  v623 = sub_10002DC20();
  v625 = v624;

  v1533 = v623;
  v1534 = v625;
  sub_10002D1C0();

  v626 = [v433 localizedStringForLabel:CNLabelContactRelationGranddaughterSonsDaughter];
  v627 = sub_10002DC20();
  v629 = v628;

  v1533 = v627;
  v1534 = v629;
  sub_10002D1C0();

  v630 = [v433 localizedStringForLabel:CNLabelContactRelationGrandson];
  v631 = sub_10002DC20();
  v633 = v632;

  v1533 = v631;
  v1534 = v633;
  sub_10002D1C0();

  v634 = [v433 localizedStringForLabel:CNLabelContactRelationGrandsonDaughtersSon];
  v635 = sub_10002DC20();
  v637 = v636;

  v1533 = v635;
  v1534 = v637;
  sub_10002D1C0();

  v638 = [v433 localizedStringForLabel:CNLabelContactRelationGrandsonSonsSon];
  v639 = sub_10002DC20();
  v641 = v640;

  v1533 = v639;
  v1534 = v641;
  sub_10002D1C0();

  v642 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandchild];
  v643 = sub_10002DC20();
  v645 = v644;

  v1533 = v643;
  v1534 = v645;
  sub_10002D1C0();

  v646 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandson];
  v647 = sub_10002DC20();
  v649 = v648;

  v1533 = v647;
  v1534 = v649;
  sub_10002D1C0();

  v650 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGranddaughter];
  v651 = sub_10002DC20();
  v653 = v652;

  v1533 = v651;
  v1534 = v653;
  sub_10002D1C0();

  v654 = [v433 localizedStringForLabel:CNLabelContactRelationParentInLaw];
  v655 = sub_10002DC20();
  v657 = v656;

  v1533 = v655;
  v1534 = v657;
  sub_10002D1C0();

  v658 = [v433 localizedStringForLabel:CNLabelContactRelationMotherInLaw];
  v659 = sub_10002DC20();
  v661 = v660;

  v1533 = v659;
  v1534 = v661;
  sub_10002D1C0();

  v662 = [v433 localizedStringForLabel:CNLabelContactRelationMotherInLawWifesMother];
  v663 = sub_10002DC20();
  v665 = v664;

  v1533 = v663;
  v1534 = v665;
  sub_10002D1C0();

  v666 = [v433 localizedStringForLabel:CNLabelContactRelationMotherInLawHusbandsMother];
  v667 = sub_10002DC20();
  v669 = v668;

  v1533 = v667;
  v1534 = v669;
  sub_10002D1C0();

  v670 = [v433 localizedStringForLabel:CNLabelContactRelationFatherInLaw];
  v671 = sub_10002DC20();
  v673 = v672;

  v1533 = v671;
  v1534 = v673;
  sub_10002D1C0();

  v674 = [v433 localizedStringForLabel:CNLabelContactRelationFatherInLawWifesFather];
  v675 = sub_10002DC20();
  v677 = v676;

  v1533 = v675;
  v1534 = v677;
  sub_10002D1C0();

  v678 = [v433 localizedStringForLabel:CNLabelContactRelationFatherInLawHusbandsFather];
  v679 = sub_10002DC20();
  v681 = v680;

  v1533 = v679;
  v1534 = v681;
  sub_10002D1C0();

  v682 = [v433 localizedStringForLabel:CNLabelContactRelationCoParentInLaw];
  v683 = sub_10002DC20();
  v685 = v684;

  v1533 = v683;
  v1534 = v685;
  sub_10002D1C0();

  v686 = [v433 localizedStringForLabel:CNLabelContactRelationCoMotherInLaw];
  v687 = sub_10002DC20();
  v689 = v688;

  v1533 = v687;
  v1534 = v689;
  sub_10002D1C0();

  v690 = [v433 localizedStringForLabel:CNLabelContactRelationCoFatherInLaw];
  v691 = sub_10002DC20();
  v693 = v692;

  v1533 = v691;
  v1534 = v693;
  sub_10002D1C0();

  v694 = [v433 localizedStringForLabel:CNLabelContactRelationSiblingInLaw];
  v695 = sub_10002DC20();
  v697 = v696;

  v1533 = v695;
  v1534 = v697;
  sub_10002D1C0();

  v698 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerSiblingInLaw];
  v699 = sub_10002DC20();
  v701 = v700;

  v1533 = v699;
  v1534 = v701;
  sub_10002D1C0();

  v702 = [v433 localizedStringForLabel:CNLabelContactRelationElderSiblingInLaw];
  v703 = sub_10002DC20();
  v705 = v704;

  v1533 = v703;
  v1534 = v705;
  sub_10002D1C0();

  v706 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLaw];
  v707 = sub_10002DC20();
  v709 = v708;

  v1533 = v707;
  v1534 = v709;
  sub_10002D1C0();

  v710 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerSisterInLaw];
  v711 = sub_10002DC20();
  v713 = v712;

  v1533 = v711;
  v1534 = v713;
  sub_10002D1C0();

  v714 = [v433 localizedStringForLabel:CNLabelContactRelationElderSisterInLaw];
  v715 = sub_10002DC20();
  v717 = v716;

  v1533 = v715;
  v1534 = v717;
  sub_10002D1C0();

  v718 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawSpousesSister];
  v719 = sub_10002DC20();
  v721 = v720;

  v1533 = v719;
  v1534 = v721;
  sub_10002D1C0();

  v722 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawWifesSister];
  v723 = sub_10002DC20();
  v725 = v724;

  v1533 = v723;
  v1534 = v725;
  sub_10002D1C0();

  v726 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawHusbandsSister];
  v727 = sub_10002DC20();
  v729 = v728;

  v1533 = v727;
  v1534 = v729;
  sub_10002D1C0();

  v730 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawBrothersWife];
  v731 = sub_10002DC20();
  v733 = v732;

  v1533 = v731;
  v1534 = v733;
  sub_10002D1C0();

  v734 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawYoungerBrothersWife];
  v735 = sub_10002DC20();
  v737 = v736;

  v1533 = v735;
  v1534 = v737;
  sub_10002D1C0();

  v738 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawElderBrothersWife];
  v739 = sub_10002DC20();
  v741 = v740;

  v1533 = v739;
  v1534 = v741;
  sub_10002D1C0();

  v742 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLaw];
  v743 = sub_10002DC20();
  v745 = v744;

  v1533 = v743;
  v1534 = v745;
  sub_10002D1C0();

  v746 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerBrotherInLaw];
  v747 = sub_10002DC20();
  v749 = v748;

  v1533 = v747;
  v1534 = v749;
  sub_10002D1C0();

  v750 = [v433 localizedStringForLabel:CNLabelContactRelationElderBrotherInLaw];
  v751 = sub_10002DC20();
  v753 = v752;

  v1533 = v751;
  v1534 = v753;
  sub_10002D1C0();

  v754 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawSpousesBrother];
  v755 = sub_10002DC20();
  v757 = v756;

  v1533 = v755;
  v1534 = v757;
  sub_10002D1C0();

  v758 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawHusbandsBrother];
  v759 = sub_10002DC20();
  v761 = v760;

  v1533 = v759;
  v1534 = v761;
  sub_10002D1C0();

  v762 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawWifesBrother];
  v763 = sub_10002DC20();
  v765 = v764;

  v1533 = v763;
  v1534 = v765;
  sub_10002D1C0();

  v766 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawSistersHusband];
  v767 = sub_10002DC20();
  v769 = v768;

  v1533 = v767;
  v1534 = v769;
  sub_10002D1C0();

  v770 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawYoungerSistersHusband];
  v771 = sub_10002DC20();
  v773 = v772;

  v1533 = v771;
  v1534 = v773;
  sub_10002D1C0();

  v774 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawElderSistersHusband];
  v775 = sub_10002DC20();
  v777 = v776;

  v1533 = v775;
  v1534 = v777;
  sub_10002D1C0();

  v778 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawWifesBrothersWife];
  v779 = sub_10002DC20();
  v781 = v780;

  v1533 = v779;
  v1534 = v781;
  sub_10002D1C0();

  v782 = [v433 localizedStringForLabel:CNLabelContactRelationSisterInLawHusbandsBrothersWife];
  v783 = sub_10002DC20();
  v785 = v784;

  v1533 = v783;
  v1534 = v785;
  sub_10002D1C0();

  v786 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawWifesSistersHusband];
  v787 = sub_10002DC20();
  v789 = v788;

  v1533 = v787;
  v1534 = v789;
  sub_10002D1C0();

  v790 = [v433 localizedStringForLabel:CNLabelContactRelationBrotherInLawHusbandsSistersHusband];
  v791 = sub_10002DC20();
  v793 = v792;

  v1533 = v791;
  v1534 = v793;
  sub_10002D1C0();

  v794 = [v433 localizedStringForLabel:CNLabelContactRelationCoSiblingInLaw];
  v795 = sub_10002DC20();
  v797 = v796;

  v1533 = v795;
  v1534 = v797;
  sub_10002D1C0();

  v798 = [v433 localizedStringForLabel:CNLabelContactRelationCoSisterInLaw];
  v799 = sub_10002DC20();
  v801 = v800;

  v1533 = v799;
  v1534 = v801;
  sub_10002D1C0();

  v802 = [v433 localizedStringForLabel:CNLabelContactRelationCoBrotherInLaw];
  v803 = sub_10002DC20();
  v805 = v804;

  v1533 = v803;
  v1534 = v805;
  sub_10002D1C0();

  v806 = [v433 localizedStringForLabel:CNLabelContactRelationChildInLaw];
  v807 = sub_10002DC20();
  v809 = v808;

  v1533 = v807;
  v1534 = v809;
  sub_10002D1C0();

  v810 = [v433 localizedStringForLabel:CNLabelContactRelationDaughterInLaw];
  v811 = sub_10002DC20();
  v813 = v812;

  v1533 = v811;
  v1534 = v813;
  sub_10002D1C0();

  v814 = [v433 localizedStringForLabel:CNLabelContactRelationSonInLaw];
  v815 = sub_10002DC20();
  v817 = v816;

  v1533 = v815;
  v1534 = v817;
  sub_10002D1C0();

  v818 = [v433 localizedStringForLabel:CNLabelContactRelationCousin];
  v819 = sub_10002DC20();
  v821 = v820;

  v1533 = v819;
  v1534 = v821;
  sub_10002D1C0();

  v822 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousin];
  v823 = sub_10002DC20();
  v825 = v824;

  v1533 = v823;
  v1534 = v825;
  sub_10002D1C0();

  v826 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousin];
  v827 = sub_10002DC20();
  v829 = v828;

  v1533 = v827;
  v1534 = v829;
  sub_10002D1C0();

  v830 = [v433 localizedStringForLabel:CNLabelContactRelationMaleCousin];
  v831 = sub_10002DC20();
  v833 = v832;

  v1533 = v831;
  v1534 = v833;
  sub_10002D1C0();

  v834 = [v433 localizedStringForLabel:CNLabelContactRelationFemaleCousin];
  v835 = sub_10002DC20();
  v837 = v836;

  v1533 = v835;
  v1534 = v837;
  sub_10002D1C0();

  v838 = [v433 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsChild];
  v839 = sub_10002DC20();
  v841 = v840;

  v1533 = v839;
  v1534 = v841;
  sub_10002D1C0();

  v842 = [v433 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsSon];
  v843 = sub_10002DC20();
  v845 = v844;

  v1533 = v843;
  v1534 = v845;
  sub_10002D1C0();

  v846 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinParentsSiblingsSon];
  v847 = sub_10002DC20();
  v849 = v848;

  v1533 = v847;
  v1534 = v849;
  v850 = v1316;
  sub_10002D1C0();

  v851 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinParentsSiblingsSon];
  v852 = sub_10002DC20();
  v854 = v853;

  v1533 = v852;
  v1534 = v854;
  sub_10002D1C0();

  v855 = [v433 localizedStringForLabel:CNLabelContactRelationCousinParentsSiblingsDaughter];
  v856 = sub_10002DC20();
  v858 = v857;

  v1533 = v856;
  v1534 = v858;
  sub_10002D1C0();

  v859 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinParentsSiblingsDaughter];
  v860 = sub_10002DC20();
  v862 = v861;

  v1533 = v860;
  v1534 = v862;
  sub_10002D1C0();

  v863 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinParentsSiblingsDaughter];
  v864 = sub_10002DC20();
  v866 = v865;

  v1533 = v864;
  v1534 = v866;
  sub_10002D1C0();

  v867 = [v433 localizedStringForLabel:CNLabelContactRelationCousinMothersSistersDaughter];
  v868 = sub_10002DC20();
  v870 = v869;

  v1533 = v868;
  v1534 = v870;
  sub_10002D1C0();

  v871 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSistersDaughter];
  v872 = sub_10002DC20();
  v874 = v873;

  v1533 = v872;
  v1534 = v874;
  sub_10002D1C0();

  v875 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSistersDaughter];
  v876 = sub_10002DC20();
  v878 = v877;

  v1533 = v876;
  v1534 = v878;
  sub_10002D1C0();

  v879 = [v433 localizedStringForLabel:CNLabelContactRelationCousinMothersSistersSon];
  v880 = sub_10002DC20();
  v882 = v881;

  v1533 = v880;
  v1534 = v882;
  sub_10002D1C0();

  v883 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSistersSon];
  v884 = sub_10002DC20();
  v886 = v885;

  v1533 = v884;
  v1534 = v886;
  sub_10002D1C0();

  v887 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSistersSon];
  v888 = sub_10002DC20();
  v890 = v889;

  v1533 = v888;
  v1534 = v890;
  sub_10002D1C0();

  v891 = [v433 localizedStringForLabel:CNLabelContactRelationCousinMothersBrothersDaughter];
  v892 = sub_10002DC20();
  v894 = v893;

  v1533 = v892;
  v1534 = v894;
  sub_10002D1C0();

  v895 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersBrothersDaughter];
  v896 = sub_10002DC20();
  v898 = v897;

  v1533 = v896;
  v1534 = v898;
  sub_10002D1C0();

  v899 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersBrothersDaughter];
  v900 = sub_10002DC20();
  v902 = v901;

  v1533 = v900;
  v1534 = v902;
  sub_10002D1C0();

  v903 = [v433 localizedStringForLabel:CNLabelContactRelationCousinMothersBrothersSon];
  v904 = sub_10002DC20();
  v906 = v905;

  v1533 = v904;
  v1534 = v906;
  sub_10002D1C0();

  v907 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersBrothersSon];
  v908 = sub_10002DC20();
  v910 = v909;

  v1533 = v908;
  v1534 = v910;
  sub_10002D1C0();

  v911 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersBrothersSon];
  v912 = sub_10002DC20();
  v914 = v913;

  v1533 = v912;
  v1534 = v914;
  sub_10002D1C0();

  v915 = [v433 localizedStringForLabel:CNLabelContactRelationCousinFathersSistersDaughter];
  v916 = sub_10002DC20();
  v918 = v917;

  v1533 = v916;
  v1534 = v918;
  sub_10002D1C0();

  v919 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersSistersDaughter];
  v920 = sub_10002DC20();
  v922 = v921;

  v1533 = v920;
  v1534 = v922;
  sub_10002D1C0();

  v923 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinFathersSistersDaughter];
  v924 = sub_10002DC20();
  v926 = v925;

  v1533 = v924;
  v1534 = v926;
  sub_10002D1C0();

  v927 = [v433 localizedStringForLabel:CNLabelContactRelationCousinFathersSistersSon];
  v928 = sub_10002DC20();
  v930 = v929;

  v1533 = v928;
  v1534 = v930;
  sub_10002D1C0();

  v931 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersSistersSon];
  v932 = sub_10002DC20();
  v934 = v933;

  v1533 = v932;
  v1534 = v934;
  sub_10002D1C0();

  v935 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinFathersSistersSon];
  v936 = sub_10002DC20();
  v938 = v937;

  v1533 = v936;
  v1534 = v938;
  sub_10002D1C0();

  v939 = [v433 localizedStringForLabel:CNLabelContactRelationCousinFathersBrothersDaughter];
  v940 = sub_10002DC20();
  v942 = v941;

  v1533 = v940;
  v1534 = v942;
  sub_10002D1C0();

  v943 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersBrothersDaughter];
  v944 = sub_10002DC20();
  v946 = v945;

  v1533 = v944;
  v1534 = v946;
  sub_10002D1C0();

  v947 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinFathersBrothersDaughter];
  v948 = sub_10002DC20();
  v950 = v949;

  v1533 = v948;
  v1534 = v950;
  sub_10002D1C0();

  v951 = [v433 localizedStringForLabel:CNLabelContactRelationCousinFathersBrothersSon];
  v952 = sub_10002DC20();
  v954 = v953;

  v1533 = v952;
  v1534 = v954;
  sub_10002D1C0();

  v955 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinFathersBrothersSon];
  v956 = sub_10002DC20();
  v958 = v957;

  v1533 = v956;
  v1534 = v958;
  sub_10002D1C0();

  v959 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinFathersBrothersSon];
  v960 = sub_10002DC20();
  v962 = v961;

  v1533 = v960;
  v1534 = v962;
  sub_10002D1C0();

  v963 = [v433 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsChild];
  v964 = sub_10002DC20();
  v966 = v965;

  v1533 = v964;
  v1534 = v966;
  sub_10002D1C0();

  v967 = [v433 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsDaughter];
  v968 = sub_10002DC20();
  v970 = v969;

  v1533 = v968;
  v1534 = v970;
  sub_10002D1C0();

  v971 = [v433 localizedStringForLabel:CNLabelContactRelationCousinGrandparentsSiblingsSon];
  v972 = sub_10002DC20();
  v974 = v973;

  v1533 = v972;
  v1534 = v974;
  sub_10002D1C0();

  v975 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSiblingsSonOrFathersSistersSon];
  v976 = sub_10002DC20();
  v978 = v977;

  v1533 = v976;
  v1534 = v978;
  sub_10002D1C0();

  v979 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSiblingsSonOrFathersSistersSon];
  v980 = sub_10002DC20();
  v982 = v981;

  v1533 = v980;
  v1534 = v982;
  sub_10002D1C0();

  v983 = [v433 localizedStringForLabel:CNLabelContactRelationYoungerCousinMothersSiblingsDaughterOrFathersSistersDaughter];
  v984 = sub_10002DC20();
  v986 = v985;

  v1533 = v984;
  v1534 = v986;
  sub_10002D1C0();

  v987 = [v433 localizedStringForLabel:CNLabelContactRelationElderCousinMothersSiblingsDaughterOrFathersSistersDaughter];
  v988 = sub_10002DC20();
  v990 = v989;

  v1533 = v988;
  v1534 = v990;
  sub_10002D1C0();

  v991 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSibling];
  v992 = sub_10002DC20();
  v994 = v993;

  v1533 = v992;
  v1534 = v994;
  sub_10002D1C0();

  v995 = [v433 localizedStringForLabel:CNLabelContactRelationParentsYoungerSibling];
  v996 = sub_10002DC20();
  v998 = v997;

  v1533 = v996;
  v1534 = v998;
  sub_10002D1C0();

  v999 = [v433 localizedStringForLabel:CNLabelContactRelationParentsElderSibling];
  v1000 = sub_10002DC20();
  v1002 = v1001;

  v1533 = v1000;
  v1534 = v1002;
  sub_10002D1C0();

  v1003 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersSibling];
  v1004 = sub_10002DC20();
  v1006 = v1005;

  v1533 = v1004;
  v1534 = v1006;
  sub_10002D1C0();

  v1007 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersYoungerSibling];
  v1008 = sub_10002DC20();
  v1010 = v1009;

  v1533 = v1008;
  v1534 = v1010;
  sub_10002D1C0();

  v1011 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingMothersElderSibling];
  v1012 = sub_10002DC20();
  v1014 = v1013;

  v1533 = v1012;
  v1534 = v1014;
  sub_10002D1C0();

  v1015 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersSibling];
  v1016 = sub_10002DC20();
  v1018 = v1017;

  v1533 = v1016;
  v1534 = v1018;
  sub_10002D1C0();

  v1019 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersYoungerSibling];
  v1020 = sub_10002DC20();
  v1022 = v1021;

  v1533 = v1020;
  v1534 = v1022;
  sub_10002D1C0();

  v1023 = [v433 localizedStringForLabel:CNLabelContactRelationParentsSiblingFathersElderSibling];
  v1024 = sub_10002DC20();
  v1026 = v1025;

  v1533 = v1024;
  v1534 = v1026;
  sub_10002D1C0();

  v1027 = [v433 localizedStringForLabel:CNLabelContactRelationAunt];
  v1028 = sub_10002DC20();
  v1030 = v1029;

  v1533 = v1028;
  v1534 = v1030;
  sub_10002D1C0();

  v1031 = [v433 localizedStringForLabel:CNLabelContactRelationAuntParentsSister];
  v1032 = sub_10002DC20();
  v1034 = v1033;

  v1533 = v1032;
  v1534 = v1034;
  sub_10002D1C0();

  v1035 = [v433 localizedStringForLabel:CNLabelContactRelationAuntParentsYoungerSister];
  v1036 = sub_10002DC20();
  v1038 = v1037;

  v1533 = v1036;
  v1534 = v1038;
  sub_10002D1C0();

  v1039 = [v433 localizedStringForLabel:CNLabelContactRelationAuntParentsElderSister];
  v1040 = sub_10002DC20();
  v1042 = v1041;

  v1533 = v1040;
  v1534 = v1042;
  sub_10002D1C0();

  v1043 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersSister];
  v1044 = sub_10002DC20();
  v1046 = v1045;

  v1533 = v1044;
  v1534 = v1046;
  sub_10002D1C0();

  v1047 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersYoungerSister];
  v1048 = sub_10002DC20();
  v1050 = v1049;

  v1533 = v1048;
  v1534 = v1050;
  sub_10002D1C0();

  v1051 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersElderSister];
  v1052 = sub_10002DC20();
  v1054 = v1053;

  v1533 = v1052;
  v1534 = v1054;
  sub_10002D1C0();

  v1055 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersBrothersWife];
  v1056 = sub_10002DC20();
  v1058 = v1057;

  v1533 = v1056;
  v1534 = v1058;
  sub_10002D1C0();

  v1059 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersYoungerBrothersWife];
  v1060 = sub_10002DC20();
  v1062 = v1061;

  v1533 = v1060;
  v1534 = v1062;
  sub_10002D1C0();

  v1063 = [v433 localizedStringForLabel:CNLabelContactRelationAuntFathersElderBrothersWife];
  v1064 = sub_10002DC20();
  v1066 = v1065;

  v1533 = v1064;
  v1534 = v1066;
  sub_10002D1C0();

  v1067 = [v433 localizedStringForLabel:CNLabelContactRelationAuntMothersSister];
  v1068 = sub_10002DC20();
  v1070 = v1069;

  v1533 = v1068;
  v1534 = v1070;
  sub_10002D1C0();

  v1071 = [v433 localizedStringForLabel:CNLabelContactRelationAuntMothersYoungerSister];
  v1072 = sub_10002DC20();
  v1074 = v1073;

  v1533 = v1072;
  v1534 = v1074;
  sub_10002D1C0();

  v1075 = [v433 localizedStringForLabel:CNLabelContactRelationAuntMothersElderSister];
  v1076 = sub_10002DC20();
  v1078 = v1077;

  v1533 = v1076;
  v1534 = v1078;
  sub_10002D1C0();

  v1079 = [v433 localizedStringForLabel:CNLabelContactRelationAuntMothersBrothersWife];
  v1080 = sub_10002DC20();
  v1082 = v1081;

  v1533 = v1080;
  v1534 = v1082;
  sub_10002D1C0();

  v1083 = [v433 localizedStringForLabel:CNLabelContactRelationGrandaunt];
  v1084 = sub_10002DC20();
  v1086 = v1085;

  v1533 = v1084;
  v1534 = v1086;
  sub_10002D1C0();

  v1087 = [v433 localizedStringForLabel:CNLabelContactRelationUncle];
  v1088 = sub_10002DC20();
  v1090 = v1089;

  v1533 = v1088;
  v1534 = v1090;
  sub_10002D1C0();

  v1091 = [v433 localizedStringForLabel:CNLabelContactRelationUncleParentsBrother];
  v1092 = sub_10002DC20();
  v1094 = v1093;

  v1533 = v1092;
  v1534 = v1094;
  sub_10002D1C0();

  v1095 = [v433 localizedStringForLabel:CNLabelContactRelationUncleParentsYoungerBrother];
  v1096 = sub_10002DC20();
  v1098 = v1097;

  v1533 = v1096;
  v1534 = v1098;
  sub_10002D1C0();

  v1099 = [v433 localizedStringForLabel:CNLabelContactRelationUncleParentsElderBrother];
  v1100 = sub_10002DC20();
  v1102 = v1101;

  v1533 = v1100;
  v1534 = v1102;
  sub_10002D1C0();

  v1103 = [v433 localizedStringForLabel:CNLabelContactRelationUncleMothersBrother];
  v1104 = sub_10002DC20();
  v1106 = v1105;

  v1533 = v1104;
  v1534 = v1106;
  sub_10002D1C0();

  v1107 = [v433 localizedStringForLabel:CNLabelContactRelationUncleMothersYoungerBrother];
  v1108 = sub_10002DC20();
  v1110 = v1109;

  v1533 = v1108;
  v1534 = v1110;
  sub_10002D1C0();

  v1111 = [v433 localizedStringForLabel:CNLabelContactRelationUncleMothersElderBrother];
  v1112 = sub_10002DC20();
  v1114 = v1113;

  v1533 = v1112;
  v1534 = v1114;
  sub_10002D1C0();

  v1115 = [v433 localizedStringForLabel:CNLabelContactRelationUncleMothersSistersHusband];
  v1116 = sub_10002DC20();
  v1118 = v1117;

  v1533 = v1116;
  v1534 = v1118;
  sub_10002D1C0();

  v1119 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersBrother];
  v1120 = sub_10002DC20();
  v1122 = v1121;

  v1533 = v1120;
  v1534 = v1122;
  sub_10002D1C0();

  v1123 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersYoungerBrother];
  v1124 = sub_10002DC20();
  v1126 = v1125;

  v1533 = v1124;
  v1534 = v1126;
  sub_10002D1C0();

  v1127 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersElderBrother];
  v1128 = sub_10002DC20();
  v1130 = v1129;

  v1533 = v1128;
  v1534 = v1130;
  sub_10002D1C0();

  v1131 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersSistersHusband];
  v1132 = sub_10002DC20();
  v1134 = v1133;

  v1533 = v1132;
  v1534 = v1134;
  sub_10002D1C0();

  v1135 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersYoungerSistersHusband];
  v1136 = sub_10002DC20();
  v1138 = v1137;

  v1533 = v1136;
  v1534 = v1138;
  sub_10002D1C0();

  v1139 = [v433 localizedStringForLabel:CNLabelContactRelationUncleFathersElderSistersHusband];
  v1140 = sub_10002DC20();
  v1142 = v1141;

  v1533 = v1140;
  v1534 = v1142;
  sub_10002D1C0();

  v1143 = [v433 localizedStringForLabel:CNLabelContactRelationGranduncle];
  v1144 = sub_10002DC20();
  v1146 = v1145;

  v1533 = v1144;
  v1534 = v1146;
  sub_10002D1C0();

  v1147 = [v433 localizedStringForLabel:CNLabelContactRelationSiblingsChild];
  v1148 = sub_10002DC20();
  v1150 = v1149;

  v1533 = v1148;
  v1534 = v1150;
  sub_10002D1C0();

  v1151 = [v433 localizedStringForLabel:CNLabelContactRelationNiece];
  v1152 = sub_10002DC20();
  v1154 = v1153;

  v1533 = v1152;
  v1534 = v1154;
  sub_10002D1C0();

  v1155 = [v433 localizedStringForLabel:CNLabelContactRelationNieceSistersDaughter];
  v1156 = sub_10002DC20();
  v1158 = v1157;

  v1533 = v1156;
  v1534 = v1158;
  sub_10002D1C0();

  v1159 = [v433 localizedStringForLabel:CNLabelContactRelationNieceBrothersDaughter];
  v1160 = sub_10002DC20();
  v1162 = v1161;

  v1533 = v1160;
  v1534 = v1162;
  sub_10002D1C0();

  v1163 = [v433 localizedStringForLabel:CNLabelContactRelationNieceSistersDaughterOrWifesSiblingsDaughter];
  v1164 = sub_10002DC20();
  v1166 = v1165;

  v1533 = v1164;
  v1534 = v1166;
  sub_10002D1C0();

  v1167 = [v433 localizedStringForLabel:CNLabelContactRelationNieceBrothersDaughterOrHusbandsSiblingsDaughter];
  v1168 = sub_10002DC20();
  v1170 = v1169;

  v1533 = v1168;
  v1534 = v1170;
  sub_10002D1C0();

  v1171 = [v433 localizedStringForLabel:CNLabelContactRelationNephew];
  v1172 = sub_10002DC20();
  v1174 = v1173;

  v1533 = v1172;
  v1534 = v1174;
  sub_10002D1C0();

  v1175 = [v433 localizedStringForLabel:CNLabelContactRelationNephewSistersSon];
  v1176 = sub_10002DC20();
  v1178 = v1177;

  v1533 = v1176;
  v1534 = v1178;
  sub_10002D1C0();

  v1179 = [v433 localizedStringForLabel:CNLabelContactRelationNephewBrothersSon];
  v1180 = sub_10002DC20();
  v1182 = v1181;

  v1533 = v1180;
  v1534 = v1182;
  sub_10002D1C0();

  v1183 = [v433 localizedStringForLabel:CNLabelContactRelationNephewBrothersSonOrHusbandsSiblingsSon];
  v1184 = sub_10002DC20();
  v1186 = v1185;

  v1533 = v1184;
  v1534 = v1186;
  sub_10002D1C0();

  v1187 = [v433 localizedStringForLabel:CNLabelContactRelationNephewSistersSonOrWifesSiblingsSon];
  v1188 = sub_10002DC20();
  v1190 = v1189;

  v1533 = v1188;
  v1534 = v1190;
  sub_10002D1C0();

  v1191 = [v433 localizedStringForLabel:CNLabelContactRelationGrandniece];
  v1192 = sub_10002DC20();
  v1194 = v1193;

  v1533 = v1192;
  v1534 = v1194;
  sub_10002D1C0();

  v1195 = [v433 localizedStringForLabel:CNLabelContactRelationGrandnieceSistersGranddaughter];
  v1196 = sub_10002DC20();
  v1198 = v1197;

  v1533 = v1196;
  v1534 = v1198;
  sub_10002D1C0();

  v1199 = [v433 localizedStringForLabel:CNLabelContactRelationGrandnieceBrothersGranddaughter];
  v1200 = sub_10002DC20();
  v1202 = v1201;

  v1533 = v1200;
  v1534 = v1202;
  sub_10002D1C0();

  v1203 = [v433 localizedStringForLabel:CNLabelContactRelationGrandnephew];
  v1204 = sub_10002DC20();
  v1206 = v1205;

  v1533 = v1204;
  v1534 = v1206;
  sub_10002D1C0();

  v1207 = [v433 localizedStringForLabel:CNLabelContactRelationGrandnephewSistersGrandson];
  v1208 = sub_10002DC20();
  v1210 = v1209;

  v1533 = v1208;
  v1534 = v1210;
  sub_10002D1C0();

  v1211 = [v433 localizedStringForLabel:CNLabelContactRelationGrandnephewBrothersGrandson];
  v1212 = sub_10002DC20();
  v1214 = v1213;

  v1533 = v1212;
  v1534 = v1214;
  sub_10002D1C0();

  v1215 = [v433 localizedStringForLabel:CNLabelContactRelationStepparent];
  v1216 = sub_10002DC20();
  v1218 = v1217;

  v1533 = v1216;
  v1534 = v1218;
  sub_10002D1C0();

  v1219 = [v433 localizedStringForLabel:CNLabelContactRelationStepfather];
  v1220 = sub_10002DC20();
  v1222 = v1221;

  v1533 = v1220;
  v1534 = v1222;
  sub_10002D1C0();

  v1223 = [v433 localizedStringForLabel:CNLabelContactRelationStepmother];
  v1224 = sub_10002DC20();
  v1226 = v1225;

  v1533 = v1224;
  v1534 = v1226;
  sub_10002D1C0();

  v1227 = [v433 localizedStringForLabel:CNLabelContactRelationStepchild];
  v1228 = sub_10002DC20();
  v1230 = v1229;

  v1533 = v1228;
  v1534 = v1230;
  sub_10002D1C0();

  v1231 = [v433 localizedStringForLabel:CNLabelContactRelationStepson];
  v1232 = sub_10002DC20();
  v1234 = v1233;

  v1533 = v1232;
  v1534 = v1234;
  sub_10002D1C0();

  v1235 = [v433 localizedStringForLabel:CNLabelContactRelationStepdaughter];
  v1236 = sub_10002DC20();
  v1238 = v1237;

  v1533 = v1236;
  v1534 = v1238;
  sub_10002D1C0();

  v1239 = [v433 localizedStringForLabel:CNLabelContactRelationStepbrother];
  v1240 = sub_10002DC20();
  v1242 = v1241;

  v1533 = v1240;
  v1534 = v1242;
  sub_10002D1C0();

  v1243 = [v433 localizedStringForLabel:CNLabelContactRelationStepsister];
  v1244 = sub_10002DC20();
  v1246 = v1245;

  v1533 = v1244;
  v1534 = v1246;
  sub_10002D1C0();

  v1247 = [v433 localizedStringForLabel:CNLabelContactRelationMotherInLawOrStepmother];
  v1248 = sub_10002DC20();
  v1250 = v1249;

  v1533 = v1248;
  v1534 = v1250;
  sub_10002D1C0();

  v1251 = [v433 localizedStringForLabel:CNLabelContactRelationFatherInLawOrStepfather];
  v1252 = sub_10002DC20();
  v1254 = v1253;

  v1533 = v1252;
  v1534 = v1254;
  sub_10002D1C0();

  v1255 = [v433 localizedStringForLabel:CNLabelContactRelationDaughterInLawOrStepdaughter];
  v1256 = sub_10002DC20();
  v1258 = v1257;

  v1533 = v1256;
  v1534 = v1258;
  sub_10002D1C0();

  v1259 = [v433 localizedStringForLabel:CNLabelContactRelationSonInLawOrStepson];
  v1260 = sub_10002DC20();
  v1262 = v1261;

  v1533 = v1260;
  v1534 = v1262;
  sub_10002D1C0();

  v1263 = [v433 localizedStringForLabel:CNLabelContactRelationCousinOrSiblingsChild];
  v1264 = sub_10002DC20();
  v1266 = v1265;

  v1533 = v1264;
  v1534 = v1266;
  sub_10002D1C0();

  v1267 = [v433 localizedStringForLabel:CNLabelContactRelationNieceOrCousin];
  v1268 = sub_10002DC20();
  v1270 = v1269;

  v1533 = v1268;
  v1534 = v1270;
  sub_10002D1C0();

  v1271 = [v433 localizedStringForLabel:CNLabelContactRelationNephewOrCousin];
  v1272 = sub_10002DC20();
  v1274 = v1273;

  v1533 = v1272;
  v1534 = v1274;
  sub_10002D1C0();

  v1275 = [v433 localizedStringForLabel:CNLabelContactRelationGrandchildOrSiblingsChild];
  v1276 = sub_10002DC20();
  v1278 = v1277;

  v1533 = v1276;
  v1534 = v1278;
  sub_10002D1C0();

  v1279 = [v433 localizedStringForLabel:CNLabelContactRelationGranddaughterOrNiece];
  v1280 = sub_10002DC20();
  v1282 = v1281;

  v1533 = v1280;
  v1534 = v1282;
  v1283 = v1317;
  sub_10002D1C0();

  v1284 = [v433 localizedStringForLabel:CNLabelContactRelationGrandsonOrNephew];
  v1285 = sub_10002DC20();
  v1287 = v1286;

  v1533 = v1285;
  v1534 = v1287;
  sub_10002D1C0();

  v1288 = [v433 localizedStringForLabel:CNLabelContactRelationGreatGrandchildOrSiblingsGrandchild];
  v1289 = sub_10002DC20();
  v1291 = v1290;

  v1533 = v1289;
  v1534 = v1291;
  sub_10002D1C0();

  v1292 = [v433 localizedStringForLabel:CNLabelContactRelationDaughterInLawOrSisterInLaw];
  v1293 = sub_10002DC20();
  v1295 = v1294;

  v1533 = v1293;
  v1534 = v1295;
  sub_10002D1C0();

  v1296 = [v433 localizedStringForLabel:CNLabelContactRelationSonInLawOrBrotherInLaw];
  v1297 = sub_10002DC20();
  v1299 = v1298;

  v1533 = v1297;
  v1534 = v1299;
  sub_10002D1C0();

  sub_100001A7C(&qword_10003C6F8, &qword_10002F2C8);
  v1300 = *(v1314 + 72);
  v1301 = v1318;
  v1302 = (*(v1318 + 80) + 32) & ~*(v1318 + 80);
  v1303 = swift_allocObject();
  v1315 = v1303;
  *(v1303 + 16) = xmmword_10002F0F0;
  v1304 = v1303 + v1302;
  v1305 = *(v1301 + 16);
  v1305(v1304, v1321, v0);
  v1305(v1304 + v1300, v1320, v0);
  v1305(v1304 + 2 * v1300, v1319, v0);
  v1305(v1304 + 3 * v1300, v1382, v0);
  v1305(v1304 + 4 * v1300, v1381, v0);
  v1305(v1304 + 5 * v1300, v1380, v0);
  v1305(v1304 + 6 * v1300, v1379, v0);
  v1305(v1304 + 7 * v1300, v1378, v0);
  v1305(v1304 + 8 * v1300, v1377, v0);
  v1305(v1304 + 9 * v1300, v1376, v0);
  v1305(v1304 + 10 * v1300, v1368, v0);
  v1305(v1304 + 11 * v1300, v1375, v0);
  v1305(v1304 + 12 * v1300, v1374, v0);
  v1305(v1304 + 13 * v1300, v1373, v0);
  v1305(v1304 + 14 * v1300, v1372, v0);
  v1305(v1304 + 15 * v1300, v1371, v0);
  v1305(v1304 + 16 * v1300, v1370, v0);
  v1305(v1304 + 17 * v1300, v1369, v0);
  v1305(v1304 + 18 * v1300, v1360, v0);
  v1305(v1304 + 19 * v1300, v1367, v0);
  v1305(v1304 + 20 * v1300, v1366, v0);
  v1305(v1304 + 21 * v1300, v1365, v0);
  v1305(v1304 + 22 * v1300, v1364, v0);
  v1305(v1304 + 23 * v1300, v1363, v0);
  v1305(v1304 + 24 * v1300, v1362, v0);
  v1305(v1304 + 25 * v1300, v1361, v0);
  v1305(v1304 + 26 * v1300, v1353, v0);
  v1305(v1304 + 27 * v1300, v1359, v0);
  v1305(v1304 + 28 * v1300, v1358, v0);
  v1305(v1304 + 29 * v1300, v1357, v0);
  v1305(v1304 + 30 * v1300, v1356, v0);
  v1305(v1304 + 31 * v1300, v1355, v0);
  v1305(v1304 + 32 * v1300, v1383, v0);
  v1305(v1304 + 33 * v1300, v1354, v0);
  v1305(v1304 + 34 * v1300, v1384, v0);
  v1305(v1304 + 35 * v1300, v1349, v0);
  v1305(v1304 + 36 * v1300, v1385, v0);
  v1305(v1304 + 37 * v1300, v1352, v0);
  v1305(v1304 + 38 * v1300, v1386, v0);
  v1305(v1304 + 39 * v1300, v1351, v0);
  v1305(v1304 + 40 * v1300, v1387, v0);
  v1305(v1304 + 41 * v1300, v1350, v0);
  v1305(v1304 + 42 * v1300, v1388, v0);
  v1305(v1304 + 43 * v1300, v1345, v0);
  v1305(v1304 + 44 * v1300, v1389, v0);
  v1305(v1304 + 45 * v1300, v1348, v0);
  v1305(v1304 + 46 * v1300, v1390, v0);
  v1305(v1304 + 47 * v1300, v1347, v0);
  v1305(v1304 + 48 * v1300, v1391, v0);
  v1305(v1304 + 49 * v1300, v1346, v0);
  v1305(v1304 + 50 * v1300, v1392, v0);
  v1305(v1304 + 51 * v1300, v1341, v0);
  v1305(v1304 + 52 * v1300, v1393, v0);
  v1305(v1304 + 53 * v1300, v1344, v0);
  v1305(v1304 + 54 * v1300, v1394, v0);
  v1305(v1304 + 55 * v1300, v1343, v0);
  v1305(v1304 + 56 * v1300, v1395, v0);
  v1305(v1304 + 57 * v1300, v1342, v0);
  v1305(v1304 + 58 * v1300, v1396, v0);
  v1305(v1304 + 59 * v1300, v1338, v0);
  v1305(v1304 + 60 * v1300, v1397, v0);
  v1305(v1304 + 61 * v1300, v1340, v0);
  v1305(v1304 + 62 * v1300, v1398, v0);
  v1305(v1304 + 63 * v1300, v1339, v0);
  v1305(v1304 + (v1300 << 6), v1399, v0);
  v1305(v1304 + 65 * v1300, v1400, v0);
  v1305(v1304 + 66 * v1300, v1335, v0);
  v1305(v1304 + 67 * v1300, v1401, v0);
  v1305(v1304 + 68 * v1300, v1402, v0);
  v1305(v1304 + 69 * v1300, v1337, v0);
  v1305(v1304 + 70 * v1300, v1403, v0);
  v1305(v1304 + 71 * v1300, v1404, v0);
  v1305(v1304 + 72 * v1300, v1336, v0);
  v1305(v1304 + 73 * v1300, v1405, v0);
  v1305(v1304 + 74 * v1300, v1406, v0);
  v1305(v1304 + 75 * v1300, v1332, v0);
  v1305(v1304 + 76 * v1300, v1407, v0);
  v1305(v1304 + 77 * v1300, v1408, v0);
  v1305(v1304 + 78 * v1300, v1334, v0);
  v1305(v1304 + 79 * v1300, v1409, v0);
  v1305(v1304 + 80 * v1300, v1410, v0);
  v1305(v1304 + 81 * v1300, v1333, v0);
  v1305(v1304 + 82 * v1300, v1411, v0);
  v1305(v1304 + 83 * v1300, v1412, v0);
  v1305(v1304 + 84 * v1300, v1330, v0);
  v1305(v1304 + 85 * v1300, v1413, v0);
  v1305(v1304 + 86 * v1300, v1414, v0);
  v1305(v1304 + 87 * v1300, v1331, v0);
  v1305(v1304 + 88 * v1300, v1415, v0);
  v1305(v1304 + 89 * v1300, v1416, v0);
  v1305(v1304 + 90 * v1300, v1328, v0);
  v1305(v1304 + 91 * v1300, v1417, v0);
  v1305(v1304 + 92 * v1300, v1418, v0);
  v1305(v1304 + 93 * v1300, v1329, v0);
  v1305(v1304 + 94 * v1300, v1419, v0);
  v1305(v1304 + 95 * v1300, v1420, v0);
  v1305(v1304 + 96 * v1300, v1326, v0);
  v1305(v1304 + 97 * v1300, v1421, v0);
  v1305(v1304 + 98 * v1300, v1422, v0);
  v1305(v1304 + 99 * v1300, v1327, v0);
  v1305(v1304 + 100 * v1300, v1423, v0);
  v1305(v1304 + 101 * v1300, v1424, v0);
  v1305(v1304 + 102 * v1300, v1425, v0);
  v1305(v1304 + 103 * v1300, v850, v0);
  v1305(v1304 + 104 * v1300, v1426, v0);
  v1305(v1304 + 105 * v1300, v1427, v0);
  v1305(v1304 + 106 * v1300, v1428, v0);
  v1305(v1304 + 107 * v1300, v1429, v0);
  v1305(v1304 + 108 * v1300, v1430, v0);
  v1305(v1304 + 109 * v1300, v1431, v0);
  v1305(v1304 + 110 * v1300, v1432, v0);
  v1305(v1304 + 111 * v1300, v1433, v0);
  v1305(v1304 + 112 * v1300, v1434, v0);
  v1305(v1304 + 113 * v1300, v1435, v0);
  v1305(v1304 + 114 * v1300, v1436, v0);
  v1305(v1304 + 115 * v1300, v1437, v0);
  v1305(v1304 + 116 * v1300, v1438, v0);
  v1305(v1304 + 117 * v1300, v1439, v0);
  v1305(v1304 + 118 * v1300, v1440, v0);
  v1305(v1304 + 119 * v1300, v1441, v0);
  v1305(v1304 + 120 * v1300, v1442, v0);
  v1305(v1304 + 121 * v1300, v1443, v0);
  v1305(v1304 + 122 * v1300, v1444, v0);
  v1305(v1304 + 123 * v1300, v1445, v0);
  v1305(v1304 + 124 * v1300, v1446, v0);
  v1305(v1304 + 125 * v1300, v1447, v0);
  v1305(v1304 + 126 * v1300, v1448, v0);
  v1305(v1304 + 127 * v1300, v1449, v0);
  v1305(v1304 + (v1300 << 7), v1450, v0);
  v1305(v1304 + 129 * v1300, v1451, v0);
  v1305(v1304 + 130 * v1300, v1452, v0);
  v1305(v1304 + 131 * v1300, v1453, v0);
  v1305(v1304 + 132 * v1300, v1454, v0);
  v1305(v1304 + 133 * v1300, v1455, v0);
  v1305(v1304 + 134 * v1300, v1456, v0);
  v1305(v1304 + 135 * v1300, v1457, v0);
  v1305(v1304 + 136 * v1300, v1458, v0);
  v1305(v1304 + 137 * v1300, v1459, v0);
  v1305(v1304 + 138 * v1300, v1460, v0);
  v1305(v1304 + 139 * v1300, v1461, v0);
  v1305(v1304 + 140 * v1300, v1462, v0);
  v1305(v1304 + 141 * v1300, v1463, v0);
  v1305(v1304 + 142 * v1300, v1464, v0);
  v1305(v1304 + 143 * v1300, v1465, v0);
  v1305(v1304 + 144 * v1300, v1466, v0);
  v1305(v1304 + 145 * v1300, v1467, v0);
  v1305(v1304 + 146 * v1300, v1468, v0);
  v1305(v1304 + 147 * v1300, v1469, v0);
  v1305(v1304 + 148 * v1300, v1470, v0);
  v1305(v1304 + 149 * v1300, v1471, v0);
  v1305(v1304 + 150 * v1300, v1472, v0);
  v1305(v1304 + 151 * v1300, v1473, v0);
  v1305(v1304 + 152 * v1300, v1474, v0);
  v1305(v1304 + 153 * v1300, v1475, v0);
  v1305(v1304 + 154 * v1300, v1476, v0);
  v1305(v1304 + 155 * v1300, v1477, v0);
  v1305(v1304 + 156 * v1300, v1478, v0);
  v1305(v1304 + 157 * v1300, v1479, v0);
  v1305(v1304 + 158 * v1300, v1480, v0);
  v1305(v1304 + 159 * v1300, v1481, v0);
  v1305(v1304 + 160 * v1300, v1482, v0);
  v1305(v1304 + 161 * v1300, v1483, v0);
  v1305(v1304 + 162 * v1300, v1484, v0);
  v1305(v1304 + 163 * v1300, v1485, v0);
  v1305(v1304 + 164 * v1300, v1486, v0);
  v1305(v1304 + 165 * v1300, v1487, v0);
  v1305(v1304 + 166 * v1300, v1488, v0);
  v1305(v1304 + 167 * v1300, v1489, v0);
  v1305(v1304 + 168 * v1300, v1490, v0);
  v1305(v1304 + 169 * v1300, v1491, v0);
  v1305(v1304 + 170 * v1300, v1492, v0);
  v1305(v1304 + 171 * v1300, v1493, v0);
  v1305(v1304 + 172 * v1300, v1494, v0);
  v1305(v1304 + 173 * v1300, v1495, v0);
  v1305(v1304 + 174 * v1300, v1496, v0);
  v1305(v1304 + 175 * v1300, v1497, v0);
  v1305(v1304 + 176 * v1300, v1498, v0);
  v1305(v1304 + 177 * v1300, v1499, v0);
  v1305(v1304 + 178 * v1300, v1500, v0);
  v1305(v1304 + 179 * v1300, v1501, v0);
  v1305(v1304 + 180 * v1300, v1502, v0);
  v1305(v1304 + 181 * v1300, v1503, v0);
  v1305(v1304 + 182 * v1300, v1504, v0);
  v1305(v1304 + 183 * v1300, v1505, v0);
  v1305(v1304 + 184 * v1300, v1506, v0);
  v1305(v1304 + 185 * v1300, v1507, v0);
  v1305(v1304 + 186 * v1300, v1508, v0);
  v1305(v1304 + 187 * v1300, v1509, v0);
  v1305(v1304 + 188 * v1300, v1510, v0);
  v1305(v1304 + 189 * v1300, v1511, v0);
  v1305(v1304 + 190 * v1300, v1512, v0);
  v1305(v1304 + 191 * v1300, v1513, v0);
  v1305(v1304 + 192 * v1300, v1514, v0);
  v1305(v1304 + 193 * v1300, v1515, v0);
  v1305(v1304 + 194 * v1300, v1516, v0);
  v1305(v1304 + 195 * v1300, v1517, v0);
  v1305(v1304 + 196 * v1300, v1518, v0);
  v1305(v1304 + 197 * v1300, v1519, v0);
  v1305(v1304 + 198 * v1300, v1520, v0);
  v1305(v1304 + 199 * v1300, v1521, v0);
  v1305(v1304 + 200 * v1300, v1522, v0);
  v1305(v1304 + 201 * v1300, v1523, v0);
  v1305(v1304 + 202 * v1300, v1524, v0);
  v1305(v1304 + 203 * v1300, v1525, v0);
  v1305(v1304 + 204 * v1300, v1526, v0);
  v1305(v1304 + 205 * v1300, v1527, v0);
  v1305(v1304 + 206 * v1300, v1528, v0);
  v1305(v1304 + 207 * v1300, v1529, v0);
  v1305(v1304 + 208 * v1300, v1530, v0);
  v1305(v1304 + 209 * v1300, v1531, v0);
  v1305(v1304 + 210 * v1300, v1532, v0);
  v1305(v1304 + 211 * v1300, v1283, v0);
  v1306 = v1322;
  v1305(v1304 + 212 * v1300, v1322, v0);
  v1307 = v1323;
  v1305(v1304 + 213 * v1300, v1323, v0);
  v1308 = v1324;
  v1305(v1304 + 214 * v1300, v1324, v0);
  v1309 = v1304 + 215 * v1300;
  v1310 = v1325;
  v1305(v1309, v1325, v0);
  v1311 = sub_10002D1B0();

  v1312 = *(v1318 + 8);
  v1312(v1310, v0);
  v1312(v1308, v0);
  v1312(v1307, v0);
  v1312(v1306, v0);
  v1312(v1317, v0);
  v1312(v1532, v0);
  v1312(v1531, v0);
  v1312(v1530, v0);
  v1312(v1529, v0);
  v1312(v1528, v0);
  v1312(v1527, v0);
  v1312(v1526, v0);
  v1312(v1525, v0);
  v1312(v1524, v0);
  v1312(v1523, v0);
  v1312(v1522, v0);
  v1312(v1521, v0);
  v1312(v1520, v0);
  v1312(v1519, v0);
  v1312(v1518, v0);
  v1312(v1517, v0);
  v1312(v1516, v0);
  v1312(v1515, v0);
  v1312(v1514, v0);
  v1312(v1513, v0);
  v1312(v1512, v0);
  v1312(v1511, v0);
  v1312(v1510, v0);
  v1312(v1509, v0);
  v1312(v1508, v0);
  v1312(v1507, v0);
  v1312(v1506, v0);
  v1312(v1505, v0);
  v1312(v1504, v0);
  v1312(v1503, v0);
  v1312(v1502, v0);
  v1312(v1501, v0);
  v1312(v1500, v0);
  v1312(v1499, v0);
  v1312(v1498, v0);
  v1312(v1497, v0);
  v1312(v1496, v0);
  v1312(v1495, v0);
  v1312(v1494, v0);
  v1312(v1493, v0);
  v1312(v1492, v0);
  v1312(v1491, v0);
  v1312(v1490, v0);
  v1312(v1489, v0);
  v1312(v1488, v0);
  v1312(v1487, v0);
  v1312(v1486, v0);
  v1312(v1485, v0);
  v1312(v1484, v0);
  v1312(v1483, v0);
  v1312(v1482, v0);
  v1312(v1481, v0);
  v1312(v1480, v0);
  v1312(v1479, v0);
  v1312(v1478, v0);
  v1312(v1477, v0);
  v1312(v1476, v0);
  v1312(v1475, v0);
  v1312(v1474, v0);
  v1312(v1473, v0);
  v1312(v1472, v0);
  v1312(v1471, v0);
  v1312(v1470, v0);
  v1312(v1469, v0);
  v1312(v1468, v0);
  v1312(v1467, v0);
  v1312(v1466, v0);
  v1312(v1465, v0);
  v1312(v1464, v0);
  v1312(v1463, v0);
  v1312(v1462, v0);
  v1312(v1461, v0);
  v1312(v1460, v0);
  v1312(v1459, v0);
  v1312(v1458, v0);
  v1312(v1457, v0);
  v1312(v1456, v0);
  v1312(v1455, v0);
  v1312(v1454, v0);
  v1312(v1453, v0);
  v1312(v1452, v0);
  v1312(v1451, v0);
  v1312(v1450, v0);
  v1312(v1449, v0);
  v1312(v1448, v0);
  v1312(v1447, v0);
  v1312(v1446, v0);
  v1312(v1445, v0);
  v1312(v1444, v0);
  v1312(v1443, v0);
  v1312(v1442, v0);
  v1312(v1441, v0);
  v1312(v1440, v0);
  v1312(v1439, v0);
  v1312(v1438, v0);
  v1312(v1437, v0);
  v1312(v1436, v0);
  v1312(v1435, v0);
  v1312(v1434, v0);
  v1312(v1433, v0);
  v1312(v1432, v0);
  v1312(v1431, v0);
  v1312(v1430, v0);
  v1312(v1429, v0);
  v1312(v1428, v0);
  v1312(v1427, v0);
  v1312(v1426, v0);
  v1312(v1316, v0);
  v1312(v1425, v0);
  v1312(v1424, v0);
  v1312(v1423, v0);
  v1312(v1327, v0);
  v1312(v1422, v0);
  v1312(v1421, v0);
  v1312(v1326, v0);
  v1312(v1420, v0);
  v1312(v1419, v0);
  v1312(v1329, v0);
  v1312(v1418, v0);
  v1312(v1417, v0);
  v1312(v1328, v0);
  v1312(v1416, v0);
  v1312(v1415, v0);
  v1312(v1331, v0);
  v1312(v1414, v0);
  v1312(v1413, v0);
  v1312(v1330, v0);
  v1312(v1412, v0);
  v1312(v1411, v0);
  v1312(v1333, v0);
  v1312(v1410, v0);
  v1312(v1409, v0);
  v1312(v1334, v0);
  v1312(v1408, v0);
  v1312(v1407, v0);
  v1312(v1332, v0);
  v1312(v1406, v0);
  v1312(v1405, v0);
  v1312(v1336, v0);
  v1312(v1404, v0);
  v1312(v1403, v0);
  v1312(v1337, v0);
  v1312(v1402, v0);
  v1312(v1401, v0);
  v1312(v1335, v0);
  v1312(v1400, v0);
  v1312(v1399, v0);
  v1312(v1339, v0);
  v1312(v1398, v0);
  v1312(v1340, v0);
  v1312(v1397, v0);
  v1312(v1338, v0);
  v1312(v1396, v0);
  v1312(v1342, v0);
  v1312(v1395, v0);
  v1312(v1343, v0);
  v1312(v1394, v0);
  v1312(v1344, v0);
  v1312(v1393, v0);
  v1312(v1341, v0);
  v1312(v1392, v0);
  v1312(v1346, v0);
  v1312(v1391, v0);
  v1312(v1347, v0);
  v1312(v1390, v0);
  v1312(v1348, v0);
  v1312(v1389, v0);
  v1312(v1345, v0);
  v1312(v1388, v0);
  v1312(v1350, v0);
  v1312(v1387, v0);
  v1312(v1351, v0);
  v1312(v1386, v0);
  v1312(v1352, v0);
  v1312(v1385, v0);
  v1312(v1349, v0);
  v1312(v1384, v0);
  v1312(v1354, v0);
  v1312(v1383, v0);
  v1312(v1355, v0);
  v1312(v1356, v0);
  v1312(v1357, v0);
  v1312(v1358, v0);
  v1312(v1359, v0);
  v1312(v1353, v0);
  v1312(v1361, v0);
  v1312(v1362, v0);
  v1312(v1363, v0);
  v1312(v1364, v0);
  v1312(v1365, v0);
  v1312(v1366, v0);
  v1312(v1367, v0);
  v1312(v1360, v0);
  v1312(v1369, v0);
  v1312(v1370, v0);
  v1312(v1371, v0);
  v1312(v1372, v0);
  v1312(v1373, v0);
  v1312(v1374, v0);
  v1312(v1375, v0);
  v1312(v1368, v0);
  v1312(v1376, v0);
  v1312(v1377, v0);
  v1312(v1378, v0);
  v1312(v1379, v0);
  v1312(v1380, v0);
  v1312(v1381, v0);
  v1312(v1382, v0);
  v1312(v1319, v0);
  v1312(v1320, v0);
  v1312(v1321, v0);
  return v1311;
}

uint64_t sub_10001AFE0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10001DD98;

  return sub_100010564();
}

uint64_t sub_10001B078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001DD98;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t sub_10001B150(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002D900();

  return sub_1000040D4(a1, a2, v4);
}

uint64_t sub_10001B1AC(uint64_t a1, uint64_t a2)
{
  sub_10002D900();
  v3 = sub_10001E2D4();

  return sub_100001AC4(v3, a2, a2, v4);
}

char *sub_10001B20C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

uint64_t sub_10001B270(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  sub_10001E1FC();
  if (v9 < v8 || (v10 = (a4)(0), result = sub_100006D2C(v10), v5 + *(v12 + 72) * v4 <= a3))
  {
    a4(0);
    v14 = sub_10001DECC();

    return _swift_arrayInitWithTakeFrontToBack(v14);
  }

  else if (a3 != v5)
  {
    v13 = sub_10001DECC();

    return _swift_arrayInitWithTakeBackToFront(v13);
  }

  return result;
}

char *sub_10001B32C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

char *sub_10001B354(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[32 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

uint64_t sub_10001B388(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_10001E1FC();
  if (v11 < v10 || (v12 = sub_100001A7C(a4, a5), result = sub_100006D2C(v12), v6 + *(v14 + 72) * v5 <= a3))
  {
    sub_100001A7C(a4, a5);
    v16 = sub_10001DECC();

    return _swift_arrayInitWithTakeFrontToBack(v16);
  }

  else if (a3 != v6)
  {
    v15 = sub_10001DECC();

    return _swift_arrayInitWithTakeBackToFront(v15);
  }

  return result;
}

char *sub_10001B458(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_10001DDC4(a3, result);
  }

  return result;
}

uint64_t sub_10001B480(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10001B498(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001B4DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001A7C(&qword_10003C720, &qword_10002F308);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B54C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002DE40();
  sub_10002DC80();
  v6 = sub_10002DE50();

  return sub_10001B65C(a1, a2, v6);
}

unint64_t sub_10001B5C4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10002D930();
  sub_10000C618(&qword_10003C768, &type metadata accessor for DeviceUser);
  v5 = sub_10002DBD0();

  return sub_10001B710(a1, v5);
}

unint64_t sub_10001B65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002DE10() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_10001B710(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_10002D930();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_10000C618(&qword_10003C770, &type metadata accessor for DeviceUser);
    v10 = sub_10002DC00();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

BOOL sub_10001B8CC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_10002DE40();
  sub_10002DC80();
  v9 = sub_10002DE50();
  v10 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v7 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_10002DE10() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v9 = v11 + 1;
  }

  v17 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v3;

  sub_10001BC74(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v20;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

uint64_t sub_10001BA18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  result = sub_10002DD80();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_10001BDDC(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_10002DE40();
    sub_10002DC80();
    result = sub_10002DE50();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

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
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Int sub_10001BC74(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_10001BA18(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_10001BF98(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_10002DE40();
      sub_10002DC80();
      result = sub_10002DE50();
      v17 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v17;
        if (((*(v15 + 56 + (((result & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v17)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v18 = (*(v15 + 48) + 16 * a3);
        v19 = *v18 == v7 && v18[1] == a2;
        if (v19 || (sub_10002DE10() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_10001BE40();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_10002DE20();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_10001BDDC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10002F100;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_10001BE40()
{
  v1 = v0;
  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  v2 = *v0;
  v3 = sub_10002DD70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_10001BF98(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001A7C(&qword_10003C778, &qword_10002F358);
  result = sub_10002DD80();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = *(v6 + 40);
        sub_10002DE40();

        sub_10002DC80();
        result = sub_10002DE50();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v17;
        v28[1] = v18;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v29;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10001C1CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_10002D930();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100001A7C(&qword_10003C760, &qword_10002F338);
  v43 = a2;
  result = sub_10002DDE0();
  v14 = result;
  if (!*(v11 + 16))
  {
LABEL_34:

LABEL_35:
    *v3 = v14;
    return result;
  }

  v47 = v10;
  v39 = v3;
  v15 = 0;
  v16 = (v11 + 64);
  v17 = 1 << *(v11 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v11 + 64);
  v20 = (v17 + 63) >> 6;
  v40 = (v7 + 16);
  v41 = v11;
  v42 = v7;
  v44 = (v7 + 32);
  v21 = result + 64;
  if (!v19)
  {
LABEL_9:
    v23 = v15;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v15 >= v20)
      {
        break;
      }

      v24 = v16[v15];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v19 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_35;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      sub_10001BDDC(0, (v37 + 63) >> 6, v16);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
    goto LABEL_34;
  }

  while (1)
  {
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
LABEL_14:
    v25 = v22 | (v15 << 6);
    v26 = *(v11 + 48);
    v46 = *(v42 + 72);
    v27 = v26 + v46 * v25;
    if (v43)
    {
      (*v44)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    else
    {
      (*v40)(v47, v27, v6);
      v45 = *(*(v11 + 56) + 8 * v25);
    }

    v28 = *(v14 + 40);
    sub_10000C618(&qword_10003C768, &type metadata accessor for DeviceUser);
    result = sub_10002DBD0();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v21 + 8 * (v30 >> 6))) == 0)
    {
      break;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v21 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v21 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (*v44)(*(v14 + 48) + v46 * v32, v47, v6);
    *(*(v14 + 56) + 8 * v32) = v45;
    ++*(v14 + 16);
    v11 = v41;
    if (!v19)
    {
      goto LABEL_9;
    }
  }

  v33 = 0;
  v34 = (63 - v29) >> 6;
  while (++v31 != v34 || (v33 & 1) == 0)
  {
    v35 = v31 == v34;
    if (v31 == v34)
    {
      v31 = 0;
    }

    v33 |= v35;
    v36 = *(v21 + 8 * v31);
    if (v36 != -1)
    {
      v32 = __clz(__rbit64(~v36)) + (v31 << 6);
      goto LABEL_26;
    }
  }

LABEL_37:
  __break(1u);
  return result;
}

Swift::Int sub_10001C5A4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10001D9B4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_10001C718(v5);
  *a1 = v2;
  return result;
}

void *sub_10001C610(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_100023664(*(a1 + 16), 0);
  v4 = sub_10001D858(&v6, v3 + 4, v1, a1);

  sub_10001DA58();
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_10001C6CC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

Swift::Int sub_10001C718(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_10002DE00(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = sub_10002DCE0();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_10001C96C(v7, v8, a1, v4);
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
    return sub_10001C80C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10001C80C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 16 * a3);
    v6 = result - a3;
    while (2)
    {
      v19 = a3;
      v7 = (v4 + 16 * a3);
      v8 = *v7;
      v9 = v7[1];
      v17 = v6;
      v18 = v5;
      do
      {
        v10 = *(v5 - 2);
        if (v8 != 0x636976654420794DLL || v9 != 0xEA00000000007365)
        {
          v12 = *(v5 - 1);
          result = sub_10002DE10();
          if ((result & 1) == 0)
          {
            if (v10 == 0x636976654420794DLL && v12 == 0xEA00000000007365)
            {
              break;
            }

            result = sub_10002DE10();
            if (result)
            {
              break;
            }

            if (v8 == v10 && v9 == v12)
            {
              break;
            }

            result = sub_10002DE10();
            if ((result & 1) == 0)
            {
              break;
            }
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v8 = *v5;
        v9 = v5[1];
        *v5 = *(v5 - 1);
        *(v5 - 1) = v9;
        *(v5 - 2) = v8;
        v5 -= 2;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v19 + 1;
      v5 = v18 + 2;
      v6 = v17 - 1;
      if (v19 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_10001C96C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v121 = _swiftEmptyArrayStorage;
  v6 = a3[1];
  if (v6 < 1)
  {
    goto LABEL_142;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v112 = a4;
  do
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      goto LABEL_59;
    }

    v108 = v5;
    v11 = (*a3 + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*a3 + 16 * v7);
    v15 = *v11 == 0x636976654420794DLL && v13 == 0xEA00000000007365;
    v117 = v6;
    if (!v15)
    {
      v16 = v7;
      v17 = *v14;
      v18 = v14[1];
      if (sub_10002DE10())
      {
        v19 = 1;
      }

      else
      {
        if (v17 != 0x636976654420794DLL || v18 != 0xEA00000000007365)
        {
          v9 = v16;
          if ((sub_10002DE10() & 1) != 0 || (v12 == v17 ? (v21 = v13 == v18) : (v21 = 0), v21))
          {
            v19 = 0;
          }

          else
          {
            v19 = sub_10002DE10();
          }

          goto LABEL_24;
        }

        v19 = 0;
      }

      v9 = v16;
LABEL_24:
      v6 = v117;
      goto LABEL_25;
    }

    v19 = 1;
LABEL_25:
    v10 = v9 + 2;
    v110 = v9;
    v22 = 16 * v9;
    v23 = v14 + 5;
    while (v10 < v6)
    {
      v24 = *(v23 - 1);
      v25 = *v23;
      v26 = v24 == 0x636976654420794DLL && v25 == 0xEA00000000007365;
      if (v26 || (v27 = *(v23 - 3), v28 = *(v23 - 2), v29 = *(v23 - 1), v30 = *v23, v31 = sub_10002DE10(), v6 = v117, (v31 & 1) != 0))
      {
        if ((v19 & 1) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_47;
      }

      if (v27 != 0x636976654420794DLL || v28 != 0xEA00000000007365)
      {
        if ((sub_10002DE10() & 1) == 0 && (v24 != v27 || v25 != v28))
        {
          v34 = sub_10002DE10();
          v6 = v117;
          if ((v19 & 1) != (v34 & 1))
          {
            break;
          }

          goto LABEL_47;
        }

        v6 = v117;
      }

      if (v19)
      {
        goto LABEL_49;
      }

LABEL_47:
      ++v10;
      v23 += 2;
    }

    if ((v19 & 1) == 0)
    {
LABEL_57:
      a4 = v112;
      v5 = v108;
      goto LABEL_58;
    }

LABEL_49:
    v35 = v110;
    if (v10 < v110)
    {
      goto LABEL_165;
    }

    if (v110 >= v10)
    {
      a4 = v112;
      v5 = v108;
      v9 = v110;
    }

    else
    {
      v36 = 16 * v10;
      v37 = v10;
      v5 = v108;
      do
      {
        if (v35 != --v37)
        {
          v38 = *a3;
          if (!*a3)
          {
            goto LABEL_168;
          }

          v39 = (v38 + v22);
          v40 = v38 + v36;
          v41 = *v39;
          v42 = v39[1];
          *v39 = *(v40 - 16);
          *(v40 - 16) = v41;
          *(v40 - 8) = v42;
        }

        ++v35;
        v36 -= 16;
        v22 += 16;
      }

      while (v35 < v37);
      a4 = v112;
LABEL_58:
      v9 = v110;
    }

LABEL_59:
    v43 = a3[1];
    if (v10 < v43)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_162;
      }

      if (v10 - v9 < a4)
      {
        v44 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_163;
        }

        if (v44 >= v43)
        {
          v44 = a3[1];
        }

        if (v44 >= v9)
        {
          if (v10 != v44)
          {
            v107 = v8;
            v109 = v5;
            v45 = *a3;
            v46 = *a3 + 16 * v10;
            v111 = v9;
            v47 = v9 - v10;
            v114 = v44;
            do
            {
              v115 = v46;
              v118 = v10;
              v48 = (v45 + 16 * v10);
              v49 = *v48;
              v50 = v48[1];
              v51 = v47;
              v52 = v46;
              do
              {
                v53 = *(v52 - 2);
                if (v49 != 0x636976654420794DLL || v50 != 0xEA00000000007365)
                {
                  v55 = *(v52 - 1);
                  if ((sub_10002DE10() & 1) == 0)
                  {
                    v56 = v53 == 0x636976654420794DLL && v55 == 0xEA00000000007365;
                    if (v56 || (sub_10002DE10() & 1) != 0)
                    {
                      break;
                    }

                    v57 = v49 == v53 && v50 == v55;
                    if (v57 || (sub_10002DE10() & 1) == 0)
                    {
                      break;
                    }
                  }
                }

                if (!v45)
                {
                  goto LABEL_166;
                }

                v49 = *v52;
                v50 = v52[1];
                *v52 = *(v52 - 1);
                *(v52 - 1) = v50;
                *(v52 - 2) = v49;
                v52 -= 2;
              }

              while (!__CFADD__(v51++, 1));
              v10 = v118 + 1;
              v46 = v115 + 16;
              --v47;
            }

            while (v118 + 1 != v114);
            v10 = v114;
            v8 = v107;
            v5 = v109;
            v9 = v111;
          }

          goto LABEL_89;
        }

LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        __break(1u);
        return;
      }
    }

LABEL_89:
    if (v10 < v9)
    {
      goto LABEL_161;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v104 = v8[2];
      sub_100022FE4();
      v8 = v105;
    }

    v59 = v8[2];
    v60 = v59 + 1;
    if (v59 >= v8[3] >> 1)
    {
      sub_100022FE4();
      v8 = v106;
    }

    v8[2] = v60;
    v61 = v8 + 4;
    v62 = &v8[2 * v59 + 4];
    *v62 = v9;
    v62[1] = v10;
    v116 = *a1;
    if (!*a1)
    {
      goto LABEL_169;
    }

    v119 = v10;
    if (v59)
    {
      while (2)
      {
        v63 = v60 - 1;
        v64 = &v61[2 * v60 - 2];
        v65 = &v8[2 * v60];
        if (v60 >= 4)
        {
          v70 = &v61[2 * v60];
          v71 = *(v70 - 8);
          v72 = *(v70 - 7);
          v76 = __OFSUB__(v72, v71);
          v73 = v72 - v71;
          if (v76)
          {
            goto LABEL_149;
          }

          v75 = *(v70 - 6);
          v74 = *(v70 - 5);
          v76 = __OFSUB__(v74, v75);
          v68 = v74 - v75;
          v69 = v76;
          if (v76)
          {
            goto LABEL_150;
          }

          v77 = v65[1];
          v78 = v77 - *v65;
          if (__OFSUB__(v77, *v65))
          {
            goto LABEL_152;
          }

          v76 = __OFADD__(v68, v78);
          v79 = v68 + v78;
          if (v76)
          {
            goto LABEL_155;
          }

          if (v79 >= v73)
          {
            v93 = *v64;
            v92 = v64[1];
            v76 = __OFSUB__(v92, v93);
            v94 = v92 - v93;
            if (v76)
            {
              goto LABEL_160;
            }

            if (v68 < v94)
            {
              v63 = v60 - 2;
            }
          }

          else
          {
LABEL_109:
            if (v69)
            {
              goto LABEL_151;
            }

            v81 = *v65;
            v80 = v65[1];
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_154;
            }

            v85 = v64[1];
            v86 = v85 - *v64;
            if (__OFSUB__(v85, *v64))
            {
              goto LABEL_157;
            }

            if (__OFADD__(v83, v86))
            {
              goto LABEL_159;
            }

            if (v83 + v86 < v68)
            {
              goto LABEL_124;
            }

            if (v68 < v86)
            {
              v63 = v60 - 2;
            }
          }
        }

        else
        {
          if (v60 == 3)
          {
            v66 = v8[4];
            v67 = v8[5];
            v76 = __OFSUB__(v67, v66);
            v68 = v67 - v66;
            v69 = v76;
            goto LABEL_109;
          }

          if (v60 < 2)
          {
            goto LABEL_153;
          }

          v88 = *v65;
          v87 = v65[1];
          v76 = __OFSUB__(v87, v88);
          v83 = v87 - v88;
          v84 = v76;
LABEL_124:
          if (v84)
          {
            goto LABEL_156;
          }

          v90 = *v64;
          v89 = v64[1];
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_158;
          }

          if (v91 < v83)
          {
            break;
          }
        }

        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
          goto LABEL_164;
        }

        if (!*a3)
        {
          goto LABEL_167;
        }

        v95 = v8;
        v96 = &v61[2 * v63 - 2];
        v97 = *v96;
        v98 = v61;
        v99 = v63;
        v100 = &v61[2 * v63];
        v101 = v100[1];
        sub_10001D220((*a3 + 16 * *v96), (*a3 + 16 * *v100), (*a3 + 16 * v101), v116);
        if (v5)
        {
          goto LABEL_144;
        }

        if (v101 < v97)
        {
          goto LABEL_146;
        }

        v102 = v95[2];
        if (v99 > v102)
        {
          goto LABEL_147;
        }

        *v96 = v97;
        v96[1] = v101;
        if (v99 >= v102)
        {
          goto LABEL_148;
        }

        v103 = v99;
        v60 = v102 - 1;
        memmove(v100, v100 + 2, 16 * (v102 - 1 - v103));
        v8 = v95;
        v95[2] = v102 - 1;
        v61 = v98;
        if (v102 <= 2)
        {
          break;
        }

        continue;
      }
    }

    v7 = v119;
    v6 = a3[1];
    a4 = v112;
  }

  while (v119 < v6);
  v121 = v8;
LABEL_142:
  if (!*a1)
  {
    goto LABEL_170;
  }

  sub_10001D0F4(&v121, *a1, a3);
LABEL_144:
}

uint64_t sub_10001D0F4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_10001D5C0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_10001D220((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}