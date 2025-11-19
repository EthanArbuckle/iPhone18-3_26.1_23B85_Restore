uint64_t sub_100001B88@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v40 = sub_100001F6C(&qword_100018900, &qword_10000D760);
  v1 = (*(*(v40 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v3 = (v31 - v2);
  v39 = sub_10000C8A4();
  v35 = *(v39 - 8);
  v4 = v35;
  v5 = *(v35 + 64);
  v6 = (__chkstk_darwin)();
  v38 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v31 - v8;
  v10 = sub_10000C884();
  v32 = v10;
  v37 = *(v10 - 8);
  v11 = v37;
  v12 = *(v37 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  v33 = sub_10000CD24();
  v19 = v18;
  v31[1] = v18;
  sub_10000C874();
  v34 = v9;
  sub_10000C894();
  v20 = *(v11 + 16);
  v36 = v15;
  v20(v15, v17, v10);
  v21 = *(v4 + 16);
  v22 = v38;
  v23 = v9;
  v24 = v39;
  v21(v38, v23, v39);
  *v3 = v33;
  v3[1] = v19;
  v25 = v40;
  v26 = v15;
  v27 = v32;
  v20(v3 + *(v40 + 48), v26, v32);
  v21(v3 + *(v25 + 64), v22, v24);

  sub_10000C914();
  v28 = *(v35 + 8);
  v28(v34, v24);
  v29 = *(v37 + 8);
  v29(v17, v27);
  v28(v22, v24);
  v29(v36, v27);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001EEC();
  sub_10000C924();
  return 0;
}

unint64_t sub_100001EEC()
{
  result = qword_1000188F8;
  if (!qword_1000188F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000188F8);
  }

  return result;
}

uint64_t sub_100001F6C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001FB8()
{
  result = qword_100018908;
  if (!qword_100018908)
  {
    sub_10000201C(&qword_100018910, &unk_10000D768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018908);
  }

  return result;
}

uint64_t sub_10000201C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002064()
{
  v0 = sub_10000C7F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C814();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100001F6C(&qword_100018918, &qword_10000D778);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v22 - v12;
  sub_10000C7D4();
  sub_10000C804();
  (*(v6 + 8))(v9, v5);
  sub_10000C7E4();
  (*(v1 + 8))(v4, v0);
  v14 = sub_10000C7C4();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);
  if (v16 == 1)
  {
    result = sub_100002318(v13);
    v18 = 0;
  }

  else
  {
    v19 = sub_10000C7B4();
    v21 = v20;
    (*(v15 + 8))(v13, v14);
    v22[2] = v19;
    v22[3] = v21;
    v22[0] = 21333;
    v22[1] = 0xE200000000000000;
    sub_100002380();
    v18 = sub_10000CDF4();
  }

  qword_100019750 = v18;
  byte_100019758 = v16 == 1;
  return result;
}

uint64_t sub_100002318(uint64_t a1)
{
  v2 = sub_100001F6C(&qword_100018918, &qword_10000D778);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100002380()
{
  result = qword_100018920;
  if (!qword_100018920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018920);
  }

  return result;
}

uint64_t sub_1000023D4()
{
  v0 = sub_10000C8E4();
  sub_100002488(v0, qword_100019760);
  sub_1000024EC(v0, qword_100019760);
  v1 = PKLogSubsystem;
  sub_10000CD24();
  v2 = v1;
  result = PKLogFacilityTypeGetName();
  if (result)
  {

    sub_10000CD54();
    return sub_10000C8D4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_100002488(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000024EC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100002538(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100001F6C(&qword_100018928, &unk_10000D790);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100002608(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100001F6C(&qword_100018928, &unk_10000D790);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for BridgedSpendingSummaryChartView()
{
  result = qword_100018988;
  if (!qword_100018988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100002704()
{
  sub_100003474(319, &qword_100018998, PKSpendingSummary_ptr);
  if (v0 <= 0x3F)
  {
    sub_1000027B0();
    if (v1 <= 0x3F)
    {
      sub_100002808();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000027B0()
{
  if (!qword_1000189A0)
  {
    sub_10000C8F4();
    v0 = sub_10000C904();
    if (!v1)
    {
      atomic_store(v0, &qword_1000189A0);
    }
  }
}

void sub_100002808()
{
  if (!qword_1000189A8)
  {
    v0 = sub_10000C904();
    if (!v1)
    {
      atomic_store(v0, &qword_1000189A8);
    }
  }
}

uint64_t sub_100002874@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000CA44();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001F6C(&qword_1000189E0, &qword_10000D810);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for BridgedSpendingSummaryChartView();
  sub_10000354C(v1 + *(v12 + 20), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10000C8F4();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10000CDB4();
    v16 = sub_10000CB14();
    sub_10000C8B4();

    sub_10000CA34();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_100002A64()
{
  v1 = sub_10000CA44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for BridgedSpendingSummaryChartView() + 24));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_10000CDB4();
  v9 = sub_10000CB14();
  sub_10000C8B4();

  sub_10000CA34();
  swift_getAtKeyPath();
  sub_100002FF8(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

void sub_100002BC0(void **a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_10000C8F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C934();
  v10 = v9;
  v12 = v11;
  v13 = sub_100002A64();
  sub_100002874(v8);
  v14 = (*(v5 + 88))(v8, v4);
  if (v14 == enum case for ColorScheme.light(_:))
  {
    v15 = 1;
  }

  else if (v14 == enum case for ColorScheme.dark(_:))
  {
    v15 = 2;
  }

  else
  {
    (*(v5 + 8))(v8, v4);
    v15 = 0;
  }

  v16 = *a1;
  v20[0] = v10;
  v20[1] = v12;
  v20[2] = v13;
  *&v20[3] = v15;
  *&v20[4] = v16;
  v17 = v16;
  sub_1000031C4(v20);
  v18 = sub_10000CC24();

  *a2 = v18;
}

uint64_t sub_100002D6C@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t *a1@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_100002E58(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100003004(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100003068;
  a2[1] = v7;
  return result;
}

uint64_t sub_100002E58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgedSpendingSummaryChartView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002EBC()
{
  v1 = type metadata accessor for BridgedSpendingSummaryChartView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_100001F6C(&qword_1000189E0, &qword_10000D810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_10000C8F4();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
    v8 = *(v5 + v6);
  }

  sub_100002FF8(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100002FF8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_100003004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BridgedSpendingSummaryChartView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100003068(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for BridgedSpendingSummaryChartView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  sub_100002BC0(v4, a1);
}

void sub_1000030E8(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext:v4];
}

void sub_100003178(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

uint64_t sub_1000031C4(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [objc_allocWithZone(PKSpendingSummaryChartView) initWithFrame:{0.0, 0.0, *a1, v3}];
  [v4 setPrioritizeLegendPlacement:1];
  [v4 setShowPlaceholders:1];
  v5 = *(a1 + 4);
  v6 = [v5 summaryType];
  v7 = [v5 summaryType];
  if (v6)
  {
    v8 = v7 == 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  [v4 setShowLegendLabels:v9];
  [v4 configureWithSummary:v5 presentationStyle:3];
  [v4 setOverrideUserInterfaceStyle:*(a1 + 3)];
  sub_100003474(0, &qword_1000189E8, UIGraphicsImageRendererFormat_ptr);
  v10 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v10 setScale:a1[2]];
  v11 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v10 format:{v2, v3}];
  v12 = swift_allocObject();
  *(v12 + 16) = v4;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000034F4;
  *(v13 + 24) = v12;
  v18[4] = sub_10000350C;
  v18[5] = v13;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_100003178;
  v18[3] = &unk_100014E20;
  v14 = _Block_copy(v18);
  v15 = v4;

  v16 = [v11 imageWithActions:v14];

  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if ((v10 & 1) == 0)
  {
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_100003474(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_1000034BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000350C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100003534(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000354C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F6C(&qword_1000189E0, &qword_10000D810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000035C0()
{
  result = qword_1000189F0;
  if (!qword_1000189F0)
  {
    sub_10000201C(&qword_1000189F8, &qword_10000D818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000189F0);
  }

  return result;
}

__n128 sub_100003624(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100003638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100003680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1000036F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v79 = a2;
  v3 = sub_100001F6C(&qword_100018A08, &qword_10000D8C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v80 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v77 = &v69 - v7;
  v70 = sub_100001F6C(&qword_100018A10, &qword_10000D8C8);
  v8 = *(*(v70 - 8) + 64);
  v9 = __chkstk_darwin(v70);
  v78 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v71 = &v69 - v12;
  __chkstk_darwin(v11);
  v74 = &v69 - v13;
  v14 = sub_100001F6C(&qword_100018A18, &qword_10000D8D0);
  v75 = *(v14 - 8);
  v76 = v14;
  v15 = *(v75 + 64);
  v16 = __chkstk_darwin(v14);
  v73 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v69 - v18;
  v20 = *a1;
  v21 = a1[1];
  v83 = a1[2];
  v72 = a1;
  v82 = a1[3];
  v85 = v20;
  v86 = v21;
  v81 = sub_100002380();

  v22 = sub_10000CB94();
  v24 = v23;
  v26 = v25;
  sub_10000CB34();
  v27 = sub_10000CB74();
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_100004040(v22, v24, v26 & 1);

  KeyPath = swift_getKeyPath();
  v85 = v27;
  v86 = v29;
  v31 &= 1u;
  v87 = v31;
  v88 = v33;
  v89 = KeyPath;
  v90 = 0x3FE999999999999ALL;
  sub_100001F6C(&qword_100018A20, &qword_10000D908);
  sub_100004120();
  v84 = v19;
  sub_10000CBA4();
  sub_100004040(v27, v29, v31);

  v85 = v83;
  v86 = v82;

  v35 = sub_10000CB94();
  v37 = v36;
  v39 = v38;
  result = PKFontForDesign();
  if (result)
  {
    sub_10000CB44();
    v41 = sub_10000CB74();
    v43 = v42;
    v45 = v44;

    sub_100004040(v35, v37, v39 & 1);

    sub_10000CB24();
    v46 = sub_10000CB54();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    sub_100004040(v41, v43, v45 & 1);

    v53 = swift_getKeyPath();
    v54 = v71;
    v55 = &v71[*(v70 + 36)];
    v56 = v55 + *(sub_100001F6C(&qword_100018A40, &qword_10000D918) + 28);
    sub_10000C954();
    *v55 = swift_getKeyPath();
    *v54 = v46;
    *(v54 + 1) = v48;
    v54[16] = v50 & 1;
    *(v54 + 3) = v52;
    *(v54 + 4) = v53;
    *(v54 + 5) = 0x3FE999999999999ALL;
    v57 = v54;
    v58 = v74;
    sub_100004200(v57, v74);
    v59 = v77;
    sub_100003D3C(v77);
    v61 = v75;
    v60 = v76;
    v62 = *(v75 + 16);
    v63 = v73;
    v62(v73, v84, v76);
    v64 = v78;
    sub_100004270(v58, v78, &qword_100018A10, &qword_10000D8C8);
    v65 = v80;
    sub_100004270(v59, v80, &qword_100018A08, &qword_10000D8C0);
    v66 = v79;
    v62(v79, v63, v60);
    v67 = sub_100001F6C(&qword_100018A48, &qword_10000D950);
    sub_100004270(v64, &v66[*(v67 + 48)], &qword_100018A10, &qword_10000D8C8);
    sub_100004270(v65, &v66[*(v67 + 64)], &qword_100018A08, &qword_10000D8C0);
    sub_1000042D8(v59, &qword_100018A08, &qword_10000D8C0);
    sub_1000042D8(v58, &qword_100018A10, &qword_10000D8C8);
    v68 = *(v61 + 8);
    v68(v84, v60);
    sub_1000042D8(v65, &qword_100018A08, &qword_10000D8C0);
    sub_1000042D8(v64, &qword_100018A10, &qword_10000D8C8);
    return (v68)(v63, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100003D3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100001F6C(&qword_100018A10, &qword_10000D8C8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v8 = &v34 - v7;
  v9 = *(v1 + 40);
  if (v9)
  {
    v38 = *(v1 + 32);
    v39 = v9;
    v36 = v5;
    v37 = v6;
    sub_100002380();

    v10 = sub_10000CB94();
    v12 = v11;
    v14 = v13;
    sub_10000CB34();
    v15 = sub_10000CB74();
    v17 = v16;
    v35 = a1;
    v19 = v18;

    sub_100004040(v10, v12, v14 & 1);

    sub_10000CC14();
    v20 = sub_10000CB64();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_100004040(v15, v17, v19 & 1);

    KeyPath = swift_getKeyPath();
    v28 = v36;
    v29 = &v8[*(v36 + 36)];
    v30 = v29 + *(sub_100001F6C(&qword_100018A40, &qword_10000D918) + 28);
    sub_10000C954();
    *v29 = swift_getKeyPath();
    *v8 = v20;
    *(v8 + 1) = v22;
    v8[16] = v24 & 1;
    *(v8 + 3) = v26;
    *(v8 + 4) = KeyPath;
    *(v8 + 5) = 0x3FE999999999999ALL;
    v31 = v35;
    sub_100004200(v8, v35);
    return (*(v37 + 56))(v31, 0, 1, v28);
  }

  else
  {
    v33 = *(v6 + 56);

    return v33(a1, 1, 1);
  }
}

id sub_100003FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v6[0] = *v1;
  v6[1] = v3;
  v6[2] = v1[2];
  *a1 = sub_10000CA74();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v4 = sub_100001F6C(&qword_100018A00, &qword_10000D8B8);
  return sub_1000036F8(v6, (a1 + *(v4 + 44)));
}

uint64_t sub_100004040(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100004050(uint64_t a1)
{
  v2 = sub_10000C964();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000C9E4();
}

unint64_t sub_100004120()
{
  result = qword_100018A28;
  if (!qword_100018A28)
  {
    sub_10000201C(&qword_100018A20, &qword_10000D908);
    sub_10000437C(&qword_100018A30, &qword_100018A38, &qword_10000D910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018A28);
  }

  return result;
}

uint64_t sub_100004200(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F6C(&qword_100018A10, &qword_10000D8C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004270(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100001F6C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000042D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100001F6C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000437C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000201C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000043D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardWidgetTimelineEntry();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100004458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardWidgetTimelineEntry();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AppleCardContentView()
{
  result = qword_100018AB8;
  if (!qword_100018AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004514()
{
  result = type metadata accessor for AppleCardWidgetTimelineEntry();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10000459C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v52 = sub_100001F6C(&qword_100018AF8, &qword_10000D9D0);
  v5 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v7 = &v51 - v6;
  v8 = sub_100001F6C(&qword_100018B00, &qword_10000D9D8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v51 - v10;
  v12 = sub_100001F6C(&qword_100018B08, &qword_10000D9E0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v51 - v14;
  v16 = sub_100001F6C(&qword_100018B10, &qword_10000D9E8);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v51 - v19;
  v21 = a1 + *(type metadata accessor for AppleCardWidgetTimelineEntry() + 20);
  v22 = *(v21 + 8);
  if (v22)
  {
    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    v56 = *v21;
    v57 = v22;
    v58 = v24;
    v59 = v23;
    v60 = *(v21 + 32);
    *v15 = sub_10000CA74();
    *(v15 + 1) = 0;
    v15[16] = 1;
    v25 = sub_100001F6C(&qword_100018B68, &qword_10000DAA8);
    sub_100004BE0(&v56, a1, &v15[*(v25 + 44)]);
    if (PKIsPad())
    {
      if (qword_1000188F0 != -1)
      {
        swift_once();
      }

      v26 = qword_100019790;
    }

    else
    {
      if (qword_1000188E8 != -1)
      {
        swift_once();
      }

      v26 = qword_100019778;
    }

    v32 = sub_1000024EC(v8, v26);
    sub_100004270(v32, v11, &qword_100018B00, &qword_10000D9D8);
    v33 = sub_10000437C(&qword_100018B28, &qword_100018B08, &qword_10000D9E0);
    sub_10000CBB4();
    sub_100005538(v11);
    sub_1000042D8(v15, &qword_100018B08, &qword_10000D9E0);
    (*(v17 + 16))(v7, v20, v16);
    swift_storeEnumTagMultiPayload();
    sub_100001F6C(&qword_100018B20, &qword_10000DA88);
    v54 = v12;
    v55 = v33;
    swift_getOpaqueTypeConformance2();
    sub_1000053C8();
    v34 = v53;
    sub_10000CAE4();
    (*(v17 + 8))(v20, v16);
    v35 = sub_100001F6C(&qword_100018B18, &qword_10000D9F0);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  else if (a2 == 3)
  {
    v27 = sub_100001F6C(&qword_100018B18, &qword_10000D9F0);
    v28 = *(*(v27 - 8) + 56);
    v29 = v27;
    v30 = v53;

    return v28(v30, 1, 1, v29);
  }

  else
  {
    sub_10000817C(a2);
    v36 = sub_10000CB84();
    v38 = v37;
    v40 = v39;
    v42 = v41;
    KeyPath = swift_getKeyPath();
    v44 = swift_getKeyPath();
    v45 = v40 & 1;
    LOBYTE(v56) = v40 & 1;
    v46 = sub_10000CC14();
    v47 = swift_getKeyPath();
    *v7 = v36;
    *(v7 + 1) = v38;
    v7[16] = v45;
    *(v7 + 3) = v42;
    *(v7 + 4) = KeyPath;
    *(v7 + 5) = 0x3FE0000000000000;
    *(v7 + 6) = v44;
    v7[56] = 1;
    *(v7 + 8) = v47;
    *(v7 + 9) = v46;
    swift_storeEnumTagMultiPayload();
    sub_100001F6C(&qword_100018B20, &qword_10000DA88);
    v48 = sub_10000437C(&qword_100018B28, &qword_100018B08, &qword_10000D9E0);
    v56 = v12;
    v57 = v48;
    swift_getOpaqueTypeConformance2();
    sub_1000053C8();
    v49 = v53;
    sub_10000CAE4();
    v50 = sub_100001F6C(&qword_100018B18, &qword_10000D9F0);
    return (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
  }
}

uint64_t sub_100004BE0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = a1[2];
  v53 = (a1 + 2);
  v7 = a1[1];
  v55 = *a1;
  v56 = v6;
  v8 = a1[3];
  v9 = a1[4];
  v52 = (a1 + 4);
  v54 = v9;
  v57 = a1[5];
  v58 = v8;
  v10 = type metadata accessor for BridgedSpendingSummaryChartView();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_100001F6C(&qword_100018B70, &qword_10000DAB0);
  v14 = *(v50 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v50);
  v17 = &v45 - v16;
  v18 = sub_100001F6C(&qword_100018B78, &qword_10000DAB8);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = &v45 - v20;
  v22 = sub_100001F6C(&qword_100018B80, &qword_10000DAC0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v51 = &v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v49 = &v45 - v26;
  v27 = *(a2 + *(type metadata accessor for AppleCardWidgetTimelineEntry() + 20) + 48);
  if (v27)
  {
    KeyPath = swift_getKeyPath();
    v48 = v7;
    *(v13 + *(v10 + 20)) = KeyPath;
    sub_100001F6C(&qword_1000189E0, &qword_10000D810);
    swift_storeEnumTagMultiPayload();
    v29 = swift_getKeyPath();
    *v13 = v27;
    v30 = v13 + *(v10 + 24);
    *v30 = v29;
    v30[8] = 0;
    v31 = sub_1000055A0();
    v47 = v27;
    sub_10000CBA4();
    sub_100005740(v13);
    v32 = *(v14 + 16);
    v33 = v17;
    v46 = v17;
    v34 = v14;
    v35 = v50;
    v32(v21, v33, v50);
    swift_storeEnumTagMultiPayload();
    sub_100001F6C(&qword_100018B88, &qword_10000DAC8);
    *&v62 = v10;
    *(&v62 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_10000437C(&qword_100018B98, &qword_100018B88, &qword_10000DAC8);
    v36 = v49;
    v7 = v48;
    sub_10000CAE4();

    (*(v34 + 8))(v46, v35);
  }

  else
  {
    *v21 = sub_10000CC04();
    *(v21 + 4) = 256;
    swift_storeEnumTagMultiPayload();
    sub_100001F6C(&qword_100018B88, &qword_10000DAC8);
    v37 = sub_1000055A0();
    *&v62 = v10;
    *(&v62 + 1) = v37;
    swift_getOpaqueTypeConformance2();
    sub_10000437C(&qword_100018B98, &qword_100018B88, &qword_10000DAC8);
    v36 = v49;
    sub_10000CAE4();
  }

  v38 = *a1;
  v61 = *v53;
  v62 = v38;
  v60 = *v52;
  v39 = v51;
  sub_1000055F8(v36, v51);
  v40 = v56;
  *a3 = v55;
  a3[1] = v7;
  v42 = v57;
  v41 = v58;
  a3[2] = v40;
  a3[3] = v41;
  a3[4] = v54;
  a3[5] = v42;
  v43 = sub_100001F6C(&qword_100018BA0, &qword_10000DAD0);
  sub_1000055F8(v39, a3 + *(v43 + 48));
  sub_100005668(&v62, v59);
  sub_100005668(&v61, v59);
  sub_100004270(&v60, v59, &qword_100018BA8, &qword_10000DAD8);

  sub_1000042D8(v36, &qword_100018B80, &qword_10000DAC0);
  sub_1000042D8(v39, &qword_100018B80, &qword_10000DAC0);
}

uint64_t sub_100005140@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for AppleCardWidgetTimelineEntry() + 20) + 56);
  *a1 = sub_10000CC34();
  a1[1] = v4;
  v5 = sub_100001F6C(&qword_100018AF0, &qword_10000D9C8);
  return sub_10000459C(v1, v3, a1 + *(v5 + 44));
}

uint64_t sub_1000051AC(uint64_t a1)
{
  v2 = sub_10000C8F4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10000C984();
}

uint64_t sub_100005274@<X0>(void *a1@<X8>)
{
  result = sub_10000C9F4();
  *a1 = v3;
  return result;
}

uint64_t sub_1000052A0@<X0>(void *a1@<X8>)
{
  result = sub_10000C9F4();
  *a1 = v3;
  return result;
}

uint64_t sub_10000531C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10000CA14();
  *a1 = result;
  return result;
}

uint64_t sub_100005370@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000C9B4();
  *a1 = result;
  return result;
}

uint64_t sub_10000539C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10000C9C4();
}

unint64_t sub_1000053C8()
{
  result = qword_100018B30;
  if (!qword_100018B30)
  {
    sub_10000201C(&qword_100018B20, &qword_10000DA88);
    sub_100005480();
    sub_10000437C(&qword_100018B58, &qword_100018B60, &qword_10000DAA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B30);
  }

  return result;
}

unint64_t sub_100005480()
{
  result = qword_100018B38;
  if (!qword_100018B38)
  {
    sub_10000201C(&qword_100018B40, &qword_10000DA90);
    sub_100004120();
    sub_10000437C(&qword_100018B48, &qword_100018B50, &qword_10000DA98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B38);
  }

  return result;
}

uint64_t sub_100005538(uint64_t a1)
{
  v2 = sub_100001F6C(&qword_100018B00, &qword_10000D9D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000055A0()
{
  result = qword_100018B90;
  if (!qword_100018B90)
  {
    type metadata accessor for BridgedSpendingSummaryChartView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018B90);
  }

  return result;
}

uint64_t sub_1000055F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100001F6C(&qword_100018B80, &qword_10000DAC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000056EC@<X0>(void *a1@<X8>)
{
  result = sub_10000C994();
  *a1 = v3;
  return result;
}

uint64_t sub_100005740(uint64_t a1)
{
  v2 = type metadata accessor for BridgedSpendingSummaryChartView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000057E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000057EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005834(uint64_t result, int a2, int a3)
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

uint64_t sub_10000589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v87 = a2;
  *&v88 = a1;
  v2 = sub_100001F6C(&qword_100018BC0, &qword_10000DBD0);
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  __chkstk_darwin(v2);
  v5 = &v62 - v4;
  v75 = sub_100001F6C(&qword_100018BC8, &qword_10000DBD8);
  v76 = *(v75 - 8);
  v6 = *(v76 + 64);
  __chkstk_darwin(v75);
  v63 = &v62 - v7;
  v8 = sub_100001F6C(&qword_100018BD0, &qword_10000DBE0);
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v65 = &v62 - v11;
  v82 = sub_100001F6C(&qword_100018BD8, &qword_10000DBE8);
  v80 = *(v82 - 8);
  v12 = *(v80 + 64);
  __chkstk_darwin(v82);
  v71 = &v62 - v13;
  v84 = sub_100001F6C(&qword_100018BE0, &qword_10000DBF0);
  v81 = *(v84 - 8);
  v14 = *(v81 + 64);
  __chkstk_darwin(v84);
  v79 = &v62 - v15;
  v16 = sub_100001F6C(&qword_100018BE8, &qword_10000DBF8);
  v85 = *(v16 - 8);
  v86 = v16;
  v17 = *(v85 + 64);
  __chkstk_darwin(v16);
  v83 = &v62 - v18;
  type metadata accessor for ConfigurationIntent();
  type metadata accessor for AppleCardWidgetDataManager();
  v19 = swift_allocObject();
  v20 = objc_opt_self();

  *(v19 + 16) = [v20 sharedInstance];
  *(v19 + 24) = [objc_opt_self() sharedInstance];
  v93 = v19;
  sub_100001F6C(&qword_100018BF0, &qword_10000DC00);
  v21 = sub_10000201C(&qword_100018BF8, &qword_10000DC08);
  v22 = sub_10000201C(&qword_100018C00, &qword_10000DC10);
  v23 = sub_10000665C();
  v24 = sub_10000437C(&qword_100018C18, &qword_100018C00, &qword_10000DC10);
  v89 = v21;
  v90 = v22;
  v91 = v23;
  v92 = v24;
  swift_getOpaqueTypeConformance2();
  sub_100006740();
  sub_10000CC84();
  v25 = sub_100001F6C(&qword_100018C28, &qword_10000DC18);
  v26 = sub_10000CC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 80);
  v29 = (v28 + 32) & ~v28;
  v69 = *(v27 + 72);
  v68 = v28;
  v73 = v25;
  v30 = swift_allocObject();
  v88 = xmmword_10000DB50;
  *(v30 + 16) = xmmword_10000DB50;
  v31 = *(v27 + 104);
  v70 = v29;
  v67 = enum case for WidgetFamily.systemSmall(_:);
  v74 = v26;
  v72 = v27 + 104;
  v66 = v31;
  v31(v30 + v29);
  v32 = sub_10000437C(&qword_100018C30, &qword_100018BC0, &qword_10000DBD0);
  v33 = v63;
  sub_10000CA94();

  (*(v64 + 8))(v5, v2);
  sub_10000CA54();
  v34 = sub_10000CB84();
  v36 = v35;
  LOBYTE(v21) = v37;
  v89 = v2;
  v90 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v39 = v65;
  v40 = v75;
  sub_10000CAB4();
  sub_100004040(v34, v36, v21 & 1);

  v41 = v40;
  (*(v76 + 8))(v33, v40);
  sub_10000CA54();
  v42 = v71;
  v43 = sub_10000CB84();
  v45 = v44;
  LOBYTE(v36) = v46;
  v89 = v41;
  v90 = OpaqueTypeConformance2;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v77;
  sub_10000CA84();
  sub_100004040(v43, v45, v36 & 1);

  (*(v78 + 8))(v39, v48);
  if (qword_1000188D8 != -1)
  {
    swift_once();
  }

  if ((byte_100019758 & 1) == 0 && !qword_100019750)
  {
    PKIsVision();
  }

  v89 = v48;
  v90 = v47;
  v49 = swift_getOpaqueTypeConformance2();
  v50 = v79;
  v51 = v82;
  sub_10000CAD4();
  (*(v80 + 8))(v42, v51);
  v89 = v51;
  v90 = v49;
  v52 = swift_getOpaqueTypeConformance2();
  v54 = v83;
  v53 = v84;
  sub_10000CAC4();
  (*(v81 + 8))(v50, v53);
  sub_100001F6C(&qword_100018C38, &qword_10000DC20);
  v55 = *(sub_10000CC64() - 8);
  v56 = *(v55 + 72);
  v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  *(swift_allocObject() + 16) = v88;
  sub_10000CC54();
  v58 = v70;
  v59 = swift_allocObject();
  *(v59 + 16) = v88;
  v66(v59 + v58, v67, v74);
  v89 = v53;
  v90 = v52;
  swift_getOpaqueTypeConformance2();
  v60 = v86;
  sub_10000CAA4();

  return (*(v85 + 8))(v54, v60);
}

uint64_t sub_100006360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = sub_10000CB04();
  v3 = *(v21 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AppleCardContentView();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100001F6C(&qword_100018BF8, &qword_10000DC08);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  sub_100006794(a1, v10);
  sub_10000CC34();
  sub_10000C944();
  sub_1000067F8(v10, v14);
  v15 = &v14[*(v11 + 36)];
  v16 = v27;
  *(v15 + 4) = v26;
  *(v15 + 5) = v16;
  *(v15 + 6) = v28;
  v17 = v23;
  *v15 = v22;
  *(v15 + 1) = v17;
  v18 = v25;
  *(v15 + 2) = v24;
  *(v15 + 3) = v18;
  sub_10000CAF4();
  sub_10000CC34();
  sub_100001F6C(&qword_100018C00, &qword_10000DC10);
  sub_10000665C();
  sub_10000437C(&qword_100018C18, &qword_100018C00, &qword_10000DC10);
  sub_10000CBF4();
  (*(v3 + 8))(v6, v21);
  return sub_10000685C(v14);
}

uint64_t sub_100006620@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000CD24();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10000665C()
{
  result = qword_100018C08;
  if (!qword_100018C08)
  {
    sub_10000201C(&qword_100018BF8, &qword_10000DC08);
    sub_1000066E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C08);
  }

  return result;
}

unint64_t sub_1000066E8()
{
  result = qword_100018C10;
  if (!qword_100018C10)
  {
    type metadata accessor for AppleCardContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C10);
  }

  return result;
}

unint64_t sub_100006740()
{
  result = qword_100018C20;
  if (!qword_100018C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C20);
  }

  return result;
}

uint64_t sub_100006794(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardWidgetTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000067F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppleCardContentView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000685C(uint64_t a1)
{
  v2 = sub_100001F6C(&qword_100018BF8, &qword_10000DC08);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000068C4()
{
  sub_10000201C(&qword_100018BE8, &qword_10000DBF8);
  sub_10000201C(&qword_100018BE0, &qword_10000DBF0);
  sub_10000201C(&qword_100018BD8, &qword_10000DBE8);
  sub_10000201C(&qword_100018BD0, &qword_10000DBE0);
  sub_10000201C(&qword_100018BC8, &qword_10000DBD8);
  sub_10000201C(&qword_100018BC0, &qword_10000DBD0);
  sub_10000437C(&qword_100018C30, &qword_100018BC0, &qword_10000DBD0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100006AAC()
{
  result = qword_100018C40;
  if (!qword_100018C40)
  {
    type metadata accessor for AppleCardWidgetTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C40);
  }

  return result;
}

__n128 sub_100006B04@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1000188E0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C8E4();
  sub_1000024EC(v2, qword_100019760);
  v3 = sub_10000C8C4();
  v4 = sub_10000CDC4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v17[0] = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_100007784(0xD00000000000001FLL, 0x800000010000DC30, v17);
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] returning placeholder", v5, 0xCu);
    sub_100007D2C(v6);
  }

  v7 = [objc_opt_self() zero];
  v8 = sub_10000CD14();
  v9 = PKCurrencyAmountMake();

  v10 = v9;
  sub_10000A6D4(v9, v9, v17);
  v15 = v17[1];
  v16 = v17[0];
  v11 = v18;
  v12 = v19;
  sub_10000C794();
  v13 = a1 + *(type metadata accessor for AppleCardWidgetTimelineEntry() + 20);
  result = v15;
  *v13 = v16;
  *(v13 + 16) = v15;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  *(v13 + 48) = 0;
  *(v13 + 56) = 3;
  return result;
}

uint64_t sub_100006CF0(_OWORD *a1, void (*a2)(char *))
{
  v4 = type metadata accessor for AppleCardWidgetTimelineEntry();
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C794();
  v9 = &v8[*(v5 + 28)];
  v10 = a1[1];
  *v9 = *a1;
  *(v9 + 1) = v10;
  *(v9 + 2) = a1[2];
  *(v9 + 41) = *(a1 + 41);
  sub_100007DD8(a1, v17);
  if (qword_1000188E0 != -1)
  {
    swift_once();
  }

  v11 = sub_10000C8E4();
  sub_1000024EC(v11, qword_100019760);
  v12 = sub_10000C8C4();
  v13 = sub_10000CDC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_100007784(0xD00000000000001FLL, 0x800000010000DC30, v17);
    _os_log_impl(&_mh_execute_header, v12, v13, "[%{public}s] returning snapshot", v14, 0xCu);
    sub_100007D2C(v15);
  }

  a2(v8);
  return sub_100007E34(v8);
}

uint64_t sub_100006ED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, void (*a8)(__int128 *))
{
  if (qword_1000188E0 != -1)
  {
    swift_once();
  }

  v14 = sub_10000C8E4();
  sub_1000024EC(v14, qword_100019760);
  v15 = sub_10000C8C4();
  v16 = sub_10000CDC4();
  if (os_log_type_enabled(v15, v16))
  {
    v23 = a3;
    v17 = a8;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    *(v18 + 4) = sub_100007784(0xD00000000000001FLL, 0x800000010000DC30, &v24);
    _os_log_impl(&_mh_execute_header, v15, v16, a6, v18, 0xCu);
    sub_100007D2C(v19);

    a8 = v17;
    a3 = v23;
  }

  v20 = [a1 period];
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;

  sub_10000B088(a5, a8, v21, a5, v20);
}

uint64_t sub_1000070C8(_OWORD *a1, void (*a2)(void))
{
  v4 = sub_10000CCA4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100001F6C(&qword_100018C50, &qword_10000DCF0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v11 = &v31 - v10;
  v12 = type metadata accessor for AppleCardWidgetTimelineEntry();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C794();
  v17 = &v16[*(v12 + 20)];
  v18 = a1[1];
  *v17 = *a1;
  *(v17 + 1) = v18;
  *(v17 + 2) = a1[2];
  *(v17 + 41) = *(a1 + 41);
  sub_100007DD8(a1, v35);
  if (qword_1000188E0 != -1)
  {
    swift_once();
  }

  v19 = sub_10000C8E4();
  sub_1000024EC(v19, qword_100019760);
  v20 = sub_10000C8C4();
  v21 = sub_10000CDC4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v32 = v13;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33 = v7;
    v25 = a2;
    v26 = v24;
    v35[0] = v24;
    *v23 = 136446210;
    *(v23 + 4) = sub_100007784(0xD00000000000001FLL, 0x800000010000DC30, v35);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] returning timeline", v23, 0xCu);
    sub_100007D2C(v26);
    a2 = v25;

    v13 = v32;
  }

  sub_100001F6C(&qword_100018C58, &qword_10000DCF8);
  v27 = *(v13 + 72);
  v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_10000DB50;
  sub_100006794(v16, v29 + v28);
  sub_10000CC94();
  sub_100006AAC();
  sub_10000CCE4();
  a2(v11);
  (*(v34 + 8))(v11, v8);
  return sub_100007E34(v16);
}

uint64_t sub_1000074E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000759C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10000759C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100007690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007E9C;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100007744()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007784(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100007850(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100007D78(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007D2C(v11);
  return v7;
}

unint64_t sub_100007850(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000795C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10000CEC4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10000795C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1000079A8(a1, a2);
  sub_100007AD8(&off_100014D60);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_1000079A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100007BC4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000CEC4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000CD64();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100007BC4(v10, 0);
        result = sub_10000CE94();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100007AD8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100007C38(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100007BC4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100001F6C(&qword_100018C48, &qword_10000DCE8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100007C38(char *result, int64_t a2, char a3, char *a4)
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
    sub_100001F6C(&qword_100018C48, &qword_10000DCE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_100007D2C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100007D78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007E34(uint64_t a1)
{
  v2 = type metadata accessor for AppleCardWidgetTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100007EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000C7A4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

uint64_t sub_100007F94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000C7A4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t type metadata accessor for AppleCardWidgetTimelineEntry()
{
  result = qword_100018CB8;
  if (!qword_100018CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000809C()
{
  result = sub_10000C7A4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100008110@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000C7A4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void sub_10000817C(char a1)
{
  if (a1 == 1)
  {
    v1 = sub_10000CD14();
    v2 = PDDeviceSpecificLocalizedStringKeyForKey();

    if (v2)
    {
      sub_10000CD24();

      sub_10000CA64();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_10000CA54();
  }
}

Swift::Int sub_100008268()
{
  v1 = *v0;
  sub_10000CF04();
  sub_10000CF14(v1);
  return sub_10000CF24();
}

Swift::Int sub_1000082DC()
{
  v1 = *v0;
  sub_10000CF04();
  sub_10000CF14(v1);
  return sub_10000CF24();
}

void sub_100008320(void *a1, void *a2, unint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a1)
  {
    goto LABEL_9;
  }

  v56 = a1;
  v11 = [v56 creditDetails];
  if (!v11)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v12 = v11;
  v13 = [v11 currencyCode];

  if (!v13)
  {

LABEL_9:
    v63 = 0u;
    memset(v64, 0, 25);
    aBlock = 0u;
    a4(&aBlock);
    return;
  }

  v14 = sub_10000CD24();
  v16 = v15;

  if (!a2)
  {

    v63 = 0u;
    memset(v64, 0, 24);
    aBlock = 0u;
    BYTE8(v64[1]) = 1;
    a4(&aBlock);

    return;
  }

  v49 = v14;
  v50 = v16;
  v51 = a5;
  v17 = objc_allocWithZone(PKTransactionSource);
  v53 = a2;
  v18 = [v17 initWithPaymentPass:?];
  sub_100001F6C(&qword_100018DC8, &qword_10000DE08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000DD50;
  *(inited + 32) = v18;
  v52 = v18;
  sub_10000AD9C(inited, &qword_100018DE8, &qword_10000DE18, &qword_100018DD0, PKTransactionSource_ptr);
  swift_setDeallocating();
  v20 = *(inited + 16);
  swift_arrayDestroy();
  if (!a3)
  {
    if (&_swiftEmptyArrayStorage >> 62 && sub_10000CED4())
    {
      sub_10000AD9C(&_swiftEmptyArrayStorage, &qword_100018DE0, &qword_10000DE10, &qword_100018DB8, PKAccountUser_ptr);
      v21 = v26;
      if ((v26 & 0xC000000000000001) != 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v21 = &_swiftEmptySetSingleton;
      if ((&_swiftEmptySetSingleton & 0xC000000000000001) != 0)
      {
        goto LABEL_15;
      }
    }

LABEL_18:
    v27 = -1 << *(v21 + 32);
    v22 = (v21 + 56);
    v23 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v25 = v29 & *(v21 + 56);

    v24 = 0;
    goto LABEL_22;
  }

  v21 = a3;
  if ((a3 & 0xC000000000000001) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:

  sub_10000CE14();
  sub_100003474(0, &qword_100018DB8, PKAccountUser_ptr);
  sub_10000B814(&qword_100018DC0, &qword_100018DB8, PKAccountUser_ptr);
  sub_10000CDA4();
  v21 = v57;
  v22 = v58;
  v23 = v59;
  v24 = v60;
  v25 = v61;
LABEL_22:
  v30 = (v23 + 64) >> 6;
  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_26;
  }

  while (sub_10000CE44())
  {
    sub_100003474(0, &qword_100018DB8, PKAccountUser_ptr);
    swift_dynamicCast();
    v31 = aBlock;
    v32 = v24;
    v33 = v25;
    if (!aBlock)
    {
      break;
    }

    while (1)
    {
      v36 = [objc_allocWithZone(PKTransactionSource) initWithAccountUser:v31];
      sub_100009B2C(&aBlock, v36);

      v24 = v32;
      v25 = v33;
      if ((v21 & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_26:
      v34 = v24;
      v35 = v25;
      v32 = v24;
      if (!v25)
      {
        while (1)
        {
          v32 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            break;
          }

          if (v32 >= v30)
          {
            goto LABEL_33;
          }

          v35 = *&v22[8 * v32];
          ++v34;
          if (v35)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

LABEL_30:
      v33 = (v35 - 1) & v35;
      v31 = *(*(v21 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v35)))));
      if (!v31)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_33:
  sub_10000B80C();
  v37 = objc_allocWithZone(PKTransactionSourceCollection);
  sub_100003474(0, &qword_100018DD0, PKTransactionSource_ptr);
  sub_10000B814(&qword_100018DD8, &qword_100018DD0, PKTransactionSource_ptr);
  isa = sub_10000CD84().super.isa;

  v39 = [v37 initWithTransactionSources:isa];

  v40 = [v56 creditDetails];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 accountSummary];

    if (v42)
    {
      if ([v42 requiresDebtCollectionNotices])
      {
      }

      else
      {
        v43 = [objc_opt_self() shouldDisplayTransactionsForTransactionSourceCollection:v39 withAccount:v56];

        if (v43)
        {
          v44 = [objc_allocWithZone(PKSpendingSummaryFetcher) initWithTransactionSourceCollection:v39 account:v56 accountUser:0];
          v45 = swift_allocObject();
          v45[2] = a6;
          v45[3] = a7;
          v45[4] = v44;
          v45[5] = v56;
          v45[6] = v49;
          v45[7] = v50;
          v45[8] = a4;
          v45[9] = v51;
          *&v64[0] = sub_10000B8BC;
          *(&v64[0] + 1) = v45;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v63 = sub_100008F64;
          *(&v63 + 1) = &unk_100015368;
          v46 = _Block_copy(&aBlock);
          v47 = v56;

          v48 = v44;

          [v48 availableSummaries:v46];

          _Block_release(v46);
          return;
        }
      }
    }
  }

  v63 = 0u;
  memset(v64, 0, 24);
  aBlock = 0u;
  BYTE8(v64[1]) = 2;
  a4(&aBlock);
}

uint64_t sub_100008A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void (*a10)(__int128 *))
{
  v16 = sub_10000C7A4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5 > 1)
  {
    if (a5 == 2)
    {
      v21 = *(a2 + 16);
      if (v21)
      {
        (*(v17 + 16))(v20, a2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v21 - 1), v16);
        goto LABEL_13;
      }

      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    if (a5 == 3)
    {
      v23 = *(a3 + 16);
      if (v23)
      {
        (*(v17 + 16))(v20, a3 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v23 - 1), v16);
LABEL_13:
        v24.super.isa = sub_10000C774().super.isa;
        if (a5 == 3)
        {
          v25 = 2;
        }

        else
        {
          v25 = a5 == 2;
        }

        a5 = [a6 categoryTotalSpendingSummaryStartingWithDate:v24.super.isa type:v25];

        v26 = [a7 creditDetails];
        if (v26)
        {
          v27 = v26;
          v48 = a5;
          a5 = [v26 accountSummary];

          v28 = [a7 creditDetails];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 cardBalance];

            v47 = v16;
            if (v30)
            {
              if (!a5)
              {

                goto LABEL_29;
              }

              v31 = [a5 availableCredit];
              if (v31)
              {
                v32 = v31;
                v33 = objc_allocWithZone(PKCurrencyAmount);
                v34 = v32;
                v35 = sub_10000CD14();
                v36 = [v33 initWithAmount:v34 currency:v35 exponent:0];

                v37 = v30;
                sub_10000A6D4(v30, v36, &v52);
                v49 = v52;
                v50 = v53;
                *v51 = v54;
                *&v51[16] = v48;
                v51[24] = 3;
                v55 = v52;
                v56 = v53;
                v57[0] = v54;
                *(v57 + 9) = *&v51[9];
                a10(&v55);
                sub_10000B8F8(&v49);

                return (*(v17 + 8))(v20, v47);
              }
            }

            else if (!a5)
            {
              goto LABEL_29;
            }

            v38 = a5;
            v39 = PKCurrentUserAltDSID();
            v40 = [v38 accountUserActivityForAccountUserAltDSID:v39];

            if (v40)
            {
              v41 = [v40 totalSpending];

              if (v41)
              {
                v42 = objc_allocWithZone(PKCurrencyAmount);
                v43 = v41;
                v44 = sub_10000CD14();
                v45 = [v42 initWithAmount:v43 currency:v44 exponent:0];

                sub_10000A6D4(v45, 0, &v52);
                v49 = v52;
                v50 = v53;
                *v51 = v54;
                *&v51[16] = v48;
                v51[24] = 3;
                v55 = v52;
                v56 = v53;
                v57[0] = v54;
                *(v57 + 9) = *&v51[9];
                a10(&v55);
                sub_10000B8F8(&v49);

                return (*(v17 + 8))(v20, v47);
              }
            }

LABEL_29:
            v56 = 0u;
            memset(v57, 0, 25);
            v55 = 0u;
            a10(&v55);

            return (*(v17 + 8))(v20, v47);
          }

          goto LABEL_35;
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    if (!a5)
    {
      sub_10000C784();
      goto LABEL_13;
    }

    if (a5 == 1)
    {
      v22 = *(a1 + 16);
      if (v22)
      {
        (*(v17 + 16))(v20, a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * (v22 - 1), v16);
        goto LABEL_13;
      }

      goto LABEL_32;
    }
  }

LABEL_36:
  *&v55 = a5;
  result = sub_10000CEE4();
  __break(1u);
  return result;
}

uint64_t sub_100008F64(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10000C7A4();
  v3 = sub_10000CD74();
  v4 = sub_10000CD74();
  v5 = sub_10000CD74();

  v2(v3, v4, v5);
}

void sub_100009030(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = swift_allocObject();
  v11[2] = a6;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = a2;
  v14[4] = sub_10000B800;
  v14[5] = v11;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1000091B4;
  v14[3] = &unk_100015318;
  v12 = _Block_copy(v14);

  v13 = a2;

  [a5 defaultAccountForFeature:2 completion:v12];
  _Block_release(v12);
}

uint64_t sub_100009138(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void), uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = *(a3 + 16);
  *(a3 + 16) = a1;
  v11 = a1;

  return a4(a6, 0);
}

void sub_1000091B4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_100009240(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  v11 = a2;
  v10 = a3;
  v7(v11, v10, sub_10000B79C, v9);
}

void sub_100009314(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a5 + 16);
  if (v13 && (v14 = [v13 accountIdentifier]) != 0)
  {
    v15 = v14;
    sub_10000CD24();

    v16 = sub_10000CD14();

    v17 = swift_allocObject();
    v17[2] = a7;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a2;
    aBlock[4] = sub_10000B758;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100009520;
    aBlock[3] = &unk_1000152A0;
    v18 = _Block_copy(aBlock);

    v19 = a2;

    [a6 paymentPassWithAssociatedAccountIdentifier:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
    a3(a2, 1);
  }
}

uint64_t sub_1000094A4(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a2 + 16);
  *(a2 + 16) = a1;
  v10 = a1;

  return a3(a5, 0);
}

void sub_100009520(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_10000958C(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  swift_beginAccess();
  v13 = *(a5 + 16);
  if (v13 && (v14 = [v13 accountIdentifier]) != 0)
  {
    v15 = v14;
    sub_10000CD24();

    v16 = sub_10000CD14();

    v17 = swift_allocObject();
    v17[2] = a7;
    v17[3] = a3;
    v17[4] = a4;
    v17[5] = a2;
    aBlock[4] = sub_10000B74C;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000097A0;
    aBlock[3] = &unk_100015250;
    v18 = _Block_copy(aBlock);

    v19 = a2;

    [a6 accountUsersForAccountWithIdentifier:v16 completion:v18];
    _Block_release(v18);
  }

  else
  {
    a3(a2, 1);
  }
}

uint64_t sub_10000971C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a3(a5, 0);
}

uint64_t sub_1000097A0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    sub_100003474(0, &qword_100018DB8, PKAccountUser_ptr);
    sub_10000B814(&qword_100018DC0, &qword_100018DB8, PKAccountUser_ptr);
    v2 = sub_10000CD94();
  }

  v4(v2);
}

uint64_t sub_100009854(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v12 = *(a6 + 16);
  swift_beginAccess();
  v13 = *(a7 + 16);
  swift_beginAccess();
  v14 = *(a8 + 16);

  v15 = v12;
  v16 = v13;
  a4(v12, v13, v14);
}

void sub_10000992C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v9 = a3;
  swift_unknownObjectRetain();
  v8(a2, v9, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_1000099C4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_100009A28(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100009A40(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100009A5C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100009AB8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100009B2C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_10000CE34();

    if (v9)
    {

      sub_100003474(0, &qword_100018DD0, PKTransactionSource_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v24;
      return result;
    }

    result = sub_10000CE24();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v20 = sub_100009D64(v7, result + 1);
    v21 = *(v20 + 16);
    if (*(v20 + 24) <= v21)
    {
      sub_100009F54(v21 + 1);
    }

    v19 = v8;
    sub_10000A17C(v19, v20);

    *v3 = v20;
    goto LABEL_16;
  }

  sub_100003474(0, &qword_100018DD0, PKTransactionSource_ptr);
  v11 = sub_10000CDD4(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v19 = a2;
    sub_10000A200(v19, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
LABEL_16:
    *a1 = v19;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_10000CDE4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v22 = *(*(v6 + 48) + 8 * v13);
  *a1 = v22;
  v23 = v22;
  return 0;
}

Swift::Int sub_100009D64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100001F6C(&qword_100018DE8, &qword_10000DE18);
    v2 = sub_10000CE74();
    v15 = v2;
    sub_10000CE14();
    if (sub_10000CE44())
    {
      sub_100003474(0, &qword_100018DD0, PKTransactionSource_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_100009F54(v9 + 1);
        }

        v2 = v15;
        result = sub_10000CDD4(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_10000CE44());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_100009F54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F6C(&qword_100018DE8, &qword_10000DE18);
  result = sub_10000CE64();
  v6 = result;
  if (*(v3 + 16))
  {
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
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_10000CDD4(*(v6 + 40));
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_10000A17C(uint64_t a1, uint64_t a2)
{
  sub_10000CDD4(*(a2 + 40));
  v4 = -1 << *(a2 + 32);
  result = sub_10000CE04();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_10000A200(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100009F54(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000A370();
      goto LABEL_12;
    }

    sub_10000A4C0(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_10000CDD4(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100003474(0, &qword_100018DD0, PKTransactionSource_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_10000CDE4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_10000CEF4();
  __break(1u);
}

id sub_10000A370()
{
  v1 = v0;
  sub_100001F6C(&qword_100018DE8, &qword_10000DE18);
  v2 = *v0;
  v3 = sub_10000CE54();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

uint64_t sub_10000A4C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100001F6C(&qword_100018DE8, &qword_10000DE18);
  result = sub_10000CE64();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_10000CDD4(v17);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void sub_10000A6D4(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v80 = a2;
  v78 = sub_10000C7A4();
  v5 = *(v78 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v78);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C844();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000C824();
  v77 = *(v14 - 8);
  v15 = *(v77 + 64);
  __chkstk_darwin(v14);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C864();
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v72 = v14;
  v73 = v21;
  v74 = v20;
  v75 = v13;
  v76 = v10;
  v24 = [a1 amount];
  if (!v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v25 = v24;
  v26 = [v24 pk_isNegativeNumber];

  if (v26)
  {
    v70 = v8;
    v71 = v9;
    v27 = sub_10000CD14();
    v28 = PKLocalizedPaymentString(v27);

    if (!v28)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v69 = v5;
    sub_10000CD24();

    sub_100001F6C(&qword_100018DF0, &qword_10000DE20);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10000DB50;
    v30 = a1;
    v31 = [a1 negativeValue];
    if (!v31)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v32 = v31;
    v33 = [v31 formattedStringValue];

    if (!v33)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v34 = sub_10000CD24();
    v36 = v35;

    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_10000B928();
    *(v29 + 32) = v34;
    *(v29 + 40) = v36;
    v37 = sub_10000CD34();
    v79 = v38;

    a1 = v30;
    v5 = v69;
    v8 = v70;
    v9 = v71;
    v39 = v80;
    if (!v80)
    {
      goto LABEL_8;
    }

LABEL_12:
    v78 = v37;
    v55 = v39;
    v56 = sub_10000CD14();
    v57 = PKLocalizedFeatureString();

    if (v57)
    {
      v80 = a1;
      v47 = sub_10000CD24();
      v49 = v58;

      v59 = sub_10000CD14();
      v60 = PKLocalizedFeatureString();

      if (v60)
      {
        sub_10000CD24();

        sub_100001F6C(&qword_100018DF0, &qword_10000DE20);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_10000DB50;
        v62 = [v55 formattedStringValue];
        if (v62)
        {
          v63 = v62;
          v64 = sub_10000CD24();
          v66 = v65;

          *(v61 + 56) = &type metadata for String;
          *(v61 + 64) = sub_10000B928();
          *(v61 + 32) = v64;
          *(v61 + 40) = v66;
          v50 = sub_10000CD34();
          v51 = v67;

          v37 = v78;
          goto LABEL_16;
        }

        goto LABEL_21;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v52 = [a1 formattedStringValue];
  if (!v52)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v53 = v52;
  v37 = sub_10000CD24();
  v79 = v54;

  v39 = v80;
  if (v80)
  {
    goto LABEL_12;
  }

LABEL_8:
  v40 = v77;
  v41 = v72;
  (*(v77 + 104))(v17, enum case for Calendar.Identifier.gregorian(_:), v72);
  sub_10000C834();
  (*(v40 + 8))(v17, v41);
  v43 = v75;
  v42 = v76;
  (*(v76 + 104))(v75, enum case for Calendar.Component.month(_:), v9);
  sub_10000C784();
  sub_10000C854();
  (*(v5 + 8))(v8, v78);
  (*(v42 + 8))(v43, v9);
  (*(v73 + 8))(v23, v74);
  v44 = sub_10000CD14();
  v45 = PKGregorianMonthSpecificLocalizedStringKeyForKey();

  v46 = PKLocalizedFeatureString();
  if (v46)
  {
    v47 = sub_10000CD24();
    v49 = v48;

    v50 = 0;
    v51 = 0;
LABEL_16:
    v68 = v79;
    *a3 = v47;
    a3[1] = v49;
    a3[2] = v37;
    a3[3] = v68;
    a3[4] = v50;
    a3[5] = v51;
    return;
  }

LABEL_26:
  __break(1u);
}

void sub_10000AD9C(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_10000CED4();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_100001F6C(a2, a3);
      v7 = sub_10000CE84();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_10000CED4();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = sub_10000CEB4();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = sub_10000CDD4(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_100003474(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = sub_10000CDE4();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = sub_10000CDD4(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_100003474(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = sub_10000CDE4();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_10000B088(uint64_t a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = a4;
  v10[5] = a5;
  v11 = *(a1 + 16);
  if (v11 && (v12 = *(a1 + 24)) != 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = swift_allocObject();
    *(v15 + 16) = 0;
    v16 = objc_allocWithZone(PKAsyncUnaryOperationComposer);

    v17 = v11;
    v18 = v12;
    v19 = [v16 init];
    v20 = swift_allocObject();
    *(v20 + 16) = v17;
    *(v20 + 24) = v13;
    v35[0] = sub_10000B664;
    v35[1] = v20;
    *&v33 = _NSConcreteStackBlock;
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_100009240;
    *(&v34 + 1) = &unk_100015110;
    v21 = _Block_copy(&v33);
    v22 = v17;

    [v19 addOperation:v21];
    _Block_release(v21);
    v23 = swift_allocObject();
    v23[2] = v13;
    v23[3] = v18;
    v23[4] = v14;
    v35[0] = sub_10000B688;
    v35[1] = v23;
    *&v33 = _NSConcreteStackBlock;
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_100009240;
    *(&v34 + 1) = &unk_100015160;
    v24 = _Block_copy(&v33);
    v25 = v18;

    [v19 addOperation:v24];
    _Block_release(v24);
    v26 = swift_allocObject();
    v26[2] = v13;
    v26[3] = v22;
    v26[4] = v15;
    v35[0] = sub_10000B6DC;
    v35[1] = v26;
    *&v33 = _NSConcreteStackBlock;
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_100009240;
    *(&v34 + 1) = &unk_1000151B0;
    v27 = _Block_copy(&v33);
    v28 = v22;

    [v19 addOperation:v27];
    _Block_release(v27);
    v29 = [objc_allocWithZone(NSNull) init];
    v30 = swift_allocObject();
    v30[2] = sub_10000B5A8;
    v30[3] = v10;
    v30[4] = v13;
    v30[5] = v14;
    v30[6] = v15;
    v35[0] = sub_10000B738;
    v35[1] = v30;
    *&v33 = _NSConcreteStackBlock;
    *(&v33 + 1) = 1107296256;
    *&v34 = sub_10000992C;
    *(&v34 + 1) = &unk_100015200;
    v31 = _Block_copy(&v33);

    v32 = [v19 evaluateWithInput:v29 completion:v31];
    _Block_release(v31);

    swift_unknownObjectRelease();
  }

  else
  {
    v34 = 0u;
    memset(v35, 0, 25);
    v33 = 0u;

    a2(&v33);
  }
}

uint64_t sub_10000B568()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B5B4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B5EC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B624()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000B66C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000B694()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B6E8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10000B764()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B7B8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000B814(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003474(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000B864()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

unint64_t sub_10000B928()
{
  result = qword_100018DF8;
  if (!qword_100018DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleCardWidgetDataManager.AppleCardWidgetData.Failure(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppleCardWidgetDataManager.AppleCardWidgetData.Failure(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10000BB00()
{
  result = qword_100018E00;
  if (!qword_100018E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018E00);
  }

  return result;
}

uint64_t sub_10000BB9C()
{
  v0 = sub_100001F6C(&qword_100018B00, &qword_10000D9D8);
  sub_100002488(v0, qword_100019778);
  sub_1000024EC(v0, qword_100019778);
  v3._countAndFlagsBits = sub_10000CD24();
  sub_10000CD44(v3);

  sub_10000C764();
}

uint64_t sub_10000BC64()
{
  v0 = sub_100001F6C(&qword_100018B00, &qword_10000D9D8);
  sub_100002488(v0, qword_100019790);
  sub_1000024EC(v0, qword_100019790);
  sub_10000CEA4(27);

  v3._countAndFlagsBits = sub_10000CD24();
  sub_10000CD44(v3);

  sub_10000C764();
}

Swift::Int sub_10000BFD8()
{
  v1 = *v0;
  sub_10000CF04();
  sub_10000CF14(v1);
  return sub_10000CF24();
}

Swift::Int sub_10000C04C()
{
  v1 = *v0;
  sub_10000CF04();
  sub_10000CF14(v1);
  return sub_10000CF24();
}

unint64_t sub_10000C090@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000C424(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_10000C1C8(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for ConfigurationIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id sub_10000C248(uint64_t a1)
{
  *&v1[OBJC_IVAR___ConfigurationIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_10000CCF4().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for ConfigurationIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10000C360(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10000C3D0()
{
  result = qword_100018E60;
  if (!qword_100018E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018E60);
  }

  return result;
}

unint64_t sub_10000C424(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10000C434@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10000C720(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_10000C468(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() successWithResolvedValue:a1];

  return v1;
}

id sub_10000C4F4(uint64_t a1)
{
  v1 = [swift_getObjCClassFromMetadata() confirmationRequiredWithValueToConfirm:a1];

  return v1;
}

id sub_10000C660()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PeriodResolutionResult();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10000C6CC()
{
  result = qword_100018EF0;
  if (!qword_100018EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018EF0);
  }

  return result;
}

unint64_t sub_10000C720(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}