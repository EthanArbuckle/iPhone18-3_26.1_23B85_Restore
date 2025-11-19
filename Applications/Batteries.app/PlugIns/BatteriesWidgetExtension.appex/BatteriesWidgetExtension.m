__n128 sub_1000013F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100001408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100001428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_100008090)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100008090);
    }
  }
}

uint64_t sub_1000014A0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10000303C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10000151C@<X0>(uint64_t a1@<X8>)
{
  sub_10000318C();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for BasicTimelineEntry(0);
  v7 = *(v6 + 20);
  v8 = sub_10000317C();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  result = sub_10000302C();
  v10 = (a1 + *(v6 + 24));
  *v10 = v3;
  v10[1] = v5;
  return result;
}

uint64_t sub_1000015C0(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = (type metadata accessor for BasicTimelineEntry(0) - 8);
  v5 = *(*v4 + 64);
  __chkstk_darwin();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000318C();
  v9 = v8;
  v11 = v10;
  v12 = v4[7];
  v13 = sub_10000317C();
  (*(*(v13 - 8) + 56))(&v7[v12], 1, 1, v13);
  sub_10000302C();
  v14 = &v7[v4[8]];
  *v14 = v9;
  *(v14 + 1) = v11;
  a3(v7);
  return sub_100002EE0(v7);
}

uint64_t sub_1000016C8(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v25 = a3;
  v3 = *(*(sub_10000313C() - 8) + 64);
  __chkstk_darwin();
  v4 = (*(*(sub_1000024C4(&qword_1000080F8, &qword_100003478) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = sub_1000024C4(&qword_100008248, &qword_1000035C8);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v24 - v10;
  sub_1000024C4(&qword_100008250, qword_1000035D0);
  v12 = type metadata accessor for BasicTimelineEntry(0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100003360;
  v16 = v15 + v14;
  sub_10000318C();
  v18 = v17;
  v20 = v19;
  v21 = sub_10000317C();
  (*(*(v21 - 8) + 56))(v6, 1, 1, v21);
  sub_10000302C();
  sub_100002E70(v6, v16 + *(v12 + 20));
  v22 = (v16 + *(v12 + 24));
  *v22 = v18;
  v22[1] = v20;
  sub_10000312C();
  sub_100002E0C(&qword_100008240, type metadata accessor for BasicTimelineEntry);
  sub_10000319C();
  v25(v11);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000019B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100001A6C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100001A6C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002FF4;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100001C14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a1;
  v55 = a2;
  v2 = sub_1000024C4(&qword_1000080A0, &qword_100003410);
  v46 = *(v2 - 8);
  v3 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v2);
  v5 = &v44 - v4;
  v6 = sub_1000024C4(&qword_1000080A8, &qword_100003418);
  v7 = *(v6 - 8);
  v47 = v6;
  v48 = v7;
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v6);
  v10 = &v44 - v9;
  v11 = sub_1000024C4(&qword_1000080B0, &qword_100003420);
  v12 = *(v11 - 8);
  v49 = v11;
  v50 = v12;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  v16 = sub_1000024C4(&qword_1000080B8, &qword_100003428);
  v17 = *(v16 - 8);
  v51 = v16;
  v52 = v17;
  v18 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v21 = sub_1000024C4(&qword_1000080C0, &qword_100003430);
  v22 = *(v21 - 8);
  v53 = v21;
  v54 = v22;
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v21);
  v45 = &v44 - v24;
  sub_10000250C();
  type metadata accessor for BatteriesWidgetEntryView(0);
  sub_100002E0C(&qword_1000080D0, type metadata accessor for BatteriesWidgetEntryView);
  sub_100002578();

  sub_10000311C();
  sub_10000306C();
  v25 = sub_1000025CC();
  sub_1000030AC();

  (*(v46 + 8))(v5, v2);
  sub_10000306C();
  v56 = v2;
  v57 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = v47;
  sub_10000307C();

  (*(v48 + 8))(v10, v27);
  v56 = v27;
  v57 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = v49;
  sub_10000309C();
  (*(v50 + 8))(v15, v29);
  v56 = v29;
  v57 = v28;
  v30 = swift_getOpaqueTypeConformance2();
  v31 = v45;
  v32 = v51;
  sub_1000030BC();
  v33 = v20;
  v34 = v32;
  (*(v52 + 8))(v33, v32);
  sub_1000024C4(&qword_1000080E8, &qword_100003438);
  v35 = sub_10000310C();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100003370;
  v40 = v39 + v38;
  v41 = *(v36 + 104);
  v41(v39 + v38, enum case for WidgetFamily.accessoryRectangular(_:), v35);
  v41(v40 + v37, enum case for WidgetFamily.accessoryCircular(_:), v35);
  v56 = v34;
  v57 = v30;
  swift_getOpaqueTypeConformance2();
  v42 = v53;
  sub_10000308C();

  return (*(v54 + 8))(v31, v42);
}

uint64_t sub_1000022B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100002678(a1, a2);
  KeyPath = swift_getKeyPath();
  v4 = *(type metadata accessor for BatteriesWidgetEntryView(0) + 20);
  *(a2 + v4) = KeyPath;
  v5 = sub_1000024C4(&qword_1000080F0, &qword_100003470);

  return _swift_storeEnumTagMultiPayload(a2 + v4, v5, 0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000023C0();
  sub_1000030FC();
  return 0;
}

unint64_t sub_1000023C0()
{
  result = qword_100008098;
  if (!qword_100008098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100008098);
  }

  return result;
}

uint64_t sub_100002414(uint64_t a1, int a2)
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

uint64_t sub_10000245C(uint64_t result, int a2, int a3)
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

uint64_t sub_1000024C4(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000250C()
{
  result = qword_1000080C8;
  if (!qword_1000080C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000080C8);
  }

  return result;
}

unint64_t sub_100002578()
{
  result = qword_1000080D8;
  if (!qword_1000080D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080D8);
  }

  return result;
}

unint64_t sub_1000025CC()
{
  result = qword_1000080E0;
  if (!qword_1000080E0)
  {
    sub_100002630(&qword_1000080A0, &qword_100003410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000080E0);
  }

  return result;
}

uint64_t sub_100002630(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BasicTimelineEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000026FC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000027D0()
{
  sub_10000303C();
  if (v0 <= 0x3F)
  {
    sub_100002BFC(319, &unk_100008168, &type metadata accessor for TimelineEntryRelevance, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      type metadata accessor for CGSize();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000028E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6)
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = *(v12 + 48);

    return v13(a1, a2, v11);
  }

  else
  {
    v15 = sub_1000024C4(a5, a6);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + *(a3 + 20);

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100002A30(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = *(v14 + 56);

    return v15(a1, a2, a2, v13);
  }

  else
  {
    v17 = sub_1000024C4(a6, a7);
    v18 = *(*(v17 - 8) + 56);
    v19 = a1 + *(a4 + 20);

    return v18(v19, a2, a2, v17);
  }
}

void sub_100002B48()
{
  type metadata accessor for BasicTimelineEntry(319);
  if (v0 <= 0x3F)
  {
    sub_100002BFC(319, &unk_100008210, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100002BFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_100002C60()
{
  sub_100002630(&qword_1000080C0, &qword_100003430);
  sub_100002630(&qword_1000080B8, &qword_100003428);
  sub_100002630(&qword_1000080B0, &qword_100003420);
  sub_100002630(&qword_1000080A8, &qword_100003418);
  sub_100002630(&qword_1000080A0, &qword_100003410);
  sub_1000025CC();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100002E0C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002E70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1000080F8, &qword_100003478);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100002EE0(uint64_t a1)
{
  v2 = type metadata accessor for BasicTimelineEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002F3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000024C4(&qword_1000080F8, &qword_100003478);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}