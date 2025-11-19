uint64_t sub_10001B430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000119A4;

  return sub_10001AE6C(a2, a3);
}

unint64_t sub_10001B4E4()
{
  result = qword_10003D638;
  if (!qword_10003D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D638);
  }

  return result;
}

unint64_t sub_10001B53C()
{
  result = qword_10003D640;
  if (!qword_10003D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D640);
  }

  return result;
}

unint64_t sub_10001B590()
{
  result = qword_10003D648;
  if (!qword_10003D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D648);
  }

  return result;
}

uint64_t sub_10001B5E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019900();
  *a1 = result;
  return result;
}

uint64_t sub_10001B60C()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000134D8;

  return sub_10001A7FC();
}

uint64_t sub_10001B6A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000134C0;

  return sub_10001B1E8(v3);
}

unint64_t sub_10001B744()
{
  result = qword_10003D650;
  if (!qword_10003D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D650);
  }

  return result;
}

unint64_t sub_10001B798()
{
  result = qword_10003D658;
  if (!qword_10003D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D658);
  }

  return result;
}

unint64_t sub_10001B7F0()
{
  result = qword_10003D660;
  if (!qword_10003D660)
  {
    sub_1000028A4(&qword_10003D668, qword_10002EEF0);
    sub_10001B798();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D660);
  }

  return result;
}

uint64_t sub_10001B874(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100018B8C();
  *v6 = v2;
  v6[1] = sub_10001B928;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10001B928()
{
  sub_100006164();
  sub_100013588();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000134EC();
  *v4 = v3;

  sub_100006100();

  return v5();
}

uint64_t sub_10001BA08(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001BA98;

  return sub_10001A72C();
}

uint64_t sub_10001BA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100013588();
  v8 = *(v7 + 24);
  v9 = *(v7 + 16);
  v10 = *v3;
  sub_1000134EC();
  *v11 = v10;

  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  sub_100006100();

  return v12();
}

uint64_t sub_10001BBB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100019B00();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_10001BBE0()
{
  result = qword_10003D670;
  if (!qword_10003D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D670);
  }

  return result;
}

unint64_t sub_10001BC38()
{
  result = qword_10003D678;
  if (!qword_10003D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D678);
  }

  return result;
}

unint64_t sub_10001BC90()
{
  result = qword_10003D680;
  if (!qword_10003D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D680);
  }

  return result;
}

uint64_t sub_10001BCE8@<X0>(void *a1@<X8>)
{
  if (qword_10003C910 != -1)
  {
    swift_once();
  }

  *a1 = qword_100041538;
}

unint64_t sub_10001BD58()
{
  result = qword_10003D688;
  if (!qword_10003D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D688);
  }

  return result;
}

unint64_t sub_10001BDB0()
{
  result = qword_10003D690;
  if (!qword_10003D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D690);
  }

  return result;
}

unint64_t sub_10001BE0C()
{
  result = qword_10003D698;
  if (!qword_10003D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D698);
  }

  return result;
}

uint64_t sub_10001BE60@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_100018BE0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_10001BE8C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C908 != -1)
  {
    swift_once();
  }

  v2 = sub_10002960C();
  v3 = sub_10000FB6C(v2, qword_100041520);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001BF78(uint64_t a1)
{
  v2 = sub_10001B590();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10001BFC8()
{
  result = qword_10003D6B0;
  if (!qword_10003D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6B0);
  }

  return result;
}

void sub_10001C01C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_100019588();
}

uint64_t sub_10001C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_10001B928;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_10001C0E8(uint64_t a1)
{
  v2 = sub_10001BE0C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_10001C134(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001C148(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10001C188(uint64_t result, int a2, int a3)
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

uint64_t sub_10001C1E0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10001C1F0(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v8 = a1 == a5 && a2 == a6;
  if (v8 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_10002A30C() & 1;
  }
}

uint64_t sub_10001C258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001C2C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10001C330(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026A4(a2, a3);
  sub_10001C6C4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10001C384(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

__n128 sub_10001C3A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10001C3B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_10001C3F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_10001C454()
{
  result = qword_10003D6D8;
  if (!qword_10003D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6D8);
  }

  return result;
}

uint64_t sub_10001C4A8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_10001C530(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
        JUMPOUT(0x10001C5FCLL);
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10001C640()
{
  result = qword_10003D6E0;
  if (!qword_10003D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D6E0);
  }

  return result;
}

uint64_t sub_10001C7D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    v9 = a1 + *(a3 + 20);

    return sub_100002984(v9, a2, v8);
  }
}

void *sub_10001C87C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    v8 = v5 + *(a4 + 20);

    return sub_1000026EC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunShortcutComplicationView()
{
  result = qword_10003D740;
  if (!qword_10003D740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001C954()
{
  sub_100002AD0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10001CA10(uint64_t a1)
{
  v3 = sub_10002997C();
  v4 = sub_1000028EC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000ECC8();
  (*(v7 + 16))(v1, a1);
  return sub_100029A1C();
}

uint64_t sub_10001CABC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000ECC8();
  v10 = sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  v11 = sub_10000350C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v22 - v14);
  v16 = type metadata accessor for RunShortcutComplicationView();
  sub_1000033E4(v1 + *(v16 + 20), v15, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_100029F4C();
    sub_10000350C(v17);
    return (*(v18 + 32))(a1, v15);
  }

  else
  {
    v20 = *v15;
    sub_10002A1FC();
    v21 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v2, v4);
  }
}

uint64_t sub_10001CC98()
{
  v1 = sub_1000026A4(&qword_10003D778, &qword_10002F4F0);
  v2 = sub_10000350C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  sub_10001CD94(v0, &v9 - v5);
  v7 = *(v0 + 8);
  sub_10002933C();
  sub_10001DA84();
  sub_100005F34();
  sub_100029D5C();

  return sub_10000338C(v6, &qword_10003D778, &qword_10002F4F0);
}

uint64_t sub_10001CD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v50 = sub_1000026A4(&qword_10003D7C8, &qword_10002F510);
  v3 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v5 = (&v43 - v4);
  v44 = sub_1000026A4(&qword_10003D7B0, &qword_10002F508);
  v6 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v8 = (&v43 - v7);
  v47 = sub_1000026A4(&qword_10003D7D0, &qword_10002F518);
  v9 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v43 - v10;
  v45 = sub_1000026A4(&qword_10003D7D8, &qword_10002F520);
  v11 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v13 = &v43 - v12;
  v49 = sub_1000026A4(&qword_10003D7A0, &qword_10002F500);
  v14 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v16 = &v43 - v15;
  v17 = type metadata accessor for RunShortcutRectangularWidgetView();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_100029F4C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001CABC(v25);
  v26 = (*(v22 + 88))(v25, v21);
  if (v26 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    v27 = *(a1 + 16);
    v53 = *a1;
    v54 = v27;
    v55 = *(a1 + 32);
    v56 = *(a1 + 48);
    v28 = sub_100010144();
    KeyPath = swift_getKeyPath();
    v30 = type metadata accessor for ComplicationWorkflowIcon();
    *(v8 + *(v30 + 20)) = KeyPath;
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    *(v8 + *(v30 + 24)) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
    swift_storeEnumTagMultiPayload();
    *v8 = v28;
    v31 = *(v44 + 36);
    *(v8 + v31) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    sub_1000033E4(v8, v13, &qword_10003D7B0, &qword_10002F508);
    swift_storeEnumTagMultiPayload();
    sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView);
    sub_10001DC7C();
    sub_100029B6C();
    sub_1000033E4(v16, v46, &qword_10003D7A0, &qword_10002F500);
    swift_storeEnumTagMultiPayload();
    sub_10001DBC0();
    sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510);
    sub_100029B6C();
    sub_10000338C(v16, &qword_10003D7A0, &qword_10002F500);
    return sub_10000338C(v8, &qword_10003D7B0, &qword_10002F508);
  }

  else
  {
    v43 = v16;
    v33 = v46;
    if (v26 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v34 = *(a1 + 16);
      v53 = *a1;
      v54 = v34;
      v55 = *(a1 + 32);
      v56 = *(a1 + 48);
      v35 = sub_100010144();
      sub_10002933C();
      v36 = v51;
      v37 = v52;
      v38 = *(v17 + 28);
      *(v20 + v38) = swift_getKeyPath();
      sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
      swift_storeEnumTagMultiPayload();
      v39 = v20 + *(v17 + 32);
      *v39 = swift_getKeyPath();
      v39[8] = 0;
      *v20 = v35;
      v20[1] = v36;
      v20[2] = v37;
      v20[3] = 0;
      sub_10000C2C8(v20, v13);
      swift_storeEnumTagMultiPayload();
      sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView);
      sub_10001DC7C();
      v40 = v43;
      sub_100029B6C();
      sub_1000033E4(v40, v33, &qword_10003D7A0, &qword_10002F500);
      swift_storeEnumTagMultiPayload();
      sub_10001DBC0();
      sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510);
      sub_100029B6C();
      sub_10000338C(v40, &qword_10003D7A0, &qword_10002F500);
      return sub_10001DE08(v20);
    }

    else
    {
      *v5 = sub_100029E4C();
      v5[1] = v41;
      v42 = sub_1000026A4(&qword_10003D7E0, &qword_10002F528);
      sub_10001D524(a1, v5 + *(v42 + 44));
      sub_10001DD68(v5, v33);
      swift_storeEnumTagMultiPayload();
      sub_10001DBC0();
      sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510);
      sub_100029B6C();
      sub_10000338C(v5, &qword_10003D7C8, &qword_10002F510);
      return (*(v22 + 8))(v25, v21);
    }
  }
}

uint64_t sub_10001D524@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v3 = sub_1000026A4(&qword_10003D7E8, &qword_10002F600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v35 - v6;
  v41 = sub_1000026A4(&qword_10003D7F0, &qword_10002F608);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v41);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v35 - v11;
  v13 = sub_100029ECC();
  v38 = *(v13 - 8);
  v14 = v38;
  v15 = *(v38 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  v37 = &v35 - v19;
  sub_100029EBC();
  v21 = *(a1 + 16);
  v45[0] = *a1;
  v45[1] = v21;
  v45[2] = *(a1 + 32);
  v46 = *(a1 + 48);
  sub_10000AFDC(v45, v44);
  v44[0] = sub_100023BB4(v45);
  v44[1] = v22;
  v43 = a1;
  sub_1000026A4(&qword_10003D7B0, &qword_10002F508);
  sub_10001DC7C();
  sub_1000135A4();
  sub_100029E3C();
  sub_100005EEC(&qword_10003D7F8, &qword_10003D7E8, &qword_10002F600);
  sub_10001DE6C();
  v35 = v12;
  sub_100029D2C();
  (*(v4 + 8))(v7, v3);
  v23 = *(v14 + 16);
  v36 = v18;
  v24 = v20;
  v25 = v13;
  v23(v18, v24, v13);
  v27 = v39;
  v26 = v40;
  v28 = *(v39 + 16);
  v29 = v41;
  v28(v40, v12, v41);
  v30 = v42;
  v23(v42, v18, v25);
  v31 = sub_1000026A4(&qword_10003D808, &qword_10002F610);
  v28(&v30[*(v31 + 48)], v26, v29);
  v32 = *(v27 + 8);
  v32(v35, v29);
  v33 = *(v38 + 8);
  v33(v37, v25);
  v32(v26, v29);
  return (v33)(v36, v25);
}

uint64_t sub_10001D958@<X0>(__int128 *a1@<X0>, void *a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = *(a1 + 6);
  v3 = sub_100010144();
  KeyPath = swift_getKeyPath();
  v5 = type metadata accessor for ComplicationWorkflowIcon();
  *(a2 + *(v5 + 20)) = KeyPath;
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  swift_storeEnumTagMultiPayload();
  *(a2 + *(v5 + 24)) = swift_getKeyPath();
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  swift_storeEnumTagMultiPayload();
  *a2 = v3;
  v6 = *(sub_1000026A4(&qword_10003D7B0, &qword_10002F508) + 36);
  *(a2 + v6) = swift_getKeyPath();

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_10001DA84()
{
  result = qword_10003D780;
  if (!qword_10003D780)
  {
    sub_1000028A4(&qword_10003D778, &qword_10002F4F0);
    sub_10001DB08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D780);
  }

  return result;
}

unint64_t sub_10001DB08()
{
  result = qword_10003D788;
  if (!qword_10003D788)
  {
    sub_1000028A4(&qword_10003D790, &qword_10002F4F8);
    sub_10001DBC0();
    sub_100005EEC(&qword_10003D7C0, &qword_10003D7C8, &qword_10002F510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D788);
  }

  return result;
}

unint64_t sub_10001DBC0()
{
  result = qword_10003D798;
  if (!qword_10003D798)
  {
    sub_1000028A4(&qword_10003D7A0, &qword_10002F500);
    sub_10001DF80(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView);
    sub_10001DC7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D798);
  }

  return result;
}

unint64_t sub_10001DC7C()
{
  result = qword_10003D7A8;
  if (!qword_10003D7A8)
  {
    sub_1000028A4(&qword_10003D7B0, &qword_10002F508);
    sub_10001DF80(&qword_10003D7B8, type metadata accessor for ComplicationWorkflowIcon);
    sub_10001DF80(&qword_10003D180, type metadata accessor for ComplicationPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D7A8);
  }

  return result;
}

uint64_t sub_10001DD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003D7C8, &qword_10002F510);
  sub_10000350C(v4);
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10001DE08(uint64_t a1)
{
  v2 = type metadata accessor for RunShortcutRectangularWidgetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001DE6C()
{
  result = qword_10003D800;
  if (!qword_10003D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D800);
  }

  return result;
}

unint64_t sub_10001DEC4()
{
  result = qword_10003D810;
  if (!qword_10003D810)
  {
    sub_1000028A4(&qword_10003D818, &qword_10002F618);
    sub_10001DA84();
    sub_10001DF80(&qword_10003D820, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D810);
  }

  return result;
}

uint64_t sub_10001DF80(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10001DFC8()
{
  result = qword_10003D838;
  if (!qword_10003D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D838);
  }

  return result;
}

uint64_t sub_10001E020()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002988C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10002A0CC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000297AC();
  sub_10000FBA4(v9, qword_100041558);
  sub_10000FB6C(v9, qword_100041558);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10001E208()
{
  v0 = sub_1000295AC();
  v1 = sub_1000028EC(v0);
  v44 = v2;
  v45 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v43 = v6 - v5;
  v7 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v8 = sub_100002910(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v42 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  v15 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v16 = sub_100002910(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v42 - v19;
  v21 = sub_10002978C();
  v22 = sub_1000028EC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  __chkstk_darwin(v22);
  sub_100002900();
  v29 = v28 - v27;
  v30 = sub_10002988C();
  v31 = sub_100002910(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_100002900();
  v34 = sub_10002A0CC();
  v35 = sub_100002910(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_100002900();
  v38 = sub_1000297AC();
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002A05C();
  sub_10002987C();
  (*(v24 + 104))(v29, enum case for LocalizedStringResource.BundleDescription.main(_:), v21);
  sub_1000297BC();
  sub_10000FC08(v20);
  sub_10002931C();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0;
  sub_10000FC08(v14);
  sub_10000FC08(v42);
  (*(v44 + 104))(v43, enum case for InputConnectionBehavior.default(_:), v45);
  sub_10000FA50();
  v40 = sub_1000293EC();
  sub_1000026A4(&qword_10003D278, &qword_10002F7C0);
  sub_10002924C();
  v46 = 0u;
  v47 = 0u;
  *&v48 = 0;
  sub_10002923C();
  sub_1000291FC();
  return v40;
}

uint64_t sub_10001E608()
{
  v0 = qword_10003D828;

  return v0;
}

unint64_t sub_10001E644()
{
  result = qword_10003D840;
  if (!qword_10003D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D840);
  }

  return result;
}

unint64_t sub_10001E69C()
{
  result = qword_10003D848;
  if (!qword_10003D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D848);
  }

  return result;
}

uint64_t sub_10001E740@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C920 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041558);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10001E7E8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10001E95C();
  *v5 = v2;
  v5[1] = sub_10000F858;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10001E894@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001E208();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001E8BC(uint64_t a1)
{
  v2 = sub_10001E908();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10001E908()
{
  result = qword_10003D850;
  if (!qword_10003D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D850);
  }

  return result;
}

unint64_t sub_10001E95C()
{
  result = qword_10003D858;
  if (!qword_10003D858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D858);
  }

  return result;
}

uint64_t sub_10001E9C8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 20);
    }

    else
    {
      v9 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
      v10 = *(a3 + 24);
    }

    return sub_100002984(a1 + v10, a2, v9);
  }
}

void *sub_10001EAC0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 20);
    }

    else
    {
      v9 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
      v10 = *(a4 + 24);
    }

    return sub_1000026EC(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t type metadata accessor for ComplicationWorkflowIcon()
{
  result = qword_10003D8B8;
  if (!qword_10003D8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001EBEC()
{
  sub_10000B480();
  if (v0 <= 0x3F)
  {
    sub_10000CD6C(319, &qword_10003CA08, &type metadata accessor for WidgetFamily);
    if (v1 <= 0x3F)
    {
      sub_10000CD6C(319, &unk_10003D0D8, &type metadata accessor for WidgetRenderingMode);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10001ECDC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000ECC8();
  v10 = sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  v11 = sub_10000350C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_100020AE0();
  sub_100020B00(*(v14 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100029F4C();
    sub_10000350C(v15);
    return (*(v16 + 32))(a1, v2);
  }

  else
  {
    v18 = *v2;
    sub_10002A1FC();
    v19 = sub_100029C3C();
    sub_100020AC0();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v1, v4);
  }
}

uint64_t sub_10001EE88@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000ECC8();
  v10 = sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  v11 = sub_10000350C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = sub_100020AE0();
  sub_100020B00(*(v14 + 24));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100029F0C();
    sub_10000350C(v15);
    return (*(v16 + 32))(a1, v2);
  }

  else
  {
    v18 = *v2;
    sub_10002A1FC();
    v19 = sub_100029C3C();
    sub_100020AC0();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v1, v4);
  }
}

uint64_t sub_10001F034()
{
  v1 = type metadata accessor for ComplicationWorkflowIcon();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  v4 = sub_1000026A4(&qword_10003D8F8, &qword_10002F850);
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v18 - v10;
  v12 = [*v0 backgroundColor];
  v13 = [v12 paletteGradient];

  sub_100020958(v0, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ComplicationWorkflowIcon);
  v14 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v15 = swift_allocObject();
  sub_100020458(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  sub_1000026A4(&qword_10003D900, &qword_10002F858);
  sub_10002053C();
  sub_1000298BC();
  sub_100020AA8();
  sub_100005EEC(v16, &qword_10003D8F8, &qword_10002F850);
  sub_100029CDC();
  return (*(v7 + 8))(v11, v4);
}

uint64_t sub_10001F280@<X0>(void *a1@<X0>, id *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001F2F4(a2, a1, a3);
  v5 = a1;
  v6 = sub_100029D9C();
  KeyPath = swift_getKeyPath();
  result = sub_1000026A4(&qword_10003D900, &qword_10002F858);
  v9 = (a3 + *(result + 36));
  *v9 = KeyPath;
  v9[1] = v6;
  return result;
}

uint64_t sub_10001F2F4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v117 = a2;
  v123 = a3;
  v100 = sub_100029E6C();
  v99 = *(v100 - 8);
  v4 = *(v99 + 64);
  __chkstk_darwin(v100);
  v98 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_1000026A4(&qword_10003D190, &qword_10002F8B0);
  v102 = *(v122 - 8);
  v6 = *(v102 + 64);
  __chkstk_darwin(v122);
  v101 = &v92 - v7;
  v95 = sub_100029D7C();
  v94 = *(v95 - 8);
  v8 = *(v94 + 64);
  __chkstk_darwin(v95);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for WidgetSStackView(0);
  v10 = *(*(v124 - 8) + 64);
  v11 = __chkstk_darwin(v124);
  v96 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v97 = &v92 - v13;
  v105 = sub_100029F0C();
  v104 = *(v105 - 8);
  v14 = *(v104 + 64);
  v15 = __chkstk_darwin(v105);
  v103 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v92 - v17;
  v119 = sub_1000026A4(&qword_10003D958, &qword_10002F8B8);
  v18 = *(*(v119 - 8) + 64);
  __chkstk_darwin(v119);
  v121 = &v92 - v19;
  v114 = sub_1000026A4(&qword_10003D960, qword_10002F8C0);
  v20 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v116 = &v92 - v21;
  v120 = sub_1000026A4(&qword_10003D938, &qword_10002F870);
  v22 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v118 = &v92 - v23;
  v24 = sub_1000298DC();
  v110 = *(v24 - 8);
  v111 = v24;
  v25 = *(v110 + 64);
  __chkstk_darwin(v24);
  v27 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_1000298CC();
  v107 = *(v108 - 8);
  v28 = *(v107 + 64);
  __chkstk_darwin(v108);
  v109 = (&v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = sub_1000298EC();
  v113 = *(v115 - 8);
  v30 = *(v113 + 64);
  __chkstk_darwin(v115);
  v112 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100029F4C();
  v33 = *(v32 - 8);
  v34 = v33[8];
  v35 = __chkstk_darwin(v32);
  v37 = &v92 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v92 - v38;
  v125 = a1;
  sub_10001ECDC(&v92 - v38);
  v40 = v33[13];
  v40(v37, enum case for WidgetFamily.accessoryInline(_:), v32);
  sub_1000208B4(&qword_10003D1A0, &type metadata accessor for WidgetFamily);
  sub_10002A14C();
  sub_10002A14C();
  v41 = v33[1];
  v41(v37, v32);
  v41(v39, v32);
  if (v126 == v128 || (sub_10001ECDC(v39), v40(v37, enum case for WidgetFamily.accessoryRectangular(_:), v32), sub_10002A14C(), sub_10002A14C(), v41(v37, v32), v41(v39, v32), v126 == v128))
  {
    v42 = [*v125 icon];
    v43 = v108;
    v44 = v109;
    *v109 = 0x403E000000000000;
    (*(v107 + 104))(v44, enum case for IconSize.customHeight(_:), v43);
    v45 = v117;
    *v27 = v117;
    v27[8] = 0;
    (*(v110 + 104))(v27, enum case for IconView.DisplayMode.customColor(_:), v111);
    v46 = v45;
    v47 = v112;
    sub_1000298FC();
    v48 = v113;
    v49 = v115;
    (*(v113 + 16))(v116, v47, v115);
    swift_storeEnumTagMultiPayload();
    sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView);
    v50 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView);
    v51 = v118;
    v52 = v124;
    sub_100029B6C();
    sub_1000033E4(v51, v121, &qword_10003D938, &qword_10002F870);
    swift_storeEnumTagMultiPayload();
    sub_10002076C();
    v126 = v52;
    v127 = v50;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    sub_1000209B8(v51);
    return (*(v48 + 8))(v47, v49);
  }

  else
  {
    v54 = v106;
    v55 = v125;
    sub_10001EE88(v106);
    v56 = v103;
    sub_100029EEC();
    v57 = sub_100029EDC();
    v58 = *(v104 + 8);
    v59 = v105;
    v58(v56, v105);
    v58(v54, v59);
    v60 = *v55;
    if (v57)
    {
      v61 = [objc_opt_self() whiteColor];
      v62 = sub_1000201EC(v61);

      v63 = [objc_allocWithZone(WFColor) initWithWhite:0.2 alpha:1.0];
      v64 = v124;
      v65 = *(v124 + 20);
      (*(v94 + 104))(v93, enum case for Color.RGBColorSpace.sRGB(_:), v95);
      v66 = sub_100029DDC();
      v67 = v97;
      *&v97[v65] = v66;
      v68 = enum case for SStackFill.color(_:);
      v69 = sub_10002989C();
      (*(*(v69 - 8) + 104))(&v67[v65], v68, v69);
      *v67 = v62;
      *(v67 + 1) = v63;
      type metadata accessor for WidgetSStackView.Content(0);
      swift_storeEnumTagMultiPayload();
      sub_100020958(v67, v116, type metadata accessor for WidgetSStackView);
      swift_storeEnumTagMultiPayload();
      sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView);
      v70 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView);
      v71 = v118;
      sub_100029B6C();
      sub_1000033E4(v71, v121, &qword_10003D938, &qword_10002F870);
      swift_storeEnumTagMultiPayload();
      sub_10002076C();
      v126 = v64;
      v127 = v70;
      swift_getOpaqueTypeConformance2();
      sub_100029B6C();
      sub_1000209B8(v71);
      return sub_1000208FC(v67);
    }

    else
    {
      v72 = v117;
      v73 = sub_1000201EC(v117);
      v74 = [objc_opt_self() whiteColor];
      v75 = *(v124 + 20);
      v76 = v72;
      sub_100029D9C();
      v77 = sub_100029DBC();

      v78 = v96;
      *&v96[v75] = v77;
      v79 = enum case for SStackFill.color(_:);
      v80 = sub_10002989C();
      (*(*(v80 - 8) + 104))(&v78[v75], v79, v80);
      *v78 = v73;
      *(v78 + 1) = v74;
      type metadata accessor for WidgetSStackView.Content(0);
      swift_storeEnumTagMultiPayload();
      v81 = v106;
      sub_10001EE88(v106);
      sub_100029EFC();
      v82 = v81;
      LOBYTE(v81) = sub_100029EDC();
      v58(v56, v59);
      v58(v82, v59);
      v83 = v99;
      v84 = &enum case for BlendMode.destinationOut(_:);
      if ((v81 & 1) == 0)
      {
        v84 = &enum case for BlendMode.normal(_:);
      }

      v85 = v98;
      v86 = v100;
      (*(v99 + 104))(v98, *v84, v100);
      v87 = sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView);
      v88 = v101;
      v89 = v124;
      sub_100029CBC();
      (*(v83 + 8))(v85, v86);
      sub_1000208FC(v78);
      v90 = v102;
      v91 = v122;
      (*(v102 + 16))(v121, v88, v122);
      swift_storeEnumTagMultiPayload();
      sub_10002076C();
      v126 = v89;
      v127 = v87;
      swift_getOpaqueTypeConformance2();
      sub_100029B6C();
      return (*(v90 + 8))(v88, v91);
    }
  }
}

id sub_1000201EC(uint64_t a1)
{
  v2 = [objc_allocWithZone(WFIconColorBackground) initWithColor:a1];
  [v1 glyphCharacter];
  v3 = WFSystemImageNameForGlyphCharacter();
  if (v3)
  {
    v4 = v3;
    v5 = sub_10002A0EC();
    v7 = v6;

    v8 = objc_allocWithZone(WFSymbolIcon);
    return sub_100012A5C(v5, v7, v2);
  }

  else
  {
    v10 = [objc_allocWithZone(WFWorkflowGlyphIcon) initWithGlyph:objc_msgSend(v1 background:{"glyphCharacter"), v2}];

    return v10;
  }
}

uint64_t sub_1000202D0()
{
  v1 = type metadata accessor for ComplicationWorkflowIcon();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_100029F4C();
    sub_10000350C(v7);
    (*(v8 + 8))(v5 + v6);
  }

  else
  {
    v9 = *(v5 + v6);
  }

  v10 = *(v1 + 24);
  sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_100029F0C();
    sub_10000350C(v11);
    (*(v12 + 8))(v5 + v10);
  }

  else
  {
    v13 = *(v5 + v10);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100020458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComplicationWorkflowIcon();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000204BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ComplicationWorkflowIcon() - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_10001F280(a1, v6, a2);
}

unint64_t sub_10002053C()
{
  result = qword_10003D908;
  if (!qword_10003D908)
  {
    sub_1000028A4(&qword_10003D900, &qword_10002F858);
    sub_1000205F4();
    sub_100005EEC(&qword_10003D940, &qword_10003D948, &qword_10002F878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D908);
  }

  return result;
}

unint64_t sub_1000205F4()
{
  result = qword_10003D910;
  if (!qword_10003D910)
  {
    sub_1000028A4(&qword_10003D918, &qword_10002F860);
    sub_100020678();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D910);
  }

  return result;
}

unint64_t sub_100020678()
{
  result = qword_10003D920;
  if (!qword_10003D920)
  {
    sub_1000028A4(&qword_10003D928, &qword_10002F868);
    sub_10002076C();
    type metadata accessor for WidgetSStackView(255);
    sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D920);
  }

  return result;
}

unint64_t sub_10002076C()
{
  result = qword_10003D930;
  if (!qword_10003D930)
  {
    sub_1000028A4(&qword_10003D938, &qword_10002F870);
    sub_1000208B4(&qword_10003D058, &type metadata accessor for IconView);
    sub_1000208B4(&qword_10003D178, type metadata accessor for WidgetSStackView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D930);
  }

  return result;
}

uint64_t sub_100020858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100029A4C();
  *a1 = result;
  return result;
}

uint64_t sub_100020884(uint64_t *a1)
{
  v1 = *a1;

  return sub_100029A5C();
}

uint64_t sub_1000208B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000208FC(uint64_t a1)
{
  v2 = type metadata accessor for WidgetSStackView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020958(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000350C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000209B8(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003D938, &qword_10002F870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100020A20()
{
  sub_1000028A4(&qword_10003D8F8, &qword_10002F850);
  sub_100020AA8();
  sub_100005EEC(v0, &qword_10003D8F8, &qword_10002F850);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100020AC0()
{

  return sub_10002993C();
}

uint64_t sub_100020AE0()
{

  return type metadata accessor for ComplicationWorkflowIcon();
}

uint64_t sub_100020B00@<X0>(uint64_t a1@<X8>)
{

  return sub_1000033E4(v1 + a1, v2, v3, v4);
}

unint64_t sub_100020B24()
{
  result = qword_10003D978;
  if (!qword_10003D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D978);
  }

  return result;
}

unint64_t sub_100020B7C()
{
  result = qword_10003D980;
  if (!qword_10003D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D980);
  }

  return result;
}

uint64_t sub_100020BEC()
{
  if (qword_10003C918 != -1)
  {
    sub_100023A08();
  }

  v1 = qword_100041540;
  v0 = *algn_100041548;
  v2 = qword_100041550;
  sub_100006100();
  v5 = v3;

  return v5(v1, v0, v2);
}

uint64_t sub_100020CA4()
{
  v0 = sub_10002980C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_10002A0DC();
  v9 = sub_10002A0DC();
  v10 = sub_100028FF4(v8);

  v11 = sub_10002A0EC();
  v13 = v12;

  v14 = sub_100019B00();
  v16 = v15;
  v18 = v17;

  sub_100019D64(1, 0, 0, v7);
  (*(v1 + 16))(v5, v7, v0);
  sub_10002934C();
  (*(v1 + 8))(v7, v0);
  v20 = v11;
  v21 = v13;
  sub_10002934C();
  v20 = 0;
  LOBYTE(v21) = 1;
  sub_10002934C();

  qword_100041570 = v14;
  *algn_100041578 = v16;
  qword_100041580 = v18;
  return result;
}

uint64_t sub_100020EB8()
{
  sub_100006164();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v3);
  v5 = *(v4 + 64) + 15;
  v0[4] = swift_task_alloc();
  v6 = sub_10002980C();
  v0[5] = v6;
  sub_10000B194(v6);
  v0[6] = v7;
  v9 = *(v8 + 64) + 15;
  v0[7] = swift_task_alloc();
  v0[8] = swift_task_alloc();

  return _swift_task_switch(sub_100020FAC, 0, 0);
}

void sub_100020FAC()
{
  v1 = 0;
  v2 = v0[6];
  v3 = v0[2];
  v4 = *(v3 + 16);
  v59 = (v2 + 16);
  v57 = (v2 + 32);
  v58 = (v2 + 8);
  v5 = v3 + 40;
  v61 = _swiftEmptyArrayStorage;
LABEL_2:
  v6 = v5;
  v7 = (v5 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return;
    }

    v8 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_37;
    }

    v10 = v0[4];
    v9 = v0[5];
    v11 = *(v7 - 1);
    v12 = *v7;

    sub_1000297FC();
    if (sub_100002984(v10, 1, v9) != 1)
    {
      v14 = v0[7];
      v15 = v0[8];
      v16 = v0[5];
      (*v57)(v15, v0[4], v16);
      (*v59)(v14, v15, v16);
      sub_100018CB0();
      v18 = v17;
      v20 = v19;
      v22 = v21;

      (*v58)(v15, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = v61[2];
        sub_100023A28();
        v61 = sub_100023730(0, v27 + 1, 1, v28, &unk_10003DA60, qword_10002FD00, &unk_10003A4F8, v29);
      }

      v5 = v6;
      v24 = v61[2];
      v23 = v61[3];
      if (v24 >= v23 >> 1)
      {
        v61 = sub_100023730((v23 > 1), v24 + 1, 1, v61, &unk_10003DA60, qword_10002FD00, &unk_10003A4F8, sub_100012BBC);
      }

      v61[2] = v24 + 1;
      v25 = &v61[3 * v24];
      v25[4] = v18;
      v25[5] = v20;
      *(v25 + 48) = v22 & 1;
      v1 = v8;
      goto LABEL_2;
    }

    v13 = v0[4];

    sub_100023998(v13);
    ++v1;
    v7 += 2;
  }

  v30 = 0;
  v31 = v61 + 6;
  v60 = _swiftEmptyArrayStorage;
  v32 = -v61[2];
LABEL_14:
  v33 = v30 + 1;
  v34 = &v31[3 * v30];
  while (v32 + v33 != 1)
  {
    v30 = v33;
    if ((v33 - 1) >= v61[2])
    {
      goto LABEL_38;
    }

    v35 = *(v34 - 2);
    if ((*v34 & 1) == 0)
    {
      if (v35)
      {
        if (qword_10003C928 != -1)
        {
          swift_once();
        }

        v45 = &qword_100041570;
      }

      else
      {
        if (qword_10003C918 != -1)
        {
          swift_once();
        }

        v45 = &qword_100041540;
      }

      v40 = *v45;
      v42 = v45[1];
      v44 = v45[2];

LABEL_28:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = v60[2];
        sub_100023A40();
        v60 = sub_100023730(0, v50 + 1, 1, v51, &qword_10003D338, &unk_10002E670, &unk_10003A430, v52);
      }

      v47 = v60[2];
      v46 = v60[3];
      if (v47 >= v46 >> 1)
      {
        v60 = sub_100023730((v46 > 1), v47 + 1, 1, v60, &qword_10003D338, &unk_10002E670, &unk_10003A430, sub_100012B98);
      }

      v31 = v61 + 6;
      v60[2] = v47 + 1;
      v48 = &v60[3 * v47];
      v48[4] = v40;
      v48[5] = v42;
      v48[6] = v44;
      goto LABEL_14;
    }

    ++v33;
    v36 = v34 + 24;
    v37 = v0[3];
    v38 = *(v34 - 1);

    sub_10001AD10(v35, v38);
    v40 = v39;
    v42 = v41;
    v44 = v43;
    sub_10001C384(v35, v38, 1);
    v34 = v36;
    if (v40)
    {
      goto LABEL_28;
    }
  }

  v54 = v0[7];
  v53 = v0[8];
  v55 = v0[4];

  sub_100013594();

  v56(v60);
}

uint64_t sub_10002145C()
{
  sub_100006164();
  v0[15] = v1;
  v0[16] = v2;
  v3 = sub_1000026A4(&qword_10003D330, &qword_10002FCD0);
  v0[17] = v3;
  sub_10000B194(v3);
  v0[18] = v4;
  v6 = *(v5 + 64) + 15;
  v0[19] = swift_task_alloc();
  v0[20] = swift_task_alloc();
  v7 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  sub_100002910(v7);
  v9 = *(v8 + 64) + 15;
  v0[21] = swift_task_alloc();

  return _swift_task_switch(sub_10002155C, 0, 0);
}

uint64_t sub_10002155C()
{
  v1 = v0[21];
  sub_1000297AC();
  sub_10000B1A4();
  sub_1000026EC(v2, v3, v4, v5);
  sub_1000026A4(&qword_10003DA50, &qword_10002FCD8);
  v6 = sub_1000026A4(&qword_10003DA58, &unk_10002FCE0);
  sub_10000B194(v6);
  v8 = *(v7 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_10002EE30;
  sub_1000026A4(&qword_10003D338, &unk_10002E670);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10002D840;
  if (qword_10003C918 != -1)
  {
    sub_100023A08();
  }

  v12 = v0[16];
  v13 = *algn_100041548;
  v14 = qword_100041550;
  *(inited + 32) = qword_100041540;
  *(inited + 40) = v13;
  *(inited + 48) = v14;

  v15 = sub_10001B2FC();
  sub_100023840(v15);
  v16 = *(inited + 16);
  if (v16)
  {
    v17 = v0[18];
    sub_100012D4C(0, v16, 0);
    sub_10001B798();
    v18 = (inited + 48);
    do
    {
      v19 = v0[20];
      v20 = *(v18 - 1);
      v21 = *v18;
      v0[9] = *(v18 - 2);
      v0[10] = v20;
      v0[11] = v21;

      sub_1000292EC();
      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        sub_100012D4C(v22 > 1, v23 + 1, 1);
      }

      v24 = v0[20];
      v25 = v0[17];
      _swiftEmptyArrayStorage[2] = v23 + 1;
      (*(v17 + 32))(_swiftEmptyArrayStorage + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v23, v24, v25);
      v18 += 3;
      --v16;
    }

    while (v16);
  }

  sub_10001B798();
  sub_10002943C();
  if (qword_10003C928 != -1)
  {
    swift_once();
  }

  v26 = v0[19];
  v27 = qword_100041570;
  v28 = *algn_100041578;
  v29 = qword_100041580;

  sub_100012D4C(0, 1, 0);
  v0[12] = v27;
  v0[13] = v28;
  v0[14] = v29;
  sub_1000292EC();
  v31 = _swiftEmptyArrayStorage[2];
  v30 = _swiftEmptyArrayStorage[3];
  if (v31 >= v30 >> 1)
  {
    sub_100012D4C(v30 > 1, v31 + 1, 1);
  }

  v33 = v0[20];
  v32 = v0[21];
  v34 = v0[18];
  v35 = v0[19];
  v36 = v0[17];
  v37 = v0[15];
  _swiftEmptyArrayStorage[2] = v31 + 1;
  (*(v34 + 32))(_swiftEmptyArrayStorage + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v31, v35, v36);
  sub_10002943C();
  sub_10002947C();

  sub_100006100();

  return v38();
}

uint64_t sub_1000219B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000134D8;

  return sub_100020EB8();
}

uint64_t sub_100021A54()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10001B928;

  return sub_10002145C();
}

unint64_t sub_100021AF8()
{
  result = qword_10003D988;
  if (!qword_10003D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D988);
  }

  return result;
}

uint64_t sub_100021B90(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100023450();
  *v6 = v2;
  v6[1] = sub_100023A00;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100021C44(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001BA98;

  return sub_100020BD0();
}

unint64_t sub_100021CD4()
{
  result = qword_10003D9A0;
  if (!qword_10003D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9A0);
  }

  return result;
}

uint64_t sub_100021D2C()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002988C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10002A0CC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000297AC();
  sub_10000FBA4(v9, qword_100041588);
  sub_10000FB6C(v9, qword_100041588);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_100021F60()
{
  v0 = sub_10002962C();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v8 = v7 - v6;
  swift_getKeyPath();
  (*(v3 + 104))(v8, enum case for EquatableComparisonOperator.equalTo(_:), v0);
  sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  sub_100021CD4();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70);
  sub_100005EEC(&qword_10003DA28, &qword_10003D9D0, &qword_10002FC10);
  sub_10001B590();
  return sub_10002965C();
}

uint64_t sub_100022130@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_100021F18();
  *a2 = result;
  return result;
}

uint64_t sub_10002215C@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1000026A4(&qword_10003DA30, &qword_10002FC78);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000026A4(&qword_10003DA38, &qword_10002FC80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100021CD4();
  sub_10002956C();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10002955C(v16);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA40, &qword_10002FC88);
  sub_10002954C();

  v17._countAndFlagsBits = 32;
  v17._object = 0xE100000000000000;
  sub_10002955C(v17);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA48, &qword_10002FCB8);
  sub_10002954C();

  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  sub_10002955C(v18);
  sub_10002957C();
  sub_10002953C();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70);
  sub_1000295CC();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_1000295BC();
  return (v13)(v12, v5);
}

uint64_t sub_100022488@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_100021F3C();
  *a2 = result;
  return result;
}

uint64_t sub_1000224B4@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v1 = sub_1000026A4(&qword_10003DA30, &qword_10002FC78);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_1000026A4(&qword_10003DA38, &qword_10002FC80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_1000026A4(&qword_10003DA18, &qword_10002FC70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v15 - v11;
  sub_100021CD4();
  sub_10002956C();
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  sub_10002955C(v16);
  swift_getKeyPath();
  sub_1000026A4(&qword_10003DA40, &qword_10002FC88);
  sub_10002954C();

  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_10002955C(v17);
  sub_10002957C();
  sub_10002953C();
  sub_100005EEC(&qword_10003DA20, &qword_10003DA18, &qword_10002FC70);
  sub_1000295CC();
  v13 = *(v6 + 8);
  v13(v10, v5);
  sub_1000295BC();
  return (v13)(v12, v5);
}

char *sub_100022794()
{
  v82 = sub_1000295AC();
  v1 = sub_1000028EC(v82);
  v78 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v83 = v6 - v5;
  v7 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v8 = sub_100002910(v7);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v84 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v79 = v73 - v13;
  v14 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v15 = sub_100002910(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v73 - v18;
  v20 = sub_10002978C();
  v21 = sub_1000028EC(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  sub_100002900();
  v28 = v27 - v26;
  v29 = sub_10002988C();
  v30 = sub_100002910(v29);
  v32 = *(v31 + 64);
  __chkstk_darwin(v30);
  sub_100002900();
  v33 = sub_10002A0CC();
  v34 = sub_100002910(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_100002900();
  v37 = sub_1000297AC();
  v38 = sub_100023A84(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  sub_100002900();
  v43 = v42 - v41;
  v73[1] = sub_1000026A4(&qword_10003D9D0, &qword_10002FC10);
  sub_10002A05C();
  sub_10002987C();
  v44 = *(v23 + 104);
  v75 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v77 = v20;
  v74 = v44;
  v44(v28);
  v80 = v43;
  sub_100023A58();
  v81 = v19;
  sub_10000B1A4();
  sub_1000026EC(v45, v46, v47, v0);
  if (qword_10003C918 != -1)
  {
    sub_100023A08();
  }

  v85 = xmmword_100041540;
  *&v86 = qword_100041550;
  v48 = sub_10002931C();
  sub_10000B1A4();
  sub_1000026EC(v49, v50, v51, v48);
  sub_10000B1A4();
  sub_1000026EC(v52, v53, v54, v48);
  v55 = qword_10003C940;

  if (v55 != -1)
  {
    sub_10000B164();
  }

  v88 = qword_1000415B8;
  v76 = enum case for InputConnectionBehavior.default(_:);
  v78 = *(v78 + 104);
  (v78)(v83);
  sub_100023450();

  v84 = sub_1000293DC();
  v79 = sub_1000026A4(&qword_10003D9E0, &qword_10002FC18);
  sub_10002A05C();
  sub_10002987C();
  v74(v28, v75, v77);
  sub_100023A58();
  sub_10000B1A4();
  sub_1000026EC(v56, v57, v58, v0);
  *&v85 = _swiftEmptyArrayStorage;
  sub_1000026A4(&qword_10003D9E8, &qword_10002FC20);
  v59 = (sub_1000026A4(&qword_10003D9F0, &qword_10002FC28) - 8);
  v60 = *(*v59 + 72);
  v61 = (*(*v59 + 80) + 32) & ~*(*v59 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_10002D850;
  v63 = v62 + v61;
  v64 = v59[14];
  v65 = enum case for IntentWidgetFamily.systemSmall(_:);
  v66 = sub_10002944C();
  sub_100023A84(v66);
  v68 = *(v67 + 104);
  v68(v63, v65, v0);
  sub_10002945C();
  v69 = v59[14];
  v68(v63 + v60, enum case for IntentWidgetFamily.systemMedium(_:), v0);
  sub_10002945C();
  v70 = v59[14];
  v68(v63 + 2 * v60, enum case for IntentWidgetFamily.systemLarge(_:), v0);
  sub_10002945C();
  v71 = v59[14];
  v68(v63 + 3 * v60, enum case for IntentWidgetFamily.systemExtraLarge(_:), v0);
  sub_10002945C();
  sub_10002946C();
  sub_1000234A4();
  sub_10002A02C();
  (v78)(v83, v76, v82);
  sub_100005EEC(&qword_10003DA00, &qword_10003DAC0, qword_10002E280);
  sub_10000FA50();
  sub_10002940C();
  sub_1000026A4(&qword_10003D278, &qword_10002F7C0);
  sub_10002924C();
  v85 = 0u;
  v86 = 0u;
  v87 = 0;
  sub_10002923C();
  sub_1000291FC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  v87 = 0;
  v85 = 0u;
  v86 = 0u;
  sub_10002923C();
  sub_1000291FC();
  return v84;
}

uint64_t sub_100022F54()
{
  v0 = qword_10003D968;

  return v0;
}

unint64_t sub_100022F90()
{
  result = qword_10003D9A8;
  if (!qword_10003D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9A8);
  }

  return result;
}

unint64_t sub_100022FE8()
{
  result = qword_10003D9B0;
  if (!qword_10003D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9B0);
  }

  return result;
}

uint64_t sub_100023058@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C930 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041588);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100023104(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100023674();
  *v5 = v2;
  v5[1] = sub_1000231B0;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_1000231B0()
{
  sub_100006164();
  sub_100013588();
  v3 = *(v2 + 16);
  v4 = *v1;
  sub_1000134EC();
  *v5 = v4;

  if (v0)
  {
    sub_100006100();

    return v7();
  }

  return result;
}

char *sub_1000232A4@<X0>(char **a1@<X8>)
{
  result = sub_100022794();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_1000232D0(uint64_t a1)
{
  v2 = sub_1000233FC();

  return static CustomIntentMigratedAppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_10002330C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100023318(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100023358(uint64_t result, int a2, int a3)
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

unint64_t sub_1000233FC()
{
  result = qword_10003D9C8;
  if (!qword_10003D9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9C8);
  }

  return result;
}

unint64_t sub_100023450()
{
  result = qword_10003D9D8;
  if (!qword_10003D9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9D8);
  }

  return result;
}

unint64_t sub_1000234A4()
{
  result = qword_10003D9F8;
  if (!qword_10003D9F8)
  {
    sub_10002944C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D9F8);
  }

  return result;
}

uint64_t sub_10002351C()
{
  if (qword_10003C940 != -1)
  {
    sub_10000B164();
  }

  **(v0 + 16) = qword_1000415B8;
  sub_100013594();
  v3 = v1;

  return v3();
}

uint64_t sub_1000235D0()
{
  if (qword_10003C8C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_100041488;
  sub_100013594();
  v3 = v1;

  return v3();
}

unint64_t sub_100023674()
{
  result = qword_10003DA10;
  if (!qword_10003DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA10);
  }

  return result;
}

void *sub_100023730(void *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, void (*a8)(uint64_t, int64_t, void *))
{
  v10 = result;
  if ((a3 & 1) == 0)
  {
    v12 = a2;
    goto LABEL_8;
  }

  v11 = *(a4 + 24);
  v12 = v11 >> 1;
  if ((v11 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v12 + 0x4000000000000000 >= 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v12 = a2;
    }

LABEL_8:
    v13 = *(a4 + 16);
    if (v12 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      sub_1000026A4(a5, a6);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 24);
      if (v10)
      {
LABEL_13:
        a8(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v15;
      }
    }

    else
    {
      v15 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

int64_t sub_100023840(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_100023904(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void *sub_100023904(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_100023730(result, v7, a2 & 1, v5, &qword_10003D338, &unk_10002E670, &unk_10003A430, sub_100012B98);
    *v2 = result;
  }

  return result;
}

uint64_t sub_100023998(uint64_t a1)
{
  v2 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100023A08()
{

  return swift_once();
}

uint64_t sub_100023A58()
{

  return sub_1000297BC();
}

unint64_t sub_100023A9C()
{
  result = qword_10003DA70;
  if (!qword_10003DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA70);
  }

  return result;
}

unint64_t sub_100023AF4()
{
  result = qword_10003DA78;
  if (!qword_10003DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA78);
  }

  return result;
}

uint64_t sub_100023BB4(uint64_t a1)
{
  v37 = *(a1 + 16);
  v38 = *a1;
  v36 = *(a1 + 32);
  v35 = *(a1 + 48);
  v2 = sub_1000295AC();
  v3 = sub_1000028EC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002900();
  v10 = v9 - v8;
  v11 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v12 = sub_100002910(v11);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v16 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v17 = sub_100002910(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v20 = sub_1000297AC();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002846C();
  sub_10002977C();
  sub_10000B1A4();
  sub_1000026EC(v22, v23, v24, v20);
  v25 = sub_10002931C();
  *&v26 = sub_100028460();
  v42 = v26;
  v43 = 0;
  sub_10000B1A4();
  sub_1000026EC(v27, v28, v29, v25);
  sub_10000B1A4();
  sub_1000026EC(v30, v31, v32, v25);
  if (qword_10003C940 != -1)
  {
    sub_10000B164();
  }

  v39[0] = qword_1000415B8;
  (*(v5 + 104))(v10, enum case for InputConnectionBehavior.default(_:), v2);
  sub_100026E64();

  v33 = sub_1000293DC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  sub_10002924C();
  sub_100028460();

  sub_10002923C();
  sub_1000283D0();
  sub_1000291FC();
  v40 = v38;
  v41 = v37;
  v42 = v36;
  v43 = v35;

  sub_10000AFDC(a1, v39);
  sub_1000293AC();
  sub_1000282D8(a1);

  return v33;
}

uint64_t sub_100023F1C()
{
  v0 = sub_10002978C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10002988C();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_10002A0CC();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_1000297AC();
  sub_10000FBA4(v9, qword_1000415A0);
  sub_10000FB6C(v9, qword_1000415A0);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10002410C()
{
  v0 = sub_1000295AC();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v8 = v7 - v6;
  v9 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v10 = sub_100002910(v9);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  __chkstk_darwin(v13);
  v14 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v15 = sub_100002910(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v18 = sub_1000297AC();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  sub_100002900();
  sub_1000026A4(&unk_10003DBB0, &unk_10002E150);
  sub_10002846C();
  sub_10002977C();
  sub_10000B1A4();
  sub_1000026EC(v20, v21, v22, v18);
  v23 = sub_10002931C();
  sub_100028460();
  sub_10000B1A4();
  sub_1000026EC(v24, v25, v26, v23);
  sub_10000B1A4();
  sub_1000026EC(v27, v28, v29, v23);
  if (qword_10003C940 != -1)
  {
    sub_10000B164();
  }

  (*(v3 + 104))(v8, enum case for InputConnectionBehavior.default(_:), v0);
  sub_100026E64();

  v30 = sub_1000293DC();
  sub_1000026A4(&qword_10003DA08, &qword_10002FC38);
  sub_10002924C();
  sub_100028460();
  sub_10002923C();
  sub_1000283D0();
  sub_1000291FC();
  return v30;
}

uint64_t sub_1000243F8()
{
  sub_100006164();
  v0[72] = v1;
  v0[71] = v2;
  v0[70] = v3;
  v4 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v4);
  v6 = *(v5 + 64) + 15;
  v0[73] = swift_task_alloc();
  v7 = sub_1000283C0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10002448C()
{
  v1 = (v0 + 568);
  v2 = *(v0 + 568);
  sub_10002939C();
  if (*(v0 + 400))
  {
    v4 = *(v0 + 408);
    v3 = *(v0 + 416);
    v6 = *(v0 + 424);
    v5 = *(v0 + 432);
    v8 = *(v0 + 440);
    v7 = *(v0 + 448);
    sub_10002933C();
    if (*(v0 + 520) && (v9 = *(v0 + 512), sub_100028454(), v52 = sub_10002981C(), v11 = v10, , v11 >> 60 != 15))
    {
      sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
      sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
      v13 = sub_10002A20C();
      *(v0 + 592) = v13;
      v39 = v13;
      v40 = sub_100028370();
      sub_10000AD20(v40);
      sub_10000ADEC(v52, v11);
      v1 = (v0 + 568);
      if (v39)
      {
        v41 = [objc_allocWithZone(WFSystemActionRunnerClient) initWithSystemAction:v39];
        *(v0 + 600) = v41;
        if (!v41)
        {
          v47 = *(v0 + 560);
          sub_10002932C();

          v48 = *(v0 + 584);

          sub_1000283A0();
          sub_100028480();

          __asm { BRAA            X1, X16 }
        }

        v42 = v41;
        *(v0 + 552) = 0;
        v43 = swift_task_alloc();
        *(v0 + 608) = v43;
        v44 = *(v0 + 568);
        *(v43 + 16) = v0 + 552;
        *(v43 + 24) = v44;
        *(v43 + 40) = v42;
        *(v43 + 48) = v39;
        v45 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
        v46 = swift_task_alloc();
        *(v0 + 616) = v46;
        *v46 = v0;
        v46[1] = sub_1000249A4;
        sub_1000283F4();
        goto LABEL_8;
      }
    }

    else
    {
      v12 = sub_100028370();
      sub_10000AD20(v12);
    }
  }

  v14 = *(v0 + 568);
  sub_10002939C();
  v15 = *(v0 + 456);
  *(v0 + 632) = v15;
  v16 = *(v0 + 480);
  *(v0 + 640) = *(v0 + 464);
  *(v0 + 656) = v16;
  *(v0 + 672) = *(v0 + 496);
  if (v15)
  {
    v53 = *v1;
    sub_10002933C();
    v17 = *(v0 + 528);
    v18 = *(v0 + 536);
    *(v0 + 688) = v18;
    sub_10000ADAC(0, &qword_10003DBD8, WFWidgetWorkflowRunnerClient_ptr);

    v19 = sub_100025BA8(v17, v18, 1);
    *(v0 + 696) = v19;
    *(v0 + 544) = 0;
    v20 = swift_task_alloc();
    *(v0 + 704) = v20;
    *(v20 + 16) = v0 + 544;
    *(v20 + 24) = v53;
    *(v20 + 40) = v19;
    *(v20 + 48) = v17;
    *(v20 + 56) = v18;
    v21 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v22 = swift_task_alloc();
    *(v0 + 712) = v22;
    *v22 = v0;
    v22[1] = sub_100024B2C;
    sub_1000283F4();
LABEL_8:
    sub_100028480();

    return withCheckedThrowingContinuation<A>(isolation:function:_:)();
  }

  v24 = *(v0 + 584);
  v25 = sub_10002A0EC();
  v27 = v26;
  v28 = sub_10002A02C();
  sub_10002980C();
  sub_10000B1A4();
  sub_1000026EC(v29, v30, v31, v32);
  v33 = objc_allocWithZone(WFAppLaunchRequest);
  v34 = sub_100005830(v25, v27, v28, v24, 0, 0);
  *(v0 + 728) = v34;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 768;
  *(v0 + 24) = sub_100024D10;
  v35 = swift_continuation_init();
  v36 = sub_1000026A4(&qword_10003CAB0, &unk_10002D520);
  *(v0 + 736) = v36;
  *(v0 + 264) = v36;
  *(v0 + 208) = _NSConcreteStackBlock;
  *(v0 + 216) = 1107296256;
  *(v0 + 224) = sub_1000053E8;
  *(v0 + 232) = &unk_10003A838;
  *(v0 + 240) = v35;
  [v34 performWithCompletionHandler:v0 + 208];
  sub_100028480();

  return _swift_continuation_await(v37);
}

uint64_t sub_1000249A4()
{
  sub_100006164();
  sub_100013588();
  v3 = v2;
  sub_100006178();
  *v4 = v3;
  v6 = *(v5 + 616);
  v7 = *v1;
  sub_1000134EC();
  *v8 = v7;
  *(v3 + 624) = v0;

  if (!v0)
  {
    v9 = *(v3 + 608);
  }

  sub_100006198();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100024AA8()
{
  sub_100006158();
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 560);

  sub_10002932C();
  v4 = *(v0 + 584);

  sub_1000283A0();

  return v5();
}

uint64_t sub_100024B2C()
{
  sub_100006164();
  sub_100013588();
  v3 = v2;
  sub_100006178();
  *v4 = v3;
  v6 = *(v5 + 712);
  v7 = *v1;
  sub_1000134EC();
  *v8 = v7;
  v3[90] = v0;

  if (!v0)
  {
    v9 = v3[88];
    v10 = v3[86];
  }

  sub_100006198();

  return _swift_task_switch(v11, v12, v13);
}

uint64_t sub_100024C3C()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 680);
  v3 = *(v0 + 672);
  v4 = *(v0 + 664);
  v5 = *(v0 + 656);
  v6 = *(v0 + 648);
  v7 = *(v0 + 640);
  v8 = *(v0 + 632);
  v9 = *(v0 + 560);

  sub_10002932C();
  sub_10000AD20(v8);
  v10 = *(v0 + 584);

  sub_1000283A0();

  return v11();
}

uint64_t sub_100024D10()
{
  sub_100006164();
  sub_100013588();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 744) = *(v3 + 48);
  sub_100006198();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100024E10()
{
  sub_100006158();
  if ((*(v0 + 768) & 1) != 0 || !VCIsDeviceLocked())
  {
    v3 = *(v0 + 728);
    v4 = *(v0 + 560);
    sub_10002932C();

    v5 = *(v0 + 584);

    sub_1000283A0();

    return v6();
  }

  else
  {
    v1 = [objc_allocWithZone(WFCompactUnlockService) init];
    *(v0 + 752) = v1;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 769;
    *(v0 + 88) = sub_100024F98;
    v2 = swift_continuation_init();
    *(v0 + 328) = sub_1000026A4(&qword_10003DBD0, &qword_100030090);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1000054E0;
    *(v0 + 296) = &unk_10003A860;
    *(v0 + 304) = v2;
    [v1 requestUnlockIfNeeded:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100024F98()
{
  sub_100006164();
  v7 = *v0;
  v1 = *v0;
  sub_1000134EC();
  *v2 = v1;
  sub_100006198();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100025068()
{
  sub_100006158();
  if (*(v0 + 769) == 1)
  {
    v1 = *(v0 + 736);
    v2 = *(v0 + 728);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 770;
    *(v0 + 152) = sub_1000251C4;
    v3 = swift_continuation_init();
    *(v0 + 392) = v1;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1000053E8;
    *(v0 + 360) = &unk_10003A888;
    *(v0 + 368) = v3;
    [v2 performWithCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    v4 = *(v0 + 728);
    v5 = *(v0 + 560);
    sub_10002932C();

    v6 = *(v0 + 584);

    sub_1000283A0();

    return v7();
  }
}

uint64_t sub_1000251C4()
{
  sub_100006164();
  sub_100013588();
  sub_100006178();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 760) = *(v3 + 176);
  sub_100006198();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000252C4()
{
  sub_100006164();

  v1 = *(v0 + 728);
  v2 = *(v0 + 560);
  sub_10002932C();

  v3 = *(v0 + 584);

  sub_1000283A0();

  return v4();
}

uint64_t sub_100025334()
{
  sub_100006164();
  v1 = *(v0 + 608);
  v2 = *(v0 + 592);

  v3 = *(v0 + 624);
  v4 = *(v0 + 584);

  sub_100006100();

  return v5();
}

uint64_t sub_1000253B4()
{
  sub_100006158();
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  v4 = *(v0 + 680);
  v5 = *(v0 + 672);
  v6 = *(v0 + 664);
  v7 = *(v0 + 656);
  v8 = *(v0 + 648);
  v9 = *(v0 + 640);
  sub_10000AD20(*(v0 + 632));

  v10 = *(v0 + 720);
  v11 = *(v0 + 584);

  sub_100006100();

  return v12();
}

uint64_t sub_100025460()
{
  sub_100006158();
  v1 = v0[93];
  v2 = v0[91];
  swift_willThrow();

  v3 = v0[93];
  v4 = v0[73];

  sub_100006100();

  return v5();
}

uint64_t sub_1000254D4()
{
  sub_100006158();
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[91];
  swift_willThrow();

  v4 = v0[95];
  v5 = v0[73];

  sub_100006100();

  return v6();
}

uint64_t sub_100025550(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = v31 - v14;
  v16 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = v31 - v18;
  (*(v20 + 16))(v31 - v18, a1);
  sub_1000291EC();
  v21 = v31[1];
  v22 = objc_allocWithZone(type metadata accessor for RunShortcutIntent.RunnerClientDelegate());
  v23 = sub_100025FA8(v19, v21);
  v24 = *a2;
  *a2 = v23;
  v25 = v23;

  [a5 setDelegate:v25];
  v26 = sub_10002A1CC();
  sub_1000026EC(v15, 1, 1, v26);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = a3;
  v27[5] = a4;
  v27[6] = a6;
  v27[7] = a5;

  v28 = a6;
  v29 = a5;
  sub_100025904(0, 0, v15, &unk_1000300A0, v27);
}

uint64_t sub_100025768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[3] = a5;
  return _swift_task_switch(sub_10002578C, 0, 0);
}

uint64_t sub_10002578C()
{
  sub_100006158();
  v2 = v0[3];
  v1 = v0[4];
  sub_1000291EC();
  v0[6] = v0[2];
  v3 = [v1 identifier];
  v4 = sub_10002A0EC();
  v6 = v5;

  v0[7] = v4;
  v0[8] = v6;
  sub_100028454();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100025830()
{
  sub_100006164();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  sub_100006490();

  v4 = sub_1000283C0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000258A4()
{
  sub_100006164();
  [*(v0 + 40) start];
  sub_100006100();

  return v1();
}

uint64_t sub_100025904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  sub_100027A5C(a3, v26 - v11);
  v13 = sub_10002A1CC();
  v14 = sub_100002984(v12, 1, v13);

  if (v14 == 1)
  {
    sub_100027ACC(v12);
  }

  else
  {
    sub_10002A1BC();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_10002A17C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_10002A0FC() + 32;
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

      sub_100027ACC(a3);

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

  sub_100027ACC(a3);
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

id sub_100025BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_10002A0DC();

  v6 = [v4 initWithWorkflowIdentifier:v5 location:a3];

  return v6;
}

uint64_t sub_100025C24(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v32 - v16;
  v18 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = v32 - v20;
  (*(v22 + 16))(v32 - v20, a1);
  sub_1000291EC();
  v23 = v32[1];
  v24 = objc_allocWithZone(type metadata accessor for RunShortcutIntent.RunnerClientDelegate());
  v25 = sub_100025FA8(v21, v23);
  v26 = *a2;
  *a2 = v25;
  v27 = v25;

  [a5 setDelegate:v27];
  v28 = sub_10002A1CC();
  sub_1000026EC(v17, 1, 1, v28);
  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = a6;
  v29[7] = a7;
  v29[8] = a5;

  v30 = a5;
  sub_100025904(0, 0, v17, &unk_1000300B0, v29);
}

uint64_t sub_100025E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  return _swift_task_switch(sub_100025E74, 0, 0);
}

uint64_t sub_100025E74()
{
  sub_100006164();
  v1 = v0[3];
  sub_1000291EC();
  v2 = v0[2];
  v0[7] = v2;

  return _swift_task_switch(sub_100025EE0, v2, 0);
}

uint64_t sub_100025EE0()
{
  sub_100006164();
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  sub_100006490();

  v4 = sub_1000283C0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100025F48()
{
  sub_100006164();
  [*(v0 + 48) start];
  sub_100006100();

  return v1();
}

id sub_100025FA8(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_continuation;
  v6 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v2[v5], a1, v6);
  *&v2[OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker] = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for RunShortcutIntent.RunnerClientDelegate();
  v8 = objc_msgSendSuper2(&v10, "init");
  (*(v7 + 8))(a1, v6);
  return v8;
}

uint64_t sub_100026094(void *a1, void *a2)
{
  v5 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = sub_10002A1CC();
  sub_1000026EC(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = v2;
  v11 = a2;
  v12 = v2;
  v13 = a1;
  sub_100025904(0, 0, v8, &unk_100030060, v10);
}

uint64_t sub_100026190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1000261B4, 0, 0);
}

uint64_t sub_1000261B4()
{
  sub_100006158();
  v1 = *(v0 + 16);
  objc_opt_self();
  v2 = sub_10002849C();
  v3 = *(v0 + 24);
  if (v2)
  {
    if (v3)
    {
      v4 = v2;
      v5 = *(v0 + 16);
      v6 = v3;
      v7 = sub_100027F30([v4 context]);
      *(v0 + 40) = v8;
      if (v8)
      {
        v9 = *(v0 + 32);
        *(v0 + 48) = v7;
        *(v0 + 56) = *(v9 + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);

LABEL_8:
        sub_100028454();

        return _swift_task_switch(v22, v23, v24);
      }
    }
  }

  else
  {
    v10 = *(v0 + 16);
    objc_opt_self();
    v11 = sub_10002849C();
    if (v11 && v3)
    {
      v12 = v11;
      v13 = *(v0 + 24);
      v14 = *(v0 + 16);
      *(v0 + 64) = *(*(v0 + 32) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
      v15 = v14;
      v16 = v13;

      v17 = [v12 action];
      v18 = [v17 identifier];

      v19 = sub_10002A0EC();
      v21 = v20;

      *(v0 + 72) = v19;
      *(v0 + 80) = v21;
      goto LABEL_8;
    }
  }

  sub_100006100();

  return v25();
}

uint64_t sub_100026378()
{
  sub_100006164();
  v1 = *(v0 + 56);
  sub_100006708(*(v0 + 24), *(v0 + 48), *(v0 + 40));

  v2 = sub_1000283C0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000263F0()
{
  sub_100006164();
  v1 = *(v0 + 24);

  sub_100006100();

  return v2();
}

uint64_t sub_10002644C()
{
  sub_100006164();
  v1 = *(v0 + 64);
  sub_100006708(*(v0 + 24), *(v0 + 72), *(v0 + 80));

  v2 = sub_1000283C0();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100026540(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = sub_10002A1CC();
  sub_1000026EC(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a1;
  v11[5] = a3;
  v11[6] = v3;
  v12 = a1;
  swift_errorRetain();
  v13 = v3;
  sub_100025904(0, 0, v9, &unk_100030030, v11);
}

uint64_t sub_100026640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = sub_1000026A4(&qword_10003DB98, &qword_100030050);
  v6[7] = v7;
  v8 = *(v7 - 8);
  v6[8] = v8;
  v9 = *(v8 + 64) + 15;
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100026710, 0, 0);
}

uint64_t sub_100026710()
{
  v1 = *(v0 + 32);
  objc_opt_self();
  v2 = sub_10002849C();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 32);
    *(v0 + 80) = sub_100027F30([v3 context]);
    *(v0 + 88) = v5;
    if (v5)
    {
      v7 = *(v0 + 64);
      v6 = *(v0 + 72);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);
      v10 = *(v0 + 40);
      v11 = sub_100028388();
      v12(v11);
      if (v10)
      {
        *(v0 + 24) = v10;
        swift_errorRetain();
        sub_10002A18C();
      }

      else
      {
        sub_10002A19C();
      }

      (*(v7 + 8))(v6, v9);
      *(v0 + 96) = *(*(v0 + 48) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
LABEL_16:

      sub_100028454();

      return _swift_task_switch(v34, v35, v36);
    }
  }

  else
  {
    objc_opt_self();
    v13 = sub_10002849C();
    if (v13)
    {
      v14 = v13;
      v15 = *(v0 + 40);
      v16 = *(v0 + 32);
      v17 = [v14 action];
      v18 = [v17 identifier];

      v19 = sub_10002A0EC();
      v21 = v20;

      *(v0 + 104) = v19;
      *(v0 + 112) = v21;
      v23 = *(v0 + 64);
      v22 = *(v0 + 72);
      v24 = *(v0 + 48);
      v25 = *(v0 + 56);
      if (v15)
      {
        v26 = *(v0 + 40);
        v27 = sub_100028388();
        v28(v27);
        *(v0 + 16) = v26;
        swift_errorRetain();
        sub_10002A18C();
      }

      else
      {
        v32 = sub_100028388();
        v33(v32);
        sub_10002A19C();
      }

      (*(v23 + 8))(v22, v25);
      *(v0 + 120) = *(*(v0 + 48) + OBJC_IVAR____TtCV24ShortcutsWidgetExtension17RunShortcutIntentP33_82D064107D62BB69BF784D876A4D3C0420RunnerClientDelegate_runningTracker);
      goto LABEL_16;
    }
  }

  v29 = *(v0 + 72);

  sub_100006100();

  return v30();
}

uint64_t sub_1000269B0()
{
  sub_100006164();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_100006A98();

  v4 = sub_1000283C0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100026A24()
{
  sub_100006164();

  v1 = *(v0 + 72);

  sub_100006100();

  return v2();
}

uint64_t sub_100026A84()
{
  sub_100006164();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_100006A98();

  v4 = sub_1000283C0();

  return _swift_task_switch(v4, v5, v6);
}

id sub_100026BE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RunShortcutIntent.RunnerClientDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100026CA8@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C938 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_1000415A0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100026D50()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100023A00;

  return sub_1000243F8();
}

uint64_t sub_100026DFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10002410C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100026E24(uint64_t a1)
{
  v2 = sub_1000135A4();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100026E64()
{
  result = qword_10003DA88;
  if (!qword_10003DA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA88);
  }

  return result;
}

uint64_t sub_100026EB8()
{
  sub_100006164();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_10002834C;

  return sub_10001142C(v2);
}

uint64_t sub_100026F4C()
{
  sub_100006158();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_10002834C;

  return sub_10001160C(v4, v2);
}

uint64_t sub_100026FF0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = sub_1000283C0();
  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_100027018()
{
  sub_100006164();
  v1 = *(v0 + 16);
  v2 = sub_1000117BC();
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100027078(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100027128;

  return sub_100026F4C();
}

uint64_t sub_100027128()
{
  sub_100006158();
  v3 = v2;
  sub_100013588();
  v5 = v4;
  sub_100006178();
  *v6 = v5;
  v8 = *(v7 + 24);
  v9 = *v1;
  sub_1000134EC();
  *v10 = v9;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  v11 = *(v9 + 8);

  return v11();
}

unint64_t sub_100027228()
{
  result = qword_10003DA90;
  if (!qword_10003DA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA90);
  }

  return result;
}

unint64_t sub_100027280()
{
  result = qword_10003DA98;
  if (!qword_10003DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA98);
  }

  return result;
}

uint64_t sub_1000272D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002834C;

  return sub_100026EB8();
}

uint64_t sub_100027370(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100028348;

  return sub_100026FF0(v3);
}

uint64_t sub_100027408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000274C8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000274C8()
{
  sub_100006164();
  v3 = v2;
  sub_100013588();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1000134EC();
  *v7 = v6;

  v9 = *(v6 + 8);
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_1000275BC()
{
  result = qword_10003DAA8;
  if (!qword_10003DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAA8);
  }

  return result;
}

uint64_t sub_100027614(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100026E64();
  *v6 = v2;
  v6[1] = sub_10001B928;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_1000276C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10001B928;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t type metadata accessor for RunShortcutIntent.RunnerClientDelegate()
{
  result = qword_10003DB60;
  if (!qword_10003DB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000277D0()
{
  sub_10002786C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10002786C()
{
  if (!qword_10003DB70)
  {
    sub_1000028A4(&qword_10003CAE0, &qword_10002D798);
    v0 = sub_10002A1AC();
    if (!v1)
    {
      atomic_store(v0, &qword_10003DB70);
    }
  }
}

unint64_t sub_100027908()
{
  result = qword_10003DB80;
  if (!qword_10003DB80)
  {
    sub_1000028A4(&qword_10003CAD0, &qword_10002D688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DB80);
  }

  return result;
}

uint64_t sub_10002796C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000279BC()
{
  sub_100028424();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1000283B0(v2);
  *v3 = v4;
  v5 = sub_100028350(v3);

  return sub_100026640(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_100027A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100027ACC(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003DB90, &qword_100030020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100027B54()
{
  sub_100006158();
  if (qword_10003C8C0 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_100041488;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100027BF8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027CF0;

  return v7(a1);
}

uint64_t sub_100027CF0()
{
  sub_100006164();
  sub_100013588();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000134EC();
  *v4 = v3;

  sub_1000283A0();

  return v5();
}

uint64_t sub_100027DD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100027E08()
{
  sub_100006158();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000283B0(v3);
  *v4 = v5;
  v6 = sub_100028434(v4);

  return v7(v6);
}

uint64_t sub_100027E9C()
{
  sub_100006158();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_1000283B0(v3);
  *v4 = v5;
  v6 = sub_100028434(v4);

  return v7(v6);
}

uint64_t sub_100027F30(void *a1)
{
  v2 = [a1 workflowIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_100027FA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100027FF0()
{
  sub_100028424();
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  v3 = sub_1000283B0(v2);
  *v3 = v4;
  v5 = sub_100028350(v3);

  return sub_100026190(v5, v6, v7, v8, v9, v1);
}

uint64_t sub_1000280C8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100028120()
{
  sub_100028424();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = swift_task_alloc();
  v4 = sub_1000283B0(v3);
  *v4 = v5;
  v6 = sub_100028350(v4);

  return sub_100025768(v6, v7, v8, v9, v10, v2, v1);
}

uint64_t sub_1000281CC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100028224()
{
  sub_100028424();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = swift_task_alloc();
  v5 = sub_1000283B0(v4);
  *v5 = v6;
  v7 = sub_100028350(v5);

  return sub_100025E50(v7, v8, v9, v10, v11, v1, v2, v3);
}

uint64_t sub_1000283A0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100028424()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_100028434(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

double sub_100028460()
{
  result = 0.0;
  *(v0 - 144) = 0u;
  *(v0 - 128) = 0u;
  return result;
}

uint64_t sub_10002849C()
{

  return swift_dynamicCastObjCClass();
}

uint64_t sub_1000284B4()
{
  v1 = *(v0 + 16);
  isa = sub_10002A15C().super.isa;
  LOWORD(v7) = 0;
  v3 = [v1 visibleReferencesForWorkflowIDs:isa sortBy:0 nameContaining:0 nameEqualing:0 hasAssociatedAppBundleIdentifier:0 associatedAppBundleIdentifier:0 isRecentlyModified:v7 isRecentlyRun:0 limitTo:?];

  v4 = [v3 descriptors];
  sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v5 = sub_100028FB8();

  return v5;
}

uint64_t sub_100028574(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6D6F74737563;
  }

  else
  {
    v3 = 0x726F68732D6C6C61;
  }

  if (v2)
  {
    v4 = 0xED00007374756374;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a2)
  {
    v5 = 0x6D6F74737563;
  }

  else
  {
    v5 = 0x726F68732D6C6C61;
  }

  if (a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED00007374756374;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002A31C();
  }

  return v8 & 1;
}

uint64_t sub_10002861C(unsigned __int8 a1, char a2)
{
  v2 = 1953460082;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x6465636E61766461;
    }

    else
    {
      v4 = 0x746F4E6C6167656CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEC00000073656369;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953460082;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x6465636E61766461;
    }

    else
    {
      v2 = 0x746F4E6C6167656CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC00000073656369;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_10002A31C();
  }

  return v8 & 1;
}

id sub_100028724()
{
  v1 = [objc_allocWithZone(WFWorkflowQuery) initWithLocation:0];
  [v1 setResultsLimit:1];
  v2 = [*(v0 + 16) sortedWorkflowsWithQuery:v1];
  v3 = [v2 descriptors];

  sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v4 = sub_10002A16C();

  if (sub_1000134BC(v4))
  {
    sub_100012CC8(0, (v4 & 0xC000000000000001) == 0, v4);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = sub_10002A26C();
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_100028844()
{
  v1 = [*(v0 + 16) sortedVisibleWorkflowsByNameWithLimit:300];
  v2 = [v1 descriptors];
  sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v3 = sub_100028FB8();

  return v3;
}

uint64_t sub_1000288CC()
{
  v1 = *(v0 + 16);
  v2 = sub_10002A0DC();
  LOWORD(v7) = 0;
  v3 = [v1 visibleReferencesForWorkflowIDs:0 sortBy:0 nameContaining:v2 nameEqualing:0 hasAssociatedAppBundleIdentifier:0 associatedAppBundleIdentifier:0 isRecentlyModified:v7 isRecentlyRun:300 limitTo:?];

  v4 = [v3 descriptors];
  sub_10000ADAC(0, &qword_10003CD98, WFWorkflowReference_ptr);
  v5 = sub_100028FB8();

  return v5;
}

uint64_t sub_100028988()
{
  v1 = [*(v0 + 16) sortedVisibleFolders];
  v2 = [v1 descriptors];

  sub_10000ADAC(0, &qword_10003DD10, WFWorkflowCollection_ptr);
  v3 = sub_100028FB8();

  return v3;
}

uint64_t sub_100028A04()
{
  type metadata accessor for ShortcutsWidgetDataSource();
  v0 = swift_allocObject();
  result = sub_100028A40();
  qword_1000415B8 = v0;
  return result;
}

uint64_t sub_100028A40()
{
  v1 = v0;
  v2 = sub_10002995C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v23[-v8];
  *(v0 + 24) = 300;
  v10 = [objc_opt_self() currentProcess];
  sub_1000026A4(&qword_10003DCF8, &unk_100030100);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1000300C0;
  sub_10000ADAC(0, &qword_10003DD00, RBSDomainAttribute_ptr);
  *(v11 + 32) = sub_100028E20();
  v12 = objc_allocWithZone(RBSAssertion);
  v13 = sub_100028F10(0xD000000000000013, 0x800000010002B3B0, v10);
  v24 = 0;
  if ([v13 acquireWithError:&v24])
  {
    v14 = v24;
  }

  else
  {
    v15 = v24;
    sub_10002976C();

    swift_willThrow();
    sub_10002992C();
    v16 = sub_10002994C();
    v17 = sub_10002A1DC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Failed to acquire database initialization assertion", v18, 2u);
    }

    (*(v3 + 8))(v7, v2);
  }

  if ([objc_opt_self() initializeProcessWithDatabase:1])
  {
    sub_10002992C();
    v19 = sub_10002994C();
    v20 = sub_10002A1EC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Failed to initialize database", v21, 2u);
    }

    (*(v3 + 8))(v9, v2);
  }

  *(v1 + 16) = [objc_opt_self() defaultDatabase];
  WFWorkflowIconDrawerGloballyCacheDrawerContext();
  [v13 invalidate];

  return v1;
}

id sub_100028E20()
{
  v0 = sub_10002A0DC();

  v1 = sub_10002A0DC();

  v2 = [swift_getObjCClassFromMetadata() attributeWithDomain:v0 name:v1];

  return v2;
}

uint64_t sub_100028EB4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

id sub_100028F10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002A0DC();

  sub_10000ADAC(0, &qword_10003DD08, RBSAttribute_ptr);
  isa = sub_10002A15C().super.isa;

  v7 = [v3 initWithExplanation:v5 target:a3 attributes:isa];

  return v7;
}

uint64_t sub_100028FB8()
{

  return sub_10002A16C();
}

id sub_100028FF4(void *a1)
{
  v1 = a1;
  v2 = sub_100029060();
  v3 = [v2 localizedStringForKey:v1 value:v1 table:0];

  return v3;
}

id sub_100029060()
{
  if (qword_100041478 != -1)
  {
    dispatch_once(&qword_100041478, &stru_10003A920);
  }

  v1 = qword_100041470;

  return v1;
}

void sub_1000290B4(id a1)
{
  memset(&v5, 0, sizeof(v5));
  if (dladdr(sub_100029060, &v5) && v5.dli_fname)
  {
    v1 = [[NSURL alloc] initFileURLWithFileSystemRepresentation:v5.dli_fname isDirectory:0 relativeToURL:0];
    v2 = _CFBundleCopyBundleURLForExecutableURL();
    v3 = [NSBundle bundleWithURL:v2];
    v4 = qword_100041470;
    qword_100041470 = v3;
  }

  else
  {
    v1 = getWFGeneralLogObject();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v7 = "WFCurrentBundle_block_invoke";
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "%s WFLocalizedString failed to locate current bundle", buf, 0xCu);
    }
  }
}