unint64_t sub_10001609C()
{
  result = qword_1000361B0;
  if (!qword_1000361B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B0);
  }

  return result;
}

unint64_t sub_1000160F4()
{
  result = qword_1000361B8;
  if (!qword_1000361B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361B8);
  }

  return result;
}

unint64_t sub_10001614C()
{
  result = qword_1000361C0;
  if (!qword_1000361C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C0);
  }

  return result;
}

unint64_t sub_1000161A4()
{
  result = qword_1000361C8;
  if (!qword_1000361C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361C8);
  }

  return result;
}

unint64_t sub_1000161FC()
{
  result = qword_1000361D0;
  if (!qword_1000361D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361D0);
  }

  return result;
}

unint64_t sub_100016254()
{
  result = qword_1000361D8;
  if (!qword_1000361D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361D8);
  }

  return result;
}

unint64_t sub_1000162AC()
{
  result = qword_1000361E0;
  if (!qword_1000361E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361E0);
  }

  return result;
}

uint64_t sub_100016300(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100030B68;
  v6._object = a2;
  v4 = sub_100021B2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

void *sub_10001634C(uint64_t *a1)
{
  v3 = sub_100009BDC(&qword_1000364F8, &qword_100027F90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_10000BEFC(a1, a1[3]);
  sub_100018AF4();
  sub_100021D0C();
  if (v1)
  {
    sub_10000C4B8(a1);
  }

  else
  {
    sub_100018B48();
    sub_100021BAC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_10000C4B8(a1);
  }

  return v9;
}

uint64_t sub_1000164BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566863746170 && a2 == 0xEC0000006E6F6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_1000165DC(uint64_t *a1)
{
  v2 = sub_100009BDC(qword_100036618, qword_100028040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000190B4();
  sub_100021D0C();
  v13 = 0;
  v8 = sub_100021B8C();
  v12 = 1;
  sub_100021B8C();
  v11 = 2;
  sub_100021B8C();
  (*(v3 + 8))(v6, v2);
  sub_10000C4B8(a1);
  return v8;
}

void *sub_1000167A8(uint64_t *a1)
{
  v3 = sub_100009BDC(&qword_100036238, &qword_100027330);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BEFC(a1, a1[3]);
  sub_1000173F4();
  sub_100021D0C();
  if (v1)
  {
    sub_10000C4B8(a1);
  }

  else
  {
    sub_100009BDC(&qword_100036248, &qword_100027338);
    sub_100017448(&qword_100036250, &qword_100036248, &qword_100027338, sub_1000174C4);
    sub_100021BAC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000C4B8(a1);
  }

  return v9;
}

uint64_t sub_100016958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656B6F74 && a2 == 0xE500000000000000;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C69666F7270 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100016A74(uint64_t *a1)
{
  v3 = sub_100009BDC(&qword_100036278, &qword_100027348);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000175C0();
  sub_100021D0C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_100021B6C();
    v10[30] = 1;
    sub_100021B8C();
    sub_100009BDC(&qword_100036288, &qword_100027350);
    v10[29] = 2;
    sub_100017614();
    sub_100021BAC();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000C4B8(a1);
  return v8;
}

uint64_t sub_100016CAC(uint64_t *a1)
{
  v3 = sub_100009BDC(&qword_100036260, &qword_100027340);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - v6;
  v8 = a1[4];
  v9 = sub_10000BEFC(a1, a1[3]);
  sub_100017518();
  sub_100021D0C();
  if (!v1)
  {
    v9 = sub_100021B8C();
    if ((v9 - 101) >= 0xFFFFFFFFFFFFFF9ALL)
    {
      (*(v4 + 8))(v7, v3);
      sub_10000C4B8(a1);
      return v9;
    }

    sub_10001756C();
    swift_allocError();
    *v10 = v9;
    swift_willThrow();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000C4B8(a1);
  return v9;
}

uint64_t sub_100016E50@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100009BDC(&qword_100036208, &qword_100027320);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_10000BEFC(a1, a1[3]);
  sub_1000172F8();
  sub_100021D0C();
  if (v2)
  {
    return sub_10000C4B8(a1);
  }

  v22 = 0;
  sub_10001734C();
  sub_100021B5C();
  v18 = a2;
  v16 = v20;
  v17 = v19;
  v11 = v21;
  sub_100009BDC(&qword_100036220, &qword_100027328);
  v22 = 1;
  sub_100017448(&qword_100036228, &qword_100036220, &qword_100027328, sub_1000173A0);
  sub_100021B5C();
  (*(v6 + 8))(v9, v5);
  v12 = v19;
  result = sub_10000C4B8(a1);
  v14 = v18;
  v15 = v16;
  *v18 = v17;
  v14[1] = v15;
  *(v14 + 4) = v11;
  *(v14 + 5) = v12;
  return result;
}

uint64_t sub_10001709C(uint64_t *a1)
{
  v3 = sub_100009BDC(&qword_1000361E8, &qword_100027310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_10000BEFC(a1, v8);
  sub_1000172A4();
  sub_100021D0C();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_100021B8C();
    sub_100009BDC(&qword_1000361F8, &qword_100027318);
    v10[30] = 1;
    sub_10000C468(&qword_100036200, &qword_1000361F8, &qword_100027318);
    sub_100021BAC();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000C4B8(a1);
  return v8;
}

unint64_t sub_1000172A4()
{
  result = qword_1000361F0;
  if (!qword_1000361F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000361F0);
  }

  return result;
}

unint64_t sub_1000172F8()
{
  result = qword_100036210;
  if (!qword_100036210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036210);
  }

  return result;
}

unint64_t sub_10001734C()
{
  result = qword_100036218;
  if (!qword_100036218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036218);
  }

  return result;
}

unint64_t sub_1000173A0()
{
  result = qword_100036230;
  if (!qword_100036230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036230);
  }

  return result;
}

unint64_t sub_1000173F4()
{
  result = qword_100036240;
  if (!qword_100036240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036240);
  }

  return result;
}

uint64_t sub_100017448(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000BFBC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000174C4()
{
  result = qword_100036258;
  if (!qword_100036258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036258);
  }

  return result;
}

unint64_t sub_100017518()
{
  result = qword_100036268;
  if (!qword_100036268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036268);
  }

  return result;
}

unint64_t sub_10001756C()
{
  result = qword_100036270;
  if (!qword_100036270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036270);
  }

  return result;
}

unint64_t sub_1000175C0()
{
  result = qword_100036280;
  if (!qword_100036280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036280);
  }

  return result;
}

unint64_t sub_100017614()
{
  result = qword_100036290;
  if (!qword_100036290)
  {
    sub_10000BFBC(&qword_100036288, &qword_100027350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036290);
  }

  return result;
}

unint64_t sub_100017690()
{
  result = qword_1000362A0;
  if (!qword_1000362A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362A0);
  }

  return result;
}

unint64_t sub_1000176E4()
{
  result = qword_1000362B8;
  if (!qword_1000362B8)
  {
    sub_10000BFBC(&qword_100036248, &qword_100027338);
    sub_100017768();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362B8);
  }

  return result;
}

unint64_t sub_100017768()
{
  result = qword_1000362C0;
  if (!qword_1000362C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362C0);
  }

  return result;
}

unint64_t sub_1000177BC()
{
  result = qword_1000362D0;
  if (!qword_1000362D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362D0);
  }

  return result;
}

unint64_t sub_100017810()
{
  result = qword_1000362D8;
  if (!qword_1000362D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362D8);
  }

  return result;
}

unint64_t sub_100017864()
{
  result = qword_1000362E8;
  if (!qword_1000362E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362E8);
  }

  return result;
}

unint64_t sub_1000178B8()
{
  result = qword_1000362F0;
  if (!qword_1000362F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000362F0);
  }

  return result;
}

unint64_t sub_10001790C()
{
  result = qword_100036300;
  if (!qword_100036300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036300);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressParameters.DecodingError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProgressParameters.DecodingError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_100017A58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100017AE8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100017BA8(uint64_t a1, unsigned int a2)
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

uint64_t sub_100017BF0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_100017C34(uint64_t result, unsigned int a2)
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

uint64_t getEnumTagSinglePayload for OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100017CC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100017DDC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_100017F20(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_100018144()
{
  result = qword_100036418;
  if (!qword_100036418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036418);
  }

  return result;
}

unint64_t sub_10001819C()
{
  result = qword_100036420;
  if (!qword_100036420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036420);
  }

  return result;
}

unint64_t sub_1000181F4()
{
  result = qword_100036428;
  if (!qword_100036428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036428);
  }

  return result;
}

unint64_t sub_10001824C()
{
  result = qword_100036430;
  if (!qword_100036430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036430);
  }

  return result;
}

unint64_t sub_1000182A4()
{
  result = qword_100036438;
  if (!qword_100036438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036438);
  }

  return result;
}

unint64_t sub_1000182FC()
{
  result = qword_100036440;
  if (!qword_100036440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036440);
  }

  return result;
}

unint64_t sub_100018354()
{
  result = qword_100036448;
  if (!qword_100036448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036448);
  }

  return result;
}

unint64_t sub_1000183AC()
{
  result = qword_100036450;
  if (!qword_100036450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036450);
  }

  return result;
}

unint64_t sub_100018404()
{
  result = qword_100036458;
  if (!qword_100036458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036458);
  }

  return result;
}

unint64_t sub_10001845C()
{
  result = qword_100036460;
  if (!qword_100036460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036460);
  }

  return result;
}

unint64_t sub_1000184B4()
{
  result = qword_100036468;
  if (!qword_100036468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036468);
  }

  return result;
}

unint64_t sub_10001850C()
{
  result = qword_100036470;
  if (!qword_100036470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036470);
  }

  return result;
}

unint64_t sub_100018564()
{
  result = qword_100036478;
  if (!qword_100036478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036478);
  }

  return result;
}

unint64_t sub_1000185BC()
{
  result = qword_100036480;
  if (!qword_100036480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036480);
  }

  return result;
}

unint64_t sub_100018614()
{
  result = qword_100036488;
  if (!qword_100036488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036488);
  }

  return result;
}

unint64_t sub_10001866C()
{
  result = qword_100036490;
  if (!qword_100036490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036490);
  }

  return result;
}

unint64_t sub_1000186C4()
{
  result = qword_100036498;
  if (!qword_100036498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036498);
  }

  return result;
}

unint64_t sub_10001871C()
{
  result = qword_1000364A0;
  if (!qword_1000364A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364A0);
  }

  return result;
}

unint64_t sub_100018774()
{
  result = qword_1000364A8;
  if (!qword_1000364A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364A8);
  }

  return result;
}

unint64_t sub_1000187CC()
{
  result = qword_1000364B0;
  if (!qword_1000364B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364B0);
  }

  return result;
}

unint64_t sub_100018824()
{
  result = qword_1000364B8;
  if (!qword_1000364B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364B8);
  }

  return result;
}

unint64_t sub_10001887C()
{
  result = qword_1000364C0;
  if (!qword_1000364C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364C0);
  }

  return result;
}

unint64_t sub_1000188D4()
{
  result = qword_1000364C8;
  if (!qword_1000364C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364C8);
  }

  return result;
}

unint64_t sub_10001892C()
{
  result = qword_1000364D0;
  if (!qword_1000364D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364D0);
  }

  return result;
}

unint64_t sub_100018984()
{
  result = qword_1000364D8;
  if (!qword_1000364D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364D8);
  }

  return result;
}

unint64_t sub_1000189DC()
{
  result = qword_1000364E0;
  if (!qword_1000364E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364E0);
  }

  return result;
}

unint64_t sub_100018A34()
{
  result = qword_1000364E8;
  if (!qword_1000364E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364E8);
  }

  return result;
}

unint64_t sub_100018A88()
{
  result = qword_1000364F0;
  if (!qword_1000364F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000364F0);
  }

  return result;
}

unint64_t sub_100018AF4()
{
  result = qword_100036500;
  if (!qword_100036500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036500);
  }

  return result;
}

unint64_t sub_100018B48()
{
  result = qword_100036508;
  if (!qword_100036508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036508);
  }

  return result;
}

uint64_t sub_100018B9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xEA00000000007365;
  if (v4 || (sub_100021C3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372 || (sub_100021C3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xEE00736E6F697461)
  {

    return 2;
  }

  else
  {
    v6 = sub_100021C3C();

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

uint64_t sub_100018CC8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_100018D18()
{
  result = qword_100036510;
  if (!qword_100036510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036510);
  }

  return result;
}

unint64_t sub_100018D6C()
{
  result = qword_100036568;
  if (!qword_100036568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036568);
  }

  return result;
}

unint64_t sub_100018DC0()
{
  result = qword_100036570;
  if (!qword_100036570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036570);
  }

  return result;
}

unint64_t sub_100018E14()
{
  result = qword_100036578;
  if (!qword_100036578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036578);
  }

  return result;
}

unint64_t sub_100018E68()
{
  result = qword_100036580;
  if (!qword_100036580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036580);
  }

  return result;
}

unint64_t sub_100018EBC()
{
  result = qword_100036588;
  if (!qword_100036588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036588);
  }

  return result;
}

unint64_t sub_100018F10()
{
  result = qword_100036590;
  if (!qword_100036590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036590);
  }

  return result;
}

unint64_t sub_100018F64()
{
  result = qword_100036598;
  if (!qword_100036598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036598);
  }

  return result;
}

unint64_t sub_100018FB8()
{
  result = qword_1000365A0;
  if (!qword_1000365A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000365A0);
  }

  return result;
}

unint64_t sub_10001900C()
{
  result = qword_1000365A8;
  if (!qword_1000365A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000365A8);
  }

  return result;
}

unint64_t sub_100019060()
{
  result = qword_1000365B0;
  if (!qword_1000365B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000365B0);
  }

  return result;
}

unint64_t sub_1000190B4()
{
  result = qword_1000365C0;
  if (!qword_1000365C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000365C0);
  }

  return result;
}

uint64_t sub_100019158(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v5 <= 0x3F)
  {
    v6 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v6 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_100019210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 48);

  return v9(a1, a2, AssociatedTypeWitness);
}

uint64_t sub_100019290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 56);

  return v10(a1, a2, a3, AssociatedTypeWitness);
}

uint64_t sub_100019320(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000193B0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Status.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Status.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100019668(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1000196F8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000197BC()
{
  result = qword_100036720;
  if (!qword_100036720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036720);
  }

  return result;
}

unint64_t sub_100019830()
{
  result = qword_100036728;
  if (!qword_100036728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036728);
  }

  return result;
}

unint64_t sub_100019888()
{
  result = qword_100036730;
  if (!qword_100036730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036730);
  }

  return result;
}

unint64_t sub_1000198E0()
{
  result = qword_100036738;
  if (!qword_100036738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036738);
  }

  return result;
}

unint64_t sub_100019938()
{
  result = qword_100036740;
  if (!qword_100036740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036740);
  }

  return result;
}

unint64_t sub_100019990()
{
  result = qword_100036748;
  if (!qword_100036748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036748);
  }

  return result;
}

unint64_t sub_1000199E8()
{
  result = qword_100036750;
  if (!qword_100036750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036750);
  }

  return result;
}

unint64_t sub_100019A40()
{
  result = qword_100036758;
  if (!qword_100036758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036758);
  }

  return result;
}

unint64_t sub_100019A98()
{
  result = qword_100036760;
  if (!qword_100036760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036760);
  }

  return result;
}

unint64_t sub_100019AF0()
{
  result = qword_100036768;
  if (!qword_100036768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036768);
  }

  return result;
}

unint64_t sub_100019B48()
{
  result = qword_100036770;
  if (!qword_100036770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036770);
  }

  return result;
}

unint64_t sub_100019BA0()
{
  result = qword_100036778;
  if (!qword_100036778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036778);
  }

  return result;
}

unint64_t sub_100019BF8()
{
  result = qword_100036780;
  if (!qword_100036780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036780);
  }

  return result;
}

unint64_t sub_100019C50()
{
  result = qword_100036788;
  if (!qword_100036788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036788);
  }

  return result;
}

unint64_t sub_100019CA8()
{
  result = qword_100036790;
  if (!qword_100036790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036790);
  }

  return result;
}

unint64_t sub_100019D00()
{
  result = qword_100036798;
  if (!qword_100036798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036798);
  }

  return result;
}

unint64_t sub_100019D58()
{
  result = qword_1000367A0;
  if (!qword_1000367A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367A0);
  }

  return result;
}

unint64_t sub_100019DB0()
{
  result = qword_1000367A8;
  if (!qword_1000367A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367A8);
  }

  return result;
}

unint64_t sub_100019E08()
{
  result = qword_1000367B0;
  if (!qword_1000367B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367B0);
  }

  return result;
}

unint64_t sub_100019E60()
{
  result = qword_1000367B8;
  if (!qword_1000367B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367B8);
  }

  return result;
}

unint64_t sub_100019EB8()
{
  result = qword_1000367C0;
  if (!qword_1000367C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367C0);
  }

  return result;
}

unint64_t sub_100019F10()
{
  result = qword_1000367C8;
  if (!qword_1000367C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367C8);
  }

  return result;
}

unint64_t sub_100019F68()
{
  result = qword_1000367D0;
  if (!qword_1000367D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367D0);
  }

  return result;
}

unint64_t sub_100019FC0()
{
  result = qword_1000367D8;
  if (!qword_1000367D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367D8);
  }

  return result;
}

unint64_t sub_10001A018()
{
  result = qword_1000367E0;
  if (!qword_1000367E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367E0);
  }

  return result;
}

unint64_t sub_10001A070()
{
  result = qword_1000367E8;
  if (!qword_1000367E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367E8);
  }

  return result;
}

unint64_t sub_10001A0C8()
{
  result = qword_1000367F0;
  if (!qword_1000367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367F0);
  }

  return result;
}

unint64_t sub_10001A120()
{
  result = qword_1000367F8;
  if (!qword_1000367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000367F8);
  }

  return result;
}

unint64_t sub_10001A178()
{
  result = qword_100036800;
  if (!qword_100036800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036800);
  }

  return result;
}

unint64_t sub_10001A1D0()
{
  result = qword_100036808;
  if (!qword_100036808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036808);
  }

  return result;
}

unint64_t sub_10001A228()
{
  result = qword_100036810;
  if (!qword_100036810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036810);
  }

  return result;
}

unint64_t sub_10001A27C()
{
  result = qword_100036818;
  if (!qword_100036818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100036818);
  }

  return result;
}

uint64_t sub_10001A344(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100009A68(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10001A43C()
{
  sub_10001F93C();
  result = sub_100021A3C();
  qword_10003D048 = result;
  return result;
}

uint64_t sub_10001A4A0()
{
  v1 = sub_1000216EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_100021AAC(16);

  strcpy(v8, "UUT-Recording-");
  HIBYTE(v8[1]) = -18;
  v7[1] = *(v0 + OBJC_IVAR___AudioBoxController_recordingNumber);
  v9._countAndFlagsBits = sub_100021C1C();
  sub_10002191C(v9);

  sub_1000216BC();

  sub_1000216CC();
  return (*(v2 + 8))(v5, v1);
}

id sub_10001A62C(uint64_t a1, void *a2)
{
  if (a1 && (type metadata accessor for AudioBoxInputs(), (v4 = swift_dynamicCastClass()) != 0))
  {
    v5 = *&v2[OBJC_IVAR___AudioBoxController_inputs];
    *&v2[OBJC_IVAR___AudioBoxController_inputs] = v4;
    v6 = v4;
    swift_unknownObjectRetain_n();

    v7 = *&v2[OBJC_IVAR___AudioBoxController_responder];
    *&v2[OBJC_IVAR___AudioBoxController_responder] = a2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    v8 = type metadata accessor for AudioBoxController();
    v27[3] = v8;
    v27[4] = &off_100032960;
    v27[0] = v2;
    v9 = objc_allocWithZone(type metadata accessor for AudioBoxBluetoothManager());
    v10 = sub_100018CC8(v27, v8);
    v11 = *(*(v8 - 8) + 64);
    __chkstk_darwin(v10);
    v13 = (&v27[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = v2;
    v17 = sub_100020A7C(v15, v9);
    sub_10000C4B8(v27);
    v18 = *&v16[OBJC_IVAR___AudioBoxController_bluetoothManager];
    *&v16[OBJC_IVAR___AudioBoxController_bluetoothManager] = v17;

    [a2 enableVolumeHUD:0];
    sub_10001B01C();
    if (*(v6 + OBJC_IVAR___AudioBoxInputs_downloadAudioFiles) == 1)
    {
      sub_10001B6D4();
    }

    return swift_unknownObjectRelease();
  }

  else
  {
    v20 = [v2 result];
    if (*&v2[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v21 = *&v2[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v22.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v22.super.isa = 0;
    }

    v23 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v25 = [v23 testResultOverrideForExclavesStatus:v22.super.isa originalResult:isa];

    [v20 setStatusCode:v25];

    return [v2 setFinished:1];
  }
}

void sub_10001A99C()
{
  v1 = [v0 progress];
  [v1 setCompletedUnitCount:-1];

  v2 = [v0 progress];
  [v2 setTotalUnitCount:100];

  v3 = *&v0[OBJC_IVAR___AudioBoxController_bluetoothManager];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  if (v3[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isBluetoothReady] == 1)
  {
    v5 = *&v0[OBJC_IVAR___AudioBoxController_inputs];
    if (v5)
    {
      v6 = v5 + OBJC_IVAR___AudioBoxInputs_audioBoxID;
      v7 = *(v6 + 8);
      if (v7)
      {
        v8 = *v6;
        v9 = swift_allocObject();
        *(v9 + 16) = v0;
        v10 = v0;
        v11 = v3;

        sub_100002294(v8, v7, sub_1000214AC, v9);

        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = &v3[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback];
  v13 = *&v3[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback];
  v14 = *&v3[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback + 8];
  *v12 = sub_1000214A4;
  v12[1] = v4;
  v15 = v0;
  v16 = v3;
  sub_10000C004(v13);
}

uint64_t sub_10001AB94(uint64_t result)
{
  v1 = *(result + OBJC_IVAR___AudioBoxController_bluetoothManager);
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v2 = result;
  v3 = *(result + OBJC_IVAR___AudioBoxController_inputs);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3 + OBJC_IVAR___AudioBoxInputs_audioBoxID;
  v5 = *(v4 + 8);
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v6 = *v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = v1;

  v9 = v2;
  sub_100002294(v6, v5, sub_10002154C, v7);
}

void sub_10001AC84(char *a1)
{
  v2 = [objc_opt_self() processInfo];
  [v2 operatingSystemVersion];
  v3 = *&v16[16];
  v15 = *v16;

  *v16 = 1;
  *&v16[8] = v15;
  v17 = v3;
  v18 = 0;
  v4 = OBJC_IVAR___AudioBoxController_bluetoothManager;
  v5 = *&a1[OBJC_IVAR___AudioBoxController_bluetoothManager];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  sub_100003528(v16);

  v7 = *&a1[v4];
  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = *&a1[OBJC_IVAR___AudioBoxController_inputs];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = (v8 + OBJC_IVAR___AudioBoxInputs_audioBoxToken);
  v10 = v9[1];
  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v11 = *v9;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = v7;

  v14 = a1;
  sub_100002B98(v11, v10, sub_1000214B4, v12);
}

void sub_10001ADF8(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR___AudioBoxController_inputs);
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + OBJC_IVAR___AudioBoxInputs_parameters);
  v3 = *(v1 + OBJC_IVAR___AudioBoxInputs_specifications);
  *&v6 = *(v1 + OBJC_IVAR___AudioBoxInputs_predicates);
  *(&v6 + 1) = v2;
  v7 = v3;
  v8 = 0;
  v9 = 3;
  v4 = *(a1 + OBJC_IVAR___AudioBoxController_bluetoothManager);
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_100003528(&v6);
}

id sub_10001AF30()
{
  result = [*(v0 + OBJC_IVAR___AudioBoxController_audioTest) cancel];
  v2 = *(v0 + OBJC_IVAR___AudioBoxController_bluetoothManager);
  if (!v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox))
  {
    result = *(v2 + OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager);
    if (!result)
    {
LABEL_11:
      __break(1u);
      return result;
    }

    [result cancelPeripheralConnection:?];
  }

  sub_10001B3C0();
  result = *(v0 + OBJC_IVAR___AudioBoxController_responder);
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return [result enableVolumeHUD:1];
}

uint64_t sub_10001B01C()
{
  v1 = v0;
  sub_10001B3C0();
  v2 = [objc_opt_self() defaultManager];
  sub_10002169C(&stru_10003D000);
  v4 = v3;
  v24 = 0;
  v5 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:0 attributes:0 error:&v24];

  if (v5)
  {
    v6 = v24;
    sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100025800;
    v8 = sub_1000216DC();
    v10 = v9;
    *(v7 + 56) = &type metadata for String;
    *(v7 + 64) = sub_100009C28();
    *(v7 + 32) = v8;
    *(v7 + 40) = v10;
    sub_10002178C();
  }

  else
  {
    v12 = v24;
    v13 = sub_10002166C();

    swift_willThrow();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100025800;
    v24 = v13;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v15 = sub_1000218FC();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100009C28();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_10002178C();

    v18 = [v1 result];
    if (*&v1[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v19 = *&v1[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v20.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v20.super.isa = 0;
    }

    v21 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v23 = [v21 testResultOverrideForExclavesStatus:v20.super.isa originalResult:isa];

    [v18 setStatusCode:v23];
    [v1 setFinished:1];
  }
}

void sub_10001B3C0()
{
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1000216DC();
  v2 = sub_10002188C();

  v3 = [v1 fileExistsAtPath:v2];

  if (v3)
  {
    v4 = [v0 defaultManager];
    sub_10002169C(v5);
    v7 = v6;
    v20 = 0;
    v8 = [v4 removeItemAtURL:v6 error:&v20];

    if (v8)
    {
      v9 = v20;
      sub_1000219DC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_100025800;
      v11 = sub_1000216DC();
      v13 = v12;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 64) = sub_100009C28();
      *(v10 + 32) = v11;
      *(v10 + 40) = v13;
      sub_10002178C();
    }

    else
    {
      v14 = v20;
      v15 = sub_10002166C();

      swift_willThrow();
      sub_1000219BC();
      if (qword_1000356F8 != -1)
      {
        swift_once();
      }

      sub_100009BDC(&qword_100035D30, &qword_100025988);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_100025800;
      v20 = v15;
      swift_errorRetain();
      sub_100009BDC(&qword_100035D48, &qword_100025998);
      v17 = sub_1000218FC();
      v19 = v18;
      *(v16 + 56) = &type metadata for String;
      *(v16 + 64) = sub_100009C28();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      sub_10002178C();
    }
  }
}

void sub_10001B6D4()
{
  v1 = v0;
  v57 = sub_10002179C();
  v56 = *(v57 - 8);
  v2 = *(v56 + 64);
  __chkstk_darwin(v57);
  v53 = (&v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = sub_1000217EC();
  v54 = *(v55 - 8);
  v4 = *(v54 + 64);
  v5 = __chkstk_darwin(v55);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = &v52 - v7;
  v74 = sub_1000216EC();
  v69 = *(v74 - 8);
  v8 = *(v69 + 64);
  v9 = __chkstk_darwin(v74);
  v65 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v10;
  __chkstk_darwin(v9);
  v12 = &v52 - v11;
  v13 = dispatch_group_create();
  v58 = OBJC_IVAR___AudioBoxController_inputs;
  v14 = *&v0[OBJC_IVAR___AudioBoxController_inputs];
  if (!v14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = v13;
  v16 = *(v14 + OBJC_IVAR___AudioBoxInputs_sources);
  v17 = *(v16 + 16);
  v67 = OBJC_IVAR___AudioBoxController_responder;
  v68 = OBJC_IVAR___AudioBoxController_audioFileFolderURL;
  v70 = v16;

  v64 = v17;
  if (v17)
  {
    v18 = 0;
    v62 = v69 + 32;
    v63 = v69 + 16;
    v61 = v76;
    v60 = v69 + 8;
    v19 = v69;
    v20 = (v70 + 40);
    while (1)
    {
      if (v18 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_21;
      }

      v21 = *(v20 - 1);
      v22 = *v20;

      if ([v1 isFinished])
      {

        goto LABEL_10;
      }

      v73 = v20;
      sub_1000216BC();
      dispatch_group_enter(v15);
      v23 = *&v1[v67];
      if (!v23)
      {
        break;
      }

      v72 = (v18 + 1);
      swift_unknownObjectRetain();
      v71 = sub_10002188C();
      v24 = v65;
      (*(v19 + 16))(v65, v12, v74);
      v25 = (*(v19 + 80) + 48) & ~*(v19 + 80);
      v26 = v12;
      v27 = swift_allocObject();
      *(v27 + 2) = v15;
      *(v27 + 3) = v21;
      *(v27 + 4) = v22;
      *(v27 + 5) = v1;
      v28 = v24;
      v29 = v74;
      (*(v19 + 32))(&v27[v25], v28, v74);
      v76[2] = sub_100021408;
      v76[3] = v27;
      v12 = v26;
      v18 = v72;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      v76[0] = sub_10001C688;
      v76[1] = &unk_100032AE8;
      v30 = _Block_copy(aBlock);
      v31 = v15;
      v32 = v1;

      v33 = v71;
      [v23 getAsset:v71 completion:v30];
      _Block_release(v30);
      swift_unknownObjectRelease();

      (*(v19 + 8))(v12, v29);
      v20 = v73 + 2;
      if (v64 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

LABEL_10:

  sub_1000217DC();
  v34 = *&v1[v58];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v18 = &OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout;
  v35 = *(v34 + OBJC_IVAR___AudioBoxInputs_fileDownloadTimeout);
  if (v35 < 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_14;
  }

  v36 = v53;
  *v53 = v35;
  v37 = v56;
  v38 = v57;
  (*(v56 + 104))(v36, enum case for DispatchTimeInterval.seconds(_:), v57);
  v39 = v52;
  v40 = v59;
  sub_1000217FC();
  (*(v37 + 8))(v36, v38);
  v41 = *(v54 + 8);
  v42 = v55;
  v41(v40, v55);
  LOBYTE(v38) = sub_1000219EC();
  v41(v39, v42);
  if ((v38 & 1) == 0)
  {
LABEL_19:

    return;
  }

  sub_1000219BC();
  if (qword_1000356F8 != -1)
  {
    goto LABEL_22;
  }

LABEL_14:
  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_100025800;
  v44 = *&v1[v58];
  if (v44)
  {
    v45 = *(v44 + *v18);
    *(v43 + 56) = &type metadata for UInt;
    *(v43 + 64) = &protocol witness table for UInt;
    *(v43 + 32) = v45;
    sub_10002178C();

    v46 = [v1 result];
    if (*&v1[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v47 = *&v1[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v48.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v48.super.isa = 0;
    }

    v49 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v51 = [v49 testResultOverrideForExclavesStatus:v48.super.isa originalResult:isa];

    [v46 setStatusCode:v51];
    [v1 setFinished:1];
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
}

void sub_10001BE48(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7)
{
  v14 = sub_100009BDC(&qword_100036888, &qword_100028DF0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = v32 - v16;
  if (a2 >> 60 == 15)
  {
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100025800;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100009C28();
    *(v18 + 32) = a4;
    *(v18 + 40) = a5;

    sub_10002178C();

    v19 = [a6 result];
    if (*&a6[OBJC_IVAR___AudioBoxController_exclavesStatus])
    {
      v20 = *&a6[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v21.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v21.super.isa = 0;
    }

    v22 = objc_opt_self();
    isa = sub_10002199C().super.super.isa;
    v24 = [v22 testResultOverrideForExclavesStatus:v21.super.isa originalResult:isa];

    [v19 setStatusCode:v24];
    [a6 setFinished:1];

    dispatch_group_leave(a3);
  }

  else
  {
    sub_100021490(a1, a2);
    sub_10002174C();
    v33 = a3;
    v25 = sub_1000216EC();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v17, a7, v25);
    (*(v26 + 56))(v17, 0, 1, v25);
    swift_beginAccess();

    sub_10001C4B0(v17, a4, a5);
    swift_endAccess();
    v27 = sub_1000219DC();
    v32[1] = v27;
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100025810;
    *(v28 + 56) = &type metadata for String;
    v29 = sub_100009C28();
    *(v28 + 64) = v29;
    *(v28 + 32) = a4;
    *(v28 + 40) = a5;

    v30 = sub_1000216DC();
    *(v28 + 96) = &type metadata for String;
    *(v28 + 104) = v29;
    *(v28 + 72) = v30;
    *(v28 + 80) = v31;
    sub_10002178C();
    sub_10000C36C(a1, a2);

    dispatch_group_leave(v33);
  }
}

uint64_t sub_10001C4B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(*(sub_100009BDC(&qword_100036888, &qword_100028DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v18 - v8;
  v10 = sub_1000216EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1000212D4(a1, &qword_100036888, &qword_100028DF0);
    sub_10001FA50(a2, a3, v9);

    return sub_1000212D4(v9, &qword_100036888, &qword_100028DF0);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v16 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000203E4(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  return result;
}

uint64_t sub_10001C688(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {

    v5 = v2;
    v2 = sub_10002173C();
    v7 = v6;
  }

  else
  {

    v7 = 0xF000000000000000;
  }

  v4(v2, v7);
  sub_10000C36C(v2, v7);
}

void sub_10001C720(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 48);
  if (v4 <= 2)
  {
    if (*(a1 + 48))
    {
      if (v4 == 1)
      {
        v31 = [v1 progress];
        [v31 setCompletedUnitCount:v2];
LABEL_13:

        return;
      }

      v21 = *&v1[OBJC_IVAR___AudioBoxController_bluetoothManager];
      if (v21)
      {
        swift_beginAccess();
        v23 = v21;
        sub_10000C268(a1, &aBlock);
        sub_10001A344(v2);
        swift_endAccess();
        sub_100004D6C();

        return;
      }
    }

    else
    {
      v18 = *&v1[OBJC_IVAR___AudioBoxController_bluetoothManager];
      if (v18)
      {
        v31 = v18;
        sub_100003194(v2, v3);
        goto LABEL_13;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (v4 == 3)
  {
    v20 = *(a1 + 32);
    v19 = *(a1 + 40);
    aBlock = *a1;
    v33 = v3;
    v34 = *(a1 + 16);
    v35 = v20;
    sub_10001DB54(&aBlock, v19);
  }

  else if (v4 == 4)
  {
    v5 = [v1 result];
    sub_10001CC2C(v3);
    isa = sub_10002185C().super.isa;

    [v5 setData:isa];

    v7 = OBJC_IVAR___AudioBoxController_exclavesStatus;
    v8 = *&v1[OBJC_IVAR___AudioBoxController_exclavesStatus];
    if (v8)
    {
      v9 = *&v1[OBJC_IVAR___AudioBoxController_exclavesStatus];

      v10 = [v1 result];
      v11 = [v10 data];
      v12 = sub_10002186C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v12;
      sub_100020E54(v8, sub_100020A38, 0, isUniquelyReferenced_nonNull_native, &aBlock);

      v14 = sub_10002185C().super.isa;

      [v10 setData:v14];
    }

    v15 = [v1 result];
    if (*&v1[v7])
    {
      v16 = *&v1[v7];

      v17.super.isa = sub_10002185C().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    v28 = objc_opt_self();
    v29 = sub_10002199C().super.super.isa;
    v30 = [v28 testResultOverrideForExclavesStatus:v17.super.isa originalResult:v29];

    [v15 setStatusCode:v30];

    [v1 setFinished:1];
  }

  else
  {
    sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_10002178C();
    v24 = *&v1[OBJC_IVAR___AudioBoxController_audioTest];
    v25 = swift_allocObject();
    *(v25 + 16) = v1;
    v35 = sub_1000210D0;
    v36 = v25;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    *&v34 = sub_10001E9DC;
    *(&v34 + 1) = &unk_100032A70;
    v26 = _Block_copy(&aBlock);
    v27 = v1;

    [v24 stopRecording:v26];
    _Block_release(v26);
  }
}

uint64_t sub_10001CC2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100009BDC(&qword_100036898, &qword_100028E00);
    v2 = sub_100021B1C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_10000C014(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10000C1B0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000C1B0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000C1B0(v31, v32);
    result = sub_100021A8C(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000C1B0(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10001CEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
  v7 = "t:";
  if (a1)
  {
    swift_errorRetain();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v10 = sub_1000218FC();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100009C28();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_10002178C();

    *&v34[0] = a3;
    *(&v34[0] + 1) = a4;
    v34[1] = xmmword_100028D50;
    v35 = 1;
    v14 = *(a2 + OBJC_IVAR___AudioBoxController_bluetoothManager);
    if (!v14)
    {
      __break(1u);
      return result;
    }

    v15 = v14;
    sub_100003528(v34);

    v7 = "updateProgress:forTest:" + 21;
    v6 = _TtC15Diagnostic_838924AudioBoxBluetoothManager;
  }

  else
  {
    sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100025800;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = sub_100009C28();
    *(v16 + 32) = a3;
    *(v16 + 40) = a4;

    sub_10002178C();
  }

  v17 = [objc_opt_self() defaultManager];
  sub_10002169C(v18);
  v20 = v19;
  v33 = 0;
  v21 = [v17 removeItemAtURL:v19 error:&v33];

  if (v21)
  {
    v22 = v33;
    sub_1000219DC();
    if (v6[44].vtable != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v23 = swift_allocObject();
    *(v23 + 16) = *(v7 + 128);
    v24 = sub_1000216DC();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100009C28();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    sub_10002178C();
  }

  else
  {
    v27 = v33;
    v28 = sub_10002166C();

    swift_willThrow();
    sub_1000219BC();
    if (v6[44].vtable != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100025810;
    *(v29 + 56) = &type metadata for String;
    v30 = sub_100009C28();
    *(v29 + 64) = v30;
    *(v29 + 32) = a3;
    *(v29 + 40) = a4;
    v33 = v28;

    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v31 = sub_1000218FC();
    *(v29 + 96) = &type metadata for String;
    *(v29 + 104) = v30;
    *(v29 + 72) = v31;
    *(v29 + 80) = v32;
    sub_10002178C();
  }
}

id sub_10001D3A4(uint64_t a1, id a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = (*(*(sub_100009BDC(&qword_100036888, &qword_100028DF0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v45 - v12;
  v14 = *(sub_1000216EC() - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin();
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    swift_errorRetain();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_100025800;
    *&v49 = a5;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v20 = sub_1000218FC();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100009C28();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    sub_10002178C();

    *&v49 = a1;
    *(&v49 + 1) = a2;
    v50 = xmmword_100025840;
    v51 = 1;
    v24 = *&v5[OBJC_IVAR___AudioBoxController_bluetoothManager];
    if (v24)
    {
      v25 = v24;
      sub_100003528(&v49);
    }

    goto LABEL_30;
  }

  if (a4 >> 60 != 15)
  {
    v47 = v16;
    sub_100009634(a3, a4);
    LODWORD(v45) = sub_1000219DC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    v48 = qword_10003D048;
    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_100025810;
    *(v28 + 56) = &type metadata for String;
    result = sub_100009C28();
    *(v28 + 64) = result;
    *(v28 + 32) = a1;
    *(v28 + 40) = a2;
    v29 = a4 >> 62;
    v46 = result;
    if ((a4 >> 62) > 1)
    {
      if (v29 == 2)
      {
        v32 = *(a3 + 16);
        v31 = *(a3 + 24);
        v33 = __OFSUB__(v31, v32);
        v30 = v31 - v32;
        if (v33)
        {
          __break(1u);
LABEL_20:
          v27.super.isa = 0;
          goto LABEL_21;
        }
      }

      else
      {
        v30 = 0;
      }
    }

    else if (v29)
    {
      LODWORD(v30) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v30 = v30;
    }

    else
    {
      v30 = BYTE6(a4);
    }

    *(v28 + 96) = &type metadata for Int;
    *(v28 + 104) = &protocol witness table for Int;
    *(v28 + 72) = v30;

    sub_10002178C();

    v45 = v5;
    sub_1000216BC();
    sub_10002174C();
    sub_1000219DC();
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100025800;
    v38 = sub_1000216DC();
    v39 = v46;
    *(v37 + 56) = &type metadata for String;
    *(v37 + 64) = v39;
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    sub_10002178C();

    v41 = v47;
    (*(v14 + 16))(v13, v18, v47);
    (*(v14 + 56))(v13, 0, 1, v41);
    v42 = v45;
    swift_beginAccess();

    sub_10001C4B0(v13, a1, a2);
    result = swift_endAccess();
    *&v49 = a1;
    *(&v49 + 1) = a2;
    v50 = 0uLL;
    v51 = 1;
    v43 = *&v42[OBJC_IVAR___AudioBoxController_bluetoothManager];
    if (v43)
    {
      v44 = v43;
      sub_100003528(&v49);

      sub_10000C36C(a3, a4);
      return (*(v14 + 8))(v18, v47);
    }

    goto LABEL_31;
  }

  sub_1000219CC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_10002178C();
  a2 = [v5 result];
  if (!*&v5[OBJC_IVAR___AudioBoxController_exclavesStatus])
  {
    goto LABEL_20;
  }

  v26 = *&v5[OBJC_IVAR___AudioBoxController_exclavesStatus];

  v27.super.isa = sub_10002185C().super.isa;

LABEL_21:
  v34 = objc_opt_self();
  isa = sub_10002199C().super.super.isa;
  v36 = [v34 testResultOverrideForExclavesStatus:v27.super.isa originalResult:isa];

  [a2 setStatusCode:v36];

  return [v5 setFinished:1];
}

void sub_10001DB54(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[3];
  v71 = a1[2];
  v72 = v6;
  v75 = v8;
  v9 = a1[4];
  v10 = sub_1000216EC();
  v73 = *(v10 - 8);
  v74 = v10;
  v11 = *(v73 + 64);
  v12 = __chkstk_darwin(v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v69 - v16;
  __chkstk_darwin(v15);
  v19 = &v69 - v18;
  if (a2)
  {
    v20 = *(a2 + 16) != 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_allocWithZone(AVAudioDeviceTestSequence) init];
  [v21 setOutputMode:0];
  [v21 setPriority:0];
  if (*(v5 + 32))
  {
    v69 = v7;
    v70 = v20;
    v22 = OBJC_IVAR___AudioBoxController_fileNameToURLMap;
    swift_beginAccess();
    v23 = *&v3[v22];
    if (*(v23 + 16))
    {
      sub_10001F7C8(v5, &aBlock);

      v24 = sub_10001F750(v75, v9);
      if (v25)
      {
        v26 = v71;
        v28 = v73;
        v27 = v74;
        (*(v73 + 16))(v17, *(v23 + 56) + *(v73 + 72) * v24, v74);

        (*(v28 + 32))(v19, v17, v27);
        v7 = v19;
        sub_10002169C(v29);
        v31 = v30;
        [v21 setStimulusURL:v30];

        [v21 setOutputMode:v72];
        [v21 setOutputID:v69];
        LODWORD(v32) = v26;
        [v21 setVolume:v32];
        sub_1000212D4(v5, &qword_100036880, &unk_100028DE0);
        (*(v28 + 8))(v19, v27);
        v20 = v70;
        goto LABEL_8;
      }
    }

    else
    {
    }

    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_100025800;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 64) = sub_100009C28();
    *(v38 + 32) = v75;
    *(v38 + 40) = v9;
    sub_10002178C();

    aBlock = xmmword_100028D50;
    v77 = xmmword_100028D60;
    LOBYTE(v78) = 1;
    v39 = *&v3[OBJC_IVAR___AudioBoxController_bluetoothManager];
    if (!v39)
    {
      __break(1u);
      goto LABEL_48;
    }

    v40 = v39;
    sub_100003528(&aBlock);

    v21 = v40;
    goto LABEL_44;
  }

LABEL_8:
  v33 = !v20;
  if (!a2)
  {
    v33 = 1;
  }

  v34 = v3;
  if ((v33 & 1) == 0)
  {
    if (*(a2 + 16) == 1)
    {
      v35 = 0xEA00000000006D6FLL;
      v36 = 0xE400000000000000;
      if (*(a2 + 32) != 2)
      {
        v36 = 0xEB000000006D6F74;
      }

      if (*(a2 + 32))
      {
        v35 = 0xE500000000000000;
      }

      if (*(a2 + 32) <= 1u)
      {
        v7 = v35;
      }

      else
      {
        v7 = v36;
      }

      v37 = sub_10002188C();
    }

    else
    {
      v37 = sub_10002188C();
    }

    [v21 setMicrophone:v37];

    v41 = *&v3[OBJC_IVAR___AudioBoxController_recordingNumber];
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_46;
    }

    *&v3[OBJC_IVAR___AudioBoxController_recordingNumber] = v43;
  }

  if (!*(v5 + 32))
  {
    if (v20)
    {
      sub_10001A4A0();
      v7 = sub_1000216DC();
      v5 = v46;
      (*(v73 + 8))(v14, v74);
      sub_1000219DC();
      if (qword_1000356F8 == -1)
      {
LABEL_34:
        sub_100009BDC(&qword_100035D30, &qword_100025988);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_100025800;
        v48 = v21;
        v49 = [v48 description];
        v50 = sub_10002189C();
        v52 = v51;

        *(v47 + 56) = &type metadata for String;
        *(v47 + 64) = sub_100009C28();
        *(v47 + 32) = v50;
        *(v47 + 40) = v52;
        sub_10002178C();

        v53 = *&v3[OBJC_IVAR___AudioBoxController_audioTest];
        v21 = sub_10002188C();
        v54 = swift_allocObject();
        v54[2] = v3;
        v54[3] = v7;
        v54[4] = v5;
        v78 = sub_10001F6E8;
        v79 = v54;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v77 = sub_10001E9DC;
        *(&v77 + 1) = &unk_1000329A8;
        v55 = _Block_copy(&aBlock);
        v56 = v3;

        [v53 startRecording:v48 filePath:v21 completion:v55];

LABEL_43:
        _Block_release(v55);
        goto LABEL_44;
      }

LABEL_46:
      swift_once();
      goto LABEL_34;
    }

LABEL_44:

    return;
  }

  if (v20)
  {
    sub_10001A4A0();
    v75 = sub_1000216DC();
    v45 = v44;
    (*(v73 + 8))(v14, v74);
  }

  else
  {
    v75 = 0;
    v45 = 0;
  }

  v57 = v20;
  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_100025800;
  v59 = v21;
  v60 = [v59 description];
  v61 = sub_10002189C();
  v63 = v62;

  *(v58 + 56) = &type metadata for String;
  *(v58 + 64) = sub_100009C28();
  *(v58 + 32) = v61;
  *(v58 + 40) = v63;
  sub_10002178C();

  v80[0] = 0uLL;
  v80[1] = xmmword_100028D60;
  v81 = 1;
  v64 = *&v34[OBJC_IVAR___AudioBoxController_bluetoothManager];
  if (v64)
  {
    v65 = v64;
    sub_100003528(v80);

    v66 = *&v34[OBJC_IVAR___AudioBoxController_audioTest];
    if (v45)
    {
      v21 = sub_10002188C();
    }

    else
    {
      v21 = 0;
    }

    v67 = swift_allocObject();
    *(v67 + 16) = v34;
    *(v67 + 24) = v57;
    v78 = sub_10001F744;
    v79 = v67;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v77 = sub_10001E9DC;
    *(&v77 + 1) = &unk_1000329F8;
    v55 = _Block_copy(&aBlock);
    v68 = v34;

    [v66 playback:v59 filePath:v21 completion:v55];

    goto LABEL_43;
  }

LABEL_48:
  __break(1u);
}

void sub_10001E49C(uint64_t a1, char *a2, char a3)
{
  v6 = *(sub_1000216EC() - 8);
  v7 = *(v6 + 64);
  v8 = (__chkstk_darwin)();
  v9 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - v11;
  if (a1)
  {
    swift_errorRetain();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100025800;
    *&v39 = a1;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v14 = sub_1000218FC();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100009C28();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_10002178C();

    v39 = xmmword_100028D50;
    v40 = xmmword_100028D60;
    v41 = 1;
    v17 = *&a2[OBJC_IVAR___AudioBoxController_bluetoothManager];
    if (v17)
    {
      v18 = v17;
      sub_100003528(&v39);

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  v38 = v10;
  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_10002178C();
  v39 = xmmword_100025840;
  v40 = xmmword_100028D60;
  v41 = 1;
  v19 = OBJC_IVAR___AudioBoxController_bluetoothManager;
  v20 = *&a2[OBJC_IVAR___AudioBoxController_bluetoothManager];
  if (!v20)
  {
LABEL_14:
    __break(1u);
    __break(1u);
    goto LABEL_15;
  }

  v21 = v20;
  sub_100003528(&v39);

  if (a3)
  {
    sub_10001A4A0();
    v22 = sub_10002168C();
    v24 = v23;
    v36 = sub_1000216FC();
    v37 = v25;
    v26 = *&a2[v19];
    if (!v26)
    {
LABEL_15:
      __break(1u);
      return;
    }

    (*(v6 + 16))(v9, v12, v38);
    v27 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = v22;
    v28[4] = v24;
    v29 = v28 + v27;
    v30 = v38;
    (*(v6 + 32))(v29, v9, v38);
    v31 = v26;
    v32 = a2;

    v33 = v36;
    v34 = v37;
    sub_100003F78(v22, v24, v36, v37, sub_10001F938, v28);

    sub_100009688(v33, v34);

    (*(v6 + 8))(v12, v30);
  }
}

void sub_10001E9DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10001EA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100025800;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v6 = sub_1000218FC();
    v8 = v7;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 64) = sub_100009C28();
    *(v5 + 32) = v6;
    *(v5 + 40) = v8;
    sub_10002178C();

    v20 = xmmword_100028D70;
    v21 = xmmword_100028D60;
    v22 = 1;
    v9 = *(a2 + OBJC_IVAR___AudioBoxController_bluetoothManager);
    if (v9)
    {
      v10 = v9;
      sub_100003528(&v20);

      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  v13 = OBJC_IVAR___AudioBoxController_exclavesStatus;
  if (!*(a2 + OBJC_IVAR___AudioBoxController_exclavesStatus))
  {
    v14 = [objc_opt_self() exclavesStatusForSensors:1];
    v15 = sub_10002186C();

    v16 = *(a2 + v13);
    *(a2 + v13) = v15;
  }

  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  sub_100009BDC(&qword_100035D30, &qword_100025988);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100025800;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 64) = sub_100009C28();
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;

  sub_10002178C();

  v20 = xmmword_100028D60;
  v21 = xmmword_100028D60;
  v22 = 1;
  v18 = *(a2 + OBJC_IVAR___AudioBoxController_bluetoothManager);
  if (!v18)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v19 = v18;
  sub_100003528(&v20);
}

uint64_t sub_10001ED70(uint64_t a1, char *a2)
{
  v4 = sub_1000216EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v8 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v35 - v10;
  if (a1)
  {
    swift_errorRetain();
    sub_1000219BC();
    if (qword_1000356F8 != -1)
    {
      swift_once();
    }

    sub_100009BDC(&qword_100035D30, &qword_100025988);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_100025800;
    *&v39 = a1;
    swift_errorRetain();
    sub_100009BDC(&qword_100035D48, &qword_100025998);
    v13 = sub_1000218FC();
    v15 = v14;
    *(v12 + 56) = &type metadata for String;
    *(v12 + 64) = sub_100009C28();
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    sub_10002178C();

    v39 = xmmword_100028D70;
    v40 = xmmword_100028D60;
    v41 = 1;
    v17 = *&a2[OBJC_IVAR___AudioBoxController_bluetoothManager];
    if (v17)
    {
      v18 = v17;
      sub_100003528(&v39);
    }

    __break(1u);
    goto LABEL_12;
  }

  v38 = v9;
  sub_1000219DC();
  if (qword_1000356F8 != -1)
  {
    swift_once();
  }

  result = sub_10002178C();
  v39 = xmmword_100028D80;
  v40 = xmmword_100028D60;
  v41 = 1;
  v19 = OBJC_IVAR___AudioBoxController_bluetoothManager;
  v20 = *&a2[OBJC_IVAR___AudioBoxController_bluetoothManager];
  if (!v20)
  {
LABEL_12:
    __break(1u);
    __break(1u);
    goto LABEL_13;
  }

  v21 = v20;
  sub_100003528(&v39);

  sub_10001A4A0();
  v22 = sub_10002168C();
  v24 = v23;
  result = sub_1000216FC();
  v36 = result;
  v37 = v25;
  v26 = *&a2[v19];
  if (v26)
  {
    (*(v5 + 16))(v8, v11, v38);
    v27 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v28 = swift_allocObject();
    v28[2] = a2;
    v28[3] = v22;
    v28[4] = v24;
    v29 = v28 + v27;
    v30 = v38;
    (*(v5 + 32))(v29, v8, v38);
    v31 = v26;
    v32 = a2;

    v33 = v36;
    v34 = v37;
    sub_100003F78(v22, v24, v36, v37, sub_100021550, v28);

    sub_100009688(v33, v34);

    return (*(v5 + 8))(v11, v30);
  }

LABEL_13:
  __break(1u);
  return result;
}

id sub_10001F2B4()
{
  v1 = v0;
  v2 = sub_1000216EC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___AudioBoxController_audioTest;
  *&v1[v7] = [objc_allocWithZone(AVAudioDeviceTest) init];
  *&v1[OBJC_IVAR___AudioBoxController_bluetoothManager] = 0;
  *&v1[OBJC_IVAR___AudioBoxController_inputs] = 0;
  *&v1[OBJC_IVAR___AudioBoxController_responder] = 0;
  *&v1[OBJC_IVAR___AudioBoxController_fileNameToURLMap] = &_swiftEmptyDictionarySingleton;
  sub_10002167C();
  sub_1000216AC();
  (*(v3 + 8))(v6, v2);
  *&v1[OBJC_IVAR___AudioBoxController_recordingNumber] = 0;
  *&v1[OBJC_IVAR___AudioBoxController_exclavesStatus] = 0;
  v8 = type metadata accessor for AudioBoxController();
  v10.receiver = v1;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, "init");
}

id sub_10001F484()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioBoxController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for AudioBoxController()
{
  result = qword_100036870;
  if (!qword_100036870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001F5DC()
{
  result = sub_1000216EC();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10001F6A8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001F6F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001F70C()
{

  return _swift_deallocObject(v0, 25, 7);
}

unint64_t sub_10001F750(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100021CBC();
  sub_10002190C();
  v6 = sub_100021CDC();

  return sub_10001F87C(a1, a2, v6);
}

uint64_t sub_10001F7C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009BDC(&qword_100036880, &unk_100028DE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001F838(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100021A8C(*(v2 + 40));

  return sub_10001F988(a1, v4);
}

unint64_t sub_10001F87C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100021C3C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10001F93C()
{
  result = qword_100035E20;
  if (!qword_100035E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100035E20);
  }

  return result;
}

unint64_t sub_10001F988(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100021278(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100021A9C();
      sub_100021224(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_10001FA50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10001F750(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100020614();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_1000216EC();
    v22 = *(v15 - 8);
    (*(v22 + 32))(a3, v14 + *(v22 + 72) * v9, v15);
    sub_1000201F8(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = sub_1000216EC();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_10001FBC0(uint64_t a1, int a2)
{
  v3 = v2;
  v49 = sub_1000216EC();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v48 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_100009BDC(&qword_100036890, &qword_100028DF8);
  v46 = a2;
  result = sub_100021B0C();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = v2;
    v43 = (v6 + 16);
    v44 = v9;
    v45 = v6;
    v47 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v29 = *v27;
      v28 = v27[1];
      v30 = *(v45 + 72);
      v31 = v26 + v30 * v25;
      if (v46)
      {
        (*v47)(v48, v31, v49);
      }

      else
      {
        (*v43)(v48, v31, v49);
      }

      v32 = *(v12 + 40);
      sub_100021CBC();
      sub_10002190C();
      result = sub_100021CDC();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v29;
      v21[1] = v28;
      result = (*v47)(*(v12 + 56) + v30 * v20, v48, v49);
      ++*(v12 + 16);
      v9 = v44;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v42;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_10001FF40(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100009BDC(&qword_100036898, &qword_100028E00);
  result = sub_100021B0C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v39 = *(v24 + 32);
        v37 = v25;
        v38 = v26;
        sub_10000C1B0((*(v5 + 56) + 32 * v23), v36);
      }

      else
      {
        sub_100021278(v24, &v37);
        sub_10000C014(*(v5 + 56) + 32 * v23, v36);
      }

      result = sub_100021A8C(*(v8 + 40));
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v37;
      v19 = v38;
      *(v17 + 32) = v39;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_10000C1B0(v36, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_1000201F8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_100021A7C() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_100021CBC();

      sub_10002190C();
      v13 = sub_100021CDC();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(sub_1000216EC() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000203E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10001F750(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_100020614();
      goto LABEL_7;
    }

    sub_10001FBC0(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_10001F750(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_100021C6C();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1000216EC();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_100020564(v12, a2, a3, a1, v18);
}

uint64_t sub_100020564(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1000216EC();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_100020614()
{
  v1 = v0;
  v36 = sub_1000216EC();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin();
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009BDC(&qword_100036890, &qword_100028DF8);
  v4 = *v0;
  v5 = sub_100021AFC();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_100020894()
{
  v1 = v0;
  sub_100009BDC(&qword_100036898, &qword_100028E00);
  v2 = *v0;
  v3 = sub_100021AFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_100021278(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000C014(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10000C1B0(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100020A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100021278(a1, a2);

  return sub_10000C014(a1 + 40, a2 + 40);
}

char *sub_100020A7C(uint64_t a1, _BYTE *a2)
{
  v21[3] = type metadata accessor for AudioBoxController();
  v21[4] = &off_100032960;
  v21[0] = a1;
  v4 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_peripheralScanTimeout;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_peripheralScanTimeout] = 30;
  v5 = enum case for DispatchTimeInterval.seconds(_:);
  v6 = sub_10002179C();
  v7 = *(*(v6 - 8) + 104);
  v7(&a2[v4], v5, v6);
  v8 = OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_authenticationTimeout;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_authenticationTimeout] = 15;
  v7(&a2[v8], v5, v6);
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager] = 0;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagingCharacteristic] = 0;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capPSMCharacteristic] = 0;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_l2capChannel] = 0;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBox] = 0;
  v9 = &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxSerial];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedAudioBoxToken];
  *v10 = 0;
  v10[1] = 0;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_messagePacketsReceived] = _swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataReceived] = xmmword_100025820;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_fileDataToSend] = xmmword_100025820;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_expectedFiles] = _swiftEmptyArrayStorage;
  *&a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_filesToSend] = _swiftEmptyArrayStorage;
  a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isBluetoothReady] = 0;
  a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_isAudioBoxAuthenticated] = 0;
  v11 = &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_bluetoothReadyCallback];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxConnectionCompletion];
  *v12 = 0;
  v12[1] = 0;
  v13 = &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_audioBoxAuthenticationCompletion];
  *v13 = 0;
  v13[1] = 0;
  sub_1000214BC(v21, &a2[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_delegate]);
  v20.receiver = a2;
  v20.super_class = type metadata accessor for AudioBoxBluetoothManager();
  v14 = objc_msgSendSuper2(&v20, "init");
  v15 = objc_allocWithZone(CBCentralManager);
  v16 = v14;
  v17 = [v15 initWithDelegate:v16 queue:0];
  sub_10000C4B8(v21);
  v18 = *&v16[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager];
  *&v16[OBJC_IVAR____TtC15Diagnostic_838924AudioBoxBluetoothManager_centralManager] = v17;

  return v16;
}

_OWORD *sub_100020CCC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_100021278(*(v3 + 48) + 40 * v13, &v18);
    sub_10000C014(*(v3 + 56) + 32 * v13, v23);
    v24 = v18;
    v25 = v19;
    *&v26 = v20;
    result = sub_10000C1B0(v23, (&v26 + 8));
    v15 = *(&v25 + 1);
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v15)
    {
      v17 = v1[5];
      v16 = v1[6];
      v18 = v24;
      *&v19 = v25;
      *(&v19 + 1) = v15;
      v20 = v26;
      v21 = v27;
      v22 = v28;
      v17(&v18);
      return sub_1000212D4(&v18, &unk_1000368A0, &qword_100028E08);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v15 = 0;
        v12 = 0;
        v28 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100020E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_100020CCC(&v38);
  if (!*(&v39 + 1))
  {
LABEL_18:
    sub_10002121C();
  }

  while (1)
  {
    v35 = v38;
    v36 = v39;
    v37 = v40;
    sub_10000C1B0(&v41, v34);
    v15 = *a5;
    v16 = sub_10001F838(&v35);
    v18 = *(v15 + 16);
    v19 = (v17 & 1) == 0;
    v20 = __OFADD__(v18, v19);
    v21 = v18 + v19;
    if (v20)
    {
      break;
    }

    v22 = v17;
    if (*(v15 + 24) < v21)
    {
      sub_10001FF40(v21, a4 & 1);
      v23 = *a5;
      v16 = sub_10001F838(&v35);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

LABEL_13:
      if (v22)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (a4)
    {
      goto LABEL_13;
    }

    v31 = v16;
    sub_100020894();
    v16 = v31;
    if (v22)
    {
LABEL_6:
      v12 = *a5;
      v13 = 32 * v16;
      sub_10000C014(*(*a5 + 56) + 32 * v16, v33);
      sub_10000C4B8(v34);
      sub_100021224(&v35);
      v14 = *(v12 + 56);
      sub_10000C4B8((v14 + v13));
      sub_10000C1B0(v33, (v14 + v13));
      goto LABEL_7;
    }

LABEL_14:
    v25 = *a5;
    *(*a5 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v26 = v25[6] + 40 * v16;
    v27 = v35;
    v28 = v36;
    *(v26 + 32) = v37;
    *v26 = v27;
    *(v26 + 16) = v28;
    sub_10000C1B0(v34, (v25[7] + 32 * v16));
    v29 = v25[2];
    v20 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v25[2] = v30;
LABEL_7:
    sub_100020CCC(&v38);
    a4 = 1;
    if (!*(&v39 + 1))
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_100021C6C();
  __break(1u);
  return result;
}

uint64_t sub_100021098()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000210D8()
{
  v1 = sub_1000216EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000211A4(uint64_t a1)
{
  v3 = *(*(sub_1000216EC() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return sub_10001CEF4(a1, v4, v5, v6);
}

uint64_t sub_1000212D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009BDC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100021334()
{
  v1 = sub_1000216EC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100021408(uint64_t a1, unint64_t a2)
{
  v5 = *(sub_1000216EC() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  sub_10001BE48(a1, a2, v6, v7, v8, v9, v10);
}

uint64_t sub_100021490(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100009634(a1, a2);
  }

  return a1;
}

uint64_t sub_1000214BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}