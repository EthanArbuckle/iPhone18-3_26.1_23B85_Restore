uint64_t sub_100078A00@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) - 1;
  if (v3 < 0xB && ((0x427u >> v3) & 1) != 0)
  {
    v4 = **(&off_10010EC40 + v3);
    v5 = sub_1000CA0B0();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  else
  {
    sub_1000CB280(49);
    v9._object = 0x80000001000E48A0;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    sub_1000CADD0(v9);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    result = sub_1000CB380();
    __break(1u);
  }

  return result;
}

uint64_t sub_100078B40@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16) - 1;
  if (v3 < 0xB && ((0x427u >> v3) & 1) != 0)
  {
    v4 = **(&off_10010EC98 + v3);
    v5 = sub_1000CA0B0();
    v6 = *(*(v5 - 8) + 104);

    return v6(a1, v4, v5);
  }

  else
  {
    sub_1000CB280(49);
    v9._object = 0x80000001000E4870;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    sub_1000CADD0(v9);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    result = sub_1000CB380();
    __break(1u);
  }

  return result;
}

id sub_100078C80()
{
  v26 = sub_1000CA0B0();
  v0 = *(v26 - 8);
  v1 = __chkstk_darwin(v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v1);
  v6 = &v24 - v5;
  __chkstk_darwin(v4);
  v25 = &v24 - v7;
  sub_100019558(&qword_10011EA28);
  inited = swift_initStackObject();
  v24 = xmmword_1000D3410;
  *(inited + 16) = xmmword_1000D3410;
  *(inited + 32) = UIFontDescriptorTraitsAttribute;
  sub_100019558(&qword_10011EA30);
  v9 = swift_initStackObject();
  *(v9 + 16) = v24;
  *(v9 + 32) = UIFontWeightTrait;
  *(v9 + 40) = UIFontWeightBold;
  v10 = UIFontDescriptorTraitsAttribute;
  v11 = UIFontWeightTrait;
  v12 = sub_1000509B8(v9);
  swift_setDeallocating();
  sub_100031844(v9 + 32, &qword_10011EA38);
  *(inited + 64) = sub_100019558(&qword_10011EA40);
  *(inited + 40) = v12;
  sub_100050AA8(inited);
  swift_setDeallocating();
  sub_100031844(inited + 32, &qword_10011F990);
  type metadata accessor for LayoutContext();
  sub_100078A00(v6);
  sub_100078B40(v3);
  v13 = v25;
  sub_100072098(v6, v3, v25);
  v14 = *(v0 + 8);
  v15 = v3;
  v16 = v26;
  v14(v15, v26);
  v14(v6, v16);
  v17 = sub_100071DD8();
  v14(v13, v16);
  v18 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v17];

  v19 = [objc_opt_self() preferredFontDescriptorWithTextStyle:UIFontTextStyleCallout compatibleWithTraitCollection:v18];
  type metadata accessor for AttributeName(0);
  sub_10007A028(&qword_10011D8E8, type metadata accessor for AttributeName);
  isa = sub_1000CAC00().super.isa;

  v21 = [v19 fontDescriptorByAddingAttributes:isa];

  v22 = [objc_opt_self() fontWithDescriptor:v21 size:0.0];
  return v22;
}

uint64_t sub_100079038()
{
  v1 = *(v0 + 16);
  if (v1 <= 5)
  {
    if (v1 == 2 || v1 == 3)
    {
      return result;
    }

LABEL_9:
    sub_1000CB280(46);
    v3._object = 0x80000001000E4900;
    v3._countAndFlagsBits = 0xD00000000000002CLL;
    sub_1000CADD0(v3);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    result = sub_1000CB380();
    __break(1u);
    return result;
  }

  if (v1 != 6 && v1 != 11)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_1000791C4()
{
  v1 = *(v0 + 16);
  if (v1 > 0xB)
  {
    goto LABEL_5;
  }

  if (((1 << v1) & 0x4C) != 0)
  {
    sub_100079BA0();
    type metadata accessor for LayoutContext();
    sub_100079BA0();
    sub_100079038();
    sub_100079038();
    sub_100079BA0();
    sub_100079848();
    return;
  }

  if (((1 << v1) & 0x802) == 0)
  {
LABEL_5:
    sub_1000CB280(47);
    v2._object = 0x80000001000E4950;
    v2._countAndFlagsBits = 0xD00000000000002DLL;
    sub_1000CADD0(v2);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    sub_1000CB380();
    __break(1u);
  }
}

uint64_t sub_100079344()
{
  v1 = *(v0 + *(type metadata accessor for LayoutContext() + 36));
  sub_1000791C4();
  v3 = v1 * v2;
  v4 = v3 >= 24.0 || v3 < 22.0;
  v5 = 1;
  if (v4)
  {
    v5 = 2;
  }

  if (v3 >= 22.0 || v3 < 0.0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_1000793A0()
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
    sub_100079BA0();
    sub_100079038();
    sub_100079038();
    sub_100079BA0();
    sub_100079848();
    return;
  }

  if (v1 == 2 || v1 == 3)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_1000CB280(41);
  v2._object = 0x80000001000E49B0;
  v2._countAndFlagsBits = 0xD000000000000027;
  sub_1000CADD0(v2);
  type metadata accessor for CHSWidgetFamily(0);
  sub_1000CB340();
  sub_1000CB380();
  __break(1u);
}

id sub_10007957C()
{
  v0 = sub_1000CA0B0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v20 - v6;
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  sub_10007A23C();
  v10 = sub_1000CB100();
  v11 = objc_opt_self();
  type metadata accessor for LayoutContext();
  sub_100078A00(v7);
  sub_100078B40(v4);
  sub_100072098(v7, v4, v9);
  v12 = *(v1 + 8);
  v12(v4, v0);
  v12(v7, v0);
  v13 = sub_100071DD8();
  v12(v9, v0);
  v14 = [v11 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v13];

  [v14 nt_scaledValueForValue:1.0];
  v16 = v15;

  sub_100079A14();
  v18 = [v10 fontWithSize:v16 * v17];

  return v18;
}

uint64_t sub_1000797B0()
{
  sub_100079BA0();
  v2 = v1;
  v3 = *(v0 + *(type metadata accessor for LayoutContext() + 40));
  sub_100079BA0();
  v5 = v3 * v4;
  sub_100079038();
  v7 = v5 - (v6 + v6);
  sub_100079038();
  v9 = v7 + (v3 + v3) * v8;
  sub_100079BA0();
  if (v2 * (sub_100079848() * (v9 / v10)) + -16.0 >= 36.0)
  {
    return 0x4042000000000000;
  }

  else
  {
    return 0;
  }
}

double sub_100079848()
{
  v0 = sub_1000CA0B0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - v6;
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = objc_opt_self();
  type metadata accessor for LayoutContext();
  sub_100078A00(v7);
  sub_100078B40(v4);
  sub_100072098(v7, v4, v9);
  v11 = *(v1 + 8);
  v11(v4, v0);
  v11(v7, v0);
  v12 = sub_100071DD8();
  v11(v9, v0);
  v13 = [v10 nt_preferredFontForCondensedTextStyle:2 contentSizeCategory:v12];

  [v13 nt_scaledValueForValue:1.0];
  v15 = v14;

  return v15;
}

uint64_t sub_100079A14()
{
  v1 = *(v0 + 16);
  if (v1 <= 5)
  {
    if (v1 == 2 || v1 == 3)
    {
      return result;
    }

LABEL_9:
    sub_1000CB280(39);
    v3._object = 0x80000001000E4980;
    v3._countAndFlagsBits = 0xD000000000000025;
    sub_1000CADD0(v3);
    type metadata accessor for CHSWidgetFamily(0);
    sub_1000CB340();
    result = sub_1000CB380();
    __break(1u);
    return result;
  }

  if (v1 != 6 && v1 != 11)
  {
    goto LABEL_9;
  }

  return result;
}

void sub_100079BA0()
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
      sub_1000CB280(43);
      v3._object = 0x80000001000E48D0;
      v3._countAndFlagsBits = 0xD000000000000029;
      sub_1000CADD0(v3);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000CB340();
      sub_1000CB380();
      __break(1u);
      return;
    }

LABEL_10:
    sub_100079848();
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

void sub_100079CC0()
{
  sub_100079038();
  sub_100079038();
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
      sub_1000CB280(43);
      v3._object = 0x80000001000E48D0;
      v3._countAndFlagsBits = 0xD000000000000029;
      sub_1000CADD0(v3);
      type metadata accessor for CHSWidgetFamily(0);
      sub_1000CB340();
      sub_1000CB380();
      __break(1u);
      return;
    }

LABEL_10:
    sub_100079848();
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

unint64_t sub_100079E18()
{
  result = qword_100120968;
  if (!qword_100120968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120968);
  }

  return result;
}

unint64_t sub_100079E6C()
{
  result = qword_100120970;
  if (!qword_100120970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120970);
  }

  return result;
}

unint64_t sub_100079EC0()
{
  result = qword_100120978;
  if (!qword_100120978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120978);
  }

  return result;
}

uint64_t sub_100079F14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100079F78(uint64_t a1)
{
  v2 = type metadata accessor for LayoutContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100079FD4()
{
  result = qword_100120990;
  if (!qword_100120990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120990);
  }

  return result;
}

uint64_t sub_10007A028(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007A094()
{
  result = qword_1001209A0;
  if (!qword_1001209A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001209A0);
  }

  return result;
}

unint64_t sub_10007A0EC()
{
  result = qword_1001209A8;
  if (!qword_1001209A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001209A8);
  }

  return result;
}

unint64_t sub_10007A144()
{
  result = qword_1001209B0;
  if (!qword_1001209B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001209B0);
  }

  return result;
}

unint64_t sub_10007A19C()
{
  result = qword_1001209B8;
  if (!qword_1001209B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001209B8);
  }

  return result;
}

uint64_t sub_10007A1F0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010C3E0;
  v6._object = a2;
  v4 = sub_1000CB3F0(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10007A23C()
{
  result = qword_1001209C0[0];
  if (!qword_1001209C0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1001209C0);
  }

  return result;
}

uint64_t Type3Widget.body.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  (*(v4 + 16))(&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  v8 = *(a1 + 24);
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 24) = v8;
  (*(v4 + 32))(v7 + v6, &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_1000195A0(&qword_10011F7D0);
  sub_1000C9D80();
  sub_1000C9D80();
  sub_1000C9D80();
  v9 = sub_10007AB3C();
  v20 = v8;
  v21 = v9;
  WitnessTable = swift_getWitnessTable();
  v19 = &protocol witness table for _FrameLayout;
  v16 = swift_getWitnessTable();
  v17 = &protocol witness table for _PositionLayout;
  swift_getWitnessTable();
  v14 = sub_1000C9D00();
  v15 = v10;
  v11 = sub_1000C9D10();
  swift_getWitnessTable();
  v12 = *(*(v11 - 8) + 16);
  v12(v22, &v14, v11);

  v14 = v22[0];
  v15 = v22[1];
  v12(a2, &v14, v11);
}

uint64_t sub_10007A520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v33 = a2;
  v38 = a4;
  v39 = a1;
  v5 = sub_1000C9DB0();
  __chkstk_darwin(v5);
  v7 = (&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000195A0(&qword_10011F7D0);
  v8 = sub_1000C9D80();
  v35 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v30 - v9;
  v11 = sub_1000C9D80();
  v37 = *(v11 - 8);
  __chkstk_darwin(v11);
  v31 = &v30 - v12;
  v13 = sub_1000C9D80();
  v36 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v32 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v34 = &v30 - v16;
  v17 = *(v5 + 20);
  v18 = enum case for RoundedCornerStyle.continuous(_:);
  v19 = sub_1000CA060();
  (*(*(v19 - 8) + 104))(&v7->i8[v17], v18, v19);
  *v7 = vdupq_n_s64(0x4044000000000000uLL);
  sub_10007B0C0();
  sub_1000CA540();
  sub_10007B118(v7);
  sub_1000C9CD0();
  sub_1000CA7A0();
  v20 = sub_10007AB3C();
  v44 = a3;
  v45 = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v31;
  sub_1000CA510();
  (*(v35 + 8))(v10, v8);
  sub_1000C9CD0();
  sub_1000C9CD0();
  v42 = WitnessTable;
  v43 = &protocol witness table for _FrameLayout;
  v23 = swift_getWitnessTable();
  v24 = v32;
  sub_1000CA520();
  (*(v37 + 8))(v22, v11);
  v40 = v23;
  v41 = &protocol witness table for _PositionLayout;
  swift_getWitnessTable();
  v25 = v36;
  v26 = *(v36 + 16);
  v27 = v34;
  v26(v34, v24, v13);
  v28 = *(v25 + 8);
  v28(v24, v13);
  v26(v38, v27, v13);
  return (v28)(v27, v13);
}

uint64_t sub_10007A9B4()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for Type3Widget() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10007AAA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for Type3Widget() - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  return sub_10007A520(a1, v7, v5, a2);
}

unint64_t sub_10007AB3C()
{
  result = qword_10011F7F0;
  if (!qword_10011F7F0)
  {
    sub_1000195A0(&qword_10011F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F7F0);
  }

  return result;
}

uint64_t sub_10007ABF0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10007AC60(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_10007ADA0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_10007AFA8()
{
  sub_1000195A0(&qword_10011F7D0);
  sub_1000C9D80();
  sub_1000C9D80();
  sub_1000C9D80();
  sub_10007AB3C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000C9D10();
  return swift_getWitnessTable();
}

unint64_t sub_10007B0C0()
{
  result = qword_100120A48;
  if (!qword_100120A48)
  {
    sub_1000C9DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A48);
  }

  return result;
}

uint64_t sub_10007B118(uint64_t a1)
{
  v2 = sub_1000C9DB0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NTTodayResults.allItems.getter()
{
  v1 = v0;
  v2 = sub_1000C9390();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = &_swiftEmptyArrayStorage;
  v6 = [v1 sections];
  v7 = [v6 array];

  v8 = sub_1000CAED0();
  v9 = sub_10007B71C(v8);

  v10 = v9;
  if (v9 >> 62)
  {
LABEL_38:
    v21 = v10;
    v11 = sub_1000CB3A0();
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
      v10 = sub_1000CB2A0();
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
    sub_1000CB310();
    v3 = v15;
    v10 = sub_1000CB020();
    if ((v16 & 0x8000000000000000) != 0)
    {
      goto LABEL_35;
    }

    if (v16)
    {
      break;
    }

LABEL_16:
    sub_10007BD84(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
    while (1)
    {
      v3 = v5;
      sub_1000CB190();
      if (!v33)
      {
        break;
      }

      sub_100050CF0(&v32, &v34);
      sub_100050CF0(&v34, &v32);
      sub_100019558(&unk_10011E710);
      swift_dynamicCast();
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
    }

    (*v28)(v5, v2);
    v10 = sub_10007BCC0(&v32);
    v18 = v36;
    if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
    {
      v10 = sub_1000CB3A0();
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
        sub_1000CB2A0();
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_unknownObjectRetain();
      v3 = &v37;
      sub_1000CAEB0();
      if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000CAF10();
      }

      sub_1000CAF40();
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

  sub_10007BD84(&qword_1001205C0, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    result = sub_1000CB190();
    if (!v35)
    {
      break;
    }

    sub_100027BB8(&v34, &v32);
    sub_100019558(&unk_10011E710);
    swift_dynamicCast();
    sub_10001E37C(&v34);
    sub_1000CB2F0();
    sub_1000CB320();
    sub_1000CB330();
    sub_1000CB300();
    if (!--v16)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void *NTTodayResults.sectionsArray.getter()
{
  v1 = [v0 sections];
  v2 = [v1 array];

  v3 = sub_1000CAED0();
  v4 = sub_10007B71C(v3);

  return v4;
}

void *sub_10007B71C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = &_swiftEmptyArrayStorage;
    sub_1000CB310();
    v4 = a1 + 32;
    do
    {
      sub_100027BB8(v4, &v5);
      sub_10007BDCC();
      swift_dynamicCast();
      sub_1000CB2F0();
      sub_1000CB320();
      sub_1000CB330();
      sub_1000CB300();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_10007B7F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C9480();
  v23 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = [a1 actionURL];
  if (v12)
  {
    v13 = v12;
    sub_1000C9440();

    v14 = *(v23 + 32);
    v14(v11, v9, v6);
    if (qword_10011CE98 != -1)
    {
      swift_once();
    }

    sub_10001A5B4(v6, qword_100134510);
    sub_10007BD84(&qword_1001214A0, &type metadata accessor for URL);
    if (sub_1000CAC90())
    {
      v14(a3, v11, v6);
      return (*(v23 + 56))(a3, 0, 1, v6);
    }

    else
    {
      v17 = objc_opt_self();
      sub_1000C93F0(v18);
      v20 = v19;
      v21 = [v17 engagementDescriptorWithTargetURL:v19];

      sub_10001E2E4(a2, a2[3]);
      sub_1000B3180(v21, a3);
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

id sub_10007BAC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageStore.Key(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000C9480();
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
    sub_1000C9440();

    (*(v8 + 32))(v13, v11, v7);
    (*(v8 + 16))(v6, v13, v7);
    (*(v8 + 56))(v6, 0, 1, v7);
    v16 = sub_1000BE124(v6, a2);
    sub_10007BD28(v6);
    (*(v8 + 8))(v13, v7);
    return v16;
  }

  return result;
}

uint64_t sub_10007BCC0(uint64_t a1)
{
  v2 = sub_100019558(&qword_100120A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007BD28(uint64_t a1)
{
  v2 = type metadata accessor for ImageStore.Key(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10007BD84(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007BDCC()
{
  result = qword_10011ED50;
  if (!qword_10011ED50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10011ED50);
  }

  return result;
}

unint64_t sub_10007BE1C()
{
  result = qword_100120A68;
  if (!qword_100120A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A68);
  }

  return result;
}

uint64_t sub_10007BEB4()
{
  v0 = sub_100019558(&qword_100120AB0);
  sub_10001A5EC(v0, qword_100134540);
  sub_10001A5B4(v0, qword_100134540);
  sub_10007DA1C();
  return sub_1000C90B0();
}

uint64_t sub_10007BF38(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10007C07C, 0, 0);
}

uint64_t sub_10007C07C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_100120A78);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_100120B20, &qword_100120B28);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10007C230()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_100134558);
  sub_10001A5B4(v10, qword_100134558);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_10007C50C()
{
  v0 = sub_100019558(&qword_100120B18);
  sub_10001A5EC(v0, qword_100134570);
  sub_10001A5B4(v0, qword_100134570);
  sub_10007D448();
  return sub_1000C9170();
}

uint64_t sub_10007C590()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134588);
  sub_10001A5B4(v0, qword_100134588);
  return sub_1000C9350();
}

uint64_t sub_10007C5F4()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_1001345A0);
  v1 = sub_10001A5B4(v0, qword_1001345A0);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_10007C6B4()
{
  result = swift_getKeyPath();
  qword_1001345B8 = result;
  return result;
}

uint64_t sub_10007C6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_10007C700, 0, 0);
}

uint64_t sub_10007C700()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CED0 != -1)
  {
    swift_once();
  }

  v2 = qword_1001345B8;
  *(v0 + 80) = qword_1001345B8;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_100120B20, &qword_100120B28);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_10007C864;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_10007C864()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_10007C9B8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10007C9B8()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_1001345B8;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_10007CA90(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_10007CB04(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_10007CB78()
{
  if (qword_10011CED0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_10007CBD8()
{
  result = qword_100120A80;
  if (!qword_100120A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A80);
  }

  return result;
}

unint64_t sub_10007CC30()
{
  result = qword_100120A88;
  if (!qword_100120A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A88);
  }

  return result;
}

uint64_t sub_10007CD40@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEC8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_1001345A0);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_10007CDC4(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_10007C6DC(a1, v5, v4);
}

uint64_t sub_10007CE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10007E220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10007CEB8()
{
  result = qword_100120A90;
  if (!qword_100120A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A90);
  }

  return result;
}

unint64_t sub_10007CF10()
{
  result = qword_100120A98;
  if (!qword_100120A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120A98);
  }

  return result;
}

unint64_t sub_10007CF68()
{
  result = qword_100120AA0;
  if (!qword_100120AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AA0);
  }

  return result;
}

uint64_t sub_10007D020()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000C9680();

  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10007D0F4(uint64_t a1, _BYTE *a2)
{
  v4 = sub_1000C95A0();
  *(v2 + 16) = v4;
  *(v2 + 24) = *(v4 - 8);
  *(v2 + 32) = swift_task_alloc();
  *(v2 + 42) = *a2;

  return _swift_task_switch(sub_10007D1BC, 0, 0);
}

uint64_t sub_10007D1BC()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 40) == 1)
  {
    v2 = *(v0 + 24);
    v1 = *(v0 + 32);
    v3 = *(v0 + 16);
    *(v0 + 41) = *(v0 + 42);

    sub_1000C9690();

    v4 = NewsCoreUserDefaults();
    sub_1000C9590();
    isa = sub_1000C94F0().super.isa;
    (*(v2 + 8))(v1, v3);
    [v4 setObject:isa forKey:FCOptimizedStorageLastUserInteractionKey];
  }

  else
  {
    sub_10001A6F8();
    swift_allocError();
    swift_willThrow();
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10007D394@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEA8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100120AB0);
  v3 = sub_10001A5B4(v2, qword_100134540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10007D448()
{
  result = qword_100120AB8;
  if (!qword_100120AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AB8);
  }

  return result;
}

uint64_t sub_10007D4E4()
{
  v0 = qword_100120A58;

  return v0;
}

unint64_t sub_10007D520()
{
  result = qword_100120AC8;
  if (!qword_100120AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AC8);
  }

  return result;
}

uint64_t sub_10007D574@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEB8 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100120B18);
  v3 = sub_10001A5B4(v2, qword_100134570);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10007D62C()
{
  result = qword_100120AD0;
  if (!qword_100120AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AD0);
  }

  return result;
}

unint64_t sub_10007D684()
{
  result = qword_100120AD8;
  if (!qword_100120AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AD8);
  }

  return result;
}

unint64_t sub_10007D6DC()
{
  result = qword_100120AE0;
  if (!qword_100120AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AE0);
  }

  return result;
}

unint64_t sub_10007D734()
{
  result = qword_100120AE8;
  if (!qword_100120AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120AE8);
  }

  return result;
}

uint64_t sub_10007D788@<X0>(uint64_t *a1@<X8>)
{
  sub_10007DA1C();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10007D7C8()
{
  sub_10007D9C8();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10007D8B0(uint64_t a1)
{
  v2 = sub_10007D448();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10007D900()
{
  result = qword_100120B00;
  if (!qword_100120B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120B00);
  }

  return result;
}

uint64_t sub_10007D95C(uint64_t a1)
{
  v2 = sub_10007D734();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10007D9C8()
{
  result = qword_100120B08;
  if (!qword_100120B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120B08);
  }

  return result;
}

unint64_t sub_10007DA1C()
{
  result = qword_100120B10;
  if (!qword_100120B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120B10);
  }

  return result;
}

uint64_t sub_10007DA70@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  __chkstk_darwin(v1);
  v4 = v29 - v3;
  v5 = sub_100019558(&qword_10011D900);
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  __chkstk_darwin(v5);
  v8 = v29 - v7;
  v9 = sub_100019558(&qword_100120B38);
  v10 = *(v9 - 8);
  v35 = v9;
  v36 = v10;
  __chkstk_darwin(v9);
  v12 = v29 - v11;
  v13 = sub_100019558(&qword_100120B40);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  __chkstk_darwin(v13);
  v30 = v29 - v15;
  v29[1] = "Update Optimize Storage";
  swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_10007DA1C();
  v16 = sub_1000195A0(&qword_10011D918);
  v17 = sub_1000CA100();
  v18 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v19 = sub_10003B248();
  v40 = v16;
  v41 = v17;
  v42 = v18;
  v43 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v20 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  v21 = v31;
  sub_1000CA140();

  (*(v32 + 8))(v4, v21);
  sub_1000CA040();
  v40 = v21;
  v41 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v33;
  sub_1000CA110();

  (*(v34 + 8))(v8, v23);
  v40 = v23;
  v41 = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v30;
  v26 = v35;
  sub_1000CA170();
  (*(v36 + 8))(v12, v26);
  v40 = v26;
  v41 = v24;
  swift_getOpaqueTypeConformance2();
  v27 = v37;
  sub_1000CA130();
  return (*(v38 + 8))(v25, v27);
}

uint64_t sub_10007E010()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10007E220()
{
  v0 = sub_100019558(&qword_10011D7F8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_100120B30);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_10007D448();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

uint64_t sub_10007E6BC()
{
  sub_1000195A0(&qword_100120B40);
  sub_1000195A0(&qword_100120B38);
  sub_1000195A0(&qword_10011D900);
  sub_1000195A0(&qword_10011D8F8);
  sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id WidgetPersonalizationConfigurationManager.__allocating_init(appConfigurationManager:)()
{
  v1 = objc_allocWithZone(v0);
  v2 = sub_1000C9AB0();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v4 = sub_1000C9AA0();
  v5 = &v1[OBJC_IVAR____TtC10NewsToday241WidgetPersonalizationConfigurationManager_configurationManager];
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
  v2 = sub_1000C9AB0();
  v3 = objc_allocWithZone(v2);
  swift_unknownObjectRetain();
  v4 = sub_1000C9AA0();
  v5 = &v0[OBJC_IVAR____TtC10NewsToday241WidgetPersonalizationConfigurationManager_configurationManager];
  v5[3] = v2;
  v5[4] = &protocol witness table for NewsAppConfigurationManager;
  *v5 = v4;
  v8.receiver = v0;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, "init");
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_10007E9A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_100019558(&qword_100120B78);
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v36 = &v28 - v4;
  v5 = sub_100019558(&qword_100120B80);
  v31 = *(v5 - 8);
  v32 = v5;
  __chkstk_darwin(v5);
  v35 = &v28 - v6;
  v7 = sub_100019558(&qword_100120B88);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v39 = &v28 - v9;
  v10 = sub_100019558(&qword_100120B90);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  v14 = sub_100019558(&qword_100120B98);
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
  sub_10007F324();
  sub_1000C9AC0();

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
    sub_10005120C(&_swiftEmptyArrayStorage);
    v21 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    isa = sub_1000CAC00().super.isa;

    [v21 initWithConfig:isa];
  }

  if ([a1 respondsToSelector:"shadowPublisherDampeningConfig"])
  {
    [a1 shadowPublisherDampeningConfig];
  }

  else
  {
    sub_10005120C(&_swiftEmptyArrayStorage);
    v23 = objc_allocWithZone(FCPersonalizationPublisherDampeningConfig);
    v24 = sub_1000CAC00().super.isa;

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
  sub_100019558(&qword_100120BA8);
  v26 = sub_1000CAEC0().super.isa;
  [v25 initWithArray:v26];

  return sub_1000C9AD0();
}

id Images.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_10007F324()
{
  result = qword_100120BA0;
  if (!qword_100120BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120BA0);
  }

  return result;
}

uint64_t sub_10007F384(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007F4D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_10007F644()
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

uint64_t sub_10007F6FC()
{
  v1 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v1);
  v3 = &v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Item(0);
  __chkstk_darwin(v4);
  v6 = &v17[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v7 - 8);
  v9 = &v17[-1] - v8;
  v10 = sub_1000CA7A0();
  v12 = v11;
  sub_10007F9A4(v17);
  v13 = v17[0];
  v17[0] = v10;
  v17[1] = v12;
  v17[2] = v13;
  sub_10007FD60(v0, v6, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10007FCE0(v6, type metadata accessor for Item);
    v14 = sub_1000C9480();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  }

  else
  {
    sub_10007FC7C(v6, v3);
    sub_10002DFB4(&v3[*(v1 + 24)], v9, &unk_10011E590);
    sub_10007FCE0(v3, type metadata accessor for Item.Headline);
  }

  sub_100019558(&qword_100120C48);
  sub_10001B1BC(&qword_100120C50, &qword_100120C48);
  sub_1000CA430();
  sub_100031844(v9, &unk_10011E590);
}

uint64_t sub_10007F9A4@<X0>(uint64_t *a1@<X8>)
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
  sub_10007FD60(v2, v12, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    v14 = v12[1];
    v15 = sub_1000C9FE0();
    *&v28 = v13;
    *(&v28 + 1) = v14;
    sub_100027B64();
    v16 = sub_1000CA410();
    v28 = v15;
    LOBYTE(v29) = 1;
    *(&v29 + 1) = v16;
    *&v30 = v17;
    BYTE8(v30) = v18 & 1;
    *&v31 = v19;
    sub_100019558(&qword_100120C58);
    sub_10001B1BC(&qword_100120C60, &qword_100120C58);
    result = sub_1000CA700();
    v21 = result;
  }

  else
  {
    sub_10007FC7C(v12, v9);
    sub_10007FD60(v9, v6, type metadata accessor for Item.Headline);
    v22 = type metadata accessor for RectangularContentView(0);
    sub_100077A2C(&v28);
    sub_10007FD60(v2 + *(v22 + 20), &v6[*(v4 + 24)], type metadata accessor for TodayContent);
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
    sub_10007FDC8();
    v21 = sub_1000CA700();
    result = sub_10007FCE0(v9, type metadata accessor for Item.Headline);
  }

  *a1 = v21;
  return result;
}

uint64_t sub_10007FC7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Item.Headline(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10007FCE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10007FD60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10007FDC8()
{
  result = qword_100120C68;
  if (!qword_100120C68)
  {
    type metadata accessor for RectangularHeadlineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120C68);
  }

  return result;
}

uint64_t sub_10007FE34(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10007FF6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_100080090()
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

uint64_t sub_10008011C()
{
  sub_1000195A0(&qword_100120C48);
  sub_10001B1BC(&qword_100120C50, &qword_100120C48);
  return swift_getOpaqueTypeConformance2();
}

id sub_1000801D0@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1000CA030();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1000CA1E0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100019558(&qword_100120D20);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  v71 = sub_100019558(&qword_100120D28);
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v12 = &v65 - v11;
  v13 = sub_100019558(&qword_100120D30);
  v14 = __chkstk_darwin(v13 - 8);
  v66 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v72 = &v65 - v16;
  *v10 = sub_1000C9FC0();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v17 = sub_100019558(&qword_100120D38);
  sub_1000809C8(a1, &v10[*(v17 + 44)]);
  sub_1000CA1C0();
  v18 = sub_10001B1BC(&qword_100120D40, &qword_100120D20);
  v69 = v8;
  v68 = v18;
  sub_1000CA4F0();
  (*(v5 + 8))(v7, v4);
  v19 = a1;
  sub_100031844(v10, &qword_100120D20);
  sub_1000CA020();
  v93._object = 0x80000001000E4C80;
  v93._countAndFlagsBits = 0xD000000000000011;
  sub_1000CA010(v93);
  v20 = *a1;
  v21 = [*a1 sourceName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1000CAD00();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0xE000000000000000;
  }

  v94._countAndFlagsBits = v23;
  v94._object = v25;
  sub_1000CA000(v94);

  v95._countAndFlagsBits = 0;
  v95._object = 0xE000000000000000;
  sub_1000CA010(v95);
  sub_1000CA050();
  if (qword_10011CFA0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v26 = static NSBundle.newsToday2;
  v27 = sub_1000CA400();
  v29 = v28;
  v31 = v30;
  v78 = v69;
  v79 = v68;
  swift_getOpaqueTypeConformance2();
  v32 = v71;
  sub_1000CA4A0();
  sub_100025894(v27, v29, v31 & 1);

  (*(v70 + 8))(v12, v32);
  result = [v20 titleCompact];
  if (result || (result = [v20 title]) != 0)
  {
    v34 = result;
    v35 = sub_1000CAD00();
    v37 = v36;

    v78 = v35;
    v79 = v37;
    sub_100027B64();
    v38 = sub_1000CA410();
    v40 = v39;
    LOBYTE(v37) = v41;
    v42 = *(v19 + *(type metadata accessor for RectangularHeadlineView(0) + 20) + 72);
    sub_1000CA2F0();
    v43 = sub_1000CA380();
    v45 = v44;
    v47 = v46;

    sub_100025894(v38, v40, v37 & 1);

    sub_1000CA5B0();
    v48 = sub_1000CA340();
    v50 = v49;
    v52 = v51;
    v71 = v53;

    sub_100025894(v43, v45, v47 & 1);

    KeyPath = swift_getKeyPath();
    v55 = swift_getKeyPath();
    v56 = v52 & 1;
    v92 = v52 & 1;
    v90 = 0;
    v57 = v72;
    v58 = v66;
    sub_10002DFB4(v72, v66, &qword_100120D30);
    v59 = v67;
    sub_10002DFB4(v58, v67, &qword_100120D30);
    v60 = v59 + *(sub_100019558(&qword_100120D48) + 48);
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
    sub_10002DFB4(&v73, &v78, &qword_100120D50);
    sub_100031844(v57, &qword_100120D30);
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
    sub_100031844(&v78, &qword_100120D50);
    return sub_100031844(v58, &qword_100120D30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000809C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v138 = a2;
  v133 = sub_100019558(&qword_100120D58);
  __chkstk_darwin(v133);
  v132 = &v112 - v3;
  v137 = sub_100019558(&qword_100120D60);
  v136 = *(v137 - 8);
  v4 = __chkstk_darwin(v137);
  v135 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v134 = &v112 - v6;
  v7 = sub_100019558(&qword_100120D68);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v112 - v9;
  v11 = sub_100019558(&qword_10011FDE0);
  v12 = __chkstk_darwin(v11 - 8);
  v128 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v130 = &v112 - v14;
  v15 = sub_100019558(&qword_10011FDE8);
  __chkstk_darwin(v15);
  v17 = (&v112 - v16);
  v18 = sub_100019558(&qword_10011FDF0);
  v126 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v112 - v19;
  v21 = sub_100019558(&qword_10011FDF8);
  v22 = __chkstk_darwin(v21 - 8);
  v127 = &v112 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v129 = &v112 - v24;
  v25 = sub_100019558(&qword_100120D70);
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
    v121 = sub_1000CA660();
    v120 = sub_1000CA570();
    KeyPath = swift_getKeyPath();
    v124 = v8;
    v35 = KeyPath;
    v36 = sub_1000CA2D0();
    v37 = swift_getKeyPath();
    v122 = v10;
    v38 = v37;
    v39 = *(v15 + 36);
    v123 = v7;
    v40 = (v17 + v39);
    v41 = *(sub_100019558(&qword_10011FE00) + 28);
    v125 = a1;
    v42 = enum case for Image.Scale.small(_:);
    v43 = sub_1000CA680();
    (*(*(v43 - 8) + 104))(v40 + v41, v42, v43);
    *v40 = swift_getKeyPath();
    *v17 = v121;
    v17[1] = v35;
    v17[2] = v120;
    v17[3] = v38;
    v17[4] = v36;
    v44 = sub_1000599E8();
    sub_1000CA420();
    sub_100031844(v17, &qword_10011FDE8);
    v153 = v15;
    v154 = v44;
    swift_getOpaqueTypeConformance2();
    v45 = v129;
    sub_1000CA4C0();
    (*(v126 + 8))(v20, v18);
    sub_1000CA7A0();
    sub_1000C9CC0();
    v126 = v147;
    v121 = v149;
    v120 = v151;
    v119 = v152;
    v142 = 1;
    v141 = v148;
    v140 = v150;
    sub_1000CA2D0();
    v46 = sub_1000CA380();
    v48 = v47;
    LOBYTE(v44) = v49;

    sub_1000CA5B0();
    v50 = sub_1000CA340();
    v52 = v51;
    LOBYTE(v38) = v53;
    v55 = v54;

    sub_100025894(v46, v48, v44 & 1);

    v153 = v50;
    v154 = v52;
    LOBYTE(v155) = v38 & 1;
    v156 = v55;
    v157 = 0x3FE6666666666666;
    sub_100019558(&qword_10011FE48);
    sub_100059C10();
    v56 = v130;
    sub_1000CA4C0();
    sub_100025894(v50, v52, v38 & 1);

    sub_1000CA7A0();
    sub_1000C9CC0();
    v118 = v153;
    v117 = v155;
    v116 = v157;
    v115 = v158;
    LOBYTE(v145) = 1;
    v144 = v154;
    v143 = v156;
    v57 = v127;
    sub_10002DFB4(v45, v127, &qword_10011FDF8);
    LOBYTE(v45) = v142;
    LOBYTE(v36) = v141;
    LOBYTE(v50) = v140;
    v58 = v128;
    sub_10002DFB4(v56, v128, &qword_10011FDE0);
    LOBYTE(v52) = v145;
    v113 = v144;
    v114 = v143;
    v59 = v122;
    sub_10002DFB4(v57, v122, &qword_10011FDF8);
    v60 = sub_100019558(&qword_100120DB8);
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
    sub_10002DFB4(v58, v59 + v60[16], &qword_10011FDE0);
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
    sub_100031844(v130, &qword_10011FDE0);
    sub_100031844(v129, &qword_10011FDF8);
    sub_100031844(v58, &qword_10011FDE0);
    sub_100031844(v57, &qword_10011FDF8);
    v65 = v139;
    sub_100081EB8(v59, v139);
    (*(v124 + 56))(v65, 0, 1, v123);
  }

  else
  {
    (*(v8 + 56))(v29, 1, 1, v7);
  }

  v145 = sub_1000BB534();
  v146 = v66;
  sub_100027B64();
  v67 = sub_1000CA410();
  v69 = v68;
  v71 = v70;
  sub_1000CA2D0();
  v72 = sub_1000CA380();
  v74 = v73;
  v76 = v75;

  sub_100025894(v67, v69, v71 & 1);

  sub_1000CA270();
  v77 = sub_1000CA320();
  v79 = v78;
  LOBYTE(v67) = v80;
  sub_100025894(v72, v74, v76 & 1);

  sub_1000CA570();
  v81 = sub_1000CA340();
  v83 = v82;
  v85 = v84;
  v130 = v86;

  sub_100025894(v77, v79, v67 & 1);

  v87 = sub_100019558(&qword_100120120);
  v88 = v132;
  v89 = &v132[*(v87 + 36)];
  v90 = *(sub_100019558(&qword_100120128) + 28);
  v91 = enum case for Text.Case.uppercase(_:);
  v92 = sub_1000CA370();
  v93 = *(v92 - 8);
  (*(v93 + 104))(v89 + v90, v91, v92);
  (*(v93 + 56))(v89 + v90, 0, 1, v92);
  *v89 = swift_getKeyPath();
  *v88 = v81;
  *(v88 + 8) = v83;
  *(v88 + 16) = v85 & 1;
  *(v88 + 24) = v130;
  v94 = swift_getKeyPath();
  v95 = v88 + *(sub_100019558(&qword_100120D78) + 36);
  *v95 = v94;
  *(v95 + 8) = 1;
  *(v95 + 16) = 0;
  v96 = (v88 + *(v133 + 36));
  v97 = *(sub_100019558(&qword_100120D80) + 28);
  v98 = enum case for Text.TruncationMode.tail(_:);
  v99 = sub_1000CA330();
  (*(*(v99 - 8) + 104))(v96 + v97, v98, v99);
  *v96 = swift_getKeyPath();
  sub_100081C78();
  v100 = v134;
  sub_1000CA420();
  sub_100031844(v88, &qword_100120D58);
  v101 = v139;
  v102 = v131;
  sub_10002DFB4(v139, v131, &qword_100120D70);
  v103 = v136;
  v104 = *(v136 + 16);
  v105 = v135;
  v106 = v137;
  v104(v135, v100, v137);
  v107 = v138;
  sub_10002DFB4(v102, v138, &qword_100120D70);
  v108 = sub_100019558(&qword_100120DB0);
  v104((v107 + *(v108 + 48)), v105, v106);
  v109 = v107 + *(v108 + 64);
  *v109 = 0;
  *(v109 + 8) = 1;
  v110 = *(v103 + 8);
  v110(v100, v106);
  sub_100031844(v101, &qword_100120D70);
  v110(v105, v106);
  return sub_100031844(v102, &qword_100120D70);
}

uint64_t sub_100081824()
{
  v1 = sub_1000CA1E0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_100120D08);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_1000CA0E0();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = sub_100019558(&qword_100120D10);
  sub_1000801D0(v0, &v7[*(v8 + 44)]);
  sub_1000CA1D0();
  sub_10001B1BC(&qword_100120D18, &qword_100120D08);
  sub_1000CA4F0();
  (*(v2 + 8))(v4, v1);
  return sub_100031844(v7, &qword_100120D08);
}

uint64_t sub_1000819EC@<X0>(void *a1@<X8>)
{
  result = sub_1000C9E90();
  *a1 = v3;
  return result;
}

uint64_t sub_100081A18@<X0>(void *a1@<X8>)
{
  result = sub_1000C9E90();
  *a1 = v3;
  return result;
}

uint64_t sub_100081ADC(uint64_t a1)
{
  v2 = sub_100019558(&qword_100120DC0);
  __chkstk_darwin(v2 - 8);
  sub_10002DFB4(a1, &v5 - v3, &qword_100120DC0);
  return sub_1000C9F20();
}

uint64_t sub_100081BAC(uint64_t a1)
{
  v2 = sub_1000CA330();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000C9E50();
}

unint64_t sub_100081C78()
{
  result = qword_100120D88;
  if (!qword_100120D88)
  {
    sub_1000195A0(&qword_100120D58);
    sub_100081D30();
    sub_10001B1BC(&qword_100120DA8, &qword_100120D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120D88);
  }

  return result;
}

unint64_t sub_100081D30()
{
  result = qword_100120D90;
  if (!qword_100120D90)
  {
    sub_1000195A0(&qword_100120D78);
    sub_100081DE8();
    sub_10001B1BC(&qword_10011EE48, &qword_10011EE50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120D90);
  }

  return result;
}

unint64_t sub_100081DE8()
{
  result = qword_100120D98;
  if (!qword_100120D98)
  {
    sub_1000195A0(&qword_100120120);
    sub_10001B1BC(&qword_100120DA0, &qword_100120128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120D98);
  }

  return result;
}

uint64_t sub_100081EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_100120D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100081F28()
{
  sub_1000195A0(&qword_100120D08);
  sub_10001B1BC(&qword_100120D18, &qword_100120D08);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100081FC0(uint64_t a1)
{
  v21 = a1;
  v1 = sub_100019558(&qword_100120DF0);
  v2 = *(v1 - 8);
  v23 = v1;
  v24 = v2;
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = sub_1000C8F20();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100019558(&qword_100120DF8);
  __chkstk_darwin(v9);
  sub_100082944();
  sub_1000C8FE0();
  v25._countAndFlagsBits = 0x206E65704FLL;
  v25._object = 0xE500000000000000;
  sub_1000C8FD0(v25);
  swift_getKeyPath();
  v20 = sub_100082A0C();
  sub_1000C8F10();

  sub_1000C8FC0();

  v26._countAndFlagsBits = 544106784;
  v26._object = 0xE400000000000000;
  sub_1000C8FD0(v26);
  (*(v6 + 104))(v8, enum case for _AssistantIntent.PhraseToken.applicationName(_:), v5);
  sub_1000C8FB0();
  (*(v6 + 8))(v8, v5);
  v27._countAndFlagsBits = 0x6E69747465532029;
  v27._object = 0xEA00000000007367;
  sub_1000C8FD0(v27);
  sub_1000C8FF0();
  v22 = sub_1000C8F40();
  v10 = v23;
  v18 = *(v24 + 8);
  v24 += 8;
  v18(v4, v23);
  sub_1000C8FE0();
  v28._countAndFlagsBits = 0x206E65704FLL;
  v28._object = 0xE500000000000000;
  sub_1000C8FD0(v28);
  swift_getKeyPath();
  sub_1000C8F10();

  sub_1000C8FC0();

  v29._countAndFlagsBits = 0x676E697474657320;
  v29._object = 0xE800000000000000;
  sub_1000C8FD0(v29);
  sub_1000C8FF0();
  v19 = sub_1000C8F40();
  v11 = v18;
  v18(v4, v10);
  sub_1000C8FE0();
  v30._countAndFlagsBits = 0x20656D20656B6154;
  v30._object = 0xEB00000000206F74;
  sub_1000C8FD0(v30);
  swift_getKeyPath();
  sub_1000C8F10();

  sub_1000C8FC0();

  v31._countAndFlagsBits = 0x676E697474657320;
  v31._object = 0xE800000000000000;
  sub_1000C8FD0(v31);
  sub_1000C8FF0();
  v12 = sub_1000C8F40();
  v11(v4, v23);
  sub_100019558(&unk_100120E00);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1000D45E0;
  v14 = v19;
  *(v13 + 32) = v22;
  *(v13 + 40) = v14;
  *(v13 + 48) = v12;
  v15 = sub_1000C8F30();

  return v15;
}

uint64_t sub_1000824C8()
{
  v0 = sub_1000C8FA0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100082A0C();
  sub_1000C8F10();

  sub_100082944();
  sub_1000C8F90();
  v4 = sub_1000C8F80();
  (*(v1 + 8))(v3, v0);
  sub_100019558(&qword_100120DE0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D3410;
  *(v5 + 32) = v4;
  v6 = sub_1000C8F70();

  return v6;
}

uint64_t sub_100082638()
{
  v0 = sub_1000C8F60();
  v1 = sub_1000C8F60();
  v2 = sub_1000C8F60();
  v3 = sub_1000C8F60();
  v4 = sub_1000C8F60();
  sub_100019558(&qword_100120DE8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D8ED0;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
  *(v5 + 48) = v2;
  *(v5 + 56) = v3;
  *(v5 + 64) = v4;
  v6 = sub_1000C8F50();

  return v6;
}

uint64_t sub_100082770()
{
  v0 = sub_1000C9020();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8[1] = sub_1000ABAAC();
  sub_100082944();
  sub_1000C9030();
  v4 = sub_1000C9010();
  (*(v1 + 8))(v3, v0);
  sub_100019558(&qword_100120DD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1000D3410;
  *(v5 + 32) = v4;
  v6 = sub_1000C9000();

  return v6;
}

uint64_t sub_1000828D8()
{
  if (qword_10011CED8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100082944()
{
  result = qword_100120DC8;
  if (!qword_100120DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120DC8);
  }

  return result;
}

uint64_t sub_100082998@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000C8EC0();
  *a1 = v3;
  return result;
}

unint64_t sub_100082A0C()
{
  result = qword_100120DD8;
  if (!qword_100120DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100120DD8);
  }

  return result;
}

uint64_t sub_100082A80(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EC48);
  result = sub_1000C9820();
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EC50);
  result = sub_1000C9820();
  if (!v20)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EC58);
  result = sub_1000C9820();
  if (v18)
  {
    v3 = sub_10003BFE4(v21, v22);
    __chkstk_darwin(v3);
    v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v6 + 16))(v5);
    v7 = sub_10003BFE4(v19, v20);
    __chkstk_darwin(v7);
    v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v10 + 16))(v9);
    v11 = sub_10003BFE4(v17, v18);
    __chkstk_darwin(v11);
    v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v14 + 16))(v13);
    v15 = sub_100084690(*v5, *v9, *v13);
    sub_10001E37C(v17);
    sub_10001E37C(v19);
    sub_10001E37C(v21);
    return v15;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100082DA4(void *a1)
{
  v2 = sub_1000C9480();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_100120F30);
  result = sub_1000C9810();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = result;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = result;
  sub_1000C9440();

  sub_1000C93F0(v9);
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011EC78);
  result = sub_1000C9810();
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() nt_contentContextWithConfigurationManager:v7 contentHostDirectory:v11 networkBehaviorMonitor:result];
    swift_unknownObjectRelease();

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_100082F74(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &unk_100120F40);
  result = sub_1000C9810();
  if (result)
  {
    v2 = result;
    v3 = [result asWidgetUpdateEventTracker];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100082FFC(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &unk_100120F40);
  result = sub_1000C9810();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083060(void *a1)
{
  v2 = sub_1000CB0A0();
  __chkstk_darwin(v2);
  v3 = sub_1000CB0B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000CA810();
  __chkstk_darwin(v7 - 8);
  sub_10001F934(0, &qword_100120570);
  sub_1000CA800();
  (*(v4 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v19[1] = &_swiftEmptyArrayStorage;
  sub_10004B118();
  sub_100019558(&qword_10011F5D8);
  sub_100085600();
  sub_1000CB200();
  v8 = sub_1000CB0F0();
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_100120F10);
  result = sub_1000C9810();
  if (result)
  {
    v10 = result;
    v19[0] = v8;
    sub_10001E2E4(a1, a1[3]);
    sub_100019558(&unk_10011EFF8);
    result = sub_1000C9810();
    if (result)
    {
      v11 = result;
      sub_10001E2E4(a1, a1[3]);
      sub_100019558(&qword_100120F68);
      v12 = sub_1000C9810();
      sub_10001E2E4(a1, a1[3]);
      sub_100019558(&qword_100120F60);
      v13 = sub_1000C9810();
      sub_10001E2E4(a1, a1[3]);
      sub_100019558(&qword_100120FA0);
      sub_1000CA890();
      sub_1000CA880();
      v14 = sub_1000C97F0();

      v15 = [objc_allocWithZone(FCAsyncSerialQueue) init];
      v16 = objc_allocWithZone(NTTodayContext);
      v17 = v19[0];
      v18 = [v16 initWithContentContext:v10 feedPersonalizerFactory:v11 groupingService:v12 todayBannerValidator:v13 articleExposureRegistry:v14 processVariant:0 accessQueue:v19[0] fetchQueue:v15];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_100083484(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_100120F10);
  result = sub_1000C9810();
  if (result)
  {
    v2 = [result news_core_ConfigurationManager];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008350C()
{
  v0 = objc_allocWithZone(FCNetworkBehaviorMonitor);

  return [v0 initWithOptions:7 cacheDirectory:0];
}

void *sub_100083558(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &unk_10011F0A0);
  result = sub_1000C9810();
  if (result)
  {
    v2 = result;
    type metadata accessor for NTTodayContextResultsService();
    result = swift_allocObject();
    result[2] = 0;
    result[3] = 0;
    result[4] = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000835DC(void *a1)
{
  v2 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v2 - 8);
  v4 = v33 - v3;
  v5 = FCBundle();
  if (!v5)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = v5;
  v7 = sub_1000CACD0();
  v8 = [v6 objectForInfoDictionaryKey:v7];

  if (v8)
  {
    sub_1000CB1E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v9 = 0x6E776F6E6B6E55;
  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      v10 = v34;
      goto LABEL_10;
    }
  }

  else
  {
    sub_10007BCC0(&v37);
  }

  v10 = 0xE700000000000000;
LABEL_10:
  v11 = FCBundle();
  if (!v11)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v12 = v11;
  v13 = sub_1000CACD0();
  v14 = [v12 objectForInfoDictionaryKey:v13];

  if (v14)
  {
    sub_1000CB1E0();
    swift_unknownObjectRelease();
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v37 = v35;
  v38 = v36;
  if (*(&v36 + 1))
  {
    if (swift_dynamicCast())
    {
      v9 = v33[4];
      v15 = v34;
      goto LABEL_19;
    }
  }

  else
  {
    sub_10007BCC0(&v37);
  }

  v15 = 0xE700000000000000;
LABEL_19:
  v33[1] = v15;
  v16 = [objc_opt_self() defaultConfiguration];
  v17 = 1;
  v18 = FCURLForContainerizedUserAccountCachesDirectory();
  v33[2] = v10;
  v33[3] = v9;
  if (v18)
  {
    v19 = v18;
    sub_1000C9440();

    v17 = 0;
  }

  v20 = sub_1000C9480();
  v21 = *(v20 - 8);
  (*(v21 + 56))(v4, v17, 1, v20);
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_100120F38);
  v22 = sub_1000C9810();
  if (!v22)
  {
    goto LABEL_30;
  }

  v23 = v22;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011EC78);
  v24 = sub_1000C9810();
  if (!v24)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v25 = v24;
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    v27 = 0;
  }

  else
  {
    sub_1000C93F0(v26);
    v27 = v28;
    (*(v21 + 8))(v4, v20);
  }

  v29 = objc_allocWithZone(FCConfigurationManager);
  v30 = sub_1000CACD0();
  v31 = sub_1000CACD0();
  v32 = [v29 initWithContextConfiguration:v16 contentHostDirectoryFileURL:v27 feldsparIDProvider:v23 appShortVersionString:v30 buildNumberString:v31 networkBehaviorMonitor:v25];

  swift_unknownObjectRelease();
  if (v32)
  {

    return;
  }

LABEL_32:
  __break(1u);
}

id sub_100083A68()
{
  v0 = [objc_opt_self() sharedInstance];

  return v0;
}

uint64_t sub_100083AA8(void *a1)
{
  sub_100019558(&unk_10011F0B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000D8FA0;
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_10011EC80);
  result = sub_1000C97F0();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(v2 + 32) = result;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &unk_100120F90);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 40) = result;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_10011F030);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *(v2 + 48) = result;
  sub_10001E2E4(a1, a1[3]);
  sub_10001F934(0, &qword_100120F50);
  result = sub_1000C9810();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  *(v2 + 56) = result;
  sub_10001E2E4(a1, a1[3]);
  type metadata accessor for TodayBannerEventTracker();
  result = sub_1000C9810();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 64) = result;
  sub_10001E2E4(a1, a1[3]);
  result = sub_1000C97F0();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_1000CAEB0();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000CAF10();
  }

  sub_1000CAF40();
  v4 = objc_allocWithZone(FTAggregateWidgetEventTracker);
  sub_100019558(&unk_10011F0C0);
  isa = sub_1000CAEC0().super.isa;

  v6 = [v4 initWithEventTrackers:isa];

  return v6;
}

uint64_t sub_100083D8C(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_10011EC70);
  result = sub_1000C9810();
  if (result)
  {
    v2 = [objc_allocWithZone(FTNewsAnalyticsWidgetEventTracker) initWithUserIDProvider:result];
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100083E1C()
{
  v0 = objc_allocWithZone(FTPersonalizationWidgetEventTracker);

  return [v0 init];
}

uint64_t sub_100083E54@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TodayBannerStateStore();
  swift_allocObject();
  result = sub_10002B2E4();
  a1[3] = v2;
  a1[4] = &off_10010D550;
  *a1 = result;
  return result;
}

uint64_t sub_100083EAC(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_100120F58);
  result = sub_1000C9820();
  if (v23)
  {
    v2 = sub_10003BFE4(v22, v23);
    __chkstk_darwin(v2);
    v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TodayBannerStateStore();
    v20 = v7;
    v21 = &off_10010D550;
    v19[0] = v6;
    v8 = type metadata accessor for TodayBannerEventTracker();
    v9 = objc_allocWithZone(v8);
    v10 = sub_10003BFE4(v19, v20);
    __chkstk_darwin(v10);
    v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12);
    v14 = *v12;
    v18[3] = v7;
    v18[4] = &off_10010D550;
    v18[0] = v14;
    sub_10002DE48(v18, v9 + OBJC_IVAR____TtC10NewsToday223TodayBannerEventTracker_store);
    v17.receiver = v9;
    v17.super_class = v8;
    v15 = objc_msgSendSuper2(&v17, "init");
    sub_10001E37C(v18);
    sub_10001E37C(v19);
    sub_10001E37C(v22);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000840F0(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&qword_100120F58);
  result = sub_1000C9820();
  if (v16)
  {
    v2 = sub_10003BFE4(v15, v16);
    __chkstk_darwin(v2);
    v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v5 + 16))(v4);
    v6 = *v4;
    v7 = type metadata accessor for TodayBannerStateStore();
    v14[3] = v7;
    v14[4] = &off_10010D550;
    v14[0] = v6;
    type metadata accessor for TodayBannerValidator();
    v8 = swift_allocObject();
    v9 = sub_10003BFE4(v14, v7);
    __chkstk_darwin(v9);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = *v11;
    v8[5] = v7;
    v8[6] = &off_10010D550;
    v8[2] = v13;
    sub_10001E37C(v14);
    sub_10001E37C(v15);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000842F8(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_100120F20);
  result = sub_1000C9810();
  if (result)
  {
    v3 = result;
    sub_10001E2E4(a1, a1[3]);
    sub_100019558(&qword_100120F70);
    result = sub_1000C9820();
    if (v6)
    {
      type metadata accessor for TodayGroupingService();
      v4 = swift_allocObject();
      *(v4 + 16) = v3;
      sub_1000855E8(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000843E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  sub_100019558(&unk_100120F20);
  result = sub_1000C9810();
  if (result)
  {
    sub_10001E2E4(a1, a1[3]);
    sub_100019558(&qword_100120F80);
    result = sub_1000C9810();
    if (result)
    {
      v5 = [objc_opt_self() currentDevice];
      [v5 userInterfaceIdiom];

      v6 = sub_1000C9B90();
      swift_allocObject();
      result = sub_1000C9B80();
      a2[3] = v6;
      a2[4] = &protocol witness table for XavierGroupingService;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100084520(void *a1)
{
  sub_10001E2E4(a1, a1[3]);
  sub_1000CA8A0();
  result = sub_1000C9810();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100084598@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_10001E2E4(a1, a1[3]);
  v7 = a2(0);
  result = sub_1000C9810();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10008461C()
{
  v0 = [objc_opt_self() widgetEventTrackerWithMaxRowCount:10];

  return v0;
}

void *sub_100084690(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for BiomeEventStore();
  v33[3] = v7;
  v33[4] = &off_1001100A0;
  v33[0] = a1;
  v8 = type metadata accessor for SessionAssembler();
  v31 = v8;
  v32 = &off_10010F120;
  v30[0] = a2;
  v28 = v6;
  v29 = &off_10010DAA0;
  v27[0] = a3;
  type metadata accessor for EventProcessingSidecarTask();
  v9 = swift_allocObject();
  v10 = sub_10003BFE4(v33, v7);
  __chkstk_darwin(v10);
  v12 = (&v27[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = sub_10003BFE4(v30, v31);
  __chkstk_darwin(v14);
  v16 = (&v27[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16);
  v18 = sub_10003BFE4(v27, v28);
  __chkstk_darwin(v18);
  v20 = (&v27[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v12;
  v23 = *v16;
  v24 = *v20;
  v9[5] = v7;
  v9[6] = &off_1001100A0;
  v9[7] = v23;
  v9[2] = v22;
  v9[10] = v8;
  v9[11] = &off_10010F120;
  v9[15] = v6;
  v9[16] = &off_10010DAA0;
  v9[12] = v24;
  sub_10001E37C(v27);
  sub_10001E37C(v30);
  sub_10001E37C(v33);
  return v9;
}

uint64_t sub_100084974()
{
  v0 = sub_1000C9980();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9870();
  sub_100019558(&qword_10011F050);
  sub_1000C9910();

  v4 = enum case for Scope.singleton(_:);
  v5 = *(v1 + 104);
  v5(v3, enum case for Scope.singleton(_:), v0);
  sub_1000C9770();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1000C9870();
  type metadata accessor for EventProcessingSidecarTask();
  sub_1000C9900();

  sub_1000C9870();
  sub_100019558(&unk_100120F10);
  sub_1000C9900();

  v12 = v4;
  v5(v3, v4, v0);
  v11 = v5;
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  sub_100019558(&qword_10011F098);
  sub_1000C9900();

  v5(v3, v4, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  v13 = sub_100019558(&unk_10011EC80);
  sub_1000C9900();

  sub_1000C9870();
  sub_10001F934(0, &unk_10011F0A0);
  sub_1000C9900();

  v7 = v12;
  v8 = v11;
  v11(v3, v12, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  sub_100019558(&unk_100120F20);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  sub_10001F934(0, &qword_10011EC78);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9870();
  type metadata accessor for FCFeedPersonalizationConfigurationSet(0);
  sub_1000C9910();

  sub_1000C9880();
  type metadata accessor for NTTodayContextResultsService();
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_100019558(&qword_100120F30);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_100019558(&qword_100120F38);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_10001F934(0, &unk_100120F40);
  sub_1000C9900();

  sub_1000C9880();
  sub_10001F934(0, &qword_10011F030);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_10001F934(0, &qword_100120F50);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_100019558(&qword_100120F58);
  sub_1000C9910();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  type metadata accessor for TodayBannerEventTracker();
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_100019558(&qword_100120F60);
  sub_1000C9900();

  v8(v3, v7, v0);
  sub_1000C9770();

  v6(v3, v0);
  sub_1000C9880();
  sub_100019558(&qword_100120F68);
  sub_1000C9900();

  sub_1000C9880();
  sub_100019558(&qword_100120F70);
  sub_1000C9910();

  sub_1000C9880();
  sub_100019558(&qword_100120F78);
  sub_1000C9900();

  sub_1000C9880();
  sub_100019558(&qword_100120F80);
  sub_1000C9900();

  sub_1000C9880();
  sub_100019558(&qword_100120F88);
  sub_1000C9910();

  sub_1000C9880();
  sub_1000C9900();
}

uint64_t sub_1000855E8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_100085600()
{
  result = qword_10011F5E0;
  if (!qword_10011F5E0)
  {
    sub_1000195A0(&qword_10011F5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011F5E0);
  }

  return result;
}

uint64_t sub_10008567C(uint64_t a1, uint64_t a2, int *a3)
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
    v15 = sub_100019558(&qword_100120758);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100085814(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v15 = sub_100019558(&qword_100120758);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t type metadata accessor for SectionView()
{
  result = qword_100121000;
  if (!qword_100121000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000859E4()
{
  type metadata accessor for Section();
  if (v0 <= 0x3F)
  {
    type metadata accessor for TodayContent();
    if (v1 <= 0x3F)
    {
      sub_10004CF8C();
      if (v2 <= 0x3F)
      {
        sub_100073DCC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 sub_100085AA0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100085AD4(uint64_t a1, int a2)
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

uint64_t sub_100085B1C(uint64_t result, int a2, int a3)
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

double sub_100085BAC()
{
  v1 = sub_1000C9FA0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SectionView() + 28));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_1000CB050();
  v8 = sub_1000CA220();
  sub_1000C9BF0();

  sub_1000C9F90();
  swift_getAtKeyPath();
  sub_10003FC2C(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_100085D08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100019558(&qword_100121050);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v16 - v8;
  if (*(a1 + *(type metadata accessor for SectionView() + 24)) == 1)
  {
    v10 = [objc_opt_self() separatorColor];
    v11 = sub_1000CA610();
    sub_100085BAC();
    sub_1000CA7A0();
    sub_1000C9CC0();
    v16[1] = v11;
    v16[2] = v21;
    v17 = v22;
    v18 = v23;
    v19 = v24;
    v20 = v25;
    sub_100019558(&qword_100121068);
    sub_10008820C(&qword_100121070, &qword_100121068);
  }

  v12 = sub_1000CA700();
  *v9 = sub_1000CA0E0();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v13 = sub_100019558(&qword_100121058);
  sub_100085F68(a1, &v9[*(v13 + 44)]);
  sub_10002DFB4(v9, v7, &qword_100121050);
  *a2 = v12;
  v14 = sub_100019558(&qword_100121060);
  sub_10002DFB4(v7, a2 + *(v14 + 48), &qword_100121050);

  sub_100031844(v9, &qword_100121050);
  sub_100031844(v7, &qword_100121050);
}

uint64_t sub_100085F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for SectionView();
  v4 = v3 - 8;
  v46 = *(v3 - 8);
  v45[1] = *(v46 + 8);
  __chkstk_darwin(v3);
  v45[0] = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100019558(&qword_100121078);
  v51 = *(v52 - 8);
  v6 = __chkstk_darwin(v52);
  v49 = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v45 - v8;
  v10 = sub_1000CA0A0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SectionHeaderView();
  __chkstk_darwin(v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100019558(&qword_100121080);
  v18 = __chkstk_darwin(v17 - 8);
  v48 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = v45 - v20;
  sub_10008844C(a1, v16, type metadata accessor for Section);
  v22 = a1 + *(v4 + 32);
  v23 = *(v22 + 32);
  v24 = &v16[*(v14 + 20)];
  *v24 = *(v22 + 16);
  *(v24 + 2) = v23;
  v25 = v23;
  sub_1000CA090();
  sub_100088600(&qword_100121088, type metadata accessor for SectionHeaderView);
  v47 = v21;
  sub_1000CA500();
  (*(v11 + 8))(v13, v10);
  v26 = v9;
  sub_100088648(v16, type metadata accessor for SectionHeaderView);
  *&v55 = *(a1 + 16);
  swift_getKeyPath();
  v27 = v45[0];
  sub_10008844C(a1, v45[0], type metadata accessor for SectionView);
  v28 = (v46[80] + 16) & ~v46[80];
  v29 = swift_allocObject();
  sub_100088598(v27, v29 + v28, type metadata accessor for SectionView);

  sub_100019558(&qword_10011E698);
  sub_10001B1BC(&qword_100121090, &qword_10011E698);
  sub_1000CA710();
  sub_1000CA7A0();
  sub_1000C9DC0();
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
  sub_10002DFB4(v47, v48, &qword_100121080);
  v32 = v51;
  v33 = *(v51 + 16);
  v34 = v49;
  v35 = v26;
  v46 = v26;
  v36 = v52;
  v33(v49, v35, v52);
  v37 = v50;
  sub_10002DFB4(v31, v50, &qword_100121080);
  v38 = sub_100019558(&qword_100121098);
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
  sub_100031844(v30, &qword_100121080);
  v43(v34, v36);
  return sub_100031844(v31, &qword_100121080);
}

uint64_t sub_1000866CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v4 = sub_100019558(&qword_1001210A0);
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v34 - v5;
  v39 = sub_100019558(&qword_1001210A8);
  __chkstk_darwin(v39);
  v38 = v34 - v6;
  v7 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Item(0);
  __chkstk_darwin(v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v13 - 8);
  v15 = v34 - v14;
  v16 = sub_1000C9480();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v35 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = v34 - v20;
  v37 = v2;
  sub_100086D5C(a1, &v50);
  v22 = v50;
  v21 = v51;
  v43 = v52;
  v44 = v53;
  v45 = v54;
  v46 = v55;
  v47 = v56;
  v36 = a1;
  sub_10008844C(a1, v12, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100088648(v12, type metadata accessor for Item);
    (*(v17 + 56))(v15, 1, 1, v16);
  }

  else
  {
    sub_100088598(v12, v9, type metadata accessor for Item.Headline);
    sub_10002DFB4(&v9[*(v7 + 24)], v15, &unk_10011E590);
    sub_100088648(v9, type metadata accessor for Item.Headline);
  }

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100031844(v15, &unk_10011E590);
    v50 = v22;
    v51 = v21;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v56 = v47;
    sub_100019558(qword_100120190);
    sub_10008820C(&qword_100120188, qword_100120190);
    result = sub_1000CA700();
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

    sub_100019558(qword_100120190);
    sub_10008820C(&qword_100120188, qword_100120190);
    v27 = v40;
    sub_1000CA310();

    v28 = sub_100087A20(v36);
    v30 = v29;
    v32 = v31;
    sub_10001B1BC(&qword_1001210B0, &qword_1001210A0);
    v33 = v42;
    sub_1000CA4A0();
    sub_100025894(v28, v30, v32 & 1);

    (*(v41 + 8))(v27, v33);
    sub_1000882AC();
    v24 = sub_1000CA700();

    result = (*(v17 + 8))(v48, v47);
  }

  *v49 = v24;
  return result;
}

uint64_t sub_100086D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_10008844C(a1, &v115[-v27], type metadata accessor for Item);
  v126 = v20;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *v28;
    v29 = v28[1];
    v31 = sub_1000CA0D0();
    *&v138 = v30;
    *(&v138 + 1) = v29;
    sub_100027B64();

    v32 = sub_1000CA410();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = [objc_opt_self() secondaryLabelColor];
    v40 = sub_1000CA610();

    LOBYTE(v133) = 1;
    v36 &= 1u;
    LOBYTE(v132) = v36;
    type metadata accessor for SectionView();
    LOBYTE(v29) = sub_1000CA240();
    sub_1000C9C30();
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
    sub_100019558(&qword_1001210C0);
    sub_100088394();
    v45 = sub_1000CA700();
    sub_1000CA7A0();
    result = sub_1000C9CC0();
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
  sub_100088598(v28, v19, type metadata accessor for Item.Headline);
  v120 = v17;
  sub_10008844C(v19, v17, type metadata accessor for Item.Headline);
  v51 = type metadata accessor for SectionView();
  v52 = v131;
  v53 = v131 + *(v51 + 20);
  v54 = v8;
  sub_10008844C(v53, v8, type metadata accessor for TodayContent);
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
  sub_1000884B4(&v138, &v133);
  v63 = [v62 identifier];
  v64 = sub_1000CAD00();
  v66 = v65;

  if (v61)
  {
    if (v60 == v64 && v61 == v66)
    {
      LODWORD(v61) = 1;
    }

    else
    {
      LODWORD(v61) = sub_1000CB530();
    }
  }

  v136 = &type metadata for FeatureFlags.NewsWidget;
  *&v137 = sub_100088510();
  v67 = sub_1000C9760();
  sub_10001E37C(&v133);
  v68 = v54;
  if (v67)
  {
    v69 = *(v53 + *(v6 + 24));
    v70 = *(v69 + 16);
    if (v70)
    {
      v71 = v129;
      sub_10008844C(v69 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * (v70 - 1), v129, type metadata accessor for Section);
      v72 = [v71[1] identifier];
      v73 = sub_1000CAD00();
      v75 = v74;

      sub_100088648(v71, type metadata accessor for Section);
    }

    else
    {
      v73 = 0;
      v75 = 0;
    }

    v76 = v131;
    v77 = [*(v131 + 8) identifier];
    v78 = sub_1000CAD00();
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

    v83 = sub_1000CB530();

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
        sub_10008844C(v84 + ((*(v123 + 80) + 32) & ~*(v123 + 80)) + *(v123 + 72) * (v85 - 1), v125, type metadata accessor for Item);
        v87 = v124;
        sub_10008844C(v86, v124, type metadata accessor for Item);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = 0x6567617373656DLL;
          sub_100088648(v87, type metadata accessor for Item);
          v89 = 0xE700000000000000;
        }

        else
        {
          v91 = v87;
          v92 = v117;
          sub_100088598(v91, v117, type metadata accessor for Item.Headline);
          v93 = [*v92 identifier];
          v88 = sub_1000CAD00();
          v89 = v94;

          sub_100088648(v92, type metadata accessor for Item.Headline);
        }

        v90 = v127;
        sub_100088648(v86, type metadata accessor for Item);
      }

      else
      {
        v88 = 0;
        v89 = 0;
        v90 = v127;
      }

      sub_10008844C(v118, v90, type metadata accessor for Item);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v95 = 0x6567617373656DLL;
        sub_100088648(v90, type metadata accessor for Item);
        v96 = 0xE700000000000000;
        if (v89)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v97 = v117;
        sub_100088598(v90, v117, type metadata accessor for Item.Headline);
        v98 = [*v97 identifier];
        v95 = sub_1000CAD00();
        v96 = v99;

        sub_100088648(v97, type metadata accessor for Item.Headline);
        if (v89)
        {
LABEL_27:
          if (v88 == v95 && v89 == v96)
          {
            v81 = 1;
          }

          else
          {
            v81 = sub_1000CB530();
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
  sub_100019558(&qword_10011EE58);
  swift_storeEnumTagMultiPayload();
  *(v10 + v101[6]) = swift_getKeyPath();
  sub_100019558(&qword_100120088);
  swift_storeEnumTagMultiPayload();
  *v10 = swift_getKeyPath();
  sub_100019558(&qword_10011F778);
  swift_storeEnumTagMultiPayload();
  v102 = (v10 + v101[7]);
  v132 = 0;
  sub_1000CA6C0();
  v103 = v134;
  *v102 = v133;
  v102[1] = v103;
  v104 = (v10 + v101[8]);
  v132 = 0;
  sub_1000CA6C0();
  v105 = v134;
  *v104 = v133;
  v104[1] = v105;
  sub_100088598(v120, v10 + v101[9], type metadata accessor for Item.Headline);
  sub_100088598(v68, v10 + v101[10], type metadata accessor for TodayContent);
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
  sub_100088600(&qword_1001210E8, type metadata accessor for HeadlineCell);
  v110 = sub_1000CA700();
  sub_1000CA7A0();
  sub_1000C9CC0();
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
  return sub_100088648(v122, type metadata accessor for Item.Headline);
}

uint64_t sub_100087A20(uint64_t a1)
{
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10008844C(a1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v7[1];
    v27 = *v7;
    v28 = v8;
    sub_100027B64();
    return sub_1000CA410();
  }

  else
  {
    sub_100088598(v7, v4, type metadata accessor for Item.Headline);
    sub_100019558(&qword_10011E830);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000D3D20;
    v11 = *v4;
    v12 = [*v4 title];
    if (v12)
    {
      v13 = v12;
      v14 = sub_1000CAD00();
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
      v19 = sub_1000CAD00();
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
    sub_100019558(&qword_10011E838);
    sub_10001B1BC(&qword_10011E840, &qword_10011E838);
    v22 = sub_1000CAC50();
    v24 = v23;

    v27 = v22;
    v28 = v24;
    sub_100027B64();
    v25 = sub_1000CA410();
    sub_100088648(v4, type metadata accessor for Item.Headline);
    return v25;
  }
}

uint64_t sub_100087CE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000CA790();
  a1[1] = v3;
  v4 = sub_100019558(&qword_100121048);
  return sub_100085D08(v1, (a1 + *(v4 + 44)));
}

uint64_t sub_100087D30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000BB8AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100087D5C()
{
  v1 = v0;
  v2 = type metadata accessor for SectionView();
  v25 = *(*(v2 - 1) + 80);
  v23 = *(*(v2 - 1) + 64);
  v24 = (v25 + 16) & ~v25;
  v3 = v0 + v24;

  v4 = type metadata accessor for Section();
  v5 = *(v4 + 32);
  v6 = sub_1000C9480();
  v7 = *(v6 - 8);
  v26 = *(v7 + 48);
  if (!v26(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  v8 = *(v4 + 36);
  v9 = sub_1000C95A0();
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

    sub_1000375D8(*&v13[v14[10]], *&v13[v14[10] + 8]);
    v1 = v22;
  }

  swift_unknownObjectRelease();
  v17 = *(v12 + 36);
  if (!v26(v11 + v17, 1, v6))
  {
    (*(v7 + 8))(v11 + v17, v6);
  }

  v18 = (v3 + v2[6]);

  sub_10003FC2C(*(v3 + v2[7]), *(v3 + v2[7] + 8));
  v19 = v2[8];
  sub_100019558(&qword_100120838);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = sub_1000C9C50();
    (*(*(v20 - 8) + 8))(v3 + v19, v20);
  }

  else
  {
  }

  return _swift_deallocObject(v1, v24 + v23, v25 | 7);
}

uint64_t sub_100088188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SectionView();
  result = sub_1000866CC(a1, &v5);
  *a2 = v5;
  return result;
}

uint64_t sub_10008820C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10008827C@<X0>(uint64_t a1@<X8>)
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

unint64_t sub_1000882AC()
{
  result = qword_1001210B8;
  if (!qword_1001210B8)
  {
    sub_1000195A0(&qword_1001210A8);
    sub_10001B1BC(&qword_1001210B0, &qword_1001210A0);
    sub_100088600(&qword_10011FCB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001210B8);
  }

  return result;
}

unint64_t sub_100088394()
{
  result = qword_1001210C8;
  if (!qword_1001210C8)
  {
    sub_1000195A0(&qword_1001210C0);
    sub_10001B1BC(&qword_1001210D0, &qword_1001210D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001210C8);
  }

  return result;
}

uint64_t sub_10008844C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100088510()
{
  result = qword_1001210E0;
  if (!qword_1001210E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001210E0);
  }

  return result;
}

uint64_t sub_100088598(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100088600(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100088648(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000886F0()
{
  result = qword_100121110;
  if (!qword_100121110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121110);
  }

  return result;
}

uint64_t sub_100088788()
{
  v0 = sub_100019558(&qword_100121158);
  sub_10001A5EC(v0, qword_1001345C8);
  sub_10001A5B4(v0, qword_1001345C8);
  sub_10008A1AC();
  return sub_1000C90B0();
}

uint64_t sub_10008880C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1000C9360();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1000C9610();
  v1[6] = swift_task_alloc();
  sub_1000CACC0();
  v1[7] = swift_task_alloc();
  sub_1000C9370();
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100088950, 0, 0);
}

uint64_t sub_100088950()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  sub_100019558(&qword_100121120);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v1, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_1000C9380();
  sub_10001B1BC(&qword_1001211C8, &qword_1001211D0);
  *v4 = sub_1000C91C0();

  v5 = v0[1];

  return v5();
}

uint64_t sub_100088B04()
{
  v0 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1000C9360();
  v3 = *(v12[0] - 8);
  __chkstk_darwin(v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C9610();
  __chkstk_darwin(v6 - 8);
  v7 = sub_1000CACC0();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1000C9370();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = sub_1000C9190();
  sub_10001A5EC(v10, qword_1001345E0);
  sub_10001A5B4(v10, qword_1001345E0);
  sub_1000CACB0();
  sub_1000C95E0();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v12[0]);
  sub_1000C9380();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1000C9180();
}

uint64_t sub_100088DE0()
{
  v0 = sub_100019558(&qword_1001211C0);
  sub_10001A5EC(v0, qword_1001345F8);
  sub_10001A5B4(v0, qword_1001345F8);
  sub_100089BE0();
  return sub_1000C9170();
}

uint64_t sub_100088E64()
{
  v0 = sub_1000C9370();
  sub_10001A5EC(v0, qword_100134610);
  sub_10001A5B4(v0, qword_100134610);
  return sub_1000C9350();
}

uint64_t sub_100088EC8()
{
  v0 = sub_100019558(&qword_10011D820);
  sub_10001A5EC(v0, qword_100134628);
  v1 = sub_10001A5B4(v0, qword_100134628);
  sub_1000C9040();
  v2 = sub_1000C9050();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100088F88()
{
  result = swift_getKeyPath();
  qword_100134640 = result;
  return result;
}

uint64_t sub_100088FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100088FD4, 0, 0);
}

uint64_t sub_100088FD4()
{
  sub_1000C8EC0();
  v1 = *(v0 + 16);
  *(v0 + 24) = v1;
  *(v0 + 72) = v1;
  sub_1000C8EC0();
  *(v0 + 145) = *(v0 + 144);
  if (qword_10011CF08 != -1)
  {
    swift_once();
  }

  v2 = qword_100134640;
  *(v0 + 80) = qword_100134640;

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = sub_10001B1BC(&qword_1001211C8, &qword_1001211D0);
  *(v0 + 96) = v4;
  *v3 = v0;
  v3[1] = sub_100089138;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v2, &type metadata for Bool, v4);
}

uint64_t sub_100089138()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_100017FB0;
  }

  else
  {
    v2 = sub_10008928C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10008928C()
{
  sub_1000C8EC0();
  v1 = v0[4];
  v0[5] = v1;
  v2 = qword_100134640;
  v0[14] = v1;
  v0[15] = v2;

  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = sub_100017DD4;
  v4 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v2, v4);
}

uint64_t (*sub_100089364(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_1000180D8;
}

uint64_t (*sub_1000893D8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1000C8EB0();
  return sub_10001B354;
}

uint64_t sub_10008944C()
{
  if (qword_10011CF08 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1000894AC()
{
  result = qword_100121128;
  if (!qword_100121128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121128);
  }

  return result;
}

unint64_t sub_100089504()
{
  result = qword_100121130;
  if (!qword_100121130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121130);
  }

  return result;
}

uint64_t sub_100089614@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CF00 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_10011D820);
  v3 = sub_10001A5B4(v2, qword_100134628);

  return sub_10001AC74(v3, a1);
}

uint64_t sub_100089698(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001840C;

  return sub_100088FB0(a1, v5, v4);
}

uint64_t sub_100089744@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10008A87C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10008978C()
{
  result = qword_100121138;
  if (!qword_100121138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121138);
  }

  return result;
}

unint64_t sub_1000897E4()
{
  result = qword_100121140;
  if (!qword_100121140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121140);
  }

  return result;
}

unint64_t sub_10008983C()
{
  result = qword_100121148;
  if (!qword_100121148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121148);
  }

  return result;
}

uint64_t sub_1000898F4()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  sub_1000C9680();

  *v1 = *(v0 + 24);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000899EC()
{
  if (qword_10011CD58 != -1)
  {
    swift_once();
  }

  sub_1000C9680();

  if (*(v0 + 16) == 1)
  {
    *(v0 + 16) = *(v0 + 17);

    sub_1000C9690();
  }

  else
  {
    sub_10001A6F8();
    swift_allocError();
    swift_willThrow();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100089B2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEE0 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_100121158);
  v3 = sub_10001A5B4(v2, qword_1001345C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100089BE0()
{
  result = qword_100121160;
  if (!qword_100121160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121160);
  }

  return result;
}

uint64_t sub_100089C7C()
{
  v0 = qword_100121100;

  return v0;
}

unint64_t sub_100089CB8()
{
  result = qword_100121170;
  if (!qword_100121170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121170);
  }

  return result;
}

uint64_t sub_100089D0C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011CEF0 != -1)
  {
    swift_once();
  }

  v2 = sub_100019558(&qword_1001211C0);
  v3 = sub_10001A5B4(v2, qword_1001345F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100089DC4()
{
  result = qword_100121178;
  if (!qword_100121178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121178);
  }

  return result;
}

unint64_t sub_100089E1C()
{
  result = qword_100121180;
  if (!qword_100121180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121180);
  }

  return result;
}

unint64_t sub_100089E74()
{
  result = qword_100121188;
  if (!qword_100121188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121188);
  }

  return result;
}

unint64_t sub_100089ECC()
{
  result = qword_100121190;
  if (!qword_100121190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121190);
  }

  return result;
}

uint64_t sub_100089F20@<X0>(uint64_t *a1@<X8>)
{
  sub_10008A1AC();
  result = sub_1000C8EA0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100089F60()
{
  sub_10008A158();
  v1 = sub_1000C9150();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10008A048(uint64_t a1)
{
  v2 = sub_100089BE0();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10008A098()
{
  result = qword_1001211A8;
  if (!qword_1001211A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001211A8);
  }

  return result;
}

uint64_t sub_10008A0EC(uint64_t a1)
{
  v2 = sub_100089ECC();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10008A158()
{
  result = qword_1001211B0;
  if (!qword_1001211B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001211B0);
  }

  return result;
}

unint64_t sub_10008A1AC()
{
  result = qword_1001211B8;
  if (!qword_1001211B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001211B8);
  }

  return result;
}

uint64_t sub_10008A200@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = sub_100019558(&qword_10011D8F8);
  v22 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = v21 - v2;
  v4 = sub_100019558(&qword_10011D900);
  v5 = *(v4 - 8);
  v23 = v4;
  v24 = v5;
  __chkstk_darwin(v4);
  v7 = v21 - v6;
  v8 = sub_100019558(&qword_10011D908);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  __chkstk_darwin(v8);
  v11 = v21 - v10;
  v21[1] = "ally Download Stories In Feeds";
  v21[0] = swift_getKeyPath();
  sub_100019558(&qword_10011D910);
  sub_10008A1AC();
  v12 = sub_1000195A0(&qword_10011D918);
  v13 = sub_1000CA100();
  v14 = sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  v15 = sub_10003B248();
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1000CAAC0();
  sub_1000CA040();
  v16 = sub_10001B1BC(&unk_10011D930, &qword_10011D8F8);
  sub_1000CA140();

  (*(v22 + 8))(v3, v1);
  v28 = v1;
  v29 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v23;
  sub_1000CA170();
  (*(v24 + 8))(v7, v18);
  v28 = v18;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v19 = v25;
  sub_1000CA130();
  return (*(v26 + 8))(v11, v19);
}

uint64_t sub_10008A66C()
{
  v0 = sub_1000CA100();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&qword_10011D918);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - v6;
  sub_1000CA040();
  sub_1000CA6B0();
  sub_1000CA0F0();
  sub_10001B1BC(&qword_10011D920, &qword_10011D918);
  sub_10003B248();
  sub_1000CA460();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_10008A87C()
{
  v0 = sub_100019558(&qword_10011D7F8);
  __chkstk_darwin(v0 - 8);
  v30 = &v22 - v1;
  v31 = sub_1000C9140();
  v2 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100019558(&qword_10011D800);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100019558(&qword_10011D7C0);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = sub_1000C9370();
  v29 = v14;
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v23 = sub_100019558(&qword_1001211D8);
  sub_1000C9350();
  v16 = *(v15 + 56);
  v27 = v15 + 56;
  v28 = v16;
  v16(v13, 1, 1, v14);
  v33 = 0;
  v17 = sub_1000C8E70();
  v18 = *(*(v17 - 8) + 56);
  v18(v10, 1, 1, v17);
  v18(v8, 1, 1, v17);
  v26 = enum case for InputConnectionBehavior.default(_:);
  v19 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v19;
  v19(v4);
  sub_100089BE0();
  v23 = sub_1000C8EE0();
  sub_100019558(&qword_10011D810);
  sub_1000C9350();
  v28(v13, 1, 1, v29);
  v32 = 2;
  v20 = sub_1000CAF90();
  (*(*(v20 - 8) + 56))(v30, 1, 1, v20);
  v18(v10, 1, 1, v17);
  v25(v4, v26, v31);
  sub_1000C8F00();
  return v23;
}

double sub_10008AD54@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1000CA580();
  v4 = sub_1000CA5D0();

  sub_1000CA580();
  v5 = sub_1000CA5D0();

  *a1 = v3;
  *(a1 + 8) = 256;
  *(a1 + 16) = v4;
  *(a1 + 24) = xmmword_1000D9880;
  *(a1 + 40) = 0x4000000000000000;
  *(a1 + 48) = v5;
  result = 10.0;
  *(a1 + 56) = xmmword_1000D9890;
  *(a1 + 72) = 0x4000000000000000;
  return result;
}

uint64_t sub_10008AE78(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000195A0(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10008AEFC()
{
  result = qword_100121200;
  if (!qword_100121200)
  {
    sub_1000195A0(&qword_100121208);
    sub_10005F250();
    sub_10008AF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121200);
  }

  return result;
}

unint64_t sub_10008AF88()
{
  result = qword_100121210;
  if (!qword_100121210)
  {
    sub_1000195A0(&qword_100121218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121210);
  }

  return result;
}

uint64_t sub_10008B000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10008B080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsTimelineEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ContentView()
{
  result = qword_100121278;
  if (!qword_100121278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008B13C()
{
  result = type metadata accessor for NewsTimelineEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008B1C4@<X0>(uint64_t *a1@<X8>)
{
  v76 = a1;
  v72 = type metadata accessor for RegularContentView();
  __chkstk_darwin(v72);
  v69 = (&v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = sub_100019558(&qword_1001212B0);
  __chkstk_darwin(v71);
  v70 = &v60 - v3;
  v68 = type metadata accessor for SmallContentView(0);
  __chkstk_darwin(v68);
  v67 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_100019558(&qword_1001212B8);
  __chkstk_darwin(v65);
  v6 = &v60 - v5;
  v7 = sub_1000C9DA0();
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
  v62 = sub_100019558(&qword_1001212C0);
  __chkstk_darwin(v62);
  v60 = &v60 - v15;
  v16 = sub_100019558(&qword_1001205B8);
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
  v73 = *(v29 + *(type metadata accessor for TodayContent() + 40)) + OBJC_IVAR____TtC10NewsToday220TrackableWidgetState_layoutContext;
  v30 = *(v73 + 16);
  if (v30 == 1)
  {
    v32 = v67;
    v33 = v68;
    v72 = v6;
    sub_10008BD5C(v19);
    if ((*(v23 + 48))(v19, 1, v22) == 1)
    {
      v31 = v19;
      goto LABEL_7;
    }

    sub_10008C3AC(v19, v26);
    v47 = v26;
    v48 = v32;
    v49 = v47;
    sub_10008C410(v47, v48 + v33[7], type metadata accessor for Item);
    sub_10008C410(v29, v48 + v33[8], type metadata accessor for TodayContent);
    v50 = v73;
    sub_10008C410(v73, v48 + v33[9], type metadata accessor for LayoutContext);
    KeyPath = swift_getKeyPath();
    *(v48 + v33[6]) = swift_getKeyPath();
    sub_100019558(&qword_10011EE58);
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
      sub_1000C9D90();
      v53 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10008C540(&qword_10011F7C8, &type metadata accessor for RedactionReasons);
      sub_100019558(&qword_10011FBD0);
      sub_10008C2E0();
      v53 = v75;
      sub_1000CB200();
    }

    v59 = sub_10008C540(&qword_1001212D0, type metadata accessor for SmallContentView);
    sub_1000CA530();
    (*(v74 + 8))(v12, v53);
    sub_10008C4E0(v48, type metadata accessor for SmallContentView);
    v77 = v33;
    v78 = v59;
    swift_getOpaqueTypeConformance2();
    v57 = sub_1000CA700();
    v58 = v49;
LABEL_21:
    sub_10008C4E0(v58, type metadata accessor for Item);
    result = v57;
    goto LABEL_22;
  }

  if (v30 != 11)
  {
    v34 = v72;
    v35 = v69;
    sub_10008C410(v29, v69 + *(v72 + 24), type metadata accessor for TodayContent);
    v36 = v73;
    sub_10008C410(v73, v35 + v34[7], type metadata accessor for LayoutContext);
    *v35 = swift_getKeyPath();
    sub_100019558(&qword_100120838);
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
      sub_1000C9D90();
      v41 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10008C540(&qword_10011F7C8, &type metadata accessor for RedactionReasons);
      sub_100019558(&qword_10011FBD0);
      sub_10008C2E0();
      v40 = v66;
      v41 = v75;
      sub_1000CB200();
    }

    v54 = sub_10008C540(&qword_1001212C8, type metadata accessor for RegularContentView);
    sub_1000CA530();
    (*(v74 + 8))(v40, v41);
    sub_10008C4E0(v35, type metadata accessor for RegularContentView);
    v77 = v34;
    v78 = v54;
    swift_getOpaqueTypeConformance2();
    goto LABEL_16;
  }

  sub_10008BD5C(v21);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    sub_10008C3AC(v21, v28);
    v42 = v61;
    sub_10008C410(v28, v61, type metadata accessor for Item);
    v43 = v63;
    sub_10008C410(v29, v42 + *(v63 + 20), type metadata accessor for TodayContent);
    v44 = v73;
    sub_10008C410(v73, v42 + v43[6], type metadata accessor for LayoutContext);
    if (*(v44 + *(type metadata accessor for LayoutContext() + 44)) == 1)
    {
      v45 = v64;
      sub_1000C9D90();
      v46 = v75;
    }

    else
    {
      v77 = &_swiftEmptyArrayStorage;
      sub_10008C540(&qword_10011F7C8, &type metadata accessor for RedactionReasons);
      sub_100019558(&qword_10011FBD0);
      sub_10008C2E0();
      v45 = v64;
      v46 = v75;
      sub_1000CB200();
    }

    v56 = sub_10008C540(&qword_1001212D8, type metadata accessor for RectangularContentView);
    sub_1000CA530();
    (*(v74 + 8))(v45, v46);
    sub_10008C4E0(v42, type metadata accessor for RectangularContentView);
    v77 = v43;
    v78 = v56;
    swift_getOpaqueTypeConformance2();
    v57 = sub_1000CA700();
    v58 = v28;
    goto LABEL_21;
  }

  v31 = v21;
LABEL_7:
  sub_10008C344(v31);
LABEL_16:
  result = sub_1000CA700();
LABEL_22:
  *v76 = result;
  return result;
}

uint64_t sub_10008BD5C@<X0>(uint64_t a1@<X8>)
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
  v11 = sub_10008CB2C();
  if (*(v11 + 2))
  {
    sub_10008C410(v11 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v10, type metadata accessor for Item);

    sub_10008C3AC(v10, v8);
    sub_10008C410(v8, v5, type metadata accessor for Item);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10008C4E0(v5, type metadata accessor for Item);
      sub_10008C3AC(v8, a1);
      return (*(v15 + 56))(a1, 0, 1, v2);
    }

    else
    {
      sub_10008C3AC(v8, a1);
      (*(v15 + 56))(a1, 0, 1, v2);
      return sub_10008C4E0(v5, type metadata accessor for Item);
    }
  }

  else
  {

    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v2);
  }
}

uint64_t sub_10008C020()
{
  sub_1000C9F30();
  sub_10008C540(&unk_1001212E0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000C9FB0();
  return v1;
}

uint64_t sub_10008C09C@<X0>(_BYTE *a1@<X8>)
{
  sub_1000C9F30();
  sub_10008C540(&unk_1001212E0, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_1000C9FB0();
  *a1 = v3;
  return result;
}

uint64_t sub_10008C17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

uint64_t sub_10008C2B0@<X0>(void *a1@<X8>)
{
  result = sub_1000C9F60();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_10008C2E0()
{
  result = qword_10011FBD8;
  if (!qword_10011FBD8)
  {
    sub_1000195A0(&qword_10011FBD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FBD8);
  }

  return result;
}

uint64_t sub_10008C344(uint64_t a1)
{
  v2 = sub_100019558(&qword_1001205B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10008C3AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008C410(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008C4E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008C540(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008C594()
{
  v1 = sub_1000CA550();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + *(type metadata accessor for TodayContent() + 28)) widgetConfig];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v5 audioIndicatorColor];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = sub_1000CAD00();
  v10 = v9;

  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_8:
    v7 = sub_1000CACD0();
    v12 = [objc_opt_self() colorWithHexString:v7];
    goto LABEL_9;
  }

  v12 = [objc_opt_self() colorWithHexString:v7];
LABEL_9:
  v13 = v12;

  [v13 red];
  [v13 green];
  [v13 blue];
  (*(v2 + 104))(v4, enum case for Color.RGBColorSpace.sRGB(_:), v1);
  v14 = sub_1000CA600();

  return v14;
}

uint64_t sub_10008C7B8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for Section();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8 - 8);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = type metadata accessor for TodayContent();
  v18 = *(v4 + v17[6]);
  v19 = v18[2];

  if (!v19)
  {
    sub_1000CB050();
    sub_10001F934(0, &qword_10011F5F0);
    v23 = sub_1000CB160();
    sub_1000C9BE0();

    goto LABEL_7;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v20 = v18[2];
    if (v20)
    {
      goto LABEL_4;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v18 = sub_10002AAC0(v18);
  v20 = v18[2];
  if (!v20)
  {
    goto LABEL_9;
  }

LABEL_4:
  v21 = v20 - 1;
  v38 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v9 = *(v9 + 72);
  v22 = v18 + v38 + v9 * v21;
  v18[2] = v21;
  sub_10008F3FC(v22, v16, type metadata accessor for Section);
  sub_10002C824(a1, a2, v14);
  sub_10008F394(v14, v39, type metadata accessor for Section);
  v19 = v18[2];
  v20 = v18[3];
  a2 = v19 + 1;
  if (v19 >= v20 >> 1)
  {
LABEL_10:
    v18 = sub_10006E06C(v20 > 1, a2, 1, v18);
  }

  sub_10008F334(v14, type metadata accessor for Section);
  sub_10008F334(v16, type metadata accessor for Section);
  v18[2] = a2;
  sub_10008F3FC(v39, v18 + v38 + v19 * v9, type metadata accessor for Section);
LABEL_7:
  v24 = *v4;
  sub_10002DFB4(v4 + v17[5], a3 + v17[5], &unk_100120590);
  v25 = *(v4 + v17[7]);
  v26 = *(v4 + v17[8]);
  sub_10002DFB4(v4 + v17[9], a3 + v17[9], &unk_10011E590);
  v27 = *(v4 + v17[10]);
  v28 = (v4 + v17[11]);
  v29 = *v28;
  v30 = v28[1];
  v31 = (v4 + v17[12]);
  *a3 = v24;
  *(a3 + v17[6]) = v18;
  *(a3 + v17[7]) = v25;
  *(a3 + v17[8]) = v26;
  v33 = *v31;
  v32 = v31[1];
  *(a3 + v17[10]) = v27;
  v34 = (a3 + v17[11]);
  *v34 = v29;
  v34[1] = v30;
  v35 = (a3 + v17[12]);
  *v35 = v33;
  v35[1] = v32;

  v36 = v24;
  swift_unknownObjectRetain();
}

int *sub_10008CB2C()
{
  v1 = type metadata accessor for Item(0);
  v21 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Section();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TodayContent();
  v8 = *(v0 + result[6]);
  v23 = *(v8 + 16);
  if (v23)
  {
    v9 = 0;
    v22 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = &_swiftEmptyArrayStorage;
    v19 = v8;
    v20 = v5;
    while (v9 < *(v8 + 16))
    {
      v11 = v24;
      sub_10008F394(v22 + *(v5 + 72) * v9, v24, type metadata accessor for Section);
      v12 = *(v11 + 16);

      sub_10008F334(v11, type metadata accessor for Section);
      v13 = *(v12 + 16);
      if (v13)
      {
        v14 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v15 = v12 + v14;
        v16 = *(v21 + 72);
        do
        {
          sub_10008F394(v15, v3, type metadata accessor for Item);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_10006DC84(0, v10[2] + 1, 1, v10);
          }

          v18 = v10[2];
          v17 = v10[3];
          if (v18 >= v17 >> 1)
          {
            v10 = sub_10006DC84(v17 > 1, v18 + 1, 1, v10);
          }

          v10[2] = v18 + 1;
          sub_10008F3FC(v3, v10 + v14 + v18 * v16, type metadata accessor for Item);
          v15 += v16;
          --v13;
        }

        while (v13);

        v8 = v19;
        v5 = v20;
      }

      else
      {
      }

      if (++v9 == v23)
      {
        return v10;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10008CE04(void *a1)
{
  v2 = [a1 banner];
  if (v2 && (v3 = v2, v4 = [v2 imageMethod], v3, v4 == 1))
  {
    v5 = 0;
  }

  else
  {
    v6 = [a1 sourceIdentifier];
    v7 = sub_1000CAD00();
    v9 = v8;

    if (v7 == sub_1000CAD00() && v9 == v10)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1000CB530();
    }
  }

  return v5 & 1;
}

uint64_t sub_10008CEF0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_1000C9480();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002DFB4(a1, v8, &unk_10011E590);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_100031844(v8, &unk_10011E590);
    return (*(v10 + 56))(a3, 1, 1, v9);
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    if (qword_10011CE98 != -1)
    {
      swift_once();
    }

    sub_10001A5B4(v9, qword_100134510);
    sub_10008F2EC(&qword_1001214A0, &type metadata accessor for URL);
    if (sub_1000CAC90())
    {
      v14(a3, v12, v9);
      return (*(v10 + 56))(a3, 0, 1, v9);
    }

    else
    {
      v15 = objc_opt_self();
      sub_1000C93F0(v16);
      v18 = v17;
      v19 = [v15 engagementDescriptorWithTargetURL:v17];

      sub_10001E2E4(a2, a2[3]);
      sub_1000B3180(v19, a3);
      swift_unknownObjectRelease();
      return (*(v10 + 8))(v12, v9);
    }
  }
}

uint64_t sub_10008D1D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x72656E6E6162;
    v6 = 0x736E6F6974636573;
    if (a1 != 2)
    {
      v6 = 0x666E496863746566;
    }

    if (!a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6F74537465737361;
    if (a1 != 7)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10008D320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008F000(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008D348(uint64_t a1)
{
  v2 = sub_10008DECC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10008D384(uint64_t a1)
{
  v2 = sub_10008DECC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void TodayContent.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v33);
  v34 = &v27 - v3;
  v4 = sub_100019558(&unk_100120590);
  __chkstk_darwin(v4);
  v6 = &v27 - v5;
  v7 = sub_100019558(&qword_1001212F0);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v10 = type metadata accessor for TodayContent();
  __chkstk_darwin(v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v37 = a1;
  sub_10001E2E4(a1, v13);
  sub_10008DECC();
  v14 = v36;
  sub_1000CB610();
  if (v14)
  {
    goto LABEL_3;
  }

  v31 = v10;
  v36 = v12;
  v39 = 0;
  sub_10001F720();
  sub_1000CB480();
  v15 = v38;
  sub_10001F934(0, &unk_100121BB0);
  sub_10001F934(0, &qword_100121300);
  v16 = sub_1000CB070();
  v30 = v15;
  if (!v16)
  {
    sub_10008DF20();
    swift_allocError();
    *v17 = 0;
    swift_willThrow();
    sub_10001F774(v30, *(&v15 + 1));
    (*(v35 + 8))(v9, v7);
LABEL_3:
    sub_10001E37C(v37);
    return;
  }

  *v36 = v16;
  v39 = 3;
  sub_1000CB480();
  v18 = v38;
  sub_10001F934(0, &qword_100121310);
  v29 = v18;
  v19 = sub_1000CB070();
  if (v19)
  {
    v21 = v31;
    *(v36 + v31[7]) = v19;
    LOBYTE(v38) = 1;
    sub_10008DF74();
    sub_1000CB480();
    v28 = v15;
    v23 = v36;
    sub_10002DB04(v6, v36 + v21[5], &unk_100120590);
    sub_100019558(&qword_100121328);
    v39 = 2;
    sub_10008E028();
    sub_1000CB480();
    *(v23 + v21[6]) = v38;
    LOBYTE(v38) = 4;
    *(v23 + v21[8]) = sub_1000CB460() & 1;
    LOBYTE(v38) = 5;
    sub_10002D99C();
    v24 = v34;
    sub_1000CB480();
    sub_10002DB04(v24, v23 + v21[9], &unk_10011E590);
    type metadata accessor for TrackableWidgetState();
    v39 = 6;
    sub_10008F2EC(&unk_100121340, type metadata accessor for TrackableWidgetState);
    sub_1000CB480();
    *(v36 + v31[10]) = v38;
    sub_100019558(&unk_100121BF0);
    v39 = 7;
    sub_10001E75C(&qword_100121350);
    sub_1000CB480();
    *(v36 + v31[11]) = v38;
    v39 = 8;
    sub_1000CB480();
    (*(v35 + 8))(0, v7);
    sub_10001F774(v30, *(&v28 + 1));
    sub_10001F774(v29, v28);
    v25 = v32;
    v26 = v36;
    *(v36 + v31[12]) = v38;
    sub_10008F394(v26, v25, type metadata accessor for TodayContent);
    sub_10001E37C(v37);
    sub_10008F334(v26, type metadata accessor for TodayContent);
  }

  else
  {
    sub_10008DF20();
    swift_allocError();
    *v22 = 1;
    swift_willThrow();
    sub_10001F774(v30, *(&v15 + 1));
    sub_10001F774(v29, *(&v18 + 1));
    (*(v35 + 8))(v9, v7);
    v20 = v36;
    sub_10001E37C(v37);
  }
}

uint64_t type metadata accessor for TodayContent()
{
  result = qword_100121400;
  if (!qword_100121400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10008DECC()
{
  result = qword_1001212F8;
  if (!qword_1001212F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001212F8);
  }

  return result;
}

unint64_t sub_10008DF20()
{
  result = qword_100121308;
  if (!qword_100121308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121308);
  }

  return result;
}

unint64_t sub_10008DF74()
{
  result = qword_100121318;
  if (!qword_100121318)
  {
    sub_1000195A0(&unk_100120590);
    sub_10008F2EC(&qword_100121320, type metadata accessor for Banner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121318);
  }

  return result;
}

unint64_t sub_10008E028()
{
  result = qword_100121330;
  if (!qword_100121330)
  {
    sub_1000195A0(&qword_100121328);
    sub_10008F2EC(&qword_100121338, type metadata accessor for Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121330);
  }

  return result;
}

uint64_t TodayContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100019558(&qword_100121358);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v35 - v7;
  sub_10001E2E4(a1, a1[3]);
  sub_10008DECC();
  sub_1000CB630();
  v9 = objc_opt_self();
  v10 = *v3;
  v43 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v43];
  v12 = v43;
  if (v11)
  {
    v40 = v3;
    v41 = v6;
    v13 = sub_1000C94B0();
    v15 = v14;

    v43 = v13;
    v44 = v15;
    v42 = 0;
    sub_10001F870();
    sub_1000CB4F0();
    if (v2)
    {
      (*(v41 + 8))(v8, v5);
      return sub_10001F774(v13, v15);
    }

    else
    {
      v37 = v5;
      v38 = v15;
      v39 = v13;
      v18 = type metadata accessor for TodayContent();
      v19 = *(v40 + v18[7]);
      v43 = 0;
      v20 = [v9 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v43];
      v21 = v43;
      if (v20)
      {
        v22 = sub_1000C94B0();
        v24 = v23;

        v43 = v22;
        v44 = v24;
        v42 = 3;
        v25 = v37;
        sub_1000CB4F0();
        v26 = v41;
        v36 = v24;
        LOBYTE(v43) = 1;
        sub_100019558(&unk_100120590);
        sub_10008E78C();
        v28 = v40;
        sub_1000CB4F0();
        v29 = v28;
        v43 = *(v28 + v18[6]);
        v42 = 2;

        sub_100019558(&qword_100121328);
        sub_10008E840();
        sub_1000CB4F0();

        LOBYTE(v43) = 4;
        sub_1000CB4C0();
        LOBYTE(v43) = 5;
        sub_100019558(&unk_10011E590);
        sub_10002DC98();
        sub_1000CB4F0();
        v43 = *(v28 + v18[10]);
        v42 = 6;
        type metadata accessor for TrackableWidgetState();
        sub_10008F2EC(&qword_100121398, type metadata accessor for TrackableWidgetState);

        sub_1000CB4F0();

        v30 = v28 + v18[11];
        v31 = *(v30 + 8);
        v43 = *v30;
        v44 = v31;
        v42 = 7;

        v32 = sub_100019558(&unk_100121BF0);
        v35[0] = sub_10001E75C(&qword_1001213A0);
        v35[1] = v32;
        sub_1000CB4F0();

        v33 = v29 + v18[12];
        v34 = *(v33 + 8);
        v43 = *v33;
        v44 = v34;
        v42 = 8;

        sub_1000CB4F0();
        sub_10001F774(v22, v36);
        sub_10001F774(v39, v38);

        return (*(v26 + 8))(v8, v25);
      }

      else
      {
        v27 = v21;
        sub_1000C9340();

        swift_willThrow();
        sub_10001F774(v39, v38);
        return (*(v41 + 8))(v8, v37);
      }
    }
  }

  else
  {
    v17 = v12;
    sub_1000C9340();

    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }
}

unint64_t sub_10008E78C()
{
  result = qword_100121368;
  if (!qword_100121368)
  {
    sub_1000195A0(&unk_100120590);
    sub_10008F2EC(&qword_100121370, type metadata accessor for Banner);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121368);
  }

  return result;
}

unint64_t sub_10008E840()
{
  result = qword_100121378;
  if (!qword_100121378)
  {
    sub_1000195A0(&qword_100121328);
    sub_10008F2EC(&unk_100121380, type metadata accessor for Section);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121378);
  }

  return result;
}

uint64_t sub_10008E938(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100019558(&unk_100120590);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100019558(&unk_10011E590);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10008EA88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100019558(&unk_100120590);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100019558(&unk_10011E590);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10008EBC4()
{
  sub_10001F934(319, &qword_100121300);
  if (v0 <= 0x3F)
  {
    sub_10008EDCC(319, &qword_100121410, type metadata accessor for Banner, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10008EDCC(319, &qword_100121418, type metadata accessor for Section, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10008ED68();
        if (v3 <= 0x3F)
        {
          sub_10008EDCC(319, &qword_100122A70, &type metadata accessor for URL, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for TrackableWidgetState();
            if (v5 <= 0x3F)
            {
              sub_10008EE30();
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

unint64_t sub_10008ED68()
{
  result = qword_100121420;
  if (!qword_100121420)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100121420);
  }

  return result;
}

void sub_10008EDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10008EE30()
{
  if (!qword_100121430)
  {
    v0 = sub_1000CB170();
    if (!v1)
    {
      atomic_store(v0, &qword_100121430);
    }
  }
}

unint64_t sub_10008EEA4()
{
  result = qword_100121480;
  if (!qword_100121480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121480);
  }

  return result;
}

unint64_t sub_10008EEFC()
{
  result = qword_100121488;
  if (!qword_100121488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121488);
  }

  return result;
}

unint64_t sub_10008EF54()
{
  result = qword_100121490;
  if (!qword_100121490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121490);
  }

  return result;
}

unint64_t sub_10008EFAC()
{
  result = qword_100121498;
  if (!qword_100121498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121498);
  }

  return result;
}

uint64_t sub_10008F000(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001000E5050 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6E6162 && a2 == 0xE600000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1000CB530() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E496863746566 && a2 == 0xED0000617461446FLL || (sub_1000CB530() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001000E5070 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001000E5090 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000E50B0 == a2 || (sub_1000CB530() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F74537465737361 && a2 == 0xEC00000044496572 || (sub_1000CB530() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001000E50D0 == a2)
  {

    return 8;
  }

  else
  {
    v5 = sub_1000CB530();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_10008F2EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008F334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008F394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008F3FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008F464(void *a1, void *a2)
{
  v4 = sub_1000C95A0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v34 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v35 = a1;
  v13 = sub_10001E2E4(a1, v11);
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
  v19 = sub_10001E2E4(a2, v18);
  v20 = *(v17 + 8);
  v34[1] = v19;
  v36 = v17;
  v37 = v18;
  v21 = v17;
  v22 = v20;
  v20(v18, v21);
  sub_1000C94E0();
  v24 = fabs(v23);
  v25 = *(v16 + 8);
  v25(v8, v4);
  v43 = v4;
  v25(v10, v4);
  if (v24 <= 1.0)
  {
    v28 = v35[3];
    v29 = v35[4];
    sub_10001E2E4(v35, v28);
    v30 = (*(v29 + 16))(v28, v29);
    v31 = v42[3];
    v32 = v42[4];
    sub_10001E2E4(v42, v31);
    v26 = v30 < (*(v32 + 16))(v31, v32);
  }

  else
  {
    v39(v41, v40);
    v22(v37, v36);
    v26 = sub_1000C9510();
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
  sub_1000CAF80();
  v41 = sub_1000CABF0();
  v15 = sub_1000CABF0();
  v40 = v15;
  if (sub_1000CAF60())
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
      v19 = sub_1000CAF30();
      sub_1000CAF00();
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
        result = sub_1000CB290();
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
        if ((sub_1000CB010() & 1) == 0)
        {
          v39 = v25;
          sub_1000CAF80();

          sub_1000CAF50();
          sub_1000CAF70(0);
        }
      }

      v17 = v38;
      v21(v34, v38, a4);
      sub_1000CAF50();
      (*v32)(v17, a4);
      a3 = v31;
      v18 = sub_1000CAF60();
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
  if (sub_1000CB010())
  {
  }

  else
  {
    v39 = v15;
    sub_1000CAF80();
    sub_1000CAF50();
  }

  return v41;
}

uint64_t sub_10008FAFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v96 = sub_1000C95A0();
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
  v8 = sub_100019558(&qword_100121550);
  v9 = __chkstk_darwin(v8 - 8);
  v98 = (&v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v103 = &v88 - v11;
  v104 = type metadata accessor for EngagementEvent(0);
  v101 = *(v104 - 8);
  __chkstk_darwin(v104);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100019558(&qword_10011EA08);
  v15 = __chkstk_darwin(v14 - 8);
  v89 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v106 = &v88 - v17;
  v18 = sub_100019558(&qword_100121558);
  __chkstk_darwin(v18 - 8);
  v20 = &v88 - v19;
  v21 = type metadata accessor for AppearanceEvent(0);
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v88 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v105 = &v88 - v25;
  v26 = *a1;
  v95 = sub_100019558(&unk_10011E820);
  v27 = swift_allocObject();
  v94 = xmmword_1000D3410;
  *(v27 + 16) = xmmword_1000D3410;
  sub_100019558(&unk_10011F9F0);
  v28 = sub_1000CAEE0();
  v30 = v29;
  *(v27 + 56) = &type metadata for String;
  v97 = sub_100024C50();
  *(v27 + 64) = v97;
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v107 = sub_100024CA4();
  v31 = sub_1000CB160();
  sub_1000CB060();
  sub_1000C9BE0();

  v32 = *(v26 + 16);
  if (!v32)
  {
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_9;
  }

  sub_10002DE48(v26 + 32, v112);
  v33 = swift_dynamicCast();
  (*(v22 + 56))(v20, v33 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
LABEL_9:
    sub_100031844(v20, &qword_100121558);
    sub_1000CB040();
    v41 = sub_1000CB160();
    sub_1000C9BE0();

    return (*(v108 + 56))(v109, 1, 1, v113);
  }

  v34 = v20;
  v35 = v105;
  result = sub_10009472C(v34, v105, type metadata accessor for AppearanceEvent);
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

    sub_10002DE48(v38, &v111);
    sub_10002DE48(&v111, v110);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v37;
    result = sub_10001E37C(&v111);
    v38 += 40;
    if (v32 == v37)
    {
      v40 = v106;
      (*(v101 + 56))(v106, 1, 1, v39);
      goto LABEL_11;
    }
  }

  sub_1000946CC(v13, type metadata accessor for EngagementEvent);
  sub_1000855E8(&v111, v112);
  v40 = v106;
  v42 = swift_dynamicCast();
  (*(v101 + 56))(v40, v42 ^ 1u, 1, v39);
LABEL_11:
  v43 = v103;
  sub_100090AA4(v26, v40, v103);
  v44 = v98;
  sub_10002DFB4(v43, v98, &qword_100121550);
  v45 = (*(v99 + 48))(v44, 1, v100);
  v46 = v102;
  if (v45 == 1)
  {
    sub_100031844(v44, &qword_100121550);
    sub_1000CB040();
    v47 = swift_allocObject();
    *(v47 + 16) = v94;
    sub_100094684(&qword_10011EA00, &type metadata accessor for Date);
    v48 = sub_1000CB520();
    v49 = v97;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 64) = v49;
    *(v47 + 32) = v48;
    *(v47 + 40) = v50;
    v51 = sub_1000CB160();
    sub_1000C9BE0();

    v52 = v43;
    goto LABEL_22;
  }

  result = sub_10009472C(v44, v102, type metadata accessor for DisappearanceEvent);
  v53 = *(v26 + 16);
  if (v53)
  {
    v54 = (2 * v53) | 1;

    v55 = sub_100092858(v26 + 32, 1, v54, v35);
    if (*(v55 + 16))
    {
      v56 = v55;
      if (sub_1000C9500())
      {
        v57 = v93;
        sub_100094548(v35, v93, type metadata accessor for AppearanceEvent);
        v100 = *(v113 + 24);
        v58 = v113;
        sub_10002DFB4(v40, v57 + v100, &qword_10011EA08);
        v99 = *(v58 + 28);
        v98 = type metadata accessor for DisappearanceEvent;
        sub_100094548(v46, v57 + v99, type metadata accessor for DisappearanceEvent);
        *(v57 + *(v58 + 20)) = v56;
        v59 = swift_allocObject();
        *(v59 + 16) = xmmword_1000D45E0;
        v60 = v88;
        sub_100094548(v57, v88, type metadata accessor for AppearanceEvent);
        v61 = v92;
        v95 = *(v92 + 32);
        v62 = v91;
        v63 = v96;
        v95(v91, v60, v96);
        *&v94 = sub_100094684(&qword_10011EA00, &type metadata accessor for Date);
        v64 = sub_1000CB520();
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
        sub_100094548(v93 + v99, v90, v98);
        v95(v62, v69, v63);
        v70 = sub_1000CB520();
        v72 = v71;
        (v92)(v62, v63);
        *(v59 + 96) = &type metadata for String;
        *(v59 + 104) = v67;
        *(v59 + 72) = v70;
        *(v59 + 80) = v72;
        v73 = v89;
        sub_10002DFB4(v68 + v100, v89, &qword_10011EA08);
        v74 = (*(v101 + 48))(v73, 1, v104);
        sub_100031844(v73, &qword_10011EA08);
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
        v77 = sub_1000CB160();
        sub_1000CB060();
        sub_1000C9BE0();

        sub_1000946CC(v102, type metadata accessor for DisappearanceEvent);
        sub_100031844(v103, &qword_100121550);
        sub_1000946CC(v105, type metadata accessor for AppearanceEvent);
        v78 = v109;
        sub_10009472C(v68, v109, type metadata accessor for Session);
        (*(v108 + 56))(v78, 0, 1, v113);
        v79 = v106;
      }

      else
      {

        LODWORD(v104) = sub_1000CB040();
        v81 = swift_allocObject();
        *(v81 + 16) = xmmword_1000D3D20;
        sub_100094684(&qword_10011EA00, &type metadata accessor for Date);
        v82 = sub_1000CB520();
        v83 = v97;
        *(v81 + 56) = &type metadata for String;
        *(v81 + 64) = v83;
        *(v81 + 32) = v82;
        *(v81 + 40) = v84;
        v85 = sub_1000CB520();
        *(v81 + 96) = &type metadata for String;
        *(v81 + 104) = v83;
        *(v81 + 72) = v85;
        *(v81 + 80) = v86;
        v87 = sub_1000CB160();
        sub_1000C9BE0();

        sub_1000946CC(v46, type metadata accessor for DisappearanceEvent);
        sub_100031844(v43, &qword_100121550);
        sub_1000946CC(v35, type metadata accessor for AppearanceEvent);
        (*(v108 + 56))(v109, 1, 1, v113);
        v79 = v106;
      }
    }

    else
    {

      sub_1000CB040();
      v80 = sub_1000CB160();
      sub_1000C9BE0();

      sub_1000946CC(v46, type metadata accessor for DisappearanceEvent);
      v52 = v43;
LABEL_22:
      sub_100031844(v52, &qword_100121550);
      sub_1000946CC(v35, type metadata accessor for AppearanceEvent);
      (*(v108 + 56))(v109, 1, 1, v113);
      v79 = v40;
    }

    return sub_100031844(v79, &qword_10011EA08);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100090AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100019558(&qword_100121550);
  __chkstk_darwin(v6 - 8);
  v8 = &v22[-v7 - 8];
  v9 = type metadata accessor for DisappearanceEvent(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *(a1 + 16);
  if (v13)
  {
    sub_10002DE48(a1 + 40 * v13 - 8, v22);
    sub_100019558(&unk_10011F9F0);
    v14 = swift_dynamicCast();
    v15 = *(v10 + 56);
    v15(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_10009472C(v8, v12, type metadata accessor for DisappearanceEvent);
      sub_10009472C(v12, a3, type metadata accessor for DisappearanceEvent);
      return (v15)(a3, 0, 1, v9);
    }
  }

  else
  {
    v15 = *(v10 + 56);
    v15(v8, 1, 1, v9);
  }

  sub_100031844(v8, &qword_100121550);
  v17 = type metadata accessor for EngagementEvent(0);
  if ((*(*(v17 - 8) + 48))(a2, 1, v17) == 1)
  {
    v18 = a3;
    v19 = 1;
  }

  else
  {
    sub_100024CA4();
    v20 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

    sub_1000C9590();
    *(a3 + *(v9 + 20)) = 2;
    v18 = a3;
    v19 = 0;
  }

  return (v15)(v18, v19, 1, v9);
}

Swift::Int sub_100090DA4(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002AB7C(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_100090E10(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_100090E10(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1000CB510(v2);
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
        sub_100019558(&unk_10011F9F0);
        v5 = sub_1000CAF20();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = v2 / 2;
      v6 = v5;
      sub_100091304(v7, v8, a1, v4);
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
    return sub_100090F18(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100090F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v52 = sub_1000C95A0();
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
      sub_10002DE48(v15, &v65);
      v60 = (v15 - 40);
      v61 = v15;
      sub_10002DE48(v15 - 40, v62);
      v19 = v66;
      v20 = v67;
      v21 = sub_10001E2E4(&v65, v66);
      v22 = *(v20 + 8);
      v56 = v21;
      v57 = v22;
      v58 = v20;
      v59 = v19;
      v22(v19, v20);
      v24 = v63;
      v23 = v64;
      v25 = sub_10001E2E4(v62, v63);
      v26 = *(v23 + 8);
      v54 = v25;
      v55 = v26;
      v26(v24, v23);
      sub_1000C94E0();
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
        sub_10001E2E4(&v65, v66);
        LODWORD(v37) = (*(v36 + 16))(v37, v36);
        v39 = v63;
        v38 = v64;
        sub_10001E2E4(v62, v63);
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
        v35 = sub_1000C9510();
        v30(v34, v33);
        v30(v13, v33);
      }

      v14 = v29;
      sub_10001E37C(v62);
      result = sub_10001E37C(&v65);
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

      sub_1000855E8(v61, &v65);
      v15 = v60;
      v42 = v60[1];
      *v41 = *v60;
      v41[1] = v42;
      *(v41 + 4) = *(v15 + 32);
      result = sub_1000855E8(&v65, v15);
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

uint64_t sub_100091304(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v133 = a1;
  v8 = sub_1000C95A0();
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
      sub_10002DE48(*v139 + 40 * (v16 + 1), &v159);
      sub_10002DE48(v19 + 40 * v16, v156);
      LODWORD(v146) = sub_10008F464(&v159, v156);
      if (v5)
      {
        sub_10001E37C(v156);
        sub_10001E37C(&v159);
      }

      sub_10001E37C(v156);
      result = sub_10001E37C(&v159);
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
        sub_10002DE48(v21, &v159);
        v154 = v21;
        sub_10002DE48(v21 - 40, v156);
        v24 = v160;
        v25 = v161;
        v26 = sub_10001E2E4(&v159, v160);
        v27 = *(v25 + 8);
        v150 = v26;
        v151 = v27;
        v152 = v25;
        v153 = v24;
        v27(v24, v25);
        v28 = v157;
        v29 = v158;
        v30 = sub_10001E2E4(v156, v157);
        v31 = *(v29 + 8);
        v32 = v143;
        v147 = v30;
        v148 = v31;
        v149 = v28;
        v31(v28, v29);
        sub_1000C94E0();
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
          v22 = sub_1000C9510();
          v35(v32, v36);
          v35(v14, v36);
          v5 = v138;
          v17 = v137;
        }

        else
        {
          v37 = v160;
          v38 = v161;
          sub_10001E2E4(&v159, v160);
          v39 = (*(v38 + 16))(v37, v38);
          v40 = v157;
          v41 = v158;
          sub_10001E2E4(v156, v157);
          v22 = v39 < (*(v41 + 16))(v40, v41);
          v5 = v138;
          v17 = v137;
          v14 = v145;
        }

        sub_10001E37C(v156);
        result = sub_10001E37C(&v159);
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
              sub_1000855E8((v46 + v45), &v159);
              v51 = *(v50 + 32);
              v52 = *(v50 + 16);
              *v49 = *v50;
              *(v49 + 16) = v52;
              *(v49 + 32) = v51;
              result = sub_1000855E8(&v159, v50);
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
          result = sub_10002A814(v17);
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
              sub_100091F18((*v139 + 40 * v128), (*v139 + 40 * *&v17[16 * v127 + 16]), (*v139 + 40 * v129), v18);
              if (v5)
              {
              }

              if (v129 < v128)
              {
                goto LABEL_122;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_10002A814(v17);
              }

              if (v127 - 2 >= *(v17 + 2))
              {
                goto LABEL_123;
              }

              v130 = &v17[16 * v127];
              *v130 = v128;
              *(v130 + 1) = v129;
              v162 = v17;
              result = sub_10002A788(v127 - 1);
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
      result = sub_10002A928(0, *(v17 + 2) + 1, 1, v17);
      v17 = result;
    }

    v55 = *(v17 + 2);
    v54 = *(v17 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      result = sub_10002A928((v54 > 1), v55 + 1, 1, v17);
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
        sub_100091F18((*v139 + 40 * v97), (*v139 + 40 * *&v17[16 * v18 + 32]), (*v139 + 40 * v98), v58);
        if (v5)
        {
        }

        if (v98 < v97)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_10002A814(v17);
        }

        if (v96 >= *(v17 + 2))
        {
          goto LABEL_110;
        }

        v99 = &v17[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        v162 = v17;
        result = sub_10002A788(v18);
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
    sub_10002DE48(v100, &v159);
    v155 = v100;
    v153 = (v100 - 40);
    sub_10002DE48(v100 - 40, v156);
    v103 = v160;
    v104 = v161;
    v105 = sub_10001E2E4(&v159, v160);
    v106 = *(v104 + 8);
    v107 = v145;
    v149 = v105;
    v150 = v106;
    v151 = v104;
    v152 = v103;
    v106(v103, v104);
    v108 = v157;
    v109 = v158;
    v110 = sub_10001E2E4(v156, v157);
    v111 = *(v109 + 8);
    v112 = v143;
    v146 = v110;
    v147 = v111;
    v148 = v108;
    v111(v108, v109);
    sub_1000C94E0();
    v114 = fabs(v113);
    v115 = *v142;
    v116 = v144;
    (*v142)(v112, v144);
    v115(v107, v116);
    if (v114 <= 1.0)
    {
      v118 = v160;
      v119 = v161;
      sub_10001E2E4(&v159, v160);
      v120 = (*(v119 + 16))(v118, v119);
      v121 = v157;
      v122 = v158;
      sub_10001E2E4(v156, v157);
      v117 = v120 < (*(v122 + 16))(v121, v122);
    }

    else
    {
      v150(v152, v151);
      v147(v148, v109);
      v117 = sub_1000C9510();
      v115(v112, v116);
      v115(v107, v116);
    }

    sub_10001E37C(v156);
    result = sub_10001E37C(&v159);
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

    sub_1000855E8(v155, &v159);
    v100 = v153;
    v125 = v153[1];
    *v123 = *v153;
    v123[1] = v125;
    *(v123 + 4) = *(v100 + 32);
    sub_1000855E8(&v159, v100);
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

uint64_t sub_100091F18(char *a1, char *a2, char *a3, char *a4)
{
  v93 = sub_1000C95A0();
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
        sub_10002DE48(v48, v100);
        sub_10002DE48(v44, v97);
        v50 = v101;
        v51 = v102;
        v52 = sub_10001E2E4(v100, v101);
        v53 = *(v51 + 8);
        v86 = v52;
        v88 = v51;
        v89 = v50;
        v87 = v53;
        v53(v50, v51);
        v54 = v98;
        v55 = v99;
        v56 = sub_10001E2E4(v97, v98);
        v57 = *(v55 + 8);
        v84 = v56;
        v85 = v57;
        v57(v54, v55);
        sub_1000C94E0();
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
          sub_10001E2E4(v100, v101);
          v69 = (*(v68 + 16))(v67, v68);
          v70 = v98;
          v71 = v99;
          sub_10001E2E4(v97, v98);
          v66 = v69 < (*(v71 + 16))(v70, v71);
        }

        else
        {
          v64 = v62;
          v87(v89, v88);
          v85(v54, v55);
          v65 = v90;
          v66 = sub_1000C9510();
          v60(v64, v63);
          v60(v65, v63);
          v46 = v65;
        }

        sub_10001E37C(v97);
        sub_10001E37C(v100);
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
        sub_10002DE48(v16, v100);
        v103 = a4;
        sub_10002DE48(a4, v97);
        v19 = v101;
        v20 = v102;
        v21 = sub_10001E2E4(v100, v101);
        v22 = *(v20 + 8);
        v87 = v21;
        v91 = v19;
        v88 = v22;
        v89 = v20;
        v22(v19, v20);
        v23 = v98;
        v24 = v99;
        v25 = sub_10001E2E4(v97, v98);
        v26 = *(v24 + 8);
        v27 = v94;
        v84 = v25;
        v86 = v23;
        v85 = v26;
        v26(v23, v24);
        sub_1000C94E0();
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
          sub_10001E2E4(v100, v101);
          LODWORD(v35) = (*(v34 + 16))(v35, v34);
          v37 = v98;
          v36 = v99;
          sub_10001E2E4(v97, v98);
          v33 = v35 < (*(v36 + 16))(v37, v36);
          v18 = v90;
        }

        else
        {
          v18 = v90;
          v88(v91, v89);
          v85(v86, v24);
          v33 = sub_1000C9510();
          v31(v27, v32);
          v31(v18, v32);
        }

        v17 = v30;
        sub_10001E37C(v97);
        sub_10001E37C(v100);
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

uint64_t sub_100092708(uint64_t result)
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

  v3 = sub_10006DEEC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

uint64_t sub_100092858(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_100019558(&qword_100121560);
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
      sub_10002DE48(v33, v42);
      sub_1000855E8(v42, v41);
      sub_100019558(&unk_10011F9F0);
      v34 = swift_dynamicCast();
      (*v31)(v10, v34 ^ 1u, 1, v11);
      if ((*v32)(v10, 1, v11) == 1)
      {
        sub_100031844(v10, &qword_100121560);
      }

      else
      {
        sub_10009472C(v10, v15, type metadata accessor for VisibleRectChangedEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_10006DEEC(0, v18[2] + 1, 1, v18);
        }

        v36 = v18[2];
        v35 = v18[3];
        if (v36 >= v35 >> 1)
        {
          v18 = sub_10006DEEC(v35 > 1, v36 + 1, 1, v18);
        }

        v18[2] = v36 + 1;
        sub_10009472C(v15, v18 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v36, type metadata accessor for VisibleRectChangedEvent);
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

      sub_100024CA4();
      v21 = sub_1000CB160();
      sub_1000CB060();
      sub_1000C9BE0();

      v22 = sub_1000C95A0();
      v23 = v38;
      (*(*(v22 - 8) + 16))(v38, v20, v22);
      v24 = v23 + *(v11 + 20);
      *v24 = 0;
      *(v24 + 8) = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *(v24 + 16) = _Q0;
      sub_100019558(&qword_100120628);
      v30 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v18 = swift_allocObject();
      *(v18 + 1) = xmmword_1000D3410;
      sub_10009472C(v23, v18 + v30, type metadata accessor for VisibleRectChangedEvent);
    }
  }

  return v18;
}

uint64_t sub_100092C80(void *a1)
{
  v2 = sub_1000C9480();
  v168 = *(v2 - 8);
  __chkstk_darwin(v2);
  v141 = &v138 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v4 - 8);
  v6 = &v138 - v5;
  v143 = sub_100019558(&qword_10011F518);
  __chkstk_darwin(v143);
  v142 = &v138 - v7;
  v8 = type metadata accessor for EngagementEvent(0);
  v167 = *(v8 - 8);
  __chkstk_darwin(v8);
  v149 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100019558(&qword_10011EA08);
  v11 = __chkstk_darwin(v10 - 8);
  v148 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v153 = &v138 - v13;
  v152 = sub_100019558(&qword_100121540);
  __chkstk_darwin(v152);
  v154 = &v138 - v14;
  v15 = type metadata accessor for DisappearanceEvent(0);
  v16 = __chkstk_darwin(v15 - 8);
  v147 = &v138 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v138 - v18;
  v20 = sub_1000C95A0();
  v170 = *(v20 - 8);
  v21 = __chkstk_darwin(v20);
  v163 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v169 = &v138 - v23;
  v160 = sub_1000C92C0();
  v166 = *(v160 - 8);
  v24 = __chkstk_darwin(v160);
  v159 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v172 = &v138 - v26;
  v27 = sub_100019558(&qword_100121548);
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

  sub_100090DA4(&v181);
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
      sub_10002DE48(v50, &v181);
      sub_10002DE48(&v181, &v180);
      sub_100019558(&unk_10011F9F0);
      if (swift_dynamicCast())
      {
        sub_1000946CC(v47, type metadata accessor for AppearanceEvent);
        if (*(v51 + 16))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_10006DF38(0, v49[2] + 1, 1, v49);
          }

          v54 = v49[2];
          v53 = v49[3];
          if (v54 >= v53 >> 1)
          {
            v49 = sub_10006DF38((v53 > 1), v54 + 1, 1, v49);
          }

          v49[2] = v54 + 1;
          v49[v54 + 4] = v51;

          v51 = &_swiftEmptyArrayStorage;
        }
      }

      sub_10002DE48(&v181, &v180);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_10006DF14(0, *(v51 + 16) + 1, 1, v51);
      }

      v56 = *(v51 + 16);
      v55 = *(v51 + 24);
      if (v56 >= v55 >> 1)
      {
        v51 = sub_10006DF14((v55 > 1), v56 + 1, 1, v51);
      }

      sub_10001E37C(&v181);
      *(v51 + 16) = v56 + 1;
      sub_1000855E8(&v180, v51 + 40 * v56 + 32);
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
      v49 = sub_10006DF38(0, v49[2] + 1, 1, v49);
    }

    v59 = v49[2];
    v58 = v49[3];
    v60 = (v59 + 1);
    if (v59 >= v58 >> 1)
    {
      v49 = sub_10006DF38((v58 > 1), v59 + 1, 1, v49);
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
      sub_10008FAFC(&v181, v29);
      if ((*v61)(v29, 1, v52) == 1)
      {
        sub_100031844(v29, &qword_100121548);
      }

      else
      {
        v63 = v177;
        sub_10009472C(v29, v177, type metadata accessor for Session);
        sub_10009472C(v63, v178, type metadata accessor for Session);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10006DEC4(0, v62[2] + 1, 1, v62);
        }

        v65 = v62[2];
        v64 = v62[3];
        v66 = v62;
        if (v65 >= v64 >> 1)
        {
          v66 = sub_10006DEC4(v64 > 1, v65 + 1, 1, v62);
        }

        *(v66 + 16) = v65 + 1;
        v62 = v66;
        sub_10009472C(v178, v66 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v65, type metadata accessor for Session);
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
    sub_100019558(&unk_10011E820);
    v133 = swift_allocObject();
    *(v133 + 16) = xmmword_1000D3D20;
    v134 = v62[2];

    *(v133 + 56) = &type metadata for Int;
    *(v133 + 64) = &protocol witness table for Int;
    *(v133 + 32) = v134;
    v135 = *(v73 + 2);
    *(v133 + 96) = &type metadata for Int;
    *(v133 + 104) = &protocol witness table for Int;
    *(v133 + 72) = v135;
    sub_100024CA4();

    v136 = sub_1000CB160();
    sub_1000CB060();
    sub_1000C9BE0();

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
    sub_100094548(v71, v179, type metadata accessor for Session);
    v74 = *(v73 + 2);
    if (!v74)
    {
      goto LABEL_73;
    }

    v173 = v67;
    v169 = v73;
    sub_100094548(&v73[v177 + (v74 - 1) * v72], v57, type metadata accessor for Session);
    v165 = (v57 + v52[7]);
    v75 = v176;
    sub_100094548(v165, v176, type metadata accessor for DisappearanceEvent);
    v76 = v57;
    v77 = *v157;
    v78 = v69;
    v79 = v75;
    v80 = v69;
    v81 = v161;
    (*v157)(v78, v79, v161);
    v82 = v171;
    sub_100094548(v57, v171, type metadata accessor for AppearanceEvent);
    v77(v68, v82, v81);
    LODWORD(v167) = sub_1000C9500();
    v83 = *v170;
    (*v170)(v68, v81);
    v168 = v83;
    (v83)(v80, v81);
    sub_100094548(v76, v82, type metadata accessor for AppearanceEvent);
    v77(v80, v82, v81);
    if (v167)
    {
      v84 = v176;
      sub_100094548(v165, v176, type metadata accessor for DisappearanceEvent);
      v77(v68, v84, v81);
      sub_1000C92A0();
    }

    else
    {
      sub_1000C92B0();
      v84 = v176;
    }

    v85 = v68;
    v86 = v179;
    v167 = v179 + v174[7];
    sub_100094548(v167, v84, type metadata accessor for DisappearanceEvent);
    v77(v80, v84, v81);
    v87 = v77;
    v88 = v171;
    sub_100094548(v86, v171, type metadata accessor for AppearanceEvent);
    v77(v85, v88, v81);
    v89 = sub_1000C9500();
    v90 = v85;
    v91 = v168;
    (v168)(v90, v81);
    v91(v80, v81);
    sub_100094548(v86, v88, type metadata accessor for AppearanceEvent);
    v77(v80, v88, v81);
    if (v89)
    {
      v92 = v176;
      sub_100094548(v167, v176, type metadata accessor for DisappearanceEvent);
      v93 = v163;
      v87(v163, v92, v81);
      v94 = v159;
      sub_1000C92A0();
      v68 = v93;
    }

    else
    {
      v94 = v159;
      sub_1000C92B0();
      v68 = v163;
    }

    v69 = v80;
    v57 = v164;
    v73 = v169;
    v95 = v172;
    v67 = v173;
    v96 = sub_1000C9290();
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
    sub_10002DFB4(&v100[v57], v154, &qword_10011EA08);
    v169 = v100;
    sub_10002DFB4(&v100[v179], v102 + v101, &qword_10011EA08);
    v103 = *v151;
    v104 = v155;
    if ((*v151)(v102, 1, v155) != 1)
    {
      sub_10002DFB4(v102, v153, &qword_10011EA08);
      if (v103(v102 + v101, 1, v104) == 1)
      {
        sub_1000946CC(v153, type metadata accessor for EngagementEvent);
LABEL_61:
        sub_100031844(v102, &qword_100121540);
        v57 = v164;
LABEL_71:
        v67 = v173;
        v52 = v174;
        v68 = v163;
LABEL_72:
        sub_1000946CC(v57, type metadata accessor for Session);
        v62 = v158;
LABEL_73:
        sub_100094548(v179, v70, type metadata accessor for Session);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_10006DEC4(0, *(v73 + 2) + 1, 1, v73);
        }

        v130 = *(v73 + 2);
        v129 = *(v73 + 3);
        if (v130 >= v129 >> 1)
        {
          v73 = sub_10006DEC4(v129 > 1, v130 + 1, 1, v73);
        }

        sub_1000946CC(v179, type metadata accessor for Session);
        *(v73 + 2) = v130 + 1;
        v72 = v166;
        sub_10009472C(v70, &v73[v177 + v130 * v166], type metadata accessor for Session);
        goto LABEL_78;
      }

      v118 = v149;
      sub_10009472C(v102 + v101, v149, type metadata accessor for EngagementEvent);
      v119 = v153;
      if (sub_1000C9570())
      {
        v120 = *(v155 + 20);
        v121 = v119;
        v122 = *(v143 + 48);
        v123 = v121 + v120;
        v124 = v142;
        sub_10002DFB4(v123, v142, &unk_10011E590);
        sub_10002DFB4(v118 + v120, v124 + v122, &unk_10011E590);
        v125 = *v140;
        v126 = v144;
        if ((*v140)(v124, 1) == 1)
        {
          sub_1000946CC(v118, type metadata accessor for EngagementEvent);
          v127 = (v125)(v124 + v122, 1, v126);
          v57 = v164;
          if (v127 != 1)
          {
            goto LABEL_69;
          }

          sub_100031844(v124, &unk_10011E590);
          v119 = v153;
          v102 = v154;
LABEL_81:
          sub_1000946CC(v119, type metadata accessor for EngagementEvent);
          goto LABEL_48;
        }

        sub_10002DFB4(v124, v145, &unk_10011E590);
        v128 = (v125)(v124 + v122, 1, v126);
        v57 = v164;
        if (v128 != 1)
        {
          v131 = v141;
          (*v138)(v141, v124 + v122, v126);
          sub_100094684(&qword_1001214A0, &type metadata accessor for URL);
          LODWORD(v168) = sub_1000CAC90();
          v132 = *v139;
          (*v139)(v131, v126);
          sub_1000946CC(v149, type metadata accessor for EngagementEvent);
          v132(v145, v126);
          sub_100031844(v124, &unk_10011E590);
          v119 = v153;
          v102 = v154;
          if ((v168 & 1) == 0)
          {
            goto LABEL_70;
          }

          goto LABEL_81;
        }

        sub_1000946CC(v149, type metadata accessor for EngagementEvent);
        (*v139)(v145, v126);
LABEL_69:
        sub_100031844(v124, &qword_10011F518);
        v119 = v153;
        v102 = v154;
      }

      else
      {
        sub_1000946CC(v118, type metadata accessor for EngagementEvent);
        v57 = v164;
      }

LABEL_70:
      sub_1000946CC(v119, type metadata accessor for EngagementEvent);
      sub_100031844(v102, &qword_10011EA08);
      goto LABEL_71;
    }

    if (v103(v102 + v101, 1, v104) != 1)
    {
      goto LABEL_61;
    }

LABEL_48:
    sub_100031844(v102, &qword_10011EA08);
    v168 = *(v73 + 2);
    v105 = v179;
    v106 = v164;
    v107 = (sub_1000C9510() & 1) != 0 ? v105 : v106;
    v108 = v146;
    sub_100094548(v107, v146, type metadata accessor for AppearanceEvent);
    v109 = v174;
    v181 = *(v106 + v174[5]);

    sub_100092708(v110);
    v111 = v181;
    v112 = v148;
    v52 = v109;
    sub_10002DFB4(&v169[v106], v148, &qword_10011EA08);
    v113 = v167;
    v114 = v165;
    v115 = (sub_1000C9510() & 1) != 0 ? v114 : v113;
    v116 = v147;
    sub_100094548(v115, v147, type metadata accessor for DisappearanceEvent);
    v117 = v150;
    sub_10009472C(v108, v150, type metadata accessor for AppearanceEvent);
    *(v117 + v52[5]) = v111;
    sub_1000945B0(v112, v117 + v52[6]);
    sub_10009472C(v116, v117 + v52[7], type metadata accessor for DisappearanceEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v73 = sub_10002AAAC(v73);
    }

    v67 = v173;
    sub_1000946CC(v164, type metadata accessor for Session);
    sub_1000946CC(v179, type metadata accessor for Session);
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
    sub_100094620(v150, &v73[v177 + (v168 - 1) * v166]);
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
  result = qword_1001215C0;
  if (!qword_1001215C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100094548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000945B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100019558(&qword_10011EA08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094620(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094684(unint64_t *a1, void (*a2)(uint64_t))
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