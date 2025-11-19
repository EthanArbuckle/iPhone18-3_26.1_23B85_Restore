uint64_t sub_10001E0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001E130(v1, v6);
  return sub_10000309C(v6, a1);
}

uint64_t sub_10001E130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001E198()
{
  result = qword_1000ED858;
  if (!qword_1000ED858)
  {
    type metadata accessor for TTRTodayComplicationWidget.TodayInlineView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED858);
  }

  return result;
}

uint64_t sub_10001E1F0(uint64_t a1)
{
  sub_10001E324();
  v2 = sub_1000C2A28();
  v7._countAndFlagsBits = 0x80000001000CD060;
  v10._countAndFlagsBits = 0x647265764F206425;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x80000001000CD040;
  v9.value._object = 0x80000001000CCEC0;
  v9.value._countAndFlagsBits = 0xD000000000000011;
  v3.super.isa = v2;
  v10._object = 0xEA00000000006575;
  sub_1000C0838(v8, v9, v3, v10, v7);

  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000C3590;
  *(v4 + 56) = &type metadata for Int;
  *(v4 + 64) = &protocol witness table for Int;
  *(v4 + 32) = a1;
  v5 = sub_1000C2648();

  return v5;
}

unint64_t sub_10001E324()
{
  result = qword_1000ED860;
  if (!qword_1000ED860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000ED860);
  }

  return result;
}

char *sub_10001E370(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 16);

    v9(&v6[v7], a2 + v7, v8);
  }

  return v6;
}

uint64_t sub_10001E44C(char *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = *(a2 + 20);
  v6 = sub_1000C1118();
  v7 = *(*(v6 - 8) + 8);

  return v7(&a1[v5], v6);
}

char *sub_10001E4C0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C1118();
  v7 = *(*(v6 - 8) + 16);

  v7(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_10001E554(char *a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_1000C1118();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  return a1;
}

char *sub_10001E5E0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = *(a3 + 20);
  v6 = sub_1000C1118();
  (*(*(v6 - 8) + 32))(&a1[v5], &a2[v5], v6);
  return a1;
}

char *sub_10001E658(char *a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_1000C1118();
  (*(*(v8 - 8) + 40))(&a1[v7], &a2[v7], v8);
  return a1;
}

uint64_t sub_10001E6F0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1000C1118();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_10001E7B0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000C1118();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for TTRTodayComplicationWidgetProvider()
{
  result = qword_1000ED8D8;
  if (!qword_1000ED8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10001E8A0()
{
  result = sub_1000C1118();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_10001E940()
{
  result = qword_1000ED910;
  if (!qword_1000ED910)
  {
    type metadata accessor for TTRTodayComplicationWidgetTimelineEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED910);
  }

  return result;
}

uint64_t sub_10001E998()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000ED868);
  v1 = sub_10000D978(v0, qword_1000ED868);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10001EA60(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v35 - v9;
  v11 = sub_1000C2488();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C24A8();
  swift_getKeyPath();
  v16 = sub_1000C2498();

  (*(v12 + 8))(v15, v11);
  if (v16)
  {
  }

  v17 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v18 = a1 + *(v4 + 20);
  v19 = v2 + *(v17 + 20);
  sub_1000C1108();
  v20 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
  *(v18 + *(v20 + 24)) = &_swiftEmptyArrayStorage;
  *(v18 + *(v20 + 20)) = 1;
  sub_1000C0AE8();
  v21 = *(v4 + 24);
  v22 = sub_1000C2478();
  (*(*(v22 - 8) + 56))(a1 + v21, 1, 1, v22);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v23 = sub_1000C1568();
  sub_10000D978(v23, qword_1000ED868);
  sub_100022B94(a1, v10, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  v24 = sub_1000C1558();
  v25 = sub_1000C2968();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v35 = v17;
    v36 = v27;
    *v26 = 136446467;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v28 = sub_1000C26A8();
    v30 = sub_1000B7B58(v28, v29, &v36);

    *(v26 + 4) = v30;
    *(v26 + 12) = 2081;
    sub_100022B94(v10, v8, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v31 = sub_1000C26A8();
    v33 = v32;
    sub_100022BFC(v10, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v34 = sub_1000B7B58(v31, v33, &v36);

    *(v26 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s: Created placeholder {entry: %{private}s}", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100022BFC(v10, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  }
}

uint64_t sub_10001EE68@<X0>(void *a1@<X8>)
{
  result = sub_1000C1808();
  *a1 = v3;
  return result;
}

uint64_t sub_10001EEBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v78 = a2;
  v79 = a3;
  v5 = sub_1000C0AF8();
  v81 = *(v5 - 8);
  v82 = v5;
  v6 = *(v81 + 64);
  __chkstk_darwin(v5);
  v80 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v73 = *(v8 - 8);
  v9 = *(v73 + 64);
  __chkstk_darwin(v8);
  v74 = v10;
  v76 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C24B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v67 = v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = v65 - v16;
  v18 = sub_1000C2488();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C1118();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v70 = v27;
  v71 = v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v66 = v8;
  v28 = *(v8 + 20);
  v72 = v24;
  v30 = *(v24 + 16);
  v29 = v24 + 16;
  v77 = v3;
  v83 = v65 - v31;
  v75 = v32;
  v69 = v30;
  v30();
  sub_1000C24A8();
  swift_getKeyPath();
  v68 = sub_1000C2498();

  (*(v19 + 8))(v22, v18);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v33 = sub_1000C1568();
  sub_10000D978(v33, qword_1000ED868);
  v34 = *(v12 + 16);
  v34(v17, a1, v11);
  v35 = sub_1000C1558();
  v36 = sub_1000C2968();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v65[1] = v29;
    v38 = v12;
    v39 = v17;
    v40 = v37;
    v41 = swift_slowAlloc();
    v65[2] = v41;
    *v40 = 136446466;
    v84 = v66;
    v85[0] = v41;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v42 = sub_1000C26A8();
    v44 = sub_1000B7B58(v42, v43, v85);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v34(v67, v39, v11);
    v45 = sub_1000C26A8();
    v47 = v46;
    (*(v38 + 8))(v39, v11);
    v48 = sub_1000B7B58(v45, v47, v85);

    *(v40 + 14) = v48;
    _os_log_impl(&_mh_execute_header, v35, v36, "%{public}s: Requesting snapshot {context: %{public}s", v40, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  if (v68)
  {
    v49 = v68;
  }

  else
  {
    v49 = &off_1000E7960;
  }

  v50 = v77;
  v68 = *v77;
  v51 = v71;
  v52 = v75;
  (v69)(v71, v83, v75);
  v53 = v76;
  sub_100022B94(v50, v76, type metadata accessor for TTRTodayComplicationWidgetProvider);
  v54 = v72;
  v55 = (*(v72 + 80) + 16) & ~*(v72 + 80);
  v56 = (v70 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = (*(v73 + 80) + v56 + 16) & ~*(v73 + 80);
  v58 = (v74 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  (*(v54 + 32))(v59 + v55, v51, v52);
  v60 = (v59 + v56);
  v61 = v79;
  *v60 = v78;
  v60[1] = v61;
  sub_100022B2C(v53, v59 + v57, type metadata accessor for TTRTodayComplicationWidgetProvider);
  *(v59 + v58) = v49;

  v62 = v80;
  sub_1000C0AE8();
  v63 = v83;
  sub_10008D488(v83, 0x7FFFFFFFFFFFFFFFLL, v49, v62, sub_100022DD8, v59);

  (*(v81 + 8))(v62, v82);
  return (*(v54 + 8))(v63, v52);
}

uint64_t sub_10001F5DC(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v75 = a2;
  v76 = a5;
  v80 = a4;
  v81 = a3;
  v79 = sub_1000C0938();
  v6 = *(v79 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v79);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C1118();
  v74 = *(v10 - 8);
  v11 = *(v74 + 64);
  __chkstk_darwin(v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry();
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v78 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v77 = &v72 - v24;
  __chkstk_darwin(v23);
  v26 = &v72 - v25;
  if (*(a1 + 16))
  {
    sub_100022B94(a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for TTRNewWidgetTimelineEntry);
    v27 = sub_1000C0AF8();
    (*(*(v27 - 8) + 16))(v26, v18, v27);
    v28 = &v18[*(v14 + 20)];
    v29 = type metadata accessor for TTRNewWidgetViewModel(0);
    v30 = &v26[*(v19 + 20)];
    (*(v6 + 16))(v30, &v28[v29[18]], v79);
    v31 = v29[20];
    v32 = *&v28[v29[19]];
    LOBYTE(v28) = v28[v31];
    v33 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    *&v30[*(v33 + 24)] = v32;
    v30[*(v33 + 20)] = v28;
    sub_100022ABC(&v18[*(v14 + 24)], &v26[*(v19 + 24)]);

    sub_100022BFC(v18, type metadata accessor for TTRNewWidgetTimelineEntry);
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v34 = sub_1000C1568();
    sub_10000D978(v34, qword_1000ED868);
    v35 = v77;
    sub_100022B94(v26, v77, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    v36 = sub_1000C1558();
    v37 = sub_1000C2968();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v38 = 136446467;
      v82 = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v39 = sub_1000C26A8();
      v41 = sub_1000B7B58(v39, v40, &v83);

      *(v38 + 4) = v41;
      *(v38 + 12) = 2085;
      sub_100022B94(v35, v78, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v42 = sub_1000C26A8();
      v44 = v43;
      sub_100022BFC(v35, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v45 = sub_1000B7B58(v42, v44, &v83);

      *(v38 + 14) = v45;
      _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s: Completed snapshot {entry: %{sensitive}s}", v38, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      sub_100022BFC(v35, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    }
  }

  else
  {
    v46 = v74;
    v47 = v75;
    v72 = v9;
    v73 = v6;
    v77 = v19;
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v48 = sub_1000C1568();
    sub_10000D978(v48, qword_1000ED868);
    v49 = v10;
    (*(v46 + 16))(v13, v47, v10);
    v50 = sub_1000C1558();
    v51 = sub_1000C2968();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = v13;
      v53 = v46;
      v54 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *v54 = 136446467;
      v82 = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v55 = sub_1000C26A8();
      v57 = sub_1000B7B58(v55, v56, &v83);

      *(v54 + 4) = v57;
      *(v54 + 12) = 2081;
      v58 = v72;
      sub_1000C1108();
      v59 = sub_1000C08E8();
      v61 = v60;
      (*(v73 + 8))(v58, v79);
      (*(v53 + 8))(v52, v49);
      v62 = sub_1000B7B58(v59, v61, &v83);

      *(v54 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v50, v51, "%{public}s: No timeline entries created placeholder snapshot {url: %{private}s}", v54, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v46 + 8))(v13, v10);
    }

    v63 = v76;
    v64 = v77;
    v65 = type metadata accessor for TTRTodayComplicationWidgetProvider();
    v26 = v78;
    v66 = &v78[*(v64 + 20)];
    v67 = v63 + *(v65 + 20);
    sub_1000C1108();
    v68 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    *&v66[*(v68 + 24)] = &_swiftEmptyArrayStorage;
    v66[*(v68 + 20)] = 1;
    sub_1000C0AE8();
    v69 = *(v64 + 24);
    v70 = sub_1000C2478();
    (*(*(v70 - 8) + 56))(&v26[v69], 1, 1, v70);
  }

  v81(v26);
  return sub_100022BFC(v26, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
}

uint64_t sub_10001FE10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a2;
  v66 = a3;
  v5 = sub_1000C0AF8();
  v68 = *(v5 - 8);
  v69 = v5;
  v6 = *(v68 + 64);
  __chkstk_darwin(v5);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTodayComplicationWidgetProvider();
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  __chkstk_darwin(v8);
  v61 = v10;
  v63 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000C24B8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v56 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v54 - v16;
  v18 = sub_1000C2488();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000C1118();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v8 + 20);
  v58 = v26;
  v59 = v28;
  v29 = *(v28 + 16);
  v64 = v3;
  v62 = v30;
  v29();
  sub_1000C24A8();
  swift_getKeyPath();
  v57 = sub_1000C2498();

  (*(v19 + 8))(v22, v18);
  if (qword_1000EC8B8 != -1)
  {
    swift_once();
  }

  v31 = sub_1000C1568();
  sub_10000D978(v31, qword_1000ED868);
  v32 = *(v12 + 16);
  v32(v17, a1, v11);
  v33 = sub_1000C1558();
  v34 = sub_1000C2968();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70 = v8;
    v71 = v55;
    *v35 = 136446466;
    sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
    v36 = sub_1000C26A8();
    v38 = sub_1000B7B58(v36, v37, &v71);

    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    v32(v56, v17, v11);
    v39 = sub_1000C26A8();
    v41 = v40;
    (*(v12 + 8))(v17, v11);
    v42 = sub_1000B7B58(v39, v41, &v71);

    *(v35 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s: Requesting timeline {context: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v17, v11);
  }

  if (v57)
  {
    v43 = v57;
  }

  else
  {
    v43 = &off_1000E7988;
  }

  v44 = v63;
  v45 = *v64;
  sub_100022B94(v64, v63, type metadata accessor for TTRTodayComplicationWidgetProvider);
  v46 = (*(v60 + 80) + 16) & ~*(v60 + 80);
  v47 = (v61 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  sub_100022B2C(v44, v48 + v46, type metadata accessor for TTRTodayComplicationWidgetProvider);
  *(v48 + v47) = v43;
  v49 = (v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8));
  v50 = v66;
  *v49 = v65;
  v49[1] = v50;

  v51 = v67;
  sub_1000C0AE8();
  v52 = v58;
  sub_10008D488(v58, 0x7FFFFFFFFFFFFFFFLL, v43, v51, sub_100022A10, v48);

  (*(v68 + 8))(v51, v69);
  return (*(v59 + 8))(v52, v62);
}

uint64_t sub_100020470(uint64_t a1, void (**a2)(uint64_t, char *, uint64_t), uint64_t a3, void (*a4)(char *), uint64_t a5)
{
  v102 = a5;
  v105 = a2;
  v7 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  v106 = *(v7 - 8);
  v107 = v7;
  v8 = *(v106 + 64);
  __chkstk_darwin(v7);
  v10 = v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRTodayComplicationWidgetTimelineEntry();
  v108 = *(v11 - 8);
  v12 = *(v108 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v110 = (v96 - v16);
  v109 = sub_1000C0AF8();
  v17 = *(v109 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v109);
  v20 = v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000C2418();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_100004D04(&qword_1000ED990, &unk_1000C5750);
  v101 = *(v104 - 8);
  v25 = *(v101 + 64);
  v26 = __chkstk_darwin(v104);
  v27 = __chkstk_darwin(v26);
  v98 = v96 - v28;
  v29 = __chkstk_darwin(v27);
  v99 = v96 - v30;
  __chkstk_darwin(v29);
  v33 = v96 - v31;
  v34 = *(a1 + 16);
  v103 = a4;
  if (v34)
  {
    v96[0] = v20;
    v96[1] = v24;
    v100 = v96 - v31;
    v112 = &_swiftEmptyArrayStorage;
    sub_1000BA3C4(0, v34, 0);
    v35 = v112;
    v36 = a1 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v37 = *(v106 + 72);
    v97 = v17;
    v105 = (v17 + 16);
    v106 = v37;
    v38 = v109;
    v39 = v110;
    v40 = v107;
    do
    {
      sub_100022B94(v36, v10, type metadata accessor for TTRNewWidgetTimelineEntry);
      (*v105)(v39, v10, v38);
      v41 = &v10[*(v40 + 20)];
      v42 = type metadata accessor for TTRNewWidgetViewModel(0);
      v43 = v42[18];
      v44 = v11;
      v45 = v110 + *(v11 + 20);
      v46 = sub_1000C0938();
      v47 = &v41[v43];
      v39 = v110;
      (*(*(v46 - 8) + 16))(v45, v47, v46);
      v48 = v42[20];
      v49 = *&v41[v42[19]];
      LOBYTE(v41) = v41[v48];
      v50 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
      *&v45[*(v50 + 24)] = v49;
      v45[*(v50 + 20)] = v41;
      sub_100022ABC(&v10[*(v40 + 24)], v39 + *(v44 + 24));

      sub_100022BFC(v10, type metadata accessor for TTRNewWidgetTimelineEntry);
      v112 = v35;
      v52 = v35[2];
      v51 = v35[3];
      if (v52 >= v51 >> 1)
      {
        sub_1000BA3C4(v51 > 1, v52 + 1, 1);
        v35 = v112;
      }

      v35[2] = v52 + 1;
      sub_100022B2C(v39, v35 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v52, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
      v36 += v106;
      --v34;
      v11 = v44;
      v38 = v109;
    }

    while (v34);
    v53 = v96[0];
    sub_1000C0A28();
    sub_1000C2408();
    (*(v97 + 8))(v53, v38);
    sub_10001E940();
    v54 = v100;
    sub_1000C2558();
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v55 = sub_1000C1568();
    sub_10000D978(v55, qword_1000ED868);
    v56 = v101;
    v57 = *(v101 + 16);
    v58 = v99;
    v59 = v104;
    v57(v99, v54, v104);
    v60 = sub_1000C1558();
    v61 = sub_1000C2968();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      LODWORD(v109) = v61;
      v63 = v62;
      v110 = swift_slowAlloc();
      v112 = v110;
      *v63 = 136446467;
      v111 = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v64 = sub_1000C26A8();
      v66 = sub_1000B7B58(v64, v65, &v112);

      *(v63 + 4) = v66;
      *(v63 + 12) = 2085;
      v57(v98, v58, v59);
      v67 = sub_1000C26A8();
      v69 = v68;
      v70 = *(v56 + 8);
      v70(v58, v59);
      v71 = sub_1000B7B58(v67, v69, &v112);

      *(v63 + 14) = v71;
      v54 = v100;
      _os_log_impl(&_mh_execute_header, v60, v109, "%{public}s: Completed timeline {timeline: %{sensitive}s}", v63, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v70 = *(v56 + 8);
      v70(v58, v59);
    }
  }

  else
  {
    v107 = v32;
    v106 = type metadata accessor for TTRTodayComplicationWidgetProvider();
    v72 = &v15[*(v11 + 20)];
    v73 = v105 + *(v106 + 20);
    sub_1000C1108();
    v74 = type metadata accessor for TTRTodayComplicationWidgetViewModel();
    *&v72[*(v74 + 24)] = &_swiftEmptyArrayStorage;
    v72[*(v74 + 20)] = 1;
    sub_1000C0AE8();
    v75 = *(v11 + 24);
    v76 = sub_1000C2478();
    (*(*(v76 - 8) + 56))(&v15[v75], 1, 1, v76);
    sub_100004D04(&qword_1000ED9A0, &unk_1000C5760);
    v77 = *(v108 + 72);
    v78 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1000C3590;
    v110 = v15;
    sub_100022B94(v15, v79 + v78, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
    sub_1000C0A28();
    sub_1000C2408();
    (*(v17 + 8))(v20, v109);
    sub_10001E940();
    sub_1000C2558();
    v54 = v33;
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v80 = sub_1000C1568();
    sub_10000D978(v80, qword_1000ED868);
    v81 = v101;
    v82 = *(v101 + 16);
    v83 = v107;
    v59 = v104;
    v82(v107, v33, v104);
    v84 = sub_1000C1558();
    v85 = sub_1000C2968();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v100 = v33;
      *v86 = 136446467;
      v111 = v106;
      v112 = v87;
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v88 = sub_1000C26A8();
      LODWORD(v109) = v85;
      v90 = sub_1000B7B58(v88, v89, &v112);

      *(v86 + 4) = v90;
      *(v86 + 12) = 2081;
      v82(v98, v83, v104);
      v91 = sub_1000C26A8();
      v93 = v92;
      v70 = *(v81 + 8);
      v70(v83, v104);
      v94 = sub_1000B7B58(v91, v93, &v112);
      v59 = v104;

      *(v86 + 14) = v94;
      _os_log_impl(&_mh_execute_header, v84, v109, "%{public}s: No timeline entries created placeholder {timeline %{private}s}", v86, 0x16u);
      swift_arrayDestroy();
      v54 = v100;
    }

    else
    {

      v70 = *(v81 + 8);
      v70(v83, v59);
    }

    sub_100022BFC(v110, type metadata accessor for TTRTodayComplicationWidgetTimelineEntry);
  }

  v103(v54);
  return (v70)(v54, v59);
}

uint64_t sub_100020FB4(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_100004D04(&qword_1000ED918, &qword_1000C56A8);
  v2[10] = v3;
  v4 = *(v3 - 8);
  v2[11] = v4;
  v5 = *(v4 + 64) + 15;
  v2[12] = swift_task_alloc();
  v6 = sub_1000C03B8();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v9 = sub_1000C0AF8();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v12 = sub_1000C0C18();
  v2[22] = v12;
  v13 = *(v12 - 8);
  v2[23] = v13;
  v14 = *(v13 + 64) + 15;
  v2[24] = swift_task_alloc();
  v15 = sub_1000C0F98();
  v2[25] = v15;
  v16 = *(v15 - 8);
  v2[26] = v16;
  v17 = *(v16 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100021214, 0, 0);
}

uint64_t sub_100021214()
{
  v40 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  (*(v2 + 104))(v1, enum case for REMFeatureFlags.intelligentWidgets(_:), v3);
  v4 = sub_1000C0F88();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v5 = sub_1000C1568();
    sub_10000D978(v5, qword_1000ED868);
    v6 = sub_1000C1558();
    v7 = sub_1000C2938();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136446210;
      *(v0 + 56) = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v10 = sub_1000C26A8();
      v12 = sub_1000B7B58(v10, v11, &v39);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s: No content, replace with new widget.", v8, 0xCu);
      sub_10002285C(v9);
    }

    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v16 = *(v0 + 160);
    v15 = *(v0 + 168);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);
    v20 = *(v0 + 96);
    v21 = *(v0 + 64);
    sub_1000C2388();

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    if (qword_1000EC8B8 != -1)
    {
      swift_once();
    }

    v24 = sub_1000C1568();
    *(v0 + 224) = sub_10000D978(v24, qword_1000ED868);
    v25 = sub_1000C1558();
    v26 = sub_1000C2968();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v39 = v28;
      *v27 = 136446210;
      *(v0 + 48) = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v29 = sub_1000C26A8();
      v31 = sub_1000B7B58(v29, v30, &v39);

      *(v27 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s: Requesting relevances for today...", v27, 0xCu);
      sub_10002285C(v28);
    }

    v32 = *(v0 + 192);
    v33 = *(v0 + 168);
    v34 = **(v0 + 72);
    (*(*(v0 + 184) + 104))(v32, enum case for TTRListType.PredefinedSmartListType.today(_:), *(v0 + 176));
    sub_1000C0AE8();
    v35 = swift_task_alloc();
    *(v0 + 232) = v35;
    v35[2] = v34;
    v35[3] = v32;
    v35[4] = 0x7FFFFFFFFFFFFFFFLL;
    v35[5] = v33;
    v36 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v37 = swift_task_alloc();
    *(v0 + 240) = v37;
    v38 = sub_100004D04(&qword_1000ED920, &qword_1000C56B0);
    *v37 = v0;
    v37[1] = sub_1000216D0;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003FLL, 0x80000001000CD0E0, sub_1000220D0, v35, v38);
  }
}

uint64_t sub_1000216D0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);
  v4 = *v0;

  return _swift_task_switch(sub_1000217E8, 0, 0);
}

uint64_t sub_1000217E8()
{
  v79 = v0;
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[2];
  v75 = *(v0[19] + 8);
  v75(v0[21], v0[18]);
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[19];
    v7 = v0[14];
    v8 = *(v6 + 16);
    v6 += 16;
    v70 = v4;
    v9 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v72 = *(v6 + 56);
    v74 = v8;
    v10 = _swiftEmptyArrayStorage;
    v77 = v0;
    do
    {
      v11 = v0[20];
      v12 = v0[18];
      v74(v11, v9, v12);
      sub_1000C03A8();
      v75(v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_100022680(0, v10[2] + 1, 1, v10, &qword_1000ED930, &qword_1000C56C0, &type metadata accessor for RelevantContext);
      }

      v14 = v10[2];
      v13 = v10[3];
      v0 = v77;
      if (v14 >= v13 >> 1)
      {
        v10 = sub_100022680(v13 > 1, v14 + 1, 1, v10, &qword_1000ED930, &qword_1000C56C0, &type metadata accessor for RelevantContext);
      }

      v15 = v77[17];
      v16 = v77[13];
      v10[2] = v14 + 1;
      (*(v7 + 32))(v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v15, v16);
      v9 += v72;
      --v5;
    }

    while (v5);
    v17 = v77[28];

    v18 = sub_1000C1558();
    v19 = sub_1000C2968();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v77[13];
      v21 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v21 = 136446467;
      v77[4] = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v22 = sub_1000C26A8();
      v24 = sub_1000B7B58(v22, v23, &v78);

      *(v21 + 4) = v24;
      *(v21 + 12) = 2085;
      v25 = v10;
      v26 = sub_1000C27C8();
      v28 = sub_1000B7B58(v26, v27, &v78);

      *(v21 + 14) = v28;
      v0 = v77;
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s: Completed adding timeline relevances. {timeline: %{sensitive}s}", v21, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      v25 = v10;
    }

    v39 = v0[28];

    v40 = sub_1000C1558();
    v41 = sub_1000C2968();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v78 = v43;
      *v42 = 136446466;
      v0[3] = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v44 = sub_1000C26A8();
      v46 = sub_1000B7B58(v44, v45, &v78);

      *(v42 + 4) = v46;
      v0 = v77;
      *(v42 + 12) = 2048;
      v47 = *(v70 + 16);

      *(v42 + 14) = v47;

      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s: Timeline count: %ld.", v42, 0x16u);
      sub_10002285C(v43);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v37 = v25;
    v38 = v25[2];
    if (v38)
    {
LABEL_19:
      v48 = v0[14];
      v49 = v0[11];
      v78 = _swiftEmptyArrayStorage;
      sub_1000BA408(0, v38, 0);
      v50 = v78;
      v76 = *(v48 + 16);
      v51 = v37 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v71 = (v48 + 8);
      v73 = *(v48 + 72);
      do
      {
        v53 = v0[15];
        v52 = v0[16];
        v54 = v0[13];
        v76(v52, v51, v54);
        v76(v53, v52, v54);
        sub_1000C2348();
        (*v71)(v52, v54);
        v78 = v50;
        v56 = v50[2];
        v55 = v50[3];
        if (v56 >= v55 >> 1)
        {
          sub_1000BA408(v55 > 1, v56 + 1, 1);
          v50 = v78;
        }

        v57 = v0[12];
        v58 = v0[10];
        v50[2] = v56 + 1;
        (*(v49 + 32))(v50 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v56, v57, v58);
        v51 += v73;
        --v38;
      }

      while (v38);
    }
  }

  else
  {
    v29 = v0[28];

    v30 = sub_1000C1558();
    v31 = sub_1000C2968();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v78 = v33;
      *v32 = 136446210;
      v0[5] = type metadata accessor for TTRTodayComplicationWidgetProvider();
      sub_100004D04(&qword_1000ED928, &qword_1000C56B8);
      v34 = sub_1000C26A8();
      v36 = sub_1000B7B58(v34, v35, &v78);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s: No timeline relevances to add.", v32, 0xCu);
      sub_10002285C(v33);
    }

    v37 = _swiftEmptyArrayStorage;
    v38 = _swiftEmptyArrayStorage[2];
    if (v38)
    {
      goto LABEL_19;
    }
  }

  v59 = v0[27];
  v60 = v0[24];
  v62 = v0[20];
  v61 = v0[21];
  v64 = v0[16];
  v63 = v0[17];
  v65 = v0[15];
  v66 = v0[12];
  v67 = v0[8];
  sub_1000C2388();

  v68 = v0[1];

  return v68();
}

uint64_t sub_100021F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000B028;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100022038(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000DC8C;

  return sub_100020FB4(a1);
}

char *sub_1000220DC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED950, &qword_1000C56E0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1000221E0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100004D04(&qword_1000ED940, &unk_1000C56D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100004D04(&qword_1000ED948, &unk_1000C7D80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100022328(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
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

char *sub_10002254C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100004D04(&qword_1000ED960, &qword_1000C5720);
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
    v10 = &_swiftEmptyArrayStorage;
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

size_t sub_100022680(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100004D04(a5, a6);
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

uint64_t sub_10002285C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1000228AC@<X0>(void *a1@<X8>)
{
  result = sub_1000C1808();
  *a1 = v3;
  return result;
}

uint64_t sub_100022900()
{
  v1 = (type metadata accessor for TTRTodayComplicationWidgetProvider() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = *(v0 + v3);

  v8 = v1[7];
  v9 = sub_1000C1118();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v0 + v4);

  v11 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v2 | 7);
}

uint64_t sub_100022A10(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  return sub_100020470(a1, (v1 + v4), v6, v8, v9);
}

uint64_t sub_100022ABC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100022B2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022B94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100022BFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100022C5C()
{
  v1 = sub_1000C1118();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for TTRTodayComplicationWidgetProvider() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 16) & ~v7;
  v9 = v3 | v7;
  v10 = (*(*v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + 8);
  v11(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  v13 = *(v0 + v8);

  v11(v0 + v8 + v6[7], v1);
  v14 = *(v0 + v10);

  return _swift_deallocObject(v0, v10 + 8, v9 | 7);
}

uint64_t sub_100022DD8(uint64_t a1)
{
  v3 = *(sub_1000C1118() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for TTRTodayComplicationWidgetProvider() - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = *(v1 + v5);
  v9 = *(v1 + v5 + 8);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10001F5DC(a1, v1 + v4, v8, v9, v1 + v7);
}

uint64_t sub_100022EEC@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v69 = sub_100004D04(&qword_1000ED9B8, &qword_1000C57D8);
  v1 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69);
  v68 = &v58 - v2;
  v64 = sub_100004D04(&qword_1000ED9C0, &qword_1000C57E0);
  v66 = *(v64 - 8);
  v3 = *(v66 + 64);
  v4 = __chkstk_darwin(v64);
  v65 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v58 - v6;
  v67 = sub_100004D04(&qword_1000ED9C8, &qword_1000C57E8);
  v76 = *(v67 - 8);
  v8 = v76[8];
  v9 = __chkstk_darwin(v67);
  v75 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v58 - v11;
  v13 = sub_100004D04(&qword_1000ED9D0, &qword_1000C57F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v58 - v19;
  v63 = sub_100004D04(&qword_1000ED9D8, &qword_1000C57F8);
  v74 = *(v63 - 8);
  v21 = v74[8];
  v22 = __chkstk_darwin(v63);
  v62 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v61 = &v58 - v25;
  v26 = __chkstk_darwin(v24);
  v73 = (&v58 - v27);
  __chkstk_darwin(v26);
  v29 = (&v58 - v28);
  v30 = type metadata accessor for TTRTodayComplicationWidget(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v72 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v71 = &v58 - v34;
  sub_1000B7244((&v58 - v34));
  sub_100004D04(&qword_1000ED9E0, &unk_1000C5800);
  sub_1000C15E8();
  (*(v14 + 16))(v18, v20, v13);
  sub_100023AC8(&qword_1000ED9E8, &qword_1000ED9D0, &qword_1000C57F0);
  v35 = sub_1000C1B28();
  v79 = &type metadata for LimitedAvailabilityWidget;
  v36 = sub_100004DB8();
  v80 = v36;
  v78[0] = v35;
  sub_1000239F4(v78, v77);
  v37 = v29;
  v60 = v29;
  sub_100004B5C(v77, v29);
  sub_1000084C0(v77, &qword_1000ECA90, &qword_1000C35D0);
  (*(v14 + 8))(v20, v13);
  sub_10002285C(v78);
  sub_100023758();
  v59 = v12;
  sub_1000C1AF8();
  v38 = sub_1000237AC();
  sub_1000C1A68();
  v39 = v66;
  v40 = v64;
  (*(v66 + 16))(v65, v7, v64);
  v78[0] = &type metadata for UrgentAlarmLiveActivity;
  v78[1] = v38;
  swift_getOpaqueTypeConformance2();
  v41 = sub_1000C1B28();
  v80 = v36;
  v79 = &type metadata for LimitedAvailabilityWidget;
  v78[0] = v41;
  sub_1000239F4(v78, v77);
  v42 = v73;
  sub_100004B5C(v77, v73);
  sub_1000084C0(v77, &qword_1000ECA90, &qword_1000C35D0);
  (*(v39 + 8))(v7, v40);
  sub_10002285C(v78);
  v43 = v72;
  sub_100023800(v71, v72);
  v44 = v74[2];
  v45 = v61;
  v46 = v63;
  v44(v61, v37, v63);
  v47 = v75;
  v66 = v76[2];
  v48 = v12;
  v49 = v67;
  (v66)(v75, v48, v67);
  v50 = v62;
  v51 = v42;
  v52 = v46;
  v44(v62, v51, v46);
  v53 = v68;
  sub_100023800(v43, v68);
  v54 = v69;
  v44((v53 + *(v69 + 64)), v45, v52);
  (v66)(v53 + *(v54 + 80), v47, v49);
  v44((v53 + *(v54 + 96)), v50, v52);
  sub_1000C15E8();
  v55 = v74[1];
  v55(v73, v52);
  v56 = v76[1];
  v56(v59, v49);
  v55(v60, v52);
  sub_100023864(v71);
  v55(v50, v52);
  v56(v75, v49);
  v55(v45, v52);
  return sub_100023864(v72);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000236D8();
  sub_1000C15F8();
  return 0;
}

unint64_t sub_1000236D8()
{
  result = qword_1000ED9B0;
  if (!qword_1000ED9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9B0);
  }

  return result;
}

unint64_t sub_100023758()
{
  result = qword_1000ED9F0;
  if (!qword_1000ED9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9F0);
  }

  return result;
}

unint64_t sub_1000237AC()
{
  result = qword_1000ED9F8;
  if (!qword_1000ED9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000ED9F8);
  }

  return result;
}

uint64_t sub_100023800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTodayComplicationWidget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100023864(uint64_t a1)
{
  v2 = type metadata accessor for TTRTodayComplicationWidget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000238C0()
{
  if (qword_1000EC9C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1000F0438;
  v6[3] = type metadata accessor for TTRNewWidgetInteractor(0);
  v6[4] = &off_1000E8C50;
  v6[0] = v0;
  sub_1000C0218();

  sub_1000C0208();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1000239F4(v6, v3);
  v1 = swift_allocObject();
  sub_100004E0C(v3, v1 + 16);
  sub_100004D04(&qword_1000EDA00, &qword_1000C5810);
  sub_1000C01F8();

  sub_1000084C0(v4, &qword_1000EDA08, &qword_1000C5818);
  return sub_10002285C(v6);
}

uint64_t sub_1000239F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100023A58()
{
  sub_10002285C((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100023AC8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100005334(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023B94(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v6 = *a2;
  v8._countAndFlagsBits = sub_1000C2678();
  sub_1000C26D8(v8);

  *a3 = 35;
  *a4 = 0xE100000000000000;
  return result;
}

uint64_t sub_100023BFC()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000FAAE8);
  sub_10000D978(v0, qword_1000FAAE8);
  v1 = [objc_opt_self() widget];
  return sub_1000C1578();
}

uint64_t sub_100023C6C()
{
  v0 = sub_1000C1568();
  sub_10000D9B0(v0, qword_1000EDA20);
  v1 = sub_10000D978(v0, qword_1000EDA20);
  if (qword_1000EC8E8 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D978(v0, qword_1000FAAE8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100023D34()
{
  v1 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (*(v0 + v1[11]) == 1 && *(v0 + v1[10]) == 1)
  {
    v2 = v0 + v1[7];
    v5 = sub_1000C08C8();
    v6._countAndFlagsBits = 45;
    v6._object = 0xE100000000000000;
    sub_1000C26D8(v6);
    v7._countAndFlagsBits = 1702195828;
    v7._object = 0xE400000000000000;
    sub_1000C26D8(v7);
    return v5;
  }

  else
  {
    v4 = v0 + v1[7];
    return sub_1000C08C8();
  }
}

uint64_t sub_100023DC8(int *a1)
{
  if (*(v1 + a1[11]) == 1 && *(v1 + a1[10]) == 1)
  {
    v2 = v1 + a1[7];
    v5 = sub_1000C08C8();
    v6._countAndFlagsBits = 45;
    v6._object = 0xE100000000000000;
    sub_1000C26D8(v6);
    v7._countAndFlagsBits = 1702195828;
    v7._object = 0xE400000000000000;
    sub_1000C26D8(v7);
    return v5;
  }

  else
  {
    v4 = v1 + a1[7];
    return sub_1000C08C8();
  }
}

void sub_100023E6C(double a1)
{
  v3 = *(v1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 68));
  if (!v3)
  {
    return;
  }

  v4 = *(v3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = 0;
  v6 = fabs(a1);
  v7 = v3 + 40;
  do
  {
    v8 = (v7 + 16 * v5);
    v9 = v5;
    while (1)
    {
      if (v9 >= *(v3 + 16))
      {
        __break(1u);
        return;
      }

      v10 = *v8;
      v11 = *v8;
      v12 = *(v8 - 1);
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        break;
      }

      sub_10002C6E0();
      if (sub_1000C2598())
      {
        goto LABEL_15;
      }

LABEL_6:
      ++v9;

      v8 += 2;
      if (v4 == v9)
      {
        return;
      }
    }

    v13 = fabs(v10);
    if (v13 <= v6)
    {
      v13 = v6;
    }

    if (v13 <= 2.22507386e-308)
    {
      v13 = 2.22507386e-308;
    }

    if (vabdd_f64(v10, a1) >= v13 * 0.0000000149011612)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_1000C2798();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v14 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1000C27D8();
    }

    v5 = v9 + 1;
    sub_1000C27F8();
    v7 = v3 + 40;
  }

  while (v4 - 1 != v9);
}

uint64_t sub_100024038()
{
  sub_100004D04(&qword_1000ED9A8, &unk_1000C5770);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000C3590;
  v2 = v0[1];
  *(v1 + 32) = *v0;
  *(v1 + 40) = v2;
  v3 = type metadata accessor for TTRNewWidgetViewModel(0);
  v4 = *(v0 + v3[15]);

  if (v4 == 1)
  {
    v5 = sub_1000C0CC8();
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);
    if (v8 >= v7 >> 1)
    {
      v36 = v5;
      v37 = v6;
      v38 = sub_100022328((v7 > 1), v8 + 1, 1, v1);
      v6 = v37;
      v1 = v38;
      v5 = v36;
    }

    *(v1 + 16) = v8 + 1;
    v9 = v1 + 16 * v8;
    *(v9 + 32) = v5;
    *(v9 + 40) = v6;
  }

  v10 = sub_1000129D8(v0[2]);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  if (v13 >= v12 >> 1)
  {
    v33 = v10;
    v34 = v11;
    v35 = sub_100022328((v12 > 1), v13 + 1, 1, v1);
    v11 = v34;
    v1 = v35;
    v10 = v33;
  }

  *(v1 + 16) = v13 + 1;
  v14 = v1 + 16 * v13;
  *(v14 + 32) = v10;
  *(v14 + 40) = v11;
  v15 = (v0 + v3[13]);
  if (v15[1])
  {
    v16 = *v15;
    v17 = v15[1];
  }

  else
  {
    v18 = (v0 + v3[14]);
    v17 = v18[1];
    if (!v17)
    {
      goto LABEL_16;
    }

    v16 = *v18;
    v19 = v18[1];
  }

  v20 = (v0 + v3[11]);
  v21 = v20[1];
  if (v21)
  {
    v22 = *v20;

    v40._countAndFlagsBits = 0x6567646162204025;
    v40._object = 0xEC0000004025202CLL;
    v39._object = 0x80000001000CD1B0;
    v41._countAndFlagsBits = 0xD00000000000006ELL;
    v41._object = 0x80000001000CD1E0;
    v39._countAndFlagsBits = 0xD00000000000002ALL;
    sub_1000C0D68(v39, v40, v41);
    sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1000C44F0;
    *(v23 + 56) = &type metadata for String;
    v24 = sub_10002C68C();
    *(v23 + 32) = v16;
    *(v23 + 40) = v17;
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = v24;
    *(v23 + 64) = v24;
    *(v23 + 72) = v22;
    *(v23 + 80) = v21;

    v25 = sub_1000C2648();
    v27 = v26;

    v29 = *(v1 + 16);
    v28 = *(v1 + 24);
    if (v29 >= v28 >> 1)
    {
      v1 = sub_100022328((v28 > 1), v29 + 1, 1, v1);
    }

    *(v1 + 16) = v29 + 1;
    v30 = v1 + 16 * v29;
    *(v30 + 32) = v25;
    *(v30 + 40) = v27;
  }

  else
  {
  }

LABEL_16:
  sub_1000C0CD8();
  sub_100004D04(&qword_1000EDCF8, &unk_1000C6430);
  sub_100008478(&qword_1000EDD00, &qword_1000EDCF8, &unk_1000C6430);
  v31 = sub_1000C25B8();

  return v31;
}

uint64_t sub_100024398@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000C0AF8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100024434@<X0>(void *a1@<X0>, int a2@<W1>, void (**a3)(char *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v247 = a3;
  v237 = a2;
  v249 = a4;
  v254 = sub_100004D04(&qword_1000EDA68, &qword_1000C5850);
  v5 = *(*(v254 - 8) + 64);
  v6 = __chkstk_darwin(v254);
  v253 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v252 = &v201 - v8;
  v251 = sub_100004D04(&qword_1000EDA70, &qword_1000C5858);
  v9 = *(*(v251 - 8) + 64);
  __chkstk_darwin(v251);
  v250 = &v201 - v10;
  v261 = sub_1000C07C8();
  v207 = *(v261 - 8);
  v11 = *(v207 + 64);
  __chkstk_darwin(v261);
  v13 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000EDA78, &qword_1000C5860);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v255 = &v201 - v16;
  v17 = sub_1000C0808();
  v206 = *(v17 - 8);
  v18 = *(v206 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v201 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v256 = &v201 - v23;
  __chkstk_darwin(v22);
  v259 = &v201 - v24;
  v211 = sub_1000C09B8();
  v210 = *(v211 - 8);
  v25 = *(v210 + 64);
  __chkstk_darwin(v211);
  v209 = &v201 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = sub_1000C0A08();
  v230 = *(v231 - 8);
  v27 = *(v230 + 64);
  __chkstk_darwin(v231);
  v229 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1000C0988();
  v221 = *(v223 - 8);
  v29 = *(v221 + 64);
  __chkstk_darwin(v223);
  v218 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_1000C0998();
  v222 = *(v224 - 8);
  v31 = *(v222 + 64);
  __chkstk_darwin(v224);
  v219 = &v201 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1000C09E8();
  v227 = *(v228 - 8);
  v33 = *(v227 + 64);
  v34 = __chkstk_darwin(v228);
  v208 = &v201 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v220 = &v201 - v37;
  v38 = __chkstk_darwin(v36);
  v225 = &v201 - v39;
  __chkstk_darwin(v38);
  v226 = &v201 - v40;
  v236 = sub_1000C0BA8();
  v217 = *(v236 - 8);
  v41 = *(v217 + 64);
  __chkstk_darwin(v236);
  v234 = &v201 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_1000C0BC8();
  v215 = *(v216 - 8);
  v43 = *(v215 + 64);
  __chkstk_darwin(v216);
  v214 = &v201 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000C0818();
  v248 = *(v45 - 8);
  v46 = *(v248 + 64);
  __chkstk_darwin(v45);
  v260 = &v201 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000C0B68();
  v49 = *(v48 - 8);
  v245 = v48;
  v246 = v49;
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  v232 = &v201 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_100004D04(&qword_1000EDA80, &qword_1000C5868);
  v52 = *(*(v244 - 8) + 64);
  v53 = __chkstk_darwin(v244);
  v242 = (&v201 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v53);
  v233 = &v201 - v55;
  v56 = sub_100004D04(&qword_1000EDA88, &unk_1000C5870);
  v57 = *(*(v56 - 8) + 64);
  v58 = __chkstk_darwin(v56 - 8);
  v235 = &v201 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v238 = &v201 - v61;
  v62 = __chkstk_darwin(v60);
  v239 = &v201 - v63;
  v64 = __chkstk_darwin(v62);
  v205 = &v201 - v65;
  v66 = __chkstk_darwin(v64);
  v212 = &v201 - v67;
  __chkstk_darwin(v66);
  v213 = &v201 - v68;
  v69 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
  v70 = *(*(v69 - 8) + 64);
  __chkstk_darwin(v69 - 8);
  v241 = &v201 - v71;
  v72 = sub_1000C0AF8();
  v73 = *(v72 - 1);
  v74 = *(v73 + 64);
  __chkstk_darwin(v72);
  v76 = (&v201 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = a1[4];
  sub_100026D74(a1, a1[3]);
  v78 = sub_1000C0D98();
  if (v78)
  {
    v79 = v249;
    v257 = v45;
    v80 = v78;
    v81 = [v78 date];
    sub_1000C0AA8();

    LOBYTE(v81) = sub_1000C0A18();
    v84 = *(v73 + 8);
    v83 = (v73 + 8);
    v82 = v84;
    v84(v76, v72);
    v240 = v80;
    v85 = [v80 isAllDay];
    v86 = v83;
    if ((v81 & 1) == 0)
    {
      v91 = v82;
      if (qword_1000EC900 == -1)
      {
        goto LABEL_9;
      }

      goto LABEL_62;
    }

    if (v85)
    {

      v87 = v241;
      (*(v248 + 56))(v241, 1, 1, v257);
      return sub_10001DA60(v87, v79, &qword_1000ECE78, &unk_1000C3810);
    }

    v202 = v83;
    v201 = v82;
    v204 = v72;
    v203 = v76;
    if (v237)
    {
      v98 = v214;
      sub_1000C0B98();
      v99 = v217;
      (*(v217 + 104))(v234, enum case for Calendar.Component.minute(_:), v236);
      v100 = v82;
      v101 = [v240 date];
      sub_1000C0AA8();

      v102 = v234;
      v103 = sub_1000C0BB8();
      v100(v76, v204);
      (*(v99 + 8))(v102, v236);
      (*(v215 + 8))(v98, v216);
      if (v103 || (sub_1000C0B18() & 1) == 0)
      {
        v143 = [v240 date];
        sub_1000C0AA8();

        v144 = v208;
        sub_1000C0778();
        v145 = v218;
        sub_1000C0978();
        v146 = v219;
        sub_1000C0968();
        (*(v221 + 8))(v145, v223);
        v147 = v220;
        sub_1000C0958();
        (*(v222 + 8))(v146, v224);
        v148 = *(v227 + 8);
        v149 = v228;
        v148(v144, v228);
        v150 = v209;
        sub_1000C09A8();
        v151 = v225;
        sub_1000C09D8();
        (*(v210 + 8))(v150, v211);
        v148(v147, v149);
        v152 = v226;
        sub_1000C09C8();
        v153 = v151;
        v72 = v204;
        v148(v153, v149);
        v112 = v229;
        sub_1000C0948();
        v148(v152, v149);
        v113 = v256;
      }

      else
      {
        v104 = [v240 date];
        sub_1000C0AA8();

        v105 = v220;
        sub_1000C0778();
        v106 = v218;
        sub_1000C0978();
        v107 = v219;
        sub_1000C0968();
        (*(v221 + 8))(v106, v223);
        v108 = v225;
        sub_1000C0958();
        (*(v222 + 8))(v107, v224);
        v109 = *(v227 + 8);
        v110 = v228;
        v109(v105, v228);
        v111 = v226;
        sub_1000C09C8();
        v109(v108, v110);
        v112 = v229;
        sub_1000C0948();
        v109(v111, v110);
        v113 = v256;
        v72 = v204;
      }

      sub_100026DB8(&qword_1000EDA98, &type metadata accessor for Date.AttributedStyle);
      v154 = v231;
      v155 = v203;
      sub_1000C0AD8();
      (*(v230 + 8))(v112, v154);
      v201(v155, v72);
      v156 = [objc_opt_self() mainBundle];
      v200._countAndFlagsBits = 0x80000001000CD150;
      v264._object = 0x80000001000CD120;
      v264._countAndFlagsBits = 0xD00000000000002CLL;
      v265.value._countAndFlagsBits = 0;
      v265.value._object = 0;
      v157.super.isa = v156;
      v266._countAndFlagsBits = 49;
      v266._object = 0xE100000000000000;
      v158 = sub_1000C0838(v264, v265, v157, v266, v200);
      v160 = v159;

      if (v158 == 49 && v160 == 0xE100000000000000)
      {
      }

      else
      {
        v161 = sub_1000C2CD8();

        if ((v161 & 1) == 0)
        {

          v79 = v249;
          v172 = v257;
LABEL_58:
          v87 = v241;
          (*(v248 + 32))(v241, v260, v172);
          (*(v248 + 56))(v87, 0, 1, v172);
          return sub_10001DA60(v87, v79, &qword_1000ECE78, &unk_1000C3810);
        }
      }

      v162 = (v206 + 8);
      v246 = v206 + 32;
      v247 = (v207 + 8);
      v245 = (v206 + 56);
      v244 = v206 + 48;
      v242 = (v206 + 16);
      v258 = v21;
      v243 = v13;
      while (1)
      {
        sub_1000C07B8();
        sub_100026DB8(&qword_1000EDAA0, &type metadata accessor for AttributedString.CharacterView);
        sub_1000C2898();
        while (1)
        {
          sub_1000C28D8();
          sub_100026DB8(&qword_1000EDAA8, &type metadata accessor for AttributedString.Index);
          v163 = sub_1000C2608();
          v76 = *v162;
          (*v162)(v21, v17);
          if (v163)
          {
            v76(v113, v17);
            (*v247)(v13, v261);
            v168 = 1;
            v169 = v255;
            v170 = v246;
            goto LABEL_44;
          }

          v164 = sub_1000C28F8();
          v72 = v113;
          v166 = *v165;
          v167 = v165[1];

          (v164)(v262, 0);

          LOBYTE(v164) = sub_1000C25A8();
          swift_bridgeObjectRelease_n();
          if (v164)
          {
            break;
          }

          sub_1000C28E8();
          v113 = v72;
        }

        (*v247)(v13, v261);
        v170 = v246;
        v169 = v255;
        (*v246)(v255, v72, v17);
        v168 = 0;
LABEL_44:
        (*v245)(v169, v168, 1, v17);
        v171 = (*v244)(v169, 1, v17);
        v172 = v257;
        v173 = v259;
        if (v171 == 1)
        {

          sub_1000084C0(v169, &qword_1000EDA78, &qword_1000C5860);
          v79 = v249;
          goto LABEL_58;
        }

        v174 = *v170;
        (*v170)(v259, v169, v17);
        sub_100026DB8(&qword_1000EDAB0, &type metadata accessor for AttributedString);
        v86 = v258;
        sub_1000C08B8();
        sub_100026DB8(&qword_1000EDAB8, &type metadata accessor for AttributedString.Index);
        v91 = v17;
        if ((sub_1000C25E8() & 1) == 0)
        {
          break;
        }

        v175 = v252;
        (*v242)(v252, v173, v17);
        v176 = v86;
        v177 = v254;
        v174((v175 + *(v254 + 48)), v176, v17);
        v178 = v253;
        sub_1000082B4(v175, v253, &qword_1000EDA68, &qword_1000C5850);
        v179 = *(v177 + 48);
        v180 = v250;
        v174(v250, v178, v17);
        v76((v178 + v179), v17);
        sub_10001DA60(v175, v178, &qword_1000EDA68, &qword_1000C5850);
        v174(&v180[*(v251 + 36)], v178 + *(v177 + 48), v17);
        v181 = v178;
        v113 = v256;
        v76(v181, v17);
        v72 = &qword_1000C5858;
        sub_100008478(&qword_1000EDAC0, &qword_1000EDA70, &qword_1000C5858);
        sub_1000C07E8();
        v182 = v180;
        v13 = v243;
        sub_1000084C0(v182, &qword_1000EDA70, &qword_1000C5858);
        v76(v259, v17);
        v21 = v258;
      }

      __break(1u);
LABEL_62:
      swift_once();
LABEL_9:
      v202 = v86;
      v92 = [qword_1000EDA40 locale];
      v93 = v242;
      v94 = v239;
      v95 = v238;
      v201 = v91;
      v204 = v72;
      v203 = v76;
      if (v92)
      {
        v96 = v92;
        sub_1000C0B48();

        v97 = 0;
      }

      else
      {
        v97 = 1;
      }

      v114 = v245;
      v115 = v246;
      v116 = *(v246 + 56);
      v116(v94, v97, 1, v245);
      (*(v115 + 16))(v95, v247, v114);
      v116(v95, 0, 1, v114);
      v117 = *(v244 + 48);
      sub_1000082B4(v94, v93, &qword_1000EDA88, &unk_1000C5870);
      sub_1000082B4(v95, v93 + v117, &qword_1000EDA88, &unk_1000C5870);
      v118 = *(v115 + 48);
      if (v118(v93, 1, v114) == 1)
      {
        sub_1000084C0(v95, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v94, &qword_1000EDA88, &unk_1000C5870);
        v119 = v118(v93 + v117, 1, v114);
        v87 = v241;
        if (v119 == 1)
        {
          sub_1000084C0(v93, &qword_1000EDA88, &unk_1000C5870);
          v79 = v249;
          v120 = &qword_1000ED000;
LABEL_23:
          v124 = v120[328];
          v125 = v240;
          v126 = [v240 date];
          v127 = v203;
          sub_1000C0AA8();

          v128.super.isa = sub_1000C0A78().super.isa;
          v201(v127, v204);
          v129 = [v124 stringFromDate:v128.super.isa];
LABEL_24:
          v130 = v129;

          sub_1000C2678();
          sub_1000C07D8();

          (*(v248 + 56))(v87, 0, 1, v257);
          return sub_10001DA60(v87, v79, &qword_1000ECE78, &unk_1000C3810);
        }
      }

      else
      {
        v121 = v235;
        sub_1000082B4(v93, v235, &qword_1000EDA88, &unk_1000C5870);
        if (v118(v93 + v117, 1, v114) != 1)
        {
          v139 = v246;
          v140 = v232;
          (*(v246 + 32))(v232, v93 + v117, v114);
          sub_100026DB8(&qword_1000EDA90, &type metadata accessor for Locale);
          v141 = sub_1000C2608();
          v142 = *(v139 + 8);
          v142(v140, v114);
          sub_1000084C0(v95, &qword_1000EDA88, &unk_1000C5870);
          sub_1000084C0(v94, &qword_1000EDA88, &unk_1000C5870);
          v142(v121, v114);
          sub_1000084C0(v93, &qword_1000EDA88, &unk_1000C5870);
          v79 = v249;
          v87 = v241;
          v120 = &qword_1000ED000;
          if (v141)
          {
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        sub_1000084C0(v95, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v94, &qword_1000EDA88, &unk_1000C5870);
        (*(v246 + 8))(v121, v114);
        v87 = v241;
      }

      sub_1000084C0(v93, &qword_1000EDA80, &qword_1000C5868);
      v79 = v249;
      v120 = &qword_1000ED000;
LABEL_22:
      v122 = v120[328];
      isa = sub_1000C0B28().super.isa;
      [v122 setLocale:{isa, v201}];

      goto LABEL_23;
    }

    v131 = v79;
    if (qword_1000EC8F8 != -1)
    {
      swift_once();
    }

    v132 = &qword_1000ED000;
    v133 = [qword_1000EDA38 locale];
    v134 = v245;
    v135 = v213;
    v136 = v212;
    if (v133)
    {
      v137 = v133;
      sub_1000C0B48();

      v138 = 0;
    }

    else
    {
      v138 = 1;
    }

    v183 = v246;
    v184 = *(v246 + 56);
    v184(v135, v138, 1, v134);
    (*(v183 + 16))(v136, v247, v134);
    v184(v136, 0, 1, v134);
    v185 = *(v244 + 48);
    v186 = v233;
    sub_1000082B4(v135, v233, &qword_1000EDA88, &unk_1000C5870);
    v187 = v186;
    sub_1000082B4(v136, v186 + v185, &qword_1000EDA88, &unk_1000C5870);
    v188 = *(v183 + 48);
    if (v188(v187, 1, v134) == 1)
    {
      sub_1000084C0(v136, &qword_1000EDA88, &unk_1000C5870);
      v189 = v233;
      sub_1000084C0(v135, &qword_1000EDA88, &unk_1000C5870);
      v190 = v188(v189 + v185, 1, v134);
      v79 = v131;
      if (v190 == 1)
      {
        sub_1000084C0(v189, &qword_1000EDA88, &unk_1000C5870);
        v87 = v241;
LABEL_56:
        v124 = v132[327];
        v125 = v240;
        v194 = [v240 date];
        v195 = v203;
        sub_1000C0AA8();

        v128.super.isa = sub_1000C0A78().super.isa;
        v201(v195, v204);
        v129 = [v124 stringFromDate:v128.super.isa];
        goto LABEL_24;
      }
    }

    else
    {
      v191 = v205;
      sub_1000082B4(v187, v205, &qword_1000EDA88, &unk_1000C5870);
      if (v188(v187 + v185, 1, v134) != 1)
      {
        v196 = v246;
        v197 = v187 + v185;
        v198 = v232;
        (*(v246 + 32))(v232, v197, v134);
        sub_100026DB8(&qword_1000EDA90, &type metadata accessor for Locale);
        LODWORD(v261) = sub_1000C2608();
        v199 = *(v196 + 8);
        v199(v198, v134);
        sub_1000084C0(v136, &qword_1000EDA88, &unk_1000C5870);
        sub_1000084C0(v135, &qword_1000EDA88, &unk_1000C5870);
        v132 = &qword_1000ED000;
        v199(v191, v134);
        sub_1000084C0(v187, &qword_1000EDA88, &unk_1000C5870);
        v79 = v131;
        v87 = v241;
        if (v261)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }

      sub_1000084C0(v136, &qword_1000EDA88, &unk_1000C5870);
      v189 = v233;
      sub_1000084C0(v135, &qword_1000EDA88, &unk_1000C5870);
      (*(v246 + 8))(v191, v134);
      v79 = v131;
    }

    sub_1000084C0(v189, &qword_1000EDA80, &qword_1000C5868);
    v87 = v241;
LABEL_55:
    v192 = v132[327];
    v193 = sub_1000C0B28().super.isa;
    [v192 setLocale:v193];

    goto LABEL_56;
  }

  v88 = v249;
  v89 = *(v248 + 56);

  return v89(v88, 1, 1, v45);
}

uint64_t sub_100026384@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v61 = a2;
  v5 = sub_1000C1118();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v59 - v12;
  __chkstk_darwin(v11);
  v15 = (&v59 - v14);
  v16 = *(v6 + 16);
  v16(&v59 - v14, v3, v5);
  v17 = (*(v6 + 88))(v15, v5);
  if (v17 == enum case for REMNavigationSpecifier.account(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA60, &qword_1000C5848) + 48);
    v19 = sub_1000C1098();
LABEL_3:
    (*(*(v19 - 8) + 8))(v15 + v18, v19);
    goto LABEL_4;
  }

  if (v17 == enum case for REMNavigationSpecifier.list(_:))
  {
    (*(v6 + 96))(v15, v5);

    v33 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v34 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
    v35 = a1[4];
    sub_100026D74(a1, a1[3]);
    v36 = sub_1000C0DD8();
    v37 = v61;
    *v61 = v36;
    sub_1000C10E8();
    (*(v6 + 104))(v37, enum case for REMNavigationSpecifier.reminder(_:), v5);
    v38 = sub_1000C10C8();
    return (*(*(v38 - 8) + 8))(v15 + v33, v38);
  }

  if (v17 == enum case for REMNavigationSpecifier.customSmartList(_:))
  {
    v40 = v17;
    (*(v6 + 96))(v15, v5);
    v41 = *v15;
    v42 = *(sub_100004D04(&qword_1000EDA48, &unk_1000C5830) + 48);
    v43 = v61;
    *v61 = v41;
    v44 = a1[4];
    sub_100026D74(a1, a1[3]);
    *(v43 + v42) = sub_1000C0DD8();
    v45 = enum case for REMNavigationSpecifier.ListPathSpecifier.select(_:);
    v46 = sub_1000C10C8();
    v47 = *(v46 - 8);
    (*(v47 + 104))(v43 + v42, v45, v46);
    (*(v6 + 104))(v43, v40, v5);
    return (*(v47 + 8))(v15 + v42, v46);
  }

  if (v17 == enum case for REMNavigationSpecifier.newList(_:))
  {
    goto LABEL_15;
  }

  if (v17 == enum case for REMNavigationSpecifier.reminder(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA50, &unk_1000C8CD0) + 48);
    v19 = sub_1000C10F8();
    goto LABEL_3;
  }

  if (v17 == enum case for REMNavigationSpecifier.section(_:) || v17 == enum case for REMNavigationSpecifier.smartListSection(_:))
  {
    (*(v6 + 96))(v15, v5);

    v18 = *(sub_100004D04(&qword_1000EDA58, &qword_1000C5840) + 48);
    v19 = sub_1000C10A8();
    goto LABEL_3;
  }

  if (v17 == enum case for REMNavigationSpecifier.root(_:))
  {
    goto LABEL_15;
  }

  if (v17 == enum case for REMNavigationSpecifier.today(_:) || v17 == enum case for REMNavigationSpecifier.scheduled(_:) || v17 == enum case for REMNavigationSpecifier.allReminders(_:) || v17 == enum case for REMNavigationSpecifier.flagged(_:))
  {
    goto LABEL_26;
  }

  if (v17 == enum case for REMNavigationSpecifier.search(_:))
  {
LABEL_15:
    (*(v6 + 8))(v15, v5);
    goto LABEL_4;
  }

  if (v17 == enum case for REMNavigationSpecifier.assigned(_:))
  {
LABEL_26:
    v48 = a1[4];
    v49 = v17;
    sub_100026D74(a1, a1[3]);
    v50 = sub_1000C0DD8();
    v51 = v61;
    *v61 = v50;
    v52 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:);
    v53 = sub_1000C10B8();
    (*(*(v53 - 8) + 104))(v51, v52, v53);
    (*(v6 + 104))(v51, v49, v5);
    return (*(v6 + 8))(v15, v5);
  }

  v54 = v3;
  v55 = v61;
  LODWORD(v60) = v17;
  if (v17 == enum case for REMNavigationSpecifier.siriFoundInApps(_:))
  {
    v56 = a1[4];
    sub_100026D74(a1, a1[3]);
    *v55 = sub_1000C0DD8();
    v57 = enum case for REMNavigationSpecifier.SmartListPathSpecifier.select(_:);
    v58 = sub_1000C10B8();
    (*(*(v58 - 8) + 104))(v55, v57, v58);
    (*(v6 + 104))(v55, v60, v5);
    return (*(v6 + 8))(v15, v5);
  }

  if (v60 == enum case for REMNavigationSpecifier.tagged(_:) || v60 == enum case for REMNavigationSpecifier.completed(_:) || v60 == enum case for REMNavigationSpecifier.publicTemplate(_:))
  {
    (*(v6 + 8))(v15, v5);
    v3 = v54;
  }

  else
  {
    v3 = v54;
    if (v60 != enum case for REMNavigationSpecifier.newReminder(_:) && v60 != enum case for REMNavigationSpecifier.requestLocationAuthorization(_:))
    {
      result = sub_1000C2CC8();
      __break(1u);
      return result;
    }
  }

LABEL_4:
  if (qword_1000EC8F0 != -1)
  {
    swift_once();
  }

  v20 = sub_1000C1568();
  sub_10000D978(v20, qword_1000EDA20);
  v21 = v16;
  v16(v13, v3, v5);
  v22 = sub_1000C1558();
  v23 = sub_1000C2958();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = v3;
    v26 = v25;
    v62 = v25;
    *v24 = 136315138;
    v21(v10, v13, v5);
    v27 = sub_1000C26A8();
    v28 = v6;
    v30 = v29;
    (*(v28 + 8))(v13, v5);
    v31 = sub_1000B7B58(v27, v30, &v62);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Can't select for %s", v24, 0xCu);
    sub_10002285C(v26);
    v3 = v60;
    v32 = v61;
  }

  else
  {

    (*(v6 + 8))(v13, v5);
    v32 = v61;
  }

  return (v21)(v32, v3, v5);
}

id sub_100026CEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(NSDateFormatter) init];
  [v7 setDoesRelativeDateFormatting:1];
  [v7 setDateStyle:a2];
  result = [v7 setTimeStyle:a3];
  *a4 = v7;
  return result;
}

void *sub_100026D74(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100026DB8(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100026E00(void *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    v28 = (v27 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_1000C0AF8();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v76 = a3;
    v77 = a2;
    v8 = *(a3 + 20);
    v78 = a1;
    v9 = a1 + v8;
    v10 = &a2[v8];
    v11 = *(v10 + 1);
    *v9 = *v10;
    *(v9 + 1) = v11;
    *(v9 + 1) = *(v10 + 1);
    *(v9 + 4) = *(v10 + 4);
    v12 = type metadata accessor for TTRNewWidgetViewModel(0);
    v13 = v12[7];
    v14 = sub_1000C0E58();
    v15 = *(*(v14 - 8) + 16);

    v15(&v9[v13], &v10[v13], v14);
    v16 = v12[8];
    v17 = &v9[v16];
    v18 = &v10[v16];
    v19 = *(v18 + 1);
    *v17 = *v18;
    *(v17 + 1) = v19;
    v20 = v12[9];
    v21 = &v9[v20];
    v22 = &v10[v20];
    v23 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v24 = *(v23 - 1);
    v25 = *(v24 + 48);

    if (v25(v22, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v21, v22, *(*(v26 - 8) + 64));
    }

    else
    {
      v74 = v24;
      v29 = *v22;
      v30 = v22[1];
      *v21 = *v22;
      v21[1] = v30;
      v72 = v23[6];
      v31 = sub_1000C0818();
      v69 = *(v31 - 8);
      v70 = *(v69 + 48);
      v32 = v29;
      v33 = v30;
      if (v70(v22 + v72, 1, v31))
      {
        v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v21 + v72, v22 + v72, *(*(v34 - 8) + 64));
      }

      else
      {
        (*(v69 + 16))(v21 + v72, v22 + v72, v31);
        (*(v69 + 56))(v21 + v72, 0, 1, v31);
      }

      v35 = v23[7];
      v36 = sub_1000C0938();
      (*(*(v36 - 8) + 16))(v21 + v35, v22 + v35, v36);
      v37 = v23[8];
      v38 = *(v22 + v37);
      *(v21 + v37) = v38;
      *(v21 + v23[9]) = *(v22 + v23[9]);
      *(v21 + v23[10]) = *(v22 + v23[10]);
      *(v21 + v23[11]) = *(v22 + v23[11]);
      v39 = *(v74 + 56);
      v40 = v38;
      v39(v21, 0, 1, v23);
    }

    v41 = v12[10];
    v75 = *&v10[v41];
    *&v9[v41] = v75;
    v42 = v12[11];
    v43 = &v9[v42];
    v44 = &v10[v42];
    v45 = *(v44 + 1);
    *v43 = *v44;
    *(v43 + 1) = v45;
    v46 = v12[12];
    v73 = *&v10[v46];
    *&v9[v46] = v73;
    v47 = v12[13];
    v48 = &v9[v47];
    v49 = &v10[v47];
    v50 = *(v49 + 1);
    *v48 = *v49;
    *(v48 + 1) = v50;
    v51 = v12[14];
    v52 = &v9[v51];
    v53 = &v10[v51];
    v54 = *(v53 + 1);
    *v52 = *v53;
    *(v52 + 1) = v54;
    v9[v12[15]] = v10[v12[15]];
    v55 = v12[16];
    v56 = &v9[v55];
    v57 = &v10[v55];
    v58 = *(v57 + 1);
    *v56 = *v57;
    *(v56 + 1) = v58;
    *&v9[v12[17]] = *&v10[v12[17]];
    v59 = v12[18];
    v60 = sub_1000C0938();
    v71 = *(*(v60 - 8) + 16);
    v61 = v75;

    v62 = v73;

    v71(&v9[v59], &v10[v59], v60);
    *&v9[v12[19]] = *&v10[v12[19]];
    v9[v12[20]] = v10[v12[20]];
    v63 = *(v76 + 24);
    v64 = sub_1000C2478();
    v65 = *(v64 - 8);
    v66 = *(v65 + 48);

    if (v66(&v77[v63], 1, v64))
    {
      v67 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
      v28 = v78;
      memcpy(v78 + v63, &v77[v63], *(*(v67 - 8) + 64));
    }

    else
    {
      v28 = v78;
      (*(v65 + 16))(v78 + v63, &v77[v63], v64);
      (*(v65 + 56))(v78 + v63, 0, 1, v64);
    }
  }

  return v28;
}

uint64_t sub_1000273F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000C0AF8();
  (*(*(v4 - 8) + 8))(a1, v4);
  v5 = a1 + *(a2 + 20);
  v6 = *(v5 + 8);

  v7 = *(v5 + 32);

  v8 = type metadata accessor for TTRNewWidgetViewModel(0);
  v9 = v8[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = *(v5 + v8[8] + 8);

  v12 = (v5 + v8[9]);
  v13 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v13 - 1) + 48))(v12, 1, v13))
  {

    v14 = v13[6];
    v15 = sub_1000C0818();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }

    v17 = v13[7];
    v18 = sub_1000C0938();
    (*(*(v18 - 8) + 8))(v12 + v17, v18);
  }

  v19 = *(v5 + v8[11] + 8);

  v20 = *(v5 + v8[13] + 8);

  v21 = *(v5 + v8[14] + 8);

  v22 = *(v5 + v8[16] + 8);

  v23 = *(v5 + v8[17]);

  v24 = v8[18];
  v25 = sub_1000C0938();
  (*(*(v25 - 8) + 8))(v5 + v24, v25);
  v26 = *(v5 + v8[19]);

  v27 = *(a2 + 24);
  v28 = sub_1000C2478();
  v31 = *(v28 - 8);
  result = (*(v31 + 48))(a1 + v27, 1, v28);
  if (!result)
  {
    v30 = *(v31 + 8);

    return v30(a1 + v27, v28);
  }

  return result;
}

uint64_t sub_100027754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v74 = a3;
  v75 = a2;
  v7 = *(a3 + 20);
  v76 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(v9 + 8);
  *v8 = *v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = *(v9 + 16);
  *(v8 + 32) = *(v9 + 32);
  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = v11[7];
  v13 = sub_1000C0E58();
  v14 = *(*(v13 - 8) + 16);

  v14(v8 + v12, v9 + v12, v13);
  v15 = v11[8];
  v16 = (v8 + v15);
  v17 = (v9 + v15);
  v18 = v17[1];
  *v16 = *v17;
  v16[1] = v18;
  v19 = v11[9];
  v20 = (v8 + v19);
  v21 = (v9 + v19);
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);

  if (v24(v21, 1, v22))
  {
    v25 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v25 - 8) + 64));
  }

  else
  {
    v72 = v23;
    v26 = *v21;
    v27 = v21[1];
    *v20 = *v21;
    v20[1] = v27;
    v70 = v22[6];
    v28 = sub_1000C0818();
    v67 = *(v28 - 8);
    v68 = *(v67 + 48);
    v29 = v26;
    v30 = v27;
    if (v68(v21 + v70, 1, v28))
    {
      v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v20 + v70, v21 + v70, *(*(v31 - 8) + 64));
    }

    else
    {
      (*(v67 + 16))(v20 + v70, v21 + v70, v28);
      (*(v67 + 56))(v20 + v70, 0, 1, v28);
    }

    v32 = v22[7];
    v33 = sub_1000C0938();
    (*(*(v33 - 8) + 16))(v20 + v32, v21 + v32, v33);
    v34 = v22[8];
    v35 = *(v21 + v34);
    *(v20 + v34) = v35;
    *(v20 + v22[9]) = *(v21 + v22[9]);
    *(v20 + v22[10]) = *(v21 + v22[10]);
    *(v20 + v22[11]) = *(v21 + v22[11]);
    v36 = *(v72 + 56);
    v37 = v35;
    v36(v20, 0, 1, v22);
  }

  v38 = v11[10];
  v73 = *(v9 + v38);
  *(v8 + v38) = v73;
  v39 = v11[11];
  v40 = (v8 + v39);
  v41 = (v9 + v39);
  v42 = v41[1];
  *v40 = *v41;
  v40[1] = v42;
  v43 = v11[12];
  v71 = *(v9 + v43);
  *(v8 + v43) = v71;
  v44 = v11[13];
  v45 = (v8 + v44);
  v46 = (v9 + v44);
  v47 = v46[1];
  *v45 = *v46;
  v45[1] = v47;
  v48 = v11[14];
  v49 = (v8 + v48);
  v50 = (v9 + v48);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(v8 + v11[15]) = *(v9 + v11[15]);
  v52 = v11[16];
  v53 = (v8 + v52);
  v54 = (v9 + v52);
  v55 = v54[1];
  *v53 = *v54;
  v53[1] = v55;
  *(v8 + v11[17]) = *(v9 + v11[17]);
  v56 = v11[18];
  v57 = sub_1000C0938();
  v69 = *(*(v57 - 8) + 16);
  v58 = v73;

  v59 = v71;

  v69(v8 + v56, v9 + v56, v57);
  *(v8 + v11[19]) = *(v9 + v11[19]);
  *(v8 + v11[20]) = *(v9 + v11[20]);
  v60 = *(v74 + 24);
  v61 = sub_1000C2478();
  v62 = *(v61 - 8);
  v63 = *(v62 + 48);

  if (v63(v75 + v60, 1, v61))
  {
    v64 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    v65 = v76;
    memcpy((v76 + v60), (v75 + v60), *(*(v64 - 8) + 64));
  }

  else
  {
    v65 = v76;
    (*(v62 + 16))(v76 + v60, v75 + v60, v61);
    (*(v62 + 56))(v76 + v60, 0, 1, v61);
  }

  return v65;
}

uint64_t sub_100027CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v103 = a3;
  v104 = a2;
  v7 = *(a3 + 20);
  v105 = a1;
  v8 = (a1 + v7);
  v9 = (a2 + v7);
  *v8 = *(a2 + v7);
  v10 = *(a1 + v7 + 8);
  *(v8 + 1) = *(a2 + v7 + 8);

  *(v8 + 2) = *(v9 + 2);
  *(v8 + 3) = *(v9 + 3);
  v11 = *(v8 + 4);
  *(v8 + 4) = *(v9 + 4);

  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = v12[7];
  v14 = sub_1000C0E58();
  (*(*(v14 - 8) + 24))(&v8[v13], &v9[v13], v14);
  v15 = v12[8];
  v16 = &v8[v15];
  v17 = &v9[v15];
  *v16 = *v17;
  v18 = *(v16 + 1);
  *(v16 + 1) = *(v17 + 1);

  v19 = v12[9];
  v20 = &v8[v19];
  v21 = &v9[v19];
  v22 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v23 = *(v22 - 1);
  v24 = *(v23 + 48);
  v25 = v24(v20, 1, v22);
  v26 = v24(v21, 1, v22);
  if (!v25)
  {
    if (v26)
    {
      sub_100028560(v20);
      goto LABEL_7;
    }

    v34 = *v21;
    v35 = *v20;
    *v20 = *v21;
    v36 = v34;

    v37 = *(v20 + 1);
    v38 = *(v21 + 1);
    *(v20 + 1) = v38;
    v39 = v38;

    v40 = v22[6];
    v41 = sub_1000C0818();
    v99 = *(v41 - 8);
    v42 = *(v99 + 48);
    v101 = v42(&v20[v40], 1, v41);
    v43 = v42(&v21[v40], 1, v41);
    if (v101)
    {
      if (!v43)
      {
        (*(v99 + 16))(&v20[v40], &v21[v40], v41);
        (*(v99 + 56))(&v20[v40], 0, 1, v41);
        goto LABEL_27;
      }

      v44 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v45 = &v20[v40];
      v46 = &v21[v40];
    }

    else
    {
      if (!v43)
      {
        (*(v99 + 24))(&v20[v40], &v21[v40], v41);
        goto LABEL_27;
      }

      (*(v99 + 8))(&v20[v40], v41);
      v44 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v45 = &v20[v40];
      v46 = &v21[v40];
    }

    memcpy(v45, v46, v44);
LABEL_27:
    v91 = v22[7];
    v92 = sub_1000C0938();
    (*(*(v92 - 8) + 24))(&v20[v91], &v21[v91], v92);
    v93 = v22[8];
    v94 = *&v20[v93];
    v95 = *&v21[v93];
    *&v20[v93] = v95;
    v96 = v95;

    *&v20[v22[9]] = *&v21[v22[9]];
    v20[v22[10]] = v21[v22[10]];
    v20[v22[11]] = v21[v22[11]];
    goto LABEL_8;
  }

  if (v26)
  {
LABEL_7:
    v32 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v20, v21, *(*(v32 - 8) + 64));
LABEL_8:
    v33 = v104;
    goto LABEL_14;
  }

  v27 = *v21;
  *v20 = *v21;
  v102 = *(v21 + 1);
  *(v20 + 1) = v102;
  v100 = v22[6];
  v28 = sub_1000C0818();
  v97 = *(v28 - 8);
  v98 = *(v97 + 48);
  v29 = v27;
  v30 = v102;
  if (v98(&v21[v100], 1, v28))
  {
    v31 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v20[v100], &v21[v100], *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v97 + 16))(&v20[v100], &v21[v100], v28);
    (*(v97 + 56))(&v20[v100], 0, 1, v28);
  }

  v33 = v104;
  v47 = v22[7];
  v48 = sub_1000C0938();
  (*(*(v48 - 8) + 16))(&v20[v47], &v21[v47], v48);
  v49 = v22[8];
  v50 = *&v21[v49];
  *&v20[v49] = v50;
  *&v20[v22[9]] = *&v21[v22[9]];
  v20[v22[10]] = v21[v22[10]];
  v20[v22[11]] = v21[v22[11]];
  v51 = *(v23 + 56);
  v52 = v50;
  v51(v20, 0, 1, v22);
LABEL_14:
  v53 = v12[10];
  v54 = *&v9[v53];
  v55 = *&v8[v53];
  *&v8[v53] = v54;
  v56 = v54;

  v57 = v12[11];
  v58 = &v8[v57];
  v59 = &v9[v57];
  *v58 = *v59;
  v60 = *(v58 + 1);
  *(v58 + 1) = *(v59 + 1);

  v61 = v12[12];
  v62 = *&v8[v61];
  v63 = *&v9[v61];
  *&v8[v61] = v63;
  v64 = v63;

  v65 = v12[13];
  v66 = &v8[v65];
  v67 = &v9[v65];
  *v66 = *v67;
  v68 = *(v66 + 1);
  *(v66 + 1) = *(v67 + 1);

  v69 = v12[14];
  v70 = &v8[v69];
  v71 = &v9[v69];
  *v70 = *v71;
  v72 = *(v70 + 1);
  *(v70 + 1) = *(v71 + 1);

  v8[v12[15]] = v9[v12[15]];
  v73 = v12[16];
  v74 = &v8[v73];
  v75 = &v9[v73];
  *v74 = *v75;
  v76 = *(v74 + 1);
  *(v74 + 1) = *(v75 + 1);

  v77 = v12[17];
  v78 = *&v8[v77];
  *&v8[v77] = *&v9[v77];

  v79 = v12[18];
  v80 = sub_1000C0938();
  (*(*(v80 - 8) + 24))(&v8[v79], &v9[v79], v80);
  v81 = v12[19];
  v82 = *&v8[v81];
  *&v8[v81] = *&v9[v81];

  v8[v12[20]] = v9[v12[20]];
  v83 = *(v103 + 24);
  v84 = sub_1000C2478();
  v85 = *(v84 - 8);
  v86 = *(v85 + 48);
  v87 = v86(v105 + v83, 1, v84);
  v88 = v86(v33 + v83, 1, v84);
  if (!v87)
  {
    if (!v88)
    {
      (*(v85 + 24))(v105 + v83, v33 + v83, v84);
      return v105;
    }

    (*(v85 + 8))(v105 + v83, v84);
    goto LABEL_19;
  }

  if (v88)
  {
LABEL_19:
    v89 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((v105 + v83), (v33 + v83), *(*(v89 - 8) + 64));
    return v105;
  }

  (*(v85 + 16))(v105 + v83, v33 + v83, v84);
  (*(v85 + 56))(v105 + v83, 0, 1, v84);
  return v105;
}

uint64_t sub_100028560(uint64_t a1)
{
  v2 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000285BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = a1 + v7;
  v35 = a2;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  *(v8 + 16) = *(a2 + v7 + 16);
  *(v8 + 24) = *(a2 + v7 + 24);
  v10 = type metadata accessor for TTRNewWidgetViewModel(0);
  v11 = v10[7];
  v12 = sub_1000C0E58();
  (*(*(v12 - 8) + 32))(v8 + v11, v9 + v11, v12);
  *(v8 + v10[8]) = *(v9 + v10[8]);
  v13 = v10[9];
  v14 = (v8 + v13);
  v15 = (v9 + v13);
  v16 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v17 = *(v16 - 1);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v33 = a3;
    v34 = a1;
    v19 = v15[1];
    *v14 = *v15;
    v14[1] = v19;
    v20 = v16[6];
    v21 = sub_1000C0818();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v15 + v20, 1, v21))
    {
      v23 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v14 + v20, v15 + v20, *(*(v23 - 8) + 64));
    }

    else
    {
      (*(v22 + 32))(v14 + v20, v15 + v20, v21);
      (*(v22 + 56))(v14 + v20, 0, 1, v21);
    }

    v24 = v16[7];
    v25 = sub_1000C0938();
    (*(*(v25 - 8) + 32))(v14 + v24, v15 + v24, v25);
    *(v14 + v16[8]) = *(v15 + v16[8]);
    *(v14 + v16[9]) = *(v15 + v16[9]);
    *(v14 + v16[10]) = *(v15 + v16[10]);
    *(v14 + v16[11]) = *(v15 + v16[11]);
    (*(v17 + 56))(v14, 0, 1, v16);
    a3 = v33;
    a1 = v34;
  }

  *(v8 + v10[10]) = *(v9 + v10[10]);
  *(v8 + v10[11]) = *(v9 + v10[11]);
  *(v8 + v10[12]) = *(v9 + v10[12]);
  *(v8 + v10[13]) = *(v9 + v10[13]);
  *(v8 + v10[14]) = *(v9 + v10[14]);
  *(v8 + v10[15]) = *(v9 + v10[15]);
  *(v8 + v10[16]) = *(v9 + v10[16]);
  *(v8 + v10[17]) = *(v9 + v10[17]);
  v26 = v10[18];
  v27 = sub_1000C0938();
  (*(*(v27 - 8) + 32))(v8 + v26, v9 + v26, v27);
  *(v8 + v10[19]) = *(v9 + v10[19]);
  *(v8 + v10[20]) = *(v9 + v10[20]);
  v28 = *(a3 + 24);
  v29 = sub_1000C2478();
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v35 + v28, 1, v29))
  {
    v31 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((a1 + v28), (v35 + v28), *(*(v31 - 8) + 64));
  }

  else
  {
    (*(v30 + 32))(a1 + v28, v35 + v28, v29);
    (*(v30 + 56))(a1 + v28, 0, 1, v29);
  }

  return a1;
}

uint64_t sub_100028A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v96 = a3;
  v97 = a2;
  v7 = *(a3 + 20);
  v98 = a1;
  v8 = a1 + v7;
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  v11 = *(a1 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 8) = v10;

  *(v8 + 16) = *(v9 + 16);
  v12 = *(v8 + 32);
  *(v8 + 32) = *(v9 + 32);

  v13 = type metadata accessor for TTRNewWidgetViewModel(0);
  v14 = v13[7];
  v15 = sub_1000C0E58();
  (*(*(v15 - 8) + 40))(v8 + v14, v9 + v14, v15);
  v16 = v13[8];
  v17 = (v8 + v16);
  v18 = (v9 + v16);
  v20 = *v18;
  v19 = v18[1];
  v21 = v17[1];
  *v17 = v20;
  v17[1] = v19;

  v22 = v13[9];
  v23 = (v8 + v22);
  v24 = (v9 + v22);
  v25 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v26 = *(v25 - 1);
  v27 = *(v26 + 48);
  v28 = v27(v23, 1, v25);
  v29 = v27(v24, 1, v25);
  if (!v28)
  {
    if (v29)
    {
      sub_100028560(v23);
      goto LABEL_7;
    }

    v37 = *v23;
    *v23 = *v24;

    v38 = *(v23 + 1);
    *(v23 + 1) = *(v24 + 1);

    v39 = v25[6];
    v40 = sub_1000C0818();
    v94 = *(v40 - 8);
    v41 = *(v94 + 48);
    v95 = v41(&v23[v39], 1, v40);
    v42 = v41(&v24[v39], 1, v40);
    if (v95)
    {
      if (!v42)
      {
        (*(v94 + 32))(&v23[v39], &v24[v39], v40);
        (*(v94 + 56))(&v23[v39], 0, 1, v40);
        goto LABEL_27;
      }

      v43 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v44 = &v23[v39];
      v45 = &v24[v39];
    }

    else
    {
      if (!v42)
      {
        (*(v94 + 40))(&v23[v39], &v24[v39], v40);
        goto LABEL_27;
      }

      (*(v94 + 8))(&v23[v39], v40);
      v43 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v44 = &v23[v39];
      v45 = &v24[v39];
    }

    memcpy(v44, v45, v43);
LABEL_27:
    v90 = v25[7];
    v91 = sub_1000C0938();
    (*(*(v91 - 8) + 40))(&v23[v90], &v24[v90], v91);
    v92 = v25[8];
    v93 = *&v23[v92];
    *&v23[v92] = *&v24[v92];

    *&v23[v25[9]] = *&v24[v25[9]];
    v23[v25[10]] = v24[v25[10]];
    v23[v25[11]] = v24[v25[11]];
    goto LABEL_8;
  }

  if (v29)
  {
LABEL_7:
    v35 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v23, v24, *(*(v35 - 8) + 64));
LABEL_8:
    v36 = v97;
    goto LABEL_14;
  }

  v30 = *(v24 + 1);
  *v23 = *v24;
  *(v23 + 1) = v30;
  v31 = v25[6];
  v32 = sub_1000C0818();
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(&v24[v31], 1, v32))
  {
    v34 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v23[v31], &v24[v31], *(*(v34 - 8) + 64));
  }

  else
  {
    (*(v33 + 32))(&v23[v31], &v24[v31], v32);
    (*(v33 + 56))(&v23[v31], 0, 1, v32);
  }

  v36 = v97;
  v46 = v25[7];
  v47 = sub_1000C0938();
  (*(*(v47 - 8) + 32))(&v23[v46], &v24[v46], v47);
  *&v23[v25[8]] = *&v24[v25[8]];
  *&v23[v25[9]] = *&v24[v25[9]];
  v23[v25[10]] = v24[v25[10]];
  v23[v25[11]] = v24[v25[11]];
  (*(v26 + 56))(v23, 0, 1, v25);
LABEL_14:
  v48 = v13[10];
  v49 = *(v8 + v48);
  *(v8 + v48) = *(v9 + v48);

  v50 = v13[11];
  v51 = (v8 + v50);
  v52 = (v9 + v50);
  v54 = *v52;
  v53 = v52[1];
  v55 = v51[1];
  *v51 = v54;
  v51[1] = v53;

  v56 = v13[12];
  v57 = *(v8 + v56);
  *(v8 + v56) = *(v9 + v56);

  v58 = v13[13];
  v59 = (v8 + v58);
  v60 = (v9 + v58);
  v62 = *v60;
  v61 = v60[1];
  v63 = v59[1];
  *v59 = v62;
  v59[1] = v61;

  v64 = v13[14];
  v65 = (v8 + v64);
  v66 = (v9 + v64);
  v68 = *v66;
  v67 = v66[1];
  v69 = v65[1];
  *v65 = v68;
  v65[1] = v67;

  *(v8 + v13[15]) = *(v9 + v13[15]);
  v70 = v13[16];
  v71 = (v8 + v70);
  v72 = (v9 + v70);
  v74 = *v72;
  v73 = v72[1];
  v75 = v71[1];
  *v71 = v74;
  v71[1] = v73;

  v76 = v13[17];
  v77 = *(v8 + v76);
  *(v8 + v76) = *(v9 + v76);

  v78 = v13[18];
  v79 = sub_1000C0938();
  (*(*(v79 - 8) + 40))(v8 + v78, v9 + v78, v79);
  v80 = v13[19];
  v81 = *(v8 + v80);
  *(v8 + v80) = *(v9 + v80);

  *(v8 + v13[20]) = *(v9 + v13[20]);
  v82 = *(v96 + 24);
  v83 = sub_1000C2478();
  v84 = *(v83 - 8);
  v85 = *(v84 + 48);
  v86 = v85(v98 + v82, 1, v83);
  v87 = v85(v36 + v82, 1, v83);
  if (!v86)
  {
    if (!v87)
    {
      (*(v84 + 40))(v98 + v82, v36 + v82, v83);
      return v98;
    }

    (*(v84 + 8))(v98 + v82, v83);
    goto LABEL_19;
  }

  if (v87)
  {
LABEL_19:
    v88 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
    memcpy((v98 + v82), (v36 + v82), *(*(v88 - 8) + 64));
    return v98;
  }

  (*(v84 + 32))(v98 + v82, v36 + v82, v83);
  (*(v84 + 56))(v98 + v82, 0, 1, v83);
  return v98;
}

uint64_t sub_100029264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000C0AF8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for TTRNewWidgetViewModel(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_1000293C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000C0AF8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for TTRNewWidgetViewModel(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = sub_100004D04(&qword_1000ED998, &unk_1000C9090);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

void sub_10002953C()
{
  v0 = sub_1000C0AF8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for TTRNewWidgetViewModel(319);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_10002B67C(319, &qword_1000EDB30, &type metadata accessor for TimelineEntryRelevance);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

char *sub_10002965C(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v22 = *a2;
    *v4 = *a2;
    v4 = (v22 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = a2[4];
    v8 = a3[7];
    v9 = sub_1000C0E58();
    v10 = *(*(v9 - 8) + 16);

    v10(&v4[v8], a2 + v8, v9);
    v11 = a3[8];
    v12 = a3[9];
    v13 = &v4[v11];
    v14 = (a2 + v11);
    v15 = v14[1];
    *v13 = *v14;
    *(v13 + 1) = v15;
    v16 = &v4[v12];
    v17 = (a2 + v12);
    v18 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
    v19 = *(v18 - 1);
    v20 = *(v19 + 48);

    if (v20(v17, 1, v18))
    {
      v21 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
    }

    else
    {
      v66 = v19;
      v23 = *v17;
      v24 = v17[1];
      *v16 = *v17;
      v16[1] = v24;
      v64 = v18[6];
      v25 = sub_1000C0818();
      v60 = *(v25 - 8);
      v62 = *(v60 + 48);
      v26 = v23;
      v27 = v24;
      if (v62(v17 + v64, 1, v25))
      {
        v28 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
        memcpy(v16 + v64, v17 + v64, *(*(v28 - 8) + 64));
      }

      else
      {
        (*(v60 + 16))(v16 + v64, v17 + v64, v25);
        (*(v60 + 56))(v16 + v64, 0, 1, v25);
      }

      v29 = v18[7];
      v30 = sub_1000C0938();
      (*(*(v30 - 8) + 16))(v16 + v29, v17 + v29, v30);
      v31 = v18[8];
      v32 = *(v17 + v31);
      *(v16 + v31) = v32;
      *(v16 + v18[9]) = *(v17 + v18[9]);
      *(v16 + v18[10]) = *(v17 + v18[10]);
      *(v16 + v18[11]) = *(v17 + v18[11]);
      v33 = *(v66 + 56);
      v34 = v32;
      v33(v16, 0, 1, v18);
    }

    v35 = a3[10];
    v36 = a3[11];
    v67 = *(a2 + v35);
    *&v4[v35] = v67;
    v37 = &v4[v36];
    v38 = (a2 + v36);
    v65 = v38[1];
    *v37 = *v38;
    *(v37 + 1) = v65;
    v39 = a3[12];
    v40 = a3[13];
    v63 = *(a2 + v39);
    *&v4[v39] = v63;
    v41 = &v4[v40];
    v42 = (a2 + v40);
    v43 = v42[1];
    *v41 = *v42;
    *(v41 + 1) = v43;
    v44 = a3[14];
    v45 = a3[15];
    v46 = &v4[v44];
    v47 = (a2 + v44);
    v48 = v47[1];
    *v46 = *v47;
    *(v46 + 1) = v48;
    v4[v45] = *(a2 + v45);
    v49 = a3[16];
    v50 = a3[17];
    v51 = &v4[v49];
    v52 = (a2 + v49);
    v53 = v52[1];
    *v51 = *v52;
    *(v51 + 1) = v53;
    *&v4[v50] = *(a2 + v50);
    v54 = a3[18];
    v55 = sub_1000C0938();
    v61 = *(*(v55 - 8) + 16);
    v56 = v67;

    v57 = v63;

    v61(&v4[v54], a2 + v54, v55);
    v58 = a3[20];
    *&v4[a3[19]] = *(a2 + a3[19]);
    v4[v58] = *(a2 + v58);
  }

  return v4;
}

uint64_t sub_100029AC0(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 32);

  v6 = a2[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 8))(a1 + v6, v7);
  v8 = *(a1 + a2[8] + 8);

  v9 = (a1 + a2[9]);
  v10 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (!(*(*(v10 - 1) + 48))(v9, 1, v10))
  {

    v11 = v10[6];
    v12 = sub_1000C0818();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    v14 = v10[7];
    v15 = sub_1000C0938();
    (*(*(v15 - 8) + 8))(v9 + v14, v15);
  }

  v16 = *(a1 + a2[11] + 8);

  v17 = *(a1 + a2[13] + 8);

  v18 = *(a1 + a2[14] + 8);

  v19 = *(a1 + a2[16] + 8);

  v20 = *(a1 + a2[17]);

  v21 = a2[18];
  v22 = sub_1000C0938();
  (*(*(v22 - 8) + 8))(a1 + v21, v22);
  v23 = *(a1 + a2[19]);
}

uint64_t sub_100029D28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[7];
  v8 = sub_1000C0E58();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[8];
  v11 = a3[9];
  v12 = (a1 + v10);
  v13 = (a2 + v10);
  v14 = v13[1];
  *v12 = *v13;
  v12[1] = v14;
  v15 = (a1 + v11);
  v16 = (a2 + v11);
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);

  if (v19(v16, 1, v17))
  {
    v20 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v20 - 8) + 64));
  }

  else
  {
    v64 = v18;
    v21 = *v16;
    v22 = v16[1];
    *v15 = *v16;
    v15[1] = v22;
    v62 = v17[6];
    v23 = sub_1000C0818();
    v58 = *(v23 - 8);
    v60 = *(v58 + 48);
    v24 = v21;
    v25 = v22;
    if (v60(v16 + v62, 1, v23))
    {
      v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v15 + v62, v16 + v62, *(*(v26 - 8) + 64));
    }

    else
    {
      (*(v58 + 16))(v15 + v62, v16 + v62, v23);
      (*(v58 + 56))(v15 + v62, 0, 1, v23);
    }

    v27 = v17[7];
    v28 = sub_1000C0938();
    (*(*(v28 - 8) + 16))(v15 + v27, v16 + v27, v28);
    v29 = v17[8];
    v30 = *(v16 + v29);
    *(v15 + v29) = v30;
    *(v15 + v17[9]) = *(v16 + v17[9]);
    *(v15 + v17[10]) = *(v16 + v17[10]);
    *(v15 + v17[11]) = *(v16 + v17[11]);
    v31 = *(v64 + 56);
    v32 = v30;
    v31(v15, 0, 1, v17);
  }

  v33 = a3[10];
  v34 = a3[11];
  v65 = *(a2 + v33);
  *(a1 + v33) = v65;
  v35 = (a1 + v34);
  v36 = (a2 + v34);
  v63 = v36[1];
  *v35 = *v36;
  v35[1] = v63;
  v37 = a3[12];
  v38 = a3[13];
  v61 = *(a2 + v37);
  *(a1 + v37) = v61;
  v39 = (a1 + v38);
  v40 = (a2 + v38);
  v41 = v40[1];
  *v39 = *v40;
  v39[1] = v41;
  v42 = a3[14];
  v43 = a3[15];
  v44 = (a1 + v42);
  v45 = (a2 + v42);
  v46 = v45[1];
  *v44 = *v45;
  v44[1] = v46;
  *(a1 + v43) = *(a2 + v43);
  v47 = a3[16];
  v48 = a3[17];
  v49 = (a1 + v47);
  v50 = (a2 + v47);
  v51 = v50[1];
  *v49 = *v50;
  v49[1] = v51;
  *(a1 + v48) = *(a2 + v48);
  v52 = a3[18];
  v53 = sub_1000C0938();
  v59 = *(*(v53 - 8) + 16);
  v54 = v65;

  v55 = v61;

  v59(a1 + v52, a2 + v52, v53);
  v56 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v56) = *(a2 + v56);

  return a1;
}

char *sub_10002A140(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  v7 = *(a1 + 4);
  *(a1 + 4) = *(a2 + 4);

  v8 = a3[7];
  v9 = sub_1000C0E58();
  (*(*(v9 - 8) + 24))(&a1[v8], &a2[v8], v9);
  v10 = a3[8];
  v11 = &a1[v10];
  v12 = &a2[v10];
  *v11 = *v12;
  v13 = *(v11 + 1);
  *(v11 + 1) = *(v12 + 1);

  v14 = a3[9];
  v15 = &a1[v14];
  v16 = &a2[v14];
  v17 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v18 = *(v17 - 1);
  v19 = *(v18 + 48);
  v20 = v19(v15, 1, v17);
  v21 = v19(v16, 1, v17);
  if (!v20)
  {
    if (v21)
    {
      sub_100028560(v15);
      goto LABEL_7;
    }

    v28 = *v16;
    v29 = *v15;
    *v15 = *v16;
    v30 = v28;

    v31 = *(v15 + 1);
    v32 = *(v16 + 1);
    *(v15 + 1) = v32;
    v33 = v32;

    v34 = v17[6];
    v35 = sub_1000C0818();
    v85 = *(v35 - 8);
    v36 = *(v85 + 48);
    v88 = v36(&v15[v34], 1, v35);
    v37 = v36(&v16[v34], 1, v35);
    if (v88)
    {
      if (!v37)
      {
        (*(v85 + 16))(&v15[v34], &v16[v34], v35);
        (*(v85 + 56))(&v15[v34], 0, 1, v35);
        goto LABEL_18;
      }

      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v15[v34];
      v40 = &v16[v34];
    }

    else
    {
      if (!v37)
      {
        (*(v85 + 24))(&v15[v34], &v16[v34], v35);
        goto LABEL_18;
      }

      (*(v85 + 8))(&v15[v34], v35);
      v38 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v39 = &v15[v34];
      v40 = &v16[v34];
    }

    memcpy(v39, v40, v38);
LABEL_18:
    v47 = v17[7];
    v48 = sub_1000C0938();
    (*(*(v48 - 8) + 24))(&v15[v47], &v16[v47], v48);
    v49 = v17[8];
    v50 = *&v15[v49];
    v51 = *&v16[v49];
    *&v15[v49] = v51;
    v52 = v51;

    *&v15[v17[9]] = *&v16[v17[9]];
    v15[v17[10]] = v16[v17[10]];
    v15[v17[11]] = v16[v17[11]];
    goto LABEL_19;
  }

  if (v21)
  {
LABEL_7:
    v27 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v15, v16, *(*(v27 - 8) + 64));
    goto LABEL_19;
  }

  v22 = *v16;
  *v15 = *v16;
  v87 = *(v16 + 1);
  *(v15 + 1) = v87;
  v89 = v17[6];
  v23 = sub_1000C0818();
  v84 = *(v23 - 8);
  v86 = *(v84 + 48);
  v24 = v22;
  v25 = v87;
  if (v86(&v16[v89], 1, v23))
  {
    v26 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v15[v89], &v16[v89], *(*(v26 - 8) + 64));
  }

  else
  {
    (*(v84 + 16))(&v15[v89], &v16[v89], v23);
    (*(v84 + 56))(&v15[v89], 0, 1, v23);
  }

  v41 = v17[7];
  v42 = sub_1000C0938();
  (*(*(v42 - 8) + 16))(&v15[v41], &v16[v41], v42);
  v43 = v17[8];
  v44 = *&v16[v43];
  *&v15[v43] = v44;
  *&v15[v17[9]] = *&v16[v17[9]];
  v15[v17[10]] = v16[v17[10]];
  v15[v17[11]] = v16[v17[11]];
  v45 = *(v18 + 56);
  v46 = v44;
  v45(v15, 0, 1, v17);
LABEL_19:
  v53 = a3[10];
  v54 = *&a2[v53];
  v55 = *&a1[v53];
  *&a1[v53] = v54;
  v56 = v54;

  v57 = a3[11];
  v58 = &a1[v57];
  v59 = &a2[v57];
  *v58 = *v59;
  v60 = *(v58 + 1);
  *(v58 + 1) = *(v59 + 1);

  v61 = a3[12];
  v62 = *&a1[v61];
  v63 = *&a2[v61];
  *&a1[v61] = v63;
  v64 = v63;

  v65 = a3[13];
  v66 = &a1[v65];
  v67 = &a2[v65];
  *v66 = *v67;
  v68 = *(v66 + 1);
  *(v66 + 1) = *(v67 + 1);

  v69 = a3[14];
  v70 = &a1[v69];
  v71 = &a2[v69];
  *v70 = *v71;
  v72 = *(v70 + 1);
  *(v70 + 1) = *(v71 + 1);

  a1[a3[15]] = a2[a3[15]];
  v73 = a3[16];
  v74 = &a1[v73];
  v75 = &a2[v73];
  *v74 = *v75;
  v76 = *(v74 + 1);
  *(v74 + 1) = *(v75 + 1);

  v77 = a3[17];
  v78 = *&a1[v77];
  *&a1[v77] = *&a2[v77];

  v79 = a3[18];
  v80 = sub_1000C0938();
  (*(*(v80 - 8) + 24))(&a1[v79], &a2[v79], v80);
  v81 = a3[19];
  v82 = *&a1[v81];
  *&a1[v81] = *&a2[v81];

  a1[a3[20]] = a2[a3[20]];
  return a1;
}

uint64_t sub_10002A844(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = a3[7];
  v7 = sub_1000C0E58();
  (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
  v8 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v9 = (a1 + v8);
  v10 = (a2 + v8);
  v11 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v12 = *(v11 - 1);
  if ((*(v12 + 48))(v10, 1, v11))
  {
    v13 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v9, v10, *(*(v13 - 8) + 64));
  }

  else
  {
    v14 = v10[1];
    *v9 = *v10;
    v9[1] = v14;
    v15 = v11[6];
    v16 = sub_1000C0818();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v10 + v15, 1, v16))
    {
      v18 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(v9 + v15, v10 + v15, *(*(v18 - 8) + 64));
    }

    else
    {
      (*(v17 + 32))(v9 + v15, v10 + v15, v16);
      (*(v17 + 56))(v9 + v15, 0, 1, v16);
    }

    v19 = v11[7];
    v20 = sub_1000C0938();
    (*(*(v20 - 8) + 32))(v9 + v19, v10 + v19, v20);
    *(v9 + v11[8]) = *(v10 + v11[8]);
    *(v9 + v11[9]) = *(v10 + v11[9]);
    *(v9 + v11[10]) = *(v10 + v11[10]);
    *(v9 + v11[11]) = *(v10 + v11[11]);
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  v21 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[18];
  v26 = sub_1000C0938();
  (*(*(v26 - 8) + 32))(a1 + v25, a2 + v25, v26);
  v27 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v27) = *(a2 + v27);
  return a1;
}

uint64_t sub_10002AB9C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v9 = a3[7];
  v10 = sub_1000C0E58();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  v15 = *v13;
  v14 = v13[1];
  v16 = v12[1];
  *v12 = v15;
  v12[1] = v14;

  v17 = a3[9];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  v20 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v21 = *(v20 - 1);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, v20);
  v24 = v22(v19, 1, v20);
  if (!v23)
  {
    if (v24)
    {
      sub_100028560(v18);
      goto LABEL_7;
    }

    v31 = *v18;
    *v18 = *v19;

    v32 = *(v18 + 1);
    *(v18 + 1) = *(v19 + 1);

    v33 = v20[6];
    v34 = sub_1000C0818();
    v81 = *(v34 - 8);
    v35 = *(v81 + 48);
    v82 = v35(&v18[v33], 1, v34);
    v36 = v35(&v19[v33], 1, v34);
    if (v82)
    {
      if (!v36)
      {
        (*(v81 + 32))(&v18[v33], &v19[v33], v34);
        (*(v81 + 56))(&v18[v33], 0, 1, v34);
        goto LABEL_18;
      }

      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v18[v33];
      v39 = &v19[v33];
    }

    else
    {
      if (!v36)
      {
        (*(v81 + 40))(&v18[v33], &v19[v33], v34);
        goto LABEL_18;
      }

      (*(v81 + 8))(&v18[v33], v34);
      v37 = *(*(sub_100004D04(&qword_1000ECE78, &unk_1000C3810) - 8) + 64);
      v38 = &v18[v33];
      v39 = &v19[v33];
    }

    memcpy(v38, v39, v37);
LABEL_18:
    v42 = v20[7];
    v43 = sub_1000C0938();
    (*(*(v43 - 8) + 40))(&v18[v42], &v19[v42], v43);
    v44 = v20[8];
    v45 = *&v18[v44];
    *&v18[v44] = *&v19[v44];

    *&v18[v20[9]] = *&v19[v20[9]];
    v18[v20[10]] = v19[v20[10]];
    v18[v20[11]] = v19[v20[11]];
    goto LABEL_19;
  }

  if (v24)
  {
LABEL_7:
    v30 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
    memcpy(v18, v19, *(*(v30 - 8) + 64));
    goto LABEL_19;
  }

  v25 = *(v19 + 1);
  *v18 = *v19;
  *(v18 + 1) = v25;
  v26 = v20[6];
  v27 = sub_1000C0818();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(&v19[v26], 1, v27))
  {
    v29 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&v18[v26], &v19[v26], *(*(v29 - 8) + 64));
  }

  else
  {
    (*(v28 + 32))(&v18[v26], &v19[v26], v27);
    (*(v28 + 56))(&v18[v26], 0, 1, v27);
  }

  v40 = v20[7];
  v41 = sub_1000C0938();
  (*(*(v41 - 8) + 32))(&v18[v40], &v19[v40], v41);
  *&v18[v20[8]] = *&v19[v20[8]];
  *&v18[v20[9]] = *&v19[v20[9]];
  v18[v20[10]] = v19[v20[10]];
  v18[v20[11]] = v19[v20[11]];
  (*(v21 + 56))(v18, 0, 1, v20);
LABEL_19:
  v46 = a3[10];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);

  v48 = a3[11];
  v49 = (a1 + v48);
  v50 = (a2 + v48);
  v52 = *v50;
  v51 = v50[1];
  v53 = v49[1];
  *v49 = v52;
  v49[1] = v51;

  v54 = a3[12];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);

  v56 = a3[13];
  v57 = (a1 + v56);
  v58 = (a2 + v56);
  v60 = *v58;
  v59 = v58[1];
  v61 = v57[1];
  *v57 = v60;
  v57[1] = v59;

  v62 = a3[14];
  v63 = (a1 + v62);
  v64 = (a2 + v62);
  v66 = *v64;
  v65 = v64[1];
  v67 = v63[1];
  *v63 = v66;
  v63[1] = v65;

  v68 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  v69 = (a1 + v68);
  v70 = (a2 + v68);
  v72 = *v70;
  v71 = v70[1];
  v73 = v69[1];
  *v69 = v72;
  v69[1] = v71;

  v74 = a3[17];
  v75 = *(a1 + v74);
  *(a1 + v74) = *(a2 + v74);

  v76 = a3[18];
  v77 = sub_1000C0938();
  (*(*(v77 - 8) + 40))(a1 + v76, a2 + v76, v77);
  v78 = a3[19];
  v79 = *(a1 + v78);
  *(a1 + v78) = *(a2 + v78);

  *(a1 + a3[20]) = *(a2 + a3[20]);
  return a1;
}

uint64_t sub_10002B1F0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000C0E58();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_1000C0938();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[18];

  return v15(v16, a2, v14);
}

uint64_t sub_10002B37C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = sub_1000C0E58();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100004D04(&qword_1000ECD40, &unk_1000C5880);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_1000C0938();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[18];

  return v15(v16, a2, a2, v14);
}

void sub_10002B4F4()
{
  v0 = sub_1000C0E58();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_10002B67C(319, &unk_1000EDBD0, type metadata accessor for TTRNewWidgetViewModel.Reminder);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_1000C0938();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_10002B67C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000C2A58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *_s24RemindersWidgetExtension21TTRNewWidgetViewModelV10ShareeIconVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRNewWidgetViewModel.ShareeIcon(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRNewWidgetViewModel.ShareeIcon(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];
  return a1;
}

char *sub_10002B7A4(char *a1, char **a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v7 = a1;
    v8 = a2[1];
    *(a1 + 1) = v8;
    v9 = a3[6];
    v10 = sub_1000C0818();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    v13 = v4;
    v14 = v8;
    if (v12(a2 + v9, 1, v10))
    {
      v15 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
      memcpy(&v7[v9], a2 + v9, *(*(v15 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v7[v9], a2 + v9, v10);
      (*(v11 + 56))(&v7[v9], 0, 1, v10);
    }

    v16 = a3[7];
    v17 = sub_1000C0938();
    (*(*(v17 - 8) + 16))(&v7[v16], a2 + v16, v17);
    v18 = a3[8];
    v19 = a3[9];
    v20 = *(a2 + v18);
    *&v7[v18] = v20;
    *&v7[v19] = *(a2 + v19);
    v21 = a3[11];
    v7[a3[10]] = *(a2 + a3[10]);
    v7[v21] = *(a2 + v21);
    v22 = v20;
  }

  return v7;
}

void sub_10002B990(id *a1, int *a2)
{
  v4 = a2[6];
  v5 = sub_1000C0818();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[7];
  v8 = sub_1000C0938();
  (*(*(v8 - 8) + 8))(a1 + v7, v8);
  v9 = *(a1 + a2[8]);
}

char *sub_10002BA9C(char *a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v7;
  v8 = a3[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v6;
  v13 = v7;
  if (v11(a2 + v8, 1, v9))
  {
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v8], (a2 + v8), *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], a2 + v8, v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v15 = a3[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 16))(&a1[v15], a2 + v15, v16);
  v17 = a3[8];
  v18 = a3[9];
  v19 = *(a2 + v17);
  *&a1[v17] = v19;
  *&a1[v18] = *(a2 + v18);
  v20 = a3[11];
  a1[a3[10]] = *(a2 + a3[10]);
  a1[v20] = *(a2 + v20);
  v21 = v19;
  return a1;
}

uint64_t sub_10002BC38(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  *(a1 + 8) = v10;
  v11 = v10;

  v12 = a3[6];
  v13 = sub_1000C0818();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  v16 = v15(a1 + v12, 1, v13);
  v17 = v15(a2 + v12, 1, v13);
  if (!v16)
  {
    if (!v17)
    {
      (*(v14 + 24))(a1 + v12, a2 + v12, v13);
      goto LABEL_7;
    }

    (*(v14 + 8))(a1 + v12, v13);
    goto LABEL_6;
  }

  if (v17)
  {
LABEL_6:
    v18 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v12), (a2 + v12), *(*(v18 - 8) + 64));
    goto LABEL_7;
  }

  (*(v14 + 16))(a1 + v12, a2 + v12, v13);
  (*(v14 + 56))(a1 + v12, 0, 1, v13);
LABEL_7:
  v19 = a3[7];
  v20 = sub_1000C0938();
  (*(*(v20 - 8) + 24))(a1 + v19, a2 + v19, v20);
  v21 = a3[8];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  *(a1 + v21) = v23;
  v24 = v23;

  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + a3[11]) = *(a2 + a3[11]);
  return a1;
}

char *sub_10002BE58(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_1000C0818();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v11 = a3[7];
  v12 = sub_1000C0938();
  (*(*(v12 - 8) + 32))(&a1[v11], &a2[v11], v12);
  v13 = a3[9];
  *&a1[a3[8]] = *&a2[a3[8]];
  *&a1[v13] = *&a2[v13];
  v14 = a3[11];
  a1[a3[10]] = a2[a3[10]];
  a1[v14] = a2[v14];
  return a1;
}

uint64_t sub_10002BFD8(uint64_t a1, char *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 1);

  v8 = a3[6];
  v9 = sub_1000C0818();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(a1 + v8, 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (!v12)
  {
    if (!v13)
    {
      (*(v10 + 40))(a1 + v8, &a2[v8], v9);
      goto LABEL_7;
    }

    (*(v10 + 8))(a1 + v8, v9);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v14 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    memcpy((a1 + v8), &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 32))(a1 + v8, &a2[v8], v9);
  (*(v10 + 56))(a1 + v8, 0, 1, v9);
LABEL_7:
  v15 = a3[7];
  v16 = sub_1000C0938();
  (*(*(v16 - 8) + 40))(a1 + v15, &a2[v15], v16);
  v17 = a3[8];
  v18 = *(a1 + v17);
  *(a1 + v17) = *&a2[v17];

  v19 = a3[10];
  *(a1 + a3[9]) = *&a2[a3[9]];
  *(a1 + v19) = a2[v19];
  *(a1 + a3[11]) = a2[a3[11]];
  return a1;
}

uint64_t sub_10002C1FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1000C0938();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_10002C340(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100004D04(&qword_1000ECE78, &unk_1000C3810);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1000C0938();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_10002C470()
{
  sub_10002B67C(319, &unk_1000EDCA8, &type metadata accessor for AttributedString);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = sub_1000C0938();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

uint64_t getEnumTagSinglePayload for TTRNewWidgetPresenter.DisplayDateStyle.TimeOfDayStyle(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_10002C638()
{
  result = qword_1000EDCF0;
  if (!qword_1000EDCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDCF0);
  }

  return result;
}

unint64_t sub_10002C68C()
{
  result = qword_1000EDD08;
  if (!qword_1000EDD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD08);
  }

  return result;
}

unint64_t sub_10002C6E0()
{
  result = qword_1000EDD10;
  if (!qword_1000EDD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000EDD10);
  }

  return result;
}

uint64_t sub_10002C764@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1000C1938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004D04(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_1000082B4(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_1000C2958();
    v22 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10002C964@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1000C0FD8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004D04(&qword_1000EDD80, &qword_1000C5AF8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = sub_100004D04(&qword_1000EDD88, &qword_1000C5B00);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = sub_100004D04(&qword_1000EDD90, &unk_1000C5B08);
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v43 = &v43 - v19;
  (*(v2 + 104))(v5, enum case for REMWidgetRefresh.WidgetKind.widgetForAnyList(_:), v1);
  sub_1000C0FC8();
  (*(v2 + 8))(v5, v1);
  sub_1000C0FF8();
  v49 = sub_1000A0BFC();
  v50 = v20;
  type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0);
  sub_100048784(&qword_1000EDD98, type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper);
  sub_100045998();
  sub_1000C23E8();
  sub_1000C19E8();
  v21 = sub_1000C1DB8();
  v23 = v22;
  v25 = v24;
  v26 = sub_100008478(&qword_1000EDDA8, &qword_1000EDD80, &qword_1000C5AF8);
  sub_1000C1AC8();
  sub_10000537C(v21, v23, v25 & 1);

  (*(v7 + 8))(v10, v6);
  sub_1000C19E8();
  v27 = sub_1000C1DB8();
  v29 = v28;
  LOBYTE(v10) = v30;
  v49 = v6;
  v50 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = v43;
  v32 = v44;
  sub_1000C1A88();
  sub_10000537C(v27, v29, v10 & 1);

  v34 = v32;
  (*(v45 + 8))(v15, v32);
  v35 = sub_100012C08();
  sub_100004D04(&qword_1000ECB68, &unk_1000C3680);
  v36 = sub_1000C2378();
  v37 = *(v36 - 8);
  v38 = *(v37 + 72);
  v39 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1000C3590;
  (*(v37 + 104))(v40 + v39, enum case for WidgetFamily.accessoryRectangular(_:), v36);
  v49 = v35;
  sub_100077AE8(v40);
  v49 = v34;
  v50 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v41 = v46;
  sub_1000C1AA8();

  return (*(v47 + 8))(v33, v41);
}

uint64_t sub_10002CF94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetTimelineEntry(0);
  sub_100048828(a1 + *(v4 + 20), a2, type metadata accessor for TTRNewWidgetViewModel);
  v5 = *(type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0) + 20);
  *(a2 + v5) = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB0, &qword_1000C5B48);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10002D030@<X0>(uint64_t a1@<X8>)
{
  v63 = a1;
  v2 = sub_1000C1938();
  v55 = *(v2 - 8);
  v56 = v2;
  v3 = *(v55 + 64);
  __chkstk_darwin(v2);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1000C1BB8();
  v5 = *(v58 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v58);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100004D04(&qword_1000EE638, &qword_1000C6708);
  v9 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v11 = &v53 - v10;
  v12 = sub_100004D04(&qword_1000EE640, &qword_1000C6710);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v53 - v15;
  v59 = sub_100004D04(&qword_1000EE648, &qword_1000C6718);
  v17 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v61 = &v53 - v18;
  v60 = sub_100004D04(&qword_1000EE650, &qword_1000C6720);
  v19 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60);
  v62 = &v53 - v20;
  sub_10002D710(v1, v11);
  sub_1000C1BA8();
  sub_1000C2108();
  sub_100004D04(&qword_1000EE658, &qword_1000C6728);
  sub_100050A44();
  sub_100050CD0();
  v21 = v1;
  sub_1000C1F18();
  (*(v5 + 8))(v8, v58);
  sub_1000084C0(v11, &qword_1000EE638, &qword_1000C6708);
  KeyPath = swift_getKeyPath();
  v23 = sub_10002DF70();
  v24 = &v16[*(v13 + 44)];
  *v24 = KeyPath;
  v24[1] = v23;
  v25 = swift_getKeyPath();
  v26 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  v27 = v26[9];
  if (sub_1000451A0())
  {
    v28 = sub_1000C1FC8();
  }

  else
  {
    v29 = *&v1[v26[5] + *(type metadata accessor for TTRNewWidgetViewModel(0) + 40)];
    v28 = sub_1000C1FF8();
  }

  v30 = v28;
  v31 = v61;
  sub_10001DA60(v16, v61, &qword_1000EE640, &qword_1000C6710);
  v32 = (v31 + *(v59 + 36));
  *v32 = v25;
  v32[1] = v30;
  v33 = swift_getKeyPath();
  v34 = sub_1000451A0();
  v35 = v62;
  if (v34)
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }

    v36 = &qword_1000FAB08;
  }

  else
  {
    if (qword_1000EC960 != -1)
    {
      swift_once();
    }

    v36 = &qword_1000EDD70;
  }

  v37 = *v36;

  sub_10001DA60(v31, v35, &qword_1000EE648, &qword_1000C6718);
  v38 = (v35 + *(v60 + 36));
  *v38 = v33;
  v38[1] = v37;
  v39 = swift_getKeyPath();
  if (*v21)
  {
    goto LABEL_12;
  }

  if (sub_1000451A0())
  {
    v44 = &v21[v26[7]];
    v45 = *v44;
    if (v44[8] == 1)
    {
      if ((v45 & 1) == 0)
      {
LABEL_19:
        v46 = sub_1000C1FC8();
LABEL_27:
        v40 = v46;
        goto LABEL_15;
      }
    }

    else
    {

      sub_1000C2958();
      v47 = sub_1000C1BC8();
      sub_1000C1548();

      v48 = v54;
      sub_1000C1928();
      swift_getAtKeyPath();
      sub_100048A00(v45, 0);
      (*(v55 + 8))(v48, v56);
      if ((v64 & 1) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  if (sub_1000451A0())
  {
    v49 = &v21[v26[7]];
    v50 = *v49;
    if (v49[8] == 1)
    {
      if ((v50 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {

      sub_1000C2958();
      v51 = sub_1000C1BC8();
      sub_1000C1548();

      v52 = v54;
      sub_1000C1928();
      swift_getAtKeyPath();
      sub_100048A00(v50, 0);
      (*(v55 + 8))(v52, v56);
      if ((v65 & 1) == 0)
      {
LABEL_26:
        v46 = sub_1000C1FD8();
        goto LABEL_27;
      }
    }
  }

LABEL_12:
  if (qword_1000EC940 != -1)
  {
    swift_once();
  }

  v40 = qword_1000EDD50;

LABEL_15:
  v41 = v63;
  sub_10001DA60(v35, v63, &qword_1000EE650, &qword_1000C6720);
  result = sub_100004D04(&qword_1000EE6B8, &qword_1000C6770);
  v43 = (v41 + *(result + 36));
  *v43 = v39;
  v43[1] = v40;
  return result;
}

uint64_t sub_10002D710@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = type metadata accessor for TTRAnyListWidget.InteractiveLarge(0);
  v3 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for TTRAnyListWidget.InteractiveMedium(0);
  v6 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100004D04(&qword_1000EE6C8, &qword_1000C6778);
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v11 = &v42 - v10;
  v12 = sub_100004D04(&qword_1000EE6D0, &qword_1000C6780);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v42 - v14;
  v47 = sub_100004D04(&qword_1000EE680, &qword_1000C6738);
  v16 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v18 = &v42 - v17;
  v19 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v20 = *(*(v19 - 1) + 64);
  __chkstk_darwin(v19);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a1;
  v24 = *(type metadata accessor for TTRAnyListWidget.SystemWidgetView(0) + 20);
  if (v23)
  {
    if (v23 == 1)
    {
      sub_100048828(&a1[v24], v8, type metadata accessor for TTRNewWidgetViewModel);
      KeyPath = swift_getKeyPath();
      v26 = v45;
      *&v8[*(v45 + 20)] = KeyPath;
      sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
      swift_storeEnumTagMultiPayload();
      v27 = swift_getKeyPath();
      v28 = &v8[*(v26 + 24)];
      *v28 = v27;
      *(v28 + 1) = 0;
      *(v28 + 2) = 0;
      *(v28 + 3) = 0;
      v28[32] = 0;
      sub_100048828(v8, v15, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
      swift_storeEnumTagMultiPayload();
      sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
      sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
      sub_1000C1AE8();
      sub_1000082B4(v18, v11, &qword_1000EE680, &qword_1000C6738);
      swift_storeEnumTagMultiPayload();
      sub_100050B84();
      sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
      sub_1000C1AE8();
      sub_1000084C0(v18, &qword_1000EE680, &qword_1000C6738);
      v29 = type metadata accessor for TTRAnyListWidget.InteractiveMedium;
      v30 = v8;
    }

    else
    {
      sub_100048828(&a1[v24], v5, type metadata accessor for TTRNewWidgetViewModel);
      *&v5[*(v49 + 20)] = swift_getKeyPath();
      sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
      swift_storeEnumTagMultiPayload();
      sub_100048828(v5, v11, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
      swift_storeEnumTagMultiPayload();
      sub_100050B84();
      sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
      sub_1000C1AE8();
      v29 = type metadata accessor for TTRAnyListWidget.InteractiveLarge;
      v30 = v5;
    }
  }

  else
  {
    sub_100048828(&a1[v24], v22, type metadata accessor for TTRNewWidgetViewModel);
    *&v22[v19[7]] = swift_getKeyPath();
    sub_100004D04(&qword_1000EE6D8, &qword_1000C67B8);
    swift_storeEnumTagMultiPayload();
    v44 = swift_getKeyPath();
    v43 = swift_getKeyPath();
    v31 = swift_getKeyPath();
    v32 = swift_getKeyPath();
    v33 = &v22[v19[5]];
    *v33 = swift_getKeyPath();
    v33[8] = 0;
    v34 = v19[6];
    *&v22[v34] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v35 = &v22[v19[8]];
    v36 = v43;
    *v35 = v44;
    v35[8] = 0;
    v37 = &v22[v19[9]];
    *v37 = v36;
    v37[8] = 0;
    v38 = &v22[v19[10]];
    *v38 = v31;
    v38[8] = 0;
    v39 = &v22[v19[11]];
    *v39 = v32;
    *(v39 + 1) = 0;
    *(v39 + 2) = 0;
    *(v39 + 3) = 0;
    v39[32] = 0;
    v40 = v19[12];
    *&v22[v40] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    *&v22[v19[13]] = 0x4040800000000000;
    sub_100048828(v22, v15, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EE688, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
    sub_100048784(&qword_1000EE690, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
    sub_1000C1AE8();
    sub_1000082B4(v18, v11, &qword_1000EE680, &qword_1000C6738);
    swift_storeEnumTagMultiPayload();
    sub_100050B84();
    sub_100048784(&qword_1000EE698, type metadata accessor for TTRAnyListWidget.InteractiveLarge);
    sub_1000C1AE8();
    sub_1000084C0(v18, &qword_1000EE680, &qword_1000C6738);
    v29 = type metadata accessor for TTRAnyListWidget.InteractiveSmall;
    v30 = v22;
  }

  return sub_100048940(v30, v29);
}

uint64_t sub_10002DF14@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1738();
  result = sub_1000C1BD8();
  *a1 = 256;
  *(a1 + 8) = v2;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002DF70()
{
  v1 = v0;
  v2 = sub_1000C1778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = sub_1000C2338();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRAnyListWidget.SystemWidgetView(0);
  v16 = v0 + v15[8];
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v14);
  LOBYTE(v16) = sub_10002E38C();
  (*(v11 + 8))(v14, v10);
  if (v16)
  {
    return sub_1000C1F98();
  }

  v18 = v1 + v15[9];
  if (sub_1000451A0())
  {
    if (qword_1000EC980 != -1)
    {
      swift_once();
    }
  }

  else
  {
    v19 = v1 + v15[6];
    sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v9);
    sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons);
    sub_1000C2A78();
    sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons);
    LOBYTE(v19) = sub_1000C2608();
    v20 = *(v3 + 8);
    v20(v7, v2);
    v20(v9, v2);
    v21 = *(v1 + v15[5] + *(type metadata accessor for TTRNewWidgetViewModel(0) + 40));
    result = sub_1000C1FF8();
    if ((v19 & 1) == 0)
    {
      v22 = sub_1000C1FB8();

      return v22;
    }
  }

  return result;
}

uint64_t sub_10002E2B0()
{
  sub_100048A0C();
  sub_1000C1948();
  return v1;
}

uint64_t sub_10002E2EC(uint64_t *a1)
{
  v2 = *a1;
  sub_100048A0C();

  return sub_1000C1958();
}

uint64_t sub_10002E38C()
{
  v1 = v0;
  v2 = sub_1000C2338();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  (*(v3 + 16))(&v14 - v8, v1, v2);
  sub_1000C2318();
  sub_100048784(&qword_1000EE0B0, &type metadata accessor for WidgetRenderingMode);
  v10 = sub_1000C2608();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if ((v10 & 1) == 0)
  {
    sub_1000C2328();
    v12 = sub_1000C2608();
    v11(v7, v2);
    if ((v12 & 1) == 0)
    {
      sub_1000C2308();
      sub_1000C2608();
      v11(v7, v2);
    }
  }

  v11(v9, v2);
  return v10 & 1;
}

uint64_t sub_10002E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v29 = sub_100004D04(&qword_1000EE0D8, &qword_1000C5F00);
  v3 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v5 = &v27 - v4;
  v6 = sub_1000C1778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s10WidgetViewVMa_0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100004D04(&qword_1000EE0E0, &qword_1000C5F08);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v27 - v18;
  v20 = *(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 80));
  if (v20 == 2 || (v20 & 1) == 0)
  {
    v25 = a1 + *(type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0) + 20);
    sub_10002C764(&qword_1000EDDB0, &qword_1000C5B48, &type metadata accessor for WidgetFamily, v14);
    sub_100048828(a1, &v14[*(v11 + 20)], type metadata accessor for TTRNewWidgetViewModel);
    sub_100048828(v14, v5, _s10WidgetViewVMa_0);
    swift_storeEnumTagMultiPayload();
    v26 = sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0);
    v31 = v11;
    v32 = v26;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return sub_100048940(v14, _s10WidgetViewVMa_0);
  }

  else
  {
    v21 = *(type metadata accessor for TTRAnyListWidget.WidgetPlaceholderWrapper(0) + 20);
    v28 = v16;
    sub_10002C764(&qword_1000EDDB0, &qword_1000C5B48, &type metadata accessor for WidgetFamily, v14);
    sub_100048828(a1, &v14[*(v11 + 20)], type metadata accessor for TTRNewWidgetViewModel);
    sub_1000C1768();
    v22 = sub_100048784(&qword_1000EE0E8, _s10WidgetViewVMa_0);
    sub_1000C1F48();
    (*(v7 + 8))(v10, v6);
    sub_100048940(v14, _s10WidgetViewVMa_0);
    v23 = v28;
    (*(v28 + 16))(v5, v19, v15);
    swift_storeEnumTagMultiPayload();
    v31 = v11;
    v32 = v22;
    swift_getOpaqueTypeConformance2();
    sub_1000C1AE8();
    return (*(v23 + 8))(v19, v15);
  }
}

uint64_t sub_10002EA2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100004D04(&qword_1000EF418, &qword_1000C7530);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  *v10 = sub_1000C1A48();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100004D04(&qword_1000EF420, &qword_1000C7538);
  sub_10002EB7C(a1, &v10[*(v11 + 44)]);
  sub_1000082B4(v10, v8, &qword_1000EF418, &qword_1000C7530);
  sub_1000082B4(v8, a2, &qword_1000EF418, &qword_1000C7530);
  v12 = a2 + *(sub_100004D04(&qword_1000EF428, &qword_1000C7540) + 48);
  *v12 = 0x4020000000000000;
  *(v12 + 8) = 0;
  sub_1000084C0(v10, &qword_1000EF418, &qword_1000C7530);
  return sub_1000084C0(v8, &qword_1000EF418, &qword_1000C7530);
}

uint64_t sub_10002EB7C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for TTRNewWidgetViewModel(0);
  v13 = *(a1 + v12[12]);
  v14 = v12[15];
  v15 = (a1 + v12[14]);
  v16 = v15[1];
  v36 = *v15;
  v37 = v13;
  v35 = *(a1 + v14);
  KeyPath = swift_getKeyPath();
  v18 = a1[2];
  v33 = a1[3];
  v34 = v18;
  v19 = a1[4];
  v20 = swift_getKeyPath();
  v21 = swift_getKeyPath();
  sub_100048828(a1, v11, type metadata accessor for TTRNewWidgetViewModel);
  *&v11[v5[7]] = 3;
  v22 = &v11[v5[8]];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = &v11[v5[9]];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v5[10];
  *&v11[v24] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  sub_100048828(v11, v9, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v25 = v36;
  v26 = v37;
  *a2 = v37;
  *(a2 + 8) = v25;
  *(a2 + 16) = v16;
  *(a2 + 24) = v35;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v27 = v33;
  *(a2 + 64) = v34;
  *(a2 + 72) = v27;
  *(a2 + 80) = v19;
  *(a2 + 88) = v20;
  *(a2 + 96) = 0;
  *(a2 + 104) = v21;
  *(a2 + 112) = 0;
  v28 = sub_100004D04(&qword_1000EF430, &qword_1000C7548);
  sub_100048828(v9, a2 + *(v28 + 80), type metadata accessor for TTRAnyListWidget.TitleTextView);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v29 = v26;

  v30 = v29;
  sub_100048940(v11, type metadata accessor for TTRAnyListWidget.TitleTextView);
  sub_100048940(v9, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

uint64_t sub_10002EE54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = sub_1000C1A28();
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000EF400, &qword_1000C7518);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v45 = sub_100004D04(&qword_1000EF408, &unk_1000C7520);
  v15 = *(*(v45 - 8) + 64);
  v16 = __chkstk_darwin(v45);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v42 = &v42 - v20;
  __chkstk_darwin(v19);
  v46 = &v42 - v21;
  sub_1000C1B38();
  v22 = sub_100004D04(&qword_1000EF3F0, &qword_1000C7508);
  v23 = sub_100008478(&qword_1000EF410, &qword_1000EF3F0, &qword_1000C7508);
  sub_1000C1F28();
  (*(v6 + 8))(v9, v5);
  v24 = sub_100044BE0(a1);
  v26 = v25;
  v28 = v27;
  v51 = v22;
  v52 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  sub_1000C1EA8();
  sub_10000537C(v24, v26, v28 & 1);

  (*(v44 + 8))(v14, v29);
  v30 = a1;
  v31 = sub_100044D9C(a1);
  v33 = v32;
  LOBYTE(v14) = v34;
  v35 = v42;
  sub_1000C16E8();
  sub_10000537C(v31, v33, v14 & 1);

  sub_1000084C0(v18, &qword_1000EF408, &unk_1000C7520);
  v37 = *v30;
  v36 = v30[1];
  v53._countAndFlagsBits = 0xD000000000000047;
  v53._object = 0x80000001000CD410;
  v54._object = 0x80000001000CD460;
  v55._countAndFlagsBits = 0xD00000000000004CLL;
  v55._object = 0x80000001000CD490;
  v54._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0D68(v53, v54, v55);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000C3590;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_10002C68C();
  *(v38 + 32) = v37;
  *(v38 + 40) = v36;

  sub_1000C2648();

  v39 = v46;
  sub_1000C16D8();

  sub_1000084C0(v35, &qword_1000EF408, &unk_1000C7520);
  v40 = v47;
  sub_1000C1A18();
  sub_1000C16F8();
  (*(v48 + 8))(v40, v50);
  return sub_1000084C0(v39, &qword_1000EF408, &unk_1000C7520);
}

uint64_t sub_10002F398@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v50 = sub_1000C1A28();
  v48 = *(v50 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v50);
  v47 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000C1B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000EF510, &qword_1000C7630);
  v11 = *(v10 - 8);
  v43 = v10;
  v44 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - v13;
  v45 = sub_100004D04(&qword_1000EF518, &qword_1000C7638);
  v15 = *(*(v45 - 8) + 64);
  v16 = __chkstk_darwin(v45);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v42 = &v42 - v20;
  __chkstk_darwin(v19);
  v46 = &v42 - v21;
  sub_1000C1B38();
  v22 = sub_100004D04(&qword_1000EF4F8, &qword_1000C7618);
  v23 = sub_100008478(&qword_1000EF520, &qword_1000EF4F8, &qword_1000C7618);
  sub_1000C1F28();
  (*(v6 + 8))(v9, v5);
  v24 = sub_100044BE0(a1);
  v26 = v25;
  v28 = v27;
  v51 = v22;
  v52 = v23;
  swift_getOpaqueTypeConformance2();
  v29 = v43;
  sub_1000C1EA8();
  sub_10000537C(v24, v26, v28 & 1);

  (*(v44 + 8))(v14, v29);
  v30 = a1;
  v31 = sub_100044D9C(a1);
  v33 = v32;
  LOBYTE(v14) = v34;
  v35 = v42;
  sub_1000C16E8();
  sub_10000537C(v31, v33, v14 & 1);

  sub_1000084C0(v18, &qword_1000EF518, &qword_1000C7638);
  v37 = *v30;
  v36 = v30[1];
  v53._countAndFlagsBits = 0xD000000000000047;
  v53._object = 0x80000001000CD410;
  v54._object = 0x80000001000CD460;
  v55._countAndFlagsBits = 0xD00000000000004CLL;
  v55._object = 0x80000001000CD490;
  v54._countAndFlagsBits = 0xD000000000000022;
  sub_1000C0D68(v53, v54, v55);
  sub_100004D04(&qword_1000ED2C0, &unk_1000C5A20);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1000C3590;
  *(v38 + 56) = &type metadata for String;
  *(v38 + 64) = sub_10002C68C();
  *(v38 + 32) = v37;
  *(v38 + 40) = v36;

  sub_1000C2648();

  v39 = v46;
  sub_1000C16D8();

  sub_1000084C0(v35, &qword_1000EF518, &qword_1000C7638);
  v40 = v47;
  sub_1000C1A18();
  sub_1000C16F8();
  (*(v48 + 8))(v40, v50);
  return sub_1000084C0(v39, &qword_1000EF518, &qword_1000C7638);
}

uint64_t sub_10002F8DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000EF3F0, &qword_1000C7508);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v9 - v5;
  *v6 = sub_1000C1998();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100004D04(&qword_1000EF3F8, &qword_1000C7510);
  sub_10002EA2C(v1, &v6[*(v7 + 44)]);
  sub_10002EE54(v1, a1);
  return sub_1000084C0(v6, &qword_1000EF3F0, &qword_1000C7508);
}

uint64_t sub_10002F9B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100004D04(&qword_1000EF528, &qword_1000C7640);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  *v10 = sub_1000C1A48();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_100004D04(&qword_1000EF530, &qword_1000C7648);
  sub_10002FCC8(a1, &v10[*(v11 + 44)]);
  v12 = sub_1000C1BF8();
  sub_1000C15A8();
  v13 = &v10[*(v4 + 44)];
  *v13 = v12;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  *(v13 + 4) = v17;
  v13[40] = 0;
  v18 = type metadata accessor for TTRNewWidgetViewModel(0);
  v19 = *(a1 + v18[12]);
  v20 = (a1 + v18[14]);
  v21 = *v20;
  v22 = v20[1];
  v23 = *(a1 + v18[15]);
  KeyPath = swift_getKeyPath();

  v25 = v19;
  v26 = sub_1000C1BF8();
  sub_1000C15A8();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  LOBYTE(v51[0]) = 0;
  LOBYTE(v46) = 0;
  v44 = v8;
  sub_1000082B4(v10, v8, &qword_1000EF528, &qword_1000C7640);
  v35 = v8;
  v36 = v45;
  sub_1000082B4(v35, v45, &qword_1000EF528, &qword_1000C7640);
  v37 = sub_100004D04(&qword_1000EF538, &qword_1000C7650);
  v38 = v36 + *(v37 + 48);
  *v38 = 0;
  *(v38 + 8) = 1;
  v39 = (v36 + *(v37 + 64));
  *&v46 = v19;
  *(&v46 + 1) = v21;
  *&v47 = v22;
  BYTE8(v47) = v23;
  *&v48 = KeyPath;
  BYTE8(v48) = 0;
  LOBYTE(v49) = v26;
  *(&v49 + 1) = v28;
  *v50 = v30;
  *&v50[8] = v32;
  *&v50[16] = v34;
  v50[24] = 0;
  v40 = v49;
  v39[2] = v48;
  v39[3] = v40;
  v41 = v47;
  *v39 = v46;
  v39[1] = v41;
  v39[4] = *v50;
  *(v39 + 73) = *&v50[9];
  sub_1000082B4(&v46, v51, &qword_1000EF540, &qword_1000C7658);
  sub_1000084C0(v10, &qword_1000EF528, &qword_1000C7640);
  v51[0] = v19;
  v51[1] = v21;
  v51[2] = v22;
  v52 = v23;
  v53 = KeyPath;
  v54 = 0;
  v55 = v26;
  v56 = v28;
  v57 = v30;
  v58 = v32;
  v59 = v34;
  v60 = 0;
  sub_1000084C0(v51, &qword_1000EF540, &qword_1000C7658);
  return sub_1000084C0(v44, &qword_1000EF528, &qword_1000C7640);
}

uint64_t sub_10002FCC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  KeyPath = swift_getKeyPath();
  v16 = swift_getKeyPath();
  sub_100048828(a1, v11, type metadata accessor for TTRNewWidgetViewModel);
  *&v11[v5[7]] = 1;
  v17 = &v11[v5[8]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v11[v5[9]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = v5[10];
  *&v11[v19] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  sub_100048828(v11, v9, type metadata accessor for TTRAnyListWidget.TitleTextView);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v14;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
  v20 = sub_100004D04(&qword_1000EF548, &qword_1000C7660);
  sub_100048828(v9, a2 + *(v20 + 48), type metadata accessor for TTRAnyListWidget.TitleTextView);
  swift_bridgeObjectRetain_n();

  sub_100048940(v11, type metadata accessor for TTRAnyListWidget.TitleTextView);
  sub_100048940(v9, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

double sub_10002FEFC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000EF4F8, &qword_1000C7618);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v11 - v5;
  *v6 = sub_1000C1998();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = sub_100004D04(&qword_1000EF500, &qword_1000C7620);
  sub_10002F9B8(v1, &v6[*(v7 + 44)]);
  sub_10002F398(v1, a1);
  sub_1000084C0(v6, &qword_1000EF4F8, &qword_1000C7618);
  sub_1000C2108();
  sub_1000C1608();
  v8 = (a1 + *(sub_100004D04(&qword_1000EF508, &qword_1000C7628) + 36));
  v9 = v11[1];
  *v8 = v11[0];
  v8[1] = v9;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_100030030@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v43 = sub_1000C1938();
  v42 = *(v43 - 8);
  v3 = *(v42 + 64);
  __chkstk_darwin(v43);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v40 - v12;
  v48 = sub_100004D04(&qword_1000EF680, &qword_1000C7780);
  v45 = *(v48 - 8);
  v14 = *(v45 + 64);
  __chkstk_darwin(v48);
  v16 = &v40 - v15;
  v47 = sub_100004D04(&qword_1000EF688, &qword_1000C7788);
  v46 = *(v47 - 8);
  v17 = *(v46 + 64);
  __chkstk_darwin(v47);
  v44 = &v40 - v18;
  v19 = v1[1];
  *&v41 = *v1;
  v20 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v21 = v20[8];
  *(&v41 + 1) = v19;

  sub_10002C764(&qword_1000EDDB8, &qword_1000C8030, &type metadata accessor for RedactionReasons, v13);
  sub_100048784(&qword_1000EE0C0, &type metadata accessor for RedactionReasons);
  sub_1000C2A78();
  sub_100048784(&qword_1000EE0C8, &type metadata accessor for RedactionReasons);
  LOBYTE(v21) = sub_1000C2608();
  v22 = *(v7 + 8);
  v22(v11, v6);
  v22(v13, v6);
  if (v21)
  {
    v23 = *(v2 + v20[5]);
  }

  else
  {
    v23 = 1;
  }

  KeyPath = swift_getKeyPath();
  v25 = v2 + v20[6];
  v26 = *v25;
  if (v25[8] == 1)
  {
    v59 = *v25;
  }

  else
  {

    sub_1000C2958();
    v27 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v42 + 8))(v5, v43);
    v26 = v59;
  }

  v28 = swift_getKeyPath();
  v61 = 0;
  v60 = 0;
  v29 = v2 + v20[7];
  v30 = *v29;
  if (v29[8] == 1)
  {
    v58 = *v29;
  }

  else
  {

    sub_1000C2958();
    v31 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v42 + 8))(v5, v43);
    v30 = v58;
  }

  v32 = swift_getKeyPath();
  v50 = v41;
  LOBYTE(v51) = 0;
  *(&v51 + 1) = _swiftEmptyArrayStorage;
  *&v52 = KeyPath;
  *(&v52 + 1) = v23;
  LOBYTE(v53) = 0;
  *(&v53 + 1) = v28;
  *&v54 = v26;
  *(&v54 + 1) = v32;
  v55 = v30;
  v33 = sub_100004D04(&qword_1000EF690, &qword_1000C7790);
  v34 = sub_100065C80();
  sub_1000C1E18();
  v56[3] = v53;
  v56[4] = v54;
  v57 = v55;
  v56[0] = v50;
  v56[1] = v51;
  v56[2] = v52;
  sub_1000084C0(v56, &qword_1000EF690, &qword_1000C7790);
  *&v50 = v33;
  *(&v50 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = v44;
  v37 = v48;
  sub_1000C1EF8();
  (*(v45 + 8))(v16, v37);
  *&v50 = v37;
  *(&v50 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v38 = v47;
  sub_1000C1EB8();
  return (*(v46 + 8))(v36, v38);
}

uint64_t sub_100030780@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = sub_1000C17B8();
  v48 = *(v3 - 8);
  v49 = v3;
  v4 = *(v48 + 64);
  __chkstk_darwin(v3);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000C1938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_100004D04(&qword_1000EF620, &qword_1000C76E8);
  v11 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v50 = &v44 - v12;
  v14 = *(v1 + 8);
  v13 = *(v1 + 16);
  v58 = *(v1 + 24);
  v59 = *(v1 + 32);
  v15 = v59;

  v44 = v6;
  sub_1000082B4(&v58, v53, &qword_1000ED668, &qword_1000C76F0);
  if (v15 != 1)
  {
    sub_1000C2958();
    v16 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v58, &qword_1000ED668, &qword_1000C76F0);
    (*(v7 + 8))(v10, v6);
  }

  v45 = v14;
  v17 = sub_1000C1DA8();
  v19 = v18;
  v21 = v20;
  v47 = v13;

  v57 = *(v1 + 48);
  v22 = *(v1 + 40);
  v56 = v2[5];
  v23 = v57;

  if ((v23 & 1) == 0)
  {
    sub_1000C2958();
    v24 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_1000084C0(&v56, &qword_1000EE3C0, &qword_1000C6458);
    (*(v7 + 8))(v10, v44);
    v22 = v53[0];
  }

  v53[0] = v22;
  v25 = sub_1000C1D88();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_10000537C(v17, v19, v21 & 1);

  v53[0] = v25;
  v53[1] = v27;
  v54 = v29 & 1;
  v55 = v31;
  v32 = v50;
  sub_1000C1E88();
  sub_10000537C(v25, v27, v29 & 1);

  v33 = *v2;
  v34 = v46;
  sub_1000C17A8();
  v35 = (v32 + *(sub_100004D04(&qword_1000EF628, &qword_1000C76F8) + 36));
  v36 = v35 + *(sub_100004D04(&qword_1000EF630, &qword_1000C7700) + 28);
  sub_1000C1798();
  (*(v48 + 8))(v34, v49);
  *v35 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v38 = (v32 + *(sub_100004D04(&qword_1000EF638, &qword_1000C7768) + 36));
  v39 = v38 + *(sub_100004D04(&qword_1000EF640, &qword_1000C7770) + 28);
  sub_1000C17C8();
  *v38 = KeyPath;
  v40 = sub_1000C2128();
  v41 = (v32 + *(v51 + 36));
  v42 = v45;
  *v41 = v40;
  v41[1] = v42;
  v41[2] = v47;
  sub_100065A28();

  sub_1000C1F38();
  return sub_1000084C0(v32, &qword_1000EF620, &qword_1000C76E8);
}

uint64_t sub_100030CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 48);
  return sub_100030780(a1);
}

uint64_t sub_100030D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = sub_100004D04(&qword_1000EE6E0, &qword_1000C6848);
  v4 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v6 = &v47 - v5;
  v48 = sub_100004D04(&qword_1000EE6E8, &qword_1000C6850);
  v7 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v9 = &v47 - v8;
  v10 = sub_1000C1938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TTRAnyListWidget.ListBadge.Core(0);
  v15 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = *(a1 + 24);
  if (v56)
  {
    v47 = a2;
    v55 = *(a1 + 40);
    v18 = a1[4];
    v54 = v18;
    v19 = v55;

    if (v19)
    {
      v20 = 1;
      v21 = v18;
    }

    else
    {
      sub_1000C2958();
      v25 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v54, &qword_1000EE3C0, &qword_1000C6458);
      (*(v11 + 8))(v14, v10);
      v21 = v52;
      v20 = v56;
    }

    v53 = *a1;
    v26 = v53;
    v52 = *(a1 + 1);
    v27 = v52;
    *v6 = v21;
    *(v6 + 1) = v26;
    *(v6 + 1) = v27;
    v6[32] = v20;
    v28 = *(v50 + 32);
    *&v6[v28] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_1000082B4(&v54, v51, &qword_1000EE3C0, &qword_1000C6458);
    sub_1000082B4(&v53, v51, &qword_1000EE6F0, &qword_1000C6858);
    sub_1000082B4(&v52, v51, &qword_1000EE6F8, &qword_1000C6860);
    if (!v19)
    {
      sub_1000C2958();
      v34 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v54, &qword_1000EE3C0, &qword_1000C6458);
      (*(v11 + 8))(v14, v10);
      v18 = v51[0];
    }

    v35 = &v6[*(v49 + 36)];
    *v35 = v18;
    v36 = *(type metadata accessor for TTRAnyListWidget.ListBadge.GearCorner(0) + 20);
    *&v35[v36] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    LOBYTE(v36) = sub_1000C1BD8();
    v37 = &v35[*(sub_100004D04(&qword_1000EE700, &qword_1000C6868) + 36)];
    *v37 = v36;
    __asm { FMOV            V0.2D, #21.0 }

    *(v37 + 8) = _Q0;
    *(v37 + 3) = 0;
    *(v37 + 4) = 0;
    v37[40] = 0;
    v43 = sub_1000C2108();
    v45 = v44;
    v46 = &v35[*(sub_100004D04(&qword_1000EE708, &qword_1000C6870) + 36)];
    *v46 = v43;
    v46[1] = v45;
    sub_1000082B4(v6, v9, &qword_1000EE6E0, &qword_1000C6848);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
    sub_100050F34();
    sub_1000C1AE8();
    return sub_1000084C0(v6, &qword_1000EE6E0, &qword_1000C6848);
  }

  else
  {
    v55 = *(a1 + 40);
    v22 = a1[4];
    v54 = v22;
    v23 = v55;

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      sub_1000C2958();
      v29 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v54, &qword_1000EE3C0, &qword_1000C6458);
      (*(v11 + 8))(v14, v10);
      v22 = v52;
      v24 = v56;
    }

    v53 = *a1;
    v30 = v53;
    v52 = *(a1 + 1);
    v31 = v52;
    *v17 = v22;
    *(v17 + 1) = v30;
    *(v17 + 1) = v31;
    v17[32] = v24;
    v32 = *(v50 + 32);
    *&v17[v32] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_100048828(v17, v9, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
    swift_storeEnumTagMultiPayload();
    sub_1000082B4(&v53, v51, &qword_1000EE6F0, &qword_1000C6858);
    sub_1000082B4(&v52, v51, &qword_1000EE6F8, &qword_1000C6860);
    sub_100048784(&qword_1000EE710, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
    sub_100050F34();
    sub_1000C1AE8();
    return sub_100048940(v17, type metadata accessor for TTRAnyListWidget.ListBadge.Core);
  }
}

uint64_t sub_10003147C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v78 = a2;
  v3 = sub_1000C2028();
  v70 = *(v3 - 8);
  v4 = *(v70 + 64);
  __chkstk_darwin(v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_100004D04(&qword_1000EEDA8, &qword_1000C6E98);
  v7 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v9 = &v69 - v8;
  v79 = type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground(0);
  v10 = *(*(v79 - 8) + 64);
  __chkstk_darwin(v79);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100004D04(&qword_1000EEDB0, &qword_1000C6EA0);
  v13 = *(*(v75 - 8) + 64);
  __chkstk_darwin(v75);
  v77 = &v69 - v14;
  v71 = sub_100004D04(&qword_1000EEDB8, &qword_1000C6EA8);
  v15 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v72 = &v69 - v16;
  v76 = sub_100004D04(&qword_1000EEDC0, &qword_1000C6EB0);
  v17 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v73 = &v69 - v18;
  v19 = sub_100004D04(&qword_1000EEDC8, &qword_1000C6EB8);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v69 - v21;
  v23 = sub_100004D04(&qword_1000EEDD0, &qword_1000C6EC0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v27 = &v69 - v26;
  v28 = sub_100004D04(&qword_1000EEDD8, &qword_1000C6EC8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v69 - v31;
  if (*(a1 + 24))
  {
    v33 = *(a1 + 16);
    if (sub_100031F4C())
    {
      v34 = *(a1 + 32);
      *v27 = *a1;
      v27[8] = v34;
      v35 = *(type metadata accessor for TTRAnyListWidget.ListBadge.EmojiBackground(0) + 24);
      *&v27[v35] = swift_getKeyPath();
      sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
      swift_storeEnumTagMultiPayload();

      sub_1000C2358();
      v36 = sub_1000C2368();
      (*(*(v36 - 8) + 56))(v22, 0, 1, v36);
      v37 = &v27[*(v23 + 36)];
      sub_1000C2058();
      sub_1000084C0(v22, &qword_1000EEDC8, &qword_1000C6EB8);
      v38 = sub_1000C2108();
      v40 = v39;

      v41 = &v37[*(sub_100004D04(&qword_1000EEE08, &qword_1000C6ED0) + 36)];
      *v41 = v38;
      v41[1] = v40;
      sub_10001DA60(v27, v32, &qword_1000EEDD0, &qword_1000C6EC0);
      (*(v24 + 56))(v32, 0, 1, v23);
    }

    else
    {
      (*(v24 + 56))(v32, 1, 1, v23);
    }

    sub_1000082B4(v32, v72, &qword_1000EEDD8, &qword_1000C6EC8);
    swift_storeEnumTagMultiPayload();
    sub_10005C428();
    sub_10005C5B4();
    v65 = v73;
    sub_1000C1AE8();
    sub_1000082B4(v65, v77, &qword_1000EEDC0, &qword_1000C6EB0);
    swift_storeEnumTagMultiPayload();
    sub_10005C39C();
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
    sub_1000C1AE8();
    sub_1000084C0(v65, &qword_1000EEDC0, &qword_1000C6EB0);
    v62 = v32;
    v63 = &qword_1000EEDD8;
    v64 = &qword_1000C6EC8;
  }

  else
  {
    v42 = v70;
    v43 = *(a1 + 8);
    if (!v43)
    {
      v67 = *(a1 + 32);
      *v12 = *a1;
      v12[8] = v67;
      v68 = *(v79 + 24);
      *&v12[v68] = swift_getKeyPath();
      sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
      swift_storeEnumTagMultiPayload();
      sub_100048828(v12, v77, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
      swift_storeEnumTagMultiPayload();
      sub_10005C39C();
      sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);

      sub_1000C1AE8();
      return sub_100048940(v12, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
    }

    v44 = *(a1 + 32);
    *v9 = *a1;
    v9[8] = v44;
    v45 = *(v79 + 24);
    v69 = v30;
    *&v9[v45] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    v46 = v43;

    sub_1000C2008();
    (*(v42 + 104))(v6, enum case for Image.ResizingMode.stretch(_:), v3);
    v47 = sub_1000C2068();

    (*(v42 + 8))(v6, v3);
    sub_1000C2108();
    sub_1000C1608();
    v48 = v89;
    v49 = v90;
    v50 = v91;
    v51 = v92;
    v52 = v93;
    v53 = v94;
    v54 = sub_1000C1FA8();
    KeyPath = swift_getKeyPath();
    v86 = v49;
    v85 = v51;
    *&v80 = v47;
    *(&v80 + 1) = v48;
    LOBYTE(v81) = v49;
    *(&v81 + 1) = v50;
    LOBYTE(v82) = v51;
    *(&v82 + 1) = v52;
    *&v83 = v53;
    *(&v83 + 1) = KeyPath;
    v84 = v54;
    v56 = &v9[*(v74 + 36)];
    sub_100004D04(&qword_1000EEE30, &qword_1000C6EE0);
    sub_10005C69C();
    sub_1000C1E18();
    v87[2] = v82;
    v87[3] = v83;
    v88 = v84;
    v87[0] = v80;
    v87[1] = v81;
    sub_1000084C0(v87, &qword_1000EEE30, &qword_1000C6EE0);
    v57 = sub_1000C2108();
    v59 = v58;
    v60 = &v56[*(sub_100004D04(&qword_1000EEE28, &qword_1000C6ED8) + 36)];
    *v60 = v57;
    v60[1] = v59;
    sub_1000082B4(v9, v72, &qword_1000EEDA8, &qword_1000C6E98);
    swift_storeEnumTagMultiPayload();
    sub_10005C428();
    sub_10005C5B4();
    v61 = v73;
    sub_1000C1AE8();
    sub_1000082B4(v61, v77, &qword_1000EEDC0, &qword_1000C6EB0);
    swift_storeEnumTagMultiPayload();
    sub_10005C39C();
    sub_100048784(&qword_1000EEE18, type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground);
    sub_1000C1AE8();

    sub_1000084C0(v61, &qword_1000EEDC0, &qword_1000C6EB0);
    v62 = v9;
    v63 = &qword_1000EEDA8;
    v64 = &qword_1000C6E98;
  }

  return sub_1000084C0(v62, v63, v64);
}

UIImage *sub_100031F4C()
{
  v0 = sub_1000C2638();
  v1 = [objc_opt_self() systemFontOfSize:17.0];
  sub_100004D04(&qword_1000EEE50, &qword_1000C6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000C3590;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 40) = v1;
  v3 = NSFontAttributeName;
  v4 = v1;
  v5 = sub_1000A2150(inited);
  swift_setDeallocating();
  sub_1000084C0(inited + 32, &qword_1000EEE58, &qword_1000C6EF8);
  sub_1000453C8(v5);
  type metadata accessor for Key(0);
  sub_100048784(&qword_1000ECF70, type metadata accessor for Key);
  isa = sub_1000C2568().super.isa;

  [v0 sizeWithAttributes:isa];
  v8 = v7;
  v10 = v9;

  v16.width = v8;
  v16.height = v10;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  v11 = [objc_opt_self() clearColor];
  [v11 set];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v8;
  v17.size.height = v10;
  UIRectFill(v17);
  sub_1000453C8(v5);

  v12 = sub_1000C2568().super.isa;

  [v0 drawAtPoint:v12 withAttributes:{0.0, 0.0}];

  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (v13)
  {
    v14 = v13;
    v13 = sub_1000C2008();
  }

  else
  {
  }

  return v13;
}

uint64_t sub_1000321D0()
{
  v1 = sub_1000C2338();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[1])
  {
    v23.size.width = 34.0;
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.height = 34.0;
    CGRectInset(v23, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v6 = v19;
  v7 = *v0;

  v10 = *&v18[35];
  v11 = *&v18[27];
  sub_1000C2108();
  sub_1000C1608();
  *&v18[19] = v22;
  *&v18[11] = v21;
  *&v18[3] = v20;
  v13 = v10;
  v12 = v11;
  LOBYTE(v14) = v6;
  *(&v14 + 1) = v7;
  *v15 = 256;
  *&v15[2] = *v18;
  *&v15[18] = *&v18[8];
  *&v15[34] = *&v18[16];
  *&v15[48] = *(&v22 + 1);
  v8 = v0 + *(type metadata accessor for TTRAnyListWidget.ListBadge.IconBackground(0) + 24);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v5);
  sub_10002E38C();
  (*(v2 + 8))(v5, v1);
  sub_100004D04(&qword_1000EF5A8, &qword_1000C76A0);
  sub_100004D04(&qword_1000EF5B0, &qword_1000C76A8);
  sub_100064EC0();
  sub_100064F78();
  sub_1000C1E08();
  v16[4] = *&v15[16];
  v16[5] = *&v15[32];
  v17 = *&v15[48];
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = v14;
  v16[3] = *v15;
  return sub_1000084C0(v16, &qword_1000EF5A8, &qword_1000C76A0);
}

uint64_t sub_100032494@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 12);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  sub_100004D04(&qword_1000EF5A8, &qword_1000C76A0);
  sub_100064EC0();
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EF5B0, &qword_1000C76A8);
  *(a2 + *(result + 36)) = 0x3FBEB851EB851EB8;
  return result;
}

uint64_t sub_100032548@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v24 = sub_100004D04(&qword_1000EF550, &qword_1000C7668);
  v23 = *(v24 - 8);
  v2 = *(v23 + 64);
  __chkstk_darwin(v24);
  v4 = &v18 - v3;
  v26 = sub_100004D04(&qword_1000EF558, &qword_1000C7670);
  v5 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v25 = &v18 - v6;
  v7 = sub_1000C2338();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(type metadata accessor for TTRAnyListWidget.ListBadge.EmojiBackground(0) + 24);
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v11);
  sub_10002E38C();
  v12 = *(v8 + 8);
  v22 = v7;
  v21 = v8 + 8;
  v19 = v12;
  v12(v11, v7);
  if (v1[1])
  {
    v37.size.width = 34.0;
    v37.origin.x = 0.0;
    v37.origin.y = 0.0;
    v37.size.height = 34.0;
    CGRectInset(v37, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v18 = &v18;
  v13 = *v1;
  v28 = v34;
  v29 = v35;
  LOBYTE(v30) = v36;
  *(&v30 + 1) = v13;
  v31 = 256;
  __chkstk_darwin(v13);
  *(&v18 - 2) = v1;

  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100004D04(&qword_1000EF560, &qword_1000C7678);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60);
  sub_100064BEC();
  sub_1000C1E08();
  v32[0] = v28;
  v32[1] = v29;
  v32[2] = v30;
  v33 = v31;
  sub_1000084C0(v32, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000C2108();
  sub_1000C1608();
  v14 = v25;
  (*(v23 + 32))(v25, v4, v24);
  v15 = (v14 + *(v26 + 36));
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;
  v15[2] = v30;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v11);
  sub_10002E38C();
  v19(v11, v22);
  sub_100004D04(&qword_1000EF580, &qword_1000C7688);
  sub_100064CD0();
  sub_100064DF8();
  sub_1000C1E08();
  return sub_1000084C0(v14, &qword_1000EF558, &qword_1000C7670);
}

uint64_t sub_100032A58@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100004D04(&qword_1000EF598, &qword_1000C7690);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - v8;
  v10 = sub_1000C1F78();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1];
  v41 = *a1;
  v42 = v15;
  v43 = a1[2];
  v44 = *(a1 + 24);
  sub_100004D04(&qword_1000EF5A0, &qword_1000C7698);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000C44F0;
  v17 = enum case for Color.RGBColorSpace.sRGB(_:);
  v18 = *(v11 + 104);
  v18(v14, enum case for Color.RGBColorSpace.sRGB(_:), v10);
  *(v16 + 32) = sub_1000C1FE8();
  v18(v14, v17, v10);
  *(v16 + 40) = sub_1000C1FE8();
  sub_1000C20E8();
  sub_1000C2158();
  sub_1000C2168();
  sub_1000C1688();
  if (*(a2 + 8))
  {
    v45.size.width = 34.0;
    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.height = 34.0;
    CGRectInset(v45, -2.0, -2.0);
    sub_1000C1D48();
  }

  else
  {
    sub_1000C1D38();
  }

  v19 = v40;
  *(v36 + 7) = v36[3];
  *(&v36[1] + 7) = v36[4];
  *(&v36[2] + 7) = v37;
  v20 = *(v6 + 36);
  v21 = enum case for BlendMode.screen(_:);
  v22 = sub_1000C2138();
  v23 = *(*(v22 - 8) + 104);
  v34 = v38;
  v33 = v39;
  v23(&v9[v20], v21, v22);
  v24 = v33;
  *v9 = v34;
  *(v9 + 1) = v24;
  v9[32] = v19;
  v25 = v36[1];
  *(v9 + 33) = v36[0];
  *(v9 + 49) = v25;
  *(v9 + 4) = *(&v36[1] + 15);
  *(v9 + 40) = 256;
  v26 = sub_1000C2108();
  v28 = v27;
  v29 = a3 + *(sub_100004D04(&qword_1000EF560, &qword_1000C7678) + 36);
  sub_10001DA60(v9, v29, &qword_1000EF598, &qword_1000C7690);
  v30 = (v29 + *(sub_100004D04(&qword_1000EF578, &qword_1000C7680) + 36));
  *v30 = v26;
  v30[1] = v28;
  *(a3 + 48) = v44;
  v31 = v43;
  *(a3 + 16) = v42;
  *(a3 + 32) = v31;
  *a3 = v41;
  return sub_1000082B4(&v41, v35, &qword_1000EEEE8, &qword_1000C6F60);
}

uint64_t sub_100032E2C@<X0>(uint64_t a1@<X8>)
{
  sub_100004D04(&qword_1000EF558, &qword_1000C7670);
  sub_100064CD0();
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EF580, &qword_1000C7688);
  *(a1 + *(result + 36)) = 0x3FBEB851EB851EB8;
  return result;
}

__n128 sub_100032EB8@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000C1A08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v69.size.width = 34.0;
  v69.size.height = 34.0;
  CGRectInset(v69, -2.0, -2.0);
  sub_1000C1D48();
  *(&v44 + 1) = sub_1000C1F98();
  v45 = 256;
  v7 = enum case for RoundedCornerStyle.continuous(_:);
  v8 = *(v3 + 104);
  v8(v6, enum case for RoundedCornerStyle.continuous(_:), v2);
  sub_1000C1D08();
  v9 = sub_1000C1FA8();
  v46 = v62;
  v47 = v63;
  *&v48 = v64;
  *(&v48 + 1) = v9;
  v49 = 256;
  v8(v6, v7, v2);
  sub_1000C1CF8();
  v10 = sub_1000C1F98();
  v11 = sub_1000C2108();
  LOWORD(v60) = v49;
  v57 = v46;
  v58 = v47;
  v59 = v48;
  v50[0] = v46;
  v50[1] = v47;
  v50[2] = v48;
  *&v51 = v60;
  *(&v51 + 1) = v11;
  v52 = v12;
  LOWORD(v29[0]) = v45;
  v27 = v43[1];
  v28 = v44;
  v26 = v43[0];
  *(v29 + 8) = v46;
  *(&v29[4] + 1) = v12;
  *(&v29[3] + 8) = v51;
  *(&v29[2] + 8) = v48;
  *(&v29[1] + 8) = v47;
  v53[1] = v47;
  v53[2] = v48;
  v53[0] = v46;
  v54 = v60;
  v55 = v11;
  v56 = v12;
  sub_1000082B4(&v46, &v62, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000082B4(v43, &v62, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000082B4(v50, &v62, &qword_1000EEF20, &qword_1000C6F88);
  sub_1000084C0(v53, &qword_1000EEF20, &qword_1000C6F88);
  v13 = sub_1000C2108();
  v15 = v14;
  sub_1000084C0(v43, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000084C0(&v46, &qword_1000EEEE8, &qword_1000C6F60);
  v57 = v23;
  v58 = v24;
  *&v59 = v25;
  *(&v59 + 1) = v10;
  LOWORD(v60) = 256;
  *(&v60 + 1) = v13;
  v34 = v29[1];
  v35 = v29[2];
  v36 = v29[3];
  v37 = v29[4];
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29[0];
  v40 = v59;
  v41 = v60;
  v38 = v23;
  v39 = v24;
  v61 = v15;
  v42 = v15;
  v62 = v23;
  v63 = v24;
  v64 = v25;
  v65 = v10;
  v66 = 256;
  v67 = v13;
  v68 = v15;
  sub_1000082B4(&v57, v22, &qword_1000EEF20, &qword_1000C6F88);
  sub_1000084C0(&v62, &qword_1000EEF20, &qword_1000C6F88);
  v16 = v41;
  *(a1 + 160) = v40;
  *(a1 + 176) = v16;
  *(a1 + 192) = v42;
  v17 = v37;
  *(a1 + 96) = v36;
  *(a1 + 112) = v17;
  v18 = v39;
  *(a1 + 128) = v38;
  *(a1 + 144) = v18;
  v19 = v33;
  *(a1 + 32) = v32;
  *(a1 + 48) = v19;
  v20 = v35;
  *(a1 + 64) = v34;
  *(a1 + 80) = v20;
  result = v31;
  *a1 = v30;
  *(a1 + 16) = result;
  return result;
}

double sub_100033264@<D0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = sub_1000C2338();
  v38 = *(v39 - 8);
  v1 = *(v38 + 64);
  __chkstk_darwin(v39);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000C1A08();
  v34 = *(v35 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v34 - v8;
  v10 = sub_100004D04(&qword_1000EEEE0, &qword_1000C6F48);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v15 = sub_1000C2018();
  sub_1000C1C48();
  v16 = sub_1000C1C38();
  (*(*(v16 - 8) + 56))(v9, 1, 1, v16);
  v17 = sub_1000C1C68();
  sub_1000084C0(v9, &qword_1000ECC38, &qword_1000C3720);
  KeyPath = swift_getKeyPath();
  v19 = sub_1000C1FA8();
  v20 = swift_getKeyPath();
  *&v48 = v15;
  *(&v48 + 1) = KeyPath;
  *&v49 = v17;
  *(&v49 + 1) = v20;
  *&v50 = v19;
  sub_100004D04(&qword_1000ED790, &unk_1000C6F50);
  sub_10001DD1C();
  sub_1000C1E18();

  sub_1000C2108();
  sub_1000C1608();
  v21 = &v14[*(v11 + 44)];
  v22 = v46;
  *v21 = v45;
  *(v21 + 1) = v22;
  *(v21 + 2) = v47;
  (*(v34 + 104))(v5, enum case for RoundedCornerStyle.continuous(_:), v35);
  sub_1000C1CF8();
  *(&v43 + 1) = *v37;
  v44 = 256;
  v23 = *(type metadata accessor for TTRAnyListWidget.ListBadge.GearCorner(0) + 20);

  v24 = v36;
  sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v36);
  sub_10002E38C();
  (*(v38 + 8))(v24, v39);
  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100004D04(&qword_1000EEEF0, &qword_1000C6F68);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60);
  sub_10005CBE4();
  v25 = v40;
  sub_1000C1E08();
  v48 = v41;
  v49 = v42;
  v50 = v43;
  v51 = v44;
  sub_1000084C0(&v48, &qword_1000EEEE8, &qword_1000C6F60);
  v26 = sub_1000C2108();
  v28 = v27;
  v29 = v25 + *(sub_100004D04(&qword_1000EEF08, &qword_1000C6F70) + 36);
  sub_1000082B4(v14, v29, &qword_1000EEEE0, &qword_1000C6F48);
  v30 = (v29 + *(sub_100004D04(&qword_1000EEF10, &qword_1000C6F78) + 36));
  *v30 = v26;
  v30[1] = v28;
  sub_1000C2108();
  sub_1000C1608();
  sub_1000084C0(v14, &qword_1000EEEE0, &qword_1000C6F48);
  v31 = (v25 + *(sub_100004D04(&qword_1000EEF18, &qword_1000C6F80) + 36));
  v32 = v42;
  *v31 = v41;
  v31[1] = v32;
  result = *&v43;
  v31[2] = v43;
  return result;
}

uint64_t sub_10003384C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  sub_100004D04(&qword_1000EEEE8, &qword_1000C6F60);
  sub_100008478(&qword_1000EEEF8, &qword_1000EEEE8, &qword_1000C6F60);
  sub_1000C1E18();
  result = sub_100004D04(&qword_1000EEEF0, &qword_1000C6F68);
  *(a2 + *(result + 36)) = 0x3FD3333333333333;
  return result;
}

uint64_t sub_10003391C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v4 = *v1;
  v5[0] = v2;
  *(v5 + 9) = *(v1 + 25);
  return sub_100030D30(&v4, a1);
}

unint64_t sub_100033950@<X0>(uint64_t a1@<X8>)
{
  v25 = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
  v3 = *(v25 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v25);
  v5 = sub_100004D04(&qword_1000EF818, &qword_1000C7A20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v25 - v7);
  v9 = *v1;
  v10 = *v1 >> 62;
  if (v10)
  {
    if (v9 < 0)
    {
      v24 = *v1;
    }

    else
    {
      v24 = *v1 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_1000C2C38();
  }

  else
  {
    v11 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = sub_1000C2108();
  *v8 = result;
  v8[1] = v13;
  if (v11 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v26 = a1;
  v14 = *(sub_100004D04(&qword_1000EF820, &unk_1000C7A28) + 44);
  *&v27 = 0;
  *(&v27 + 1) = v11;
  swift_getKeyPath();
  sub_100048828(v1, &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  sub_10005BBD0(&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for TTRAnyListWidget.ListShareeBadgesView);
  sub_100004D04(&qword_1000EF828, &qword_1000C7A50);
  sub_100004D04(&qword_1000EF830, &qword_1000C7A58);
  sub_10006810C();
  sub_1000681EC();
  sub_1000C20D8();
  if (!v10)
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v26;
    if (result > 1)
    {
      v18 = v25;
      v19 = *(v1 + *(v25 + 24));
      goto LABEL_9;
    }

LABEL_11:
    sub_1000C2108();
    sub_1000C1608();
    sub_10001DA60(v8, v17, &qword_1000EF818, &qword_1000C7A20);
    result = sub_100004D04(&qword_1000EF878, &qword_1000C7A70);
    v22 = (v17 + *(result + 36));
    v23 = v28;
    *v22 = v27;
    v22[1] = v23;
    v22[2] = v29;
    return result;
  }

  v20 = sub_1000C2C38();
  v17 = v26;
  if (v20 < 2)
  {
    goto LABEL_11;
  }

  v18 = v25;
  v19 = *(v1 + *(v25 + 24));
  result = sub_1000C2C38();
LABEL_9:
  if (!__OFSUB__(result, 1))
  {
    v21 = v19 * (result - 1) + 20.0 + *(v1 + *(v18 + 28)) + *(v1 + *(v18 + 28));
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100033CB0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *result;
  v8 = *a2;
  if ((*a2 & 0xC000000000000001) != 0)
  {
    v13 = *result;
    v14 = *a2;
    v9 = sub_1000C2B48();
LABEL_5:
    v3 = v9;
    KeyPath = swift_getKeyPath();
    if (!(v8 >> 62))
    {
      result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result > 1)
      {
LABEL_7:
        result = type metadata accessor for TTRAnyListWidget.ListShareeBadgesView(0);
        v10 = *(a2 + *(result + 24));
        v11 = v7;
        v12 = *(a2 + *(result + 28)) * -0.5 - v10 + v10 * v7;
LABEL_12:
        *a3 = v3;
        *(a3 + 8) = KeyPath;
        *(a3 + 16) = 0;
        *(a3 + 24) = v12;
        *(a3 + 32) = 0;
        *(a3 + 40) = v11;
        return result;
      }

LABEL_11:
      v11 = v7;
      v12 = 0.0;
      goto LABEL_12;
    }

LABEL_10:
    result = sub_1000C2C38();
    if (result > 1)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v7 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v8 + 8 * v7 + 32);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_100033DBC@<D0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v57) = a3;
  v58 = a4;
  v6 = sub_1000C1938();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004D04(&qword_1000EEDC8, &qword_1000C6EB8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v52 - v12;
  v14 = sub_100004D04(&qword_1000EF890, &qword_1000C7AD8);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v52 - v17;
  v19 = a1;
  sub_1000C2008();
  sub_1000C2358();
  v20 = sub_1000C2368();
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);
  sub_1000C2058();

  sub_1000084C0(v13, &qword_1000EEDC8, &qword_1000C6EB8);
  sub_1000C2108();
  sub_1000C1608();
  v21 = &v18[*(sub_100004D04(&qword_1000EF898, &qword_1000C7AE0) + 36)];
  v22 = v91;
  *v21 = v90;
  *(v21 + 1) = v22;
  *(v21 + 2) = v92;
  v23 = sub_1000C1FA8();
  KeyPath = swift_getKeyPath();
  v25 = &v18[*(v15 + 44)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = sub_1000C1FA8();
  sub_1000C15D8();
  v27 = v93;
  v28 = v94;
  v29 = v95;
  v30 = v96;
  v31 = v97;
  v32 = sub_1000C2108();
  v34 = v33;
  if (v57)
  {
    v89 = a2;
  }

  else
  {

    sub_1000C2958();
    v54 = v32;
    v35 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(a2, 0);
    v52 = v30;
    v53 = v34;
    v36 = *(v55 + 8);
    v57 = v26;
    v37 = v56;
    v36(v9, v56);

    sub_1000C2958();
    v38 = sub_1000C1BC8();
    sub_1000C1548();

    v32 = v54;
    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(a2, 0);
    v39 = v37;
    v26 = v57;
    v36(v9, v39);
    v30 = v52;
    v34 = v53;
  }

  sub_1000C2108();
  sub_1000C1608();
  *&v68 = v27;
  *(&v68 + 1) = v28;
  *&v69 = v29;
  *(&v69 + 1) = v30;
  *&v70 = v31;
  *(&v70 + 1) = v26;
  LOWORD(v71) = 256;
  *(&v71 + 1) = v32;
  *&v72 = v34;
  v40 = sub_1000C2108();
  v42 = v41;
  v64 = v72;
  v65 = v73;
  v66 = v74;
  v60 = v68;
  v61 = v69;
  v62 = v70;
  v63 = v71;
  v78 = v70;
  v79 = v71;
  v67 = v75;
  v76 = v68;
  v77 = v69;
  v81 = v73;
  v82 = v74;
  v80 = v72;
  *&v83 = v75;
  *(&v83 + 1) = v40;
  v84 = v41;
  v43 = v58;
  sub_1000082B4(v18, v58, &qword_1000EF890, &qword_1000C7AD8);
  v44 = v43 + *(sub_100004D04(&qword_1000EF8A0, &qword_1000C7AE8) + 36);
  v45 = v83;
  *(v44 + 96) = v82;
  *(v44 + 112) = v45;
  *(v44 + 128) = v84;
  v46 = v79;
  *(v44 + 32) = v78;
  *(v44 + 48) = v46;
  v47 = v81;
  *(v44 + 64) = v80;
  *(v44 + 80) = v47;
  v48 = v77;
  *v44 = v76;
  *(v44 + 16) = v48;
  v85[4] = v64;
  v85[5] = v65;
  v85[6] = v66;
  v85[0] = v60;
  v85[1] = v61;
  v85[2] = v62;
  v85[3] = v63;
  v86 = v67;
  v87 = v40;
  v88 = v42;
  sub_1000082B4(&v68, v59, &qword_1000EF8A8, &qword_1000C7AF0);
  sub_1000082B4(&v76, v59, &qword_1000EF8B0, &qword_1000C7AF8);
  sub_1000084C0(v85, &qword_1000EF8B0, &qword_1000C7AF8);
  sub_1000C1F98();
  v49 = sub_1000C1FB8();

  sub_1000084C0(&v68, &qword_1000EF8A8, &qword_1000C7AF0);
  sub_1000084C0(v18, &qword_1000EF890, &qword_1000C7AD8);
  v50 = v43 + *(sub_100004D04(&qword_1000EF8B8, &qword_1000C7B00) + 36);
  *v50 = v49;
  result = 3.0;
  *(v50 + 8) = xmmword_1000C5A30;
  *(v50 + 24) = 0x3FF0000000000000;
  return result;
}

__n128 sub_100034460@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C1938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1000C2958();
    v11 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
    a1 = v17;
  }

  sub_1000C0F78();
  sub_1000C2108();
  sub_1000C1608();
  *&v24[3] = *&v24[27];
  *&v24[11] = *&v24[35];
  *&v24[19] = *&v24[43];
  sub_1000C2108();
  sub_1000C1788();
  *a3 = a1;
  *(a3 + 8) = 256;
  *(a3 + 10) = *v24;
  v12 = *&v24[16];
  *(a3 + 26) = *&v24[8];
  *(a3 + 42) = v12;
  *(a3 + 56) = *&v24[23];
  v13 = v22;
  *(a3 + 128) = v21;
  *(a3 + 144) = v13;
  *(a3 + 160) = v23;
  v14 = v18;
  *(a3 + 64) = v17;
  *(a3 + 80) = v14;
  result = v20;
  *(a3 + 96) = v19;
  *(a3 + 112) = result;
  return result;
}

__n128 sub_1000346C0@<Q0>(uint64_t a1@<X8>)
{
  v25 = v1[2];
  v26 = *(v1 + 24);
  v23 = v1[4];
  v24 = *(v1 + 40);
  v3 = swift_allocObject();
  v4 = *(v1 + 1);
  v3[1] = *v1;
  v3[2] = v4;
  *(v3 + 41) = *(v1 + 25);
  sub_1000082B4(&v25, v16, &qword_1000EE3B8, &qword_1000C6450);
  sub_1000082B4(&v23, v16, &qword_1000EE3C0, &qword_1000C6458);
  sub_1000C2108();
  sub_1000C1608();
  v5 = v17;
  v6 = v18;
  v7 = v19;
  v8 = v20;
  v9 = v21;
  v10 = v22;
  sub_1000C2108();
  sub_1000C1788();
  v11 = *v1;
  v12 = sub_1000C1BD8();
  *a1 = sub_10004BD58;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  v13 = v16[5];
  *(a1 + 128) = v16[4];
  *(a1 + 144) = v13;
  *(a1 + 160) = v16[6];
  v14 = v16[1];
  *(a1 + 64) = v16[0];
  *(a1 + 80) = v14;
  result = v16[3];
  *(a1 + 96) = v16[2];
  *(a1 + 112) = result;
  *(a1 + 176) = v12;
  *(a1 + 184) = 0;
  *(a1 + 192) = v11;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

uint64_t sub_100034878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1000C1938();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 8))
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    result = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
  }

  else
  {
    __chkstk_darwin(v9);
    *(&v23 - 2) = a1;
    sub_1000C1D58();
    v35 = *(a2 + 40);
    v14 = *(a2 + 32);
    v34 = v14;
    if (v35 == 1)
    {
      v27 = v14;
    }

    else
    {

      sub_1000C2958();
      v22 = sub_1000C1BC8();
      sub_1000C1548();

      sub_1000C1928();
      swift_getAtKeyPath();
      sub_1000084C0(&v34, &qword_1000EE3C0, &qword_1000C6458);
      (*(v7 + 8))(v11, v6);
      v14 = v27;
    }

    sub_1000C15D8();
    v25 = v29;
    v26 = v28;
    v12 = v30;
    v23 = v32;
    v24 = v31;
    v13 = v33;
    result = sub_1000C2108();
    v21 = v23;
    v20 = v24;
    v19 = v25;
    v18 = v26;
    v17 = 256;
  }

  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 32) = v12;
  *(a3 + 40) = v20;
  *(a3 + 56) = v21;
  *(a3 + 72) = v13;
  *(a3 + 80) = v14;
  *(a3 + 88) = v17;
  *(a3 + 96) = result;
  *(a3 + 104) = v16;
  return result;
}

void sub_100034ADC()
{
  v0.x = 0.0;
  v0.y = 0.0;
  sub_1000C1D18(v0);
  sub_1000C1618();
  v1.y = 0.0;
  sub_1000C1D28(v1);
}

double sub_100034B2C@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[9] = *(v1 + 25);
  *&result = sub_1000346C0(a1).n128_u64[0];
  return result;
}

uint64_t sub_100034B6C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v49 - v5;
  v54 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v7 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v9 = &v49 - v8;
  v53 = sub_100004D04(&qword_1000EEB58, &qword_1000C6C40);
  v10 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v12 = &v49 - v11;
  v56 = sub_100004D04(&qword_1000EEB60, &qword_1000C6C48);
  v55 = *(v56 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v56);
  v15 = &v49 - v14;
  v59 = sub_100004D04(&qword_1000EEB68, &qword_1000C6C50);
  v16 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v18 = &v49 - v17;
  v19 = sub_100004D04(&qword_1000EEB70, &qword_1000C6C58);
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  __chkstk_darwin(v19);
  v58 = &v49 - v21;
  v57 = sub_100004D04(&qword_1000EEB78, &qword_1000C6C60);
  v22 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v60 = &v49 - v23;
  *v12 = sub_1000C1A48();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v24 = sub_100004D04(&qword_1000EEB80, &qword_1000C6C68);
  sub_100035274(v1, &v12[*(v24 + 44)]);
  v25 = enum case for DynamicTypeSize.xxLarge(_:);
  v26 = sub_1000C16C8();
  (*(*(v26 - 8) + 104))(v9, v25, v26);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    v50 = v1;
    sub_100008478(&qword_1000EEB88, &qword_1000EEB58, &qword_1000C6C40);
    v51 = v19;
    v52 = a1;
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
    sub_1000C1EE8();
    sub_1000084C0(v9, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v12, &qword_1000EEB58, &qword_1000C6C40);
    sub_1000C2108();
    sub_1000C1788();
    (*(v55 + 32))(v18, v15, v56);
    v28 = &v18[*(v59 + 36)];
    v29 = v67;
    *(v28 + 4) = v66;
    *(v28 + 5) = v29;
    *(v28 + 6) = v68;
    v30 = v63;
    *v28 = v62;
    *(v28 + 1) = v30;
    v31 = v65;
    *(v28 + 2) = v64;
    *(v28 + 3) = v31;
    v32 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
    v33 = sub_1000C0938();
    v34 = *(v33 - 8);
    (*(v34 + 16))(v6, v50 + v32, v33);
    (*(v34 + 56))(v6, 0, 1, v33);
    sub_10005AD18();
    v35 = v58;
    sub_1000C1E38();
    sub_1000084C0(v6, &qword_1000ECCE0, &qword_1000C4EF0);
    sub_1000084C0(v18, &qword_1000EEB68, &qword_1000C6C50);
    KeyPath = swift_getKeyPath();
    v37 = sub_100036D38();
    v38 = v60;
    (*(v61 + 32))(v60, v35, v51);
    v39 = (v38 + *(v57 + 36));
    *v39 = KeyPath;
    v39[1] = v37;
    v40 = sub_1000370D4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    LOBYTE(KeyPath) = sub_1000C1BD8();
    v47 = v52;
    sub_10001DA60(v38, v52, &qword_1000EEB78, &qword_1000C6C60);
    result = sub_100004D04(&qword_1000EEB98, &qword_1000C6C98);
    v48 = v47 + *(result + 36);
    *v48 = KeyPath;
    *(v48 + 8) = v40;
    *(v48 + 16) = v42;
    *(v48 + 24) = v44;
    *(v48 + 32) = v46;
    *(v48 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100035274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_100004D04(&qword_1000EEBA8, &qword_1000C6CA0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = (&v33 - v7);
  v9 = sub_1000C0938();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100004D04(&qword_1000EEBB0, &qword_1000C6CA8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v34 = sub_100004D04(&qword_1000EEBB8, &qword_1000C6CB0);
  v19 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  v25 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v10 + 16))(v13, a1 + *(v25 + 72), v9);
  v37 = a1;
  sub_100004D04(&qword_1000EEBC0, &qword_1000C6CB8);
  sub_10005AF24();
  sub_1000C1CE8();
  v38 = sub_100024038();
  v39 = v26;
  sub_100008478(&qword_1000EEBE0, &qword_1000EEBB0, &qword_1000C6CA8);
  sub_100012814();
  sub_1000C1F08();

  (*(v15 + 8))(v18, v14);
  sub_1000C19E8();
  sub_1000C1718();

  sub_1000084C0(v21, &qword_1000EEBB8, &qword_1000C6CB0);
  *v8 = sub_1000C2108();
  v8[1] = v27;
  v28 = v8 + *(sub_100004D04(&qword_1000EEBE8, &qword_1000C6CC8) + 44);
  sub_1000361D4(a1);
  sub_1000082B4(v24, v21, &qword_1000EEBB8, &qword_1000C6CB0);
  v29 = v35;
  sub_1000082B4(v8, v35, &qword_1000EEBA8, &qword_1000C6CA0);
  v30 = v36;
  sub_1000082B4(v21, v36, &qword_1000EEBB8, &qword_1000C6CB0);
  v31 = sub_100004D04(&qword_1000EEBF0, &qword_1000C6CD0);
  sub_1000082B4(v29, v30 + *(v31 + 48), &qword_1000EEBA8, &qword_1000C6CA0);
  sub_1000084C0(v8, &qword_1000EEBA8, &qword_1000C6CA0);
  sub_1000084C0(v24, &qword_1000EEBB8, &qword_1000C6CB0);
  sub_1000084C0(v29, &qword_1000EEBA8, &qword_1000C6CA0);
  return sub_1000084C0(v21, &qword_1000EEBB8, &qword_1000C6CB0);
}

uint64_t sub_1000356E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1000C1998();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = sub_100004D04(&qword_1000EEC98, &qword_1000C6D88);
  sub_100035794(a1, a2 + *(v4 + 44));
  v5 = sub_100035D6C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  LOBYTE(a1) = sub_1000C1BD8();
  result = sub_100004D04(&qword_1000EEBC0, &qword_1000C6CB8);
  v13 = a2 + *(result + 36);
  *v13 = a1;
  *(v13 + 8) = v5;
  *(v13 + 16) = v7;
  *(v13 + 24) = v9;
  *(v13 + 32) = v11;
  *(v13 + 40) = 0;
  return result;
}

uint64_t sub_100035794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for TTRAnyListWidget.TitleTextView(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  sub_100048828(a1, &v29 - v9, type metadata accessor for TTRNewWidgetViewModel);
  *&v10[v4[7]] = 1;
  v11 = &v10[v4[8]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = &v10[v4[9]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = v4[10];
  *&v10[v13] = swift_getKeyPath();
  sub_100004D04(&qword_1000EDDB8, &qword_1000C8030);
  swift_storeEnumTagMultiPayload();
  v15 = a1[2];
  v14 = a1[3];
  v16 = a1[4];
  KeyPath = swift_getKeyPath();
  v18 = swift_getKeyPath();
  v19 = swift_getKeyPath();

  v20 = sub_100035A54();
  LOBYTE(v37[0]) = 0;
  LOBYTE(v32) = 0;
  v30 = v7;
  sub_100048828(v10, v7, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v21 = v7;
  v22 = v31;
  sub_100048828(v21, v31, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v23 = sub_100004D04(&qword_1000EECA0, &qword_1000C6DE8);
  v24 = v22 + *(v23 + 48);
  *v24 = 0;
  *(v24 + 8) = 1;
  v25 = v22 + *(v23 + 64);
  *&v32 = v15;
  *(&v32 + 1) = v14;
  *&v33 = v16;
  *(&v33 + 1) = KeyPath;
  LOBYTE(v34) = 0;
  *(&v34 + 1) = v18;
  LOBYTE(v35) = 0;
  *(&v35 + 1) = v19;
  v36 = v20;
  v26 = v35;
  *(v25 + 32) = v34;
  *(v25 + 48) = v26;
  *(v25 + 64) = v20;
  v27 = v33;
  *v25 = v32;
  *(v25 + 16) = v27;
  sub_1000082B4(&v32, v37, &qword_1000EECA8, &qword_1000C6DF0);
  sub_100048940(v10, type metadata accessor for TTRAnyListWidget.TitleTextView);
  v37[0] = v15;
  v37[1] = v14;
  v37[2] = v16;
  v37[3] = KeyPath;
  v38 = 0;
  v39 = v18;
  v40 = 0;
  v41 = v19;
  v42 = v20;
  sub_1000084C0(v37, &qword_1000EECA8, &qword_1000C6DF0);
  return sub_100048940(v30, type metadata accessor for TTRAnyListWidget.TitleTextView);
}

uint64_t sub_100035A54()
{
  v0 = sub_1000C1C98();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000C1CD8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_10003741C())
  {

    return sub_100036D38();
  }

  else
  {
    (*(v10 + 104))(v13, enum case for Font.TextStyle.title2(_:), v9);
    v15 = enum case for Font.Design.rounded(_:);
    v16 = sub_1000C1C38();
    v17 = *(v16 - 8);
    (*(v17 + 104))(v8, v15, v16);
    (*(v17 + 56))(v8, 0, 1, v16);
    sub_1000C1C78();
    sub_1000084C0(v8, &qword_1000ECC38, &qword_1000C3720);
    (*(v10 + 8))(v13, v9);
    sub_1000C1C48();
    sub_1000C1C88();

    (*(v1 + 104))(v4, enum case for Font.Leading.tight(_:), v0);
    v18 = sub_1000C1CB8();

    (*(v1 + 8))(v4, v0);
    return v18;
  }
}

double sub_100035D6C()
{
  v38 = sub_1000C2338();
  v1 = *(v38 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v38);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000C1938();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v10 = v0 + v9[5];
  v11 = *v10;
  v12 = *(v10 + 8);
  if (v12 != 1)
  {
    v13 = *v10;

    sub_1000C2958();
    v14 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v11, 0);
    (*(v5 + 8))(v8, v4);
    if (v40 == 1)
    {
      goto LABEL_10;
    }

LABEL_5:
    v15 = v0 + v9[11];
    v16 = *(v15 + 16);
    if (*(v15 + 32) == 1)
    {
      v17 = *(v15 + 16);
      if (*&v16 != 0.0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v35 = v5;
      v36 = v0;
      v29 = *v15;
      v28 = *(v15 + 8);
      v33 = *(v15 + 24);
      v34 = v28;

      sub_1000C2958();
      v30 = sub_1000C1BC8();
      v37 = v1;
      v31 = v30;
      sub_1000C1548();

      v1 = v37;
      sub_1000C1928();
      swift_getAtKeyPath();
      v5 = v35;
      v0 = v36;
      sub_100054C08(v29, v34, v16, v33, 0);
      (*(v5 + 8))(v8, v4);
      if (v41 != 0.0)
      {
LABEL_7:
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_10:

        sub_1000C2958();
        v18 = sub_1000C1BC8();
        sub_1000C1548();

        sub_1000C1928();
        swift_getAtKeyPath();
        sub_100048A00(v11, 0);
        (*(v5 + 8))(v8, v4);
        if (v40 != 1)
        {
          return -5.0;
        }

        goto LABEL_11;
      }
    }

    return 0.0;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  if ((v11 & 1) == 0)
  {
    return -5.0;
  }

LABEL_11:
  v19 = v1;
  v20 = v0;
  v21 = v0 + v9[12];
  if (sub_1000451A0())
  {
    v22 = v20 + v9[6];
    v23 = v39;
    sub_10002C764(&qword_1000EDDC0, &qword_1000C5B60, &type metadata accessor for WidgetRenderingMode, v39);
    v24 = sub_10002E38C();
    (*(v19 + 8))(v23, v38);
    if ((v24 & 1) == 0)
    {
      return -5.0;
    }
  }

  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  result = 0.0;
  if (!v26)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1000361D4(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EEBF8, &qword_1000C6CD8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v29 - v4);
  v6 = sub_100004D04(&qword_1000EEC00, &qword_1000C6CE0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - v8;
  v10 = sub_100004D04(&qword_1000EEC08, &qword_1000C6CE8);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  v14 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*(a1 + *(v14 + 76)) + 16))
  {
    *v5 = 3;
    v15 = v5 + *(v2 + 44);
    sub_100036658(a1);
    sub_1000082B4(v5, v9, &qword_1000EEBF8, &qword_1000C6CD8);
    swift_storeEnumTagMultiPayload();
    sub_10005AFDC();
    sub_10005B0E4();
    sub_1000C1AE8();
    v16 = v5;
    v17 = &qword_1000EEBF8;
    v18 = &qword_1000C6CD8;
  }

  else
  {
    v19 = *(v14 + 28);
    v20 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
    v21 = v20[5];
    v22 = sub_1000C0E58();
    (*(*(v22 - 8) + 16))(&v13[v21], a1 + v19, v22);
    *v13 = 0;
    v23 = &v13[v20[6]];
    *v23 = swift_getKeyPath();
    v23[8] = 0;
    v24 = v20[7];
    *&v13[v24] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v26 = sub_100036508();
    v27 = &v13[*(v10 + 36)];
    *v27 = KeyPath;
    v27[1] = v26;
    sub_1000082B4(v13, v9, &qword_1000EEC08, &qword_1000C6CE8);
    swift_storeEnumTagMultiPayload();
    sub_10005AFDC();
    sub_10005B0E4();
    sub_1000C1AE8();
    v16 = v13;
    v17 = &qword_1000EEC08;
    v18 = &qword_1000C6CE8;
  }

  return sub_1000084C0(v16, v17, v18);
}

uint64_t sub_100036508()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 32));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_1000C2958();
    v9 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_100036658(uint64_t a1)
{
  v2 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 76));
  if (*(v5 + 16) >= 3uLL)
  {
    v6 = 3;
  }

  else
  {
    v6 = *(v5 + 16);
  }

  v7 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
  sub_10005B2F4(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, (2 * v6) | 1);
  v13[1] = v8;
  swift_getKeyPath();
  sub_100048828(a1, v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRAnyListWidget.InteractiveSmall);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_10005BBD0(v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTRAnyListWidget.InteractiveSmall);
  *(v10 + ((v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10005BAE0;
  *(v11 + 24) = v10;
  sub_100004D04(&qword_1000EEC70, &qword_1000C6D68);
  sub_100004D04(&qword_1000EEC60, &qword_1000C6D08);
  sub_100008478(&qword_1000EEC78, &qword_1000EEC70, &qword_1000C6D68);
  sub_100008478(&qword_1000EEC58, &qword_1000EEC60, &qword_1000C6D08);
  return sub_1000C20D8();
}

uint64_t sub_10003690C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  if (*(a1 + v4[11]) == 1 && *(a1 + v4[10]) == 1)
  {
    v5 = a1 + v4[7];
    v10 = sub_1000C08C8();
    v11 = v6;
    v12._countAndFlagsBits = 45;
    v12._object = 0xE100000000000000;
    sub_1000C26D8(v12);
    v13._countAndFlagsBits = 1702195828;
    v13._object = 0xE400000000000000;
    sub_1000C26D8(v13);
    result = v10;
    v8 = v11;
  }

  else
  {
    v9 = a1 + v4[7];
    result = sub_1000C08C8();
  }

  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t sub_1000369AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a1;
  v40 = a5;
  v8 = type metadata accessor for TTRNewWidgetViewModel.Reminder(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v39 - v18;
  __chkstk_darwin(v20);
  v22 = &v39 - v21;
  sub_100048828(a2, v11, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v23 = *(*(a3 + *(type metadata accessor for TTRNewWidgetViewModel(0) + 76)) + 16);
  if (v23 == 2)
  {
    v24 = 2;
  }

  else
  {
    v24 = 1;
  }

  if (v23 == 1)
  {
    v25 = 5;
  }

  else
  {
    v25 = v24;
  }

  v26 = &v19[v13[11]];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = &v19[v13[12]];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = &v19[v13[13]];
  *v28 = swift_getKeyPath();
  v28[8] = 0;
  sub_10005BBD0(v11, v19, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  *&v19[v13[7]] = v25;
  v29 = &v19[v13[8]];
  *v29 = 0;
  v29[8] = 1;
  v19[v13[9]] = 1;
  v30 = &v19[v13[10]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v30[16] = 1;
  result = sub_10005BBD0(v19, v22, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  if (__OFSUB__(a4, 1))
  {
    __break(1u);
  }

  else
  {
    if (a4 - 1 <= v39)
    {
      v32 = 0;
      KeyPath = 0;
      v35 = 0;
      v36 = 2;
    }

    else
    {
      v32 = *(a3 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 52));
      v33 = sub_1000C0F78();
      KeyPath = swift_getKeyPath();
      v35 = swift_getKeyPath();
      v36 = v33 & 1;
    }

    sub_100048828(v22, v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v37 = v40;
    sub_100048828(v16, v40, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    v38 = v37 + *(sub_100004D04(&qword_1000EEC88, &qword_1000C6D78) + 48);
    sub_10005BC38(v32, v36, KeyPath, 0);
    sub_10005BC88(v32, v36, KeyPath, 0);
    *v38 = v32;
    *(v38 + 8) = v36;
    *(v38 + 16) = KeyPath;
    *(v38 + 24) = 0;
    *(v38 + 32) = v35;
    *(v38 + 40) = 0;
    sub_100048940(v22, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
    sub_10005BC88(v32, v36, KeyPath, 0);
    return sub_100048940(v16, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  }

  return result;
}

uint64_t sub_100036D38()
{
  v1 = sub_100004D04(&qword_1000ECC38, &qword_1000C3720);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v25 - v3;
  v5 = sub_1000C1CD8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000C1938();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 20);
  v16 = *v15;
  if (*(v15 + 8) == 1)
  {
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1000C2958();
    v25 = v10;
    v17 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v16, 0);
    (*(v11 + 8))(v14, v25);
    if (v26)
    {
      goto LABEL_7;
    }
  }

  v18 = sub_100037290();
  if (v19 == 0.0)
  {
    (*(v6 + 104))(v9, enum case for Font.TextStyle.headline(_:), v5, v18);
    v20 = enum case for Font.Design.rounded(_:);
    v21 = sub_1000C1C38();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v4, v20, v21);
    (*(v22 + 56))(v4, 0, 1, v21);
    v23 = sub_1000C1C78();
    sub_1000084C0(v4, &qword_1000ECC38, &qword_1000C3720);
    (*(v6 + 8))(v9, v5);
    return v23;
  }

LABEL_7:
  if (qword_1000EC908 != -1)
  {
    swift_once();
  }

  v23 = qword_1000EDD18;

  return v23;
}

double sub_1000370D4()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 20);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    v8 = 0.0;
    if ((v7 & 1) == 0)
    {
      return v8;
    }
  }

  else
  {

    sub_1000C2958();
    v9 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v7, 0);
    (*(v2 + 8))(v5, v1);
    v8 = 0.0;
    if (v11[15] != 1)
    {
      return v8;
    }
  }

  if (sub_100037290() < 7.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = -7.0;
  }

  sub_100037290();
  return v8;
}

double sub_100037290()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveSmall(0) + 44);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  sub_1000C2958();
  v12 = sub_1000C1BC8();
  sub_1000C1548();

  sub_1000C1928();
  swift_getAtKeyPath();
  sub_100054C08(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

BOOL sub_10003741C()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for TTRAnyListWidget.InteractiveSmall(0);
  v7 = v0 + *(v6 + 20);
  v8 = *v7;
  if (*(v7 + 8) == 1)
  {
    if (v8)
    {
      return 0;
    }
  }

  else
  {

    sub_1000C2958();
    v10 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v8, 0);
    (*(v2 + 8))(v5, v1);
    if (v18[0])
    {
      return 0;
    }
  }

  v11 = v0 + *(v6 + 44);
  v12 = *(v11 + 16);
  if (*(v11 + 32) == 1)
  {
    v13 = *(v11 + 16);
  }

  else
  {
    v14 = *v11;
    v15 = *(v11 + 8);
    v16 = *(v11 + 24);

    sub_1000C2958();
    v17 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100054C08(v14, v15, v12, v16, 0);
    (*(v2 + 8))(v5, v1);
    v13 = v19;
  }

  return v13 == 0.0;
}

uint64_t sub_100037660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_1000C20F8();
  a3[1] = v6;
  v7 = a3 + *(sub_100004D04(&qword_1000EECC8, &qword_1000C6E00) + 44);
  *v7 = sub_1000C1978();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = sub_100004D04(&qword_1000EECD0, &qword_1000C6E08);
  return sub_1000376E8(a2, a1, &v7[*(v8 + 44)]);
}

uint64_t sub_1000376E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a2;
  v70 = a3;
  v76 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v5 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v75 = v62 - v6;
  v74 = sub_100004D04(&qword_1000EECD8, &qword_1000C6E10);
  v7 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v9 = v62 - v8;
  v67 = sub_100004D04(&qword_1000EECE0, &qword_1000C6E18);
  v66 = *(v67 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v67);
  v65 = v62 - v11;
  v64 = sub_100004D04(&qword_1000EECE8, &qword_1000C6E20);
  v12 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v69 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v63 = v62 - v15;
  __chkstk_darwin(v16);
  v68 = v62 - v17;
  v18 = sub_1000C0938();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100004D04(&qword_1000EECF0, &qword_1000C6E28);
  v23 = *(v71 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v71);
  v26 = v62 - v25;
  v72 = sub_100004D04(&qword_1000EECF8, &qword_1000C6E30);
  v27 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v29 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v32 = v62 - v31;
  v33 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v19 + 16))(v22, a1 + *(v33 + 72), v18);
  v77 = a1;
  v78 = a2;
  sub_100004D04(&qword_1000EED00, &qword_1000C6E38);
  v34 = sub_100005334(&qword_1000EED08, &qword_1000C6E40);
  v35 = sub_10005C1B0();
  v36 = sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
  *&v79 = v34;
  *(&v79 + 1) = v76;
  *&v80 = v35;
  *(&v80 + 1) = v36;
  v62[1] = v36;
  swift_getOpaqueTypeConformance2();
  sub_1000C1CE8();
  *&v79 = sub_100024038();
  *(&v79 + 1) = v37;
  sub_100008478(&qword_1000EED20, &qword_1000EECF0, &qword_1000C6E28);
  sub_100012814();
  v38 = v71;
  sub_1000C1F08();
  v39 = a1;
  v40 = v29;

  (*(v23 + 8))(v26, v38);
  v41 = v74;
  sub_1000C19E8();
  v42 = v32;
  sub_1000C1718();

  sub_1000084C0(v29, &qword_1000EECF8, &qword_1000C6E30);
  v43 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  sub_100048828(v39, &v9[v43[5]], type metadata accessor for TTRNewWidgetViewModel);
  *v9 = 1;
  v44 = v75;
  *&v9[v43[6]] = 4;
  v45 = &v9[v43[7]];
  *v45 = swift_getKeyPath();
  v45[8] = 0;
  *&v9[v43[8]] = 0x4040800000000000;
  sub_1000C1618();
  sub_1000C2108();
  sub_1000C1608();
  v46 = &v9[*(v41 + 36)];
  v47 = v80;
  *v46 = v79;
  v46[1] = v47;
  v46[2] = v81;
  v48 = enum case for DynamicTypeSize.xxxLarge(_:);
  v49 = sub_1000C16C8();
  (*(*(v49 - 8) + 104))(v44, v48, v49);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_10005C2AC(&qword_1000EED28, &qword_1000EECD8, &qword_1000C6E10);
    v51 = v65;
    sub_1000C1EE8();
    sub_1000084C0(v44, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v9, &qword_1000EECD8, &qword_1000C6E10);
    if (sub_100038280() < 6.0)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = -6.0;
    }

    sub_100038280();
    if (v53 < 6.0)
    {
      v54 = 0.0;
    }

    else
    {
      v54 = -6.0;
    }

    v55 = sub_1000C1BD8();
    v56 = v63;
    (*(v66 + 32))(v63, v51, v67);
    v57 = v56 + *(v64 + 36);
    *v57 = v55;
    *(v57 + 8) = v52;
    *(v57 + 16) = 0;
    *(v57 + 24) = v54;
    *(v57 + 32) = 0;
    *(v57 + 40) = 0;
    v58 = v68;
    sub_10001DA60(v56, v68, &qword_1000EECE8, &qword_1000C6E20);
    sub_1000082B4(v42, v40, &qword_1000EECF8, &qword_1000C6E30);
    v59 = v69;
    sub_1000082B4(v58, v69, &qword_1000EECE8, &qword_1000C6E20);
    v60 = v70;
    sub_1000082B4(v40, v70, &qword_1000EECF8, &qword_1000C6E30);
    v61 = sub_100004D04(&qword_1000EED38, &qword_1000C6E48);
    sub_1000082B4(v59, v60 + *(v61 + 48), &qword_1000EECE8, &qword_1000C6E20);
    sub_1000084C0(v58, &qword_1000EECE8, &qword_1000C6E20);
    sub_1000084C0(v42, &qword_1000EECF8, &qword_1000C6E30);
    sub_1000084C0(v59, &qword_1000EECE8, &qword_1000C6E20);
    return sub_1000084C0(v40, &qword_1000EECF8, &qword_1000C6E30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100037FF8(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = sub_100004D04(&qword_1000EED08, &qword_1000C6E40);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v15 - v8;
  sub_100048828(a1, v15 - v8, type metadata accessor for TTRNewWidgetViewModel);
  sub_1000C1618();
  sub_1000C2108();
  sub_1000C1608();
  v10 = &v9[*(v6 + 36)];
  v11 = v15[1];
  *v10 = v15[0];
  *(v10 + 1) = v11;
  *(v10 + 2) = v15[2];
  v12 = enum case for DynamicTypeSize.xxLarge(_:);
  v13 = sub_1000C16C8();
  (*(*(v13 - 8) + 104))(v5, v12, v13);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_10005C1B0();
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
    sub_1000C1EE8();
    sub_1000084C0(v5, &qword_1000EE010, &qword_1000C5D80);
    return sub_1000084C0(v9, &qword_1000EED08, &qword_1000C6E40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100038280()
{
  v1 = sub_1000C1938();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for TTRAnyListWidget.InteractiveMedium(0) + 24);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  sub_1000C2958();
  v12 = sub_1000C1BC8();
  sub_1000C1548();

  sub_1000C1928();
  swift_getAtKeyPath();
  sub_100054C08(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_10003840C(uint64_t a1)
{
  v3 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v17 - v5;
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v9);
  v10 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(v1, v10, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_10005BBD0(v10, v12 + v11, type metadata accessor for TTRAnyListWidget.InteractiveMedium);
  v17[0] = sub_10005C128;
  v17[1] = v12;
  v13 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v14 = sub_1000C0938();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v6, v1 + v13, v14);
  (*(v15 + 56))(v6, 0, 1, v14);
  sub_100004D04(&qword_1000EECB8, &qword_1000C6DF8);
  sub_100008478(&qword_1000EECC0, &qword_1000EECB8, &qword_1000C6DF8);
  sub_1000C1E38();
  sub_1000084C0(v6, &qword_1000ECCE0, &qword_1000C4EF0);
}

uint64_t sub_100038684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v66 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v3 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v65 = v56 - v4;
  v64 = sub_100004D04(&qword_1000EED60, &qword_1000C6E68);
  v5 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v7 = v56 - v6;
  v8 = sub_100004D04(&qword_1000EED68, &qword_1000C6E70);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v58 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v57 = v56 - v12;
  v13 = sub_1000C0938();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100004D04(&qword_1000EED70, &qword_1000C6E78);
  v18 = *(v62 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v62);
  v21 = v56 - v20;
  v63 = sub_100004D04(&qword_1000EED78, &qword_1000C6E80);
  v22 = *(*(v63 - 8) + 64);
  __chkstk_darwin(v63);
  v24 = v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = v56 - v26;
  v28 = type metadata accessor for TTRNewWidgetViewModel(0);
  (*(v14 + 16))(v17, a1 + *(v28 + 72), v13);
  v67 = a1;
  sub_100004D04(&qword_1000EED80, &qword_1000C6E88);
  v29 = type metadata accessor for TTRAnyListWidget.LargeHeaderView(255);
  v30 = sub_100048784(&qword_1000EED88, type metadata accessor for TTRAnyListWidget.LargeHeaderView);
  v31 = sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
  v68 = v29;
  v69 = v66;
  v70 = v30;
  v71 = v31;
  v56[1] = v31;
  swift_getOpaqueTypeConformance2();
  sub_1000C1CE8();
  v68 = sub_100024038();
  v69 = v32;
  sub_100008478(&qword_1000EED90, &qword_1000EED70, &qword_1000C6E78);
  sub_100012814();
  v33 = v62;
  sub_1000C1F08();

  (*(v18 + 8))(v21, v33);
  v34 = v65;
  sub_1000C19E8();
  v35 = v27;
  sub_1000C1718();

  v36 = v24;
  sub_1000084C0(v24, &qword_1000EED78, &qword_1000C6E80);
  KeyPath = swift_getKeyPath();
  v38 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  sub_100048828(a1, &v7[v38[5]], type metadata accessor for TTRNewWidgetViewModel);
  *v7 = 2;
  *&v7[v38[6]] = 7;
  v39 = &v7[v38[7]];
  *v39 = swift_getKeyPath();
  v39[8] = 0;
  *&v7[v38[8]] = 0x4040800000000000;
  v40 = sub_1000C1BD8();
  v41 = &v7[*(v64 + 36)];
  *v41 = v40;
  *(v41 + 1) = 0x4024000000000000;
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = 0;
  v41[40] = 0;
  v42 = enum case for DynamicTypeSize.xxxLarge(_:);
  v43 = sub_1000C16C8();
  (*(*(v43 - 8) + 104))(v34, v42, v43);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    v63 = KeyPath;
    sub_10005C2AC(&qword_1000EED98, &qword_1000EED60, &qword_1000C6E68);
    v45 = v57;
    sub_1000C1EE8();
    sub_1000084C0(v34, &qword_1000EE010, &qword_1000C5D80);
    sub_1000084C0(v7, &qword_1000EED60, &qword_1000C6E68);
    v46 = v35;
    v47 = v36;
    sub_1000082B4(v35, v36, &qword_1000EED78, &qword_1000C6E80);
    v49 = v58;
    v48 = v59;
    v50 = *(v59 + 16);
    v51 = v60;
    v50(v58, v45, v60);
    v52 = v61;
    sub_1000082B4(v47, v61, &qword_1000EED78, &qword_1000C6E80);
    v53 = sub_100004D04(&qword_1000EEDA0, &qword_1000C6E90);
    v54 = v52 + *(v53 + 48);
    *v54 = v63;
    *(v54 + 8) = 0;
    v50((v52 + *(v53 + 64)), v49, v51);
    v55 = *(v48 + 8);

    v55(v45, v51);
    sub_1000084C0(v46, &qword_1000EED78, &qword_1000C6E80);
    v55(v49, v51);

    return sub_1000084C0(v47, &qword_1000EED78, &qword_1000C6E80);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100038E6C(uint64_t a1)
{
  v2 = sub_100004D04(&qword_1000EE010, &qword_1000C5D80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v13 - v4;
  v6 = type metadata accessor for TTRAnyListWidget.LargeHeaderView(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100048828(a1, v9, type metadata accessor for TTRNewWidgetViewModel);
  v10 = enum case for DynamicTypeSize.xxLarge(_:);
  v11 = sub_1000C16C8();
  (*(*(v11 - 8) + 104))(v5, v10, v11);
  sub_100048784(&qword_1000EE078, &type metadata accessor for DynamicTypeSize);
  result = sub_1000C2608();
  if (result)
  {
    sub_100048784(&qword_1000EED88, type metadata accessor for TTRAnyListWidget.LargeHeaderView);
    sub_100008478(&qword_1000EE058, &qword_1000EE010, &qword_1000C5D80);
    sub_1000C1EE8();
    sub_1000084C0(v5, &qword_1000EE010, &qword_1000C5D80);
    return sub_100048940(v9, type metadata accessor for TTRAnyListWidget.LargeHeaderView);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000390C8()
{
  v1 = sub_100004D04(&qword_1000ECCE0, &qword_1000C4EF0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  v5 = sub_100004D04(&qword_1000EED40, &qword_1000C6E50);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v16 - v7);
  *v8 = sub_1000C20F8();
  v8[1] = v9;
  v10 = v8 + *(sub_100004D04(&qword_1000EED48, &qword_1000C6E58) + 44);
  *v10 = sub_1000C1A48();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = sub_100004D04(&qword_1000EED50, &qword_1000C6E60);
  sub_100038684(v0, &v10[*(v11 + 44)]);
  v12 = *(type metadata accessor for TTRNewWidgetViewModel(0) + 72);
  v13 = sub_1000C0938();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v4, v0 + v12, v13);
  (*(v14 + 56))(v4, 0, 1, v13);
  sub_100008478(&qword_1000EED58, &qword_1000EED40, &qword_1000C6E50);
  sub_1000C1E38();
  sub_1000084C0(v4, &qword_1000ECCE0, &qword_1000C4EF0);
  return sub_1000084C0(v8, &qword_1000EED40, &qword_1000C6E50);
}

int *sub_1000392F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v4 = *(v3 + 20);
  v5 = *&v1[*(v3 + 24)];
  v14 = v5;
  v6 = &v1[v4];
  result = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*&v6[result[16] + 8] && *&v6[result[17]])
  {
    if (__OFSUB__(v5--, 1))
    {
      __break(1u);
      return result;
    }

    v14 = v5;
  }

  v9 = *(*&v6[result[19]] + 16);
  if (v5 < v9)
  {
    v9 = v5;
  }

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *a1 = sub_1000C2108();
  a1[1] = v12;
  v13 = sub_100004D04(&qword_1000EF438, &qword_1000C7550);
  sub_1000393F0(v1, v11, &v14, a1 + *(v13 + 44));
}

uint64_t sub_1000393F0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a2;
  v47 = a3;
  v54 = a4;
  v53 = sub_100004D04(&qword_1000EF440, &qword_1000C7558);
  v5 = *(*(v53 - 8) + 64);
  __chkstk_darwin(v53);
  v7 = &v45 - v6;
  v51 = sub_100004D04(&qword_1000EF448, &qword_1000C7560);
  v8 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v45 = (&v45 - v9);
  v50 = sub_100004D04(&qword_1000EF450, &qword_1000C7568);
  v10 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v49 = &v45 - v11;
  v48 = sub_100004D04(&qword_1000EF458, &qword_1000C7570);
  v12 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v14 = &v45 - v13;
  v52 = sub_100004D04(&qword_1000EF460, &qword_1000C7578);
  v15 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v17 = &v45 - v16;
  v18 = type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView(0);
  v19 = *(*(v18 - 1) + 64);
  __chkstk_darwin(v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004D04(&qword_1000EF468, &qword_1000C7580);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v45 - v24;
  v26 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v27 = &a1[*(v26 + 20)];
  v28 = type metadata accessor for TTRNewWidgetViewModel(0);
  if (*(*&v27[*(v28 + 76)] + 16))
  {
    v29 = v49;
    v30 = v51;
    v31 = sub_1000C0F78();
    v32 = *&a1[*(v26 + 24)];
    if (v31)
    {
      v34 = v45;
      v33 = v46;
      *v45 = v32;
      sub_100039A2C(a1, (v33 + 16), v47, (v34 + *(v30 + 44)));
      sub_1000082B4(v34, v14, &qword_1000EF448, &qword_1000C7560);
      swift_storeEnumTagMultiPayload();
      sub_100064370();
      sub_10006445C();
      sub_1000C1AE8();
      sub_1000082B4(v17, v29, &qword_1000EF460, &qword_1000C7578);
      swift_storeEnumTagMultiPayload();
      sub_1000642E4();
      sub_100064540();
      sub_1000C1AE8();
      sub_1000084C0(v17, &qword_1000EF460, &qword_1000C7578);
      v35 = v34;
      v36 = &qword_1000EF448;
      v37 = &qword_1000C7560;
    }

    else
    {
      *v7 = v32;
      sub_10003A06C(a1, v46, v47, &v7[*(v53 + 44)]);
      sub_1000082B4(v7, v29, &qword_1000EF440, &qword_1000C7558);
      swift_storeEnumTagMultiPayload();
      sub_1000642E4();
      sub_100064540();
      sub_1000C1AE8();
      v35 = v7;
      v36 = &qword_1000EF440;
      v37 = &qword_1000C7558;
    }
  }

  else
  {
    v38 = *a1;
    v39 = *(v28 + 28);
    v40 = v18[5];
    v41 = sub_1000C0E58();
    (*(*(v41 - 8) + 16))(&v21[v40], &v27[v39], v41);
    *v21 = v38;
    v42 = &v21[v18[6]];
    *v42 = swift_getKeyPath();
    v42[8] = 0;
    v43 = v18[7];
    *&v21[v43] = swift_getKeyPath();
    sub_100004D04(&qword_1000EDDC0, &qword_1000C5B60);
    swift_storeEnumTagMultiPayload();
    sub_100048784(&qword_1000EEC18, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView);
    sub_1000C1EB8();
    sub_100048940(v21, type metadata accessor for TTRAnyListWidget.InteractiveNoRemindersView);
    sub_1000082B4(v25, v14, &qword_1000EF468, &qword_1000C7580);
    swift_storeEnumTagMultiPayload();
    sub_100064370();
    sub_10006445C();
    sub_1000C1AE8();
    sub_1000082B4(v17, v49, &qword_1000EF460, &qword_1000C7578);
    swift_storeEnumTagMultiPayload();
    sub_1000642E4();
    sub_100064540();
    sub_1000C1AE8();
    sub_1000084C0(v17, &qword_1000EF460, &qword_1000C7578);
    v35 = v25;
    v36 = &qword_1000EF468;
    v37 = &qword_1000C7580;
  }

  return sub_1000084C0(v35, v36, v37);
}

uint64_t sub_100039A2C@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v52 = a3;
  v53 = a4;
  v6 = sub_100004D04(&qword_1000EF4C0, &qword_1000C75A0);
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  __chkstk_darwin(v6);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = &v49 - v10;
  v11 = sub_1000C1938();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for TTRAnyListWidget.InteractiveVerticalContentView(0);
  v17 = a1 + *(v16 + 20);
  v18 = type metadata accessor for TTRNewWidgetViewModel(0);
  v19 = v18;
  v20 = (v17 + *(v18 + 64));
  v21 = v20[1];
  if (!v21)
  {
    v51 = 0;
LABEL_7:
    v26 = 0;
    KeyPath = 0;
    goto LABEL_10;
  }

  if (!*(v17 + *(v18 + 68)))
  {
    v51 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  v51 = *v20;
  v22 = a1 + *(v16 + 28);
  v23 = *v22;
  v24 = *(v22 + 8);

  if (v24 == 1)
  {
    v25 = *&v23;
  }

  else
  {
    sub_1000489F4(v23, 0);
    LODWORD(v49) = sub_1000C2958();
    v28 = sub_1000C1BC8();
    sub_1000C1548();

    sub_1000C1928();
    swift_getAtKeyPath();
    sub_100048A00(v23, 0);
    (*(v12 + 8))(v15, v11);
    v25 = v58;
  }

  sub_100023E6C(v25);
  v26 = v29;
  KeyPath = swift_getKeyPath();

LABEL_10:
  v30 = *(v17 + *(v19 + 76));
  result = swift_beginAccess();
  v32 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v33 = *(v30 + 16);
  if (v33 < v32)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v34 = v21;
  v49 = KeyPath;
  v50 = v6;
  v35 = v26;
  if (v33 == v32)
  {
  }

  else
  {
    v36 = *(type metadata accessor for TTRNewWidgetViewModel.Reminder(0) - 8);
    sub_10009A244(v30, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), 0, (2 * v32) | 1);
    v32 = *(v30 + 16);
    v30 = v37;
  }

  if (v32 >= *v52)
  {
    v38 = 1;
  }

  else
  {
    v38 = 2;
  }

  v57 = v30;
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v38;
  sub_100004D04(&qword_1000EF4C8, &qword_1000C75D0);
  type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  sub_100008478(&qword_1000EF4D0, &qword_1000EF4C8, &qword_1000C75D0);
  sub_100048784(&qword_1000EE080, type metadata accessor for TTRAnyListWidget.InteractiveReminderView);
  v39 = v56;
  sub_1000C20D8();
  v41 = v54;
  v40 = v55;
  v42 = *(v55 + 16);
  v43 = v50;
  v42(v54, v39, v50);
  v44 = v51;
  v45 = v53;
  *v53 = v51;
  v45[1] = v34;
  v46 = v49;
  v45[2] = v35;
  v45[3] = v46;
  *(v45 + 32) = 0;
  v47 = sub_100004D04(&qword_1000EF4D8, &qword_1000C75D8);
  v42(v45 + *(v47 + 48), v41, v43);
  sub_10006462C(v44, v34);
  sub_10006467C(v44, v34);
  v48 = *(v40 + 8);
  v48(v56, v43);
  v48(v41, v43);
  return sub_10006467C(v44, v34);
}

uint64_t sub_100039F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100048828(a1, a3, type metadata accessor for TTRNewWidgetViewModel.Reminder);
  v5 = type metadata accessor for TTRAnyListWidget.InteractiveReminderView(0);
  v6 = a3 + v5[9];
  *v6 = swift_getKeyPath();
  *(v6 + 8) = 0;
  v7 = a3 + v5[10];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  v8 = a3 + v5[11];
  result = swift_getKeyPath();
  *v8 = result;
  *(v8 + 8) = 0;
  *(a3 + v5[5]) = a2;
  v10 = a3 + v5[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  *(a3 + v5[7]) = 0;
  v11 = a3 + v5[8];
  *v11 = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 1;
  return result;
}