uint64_t sub_100001F68@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_1000026A4(&qword_10003C960, &qword_10002D3E8);
  v1 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = &v33 - v2;
  v40 = sub_1000026A4(&qword_10003C968, &qword_10002D3F0);
  v4 = sub_1000028EC(v40);
  v6 = v5;
  v35 = v5;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v4);
  v39 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v33 - v11;
  v13 = sub_1000026A4(&qword_10003C970, &qword_10002D3F8);
  v14 = sub_1000028EC(v13);
  v16 = v15;
  v38 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v14);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  KeyPath = swift_getKeyPath();
  v44 = 0;
  sub_100002794();
  v37 = v23;
  sub_100029B8C();
  sub_1000027E8();
  v34 = v12;
  sub_100029B8C();
  v33 = *(v16 + 16);
  v36 = v21;
  v24 = v13;
  v33(v21, v23, v13);
  v25 = *(v6 + 16);
  v26 = v39;
  v27 = v12;
  v28 = v40;
  v25(v39, v27, v40);
  *v3 = 0xD000000000000011;
  *(v3 + 1) = 0x800000010002AC70;
  v29 = v41;
  v33(&v3[*(v41 + 48)], v21, v24);
  v25(&v3[*(v29 + 64)], v26, v28);

  sub_10002999C();
  v30 = *(v35 + 8);
  v30(v34, v28);
  v31 = *(v38 + 8);
  v31(v37, v24);
  v30(v26, v28);
  v31(v36, v24);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100002300();
  sub_1000299DC();
  return 0;
}

unint64_t sub_100002300()
{
  result = qword_10003C948;
  if (!qword_10003C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C948);
  }

  return result;
}

uint64_t variable initialization expression of OpenAppIntent._app()
{
  v0 = sub_1000295AC();
  v1 = sub_1000028EC(v0);
  v41 = v2;
  v42 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v40 = v6 - v5;
  v7 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  v8 = sub_100002910(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v40 - v11;
  v13 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v14 = sub_100002910(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  v19 = sub_10002978C();
  v20 = sub_1000028EC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100002900();
  v27 = v26 - v25;
  v28 = sub_10002988C();
  v29 = sub_100002910(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100002900();
  v32 = sub_10002A0CC();
  v33 = sub_100002910(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100002900();
  v36 = sub_1000297AC();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_100002900();
  sub_1000026A4(&qword_10003C958, &unk_10002D360);
  sub_10002A05C();
  sub_10002987C();
  (*(v22 + 104))(v27, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
  sub_1000297BC();
  sub_1000026EC(v18, 1, 1, v36);
  v38 = sub_10002931C();
  sub_1000026EC(v12, 1, 1, v38);
  (*(v41 + 104))(v40, enum case for InputConnectionBehavior.default(_:), v42);
  return sub_1000293FC();
}

uint64_t sub_1000026A4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002740@<X0>(void *a1@<X8>)
{
  result = sub_100029A2C();
  *a1 = v3;
  return result;
}

unint64_t sub_100002794()
{
  result = qword_10003C978;
  if (!qword_10003C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C978);
  }

  return result;
}

unint64_t sub_1000027E8()
{
  result = qword_10003C980;
  if (!qword_10003C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C980);
  }

  return result;
}

unint64_t sub_100002840()
{
  result = qword_10003C988;
  if (!qword_10003C988)
  {
    sub_1000028A4(&qword_10003C990, &unk_10002D430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003C988);
  }

  return result;
}

uint64_t sub_1000028A4(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003C998, &unk_10002D440);

  return sub_100002984(a1, a2, v4);
}

uint64_t sub_1000029C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003C998, &unk_10002D440);

  return sub_1000026EC(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ComplicationPaddingModifier()
{
  result = qword_10003C9F8;
  if (!qword_10003C9F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002A64()
{
  sub_100002AD0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100002AD0()
{
  if (!qword_10003CA08)
  {
    sub_100029F4C();
    v0 = sub_10002998C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CA08);
    }
  }
}

uint64_t sub_100002B44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100029AFC();
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C(v12);
  v14 = *(v13 + 64);
  sub_100003534();
  __chkstk_darwin(v15);
  v17 = (&v23 - v16);
  sub_1000033E4(v2, &v23 - v16, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_100029F4C();
    sub_10000350C(v18);
    return (*(v19 + 32))(a1, v17);
  }

  else
  {
    v21 = *v17;
    sub_10002A1FC();
    v22 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v7 + 8))(v11, v4);
  }
}

uint64_t sub_100002D24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v49 = a2;
  v47 = sub_1000026A4(&qword_10003CA38, &qword_10002D4C0);
  sub_10000350C(v47);
  v3 = *(v2 + 64);
  sub_100003534();
  __chkstk_darwin(v4);
  v6 = v45 - v5;
  v48 = sub_1000026A4(&qword_10003CA40, &qword_10002D4C8);
  sub_10000350C(v48);
  v8 = *(v7 + 64);
  sub_100003534();
  __chkstk_darwin(v9);
  v11 = v45 - v10;
  v12 = sub_1000026A4(&qword_10003CA48, &qword_10002D4D0);
  sub_10000350C(v12);
  v14 = *(v13 + 64);
  sub_100003534();
  __chkstk_darwin(v15);
  v17 = v45 - v16;
  v18 = sub_1000026A4(&qword_10003CA50, &qword_10002D4D8);
  sub_10000350C(v18);
  v20 = *(v19 + 64);
  sub_100003534();
  __chkstk_darwin(v21);
  v23 = v45 - v22;
  v24 = sub_100029F4C();
  v25 = sub_1000028EC(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  v31 = v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B44(v31);
  v32 = (*(v27 + 88))(v31, v24);
  if (v32 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    sub_100029C4C();
    sub_10002996C();
    sub_100003540();
    v33 = sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
    sub_10000350C(v33);
    (*(v34 + 16))(v6, v46, v33);
    sub_10000351C(*(v47 + 36));
    sub_1000033E4(v6, v17, &qword_10003CA38, &qword_10002D4C0);
    swift_storeEnumTagMultiPayload();
    sub_10000329C();
    sub_100003300();
    sub_100029B6C();
    sub_1000033E4(v23, v11, &qword_10003CA50, &qword_10002D4D8);
    swift_storeEnumTagMultiPayload();
    sub_10000326C();
    sub_100029B6C();
    sub_10000338C(v23, &qword_10003CA50, &qword_10002D4D8);
    v35 = v6;
    v36 = &qword_10003CA38;
    v37 = &qword_10002D4C0;
  }

  else
  {
    v45[0] = v18;
    v45[1] = v11;
    v38 = v47;
    if (v32 != enum case for WidgetFamily.accessoryRectangular(_:) && v32 != enum case for WidgetFamily.accessoryInline(_:))
    {
      sub_100029C4C();
      sub_10002996C();
      sub_100003540();
      v42 = sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
      sub_10000350C(v42);
      (*(v43 + 16))(v6, v46);
      sub_10000351C(*(v38 + 36));
      sub_100003568(v6);
      swift_storeEnumTagMultiPayload();
      sub_10000326C();
      sub_100003300();
      sub_100003554();
      sub_100029B6C();
      sub_10000338C(v6, &qword_10003CA38, &qword_10002D4C0);
      return (*(v27 + 8))(v31, v24);
    }

    v40 = sub_1000026A4(&qword_10003CA58, &unk_10002D4E0);
    sub_10000350C(v40);
    (*(v41 + 16))(v17, v46, v40);
    swift_storeEnumTagMultiPayload();
    sub_10000329C();
    sub_100003300();
    sub_100029B6C();
    sub_100003568(v23);
    swift_storeEnumTagMultiPayload();
    sub_10000326C();
    sub_100003554();
    sub_100029B6C();
    v35 = v23;
    v36 = &qword_10003CA50;
    v37 = &qword_10002D4D8;
  }

  return sub_10000338C(v35, v36, v37);
}

unint64_t sub_10000329C()
{
  result = qword_10003CA68;
  if (!qword_10003CA68)
  {
    sub_1000028A4(&qword_10003CA58, &unk_10002D4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA68);
  }

  return result;
}

unint64_t sub_100003300()
{
  result = qword_10003CA70;
  if (!qword_10003CA70)
  {
    sub_1000028A4(&qword_10003CA38, &qword_10002D4C0);
    sub_10000329C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CA70);
  }

  return result;
}

uint64_t sub_10000338C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000026A4(a2, a3);
  sub_10000350C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000033E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000026A4(a3, a4);
  sub_10000350C(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100003488(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000028A4(a2, a3);
    a4();
    sub_100003300();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10000351C(uint64_t a1@<X8>)
{
  v7 = v1 + a1;
  *v7 = v2;
  *(v7 + 8) = v3;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
}

uint64_t sub_100003554()
{
  v2 = *(v1 - 120);
  result = v0;
  v4 = *(v1 - 160);
  return result;
}

uint64_t sub_100003568(uint64_t a1)
{
  v5 = *(v3 - 152);

  return sub_1000033E4(a1, v5, v1, v2);
}

uint64_t sub_100003588@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v77 = sub_10002978C();
  v1 = sub_1000028EC(v77);
  v80 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v70 = v6 - v5;
  v7 = sub_10002988C();
  v8 = sub_100002910(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002900();
  v11 = sub_10002A0CC();
  v12 = sub_100002910(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_100002900();
  v79 = sub_1000297AC();
  v15 = sub_1000028EC(v79);
  v69 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100002900();
  v64 = v20 - v19;
  v66 = sub_1000026A4(&qword_10003CAE8, &qword_10002D7F0);
  sub_1000028EC(v66);
  v68 = v21;
  v23 = *(v22 + 64);
  sub_100003534();
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  v27 = sub_1000026A4(&qword_10003CAF0, &qword_10002D7F8);
  v71 = sub_1000028EC(v27);
  v72 = v28;
  v30 = *(v29 + 64);
  sub_100003534();
  __chkstk_darwin(v31);
  v63 = &v61 - v32;
  v33 = sub_1000026A4(&qword_10003CAF8, &qword_10002D800);
  v73 = sub_1000028EC(v33);
  v74 = v34;
  v36 = *(v35 + 64);
  sub_100003534();
  __chkstk_darwin(v37);
  v65 = &v61 - v38;
  v39 = sub_1000026A4(&qword_10003CB00, &qword_10002D808);
  v75 = sub_1000028EC(v39);
  v76 = v40;
  v42 = *(v41 + 64);
  sub_100003534();
  __chkstk_darwin(v43);
  v67 = &v61 - v44;

  sub_1000026A4(&qword_10003CB08, &qword_10002D810);
  sub_100005DE0();
  sub_100005EEC(&qword_10003CB18, &qword_10003CB08, &qword_10002D810);
  sub_100029FFC();
  sub_100006184();
  sub_10002A05C();
  sub_10002987C();
  v62 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v45 = *(v80 + 104);
  v80 += 104;
  v61 = v45;
  v46 = v70;
  v47 = v77;
  v45(v70);
  sub_10000608C();
  v48 = v64;
  sub_100006148();
  sub_10000612C();
  sub_1000060E8();
  v50 = sub_100005EEC(v49, &qword_10003CAE8, &qword_10002D7F0);
  v51 = v66;
  sub_100029BFC();
  v69 = *(v69 + 8);
  (v69)(v48, v79);
  (*(v68 + 8))(v26, v51);
  sub_10002A05C();
  sub_10002987C();
  v61(v46, v62, v47);
  sub_10000608C();
  sub_100006148();
  sub_10000612C();
  v81 = v51;
  v82 = v50;
  sub_1000060D0();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v53 = v65;
  v54 = v71;
  v55 = v63;
  sub_100029BEC();
  (v69)(v48, v79);
  (*(v72 + 8))(v55, v54);
  v81 = v54;
  v82 = OpaqueTypeConformance2;
  sub_1000060B8();
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v67;
  v58 = v73;
  sub_100029BCC();
  (*(v74 + 8))(v53, v58);
  v81 = v58;
  v82 = v56;
  sub_1000060A0();
  swift_getOpaqueTypeConformance2();
  v59 = v75;
  sub_100029C0C();
  return (*(v76 + 8))(v57, v59);
}

uint64_t sub_100003BE4(uint64_t *a1)
{
  v2 = *a1;
  swift_retain_n();
  sub_1000026A4(&qword_10003CB28, &qword_10002D818);
  sub_100005E3C();
  sub_100005A28();
  return sub_100029EAC();
}

uint64_t sub_100003C84@<X0>(uint64_t a1@<X8>)
{
  v35[0] = a1;
  v1 = sub_1000026A4(&qword_10003CB48, qword_10002D828);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = v35 - v3;
  v5 = sub_1000026A4(&qword_10003CB40, &qword_10002D820);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v35 - v8;
  v10 = sub_10002942C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v35 - v17;
  sub_10002939C();
  if (sub_100002984(v18, 1, v10))
  {
    sub_10000532C(v18);
    v23 = sub_10002A0DC();
    v24 = sub_10002A0DC();
    v25 = sub_100028FF4(v23);

    v26 = sub_10002A0EC();
    v28 = v27;

    v36 = v26;
    v37 = v28;
  }

  else
  {
    (*(v11 + 16))(v14, v18, v10);
    sub_10000532C(v18);
    v19 = sub_10002941C();
    v21 = v20;
    (*(v11 + 8))(v14, v10);
    v22 = objc_allocWithZone(LSApplicationRecord);
    v30 = sub_100005754(v19, v21, 1);
    v31 = [v30 localizedName];

    v32 = sub_10002A0EC();
    v34 = v33;

    v36 = v32;
    v37 = v34;
  }

  sub_100005F34();
  sub_100029E1C();
  (*(v6 + 16))(v4, v9, v5);
  swift_storeEnumTagMultiPayload();
  sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820);
  sub_100029B6C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000040D0()
{
  v0 = sub_10002A0DC();
  v1 = sub_10002A0DC();
  v2 = sub_100028FF4(v0);

  v3 = sub_10002A0EC();
  return v3;
}

Swift::Int sub_10000419C()
{
  sub_10002A38C();
  sub_10002A39C(0);
  return sub_10002A3BC();
}

Swift::Int sub_1000041F0()
{
  sub_10002A38C();
  sub_10002A39C(0);
  return sub_10002A3BC();
}

uint64_t static OpenAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  static OpenAppIntent.isDiscoverable = a1;
  return result;
}

uint64_t static OpenAppIntent.title.getter()
{
  v0 = sub_10002978C();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v8 = v7 - v6;
  v9 = sub_10002988C();
  v10 = sub_100002910(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_100002900();
  v13 = sub_10002A0CC();
  v14 = sub_100002910(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002900();
  sub_100006184();
  sub_10002A05C();
  sub_10002987C();
  (*(v3 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  sub_10000608C();
  return sub_10000612C();
}

uint64_t OpenAppIntent.init()()
{
  v0 = sub_1000295AC();
  v1 = sub_1000028EC(v0);
  v41 = v2;
  v42 = v1;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v40 = v6 - v5;
  v7 = sub_1000026A4(&unk_10003DBA0, &unk_10002D350);
  sub_100002910(v7);
  v9 = *(v8 + 64);
  sub_100003534();
  __chkstk_darwin(v10);
  v12 = &v40 - v11;
  v13 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  sub_100002910(v13);
  v15 = *(v14 + 64);
  sub_100003534();
  __chkstk_darwin(v16);
  v18 = &v40 - v17;
  v19 = sub_10002978C();
  v20 = sub_1000028EC(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100002900();
  v27 = v26 - v25;
  v28 = sub_10002988C();
  v29 = sub_100002910(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_100002900();
  v32 = sub_10002A0CC();
  v33 = sub_100002910(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100002900();
  v36 = sub_1000297AC();
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  sub_100002900();
  sub_1000026A4(&qword_10003C958, &unk_10002D360);
  sub_10002A05C();
  sub_10002987C();
  (*(v22 + 104))(v27, enum case for LocalizedStringResource.BundleDescription.main(_:), v19);
  sub_10000608C();
  sub_100006148();
  sub_10000612C();
  sub_1000026EC(v18, 1, 1, v36);
  v38 = sub_10002931C();
  sub_1000026EC(v12, 1, 1, v38);
  (*(v41 + 104))(v40, enum case for InputConnectionBehavior.default(_:), v42);
  return sub_1000293FC();
}

uint64_t OpenAppIntent.perform()()
{
  sub_100006164();
  v0[50] = v1;
  v0[51] = v2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v3);
  v5 = *(v4 + 64) + 15;
  v0[52] = swift_task_alloc();
  v6 = sub_10002942C();
  v0[53] = v6;
  v7 = *(v6 - 8);
  v0[54] = v7;
  v8 = *(v7 + 64) + 15;
  v0[55] = swift_task_alloc();
  v9 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  sub_100002910(v9);
  v11 = *(v10 + 64) + 15;
  v0[56] = swift_task_alloc();
  sub_100006198();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_1000048F4()
{
  v1 = v0[56];
  v2 = v0[53];
  v3 = v0[51];
  sub_10002939C();
  if (sub_100002984(v1, 1, v2))
  {
    sub_10000532C(v0[56]);
    sub_100005394();
    swift_allocError();
    swift_willThrow();
    v5 = v0[55];
    v4 = v0[56];
    v6 = v0[52];

    sub_100006100();

    return v7();
  }

  else
  {
    v10 = v0[55];
    v9 = v0[56];
    v11 = v0[53];
    v12 = v0[54];
    v13 = v0[52];
    (*(v12 + 16))(v10, v9, v11);
    sub_10000532C(v9);
    v14 = sub_10002941C();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_10002A02C();
    v18 = sub_10002980C();
    sub_1000026EC(v13, 1, 1, v18);
    v19 = objc_allocWithZone(WFAppLaunchRequest);
    v20 = sub_100005830(v14, v16, v17, v13, 0, 0);
    v0[57] = v20;
    [v20 setRequiresUserFacingApp:1];
    v0[2] = v0;
    v0[7] = v0 + 62;
    v0[3] = sub_100004BC0;
    v21 = swift_continuation_init();
    v22 = sub_1000026A4(&qword_10003CAB0, &unk_10002D520);
    v0[58] = v22;
    v0[33] = v22;
    v0[26] = _NSConcreteStackBlock;
    v0[27] = 1107296256;
    v0[28] = sub_1000053E8;
    v0[29] = &unk_100039E28;
    v0[30] = v21;
    [v20 performWithCompletionHandler:v0 + 26];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_100004BC0()
{
  sub_100006164();
  v1 = *v0;
  sub_100006178();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 472) = *(v4 + 48);
  sub_100006198();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100004CC4()
{
  sub_100006158();
  if ((*(v0 + 496) & 1) != 0 || !VCIsDeviceLocked())
  {
    sub_10000610C();

    sub_100006100();

    return v4();
  }

  else
  {
    v2 = [objc_allocWithZone(WFCompactUnlockService) init];
    *(v0 + 480) = v2;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 497;
    *(v0 + 88) = sub_100004E58;
    v3 = swift_continuation_init();
    *(v0 + 328) = sub_1000026A4(&qword_10003DBD0, &qword_100030090);
    *(v0 + 272) = _NSConcreteStackBlock;
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1000054E0;
    *(v0 + 296) = &unk_100039E50;
    *(v0 + 304) = v3;
    [v2 requestUnlockIfNeeded:v0 + 272];

    return _swift_continuation_await(v0 + 80);
  }
}

uint64_t sub_100004E58()
{
  sub_100006164();
  v7 = *v0;
  v1 = *v0;
  sub_100006178();
  *v2 = v1;
  sub_100006198();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100004F2C()
{
  sub_100006158();
  if (*(v0 + 497) == 1)
  {
    v2 = *(v0 + 456);
    v3 = *(v0 + 464);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 498;
    *(v0 + 152) = sub_100005090;
    v4 = swift_continuation_init();
    *(v0 + 392) = v3;
    *(v0 + 336) = _NSConcreteStackBlock;
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1000053E8;
    *(v0 + 360) = &unk_100039E78;
    *(v0 + 368) = v4;
    [v2 performWithCompletionHandler:v0 + 336];

    return _swift_continuation_await(v0 + 144);
  }

  else
  {

    sub_10000610C();

    sub_100006100();

    return v5();
  }
}

uint64_t sub_100005090()
{
  sub_100006164();
  v1 = *v0;
  sub_100006178();
  *v3 = v2;
  *v3 = *v0;
  *(v2 + 488) = *(v4 + 176);
  sub_100006198();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100005194()
{
  sub_100006158();

  sub_10000610C();

  sub_100006100();

  return v2();
}

uint64_t sub_100005218()
{
  sub_100006158();
  v1 = v0[59];
  v2 = v0[57];
  swift_willThrow();

  v3 = v0[59];
  v5 = v0[55];
  v4 = v0[56];
  v6 = v0[52];

  sub_100006100();

  return v7();
}

uint64_t sub_1000052A0()
{
  sub_100006158();
  v1 = v0[60];
  v2 = v0[61];
  v3 = v0[57];
  swift_willThrow();

  v4 = v0[61];
  v6 = v0[55];
  v5 = v0[56];
  v7 = v0[52];

  sub_100006100();

  return v8();
}

uint64_t sub_10000532C(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CAA0, &qword_10002D518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100005394()
{
  result = qword_10003CAA8;
  if (!qword_10003CAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAA8);
  }

  return result;
}

uint64_t sub_1000053E8(uint64_t a1, char a2, void *a3)
{
  v5 = sub_100005D74((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (!a3)
  {
    return sub_10000552C(*v5, a2, &swift_continuation_throwingResume);
  }

  v7 = a3;

  return sub_100005474(v6, v7);
}

uint64_t sub_100005474(uint64_t a1, uint64_t a2)
{
  sub_1000026A4(&qword_10003CAE0, &qword_10002D798);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100005568()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100005608;

  return OpenAppIntent.perform()();
}

uint64_t sub_100005608()
{
  sub_100006164();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_100006178();
  *v3 = v2;

  sub_100006100();

  return v4();
}

uint64_t sub_1000056F0@<X0>(uint64_t *a1@<X8>)
{
  result = OpenAppIntent.init()();
  *a1 = result;
  return result;
}

uint64_t sub_100005718(uint64_t a1)
{
  v2 = sub_100005A28();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

id sub_100005754(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_10002A0DC();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    sub_10002976C();

    swift_willThrow();
  }

  return v6;
}

id sub_100005830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char a6)
{
  v7 = v6;
  v12 = sub_10002A0DC();

  if (a3)
  {
    v13.super.isa = sub_10002A01C().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = sub_10002980C();
  v16 = 0;
  if (sub_100002984(a4, 1, v14) != 1)
  {
    sub_1000297EC(v15);
    v16 = v17;
    (*(*(v14 - 8) + 8))(a4, v14);
  }

  v18 = [v7 initWithBundleIdentifier:v12 options:v13.super.isa URL:v16 userActivity:a5 retainsSiri:a6 & 1];

  return v18;
}

uint64_t sub_100005974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000059D8(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_100005A28()
{
  result = qword_10003CAB8;
  if (!qword_10003CAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAB8);
  }

  return result;
}

unint64_t sub_100005A80()
{
  result = qword_10003CAC0;
  if (!qword_10003CAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC0);
  }

  return result;
}

unint64_t sub_100005AD8()
{
  result = qword_10003CAC8;
  if (!qword_10003CAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAC8);
  }

  return result;
}

uint64_t sub_100005BF0(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_100005C40(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100005CDCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100005D20()
{
  result = qword_10003CAD8;
  if (!qword_10003CAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CAD8);
  }

  return result;
}

void *sub_100005D74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100005DE0()
{
  result = qword_10003CB10;
  if (!qword_10003CB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB10);
  }

  return result;
}

unint64_t sub_100005E3C()
{
  result = qword_10003CB30;
  if (!qword_10003CB30)
  {
    sub_1000028A4(&qword_10003CB28, &qword_10002D818);
    sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB30);
  }

  return result;
}

uint64_t sub_100005EEC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000028A4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100005F34()
{
  result = qword_10003CB50;
  if (!qword_10003CB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CB50);
  }

  return result;
}

uint64_t sub_100005F88()
{
  sub_1000028A4(&qword_10003CB00, &qword_10002D808);
  sub_1000028A4(&qword_10003CAF8, &qword_10002D800);
  sub_1000028A4(&qword_10003CAF0, &qword_10002D7F8);
  sub_1000028A4(&qword_10003CAE8, &qword_10002D7F0);
  sub_1000060E8();
  sub_100005EEC(v0, &qword_10003CAE8, &qword_10002D7F0);
  sub_1000060D0();
  sub_1000061A4();
  sub_1000060B8();
  sub_1000061A4();
  sub_1000060A0();
  sub_1000061A4();
  return sub_1000061A4();
}

uint64_t sub_100006100()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000610C()
{
  v2 = v0[56];
  v3 = v0[57];
  v4 = v0[55];
  v5 = v0[52];
  v6 = v0[50];

  return sub_10002932C();
}

uint64_t sub_10000612C()
{

  return sub_1000297BC();
}

uint64_t sub_1000061A4()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000061BC()
{
  type metadata accessor for RunningShortcutTracker();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  type metadata accessor for RunningShortcutTracker.State();
  result = sub_10002A02C();
  *(v0 + 112) = result;
  qword_100041488 = v0;
  return result;
}

uint64_t sub_100006224()
{
  v1 = v0;
  v2 = sub_10002986C();
  v3 = sub_1000028EC(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100002900();
  v10 = v9 - v8;
  v11 = type metadata accessor for RunningShortcutTracker.State();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  sub_100002900();
  v15 = v14 - v13;
  sub_100007340(v1, v14 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *(v5 + 32);
    sub_100007484();
    v17();
    sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
    v18 = *(v5 + 72);
    v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10002D850;
    (*(v5 + 16))(v20 + v19, v10, v2);
    sub_10002984C();
    sub_10002984C();
    sub_10002984C();
    (*(v5 + 8))(v10, v2);
  }

  else
  {
    v21 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);

    v23 = *(v5 + 32);
    v22 = v5 + 32;
    sub_100007484();
    v23();
    sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
    v24 = *(v22 + 40);
    v25 = (*(v22 + 48) + 32) & ~*(v22 + 48);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_10002D840;
    (v23)(v20 + v25, v10, v2);
  }

  return v20;
}

uint64_t sub_100006490()
{
  v0 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);
  v5 = *(v4 + 48);
  v6 = *(v4 + 64);

  sub_10002985C();
  *&v3[v5] = 0;
  *&v3[v6] = 0;
  type metadata accessor for RunningShortcutTracker.State();
  swift_storeEnumTagMultiPayload();
  sub_100007440();
  sub_100007484();
  sub_1000065A4(v7, v8, v9);
  swift_endAccess();
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_1000065A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for RunningShortcutTracker.State();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100002984(a1, 1, v16) == 1)
  {
    sub_100006DC0(a1);
    sub_100006F54(a2, a3, v11);

    return sub_100006DC0(v11);
  }

  else
  {
    sub_100007088(a1, v15);
    v18 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_1000070EC(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  return result;
}

uint64_t sub_100006708(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = a1;
  v6 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v42 - v8;
  v10 = type metadata accessor for RunningShortcutTracker.State();
  v11 = sub_1000028EC(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100002900();
  v18 = v17 - v16;
  v46 = sub_10002986C();
  v19 = sub_1000028EC(v46);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_100002900();
  v26 = v25 - v24;
  swift_beginAccess();
  v27 = *(v3 + 112);
  if (*(v27 + 16))
  {
    v28 = sub_100006E28(a2, a3);
    if (v29)
    {
      v43 = a3;
      v44 = a2;
      sub_100007340(*(v27 + 56) + *(v13 + 72) * v28, v18);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v31 = sub_1000026A4(&qword_10003CCD8, qword_10002D8E8);
        v32 = *(v18 + *(v31 + 48));
        v42 = *(v18 + *(v31 + 64));
        v33 = v21;
        v34 = v46;
        (*(v21 + 32))(v26, v18, v46);
        swift_endAccess();

        v35 = v45;
        v47 = v45;
        swift_getKeyPath();
        v36 = sub_1000297CC();

        v37 = *(v31 + 48);
        v38 = *(v31 + 64);
        (*(v33 + 16))(v9, v26, v34);
        *&v9[v37] = v35;
        *&v9[v38] = v36;
        swift_storeEnumTagMultiPayload();
        sub_1000026EC(v9, 0, 1, v10);
        swift_beginAccess();
        v39 = v43;

        v40 = v35;
        v41 = v36;
        sub_1000065A4(v9, v44, v39);
        swift_endAccess();

        return (*(v33 + 8))(v26, v46);
      }

      sub_1000073A4(v18);
    }
  }

  return swift_endAccess();
}

uint64_t sub_100006A50()
{
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_100006A98()
{
  v0 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);

  sub_10002985C();
  type metadata accessor for RunningShortcutTracker.State();
  swift_storeEnumTagMultiPayload();
  sub_100007440();
  sub_100007484();
  sub_1000065A4(v2, v3, v4);
  swift_endAccess();
  sub_100029F3C();
  sub_100029F2C();
  sub_100029F1C();
}

uint64_t sub_100006B88()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for RunningShortcutTracker.State()
{
  result = qword_10003CC70;
  if (!qword_10003CC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100006C38()
{
  sub_100006CAC();
  if (v0 <= 0x3F)
  {
    sub_100006D50();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100006CAC()
{
  if (!qword_10003CC80)
  {
    sub_10002986C();
    sub_1000028A4(&qword_10003CC88, &qword_10002D8A0);
    sub_1000028A4(&qword_10003CC90, qword_10002D8A8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_10003CC80);
    }
  }
}

void sub_100006D50()
{
  if (!qword_10003CC98)
  {
    v0 = sub_10002986C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CC98);
    }
  }
}

uint64_t sub_100006DC0(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100006E28(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10002A38C();
  sub_10002A12C();
  v6 = sub_10002A3BC();

  return sub_100006EA0(a1, a2, v6);
}

unint64_t sub_100006EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10002A31C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_100006F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100006E28(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    v12 = *(*v4 + 24);
    sub_1000026A4(&qword_10003CCD0, &qword_10002D8E0);
    sub_10002A2BC(isUniquelyReferenced_nonNull_native, v12);
    v13 = *(*(v20 + 48) + 16 * v9 + 8);

    v14 = *(v20 + 56);
    v15 = type metadata accessor for RunningShortcutTracker.State();
    sub_100007088(v14 + *(*(v15 - 8) + 72) * v9, a3);
    sub_10002A2CC();
    *v4 = v20;
    v16 = a3;
    v17 = 0;
    v18 = v15;
  }

  else
  {
    v18 = type metadata accessor for RunningShortcutTracker.State();
    v16 = a3;
    v17 = 1;
  }

  return sub_1000026EC(v16, v17, 1, v18);
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000070EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100006E28(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v11;
  v17 = v12;
  sub_1000026A4(&qword_10003CCD0, &qword_10002D8E0);
  if (!sub_10002A2BC(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v18 = *v5;
  v19 = sub_100006E28(a2, a3);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_10002A33C();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = v22 + *(*(type metadata accessor for RunningShortcutTracker.State() - 8) + 72) * v16;

    return sub_1000072DC(a1, v23);
  }

  else
  {
    sub_100007244(v16, a2, a3, a1, v21);
  }
}

uint64_t sub_100007244(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RunningShortcutTracker.State();
  result = sub_100007088(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

uint64_t sub_1000072DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007340(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunningShortcutTracker.State();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000073A4(uint64_t a1)
{
  v2 = type metadata accessor for RunningShortcutTracker.State();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10000740C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 fractionCompleted];
  *a2 = v4;
  return result;
}

uint64_t sub_100007440()
{
  sub_1000026EC(v0, 0, 1, v1);

  return swift_beginAccess();
}

__n128 sub_1000074AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000074B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1000074F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100007560@<X0>(uint64_t a1@<X8>)
{
  sub_10002985C();
  v2 = type metadata accessor for RunShortcutWidgetEntry(0);
  *(a1 + v2[8]) = 0;
  *(a1 + v2[5]) = 0;
  v3 = a1 + v2[6];
  *(v3 + 48) = 0;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  v4 = v2[7];
  type metadata accessor for RunningShortcutTracker.State();
  sub_10000B1A4();

  return sub_1000026EC(v5, v6, v7, v8);
}

uint64_t sub_1000075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a2;
  v4[11] = a4;
  v4[9] = a1;
  return _swift_task_switch(sub_100007600, 0, 0);
}

uint64_t sub_100007600()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  sub_10002939C();
  v16 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = type metadata accessor for RunShortcutWidgetEntry(0);
  type metadata accessor for RunningShortcutTracker.State();
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  v6 = v5[7];
  sub_10000B1A4();
  sub_1000026EC(v7, v8, v9, v10);
  LOBYTE(v2) = sub_100029F9C();
  sub_10002985C();
  v11 = v3 + v5[6];
  *v11 = v15;
  *(v11 + 16) = v14;
  *(v11 + 32) = v16;
  *(v11 + 48) = v4;
  *(v3 + v5[8]) = (v2 & 1) == 0;
  *(v3 + v5[5]) = 0;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100007704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a2;
  v4[18] = a4;
  v4[16] = a1;
  v5 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4[19] = v5;
  sub_10000B194(v5);
  v4[20] = v6;
  v8 = *(v7 + 64) + 15;
  v4[21] = swift_task_alloc();
  v9 = *(*(sub_100029F7C() - 8) + 64) + 15;
  v4[22] = swift_task_alloc();
  v10 = *(*(sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_100007830, 0, 0);
}

uint64_t sub_100007830()
{
  v1 = v0[17];
  sub_10002939C();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[11];
  v5 = v0[12];
  v7 = v0[13];
  v6 = v0[14];
  v8 = v0[15];
  if (v3)
  {
    v49 = v0[11];
    v9 = v0[23];
    v10 = v0[24];
    v0[2] = v3;
    v0[3] = v2;
    v0[4] = v4;
    v0[5] = v5;
    v0[6] = v7;
    v0[7] = v6;
    v0[8] = v8;
    type metadata accessor for RunningShortcutTracker.State();
    sub_10000B1BC();
    sub_10000B1A4();
    sub_1000026EC(v11, v12, v13, v4);
    sub_10000AEE4(v10, v9);
    if (sub_100002984(v9, 1, v4) == 1)
    {
      sub_10000338C(v0[23], &qword_10003CCC8, &qword_10002D8D8);
      sub_1000026A4(&qword_10003CCE0, &unk_10002D930);
      v14 = sub_10002986C();
      sub_10000B194(v14);
      v16 = *(v15 + 72);
      v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_10002D840;
      sub_10002985C();
    }

    else
    {
      v19 = sub_100006224();
      sub_10000ACCC();
    }

    v34 = v0[24];
    v35 = v0[22];
    v36 = v0[18];
    v37 = v0[19];
    v38 = v0[16];
    v39 = swift_task_alloc();
    v39[2] = v0 + 2;
    v39[3] = v34;
    v39[4] = v36;
    sub_100007D0C(sub_10000AF54, v39, v19);

    sub_100029F6C();
    sub_10000B134();
    sub_10000A5DC(v40, v41);
    sub_10002A00C();
    sub_10000AD20(v3);
    sub_10000338C(v34, &qword_10003CCC8, &qword_10002D8D8);
  }

  else
  {
    v20 = v0[21];
    v22 = v0[19];
    v21 = v0[20];
    v48 = v0[22];
    v50 = v0[16];
    sub_10002985C();
    *(v20 + v22[8]) = 1;
    *(v20 + v22[5]) = 0;
    v23 = (v20 + v22[6]);
    *v23 = 0;
    v23[1] = v2;
    v23[2] = v4;
    v23[3] = v5;
    v23[4] = v7;
    v23[5] = v6;
    v23[6] = v8;
    v24 = v22[7];
    type metadata accessor for RunningShortcutTracker.State();
    sub_10000B1A4();
    sub_1000026EC(v25, v26, v27, v28);
    sub_1000026A4(&qword_10003CF38, &unk_10002DD30);
    v29 = *(v21 + 72);
    v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10002D840;
    sub_100009EF4(v20, v31 + v30);
    sub_100029F6C();
    sub_10000B134();
    sub_10000A5DC(v32, v33);
    sub_10002A00C();
    sub_10000ACCC();
  }

  v43 = v0[23];
  v42 = v0[24];
  v45 = v0[21];
  v44 = v0[22];

  v46 = v0[1];

  return v46();
}

uint64_t sub_100007C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = sub_10002986C();
  v14 = *(a2 + 16);
  v15 = *a2;
  (*(*(v9 - 8) + 16))(a4, a1, v9);
  v10 = type metadata accessor for RunShortcutWidgetEntry(0);
  sub_10000AEE4(a3, a4 + v10[7]);
  v11 = sub_100029F9C();
  v12 = a4 + v10[6];
  *v12 = v15;
  *(v12 + 16) = v14;
  *(v12 + 32) = v16;
  *(v12 + 48) = v8;
  *(a4 + v10[8]) = (v11 & 1) == 0;
  *(a4 + v10[5]) = 0;
  return sub_10000AFDC(a2, v17);
}

uint64_t sub_100007D0C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for RunShortcutWidgetEntry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = &_swiftEmptyArrayStorage;
  if (!v11)
  {
    return v12;
  }

  v22 = &_swiftEmptyArrayStorage;
  sub_100012CEC(0, v11, 0);
  v12 = v22;
  v13 = *(sub_10002986C() - 8);
  v14 = a3 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v19 = *(v13 + 72);
  while (1)
  {
    v20(v14);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = v12[2];
    v15 = v12[3];
    if (v16 >= v15 >> 1)
    {
      sub_100012CEC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    v12[2] = v16 + 1;
    sub_10000AF78(v10, v12 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16);
    v14 += v19;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100007EFC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B0B8;

  return sub_1000075DC(a1, v6, v7, a3);
}

uint64_t sub_100007FAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B0B8;

  return sub_100007704(a1, v6, v7, a3);
}

uint64_t sub_100008064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008118;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100008118()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000820C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to AppIntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B0B8;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

__n128 sub_1000082C0@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4 = v1 + *(v3 + 24);
  v5 = *v4;
  v6 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *(v4 + 48);
  v9 = *v4;
  v10 = *(v4 + 16);
  if (!*v4)
  {
    v11 = *(v1 + *(v3 + 20));
    if (v11)
    {
      sub_10000FEC0(v11, v15);
      v10 = v15[1];
      v9 = v15[0];
      v6 = v16;
      v7 = v17;
      v8 = v18;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0uLL;
      v10 = 0uLL;
    }
  }

  v13 = v10;
  v14 = v9;
  sub_10000AE58(v5);
  result = v14;
  *a1 = v14;
  *(a1 + 16) = v13;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  return result;
}

void sub_1000083BC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RunShortcutWidgetEntry(0);
  v4 = *(v1 + *(v3 + 20));
  if (!v4)
  {
    v5 = (v1 + *(v3 + 24));
    if (!*v5)
    {
      goto LABEL_17;
    }

    v7 = v5[1];
    v6 = v5[2];
    v9 = v5[3];
    v8 = v5[4];
    v10 = v5[5];
    v11 = v5[6];
    v12 = qword_10003C940;

    if (v12 != -1)
    {
      sub_10000B164();
    }

    v13 = qword_1000415B8;
    sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10002D840;
    sub_10002933C();
    *(v14 + 32) = v39;
    *(v14 + 40) = v40;
    v15 = sub_1000284B4();

    if (sub_1000134BC(v15))
    {
      sub_10000B1C8();
      if (v13)
      {
        sub_10002A26C();
      }

      else
      {
        v16 = *(v15 + 32);
      }

      sub_10000B1BC();

      sub_100008824(a1);
LABEL_12:

      v17 = sub_10000B0BC();
      sub_10000AD20(v17);
      return;
    }

    v18 = sub_10000B0BC();
    sub_10000AD20(v18);

    sub_10002933C();
    if (v40)
    {
      v35 = sub_10002981C();
      v20 = v19;

      if (v20 >> 60 != 15)
      {
        sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
        sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
        v26 = sub_10002A20C();
        sub_10000ADEC(v35, v20);
        if (v26)
        {
          objc_opt_self();
          v27 = swift_dynamicCastObjCClass();
          if (v27)
          {
            v28 = v27;
            v36 = v26;
            if (qword_10003C940 != -1)
            {
              sub_10000B164();
            }

            sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_10002D840;
            v13 = [v28 workflowIdentifier];
            v30 = sub_10002A0EC();
            v37 = v31;

            *(v29 + 32) = v30;
            *(v29 + 40) = v37;
            v32 = sub_1000284B4();

            if (sub_1000134BC(v32))
            {
              sub_10000B1C8();
              if (v13)
              {
                sub_10002A26C();
              }

              else
              {
                v33 = *(v32 + 32);
              }

              sub_10000B1BC();

              sub_100008824(a1);

              goto LABEL_12;
            }

            v34 = sub_10000B0BC();
            sub_10000AD20(v34);

LABEL_17:
            sub_10002980C();
            sub_10000B1A4();
            sub_1000026EC(v22, v23, v24, v25);
            return;
          }
        }
      }
    }

    v21 = sub_10000B0BC();
    sub_10000AD20(v21);
    goto LABEL_17;
  }

  v38 = v4;
  sub_100008824(a1);
}

uint64_t sub_100008824@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = sub_10002972C();
  v4 = sub_1000028EC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002971C();
  sub_10002970C();
  sub_1000296EC();
  sub_1000026A4(&qword_10003CF28, &qword_10002DD20);
  v11 = sub_10002967C();
  sub_10000B194(v11);
  v13 = *(v12 + 72);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  *(swift_allocObject() + 16) = xmmword_10002D940;
  v16 = [v2 identifier];
  sub_10002A0EC();

  sub_10002966C();

  v17 = [v2 name];
  sub_10002A0EC();

  sub_10002966C();

  sub_10002A0EC();
  sub_10002966C();

  sub_10002968C();
  sub_1000296AC();
  return (*(v6 + 8))(v10, v3);
}

void sub_100008AB0()
{
  v1 = sub_10000B1B0();
  v2 = *(v0 + *(type metadata accessor for RunShortcutWidgetEntry(v1) + 20));
  if (v2)
  {
    v3 = [v2 name];
    sub_10002A0EC();

    sub_10002A3AC(1u);
    sub_10002A12C();
  }

  else
  {
    sub_10002A3AC(0);
  }
}

uint64_t sub_100008B58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000B1B0();
  v5 = type metadata accessor for RunShortcutWidgetEntry(v4);
  v6 = *(v5 + 20);
  v7 = *(v2 + v6);
  if (v7)
  {
    v8 = [v7 name];
    v9 = sub_10002A0EC();
    v11 = v10;

    v12 = *(a2 + *(v5 + 20));
    if (!v12)
    {
      if (!v11)
      {
        goto LABEL_17;
      }

LABEL_14:
      v18 = 0;
LABEL_19:

      return v18 & 1;
    }
  }

  else
  {
    v12 = *(a2 + v6);
    if (!v12)
    {
      goto LABEL_17;
    }

    v11 = 0;
    v9 = 0;
  }

  v13 = [v12 name];
  v14 = sub_10002A0EC();
  v16 = v15;

  if (v11)
  {
    if (v16)
    {
      if (v9 == v14 && v11 == v16)
      {

        v18 = 1;
      }

      else
      {
        v18 = sub_10002A31C();
      }

      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if (v16)
  {
    v18 = 0;
    goto LABEL_19;
  }

LABEL_17:
  v18 = 1;
  return v18 & 1;
}

Swift::Int sub_100008C84()
{
  sub_10002A38C();
  sub_100008AB0();
  return sub_10002A3BC();
}

uint64_t sub_100008CC4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10002986C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int sub_100008D38()
{
  sub_10002A38C();
  sub_100008AB0();
  return sub_10002A3BC();
}

uint64_t sub_100008D78()
{
  v1 = v0;
  v2 = sub_1000026A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000350C(v2);
  v4 = *(v3 + 64);
  sub_100003534();
  __chkstk_darwin(v5);
  v7 = v22 - v6;
  v8 = sub_1000026A4(&qword_10003CE98, &qword_10002DC00);
  sub_1000028EC(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_100003534();
  __chkstk_darwin(v13);
  v15 = v22 - v14;
  sub_100008F44(v1, v7);
  v16 = *(v1 + *(type metadata accessor for RunShortcutWidgetEntry(0) + 32));
  KeyPath = swift_getKeyPath();
  v18 = swift_allocObject();
  *(v18 + 16) = (v16 & 1) == 0;
  v19 = &v7[*(v2 + 36)];
  *v19 = KeyPath;
  v19[1] = sub_10000A8F4;
  v19[2] = v18;
  v20 = sub_10000A90C();
  sub_100029D4C();
  sub_10000ABF0(v7);
  v22[0] = v2;
  v22[1] = v20;
  sub_10000B11C();
  swift_getOpaqueTypeConformance2();
  sub_100029D1C();
  return (*(v10 + 8))(v15, v8);
}

uint64_t sub_100008F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v57 - v5;
  v66 = type metadata accessor for RunShortcutComplicationView();
  v7 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1000026A4(&qword_10003CEC8, &qword_10002DC48);
  v63 = *(v69 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v69);
  v62 = &v57 - v11;
  v71 = sub_1000026A4(&qword_10003CEF0, &qword_10002DC60);
  v12 = *(v71 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v71);
  v15 = &v57 - v14;
  v65 = sub_1000026A4(&qword_10003CEF8, &qword_10002DC68);
  v16 = *(*(v65 - 8) + 64);
  __chkstk_darwin(v65);
  v70 = &v57 - v17;
  v18 = type metadata accessor for EmptyShortcutComplicationView();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_1000026A4(&qword_10003CF00, &qword_10002DC70);
  v22 = *(v68 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v68);
  v25 = &v57 - v24;
  v64 = a1;
  sub_1000082C0(v76);
  v26 = v76[0];
  if (v76[0])
  {
    v59 = v15;
    v58 = v6;
    v27 = v76[1];
    v80 = v77;
    v81 = v78;
    v82 = v79;
    KeyPath = swift_getKeyPath();
    v61 = v18;
    v60 = v12;
    v29 = v66;
    *&v9[*(v66 + 20)] = KeyPath;
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    *v9 = v26;
    *(v9 + 1) = v27;
    v30 = v81;
    *(v9 + 1) = v80;
    *(v9 + 2) = v30;
    *(v9 + 6) = v82;

    sub_10002933C();
    v31 = sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView);
    v32 = sub_100005F34();
    v33 = v62;
    sub_100029CCC();

    sub_10000ACCC();
    v34 = v58;
    sub_1000083BC(v58);
    v72 = v29;
    v73 = &type metadata for String;
    v74 = v31;
    v75 = v32;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v59;
    v37 = v34;
    v38 = v69;
    sub_100029CEC();
    sub_10000338C(v37, &unk_10003DBC0, &qword_10002D510);
    (*(v63 + 8))(v33, v38);
    v39 = v60;
    v40 = v71;
    (*(v60 + 16))(v70, v36, v71);
    swift_storeEnumTagMultiPayload();
    v72 = v38;
    v73 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v41 = sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView);
    v72 = v61;
    v73 = &type metadata for String;
    v74 = v41;
    v75 = v32;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    sub_10000338C(v76, &qword_10003CF10, &qword_10002DD10);
    return (*(v39 + 8))(v36, v40);
  }

  else
  {
    *v21 = swift_getKeyPath();
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    v43 = v18;
    v44 = *(v18 + 20);
    *(v21 + v44) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
    swift_storeEnumTagMultiPayload();
    v45 = v21 + *(v43 + 24);
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    v46 = sub_10002A0DC();
    v47 = sub_10002A0DC();
    v48 = sub_100028FF4(v46);

    v49 = sub_10002A0EC();
    v51 = v50;

    *&v80 = v49;
    *(&v80 + 1) = v51;
    v52 = sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView);
    v53 = sub_100005F34();
    sub_100029CCC();

    sub_10000ACCC();
    v54 = v68;
    (*(v22 + 16))(v70, v25, v68);
    swift_storeEnumTagMultiPayload();
    v55 = sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView);
    *&v80 = v66;
    *(&v80 + 1) = &type metadata for String;
    *&v81 = v55;
    *(&v81 + 1) = v53;
    v56 = swift_getOpaqueTypeConformance2();
    *&v80 = v69;
    *(&v80 + 1) = v56;
    swift_getOpaqueTypeConformance2();
    *&v80 = v43;
    *(&v80 + 1) = &type metadata for String;
    *&v81 = v52;
    *(&v81 + 1) = v53;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (*(v22 + 8))(v25, v54);
  }
}

uint64_t sub_100009870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a1;
  v67 = a2;
  v2 = sub_1000026A4(&qword_10003CCE8, &qword_10002D9E0);
  sub_1000028EC(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100003534();
  __chkstk_darwin(v7);
  v9 = &v60 - v8;
  v10 = sub_1000026A4(&qword_10003CCF0, &qword_10002D9E8);
  v61 = sub_1000028EC(v10);
  v62 = v11;
  v13 = *(v12 + 64);
  sub_100003534();
  __chkstk_darwin(v14);
  v16 = &v60 - v15;
  v17 = sub_1000026A4(&qword_10003CCF8, &qword_10002D9F0);
  v63 = sub_1000028EC(v17);
  v64 = v18;
  v20 = *(v19 + 64);
  sub_100003534();
  __chkstk_darwin(v21);
  v23 = &v60 - v22;
  v24 = sub_1000026A4(&qword_10003CD00, &qword_10002D9F8);
  v65 = sub_1000028EC(v24);
  v66 = v25;
  v27 = *(v26 + 64);
  sub_100003534();
  __chkstk_darwin(v28);
  v30 = &v60 - v29;
  type metadata accessor for RunShortcutWidgetEntryView(0);
  sub_10000A5DC(&qword_10003CD08, type metadata accessor for RunShortcutWidgetEntryView);
  sub_100009EA0();

  sub_100029F8C();
  v31 = sub_10002A0DC();
  v32 = sub_10002A0DC();
  v33 = sub_100028FF4(v31);

  v34 = sub_10002A0EC();
  v36 = v35;

  v68 = v34;
  v69 = v36;
  sub_10000B14C();
  v38 = sub_100005EEC(v37, &qword_10003CCE8, &qword_10002D9E0);
  v39 = sub_100005F34();
  sub_100029B4C();

  (*(v4 + 8))(v9, v2);
  v40 = sub_10002A0DC();
  sub_10002A0DC();
  v41 = sub_10000B1BC();
  v42 = sub_100028FF4(v41);

  v43 = sub_10002A0EC();
  v45 = v44;

  v72 = v43;
  v73 = v45;
  v68 = v2;
  v69 = &type metadata for String;
  v70 = v38;
  v71 = v39;
  sub_10000B104();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v61;
  sub_100029B2C();

  v48 = v47;
  (*(v62 + 8))(v16, v47);
  sub_1000026A4(&qword_10003CD20, &unk_10002DA00);
  v49 = sub_100029F4C();
  sub_1000028EC(v49);
  v51 = v50;
  v53 = *(v52 + 72);
  v54 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_10002D840;
  (*(v51 + 104))(v55 + v54, enum case for WidgetFamily.accessoryCircular(_:), v49);
  v68 = v48;
  v69 = &type metadata for String;
  v70 = OpaqueTypeConformance2;
  v71 = v39;
  sub_10000B0EC();
  v56 = swift_getOpaqueTypeConformance2();
  v57 = v63;
  sub_100029B3C();

  (*(v64 + 8))(v23, v57);
  v68 = v57;
  v69 = v56;
  sub_10000B0D4();
  swift_getOpaqueTypeConformance2();
  v58 = v65;
  sub_100029B5C();
  return (*(v66 + 8))(v30, v58);
}

unint64_t sub_100009E48@<X0>(void *a1@<X8>)
{
  result = sub_100007490();
  *a1 = 0xD000000000000011;
  a1[1] = v3;
  return result;
}

unint64_t sub_100009EA0()
{
  result = qword_10003CD10;
  if (!qword_10003CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CD10);
  }

  return result;
}

uint64_t sub_100009EF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutWidgetEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100009F78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100009FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10000B184();
  v6 = sub_10002986C();
  if (*(*(v6 - 8) + 84) == v3)
  {
    v7 = v6;
    v8 = v4;
LABEL_10:

    return sub_100002984(v8, v3, v7);
  }

  if (v3 != 2147483646)
  {
    v7 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
    v8 = v4 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(v4 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_10000A0B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_10000B184();
  result = sub_10002986C();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = v5;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v5 + *(a4 + 20)) = v4;
      return result;
    }

    v9 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
    v10 = v5 + *(a4 + 28);
  }

  return sub_1000026EC(v10, v4, v4, v9);
}

void sub_10000A188()
{
  sub_10002986C();
  if (v0 <= 0x3F)
  {
    sub_10000A244();
    if (v1 <= 0x3F)
    {
      sub_10000A2AC();
      if (v2 <= 0x3F)
      {
        sub_10000A2FC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10000A244()
{
  if (!qword_10003CD90)
  {
    sub_10000ADAC(255, &qword_10003CD98, WFWorkflowReference_ptr);
    v0 = sub_10002A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CD90);
    }
  }
}

void sub_10000A2AC()
{
  if (!qword_10003CDA0)
  {
    v0 = sub_10002A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CDA0);
    }
  }
}

void sub_10000A2FC()
{
  if (!qword_10003CDA8)
  {
    type metadata accessor for RunningShortcutTracker.State();
    v0 = sub_10002A22C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CDA8);
    }
  }
}

uint64_t sub_10000A378()
{
  v2 = sub_10000B184();
  v3 = type metadata accessor for RunShortcutWidgetEntry(v2);

  return sub_100002984(v1, v0, v3);
}

uint64_t sub_10000A3CC()
{
  v2 = sub_10000B184();
  v3 = type metadata accessor for RunShortcutWidgetEntry(v2);

  return sub_1000026EC(v1, v0, v0, v3);
}

uint64_t sub_10000A410()
{
  result = type metadata accessor for RunShortcutWidgetEntry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000A47C()
{
  sub_1000028A4(&qword_10003CD00, &qword_10002D9F8);
  sub_1000028A4(&qword_10003CCF8, &qword_10002D9F0);
  sub_1000028A4(&qword_10003CCF0, &qword_10002D9E8);
  sub_1000028A4(&qword_10003CCE8, &qword_10002D9E0);
  sub_10000B14C();
  sub_100005EEC(v0, &qword_10003CCE8, &qword_10002D9E0);
  sub_100005F34();
  sub_10000B104();
  sub_1000061A4();
  sub_10000B0EC();
  sub_1000061A4();
  sub_10000B0D4();
  sub_1000061A4();
  return sub_1000061A4();
}

uint64_t sub_10000A5DC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10000A670()
{
  result = qword_10003CE88;
  if (!qword_10003CE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CE88);
  }

  return result;
}

uint64_t sub_10000A6E0()
{
  sub_100029A6C();
  sub_10000A5DC(&qword_10003CF30, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100029B0C();
  return v1;
}

uint64_t sub_10000A75C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A6E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A7D4()
{
  sub_10000B1B0();
  v1 = sub_100029F0C();
  v2 = sub_1000028EC(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_100029A9C();
}

uint64_t sub_10000A88C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100029AAC();
  *a1 = result & 1;
  return result;
}

unint64_t sub_10000A90C()
{
  result = qword_10003CEA0;
  if (!qword_10003CEA0)
  {
    sub_1000028A4(&qword_10003CE90, &qword_10002DBF8);
    sub_10000A9C4();
    sub_100005EEC(&qword_10003CEE0, &qword_10003CEE8, &unk_10002DC50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA0);
  }

  return result;
}

unint64_t sub_10000A9C4()
{
  result = qword_10003CEA8;
  if (!qword_10003CEA8)
  {
    sub_1000028A4(&qword_10003CEB0, &qword_10002DC38);
    sub_10000AA48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEA8);
  }

  return result;
}

unint64_t sub_10000AA48()
{
  result = qword_10003CEB8;
  if (!qword_10003CEB8)
  {
    sub_1000028A4(&qword_10003CEC0, &qword_10002DC40);
    sub_1000028A4(&qword_10003CEC8, &qword_10002DC48);
    type metadata accessor for RunShortcutComplicationView();
    sub_10000A5DC(&qword_10003CED0, type metadata accessor for RunShortcutComplicationView);
    sub_100005F34();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    type metadata accessor for EmptyShortcutComplicationView();
    sub_10000A5DC(&qword_10003CED8, type metadata accessor for EmptyShortcutComplicationView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003CEB8);
  }

  return result;
}

uint64_t sub_10000ABF0(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000350C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000AC9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000A6E0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000ACCC()
{
  v1 = sub_10000B1B0();
  v3 = v2(v1);
  sub_10000350C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10000AD20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000ADAC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10000ADEC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000AE00(a1, a2);
  }

  return a1;
}

uint64_t sub_10000AE00(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000AE58(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000AEE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003CCC8, &qword_10002D8D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000AF78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutWidgetEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B038()
{
  sub_1000028A4(&qword_10003CE98, &qword_10002DC00);
  sub_1000028A4(&qword_10003CE90, &qword_10002DBF8);
  sub_10000A90C();
  sub_10000B11C();
  sub_1000061A4();
  return sub_1000061A4();
}

uint64_t sub_10000B164()
{

  return swift_once();
}

unint64_t sub_10000B1C8()
{

  return sub_100012CC8(0, (v0 & 0xC000000000000001) == 0, v0);
}

uint64_t sub_10000B1FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000026A4(&qword_10003CF40, &unk_10002DD50);
    v9 = a1 + *(a3 + 28);

    return sub_100002984(v9, a2, v8);
  }
}

void *sub_10000B2A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000026A4(&qword_10003CF40, &unk_10002DD50);
    v8 = v5 + *(a4 + 28);

    return sub_1000026EC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for RunShortcutRectangularWidgetView()
{
  result = qword_10003CFA0;
  if (!qword_10003CFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000B37C()
{
  sub_10000B480();
  if (v0 <= 0x3F)
  {
    sub_10000B51C(319, &qword_10003CFB8, &type metadata for Color, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10000B4C4();
      if (v2 <= 0x3F)
      {
        sub_10000B51C(319, &qword_10003CFC8, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_10000B480()
{
  result = qword_10003CFB0;
  if (!qword_10003CFB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10003CFB0);
  }

  return result;
}

void sub_10000B4C4()
{
  if (!qword_10003CFC0)
  {
    sub_10002997C();
    v0 = sub_10002998C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CFC0);
    }
  }
}

void sub_10000B51C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_10000B588()
{
  v2 = sub_100029AFC();
  v3 = sub_10000CA04(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1 + *(type metadata accessor for RunShortcutRectangularWidgetView() + 32);
  v11 = *v10;
  if (*(v10 + 8) != 1)
  {

    sub_10002A1FC();
    v12 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();
    sub_10000C470(v11, 0);
    (*(v5 + 8))(v9, v0);
    LOBYTE(v11) = v14[15];
  }

  return v11 & 1;
}

uint64_t sub_10000B6D0()
{
  v2 = sub_100029C2C();
  v3 = sub_10000CA04(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000026A4(&qword_10003D008, &qword_10002DDD8);
  v11 = sub_10000350C(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v23 - v14;
  *v15 = sub_100029B1C();
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = sub_1000026A4(&qword_10003D010, &qword_10002DDE0);
  sub_10000B900(v1, &v15[*(v16 + 44)]);
  sub_100029E5C();
  sub_1000299EC();
  v17 = &v15[*(v10 + 36)];
  v18 = v25;
  *v17 = v24;
  *(v17 + 1) = v18;
  *(v17 + 2) = v26;
  v19 = [*v1 backgroundColor];
  v20 = [v19 paletteGradient];

  v21 = [v20 darkBaseColor];
  v23[1] = sub_100029D9C();
  sub_100029C1C();
  sub_10000C178();
  sub_100029D6C();
  (*(v5 + 8))(v9, v0);

  return sub_10000C268(v15);
}

uint64_t sub_10000B900@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v51 = sub_10002997C();
  v3 = *(v51 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v51);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for RunShortcutRectangularWidgetView();
  v6 = *(v49 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v49);
  v8 = sub_1000026A4(&qword_10003D030, &unk_10002DDF0);
  v53 = *(v8 - 8);
  v54 = v8;
  v9 = *(v53 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v48 - v13;
  v15 = [*a1 backgroundColor];
  v16 = [v15 paletteGradient];

  sub_10000C2C8(a1, &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_10000C47C(&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  sub_1000026A4(&qword_10003D040, &qword_10002DE00);
  v19 = sub_1000028A4(&qword_10003D048, &qword_10002DE08);
  v20 = sub_10000C560();
  v56 = v19;
  v57 = v20;
  swift_getOpaqueTypeConformance2();
  v52 = v14;
  sub_1000298BC();
  v21 = *(a1 + 8);
  v22 = *(a1 + 16);

  sub_100029C5C();
  sub_100029C6C();
  sub_100029C7C();

  v23 = sub_100029C9C();
  v25 = v24;
  v27 = v26;

  if (*(a1 + 24))
  {
    v28 = v50;
    v29 = a1 + *(v49 + 28);
    sub_10000C654(v50);
    sub_100029D8C();
    (*(v3 + 8))(v28, v51);
    v30 = sub_100029D9C();
  }

  else
  {
    v30 = sub_100029DAC();
  }

  v56 = v30;
  v31 = sub_100029C8C();
  v33 = v32;
  LODWORD(v50) = v34;
  v51 = v35;
  sub_10000C644(v23, v25, v27 & 1);

  KeyPath = swift_getKeyPath();
  v38 = v52;
  v37 = v53;
  v39 = *(v53 + 16);
  v40 = v54;
  v39(v12, v52, v54);
  v41 = v55;
  v39(v55, v12, v40);
  v42 = sub_1000026A4(&qword_10003D060, &qword_10002DE40);
  v43 = &v41[*(v42 + 48)];
  *v43 = v31;
  *(v43 + 1) = v33;
  v44 = v50 & 1;
  v43[16] = v50 & 1;
  *(v43 + 3) = v51;
  *(v43 + 4) = KeyPath;
  *(v43 + 5) = 2;
  v43[48] = 0;
  v45 = &v41[*(v42 + 64)];
  *v45 = 0;
  v45[8] = 1;
  sub_10000C8A4(v31, v33, v44);
  v46 = *(v37 + 8);

  v46(v38, v40);
  sub_10000C644(v31, v33, v44);

  return (v46)(v12, v40);
}

uint64_t sub_10000BE14@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a3;
  v5 = sub_1000298DC();
  v37 = *(v5 - 8);
  v38 = v5;
  v6 = *(v37 + 64);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000298CC();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v35);
  v12 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1000026A4(&qword_10003D048, &qword_10002DE08);
  v13 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v15 = &v34 - v14;
  v16 = sub_10002997C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 24))
  {
    v21 = a2;
    v22 = a2 + *(type metadata accessor for RunShortcutRectangularWidgetView() + 28);
    sub_10000C654(v20);
    v23 = sub_100029D8C();
    (*(v17 + 8))(v20, v16);
  }

  else
  {
    v24 = a1;
    v21 = a2;
    if (sub_10000B588())
    {
      v25 = [objc_opt_self() whiteColor];
    }

    else
    {
      v25 = v24;
    }

    v23 = v25;
  }

  v26 = [*v21 icon];
  __asm { FMOV            V0.2D, #30.0 }

  *v12 = _Q0;
  (*(v9 + 104))(v12, enum case for IconSize.custom(_:), v35);
  *v8 = v23;
  v8[8] = 0;
  (*(v37 + 104))(v8, enum case for IconView.DisplayMode.customColor(_:), v38);
  v32 = v23;
  sub_1000298FC();
  *&v15[*(v36 + 36)] = 257;
  sub_10000C560();
  sub_100029CDC();

  return sub_10000C924(v15);
}

unint64_t sub_10000C178()
{
  result = qword_10003D018;
  if (!qword_10003D018)
  {
    sub_1000028A4(&qword_10003D008, &qword_10002DDD8);
    sub_10000C204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D018);
  }

  return result;
}

unint64_t sub_10000C204()
{
  result = qword_10003D020;
  if (!qword_10003D020)
  {
    sub_1000028A4(&qword_10003D028, &qword_10002DDE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D020);
  }

  return result;
}

uint64_t sub_10000C268(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003D008, &qword_10002DDD8);
  sub_10000350C(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10000C2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutRectangularWidgetView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C32C()
{
  v1 = type metadata accessor for RunShortcutRectangularWidgetView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v0 + v3 + 16);

  v7 = *(v0 + v3 + 24);

  v8 = *(v1 + 28);
  sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10002997C();
    sub_10000350C(v9);
    (*(v10 + 8))(v5 + v8);
  }

  else
  {
    v11 = *(v5 + v8);
  }

  sub_10000C470(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000C470(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000C47C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RunShortcutRectangularWidgetView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C4E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RunShortcutRectangularWidgetView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10000BE14(a1, v6, a2);
}

unint64_t sub_10000C560()
{
  result = qword_10003D050;
  if (!qword_10003D050)
  {
    sub_1000028A4(&qword_10003D048, &qword_10002DE08);
    sub_10000C5EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D050);
  }

  return result;
}

unint64_t sub_10000C5EC()
{
  result = qword_10003D058;
  if (!qword_10003D058)
  {
    sub_1000298EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D058);
  }

  return result;
}

uint64_t sub_10000C644(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C654@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100029AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10000C8B4(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10002997C();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10002A1FC();
    v16 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_10000C83C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100029ACC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000C870(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100029ADC();
}

uint64_t sub_10000C8A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000C8B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C924(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003D048, &qword_10002DE08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000C98C()
{
  sub_1000028A4(&qword_10003D008, &qword_10002DDD8);
  sub_10000C178();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000CA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
  v7 = sub_10000ED0C(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
    v12 = sub_10000ED0C(v11);
    if (*(v13 + 84) != a2)
    {
      v15 = *(a1 + *(a3 + 24) + 8);
      if (v15 > 1)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v9 = v12;
    v10 = a1 + *(a3 + 20);
  }

  return sub_100002984(v10, a2, v9);
}

uint64_t sub_10000CB48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000026A4(&qword_10003C998, &unk_10002D440);
  v9 = sub_10000ED0C(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1000026A4(&qword_10003D068, &qword_10002DE58);
    result = sub_10000ED0C(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return sub_1000026EC(v12, a2, a2, v11);
}

uint64_t type metadata accessor for EmptyShortcutComplicationView()
{
  result = qword_10003D0C8;
  if (!qword_10003D0C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CC98()
{
  sub_10000CD6C(319, &qword_10003CA08, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_10000CD6C(319, &unk_10003D0D8, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      sub_10000CDC0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10000CD6C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_10002998C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10000CDC0()
{
  if (!qword_10003CFC8)
  {
    v0 = sub_10002998C();
    if (!v1)
    {
      atomic_store(v0, &qword_10003CFC8);
    }
  }
}

uint64_t sub_10000CE2C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_100029AFC();
  v6 = sub_1000028EC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10000ECC8();
  v11 = sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  sub_10000350C(v11);
  v13 = *(v12 + 64);
  sub_100003534();
  __chkstk_darwin(v14);
  v16 = (&v22 - v15);
  sub_10000EB3C(v3, &v22 - v15, &qword_10003CA78, &qword_10002DF40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_100029F4C();
    sub_10000350C(v17);
    return (*(v18 + 32))(a1, v16);
  }

  else
  {
    v20 = *v16;
    sub_10002A1FC();
    v21 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();

    return (*(v8 + 8))(v2, v5);
  }
}

uint64_t sub_10000CFFC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_100029AFC();
  v5 = sub_1000028EC(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000ECC8();
  v10 = sub_1000026A4(&qword_10003CF08, &qword_10002DCE0);
  sub_10000350C(v10);
  v12 = *(v11 + 64);
  sub_100003534();
  __chkstk_darwin(v13);
  v15 = (&v22 - v14);
  v16 = type metadata accessor for EmptyShortcutComplicationView();
  sub_10000EB3C(v1 + *(v16 + 20), v15, &qword_10003CF08, &qword_10002DCE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_100029F0C();
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

uint64_t sub_10000D1D4@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v68 = sub_1000026A4(&qword_10003D110, &qword_10002DED0);
  sub_10000350C(v68);
  v4 = *(v3 + 64);
  sub_100003534();
  __chkstk_darwin(v5);
  v62 = (&v61 - v6);
  v64 = sub_1000026A4(&qword_10003D118, &qword_10002DED8);
  sub_10000350C(v64);
  v8 = *(v7 + 64);
  sub_100003534();
  __chkstk_darwin(v9);
  v63 = &v61 - v10;
  v65 = sub_1000026A4(&qword_10003D120, &qword_10002DEE0);
  sub_10000350C(v65);
  v12 = *(v11 + 64);
  sub_100003534();
  __chkstk_darwin(v13);
  v15 = &v61 - v14;
  v16 = sub_1000026A4(&qword_10003D128, &qword_10002DEE8);
  sub_10000350C(v16);
  v18 = *(v17 + 64);
  sub_100003534();
  __chkstk_darwin(v19);
  v21 = &v61 - v20;
  v66 = sub_1000026A4(&qword_10003D130, &qword_10002DEF0);
  sub_10000350C(v66);
  v23 = *(v22 + 64);
  sub_100003534();
  __chkstk_darwin(v24);
  v26 = &v61 - v25;
  v27 = type metadata accessor for RunShortcutRectangularWidgetView();
  v28 = sub_10000350C(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = (&v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_100029F4C();
  v34 = sub_1000028EC(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  __chkstk_darwin(v34);
  sub_10000ECC8();
  sub_10000CE2C(v2);
  v39 = (*(v36 + 88))(v2, v33);
  if (v39 == enum case for WidgetFamily.accessoryCorner(_:))
  {
    v40 = v63;
    sub_10000DB1C(v1, v63);
    v41 = *(v64 + 36);
    *(v40 + v41) = swift_getKeyPath();
    sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
    swift_storeEnumTagMultiPayload();
    sub_10000EB3C(v40, v21, &qword_10003D118, &qword_10002DED8);
    swift_storeEnumTagMultiPayload();
    sub_10000ECE0();
    sub_10000EB98(v42, v43);
    sub_10000E870();
    sub_100029B6C();
    sub_10000EB3C(v26, v15, &qword_10003D130, &qword_10002DEF0);
    swift_storeEnumTagMultiPayload();
    sub_10000E7B4();
    sub_10000EAD4();
    sub_10000ECF8();
    sub_100029B6C();
    sub_10000338C(v26, &qword_10003D130, &qword_10002DEF0);
    return sub_10000338C(v40, &qword_10003D118, &qword_10002DED8);
  }

  else
  {
    v63 = v16;
    if (v39 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      v45 = v21;
      v62 = sub_10000D828();
      v46 = sub_10002A0DC();
      v47 = sub_10002A0DC();
      v48 = sub_100028FF4(v46);

      v49 = sub_10002A0EC();
      v51 = v50;

      v52 = sub_100029DCC();
      v53 = *(v27 + 28);
      *(v32 + v53) = swift_getKeyPath();
      sub_1000026A4(&qword_10003D038, &qword_10002F5D0);
      swift_storeEnumTagMultiPayload();
      v54 = v32 + *(v27 + 32);
      *v54 = swift_getKeyPath();
      v54[8] = 0;
      *v32 = v62;
      v32[1] = v49;
      v32[2] = v51;
      v32[3] = v52;
      sub_10000C2C8(v32, v45);
      swift_storeEnumTagMultiPayload();
      sub_10000ECE0();
      sub_10000EB98(v55, v56);
      sub_10000E870();
      sub_100029B6C();
      sub_10000EB3C(v26, v15, &qword_10003D130, &qword_10002DEF0);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B4();
      sub_10000EAD4();
      sub_10000ECF8();
      sub_100029B6C();
      sub_10000338C(v26, &qword_10003D130, &qword_10002DEF0);
      return sub_10000EBE0(v32, type metadata accessor for RunShortcutRectangularWidgetView);
    }

    else
    {
      v57 = sub_100029E4C();
      v58 = v62;
      *v62 = v57;
      *(v58 + 8) = v59;
      v60 = sub_1000026A4(&qword_10003D138, &qword_10002DEF8);
      sub_10000D8A4(v1, (v58 + *(v60 + 44)));
      sub_10000EB3C(v58, v15, &qword_10003D110, &qword_10002DED0);
      swift_storeEnumTagMultiPayload();
      sub_10000E7B4();
      sub_10000EAD4();
      sub_10000ECF8();
      sub_100029B6C();
      sub_10000338C(v58, &qword_10003D110, &qword_10002DED0);
      return (*(v36 + 8))(v2, v33);
    }
  }
}

id sub_10000D828()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = [v0 RGBAValue];

  v2 = objc_allocWithZone(WFWorkflowIcon);
  return sub_1000129C8(v1, 0xF000u, 0, 0xF000000000000000);
}

uint64_t sub_10000D8A4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000026A4(&qword_10003D118, &qword_10002DED8);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v25 - v10;
  v12 = sub_100029ECC();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v25 - v18;
  sub_100029EBC();
  sub_10000DB1C(a1, v11);
  v20 = *(v5 + 44);
  *&v11[v20] = swift_getKeyPath();
  sub_1000026A4(&qword_10003CA78, &qword_10002DF40);
  swift_storeEnumTagMultiPayload();
  v21 = v13[2];
  v21(v17, v19, v12);
  sub_10000EB3C(v11, v9, &qword_10003D118, &qword_10002DED8);
  v21(a2, v17, v12);
  v22 = sub_1000026A4(&qword_10003D1A8, &qword_10002DFC0);
  sub_10000EB3C(v9, &a2[*(v22 + 48)], &qword_10003D118, &qword_10002DED8);
  sub_10000338C(v11, &qword_10003D118, &qword_10002DED8);
  v23 = v13[1];
  v23(v19, v12);
  sub_10000338C(v9, &qword_10003D118, &qword_10002DED8);
  return (v23)(v17, v12);
}

uint64_t sub_10000DB1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v89 = sub_100029E6C();
  v88 = *(v89 - 8);
  v3 = *(v88 + 64);
  __chkstk_darwin(v89);
  v87 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100029D7C();
  v78 = *(v79 - 8);
  v5 = *(v78 + 64);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100029F0C();
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  v8 = __chkstk_darwin(v84);
  v82 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v93 = &v76 - v10;
  v11 = sub_10002989C();
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  v13 = __chkstk_darwin(v11);
  v80 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v13);
  v90 = (&v76 - v15);
  v107 = type metadata accessor for WidgetSStackView(0);
  v16 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1000026A4(&qword_10003D190, &qword_10002F8B0);
  v86 = *(v105 - 8);
  v18 = *(v86 + 64);
  __chkstk_darwin(v105);
  v85 = &v76 - v19;
  v102 = sub_1000026A4(&qword_10003D198, &unk_10002DFB0);
  v20 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v104 = &v76 - v21;
  v22 = sub_1000298DC();
  v97 = *(v22 - 8);
  v98 = v22;
  v23 = *(v97 + 64);
  __chkstk_darwin(v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000298CC();
  v94 = *(v26 - 8);
  v95 = v26;
  v27 = *(v94 + 64);
  __chkstk_darwin(v26);
  v96 = (&v76 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v103 = sub_1000298EC();
  v100 = *(v103 - 8);
  v29 = *(v100 + 8);
  __chkstk_darwin(v103);
  v99 = &v76 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_100029F4C();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = __chkstk_darwin(v31);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v76 - v37;
  v101 = a1;
  sub_10000CE2C(&v76 - v37);
  v39 = v32[13];
  v39(v36, enum case for WidgetFamily.accessoryInline(_:), v31);
  sub_10000EB98(&qword_10003D1A0, &type metadata accessor for WidgetFamily);
  sub_10002A14C();
  sub_10002A14C();
  v40 = v32[1];
  v40(v36, v31);
  v40(v38, v31);
  if (v108 == v110 || (sub_10000CE2C(v38), v39(v36, enum case for WidgetFamily.accessoryRectangular(_:), v31), sub_10002A14C(), sub_10002A14C(), v40(v36, v31), v40(v38, v31), v108 == v110))
  {
    v41 = sub_10000D828();
    v42 = [v41 icon];

    v43 = v95;
    v44 = v96;
    *v96 = 0x403E000000000000;
    (*(v94 + 104))(v44, enum case for IconSize.customHeight(_:), v43);
    *v25 = [objc_opt_self() whiteColor];
    v25[8] = 0;
    (*(v97 + 104))(v25, enum case for IconView.DisplayMode.customColor(_:), v98);
    v45 = v99;
    sub_1000298FC();
    v46 = v100;
    v47 = v103;
    (*(v100 + 2))(v104, v45, v103);
    swift_storeEnumTagMultiPayload();
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView);
    v48 = sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView);
    v108 = v107;
    v109 = v48;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (*(v46 + 1))(v45, v47);
  }

  else
  {
    v50 = sub_100029DAC();
    v51 = v90;
    v52 = v91;
    *v90 = v50;
    v53 = enum case for SStackFill.color(_:);
    v54 = *(v52 + 104);
    v54(v51, enum case for SStackFill.color(_:), v92);
    v55 = v93;
    sub_10000CFFC(v93);
    v56 = v82;
    sub_100029EEC();
    v57 = sub_100029EDC();
    v58 = *(v83 + 8);
    v59 = v84;
    v58(v56, v84);
    v100 = v58;
    v58(v55, v59);
    if (v57)
    {
      (*(v78 + 104))(v77, enum case for Color.RGBColorSpace.sRGB(_:), v79);
      v60 = sub_100029DDC();
    }

    else
    {
      sub_100029DAC();
      v60 = sub_100029DBC();
    }

    v61 = v80;
    *v80 = v60;
    v62 = v92;
    v54(v61, v53, v92);
    v63 = *(v91 + 32);
    v64 = v81;
    v63(v81, v90, v62);
    type metadata accessor for WidgetSStackView.Content(0);
    swift_storeEnumTagMultiPayload();
    v63((v64 + *(v107 + 20)), v61, v62);
    v65 = v93;
    sub_10000CFFC(v93);
    sub_100029EFC();
    LOBYTE(v63) = sub_100029EDC();
    v66 = v100;
    v100(v56, v59);
    v66(v65, v59);
    v67 = v88;
    v68 = &enum case for BlendMode.destinationOut(_:);
    if ((v63 & 1) == 0)
    {
      v68 = &enum case for BlendMode.normal(_:);
    }

    v69 = v87;
    v70 = v89;
    (*(v88 + 104))(v87, *v68, v89);
    v71 = sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView);
    v72 = v85;
    v73 = v107;
    sub_100029CBC();
    (*(v67 + 8))(v69, v70);
    sub_10000EBE0(v64, type metadata accessor for WidgetSStackView);
    v74 = v86;
    v75 = v105;
    (*(v86 + 16))(v104, v72, v105);
    swift_storeEnumTagMultiPayload();
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView);
    v108 = v73;
    v109 = v71;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    return (*(v74 + 8))(v72, v75);
  }
}

unint64_t sub_10000E7B4()
{
  result = qword_10003D140;
  if (!qword_10003D140)
  {
    sub_1000028A4(&qword_10003D130, &qword_10002DEF0);
    sub_10000EB98(&qword_10003D148, type metadata accessor for RunShortcutRectangularWidgetView);
    sub_10000E870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D140);
  }

  return result;
}

unint64_t sub_10000E870()
{
  result = qword_10003D150;
  if (!qword_10003D150)
  {
    sub_1000028A4(&qword_10003D118, &qword_10002DED8);
    sub_10000E92C();
    sub_10000EB98(&qword_10003D180, type metadata accessor for ComplicationPaddingModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D150);
  }

  return result;
}

unint64_t sub_10000E92C()
{
  result = qword_10003D158;
  if (!qword_10003D158)
  {
    sub_1000028A4(&qword_10003D160, &qword_10002DF00);
    sub_10000E9B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D158);
  }

  return result;
}

unint64_t sub_10000E9B0()
{
  result = qword_10003D168;
  if (!qword_10003D168)
  {
    sub_1000028A4(&qword_10003D170, &qword_10002DF08);
    sub_10000EB98(&qword_10003D058, &type metadata accessor for IconView);
    type metadata accessor for WidgetSStackView(255);
    sub_10000EB98(&qword_10003D178, type metadata accessor for WidgetSStackView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D168);
  }

  return result;
}

unint64_t sub_10000EAD4()
{
  result = qword_10003D188;
  if (!qword_10003D188)
  {
    sub_1000028A4(&qword_10003D110, &qword_10002DED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D188);
  }

  return result;
}

uint64_t sub_10000EB3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000ED18(a1, a2, a3, a4);
  sub_10000350C(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

uint64_t sub_10000EB98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000EBE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000350C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_10000EC3C()
{
  result = qword_10003D1B0;
  if (!qword_10003D1B0)
  {
    sub_1000028A4(&qword_10003D1B8, &qword_10002DFC8);
    sub_10000E7B4();
    sub_10000EAD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D1B0);
  }

  return result;
}

uint64_t sub_10000ECF8()
{
  v2 = *(v1 - 104);
  v3 = *(v1 - 96);
  result = v0;
  v5 = *(v1 - 88);
  return result;
}

uint64_t sub_10000ED18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1000026A4(a3, a4);
}

unint64_t StaticString._asString.getter(unint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    if (result)
    {
      return sub_10002A11C();
    }

    __break(1u);
  }

  if (HIDWORD(result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    if (result >> 16 <= 0x10)
    {
      return sub_10002A11C();
    }

LABEL_9:
    __break(1u);
    return sub_10002A11C();
  }

  __break(1u);
  return result;
}

uint64_t *NSBundle._current.unsafeMutableAddressor()
{
  if (qword_10003C8C8 != -1)
  {
    sub_10000EF48();
  }

  return &static NSBundle._current;
}

id sub_10000EE70()
{
  _s2__CMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static NSBundle._current = result;
  return result;
}

id static NSBundle._current.getter()
{
  if (qword_10003C8C8 != -1)
  {
    sub_10000EF48();
  }

  v1 = static NSBundle._current;

  return v1;
}

uint64_t sub_10000EF48()
{

  return swift_once();
}

unint64_t sub_10000EF6C()
{
  result = qword_10003D258;
  if (!qword_10003D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D258);
  }

  return result;
}

unint64_t sub_10000EFC4()
{
  result = qword_10003D260;
  if (!qword_10003D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D260);
  }

  return result;
}

unint64_t sub_10000F01C()
{
  result = qword_10003D268;
  if (!qword_10003D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D268);
  }

  return result;
}

unint64_t sub_10000F074()
{
  result = qword_10003D270;
  if (!qword_10003D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D270);
  }

  return result;
}

uint64_t sub_10000F118()
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
  sub_10000FBA4(v9, qword_100041498);
  sub_10000FB6C(v9, qword_100041498);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_10000F300()
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

uint64_t sub_10000F700@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000297AC();
  v3 = sub_10000FB6C(v2, qword_100041498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_10000F7AC(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to WidgetConfigurationIntent.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10000A670();
  *v5 = v2;
  v5[1] = sub_10000F858;

  return WidgetConfigurationIntent.perform()(a2, v6);
}

uint64_t sub_10000F858()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_10000F960@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000F300();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000F988(uint64_t a1)
{
  v2 = sub_10000EF6C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_10000F9C4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_10000FA04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10000FA50()
{
  result = qword_10003DAA0;
  if (!qword_10003DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAA0);
  }

  return result;
}

uint64_t sub_10000FAC4()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  **(v0 + 16) = qword_1000415B8;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10000FB6C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_10000FBA4(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10000FC08(uint64_t a1)
{

  return sub_1000026EC(a1, 1, 1, v1);
}

uint64_t sub_10000FC50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100029B9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100029BAC();
  if (sub_100029BBC())
  {
    v7 = 0.97;
  }

  else
  {
    v7 = 1.0;
  }

  sub_100029E7C();
  v9 = v8;
  v11 = v10;
  (*(v3 + 32))(a1, v6, v2);
  result = sub_1000026A4(&qword_10003D280, qword_10002E1C0);
  v13 = a1 + *(result + 36);
  *v13 = v7;
  *(v13 + 8) = v7;
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  return result;
}

unint64_t sub_10000FD84()
{
  result = qword_10003D288;
  if (!qword_10003D288)
  {
    sub_1000028A4(&qword_10003D280, qword_10002E1C0);
    sub_10000FE10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D288);
  }

  return result;
}

unint64_t sub_10000FE10()
{
  result = qword_10003D290;
  if (!qword_10003D290)
  {
    sub_100029B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D290);
  }

  return result;
}

unint64_t sub_10000FE6C()
{
  result = qword_10003D298;
  if (!qword_10003D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D298);
  }

  return result;
}

double sub_10000FEC0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  sub_10002A0EC();

  v5 = a1;
  v6 = [v5 name];
  sub_10002A0EC();

  sub_10001331C(v5);
  [v5 color];
  [v5 glyphCharacter];
  sub_100013380(v5);
  sub_1000110CC(v9);
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();
  sub_10002934C();

  v7 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v7;
  result = *&v10;
  *(a2 + 32) = v10;
  *(a2 + 48) = v11;
  return result;
}

id sub_100010044(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  sub_10002933C();
  v5 = sub_10002A0DC();

  v6 = [v3 referenceForWorkflowID:v5];

  if (!v6)
  {
    v7 = a1[1];
    sub_10002933C();
    v8 = sub_10002A0DC();

    v6 = [v3 uniqueVisibleReferenceForWorkflowName:v8];
  }

  return v6;
}

uint64_t sub_100010110()
{
  v1 = *v0;
  sub_10002933C();
  return v3;
}

id sub_100010144()
{
  v1 = v0;
  v2 = v0[3];
  sub_10002933C();
  if ((v32 & 1) == 0)
  {
    v3 = v1[4];
    sub_10002933C();
    if ((v31 & 0x8000000000000000) == 0)
    {
      if (!(v31 >> 16))
      {
        v20 = objc_allocWithZone(WFWorkflowIcon);
        v21 = v31;
        v22 = v31;
        return sub_1000129C8(v21, v22, 0, 0xF000000000000000);
      }

      goto LABEL_33;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    v17 = sub_10002A26C();
    goto LABEL_17;
  }

  if (qword_10003C940 != -1)
  {
    sub_10000B164();
  }

  sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002D840;
  v5 = *v1;
  sub_10002933C();
  *(v4 + 32) = v31;
  *(v4 + 40) = v32;
  v6 = sub_1000284B4();

  if (sub_1000129A4(v6))
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v7 = sub_10002A26C();
    }

    else
    {
      if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_32;
      }

      v7 = *(v6 + 32);
    }

    v8 = v7;

    v9 = [v8 icon];
    goto LABEL_24;
  }

  v10 = v1[6];
  sub_10002933C();
  if (v32)
  {
    v11 = sub_10002981C();
    v13 = v12;

    if (v13 >> 60 != 15)
    {
      sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr);
      sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr);
      v30 = sub_10002A20C();
      sub_10000ADEC(v11, v13);
      if (v30)
      {
        v8 = [v30 previewIcon];

        goto LABEL_22;
      }
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10002D840;
  sub_10002933C();
  *(v14 + 32) = v31;
  *(v14 + 40) = v32;
  v15 = sub_1000284B4();

  result = sub_1000129A4(v15);
  if (!result)
  {

    v23 = [objc_opt_self() clearBackground];
    v24 = objc_allocWithZone(WFSymbolIcon);
    v8 = sub_100012A5C(0x74732E322E707061, 0xEE0064332E6B6361, v23);
    goto LABEL_22;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    goto LABEL_34;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
LABEL_17:
    v18 = v17;

    v19 = [v18 icon];
    v8 = [v19 icon];

LABEL_22:
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    if (!v25)
    {

      v29 = objc_allocWithZone(WFWorkflowIcon);
      v21 = 0;
      v22 = -4096;
      return sub_1000129C8(v21, v22, 0, 0xF000000000000000);
    }

    v26 = [v25 glyph];
    v27 = objc_allocWithZone(WFWorkflowIcon);
    v9 = sub_1000129C8(0, v26, 0, 0xF000000000000000);
LABEL_24:
    v28 = v9;

    return v28;
  }

  __break(1u);
  return result;
}

uint64_t sub_100010588()
{
  v30 = sub_10002A04C();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002A0AC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - v7;
  v8 = sub_10002978C();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002988C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10002A0CC();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v28 = sub_1000297AC();
  v17 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v18 = sub_10002960C();
  sub_10000FBA4(v18, qword_1000414B0);
  v27 = sub_10000FB6C(v18, qword_1000414B0);
  sub_10002A05C();
  sub_10002987C();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v9 + 104);
  v25 = v9 + 104;
  v20(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000297BC();
  sub_10002A09C();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10002A08C(v32);
  v21 = v29;
  v22 = v30;
  (*(v0 + 104))(v29, enum case for String.LocalizationValue.Placeholder.int(_:), v30);
  sub_10002A06C();
  (*(v0 + 8))(v21, v22);
  v33._countAndFlagsBits = 0x756374726F687320;
  v33._object = 0xEA00000000007374;
  sub_10002A08C(v33);
  sub_10002A0BC();
  sub_10002987C();
  v20(v12, v19, v26);
  v23 = v31;
  sub_1000297BC();
  sub_1000026EC(v23, 0, 1, v28);
  return sub_1000295FC();
}

uint64_t sub_1000109FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  v4 = sub_100002910(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v10 = sub_100002910(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v42 = &v41 - v13;
  v41 = sub_1000297AC();
  v14 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  sub_100002900();
  v15 = sub_10002A0AC();
  v16 = sub_100002910(v15);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  sub_100002900();
  v19 = objc_autoreleasePoolPush();
  v20 = *(v1 + 40);
  sub_10002933C();
  if (v45)
  {
    v21 = sub_100010DD8(31.0, 31.0);
    v23 = v22;
  }

  else
  {
    v24 = objc_opt_self();
    v25 = sub_100010144();
    v26 = [v24 imageWithIcon:v25 size:{31.0, 31.0}];

    if (v26)
    {
      v21 = sub_10001344C(v26);
      v23 = v27;
    }

    else
    {
      v21 = 0;
      v23 = 0xF000000000000000;
    }
  }

  objc_autoreleasePoolPop(v19);
  v28 = *(v2 + 48);
  sub_10002933C();
  if (v45 && (v29 = sub_10002981C(), v31 = v30, , v31 >> 60 != 15) && (sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr), sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr), v38 = sub_10002A20C(), sub_10000ADEC(v29, v31), v38))
  {
    v39 = [v38 name];

    v34 = sub_10002A0EC();
    v33 = v40;
  }

  else
  {
    v32 = *(v2 + 8);
    sub_10002933C();
    v34 = v44;
    v33 = v45;
  }

  v35 = 1;
  sub_10002A09C();
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  sub_10002A08C(v46);
  v47._countAndFlagsBits = v34;
  v47._object = v33;
  sub_10002A07C(v47);

  v48._countAndFlagsBits = 0;
  v48._object = 0xE000000000000000;
  sub_10002A08C(v48);
  sub_10002979C();
  sub_1000026EC(v42, 1, 1, v41);
  if (v23 >> 60 != 15)
  {
    sub_1000133F4(v21, v23);
    sub_1000294BC();
    v35 = 0;
  }

  v36 = sub_1000294CC();
  sub_1000026EC(v8, v35, 1, v36);
  sub_1000294DC();
  return sub_10000ADEC(v21, v23);
}

void *sub_100010DD8(double a1, double a2)
{
  v4 = [objc_opt_self() mainScreen];
  [v4 scale];
  v6 = v5;

  v7 = [objc_allocWithZone(ISImageDescriptor) initWithSize:a1 scale:{a2, v6}];
  sub_10000ADAC(0, &qword_10003D348, ISIcon_ptr);

  v8 = sub_100010FA8();
  v9 = [v8 prepareImageForDescriptor:v7];
  v10 = v9;
  if (!v9)
  {

    return v10;
  }

  v11 = [v9 CGImage];

  if (!v11)
  {

    return 0;
  }

  v12 = [objc_opt_self() imageWithCGImage:v11];
  v13 = [v12 PNGRepresentation];
  if (!v13)
  {

    return 0;
  }

  v14 = v13;
  v10 = sub_10002983C();

  return v10;
}

id sub_100010FA8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_10002A0DC();

  v2 = [v0 initWithBundleIdentifier:v1];

  return v2;
}

uint64_t sub_10001101C()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  qword_1000414C8 = qword_1000415B8;
}

uint64_t sub_100011080()
{
  if (qword_10003C940 != -1)
  {
    sub_10000B164();
  }
}

uint64_t sub_1000110CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000297AC();
  v3 = sub_100002910(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100002900();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);
  sub_10002977C();
  v6 = sub_10002936C();
  sub_10002977C();
  v7 = sub_10002936C();
  sub_1000026A4(&qword_10003D310, &qword_10002E638);
  sub_10002977C();
  v8 = sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);
  sub_10002977C();
  v9 = sub_10002937C();
  sub_10002977C();
  v10 = sub_10002937C();
  sub_10002977C();
  v11 = sub_10002936C();
  sub_10002977C();
  result = sub_10002936C();
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = result;
  return result;
}

uint64_t sub_1000112EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_1000134DC();
}

uint64_t sub_100011300()
{
  sub_100006164();
  v1 = *(v0 + 80);
  v2 = sub_100028724();
  if (v2)
  {
    sub_10000FEC0(v2, v0 + 16);
    v3 = *(v0 + 16);
    v4 = *(v0 + 32);
    v5 = *(v0 + 48);
    v6 = *(v0 + 64);
  }

  else
  {
    v6 = 0;
    v3 = 0uLL;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  v7 = *(v0 + 72);
  *v7 = v3;
  *(v7 + 16) = v4;
  *(v7 + 32) = v5;
  *(v7 + 48) = v6;
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_100011398()
{
  sub_100006164();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1000134D8;

  return sub_10001142C(v2);
}

uint64_t sub_10001142C(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  return sub_1000134DC();
}

char *sub_100011440()
{
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = sub_1000284B4();
  v7 = sub_1000129A4(v6);
  if (v7)
  {
    v8 = v7;
    result = sub_10001353C(v7);
    if (v8 < 0)
    {
      __break(1u);
      return result;
    }

    sub_100013574();
    do
    {
      if (v3)
      {
        v10 = sub_10002A26C();
      }

      else
      {
        v10 = *(v6 + 8 * v1 + 32);
      }

      sub_10000FEC0(v10, v0 + 16);
      sub_100013560();
      if (v12)
      {
        sub_100012D0C((v11 > 1), v2, 1);
        v5 = v15;
      }

      sub_100013510();
    }

    while (!v13);
  }

  else
  {

    v5 = &_swiftEmptyArrayStorage;
  }

  sub_100013594();

  return v14(v5);
}

uint64_t sub_100011564(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000134D8;

  return sub_10001160C(a1, a2);
}

uint64_t sub_10001160C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return sub_1000134DC();
}

char *sub_100011624()
{
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = sub_1000288CC();
  v8 = sub_1000129A4(v7);
  if (v8)
  {
    v9 = v8;
    result = sub_10001353C(v8);
    if (v9 < 0)
    {
      __break(1u);
      return result;
    }

    sub_100013574();
    do
    {
      if (v3)
      {
        v11 = sub_10002A26C();
      }

      else
      {
        v11 = *(v7 + 8 * v1 + 32);
      }

      sub_10000FEC0(v11, (v0 + 2));
      sub_100013560();
      if (v13)
      {
        sub_100012D0C((v12 > 1), v2, 1);
        v5 = v16;
      }

      sub_100013510();
    }

    while (!v14);
  }

  else
  {

    v5 = &_swiftEmptyArrayStorage;
  }

  sub_100013594();

  return v15(v5);
}

uint64_t sub_100011760()
{
  sub_100006164();
  v1 = *(v0 + 16);
  sub_1000117BC();
  sub_100013594();

  return v2();
}

char *sub_1000117BC()
{
  v0 = sub_100028844();
  v1 = sub_1000129A4(v0);
  if (!v1)
  {

    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = sub_100012D0C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        v5 = sub_10002A26C();
      }

      else
      {
        v5 = *(v0 + 8 * v4 + 32);
      }

      sub_10000FEC0(v5, v12);
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_100012D0C((v6 > 1), v7 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v7 + 1;
      v8 = &_swiftEmptyArrayStorage[7 * v7];
      v9 = v12[0];
      v10 = v12[1];
      v11 = v12[2];
      *(v8 + 10) = v13;
      *(v8 + 3) = v10;
      *(v8 + 4) = v11;
      *(v8 + 2) = v9;
    }

    while (v2 != v4);

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000118F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a1;
  v7 = *v3;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1000119A4;

  return sub_100011564(a2, a3);
}

uint64_t sub_1000119A4(uint64_t a1)
{
  sub_100013588();
  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *v2;
  sub_1000134EC();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

unint64_t sub_100011AAC()
{
  result = qword_10003D2A0;
  if (!qword_10003D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2A0);
  }

  return result;
}

unint64_t sub_100011B04()
{
  result = qword_10003D2A8;
  if (!qword_10003D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2A8);
  }

  return result;
}

uint64_t sub_100011B5C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100011080();
  *a1 = result;
  return result;
}

uint64_t sub_100011B84()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000134D8;

  return sub_100011398();
}

uint64_t sub_100011C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1000134C0;

  return sub_10001174C(v3);
}

uint64_t sub_100011CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100011D78;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_100011D78()
{
  sub_100006164();
  v3 = v2;
  sub_100013588();
  v5 = *(v4 + 16);
  v6 = *v1;
  sub_1000134EC();
  *v7 = v6;

  sub_100013594();
  if (!v0)
  {
    v8 = v3;
  }

  return v9(v8);
}

unint64_t sub_100011E68()
{
  result = qword_10003D2B0;
  if (!qword_10003D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2B0);
  }

  return result;
}

unint64_t sub_100011EC0()
{
  result = qword_10003DAB0;
  if (!qword_10003DAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DAB0);
  }

  return result;
}

unint64_t sub_100011F18()
{
  result = qword_10003D2B8;
  if (!qword_10003D2B8)
  {
    sub_1000028A4(&qword_10003DAC0, qword_10002E280);
    sub_100011EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2B8);
  }

  return result;
}

uint64_t sub_100011F9C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10000FE6C();
  *v6 = v2;
  v6[1] = sub_100012050;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100012050()
{
  sub_100006164();
  sub_100013588();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_1000134EC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_100012134(uint64_t a1)
{
  *(v2 + 72) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 80) = v4;
  *v4 = v2;
  v4[1] = sub_1000121D4;

  return sub_1000112EC(v2 + 16, v3);
}

uint64_t sub_1000121D4()
{
  v1 = *v0;
  v2 = *v0;
  sub_1000134EC();
  *v3 = v2;
  v4 = v1[10];
  v5 = v1[9];
  v6 = *v0;
  *v3 = *v0;

  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  *(v5 + 48) = v1[8];
  *(v5 + 16) = v8;
  *(v5 + 32) = v9;
  *v5 = v7;
  v10 = v6[1];

  return v10();
}

double sub_10001230C@<D0>(uint64_t a1@<X8>)
{
  sub_1000110CC(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

unint64_t sub_10001235C()
{
  result = qword_10003D2C0;
  if (!qword_10003D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2C0);
  }

  return result;
}

unint64_t sub_1000123B4()
{
  result = qword_10003D2C8;
  if (!qword_10003D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2C8);
  }

  return result;
}

unint64_t sub_10001240C()
{
  result = qword_10003D2D0;
  if (!qword_10003D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2D0);
  }

  return result;
}

uint64_t sub_10001246C@<X0>(void *a1@<X8>)
{
  if (qword_10003C8E0 != -1)
  {
    swift_once();
  }

  *a1 = qword_1000414C8;
}

unint64_t sub_1000124DC()
{
  result = qword_10003D2D8;
  if (!qword_10003D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2D8);
  }

  return result;
}

unint64_t sub_100012534()
{
  result = qword_10003D2E0;
  if (!qword_10003D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2E0);
  }

  return result;
}

unint64_t sub_10001258C()
{
  result = qword_10003D2E8;
  if (!qword_10003D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2E8);
  }

  return result;
}

uint64_t sub_1000125EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100010110();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100012614@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8D8 != -1)
  {
    swift_once();
  }

  v2 = sub_10002960C();
  v3 = sub_10000FB6C(v2, qword_1000414B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000126C0()
{
  result = qword_10003D2F0;
  if (!qword_10003D2F0)
  {
    sub_1000028A4(&qword_10003D2F8, &qword_10002E4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D2F0);
  }

  return result;
}

uint64_t sub_100012724(uint64_t a1)
{
  v2 = sub_10000FA50();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100012774()
{
  result = qword_10003D300;
  if (!qword_10003D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D300);
  }

  return result;
}

uint64_t sub_1000127CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_100012050;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100012890(uint64_t a1)
{
  v2 = sub_10001258C();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

__n128 sub_1000128DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000128F8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100012938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000129A4(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return _CocoaArrayWrapper.endIndex.getter(a1);
}

id sub_1000129C8(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a3, a4);
  }

  v10 = [v4 initWithBackgroundColorValue:a1 glyphCharacter:a2 customImageData:isa];

  return v10;
}

id sub_100012A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_10002A0DC();

  v6 = [v3 initWithSymbolName:v5 background:a3];

  return v6;
}

uint64_t sub_100012AC4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RunShortcutWidgetEntry(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for RunShortcutWidgetEntry(0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

char *sub_100012B98(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000134FC(a3, result);
  }

  return result;
}

char *sub_100012BBC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1000134FC(a3, result);
  }

  return result;
}

uint64_t sub_100012BDC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1000026A4(&qword_10003D330, &qword_10002FCD0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1000026A4(&qword_10003D330, &qword_10002FCD0);

    return _swift_arrayInitWithTakeFrontToBack(a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return _swift_arrayInitWithTakeBackToFront(a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_100012CC8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

size_t sub_100012CEC(size_t a1, int64_t a2, char a3)
{
  result = sub_100012D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100012D0C(char *a1, int64_t a2, char a3)
{
  result = sub_100012F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100012D2C(char *a1, int64_t a2, char a3)
{
  result = sub_100013038(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100012D4C(size_t a1, int64_t a2, char a3)
{
  result = sub_100013150(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_100012D6C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000026A4(&qword_10003CF38, &unk_10002DD30);
  v10 = *(type metadata accessor for RunShortcutWidgetEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for RunShortcutWidgetEntry(0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100012AC4(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100012F20(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026A4(&qword_10003D320, &qword_10002E648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100013038(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000026A4(&qword_10003D338, &unk_10002E670);
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
    if (v10 != a4 || &v13[24 * v8] <= v12)
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100013150(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  sub_1000026A4(&qword_10003D328, &unk_10002E660);
  v10 = *(sub_1000026A4(&qword_10003D330, &qword_10002FCD0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1000026A4(&qword_10003D330, &qword_10002FCD0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_100012BDC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_10001331C(void *a1)
{
  v1 = [a1 subtitle];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_100013380(void *a1)
{
  v2 = [a1 associatedAppBundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_1000133F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10001344C(void *a1)
{
  v2 = [a1 PNGRepresentation];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10002983C();

  return v3;
}

__n128 sub_100013510()
{
  *(v0 + 16) = v2;
  v5 = v0 + v4 * v3;
  result = *(v1 + 16);
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  *(v5 + 80) = *(v1 + 64);
  *(v5 + 48) = v7;
  *(v5 + 64) = v8;
  *(v5 + 32) = result;
  return result;
}

char *sub_10001353C(uint64_t a1)
{

  return sub_100012D0C(0, a1 & ~(a1 >> 63), 0);
}

unint64_t sub_1000135A4()
{
  result = qword_10003DA80;
  if (!qword_10003DA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003DA80);
  }

  return result;
}

uint64_t sub_10001361C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v5 = sub_100029E9C();
  v6 = sub_1000028EC(v5);
  v101 = v7;
  v102 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10001543C();
  v100 = v10;
  v11 = sub_10002978C();
  v105 = sub_1000028EC(v11);
  v106 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v105);
  sub_10001543C();
  v91 = v15;
  v16 = sub_10002988C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  sub_10001543C();
  sub_100015494(v18);
  v19 = sub_10002A0CC();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1000297AC();
  v22 = sub_1000028EC(v21);
  v89 = v23;
  v90 = v22;
  v25 = *(v24 + 64);
  __chkstk_darwin(v22);
  sub_10001543C();
  sub_100015494(v26);
  v85 = sub_1000026A4(&qword_10003D360, &qword_10002E7E0);
  sub_1000028EC(v85);
  v86 = v27;
  v29 = *(v28 + 64);
  sub_100003534();
  __chkstk_darwin(v30);
  v32 = &v80 - v31;
  v33 = sub_1000026A4(&qword_10003D368, &qword_10002E7E8);
  v92 = sub_1000028EC(v33);
  v93 = v34;
  v36 = *(v35 + 64);
  sub_100003534();
  __chkstk_darwin(v37);
  sub_1000154B8();
  v104 = v38;
  v39 = sub_1000026A4(&qword_10003D370, &qword_10002E7F0);
  v94 = sub_1000028EC(v39);
  v95 = v40;
  v42 = *(v41 + 64);
  sub_100003534();
  __chkstk_darwin(v43);
  sub_1000154B8();
  sub_100015494(v44);
  v45 = sub_1000026A4(&qword_10003D378, &qword_10002E7F8);
  v96 = sub_1000028EC(v45);
  v97 = v46;
  v48 = *(v47 + 64);
  sub_100003534();
  __chkstk_darwin(v49);
  sub_1000154B8();
  sub_100015494(v50);
  v51 = sub_1000026A4(&qword_10003D380, &qword_10002E800);
  v98 = sub_1000028EC(v51);
  v99 = v52;
  v54 = *(v53 + 64);
  sub_100003534();
  __chkstk_darwin(v55);
  sub_1000154B8();
  sub_100015494(v56);
  v57 = swift_allocObject();
  *(v57 + 16) = a1;
  a2 &= 1u;
  *(v57 + 24) = a2;

  sub_100015104(a1, a2);
  sub_1000026A4(&qword_10003D388, &qword_10002E808);
  sub_100015110();
  v58 = sub_1000028A4(&qword_10003D398, &unk_10002E810);
  v59 = sub_100005EEC(&qword_10003D3A0, &qword_10003D398, &unk_10002E810);
  v107 = v58;
  v108 = v59;
  sub_1000154A0();
  sub_100029FFC();
  sub_10002A05C();
  sub_10002987C();
  v82 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v60 = *(v106 + 104);
  v106 += 104;
  v81 = v60;
  v61 = v91;
  v60(v91);
  sub_10000608C();
  v62 = v83;
  sub_100015468();
  sub_1000060E8();
  v64 = sub_100005EEC(v63, &qword_10003D360, &qword_10002E7E0);
  v65 = v85;
  sub_100029BFC();
  v66 = v90;
  v89 = *(v89 + 8);
  (v89)(v62, v90);
  (*(v86 + 8))(v32, v65);
  sub_10002A05C();
  sub_10002987C();
  v81(v61, v82, v105);
  sub_10000608C();
  sub_100015468();
  v107 = v65;
  v108 = v64;
  sub_1000060D0();
  v67 = sub_1000154A0();
  v68 = v84;
  v69 = v92;
  v70 = v104;
  sub_100029BEC();
  (v89)(v62, v66);
  (*(v93 + 8))(v70, v69);
  v71 = v100;
  sub_100029E8C();
  v107 = v69;
  v108 = v67;
  sub_1000060B8();
  v72 = sub_1000154A0();
  v73 = v87;
  v74 = v94;
  sub_100029BDC();
  (*(v101 + 8))(v71, v102);
  (*(v95 + 8))(v68, v74);
  v107 = v74;
  v108 = v72;
  sub_100015450();
  v75 = sub_1000154A0();
  v76 = v88;
  v77 = v96;
  sub_100029BCC();
  (*(v97 + 8))(v73, v77);
  v107 = v77;
  v108 = v75;
  sub_1000060A0();
  sub_1000154A0();
  v78 = v98;
  sub_100029C0C();
  return (*(v99 + 8))(v76, v78);
}

uint64_t sub_100013E14(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = sub_1000026A4(&qword_10003D398, &unk_10002E810);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v15 - v9;
  v12 = *a1;
  v11 = a1[1];
  v15[0] = v12;
  v15[1] = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  *(v13 + 32) = a2;
  a3 &= 1u;
  *(v13 + 40) = a3;
  swift_retain_n();
  swift_retain_n();
  sub_100015104(a2, a3);
  sub_1000026A4(&qword_10003CB40, &qword_10002D820);
  sub_100005EEC(&qword_10003CB38, &qword_10003CB40, &qword_10002D820);
  sub_1000135A4();
  sub_100029EAC();
  sub_100005EEC(&qword_10003D3A0, &qword_10003D398, &unk_10002E810);
  sub_100029B7C();
  return (*(v7 + 8))(v10, v6);
}

void sub_100014020(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_100029AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v25[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002939C();
  if (a4)
  {
    v11 = *&a3;
  }

  else
  {

    sub_10002A1FC();
    v12 = sub_100029C3C();
    sub_10002993C();

    sub_100029AEC();
    swift_getAtKeyPath();
    sub_10000C470(a3, 0);
    (*(v7 + 8))(v10, v6);
    v11 = v24;
  }

  sub_100014254(v25, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v19 = __chkstk_darwin(v13);
  *(&v24 - 4) = v19;
  *(&v24 - 3) = v16;
  *(&v24 - 16) = v20;
  *(&v24 - 1) = v21;
  *(&v24 - 4) = __chkstk_darwin(v19);
  *(&v24 - 3) = v16;
  *(&v24 - 16) = v22;
  *(&v24 - 1) = v23;
  sub_100029E0C();
  sub_100015204(v14, v16, v18);
}

double sub_100014254(void *a1, double a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = a1[5];
    v6 = a1[6];
    v8 = a1[3];
    v7 = a1[4];
    v10 = a1[1];
    v9 = a1[2];
    v31 = v4;
    v11 = *(a1 + 5);
    v32 = *(a1 + 1);
    v33 = *(a1 + 3);
    v34 = v11;

    sub_10002933C();
    if (v30 && (v12 = sub_10002981C(), v14 = v13, , v14 >> 60 != 15) && (sub_10000ADAC(0, &unk_10003DBE0, NSKeyedUnarchiver_ptr), sub_10000ADAC(0, &qword_10003CF18, WFConfiguredSystemAction_ptr), v18 = sub_10002A20C(), sub_10000ADEC(v12, v14), v18))
    {
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = qword_10003C940;
        v22 = v18;
        if (v21 != -1)
        {
          sub_10000B164();
        }

        sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
        v23 = swift_allocObject();
        *(v23 + 16) = xmmword_10002D840;
        v24 = [v20 identifier];
        v25 = sub_10002A0EC();
        v27 = v26;

        *(v23 + 32) = v25;
        *(v23 + 40) = v27;
        v28 = sub_1000284B4();

        if (sub_1000134BC(v28))
        {

          sub_100012CC8(0, (v28 & 0xC000000000000001) == 0, v28);
          if ((v28 & 0xC000000000000001) != 0)
          {
            sub_10002A26C();
          }

          else
          {
            v29 = *(v28 + 32);
          }

          sub_1000152B4(a1);
          sub_1000152B4(a1);
        }

        else
        {
          sub_1000152B4(a1);
          sub_1000152B4(a1);
        }
      }

      else
      {
        sub_1000152B4(a1);
        sub_1000152B4(a1);
      }
    }

    else
    {
      if (qword_10003C940 != -1)
      {
        sub_10000B164();
      }

      v15 = sub_100010044(&v31);
      if (v15)
      {
        v16 = objc_allocWithZone(WFConfiguredSystemWorkflowAction);
        sub_100014EC0(v15, 0, 0xF000000000000000);
      }

      sub_1000152B4(a1);
      sub_1000152B4(a1);
    }
  }

  return a2;
}

uint64_t sub_1000145C8@<X0>(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = a2;
      v7 = [v6 name];
      sub_10002A0EC();
    }

    else
    {
      v10 = sub_10002A0DC();
      v11 = sub_10002A0DC();
      v7 = sub_100028FF4(v10);

      sub_10002A0EC();
    }
  }

  else
  {
    v9 = [a1 name];
    sub_10002A0EC();

    sub_100015204(a1, a2, 0);
  }

  sub_100005F34();
  result = sub_100029CAC();
  *a4 = result;
  *(a4 + 8) = v13;
  *(a4 + 16) = v14 & 1;
  *(a4 + 24) = v15;
  return result;
}

void sub_10001471C(id a1, double a2, uint64_t a3, char a4)
{
  if (!a4)
  {
    v9 = [a1 previewIcon];
    objc_opt_self();
    v10 = sub_1000154E0();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 bundleIdentifier];
      sub_10002A0EC();

      v14 = sub_100014BC8(a2);

      if (v14)
      {
        v15 = [a1 name];
LABEL_22:
        v34 = v15;
        sub_10002A0EC();

        sub_100005F34();
        sub_100029CAC();
        sub_100029DFC();

        goto LABEL_23;
      }
    }

    objc_opt_self();
    v17 = sub_1000154E0();
    if (v17)
    {
      v18 = v17;
      v19 = v9;
      v20 = [v18 symbolName];
      sub_10002A0EC();

      sub_100029DEC();
LABEL_23:
      sub_1000154C4();
      return;
    }

    objc_opt_self();
    v21 = sub_1000154E0();
    if (v21)
    {
      v22 = v21;
      v23 = objc_opt_self();
      v24 = v9;
      LOWORD(v22) = [v22 glyph];
      v25 = objc_allocWithZone(WFWorkflowIcon);
      v26 = sub_100014F50(9, v22, 0, 0xF000000000000000);
      v27 = [objc_opt_self() whiteColor];
      v28 = [v23 imageWithIcon:v26 size:v27 scale:0 padding:40.0 glyphColor:40.0 background:{a2, 0.0, 0.0}];

      if (v28)
      {
        sub_10002A21C();

        goto LABEL_23;
      }
    }

    objc_opt_self();
    v29 = sub_1000154E0();
    if (v29)
    {
      v30 = v29;
      v12 = v9;
      v31 = [v30 image];
      v32 = [v31 CGImage];

      if (v32)
      {
        v33 = [v30 image];
        [v33 scale];

        v15 = [a1 name];
        goto LABEL_22;
      }
    }

    sub_10002A25C(31);

    v35 = [v9 description];
    v36 = sub_10002A0EC();
    v38 = v37;

    v39._countAndFlagsBits = v36;
    v39._object = v38;
    sub_10002A13C(v39);

    sub_10002A2DC();
    __break(1u);
    return;
  }

  if (a4 == 1)
  {
    sub_1000154C4();

    sub_100014CC0(v6, v7);
  }

  else
  {
    sub_1000154C4();

    sub_100029DEC();
  }
}

id sub_100014BC8(double a1)
{
  v1 = [objc_allocWithZone(ISImageDescriptor) initWithSize:40.0 scale:{40.0, a1}];
  [v1 setShouldApplyMask:0];
  sub_10000ADAC(0, &qword_10003D348, ISIcon_ptr);

  v2 = sub_100010FA8();
  v3 = [v2 prepareImageForDescriptor:v1];
  v4 = [v3 CGImage];

  return v4;
}

uint64_t sub_100014CC0(void *a1, double a2)
{
  sub_100015250(a1);
  if (v4 && (v5 = sub_100014BC8(a2), , v5))
  {
    v6 = [a1 name];
    sub_10002A0EC();

    sub_100005F34();
    sub_100029CAC();
    return sub_100029DFC();
  }

  else
  {
    v8 = [a1 icon];
    v9 = [v8 icon];

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = [v10 symbolName];

      sub_10002A0EC();
    }

    else
    {
    }

    return sub_100029DEC();
  }
}

uint64_t sub_100014E88@<X0>(uint64_t a1@<X8>)
{
  result = sub_1000135F8();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

id sub_100014EC0(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a2, a3);
  }

  v8 = [v3 initWithWorkflow:a1 shortcutsMetadata:isa];

  return v8;
}

id sub_100014F50(uint64_t a1, unsigned __int16 a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = sub_10002982C().super.isa;
    sub_10000ADEC(a3, a4);
  }

  v10 = [v4 initWithPaletteColor:a1 glyphCharacter:a2 customImageData:isa];

  return v10;
}

uint64_t sub_100014FF8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10001500C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_10001504C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000150BC()
{
  sub_10000C470(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100015104(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_100015110()
{
  result = qword_10003D390;
  if (!qword_10003D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D390);
  }

  return result;
}

uint64_t sub_100015164()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_10000C470(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

void sub_100015204(void *a1, void *a2, char a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return;
    }

    a1 = a2;
  }
}

uint64_t sub_100015250(void *a1)
{
  v1 = [a1 associatedAppBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10002A0EC();

  return v3;
}

uint64_t sub_1000152B4(uint64_t a1)
{
  v2 = sub_1000026A4(&qword_10003CF10, &qword_10002DD10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001531C()
{
  sub_1000028A4(&qword_10003D380, &qword_10002E800);
  sub_1000028A4(&qword_10003D378, &qword_10002E7F8);
  sub_1000028A4(&qword_10003D370, &qword_10002E7F0);
  sub_1000028A4(&qword_10003D368, &qword_10002E7E8);
  sub_1000028A4(&qword_10003D360, &qword_10002E7E0);
  sub_1000060E8();
  sub_100005EEC(v0, &qword_10003D360, &qword_10002E7E0);
  sub_1000060D0();
  sub_1000061A4();
  sub_1000060B8();
  sub_1000061A4();
  sub_100015450();
  sub_1000061A4();
  sub_1000060A0();
  sub_1000061A4();
  return sub_1000061A4();
}

uint64_t sub_100015468()
{

  return sub_1000297BC();
}

uint64_t sub_1000154A0()
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000154E0()
{

  return swift_dynamicCastObjCClass();
}

void sub_100015518()
{
  sub_10001558C();
  if (v0 <= 0x3F)
  {
    sub_10002989C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10001558C()
{
  if (!qword_10003D430)
  {
    sub_10000ADAC(255, &qword_10003D438, WFIcon_ptr);
    sub_10000ADAC(255, &unk_10003D440, WFColor_ptr);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_10003D430);
    }
  }
}

uint64_t sub_100015634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetSStackView.Content(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_10002989C();
    v8 = a1 + *(a3 + 20);
  }

  return sub_100002984(v8, a2, v7);
}

uint64_t sub_1000156E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for WidgetSStackView.Content(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10002989C();
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000026EC(v10, a2, a2, v9);
}

uint64_t sub_1000157A8()
{
  result = type metadata accessor for WidgetSStackView.Content(319);
  if (v1 <= 0x3F)
  {
    result = sub_10002989C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100015848()
{
  v1 = type metadata accessor for WidgetSStackView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_100016574(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetSStackView);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_1000161D8(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_100016574(v0, v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for WidgetSStackView);
  v6 = swift_allocObject();
  sub_1000161D8(v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v4);
  sub_1000026A4(&qword_10003D500, &qword_10002E898);
  sub_1000026A4(&qword_10003D508, &qword_10002E8A0);
  sub_10001642C();
  v7 = sub_10002991C();
  v8 = sub_10001651C();
  v10[0] = v7;
  v10[1] = v8;
  swift_getOpaqueTypeConformance2();
  return sub_1000298AC();
}

uint64_t sub_100015A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v37 = a2;
  v2 = sub_10002991C();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1000026A4(&qword_10003D508, &qword_10002E8A0);
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v36);
  v34 = &v32 - v8;
  v9 = sub_10002989C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000026A4(&qword_10003D530, &qword_10002E8B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (&v32 - v16);
  v18 = type metadata accessor for WidgetSStackView.Content(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100016574(v35, v21, type metadata accessor for WidgetSStackView.Content);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *(v10 + 32);
    v32 = v13;
    v22(v13, v21, v9);
    sub_10002990C();
    v23 = sub_10001651C();
    v24 = v34;
    sub_100029E2C();
    (*(v33 + 8))(v5, v2);
    v25 = *(v6 + 16);
    v35 = v9;
    v26 = v2;
    v27 = v6;
    v28 = v36;
    v25(v17, v24, v36);
    swift_storeEnumTagMultiPayload();
    sub_1000026A4(&qword_10003D520, &qword_10002E8A8);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8);
    v38 = v26;
    v39 = v23;
    swift_getOpaqueTypeConformance2();
    sub_100029B6C();
    (*(v27 + 8))(v24, v28);
    return (*(v10 + 8))(v32, v35);
  }

  else
  {
    v30 = swift_allocObject();
    *(v30 + 16) = *v21;
    *v17 = sub_100016614;
    v17[1] = v30;
    swift_storeEnumTagMultiPayload();
    sub_1000026A4(&qword_10003D520, &qword_10002E8A8);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8);
    v31 = sub_10001651C();
    v38 = v2;
    v39 = v31;
    swift_getOpaqueTypeConformance2();
    return sub_100029B6C();
  }
}

uint64_t sub_100015F0C@<X0>(void *a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = sub_1000298DC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000298CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1;
  sub_1000299FC();
  *v14 = v16;
  (*(v11 + 104))(v14, enum case for IconSize.sstack(_:), v10);
  *v9 = a2;
  v9[8] = 1;
  (*(v6 + 104))(v9, enum case for IconView.DisplayMode.customColor(_:), v5);
  v17 = a2;
  return sub_1000298FC();
}

uint64_t sub_1000160D4()
{
  v0 = sub_10002991C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002990C();
  v5 = *(type metadata accessor for WidgetSStackView(0) + 20);
  sub_10001651C();
  sub_100029E2C();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1000161D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetSStackView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016254()
{
  v1 = type metadata accessor for WidgetSStackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for WidgetSStackView.Content(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_10002989C();
    sub_10000350C(v6);
    (*(v7 + 8))(v0 + v3);
  }

  else
  {
  }

  v8 = *(v1 + 20);
  v9 = sub_10002989C();
  sub_10000350C(v9);
  (*(v10 + 8))(v5 + v8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000163A8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for WidgetSStackView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_10001642C()
{
  result = qword_10003D510;
  if (!qword_10003D510)
  {
    sub_1000028A4(&qword_10003D500, &qword_10002E898);
    sub_100005EEC(&qword_10003D518, &qword_10003D520, &qword_10002E8A8);
    sub_10002991C();
    sub_10001651C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D510);
  }

  return result;
}

unint64_t sub_10001651C()
{
  result = qword_10003D528;
  if (!qword_10003D528)
  {
    sub_10002991C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D528);
  }

  return result;
}

uint64_t sub_100016574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_10000350C(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000165D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100016664()
{
  v0 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17[-v2];
  v4 = sub_10002978C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_10002988C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_10002A0CC();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000297AC();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = sub_10002960C();
  sub_10000FBA4(v15, qword_1000414D0);
  sub_10000FB6C(v15, qword_1000414D0);
  sub_10002A05C();
  sub_10002987C();
  (*(v5 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  sub_1000297BC();
  sub_1000026EC(v3, 1, 1, v13);
  return sub_1000295FC();
}

uint64_t sub_100016914()
{
  v0 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v37 = &v33 - v2;
  v3 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v33 - v5;
  v7 = sub_10002978C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10002988C();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_10002A0CC();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v47 = sub_1000297AC();
  v16 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v46 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000026A4(&qword_10003D600, &qword_10002EE00);
  v18 = sub_1000026A4(&qword_10003D608, &qword_10002EE08);
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = v18 - 8;
  v44 = v18 - 8;
  v45 = v20;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = swift_allocObject();
  v38 = v23;
  *(v23 + 16) = xmmword_10002D940;
  v41 = (v23 + v22);
  v36 = *(v21 + 56);
  *(v23 + v22) = 0;
  sub_10002A05C();
  sub_10002987C();
  v24 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25 = *(v8 + 104);
  v40 = v7;
  v25(v11, enum case for LocalizedStringResource.BundleDescription.main(_:), v7);
  v33 = v25;
  v39 = v8 + 104;
  sub_1000297BC();
  sub_10002A05C();
  sub_10002987C();
  v25(v11, v24, v7);
  sub_1000297BC();
  sub_1000026EC(v6, 0, 1, v47);
  v42 = "Open Shortcuts Settings";
  v26 = v37;
  sub_1000294AC();
  v43 = sub_1000294CC();
  sub_1000026EC(v26, 0, 1, v43);
  v27 = v41;
  sub_1000294DC();
  v28 = *(v44 + 56);
  v34 = &v27[v45];
  v35 = v28;
  *v34 = 1;
  sub_10002A05C();
  sub_10002987C();
  v29 = v40;
  v30 = v33;
  v33(v11, v24, v40);
  sub_1000297BC();
  v36 = "com.apple.shortcuts";
  sub_10002A05C();
  sub_10002987C();
  v30(v11, v24, v29);
  sub_1000297BC();
  sub_1000026EC(v6, 0, 1, v47);
  sub_1000294AC();
  sub_1000026EC(v26, 0, 1, v43);
  sub_1000294DC();
  v41 += 2 * v45;
  v45 = *(v44 + 56);
  *v41 = 2;
  sub_10002A05C();
  sub_10002987C();
  v31 = v40;
  v30(v11, v24, v40);
  sub_1000297BC();
  sub_10002A05C();
  sub_10002987C();
  v30(v11, v24, v31);
  sub_1000297BC();
  sub_1000026EC(v6, 0, 1, v47);
  sub_1000294AC();
  sub_1000026EC(v26, 0, 1, v43);
  sub_1000294DC();
  sub_1000294EC();
  sub_100017BFC();
  result = sub_10002A02C();
  qword_1000414E8 = result;
  return result;
}

uint64_t sub_10001708C()
{
  v0 = sub_1000026A4(&qword_10003D610, &qword_10002EE10);
  sub_10000FBA4(v0, qword_1000414F0);
  sub_10000FB6C(v0, qword_1000414F0);
  sub_1000026A4(&qword_10003D618, &qword_10002EE18);
  v1 = (sub_1000026A4(&qword_10003D620, &qword_10002EE20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10002D940;
  v5 = v4 + v3;
  v6 = v1[14];
  *(v4 + v3) = 0;
  sub_10001765C();
  sub_1000294FC();
  v7 = v1[14];
  *(v5 + v2) = 1;
  sub_1000294FC();
  v8 = v1[14];
  *(v5 + 2 * v2) = 2;
  sub_1000294FC();
  sub_1000026A4(&qword_10003D628, &qword_10002EE28);
  sub_100017BFC();
  sub_10002A02C();
  return sub_10002950C();
}

uint64_t sub_10001729C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100039D28;
  v6._object = a2;
  v4 = sub_10002A2FC(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000172E8(char a1)
{
  if (!a1)
  {
    return 1953460082;
  }

  if (a1 == 1)
  {
    return 0x6465636E61766461;
  }

  return 0x746F4E6C6167656CLL;
}

unint64_t sub_100017350()
{
  result = qword_10003D548;
  if (!qword_10003D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D548);
  }

  return result;
}

uint64_t sub_1000173CC()
{
  sub_10002A12C();
}

uint64_t sub_100017440()
{
  sub_10002A12C();
}

Swift::Int sub_1000174D4()
{
  sub_10002A38C();
  sub_10002A12C();

  return sub_10002A3BC();
}

Swift::Int sub_100017574()
{
  sub_10002A38C();
  sub_10002A12C();

  return sub_10002A3BC();
}

uint64_t sub_1000175FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001729C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001762C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000172E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10001765C()
{
  result = qword_10003D550;
  if (!qword_10003D550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D550);
  }

  return result;
}

unint64_t sub_1000176B4()
{
  result = qword_10003D558;
  if (!qword_10003D558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D558);
  }

  return result;
}

uint64_t sub_100017708@<X0>(uint64_t a1@<X8>)
{
  if (qword_10003C8F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000026A4(&qword_10003D610, &qword_10002EE10);
  v3 = sub_10000FB6C(v2, qword_1000414F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000177BC()
{
  result = qword_10003D560;
  if (!qword_10003D560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D560);
  }

  return result;
}

unint64_t sub_100017814()
{
  result = qword_10003D568;
  if (!qword_10003D568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D568);
  }

  return result;
}

unint64_t sub_10001786C()
{
  result = qword_10003D570;
  if (!qword_10003D570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D570);
  }

  return result;
}

uint64_t sub_1000178CC()
{
  sub_100018AF4();
  v1 = sub_10002948C();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10001793C()
{
  result = qword_10003D578;
  if (!qword_10003D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D578);
  }

  return result;
}

unint64_t sub_100017990()
{
  result = qword_10003D580;
  if (!qword_10003D580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D580);
  }

  return result;
}

unint64_t sub_1000179E8()
{
  result = qword_10003D588;
  if (!qword_10003D588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D588);
  }

  return result;
}

unint64_t sub_100017A40()
{
  result = qword_10003D590;
  if (!qword_10003D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D590);
  }

  return result;
}

uint64_t sub_100017AFC(uint64_t a1)
{
  v2 = sub_10001765C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100017B4C()
{
  result = qword_10003D598;
  if (!qword_10003D598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D598);
  }

  return result;
}

unint64_t sub_100017BA4()
{
  result = qword_10003D5A0;
  if (!qword_10003D5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5A0);
  }

  return result;
}

unint64_t sub_100017BFC()
{
  result = qword_10003D5A8;
  if (!qword_10003D5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5A8);
  }

  return result;
}

uint64_t sub_100017C50()
{
  if (qword_10003C8F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100017CAC(uint64_t a1)
{
  v2 = sub_100017A40();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100017CFC()
{
  result = qword_10003D5B0;
  if (!qword_10003D5B0)
  {
    sub_1000028A4(&qword_10003D5B8, &qword_10002EB80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5B0);
  }

  return result;
}

unint64_t sub_100017D74()
{
  result = qword_10003D5C0;
  if (!qword_10003D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5C0);
  }

  return result;
}

uint64_t sub_100017DCC()
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
  sub_10000FBA4(v9, qword_100041508);
  sub_10000FB6C(v9, qword_100041508);
  sub_10002A05C();
  sub_10002987C();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000297BC();
}

uint64_t sub_100018020()
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
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v42 - v14;
  v16 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v17 = sub_100002910(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = v42 - v20;
  v22 = sub_10002978C();
  v23 = sub_1000028EC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v23);
  sub_100002900();
  v30 = v29 - v28;
  v31 = sub_10002988C();
  v32 = sub_100002910(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_100002900();
  v35 = sub_10002A0CC();
  v36 = sub_100002910(v35);
  v38 = *(v37 + 64);
  __chkstk_darwin(v36);
  sub_100002900();
  v39 = sub_1000297AC();
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  sub_100002900();
  v42[1] = sub_1000026A4(&qword_10003D5E0, &unk_10002EDF0);
  sub_10002A05C();
  sub_10002987C();
  (*(v25 + 104))(v30, enum case for LocalizedStringResource.BundleDescription.main(_:), v22);
  sub_1000297BC();
  sub_10000FC08(v21);
  v46 = 3;
  sub_10002931C();
  sub_10000FC08(v15);
  sub_10000FC08(v13);
  (*(v44 + 104))(v43, enum case for InputConnectionBehavior.default(_:), v45);
  sub_10001765C();
  return sub_1000293CC();
}

uint64_t sub_1000183B4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100017FB8();
  *a1 = result;
  return result;
}

uint64_t sub_1000183E0(unsigned __int8 *a1)
{
  v2 = *v1;
  v3 = *a1;
  return sub_100017FEC();
}

void (*sub_1000183EC(void *a1))(void *a1)
{
  v3 = sub_100018B48(0x28uLL);
  *a1 = v3;
  v4 = *v1;
  v3[4] = sub_10002938C();
  return sub_10001844C;
}

void sub_10001844C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100018498()
{
  result = qword_10003D5C8;
  if (!qword_10003D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5C8);
  }

  return result;
}

uint64_t sub_1000184EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100018A4C();
  v5 = sub_100018AF4();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100018568()
{
  result = qword_10003D5D0;
  if (!qword_10003D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5D0);
  }

  return result;
}

unint64_t sub_1000185C0()
{
  result = qword_10003D5D8;
  if (!qword_10003D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5D8);
  }

  return result;
}

uint64_t sub_1000186C0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = sub_10000FB6C(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100018764(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100018A4C();
  v7 = sub_100018AA0();
  v8 = sub_100018AF4();
  *v5 = v2;
  v5[1] = sub_10000F858;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_100018830@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100018020();
  *a1 = result;
  return result;
}

uint64_t sub_100018858(uint64_t a1)
{
  v2 = sub_100018498();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for ShortcutsStaticDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for ShortcutsStaticDeepLinks(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100018A04);
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

unint64_t sub_100018A4C()
{
  result = qword_10003D5E8;
  if (!qword_10003D5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5E8);
  }

  return result;
}

unint64_t sub_100018AA0()
{
  result = qword_10003D5F0;
  if (!qword_10003D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5F0);
  }

  return result;
}

unint64_t sub_100018AF4()
{
  result = qword_10003D5F8;
  if (!qword_10003D5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D5F8);
  }

  return result;
}

void *sub_100018B48(size_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_100018B8C()
{
  result = qword_10003D630;
  if (!qword_10003D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10003D630);
  }

  return result;
}

uint64_t sub_100018BE0()
{
  v0 = sub_10002980C();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100002900();
  v8 = v7 - v6;
  sub_10002933C();
  v9 = sub_1000297DC();
  (*(v3 + 8))(v8, v0);
  return v9;
}

void sub_100018CB0()
{
  sub_10001C790();
  v1 = v0;
  v2 = sub_1000026A4(&qword_10003D6D0, &unk_10002F290);
  v3 = sub_100002910(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v58 - v6;
  v8 = sub_10002972C();
  v9 = sub_1000028EC(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_100002900();
  v16 = v15 - v14;
  sub_10002969C();
  if (sub_100002984(v7, 1, v8) == 1)
  {
    v17 = sub_10002980C();
    sub_10001C6C4(v17);
    (*(v18 + 8))(v1);
    sub_10001C330(v7, &qword_10003D6D0, &unk_10002F290);
LABEL_22:
    sub_10001C7A8();
    return;
  }

  (*(v11 + 32))(v16, v7, v8);
  v19 = sub_1000296FC();
  if (!v20)
  {
    goto LABEL_21;
  }

  if (v19 == 0x74756374726F6873 && v20 == 0xE900000000000073)
  {
  }

  else
  {
    v22 = sub_10002A31C();

    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v23 = sub_1000296BC();
  if (!v24)
  {
LABEL_21:
    v29 = sub_10002980C();
    sub_10001C6C4(v29);
    (*(v30 + 8))(v1);
    v31 = *(v11 + 8);
    v32 = sub_10001C748();
    v33(v32);
    goto LABEL_22;
  }

  if (v23 == 0x746567646977 && v24 == 0xE600000000000000)
  {
  }

  else
  {
    v26 = sub_10002A31C();

    if ((v26 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v62 = sub_1000296DC();
  v63 = v27;
  sub_100005F34();
  v28 = sub_10002A24C();

  if (v28[2] < 2uLL)
  {

    goto LABEL_21;
  }

  v34 = v28[8];
  v35 = v28[9];
  v36 = v28[10];
  v37 = v28[11];

  v38 = sub_10002A10C();
  v40 = v39;

  if (v28[2])
  {
    v42 = v28[4];
    v41 = v28[5];
    v43 = v28[7];
    v61 = v28[6];

    v59 = v42;
    v60 = v41;
    v44 = v41;
    v45 = v61;
    v46 = (v11 + 8);
    if (sub_10001C1F0(0x6D6574737973, 0xE600000000000000, v42, v44, v61, v43))
    {

      sub_10001A1D0(v38, v40);
      v47 = sub_10002980C();
      sub_10001C6C4(v47);
      (*(v48 + 8))(v1);
      v49 = *v46;
      v50 = sub_10001C748();
      v51(v50);
    }

    else
    {
      v52 = sub_10001C1F0(0x7265646C6F66, 0xE600000000000000, v59, v60, v45, v43);

      v53 = sub_10002980C();
      sub_10001C6C4(v53);
      (*(v54 + 8))(v1);
      v55 = *v46;
      v56 = sub_10001C748();
      v57(v56);
      if ((v52 & 1) == 0)
      {
      }
    }

    goto LABEL_22;
  }

  __break(1u);
}

uint64_t sub_10001911C()
{
  v30 = sub_10002A04C();
  v0 = *(v30 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10002A0AC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v31 = &v25 - v7;
  v8 = sub_10002978C();
  v26 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10002988C();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_10002A0CC();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v28 = sub_1000297AC();
  v17 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v18 = sub_10002960C();
  sub_10000FBA4(v18, qword_100041520);
  v27 = sub_10000FB6C(v18, qword_100041520);
  sub_10002A05C();
  sub_10002987C();
  v19 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v20 = *(v9 + 104);
  v25 = v9 + 104;
  v20(v12, enum case for LocalizedStringResource.BundleDescription.main(_:), v8);
  sub_1000297BC();
  sub_10002A09C();
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  sub_10002A08C(v32);
  v21 = v29;
  v22 = v30;
  (*(v0 + 104))(v29, enum case for String.LocalizationValue.Placeholder.int(_:), v30);
  sub_10002A06C();
  (*(v0 + 8))(v21, v22);
  v33._countAndFlagsBits = 0x737265646C6F6620;
  v33._object = 0xE800000000000000;
  sub_10002A08C(v33);
  sub_10002A0BC();
  sub_10002987C();
  v20(v12, v19, v26);
  v23 = v31;
  sub_1000297BC();
  sub_1000026EC(v23, 0, 1, v28);
  return sub_1000295FC();
}

void sub_100019588()
{
  sub_10001C790();
  v2 = v1;
  v36 = v3;
  v4 = sub_1000026A4(&qword_10003C950, &unk_10002E680);
  v5 = sub_100002910(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10001C734();
  v8 = sub_1000297AC();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  sub_100002900();
  v10 = sub_10002A0AC();
  v11 = sub_100002910(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_100002900();
  v14 = sub_1000026A4(&qword_10003D340, &qword_10002F2A0);
  v15 = sub_100002910(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10001C6D8();
  v20 = v18 - v19;
  v22 = __chkstk_darwin(v21);
  v24 = &v33 - v23;
  __chkstk_darwin(v22);
  v26 = &v33 - v25;
  v27 = sub_1000294CC();
  sub_1000026EC(v26, 1, 1, v27);
  sub_10002933C();
  if (v37._object)
  {
LABEL_11:
    sub_10002A09C();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_10002A08C(v38);
    sub_10002933C();
    sub_10002A07C(v37);

    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    sub_10002A08C(v39);
    sub_10002979C();
    sub_1000026EC(v0, 1, 1, v8);
    sub_10001C2C8(v26, v20, &qword_10003D340, &qword_10002F2A0);
    sub_10001C748();
    sub_1000294DC();
    sub_10001C330(v26, &qword_10003D340, &qword_10002F2A0);
    sub_10001C7A8();
    return;
  }

  v35 = v2;
  if (v37._countAndFlagsBits < 0)
  {
    __break(1u);
  }

  else if (!(v37._countAndFlagsBits >> 16))
  {
    v28 = WFSystemImageNameForOutlineGlyphCharacter();
    if (v28)
    {
      v29 = v28;
      v34 = v8;
      sub_10002A0EC();
      v31 = v30;

      if (v31)
      {
        sub_10002949C();
        v32 = 0;
      }

      else
      {
        v32 = 1;
      }

      v8 = v34;
    }

    else
    {
      v32 = 1;
    }

    sub_10001C330(v26, &qword_10003D340, &qword_10002F2A0);
    sub_1000026EC(v24, v32, 1, v27);
    sub_10001C258(v24, v26);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_10001989C()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }

  qword_100041538 = qword_1000415B8;
}

uint64_t sub_100019900()
{
  if (qword_10003C940 != -1)
  {
    swift_once();
  }
}

void sub_10001995C()
{
  sub_10001C790();
  v0 = sub_10002980C();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10001C6D8();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v21 - v10;
  v12 = WFLocalizedAllShortcutsString();
  v13 = sub_10002A0EC();
  v15 = v14;

  v16 = sub_100019B00();
  v18 = v17;
  v20 = v19;

  sub_100019D64(0, 0, 0, v11);
  (*(v3 + 16))(v8, v11, v0);
  sub_10002934C();
  (*(v3 + 8))(v11, v0);
  v21 = v13;
  v22 = v15;
  sub_10002934C();
  v21 = 61573;
  LOBYTE(v22) = 0;
  sub_10002934C();

  qword_100041540 = v16;
  *algn_100041548 = v18;
  qword_100041550 = v20;
  sub_10001C7A8();
}

uint64_t sub_100019B00()
{
  v0 = sub_10002980C();
  v1 = sub_1000028EC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_10001C6D8();
  v8 = v6 - v7;
  __chkstk_darwin(v9);
  v11 = &v22 - v10;
  v12 = sub_1000297AC();
  v13 = sub_100002910(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100002900();
  sub_1000026A4(&qword_10003D6C8, &qword_10002F288);
  sub_10001C6E8();
  sub_10002977C();
  v16 = sub_10002935C();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);

  sub_10001C710();
  sub_10002977C();
  sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);

  sub_10001C77C();
  sub_10002977C();
  sub_10002937C();

  sub_100019D64(0, 0, 0, v11);
  (*(v3 + 16))(v8, v11, v0);
  sub_10002934C();
  (*(v3 + 8))(v11, v0);
  v17 = WFLocalizedAllShortcutsString();
  v18 = sub_10002A0EC();
  v20 = v19;

  v22 = v18;
  v23 = v20;
  sub_10002934C();
  v22 = 61456;
  LOBYTE(v23) = 0;
  sub_10002934C();

  return v16;
}

uint64_t sub_100019D64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  v10 = sub_100002910(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10001C734();
  v13 = sub_10002972C();
  v14 = sub_1000028EC(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  __chkstk_darwin(v14);
  sub_100002900();
  v21 = v20 - v19;
  sub_10002971C();
  sub_10002970C();
  sub_1000296CC();
  sub_10001A2E4(a1, a2, a3 & 1);
  sub_1000296EC();
  sub_1000296AC();
  v22 = sub_10002980C();
  result = sub_100002984(v4, 1, v22);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v16 + 8))(v21, v13);
    return (*(*(v22 - 8) + 32))(a4, v4, v22);
  }

  return result;
}

void sub_100019F14()
{
  sub_10001C790();
  v1 = v0;
  v28 = sub_10002980C();
  v2 = sub_1000028EC(v28);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10001C6D8();
  v9 = v7 - v8;
  __chkstk_darwin(v10);
  v12 = &v27 - v11;
  v13 = sub_1000297AC();
  v14 = sub_100002910(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002900();
  sub_1000026A4(&qword_10003D6C8, &qword_10002F288);
  sub_10001C6E8();
  sub_10002977C();
  sub_10002935C();
  sub_1000026A4(&qword_10003D308, &qword_10002E630);

  sub_10001C710();
  sub_10002977C();
  sub_10002936C();
  sub_1000026A4(&qword_10003D318, &qword_10002E640);

  sub_10001C77C();
  sub_10002977C();
  sub_10002937C();

  v17 = [v1 identifier];
  v18 = sub_10002A0EC();
  v20 = v19;

  sub_100019D64(v18, v20, 1, v12);

  v21 = v28;
  (*(v4 + 16))(v9, v12, v28);
  sub_10002934C();
  (*(v4 + 8))(v12, v21);
  v22 = v1;
  v23 = [v1 name];
  v24 = sub_10002A0EC();
  v26 = v25;

  v29 = v24;
  v30 = v26;
  sub_10002934C();
  v29 = [v22 glyphCharacter];
  LOBYTE(v30) = 0;
  sub_10002934C();

  sub_10001C7A8();
}

uint64_t sub_10001A1D0(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100039DB8;
  v7._object = a2;
  v4 = sub_10002A2FC(v3, v7);

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001A224(char a1)
{
  if (a1)
  {
    return 0x6D6F74737563;
  }

  else
  {
    return 0x726F68732D6C6C61;
  }
}

uint64_t sub_10001A288@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001A1D0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10001A2B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001A224(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10001A2E4(uint64_t a1, uint64_t a2, char a3)
{
  sub_1000026A4(&qword_10003CF20, &qword_10002DD18);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10002EE30;
  if (a3)
  {
    *(v6 + 32) = 0x7265646C6F66;
    *(v6 + 40) = 0xE600000000000000;
    *(v6 + 48) = a1;
    *(v6 + 56) = a2;
    sub_10001C1E0(a1, a2, 1);
  }

  else
  {
    v7 = 0xE600000000000000;
    *(v6 + 32) = 0x6D6574737973;
    *(v6 + 40) = 0xE600000000000000;
    v8 = 0x726F68732D6C6C61;
    if (a1)
    {
      v8 = 0x6D6F74737563;
    }

    else
    {
      v7 = 0xED00007374756374;
    }

    *(v6 + 48) = v8;
    *(v6 + 56) = v7;
  }

  sub_1000026A4(&qword_10003D6B8, &qword_10002F280);
  sub_100005EEC(&qword_10003D6C0, &qword_10003D6B8, &qword_10002F280);
  v9 = sub_10002A03C();
  v11 = v10;

  v13._countAndFlagsBits = v9;
  v13._object = v11;
  sub_10002A13C(v13);

  return 47;
}

uint64_t sub_10001A470(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a3 & 1) == 0)
  {
    if ((a6 & 1) == 0)
    {
      v8 = (a1 & 1) == 0;
      if (a1)
      {
        v9 = 0x6D6F74737563;
      }

      else
      {
        v9 = 0x726F68732D6C6C61;
      }

      if (v8)
      {
        v10 = 0xED00007374756374;
      }

      else
      {
        v10 = 0xE600000000000000;
      }

      if (a4)
      {
        v11 = 0x6D6F74737563;
      }

      else
      {
        v11 = 0x726F68732D6C6C61;
      }

      if (a4)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xED00007374756374;
      }

      if (v9 != v11 || v10 != v12)
      {
        v14 = sub_10002A31C();

        return v14 & 1;
      }

      return 1;
    }

    return 0;
  }

  if ((a6 & 1) == 0)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_10002A31C();
}

uint64_t sub_10001A574(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_10002A39C(1uLL);

    return sub_10002A12C();
  }

  else
  {
    sub_10002A39C(0);
    sub_10002A12C();
  }
}

Swift::Int sub_10001A640(uint64_t a1, uint64_t a2, char a3)
{
  sub_10002A38C();
  sub_10001A574(v7, a1, a2, a3 & 1);
  return sub_10002A3BC();
}

Swift::Int sub_10001A6B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10002A38C();
  sub_10001A574(v5, v1, v2, v3);
  return sub_10002A3BC();
}

uint64_t sub_10001A740()
{
  if (qword_10003C918 != -1)
  {
    sub_10001C6A4();
    swift_once();
  }

  v1 = qword_100041540;
  v0 = *algn_100041548;
  v2 = qword_100041550;
  sub_100006100();
  v5 = v3;

  return v5(v1, v0, v2);
}

uint64_t sub_10001A7FC()
{
  sub_100006164();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_10002980C();
  v0[4] = v3;
  v4 = *(v3 - 8);
  v0[5] = v4;
  v5 = *(v4 + 64) + 15;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v6 = sub_1000026A4(&unk_10003DBC0, &qword_10002D510);
  sub_100002910(v6);
  v8 = *(v7 + 64) + 15;
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_10001A904, 0, 0);
}

void sub_10001A904()
{
  v1 = 0;
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v3 + 16);
  v57 = (v2 + 16);
  v58 = (v2 + 32);
  v56 = (v2 + 8);
  v61 = _swiftEmptyArrayStorage;
  v5 = v3 + 40;
  v55 = v3 + 40;
LABEL_2:
  v6 = (v5 + 16 * v1);
  while (v4 != v1)
  {
    if (v1 >= v4)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_32;
    }

    v59 = v1 + 1;
    v8 = v62[8];
    v7 = v62[9];
    v9 = v62[4];
    v11 = *(v6 - 1);
    v10 = *v6;

    sub_1000297FC();
    sub_10001C2C8(v7, v8, &unk_10003DBC0, &qword_10002D510);
    v12 = sub_100002984(v8, 1, v9);
    v13 = v62[9];
    if (v12 != 1)
    {
      v14 = v62[7];
      v15 = v62[6];
      v16 = v62[4];
      (*v58)(v14, v62[8], v16);
      (*v57)(v15, v14, v16);
      sub_100018CB0();
      v18 = v17;
      v20 = v19;
      v54 = v21;

      (*v56)(v14, v16);
      sub_10001C330(v13, &unk_10003DBC0, &qword_10002D510);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001C768(isUniquelyReferenced_nonNull_native, v23, v24, v61);
        v61 = sub_100023700();
      }

      v5 = v55;
      v26 = v61[2];
      v25 = v61[3];
      if (v26 >= v25 >> 1)
      {
        sub_10001C754(v25);
        v61 = sub_100023700();
      }

      v61[2] = v26 + 1;
      v27 = &v61[3 * v26];
      v27[4] = v18;
      v27[5] = v20;
      *(v27 + 48) = v54 & 1;
      v1 = v59;
      goto LABEL_2;
    }

    sub_10001C330(v13, &unk_10003DBC0, &qword_10002D510);
    ++v1;
    v6 += 2;
  }

  v28 = 0;
  v29 = v61 + 6;
  v30 = -v61[2];
  v60 = _swiftEmptyArrayStorage;
LABEL_14:
  v31 = v28 + 1;
  v32 = &v29[3 * v28];
  while (v30 + v31 != 1)
  {
    v28 = v31;
    if ((v31 - 1) >= v61[2])
    {
      goto LABEL_33;
    }

    v33 = *(v32 - 2);
    if ((*v32 & 1) == 0)
    {
      if (qword_10003C918 != -1)
      {
        sub_10001C6A4();
        swift_once();
      }

      v38 = qword_100041540;
      v40 = *algn_100041548;
      v42 = qword_100041550;

LABEL_23:
      v43 = swift_isUniquelyReferenced_nonNull_native();
      if ((v43 & 1) == 0)
      {
        sub_10001C768(v43, v44, v45, v60);
        v60 = sub_1000236D0();
      }

      v47 = v60[2];
      v46 = v60[3];
      if (v47 >= v46 >> 1)
      {
        sub_10001C754(v46);
        v60 = sub_1000236D0();
      }

      v60[2] = v47 + 1;
      v48 = &v60[3 * v47];
      v48[4] = v38;
      v48[5] = v40;
      v48[6] = v42;
      v29 = v61 + 6;
      goto LABEL_14;
    }

    ++v31;
    v34 = v32 + 24;
    v35 = v62[3];
    v36 = *(v32 - 1);

    sub_10001AD10(v33, v36);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    sub_10001C384(v33, v36, 1);
    v32 = v34;
    if (v38)
    {
      goto LABEL_23;
    }
  }

  v50 = v62[8];
  v49 = v62[9];
  v52 = v62[6];
  v51 = v62[7];

  sub_100013594();

  v53(v60);
}

void sub_10001AD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_100028988();
  v5 = sub_1000134BC(v4);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_10002A26C();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v7 = *(v4 + 8 * i + 32);
    }

    v8 = v7;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v9 = [v7 identifier];
    v10 = sub_10002A0EC();
    v12 = v11;

    if (v10 == a1 && v12 == a2)
    {

LABEL_16:

      sub_100019F14();
      return;
    }

    v14 = sub_10002A31C();

    if (v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_10001AE6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000134D8;

  return sub_10001AF14(a1, a2);
}

uint64_t sub_10001AF14(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  return sub_10001C6B8(sub_10001AF30);
}

void sub_10001AF30()
{
  v1 = v0[8];
  v2 = sub_100028988();
  v3 = 0;
  v27 = sub_1000134BC(v2);
  while (v27 != v3)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v4 = sub_10002A26C();
    }

    else
    {
      if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v4 = *(v2 + 8 * v3 + 32);
    }

    v5 = v4;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v6 = v0[6];
    v7 = v0[7];
    v8 = [v4 name];
    v9 = sub_10002A0EC();
    v11 = v10;

    v0[2] = v9;
    v0[3] = v11;
    v0[4] = v6;
    v0[5] = v7;
    sub_100005F34();
    LOBYTE(v8) = sub_10002A23C();

    if (v8)
    {
      sub_10002A27C();
      v12 = _swiftEmptyArrayStorage[2];
      sub_10002A29C();
      sub_10002A2AC();
      sub_10002A28C();
    }

    else
    {
    }

    ++v3;
  }

  v13 = sub_1000134BC(_swiftEmptyArrayStorage);
  if (v13)
  {
    v14 = v13;
    sub_100012D2C(0, v13 & ~(v13 >> 63), 0);
    if (v14 < 0)
    {
      goto LABEL_26;
    }

    v15 = 0;
    do
    {
      if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
      {
        sub_10002A26C();
      }

      else
      {
        v16 = _swiftEmptyArrayStorage[v15 + 4];
      }

      sub_100019F14();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = _swiftEmptyArrayStorage[2];
      v23 = _swiftEmptyArrayStorage[3];
      if (v24 >= v23 >> 1)
      {
        sub_100012D2C((v23 > 1), v24 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v24 + 1;
      v25 = &_swiftEmptyArrayStorage[3 * v24];
      v25[4] = v18;
      v25[5] = v20;
      v25[6] = v22;
    }

    while (v14 != v15);
  }

  sub_100013594();

  v26(_swiftEmptyArrayStorage);
}

uint64_t sub_10001B200()
{
  sub_1000026A4(&qword_10003D338, &unk_10002E670);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10002D840;
  if (qword_10003C918 != -1)
  {
    sub_10001C6A4();
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = *algn_100041548;
  v4 = qword_100041550;
  *(v1 + 32) = qword_100041540;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;

  v5 = sub_10001B2FC();
  sub_100023840(v5);
  sub_100013594();

  return v6();
}

char *sub_10001B2FC()
{
  v0 = sub_100028988();
  v1 = sub_1000134BC(v0);
  if (!v1)
  {
LABEL_10:

    return _swiftEmptyArrayStorage;
  }

  v2 = v1;
  result = sub_100012D2C(0, v1 & ~(v1 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v0 & 0xC000000000000001) != 0)
      {
        sub_10002A26C();
      }

      else
      {
        v5 = *(v0 + 8 * v4 + 32);
      }

      sub_100019F14();
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        sub_100012D2C((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[3 * v13];
      v14[4] = v7;
      v14[5] = v9;
      v14[6] = v11;
    }

    while (v2 != v4);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}