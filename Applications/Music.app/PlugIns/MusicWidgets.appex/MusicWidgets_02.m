uint64_t sub_10003C3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10003DE50(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003C3F8(uint64_t a1)
{
  v2 = sub_10003C594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C434(uint64_t a1)
{
  v2 = sub_10003C594();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10003C470(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 100));
  v3 = v2;
  return v2;
}

uint64_t sub_10003C4E0(uint64_t a1)
{
  if (qword_1006DF9B8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = sub_10000C49C(a1, qword_1006FC1D8);

  return sub_10003CD6C(v1, v2);
}

unint64_t sub_10003C594()
{
  result = qword_1006E1A70;
  if (!qword_1006E1A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A70);
  }

  return result;
}

unint64_t sub_10003C5E8()
{
  result = qword_1006E1A88;
  if (!qword_1006E1A88)
  {
    sub_100010324(&qword_1006E1A80);
    sub_10003C66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A88);
  }

  return result;
}

unint64_t sub_10003C66C()
{
  result = qword_1006E1A90;
  if (!qword_1006E1A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1A90);
  }

  return result;
}

unint64_t sub_10003C6C0()
{
  result = qword_1006E1AA0;
  if (!qword_1006E1AA0)
  {
    sub_100010324(&qword_1006E1A98);
    sub_10003C744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AA0);
  }

  return result;
}

unint64_t sub_10003C744()
{
  result = qword_1006E1AA8;
  if (!qword_1006E1AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AA8);
  }

  return result;
}

unint64_t sub_10003C798()
{
  result = qword_1006E1AB0;
  if (!qword_1006E1AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AB0);
  }

  return result;
}

uint64_t sub_10003C7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.Placeholder(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003C850()
{
  result = qword_1006E1AC0;
  if (!qword_1006E1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AC0);
  }

  return result;
}

unint64_t sub_10003C8A4()
{
  result = qword_1006E1AD0;
  if (!qword_1006E1AD0)
  {
    sub_100010324(&qword_1006E1AC8);
    sub_10003C928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AD0);
  }

  return result;
}

unint64_t sub_10003C928()
{
  result = qword_1006E1AD8;
  if (!qword_1006E1AD8)
  {
    sub_100010324(&qword_1006E1ED0);
    sub_100014D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AD8);
  }

  return result;
}

uint64_t sub_10003C9AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10003CA0C()
{
  result = qword_1006E1AF0;
  if (!qword_1006E1AF0)
  {
    sub_100010324(&qword_1006E1A80);
    sub_10003CA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AF0);
  }

  return result;
}

unint64_t sub_10003CA90()
{
  result = qword_1006E1AF8;
  if (!qword_1006E1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1AF8);
  }

  return result;
}

unint64_t sub_10003CAE4()
{
  result = qword_1006E1B00;
  if (!qword_1006E1B00)
  {
    sub_100010324(&qword_1006E1A98);
    sub_10003CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B00);
  }

  return result;
}

unint64_t sub_10003CB68()
{
  result = qword_1006E1B08;
  if (!qword_1006E1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B08);
  }

  return result;
}

unint64_t sub_10003CBBC()
{
  result = qword_1006E1B10;
  if (!qword_1006E1B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B10);
  }

  return result;
}

unint64_t sub_10003CC10()
{
  result = qword_1006E1B20;
  if (!qword_1006E1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B20);
  }

  return result;
}

unint64_t sub_10003CC64()
{
  result = qword_1006E1B28;
  if (!qword_1006E1B28)
  {
    sub_100010324(&qword_1006E1AC8);
    sub_10003CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B28);
  }

  return result;
}

unint64_t sub_10003CCE8()
{
  result = qword_1006E1B30;
  if (!qword_1006E1B30)
  {
    sub_100010324(&qword_1006E1ED0);
    sub_100014D78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B30);
  }

  return result;
}

uint64_t sub_10003CD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetMusicItem();
  v5 = v4[9];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (v9 || (sub_100574498() & 1) != 0 || ((v10 = v4[10], v11 = (a1 + v10), v12 = *(a1 + v10 + 8), v13 = (a2 + v10), v14 = v13[1], v12) ? (v15 = v14 == 0) : (v15 = 1), !v15 && (*v11 == *v13 ? (v23 = v12 == v14) : (v23 = 0), v23 || (sub_100574498() & 1) != 0)) || ((v16 = v4[11], v17 = *(a1 + v16), v18 = *(a1 + v16 + 8), v19 = (a2 + v16), v17 == *v19) ? (v20 = v18 == v19[1]) : (v20 = 0), v20 || (v21 = sub_100574498(), result = 0, (v21 & 1) != 0)))
  {
    v24 = v4[12];
    v25 = (a1 + v24);
    v26 = *(a1 + v24 + 8);
    v27 = (a2 + v24);
    v28 = v27[1];
    if (v26)
    {
      if (v28)
      {
        v29 = *v25 == *v27 && v26 == v28;
        if (v29 || (sub_100574498() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v28)
    {
      return 1;
    }

    v30 = v4[13];
    v31 = (a1 + v30);
    v32 = *(a1 + v30 + 8);
    v33 = (a2 + v30);
    v34 = v33[1];
    result = (v32 | v34) == 0;
    if (v32)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      return result;
    }

    if (*v31 != *v33 || v32 != v34)
    {

      return sub_100574498();
    }

    return 1;
  }

  return result;
}

uint64_t sub_10003CEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10003CF5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003CFA4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1006800F8;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003CFF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_10003D150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006E1B78);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D7E0();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v27 = 0;
  sub_1000104C0();
  sub_1005742D8();
  v9 = v28;
  v26 = v29;
  LOBYTE(v28) = 1;
  v10 = sub_100574298();
  v25 = v11;
  v22 = v10;
  v23 = v9;
  LOBYTE(v28) = 2;
  v12 = sub_100574298();
  v24 = v13;
  LOBYTE(v28) = 3;
  sub_1005742B8();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  v16 = v12;
  v17 = v26;

  v18 = v25;

  v19 = v24;

  sub_100010474(a1);

  v21 = v22;
  *a2 = v23;
  a2[1] = v17;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v16;
  a2[5] = v19;
  a2[6] = v15;
  return result;
}

uint64_t sub_10003D454(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65657267 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1702194274 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_10003D568(void *a1)
{
  v2 = sub_100009DCC(&qword_1006E1B60);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000C8CC(a1, a1[3]);
  sub_10003D78C();
  sub_100574708();
  v9 = 0;
  sub_10003C850();
  sub_1005742D8();
  v6 = v10;
  v9 = 1;
  sub_1005742D8();
  v9 = 2;
  sub_1005742D8();
  (*(v3 + 8))(v5, v2);
  sub_100010474(a1);
  return v6;
}

unint64_t sub_10003D78C()
{
  result = qword_1006E1B68;
  if (!qword_1006E1B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B68);
  }

  return result;
}

unint64_t sub_10003D7E0()
{
  result = qword_1006E1B80;
  if (!qword_1006E1B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B80);
  }

  return result;
}

unint64_t sub_10003D834()
{
  result = qword_1006E1B90;
  if (!qword_1006E1B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetMusicItem.ContainerTrack.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.ContainerTrack.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WidgetMusicItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetMusicItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003DB3C()
{
  result = qword_1006E1B98;
  if (!qword_1006E1B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1B98);
  }

  return result;
}

unint64_t sub_10003DB94()
{
  result = qword_1006E1BA0;
  if (!qword_1006E1BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BA0);
  }

  return result;
}

unint64_t sub_10003DBEC()
{
  result = qword_1006E1BA8;
  if (!qword_1006E1BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BA8);
  }

  return result;
}

unint64_t sub_10003DC44()
{
  result = qword_1006E1BB0;
  if (!qword_1006E1BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BB0);
  }

  return result;
}

unint64_t sub_10003DC9C()
{
  result = qword_1006E1BB8;
  if (!qword_1006E1BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BB8);
  }

  return result;
}

unint64_t sub_10003DCF4()
{
  result = qword_1006E1BC0;
  if (!qword_1006E1BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BC0);
  }

  return result;
}

unint64_t sub_10003DD4C()
{
  result = qword_1006E1BC8;
  if (!qword_1006E1BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BC8);
  }

  return result;
}

unint64_t sub_10003DDA4()
{
  result = qword_1006E1BD0;
  if (!qword_1006E1BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BD0);
  }

  return result;
}

unint64_t sub_10003DDFC()
{
  result = qword_1006E1BD8;
  if (!qword_1006E1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1BD8);
  }

  return result;
}

uint64_t sub_10003DE50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469747265707573 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_100574498() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44496D657469 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x49676F6C61746163 && a2 == 0xE900000000000044 || (sub_100574498() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4970655269726973 && a2 == 0xE900000000000044 || (sub_100574498() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF44496D65744972 || (sub_100574498() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA20 == a2 || (sub_100574498() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA40 == a2 || (sub_100574498() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x736567646162 && a2 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x626179616C507369 && a2 == 0xEA0000000000656CLL || (sub_100574498() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_100574498() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AA4F0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xEF736B6361725472 || (sub_100574498() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001005AAA60 == a2 || (sub_100574498() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_100574498() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001005AAA80 == a2 || (sub_100574498() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001005AAAA0 == a2 || (sub_100574498() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x49656C6261646F63 && a2 == 0xEC0000006567616DLL || (sub_100574498() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001005AAAC0 == a2)
  {

    return 22;
  }

  else
  {
    v6 = sub_100574498();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

id sub_10003E57C(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_10003E58C(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;
  sub_100009DCC(&qword_1006E1BF8);
  *(v2 + 40) = swift_task_alloc();
  sub_100009DCC(&qword_1006E1C00);
  *(v2 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_10003E664, 0, 0);
}

uint64_t sub_10003E664()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = [objc_opt_self() currentTraitCollection];
  [v3 displayScale];

  sub_100571D38();
  v4 = sub_100571DC8();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  v5 = enum case for Artwork.ImageFormat.jpeg(_:);
  v6 = sub_100571D28();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_10003E830;
  v9 = v0[5];
  v10 = v0[6];

  return Artwork.image(width:height:pixelLength:cropStyle:format:cacheOwner:)(v10, v9, 0, 0);
}

uint64_t sub_10003E830(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[8] = v1;

  v6 = v4[6];
  sub_10001036C(v4[5], &qword_1006E1BF8);
  sub_10001036C(v6, &qword_1006E1C00);
  if (v1)
  {

    return _swift_task_switch(sub_10003E9EC, 0, 0);
  }

  else
  {

    v7 = v5[1];

    return v7(a1);
  }
}

uint64_t sub_10003E9EC()
{
  v14 = v0;
  if (qword_1006DF9C0 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E1BE0);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[8];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    swift_errorRetain();
    sub_100009DCC(&qword_1006E1C08);
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to retrieve image from artwork with error: %{public}s", v6, 0xCu);
    sub_100010474(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11(0);
}

uint64_t sub_10003EBD0()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E1BE0);
  sub_10000C49C(v0, qword_1006E1BE0);
  return static Logger.music(_:)();
}

uint64_t sub_10003EC34()
{
  result = sub_10056C8A8();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003ED0C()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E1C10);
  sub_10000C49C(v0, qword_1006E1C10);
  return static Logger.music(_:)();
}

uint64_t sub_10003ED7C()
{
  v1 = sub_100009DCC(&unk_1006E1E90);
  __chkstk_darwin(v1 - 8);
  v44 = &v43 - v2;
  v46[0] = sub_100572928();
  v3 = *(v46[0] - 8);
  __chkstk_darwin(v46[0]);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[1];
  v46[7] = *v0;
  v46[8] = v6;
  v7 = v0[3];
  v46[9] = v0[2];
  v46[10] = v7;
  v9 = v0[4];
  v8 = v0[5];
  v45 = v0;
  v46[11] = v9;
  v46[12] = v8;

  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
LABEL_2:
  if (v11 <= 3)
  {
    v13 = 3;
  }

  else
  {
    v13 = v11;
  }

  v14 = v13 + 1;
  v15 = 16 * v11 + 40;
  while (v11 != 3)
  {
    if (v14 == ++v11)
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v16 = v15 + 16;
    v17 = *(&v46[3] + v15);
    v15 += 16;
    if (v17)
    {
      v18 = *(v46 + v16);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100040B4C(0, v12[2] + 1, 1, v12);
        v12 = result;
      }

      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        result = sub_100040B4C((v19 > 1), v20 + 1, 1, v12);
        v12 = result;
      }

      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      v21[4] = v18;
      v21[5] = v17;
      goto LABEL_2;
    }
  }

  sub_100009DCC(&qword_1006DFD58);
  result = swift_arrayDestroy();
  v22 = 0;
  v23 = (v3 + 8);
  v24 = v12 + 5;
  v25 = -v12[2];
  v26 = -1;
  while (v25 + v26 != -1)
  {
    if (++v26 >= v12[2])
    {
      goto LABEL_32;
    }

    v27 = v24 + 2;
    v28 = *v24;
    v46[1] = *(v24 - 1);
    v46[2] = v28;

    sub_100572918();
    sub_10001B550();
    v29 = sub_100573CA8();
    (*v23)(v5, v46[0]);

    v24 = v27;
    v30 = __OFADD__(v22, v29);
    v22 += v29;
    if (v30)
    {
      __break(1u);
      break;
    }
  }

  v31 = type metadata accessor for PosterWidgetConfiguration.BasicMusicItem();
  v33 = v44;
  v32 = v45;
  sub_10001F588(v45 + *(v31 + 32), v44);
  v34 = sub_10056CAA8();
  v35 = (*(*(v34 - 8) + 48))(v33, 1, v34) != 1;
  sub_10002FB84(v33);
  result = *(v32 + *(v31 + 40));
  if (!result)
  {
    goto LABEL_25;
  }

  result = [result size];
  v38 = v36 * v37;
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_38;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v38 >= 9.22337204e18)
  {
    __break(1u);
LABEL_25:
    v38 = 0.0;
  }

  if ((v38 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v39 = 8 * v35;
  v30 = __OFADD__(v22, v39);
  v40 = v22 + v39;
  if (v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = __OFADD__(v40, 2);
  v41 = v40 + 2;
  if (v30)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v42 = 4 * v38;
  result = v41 + v42;
  if (!__OFADD__(v41, v42))
  {
    return result;
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_10003F180(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

void sub_10003F1AC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
}

uint64_t (*sub_10003F1E4(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 40);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_100041C70;
}

uint64_t sub_10003F240()
{
  v1 = v0;
  v2 = v113;
  v3 = sub_100009DCC(&unk_1006E1E90);
  __chkstk_darwin(v3 - 8);
  v100 = &v86 - v4;
  v5 = sub_100572928();
  v101 = *(v5 - 8);
  __chkstk_darwin(v5);
  v103 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v102 = *(v0 + 1);
  v115 = v102;
  v8 = v0[3];
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v114 = v7;
  v116 = v8;
  v117 = v9;
  v118 = v10;
  v11 = type metadata accessor for WidgetMusicItem();
  v12 = *(v11 + 28);

  v119 = sub_10056C7A8();
  v120 = v13;
  v92 = v11;
  v14 = *(v1 + *(v11 + 32));
  if (v14 <= 3)
  {
    if (*(v1 + *(v11 + 32)) > 1u)
    {
      if (v14 == 2)
      {
        v15 = xmmword_10057E200;
      }

      else
      {
        v15 = xmmword_10057E1F0;
      }
    }

    else if (*(v1 + *(v11 + 32)))
    {
      v15 = xmmword_10057E210;
    }

    else
    {
      v15 = xmmword_10057E1A0;
    }

    goto LABEL_18;
  }

  if (*(v1 + *(v11 + 32)) <= 5u)
  {
    if (v14 == 4)
    {
      v15 = xmmword_10057E1E0;
    }

    else
    {
      v15 = xmmword_10057E1D0;
    }

    goto LABEL_18;
  }

  if (v14 == 6)
  {
    v15 = xmmword_10057E1C0;
    goto LABEL_18;
  }

  if (v14 == 7)
  {
    v15 = xmmword_10057E1B0;
LABEL_18:
    v121 = v15;
    goto LABEL_19;
  }

  v121 = 0uLL;
LABEL_19:
  v16 = (v1 + v92[9]);
  v17 = v16[1];
  v122 = *v16;
  v123 = v17;
  v18 = (v1 + v92[10]);
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;
  }

  else
  {
    v20 = 0;
  }

  v124 = v20;
  v125 = v19;
  v21 = (v1 + v92[11]);
  v22 = v21[1];
  v126 = *v21;
  v127 = v22;
  v23 = (v1 + v92[12]);
  v24 = v23[1];
  v95 = v5;
  if (v24)
  {
    v25 = *v23;
  }

  else
  {
    v25 = 0;
  }

  v128 = v25;
  v129 = v24;
  v26 = (v1 + v92[13]);
  v27 = v26[1];
  if (v27)
  {
    v28 = *v26;
  }

  else
  {
    v28 = 0;
  }

  v130 = v28;
  v131 = v27;
  v29 = (v1 + v92[14]);
  v30 = v29[1];
  v132 = *v29;
  v133 = v30;
  v31 = v92[19];
  v91 = v1;
  v32 = (v1 + v31);
  v33 = v32[1];
  v134 = *v32;
  v135 = v33;

  v34 = 0;
  v35 = _swiftEmptyArrayStorage;
  v36 = 12;
  v37 = v113;
LABEL_29:
  if (v34 <= 0xC)
  {
    v38 = 12;
  }

  else
  {
    v38 = v34;
  }

  v39 = v38 + 1;
  v40 = 16 * v34 + 40;
  v41 = v95;
  while (1)
  {
    if (v34 == 12)
    {
      sub_100009DCC(&qword_1006DFD58);
      swift_arrayDestroy();
      v19 = 0;
      v46 = *(v35 + 2);
      *&v102 = v101 + 8;
      v39 = (v35 + 40);
      v12 = -v46;
      v36 = -1;
      do
      {
        if (v12 + v36 == -1)
        {
          goto LABEL_47;
        }

        if (++v36 >= *(v35 + 2))
        {
          goto LABEL_90;
        }

        v37 = (v39 + 16);
        v34 = *v39;
        v111 = *(v39 - 8);
        v112 = v34;

        v2 = v103;
        sub_100572918();
        sub_10001B550();
        v17 = sub_100573CA8();
        (*v102)(v2, v41);

        v39 = v37;
        v47 = __OFADD__(v19, v17);
        v19 += v17;
      }

      while (!v47);
      __break(1u);
LABEL_47:
      v90 = v19;

      v48 = v91;
      v49 = v92;
      v50 = v100;
      sub_10001F588(v91 + v92[17], v100);
      v51 = sub_10056CAA8();
      v89 = (*(*(v51 - 8) + 48))(v50, 1, v51) != 1;
      sub_10002FB84(v50);
      sub_100009DCC(&qword_1006E1EB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10057B500;
      v53 = v48 + v49[21];
      v2 = *v53;
      v37 = *(v53 + 8);
      v35 = *(v53 + 16);
      LOBYTE(v53) = *(v53 + 24);
      *(inited + 32) = v2;
      *(inited + 40) = v37;
      *(inited + 48) = v35;
      *(inited + 56) = v53;
      v54 = (v48 + v49[22]);
      v12 = v54[1];
      v36 = v54[2];
      LOBYTE(v41) = *(v54 + 24);
      v101 = *v54;
      *(inited + 64) = v101;
      *(inited + 72) = v12;
      *(inited + 80) = v36;
      *(inited + 88) = v41;
      v17 = _swiftEmptyArrayStorage;
      if (v53)
      {
        goto LABEL_50;
      }

      v100 = inited;
      v17 = sub_100040C58(0, 1, 1, _swiftEmptyArrayStorage);
      v34 = *(v17 + 16);
      v39 = *(v17 + 24);
      v19 = v34 + 1;
      if (v34 < v39 >> 1)
      {
        goto LABEL_49;
      }

      goto LABEL_105;
    }

    if (v39 == ++v34)
    {
      break;
    }

    v42 = v40 + 16;
    v17 = *&v113[v40];
    v40 += 16;
    if (v17)
    {
      v43 = *(&v110[12] + v42);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = sub_100040B4C(0, *(v35 + 2) + 1, 1, v35);
      }

      v12 = *(v35 + 2);
      v44 = *(v35 + 3);
      v19 = v12 + 1;
      if (v12 >= v44 >> 1)
      {
        v35 = sub_100040B4C((v44 > 1), v12 + 1, 1, v35);
      }

      *(v35 + 2) = v19;
      v45 = &v35[16 * v12];
      *(v45 + 4) = v43;
      *(v45 + 5) = v17;
      goto LABEL_29;
    }
  }

LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
  do
  {
    __break(1u);
    do
    {
      __break(1u);
LABEL_105:
      v17 = sub_100040C58((v39 > 1), v19, 1, v17);
LABEL_49:
      *(v17 + 16) = v19;
      v55 = (v17 + 24 * v34);
      v55[4] = v2;
      v55[5] = v37;
      v55[6] = v35;
LABEL_50:

      if (v41)
      {
        v2 = v103;
        v35 = v102;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = v103;
        v35 = v102;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_100040C58(0, *(v17 + 16) + 1, 1, v17);
        }

        v58 = *(v17 + 16);
        v57 = *(v17 + 24);
        if (v58 >= v57 >> 1)
        {
          v17 = sub_100040C58((v57 > 1), v58 + 1, 1, v17);
        }

        *(v17 + 16) = v58 + 1;
        v59 = (v17 + 24 * v58);
        v59[4] = v101;
        v59[5] = v12;
        v59[6] = v36;
      }

      v19 = *(v17 + 16);

      v39 = (v19 * 24) >> 64;
      v34 = v91;
      if (v39 != (24 * v19) >> 63)
      {
        goto LABEL_94;
      }

      v12 = *(v91 + v92[20]);
      v36 = *(v12 + 16);
      v87 = *(*(v91 + v92[15]) + 16);
      v88 = 24 * v19;
      if (v36)
      {
        v110[0] = _swiftEmptyArrayStorage;
        v17 = v110;
        sub_100041470(0, v36, 0);
        v60 = 0;
        v61 = v110[0];
        v62 = (v12 + 72);
        v41 = &type metadata for String;
        v93 = v36;
        v94 = v12;
        while (1)
        {
          v39 = *(v12 + 16);
          if (v60 >= v39)
          {
            goto LABEL_92;
          }

          v97 = v60;
          v98 = v61;
          v63 = *(v62 - 5);
          v64 = *(v62 - 4);
          v65 = *(v62 - 3);
          v66 = *(v62 - 2);
          v67 = *(v62 - 1);
          v68 = *v62;
          v96 = v62;
          v104 = v63;
          v105 = v64;
          v106 = v65;
          v107 = v66;
          v108 = v67;
          v109 = v68;
          swift_bridgeObjectRetain_n();
          v100 = v66;
          swift_bridgeObjectRetain_n();
          v99 = v68;
          swift_bridgeObjectRetain_n();
          v111 = v63;
          v112 = v64;

          sub_100572918();
          v37 = sub_10001B550();
          v12 = sub_100573CA8();
          v19 = *v35;
          v34 = v95;
          (*v35)(v2, v95);
          v101 = v64;

          v36 = v35;
          v111 = v106;
          v112 = v107;

          sub_100572918();
          v17 = sub_100573CA8();
          (v19)(v2, v34);

          v35 = (v12 + v17);
          if (__OFADD__(v12, v17) || (v12 = v109, v111 = v108, v112 = v109, , sub_100572918(), v69 = sub_100573CA8(), (v19)(v2, v34), , v47 = __OFADD__(v35, v69), v17 = &v35[v69], v47))
          {
            __break(1u);
            goto LABEL_89;
          }

          swift_arrayDestroy();
          v34 = v17 + 8;
          if (__OFADD__(v17, 8))
          {
            goto LABEL_93;
          }

          v61 = v98;
          v110[0] = v98;
          v71 = v98[2];
          v70 = v98[3];
          v19 = v71 + 1;
          if (v71 >= v70 >> 1)
          {
            v17 = v110;
            sub_100041470((v70 > 1), v71 + 1, 1);
            v61 = v110[0];
          }

          v72 = v96;
          v60 = v97 + 1;
          v61[2] = v19;
          v61[v71 + 4] = v34;
          v62 = v72 + 7;
          v36 = v93;
          v12 = v94;
          v2 = v103;
          v35 = v102;
          if (v93 == v60)
          {
            v34 = v91;
            goto LABEL_69;
          }
        }
      }

      v61 = _swiftEmptyArrayStorage;
      v19 = _swiftEmptyArrayStorage[2];
      if (v19)
      {
LABEL_69:
        v17 = 0;
        v39 = 32;
        while (1)
        {
          v73 = *(v61 + v39);
          v47 = __OFADD__(v17, v73);
          v17 += v73;
          if (v47)
          {
            goto LABEL_91;
          }

          v39 += 8;
          if (!--v19)
          {
            goto LABEL_72;
          }
        }
      }

      v17 = 0;
LABEL_72:

      v74 = *(v34 + v92[25]);
      if (!v74)
      {
        goto LABEL_77;
      }

      [v74 size];
      v77 = v75 * v76;
      v39 = *&v77 & 0x7FFFFFFFFFFFFFFFLL;
    }

    while ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
    v39 = 0xC3E0000000000001;
    if (v77 <= -9.22337204e18)
    {
      goto LABEL_95;
    }

    if (v77 >= 9.22337204e18)
    {
      __break(1u);
LABEL_77:
      v77 = 0.0;
    }

    v39 = v77;
    if ((v77 - 0x2000000000000000) >> 62 != 3)
    {
      goto LABEL_96;
    }

    v78 = 8 * v89;
    v47 = __OFADD__(v90, v78);
    v79 = v90 + v78;
    if (v47)
    {
      goto LABEL_97;
    }

    v47 = __OFADD__(v79, v88);
    v80 = v79 + v88;
    if (v47)
    {
      goto LABEL_98;
    }

    v47 = __OFADD__(v80, 1);
    v81 = v80 + 1;
    if (v47)
    {
      goto LABEL_99;
    }

    v47 = __OFADD__(v81, v87 + 1);
    v82 = v81 + v87 + 1;
    if (v47)
    {
      goto LABEL_100;
    }

    v47 = __OFADD__(v82, 8);
    v83 = v82 + 8;
    if (v47)
    {
      goto LABEL_101;
    }

    v47 = __OFADD__(v83, v17);
    v84 = v83 + v17;
    if (v47)
    {
      goto LABEL_102;
    }

    v39 *= 4;
    result = v84 + v39;
  }

  while (__OFADD__(v84, v39));
  return result;
}

uint64_t sub_10003FCBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  *a2 = *v3;
  a2[1] = v4;
}

uint64_t sub_10003FCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10056CAA8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_10003FD3C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 100);

  *(v2 + v4) = a1;
}

uint64_t (*sub_10003FD74(uint64_t a1, uint64_t a2))()
{
  v3 = *(a2 + 100);
  v4 = *(v2 + v3);
  *(a1 + 24) = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_10003FDCC;
}

void sub_10003FDD0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *a1;
  if (a2)
  {
    v6 = v5;

    *(v3 + v4) = v5;
  }

  else
  {

    *(v3 + v4) = v5;
  }
}

uint64_t sub_10003FE50()
{
  v1 = *(*v0 + 112);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  v3 = *(*v0 + 120);
  v4 = type metadata accessor for WidgetLRUCache.DiskEntry();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 144);
  v6 = sub_10056CAA8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = *(*v0 + 168);
  v8 = sub_100573C28();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_100040070()
{
  sub_10003FE50();

  return swift_deallocClassInstance();
}

uint64_t sub_1000400C8()
{
  v1 = v0;
  if (*(v0 + qword_1006E1C40))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1005736A8();
    swift_unknownObjectRelease();
  }

  if (qword_1006DF9C8 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  sub_10000C49C(v2, qword_1006E1C10);
  v3 = sub_10056DF68();
  v4 = sub_100573448();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "WidgetLRUCache deinitialized, memory pressure listener cancelled.", v5, 2u);
  }

  v6 = qword_1006E1C28;
  v7 = sub_10056C8A8();
  (*(*(v7 - 8) + 8))(v1 + v6, v7);

  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_100040274()
{
  sub_1000400C8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000402BC()
{
  result = swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetLRUCache.DiskEntry();
    if (v2 <= 0x3F)
    {
      result = sub_10056CAA8();
      if (v3 <= 0x3F)
      {
        result = sub_100573C28();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

void sub_100040488()
{
  sub_10056C8A8();
  if (v0 <= 0x3F)
  {
    sub_100040738();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100040520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056C8A8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(qword_1006E1D50);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 52);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100040630(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10056C8A8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(qword_1006E1D50);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 52);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100040738()
{
  if (!qword_1006E1DD8)
  {
    sub_10056C8A8();
    v0 = sub_100573C28();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E1DD8);
    }
  }
}

char *sub_10004081C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1F10);
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

char *sub_100040910(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&unk_1006E1F18);
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

char *sub_100040A04(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006DFDC0);
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

char *sub_100040B4C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100040C58(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

size_t sub_100040EA4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5);
  v14 = *(sub_100009DCC(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_100009DCC(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000410B4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006E1EF0);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_100009DCC(&qword_1006E1EF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100041210(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1000413EC(void *a1, int64_t a2, char a3)
{
  result = sub_100041554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10004140C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000418AC(a1, a2, a3, *v3, &qword_1006E1F08, &unk_10057E3C8, &type metadata accessor for Playlist);
  *v3 = result;
  return result;
}

char *sub_100041450(char *a1, int64_t a2, char a3)
{
  result = sub_100041688(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100041470(char *a1, int64_t a2, char a3)
{
  result = sub_1000417A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100041490(size_t a1, int64_t a2, char a3)
{
  result = sub_1000418AC(a1, a2, a3, *v3, &qword_1006E1F00, &unk_10057E3C0, &type metadata accessor for Album);
  *v3 = result;
  return result;
}

size_t sub_1000414D4(size_t a1, int64_t a2, char a3)
{
  result = sub_100041A88(a1, a2, a3, *v3, &qword_1006E1F28, &unk_10057E3E8, &qword_1006E1F30);
  *v3 = result;
  return result;
}

size_t sub_100041514(size_t a1, int64_t a2, char a3)
{
  result = sub_100041A88(a1, a2, a3, *v3, &qword_1006E1F58, &unk_10057E418, &qword_1006E1F60);
  *v3 = result;
  return result;
}

void *sub_100041554(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006E1EC8);
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
    sub_100009DCC(&qword_1006E1ED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100041688(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006DFDC0);
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

char *sub_1000417A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006E1EC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_1000418AC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_100041A88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100009DCC(a5);
  v14 = *(sub_100009DCC(a7) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(sub_100009DCC(a7) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_100041C8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
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

uint64_t sub_100041D5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
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

uint64_t type metadata accessor for PinsWidgetTimelineProvider.Entry()
{
  result = qword_1006E1FF8;
  if (!qword_1006E1FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041E60()
{
  sub_10056CAA8();
  if (v0 <= 0x3F)
  {
    sub_100041F74(319, &unk_1006E2008, type metadata accessor for WidgetMusicPin, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100041F74(319, &qword_1006E06A0, sub_1000168CC, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_10001F8F4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100041F74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100041FE8()
{
  v1 = sub_10056DF88();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_100570DD8();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = sub_100570E18();
  v0[8] = v3;
  v0[9] = *(v3 - 8);
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_10004215C, 0, 0);
}

uint64_t sub_10004215C()
{
  (*(v0[6] + 104))(v0[7], enum case for MusicSubscription.PrivacyAcknowledgementPolicy.promptProhibited(_:), v0[5]);
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_10004221C;
  v2 = v0[10];
  v3 = v0[7];

  return static MusicSubscription.current(privacyAcknowledgementPolicy:)(v2, v3);
}

uint64_t sub_10004221C()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_100042434;
  }

  else
  {
    v5 = sub_10004238C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10004238C()
{
  v1 = sub_100570E08();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v2 = v0[1];

  return v2(v1 & 1);
}

uint64_t sub_100042434()
{
  static Logger.music(_:)();
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unable to get subscription state with error %{public}@", v3, 0xCu);
    sub_10001036C(v4, &qword_1006DFD00);
  }

  else
  {
  }

  (*(v0[3] + 8))(v0[4], v0[2]);

  v6 = v0[1];

  return v6(0);
}

uint64_t sub_1000425F4()
{
  v1 = type metadata accessor for WidgetMusicPin();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = (&v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = type metadata accessor for PinsWidgetTimelineProvider.Entry();
  v6 = *(v0 + *(result + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  while (v8 < *(v6 + 16))
  {
    sub_1000459C8(v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v4, type metadata accessor for WidgetMusicPin);
    v10 = (v4 + v1[7]);
    v11 = *v10;
    v12 = v10[1];
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v13 = sub_10000C49C(v1, qword_1006FC080);
    v14 = (v13 + v1[7]);
    v15 = v11 == *v14 && v12 == v14[1];
    if (!v15 && (sub_100574498() & 1) == 0)
    {
LABEL_31:
      sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
      return 0;
    }

    v16 = v1[8];
    v17 = (v4 + v16);
    v18 = *(v4 + v16 + 8);
    v19 = (v13 + v16);
    v20 = v19[1];
    if (v18)
    {
      if (!v20)
      {
        goto LABEL_31;
      }

      v21 = *v17 == *v19 && v18 == v20;
      if (!v21 && (sub_100574498() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v20)
    {
      goto LABEL_31;
    }

    v22 = v1[9];
    v23 = *(v4 + v22);
    v24 = *(v4 + v22 + 8);
    v25 = (v13 + v22);
    v26 = v23 == *v25 && v24 == v25[1];
    if (!v26 && (sub_100574498() & 1) == 0)
    {
      goto LABEL_31;
    }

    if (*v4 == *v13 && v4[1] == v13[1])
    {
      result = sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
    }

    else
    {
      v9 = sub_100574498();
      result = sub_100045A98(v4, type metadata accessor for WidgetMusicPin);
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    if (v7 == ++v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100042898()
{
  result = qword_1006E2040;
  if (!qword_1006E2040)
  {
    type metadata accessor for PinsWidgetTimelineProvider.Entry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2040);
  }

  return result;
}

int *sub_1000428F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for WidgetMusicPin();
  __chkstk_darwin(v2);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1005724A8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v18 - v10;
  sub_1005725C8();
  if (qword_1006DF908 != -1)
  {
    swift_once();
  }

  v12 = sub_10000C49C(v2, qword_1006FC080);
  sub_1000459C8(v12, v4, type metadata accessor for WidgetMusicPin);
  (*(v6 + 16))(v9, v11, v5);
  v13 = (*(v6 + 88))(v9, v5);
  if (v13 == enum case for WidgetFamily.systemMedium(_:))
  {
    v14 = 4;
  }

  else if (v13 == enum case for WidgetFamily.systemLarge(_:))
  {
    v14 = 6;
  }

  else
  {
    (*(v6 + 8))(v9, v5);
    v14 = 0;
  }

  v15 = sub_10006B6C4(v4, v14);
  sub_10056CA98();
  (*(v6 + 8))(v11, v5);
  result = type metadata accessor for PinsWidgetTimelineProvider.Entry();
  *(a1 + result[5]) = v15;
  *(a1 + result[6]) = 0;
  v17 = (a1 + result[7]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_100042B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_1005724A8();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  type metadata accessor for PinsWidgetTimelineProvider.Entry();
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_100042C4C, 0, 0);
}

uint64_t sub_100042C4C()
{
  sub_1005725C8();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100042CEC;
  v3 = v0[7];
  v2 = v0[8];

  return sub_100042EE4(v2, v3);
}

uint64_t sub_100042CEC()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100042E44, 0, 0);
}

uint64_t sub_100042E44()
{
  v1 = *(v0 + 64);
  (*(v0 + 16))(v1);
  sub_100045A98(v1, type metadata accessor for PinsWidgetTimelineProvider.Entry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042EE4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1005724A8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for WidgetMusicPin();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_100042FEC, 0, 0);
}

uint64_t sub_100042FEC()
{
  if (sub_100058BC8())
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v1 = sub_10056DF88();
    sub_10000C49C(v1, qword_1006FC2D8);
    v2 = sub_10056DF68();
    v3 = sub_100573428();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Can't use widget. Privacy acknowledgement required.", v4, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v6 = qword_1006FC158;
    v5 = unk_1006FC160;
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v11 = v0[3];
    v10 = v0[4];
    v12 = sub_10000C49C(v0[8], qword_1006FC080);
    sub_1000459C8(v12, v7, type metadata accessor for WidgetMusicPin);
    (*(v9 + 16))(v8, v11, v10);
    v13 = (*(v9 + 88))(v8, v10);
    if (v13 == enum case for WidgetFamily.systemMedium(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for WidgetFamily.systemLarge(_:))
    {
      v14 = 6;
    }

    else
    {
      (*(v0[5] + 8))(v0[6], v0[4]);
      v14 = 0;
    }

    v17 = v0[2];
    v18 = sub_10006B6C4(v0[9], v14);

    sub_10056CA98();
    v19 = type metadata accessor for PinsWidgetTimelineProvider.Entry();
    *(v17 + v19[5]) = v18;
    *(v17 + v19[6]) = 0;
    v20 = (v17 + v19[7]);
    *v20 = v6;
    v20[1] = v5;

    v21 = v0[1];

    return v21();
  }

  else
  {
    v15 = swift_task_alloc();
    v0[11] = v15;
    *v15 = v0;
    v15[1] = sub_100043330;

    return sub_100041FE8();
  }
}

uint64_t sub_100043330(char a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100043430, 0, 0);
}

uint64_t sub_100043430()
{
  if (*(v0 + 112) == 1)
  {
    if (qword_1006DFA98 != -1)
    {
      swift_once();
    }

    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_1000437AC;

    return sub_1000BD5D4();
  }

  else
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v3 = sub_10056DF88();
    sub_10000C49C(v3, qword_1006FC2D8);
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Can't use widget. Cloud Library required.", v6, 2u);
    }

    if (qword_1006DF978 != -1)
    {
      swift_once();
    }

    v8 = qword_1006FC178;
    v7 = unk_1006FC180;
    if (qword_1006DF908 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 80);
    v10 = *(v0 + 56);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    v13 = *(v0 + 24);
    v14 = sub_10000C49C(*(v0 + 64), qword_1006FC080);
    sub_1000459C8(v14, v9, type metadata accessor for WidgetMusicPin);
    (*(v12 + 16))(v10, v13, v11);
    v15 = (*(v12 + 88))(v10, v11);
    if (v15 == enum case for WidgetFamily.systemMedium(_:))
    {
      v16 = 4;
    }

    else if (v15 == enum case for WidgetFamily.systemLarge(_:))
    {
      v16 = 6;
    }

    else
    {
      (*(*(v0 + 40) + 8))(*(v0 + 56), *(v0 + 32));
      v16 = 0;
    }

    v17 = *(v0 + 16);
    v18 = sub_10006B6C4(*(v0 + 80), v16);

    sub_10056CA98();
    v19 = type metadata accessor for PinsWidgetTimelineProvider.Entry();
    *(v17 + v19[5]) = v18;
    *(v17 + v19[6]) = 0;
    v20 = (v17 + v19[7]);
    *v20 = v8;
    v20[1] = v7;

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_1000437AC(uint64_t a1)
{
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_1000438AC, 0, 0);
}

uint64_t sub_1000438AC()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[2];
    sub_10056CA98();
    v3 = type metadata accessor for PinsWidgetTimelineProvider.Entry();
    *(v2 + v3[5]) = v1;
    *(v2 + v3[6]) = 0;
    v4 = (v2 + v3[7]);
    *v4 = 0;
    v4[1] = 0;
  }

  else
  {
    if (qword_1006DFA50 != -1)
    {
      swift_once();
    }

    v5 = sub_10056DF88();
    sub_10000C49C(v5, qword_1006FC2D8);
    v6 = sub_10056DF68();
    v7 = sub_100573448();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "No pinned items.", v8, 2u);
    }

    if (qword_1006DF998 != -1)
    {
      swift_once();
    }

    v9 = v0[13];
    v10 = v0[2];
    v12 = qword_1006FC1B8;
    v11 = unk_1006FC1C0;

    sub_10056CA98();
    v13 = type metadata accessor for PinsWidgetTimelineProvider.Entry();
    *(v10 + v13[5]) = v9;
    *(v10 + v13[6]) = 0;
    v14 = (v10 + v13[7]);
    *v14 = v12;
    v14[1] = v11;
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_100043A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_100009DCC(&qword_1006E2048);
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = sub_100009DCC(&qword_1006E0518);
  v6[9] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528);
  v6[10] = swift_task_alloc();
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = *(type metadata accessor for WidgetMusicPin() - 8);
  v6[15] = swift_task_alloc();
  v9 = sub_10056CAA8();
  v6[16] = v9;
  v6[17] = *(v9 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v10 = sub_100572578();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v11 = sub_1005724A8();
  v6[27] = v11;
  v6[28] = *(v11 - 8);
  v6[29] = swift_task_alloc();
  v12 = type metadata accessor for PinsWidgetTimelineProvider.Entry();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = sub_100009DCC(&qword_1006E0520);
  v6[38] = swift_task_alloc();
  v6[39] = sub_100009DCC(&qword_1006E0510);
  v6[40] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_100043F2C, 0, 0);
}

uint64_t sub_100043F2C()
{
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 344) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 352) = v2;
  *v2 = v0;
  v2[1] = sub_100044044;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 376, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_100044044()
{

  return _swift_task_switch(sub_100044140, 0, 0);
}

uint64_t sub_100044140()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 344);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 304);
  v6 = *(v0 + 312);
  v7 = *(v0 + 296);
  *(v0 + 377) = *(v0 + 376);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, v4, &qword_1006E0510);
  sub_10006F60C(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8), v1);
  sub_10001036C(v4, &qword_1006E0510);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, v4, &qword_1006E0510);
  sub_10006F60C(*(v4 + *(v6 + 44)), *(v4 + *(v6 + 44) + 8), v3);
  sub_10001036C(v4, &qword_1006E0510);
  sub_10000CC8C(*(v2 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, v5, &qword_1006E0520);
  v8 = sub_10006FEA0(*(v5 + *(v7 + 44)), *(v5 + *(v7 + 44) + 8));
  sub_10001036C(v5, &qword_1006E0520);
  if (v8 == 1)
  {
    v9 = 0;
  }

  else
  {
    v10 = v8;
    v9 = v8;
  }

  *(v0 + 360) = v9;
  sub_100019990(v8);
  sub_1005725C8();
  v11 = swift_task_alloc();
  *(v0 + 368) = v11;
  *v11 = v0;
  v11[1] = sub_100044338;
  v12 = *(v0 + 288);
  v13 = *(v0 + 232);

  return sub_100042EE4(v12, v13);
}

uint64_t sub_100044338()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_100044490, 0, 0);
}

uint64_t sub_100044490()
{
  v1 = *(v0 + 377);
  v2 = *(v0 + 208);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 128);
  v6 = *(v0 + 136);
  sub_1000425F4();
  sub_10056CA68();
  sub_10056C9D8();
  v7 = *(v6 + 8);
  v7(v4, v5);
  sub_100572558();
  v7(v3, v5);
  v81 = v7;
  if (v1 == 2)
  {
    sub_10056CA98();
    goto LABEL_22;
  }

  v8 = *(v0 + 288);
  if (sub_1000425F4())
  {
    v10 = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(v0 + 112);
    v13 = *(*(v0 + 288) + *(*(v0 + 240) + 20));
    v14 = *(v13 + 16);
    do
    {
      v10 = v14 != v11;
      if (v14 == v11)
      {
        break;
      }

      v15 = *(v13 + 16);
      if (v11 >= v15)
      {
        __break(1u);
        goto LABEL_33;
      }

      v2 = *(v0 + 328);
      v16 = *(v0 + 336);
      v17 = *(v0 + 120);
      sub_1000459C8(v13 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11, v17, type metadata accessor for WidgetMusicPin);
      v8 = sub_100044D58(v17, v16, v2);
      ++v11;
      sub_100045A98(*(v0 + 120), type metadata accessor for WidgetMusicPin);
    }

    while ((v8 & 1) == 0);
  }

  v18 = *(v0 + 377);
  sub_10056CA98();
  if (!v18)
  {
    if (v10)
    {
      v43 = *(v0 + 88);
      v44 = *(v0 + 96);
      v45 = *(v0 + 72);
      v46 = *(v0 + 80);
      v47 = *(v0 + 64);
      sub_10000CC8C(*(*(v0 + 344) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v45, &qword_1006E0518);
      sub_10007051C(*(v45 + *(v47 + 44)), *(v45 + *(v47 + 44) + 8), v46);
      sub_10001036C(v45, &qword_1006E0518);
      if ((*(v44 + 48))(v46, 1, v43) == 1)
      {
        sub_10001036C(*(v0 + 80), &qword_1006E0528);
      }

      else
      {
        v57 = *(v0 + 104);
        sub_100045A30(*(v0 + 80), v57, type metadata accessor for NowPlayingDataProvider.ItemProgress);
        sub_100012D44();
        sub_100045A98(v57, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      }

      v58 = *(v0 + 288);
      v76 = *(v0 + 360);
      v78 = *(v0 + 280);
      v80 = *(v0 + 240);
      v60 = *(v0 + 200);
      v59 = *(v0 + 208);
      v62 = *(v0 + 176);
      v61 = *(v0 + 184);
      v63 = *(v0 + 144);
      v64 = *(v0 + 128);
      sub_10056C9D8();
      sub_100572558();
      v81(v63, v64);
      (*(v61 + 8))(v59, v62);
      (*(v61 + 32))(v59, v60, v62);
      v65 = *(v80 + 24);
      v66 = *(v58 + v65);
      v67 = v76;

      *(v58 + v65) = v76;
      sub_1000459C8(v58, v78, type metadata accessor for PinsWidgetTimelineProvider.Entry);
      v9 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
      v2 = v9[2];
      v68 = v9[3];
      v8 = v2 + 1;
      if (v2 >= v68 >> 1)
      {
        v9 = sub_100040DC0(v68 > 1, v2 + 1, 1, v9);
      }

      v79 = v67;
      v41 = *(v0 + 280);
LABEL_24:
      v48 = *(v0 + 248);
      v9[2] = v8;
      v42 = v9 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v2;
      goto LABEL_25;
    }

LABEL_22:
    sub_1000459C8(*(v0 + 288), *(v0 + 256), type metadata accessor for PinsWidgetTimelineProvider.Entry);
    v9 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
    v2 = v9[2];
    v15 = v9[3];
    v8 = v2 + 1;
    if (v2 >= v15 >> 1)
    {
LABEL_33:
      v9 = sub_100040DC0(v15 > 1, v8, 1, v9);
    }

    v79 = *(v0 + 360);
    v41 = *(v0 + 256);
    goto LABEL_24;
  }

  if (v18 != 1 || !v10)
  {
    goto LABEL_22;
  }

  v20 = *(v0 + 360);
  v21 = *(v0 + 288);
  v22 = *(v0 + 272);
  v23 = *(*(v0 + 240) + 24);
  v24 = *(v21 + v23);
  v79 = v20;

  *(v21 + v23) = v20;
  sub_1000459C8(v21, v22, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v25 = sub_100040DC0(0, 1, 1, _swiftEmptyArrayStorage);
  v27 = v25[2];
  v26 = v25[3];
  v77 = v23;
  if (v27 >= v26 >> 1)
  {
    v25 = sub_100040DC0(v26 > 1, v27 + 1, 1, v25);
  }

  v28 = *(v0 + 288);
  v29 = *(v0 + 272);
  v75 = *(v0 + 264);
  v30 = *(v0 + 248);
  v31 = *(v0 + 168);
  v33 = *(v0 + 128);
  v32 = *(v0 + 136);
  v25[2] = v27 + 1;
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = *(v30 + 72);
  v36 = v25 + v34 + v35 * v27;
  v37 = v25;
  sub_100045A30(v29, v36, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v32 + 40))(v28, v31, v33);

  *(v21 + v77) = 0;
  sub_1000459C8(v28, v75, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v38 = v37;
  v40 = v37[2];
  v39 = v37[3];
  if (v40 >= v39 >> 1)
  {
    v38 = sub_100040DC0(v39 > 1, v40 + 1, 1, v37);
  }

  v41 = *(v0 + 264);
  *(v38 + 16) = v40 + 1;
  v42 = v38 + v34 + v40 * v35;
LABEL_25:
  sub_100045A30(v41, v42, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  v73 = *(v0 + 328);
  v74 = *(v0 + 336);
  v72 = *(v0 + 288);
  v49 = *(v0 + 184);
  v50 = *(v0 + 176);
  v69 = *(v0 + 208);
  v70 = *(v0 + 128);
  v71 = *(v0 + 152);
  v52 = *(v0 + 48);
  v51 = *(v0 + 56);
  v53 = *(v0 + 40);
  v54 = *(v0 + 24);
  (*(v49 + 16))(*(v0 + 192));
  sub_100042898();
  sub_100572638();
  v54(v51);

  (*(v52 + 8))(v51, v53);
  v81(v71, v70);
  (*(v49 + 8))(v69, v50);
  sub_100045A98(v72, type metadata accessor for PinsWidgetTimelineProvider.Entry);
  sub_10001036C(v73, &qword_1006E0618);
  sub_10001036C(v74, &qword_1006E0618);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_100044D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  v5 = sub_100009DCC(&qword_1006E0618);
  v6 = __chkstk_darwin(v5 - 8);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v53 = &v50 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v50 - v11;
  __chkstk_darwin(v10);
  v14 = &v50 - v13;
  sub_10000CC8C(a2, &v50 - v13, &qword_1006E0618);
  v15 = type metadata accessor for WidgetMusicItem();
  v16 = (*(v15 - 8) + 48);
  v17 = *v16;
  if ((*v16)(v14, 1, v15) == 1)
  {
    v18 = a1;
    sub_10001036C(v14, &qword_1006E0618);
  }

  else
  {
    v50 = v16;
    v24 = &v14[*(v15 + 36)];
    v26 = *v24;
    v25 = *(v24 + 1);

    sub_100045A98(v14, type metadata accessor for WidgetMusicItem);
    v27 = (a1 + *(type metadata accessor for WidgetMusicPin() + 28));
    if (v26 == *v27 && v25 == v27[1])
    {
      goto LABEL_32;
    }

    v18 = a1;
    v29 = sub_100574498();

    if (v29)
    {
      goto LABEL_31;
    }
  }

  sub_10000CC8C(a2, v12, &qword_1006E0618);
  v19 = v17;
  if (v17(v12, 1, v15) == 1)
  {
    sub_10001036C(v12, &qword_1006E0618);
    v20 = (v18 + *(type metadata accessor for WidgetMusicPin() + 32));
    v21 = *v20;
    v22 = v20[1];
    v23 = v53;
    goto LABEL_19;
  }

  v30 = &v12[*(v15 + 40)];
  v31 = *v30;
  v32 = *(v30 + 1);

  sub_100045A98(v12, type metadata accessor for WidgetMusicItem);
  v33 = (v18 + *(type metadata accessor for WidgetMusicPin() + 32));
  v21 = *v33;
  v22 = v33[1];
  v23 = v53;
  if (!v32)
  {
LABEL_19:
    v36 = v52;
    if (!v22)
    {
      goto LABEL_31;
    }

    goto LABEL_22;
  }

  if (v22)
  {
    if (v31 == v21 && v32 == v22)
    {
      goto LABEL_32;
    }

    v35 = sub_100574498();

    v36 = v52;
    if (v35)
    {
      goto LABEL_31;
    }
  }

  else
  {

    v36 = v52;
  }

LABEL_22:
  sub_10000CC8C(v36, v23, &qword_1006E0618);
  if (v17(v23, 1, v15) == 1)
  {
    sub_10001036C(v23, &qword_1006E0618);
    goto LABEL_24;
  }

  v38 = (v23 + *(v15 + 36));
  v39 = v23;
  v41 = *v38;
  v40 = v38[1];

  sub_100045A98(v39, type metadata accessor for WidgetMusicItem);
  v42 = (v18 + *(type metadata accessor for WidgetMusicPin() + 28));
  if (v41 == *v42 && v40 == v42[1])
  {
    goto LABEL_32;
  }

  v44 = sub_100574498();

  if ((v44 & 1) == 0)
  {
LABEL_24:
    v37 = v51;
    sub_10000CC8C(v36, v51, &qword_1006E0618);
    if (v19(v37, 1, v15) == 1)
    {
      sub_10001036C(v37, &qword_1006E0618);
LABEL_38:
      v45 = v22 == 0;
      return v45 & 1;
    }

    v46 = (v37 + *(v15 + 40));
    v47 = *v46;
    v48 = v46[1];

    sub_100045A98(v37, type metadata accessor for WidgetMusicItem);
    if (!v48)
    {
      goto LABEL_38;
    }

    if (!v22)
    {

      v45 = 0;
      return v45 & 1;
    }

    if (v47 != v21 || v48 != v22)
    {
      v45 = sub_100574498();

      return v45 & 1;
    }

LABEL_32:

    v45 = 1;
    return v45 & 1;
  }

LABEL_31:
  v45 = 1;
  return v45 & 1;
}

uint64_t sub_10004526C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100009DCC(&qword_1006DFD60);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  *(v14 + 5) = a3;
  (*(v7 + 32))(&v14[v13], &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_100006194(0, 0, v11, &unk_10057E580, v14);
}

uint64_t sub_100045458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_100009DCC(&qword_1006DFD60);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_100572F48();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = a2;
  v15[1] = a3;

  sub_100006194(0, 0, v11, &unk_10057E548, v14);
}

uint64_t sub_100045654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100045708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_1000457BC()
{
  v1 = sub_1005725D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045898(uint64_t a1)
{
  v4 = *(sub_1005725D8() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000CB98;

  return sub_100043A9C(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1000459C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045A30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100045A98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100045AF8()
{
  v1 = sub_1005725D8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100045BC4(uint64_t a1)
{
  v4 = *(sub_1005725D8() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000116F0;

  return sub_100042B5C(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_100045CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&qword_1006E0800);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100045DEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&qword_1006E0800);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100045F14()
{
  type metadata accessor for TopChartsWidgetTimelineProvider.Entry(319);
  if (v0 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100046034@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = type metadata accessor for TopChartsWidgetContentView(0);
  __chkstk_darwin(v2);
  v4 = (&v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = sub_100009DCC(&qword_1006E20E0);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v55 - v5;
  v72 = sub_100009DCC(&qword_1006E20E8);
  v6 = __chkstk_darwin(v72);
  v62 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v65 = &v55 - v8;
  v70 = sub_100009DCC(&qword_1006E20F0);
  __chkstk_darwin(v70);
  v71 = &v55 - v9;
  v10 = sub_10056EDA8();
  v67 = *(v10 - 8);
  v68 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v58 = &v55 - v14;
  v15 = type metadata accessor for SmallTopChartsWidgetView(0);
  __chkstk_darwin(v15);
  v17 = (&v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_100009DCC(&qword_1006E20F8);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v57 = &v55 - v18;
  v69 = sub_100009DCC(&qword_1006E2100);
  v19 = __chkstk_darwin(v69);
  v56 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v60 = &v55 - v21;
  v22 = sub_1005724A8();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TopChartsWidgetView(0);
  v74 = v1;
  sub_1000A8194(v25);
  v26 = (*(v23 + 88))(v25, v22);
  v27 = enum case for WidgetFamily.systemSmall(_:);
  KeyPath = swift_getKeyPath();
  if (v26 == v27)
  {
    *v17 = KeyPath;
    sub_100009DCC(&qword_1006E2108);
    swift_storeEnumTagMultiPayload();
    v29 = v15[5];
    *(v17 + v29) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v30 = v15[6];
    *(v17 + v30) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);
    swift_storeEnumTagMultiPayload();
    v31 = v15[7];
    *(v17 + v31) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8);
    swift_storeEnumTagMultiPayload();
    v32 = v17 + v15[8];
    *v32 = swift_getKeyPath();
    v32[8] = 0;
    v33 = v15[9];
    *(v17 + v33) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2140);
    swift_storeEnumTagMultiPayload();
    v34 = v15[10];
    *(v17 + v34) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    v35 = v74;
    if (sub_1000B48F4())
    {
      v36 = v58;
      sub_10056ED98();
      v37 = v68;
    }

    else
    {
      v75 = _swiftEmptyArrayStorage;
      sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
      sub_100009DCC(&qword_1006E0C80);
      sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80);
      v36 = v58;
      v37 = v68;
      sub_100573DA8();
    }

    sub_100050804(&qword_1006E2128, type metadata accessor for SmallTopChartsWidgetView);
    v42 = v57;
    sub_100570358();
    (*(v67 + 8))(v36, v37);
    sub_100050C48(v17, type metadata accessor for SmallTopChartsWidgetView);
    v43 = swift_getKeyPath();
    v44 = v56;
    v45 = &v56[*(v69 + 36)];
    v46 = sub_100009DCC(&qword_1006E2118);
    sub_100051B94(v35, v45 + *(v46 + 28), type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    *v45 = v43;
    (*(v59 + 32))(v44, v42, v61);
    v47 = v60;
    sub_100019B40(v44, v60, &qword_1006E2100);
    sub_10000CC8C(v47, v71, &qword_1006E2100);
    swift_storeEnumTagMultiPayload();
    sub_10005084C();
    sub_100050964();
    sub_10056F5B8();
    return sub_10001036C(v47, &qword_1006E2100);
  }

  else
  {
    *v4 = KeyPath;
    sub_100009DCC(&qword_1006E2108);
    swift_storeEnumTagMultiPayload();
    v38 = v2[5];
    *(v4 + v38) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v39 = v2[6];
    *(v4 + v39) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EA8);
    swift_storeEnumTagMultiPayload();
    v40 = v2[7];
    *(v4 + v40) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0C70);
    swift_storeEnumTagMultiPayload();
    if (sub_1000B48F4())
    {
      sub_10056ED98();
      v41 = v68;
    }

    else
    {
      v75 = _swiftEmptyArrayStorage;
      sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
      sub_100009DCC(&qword_1006E0C80);
      sub_100010BC0(&qword_1006E0C88, &qword_1006E0C80);
      v41 = v68;
      sub_100573DA8();
    }

    sub_100050804(&qword_1006E2110, type metadata accessor for TopChartsWidgetContentView);
    v49 = v63;
    sub_100570358();
    (*(v67 + 8))(v13, v41);
    sub_100050C48(v4, type metadata accessor for TopChartsWidgetContentView);
    v50 = swift_getKeyPath();
    v51 = v62;
    v52 = &v62[*(v72 + 36)];
    v53 = sub_100009DCC(&qword_1006E2118);
    sub_100051B94(v74, v52 + *(v53 + 28), type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    *v52 = v50;
    (*(v64 + 32))(v51, v49, v66);
    v54 = v65;
    sub_100019B40(v51, v65, &qword_1006E20E8);
    sub_10000CC8C(v54, v71, &qword_1006E20E8);
    swift_storeEnumTagMultiPayload();
    sub_10005084C();
    sub_100050964();
    sub_10056F5B8();
    sub_10001036C(v54, &qword_1006E20E8);
    return (*(v23 + 8))(v25, v22);
  }
}

uint64_t sub_100046BEC()
{
  sub_100050CA8();

  return sub_10056F1A8();
}

uint64_t sub_100046C34(uint64_t a1)
{
  v2 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_100051B94(a1, &v9 - v6, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  sub_100051B94(v7, v5, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  sub_100050CA8();
  sub_10056F1B8();
  return sub_100050C48(v7, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
}

uint64_t sub_100046E2C@<X0>(uint64_t a1@<X8>)
{
  v106 = a1;
  v102 = sub_1005724A8();
  v101 = *(v102 - 8);
  __chkstk_darwin(v102);
  v100 = &v91 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10056E698();
  v104 = *(v3 - 8);
  v105 = v3;
  __chkstk_darwin(v3);
  v103 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(qword_1006E1D50);
  v6 = __chkstk_darwin(v5 - 8);
  v91 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v114 = &v91 - v9;
  __chkstk_darwin(v8);
  v99 = &v91 - v10;
  v108 = sub_100009DCC(&qword_1006E2370);
  __chkstk_darwin(v108);
  v12 = &v91 - v11;
  v111 = sub_100009DCC(&qword_1006E2378);
  __chkstk_darwin(v111);
  v92 = &v91 - v13;
  v110 = sub_100009DCC(&qword_1006E2380);
  __chkstk_darwin(v110);
  v15 = &v91 - v14;
  v16 = sub_100009DCC(&qword_1006E2388);
  v17 = __chkstk_darwin(v16 - 8);
  v109 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v112 = &v91 - v19;
  v107 = sub_100009DCC(&qword_1006E2390);
  __chkstk_darwin(v107);
  v113 = &v91 - v20;
  v117 = sub_100009DCC(&qword_1006E2398);
  __chkstk_darwin(v117);
  v118 = &v91 - v21;
  v98 = sub_100009DCC(&qword_1006E23A0);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v96 = &v91 - v22;
  v94 = sub_100009DCC(&qword_1006E23A8);
  __chkstk_darwin(v94);
  v95 = &v91 - v23;
  v24 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v25 = v24 - 8;
  __chkstk_darwin(v24);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v29 = __chkstk_darwin(v28);
  v93 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = &v91 - v32;
  __chkstk_darwin(v31);
  v35 = &v91 - v34;
  v36 = sub_100009DCC(&qword_1006E0618);
  v37 = __chkstk_darwin(v36 - 8);
  v39 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v41 = &v91 - v40;
  v116 = v1;
  sub_1000A845C(v35);
  sub_100051B94(&v35[*(v28 + 20)], v27, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v35, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v42 = *&v27[*(v25 + 40)];

  sub_100050C48(v27, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  if (*(v42 + 16))
  {
    v43 = type metadata accessor for WidgetMusicItem();
    v44 = *(v43 - 8);
    sub_100051B94(v42 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v41, type metadata accessor for WidgetMusicItem);

    (*(v44 + 56))(v41, 0, 1, v43);
  }

  else
  {

    v45 = type metadata accessor for WidgetMusicItem();
    (*(*(v45 - 8) + 56))(v41, 1, 1, v45);
  }

  v46 = v41;
  *v15 = sub_10056F378();
  *(v15 + 1) = 0x4014000000000000;
  v15[16] = 0;
  v47 = sub_100009DCC(&qword_1006E23B0);
  sub_100047E14(v116, v41, &v15[*(v47 + 44)]);
  sub_1000A845C(v33);
  v48 = &v33[*(v28 + 40)];
  v50 = *v48;
  v49 = *(v48 + 1);

  sub_100050C48(v33, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v115 = v41;
  if (v49)
  {
    v51 = v92;
    v52 = &v92[*(v111 + 36)];
    *v52 = v50;
    *(v52 + 1) = v49;
    *(v52 + 2) = 0;
    *(v52 + 3) = 0;
    type metadata accessor for CGSize(0);
    v119 = 0;
    v120 = 0;
    sub_100570668();
    v53 = v122;
    *(v52 + 2) = v121;
    *(v52 + 6) = v53;
    v54 = type metadata accessor for ErrorMessageModifier();
    sub_10056FDE8();
    v55 = *(v54 + 36);
    *&v52[v55] = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0148);
    swift_storeEnumTagMultiPayload();
    v56 = &v52[*(v54 + 40)];
    *v56 = swift_getKeyPath();
    *(v56 + 1) = 0;
    *(v56 + 2) = 0;
    *(v56 + 3) = 0;
    v56[32] = 0;
    sub_10000CC8C(v15, v51, &qword_1006E2380);
    sub_10000CC8C(v51, v12, &qword_1006E2378);
    swift_storeEnumTagMultiPayload();
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380);
    v57 = v109;
    v46 = v115;
    sub_10056F5B8();
    sub_10001036C(v51, &qword_1006E2378);
  }

  else
  {
    sub_10000CC8C(v15, v12, &qword_1006E2380);
    swift_storeEnumTagMultiPayload();
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380);
    v57 = v109;
    sub_10056F5B8();
  }

  v58 = v114;
  sub_10001036C(v15, &qword_1006E2380);
  v59 = v112;
  sub_100019B40(v57, v112, &qword_1006E2388);
  v60 = v113;
  v61 = &v113[*(v107 + 36)];
  *v61 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E2108);
  swift_storeEnumTagMultiPayload();
  v62 = *(type metadata accessor for BackgroundModifier(0) + 20);
  *(v61 + v62) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148);
  swift_storeEnumTagMultiPayload();
  sub_100019B40(v59, v60, &qword_1006E2388);
  v63 = sub_1005709B8();
  v65 = v64;
  v66 = v118;
  v67 = &v118[*(v117 + 36)];
  sub_10004A6E0(v67);
  v68 = (v67 + *(sub_100009DCC(&qword_1006E23C8) + 36));
  *v68 = v63;
  v68[1] = v65;
  sub_100019B40(v60, v66, &qword_1006E2390);
  sub_10000CC8C(v46, v39, &qword_1006E0618);
  v69 = type metadata accessor for WidgetMusicItem();
  if ((*(*(v69 - 8) + 48))(v39, 1, v69) == 1)
  {
    sub_10001036C(v39, &qword_1006E0618);
    v70 = sub_10056C8A8();
    v71 = *(v70 - 8);
    (*(v71 + 56))(v58, 1, 1, v70);
    v72 = v91;
    sub_10056C868();
    v73 = *(v71 + 48);
    result = v73(v72, 1, v70);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v75 = v99;
    (*(v71 + 32))(v99, v72, v70);
    v76 = v73(v58, 1, v70);
    v77 = v96;
    if (v76 != 1)
    {
      sub_10001036C(v58, qword_1006E1D50);
    }

    v79 = v104;
    v78 = v105;
  }

  else
  {
    v80 = *(v69 + 28);
    v70 = sub_10056C8A8();
    v81 = *(v70 - 8);
    (*(v81 + 16))(v58, &v39[v80], v70);
    sub_100050C48(v39, type metadata accessor for WidgetMusicItem);
    (*(v81 + 56))(v58, 0, 1, v70);
    v75 = v99;
    (*(v81 + 32))(v99, v58, v70);
    v79 = v104;
    v78 = v105;
    v77 = v96;
  }

  sub_10056C8A8();
  (*(*(v70 - 8) + 56))(v75, 0, 1, v70);
  sub_100052E04();
  v82 = v118;
  sub_10056FF68();
  sub_10001036C(v75, qword_1006E1D50);
  sub_10001036C(v82, &qword_1006E2398);
  v83 = v93;
  sub_1000A845C(v93);
  type metadata accessor for SmallTopChartsWidgetView(0);
  v84 = v100;
  sub_1000A8194(v100);
  LOBYTE(v82) = sub_10004AB54(v84);
  (*(v101 + 8))(v84, v102);
  sub_100050C48(v83, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v85 = v103;
  if (v82)
  {
    (*(v79 + 104))(v103, enum case for ColorScheme.light(_:), v78);
  }

  else
  {
    sub_1000A81E4(v103);
  }

  v86 = v115;
  KeyPath = swift_getKeyPath();
  v88 = v95;
  v89 = &v95[*(v94 + 36)];
  v90 = sub_100009DCC(&qword_1006E0DE0);
  (*(v79 + 32))(v89 + *(v90 + 28), v85, v78);
  *v89 = KeyPath;
  (*(v97 + 32))(v88, v77, v98);
  sub_100019B40(v88, v106, &qword_1006E23A8);
  return sub_10001036C(v86, &qword_1006E0618);
}

uint64_t sub_100047E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v170 = a2;
  v179 = a3;
  v178 = sub_100009DCC(&qword_1006E2418);
  __chkstk_darwin(v178);
  v163 = (&v140 - v4);
  v5 = type metadata accessor for PlaybackButtonLarge();
  v158 = *(v5 - 8);
  v159 = v5;
  __chkstk_darwin(v5);
  v142 = &v140 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006E2420);
  v8 = __chkstk_darwin(v7 - 8);
  v162 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v180 = &v140 - v10;
  v11 = sub_10056F808();
  v155 = *(v11 - 8);
  v156 = v11;
  __chkstk_darwin(v11);
  v154 = &v140 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100009DCC(&qword_1006E2428);
  __chkstk_darwin(v13 - 8);
  v151 = (&v140 - v14);
  v152 = sub_100009DCC(&qword_1006E2430);
  __chkstk_darwin(v152);
  v153 = &v140 - v15;
  v16 = sub_100009DCC(&qword_1006E2438);
  v160 = *(v16 - 8);
  v161 = v16;
  v17 = __chkstk_darwin(v16);
  v157 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v186 = &v140 - v19;
  v20 = sub_10056EDA8();
  v149 = *(v20 - 8);
  v150 = v20;
  v21 = __chkstk_darwin(v20);
  v148 = &v140 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v147 = &v140 - v23;
  v174 = sub_100009DCC(&qword_1006E2440);
  __chkstk_darwin(v174);
  v175 = &v140 - v24;
  v146 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin(v146);
  v145 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v26 = __chkstk_darwin(v165);
  v141 = &v140 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v164 = &v140 - v28;
  v181 = type metadata accessor for WidgetMusicItem();
  v166 = *(v181 - 8);
  __chkstk_darwin(v181);
  v171 = &v140 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100009DCC(&qword_1006E2448);
  v31 = __chkstk_darwin(v30 - 8);
  v177 = &v140 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v176 = &v140 - v33;
  v34 = sub_10056EBD8();
  v143 = *(v34 - 8);
  v144 = v34;
  v35 = __chkstk_darwin(v34);
  v37 = &v140 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v39 = &v140 - v38;
  v40 = sub_100009DCC(&qword_1006E0618);
  v41 = __chkstk_darwin(v40 - 8);
  v169 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v140 - v43;
  v167 = sub_100009DCC(&qword_1006E2450);
  __chkstk_darwin(v167);
  v168 = &v140 - v45;
  v46 = sub_100572508();
  v47 = *(v46 - 8);
  v48 = __chkstk_darwin(v46);
  v50 = &v140 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v52 = &v140 - v51;
  v53 = sub_100009DCC(&qword_1006E2458);
  v54 = __chkstk_darwin(v53 - 8);
  v173 = &v140 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v187 = &v140 - v56;
  v188 = a1;
  sub_1000493B4(v52);
  sub_1005724C8();
  LOBYTE(a1) = sub_1005724E8();
  v57 = *(v47 + 8);
  v183 = v50;
  v57(v50, v46);
  v182 = v52;
  v184 = v47 + 8;
  v185 = v46;
  v57(v52, v46);
  v172 = v57;
  if (a1)
  {
    v58 = v166;
    v59 = v170;
    v60 = v181;
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v61 = sub_100009DCC(&qword_1006E1910);
    v62 = sub_10000C49C(v61, qword_1006FC128);
    (*(*(v61 - 8) + 16))(v168, v62, v61);
    swift_storeEnumTagMultiPayload();
    v63 = sub_100010324(&qword_1006E1928);
    v64 = sub_1000378D0();
    *&v196 = v63;
    *(&v196 + 1) = v64;
    swift_getOpaqueTypeConformance2();
    sub_1000530D0();
    sub_10056F5B8();
    v65 = v188;
  }

  else
  {
    v59 = v170;
    sub_10000CC8C(v170, v44, &qword_1006E0618);
    v58 = v166;
    v60 = v181;
    if ((*(v166 + 48))(v44, 1, v181) == 1)
    {
      sub_10001036C(v44, &qword_1006E0618);
      v193 = 0u;
      v194 = 0u;
      v195 = 0;
    }

    else
    {
      *(&v194 + 1) = v60;
      v195 = &off_100681290;
      v66 = sub_10002AB7C(&v193);
      sub_1000522A4(v44, v66, type metadata accessor for WidgetMusicItem);
    }

    type metadata accessor for SmallTopChartsWidgetView(0);
    sub_1000A840C(v39);
    v68 = v143;
    v67 = v144;
    (*(v143 + 104))(v37, enum case for DynamicTypeSize.xxLarge(_:), v144);
    v69 = sub_10056EBC8();
    v70 = *(v68 + 8);
    v70(v37, v67);
    v70(v39, v67);
    if (v69)
    {
      v71 = Corner.small.unsafeMutableAddressor();
    }

    else
    {
      v71 = Corner.extraSmall.unsafeMutableAddressor();
    }

    v72 = *(v71 + 16);
    v73 = *v71;
    v196 = v193;
    v197 = v194;
    *v198 = v195;
    *&v198[8] = v73;
    v198[24] = v72;
    sub_100053074(&v196, v168);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910);
    v74 = sub_100010324(&qword_1006E1928);
    v75 = sub_1000378D0();
    *&v193 = v74;
    *(&v193 + 1) = v75;
    swift_getOpaqueTypeConformance2();
    sub_1000530D0();
    sub_10056F5B8();
    sub_100053124(&v196);
    v65 = v188;
    v57 = v172;
  }

  v76 = v169;
  sub_10000CC8C(v59, v169, &qword_1006E0618);
  if ((*(v58 + 48))(v76, 1, v60) == 1)
  {
    sub_10001036C(v76, &qword_1006E0618);
    v77 = v164;
    sub_1000A845C(v164);
    v78 = v145;
    sub_100051B94(v77 + *(v165 + 20), v145, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_100050C48(v77, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v79 = (v78 + *(v146 + 28));
    v81 = *v79;
    v80 = v79[1];

    sub_100050C48(v78, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_1005709F8();
    sub_10056EDF8();
    *&v192[71] = v199;
    *&v192[55] = *&v198[16];
    *&v192[103] = v201;
    *&v192[87] = v200;
    *&v192[39] = *v198;
    *&v192[23] = v197;
    *&v192[7] = v196;
    v82 = *&v192[80];
    v83 = v175;
    *(v175 + 81) = *&v192[64];
    *(v83 + 97) = v82;
    *(v83 + 113) = *&v192[96];
    v84 = *&v192[16];
    *(v83 + 17) = *v192;
    *(v83 + 33) = v84;
    v85 = *&v192[48];
    *(v83 + 49) = *&v192[32];
    *v83 = v81;
    *(v83 + 8) = v80;
    *(v83 + 16) = 0;
    *(v83 + 128) = *&v192[111];
    *(v83 + 65) = v85;
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E2468);
    sub_100010BC0(&qword_1006E2470, &qword_1006E2418);
    sub_100053178();
    v86 = v176;
    sub_10056F5B8();
  }

  else
  {
    v87 = v171;
    sub_1000522A4(v76, v171, type metadata accessor for WidgetMusicItem);
    type metadata accessor for SmallTopChartsWidgetView(0);
    v88 = v147;
    sub_1000A84AC(v147);
    v89 = v148;
    sub_10056ED98();
    sub_100050804(&qword_1006E0C78, &type metadata accessor for RedactionReasons);
    v90 = v150;
    v91 = sub_100573D78();
    v92 = *(v149 + 8);
    v92(v89, v90);
    v92(v88, v90);
    if (v91)
    {
      sub_1005709E8();
      sub_10056E888();
      LODWORD(v169) = 0;
      v170 = v196;
      v167 = *v198;
      v168 = v197;
      v166 = *&v198[8];
      v191 = 1;
      v190 = BYTE8(v196);
      v189 = BYTE8(v197);
      v93 = 1;
      v149 = BYTE8(v196);
      v150 = BYTE8(v197);
      LOBYTE(v193) = 0;
    }

    else
    {
      v170 = 0;
      v167 = 0;
      v168 = 0;
      v166 = 0;
      v149 = 0;
      v150 = 0;
      v93 = 0;
      LODWORD(v169) = 1;
    }

    v94 = sub_10056F378();
    v95 = v151;
    *v151 = v94;
    *(v95 + 8) = 0;
    *(v95 + 16) = 0;
    v96 = sub_100009DCC(&qword_1006E2490);
    sub_1000496EC(v65, v87, v95 + *(v96 + 44));
    v97 = v182;
    sub_1000493B4(v182);
    v98 = v183;
    sub_1005724C8();
    v99 = sub_1005724E8();
    v100 = v98;
    v101 = v185;
    v57(v100, v185);
    v57(v97, v101);
    v102 = 1;
    if (v99)
    {
      v103 = 2;
    }

    else
    {
      v103 = 1;
    }

    KeyPath = swift_getKeyPath();
    v105 = v153;
    sub_100019B40(v95, v153, &qword_1006E2428);
    v106 = v105 + *(v152 + 36);
    *v106 = KeyPath;
    *(v106 + 8) = v103;
    *(v106 + 16) = 0;
    v107 = v154;
    sub_10056F7E8();
    sub_10005332C();
    sub_1005701F8();
    (*(v155 + 8))(v107, v156);
    sub_10001036C(v105, &qword_1006E2430);
    v108 = v159;
    if (*(v87 + *(v181 + 64)) == 1)
    {
      v109 = v142;
      sub_100051B94(v87, v142, type metadata accessor for WidgetMusicItem);
      v110 = v164;
      sub_1000A845C(v164);
      v111 = v165;
      sub_10000CC8C(v110 + *(v165 + 28), v109 + *(v108 + 20), &qword_1006E0618);
      sub_100050C48(v110, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
      v112 = v141;
      sub_1000A845C(v141);
      v113 = *(v112 + *(v111 + 24));
      sub_100050C48(v112, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
      *(v109 + *(v108 + 24)) = v113;
      sub_1000522A4(v109, v180, type metadata accessor for PlaybackButtonLarge);
      v102 = 0;
    }

    v114 = v180;
    (*(v158 + 56))(v180, v102, 1, v108);
    v116 = v160;
    v115 = v161;
    v117 = *(v160 + 16);
    v118 = v157;
    v117(v157, v186, v161);
    v119 = v162;
    sub_10000CC8C(v114, v162, &qword_1006E2420);
    v120 = v163;
    *v163 = 0;
    *(v120 + 8) = v93;
    v121 = v149;
    *(v120 + 16) = v170;
    *(v120 + 24) = v121;
    v122 = v150;
    *(v120 + 32) = v168;
    *(v120 + 40) = v122;
    v123 = v166;
    *(v120 + 48) = v167;
    *(v120 + 56) = v123;
    *(v120 + 64) = v169;
    v124 = sub_100009DCC(&qword_1006E24A8);
    v117((v120 + *(v124 + 48)), v118, v115);
    sub_10000CC8C(v119, v120 + *(v124 + 64), &qword_1006E2420);
    sub_10001036C(v119, &qword_1006E2420);
    v125 = *(v116 + 8);
    v125(v118, v115);
    sub_10000CC8C(v120, v175, &qword_1006E2418);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E2468);
    sub_100010BC0(&qword_1006E2470, &qword_1006E2418);
    sub_100053178();
    v126 = v176;
    sub_10056F5B8();
    v86 = v126;
    sub_10001036C(v120, &qword_1006E2418);
    sub_10001036C(v180, &qword_1006E2420);
    v125(v186, v115);
    sub_100050C48(v171, type metadata accessor for WidgetMusicItem);
    v57 = v172;
  }

  v127 = v182;
  sub_1000493B4(v182);
  v128 = v183;
  sub_1005724C8();
  v129 = sub_1005724E8();
  v130 = v128;
  v131 = v185;
  v57(v130, v185);
  v57(v127, v131);
  LODWORD(v188) = v129 & 1;
  v132 = v187;
  v133 = v173;
  sub_10000CC8C(v187, v173, &qword_1006E2458);
  v134 = v177;
  sub_10000CC8C(v86, v177, &qword_1006E2448);
  v135 = v86;
  v136 = v179;
  sub_10000CC8C(v133, v179, &qword_1006E2458);
  v137 = sub_100009DCC(&qword_1006E2488);
  sub_10000CC8C(v134, v136 + *(v137 + 48), &qword_1006E2448);
  v138 = v136 + *(v137 + 64);
  *v138 = 0;
  *(v138 + 8) = v188;
  *(v138 + 9) = (v129 & 1) == 0;
  sub_10001036C(v135, &qword_1006E2448);
  sub_10001036C(v132, &qword_1006E2458);
  sub_10001036C(v134, &qword_1006E2448);
  return sub_10001036C(v133, &qword_1006E2458);
}

uint64_t sub_1000493B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = sub_10056F198();
  v24 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100572468();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for SmallTopChartsWidgetView(0);
  sub_1000A8484(v12);
  sub_100572458();
  v14 = sub_100572448();
  v15 = *(v7 + 8);
  v15(v10, v6);
  v15(v12, v6);
  if (v14)
  {
    v16 = v2 + *(v13 + 32);
    v17 = *v16;
    if (*(v16 + 8) == 1)
    {
      if ((v17 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }

    else
    {

      sub_100573438();
      v19 = sub_10056F9D8();
      sub_10056DE58();

      sub_10056F188();
      swift_getAtKeyPath();
      sub_100053068(v17, 0);
      (*(v24 + 8))(v5, v3);
      if ((v26 & 1) == 0)
      {
        return sub_1005724C8();
      }
    }
  }

  v20 = v2 + *(v13 + 32);
  v21 = *v20;
  if (*(v20 + 8) == 1)
  {
    if ((v21 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  else
  {

    sub_100573438();
    v22 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();
    sub_100053068(v21, 0);
    (*(v24 + 8))(v5, v3);
    if ((v27 & 1) == 0)
    {
      return sub_1005724F8();
    }
  }

  return sub_1005724B8();
}

uint64_t sub_1000496EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v170 = a3;
  v171 = a2;
  v4 = sub_10056EBD8();
  v182 = *(v4 - 8);
  v183 = v4;
  v5 = __chkstk_darwin(v4);
  v180 = &v165 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v179 = &v165 - v7;
  v169 = sub_10056FC68();
  v8 = *(v169 - 8);
  __chkstk_darwin(v169);
  v168 = &v165 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v165 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v15 = v14 - 8;
  __chkstk_darwin(v14);
  v17 = &v165 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_100009DCC(&qword_1006E24B0);
  __chkstk_darwin(v174);
  v167 = &v165 - v18;
  v175 = sub_100009DCC(&qword_1006E24B8);
  __chkstk_darwin(v175);
  v178 = &v165 - v19;
  v177 = sub_100009DCC(&qword_1006E24C0);
  v20 = __chkstk_darwin(v177);
  v172 = &v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v176 = &v165 - v23;
  __chkstk_darwin(v22);
  v173 = &v165 - v24;
  v181 = a1;
  sub_1000A845C(v17);
  sub_100051B94(v17 + *(v15 + 28), v13, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v17, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v25 = &v13[*(v11 + 36)];
  v27 = *v25;
  v26 = v25[1];

  sub_100050C48(v13, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v193 = v27;
  v194 = v26;
  sub_10001B550();
  v28 = sub_10056FF28();
  v30 = v29;
  LOBYTE(v17) = v31;
  v32 = [objc_opt_self() systemFontOfSize:0.0];
  v33 = [v32 fontName];

  sub_1005728D8();
  v35 = v168;
  v34 = v169;
  (*(v8 + 104))(v168, enum case for Font.TextStyle.caption2(_:), v169);
  sub_10056FB98();

  (*(v8 + 8))(v35, v34);
  v36 = sub_10056FE88();
  v38 = v37;
  LOBYTE(v32) = v39;

  sub_10001B5A4(v28, v30, v17 & 1);
  v40 = v167;

  sub_10056FB88();
  v41 = sub_10056FD98();
  v43 = v42;
  LOBYTE(v17) = v44;
  v169 = v45;
  sub_10001B5A4(v36, v38, v32 & 1);

  v46 = (v40 + *(sub_100009DCC(&qword_1006E24C8) + 36));
  v47 = *(sub_100009DCC(&qword_1006E1050) + 28);
  v48 = enum case for Text.Case.uppercase(_:);
  v49 = sub_10056FE68();
  v50 = *(v49 - 8);
  (*(v50 + 104))(v46 + v47, v48, v49);
  (*(v50 + 56))(v46 + v47, 0, 1, v49);
  *v46 = swift_getKeyPath();
  *v40 = v41;
  *(v40 + 8) = v43;
  *(v40 + 16) = v17 & 1;
  *(v40 + 24) = v169;
  if (qword_1006DF928 != -1)
  {
    swift_once();
  }

  v165 = sub_100009DCC(&qword_1006E1058);
  v51 = sub_10000C49C(v165, qword_1006FC0B8);
  sub_10000CC8C(v51, v40 + *(v174 + 36), &qword_1006E1058);
  sub_100053438();
  v52 = v178;
  sub_10056FF58();
  sub_10001036C(v40, &qword_1006E24B0);
  v53 = sub_10056FA58();
  sub_10056E598();
  v54 = v52 + *(v175 + 36);
  *v54 = v53;
  *(v54 + 8) = v55;
  *(v54 + 16) = v56;
  *(v54 + 24) = v57;
  *(v54 + 32) = v58;
  *(v54 + 40) = 0;
  v59 = sub_10056FA88();
  type metadata accessor for SmallTopChartsWidgetView(0);
  v60 = v179;
  sub_1000A840C(v179);
  v62 = v182;
  v61 = v183;
  v63 = v180;
  (*(v182 + 104))(v180, enum case for DynamicTypeSize.xxxLarge(_:), v183);
  sub_10056EBC8();
  v64 = *(v62 + 8);
  v64(v63, v61);
  v64(v60, v61);
  sub_10056E598();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v73 = v176;
  sub_100019B40(v52, v176, &qword_1006E24B8);
  v74 = v73 + *(v177 + 36);
  *v74 = v59;
  *(v74 + 8) = v66;
  *(v74 + 16) = v68;
  *(v74 + 24) = v70;
  *(v74 + 32) = v72;
  *(v74 + 40) = 0;
  sub_100019B40(v73, v173, &qword_1006E24C0);
  v193 = 49;
  v194 = 0xE100000000000000;
  v75 = String.nonBreakingSpace.unsafeMutableAddressor();
  v76 = *v75;
  v77 = v75[1];

  v214._countAndFlagsBits = v76;
  v214._object = v77;
  sub_100572A98(v214);

  v79 = *v75;
  v78 = v75[1];

  v215._countAndFlagsBits = v79;
  v215._object = v78;
  sub_100572A98(v215);

  v80 = v171;

  v81 = sub_10056FE58();
  v167 = v82;
  v168 = v81;
  v166 = v83;
  v169 = v84;

  v85 = *(v80 + *(type metadata accessor for WidgetMusicItem() + 60));
  v86 = *(v85 + 16);
  if (v86)
  {
    v87 = (v85 + 32);
    if (qword_1006DF8F0 != -1)
    {
      swift_once();
    }

    v88 = 0;
    v89 = 0;
    v182 = 0xE000000000000000;
    v183 = _swiftEmptyArrayStorage;
    do
    {
      LODWORD(v179) = v89;
      v180 = v88;
      v181 = v86;
      TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07D0, *v87);
      v91 = v90;
      v93 = v92;
      v95 = v94;
      sub_10056FC18();
      v96 = sub_10056FE88();
      v174 = v97;
      v175 = v96;
      LODWORD(v178) = v98;
      v177 = v99;
      ++v87;

      sub_10001B5A4(v91, v93, v95 & 1);
      v100 = v181;

      LOBYTE(v93) = v179;
      v101 = v180;
      v102 = v182;
      v103 = v175;
      v176 = sub_10056FE58();
      v104 = v102;
      v106 = v105;
      v108 = v107;
      v110 = v109;
      sub_10001B5A4(v101, v104, v93 & 1);

      v111 = v103;
      v112 = v106;
      sub_10001B5A4(v111, v174, v178 & 1);

      v113 = v176;
      v88 = v176;
      v182 = v106;
      v183 = v110;
      v89 = v108;
      v86 = v100 - 1;
    }

    while (v86);
  }

  else
  {
    v113 = 0;
    LOBYTE(v108) = 0;
    v112 = 0xE000000000000000;
  }

  v114 = v166;
  v116 = v167;
  v115 = v168;
  v117 = v113;
  v118 = sub_10056FE58();
  v182 = v119;
  v183 = v118;
  v121 = v120;
  v181 = v122;
  sub_10001B5A4(v117, v112, v108 & 1);

  sub_10001B5A4(v115, v116, v114 & 1);

  sub_10056FC18();
  sub_10056FB28();

  v124 = v182;
  v123 = v183;
  v125 = sub_10056FE88();
  v127 = v126;
  v129 = v128;

  sub_10001B5A4(v123, v124, v121 & 1);

  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v130 = sub_10056FE18();
  v132 = v131;
  v134 = v133;
  v183 = v135;
  sub_10001B5A4(v125, v127, v129 & 1);

  sub_1005709F8();
  sub_10056EDF8();
  LODWORD(v182) = v134 & 1;
  v213 = v134 & 1;
  v136 = *(v171 + 40);
  if (!v136)
  {
    goto LABEL_19;
  }

  v137 = HIBYTE(v136) & 0xF;
  if ((v136 & 0x2000000000000000) == 0)
  {
    v137 = *(v171 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v137)
  {
    v179 = v132;
    v180 = v130;

    sub_10056FC18();
    v138 = sub_10056FE88();
    v140 = v139;
    v142 = v141;

    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    sub_10000C49C(v165, qword_1006FC0D8);
    sub_100010BC0(&qword_1006E24F0, &qword_1006E1058);
    v143 = sub_10056FE28();
    v145 = v144;
    v147 = v146;
    v149 = v148;
    sub_10001B5A4(v138, v140, v142 & 1);

    v150 = v147 & 1;
    v181 = v143;
    sub_10002AAC4(v143, v145, v147 & 1);

    v151 = v179;
    v130 = v180;
  }

  else
  {
LABEL_19:
    v181 = 0;
    v145 = 0;
    v150 = 0;
    v149 = 0;
    v151 = v132;
  }

  v152 = v172;
  sub_10000CC8C(v173, v172, &qword_1006E24C0);
  v153 = v152;
  v154 = v170;
  sub_10000CC8C(v153, v170, &qword_1006E24C0);
  v155 = sub_100009DCC(&qword_1006E24E0);
  v156 = (v154 + *(v155 + 48));
  *&v184 = v130;
  *(&v184 + 1) = v151;
  LOBYTE(v185) = v182;
  *(&v185 + 1) = *v212;
  DWORD1(v185) = *&v212[3];
  *(&v185 + 1) = v183;
  v190 = v209;
  v191 = v210;
  v192 = v211;
  v189 = v208;
  v188 = v207;
  v187 = v206;
  v186 = v205;
  v157 = v210;
  v156[6] = v209;
  v156[7] = v157;
  v156[8] = v192;
  v158 = v187;
  v156[2] = v186;
  v156[3] = v158;
  v159 = v189;
  v156[4] = v188;
  v156[5] = v159;
  v160 = v185;
  *v156 = v184;
  v156[1] = v160;
  v161 = v151;
  v162 = (v154 + *(v155 + 64));
  sub_10000CC8C(&v184, &v193, &qword_1006E24E8);
  v163 = v181;
  sub_1000535A8(v181, v145, v150, v149);
  sub_1000535EC(v163, v145, v150, v149);
  *v162 = v163;
  v162[1] = v145;
  v162[2] = v150;
  v162[3] = v149;
  sub_10001036C(v173, &qword_1006E24C0);
  sub_1000535EC(v163, v145, v150, v149);
  v193 = v130;
  v194 = v161;
  v195 = v182;
  *v196 = *v212;
  *&v196[3] = *&v212[3];
  v197 = v183;
  v202 = v209;
  v203 = v210;
  v204 = v211;
  v198 = v205;
  v199 = v206;
  v201 = v208;
  v200 = v207;
  sub_10001036C(&v193, &qword_1006E24E8);
  return sub_10001036C(v172, &qword_1006E24C0);
}

uint64_t sub_10004A6E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009DCC(&qword_1006E23F8);
  __chkstk_darwin(v2);
  v4 = &v26 - v3;
  v5 = sub_100572508();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  sub_1000493B4(&v26 - v10);
  sub_1005724F8();
  v12 = sub_1005724E8();
  v13 = *(v6 + 8);
  v13(v9, v5);
  v13(v11, v5);
  if (v12)
  {
    if (qword_1006DF960 != -1)
    {
      swift_once();
    }

    v14 = sub_100009DCC(&qword_1006E1918);
    v15 = sub_10000C49C(v14, qword_1006FC140);
    sub_10000CC8C(v15, v4, &qword_1006E1918);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1910);
    sub_100052FA0();
    v16 = sub_100010324(&qword_1006E1928);
    v17 = sub_1000378D0();
    v26 = v16;
    v27 = v17;
    swift_getOpaqueTypeConformance2();
LABEL_10:
    sub_10056F5B8();
    v19 = 0;
    goto LABEL_11;
  }

  sub_1000493B4(v11);
  sub_1005724C8();
  sub_100050804(&qword_1006E2400, &type metadata accessor for WidgetLocation);
  v18 = sub_1005727E8();
  v13(v9, v5);
  v13(v11, v5);
  if ((v18 & 1) == 0)
  {
    if (qword_1006DF958 != -1)
    {
      swift_once();
    }

    v20 = sub_100009DCC(&qword_1006E1910);
    v21 = sub_10000C49C(v20, qword_1006FC128);
    (*(*(v20 - 8) + 16))(v4, v21, v20);
    swift_storeEnumTagMultiPayload();
    sub_100009DCC(&qword_1006E1918);
    sub_100052FA0();
    v22 = sub_100010324(&qword_1006E1928);
    v23 = sub_1000378D0();
    v26 = v22;
    v27 = v23;
    swift_getOpaqueTypeConformance2();
    goto LABEL_10;
  }

  v19 = 1;
LABEL_11:
  v24 = sub_100009DCC(&qword_1006E2410);
  return (*(*(v24 - 8) + 56))(a1, v19, 1, v24);
}

uint64_t sub_10004AB54(uint64_t a1)
{
  v77 = a1;
  v71 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v71);
  v3 = v65 - v2;
  v4 = sub_100009DCC(&qword_1006E0618);
  v5 = __chkstk_darwin(v4 - 8);
  v66 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v65 - v7;
  v9 = type metadata accessor for WidgetMusicItem();
  v74 = *(v9 - 1);
  v10 = __chkstk_darwin(v9);
  v73 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v65 - v12;
  v14 = sub_1005724A8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v19 = *(v18 + 20);
  v72 = v1;
  v20 = *(v1 + v19 + *(type metadata accessor for TopChartsWidgetDataProvider.Chart(0) + 32));
  (*(v15 + 16))(v17, v77, v14);
  v21 = (*(v15 + 88))(v17, v14);
  if (v21 == enum case for WidgetFamily.systemSmall(_:))
  {

    v22 = 1;
  }

  else if (v21 == enum case for WidgetFamily.systemMedium(_:))
  {

    v22 = 2;
  }

  else if (v21 == enum case for WidgetFamily.systemLarge(_:))
  {

    v22 = 5;
  }

  else if (v21 == enum case for WidgetFamily.systemExtraLarge(_:))
  {

    v22 = 10;
  }

  else
  {
    v23 = *(v15 + 8);

    v23(v17, v14);
    v22 = 0;
  }

  result = sub_100074754(v22, v20);
  v70 = v27;
  v28 = v26 >> 1;
  if (v25 == v26 >> 1)
  {
LABEL_47:
    swift_unknownObjectRelease();
    return 0;
  }

  v65[1] = result;
  v68 = *(v18 + 28);
  v69 = v74 + 56;
  v29 = &qword_1006E0618;
  v75 = v8;
  v76 = v13;
  v67 = v26 >> 1;
  while (v25 < v28)
  {
    v31 = v9;
    v32 = v74;
    v33 = *(v74 + 72);
    v77 = v25;
    sub_100051B94(v70 + v33 * v25, v13, type metadata accessor for WidgetMusicItem);
    sub_100051B94(v13, v8, type metadata accessor for WidgetMusicItem);
    (*(v32 + 56))(v8, 0, 1, v31);
    v34 = *(v71 + 48);
    sub_10000CC8C(v8, v3, v29);
    sub_10000CC8C(v72 + v68, &v3[v34], v29);
    v35 = v29;
    v36 = *(v32 + 48);
    v9 = v31;
    if (v36(v3, 1, v31) == 1)
    {
      sub_10001036C(v8, v35);
      sub_100050C48(v13, type metadata accessor for WidgetMusicItem);
      v30 = v36(&v3[v34], 1, v31);
      v29 = v35;
      if (v30 == 1)
      {
        swift_unknownObjectRelease();
        sub_10001036C(v3, &qword_1006E0618);
        return 1;
      }

      goto LABEL_13;
    }

    v37 = v66;
    sub_10000CC8C(v3, v66, v35);
    if (v36(&v3[v34], 1, v9) == 1)
    {
      sub_10001036C(v75, v35);
      sub_100050C48(v76, type metadata accessor for WidgetMusicItem);
      sub_100050C48(v37, type metadata accessor for WidgetMusicItem);
      v29 = v35;
LABEL_13:
      result = sub_10001036C(v3, &qword_1006E0DE8);
      v8 = v75;
      v13 = v76;
      goto LABEL_14;
    }

    v38 = &v3[v34];
    v39 = v73;
    sub_1000522A4(v38, v73, type metadata accessor for WidgetMusicItem);
    v40 = v9[9];
    v41 = *(v37 + v40);
    v42 = *(v37 + v40 + 8);
    v43 = (v39 + v40);
    v44 = v41 == *v43 && v42 == v43[1];
    v29 = v35;
    v8 = v75;
    v13 = v76;
    if (!v44 && (sub_100574498() & 1) == 0)
    {
      if ((v45 = v9[10], v46 = (v37 + v45), (v47 = *(v37 + v45 + 8)) == 0) || (v48 = (v73 + v45), (v49 = v48[1]) == 0) || (*v46 != *v48 || v47 != v49) && (sub_100574498() & 1) == 0)
      {
        v50 = v9[11];
        v51 = *(v37 + v50);
        v52 = *(v37 + v50 + 8);
        v53 = (v73 + v50);
        if ((v51 != *v53 || v52 != v53[1]) && (sub_100574498() & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }

    v54 = v9[12];
    v55 = (v37 + v54);
    v56 = *(v37 + v54 + 8);
    v57 = (v73 + v54);
    v58 = v57[1];
    if (v56)
    {
      if (v58 && (*v55 == *v57 && v56 == v58 || (sub_100574498() & 1) != 0))
      {
LABEL_49:
        sub_100050C48(v73, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v8, &qword_1006E0618);
        sub_100050C48(v13, type metadata accessor for WidgetMusicItem);
        sub_100050C48(v37, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v3, &qword_1006E0618);
LABEL_50:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else if (!v58)
    {
      goto LABEL_49;
    }

    v59 = v9[13];
    v60 = (v37 + v59);
    v61 = *(v37 + v59 + 8);
    v62 = (v73 + v59);
    v63 = v62[1];
    if (!v61)
    {
      if (!v63)
      {
        goto LABEL_49;
      }

LABEL_46:
      sub_100050C48(v73, type metadata accessor for WidgetMusicItem);
      sub_10001036C(v8, v35);
      sub_100050C48(v13, type metadata accessor for WidgetMusicItem);
      sub_100050C48(v37, type metadata accessor for WidgetMusicItem);
      result = sub_10001036C(v3, v35);
      goto LABEL_14;
    }

    if (!v63)
    {
      goto LABEL_46;
    }

    if (*v60 == *v62 && v61 == v63)
    {
      goto LABEL_49;
    }

    v64 = sub_100574498();
    sub_100050C48(v73, type metadata accessor for WidgetMusicItem);
    sub_10001036C(v8, v29);
    sub_100050C48(v13, type metadata accessor for WidgetMusicItem);
    sub_100050C48(v37, type metadata accessor for WidgetMusicItem);
    result = sub_10001036C(v3, v29);
    if (v64)
    {
      goto LABEL_50;
    }

LABEL_14:
    v25 = v77 + 1;
    v28 = v67;
    if (v67 == v77 + 1)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B394@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v2 - 8);
  v4 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10056E698();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009DCC(&qword_1006E22D0);
  __chkstk_darwin(v7);
  v9 = v50 - v8;
  v10 = sub_1005724A8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v50 - v16;
  __chkstk_darwin(v15);
  v19 = v50 - v18;
  v20 = type metadata accessor for TopChartsWidgetContentView(0);
  v21 = *(v20 + 20);
  v50[1] = v20;
  v50[2] = v21;
  sub_1000A8194(v19);
  (*(v11 + 32))(v17, v19, v10);
  v22 = (*(v11 + 88))(v17, v10);
  if (v22 == enum case for WidgetFamily.systemMedium(_:))
  {
    v23 = 8.0;
    v24 = 6.0;
    v25 = 10.0;
    v26 = 2;
    v27 = 1;
  }

  else
  {
    v23 = 12.0;
    v24 = 8.0;
    v25 = 14.0;
    if (v22 == enum case for WidgetFamily.systemLarge(_:))
    {
      v27 = 1;
      v26 = 5;
    }

    else if (v22 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v27 = 2;
      v26 = 5;
    }

    else
    {
      (*(v11 + 8))(v17, v10);
      v26 = 0;
      v27 = 0;
      v25 = 0.0;
      v24 = 0.0;
      v23 = 0.0;
    }
  }

  *v9 = sub_10056F368();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v28 = *(sub_100009DCC(&qword_1006E22D8) + 44);
  v55[0] = v26;
  v55[1] = v27;
  *&v55[2] = v25;
  *&v55[3] = v24;
  *&v55[4] = v23;
  sub_10004B8FC(v1, v55, &v9[v28]);
  v29 = sub_10056FA88();
  sub_10056E598();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = &v9[*(sub_100009DCC(&qword_1006E22E0) + 36)];
  *v38 = v29;
  *(v38 + 1) = v31;
  *(v38 + 2) = v33;
  *(v38 + 3) = v35;
  *(v38 + 4) = v37;
  v38[40] = 0;
  v39 = &v9[*(v7 + 36)];
  *v39 = swift_getKeyPath();
  sub_100009DCC(&qword_1006E2108);
  swift_storeEnumTagMultiPayload();
  v40 = *(type metadata accessor for BackgroundModifier(0) + 20);
  *(v39 + v40) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148);
  swift_storeEnumTagMultiPayload();
  sub_1000A845C(v4);
  sub_1000A8194(v14);
  LOBYTE(v39) = sub_10004AB54(v14);
  (*(v11 + 8))(v14, v10);
  sub_100050C48(v4, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  if (v39)
  {
    v42 = v51;
    v41 = v52;
    v43 = v53;
    (*(v52 + 104))(v51, enum case for ColorScheme.light(_:), v53);
  }

  else
  {
    v42 = v51;
    sub_1000A81E4(v51);
    v41 = v52;
    v43 = v53;
  }

  KeyPath = swift_getKeyPath();
  v45 = sub_100009DCC(&qword_1006E22E8);
  v46 = v54;
  v47 = (v54 + *(v45 + 36));
  v48 = sub_100009DCC(&qword_1006E0DE0);
  (*(v41 + 32))(v47 + *(v48 + 28), v42, v43);
  *v47 = KeyPath;
  return sub_100019B40(v9, v46, &qword_1006E22D0);
}

uint64_t sub_10004B8FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v118 = a3;
  v4 = a2[1];
  v119 = *a2;
  v100 = v4;
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v115 = sub_100009DCC(&qword_1006E22F0);
  __chkstk_darwin(v115);
  v117 = &v92 - v8;
  v116 = sub_100009DCC(&qword_1006E22F8);
  __chkstk_darwin(v116);
  v92 = &v92 - v9;
  v107 = sub_1005724A8();
  v106 = *(v107 - 8);
  v10 = __chkstk_darwin(v107);
  v105 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v104 = &v92 - v12;
  v103 = sub_10056F808();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TopChartsWidgetContentView(0);
  v97 = *(v121 - 8);
  __chkstk_darwin(v121);
  v98 = v14;
  v99 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100009DCC(&qword_1006E2300);
  __chkstk_darwin(v120);
  v16 = &v92 - v15;
  v112 = sub_100009DCC(&qword_1006E2308);
  v111 = *(v112 - 8);
  __chkstk_darwin(v112);
  v110 = &v92 - v17;
  v18 = sub_100009DCC(&qword_1006E2310);
  v19 = __chkstk_darwin(v18 - 8);
  v114 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v109 = &v92 - v22;
  __chkstk_darwin(v21);
  v113 = &v92 - v23;
  v24 = sub_10056EBD8();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v92 - v29;
  v31 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v32 = v31 - 8;
  __chkstk_darwin(v31);
  v34 = &v92 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v36 = __chkstk_darwin(v35);
  v96 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v92 - v38;
  sub_1000A845C(&v92 - v38);
  v95 = v35;
  sub_100051B94(&v39[*(v35 + 20)], v34, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v39, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v40 = &v34[*(v32 + 36)];
  v41 = *(v40 + 1);
  v108 = *v40;

  sub_100050C48(v34, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v42 = sub_10056FA58();
  sub_1000A840C(v30);
  (*(v25 + 104))(v28, enum case for DynamicTypeSize.xxxLarge(_:), v24);
  sub_10056EBC8();
  v43 = *(v25 + 8);
  v43(v28, v24);
  v44 = v24;
  v45 = v119;
  v43(v30, v44);
  sub_10056E598();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v132 = 0;
  result = sub_1005709E8();
  *v16 = result;
  *(v16 + 1) = v55;
  *(v16 + 2) = 0x4042000000000000;
  v16[24] = 0;
  *(v16 + 4) = v7;
  v16[40] = 0;
  if (v45 < 0)
  {
    __break(1u);
  }

  else
  {
    v93 = v42;
    v94 = v41;
    sub_100009DCC(&qword_1006E2318);
    *&v125 = 0;
    *(&v125 + 1) = v45;
    swift_getKeyPath();
    v56 = v99;
    sub_100051B94(a1, v99, type metadata accessor for TopChartsWidgetContentView);
    v57 = (*(v97 + 80) + 56) & ~*(v97 + 80);
    v58 = swift_allocObject();
    v59 = v100;
    v58[2] = v45;
    v58[3] = v59;
    v58[4] = v5;
    v58[5] = v6;
    v58[6] = v7;
    sub_1000522A4(v56, v58 + v57, type metadata accessor for TopChartsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28);
    sub_100009DCC(&qword_1006E2320);
    sub_100029418();
    sub_100010BC0(&qword_1006E2328, &qword_1006E2320);
    sub_1005708B8();
    v60 = v101;
    sub_10056F7F8();
    v61 = sub_100010BC0(&qword_1006E2330, &qword_1006E2300);
    v62 = v110;
    sub_1005701F8();
    (*(v102 + 8))(v60, v103);
    sub_10001036C(v16, &qword_1006E2300);
    v63 = v96;
    sub_1000A845C(v96);
    v64 = (v63 + *(v95 + 40));
    v66 = *v64;
    v65 = v64[1];

    sub_100050C48(v63, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v67 = v104;
    sub_1000A8194(v104);
    v68 = v106;
    v69 = v105;
    v70 = v107;
    (*(v106 + 104))(v105, enum case for WidgetFamily.systemMedium(_:), v107);
    sub_100050804(&qword_1006E0E58, &type metadata accessor for WidgetFamily);
    sub_100572CB8();
    sub_100572CB8();
    v71 = *(v68 + 8);
    v71(v69, v70);
    v71(v67, v70);
    if (v65)
    {
      v72 = 16.0;
      if (v125 == v122)
      {
        v72 = 0.0;
      }

      v73 = v92;
      v74 = &v92[*(v116 + 36)];
      *v74 = v66;
      *(v74 + 1) = v65;
      *(v74 + 2) = v72;
      *(v74 + 3) = 0x4030000000000000;
      type metadata accessor for CGSize(0);
      v122 = 0uLL;
      sub_100570668();
      v75 = v126;
      *(v74 + 2) = v125;
      *(v74 + 6) = v75;
      v76 = type metadata accessor for ErrorMessageModifier();
      sub_10056FDE8();
      v77 = *(v76 + 36);
      *&v74[v77] = swift_getKeyPath();
      sub_100009DCC(&qword_1006E0148);
      swift_storeEnumTagMultiPayload();
      v78 = &v74[*(v76 + 40)];
      *v78 = swift_getKeyPath();
      *(v78 + 1) = 0;
      *(v78 + 2) = 0;
      *(v78 + 3) = 0;
      v78[32] = 0;
      v79 = v111;
      v80 = v112;
      (*(v111 + 16))(v73, v62, v112);
      sub_10000CC8C(v73, v117, &qword_1006E22F8);
      swift_storeEnumTagMultiPayload();
      sub_10005239C();
      *&v125 = v120;
      *(&v125 + 1) = v61;
      swift_getOpaqueTypeConformance2();
      v81 = v109;
      sub_10056F5B8();
      sub_10001036C(v73, &qword_1006E22F8);
    }

    else
    {
      v79 = v111;
      v80 = v112;
      (*(v111 + 16))(v117, v62, v112);
      swift_storeEnumTagMultiPayload();
      sub_10005239C();
      *&v125 = v120;
      *(&v125 + 1) = v61;
      swift_getOpaqueTypeConformance2();
      v81 = v109;
      sub_10056F5B8();
    }

    (*(v79 + 8))(v62, v80);
    v82 = v113;
    sub_100019B40(v81, v113, &qword_1006E2310);
    v83 = v114;
    sub_10000CC8C(v82, v114, &qword_1006E2310);
    v84 = v108;
    *&v122 = v108;
    v85 = v94;
    *(&v122 + 1) = v94;
    v86 = v93;
    LOBYTE(v123) = v93;
    *(&v123 + 1) = *v133;
    DWORD1(v123) = *&v133[3];
    *(&v123 + 1) = v47;
    *v124 = v49;
    *&v124[8] = v51;
    *&v124[16] = v53;
    v124[24] = 0;
    v87 = v122;
    v88 = v123;
    v89 = *v124;
    v90 = v118;
    *(v118 + 41) = *&v124[9];
    v90[1] = v88;
    v90[2] = v89;
    *v90 = v87;
    v91 = sub_100009DCC(&qword_1006E2340);
    sub_10000CC8C(v83, v90 + *(v91 + 48), &qword_1006E2310);
    sub_10000CC8C(&v122, &v125, &qword_1006E0E78);
    sub_10001036C(v82, &qword_1006E2310);
    sub_10001036C(v83, &qword_1006E2310);
    *&v125 = v84;
    *(&v125 + 1) = v85;
    LOBYTE(v126) = v86;
    *(&v126 + 1) = *v133;
    HIDWORD(v126) = *&v133[3];
    v127 = v47;
    v128 = v49;
    v129 = v51;
    v130 = v53;
    v131 = 0;
    return sub_10001036C(&v125, &qword_1006E0E78);
  }

  return result;
}

uint64_t sub_10004C7BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  v12 = type metadata accessor for TopChartsWidgetContentView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100009DCC(&qword_1006E2320);
    v19[0] = 0;
    v19[1] = v7;
    swift_getKeyPath();
    sub_100051B94(a3, v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopChartsWidgetContentView);
    v17 = (*(v13 + 80) + 64) & ~*(v13 + 80);
    v18 = swift_allocObject();
    v18[2] = v16;
    v18[3] = v8;
    v18[4] = v7;
    v18[5] = v9;
    v18[6] = v10;
    v18[7] = v11;
    sub_1000522A4(v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for TopChartsWidgetContentView);
    sub_100009DCC(&qword_1006E0E28);
    sub_100009DCC(&qword_1006E2348);
    sub_100029418();
    sub_100052C0C();
    return sub_1005708B8();
  }

  return result;
}

uint64_t sub_10004C9D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v45 = a5;
  v46 = a4;
  v49 = a2;
  v6 = *a3;
  v7 = sub_100009DCC(qword_1006E1D50);
  v8 = __chkstk_darwin(v7 - 8);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v47 = &v40 - v10;
  v11 = sub_10056C8A8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v48 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100009DCC(&qword_1006E2360);
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v42 = &v40 - v15;
  v16 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin(v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100009DCC(&qword_1006E0618);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v23);
  v28 = &v40 - v27;
  v29 = v6 * *a1;
  if ((v6 * *a1) >> 64 != v29 >> 63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v30 = v49 + v29;
  if (__OFADD__(v49, v29))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(10, v30))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v49 = 10 - v30;
  sub_1000A845C(v21);
  sub_100051B94(&v21[*(v19 + 20)], v18, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100050C48(v21, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);

  sub_100050C48(v18, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v31 = type metadata accessor for WidgetMusicItem();
  Array.subscript.getter(v31, v28);

  sub_10000CC8C(v28, v25, &qword_1006E0618);
  if ((*(*(v31 - 8) + 48))(v25, 1, v31) != 1)
  {
    v36 = &v25[*(v31 + 28)];
    v37 = v47;
    (*(v12 + 16))(v47, v36, v11);
    sub_100050C48(v25, type metadata accessor for WidgetMusicItem);
    (*(v12 + 56))(v37, 0, 1, v11);
    v35 = (*(v12 + 32))(v48, v37, v11);
LABEL_9:
    __chkstk_darwin(v35);
    *(&v40 - 2) = v28;
    *(&v40 - 1) = v30;
    _s12MusicWidgets12SongCellViewVMa_0(0);
    sub_100050804(&qword_1006E2368, _s12MusicWidgets12SongCellViewVMa_0);
    v38 = v42;
    sub_10056FC78();
    sub_100010BC0(&qword_1006E2358, &qword_1006E2360);
    v39 = v44;
    sub_100570068();
    (*(v43 + 8))(v38, v39);
    return sub_10001036C(v28, &qword_1006E0618);
  }

  sub_10001036C(v25, &qword_1006E0618);
  v32 = v47;
  (*(v12 + 56))(v47, 1, 1, v11);
  v33 = v41;
  sub_10056C868();
  v34 = *(v12 + 48);
  result = v34(v33, 1, v11);
  if (result != 1)
  {
    (*(v12 + 32))(v48, v33, v11);
    v35 = v34(v32, 1, v11);
    if (v35 != 1)
    {
      v35 = sub_10001036C(v32, qword_1006E1D50);
    }

    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_10004D06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_10000CC8C(a1, a3, &qword_1006E0618);
  v6 = a2 + 1;
  if (__OFADD__(a2, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = _s12MusicWidgets12SongCellViewVMa_0(0);
    *(a3 + v7[5]) = v6;
    v8 = v7[6];
    *(a3 + v8) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E2108);
    swift_storeEnumTagMultiPayload();
    v9 = v7[7];
    *(a3 + v9) = swift_getKeyPath();
    sub_100009DCC(&qword_1006E0EB0);

    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_10004D150@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v279 = a2;
  v278 = sub_100009DCC(&qword_1006E2670);
  __chkstk_darwin(v278);
  v266 = &v233 - v3;
  v4 = sub_100009DCC(&qword_1006E0FA8);
  v264 = *(v4 - 8);
  v265 = v4;
  __chkstk_darwin(v4);
  v249 = &v233 - v5;
  v259 = sub_10056EAC8();
  v248 = *(v259 - 8);
  v6 = __chkstk_darwin(v259);
  v246 = &v233 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v247 = &v233 - v8;
  v244 = sub_100009DCC(&qword_1006E0FB0);
  v9 = __chkstk_darwin(v244);
  v243 = &v233 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v242 = &v233 - v11;
  v241 = sub_100009DCC(&qword_1006E0FB8);
  v12 = __chkstk_darwin(v241);
  v245 = &v233 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v269 = &v233 - v14;
  v15 = sub_100009DCC(&qword_1006E0528);
  __chkstk_darwin(v15 - 8);
  v255 = &v233 - v16;
  v256 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v254 = *(v256 - 8);
  __chkstk_darwin(v256);
  v260 = &v233 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_100009DCC(&qword_1006E0DE8);
  __chkstk_darwin(v251);
  v252 = &v233 - v18;
  v268 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v19 = __chkstk_darwin(v268);
  v253 = &v233 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v250 = &v233 - v21;
  v22 = sub_100009DCC(&qword_1006E0FC0);
  v23 = __chkstk_darwin(v22 - 8);
  v262 = &v233 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v263 = &v233 - v25;
  v26 = sub_100009DCC(&qword_1006E2678);
  v27 = __chkstk_darwin(v26 - 8);
  v261 = &v233 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v276 = &v233 - v29;
  v267 = sub_100009DCC(&qword_1006E10D8);
  __chkstk_darwin(v267);
  v275 = (&v233 - v30);
  v270 = sub_100009DCC(&qword_1006E2680);
  __chkstk_darwin(v270);
  v271 = (&v233 - v31);
  v32 = type metadata accessor for WidgetMusicItem();
  v281 = *(v32 - 8);
  __chkstk_darwin(v32);
  v284 = &v233 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100009DCC(&qword_1006E2688);
  v35 = __chkstk_darwin(v34 - 8);
  v277 = &v233 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v282 = &v233 - v37;
  v38 = sub_100009DCC(&qword_1006E0618);
  v39 = __chkstk_darwin(v38 - 8);
  v240 = &v233 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v257 = &v233 - v42;
  v43 = __chkstk_darwin(v41);
  v258 = &v233 - v44;
  v45 = __chkstk_darwin(v43);
  v47 = &v233 - v46;
  __chkstk_darwin(v45);
  v49 = &v233 - v48;
  v50 = sub_100009DCC(&qword_1006E2690);
  __chkstk_darwin(v50);
  v52 = (&v233 - v51);
  v53 = sub_100009DCC(&qword_1006E2698);
  v273 = *(v53 - 8);
  v274 = v53;
  v54 = __chkstk_darwin(v53);
  v272 = &v233 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v57 = &v233 - v56;
  *v52 = sub_1005709E8();
  v52[1] = v58;
  v59 = sub_100009DCC(&qword_1006E26A0);
  sub_10004ECD8(a1, (v52 + *(v59 + 44)));
  sub_100010BC0(&qword_1006E26A8, &qword_1006E2690);
  v283 = v57;
  v60 = v32;
  sub_10056FFD8();
  v61 = v52;
  v62 = a1;
  sub_10001036C(v61, &qword_1006E2690);
  sub_10000CC8C(a1, v49, &qword_1006E0618);
  v63 = v281 + 48;
  v280 = *(v281 + 48);
  if (v280(v49, 1, v32) == 1)
  {
    sub_10001036C(v49, &qword_1006E0618);
    v297 = 0u;
    v298 = 0u;
    v299 = 0;
  }

  else
  {
    *(&v298 + 1) = v32;
    v299 = &off_100681290;
    v64 = sub_10002AB7C(&v297);
    sub_1000522A4(v49, v64, type metadata accessor for WidgetMusicItem);
  }

  v65 = Corner.small.unsafeMutableAddressor();
  v66 = *v65;
  v67 = v65[1];
  v68 = *(v65 + 16);
  v293 = v297;
  v294 = v298;
  v295 = v299;
  v69 = sub_10056FA88();
  sub_10056E598();
  v296 = 0;
  v297 = v293;
  v298 = v294;
  v299 = v295;
  v300 = v66;
  v301 = v67;
  v302 = v68;
  v303 = v69;
  v304 = v70;
  v305 = v71;
  v306 = v72;
  v307 = v73;
  v308 = 0;
  sub_10000CC8C(v62, v47, &qword_1006E0618);
  v74 = v280(v47, 1, v60);
  v75 = v282;
  v76 = v284;
  if (v74 != 1)
  {
    sub_1000522A4(v47, v284, type metadata accessor for WidgetMusicItem);
    v78 = *(v76 + 24);
    *&v293 = *(v76 + 16);
    *(&v293 + 1) = v78;
    sub_10001B550();

    v79 = sub_10056FF28();
    v235 = v80;
    v236 = v79;
    v234 = v81;
    v237 = v82;
    v238 = v60;
    v83 = *(v76 + v60[15]);
    v84 = *(v83 + 16);
    v239 = v62;
    v233 = v63;
    if (v84)
    {
      v85 = (v83 + 32);
      if (qword_1006DF8E8 != -1)
      {
        swift_once();
      }

      v86 = 0;
      v87 = 0;
      v88 = _swiftEmptyArrayStorage;
      v89 = 0xE000000000000000;
      do
      {
        LODWORD(v288) = v87;
        v289 = v89;
        v290 = v88;
        v90 = *v85;
        v291 = v86;
        v292 = v85 + 1;
        TextBadge.view(favoriteBadgeConfiguration:)(qword_1006E07A0, v90);
        v92 = v91;
        v94 = v93;
        v96 = v95;
        sub_10056FB08();
        sub_10056FB88();
        sub_10056FBE8();

        v97 = sub_10056FE88();
        v285 = v98;
        v286 = v99;
        LODWORD(v287) = v100;

        sub_10001B5A4(v92, v94, v96 & 1);

        v101 = v288;
        v102 = v291;
        v103 = v289;
        v104 = v285;
        v105 = sub_10056FE58();
        v107 = v106;
        v109 = v108;
        LOBYTE(v108) = v101 & 1;
        v111 = v110;
        v112 = v102;
        v113 = v105;
        v114 = v103;
        v115 = v109;
        sub_10001B5A4(v112, v114, v108);

        v85 = v292;
        sub_10001B5A4(v97, v104, v287 & 1);

        v86 = v113;
        v89 = v107;
        v87 = v115;
        v88 = v111;
        --v84;
      }

      while (v84);
    }

    else
    {
      v113 = 0;
      LOBYTE(v115) = 0;
      v107 = 0xE000000000000000;
    }

    v116 = v234;
    v118 = v235;
    v117 = v236;
    v119 = sub_10056FE58();
    v291 = v120;
    v292 = v119;
    v122 = v121;
    v290 = v123;
    sub_10001B5A4(v113, v107, v115 & 1);

    sub_10001B5A4(v117, v118, v116 & 1);

    sub_10056FB08();
    sub_10056FB68();
    sub_10056FBE8();

    v125 = v291;
    v124 = v292;
    v126 = sub_10056FE88();
    v128 = v127;
    v130 = v129;

    sub_10001B5A4(v124, v125, v122 & 1);

    if (qword_1006DF930 != -1)
    {
      swift_once();
    }

    v131 = sub_10056FE18();
    v290 = v132;
    v291 = v131;
    LODWORD(v289) = v133;
    v292 = v134;
    sub_10001B5A4(v126, v128, v130 & 1);

    v135 = v284;
    v136 = *(v284 + 32);
    v137 = *(v284 + 40);
    v138 = sub_100054170(&off_1006801D8);

    v139 = Text.init(optional:options:)(v136, v137, v138);
    v288 = v140;
    v142 = v141;
    v144 = v143;
    v145 = sub_10056FB08();
    KeyPath = swift_getKeyPath();
    if (qword_1006DF938 != -1)
    {
      swift_once();
    }

    v147 = sub_100009DCC(&qword_1006E1058);
    v148 = sub_10000C49C(v147, qword_1006FC0D8);
    v149 = v275;
    sub_10000CC8C(v148, v275 + *(v267 + 36), &qword_1006E1058);
    v150 = v288;
    *v149 = v139;
    v149[1] = v150;
    v149[2] = v142;
    v149[3] = v144;
    v149[4] = KeyPath;
    v149[5] = v145;
    v151 = sub_10056FA08();
    v152 = v276;
    *v276 = v151;
    v153 = sub_100009DCC(&qword_1006E26C0);
    sub_10004F070(v291, v290, v289 & 1, v292, v135, v149, &v152[*(v153 + 44)]);
    v154 = v238;
    if ((*(v135 + v238[16]) & 1) == 0)
    {
      v168 = v263;
      (*(v264 + 56))(v263, 1, 1, v265);
      v169 = v266;
LABEL_37:
      v219 = v261;
      v218 = v262;
      v220 = v276;
      sub_10000CC8C(v276, v261, &qword_1006E2678);
      sub_10000CC8C(v168, v218, &qword_1006E0FC0);
      sub_10000CC8C(v219, v169, &qword_1006E2678);
      v221 = sub_100009DCC(&qword_1006E26C8);
      v222 = v169 + *(v221 + 48);
      *v222 = 0;
      *(v222 + 8) = 0;
      sub_10000CC8C(v218, v169 + *(v221 + 64), &qword_1006E0FC0);
      sub_10001036C(v218, &qword_1006E0FC0);
      sub_10001036C(v219, &qword_1006E2678);
      sub_10000CC8C(v169, v271, &qword_1006E2670);
      swift_storeEnumTagMultiPayload();
      sub_100010BC0(&qword_1006E26B0, &qword_1006E2670);
      v223 = v282;
      sub_10056F5B8();
      sub_10001B5A4(v291, v290, v289 & 1);

      sub_10001036C(v169, &qword_1006E2670);
      sub_10001036C(v168, &qword_1006E0FC0);
      sub_10001036C(v220, &qword_1006E2678);
      sub_10001036C(v275, &qword_1006E10D8);
      sub_100050C48(v284, type metadata accessor for WidgetMusicItem);
      v75 = v223;
      goto LABEL_38;
    }

    v155 = v258;
    sub_100051B94(v135, v258, type metadata accessor for WidgetMusicItem);
    (*(v281 + 56))(v155, 0, 1, v154);
    v288 = *(_s12MusicWidgets12SongCellViewVMa_0(0) + 24);
    v156 = v250;
    sub_1000A845C(v250);
    v157 = v257;
    sub_10000CC8C(v156 + *(v268 + 28), v257, &qword_1006E0618);
    sub_100050C48(v156, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v158 = v252;
    v159 = *(v251 + 48);
    sub_10000CC8C(v155, v252, &qword_1006E0618);
    sub_10000CC8C(v157, v158 + v159, &qword_1006E0618);
    v160 = v280;
    if (v280(v158, 1, v154) == 1)
    {
      sub_10001036C(v157, &qword_1006E0618);
      sub_10001036C(v155, &qword_1006E0618);
      v161 = v160(v158 + v159, 1, v154);
      v162 = v260;
      v163 = v158;
      v165 = v253;
      v164 = v254;
      v166 = v268;
      if (v161 == 1)
      {
        sub_10001036C(v163, &qword_1006E0618);
        v167 = 1;
LABEL_25:
        v173 = v255;
        v172 = v256;
LABEL_27:
        sub_1000A845C(v165);
        sub_10000CC8C(v165 + *(v166 + 32), v173, &qword_1006E0528);
        sub_100050C48(v165, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
        v174 = *(v164 + 48);
        if (v174(v173, 1, v172) != 1)
        {
          sub_1000522A4(v173, v162, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          goto LABEL_32;
        }

        if (qword_1006DF8D8 != -1)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v175 = sub_10000C49C(v172, qword_1006FC048);
          sub_100051B94(v175, v162, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          if (v174(v173, 1, v172) != 1)
          {
            sub_10001036C(v173, &qword_1006E0528);
          }

LABEL_32:
          v176 = *(v172 + 20);
          v174 = sub_10056CAA8();
          sub_100050804(&qword_1006E1110, &type metadata accessor for Date);
          if (sub_1005727C8())
          {
            break;
          }

          __break(1u);
LABEL_40:
          swift_once();
        }

        v177 = *(v174 - 1);
        LODWORD(v288) = v167;
        v178 = v177;
        v179 = *(v177 + 16);
        v180 = v242;
        v179(v242, v162, v174);
        v181 = v244;
        v179((v180 + *(v244 + 48)), v162 + v176, v174);
        v182 = v243;
        sub_10000CC8C(v180, v243, &qword_1006E0FB0);
        v287 = *(v181 + 48);
        v183 = *(v178 + 32);
        v184 = v269;
        v183(v269, v182, v174);
        v185 = *(v178 + 8);
        v185(v182 + v287, v174);
        sub_100019B40(v180, v182, &qword_1006E0FB0);
        v183(v184 + *(v241 + 36), v182 + *(v181 + 48), v174);
        v185(v182, v174);
        v186 = v247;
        if (v288)
        {
          sub_10004F90C(v247);
          v187 = &type metadata for TogglePlaybackAppIntent;
          v188 = sub_10002AB28();
          v169 = v266;
          v189 = v259;
          v190 = v248;
        }

        else
        {
          v190 = v248;
          v189 = v259;
          (*(v248 + 104))(v247, enum case for PlaybackButton.State.unplayed(_:), v259);
          v191 = (v284 + v238[11]);
          v192 = *v191;
          v193 = v191[1];
          v194 = (v284 + v238[14]);
          v195 = *v194;
          v196 = v194[1];

          v197 = sub_10002C7C0(v192, v193, v195, v196);
          v199 = v198;
          v201 = v200;
          v188 = sub_10002AAD4();
          *&v293 = v197;
          *(&v293 + 1) = v199;
          *&v294 = v201;
          v187 = &type metadata for StartPlaybackAppIntent;
          v169 = v266;
        }

        *(&v294 + 1) = v187;
        v295 = v188;
        v202 = sub_10000C8CC(&v293, v187);
        sub_10000CC8C(v269, v245, &qword_1006E0FB8);
        v203 = (*(v190 + 16))(v246, v186, v189);
        v288 = &v233;
        __chkstk_darwin(v203);
        (*(v205 + 16))(&v233 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0), v202, v187);
        v206 = v249;
        sub_10056EAB8();
        v207 = sub_10056FA68();
        sub_10056E598();
        v209 = v208;
        v211 = v210;
        v213 = v212;
        v215 = v214;
        (*(v190 + 8))(v186, v259);
        sub_10001036C(v269, &qword_1006E0FB8);
        sub_100050C48(v260, type metadata accessor for NowPlayingDataProvider.ItemProgress);
        v216 = v265;
        v217 = v206 + *(v265 + 36);
        *v217 = v207;
        *(v217 + 8) = v209;
        *(v217 + 16) = v211;
        *(v217 + 24) = v213;
        *(v217 + 32) = v215;
        *(v217 + 40) = 0;
        v168 = v263;
        sub_100019B40(v206, v263, &qword_1006E0FA8);
        (*(v264 + 56))(v168, 0, 1, v216);
        sub_100010474(&v293);
        goto LABEL_37;
      }
    }

    else
    {
      v170 = v240;
      sub_10000CC8C(v158, v240, &qword_1006E0618);
      v171 = v160(v158 + v159, 1, v154);
      v162 = v260;
      v163 = v158;
      v165 = v253;
      v164 = v254;
      if (v171 != 1)
      {
        v167 = sub_10003CD6C(v170, v163 + v159);
        sub_100050C48(v163 + v159, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v257, &qword_1006E0618);
        sub_10001036C(v258, &qword_1006E0618);
        sub_100050C48(v170, type metadata accessor for WidgetMusicItem);
        sub_10001036C(v163, &qword_1006E0618);
        v173 = v255;
        v172 = v256;
        v166 = v268;
        goto LABEL_27;
      }

      sub_10001036C(v257, &qword_1006E0618);
      sub_10001036C(v258, &qword_1006E0618);
      sub_100050C48(v170, type metadata accessor for WidgetMusicItem);
      v166 = v268;
    }

    sub_10001036C(v163, &qword_1006E0DE8);
    v167 = 0;
    goto LABEL_25;
  }

  sub_10001036C(v47, &qword_1006E0618);
  v77 = v271;
  *v271 = 0;
  *(v77 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100010BC0(&qword_1006E26B0, &qword_1006E2670);
  sub_10056F5B8();
LABEL_38:
  v224 = v272;
  v225 = v273;
  v226 = *(v273 + 16);
  v227 = v274;
  v226(v272, v283, v274);
  sub_10000CC8C(&v297, &v293, &qword_1006E1038);
  v228 = v277;
  sub_10000CC8C(v75, v277, &qword_1006E2688);
  v229 = v279;
  v226(v279, v224, v227);
  v230 = sub_100009DCC(&qword_1006E26B8);
  sub_10000CC8C(&v293, &v229[*(v230 + 48)], &qword_1006E1038);
  sub_10000CC8C(v228, &v229[*(v230 + 64)], &qword_1006E2688);
  sub_10001036C(v75, &qword_1006E2688);
  sub_10001036C(&v297, &qword_1006E1038);
  v231 = *(v225 + 8);
  v231(v283, v227);
  sub_10001036C(v228, &qword_1006E2688);
  sub_10001036C(&v293, &qword_1006E1038);
  return (v231)(v224, v227);
}

uint64_t sub_10004ECD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a2;
  v3 = sub_100009DCC(&qword_1006E2718);
  v4 = __chkstk_darwin(v3 - 8);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v43 = &v40 - v6;
  v46 = *(a1 + *(_s12MusicWidgets12SongCellViewVMa_0(0) + 20));
  sub_100054290();
  v46 = sub_100573D48();
  v47 = v7;
  sub_10001B550();
  v8 = sub_10056FF28();
  v10 = v9;
  v12 = v11;
  sub_10056FB08();
  sub_10056FB28();

  v13 = sub_10056FE88();
  v15 = v14;
  v17 = v16;

  sub_10001B5A4(v8, v10, v12 & 1);

  if (qword_1006DF930 != -1)
  {
    swift_once();
  }

  v40 = sub_10056FE18();
  v19 = v18;
  v41 = v20;
  v42 = v21;
  sub_10001B5A4(v13, v15, v17 & 1);

  sub_10056FB08();
  sub_10056FB28();

  v22 = sub_10056FE88();
  v24 = v23;
  v26 = v25;

  sub_1005704B8();
  v27 = sub_10056FE18();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_10001B5A4(v22, v24, v26 & 1);

  v46 = v27;
  v47 = v29;
  v48 = v31 & 1;
  v49 = v33;
  v34 = v43;
  sub_100570078();
  sub_10001B5A4(v27, v29, v31 & 1);

  v35 = v45;
  sub_10000CC8C(v34, v45, &qword_1006E2718);
  v36 = v44;
  v37 = v40;
  *v44 = v40;
  v36[1] = v19;
  LOBYTE(v29) = v41 & 1;
  *(v36 + 16) = v41 & 1;
  v36[3] = v42;
  v38 = sub_100009DCC(&qword_1006E2728);
  sub_10000CC8C(v35, v36 + *(v38 + 48), &qword_1006E2718);
  sub_10002AAC4(v37, v19, v29);

  sub_10001036C(v34, &qword_1006E2718);
  sub_10001036C(v35, &qword_1006E2718);
  sub_10001B5A4(v37, v19, v29);
}

uint64_t sub_10004F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a7;
  v13 = sub_100009DCC(&qword_1006E26D0);
  v14 = __chkstk_darwin(v13 - 8);
  v41 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v35 - v16;
  v18 = sub_100009DCC(&qword_1006E26D8);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v35 - v22;
  *v23 = sub_10056F378();
  *(v23 + 1) = 0;
  v23[16] = 1;
  v24 = a3 & 1;
  v25 = &v23[*(sub_100009DCC(&qword_1006E26E0) + 44)];
  v37 = a1;
  v38 = a2;
  v39 = a4;
  sub_10004F3B8(a1, a2, v24, a4, a5, a6, v25);
  *v17 = sub_10056F378();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v26 = sub_100009DCC(&qword_1006E26E8);
  sub_10004F614(a1, a2, v24, a4, a5, a6, &v17[*(v26 + 44)]);
  v36 = sub_10056F378();
  v40 = v21;
  sub_10000CC8C(v23, v21, &qword_1006E26D8);
  v27 = v41;
  sub_10000CC8C(v17, v41, &qword_1006E26D0);
  v28 = v42;
  sub_10000CC8C(v21, v42, &qword_1006E26D8);
  v29 = sub_100009DCC(&qword_1006E26F0);
  sub_10000CC8C(v27, v28 + *(v29 + 48), &qword_1006E26D0);
  v30 = v28 + *(v29 + 64);
  v31 = v37;
  *v30 = v36;
  *(v30 + 8) = 0;
  *(v30 + 16) = 1;
  v33 = v38;
  v32 = v39;
  *(v30 + 24) = v31;
  *(v30 + 32) = v33;
  *(v30 + 40) = v24;
  *(v30 + 48) = v32;
  sub_10002AAC4(v31, v33, v24);

  sub_10002AAC4(v31, v33, v24);

  sub_10001036C(v17, &qword_1006E26D0);
  sub_10001036C(v23, &qword_1006E26D8);
  sub_10001B5A4(v31, v33, v24);

  sub_10001036C(v27, &qword_1006E26D0);
  return sub_10001036C(v40, &qword_1006E26D8);
}

uint64_t sub_10004F3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = sub_100009DCC(&qword_1006E2700);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *(a5 + 40);
  if (v20 && ((v20 & 0x2000000000000000) != 0 ? (v21 = HIBYTE(v20) & 0xF) : (v21 = *(a5 + 32) & 0xFFFFFFFFFFFFLL), v21))
  {
    sub_10000CC8C(a6, &v27 - v18, &qword_1006E10D8);
    v22 = sub_100009DCC(&qword_1006E10D8);
    (*(*(v22 - 8) + 56))(v19, 0, 1, v22);
  }

  else
  {
    v23 = sub_100009DCC(&qword_1006E10D8);
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  }

  sub_10000CC8C(v19, v17, &qword_1006E2700);
  *a7 = a1;
  *(a7 + 8) = a2;
  v24 = a3 & 1;
  *(a7 + 16) = v24;
  *(a7 + 24) = a4;
  v25 = sub_100009DCC(&qword_1006E2708);
  sub_10000CC8C(v17, a7 + *(v25 + 48), &qword_1006E2700);
  sub_10002AAC4(a1, a2, v24);

  sub_10002AAC4(a1, a2, v24);

  sub_10001036C(v19, &qword_1006E2700);
  sub_10001036C(v17, &qword_1006E2700);
  sub_10001B5A4(a1, a2, v24);
}

uint64_t sub_10004F614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v30 = a6;
  v32 = a4;
  v31 = a3;
  v11 = sub_100009DCC(&qword_1006E0FE8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v29 - v13;
  v15 = sub_100009DCC(&qword_1006E1138);
  v16 = __chkstk_darwin(v15 - 8);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v29 - v19;
  KeyPath = swift_getKeyPath();
  v22 = *(a5 + 40);
  if (v22 && ((v22 & 0x2000000000000000) != 0 ? (v23 = HIBYTE(v22) & 0xF) : (v23 = *(a5 + 32) & 0xFFFFFFFFFFFFLL), v23))
  {
    v24 = swift_getKeyPath();
    sub_10000CC8C(v30, v14, &qword_1006E10D8);
    v25 = &v14[*(v11 + 36)];
    *v25 = v24;
    *(v25 + 1) = 1;
    v25[16] = 0;
    sub_100019B40(v14, v20, &qword_1006E0FE8);
    (*(v12 + 56))(v20, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v20, 1, 1, v11);
  }

  sub_10000CC8C(v20, v18, &qword_1006E1138);
  *a7 = a1;
  *(a7 + 8) = a2;
  v26 = v31 & 1;
  *(a7 + 16) = v31 & 1;
  *(a7 + 24) = v32;
  *(a7 + 32) = KeyPath;
  *(a7 + 40) = 1;
  *(a7 + 48) = 0;
  v27 = sub_100009DCC(&qword_1006E26F8);
  sub_10000CC8C(v18, a7 + *(v27 + 48), &qword_1006E1138);
  sub_10002AAC4(a1, a2, v26);

  sub_10002AAC4(a1, a2, v26);

  sub_10001036C(v20, &qword_1006E1138);
  sub_10001036C(v18, &qword_1006E1138);
  sub_10001B5A4(a1, a2, v26);
}

uint64_t sub_10004F90C@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_100009DCC(&qword_1006E0528);
  __chkstk_darwin(v2 - 8);
  v32 = &v31 - v3;
  v4 = sub_100009DCC(&unk_1006E1E90);
  __chkstk_darwin(v4 - 8);
  v33 = &v31 - v5;
  v6 = sub_10056F198();
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009DCC(&qword_1006E2108);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  v12 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v13 = __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v31 - v16;
  v18 = *(_s12MusicWidgets12SongCellViewVMa_0(0) + 24);
  v31 = v1;
  sub_10000CC8C(v1 + v18, v11, &qword_1006E2108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000522A4(v11, v17, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  }

  else
  {
    sub_100573438();
    v19 = sub_10056F9D8();
    sub_10056DE58();

    sub_10056F188();
    swift_getAtKeyPath();

    (*(v34 + 8))(v8, v35);
  }

  v20 = v17[*(v12 + 24)];
  sub_100050C48(v17, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  v21 = v36;
  if (v20 > 1)
  {
    v22 = &enum case for PlaybackButton.State.unplayed(_:);
    goto LABEL_15;
  }

  if (v20)
  {
    sub_1000A845C(v15);
    v23 = v32;
    sub_10000CC8C(&v15[*(v12 + 32)], v32, &qword_1006E0528);
    sub_100050C48(v15, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
    v24 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      sub_10001036C(v23, &qword_1006E0528);
      v25 = sub_10056CAA8();
      v26 = v33;
      (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    }

    else
    {
      v26 = v33;
      sub_10000CC8C(v23 + *(v24 + 24), v33, &unk_1006E1E90);
      sub_100050C48(v23, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      v25 = sub_10056CAA8();
      v27 = *(v25 - 8);
      if ((*(v27 + 48))(v26, 1, v25) != 1)
      {
        (*(v27 + 32))(v21, v26, v25);
LABEL_14:
        v22 = &enum case for PlaybackButton.State.paused(_:);
        goto LABEL_15;
      }
    }

    sub_10056CA68();
    sub_10056CAA8();
    if ((*(*(v25 - 8) + 48))(v26, 1, v25) != 1)
    {
      sub_10001036C(v26, &unk_1006E1E90);
    }

    goto LABEL_14;
  }

  v22 = &enum case for PlaybackButton.State.playing(_:);
LABEL_15:
  v28 = *v22;
  v29 = sub_10056EAC8();
  return (*(*(v29 - 8) + 104))(v21, v28, v29);
}

uint64_t sub_10004FEBC()
{
  v1 = sub_10056F808();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009DCC(&qword_1006E2658);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_10056F218();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100009DCC(&qword_1006E2660);
  sub_10004D150(v0, &v7[*(v8 + 44)]);
  sub_10056F7E8();
  sub_100010BC0(&qword_1006E2668, &qword_1006E2658);
  sub_1005701F8();
  (*(v2 + 8))(v4, v1);
  return sub_10001036C(v7, &qword_1006E2658);
}

uint64_t sub_10005007C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = sub_100009DCC(&qword_1006E0DF0);
  __chkstk_darwin(v31);
  v2 = &v26 - v1;
  v3 = sub_100570558();
  v27 = *(v3 - 8);
  v28 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100009DCC(&qword_1006E0DC0);
  __chkstk_darwin(v30);
  v29 = &v26 - v6;
  v7 = sub_1005724A8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_1000A845C(&v26 - v15);
  type metadata accessor for BackgroundModifier(0);
  sub_1000A8194(v10);
  v17 = sub_10004AB54(v10);
  (*(v8 + 8))(v10, v7);
  sub_100050C48(v16, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
  if ((v17 & 1) != 0 && (sub_1000A845C(v14), v18 = *&v14[*(v11 + 36)], v19 = v18, sub_100050C48(v14, type metadata accessor for TopChartsWidgetTimelineProvider.Entry), v18))
  {
    v20 = v19;
    sub_100570538();
    v22 = v27;
    v21 = v28;
    (*(v27 + 104))(v5, enum case for Image.ResizingMode.stretch(_:), v28);
    v23 = sub_1005705D8();

    (*(v22 + 8))(v5, v21);
    v33 = v23;
    v24 = v29;
    sub_100570078();

    sub_10000CC8C(v24, v2, &qword_1006E0DC0);
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();
    sub_10056F5B8();

    return sub_10001036C(v24, &qword_1006E0DC0);
  }

  else
  {
    if (qword_1006DF950 != -1)
    {
      swift_once();
    }

    *v2 = xmmword_1006FC100;
    *(v2 + 8) = *(&xmmword_1006FC100 + 8);
    *(v2 + 24) = *&algn_1006FC110[8];
    swift_storeEnumTagMultiPayload();
    sub_100028B64();
    sub_100028C20();

    return sub_10056F5B8();
  }
}

uint64_t sub_100050530(uint64_t a1)
{
  v7[1] = a1;
  v2 = sub_10056F898();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056F888();
  v8 = v1;
  sub_1005709E8();
  sub_100009DCC(&qword_1006E2730);
  sub_100009DCC(&qword_1006E0D90);
  sub_100010BC0(&qword_1006E2738, &qword_1006E2730);
  sub_100028AD8();
  sub_1005701E8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1000506D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DFA90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC368);
  return sub_100051B94(v3, a1, type metadata accessor for TopChartsWidgetTimelineProvider.Entry);
}

uint64_t sub_100050804(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005084C()
{
  result = qword_1006E2120;
  if (!qword_1006E2120)
  {
    sub_100010324(&qword_1006E2100);
    type metadata accessor for SmallTopChartsWidgetView(255);
    sub_100050804(&qword_1006E2128, type metadata accessor for SmallTopChartsWidgetView);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2130, &qword_1006E2118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2120);
  }

  return result;
}

unint64_t sub_100050964()
{
  result = qword_1006E2138;
  if (!qword_1006E2138)
  {
    sub_100010324(&qword_1006E20E8);
    type metadata accessor for TopChartsWidgetContentView(255);
    sub_100050804(&qword_1006E2110, type metadata accessor for TopChartsWidgetContentView);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2130, &qword_1006E2118);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2138);
  }

  return result;
}

uint64_t sub_100050A84()
{
  sub_10056F0E8();
  sub_100050804(&qword_1006E2148, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_10056F1A8();
  return v1;
}

uint64_t sub_100050B00@<X0>(_BYTE *a1@<X8>)
{
  sub_10056F0E8();
  sub_100050804(&qword_1006E2148, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_10056F1A8();
  *a1 = v3;
  return result;
}

uint64_t sub_100050C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100050CA8()
{
  result = qword_1006E2150;
  if (!qword_1006E2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2150);
  }

  return result;
}

uint64_t sub_100050D20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E2158);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = sub_100009DCC(&qword_1006E0CB8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_100050EEC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E2158);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = sub_100009DCC(&qword_1006E0CB8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_1000510B0()
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100053A60(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100053A60(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_100051238(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100009DCC(&qword_1006E2158);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100009DCC(&qword_1006E0EC0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v18 = sub_100009DCC(&qword_1006E2200);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[9];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0CB8);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[10];

  return v20(v21, a2, v19);
}

uint64_t sub_1000514DC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100009DCC(&qword_1006E2158);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E0800);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_100009DCC(&qword_1006E0EC0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_100009DCC(&qword_1006E0EB8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
    return result;
  }

  v18 = sub_100009DCC(&qword_1006E2200);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v19 = sub_100009DCC(&qword_1006E0CB8);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[10];

  return v20(v21, a2, a2, v19);
}

void sub_100051770()
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100053A60(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_100053A60(319, &qword_1006E0F30, &type metadata accessor for DynamicTypeSize, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10005198C();
          if (v4 <= 0x3F)
          {
            sub_100053A60(319, &unk_1006E2278, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_100053A60(319, &unk_1006E0D30, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
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

void sub_10005198C()
{
  if (!qword_1006E2270)
  {
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E2270);
    }
  }
}

unint64_t sub_1000519E0()
{
  result = qword_1006E22C0;
  if (!qword_1006E22C0)
  {
    sub_100010324(&qword_1006E22C8);
    sub_10005084C();
    sub_100050964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E22C0);
  }

  return result;
}

uint64_t sub_100051AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_100051B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051BFC()
{
  v1 = type metadata accessor for TopChartsWidgetContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 56) & ~v2);
  sub_100009DCC(&qword_1006E2108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 8);
    v6(v3, v4);
    v7 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    v30 = v6;
    v6(v3 + v7[5], v4);
    type metadata accessor for TopChartsWidgetDataProvider.Chart(0);

    v8 = v3 + v7[7];
    v9 = type metadata accessor for WidgetMusicItem();
    if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
    {

      v10 = v9[7];
      v11 = sub_10056C8A8();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);

      v12 = v9[17];
      v29 = v5;
      v13 = *(v5 + 48);
      if (!v13(v8 + v12, 1, v4))
      {
        v30(v8 + v12, v4);
      }

      v14 = v9[18];
      if (!v13(v8 + v14, 1, v4))
      {
        v30(v8 + v14, v4);
      }

      v15 = v9[23];
      v16 = sub_100009DCC(&qword_1006DFD30);
      if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
      {
        v17 = sub_100572128();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v8 + v15, 1, v17))
        {
          (*(v18 + 8))(v8 + v15, v17);
        }
      }

      v5 = v29;
    }

    v19 = v3 + v7[8];
    v20 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v30(v19, v4);
      v30(v19 + *(v20 + 20), v4);
      v21 = *(v20 + 24);
      if (!(*(v5 + 48))(v19 + v21, 1, v4))
      {
        v30(v19 + v21, v4);
      }
    }
  }

  else
  {
  }

  v22 = v1[5];
  sub_100009DCC(&qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1005724A8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v1[6];
  sub_100009DCC(&qword_1006E0EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_10056EBD8();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
  }

  v26 = v1[7];
  sub_100009DCC(&qword_1006E0C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_10056E698();
    (*(*(v27 - 8) + 8))(v3 + v26, v27);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1000522A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005230C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for TopChartsWidgetContentView(0) - 8) + 80);
  v6 = *(v2 + 48);
  v7 = *(v2 + 32);
  v9[0] = *(v2 + 16);
  v9[1] = v7;
  v10 = v6;
  return sub_10004C7BC(a1, v9, v2 + ((v5 + 56) & ~v5), a2);
}

unint64_t sub_10005239C()
{
  result = qword_1006E2338;
  if (!qword_1006E2338)
  {
    sub_100010324(&qword_1006E22F8);
    sub_100010324(&qword_1006E2300);
    sub_100010BC0(&qword_1006E2330, &qword_1006E2300);
    swift_getOpaqueTypeConformance2();
    sub_100050804(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2338);
  }

  return result;
}

uint64_t sub_1000524CC()
{
  v1 = type metadata accessor for TopChartsWidgetContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 64) & ~v2);
  sub_100009DCC(&qword_1006E2108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_10056CAA8();
    v5 = *(v4 - 8);
    v6 = *(v5 + 8);
    v6(v3, v4);
    v7 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
    v30 = v6;
    v6(v3 + v7[5], v4);
    type metadata accessor for TopChartsWidgetDataProvider.Chart(0);

    v8 = v3 + v7[7];
    v9 = type metadata accessor for WidgetMusicItem();
    if (!(*(*(v9 - 1) + 48))(v8, 1, v9))
    {

      v10 = v9[7];
      v11 = sub_10056C8A8();
      (*(*(v11 - 8) + 8))(v8 + v10, v11);

      v12 = v9[17];
      v29 = v5;
      v13 = *(v5 + 48);
      if (!v13(v8 + v12, 1, v4))
      {
        v30(v8 + v12, v4);
      }

      v14 = v9[18];
      if (!v13(v8 + v14, 1, v4))
      {
        v30(v8 + v14, v4);
      }

      v15 = v9[23];
      v16 = sub_100009DCC(&qword_1006DFD30);
      if (!(*(*(v16 - 8) + 48))(v8 + v15, 11, v16))
      {
        v17 = sub_100572128();
        v18 = *(v17 - 8);
        if (!(*(v18 + 48))(v8 + v15, 1, v17))
        {
          (*(v18 + 8))(v8 + v15, v17);
        }
      }

      v5 = v29;
    }

    v19 = v3 + v7[8];
    v20 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    if (!(*(*(v20 - 8) + 48))(v19, 1, v20))
    {
      v30(v19, v4);
      v30(v19 + *(v20 + 20), v4);
      v21 = *(v20 + 24);
      if (!(*(v5 + 48))(v19 + v21, 1, v4))
      {
        v30(v19 + v21, v4);
      }
    }
  }

  else
  {
  }

  v22 = v1[5];
  sub_100009DCC(&qword_1006E0148);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = sub_1005724A8();
    (*(*(v23 - 8) + 8))(v3 + v22, v23);
  }

  else
  {
  }

  v24 = v1[6];
  sub_100009DCC(&qword_1006E0EA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = sub_10056EBD8();
    (*(*(v25 - 8) + 8))(v3 + v24, v25);
  }

  else
  {
  }

  v26 = v1[7];
  sub_100009DCC(&qword_1006E0C70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_10056E698();
    (*(*(v27 - 8) + 8))(v3 + v26, v27);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100052B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(*(type metadata accessor for TopChartsWidgetContentView(0) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 56);
  v8 = *(v2 + 40);
  v10[0] = *(v2 + 24);
  v10[1] = v8;
  v11 = v7;
  return sub_10004C9D0(a1, v6, v10, v2 + ((v5 + 64) & ~v5), a2);
}

unint64_t sub_100052C0C()
{
  result = qword_1006E2350;
  if (!qword_1006E2350)
  {
    sub_100010324(&qword_1006E2348);
    sub_100010BC0(&qword_1006E2358, &qword_1006E2360);
    sub_100050804(&qword_1006E0DC8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2350);
  }

  return result;
}

unint64_t sub_100052D1C()
{
  result = qword_1006E23B8;
  if (!qword_1006E23B8)
  {
    sub_100010324(&qword_1006E2378);
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380);
    sub_100050804(&qword_1006E0E68, type metadata accessor for ErrorMessageModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23B8);
  }

  return result;
}

unint64_t sub_100052E04()
{
  result = qword_1006E23D0;
  if (!qword_1006E23D0)
  {
    sub_100010324(&qword_1006E2398);
    sub_100053ED4(&qword_1006E23D8, &qword_1006E2390, &unk_10057EA18, sub_100052EE8);
    sub_100010BC0(&qword_1006E23F0, &qword_1006E23C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23D0);
  }

  return result;
}

unint64_t sub_100052EE8()
{
  result = qword_1006E23E0;
  if (!qword_1006E23E0)
  {
    sub_100010324(&qword_1006E2388);
    sub_100052D1C();
    sub_100010BC0(&qword_1006E23C0, &qword_1006E2380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E23E0);
  }

  return result;
}

unint64_t sub_100052FA0()
{
  result = qword_1006E2408;
  if (!qword_1006E2408)
  {
    sub_100010324(&qword_1006E1918);
    sub_100010324(&qword_1006E1928);
    sub_1000378D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2408);
  }

  return result;
}

uint64_t sub_100053068(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1000530D0()
{
  result = qword_1006E2460;
  if (!qword_1006E2460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2460);
  }

  return result;
}

unint64_t sub_100053178()
{
  result = qword_1006E2478;
  if (!qword_1006E2478)
  {
    sub_100010324(&qword_1006E2468);
    sub_100053204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2478);
  }

  return result;
}

unint64_t sub_100053204()
{
  result = qword_1006E2480;
  if (!qword_1006E2480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2480);
  }

  return result;
}

uint64_t sub_10005327C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006E24F8);
  __chkstk_darwin(v2 - 8);
  sub_10000CC8C(a1, &v5 - v3, &qword_1006E24F8);
  return sub_10056F0D8();
}

unint64_t sub_10005332C()
{
  result = qword_1006E2498;
  if (!qword_1006E2498)
  {
    sub_100010324(&qword_1006E2430);
    sub_100010BC0(&qword_1006E24A0, &qword_1006E2428);
    sub_100010BC0(&qword_1006E10A0, &qword_1006E10A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2498);
  }

  return result;
}

unint64_t sub_100053438()
{
  result = qword_1006E24D0;
  if (!qword_1006E24D0)
  {
    sub_100010324(&qword_1006E24B0);
    sub_1000534F0();
    sub_100010BC0(&qword_1006E10C0, &qword_1006E10C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E24D0);
  }

  return result;
}

unint64_t sub_1000534F0()
{
  result = qword_1006E24D8;
  if (!qword_1006E24D8)
  {
    sub_100010324(&qword_1006E24C8);
    sub_100010BC0(&qword_1006E1098, &qword_1006E1050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E24D8);
  }

  return result;
}

uint64_t sub_1000535A8(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10002AAC4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000535EC(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001B5A4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100053644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E0618);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100009DCC(&qword_1006E2158);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = sub_100009DCC(&qword_1006E0EC0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_1000537BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E0618);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100009DCC(&qword_1006E2158);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = sub_100009DCC(&qword_1006E0EC0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_10005392C()
{
  sub_100053A60(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100053A60(319, &unk_1006E0F38, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100053A60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100053AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E2158);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&qword_1006E0800);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100053BF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100009DCC(&qword_1006E2158);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&qword_1006E0800);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100053D08()
{
  sub_100053A60(319, &unk_1006E21C8, type metadata accessor for TopChartsWidgetTimelineProvider.Entry, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100053A60(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100053DF0()
{
  result = qword_1006E2628;
  if (!qword_1006E2628)
  {
    sub_100010324(&qword_1006E22E8);
    sub_100053ED4(&qword_1006E2630, &qword_1006E22D0, &unk_10057E8F0, sub_100053F88);
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2628);
  }

  return result;
}

uint64_t sub_100053ED4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2);
    a4();
    sub_100050804(&qword_1006E23E8, type metadata accessor for BackgroundModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100053F88()
{
  result = qword_1006E2638;
  if (!qword_1006E2638)
  {
    sub_100010324(&qword_1006E22E0);
    sub_100010BC0(&qword_1006E2640, &qword_1006E2648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2638);
  }

  return result;
}

unint64_t sub_100054044()
{
  result = qword_1006E2650;
  if (!qword_1006E2650)
  {
    sub_100010324(&qword_1006E23A8);
    sub_100010324(&qword_1006E2398);
    sub_100052E04();
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E0F80, &qword_1006E0DE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2650);
  }

  return result;
}

Swift::Int sub_100054170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006E2710);
    v2 = sub_100573EB8();
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_100574678();
      NSFileManager.Failure.hash(into:)();
      result = sub_1005746C8();
      v9 = -1 << *(v2 + 32);
      v10 = result & ~v9;
      v11 = v10 >> 6;
      v12 = *(v4 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        v14 = ~v9;
        while (1)
        {
          result = static MPCPlayerCommandRequest.isAvailable(in:)();
          if (result)
          {
            break;
          }

          v10 = (v10 + 1) & v14;
          v11 = v10 >> 6;
          v12 = *(v4 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if (((1 << v10) & v12) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v4 + 8 * v11) = v13 | v12;
        v5 = *(v2 + 16);
        v6 = __OFADD__(v5, 1);
        v7 = v5 + 1;
        if (v6)
        {
          __break(1u);
          return result;
        }

        *(v2 + 16) = v7;
      }

      if (++v3 == v1)
      {
        return v2;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_100054290()
{
  result = qword_1006E2720;
  if (!qword_1006E2720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2720);
  }

  return result;
}

uint64_t sub_1000542EC()
{
  sub_100010324(&qword_1006E2658);
  sub_100010BC0(&qword_1006E2668, &qword_1006E2658);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100054384()
{
  sub_100010324(&qword_1006E2730);
  sub_100010324(&qword_1006E0D90);
  sub_100010BC0(&qword_1006E2738, &qword_1006E2730);
  sub_100028AD8();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100054450(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100054464(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1000544AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100054518@<X0>(char a1@<W2>, uint64_t a2@<X8>)
{
  sub_10001B550();

  v3 = sub_10056FF28();
  v5 = v4;
  v7 = v6;
  sub_10056FB08();
  v8 = sub_10056FE88();
  v10 = v9;
  v12 = v11;

  sub_10001B5A4(v3, v5, v7 & 1);

  sub_10056FB88();
  v13 = sub_10056FD98();
  v15 = v14;
  v17 = v16;
  sub_10001B5A4(v8, v10, v12 & 1);

  if (qword_1006DF938 != -1)
  {
    swift_once();
  }

  v18 = sub_100009DCC(&qword_1006E1058);
  sub_10000C49C(v18, qword_1006FC0D8);
  sub_100010BC0(&qword_1006E24F0, &qword_1006E1058);
  v19 = sub_10056FE28();
  v21 = v20;
  v23 = v22;
  sub_10001B5A4(v13, v15, v17 & 1);

  sub_10056FFD8();
  sub_10001B5A4(v19, v21, v23 & 1);

  KeyPath = swift_getKeyPath();
  result = sub_100009DCC(&qword_1006E2740);
  v26 = a2 + *(result + 36);
  *v26 = KeyPath;
  *(v26 + 8) = a1;
  return result;
}

unint64_t sub_100054798()
{
  result = qword_1006E2748;
  if (!qword_1006E2748)
  {
    sub_100010324(&qword_1006E2740);
    swift_getOpaqueTypeConformance2();
    sub_100010BC0(&qword_1006E2750, &qword_1006E2758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E2748);
  }

  return result;
}

uint64_t sub_100054884()
{
  v0 = sub_10056DF88();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(ICPrivacyInfo) init];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];
  v6 = [v4 preflightDisclosureRequiredForMusic];
  static Logger.music(_:)();
  v7 = sub_10056DF68();
  v8 = sub_100573448();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67240448;
    *(v9 + 4) = v5;
    *(v9 + 8) = 1026;
    *(v9 + 10) = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "privacyAcknowledgementRequired= %{BOOL,public}d, preflightDisclosureRequired= %{BOOL,public}d)", v9, 0xEu);
  }

  (*(v1 + 8))(v3, v0);
  return (v5 | v6) & 1;
}

uint64_t sub_100054A44()
{
  v1 = type metadata accessor for WidgetMusicItem();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v6 = *(v0 + *(result + 20));
  v7 = *(v6 + 16);
  if (!v7)
  {
    return 1;
  }

  v8 = 0;
  v9 = &v4[v1[9]];
  v10 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  while (v8 < *(v6 + 16))
  {
    sub_1000584C0(v10 + *(v2 + 72) * v8, v4, type metadata accessor for WidgetMusicItem);
    if (qword_1006DF9B8 != -1)
    {
      swift_once();
    }

    v11 = sub_10000C49C(v1, qword_1006FC1D8);
    v12 = (v11 + v1[9]);
    v13 = *v9 == *v12 && *(v9 + 1) == v12[1];
    if (!v13 && (sub_100574498() & 1) == 0)
    {
      v14 = v1[10];
      v15 = &v4[v14];
      v16 = *&v4[v14 + 8];
      v17 = (v11 + v14);
      v18 = v17[1];
      v19 = !v16 || v18 == 0;
      if (v19 || (*v15 == *v17 ? (v25 = v16 == v18) : (v25 = 0), !v25 && (sub_100574498() & 1) == 0))
      {
        v20 = v1[11];
        v21 = *&v4[v20];
        v22 = *&v4[v20 + 8];
        v23 = (v11 + v20);
        v24 = v21 == *v23 && v22 == v23[1];
        if (!v24 && (sub_100574498() & 1) == 0)
        {
LABEL_46:
          sub_100034768(v4, type metadata accessor for WidgetMusicItem);
          return 0;
        }
      }
    }

    v26 = v1[12];
    v27 = &v4[v26];
    v28 = *&v4[v26 + 8];
    v29 = (v11 + v26);
    v30 = v29[1];
    if (v28)
    {
      if (v30)
      {
        v31 = *v27 == *v29 && v28 == v30;
        if (v31 || (sub_100574498() & 1) != 0)
        {
          goto LABEL_4;
        }
      }
    }

    else if (!v30)
    {
      goto LABEL_4;
    }

    v32 = v1[13];
    v33 = &v4[v32];
    v34 = *&v4[v32 + 8];
    v35 = (v11 + v32);
    v36 = v35[1];
    if (!v34)
    {
      if (v36)
      {
        goto LABEL_46;
      }

LABEL_4:
      result = sub_100034768(v4, type metadata accessor for WidgetMusicItem);
      goto LABEL_5;
    }

    if (!v36)
    {
      goto LABEL_46;
    }

    if (*v33 == *v35 && v34 == v36)
    {
      goto LABEL_4;
    }

    v37 = sub_100574498();
    result = sub_100034768(v4, type metadata accessor for WidgetMusicItem);
    if ((v37 & 1) == 0)
    {
      return 0;
    }

LABEL_5:
    if (v7 == ++v8)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

void sub_100054D40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  __chkstk_darwin(v43);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005725D8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v41 - v11;
  v13 = *(v7 + 16);
  v13(&v41 - v11, a1, v6);
  v45 = v2;
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v42 = v5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136446210;
    v13(v10, v12, v6);
    v19 = sub_100572978();
    v21 = v20;
    (*(v7 + 8))(v12, v6);
    v22 = sub_10008190C(v19, v21, &v46);

    *(v17 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Generating placeholder in %{public}s", v17, 0xCu);
    sub_100010474(v18);

    v5 = v42;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for WidgetMusicItem();
  v24 = sub_10000C49C(v23, qword_1006FC1D8);
  v25 = sub_100572D98();
  *(v25 + 16) = 6;
  v26 = *(v23 - 8);
  v27 = v26;
  v28 = v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
  sub_1000584C0(v24, v28, type metadata accessor for WidgetMusicItem);
  v29 = *(v26 + 72);
  sub_1000584C0(v24, v28 + v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 2 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 3 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 4 * v29, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v24, v28 + 5 * v29, type metadata accessor for WidgetMusicItem);
  v31 = v43;
  v30 = v44;
  (*(v27 + 56))(v44 + *(v43 + 28), 1, 1, v23);
  sub_10056CA98();
  *(v30 + v31[5]) = v25;
  *(v30 + v31[6]) = 3;
  *(v30 + v31[8]) = 0;
  v32 = (v30 + v31[9]);
  *v32 = 0;
  v32[1] = 0;
  sub_1000584C0(v30, v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v33 = sub_10056DF68();
  v34 = sub_100573448();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v46 = v36;
    *v35 = 136446210;
    v37 = sub_1000579C0();
    v39 = v38;
    sub_100034768(v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    v40 = sub_10008190C(v37, v39, &v46);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v33, v34, "Placeholder using %{public}s", v35, 0xCu);
    sub_100010474(v36);
  }

  else
  {

    sub_100034768(v5, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  }
}

uint64_t sub_10005528C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  v7[6] = swift_task_alloc();
  v7[7] = swift_task_alloc();
  v8 = sub_1005725D8();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_100055394, 0, 0);
}

uint64_t sub_100055394()
{
  v21 = v0;
  v1 = *(v0[9] + 16);
  v1(v0[11], v0[3], v0[8]);
  v2 = sub_10056DF68();
  v3 = sub_100573448();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  if (v4)
  {
    v6 = v0[9];
    v7 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v9 = 136446210;
    v1(v7, v5, v8);
    v10 = sub_100572978();
    v12 = v11;
    (*(v6 + 8))(v5, v8);
    v13 = sub_10008190C(v10, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "Generating snapshot in %{public}s", v9, 0xCu);
    sub_100010474(v19);
  }

  else
  {
    v14 = v0[8];
    v15 = v0[9];

    (*(v15 + 8))(v5, v14);
  }

  v16 = swift_task_alloc();
  v0[12] = v16;
  *v16 = v0;
  v16[1] = sub_10005559C;
  v17 = v0[7];

  return sub_10005588C(v17);
}

uint64_t sub_10005559C()
{

  return _swift_task_switch(sub_100055698, 0, 0);
}

uint64_t sub_100055698()
{
  v15 = v0;
  sub_1000584C0(*(v0 + 56), *(v0 + 48), type metadata accessor for RadioWidgetTimelineProvider.Entry);
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136446210;
    v7 = sub_1000579C0();
    v9 = v8;
    sub_100034768(v4, type metadata accessor for RadioWidgetTimelineProvider.Entry);
    v10 = sub_10008190C(v7, v9, &v14);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Snapshot using %{public}s", v5, 0xCu);
    sub_100010474(v6);
  }

  else
  {

    sub_100034768(v4, type metadata accessor for RadioWidgetTimelineProvider.Entry);
  }

  v11 = *(v0 + 56);
  (*(v0 + 32))(v11);
  sub_100034768(v11, type metadata accessor for RadioWidgetTimelineProvider.Entry);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10005588C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1000558AC, 0, 0);
}

id sub_1000558AC()
{
  result = [objc_opt_self() sharedCloudController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result hasProperNetworkConditionsToShowCloudMedia];

  if (!v3)
  {
    v8 = sub_10056DF68();
    v9 = sub_100573448();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't use widget: device offline", v10, 2u);
    }

    if (qword_1006DF980 != -1)
    {
      swift_once();
    }

    v7 = &qword_1006FC188;
    goto LABEL_14;
  }

  if (sub_100054884())
  {
    v4 = sub_10056DF68();
    v5 = sub_100573448();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Can't use widget: need to accept privacy acknowledgment", v6, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v7 = &qword_1006FC158;
LABEL_14:
    v22 = v7[1];
    v23 = *v7;
    if (qword_1006DF9B8 != -1)
    {
      swift_once();
    }

    v11 = v0[2];
    v12 = type metadata accessor for WidgetMusicItem();
    v13 = sub_10000C49C(v12, qword_1006FC1D8);
    v14 = sub_100572D98();
    *(v14 + 16) = 6;
    v15 = *(v12 - 8);
    v16 = v14 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    sub_1000584C0(v13, v16, type metadata accessor for WidgetMusicItem);
    v17 = *(v15 + 72);
    sub_1000584C0(v13, v16 + v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 2 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 3 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 4 * v17, type metadata accessor for WidgetMusicItem);
    sub_1000584C0(v13, v16 + 5 * v17, type metadata accessor for WidgetMusicItem);
    v18 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
    (*(v15 + 56))(v11 + v18[7], 1, 1, v12);

    sub_10056CA98();
    *(v11 + v18[5]) = v14;
    *(v11 + v18[6]) = 3;
    *(v11 + v18[8]) = 0;
    v19 = (v11 + v18[9]);
    *v19 = v23;
    v19[1] = v22;
    v20 = v0[1];

    return v20();
  }

  if (qword_1006DF8F8 != -1)
  {
    swift_once();
  }

  v21 = swift_task_alloc();
  v0[4] = v21;
  *v21 = v0;
  v21[1] = sub_100055D28;

  return sub_10001B84C();
}

uint64_t sub_100055D28(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_100056218;
  }

  else
  {
    v4 = sub_100055E3C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100055E3C()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      if (v2 >= 7)
      {
        v3 = *(type metadata accessor for WidgetMusicItem() - 8);
        sub_100058720(v1, v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), 0, 0xDuLL);
        v5 = v4;

        v1 = v5;
      }

      v6 = v0[2];
      v7 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
      v8 = v7[7];
      v9 = type metadata accessor for WidgetMusicItem();
      (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
      sub_10056CA98();
      *(v6 + v7[5]) = v1;
      *(v6 + v7[6]) = 3;
      *(v6 + v7[8]) = 0;
      v10 = (v6 + v7[9]);
      *v10 = 0;
      v10[1] = 0;
      goto LABEL_14;
    }
  }

  v11 = sub_10056DF68();
  v12 = sub_100573448();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Using placeholder: no stations available", v13, 2u);
  }

  if (qword_1006DF9A0 != -1)
  {
    swift_once();
  }

  v25 = unk_1006FC1D0;
  v26 = qword_1006FC1C8;
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v14 = v0[2];
  v15 = type metadata accessor for WidgetMusicItem();
  v16 = sub_10000C49C(v15, qword_1006FC1D8);
  v17 = sub_100572D98();
  *(v17 + 16) = 6;
  v18 = *(v15 - 8);
  v19 = v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
  sub_1000584C0(v16, v19, type metadata accessor for WidgetMusicItem);
  v20 = *(v18 + 72);
  sub_1000584C0(v16, v19 + v20, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v16, v19 + 2 * v20, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v16, v19 + 3 * v20, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v16, v19 + 4 * v20, type metadata accessor for WidgetMusicItem);
  sub_1000584C0(v16, v19 + 5 * v20, type metadata accessor for WidgetMusicItem);
  v21 = type metadata accessor for RadioWidgetTimelineProvider.Entry(0);
  (*(v18 + 56))(v14 + v21[7], 1, 1, v15);

  sub_10056CA98();
  *(v14 + v21[5]) = v17;
  *(v14 + v21[6]) = 3;
  *(v14 + v21[8]) = 0;
  v22 = (v14 + v21[9]);
  *v22 = v26;
  v22[1] = v25;
LABEL_14:
  v23 = v0[1];

  return v23();
}