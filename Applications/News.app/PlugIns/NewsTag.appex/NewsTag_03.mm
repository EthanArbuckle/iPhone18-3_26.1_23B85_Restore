uint64_t sub_100046290@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004882C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000462C4(uint64_t a1)
{
  v2 = sub_100048314();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046300(uint64_t a1)
{
  v2 = sub_100048314();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004633C(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&qword_1000E6C38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100018688(a1, a1[3]);
  sub_100048314();
  sub_1000A3660();
  *&v14 = *v3;
  v15 = 0;
  sub_1000484D0();
  sub_1000A3520();
  if (!v2)
  {
    *&v14 = *(v3 + 8);
    v15 = 1;
    sub_1000A3520();
    LOBYTE(v14) = 2;
    sub_1000A3500();
    v14 = *(v3 + 24);
    v15 = 3;
    type metadata accessor for CGSize(0);
    sub_100048524(&qword_1000E6C48, type metadata accessor for CGSize);
    sub_1000A3520();
    v13 = type metadata accessor for LayoutContext();
    v9 = sub_10003EB20();
    sub_1000A2D40();

    LOBYTE(v14) = 4;
    sub_1000A34E0();

    v10 = v13;
    *&v14 = *(v3 + *(v13 + 36));
    v15 = 5;
    sub_1000A3520();
    *&v14 = *(v3 + *(v10 + 40));
    v15 = 6;
    sub_1000A3520();
    LOBYTE(v14) = 7;
    sub_1000A34F0();
    LOBYTE(v14) = 8;
    sub_1000A34F0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100046718@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100017A54(&qword_1000E6C08);
  __chkstk_darwin(v3 - 8);
  v36 = &v29 - v4;
  v5 = sub_1000A2250();
  v34 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E6C10);
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for LayoutContext();
  __chkstk_darwin(v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v38 = a1;
  sub_100018688(a1, v14);
  sub_100048314();
  v15 = v37;
  sub_1000A3640();
  if (v15)
  {
    return sub_100018720(v38);
  }

  v31 = v7;
  v32 = v5;
  v37 = v11;
  v16 = v35;
  v17 = v36;
  v40 = 0;
  sub_100048368();
  sub_1000A34B0();
  *v13 = v39;
  v40 = 1;
  sub_1000A34B0();
  *(v13 + 1) = v39;
  LOBYTE(v39) = 2;
  v18 = sub_1000A3460();
  if (v19)
  {
    sub_1000483BC();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
    (*(v16 + 8))(v10, v8);
    return sub_100018720(v38);
  }

  *(v13 + 2) = v18;
  type metadata accessor for CGSize(0);
  v40 = 3;
  sub_100048524(&qword_1000E6C30, type metadata accessor for CGSize);
  sub_1000A34B0();
  *(v13 + 24) = v39;
  LOBYTE(v39) = 4;
  sub_1000A3480();
  v30 = v8;
  v22 = sub_1000A2D10();

  v23 = v17;
  v24 = v22;
  sub_1000A2260();
  if ((*(v34 + 48))(v23, 1, v32) == 1)
  {
    sub_10001FE6C(v23, &qword_1000E6C08);
    sub_1000483BC();
    swift_allocError();
    *v25 = 2;
    swift_willThrow();

    (*(v16 + 8))(v10, v30);
    return sub_100018720(v38);
  }

  v29 = v24;
  v26 = v34;
  v27 = v31;
  (*(v34 + 32))(v31, v23, v32);
  (*(v26 + 16))(&v13[v37[8]], v27, v32);
  v40 = 5;
  sub_1000A34B0();
  *&v13[v37[9]] = v39;
  v40 = 6;
  sub_1000A34B0();
  *&v13[v37[10]] = v39;
  LOBYTE(v39) = 7;
  v13[v37[11]] = sub_1000A3490() & 1;
  LOBYTE(v39) = 8;
  v28 = sub_1000A3490();

  (*(v34 + 8))(v31, v32);
  (*(v16 + 8))(v10, v30);
  v13[v37[12]] = v28 & 1;
  sub_100048410(v13, v33);
  sub_100018720(v38);
  return sub_100048474(v13);
}

uint64_t sub_100046E98@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) - 1;
  if (v3 < 0xB && ((0x427u >> v3) & 1) != 0)
  {
    v4 = **(&off_1000D8E90 + v3);
    v5 = sub_1000A2250();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  else
  {
    sub_1000A32B0(49);
    v9._object = 0x80000001000B3EB0;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    sub_1000A2E10(v9);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    result = sub_1000A33B0();
    __break(1u);
  }

  return result;
}

uint64_t sub_100046FD8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) - 1;
  if (v3 < 0xB && ((0x427u >> v3) & 1) != 0)
  {
    v4 = **(&off_1000D8EE8 + v3);
    v5 = sub_1000A2250();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  else
  {
    sub_1000A32B0(49);
    v9._object = 0x80000001000B3E80;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    sub_1000A2E10(v9);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    result = sub_1000A33B0();
    __break(1u);
  }

  return result;
}

id sub_100047118()
{
  v26 = sub_1000A2250();
  v0 = *(v26 - 8);
  v1 = __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - v5;
  __chkstk_darwin(v4);
  v25 = &v24 - v7;
  sub_100017A54(&qword_1000E5828);
  inited = swift_initStackObject();
  v24 = xmmword_1000AA7C0;
  *(inited + 16) = xmmword_1000AA7C0;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100017A54(&qword_1000E5830);
  v9 = swift_initStackObject();
  *(v9 + 16) = v24;
  *(v9 + 32) = UIFontWeightTrait;
  *(v9 + 40) = UIFontWeightBold;
  v10 = UIFontDescriptorTraitsAttribute;
  v11 = UIFontWeightTrait;
  v12 = sub_10006C0CC(v9);
  swift_setDeallocating();
  sub_10001FE6C(v9 + 32, &qword_1000E5838);
  *(inited + 64) = sub_100017A54(&qword_1000E5840);
  *(inited + 40) = v12;
  sub_10006C1BC(inited);
  swift_setDeallocating();
  sub_10001FE6C(inited + 32, &qword_1000E5848);
  type metadata accessor for LayoutContext();
  sub_100046E98(v6);
  sub_100046FD8(v3);
  v13 = v25;
  sub_10003EDE0(v6, v3, v25);
  v14 = *(v0 + 8);
  v15 = v3;
  v16 = v26;
  v14(v15, v26);
  v14(v6, v16);
  v17 = sub_10003EB20();
  v14(v13, v16);
  v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v18];
  type metadata accessor for AttributeName(0);
  sub_100048524(&qword_1000E4DB0, type metadata accessor for AttributeName);
  isa = sub_1000A2C50().super.isa;

  v21 = [v19 fontDescriptorByAddingAttributes:isa];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  return v22;
}

uint64_t sub_1000474D0()
{
  v1 = *(v0 + 16);
  if (v1 <= 5)
  {
    if (v1 == 2 || v1 == 3)
    {
      return result;
    }

LABEL_9:
    sub_1000A32B0(46);
    v3._object = 0x80000001000B3F10;
    v3._countAndFlagsBits = 0xD00000000000002CLL;
    sub_1000A2E10(v3);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    result = sub_1000A33B0();
    __break(1u);
    return result;
  }

  if (v1 != 6 && v1 != 11)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_10004765C()
{
  v1 = *(v0 + 16);
  if (v1 > 0xB)
  {
    goto LABEL_5;
  }

  if (((1 << v1) & 0x4C) != 0)
  {
    sub_100047FDC();
    type metadata accessor for LayoutContext();
    sub_100047FDC();
    sub_1000474D0();
    sub_1000474D0();
    sub_100047FDC();
    sub_100047C84();
    return;
  }

  if (((1 << v1) & 0x802) == 0)
  {
LABEL_5:
    sub_1000A32B0(47);
    v2._object = 0x80000001000B3F40;
    v2._countAndFlagsBits = 0xD00000000000002DLL;
    sub_1000A2E10(v2);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    sub_1000A33B0();
    __break(1u);
  }
}

void sub_1000477DC()
{
  v1 = *(v0 + 16);
  if (v1 > 5)
  {
    if (v1 != 6 && v1 != 11)
    {
      goto LABEL_9;
    }

LABEL_8:
    type metadata accessor for LayoutContext();
    sub_100047FDC();
    sub_1000474D0();
    sub_1000474D0();
    sub_100047FDC();
    sub_100047C84();
    return;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1000A32B0(41);
  v2._object = 0x80000001000B3FC0;
  v2._countAndFlagsBits = 0xD000000000000027;
  sub_1000A2E10(v2);
  type metadata accessor for CHSWidgetFamily(0);
  sub_1000A3370();
  sub_1000A33B0();
  __break(1u);
}

id sub_1000479B8()
{
  v0 = sub_1000A2250();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  sub_100048878();
  v10 = sub_1000A3130();
  v11 = objc_opt_self();
  type metadata accessor for LayoutContext();
  sub_100046E98(v7);
  sub_100046FD8(v4);
  sub_10003EDE0(v7, v4, v9);
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v7, v0);
  v13 = sub_10003EB20();
  v12(v9, v0);
  v14 = [v11 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v13];

  [v14 nt_scaledValueForValue:1.0];
  v16 = v15;

  sub_100047E50();
  v18 = [v10 fontWithSize:v16 * v17];

  return v18;
}

uint64_t sub_100047BEC()
{
  sub_100047FDC();
  v2 = v1;
  v3 = *(v0 + *(type metadata accessor for LayoutContext() + 40));
  sub_100047FDC();
  v5 = v3 * v4;
  sub_1000474D0();
  v7 = v5 - (v6 + v6);
  sub_1000474D0();
  v9 = v7 + (v3 + v3) * v8;
  sub_100047FDC();
  if (v2 * (sub_100047C84() * (v9 / v10)) + -16.0 >= 36.0)
  {
    return 0x4042000000000000;
  }

  else
  {
    return 0;
  }
}

double sub_100047C84()
{
  v0 = sub_1000A2250();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - v6;
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  type metadata accessor for LayoutContext();
  sub_100046E98(v7);
  sub_100046FD8(v4);
  sub_10003EDE0(v7, v4, v9);
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v12 = sub_10003EB20();
  v11(v9, v0);
  v13 = [v10 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v12];

  [v13 nt_scaledValueForValue:1.0];
  v15 = v14;

  return v15;
}

uint64_t sub_100047E50()
{
  v1 = *(v0 + 16);
  if (v1 <= 5)
  {
    if (v1 == 2 || v1 == 3)
    {
      return result;
    }

LABEL_9:
    sub_1000A32B0(39);
    v3._object = 0x80000001000B3F90;
    v3._countAndFlagsBits = 0xD000000000000025;
    sub_1000A2E10(v3);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    result = sub_1000A33B0();
    __break(1u);
    return result;
  }

  if (v1 != 6 && v1 != 11)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_100047FDC()
{
  v1 = *(v0 + 16);
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      return;
    }

    if (v1 != 2)
    {
LABEL_13:
      sub_1000A32B0(43);
      v3._object = 0x80000001000B3EE0;
      v3._countAndFlagsBits = 0xD000000000000029;
      sub_1000A2E10(v3);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000A3370();
      sub_1000A33B0();
      __break(1u);
      return;
    }

LABEL_10:
    sub_100047C84();
    return;
  }

  if (v1 == 3 || v1 == 6)
  {
    goto LABEL_10;
  }

  if (v1 != 11)
  {
    goto LABEL_13;
  }
}

uint64_t sub_1000480FC()
{
  v1 = *(v0 + 16);
  if (v1 > 0xB)
  {
    goto LABEL_13;
  }

  if (((1 << v1) & 0x4C) == 0)
  {
    if (((1 << v1) & 0x802) != 0)
    {
      return result;
    }

LABEL_13:
    sub_1000A32B0(20);
    v4._countAndFlagsBits = 0x2064696C61766E49;
    v4._object = 0xE800000000000000;
    sub_1000A2E10(v4);
    v5._object = 0x80000001000B3F70;
    v5._countAndFlagsBits = 0xD000000000000015;
    sub_1000A2E10(v5);
    v6._countAndFlagsBits = 0x203A65756C617620;
    v6._object = 0xE800000000000000;
    sub_1000A2E10(v6);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000A3370();
    goto LABEL_14;
  }

  sub_1000474D0();
  v2 = v1 == 6 || v1 == 3;
  if (!v2 && v1 != 2)
  {
    while (1)
    {
      sub_1000A32B0(43);
      v7._countAndFlagsBits = 0xD000000000000029;
      v7._object = 0x80000001000B3EE0;
      sub_1000A2E10(v7);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000A3370();
LABEL_14:
      sub_1000A33B0();
      __break(1u);
    }
  }

  sub_100047C84();
  return sub_1000474D0();
}

unint64_t sub_100048314()
{
  result = qword_1000E6C18;
  if (!qword_1000E6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C18);
  }

  return result;
}

unint64_t sub_100048368()
{
  result = qword_1000E6C20;
  if (!qword_1000E6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C20);
  }

  return result;
}

unint64_t sub_1000483BC()
{
  result = qword_1000E6C28;
  if (!qword_1000E6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C28);
  }

  return result;
}

uint64_t sub_100048410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048474(uint64_t a1)
{
  v2 = type metadata accessor for LayoutContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000484D0()
{
  result = qword_1000E6C40;
  if (!qword_1000E6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C40);
  }

  return result;
}

uint64_t sub_100048524(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for LayoutContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LayoutContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000486D0()
{
  result = qword_1000E6C50;
  if (!qword_1000E6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C50);
  }

  return result;
}

unint64_t sub_100048728()
{
  result = qword_1000E6C58;
  if (!qword_1000E6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C58);
  }

  return result;
}

unint64_t sub_100048780()
{
  result = qword_1000E6C60;
  if (!qword_1000E6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C60);
  }

  return result;
}

unint64_t sub_1000487D8()
{
  result = qword_1000E6C68;
  if (!qword_1000E6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6C68);
  }

  return result;
}

uint64_t sub_10004882C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000D75E8;
  v6._object = a2;
  v4 = sub_1000A3420(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_100048878()
{
  result = qword_1000E6C70;
  if (!qword_1000E6C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E6C70);
  }

  return result;
}

uint64_t sub_1000488D8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100017A54(&qword_1000E6450);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 32);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_100017A54(&qword_1000E52F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 40);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_100048A34(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_100017A54(&qword_1000E6450);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100017A54(&qword_1000E52F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_100048B90()
{
  sub_100048D38(319, &qword_1000E5F18, &unk_1000E5F20);
  if (v0 <= 0x3F)
  {
    sub_100048D38(319, &qword_1000E6CE0, &qword_1000E6CE8);
    if (v1 <= 0x3F)
    {
      sub_100048D90(319, &qword_1000E6CF0, type metadata accessor for CGRect, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_100048D90(319, &qword_1000E64C8, &type metadata accessor for RedactionReasons, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_100048DF4();
          if (v4 <= 0x3F)
          {
            sub_100048D90(319, &qword_1000E5370, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
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

void sub_100048D38(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_100028E34(255, a3);
    v4 = sub_1000A31A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100048D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_100048DF4()
{
  if (!qword_1000E6CF8)
  {
    v0 = sub_1000A1E30();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E6CF8);
    }
  }
}

uint64_t sub_100048E60@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000A2140();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&qword_1000E5408);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SmallBackgroundView(0);
  sub_100028B94(v1 + *(v10 + 40), v9, &qword_1000E5408);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A2A50();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_100049068@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = sub_100017A54(&qword_1000E6D48);
  __chkstk_darwin(v47);
  v46 = (&v40 - v3);
  v48 = sub_100017A54(&qword_1000E6D50);
  __chkstk_darwin(v48);
  v44 = (&v40 - v4);
  v41 = type metadata accessor for Scrim(0);
  v5 = __chkstk_darwin(v41);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v43 = (&v40 - v7);
  v8 = type metadata accessor for SmallBackgroundView(0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000A2A50();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v40 - v15;
  v17 = a1;
  sub_100048E60(&v40 - v15);
  sub_1000A2A40();
  sub_10004AB84(&qword_1000E65F0, &type metadata accessor for WidgetRenderingMode);
  LOBYTE(a1) = sub_1000A2CE0();
  v18 = *(v11 + 8);
  v18(v14, v10);
  v18(v16, v10);
  if (a1)
  {
    sub_10004A88C(v17, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SmallBackgroundView);
    v19 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v20 = swift_allocObject();
    sub_10004A558(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
    v21 = v46;
    *v46 = sub_10004AB0C;
    v21[1] = v20;
    swift_storeEnumTagMultiPayload();
    sub_100017A54(&qword_1000E6D60);
    sub_100029050(&qword_1000E6D68, &qword_1000E6D50);
    sub_100029050(&qword_1000E6D70, &qword_1000E6D60);
    return sub_1000A22F0();
  }

  else
  {
    v40 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = v46;
    sub_100048E60(v16);
    sub_1000A2A40();
    v24 = sub_1000A2CE0();
    v18(v14, v10);
    v18(v16, v10);
    if (v24)
    {
      v25 = sub_1000A26B0();
      v26 = v17;
      v27 = v40;
      v28 = v45;
    }

    else
    {
      v26 = v17;
      v28 = v45;
      if (*v17)
      {
        v29 = *v17;
        v30 = sub_1000A2740();
      }

      else
      {
        v30 = sub_1000A26C0();
      }

      v25 = v30;
      v27 = v40;
    }

    sub_10004A88C(v26, v27, type metadata accessor for SmallBackgroundView);
    v31 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v32 = swift_allocObject();
    sub_10004A558(v27, v32 + v31);
    v33 = *(v26 + 16);
    KeyPath = swift_getKeyPath();
    v35 = v43;
    *v43 = KeyPath;
    sub_100017A54(&qword_1000E5408);
    swift_storeEnumTagMultiPayload();
    v36 = v42;
    *(v35 + *(v41 + 20)) = v33;
    sub_10004A88C(v35, v36, type metadata accessor for Scrim);
    v37 = v44;
    *v44 = v25;
    *(v37 + 8) = sub_10004B134;
    *(v37 + 16) = v32;
    v38 = sub_100017A54(&qword_1000E6D58);
    sub_10004A88C(v36, v37 + *(v38 + 64), type metadata accessor for Scrim);
    v39 = v33;
    swift_retain_n();
    swift_retain_n();
    sub_10004A8F4(v36);

    sub_100028B94(v37, v23, &qword_1000E6D50);
    swift_storeEnumTagMultiPayload();
    sub_100017A54(&qword_1000E6D60);
    sub_100029050(&qword_1000E6D68, &qword_1000E6D50);
    sub_100029050(&qword_1000E6D70, &qword_1000E6D60);
    sub_1000A22F0();

    sub_10001FE6C(v37, &qword_1000E6D50);
    return sub_10004A8F4(v35);
  }
}

uint64_t sub_100049754@<X0>(uint64_t *a1@<X8>)
{
  v84 = sub_100017A54(&qword_1000E6D78);
  __chkstk_darwin(v84);
  v86 = &v69 - v3;
  v85 = sub_100017A54(&qword_1000E6D80);
  __chkstk_darwin(v85);
  v72 = &v69 - v4;
  v5 = sub_1000A2A50();
  *&v80 = *(v5 - 8);
  v6 = __chkstk_darwin(v5);
  *&v79 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = &v69 - v8;
  v9 = sub_100017A54(&qword_1000E6660);
  __chkstk_darwin(v9 - 8);
  v11 = &v69 - v10;
  v75 = sub_1000A2770();
  v74 = *(v75 - 8);
  __chkstk_darwin(v75);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100017A54(&qword_1000E6668);
  __chkstk_darwin(v76);
  v77 = &v69 - v14;
  v87 = sub_100017A54(&qword_1000E6D88);
  __chkstk_darwin(v87);
  v82 = &v69 - v15;
  v83 = sub_100017A54(&qword_1000E6D90);
  __chkstk_darwin(v83);
  v81 = &v69 - v16;
  v17 = sub_1000A1F40();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = *(v1 + 8);
  if (v24)
  {
    v70 = v5;
    v73 = a1;
    type metadata accessor for SmallBackgroundView(0);
    v25 = v24;
    v26 = v1;
    v27 = v25;
    sub_10004A684(v23);
    sub_1000A1F30();
    sub_10004AB84(&qword_1000E53D8, &type metadata accessor for RedactionReasons);
    v28 = sub_1000A3220();
    v29 = *(v18 + 8);
    v29(v21, v17);
    v29(v23, v17);
    if ((v28 & 1) == 0)
    {
      v71 = v27;
      v32 = v26;
      if (*(v26 + 56))
      {
        v33 = v71;
      }

      else
      {
        sub_10004A38C();
        v33 = sub_1000A3160();
      }

      v34 = v82;
      v35 = v70;
      v82 = v33;
      sub_1000A2750();
      v36 = v74;
      v37 = v75;
      (*(v74 + 104))(v13, enum case for Image.ResizingMode.stretch(_:), v75);
      sub_1000A27D0();

      (*(v36 + 8))(v13, v37);
      sub_1000A2A60();
      v38 = sub_1000A2A70();
      (*(*(v38 - 8) + 56))(v11, 0, 1, v38);
      v39 = v77;
      sub_1000A27C0();

      sub_10001FE6C(v11, &qword_1000E6660);
      v40 = v39 + *(sub_100017A54(&qword_1000E6678) + 36);
      *v40 = 0;
      *(v40 + 8) = 257;
      sub_1000A28C0();
      sub_1000A1E90();
      v41 = (v39 + *(v76 + 36));
      v42 = v89;
      *v41 = v88;
      v41[1] = v42;
      v41[2] = v90;
      v43 = v78;
      sub_100048E60(v78);
      v44 = v79;
      sub_1000A2A40();
      v45 = sub_1000A2A30();
      v46 = *(v80 + 8);
      v46(v44, v35);
      v46(v43, v35);
      if (v45)
      {
        v47 = 8.0;
      }

      else
      {
        v47 = 0.0;
      }

      v48 = *(v87 + 36);
      *&v80 = v32;
      v49 = v34;
      v50 = &v34[v48];
      v51 = *(sub_1000A1F50() + 20);
      v52 = enum case for RoundedCornerStyle.continuous(_:);
      v53 = sub_1000A2200();
      (*(*(v53 - 8) + 104))(v50 + v51, v52, v53);
      *v50 = v47;
      v50[1] = v47;
      *(v50 + *(sub_100017A54(&qword_1000E6640) + 36)) = 256;
      sub_10004ABCC(v39, v49);
      sub_100048E60(v43);
      sub_1000A2A40();
      sub_10004AB84(&qword_1000E65F0, &type metadata accessor for WidgetRenderingMode);
      LOBYTE(v50) = sub_1000A2CE0();
      v46(v44, v35);
      v46(v43, v35);
      if (v50)
      {
        sub_100028B94(v49, v86, &qword_1000E6D88);
        swift_storeEnumTagMultiPayload();
        sub_10004AC3C();
        sub_10004ACF4();
        sub_1000A22F0();
        v54 = v71;
      }

      else
      {
        sub_1000A26B0();
        v55 = sub_1000A2850();
        v57 = v56;
        sub_1000A26B0();
        v58 = sub_1000A2850();
        v60 = v59;
        sub_1000A26B0();
        sub_1000A2700();

        v61 = sub_1000A2850();
        v63 = v62;
        sub_100017A54(qword_1000E89A0);
        v64 = swift_allocObject();
        *(v64 + 16) = xmmword_1000AA7D0;
        *(v64 + 32) = v55;
        *(v64 + 40) = v57;
        *(v64 + 48) = v58;
        *(v64 + 56) = v60;
        *(v64 + 64) = v61;
        *(v64 + 72) = v63;

        sub_1000A2860();
        sub_1000A28D0();
        sub_1000A28E0();
        sub_1000A1EF0();
        v65 = v91;
        v80 = v92;
        v79 = v93;

        v66 = v72;
        sub_100028B94(v49, v72, &qword_1000E6D88);
        v67 = v66 + *(v85 + 36);
        *v67 = v65;
        *(v67 + 24) = v79;
        *(v67 + 8) = v80;
        sub_100028B94(v66, v86, &qword_1000E6D80);
        swift_storeEnumTagMultiPayload();
        sub_10004AC3C();
        sub_10004ACF4();
        v54 = v71;
        sub_1000A22F0();
        sub_10001FE6C(v66, &qword_1000E6D80);
      }

      sub_10001FE6C(v49, &qword_1000E6D88);
      sub_10004ADAC();
      v68 = sub_1000A2820();

      result = v68;
      a1 = v73;
      goto LABEL_17;
    }

    a1 = v73;
  }

  if (qword_1000E4710 != -1)
  {
    swift_once();
  }

  v30 = qword_1000F1C30;
  *&v88 = sub_1000A2740();
  result = sub_1000A2820();
LABEL_17:
  *a1 = result;
  return result;
}

uint64_t sub_10004A318@<X0>(void *a1@<X8>)
{
  sub_1000A1EA0();
  sub_1000A1EA0();
  result = sub_100049754(&v3);
  *a1 = v3;
  return result;
}

double sub_10004A38C()
{
  v1 = sub_1000A2140();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SmallBackgroundView(0) + 36));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1000A3080();
  v8 = sub_1000A2360();
  sub_1000A1DC0();

  sub_1000A2130();
  swift_getAtKeyPath();
  sub_100028064(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_10004A4E8@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000A28A0();
  a1[1] = v3;
  v4 = sub_100017A54(&qword_1000E6D40);
  return sub_100049068(v1, a1 + *(v4 + 44));
}

uint64_t sub_10004A558(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallBackgroundView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10004A5BC(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for Scrim(0) + 20));
  if (v3)
  {
    v4 = v3;
    [v4 ts_luminance];
    v6 = v5;
    sub_100028E34(0, &unk_1000E5F20);
    sub_1000A3150();
    if (v7 >= v6)
    {
      v8 = sub_1000A26C0();
    }

    else
    {
      sub_1000A26B0();
      v8 = sub_1000A2700();
    }
  }

  else
  {
    v8 = sub_1000A26C0();
  }

  *a1 = v8;
}

uint64_t sub_10004A684@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000A2140();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E5410);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_100028B94(v2, &v14 - v9, &qword_1000E5410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000A1F40();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_1000A3080();
    v13 = sub_1000A2360();
    sub_1000A1DC0();

    sub_1000A2130();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_10004A88C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10004A8F4(uint64_t a1)
{
  v2 = type metadata accessor for Scrim(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004A950()
{
  v1 = type metadata accessor for SmallBackgroundView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  sub_100017A54(&qword_1000E5410);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000A1F40();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  sub_100028064(*(v5 + v1[9]), *(v5 + v1[9] + 8));
  v8 = v1[10];
  sub_100017A54(&qword_1000E5408);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1000A2A50();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10004AB84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10004ABCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E6668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004AC3C()
{
  result = qword_1000E6D98;
  if (!qword_1000E6D98)
  {
    sub_100017A9C(&qword_1000E6D80);
    sub_10004ACF4();
    sub_100029050(&qword_1000E6DA8, &qword_1000E6DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6D98);
  }

  return result;
}

unint64_t sub_10004ACF4()
{
  result = qword_1000E6DA0;
  if (!qword_1000E6DA0)
  {
    sub_100017A9C(&qword_1000E6D88);
    sub_10003D458();
    sub_100029050(&qword_1000E66B8, &qword_1000E6640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6DA0);
  }

  return result;
}

unint64_t sub_10004ADAC()
{
  result = qword_1000E6DB8;
  if (!qword_1000E6DB8)
  {
    sub_100017A9C(&qword_1000E6D90);
    sub_10004AC3C();
    sub_10004ACF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6DB8);
  }

  return result;
}

uint64_t sub_10004AE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100017A54(&qword_1000E52F0);
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

uint64_t sub_10004AF34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100017A54(&qword_1000E52F0);
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

void sub_10004AFF8()
{
  sub_100048D90(319, &qword_1000E5370, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_100048D38(319, &qword_1000E5F18, &unk_1000E5F20);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10004B138()
{
  v1 = [*(v0 + 24) userID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1000A2D40();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = [*(v0 + 16) possiblyUnfetchedAppConfiguration];
  if ([v6 respondsToSelector:"widgetTelemetrySamplingRate"])
  {
    [v6 widgetTelemetrySamplingRate];
    v8 = v7;
    swift_unknownObjectRelease();
    v9 = v8;
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = 0.0;
  }

  v10 = sub_10004B4B0(v9, v3, v5);

  return v10 & 1;
}

uint64_t sub_10004B21C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_10004B280(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      sub_1000A2A10();
      sub_10004BA94();
      return sub_1000A29C0();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_10004B400(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_10004B400(v4, v5);
  }

  sub_1000A2A10();
  sub_10004BA94();
  return sub_1000A29C0();
}

uint64_t sub_10004B400(uint64_t a1, uint64_t a2)
{
  result = sub_1000A1590();
  if (!result || (result = sub_1000A15B0(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1000A15A0();
      sub_1000A2A10();
      sub_10004BA94();
      return sub_1000A29C0();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10004B4B0(float a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1000A2A10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000A2A00();
  v35 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000A2D70();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3 || (v34 = v9, sub_1000A2D60(), v16 = sub_1000A2D50(), v18 = v17, (*(v13 + 8))(v15, v12), v18 >> 60 == 15))
  {
    v19 = FCAnalyticsLog;
    sub_1000A3090();
    sub_1000A1DB0();

    return 0;
  }

  v36 = 0;
  sub_10004BA94();
  sub_1000A29E0();
  sub_10003E3BC(v16, v18);
  v33 = v16;
  sub_10004B280(v16, v18);
  v21 = v33;
  sub_100034E28(v33, v18);
  sub_1000A29D0();
  (*(v6 + 8))(v8, v5);
  sub_1000A29F0();
  if (!CCBigNumFromData())
  {
    v30 = FCAnalyticsLog;
    sub_1000A3090();
    sub_1000A1DB0();
    sub_100034E28(v21, v18);

    (*(v35 + 8))(v11, v34);
    return 0;
  }

  CCBigNumFromHexString();
  v22 = a1 * 100.0;
  if (COERCE_INT(fabs(a1 * 100.0)) > 2139095039)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v22 <= -1.0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  if (v22 >= 4295000000.0)
  {
    goto LABEL_17;
  }

  v31 = CCBigNumFromDecimalString();
  CCCreateBigNum();
  v36 = CCBigNumMulI();
  CCCreateBigNum();
  CCCreateBigNum();
  v36 = CCBigNumDiv();
  v23 = CCBigNumCompare();
  v32 = v23 >> 31;
  v24 = FCAnalyticsLog;
  sub_100017A54(&unk_1000E5270);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000AA450;
  v26 = sub_10001A97C();
  v27 = 0x64656C6261736964;
  if (v23 < 0)
  {
    v27 = 0x64656C62616E65;
  }

  v28 = 0xE800000000000000;
  if (v23 < 0)
  {
    v28 = 0xE700000000000000;
  }

  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = v26;
  *(v25 + 32) = v27;
  *(v25 + 40) = v28;
  *(v25 + 96) = &type metadata for Float;
  *(v25 + 104) = &protocol witness table for Float;
  *(v25 + 72) = a1;
  v29 = v24;
  sub_1000A3090();
  sub_1000A1DB0();

  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  CCBigNumFree();
  sub_100034E28(v33, v18);
  (*(v35 + 8))(v11, v34);
  return v32;
}

unint64_t sub_10004BA94()
{
  result = qword_1000E6F08;
  if (!qword_1000E6F08)
  {
    sub_1000A2A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E6F08);
  }

  return result;
}

id WidgetPersonalizationConfigurationManager.__allocating_init(appConfigurationManager:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1000A1C80();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v4 = sub_1000A1C70();
  v5 = &v1[OBJC_IVAR____TtC7NewsTag41WidgetPersonalizationConfigurationManager_configurationManager];
  v5[3] = v2;
  v5[4] = &protocol witness table for NewsAppConfigurationManager;
  *v5 = v4;
  v8.receiver = v1;
  v8.super_class = v0;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectRelease();
  return v6;
}

id WidgetPersonalizationConfigurationManager.init(appConfigurationManager:)()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1000A1C80();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v4 = sub_1000A1C70();
  v5 = &v0[OBJC_IVAR____TtC7NewsTag41WidgetPersonalizationConfigurationManager_configurationManager];
  v5[3] = v2;
  v5[4] = &protocol witness table for NewsAppConfigurationManager;
  *v5 = v4;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10004BC6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100017A54(&qword_1000E6F40);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v36 = &v28 - v4;
  v5 = sub_100017A54(&qword_1000E6F48);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - v6;
  v7 = sub_100017A54(&qword_1000E6F50);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v39 = &v28 - v9;
  v10 = sub_100017A54(&qword_1000E6F58);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_100017A54(&qword_1000E6F60);
  __chkstk_darwin(v14 - 8);
  v38 = &v28 - v15;
  if ([a1 respondsToSelector:"articleEmbeddingsScoringEnabled"])
  {
    [a1 articleEmbeddingsScoringEnabled];
  }

  (*(v11 + 104))(v13, enum case for FeatureState.Feature.articleEmbeddingsScoring<A>(_:), v10);
  if ([a1 respondsToSelector:"newsPersonalizationConfiguration"])
  {
    v16 = [a1 newsPersonalizationConfiguration];
    v17 = [v16 articleEmbeddingsConfiguration];
  }

  else
  {
    v17 = 0;
  }

  v40 = v17;
  sub_10004C5BC();
  sub_1000A1C90();

  (*(v11 + 8))(v13, v10);
  if ([a1 respondsToSelector:"clientSideEngagementBoostEnabled"])
  {
    v30 = [a1 clientSideEngagementBoostEnabled];
  }

  else
  {
    v30 = 0;
  }

  if ([a1 respondsToSelector:"fallbackToReverseChronSorting"])
  {
    v29 = [a1 fallbackToReverseChronSorting];
  }

  else
  {
    v29 = 0;
  }

  v18 = [a1 personalizationTreatment];
  v19 = enum case for FeatureState.disabled<A>(_:);
  (*(v8 + 104))(v39, enum case for FeatureState.disabled<A>(_:), v7);
  if ([a1 respondsToSelector:"publisherDampeningConfig"])
  {
    v20 = [a1 publisherDampeningConfig];
  }

  else
  {
    sub_10006C5E4(&_swiftEmptyArrayStorage);
    v21 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    isa = sub_1000A2C50().super.isa;

    [v21 initWithConfig:isa];
  }

  if ([a1 respondsToSelector:"shadowPublisherDampeningConfig"])
  {
    [a1 shadowPublisherDampeningConfig];
  }

  else
  {
    sub_10006C5E4(&_swiftEmptyArrayStorage);
    v23 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    v24 = sub_1000A2C50().super.isa;

    [v23 initWithConfig:v24];
  }

  if ([a1 respondsToSelector:"aggregatesInWidgetsXavierEnabled"])
  {
    [a1 aggregatesInWidgetsXavierEnabled];
  }

  if ([a1 respondsToSelector:"tabiScoringInWidgetsEnabled"])
  {
    [a1 tabiScoringInWidgetsEnabled];
  }

  (*(v31 + 104))(v35, v19, v32);
  (*(v33 + 104))(v36, v19, v34);
  v25 = objc_allocWithZone(FCStatelessPersonalizationPublisherFavorability);
  sub_100017A54(&qword_1000E6F70);
  v26 = sub_1000A2F00().super.isa;
  [v25 initWithArray:v26];

  return sub_1000A1CA0();
}

unint64_t sub_10004C5BC()
{
  result = qword_1000E6F68;
  if (!qword_1000E6F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E6F68);
  }

  return result;
}

uint64_t sub_10004C61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TodayContent();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for LayoutContext();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_10004C770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Item(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for TodayContent();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for LayoutContext();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_10004C8DC()
{
  result = type metadata accessor for Item(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TodayContent();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for LayoutContext();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10004C994()
{
  v1 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v1);
  v3 = &v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Item(0);
  __chkstk_darwin(v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-1] - v8;
  v10 = sub_1000A28C0();
  v12 = v11;
  sub_10004CC3C(v17);
  v13 = v17[0];
  v17[0] = v10;
  v17[1] = v12;
  v17[2] = v13;
  sub_10004CFF8(v0, v6, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10004CF78(v6, type metadata accessor for Item);
    v14 = sub_1000A1700();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  else
  {
    sub_10004CF14(v6, v3);
    sub_100028B94(&v3[*(v1 + 24)], v9, &unk_1000E5DD0);
    sub_10004CF78(v3, type metadata accessor for Item.Headline);
  }

  sub_100017A54(&qword_1000E7010);
  sub_100029050(&qword_1000E7018, &qword_1000E7010);
  sub_1000A2570();
  sub_10001FE6C(v9, &unk_1000E5DD0);
}

uint64_t sub_10004CC3C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RectangularHeadlineView(0);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Item(0);
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10004CFF8(v2, v12, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = sub_1000A2180();
    *&v28 = v13;
    *(&v28 + 1) = v14;
    sub_10001B33C();
    v16 = sub_1000A2550();
    v28 = v15;
    LOBYTE(v29) = 1;
    *(&v29 + 1) = v16;
    *&v30 = v17;
    BYTE8(v30) = v18 & 1;
    *&v31 = v19;
    sub_100017A54(&qword_1000E7020);
    sub_100029050(&qword_1000E7028, &qword_1000E7020);
    result = sub_1000A2820();
    v21 = result;
  }

  else
  {
    sub_10004CF14(v12, v9);
    sub_10004CFF8(v9, v6, type metadata accessor for Item.Headline);
    v22 = type metadata accessor for RectangularContentView(0);
    sub_100045B80(&v28);
    sub_10004CFF8(v2 + *(v22 + 20), &v6[*(v4 + 24)], type metadata accessor for TodayContent);
    v23 = &v6[*(v4 + 20)];
    v24 = v33;
    *(v23 + 4) = v32;
    *(v23 + 5) = v24;
    *(v23 + 12) = v34;
    v25 = v29;
    *v23 = v28;
    *(v23 + 1) = v25;
    v26 = v31;
    *(v23 + 2) = v30;
    *(v23 + 3) = v26;
    sub_10004D060();
    v21 = sub_1000A2820();
    result = sub_10004CF78(v9, type metadata accessor for Item.Headline);
  }

  *a1 = v21;
  return result;
}

uint64_t sub_10004CF14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Item.Headline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004CF78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10004CFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10004D060()
{
  result = qword_1000E7030;
  if (!qword_1000E7030)
  {
    type metadata accessor for RectangularHeadlineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7030);
  }

  return result;
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Item.Headline(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for TodayContent();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10004D204(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Item.Headline(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for TodayContent();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_10004D328()
{
  result = type metadata accessor for Item.Headline(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TodayContent();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10004D3B4()
{
  sub_100017A9C(&qword_1000E7010);
  sub_100029050(&qword_1000E7018, &qword_1000E7010);
  return swift_getOpaqueTypeConformance2();
}

id sub_10004D468@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1000A21D0();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000A2320();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E70E8);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v71 = sub_100017A54(&qword_1000E70F0);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v12 = &v65 - v11;
  v13 = sub_100017A54(&qword_1000E70F8);
  v14 = __chkstk_darwin(v13 - 8);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v65 - v16;
  *v10 = sub_1000A2160();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = sub_100017A54(&qword_1000E7100);
  sub_10004DC60(a1, &v10[*(v17 + 44)]);
  sub_1000A2300();
  v18 = sub_100029050(&qword_1000E7108, &qword_1000E70E8);
  v69 = v8;
  v68 = v18;
  sub_1000A2620();
  (*(v5 + 8))(v7, v4);
  v19 = a1;
  sub_10001FE6C(v10, &qword_1000E70E8);
  sub_1000A21C0();
  v93._object = 0x80000001000B42A0;
  v93._countAndFlagsBits = 0xD000000000000011;
  sub_1000A21B0(v93);
  v20 = *a1;
  v21 = [*a1 sourceName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1000A2D40();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v94._countAndFlagsBits = v23;
  v94._object = v25;
  sub_1000A21A0(v94);

  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  sub_1000A21B0(v95);
  sub_1000A21F0();
  if (qword_1000E46C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = static NSBundle.newsToday2;
  v27 = sub_1000A2540();
  v29 = v28;
  v31 = v30;
  v78 = v69;
  v79 = v68;
  swift_getOpaqueTypeConformance2();
  v32 = v71;
  sub_1000A25D0();
  sub_100028640(v27, v29, v31 & 1);

  (*(v70 + 8))(v12, v32);
  result = [v20 titleCompact];
  if (result || (result = [v20 title]) != 0)
  {
    v34 = result;
    v35 = sub_1000A2D40();
    v37 = v36;

    v78 = v35;
    v79 = v37;
    sub_10001B33C();
    v38 = sub_1000A2550();
    v40 = v39;
    LOBYTE(v37) = v41;
    v42 = *(v19 + *(type metadata accessor for RectangularHeadlineView(0) + 20) + 72);
    sub_1000A2430();
    v43 = sub_1000A24C0();
    v45 = v44;
    v47 = v46;

    sub_100028640(v38, v40, v37 & 1);

    sub_1000A26E0();
    v48 = sub_1000A2480();
    v50 = v49;
    v52 = v51;
    v71 = v53;

    sub_100028640(v43, v45, v47 & 1);

    KeyPath = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v56 = v52 & 1;
    v92 = v52 & 1;
    v90 = 0;
    v57 = v72;
    v58 = v66;
    sub_100028B94(v72, v66, &qword_1000E70F8);
    v59 = v67;
    sub_100028B94(v58, v67, &qword_1000E70F8);
    v60 = v59 + *(sub_100017A54(&qword_1000E7110) + 48);
    *&v73 = v48;
    v61 = v50;
    *(&v73 + 1) = v50;
    LOBYTE(v74) = v56;
    *(&v74 + 1) = *v91;
    DWORD1(v74) = *&v91[3];
    v62 = v71;
    *(&v74 + 1) = v71;
    *&v75 = KeyPath;
    *(&v75 + 1) = 3;
    LOBYTE(v76) = 0;
    *(&v76 + 1) = *v89;
    DWORD1(v76) = *&v89[3];
    *(&v76 + 1) = v55;
    v77 = 0x3FE8000000000000;
    *(v60 + 64) = 0x3FE8000000000000;
    v63 = v74;
    *v60 = v73;
    *(v60 + 16) = v63;
    v64 = v76;
    *(v60 + 32) = v75;
    *(v60 + 48) = v64;
    sub_100028B94(&v73, &v78, &qword_1000E7118);
    sub_10001FE6C(v57, &qword_1000E70F8);
    v78 = v48;
    v79 = v61;
    v80 = v56;
    *v81 = *v91;
    *&v81[3] = *&v91[3];
    v82 = v62;
    v83 = KeyPath;
    v84 = 3;
    v85 = 0;
    *v86 = *v89;
    *&v86[3] = *&v89[3];
    v87 = v55;
    v88 = 0x3FE8000000000000;
    sub_10001FE6C(&v78, &qword_1000E7118);
    return sub_10001FE6C(v58, &qword_1000E70F8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10004DC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v133 = sub_100017A54(&qword_1000E7120);
  __chkstk_darwin(v133);
  v132 = &v112 - v3;
  v137 = sub_100017A54(&qword_1000E7128);
  v136 = *(v137 - 8);
  v4 = __chkstk_darwin(v137);
  v135 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v134 = &v112 - v6;
  v7 = sub_100017A54(&qword_1000E7130);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v112 - v9;
  v11 = sub_100017A54(&qword_1000E5620);
  v12 = __chkstk_darwin(v11 - 8);
  v128 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v112 - v14;
  v15 = sub_100017A54(&qword_1000E5628);
  __chkstk_darwin(v15);
  v17 = (&v112 - v16);
  v18 = sub_100017A54(&qword_1000E5630);
  v126 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  v21 = sub_100017A54(&qword_1000E5638);
  v22 = __chkstk_darwin(v21 - 8);
  v127 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v112 - v24;
  v25 = sub_100017A54(&qword_1000E7138);
  v26 = __chkstk_darwin(v25 - 8);
  v131 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v112 - v28;
  v30 = a1 + *(type metadata accessor for RectangularHeadlineView(0) + 24);
  v31 = *(v30 + *(type metadata accessor for TodayContent() + 24));
  v32 = *(v31 + 16);
  v139 = v29;
  if (v32 && (v33 = *(type metadata accessor for Section() - 8), *(v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + 24) == 1))
  {
    v121 = sub_1000A2790();
    v120 = sub_1000A26A0();
    KeyPath = swift_getKeyPath();
    v124 = v8;
    v35 = KeyPath;
    v36 = sub_1000A2410();
    v37 = swift_getKeyPath();
    v122 = v10;
    v38 = v37;
    v39 = *(v15 + 36);
    v123 = v7;
    v40 = (v17 + v39);
    v41 = *(sub_100017A54(&qword_1000E5640) + 28);
    v125 = a1;
    v42 = enum case for Image.Scale.small(_:);
    v43 = sub_1000A27B0();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = swift_getKeyPath();
    *v17 = v121;
    v17[1] = v35;
    v17[2] = v120;
    v17[3] = v38;
    v17[4] = v36;
    v44 = sub_1000288E8();
    sub_1000A2560();
    sub_10001FE6C(v17, &qword_1000E5628);
    v153 = v15;
    v154 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v129;
    sub_1000A25F0();
    (*(v126 + 8))(v20, v18);
    sub_1000A28C0();
    sub_1000A1E90();
    v126 = v147;
    v121 = v149;
    v120 = v151;
    v119 = v152;
    v142 = 1;
    v141 = v148;
    v140 = v150;
    sub_1000A2410();
    v46 = sub_1000A24C0();
    v48 = v47;
    LOBYTE(v44) = v49;

    sub_1000A26E0();
    v50 = sub_1000A2480();
    v52 = v51;
    LOBYTE(v38) = v53;
    v55 = v54;

    sub_100028640(v46, v48, v44 & 1);

    v153 = v50;
    v154 = v52;
    LOBYTE(v155) = v38 & 1;
    v156 = v55;
    v157 = 0x3FE6666666666666;
    sub_100017A54(&qword_1000E5688);
    sub_100028B10();
    v56 = v130;
    sub_1000A25F0();
    sub_100028640(v50, v52, v38 & 1);

    sub_1000A28C0();
    sub_1000A1E90();
    v118 = v153;
    v117 = v155;
    v116 = v157;
    v115 = v158;
    LOBYTE(v145) = 1;
    v144 = v154;
    v143 = v156;
    v57 = v127;
    sub_100028B94(v45, v127, &qword_1000E5638);
    LOBYTE(v45) = v142;
    LOBYTE(v36) = v141;
    LOBYTE(v50) = v140;
    v58 = v128;
    sub_100028B94(v56, v128, &qword_1000E5620);
    LOBYTE(v52) = v145;
    v113 = v144;
    v114 = v143;
    v59 = v122;
    sub_100028B94(v57, v122, &qword_1000E5638);
    v60 = sub_100017A54(&qword_1000E7180);
    v61 = v59 + v60[12];
    *v61 = 0;
    *(v61 + 8) = v45;
    *(v61 + 16) = v126;
    *(v61 + 24) = v36;
    *(v61 + 32) = v121;
    *(v61 + 40) = v50;
    v62 = v119;
    *(v61 + 48) = v120;
    *(v61 + 56) = v62;
    sub_100028B94(v58, v59 + v60[16], &qword_1000E5620);
    v63 = v59 + v60[20];
    *v63 = 0;
    *(v63 + 8) = v52;
    *(v63 + 16) = v118;
    *(v63 + 24) = v113;
    *(v63 + 32) = v117;
    *(v63 + 40) = v114;
    v64 = v115;
    *(v63 + 48) = v116;
    *(v63 + 56) = v64;
    sub_10001FE6C(v130, &qword_1000E5620);
    sub_10001FE6C(v129, &qword_1000E5638);
    sub_10001FE6C(v58, &qword_1000E5620);
    sub_10001FE6C(v57, &qword_1000E5638);
    v65 = v139;
    sub_10004F150(v59, v139);
    (*(v124 + 56))(v65, 0, 1, v123);
  }

  else
  {
    (*(v8 + 56))(v29, 1, 1, v7);
  }

  v145 = sub_100090984();
  v146 = v66;
  sub_10001B33C();
  v67 = sub_1000A2550();
  v69 = v68;
  v71 = v70;
  sub_1000A2410();
  v72 = sub_1000A24C0();
  v74 = v73;
  v76 = v75;

  sub_100028640(v67, v69, v71 & 1);

  sub_1000A23B0();
  v77 = sub_1000A2460();
  v79 = v78;
  LOBYTE(v67) = v80;
  sub_100028640(v72, v74, v76 & 1);

  sub_1000A26A0();
  v81 = sub_1000A2480();
  v83 = v82;
  v85 = v84;
  v130 = v86;

  sub_100028640(v77, v79, v67 & 1);

  v87 = sub_100017A54(&qword_1000E6610);
  v88 = v132;
  v89 = &v132[*(v87 + 36)];
  v90 = *(sub_100017A54(&qword_1000E6618) + 28);
  v91 = enum case for Text.Case.uppercase(_:);
  v92 = sub_1000A24B0();
  v93 = *(v92 - 8);
  (*(v93 + 104))(v89 + v90, v91, v92);
  (*(v93 + 56))(v89 + v90, 0, 1, v92);
  *v89 = swift_getKeyPath();
  *v88 = v81;
  *(v88 + 8) = v83;
  *(v88 + 16) = v85 & 1;
  *(v88 + 24) = v130;
  v94 = swift_getKeyPath();
  v95 = v88 + *(sub_100017A54(&qword_1000E7140) + 36);
  *v95 = v94;
  *(v95 + 8) = 1;
  *(v95 + 16) = 0;
  v96 = (v88 + *(v133 + 36));
  v97 = *(sub_100017A54(&qword_1000E7148) + 28);
  v98 = enum case for Text.TruncationMode.tail(_:);
  v99 = sub_1000A2470();
  (*(*(v99 - 8) + 104))(v96 + v97, v98, v99);
  *v96 = swift_getKeyPath();
  sub_10004EF10();
  v100 = v134;
  sub_1000A2560();
  sub_10001FE6C(v88, &qword_1000E7120);
  v101 = v139;
  v102 = v131;
  sub_100028B94(v139, v131, &qword_1000E7138);
  v103 = v136;
  v104 = *(v136 + 16);
  v105 = v135;
  v106 = v137;
  v104(v135, v100, v137);
  v107 = v138;
  sub_100028B94(v102, v138, &qword_1000E7138);
  v108 = sub_100017A54(&qword_1000E7178);
  v104((v107 + *(v108 + 48)), v105, v106);
  v109 = v107 + *(v108 + 64);
  *v109 = 0;
  *(v109 + 8) = 1;
  v110 = *(v103 + 8);
  v110(v100, v106);
  sub_10001FE6C(v101, &qword_1000E7138);
  v110(v105, v106);
  return sub_10001FE6C(v102, &qword_1000E7138);
}

uint64_t sub_10004EABC()
{
  v1 = sub_1000A2320();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100017A54(&qword_1000E70D0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_1000A2280();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100017A54(&qword_1000E70D8);
  sub_10004D468(v0, &v7[*(v8 + 44)]);
  sub_1000A2310();
  sub_100029050(&qword_1000E70E0, &qword_1000E70D0);
  sub_1000A2620();
  (*(v2 + 8))(v4, v1);
  return sub_10001FE6C(v7, &qword_1000E70D0);
}

uint64_t sub_10004ECA8(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E7188);
  __chkstk_darwin(v2 - 8);
  sub_100028B94(a1, &v5 - v3, &qword_1000E7188);
  return sub_1000A20C0();
}

uint64_t sub_10004ED50@<X0>(void *a1@<X8>)
{
  result = sub_1000A2030();
  *a1 = v3;
  return result;
}

uint64_t sub_10004ED7C@<X0>(void *a1@<X8>)
{
  result = sub_1000A2030();
  *a1 = v3;
  return result;
}

uint64_t sub_10004EE44(uint64_t a1)
{
  v2 = sub_1000A2470();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000A1FF0();
}

unint64_t sub_10004EF10()
{
  result = qword_1000E7150;
  if (!qword_1000E7150)
  {
    sub_100017A9C(&qword_1000E7120);
    sub_10004EFC8();
    sub_100029050(&qword_1000E7170, &qword_1000E7148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7150);
  }

  return result;
}

unint64_t sub_10004EFC8()
{
  result = qword_1000E7158;
  if (!qword_1000E7158)
  {
    sub_100017A9C(&qword_1000E7140);
    sub_10004F080();
    sub_100029050(&qword_1000E5718, &qword_1000E5720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7158);
  }

  return result;
}

unint64_t sub_10004F080()
{
  result = qword_1000E7160;
  if (!qword_1000E7160)
  {
    sub_100017A9C(&qword_1000E6610);
    sub_100029050(&qword_1000E7168, &qword_1000E6618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7160);
  }

  return result;
}

uint64_t sub_10004F150(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E7130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004F1C0()
{
  sub_100017A9C(&qword_1000E70D0);
  sub_100029050(&qword_1000E70E0, &qword_1000E70D0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t Logger.todayWidgetBanner.unsafeMutableAddressor()
{
  if (qword_1000E46F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1000A1DF0();

  return sub_10002FDC4(v0, static Logger.todayWidgetBanner);
}

uint64_t sub_10004F2BC()
{
  v0 = sub_1000A1DF0();
  sub_10004F3E4(v0, static Logger.todayWidgetBanner);
  sub_10002FDC4(v0, static Logger.todayWidgetBanner);
  return sub_1000A1DE0();
}

uint64_t static Logger.todayWidgetBanner.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000E46F0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000A1DF0();
  v3 = sub_10002FDC4(v2, static Logger.todayWidgetBanner);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *sub_10004F3E4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

UIColor __swiftcall UIColor.init(hex:)(Swift::String hex)
{
  v1 = sub_10004F9A0(hex._countAndFlagsBits, hex._object);
  v3 = v2;

  v5 = HIBYTE(v3) & 0xF;
  v6 = v1 & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v7 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_90;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    LODWORD(v1) = sub_10004FE70(v1, v3, 16);
    v27 = v31;
    goto LABEL_89;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    aBlock = v1;
    v33 = v3 & 0xFFFFFFFFFFFFFFLL;
    if (v1 == 43)
    {
      if (v5)
      {
        if (--v5)
        {
          v1 = 0;
          v19 = &aBlock + 1;
          while (1)
          {
            v20 = *v19;
            v21 = v20 - 48;
            if ((v20 - 48) >= 0xA)
            {
              if ((v20 - 65) < 6)
              {
                v21 = v20 - 55;
              }

              else
              {
                if ((v20 - 97) > 5)
                {
                  goto LABEL_87;
                }

                v21 = v20 - 87;
              }
            }

            if ((v1 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v12 = __OFADD__(16 * v1, v21);
            v1 = 16 * v1 + v21;
            if (v12)
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

LABEL_98:
      __break(1u);
      return result;
    }

    if (v1 != 45)
    {
      if (v5)
      {
        v1 = 0;
        p_aBlock = &aBlock;
        while (1)
        {
          v25 = *p_aBlock;
          v26 = v25 - 48;
          if ((v25 - 48) >= 0xA)
          {
            if ((v25 - 65) < 6)
            {
              v26 = v25 - 55;
            }

            else
            {
              if ((v25 - 97) > 5)
              {
                goto LABEL_87;
              }

              v26 = v25 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFADD__(16 * v1, v26);
          v1 = 16 * v1 + v26;
          if (v12)
          {
            break;
          }

          p_aBlock = (p_aBlock + 1);
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    if (v5)
    {
      if (--v5)
      {
        v1 = 0;
        v13 = &aBlock + 1;
        while (1)
        {
          v14 = *v13;
          v15 = v14 - 48;
          if ((v14 - 48) >= 0xA)
          {
            if ((v14 - 65) < 6)
            {
              v15 = v14 - 55;
            }

            else
            {
              if ((v14 - 97) > 5)
              {
                goto LABEL_87;
              }

              v15 = v14 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v12 = __OFSUB__(16 * v1, v15);
          v1 = 16 * v1 - v15;
          if (v12)
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_87;
    }

    goto LABEL_96;
  }

  if ((v1 & 0x1000000000000000) != 0)
  {
    result.super.isa = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result.super.isa = sub_1000A3310();
  }

  v8 = *result.super.isa;
  if (v8 == 43)
  {
    if (v6 < 1)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v5 = v6 - 1;
    if (v6 != 1)
    {
      if (result.super.isa)
      {
        v1 = 0;
        v16 = result.super.isa + 1;
        while (1)
        {
          v17 = *v16;
          v18 = v17 - 48;
          if ((v17 - 48) >= 0xA)
          {
            if ((v17 - 65) < 6)
            {
              v18 = v17 - 55;
            }

            else
            {
              if ((v17 - 97) > 5)
              {
                goto LABEL_87;
              }

              v18 = v17 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v18);
          v1 = 16 * v1 + v18;
          if (v12)
          {
            goto LABEL_87;
          }

          ++v16;
          if (!--v5)
          {
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

LABEL_87:
    LODWORD(v1) = 0;
    LOBYTE(v5) = 1;
    goto LABEL_88;
  }

  if (v8 != 45)
  {
    if (v6)
    {
      if (result.super.isa)
      {
        v1 = 0;
        while (1)
        {
          v22 = *result.super.isa;
          v23 = v22 - 48;
          if ((v22 - 48) >= 0xA)
          {
            if ((v22 - 65) < 6)
            {
              v23 = v22 - 55;
            }

            else
            {
              if ((v22 - 97) > 5)
              {
                goto LABEL_87;
              }

              v23 = v22 - 87;
            }
          }

          if ((v1 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_87;
          }

          v12 = __OFADD__(16 * v1, v23);
          v1 = 16 * v1 + v23;
          if (v12)
          {
            goto LABEL_87;
          }

          ++result.super.isa;
          if (!--v6)
          {
            LOBYTE(v5) = 0;
            goto LABEL_88;
          }
        }
      }

      goto LABEL_75;
    }

    goto LABEL_87;
  }

  if (v6 < 1)
  {
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v5 = v6 - 1;
  if (v6 == 1)
  {
    goto LABEL_87;
  }

  if (result.super.isa)
  {
    v1 = 0;
    v9 = result.super.isa + 1;
    while (1)
    {
      v10 = *v9;
      v11 = v10 - 48;
      if ((v10 - 48) >= 0xA)
      {
        if ((v10 - 65) < 6)
        {
          v11 = v10 - 55;
        }

        else
        {
          if ((v10 - 97) > 5)
          {
            goto LABEL_87;
          }

          v11 = v10 - 87;
        }
      }

      if ((v1 - 0x800000000000000) >> 60 != 15)
      {
        goto LABEL_87;
      }

      v12 = __OFSUB__(16 * v1, v11);
      v1 = 16 * v1 - v11;
      if (v12)
      {
        goto LABEL_87;
      }

      ++v9;
      if (!--v5)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_75:
  LODWORD(v1) = 0;
  LOBYTE(v5) = 0;
LABEL_88:
  v38 = v5;
  v27 = v5;
LABEL_89:

  if (v27)
  {
LABEL_90:
    v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v36 = sub_10004FDC8;
    v37 = 0;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10004FE08;
    v35 = &unk_1000D8FA0;
    v29 = _Block_copy(&aBlock);
    v30 = [v28 initWithDynamicProvider:v29];
    _Block_release(v29);
    return v30;
  }

  return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:BYTE3(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

UIColor __swiftcall UIColor.init(hex:)(Swift::Int hex)
{
  v1 = hex;
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v2 initWithRed:HIBYTE(v1) / 255.0 green:BYTE2(v1) / 255.0 blue:BYTE1(v1) / 255.0 alpha:v1 / 255.0];
}

uint64_t sub_10004F9A0(uint64_t a1, unint64_t a2)
{
  v7._countAndFlagsBits = 35;
  v7._object = 0xE100000000000000;
  v4 = sub_1000A2E70(v7);

  if (v4)
  {
    sub_100050888(1uLL, a1, a2);

    a1 = sub_1000A2DB0();
  }

  if (sub_1000A2DE0() != 8)
  {
    if (sub_1000A2DE0() == 6)
    {
      v6 = a1;
    }

    else
    {
      if (sub_1000A2DE0() == 4)
      {
        sub_1000A2E00();
        sub_1000A2E90();
        sub_1000A2E00();
        sub_1000A2E90();
        sub_1000A2E00();
        sub_1000A2E90();
        sub_1000A2E00();
        sub_1000A2E90();

        v6 = 0;
        sub_1000A32B0(16);
        sub_1000A2C90();
        sub_1000A2C90();

        sub_1000A2C90();
        sub_1000A2C90();

        sub_1000A2C90();
        sub_1000A2C90();

        sub_1000A2C90();
        sub_1000A2C90();

        return v6;
      }

      if (sub_1000A2DE0() != 3)
      {
        return a1;
      }

      sub_1000A2E00();
      sub_1000A2E90();
      sub_1000A2E00();
      sub_1000A2E90();
      sub_1000A2E00();
      sub_1000A2E90();

      v6 = 0;
      sub_1000A2C90();
      sub_1000A2C90();

      sub_1000A2C90();
      sub_1000A2C90();

      sub_1000A2C90();
      sub_1000A2C90();
    }

    v8._countAndFlagsBits = 17990;
    v8._object = 0xE200000000000000;
    sub_1000A2E10(v8);
    return v6;
  }

  return a1;
}

id sub_10004FDC8()
{
  v0 = [objc_opt_self() clearColor];

  return v0;
}

id sub_10004FE08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

unsigned __int8 *sub_10004FE70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1000A2EA0();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100050414();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1000A3310();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
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

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000503FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100050414()
{
  v0 = sub_1000A2EB0();
  v4 = sub_100050494(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_100050494(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1000A31B0();
    if (!v9 || (v10 = v9, v11 = sub_10008B9F0(v9, 0), v12 = sub_1000505EC(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1000A2DC0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1000A2DC0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1000A3310();
LABEL_4:

  return sub_1000A2DC0();
}

unint64_t sub_1000505EC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_10005080C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1000A2E50();
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
          result = sub_1000A3310();
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

    result = sub_10005080C(v12, a6, a7);
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

    result = sub_1000A2E30();
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

uint64_t sub_10005080C(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1000A2E60();
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
    v5 = sub_1000A2E40();
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

unint64_t sub_100050888(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1000A2DF0();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1000A2EB0();
}

void *NTTodayResults.sectionsArray.getter()
{
  v1 = [v0 sections];
  v2 = [v1 array];

  v3 = sub_1000A2F10();
  v4 = sub_1000509C0(v3);

  return v4;
}

void *sub_1000509C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = &_swiftEmptyArrayStorage;
    sub_1000A3340();
    v4 = a1 + 32;
    do
    {
      sub_10001B390(v4, &v5);
      sub_100051640();
      swift_dynamicCast();
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100050A98@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000A1700();
  v23 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = [a1 actionURL];
  if (v12)
  {
    v13 = v12;
    sub_1000A16C0();

    v14 = *(v23 + 32);
    v14(v11, v9, v6);
    if (qword_1000E4718 != -1)
    {
      swift_once();
    }

    sub_10002FDC4(v6, qword_1000F1C38);
    sub_100051578(&qword_1000E7B60, &type metadata accessor for URL);
    if (sub_1000A2CE0())
    {
      v14(a3, v11, v6);
      return (*(v23 + 56))(a3, 0, 1, v6);
    }

    else
    {
      v17 = objc_opt_self();
      sub_1000A1670(v18);
      v20 = v19;
      v21 = [v17 engagementDescriptorWithTargetURL:v19];

      sub_100018688(a2, a2[3]);
      sub_10007BB48(v21, a3);
      swift_unknownObjectRelease();
      return (*(v23 + 8))(v11, v6);
    }
  }

  else
  {
    v16 = *(v23 + 56);

    return v16(a3, 1, 1, v6);
  }
}

id sub_100050D64(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000A1700();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  if ([a1 imageMethod] != 2)
  {
    return 0;
  }

  result = [a1 imageURL];
  if (result)
  {
    v15 = result;
    sub_1000A16C0();

    (*(v8 + 32))(v13, v11, v7);
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v16 = sub_1000758B8(v6, a2);
    sub_10005151C(v6);
    (*(v8 + 8))(v13, v7);
    return v16;
  }

  return result;
}

void *NTTodayResults.allItems.getter()
{
  v1 = v0;
  v2 = sub_1000A1610();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = &_swiftEmptyArrayStorage;
  v6 = [v1 sections];
  v7 = [v6 array];

  v8 = sub_1000A2F10();
  v9 = sub_1000509C0(v8);

  v10 = v9;
  if (v9 >> 62)
  {
LABEL_38:
    v21 = v10;
    v11 = sub_1000A33D0();
    v10 = v21;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_39:

    return &_swiftEmptyArrayStorage;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_39;
  }

LABEL_3:
  v12 = 0;
  v26 = v10;
  v23 = v10 + 32;
  v24 = v10 & 0xFFFFFFFFFFFFFF8;
  v28 = (v3 + 1);
  v29 = v10 & 0xC000000000000001;
  v25 = &_swiftEmptyArrayStorage;
  v27 = v11;
  while (1)
  {
    if (v29)
    {
      v10 = sub_1000A32D0();
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v12 >= *(v24 + 16))
      {
        goto LABEL_37;
      }

      v10 = *(v23 + 8 * v12);
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    v30 = v10;
    v31 = v14;
    v15 = [v10 items];
    v16 = [v15 count];
    v36 = &_swiftEmptyArrayStorage;
    sub_1000A3340();
    v3 = v15;
    v10 = sub_1000A3050();
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (v16)
    {
      break;
    }

LABEL_16:
    sub_100051578(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
    while (1)
    {
      v3 = v5;
      sub_1000A31C0();
      if (!v33)
      {
        break;
      }

      sub_10005150C(&v32, &v34);
      sub_10005150C(&v34, &v32);
      sub_100017A54(&unk_1000E6020);
      swift_dynamicCast();
      sub_1000A3320();
      sub_1000A3350();
      sub_1000A3360();
      sub_1000A3330();
    }

    (*v28)(v5, v2);
    v10 = sub_10002E4C4(&v32);
    v18 = v36;
    if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
    {
      v10 = sub_1000A33D0();
      v19 = v10;
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v19 = *(v36 + 16);
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    if (v19 < 1)
    {
      goto LABEL_36;
    }

    for (i = 0; i != v19; ++i)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_1000A32D0();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      v3 = &v37;
      sub_1000A2EF0();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000A2F50();
      }

      sub_1000A2F80();
      swift_unknownObjectRelease();
    }

    v25 = v37;
LABEL_4:

    v12 = v31;
    if (v31 == v27)
    {

      return v25;
    }
  }

  sub_100051578(&qword_1000E7190, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000A31C0();
    if (!v35)
    {
      break;
    }

    sub_10001B390(&v34, &v32);
    sub_100017A54(&unk_1000E6020);
    swift_dynamicCast();
    sub_100018720(&v34);
    sub_1000A3320();
    sub_1000A3350();
    sub_1000A3360();
    sub_1000A3330();
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100051484(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000A32D0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_100051504;
  }

  __break(1u);
  return result;
}

_OWORD *sub_10005150C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005151C(uint64_t a1)
{
  v2 = type metadata accessor for ImageStore.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100051578(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_1000515C0(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1000A32D0();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_10005168C;
  }

  __break(1u);
  return result;
}

unint64_t sub_100051640()
{
  result = qword_1000E5DF0;
  if (!qword_1000E5DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E5DF0);
  }

  return result;
}

uint64_t sub_1000516A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Section();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TodayContent();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6] + 32);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_100017A54(&qword_1000E68A8);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_10005183C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for TodayContent();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 32) = (a2 - 1);
  }

  else
  {
    v15 = sub_100017A54(&qword_1000E68A8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for SectionView()
{
  result = qword_1000E71F0;
  if (!qword_1000E71F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100051A0C()
{
  type metadata accessor for Section();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TodayContent();
    if (v1 <= 0x3F)
    {
      sub_100048DF4();
      if (v2 <= 0x3F)
      {
        sub_1000409AC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_100051AC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100051AFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_100051B44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100051BD4()
{
  v1 = sub_1000A2140();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SectionView() + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1000A3080();
  v8 = sub_1000A2360();
  sub_1000A1DC0();

  sub_1000A2130();
  swift_getAtKeyPath();
  sub_100028064(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_100051D30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100017A54(&qword_1000E7240);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  if (*(a1 + *(type metadata accessor for SectionView() + 24)) == 1)
  {
    v10 = [objc_opt_self() separatorColor];
    v11 = sub_1000A2740();
    sub_100051BD4();
    sub_1000A28C0();
    sub_1000A1E90();
    v16[1] = v11;
    v16[2] = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_100017A54(&qword_1000E7258);
    sub_100054234(&qword_1000E7260, &qword_1000E7258);
  }

  v12 = sub_1000A2820();
  *v9 = sub_1000A2280();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_100017A54(&qword_1000E7248);
  sub_100051F90(a1, &v9[*(v13 + 44)]);
  sub_100028B94(v9, v7, &qword_1000E7240);
  *a2 = v12;
  v14 = sub_100017A54(&qword_1000E7250);
  sub_100028B94(v7, a2 + *(v14 + 48), &qword_1000E7240);

  sub_10001FE6C(v9, &qword_1000E7240);
  sub_10001FE6C(v7, &qword_1000E7240);
}

uint64_t sub_100051F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for SectionView();
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v45[1] = *(v46 + 8);
  __chkstk_darwin(v3);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100017A54(&qword_1000E7268);
  v51 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v45 - v8;
  v10 = sub_1000A2240();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SectionHeaderView();
  __chkstk_darwin(v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100017A54(&qword_1000E7270);
  v18 = __chkstk_darwin(v17 - 8);
  v48 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v45 - v20;
  sub_100054474(a1, v16, type metadata accessor for Section);
  v22 = a1 + *(v4 + 32);
  v23 = *(v22 + 32);
  v24 = &v16[*(v14 + 20)];
  *v24 = *(v22 + 16);
  *(v24 + 2) = v23;
  v25 = v23;
  sub_1000A2230();
  sub_100054628(&qword_1000E7278, type metadata accessor for SectionHeaderView);
  v47 = v21;
  sub_1000A2630();
  (*(v11 + 8))(v13, v10);
  v26 = v9;
  sub_100054670(v16, type metadata accessor for SectionHeaderView);
  *&v55 = *(a1 + 16);
  swift_getKeyPath();
  v27 = v45[0];
  sub_100054474(a1, v45[0], type metadata accessor for SectionView);
  v28 = (v46[80] + 16) & ~v46[80];
  v29 = swift_allocObject();
  sub_1000545C0(v27, v29 + v28, type metadata accessor for SectionView);

  sub_100017A54(&qword_1000E5FA8);
  sub_100029050(&qword_1000E7280, &qword_1000E5FA8);
  sub_1000A2830();
  sub_1000A28C0();
  sub_1000A1F60();
  *&v53[55] = v58;
  *&v53[71] = v59;
  *&v53[87] = v60;
  *&v53[103] = v61;
  *&v53[7] = v55;
  *&v53[23] = v56;
  v54 = 1;
  *&v53[39] = v57;
  v30 = v47;
  v31 = v48;
  sub_100028B94(v47, v48, &qword_1000E7270);
  v32 = v51;
  v33 = *(v51 + 16);
  v34 = v49;
  v35 = v26;
  v46 = v26;
  v36 = v52;
  v33(v49, v35, v52);
  v37 = v50;
  sub_100028B94(v31, v50, &qword_1000E7270);
  v38 = sub_100017A54(&qword_1000E7288);
  v33((v37 + *(v38 + 48)), v34, v36);
  v39 = v37 + *(v38 + 64);
  v40 = *&v53[80];
  *(v39 + 73) = *&v53[64];
  *(v39 + 89) = v40;
  *(v39 + 105) = *&v53[96];
  v41 = *&v53[16];
  *(v39 + 9) = *v53;
  *(v39 + 25) = v41;
  v42 = *&v53[48];
  *(v39 + 41) = *&v53[32];
  *v39 = 0;
  *(v39 + 8) = 1;
  *(v39 + 120) = *&v53[111];
  *(v39 + 57) = v42;
  v43 = *(v32 + 8);
  v43(v46, v36);
  sub_10001FE6C(v30, &qword_1000E7270);
  v43(v34, v36);
  return sub_10001FE6C(v31, &qword_1000E7270);
}

uint64_t sub_1000526F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v4 = sub_100017A54(&qword_1000E7290);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v34 - v5;
  v39 = sub_100017A54(&qword_1000E7298);
  __chkstk_darwin(v39);
  v38 = v34 - v6;
  v7 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Item(0);
  __chkstk_darwin(v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v13 - 8);
  v15 = v34 - v14;
  v16 = sub_1000A1700();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v35 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = v34 - v20;
  v37 = v2;
  sub_100052D84(a1, &v50);
  v22 = v50;
  v21 = v51;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v36 = a1;
  sub_100054474(a1, v12, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100054670(v12, type metadata accessor for Item);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    sub_1000545C0(v12, v9, type metadata accessor for Item.Headline);
    sub_100028B94(&v9[*(v7 + 24)], v15, &unk_1000E5DD0);
    sub_100054670(v9, type metadata accessor for Item.Headline);
  }

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10001FE6C(v15, &unk_1000E5DD0);
    v50 = v22;
    v51 = v21;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    sub_100017A54(&qword_1000E66B0);
    sub_100054234(&qword_1000E66A8, &qword_1000E66B0);
    result = sub_1000A2820();
    v24 = result;
  }

  else
  {
    v25 = v48;
    (*(v17 + 32))(v48, v15, v16);
    v26 = (*(v17 + 16))(v35, v25, v16);
    v34[1] = v34;
    v50 = v22;
    v51 = v21;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    __chkstk_darwin(v26);
    v47 = v16;
    v34[-2] = &v50;

    sub_100017A54(&qword_1000E66B0);
    sub_100054234(&qword_1000E66A8, &qword_1000E66B0);
    v27 = v40;
    sub_1000A2450();

    v28 = sub_100053A48(v36);
    v30 = v29;
    v32 = v31;
    sub_100029050(&qword_1000E72A0, &qword_1000E7290);
    v33 = v42;
    sub_1000A25D0();
    sub_100028640(v28, v30, v32 & 1);

    (*(v41 + 8))(v27, v33);
    sub_1000542D4();
    v24 = sub_1000A2820();

    result = (*(v17 + 8))(v48, v47);
  }

  *v49 = v24;
  return result;
}

uint64_t sub_100052D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Section();
  v128 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v129 = &v115[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TodayContent();
  __chkstk_darwin(v6);
  v8 = &v115[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v130 = type metadata accessor for HeadlineCell(0);
  __chkstk_darwin(v130);
  v10 = &v115[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Item.Headline(0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v115[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v17 = &v115[-v16];
  __chkstk_darwin(v15);
  v19 = &v115[-v18];
  v20 = type metadata accessor for Item(0);
  v123 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v127 = &v115[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v124 = &v115[-v24];
  v25 = __chkstk_darwin(v23);
  v125 = &v115[-v26];
  __chkstk_darwin(v25);
  v28 = &v115[-v27];
  sub_100054474(a1, &v115[-v27], type metadata accessor for Item);
  v126 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v28;
    v29 = v28[1];
    v31 = sub_1000A2270();
    *&v138 = v30;
    *(&v138 + 1) = v29;
    sub_10001B33C();

    v32 = sub_1000A2550();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [objc_opt_self() secondaryLabelColor];
    v40 = sub_1000A2740();

    LOBYTE(v133) = 1;
    v36 &= 1u;
    LOBYTE(v132) = v36;
    type metadata accessor for SectionView();
    LOBYTE(v29) = sub_1000A2380();
    sub_1000A1E00();
    v146 = 0;
    v138 = v31;
    LOBYTE(v139) = 1;
    *(&v139 + 1) = v32;
    *&v140 = v34;
    BYTE8(v140) = v36;
    *&v141 = v38;
    *(&v141 + 1) = v40;
    LOBYTE(v142) = v29;
    *(&v142 + 1) = v41;
    *&v143 = v42;
    *(&v143 + 1) = v43;
    v144 = v44;
    v145 = 0;
    sub_100017A54(&qword_1000E72B0);
    sub_1000543BC();
    v45 = sub_1000A2820();
    sub_1000A28C0();
    result = sub_1000A1E90();
    v47 = v138;
    v48 = BYTE8(v138);
    v49 = v139;
    v50 = BYTE8(v139);
    *a2 = v45;
    *(a2 + 8) = v47;
    *(a2 + 16) = v48;
    *(a2 + 24) = v49;
    *(a2 + 32) = v50;
    *(a2 + 40) = v140;
    return result;
  }

  v117 = v14;
  v118 = a1;
  v121 = a2;
  sub_1000545C0(v28, v19, type metadata accessor for Item.Headline);
  v120 = v17;
  sub_100054474(v19, v17, type metadata accessor for Item.Headline);
  v51 = type metadata accessor for SectionView();
  v52 = v131;
  v53 = v131 + *(v51 + 20);
  v54 = v8;
  sub_100054474(v53, v8, type metadata accessor for TodayContent);
  v55 = v52 + *(v51 + 24);
  v56 = *(v55 + 88);
  v57 = *(v55 + 120);
  v142 = *(v55 + 104);
  v143 = v57;
  v144 = *(v55 + 136);
  v58 = *(v55 + 56);
  v140 = *(v55 + 72);
  v141 = v56;
  v119 = v55;
  v138 = *(v55 + 40);
  v139 = v58;
  v59 = (v53 + *(v6 + 48));
  v60 = *v59;
  v61 = v59[1];
  v122 = v19;
  v62 = *v19;
  sub_1000544DC(&v138, &v133);
  v63 = [v62 identifier];
  v64 = sub_1000A2D40();
  v66 = v65;

  if (v61)
  {
    if (v60 == v64 && v61 == v66)
    {
      LODWORD(v61) = 1;
    }

    else
    {
      LODWORD(v61) = sub_1000A3560();
    }
  }

  v136 = &type metadata for FeatureFlags.NewsWidget;
  *&v137 = sub_100054538();
  v67 = sub_1000A1950();
  sub_100018720(&v133);
  v68 = v54;
  if (v67)
  {
    v69 = *(v53 + *(v6 + 24));
    v70 = *(v69 + 16);
    if (v70)
    {
      v71 = v129;
      sub_100054474(v69 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * (v70 - 1), v129, type metadata accessor for Section);
      v72 = [v71[1] identifier];
      v73 = sub_1000A2D40();
      v75 = v74;

      sub_100054670(v71, type metadata accessor for Section);
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = v131;
    v77 = [*(v131 + 8) identifier];
    v78 = sub_1000A2D40();
    v80 = v79;

    if (!v75)
    {
      v81 = 0;
      v82 = v121;
LABEL_35:

      goto LABEL_36;
    }

    if (v73 == v78 && v75 == v80)
    {

      goto LABEL_18;
    }

    v83 = sub_1000A3560();

    if (v83)
    {
LABEL_18:
      v84 = *(v76 + 16);
      v85 = *(v84 + 16);
      v82 = v121;
      v116 = v61;
      if (v85)
      {
        v86 = v125;
        sub_100054474(v84 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * (v85 - 1), v125, type metadata accessor for Item);
        v87 = v124;
        sub_100054474(v86, v124, type metadata accessor for Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = 0x6567617373656DLL;
          sub_100054670(v87, type metadata accessor for Item);
          v89 = 0xE700000000000000;
        }

        else
        {
          v91 = v87;
          v92 = v117;
          sub_1000545C0(v91, v117, type metadata accessor for Item.Headline);
          v93 = [*v92 identifier];
          v88 = sub_1000A2D40();
          v89 = v94;

          sub_100054670(v92, type metadata accessor for Item.Headline);
        }

        v90 = v127;
        sub_100054670(v86, type metadata accessor for Item);
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = v127;
      }

      sub_100054474(v118, v90, type metadata accessor for Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v95 = 0x6567617373656DLL;
        sub_100054670(v90, type metadata accessor for Item);
        v96 = 0xE700000000000000;
        if (v89)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v97 = v117;
        sub_1000545C0(v90, v117, type metadata accessor for Item.Headline);
        v98 = [*v97 identifier];
        v95 = sub_1000A2D40();
        v96 = v99;

        sub_100054670(v97, type metadata accessor for Item.Headline);
        if (v89)
        {
LABEL_27:
          if (v88 == v95 && v89 == v96)
          {
            v81 = 1;
          }

          else
          {
            v81 = sub_1000A3560();
          }

          goto LABEL_34;
        }
      }

      v81 = 0;
LABEL_34:
      LOBYTE(v61) = v116;
      goto LABEL_35;
    }
  }

  v81 = 0;
  v82 = v121;
LABEL_36:
  KeyPath = swift_getKeyPath();
  v101 = v130;
  *(v10 + *(v130 + 20)) = KeyPath;
  sub_100017A54(&qword_1000E5408);
  swift_storeEnumTagMultiPayload();
  *(v10 + v101[6]) = swift_getKeyPath();
  sub_100017A54(&qword_1000E6570);
  swift_storeEnumTagMultiPayload();
  *v10 = swift_getKeyPath();
  sub_100017A54(&qword_1000E5410);
  swift_storeEnumTagMultiPayload();
  v102 = (v10 + v101[7]);
  v132 = 0;
  sub_1000A27E0();
  v103 = v134;
  *v102 = v133;
  v102[1] = v103;
  v104 = (v10 + v101[8]);
  v132 = 0;
  sub_1000A27E0();
  v105 = v134;
  *v104 = v133;
  v104[1] = v105;
  sub_1000545C0(v120, v10 + v101[9], type metadata accessor for Item.Headline);
  sub_1000545C0(v68, v10 + v101[10], type metadata accessor for TodayContent);
  v106 = v10 + v101[11];
  v107 = v143;
  *(v106 + 4) = v142;
  *(v106 + 5) = v107;
  *(v106 + 12) = v144;
  v108 = v139;
  *v106 = v138;
  *(v106 + 1) = v108;
  v109 = v141;
  *(v106 + 2) = v140;
  *(v106 + 3) = v109;
  *(v10 + v101[12]) = v61 & 1;
  *(v10 + v101[13]) = v81 & 1;
  sub_100054628(&qword_1000E72D8, type metadata accessor for HeadlineCell);
  v110 = sub_1000A2820();
  sub_1000A28C0();
  sub_1000A1E90();
  v111 = v133;
  v112 = v134;
  v113 = v135;
  v114 = v136;
  *v82 = v110;
  *(v82 + 8) = v111;
  *(v82 + 16) = v112;
  *(v82 + 24) = v113;
  *(v82 + 32) = v114;
  *(v82 + 40) = v137;
  return sub_100054670(v122, type metadata accessor for Item.Headline);
}

uint64_t sub_100053A48(uint64_t a1)
{
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100054474(a1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[1];
    v27 = *v7;
    v28 = v8;
    sub_10001B33C();
    return sub_1000A2550();
  }

  else
  {
    sub_1000545C0(v7, v4, type metadata accessor for Item.Headline);
    sub_100017A54(&qword_1000E5290);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000AA450;
    v11 = *v4;
    v12 = [*v4 title];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1000A2D40();
      v16 = v15;
    }

    else
    {
      v14 = 0;
      v16 = 0xE000000000000000;
    }

    *(v10 + 32) = v14;
    *(v10 + 40) = v16;
    v17 = [v11 sourceName];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1000A2D40();
      v21 = v20;
    }

    else
    {
      v19 = 0;
      v21 = 0xE000000000000000;
    }

    *(v10 + 48) = v19;
    *(v10 + 56) = v21;
    v27 = v10;
    sub_100017A54(&qword_1000E5298);
    sub_100029050(&qword_1000E52A0, &qword_1000E5298);
    v22 = sub_1000A2CA0();
    v24 = v23;

    v27 = v22;
    v28 = v24;
    sub_10001B33C();
    v25 = sub_1000A2550();
    sub_100054670(v4, type metadata accessor for Item.Headline);
    return v25;
  }
}

uint64_t sub_100053D0C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000A28B0();
  a1[1] = v3;
  v4 = sub_100017A54(&qword_1000E7238);
  return sub_100051D30(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_100053D58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100090CFC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100053D84()
{
  v1 = v0;
  v2 = type metadata accessor for SectionView();
  v25 = *(*(v2 - 1) + 80);
  v23 = *(*(v2 - 1) + 64);
  v24 = (v25 + 16) & ~v25;
  v3 = v0 + v24;

  v4 = type metadata accessor for Section();
  v5 = *(v4 + 32);
  v6 = sub_1000A1700();
  v7 = *(v6 - 8);
  v26 = *(v7 + 48);
  if (!v26(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 36);
  v9 = sub_1000A1810();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = (v3 + v2[5]);

  v12 = type metadata accessor for TodayContent();
  v13 = v11 + *(v12 + 20);
  v14 = type metadata accessor for Banner();
  if (!(*(*(v14 - 1) + 48))(v13, 1, v14))
  {
    v22 = v1;

    v15 = v14[7];
    if (!v26(&v13[v15], 1, v6))
    {
      (*(v7 + 8))(&v13[v15], v6);
    }

    v16 = *&v13[v14[9]];
    if (v16 != 1)
    {
    }

    sub_10002C2D8(*&v13[v14[10]], *&v13[v14[10] + 8]);
    v1 = v22;
  }

  swift_unknownObjectRelease();
  v17 = *(v12 + 36);
  if (!v26(v11 + v17, 1, v6))
  {
    (*(v7 + 8))(v11 + v17, v6);
  }

  v18 = (v3 + v2[6]);

  sub_100028064(*(v3 + v2[7]), *(v3 + v2[7] + 8));
  v19 = v2[8];
  sub_100017A54(&qword_1000E6990);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000A1E20();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v24 + v23, v25 | 7);
}

uint64_t sub_1000541B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SectionView();
  result = sub_1000526F4(a1, &v5);
  *a2 = v5;
  return result;
}

uint64_t sub_100054234(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000542A4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v2 + 40);
}

unint64_t sub_1000542D4()
{
  result = qword_1000E72A8;
  if (!qword_1000E72A8)
  {
    sub_100017A9C(&qword_1000E7298);
    sub_100029050(&qword_1000E72A0, &qword_1000E7290);
    sub_100054628(&qword_1000E54F8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E72A8);
  }

  return result;
}

unint64_t sub_1000543BC()
{
  result = qword_1000E72B8;
  if (!qword_1000E72B8)
  {
    sub_100017A9C(&qword_1000E72B0);
    sub_100029050(&qword_1000E72C0, &qword_1000E72C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E72B8);
  }

  return result;
}

uint64_t sub_100054474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100054538()
{
  result = qword_1000E72D0;
  if (!qword_1000E72D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E72D0);
  }

  return result;
}

uint64_t sub_1000545C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100054628(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100054670(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_100054740@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1000A26B0();
  v4 = sub_1000A2700();

  sub_1000A26B0();
  v5 = sub_1000A2700();

  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 16) = v4;
  *(a1 + 24) = xmmword_1000ACFA0;
  *(a1 + 40) = 0x4000000000000000;
  *(a1 + 48) = v5;
  result = 10.0;
  *(a1 + 56) = xmmword_1000ACFB0;
  *(a1 + 72) = 0x4000000000000000;
  return result;
}

uint64_t sub_100054864(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000548E8()
{
  result = qword_1000E7310;
  if (!qword_1000E7310)
  {
    sub_100017A9C(&qword_1000E7318);
    sub_10003D33C();
    sub_100054974();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7310);
  }

  return result;
}

unint64_t sub_100054974()
{
  result = qword_1000E7320;
  if (!qword_1000E7320)
  {
    sub_100017A9C(&qword_1000E7328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E7320);
  }

  return result;
}

uint64_t sub_1000549D8(void *a1, void *a2)
{
  v4 = sub_1000A1810();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v34 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v35 = a1;
  v13 = sub_100018688(a1, v11);
  v14 = *(v12 + 8);
  v38 = v13;
  v39 = v14;
  v40 = v12;
  v41 = v11;
  v15 = v12;
  v16 = v5;
  v14(v11, v15);
  v18 = a2[3];
  v17 = a2[4];
  v42 = a2;
  v19 = sub_100018688(a2, v18);
  v20 = *(v17 + 8);
  v34[1] = v19;
  v36 = v17;
  v37 = v18;
  v21 = v17;
  v22 = v20;
  v20(v18, v21);
  sub_1000A1760();
  v24 = fabs(v23);
  v25 = *(v16 + 8);
  v25(v8, v4);
  v43 = v4;
  v25(v10, v4);
  if (v24 <= 1.0)
  {
    v28 = v35[3];
    v29 = v35[4];
    sub_100018688(v35, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v31 = v42[3];
    v32 = v42[4];
    sub_100018688(v42, v31);
    v26 = v30 < (*(v32 + 16))(v31, v32);
  }

  else
  {
    v39(v41, v40);
    v22(v37, v36);
    v26 = sub_1000A1790();
    v27 = v43;
    v25(v8, v43);
    v25(v10, v27);
  }

  return v26 & 1;
}

uint64_t Array.partitioned(using:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v35 = a1;
  v36 = a2;
  v8 = *(a4 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v34 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v10);
  v38 = &v27 - v12;
  __chkstk_darwin(v11);
  v14 = &v27 - v13;
  sub_1000A2FC0();
  v41 = sub_1000A2C40();
  v15 = sub_1000A2C40();
  v40 = v15;
  if (sub_1000A2FA0())
  {
    v28 = v9;
    v29 = v14;
    v16 = 0;
    v37 = (v8 + 16);
    v32 = (v8 + 8);
    v33 = (v8 + 32);
    v30 = v8;
    v31 = a3;
    while (1)
    {
      v19 = sub_1000A2F70();
      sub_1000A2F40();
      if (v19)
      {
        v20 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16;
        v21 = *(v8 + 16);
        v21(v14, v20, a4);
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_13;
        }
      }

      else
      {
        result = sub_1000A32C0();
        if (v28 != 8)
        {
          __break(1u);
          return result;
        }

        v39 = result;
        v21 = *v37;
        (*v37)(v14, &v39, a4);
        swift_unknownObjectRelease();
        v22 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_13:
          __break(1u);
LABEL_14:
          (*v32)(v38, a4);
        }
      }

      v23 = v38;
      (*v33)(v38, v14, a4);
      v24 = v35(v23);
      if (v5)
      {
        goto LABEL_14;
      }

      if (v24)
      {
        v25 = v40;
        v39 = v40;
        swift_getWitnessTable();
        if ((sub_1000A3040() & 1) == 0)
        {
          v39 = v25;
          sub_1000A2FC0();

          sub_1000A2F90();
          sub_1000A2FB0(0);
        }
      }

      v17 = v38;
      v21(v34, v38, a4);
      sub_1000A2F90();
      (*v32)(v17, a4);
      a3 = v31;
      v18 = sub_1000A2FA0();
      ++v16;
      v5 = 0;
      v14 = v29;
      v8 = v30;
      if (v22 == v18)
      {
        v15 = v40;
        break;
      }
    }
  }

  v39 = v15;
  swift_getWitnessTable();
  if (sub_1000A3040())
  {
  }

  else
  {
    v39 = v15;
    sub_1000A2FC0();
    sub_1000A2F90();
  }

  return v41;
}

uint64_t sub_100055070@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v96 = sub_1000A1810();
  v92 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for Session();
  v108 = *(v113 - 8);
  __chkstk_darwin(v113);
  v93 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for DisappearanceEvent(0);
  v99 = *(v100 - 8);
  v5 = __chkstk_darwin(v100);
  v90 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v102 = &v88 - v7;
  v8 = sub_100017A54(&qword_1000E73E0);
  v9 = __chkstk_darwin(v8 - 8);
  v98 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v103 = &v88 - v11;
  v104 = type metadata accessor for EngagementEvent(0);
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100017A54(&qword_1000E5818);
  v15 = __chkstk_darwin(v14 - 8);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v88 - v17;
  v18 = sub_100017A54(&qword_1000E73E8);
  __chkstk_darwin(v18 - 8);
  v20 = &v88 - v19;
  v21 = type metadata accessor for AppearanceEvent(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v88 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v105 = &v88 - v25;
  v26 = *a1;
  v95 = sub_100017A54(&unk_1000E5270);
  v27 = swift_allocObject();
  v94 = xmmword_1000AA7C0;
  *(v27 + 16) = xmmword_1000AA7C0;
  sub_100017A54(&qword_1000E73D8);
  v28 = sub_1000A2F20();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v97 = sub_10001A97C();
  *(v27 + 64) = v97;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v107 = sub_10001A9D0();
  v31 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

  v32 = *(v26 + 16);
  if (!v32)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_9;
  }

  sub_10002F244(v26 + 32, v112);
  v33 = swift_dynamicCast();
  (*(v22 + 56))(v20, v33 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
LABEL_9:
    sub_10001FE6C(v20, &qword_1000E73E8);
    sub_1000A3070();
    v41 = sub_1000A3190();
    sub_1000A1DB0();

    return (*(v108 + 56))(v109, 1, 1, v113);
  }

  v34 = v20;
  v35 = v105;
  result = sub_100059CB8(v34, v105, type metadata accessor for AppearanceEvent);
  v37 = 0;
  v38 = v26 + 32;
  v39 = v104;
  while (1)
  {
    if (v37 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_27;
    }

    sub_10002F244(v38, &v111);
    sub_10002F244(&v111, v110);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v37;
    result = sub_100018720(&v111);
    v38 += 40;
    if (v32 == v37)
    {
      v40 = v106;
      (*(v101 + 56))(v106, 1, 1, v39);
      goto LABEL_11;
    }
  }

  sub_100059C58(v13, type metadata accessor for EngagementEvent);
  sub_100059ABC(&v111, v112);
  v40 = v106;
  v42 = swift_dynamicCast();
  (*(v101 + 56))(v40, v42 ^ 1u, 1, v39);
LABEL_11:
  v43 = v103;
  sub_100056018(v26, v40, v103);
  v44 = v98;
  sub_100028B94(v43, v98, &qword_1000E73E0);
  v45 = (*(v99 + 48))(v44, 1, v100);
  v46 = v102;
  if (v45 == 1)
  {
    sub_10001FE6C(v44, &qword_1000E73E0);
    sub_1000A3070();
    v47 = swift_allocObject();
    *(v47 + 16) = v94;
    sub_100059C10(&qword_1000E5810, &type metadata accessor for Date);
    v48 = sub_1000A3550();
    v49 = v97;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = v49;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v51 = sub_1000A3190();
    sub_1000A1DB0();

    v52 = v43;
    goto LABEL_22;
  }

  result = sub_100059CB8(v44, v102, type metadata accessor for DisappearanceEvent);
  v53 = *(v26 + 16);
  if (v53)
  {
    v54 = (2 * v53) | 1;

    v55 = sub_100057DCC(v26 + 32, 1, v54, v35);
    if (*(v55 + 16))
    {
      v56 = v55;
      if (sub_1000A1780())
      {
        v57 = v93;
        sub_100059AD4(v35, v93, type metadata accessor for AppearanceEvent);
        v100 = *(v113 + 24);
        v58 = v113;
        sub_100028B94(v40, v57 + v100, &qword_1000E5818);
        v99 = *(v58 + 28);
        v98 = type metadata accessor for DisappearanceEvent;
        sub_100059AD4(v46, v57 + v99, type metadata accessor for DisappearanceEvent);
        *(v57 + *(v58 + 20)) = v56;
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1000AA7D0;
        v60 = v88;
        sub_100059AD4(v57, v88, type metadata accessor for AppearanceEvent);
        v61 = v92;
        v95 = *(v92 + 32);
        v62 = v91;
        v63 = v96;
        v95(v91, v60, v96);
        *&v94 = sub_100059C10(&qword_1000E5810, &type metadata accessor for Date);
        v64 = sub_1000A3550();
        v66 = v65;
        v92 = *(v61 + 8);
        (v92)(v62, v63);
        v67 = v97;
        *(v59 + 56) = &type metadata for String;
        *(v59 + 64) = v67;
        *(v59 + 32) = v64;
        *(v59 + 40) = v66;
        v68 = v93;
        v69 = v90;
        sub_100059AD4(v93 + v99, v90, v98);
        v95(v62, v69, v63);
        v70 = sub_1000A3550();
        v72 = v71;
        (v92)(v62, v63);
        *(v59 + 96) = &type metadata for String;
        *(v59 + 104) = v67;
        *(v59 + 72) = v70;
        *(v59 + 80) = v72;
        v73 = v89;
        sub_100028B94(v68 + v100, v89, &qword_1000E5818);
        v74 = (*(v101 + 48))(v73, 1, v104);
        sub_10001FE6C(v73, &qword_1000E5818);
        v75 = 1702195828;
        if (v74 == 1)
        {
          v75 = 0x65736C6166;
        }

        v76 = 0xE400000000000000;
        *(v59 + 136) = &type metadata for String;
        *(v59 + 144) = v97;
        if (v74 == 1)
        {
          v76 = 0xE500000000000000;
        }

        *(v59 + 112) = v75;
        *(v59 + 120) = v76;
        v77 = sub_1000A3190();
        sub_1000A3090();
        sub_1000A1DB0();

        sub_100059C58(v102, type metadata accessor for DisappearanceEvent);
        sub_10001FE6C(v103, &qword_1000E73E0);
        sub_100059C58(v105, type metadata accessor for AppearanceEvent);
        v78 = v109;
        sub_100059CB8(v68, v109, type metadata accessor for Session);
        (*(v108 + 56))(v78, 0, 1, v113);
        v79 = v106;
      }

      else
      {

        LODWORD(v104) = sub_1000A3070();
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1000AA450;
        sub_100059C10(&qword_1000E5810, &type metadata accessor for Date);
        v82 = sub_1000A3550();
        v83 = v97;
        *(v81 + 56) = &type metadata for String;
        *(v81 + 64) = v83;
        *(v81 + 32) = v82;
        *(v81 + 40) = v84;
        v85 = sub_1000A3550();
        *(v81 + 96) = &type metadata for String;
        *(v81 + 104) = v83;
        *(v81 + 72) = v85;
        *(v81 + 80) = v86;
        v87 = sub_1000A3190();
        sub_1000A1DB0();

        sub_100059C58(v46, type metadata accessor for DisappearanceEvent);
        sub_10001FE6C(v43, &qword_1000E73E0);
        sub_100059C58(v35, type metadata accessor for AppearanceEvent);
        (*(v108 + 56))(v109, 1, 1, v113);
        v79 = v106;
      }
    }

    else
    {

      sub_1000A3070();
      v80 = sub_1000A3190();
      sub_1000A1DB0();

      sub_100059C58(v46, type metadata accessor for DisappearanceEvent);
      v52 = v43;
LABEL_22:
      sub_10001FE6C(v52, &qword_1000E73E0);
      sub_100059C58(v35, type metadata accessor for AppearanceEvent);
      (*(v108 + 56))(v109, 1, 1, v113);
      v79 = v40;
    }

    return sub_10001FE6C(v79, &qword_1000E5818);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100056018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100017A54(&qword_1000E73E0);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7 - 8];
  v9 = type metadata accessor for DisappearanceEvent(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_10002F244(a1 + 40 * v13 - 8, v22);
    sub_100017A54(&qword_1000E73D8);
    v14 = swift_dynamicCast();
    v15 = *(v10 + 56);
    v15(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_100059CB8(v8, v12, type metadata accessor for DisappearanceEvent);
      sub_100059CB8(v12, a3, type metadata accessor for DisappearanceEvent);
      return (v15)(a3, 0, 1, v9);
    }
  }

  else
  {
    v15 = *(v10 + 56);
    v15(v8, 1, 1, v9);
  }

  sub_10001FE6C(v8, &qword_1000E73E0);
  v17 = type metadata accessor for EngagementEvent(0);
  if ((*(*(v17 - 8) + 48))(a2, 1, v17) == 1)
  {
    v18 = a3;
    v19 = 1;
  }

  else
  {
    sub_10001A9D0();
    v20 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    sub_1000A1800();
    *(a3 + *(v9 + 20)) = 2;
    v18 = a3;
    v19 = 0;
  }

  return (v15)(v18, v19, 1, v9);
}

Swift::Int sub_100056318(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100070508(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100056384(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100056384(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000A3540(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = &_swiftEmptyArrayStorage;
      }

      else
      {
        sub_100017A54(&qword_1000E73D8);
        v5 = sub_1000A2F60();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100056878(v7, v8, a1, v4);
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
    return sub_10005648C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10005648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = sub_1000A1810();
  v8 = __chkstk_darwin(v52);
  v53 = &v44[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = __chkstk_darwin(v8);
  v13 = &v44[-v12];
  v45 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v49 = *a4;
    v15 = v49 + 40 * a3;
    v16 = a1 - a3;
    v51 = &v44[-v12];
LABEL_5:
    v48 = a3;
    v46 = v16;
    v17 = v16;
    v47 = v15;
    v18 = v53;
    while (1)
    {
      v68 = v17;
      sub_10002F244(v15, &v65);
      v60 = (v15 - 40);
      v61 = v15;
      sub_10002F244(v15 - 40, v62);
      v19 = v66;
      v20 = v67;
      v21 = sub_100018688(&v65, v66);
      v22 = *(v20 + 8);
      v56 = v21;
      v57 = v22;
      v58 = v20;
      v59 = v19;
      v22(v19, v20);
      v24 = v63;
      v23 = v64;
      v25 = sub_100018688(v62, v63);
      v26 = *(v23 + 8);
      v54 = v25;
      v55 = v26;
      v26(v24, v23);
      sub_1000A1760();
      v28 = fabs(v27);
      v29 = v14;
      v30 = *v14;
      v31 = v18;
      v32 = v18;
      v33 = v52;
      v30(v31, v52);
      v30(v13, v33);
      if (v28 <= 1.0)
      {
        v37 = v66;
        v36 = v67;
        sub_100018688(&v65, v66);
        LODWORD(v37) = (*(v36 + 16))(v37, v36);
        v39 = v63;
        v38 = v64;
        sub_100018688(v62, v63);
        v35 = v37 < (*(v38 + 16))(v39, v38);
        v13 = v51;
      }

      else
      {
        v13 = v51;
        v50 = v23;
        v34 = v32;
        v57(v59, v58);
        v55(v24, v50);
        v35 = sub_1000A1790();
        v30(v34, v33);
        v30(v13, v33);
      }

      v14 = v29;
      sub_100018720(v62);
      result = sub_100018720(&v65);
      v18 = v53;
      v40 = v68;
      v41 = v61;
      if ((v35 & 1) == 0)
      {
LABEL_4:
        a3 = v48 + 1;
        v15 = v47 + 40;
        v16 = v46 - 1;
        if (v48 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v49)
      {
        break;
      }

      sub_100059ABC(v61, &v65);
      v15 = v60;
      v42 = v60[1];
      *v41 = *v60;
      v41[1] = v42;
      *(v41 + 4) = *(v15 + 32);
      result = sub_100059ABC(&v65, v15);
      v43 = __CFADD__(v40, 1);
      v17 = v40 + 1;
      if (v43)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100056878(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = sub_1000A1810();
  v9 = __chkstk_darwin(v8);
  result = __chkstk_darwin(v9);
  v14 = &v131 - v12;
  v139 = a3;
  v15 = a3[1];
  if (v15 < 1)
  {
    v17 = &_swiftEmptyArrayStorage;
LABEL_95:
    v18 = *v133;
    if (!*v133)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_129;
    }

    goto LABEL_97;
  }

  v131 = a4;
  v16 = 0;
  v142 = (v11 + 8);
  v17 = &_swiftEmptyArrayStorage;
  v144 = result;
  v143 = v13;
  v145 = &v131 - v12;
  while (1)
  {
    v18 = v16;
    if (v16 + 1 >= v15)
    {
      v23 = v16 + 1;
    }

    else
    {
      v140 = v15;
      v19 = *v139;
      sub_10002F244(*v139 + 40 * (v16 + 1), &v159);
      sub_10002F244(v19 + 40 * v16, v156);
      LODWORD(v146) = sub_1000549D8(&v159, v156);
      if (v5)
      {
        sub_100018720(v156);
        sub_100018720(&v159);
      }

      sub_100018720(v156);
      result = sub_100018720(&v159);
      v20 = (v16 + 2);
      v132 = v16;
      v141 = 40 * v16;
      v21 = v19 + 40 * v16 + 80;
      v138 = 0;
      v137 = v17;
      while (1)
      {
        v23 = v140;
        if (v140 == v20)
        {
          break;
        }

        v155 = v20;
        sub_10002F244(v21, &v159);
        v154 = v21;
        sub_10002F244(v21 - 40, v156);
        v24 = v160;
        v25 = v161;
        v26 = sub_100018688(&v159, v160);
        v27 = *(v25 + 8);
        v150 = v26;
        v151 = v27;
        v152 = v25;
        v153 = v24;
        v27(v24, v25);
        v28 = v157;
        v29 = v158;
        v30 = sub_100018688(v156, v157);
        v31 = *(v29 + 8);
        v32 = v143;
        v147 = v30;
        v148 = v31;
        v149 = v28;
        v31(v28, v29);
        sub_1000A1760();
        v34 = fabs(v33);
        v35 = *v142;
        v36 = v144;
        (*v142)(v32, v144);
        v35(v14, v36);
        if (v34 > 1.0)
        {
          v14 = v145;
          v151(v153, v152);
          v148(v149, v29);
          v22 = sub_1000A1790();
          v35(v32, v36);
          v35(v14, v36);
          v5 = v138;
          v17 = v137;
        }

        else
        {
          v37 = v160;
          v38 = v161;
          sub_100018688(&v159, v160);
          v39 = (*(v38 + 16))(v37, v38);
          v40 = v157;
          v41 = v158;
          sub_100018688(v156, v157);
          v22 = v39 < (*(v41 + 16))(v40, v41);
          v5 = v138;
          v17 = v137;
          v14 = v145;
        }

        sub_100018720(v156);
        result = sub_100018720(&v159);
        v20 = (v155 + 1);
        v21 = v154 + 40;
        if ((v146 & 1) != (v22 & 1))
        {
          v23 = v155;
          break;
        }
      }

      v18 = v132;
      if (v146)
      {
        if (v23 < v132)
        {
          goto LABEL_128;
        }

        if (v132 < v23)
        {
          v42 = 40 * v23 - 40;
          v43 = v23;
          v44 = v141;
          do
          {
            v43 = (v43 - 1);
            if (v18 != v43)
            {
              v45 = v44;
              v46 = *v139;
              if (!*v139)
              {
                goto LABEL_132;
              }

              v47 = v23;
              v48 = v45;
              v49 = v46 + v45;
              v50 = v46 + v42;
              sub_100059ABC((v46 + v45), &v159);
              v51 = *(v50 + 32);
              v52 = *(v50 + 16);
              *v49 = *v50;
              *(v49 + 16) = v52;
              *(v49 + 32) = v51;
              result = sub_100059ABC(&v159, v50);
              v44 = v48;
              v23 = v47;
            }

            ++v18;
            v42 -= 40;
            v44 += 40;
          }

          while (v18 < v43);
          v18 = v132;
        }
      }
    }

    v53 = v139[1];
    if (v23 < v53)
    {
      if (__OFSUB__(v23, v18))
      {
        goto LABEL_125;
      }

      if (v23 - v18 < v131)
      {
        if (__OFADD__(v18, v131))
        {
          goto LABEL_126;
        }

        if (v18 + v131 < v53)
        {
          v53 = (v18 + v131);
        }

        if (v53 < v18)
        {
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          result = sub_1000701E8(v17);
          v17 = result;
LABEL_97:
          v162 = v17;
          v127 = *(v17 + 2);
          if (v127 >= 2)
          {
            while (*v139)
            {
              v128 = *&v17[16 * v127];
              v129 = *&v17[16 * v127 + 24];
              sub_10005748C((*v139 + 40 * v128), (*v139 + 40 * *&v17[16 * v127 + 16]), (*v139 + 40 * v129), v18);
              if (v5)
              {
              }

              if (v129 < v128)
              {
                goto LABEL_122;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_1000701E8(v17);
              }

              if (v127 - 2 >= *(v17 + 2))
              {
                goto LABEL_123;
              }

              v130 = &v17[16 * v127];
              *v130 = v128;
              *(v130 + 1) = v129;
              v162 = v17;
              result = sub_10007015C(v127 - 1);
              v17 = v162;
              v127 = *(v162 + 2);
              if (v127 <= 1)
              {
              }
            }

            goto LABEL_133;
          }
        }

        if (v23 != v53)
        {
          break;
        }
      }
    }

    v16 = v23;
    if (v23 < v18)
    {
      goto LABEL_124;
    }

LABEL_32:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000702FC(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v55 = *(v17 + 2);
    v54 = *(v17 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_1000702FC((v54 > 1), v55 + 1, 1, v17);
      v17 = result;
    }

    *(v17 + 2) = v56;
    v57 = &v17[16 * v55];
    *(v57 + 4) = v18;
    *(v57 + 5) = v16;
    v58 = *v133;
    if (!*v133)
    {
      goto LABEL_134;
    }

    if (v55)
    {
      while (1)
      {
        v18 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v17 + 4);
          v60 = *(v17 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_51:
          if (v62)
          {
            goto LABEL_113;
          }

          v75 = &v17[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_116;
          }

          v81 = &v17[16 * v18 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_120;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v18 = v56 - 2;
            }

            goto LABEL_72;
          }

          goto LABEL_65;
        }

        v85 = &v17[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_65:
        if (v80)
        {
          goto LABEL_115;
        }

        v88 = &v17[16 * v18];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_118;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_72:
        v96 = v18 - 1;
        if (v18 - 1 >= v56)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v139)
        {
          goto LABEL_131;
        }

        v97 = *&v17[16 * v96 + 32];
        v98 = *&v17[16 * v18 + 40];
        sub_10005748C((*v139 + 40 * v97), (*v139 + 40 * *&v17[16 * v18 + 32]), (*v139 + 40 * v98), v58);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1000701E8(v17);
        }

        if (v96 >= *(v17 + 2))
        {
          goto LABEL_110;
        }

        v99 = &v17[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v162 = v17;
        result = sub_10007015C(v18);
        v17 = v162;
        v56 = *(v162 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v17[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_111;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_112;
      }

      v70 = &v17[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_114;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_117;
      }

      if (v74 >= v66)
      {
        v92 = &v17[16 * v18 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_121;
        }

        if (v61 < v95)
        {
          v18 = v56 - 2;
        }

        goto LABEL_72;
      }

      goto LABEL_51;
    }

LABEL_3:
    v15 = v139[1];
    v14 = v145;
    if (v16 >= v15)
    {
      goto LABEL_95;
    }
  }

  v134 = v53;
  v137 = v17;
  v138 = v5;
  v141 = *v139;
  v100 = v141 + 40 * v23;
  v132 = v18;
  v101 = v18 - v23;
LABEL_83:
  v140 = v23;
  v135 = v101;
  v102 = v101;
  v136 = v100;
  while (1)
  {
    v154 = v102;
    sub_10002F244(v100, &v159);
    v155 = v100;
    v153 = (v100 - 40);
    sub_10002F244(v100 - 40, v156);
    v103 = v160;
    v104 = v161;
    v105 = sub_100018688(&v159, v160);
    v106 = *(v104 + 8);
    v107 = v145;
    v149 = v105;
    v150 = v106;
    v151 = v104;
    v152 = v103;
    v106(v103, v104);
    v108 = v157;
    v109 = v158;
    v110 = sub_100018688(v156, v157);
    v111 = *(v109 + 8);
    v112 = v143;
    v146 = v110;
    v147 = v111;
    v148 = v108;
    v111(v108, v109);
    sub_1000A1760();
    v114 = fabs(v113);
    v115 = *v142;
    v116 = v144;
    (*v142)(v112, v144);
    v115(v107, v116);
    if (v114 <= 1.0)
    {
      v118 = v160;
      v119 = v161;
      sub_100018688(&v159, v160);
      v120 = (*(v119 + 16))(v118, v119);
      v121 = v157;
      v122 = v158;
      sub_100018688(v156, v157);
      v117 = v120 < (*(v122 + 16))(v121, v122);
    }

    else
    {
      v150(v152, v151);
      v147(v148, v109);
      v117 = sub_1000A1790();
      v115(v112, v116);
      v115(v107, v116);
    }

    sub_100018720(v156);
    result = sub_100018720(&v159);
    v123 = v155;
    if ((v117 & 1) == 0)
    {
LABEL_82:
      v23 = v140 + 1;
      v100 = v136 + 40;
      v101 = v135 - 1;
      if ((v140 + 1) != v134)
      {
        goto LABEL_83;
      }

      v5 = v138;
      v17 = v137;
      v18 = v132;
      v16 = v134;
      if (v134 < v132)
      {
        goto LABEL_124;
      }

      goto LABEL_32;
    }

    v124 = v154;
    if (!v141)
    {
      break;
    }

    sub_100059ABC(v155, &v159);
    v100 = v153;
    v125 = v153[1];
    *v123 = *v153;
    v123[1] = v125;
    *(v123 + 4) = *(v100 + 32);
    sub_100059ABC(&v159, v100);
    v126 = __CFADD__(v124, 1);
    v102 = v124 + 1;
    if (v126)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_10005748C(char *a1, char *a2, char *a3, char *a4)
{
  v93 = sub_1000A1810();
  v8 = __chkstk_darwin(v93);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v80 - v11;
  v13 = (a2 - a1) / 40;
  v14 = (a3 - a2) / 40;
  v95 = a1;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[40 * v14] <= a4)
    {
      v45 = v10;
      memmove(a4, a2, 40 * v14);
      v10 = v45;
    }

    v83 = &a4[40 * v14];
    if (a3 - a2 < 40 || a2 <= v95)
    {
      v44 = a2;
    }

    else
    {
      v46 = v12;
      v47 = v94;
      v103 = a4;
      v81 = (v10 + 8);
      v90 = v46;
LABEL_25:
      v92 = a2;
      v44 = a2 - 40;
      v48 = (v83 - 40);
      v49 = a3 - 40;
      v82 = a2 - 40;
      do
      {
        v96 = v49;
        v91 = v48;
        sub_10002F244(v48, v100);
        sub_10002F244(v44, v97);
        v50 = v101;
        v51 = v102;
        v52 = sub_100018688(v100, v101);
        v53 = *(v51 + 8);
        v86 = v52;
        v88 = v51;
        v89 = v50;
        v87 = v53;
        v53(v50, v51);
        v54 = v98;
        v55 = v99;
        v56 = sub_100018688(v97, v98);
        v57 = *(v55 + 8);
        v84 = v56;
        v85 = v57;
        v57(v54, v55);
        sub_1000A1760();
        v59 = fabs(v58);
        v60 = *v81;
        v61 = v47;
        v62 = v47;
        v63 = v93;
        (*v81)(v61, v93);
        v60(v46, v63);
        if (v59 <= 1.0)
        {
          v67 = v101;
          v68 = v102;
          sub_100018688(v100, v101);
          v69 = (*(v68 + 16))(v67, v68);
          v70 = v98;
          v71 = v99;
          sub_100018688(v97, v98);
          v66 = v69 < (*(v71 + 16))(v70, v71);
        }

        else
        {
          v64 = v62;
          v87(v89, v88);
          v85(v54, v55);
          v65 = v90;
          v66 = sub_1000A1790();
          v60(v64, v63);
          v60(v65, v63);
          v46 = v65;
        }

        sub_100018720(v97);
        sub_100018720(v100);
        a4 = v103;
        a3 = v96;
        v47 = v94;
        v44 = v82;
        if (v66)
        {
          v75 = v91;
          if (v96 + 40 != v92)
          {
            v76 = *v82;
            v77 = *(v82 + 1);
            *(v96 + 4) = *(v82 + 4);
            *a3 = v76;
            *(a3 + 1) = v77;
          }

          v83 = (v75 + 40);
          if (v75 + 40 <= a4 || (a2 = v44, v44 <= v95))
          {
            v83 = (v75 + 40);
            goto LABEL_41;
          }

          goto LABEL_25;
        }

        v72 = v91;
        if (v96 + 40 != (v91 + 40))
        {
          v73 = *v91;
          v74 = *(v91 + 16);
          *(v96 + 4) = *(v91 + 32);
          *a3 = v73;
          *(a3 + 1) = v74;
        }

        v49 = a3 - 40;
        v48 = v72 - 40;
      }

      while (v72 > a4);
      v83 = v72;
      v44 = v92;
    }
  }

  else
  {
    if (a4 != a1 || &a1[40 * v13] <= a4)
    {
      v15 = v10;
      memmove(a4, a1, 40 * v13);
      v10 = v15;
    }

    v83 = &a4[40 * v13];
    if (a2 - a1 >= 40 && a2 < a3)
    {
      v16 = a2;
      v17 = (v10 + 8);
      v18 = v12;
      v96 = a3;
      v90 = v12;
      while (1)
      {
        v92 = v16;
        sub_10002F244(v16, v100);
        v103 = a4;
        sub_10002F244(a4, v97);
        v19 = v101;
        v20 = v102;
        v21 = sub_100018688(v100, v101);
        v22 = *(v20 + 8);
        v87 = v21;
        v91 = v19;
        v88 = v22;
        v89 = v20;
        v22(v19, v20);
        v23 = v98;
        v24 = v99;
        v25 = sub_100018688(v97, v98);
        v26 = *(v24 + 8);
        v27 = v94;
        v84 = v25;
        v86 = v23;
        v85 = v26;
        v26(v23, v24);
        sub_1000A1760();
        v29 = fabs(v28);
        v30 = v17;
        v31 = *v17;
        v32 = v93;
        v31(v27, v93);
        v31(v18, v32);
        if (v29 <= 1.0)
        {
          v35 = v101;
          v34 = v102;
          sub_100018688(v100, v101);
          LODWORD(v35) = (*(v34 + 16))(v35, v34);
          v37 = v98;
          v36 = v99;
          sub_100018688(v97, v98);
          v33 = v35 < (*(v36 + 16))(v37, v36);
          v18 = v90;
        }

        else
        {
          v18 = v90;
          v88(v91, v89);
          v85(v86, v24);
          v33 = sub_1000A1790();
          v31(v27, v32);
          v31(v18, v32);
        }

        v17 = v30;
        sub_100018720(v97);
        sub_100018720(v100);
        a4 = v103;
        v38 = v96;
        v16 = v92;
        if ((v33 & 1) == 0)
        {
          break;
        }

        v39 = v92;
        v40 = v95;
        v16 = (v92 + 40);
        if (v95 != v92)
        {
          goto LABEL_15;
        }

LABEL_16:
        v43 = v40 + 40;
        if (a4 >= v83)
        {
          v44 = v43;
          goto LABEL_41;
        }

        v95 = v43;
        if (v16 >= v38)
        {
          goto LABEL_18;
        }
      }

      v39 = v103;
      v40 = v95;
      a4 = v103 + 40;
      if (v95 == v103)
      {
        goto LABEL_16;
      }

LABEL_15:
      v41 = *v39;
      v42 = *(v39 + 1);
      *(v40 + 4) = *(v39 + 4);
      *v40 = v41;
      *(v40 + 1) = v42;
      goto LABEL_16;
    }

LABEL_18:
    v44 = v95;
  }

LABEL_41:
  v78 = (v83 - a4) / 40;
  if (v44 != a4 || v44 >= &a4[40 * v78])
  {
    memmove(v44, a4, 40 * v78);
  }

  return 1;
}

uint64_t sub_100057C7C(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100084B98(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for VisibleRectChangedEvent(0);
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100057DCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100017A54(&qword_1000E73F0);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for VisibleRectChangedEvent(0);
  v40 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  result = __chkstk_darwin(v12);
  v15 = &v37 - v14;
  v16 = (a3 >> 1) - a2;
  v38 = v17;
  v39 = a4;
  if (a3 >> 1 == a2)
  {
    v18 = &_swiftEmptyArrayStorage;
  }

  else
  {
    if ((a3 >> 1) <= a2)
    {
      __break(1u);
      return result;
    }

    v31 = (v40 + 56);
    v32 = (v40 + 48);
    v33 = a1 + 40 * a2;
    v18 = &_swiftEmptyArrayStorage;
    do
    {
      sub_10002F244(v33, v42);
      sub_100059ABC(v42, v41);
      sub_100017A54(&qword_1000E73D8);
      v34 = swift_dynamicCast();
      (*v31)(v10, v34 ^ 1u, 1, v11);
      if ((*v32)(v10, 1, v11) == 1)
      {
        sub_10001FE6C(v10, &qword_1000E73F0);
      }

      else
      {
        sub_100059CB8(v10, v15, type metadata accessor for VisibleRectChangedEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_100084B98(0, v18[2] + 1, 1, v18);
        }

        v36 = v18[2];
        v35 = v18[3];
        if (v36 >= v35 >> 1)
        {
          v18 = sub_100084B98(v35 > 1, v36 + 1, 1, v18);
        }

        v18[2] = v36 + 1;
        sub_100059CB8(v15, v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, type metadata accessor for VisibleRectChangedEvent);
      }

      v33 += 40;
      --v16;
    }

    while (v16);
  }

  if (!v18[2])
  {
    v19 = type metadata accessor for AppearanceEvent(0);
    v20 = v39;
    if (*(v39 + *(v19 + 24)) != 1)
    {

      sub_10001A9D0();
      v21 = sub_1000A3190();
      sub_1000A3090();
      sub_1000A1DB0();

      v22 = sub_1000A1810();
      v23 = v38;
      (*(*(v22 - 8) + 16))(v38, v20, v22);
      v24 = v23 + *(v11 + 20);
      *v24 = 0;
      *(v24 + 8) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(v24 + 16) = _Q0;
      sub_100017A54(&qword_1000E73F8);
      v30 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v18 = swift_allocObject();
      *(v18 + 1) = xmmword_1000AA7C0;
      sub_100059CB8(v23, v18 + v30, type metadata accessor for VisibleRectChangedEvent);
    }
  }

  return v18;
}

uint64_t sub_1000581F4(void *a1)
{
  v2 = sub_1000A1700();
  v168 = *(v2 - 8);
  __chkstk_darwin(v2);
  v141 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v4 - 8);
  v6 = &v138 - v5;
  v143 = sub_100017A54(&qword_1000E62D0);
  __chkstk_darwin(v143);
  v142 = &v138 - v7;
  v8 = type metadata accessor for EngagementEvent(0);
  v167 = *(v8 - 8);
  __chkstk_darwin(v8);
  v149 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100017A54(&qword_1000E5818);
  v11 = __chkstk_darwin(v10 - 8);
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = &v138 - v13;
  v152 = sub_100017A54(&qword_1000E73C8);
  __chkstk_darwin(v152);
  v154 = &v138 - v14;
  v15 = type metadata accessor for DisappearanceEvent(0);
  v16 = __chkstk_darwin(v15 - 8);
  v147 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v138 - v18;
  v20 = sub_1000A1810();
  v170 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v163 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v169 = &v138 - v23;
  v160 = sub_1000A1580();
  v166 = *(v160 - 8);
  v24 = __chkstk_darwin(v160);
  v159 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v172 = &v138 - v26;
  v27 = sub_100017A54(&qword_1000E73D0);
  __chkstk_darwin(v27 - 8);
  v29 = &v138 - v28;
  v30 = type metadata accessor for Session();
  v173 = *(v30 - 8);
  v174 = v30;
  v31 = __chkstk_darwin(v30);
  v162 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v150 = &v138 - v34;
  v35 = __chkstk_darwin(v33);
  v164 = &v138 - v36;
  v37 = __chkstk_darwin(v35);
  v179 = &v138 - v38;
  v39 = __chkstk_darwin(v37);
  v178 = &v138 - v40;
  __chkstk_darwin(v39);
  v177 = &v138 - v41;
  v175 = type metadata accessor for AppearanceEvent(0);
  v42 = __chkstk_darwin(v175);
  v146 = &v138 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __chkstk_darwin(v42);
  v171 = &v138 - v45;
  __chkstk_darwin(v44);
  v47 = &v138 - v46;
  v181 = a1;

  sub_100056318(&v181);
  v145 = v6;
  v144 = v2;
  v48 = v181[2];
  v155 = v8;
  v176 = v19;
  v161 = v20;
  if (v48)
  {
    v49 = &_swiftEmptyArrayStorage;
    v165 = v181;
    v50 = v181 + 4;
    v51 = &_swiftEmptyArrayStorage;
    v52 = v174;
    do
    {
      sub_10002F244(v50, &v181);
      sub_10002F244(&v181, &v180);
      sub_100017A54(&qword_1000E73D8);
      if (swift_dynamicCast())
      {
        sub_100059C58(v47, type metadata accessor for AppearanceEvent);
        if (*(v51 + 16))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_100084BE4(0, v49[2] + 1, 1, v49);
          }

          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            v49 = sub_100084BE4((v53 > 1), v54 + 1, 1, v49);
          }

          v49[2] = v54 + 1;
          v49[v54 + 4] = v51;

          v51 = &_swiftEmptyArrayStorage;
        }
      }

      sub_10002F244(&v181, &v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_100084BC0(0, *(v51 + 16) + 1, 1, v51);
      }

      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        v51 = sub_100084BC0((v55 > 1), v56 + 1, 1, v51);
      }

      sub_100018720(&v181);
      *(v51 + 16) = v56 + 1;
      sub_100059ABC(&v180, v51 + 40 * v56 + 32);
      v50 += 5;
      --v48;
    }

    while (v48);
  }

  else
  {

    v51 = &_swiftEmptyArrayStorage;
    v49 = &_swiftEmptyArrayStorage;
    v52 = v174;
  }

  v57 = v164;
  if (*(v51 + 16))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_86:
      v49 = sub_100084BE4(0, v49[2] + 1, 1, v49);
    }

    v59 = v49[2];
    v58 = v49[3];
    v60 = (v59 + 1);
    if (v59 >= v58 >> 1)
    {
      v49 = sub_100084BE4((v58 > 1), v59 + 1, 1, v49);
    }

    v49[2] = v60;
    v49[v59 + 4] = v51;
    goto LABEL_23;
  }

  v60 = v49[2];
  if (v60)
  {
LABEL_23:
    v51 = 0;
    v61 = (v173 + 48);
    v62 = &_swiftEmptyArrayStorage;
    do
    {
      if (v51 >= v49[2])
      {
        __break(1u);
        goto LABEL_86;
      }

      v181 = v49[v51 + 4];
      sub_100055070(&v181, v29);
      if ((*v61)(v29, 1, v52) == 1)
      {
        sub_10001FE6C(v29, &qword_1000E73D0);
      }

      else
      {
        v63 = v177;
        sub_100059CB8(v29, v177, type metadata accessor for Session);
        sub_100059CB8(v63, v178, type metadata accessor for Session);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_100084B70(0, v62[2] + 1, 1, v62);
        }

        v65 = v62[2];
        v64 = v62[3];
        v66 = v62;
        if (v65 >= v64 >> 1)
        {
          v66 = sub_100084B70(v64 > 1, v65 + 1, 1, v62);
        }

        *(v66 + 16) = v65 + 1;
        v62 = v66;
        sub_100059CB8(v178, v66 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v65, type metadata accessor for Session);
      }

      ++v51;
    }

    while (v60 != v51);
    v57 = v164;
    goto LABEL_34;
  }

  v62 = &_swiftEmptyArrayStorage;
LABEL_34:

  v67 = v62[2];
  v68 = v163;
  v69 = v169;
  v70 = v162;
  if (!v67)
  {
    v73 = &_swiftEmptyArrayStorage;
LABEL_83:
    sub_100017A54(&unk_1000E5270);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1000AA450;
    v134 = v62[2];

    *(v133 + 56) = &type metadata for Int;
    *(v133 + 64) = &protocol witness table for Int;
    *(v133 + 32) = v134;
    v135 = *(v73 + 2);
    *(v133 + 96) = &type metadata for Int;
    *(v133 + 104) = &protocol witness table for Int;
    *(v133 + 72) = v135;
    sub_10001A9D0();

    v136 = sub_1000A3190();
    sub_1000A3090();
    sub_1000A1DB0();

    return v73;
  }

  v177 = (*(v173 + 80) + 32) & ~*(v173 + 80);
  v71 = v62 + v177;
  v157 = (v170 + 4);
  v72 = *(v173 + 72);
  ++v170;
  v156 = (v166 + 8);
  v151 = (v167 + 48);
  v140 = (v168 + 48);
  v138 = (v168 + 32);
  v139 = (v168 + 8);
  v73 = &_swiftEmptyArrayStorage;
  v166 = v72;
  v158 = v62;
  while (1)
  {
    v178 = v71;
    sub_100059AD4(v71, v179, type metadata accessor for Session);
    v74 = *(v73 + 2);
    if (!v74)
    {
      goto LABEL_73;
    }

    v173 = v67;
    v169 = v73;
    sub_100059AD4(&v73[v177 + (v74 - 1) * v72], v57, type metadata accessor for Session);
    v165 = (v57 + v52[7]);
    v75 = v176;
    sub_100059AD4(v165, v176, type metadata accessor for DisappearanceEvent);
    v76 = v57;
    v77 = *v157;
    v78 = v69;
    v79 = v75;
    v80 = v69;
    v81 = v161;
    (*v157)(v78, v79, v161);
    v82 = v171;
    sub_100059AD4(v57, v171, type metadata accessor for AppearanceEvent);
    v77(v68, v82, v81);
    LODWORD(v167) = sub_1000A1780();
    v83 = *v170;
    (*v170)(v68, v81);
    v168 = v83;
    (v83)(v80, v81);
    sub_100059AD4(v76, v82, type metadata accessor for AppearanceEvent);
    v77(v80, v82, v81);
    if (v167)
    {
      v84 = v176;
      sub_100059AD4(v165, v176, type metadata accessor for DisappearanceEvent);
      v77(v68, v84, v81);
      sub_1000A1560();
    }

    else
    {
      sub_1000A1570();
      v84 = v176;
    }

    v85 = v68;
    v86 = v179;
    v167 = v179 + v174[7];
    sub_100059AD4(v167, v84, type metadata accessor for DisappearanceEvent);
    v77(v80, v84, v81);
    v87 = v77;
    v88 = v171;
    sub_100059AD4(v86, v171, type metadata accessor for AppearanceEvent);
    v77(v85, v88, v81);
    v89 = sub_1000A1780();
    v90 = v85;
    v91 = v168;
    (v168)(v90, v81);
    v91(v80, v81);
    sub_100059AD4(v86, v88, type metadata accessor for AppearanceEvent);
    v77(v80, v88, v81);
    if (v89)
    {
      v92 = v176;
      sub_100059AD4(v167, v176, type metadata accessor for DisappearanceEvent);
      v93 = v163;
      v87(v163, v92, v81);
      v94 = v159;
      sub_1000A1560();
      v68 = v93;
    }

    else
    {
      v94 = v159;
      sub_1000A1570();
      v68 = v163;
    }

    v69 = v80;
    v57 = v164;
    v73 = v169;
    v95 = v172;
    v67 = v173;
    v96 = sub_1000A1550();
    v97 = *v156;
    v98 = v94;
    v99 = v160;
    (*v156)(v98, v160);
    v97(v95, v99);
    v52 = v174;
    v70 = v162;
    if ((v96 & 1) == 0 || *(v57 + *(v175 + 20)) != *(v179 + *(v175 + 20)) || *(v57 + *(v175 + 24)) != *(v179 + *(v175 + 24)))
    {
      goto LABEL_72;
    }

    v100 = v174[6];
    v101 = *(v152 + 48);
    v102 = v154;
    sub_100028B94(&v100[v57], v154, &qword_1000E5818);
    v169 = v100;
    sub_100028B94(&v100[v179], v102 + v101, &qword_1000E5818);
    v103 = *v151;
    v104 = v155;
    if ((*v151)(v102, 1, v155) != 1)
    {
      sub_100028B94(v102, v153, &qword_1000E5818);
      if (v103(v102 + v101, 1, v104) == 1)
      {
        sub_100059C58(v153, type metadata accessor for EngagementEvent);
LABEL_61:
        sub_10001FE6C(v102, &qword_1000E73C8);
        v57 = v164;
LABEL_71:
        v67 = v173;
        v52 = v174;
        v68 = v163;
LABEL_72:
        sub_100059C58(v57, type metadata accessor for Session);
        v62 = v158;
LABEL_73:
        sub_100059AD4(v179, v70, type metadata accessor for Session);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_100084B70(0, *(v73 + 2) + 1, 1, v73);
        }

        v130 = *(v73 + 2);
        v129 = *(v73 + 3);
        if (v130 >= v129 >> 1)
        {
          v73 = sub_100084B70(v129 > 1, v130 + 1, 1, v73);
        }

        sub_100059C58(v179, type metadata accessor for Session);
        *(v73 + 2) = v130 + 1;
        v72 = v166;
        sub_100059CB8(v70, &v73[v177 + v130 * v166], type metadata accessor for Session);
        goto LABEL_78;
      }

      v118 = v149;
      sub_100059CB8(v102 + v101, v149, type metadata accessor for EngagementEvent);
      v119 = v153;
      if (sub_1000A17E0())
      {
        v120 = *(v155 + 20);
        v121 = v119;
        v122 = *(v143 + 48);
        v123 = v121 + v120;
        v124 = v142;
        sub_100028B94(v123, v142, &unk_1000E5DD0);
        sub_100028B94(v118 + v120, v124 + v122, &unk_1000E5DD0);
        v125 = *v140;
        v126 = v144;
        if ((*v140)(v124, 1) == 1)
        {
          sub_100059C58(v118, type metadata accessor for EngagementEvent);
          v127 = (v125)(v124 + v122, 1, v126);
          v57 = v164;
          if (v127 != 1)
          {
            goto LABEL_69;
          }

          sub_10001FE6C(v124, &unk_1000E5DD0);
          v119 = v153;
          v102 = v154;
LABEL_81:
          sub_100059C58(v119, type metadata accessor for EngagementEvent);
          goto LABEL_48;
        }

        sub_100028B94(v124, v145, &unk_1000E5DD0);
        v128 = (v125)(v124 + v122, 1, v126);
        v57 = v164;
        if (v128 != 1)
        {
          v131 = v141;
          (*v138)(v141, v124 + v122, v126);
          sub_100059C10(&qword_1000E7B60, &type metadata accessor for URL);
          LODWORD(v168) = sub_1000A2CE0();
          v132 = *v139;
          (*v139)(v131, v126);
          sub_100059C58(v149, type metadata accessor for EngagementEvent);
          v132(v145, v126);
          sub_10001FE6C(v124, &unk_1000E5DD0);
          v119 = v153;
          v102 = v154;
          if ((v168 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_81;
        }

        sub_100059C58(v149, type metadata accessor for EngagementEvent);
        (*v139)(v145, v126);
LABEL_69:
        sub_10001FE6C(v124, &qword_1000E62D0);
        v119 = v153;
        v102 = v154;
      }

      else
      {
        sub_100059C58(v118, type metadata accessor for EngagementEvent);
        v57 = v164;
      }

LABEL_70:
      sub_100059C58(v119, type metadata accessor for EngagementEvent);
      sub_10001FE6C(v102, &qword_1000E5818);
      goto LABEL_71;
    }

    if (v103(v102 + v101, 1, v104) != 1)
    {
      goto LABEL_61;
    }

LABEL_48:
    sub_10001FE6C(v102, &qword_1000E5818);
    v168 = *(v73 + 2);
    v105 = v179;
    v106 = v164;
    v107 = (sub_1000A1790() & 1) != 0 ? v105 : v106;
    v108 = v146;
    sub_100059AD4(v107, v146, type metadata accessor for AppearanceEvent);
    v109 = v174;
    v181 = *(v106 + v174[5]);

    sub_100057C7C(v110);
    v111 = v181;
    v112 = v148;
    v52 = v109;
    sub_100028B94(&v169[v106], v148, &qword_1000E5818);
    v113 = v167;
    v114 = v165;
    v115 = (sub_1000A1790() & 1) != 0 ? v114 : v113;
    v116 = v147;
    sub_100059AD4(v115, v147, type metadata accessor for DisappearanceEvent);
    v117 = v150;
    sub_100059CB8(v108, v150, type metadata accessor for AppearanceEvent);
    *(v117 + v52[5]) = v111;
    sub_100059B3C(v112, v117 + v52[6]);
    sub_100059CB8(v116, v117 + v52[7], type metadata accessor for DisappearanceEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_100070400(v73);
    }

    v67 = v173;
    sub_100059C58(v164, type metadata accessor for Session);
    sub_100059C58(v179, type metadata accessor for Session);
    v62 = v158;
    v68 = v163;
    if (!v168)
    {
      break;
    }

    if (v168 > *(v73 + 2))
    {
      goto LABEL_88;
    }

    v72 = v166;
    sub_100059BAC(v150, &v73[v177 + (v168 - 1) * v166]);
    v57 = v164;
LABEL_78:
    v71 = v178 + v72;
    if (!--v67)
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for Session()
{
  result = qword_1000E7458;
  if (!qword_1000E7458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100059ABC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100059AD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059B3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E5818);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100059BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100059C10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100059C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100059CB8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100059D34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AppearanceEvent(0);
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
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_100017A54(&qword_1000E5818);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for DisappearanceEvent(0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100059EC8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AppearanceEvent(0);
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
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_100017A54(&qword_1000E5818);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for DisappearanceEvent(0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

void sub_10005A048()
{
  type metadata accessor for AppearanceEvent(319);
  if (v0 <= 0x3F)
  {
    sub_10005A15C(319, &qword_1000E7468, type metadata accessor for VisibleRectChangedEvent, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10005A15C(319, &unk_1000E7470, type metadata accessor for EngagementEvent, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for DisappearanceEvent(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10005A15C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10005A1D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10005A254(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_1000E7500;
  if (!qword_1000E7500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A310()
{
  result = type metadata accessor for NewsTimelineEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005A398@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v72 = type metadata accessor for RegularContentView();
  __chkstk_darwin(v72);
  v69 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_100017A54(&qword_1000E7538);
  __chkstk_darwin(v71);
  v70 = &v60 - v3;
  v68 = type metadata accessor for SmallContentView(0);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100017A54(&qword_1000E7540);
  __chkstk_darwin(v65);
  v6 = &v60 - v5;
  v7 = sub_1000A1F40();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = __chkstk_darwin(v7);
  v66 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v60 - v11;
  __chkstk_darwin(v10);
  v64 = &v60 - v13;
  v63 = type metadata accessor for RectangularContentView(0);
  __chkstk_darwin(v63);
  v61 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100017A54(&qword_1000E7548);
  __chkstk_darwin(v62);
  v60 = &v60 - v15;
  v16 = sub_100017A54(&qword_1000E7550);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v60 - v20;
  v22 = type metadata accessor for Item(0);
  v23 = *(v22 - 8);
  v24 = __chkstk_darwin(v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v60 - v27;
  v29 = v1 + *(type metadata accessor for NewsTimelineEntry() + 20);
  v73 = *(v29 + *(type metadata accessor for TodayContent() + 40)) + OBJC_IVAR____TtC7NewsTag20TrackableWidgetState_layoutContext;
  v30 = *(v73 + 16);
  if (v30 == 1)
  {
    v32 = v67;
    v33 = v68;
    v72 = v6;
    sub_10005AF30(v19);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      v31 = v19;
      goto LABEL_7;
    }

    sub_10005B580(v19, v26);
    v47 = v26;
    v48 = v32;
    v49 = v47;
    sub_10005B5E4(v47, v48 + v33[7], type metadata accessor for Item);
    sub_10005B5E4(v29, v48 + v33[8], type metadata accessor for TodayContent);
    v50 = v73;
    sub_10005B5E4(v73, v48 + v33[9], type metadata accessor for LayoutContext);
    KeyPath = swift_getKeyPath();
    *(v48 + v33[6]) = swift_getKeyPath();
    sub_100017A54(&qword_1000E5408);
    swift_storeEnumTagMultiPayload();
    *v48 = KeyPath;
    *(v48 + 8) = 0;
    *(v48 + 16) = swift_getKeyPath();
    v52 = type metadata accessor for LayoutContext();
    *(v48 + 48) = 0;
    *(v48 + 32) = 0;
    *(v48 + 40) = 0;
    *(v48 + 24) = 0;
    if (*(v50 + *(v52 + 44)) == 1)
    {
      sub_1000A1F30();
      v53 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10005B714(&qword_1000E53D8, &type metadata accessor for RedactionReasons);
      sub_100017A54(&qword_1000E53E0);
      sub_10005B4B4();
      v53 = v75;
      sub_1000A3230();
    }

    v59 = sub_10005B714(&qword_1000E7560, type metadata accessor for SmallContentView);
    sub_1000A2660();
    (*(v74 + 8))(v12, v53);
    sub_10005B6B4(v48, type metadata accessor for SmallContentView);
    v77 = v33;
    v78 = v59;
    swift_getOpaqueTypeConformance2();
    v57 = sub_1000A2820();
    v58 = v49;
LABEL_21:
    sub_10005B6B4(v58, type metadata accessor for Item);
    result = v57;
    goto LABEL_22;
  }

  if (v30 != 11)
  {
    v34 = v72;
    v35 = v69;
    sub_10005B5E4(v29, v69 + *(v72 + 24), type metadata accessor for TodayContent);
    v36 = v73;
    sub_10005B5E4(v73, v35 + v34[7], type metadata accessor for LayoutContext);
    *v35 = swift_getKeyPath();
    sub_100017A54(&qword_1000E6990);
    swift_storeEnumTagMultiPayload();
    v37 = swift_getKeyPath();
    v38 = v35 + v34[5];
    *v38 = v37;
    v39 = type metadata accessor for LayoutContext();
    *(v38 + 2) = 0;
    *(v38 + 3) = 0;
    *(v38 + 1) = 0;
    v38[32] = 0;
    if (*(v36 + *(v39 + 44)) == 1)
    {
      v40 = v66;
      sub_1000A1F30();
      v41 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10005B714(&qword_1000E53D8, &type metadata accessor for RedactionReasons);
      sub_100017A54(&qword_1000E53E0);
      sub_10005B4B4();
      v40 = v66;
      v41 = v75;
      sub_1000A3230();
    }

    v54 = sub_10005B714(&qword_1000E7558, type metadata accessor for RegularContentView);
    sub_1000A2660();
    (*(v74 + 8))(v40, v41);
    sub_10005B6B4(v35, type metadata accessor for RegularContentView);
    v77 = v34;
    v78 = v54;
    swift_getOpaqueTypeConformance2();
    goto LABEL_16;
  }

  sub_10005AF30(v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    sub_10005B580(v21, v28);
    v42 = v61;
    sub_10005B5E4(v28, v61, type metadata accessor for Item);
    v43 = v63;
    sub_10005B5E4(v29, v42 + *(v63 + 20), type metadata accessor for TodayContent);
    v44 = v73;
    sub_10005B5E4(v73, v42 + v43[6], type metadata accessor for LayoutContext);
    if (*(v44 + *(type metadata accessor for LayoutContext() + 44)) == 1)
    {
      v45 = v64;
      sub_1000A1F30();
      v46 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10005B714(&qword_1000E53D8, &type metadata accessor for RedactionReasons);
      sub_100017A54(&qword_1000E53E0);
      sub_10005B4B4();
      v45 = v64;
      v46 = v75;
      sub_1000A3230();
    }

    v56 = sub_10005B714(&qword_1000E7568, type metadata accessor for RectangularContentView);
    sub_1000A2660();
    (*(v74 + 8))(v45, v46);
    sub_10005B6B4(v42, type metadata accessor for RectangularContentView);
    v77 = v43;
    v78 = v56;
    swift_getOpaqueTypeConformance2();
    v57 = sub_1000A2820();
    v58 = v28;
    goto LABEL_21;
  }

  v31 = v21;
LABEL_7:
  sub_10005B518(v31);
LABEL_16:
  result = sub_1000A2820();
LABEL_22:
  *v76 = result;
  return result;
}

uint64_t sub_10005AF30@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Item(0);
  v15 = *(v2 - 8);
  v3 = __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &v14 - v7;
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  type metadata accessor for NewsTimelineEntry();
  v11 = sub_100061C74();
  if (*(v11 + 2))
  {
    sub_10005B5E4(v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v10, type metadata accessor for Item);

    sub_10005B580(v10, v8);
    sub_10005B5E4(v8, v5, type metadata accessor for Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10005B6B4(v5, type metadata accessor for Item);
      sub_10005B580(v8, a1);
      return (*(v15 + 56))(a1, 0, 1, v2);
    }

    else
    {
      sub_10005B580(v8, a1);
      (*(v15 + 56))(a1, 0, 1, v2);
      return sub_10005B6B4(v5, type metadata accessor for Item);
    }
  }

  else
  {

    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v2);
  }
}

uint64_t sub_10005B1A4()
{
  sub_1000A20D0();
  sub_10005B714(qword_1000E7570, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000A2150();
  return v1;
}

uint64_t sub_10005B220@<X0>(_BYTE *a1@<X8>)
{
  sub_1000A20D0();
  sub_10005B714(qword_1000E7570, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000A2150();
  *a1 = v3;
  return result;
}

uint64_t sub_10005B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10005B484@<X0>(void *a1@<X8>)
{
  result = sub_1000A2100();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_10005B4B4()
{
  result = qword_1000E53E8;
  if (!qword_1000E53E8)
  {
    sub_100017A9C(&qword_1000E53E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E53E8);
  }

  return result;
}

uint64_t sub_10005B518(uint64_t a1)
{
  v2 = sub_100017A54(&qword_1000E7550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10005B580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B5E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005B6B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10005B714(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005B768()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10005B7D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  __chkstk_darwin(a1);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1B10();
  sub_1000A2B70();
  return (*(v4 + 8))(v6, a3);
}

uint64_t sub_10005B8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v15 = *(a6 - 8);
  __chkstk_darwin(a1);
  v17 = &v19 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1B10();
  a8(a1, a2, a3, a4, a6, a7);
  return (*(v15 + 8))(v17, a6);
}

uint64_t sub_10005B9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  __chkstk_darwin(a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1B10();
  v6 = sub_1000A2B80();
  (*(v3 + 8))(v5, a2);
  return v6;
}

uint64_t sub_10005BB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10005BBFC;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10005BBFC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10005BCF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10005BDA4;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

id sub_10005BDB4(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  ObjectType = swift_getObjectType();
  v13 = sub_1000A30E0();
  v3 = *(v13 - 8);
  __chkstk_darwin(v13);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000A30D0();
  __chkstk_darwin(v6);
  v7 = sub_1000A2930();
  __chkstk_darwin(v7 - 8);
  *&v2[OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_cachedScoreProfiles] = &_swiftEmptyDictionarySingleton;
  v12 = OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_cacheAccessQueue;
  v8 = sub_100028E34(0, &qword_1000E87E0);
  v11[0] = "cacheAccessQueue";
  v11[1] = v8;
  sub_1000A2910();
  v18 = &_swiftEmptyArrayStorage;
  sub_10002E52C();
  sub_100017A54(&qword_1000E5AE8);
  sub_100029050(&qword_1000E5AF0, &qword_1000E5AE8);
  sub_1000A3230();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v13);
  *&v2[v12] = sub_1000A3120();
  v9 = v16;
  *&v2[OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_scoringService] = v15;
  *&v2[OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_configurationSet] = v9;
  v17.receiver = v2;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "init");
}

uint64_t sub_10005C060@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X8>)
{
  v8 = [objc_allocWithZone(FCMapTable) init];
  v9 = a1;
  v77 = v8;
  v84 = &_swiftEmptyArrayStorage;
  v78 = a1;
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v81 = a2;
  v72 = a3;
  if (v10)
  {
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_cachedScoreProfiles;
      v13 = v9 & 0xC000000000000001;
      v79 = &_swiftEmptyArrayStorage;
      while (1)
      {
        if (v13)
        {
          v16 = sub_1000A32D0();
        }

        else
        {
          v16 = *(v9 + 8 * v11 + 32);
          swift_unknownObjectRetain();
        }

        v17 = [v16 itemID];
        v18 = sub_1000A2D40();
        v20 = v19;

        swift_beginAccess();
        v21 = *(v81 + v12);
        if (!*(v21 + 16))
        {
          break;
        }

        v22 = sub_10003191C(v18, v20);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_15;
        }

        v14 = *(*(v21 + 56) + 8 * v22);
        swift_endAccess();
        v15 = v14;
        [v77 setObject:v15 forKey:v16];

        swift_unknownObjectRelease();
LABEL_7:
        ++v11;
        v9 = v78;
        if (v10 == v11)
        {
          goto LABEL_19;
        }
      }

LABEL_15:
      swift_endAccess();
      swift_unknownObjectRetain();
      sub_1000A2EF0();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000A2F50();
      }

      sub_1000A2F80();
      swift_unknownObjectRelease();
      v79 = v84;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_54;
  }

  v79 = &_swiftEmptyArrayStorage;
LABEL_19:
  sub_100017A54(&unk_1000E5270);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1000AA7D0;
  v82 = 0;
  v83 = 0xE000000000000000;
  v4 = v81;
  sub_1000A3370();
  v26 = v82;
  v27 = v83;
  *(v25 + 56) = &type metadata for String;
  *(v25 + 64) = sub_10001A97C();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  v28 = [v77 count];
  *(v25 + 96) = &type metadata for UInt;
  *(v25 + 104) = &protocol witness table for UInt;
  *(v25 + 72) = v28;
  v3 = v79;
  if (v79 >> 62)
  {
    v29 = sub_1000A33D0();
  }

  else
  {
    v29 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v25 + 136) = &type metadata for Int;
  *(v25 + 144) = &protocol witness table for Int;
  *(v25 + 112) = v29;
  sub_100028E34(0, &qword_1000E76B0);
  v30 = sub_1000A3190();
  sub_1000A3090();
  sub_1000A1DB0();

  if (v79 >> 62)
  {
    if (!sub_1000A33D0())
    {
      goto LABEL_55;
    }

LABEL_25:
    v82 = *(v81 + OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_scoringService);
    v31 = v82;
    sub_1000A1D30();
    v32 = v31;
    a3 = &v82;
    sub_1000A1CB0();

    if (!(v79 >> 62))
    {
      v33 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_55;
      }

      goto LABEL_27;
    }

LABEL_54:
    v33 = sub_1000A33D0();
    if (!v33)
    {
      goto LABEL_55;
    }

LABEL_27:
    if (v33 >= 1)
    {
      v34 = 0;
      v75 = v3 & 0xC000000000000001;
      v76 = OBJC_IVAR____TtC7NewsTag28WidgetPersonalizationService_cachedScoreProfiles;
      v35 = &stru_1000E1000;
      v74 = v33;
      while (1)
      {
        if (v75)
        {
          v39 = sub_1000A32D0();
        }

        else
        {
          v39 = *(v3 + 8 * v34 + 32);
          swift_unknownObjectRetain();
        }

        v40 = [v39 itemID];
        a2 = sub_1000A2D40();
        v42 = v41;

        v80 = v39;
        v43 = [v39 v35[165].attr];
        swift_beginAccess();
        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3 = *(v4 + v76);
          v3 = v42;
          v46 = sub_10003191C(a2, v42);
          v47 = a3[2];
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            v62 = sub_1000A33D0();
            v9 = v78;
            v10 = v62;
            goto LABEL_3;
          }

          v4 = v45;
          v50 = a2;
          if (a3[3] >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10006BC94();
            }
          }

          else
          {
            sub_10006A730(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_10003191C(a2, v3);
            if ((v4 & 1) != (v52 & 1))
            {
              goto LABEL_69;
            }

            v46 = v51;
          }

          a2 = v79;
          if (v4)
          {
            v36 = a3[7];
            v37 = v36[v46];
            v36[v46] = v43;
          }

          else
          {
            a3[(v46 >> 6) + 8] = (a3[(v46 >> 6) + 8] | (1 << v46));
            v58 = (a3[6] + 16 * v46);
            *v58 = v50;
            v58[1] = v3;
            *(a3[7] + v46) = v43;
            v59 = a3[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_50;
            }

            a3[2] = v61;
          }

          v4 = v81;
          *(v81 + v76) = a3;
          v33 = v74;
          v3 = v79;
        }

        else
        {
          v53 = sub_10003191C(a2, v42);
          v55 = v54;

          if (v55)
          {
            v56 = swift_isUniquelyReferenced_nonNull_native();
            v57 = *(v4 + v76);
            if (!v56)
            {
              sub_10006BC94();
            }

            sub_100085DA0(v53, v57);
            *(v4 + v76) = v57;
          }
        }

        ++v34;
        swift_endAccess();
        v35 = &stru_1000E1000;
        v38 = [v80 scoreProfile];
        [v77 setObject:v38 forKey:v80];
        swift_unknownObjectRelease();

        if (v33 == v34)
        {
          goto LABEL_55;
        }
      }
    }

LABEL_68:
    __break(1u);
LABEL_69:
    sub_1000A3590();
    __break(1u);
    goto LABEL_70;
  }

  if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_25;
  }

LABEL_55:
  swift_getKeyPath();
  swift_retain_n();
  a3 = v77;

  v82 = sub_10005D1C4(v63);
  sub_10005E6AC(&v82, a3);
  if (!v73)
  {

    v64 = v82;
    if ((v82 & 0x8000000000000000) != 0 || (v82 & 0x4000000000000000) != 0)
    {
      v65 = sub_1000A33D0();
      if (v65)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v65 = *(v82 + 16);
      if (v65)
      {
LABEL_59:
        if (v65 >= 1)
        {
          v66 = 0;
          do
          {
            if ((v64 & 0xC000000000000001) != 0)
            {
              v67 = sub_1000A32D0();
            }

            else
            {
              v67 = *(v64 + 8 * v66 + 32);
              swift_unknownObjectRetain();
            }

            ++v66;
            v68 = [a3 objectForKey:v67];
            [v67 setScoreProfile:v68];
            swift_unknownObjectRelease();
          }

          while (v65 != v66);
          goto LABEL_66;
        }

        __break(1u);
        goto LABEL_68;
      }
    }

LABEL_66:
    v69 = [objc_allocWithZone(FCFeedPersonalizedItems) init];
    sub_100017A54(&qword_1000E7720);
    isa = sub_1000A2F00().super.isa;

    [v69 setSortedItems:isa];

    [v69 setScoreProfiles:a3];

    *v72 = v69;
    return result;
  }

LABEL_70:

  __break(1u);
  return result;
}

BOOL sub_10005C930(void *a1, uint64_t *a2, id a3)
{
  v4 = *a2;
  v5 = [a3 objectForKey:*a1];
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = v5;
    swift_getAtKeyPath();

    v7 = v12;
  }

  v9 = [a3 objectForKey:v4];
  if (v9)
  {
    v10 = v9;
    swift_getAtKeyPath();

    v6 = v12;
  }

  return v6 < v7;
}

uint64_t sub_10005CE74(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100017A54(&qword_1000E76B8);
    v2 = sub_1000A3400();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    v9 = 0;
LABEL_11:
    v10 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v5)) | (v9 << 6)));

    v11 = v10;
    sub_1000A3000();

    return 0;
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        return v2;
      }

      v5 = *(a1 + 64 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
  }

  return result;
}

void *sub_10005D1C4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_1000A33D0();
  if (!v3)
  {
LABEL_7:

    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100085268(v3, 0);
  sub_10005D258(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10005D258(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1000A33D0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
      result = sub_1000A33D0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100029050(&qword_1000E7738, &qword_1000E7730);
          for (i = 0; i != v6; ++i)
          {
            sub_100017A54(&qword_1000E7730);
            v9 = sub_1000515C0(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100017A54(&qword_1000E7720);
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

id sub_10005D408(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = a1;
    v3 = sub_1000A33D0();
    a1 = v2;
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    __chkstk_darwin(a1);
    sub_100028E34(0, &qword_1000E7728);
    sub_1000A3100();
    return v7;
  }

  v4 = [objc_allocWithZone(FCFeedPersonalizedItems) init];
  sub_100017A54(&qword_1000E7720);
  isa = sub_1000A2F00().super.isa;
  [v4 setSortedItems:isa];

  v6 = [objc_allocWithZone(FCMapTable) init];
  [v4 setScoreProfiles:v6];

  return v4;
}

uint64_t sub_10005D58C(char *__dst, char *__src, char *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v11] <= a4)
    {
      memmove(a4, __dst, 8 * v11);
    }

    v15 = &v5[8 * v11];
    if (v9 < 8 || v7 >= v6)
    {
LABEL_24:
      v7 = v8;
      goto LABEL_47;
    }

    while (1)
    {
      v16 = *v7;
      v17 = *v5;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [a5 objectForKey:v16];
      if (v18)
      {
        v19 = v18;
        swift_getAtKeyPath();

        v20 = v37;
      }

      else
      {
        v20 = 0.0;
      }

      v21 = [a5 objectForKey:v17];
      if (v21)
      {
        v22 = v21;
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v37 >= v20)
        {
          goto LABEL_20;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v20 <= 0.0)
        {
LABEL_20:
          v23 = v5;
          v24 = v8 == v5;
          v5 += 8;
          if (v24)
          {
            goto LABEL_22;
          }

LABEL_21:
          *v8 = *v23;
          goto LABEL_22;
        }
      }

      v23 = v7;
      v24 = v8 == v7;
      v7 += 8;
      if (!v24)
      {
        goto LABEL_21;
      }

LABEL_22:
      v8 += 8;
      if (v5 >= v15 || v7 >= v6)
      {
        goto LABEL_24;
      }
    }
  }

  if (a4 != __src || &__src[8 * v14] <= a4)
  {
    memmove(a4, __src, 8 * v14);
  }

  v15 = &v5[8 * v14];
  if (v12 >= 8 && v7 > v8)
  {
LABEL_30:
    v35 = v7;
    v25 = v7 - 8;
    v6 -= 8;
    v26 = v15;
    while (1)
    {
      v27 = *(v26 - 1);
      v26 -= 8;
      v7 = v25;
      v28 = *v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v29 = [a5 objectForKey:v27];
      if (v29)
      {
        v30 = v29;
        swift_getAtKeyPath();

        v31 = v37;
      }

      else
      {
        v31 = 0.0;
      }

      v32 = [a5 objectForKey:{v28, v35}];
      if (v32)
      {
        v33 = v32;
        swift_getAtKeyPath();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v37 < v31)
        {
          goto LABEL_41;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v31 > 0.0)
        {
LABEL_41:
          if (v6 + 8 != v35)
          {
            *v6 = *v7;
          }

          if (v15 <= v5 || v7 <= v8)
          {
            break;
          }

          goto LABEL_30;
        }
      }

      v25 = v7;
      if (v6 + 8 != v15)
      {
        *v6 = *v26;
      }

      v6 -= 8;
      v15 = v26;
      if (v26 <= v5)
      {
        v15 = v26;
        v7 = v35;
        break;
      }
    }
  }

LABEL_47:
  if (v7 != v5 || v7 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v7, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

uint64_t sub_10005D948(char **a1, char *a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v22 = a4;

  v23 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v23 = sub_1000701E8(v23);
  }

  v18 = v5;
  *v5 = v23;
  v8 = v23 + 16;
  v7 = *(v23 + 2);
  if (v7 < 2)
  {
LABEL_10:

    *v18 = v23;

    return 1;
  }

  else
  {
    v19 = (v23 + 16);
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v23[16 * v7];
      v5 = *v10;
      v11 = &v8[16 * v7];
      v12 = *(v11 + 1);
      __dst = (v9 + 8 * *v10);
      __src = (v9 + 8 * *v11);
      v13 = (v9 + 8 * v12);
      v14 = v22;

      sub_10005D58C(__dst, __src, v13, a2, v14);
      if (v4)
      {

        *v18 = v23;

        return 1;
      }

      if (v12 < v5)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v23 + 16;
      v15 = *v19;
      if (v7 - 2 >= *v19)
      {
        goto LABEL_14;
      }

      *v10 = v5;
      *(v10 + 1) = v12;
      v16 = v15 - v7;
      if (v15 < v7)
      {
        goto LABEL_15;
      }

      v7 = v15 - 1;
      memmove(v11, v11 + 16, 16 * v16);
      *v19 = v7;
      if (v7 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v18 = v23;

    __break(1u);
  }

  return result;
}

void sub_10005DB30(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v120 = &_swiftEmptyArrayStorage;
  v5 = a3[1];
  v6 = a5;
  swift_retain_n();
  v7 = v6;
  v8 = v7;
  if (v5 >= 1)
  {
    v112 = &_swiftEmptyArrayStorage;
    v9 = 0;
    v116 = v7;
    do
    {
      v10 = v9;
      v11 = v9 + 1;
      if (v9 + 1 >= v5)
      {
        v24 = v112;
        v25 = a4;
      }

      else
      {
        v12 = *a3;
        v119 = *(*a3 + 8 * v11);
        v118 = *(v12 + 8 * v9);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v13 = sub_10005C930(&v119, &v118, v8);
        if (v117)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_110;
        }

        v14 = v13;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v15 = v10 + 2;
        if (v10 + 2 < v5)
        {
          v107 = v10;
          v16 = (v12 + 8 * v10 + 16);
          do
          {
            v18 = *(v16 - 1);
            v17 = *v16;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v19 = [v8 objectForKey:v17];
            if (v19)
            {
              v119 = v19;
              v20 = v19;
              swift_getAtKeyPath();

              v21 = v118;
            }

            else
            {
              v21 = 0.0;
            }

            v22 = [v8 objectForKey:v18];
            if (v22)
            {
              v23 = v22;
              v119 = v22;
              swift_getAtKeyPath();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              if (((v14 ^ (v118 >= v21)) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            else
            {
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              if (v14 == v21 <= 0.0)
              {
                goto LABEL_19;
              }
            }

            ++v16;
            ++v15;
          }

          while (v5 != v15);
          v15 = v5;
LABEL_19:
          v10 = v107;
        }

        v24 = v112;
        v25 = a4;
        if (v14)
        {
          if (v15 < v10)
          {
            goto LABEL_133;
          }

          if (v10 < v15)
          {
            v26 = v15;
            v27 = 8 * v15 - 8;
            v28 = 8 * v10;
            v11 = v15;
            v29 = v10;
            while (1)
            {
              if (v29 != --v26)
              {
                v30 = *a3;
                if (!*a3)
                {
                  goto LABEL_136;
                }

                v31 = *(v30 + v28);
                *(v30 + v28) = *(v30 + v27);
                *(v30 + v27) = v31;
              }

              ++v29;
              v27 -= 8;
              v28 += 8;
              if (v29 >= v26)
              {
                goto LABEL_29;
              }
            }
          }
        }

        v11 = v15;
      }

LABEL_29:
      v32 = a3[1];
      if (v11 >= v32)
      {
        v34 = v11;
        if (v11 < v10)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (__OFSUB__(v11, v10))
        {
          goto LABEL_130;
        }

        if (v11 - v10 >= v25)
        {
          goto LABEL_38;
        }

        if (__OFADD__(v10, v25))
        {
          goto LABEL_131;
        }

        if (v10 + v25 >= v32)
        {
          v33 = a3[1];
        }

        else
        {
          v33 = (v10 + v25);
        }

        if (v33 < v10)
        {
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:

          __break(1u);
LABEL_135:

          __break(1u);
LABEL_136:

          __break(1u);
LABEL_137:

          __break(1u);
LABEL_138:

          __break(1u);
          return;
        }

        if (v11 == v33)
        {
LABEL_38:
          v34 = v11;
          if (v11 < v10)
          {
            goto LABEL_129;
          }
        }

        else
        {
          v88 = *a3;
          v89 = v10;
          v90 = *a3 + 8 * v11 - 8;
          v109 = v89;
          v111 = v33;
          v91 = v89 - v11;
          do
          {
            v114 = v11;
            v92 = *(v88 + 8 * v11);
            v93 = v91;
            v94 = v90;
            do
            {
              v95 = *v94;
              swift_unknownObjectRetain();
              swift_unknownObjectRetain();
              v96 = [v8 objectForKey:v92];
              if (v96)
              {
                v119 = v96;
                v97 = v96;
                swift_getAtKeyPath();

                v98 = v118;
              }

              else
              {
                v98 = 0.0;
              }

              v99 = [v8 objectForKey:v95];
              if (v99)
              {
                v119 = v99;
                v100 = v99;
                swift_getAtKeyPath();
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();

                if (v118 >= v98)
                {
                  break;
                }
              }

              else
              {
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                if (v98 <= 0.0)
                {
                  break;
                }
              }

              if (!v88)
              {
                goto LABEL_134;
              }

              v101 = *v94;
              v92 = v94[1];
              *v94 = v92;
              v94[1] = v101;
              --v94;
            }

            while (!__CFADD__(v93++, 1));
            v11 = v114 + 1;
            v90 += 8;
            --v91;
          }

          while ((v114 + 1) != v111);
          v34 = v111;
          v24 = v112;
          v10 = v109;
          if (v111 < v109)
          {
            goto LABEL_129;
          }
        }
      }

      v113 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1000702FC(0, *(v24 + 2) + 1, 1, v24);
      }

      v36 = *(v24 + 2);
      v35 = *(v24 + 3);
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        v24 = sub_1000702FC((v35 > 1), v36 + 1, 1, v24);
      }

      *(v24 + 2) = v37;
      v38 = v24 + 32;
      v39 = &v24[16 * v36 + 32];
      *v39 = v10;
      *(v39 + 1) = v113;
      v120 = v24;
      v110 = *a1;
      if (!*a1)
      {
        goto LABEL_137;
      }

      v112 = v24;
      if (v36)
      {
        v108 = v24 + 32;
        while (1)
        {
          v40 = v37 - 1;
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v41 = *(v24 + 4);
            v42 = *(v24 + 5);
            v51 = __OFSUB__(v42, v41);
            v43 = v42 - v41;
            v44 = v51;
LABEL_61:
            if (v44)
            {
              goto LABEL_120;
            }

            v57 = &v24[16 * v37];
            v59 = *v57;
            v58 = *(v57 + 1);
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_123;
            }

            v63 = &v38[16 * v40];
            v65 = *v63;
            v64 = *(v63 + 1);
            v51 = __OFSUB__(v64, v65);
            v66 = v64 - v65;
            if (v51)
            {
              goto LABEL_126;
            }

            if (__OFADD__(v61, v66))
            {
              goto LABEL_127;
            }

            if (v61 + v66 >= v43)
            {
              if (v43 < v66)
              {
                v40 = v37 - 2;
              }

              goto LABEL_82;
            }

            goto LABEL_75;
          }

          v67 = &v24[16 * v37];
          v69 = *v67;
          v68 = *(v67 + 1);
          v51 = __OFSUB__(v68, v69);
          v61 = v68 - v69;
          v62 = v51;
LABEL_75:
          if (v62)
          {
            goto LABEL_122;
          }

          v70 = &v38[16 * v40];
          v72 = *v70;
          v71 = *(v70 + 1);
          v51 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v51)
          {
            goto LABEL_125;
          }

          if (v73 < v61)
          {
            goto LABEL_3;
          }

LABEL_82:
          if (v40 - 1 >= v37)
          {
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
            goto LABEL_132;
          }

          v78 = *a3;
          if (!*a3)
          {
            goto LABEL_135;
          }

          v8 = &v38[16 * v40 - 16];
          v79 = *v8;
          v80 = v40;
          v81 = &v38[16 * v40];
          v82 = *(v81 + 1);
          v83 = (v78 + 8 * *v8);
          v84 = (v78 + 8 * *v81);
          v85 = (v78 + 8 * v82);
          v86 = v116;

          sub_10005D58C(v83, v84, v85, v110, v86);
          if (v117)
          {

            v120 = v112;

            v8 = v116;
            goto LABEL_110;
          }

          v24 = v112;
          if (v82 < v79)
          {
            goto LABEL_115;
          }

          v87 = *(v112 + 2);
          if (v80 > v87)
          {
            goto LABEL_116;
          }

          *v8 = v79;
          *(v8 + 1) = v82;
          if (v80 >= v87)
          {
            goto LABEL_117;
          }

          v37 = v87 - 1;
          memmove(v81, v81 + 16, 16 * (v87 - 1 - v80));
          *(v112 + 2) = v87 - 1;
          v8 = v116;
          v38 = v108;
          if (v87 <= 2)
          {
LABEL_3:
            v120 = v24;
            goto LABEL_4;
          }
        }

        v45 = &v38[16 * v37];
        v46 = *(v45 - 8);
        v47 = *(v45 - 7);
        v51 = __OFSUB__(v47, v46);
        v48 = v47 - v46;
        if (v51)
        {
          goto LABEL_118;
        }

        v50 = *(v45 - 6);
        v49 = *(v45 - 5);
        v51 = __OFSUB__(v49, v50);
        v43 = v49 - v50;
        v44 = v51;
        if (v51)
        {
          goto LABEL_119;
        }

        v52 = &v24[16 * v37];
        v54 = *v52;
        v53 = *(v52 + 1);
        v51 = __OFSUB__(v53, v54);
        v55 = v53 - v54;
        if (v51)
        {
          goto LABEL_121;
        }

        v51 = __OFADD__(v43, v55);
        v56 = v43 + v55;
        if (v51)
        {
          goto LABEL_124;
        }

        if (v56 >= v48)
        {
          v74 = &v38[16 * v40];
          v76 = *v74;
          v75 = *(v74 + 1);
          v51 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v51)
          {
            goto LABEL_128;
          }

          if (v43 < v77)
          {
            v40 = v37 - 2;
          }

          goto LABEL_82;
        }

        goto LABEL_61;
      }

LABEL_4:
      v9 = v113;
      v5 = a3[1];
    }

    while (v113 < v5);
  }

  v103 = *a1;
  if (!*a1)
  {
    goto LABEL_138;
  }

  v104 = v8;

  sub_10005D948(&v120, v103, a3, v104);
  if (v117)
  {

LABEL_110:
  }

  else
  {
  }
}