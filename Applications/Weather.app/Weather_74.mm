unint64_t sub_1007E8C30()
{
  result = qword_100CD9A08;
  if (!qword_100CD9A08)
  {
    sub_10022E824(&qword_100CD9A10);
    sub_1007E8CEC();
    sub_10008152C(&qword_100CD9A68, type metadata accessor for LocationContentRowHeightModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A08);
  }

  return result;
}

unint64_t sub_1007E8CEC()
{
  result = qword_100CD9A18;
  if (!qword_100CD9A18)
  {
    sub_10022E824(&qword_100CD9A20);
    sub_1007E8D78();
    sub_1007E8F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A18);
  }

  return result;
}

unint64_t sub_1007E8D78()
{
  result = qword_100CD9A28;
  if (!qword_100CD9A28)
  {
    sub_10022E824(&qword_100CD9A30);
    sub_1007E8E30();
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A28);
  }

  return result;
}

unint64_t sub_1007E8E30()
{
  result = qword_100CD9A38;
  if (!qword_100CD9A38)
  {
    sub_10022E824(&qword_100CD9A40);
    sub_100006F64(&qword_100CD9A48, &qword_100CD9A50);
    sub_1007E8EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A38);
  }

  return result;
}

unint64_t sub_1007E8EE8()
{
  result = qword_100CD9A58;
  if (!qword_100CD9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A58);
  }

  return result;
}

unint64_t sub_1007E8F3C()
{
  result = qword_100CD9A60;
  if (!qword_100CD9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A60);
  }

  return result;
}

unint64_t sub_1007E8F90()
{
  result = qword_100CD9A78;
  if (!qword_100CD9A78)
  {
    sub_10022E824(&qword_100CD99D0);
    sub_100006F64(&qword_100CD9A80, &qword_100CD99C8);
    sub_100006F64(&qword_100CB0558, &qword_100CE1580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A78);
  }

  return result;
}

unint64_t sub_1007E9074()
{
  result = qword_100CD9A88;
  if (!qword_100CD9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9A88);
  }

  return result;
}

double sub_1007E90C8(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1007E9114(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[81])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007E9160(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1007E91BC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 81))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007E9208(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1007E9274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return sub_100020180(*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 > 1)
  {
    return sub_100020180(v3 ^ 0xFF);
  }

  else
  {
    return sub_100020180(-1);
  }
}

uint64_t sub_1007E92B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      return sub_10006A8FC(result, a2);
    }
  }

  return result;
}

void sub_1007E93A4()
{
  type metadata accessor for Location.Identifier();
  if (v0 <= 0x3F)
  {
    sub_10009C020(319, &unk_100CA41F0, &type metadata for CGFloat, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10009C020(319, &qword_100CD9D40, &unk_100C73218, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_10009C020(319, &qword_100CA3C88, &type metadata for SceneMetrics, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10013790C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unsigned __int8 *sub_1007E94DC(unsigned __int8 *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0xFE)
    {
      v16 = *((&result[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 72);
      if (v16 > 1)
      {
        return ((v16 ^ 0xFF) + 1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return sub_100024D10(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 73;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = result[v8];
        if (!result[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *&result[v8];
        if (!*&result[v8])
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *&result[v8];
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = sub_100020180(v7 + (v15 | v14));
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1007E9624(unsigned int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 73;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *(a1 + v10) = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0xFE)
          {
            v19 = (a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
            if (a2 > 0xFE)
            {
              *(v19 + 56) = 0u;
              *(v19 + 40) = 0u;
              *(v19 + 24) = 0u;
              *(v19 + 8) = 0u;
              *(v19 + 72) = 0;
              *v19 = (a2 - 255);
            }

            else
            {
              *(v19 + 72) = -a2;
            }
          }

          else
          {

            sub_10001B350(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    v16 = sub_100003940();
    bzero(v16, v17);
    if (v10 <= 3)
    {
      v18 = (v15 >> 8) + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        *(a1 + v10) = v18;
        break;
      case 2:
        *(a1 + v10) = v18;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *(a1 + v10) = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1007E9828(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100020180(-1);
  }

  if (a2 >= 0xFF && *(a1 + 73))
  {
    return sub_100020180(*a1 + 254);
  }

  v3 = *(a1 + 72);
  if (v3 > 1)
  {
    return sub_100020180(v3 ^ 0xFF);
  }

  else
  {
    return sub_100020180(-1);
  }
}

uint64_t sub_1007E9864(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      return sub_10006A8FC(result, a2);
    }
  }

  return result;
}

unint64_t sub_1007E9AB0()
{
  result = qword_100CD9FB8;
  if (!qword_100CD9FB8)
  {
    sub_10022E824(&qword_100CD9FB0);
    sub_100006F64(&qword_100CA5548, &qword_100CA5528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9FB8);
  }

  return result;
}

unint64_t sub_1007E9B6C()
{
  result = qword_100CD9FD0;
  if (!qword_100CD9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CD9FD0);
  }

  return result;
}

uint64_t sub_1007E9C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v4 = a3(0);
  sub_100003810(v4);
  sub_10001164C();
  v5 = sub_1000053B8();

  return a4(v5);
}

unint64_t sub_1007E9D1C()
{
  result = qword_100CDA050;
  if (!qword_100CDA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA050);
  }

  return result;
}

unint64_t sub_1007E9D70()
{
  result = qword_100CDA058;
  if (!qword_100CDA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA058);
  }

  return result;
}

unint64_t sub_1007E9F74()
{
  result = qword_100CDA0F0;
  if (!qword_100CDA0F0)
  {
    sub_10022E824(&qword_100CDA0E0);
    sub_1007EA000();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA0F0);
  }

  return result;
}

unint64_t sub_1007EA000()
{
  result = qword_100CDA0F8;
  if (!qword_100CDA0F8)
  {
    sub_10022E824(&qword_100CDA0D8);
    sub_1007EA08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA0F8);
  }

  return result;
}

unint64_t sub_1007EA08C()
{
  result = qword_100CDA100;
  if (!qword_100CDA100)
  {
    sub_10022E824(&qword_100CDA0D0);
    sub_1007EA118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA100);
  }

  return result;
}

unint64_t sub_1007EA118()
{
  result = qword_100CDA108;
  if (!qword_100CDA108)
  {
    sub_10022E824(&qword_100CDA0C8);
    sub_10008152C(&qword_100CDA110, type metadata accessor for LocationHeaderViewLargeText);
    sub_10008152C(&qword_100CE1750, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA108);
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for KnownLocationLayoutsPicker.LayoutOption(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE7)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 0x19;
    v8 = v6 - 25;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 25;
    if (a2 + 25 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 25);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for KnownLocationLayoutsPicker.LayoutOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 25;
  if (a3 + 25 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xE7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xE6)
  {
    v7 = ((a2 - 231) >> 8) + 1;
    *result = a2 + 25;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 25;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1007EA3AC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x19)
  {
    return v1 - 24;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1007EA3C0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 24;
  }

  return result;
}

unint64_t sub_1007EA3E0()
{
  result = qword_100CDA208;
  if (!qword_100CDA208)
  {
    sub_10022E824(&qword_100CDA210);
    sub_100006F64(&qword_100CDA218, &qword_100CD9FF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA208);
  }

  return result;
}

unint64_t sub_1007EA490()
{
  result = qword_100CDA220;
  if (!qword_100CDA220)
  {
    sub_10022E824(&qword_100CDA010);
    sub_100006F64(&qword_100CDA228, &qword_100CDA008);
    sub_100006F64(&qword_100CA40A8, &qword_100CA40B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA220);
  }

  return result;
}

unint64_t sub_1007EA574()
{
  result = qword_100CDA278;
  if (!qword_100CDA278)
  {
    sub_10022E824(&qword_100CDA0A8);
    sub_1007EA600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA278);
  }

  return result;
}

unint64_t sub_1007EA600()
{
  result = qword_100CDA280;
  if (!qword_100CDA280)
  {
    sub_10022E824(&qword_100CDA098);
    sub_1007EA68C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA280);
  }

  return result;
}

unint64_t sub_1007EA68C()
{
  result = qword_100CDA288;
  if (!qword_100CDA288)
  {
    sub_10022E824(&qword_100CDA090);
    sub_100006F64(&qword_100CDA290, &qword_100CDA0A0);
    sub_100006F64(&qword_100CC2270, &qword_100CC2278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA288);
  }

  return result;
}

unint64_t sub_1007EA770()
{
  result = qword_100CDA298;
  if (!qword_100CDA298)
  {
    sub_10022E824(&qword_100CDA2A0);
    sub_1007EA7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA298);
  }

  return result;
}

unint64_t sub_1007EA7F4()
{
  result = qword_100CDA2A8;
  if (!qword_100CDA2A8)
  {
    sub_10022E824(&qword_100CDA0E8);
    sub_1007E9F74();
    sub_10014FB5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA2A8);
  }

  return result;
}

uint64_t sub_1007EA8A0@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  v5 = type metadata accessor for MoonScrubberViewModel();
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_10022C350(&qword_100CA6BC0);
  __chkstk_darwin(v8);
  v10 = &v25[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __chkstk_darwin(v11);
  v13 = &v25[-v12 - 8];
  sub_100035B30(v2 + 16, v25);
  v14 = type metadata accessor for MoonScrubberView();
  v15 = a1 + v14[5];
  v16 = type metadata accessor for ScrubberDateSelection();
  sub_10001B350(v13, 1, 1, v16);
  sub_1002ACB5C(v13, v10);
  State.init(wrappedValue:)();
  sub_10003FDF4(v13, &qword_100CA6BC0);
  v17 = v14[8];
  type metadata accessor for MoonScrubberStorage();
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC7Weather19MoonScrubberStorage_selectedDate;
  v20 = type metadata accessor for MoonDetailSelectedDate();
  sub_10001B350(v18 + v19, 1, 1, v20);
  v21 = v18 + OBJC_IVAR____TtC7Weather19MoonScrubberStorage_offset;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a1 + v17) = v18;

  sub_10022C350(&qword_100CA4D38);
  sub_1007EAB68();
  *a1 = ObservedObject.init(wrappedValue:)();
  a1[1] = v22;
  sub_100035B30(v25, a1 + v14[6]);
  *(a1 + v14[7]) = a2;
  sub_100989B78();
  sub_100006F14(v25);
  sub_1002ACB5C(v7, v13);
  sub_1007EABCC(v7);
  sub_10003FDF4(v15, &qword_100CD1E18);
  *(v15 + *(sub_10022C350(&qword_100CD1E18) + 28)) = 0;
  return sub_10042681C(v13, v15);
}

unint64_t sub_1007EAB68()
{
  result = qword_100CA4D40;
  if (!qword_100CA4D40)
  {
    sub_10022E824(&qword_100CA4D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA4D40);
  }

  return result;
}

uint64_t sub_1007EABCC(uint64_t a1)
{
  v2 = type metadata accessor for MoonScrubberViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1007EAC28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloseButton.Coordinator();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV7Weather11CloseButton11Coordinator_parent];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v4;

  return objc_msgSendSuper2(&v8, "init");
}

uint64_t sub_1007EAC98()
{
  v1 = *(v0 + OBJC_IVAR____TtCV7Weather11CloseButton11Coordinator_parent);

  v1(v2);
}

id sub_1007EAE04(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CloseButton.AccessibleCloseButton();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id sub_1007EAE8C(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CloseButton.AccessibleCloseButton();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1007EAF34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_1007EAFA0()
{
  type metadata accessor for CloseButton.AccessibleCloseButton();
  v0 = [swift_getObjCClassFromMetadata() buttonWithType:7];
  sub_10022C350(&qword_100CDA3D0);
  UIViewRepresentableContext.coordinator.getter();
  [v0 addTarget:v2 action:"doAction:" forControlEvents:64];

  return v0;
}

id sub_1007EB040@<X0>(void *a1@<X8>)
{
  result = sub_1007EAC28(*v1, v1[1]);
  *a1 = result;
  return result;
}

uint64_t sub_1007EB080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007EB174();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1007EB0E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1007EB174();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1007EB148()
{
  sub_1007EB174();
  UIViewRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_1007EB174()
{
  result = qword_100CDA3D8;
  if (!qword_100CDA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA3D8);
  }

  return result;
}

uint64_t sub_1007EB1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1009EED68();
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1007EB280@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

uint64_t sub_1007EB28C(int a1, uint64_t a2, uint64_t *__src)
{
  v339 = a2;
  memcpy(__dst, __src, sizeof(__dst));
  v363 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003848();
  v357 = v5;
  sub_10000386C();
  __chkstk_darwin(v6);
  sub_10000E70C();
  v354 = v7;
  sub_1000038CC();
  v364 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  v356 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v352 = v11;
  sub_1000038CC();
  v365 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  v355 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v350 = v15;
  sub_1000038CC();
  v359 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_100003848();
  v353 = v17;
  sub_10000386C();
  __chkstk_darwin(v18);
  sub_10000E70C();
  v348 = v19;
  sub_1000038CC();
  v360 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_100003848();
  v351 = v21;
  sub_10000386C();
  __chkstk_darwin(v22);
  sub_10000E70C();
  v346 = v23;
  sub_1000038CC();
  v362 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_100003848();
  v349 = v25;
  sub_10000386C();
  __chkstk_darwin(v26);
  sub_10000E70C();
  v345 = v27;
  sub_1000038CC();
  v361 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_100003848();
  v347 = v29;
  sub_10000386C();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v344 = v31;
  v32 = sub_1000038CC();
  v335 = type metadata accessor for ModalViewState(v32);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  v324 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v343 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v358 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  sub_100003878();
  v323 = v40;
  sub_10000386C();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v342 = v42;
  v43 = sub_10022C350(&qword_100CA65E8);
  v44 = sub_100003810(v43);
  __chkstk_darwin(v44);
  sub_100003848();
  v334 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v321 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v320 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v318 = v51;
  v52 = sub_10022C350(&qword_100CA6610);
  v53 = sub_100003810(v52);
  __chkstk_darwin(v53);
  sub_100003848();
  v332 = v54;
  sub_10000386C();
  __chkstk_darwin(v55);
  sub_100003878();
  v341 = v56;
  sub_10000386C();
  __chkstk_darwin(v57);
  sub_100003878();
  v331 = v58;
  sub_10000386C();
  __chkstk_darwin(v59);
  sub_10000E70C();
  v340 = v60;
  v61 = sub_10022C350(&qword_100CA6618);
  v62 = sub_100003810(v61);
  __chkstk_darwin(v62);
  sub_100003848();
  v330 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v338 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v329 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  sub_10000E70C();
  v337 = v69;
  v70 = sub_10022C350(&qword_100CA6620);
  v71 = sub_100003810(v70);
  __chkstk_darwin(v71);
  sub_100003848();
  v328 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v336 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v327 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_10000E70C();
  v333 = v78;
  v79 = sub_10022C350(&qword_100CA6628);
  v80 = sub_100003810(v79);
  __chkstk_darwin(v80);
  sub_100003848();
  *(&v326 + 1) = v81;
  sub_10000386C();
  v83 = __chkstk_darwin(v82);
  v85 = &v316 - v84;
  __chkstk_darwin(v83);
  sub_100003878();
  *&v326 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_10000E70C();
  v316 = v88;
  v89 = sub_10022C350(&qword_100CA6630);
  v90 = sub_100003810(v89);
  __chkstk_darwin(v90);
  sub_100003848();
  v325 = v91;
  sub_10000386C();
  v93 = __chkstk_darwin(v92);
  v95 = &v316 - v94;
  __chkstk_darwin(v93);
  sub_100003878();
  v322 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  v99 = &v316 - v98;
  v100 = sub_10022C350(&qword_100CA6638);
  v101 = sub_100003810(v100);
  __chkstk_darwin(v101);
  sub_100003848();
  v319 = v102;
  sub_10000386C();
  v104 = __chkstk_darwin(v103);
  v106 = &v316 - v105;
  __chkstk_darwin(v104);
  sub_100003878();
  v317 = v107;
  sub_10000386C();
  __chkstk_darwin(v108);
  v110 = &v316 - v109;
  v111 = sub_10022C350(&qword_100CA6640);
  v112 = sub_100003810(v111);
  v113 = __chkstk_darwin(v112);
  v114 = __chkstk_darwin(v113);
  v115 = __chkstk_darwin(v114);
  v117 = &v316 - v116;
  __chkstk_darwin(v115);
  v121 = &v316 - v120;
  v122 = __src;
  v123 = *__src;
  if ((~v123 & 0xF000000000000006) != 0)
  {
    v346 = v118;
    v157 = v119;
    type metadata accessor for ReportWeatherViewState._Storage();
    v158 = swift_allocObject();
    *(v158 + 16) = v123;
    memcpy((v158 + 24), v122 + 1, 0x58uLL);
    v345 = v157;
    sub_100003934();
    sub_10001B350(v159, v160, v161, v361);
    sub_100003934();
    sub_10001B350(v162, v163, v164, v362);
    v348 = v95;
    sub_100003934();
    v165 = v360;
    sub_10001B350(v166, v167, v168, v360);
    v354 = v85;
    sub_100003934();
    sub_10001B350(v169, v170, v171, v359);
    sub_100003934();
    sub_10001B350(v172, v173, v174, v365);
    sub_100003934();
    sub_10001B350(v175, v176, v177, v364);
    sub_100003934();
    sub_10001B350(v178, v179, v180, v363);
    v181 = v321;
    *v321 = v158;
    v182 = v335;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v181, 0, 1, v182);
    v183 = sub_100028B78(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v184 = v324;
    sub_1000BCAE0(v183, v324, v185);
    v186 = v181;
    v187 = v334;
    sub_1002AB08C(v186, v334, &qword_100CA65E8);
    sub_100005404(v187);
    v188 = v165;
    v189 = v106;
    if (v156)
    {
      memcpy(v367, __dst, sizeof(v367));
      sub_10029C25C(v367, v366);
      sub_1000180EC(v334, &qword_100CA65E8);
    }

    else
    {
      memcpy(v367, __dst, sizeof(v367));
      sub_10029C25C(v367, v366);
      sub_10037B08C(v184);
      sub_100005518();
      sub_100073030(v334, v184, v199);
    }

    v200 = v319;
    sub_100005518();
    sub_100073030(v184, v201, v202);
    v203 = *(v123 + 16);
    LODWORD(v350) = *(v123 + 24);
    v204 = v346;
    sub_1002AB08C(v345, v346, &qword_100CA6640);
    v205 = sub_1000175DC();
    v206 = v361;
    sub_1000038B4(v205, v207, v361);
    v208 = v354;
    v209 = v348;
    if (v156)
    {
      v210 = sub_100013C58(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_1000BCAE0(v210, v347, v211);
      v212 = sub_1000175DC();
      v214 = sub_100024D10(v212, v213, v206);

      if (v214 != 1)
      {
        sub_1000180EC(v204, &qword_100CA6640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v204, v347, v222);
    }

    sub_1002AB08C(v189, v200, &qword_100CA6638);
    v223 = sub_1000182B8();
    v224 = v362;
    sub_1000038B4(v223, v225, v362);
    v352 = v203;
    if (v156)
    {
      v226 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100024A78();
      sub_1000BCAE0(v123 + v226, v349, v227);
      v228 = sub_1000182B8();
      sub_1000038B4(v228, v229, v224);
      v237 = v364;
      v230 = v200;
      v238 = v330;
      v239 = v336;
      if (!v156)
      {
        sub_1000180EC(v230, &qword_100CA6638);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v200, v349, v236);
      v237 = v364;
      v238 = v330;
      v239 = v336;
    }

    v240 = v209;
    v241 = v325;
    sub_1002AB08C(v240, v325, &qword_100CA6630);
    sub_1000038B4(v241, 1, v188);
    v242 = v341;
    if (v156)
    {
      v243 = sub_100049D68(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v243, v351, v244);
      sub_1000038B4(v241, 1, v188);
      v252 = v328;
      if (!v156)
      {
        sub_1000180EC(v241, &qword_100CA6630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v241, v351, v251);
      v252 = v328;
    }

    v253 = v208;
    v254 = *(&v326 + 1);
    sub_1002AB08C(v253, *(&v326 + 1), &qword_100CA6628);
    sub_1000038B4(v254, 1, v359);
    if (v156)
    {
      v255 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v255, v353, v256);
      sub_100005404(v254);
      v264 = v338;
      if (!v156)
      {
        sub_1000180EC(v254, &qword_100CA6628);
      }
    }

    else
    {
      v262 = sub_10004EAC0();
      sub_100073030(v262, v353, v263);
      v264 = v338;
    }

    sub_1002AB08C(v239, v252, &qword_100CA6620);
    sub_100005404(v252);
    if (v156)
    {
      v265 = sub_100016F5C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v265, v355, v266);
      sub_100005404(v252);
      v277 = v332;
      if (!v156)
      {
        sub_1000180EC(v252, &qword_100CA6620);
      }
    }

    else
    {
      sub_1000134C8();
      sub_100073030(v252, v355, v276);
      v277 = v332;
    }

    sub_1002AB08C(v264, v238, &qword_100CA6618);
    v278 = sub_1000182B8();
    sub_1000038B4(v278, v279, v237);
    if (v156)
    {
      v280 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v280, v356, v281);
      v282 = sub_1000182B8();
      sub_1000038B4(v282, v283, v237);
      v288 = v357;
      if (!v156)
      {
        sub_1000180EC(v238, &qword_100CA6618);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v238, v356, v287);
      v288 = v357;
    }

    sub_1002AB08C(v242, v277, &qword_100CA6610);
    sub_1000038B4(v277, 1, v363);
    if (v156)
    {
      v289 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v289, v288, v290);
      sub_10000394C(v277);
      if (!v156)
      {
        sub_1000180EC(v277, &qword_100CA6610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v277, v288, v303);
    }

    sub_100005518();
    v304 = v358;
    sub_100073030(v343, v358, v305);
    v306 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v365 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v307 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v308 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v309 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v310 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v311 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v312 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v315) = v309;
    sub_10003E038(v352, v350, v347, v349, v351, v353, v355, v356, v357, v304, v365, v306, v307, v308, v315, v310, v311, v312, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
  }

  else
  {
    sub_100003934();
    sub_10001B350(v124, v125, v126, v361);
    v353 = v110;
    sub_100003934();
    sub_10001B350(v127, v128, v129, v362);
    v355 = v99;
    sub_100003934();
    sub_10001B350(v130, v131, v132, v360);
    v133 = v316;
    sub_100003934();
    v134 = v359;
    sub_10001B350(v135, v136, v137, v359);
    sub_100003934();
    sub_10001B350(v138, v139, v140, v365);
    sub_100003934();
    sub_10001B350(v141, v142, v143, v364);
    sub_100003934();
    sub_10001B350(v144, v145, v146, v363);
    v147 = v318;
    v148 = v335;
    swift_storeEnumTagMultiPayload();
    sub_10001B350(v147, 0, 1, v148);
    v149 = sub_100028B78(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
    v150 = v323;
    sub_1000BCAE0(v149, v323, v151);
    v152 = v147;
    v153 = v320;
    sub_1002AB08C(v152, v320, &qword_100CA65E8);
    v154 = sub_1000175DC();
    sub_1000038B4(v154, v155, v148);
    if (v156)
    {
      sub_1000180EC(v153, &qword_100CA65E8);
    }

    else
    {
      sub_10037B08C(v150);
      sub_100005518();
      sub_100073030(v153, v150, v190);
    }

    v191 = v322;
    sub_100005518();
    sub_100073030(v150, v342, v192);
    v193 = *(v123 + 16);
    LODWORD(v356) = *(v123 + 24);
    sub_1002AB08C(v121, v117, &qword_100CA6640);
    v194 = v361;
    sub_1000038B4(v117, 1, v361);
    v195 = v134;
    v357 = v193;
    if (v156)
    {
      v196 = sub_100013C58(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
      sub_1000BCAE0(v196, v344, v197);
      v198 = sub_100024D10(v117, 1, v194);

      v216 = v354;
      v217 = v327;
      if (v198 != 1)
      {
        sub_1000180EC(v117, &qword_100CA6640);
      }
    }

    else
    {
      sub_10000E7D4();
      sub_100073030(v117, v344, v215);

      v216 = v354;
      v217 = v327;
    }

    v218 = v317;
    sub_1002AB08C(v353, v317, &qword_100CA6638);
    sub_1000038B4(v218, 1, v362);
    if (v156)
    {
      v219 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      sub_100024A78();
      sub_1000BCAE0(v123 + v219, v345, v220);
      sub_10000394C(v218);
      v221 = v218;
      v232 = v337;
      if (!v156)
      {
        sub_1000180EC(v221, &qword_100CA6638);
      }
    }

    else
    {
      sub_100003BB4();
      sub_100073030(v218, v345, v231);
      v232 = v337;
    }

    sub_1002AB08C(v355, v191, &qword_100CA6630);
    sub_10000394C(v191);
    if (v156)
    {
      v233 = sub_100049D68(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
      sub_1000BCAE0(v233, v346, v234);
      sub_10000394C(v191);
      v235 = v191;
      v246 = v340;
      if (!v156)
      {
        sub_1000180EC(v235, &qword_100CA6630);
      }
    }

    else
    {
      sub_10000E7BC();
      sub_100073030(v191, v346, v245);
      v246 = v340;
    }

    v247 = v133;
    v248 = v326;
    sub_1002AB08C(v247, v326, &qword_100CA6628);
    sub_1000038B4(v248, 1, v195);
    if (v156)
    {
      v249 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
      sub_1000BCAE0(v249, v348, v250);
      sub_1000038B4(v248, 1, v195);
      v259 = v329;
      if (!v156)
      {
        sub_1000180EC(v248, &qword_100CA6628);
      }
    }

    else
    {
      v257 = sub_10004EAC0();
      sub_100073030(v257, v348, v258);
      v259 = v329;
    }

    sub_1002AB08C(v333, v217, &qword_100CA6620);
    sub_10000394C(v217);
    if (v156)
    {
      v260 = sub_100016F5C(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
      sub_1000BCAE0(v260, v350, v261);
      sub_10000394C(v217);
      v268 = v331;
      if (!v156)
      {
        sub_1000180EC(v217, &qword_100CA6620);
      }
    }

    else
    {
      sub_1000134C8();
      sub_100073030(v217, v350, v267);
      v268 = v331;
    }

    sub_1002AB08C(v232, v259, &qword_100CA6618);
    v269 = sub_1000175DC();
    v270 = v364;
    sub_1000038B4(v269, v271, v364);
    if (v156)
    {
      v272 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
      sub_1000BCAE0(v272, v352, v273);
      v274 = sub_1000175DC();
      sub_1000038B4(v274, v275, v270);
      if (!v156)
      {
        sub_1000180EC(v259, &qword_100CA6618);
      }
    }

    else
    {
      sub_100003B9C();
      sub_100073030(v259, v352, v284);
    }

    sub_1002AB08C(v246, v268, &qword_100CA6610);
    sub_100005404(v268);
    if (v156)
    {
      v285 = sub_100069A60(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
      sub_1000BCAE0(v285, v216, v286);
      sub_100005404(v268);
      if (!v156)
      {
        sub_1000180EC(v268, &qword_100CA6610);
      }
    }

    else
    {
      sub_100003B84();
      sub_100073030(v268, v216, v291);
    }

    sub_100005518();
    v292 = v358;
    sub_100073030(v342, v358, v293);
    v295 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
    v294 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
    v296 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
    v297 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
    v298 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
    v299 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
    v300 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
    v301 = *(v123 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
    type metadata accessor for MainState._Storage(0);
    swift_allocObject();
    LOBYTE(v315) = v298;
    sub_10003E038(v357, v356, v344, v345, v346, v348, v350, v352, v354, v292, v295, v294, v296, v297, v315, v299, v300, v301, v316, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332);
  }

  v313 = v302;

  return v313;
}

uint64_t sub_1007EC7FC()
{
  v0 = type metadata accessor for Access();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v7 = type metadata accessor for FeatureState();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  sub_10022C350(&qword_100CC74A0);
  (*(v9 + 104))(v13, enum case for FeatureState.enabled(_:), v7);
  (*(v2 + 104))(v6, enum case for Access.protected(_:), v0);
  result = sub_100004594();
  qword_100D90E08 = result;
  return result;
}

uint64_t sub_1007EC97C()
{
  v0 = type metadata accessor for Domain();
  sub_1000037C4();
  v2 = v1;
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v7);
  sub_1000037D8();
  (*(v10 + 104))(v9 - v8, enum case for Access.protected(_:));
  (*(v2 + 104))(v6, enum case for Domain.standard(_:), v0);
  sub_10022C350(&qword_100CAFFD8);
  swift_allocObject();
  result = Setting.init(_:defaultValue:domain:access:)();
  qword_100D90E10 = result;
  return result;
}

uint64_t sub_1007ECB14(uint64_t a1)
{
  v219 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v223 = v3;
  sub_1000038CC();
  v203 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v222 = v5;
  sub_1000038CC();
  v202 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v221 = v7;
  sub_1000038CC();
  v200 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v220 = v9;
  sub_1000038CC();
  v213 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v218 = v11;
  sub_1000038CC();
  v196 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  v217 = v13;
  v14 = sub_1000038CC();
  v192 = type metadata accessor for ModalViewState(v14);
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  sub_100003908();
  __chkstk_darwin(v17);
  sub_10000E70C();
  v216 = v18;
  v19 = sub_10022C350(&qword_100CA65E8);
  v20 = sub_100003810(v19);
  __chkstk_darwin(v20);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  v189 = v22;
  v23 = sub_10022C350(&qword_100CA6610);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v215 = v26;
  v27 = sub_10022C350(&qword_100CA6618);
  v28 = sub_100003810(v27);
  __chkstk_darwin(v28);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v29);
  v31 = &v177 - v30;
  v32 = sub_10022C350(&qword_100CA6620);
  v33 = sub_100003810(v32);
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_10000E70C();
  v211 = v35;
  v36 = sub_10022C350(&qword_100CA6628);
  v37 = sub_100003810(v36);
  __chkstk_darwin(v37);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_10000E70C();
  v195 = v39;
  v40 = sub_10022C350(&qword_100CA6630);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  v210 = v43;
  v44 = sub_10022C350(&qword_100CA6638);
  v45 = sub_100003810(v44);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_10000E70C();
  v209 = v47;
  v48 = sub_10022C350(&qword_100CA6640);
  v49 = sub_100003810(v48);
  __chkstk_darwin(v49);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v50);
  sub_10000E70C();
  v208 = v51;
  sub_1000038CC();
  v52 = type metadata accessor for Locale();
  v207 = *(v52 - 8);
  __chkstk_darwin(v52);
  sub_1000038E4();
  v206 = v53;
  v54 = sub_10022C350(&qword_100CAA9F0);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  v57 = &v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v60 = &v177 - v59;
  v61 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v62);
  sub_100003848();
  v212 = v63;
  __chkstk_darwin(v64);
  v66 = &v177 - v65;
  __chkstk_darwin(v67);
  v69 = &v177 - v68;
  v70 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  sub_100010C0C();
  v205 = a1;
  v177 = v70;
  sub_100181780(a1 + v70, v66, v71);
  sub_100003934();
  sub_10001B350(v72, v73, v74, v52);
  HIDWORD(v187) = UIAccessibilityIsReduceMotionEnabled();
  DWORD2(v187) = *v66;
  DWORD1(v187) = v66[1];
  LODWORD(v187) = v66[2];
  HIDWORD(v186) = v66[3];
  sub_1002AB08C(v60, v57, &qword_100CAA9F0);
  sub_1000038B4(v57, 1, v52);
  v214 = v31;
  v185 = v52;
  if (v75)
  {
    (*(v207 + 16))(v206, &v66[v61[8]], v52);
    sub_1000038B4(v57, 1, v52);
    if (!v75)
    {
      sub_1000180EC(v57, &qword_100CAA9F0);
    }
  }

  else
  {
    (*(v207 + 32))(v206, v57, v52);
  }

  v76 = &v66[v61[9]];
  v77 = v76[1];
  v183 = *v76;
  v78 = v61[12];
  HIDWORD(v182) = v66[v61[11]];
  HIDWORD(v184) = v66[v78];
  v79 = v61[14];
  HIDWORD(v180) = v66[v61[13]];
  v181 = *&v66[v79];
  v80 = v61[16];
  HIDWORD(v179) = v66[v61[15]];
  LODWORD(v180) = v66[v80];
  v81 = v61[18];
  HIDWORD(v178) = v66[v61[17]];
  v82 = *&v66[v81];
  v83 = *&v66[v81 + 8];
  v84 = *&v66[v81 + 16];
  v85 = *&v66[v81 + 24];
  v87 = *&v66[v81 + 32];
  v86 = *&v66[v81 + 40];
  LODWORD(v179) = v66[v61[19]];
  v88 = v86;

  v89 = v82;
  v90 = v83;
  v91 = v84;
  v92 = v85;
  v93 = v87;
  sub_1000D705C(v66, type metadata accessor for EnvironmentState);
  *v69 = BYTE8(v187);
  v69[1] = BYTE4(v187);
  v69[2] = v187;
  v69[3] = BYTE4(v186);
  (*(v207 + 32))(&v69[v61[8]], v206, v185);
  v94 = &v69[v61[9]];
  *v94 = v183;
  *(v94 + 1) = v77;
  sub_100028B04(v61[10]);
  sub_100028B04(v61[11]);
  sub_100028B04(v61[12]);
  sub_100028B04(v61[13]);
  *&v69[v61[14]] = v181;
  sub_100028B04(v61[15]);
  sub_100028B04(v61[16]);
  sub_100028B04(v61[17]);
  v95 = &v69[v61[18]];
  *v95 = v82;
  *(v95 + 1) = v83;
  *(v95 + 2) = v84;
  *(v95 + 3) = v85;
  *(v95 + 4) = v87;
  *(v95 + 5) = v86;
  sub_100028B04(v61[19]);
  sub_100003934();
  v96 = v196;
  sub_10001B350(v97, v98, v99, v196);
  sub_100004B58();
  v100 = v209;
  sub_1007EDC1C(v69, v209, v101);
  sub_10001B350(v100, 0, 1, v61);
  sub_100003934();
  sub_10001B350(v102, v103, v104, v213);
  v105 = v195;
  sub_100003934();
  v106 = v200;
  sub_10001B350(v107, v108, v109, v200);
  sub_100003934();
  v110 = v202;
  sub_10001B350(v111, v112, v113, v202);
  sub_100003934();
  v114 = v203;
  sub_10001B350(v115, v116, v117, v203);
  sub_100003934();
  sub_10001B350(v118, v119, v120, v219);
  v121 = v189;
  sub_100003934();
  v122 = v192;
  sub_10001B350(v123, v124, v125, v192);
  v126 = v205;
  v127 = v193;
  sub_100181780(v205 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v193, type metadata accessor for ModalViewState);
  v128 = v121;
  v129 = v191;
  sub_1002AB08C(v128, v191, &qword_100CA65E8);
  sub_1000038B4(v129, 1, v122);
  if (v75)
  {
    sub_1000180EC(v129, &qword_100CA65E8);
  }

  else
  {
    sub_1000D705C(v127, type metadata accessor for ModalViewState);
    sub_100006814();
    sub_1007EDC1C(v129, v127, v130);
  }

  v131 = v194;
  sub_100006814();
  sub_1007EDC1C(v127, v132, v133);
  v134 = *(v126 + 16);
  LODWORD(v206) = *(v126 + 24);
  v135 = v188;
  sub_1002AB08C(v208, v188, &qword_100CA6640);
  sub_1000038B4(v135, 1, v96);
  v207 = v134;
  if (v75)
  {
    v136 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_100181780(v136, v217, v137);
    v138 = sub_100024D10(v135, 1, v96);

    v75 = v138 == 1;
    v139 = v201;
    v140 = v190;
    if (!v75)
    {
      sub_1000180EC(v135, &qword_100CA6640);
    }
  }

  else
  {
    sub_1007EDC1C(v135, v217, type metadata accessor for AppConfigurationState);

    v139 = v201;
    v140 = v190;
  }

  sub_1002AB08C(v209, v140, &qword_100CA6638);
  sub_1000038B4(v140, 1, v61);
  if (v75)
  {
    sub_100010C0C();
    sub_100181780(v126 + v177, v212, v141);
    sub_1000038B4(v140, 1, v61);
    v143 = v223;
    if (!v75)
    {
      sub_1000180EC(v140, &qword_100CA6638);
    }
  }

  else
  {
    sub_100004B58();
    sub_1007EDC1C(v140, v212, v142);
    v143 = v223;
  }

  sub_1002AB08C(v210, v131, &qword_100CA6630);
  v144 = v131;
  v145 = v131;
  v146 = v213;
  sub_1000038B4(v144, 1, v213);
  if (v75)
  {
    v147 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_100181780(v147, v218, v148);
    sub_1000038B4(v145, 1, v146);
    v149 = v198;
    if (!v75)
    {
      sub_1000180EC(v145, &qword_100CA6630);
    }
  }

  else
  {
    sub_1007EDC1C(v145, v218, type metadata accessor for LocationsState);
    v149 = v198;
  }

  v150 = v105;
  v151 = v197;
  sub_1002AB08C(v150, v197, &qword_100CA6628);
  sub_1000038B4(v151, 1, v106);
  if (v75)
  {
    v152 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_100181780(v152, v220, v153);
    sub_1000038B4(v151, 1, v106);
    v154 = v219;
    if (!v75)
    {
      sub_1000180EC(v151, &qword_100CA6628);
    }
  }

  else
  {
    sub_1007EDC1C(v151, v220, type metadata accessor for NotificationsState);
    v154 = v219;
  }

  sub_1002AB08C(v211, v149, &qword_100CA6620);
  sub_1000038B4(v149, 1, v110);
  if (v75)
  {
    v155 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_100181780(v155, v221, v156);
    sub_1000038B4(v149, 1, v110);
    if (!v75)
    {
      sub_1000180EC(v149, &qword_100CA6620);
    }
  }

  else
  {
    sub_1007EDC1C(v149, v221, type metadata accessor for NotificationsOptInState);
  }

  v157 = v199;
  sub_1002AB08C(v214, v199, &qword_100CA6618);
  sub_1000038B4(v157, 1, v114);
  if (v75)
  {
    v158 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_100181780(v158, v222, v159);
    sub_1000038B4(v157, 1, v114);
    if (!v75)
    {
      sub_1000180EC(v157, &qword_100CA6618);
    }
  }

  else
  {
    sub_1007EDC1C(v157, v222, type metadata accessor for TimeState);
  }

  sub_1002AB08C(v215, v139, &qword_100CA6610);
  sub_1000038B4(v139, 1, v154);
  if (v75)
  {
    v160 = sub_10004EADC(OBJC_IVAR____TtCV7Weather9MainState8_Storage_view);
    sub_100181780(v160, v143, v161);
    sub_1000038B4(v139, 1, v154);
    if (!v75)
    {
      sub_1000180EC(v139, &qword_100CA6610);
    }
  }

  else
  {
    sub_1007EDC1C(v139, v143, type metadata accessor for ViewState);
  }

  sub_100006814();
  v162 = v204;
  sub_1007EDC1C(v216, v204, v163);
  v165 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v164 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v167 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v166 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v168 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v169 = v126;
  v171 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v170 = *(v126 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v172 = *(v169 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v176) = v168;
  sub_10003E038(v207, v206, v217, v212, v218, v220, v221, v222, v223, v162, v165, v164, v167, v166, v176, v171, v170, v172, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193);
  v174 = v173;

  return v174;
}

uint64_t sub_1007EDC1C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1007EDCA4(void *a1, void *a2)
{
  type metadata accessor for WeatherData(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10022C350(&qword_100CA3898);
  __chkstk_darwin(v7 - 8);
  v9 = (&v29 - v8);
  v10 = sub_10022C350(&qword_100CB4398);
  sub_1000037E8();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = *a1 == *a2 && v14 == v15;
    if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v15)
  {
    goto LABEL_28;
  }

  v17 = type metadata accessor for ConditionDetailMapViewModel();
  if ((static Location.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v18 = v17[6];
  v19 = *(v10 + 48);
  sub_1003C8028(a1 + v18, v13);
  sub_1003C8028(a2 + v18, &v13[v19]);
  sub_10000394C(v13);
  if (!v16)
  {
    sub_1003C8028(v13, v9);
    sub_10000394C(&v13[v19]);
    if (!v20)
    {
      sub_1003BD374(&v13[v19], v6);
      v21 = sub_100883064(v9, v6);
      sub_1003C8098(v6);
      sub_1003C8098(v9);
      sub_1000180EC(v13, &qword_100CA3898);
      if (v21)
      {
        goto LABEL_21;
      }

LABEL_28:
      v27 = 0;
      return v27 & 1;
    }

    sub_1003C8098(v9);
LABEL_19:
    sub_1000180EC(v13, &qword_100CB4398);
    goto LABEL_28;
  }

  sub_10000394C(&v13[v19]);
  if (!v16)
  {
    goto LABEL_19;
  }

  sub_1000180EC(v13, &qword_100CA3898);
LABEL_21:
  v22 = v17[7];
  v23 = *(a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v23 == *v25 && v24 == v25[1];
  if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static WeatherMapOverlayKind.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_28;
  }

  v27 = *(a1 + v17[9]) ^ *(a2 + v17[9]) ^ 1;
  return v27 & 1;
}

uint64_t sub_1007EDF5C(uint64_t a1)
{
  v20 = a1;
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v21 = *(v4 - 8);
  v22 = v4;
  __chkstk_darwin(v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchTime();
  v19 = v7;
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v18 - v12;
  sub_10000C70C(0, &qword_100CB4670);
  v14 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v15 = *(v8 + 8);
  v15(v10, v7);
  aBlock[4] = sub_1007EE57C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000742F0;
  aBlock[3] = &unk_100C6DB10;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100067564(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10022C350(&qword_100CB4680);
  sub_1000743E8();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v16);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  return (v15)(v13, v19);
}

uint64_t SettingsMonitor.deinit()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration, &qword_100CB6198);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastDistanceConfiguration, &qword_100CB6180);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastWindSpeedConfiguration, qword_100CB61A0);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPressureConfiguration, &qword_100CB6190);
  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather15SettingsMonitor_lastPrecipitationConfiguration, &qword_100CB6188);

  return v0;
}

uint64_t SettingsMonitor.__deallocating_deinit()
{
  SettingsMonitor.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SettingsMonitor.applicationDidEnterBackground()()
{
  v1 = v0;
  v2 = sub_10022C350(&qword_100CB6198);
  sub_100003810(v2);
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = &v8 - v4;
  type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  UnitManager.preferredTemperatureUnit.getter();

  v6 = OBJC_IVAR____TtC7Weather15SettingsMonitor_lastTemperatureConfiguration;
  swift_beginAccess();
  sub_1007EE4F8(v5, v1 + v6);
  swift_endAccess();
  v7 = *(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer);
  *(v1 + OBJC_IVAR____TtC7Weather15SettingsMonitor_observer) = 0;
}

uint64_t sub_1007EE4F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CB6198);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007EE580(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_1000037E8();
  (*(v5 + 24))(v3, v4);
  return v3;
}

uint64_t sub_1007EE5D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEF77656976657250)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1007EE674(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003C38();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v20 - v11;
  v13 = sub_10022C350(&qword_100CDA940);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_1000200F8();
  v16 = *(v15 + 56);
  sub_1000BCB40(a1, v2);
  sub_1000BCB40(a2, v2 + v16);
  sub_1007F4464(v2, v12);
  sub_1007F4464(v2 + v16, v9);
  sub_1006E6E98();
  if (v17 & 1) != 0 && (sub_10043F9F0(&v12[*(v5 + 20)], v9 + *(v5 + 20)))
  {
    v18 = sub_1009614B0(&v12[*(v5 + 24)], v9 + *(v5 + 24));
    sub_1000E01F8(v9, type metadata accessor for LocationPreviewViewState);
    sub_1000E01F8(v12, type metadata accessor for LocationPreviewViewState);
    if (v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1000E01F8(v9, type metadata accessor for LocationPreviewViewState);
    sub_1000E01F8(v12, type metadata accessor for LocationPreviewViewState);
  }

  return 0;
}

void sub_1007EE85C()
{
  sub_10000E8AC();
  v18[0] = v0;
  v3 = v2;
  v18[1] = sub_10022C350(&qword_100CDAB10);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v4);
  sub_10001320C();
  v5 = type metadata accessor for ModalViewState.MapViewModal(0);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_100021D38();
  v7 = sub_10022C350(&qword_100CDAB18);
  sub_1000037C4();
  v9 = v8;
  sub_100003828();
  __chkstk_darwin(v10);
  v12 = v18 - v11;
  sub_1000161C0(v3, v3[3]);
  sub_1007F4B5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100071E5C();
  sub_1000BCB40(v18[0], v1);
  sub_1007F4BB0();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for LocationPreviewViewState(0);
  sub_100049D84();
  sub_1007F4364(v13, v14);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_10001CDBC();
  sub_1000E01F8(v1, v15);
  v16 = sub_100014268();
  v17(v16);
  (*(v9 + 8))(v12, v7);
  sub_10000C8F4();
}

void sub_1007EEAA4()
{
  sub_10000E8AC();
  v4 = v3;
  v26 = v5;
  v27 = type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDAAF0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v7);
  sub_1000200F8();
  v8 = sub_10022C350(&qword_100CDAAF8);
  sub_1000037C4();
  v28 = v9;
  sub_100003828();
  __chkstk_darwin(v10);
  sub_100021D38();
  sub_1000161C0(v4, v4[3]);
  sub_1007F4B5C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    goto LABEL_9;
  }

  v11 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v11, 0);
  if (v12 == v13 >> 1)
  {
    v14 = v8;
    goto LABEL_8;
  }

  if (v12 < (v13 >> 1))
  {
    sub_100618E7C(v12 + 1);
    v16 = v15;
    v18 = v17;
    swift_unknownObjectRelease();
    if (v16 == v18 >> 1)
    {
      sub_1007F4BB0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for LocationPreviewViewState(0);
      sub_100049D84();
      sub_1007F4364(v22, v23);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      swift_unknownObjectRelease();
      v24 = sub_1000E5A78();
      v25(v24);
      (*(v28 + 8))(v2, v8);
      sub_100017E28();
      sub_1007F4464(v1, v26);
LABEL_9:
      sub_100006F14(v4);
      sub_10000C8F4();
      return;
    }

    v14 = v8;
LABEL_8:
    type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    sub_10022C350(&qword_100CA7610);
    *v20 = v27;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v21 + 104))(v20);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v28 + 8))(v2, v14);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1007EEED8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F697469646E6F63 && a2 == 0xEF6C69617465446ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x8000000100ABAB30 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001BLL && 0x8000000100ABAB50 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x8000000100ABAB70 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x617465446E6F6F6DLL && a2 == 0xEA00000000006C69;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7365676172657661 && a2 == 0xEE006C6961746544;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000015 && 0x8000000100ABABA0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1007EF170(char a1)
{
  result = 0x6F697469646E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      v3 = 11;
      goto LABEL_7;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x617465446E6F6F6DLL;
      break;
    case 5:
      result = 0x7365676172657661;
      break;
    case 6:
      result = 0x63416F546C6C6163;
      break;
    case 7:
      v3 = 5;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1007EF290()
{
  sub_10000C778();
  v114 = v3;
  v115 = v4;
  v102 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v109 = v6;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v112 = v8;
  v113 = v7;
  __chkstk_darwin(v7);
  sub_1000038E4();
  v108 = v9;
  sub_1000038CC();
  v10 = type metadata accessor for AveragesDetailViewState();
  v11 = sub_100003810(v10);
  __chkstk_darwin(v11);
  sub_1000038E4();
  v106 = v12;
  sub_1000038CC();
  v13 = type metadata accessor for MoonDetailViewState();
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  sub_1000038E4();
  v104 = v15;
  sub_1000038CC();
  v99 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v107 = v17;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000038E4();
  v105 = v19;
  sub_1000038CC();
  v101 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v103 = v21;
  sub_1000038CC();
  v22 = type metadata accessor for ConditionDetailViewState();
  v23 = sub_100003810(v22);
  __chkstk_darwin(v23);
  sub_1000038E4();
  v100 = v24;
  v25 = sub_1000038CC();
  type metadata accessor for ModalViewState.LocationDetailModal(v25);
  sub_1000037E8();
  __chkstk_darwin(v26);
  sub_100003C38();
  v111 = (v27 - v28);
  v30 = __chkstk_darwin(v29);
  v32 = &HourPrecipitationDetailViewState - v31;
  __chkstk_darwin(v30);
  sub_10000C930();
  __chkstk_darwin(v33);
  sub_10003A2D4();
  __chkstk_darwin(v34);
  sub_100003878();
  v110 = v35;
  __chkstk_darwin(v36);
  sub_100003878();
  v38 = v37;
  v40 = __chkstk_darwin(v39);
  v42 = &HourPrecipitationDetailViewState - v41;
  __chkstk_darwin(v40);
  v44 = &HourPrecipitationDetailViewState - v43;
  v45 = sub_10022C350(&qword_100CDA948);
  sub_100003810(v45);
  sub_100003828();
  __chkstk_darwin(v46);
  sub_10000C8C8();
  v48 = *(v47 + 56);
  sub_1000BCB40(v114, v0);
  sub_1000BCB40(v115, v0 + v48);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v42);
      if (sub_100087254() != 1)
      {
        sub_10012CE20();
        v83 = v42;
        goto LABEL_34;
      }

      sub_100021188();
      v73 = v0 + v48;
      v74 = v103;
      sub_1007F4464(v73, v103);
      if ((static Location.== infix(_:_:)() & 1) != 0 && v42[*(v101 + 20)] == *(v74 + *(v101 + 20)))
      {
        v89 = *(v101 + 24);
        v90 = v42[v89 + 32];
        v91 = v74 + v89;
        if ((v90 & 1) == 0 && (*(v91 + 32) & 1) == 0)
        {
          sub_10003B9F4(v91);
        }
      }

      sub_1000795A0();
      sub_1000E01F8(v74, v96);
      sub_1000E01F8(v42, v0);
      sub_10000682C();
      v95 = v0;
      goto LABEL_54;
    case 2u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v38);
      if (sub_100087254() != 2)
      {
        sub_100008F8C();
        v83 = v38;
        goto LABEL_34;
      }

      sub_10006A908();
      v56 = v0;
      v57 = v0 + v48;
      v58 = v105;
      sub_1007F4464(v57, v105);
      if (static Location.== infix(_:_:)() & 1) == 0 || (v59 = *(HourPrecipitationDetailViewState + 20), v60 = *(v38 + v59 + 32), v61 = v58 + v59, (v60) || (*(v61 + 32))
      {
        sub_100008F8C();
        sub_1000E01F8(v58, v62);
      }

      else
      {
        sub_10003B9F4(v61);
        sub_100008F8C();
        sub_1000E01F8(v58, v92);
      }

      sub_100008F8C();
      v87 = v38;
      goto LABEL_53;
    case 3u:
      sub_10001F8A0();
      v44 = v110;
      sub_1000BCB40(v0, v110);
      if (sub_100087254() != 3)
      {
        v49 = type metadata accessor for SunriseSunsetDetailViewState;
        goto LABEL_31;
      }

      sub_100036EF4();
      v56 = v0;
      v63 = v0 + v48;
      v64 = v107;
      sub_1007F4464(v63, v107);
      if (static Location.== infix(_:_:)())
      {
        v65 = *(v99 + 20);
        v66 = v44[v65 + 32];
        v67 = v64 + v65;
        if ((v66 & 1) == 0 && (*(v67 + 32) & 1) == 0)
        {
          sub_10003B9F4(v67);
        }
      }

      sub_100071818();
      sub_1000E01F8(v64, v86);
      v87 = v44;
      v88 = v0;
      goto LABEL_53;
    case 4u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v1);
      if (sub_100087254() == 4)
      {
        sub_100020388();
        v50 = v104;
        sub_1007F4464(v0 + v48, v104);
        v51 = sub_100014268();
        sub_1003C55BC(v51, v52);
        v53 = v0;
        v54 = type metadata accessor for MoonDetailViewState;
        sub_1000E01F8(v50, type metadata accessor for MoonDetailViewState);
        v55 = v1;
        goto LABEL_38;
      }

      v82 = type metadata accessor for MoonDetailViewState;
      v83 = v1;
      goto LABEL_34;
    case 5u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v2);
      if (sub_100087254() == 5)
      {
        sub_100071A20();
        v75 = v106;
        sub_1007F4464(v0 + v48, v106);
        v76 = sub_10000C8E8();
        sub_10035E570(v76, v77);
        v53 = v0;
        v54 = type metadata accessor for AveragesDetailViewState;
        sub_1000E01F8(v75, type metadata accessor for AveragesDetailViewState);
        v55 = v2;
        goto LABEL_38;
      }

      v82 = type metadata accessor for AveragesDetailViewState;
      v83 = v2;
      goto LABEL_34;
    case 6u:
      sub_10001F8A0();
      sub_1000BCB40(v0, v32);
      if (sub_100087254() == 6)
      {
        v79 = v112;
        v78 = v113;
        (*(v112 + 32))(v108, v0 + v48, v113);
        static URL.== infix(_:_:)();
        v53 = v0;
        v80 = *(v79 + 8);
        v81 = sub_10000C8E8();
        v80(v81);
        (v80)(v32, v78);
        goto LABEL_39;
      }

      (*(v112 + 8))(v32, v113);
      goto LABEL_35;
    case 7u:
      sub_10001F8A0();
      v44 = v111;
      sub_1000BCB40(v0, v111);
      if (sub_100087254() != 7)
      {
        v49 = type metadata accessor for HomeAndWorkRefinementViewState;
        goto LABEL_31;
      }

      sub_1000B9A80();
      v56 = v0;
      v68 = v0 + v48;
      v69 = v109;
      sub_1007F4464(v68, v109);
      if ((static Location.== infix(_:_:)() & 1) != 0 && (static LocationOfInterest.== infix(_:_:)() & 1) != 0 && (v70 = *(v102 + 24), v71 = v44[v70 + 32], v72 = v69 + v70, (v71 & 1) == 0) && (*(v72 + 32) & 1) == 0)
      {
        sub_10003B9F4(v72);
        sub_100019F60();
        sub_1000E01F8(v69, v97);
      }

      else
      {
        sub_100019F60();
        sub_1000E01F8(v69, v93);
      }

      sub_100019F60();
      v87 = v44;
LABEL_53:
      sub_1000E01F8(v87, v88);
      sub_10000682C();
      v95 = v56;
LABEL_54:
      sub_1000E01F8(v95, v94);
      break;
    default:
      sub_10001F8A0();
      sub_1000BCB40(v0, v44);
      if (sub_100087254())
      {
        v49 = type metadata accessor for ConditionDetailViewState;
LABEL_31:
        v82 = v49;
        v83 = v44;
LABEL_34:
        sub_1000E01F8(v83, v82);
LABEL_35:
        sub_1000180EC(v0, &qword_100CDA948);
      }

      else
      {
        sub_100043AB0();
        v84 = v100;
        sub_1007F4464(v0 + v48, v100);
        sub_100437E74(v44, v84);
        v53 = v0;
        v54 = type metadata accessor for ConditionDetailViewState;
        sub_1000E01F8(v84, type metadata accessor for ConditionDetailViewState);
        v55 = v44;
LABEL_38:
        sub_1000E01F8(v55, v54);
LABEL_39:
        sub_10000682C();
        sub_1000E01F8(v53, v85);
      }

      break;
  }

  sub_10000536C();
}

void sub_1007EFC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_10000E8AC();
  a26 = v33;
  a27 = v34;
  v122 = v28;
  v118 = v27;
  v36 = v35;
  sub_10022C350(&qword_100CDAAA8);
  sub_1000037C4();
  v117[1] = v38;
  v117[2] = v37;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  v117[0] = v40;
  sub_1000038CC();
  type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000038E4();
  v116 = v42;
  sub_10022C350(&qword_100CDAAB0);
  sub_1000037C4();
  v114 = v44;
  v115 = v43;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  v111 = v46;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v112 = v48;
  v113 = v47;
  __chkstk_darwin(v47);
  sub_1000038E4();
  v110 = v49;
  sub_10022C350(&qword_100CDAAB8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v50);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v51);
  sub_1000038E4();
  v109 = v52;
  sub_10022C350(&qword_100CDAAC0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v53);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v54);
  sub_1000038E4();
  sub_100003990(v55);
  sub_10022C350(&qword_100CDAAC8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v56);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v57);
  sub_1000038E4();
  sub_100003990(v58);
  sub_10022C350(&qword_100CDAAD0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v59);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v60);
  sub_1000038E4();
  sub_100003990(v61);
  sub_10022C350(&qword_100CDAAD8);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v62);
  sub_1000039BC();
  sub_1000038CC();
  type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v63);
  sub_1000038E4();
  sub_100003990(v64);
  v108 = sub_10022C350(&qword_100CDAAE0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v65);
  sub_1000326D4();
  type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v66);
  sub_1000037D8();
  sub_10000CC9C();
  v67 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v68);
  sub_1000037D8();
  sub_1000200F8();
  sub_10022C350(&qword_100CDAAE8);
  sub_1000037C4();
  v120 = v70;
  v121 = v69;
  sub_100003828();
  __chkstk_darwin(v71);
  sub_100021D38();
  sub_1000161C0(v36, v36[3]);
  sub_1007F4868();
  v119 = v31;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10001F8A0();
  sub_1000BCB40(v118, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000A408C(v30, v117);
      a11 = 1;
      sub_1007F4AB4();
      sub_100069A6C();
      sub_100086638();
      sub_1007F4364(v95, v96);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v97 = sub_100018774();
      v98(v97);
      v82 = type metadata accessor for AirQualityDetailViewState;
      goto LABEL_9;
    case 2u:
      sub_1000A408C(v30, &v120);
      a12 = 2;
      sub_1007F4A60();
      sub_100069A6C();
      sub_10001651C();
      sub_1007F4364(v83, v84);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v85 = sub_100018774();
      v86(v85);
      v82 = type metadata accessor for NextHourPrecipitationDetailViewState;
      goto LABEL_9;
    case 3u:
      sub_1000A408C(v30, &a10);
      a13 = 3;
      sub_1007F4A0C();
      sub_100069A6C();
      sub_10003BF88();
      sub_1007F4364(v87, v88);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v89 = sub_100018774();
      v90(v89);
      v82 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_9;
    case 4u:
      sub_1000A408C(v30, &a22);
      a14 = 4;
      sub_1007F49B8();
      sub_100069A6C();
      sub_10003BBE8();
      sub_1007F4364(v78, v79);
      sub_1000524A0();
      sub_1000BAF60();
      sub_1000F0060();
      v80 = sub_100018774();
      v81(v80);
      v82 = type metadata accessor for MoonDetailViewState;
      goto LABEL_9;
    case 5u:
      v67 = v109;
      sub_1007F4464(v30, v109);
      a15 = 5;
      sub_1007F4964();
      sub_100069A6C();
      sub_100087EA4();
      sub_1007F4364(v99, v100);
      sub_1000524A0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v101 = sub_100018774();
      v102(v101);
      v82 = type metadata accessor for AveragesDetailViewState;
      goto LABEL_9;
    case 6u:
      (*(v112 + 32))(v110, v30, v113);
      a16 = 6;
      sub_1007F4910();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1000D433C();
      sub_1007F4364(v106, v107);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v114 + 8))(v111, v115);
      (*(v112 + 8))(v110, v113);
      goto LABEL_10;
    case 7u:
      v67 = v116;
      sub_1007F4464(v30, v116);
      a17 = 7;
      sub_1007F48BC();
      sub_100069A6C();
      sub_10004385C();
      sub_1007F4364(v91, v92);
      sub_1000524A0();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v93 = sub_100018774();
      v94(v93);
      v82 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_9:
      sub_1000E01F8(v67, v82);
LABEL_10:
      v103 = sub_100014268();
      v105(v103, v104);
      break;
    default:
      v72 = sub_10000C8E8();
      sub_1007F4464(v72, v73);
      a10 = 0;
      sub_1007F4B08();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      sub_1000868DC();
      sub_1007F4364(v74, v75);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      sub_10000E73C();
      v76(v32, v108);
      sub_1000C8860();
      sub_1000E01F8(v29, v77);
      (*(v120 + 8))(v119, v121);
      break;
  }

  sub_10000C8F4();
}

void sub_1007F0938()
{
  sub_10000E8AC();
  v135 = v0;
  v6 = v5;
  v127 = v7;
  v119[24] = sub_10022C350(&qword_100CDAA18);
  sub_1000037C4();
  v119[13] = v8;
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v126 = v10;
  v119[23] = sub_10022C350(&qword_100CDAA20);
  sub_1000037C4();
  v119[12] = v11;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v125 = v13;
  v119[22] = sub_10022C350(&qword_100CDAA28);
  sub_1000037C4();
  v119[11] = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v133 = v16;
  v119[21] = sub_10022C350(&qword_100CDAA30);
  sub_1000037C4();
  v119[10] = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  v124 = v19;
  v119[20] = sub_10022C350(&qword_100CDAA38);
  sub_1000037C4();
  v119[9] = v20;
  sub_100003828();
  __chkstk_darwin(v21);
  sub_1000039BC();
  v123 = v22;
  v132 = sub_10022C350(&qword_100CDAA40);
  sub_1000037C4();
  v119[8] = v23;
  sub_100003828();
  __chkstk_darwin(v24);
  sub_1000039BC();
  v122 = v25;
  v119[19] = sub_10022C350(&qword_100CDAA48);
  sub_1000037C4();
  v119[7] = v26;
  sub_100003828();
  __chkstk_darwin(v27);
  sub_1000039BC();
  v121 = v28;
  v119[18] = sub_10022C350(&qword_100CDAA50);
  sub_1000037C4();
  v119[6] = v29;
  sub_100003828();
  __chkstk_darwin(v30);
  sub_1000039BC();
  v120 = v31;
  v131 = sub_10022C350(&qword_100CDAA58);
  sub_1000037C4();
  v129 = v32;
  sub_100003828();
  __chkstk_darwin(v33);
  v35 = v119 - v34;
  v128 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v36);
  sub_100003C38();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v38);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v39);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10003A2D4();
  __chkstk_darwin(v41);
  sub_100017E40();
  __chkstk_darwin(v42);
  sub_10003C868();
  __chkstk_darwin(v43);
  sub_10000C930();
  __chkstk_darwin(v44);
  v46 = v119 - v45;
  v47 = v6[3];
  v134 = v6;
  sub_1000161C0(v6, v47);
  sub_1007F4868();
  v130 = v35;
  v48 = v135;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v48)
  {
    goto LABEL_10;
  }

  v119[3] = v3;
  v119[4] = v4;
  v119[2] = v1;
  v119[5] = v2;
  v50 = v132;
  v49 = v133;
  v135 = v46;
  v51 = KeyedDecodingContainer.allKeys.getter();
  sub_100618E80(v51, 0);
  if (v53 == v54 >> 1)
  {
    v55 = v128;
LABEL_9:
    type metadata accessor for DecodingError();
    swift_allocError();
    v67 = v66;
    sub_10022C350(&qword_100CA7610);
    *v67 = v55;
    KeyedDecodingContainer.codingPath.getter();
    sub_10000E98C();
    sub_100003B20();
    (*(v68 + 104))(v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    v69 = sub_10002FDB4();
    v70(v69);
LABEL_10:
    v71 = v134;
LABEL_11:
    sub_100006F14(v71);
    sub_10000C8F4();
    return;
  }

  v119[1] = 0;
  if (v53 < (v54 >> 1))
  {
    v56 = *(v52 + v53);
    sub_100618E7C(v53 + 1);
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    v61 = v135;
    if (v58 == v60 >> 1)
    {
      switch(v56)
      {
        case 1:
          sub_1007F4AB4();
          v81 = v121;
          sub_100037DA8();
          v56 = type metadata accessor for AirQualityDetailViewState();
          sub_100086638();
          sub_1007F4364(v82, v83);
          sub_1000D3C64();
          sub_100011858();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v108(v81, v49);
          v109 = sub_10002CAF4();
          v110(v109);
          sub_1001707FC(&v130);
          goto LABEL_19;
        case 2:
          sub_1007F4A60();
          v74 = v122;
          sub_10000CED8();
          type metadata accessor for NextHourPrecipitationDetailViewState();
          sub_10001651C();
          sub_1007F4364(v75, v76);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v92(v74, v50);
          v93 = sub_10002FDB4();
          v94(v93);
          sub_1001707FC(&v131);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          v107 = v56;
          goto LABEL_21;
        case 3:
          sub_1007F4A0C();
          sub_10000CED8();
          type metadata accessor for SunriseSunsetDetailViewState();
          sub_10003BF88();
          sub_1007F4364(v77, v78);
          sub_100024A90();
          sub_100052778();
          swift_unknownObjectRelease();
          v95 = sub_10003C854();
          v96(v95);
          v97 = sub_10002FDB4();
          v98(v97);
          sub_100051B34();
          goto LABEL_20;
        case 4:
          sub_1007F49B8();
          sub_10000CED8();
          type metadata accessor for MoonDetailViewState();
          sub_10003BBE8();
          sub_1007F4364(v72, v73);
          sub_100024A90();
          sub_100052778();
          sub_100011858();
          swift_unknownObjectRelease();
          v88 = sub_10003C854();
          v89(v88);
          v90 = sub_10002CAF4();
          v91(v90);
          sub_100051B34();
          goto LABEL_20;
        case 5:
          sub_1007F4964();
          sub_10000CED8();
          type metadata accessor for AveragesDetailViewState();
          sub_100087EA4();
          sub_1007F4364(v84, v85);
          sub_100024A90();
          sub_100052778();
          sub_100011858();
          swift_unknownObjectRelease();
          v111 = sub_10003C854();
          v112(v111);
          v113 = sub_10002CAF4();
          v114(v113);
          sub_100051B34();
          goto LABEL_20;
        case 6:
          sub_1007F4910();
          sub_10000CED8();
          type metadata accessor for URL();
          sub_1000D433C();
          sub_1007F4364(v86, v87);
          sub_100024A90();
          sub_100052778();
          sub_100011858();
          swift_unknownObjectRelease();
          v115 = sub_10003C854();
          v116(v115);
          v117 = sub_10002CAF4();
          v118(v117);
          sub_100051B34();
          goto LABEL_20;
        case 7:
          sub_1007F48BC();
          sub_10000CED8();
          type metadata accessor for HomeAndWorkRefinementViewState();
          sub_10004385C();
          sub_1007F4364(v79, v80);
          sub_100024A90();
          sub_100052778();
          sub_100011858();
          swift_unknownObjectRelease();
          v99 = sub_10003C854();
          v100(v99);
          v101 = sub_10002CAF4();
          v102(v101);
          sub_100051B34();
LABEL_20:
          swift_storeEnumTagMultiPayload();
          v107 = v50;
LABEL_21:
          v106 = v134;
          break;
        default:
          sub_1007F4B08();
          v62 = v120;
          sub_100037DA8();
          v63 = type metadata accessor for ConditionDetailViewState();
          sub_1000868DC();
          sub_1007F4364(v64, v65);
          sub_1000D3C64();
          sub_100011858();
          swift_unknownObjectRelease();
          sub_10000E73C();
          v103(v62, v49);
          v104 = sub_10002CAF4();
          v105(v104);
          sub_1001707FC(&v132);
          swift_storeEnumTagMultiPayload();
          v106 = v134;
          v107 = v63;
          break;
      }

      sub_1007F4464(v107, v61);
      sub_1007F4464(v61, v127);
      v71 = v106;
      goto LABEL_11;
    }

    v55 = v128;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1007F1790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007EE5D0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007F17BC(uint64_t a1)
{
  v2 = sub_1007F4B5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F17F8(uint64_t a1)
{
  v2 = sub_1007F4B5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1834(uint64_t a1)
{
  v2 = sub_1007F4BB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1870(uint64_t a1)
{
  v2 = sub_1007F4BB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F18E0(uint64_t a1)
{
  v2 = sub_1007F4AB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F191C(uint64_t a1)
{
  v2 = sub_1007F4AB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1958(uint64_t a1)
{
  v2 = sub_1007F4964();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1994(uint64_t a1)
{
  v2 = sub_1007F4964();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F19D0(uint64_t a1)
{
  v2 = sub_1007F4910();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1A0C(uint64_t a1)
{
  v2 = sub_1007F4910();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007EEED8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F1A78(uint64_t a1)
{
  v2 = sub_1007F4868();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1AB4(uint64_t a1)
{
  v2 = sub_1007F4868();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1AF0(uint64_t a1)
{
  v2 = sub_1007F4B08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1B2C(uint64_t a1)
{
  v2 = sub_1007F4B08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1B68(uint64_t a1)
{
  v2 = sub_1007F48BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1BA4(uint64_t a1)
{
  v2 = sub_1007F48BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1BE0(uint64_t a1)
{
  v2 = sub_1007F49B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1C1C(uint64_t a1)
{
  v2 = sub_1007F49B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1C58(uint64_t a1)
{
  v2 = sub_1007F4A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1C94(uint64_t a1)
{
  v2 = sub_1007F4A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F1CD0(uint64_t a1)
{
  v2 = sub_1007F4A0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F1D0C(uint64_t a1)
{
  v2 = sub_1007F4A0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007F1D7C()
{
  sub_10000C778();
  v5 = v0;
  v53 = v6;
  v7 = type metadata accessor for ModalViewState.LocationDetailModal(0);
  v8 = sub_100003810(v7);
  __chkstk_darwin(v8);
  sub_1000037D8();
  v11 = v10 - v9;
  v12 = sub_10022C350(&qword_100CA65E0);
  v13 = sub_100003810(v12);
  __chkstk_darwin(v13);
  sub_100003C38();
  sub_100017E40();
  __chkstk_darwin(v14);
  v16 = &v50 - v15;
  v17 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000037D8();
  v19 = sub_1000326D4();
  type metadata accessor for ModalViewState(v19);
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDA968);
  sub_1000037C4();
  v51 = v22;
  v52 = v21;
  sub_100003828();
  __chkstk_darwin(v23);
  sub_10001320C();
  sub_100010C3C();
  sub_1000BCB40(v5, v1);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v40 = *v1;
      v41 = v1[1];
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100A2C3F0;
      *(inited + 32) = 0xD000000000000019;
      *(inited + 40) = 0x8000000100ADF830;
      *(inited + 72) = &type metadata for NotificationSettingsViewState;
      *(inited + 48) = v40;
      *(inited + 49) = v41;
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 2u:
      v36 = *v1;
      sub_10022C350(&qword_100CA36F8);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_100A2C3F0;
      *(v37 + 32) = 0xD000000000000017;
      *(v37 + 40) = 0x8000000100ABB0E0;
      *(v37 + 72) = &type metadata for NotificationsOptInViewState;
      *(v37 + 48) = v36;

      sub_1000042E4();
      goto LABEL_7;
    case 3u:
      v38 = *v1;
      sub_10022C350(&qword_100CA36F8);
      v39 = swift_initStackObject();
      *(v39 + 16) = xmmword_100A2C3F0;
      *(v39 + 32) = 0xD000000000000012;
      *(v39 + 40) = 0x8000000100ABB100;
      *(v39 + 72) = &type metadata for ReportWeatherViewState;
      *(v39 + 48) = v38;

      sub_1000042E4();
LABEL_7:
      ShortDescription.init(name:_:)();

      goto LABEL_15;
    case 4u:
      sub_1003C9FB0(v1, v16);
      sub_10022C350(&qword_100CA36F8);
      v29 = swift_initStackObject();
      *(v29 + 16) = xmmword_100A2C3F0;
      strcpy((v29 + 32), "mapViewModal");
      *(v29 + 45) = 0;
      *(v29 + 46) = -5120;
      v30 = sub_10002FDB4();
      sub_1007F43F4(v30, v31);
      v32 = type metadata accessor for ModalViewState.MapViewModal(0);
      if (sub_100024D10(v3, 1, v32) == 1)
      {
        sub_1000180EC(v3, &qword_100CA65E0);
        v34 = v52;
        v33 = v53;
        v35 = v51;
      }

      else
      {
        sub_1007F2584(v56);
        sub_1000D4010();
        sub_1000E01F8(v3, v47);
        v48 = v57;
        sub_1000161C0(v56, v57);
        v55 = v48;
        sub_100043010(&v54);
        sub_100003B20();
        (*(v49 + 16))();
        sub_100006F14(v56);
        v34 = v52;
        v33 = v53;
        v35 = v51;
        if (v55)
        {
          sub_100166170(&v54, (v29 + 48));
          goto LABEL_20;
        }
      }

      *(v29 + 72) = &type metadata for String;
      *(v29 + 48) = 1701736302;
      *(v29 + 56) = 0xE400000000000000;
LABEL_20:
      sub_1000042E4();
      ShortDescription.init(name:_:)();
      sub_1000180EC(v16, &qword_100CA65E0);
LABEL_16:
      v33[3] = v34;
      v33[4] = sub_10012EF24(&qword_100CDA970, &qword_100CDA968);
      v46 = sub_100043010(v33);
      (*(v35 + 32))(v46, v2, v34);
      sub_10000536C();
      return;
    case 5u:
      sub_100075018();
      sub_1007F4464(v1, v11);
      sub_10022C350(&qword_100CA36F8);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_100A2C3F0;
      *(v43 + 32) = 0x6C6961746564;
      *(v43 + 40) = 0xE600000000000000;
      sub_1007F2784();
      v44 = v57;
      sub_1000161C0(v56, v57);
      *(v43 + 72) = v44;
      sub_100043010((v43 + 48));
      sub_100003B20();
      (*(v45 + 16))();
      sub_100006F14(v56);
      sub_1000042E4();
      sub_100037FD4();
      sub_10008890C();
      ShortDescription.init(name:_:)();
      sub_10000682C();
      v28 = v11;
      goto LABEL_12;
    case 6u:
      Dictionary.init(dictionaryLiteral:)();
      goto LABEL_14;
    case 7u:
      Dictionary.init(dictionaryLiteral:)();
LABEL_14:
      ShortDescription.init(name:_:)();
      goto LABEL_15;
    default:
      sub_100023278();
      sub_1007F4464(v1, v4);
      sub_10022C350(&qword_100CA36F8);
      *(swift_initStackObject() + 16) = xmmword_100A2C3F0;
      sub_1000B91D4();
      v24[4] = v25;
      v24[5] = 0xEC00000065746174;
      v24[9] = v17;
      sub_100043010(v24 + 6);
      sub_1000216D8();
      sub_1000BCB40(v4, v26);
      sub_10006A820();
      sub_100037FD4();
      ShortDescription.init(name:_:)();
      sub_10001CDBC();
      v28 = v4;
LABEL_12:
      sub_1000E01F8(v28, v27);
LABEL_15:
      v34 = v52;
      v33 = v53;
      v35 = v51;
      goto LABEL_16;
  }
}

uint64_t sub_1007F2584@<X0>(uint64_t *a1@<X8>)
{
  v4 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  type metadata accessor for ModalViewState.MapViewModal(0);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000037D8();
  sub_1000200F8();
  sub_100071E5C();
  sub_1000BCB40(v1, v2);
  sub_100023278();
  sub_1007F4464(v2, v8);
  sub_10022C350(&qword_100CA36F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100A2D320;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0x6E6F697461636F6CLL;
  *(inited + 56) = 0xEF77656976657250;
  sub_1000B91D4();
  v11[9] = &type metadata for String;
  v11[10] = v12;
  v11[11] = 0xEC00000065746174;
  v11[15] = v4;
  sub_100043010(v11 + 12);
  sub_1000216D8();
  sub_1000BCB40(v8, v13);
  Dictionary.init(dictionaryLiteral:)();
  sub_10001CDBC();
  sub_1000E01F8(v8, v14);
  a1[3] = sub_10022C350(&qword_100CDA950);
  a1[4] = sub_10012EF24(&qword_100CDA958, &qword_100CDA950);
  sub_100043010(a1);
  return ShortDescription.init(name:_:)();
}

void sub_1007F2784()
{
  sub_10000C778();
  v78 = v0;
  v82 = v3;
  v73 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v77 = v5;
  sub_1000038CC();
  type metadata accessor for URL();
  sub_1000037C4();
  v75 = v7;
  v76 = v6;
  __chkstk_darwin(v6);
  sub_1000038E4();
  v74 = v8;
  sub_1000038CC();
  v70 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v72 = v10;
  sub_1000038CC();
  v68 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v11);
  sub_1000038E4();
  v71 = v12;
  sub_1000038CC();
  v13 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v69 = v15;
  sub_1000038CC();
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  sub_100021D38();
  v23 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = sub_1000326D4();
  v26 = type metadata accessor for ModalViewState.LocationDetailModal(v25);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000037D8();
  v30 = v29 - v28;
  sub_10022C350(&qword_100CDA968);
  sub_1000037C4();
  v80 = v32;
  v81 = v31;
  sub_100003828();
  __chkstk_darwin(v33);
  sub_1000039BC();
  v79 = v34;
  sub_10001F8A0();
  sub_1000BCB40(v78, v30);
  sub_100014268();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100021188();
      sub_1007F4464(v30, v1);
      sub_10022C350(&qword_100CA36F8);
      inited = swift_initStackObject();
      v59 = sub_100028B98(inited, xmmword_100A2C3F0);
      v59[4].n128_u64[1] = v21;
      v60 = sub_100043010(&v59[3]);
      sub_1000BCB40(v1, v60);
      sub_10006A820();
      sub_100020BB4();
      v26 = v79;
      ShortDescription.init(name:_:)();
      sub_10012CE20();
      v39 = v1;
      goto LABEL_11;
    case 2u:
      sub_10006A908();
      sub_1007F4464(v30, v20);
      v26 = "airQualityDetail";
      sub_10022C350(&qword_100CA36F8);
      v45 = swift_initStackObject();
      v46 = sub_100028B98(v45, xmmword_100A2C3F0);
      v46[4].n128_u64[1] = HourPrecipitationDetailViewState;
      v47 = sub_100043010(&v46[3]);
      sub_1000BCB40(v20, v47);
      sub_1000042E4();
      sub_100020BB4();
      sub_100042348();
      sub_100008F8C();
      v39 = v20;
      goto LABEL_11;
    case 3u:
      sub_100036EF4();
      v48 = v30;
      v49 = v69;
      sub_1007F4464(v48, v69);
      sub_10022C350(&qword_100CA36F8);
      v50 = swift_initStackObject();
      v51 = sub_100028B98(v50, xmmword_100A2C3F0);
      v51[4].n128_u64[1] = v13;
      v52 = sub_100043010(&v51[3]);
      sub_1000BCB40(v69, v52);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348();
      v53 = type metadata accessor for SunriseSunsetDetailViewState;
      goto LABEL_7;
    case 4u:
      sub_100020388();
      v40 = v71;
      sub_1007F4464(v30, v71);
      sub_10022C350(&qword_100CA36F8);
      v41 = swift_initStackObject();
      v42 = sub_100028B98(v41, xmmword_100A2C3F0);
      v42[4].n128_u64[1] = v68;
      v43 = sub_100043010(&v42[3]);
      sub_1000BCB40(v71, v43);
      sub_10006A820();
      sub_100020BB4();
      v26 = v79;
      ShortDescription.init(name:_:)();
      v44 = type metadata accessor for MoonDetailViewState;
      goto LABEL_10;
    case 5u:
      sub_100071A20();
      v40 = v72;
      sub_1007F4464(v30, v72);
      sub_10022C350(&qword_100CA36F8);
      v61 = swift_initStackObject();
      v62 = sub_100028B98(v61, xmmword_100A2C3F0);
      v62[4].n128_u64[1] = v70;
      v63 = sub_100043010(&v62[3]);
      sub_1000BCB40(v72, v63);
      sub_10006A820();
      sub_100020BB4();
      sub_10008890C();
      sub_100042348();
      v44 = type metadata accessor for AveragesDetailViewState;
LABEL_10:
      v38 = v44;
      v39 = v40;
      goto LABEL_11;
    case 6u:
      (*(v75 + 32))(v74, v30, v76);
      sub_10022C350(&qword_100CA36F8);
      v65 = swift_initStackObject();
      v66 = sub_100028B98(v65, xmmword_100A2C3F0);
      v66[4].n128_u64[1] = v76;
      v67 = sub_100043010(&v66[3]);
      (*(v75 + 16))(v67, v74, v76);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348();
      (*(v75 + 8))(v74, v76);
      goto LABEL_12;
    case 7u:
      sub_1000B9A80();
      v54 = v30;
      v49 = v77;
      sub_1007F4464(v54, v77);
      sub_10022C350(&qword_100CA36F8);
      v55 = swift_initStackObject();
      v56 = sub_100028B98(v55, xmmword_100A2C3F0);
      v56[4].n128_u64[1] = v73;
      v57 = sub_100043010(&v56[3]);
      sub_1000BCB40(v77, v57);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348();
      v53 = type metadata accessor for HomeAndWorkRefinementViewState;
LABEL_7:
      v38 = v53;
      v39 = v49;
      goto LABEL_11;
    default:
      sub_100043AB0();
      sub_1007F4464(v30, v2);
      sub_10022C350(&qword_100CA36F8);
      v35 = swift_initStackObject();
      v36 = sub_100028B98(v35, xmmword_100A2C3F0);
      v36[4].n128_u64[1] = v23;
      v37 = sub_100043010(&v36[3]);
      sub_1000BCB40(v2, v37);
      sub_10006A820();
      sub_100020BB4();
      sub_100042348();
      sub_1000C8860();
      v39 = v2;
LABEL_11:
      sub_1000E01F8(v39, v38);
LABEL_12:
      v82[3] = v81;
      v82[4] = sub_10012EF24(&qword_100CDA970, &qword_100CDA968);
      v64 = sub_100043010(v82);
      (*(v80 + 32))(v64, v26, v81);
      sub_10000536C();
      return;
  }
}

void sub_1007F30FC()
{
  sub_10000E8AC();
  v42 = v4;
  v5 = sub_1000038D8();
  type metadata accessor for ModalViewState.LocationDetailModal(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v39 = v7;
  v8 = sub_1000038CC();
  v41 = type metadata accessor for ModalViewState.MapViewModal(v8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  sub_1000038E4();
  v38 = v10;
  v11 = sub_1000038CC();
  type metadata accessor for LocationPreviewViewState(v11);
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000037D8();
  v15 = v14 - v13;
  v16 = sub_10022C350(&qword_100CDA980);
  sub_1000037C4();
  v40 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_10001320C();
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100021D38();
  v43 = v0;
  sub_1000161C0(v0, v0[3]);
  sub_1007F44C0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    v20 = v0;
  }

  else
  {
    sub_1007F4514();
    sub_1000C8664();
    switch(v44)
    {
      case 1:
        sub_100049D84();
        sub_1007F4364(v28, v29);
        sub_1000C8A9C();
        sub_1000C8664();
        v30 = sub_10000EDF8();
        v31(v30);
        v20 = v0;
        sub_100023278();
        v23 = v3;
        sub_1007F4464(v15, v3);
        break;
      case 2:
        sub_1007F4610();
        sub_10003A37C();
        v24 = sub_10000EDF8();
        v25(v24);
        v23 = v3;
        *v3 = v44;
        goto LABEL_13;
      case 3:
        sub_1007F45BC();
        sub_10003A37C();
        v26 = sub_10000EDF8();
        v27(v26);
        v23 = v3;
        *v3 = v44;
        goto LABEL_13;
      case 4:
        sub_1007F4568();
        sub_10003A37C();
        v21 = sub_10000EDF8();
        v22(v21);
        v23 = v3;
        *v3 = v44;
        goto LABEL_13;
      case 5:
        sub_1007F4364(&qword_100CDA9A0, type metadata accessor for ModalViewState.MapViewModal);
        sub_1000C8A9C();
        sub_1000C8664();
        v32 = sub_10000EDF8();
        v33(v32);
        sub_100017E28();
        v23 = v3;
        sub_1007F4464(v38, v3);
        sub_10001B350(v3, 0, 1, v41);
        goto LABEL_13;
      case 6:
        sub_1000A7D58();
        sub_1007F4364(v34, v35);
        sub_1000C8A9C();
        sub_1000C8664();
        v36 = sub_10000EDF8();
        v37(v36);
        sub_100075018();
        v23 = v3;
        sub_1007F4464(v39, v3);
LABEL_13:
        v20 = v43;
        break;
      default:
        (*(v40 + 8))(v2, v16);
        v23 = v3;
        v20 = v43;
        break;
    }

    swift_storeEnumTagMultiPayload();
    sub_1007F4464(v23, v42);
  }

  sub_100006F14(v20);
  sub_10000C8F4();
}

void sub_1007F3670()
{
  sub_10000E8AC();
  v45 = v2;
  v4 = sub_1000038D8();
  v43[3] = type metadata accessor for ModalViewState.LocationDetailModal(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000038E4();
  v44 = v6;
  v43[2] = sub_10022C350(&qword_100CA65E0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v43 - v8;
  v43[1] = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000037D8();
  sub_10000CC9C();
  sub_10022C350(&qword_100CDA9C8);
  sub_1000037C4();
  v47 = v15;
  v48 = v16;
  sub_100003828();
  __chkstk_darwin(v17);
  sub_10000C8C8();
  v18 = v1[3];
  sub_1000161C0(v1, v18);
  sub_1007F44C0();
  v46 = v0;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100010C3C();
  v19 = sub_100014268();
  sub_1000BCB40(v19, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v33 = *v3;
      v34 = v3[1];
      LOBYTE(v49) = 2;
      sub_1007F4664();
      sub_1000B0D08();
      v35 = v47;
      v36 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v36)
      {
        LOBYTE(v49) = v33;
        BYTE1(v49) = v34;
        sub_1007F4814();
        sub_1000B0D08();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v24 = sub_100024168();
      v26 = v35;
      break;
    case 2u:
      v29 = *v3;
      LOBYTE(v49) = 3;
      sub_1007F4664();
      sub_1000B0D08();
      sub_1000887A4();
      if (v2)
      {
        goto LABEL_13;
      }

      v49 = v29;
      sub_1007F47C0();
      goto LABEL_12;
    case 3u:
      v30 = *v3;
      LOBYTE(v49) = 4;
      sub_1007F4664();
      sub_1000B0D08();
      sub_1000887A4();
      if (v2)
      {
        goto LABEL_13;
      }

      v49 = v30;
      sub_1007F476C();
LABEL_12:
      sub_1000B0D08();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
LABEL_13:
      v31 = sub_100024168();
      v32(v31, v18);

      goto LABEL_25;
    case 4u:
      sub_1003C9FB0(v3, v9);
      LOBYTE(v49) = 5;
      sub_1007F4664();
      sub_1000B0D08();
      v27 = v47;
      v28 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v28)
      {
        LOBYTE(v49) = 5;
        sub_1007F46B8();
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_1000180EC(v9, &qword_100CA65E0);
      goto LABEL_21;
    case 5u:
      sub_100075018();
      v37 = v44;
      sub_1007F4464(v3, v44);
      LOBYTE(v49) = 6;
      sub_1007F4664();
      sub_1000B0D08();
      v27 = v47;
      v38 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v38)
      {
        LOBYTE(v49) = 6;
        sub_1000A7D58();
        sub_1007F4364(v39, v40);
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10000682C();
      sub_1000E01F8(v37, v41);
LABEL_21:
      v24 = sub_100024168();
      v26 = v27;
      break;
    case 6u:
      LOBYTE(v49) = 0;
      goto LABEL_23;
    case 7u:
      LOBYTE(v49) = 7;
LABEL_23:
      sub_1007F4664();
      sub_1000B0D08();
      v42 = v47;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v24 = sub_100024168();
      v26 = v42;
      break;
    default:
      sub_100023278();
      sub_1007F4464(v3, v13);
      LOBYTE(v49) = 1;
      sub_1007F4664();
      sub_1000B0D08();
      sub_1000887A4();
      if (!v2)
      {
        LOBYTE(v49) = 1;
        sub_100049D84();
        sub_1007F4364(v21, v22);
        sub_1000C8A9C();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      sub_10001CDBC();
      sub_1000E01F8(v13, v23);
      v24 = sub_100024168();
      v26 = v18;
      break;
  }

  v25(v24, v26);
LABEL_25:
  sub_10000C8F4();
}

unint64_t sub_1007F3BDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45088, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007F3C30(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x4D7765695670616DLL;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007F3D14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C45150, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1007F3D60(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      goto LABEL_9;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x655774726F706572;
      break;
    case 5:
      result = 7364973;
      break;
    case 6:
      sub_10008890C();
LABEL_9:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1007F3E78@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3BDC(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1007F3EA8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007F3C30(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007F3EF0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3C28(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1007F3F18(uint64_t a1)
{
  v2 = sub_1007F44C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F3F54(uint64_t a1)
{
  v2 = sub_1007F44C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007F3FB4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1007F3D14(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1007F3FE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1007F3D60(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1007F40F8()
{
  sub_1007F4364(&qword_100CDAA10, type metadata accessor for ModalViewState);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F4240()
{
  sub_1007F4364(&qword_100CDA960, type metadata accessor for ModalViewState.MapViewModal);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F42B0()
{
  sub_1007F4364(&qword_100CDA978, type metadata accessor for ModalViewState.LocationDetailModal);

  return ShortDescribable.description.getter();
}

uint64_t sub_1007F4364(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007F43F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F4464(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 32))(a2, v2);
  return a2;
}

unint64_t sub_1007F44C0()
{
  result = qword_100CDA988;
  if (!qword_100CDA988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA988);
  }

  return result;
}

unint64_t sub_1007F4514()
{
  result = qword_100CDA990;
  if (!qword_100CDA990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA990);
  }

  return result;
}

unint64_t sub_1007F4568()
{
  result = qword_100CDA9A8;
  if (!qword_100CDA9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9A8);
  }

  return result;
}

unint64_t sub_1007F45BC()
{
  result = qword_100CDA9B0;
  if (!qword_100CDA9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9B0);
  }

  return result;
}

unint64_t sub_1007F4610()
{
  result = qword_100CDA9B8;
  if (!qword_100CDA9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9B8);
  }

  return result;
}

unint64_t sub_1007F4664()
{
  result = qword_100CDA9D0;
  if (!qword_100CDA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9D0);
  }

  return result;
}

unint64_t sub_1007F46B8()
{
  result = qword_100CDA9E0;
  if (!qword_100CDA9E0)
  {
    sub_10022E824(&qword_100CA65E0);
    sub_1007F4364(&qword_100CDA9E8, type metadata accessor for ModalViewState.MapViewModal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9E0);
  }

  return result;
}

unint64_t sub_1007F476C()
{
  result = qword_100CDA9F0;
  if (!qword_100CDA9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9F0);
  }

  return result;
}

unint64_t sub_1007F47C0()
{
  result = qword_100CDA9F8;
  if (!qword_100CDA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDA9F8);
  }

  return result;
}

unint64_t sub_1007F4814()
{
  result = qword_100CDAA00;
  if (!qword_100CDAA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA00);
  }

  return result;
}

unint64_t sub_1007F4868()
{
  result = qword_100CDAA60;
  if (!qword_100CDAA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA60);
  }

  return result;
}

unint64_t sub_1007F48BC()
{
  result = qword_100CDAA68;
  if (!qword_100CDAA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA68);
  }

  return result;
}

unint64_t sub_1007F4910()
{
  result = qword_100CDAA70;
  if (!qword_100CDAA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA70);
  }

  return result;
}

unint64_t sub_1007F4964()
{
  result = qword_100CDAA78;
  if (!qword_100CDAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA78);
  }

  return result;
}

unint64_t sub_1007F49B8()
{
  result = qword_100CDAA80;
  if (!qword_100CDAA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA80);
  }

  return result;
}

unint64_t sub_1007F4A0C()
{
  result = qword_100CDAA88;
  if (!qword_100CDAA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA88);
  }

  return result;
}

unint64_t sub_1007F4A60()
{
  result = qword_100CDAA90;
  if (!qword_100CDAA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA90);
  }

  return result;
}

unint64_t sub_1007F4AB4()
{
  result = qword_100CDAA98;
  if (!qword_100CDAA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAA98);
  }

  return result;
}

unint64_t sub_1007F4B08()
{
  result = qword_100CDAAA0;
  if (!qword_100CDAAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAAA0);
  }

  return result;
}

unint64_t sub_1007F4B5C()
{
  result = qword_100CDAB00;
  if (!qword_100CDAB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB00);
  }

  return result;
}

unint64_t sub_1007F4BB0()
{
  result = qword_100CDAB08;
  if (!qword_100CDAB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB08);
  }

  return result;
}

_BYTE *sub_1007F4CA4(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *sub_1007F4D50(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
        break;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ModalViewState.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        break;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1007F4F0C()
{
  result = qword_100CDAB20;
  if (!qword_100CDAB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB20);
  }

  return result;
}

unint64_t sub_1007F4F64()
{
  result = qword_100CDAB28;
  if (!qword_100CDAB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB28);
  }

  return result;
}

unint64_t sub_1007F4FBC()
{
  result = qword_100CDAB30;
  if (!qword_100CDAB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB30);
  }

  return result;
}

unint64_t sub_1007F5014()
{
  result = qword_100CDAB38;
  if (!qword_100CDAB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB38);
  }

  return result;
}

unint64_t sub_1007F506C()
{
  result = qword_100CDAB40;
  if (!qword_100CDAB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB40);
  }

  return result;
}

unint64_t sub_1007F50C4()
{
  result = qword_100CDAB48;
  if (!qword_100CDAB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB48);
  }

  return result;
}

unint64_t sub_1007F511C()
{
  result = qword_100CDAB50;
  if (!qword_100CDAB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB50);
  }

  return result;
}

unint64_t sub_1007F5174()
{
  result = qword_100CDAB58;
  if (!qword_100CDAB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB58);
  }

  return result;
}

unint64_t sub_1007F51CC()
{
  result = qword_100CDAB60;
  if (!qword_100CDAB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB60);
  }

  return result;
}

unint64_t sub_1007F5224()
{
  result = qword_100CDAB68;
  if (!qword_100CDAB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB68);
  }

  return result;
}

unint64_t sub_1007F527C()
{
  result = qword_100CDAB70;
  if (!qword_100CDAB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB70);
  }

  return result;
}

unint64_t sub_1007F52D4()
{
  result = qword_100CDAB78;
  if (!qword_100CDAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB78);
  }

  return result;
}

unint64_t sub_1007F532C()
{
  result = qword_100CDAB80;
  if (!qword_100CDAB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB80);
  }

  return result;
}

unint64_t sub_1007F5384()
{
  result = qword_100CDAB88;
  if (!qword_100CDAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB88);
  }

  return result;
}

unint64_t sub_1007F53DC()
{
  result = qword_100CDAB90;
  if (!qword_100CDAB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB90);
  }

  return result;
}

unint64_t sub_1007F5434()
{
  result = qword_100CDAB98;
  if (!qword_100CDAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAB98);
  }

  return result;
}

unint64_t sub_1007F548C()
{
  result = qword_100CDABA0;
  if (!qword_100CDABA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABA0);
  }

  return result;
}

unint64_t sub_1007F54E4()
{
  result = qword_100CDABA8;
  if (!qword_100CDABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABA8);
  }

  return result;
}

unint64_t sub_1007F553C()
{
  result = qword_100CDABB0;
  if (!qword_100CDABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABB0);
  }

  return result;
}

unint64_t sub_1007F5594()
{
  result = qword_100CDABB8;
  if (!qword_100CDABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABB8);
  }

  return result;
}

unint64_t sub_1007F55EC()
{
  result = qword_100CDABC0;
  if (!qword_100CDABC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABC0);
  }

  return result;
}

unint64_t sub_1007F5644()
{
  result = qword_100CDABC8;
  if (!qword_100CDABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABC8);
  }

  return result;
}

unint64_t sub_1007F569C()
{
  result = qword_100CDABD0;
  if (!qword_100CDABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABD0);
  }

  return result;
}

unint64_t sub_1007F56F4()
{
  result = qword_100CDABD8;
  if (!qword_100CDABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABD8);
  }

  return result;
}

unint64_t sub_1007F574C()
{
  result = qword_100CDABE0;
  if (!qword_100CDABE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABE0);
  }

  return result;
}

unint64_t sub_1007F57A4()
{
  result = qword_100CDABE8;
  if (!qword_100CDABE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABE8);
  }

  return result;
}

unint64_t sub_1007F57FC()
{
  result = qword_100CDABF0;
  if (!qword_100CDABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABF0);
  }

  return result;
}

unint64_t sub_1007F5854()
{
  result = qword_100CDABF8;
  if (!qword_100CDABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDABF8);
  }

  return result;
}

unint64_t sub_1007F58AC()
{
  result = qword_100CDAC00;
  if (!qword_100CDAC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC00);
  }

  return result;
}

unint64_t sub_1007F5904()
{
  result = qword_100CDAC08;
  if (!qword_100CDAC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC08);
  }

  return result;
}

unint64_t sub_1007F595C()
{
  result = qword_100CDAC10;
  if (!qword_100CDAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC10);
  }

  return result;
}

unint64_t sub_1007F59B4()
{
  result = qword_100CDAC18;
  if (!qword_100CDAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC18);
  }

  return result;
}

unint64_t sub_1007F5A0C()
{
  result = qword_100CDAC20;
  if (!qword_100CDAC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC20);
  }

  return result;
}

unint64_t sub_1007F5A64()
{
  result = qword_100CDAC28;
  if (!qword_100CDAC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC28);
  }

  return result;
}

unint64_t sub_1007F5ABC()
{
  result = qword_100CDAC30;
  if (!qword_100CDAC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC30);
  }

  return result;
}

unint64_t sub_1007F5B14()
{
  result = qword_100CDAC38;
  if (!qword_100CDAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC38);
  }

  return result;
}

unint64_t sub_1007F5B6C()
{
  result = qword_100CDAC40;
  if (!qword_100CDAC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC40);
  }

  return result;
}

unint64_t sub_1007F5BC0()
{
  result = qword_100CDAC48;
  if (!qword_100CDAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAC48);
  }

  return result;
}

void sub_1007F5C24()
{
  if (!qword_100CDACD0)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_100CDACD0);
    }
  }
}

uint64_t sub_1007F5C90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x77656976657270 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1007F5DA0(char a1)
{
  if (!a1)
  {
    return 0x746E6572727563;
  }

  if (a1 == 1)
  {
    return 0x6E6F697461636F6CLL;
  }

  return 0x77656976657270;
}

uint64_t sub_1007F5DF8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100ABB030 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1007F5EC0(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1007F5EF0(void *a1)
{
  sub_10022C350(&qword_100CDAD40);
  sub_1000037C4();
  v63 = v3;
  v64 = v2;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v60 = v5;
  type metadata accessor for Location();
  sub_1000037C4();
  v61 = v7;
  v62 = v6;
  __chkstk_darwin(v6);
  sub_1000037D8();
  v65 = v9 - v8;
  v59 = sub_10022C350(&qword_100CDAD48);
  sub_1000037C4();
  v56 = v10;
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v66 = v12;
  type metadata accessor for LocationModel();
  sub_1000037C4();
  v57 = v14;
  v58 = v13;
  __chkstk_darwin(v13);
  sub_1000037D8();
  v17 = v16 - v15;
  v18 = sub_10022C350(&qword_100CDAD50);
  sub_1000037C4();
  v55 = v19;
  sub_100003828();
  __chkstk_darwin(v20);
  v22 = &v55 - v21;
  type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = v25 - v24;
  sub_10022C350(&qword_100CDAD58);
  sub_1000037C4();
  v68 = v28;
  v69 = v27;
  sub_100003828();
  __chkstk_darwin(v29);
  v30 = a1[3];
  sub_1000161C0(a1, v30);
  sub_1007F72EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1007F74A0(v67, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v71 = 0;
      sub_1007F744C();
      sub_10006974C();
      (*(v55 + 8))(v22, v18);
      v50 = sub_100019F78();
      return v51(v50, v30);
    }

    LODWORD(v67) = *(v26 + *(sub_10022C350(&unk_100CE2F60) + 48));
    v33 = v61;
    v32 = v62;
    v34 = v65;
    (*(v61 + 32))(v65, v26, v62);
    v75 = 2;
    sub_1007F7340();
    v35 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v74 = 0;
    sub_100010C54();
    sub_1007F7504(v36, v37);
    v38 = v70;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v38)
    {
      v39 = sub_100013CAC();
      v40(v39);
      (*(v33 + 8))(v34, v32);
    }

    else
    {
      v73 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      v53 = sub_100013CAC();
      v54(v53);
      (*(v33 + 8))(v65, v32);
    }

    v47 = sub_100019F78();
    v49 = v35;
  }

  else
  {
    v41 = v56;
    v42 = v57;
    v43 = v58;
    (*(v57 + 32))(v17, v26, v58);
    v72 = 1;
    sub_1007F73F8();
    sub_10006974C();
    sub_100006844();
    sub_1007F7504(v44, v45);
    v46 = v59;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v41 + 8))(v66, v46);
    (*(v42 + 8))(v17, v43);
    v47 = sub_100019F78();
    v49 = v30;
  }

  return v48(v47, v49);
}

uint64_t sub_1007F64D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v77 = sub_10022C350(&qword_100CDAD00);
  sub_1000037C4();
  v72 = v3;
  sub_100003828();
  __chkstk_darwin(v4);
  sub_1000039BC();
  v82 = v5;
  sub_10022C350(&qword_100CDAD08);
  sub_1000037C4();
  v75 = v6;
  v76 = v7;
  sub_100003828();
  __chkstk_darwin(v8);
  sub_1000039BC();
  v81 = v9;
  sub_10022C350(&qword_100CDAD10);
  sub_1000037C4();
  v73 = v11;
  v74 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  sub_1000039BC();
  v78 = v13;
  sub_10022C350(&qword_100CDAD18);
  sub_1000037C4();
  v80 = v14;
  sub_100003828();
  __chkstk_darwin(v15);
  v17 = v69 - v16;
  v18 = type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v19);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v69 - v23;
  __chkstk_darwin(v25);
  v27 = v69 - v26;
  v28 = a1[3];
  v83 = a1;
  sub_1000161C0(a1, v28);
  sub_1007F72EC();
  v29 = v84;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_11;
  }

  v70 = v24;
  v71 = v21;
  v84 = v27;
  v30 = KeyedDecodingContainer.allKeys.getter();
  result = sub_100618E80(v30, 0);
  if (v33 == v34 >> 1)
  {
    v35 = v18;
LABEL_10:
    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    sub_10022C350(&qword_100CA7610);
    *v48 = v35;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, enum case for DecodingError.typeMismatch(_:), v46);
    swift_willThrow();
    swift_unknownObjectRelease();
    v49 = sub_100008FA4();
    v50(v49);
LABEL_11:
    v51 = v83;
    return sub_100006F14(v51);
  }

  v69[2] = v17;
  if (v33 < (v34 >> 1))
  {
    v36 = *(v32 + v33);
    v37 = sub_100618E7C(v33 + 1);
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v69[1] = v37;
    if (v39 != v41 >> 1)
    {
      v35 = v18;
      goto LABEL_10;
    }

    if (v36)
    {
      if (v36 == 1)
      {
        v82 = v18;
        v86 = 1;
        sub_1007F73F8();
        sub_100075030();
        v42 = v79;
        type metadata accessor for LocationModel();
        sub_100006844();
        sub_1007F7504(v43, v44);
        v45 = v70;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        swift_unknownObjectRelease();
        v58 = sub_100016F84();
        v59(v58);
        v60 = sub_100008FA4();
        v61(v60);
        swift_storeEnumTagMultiPayload();
        v62 = v84;
        sub_1007F7394(v45, v84);
        v63 = v83;
LABEL_16:
        sub_1007F7394(v62, v42);
        v51 = v63;
        return sub_100006F14(v51);
      }

      v89 = 2;
      sub_1007F7340();
      sub_100075030();
      type metadata accessor for Location();
      v88 = 0;
      sub_100010C54();
      sub_1007F7504(v55, v56);
      v57 = v71;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v87 = 1;
      LODWORD(v81) = KeyedDecodingContainer.decode(_:forKey:)();
      swift_unknownObjectRelease();
      v64 = *(sub_10022C350(&unk_100CE2F60) + 48);
      v65 = sub_100004B88();
      v66(v65);
      v67 = sub_100023290();
      v68(v67);
      *(v57 + v64) = v81 & 1;
      swift_storeEnumTagMultiPayload();
      v62 = v84;
      sub_1007F7394(v57, v84);
    }

    else
    {
      v85 = 0;
      sub_1007F744C();
      v52 = v78;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v73 + 8))(v52, v74);
      v53 = sub_10004EB08();
      v54(v53);
      v62 = v84;
      swift_storeEnumTagMultiPayload();
    }

    v63 = v83;
    v42 = v79;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007F6CA0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Location();
  sub_1000037C4();
  v39 = v5;
  v40 = v4;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v41 = v10;
  __chkstk_darwin(v11);
  sub_1000037D8();
  v14 = v13 - v12;
  type metadata accessor for NotificationLocation();
  sub_1000037E8();
  __chkstk_darwin(v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  sub_10022C350(&qword_100CDAD60);
  sub_100003828();
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v25 = &v38 + *(v24 + 56) - v22;
  sub_1007F74A0(a1, &v38 - v22);
  sub_1007F74A0(a2, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v35 = v41;
    sub_1007F74A0(v23, v20);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v35 + 32))(v14, v25, v9);
      v34 = static LocationModel.== infix(_:_:)();
      v37 = *(v35 + 8);
      v37(v14, v9);
      v37(v20, v9);
      sub_1007F75B4(v23);
      return v34 & 1;
    }

    (*(v35 + 8))(v20, v9);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1007F75B4(v23);
      v34 = 1;
      return v34 & 1;
    }

    goto LABEL_11;
  }

  sub_1007F74A0(v23, v17);
  v27 = *(sub_10022C350(&unk_100CE2F60) + 48);
  v28 = v17[v27];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v39 + 8))(v17, v40);
LABEL_11:
    sub_1007F754C(v23);
LABEL_12:
    v34 = 0;
    return v34 & 1;
  }

  v29 = v25[v27];
  v31 = v39;
  v30 = v40;
  (*(v39 + 32))(v8, v25, v40);
  v32 = static Location.== infix(_:_:)();
  v33 = *(v31 + 8);
  v33(v8, v30);
  v33(v17, v30);
  if ((v32 & 1) == 0)
  {
    sub_1007F75B4(v23);
    goto LABEL_12;
  }

  sub_1007F75B4(v23);
  v34 = v28 ^ v29 ^ 1;
  return v34 & 1;
}

uint64_t sub_1007F7050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F7078(uint64_t a1)
{
  v2 = sub_1007F72EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F70B4(uint64_t a1)
{
  v2 = sub_1007F72EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F70F0(uint64_t a1)
{
  v2 = sub_1007F744C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F712C(uint64_t a1)
{
  v2 = sub_1007F744C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F7168(uint64_t a1)
{
  v2 = sub_1007F73F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F71A4(uint64_t a1)
{
  v2 = sub_1007F73F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F71E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F5DF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F7210(uint64_t a1)
{
  v2 = sub_1007F7340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F724C(uint64_t a1)
{
  v2 = sub_1007F7340();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1007F72EC()
{
  result = qword_100CDAD20;
  if (!qword_100CDAD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD20);
  }

  return result;
}

unint64_t sub_1007F7340()
{
  result = qword_100CDAD28;
  if (!qword_100CDAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD28);
  }

  return result;
}

uint64_t sub_1007F7394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationLocation();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1007F73F8()
{
  result = qword_100CDAD30;
  if (!qword_100CDAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD30);
  }

  return result;
}

unint64_t sub_1007F744C()
{
  result = qword_100CDAD38;
  if (!qword_100CDAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD38);
  }

  return result;
}

uint64_t sub_1007F74A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationLocation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007F7504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007F754C(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CDAD60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007F75B4(uint64_t a1)
{
  v2 = type metadata accessor for NotificationLocation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for NotificationLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

_BYTE *storeEnumTagSinglePayload for NotificationLocation.LocationCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NotificationLocation.PreviewCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1007F7888()
{
  result = qword_100CDAD68;
  if (!qword_100CDAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD68);
  }

  return result;
}

unint64_t sub_1007F78E0()
{
  result = qword_100CDAD70;
  if (!qword_100CDAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD70);
  }

  return result;
}

unint64_t sub_1007F7938()
{
  result = qword_100CDAD78;
  if (!qword_100CDAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD78);
  }

  return result;
}

unint64_t sub_1007F7990()
{
  result = qword_100CDAD80;
  if (!qword_100CDAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD80);
  }

  return result;
}

unint64_t sub_1007F79E8()
{
  result = qword_100CDAD88;
  if (!qword_100CDAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD88);
  }

  return result;
}

unint64_t sub_1007F7A40()
{
  result = qword_100CDAD90;
  if (!qword_100CDAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD90);
  }

  return result;
}

unint64_t sub_1007F7A98()
{
  result = qword_100CDAD98;
  if (!qword_100CDAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAD98);
  }

  return result;
}

unint64_t sub_1007F7AF0()
{
  result = qword_100CDADA0;
  if (!qword_100CDADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADA0);
  }

  return result;
}

unint64_t sub_1007F7B48()
{
  result = qword_100CDADA8;
  if (!qword_100CDADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADA8);
  }

  return result;
}

unint64_t sub_1007F7BA0()
{
  result = qword_100CDADB0;
  if (!qword_100CDADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADB0);
  }

  return result;
}

unint64_t sub_1007F7BF8()
{
  result = qword_100CDADB8;
  if (!qword_100CDADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADB8);
  }

  return result;
}

uint64_t sub_1007F7C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for MainActor();
  v3[5] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[6] = v5;
  v3[7] = v4;

  return _swift_task_switch(sub_1007F7CF8, v5, v4);
}

void sub_1007F7CF8()
{
  if (qword_100CA2788 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000703C(v1, qword_100D90CF0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Repeat instruction", v4, 2u);
  }

  v5 = v0[3];

  if (v5 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    if (v6)
    {
      v7 = v0[4];
      v8 = v7[2];
      v0[8] = v8;
      v0[10] = 0;
      v9 = 1;
      while (!v8)
      {
        --v9;
        if (v6 + v9 == 1)
        {
          v0[9] = -v9;
          goto LABEL_11;
        }
      }

      v0[9] = 0;
      sub_1000161C0(v7 + 4, v7[7]);
      sub_10001C878();
      v11 = swift_task_alloc();
      v0[11] = v11;
      *v11 = v0;
      v12 = sub_10001F8B8(v11);

      v13(v12);
    }

    else
    {
LABEL_11:

      sub_100003B14();

      v10();
    }
  }
}

uint64_t sub_1007F7F18()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1007F81C0;
  }

  else
  {
    v5 = sub_1007F8054;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1007F8054()
{
  v1 = v0[10] + 1;
  v2 = v0[8];
  while (v1 == v2)
  {
    v3 = v0[9] + 1;
    if (v3 == v0[3])
    {
      v0[10] = v2;

      sub_100003B14();

      return v8();
    }

    v1 = 0;
    v0[9] = v3;
  }

  v0[10] = v1;
  sub_1000161C0((v0[4] + 40 * v1 + 32), *(v0[4] + 40 * v1 + 56));
  sub_10001C878();
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v5 = sub_10001F8B8();

  return v6(v5);
}

uint64_t sub_1007F81C0()
{

  sub_100003B14();

  return v0();
}

uint64_t sub_1007F8220(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1002F5240;

  return sub_1007F7C5C(a1, v5, v4);
}

NSObject *sub_1007F82D8(uint64_t a1, uint64_t a2)
{
  v48 = a2;
  v3 = sub_10022C350(&qword_100CAB938);
  sub_1000037C4();
  v49 = v4;
  __chkstk_darwin(v5);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v51 = &v45 - v8;
  __chkstk_darwin(v9);
  v52 = &v45 - v10;
  __chkstk_darwin(v11);
  v13 = &v45 - v12;
  v14 = sub_10022C350(&qword_100CAC1B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v45 - v18;
  v20 = type metadata accessor for ConditionUnits();
  sub_1000037C4();
  v22 = v21;
  __chkstk_darwin(v23);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PastDataComparisonTextContext();
  (*(v22 + 16))(v25, a1 + v26[9], v20);
  sub_1004075F8(a1 + v26[12], v19);
  v27 = type metadata accessor for ExtremaResult();
  if (sub_100024D10(v19, 1, v27) != 1)
  {
    v46 = v3;
    v47 = v20;
    v28 = v13;
    ExtremaResult.maxValue.getter();
    v29 = *(*(v27 - 8) + 8);
    v29(v19, v27);
    sub_1004075F8(a1 + v26[10], v16);
    if (sub_100024D10(v16, 1, v27) != 1)
    {
      ExtremaResult.maxValue.getter();
      v29(v16, v27);
      ConditionUnits.visibility.getter();
      sub_1002ED0CC();
      v34 = v28;
      Measurement.init(value:unit:)();
      ConditionUnits.visibility.getter();
      Measurement.init(value:unit:)();
      v35 = v51;
      VisibilityFormatter.localizedMeasurement(for:useSmallUnits:)();
      v36 = v50;
      VisibilityFormatter.localizedMeasurement(for:useSmallUnits:)();
      sub_10049EA9C();
      v37 = v46;
      v31 = v46;
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      v45 = v34;
      if (v38)
      {
        LocalizedStringKey.init(stringLiteral:)();
        sub_10001C138();
        Text.init(_:tableName:bundle:comment:)();
        sub_10001F8F0();
        v39 = v36;
        v40 = v35;
        v41 = *(v49 + 8);
        v41(v39, v37);
        v42 = v40;
      }

      else
      {
        static Measurement.< infix<A, B>(_:_:)();
        v43 = (v49 + 8);
        LocalizedStringKey.init(stringLiteral:)();
        sub_10001C138();
        Text.init(_:tableName:bundle:comment:)();
        sub_10001F8F0();
        v41 = *v43;
        (*v43)(v36, v37);
        v42 = v51;
      }

      v41(v42, v37);
      v41(v52, v37);
      v41(v45, v37);
      v20 = v47;
      goto LABEL_13;
    }

    v19 = v16;
    v20 = v47;
  }

  sub_100407668(v19);
  if (qword_100CA2700 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_10000703C(v30, qword_100D90B68);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Missing extrema values for building feels like comparison text", v33, 2u);
  }

  LocalizedStringKey.init(stringLiteral:)();
  sub_10001C138();
  Text.init(_:tableName:bundle:comment:)();
  sub_10001F8F0();
LABEL_13:
  (*(v22 + 8))(v25, v20);
  return v31;
}

void *sub_1007F8924()
{
  v0 = type metadata accessor for TemperatureScaleConfiguration.Gradient();
  __chkstk_darwin(v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  static TemperatureScaleConfiguration.Gradient.default.getter();
  result = sub_100100224(v2);
  qword_100D90E18 = result;
  return result;
}

uint64_t sub_1007F89A0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F7453726F6C6F63 && a2 == 0xEA00000000007370)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1007F8A40(void *a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CDADE8);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10000E890(a1);
  sub_1007F99F8();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10022C350(&qword_100CDADD0);
  sub_1007F9AA0(&qword_100CDADF0, sub_1007F9B18);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1007F8BB0(void *a1)
{
  v4 = sub_10022C350(&qword_100CDADC0);
  sub_1000037C4();
  v6 = v5;
  sub_100003828();
  __chkstk_darwin(v7);
  v9 = v11 - v8;
  sub_10000E890(a1);
  sub_1007F99F8();
  sub_100003CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100006F14(a1);
  }

  else
  {
    sub_10022C350(&qword_100CDADD0);
    sub_1007F9AA0(&qword_100CDADD8, sub_1007F9A4C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v4);
    v1 = v11[1];
    sub_100006F14(a1);
  }

  return v1;
}

uint64_t sub_1007F8D48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6579570 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E65657267 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702194274 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6168706C61 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1007F8E98(char a1)
{
  result = 6579570;
  switch(a1)
  {
    case 1:
      result = 0x6E65657267;
      break;
    case 2:
      result = 1702194274;
      break;
    case 3:
      result = 0x6168706C61;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1007F8F04(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a1 == a5;
  if (a2 != a6)
  {
    v8 = 0;
  }

  if (a3 != a7)
  {
    v8 = 0;
  }

  return a4 == a8 && v8;
}

uint64_t sub_1007F8F28(void *a1)
{
  v3 = sub_10022C350(&qword_100CDAE50);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v10 - v7;
  sub_1000161C0(a1, a1[3]);
  sub_1007F9E7C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  sub_100010C6C();
  if (!v1)
  {
    v13 = 1;
    sub_100010C6C();
    v12 = 2;
    sub_100010C6C();
    v11 = 3;
    sub_100010C6C();
  }

  return (*(v5 + 8))(v8, v3);
}

double sub_1007F90B4(void *a1)
{
  v2 = sub_10022C350(&qword_100CDAE40);
  sub_1000037C4();
  v4 = v3;
  sub_100003828();
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  sub_10000E890(a1);
  sub_1007F9E7C();
  sub_100003CC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11[15] = 0;
  sub_10001CDD4();
  v9 = v8;
  v11[14] = 1;
  sub_10001CDD4();
  v11[13] = 2;
  sub_10001CDD4();
  v11[12] = 3;
  sub_10001CDD4();
  (*(v4 + 8))(v7, v2);
  sub_100006F14(a1);
  return v9;
}

uint64_t sub_1007F9274(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6C6F63 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1007F9338(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x726F6C6F63;
  }
}

BOOL sub_1007F936C(double *a1, double *a2)
{
  if (*a1 == *a2 && (a1[1] == a2[1] ? (v2 = a1[2] == a2[2]) : (v2 = 0), v2 ? (v3 = a1[3] == a2[3]) : (v3 = 0), v3))
  {
    return a1[4] == a2[4];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F93B8(void *a1)
{
  v3 = v1;
  v5 = sub_10022C350(&qword_100CDAE30);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v13[-v9];
  sub_10000E890(a1);
  sub_1007F9D80();
  sub_100003CC4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v14 = *v3;
  v15 = v11;
  v13[15] = 0;
  sub_1007F9E28();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1007F9518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10022C350(&qword_100CDAE18);
  sub_1000037C4();
  v7 = v6;
  sub_100003828();
  __chkstk_darwin(v8);
  v10 = &v15 - v9;
  sub_1000161C0(a1, a1[3]);
  sub_1007F9D80();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100006F14(a1);
  }

  v17 = 0;
  sub_1007F9DD4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v19;
  v16 = v18;
  LOBYTE(v18) = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  (*(v7 + 8))(v10, v5);
  result = sub_100006F14(a1);
  v14 = v15;
  *a2 = v16;
  *(a2 + 16) = v14;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_1007F96E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F89A0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1007F9714(uint64_t a1)
{
  v2 = sub_1007F99F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F9750(uint64_t a1)
{
  v2 = sub_1007F99F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1007F978C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1007F8BB0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007F97E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F8D48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F9810(uint64_t a1)
{
  v2 = sub_1007F9E7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F984C(uint64_t a1)
{
  v2 = sub_1007F9E7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1007F9888(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1007F90B4(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }
}

uint64_t sub_1007F98F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1007F9274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1007F991C(uint64_t a1)
{
  v2 = sub_1007F9D80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1007F9958(uint64_t a1)
{
  v2 = sub_1007F9D80();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1007F9994@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1007F9518(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1007F99F8()
{
  result = qword_100CDADC8;
  if (!qword_100CDADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADC8);
  }

  return result;
}

unint64_t sub_1007F9A4C()
{
  result = qword_100CDADE0;
  if (!qword_100CDADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADE0);
  }

  return result;
}

uint64_t sub_1007F9AA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10022E824(&qword_100CDADD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007F9B18()
{
  result = qword_100CDADF8;
  if (!qword_100CDADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDADF8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureGradient.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1007F9C24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1007F9C44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1007F9C7C()
{
  result = qword_100CDAE00;
  if (!qword_100CDAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE00);
  }

  return result;
}

unint64_t sub_1007F9CD4()
{
  result = qword_100CDAE08;
  if (!qword_100CDAE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE08);
  }

  return result;
}

unint64_t sub_1007F9D2C()
{
  result = qword_100CDAE10;
  if (!qword_100CDAE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE10);
  }

  return result;
}

unint64_t sub_1007F9D80()
{
  result = qword_100CDAE20;
  if (!qword_100CDAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE20);
  }

  return result;
}

unint64_t sub_1007F9DD4()
{
  result = qword_100CDAE28;
  if (!qword_100CDAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE28);
  }

  return result;
}

unint64_t sub_1007F9E28()
{
  result = qword_100CDAE38;
  if (!qword_100CDAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE38);
  }

  return result;
}

unint64_t sub_1007F9E7C()
{
  result = qword_100CDAE48;
  if (!qword_100CDAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE48);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureGradientColor.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        break;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TemperatureGradientColorStop.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_1007FA08C()
{
  result = qword_100CDAE58;
  if (!qword_100CDAE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE58);
  }

  return result;
}

unint64_t sub_1007FA0E4()
{
  result = qword_100CDAE60;
  if (!qword_100CDAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE60);
  }

  return result;
}

unint64_t sub_1007FA13C()
{
  result = qword_100CDAE68;
  if (!qword_100CDAE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE68);
  }

  return result;
}

unint64_t sub_1007FA194()
{
  result = qword_100CDAE70;
  if (!qword_100CDAE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE70);
  }

  return result;
}

unint64_t sub_1007FA1EC()
{
  result = qword_100CDAE78;
  if (!qword_100CDAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE78);
  }

  return result;
}

unint64_t sub_1007FA244()
{
  result = qword_100CDAE80;
  if (!qword_100CDAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CDAE80);
  }

  return result;
}

uint64_t sub_1007FA298(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (a2)
      {
        if (qword_100CA2858 == -1)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    else if (a2)
    {
      if (qword_100CA2868 != -1)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    if (qword_100CA2860 != -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      if (qword_100CA2850 == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_18;
    }

    if (qword_100CA2848 != -1)
    {
LABEL_18:
      swift_once();
    }
  }

LABEL_15:
}

uint64_t sub_1007FA404(char a1, char a2, uint64_t a3)
{
  v79 = type metadata accessor for TipPriorityQueue.GridEntry();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  v76 = &v72 - v10;
  v11 = sub_10022C350(&qword_100CA5008);
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  v14 = &v72 - v13;
  v15 = type metadata accessor for LocationComponentViewModel();
  v16 = sub_100003810(v15);
  __chkstk_darwin(v16);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v17);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v18);
  v20 = &v72 - v19;
  __chkstk_darwin(v21);
  sub_100013628();
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  v28 = sub_10022C350(&qword_100CAC7F8);
  v29 = sub_100003810(v28);
  __chkstk_darwin(v29);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v31);
  v33 = &v72 - v32;
  __chkstk_darwin(v34);
  v36 = &v72 - v35;
  v37 = sub_1007FA298(a1, a2);
  v38 = OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a3 + v38, v14, &qword_100CA5008);
  v39 = type metadata accessor for LocationComponentContainerViewModel();
  if (sub_100024D10(v14, 1, v39) == 1)
  {
    sub_1000180EC(v14, &qword_100CA5008);
  }

  else
  {
    sub_10001BD64();
    sub_10031694C(&v14[v40], v24, v41);
    sub_1003169AC(v14, type metadata accessor for LocationComponentContainerViewModel);
    sub_100011474();
    sub_1001B6FB0(v24, v27, v42);
    sub_100566A5C(v37, v81);
    if ((v82 & 1) == 0)
    {
      sub_100011474();
      sub_1001B6FB0(v27, v33, v45);
      v43 = 0;
      v44 = v79;
      v46 = &v33[*(v79 + 20)];
      v47 = v81[1];
      *v46 = v81[0];
      *(v46 + 1) = v47;
      goto LABEL_7;
    }

    sub_1003169AC(v27, type metadata accessor for LocationComponentViewModel);
  }

  v43 = 1;
  v44 = v79;
LABEL_7:
  sub_10001B350(v33, v43, 1, v44);
  sub_1003168DC(v33, v36);
  sub_10031694C(a3 + *(v39 + 20) + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_airQuality, v3, type metadata accessor for LocationComponentViewModel);
  sub_100566A40(v37, v83);
  sub_100924AFC(v3, v83, v80);
  sub_10031694C(*(a3 + 16) + *(v39 + 20) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v20, type metadata accessor for LocationComponentViewModel);
  sub_100566A94(v37, v84);
  v48 = v74;
  if (v85 & 1) != 0 || (sub_100011474(), v49 = v76, sub_1001B6FB0(v20, v76, v50), v51 = (v49 + *(v44 + 20)), v52 = v84[1], *v51 = v84[0], v51[1] = v52, sub_100035AD0(v36, v48, &qword_100CAC7F8), sub_10001BD64(), v55 = v73, sub_10031694C(v53 + v54, v73, v56), sub_100566AB0(v37, v86), v57 = v77, (v87))
  {
    sub_100003E3C();
  }

  else
  {
    sub_100011474();
    sub_1001B6FB0(v55, v57, v58);
    v59 = (v57 + *(v44 + 20));
    v60 = v86[1];
    *v59 = v86[0];
    v59[1] = v60;
    sub_10001BD64();
    v63 = v75;
    sub_10031694C(v61 + v62, v75, v64);
    sub_100566AE8(v37, v88);
    if ((v89 & 1) == 0)
    {

      sub_100011474();
      v65 = v63;
      v66 = v78;
      sub_1001B6FB0(v65, v78, v67);
      v68 = (v66 + *(v44 + 20));
      v69 = v88[1];
      *v68 = v88[0];
      v68[1] = v69;
      v70 = sub_100924C14(v80, v49, v48, v57, v66);
      sub_1000180EC(v36, &qword_100CAC7F8);
      return v70;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1007FAA88(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CA5008);
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  v5 = &v116 - v4;
  v6 = type metadata accessor for LocationComponentContainerViewModel();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_map;
  swift_beginAccess();
  sub_100035AD0(a1 + v10, v5, &qword_100CA5008);
  v11 = sub_100024D10(v5, 1, v6);
  v121 = a1;
  if (v11 == 1)
  {
    sub_1000180EC(v5, &qword_100CA5008);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A41BA0;
    sub_10022C350(&qword_100CAC7F0);
    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    v15 = *(v7 + 80);
    v16 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v16 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v17, v16 + v13, v18);
    *(v12 + 32) = sub_1001B38A0(v16);
    *(v12 + 40) = v19;
    *(v12 + 48) = v20;
    v21 = sub_100013600();
    sub_100003E18(v21);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_newsArticle, v21 + v13, v7);
    *(v12 + 56) = sub_1001B38A0(v21);
    *(v12 + 64) = v22;
    *(v12 + 72) = v23;
    v24 = sub_100013600();
    sub_100003E18(v24);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v24 + v13, v7);
    *(v12 + 80) = sub_1001B38A0(v24);
    *(v12 + 88) = v25;
    *(v12 + 96) = v26;
    v27 = sub_100013600();
    sub_100003E18(v27);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v27 + v13, v7);
    *(v12 + 104) = sub_1001B38A0(v27);
    *(v12 + 112) = v28;
    *(v12 + 120) = v29;
    v118 = v13 + 2 * v14;
    v119 = v14;
    v30 = v14;
    v31 = swift_allocObject();
    v122 = xmmword_100A2D320;
    *(v31 + 16) = xmmword_100A2D320;
    v32 = a1;
    v33 = *(a1 + 16);
    v34 = v32;
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    sub_10031694C(v33 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v31 + v13 + v30, v7);
    *(v12 + 128) = sub_1001B38A0(v31);
    *(v12 + 136) = v35;
    *(v12 + 144) = v36;
    v120 = v15;
    v37 = swift_allocObject();
    sub_1000056EC(v37);
    v39 = v38 + v13;
    v40 = *(v34 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v40 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v39 + v119, v7);
    *(v12 + 152) = sub_1001B38A0(v31);
    *(v12 + 160) = v41;
    *(v12 + 168) = v42;
    v43 = swift_allocObject();
    sub_1000056EC(v43);
    v45 = v44 + v13;
    v46 = v121;
    v47 = *(v121 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v48 = v119;
    sub_10031694C(v47 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v45 + v119, v7);
    *(v12 + 176) = sub_1001B38A0(v31);
    *(v12 + 184) = v49;
    *(v12 + 192) = v50;
    v51 = sub_10000C998();
    sub_1000056EC(v51);
    v53 = v52 + v13;
    v54 = *(v46 + 16);
    sub_1000167BC(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    v55 = v53 + v48;
    v56 = v48;
    sub_10031694C(v54 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v55, v7);
    *(v12 + 200) = sub_1001B38A0(v31);
    *(v12 + 208) = v57;
    *(v12 + 216) = v58;
    v59 = sub_10000C998();
    sub_100003E18(v59);
    v61 = v60 + v13;
    v62 = *(v46 + 16);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v60 + v13, v7);
    sub_10031694C(v62 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v61 + v56, v7);
    *(v12 + 224) = sub_1001B38A0(v59);
    *(v12 + 232) = v63;
    *(v12 + 240) = v64;
  }

  else
  {
    sub_1001B6FB0(v5, v9, type metadata accessor for LocationComponentContainerViewModel);
    sub_10022C350(&qword_100CAC7E8);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100A30470;
    v65 = sub_10022C350(&qword_100CAC7F0);
    v66 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v67 = *(v7 + 72);
    v68 = *(v7 + 80);
    v69 = v65;
    v70 = swift_allocObject();
    v122 = xmmword_100A2C3F0;
    *(v70 + 16) = xmmword_100A2C3F0;
    sub_100003E24();
    sub_10031694C(a1 + v71, v70 + v66, v72);
    *(v12 + 32) = sub_1001B38A0(v70);
    *(v12 + 40) = v73;
    *(v12 + 48) = v74;
    sub_100016B54();
    v75 = swift_allocObject();
    sub_1000056EC(v75);
    sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather22ElevatedAqiNewsContent8_Storage_newsArticle, v70 + v66, v7);
    *(v12 + 56) = sub_1001B38A0(v70);
    *(v12 + 64) = v76;
    *(v12 + 72) = v77;
    sub_100016B54();
    v78 = swift_allocObject();
    sub_1000056EC(v78);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v70 + v66, v7);
    *(v12 + 80) = sub_1001B38A0(v70);
    *(v12 + 88) = v79;
    *(v12 + 96) = v80;
    sub_100016B54();
    v81 = swift_allocObject();
    sub_1000056EC(v81);
    sub_10031694C(*(a1 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v70 + v66, v7);
    *(v12 + 104) = sub_1001B38A0(v70);
    *(v12 + 112) = v82;
    *(v12 + 120) = v83;
    sub_100016B54();
    v120 = v69;
    v84 = swift_allocObject();
    sub_1000056EC(v84);
    sub_10031694C(v9, v85 + v66, v7);
    *(v12 + 128) = sub_1001B38A0(v70);
    *(v12 + 136) = v86;
    *(v12 + 144) = v87;
    v88 = v67;
    v119 = v68;
    v89 = v66 + 2 * v67;
    v90 = swift_allocObject();
    v116 = xmmword_100A2D320;
    *(v90 + 16) = xmmword_100A2D320;
    *&v122 = v9;
    v91 = *(a1 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex);
    v117 = v88;
    sub_10031694C(v91 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v90 + v66 + v88, v7);
    *(v12 + 152) = sub_1001B38A0(v90);
    *(v12 + 160) = v92;
    *(v12 + 168) = v93;
    v118 = v89;
    v94 = swift_allocObject();
    *(v94 + 16) = v116;
    v95 = v121;
    v96 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind);
    sub_10031694C(v96 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v94 + v66 + v88, v7);
    *(v12 + 176) = sub_1001B38A0(v94);
    *(v12 + 184) = v97;
    *(v12 + 192) = v98;
    v99 = swift_allocObject();
    *(v99 + 16) = 2;
    *(v99 + 24) = 4;
    v100 = *(v95 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike);
    v101 = v117;
    sub_10031694C(v100 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v99 + v66 + v117, v7);
    *(v12 + 200) = sub_1001B38A0(v99);
    *(v12 + 208) = v102;
    *(v12 + 216) = v103;
    v104 = swift_allocObject();
    v105 = sub_100017A70(v104) + v66;
    v106 = v121;
    v107 = *(v121 + 16);
    sub_1000135E4(OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility);
    sub_10031694C(v107 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v105 + v101, v7);
    *(v12 + 224) = sub_1001B38A0(v104);
    *(v12 + 232) = v108;
    *(v12 + 240) = v109;
    v110 = swift_allocObject();
    v111 = sub_100017A70(v110) + v66;
    v112 = *(v106 + 16);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v111, v7);
    sub_10031694C(v112 + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v111 + v101, v7);
    *(v12 + 248) = sub_1001B38A0(v110);
    *(v12 + 256) = v113;
    *(v12 + 264) = v114;
    sub_1003169AC(v122, v7);
  }

  return v12;
}

void sub_1007FB348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BBF0;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BBA0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC00;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBD0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC00;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BB70;
  v16[1] = xmmword_100A41B80;
  v15[0] = xmmword_100A3BBB0;
  v15[1] = xmmword_100A3BBF0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BBC0;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BC10;
  v11[0] = xmmword_100A2C3F0;
  v11[1] = xmmword_100A3BC20;
  v33 = v12;
  v34 = v11;
  v10[0] = xmmword_100A3BBB0;
  v10[1] = xmmword_100A3BC20;
  v9[0] = xmmword_100A3BBB0;
  v9[1] = xmmword_100A3BBC0;
  v35 = v10;
  v36 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 0);
  qword_100D90E20 = v8;
}

void sub_1007FB460()
{
  v22[0] = xmmword_100A3BB70;
  v22[1] = xmmword_100A3BBB0;
  v21[0] = xmmword_100A2C3F0;
  v21[1] = xmmword_100A3BC00;
  v23 = v22;
  v24 = v21;
  v20[0] = xmmword_100A3BB70;
  v20[1] = xmmword_100A3BBA0;
  v19[0] = xmmword_100A3BBB0;
  v19[1] = xmmword_100A3BC20;
  v25 = v20;
  v26 = v19;
  v18[0] = xmmword_100A3BB70;
  v18[1] = xmmword_100A3BBD0;
  v17[0] = xmmword_100A2C3F0;
  v17[1] = xmmword_100A3BC20;
  v27 = v18;
  v28 = v17;
  v16[0] = xmmword_100A3BBB0;
  v16[1] = xmmword_100A3BC00;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A2C3F0;
  v29 = v16;
  v30 = v15;
  v14[0] = xmmword_100A2C3F0;
  v14[1] = xmmword_100A3BC10;
  v13[0] = xmmword_100A2C3F0;
  v13[1] = xmmword_100A3BC30;
  v31 = v14;
  v32 = v13;
  v12[0] = xmmword_100A2C3F0;
  v12[1] = xmmword_100A3BB80;
  *(&v10 + 1) = 1;
  v11 = xmmword_100A3BB80;
  sub_100024AA4(v12, v4, *(&v4 + 1), v5, *(&v5 + 1), v6, v7, v8, v9, 0);
  v4 = v0;
  v5 = v1;
  v33 = v2;
  v34 = &v4;
  sub_100557528();
  qword_100D90E28 = v3;
}

void sub_1007FB564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BB80;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3BBA0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BB80;
  v26 = v21;
  v27 = v20;
  v18[0] = 0;
  v18[1] = 4;
  v19 = xmmword_100A3BBD0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC50;
  v28 = v18;
  v29 = v17;
  v16[0] = xmmword_100A2D320;
  v16[1] = xmmword_100A3BB70;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC50;
  v30 = v16;
  v31 = v15;
  v14[0] = xmmword_100A3BB70;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BB80;
  v32 = v14;
  v33 = v13;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BB80;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC60;
  v34 = v12;
  v35 = v11;
  v10[0] = xmmword_100A3BBD0;
  v10[1] = xmmword_100A3BC60;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC40;
  v36 = v10;
  v37 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90E30 = v8;
}

void sub_1007FB67C()
{
  v23[0] = xmmword_100A3BB70;
  v23[1] = xmmword_100A3BBB0;
  v22[0] = xmmword_100A3BC40;
  v22[1] = xmmword_100A3BC50;
  v24 = v23;
  v25 = v22;
  v21[0] = xmmword_100A3BB70;
  v21[1] = xmmword_100A3AEB0;
  v20[0] = xmmword_100A2C3F0;
  v20[1] = xmmword_100A3BC50;
  v26 = v21;
  v27 = v20;
  v17 = 0;
  v18 = xmmword_100A3BC70;
  v19 = 2;
  v16[0] = xmmword_100A3BBD0;
  v16[1] = xmmword_100A3BC60;
  v28 = &v17;
  v29 = v16;
  v15[0] = xmmword_100A3BC40;
  v15[1] = xmmword_100A3BC60;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A3BBB0;
  v30 = v15;
  v31 = v14;
  v13[0] = xmmword_100A3BBD0;
  v13[1] = xmmword_100A3BC50;
  v12[0] = xmmword_100A3BBB0;
  v12[1] = xmmword_100A3BC50;
  v32 = v13;
  v33 = v12;
  v11[0] = xmmword_100A3BC40;
  v11[1] = xmmword_100A3BC40;
  *(&v9 + 1) = 3;
  v10 = xmmword_100A3BC40;
  sub_100024AA4(v11, v3, *(&v3 + 1), v4, *(&v4 + 1), v5, v6, v7, v8, 2);
  v3 = v0;
  v4 = v0;
  v34 = v1;
  v35 = &v3;
  sub_100557528();
  qword_100D90E38 = v2;
}

void sub_1007FB790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24[0] = xmmword_100A3BB70;
  v24[1] = xmmword_100A3BBB0;
  v23[0] = xmmword_100A3BC50;
  v23[1] = xmmword_100A3BC60;
  v25 = v24;
  v26 = v23;
  v20 = xmmword_100A3BB70;
  v21 = 1;
  v22 = 4;
  v19[0] = xmmword_100A3BC60;
  v19[1] = xmmword_100A3BC40;
  v27 = &v20;
  v28 = v19;
  v18[0] = xmmword_100A41B90;
  v18[1] = xmmword_100A3BBB0;
  v17[0] = xmmword_100A3BBD0;
  v17[1] = xmmword_100A3BC60;
  v29 = v18;
  v30 = v17;
  v16[0] = xmmword_100A3BC90;
  v16[1] = xmmword_100A3BD20;
  v15[0] = xmmword_100A3BB70;
  v15[1] = xmmword_100A3BC60;
  v31 = v16;
  v32 = v15;
  v14[0] = xmmword_100A2D320;
  v14[1] = xmmword_100A2C3F0;
  v13[0] = xmmword_100A3BC60;
  v13[1] = xmmword_100A3BC60;
  v33 = v14;
  v34 = v13;
  v12[0] = xmmword_100A3BC40;
  v12[1] = xmmword_100A3BC40;
  v11[0] = xmmword_100A3BBD0;
  v11[1] = xmmword_100A3BC40;
  v35 = v12;
  v36 = v11;
  v10[0] = xmmword_100A3BC50;
  v10[1] = xmmword_100A3BC40;
  v9[0] = xmmword_100A3BC40;
  v9[1] = xmmword_100A3BC60;
  v37 = v10;
  v38 = v9;
  sub_10004E984(a1, a2, a3, a4, a5, a6, a7, a8, 2);
  qword_100D90E40 = v8;
}

uint64_t sub_1007FB8B4(uint64_t a1, void (*a2)(char *))
{
  v5 = type metadata accessor for LocationComponentContainerViewModel();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_100003848();
  v32 = v7;
  __chkstk_darwin(v8);
  sub_100003878();
  v31 = v9;
  __chkstk_darwin(v10);
  sub_100013628();
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = type metadata accessor for LocationViewComponent();
  v15 = sub_100003810(v14);
  __chkstk_darwin(v15);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10022C350(&qword_100CA5008);
  v19 = sub_100003810(v18);
  __chkstk_darwin(v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v29 - v23;

  sub_1005D71C4(v25, a2);
  v30 = v26;

  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_map, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10001B350(v24, 0, 1, v5);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_airQuality, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_10031694C(a1 + OBJC_IVAR____TtCV7Weather36LocationElevatedAqiNewsConfiguration8_Storage_newsArticle, v17, type metadata accessor for LocationViewComponent);
  a2(v17);
  sub_1003169AC(v17, type metadata accessor for LocationViewComponent);
  sub_100035AD0(v24, v21, &qword_100CA5008);
  sub_10031694C(v13, v31, type metadata accessor for LocationComponentContainerViewModel);
  sub_10031694C(v2, v32, type metadata accessor for LocationComponentContainerViewModel);
  type metadata accessor for ElevatedAqiNewsContent._Storage(0);
  swift_allocObject();
  v27 = sub_1002BECB0(v30);
  sub_1003169AC(v2, type metadata accessor for LocationComponentContainerViewModel);
  sub_1003169AC(v13, type metadata accessor for LocationComponentContainerViewModel);
  sub_1000180EC(v24, &qword_100CA5008);
  return v27;
}

uint64_t sub_1007FBBF0()
{

  sub_1000180EC(v0 + OBJC_IVAR____TtC7Weather27LocationViewerStoreObserver_lastViewedLocationIdentifier, &qword_100CADBA0);

  return swift_deallocClassInstance();
}

uint64_t sub_1007FBC7C(void **a1)
{
  v44 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v42 = type metadata accessor for SelectedSearchResult();
  sub_1000037E8();
  __chkstk_darwin(v7);
  sub_1000037D8();
  v43 = (v9 - v8);
  v10 = sub_10022C350(&qword_100CA65D8);
  __chkstk_darwin(v10 - 8);
  v12 = &v41 - v11;
  v13 = type metadata accessor for Location();
  sub_1000037C4();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_1000037D8();
  v19 = v18 - v17;
  sub_1000161C0(v1 + 34, v1[37]);
  sub_100405270();
  v20 = type metadata accessor for SearchLocation();
  sub_100035AD0(a1 + *(v20 + 32), v12, &qword_100CA65D8);
  if (sub_100024D10(v12, 1, v13) == 1)
  {
    sub_1000180EC(v12, &qword_100CA65D8);
    v21 = *a1;
    if (*a1)
    {
      sub_1000161C0(v1 + 23, v1[26]);
      v22 = v21;
      v23 = [v22 w_calloutTitle];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(v22, v24, v26);

      sub_1007FC298();
    }

    sub_100050E70(a1, v6, type metadata accessor for SearchLocation);
    type metadata accessor for SearchViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100008FD0();
    swift_storeEnumTagMultiPayload();
    sub_1007FC0AC(v6);
    sub_10001F3B4();
    return sub_10004F9E8(v6, v27);
  }

  else
  {
    v41 = v15;
    (*(v15 + 32))(v19, v12, v13);
    v29 = sub_1000161C0(v1 + 34, v1[37]);
    Location.id.getter();
    if (*(*v29 + 24))
    {
      sub_1008957E0();
    }

    sub_100090A8C(v19, 0, v30, v31, v32, v33, v34, v35, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    v36 = a1[6];
    v37 = v43;
    *v43 = a1[5];
    v37[1] = v36;
    swift_storeEnumTagMultiPayload();
    v38 = *(sub_10022C350(&qword_100CC7D10) + 48);
    v39 = v41;
    (*(v41 + 16))(v6, v19, v13);
    sub_100050E70(v37, v6 + v38, type metadata accessor for SelectedSearchResult);
    type metadata accessor for SearchViewAction();
    sub_100008FD0();
    type metadata accessor for ViewAction();
    sub_100008FD0();
    swift_storeEnumTagMultiPayload();

    sub_1007FC0AC(v6);
    sub_10001F3B4();
    sub_10004F9E8(v6, v40);
    sub_10004F9E8(v37, type metadata accessor for SelectedSearchResult);
    return (*(v39 + 8))(v19, v13);
  }
}

uint64_t sub_1007FC0AC(uint64_t a1)
{
  v3 = static Solarium.isEnabled.getter();
  v4 = *(v1 + 16);
  if (v3)
  {
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    sub_10004F034(a1, v10, v4);
    v5 = v10;
  }

  else
  {
    sub_10022C350(&qword_100CA3508);
    v6 = *(type metadata accessor for MainAction() - 8);
    v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100A2D320;
    sub_100050E70(a1, v8 + v7, type metadata accessor for MainAction);
    type metadata accessor for SearchViewAction();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_100035AD0(v14, v10, &unk_100CD81B0);
    v12 = v8;
    v13 = 0;
    sub_10004F1B0(v10, v4);
    sub_1000180EC(v10, &qword_100CA3510);
    v5 = v14;
  }

  return sub_1000180EC(v5, &unk_100CD81B0);
}

void sub_1007FC298()
{
  type metadata accessor for Location();
  firstly<A>(closure:)();
  sub_100040690();
  v0 = static OS_dispatch_queue.main.getter();
  Promise.then<A, B>(on:disposeOn:closure:)();

  v1 = zalgo.getter();
  Promise.error(on:closure:)();
}

uint64_t sub_1007FC3C4(uint64_t a1)
{
  v32 = type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  v30 = type metadata accessor for Location();
  sub_1000037C4();
  v8 = v7;
  __chkstk_darwin(v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v29 - v13;
  sub_1000161C0((v1 + 272), *(v1 + 296));
  sub_100405270();
  v15 = sub_1000161C0((v1 + 272), *(v1 + 296));
  v31 = a1;
  LocationOfInterest.location.getter();
  Location.id.getter();
  v16 = *(v8 + 8);
  v17 = v14;
  v18 = v30;
  v16(v17, v30);
  if (*(*v15 + 24))
  {
    sub_1008957E0();
  }

  v19 = v31;
  LocationOfInterest.location.getter();
  sub_100090A8C(v11, 0, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v16(v11, v18);
  type metadata accessor for LocationOfInterest();
  sub_1000037E8();
  (*(v26 + 16))(v6, v19);
  type metadata accessor for SearchViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_1007FC0AC(v6);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v27);
}

uint64_t sub_1007FC620()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  sub_1000037D8();
  v4 = v3 - v2;
  result = static Solarium.isEnabled.getter();
  if (result)
  {
    v6 = *(v0 + 16);
    type metadata accessor for SearchViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ViewAction();
    sub_100003E0C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_10004F034(v4, v8, v6);
    sub_1000180EC(v8, &unk_100CD81B0);
    sub_10001F3B4();
    return sub_10004F9E8(v4, v7);
  }

  return result;
}

void sub_1007FC710(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for MainAction();
  __chkstk_darwin(v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2[2];
  v8 = *(sub_10022C350(&unk_100CE2F60) + 48);
  v9 = type metadata accessor for Location();
  (*(*(v9 - 8) + 16))(v6, a1, v9);
  v6[v8] = 0;
  type metadata accessor for LocationPreviewViewAction();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ModalViewAction();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_10004F034(v6, &v17, v7);
  sub_1000180EC(&v17, &unk_100CD81B0);
  sub_10004F9E8(v6, type metadata accessor for MainAction);
  v10 = sub_1000161C0(a2 + 34, a2[37]);
  Location.id.getter();
  if (*(*v10 + 24))
  {
    sub_1008957E0();
  }

  sub_100090A8C(a1, 0, v11, v12, v13, v14, v15, v16, v17, *(&v17 + 1), v18, *(&v18 + 1), v19, v20, v21, v22, v23, v24, v25, v26);
}

uint64_t sub_1007FC8E0()
{

  sub_100006F14(v0 + 32);
  sub_100006F14(v0 + 72);
  sub_100006F14(v0 + 112);

  sub_100006F14(v0 + 184);

  sub_100006F14(v0 + 232);
  sub_100006F14(v0 + 272);
  return v0;
}

uint64_t sub_1007FC954()
{
  sub_1007FC8E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1007FCA18(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000037D8();
  v6 = v5 - v4;
  *(v5 - v4) = a2;
  type metadata accessor for SearchViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  memset(v9, 0, sizeof(v9));

  sub_1000047B4();
  sub_1000180EC(v9, &unk_100CD81B0);
  sub_10001F3B4();
  return sub_10004F9E8(v6, v7);
}

uint64_t sub_1007FCB08()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  swift_errorRetain();
  CodableError.init(_:)();
  type metadata accessor for SearchViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ViewAction();
  sub_100003E0C();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_1000047B4();
  sub_1000180EC(v6, &unk_100CD81B0);
  sub_10001F3B4();
  return sub_10004F9E8(v3, v4);
}

void sub_1007FCC24(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2 == 1 && a4 == 1)
  {
    sub_1002D64EC(a1, a3);
  }
}

uint64_t sub_1007FCC80(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v12 = a2[3];
  v13 = a2[4];
  v14 = a2[5];
  v41 = *a1;
  v35 = v10;
  if (v41)
  {
    if (!v10)
    {
      goto LABEL_31;
    }

    v29 = v4;
    v30 = v5;
    v32 = v11;
    v28 = v9;
    sub_1000B8CA8();
    sub_1000B8CEC(&v35, &v46);
    sub_1000B8CEC(&v41, &v46);
    v15 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v41);
    sub_1000B8D48(&v35);
    v9 = v28;
    v4 = v29;
    v5 = v30;
    v11 = v32;
    if ((v15 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v10)
  {
    goto LABEL_31;
  }

  v42 = v4;
  v36 = v9;
  if (v4)
  {
    if (!v9)
    {
      goto LABEL_31;
    }

    v31 = v5;
    v33 = v11;
    sub_1000B8CA8();
    sub_1000B8CEC(&v36, &v46);
    sub_1000B8CEC(&v42, &v46);
    v16 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v42);
    sub_1000B8D48(&v36);
    v5 = v31;
    v11 = v33;
    if ((v16 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v9)
  {
    goto LABEL_31;
  }

  v43 = v5;
  v37 = v11;
  if (v5)
  {
    if (!v11)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v37, &v46);
    sub_1000B8CEC(&v43, &v46);
    v17 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v43);
    sub_1000B8D48(&v37);
    if ((v17 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v11)
  {
    goto LABEL_31;
  }

  v44 = v6;
  v38 = v12;
  if (v6)
  {
    if (!v12)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v38, &v46);
    sub_1000B8CEC(&v44, &v46);
    v18 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v44);
    sub_1000B8D48(&v38);
    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v12)
  {
    goto LABEL_31;
  }

  v45 = v8;
  v39 = v13;
  if (v8)
  {
    if (!v13)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v39, &v46);
    sub_1000B8CEC(&v45, &v46);
    v19 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v45);
    sub_1000B8D48(&v39);
    if ((v19 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v13)
  {
    goto LABEL_31;
  }

  v46 = v7;
  v40 = v14;
  if (v7)
  {
    if (!v14)
    {
      goto LABEL_31;
    }

    sub_1000B8CA8();
    sub_1000B8CEC(&v40, v34);
    sub_1000B8CEC(&v46, v34);
    v20 = static NSObject.== infix(_:_:)();
    sub_1000B8D48(&v46);
    sub_1000B8D48(&v40);
    if ((v20 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else if (v14)
  {
    goto LABEL_31;
  }

  v23 = a1[6];
  v21 = *(a1 + 56);
  v24 = *(a2 + 48);
  v25 = *(a2 + 56);
  if (*(a1 + 56))
  {
    v26 = *(a2 + 49) | ((*(a2 + 53) | (*(a2 + 55) << 16)) << 32);
    if (v21 == 1)
    {
      if (v25 == 1)
      {
        sub_1002D64EC(v23, v24 | (v26 << 8));
        if (v27)
        {
LABEL_43:
          LOBYTE(v21) = *(a1 + 57) ^ *(a2 + 57) ^ 1;
          return v21 & 1;
        }
      }

LABEL_31:
      LOBYTE(v21) = 0;
      return v21 & 1;
    }

    LOBYTE(v21) = 0;
    if (v25 == 2 && !(v24 | (v26 << 8)))
    {
      goto LABEL_43;
    }
  }

  else if (!*(a2 + 56) && v24 == v23)
  {
    goto LABEL_43;
  }

  return v21 & 1;
}

NSObject *sub_1007FD02C@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v135 = a1;
  v136 = a2;
  v2 = type metadata accessor for Logger();
  v127 = *(v2 - 8);
  v128 = v2;
  __chkstk_darwin(v2);
  v134 = v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000038CC();
  v123 = type metadata accessor for ModalViewState.LocationDetailModal(v4);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_100003848();
  v119 = v6;
  sub_10000386C();
  __chkstk_darwin(v7);
  v122 = v116 - v8;
  sub_10000386C();
  __chkstk_darwin(v9);
  sub_10000E70C();
  v124 = v10;
  sub_1000038CC();
  v11 = type metadata accessor for AveragesDetailViewState();
  v12 = sub_100003810(v11);
  __chkstk_darwin(v12);
  sub_100003848();
  v116[1] = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v118 = v15;
  v16 = sub_1000038CC();
  v132 = type metadata accessor for LocationPreviewModalViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  v121 = v18;
  sub_10000386C();
  __chkstk_darwin(v19);
  sub_10000E70C();
  v131 = v20;
  sub_1000038CC();
  v21 = type metadata accessor for ConditionDetailViewState();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_100003848();
  v117 = v23;
  sub_10000386C();
  __chkstk_darwin(v24);
  sub_10000E70C();
  v120 = v25;
  v26 = sub_10022C350(&qword_100CA65E0);
  v27 = sub_100003810(v26);
  __chkstk_darwin(v27);
  sub_100003848();
  v126 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_10000E70C();
  v125 = v30;
  v31 = sub_1000038CC();
  v32 = type metadata accessor for ModalViewState(v31);
  sub_1000037E8();
  __chkstk_darwin(v33);
  sub_100003848();
  v129 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  v37 = v116 - v36;
  __chkstk_darwin(v38);
  v40 = (v116 - v39);
  v41 = type metadata accessor for LocationPreviewViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v42);
  sub_100003848();
  v130 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  v46 = v116 - v45;
  __chkstk_darwin(v47);
  v49 = (v116 - v48);
  v50 = sub_10022C350(&qword_100CDB0D0);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  v53 = v116 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v56 = v116 - v55;
  sub_10001B350(v116 - v55, 1, 1, v41);
  sub_1000180EC(v56, &qword_100CDB0D0);
  v57 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  v58 = sub_10001CE18();
  sub_1000BCB9C(v58, v40, v59);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100010C88();
    sub_1000E0250(v40, v60);
    v61 = sub_10001CE18();
    sub_1000BCB9C(v61, v37, v62);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_100010C88();
      sub_1000E0250(v37, v68);
      goto LABEL_7;
    }

    v63 = v37;
    v64 = v125;
    sub_1003C9FB0(v63, v125);
    v49 = v126;
    sub_1003C9FB0(v64, v126);
    v65 = type metadata accessor for ModalViewState.MapViewModal(0);
    if (sub_100024D10(v49, 1, v65) == 1)
    {
      sub_1000180EC(v49, &qword_100CA65E0);
LABEL_7:
      v69 = 1;
      goto LABEL_10;
    }

    sub_1007FDD38(v49, v46, type metadata accessor for LocationPreviewViewState);
    v66 = v46;
    v67 = v56;
  }

  else
  {
    sub_1007FDD38(v40, v49, type metadata accessor for LocationPreviewViewState);
    v66 = v49;
    v67 = v56;
  }

  sub_1007FDD38(v66, v67, type metadata accessor for LocationPreviewViewState);
  v69 = 0;
LABEL_10:
  sub_10001B350(v56, v69, 1, v41);
  sub_1007FDCC8(v56, v53);
  if (sub_100024D10(v53, 1, v41) == 1)
  {
    sub_1000180EC(v53, &qword_100CDB0D0);
    v70 = sub_10001CE18();
    v71 = v129;
    sub_1000BCB9C(v70, v129, v72);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1000180EC(v56, &qword_100CDB0D0);
      sub_100010C88();
      sub_1000E0250(v71, v91);
      v87 = 0;
      LOBYTE(v75) = 2;
LABEL_25:
      sub_100017E50();
      v101 = type metadata accessor for EnvironmentState();
      sub_100013CC0(v101);
      v102 = v71;
      v103 = v41;
      v104 = v49;
      v105 = v57;
      result = v32;
      goto LABEL_31;
    }

    v73 = sub_100014F28();
    v71 = v124;
    sub_1007FDD38(v73, v124, v74);
    v75 = v122;
    sub_1000BCB9C(v71, v122, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100075058();
      sub_1000E0250(v75, v76);
      v77 = sub_100014F28();
      v78 = v119;
      sub_1007FDD38(v77, v119, v79);
      sub_100003940();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        sub_1000180EC(v56, &qword_100CDB0D0);
        v80 = sub_100028BCC();
        v82 = &v137;
LABEL_20:
        v71 = *(v82 - 32);
        sub_1007FDD38(v80, v71, v81);
        v87 = sub_1007FDB84(v71);
        LOBYTE(v75) = v96;
        sub_1000E0250(v71, type metadata accessor for AveragesDetailViewState);
        goto LABEL_25;
      }

      v97 = type metadata accessor for ModalViewState.LocationDetailModal;
LABEL_27:
      sub_1000E0250(v78, v97);
      goto LABEL_28;
    }

    v98 = sub_100019FA0();
    v41 = v117;
    sub_1007FDD38(v98, v117, v99);
    v87 = v133;
    sub_1007FD99C(v41);
    sub_100008FEC();
    sub_1000E0250(v41, v100);
    sub_100075058();
    v89 = v71;
  }

  else
  {
    v49 = v130;
    sub_1007FDD38(v53, v130, type metadata accessor for LocationPreviewViewState);
    v83 = sub_1000232B8();
    v75 = v131;
    sub_1000BCB9C(v83, v131, v84);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1000E0250(v75, type metadata accessor for LocationPreviewModalViewState);
      v92 = sub_1000232B8();
      v78 = v121;
      sub_1000BCB9C(v92, v121, v93);
      v94 = sub_100004B9C();
      sub_1000E0250(v94, v95);
      sub_100003940();
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        sub_1000180EC(v56, &qword_100CDB0D0);
        v80 = sub_100028BCC();
        v82 = &v138;
        goto LABEL_20;
      }

      v97 = type metadata accessor for LocationPreviewModalViewState;
      goto LABEL_27;
    }

    v85 = sub_100019FA0();
    v71 = v120;
    sub_1007FDD38(v85, v120, v86);
    v87 = v133;
    sub_1007FD99C(v71);
    sub_100008FEC();
    sub_1000E0250(v71, v88);
    v89 = sub_100004B9C();
  }

  sub_1000E0250(v89, v90);
  if (v75 != 0xFF)
  {
    sub_1000180EC(v56, &qword_100CDB0D0);
    goto LABEL_25;
  }

LABEL_28:
  static Logger.locale.getter();
  v71 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v71, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&_mh_execute_header, v71, v107, "Missing representation for unit selection", v108, 2u);
  }

  (*(v127 + 8))(v134, v128);
  sub_100017E50();
  v109 = type metadata accessor for EnvironmentState();
  sub_100013CC0(v109);
  v110 = v71;
  v111 = v41;
  v112 = v49;
  v113 = v57;
  v114 = v32;
  result = sub_1000180EC(v56, &qword_100CDB0D0);
  LOBYTE(v75) = 1;
  v87 = &_swiftEmptySetSingleton;
LABEL_31:
  v115 = v136;
  *v136 = v71;
  v115[1] = v41;
  v115[2] = v49;
  v115[3] = v57;
  v115[4] = v32;
  v115[5] = v40;
  v115[6] = v87;
  *(v115 + 56) = v75;
  *(v115 + 57) = 1;
  return result;
}

uint64_t sub_1007FD99C(uint64_t a1)
{
  v2 = type metadata accessor for DetailCondition();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DetailCondition.conditions(_:))
  {
    v8 = sub_10031B84C(&off_100C43750);
    (*(v3 + 8))(v6, v2);
    return v8;
  }

  if (v7 == enum case for DetailCondition.humidity(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.pressure(_:))
  {
    return 2;
  }

  if (v7 == enum case for DetailCondition.precipitationTotal(_:))
  {
    return 1;
  }

  if (v7 == enum case for DetailCondition.uvIndex(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.visibility(_:))
  {
    return 0;
  }

  if (v7 == enum case for DetailCondition.wind(_:))
  {
    return 4;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_1007FDB84(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for AveragesDetailViewState() + 20)))
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1007FDBE8(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1007FDC04(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 58))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1007FDC58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}