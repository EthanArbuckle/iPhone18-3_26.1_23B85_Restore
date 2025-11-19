uint64_t sub_10046A774()
{
  sub_10046AFC8(&qword_100CBBD08, type metadata accessor for ListViewAction);

  return ShortDescribable.description.getter();
}

uint64_t sub_10046A858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewAction();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10046A8BC()
{
  result = qword_100CBBD00;
  if (!qword_100CBBD00)
  {
    sub_10022E824(&qword_100CBBCF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBD00);
  }

  return result;
}

uint64_t sub_10046A920(uint64_t a1)
{
  v2 = type metadata accessor for ListViewAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10046A97C()
{
  result = qword_100CBBDA0;
  if (!qword_100CBBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDA0);
  }

  return result;
}

unint64_t sub_10046A9D0()
{
  result = qword_100CBBDA8;
  if (!qword_100CBBDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDA8);
  }

  return result;
}

uint64_t sub_10046AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListViewAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10046AA88()
{
  result = qword_100CBBDB0;
  if (!qword_100CBBDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDB0);
  }

  return result;
}

unint64_t sub_10046AADC()
{
  result = qword_100CBBDB8;
  if (!qword_100CBBDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDB8);
  }

  return result;
}

unint64_t sub_10046AB30()
{
  result = qword_100CBBDC8;
  if (!qword_100CBBDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDC8);
  }

  return result;
}

unint64_t sub_10046AB84()
{
  result = qword_100CBBDD0;
  if (!qword_100CBBDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDD0);
  }

  return result;
}

unint64_t sub_10046ABD8()
{
  result = qword_100CBBDD8;
  if (!qword_100CBBDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDD8);
  }

  return result;
}

unint64_t sub_10046AC2C()
{
  result = qword_100CBBDE0;
  if (!qword_100CBBDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDE0);
  }

  return result;
}

unint64_t sub_10046AC80()
{
  result = qword_100CBBDE8;
  if (!qword_100CBBDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDE8);
  }

  return result;
}

unint64_t sub_10046ACD4()
{
  result = qword_100CBBDF0;
  if (!qword_100CBBDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDF0);
  }

  return result;
}

unint64_t sub_10046AD28()
{
  result = qword_100CBBDF8;
  if (!qword_100CBBDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBDF8);
  }

  return result;
}

unint64_t sub_10046AD7C()
{
  result = qword_100CBBE00;
  if (!qword_100CBBE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE00);
  }

  return result;
}

unint64_t sub_10046ADD0()
{
  result = qword_100CBBE08;
  if (!qword_100CBBE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE08);
  }

  return result;
}

unint64_t sub_10046AE24()
{
  result = qword_100CBBE10;
  if (!qword_100CBBE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE10);
  }

  return result;
}

unint64_t sub_10046AE78()
{
  result = qword_100CBBE28;
  if (!qword_100CBBE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE28);
  }

  return result;
}

unint64_t sub_10046AECC()
{
  result = qword_100CBBE30;
  if (!qword_100CBBE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE30);
  }

  return result;
}

unint64_t sub_10046AF20()
{
  result = qword_100CBBE38;
  if (!qword_100CBBE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE38);
  }

  return result;
}

unint64_t sub_10046AF74()
{
  result = qword_100CBBE40;
  if (!qword_100CBBE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBE40);
  }

  return result;
}

uint64_t sub_10046AFC8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ListViewAction.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ListViewAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ListViewAction.TappedLocationCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_10046B320(_BYTE *result, int a2, int a3)
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

unint64_t sub_10046B3F0()
{
  result = qword_100CBBEE8;
  if (!qword_100CBBEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBEE8);
  }

  return result;
}

unint64_t sub_10046B448()
{
  result = qword_100CBBEF0;
  if (!qword_100CBBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBEF0);
  }

  return result;
}

unint64_t sub_10046B4A0()
{
  result = qword_100CBBEF8;
  if (!qword_100CBBEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBEF8);
  }

  return result;
}

unint64_t sub_10046B4F8()
{
  result = qword_100CBBF00;
  if (!qword_100CBBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF00);
  }

  return result;
}

unint64_t sub_10046B550()
{
  result = qword_100CBBF08;
  if (!qword_100CBBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF08);
  }

  return result;
}

unint64_t sub_10046B5A8()
{
  result = qword_100CBBF10;
  if (!qword_100CBBF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF10);
  }

  return result;
}

unint64_t sub_10046B600()
{
  result = qword_100CBBF18;
  if (!qword_100CBBF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF18);
  }

  return result;
}

unint64_t sub_10046B658()
{
  result = qword_100CBBF20;
  if (!qword_100CBBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF20);
  }

  return result;
}

unint64_t sub_10046B6B0()
{
  result = qword_100CBBF28;
  if (!qword_100CBBF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF28);
  }

  return result;
}

unint64_t sub_10046B708()
{
  result = qword_100CBBF30;
  if (!qword_100CBBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF30);
  }

  return result;
}

unint64_t sub_10046B760()
{
  result = qword_100CBBF38;
  if (!qword_100CBBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF38);
  }

  return result;
}

unint64_t sub_10046B7B8()
{
  result = qword_100CBBF40;
  if (!qword_100CBBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF40);
  }

  return result;
}

unint64_t sub_10046B810()
{
  result = qword_100CBBF48;
  if (!qword_100CBBF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF48);
  }

  return result;
}

unint64_t sub_10046B868()
{
  result = qword_100CBBF50;
  if (!qword_100CBBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF50);
  }

  return result;
}

unint64_t sub_10046B8C0()
{
  result = qword_100CBBF58;
  if (!qword_100CBBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF58);
  }

  return result;
}

unint64_t sub_10046B918()
{
  result = qword_100CBBF60;
  if (!qword_100CBBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF60);
  }

  return result;
}

unint64_t sub_10046B970()
{
  result = qword_100CBBF68;
  if (!qword_100CBBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF68);
  }

  return result;
}

unint64_t sub_10046B9C8()
{
  result = qword_100CBBF70;
  if (!qword_100CBBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF70);
  }

  return result;
}

unint64_t sub_10046BA20()
{
  result = qword_100CBBF78;
  if (!qword_100CBBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF78);
  }

  return result;
}

unint64_t sub_10046BA78()
{
  result = qword_100CBBF80;
  if (!qword_100CBBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF80);
  }

  return result;
}

unint64_t sub_10046BAD0()
{
  result = qword_100CBBF88;
  if (!qword_100CBBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF88);
  }

  return result;
}

unint64_t sub_10046BB28()
{
  result = qword_100CBBF90;
  if (!qword_100CBBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF90);
  }

  return result;
}

unint64_t sub_10046BB80()
{
  result = qword_100CBBF98;
  if (!qword_100CBBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBF98);
  }

  return result;
}

unint64_t sub_10046BBD8()
{
  result = qword_100CBBFA0;
  if (!qword_100CBBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFA0);
  }

  return result;
}

unint64_t sub_10046BC30()
{
  result = qword_100CBBFA8;
  if (!qword_100CBBFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFA8);
  }

  return result;
}

unint64_t sub_10046BC88()
{
  result = qword_100CBBFB0;
  if (!qword_100CBBFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFB0);
  }

  return result;
}

unint64_t sub_10046BCE0()
{
  result = qword_100CBBFB8;
  if (!qword_100CBBFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFB8);
  }

  return result;
}

unint64_t sub_10046BD38()
{
  result = qword_100CBBFC0;
  if (!qword_100CBBFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFC0);
  }

  return result;
}

unint64_t sub_10046BD90()
{
  result = qword_100CBBFC8;
  if (!qword_100CBBFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFC8);
  }

  return result;
}

unint64_t sub_10046BDE8()
{
  result = qword_100CBBFD0;
  if (!qword_100CBBFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFD0);
  }

  return result;
}

unint64_t sub_10046BE40()
{
  result = qword_100CBBFD8;
  if (!qword_100CBBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFD8);
  }

  return result;
}

unint64_t sub_10046BE98()
{
  result = qword_100CBBFE0;
  if (!qword_100CBBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFE0);
  }

  return result;
}

unint64_t sub_10046BEF0()
{
  result = qword_100CBBFE8;
  if (!qword_100CBBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFE8);
  }

  return result;
}

unint64_t sub_10046BF48()
{
  result = qword_100CBBFF0;
  if (!qword_100CBBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFF0);
  }

  return result;
}

unint64_t sub_10046BFA0()
{
  result = qword_100CBBFF8;
  if (!qword_100CBBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBBFF8);
  }

  return result;
}

unint64_t sub_10046BFF8()
{
  result = qword_100CBC000;
  if (!qword_100CBC000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC000);
  }

  return result;
}

unint64_t sub_10046C050()
{
  result = qword_100CBC008;
  if (!qword_100CBC008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC008);
  }

  return result;
}

unint64_t sub_10046C0A8()
{
  result = qword_100CBC010;
  if (!qword_100CBC010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC010);
  }

  return result;
}

unint64_t sub_10046C100()
{
  result = qword_100CBC018;
  if (!qword_100CBC018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC018);
  }

  return result;
}

unint64_t sub_10046C158()
{
  result = qword_100CBC020;
  if (!qword_100CBC020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC020);
  }

  return result;
}

uint64_t sub_10046C1BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v178 = a1;
  v176 = a3;
  v6 = *v4;
  v177 = v4;
  v172 = v6;
  v7 = type metadata accessor for Location();
  v8 = sub_100003E5C(v7, &v186);
  v10 = v9;
  __chkstk_darwin(v8);
  sub_100003C38();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  sub_100003990(&v153 - v15);
  v16 = sub_10022C350(&unk_100CABCA0);
  sub_100003E5C(v16, v180);
  v156 = v17;
  sub_100003828();
  __chkstk_darwin(v18);
  sub_1000039BC();
  sub_100003990(v19);
  v20 = type metadata accessor for NSUnitLength.WeatherFormatUsage();
  v21 = sub_100003E5C(v20, v184);
  v168 = v22;
  __chkstk_darwin(v21);
  sub_1000037D8();
  sub_100003990(v24 - v23);
  v25 = type metadata accessor for Deviation();
  v26 = sub_100003E5C(v25, v182);
  v163 = v27;
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_100003990(v29 - v28);
  v30 = sub_10022C350(&qword_100CAB938);
  v31 = sub_100003E5C(v30, v181);
  v160 = v32;
  __chkstk_darwin(v31);
  sub_100003C38();
  v159 = v33 - v34;
  __chkstk_darwin(v35);
  sub_100003990(&v153 - v36);
  v37 = sub_10022C350(&qword_100CBC0C8);
  sub_100003E5C(v37, &v185);
  v157 = v38;
  sub_100003828();
  __chkstk_darwin(v39);
  sub_1000039BC();
  sub_100003990(v40);
  sub_10022C350(&unk_100CB2CF0);
  sub_100003828();
  __chkstk_darwin(v41);
  sub_1000039BC();
  sub_100003990(v42);
  v43 = sub_10022C350(&qword_100CBC0D0);
  sub_100003E5C(v43, v183);
  v165 = v44;
  sub_100003828();
  __chkstk_darwin(v45);
  sub_1000039BC();
  sub_100003990(v46);
  sub_10022C350(&qword_100CBC0D8);
  sub_100003828();
  __chkstk_darwin(v47);
  v49 = &v153 - v48;
  v50 = type metadata accessor for HistoricalComparison();
  sub_1000037C4();
  v52 = v51;
  __chkstk_darwin(v53);
  sub_100003C38();
  v56 = v54 - v55;
  __chkstk_darwin(v57);
  sub_100003990(&v153 - v58);
  sub_10022C350(&qword_100CABD10);
  sub_100003828();
  __chkstk_darwin(v59);
  v61 = &v153 - v60;
  type metadata accessor for HistoricalComparisons();
  sub_1000037C4();
  v63 = v62;
  __chkstk_darwin(v64);
  sub_1000037D8();
  v67 = v66 - v65;
  v68 = a2;
  v70 = v69;
  sub_1004709A8(v68, v61);
  if (sub_100024D10(v61, 1, v70) == 1)
  {
    v71 = &qword_100CABD10;
    v72 = v61;
  }

  else
  {
    (*(v63 + 32))(v67, v61, v70);
    v73 = v70;
    sub_1003DFA78();
    if (sub_100024D10(v49, 1, v50) != 1)
    {
      v153 = v63;
      v154 = v70;
      (*(v52 + 32))(v174, v49, v50);
      if (HistoricalComparisons.hasValidData.getter())
      {
        if (qword_100CA29D8 != -1)
        {
          swift_once();
        }

        sub_10006CA94(&qword_100CBC0E0, v93, type metadata accessor for AveragesComponentViewModelFactory);
        v94 = v177;
        Configurable.setting<A>(_:)();
        if (LOBYTE(v179[0]) == 1)
        {
          v95 = type metadata accessor for Date();
          sub_10001B350(v169, 1, 1, v95);
          v96 = v157;
          (*(v157 + 104))(v170, enum case for TrendBaseline.Kind.mean<A>(_:), v171);
          v97 = objc_opt_self();
          v175 = v67;
          v98 = [v97 inches];
          v172 = v50;
          v99 = v98;
          v100 = sub_10000C70C(0, &qword_100CAB968);
          v101 = v158;
          Measurement.init(value:unit:)();
          v102 = [v97 inches];
          v103 = v159;
          Measurement.init(value:unit:)();
          sub_1000497DC();
          v104 = v161;
          sub_100013824();
          v105();
          v106 = v164;
          v107 = v170;
          v108 = v169;
          static Trend<>.mock(baselineKind:baselineValue:currentValue:deviation:baselineStartDate:)();
          v99[1](v104, v100);
          v109 = *(v160 + 8);
          v110 = v162;
          v109(v103, v162);
          v109(v101, v110);
          (*(v96 + 8))(v107, v171);
          sub_10003FDF4(v108, &unk_100CB2CF0);
          sub_1000497DC();
          v111 = v167;
          sub_100013824();
          v112();
          sub_10046FA40(v106, v111, v177, v178, v176);
          (*(v110 + 8))(v111, v109);
          (*(v165 + 8))(v106, v166);
          v113 = sub_100074A34();
          v114(v113, v172);
          return (*(v153 + 8))(v175, v154);
        }

        (*(v52 + 16))(v56, v174, v50);
        v133 = (*(v52 + 88))(v56, v50);
        if (v133 == enum case for HistoricalComparison.highTemperature(_:) || v133 == enum case for HistoricalComparison.lowTemperature(_:))
        {
          v135 = sub_1000197F4();
          v136(v135);
          v137 = v156;
          v138 = v155;
          sub_100013824();
          v139();
          sub_10046E2B4(v138, v94, v178, v176);
          (*(v137 + 8))(v138, v56);
        }

        else
        {
          if (v133 != enum case for HistoricalComparison.precipitationAmount(_:) && v133 != enum case for HistoricalComparison.snowfallAmount(_:))
          {
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v145 = sub_1000197F4();
          v146(v145);
          v147 = sub_100008668();
          v148(v147);
          sub_1000497DC();
          v149 = v167;
          sub_100013824();
          v150();
          sub_10046FA40(v63, v149, v94, v178, v176);
          (*(v73 + 8))(v149, v56);
          (*(v10 + 8))(v63, v52);
        }

        v151 = sub_100074A34();
        v152(v151, v50);
        v122 = v153;
      }

      else
      {
        v172 = v50;
        v115 = v178;
        if (qword_100CA2690 != -1)
        {
          sub_1000146E0();
        }

        v116 = type metadata accessor for Logger();
        sub_10000703C(v116, qword_100D90A18);
        v117 = v173;
        v118 = v175;
        (*(v10 + 16))(v173, v115, v175);
        v119 = Logger.logObject.getter();
        v120 = static os_log_type_t.error.getter();
        v121 = os_log_type_enabled(v119, v120);
        v122 = v153;
        if (v121)
        {
          v123 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v179[0] = v171;
          sub_10000CB2C(7.2225e-34);
          sub_100005E28();
          sub_10006CA94(v124, 255, v125);
          v126 = dispatch thunk of CustomStringConvertible.description.getter();
          v127 = v67;
          v129 = v128;
          (*(v10 + 8))(v117, v118);
          v130 = sub_100078694(v126, v129, v179);
          v67 = v127;

          *(v123 + 14) = v130;
          sub_10001768C(&_mh_execute_header, v131, v132, "Could not find both a temperature and precipitation weather comparison while making the averages component model. Show internal error message. location=%{private,mask.hash}s");
          sub_100006F14(v171);
          sub_100003884();
          v115 = v178;
          sub_100003884();
        }

        else
        {

          (*(v10 + 8))(v117, v118);
        }

        v140 = sub_10001008C();
        sub_10046F828(v140, v141, v115, v142);
        v143 = sub_100074A34();
        v144(v143, v172);
      }

      return (*(v122 + 8))(v67, v154);
    }

    (*(v63 + 8))(v67, v70);
    v71 = &qword_100CBC0D8;
    v72 = v49;
  }

  sub_10003FDF4(v72, v71);
  v74 = v178;
  v75 = v175;
  if (qword_100CA2690 != -1)
  {
    sub_1000146E0();
  }

  v76 = type metadata accessor for Logger();
  sub_10000703C(v76, qword_100D90A18);
  (*(v10 + 16))(v13, v74, v75);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v179[0] = v80;
    sub_10000CB2C(7.2225e-34);
    sub_100005E28();
    sub_10006CA94(v81, 255, v82);
    v83 = dispatch thunk of CustomStringConvertible.description.getter();
    v85 = v84;
    (*(v10 + 8))(v13, v75);
    v86 = sub_100078694(v83, v85, v179);

    *(v79 + 14) = v86;
    sub_10001768C(&_mh_execute_header, v87, v88, "Encountered empty weather comparisons while making the averages component model. Show internal error message. location=%{private,mask.hash}s");
    sub_100006F14(v80);
    sub_100003884();
    sub_100003884();
  }

  else
  {

    (*(v10 + 8))(v13, v75);
  }

  v89 = sub_10001008C();
  return sub_10046F828(v89, v90, v74, v91);
}

uint64_t sub_10046D1A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v67 = a3;
  v68 = a4;
  v8 = sub_10022C350(&qword_100CBC0E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v63 - v10;
  v12 = sub_10022C350(&qword_100CAB938);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v63 - v17;
  if (a5 <= 0.0)
  {
    v64 = a2;
    v65 = a1;
    if (v67 & 1) != 0 && (sub_10022C350(&qword_100CBC0D0), Trend.currentValue.getter(), Trend.baseline.getter(), TrendBaseline.value.getter(), (*(v9 + 8))(v11, v8), sub_10000C70C(0, &qword_100CAB968), v34 = static Measurement.< infix<A, B>(_:_:)(), v35 = *(v13 + 8), v35(v15, v12), v35(v18, v12), (v34))
    {
      v36 = [objc_opt_self() mainBundle];
      v71._object = 0x8000000100ACA600;
      v37._countAndFlagsBits = 0x766120776F6C6562;
      v37._object = 0xED00006567617265;
      v32 = 0xE000000000000000;
      v71._countAndFlagsBits = 0xD000000000000082;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v71);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;

      v42 = String.trimmingHyphensAndMinusSigns()();
      result = v42._countAndFlagsBits;
      v20 = v42._object;
      v30 = 0;
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      if (a5 == 0.0)
      {
        v45._countAndFlagsBits = 0xD000000000000022;
        v72._object = 0x8000000100ACA4E0;
        v45._object = 0x8000000100ACA4B0;
        v72._countAndFlagsBits = 0xD00000000000009DLL;
        v46._countAndFlagsBits = 0x657661206D6F7266;
        v46._object = 0xEC00000065676172;
        v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v72);
        v66 = v47._countAndFlagsBits;
        v48 = v47._object;

        v49 = [v43 mainBundle];
        v62 = 0x8000000100ACA5C0;
        v50 = 0xD000000000000038;
        v51 = 0x8000000100ACA580;
        v52 = 0xD00000000000003FLL;
      }

      else
      {
        v53._countAndFlagsBits = 0xD000000000000028;
        v73._object = 0x8000000100ACA370;
        v53._object = 0x8000000100ACA340;
        v73._countAndFlagsBits = 0xD0000000000000A4;
        v54._countAndFlagsBits = 0x657661206D6F7266;
        v54._object = 0xEC00000065676172;
        v55 = NSLocalizedString(_:tableName:bundle:value:comment:)(v53, 0, v44, v54, v73);
        v66 = v55._countAndFlagsBits;
        v48 = v55._object;

        v49 = [v43 mainBundle];
        v62 = 0x8000000100ACA460;
        v51 = 0x8000000100ACA420;
        v52 = 0xD000000000000048;
        v50 = 0xD000000000000031;
      }

      v56._countAndFlagsBits = 0x206D6F7266204025;
      v56._object = 0xEF65676172657661;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v49, v56, *&v52);

      sub_10022C350(&qword_100CA40C8);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100A2C3F0;
      *(v57 + 56) = &type metadata for String;
      *(v57 + 64) = sub_100035744();
      v58 = v64;
      *(v57 + 32) = v65;
      *(v57 + 40) = v58;

      v30 = static String.localizedStringWithFormat(_:_:)();
      v32 = v59;

      object = v48;
      countAndFlagsBits = v66;
      v60 = String.replacingHyphensWithMinusSigns()();
      result = v60._countAndFlagsBits;
      v20 = v60._object;
    }
  }

  else
  {
    v64 = sub_10046E020(a1, a2);
    v20 = v19;
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v23._countAndFlagsBits = 0xD000000000000029;
    v69._object = 0x8000000100ACA6C0;
    v24._countAndFlagsBits = 0x76612065766F6261;
    v24._object = 0xED00006567617265;
    v23._object = 0x8000000100ACA690;
    v69._countAndFlagsBits = 0xD000000000000097;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v69);
    v65 = v25._object;
    v66 = v25._countAndFlagsBits;

    v26 = [v21 mainBundle];
    v27._countAndFlagsBits = 0xD000000000000011;
    v70._object = 0x8000000100ACA7C0;
    v28._object = 0x8000000100ACA760;
    v27._object = 0x8000000100ACA7A0;
    v70._countAndFlagsBits = 0xD00000000000004ALL;
    v28._countAndFlagsBits = 0xD000000000000031;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v28, 0, v26, v27, v70);

    sub_10022C350(&qword_100CA40C8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;

    v30 = static String.localizedStringWithFormat(_:_:)();
    v32 = v31;

    if (v67)
    {

      v20 = a2;
      result = a1;
    }

    else
    {
      result = v64;
    }

    object = v65;
    countAndFlagsBits = v66;
  }

  v61 = v68;
  *v68 = result;
  v61[1] = v20;
  v61[2] = countAndFlagsBits;
  v61[3] = object;
  v61[4] = v30;
  v61[5] = v32;
  return result;
}

uint64_t sub_10046D8EC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v69 = a3;
  v70 = a4;
  v8 = sub_10022C350(&qword_100CBB580);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v65 - v10;
  v12 = sub_10022C350(&qword_100CA53F8);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  if (a5 <= 0.0)
  {
    v66 = a2;
    v67 = a1;
    if (v69 & 1) != 0 && (sub_10022C350(&unk_100CABCA0), Trend.currentValue.getter(), Trend.baseline.getter(), TrendBaseline.value.getter(), (*(v9 + 8))(v11, v8), sub_10000C70C(0, &qword_100CA51B0), v34 = static Measurement.< infix<A, B>(_:_:)(), v35 = *(v13 + 8), v35(v15, v12), v35(v18, v12), (v34))
    {
      v36 = [objc_opt_self() mainBundle];
      v73._object = 0x8000000100AC9DF0;
      v32 = 0xE000000000000000;
      v37._countAndFlagsBits = 0xD000000000000018;
      v37._object = 0x8000000100AC9DD0;
      v73._countAndFlagsBits = 0xD000000000000085;
      v38._countAndFlagsBits = 0;
      v38._object = 0xE000000000000000;
      v39 = NSLocalizedString(_:tableName:bundle:value:comment:)(v37, 0, v36, v38, v73);
      countAndFlagsBits = v39._countAndFlagsBits;
      object = v39._object;

      v42 = String.trimmingHyphensAndMinusSigns()();
      result = v42._countAndFlagsBits;
      v20 = v42._object;
      v30 = 0;
    }

    else
    {
      v43 = objc_opt_self();
      v44 = [v43 mainBundle];
      if (a5 == 0.0)
      {
        v74._object = 0x8000000100AC9C60;
        v45._countAndFlagsBits = 0xD00000000000002ELL;
        v45._object = 0x8000000100AC9C30;
        v46._object = 0x8000000100AC9A80;
        v74._countAndFlagsBits = 0x10000000000000ABLL;
        v46._countAndFlagsBits = 0xD000000000000017;
        v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v45, 0, v44, v46, v74);
        v68 = v47._countAndFlagsBits;
        v48 = v47._object;

        v49 = [v43 mainBundle];
        v64 = 0x8000000100AC9D60;
        v50 = 0xD000000000000044;
        v51 = 0x8000000100AC9D10;
        v52 = 0xD00000000000001ALL;
        v53 = 0x8000000100AC9BA0;
        v54 = 0x1000000000000062;
        v55.super.isa = v49;
      }

      else
      {
        v75._object = 0x8000000100AC9AA0;
        v56._countAndFlagsBits = 0xD000000000000034;
        v56._object = 0x8000000100AC9A40;
        v57._object = 0x8000000100AC9A80;
        v75._countAndFlagsBits = 0x10000000000000B2;
        v57._countAndFlagsBits = 0xD000000000000017;
        v58 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v44, v57, v75);
        v68 = v58._countAndFlagsBits;
        v48 = v58._object;

        v49 = [v43 mainBundle];
        v64 = 0x8000000100AC9BC0;
        v50 = 0xD00000000000003DLL;
        v51 = 0x8000000100AC9B60;
        v52 = 0xD00000000000001ALL;
        v53 = 0x8000000100AC9BA0;
        v55.super.isa = v49;
        v54 = 0x1000000000000060;
      }

      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v50, 0, v55, *&v52, *&v54);

      sub_10022C350(&qword_100CA40C8);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_100A2C3F0;
      *(v59 + 56) = &type metadata for String;
      *(v59 + 64) = sub_100035744();
      v60 = v66;
      *(v59 + 32) = v67;
      *(v59 + 40) = v60;

      v30 = static String.localizedStringWithFormat(_:_:)();
      v32 = v61;

      object = v48;
      countAndFlagsBits = v68;
      v62 = String.replacingHyphensWithMinusSigns()();
      result = v62._countAndFlagsBits;
      v20 = v62._object;
    }
  }

  else
  {
    v66 = sub_10046E020(a1, a2);
    v20 = v19;
    v21 = objc_opt_self();
    v22 = [v21 mainBundle];
    v71._object = 0x8000000100AC9EE0;
    v23._countAndFlagsBits = 0xD000000000000035;
    v23._object = 0x8000000100AC9E80;
    v24._countAndFlagsBits = 0xD000000000000018;
    v24._object = 0x8000000100AC9EC0;
    v71._countAndFlagsBits = 0x10000000000000A5;
    v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v71);
    v67 = v25._object;
    v68 = v25._countAndFlagsBits;

    v26 = [v21 mainBundle];
    v72._object = 0x8000000100AC9FF0;
    v27._countAndFlagsBits = 0xD00000000000003DLL;
    v27._object = 0x8000000100AC9F90;
    v28._countAndFlagsBits = 0xD00000000000001CLL;
    v28._object = 0x8000000100AC9FD0;
    v72._countAndFlagsBits = 0x1000000000000060;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v72);

    sub_10022C350(&qword_100CA40C8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100A2C3F0;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100035744();
    *(v29 + 32) = a1;
    *(v29 + 40) = a2;

    v30 = static String.localizedStringWithFormat(_:_:)();
    v32 = v31;

    if (v69)
    {

      v20 = a2;
      result = a1;
    }

    else
    {
      result = v66;
    }

    object = v67;
    countAndFlagsBits = v68;
  }

  v63 = v70;
  *v70 = result;
  v63[1] = v20;
  v63[2] = countAndFlagsBits;
  v63[3] = object;
  v63[4] = v30;
  v63[5] = v32;
  return result;
}

uint64_t sub_10046E020(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() mainBundle];
  v10._object = 0x8000000100ACA0A0;
  v5._object = 0x8000000100ACA060;
  v5._countAndFlagsBits = 0xD000000000000030;
  v6._countAndFlagsBits = 4203819;
  v6._object = 0xE300000000000000;
  v10._countAndFlagsBits = 0x1000000000000070;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v10);

  sub_10022C350(&qword_100CA40C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2C3F0;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100035744();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = static String.localizedStringWithFormat(_:_:)();

  return v8;
}

uint64_t sub_10046E15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_opt_self() mainBundle];
  v15._object = 0x8000000100AC98F0;
  v9._countAndFlagsBits = 0x4025204025;
  v10._object = 0x8000000100AC98B0;
  v10._countAndFlagsBits = 0xD000000000000037;
  v9._object = 0xE500000000000000;
  v15._countAndFlagsBits = 0x1000000000000142;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v8, v9, v15);

  sub_10022C350(&qword_100CA40C8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100A2D320;
  *(v11 + 56) = &type metadata for String;
  v12 = sub_100035744();
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 96) = &type metadata for String;
  *(v11 + 104) = v12;
  *(v11 + 64) = v12;
  *(v11 + 72) = a3;
  *(v11 + 80) = a4;

  v13 = String.init(format:_:)();

  return v13;
}

uint64_t sub_10046E2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v198 = a3;
  v199 = a2;
  v223 = a1;
  v197 = a4;
  v227 = type metadata accessor for WeatherFormatPlaceholder();
  v203 = *(v227 - 8);
  __chkstk_darwin(v227);
  v224 = v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v5 - 8);
  v200 = v171 - v6;
  v7 = type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle();
  v8 = *(v7 - 8);
  v220 = v7;
  v221 = v8;
  __chkstk_darwin(v7);
  v214 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v226 = v171 - v11;
  v12 = type metadata accessor for Locale.Language();
  v216 = *(v12 - 8);
  v217 = v12;
  __chkstk_darwin(v12);
  v210 = v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for Locale();
  v209 = *(v204 - 8);
  __chkstk_darwin(v204);
  v205 = v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_10022C350(&qword_100CBB580);
  v212 = *(v207 - 8);
  __chkstk_darwin(v207);
  v206 = v171 - v15;
  v16 = sub_10022C350(&qword_100CA53F8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v218 = v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v202 = v171 - v20;
  __chkstk_darwin(v21);
  v23 = v171 - v22;
  __chkstk_darwin(v24);
  v26 = v171 - v25;
  __chkstk_darwin(v27);
  v208 = v171 - v28;
  v29 = sub_10022C350(&unk_100CABCA0);
  Trend.currentValue.getter();
  v30 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v31 = UnitManager.temperature.getter();

  Measurement<>.converted(to:)();

  v32 = *(v17 + 8);
  v32(v23, v16);
  Measurement.rounded.getter();
  v32(v26, v16);
  v33 = v206;
  v211 = v29;
  Trend.baseline.getter();
  v34 = v207;
  TrendBaseline.value.getter();
  v35 = *(v212 + 8);
  v212 += 8;
  v201 = v35;
  v35(v33, v34);
  v225 = v30;
  static UnitManager.standard.getter();
  v36 = UnitManager.temperature.getter();

  Measurement<>.converted(to:)();

  v32(v23, v16);
  Measurement.rounded.getter();
  v32(v26, v16);
  Measurement.rounded.getter();
  Measurement.rounded.getter();
  sub_10000C70C(0, &qword_100CA51B0);
  static Measurement<>.- infix(_:_:)();
  v32(v23, v16);
  v222 = v26;
  v219 = v16;
  v215 = v17 + 8;
  v213 = v32;
  v32(v26, v16);
  v37 = v205;
  static Locale.current.getter();
  v38 = v210;
  Locale.language.getter();
  v39 = v37;
  v40 = v204;
  (*(v209 + 8))(v39);
  v41 = Locale.Language.prefersFullTemperatureScale.getter();
  v216[1](v38, v217);
  if (v41)
  {
    static Set<>.value.getter();
    v42 = v200;
    sub_10001B350(v200, 1, 1, v40);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v42, &qword_100CAA9F0);
    LODWORD(v217) = enum case for WeatherFormatPlaceholder.none(_:);
    v43 = v203;
    v216 = *(v203 + 104);
    v210 = ((v203 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
    v44 = v224;
    v45 = v227;
    (v216)(v224);
    static UnitManager.standard.getter();
    v196 = sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v46 = v220;
    v194 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v48 = v47;

    v193 = *(v43 + 8);
    v209 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v193(v44, v45);
    v49 = v221 + 8;
    v221 = *(v221 + 1);
    v205 = (v49 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v50 = v226;
    v221(v226, v46);

    static Set<>.unit.getter();
    sub_10001B350(v42, 1, 1, v204);
    static WeatherFormatStyle<>.weather(_:locale:)();

    sub_10003FDF4(v42, &qword_100CAA9F0);
    v51 = v227;
    (v216)(v44, v217, v227);
    static UnitManager.standard.getter();
    v52 = v220;
    v53 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v195 = v54;
    v196 = v53;

    v55 = v44;
    v56 = v194;
    v193(v55, v51);
    v57 = v221;
    v221(v50, v52);
  }

  else
  {
    v58 = v226;
    static WeatherFormatStyle<>.weather.getter();
    v59 = v203;
    v60 = *(v203 + 104);
    v210 = ((v203 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000);
    v61 = v224;
    LODWORD(v217) = enum case for WeatherFormatPlaceholder.none(_:);
    v62 = v227;
    v216 = v60;
    (v60)(v224);
    static UnitManager.standard.getter();
    sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
    v63 = v220;
    v56 = Measurement.formatted<A>(_:placeholder:unitManager:)();
    v48 = v64;

    v65 = *(v59 + 8);
    v209 = (v59 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v65(v61, v62);
    v57 = *(v221 + 1);
    v205 = ((v221 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v57(v58, v63);

    v195 = 0;
    v196 = 0;
  }

  v66 = v219;
  Measurement.value.getter();
  sub_10046D8EC(v56, v48, 0, v229, v67);
  v189 = v229[1];
  v190 = v229[0];
  v193 = v229[3];
  v194 = v229[2];
  v191 = v229[5];
  v192 = v229[4];

  Measurement.value.getter();
  sub_10046D8EC(v56, v48, 1, v229, v68);
  v69 = v229[0];
  v70 = v229[1];
  v71 = v229[2];
  v72 = v229[3];

  v73 = sub_10046E15C(v69, v70, v71, v72);
  v185 = v74;
  v186 = v73;

  v75 = objc_opt_self();
  v76 = [v75 mainBundle];
  v77._countAndFlagsBits = 0xD00000000000001ELL;
  v230._object = 0x8000000100AC9590;
  v78._countAndFlagsBits = 0x7961646F54;
  v77._object = 0x8000000100AC9570;
  v230._countAndFlagsBits = 0xD00000000000003DLL;
  v78._object = 0xE500000000000000;
  v79 = NSLocalizedString(_:tableName:bundle:value:comment:)(v77, 0, v76, v78, v230);
  object = v79._object;
  countAndFlagsBits = v79._countAndFlagsBits;

  v178 = "'s High value for temperature";
  v172 = v75;
  v80 = [v75 mainBundle];
  v231._object = 0x8000000100AC9600;
  v81._countAndFlagsBits = 0x2073277961646F54;
  v81._object = 0xEC00000068676948;
  v82._object = 0x8000000100AC95D0;
  v231._countAndFlagsBits = 0xD00000000000004BLL;
  v82._countAndFlagsBits = 0xD00000000000002CLL;
  v83 = NSLocalizedString(_:tableName:bundle:value:comment:)(v82, 0, v80, v81, v231);
  v181 = v83._object;
  v182 = v83._countAndFlagsBits;

  v84 = [v75 mainBundle];
  v232._object = 0x8000000100AC9690;
  v85._countAndFlagsBits = 0xD00000000000003BLL;
  v85._object = 0x8000000100AC9650;
  v86._countAndFlagsBits = 1076181576;
  v86._object = 0xE400000000000000;
  v232._countAndFlagsBits = 0x100000000000004BLL;
  v87 = NSLocalizedString(_:tableName:bundle:value:comment:)(v85, 0, v84, v86, v232);
  v184 = v87._countAndFlagsBits;
  v180 = v87._object;

  v200 = sub_10022C350(&qword_100CA40C8);
  v88 = swift_allocObject();
  v174 = xmmword_100A2C3F0;
  *(v88 + 16) = xmmword_100A2C3F0;
  Trend.currentValue.getter();
  v89 = v226;
  static WeatherFormatStyle<>.weather.getter();
  v90 = v214;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v91 = v66;
  v92 = v220;
  v57(v89, v220);
  v221 = v57;
  v93 = v224;
  v94 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v204 = sub_10006CA94(&qword_100CA5410, 255, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v95 = v222;
  v183 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v179 = v96;

  v203 = *(v203 + 8);
  (v203)(v93, v94);
  v57(v90, v92);
  v213(v95, v91);
  *(v88 + 56) = &type metadata for String;
  v173 = sub_100035744();
  *(v88 + 64) = v173;
  v97 = v179;
  *(v88 + 32) = v183;
  *(v88 + 40) = v97;
  v98 = String.init(format:_:)();
  v183 = v99;
  v184 = v98;

  v100 = v172;
  v101 = [v172 mainBundle];
  v102._countAndFlagsBits = 0xD000000000000017;
  v233._object = 0x8000000100AC9700;
  v103._countAndFlagsBits = 0x65676172657641;
  v102._object = 0x8000000100AC96E0;
  v233._countAndFlagsBits = 0xD000000000000041;
  v103._object = 0xE700000000000000;
  v104 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v101, v103, v233);
  v179 = v104._object;
  v180 = v104._countAndFlagsBits;

  v105 = [v100 mainBundle];
  v234._object = 0x8000000100AC9750;
  v106._countAndFlagsBits = 0x2065676172657641;
  v107._object = (v178 | 0x8000000000000000);
  v234._countAndFlagsBits = 0xD00000000000004BLL;
  v107._countAndFlagsBits = 0xD00000000000002CLL;
  v106._object = 0xEC00000068676948;
  v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v107, 0, v105, v106, v234);
  v175 = v108._object;
  v176 = v108._countAndFlagsBits;

  v109 = [v100 mainBundle];
  v110._countAndFlagsBits = 0xD000000000000020;
  v235._object = 0x8000000100AC97D0;
  v110._object = 0x8000000100AC97A0;
  v235._countAndFlagsBits = 0xD00000000000004ALL;
  v111._countAndFlagsBits = 6780481;
  v111._object = 0xE300000000000000;
  v112 = NSLocalizedString(_:tableName:bundle:value:comment:)(v110, 0, v109, v111, v235);
  v177 = v112._object;
  v178 = v112._countAndFlagsBits;

  v113 = [v100 mainBundle];
  v236._object = 0x8000000100AC9860;
  v114._countAndFlagsBits = 0xD00000000000003ELL;
  v114._object = 0x8000000100AC9820;
  v236._countAndFlagsBits = 0x100000000000004FLL;
  v115._countAndFlagsBits = 1076181576;
  v115._object = 0xE400000000000000;
  v116 = NSLocalizedString(_:tableName:bundle:value:comment:)(v114, 0, v113, v115, v236);
  v171[1] = v116._object;
  v172 = v116._countAndFlagsBits;

  v117 = swift_allocObject();
  *(v117 + 16) = v174;
  v118 = v206;
  Trend.baseline.getter();
  v119 = v207;
  TrendBaseline.value.getter();
  v201(v118, v119);
  v120 = v226;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v121 = v220;
  v221(v120, v220);
  v122 = v224;
  v123 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v124 = v219;
  v125 = v222;
  v126 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v200 = v127;

  (v203)(v122, v123);
  v128 = v214;
  v129 = v221;
  v221(v214, v121);
  v213(v125, v124);
  v130 = v173;
  *(v117 + 56) = &type metadata for String;
  *(v117 + 64) = v130;
  v131 = v200;
  *(v117 + 32) = v126;
  *(v117 + 40) = v131;
  v132 = String.init(format:_:)();
  v173 = v133;
  *&v174 = v132;

  sub_10022C350(&qword_100CA7300);
  v134 = swift_allocObject();
  v200 = v134;
  *(v134 + 16) = xmmword_100A3BBA0;
  v135 = v185;
  *(v134 + 32) = v186;
  *(v134 + 40) = v135;
  Trend.currentValue.getter();
  v136 = v226;
  static WeatherFormatStyle<>.weather.getter();
  v137 = v128;
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v129(v136, v121);
  v138 = v224;
  v139 = v227;
  (v216)(v224, v217, v227);
  static UnitManager.standard.getter();
  v140 = v138;
  v141 = v219;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v144 = v143;

  (v203)(v140, v139);
  v221(v137, v121);
  v213(v222, v141);
  v229[0] = v142;
  v229[1] = v144;

  v145._countAndFlagsBits = 8250;
  v145._object = 0xE200000000000000;
  String.append(_:)(v145);
  v146._countAndFlagsBits = v182;
  v146._object = v181;
  String.append(_:)(v146);

  v147 = v229[1];
  v148 = v200;
  *(v200 + 48) = v229[0];
  *(v148 + 56) = v147;
  v149 = v206;
  Trend.baseline.getter();
  v150 = v207;
  TrendBaseline.value.getter();
  v201(v149, v150);
  v151 = v226;
  static WeatherFormatStyle<>.weather.getter();
  NSUnitTemperature.BaseWeatherFormatStyle.secondary.getter();
  v152 = v220;
  v153 = v221;
  v221(v151, v220);
  v154 = v224;
  (v216)(v224, v217, v139);
  static UnitManager.standard.getter();
  v155 = v154;
  v156 = v141;
  v157 = v152;
  v158 = v222;
  v159 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v161 = v160;

  (v203)(v155, v227);
  v153(v214, v157);
  v162 = v213;
  v213(v158, v156);
  v229[0] = v159;
  v229[1] = v161;

  v163._countAndFlagsBits = 8250;
  v163._object = 0xE200000000000000;
  String.append(_:)(v163);
  v164._countAndFlagsBits = v176;
  v164._object = v175;
  String.append(_:)(v164);

  v165 = v229[1];
  v166 = v200;
  *(v200 + 64) = v229[0];
  *(v166 + 72) = v165;
  v229[0] = v166;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v167 = BidirectionalCollection<>.joined(separator:)();
  v169 = v168;

  v228[0] = v190;
  v228[1] = v189;
  v228[2] = v196;
  v228[3] = v195;
  v228[4] = v194;
  v228[5] = v193;
  v228[6] = v192;
  v228[7] = v191;
  v228[8] = countAndFlagsBits;
  v228[9] = object;
  v228[10] = 0;
  v228[11] = 0;
  v228[12] = v184;
  v228[13] = v183;
  v228[14] = v180;
  v228[15] = v179;
  v228[16] = v178;
  v228[17] = v177;
  v228[18] = v174;
  v228[19] = v173;
  v228[20] = v167;
  v228[21] = v169;
  memcpy(v229, v228, 0xB0uLL);
  sub_10046F828(v229, 0, v198, v197);
  sub_100470A18(v228);
  v162(v218, v156);
  v162(v202, v156);
  return (v162)(v208, v156);
}

uint64_t sub_10046F828@<X0>(const void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [objc_opt_self() mainBundle];
  v19._object = 0x8000000100ACA810;
  v9._countAndFlagsBits = 0x7365676172657641;
  v19._countAndFlagsBits = 0xD00000000000003ALL;
  v9._object = 0xE800000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v19);

  *a4 = v11;
  *(a4 + 16) = 0xD000000000000019;
  *(a4 + 24) = 0x8000000100ACA850;
  *(a4 + 32) = 0;
  type metadata accessor for LocationComponentHeaderViewModel(0);
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for LocationComponentContainerViewModel();
  memcpy((a4 + v12[5]), a1, 0xB0uLL);
  type metadata accessor for LocationComponentViewModel();
  swift_storeEnumTagMultiPayload();
  v13 = (a4 + v12[8]);
  v14 = *(sub_10022C350(&qword_100CA6688) + 48);
  *v13 = a2 & 1;
  v15 = type metadata accessor for Location();
  (*(*(v15 - 8) + 16))(&v13[v14], a3, v15);
  v16 = type metadata accessor for LocationComponentAction(0);
  swift_storeEnumTagMultiPayload();
  sub_10001B350(v13, 0, 1, v16);
  sub_100470A6C(a1, v18);
  sub_10013D288();
  result = Dictionary.init(dictionaryLiteral:)();
  *(a4 + v12[6]) = 256;
  *(a4 + v12[7]) = result;
  return result;
}

uint64_t sub_10046FA40@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v129 = a4;
  v130 = a3;
  v168 = a2;
  v128 = a5;
  v137 = type metadata accessor for WeatherFormatPlaceholder();
  v167 = *(v137 - 8);
  __chkstk_darwin(v137);
  v135 = &countAndFlagsBits - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CAA9F0);
  __chkstk_darwin(v7 - 8);
  v154 = &countAndFlagsBits - v8;
  v136 = type metadata accessor for NSUnitLength.BaseWeatherFormatStyle();
  v166 = *(v136 - 8);
  __chkstk_darwin(v136);
  v133 = &countAndFlagsBits - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_10022C350(&qword_100CBC0E8);
  v160 = *(v150 - 8);
  __chkstk_darwin(v150);
  v149 = &countAndFlagsBits - v10;
  v11 = type metadata accessor for WeatherFormatScaling();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &countAndFlagsBits - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_10022C350(&qword_100CAB938);
  v15 = *(v169 - 8);
  __chkstk_darwin(v169);
  v117 = &countAndFlagsBits - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v162 = &countAndFlagsBits - v18;
  __chkstk_darwin(v19);
  v21 = &countAndFlagsBits - v20;
  __chkstk_darwin(v22);
  v153 = &countAndFlagsBits - v23;
  v161 = sub_10022C350(&qword_100CBC0D0);
  v131 = a1;
  Trend.currentValue.getter();
  v156 = enum case for WeatherFormatScaling.automatic(_:);
  v157 = *(v12 + 104);
  v155 = v12 + 104;
  v134 = v14;
  v163 = v11;
  v157(v14);
  Measurement<>.converted(usage:scaling:)();
  v158 = *(v12 + 8);
  v159 = v12 + 8;
  v158(v14, v11);
  v24 = *(v15 + 8);
  v164 = v15 + 8;
  v165 = v24;
  v25 = v21;
  v24(v21, v169);
  v26 = v149;
  Trend.baseline.getter();
  v27 = v162;
  v28 = v150;
  TrendBaseline.value.getter();
  v29 = *(v160 + 8);
  v160 += 8;
  v120 = v29;
  v29(v26, v28);
  v30 = v134;
  v31 = v156;
  v32 = v163;
  v33 = v157;
  (v157)(v134, v156, v163);
  v127 = v25;
  Measurement<>.converted(usage:scaling:)();
  v34 = v30;
  v35 = v30;
  v36 = v158;
  v158(v34, v32);
  v165(v27, v169);
  sub_10000C70C(0, &qword_100CAB968);
  static Measurement<>.- infix(_:_:)();
  v147 = type metadata accessor for Locale();
  v37 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v38 = v163;
  v33(v35, v31, v163);
  v39 = v133;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v36(v35, v38);
  sub_10003FDF4(v37, &qword_100CAA9F0);
  v146 = enum case for WeatherFormatPlaceholder.none(_:);
  v40 = v167;
  v41 = *(v167 + 104);
  v144 = v167 + 104;
  v145 = v41;
  v42 = v135;
  v43 = v137;
  v41(v135);
  v143 = type metadata accessor for UnitManager();
  static UnitManager.standard.getter();
  v141 = sub_10006CA94(&qword_100CAB948, 255, &type metadata accessor for NSUnitLength.BaseWeatherFormatStyle);
  v44 = v136;
  v152 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v46 = v45;

  v47 = *(v40 + 8);
  v167 = v40 + 8;
  v140 = v47;
  v47(v42, v43);
  v48 = v166[1];
  ++v166;
  v139 = v48;
  v48(v39, v44);
  Measurement.value.getter();
  v49 = v152;
  sub_10046D1A8(v152, v46, 0, v171, v50);
  v121 = v171[1];
  v122 = v171[0];
  v125 = v171[3];
  v126 = v171[2];
  v123 = v171[5];
  v124 = v171[4];
  Measurement.value.getter();
  sub_10046D1A8(v49, v46, 1, v171, v51);
  v52 = v171[0];
  v53 = v171[1];
  v54 = v171[2];
  v55 = v171[3];

  v56 = sub_10046E15C(v52, v53, v54, v55);
  v115 = v57;
  v116 = v56;

  v148 = objc_opt_self();
  v58 = [v148 mainBundle];
  v172._object = 0x8000000100ACA160;
  v59._countAndFlagsBits = 0x206425207473614CLL;
  v59._object = 0xEC00000073796164;
  v60._countAndFlagsBits = 0xD000000000000037;
  v60._object = 0x8000000100ACA120;
  v172._countAndFlagsBits = 0xD000000000000038;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v60, 0, v58, v59, v172);

  v119 = sub_10022C350(&qword_100CA40C8);
  v61 = swift_allocObject();
  v118 = xmmword_100A2C3F0;
  *(v61 + 16) = xmmword_100A2C3F0;
  *(v61 + 56) = &type metadata for Int;
  *(v61 + 64) = &protocol witness table for Int;
  *(v61 + 32) = 30;
  v62 = String.init(format:_:)();
  v151 = v63;
  v152 = v62;

  v64 = v117;
  Trend.currentValue.getter();
  v65 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v66 = v134;
  v67 = v163;
  (v157)(v134, v156, v163);
  v68 = v133;
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v158(v66, v67);
  sub_10003FDF4(v65, &qword_100CAA9F0);
  v69 = v135;
  v70 = v137;
  v145(v135, v146, v137);
  static UnitManager.standard.getter();
  v71 = v169;
  v72 = v136;
  v73 = v64;
  v142 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v132 = v74;

  v75 = v70;
  v140(v69, v70);
  v139(v68, v72);
  v76 = v73;
  v165(v73, v71);
  v77 = [v148 mainBundle];
  v173._object = 0x8000000100ACA1E0;
  v78._countAndFlagsBits = 0x65676172657641;
  v79._countAndFlagsBits = 0xD000000000000034;
  v79._object = 0x8000000100ACA1A0;
  v78._object = 0xE700000000000000;
  v173._countAndFlagsBits = 0xD00000000000002FLL;
  v80 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v77, v78, v173);
  countAndFlagsBits = v80._countAndFlagsBits;
  object = v80._object;

  v81 = v149;
  Trend.baseline.getter();
  v82 = v150;
  TrendBaseline.value.getter();
  v120(v81, v82);
  v83 = v154;
  sub_10001B350(v154, 1, 1, v147);
  static Set<>.full.getter();
  v84 = v163;
  (v157)(v66, v156, v163);
  static WeatherFormatStyle<>.weather(_:usage:scaling:trimLeadingZeroes:locale:)();

  v158(v66, v84);
  sub_10003FDF4(v83, &qword_100CAA9F0);
  v145(v69, v146, v75);
  static UnitManager.standard.getter();
  v85 = v169;
  v86 = Measurement.formatted<A>(_:placeholder:unitManager:)();
  v163 = v86;
  v168 = v87;

  v140(v69, v75);
  v139(v68, v72);
  v165(v76, v85);
  sub_10022C350(&qword_100CA7300);
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_100A3BBA0;
  v89 = v115;
  *(v88 + 32) = v116;
  *(v88 + 40) = v89;
  v171[0] = v142;
  v171[1] = v132;

  v90._countAndFlagsBits = 8250;
  v90._object = 0xE200000000000000;
  String.append(_:)(v90);
  v91._object = v151;
  v91._countAndFlagsBits = v152;
  String.append(_:)(v91);
  v92 = v171[1];
  *(v88 + 48) = v171[0];
  *(v88 + 56) = v92;
  v171[0] = v86;
  v171[1] = v168;

  v93._countAndFlagsBits = 8250;
  v93._object = 0xE200000000000000;
  String.append(_:)(v93);
  v94 = countAndFlagsBits;
  v95._countAndFlagsBits = countAndFlagsBits;
  v95._object = object;
  String.append(_:)(v95);
  v96 = v171[1];
  *(v88 + 64) = v171[0];
  *(v88 + 72) = v96;
  v171[0] = v88;
  sub_10022C350(&qword_100CCC930);
  sub_1001141C8();
  v97 = BidirectionalCollection<>.joined(separator:)();
  v166 = v98;
  v167 = v97;

  v99 = v148;
  v100 = [v148 mainBundle];
  v174._object = 0x8000000100ACA260;
  v101._countAndFlagsBits = 0x646425207473614CLL;
  v102._countAndFlagsBits = 0xD000000000000040;
  v102._object = 0x8000000100ACA210;
  v174._countAndFlagsBits = 0xD00000000000004ELL;
  v101._object = 0xE800000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v102, 0, v100, v101, v174);

  v103 = swift_allocObject();
  *(v103 + 16) = v118;
  *(v103 + 56) = &type metadata for Int;
  *(v103 + 64) = &protocol witness table for Int;
  *(v103 + 32) = 30;
  v104 = String.init(format:_:)();
  v106 = v105;

  v107 = [v99 mainBundle];
  v175._object = 0x8000000100ACA2F0;
  v108._countAndFlagsBits = 0xD00000000000003DLL;
  v108._object = 0x8000000100ACA2B0;
  v175._countAndFlagsBits = 0xD000000000000045;
  v109._countAndFlagsBits = 6780481;
  v109._object = 0xE300000000000000;
  v110 = NSLocalizedString(_:tableName:bundle:value:comment:)(v108, 0, v107, v109, v175);

  v170[0]._countAndFlagsBits = v122;
  v170[0]._object = v121;
  v170[1]._countAndFlagsBits = 0;
  v170[1]._object = 0;
  v170[2]._countAndFlagsBits = v126;
  v170[2]._object = v125;
  v170[3]._countAndFlagsBits = v124;
  v170[3]._object = v123;
  v170[4]._countAndFlagsBits = v152;
  v170[4]._object = v151;
  v170[5]._countAndFlagsBits = v104;
  v170[5]._object = v106;
  v170[6]._countAndFlagsBits = v142;
  v170[6]._object = v132;
  v170[7]._countAndFlagsBits = v94;
  v170[7]._object = object;
  v170[8] = v110;
  v170[9]._countAndFlagsBits = v163;
  v170[9]._object = v168;
  v170[10]._countAndFlagsBits = v167;
  v170[10]._object = v166;
  memcpy(v171, v170, 0xB0uLL);
  sub_10046F828(v171, 1, v129, v128);
  sub_100470A18(v170);
  v111 = v169;
  v112 = v165;
  v165(v162, v169);
  v112(v127, v111);
  return (v112)(v153, v111);
}

uint64_t sub_1004709A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CABD10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for HomeAndWorkRefinementRowViewModel.InfoButtonPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100470BC4()
{
  result = qword_100CBC188;
  if (!qword_100CBC188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC188);
  }

  return result;
}

uint64_t sub_100470C18(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v5 = type metadata accessor for HomeAndWorkRefinementRowViewModel();
    if (static Location.== infix(_:_:)() & 1) != 0 && (static LocationOfInterest.== infix(_:_:)())
    {
      v2 = a1[*(v5 + 28)] ^ a2[*(v5 + 28)] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100470CB8(uint64_t a1)
{
  v290 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v2);
  sub_1000038E4();
  v294 = v3;
  sub_1000038CC();
  v289 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000038E4();
  v293 = v5;
  sub_1000038CC();
  v288 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000037D8();
  v9 = v8 - v7;
  v287 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v286 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  v292 = v15;
  sub_1000038CC();
  v284 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  v291 = v17;
  v18 = sub_1000038CC();
  v268 = type metadata accessor for ModalViewState(v18);
  sub_1000037E8();
  __chkstk_darwin(v19);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v20);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v21);
  sub_10000E70C();
  sub_100003990(v22);
  v23 = sub_10022C350(&qword_100CA65E8);
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v25);
  sub_10000E70C();
  sub_100003990(v26);
  v279 = type metadata accessor for WeatherMapPresentationState(0);
  sub_1000037E8();
  __chkstk_darwin(v27);
  sub_1000038E4();
  sub_100003990(v28);
  v262 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_1000038E4();
  v280 = v30;
  v31 = sub_1000038CC();
  v258 = type metadata accessor for ViewState.SecondaryViewState(v31);
  sub_1000037E8();
  __chkstk_darwin(v32);
  sub_1000038E4();
  sub_100003990(v33);
  v34 = sub_10022C350(&qword_100CA65F0);
  v35 = sub_100003810(v34);
  __chkstk_darwin(v35);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_10000E70C();
  sub_100003990(v37);
  v38 = sub_10022C350(&qword_100CA65F8);
  v39 = sub_100003810(v38);
  __chkstk_darwin(v39);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v40);
  sub_10000E70C();
  sub_100003990(v41);
  v42 = sub_10022C350(&qword_100CA6608);
  v43 = sub_100003810(v42);
  __chkstk_darwin(v43);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v44);
  sub_10000E70C();
  sub_100003990(v45);
  v46 = sub_10022C350(&qword_100CA6610);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_10000E70C();
  sub_100003990(v49);
  v50 = sub_10022C350(&qword_100CA6618);
  v51 = sub_100003810(v50);
  __chkstk_darwin(v51);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v52);
  sub_10000E70C();
  v285 = v53;
  v54 = sub_10022C350(&qword_100CA6620);
  v55 = sub_100003810(v54);
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_10000E70C();
  v283 = v57;
  v58 = sub_10022C350(&qword_100CA6628);
  v59 = sub_100003810(v58);
  __chkstk_darwin(v59);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v60);
  sub_10000E70C();
  v282 = v61;
  v62 = sub_10022C350(&qword_100CA6630);
  v63 = sub_100003810(v62);
  __chkstk_darwin(v63);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_10000E70C();
  v281 = v65;
  v66 = sub_10022C350(&qword_100CA6638);
  v67 = sub_100003810(v66);
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_10000E70C();
  sub_100003990(v69);
  v70 = sub_10022C350(&qword_100CA6640);
  v71 = sub_100003810(v70);
  __chkstk_darwin(v71);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v72);
  sub_10000E70C();
  sub_100003990(v73);
  v74 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v75);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  v297 = v77;
  __chkstk_darwin(v78);
  v80 = (&v246 - v79);
  v81 = sub_10022C350(&qword_100CA6600);
  v82 = sub_100003810(v81);
  __chkstk_darwin(v82);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v84);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v85);
  v87 = &v246 - v86;
  v88 = type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v89);
  sub_1000037D8();
  v92 = v91 - v90;
  v295 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  v296 = v74;
  sub_100095588();
  v93 = type metadata accessor for SearchViewState(0);
  v94 = sub_10000C834();
  sub_1000038B4(v94, v95, v93);
  if (v96)
  {
    sub_1000180EC(v87, &qword_100CA6600);
    return 1;
  }

  sub_1000BB878();
  sub_1000AFFAC(v87, type metadata accessor for SearchViewState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1000AFFAC(v92, type metadata accessor for SearchViewState.ViewState);
  if (EnumCaseMultiPayload != 1)
  {
    return 1;
  }

  v251 = v88;
  v253 = a1;
  sub_100008698();
  sub_1000BB878();
  v98 = *v80;
  v96 = *(v80 + v296[9] + 8) == 1;
  *&v256 = v9;
  v255 = v13;
  v254 = v93;
  if (v96)
  {
    v99 = objc_opt_self();

    v100 = [v99 currentDevice];
    [v100 userInterfaceIdiom];

    v101 = *(v80 + v296[7]);
    sub_100004280();
    sub_1000AFFAC(v80, v102);
    v96 = v101 == 1;
    v111 = v287;
    v110 = v288;
    if (v96)
    {

      type metadata accessor for ListViewState._Storage();
      swift_allocObject();
      sub_10000E7B0();
      v98 = sub_100042DA8(v103, v104, v105, 0, 0, 0, 0xE000000000000000, 0, 0, 0, 0, 0, 1, 0);
    }

    v109 = v289;
    v108 = v290;
  }

  else
  {

    sub_100004280();
    sub_1000AFFAC(v80, v107);
    v109 = v289;
    v108 = v290;
    v111 = v287;
    v110 = v288;
  }

  sub_100003934();
  sub_10001B350(v112, v113, v114, v284);
  sub_100003934();
  sub_10001B350(v115, v116, v117, v286);
  sub_100003934();
  sub_10001B350(v118, v119, v120, v111);
  sub_100003934();
  sub_10001B350(v121, v122, v123, v110);
  sub_100003934();
  sub_10001B350(v124, v125, v126, v109);
  sub_100003934();
  sub_10001B350(v127, v128, v129, v108);
  sub_100008698();
  sub_1000BB878();
  v248 = *(v98 + 16);
  v130 = *(v98 + 24);
  v131 = *(v98 + 25);
  HIDWORD(v247) = *(v98 + 26);
  v132 = *(v98 + 56);
  v252 = *(v98 + 48);
  v133 = *(v98 + 64);
  v135 = *(v98 + 72);
  v134 = *(v98 + 80);
  v136 = *(v98 + 88);
  v137 = *(v98 + 89);
  v138 = *(v98 + 27);
  type metadata accessor for ListViewState._Storage();
  swift_allocObject();
  v249 = v134;
  v250 = v132;
  v139 = sub_100042DA8(v248, v130, v131, SBYTE4(v247), v138, 0, 0xE000000000000000, v252, v132, v133, v135, v134, v136, v137);
  sub_100003934();
  v140 = v258;
  sub_10001B350(v141, v142, v143, v258);
  v144 = v254;
  v145 = v277;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for Location();
  sub_100003934();
  sub_10001B350(v146, v147, v148, v149);
  *v145 = 0;
  v145[1] = 0xE000000000000000;
  *(v145 + *(v144 + 24)) = 0;
  sub_10000E7B0();
  sub_10001B350(v150, v151, v152, v144);
  sub_100003934();
  v153 = v262;
  sub_10001B350(v154, v155, v156, v262);
  sub_100003934();
  sub_10001B350(v157, v158, v159, v279);
  v160 = v257;
  sub_100095588();
  sub_1000038B4(v160, 1, v140);
  v252 = v139;
  if (v96)
  {
    v166 = v296;
    v165 = v297;
    sub_100019808(v296[5]);
    sub_1000BB878();
    v161 = sub_100024D10(v160, 1, v140);
    v162 = v160;
    v163 = v161;

    v164 = v274;
    if (v163 != 1)
    {
      sub_1000180EC(v162, &qword_100CA6608);
    }
  }

  else
  {
    sub_100013830();
    sub_1000A0838();

    v164 = v274;
    v166 = v296;
    v165 = v297;
  }

  LODWORD(v274) = *(v165 + v166[6]);
  v167 = [objc_opt_self() currentDevice];
  v168 = v165;
  v169 = [v167 userInterfaceIdiom];

  sub_1000180EC(v278, &qword_100CA6608);
  if (v169 && *(v168 + v166[9] + 8) == 2)
  {
    v170 = 1;
  }

  else
  {
    v170 = *(v168 + v166[7]);
  }

  LODWORD(v278) = v170;
  v171 = v279;
  v172 = *(&v256 + 1);
  sub_100051BBC();
  v173 = sub_10000C834();
  v174 = v254;
  sub_1000038B4(v173, v175, v254);
  v176 = v253;
  if (v96)
  {
    sub_100095588();
    v177 = sub_10000C834();
    sub_1000038B4(v177, v178, v174);
    if (!v96)
    {
      sub_1000180EC(v172, &qword_100CA6600);
    }
  }

  else
  {
    sub_1000A0838();
    sub_10000E7B0();
    sub_10001B350(v179, v180, v181, v174);
  }

  v182 = v261;
  sub_100051BBC();
  sub_1000038B4(v182, 1, v153);
  if (v96)
  {
    sub_1000BB878();
    sub_1000038B4(v182, 1, v153);
    if (!v96)
    {
      sub_1000180EC(v182, &qword_100CA65F8);
    }
  }

  else
  {
    sub_10004E5D8();
    sub_1000A0838();
  }

  v183 = v264;
  sub_100051BBC();
  sub_1000038B4(v183, 1, v171);
  if (v96)
  {
    sub_1000BB878();
    sub_1000038B4(v183, 1, v171);
    if (!v96)
    {
      sub_1000180EC(v183, &qword_100CA65F0);
    }
  }

  else
  {
    sub_100074A44();
    sub_1000A0838();
  }

  v184 = *(v297 + v166[11]);
  sub_100004280();
  sub_1000AFFAC(v185, v186);
  *v164 = v252;
  sub_100013830();
  sub_1000A0838();
  *(v164 + v166[6]) = v274;
  *(v164 + v166[7]) = v278;
  sub_100051BBC();
  sub_10004E5D8();
  sub_1000A0838();
  sub_100074A44();
  sub_1000A0838();

  *(v164 + v166[11]) = v184;
  sub_10000E7B0();
  sub_10001B350(v187, v188, v189, v166);
  sub_100003934();
  v190 = v268;
  sub_10001B350(v191, v192, v193, v268);
  sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView);
  v194 = v270;
  sub_1000BB878();
  v195 = v267;
  sub_100051BBC();
  sub_1000038B4(v195, 1, v190);
  if (v96)
  {
    sub_1000180EC(v195, &qword_100CA65E8);
  }

  else
  {
    sub_1000AFFAC(v194, type metadata accessor for ModalViewState);
    sub_100014700();
    sub_1000A0838();
  }

  v196 = v290;
  v197 = v271;
  v198 = v284;
  v199 = v265;
  v200 = v287;
  sub_100014700();
  sub_1000A0838();
  v201 = *(v176 + 16);
  LODWORD(v297) = *(v176 + 24);
  v202 = v263;
  sub_100051BBC();
  v203 = sub_1000182B8();
  sub_1000038B4(v203, v204, v198);
  v290 = v201;
  if (v96)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_appConfiguration);
    sub_1000BB878();
    v205 = sub_1000182B8();
    v207 = sub_100024D10(v205, v206, v198);

    v96 = v207 == 1;
    v208 = v286;
    if (!v96)
    {
      sub_1000180EC(v202, &qword_100CA6640);
    }
  }

  else
  {
    sub_1000A0838();

    v208 = v286;
  }

  sub_100051BBC();
  v209 = sub_1000162B0();
  sub_1000038B4(v209, v210, v208);
  if (v96)
  {
    swift_beginAccess();
    sub_1000BB878();
    v211 = sub_1000162B0();
    sub_1000038B4(v211, v212, v208);
    v213 = v269;
    if (!v96)
    {
      sub_1000180EC(v199, &qword_100CA6638);
    }
  }

  else
  {
    sub_1000A0838();
    v213 = v269;
  }

  v214 = v266;
  sub_100051BBC();
  v215 = sub_1000162B0();
  sub_1000038B4(v215, v216, v200);
  if (v96)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
    sub_1000BB878();
    v217 = sub_1000162B0();
    sub_1000038B4(v217, v218, v200);
    if (!v96)
    {
      sub_1000180EC(v214, &qword_100CA6630);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100051BBC();
  v219 = sub_1000182B8();
  v220 = v288;
  sub_1000038B4(v219, v221, v288);
  if (v96)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
    sub_1000BB878();
    v222 = sub_1000182B8();
    sub_1000038B4(v222, v223, v220);
    if (!v96)
    {
      sub_1000180EC(v213, &qword_100CA6628);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100051BBC();
  v224 = sub_10000C834();
  v225 = v289;
  sub_1000038B4(v224, v226, v289);
  if (v96)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
    sub_1000BB878();
    v227 = sub_10000C834();
    sub_1000038B4(v227, v228, v225);
    v229 = v296;
    if (!v96)
    {
      sub_1000180EC(v197, &qword_100CA6620);
    }
  }

  else
  {
    sub_1000A0838();
    v229 = v296;
  }

  v230 = v273;
  sub_100051BBC();
  sub_1000038B4(v230, 1, v196);
  if (v96)
  {
    sub_100019808(OBJC_IVAR____TtCV7Weather9MainState8_Storage_time);
    sub_1000BB878();
    sub_1000038B4(v230, 1, v196);
    if (!v96)
    {
      sub_1000180EC(v230, &qword_100CA6618);
    }
  }

  else
  {
    sub_1000A0838();
  }

  v231 = v275;
  sub_100051BBC();
  sub_1000038B4(v231, 1, v229);
  v232 = v272;
  if (v96)
  {
    sub_100008698();
    sub_1000BB878();
    sub_1000038B4(v231, 1, v229);
    if (!v96)
    {
      sub_1000180EC(v231, &qword_100CA6610);
    }
  }

  else
  {
    sub_1000A0838();
  }

  sub_100014700();
  v233 = v276;
  sub_1000A0838();
  v235 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v234 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v237 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v236 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v238 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v239 = v176;
  v241 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v240 = *(v176 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v242 = *(v239 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  type metadata accessor for MainState._Storage(0);
  swift_allocObject();
  LOBYTE(v245) = v238;
  sub_10003E038(v290, v297, v291, v292, v255, v256, v293, v294, v232, v233, v235, v234, v237, v236, v245, v241, v240, v242, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262);
  v106 = v243;

  return v106;
}

uint64_t Optional<A>.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  __chkstk_darwin(a1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v10, v6);
  if (sub_100024D10(v8, 1, v1) == 1)
  {
    v15 = 0;
    v16 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    v15 = 0x6C616E6F6974704FLL;
    v16 = 0xE90000000000003CLL;
    v11._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v11);

    v12._countAndFlagsBits = 0x6C696E2E3ELL;
    v12._object = 0xE500000000000000;
    String.append(_:)(v12);
    return v15;
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v2 + 8))(v4, v1);
  }

  return v13;
}

uint64_t sub_1004726C8()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v1 = static Font.footnote.getter();
    *(v0 + 112) = v1;
  }

  return v1;
}

double sub_100472710()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  *(v0 + 16) = 0x4030000000000000;
  *(v0 + 24) = 0;
  return sub_10001ECF0();
}

double sub_100472730()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  v1 = 19.0;
  if ((static Solarium.isEnabled.getter() & 1) == 0)
  {
    if (qword_100CA21A0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_1004BA4FC();
    v1 = v2;
    swift_endAccess();
  }

  *(v0 + 48) = v1;
  *(v0 + 56) = 0;
  return v1;
}

double sub_1004727E4()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  *v0 = 0x4030000000000000;
  v0[8] = 0;
  return sub_10001ECF0();
}

double sub_100472804()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    return *(v0 + 32);
  }

  v1 = static Solarium.isEnabled.getter();
  result = sub_100472710();
  if (v1)
  {
    result = result + 4.0;
  }

  *(v0 + 32) = result;
  *(v0 + 40) = 0;
  return result;
}

double sub_100472854()
{
  if ((*(v0 + 72) & 1) == 0)
  {
    return *(v0 + 64);
  }

  *(v0 + 64) = 0x4030000000000000;
  *(v0 + 72) = 0;
  return sub_10001ECF0();
}

double sub_100472874()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    return *(v0 + 80);
  }

  *(v0 + 80) = 0x4046000000000000;
  *(v0 + 88) = 0;
  return 44.0;
}

void sub_100472898()
{
  qword_100D8FD80 = 0;
  byte_100D8FD88 = 1;
  qword_100D8FD90 = 0;
  byte_100D8FD98 = 1;
  qword_100D8FDA0 = 0;
  byte_100D8FDA8 = 1;
  qword_100D8FDB0 = 0;
  byte_100D8FDB8 = 1;
  qword_100D8FDC0 = 0;
  byte_100D8FDC8 = 1;
  qword_100D8FDD0 = 0;
  byte_100D8FDD8 = 1;
  qword_100D8FDE0 = 0;
  byte_100D8FDE8 = 1;
  qword_100D8FDF0 = 0;
}

uint64_t sub_100472908()
{
  v37 = type metadata accessor for Font.Leading();
  v1 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 32));
  v12 = v11[1];
  v38 = *v11;
  v39 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v36 = v14;
  v35 = v15;
  v16 = (v0 + *(type metadata accessor for DailyComponentView(0) + 36));
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v32 = v3;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v3 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v17, 0);
    (*(v33 + 8))(v10, v34);
    if (v38)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v5 + 104))(v7, *v18, v4);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v21 = v37;
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v37);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v21);
  v22 = v35;
  v23 = v36;
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v13, v23, v22 & 1);

  v29 = Text.monospacedDigit()();
  sub_10010CD64(v24, v26, v28 & 1);

  return v29;
}

uint64_t sub_100472D28()
{
  v37 = type metadata accessor for Font.Leading();
  v1 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Font.TextStyle();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EnvironmentValues();
  v33 = *(v8 - 8);
  v34 = v8;
  __chkstk_darwin(v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 36));
  v12 = v11[1];
  v38 = *v11;
  v39 = v12;
  sub_10002D5A4();

  v13 = Text.init<A>(_:)();
  v36 = v14;
  v35 = v15;
  v16 = (v0 + *(type metadata accessor for DailyComponentView(0) + 36));
  v17 = *v16;
  if (*(v16 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v19 = static Log.runtimeIssuesLog.getter();
    v32 = v3;
    v20 = v19;
    os_log(_:dso:log:_:_:)();

    v3 = v32;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v17, 0);
    (*(v33 + 8))(v10, v34);
    if (v38)
    {
      goto LABEL_3;
    }

LABEL_5:
    v18 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v18 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v5 + 104))(v7, *v18, v4);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v5 + 8))(v7, v4);
  v21 = v37;
  (*(v1 + 104))(v3, enum case for Font.Leading.tight(_:), v37);
  Font.leading(_:)();

  (*(v1 + 8))(v3, v21);
  v22 = v35;
  v23 = v36;
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10010CD64(v13, v23, v22 & 1);

  v29 = Text.monospacedDigit()();
  sub_10010CD64(v24, v26, v28 & 1);

  return v29;
}

uint64_t sub_100473148()
{
  v1 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v1 - 8);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 14920;
  v14._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = *(v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 32));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  LocalizedStringKey.init(stringInterpolation:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v46 = v18;
  v47 = v17;
  v20 = v19;
  v48 = v21;
  v22 = *(v10 + 104);
  v22(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.medium.getter();
  v45 = static Font.system(_:weight:)();
  v23 = *(v10 + 8);
  v23(v12, v9);
  v22(v12, enum case for Font.TextStyle.body(_:), v9);
  static Font.Weight.medium.getter();
  v24 = static Font.system(_:weight:)();
  v23(v12, v9);
  v25 = (v0 + *(type metadata accessor for DailyComponentView(0) + 36));
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v26, 0);
    (*(v43 + 8))(v8, v44);
    LOBYTE(v26) = v50;
  }

  v28 = enum case for Font.Leading.tight(_:);
  v29 = type metadata accessor for Font.Leading();
  (*(*(v29 - 8) + 104))(v5, v28, v29);
  sub_10001B350(v5, 0, 1, v29);
  v30 = v49;
  sub_1000302D8(v5, v49, &qword_100CACFF0);
  v31 = v45;

  sub_1001C987C(v31, v24, v26 & 1, v30);
  v32 = v47;
  v33 = v20;
  v34 = v46;
  v44 = v5;
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;
  v49 = v40;

  sub_10010CD64(v32, v34, v33 & 1);

  sub_1000180EC(v44, &qword_100CACFF0);
  v41 = Text.monospacedDigit()();
  sub_10010CD64(v35, v37, v39 & 1);

  return v41;
}

uint64_t sub_100473678()
{
  v1 = sub_10022C350(&qword_100CACFF0);
  __chkstk_darwin(v1 - 8);
  v49 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v43 - v4;
  v6 = type metadata accessor for EnvironmentValues();
  v43 = *(v6 - 8);
  v44 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v14._countAndFlagsBits = 14924;
  v14._object = 0xE200000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v14);
  v15 = *(v0 + *(type metadata accessor for DailyForecastComponentViewModel(0) + 36));
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v15);
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v16);
  LocalizedStringKey.init(stringInterpolation:)();
  v17 = Text.init(_:tableName:bundle:comment:)();
  v46 = v18;
  v47 = v17;
  v20 = v19;
  v48 = v21;
  v22 = *(v10 + 104);
  v22(v12, enum case for Font.TextStyle.title3(_:), v9);
  static Font.Weight.medium.getter();
  v45 = static Font.system(_:weight:)();
  v23 = *(v10 + 8);
  v23(v12, v9);
  v22(v12, enum case for Font.TextStyle.body(_:), v9);
  static Font.Weight.medium.getter();
  v24 = static Font.system(_:weight:)();
  v23(v12, v9);
  v25 = (v0 + *(type metadata accessor for DailyComponentView(0) + 36));
  v26 = *v25;
  if (*(v25 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v27 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v26, 0);
    (*(v43 + 8))(v8, v44);
    LOBYTE(v26) = v50;
  }

  v28 = enum case for Font.Leading.tight(_:);
  v29 = type metadata accessor for Font.Leading();
  (*(*(v29 - 8) + 104))(v5, v28, v29);
  sub_10001B350(v5, 0, 1, v29);
  v30 = v49;
  sub_1000302D8(v5, v49, &qword_100CACFF0);
  v31 = v45;

  sub_1001C987C(v31, v24, v26 & 1, v30);
  v32 = v47;
  v33 = v20;
  v34 = v46;
  v44 = v5;
  v35 = Text.font(_:)();
  v37 = v36;
  v39 = v38;
  v49 = v40;

  sub_10010CD64(v32, v34, v33 & 1);

  sub_1000180EC(v44, &qword_100CACFF0);
  v41 = Text.monospacedDigit()();
  sub_10010CD64(v35, v37, v39 & 1);

  return v41;
}

uint64_t sub_100473BA8@<X0>(uint64_t *a1@<X8>)
{
  v222 = a1;
  v2 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v3 = sub_100003810(v2);
  __chkstk_darwin(v3);
  sub_1000037D8();
  sub_100003990(v5 - v4);
  v6 = sub_10022C350(&qword_100CA4020);
  sub_100003810(v6);
  sub_100003828();
  __chkstk_darwin(v7);
  sub_100003990(v205 - v8);
  v212 = type metadata accessor for Font.TextStyle();
  sub_1000037C4();
  v213 = v9;
  __chkstk_darwin(v10);
  sub_1000037D8();
  sub_100003990(v12 - v11);
  v13 = sub_10022C350(&qword_100CA3D60);
  sub_100003810(v13);
  sub_100003828();
  __chkstk_darwin(v14);
  sub_100003990(v205 - v15);
  v16 = sub_10022C350(&qword_100CA3D68);
  sub_100003810(v16);
  sub_100003828();
  __chkstk_darwin(v17);
  KeyPath = v205 - v18;
  v224 = type metadata accessor for Text.Measurements.Context();
  sub_1000037C4();
  v221 = v19;
  __chkstk_darwin(v20);
  sub_1000037D8();
  sub_100003990(v22 - v21);
  v219 = type metadata accessor for ContentSizeCategory();
  sub_1000037C4();
  v215 = v23;
  __chkstk_darwin(v24);
  v26 = v205 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = v205 - v28;
  v30 = type metadata accessor for DailyComponentView(0);
  sub_1000037C4();
  v217 = v31;
  __chkstk_darwin(v32);
  sub_100003990(v205 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v216 = v34;
  __chkstk_darwin(v35);
  v37 = v205 - v36;
  v38 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  sub_1000037C4();
  v40 = v39;
  __chkstk_darwin(v41);
  sub_1000037D8();
  v44 = v43 - v42;
  sub_100474CF8();
  v46 = v45;
  v47 = 0;
  v225 = v1;
  v48 = *v1;
  v49 = *(*v1 + 16);
  while (v49 != v47)
  {
    if (v47 >= *(v48 + 16))
    {
      __break(1u);
      goto LABEL_50;
    }

    sub_1001B5618(v48 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v47, v44, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    v50 = *(v44 + *(v38 + 48));
    sub_1001B5728(v44, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
    if (v50 >= 0.3)
    {
      goto LABEL_7;
    }

    ++v47;
  }

  v47 = 1;
LABEL_7:
  v38 = v225;
  if (qword_100CA26A8 == -1)
  {
    goto LABEL_8;
  }

LABEL_50:
  swift_once();
LABEL_8:
  v51 = type metadata accessor for Logger();
  v52 = sub_10000703C(v51, qword_100D90A60);
  sub_100014718();
  sub_1001B5618(v38, v37, v53);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  v56 = os_log_type_enabled(v54, v55);
  v214 = v52;
  if (v56)
  {
    v57 = swift_slowAlloc();
    *v57 = 134349056;
    v58 = *(*v37 + 16);
    sub_100019814();
    *(v57 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v54, v55, "About to check if a large text layout might be required for the daily forecast component. dailyForecastCount=%{public}ld", v57, 0xCu);
  }

  else
  {
    sub_100019814();
  }

  sub_10009ECC8();
  v59 = v215;
  v60 = v219;
  (*(v215 + 32))(v26, v29, v219);
  v61 = (*(v59 + 88))(v26, v60);
  if (v61 != enum case for ContentSizeCategory.extraSmall(_:) && v61 != enum case for ContentSizeCategory.small(_:) && v61 != enum case for ContentSizeCategory.medium(_:) && v61 != enum case for ContentSizeCategory.large(_:) && v61 != enum case for ContentSizeCategory.extraLarge(_:) && v61 != enum case for ContentSizeCategory.extraExtraLarge(_:) && v61 != enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
  {
    if (v61 == enum case for ContentSizeCategory.accessibilityMedium(_:) || v61 == enum case for ContentSizeCategory.accessibilityLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:) || v61 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
    {
      v208 = *(v30 + 44);
      sub_100473678();
      v207 = v72;
      v215 = type metadata accessor for Text.WritingMode();
      v219 = 1;
      sub_100003934();
      sub_10001B350(v73, v74, v75, v76);
      v209 = type metadata accessor for Text.Suffix();
      v77 = sub_100005508();
      sub_10001B350(v77, v78, v79, v80);
      v81 = v220;
      sub_100003940();
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000C918();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v83 = v82;
      v85 = v84;
      v86 = sub_10000C918();
      sub_10010CD64(v86, v87, v88);

      v207 = *(v221 + 8);
      v221 += 8;
      v207(v81, v224);
      v89 = sub_100473148();
      v91 = v90;
      v93 = v92;
      v94 = sub_100005508();
      sub_100037AD0(v94, v95, v96);
      sub_100003934();
      sub_10001B350(v97, v98, v99, v209);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v101 = v100;
      v103 = v102;
      sub_10010CD64(v89, v91, v93 & 1);

      sub_1000100E4();
      v104();
      Image.init(systemName:)();
      v205[2] = Text.init(_:)();
      v105 = v213;
      v106 = *(v213 + 104);
      v205[3] = v213 + 104;
      v206 = v106;
      v107 = v211;
      v108 = v212;
      v106(v211, enum case for Font.TextStyle.title3(_:), v212);
      type metadata accessor for Font.Design();
      v109 = v210;
      sub_100003934();
      sub_10001B350(v110, v111, v112, v113);
      static Font.system(_:design:weight:)();
      sub_1000180EC(v109, &qword_100CA4020);
      v114 = *(v105 + 8);
      v213 = v105 + 8;
      v210 = v114;
      (v114)(v107, v108);
      v115 = Text.font(_:)();
      v117 = v116;
      LOBYTE(v107) = v118;
      v205[1] = v119;

      v120 = sub_10000C918();
      sub_10010CD64(v120, v121, v122);

      sub_100003934();
      sub_100037AD0(v123, v124, v125);
      v126 = sub_100005508();
      sub_10001B350(v126, v127, v128, v209);
      sub_100003940();
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000EA4C();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v130 = v129;
      sub_10010CD64(v115, v117, v107 & 1);

      sub_1000100E4();
      v131();
      LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v132);
      v133 = Double.formattedPercent(roundToNearestPercent:)(1);
      LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v133);

      v134._countAndFlagsBits = 0;
      v134._object = 0xE000000000000000;
      LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v134);
      LocalizedStringKey.init(stringInterpolation:)();
      v135 = Text.init(_:tableName:bundle:comment:)();
      v137 = v136;
      LOBYTE(v117) = v138;
      v206(v211, enum case for Font.TextStyle.caption(_:), v212);
      static Font.Weight.medium.getter();
      static Font.system(_:weight:)();
      v139 = sub_10000C918();
      v210(v139);
      sub_100003940();
      Text.font(_:)();
      v213 = v140;

      sub_10010CD64(v135, v137, v117 & 1);

      v141 = sub_100005508();
      sub_100037AD0(v141, v142, v143);
      sub_100003934();
      sub_10001B350(v144, v145, v146, v209);
      Text.Measurements.Context.init(writingMode:textSuffix:)();
      sub_10000EA4C();
      sub_10000C918();
      sub_10002C724();
      Text.Measurements.size(of:in:context:)();
      v148 = v147;
      v149 = sub_10000C918();
      sub_10010CD64(v149, v150, v151);

      sub_1000100E4();
      v152();
      LODWORD(v215) = 0;
      goto LABEL_46;
    }

    (*(v59 + 8))(v26, v60);
  }

  v212 = *(v30 + 44);
  v153 = sub_100472D28();
  v155 = v154;
  v157 = v156;
  v211 = v158;
  v219 = type metadata accessor for Text.WritingMode();
  LODWORD(v215) = 1;
  sub_100003934();
  sub_10001B350(v159, v160, v161, v162);
  v213 = type metadata accessor for Text.Suffix();
  sub_100003934();
  sub_10001B350(v163, v164, v165, v166);
  v167 = v220;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v83 = v168;
  v85 = v169;
  sub_10010CD64(v153, v155, v157 & 1);

  v221 = *(v221 + 8);
  (v221)(v167, v224);
  v170 = sub_100472908();
  v172 = v171;
  LOBYTE(v153) = v173;
  v174 = sub_100005508();
  sub_10001B350(v174, v175, v176, v219);
  sub_100003934();
  sub_10001B350(v177, v178, v179, v213);
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  Text.Measurements.size(of:in:context:)();
  v101 = v180;
  v103 = v181;
  sub_10010CD64(v170, v172, v153 & 1);

  (v221)(v167, v224);
  v219 = 0;
  v148 = 0;
  v130 = 0;
LABEL_46:
  v182 = Logger.logObject.getter();
  v183 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v182, v183))
  {
    v184 = swift_slowAlloc();
    *v184 = 67240192;
    *(v184 + 4) = v219;
    _os_log_impl(&_mh_execute_header, v182, v183, "Obtained the large text layout requirement for the daily forecast component. useLargeTextRowView=%{BOOL,public}d", v184, 8u);
  }

  v185 = static HorizontalAlignment.center.getter();
  v186 = v222;
  *v222 = v185;
  v186[1] = 0;
  *(v186 + 16) = 0;
  v224 = *(sub_10022C350(&qword_100CBC258) + 44);
  sub_1002EE078();
  v226 = v187;
  KeyPath = swift_getKeyPath();
  sub_100014718();
  v188 = v218;
  sub_1001B5618(v225, v218, v189);
  v190 = (*(v217 + 80) + 16) & ~*(v217 + 80);
  v191 = (v216 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
  v192 = (v191 + 23) & 0xFFFFFFFFFFFFFFF8;
  v193 = (v192 + 23) & 0xFFFFFFFFFFFFFFF8;
  v194 = (v193 + 31) & 0xFFFFFFFFFFFFFFF8;
  v195 = swift_allocObject();
  sub_1001D1978(v188, v195 + v190, type metadata accessor for DailyComponentView);
  v196 = (v195 + v191);
  *v196 = v83;
  v196[1] = v85;
  v197 = (v195 + v192);
  *v197 = v101;
  v197[1] = v103;
  *(v195 + v193) = v46;
  v198 = v195 + ((v193 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v198 = v130;
  v199 = v215;
  *(v198 + 8) = v215;
  v200 = v195 + v194;
  *v200 = v148;
  *(v200 + 8) = v199;
  *(v200 + 9) = v219;
  *(v195 + ((v194 + 17) & 0xFFFFFFFFFFFFFFF8)) = v47;
  v201 = swift_allocObject();
  *(v201 + 16) = sub_1001D2034;
  *(v201 + 24) = v195;
  sub_10022C350(&qword_100CBC260);
  sub_10022C350(&qword_100CBC268);
  sub_100006F64(&qword_100CBC270, &qword_100CBC260);
  sub_1001CE5C4(&qword_100CA39C8, &type metadata accessor for Date);
  sub_100006F64(&qword_100CBC278, &qword_100CBC268);
  v202 = v222;
  ForEach<>.init(_:id:content:)();
  result = sub_10022C350(&qword_100CBC280);
  v204 = (v202 + *(result + 36));
  *v204 = 0xD000000000000012;
  v204[1] = 0x8000000100A52AF0;
  return result;
}

void sub_100474CF8()
{
  v1 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v1 - 8);
  v86 = &v76 - v2;
  v3 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v3 - 8);
  v84 = &v76 - v4;
  v5 = type metadata accessor for Text.Measurements.Context();
  v87 = *(v5 - 8);
  v88 = v5;
  __chkstk_darwin(v5);
  v85 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Font.TextStyle();
  v82 = *(v7 - 8);
  v83 = v7;
  __chkstk_darwin(v7);
  v81 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EnvironmentValues();
  v79 = *(v9 - 8);
  v80 = v9;
  __chkstk_darwin(v9);
  v78 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Measurements();
  v90 = *(v11 - 8);
  v91 = v11;
  __chkstk_darwin(v11);
  v89 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  __chkstk_darwin(v20);
  v22 = &v76 - v21;
  IsSlow = DeviceIsSlow();
  v24 = *v0;

  v25 = sub_1002B0A94(8, v24);
  v29 = v26;
  v30 = v27;
  if (IsSlow)
  {
    v76 = v22;
    v77 = v0;
    if (v27 == v28 >> 1)
    {
      swift_unknownObjectRelease();
      v31 = 5;
LABEL_20:
      v44 = v87;
      v45 = [objc_opt_self() mainBundle];
      v93._object = 0x8000000100ACA950;
      v46._countAndFlagsBits = 77;
      v46._object = 0xE100000000000000;
      v47._countAndFlagsBits = 0;
      v47._object = 0xE000000000000000;
      v93._countAndFlagsBits = 0xD000000000000063;
      v48 = NSLocalizedString(_:tableName:bundle:value:comment:)(v46, 0, v45, v47, v93);

      v49 = String.init(repeating:count:)(v48, v31);
      v50 = type metadata accessor for DailyComponentView(0);
      v51 = v77;
      (*(v90 + 16))(v89, v77 + *(v50 + 44), v91);
      v92 = v49;
      sub_10002D5A4();
      v52 = Text.init<A>(_:)();
      v54 = v53;
      v56 = v55;
      v57 = (v51 + *(v50 + 36));
      v58 = *v57;
      if (*(v57 + 8) == 1)
      {
        if (v58)
        {
LABEL_22:
          v59 = v44;
          v60 = &enum case for Font.TextStyle.body(_:);
LABEL_25:
          v64 = v81;
          v63 = v82;
          v65 = v83;
          (*(v82 + 104))(v81, *v60, v83);
          static Font.Weight.medium.getter();
          static Font.system(_:weight:)();
          (*(v63 + 8))(v64, v65);
          v66 = Text.font(_:)();
          v68 = v67;
          v70 = v69;

          sub_10010CD64(v52, v54, v56 & 1);

          v71 = type metadata accessor for Text.WritingMode();
          sub_10001B350(v84, 1, 1, v71);
          v72 = type metadata accessor for Text.Suffix();
          sub_10001B350(v86, 1, 1, v72);
          v73 = v85;
          Text.Measurements.Context.init(writingMode:textSuffix:)();
          v74 = v89;
          Text.Measurements.size(of:in:context:)();
          sub_10010CD64(v66, v68, v70 & 1);

          (*(v59 + 8))(v73, v88);
          (*(v90 + 8))(v74, v91);
          v75 = [objc_opt_self() currentDevice];
          [v75 userInterfaceIdiom];

          return;
        }
      }

      else
      {

        static os_log_type_t.fault.getter();
        v61 = static Log.runtimeIssuesLog.getter();
        os_log(_:dso:log:_:_:)();

        v62 = v78;
        EnvironmentValues.init()();
        swift_getAtKeyPath();
        sub_1000E4DF8(v58, 0);
        (*(v79 + 8))(v62, v80);
        if (v92._countAndFlagsBits)
        {
          goto LABEL_22;
        }
      }

      v59 = v44;
      v60 = &enum case for Font.TextStyle.title3(_:);
      goto LABEL_25;
    }

    v38 = v28 >> 1;
    if (v27 < (v28 >> 1))
    {
      v39 = *(v14 + 72);
      sub_1001B5618(v26 + v39 * v27, v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
      v40 = v30 + 1;
      v41 = v29 + v39 * (v30 + 1);
      v42 = v76;
      while (1)
      {
        if (v38 == v40)
        {
          swift_unknownObjectRelease();
          sub_1001D1978(v19, v42, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);

          sub_1001B5728(v42, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
          v31 = String.count.getter();

          goto LABEL_20;
        }

        if (v40 >= v38)
        {
          break;
        }

        sub_1001B5618(v41, v16, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        v43 = String.count.getter();
        if (v43 >= String.count.getter())
        {
          sub_1001B5728(v16, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        }

        else
        {
          sub_1001B5728(v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
          sub_1001D1978(v16, v19, type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel);
        }

        ++v40;
        v41 += v39;
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __chkstk_darwin(v25);
    sub_1008EF16C();
    v33 = v32;
    swift_unknownObjectRelease();
    v34 = *(v33 + 16);
    if (v34)
    {
      v35 = v34 - 1;
      if (v35)
      {
        v36 = 48;
        v37 = *(v33 + 32);
        do
        {
          if (v37 < *(v33 + v36))
          {
            v37 = *(v33 + v36);
          }

          v36 += 16;
          --v35;
        }

        while (v35);
      }
    }
  }
}

uint64_t sub_100475674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v62 = a3;
  v53 = a1;
  v4 = sub_10022C350(&qword_100CA3D60);
  __chkstk_darwin(v4 - 8);
  v60 = &v49 - v5;
  v6 = sub_10022C350(&qword_100CA3D68);
  __chkstk_darwin(v6 - 8);
  v57 = &v49 - v7;
  v61 = type metadata accessor for Text.Measurements.Context();
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v58 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Font.TextStyle();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for EnvironmentValues();
  v51 = *(v13 - 8);
  v52 = v13;
  __chkstk_darwin(v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Text.Measurements();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DailyComponentView(0);
  v21 = *(v20 + 44);
  v54 = v19;
  v55 = v17;
  v22 = *(v17 + 16);
  v56 = v16;
  v22(v19, a2 + v21, v16);
  v23 = (v53 + *(type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(0) + 20));
  v24 = v23[1];
  v63 = *v23;
  v64 = v24;
  sub_10002D5A4();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  LODWORD(v53) = v28;
  v29 = (a2 + *(v20 + 36));
  v30 = *v29;
  if (*(v29 + 8) != 1)
  {

    static os_log_type_t.fault.getter();
    v50 = v12;
    v32 = static Log.runtimeIssuesLog.getter();
    v12 = v50;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000E4DF8(v30, 0);
    (*(v51 + 8))(v15, v52);
    if (v63)
    {
      goto LABEL_3;
    }

LABEL_5:
    v31 = &enum case for Font.TextStyle.title3(_:);
    goto LABEL_6;
  }

  if ((v30 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v31 = &enum case for Font.TextStyle.body(_:);
LABEL_6:
  (*(v10 + 104))(v12, *v31, v9);
  static Font.Weight.medium.getter();
  static Font.system(_:weight:)();
  (*(v10 + 8))(v12, v9);
  v33 = v53;
  v34 = Text.font(_:)();
  v36 = v35;
  v38 = v37;

  sub_10010CD64(v25, v27, v33 & 1);

  v39 = type metadata accessor for Text.WritingMode();
  sub_10001B350(v57, 1, 1, v39);
  v40 = type metadata accessor for Text.Suffix();
  sub_10001B350(v60, 1, 1, v40);
  v41 = v58;
  Text.Measurements.Context.init(writingMode:textSuffix:)();
  v42 = v54;
  Text.Measurements.size(of:in:context:)();
  v44 = v43;
  v46 = v45;
  sub_10010CD64(v34, v36, v38 & 1);

  (*(v59 + 8))(v41, v61);
  result = (*(v55 + 8))(v42, v56);
  v48 = v62;
  *v62 = v44;
  v48[1] = v46;
  return result;
}

unint64_t sub_100475D6C()
{
  result = qword_100CBC2C0;
  if (!qword_100CBC2C0)
  {
    sub_10022E824(&qword_100CBC2B8);
    sub_1001CFB08();
    sub_1001D18D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC2C0);
  }

  return result;
}

void sub_100475E40()
{
  type metadata accessor for DailyForecastComponentViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_10013DB50();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DailyForecastComponentViewModel.DayForecastViewModel(319);
      if (v2 <= 0x3F)
      {
        type metadata accessor for CGSize(319);
        if (v3 <= 0x3F)
        {
          sub_10009BF30(319, &qword_100CAFF88, &type metadata for CGFloat, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001BA934(319, &qword_100CABD88, &type metadata accessor for Binding);
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

unint64_t sub_100475F88()
{
  result = qword_100CBC398;
  if (!qword_100CBC398)
  {
    sub_10022E824(&qword_100CBC280);
    sub_100006F64(&qword_100CBC3A0, &qword_100CBC3A8);
    sub_100006F64(&qword_100CBC3B0, &qword_100CBC3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC398);
  }

  return result;
}

unint64_t sub_10047606C()
{
  result = qword_100CBC420;
  if (!qword_100CBC420)
  {
    sub_10022E824(&qword_100CBC410);
    sub_1001CD014();
    sub_1001D18D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC420);
  }

  return result;
}

unint64_t sub_1004760F8()
{
  result = qword_100CBC430;
  if (!qword_100CBC430)
  {
    sub_10022E824(&qword_100CBC438);
    sub_1004761B4();
    sub_1001CE5C4(&qword_100CBC498, type metadata accessor for TrackExposureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC430);
  }

  return result;
}

unint64_t sub_1004761B4()
{
  result = qword_100CBC440;
  if (!qword_100CBC440)
  {
    sub_10022E824(&qword_100CBC448);
    sub_10047626C();
    sub_100006F64(&qword_100CBC488, &qword_100CBC490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC440);
  }

  return result;
}

unint64_t sub_10047626C()
{
  result = qword_100CBC450;
  if (!qword_100CBC450)
  {
    sub_10022E824(&qword_100CBC458);
    sub_100476328();
    sub_1001CE5C4(&qword_100CA3F68, type metadata accessor for AutomationInfoViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC450);
  }

  return result;
}

unint64_t sub_100476328()
{
  result = qword_100CBC460;
  if (!qword_100CBC460)
  {
    sub_10022E824(&qword_100CBC468);
    sub_100006F64(&qword_100CBC470, &qword_100CBC478);
    sub_1004763E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC460);
  }

  return result;
}

unint64_t sub_1004763E0()
{
  result = qword_100CBC480;
  if (!qword_100CBC480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC480);
  }

  return result;
}

unint64_t sub_100476434()
{
  result = qword_100CBC4A0;
  if (!qword_100CBC4A0)
  {
    sub_10022E824(qword_100CBC4A8);
    sub_1001CE438();
    sub_1001CF314();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC4A0);
  }

  return result;
}

uint64_t sub_1004764C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v339 = a6;
  v337 = a3;
  v296 = a7;
  v11 = sub_10022C350(&qword_100CA5008);
  __chkstk_darwin(v11 - 8);
  v278 = &v271 - v12;
  v276 = type metadata accessor for LocationComponentContainerViewModel();
  __chkstk_darwin(v276);
  sub_100003848();
  v305 = v13;
  sub_10000386C();
  __chkstk_darwin(v14);
  sub_100003878();
  v294 = v15;
  sub_10000386C();
  __chkstk_darwin(v16);
  v18 = &v271 - v17;
  __chkstk_darwin(v19);
  sub_100003878();
  v291 = v20;
  sub_10000386C();
  __chkstk_darwin(v21);
  sub_100003878();
  v290 = v22;
  sub_10000386C();
  __chkstk_darwin(v23);
  sub_100003878();
  v288 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_100003878();
  v301 = v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  sub_100003878();
  v285 = v28;
  sub_10000386C();
  __chkstk_darwin(v29);
  sub_100003878();
  v300 = v30;
  sub_10000386C();
  __chkstk_darwin(v31);
  sub_100003878();
  v282 = v32;
  sub_10000386C();
  __chkstk_darwin(v33);
  sub_100003878();
  v297 = v34;
  sub_10000386C();
  __chkstk_darwin(v35);
  sub_100003878();
  v279 = v36;
  sub_10000386C();
  __chkstk_darwin(v37);
  sub_100003878();
  v272 = v38;
  sub_10000386C();
  __chkstk_darwin(v39);
  v41 = &v271 - v40;
  v333 = *(a5 - 8);
  __chkstk_darwin(v42);
  sub_100003848();
  v295 = v43;
  sub_10000386C();
  __chkstk_darwin(v44);
  sub_100003878();
  v315 = v45;
  sub_10000386C();
  __chkstk_darwin(v46);
  sub_100003878();
  v314 = v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_100003878();
  v313 = v49;
  sub_10000386C();
  __chkstk_darwin(v50);
  sub_100003878();
  v312 = v51;
  sub_10000386C();
  __chkstk_darwin(v52);
  sub_100003878();
  v311 = v53;
  sub_10000386C();
  __chkstk_darwin(v54);
  sub_100003878();
  v310 = v55;
  sub_10000386C();
  __chkstk_darwin(v56);
  sub_100003878();
  v309 = v57;
  sub_10000386C();
  __chkstk_darwin(v58);
  sub_100003878();
  v308 = v59;
  sub_10000386C();
  __chkstk_darwin(v60);
  sub_100003878();
  v307 = v61;
  sub_10000386C();
  __chkstk_darwin(v62);
  sub_100003878();
  v292 = v63;
  sub_10000386C();
  __chkstk_darwin(v64);
  sub_100003878();
  v306 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_100003878();
  v289 = v67;
  sub_10000386C();
  __chkstk_darwin(v68);
  v70 = &v271 - v69;
  __chkstk_darwin(v71);
  sub_100003878();
  v287 = v72;
  sub_10000386C();
  __chkstk_darwin(v73);
  sub_100003878();
  v331 = v74;
  sub_10000386C();
  __chkstk_darwin(v75);
  sub_100003878();
  v286 = v76;
  sub_10000386C();
  __chkstk_darwin(v77);
  sub_100003878();
  v330 = v78;
  sub_10000386C();
  __chkstk_darwin(v79);
  sub_100003878();
  v284 = v80;
  sub_10000386C();
  __chkstk_darwin(v81);
  sub_100003878();
  v329 = v82;
  sub_10000386C();
  __chkstk_darwin(v83);
  sub_100003878();
  v283 = v84;
  sub_10000386C();
  __chkstk_darwin(v85);
  sub_100003878();
  v327 = v86;
  sub_10000386C();
  __chkstk_darwin(v87);
  sub_100003878();
  v281 = v88;
  sub_10000386C();
  __chkstk_darwin(v89);
  sub_100003878();
  v326 = v90;
  sub_10000386C();
  __chkstk_darwin(v91);
  sub_100003878();
  v280 = v92;
  sub_10000386C();
  __chkstk_darwin(v93);
  sub_100003878();
  v325 = v94;
  sub_10000386C();
  __chkstk_darwin(v95);
  sub_100003878();
  v277 = v96;
  sub_10000386C();
  __chkstk_darwin(v97);
  sub_100003878();
  v324 = v98;
  sub_10000386C();
  __chkstk_darwin(v99);
  sub_100003878();
  v275 = v100;
  sub_10000386C();
  __chkstk_darwin(v101);
  sub_100003878();
  v323 = v102;
  sub_10000386C();
  __chkstk_darwin(v103);
  sub_100003878();
  v274 = v104;
  sub_10000386C();
  __chkstk_darwin(v105);
  sub_100003878();
  v322 = v106;
  sub_10000386C();
  __chkstk_darwin(v107);
  sub_100003878();
  v273 = v108;
  sub_10000386C();
  __chkstk_darwin(v109);
  sub_100003878();
  v321 = v110;
  sub_10000386C();
  __chkstk_darwin(v111);
  sub_100003878();
  v334 = v112;
  sub_10000386C();
  __chkstk_darwin(v113);
  v115 = &v271 - v114;
  v336 = type metadata accessor for Optional();
  v302 = *(v336 - 8);
  __chkstk_darwin(v336);
  sub_100003848();
  v304 = v116;
  sub_10000386C();
  __chkstk_darwin(v117);
  sub_100003878();
  v303 = v118;
  sub_10000386C();
  __chkstk_darwin(v119);
  sub_100003878();
  v320 = v120;
  sub_10000386C();
  __chkstk_darwin(v121);
  sub_100003878();
  v319 = v122;
  sub_10000386C();
  __chkstk_darwin(v123);
  v125 = &v271 - v124;
  __chkstk_darwin(v126);
  v318 = &v271 - v127;
  v338 = a2;
  sub_100566BC8(a2, v358);
  v328 = v115;
  v335 = v125;
  v298 = a1;
  v299 = a4;
  v332 = v70;
  v293 = v18;
  if (v359)
  {
    v128 = 1;
    v129 = v41;
  }

  else
  {
    v317 = v358[3];
    v130 = v358[2];
    v131 = v358[1];
    v132 = a1;
    v133 = v358[0];
    v129 = v41;
    sub_1001B3B30(v132 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_newsArticle, v41);
    v134 = v333;
    v337(v41, v133, v131, v130, v317);
    sub_1001B4354(v41);
    v135 = sub_100007EE8();
    sub_1000495EC(v135, v136);
    v137 = *(v134 + 8);
    v138 = sub_100007EE8();
    v137(v138);
    v139 = sub_100003A60();
    sub_1000833D8(v139, v140, v41);
    v141 = sub_100003A60();
    v137(v141);
    v125 = v335;
    v142 = sub_10002276C();
    v143(v142);
    v128 = 0;
  }

  v144 = 1;
  sub_10001B350(v125, v128, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v145, v146);
  v316 = *(v302 + 8);
  v317 = v302 + 8;
  v316(v125, v336);
  sub_100566A40(v338, v360);
  if ((v361 & 1) == 0)
  {
    v147 = v360[3];
    v148 = v360[2];
    v149 = v360[1];
    v150 = v360[0];
    sub_1001B3B30(v298 + OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_airQuality, v129);
    v151 = v333;
    v337(v129, v150, v149, v148, v147);
    sub_1001B4354(v129);
    v152 = v328;
    v153 = sub_100007EE8();
    sub_1000495EC(v153, v154);
    v155 = *(v151 + 8);
    v156 = sub_100007EE8();
    v155(v156);
    sub_1000833D8(v152, a5, v41);
    (v155)(v152, a5);
    v125 = v335;
    v157 = sub_10002276C();
    v158(v157);
    v144 = 0;
  }

  sub_10001B350(v125, v144, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v159, v160);
  v316(v125, v336);
  v161 = OBJC_IVAR____TtCV7Weather18DefaultNewsContent8_Storage_map;
  v162 = v298;
  swift_beginAccess();
  v163 = v278;
  sub_10026E174(v162 + v161, v278);
  v164 = sub_100024D10(v163, 1, v276) == 1;
  v165 = v297;
  if (v164)
  {
    sub_10026E1E4(v163);
    v166 = 1;
LABEL_11:
    v169 = v335;
    goto LABEL_13;
  }

  v167 = v272;
  sub_10026E24C(v163, v272);
  sub_100566A5C(v338, v362);
  v168 = v328;
  if (v363)
  {
    sub_1001B4354(v167);
    v166 = 1;
    goto LABEL_11;
  }

  v337(v167, v362[0], v362[1], v362[2], v362[3]);
  sub_1001B4354(v167);
  v170 = sub_100007EE8();
  sub_1000495EC(v170, v171);
  v172 = *(v333 + 8);
  v173 = sub_100007EE8();
  v172(v173);
  v174 = sub_100003A60();
  sub_1000833D8(v174, v175, v162);
  v165 = v297;
  (v172)(v168, a5);
  v169 = v335;
  v176 = sub_10002276C();
  v177(v176);
  v166 = 0;
LABEL_13:
  sub_10001B350(v169, v166, 1, a5);
  sub_1000140F4();
  sub_1003E7FD4(v178, v179);
  v316(v169, v336);
  v180 = v279;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_hourlyForecast, v279);
  sub_100566A78(v338, v364);
  if (v365)
  {
    goto LABEL_31;
  }

  v337(v180, v364[0], v364[1], v364[2], v364[3]);
  sub_1001B4354(v180);
  v181 = sub_100007EE8();
  sub_1000833D8(v181, v182, v339);
  v183 = *(v333 + 8);
  v184 = sub_100007EE8();
  v183(v184);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_dailyForecast, v165);
  sub_100566A94(v338, v366);
  if (v366[32])
  {
    goto LABEL_31;
  }

  v185 = sub_1000053F4();
  v186(v185);
  sub_1001B4354(v165);
  v187 = sub_100007EE8();
  sub_1000833D8(v187, v188, v339);
  v189 = sub_100007EE8();
  v183(v189);
  v190 = v282;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_uvIndex, v282);
  sub_100566AB0(v338, v367);
  if (v367[32])
  {
    goto LABEL_34;
  }

  v191 = sub_1000053F4();
  v192(v191);
  sub_1001B4354(v190);
  v193 = sub_100007EE8();
  sub_1000833D8(v193, v194, v339);
  v195 = sub_100007EE8();
  v183(v195);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_sunriseSunset, v300);
  sub_100566ACC(v338, v368);
  if (v368[32])
  {
    goto LABEL_31;
  }

  v196 = v300;
  v197 = sub_1000280EC();
  v198(v197);
  sub_1001B4354(v196);
  sub_1000140F4();
  sub_1000833D8(v199, v200, v201);
  v202 = sub_100003A60();
  v183(v202);
  v203 = v285;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_wind, v285);
  sub_100566AE8(v338, v369);
  if (v369[32])
  {
    goto LABEL_34;
  }

  v204 = sub_1000280EC();
  v205(v204);
  sub_1001B4354(v203);
  sub_1000140F4();
  sub_1000833D8(v206, v207, v208);
  v209 = sub_100003A60();
  v183(v209);
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_precipitationTotal, v301);
  sub_100566B04(v338, v370);
  if (v370[32])
  {
    goto LABEL_31;
  }

  v210 = v301;
  v211 = sub_1000280EC();
  v212(v211);
  sub_1001B4354(v210);
  sub_1000140F4();
  sub_1000833D8(v213, v214, v215);
  v216 = sub_100003A60();
  v183(v216);
  v217 = v288;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_feelsLike, v288);
  sub_100566B20(v338, v371);
  if (v371[32])
  {
    goto LABEL_31;
  }

  v218 = sub_1000053F4();
  v219(v218);
  sub_1001B4354(v217);
  v220 = sub_100007EE8();
  sub_1000833D8(v220, v221, v339);
  v222 = sub_100007EE8();
  v183(v222);
  v223 = v290;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_humidity, v290);
  sub_100566B3C(v338, v372);
  if (v372[32])
  {
LABEL_34:
    sub_100013470();
    goto LABEL_35;
  }

  v224 = sub_1000053F4();
  v225(v224);
  sub_1001B4354(v223);
  v226 = sub_100007EE8();
  sub_1000833D8(v226, v227, v339);
  v228 = sub_100007EE8();
  v183(v228);
  v229 = v291;
  sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_visibility, v291);
  sub_100566B58(v338, &v373);
  if ((v374 & 1) == 0)
  {
    v230 = sub_1000053F4();
    v231(v230);
    sub_1001B4354(v229);
    v232 = sub_100007EE8();
    sub_1000833D8(v232, v233, v339);
    v234 = sub_100007EE8();
    v183(v234);
    v235 = v293;
    sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_pressure, v293);
    sub_100566B74(v338, &v375);
    if ((v376 & 1) == 0)
    {
      v236 = sub_1000053F4();
      v237(v236);
      sub_1001B4354(v235);
      v238 = sub_100007EE8();
      sub_1000833D8(v238, v239, v339);
      v240 = sub_100007EE8();
      v183(v240);
      v241 = v294;
      sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_moon, v294);
      sub_100566B90(v338, &v377);
      if ((v378 & 1) == 0)
      {
        v242 = sub_1000280EC();
        v243(v242);
        sub_1001B4354(v241);
        sub_1000140F4();
        sub_1000833D8(v244, v245, v246);
        v247 = sub_100003A60();
        v183(v247);
        sub_1001B3B30(*(v162 + 16) + OBJC_IVAR____TtCV7Weather28LocationCommonViewComponents8_Storage_averages, v305);
        sub_100566BAC(v338, v379);
        if ((v380 & 1) == 0)
        {
          v248 = v292;
          v249 = v305;
          v337(v305, v379[0], v379[1], v379[2], v379[3]);
          sub_1001B4354(v249);
          sub_1000495EC(v248, a5);
          (v183)(v248, a5);
          v250 = *(v302 + 16);
          v251 = v335;
          v252 = v336;
          v250(v335, v318, v336);
          v357[0] = v251;
          v253 = v303;
          v250(v303, v319, v252);
          v357[1] = v253;
          v254 = v304;
          v250(v304, v320, v252);
          v357[2] = v254;
          v255 = *(v333 + 16);
          v256 = v328;
          v255(v328, v321, a5);
          v357[3] = v256;
          v257 = v334;
          v255(v334, v322, a5);
          v357[4] = v257;
          v258 = v307;
          v255(v307, v323, a5);
          v357[5] = v258;
          v259 = v308;
          v255(v308, v324, a5);
          v357[6] = v259;
          v260 = v309;
          v255(v309, v325, a5);
          v357[7] = v260;
          v261 = v310;
          v255(v310, v326, a5);
          v357[8] = v261;
          v262 = v311;
          v255(v311, v327, a5);
          v357[9] = v262;
          v263 = v312;
          v255(v312, v329, a5);
          v357[10] = v263;
          v264 = v313;
          v255(v313, v330, a5);
          v357[11] = v264;
          v265 = v314;
          v255(v314, v331, a5);
          v357[12] = v265;
          v266 = v315;
          v255(v315, v332, a5);
          v357[13] = v266;
          v267 = v295;
          v255(v295, v306, a5);
          v357[14] = v267;
          v356[0] = v252;
          v356[1] = v252;
          v356[2] = v252;
          v356[3] = a5;
          v356[4] = a5;
          v356[5] = a5;
          v356[6] = a5;
          v356[7] = a5;
          v356[8] = a5;
          v356[9] = a5;
          v356[10] = a5;
          v356[11] = a5;
          v356[12] = a5;
          v356[13] = a5;
          v356[14] = a5;
          v340 = v249;
          WitnessTable = swift_getWitnessTable();
          v342 = WitnessTable;
          v343 = WitnessTable;
          v344 = v249;
          v345 = v249;
          v346 = v249;
          v347 = v249;
          v348 = v249;
          v349 = v249;
          v350 = v249;
          v351 = v249;
          v352 = v249;
          v353 = v249;
          v354 = v249;
          v355 = v249;
          sub_10012E24C(v357, 15, v356);
          v268 = sub_100007EE8();
          v183(v268);
          (v183)(v332, a5);
          (v183)(v331, a5);
          (v183)(v330, a5);
          (v183)(v329, a5);
          (v183)(v327, a5);
          (v183)(v326, a5);
          (v183)(v325, a5);
          (v183)(v324, a5);
          (v183)(v323, a5);
          (v183)(v322, a5);
          (v183)(v321, a5);
          v269 = v316;
          v316(v320, v252);
          v269(v319, v252);
          v269(v318, v252);
          (v183)(v267, a5);
          (v183)(v315, a5);
          (v183)(v314, a5);
          (v183)(v313, a5);
          (v183)(v312, a5);
          (v183)(v311, a5);
          (v183)(v310, a5);
          (v183)(v309, a5);
          (v183)(v308, a5);
          (v183)(v307, a5);
          (v183)(v334, a5);
          (v183)(v328, a5);
          v269(v304, v252);
          v269(v303, v252);
          return (v269)(v335, v252);
        }
      }
    }

    goto LABEL_34;
  }

LABEL_31:
  sub_10001E640();
LABEL_35:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100477CD0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100477D90(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HistoricalFactsCategory();
  sub_10022C350(&qword_100CBC530);
  sub_100477EB0();
  sub_100477F14();

  return static NonEmpty<>.== infix(_:_:)();
}

uint64_t type metadata accessor for HistoricalFactsCategory()
{
  result = qword_100CBC5A8;
  if (!qword_100CBC5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100477EB0()
{
  result = qword_100CBC538;
  if (!qword_100CBC538)
  {
    sub_10022E824(&qword_100CBC530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC538);
  }

  return result;
}

unint64_t sub_100477F14()
{
  result = qword_100CBC540;
  if (!qword_100CBC540)
  {
    sub_10022E824(&qword_100CBC530);
    sub_100477F98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC540);
  }

  return result;
}

unint64_t sub_100477F98()
{
  result = qword_100CB7688;
  if (!qword_100CB7688)
  {
    type metadata accessor for WeatherDescription();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB7688);
  }

  return result;
}

void sub_100478018()
{
  sub_100478094();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100478094()
{
  if (!qword_100CBC5B8)
  {
    sub_10022E824(&qword_100CBC530);
    sub_100477EB0();
    v0 = type metadata accessor for NonEmpty();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBC5B8);
    }
  }
}

_BYTE *sub_100478128(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10047821C()
{
  v0 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v0, qword_100D8FE28);
  sub_10000703C(v0, qword_100D8FE28);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

void sub_1004782CC()
{
  sub_10000C778();
  v1 = v0;
  type metadata accessor for WeatherDescription();
  sub_1000037C4();
  __chkstk_darwin(v2);
  sub_1000037D8();
  if (v1)
  {
    v3 = [objc_opt_self() mainBundle];
    v13._object = 0x8000000100ACACD0;
    v4._countAndFlagsBits = 0xD000000000000028;
    v4._object = 0x8000000100ACACA0;
    v13._countAndFlagsBits = 0xD000000000000058;
    v5._countAndFlagsBits = 0;
    v5._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v13);

    sub_10022C350(&qword_100CA5408);
    v6 = type metadata accessor for WeatherDescription.Argument();
    sub_1000037C4();
    v8 = v7;
    v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100A2C3F0;
    *(v10 + v9) = 10;
    (*(v8 + 104))(v10 + v9, enum case for WeatherDescription.Argument.integer(_:), v6);
    WeatherDescription.init(format:_:)();
    WeatherDescription.string.getter();
    v11 = sub_100003B2C();
    v12(v11);
    sub_10002D5A4();
    Text.init<A>(_:)();
  }

  else
  {
    sub_10001C260();
    LocalizedStringKey.init(stringLiteral:)();
    sub_1000100FC();
  }

  sub_10000536C();
}

uint64_t sub_10047851C()
{
  sub_10022C350(&qword_100CAC610);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_100005E40();
  sub_10001C260();
  Image.init(systemName:)();
  static SymbolRenderingMode.hierarchical.getter();
  v2 = type metadata accessor for SymbolRenderingMode();
  sub_10001B350(v0, 0, 1, v2);
  v3 = Image.symbolRenderingMode(_:)();

  sub_10003FDF4(v0, &qword_100CAC610);
  return v3;
}

void sub_100478600()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20C0 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FDF8);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20C8 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE10);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_100478838()
{
  sub_10000C778();
  v16 = v0;
  v2 = v1;
  v3 = sub_10022C350(&qword_100CBC618);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = sub_10022C350(&qword_100CA5590);
  sub_1000037C4();
  v11 = v10;
  sub_100003828();
  __chkstk_darwin(v12);
  v14 = &v15 - v13;
  sub_100006F64(&qword_100CA55A0, &qword_100CA5590);
  static PredicateExpressions.build_Arg<A>(_:)();
  v17 = v16;
  static PredicateExpressions.build_Arg<A>(_:)();
  v2[3] = sub_10022C350(&qword_100CBC620);
  v2[4] = sub_10047A664();
  sub_100042FB0(v2);
  sub_100006F64(&qword_100CBC638, &qword_100CBC618);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v8, v3);
  (*(v11 + 8))(v14, v9);
  sub_10000536C();
}

unint64_t sub_100478AD4()
{
  result = qword_100CBC5E8;
  if (!qword_100CBC5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC5E8);
  }

  return result;
}

uint64_t sub_100478B50()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

uint64_t sub_100478B8C()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

void sub_100478BE8()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20D8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FE40);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20E0 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE58);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

unint64_t sub_100478E60()
{
  result = qword_100CBC5F0;
  if (!qword_100CBC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC5F0);
  }

  return result;
}

uint64_t sub_100478EDC()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

uint64_t sub_100478F18()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

void sub_100478F54()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20E8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FE70);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA20F0 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FE88);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

unint64_t sub_1004791EC()
{
  result = qword_100CBC5F8;
  if (!qword_100CBC5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC5F8);
  }

  return result;
}

uint64_t sub_100479268()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

uint64_t sub_1004792A4()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

uint64_t sub_1004792E0()
{
  sub_10022C350(&qword_100CBB908);
  sub_100003828();
  __chkstk_darwin(v0);
  v2 = &v7 - v1;
  Image.init(systemName:)();
  v3 = enum case for Image.TemplateRenderingMode.template(_:);
  v4 = type metadata accessor for Image.TemplateRenderingMode();
  (*(*(v4 - 8) + 104))(v2, v3, v4);
  sub_10001B350(v2, 0, 1, v4);
  v5 = Image.renderingMode(_:)();

  sub_10003FDF4(v2, &qword_100CBB908);
  return v5;
}

void sub_100479404()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA20F8 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FEA0);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA2100 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FEB8);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_10047963C()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v0);
  v1 = sub_100051E2C();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v3 + 8))(v7, v1);
  v17 = v1;
  v18 = &protocol witness table for Tips.MaxDisplayCount;
  v14 = sub_1000695A4();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v17 = v8;
  v18 = v14;
  sub_100013848();
  sub_100003B2C();
  static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  v15 = sub_100003B2C();
  v16(v15);
  (*(v10 + 8))(v13, v8);
  sub_10000536C();
}

uint64_t sub_1004798D0@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_100479918()
{
  result = qword_100CBC600;
  if (!qword_100CBC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC600);
  }

  return result;
}

uint64_t sub_1004799C4(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_10001C260();
  }

  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

void sub_100479A44()
{
  sub_10000C778();
  v3 = sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  v5 = v4;
  sub_100003828();
  __chkstk_darwin(v6);
  sub_100005E40();
  v7 = type metadata accessor for Tips.Rule();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100005888();
  if (qword_100CA2108 != -1)
  {
    v11 = swift_once();
  }

  sub_10001983C(v11, qword_100D8FED0);
  v12 = *(v5 + 16);
  v12(v0, v2, v3);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13 = *(v9 + 8);
  v14 = v13(v1, v7);
  if (qword_100CA2110 != -1)
  {
    v14 = swift_once();
  }

  sub_100004298(v14, qword_100D8FEE8);
  v15 = sub_10001698C();
  (v12)(v15);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v13(v1, v7);
  if (qword_100CA2118 != -1)
  {
    swift_once();
  }

  v16 = sub_10000703C(v3, qword_100D8FF00);
  swift_beginAccess();
  v12(v0, v16, v3);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v17 = sub_100049808();
  (v13)(v17);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  sub_10000536C();
}

unint64_t sub_100479DEC()
{
  result = qword_100CBC608;
  if (!qword_100CBC608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC608);
  }

  return result;
}

uint64_t sub_100479E54(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v3, a2);
  sub_10000703C(v3, a2);
  sub_10022C350(&qword_100CA55A8);
  type metadata accessor for Tips.ParameterOption();
  *(swift_allocObject() + 16) = xmmword_100A2C3F0;
  static Tips.ParameterOption.transient.getter();
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100479FB0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10022C350(&qword_100CA35A0);
  sub_100007074(v3, a2);
  sub_10000703C(v3, a2);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_10047A06C()
{
  sub_10001C260();
  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

uint64_t sub_10047A0A8(char a1)
{
  if ((a1 & 1) == 0)
  {
    sub_10001C260();
  }

  LocalizedStringKey.init(stringLiteral:)();
  return sub_1000100FC();
}

void sub_10047A130()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA35A0);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_100005E40();
  type metadata accessor for Tips.Rule();
  sub_1000037C4();
  __chkstk_darwin(v3);
  sub_100005888();
  if (qword_100CA2120 != -1)
  {
    v4 = swift_once();
  }

  sub_10001983C(v4, qword_100D8FF18);
  v5 = sub_100022C1C();
  v0(v5);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v6 = sub_100028518();
  v7 = v1(v6);
  if (qword_100CA2128 != -1)
  {
    v7 = swift_once();
  }

  sub_100004298(v7, qword_100D8FF30);
  v8 = sub_10001698C();
  v0(v8);
  sub_1000086B4();
  static Tips.RuleBuilder.buildExpression(_:)();
  v9 = sub_100049808();
  v1(v9);
  static Tips.RuleBuilder.buildPartialBlock(first:)();
  sub_100037AF0();
  sub_100003B2C();
  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();
  sub_10000EA60();

  sub_10002C730();
  sub_10000536C();
}

void sub_10047A368()
{
  sub_10000C778();
  sub_10022C350(&qword_100CA5578);
  sub_1000037C4();
  sub_100003828();
  __chkstk_darwin(v0);
  v1 = sub_100051E2C();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5588);
  sub_1000037C4();
  v10 = v9;
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = &v17 - v12;
  Tips.MaxDisplayCount.init(_:)();
  static Tips.OptionsBuilder.buildExpression<A>(_:)();
  (*(v3 + 8))(v7, v1);
  v17 = v1;
  v18 = &protocol witness table for Tips.MaxDisplayCount;
  v14 = sub_1000695A4();
  static Tips.OptionsBuilder.buildPartialBlock<A>(first:)();
  v17 = v8;
  v18 = v14;
  sub_100013848();
  sub_100003B2C();
  static Tips.OptionsBuilder.buildFinalResult<A>(_:)();
  v15 = sub_100003B2C();
  v16(v15);
  (*(v10 + 8))(v13, v8);
  sub_10000536C();
}

uint64_t sub_10047A5C8@<X0>(void (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  a1();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10047A610()
{
  result = qword_100CBC610;
  if (!qword_100CBC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC610);
  }

  return result;
}

unint64_t sub_10047A664()
{
  result = qword_100CBC628;
  if (!qword_100CBC628)
  {
    sub_10022E824(&qword_100CBC620);
    sub_100006F64(&qword_100CA5598, &qword_100CA5590);
    sub_10047A71C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC628);
  }

  return result;
}

unint64_t sub_10047A71C()
{
  result = qword_100CBC630;
  if (!qword_100CBC630)
  {
    sub_10022E824(&qword_100CBC618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC630);
  }

  return result;
}

unint64_t sub_10047A7A0()
{
  result = qword_100CBC640;
  if (!qword_100CBC640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC640);
  }

  return result;
}

unint64_t sub_10047A7F4()
{
  result = qword_100CBC648;
  if (!qword_100CBC648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC648);
  }

  return result;
}

unint64_t sub_10047A848()
{
  result = qword_100CBC650;
  if (!qword_100CBC650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC650);
  }

  return result;
}

unint64_t sub_10047A89C()
{
  result = qword_100CBC658;
  if (!qword_100CBC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC658);
  }

  return result;
}

unint64_t sub_10047A8F0()
{
  result = qword_100CBC660;
  if (!qword_100CBC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC660);
  }

  return result;
}

unint64_t sub_10047A944()
{
  result = qword_100CBC668;
  if (!qword_100CBC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBC668);
  }

  return result;
}

void sub_10047A9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for URLHandlerPattern();
    sub_100003DDC();
    v3 = &_swiftEmptyArrayStorage;
    v4 = a1 + 40;
    while (1)
    {
      v11 = v1;
      sub_10022C350(&qword_100CB5260);
      *(swift_allocObject() + 16) = xmmword_100A3BBA0;
      swift_bridgeObjectRetain_n();

      URLHandlerPattern.init(scheme:host:path:fragment:params:conditions:)();

      sub_100019874();

      sub_100019874();
      v5 = v3[2];
      if (__OFADD__(v5, 3))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v6 = v3[3] >> 1, v6 < v5 + 3))
      {
        sub_10069F730();
        v3 = v7;
        v6 = v7[3] >> 1;
      }

      if (v6 - v3[2] < 3)
      {
        goto LABEL_13;
      }

      swift_arrayInitWithCopy();

      v8 = v3[2];
      v9 = __OFADD__(v8, 3);
      v10 = v8 + 3;
      if (v9)
      {
        goto LABEL_14;
      }

      v4 += 16;
      v3[2] = v10;
      --v1;
      if (v11 == 1)
      {
        return;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_10047AC90(uint64_t a1)
{
  v2 = sub_10022C350(&qword_100CB5268);
  sub_1000037C4();
  v181 = v3;
  __chkstk_darwin(v4);
  v180 = v165 - v5;
  v6 = sub_10022C350(&qword_100CA6898);
  __chkstk_darwin(v6 - 8);
  sub_100003918(v165 - v7);
  v176 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v175 = v8;
  __chkstk_darwin(v9);
  sub_1000038E4();
  sub_100003918(v10);
  v174 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v172 = v11;
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v183 = type metadata accessor for DispatchTime();
  sub_1000037C4();
  v170 = v14;
  __chkstk_darwin(v15);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v16);
  v18 = sub_100003918(v165 - v17);
  v179 = type metadata accessor for OpenL2Descriptor(v18);
  sub_1000037C4();
  v165[0] = v19;
  __chkstk_darwin(v20);
  v166 = v165 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165[1] = v21;
  __chkstk_darwin(v22);
  sub_100003918(v165 - v23);
  v188 = type metadata accessor for ActivityAction();
  sub_1000037E8();
  __chkstk_darwin(v24);
  sub_1000038E4();
  sub_100003918(v25);
  ParameterKey = type metadata accessor for WeatherQueryParameterKey();
  sub_1000037C4();
  v205 = v26;
  __chkstk_darwin(v27);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003918(v165 - v30);
  v214 = type metadata accessor for URLHandlerMatch.Values();
  sub_1000037C4();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v34);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v37);
  sub_100003878();
  v206 = v38;
  __chkstk_darwin(v39);
  v41 = v165 - v40;
  v42 = type metadata accessor for URLHandlerMatch();
  sub_1000037C4();
  v44 = v43;
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v47);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v48);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v49);
  v51 = v165 - v50;
  __chkstk_darwin(v52);
  v54 = v165 - v53;
  v55 = sub_10022C350(&unk_100CB2CF0);
  __chkstk_darwin(v55 - 8);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  v58 = v165 - v57;
  v59 = type metadata accessor for Date();
  v207 = v58;
  v184 = v59;
  sub_10001B350(v58, 1, 1, v59);
  sub_100066E08();
  v204 = Dictionary.init(dictionaryLiteral:)();
  v60 = v2;
  v61 = a1;
  URLHandlerContext.match.getter();
  URLHandlerMatch.values.getter();
  v62 = v54;
  v63 = *(v44 + 8);
  v64 = v42;
  v65 = v42;
  v66 = v44 + 8;
  v63(v62, v65);
  v190 = URLHandlerMatch.Values.subscript.getter();
  v68 = v67;
  v69 = *(v32 + 8);
  v203 = v32 + 8;
  v69(v41, v214);
  v210 = v63;
  v211 = v66;
  v202 = v51;
  v212 = v61;
  v213 = v69;
  v208 = v60;
  v209 = v64;
  if (v68)
  {
    URLHandlerContext.match.getter();
    v70 = v206;
    URLHandlerMatch.values.getter();
    v63(v51, v64);
    v71 = v205;
    v72 = (v205 + 104);
    v200 = *(v205 + 104);
    v73 = v198;
    v74 = ParameterKey;
    v200(v198, enum case for WeatherQueryParameterKey.temperature(_:), ParameterKey);
    WeatherQueryParameterKey.rawValue.getter();
    v199 = *(v71 + 8);
    v199(v73, v74);
    v75 = URLHandlerMatch.Values.subscript.getter();
    v77 = v76;

    v78 = v214;
    v213(v70, v214);
    LODWORD(v198) = sub_1009FFFA4(v190, v68, v75, v77);
    v79 = v191;
    URLHandlerContext.match.getter();
    v80 = v192;
    URLHandlerMatch.values.getter();
    v81 = v210;
    v210(v79, v209);
    v82 = v193;
    v191 = v72;
    v200(v193, enum case for WeatherQueryParameterKey.date(_:), v74);
    WeatherQueryParameterKey.rawValue.getter();
    v205 = v71 + 8;
    v199(v82, v74);
    URLHandlerMatch.Values.subscript.getter();
    v84 = v83;

    v213(v80, v78);
    v85 = v81;
    if (v84)
    {
      v86 = [objc_allocWithZone(NSISO8601DateFormatter) init];
      [v86 setFormatOptions:1907];
      v87 = String._bridgeToObjectiveC()();

      v88 = [v86 dateFromString:v87];

      if (v88)
      {
        v89 = v185;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        sub_1000180EC(v207, &unk_100CB2CF0);
        v90 = 0;
      }

      else
      {
        sub_1000180EC(v207, &unk_100CB2CF0);

        v90 = 1;
        v89 = v185;
      }

      sub_10001B350(v89, v90, 1, v184);
      sub_100237E84(v89, v207);
    }

    v94 = v195;
    URLHandlerContext.match.getter();
    v95 = v196;
    URLHandlerMatch.values.getter();
    v85(v94, v209);
    v96 = v197;
    v200(v197, enum case for WeatherQueryParameterKey.position(_:), v74);
    WeatherQueryParameterKey.rawValue.getter();
    v199(v96, v74);
    URLHandlerMatch.Values.subscript.getter();
    v98 = v97;

    v213(v95, v214);
    if (v98)
    {
      v99 = v204;
      swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v99;
      sub_100239630();
      v204 = aBlock[0];
    }

    v93 = v201;
    v51 = v202;
    v91 = v214;
    v92 = v209;
  }

  else
  {
    LODWORD(v198) = 18;
    v91 = v214;
    v92 = v64;
    v93 = v201;
  }

  URLHandlerContext.match.getter();
  v100 = v206;
  URLHandlerMatch.values.getter();
  v210(v51, v92);
  v101 = v92;
  v102 = sub_10022F3D4();
  v103 = v213;
  v213(v100, v91);
  if ((v102 & 1) == 0)
  {
    v110 = v186;
    v111 = v103;
    URLHandlerContext.match.getter();
    v112 = v187;
    URLHandlerMatch.values.getter();
    v113 = v110;
    v114 = v210;
    v210(v113, v101);
    *&v115 = COERCE_DOUBLE(sub_10022F730());
    v117 = v116;
    v119 = v118;
    v111(v112, v91);
    if ((v119 & 1) == 0)
    {
      v151 = *&v115;
      v152 = v117;
      v205 = v93[11];
      v153 = v202;
      URLHandlerContext.match.getter();
      v154 = v206;
      URLHandlerMatch.values.getter();
      v155 = v209;
      v114(v153, v209);
      v202 = sub_10022FA00();
      v201 = v156;
      v157 = v213;
      v213(v154, v91);
      v158 = v177;
      URLHandlerContext.match.getter();
      v159 = v178;
      URLHandlerMatch.values.getter();
      v114(v158, v155);
      v160 = sub_10022F3E0();
      v157(v159, v91);
      v161 = v207;
      sub_1002A2C08(v202, v201, v198, v207, v204, v160 & 1, 0, v151, v152);

      v162 = v161;
LABEL_26:
      sub_1000180EC(v162, &unk_100CB2CF0);
      return 1;
    }

    v120 = v212;
    v121 = v208;

    if (qword_100CA2758 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_10000703C(v122, qword_100D90C60);
    v123 = v181;
    v124 = v180;
    (*(v181 + 16))(v180, v120, v121);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.default.getter();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v202;
    if (v127)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      aBlock[0] = v130;
      *v129 = 141558275;
      *(v129 + 4) = 1752392040;
      *(v129 + 12) = 2081;
      URLHandlerContext.match.getter();
      URLHandlerMatch.values.getter();
      v210(v128, v209);
      v131 = String.init<A>(describing:)();
      v133 = v132;
      (*(v123 + 8))(v124, v121);
      v134 = sub_100078694(v131, v133, aBlock);

      *(v129 + 14) = v134;
      _os_log_impl(&_mh_execute_header, v125, v126, "No coordinates available in URL, matches=%{private,mask.hash}s", v129, 0x16u);
      sub_100006F14(v130);
    }

    else
    {

      (*(v123 + 8))(v124, v121);
    }

LABEL_25:
    v162 = v207;
    goto LABEL_26;
  }

  v104 = v93;
  sub_1000161C0(v93 + 6, v93[9]);
  v105 = v189;
  swift_storeEnumTagMultiPayload();
  v106 = static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
  v107 = static VerticalSizingBehaviorKey.defaultValue.getter();
  v108 = sub_100366814(v105, v106 & 1, v107 & 1);
  sub_10047C2CC(v105, type metadata accessor for ActivityAction);
  v109 = v198;
  if (v198 != 18)
  {
    v135 = v179;
    v136 = *(v179 + 24);
    v137 = v182;
    static Location.current.getter();
    v138 = type metadata accessor for Location();
    sub_10001B350(&v137[v136], 0, 1, v138);
    sub_1000D47CC(v207, &v137[v135[9]]);
    *v137 = v109;
    v137[1] = 0;
    v139 = &v137[v135[7]];
    *v139 = 0;
    *(v139 + 1) = 0;
    v139[16] = 1;
    v140 = &v137[v135[8]];
    *v140 = 0;
    v140[1] = 0;
    *&v137[v135[10]] = v204;
    if (v108)
    {
      sub_100040690();
      v213 = static OS_dispatch_queue.main.getter();
      v141 = v167;
      static DispatchTime.now()();
      v142 = v169;
      + infix(_:_:)();
      v214 = *(v170 + 8);
      v214(v141, v183);
      v143 = v166;
      sub_10047C268(v137, v166);
      v144 = (*(v165[0] + 80) + 24) & ~*(v165[0] + 80);
      v145 = swift_allocObject();
      *(v145 + 16) = v104;
      sub_10047C324(v143, v145 + v144);
      aBlock[4] = sub_10047C388;
      aBlock[5] = v145;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C59130;
      v146 = _Block_copy(aBlock);

      v147 = v171;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_10047C3EC(&qword_100CD81C0, 255, &type metadata accessor for DispatchWorkItemFlags);
      sub_10022C350(&qword_100CB4680);
      sub_1000743E8();
      v148 = v173;
      v149 = v176;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v150 = v213;
      OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
      _Block_release(v146);

      (*(v175 + 8))(v148, v149);
      (*(v172 + 8))(v147, v174);
      v214(v142, v183);
    }

    else
    {
      sub_1000161C0(v104 + 6, v104[9]);
      v163 = v168;
      sub_10047C268(v137, v168);
      sub_10001B350(v163, 0, 1, v135);
      sub_100364F6C(v163);
      sub_1000180EC(v163, &qword_100CA6898);
    }

    sub_10047C2CC(v137, type metadata accessor for OpenL2Descriptor);
    goto LABEL_25;
  }

  sub_1000180EC(v207, &unk_100CB2CF0);

  return 1;
}

uint64_t sub_10047C058(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - v5;
  sub_1000161C0((a1 + 48), *(a1 + 72));
  sub_10047C268(a2, v6);
  v7 = type metadata accessor for OpenL2Descriptor(0);
  sub_10001B350(v6, 0, 1, v7);
  sub_100364F6C(v6);
  return sub_1000180EC(v6, &qword_100CA6898);
}

uint64_t sub_10047C138()
{

  sub_100006F14(v0 + 48);

  return v0;
}

uint64_t sub_10047C184()
{
  sub_10047C138();

  return swift_deallocClassInstance();
}

uint64_t sub_10047C210(uint64_t a1, uint64_t a2)
{
  result = sub_10047C3EC(&qword_100CBC728, a2, type metadata accessor for LocationURLHandlerLink);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10047C268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenL2Descriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C2CC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10047C324(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenL2Descriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10047C388()
{
  v1 = *(type metadata accessor for OpenL2Descriptor(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10047C058(v2, v3);
}

uint64_t sub_10047C3EC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_10047C434()
{
  type metadata accessor for ActualListInput(0);
  sub_1000037E8();
  __chkstk_darwin(v0);
  sub_1000037D8();
  v3 = v2 - v1;
  v4 = type metadata accessor for ListInput(0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = sub_10022C350(&qword_100CBC9A0);
  sub_100003810(v9);
  sub_100003828();
  v11 = __chkstk_darwin(v10);
  v13 = &v18 - v12;
  v14 = *(v11 + 56);
  sub_10047E658();
  sub_10047E658();
  sub_10000394C(v13);
  if (!v16)
  {
    sub_10047E658();
    sub_10000394C(&v13[v14]);
    if (!v16)
    {
      sub_10047E600();
      v15 = sub_10047C654(v8, v3);
      sub_10047E5A8(v3, type metadata accessor for ActualListInput);
      sub_10047E5A8(v8, type metadata accessor for ActualListInput);
      sub_100049818();
      return v15 & 1;
    }

    sub_10047E5A8(v8, type metadata accessor for ActualListInput);
LABEL_9:
    sub_1000180EC(v13, &qword_100CBC9A0);
    v15 = 0;
    return v15 & 1;
  }

  sub_10000394C(&v13[v14]);
  if (!v16)
  {
    goto LABEL_9;
  }

  sub_100049818();
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_10047C654(uint64_t a1, uint64_t a2)
{
  v118 = type metadata accessor for ContentStatusBanner();
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_1000037D8();
  v7 = v6 - v5;
  v8 = sub_10022C350(&qword_100CA5010);
  sub_100003810(v8);
  sub_100003828();
  __chkstk_darwin(v9);
  sub_1000039BC();
  v119 = v10;
  v117 = sub_10022C350(&qword_100CA50C0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v11);
  sub_1000039BC();
  v120 = v12;
  type metadata accessor for SearchViewState.ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v13);
  sub_1000038E4();
  v121 = v14;
  v15 = sub_10022C350(&qword_100CB0250);
  sub_100003810(v15);
  sub_100003828();
  __chkstk_darwin(v16);
  sub_1000039BC();
  v122 = v17;
  v18 = sub_10022C350(&qword_100CBC9A8);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v19);
  sub_1000039BC();
  v123 = v20;
  v21 = type metadata accessor for CurrentLocation();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_1000037D8();
  v25 = v24 - v23;
  v26 = sub_10022C350(&unk_100CE49F0);
  sub_100003810(v26);
  sub_100003828();
  __chkstk_darwin(v27);
  v29 = &v113 - v28;
  v30 = sub_10022C350(&qword_100CBC9B0);
  sub_1000037E8();
  sub_100003828();
  __chkstk_darwin(v31);
  v33 = &v113 - v32;
  sub_1000B9770();
  if ((v34 & 1) == 0)
  {
    goto LABEL_16;
  }

  v114 = v7;
  v35 = type metadata accessor for ActualListInput(0);
  v124 = a2;
  v36 = a1;
  v37 = *(v30 + 48);
  v115 = v35;
  v116 = v36;
  sub_100095588();
  v38 = v124;
  sub_100095588();
  sub_1000038B4(v33, 1, v21);
  if (v45)
  {
    sub_1000038B4(&v33[v37], 1, v21);
    if (v45)
    {
      sub_1000180EC(v33, &unk_100CE49F0);
      goto LABEL_13;
    }

LABEL_10:
    v47 = &qword_100CBC9B0;
    v48 = v33;
LABEL_11:
    sub_1000180EC(v48, v47);
    goto LABEL_16;
  }

  sub_100095588();
  sub_1000038B4(&v33[v37], 1, v21);
  if (v45)
  {
    sub_1000086D4();
    sub_10047E5A8(v29, v46);
    goto LABEL_10;
  }

  sub_10047E600();
  v49 = static CurrentLocation.== infix(_:_:)();
  sub_10047E5A8(v25, &type metadata accessor for CurrentLocation);
  sub_10047E5A8(v29, &type metadata accessor for CurrentLocation);
  sub_1000180EC(v33, &unk_100CE49F0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v51 = v115;
  v50 = v116;
  sub_1000B9068(*(v116 + v115[6]), *(v38 + v115[6]), v39, v40, v41, v42, v43, v44, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124);
  if ((v52 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000B93DC();
  if ((v53 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10000EA78();
  if (v56)
  {
    if (!v57)
    {
      goto LABEL_16;
    }

    v60 = *v58 == *v59 && v56 == v57;
    if (!v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v57)
  {
    goto LABEL_16;
  }

  v61 = v51[10];
  v62 = (v50 + v61);
  v63 = *(v50 + v61 + 8);
  v64 = (v38 + v61);
  v65 = *(v38 + v61 + 8);
  if (v63 == 1)
  {
    if ((v65 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if (*v62 != *v64)
    {
      v65 = 1;
    }

    if (v65)
    {
      goto LABEL_16;
    }
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  v66 = v51[12];
  v67 = *(v50 + v66);
  v68 = *(v50 + v66 + 8);
  v69 = (v38 + v66);
  v70 = v67 == *v69 && v68 == v69[1];
  if (!v70 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10000EA78();
  if (v71)
  {
    if (!v72)
    {
      goto LABEL_16;
    }

    v75 = *v73 == *v74 && v71 == v72;
    if (!v75 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v72)
  {
    goto LABEL_16;
  }

  v76 = *(v18 + 48);
  v77 = v123;
  sub_1000314B0();
  sub_1000314B0();
  sub_10000394C(v77);
  if (v45)
  {
    sub_10000394C(v77 + v76);
    if (v45)
    {
      sub_1000180EC(v77, &qword_100CB0250);
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  v78 = v122;
  sub_100095588();
  sub_10000394C(v77 + v76);
  if (v79)
  {
    sub_10047E5A8(v78, type metadata accessor for SearchViewState.ViewState);
LABEL_57:
    v47 = &qword_100CBC9A8;
    v48 = v77;
    goto LABEL_11;
  }

  v80 = v121;
  sub_10047E600();
  v81 = sub_1000BB564(v78, v80);
  sub_10047E5A8(v80, type metadata accessor for SearchViewState.ViewState);
  sub_10047E5A8(v78, type metadata accessor for SearchViewState.ViewState);
  sub_1000180EC(v77, &qword_100CB0250);
  if ((v81 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_59:
  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10004E60C();
  if (!v45)
  {
    goto LABEL_16;
  }

  if ((sub_1001AEF68(*(v50 + v51[17]) | (*(v50 + v51[17] + 2) << 16), *(v38 + v51[17]) | (*(v38 + v51[17] + 2) << 16)) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v82 = v115[24];
  v83 = *(v124 + v82);
  v84 = LocationAuthorizationState.rawValue.getter(*(v116 + v82));
  v86 = v85;
  if (v84 == LocationAuthorizationState.rawValue.getter(v83) && v86 == v87)
  {
  }

  else
  {
    v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v89 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ((sub_1000BA238(*(v116 + v115[25]), *(v124 + v115[25])) & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(v116 + v115[26]) != *(v124 + v115[26]))
  {
    goto LABEL_16;
  }

  sub_1000BDA70();
  if ((v90 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000BDD2C();
  if ((v91 & 1) == 0)
  {
    goto LABEL_16;
  }

  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v92 = v115[29];
  v93 = *(v116 + v92);
  v94 = *(v124 + v92);
  if (v93)
  {
    if (!v94)
    {
      goto LABEL_16;
    }

    sub_1000B8CA8();
    v95 = v94;
    v96 = v93;
    v97 = static NSObject.== infix(_:_:)();

    if ((v97 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v94)
  {
    goto LABEL_16;
  }

  v98 = v115[30];
  v99 = *(v116 + v98);
  v100 = *(v116 + v98 + 8);
  v101 = (v124 + v98);
  v102 = v99 == *v101 && v100 == v101[1];
  if (!v102 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000BCFBC();
  if ((v103 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_100003940();
  sub_1000BD330();
  if ((v104 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  if (*(v116 + v115[32]) != *(v124 + v115[32]))
  {
    goto LABEL_16;
  }

  sub_10001ED14();
  if (!v45)
  {
    goto LABEL_16;
  }

  v105 = *(v117 + 48);
  v106 = v120;
  sub_1000314B0();
  sub_1000314B0();
  sub_1000038B4(v106, 1, v118);
  if (!v45)
  {
    v107 = v120;
    sub_100095588();
    sub_1000038B4(v107 + v105, 1, v118);
    if (!v108)
    {
      v109 = v120;
      v110 = v114;
      sub_10047E600();
      v111 = v119;
      v112 = sub_100133BA0(v119, v110);
      sub_10047E5A8(v110, type metadata accessor for ContentStatusBanner);
      sub_10047E5A8(v111, type metadata accessor for ContentStatusBanner);
      sub_1000180EC(v109, &qword_100CA5010);
      if (!v112)
      {
        goto LABEL_16;
      }

      goto LABEL_116;
    }

    sub_10047E5A8(v119, type metadata accessor for ContentStatusBanner);
    goto LABEL_114;
  }

  sub_1000038B4(v120 + v105, 1, v118);
  if (!v45)
  {
LABEL_114:
    v47 = &qword_100CA50C0;
    v48 = v120;
    goto LABEL_11;
  }

  sub_1000180EC(v120, &qword_100CA5010);
LABEL_116:
  sub_10001ED14();
  if (v45)
  {
    sub_10001ED14();
    if (v45)
    {
      sub_1000B9424();
      return v54 & 1;
    }
  }

LABEL_16:
  v54 = 0;
  return v54 & 1;
}

uint64_t sub_10047D13C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v186 = a2;
  v182 = type metadata accessor for ModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v3);
  sub_1000038E4();
  sub_100003918(v4);
  v5 = type metadata accessor for TimeState();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000038E4();
  sub_100003918(v7);
  v8 = type metadata accessor for Date();
  v9 = sub_100003E5C(v8, &v206);
  v184 = v10;
  __chkstk_darwin(v9);
  sub_100003848();
  v195 = v11;
  __chkstk_darwin(v12);
  v194 = &v153 - v13;
  v14 = sub_10022C350(&qword_100CB0250);
  sub_100003810(v14);
  sub_100003828();
  __chkstk_darwin(v15);
  sub_1000039BC();
  v193 = v16;
  v17 = sub_10022C350(&qword_100CA6600);
  v18 = sub_100003810(v17);
  __chkstk_darwin(v18);
  sub_100003848();
  v180 = v19;
  __chkstk_darwin(v20);
  v22 = sub_100003918(&v153 - v21);
  v183 = type metadata accessor for ListInput(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000037D8();
  v26 = (v25 - v24);
  v27 = type metadata accessor for CurrentWeather();
  v28 = sub_100003E5C(v27, &v197);
  v164 = v29;
  __chkstk_darwin(v28);
  sub_1000038E4();
  sub_100003918(v30);
  active = type metadata accessor for LocationViewerActiveLocationState();
  v32 = sub_100003810(active);
  __chkstk_darwin(v32);
  sub_1000038E4();
  v167 = v33;
  v34 = sub_10022C350(&qword_100CA37B0);
  sub_100003810(v34);
  sub_100003828();
  __chkstk_darwin(v35);
  sub_1000039BC();
  v168 = v36;
  v37 = sub_10022C350(&qword_100CA3898);
  sub_100003810(v37);
  sub_100003828();
  __chkstk_darwin(v38);
  sub_1000039BC();
  v40 = sub_100003918(v39);
  v169 = type metadata accessor for WeatherData(v40);
  sub_1000037E8();
  __chkstk_darwin(v41);
  sub_1000038E4();
  v43 = sub_100003918(v42);
  v173 = type metadata accessor for ViewState.SecondaryViewState(v43);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  v177 = v45;
  v46 = sub_10022C350(&unk_100CE49F0);
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_100003848();
  v191 = v48;
  v50 = __chkstk_darwin(v49);
  v52 = &v153 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = &v153 - v54;
  __chkstk_darwin(v53);
  v57 = &v153 - v56;
  v197 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v58);
  sub_1000037D8();
  v61 = (v60 - v59);
  sub_10002852C();
  v203 = v62;
  sub_10047E658();
  v204 = *v61;

  sub_100022C30();
  v179 = v61;
  sub_10047E5A8(v61, v63);
  v64 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
  v201 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
  v66 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
  v65 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
  v166 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData;
  v190 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations);
  sub_100095588();
  v192 = a1;
  v67 = (a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notificationsOptIn);
  v188 = type metadata accessor for NotificationsOptInState();
  v189 = v67;
  LODWORD(v187) = v67[v188[16]];
  v198 = v57;
  sub_100095588();
  v68 = type metadata accessor for CurrentLocation();
  v69 = sub_10000C7F0();
  LODWORD(v67) = sub_100024D10(v69, v70, v68);
  v202 = v64;

  v200 = v66;

  v199 = v65;

  if (v67 == 1)
  {
    sub_1000180EC(v55, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000086D4();
    sub_10047E5A8(v55, v71);
  }

  sub_100141E5C();
  v73 = v72;

  sub_100095588();
  sub_1000038B4(v52, 1, v68);
  v74 = v192;
  if (v99)
  {
    sub_1000180EC(v52, &unk_100CE49F0);
  }

  else
  {
    CurrentLocation.id.getter();
    sub_1000086D4();
    sub_10047E5A8(v52, v75);
  }

  sub_100141E74();
  v77 = v76;

  v78 = v74 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
  swift_beginAccess();
  v172 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications;
  v79 = *(v74 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_notifications);
  v80 = *(v78 + 2);
  v174 = v78;
  v176 = sub_100141E8C(v187, v73 & 1, v77 & 1, *(v78 + 1), v79, v80);

  v175 = sub_100441CA8(v81);
  v82 = *(v204 + 56);
  v83 = v189[v188[14]];
  if (*(v196 + 16))
  {
    v84 = v177;
    if (*(v196 + 16) != 3 && !v189[v188[14]])
    {
      v83 = *(v196 + 16);
    }
  }

  else
  {
    v84 = v177;
  }

  LODWORD(v177) = v83;
  v85 = *(v204 + 48);
  sub_10047E658();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v171 = v85;
  v187 = v82;
  if (EnumCaseMultiPayload == 1)
  {

    sub_10047E5A8(v84, type metadata accessor for ViewState.SecondaryViewState);
    LODWORD(v173) = 0;
    goto LABEL_22;
  }

  v87 = *(v166 + 16);
  v88 = v167;
  sub_10047E658();

  v89 = sub_1000E0924();
  v91 = v90;
  sub_10047E5A8(v88, type metadata accessor for LocationViewerActiveLocationState);
  v92 = v168;
  sub_1000864C0(v89, v91, v87);

  v93 = v92;

  v94 = type metadata accessor for LocationWeatherDataState(0);
  sub_1000038B4(v92, 1, v94);
  if (v99)
  {

    sub_1000180EC(v92, &qword_100CA37B0);
    v98 = v170;
    v95 = sub_10000C7F0();
    sub_10001B350(v95, v96, 1, v169);
  }

  else
  {
    v97 = v170;
    sub_1001A0D3C();
    v98 = v97;
    sub_10047E5A8(v93, type metadata accessor for LocationWeatherDataState);
    sub_1000038B4(v97, 1, v169);
    if (!v99)
    {
      v100 = v162;
      sub_10047E600();
      v101 = v163;
      WeatherDataModel.currentWeather.getter();
      LODWORD(v173) = CurrentWeather.requiresAdditionalContrast.getter();

      (*(v164 + 8))(v101, v165);
      sub_10047E5A8(v100, type metadata accessor for WeatherData);
      goto LABEL_22;
    }
  }

  sub_1000180EC(v98, &qword_100CA3898);
  LODWORD(v173) = 0;
LABEL_22:
  v205 = 2;
  v102 = type metadata accessor for LocationsState();
  v103 = v190;
  v104 = *(v190 + v102[9]);
  sub_100095588();
  v165 = v102;
  v105 = *(v103 + v102[5]);
  v106 = *(v103 + v102[6]);
  LODWORD(v163) = *(v204 + 88);
  v107 = *(v204 + 80);
  v167 = *(v204 + 72);
  v169 = *(v204 + 16);
  LODWORD(v168) = *(v204 + 24);
  LODWORD(v170) = *(v204 + 64);
  sub_1000113EC();
  sub_100095588();
  v108 = type metadata accessor for SearchViewState(0);
  v109 = sub_10000C7F0();
  sub_1000038B4(v109, v110, v108);
  v166 = v107;
  if (v99)
  {

    sub_1000180EC(v103, &qword_100CA6600);
    v160 = 0;
    v159 = 0xE000000000000000;
  }

  else
  {
    v111 = v103[1];
    v160 = *v103;

    v159 = v111;

    sub_10001699C();
  }

  v112 = v187;
  sub_1000113EC();
  sub_100095588();
  v113 = sub_10000C7F0();
  sub_1000038B4(v113, v114, v108);
  if (v99)
  {
    sub_1000180EC(v103, &qword_100CA6600);
    v116 = 1;
    v117 = v192;
    v115 = v193;
  }

  else
  {
    v115 = v193;
    sub_10047E658();
    sub_10001699C();
    v116 = 0;
    v117 = v192;
  }

  v118 = type metadata accessor for SearchViewState.ViewState(0);
  sub_10001B350(v115, v116, 1, v118);
  v99 = *(v204 + 64) == 1;
  v164 = v104;
  v162 = v106;
  v161 = v105;
  if (v99)
  {
    v158 = sub_10047E364(&v205);
  }

  else
  {
    v158 = 0;
  }

  v119 = v171;
  if (!v112)
  {
    v119 = 0;
  }

  v155 = v119;
  v120 = v204;
  v156 = *(v204 + 27);
  v121 = v189;
  LODWORD(v171) = *v189;
  LODWORD(v180) = v189[17];
  v122 = v188;
  v123 = v184;
  v124 = v185;
  (*(v184 + 16))(v194, &v189[v188[11]], v185);
  v157 = *(v121 + v122[12]);
  v125 = v174;
  LODWORD(v188) = *(v174 + 1);
  LODWORD(v189) = *(v172 + v117);
  v178 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
  v126 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
  v154 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
  v153 = v126;
  sub_1000113EC();
  sub_10047E658();
  v172 = *(v123 + 32);
  v172(v195, v121, v124);
  v127 = type metadata accessor for EnvironmentState();
  LODWORD(v184) = *(v125 + *(v127 + 40));
  v128 = v120;
  v181 = *(v125 + *(v127 + 72) + 16);
  v129 = v181;
  sub_1000113EC();
  sub_10047E658();
  LODWORD(v182) = swift_getEnumCaseMultiPayload() == 0;
  v130 = v129;

  sub_10047E5A8(v121, type metadata accessor for ModalViewState);
  sub_10002852C();
  sub_1000113EC();
  sub_10047E658();
  v203 = *(v121 + *(v197 + 36) + 8);
  sub_100022C30();
  sub_10047E5A8(v121, v131);
  LODWORD(v197) = *(v128 + 89);
  v132 = *(v117 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
  v133 = type metadata accessor for ActualListInput(0);
  v134 = v133[34];

  sub_1007348DC(0, 0, v132, v26 + v134);

  sub_1000180EC(v198, &unk_100CE49F0);
  v135 = *(v125 + 3) == 4;
  v136 = *(v190 + v165[7]);
  *v26 = v164;
  sub_100051BBC();
  *(v26 + v133[6]) = v161;
  *(v26 + v133[7]) = v162;
  sub_1000695D0(v133[8]);
  v137 = (v26 + v133[9]);
  v138 = v166;
  *v137 = v167;
  v137[1] = v138;
  v139 = v26 + v133[10];
  *v139 = v169;
  v139[8] = v168;
  sub_1000695D0(v133[11]);
  v140 = (v26 + v133[12]);
  v141 = v159;
  *v140 = v160;
  v140[1] = v141;
  v142 = (v26 + v133[13]);
  v143 = v187;
  *v142 = v155;
  v142[1] = v143;
  sub_100051BBC();
  *(v26 + v133[15]) = v158 & 1;
  sub_1000695D0(v133[16]);
  v144 = v26 + v133[17];
  v145 = v176;
  v144[2] = BYTE2(v176);
  *v144 = v145;
  sub_1000695D0(v133[18]);
  sub_1000695D0(v133[19]);
  sub_1000695D0(v133[20]);
  v146 = v172;
  v172(v26 + v133[21], v194, v124);
  sub_1000695D0(v133[22]);
  LOBYTE(v132) = v177;
  *(v26 + v133[23]) = v177;
  *(v26 + v133[24]) = v188;
  *(v26 + v133[25]) = v189;
  v147 = v26 + v133[26];
  *v147 = v178;
  v148 = v153;
  *(v147 + 1) = v154;
  *(v147 + 2) = v148;
  v146(v26 + v133[27], v195, v124);
  sub_1000695D0(v133[28]);
  *(v26 + v133[29]) = v181;
  v149 = (v26 + v133[30]);
  v150 = v202;
  *v149 = v201;
  v149[1] = v150;
  v151 = v199;
  v149[2] = v200;
  v149[3] = v151;
  sub_1000695D0(v133[31]);
  *(v26 + v133[32]) = v203;
  *(v26 + v133[33]) = v197;
  *(v26 + v133[35]) = v135;
  *(v26 + v133[36]) = v173 & 1;
  *(v26 + v133[37]) = v136;
  sub_10001B350(v26, 0, 1, v133);
  *(v196 + 16) = v132;
  sub_1000113EC();
  sub_10047E600();
  sub_10001B350(v135, 0, 1, v183);
}

uint64_t sub_10047E364(_BYTE *a1)
{
  v2 = type metadata accessor for LocationsState();
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10022C350(&qword_100CA6600);
  __chkstk_darwin(v5 - 8);
  v7 = &v11 - v6;
  v8 = *a1;
  if (v8 == 2)
  {
    type metadata accessor for ViewState(0);
    sub_100095588();
    v9 = type metadata accessor for SearchViewState(0);
    if (sub_100024D10(v7, 1, v9) == 1)
    {
      sub_1000180EC(v7, &qword_100CA6600);
      LOBYTE(v8) = 0;
    }

    else
    {
      sub_10047E658();
      LOBYTE(v8) = sub_100368A3C();
      sub_10047E5A8(v4, type metadata accessor for LocationsState);
      sub_10047E5A8(v7, type metadata accessor for SearchViewState);
    }

    swift_beginAccess();
    *a1 = v8 & 1;
  }

  return v8 & 1;
}

uint64_t sub_10047E5A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10047E600()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10047E658()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10047E6B0(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  sub_10000FB48();
  __chkstk_darwin(v5);
  sub_10001C26C();
  sub_10043D478((v1 + 96));
  v6 = sub_100005E50();
  v7(v6);
  v8 = 16;
  if (v3)
  {
    v8 = 56;
  }

  sub_1000086EC(v8);
  return (*(v9 + 8))(a1, v2, v3);
}

uint64_t sub_10047E7A4(uint64_t a1)
{
  type metadata accessor for Location.Identifier();
  sub_10000FB48();
  __chkstk_darwin(v5);
  sub_10001C26C();
  sub_10043D478((v1 + 96));
  v6 = sub_100005E50();
  v7(v6);
  v8 = 16;
  if (v3)
  {
    v8 = 56;
  }

  sub_1000086EC(v8);
  return (*(v9 + 16))(a1, v2, v3);
}

uint64_t sub_10047E908()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100007074(v6, static OpenWeatherAirQualityIntent.title);
  sub_10000703C(v6, static OpenWeatherAirQualityIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t static OpenWeatherAirQualityIntent.title.modify()
{
  if (qword_100CA2130 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();
  sub_10000703C(v0, static OpenWeatherAirQualityIntent.title);
  sub_100005E7C();
  return sub_100049840();
}

uint64_t sub_10047EC10()
{
  v0 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v0 - 8);
  v2 = &v12[-v1];
  v3 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Locale();
  __chkstk_darwin(v7 - 8);
  v8 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v8 - 8);
  v9 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for IntentDescription();
  sub_100007074(v10, static OpenWeatherAirQualityIntent.description);
  sub_10000703C(v10, static OpenWeatherAirQualityIntent.description);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v4 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v3);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v2, 1, 1, v9);
  return IntentDescription.init(_:categoryName:searchKeywords:)();
}

uint64_t static OpenWeatherAirQualityIntent.description.modify()
{
  if (qword_100CA2138 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for IntentDescription();
  sub_10000703C(v0, static OpenWeatherAirQualityIntent.description);
  sub_100005E7C();
  return sub_100049840();
}

uint64_t static OpenWeatherAirQualityIntent.parameterSummary.getter()
{
  v0 = sub_10022C350(&qword_100CBCB20);
  sub_100003810(v0);
  sub_100003828();
  __chkstk_darwin(v1);
  sub_10022C350(&qword_100CBCB28);
  sub_100003B20();
  sub_100003828();
  __chkstk_darwin(v2);
  sub_10001365C();
  sub_10047F18C();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v3._object = 0x8000000100ACAE70;
  v3._countAndFlagsBits = 0xD00000000000001DLL;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCB38);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  ParameterSummaryString.init(stringInterpolation:)();
  sub_1000042D0();
  return IntentParameterSummary.init(_:table:_:)();
}

unint64_t sub_10047F18C()
{
  result = qword_100CBCB30;
  if (!qword_100CBCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB30);
  }

  return result;
}

uint64_t sub_10047F204@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047F1E0();
  *a1 = result;
  return result;
}

uint64_t sub_10047F230()
{
  swift_getKeyPath();
  sub_10047F18C();
  v0 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildExpression<A>(_:)();

  sub_10022C350(&unk_100CE49D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A3BD20;
  *(v1 + 32) = v0;

  v2 = static IntentParameterSummary.ParameterKeyPathsBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_10047F310@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10047F2EC();
  *a1 = result;
  return result;
}

__n128 sub_10047F33C@<Q0>(uint64_t a1@<X8>)
{
  IntentParameter.wrappedValue.getter();
  result = v4;
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10047F390(__int128 *a1)
{
  v1 = a1[1];
  v5 = *a1;
  v3[1] = *a1;
  v3[2] = v1;
  v4 = *(a1 + 32);
  sub_100358150(&v5, v3);

  IntentParameter.wrappedValue.setter();
  sub_1002ED110(&v5);
}

uint64_t sub_10047F418()
{
  v0 = sub_10022C350(&qword_100CBCC30);
  sub_1000037C4();
  v2 = v1;
  sub_100003828();
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  v6 = sub_1004839E0();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_100483A34();
  static ResolverSpecificationBuilder.buildExpression<A>(_:)();
  sub_10015E1DC();
  static ResolverSpecificationBuilder.buildPartialBlock<A>(first:)();
  v8[0] = v6;
  v8[1] = &type metadata for LocationSearchEntityFromStringResolver;
  static ResolverSpecificationBuilder.buildPartialBlock<A, each B>(accumulated:next:)();
  return (*(v2 + 8))(v5, v0);
}

uint64_t sub_10047F5EC()
{
  v0 = sub_10022C350(&qword_100CBCC20);
  __chkstk_darwin(v0);
  v1 = sub_10022C350(&qword_100CBCB40);
  sub_100007074(v1, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_10000703C(v1, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_10047F18C();
  IntentURLRepresentation.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._object = 0x8000000100ACB400;
  v2._countAndFlagsBits = 0xD00000000000002CLL;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCB38);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 38;
  v3._object = 0xE100000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v3);
  swift_getKeyPath();
  sub_10022C350(&qword_100CBCC28);
  IntentURLRepresentation.StringInterpolation.appendInterpolation<A, B>(_:)();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  IntentURLRepresentation.StringInterpolation.appendLiteral(_:)(v4);
  return IntentURLRepresentation.init(stringInterpolation:)();
}

uint64_t OpenWeatherAirQualityIntent.urlRepresentation.unsafeMutableAddressor()
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298();
  }

  v0 = sub_10022C350(&qword_100CBCB40);

  return sub_10000703C(v0, static OpenWeatherAirQualityIntent.urlRepresentation);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298();
  }

  v2 = sub_10022C350(&qword_100CBCB40);
  v3 = sub_10000703C(v2, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_100017920();
  sub_100003B20();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.setter(uint64_t a1)
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298();
  }

  v2 = sub_10022C350(&qword_100CBCB40);
  v3 = sub_10000703C(v2, static OpenWeatherAirQualityIntent.urlRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t static OpenWeatherAirQualityIntent.urlRepresentation.modify()
{
  if (qword_100CA2140 != -1)
  {
    sub_10001C298();
  }

  v0 = sub_10022C350(&qword_100CBCB40);
  sub_10000703C(v0, static OpenWeatherAirQualityIntent.urlRepresentation);
  sub_100005E7C();
  return sub_100049840();
}

uint64_t OpenWeatherAirQualityIntent.init()()
{
  v45 = type metadata accessor for InputConnectionBehavior();
  sub_1000037C4();
  v49 = v1;
  __chkstk_darwin(v2);
  sub_1000037D8();
  v48 = v4 - v3;
  v5 = sub_10022C350(&qword_100CA2D68);
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  v47 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v46 = v35 - v9;
  v10 = sub_10022C350(&qword_100CA2D70);
  sub_100003810(v10);
  sub_100003828();
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  sub_1000037C4();
  v16 = v15;
  __chkstk_darwin(v17);
  sub_1000037D8();
  v20 = v19 - v18;
  v21 = type metadata accessor for Locale();
  v22 = sub_100003810(v21);
  __chkstk_darwin(v22);
  sub_1000037D8();
  v23 = type metadata accessor for String.LocalizationValue();
  v24 = sub_100003810(v23);
  __chkstk_darwin(v24);
  sub_1000037D8();
  v25 = type metadata accessor for LocalizedStringResource();
  v44 = v25;
  sub_100003B20();
  __chkstk_darwin(v26);
  sub_1000037D8();
  sub_10001365C();
  v36 = v0;
  v43 = sub_10022C350(&qword_100CA2D78);
  sub_10000CB64();
  static Locale.current.getter();
  v27 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v28 = *(v16 + 104);
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v38 = v14;
  v28(v20, enum case for LocalizedStringResource.BundleDescription.main(_:), v14);
  v39 = v28;
  v40 = v16 + 104;
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28(v20, v27, v14);
  v35[0] = v13;
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v13, 0, 1, v25);
  static LocationSearchEntity.makeCurrentLocation()();
  v51 = v55;
  v52 = v56;
  v53 = v57;
  v54 = v58;
  type metadata accessor for IntentDialog();
  sub_10001989C(v46);
  sub_10001989C(v47);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v29 = *(v49 + 104);
  v49 += 104;
  v42 = v29;
  v29(v48);
  sub_10022C350(&qword_100CA2D80);
  sub_100006F64(&qword_100CA2D88, &qword_100CA2D80);
  sub_10015E074();
  v30 = v35[0];
  v43 = IntentParameter<>.init<A>(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:resolvers:)();
  v35[1] = sub_10022C350(&qword_100CA2D98);
  sub_10000CB64();
  static Locale.current.getter();
  v31 = v37;
  v32 = v38;
  v33 = v39;
  v39(v20, v37, v38);
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v33(v20, v31, v32);
  sub_100005E64();
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  sub_10001B350(v30, 0, 1, v44);
  v50 = 0;
  sub_10001989C(v46);
  sub_10001989C(v47);
  v42(v48, v41, v45);
  sub_10022E86C();
  IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:supportedValues:)();
  return v43;
}

uint64_t sub_100480034@<X0>(uint64_t a1@<X8>)
{
  v2 = OpenWeatherAirQualityIntent.urlRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = sub_10022C350(&qword_100CBCB40);
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1004800FC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10048398C();
  *v4 = v2;
  v4[1] = sub_1004801A8;

  return URLRepresentableIntent.perform()(a2, v5);
}

uint64_t sub_1004801A8()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1004802B0@<X0>(uint64_t *a1@<X8>)
{
  result = OpenWeatherAirQualityIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004802D8(uint64_t a1)
{
  v2 = sub_10047F18C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100480314()
{
  type metadata accessor for _AssistantIntent();
  sub_1000037C4();
  v1 = v0;
  __chkstk_darwin(v2);
  sub_1000037D8();
  sub_10001365C();
  OpenWeatherAirQualityIntent.init()();
  sub_10047F18C();
  sub_1000042D0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v3 = static _AssistantIntent.Builder.buildExpression(_:)();
  v4 = *(v1 + 8);
  v5 = sub_100003B2C();
  v4(v5);
  OpenWeatherAirQualityIntent.init()();
  sub_1000042D0();
  _AssistantIntent.init<A>(_:phrases:parameterValues:)();
  v6 = static _AssistantIntent.Builder.buildExpression(_:)();
  v7 = sub_100003B2C();
  v4(v7);
  sub_10022C350(&qword_100CADD98);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100A2D320;
  *(v8 + 32) = v3;
  *(v8 + 40) = v6;
  v9 = static _AssistantIntent.Builder.buildBlock(_:)();

  return v9;
}

uint64_t sub_1004804C4(uint64_t a1)
{
  v77 = a1;
  v1 = sub_10022C350(&qword_100CBCBE0);
  v2 = *(v1 - 8);
  v80 = v1;
  v81 = v2;
  __chkstk_darwin(v1);
  v4 = &v59 - v3;
  v5 = type metadata accessor for _AssistantIntent.PhraseToken();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10022C350(&qword_100CBCBE8);
  __chkstk_darwin(v9);
  sub_10047F18C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v10._countAndFlagsBits = 0x206E65704FLL;
  v10._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v10);
  v74 = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v11 = *(v6 + 104);
  v73 = v6 + 104;
  v75 = v11;
  (v11)(v8);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v12 = *(v6 + 8);
  v76 = v6 + 8;
  v79 = v12;
  v12(v8, v5);
  v13._countAndFlagsBits = 0xD000000000000021;
  v13._object = 0x8000000100ACB190;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v13);
  swift_getKeyPath();
  v78 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v14);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v15 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v16 = *(v81 + 8);
  v69 = v15;
  v70 = v16;
  v81 += 8;
  v16(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0x206E65704FLL;
  v17._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v17);
  v18 = v8;
  v71 = v8;
  v72 = v5;
  v19 = v8;
  v20 = v74;
  v21 = v75;
  v75(v19, v74, v5);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v18, v5);
  v22._object = 0x8000000100ACB1C0;
  v22._countAndFlagsBits = 0x100000000000001CLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v68 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v23 = v70;
  v70(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v24._countAndFlagsBits = 0x206E65704FLL;
  v24._object = 0xE500000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v24);
  v25 = v71;
  v26 = v20;
  v27 = v72;
  v21(v71, v26, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v25, v27);
  v28._object = 0x8000000100ACB1E0;
  v28._countAndFlagsBits = 0xD000000000000010;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v28);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v67 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v29 = v80;
  v23(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v30._countAndFlagsBits = 0xD00000000000001BLL;
  v30._object = 0x8000000100ACB200;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v30);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v31._countAndFlagsBits = 63;
  v31._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v31);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v66 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v70(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v32._countAndFlagsBits = 0xD00000000000001ELL;
  v32._object = 0x8000000100ACB220;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v32);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v33._countAndFlagsBits = 63;
  v33._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v33);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v65 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34 = v70;
  v70(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v64 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v63 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v35._countAndFlagsBits = 0xD000000000000020;
  v35._object = 0x8000000100ACB290;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v35);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v36._countAndFlagsBits = 63;
  v36._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v36);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v62 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v61 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v60 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v29);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v37._countAndFlagsBits = 0x20656D20776F6853;
  v37._object = 0xE800000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v37);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v38._countAndFlagsBits = 0x6920495141207327;
  v38._object = 0xEA0000000000206ELL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v38);
  v39 = v71;
  v40 = v72;
  v75(v71, v74, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v39, v40);
  v41._countAndFlagsBits = 46;
  v41._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v41);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v59 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v42._countAndFlagsBits = 0xD00000000000001BLL;
  v42._object = 0x8000000100ACB300;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v42);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v43._countAndFlagsBits = 46;
  v43._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v43);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v78 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v44 = v80;
  v34(v4, v80);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v45._countAndFlagsBits = 0;
  v45._object = 0xE000000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v45);
  v47 = v71;
  v46 = v72;
  v75(v71, v74, v72);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v79(v47, v46);
  v48._countAndFlagsBits = 0xD000000000000011;
  v48._object = 0x8000000100ACB320;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v48);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v34(v4, v44);
  sub_10022C350(&qword_100CBCBF0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_100A53640;
  v51 = v68;
  *(v50 + 32) = v69;
  *(v50 + 40) = v51;
  v52 = v66;
  *(v50 + 48) = v67;
  *(v50 + 56) = v52;
  v53 = v64;
  *(v50 + 64) = v65;
  *(v50 + 72) = v53;
  v54 = v62;
  *(v50 + 80) = v63;
  *(v50 + 88) = v54;
  v55 = v60;
  *(v50 + 96) = v61;
  *(v50 + 104) = v55;
  v56 = v78;
  *(v50 + 112) = v59;
  *(v50 + 120) = v56;
  *(v50 + 128) = v49;
  v57 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v57;
}

double sub_1004810EC@<D0>(uint64_t a1@<X8>)
{
  sub_10047F33C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100481134(__int128 *a1)
{
  v4 = *a1;
  sub_100358150(&v4, &v3);

  return sub_10047F390(a1);
}

uint64_t sub_10048119C()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10047F18C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  (*(v1 + 8))(v3, v0);
  sub_10022C350(&qword_100CBCBD8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A2C3F0;
  *(v5 + 32) = v4;
  v6 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_10048130C(uint64_t a1)
{
  v60 = a1;
  v59 = sub_10022C350(&qword_100CBCBE0);
  v57 = *(v59 - 8);
  __chkstk_darwin(v59);
  v2 = &v41 - v1;
  v3 = type metadata accessor for _AssistantIntent.PhraseToken();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CBCBE8);
  __chkstk_darwin(v7);
  sub_10047F18C();
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v8._countAndFlagsBits = 0x20656874206E49;
  v8._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v8);
  LODWORD(v54) = enum case for _AssistantIntent.PhraseToken.applicationName(_:);
  v9 = *(v4 + 104);
  v52 = v4 + 104;
  v53 = v9;
  v48 = v3;
  v9(v6);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v10 = *(v4 + 8);
  v50 = v4 + 8;
  v51 = v10;
  v10(v6, v3);
  v11._countAndFlagsBits = 0x6873202C70706120;
  v11._object = 0xEB0000000020776FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v11);
  swift_getKeyPath();
  v61 = sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v12._countAndFlagsBits = 0xD000000000000011;
  v49 = 0xD000000000000011;
  v12._object = 0x8000000100ACAEB0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v12);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v58 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13 = *(v57 + 8);
  v14 = v59;
  v13(v2, v59);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v57 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v15 = v14;
  v13(v2, v14);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v56 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v14);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v55 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v14);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v16._countAndFlagsBits = 0x20656874206E49;
  v16._object = 0xE700000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v16);
  v17 = v48;
  v53(v6, v54, v48);
  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();
  v51(v6, v17);
  v18._countAndFlagsBits = 0x6873202C70706120;
  v18._object = 0xEB0000000020776FLL;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v18);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v19._object = 0x8000000100ACAF50;
  v19._countAndFlagsBits = v49;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v19);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v54 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v53 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v52 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v51 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v50 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v49 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v48 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v47 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v46 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v20._countAndFlagsBits = 0xD00000000000001DLL;
  v20._object = 0x8000000100ACB0B0;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v20);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v21._countAndFlagsBits = 63;
  v21._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v21);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v45 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v42 = v13;
  v13(v2, v15);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v44 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v13(v2, v15);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v22._countAndFlagsBits = 0xD000000000000027;
  v22._object = 0x8000000100ACB100;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v22);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v23._countAndFlagsBits = 63;
  v23._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v23);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v43 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v24 = v59;
  v25 = v42;
  v42(v2, v59);
  _AssistantIntent.Phrase.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v26._object = 0x8000000100ACB130;
  v26._countAndFlagsBits = 0xD000000000000024;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v26);
  swift_getKeyPath();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Phrase.StringInterpolation.appendInterpolation(_:)();

  v27._countAndFlagsBits = 63;
  v27._object = 0xE100000000000000;
  _AssistantIntent.Phrase.StringInterpolation.appendLiteral(_:)(v27);
  _AssistantIntent.Phrase.init(stringInterpolation:)();
  v28 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v2, v24);
  _AssistantIntent.Phrase.init(stringLiteral:)();
  v29 = static _AssistantIntent.PhraseBuilder.buildExpression(_:)();
  v25(v2, v24);
  sub_10022C350(&qword_100CBCBF0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100A53650;
  v31 = v57;
  *(v30 + 32) = v58;
  *(v30 + 40) = v31;
  v32 = v55;
  *(v30 + 48) = v56;
  *(v30 + 56) = v32;
  v33 = v53;
  *(v30 + 64) = v54;
  *(v30 + 72) = v33;
  v34 = v51;
  *(v30 + 80) = v52;
  *(v30 + 88) = v34;
  v35 = v49;
  *(v30 + 96) = v50;
  *(v30 + 104) = v35;
  v36 = v47;
  *(v30 + 112) = v48;
  *(v30 + 120) = v36;
  v37 = v45;
  *(v30 + 128) = v46;
  *(v30 + 136) = v37;
  v38 = v43;
  *(v30 + 144) = v44;
  *(v30 + 152) = v38;
  *(v30 + 160) = v28;
  *(v30 + 168) = v29;
  v39 = static _AssistantIntent.PhraseBuilder.buildBlock(_:)();

  return v39;
}

uint64_t sub_100481E84()
{
  v0 = type metadata accessor for _AssistantIntent.Value();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100483654();
  _AssistantIntent.IntentProjection.subscript.getter();

  sub_10047F18C();
  _AssistantIntent.Value.init<A>(for:builder:)();
  v4 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5 = *(v1 + 8);
  v5(v3, v0);
  swift_getKeyPath();
  sub_10015E1DC();
  _AssistantIntent.IntentProjection.subscript.getter();

  _AssistantIntent.Value.init<A>(for:builder:)();
  v6 = static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)();
  v5(v3, v0);
  sub_10022C350(&qword_100CBCBD8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100A2D320;
  *(v7 + 32) = v4;
  *(v7 + 40) = v6;
  v8 = static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)();

  return v8;
}

uint64_t sub_100482074@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10047F580();
  *a1 = result;
  return result;
}

uint64_t sub_1004820AC()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100A2C3F0;
  *(v1 + 32) = v0;
  v2 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100482130()
{
  v0 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v1 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v2 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v3 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  v4 = static _AssistantIntent.StringValueBuilder.buildExpression(_:)();
  sub_10022C350(&qword_100CADD90);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100A3B030;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = static _AssistantIntent.StringValueBuilder.buildBlock(_:)();

  return v6;
}

uint64_t sub_100482250()
{
  type metadata accessor for _AssistantIntent.NegativeAssistantIntentPhrases();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_1000037D8();
  sub_10001365C();
  sub_10047F18C();
  _AssistantIntent.NegativeAssistantIntentPhrases.init<A>(for:phrases:)();
  v1 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildExpression(_:)();
  v2 = sub_100003B2C();
  v3(v2);
  sub_10022C350(&qword_100CADD88);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100A2C3F0;
  *(v4 + 32) = v1;
  v5 = static _AssistantIntent.NegativeAssistantIntentPhrasesBuilder.buildBlock(_:)();

  return v5;
}

uint64_t sub_100482380()
{
  v0 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  v3 = type metadata accessor for LocalizedStringResource();
  __chkstk_darwin(v3);
  v4 = type metadata accessor for TypeDisplayRepresentation();
  sub_100007074(v4, static AirQualityPosition.typeDisplayRepresentation);
  sub_10000703C(v4, static AirQualityPosition.typeDisplayRepresentation);
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v2, 1, 1, v3);
  return TypeDisplayRepresentation.init(name:numericFormat:)();
}

uint64_t sub_1004824EC(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = a2(0);

  return sub_10000703C(v5, a3);
}

uint64_t sub_100482580@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_10000703C(v7, a3);
  sub_100017920();
  sub_100003B20();
  return (*(v9 + 16))(a4, v8, v7);
}

uint64_t sub_100482658(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v7 = a3(0);
  sub_10000703C(v7, a4);
  swift_beginAccess();
  v8 = *(v7 - 8);
  v9 = sub_100003B2C();
  v10(v9);
  swift_endAccess();
  return (*(v8 + 8))(a1, v7);
}

uint64_t static AirQualityPosition.typeDisplayRepresentation.modify()
{
  if (qword_100CA2148 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  sub_10000703C(v0, static AirQualityPosition.typeDisplayRepresentation);
  sub_100005E7C();
  return sub_100049840();
}

uint64_t sub_1004827BC()
{
  v0 = sub_10022C350(&qword_100CBCC00);
  __chkstk_darwin(v0 - 8);
  v16 = &v16 - v1;
  v2 = sub_10022C350(&qword_100CA2D70);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for LocalizedStringResource();
  v17 = *(v5 - 8);
  v18 = v17;
  __chkstk_darwin(v5);
  sub_10022C350(&qword_100CBCC08);
  v6 = (sub_10022C350(&qword_100CBCC10) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  v21 = v9;
  *(v9 + 16) = xmmword_100A2D320;
  v10 = v9 + v8;
  *(v9 + v8) = 0;
  LocalizedStringResource.init(stringLiteral:)();
  v11 = v4;
  sub_10001B350(v4, 1, 1, v5);
  v12 = type metadata accessor for DisplayRepresentation.Image();
  v13 = v16;
  sub_10001B350(v16, 1, 1, v12);
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  v14 = v6[14];
  v19 = v10 + v7;
  v20 = v14;
  *(v10 + v7) = 1;
  LocalizedStringResource.init(stringLiteral:)();
  sub_10001B350(v11, 1, 1, v5);
  sub_10001B350(v13, 1, 1, v12);
  sub_10022C350(&qword_100CBCC18);
  *(swift_allocObject() + 16) = xmmword_100A53660;
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  LocalizedStringResource.init(stringLiteral:)();
  DisplayRepresentation.init(title:subtitle:image:synonyms:)();
  type metadata accessor for DisplayRepresentation();
  sub_100483804();
  result = Dictionary.init(dictionaryLiteral:)();
  static AirQualityPosition.caseDisplayRepresentations = result;
  return result;
}

uint64_t *AirQualityPosition.caseDisplayRepresentations.unsafeMutableAddressor()
{
  if (qword_100CA2150 != -1)
  {
    sub_10001ED28();
  }

  return &static AirQualityPosition.caseDisplayRepresentations;
}

uint64_t static AirQualityPosition.caseDisplayRepresentations.getter()
{
  if (qword_100CA2150 != -1)
  {
    sub_10001ED28();
  }

  swift_beginAccess();
}

uint64_t static AirQualityPosition.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_100CA2150 != -1)
  {
    sub_10001ED28();
  }

  swift_beginAccess();
  static AirQualityPosition.caseDisplayRepresentations = a1;
}

uint64_t static AirQualityPosition.caseDisplayRepresentations.modify()
{
  if (qword_100CA2150 != -1)
  {
    sub_10001ED28();
  }

  sub_100003B2C();
  swift_beginAccess();
  return sub_100049840();
}

uint64_t AirQualityPosition.urlRepresentationParameter.getter(char a1)
{
  v1 = (a1 & 1) == 0;
  if (a1)
  {
    v2 = 0x736C6961746564;
  }

  else
  {
    v2 = 7368564;
  }

  if (v1)
  {
    v3 = 0xE300000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v2);

  return 0x6E6F697469736F70;
}

uint64_t AirQualityPosition.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x736C6961746564;
  }

  else
  {
    return 7368564;
  }
}

Weather::AirQualityPosition_optional __swiftcall AirQualityPosition.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100C43FD0, v2);

  if (v3 == 1)
  {
    v4.value = Weather_AirQualityPosition_details;
  }

  else
  {
    v4.value = Weather_AirQualityPosition_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

Weather::AirQualityPosition_optional sub_1004830B4@<W0>(Swift::String *a1@<X0>, Weather::AirQualityPosition_optional *a2@<X8>)
{
  result.value = AirQualityPosition.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1004830E4@<X0>(uint64_t *a1@<X8>)
{
  result = AirQualityPosition.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100483110()
{
  v2 = AirQualityPosition.urlRepresentationParameter.getter(*v0);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_1004831A0@<X0>(uint64_t (*a1)(void)@<X2>, void (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = a1();
  sub_100017920();
  a2(0);
  sub_100003B20();
  return (*(v6 + 16))(a3, v5);
}

uint64_t sub_100483220(uint64_t a1)
{
  v2 = sub_10022E86C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_10048326C()
{
  AirQualityPosition.caseDisplayRepresentations.unsafeMutableAddressor();
  swift_beginAccess();
}

uint64_t sub_1004832B8(uint64_t a1)
{
  v2 = sub_1004836AC();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10048331C()
{
  result = qword_100CBCB48;
  if (!qword_100CBCB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB48);
  }

  return result;
}

unint64_t sub_100483374()
{
  result = qword_100CBCB50;
  if (!qword_100CBCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB50);
  }

  return result;
}

unint64_t sub_1004833CC()
{
  result = qword_100CBCB58;
  if (!qword_100CBCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB58);
  }

  return result;
}

unint64_t sub_100483440()
{
  result = qword_100CBCB60;
  if (!qword_100CBCB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB60);
  }

  return result;
}

unint64_t sub_100483498()
{
  result = qword_100CBCB68;
  if (!qword_100CBCB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB68);
  }

  return result;
}

unint64_t sub_1004834F0()
{
  result = qword_100CBCB70;
  if (!qword_100CBCB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB70);
  }

  return result;
}

unint64_t sub_100483548()
{
  result = qword_100CBCB78;
  if (!qword_100CBCB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB78);
  }

  return result;
}

unint64_t sub_1004835AC()
{
  result = qword_100CBCB80;
  if (!qword_100CBCB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB80);
  }

  return result;
}

unint64_t sub_100483600()
{
  result = qword_100CBCB88;
  if (!qword_100CBCB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB88);
  }

  return result;
}

unint64_t sub_100483654()
{
  result = qword_100CBCB90;
  if (!qword_100CBCB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB90);
  }

  return result;
}

unint64_t sub_1004836AC()
{
  result = qword_100CBCB98;
  if (!qword_100CBCB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCB98);
  }

  return result;
}

unint64_t sub_100483754()
{
  result = qword_100CBCBA0;
  if (!qword_100CBCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCBA0);
  }

  return result;
}

unint64_t sub_1004837AC()
{
  result = qword_100CBCBA8;
  if (!qword_100CBCBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCBA8);
  }

  return result;
}

unint64_t sub_100483804()
{
  result = qword_100CBCBB0;
  if (!qword_100CBCBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCBB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10048398C()
{
  result = qword_100CBCBF8;
  if (!qword_100CBCBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCBF8);
  }

  return result;
}

unint64_t sub_1004839E0()
{
  result = qword_100CBCC38;
  if (!qword_100CBCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCC38);
  }

  return result;
}

unint64_t sub_100483A34()
{
  result = qword_100CBCC40;
  if (!qword_100CBCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CBCC40);
  }

  return result;
}

uint64_t sub_100483A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  v76 = type metadata accessor for LocationPreviewModalViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v4);
  sub_100003C38();
  v72 = v5 - v6;
  sub_10000386C();
  v8 = __chkstk_darwin(v7);
  v16 = sub_10002C73C(v8, v9, v10, v11, v12, v13, v14, v15, v68);
  v75 = type metadata accessor for LocationPreviewViewState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003C38();
  v71 = v18 - v19;
  sub_10000386C();
  __chkstk_darwin(v20);
  v73 = &v68 - v21;
  v78 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v22);
  sub_100003C38();
  v69 = v23 - v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  v70 = &v68 - v26;
  sub_10000386C();
  __chkstk_darwin(v27);
  v28 = sub_10000EA8C();
  type metadata accessor for ModalViewState(v28);
  sub_1000037E8();
  __chkstk_darwin(v29);
  sub_100003C38();
  v77 = v30 - v31;
  sub_10000386C();
  v33 = __chkstk_darwin(v32);
  v35 = &v68 - v34;
  __chkstk_darwin(v33);
  v37 = &v68 - v36;
  type metadata accessor for ModalViewState.LocationDetailModal(0);
  sub_1000037E8();
  __chkstk_darwin(v38);
  sub_100003C38();
  v41 = v39 - v40;
  __chkstk_darwin(v42);
  v44 = &v68 - v43;
  v45 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
  sub_100014730();
  sub_10048504C(a1 + v45, v37, v46);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_100484FEC(v37, v44, type metadata accessor for ModalViewState.LocationDetailModal);
    sub_100484FEC(v44, v41, type metadata accessor for ModalViewState.LocationDetailModal);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_100484FEC(v41, v2, type metadata accessor for SunriseSunsetDetailViewState);
      v47 = v2;
LABEL_20:
      sub_100484FEC(v47, v79, type metadata accessor for SunriseSunsetDetailViewState);
      v62 = 0;
      return sub_10001B350(v79, v62, 1, v78);
    }

    v48 = type metadata accessor for ModalViewState.LocationDetailModal;
    v49 = v41;
  }

  else
  {
    v48 = type metadata accessor for ModalViewState;
    v49 = v37;
  }

  sub_100484F94(v49, v48);
  sub_100014730();
  sub_10048504C(a1 + v45, v35, v50);
  if (swift_getEnumCaseMultiPayload())
  {
    v51 = type metadata accessor for ModalViewState;
  }

  else
  {
    v52 = v73;
    sub_100484FEC(v35, v73, type metadata accessor for LocationPreviewViewState);
    v35 = v74;
    sub_100028544();
    sub_10048504C(v52 + v53, v35, v54);
    sub_100074A5C();
    sub_100484F94(v52, v55);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v56 = v35;
      v57 = v70;
LABEL_19:
      sub_100484FEC(v56, v57, type metadata accessor for SunriseSunsetDetailViewState);
      v47 = v57;
      goto LABEL_20;
    }

    v51 = type metadata accessor for LocationPreviewModalViewState;
  }

  sub_100484F94(v35, v51);
  sub_100014730();
  v58 = v77;
  sub_10048504C(a1 + v45, v77, v59);
  if (swift_getEnumCaseMultiPayload() != 4)
  {
    v61 = type metadata accessor for ModalViewState;
    goto LABEL_15;
  }

  v60 = type metadata accessor for ModalViewState.MapViewModal(0);
  if (sub_100024D10(v58, 1, v60) != 1)
  {
    v63 = v71;
    sub_100484FEC(v58, v71, type metadata accessor for LocationPreviewViewState);
    sub_100028544();
    v58 = v72;
    sub_10048504C(v63 + v64, v72, v65);
    sub_100074A5C();
    sub_100484F94(v63, v66);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v56 = v58;
      v57 = v69;
      goto LABEL_19;
    }

    v61 = type metadata accessor for LocationPreviewModalViewState;
LABEL_15:
    sub_100484F94(v58, v61);
    goto LABEL_16;
  }

  sub_1000180EC(v58, &qword_100CA65E0);
LABEL_16:
  v62 = 1;
  return sub_10001B350(v79, v62, 1, v78);
}

uint64_t sub_100483FC4(uint64_t a1, uint64_t a2)
{
  if (static Location.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for SunriseSunsetDetailInput.Input(0), (sub_100883064((a1 + v4[5]), (a2 + v4[5]))) && (sub_1009D82EC(a1 + v4[6], a2 + v4[6]))
  {
    v5 = *(a1 + v4[7]) ^ *(a2 + v4[7]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10048404C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SunriseSunsetDetailInput.Input(0);
  sub_1000037E8();
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  v9 = type metadata accessor for SunriseSunsetDetailInput(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v14 = sub_10022C350(&qword_100CBCE18);
  v15 = sub_100003810(v14);
  v16 = __chkstk_darwin(v15);
  v18 = &v31 - v17;
  v19 = *(v16 + 56);
  sub_10048504C(a1, &v31 - v17, type metadata accessor for SunriseSunsetDetailInput);
  sub_10048504C(a2, &v18[v19], type metadata accessor for SunriseSunsetDetailInput);
  sub_100005404(v18);
  if (v21)
  {
    sub_100005404(&v18[v19]);
    if (v21)
    {
LABEL_5:
      sub_1000169DC();
      return 1;
    }

    goto LABEL_9;
  }

  sub_10048504C(v18, v13, type metadata accessor for SunriseSunsetDetailInput);
  sub_100005404(&v18[v19]);
  if (v21)
  {
    sub_10001C2B8();
    sub_100484F94(v13, v22);
LABEL_9:
    sub_1000180EC(v18, &qword_100CBCE18);
    return 0;
  }

  sub_100484FEC(&v18[v19], v8, type metadata accessor for SunriseSunsetDetailInput.Input);
  v23 = static Location.== infix(_:_:)();
  if (v23 & 1) != 0 && (sub_100883064((v13 + v4[5]), (v8 + v4[5])) & 1) != 0 && (sub_1009D82EC(v13 + v4[6], v8 + v4[6]))
  {
    v24 = v4[7];
    v25 = *(v13 + v24);
    v26 = *(v8 + v24);
    sub_10001C2B8();
    sub_100484F94(v8, v27);
    if (v25 == v26)
    {
      sub_10001C2B8();
      sub_100484F94(v13, v28);
      goto LABEL_5;
    }
  }

  else
  {
    sub_10001C2B8();
    sub_100484F94(v8, v29);
  }

  sub_10001C2B8();
  sub_100484F94(v13, v30);
  sub_1000169DC();
  return 0;
}

uint64_t sub_1004842A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v149 = a2;
  v152 = a3;
  v5 = type metadata accessor for NewsDataModel();
  v6 = sub_100003810(v5);
  __chkstk_darwin(v6);
  sub_1000037D8();
  v146 = v8 - v7;
  v9 = type metadata accessor for WeatherData(0);
  v10 = sub_100003810(v9);
  __chkstk_darwin(v10);
  sub_1000037D8();
  v145 = v12 - v11;
  v13 = sub_10022C350(&qword_100CA37B0);
  v14 = sub_100003810(v13);
  __chkstk_darwin(v14);
  v16 = &v140 - v15;
  type metadata accessor for LocationWeatherDataState(0);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003C38();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  sub_10002C73C(v22, v23, v24, v25, v26, v27, v28, v29, v140);
  v151 = type metadata accessor for Location();
  v30 = *(v151 - 8);
  __chkstk_darwin(v151);
  sub_100003C38();
  v147 = (v31 - v32);
  sub_10000386C();
  __chkstk_darwin(v33);
  v144 = &v140 - v34;
  sub_10000386C();
  v36 = __chkstk_darwin(v35);
  v38 = &v140 - v37;
  __chkstk_darwin(v36);
  v150 = &v140 - v39;
  v40 = sub_10022C350(&qword_100CAC708);
  v41 = sub_100003810(v40);
  __chkstk_darwin(v41);
  sub_100003C38();
  v44 = v42 - v43;
  __chkstk_darwin(v45);
  sub_10000EA8C();
  v46 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v47);
  sub_1000037D8();
  v50 = v49 - v48;
  sub_100483A98(a1, v3);
  if (sub_100024D10(v3, 1, v46) == 1)
  {
    sub_1000180EC(v3, &qword_100CAC708);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v51 = type metadata accessor for Logger();
    sub_1000212C4(v51, qword_100D90B68);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.error.getter();
    v54 = sub_10000C79C(v53);
    v55 = v152;
    if (v54)
    {
      v56 = sub_10000389C();
      sub_100025054(v56);
      sub_1000133FC(&_mh_execute_header, v57, v58, "Failed to create sunriseSunset detail input due to missing view state");
      sub_100007E54();
    }

    goto LABEL_48;
  }

  sub_100484FEC(v3, v50, type metadata accessor for SunriseSunsetDetailViewState);
  sub_100483A98(a1, v44);
  if (sub_100024D10(v44, 1, v46) == 1)
  {
    sub_1000180EC(v44, &qword_100CAC708);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v59 = type metadata accessor for Logger();
    sub_1000212C4(v59, qword_100D90B68);
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    v62 = os_log_type_enabled(v60, v61);
    v55 = v152;
    if (v62)
    {
      v63 = sub_10000389C();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "Failed to create sunriseSunset detail input due to missing location", v63, 2u);
      sub_100003884();
    }

    if (v149)
    {
      if (qword_100CA2740 != -1)
      {
        sub_100019580();
      }

      sub_1000212C4(v59, qword_100D90C18);
      v64 = Logger.logObject.getter();
      v65 = static os_log_type_t.fault.getter();
      if (sub_10000C79C(v65))
      {
        v66 = sub_10000389C();
        sub_100025054(v66);
        sub_1000133FC(&_mh_execute_header, v67, v68, "Error: Could not create an initial input in SunriseSunsetDetailInputFactory! This is a bug and should be investigated.");
        sub_100007E54();
      }

      simulateCrash(_:_:)();
      sub_10001ED48();
      v70 = v50;
      goto LABEL_47;
    }

    sub_10001ED48();
    v92 = v50;
LABEL_52:
    sub_100484F94(v92, v91);
    v136 = 1;
    goto LABEL_53;
  }

  v142 = v50;
  v71 = v151;
  v141 = *(v30 + 16);
  v141(v38, v44, v151);
  sub_10001ED48();
  sub_100484F94(v44, v72);
  v143 = v30;
  v73 = v71;
  v74 = *(v30 + 32);
  v74(v150, v38, v73);
  v75 = *(a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);

  v76 = Location.id.getter();
  sub_1000864C0(v76, v77, v75);

  sub_100005404(v16);
  if (v78)
  {
    sub_1000180EC(v16, &qword_100CA37B0);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v79 = type metadata accessor for Logger();
    sub_1000212C4(v79, qword_100D90B68);
    v80 = v147;
    v81 = v151;
    v141(v147, v150, v151);
    v82 = Logger.logObject.getter();
    v83 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v153 = v85;
      *v84 = 141558275;
      *(v84 + 4) = 1752392040;
      *(v84 + 12) = 2081;
      sub_1002F33A8();
      v86 = dispatch thunk of CustomStringConvertible.description.getter();
      v88 = v87;
      v89 = *(v143 + 8);
      v89(v80, v151);
      v90 = sub_100078694(v86, v88, &v153);

      *(v84 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v82, v83, "Failed to create sunriseSunset detail input due to missing weather for location=%{private,mask.hash}s", v84, 0x16u);
      sub_100006F14(v85);
      v81 = v151;
      sub_100003884();
      sub_100003884();
    }

    else
    {

      v89 = *(v143 + 8);
      v89(v80, v81);
    }

    v55 = v152;
    v108 = v142;
    if (v149)
    {
      if (qword_100CA2740 != -1)
      {
        sub_100019580();
      }

      sub_1000212C4(v79, qword_100D90C18);
      v109 = Logger.logObject.getter();
      v110 = static os_log_type_t.fault.getter();
      if (sub_10000C79C(v110))
      {
        v111 = sub_10000389C();
        sub_100025054(v111);
        sub_1000133FC(&_mh_execute_header, v112, v113, "Error: Could not create an initial input in SunriseSunsetDetailInputFactory! This is a bug and should be investigated.");
        sub_100007E54();
      }

      simulateCrash(_:_:)();
      v89(v150, v81);
      goto LABEL_46;
    }

    v89(v150, v81);
LABEL_51:
    sub_10001ED48();
    v92 = v108;
    goto LABEL_52;
  }

  v93 = v148;
  sub_100484FEC(v16, v148, type metadata accessor for LocationWeatherDataState);
  sub_10048504C(v93, v20, type metadata accessor for LocationWeatherDataState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_10001012C();
    sub_100484F94(v20, v114);
    if (qword_100CA2700 != -1)
    {
      sub_100003AB0();
    }

    v115 = type metadata accessor for Logger();
    sub_1000212C4(v115, qword_100D90B68);
    v116 = v144;
    v117 = v151;
    v141(v144, v150, v151);
    v118 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = v115;
      v121 = v116;
      v122 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v153 = v123;
      *v122 = 141558275;
      *(v122 + 4) = 1752392040;
      *(v122 + 12) = 2081;
      sub_1002F33A8();
      v124 = dispatch thunk of CustomStringConvertible.description.getter();
      v126 = v125;
      v127 = v121;
      v115 = v120;
      v128 = *(v143 + 8);
      v128(v127, v117);
      v129 = sub_100078694(v124, v126, &v153);
      v93 = v148;

      *(v122 + 14) = v129;
      _os_log_impl(&_mh_execute_header, v118, v119, "Failed to create sunriseSunset detail input due to missing weather data, location=%{private,mask.hash}s", v122, 0x16u);
      sub_100006F14(v123);
      sub_100003884();
      sub_100003884();
    }

    else
    {

      v128 = *(v143 + 8);
      v128(v116, v117);
    }

    v55 = v152;
    v108 = v142;
    if (v149)
    {
      if (qword_100CA2740 != -1)
      {
        sub_100019580();
      }

      sub_1000212C4(v115, qword_100D90C18);
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.fault.getter();
      if (sub_10000C79C(v131))
      {
        v132 = sub_10000389C();
        sub_100025054(v132);
        sub_1000133FC(&_mh_execute_header, v133, v134, "Error: Could not create an initial input in SunriseSunsetDetailInputFactory! This is a bug and should be investigated.");
        sub_100007E54();
      }

      simulateCrash(_:_:)();
      sub_10001012C();
      sub_100484F94(v93, v135);
      v128(v150, v151);
LABEL_46:
      sub_10001ED48();
      v70 = v108;
LABEL_47:
      sub_100484F94(v70, v69);
LABEL_48:
      v107 = type metadata accessor for SunriseSunsetDetailInput.Input(0);
      v105 = v55;
      v106 = 1;
      goto LABEL_49;
    }

    sub_10001012C();
    sub_100484F94(v93, v137);
    v128(v150, v151);
    goto LABEL_51;
  }

  sub_10001012C();
  sub_100484F94(v93, v95);
  v96 = sub_10022C350(&qword_100CA75D8);
  v97 = *(v96 + 48);
  v98 = *(v96 + 64);
  v99 = v145;
  sub_100484FEC(v20, v145, type metadata accessor for WeatherData);
  v100 = v146;
  sub_100484FEC(v20 + v98, v146, type metadata accessor for NewsDataModel);
  sub_100484F94(v20 + v97, type metadata accessor for PreprocessedWeatherData);
  v55 = v152;
  v74(v152, v150, v151);
  v101 = type metadata accessor for SunriseSunsetDetailInput.Input(0);
  sub_100484FEC(v99, v55 + v101[5], type metadata accessor for WeatherData);
  sub_100484FEC(v100, v55 + v101[6], type metadata accessor for NewsDataModel);
  v102 = *(v142 + *(v46 + 24));
  sub_10001ED48();
  sub_100484F94(v103, v104);
  *(v55 + v101[7]) = v102 == 2;
  v105 = v55;
  v106 = 0;
  v107 = v101;
LABEL_49:
  sub_10001B350(v105, v106, 1, v107);
  v136 = 0;
LABEL_53:
  v138 = type metadata accessor for SunriseSunsetDetailInput(0);
  return sub_10001B350(v55, v136, 1, v138);
}