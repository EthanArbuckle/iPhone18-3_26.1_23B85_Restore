uint64_t sub_1000942E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_10009413C(*a1);
  v5 = v4;
  if (v3 == sub_10009413C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DCC74();
  }

  return v8 & 1;
}

Swift::Int sub_100094370()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_10009413C(v1);
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_1000943D4()
{
  sub_10009413C(*v0);
  sub_1000DBFD4();
}

Swift::Int sub_100094428()
{
  v1 = *v0;
  sub_1000DCD24();
  sub_10009413C(v1);
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_100094488@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100094BF4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t sub_1000944B8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009413C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000944E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_100094670(&qword_10011FF50, type metadata accessor for Key);
  v9 = sub_1000DBD74();
  v8(v9, a3, a4, a5);
}

unint64_t sub_1000945B4()
{
  result = qword_100124BF8;
  if (!qword_100124BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124BF8);
  }

  return result;
}

unint64_t sub_100094608()
{
  result = qword_100124C10;
  if (!qword_100124C10)
  {
    sub_100008068(255, &qword_100124C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C10);
  }

  return result;
}

uint64_t sub_100094670(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000946B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100122DB8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *sub_100094728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1000DA934();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100007BC0(&qword_100122D70);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = sub_100007BC0(&qword_100122D90);
  v24 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v14 = sub_1000DA374();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[3] = type metadata accessor for CustomAttributeProviderConcrete();
  v27[4] = sub_100094670(&qword_10011FC58, type metadata accessor for CustomAttributeProviderConcrete);
  v27[0] = a2;
  (*(v15 + 104))(v17, enum case for JournalFeatureFlags.enhancedSync(_:), v14);

  LOBYTE(a2) = sub_1000DA364();
  (*(v15 + 8))(v17, v14);
  if (a2)
  {
    v18 = OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_mergeableAttributes;
    swift_beginAccess();
    sub_100007F58(a3 + v18, v10, &qword_100122D70);
    v19 = v26;
    if ((*(v26 + 48))(v10, 1, v5))
    {
      sub_1000080B0(v10, &qword_100122D70);
      v20 = 0;
    }

    else
    {
      (*(v19 + 16))(v7, v10, v5);
      sub_1000080B0(v10, &qword_100122D70);
      sub_1000DA8D4();
      (*(v19 + 8))(v7, v5);
      sub_100094670(&qword_100122DA8, &type metadata accessor for MergeableTextAttributeScope);
      v20 = sub_1000DBB04();
      (*(v24 + 8))(v13, v11);
    }
  }

  else
  {
    v20 = *(a3 + OBJC_IVAR____TtC20JournalWidgetsSecure14EntryViewModel_attributedText);
    v21 = v20;
  }

  sub_100007FC0(v27);
  return v20;
}

uint64_t sub_100094B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100094B94()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100094BF4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010CE20;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100094C40(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100094CF4();
  result = sub_1000DC2C4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000ABB8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100094CB4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100094CF4()
{
  result = qword_100124C30;
  if (!qword_100124C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C30);
  }

  return result;
}

unint64_t sub_100094D5C()
{
  result = qword_100124C38;
  if (!qword_100124C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124C38);
  }

  return result;
}

uint64_t sub_100094DB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for NLTag(0);
  sub_100094670(&qword_100120070, type metadata accessor for NLTag);
  result = sub_1000DC2C4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000B0B4(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100094E6C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1000DC2C4();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_10000B0DC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100094F04(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MKPointOfInterestCategory(0);
  sub_100094670(&qword_10011FF30, type metadata accessor for MKPointOfInterestCategory);
  result = sub_1000DC2C4();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_10000B22C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100094FF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000D9E54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000DA124();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = sub_1000DA204();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = sub_1000DA274();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = sub_1000D9CF4();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[8];
    goto LABEL_11;
  }

  v18 = sub_1000DA084();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[9];

  return v19(v20, a2, v18);
}

uint64_t sub_100095220(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000D9E54();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000DA124();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_1000DA204();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = sub_1000DA274();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = sub_1000D9CF4();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v20 = sub_1000DA084();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[9];

  return v21(v22, a2, a2, v20);
}

uint64_t _s23YearAdaptiveFormatStyleVMa()
{
  result = qword_100124C98;
  if (!qword_100124C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100095490()
{
  result = sub_1000D9E54();
  if (v1 <= 0x3F)
  {
    result = sub_1000DA124();
    if (v2 <= 0x3F)
    {
      result = sub_1000DA204();
      if (v3 <= 0x3F)
      {
        result = sub_1000DA274();
        if (v4 <= 0x3F)
        {
          result = sub_1000D9CF4();
          if (v5 <= 0x3F)
          {
            result = sub_1000DA084();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_100095574(uint64_t a1)
{
  v2 = v1;
  v81 = a1;
  v3 = sub_1000D9ED4();
  v63 = *(v3 - 8);
  v64 = v3;
  __chkstk_darwin(v3);
  v62 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1000D9F24();
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000D9F54();
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D9CF4();
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v80 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000DA274();
  v75 = *(v9 - 8);
  v76 = v9;
  __chkstk_darwin(v9);
  v77 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000DA204();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v74 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000DA124();
  v65 = *(v13 - 8);
  v66 = v13;
  __chkstk_darwin(v13);
  v70 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_1001223B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v55 - v16;
  v18 = sub_100007BC0(&qword_1001223C0);
  __chkstk_darwin(v18 - 8);
  v67 = &v55 - v19;
  v20 = sub_1000D9F84();
  v72 = *(v20 - 8);
  v73 = v20;
  v21 = __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v55 - v25;
  v27 = __chkstk_darwin(v24);
  v55 = &v55 - v28;
  __chkstk_darwin(v27);
  v71 = &v55 - v29;
  v30 = sub_1000DA1F4();
  v31 = *(v30 - 8);
  __chkstk_darwin(v30);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = _s23YearAdaptiveFormatStyleVMa();
  v35 = v34[6];
  (*(v31 + 104))(v33, enum case for Calendar.Component.year(_:), v30);
  v36 = sub_1000DA1C4();
  (*(v31 + 8))(v33, v30);
  if (v36)
  {
    v37 = sub_1000D9E74();
    (*(*(v37 - 8) + 56))(v67, 1, 1, v37);
    v38 = sub_1000D9E54();
    v39 = *(v38 - 8);
    (*(v39 + 16))(v17, v2, v38);
    (*(v39 + 56))(v17, 0, 1, v38);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    sub_1000D9E94();
    v40 = v56;
    sub_1000D9F44();
    sub_1000D9F74();
    (*(v57 + 8))(v40, v58);
    v42 = v72;
    v41 = v73;
    v43 = *(v72 + 8);
    v43(v23, v73);
    v44 = v59;
    sub_1000D9F14();
    v45 = v55;
    sub_1000D9EB4();
    (*(v60 + 8))(v44, v61);
    v43(v26, v41);
    v46 = v62;
    sub_1000D9EC4();
    v47 = v71;
    sub_1000D9E84();
    (*(v63 + 8))(v46, v64);
    v43(v45, v41);
    v48 = v42;
  }

  else
  {
    v49 = v67;
    sub_1000D9E64();
    v50 = sub_1000D9E74();
    (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
    v51 = sub_1000D9E54();
    v52 = *(v51 - 8);
    (*(v52 + 16))(v17, v2, v51);
    (*(v52 + 56))(v17, 0, 1, v51);
    (*(v65 + 16))(v70, v2 + v34[5], v66);
    (*(v68 + 16))(v74, v2 + v35, v69);
    (*(v75 + 16))(v77, v2 + v34[7], v76);
    (*(v78 + 16))(v80, v2 + v34[8], v79);
    v47 = v71;
    sub_1000D9E94();
    v48 = v72;
    v41 = v73;
  }

  v53 = sub_1000D9F64();
  (*(v48 + 8))(v47, v41);
  return v53;
}

uint64_t sub_100095FA8(void *a1)
{
  v3 = sub_100007BC0(&qword_100124D38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100007E68(a1, a1[3]);
  sub_100097798();
  sub_1000DCDB4();
  v8[15] = 0;
  sub_1000D9E54();
  sub_1000977EC(&qword_100124D40, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_1000DCC24();
  if (!v1)
  {
    _s23YearAdaptiveFormatStyleVMa();
    v8[14] = 1;
    sub_1000DA124();
    sub_1000977EC(&qword_100124D48, &type metadata accessor for Locale);
    sub_1000DCC24();
    v8[13] = 2;
    sub_1000DA204();
    sub_1000977EC(&qword_100124D50, &type metadata accessor for Calendar);
    sub_1000DCC24();
    v8[12] = 3;
    sub_1000DA274();
    sub_1000977EC(&qword_100124D58, &type metadata accessor for TimeZone);
    sub_1000DCC24();
    v8[11] = 4;
    sub_1000D9CF4();
    sub_1000977EC(&qword_100124D60, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_1000DCC24();
    v8[10] = 5;
    sub_1000DA084();
    sub_1000977EC(&qword_100121360, &type metadata accessor for Date);
    sub_1000DCC24();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10009637C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_1000DA084();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v40 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000D9CF4();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v41 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1000DA274();
  v59 = *(v53 - 8);
  __chkstk_darwin(v53);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1000DA204();
  v61 = *(v64 - 8);
  __chkstk_darwin(v64);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1000DA124();
  v63 = *(v51 - 8);
  __chkstk_darwin(v51);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000D9E54();
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_100007BC0(&qword_100124D00);
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v15 = &v38 - v14;
  v16 = _s23YearAdaptiveFormatStyleVMa();
  v17 = (v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v17[7];
  sub_1000DA0F4();
  v60 = v17[8];
  sub_1000DA174();
  v58 = v17[9];
  sub_1000DA254();
  v49 = v17[10];
  sub_1000D9CE4();
  v50 = v17[11];
  sub_1000DA054();
  v20 = a1[3];
  v52 = a1;
  sub_100007E68(a1, v20);
  sub_100097798();
  v46 = v15;
  v21 = v48;
  sub_1000DCDA4();
  if (v21)
  {
    v22 = v57;
    v23 = v55;
    v26 = v51;
    v27 = v49;
    sub_100007FC0(v52);
    v29 = v53;
    v28 = v54;
    (*(v63 + 8))(&v19[v62], v26);
    (*(v61 + 8))(&v19[v60], v64);
    (*(v59 + 8))(&v19[v58], v29);
    (*(v28 + 8))(&v19[v27], v23);
    return (*(v56 + 8))(&v19[v50], v22);
  }

  else
  {
    v70 = 0;
    sub_1000977EC(&qword_100124D10, &type metadata accessor for Date.FormatStyle.TimeStyle);
    sub_1000DCBC4();
    v24 = v57;
    v25 = v55;
    v31 = *(v44 + 32);
    v48 = v11;
    v31(v19, v13, v11);
    v69 = 1;
    sub_1000977EC(&qword_100124D18, &type metadata accessor for Locale);
    v32 = v10;
    v33 = v51;
    sub_1000DCBC4();
    v34 = v49;
    (*(v63 + 40))(&v19[v62], v32, v33);
    v68 = 2;
    sub_1000977EC(&qword_100124D20, &type metadata accessor for Calendar);
    v35 = v64;
    sub_1000DCBC4();
    v36 = v54;
    (*(v61 + 40))(&v19[v60], v43, v35);
    v67 = 3;
    sub_1000977EC(&qword_100124D28, &type metadata accessor for TimeZone);
    v37 = v53;
    sub_1000DCBC4();
    (*(v59 + 40))(&v19[v58], v42, v37);
    v66 = 4;
    sub_1000977EC(&qword_100124D30, &type metadata accessor for FormatStyleCapitalizationContext);
    sub_1000DCBC4();
    (*(v36 + 40))(&v19[v34], v41, v25);
    v65 = 5;
    sub_1000977EC(&qword_100121330, &type metadata accessor for Date);
    sub_1000DCBC4();
    (*(v45 + 8))(v46, v47);
    (*(v56 + 40))(&v19[v50], v40, v24);
    sub_100097734(v19, v39);
    sub_100007FC0(v52);
    return sub_1000701E0(v19);
  }
}

uint64_t sub_100096CF8()
{
  v1 = *v0;
  v2 = 0x6C797453656D6974;
  v3 = 0x656E6F5A656D6974;
  v4 = 0xD000000000000015;
  if (v1 != 4)
  {
    v4 = 0x636E657265666572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C61636F6CLL;
  if (v1 != 1)
  {
    v5 = 0x7261646E656C6163;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100096DB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097A0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096DDC(uint64_t a1)
{
  v2 = sub_100097798();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096E18(uint64_t a1)
{
  v2 = sub_100097798();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100096E54@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100095574(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_100096E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100097734(v3, a3);
  v7 = *(a2 + 20);
  v8 = sub_1000DA124();
  v9 = *(*(v8 - 8) + 24);

  return v9(a3 + v7, a1, v8);
}

Swift::Int sub_100096F34()
{
  sub_1000DCD24();
  sub_1000D9E54();
  sub_1000977EC(&qword_100124D68, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_1000DBDC4();
  sub_1000DA124();
  sub_1000977EC(&qword_100124D70, &type metadata accessor for Locale);
  sub_1000DBDC4();
  sub_1000DA204();
  sub_1000977EC(&qword_100124D78, &type metadata accessor for Calendar);
  sub_1000DBDC4();
  sub_1000DA274();
  sub_1000977EC(&qword_100124D80, &type metadata accessor for TimeZone);
  sub_1000DBDC4();
  sub_1000D9CF4();
  sub_1000977EC(&qword_100124D88, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_1000DBDC4();
  sub_1000DA084();
  sub_1000977EC(&qword_1001247D0, &type metadata accessor for Date);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

uint64_t sub_100097184()
{
  sub_1000D9E54();
  sub_1000977EC(&qword_100124D68, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_1000DBDC4();
  sub_1000DA124();
  sub_1000977EC(&qword_100124D70, &type metadata accessor for Locale);
  sub_1000DBDC4();
  sub_1000DA204();
  sub_1000977EC(&qword_100124D78, &type metadata accessor for Calendar);
  sub_1000DBDC4();
  sub_1000DA274();
  sub_1000977EC(&qword_100124D80, &type metadata accessor for TimeZone);
  sub_1000DBDC4();
  sub_1000D9CF4();
  sub_1000977EC(&qword_100124D88, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_1000DBDC4();
  sub_1000DA084();
  sub_1000977EC(&qword_1001247D0, &type metadata accessor for Date);
  return sub_1000DBDC4();
}

Swift::Int sub_1000973C4()
{
  sub_1000DCD24();
  sub_1000D9E54();
  sub_1000977EC(&qword_100124D68, &type metadata accessor for Date.FormatStyle.TimeStyle);
  sub_1000DBDC4();
  sub_1000DA124();
  sub_1000977EC(&qword_100124D70, &type metadata accessor for Locale);
  sub_1000DBDC4();
  sub_1000DA204();
  sub_1000977EC(&qword_100124D78, &type metadata accessor for Calendar);
  sub_1000DBDC4();
  sub_1000DA274();
  sub_1000977EC(&qword_100124D80, &type metadata accessor for TimeZone);
  sub_1000DBDC4();
  sub_1000D9CF4();
  sub_1000977EC(&qword_100124D88, &type metadata accessor for FormatStyleCapitalizationContext);
  sub_1000DBDC4();
  sub_1000DA084();
  sub_1000977EC(&qword_1001247D0, &type metadata accessor for Date);
  sub_1000DBDC4();
  return sub_1000DCD74();
}

uint64_t sub_100097734(uint64_t a1, uint64_t a2)
{
  v4 = _s23YearAdaptiveFormatStyleVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100097798()
{
  result = qword_100124D08;
  if (!qword_100124D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D08);
  }

  return result;
}

uint64_t sub_1000977EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100097834()
{
  if ((sub_1000D9E34() & 1) == 0)
  {
    return 0;
  }

  _s23YearAdaptiveFormatStyleVMa();
  if ((sub_1000DA104() & 1) == 0 || (sub_1000DA184() & 1) == 0 || (sub_1000DA264() & 1) == 0 || (sub_1000D9CD4() & 1) == 0)
  {
    return 0;
  }

  return sub_1000DA034();
}

unint64_t sub_100097908()
{
  result = qword_100124D90;
  if (!qword_100124D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D90);
  }

  return result;
}

unint64_t sub_100097960()
{
  result = qword_100124D98;
  if (!qword_100124D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124D98);
  }

  return result;
}

unint64_t sub_1000979B8()
{
  result = qword_100124DA0;
  if (!qword_100124DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100124DA0);
  }

  return result;
}

uint64_t sub_100097A0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C797453656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001000EB650 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xE900000000000065)
  {

    return 5;
  }

  else
  {
    v6 = sub_1000DCC74();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100097C1C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000DBA34();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000DBAA4();
  v10 = *(v19 - 8);
  __chkstk_darwin(v19);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10011F9A8 != -1)
  {
    swift_once();
  }

  v18[1] = qword_100126EE0;
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  aBlock[4] = sub_1000997FC;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100034608;
  aBlock[3] = &unk_100110690;
  v15 = _Block_copy(aBlock);

  v16 = a1;

  sub_1000DBA54();
  v20 = _swiftEmptyArrayStorage;
  sub_100099820();
  sub_100007BC0(&qword_100121570);
  sub_100031080();
  sub_1000DC8D4();
  sub_1000DC584();
  _Block_release(v15);
  (*(v7 + 8))(v9, v6);
  (*(v10 + 8))(v12, v19);
}

void sub_100097F10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = a2;
    sub_100099A3C(v7, a3, a4);
  }
}

uint64_t sub_100097F90(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100007E68((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100007BC0(&qword_100121D50);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100098068()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100124DA8);
  sub_100007EBC(v0, qword_100124DA8);
  return sub_1000DAFE4();
}

uint64_t sub_1000980E8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100007BC0(&qword_100120560);
  v3[5] = swift_task_alloc();
  sub_100007BC0(&qword_100123EA8);
  v3[6] = swift_task_alloc();
  v5 = sub_1000DA714();
  v3[7] = v5;
  v3[8] = *(v5 - 8);
  v3[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1000DC1D4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[10] = v6;
  v3[11] = v8;

  return _swift_task_switch(sub_100098258, v6, v8);
}

uint64_t sub_100098258()
{
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_1000982F0;
  v2 = v0[3];
  v3 = v0[2];

  return sub_100088628(v3, v2);
}

uint64_t sub_1000982F0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 104) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100098418, v4, v3);
}

uint64_t sub_100098418()
{
  v1 = v0[13];
  if (v1)
  {
LABEL_10:

    v14 = v0[1];

    return v14(v1);
  }

  v2 = v0[5];
  sub_10009970C(v0[4] + qword_1001272A0, v2);
  v3 = sub_1000DA874();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  if (v5 == 1)
  {
    sub_1000080B0(v0[5], &qword_100120560);
    (*(v7 + 56))(v9, 1, 1, v6);
LABEL_5:
    sub_1000080B0(v0[6], &qword_100123EA8);
    if (qword_10011FB10 != -1)
    {
      swift_once();
    }

    v10 = sub_1000DAFF4();
    sub_100007EBC(v10, qword_100124DA8);
    v11 = sub_1000DAFD4();
    v12 = sub_1000DC4C4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "no visits data", v13, 2u);
    }

    goto LABEL_10;
  }

  sub_1000DA864();
  (*(v4 + 8))(v8, v3);
  if ((*(v7 + 48))(v9, 1, v6) == 1)
  {
    goto LABEL_5;
  }

  (*(v0[8] + 32))(v0[9], v0[6], v0[7]);
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_100098710;
  v17 = v0[9];
  v18 = v0[3];
  v19 = v0[2];

  return sub_100098D90(v19, v18, v17);
}

uint64_t sub_100098710(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 120) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100098838, v4, v3);
}

uint64_t sub_100098838()
{
  if (*(v0 + 120))
  {
    v1 = *(*(v0 + 32) + qword_100127280);
    *(v0 + 144) = v1;
    if (sub_100022140(v1))
    {
      sub_100065D44();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 128) = v7;
      *v7 = v0;
      v7[1] = sub_1000989EC;
      v8 = *(v0 + 16);

      return sub_100081594(v8, v3 * v6);
    }

    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = *(v0 + 120);
  }

  else
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    v10 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_1000989EC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 136) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return _swift_task_switch(sub_100098B14, v4, v3);
}

uint64_t sub_100098B14()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    if (sub_100021930(*(v0 + 144)))
    {
      if (qword_10011F9A0 != -1)
      {
        swift_once();
      }

      v3 = *(v0 + 64);
      v2 = *(v0 + 72);
      v4 = *(v0 + 56);
      sub_100097C1C(v1, *(*(v0 + 32) + qword_100124898), *(*(v0 + 32) + qword_100124898 + 8));

      (*(v3 + 8))(v2, v4);
    }

    else
    {
      (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    }
  }

  else
  {
    if (qword_10011FB10 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 32);
    v6 = sub_1000DAFF4();
    sub_100007EBC(v6, qword_100124DA8);
    v7 = v5;
    v8 = sub_1000DAFD4();
    v9 = sub_1000DC4C4();

    v10 = os_log_type_enabled(v8, v9);
    v12 = *(v0 + 64);
    v11 = *(v0 + 72);
    v13 = *(v0 + 56);
    if (v10)
    {
      v14 = *(v0 + 32);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ - error creating thumbnail from MKMap", v15, 0xCu);
      sub_1000080B0(v16, &qword_100120A80);
    }

    (*(v12 + 8))(v11, v13);
  }

  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_100098D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_1000DC1D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v4[21] = v5;
  v4[22] = v7;

  return _swift_task_switch(sub_100098E20, v5, v7);
}

uint64_t sub_100098E20()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_100007BC0(&qword_100123EB0);
  v3 = sub_1000DA714();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000DFEF0;
  (*(v4 + 16))(v6 + v5, v1, v3);
  *(v0 + 184) = sub_100010030(v6);
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  *(v0 + 232) = *(v2 + qword_100127280);
  *(v0 + 192) = *(v2 + qword_100127290);
  sub_1000DC224();
  *(v0 + 200) = sub_1000DC214();
  v8 = sub_1000DC1D4();

  return _swift_task_switch(sub_100098FE0, v8, v7);
}

uint64_t sub_100098FE0()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);
  v3 = *(v0 + 232);

  *(v0 + 208) = sub_10001AEC0(v2, 0, v3, 0, 0, 1, v1, 0);

  v4 = *(v0 + 168);
  v5 = *(v0 + 176);

  return _swift_task_switch(sub_100099084, v4, v5);
}

uint64_t sub_100099084()
{
  v1 = v0[26];
  [v1 _setRendersInBackground:1];
  v2 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v1];
  v0[27] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000991D8;
  v3 = swift_continuation_init();
  v0[17] = sub_100007BC0(&qword_100122730);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100097F90;
  v0[13] = &unk_1001106B8;
  v0[14] = v3;
  [v2 startWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000991D8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 176);
  v4 = *(v1 + 168);
  if (v2)
  {
    v5 = sub_10009939C;
  }

  else
  {
    v5 = sub_100099308;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100099308()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10009939C()
{
  swift_willThrow();
  if (qword_10011FB10 != -1)
  {
    swift_once();
  }

  v1 = sub_1000DAFF4();
  sub_100007EBC(v1, qword_100124DA8);
  swift_errorRetain();
  v2 = sub_1000DAFD4();
  v3 = sub_1000DC4C4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[27];
  v6 = v0[26];
  if (v4)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v7, 0xCu);
    sub_1000080B0(v8, &qword_100120A80);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t type metadata accessor for GenericMapThumbnailCacheOperation()
{
  result = qword_100124DE8;
  if (!qword_100124DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10009961C()
{
  sub_1000996AC();
  if (v0 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1000996AC()
{
  if (!qword_100124DF8)
  {
    sub_1000DA874();
    v0 = sub_1000DC7C4();
    if (!v1)
    {
      atomic_store(v0, &qword_100124DF8);
    }
  }
}

uint64_t sub_10009970C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100120560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009977C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000997B4()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100099808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100099820()
{
  result = qword_100121568;
  if (!qword_100121568)
  {
    sub_1000DBA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100121568);
  }

  return result;
}

uint64_t sub_100099A3C(UIImage *a1, uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v5 = sub_1000D9D14();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000D9DA4();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v24 - v14;
  if (qword_10011FB70 != -1)
  {
    swift_once();
  }

  v16 = sub_1000DA844();
  sub_100007EBC(v16, qword_1001272F8);
  sub_1000DA814();
  v26 = a2;
  v27 = a3;
  (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_100007C50();
  sub_1000D9D94();
  (*(v6 + 8))(v8, v5);
  v17 = *(v10 + 8);
  v17(v13, v9);
  v18 = UIImageHEICRepresentation(v25);
  if (v18)
  {
    v19 = v18;
    v20 = sub_1000D9DF4();
    v22 = v21;

    sub_100099878();
    sub_100010514(v20, v22);
  }

  return (v17)(v15, v9);
}

uint64_t sub_100099D00(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a2;
  *(v4 + 16) = a4;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_1000DC1D4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_100099D94, v5, v7);
}

uint64_t sub_100099D94()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_1000D9D54(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  *(v0 + 6) = v6;

  v7 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v6];
  *(v0 + 7) = v7;
  [v7 setAppliesPreferredTrackTransform:1];
  [v7 setMaximumSize:{v1, v1}];
  [v7 setDynamicRangePolicy:AVAssetImageGeneratorDynamicRangePolicyForceSDR];
  v8 = sub_1000DC6E4(0.0, 60);
  v10 = v9;
  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 8) = v13;
  *v13 = v0;
  v13[1] = sub_100099F04;

  return AVAssetImageGenerator.image(at:)(v8, v10, v12);
}

uint64_t sub_100099F04(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_10009A0C8;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_10009A02C;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_10009A02C()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_10009A0C8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10009A130()
{
  v1 = v0;
  if (qword_10011FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124FD8);
  v3 = sub_1000DAFD4();
  v4 = sub_1000DC4B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

uint64_t sub_10009A250()
{
  v0 = sub_1000DAFF4();
  sub_100007EF4(v0, qword_100124FD8);
  v1 = sub_100007EBC(v0, qword_100124FD8);
  if (qword_10011FA38 != -1)
  {
    swift_once();
  }

  v2 = sub_100007EBC(v0, qword_100127068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_10009A34C()
{
  v1 = sub_100007BC0(&qword_100125118);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_100007BC0(&qword_100125120);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_100007BC0(&qword_100125128);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_100007BC0(&qword_100125130);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_100007BC0(&qword_100125138);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = sub_1000DC604();
  v13 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v79 - v21;
  __chkstk_darwin(v20);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_propertiesToRefresh] = &_swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_10011FB18;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_1000DAFF4();
  sub_100007EBC(v30, qword_100124FD8);
  v31 = v29;
  v32 = sub_1000DAFD4();
  v33 = sub_1000DC4B4();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&_mh_execute_header, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_10001E820(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  sub_1000DC474();
  sub_1000DC614();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009BE6C(&qword_100125140, &qword_100125138);
  v39 = v31;
  sub_1000DC5F4();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_10004769C(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_10004769C(v44 > 1, v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  sub_1000DC484();
  v50 = v80;
  sub_1000DC614();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009BE6C(&qword_100125148, &qword_100125130);
  v51 = v82;
  sub_1000DC5F4();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_10004769C(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_10004769C(v54 > 1, v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  sub_1000DC494();
  v58 = v83;
  sub_1000DC614();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009BE6C(&qword_100125150, &qword_100125128);
  v59 = v85;
  sub_1000DC5F4();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_10004769C(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_10004769C(v62 > 1, v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  sub_1000DC464();
  v65 = v86;
  sub_1000DC614();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10009BE6C(&qword_100125158, &qword_100125120);
  v66 = v88;
  sub_1000DC5F4();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_10004769C(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_10004769C(v69 > 1, v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  sub_1000DC454();
  v72 = v89;
  sub_1000DC614();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10009BE6C(&qword_100125160, &qword_100125118);
  v73 = v91;
  sub_1000DC5F4();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_10004769C(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_10004769C(v76 > 1, v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_10009B078(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10011FB18 != -1)
    {
      swift_once();
    }

    v6 = sub_1000DAFF4();
    sub_100007EBC(v6, qword_100124FD8);
    v7 = v5;
    v8 = sub_1000DAFD4();
    v9 = sub_1000DC4B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10001E820(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_10009B1FC(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_10011FB18 != -1)
    {
      swift_once();
    }

    v6 = sub_1000DAFF4();
    sub_100007EBC(v6, qword_100124FD8);
    v7 = v5;
    v8 = sub_1000DAFD4();
    v9 = sub_1000DC4B4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&_mh_execute_header, v8, v9, a3, v10, 0x16u);
      sub_10001E820(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_10009B3AC();
  }
}

uint64_t sub_10009B3AC()
{
  v1 = OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_propertiesToRefresh;
  result = swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      sub_100036F4C(*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_didUndoOrRedo));

      v3(v4);
      sub_100030FC0(v3);
    }

    *(v0 + v1) = &_swiftEmptySetSingleton;

    *(*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }

  return result;
}

id sub_10009B47C()
{
  v1 = v0;
  if (qword_10011FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124FD8);
  v3 = sub_1000DAFD4();
  v4 = sub_1000DC4B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_10009A130();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

void sub_10009B5C8()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_10011FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124FD8);
  v3 = v0;
  v4 = sub_1000DAFD4();
  v5 = sub_1000DC4B4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&_mh_execute_header, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_10009B764()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_10011FB18 != -1)
    {
      swift_once();
    }

    v7 = sub_1000DAFF4();
    sub_100007EBC(v7, qword_100124FD8);
    v11 = v0;
    oslog = sub_1000DAFD4();
    v8 = sub_1000DC4B4();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&_mh_execute_header, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_10011FB18 != -1)
    {
      swift_once();
    }

    v2 = sub_1000DAFF4();
    sub_100007EBC(v2, qword_100124FD8);
    v3 = v0;
    v4 = sub_1000DAFD4();
    v5 = sub_1000DC4B4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&_mh_execute_header, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_10009BA3C()
{
  v1 = v0;
  if (qword_10011FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124FD8);
  v3 = sub_1000DAFD4();
  v4 = sub_1000DC4B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_10009A130();
  result = sub_10009BB34();
  *(*(v1 + OBJC_IVAR____TtC20JournalWidgetsSecure16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_10009BB34()
{
  v1 = v0;
  if (qword_10011FB18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000DAFF4();
  sub_100007EBC(v2, qword_100124FD8);
  v3 = sub_1000DAFD4();
  v4 = sub_1000DC4B4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_10009BC50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10009BD2C()
{
  result = qword_100125110;
  if (!qword_100125110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125110);
  }

  return result;
}

uint64_t sub_10009BD80()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10009BE6C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100007C08(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009BEC0@<X0>(uint64_t a1@<X8>)
{
  v176 = a1;
  v172 = sub_1000DBC14();
  v159 = *(v172 - 8);
  __chkstk_darwin(v172);
  v171 = &v147 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = type metadata accessor for CanvasContentInputType();
  v155 = *(v160 - 8);
  __chkstk_darwin(v160);
  v151 = &v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100007BC0(&qword_100125168);
  v4 = __chkstk_darwin(v3 - 8);
  v156 = &v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v165 = &v147 - v6;
  v7 = sub_100007BC0(&qword_100125170);
  v8 = __chkstk_darwin(v7 - 8);
  v154 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v166 = &v147 - v10;
  v11 = sub_1000DA0E4();
  v163 = *(v11 - 8);
  v164 = v11;
  v12 = __chkstk_darwin(v11);
  v153 = &v147 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v170 = &v147 - v14;
  v15 = sub_100007BC0(&qword_1001217A0);
  v16 = __chkstk_darwin(v15 - 8);
  v169 = &v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v158 = &v147 - v18;
  v19 = sub_1000D9A54();
  v167 = *(v19 - 8);
  v168 = v19;
  v20 = __chkstk_darwin(v19);
  v147 = &v147 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v149 = &v147 - v23;
  v24 = __chkstk_darwin(v22);
  v157 = &v147 - v25;
  v26 = __chkstk_darwin(v24);
  v150 = &v147 - v27;
  v28 = __chkstk_darwin(v26);
  v148 = &v147 - v29;
  v30 = __chkstk_darwin(v28);
  v152 = &v147 - v31;
  v32 = __chkstk_darwin(v30);
  v34 = &v147 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v147 - v36;
  __chkstk_darwin(v35);
  v39 = &v147 - v38;
  v40 = sub_1000D9DA4();
  v161 = *(v40 - 8);
  v162 = v40;
  __chkstk_darwin(v40);
  v42 = &v147 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100007BC0(&qword_100121580);
  v44 = __chkstk_darwin(v43 - 8);
  v46 = &v147 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = &v147 - v47;
  v49 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v49);
  v51 = &v147 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000D9AC4();
  v174 = *(v52 - 8);
  v175 = v52;
  __chkstk_darwin(v52);
  v54 = &v147 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D9AB4();
  sub_1000D9AA4();
  v55 = v54;
  sub_1000D9A74();
  sub_1000A0070(v173, v51, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v173 = v48;
    v58 = v169;
    v157 = v42;
    v149 = v39;
    v153 = v34;
    v60 = v170;
    v59 = v171;
    v61 = v172;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v87 = *(v51 + 1);
        sub_1000D9A94();
        if (!v87)
        {
          goto LABEL_84;
        }

        v84 = sub_1000D9A64();
        if (!*v88)
        {

          v84(v178, 0);
          goto LABEL_84;
        }

        v85 = v88;
        v86 = v37;
        sub_1000D9A44();
LABEL_80:

        v102 = *v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v85 = v102;
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_81;
        }

        goto LABEL_37;
      }

      v62 = v173;
      sub_10001865C(v51, v173, &qword_100121580);
      sub_1000D9A94();
      v63 = v46;
      sub_100007F58(v62, v46, &qword_100121580);
      v64 = v161;
      v65 = v46;
      v66 = v162;
      if ((*(v161 + 48))(v65, 1, v162) == 1)
      {
        v67 = &qword_100121580;
        sub_1000080B0(v62, &qword_100121580);
        v68 = v63;
LABEL_13:
        sub_1000080B0(v68, v67);
        goto LABEL_84;
      }

      v104 = v157;
      (*(v64 + 32))(v157, v63, v66);
      v106 = sub_1000D9A64();
      if (*v105)
      {
        v107 = v105;
        sub_1000D9D34();
        v108 = v149;
        sub_1000D9A44();

        v109 = *v107;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        *v107 = v109;
        if ((v110 & 1) == 0)
        {
          v109 = sub_100047518(0, v109[2] + 1, 1, v109);
          *v107 = v109;
        }

        v112 = v109[2];
        v111 = v109[3];
        if (v112 >= v111 >> 1)
        {
          v109 = sub_100047518(v111 > 1, v112 + 1, 1, v109);
          *v107 = v109;
        }

        v109[2] = v112 + 1;
        (*(v167 + 32))(v109 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v112, v108, v168);
        v106(v178, 0);
        (*(v64 + 8))(v157, v66);
        v113 = &qword_100121580;
        v114 = v173;
      }

      else
      {
        v106(v178, 0);
        (*(v64 + 8))(v104, v66);
        v113 = &qword_100121580;
        v114 = v62;
      }

      goto LABEL_79;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v69 = v158;
      sub_10001865C(v51, v158, &qword_1001217A0);
      sub_1000D9A94();
      sub_100007F58(v69, v58, &qword_1001217A0);
      v70 = v163;
      v71 = v164;
      if ((*(v163 + 48))(v58, 1, v164) == 1)
      {
        v67 = &qword_1001217A0;
        sub_1000080B0(v69, &qword_1001217A0);
        v68 = v58;
        goto LABEL_13;
      }

      (*(v70 + 32))(v60, v58, v71);
      v116 = sub_1000D9A64();
      if (*v115)
      {
        v117 = v115;
        sub_1000DA094();
        sub_1000D9A44();

        v118 = *v117;
        v119 = swift_isUniquelyReferenced_nonNull_native();
        *v117 = v118;
        if ((v119 & 1) == 0)
        {
          v118 = sub_100047518(0, v118[2] + 1, 1, v118);
          *v117 = v118;
        }

        v121 = v118[2];
        v120 = v118[3];
        if (v121 >= v120 >> 1)
        {
          v118 = sub_100047518(v120 > 1, v121 + 1, 1, v118);
          *v117 = v118;
        }

        v118[2] = v121 + 1;
        (*(v167 + 32))(v118 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v121, v153, v168);
        v116(v178, 0);
        (*(v70 + 8))(v60, v71);
        v113 = &qword_1001217A0;
        v114 = v158;
      }

      else
      {
        v116(v178, 0);
        (*(v70 + 8))(v60, v71);
        v113 = &qword_1001217A0;
        v114 = v69;
      }

LABEL_79:
      sub_1000080B0(v114, v113);
      goto LABEL_84;
    }

    v89 = *(v51 + 1);
    v90 = sub_100007BC0(&qword_100125178);
    v91 = *(v90 + 64);
    v92 = v166;
    sub_10001865C(&v51[*(v90 + 48)], v166, &qword_100125170);
    sub_10001865C(&v51[v91], v165, &qword_100125168);
    sub_1000D9A94();
    v93 = v160;
    if (v89)
    {
      v95 = sub_1000D9A64();
      if (*v94)
      {
        v96 = v94;
        sub_1000D9A44();

        v97 = *v96;
        v98 = swift_isUniquelyReferenced_nonNull_native();
        *v96 = v97;
        if ((v98 & 1) == 0)
        {
          v97 = sub_100047518(0, v97[2] + 1, 1, v97);
          *v96 = v97;
        }

        v100 = v97[2];
        v99 = v97[3];
        if (v100 >= v99 >> 1)
        {
          v97 = sub_100047518(v99 > 1, v100 + 1, 1, v97);
          *v96 = v97;
        }

        v97[2] = v100 + 1;
        (*(v167 + 32))(v97 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v100, v152, v168);
        v95(v178, 0);
        v92 = v166;
        v93 = v160;
      }

      else
      {

        v95(v178, 0);
        v92 = v166;
      }
    }

    v122 = v154;
    sub_100007F58(v92, v154, &qword_100125170);
    if ((*(v155 + 48))(v122, 1, v93) == 1)
    {
      sub_1000080B0(v122, &qword_100125170);
      v123 = v165;
      goto LABEL_69;
    }

    v124 = v151;
    sub_10009E62C(v122, v151);
    v125 = sub_10009FEA0(v124);
    v123 = v165;
    if (v125 != 12)
    {
      v126 = v125;
      v128 = sub_1000D9A64();
      if (*v127)
      {
        v129 = v127;
        sub_10009DD6C(v126);
        sub_1000D9A44();

        v130 = *v129;
        v131 = swift_isUniquelyReferenced_nonNull_native();
        *v129 = v130;
        if ((v131 & 1) == 0)
        {
          v130 = sub_100047518(0, v130[2] + 1, 1, v130);
          *v129 = v130;
        }

        v133 = v130[2];
        v132 = v130[3];
        if (v133 >= v132 >> 1)
        {
          v130 = sub_100047518(v132 > 1, v133 + 1, 1, v130);
          *v129 = v130;
        }

        v130[2] = v133 + 1;
        (*(v167 + 32))(v130 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v133, v148, v168);
        v128(v178, 0);
        v134 = v151;
        goto LABEL_68;
      }

      v128(v178, 0);
    }

    v134 = v124;
LABEL_68:
    sub_1000A0010(v134, type metadata accessor for CanvasContentInputType);
LABEL_69:
    v135 = v156;
    sub_100007F58(v123, v156, &qword_100125168);
    v136 = v159;
    if ((*(v159 + 48))(v135, 1, v61) == 1)
    {
      sub_1000080B0(v123, &qword_100125168);
      sub_1000080B0(v166, &qword_100125170);
      v114 = v135;
      v113 = &qword_100125168;
    }

    else
    {
      (*(v136 + 32))(v59, v135, v61);
      v138 = sub_1000D9A64();
      if (*v137)
      {
        v139 = v137;
        v177 = sub_1000DBC04();
        sub_1000DCC44();
        sub_1000D9A44();

        v140 = *v139;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        *v139 = v140;
        if ((v141 & 1) == 0)
        {
          v140 = sub_100047518(0, v140[2] + 1, 1, v140);
          *v139 = v140;
        }

        v143 = v140[2];
        v142 = v140[3];
        if (v143 >= v142 >> 1)
        {
          v140 = sub_100047518(v142 > 1, v143 + 1, 1, v140);
          *v139 = v140;
        }

        v140[2] = v143 + 1;
        (*(v167 + 32))(v140 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v143, v150, v168);
        v138(v178, 0);
        (*(v159 + 8))(v59, v61);
      }

      else
      {
        v138(v178, 0);
        (*(v136 + 8))(v59, v61);
      }

      sub_1000080B0(v123, &qword_100125168);
      v113 = &qword_100125170;
      v114 = v166;
    }

    goto LABEL_79;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v73 = v163;
      v72 = v164;
      v74 = v153;
      (*(v163 + 32))(v153, v51, v164);
      sub_1000D9A94();
      v76 = sub_1000D9A64();
      if (*v75)
      {
        v77 = v75;
        sub_1000DA094();
        sub_1000D9A44();

        v78 = *v77;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        *v77 = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_100047518(0, v78[2] + 1, 1, v78);
          *v77 = v78;
        }

        v81 = v78[2];
        v80 = v78[3];
        if (v81 >= v80 >> 1)
        {
          v78 = sub_100047518(v80 > 1, v81 + 1, 1, v78);
          *v77 = v78;
        }

        v78[2] = v81 + 1;
        (*(v167 + 32))(v78 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v81, v157, v168);
        v76(v178, 0);
        (*(v73 + 8))(v74, v72);
      }

      else
      {
        v76(v178, 0);
        (*(v73 + 8))(v74, v72);
      }

      goto LABEL_84;
    }

    sub_1000D9A94();
    v84 = sub_1000D9A64();
    if (*v101)
    {
      v85 = v101;
      v86 = v149;
      sub_1000D9A44();

      v102 = *v85;
      v103 = swift_isUniquelyReferenced_nonNull_native();
      *v85 = v102;
      if (v103)
      {
LABEL_81:
        v146 = v102[2];
        v145 = v102[3];
        if (v146 >= v145 >> 1)
        {
          v102 = sub_100047518(v145 > 1, v146 + 1, 1, v102);
          *v85 = v102;
        }

        v102[2] = v146 + 1;
        (*(v167 + 32))(v102 + ((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v146, v86, v168);
        v84(v178, 0);
        goto LABEL_84;
      }

LABEL_37:
      v102 = sub_100047518(0, v102[2] + 1, 1, v102);
      *v85 = v102;
      goto LABEL_81;
    }

    goto LABEL_51;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v82 = *v51;
    sub_1000D9A94();
    if (v82 == 4)
    {
      goto LABEL_84;
    }

    v84 = sub_1000D9A64();
    if (*v83)
    {
      v85 = v83;
      v86 = v147;
      sub_1000D9A44();
      goto LABEL_80;
    }

LABEL_51:
    v84(v178, 0);
    goto LABEL_84;
  }

  if (EnumCaseMultiPayload == 7)
  {
    (*(v174 + 8))(v54, v175);
    sub_1000A0010(v51, type metadata accessor for AppLaunchAction);
    return (*(v161 + 56))(v176, 1, 1, v162);
  }

  sub_1000D9A94();
LABEL_84:
  sub_1000D9A84();
  return (*(v174 + 8))(v55, v175);
}

uint64_t type metadata accessor for AppLaunchAction()
{
  result = qword_1001251F0;
  if (!qword_1001251F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009D748(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x68746C616568;
  }

  else
  {
    v3 = 0x6163696669746F6ELL;
  }

  if (v2)
  {
    v4 = 0xED0000736E6F6974;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x68746C616568;
  }

  else
  {
    v5 = 0x6163696669746F6ELL;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xED0000736E6F6974;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000DCC74();
  }

  return v8 & 1;
}

Swift::Int sub_10009D7F8()
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_10009D884()
{
  sub_1000DBFD4();
}

Swift::Int sub_10009D8FC()
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_10009D984@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10010D628;
  v8._object = v3;
  v5 = sub_1000DCB64(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_10009D9E4(uint64_t *a1@<X8>)
{
  v2 = 0x6163696669746F6ELL;
  if (*v1)
  {
    v2 = 0x68746C616568;
  }

  v3 = 0xED0000736E6F6974;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10009DA38()
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_10009DB10()
{
  sub_1000DBFD4();
}

Swift::Int sub_10009DBD4()
{
  sub_1000DCD24();
  sub_1000DBFD4();

  return sub_1000DCD74();
}

uint64_t sub_10009DCA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A0644(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10009DCD8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C6172656E6567;
  v4 = 0xE700000000000000;
  v5 = 0x79636176697270;
  if (*v1 != 2)
  {
    v5 = 0x796C616E41707061;
    v4 = 0xEC00000073636974;
  }

  if (*v1)
  {
    v3 = 0x6163696669746F6ELL;
    v2 = 0xED0000736E6F6974;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10009DD6C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x6E6F697461636F6CLL;
    v6 = 0x4D664F6574617473;
    if (a1 != 10)
    {
      v6 = 0x7478655468636972;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x6172656D6163;
    v8 = 0x6C64496F69647561;
    if (a1 != 7)
    {
      v8 = 0x7463416F69647561;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0x6B63695065746164;
    v3 = 0x6974736567677573;
    if (a1 != 4)
    {
      v3 = 0x736F746F6870;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6472616F6279656BLL;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

void sub_10009DF14(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_10009E52C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1000A0690();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = sub_1000DC754(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = sub_1000DC764();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_10009E17C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D9DA4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v44 = &v33 - v10;
  result = __chkstk_darwin(v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1000A05FC(&unk_100125258, &type metadata accessor for URL);
      v26 = sub_1000DBDB4();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1000A05FC(&qword_1001252C0, &type metadata accessor for URL);
        v31 = sub_1000DBE64();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_10009E52C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1000DC934())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1000DC974();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10009E62C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E690(uint64_t a1, uint64_t a2)
{
  v186 = a1;
  v187 = a2;
  v157 = sub_1000DBC14();
  v156 = *(v157 - 8);
  __chkstk_darwin(v157);
  v154 = &v153 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_100007BC0(&qword_100125298);
  __chkstk_darwin(v165);
  v161 = &v153 - v3;
  v164 = type metadata accessor for CanvasContentInputType();
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v170 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_100007BC0(&qword_1001252A0);
  __chkstk_darwin(v168);
  v167 = &v153 - v5;
  v6 = sub_100007BC0(&qword_100125168);
  v7 = __chkstk_darwin(v6 - 8);
  v155 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v177 = &v153 - v10;
  __chkstk_darwin(v9);
  v176 = &v153 - v11;
  v12 = sub_100007BC0(&qword_100125170);
  v13 = __chkstk_darwin(v12 - 8);
  v159 = &v153 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v178 = &v153 - v16;
  __chkstk_darwin(v15);
  v175 = &v153 - v17;
  v18 = sub_1000DA0E4();
  v179 = *(v18 - 8);
  v180 = v18;
  v19 = __chkstk_darwin(v18);
  v169 = &v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v160 = &v153 - v21;
  v22 = sub_100007BC0(&qword_1001217A0);
  __chkstk_darwin(v22 - 8);
  v185 = &v153 - v23;
  v184 = sub_100007BC0(&qword_1001217A8);
  __chkstk_darwin(v184);
  v183 = &v153 - v24;
  v166 = sub_1000D9DA4();
  v182 = *(v166 - 8);
  __chkstk_darwin(v166);
  v158 = &v153 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v26 - 8);
  v162 = &v153 - v27;
  v181 = sub_100007BC0(&qword_1001252A8);
  __chkstk_darwin(v181);
  v29 = &v153 - v28;
  v30 = type metadata accessor for AppLaunchAction();
  v31 = __chkstk_darwin(v30);
  v173 = (&v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v35 = &v153 - v34;
  v36 = __chkstk_darwin(v33);
  v172 = &v153 - v37;
  v38 = __chkstk_darwin(v36);
  v174 = &v153 - v39;
  v40 = __chkstk_darwin(v38);
  v42 = &v153 - v41;
  v43 = __chkstk_darwin(v40);
  v45 = &v153 - v44;
  v46 = __chkstk_darwin(v43);
  v48 = (&v153 - v47);
  __chkstk_darwin(v46);
  v50 = &v153 - v49;
  v51 = sub_100007BC0(&qword_1001252B0);
  v52 = __chkstk_darwin(v51 - 8);
  v54 = &v153 - v53;
  v55 = &v153 + *(v52 + 56) - v53;
  sub_1000A0070(v186, &v153 - v53, type metadata accessor for AppLaunchAction);
  v56 = v187;
  v187 = v55;
  sub_1000A0070(v56, v55, type metadata accessor for AppLaunchAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v62 = v42;
    v63 = v181;
    v64 = v182;
    v171 = v54;
    v65 = v184;
    v66 = v185;
    v67 = v183;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v54 = v171;
        sub_1000A0070(v171, v50, type metadata accessor for AppLaunchAction);
        v68 = v187;
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1000080B0(v50, &qword_100121580);
          goto LABEL_59;
        }

        v111 = *(v63 + 48);
        v112 = v29;
        sub_10001865C(v50, v29, &qword_100121580);
        sub_10001865C(v68, &v29[v111], &qword_100121580);
        v113 = *(v64 + 48);
        v114 = v166;
        if (v113(v29, 1, v166) == 1)
        {
          if (v113(&v29[v111], 1, v114) == 1)
          {
            sub_1000080B0(v29, &qword_100121580);
            goto LABEL_87;
          }
        }

        else
        {
          v118 = v162;
          sub_100007F58(v29, v162, &qword_100121580);
          if (v113(&v29[v111], 1, v114) != 1)
          {
            v135 = &v29[v111];
            v136 = v158;
            (*(v64 + 32))(v158, v135, v114);
            sub_1000A05FC(&qword_1001252C0, &type metadata accessor for URL);
            v137 = sub_1000DBE64();
            v138 = *(v64 + 8);
            v138(v136, v114);
            v138(v118, v114);
            sub_1000080B0(v112, &qword_100121580);
            if (v137)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

          (*(v64 + 8))(v118, v114);
        }

        sub_1000080B0(v29, &qword_1001252A8);
        goto LABEL_99;
      }

      v54 = v171;
      sub_1000A0070(v171, v48, type metadata accessor for AppLaunchAction);
      v86 = *v48;
      v85 = v48[1];
      v87 = v187;
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_57;
      }

      v88 = v87[1];
      if (v85)
      {
        if (v88)
        {
          if (v86 != *v87 || v85 != v88)
          {
            v124 = sub_1000DCC74();

            if (v124)
            {
              goto LABEL_87;
            }

            goto LABEL_99;
          }

LABEL_29:

          goto LABEL_87;
        }
      }

      else if (!v88)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1000A0070(v171, v45, type metadata accessor for AppLaunchAction);
      v69 = v187;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1000080B0(v45, &qword_1001217A0);
        v54 = v171;
        goto LABEL_59;
      }

      v70 = *(v65 + 48);
      sub_10001865C(v45, v67, &qword_1001217A0);
      sub_10001865C(v69, v67 + v70, &qword_1001217A0);
      v71 = v179;
      v72 = v180;
      v73 = *(v179 + 48);
      if (v73(v67, 1, v180) == 1)
      {
        v74 = v73(v67 + v70, 1, v72);
        v75 = v171;
        if (v74 == 1)
        {
          sub_1000080B0(v67, &qword_1001217A0);
LABEL_80:
          v123 = v75;
LABEL_88:
          sub_1000A0010(v123, type metadata accessor for AppLaunchAction);
          v61 = 1;
          return v61 & 1;
        }
      }

      else
      {
        sub_100007F58(v67, v66, &qword_1001217A0);
        if (v73(v67 + v70, 1, v72) != 1)
        {
          v119 = v67 + v70;
          v120 = v160;
          (*(v71 + 32))(v160, v119, v72);
          sub_1000A05FC(&qword_1001202F8, &type metadata accessor for UUID);
          v121 = sub_1000DBE64();
          v122 = *(v71 + 8);
          v122(v120, v72);
          v122(v66, v72);
          sub_1000080B0(v67, &qword_1001217A0);
          v75 = v171;
          if (v121)
          {
            goto LABEL_80;
          }

LABEL_85:
          sub_1000A0010(v75, type metadata accessor for AppLaunchAction);
          goto LABEL_60;
        }

        (*(v71 + 8))(v66, v72);
        v75 = v171;
      }

      v115 = &qword_1001217A8;
      v116 = v67;
LABEL_84:
      sub_1000080B0(v116, v115);
      goto LABEL_85;
    }

    v54 = v171;
    v89 = v62;
    sub_1000A0070(v171, v62, type metadata accessor for AppLaunchAction);
    v90 = *v89;
    v91 = v89[1];
    v92 = sub_100007BC0(&qword_100125178);
    v93 = *(v92 + 48);
    v94 = *(v92 + 64);
    v95 = v187;
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      sub_1000080B0(v89 + v94, &qword_100125168);
      sub_1000080B0(v89 + v93, &qword_100125170);
      goto LABEL_59;
    }

    v96 = v95[1];
    v186 = *v95;
    sub_10001865C(v89 + v93, v175, &qword_100125170);
    sub_10001865C(v89 + v94, v176, &qword_100125168);
    sub_10001865C(v95 + v93, v178, &qword_100125170);
    sub_10001865C(v95 + v94, v177, &qword_100125168);
    if (v91)
    {
      v97 = v170;
      if (v96)
      {
        v98 = v171;
        v100 = v175;
        v99 = v176;
        v101 = v178;
        if (v90 == v186 && v91 == v96)
        {

          v103 = v167;
          v102 = v168;
          goto LABEL_91;
        }

        v126 = sub_1000DCC74();

        v103 = v167;
        v102 = v168;
        if (v126)
        {
LABEL_91:
          v127 = *(v102 + 48);
          sub_100007F58(v100, v103, &qword_100125170);
          sub_100007F58(v101, v103 + v127, &qword_100125170);
          v128 = *(v163 + 48);
          v129 = v164;
          if (v128(v103, 1, v164) == 1)
          {
            v130 = v128(v103 + v127, 1, v129);
            v131 = v165;
            if (v130 == 1)
            {
              sub_1000080B0(v103, &qword_100125170);
              v132 = v99;
              goto LABEL_101;
            }
          }

          else
          {
            v133 = v159;
            sub_100007F58(v103, v159, &qword_100125170);
            v134 = v128(v103 + v127, 1, v129);
            v131 = v165;
            if (v134 != 1)
            {
              sub_10009E62C(v103 + v127, v97);
              v139 = sub_1000A5058(v133, v97);
              sub_1000A0010(v97, type metadata accessor for CanvasContentInputType);
              sub_1000A0010(v133, type metadata accessor for CanvasContentInputType);
              sub_1000080B0(v103, &qword_100125170);
              v132 = v99;
              if (v139)
              {
LABEL_101:
                v140 = *(v131 + 48);
                v141 = v161;
                sub_100007F58(v132, v161, &qword_100125168);
                v142 = v177;
                v143 = v141;
                sub_100007F58(v177, v141 + v140, &qword_100125168);
                v144 = v156;
                v145 = *(v156 + 48);
                v146 = v157;
                if (v145(v141, 1, v157) == 1)
                {
                  sub_1000080B0(v142, &qword_100125168);
                  sub_1000080B0(v178, &qword_100125170);
                  v147 = v161;
                  sub_1000080B0(v132, &qword_100125168);
                  sub_1000080B0(v100, &qword_100125170);
                  if (v145(v147 + v140, 1, v146) == 1)
                  {
                    sub_1000080B0(v147, &qword_100125168);
                    v123 = v171;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v148 = v141;
                  v149 = v155;
                  sub_100007F58(v148, v155, &qword_100125168);
                  if (v145(v143 + v140, 1, v146) != 1)
                  {
                    v150 = v143 + v140;
                    v151 = v154;
                    (*(v144 + 32))(v154, v150, v146);
                    sub_1000A05FC(&qword_1001252B8, &type metadata accessor for WidgetFamily);
                    LODWORD(v187) = sub_1000DBE64();
                    v152 = *(v144 + 8);
                    v152(v151, v146);
                    sub_1000080B0(v177, &qword_100125168);
                    sub_1000080B0(v178, &qword_100125170);
                    sub_1000080B0(v132, &qword_100125168);
                    sub_1000080B0(v100, &qword_100125170);
                    v152(v149, v146);
                    sub_1000080B0(v161, &qword_100125168);
                    v123 = v171;
                    if (v187)
                    {
                      goto LABEL_88;
                    }

LABEL_107:
                    sub_1000A0010(v123, type metadata accessor for AppLaunchAction);
                    goto LABEL_60;
                  }

                  sub_1000080B0(v177, &qword_100125168);
                  sub_1000080B0(v178, &qword_100125170);
                  v147 = v161;
                  sub_1000080B0(v132, &qword_100125168);
                  sub_1000080B0(v100, &qword_100125170);
                  (*(v144 + 8))(v149, v146);
                }

                sub_1000080B0(v147, &qword_100125298);
                v123 = v171;
                goto LABEL_107;
              }

LABEL_97:
              sub_1000080B0(v177, &qword_100125168);
              sub_1000080B0(v101, &qword_100125170);
              sub_1000080B0(v132, &qword_100125168);
              sub_1000080B0(v100, &qword_100125170);
              sub_1000A0010(v171, type metadata accessor for AppLaunchAction);
              goto LABEL_60;
            }

            sub_1000A0010(v133, type metadata accessor for CanvasContentInputType);
          }

          sub_1000080B0(v103, &qword_1001252A0);
          v132 = v99;
          goto LABEL_97;
        }

LABEL_83:
        sub_1000080B0(v177, &qword_100125168);
        v75 = v98;
        sub_1000080B0(v101, &qword_100125170);
        sub_1000080B0(v99, &qword_100125168);
        v116 = v100;
        v115 = &qword_100125170;
        goto LABEL_84;
      }

      v98 = v171;
      v100 = v175;
      v99 = v176;
      v101 = v178;
    }

    else
    {
      v97 = v170;
      v98 = v171;
      v100 = v175;
      v99 = v176;
      v101 = v178;
      v103 = v167;
      v102 = v168;
      if (!v96)
      {
        goto LABEL_91;
      }
    }

    goto LABEL_83;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v76 = v174;
      sub_1000A0070(v54, v174, type metadata accessor for AppLaunchAction);
      v77 = v187;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v79 = v179;
        v78 = v180;
        v80 = v169;
        (*(v179 + 32))(v169, v77, v180);
        v61 = sub_1000DA0B4();
        v81 = *(v79 + 8);
        v81(v80, v78);
        v81(v76, v78);
        goto LABEL_19;
      }

      (*(v179 + 8))(v76, v180);
      goto LABEL_59;
    }

    v104 = v172;
    sub_1000A0070(v54, v172, type metadata accessor for AppLaunchAction);
    v105 = v187;
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_59;
    }

    v106 = *v105;
    if (*v104)
    {
      v107 = 0x68746C616568;
    }

    else
    {
      v107 = 0x6163696669746F6ELL;
    }

    if (*v104)
    {
      v108 = 0xE600000000000000;
    }

    else
    {
      v108 = 0xED0000736E6F6974;
    }

    if (v106)
    {
      v109 = 0x68746C616568;
    }

    else
    {
      v109 = 0x6163696669746F6ELL;
    }

    if (v106)
    {
      v110 = 0xE600000000000000;
    }

    else
    {
      v110 = 0xED0000736E6F6974;
    }

    if (v107 != v109 || v108 != v110)
    {
      v117 = sub_1000DCC74();

      if (v117)
      {
        goto LABEL_87;
      }

      goto LABEL_99;
    }

    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 6)
  {
    sub_1000A0070(v54, v35, type metadata accessor for AppLaunchAction);
    v82 = *v35;
    v83 = v187;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_59;
    }

    v84 = *v83;
    if (v82 == 4)
    {
      if (v84 != 4)
      {
        goto LABEL_99;
      }

LABEL_87:
      v123 = v54;
      goto LABEL_88;
    }

    if (v84 != 4 && (sub_10003370C(v82, v84) & 1) != 0)
    {
      goto LABEL_87;
    }

LABEL_99:
    sub_1000A0010(v54, type metadata accessor for AppLaunchAction);
    goto LABEL_60;
  }

  if (EnumCaseMultiPayload != 7)
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_87;
    }

LABEL_59:
    sub_1000080B0(v54, &qword_1001252B0);
LABEL_60:
    v61 = 0;
    return v61 & 1;
  }

  v58 = v173;
  sub_1000A0070(v54, v173, type metadata accessor for AppLaunchAction);
  v59 = *v58;
  v60 = v187;
  if (swift_getEnumCaseMultiPayload() != 7)
  {
LABEL_57:

    goto LABEL_59;
  }

  v61 = sub_10009E17C(v59, *v60);

LABEL_19:
  sub_1000A0010(v54, type metadata accessor for AppLaunchAction);
  return v61 & 1;
}

uint64_t sub_10009FEA0(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A0070(a1, v4, type metadata accessor for CanvasContentInputType);
  result = swift_getEnumCaseMultiPayload();
  if (result > 5)
  {
    if (result > 8)
    {
      if ((result - 10) >= 2)
      {
        return 11;
      }

      else
      {
        return 12;
      }
    }

    else if (result != 6)
    {
      if (result == 7)
      {
        return 9;
      }

      else
      {
        return 10;
      }
    }
  }

  else if (result > 2)
  {
    if (result == 3)
    {
      return 0;
    }

    else if (result == 4)
    {
      return 3;
    }

    else
    {
      return 5;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      sub_1000080B0(v4, &qword_1001217A0);
      return 4;
    }

    else if (*v4)
    {
      return 8;
    }

    else
    {
      return 7;
    }
  }

  else if (*v4)
  {
    return 2;
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_1000A0010(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000A0070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1000A00D8()
{
  sub_1000A02C4(319, &qword_100125200, &qword_1001247A8, &type metadata accessor for URL, sub_1000A0318);
  if (v0 <= 0x3F)
  {
    sub_1000A02C4(319, &qword_100125208, &unk_100125210, &type metadata for String, sub_1000487DC);
    if (v1 <= 0x3F)
    {
      sub_1000A02C4(319, &qword_100125218, &qword_100121768, &type metadata accessor for UUID, sub_1000A0318);
      if (v2 <= 0x3F)
      {
        sub_1000A036C();
        if (v3 <= 0x3F)
        {
          sub_1000A041C(319, &qword_100125228, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_1000A0468();
            if (v5 <= 0x3F)
            {
              sub_1000A02C4(319, &qword_100125238, &unk_100125240, &type metadata for SettingsTab, sub_1000487DC);
              if (v6 <= 0x3F)
              {
                sub_1000A041C(319, &qword_100125248, sub_1000A0498);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1000A02C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1000A0318(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DC7C4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1000A036C()
{
  if (!qword_100125220)
  {
    sub_100007C08(&qword_100121498);
    sub_100007C08(&qword_100125170);
    sub_100007C08(&qword_100125168);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_100125220);
    }
  }
}

void sub_1000A041C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_1000A0468()
{
  result = qword_100125230;
  if (!qword_100125230)
  {
    result = &type metadata for PermissionType;
    atomic_store(&type metadata for PermissionType, &qword_100125230);
  }

  return result;
}

void sub_1000A0498()
{
  if (!qword_100125250)
  {
    sub_1000D9DA4();
    sub_1000A05FC(&unk_100125258, &type metadata accessor for URL);
    v0 = sub_1000DC2E4();
    if (!v1)
    {
      atomic_store(v0, &qword_100125250);
    }
  }
}

unint64_t sub_1000A0550()
{
  result = qword_100125288;
  if (!qword_100125288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125288);
  }

  return result;
}

unint64_t sub_1000A05A8()
{
  result = qword_100125290;
  if (!qword_100125290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125290);
  }

  return result;
}

uint64_t sub_1000A05FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A0644(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10010D678;
  v6._object = a2;
  v4 = sub_1000DCB64(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000A0690()
{
  result = qword_100120308;
  if (!qword_100120308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100120308);
  }

  return result;
}

id sub_1000A06EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MusicAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MusicAsset()
{
  result = qword_1001252F0;
  if (!qword_1001252F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000A07F4()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v71 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000DBED4();
  __chkstk_darwin(v3 - 8);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  __chkstk_darwin(v6 - 8);
  v8 = &v66 - v7;
  v9 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v9 - 8);
  v68 = &v66 - v10;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_1001205A8);
  __chkstk_darwin(v15 - 8);
  v17 = &v66 - v16;
  v18 = sub_1000DA654();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v0;
  sub_10001646C(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000080B0(v17, &qword_1001205A8);
    return 0;
  }

  (*(v19 + 32))(v21, v17, v18);
  sub_1000DAE94();
  v23 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v69 = [v23 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_1000DA624();
  v25 = v21;
  v67 = v19;
  if (v26)
  {
    v27 = v71;
LABEL_6:
    v29 = v69;
    v30 = sub_1000DBF04();

    goto LABEL_7;
  }

  sub_1000DA644();
  v27 = v71;
  if (v28)
  {
    goto LABEL_6;
  }

  v30 = 0;
  v29 = v69;
LABEL_7:
  [v29 setDisplayName:v30];

  v73 = sub_1000DA644();
  v74[0] = v31;
  v32 = 0;
  v74[1] = sub_1000DA614();
  v74[2] = v33;
  v34 = _swiftEmptyArrayStorage;
LABEL_8:
  v35 = &v74[2 * v32];
  while (++v32 != 3)
  {
    v36 = v35 + 2;
    v37 = *v35;
    v35 += 2;
    if (v37)
    {
      v66 = v25;
      v71 = v18;
      v38 = v5;
      v39 = v27;
      v40 = *(v36 - 3);

      v41 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_100047140(0, *(v34 + 2) + 1, 1, v34);
      }

      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        v34 = sub_100047140((v42 > 1), v43 + 1, 1, v34);
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[16 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v37;
      v8 = v41;
      v27 = v39;
      v5 = v38;
      v18 = v71;
      v25 = v66;
      goto LABEL_8;
    }
  }

  sub_100007BC0(&qword_100121498);
  swift_arrayDestroy();
  v72 = v34;
  sub_100007BC0(&qword_100121560);
  sub_10004229C();
  sub_1000DBDE4();

  v45 = sub_1000DBF04();

  v22 = v69;
  [v69 setContentDescription:v45];

  v46 = v68;
  sub_1000DA634();
  v47 = sub_1000D9DA4();
  v48 = *(v47 - 8);
  v50 = 0;
  if ((*(v48 + 48))(v46, 1, v47) != 1)
  {
    sub_1000D9D54(v49);
    v50 = v51;
    (*(v48 + 8))(v46, v47);
  }

  [v22 setThumbnailURL:v50];

  v52 = *(v70 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
  if (v52 && (v53 = [v52 entry]) != 0)
  {
    v54 = v53;
    sub_1000DA3A4();

    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = sub_1000DA084();
  (*(*(v56 - 8) + 56))(v8, v55, 1, v56);
  sub_1000DBE74();
  sub_1000DA114();
  v57 = sub_1000DBF64();
  v59 = v58;
  sub_100007BC0(&qword_1001203C0);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_1000DFEF0;
  v61 = sub_1000478A0(v57, v59, v8);
  v63 = v62;

  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v64 = sub_1000DC124().super.isa;

  [v22 setAlternateNames:v64];

  sub_1000080B0(v8, &qword_1001203B8);
  (*(v67 + 8))(v25, v18);
  return v22;
}

uint64_t sub_1000A1034(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000DA654();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000A1078()
{
  sub_100007BC0(&qword_100125350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000E11A0;
  *(inited + 32) = sub_1000DBF04();
  *(inited + 40) = sub_1000DBF04();
  *(inited + 48) = sub_1000DBF04();
  *(inited + 56) = sub_1000DBF04();
  *(inited + 64) = sub_1000DBF04();
  *(inited + 72) = sub_1000DBF04();
  v1 = sub_100094DB0(inited);
  swift_setDeallocating();
  type metadata accessor for NLTag(0);
  result = swift_arrayDestroy();
  qword_100125340 = v1;
  return result;
}

uint64_t sub_1000A1180()
{
  v0 = sub_100094E6C(&off_10010D6F8);
  result = swift_arrayDestroy();
  qword_100125348 = v0;
  return result;
}

uint64_t sub_1000A11CC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1000DBF04();
  [a4 setString:v6];

  v7 = sub_1000DBF04();
  [a3 setString:v7];

  sub_1000DC3D4();
  return 0;
}

uint64_t sub_1000A12C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v10 = sub_1000DC724();
  if (v10)
  {
    a5 = v10;
    if (qword_10011FB20 != -1)
    {
      swift_once();
    }

    if (sub_100021774(a5, qword_100125340))
    {
      sub_1000DC064();
      a7 = sub_1000DC804();

      v11 = *a6 + a7;
      if (!__OFADD__(*a6, a7))
      {
        goto LABEL_14;
      }

      __break(1u);
    }
  }

  v12 = sub_1000DC064();
  if ((v12 ^ v13) >> 14)
  {
    sub_1000DC7E4();
    a7 = sub_1000DC814();
    a5 = v14;

    if (qword_10011FB28 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  while (1)
  {
    v11 = *a6 + 1;
    if (!__OFADD__(*a6, 1))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_12:
    v15 = sub_10001EE0C(a7, a5, qword_100125348);

    if (v15)
    {
      return 1;
    }
  }

LABEL_14:
  *a6 = v11;
  return 1;
}

uint64_t type metadata accessor for CanvasContentInputType()
{
  result = qword_1001253C8;
  if (!qword_1001253C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A14F4()
{
  sub_1000A1568();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1000A1568()
{
  if (!qword_100125218)
  {
    sub_100036D6C();
    if (!v1)
    {
      atomic_store(v0, &qword_100125218);
    }
  }
}

uint64_t sub_1000A15C0(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100007BC0(&qword_100125598);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100007BC0(&qword_1001255A0);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100007BC0(&qword_1001255A8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_100007E68(a1, a1[3]);
  sub_1000A5B40();
  sub_1000DCDB4();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1000A5B94();
    sub_1000DCBE4();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1000A5BE8();
    sub_1000DCBE4();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1000A1888@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1000A18C4(uint64_t a1)
{
  v2 = sub_1000A5B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A1900(uint64_t a1)
{
  v2 = sub_1000A5B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A193C()
{
  if (*v0)
  {
    return 2036625250;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_1000A196C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_1000DCC74() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000DCC74();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000A1A50(uint64_t a1)
{
  v2 = sub_1000A5B40();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A1A8C(uint64_t a1)
{
  v2 = sub_1000A5B40();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1AC8(uint64_t a1)
{
  v2 = sub_1000A5BE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A1B04(uint64_t a1)
{
  v2 = sub_1000A5BE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A1B40@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000A5704(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_1000A1B90()
{
  result = qword_100125400;
  if (!qword_100125400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125400);
  }

  return result;
}

uint64_t sub_1000A1BE4(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000014;
    v7 = 0x7055776F6C6C6F66;
    if (a1 != 10)
    {
      v7 = 0x776F6C667265766FLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000011;
    if (a1 == 7)
    {
      v8 = 0x6E6F697461636F6CLL;
    }

    if (a1 == 6)
    {
      v8 = 0x6369506F69647561;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7475706E496F6ELL;
    v2 = 0xD000000000000010;
    v3 = 0x6369506F746F6870;
    if (a1 != 4)
    {
      v3 = 0x69506172656D6163;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6472616F6279656BLL;
    if (a1 != 1)
    {
      v4 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1000A1DA8(void *a1)
{
  v2 = sub_100007BC0(&qword_1001254F0);
  v87 = *(v2 - 8);
  v88 = v2;
  __chkstk_darwin(v2);
  v86 = &v54 - v3;
  v4 = sub_100007BC0(&qword_1001254F8);
  v84 = *(v4 - 8);
  v85 = v4;
  __chkstk_darwin(v4);
  v83 = &v54 - v5;
  v6 = sub_100007BC0(&qword_100125500);
  v81 = *(v6 - 8);
  v82 = v6;
  __chkstk_darwin(v6);
  v80 = &v54 - v7;
  v8 = sub_100007BC0(&qword_100125508);
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v77 = &v54 - v9;
  v10 = sub_100007BC0(&qword_100125510);
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v73 = &v54 - v11;
  v74 = sub_100007BC0(&qword_100125518);
  v72 = *(v74 - 8);
  __chkstk_darwin(v74);
  v71 = &v54 - v12;
  v70 = sub_100007BC0(&qword_100125520);
  v69 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v54 - v13;
  v65 = sub_100007BC0(&qword_100125528);
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v54 - v14;
  v68 = sub_100007BC0(&qword_100125530);
  v67 = *(v68 - 8);
  __chkstk_darwin(v68);
  v64 = &v54 - v15;
  v16 = sub_100007BC0(&qword_1001217A0);
  __chkstk_darwin(v16 - 8);
  v61 = &v54 - v17;
  v60 = sub_100007BC0(&qword_100125538);
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v56 = &v54 - v18;
  v58 = sub_100007BC0(&qword_100125540);
  v57 = *(v58 - 8);
  __chkstk_darwin(v58);
  v20 = &v54 - v19;
  v21 = sub_100007BC0(&qword_100125548);
  v55 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v24);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100007BC0(&qword_100125550);
  v28 = *(v27 - 8);
  v91 = v27;
  v92 = v28;
  __chkstk_darwin(v27);
  v30 = &v54 - v29;
  sub_100007E68(a1, a1[3]);
  sub_1000A4B6C();
  v90 = v30;
  sub_1000DCDB4();
  sub_1000A4A98(v89, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v103 = 9;
        sub_1000A4C68();
        v37 = v80;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        v41 = v81;
        v40 = v82;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v104 = 10;
        sub_1000A4C14();
        v37 = v83;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        v41 = v84;
        v40 = v85;
      }

      else
      {
        v105 = 11;
        sub_1000A4BC0();
        v37 = v86;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        v41 = v87;
        v40 = v88;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v99 = 5;
        sub_1000A4DB8();
        v48 = v66;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        (*(v69 + 8))(v48, v70);
        return (*(v92 + 8))(v38, v39);
      }

      if (EnumCaseMultiPayload == 7)
      {
        v101 = 7;
        sub_1000A4D10();
        v37 = v73;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        v41 = v75;
        v40 = v76;
      }

      else
      {
        v102 = 8;
        sub_1000A4CBC();
        v37 = v77;
        v38 = v90;
        v39 = v91;
        sub_1000DCBE4();
        v41 = v78;
        v40 = v79;
      }
    }

    (*(v41 + 8))(v37, v40);
    return (*(v92 + 8))(v38, v39);
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v93 = 0;
      sub_1000A4FB0();
      v50 = v90;
      v49 = v91;
      sub_1000DCBE4();
      (*(v55 + 8))(v23, v21);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v96 = 2;
        sub_1000A4EB4();
        v42 = v56;
        v43 = v90;
        v44 = v91;
        sub_1000DCBE4();
        (*(v59 + 8))(v42, v60);
        return (*(v92 + 8))(v43, v44);
      }

      v98 = 4;
      sub_1000A4E0C();
      v53 = v62;
      v50 = v90;
      v49 = v91;
      sub_1000DCBE4();
      (*(v63 + 8))(v53, v65);
    }

    return (*(v92 + 8))(v50, v49);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v32 = v61;
        sub_100086E70(v26, v61);
        v97 = 3;
        sub_1000A4E60();
        v33 = v64;
        v35 = v90;
        v34 = v91;
        sub_1000DCBE4();
        sub_1000DA0E4();
        sub_1000A56BC(&qword_100121358, &type metadata accessor for UUID);
        v36 = v68;
        sub_1000DCBF4();
        (*(v67 + 8))(v33, v36);
        sub_1000080B0(v32, &qword_1001217A0);
      }

      else
      {
        v100 = 6;
        sub_1000A4D64();
        v51 = v71;
        v35 = v90;
        v34 = v91;
        sub_1000DCBE4();
        v52 = v74;
        sub_1000DCC04();
        (*(v72 + 8))(v51, v52);
      }
    }

    else
    {
      v46 = *v26;
      v95 = 1;
      sub_1000A4F08();
      v35 = v90;
      v34 = v91;
      sub_1000DCBE4();
      v94 = v46;
      sub_1000A5004();
      v47 = v58;
      sub_1000DCC24();
      (*(v57 + 8))(v20, v47);
    }

    return (*(v92 + 8))(v35, v34);
  }
}

void sub_1000A2B04()
{
  v1 = sub_1000DA0E4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001217A0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A4A98(v0, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        v15 = 9;
      }

      else if (EnumCaseMultiPayload == 10)
      {
        v15 = 10;
      }

      else
      {
        v15 = 11;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v15 = 5;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v15 = 7;
    }

    else
    {
      v15 = 8;
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v15 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    goto LABEL_25;
  }

  if (!EnumCaseMultiPayload)
  {
    v16 = *v13;
    sub_1000DCD34(1uLL);
    v15 = v16;
LABEL_25:
    sub_1000DCD34(v15);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100086E70(v13, v10);
    sub_1000DCD34(3uLL);
    sub_1000A4AFC(v10, v8);
    if ((*(v2 + 48))(v8, 1, v1) == 1)
    {
      sub_1000DCD44(0);
    }

    else
    {
      (*(v2 + 32))(v4, v8, v1);
      sub_1000DCD44(1u);
      sub_1000A56BC(&qword_1001202E8, &type metadata accessor for UUID);
      sub_1000DBDC4();
      (*(v2 + 8))(v4, v1);
    }

    sub_1000080B0(v10, &qword_1001217A0);
  }

  else
  {
    v17 = *v13;
    sub_1000DCD34(6uLL);
    sub_1000DCD44(v17);
  }
}

uint64_t sub_1000A2E58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v114 = sub_100007BC0(&qword_100125410);
  v127 = *(v114 - 8);
  __chkstk_darwin(v114);
  v123 = &v85 - v3;
  v113 = sub_100007BC0(&qword_100125418);
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v122 = &v85 - v4;
  v111 = sub_100007BC0(&qword_100125420);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v119 = &v85 - v5;
  v109 = sub_100007BC0(&qword_100125428);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v121 = &v85 - v6;
  v107 = sub_100007BC0(&qword_100125430);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v120 = &v85 - v7;
  v105 = sub_100007BC0(&qword_100125438);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v126 = &v85 - v8;
  v103 = sub_100007BC0(&qword_100125440);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v118 = &v85 - v9;
  v100 = sub_100007BC0(&qword_100125448);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v117 = &v85 - v10;
  v99 = sub_100007BC0(&qword_100125450);
  v101 = *(v99 - 8);
  __chkstk_darwin(v99);
  v125 = &v85 - v11;
  v97 = sub_100007BC0(&qword_100125458);
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v115 = &v85 - v12;
  v95 = sub_100007BC0(&qword_100125460);
  v94 = *(v95 - 8);
  __chkstk_darwin(v95);
  v116 = &v85 - v13;
  v92 = sub_100007BC0(&qword_100125468);
  v93 = *(v92 - 8);
  __chkstk_darwin(v92);
  v124 = &v85 - v14;
  v15 = sub_100007BC0(&qword_100125470);
  v129 = *(v15 - 8);
  v130 = v15;
  __chkstk_darwin(v15);
  v17 = &v85 - v16;
  v18 = type metadata accessor for CanvasContentInputType();
  v19 = __chkstk_darwin(v18);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v85 - v26;
  __chkstk_darwin(v25);
  v29 = &v85 - v28;
  v30 = a1[3];
  v132 = a1;
  sub_100007E68(a1, v30);
  sub_1000A4B6C();
  v31 = v131;
  sub_1000DCDA4();
  if (!v31)
  {
    v86 = v27;
    v87 = v21;
    v32 = v124;
    v88 = v24;
    v34 = v125;
    v33 = v126;
    v90 = 0;
    v35 = v127;
    v91 = v18;
    v89 = v29;
    v36 = v128;
    v131 = v17;
    v37 = sub_1000DCBD4();
    if (*(v37 + 16) != 1 || (v38 = *(v37 + 32), v38 == 12))
    {
      v44 = sub_1000DCA44();
      swift_allocError();
      v46 = v45;
      sub_100007BC0(&qword_100125480);
      *v46 = v91;
      v48 = v130;
      v47 = v131;
      sub_1000DCB84();
      sub_1000DCA34();
      (*(*(v44 - 8) + 104))(v46, enum case for DecodingError.typeMismatch(_:), v44);
      swift_willThrow();
      goto LABEL_11;
    }

    if (*(v37 + 32) <= 5u)
    {
      if (*(v37 + 32) <= 2u)
      {
        v39 = v90;
        if (*(v37 + 32))
        {
          v127 = v37;
          v40 = v130;
          if (v38 == 1)
          {
            v135 = 1;
            sub_1000A4F08();
            v41 = v116;
            v42 = v131;
            sub_1000DCB74();
            v43 = v129;
            if (v39)
            {
              (*(v129 + 8))(v42, v40);
LABEL_12:
              swift_unknownObjectRelease();
              return sub_100007FC0(v132);
            }

            sub_1000A4F5C();
            v80 = v95;
            sub_1000DCBC4();
            (*(v94 + 8))(v41, v80);
            (*(v43 + 8))(v42, v40);
            swift_unknownObjectRelease();
            v83 = v86;
            *v86 = v134;
            goto LABEL_50;
          }

          v136 = 2;
          sub_1000A4EB4();
          v73 = v115;
          v74 = v131;
          sub_1000DCB74();
          v75 = v129;
          if (v39)
          {
            (*(v129 + 8))(v74, v40);
            goto LABEL_12;
          }

          (*(v96 + 8))(v73, v97);
          (*(v75 + 8))(v74, v40);
          swift_unknownObjectRelease();
          v56 = v89;
LABEL_46:
          swift_storeEnumTagMultiPayload();
LABEL_52:
          v53 = v36;
          goto LABEL_53;
        }

        v133 = 0;
        sub_1000A4FB0();
        v48 = v130;
        v47 = v131;
        sub_1000DCB74();
        if (!v39)
        {
          (*(v93 + 8))(v32, v92);
          (*(v129 + 8))(v47, v48);
          swift_unknownObjectRelease();
          v56 = v89;
          goto LABEL_46;
        }

LABEL_11:
        (*(v129 + 8))(v47, v48);
        goto LABEL_12;
      }

      v57 = v90;
      if (v38 != 3)
      {
        v58 = v129;
        v59 = v131;
        if (v38 == 4)
        {
          v138 = 4;
          sub_1000A4E0C();
          v60 = v117;
          v61 = v130;
          sub_1000DCB74();
          if (!v57)
          {
            v53 = v36;
            (*(v98 + 8))(v60, v100);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        else
        {
          v139 = 5;
          sub_1000A4DB8();
          v77 = v118;
          v61 = v130;
          sub_1000DCB74();
          if (!v57)
          {
            v53 = v36;
            (*(v102 + 8))(v77, v103);
            (*(v58 + 8))(v59, v61);
            swift_unknownObjectRelease();
            v56 = v89;
            swift_storeEnumTagMultiPayload();
            goto LABEL_53;
          }
        }

        (*(v58 + 8))(v59, v61);
        goto LABEL_12;
      }

      v137 = 3;
      sub_1000A4E60();
      v68 = v34;
      v63 = v130;
      v52 = v131;
      sub_1000DCB74();
      v51 = v129;
      if (!v57)
      {
        sub_1000DA0E4();
        sub_1000A56BC(&qword_100121328, &type metadata accessor for UUID);
        v69 = v88;
        v70 = v99;
        sub_1000DCB94();
        (*(v101 + 8))(v68, v70);
        (*(v51 + 8))(v52, v130);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v84 = v69;
LABEL_51:
        v56 = v89;
        sub_10009E62C(v84, v89);
        goto LABEL_52;
      }

LABEL_34:
      (*(v51 + 8))(v52, v63);
      goto LABEL_12;
    }

    v51 = v129;
    v50 = v130;
    v52 = v131;
    if (*(v37 + 32) <= 8u)
    {
      if (v38 == 6)
      {
        v140 = 6;
        sub_1000A4D64();
        v65 = v33;
        v63 = v50;
        v66 = v90;
        sub_1000DCB74();
        if (!v66)
        {
          v67 = v105;
          v81 = sub_1000DCBA4();
          (*(v104 + 8))(v65, v67);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v82 = v81 & 1;
          v83 = v87;
          *v87 = v82;
LABEL_50:
          swift_storeEnumTagMultiPayload();
          v84 = v83;
          goto LABEL_51;
        }

        goto LABEL_34;
      }

      v53 = v36;
      v54 = v90;
      if (v38 == 7)
      {
        v141 = 7;
        sub_1000A4D10();
        v55 = v120;
        sub_1000DCB74();
        if (!v54)
        {
          (*(v106 + 8))(v55, v107);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      else
      {
        v142 = 8;
        sub_1000A4CBC();
        v76 = v121;
        sub_1000DCB74();
        if (!v54)
        {
          (*(v108 + 8))(v76, v109);
          (*(v51 + 8))(v52, v130);
          swift_unknownObjectRelease();
          v56 = v89;
          swift_storeEnumTagMultiPayload();
          goto LABEL_53;
        }
      }

      (*(v51 + 8))(v52, v130);
      goto LABEL_12;
    }

    v53 = v36;
    if (v38 == 9)
    {
      v143 = 9;
      sub_1000A4C68();
      v71 = v119;
      v63 = v50;
      v72 = v90;
      sub_1000DCB74();
      if (!v72)
      {
        (*(v110 + 8))(v71, v111);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    if (v38 == 10)
    {
      v144 = 10;
      sub_1000A4C14();
      v62 = v122;
      v63 = v50;
      v64 = v90;
      sub_1000DCB74();
      if (!v64)
      {
        (*(v112 + 8))(v62, v113);
        (*(v51 + 8))(v52, v50);
        swift_unknownObjectRelease();
        v56 = v89;
        swift_storeEnumTagMultiPayload();
        goto LABEL_53;
      }

      goto LABEL_34;
    }

    v145 = 11;
    sub_1000A4BC0();
    v78 = v123;
    v79 = v90;
    sub_1000DCB74();
    if (v79)
    {
      (*(v51 + 8))(v52, v50);
      swift_unknownObjectRelease();
      return sub_100007FC0(v132);
    }

    (*(v35 + 8))(v78, v114);
    (*(v51 + 8))(v52, v50);
    swift_unknownObjectRelease();
    v56 = v89;
    swift_storeEnumTagMultiPayload();
    v53 = v36;
LABEL_53:
    sub_10009E62C(v56, v53);
  }

  return sub_100007FC0(v132);
}

uint64_t sub_1000A420C(uint64_t a1)
{
  v2 = sub_1000A4D64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4248(uint64_t a1)
{
  v2 = sub_1000A4D64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4284(uint64_t a1)
{
  v2 = sub_1000A4DB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A42C0(uint64_t a1)
{
  v2 = sub_1000A4DB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A6B3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A4338(uint64_t a1)
{
  v2 = sub_1000A4B6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4374(uint64_t a1)
{
  v2 = sub_1000A4B6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A43B0(uint64_t a1)
{
  v2 = sub_1000A4EB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A43EC(uint64_t a1)
{
  v2 = sub_1000A4EB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4428(uint64_t a1)
{
  v2 = sub_1000A4C14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4464(uint64_t a1)
{
  v2 = sub_1000A4C14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A44AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1000DCC74();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000A452C(uint64_t a1)
{
  v2 = sub_1000A4F08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4568(uint64_t a1)
{
  v2 = sub_1000A4F08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A45A4(uint64_t a1)
{
  v2 = sub_1000A4D10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A45E0(uint64_t a1)
{
  v2 = sub_1000A4D10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A461C(uint64_t a1)
{
  v2 = sub_1000A4FB0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4658(uint64_t a1)
{
  v2 = sub_1000A4FB0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4694(uint64_t a1)
{
  v2 = sub_1000A4BC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A46D0(uint64_t a1)
{
  v2 = sub_1000A4BC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A470C(uint64_t a1)
{
  v2 = sub_1000A4E0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4748(uint64_t a1)
{
  v2 = sub_1000A4E0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4784(uint64_t a1)
{
  v2 = sub_1000A4C68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A47C0(uint64_t a1)
{
  v2 = sub_1000A4C68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A47FC(uint64_t a1)
{
  v2 = sub_1000A4CBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4838(uint64_t a1)
{
  v2 = sub_1000A4CBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A4890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001000EB990 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1000DCC74();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1000A4924(uint64_t a1)
{
  v2 = sub_1000A4E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A4960(uint64_t a1)
{
  v2 = sub_1000A4E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A499C()
{
  sub_1000DCD24();
  sub_1000A2B04();
  return sub_1000DCD74();
}

Swift::Int sub_1000A49E0()
{
  sub_1000DCD24();
  sub_1000A2B04();
  return sub_1000DCD74();
}

uint64_t sub_1000A4A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A4AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_1001217A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A4B6C()
{
  result = qword_100125478;
  if (!qword_100125478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125478);
  }

  return result;
}

unint64_t sub_1000A4BC0()
{
  result = qword_100125488;
  if (!qword_100125488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125488);
  }

  return result;
}

unint64_t sub_1000A4C14()
{
  result = qword_100125490;
  if (!qword_100125490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125490);
  }

  return result;
}

unint64_t sub_1000A4C68()
{
  result = qword_100125498;
  if (!qword_100125498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125498);
  }

  return result;
}

unint64_t sub_1000A4CBC()
{
  result = qword_1001254A0;
  if (!qword_1001254A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254A0);
  }

  return result;
}

unint64_t sub_1000A4D10()
{
  result = qword_1001254A8;
  if (!qword_1001254A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254A8);
  }

  return result;
}

unint64_t sub_1000A4D64()
{
  result = qword_1001254B0;
  if (!qword_1001254B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254B0);
  }

  return result;
}

unint64_t sub_1000A4DB8()
{
  result = qword_1001254B8;
  if (!qword_1001254B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254B8);
  }

  return result;
}

unint64_t sub_1000A4E0C()
{
  result = qword_1001254C0;
  if (!qword_1001254C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254C0);
  }

  return result;
}

unint64_t sub_1000A4E60()
{
  result = qword_1001254C8;
  if (!qword_1001254C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254C8);
  }

  return result;
}

unint64_t sub_1000A4EB4()
{
  result = qword_1001254D0;
  if (!qword_1001254D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254D0);
  }

  return result;
}

unint64_t sub_1000A4F08()
{
  result = qword_1001254D8;
  if (!qword_1001254D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254D8);
  }

  return result;
}

unint64_t sub_1000A4F5C()
{
  result = qword_1001254E0;
  if (!qword_1001254E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254E0);
  }

  return result;
}

unint64_t sub_1000A4FB0()
{
  result = qword_1001254E8;
  if (!qword_1001254E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001254E8);
  }

  return result;
}

unint64_t sub_1000A5004()
{
  result = qword_100125558;
  if (!qword_100125558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125558);
  }

  return result;
}

uint64_t sub_1000A5058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000DA0E4();
  v40 = *(v4 - 8);
  v41 = v4;
  __chkstk_darwin(v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001217A0);
  __chkstk_darwin(v6 - 8);
  v39 = &v38 - v7;
  v8 = sub_100007BC0(&qword_1001217A8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for CanvasContentInputType();
  v12 = __chkstk_darwin(v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v38 - v16;
  __chkstk_darwin(v15);
  v19 = &v38 - v18;
  v20 = sub_100007BC0(&qword_100125560);
  v21 = __chkstk_darwin(v20 - 8);
  v23 = &v38 - v22;
  v24 = *(v21 + 56);
  sub_1000A4A98(a1, &v38 - v22);
  sub_1000A4A98(a2, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          goto LABEL_38;
        }
      }

      else if (EnumCaseMultiPayload == 10)
      {
        if (swift_getEnumCaseMultiPayload() == 10)
        {
          goto LABEL_38;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 11)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 8)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_38;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_38;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_38;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1000A4A98(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = *(v8 + 48);
        sub_100086E70(v17, v10);
        sub_100086E70(&v23[v24], &v10[v26]);
        v28 = v40;
        v27 = v41;
        v29 = *(v40 + 48);
        if (v29(v10, 1, v41) == 1)
        {
          if (v29(&v10[v26], 1, v27) == 1)
          {
            sub_1000080B0(v10, &qword_1001217A0);
LABEL_38:
            sub_1000A5660(v23);
            v32 = 1;
            return v32 & 1;
          }
        }

        else
        {
          v34 = v39;
          sub_1000A4AFC(v10, v39);
          if (v29(&v10[v26], 1, v27) != 1)
          {
            v35 = v38;
            (*(v28 + 32))(v38, &v10[v26], v27);
            sub_1000A56BC(&qword_1001202F8, &type metadata accessor for UUID);
            v36 = sub_1000DBE64();
            v37 = *(v28 + 8);
            v37(v35, v27);
            v37(v34, v27);
            sub_1000080B0(v10, &qword_1001217A0);
            if (v36)
            {
              goto LABEL_38;
            }

            goto LABEL_46;
          }

          (*(v28 + 8))(v34, v27);
        }

        sub_1000080B0(v10, &qword_1001217A8);
LABEL_46:
        sub_1000A5660(v23);
        goto LABEL_41;
      }

      sub_1000080B0(v17, &qword_1001217A0);
LABEL_40:
      sub_1000080B0(v23, &qword_100125560);
LABEL_41:
      v32 = 0;
      return v32 & 1;
    }

    sub_1000A4A98(v23, v14);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_40;
    }

    v30 = *v14;
  }

  else
  {
    sub_1000A4A98(v23, v19);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_40;
    }

    v30 = *v19;
  }

  v31 = v30 ^ v23[v24];
  sub_1000A5660(v23);
  v32 = v31 ^ 1;
  return v32 & 1;
}

uint64_t sub_1000A5660(uint64_t a1)
{
  v2 = type metadata accessor for CanvasContentInputType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A56BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000A5704(void *a1)
{
  v24 = sub_100007BC0(&qword_100125568);
  v22 = *(v24 - 8);
  __chkstk_darwin(v24);
  v3 = v20 - v2;
  v4 = sub_100007BC0(&qword_100125570);
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v20 - v5;
  v7 = sub_100007BC0(&qword_100125578);
  v25 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v20 - v8;
  sub_100007E68(a1, a1[3]);
  sub_1000A5B40();
  v10 = v26;
  sub_1000DCDA4();
  if (v10)
  {
    return sub_100007FC0(a1);
  }

  v21 = v4;
  v26 = a1;
  v12 = v23;
  v11 = v24;
  v13 = v9;
  v14 = sub_1000DCBD4();
  if (*(v14 + 16) != 1)
  {
    v16 = sub_1000DCA44();
    swift_allocError();
    v18 = v17;
    sub_100007BC0(&qword_100125480);
    *v18 = &type metadata for CanvasContentInputType.KeyboardFocus;
    sub_1000DCB84();
    sub_1000DCA34();
    (*(*(v16 - 8) + 104))(v18, enum case for DecodingError.typeMismatch(_:), v16);
    swift_willThrow();
    (*(v25 + 8))(v13, v7);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100007FC0(a1);
  }

  v20[1] = v14;
  v27 = *(v14 + 32);
  if (v27)
  {
    v29 = 1;
    sub_1000A5B94();
    sub_1000DCB74();
    v15 = v25;
    (*(v22 + 8))(v3, v11);
  }

  else
  {
    v28 = 0;
    sub_1000A5BE8();
    sub_1000DCB74();
    v15 = v25;
    (*(v12 + 8))(v6, v21);
  }

  (*(v15 + 8))(v9, v7);
  swift_unknownObjectRelease();
  sub_100007FC0(v26);
  return v27;
}

unint64_t sub_1000A5B40()
{
  result = qword_100125580;
  if (!qword_100125580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125580);
  }

  return result;
}

unint64_t sub_1000A5B94()
{
  result = qword_100125588;
  if (!qword_100125588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125588);
  }

  return result;
}

unint64_t sub_1000A5BE8()
{
  result = qword_100125590;
  if (!qword_100125590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125590);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CanvasContentInputType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CanvasContentInputType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000A5E88()
{
  result = qword_1001255B0;
  if (!qword_1001255B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255B0);
  }

  return result;
}

unint64_t sub_1000A5EE0()
{
  result = qword_1001255B8;
  if (!qword_1001255B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255B8);
  }

  return result;
}

unint64_t sub_1000A5F38()
{
  result = qword_1001255C0;
  if (!qword_1001255C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255C0);
  }

  return result;
}

unint64_t sub_1000A5F90()
{
  result = qword_1001255C8;
  if (!qword_1001255C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255C8);
  }

  return result;
}

unint64_t sub_1000A5FE8()
{
  result = qword_1001255D0;
  if (!qword_1001255D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255D0);
  }

  return result;
}

unint64_t sub_1000A6040()
{
  result = qword_1001255D8;
  if (!qword_1001255D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255D8);
  }

  return result;
}

unint64_t sub_1000A6098()
{
  result = qword_1001255E0;
  if (!qword_1001255E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255E0);
  }

  return result;
}

unint64_t sub_1000A60F0()
{
  result = qword_1001255E8;
  if (!qword_1001255E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255E8);
  }

  return result;
}

unint64_t sub_1000A6148()
{
  result = qword_1001255F0;
  if (!qword_1001255F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255F0);
  }

  return result;
}

unint64_t sub_1000A61A0()
{
  result = qword_1001255F8;
  if (!qword_1001255F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001255F8);
  }

  return result;
}

unint64_t sub_1000A61F8()
{
  result = qword_100125600;
  if (!qword_100125600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125600);
  }

  return result;
}

unint64_t sub_1000A6250()
{
  result = qword_100125608;
  if (!qword_100125608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125608);
  }

  return result;
}

unint64_t sub_1000A62A8()
{
  result = qword_100125610;
  if (!qword_100125610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125610);
  }

  return result;
}

unint64_t sub_1000A6300()
{
  result = qword_100125618;
  if (!qword_100125618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125618);
  }

  return result;
}

unint64_t sub_1000A6358()
{
  result = qword_100125620;
  if (!qword_100125620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125620);
  }

  return result;
}

unint64_t sub_1000A63B0()
{
  result = qword_100125628;
  if (!qword_100125628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125628);
  }

  return result;
}

unint64_t sub_1000A6408()
{
  result = qword_100125630;
  if (!qword_100125630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125630);
  }

  return result;
}

unint64_t sub_1000A6460()
{
  result = qword_100125638;
  if (!qword_100125638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125638);
  }

  return result;
}

unint64_t sub_1000A64B8()
{
  result = qword_100125640;
  if (!qword_100125640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125640);
  }

  return result;
}

unint64_t sub_1000A6510()
{
  result = qword_100125648;
  if (!qword_100125648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125648);
  }

  return result;
}

unint64_t sub_1000A6568()
{
  result = qword_100125650;
  if (!qword_100125650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125650);
  }

  return result;
}

unint64_t sub_1000A65C0()
{
  result = qword_100125658;
  if (!qword_100125658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125658);
  }

  return result;
}

unint64_t sub_1000A6618()
{
  result = qword_100125660;
  if (!qword_100125660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125660);
  }

  return result;
}

unint64_t sub_1000A6670()
{
  result = qword_100125668;
  if (!qword_100125668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125668);
  }

  return result;
}

unint64_t sub_1000A66C8()
{
  result = qword_100125670;
  if (!qword_100125670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125670);
  }

  return result;
}

unint64_t sub_1000A6720()
{
  result = qword_100125678;
  if (!qword_100125678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125678);
  }

  return result;
}

unint64_t sub_1000A6778()
{
  result = qword_100125680;
  if (!qword_100125680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125680);
  }

  return result;
}

unint64_t sub_1000A67D0()
{
  result = qword_100125688;
  if (!qword_100125688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125688);
  }

  return result;
}

unint64_t sub_1000A6828()
{
  result = qword_100125690;
  if (!qword_100125690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125690);
  }

  return result;
}

unint64_t sub_1000A6880()
{
  result = qword_100125698;
  if (!qword_100125698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125698);
  }

  return result;
}

unint64_t sub_1000A68D8()
{
  result = qword_1001256A0;
  if (!qword_1001256A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256A0);
  }

  return result;
}

unint64_t sub_1000A6930()
{
  result = qword_1001256A8;
  if (!qword_1001256A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256A8);
  }

  return result;
}

unint64_t sub_1000A6988()
{
  result = qword_1001256B0;
  if (!qword_1001256B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256B0);
  }

  return result;
}

unint64_t sub_1000A69E0()
{
  result = qword_1001256B8;
  if (!qword_1001256B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256B8);
  }

  return result;
}

unint64_t sub_1000A6A38()
{
  result = qword_1001256C0;
  if (!qword_1001256C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256C0);
  }

  return result;
}

unint64_t sub_1000A6A90()
{
  result = qword_1001256C8;
  if (!qword_1001256C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256C8);
  }

  return result;
}

unint64_t sub_1000A6AE8()
{
  result = qword_1001256D0;
  if (!qword_1001256D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001256D0);
  }

  return result;
}

uint64_t sub_1000A6B3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E496F6ELL && a2 == 0xE700000000000000;
  if (v4 || (sub_1000DCC74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6472616F6279656BLL && a2 == 0xE800000000000000 || (sub_1000DCC74() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000EB910 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000EB930 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6369506F746F6870 && a2 == 0xEB0000000072656BLL || (sub_1000DCC74() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69506172656D6163 && a2 == 0xEC00000072656B63 || (sub_1000DCC74() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6369506F69647561 && a2 == 0xEB0000000072656BLL || (sub_1000DCC74() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEE0072656B636950 || (sub_1000DCC74() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000EB950 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000EB970 == a2 || (sub_1000DCC74() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7055776F6C6C6F66 && a2 == -1192481450101870000 || (sub_1000DCC74() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x776F6C667265766FLL && a2 == 0xEC0000006D657449)
  {

    return 11;
  }

  else
  {
    v6 = sub_1000DCC74();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1000A6F44()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000A6F98()
{
  v0 = sub_1000DAD24();
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DataStackConfiguration();
  sub_100007EF4(v3, qword_1001272B0);
  v4 = sub_100007EBC(v3, qword_1001272B0);
  sub_1000DAD14();
  return sub_1000A70A4(v2, NSFileProtectionCompleteUnlessOpen, v4);
}

uint64_t type metadata accessor for DataStackConfiguration()
{
  result = qword_1001257D0;
  if (!qword_1001257D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000A70A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v26 = a3;
  v5 = sub_1000DAD24();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v25 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = *(v6 + 16);
  v17(&v25 - v15, a1, v5);
  v17(v14, v16, v5);
  v17(v11, v14, v5);
  v18 = (*(v6 + 88))(v11, v5);
  if (v18 == enum case for Runtime.Environment.production(_:))
  {
    v19 = 0;
LABEL_7:
    v20 = *(v6 + 8);
    v21 = a2;
    v20(v14, v5);
    v20(v16, v5);
    v22 = v26;
    *v26 = v21;
    *(v22 + 8) = v19;
    v17(v25, a1, v5);
    type metadata accessor for DataStackConfiguration();
    sub_1000DAB54();
    return (v20)(a1, v5);
  }

  if (v18 == enum case for Runtime.Environment.staging(_:))
  {
    v19 = 1;
    goto LABEL_7;
  }

  if (v18 == enum case for Runtime.Environment.testing(_:))
  {
    v19 = 2;
    goto LABEL_7;
  }

  v24 = a2;
  result = sub_1000DCC64();
  __break(1u);
  return result;
}

uint64_t sub_1000A7340(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000DAB64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000A7400(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000DAB64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A74A4()
{
  result = sub_1000DAB64();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_1000A7520()
{
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setParagraphSpacingBefore:8.0];
  sub_1000A7570();
  return v0;
}

id sub_1000A7570()
{
  isa = v0;
  result = [(objc_class *)v0 tabStops];
  if (result)
  {
    v3 = result;
    sub_1000A78CC();
    v4 = sub_1000DC134();

    if (v4 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1000DCB14())
    {
      v19 = isa;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = sub_1000DCA24();
      }

      else
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v6 = *(v4 + 32);
      }

      v7 = v6;
      v8 = objc_allocWithZone(NSTextTab);
      type metadata accessor for OptionKey(0);
      sub_1000A7918();
      isa = sub_1000DBD64().super.isa;
      [v8 initWithTextAlignment:2 location:isa options:26.0];

      sub_1000DC114();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        isa = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1000DC164();
      }

      sub_1000DC194();

      if (i == 1)
      {
LABEL_10:
        isa = v19;
        break;
      }

      v9 = 36.0;
      v10 = 5;
      while (1)
      {
        v11 = v10 - 4;
        if ((v4 & 0xC000000000000001) != 0)
        {
          v12 = sub_1000DCA24();
        }

        else
        {
          if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v12 = *(v4 + 8 * v10);
        }

        v13 = v12;
        v14 = v10 - 3;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 alignment];
        v16 = objc_allocWithZone(NSTextTab);
        v17 = sub_1000DBD64().super.isa;
        [v16 initWithTextAlignment:v15 location:v17 options:v9];

        sub_1000DC114();
        isa = *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (isa >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000DC164();
        }

        sub_1000DC194();

        v9 = v9 + 10.0;
        ++v10;
        if (v14 == i)
        {
          goto LABEL_10;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v18 = sub_1000DC124().super.isa;

    [(objc_class *)isa setTabStops:v18];

    return [(objc_class *)isa setDefaultTabInterval:10.0];
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000A78CC()
{
  result = qword_100125808;
  if (!qword_100125808)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100125808);
  }

  return result;
}

unint64_t sub_1000A7918()
{
  result = qword_10011FF40;
  if (!qword_10011FF40)
  {
    type metadata accessor for OptionKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10011FF40);
  }

  return result;
}

unint64_t sub_1000A7974()
{
  result = qword_100125810;
  if (!qword_100125810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125810);
  }

  return result;
}

unint64_t sub_1000A79CC()
{
  result = qword_100125818;
  if (!qword_100125818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125818);
  }

  return result;
}

unint64_t sub_1000A7A24()
{
  result = qword_100125820;
  if (!qword_100125820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125820);
  }

  return result;
}

unint64_t sub_1000A7A7C()
{
  result = qword_100125828;
  if (!qword_100125828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100125828);
  }

  return result;
}

uint64_t sub_1000A7B20()
{
  v0 = sub_1000D9C54();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DA124();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1000DBED4();
  __chkstk_darwin(v5 - 8);
  v6 = sub_1000D9C64();
  sub_100007EF4(v6, qword_1001272C8);
  sub_100007EBC(v6, qword_1001272C8);
  sub_1000DBE74();
  sub_1000DA114();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000D9C74();
}

uint64_t sub_1000A7D1C@<X0>(uint64_t a1@<X8>)
{
  if (qword_10011FB38 != -1)
  {
    swift_once();
  }

  v2 = sub_1000D9C64();
  v3 = sub_100007EBC(v2, qword_1001272C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000A7DDC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_10002CA90();
  *v4 = v2;
  v4[1] = sub_1000A7E88;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_1000A7E88()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_1000A7F90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000A8004();
  *a1 = result;
  return result;
}

uint64_t sub_1000A7FB8(uint64_t a1)
{
  v2 = sub_1000A7974();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000A8004()
{
  v0 = sub_1000D98E4();
  v24 = *(v0 - 8);
  v25 = v0;
  __chkstk_darwin(v0);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_100007BC0(&qword_100125830);
  v3 = __chkstk_darwin(v2 - 8);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v21 - v5;
  v7 = sub_100007BC0(&qword_100123E10);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = sub_1000D9C54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000DA124();
  __chkstk_darwin(v14 - 8);
  v15 = sub_1000DBED4();
  __chkstk_darwin(v15 - 8);
  v16 = sub_1000D9C64();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v21 = sub_100007BC0(&qword_100125838);
  sub_1000DBE74();
  sub_1000DA114();
  (*(v11 + 104))(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  sub_1000D9C74();
  (*(v17 + 56))(v9, 1, 1, v16);
  v26 = 0;
  v18 = sub_1000D9884();
  v19 = *(*(v18 - 8) + 56);
  v19(v6, 1, 1, v18);
  v19(v22, 1, 1, v18);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_10006DDA8();
  return sub_1000D98A4();
}

id sub_1000A85B4()
{
  v2.receiver = v0;
  v2.super_class = _s15MOMapAnnotationCMa();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000A8620(uint64_t result, char a2)
{
  if (a2 != 2 && (a2 & 1) == 0)
  {
    v2 = result;
    v3 = sub_1000DB1F4();
    (*(*(v3 - 8) + 8))(v2, v3);
    sub_100007BC0(&qword_1001258E0);
    *(swift_allocObject() + 16) = xmmword_1000DE2C0;
    sub_1000DB1D4();
    sub_1000DB1E4();
    sub_10003CD34();
    sub_100007BC0(&qword_1001258E8);
    sub_1000A8744();
    return sub_1000DC8D4();
  }

  return result;
}

unint64_t sub_1000A8744()
{
  result = qword_1001258F0;
  if (!qword_1001258F0)
  {
    sub_100007C08(&qword_1001258E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001258F0);
  }

  return result;
}

uint64_t sub_1000A87A8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v66 = a3;
  v5 = sub_100007BC0(&qword_1001223A8);
  __chkstk_darwin(v5 - 8);
  v70 = &v56[-v6];
  v69 = sub_1000DAF04();
  v7 = *(v69 - 8);
  v8 = __chkstk_darwin(v69);
  v68 = &v56[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v61 = &v56[-v10];
  v65 = sub_1000DA844();
  v11 = *(v65 - 8);
  __chkstk_darwin(v65);
  v64 = &v56[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v75 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v75);
  v15 = &v56[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v80 = &v56[-v16];
  v17 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v17 - 8);
  v79 = &v56[-v18];
  v81 = sub_1000D9DA4();
  v72 = *(v81 - 8);
  __chkstk_darwin(v81);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for AssetAttachment.AssetType(0);
  v22 = __chkstk_darwin(v21);
  v82 = &v56[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v25 = &v56[-v24];
  v26 = *(v3 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_attachments);
  if (v26 >> 62)
  {
LABEL_47:
    v27 = sub_1000DCB14();
  }

  else
  {
    v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = v81;
  if (v27)
  {
    v29 = v11;
    v11 = 0;
    v87 = v26 & 0xFFFFFFFFFFFFFF8;
    v88 = v26 & 0xC000000000000001;
    v77 = (v72 + 56);
    v60 = (v29 + 8);
    v73 = (v72 + 32);
    v76 = (v72 + 48);
    v63 = (v7 + 48);
    v59 = (v7 + 32);
    v58 = (v7 + 8);
    v62 = (v72 + 8);
    v78 = a2;
    v74 = v15;
    v67 = v20;
    v84 = v21;
    v85 = v27;
    v86 = v26;
    while (1)
    {
      if (v88)
      {
        v7 = sub_1000DCA24();
        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          __break(1u);
          goto LABEL_47;
        }

        v7 = *(v26 + 8 * v11 + 32);

        v30 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_40;
        }
      }

      v31 = OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType;
      sub_100046830(v7 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v25, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      if (EnumCaseMultiPayload > 1)
      {
        break;
      }

      if (EnumCaseMultiPayload)
      {
        v33 = type metadata accessor for AssetAttachment.AssetType;
      }

      sub_10004676C(v25, v33);
      if (a2)
      {
LABEL_42:

LABEL_43:
        sub_1000B3098(v66);
      }

      v41 = *(v7 + 16);
LABEL_20:
      if (v41 == v83)
      {
        goto LABEL_42;
      }

      v21 = v84;
LABEL_6:
      v26 = v86;
      ++v11;
      if (v30 == v85)
      {
        goto LABEL_41;
      }
    }

    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
    {

      sub_10004676C(v25, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      goto LABEL_6;
    }

    v34 = v82;
    sub_100046830(v7 + v31, v82, type metadata accessor for AssetAttachment.AssetType);
    v35 = swift_getEnumCaseMultiPayload();
    v36 = v35;
    if (v35 <= 1)
    {
      v38 = v34;
      v39 = v80;
      if (v36)
      {
        sub_10004676C(v82, type metadata accessor for AssetAttachment.AssetType);
        v46 = 1;
        v42 = v79;
LABEL_27:
        (*v77)(v42, v46, 1, v28);
        v47 = *(sub_100007BC0(&qword_1001223B0) + 48);
        if ((*v76)(v42, 1, v28) == 1)
        {

          sub_1000080B0(v42, &qword_100121580);
          v21 = v84;
          goto LABEL_37;
        }

        v71 = v47;
        (*v73)(v20, v42, v28);
        sub_1000D9D24();
        v48 = v68;
        sub_1000DAE74();
        v49 = v70;
        sub_1000DAE44();
        v50 = v69;
        if ((*v63)(v49, 1, v69) == 1)
        {

          v28 = v81;
          (*v62)(v20, v81);
          sub_1000080B0(v49, &qword_1001223A8);
          goto LABEL_36;
        }

        v51 = v61;
        (*v59)(v61, v49, v50);
        sub_1000DAEA4();
        v57 = sub_1000DAEE4();
        v52 = *v58;
        (*v58)(v48, v50);
        v53 = v51;
        v20 = v67;
        v52(v53, v50);
        v28 = v81;
        (*v62)(v20, v81);
        if ((v57 & 1) == 0)
        {

LABEL_36:
          v15 = v74;
          v21 = v84;
          v47 = v71;
LABEL_37:
          sub_10004676C(&v25[v47], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          a2 = v78;
          goto LABEL_6;
        }

        v15 = v74;
        v54 = v71;
        if (v78)
        {

          sub_10004676C(&v25[v54], type metadata accessor for AssetAttachment.AssetType.FilePathType);
          goto LABEL_43;
        }

        v41 = *(v7 + 16);
        sub_10004676C(&v25[v71], type metadata accessor for AssetAttachment.AssetType.FilePathType);
        a2 = v78;
        goto LABEL_20;
      }
    }

    else
    {
      v37 = v35 - 2;
      v38 = v34;
      v39 = v80;
      if (v37 >= 2)
      {
        v40 = v82;

        v38 = &v40[*(sub_100007BC0(&qword_1001223B0) + 48)];
      }
    }

    sub_1000467CC(v38, v39);
    sub_100046830(v39, v15, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10004676C(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v42 = v79;
      (*v73)(v79, v15, v28);
    }

    else
    {
      v43 = v64;
      sub_1000DA834();
      v44 = v79;
      sub_1000DA804();
      v28 = v81;

      v45 = v43;
      v15 = v74;
      (*v60)(v45, v65);
      v42 = v44;
      v20 = v67;
      sub_10004676C(v39, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v46 = 0;
    goto LABEL_27;
  }

LABEL_41:

  return (*(v72 + 56))(v66, 1, 1, v28);
}

id sub_1000A91E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutIconAsset();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for WorkoutIconAsset()
{
  result = qword_100125920;
  if (!qword_100125920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1000A92E8()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = &v117 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v131 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_100121580);
  __chkstk_darwin(v6 - 8);
  v132 = &v117 - v7;
  v8 = sub_1000DABF4();
  v127 = *(v8 - 8);
  v128 = v8;
  __chkstk_darwin(v8);
  v126 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007BC0(&qword_1001203B8);
  v11 = __chkstk_darwin(v10 - 8);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v130 = &v117 - v14;
  __chkstk_darwin(v13);
  v16 = &v117 - v15;
  v17 = sub_1000DAF04();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v117 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100007BC0(&qword_1001205D0);
  __chkstk_darwin(v21 - 8);
  v23 = &v117 - v22;
  v24 = sub_1000DAA64();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = v0;
  if (!*(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure16WorkoutIconAsset_metadata))
  {
    (*(v25 + 56))(v23, 1, 1, v24);
    goto LABEL_6;
  }

  sub_1000139C8(v23);

  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
LABEL_6:
    sub_1000080B0(v23, &qword_1001205D0);
    return 0;
  }

  v122 = v24;
  v123 = v3;
  v121 = v25;
  v28 = *(v25 + 32);
  v29 = v27;
  v28(v27, v23);
  sub_1000DAE84();
  v30 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v32 = [v30 initWithContentType:isa];

  (*(v18 + 8))(v20, v17);
  v33 = sub_1000DAA14();
  if (!v34)
  {
    v35 = v33;
    v36 = [objc_opt_self() mainBundle];
    v116._countAndFlagsBits = 0x80000001000E8770;
    v137._countAndFlagsBits = 0x74756F6B726F57;
    v137._object = 0xE700000000000000;
    v138.value._countAndFlagsBits = v35;
    v138.value._object = 0;
    v37.super.isa = v36;
    v139._countAndFlagsBits = 0;
    v139._object = 0xE000000000000000;
    sub_1000D9BC4(v137, v138, v37, v139, v116);
  }

  v38 = v132;
  v39 = v133;
  v40 = sub_1000DBF04();

  [v32 setDisplayName:v40];

  sub_1000DAA54();
  v41 = sub_1000DA084();
  v42 = *(v41 - 8);
  v124 = *(v42 + 48);
  v125 = v41;
  v119 = v42 + 48;
  v43 = 0;
  if (v124(v16, 1) != 1)
  {
    v43 = sub_1000D9FE4().super.isa;
    (*(v42 + 8))(v16, v125);
  }

  [v32 setTimestamp:v43];

  v44 = sub_1000DA9E4();
  v120 = v42;
  if ((v45 & 1) == 0)
  {
    v52 = v44;
    if (qword_10011FBC8 != -1)
    {
      swift_once();
    }

    sub_100007BC0(&qword_100121ED8);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1000DFEF0;
    *(v53 + 56) = &type metadata for Int;
    *(v53 + 64) = &protocol witness table for Int;
    *(v53 + 32) = v52;
    sub_1000DBF14();

    v54 = sub_1000DBF04();

    [v32 setDisplayName:v54];

    v46 = sub_1000AA11C(v29, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurntWithUnit.getter, &WorkoutIconAssetMetadata.totalGroupWorkoutCaloriesBurnt.getter);
    v118 = v55;
    v50 = sub_1000DA9D4();
    goto LABEL_16;
  }

  v46 = sub_1000AA11C(v29, &WorkoutIconAssetMetadata.calories.getter, &WorkoutIconAssetMetadata.caloriesBurnt.getter);
  v118 = v47;
  v48 = sub_1000DAA44();
  if (v49)
  {
    sub_1000AA620();
LABEL_16:
    v56 = *&v50;
    v57 = v51;
    goto LABEL_18;
  }

  v56 = *&v48;
  v57 = 0;
LABEL_18:
  v58 = sub_1000DAA34();
  if (v59)
  {
    v60 = v58;
    v61 = v59;
    v62 = HIBYTE(v59) & 0xF;
    if ((v59 & 0x2000000000000000) == 0)
    {
      v62 = v58 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v117 = v32;
      v63 = v29;
      v64 = v38;
      v65 = v46;
      v66 = sub_100047140(0, 1, 1, _swiftEmptyArrayStorage);
      v68 = *(v66 + 2);
      v67 = *(v66 + 3);
      if (v68 >= v67 >> 1)
      {
        v66 = sub_100047140((v67 > 1), v68 + 1, 1, v66);
      }

      *(v66 + 2) = v68 + 1;
      v69 = &v66[16 * v68];
      *(v69 + 4) = v60;
      *(v69 + 5) = v61;
      v39 = v133;
      v46 = v65;
      v38 = v64;
      v29 = v63;
      v32 = v117;
      if (v57)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }
  }

  v66 = _swiftEmptyArrayStorage;
  if (v57)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (v56 > 0.0)
  {
    v70 = v39;
    sub_1000DCE34();
    v71 = sub_1000DCE04();
    v73 = v72;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v129;
    v76 = v46;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = sub_100047140(0, *(v66 + 2) + 1, 1, v66);
    }

    v78 = *(v66 + 2);
    v77 = *(v66 + 3);
    if (v78 >= v77 >> 1)
    {
      v66 = sub_100047140((v77 > 1), v78 + 1, 1, v66);
    }

    *(v66 + 2) = v78 + 1;
    v79 = &v66[16 * v78];
    *(v79 + 4) = v71;
    *(v79 + 5) = v73;
    v46 = v76;
    v39 = v70;
    v38 = v132;
    v80 = v118;
    if (!v118)
    {
      goto LABEL_41;
    }

    goto LABEL_36;
  }

LABEL_35:
  v75 = v129;
  v80 = v118;
  if (v118)
  {
LABEL_36:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100047140(0, *(v66 + 2) + 1, 1, v66);
    }

    v82 = *(v66 + 2);
    v81 = *(v66 + 3);
    if (v82 >= v81 >> 1)
    {
      v66 = sub_100047140((v81 > 1), v82 + 1, 1, v66);
    }

    *(v66 + 2) = v82 + 1;
    v83 = &v66[16 * v82];
    *(v83 + 4) = v46;
    *(v83 + 5) = v80;
  }

LABEL_41:
  v84 = sub_1000DA9F4();
  if ((v85 & 1) == 0 || (v84 = sub_1000DAA04(), (v86 & 1) == 0))
  {
    v134 = v84;
    v87 = v126;
    sub_1000D9944();
    sub_100039180();
    sub_1000AABD8(&qword_100121878, &type metadata accessor for WorkoutHeartRateFormatStyle);
    v88 = v128;
    sub_1000DBD54();
    (*(v127 + 8))(v87, v88);
    v89 = v135;
    v90 = v136;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100047140(0, *(v66 + 2) + 1, 1, v66);
    }

    v92 = *(v66 + 2);
    v91 = *(v66 + 3);
    if (v92 >= v91 >> 1)
    {
      v66 = sub_100047140((v91 > 1), v92 + 1, 1, v66);
    }

    *(v66 + 2) = v92 + 1;
    v93 = &v66[16 * v92];
    *(v93 + 4) = v89;
    *(v93 + 5) = v90;
  }

  sub_1000A87A8(0, 1, v38);
  v94 = sub_1000D9DA4();
  v95 = *(v94 - 8);
  v97 = 0;
  if ((*(v95 + 48))(v38, 1, v94) != 1)
  {
    sub_1000D9D54(v96);
    v97 = v98;
    (*(v95 + 8))(v38, v94);
  }

  [v32 setThumbnailURL:v97];

  v135 = v66;
  sub_100007BC0(&qword_100121560);
  sub_1000391D4(&qword_100121870, &qword_100121560);
  sub_1000DBDE4();

  v99 = sub_1000DBF04();

  [v32 setContentDescription:v99];

  sub_1000DAA54();
  v100 = v125;
  if ((v124)(v39, 1, v125) == 1)
  {
    v101 = *(v75 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    v102 = v130;
    if (v101 && (v103 = [v101 entry]) != 0)
    {
      v104 = v103;
      sub_1000DA3A4();

      v105 = 0;
    }

    else
    {
      v105 = 1;
    }

    (*(v120 + 56))(v102, v105, 1, v100);
    if ((v124)(v39, 1, v100) != 1)
    {
      sub_1000080B0(v39, &qword_1001203B8);
    }
  }

  else
  {
    v106 = v120;
    v102 = v130;
    (*(v120 + 32))(v130, v39, v100);
    (*(v106 + 56))(v102, 0, 1, v100);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v107 = sub_1000DBF64();
  v109 = v108;
  sub_100007BC0(&qword_1001203C0);
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1000DFEF0;
  v111 = sub_1000478A0(v107, v109, v102);
  v113 = v112;

  *(v110 + 32) = v111;
  *(v110 + 40) = v113;
  v114 = sub_1000DC124().super.isa;

  [v32 setAlternateNames:v114];

  sub_1000080B0(v102, &qword_1001203B8);
  (*(v121 + 8))(v29, v122);
  return v32;
}

uint64_t sub_1000AA11C(uint64_t a1, uint64_t (*a2)(uint64_t), void (*a3)(uint64_t))
{
  v41 = a3;
  v42 = a2;
  v3 = sub_1000DA124();
  __chkstk_darwin(v3 - 8);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_100121828);
  __chkstk_darwin(v5 - 8);
  v39 = &v31 - v6;
  v7 = sub_100007BC0(&qword_100121830);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_100007BC0(&qword_100121838);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  v13 = sub_100007BC0(&qword_100121840);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v31 - v15;
  v17 = sub_100007BC0(&qword_100121848);
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v31 - v20;
  result = v42(v19);
  if (!v23)
  {
    v32 = v21;
    v33 = v16;
    v34 = v18;
    v35 = v14;
    v42 = v10;
    v24 = v39;
    v41(result);
    if (v25)
    {
      return 0;
    }

    else
    {
      v26 = [objc_opt_self() kilocalories];
      sub_1000AAC20();
      v27 = v32;
      sub_1000D9994();
      sub_1000D99A4();
      sub_1000D9CB4();
      sub_1000DA0F4();
      sub_100039180();
      sub_1000D9C84();
      v28 = sub_100007BC0(&qword_100121860);
      (*(*(v28 - 8) + 56))(v24, 0, 1, v28);
      v29 = v33;
      sub_1000D9964();
      sub_1000080B0(v24, &qword_100121828);
      (*(v37 + 8))(v9, v38);
      (*(v36 + 8))(v12, v42);
      sub_1000391D4(&qword_100121868, &qword_100121840);
      sub_1000D99B4();
      (*(v35 + 8))(v29, v13);
      v30 = sub_1000DBF94();

      (*(v34 + 8))(v27, v17);
      return v30;
    }
  }

  return result;
}

double sub_1000AA620()
{
  v0 = sub_1000DA204();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000D9B24();
  v29 = *(v3 - 8);
  v30 = v3;
  __chkstk_darwin(v3);
  v28 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100007BC0(&qword_1001203B8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v11 = sub_1000DA084();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v27 - v16;
  sub_1000DAA54();
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_1000DA074();
    if (v18(v10, 1, v11) != 1)
    {
      sub_1000080B0(v10, &qword_1001203B8);
    }
  }

  else
  {
    (*(v12 + 32))(v17, v10, v11);
  }

  sub_1000DAA24();
  if (v18(v8, 1, v11) == 1)
  {
    sub_1000DA074();
    if (v18(v8, 1, v11) != 1)
    {
      sub_1000080B0(v8, &qword_1001203B8);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v8, v11);
  }

  sub_1000DA1D4();
  sub_100007BC0(&qword_100121880);
  v19 = sub_1000DA1F4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1000DFEF0;
  (*(v20 + 104))(v22 + v21, enum case for Calendar.Component.second(_:), v19);
  sub_10003921C(v22);
  swift_setDeallocating();
  (*(v20 + 8))(v22 + v21, v19);
  swift_deallocClassInstance();
  v23 = v28;
  sub_1000DA164();

  (*(v31 + 8))(v2, v32);
  v24 = sub_1000D9B04();
  (*(v29 + 8))(v23, v30);
  v25 = *(v12 + 8);
  v25(v15, v11);
  v25(v17, v11);
  return v24;
}

uint64_t sub_1000AABD8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000AAC20()
{
  result = qword_100121850;
  if (!qword_100121850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100121850);
  }

  return result;
}

uint64_t sub_1000AAC6C()
{

  *(v0 + OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_livePhotoAttachments) = sub_1000AB5CC(v1);
}

uint64_t sub_1000AACBC()
{
}

id sub_1000AACFC()
{
  if ((v0[OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_pendingLivePhotoRequest + 4] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC20JournalWidgetsSecure14LivePhotoAsset_pendingLivePhotoRequest];
    [objc_opt_self() cancelLivePhotoRequestWithRequestID:*v1];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LivePhotoAsset();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LivePhotoAsset()
{
  result = qword_1001259A0;
  if (!qword_1001259A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AAEF4()
{

  return swift_deallocClassInstance();
}

id sub_1000AAF80()
{
  v1 = sub_1000DA124();
  __chkstk_darwin(v1 - 8);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000DBED4();
  __chkstk_darwin(v4 - 8);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100007BC0(&qword_1001203B8);
  v7 = __chkstk_darwin(v6 - 8);
  v52 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v48 - v9;
  v11 = sub_1000DAF04();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100007BC0(&qword_100120418);
  __chkstk_darwin(v15 - 8);
  v17 = &v48 - v16;
  v18 = sub_1000DAAA4();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v0;
  sub_1000166AC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1000080B0(v17, &qword_100120418);
    return 0;
  }

  v49 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_1000DAA94();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v48 = v3;
  sub_1000DAEF4();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_1000DAE64().super.isa;
  v28 = [v26 initWithContentType:isa];

  (*(v12 + 8))(v14, v11);
  sub_100046898(v24, v25, 0, 0);

  v29 = v52;
  sub_1000DAA84();
  v30 = v29;
  v31 = sub_1000DA084();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  if (v33(v30, 1, v31) == 1)
  {
    v34 = *(v50 + OBJC_IVAR____TtC20JournalWidgetsSecure5Asset_assetMO);
    if (v34)
    {
      v35 = [v34 entry];
      if (v35)
      {
        v36 = v35;
        v37 = v49;
        sub_1000DA3A4();

        v38 = 0;
      }

      else
      {
        v38 = 1;
        v37 = v49;
      }

      v30 = v52;
    }

    else
    {
      v38 = 1;
      v37 = v49;
    }

    (*(v32 + 56))(v37, v38, 1, v31);
    if (v33(v30, 1, v31) != 1)
    {
      sub_1000080B0(v30, &qword_1001203B8);
    }
  }

  else
  {
    v37 = v49;
    (*(v32 + 32))(v49, v30, v31);
    (*(v32 + 56))(v37, 0, 1, v31);
  }

  sub_1000DBE74();
  sub_1000DA114();
  v39 = sub_1000DBF64();
  v41 = v40;
  sub_100007BC0(&qword_1001203C0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000DFEF0;
  v43 = sub_1000478A0(v39, v41, v37);
  v45 = v44;

  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  v46 = sub_1000DC124().super.isa;

  [v28 setAlternateNames:v46];

  sub_1000080B0(v37, &qword_1001203B8);
  (*(v19 + 8))(v21, v18);
  return v28;
}

size_t sub_1000AB5CC(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = sub_1000DCB14();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_10001795C(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = sub_1000DCA24();
        sub_1000AB85C(v13 + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v8);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_10001795C(v14 > 1, v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v15 + 1;
        sub_1000AB8C0(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_1000AB85C(*(a1 + v16) + OBJC_IVAR____TtC20JournalWidgetsSecure15AssetAttachment_assetType, v6);
        v20 = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_10001795C(v17 > 1, v18 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v18 + 1;
        sub_1000AB8C0(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000AB85C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000AB938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100007BC0(&qword_100121EE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_100007BC0(&qword_100122F78);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for StreaksWidgetTimelineEntry();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000ABAA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100007BC0(&qword_100121EE8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_100007BC0(&qword_100122F78);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for StreaksWidgetTimelineEntry();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_1000ABC28()
{
  sub_1000ABCFC(319, &qword_100121F58, &type metadata accessor for RedactionReasons);
  if (v0 <= 0x3F)
  {
    sub_1000ABCFC(319, &qword_100122FF0, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      type metadata accessor for StreaksWidgetTimelineEntry();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000ABCFC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000DB124();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000ABD6C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = type metadata accessor for StreaksWidgetSystemSmallView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_1000DB544();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007BC0(&qword_100125BF0);
  __chkstk_darwin(v10);
  v12 = (&v24 - v11);
  *v12 = sub_1000DB994();
  v12[1] = v13;
  v14 = sub_100007BC0(&qword_100125BF8);
  sub_1000AC0CC(v2, v12 + *(v14 + 44));
  sub_1000DB534();
  sub_1000B0074(v2, &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  sub_1000B1A58(&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for StreaksWidgetSystemSmallView);
  sub_1000DB994();
  sub_1000391D4(&qword_100125C00, &qword_100125BF0);
  sub_1000B0384();
  v17 = v25;
  sub_1000DB7F4();
  (*(v7 + 8))(v9, v6);
  sub_1000080B0(v12, &qword_100125BF0);

  KeyPath = swift_getKeyPath();
  v19 = (v17 + *(sub_100007BC0(&qword_100125C10) + 36));
  v20 = *(sub_100007BC0(&qword_100125C18) + 28);
  v21 = enum case for ColorScheme.dark(_:);
  v22 = sub_1000DB114();
  result = (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = KeyPath;
  return result;
}

uint64_t sub_1000AC0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v37 = sub_100007BC0(&qword_100125C28);
  v3 = __chkstk_darwin(v37);
  v38 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v7 = sub_1000DB1F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  v14 = sub_100007BC0(&qword_100125C30);
  v15 = __chkstk_darwin(v14 - 8);
  v36 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = (&v36 - v18);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  v22 = a1;
  sub_100080BE4(v13);
  sub_1000DB1D4();
  sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  LOBYTE(a1) = sub_1000DC874();
  v23 = *(v8 + 8);
  v23(v11, v7);
  v23(v13, v7);
  if (a1)
  {
    v24 = 0;
  }

  else
  {
    v25 = v22 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24);
    v24 = *(v25 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 20)) != 2;
  }

  *v19 = sub_1000DB984();
  v19[1] = v26;
  v27 = sub_100007BC0(&qword_100125C38);
  sub_1000AD7A4(v24, v19 + *(v27 + 44));
  sub_10001865C(v19, v21, &qword_100125C30);
  *v6 = sub_1000DB3E4();
  *(v6 + 1) = 0;
  v6[16] = 0;
  v28 = sub_100007BC0(&qword_100125C40);
  sub_1000AC4F4(&v6[*(v28 + 44)]);
  v29 = sub_1000DB584();
  v30 = v36;
  v31 = &v6[*(v37 + 36)];
  *v31 = v29;
  *(v31 + 8) = xmmword_1000E65E0;
  *(v31 + 24) = xmmword_1000E65F0;
  v31[40] = 0;
  sub_100007F58(v21, v30, &qword_100125C30);
  v32 = v38;
  sub_100007F58(v6, v38, &qword_100125C28);
  v33 = v39;
  sub_100007F58(v30, v39, &qword_100125C30);
  v34 = sub_100007BC0(&qword_100125C48);
  sub_100007F58(v32, v33 + *(v34 + 48), &qword_100125C28);
  sub_1000080B0(v6, &qword_100125C28);
  sub_1000080B0(v21, &qword_100125C30);
  sub_1000080B0(v32, &qword_100125C28);
  return sub_1000080B0(v30, &qword_100125C30);
}

uint64_t sub_1000AC4F4@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = sub_100007BC0(&qword_100125C50);
  v2 = __chkstk_darwin(v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = sub_100007BC0(&qword_100125C58);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = sub_100007BC0(&qword_100125C60);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v23 - v17;
  sub_1000AC7F8(&v23 - v17);
  sub_1000ACBC0(v12);
  sub_1000ACEAC(v6);
  sub_100007F58(v18, v16, &qword_100125C60);
  sub_100007F58(v12, v10, &qword_100125C58);
  v19 = v4;
  sub_100007F58(v6, v4, &qword_100125C50);
  v20 = v24;
  sub_100007F58(v16, v24, &qword_100125C60);
  v21 = sub_100007BC0(&qword_100125C68);
  sub_100007F58(v10, v20 + *(v21 + 48), &qword_100125C58);
  sub_100007F58(v19, v20 + *(v21 + 64), &qword_100125C50);
  sub_1000080B0(v6, &qword_100125C50);
  sub_1000080B0(v12, &qword_100125C58);
  sub_1000080B0(v18, &qword_100125C60);
  sub_1000080B0(v19, &qword_100125C50);
  sub_1000080B0(v10, &qword_100125C58);
  return sub_1000080B0(v16, &qword_100125C60);
}

__n128 sub_1000AC7F8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000DB1F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v31 - v9;
  v11 = type metadata accessor for WidgetHeaderView();
  __chkstk_darwin(v11);
  v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100080BE4(v10);
  sub_1000DB1D4();
  sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  v14 = sub_1000DC874();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v15(v10, v4);
  if ((v14 & 1) != 0 || (v16 = v2 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24), *(v16 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 20)) == 2))
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
  }

  else
  {
    if (qword_10011FAB8 != -1)
    {
      swift_once();
    }

    v31[0] = xmmword_100127198;
    sub_100007C50();

    v17 = sub_1000DB714();
    v18 = v21;
    v20 = v22;
    v19 = v23 & 1;
  }

  *v13 = swift_getKeyPath();
  sub_100007BC0(&qword_100121FB8);
  swift_storeEnumTagMultiPayload();
  v24 = v11[5];
  *(v13 + v24) = swift_getKeyPath();
  sub_100007BC0(&qword_100121FC0);
  swift_storeEnumTagMultiPayload();
  v25 = v11[6];
  *(v13 + v25) = swift_getKeyPath();
  sub_100007BC0(&qword_100121FC8);
  swift_storeEnumTagMultiPayload();
  v26 = (v13 + v11[7]);
  *v26 = v17;
  v26[1] = v18;
  v26[2] = v19;
  v26[3] = v20;
  sub_1000DB9A4();
  sub_1000DB204();
  sub_1000B1A58(v13, a1, type metadata accessor for WidgetHeaderView);
  v27 = a1 + *(sub_100007BC0(&qword_100125C60) + 36);
  v28 = v31[5];
  *(v27 + 64) = v31[4];
  *(v27 + 80) = v28;
  *(v27 + 96) = v31[6];
  v29 = v31[1];
  *v27 = v31[0];
  *(v27 + 16) = v29;
  result = v31[3];
  *(v27 + 32) = v31[2];
  *(v27 + 48) = result;
  return result;
}

__n128 sub_1000ACBC0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100007BC0(&qword_100125C78);
  __chkstk_darwin(v4 - 8);
  v6 = v25 - v5;
  v7 = sub_1000DB1F4();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v25 - v12;
  sub_100080BE4(v25 - v12);
  sub_1000DB1D4();
  sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  v14 = sub_1000DC874();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    v16 = 0;
    LOBYTE(v17) = 2;
  }

  else
  {
    v18 = v2 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24);
    v19 = (v18 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 20));
    v17 = *v19;
    v16 = v19[1];
  }

  if (v17 == 2)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0xC024000000000000;
  }

  *v6 = sub_1000DB3E4();
  *(v6 + 1) = v20;
  v6[16] = 0;
  sub_100007BC0(&qword_100125C80);
  sub_1000AE140(v17, v16);
  if (v17 == 2)
  {
    sub_1000DB994();
  }

  else
  {
    sub_1000DB984();
  }

  sub_1000DB204();
  sub_10001865C(v6, a1, &qword_100125C78);
  v21 = a1 + *(sub_100007BC0(&qword_100125C58) + 36);
  v22 = v25[5];
  *(v21 + 64) = v25[4];
  *(v21 + 80) = v22;
  *(v21 + 96) = v25[6];
  v23 = v25[1];
  *v21 = v25[0];
  *(v21 + 16) = v23;
  result = v25[3];
  *(v21 + 32) = v25[2];
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_1000ACEAC@<X0>(uint64_t *a1@<X8>)
{
  v52 = a1;
  v2 = sub_1000D9DA4();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v45 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100007BC0(&qword_100121580);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = &v45 - v8;
  v47 = type metadata accessor for AppLaunchAction();
  __chkstk_darwin(v47);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_100007BC0(&qword_100125C70);
  __chkstk_darwin(v49);
  v12 = &v45 - v11;
  v13 = sub_1000DB1F4();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v45 - v18;
  v48 = sub_1000DB894();
  v20 = v1;
  sub_100080BE4(v19);
  sub_1000DB1D4();
  sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  v21 = sub_1000DC874();
  v22 = *(v14 + 8);
  v22(v17, v13);
  v22(v19, v13);
  if (v21 & 1) != 0 || (v24 = v20 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24), v25 = *(v24 + *(type metadata accessor for StreaksWidgetTimelineEntry() + 20)), v25 == 2) || (v25)
  {
    if (qword_10011FB58 != -1)
    {
      swift_once();
    }

    v23 = &xmmword_100125B08;
  }

  else
  {
    if (qword_10011FB60 != -1)
    {
      swift_once();
    }

    v23 = &xmmword_100125B30;
  }

  v27 = v51;
  v26 = v52;
  v28 = v50;
  v29 = v46;
  v30 = *v23;
  v31 = *(v23 + 1);
  v32 = *(v23 + 2);
  v33 = *(v23 + 3);
  v34 = *(v23 + 4);

  v35 = sub_100007BC0(&qword_100125178);
  v36 = *(v35 + 48);
  v37 = *(v35 + 64);
  v38 = type metadata accessor for CanvasContentInputType();
  *v10 = 0;
  *(v10 + 1) = 0;
  (*(*(v38 - 8) + 56))(&v10[v36], 1, 1, v38);
  v39 = sub_1000DBC14();
  (*(*(v39 - 8) + 56))(&v10[v37], 1, 1, v39);
  swift_storeEnumTagMultiPayload();
  sub_10009BEC0(v29);
  sub_1000B1120(v10);
  sub_10001865C(v29, v7, &qword_100121580);
  if ((*(v28 + 48))(v7, 1, v27) == 1)
  {
    sub_1000080B0(v7, &qword_100121580);
    *v12 = nullsub_1;
    *(v12 + 1) = 0;
  }

  else
  {
    v40 = *(v28 + 32);
    v41 = v45;
    v40(v45, v7, v27);
    v40(v12, v41, v27);
  }

  swift_storeEnumTagMultiPayload();
  v42 = sub_100007BC0(&qword_100125C50);
  v43 = (v26 + v42[10]);
  *v43 = v30;
  v43[1] = v31;
  v43[2] = v32;
  v43[3] = v33;
  v43[4] = v34;
  *v26 = swift_getKeyPath();
  sub_100007BC0(&qword_100121FC0);
  swift_storeEnumTagMultiPayload();
  *(v26 + v42[9]) = v48;
  return sub_10001865C(v12, v26 + v42[11], &qword_100125C70);
}

double sub_1000AD4A0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000DB1F4();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_100080BE4(&v20 - v9);
  sub_1000DB1D4();
  sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  v11 = sub_1000DC874();
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  if ((v11 & 1) == 0 && ((v13 = v2 + *(type metadata accessor for StreaksWidgetSystemSmallView(0) + 24), v14 = type metadata accessor for StreaksWidgetTimelineEntry(), *(v13 + *(v14 + 20)) != 2) ? (v15 = (*(v13 + *(v14 + 20)) & 1) == 0) : (v15 = 0), v15))
  {
    if (qword_10011FB48 != -1)
    {
      swift_once();
    }

    v16 = &xmmword_100125AB8;
  }

  else
  {
    if (qword_10011FB40 != -1)
    {
      swift_once();
    }

    v16 = &xmmword_100125A90;
  }

  v20 = *(v16 + 8);
  v17 = *(v16 + 3);
  v18 = *(v16 + 4);

  result = *&v20;
  *(a1 + 8) = v20;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
  return result;
}

uint64_t sub_1000AD6DC(uint64_t a1)
{
  v2 = sub_1000DB114();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000DB2A4();
}

uint64_t sub_1000AD7A4@<X0>(int a1@<W1>, char *a2@<X8>)
{
  v94 = a1;
  v102 = a2;
  v100 = sub_100007BC0(&qword_100125DE0);
  v2 = __chkstk_darwin(v100);
  v103 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v101 = (&v88 - v4);
  v96 = sub_1000DB274();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000DB8A4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000DAE24();
  __chkstk_darwin(v10 - 8);
  v11 = sub_100007BC0(&qword_100125DE8);
  v12 = v11 - 8;
  __chkstk_darwin(v11);
  v14 = &v88 - v13;
  v91 = sub_100007BC0(&qword_100125DF0) - 8;
  __chkstk_darwin(v91);
  v89 = &v88 - v15;
  v90 = sub_100007BC0(&qword_100125DF8) - 8;
  __chkstk_darwin(v90);
  v17 = &v88 - v16;
  v92 = sub_100007BC0(&qword_100125E00);
  __chkstk_darwin(v92);
  v88 = &v88 - v18;
  v19 = sub_100007BC0(&qword_100125E08);
  v98 = *(v19 - 8);
  v99 = v19;
  v20 = __chkstk_darwin(v19);
  v97 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v104 = &v88 - v22;
  type metadata accessor for StreaksWidgetSystemSmallView(0);
  type metadata accessor for StreaksWidgetTimelineEntry();
  sub_1000DAE14();
  sub_1000DB8F4();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  v23 = sub_1000DB8D4();

  (*(v7 + 8))(v9, v6);
  sub_1000DBA04();
  v25 = v24;
  v27 = v26;
  v105 = 1;
  sub_100080E34(&v14[*(v12 + 44)]);
  *v14 = v23;
  *(v14 + 1) = 0;
  *(v14 + 8) = 257;
  *(v14 + 24) = vdupq_n_s64(0x3FF3333333333333uLL);
  *(v14 + 5) = v25;
  *(v14 + 6) = v27;
  sub_100007BC0(&qword_100125E10);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1000E2830;
  sub_1000DB854();
  *(v28 + 32) = sub_1000DB934();
  *(v28 + 40) = v29;
  sub_1000DB854();
  *(v28 + 48) = sub_1000DB934();
  *(v28 + 56) = v30;
  sub_1000DB844();
  *(v28 + 64) = sub_1000DB934();
  *(v28 + 72) = v31;
  sub_1000DB9E4();
  sub_1000DB9F4();
  sub_1000DB944();
  sub_1000DB1A4();
  v32 = v106;
  v33 = v89;
  sub_10001865C(v14, v89, &qword_100125DE8);
  v34 = v33 + *(v91 + 44);
  *v34 = v32;
  v35 = v107;
  *(v34 + 24) = v108;
  *(v34 + 8) = v35;
  v36 = v94;
  if (v94)
  {
    v37 = 1.0;
  }

  else
  {
    v37 = 0.0;
  }

  sub_10001865C(v33, v17, &qword_100125DF0);
  *&v17[*(v90 + 44)] = v37;
  v38 = v93;
  if (v36)
  {
    sub_1000DB254();
  }

  else
  {
    sub_1000DB264();
  }

  KeyPath = swift_getKeyPath();
  v40 = v88;
  v41 = &v88[*(v92 + 36)];
  v42 = sub_100007BC0(&qword_100122020);
  (*(v95 + 32))(v41 + *(v42 + 28), v38, v96);
  *v41 = KeyPath;
  sub_10001865C(v17, v40, &qword_100125DF8);
  sub_1000B1AC0();
  v43 = v104;
  sub_1000DB724();
  sub_1000080B0(v40, &qword_100125E00);
  v44 = v101;
  sub_1000ACEAC(v101);
  v45 = sub_1000DB994();
  v47 = v46;
  v48 = (v44 + *(sub_100007BC0(&qword_100125E60) + 36));
  *v48 = v45;
  v48[1] = v47;
  LOBYTE(v45) = sub_1000DB5B4();
  sub_1000DB0B4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v44 + *(sub_100007BC0(&qword_100125E68) + 36);
  *v57 = v45;
  *(v57 + 1) = v50;
  *(v57 + 2) = v52;
  *(v57 + 3) = v54;
  *(v57 + 4) = v56;
  v57[40] = 0;
  LOBYTE(v45) = sub_1000DB5C4();
  sub_1000DB0B4();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  v66 = v44 + *(sub_100007BC0(&qword_100125E70) + 36);
  *v66 = v45;
  *(v66 + 1) = v59;
  *(v66 + 2) = v61;
  *(v66 + 3) = v63;
  *(v66 + 4) = v65;
  v66[40] = 0;
  LOBYTE(v45) = sub_1000DB5A4();
  sub_1000DB0B4();
  v68 = v67;
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v75 = v44 + *(sub_100007BC0(&qword_100125E78) + 36);
  *v75 = v45;
  *(v75 + 1) = v68;
  *(v75 + 2) = v70;
  *(v75 + 3) = v72;
  *(v75 + 4) = v74;
  v75[40] = 0;
  v76 = *(v100 + 36);
  v77 = enum case for BlendMode.destinationOut(_:);
  v78 = sub_1000DB9B4();
  (*(*(v78 - 8) + 104))(v44 + v76, v77, v78);
  v80 = v97;
  v79 = v98;
  v81 = *(v98 + 16);
  v82 = v99;
  v81(v97, v43, v99);
  v83 = v103;
  sub_100007F58(v44, v103, &qword_100125DE0);
  v84 = v102;
  v81(v102, v80, v82);
  v85 = sub_100007BC0(&qword_100125E80);
  sub_100007F58(v83, &v84[*(v85 + 48)], &qword_100125DE0);
  sub_1000080B0(v44, &qword_100125DE0);
  v86 = *(v79 + 8);
  v86(v104, v82);
  sub_1000080B0(v83, &qword_100125DE0);
  return (v86)(v80, v82);
}

uint64_t sub_1000AE140(char a1, uint64_t a2)
{
  v4 = sub_100007BC0(&qword_100125C88);
  __chkstk_darwin(v4);
  v6 = &v14 - v5;
  v7 = sub_100007BC0(&qword_100125C90);
  __chkstk_darwin(v7);
  v9 = &v14 - v8;
  v10 = sub_100007BC0(&qword_100125C98);
  __chkstk_darwin(v10);
  v12 = &v14 - v11;
  if (a1 == 2)
  {
    sub_1000AF48C(v12);
    sub_100007F58(v12, v9, &qword_100125C98);
    swift_storeEnumTagMultiPayload();
    sub_1000391D4(&qword_100125CA0, &qword_100125C88);
    sub_1000391D4(&qword_100125CA8, &qword_100125C98);
    sub_1000DB464();
    return sub_1000080B0(v12, &qword_100125C98);
  }

  else
  {
    sub_1000AE414(a1 & 1, a2, v6);
    sub_100007F58(v6, v9, &qword_100125C88);
    swift_storeEnumTagMultiPayload();
    sub_1000391D4(&qword_100125CA0, &qword_100125C88);
    sub_1000391D4(&qword_100125CA8, &qword_100125C98);
    sub_1000DB464();
    return sub_1000080B0(v6, &qword_100125C88);
  }
}

uint64_t sub_1000AE414@<X0>(int a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v122 = a1;
  v129 = a3;
  v128 = sub_100007BC0(&qword_100124230);
  __chkstk_darwin(v128);
  v153 = &v121[-v5];
  v6 = sub_1000DA124();
  __chkstk_darwin(v6 - 8);
  v135 = &v121[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v137 = sub_100007BC0(&qword_1001236C8);
  __chkstk_darwin(v137);
  v136 = &v121[-v8];
  v150 = sub_100007BC0(&qword_100125CB0);
  __chkstk_darwin(v150);
  v149 = &v121[-v9];
  v151 = sub_100007BC0(&qword_100125CB8);
  __chkstk_darwin(v151);
  v152 = &v121[-v10];
  v11 = sub_100007BC0(&qword_100125CC0);
  v126 = *(v11 - 8);
  v127 = v11;
  v12 = __chkstk_darwin(v11);
  v157 = &v121[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v156 = &v121[-v14];
  v160 = sub_1000DB1B4();
  v145 = *(v160 - 8);
  __chkstk_darwin(v160);
  v144 = &v121[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v159 = sub_1000DB654();
  v162 = *(v159 - 8);
  __chkstk_darwin(v159);
  v158 = &v121[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_100007BC0(&qword_1001231C0);
  __chkstk_darwin(v17 - 8);
  v19 = &v121[-v18];
  v20 = sub_1000DB1F4();
  v21 = *(v20 - 8);
  v22 = __chkstk_darwin(v20);
  v154 = &v121[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v26 = &v121[-v25];
  __chkstk_darwin(v24);
  v28 = &v121[-v27];
  v140 = sub_100007BC0(&qword_100125CC8);
  __chkstk_darwin(v140);
  v30 = &v121[-v29];
  v31 = sub_100007BC0(&qword_100125CD0);
  v141 = *(v31 - 8);
  v142 = v31;
  __chkstk_darwin(v31);
  v139 = &v121[-v32];
  v33 = sub_100007BC0(&qword_100125CD8);
  v124 = *(v33 - 8);
  v125 = v33;
  v34 = __chkstk_darwin(v33);
  v123 = &v121[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v161 = &v121[-v36];
  v148 = v3;
  sub_100080BE4(v28);
  sub_1000DB1D4();
  v138 = sub_1000B16BC(&qword_100121C40, &type metadata accessor for RedactionReasons);
  v37 = sub_1000DC874();
  v38 = *(v21 + 8);
  v38(v26, v20);
  v155 = a2;
  v146 = v21 + 8;
  v147 = v20;
  v143 = v38;
  if (v37)
  {
    v134 = 0x80000001000E8920;
    v38(v28, v20);
    v39 = 0;
    v132 = 0xD00000000000007CLL;
    v133 = _swiftEmptyArrayStorage;
  }

  else
  {
    *&v173[0] = a2;
    sub_1000DA0F4();
    sub_100060228();
    sub_1000D9BD4();
    sub_1000391D4(&qword_100123760, &qword_1001236C8);
    v132 = sub_1000DB704();
    v133 = v40;
    v134 = v41;
    v39 = v42;
    v38(v28, v20);
  }

  sub_1000DB624();
  v43 = sub_1000DB604();
  (*(*(v43 - 8) + 56))(v19, 1, 1, v43);
  sub_1000DB634();
  sub_1000080B0(v19, &qword_1001231C0);
  v44 = v162;
  v45 = *(v162 + 104);
  v47 = v158;
  v46 = v159;
  LODWORD(v137) = enum case for Font.Leading.tight(_:);
  v136 = v45;
  v45(v158);
  v48 = sub_1000DB674();

  v49 = *(v44 + 8);
  v162 = v44 + 8;
  v135 = v49;
  (v49)(v47, v46);
  KeyPath = swift_getKeyPath();
  v51 = swift_getKeyPath();
  v52 = v39 & 1;
  v175 = v39 & 1;
  if (qword_10011FB50 != -1)
  {
    swift_once();
  }

  v53 = xmmword_100125AE0;
  v130 = *&algn_100125AF0[8];
  v131 = *(&xmmword_100125AE0 + 8);
  v54 = swift_getKeyPath();
  v176 = 0;
  *&v164 = v132;
  *(&v164 + 1) = v134;
  LOBYTE(v165) = v52;
  *(&v165 + 1) = v133;
  *&v166 = v155;
  *(&v166 + 1) = KeyPath;
  *&v167 = v48;
  *(&v167 + 1) = v51;
  *&v168 = 0x3FB999999999999ALL;
  *(&v168 + 1) = v53;
  v170 = v130;
  v169 = v131;
  *&v171 = v54;
  *(&v171 + 1) = 1;
  v172 = 0;

  sub_100007BC0(&qword_100125CE0);
  sub_1000B119C();
  sub_1000DB834();
  v173[6] = v170;
  v173[7] = v171;
  v174 = v172;
  v173[2] = v166;
  v173[3] = v167;
  v173[4] = v168;
  v173[5] = v169;
  v173[0] = v164;
  v173[1] = v165;
  sub_1000080B0(v173, &qword_100125CE0);
  *&v30[*(sub_100007BC0(&qword_100125D40) + 36)] = xmmword_1000E6600;
  sub_1000DB844();
  v55 = sub_1000DB874();

  v56 = &v30[*(sub_100007BC0(&qword_100125D48) + 36)];
  *v56 = v55;
  *(v56 + 8) = xmmword_1000E6610;
  *(v56 + 3) = 0x4000000000000000;
  v57 = v140;
  v58 = &v30[*(v140 + 36)];
  v132 = sub_100007BC0(&qword_100122020);
  sub_1000DB244();
  *v58 = swift_getKeyPath();
  v59 = sub_1000B14B0();
  v60 = v139;
  sub_1000DB7A4();
  sub_1000080B0(v30, &qword_100125CC8);
  v62 = v144;
  v61 = v145;
  v63 = v160;
  v133 = *(v145 + 104);
  v134 = v145 + 104;
  (v133)(v144, enum case for DynamicTypeSize.large(_:), v160);
  *&v164 = v57;
  *(&v164 + 1) = v59;
  swift_getOpaqueTypeConformance2();
  v64 = v142;
  sub_1000DB7D4();
  (*(v61 + 8))(v62, v63);
  (*(v141 + 8))(v60, v64);
  v65 = v154;
  sub_100080BE4(v154);
  sub_1000DB1D4();
  v66 = v147;
  LOBYTE(v58) = sub_1000DC874();
  v67 = v143;
  v143(v26, v66);
  if (v58)
  {
    v68 = 0x80000001000E8920;
    v67(v65, v66);
    v69 = 0;
    v70 = 0xD00000000000007CLL;
  }

  else
  {
    if (v122)
    {
      v71 = sub_100072314();
    }

    else
    {
      v71 = sub_100072164();
    }

    *&v164 = v71;
    *(&v164 + 1) = v72;
    sub_100007C50();
    v70 = sub_1000DB714();
    v68 = v73;
    v69 = v74;
    v67(v154, v66);
  }

  sub_1000DB5D4();
  v76 = v158;
  v75 = v159;
  (v136)(v158, v137, v159);
  sub_1000DB674();

  (v135)(v76, v75);
  v77 = sub_1000DB6F4();
  v79 = v78;
  v81 = v80;

  sub_10004369C(v70, v68, v69 & 1);

  v82 = sub_1000DB6E4();
  v162 = v83;
  v85 = v84;
  v87 = v86;
  sub_10004369C(v77, v79, v81 & 1);

  v88 = swift_getKeyPath();
  v89 = sub_1000DB864();
  LOBYTE(v164) = v85 & 1;
  v163 = 0;
  sub_1000DB844();
  v90 = sub_1000DB874();

  v91 = v164;
  v92 = v163;
  v93 = v149;
  v94 = &v149[*(v150 + 36)];
  sub_1000DB234();
  *v94 = swift_getKeyPath();
  v95 = v162;
  *v93 = v82;
  *(v93 + 8) = v95;
  *(v93 + 16) = v91;
  *(v93 + 24) = v87;
  *(v93 + 32) = v88;
  *(v93 + 40) = 1;
  *(v93 + 48) = v92;
  *(v93 + 56) = v89;
  *(v93 + 64) = v90;
  *(v93 + 72) = xmmword_1000E6620;
  *(v93 + 88) = 0x3FF0000000000000;
  LOBYTE(v82) = sub_1000DB5A4();
  sub_1000DB0B4();
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  v104 = v152;
  sub_10001865C(v93, v152, &qword_100125CB0);
  v105 = &v104[*(v151 + 36)];
  *v105 = v82;
  *(v105 + 1) = v97;
  *(v105 + 2) = v99;
  *(v105 + 3) = v101;
  *(v105 + 4) = v103;
  v105[40] = 0;
  v106 = v153;
  (v133)(v153, enum case for DynamicTypeSize.xxLarge(_:), v160);
  sub_1000B16BC(&qword_1001242B0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000DBE64();
  if (result)
  {
    sub_1000B1704();
    sub_1000391D4(&qword_1001242B8, &qword_100124230);
    v108 = v156;
    sub_1000DB7E4();
    sub_1000080B0(v106, &qword_100124230);
    sub_1000080B0(v104, &qword_100125CB8);
    v110 = v123;
    v109 = v124;
    v111 = *(v124 + 16);
    v112 = v125;
    v111(v123, v161, v125);
    v113 = v126;
    v162 = *(v126 + 16);
    v114 = v108;
    v115 = v127;
    (v162)(v157, v114, v127);
    v116 = v129;
    v111(v129, v110, v112);
    v117 = &v116[*(sub_100007BC0(&qword_100125DA8) + 48)];
    v118 = v157;
    (v162)(v117, v157, v115);
    v119 = *(v113 + 8);
    v119(v156, v115);
    v120 = *(v109 + 8);
    v120(v161, v112);
    v119(v118, v115);
    return (v120)(v110, v112);
  }

  else
  {
    __break(1u);
  }

  return result;
}