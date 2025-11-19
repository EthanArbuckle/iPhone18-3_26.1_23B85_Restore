uint64_t sub_10008F374()
{
  sub_10000C778();
  v1 = type metadata accessor for CurrentWeatherEditorView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v4 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_1000037E8();
    (*(v5 + 8))(v2 + v4);
  }

  v6 = *(v1 + 20);
  v7 = type metadata accessor for CurrentWeather();
  sub_1000037E8();
  v9 = *(v8 + 8);
  v9(v2 + v6, v7);

  v9(v2 + *(v1 + 28), v7);
  sub_10022C350(&qword_100CDE7B0);

  sub_10000536C();

  return swift_deallocObject();
}

uint64_t sub_10008F524()
{
  v1 = type metadata accessor for LearnMoreAttributorView();
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(type metadata accessor for LearnMoreAttributorViewModel() + 24);
  v4 = type metadata accessor for URL();
  if (!sub_100024D10(v2 + v3, 1, v4))
  {
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  swift_unknownObjectWeakDestroy();
  sub_10010CD64(*(v2 + *(v1 + 24)), *(v2 + *(v1 + 24) + 8), *(v2 + *(v1 + 24) + 16));

  sub_1000E4DF8(*(v2 + *(v1 + 28)), *(v2 + *(v1 + 28) + 8));

  return swift_deallocObject();
}

uint64_t sub_10008F69C()
{
  v1 = type metadata accessor for MainView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  sub_100006F14(v2 + 8);
  sub_100006F14(v2 + 48);
  sub_100006F14(v2 + 88);
  v3 = v1[8];
  sub_10022C350(&qword_100CAD618);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ContentSizeCategory();
    sub_1000037E8();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  v5 = v1[9];
  sub_10022C350(&qword_100CE1010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for LegibilityWeight();
    if (!sub_10000CABC(v6))
    {
      (*(*(v3 - 8) + 8))(v2 + v5, v3);
    }
  }

  else
  {
  }

  v7 = v1[10];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_10000CABC(v8))
    {
      (*(*(v3 - 8) + 8))(v2 + v7, v3);
    }
  }

  else
  {
  }

  sub_1000E4DF8(*(v2 + v1[11]), *(v2 + v1[11] + 8));

  sub_100006F14(v2 + v1[16]);

  return swift_deallocObject();
}

uint64_t sub_10008F90C()
{
  type metadata accessor for Location();
  sub_100003D98();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_10008F988()
{
  type metadata accessor for InteractiveMapView();
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = v0[8];
  type metadata accessor for WeatherMapDisplayMode();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_10000EE8C();
  v7 = v4 + v0[11];
  v8 = type metadata accessor for WeatherMapPerformanceTestConditions();
  if (!sub_100020660(v8))
  {
    sub_100003B20();
    (*(v9 + 8))(v7, v2);
  }

  sub_10022C350(&qword_100CE3748);

  v10 = v0[13];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100017854(v4 + v10))
    {
      sub_100003B20();
      (*(v12 + 8))(v4 + v10, v11);
    }
  }

  else
  {
  }

  sub_100028D10();
  sub_10022C350(&qword_100CB3B70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorScheme();
    sub_1000037E8();
    (*(v13 + 8))(v0 + v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008FBD4()
{
  v1 = (type metadata accessor for MainViewSheetViewModifier(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = v0 + v2;

  sub_100006F14(v0 + v2 + 16);

  v4 = v1[9];
  sub_10022C350(&qword_100CA62E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = type metadata accessor for UserInterfaceSizeClass();
    if (!sub_100024D10(v3 + v4, 1, v5))
    {
      (*(*(v5 - 8) + 8))(v3 + v4, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_10008FD28()
{
  v1 = (type metadata accessor for DebugWeatherClockView() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_10022C350(&qword_100CC39F0);
  sub_100003D98();
  (*(v4 + 8))(v2 + v3);

  return swift_deallocObject();
}

uint64_t sub_10008FE3C()
{

  sub_100006F14(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_10008FE94()
{

  swift_unknownObjectRelease();
  sub_100006F14(v0 + 72);
  swift_unknownObjectRelease();
  sub_100006F14(v0 + 128);

  return swift_deallocObject();
}

uint64_t sub_10008FF20()
{
  v1 = type metadata accessor for DebugLocationSyncingPlaygroundView();
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v2 + v1[8];
  v4 = type metadata accessor for SyncedData();
  if (!sub_100024D10(v3, 1, v4))
  {
    sub_100003B20();
    v5 = sub_100003A80();
    v6(v5);
  }

  sub_10022C350(&qword_100CE7510);

  if (!sub_100009310(v1[9]))
  {
    sub_100003B20();
    v7 = sub_100003A80();
    v8(v7);
  }

  if (!sub_100009310(v1[10]))
  {
    sub_100003B20();
    v9 = sub_100003A80();
    v10(v9);
  }

  if (!sub_100009310(v1[11]))
  {
    sub_100003B20();
    v11 = sub_100003A80();
    v12(v11);
  }

  sub_100006F14(v2 + v1[13]);

  return swift_deallocObject();
}

uint64_t sub_100090160()
{
  type metadata accessor for DailyForecastEditorView();
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_10022C350(&qword_100CA54B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(sub_10022C350(&qword_100CA6D28) + 32);
    type metadata accessor for PresentationMode();
    sub_100003D98();
    (*(v6 + 8))(v3 + v5);
  }

  v7 = *(v0 + 20);
  sub_10022C350(&qword_100CA7000);
  sub_100003D98();
  (*(v8 + 8))(v3 + v7);
  v9 = *(v0 + 28);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v10 + 8))(v3 + v9);

  return swift_deallocObject();
}

uint64_t sub_100090314()
{
  v1 = *(v0 + 16);
  sub_10003C724();
  v2 = type metadata accessor for WeatherComponentButton();
  v3 = v0 + ((*(*(v2 - 1) + 80) + 32) & ~*(*(v2 - 1) + 80));
  sub_1000E4DF8(*v3, *(v3 + 8));
  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  v4 = v3 + v2[12];
  if (*(v4 + 24))
  {
    sub_10010CD64(*v4, *(v4 + 8), *(v4 + 16));
  }

  v5 = v3 + v2[13];
  if (*(v5 + 24))
  {
    sub_10010CD64(*v5, *(v5 + 8), *(v5 + 16));
  }

  v6 = v3 + v2[15];
  v7 = type metadata accessor for Date();
  if (!sub_100024D10(v6, 1, v7))
  {
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  sub_10022C350(&qword_100CBB758);

  return swift_deallocObject();
}

uint64_t sub_1000904E8()
{
  type metadata accessor for ScrubberView(0);
  sub_100003A0C();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_100006F14(v3 + 8);

  v4 = v3 + v0[10];

  v5 = *(type metadata accessor for ScrubberViewModel(0) + 24);
  type metadata accessor for TimeZone();
  sub_1000037E8();
  (*(v6 + 8))(v4 + v5);
  sub_100028EA4();

  v7 = v3 + v0[13];
  v8 = type metadata accessor for Date();
  sub_1000037E8();
  v10 = *(v9 + 8);
  v10(v7, v8);
  sub_10022C350(&qword_100CAD050);

  sub_100028EA4();
  sub_100028EA4();

  sub_100028EA4();
  sub_100028EA4();
  v11 = v3 + v0[19];

  v12 = *(sub_10022C350(&qword_100CE86D8) + 32);
  v13 = type metadata accessor for ScrubberDateSelection();
  if (!sub_100024D10(v11 + v12, 1, v13) && !sub_100024D10(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v14 = v0[20];
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_1000037E8();
    (*(v15 + 8))(v3 + v14);
  }

  else
  {
  }

  sub_100028EA4();

  return swift_deallocObject();
}

uint64_t sub_100090794()
{
  type metadata accessor for WeatherMenuCommands();
  sub_100003A0C();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100006F14(v4 + 16);
  v5 = v4 + *(v0 + 24);
  v6 = type metadata accessor for UnitConfiguration.Temperature();
  if (!sub_100020660(v6))
  {
    (*(*(v2 - 8) + 8))(v5, v2);
  }

  sub_10022C350(&qword_100CD5528);

  return swift_deallocObject();
}

uint64_t sub_1000908BC()
{
  v1 = (type metadata accessor for TemperatureChartPickerView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();
  v3 = type metadata accessor for TemperatureChartKind();
  sub_1000037E8();
  v5 = *(v4 + 8);
  v5(v0 + v2, v3);
  sub_100006F14(v0 + v2 + v1[7]);
  v6 = v0 + v2 + v1[8];
  if (!sub_100024D10(v6, 1, v3))
  {
    v5(v6, v3);
  }

  sub_10022C350(&qword_100CEBB68);

  return swift_deallocObject();
}

uint64_t sub_100090A08()
{

  sub_100006F14(v0 + 56);

  return swift_deallocObject();
}

void sub_100090A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  sub_10001E790();
  v26 = type metadata accessor for Location();
  sub_1000037C4();
  v28 = v27;
  v30 = *(v29 + 64);
  __chkstk_darwin(v31);
  sub_100040690();
  v32 = static OS_dispatch_queue.main.getter();
  sub_10022C350(&qword_100CE2950);
  sub_1000E5A8C();

  v33 = sub_100086BF4(v23 & 1);
  (*(v28 + 16))(&a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
  v34 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v35 = swift_allocObject();
  (*(v28 + 32))(v35 + v34, &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
  Promise.then<A, B>(on:disposeOn:closure:)();

  sub_10000536C();
}

void sub_100090C6C()
{
  v2 = type metadata accessor for OSSignpostID();
  sub_100003AE8(v2);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for Location();
  sub_100003AE8(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_100003AE8(v12);
  v14 = (v11 + *(v13 + 80) + 8) & ~*(v13 + 80);
  v16 = *(v15 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_100003AE8(Options);
  v19 = (v14 + v16 + *(v18 + 80)) & ~*(v18 + 80);
  sub_10002CB50();
  v20 = type metadata accessor for AppConfiguration();
  sub_100003810(v20);
  v21 = sub_100040C54();
  sub_100090E8C(v21, v23, *(v0 + 32), v0 + v4, v0 + v9, *(v0 + v11), v0 + v14, v0 + v19, *(v0 + v1), *(v0 + v1 + 8), v0 + ((v1 + 23) & 0xFFFFFFFFFFFFFFF8), *(v0 + ((((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), v0 + v22);
}

void sub_100090E8C(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v126 = a8;
  v101 = a7;
  v127 = a6;
  v85 = a5;
  v125 = a4;
  v137 = a2;
  v15 = sub_10022C350(&qword_100CE2988);
  v94 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v68 - v16;
  v18 = sub_10022C350(&qword_100CE2990);
  v112 = *(v18 - 8);
  __chkstk_darwin(v18);
  v134 = &v68 - v19;
  v111 = sub_10022C350(&qword_100CE2998);
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v133 = &v68 - v20;
  v109 = sub_10022C350(&qword_100CE29A0);
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v132 = &v68 - v21;
  v107 = sub_10022C350(&qword_100CE29A8);
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v131 = &v68 - v22;
  v105 = sub_10022C350(&qword_100CE29B0);
  v104 = *(v105 - 8);
  __chkstk_darwin(v105);
  v130 = &v68 - v23;
  v103 = sub_10022C350(&qword_100CAD2A0);
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v129 = &v68 - v24;
  v100 = sub_10022C350(&qword_100CAD290);
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v128 = &v68 - v25;
  v98 = sub_10022C350(&qword_100CE29B8);
  v97 = *(v98 - 8);
  __chkstk_darwin(v98);
  v136 = &v68 - v26;
  v96 = sub_10022C350(&qword_100CE29C0);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v135 = &v68 - v27;
  v28 = type metadata accessor for AppConfiguration();
  v92 = *(v28 - 8);
  __chkstk_darwin(v28);
  v90 = v29;
  v124 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for OSSignpostID();
  v91 = *(v123 - 8);
  __chkstk_darwin(v123);
  v88 = v30;
  v122 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  v89 = *(Options - 8);
  __chkstk_darwin(Options);
  v86 = v31;
  v120 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  v87 = *(v119 - 8);
  __chkstk_darwin(v119);
  v84 = v32;
  v118 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Location();
  v82 = *(v117 - 8);
  __chkstk_darwin(v117);
  v83 = v33;
  v34 = &v68 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for WeatherDataUpdateRequestLog.Event(0);
  __chkstk_darwin(updated);
  v37 = &v68 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v93 = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v73 = a14;
    v115 = a13;
    v75 = a12;
    v72 = a11;
    v77 = a10;
    v76 = a9;
    v114 = v28;
    v39 = Strong;
    v113 = sub_1000925AC();
    static os_signpost_type_t.begin.getter();
    v81 = v15;
    v40 = *(v39 + 448);
    sub_10022C350(&qword_100CA40C8);
    v41 = swift_allocObject();
    v116 = v17;
    v42 = v41;
    *(v41 + 16) = xmmword_100A2C3F0;
    v43 = v40;
    v80 = v18;
    v44 = v43;
    v71 = v34;
    v45 = v85;
    v46 = Location.name.getter();
    v48 = v47;
    v42[7] = &type metadata for String;
    v42[8] = sub_100035744();
    v42[4] = v46;
    v42[5] = v48;
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    swift_storeEnumTagMultiPayload();
    sub_10005C1D4(v37);
    sub_100087544();
    v79 = v39;
    sub_10042F370(v39 + 328, v140);
    v78 = *(v39 + 64);
    v49 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v50 = v82;
    (*(v82 + 16))(v34, v45, v117);
    sub_10042F370(v140, &v139);
    v51 = v87;
    (*(v87 + 16))(v118, v101, v119);
    v52 = v89;
    (*(v89 + 16))(v120, v126, Options);
    sub_10042F370(v72, &v138);
    v53 = v91;
    (*(v91 + 16))(v122, v125, v123);
    v54 = v92;
    (*(v92 + 16))(v124, v73, v114);
    v55 = (*(v50 + 80) + 24) & ~*(v50 + 80);
    v70 = (v83 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
    v83 = (v73 + 47) & 0xFFFFFFFFFFFFFFF8;
    v72 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
    v69 = (v72 + 15) & 0xFFFFFFFFFFFFFFF8;
    v56 = (*(v51 + 80) + v69 + 8) & ~*(v51 + 80);
    v84 = (v84 + *(v52 + 80) + v56) & ~*(v52 + 80);
    v85 = (v86 + v84 + 7) & 0xFFFFFFFFFFFFFFF8;
    v125 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
    v86 = (v125 + 47) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v53 + 80) + v86 + 16) & ~*(v53 + 80);
    v88 = (v88 + *(v54 + 80) + v93) & ~*(v54 + 80);
    v57 = swift_allocObject();
    v74 = v49;
    *(v57 + 16) = v49;
    (*(v50 + 32))(v57 + v55, v71, v117);
    *(v57 + v70) = v137;
    sub_100013188(&v139, v57 + v73);
    *(v57 + v83) = v75;
    *(v57 + v72) = v115;
    *(v57 + v69) = v127;
    (*(v51 + 32))(v57 + v56, v118, v119);
    (*(v52 + 32))(v57 + v84, v120, Options);
    *(v57 + v85) = v113;
    sub_100013188(&v138, v57 + v125);
    v58 = (v57 + v86);
    v59 = v77;
    *v58 = v76;
    v58[1] = v59;
    (*(v53 + 32))(v57 + v93, v122, v123);
    (*(v54 + 32))(v57 + v88, v124, v114);

    v137 = v127;

    ProductRequirementsFactory.AppRequiredProducts.current.getter();
    ProductRequirementsFactory.AppRequiredProducts.minutely.getter();
    ProductRequirementsFactory.AppRequiredProducts.hourly.getter();
    ProductRequirementsFactory.AppRequiredProducts.daily.getter();
    ProductRequirementsFactory.AppRequiredProducts.airQuality.getter();
    ProductRequirementsFactory.AppRequiredProducts.changes.getter();
    ProductRequirementsFactory.AppRequiredProducts.alerts.getter();
    ProductRequirementsFactory.AppRequiredProducts.availability.getter();
    ProductRequirementsFactory.AppRequiredProducts.news.getter();
    ProductRequirementsFactory.AppRequiredProducts.historicalComparisons.getter();
    v60 = swift_allocObject();
    *(v60 + 16) = sub_1000F4808;
    *(v60 + 24) = v57;
    v127 = type metadata accessor for CurrentWeather();

    v125 = sub_10022C350(&qword_100CB0BA0);
    sub_10022C350(&qword_100CA7030);
    sub_10022C350(&qword_100CA7000);
    sub_10022C350(&qword_100CC62B8);
    sub_10022C350(&qword_100CACDF8);
    sub_10022C350(&qword_100CD00E0);
    type metadata accessor for WeatherAvailability();
    sub_10022C350(&qword_100CE29C8);
    sub_10022C350(&qword_100CABD10);
    v61 = v116;
    v62 = v134;
    v63 = v128;
    v64 = v129;
    v65 = v130;
    v66 = v131;
    v67 = v132;
    WeatherService.fetchWeather<A, B, C, D, E, F, G, H, I, J>(for:including:_:_:_:_:_:_:_:_:_:options:completion:)();

    (*(v94 + 8))(v61, v81);
    (*(v112 + 8))(v62, v80);
    (*(v110 + 8))(v133, v111);
    (*(v108 + 8))(v67, v109);
    (*(v106 + 8))(v66, v107);
    (*(v104 + 8))(v65, v105);
    (*(v102 + 8))(v64, v103);
    (*(v99 + 8))(v63, v100);
    (*(v97 + 8))(v136, v98);
    (*(v95 + 8))(v135, v96);
    sub_100006F14(v140);
  }

  else
  {
    sub_1005B3D94(0xD000000000000022, 0x8000000100AE3610);
  }
}

uint64_t sub_100092230()
{
  v32 = type metadata accessor for Location();
  sub_1000037C4();
  v2 = v1;
  v29 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  sub_100071A38();
  sub_1001955B0();
  v31 = v3;
  sub_1001955B0();
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = v5;
  v33 = type metadata accessor for ProductRequirementsFactory.AppRequiredProducts();
  sub_1000037C4();
  v24 = v6;
  v22 = (*(v6 + 80) + v5 + 8) & ~*(v6 + 80);
  v8 = *(v7 + 64);
  Options = type metadata accessor for WeatherServiceFetchOptions();
  sub_1000037C4();
  v10 = v9;
  v25 = (v8 + *(v9 + 80) + v22) & ~*(v9 + 80);
  sub_100071A38();
  sub_1001955B0();
  v26 = v11;
  v12 = (v11 + 47) & 0xFFFFFFFFFFFFFFF8;
  v28 = type metadata accessor for OSSignpostID();
  sub_1000037C4();
  v14 = v13;
  v15 = (*(v13 + 80) + v12 + 16) & ~*(v13 + 80);
  v17 = *(v16 + 64);
  v23 = type metadata accessor for AppConfiguration();
  sub_1000037C4();
  v19 = v18;
  v20 = (v17 + *(v19 + 80) + v15) & ~*(v19 + 80);

  (*(v2 + 8))(v0 + v29, v32);

  sub_100006F14(v0 + v31);

  (*(v24 + 8))(v0 + v22, v33);
  (*(v10 + 8))(v0 + v25, Options);

  sub_100006F14(v0 + v26);

  (*(v14 + 8))(v0 + v15, v28);
  (*(v19 + 8))(v0 + v20, v23);

  return swift_deallocObject();
}

void sub_1000925F4()
{

  sub_1006A7AB4();
}

uint64_t sub_100092684()
{
  *(v1 - 128) = v0;

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1000926CC()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = 2112;

  return swift_errorRetain();
}

uint64_t sub_1000926F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100092818()
{
  sub_10022C350(&qword_100CAE2B0);
  v0 = type metadata accessor for DataEventTrait();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100A2C3F0;
  (*(v1 + 104))(v3 + v2, enum case for DataEventTrait.unique(_:), v0);
  type metadata accessor for OrientationData();
  sub_100068374(&qword_100CB5430, &type metadata accessor for OrientationData);
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_1000929B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for OrientationData();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10022C350(&qword_100CB5428);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - v9;
  (*(v4 + 16))(v6, a2, v3);
  sub_100068374(&qword_100CB5430, &type metadata accessor for OrientationData);
  SessionData.init(key:data:)();
  sub_10022C350(&qword_100CAE2B0);
  v11 = type metadata accessor for DataEventTrait();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100A2C3F0;
  (*(v12 + 104))(v14 + v13, enum case for DataEventTrait.unique(_:), v11);
  AccessSessionManager.push<A>(_:traits:file:line:)();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_100092C84(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void, unint64_t, unint64_t, void, void))
{
  started = type metadata accessor for StartMethod();
  sub_100003AE8(started);
  v7 = (*(v6 + 80) + 56) & ~*(v6 + 80);
  v9 = (*(v8 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for LocationAccessData();
  sub_100003AE8(v10);
  v12 = (v9 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for CellularRadioAccessTechnology();
  sub_100003AE8(v15);
  v17 = v16;
  v19 = v18;
  v20 = (v12 + v14 + *(v17 + 80)) & ~*(v17 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v7, *(v2 + v9), *(v2 + v9 + 8), v2 + v12, v2 + v20, *(v2 + v21), *(v2 + ((v21 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_100092E2C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a7;
  v46 = a5;
  v47 = a6;
  v43 = a3;
  v42 = a2;
  v44 = a9;
  v45 = a4;
  v12 = sub_10022C350(&qword_100CB54A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_10022C350(&qword_100CB54B0);
  __chkstk_darwin(v15 - 8);
  v17 = &v39 - v16;
  v18 = sub_10022C350(&qword_100CB54B8);
  __chkstk_darwin(v18 - 8);
  v20 = &v39 - v19;
  v21 = type metadata accessor for SessionData();
  v40 = *(v21 - 8);
  v41 = v21;
  __chkstk_darwin(v21);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  v24 = AccessTracker.isDiagnosticSubmissionAllowed.getter();
  started = type metadata accessor for StartMethod();
  v26 = started;
  if (v24)
  {
    (*(*(started - 8) + 16))(v20, v39, started);
    sub_10001B350(v20, 0, 1, v26);
    v27 = type metadata accessor for LocationAccessData();
    (*(*(v27 - 8) + 16))(v17, a10, v27);
    sub_10001B350(v17, 0, 1, v27);
    v28 = type metadata accessor for CellularRadioAccessTechnology();
    (*(*(v28 - 8) + 16))(v14, a11, v28);
    v29 = v14;
    v30 = 0;
    v31 = v28;
  }

  else
  {
    sub_10001B350(v20, 1, 1, started);
    v32 = type metadata accessor for LocationAccessData();
    sub_10001B350(v17, 1, 1, v32);
    v31 = type metadata accessor for CellularRadioAccessTechnology();
    v29 = v14;
    v30 = 1;
  }

  sub_10001B350(v29, v30, 1, v31);

  SessionData.init(utcOffset:languageCode:countryCode:startMethod:productType:locationAccess:cellularRadioAccessTechnology:userSegmentationTreatmentIDs:userSegmentationSegmentSetIDs:)();
  sub_10022C350(&qword_100CAE2B0);
  v33 = type metadata accessor for DataEventTrait();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100A2C3F0;
  (*(v34 + 104))(v36 + v35, enum case for DataEventTrait.unique(_:), v33);
  sub_100068374(&qword_100CB54C0, &type metadata accessor for SessionData);
  v37 = v41;
  AccessTracker.push<A>(data:traits:file:line:)();

  return (*(v40 + 8))(v23, v37);
}

void sub_100093304(uint64_t a1)
{
  v3 = type metadata accessor for MainAction();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0xD000000000000017;
  v37 = 0x8000000100ADB510;
  sub_1000955E0(a1, &v32, &unk_100CD81B0);
  if (v33)
  {
    sub_100013188(&v32, &v34);
    sub_1000161C0(&v34, v35);
    dispatch thunk of ShortDescribable.shortDescription.getter();
    sub_1000161C0(&v32, v33);
    v7 = dispatch thunk of ShortDescriptionType.describe(withIndentation:)();
    v9 = v8;
    sub_100006F14(&v32);
    v10._countAndFlagsBits = v7;
    v10._object = v9;
    String.append(_:)(v10);

    sub_100006F14(&v34);
  }

  else
  {
    sub_1000180EC(&v32, &unk_100CD81B0);
  }

  v11 = *(a1 + 40);
  if (*(v11 + 16))
  {
    v12._countAndFlagsBits = 23328;
    v12._object = 0xE200000000000000;
    String.append(_:)(v12);
    v13 = *(v11 + 16);
    if (v13)
    {
      v31[1] = v1;
      v14 = v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v15 = *(v4 + 72);

      do
      {
        sub_100050E14(v14, v6);
        sub_10006CD24(&qword_100CBCED0, 255, type metadata accessor for MainAction);
        v16 = dispatch thunk of CustomStringConvertible.description.getter();
        v18 = v17;
        sub_10004FA40(v6, type metadata accessor for MainAction);
        v34._countAndFlagsBits = v16;
        v34._object = v18;

        v19._countAndFlagsBits = 8236;
        v19._object = 0xE200000000000000;
        String.append(_:)(v19);

        String.append(_:)(v34);

        v14 += v15;
        --v13;
      }

      while (v13);
    }

    String.index(_:offsetBy:)();
    String.subscript.getter();

    v20 = static String._fromSubstring(_:)();
    v22 = v21;

    v36 = v20;
    v37 = v22;
    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
  }

  v25 = v36;
  v24 = v37;

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34._countAndFlagsBits = v29;
    *v28 = 141558275;
    *(v28 + 4) = 1752392040;
    *(v28 + 12) = 2081;
    v30 = sub_100078694(v25, v24, &v34._countAndFlagsBits);

    *(v28 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{private,mask.hash}s", v28, 0x16u);
    sub_100006F14(v29);
  }

  else
  {
  }
}

void sub_10009379C(void *a1)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CA3538);
  __chkstk_darwin(v4 - 8);
  v6 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v8);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v9);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v11);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v12);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v13);
  v105 = &v89 - v14;
  v101 = type metadata accessor for Location();
  sub_1000037C4();
  v98 = v15;
  v17 = *(v16 + 64);
  __chkstk_darwin(v18);
  v92 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v100 = &v89 - v20;
  v111 = type metadata accessor for LocationsAction();
  sub_1000037E8();
  __chkstk_darwin(v21);
  v23 = (&v89 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  v27 = type metadata accessor for MainAction();
  __chkstk_darwin(v27);
  v30 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = a1;
  v31 = a1[5];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v99 = v98 + 32;
    v112 = *(v28 + 72);
    v91 = v98 + 16;
    v90 = v17 + 7;
    v89 = (v98 + 8);
    v108 = v6;
    v109 = v23;
    v107 = v26;
    v110 = v27;
    do
    {
      sub_100050ED0(v33, v30, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_10016DB58(v30, v26, type metadata accessor for LocationsAction);
        sub_100050ED0(v26, v23, type metadata accessor for LocationsAction);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v97 = *(v23 + *(sub_10022C350(&qword_100CC8CE8) + 48));
            v52 = v98;
            v96 = *(v98 + 32);
            v26 = v100;
            v53 = v23;
            v54 = v101;
            v96(v100, v53, v101);
            v55 = type metadata accessor for TaskPriority();
            sub_10001B350(v105, 1, 1, v55);
            v56 = v92;
            (*(v52 + 16))(v92, v26, v54);
            sub_100035AD0(v106, __src, &qword_100CA48E0);
            v57 = (*(v52 + 80) + 48) & ~*(v52 + 80);
            v58 = v2;
            v59 = (v90 + v57) & 0xFFFFFFFFFFFFFFF8;
            v60 = swift_allocObject();
            v61 = sub_100018794(v60);
            *(v61 + 32) = v97;
            *(v61 + 40) = v58;
            v96((v61 + v57), v56, v54);
            v62 = &v26[v59];
            v2 = v58;
            v63 = v55;
            memcpy(v62, __src, 0x48uLL);
            v64 = v93;
            sub_100035AD0(v105, v93, &qword_100CA3538);
            LODWORD(v56) = sub_100024D10(v64, 1, v63);

            if (v56 == 1)
            {
              sub_1000180EC(v64, &qword_100CA3538);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v77 + 8))(v64, v63);
              sub_100037DE0();
            }

            v78 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v78)
            {
              swift_getObjectType();
              v79 = v78;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v79 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v105, &qword_100CA3538);
            sub_1000244CC();
            v86 = swift_allocObject();
            *(v86 + 16) = &unk_100A89578;
            *(v86 + 24) = v26;
            if (v6 | v79)
            {
              v114 = 0;
              v113 = 0;
              v115 = v79;
              v116 = v6;
            }

            sub_100019FBC();
            swift_task_create();

            (*v89)(v100, v101);
            goto LABEL_48;
          case 2u:
            sub_100028C04();
            sub_10004FBA0(v23, v44);
            sub_100818CA8(v106);
            goto LABEL_17;
          case 3u:
            v45 = *v23;
            v46 = v23[1];
            v47 = type metadata accessor for TaskPriority();
            v48 = v103;
            sub_10002CB04(v103);
            v49 = swift_allocObject();
            v50 = sub_100018794(v49);
            v50[4] = v2;
            v50[5] = v45;
            v50[6] = v46;
            v51 = v95;
            sub_100035AD0(v48, v95, &qword_100CA3538);
            sub_100069AB4(v51);

            if (v45 == 1)
            {
              sub_1000180EC(v51, &qword_100CA3538);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v74 + 8))(v51, v47);
              sub_100037DE0();
            }

            v75 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v75)
            {
              swift_getObjectType();
              v76 = v75;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v76 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v103, &qword_100CA3538);
            sub_1000244CC();
            v85 = swift_allocObject();
            *(v85 + 16) = &unk_100A89540;
            *(v85 + 24) = v26;
            if (v6 | v76)
            {
              v121 = 0;
              v122 = 0;
              v123 = v76;
              v124 = v6;
            }

            goto LABEL_34;
          case 4u:
            v37 = *v23;
            v38 = type metadata accessor for TaskPriority();
            v39 = v102;
            sub_10002CB04(v102);
            v40 = swift_allocObject();
            v41 = sub_100018794(v40);
            *(v41 + 32) = v2;
            *(v41 + 40) = v37;
            v42 = v39;
            v43 = v94;
            sub_100035AD0(v42, v94, &qword_100CA3538);
            sub_100069AB4(v43);

            if (v37 == 1)
            {
              sub_1000180EC(v43, &qword_100CA3538);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v71 + 8))(v43, v38);
              sub_100037DE0();
            }

            v72 = *(v26 + 2);
            v6 = *(v26 + 3);
            swift_unknownObjectRetain();

            if (v72)
            {
              swift_getObjectType();
              v73 = v72;
              dispatch thunk of Actor.unownedExecutor.getter();
              sub_10000EE08();
            }

            else
            {
              v73 = 0;
              v6 = 0;
            }

            sub_100017E80();
            sub_1000180EC(v102, &qword_100CA3538);
            sub_1000244CC();
            v84 = swift_allocObject();
            *(v84 + 16) = &unk_100A89558;
            *(v84 + 24) = v26;
            if (v6 | v73)
            {
              v117 = 0;
              v118 = 0;
              v119 = v73;
              v120 = v6;
            }

LABEL_34:
            sub_100019FBC();
            goto LABEL_47;
          case 5u:
            sub_10001CE44();
            sub_10004FBA0(v23, v65);
            v66 = type metadata accessor for TaskPriority();
            v67 = v104;
            sub_10002CB04(v104);
            sub_100035AD0(v106, __src, &qword_100CA48E0);
            v68 = swift_allocObject();
            v69 = sub_100018794(v68);
            *(v69 + 32) = v2;
            memcpy((v69 + 40), __src, 0x48uLL);
            sub_100035AD0(v67, v6, &qword_100CA3538);
            sub_100069AB4(v6);

            if (v67 == 1)
            {
              sub_1000180EC(v6, &qword_100CA3538);
            }

            else
            {
              TaskPriority.rawValue.getter();
              sub_100003B20();
              (*(v80 + 8))(v6, v66);
              sub_100037DE0();
            }

            v81 = *(v26 + 2);
            swift_unknownObjectRetain();

            if (v81)
            {
              swift_getObjectType();
              v82 = dispatch thunk of Actor.unownedExecutor.getter();
              v6 = v83;
              swift_unknownObjectRelease();
            }

            else
            {
              v82 = 0;
              v6 = 0;
            }

            sub_1000180EC(v104, &qword_100CA3538);
            sub_1000244CC();
            v87 = swift_allocObject();
            *(v87 + 16) = &unk_100A89528;
            *(v87 + 24) = v26;
            if (v6 | v82)
            {
              v125 = 0;
              v126 = 0;
              v127 = v82;
              v128 = v6;
            }

            sub_100019FBC();
            sub_100017E80();
LABEL_47:
            swift_task_create();

LABEL_48:
            sub_10001CE44();
            sub_10004FBA0(v26, v88);
            v23 = v109;
            goto LABEL_49;
          case 6u:
            sub_100028C04();
            sub_10004FBA0(v26, v70);
LABEL_17:
            sub_100017E80();
            goto LABEL_18;
          default:
            sub_10001CE44();
            sub_10004FBA0(v26, v34);
            v35 = &type metadata accessor for CurrentLocation;
            v36 = v23;
            goto LABEL_18;
        }
      }

      v35 = type metadata accessor for MainAction;
      v36 = v30;
LABEL_18:
      sub_10004FBA0(v36, v35);
LABEL_49:
      v33 += v112;
      --v32;
    }

    while (v32);
  }
}

uint64_t sub_1000944A0()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64))
  {
    sub_100006F14(v0 + 40);
  }

  return swift_deallocObject();
}

uint64_t sub_100094510()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_10009454C()
{
  v1 = type metadata accessor for Location();
  sub_1000037C4();
  v3 = v2;
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  if (*(v0 + v6 + 24))
  {
    sub_100006F14(v0 + v6);
  }

  return swift_deallocObject();
}

void sub_100094650(uint64_t a1)
{
  v37 = type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v3 = v2;
  __chkstk_darwin(v4);
  sub_1000038E4();
  v36 = v5;
  v35 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v7 = v6;
  __chkstk_darwin(v8);
  sub_1000038E4();
  v34 = v9;
  v10 = type metadata accessor for MainAction();
  __chkstk_darwin(v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v30 = (v3 + 8);
    v31 = v41;
    v29 = (v7 + 8);
    v32 = v12;
    v33 = v10;
    v21 = v34;
    do
    {
      sub_10004F14C(v19, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_10004F14C(v16, v12);
        type metadata accessor for EnvironmentAction();
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          sub_100040690();
          v22 = static OS_dispatch_queue.main.getter();
          v41[2] = sub_1002E5E20;
          v41[3] = v38;
          v39 = v22;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v41[0] = sub_1000742F0;
          v41[1] = &unk_100C4DCC8;
          v23 = _Block_copy(aBlock);

          static DispatchQoS.unspecified.getter();
          aBlock[0] = _swiftEmptyArrayStorage;
          sub_100074390();
          sub_10022C350(&qword_100CB4680);
          sub_1000743E8();
          v24 = v20;
          v25 = v36;
          v26 = v37;
          v12 = v32;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v27 = v39;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v23);

          v28 = v25;
          v20 = v24;
          (*v30)(v28, v26);
          (*v29)(v21, v35);
        }

        sub_10004F460(v12, type metadata accessor for EnvironmentAction);
      }

      sub_10004F460(v16, type metadata accessor for MainAction);
      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

void sub_100094A24(uint64_t a1)
{
  v36 = type metadata accessor for WeatherDataAction();
  sub_1000037E8();
  __chkstk_darwin(v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v37 = &v32 - v6;
  v35 = type metadata accessor for EnvironmentAction();
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for MainAction();
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    do
    {
      sub_100066BF8(v19, v16, type metadata accessor for MainAction);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 0xAu:
        case 0xBu:
        case 0xDu:
        case 0xEu:
        case 0x10u:
        case 0x11u:
          v21 = type metadata accessor for MainAction;
          v22 = v16;
          goto LABEL_5;
        case 2u:
          sub_1000500A8(v16, v12, type metadata accessor for EnvironmentAction);
          sub_100066BF8(v12, v9, type metadata accessor for EnvironmentAction);
          if (swift_getEnumCaseMultiPayload() == 12)
          {
            sub_1001A030C(1);
          }

          v23 = type metadata accessor for EnvironmentAction;
          sub_10004F72C(v12, type metadata accessor for EnvironmentAction);
          v22 = v9;
LABEL_15:
          v21 = v23;
LABEL_5:
          sub_10004F72C(v22, v21);
          break;
        case 9u:
          v24 = v37;
          sub_1000500A8(v16, v37, type metadata accessor for WeatherDataAction);
          sub_100066BF8(v24, v4, type metadata accessor for WeatherDataAction);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:

              v27 = sub_10022C350(&qword_100CAC0C8);
              v28 = v27[12];
              v33 = v27[16];
              v34 = v28;
              v29 = v27[20];
              sub_1001A030C(1);
              sub_10001ED60();
              sub_100010144();
              sub_10004F72C(&v4[v29], v30);
              sub_10004F72C(&v4[v33], type metadata accessor for PreprocessedWeatherData);
              v21 = type metadata accessor for WeatherData;
              v26 = v34;
              goto LABEL_19;
            case 5u:
              sub_10001ED60();

              sub_10022C350(&qword_100CAC0B8);
              sub_100010144();
LABEL_19:
              v22 = &v4[v26];
              goto LABEL_5;
            case 6u:
              sub_10001ED60();

              v25 = *(sub_10022C350(&qword_100CAC0C0) + 48);
              type metadata accessor for AvailableDataSets();
              goto LABEL_21;
            case 8u:
              sub_10001ED60();

              v25 = *(sub_10022C350(&qword_100CAC0B0) + 48);
              type metadata accessor for WeatherStatisticsModel();
LABEL_21:
              sub_1000037E8();
              (*(v31 + 8))(&v4[v25]);
              break;
            default:
              v23 = type metadata accessor for WeatherDataAction;
              sub_10004F72C(v37, type metadata accessor for WeatherDataAction);
              v22 = v4;
              goto LABEL_15;
          }

          break;
        case 0xCu:
        case 0xFu:
        case 0x12u:
        case 0x13u:
          break;
        default:
          if (*v16 == 1)
          {
            sub_1001A030C(0);
          }

          break;
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_100094F38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100094F94(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000038D8();
  v4(v3);
  sub_1000037E8();
  v5 = sub_100003940();
  v6(v5);
  return a2;
}

uint64_t sub_100094FEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000038D8();
  v5(v4);
  sub_1000037E8();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_100095048()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000950A0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000950F8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095158()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000951B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095210(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100095270()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000952C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CADBA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100095334(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA6898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000953B8(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100003A00();
  sub_10022C350(&qword_100CA65D8);
  sub_100003928();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = a3[6];
LABEL_5:

    return sub_100024D10(v4 + v9, v3, v8);
  }

  sub_10022C350(&unk_100CB2CF0);
  sub_100003928();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = a3[9];
    goto LABEL_5;
  }

  v13 = *(v4 + a3[10]);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1000954DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v7 = sub_100003A24(a1, a2);
  v8 = sub_10022C350(v7);
  sub_100007074(v8, a4);
  v9 = sub_10000703C(v8, a4);
  v10 = a5(0);

  return sub_10001B350(v9, 1, 1, v10);
}

uint64_t sub_100095588()
{
  sub_100003A00();
  sub_10022C350(v1);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000955E0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10000399C(a1, a2, a3);
  sub_1000037E8();
  (*(v5 + 16))(v3, v4);
  return v3;
}

uint64_t sub_100095630(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  v7 = sub_100003A24(a1, a2);
  v8 = sub_10022C350(v7);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100060DE0(a1, &v12 - v9, a2);
  a4(v10);
  EnvironmentValues.subscript.setter();
  return sub_100283C38(a1, a2);
}

void sub_100095730()
{
  sub_10000C778();
  sub_100037EDC();
  sub_10003BC6C();
  sub_100006C90();
  __chkstk_darwin(v1);
  sub_100008064();
  __chkstk_darwin(v2);
  sub_10001D3DC();
  sub_100069CDC();
  sub_100052210();
  v3 = sub_100030700();
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_10022C350(&qword_100CA4CC8);
      sub_100024C98(*(v4 + 48));
    }

    else
    {
      sub_10003CA90();
    }
  }

  else
  {
    sub_100020D54();
    v5();
    v6 = sub_1000301AC();
    v0(v6);

    sub_10022C350(&qword_100CA4CC8);
    sub_10003A488();
    sub_100025498(v7);
    sub_100018074();
    v8 = sub_10003203C();
    sub_1000C890C(v8, v9, &qword_100CA4CB8);
    swift_endAccess();
  }

  sub_10000536C();
}

uint64_t sub_1000958A8@<X0>(void (*a1)(void *__return_ptr, uint64_t *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_10009F4CC(a1, a2, *a3, *(a3 + 8), *(a3 + 16), *(a3 + 24), 0x776569566E69614DLL, 0xED00006C65646F4DLL);
  *a4 = result;
  return result;
}

uint64_t sub_100095900(uint64_t a1)
{
  v2 = v1;
  v253 = *v1;
  v4 = sub_10022C350(&unk_100CE49F0);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003918(&v242 - v6);
  v7 = type metadata accessor for WeatherDataAction();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_100003848();
  v277 = v9;
  sub_10000386C();
  __chkstk_darwin(v10);
  sub_10000E70C();
  v276 = v11;
  sub_1000038CC();
  v12 = type metadata accessor for EnvironmentAction();
  v13 = sub_10001BA94(v12, &v290);
  __chkstk_darwin(v13);
  sub_100003848();
  v267 = v14;
  sub_10000386C();
  __chkstk_darwin(v15);
  sub_10000E70C();
  v272 = v16;
  sub_1000038CC();
  v260 = type metadata accessor for Location();
  sub_1000037C4();
  v18 = v17;
  __chkstk_darwin(v19);
  sub_1000037D8();
  sub_100003918(v21 - v20);
  v22 = type metadata accessor for LocationViewAction();
  v23 = sub_10001BA94(v22, &v289);
  __chkstk_darwin(v23);
  sub_100003848();
  v268 = v24;
  sub_10000386C();
  __chkstk_darwin(v25);
  sub_10000E70C();
  v275 = v26;
  v27 = sub_1000038CC();
  v28 = type metadata accessor for ViewState.SecondaryViewState(v27);
  v29 = sub_10001BA94(v28, &v276);
  __chkstk_darwin(v29);
  sub_1000037D8();
  v32 = sub_100003918(v31 - v30);
  v33 = type metadata accessor for ModalViewState(v32);
  v34 = sub_10001BA94(v33, v282);
  __chkstk_darwin(v34);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v35);
  sub_100003908();
  __chkstk_darwin(v36);
  sub_100003908();
  __chkstk_darwin(v37);
  sub_10000E70C();
  v39 = sub_100003918(v38);
  v40 = type metadata accessor for ViewState(v39);
  v41 = sub_10001BA94(v40, &v280);
  __chkstk_darwin(v41);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v42);
  sub_10000E70C();
  sub_100003918(v43);
  v44 = type metadata accessor for NotificationsOptInAction();
  v45 = sub_10001BA94(v44, &v291);
  __chkstk_darwin(v45);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v46);
  v273 = &v242 - v47;
  sub_10000386C();
  __chkstk_darwin(v48);
  sub_10000E70C();
  sub_100003918(v49);
  v50 = type metadata accessor for ModalViewAction();
  v51 = sub_10001BA94(v50, &v288);
  __chkstk_darwin(v51);
  sub_100003848();
  v270 = v52;
  sub_10000386C();
  __chkstk_darwin(v53);
  sub_10000E70C();
  v274 = v54;
  sub_1000038CC();
  v55 = type metadata accessor for LocationViewerViewAction();
  v56 = sub_10001BA94(v55, &v278);
  __chkstk_darwin(v56);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_10000E70C();
  sub_100003918(v58);
  v59 = type metadata accessor for ListViewAction();
  v60 = sub_10001BA94(v59, &v277);
  __chkstk_darwin(v60);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v61);
  sub_10000E70C();
  sub_100003918(v62);
  v63 = type metadata accessor for ViewAction();
  v64 = sub_10001BA94(v63, &v287);
  __chkstk_darwin(v64);
  sub_100003848();
  v269 = v65;
  sub_10000386C();
  __chkstk_darwin(v66);
  sub_10000E70C();
  v278 = v67;
  sub_1000038CC();
  type metadata accessor for MainAction();
  sub_1000037C4();
  v69 = v68;
  __chkstk_darwin(v70);
  sub_1000037D8();
  v73 = v72 - v71;
  result = sub_100056DD4(a1);
  v75 = v69;
  v262 = a1;
  v76 = *(a1 + 40);
  v77 = *(v76 + 16);
  if (v77)
  {
    v78 = 0;
    v280 = v76 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
    v249 = v264 + 8;
    v248 = v265 + 8;
    v251 = v18 + 32;
    v250 = v18 + 16;
    v252 = v18 + 8;
    v245 = 0x8000000100ABA410;
    v247 = "e";
    v246 = xmmword_100A3AEB0;
    v271 = v2;
    v263 = v7;
    v279 = v75;
    while (2)
    {
      if (v78 >= *(v76 + 16))
      {
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        __break(1u);
LABEL_127:
        __break(1u);
        JUMPOUT(0x10009734CLL);
      }

      v79 = v78++;
      sub_100050B70(v280 + *(v75 + 72) * v79, v73, type metadata accessor for MainAction);
      result = swift_getEnumCaseMultiPayload();
      switch(result)
      {
        case 1:
        case 3:
        case 4:
        case 10:
        case 11:
        case 13:
        case 14:
        case 16:
        case 17:
          sub_1000142B0();
          v81 = v73;
LABEL_6:
          result = sub_10004F4C0(v81, v80);
          goto LABEL_26;
        case 2:
          v105 = sub_10002FDCC();
          sub_100050048(v105, v272, v106);
          v107 = sub_1000167A4();
          sub_100050B70(v107, v267, v108);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
            case 0xDu:
            case 0xEu:
            case 0xFu:
            case 0x10u:
              goto LABEL_15;
            case 3u:
            case 4u:
            case 5u:
            case 0xAu:
            case 0xCu:
              v113 = type metadata accessor for EnvironmentAction;
              sub_10004F4C0(v272, type metadata accessor for EnvironmentAction);
              v88 = v267;
              goto LABEL_23;
            case 0xBu:
              if (qword_100CA1F88 != -1)
              {
                swift_once();
              }

              sub_10016F958(&qword_100CAC0A8);
              v18 = v253;
              v185 = v271;
              Configurable.setting<A>(_:)();
              v186 = v284 + 1;
              if (__OFADD__(v284, 1))
              {
                goto LABEL_125;
              }

              ++v284;
              sub_1000135A0();
              sub_10016F958(&qword_100CAC0D0);
              Updatable.save<A>(setting:value:)();
              v2 = v185;
              if (v186 != 2)
              {
                goto LABEL_69;
              }

              sub_100040690();
              v244 = static OS_dispatch_queue.main.getter();
              sub_10022C350(&unk_100CE49D0);
              v18 = v185;
              v187 = swift_allocObject();
              *(v187 + 16) = v246;

              v188 = OnlyOnceDeferredPromise.promise.getter();

              if (!v188)
              {
                goto LABEL_127;
              }

              *(v187 + 32) = v188;

              v189 = OnlyOnceDeferredPromise.promise.getter();

              if (!v189)
              {
                goto LABEL_126;
              }

              *(v187 + 40) = v189;
              v190 = v244;
              when<A>(on:_:)();

              v191 = static OS_dispatch_queue.main.getter();

              Promise.then<A>(on:closure:)();

              v2 = v18;
LABEL_69:
              v192 = sub_10000E8D8();
              break;
            default:
              v18 = *v267;
              v194 = *(v262 + 56) + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
              swift_beginAccess();
              if (*(v194 + 1) == 2)
              {
                v194 = 0xED000064656E696DLL;
                switch(v18)
                {
                  case 1:

                    goto LABEL_107;
                  case 2:
                    v194 = v245;
                    break;
                  case 3:
                    v194 = 0xE600000000000000;
                    break;
                  case 4:
                    v194 = 0xEA00000000006465;
                    break;
                  default:
                    break;
                }

                v222 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v222)
                {
LABEL_107:
                  sub_10000FB84();
                  v2 = v271;
                  if ((dispatch thunk of NotificationsOptInManagerType.loweredPermissionsSheetShown()() & 1) == 0)
                  {
                    sub_10000FB84();
                    v2 = v271;
                    dispatch thunk of NotificationsOptInManagerType.didShowLoweredPermissionsSheet()();
                    v223 = v261;
                    swift_storeEnumTagMultiPayload();
                    v194 = v2;
                    sub_1002F49C0(v223);
                    sub_10001E7B4();
                    sub_10004F4C0(v223, v224);
                  }
                }
              }

              sub_10003A140();
              sub_10002289C();
              sub_1000113EC();
              sub_100050B70(v225, v226, v227);
              if (sub_100020E64() == 1)
              {
                v7 = v263;
                if (v18 == 2)
                {

                  asyncMain(block:)();
                }
              }

              else
              {
                sub_10001937C();
                sub_10004F4C0(v194, v228);
                v7 = v263;
              }

              OnlyOnceDeferredPromise.resolve(_:)();

LABEL_15:
              v88 = sub_10000E8D8();
              goto LABEL_24;
          }

          goto LABEL_95;
        case 5:
          v82 = sub_10002FDCC();
          sub_100050048(v82, v273, v83);
          sub_1000167A4();
          sub_1000113EC();
          sub_100050B70(v84, v85, v86);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_10001E7B4();
              sub_10004F4C0(v273, v171);
              sub_100018398();
              result = v172(v266, v260);
              goto LABEL_25;
            case 2u:
              v113 = type metadata accessor for NotificationsOptInAction;
              sub_10004F4C0(v273, type metadata accessor for NotificationsOptInAction);
              v88 = v266;
              goto LABEL_23;
            case 3u:
              sub_10001E7B4();
              sub_10004F4C0(v273, v168);
              type metadata accessor for Date();
              sub_1000037E8();
              result = (*(v169 + 8))(v266, v170);
              goto LABEL_25;
            case 7u:
              v7 = v2[12];
              sub_10001BCD0();
              dispatch thunk of NotificationsOptInManagerType.didDismissResubscriptionTip()();
              goto LABEL_8;
            case 0xAu:
            case 0xFu:

              asyncMain(block:)();

              goto LABEL_8;
            case 0xBu:
              v173 = *(v262 + 64);
              v174 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
              sub_100051DA8();
              sub_10003BD40(v173 + v174, v175, &v285);
              v176 = v256;
              if (*(v249 + *(v256 + 36)) == 1)
              {
                v177 = *v7;
                v178 = objc_opt_self();
                v244 = v174;
                v179 = v173;
                v180 = v7;
                v181 = v178;

                v182 = [v181 currentDevice];
                [v182 userInterfaceIdiom];

                v7 = *(v180 + *(v176 + 28));
                sub_1000080BC();
                v183 = v180;
                v173 = v179;
                v174 = v244;
                sub_10004F4C0(v183, v184);

                if (v7)
                {
                  goto LABEL_78;
                }
              }

              else
              {
                sub_1000080BC();
                sub_10004F4C0(v7, v195);
              }

              sub_10002289C();
              sub_10003BD40(v173 + v196, v197, &v271);
              v177 = sub_100020E64();
              sub_10001937C();
              sub_10004F4C0(v7, v198);
              if (v177 == 6)
              {
                v177 = v271;

                asyncMain(block:)();
              }

LABEL_78:
              sub_100051DA8();
              v244 = v173;
              sub_10003BD40(v173 + v174, v199, &v286);
              v200 = v256;
              sub_1000113EC();
              sub_100050B70(v201, v202, v203);
              if (swift_getEnumCaseMultiPayload() == 1)
              {
                sub_1000080BC();
                sub_10004F4C0(v7, v204);
                sub_10004F4C0(v177, type metadata accessor for ViewState.SecondaryViewState);
                v18 = v254;
                goto LABEL_93;
              }

              v243 = *v177;
              v18 = v254;
              if (*(v248 + *(v200 + 36)) == 1)
              {
                v205 = v7;
                v206 = [objc_opt_self() currentDevice];
                [v206 userInterfaceIdiom];

                v7 = *(v205 + *(v200 + 28));
                sub_1000080BC();
                sub_10004F4C0(v205, v207);

                if ((v7 & 1) == 0)
                {
                  goto LABEL_93;
                }
              }

              else
              {
                sub_1000080BC();
                sub_10004F4C0(v7, v214);
              }

              sub_10002289C();
              sub_10003BD40(v244 + v215, v216, &v270);
              v217 = sub_100020E64();
              sub_10001937C();
              sub_10004F4C0(v7, v218);
              if (v217 == 6)
              {

                asyncMain(block:)();
              }

LABEL_93:
              sub_10002289C();
              sub_100050B70(v244 + v219, v18, v220);
              if (sub_100020E64() == 1)
              {
                v2 = v271;

                asyncMain(block:)();

                sub_10001E7B4();
                v192 = v273;
                goto LABEL_95;
              }

              sub_10001E7B4();
              sub_10004F4C0(v273, v221);
              sub_10001937C();
              v161 = v18;
              break;
            case 0xEu:
              v7 = v2[12];
              sub_10001BCD0();
              dispatch thunk of NotificationsOptInManagerType.resetTappedAllowNotifications()();
              goto LABEL_8;
            default:
LABEL_8:
              sub_10001E7B4();
              v88 = v273;
              goto LABEL_24;
          }

LABEL_97:
          result = sub_10004F4C0(v161, v162);
          v2 = v271;
          goto LABEL_98;
        case 6:
          v114 = sub_10002FDCC();
          sub_100050048(v114, v278, v115);
          v116 = sub_1000167A4();
          sub_100050B70(v116, v269, v117);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              sub_1000113EC();
              sub_100050048(v142, v143, v144);
              sub_1000167A4();
              sub_1000113EC();
              sub_100050B70(v145, v146, v147);
              EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
              v75 = v279;
              switch(EnumCaseMultiPayload)
              {
                case 3:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  v75 = v279;
                  break;
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                  break;
                default:
                  v208 = type metadata accessor for LocationViewerViewAction;
                  sub_10004F4C0(v259, type metadata accessor for LocationViewerViewAction);
                  v209 = sub_1000056A0();
                  sub_10004F4C0(v209, v210);
                  v211 = &v281;
                  goto LABEL_85;
              }

              v140 = type metadata accessor for LocationViewerViewAction;
              v141 = &v283;
LABEL_40:
              sub_10004F4C0(*(v141 - 32), v140);
              v81 = sub_1000056A0();
              goto LABEL_6;
            case 2u:
            case 6u:
            case 7u:
            case 8u:
            case 9u:
LABEL_19:
              v88 = sub_1000056A0();
              goto LABEL_24;
            case 3u:
            case 4u:
            case 5u:
              v113 = type metadata accessor for ViewAction;
              sub_10004F4C0(v278, type metadata accessor for ViewAction);
              v88 = v269;
              goto LABEL_23;
            default:
              sub_1000113EC();
              sub_100050048(v133, v134, v135);
              sub_1000167A4();
              sub_1000113EC();
              sub_100050B70(v136, v137, v138);
              v139 = swift_getEnumCaseMultiPayload();
              v75 = v279;
              switch(v139)
              {
                case 1:
                case 4:
                case 5:
                case 6:
                case 7:
                case 9:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                  goto LABEL_37;
                case 2:
                  v208 = type metadata accessor for ListViewAction;
                  sub_10004F4C0(v258, type metadata accessor for ListViewAction);
                  v240 = sub_1000056A0();
                  sub_10004F4C0(v240, v241);
                  v211 = &v279;
LABEL_85:
                  v81 = *(v211 - 32);
                  v80 = v208;
                  v75 = v279;
                  goto LABEL_6;
                case 3:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  goto LABEL_102;
                case 8:
                  sub_10003A140();
                  v230 = v229 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
                  swift_beginAccess();
                  v231 = *(v230 + 2);
                  if (v231 > 3 || v231 == 2)
                  {
                    sub_1002F419C();
                  }

                  sub_10004E434();
                  sub_10004F4C0(*(v233 - 256), v234);
                  goto LABEL_19;
                case 10:
                  sub_1002F419C();
LABEL_102:
                  v75 = v279;
LABEL_37:
                  sub_10004E434();
                  goto LABEL_40;
                default:
                  sub_10004E434();
                  sub_10004F4C0(*(v235 - 256), v236);
                  v237 = sub_1000056A0();
                  sub_10004F4C0(v237, v238);
                  type metadata accessor for LocationModel();
                  sub_1000037E8();
                  result = (*(v239 + 8))(v255);
                  goto LABEL_26;
              }
          }

        case 7:
          v89 = sub_10002FDCC();
          sub_100050048(v89, v274, v90);
          v91 = sub_1000167A4();
          sub_100050B70(v91, v270, v92);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v75 = v279;
              switch(*v270)
              {
                case 3:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowNotifications()();
                  sub_1000245BC();
                  swift_storeEnumTagMultiPayload();
                  sub_1002F49C0(v18);
                  v75 = v279;
                  sub_10001E7B4();
                  sub_10004F4C0(v18, v213);
                  break;
                case 5:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowLocation()();
                  v75 = v279;
                  break;
                default:
                  break;
              }

              v81 = sub_10002C5C8();
              goto LABEL_6;
            case 2u:
              switch(*v270)
              {
                case 1:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didEnterSettingsApp()();
                  break;
                case 2:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowLocation()();
                  sub_1000245BC();
                  goto LABEL_88;
                case 3:
                  v7 = v2[12];
                  sub_10001BCD0();
                  dispatch thunk of NotificationsOptInManagerType.didTapAllowNotifications()();
                  sub_1000245BC();
LABEL_88:
                  swift_storeEnumTagMultiPayload();
                  sub_1002F49C0(v18);
                  sub_10001E7B4();
                  sub_10004F4C0(v18, v212);
                  break;
                default:
                  goto LABEL_10;
              }

              break;
            case 4u:
            case 5u:
            case 6u:
              break;
            default:
              v113 = type metadata accessor for ModalViewAction;
              sub_10004F4C0(v274, type metadata accessor for ModalViewAction);
              v88 = v270;
              goto LABEL_23;
          }

LABEL_10:
          v88 = sub_10002C5C8();
          goto LABEL_24;
        case 8:
          v93 = sub_10002FDCC();
          sub_100050048(v93, v275, v94);
          v95 = sub_1000167A4();
          sub_100050B70(v95, v268, v96);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 1u:
              v118 = sub_100016788();
              sub_10004F4C0(v118, v119);
              v120 = sub_10022C350(&qword_100CA6658);
              v121 = v268;
              sub_1000180EC(&v268[*(v120 + 64)], &unk_100CB2CF0);
              v87 = type metadata accessor for LocationComponentAction;
              v88 = v121;
              break;
            case 2u:
              v122 = sub_100016788();
              sub_10004F4C0(v122, v123);
              v87 = type metadata accessor for LocationFooterAction;
              v88 = v268;
              break;
            case 3u:
            case 4u:
            case 5u:
            case 6u:
              goto LABEL_13;
            default:
              sub_100018398();
              v18 = v257;
              v244 = v77;
              v97 = v260;
              v98(v257, v268);
              v99 = v2[12];
              v2 = v271[13];
              sub_1000161C0(v271 + 9, v99);
              dispatch thunk of NotificationsOptInManagerType.didDismissTip(for:)();
              v243 = *(sub_10022C350(&qword_100CAC0D8) + 48);
              sub_100018398();
              v100 = v261;
              v101(v261, v18, v97);
              v7 = v271[12];
              sub_10001BCD0();
              *(v100 + v243) = dispatch thunk of NotificationsOptInManagerType.tipDismissalOverThreshold()() & 1;
              swift_storeEnumTagMultiPayload();
              sub_1002F49C0(v100);
              sub_10001E7B4();
              sub_10004F4C0(v100, v102);
              sub_100018398();
              v103 = v97;
              v77 = v244;
              v104(v18, v103);
LABEL_13:
              v88 = sub_100016788();
              break;
          }

LABEL_24:
          result = sub_10004F4C0(v88, v87);
          goto LABEL_25;
        case 9:
          v109 = sub_10002FDCC();
          sub_100050048(v109, v276, v110);
          v111 = sub_1000167A4();
          sub_100050B70(v111, v277, v112);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 4u:
              v149 = v277;
              v150 = *v277;
              v18 = v277[1];
              v151 = sub_10022C350(&qword_100CAC0C8);
              v152 = *(v151 + 48);
              v153 = *(v151 + 64);
              sub_1000379DC();
              sub_10004F4C0(v149 + v154, v155);
              sub_10004F4C0(v149 + v153, type metadata accessor for PreprocessedWeatherData);
              sub_10004F4C0(v149 + v152, type metadata accessor for WeatherData);
              goto LABEL_43;
            case 5u:
              v129 = sub_100003DF0();
              sub_10004F4C0(v129, v130);
              v131 = v277;

              sub_10022C350(&qword_100CAC0B8);
              sub_1000379DC();
              v88 = v131 + v132;
              goto LABEL_24;
            case 6u:
              v156 = v277;
              v150 = *v277;
              v18 = v277[1];
              v152 = *(sub_10022C350(&qword_100CAC0C0) + 48);
              type metadata accessor for AvailableDataSets();
              sub_1000037E8();
              (*(v157 + 8))(&v156[v152]);
LABEL_43:
              sub_10003A140();
              sub_1000113EC();
              sub_1001A00C8(v158, v159);
              v160 = type metadata accessor for CurrentLocation();
              if (sub_100024D10(v152, 1, v160) == 1)
              {
                sub_1000180EC(v152, &unk_100CE49F0);

LABEL_45:
                v161 = sub_100003DF0();
                goto LABEL_97;
              }

              v163 = CurrentLocation.id.getter();
              v165 = v164;
              sub_10004F4C0(v152, &type metadata accessor for CurrentLocation);
              if (v150 == v163 && v18 == v165)
              {
              }

              else
              {
                v167 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v167 & 1) == 0)
                {
                  goto LABEL_45;
                }
              }

              v2 = v271;

              OnlyOnceDeferredPromise.resolve(_:)();

              v192 = sub_100003DF0();
LABEL_95:
              result = sub_10004F4C0(v192, v193);
LABEL_98:
              v7 = v263;
LABEL_25:
              v75 = v279;
LABEL_26:
              if (v77 == v78)
              {
                return result;
              }

              continue;
            case 8u:
              v124 = sub_100003DF0();
              sub_10004F4C0(v124, v125);
              v18 = v277;

              v126 = *(sub_10022C350(&qword_100CAC0B0) + 48);
              type metadata accessor for WeatherStatisticsModel();
              sub_1000037E8();
              result = (*(v127 + 8))(v18 + v126, v128);
              goto LABEL_25;
            default:
              v113 = type metadata accessor for WeatherDataAction;
              sub_10004F4C0(v276, type metadata accessor for WeatherDataAction);
              v88 = v277;
LABEL_23:
              v87 = v113;
              goto LABEL_24;
          }

        default:
          goto LABEL_26;
      }
    }
  }

  return result;
}

void sub_100097558(uint64_t a1)
{
  v44 = type metadata accessor for Location.Identifier();
  v2 = *(v44 - 8);
  __chkstk_darwin(v44);
  sub_1000038E4();
  v43 = v3;
  v4 = type metadata accessor for SavedLocation();
  v42 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  sub_1000038E4();
  v41 = v5;
  v6 = type metadata accessor for LocationsAction();
  sub_1000037E8();
  __chkstk_darwin(v7);
  v9 = (&v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for MainAction();
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  v17 = *(a1 + 40);
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v20 = *(v14 + 72);
    v38 = (v2 + 8);
    v39 = v13;
    v40 = v6;
    do
    {
      sub_100050F90(v19, v16, type metadata accessor for MainAction);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_10016DBB8(v16, v12);
        sub_100050F90(v12, v9, type metadata accessor for LocationsAction);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 1u:
            v25 = sub_10001FA2C();
            sub_10004FC50(v25, v26);
            type metadata accessor for Location();
            sub_1000037E8();
            (*(v27 + 8))(v9);
            break;
          case 2u:
          case 5u:
          case 6u:
            sub_10004FC50(v12, type metadata accessor for LocationsAction);
            v21 = v9;
            v22 = type metadata accessor for LocationsAction;
            goto LABEL_7;
          case 3u:
            v21 = sub_10001FA2C();
            goto LABEL_7;
          case 4u:
            v28 = *v9;
            v29 = *(v46 + 56);
            v30 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_locations;
            v31 = type metadata accessor for LocationsState();
            if ((v28 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_18:
              __break(1u);
              JUMPOUT(0x1000979D0);
            }

            v32 = *(v29 + v30 + *(v31 + 20));
            if (v28 >= *(v32 + 16))
            {
              goto LABEL_18;
            }

            v33 = v41;
            sub_100050F90(v32 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v28, v41, &type metadata accessor for SavedLocation);
            sub_1000161C0((v45 + 16), *(v45 + 40));
            v34 = v43;
            SavedLocation.identifier.getter();
            sub_100588588();
            (*v38)(v34, v44);
            sub_10004FC50(v33, &type metadata accessor for SavedLocation);
            v35 = sub_10001FA2C();
            sub_10004FC50(v35, v36);
            break;
          default:
            v23 = sub_10001FA2C();
            sub_10004FC50(v23, v24);
            v22 = &type metadata accessor for CurrentLocation;
            v21 = v9;
            goto LABEL_7;
        }
      }

      else
      {
        v22 = type metadata accessor for MainAction;
        v21 = v16;
LABEL_7:
        sub_10004FC50(v21, v22);
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }
}

unint64_t sub_1000979EC()
{
  result = qword_100CE46B0;
  if (!qword_100CE46B0)
  {
    sub_10022E824(&qword_100CE46B8);
    sub_100099A08();
    sub_10006768C(&qword_100CE46A0, &qword_100CE46A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE46B0);
  }

  return result;
}

uint64_t sub_100097AA4()
{
  sub_100003A00();
  sub_10022C350(v1);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_100097CA8()
{

  sub_1000244CC();

  return swift_deallocObject();
}

uint64_t sub_100097CF4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100097D4C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_100097DA4(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = sub_10000C76C();
  v3 = type metadata accessor for MainViewSheetViewModifier(v2);
  sub_100003810(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v6, v7);
}

uint64_t sub_100097E3C@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v54 = a2;
  v3 = type metadata accessor for UserInterfaceSizeClass();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v51);
  v6 = &v47 - v5;
  v7 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v7 - 8);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  v15 = sub_10022C350(&qword_100CCF2F8);
  __chkstk_darwin(v15 - 8);
  v17 = &v47 - v16;
  v18 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v18);
  v49 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  v23 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v23);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a1 + 8);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v22, type metadata accessor for MainViewModel);
  if (sub_100024D10(v17, 1, v23) != 1)
  {
    sub_10009A650();
    sub_1008D1684();
    v29 = v52;
    v28 = v53;
    (*(v52 + 104))(v11, enum case for UserInterfaceSizeClass.compact(_:), v53);
    sub_10001B350(v11, 0, 1, v28);
    v30 = *(v51 + 12);
    sub_100095588();
    sub_100095588();
    v31 = v11;
    if (sub_100024D10(v6, 1, v28) == 1)
    {
      sub_1000180EC(v11, &qword_100CA6028);
      sub_1000180EC(v14, &qword_100CA6028);
      if (sub_100024D10(&v6[v30], 1, v28) == 1)
      {
        sub_1000180EC(v6, &qword_100CA6028);
LABEL_11:
        v37 = v49;
        sub_100095730();
        v38 = *(v37 + 8);

        sub_100097D4C(v37, type metadata accessor for MainViewModel);
        v39 = *(v38 + 16);

        sub_1008807AC(v39 != 0, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58);
        goto LABEL_12;
      }
    }

    else
    {
      v51 = v25;
      v32 = v50;
      sub_100095588();
      if (sub_100024D10(&v6[v30], 1, v28) != 1)
      {
        v34 = v47;
        (*(v29 + 32))(v47, &v6[v30], v28);
        sub_100081574(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        v36 = *(v29 + 8);
        v36(v34, v28);
        sub_1000180EC(v31, &qword_100CA6028);
        sub_1000180EC(v14, &qword_100CA6028);
        v36(v32, v28);
        sub_1000180EC(v6, &qword_100CA6028);
        v25 = v51;
        if (v35)
        {
          goto LABEL_11;
        }

LABEL_9:
        v33 = sub_1008809CC();
LABEL_12:
        v27 = v33;
        result = sub_100097D4C(v25, type metadata accessor for MainViewModel.ModalModule);
        goto LABEL_13;
      }

      sub_1000180EC(v11, &qword_100CA6028);
      sub_1000180EC(v14, &qword_100CA6028);
      (*(v29 + 8))(v32, v28);
      v25 = v51;
    }

    sub_1000180EC(v6, &qword_100CA64E8);
    goto LABEL_9;
  }

  result = sub_1000180EC(v17, &qword_100CCF2F8);
  v27 = 0;
LABEL_13:
  *v54 = v27 & 1;
  return result;
}

uint64_t sub_100098494(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100098508@<X0>(_BYTE *a1@<X8>)
{
  v38 = a1;
  v1 = type metadata accessor for UserInterfaceSizeClass();
  v36 = *(v1 - 8);
  v37 = v1;
  __chkstk_darwin(v1);
  v33 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10022C350(&qword_100CA64E8);
  __chkstk_darwin(v35);
  v4 = &v33 - v3;
  v5 = sub_10022C350(&qword_100CA6028);
  __chkstk_darwin(v5 - 8);
  v34 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v33 - v8;
  __chkstk_darwin(v10);
  v12 = &v33 - v11;
  v13 = sub_10022C350(&qword_100CCF2F8);
  __chkstk_darwin(v13 - 8);
  v15 = &v33 - v14;
  v16 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v19);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v18, type metadata accessor for MainViewModel);
  if (sub_100024D10(v15, 1, v19) == 1)
  {
    result = sub_1000180EC(v15, &qword_100CCF2F8);
LABEL_12:
    v29 = 0;
    goto LABEL_13;
  }

  sub_10009A650();
  sub_1008D1684();
  v23 = v36;
  v24 = v37;
  (*(v36 + 104))(v9, enum case for UserInterfaceSizeClass.compact(_:), v37);
  sub_10001B350(v9, 0, 1, v24);
  v25 = *(v35 + 48);
  sub_100095588();
  sub_100095588();
  v26 = v21;
  if (sub_100024D10(v4, 1, v24) == 1)
  {
    sub_1000180EC(v9, &qword_100CA6028);
    sub_1000180EC(v12, &qword_100CA6028);
    if (sub_100024D10(&v4[v25], 1, v24) == 1)
    {
      sub_1000180EC(v4, &qword_100CA6028);
LABEL_11:
      result = sub_100097D4C(v26, type metadata accessor for MainViewModel.ModalModule);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v27 = v34;
  sub_100095588();
  if (sub_100024D10(&v4[v25], 1, v24) == 1)
  {
    sub_1000180EC(v9, &qword_100CA6028);
    sub_1000180EC(v12, &qword_100CA6028);
    (*(v23 + 8))(v27, v24);
LABEL_8:
    sub_1000180EC(v4, &qword_100CA64E8);
    goto LABEL_9;
  }

  v30 = &v4[v25];
  v31 = v33;
  (*(v23 + 32))(v33, v30, v24);
  sub_100081574(&qword_100CA6088, &type metadata accessor for UserInterfaceSizeClass);
  LODWORD(v35) = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v23 + 8);
  v32(v31, v24);
  sub_1000180EC(v9, &qword_100CA6028);
  sub_1000180EC(v12, &qword_100CA6028);
  v32(v27, v24);
  sub_1000180EC(v4, &qword_100CA6028);
  if (v35)
  {
    goto LABEL_11;
  }

LABEL_9:
  v28 = sub_100880AE0();
  result = sub_100097D4C(v26, type metadata accessor for MainViewModel.ModalModule);
  v29 = v28 & 1;
LABEL_13:
  *v38 = v29;
  return result;
}

uint64_t sub_100098B14@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCF2F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MainViewModel.ModalModule(0);
  __chkstk_darwin(v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  sub_100095730();
  sub_100095588();
  sub_100097D4C(v7, type metadata accessor for MainViewModel);
  if (sub_100024D10(v4, 1, v8) == 1)
  {
    result = sub_1000180EC(v4, &qword_100CCF2F8);
  }

  else
  {
    sub_10009A650();
    sub_10009A650();
    result = swift_getEnumCaseMultiPayload();
    if (result == 1)
    {
      result = sub_100097D4C(v10, type metadata accessor for MainViewModel.ModalModule);
    }
  }

  *a1 = 0;
  return result;
}

uint64_t sub_100098D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ModalPresentationViewModifier(0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v6 = (v2 + *(v5 + 28));
  v8 = *v6;
  v7 = v6[1];
  v9 = *(v6 + 16);
  sub_10009A5F8();
  v10 = swift_allocObject();
  sub_10009A650();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1008D24B0;
  *(v11 + 24) = v10;
  State.init(wrappedValue:)();
  v12 = sub_10022C350(&qword_100CE4298);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  v13 = a2 + *(sub_10022C350(&qword_100CE42A0) + 36);
  *v13 = v8;
  *(v13 + 8) = v7;
  *(v13 + 16) = v9;
  *(v13 + 17) = 0;
  *(v13 + 24) = sub_1008D2518;
  *(v13 + 32) = v11;
  *(v13 + 40) = v21;
  *(v13 + 48) = v22;
  v14 = (v2 + *(v5 + 32));
  v15 = *v14;
  v16 = v14[1];
  LOBYTE(v10) = *(v14 + 16);
  v17 = a2 + *(sub_10022C350(&qword_100CE42A8) + 36);
  v18 = *(type metadata accessor for SafariSheetModifier(0) + 20);

  sub_100099188(v17 + v18);
  *v17 = v15;
  *(v17 + 8) = v16;
  *(v17 + 16) = v10;
}

uint64_t sub_100098FB4()
{
  v1 = type metadata accessor for ModalPresentationViewModifier(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = type metadata accessor for MainViewModel.ModalModule(0);
  if (!sub_100024D10(v0 + v2, 1, v3) && swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      type metadata accessor for URL();
      sub_1000037E8();
      (*(v4 + 8))(v0 + v2);
    }
  }

  sub_1000E4DF8(*(v0 + v2 + *(v1 + 36)), *(v0 + v2 + *(v1 + 36) + 8));

  return swift_deallocObject();
}

uint64_t sub_10009914C()
{

  return swift_deallocObject();
}

uint64_t sub_100099188@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10022C350(&qword_100CCF2F8);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  sub_100095588();
  v9 = type metadata accessor for MainViewModel.ModalModule(0);
  if (sub_100024D10(v4, 1, v9) == 1)
  {
    sub_1000180EC(v4, &qword_100CCF2F8);
LABEL_9:
    v13 = type metadata accessor for URL();
    v11 = a1;
    v12 = 1;
    return sub_10001B350(v11, v12, 1, v13);
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v14 = type metadata accessor for MainViewModel.ModalModule;
    v15 = v4;
LABEL_8:
    sub_100097D4C(v15, v14);
    goto LABEL_9;
  }

  sub_10009A650();
  sub_10009A650();
  if (swift_getEnumCaseMultiPayload() != 6)
  {
    v14 = type metadata accessor for MainViewModel.ModalModule.LocationDetailModule;
    v15 = v7;
    goto LABEL_8;
  }

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 32))(a1, v7, v10);
  v11 = a1;
  v12 = 0;
  v13 = v10;
  return sub_10001B350(v11, v12, 1, v13);
}

__n128 sub_1000993E0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000993FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a1;
  v47 = a3;
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = *(a2 + 16);
  WitnessTable = swift_getWitnessTable();
  v9 = *(a2 + 24);
  v57 = v6;
  v58 = v7;
  v59 = WitnessTable;
  v60 = v9;
  v36[1] = &opaque type descriptor for <<opaque return type of View.transaction<A>(_:body:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v48 = v36 - v10;
  sub_10022E824(&qword_100CBE348);
  v41 = type metadata accessor for ModifiedContent();
  v45 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = v36 - v11;
  v44 = type metadata accessor for ModifiedContent();
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v43 = v36 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v9;
  v16 = *(v4 + 16);
  *(v15 + 32) = *v4;
  *(v15 + 48) = v16;
  *(v15 + 64) = *(v4 + 32);
  *(v15 + 80) = *(v4 + 48);
  v49 = v7;
  v50 = v9;
  v51 = v4;
  v17 = *(*(a2 - 8) + 16);
  v17(&v57, v4, a2);
  v36[0] = v17;
  v18 = swift_checkMetadataState();
  View.transaction<A>(_:body:)();

  v56 = sub_1000A1FE4() & 1;
  v19 = swift_allocObject();
  *(v19 + 16) = v7;
  *(v19 + 24) = v9;
  v20 = *(v4 + 16);
  *(v19 + 32) = *v4;
  *(v19 + 48) = v20;
  *(v19 + 64) = *(v4 + 32);
  *(v19 + 80) = *(v4 + 48);
  v17(&v57, v4, a2);
  v57 = v18;
  v58 = v7;
  v59 = WitnessTable;
  v60 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v37;
  v23 = OpaqueTypeMetadata2;
  v24 = v48;
  sub_1000A203C(&v56, OpaqueTypeMetadata2, &type metadata for Bool, OpaqueTypeConformance2, v37);

  (*(v42 + 8))(v24, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v7;
  *(v25 + 24) = v9;
  v26 = *(v4 + 16);
  *(v25 + 32) = *v4;
  *(v25 + 48) = v26;
  *(v25 + 64) = *(v4 + 32);
  *(v25 + 80) = *(v4 + 48);
  (v36[0])(&v57, v4, a2);
  v27 = sub_100082E44();
  v54 = OpaqueTypeConformance2;
  v55 = v27;
  v28 = v41;
  v29 = swift_getWitnessTable();
  v30 = v40;
  View.onAppear(perform:)();

  (*(v45 + 8))(v22, v28);
  v52 = v29;
  v53 = &protocol witness table for _AppearanceActionModifier;
  v31 = v44;
  v32 = swift_getWitnessTable();
  v33 = v43;
  sub_1000833D8(v30, v31, v32);
  v34 = *(v46 + 8);
  v34(v30, v31);
  sub_1000833D8(v33, v31, v32);
  return (v34)(v33, v31);
}

unint64_t sub_100099A08()
{
  result = qword_100CE46C0;
  if (!qword_100CE46C0)
  {
    sub_10022E824(&qword_100CE46C8);
    sub_10006768C(&qword_100CE46D0, &qword_100CE46D8);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE46C0);
  }

  return result;
}

uint64_t sub_100099AEC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_100099B48()
{

  sub_1000693B0();

  return swift_deallocObject();
}

uint64_t sub_100099B8C()
{
  type metadata accessor for DetailChart(0);
  sub_100003A0C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v57 = *(v4 + 64);
  type metadata accessor for ChartProxy();
  sub_1000037C4();
  v59 = v6;
  v60 = v5;
  v56 = *(v6 + 80);
  v61 = v1;
  v58 = v3;
  v7 = v1 + v3;
  sub_10022C350(&qword_100CA2D60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for LayoutDirection();
    sub_100003D98();
    (*(v8 + 8))(v1 + v3);
  }

  else
  {
  }

  v9 = v0[5];
  sub_10022C350(&qword_100CA71B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for ColorSchemeContrast();
    sub_100003D98();
    (*(v10 + 8))(v7 + v9);
  }

  else
  {
  }

  sub_1000E4DF8(*(v7 + v0[6]), *(v7 + v0[6] + 8));
  v11 = v7 + v0[7];
  type metadata accessor for ConditionDetailChartHeaderStringModel();
  sub_100003D98();
  (*(v12 + 8))(v11);
  v62 = type metadata accessor for DetailChartViewModel();
  v13 = v11 + *(v62 + 20);

  v14 = type metadata accessor for ChartViewModel(0);
  v15 = v14[5];
  type metadata accessor for ChartKind();
  sub_100003D98();
  (*(v16 + 8))(v13 + v15);

  v17 = v14[7];
  type metadata accessor for DetailChartExtrema();
  sub_100003D98();
  (*(v18 + 8))(v13 + v17);

  sub_100452DEC(*(v13 + v14[11]), *(v13 + v14[11] + 8), *(v13 + v14[11] + 16), *(v13 + v14[11] + 24));
  v19 = v13 + v14[12];
  v20 = sub_10022C350(&qword_100CAC408);
  v21 = *(v20 + 48);
  v22 = type metadata accessor for Date();
  if (!sub_100024D10(v19 + v21, 1, v22))
  {
    sub_100003B20();
    (*(v23 + 8))(v19 + v21, v22);
  }

  v24 = *(v20 + 64);
  type metadata accessor for TimeZone();
  sub_100003D98();
  (*(v25 + 8))(v19 + v24);
  v26 = v13 + v14[14];
  v27 = sub_10022C350(&qword_100CAC418);
  if (!sub_100024D10(v26, 1, v27))
  {

    v28 = *(v27 + 48);
    if (!sub_100024D10(v26 + v28, 1, v22))
    {
      sub_100003B20();
      (*(v29 + 8))(v26 + v28, v22);
    }
  }

  v30 = v14[16];
  type metadata accessor for ChartDarkeningScrim();
  sub_100003D98();
  (*(v31 + 8))(v13 + v30);

  v32 = *(*(v22 - 8) + 8);
  v32(v13 + v14[18], v22);
  v32(v13 + v14[19], v22);
  v32(v13 + v14[20], v22);
  v33 = v14[21];
  v34 = type metadata accessor for DetailChartDataElement();
  if (!sub_100024D10(v13 + v33, 1, v34))
  {
    sub_100003B20();
    (*(v35 + 8))(v13 + v33, v34);
  }

  v36 = v14[23];
  type metadata accessor for ChartPeakMarkStyle();
  sub_100003D98();
  (*(v37 + 8))(v13 + v36);

  v38 = v14[26];
  type metadata accessor for ChartViewModelInterpolationMode();
  sub_100003D98();
  (*(v39 + 8))(v13 + v38);
  v40 = v14[27];
  type metadata accessor for ChartPastDataTreatment();
  sub_100003D98();
  (*(v41 + 8))(v13 + v40);
  sub_10001673C(v14[28]);

  sub_10001673C(v14[29]);

  sub_10001673C(v14[30]);

  sub_10001673C(v14[31]);

  sub_10001673C(v14[32]);

  sub_10001673C(v14[33]);

  v42 = v62;
  v43 = v11 + *(v62 + 24);
  v44 = type metadata accessor for LollipopViewModel();
  if (!sub_1000214B8(v44))
  {

    v45 = *(v34 + 20);
    type metadata accessor for DetailChartDataPoint();
    sub_100003D98();
    (*(v46 + 8))(v43 + v45);
    v47 = v43 + *(v34 + 28);
    type metadata accessor for LollipopDetailViewModel(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {

      v49 = *(type metadata accessor for TitleAndDetailLollipopDetailViewModel(0) + 20);
      type metadata accessor for AttributedString();
      sub_100003D98();
      v51 = v47 + v49;
      v42 = v62;
      (*(v50 + 8))(v51);
      sub_10003C540();
      sub_10003C540();
      sub_10003C540();
      sub_10003C540();
    }

    else if (EnumCaseMultiPayload == 1)
    {
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
  v52 = v11 + *(v42 + 28);
  type metadata accessor for ConditionDetailChartFooterViewModel();
  if (!sub_10000CAFC(v52))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TemperatureChartKind();
      sub_100003D98();
      (*(v53 + 8))(v52);
    }

    else
    {
    }
  }

  v54 = v7 + v0[9];
  if (!sub_100024D10(v54, 1, v22))
  {
    v32(v54, v22);
  }

  sub_10022C350(&qword_100CBB758);

  sub_100006F14(v7 + v0[10]);
  (*(v59 + 8))(v61 + ((v58 + v57 + v56) & ~v56), v60);

  return swift_deallocObject();
}

uint64_t sub_10009A3A4()
{
  type metadata accessor for Location();
  sub_10000548C();

  v0 = sub_1000751C4();
  v1(v0);
  sub_100036F2C();

  return swift_deallocObject();
}

void sub_10009A44C()
{
  sub_10000C778();
  v0 = type metadata accessor for MainViewSheetViewModifier(0);
  __chkstk_darwin(v0 - 8);
  sub_10009A5F8();
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = &protocol witness table for MainActor;
  sub_10009A650();
  sub_10009A5F8();
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = &protocol witness table for MainActor;
  sub_10009A650();
  Binding.init(get:set:)();
  sub_10000536C();
}

uint64_t sub_10009A5F8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10009A650()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_10009A6EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a5;
  v9 = type metadata accessor for PresentationWithoutInitialAnimation();
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  v10 = type metadata accessor for PlaceholderContentView();
  __chkstk_darwin(v10);
  v12 = &v31[-v11];
  v35 = *(a3 - 8);
  __chkstk_darwin(v13);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v16);
  v19 = &v31[-v18];
  v20 = *(a2 + 24);
  v33 = *(a2 + 32);
  v34 = v20;
  (*(v21 + 16))(v12, a1, v10, v17);
  swift_getWitnessTable();
  v22 = AnyView.init<A>(_:)();
  v23 = sub_10009AA10();
  v25 = v24;
  v32 = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = a3;
  *(v27 + 24) = a4;
  v28 = *(a2 + 16);
  *(v27 + 32) = *a2;
  *(v27 + 48) = v28;
  *(v27 + 64) = *(a2 + 32);
  *(v27 + 80) = *(a2 + 48);
  (*(*(v9 - 8) + 16))(v37, a2, v9);
  v34(v22, v23, v25, v32 & 1, sub_100130B30, v27);

  sub_1000833D8(v15, a3, a4);
  v29 = *(v35 + 8);
  v29(v15, a3);
  sub_1000833D8(v19, a3, a4);
  return (v29)(v19, a3);
}

uint64_t sub_10009AA10()
{
  sub_10022C350(&unk_100CB3AA0);
  Binding.projectedValue.getter();
  return v1;
}

void sub_10009AA6C()
{
  sub_100007760();
  if (v0 <= 0x3F)
  {
    sub_1000455E4();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LearnMoreAttributorViewModel();
      if (v2 <= 0x3F)
      {
        sub_10009ABA0(319, &qword_100CB9DF8, &type metadata accessor for LocationOfInterest);
        if (v3 <= 0x3F)
        {
          sub_10009ABA0(319, &unk_100CB9E00, type metadata accessor for HomeAndWorkRefinementRowViewModel);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10009ABA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10009ABF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DailyForecastFilter();
  v3 = swift_allocObject();
  type metadata accessor for IsSameDayCache();
  swift_allocObject();
  result = IsSameDayCache.init()();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_100C4AB20;
  *a1 = v3;
  return result;
}

void sub_10009AC68()
{
  sub_100063140(319, &unk_100CAEB40, &type metadata accessor for Location.Identifier, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_100063140(319, &qword_100CBC8D8, &type metadata accessor for CurrentLocation, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_100063140(319, &qword_100CBC8E0, &type metadata accessor for SavedLocation, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_100063140(319, &qword_100CBC8E8, &type metadata accessor for LocationModel, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_100007760();
          if (v4 <= 0x3F)
          {
            sub_100063140(319, &unk_100CBC8F0, type metadata accessor for SearchViewState.ViewState, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v6 <= 0x3F)
              {
                type metadata accessor for UIUserInterfaceSizeClass(319);
                if (v7 <= 0x3F)
                {
                  sub_100063140(319, &qword_100CA5080, type metadata accessor for ContentStatusBanner, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_100063140(319, &unk_100CB0F30, &type metadata accessor for LocationOfInterest, &type metadata accessor for Array);
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_10009AFB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10009B01C()
{
  v0 = type metadata accessor for Scope();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  ProxyContainer.public.getter();
  type metadata accessor for Tracker();
  RegistrationContainer.register<A>(_:name:factory:)();

  (*(v1 + 104))(v3, enum case for Scope.containerSingleton(_:), v0);
  Definition.inScope(_:)();

  (*(v1 + 8))(v3, v0);
  type metadata accessor for ListViewModelFactory();
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC2F0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC2F8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC300);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4C50);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4B60);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95D8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CC95E0);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCC308);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CA4BD8);
  RegistrationContainer.register<A>(_:name:factory:)();

  sub_10022C350(&qword_100CCBE58);
  RegistrationContainer.register<A>(_:name:factory:)();
}

uint64_t sub_10009B430()
{
  v0 = type metadata accessor for ActualListInput(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

void *sub_10009B49C(void *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_10022C350(&unk_100CE49F0);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[5];
    }

    else
    {
      sub_10022C350(&qword_100CB0250);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[14];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v15 + 84) == a3)
        {
          v10 = v14;
          v11 = a4[21];
        }

        else
        {
          v10 = sub_10022C350(&qword_100CA5010);
          v11 = a4[34];
        }
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

void sub_10009B604()
{
  if (!qword_100CA3828)
  {
    type metadata accessor for LocationWeatherDataState(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3828);
    }
  }
}

void sub_10009B65C()
{
  if (!qword_100CBC8E8)
  {
    type metadata accessor for LocationModel();
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100CBC8E8);
    }
  }
}

uint64_t sub_10009B6B4(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBA740);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v10)
  {
    v2 = sub_10002D7F8(v9, v10);
    v3 = __chkstk_darwin(v2);
    v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v6 + 16))(v5, v3);
    v7 = sub_10009B7DC(1, *v5);
    sub_100006F14(v9);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10009B7DC(char a1, uint64_t *a2)
{
  v13 = *a2;
  v14 = &off_100C58978;
  v12[0] = a2;
  type metadata accessor for WeatherConditionBackgroundModelInputFactory();
  v3 = swift_allocObject();
  v4 = sub_10002D7F8(v12, v13);
  v5 = __chkstk_darwin(v4);
  v7 = (&v12[-1] - v6);
  (*(v8 + 16))(&v12[-1] - v6, v5);
  v9 = sub_10009B90C(a1 & 1, *v7, v3);
  sub_100006F14(v12);
  return v9;
}

uint64_t sub_10009B90C(char a1, uint64_t a2, uint64_t a3)
{
  v6 = (a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_weatherConditionBackgroundTimeDataFactory);
  v6[3] = type metadata accessor for WeatherConditionBackgroundTimeDataFactory();
  v6[4] = &off_100C58978;
  *v6 = a2;
  v7 = OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___locationAnimationKind;
  v8 = type metadata accessor for Settings.VFX.AnimatedBackgrounds.AnimationKind();
  sub_10001B350(a3 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory____lazy_storage___animationKind;
  v10 = type metadata accessor for BackgroundAnimationKind();
  sub_10001B350(a3 + v9, 1, 1, v10);
  *(a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_forceTileGradientPresentationContext) = 0;
  *(a3 + OBJC_IVAR____TtC7Weather43WeatherConditionBackgroundModelInputFactory_backgroundViewType) = a1 & 1;
  return a3;
}

uint64_t sub_10009BA38@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for NewsDataManager();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_100C76D50;
  *a1 = result;
  return result;
}

uint64_t sub_10009BA80@<X0>(void *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  a3[3] = *a1;
  a3[4] = a2;
  *a3 = a1;
}

void *sub_10009BAB4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = type metadata accessor for NetworkActivityManager();
  v16 = &off_100C55440;
  v14[0] = a2;
  type metadata accessor for WeatherDataStoreObserver();
  v6 = swift_allocObject();
  v7 = sub_10002D7F8(v14, v15);
  __chkstk_darwin(v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_10009BBE0(a1, *v9, a3, v6);
  sub_100006F14(v14);
  return v11;
}

void *sub_10009BBE0(uint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  v11 = type metadata accessor for NetworkActivityManager();
  v12 = &off_100C55440;
  *&v10 = a2;
  sub_10000C70C(0, &qword_100CA2E40);
  a4[13] = OS_os_log.init(subsystem:category:)();
  sub_10022C350(&qword_100CD1920);
  v8 = swift_allocObject();
  *(v8 + 20) = 0;
  *(v8 + 16) = 0;
  a4[14] = v8;
  a4[2] = a1;
  sub_100013188(&v10, (a4 + 3));
  sub_100013188(a3, (a4 + 8));
  return a4;
}

void sub_10009BCE0()
{
  sub_10006126C();
  if (v0 <= 0x3F)
  {
    sub_10009BE90(319, &qword_100CE0E20, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10009C160();
      if (v2 <= 0x3F)
      {
        sub_10009BE90(319, &unk_100CB32E8, &type metadata for WeatherMapPresentationIntent, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10009BDF4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BE44(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Environment();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10009BE90(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BEE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BF30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BF80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009BFD0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C020(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C070(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C0C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C110(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10009C160()
{
  if (!qword_100CA3C78)
  {
    type metadata accessor for DisplayMetrics();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3C78);
    }
  }
}

unint64_t sub_10009C1D8()
{
  result = qword_100CB3328;
  if (!qword_100CB3328)
  {
    sub_10022E824(&qword_100CB3270);
    sub_100006F64(&qword_100CB3330, &qword_100CB3268);
    sub_100006F64(&qword_100CB3338, &qword_100CB3340);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB3328);
  }

  return result;
}

uint64_t sub_10009C2BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA2A70 != -1)
  {
    swift_once();
  }

  v2 = sub_10022C350(&qword_100CB3688);
  v3 = sub_10000703C(v2, qword_100D91340);
  return sub_1000302D8(v3, a1, &qword_100CB3688);
}

uint64_t sub_10009C34C()
{
  v0 = sub_10022C350(&qword_100CB3688);
  sub_100007074(v0, qword_100D91340);
  v1 = sub_10000703C(v0, qword_100D91340);
  v2 = type metadata accessor for ColorScheme();

  return sub_10001B350(v1, 1, 1, v2);
}

uint64_t sub_10009C3C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SafariSheetModifier.SafariPresenter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10009C40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10009C3C8(&unk_100CB3C50);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

void sub_10009C4E0()
{
  sub_10000D474(319, &qword_100CAD3B0, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ColorScheme();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_10009C5E8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

unint64_t sub_10009C5FC()
{
  result = qword_100CB2940;
  if (!qword_100CB2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2940);
  }

  return result;
}

unint64_t sub_10009C650()
{
  result = qword_100CB2918;
  if (!qword_100CB2918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CB2918);
  }

  return result;
}

uint64_t sub_10009C6A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA48D0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CA4910);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v6)
    {
      v5 = type metadata accessor for ExtendedAppLaunchManager();
      swift_allocObject();
      result = sub_10009C7FC(v8, v9, v10, v11, v6, v7, 1);
      a2[3] = v5;
      a2[4] = &off_100C56688;
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

uint64_t sub_10009C7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6, char a7)
{
  v8 = v7;
  v63 = a6;
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v15);
  sub_1000037D8();
  v18 = v17 - v16;
  type metadata accessor for DispatchWorkItemFlags();
  sub_1000037C4();
  v61 = v20;
  v62 = v19;
  __chkstk_darwin(v19);
  sub_1000037D8();
  v59 = v22 - v21;
  v60 = type metadata accessor for DispatchQoS();
  sub_1000037C4();
  v58 = v23;
  __chkstk_darwin(v24);
  sub_1000037D8();
  v57 = v26 - v25;
  type metadata accessor for DispatchTime();
  sub_1000037C4();
  __chkstk_darwin(v27);
  sub_100003C38();
  v30 = (v28 - v29);
  v32 = __chkstk_darwin(v31);
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  *(v8 + 40) = &_swiftEmptySetSingleton;
  *(v8 + 48) = a1;
  v35 = a2;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  v36 = a4;
  v37 = a5;
  v38 = v63;
  *(v8 + 72) = v36;
  *(v8 + 80) = v37;
  *(v8 + 88) = v38;
  *(v8 + 96) = 0x4014000000000000;
  *(v8 + 104) = a7;
  if (a7)
  {
    v39 = v32;
    v55 = v32;
    v40 = v34;
    v52 = v51 - v33;
    sub_10000C70C(0, &qword_100CB4670);

    v53 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v41 = *(v40 + 8);
    v54 = v40 + 8;
    v56 = v41;
    v41(v30, v39);
    sub_100018450();
    v42 = swift_allocObject();
    v42[2] = v8;
    v42[3] = v37;
    v42[4] = v38;
    v66 = sub_100423C40;
    v67 = v42;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    sub_100003F74();
    *&v65 = v43;
    *(&v65 + 1) = &unk_100C56758;
    v44 = _Block_copy(&aBlock);

    v45 = v57;
    static DispatchQoS.unspecified.getter();
    *&aBlock = &_swiftEmptyArrayStorage;
    sub_1000673B4(&qword_100CD81C0, &type metadata accessor for DispatchWorkItemFlags);
    v51[1] = v35;
    sub_10022C350(&qword_100CB4680);
    sub_100006F64(&qword_100CD81D0, &qword_100CB4680);
    v46 = v59;
    v47 = v62;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v49 = v52;
    v48 = v53;
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    _Block_release(v44);

    (*(v61 + 8))(v46, v47);
    (*(v58 + 8))(v45, v60);
    v56(v49, v55);
  }

  else
  {
    type metadata accessor for EnvironmentAction();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v66 = 0;
    aBlock = 0u;
    v65 = 0u;

    sub_10004F034(v18, &aBlock, v37);

    sub_1000180EC(&aBlock, &unk_100CD81B0);
    sub_10004F6D4(v18, type metadata accessor for MainAction);
  }

  return v8;
}

uint64_t sub_10009CD40()
{

  sub_100018450();

  return swift_deallocObject();
}

void sub_10009CF80()
{
  sub_100020DF0();
  type metadata accessor for Access();
  sub_1000037C4();
  __chkstk_darwin(v0);
  sub_10001F198();
  type metadata accessor for FeatureState();
  sub_1000037C4();
  __chkstk_darwin(v1);
  sub_100005888();
  sub_10022C350(&qword_100CC74A0);
  v2 = sub_10000621C();
  v3(v2);
  v4 = sub_1000089C8();
  v5(v4);
  qword_100D90490 = sub_100004594();
  sub_1000212EC();
}

uint64_t sub_10009D0D4()
{
  sub_10009EB78();
  EnvironmentValues.subscript.getter();
  return v1;
}

unint64_t sub_10009D188()
{
  result = qword_100CE10F0;
  if (!qword_100CE10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE10F0);
  }

  return result;
}

uint64_t sub_10009D1DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for MonitorAppLaunchStateViewModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = sub_10022C350(&qword_100CB84A8);
  sub_1000037E8();
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  sub_100423DD0(v2, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MonitorAppLaunchStateViewModifier);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_100423E30(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for MonitorAppLaunchStateViewModifier);
  sub_10022C350(&qword_100CB84B0);
  sub_1000037E8();
  (*(v14 + 16))(v11, a1);
  v15 = &v11[*(v8 + 36)];
  *v15 = sub_1001303A8;
  v15[1] = v13;
  v15[2] = 0;
  v15[3] = 0;
  v16 = (v2 + *(v5 + 32));
  v18 = v16[1];
  v25 = *v16;
  v17 = v25;
  v26 = v18;
  sub_10022C350(&qword_100CB84B8);
  State.wrappedValue.getter();
  type metadata accessor for ExtendedAppLaunchState(0);
  sub_1000615D8();
  sub_100022BD0();
  sub_1000673B4(v19, v20);
  v21 = v24;
  View.environment<A>(_:)();

  sub_1000180EC(v11, &qword_100CB84A8);
  v25 = v17;
  v26 = v18;
  State.wrappedValue.getter();
  v22 = sub_1004237C8();

  result = sub_10022C350(&qword_100CB84D8);
  *(v21 + *(result + 36)) = (v22 & 1) == 0;
  return result;
}

uint64_t sub_10009D4E8()
{
  type metadata accessor for WeatherForecastDescriptionStringBuilder();
  swift_allocObject();
  v0 = WeatherForecastDescriptionStringBuilder.init()();
  type metadata accessor for FeelsLikeStringBuilder();
  swift_allocObject();
  FeelsLikeStringBuilder.init()();
  WeatherForecastDescriptionStringBuilder.feelsLikeStringBuilder.setter();
  return v0;
}

void sub_10009D580()
{
  if (!qword_100CA3820)
  {
    type metadata accessor for ContentStatusBanner();
    v0 = type metadata accessor for Dictionary();
    if (!v1)
    {
      atomic_store(v0, &qword_100CA3820);
    }
  }
}

uint64_t sub_10009D5E8()
{
  result = type metadata accessor for SunriseSunsetEventCalculator();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10009D6A4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC9558);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v25)
  {
    sub_1000161C0(a1, a1[3]);
    sub_10022C350(&qword_100CC9560);
    result = dispatch thunk of ResolverType.resolve<A>(_:)();
    if (v23)
    {
      v5 = sub_10002D7F8(v22, v23);
      v6 = __chkstk_darwin(v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for LocationComponentViewModelFactory();
      v21[3] = v11;
      v21[4] = &off_100C55358;
      v21[0] = v10;
      v12 = type metadata accessor for LocationContentViewModelFactory();
      v13 = swift_allocObject();
      v14 = sub_10002D7F8(v21, v11);
      v15 = __chkstk_darwin(v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[10] = v11;
      v13[11] = &off_100C55358;
      v13[7] = v19;
      sub_100013188(&v24, (v13 + 2));
      sub_100006F14(v21);
      result = sub_100006F14(v22);
      a2[3] = v12;
      a2[4] = &off_100C78310;
      *a2 = v13;
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

void sub_10009D934(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_1000038D8();
  type metadata accessor for Location.Identifier();
  sub_100003928();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v4;
  }

  else
  {
    sub_10022C350(&qword_100CADBA0);
    sub_100003928();
    if (*(v13 + 84) == a3)
    {
      v10 = v12;
      v14 = a4[5];
    }

    else
    {
      if (a3 == 0x7FFFFFFF)
      {
        *(v4 + a4[6] + 8) = (a2 - 1);
        return;
      }

      sub_10022C350(&qword_100CD8AB8);
      sub_100003928();
      if (*(v16 + 84) == a3)
      {
        v10 = v15;
        v14 = a4[9];
      }

      else
      {
        type metadata accessor for Date();
        sub_100003928();
        if (*(v18 + 84) == a3)
        {
          v10 = v17;
          v14 = a4[19];
        }

        else
        {
          sub_10022C350(&qword_100CA60E8);
          sub_100003928();
          if (*(v20 + 84) == a3)
          {
            v10 = v19;
            v14 = a4[20];
          }

          else
          {
            v10 = sub_10022C350(&qword_100CA65C8);
            v14 = a4[26];
          }
        }
      }
    }

    v11 = v4 + v14;
  }

  sub_10001B350(v11, a2, a2, v10);
}

uint64_t sub_10009DB2C(uint64_t *a1)
{
  sub_10022C350(a1);
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0;
  v2 = Dictionary.init(dictionaryLiteral:)();
  *(v1 + 56) = _swiftEmptyArrayStorage;
  *(v1 + 64) = v2;
  return v1;
}

uint64_t sub_10009DB98@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009DBE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v51 = a2;
  v5 = a1[2];
  v6 = type metadata accessor for Optional();
  v56 = *(v6 - 8);
  __chkstk_darwin(v6);
  sub_100003848();
  v47 = v7;
  __chkstk_darwin(v8);
  v49 = &v44 - v9;
  __chkstk_darwin(v10);
  v12 = &v44 - v11;
  v57 = *(v5 - 8);
  __chkstk_darwin(v13);
  sub_100003848();
  v53 = v14;
  __chkstk_darwin(v15);
  v50 = &v44 - v16;
  v17 = *(v2 + 10);
  v18 = *(v3 + 11);
  v19 = a1[3];
  v20 = a1[4];
  v58 = v5;
  v59 = v19;
  v60 = v5;
  v61 = v20;
  v21 = type metadata accessor for ModuleView.Cache();
  WitnessTable = swift_getWitnessTable();
  v52 = v17;
  v55 = v18;
  v23 = StateObject.wrappedValue.getter();
  v24 = *(*v23 + 112);
  swift_beginAccess();
  v25 = v56;
  (*(v56 + 16))(v12, v23 + v24, v6);

  v26 = sub_100024D10(v12, 1, v5);
  v48 = v6;
  v46 = v21;
  if (v26 == 1)
  {
    v54 = WitnessTable;
    (*(v25 + 8))(v12, v6);
  }

  else
  {
    v54 = *(v57 + 32);
    v54(v53, v12, v5);
    v27 = StateObject.wrappedValue.getter();
    v28 = *(v27 + *(*v27 + 120) + 8);

    sub_1000E4CAC(v28, *(v3 + 9));
    v30 = v29;

    if (v30)
    {
      v31 = v50;
      v54(v50, v53, v5);
      v32 = v57;
LABEL_8:
      (*(v3 + 1))(v31);
      return (*(v32 + 8))(v31, v5);
    }

    v54 = WitnessTable;
    (*(v57 + 8))(v53, v5);
  }

  sub_1000161C0(v3 + 3, *(v3 + 6));
  v53 = v3;
  v34 = *(v3 + 8);
  v33 = *(v3 + 9);
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  *(v35 + 24) = v33;
  v45 = v34;

  v52 = v33;

  v36 = v49;
  dispatch thunk of ResolverType.resolve<A>(_:with:)();

  result = sub_100024D10(v36, 1, v5);
  if (result != 1)
  {
    v32 = v57;
    v31 = v50;
    (*(v57 + 32))(v50, v36, v5);
    v38 = StateObject.wrappedValue.getter();
    v39 = v47;
    (*(v32 + 16))(v47, v31, v5);
    sub_10001B350(v39, 0, 1, v5);
    v40 = *(*v38 + 112);
    swift_beginAccess();
    (*(v56 + 40))(v38 + v40, v39, v48);
    swift_endAccess();

    v41 = StateObject.wrappedValue.getter();
    v42 = (v41 + *(*v41 + 120));
    v43 = v52;
    *v42 = v45;
    v42[1] = v43;

    v3 = v53;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_10009E190()
{

  return swift_deallocObject();
}

uint64_t sub_10009E1D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1840);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v65)
  {
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&unk_100CE0F40);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CBE1B0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionEventsAndDataCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionScenePhaseObserver();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CC96F0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v61)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CA4B60);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v43 = result;
  v44 = v7;
  v45 = v6;
  v46 = v5;
  v47 = a2;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CD1808);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v59)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  v8 = sub_10002D7F8(v64, v65);
  v42[3] = v42;
  __chkstk_darwin(v8);
  v10 = (v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = sub_10002D7F8(v58, v59);
  v42[2] = v42;
  __chkstk_darwin(v12);
  v14 = (v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v10;
  v17 = *v14;
  v18 = type metadata accessor for MainInteractor();
  v57[3] = v18;
  v57[4] = &off_100C5E2C8;
  v57[0] = v16;
  v19 = type metadata accessor for EmptySidebarWidthStorage();
  v55 = v19;
  v56 = &off_100C79A70;
  v54[0] = v17;
  v20 = type metadata accessor for MainModule();
  v21 = swift_allocObject();
  v22 = sub_10002D7F8(v57, v18);
  v42[1] = v42;
  __chkstk_darwin(v22);
  v24 = (v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = sub_10002D7F8(v54, v55);
  v42[0] = v42;
  __chkstk_darwin(v26);
  v28 = (v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28);
  v30 = *v24;
  v31 = *v28;
  v52 = v18;
  v53 = &off_100C5E2C8;
  v50 = &off_100C79A70;
  *&v51 = v30;
  v49 = v19;
  *&v48 = v31;
  if (qword_100CA26C8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000703C(v32, qword_100D90AC0);
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  v35 = os_log_type_enabled(v33, v34);
  v37 = v45;
  v36 = v46;
  v39 = v43;
  v38 = v44;
  if (v35)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "Initializing Main module", v40, 2u);
  }

  sub_100013188(&v51, (v21 + 2));
  v21[7] = v36;
  sub_100013188(&v62, (v21 + 8));
  v21[13] = v37;
  v21[14] = v38;
  sub_100013188(&v60, (v21 + 15));
  v21[20] = v39;
  sub_100013188(&v48, (v21 + 21));
  sub_100006F14(v54);
  sub_100006F14(v57);
  sub_100006F14(v58);
  result = sub_100006F14(v64);
  v41 = v47;
  v47[3] = v20;
  v41[4] = &off_100C70368;
  *v41 = v21;
  return result;
}

double sub_10009E8D0@<D0>(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  sub_100035B30(v1 + 16, (a1 + 1));
  sub_100035B30(v1 + 64, (a1 + 6));
  sub_100035B30(v1 + 120, (a1 + 11));
  v4 = *(v1 + 160);
  v5 = type metadata accessor for MainView(0);
  sub_100035B30(v1 + 168, a1 + v5[16]);
  *(a1 + v5[8]) = swift_getKeyPath();
  sub_10022C350(&qword_100CAD618);
  sub_10001CEA0();
  *(a1 + v5[9]) = swift_getKeyPath();
  sub_10022C350(&qword_100CE1010);
  sub_10001CEA0();
  *(a1 + v5[10]) = swift_getKeyPath();
  sub_10022C350(&qword_100CA62E0);
  sub_10001CEA0();
  *a1 = v3;
  v6 = a1 + v5[11];
  *v6 = swift_getKeyPath();
  v6[8] = 0;
  *(a1 + v5[12]) = 0;
  *(a1 + v5[13]) = 0;
  v7 = a1 + v5[14];

  State.init(wrappedValue:)();
  result = *&v9;
  *v7 = v9;
  *(v7 + 2) = v10;
  *(a1 + v5[15]) = v4;
  return result;
}

uint64_t sub_10009EB2C@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.accessibilityInvertColors.getter();
  *a1 = result & 1;
  return result;
}

void sub_10009EB5C(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for AutomationInfoSetting;
  *(a1 + 32) = &off_100C6A9C0;
  *a1 = 0;
}

unint64_t sub_10009EB78()
{
  result = qword_100CA6030;
  if (!qword_100CA6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6030);
  }

  return result;
}

unint64_t sub_10009EBD8()
{
  result = qword_100CA6038;
  if (!qword_100CA6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6038);
  }

  return result;
}

uint64_t sub_10009EC2C(void (*a1)(void))
{
  a1();
  EnvironmentValues.subscript.getter();
  return v2;
}

void sub_10009ECF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000E8AC();
  a19 = v22;
  a20 = v23;
  sub_100022CE8();
  v25 = v24;
  v27 = sub_100073CDC(v26);
  v28 = 0;
  while (1)
  {
    if (v27 == v28)
    {
LABEL_10:
      sub_10000C8F4();
      return;
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v28 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v29 = *(v21 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      break;
    }

    a10 = v29;
    v25(&a10);

    ++v28;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_10009EDBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EE14()
{
  v1 = sub_100017580();
  v2(v1);
  sub_1000037E8();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_10009EE68(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EEC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EF18(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EF70(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009EFC8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009F020(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009F078(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1000037E8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10009F0D0()
{
  v0 = sub_10009F110();
  sub_1000054C8(v0, &type metadata for WindowHorizontalSizeClassKey);

  return EnvironmentValues.subscript.getter();
}

unint64_t sub_10009F110()
{
  result = qword_100CA6040;
  if (!qword_100CA6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6040);
  }

  return result;
}

uint64_t WindowHorizontalSizeClassKey.defaultValue.unsafeMutableAddressor()
{
  if (qword_100CA1EA8 != -1)
  {
    sub_100007F64();
  }

  v0 = sub_10022C350(&qword_100CA6028);

  return sub_10000703C(v0, static WindowHorizontalSizeClassKey.defaultValue);
}

void sub_10009F228()
{
  sub_10000C778();
  v33 = v2;
  v34 = v1;
  v3 = v2;
  type metadata accessor for MainViewModel(0);
  sub_100028D80();
  __chkstk_darwin(v4);
  sub_1000037D8();
  sub_100004E28();
  v5 = v3 + *(sub_10022C350(&qword_100CE41D0) + 36);
  sub_100095588();
  sub_10001FC4C();
  sub_100097D4C(v0, v6);
  sub_10009A44C();
  v32 = v7;
  v9 = v8;
  sub_10009A44C();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_10009A44C();
  v17 = v16;
  v19 = v18;
  LOBYTE(v3) = v20;
  v21 = type metadata accessor for ModalPresentationViewModifier(0);
  v22 = (v5 + *(v21 + 20));
  *v22 = v32;
  v22[1] = v9;
  sub_100075238(v22);
  *v23 = v11;
  *(v23 + 8) = v13;
  *(v23 + 16) = v15 & 1;
  v25 = v5 + *(v24 + 28);
  *v25 = v17;
  *(v25 + 8) = v19;
  *(v25 + 16) = v3 & 1;
  v26 = (v5 + *(v24 + 32));
  type metadata accessor for ObservableResolver();
  sub_100010F80();
  sub_100081574(v27, v28);
  *v26 = EnvironmentObject.init()();
  v26[1] = v29;
  v30 = v5 + *(v21 + 36);
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  sub_10022C350(&qword_100CE41D8);
  sub_1000037E8();
  (*(v31 + 16))(v33, v34);
  sub_10000536C();
}

uint64_t sub_10009F4CC(void (*a1)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a2, void (*a3)(uint64_t *__return_ptr), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  a3(&v18);
  a1(v17, &v18, 1);

  result = v17[0];
  if (!v17[0])
  {
    v17[0] = 0;
    v17[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(82);
    v12._object = 0x8000000100ABBDF0;
    v12._countAndFlagsBits = 0xD00000000000004BLL;
    String.append(_:)(v12);
    v13._countAndFlagsBits = sub_100037950();
    v13._object = 0xE900000000000065;
    String.append(_:)(v13);
    v14._countAndFlagsBits = 8236;
    v14._object = 0xE200000000000000;
    String.append(_:)(v14);
    v15._countAndFlagsBits = a7;
    v15._object = a8;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 46;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009F610@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10009F608(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10009F63C(uint64_t a1, void (*a2)(uint64_t *, uint64_t))
{
  v4 = sub_10022C350(&qword_100CA4CC0);
  __chkstk_darwin(v4 - 8);
  v6 = v14 - v5;
  v15 = a1;
  a2(&v15, 1);
  v7 = type metadata accessor for MainViewModel(0);
  if (sub_100024D10(v6, 1, v7) != 1)
  {
    return sub_1000A0AC0();
  }

  sub_1000180EC(v6, &qword_100CA4CC0);
  v14[1] = 0;
  v14[2] = 0xE000000000000000;
  _StringGuts.grow(_:)(87);
  v9._object = 0x8000000100ABBD90;
  v9._countAndFlagsBits = 0xD000000000000050;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x746174536E69614DLL;
  v10._object = 0xE900000000000065;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 8236;
  v11._object = 0xE200000000000000;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x776569566E69614DLL;
  v12._object = 0xED00006C65646F4DLL;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 46;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10009F894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  v3 = sub_10022C350(&qword_100CA6600);
  __chkstk_darwin(v3 - 8);
  v144 = &v124[-v4];
  v5 = sub_1000038CC();
  v136 = type metadata accessor for SearchViewState.ViewState(v5);
  sub_1000037E8();
  __chkstk_darwin(v6);
  sub_1000038E4();
  v137 = v7;
  sub_1000038CC();
  v133 = type metadata accessor for HomeAndWorkRefinementViewState();
  sub_1000037E8();
  __chkstk_darwin(v8);
  sub_1000038E4();
  v132 = v9;
  sub_1000038CC();
  v131 = type metadata accessor for AveragesDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v10);
  sub_1000038E4();
  v130 = v11;
  sub_1000038CC();
  v129 = type metadata accessor for MoonDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_1000038E4();
  sub_100003918(v13);
  v128 = type metadata accessor for SunriseSunsetDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v14);
  sub_1000038E4();
  sub_100003918(v15);
  HourPrecipitationDetailViewState = type metadata accessor for NextHourPrecipitationDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v16);
  sub_1000038E4();
  sub_100003918(v17);
  v126 = type metadata accessor for AirQualityDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v18);
  sub_1000038E4();
  sub_100003918(v19);
  v125 = type metadata accessor for ConditionDetailViewState();
  sub_1000037E8();
  __chkstk_darwin(v20);
  sub_1000038E4();
  v22 = sub_100003918(v21);
  v134 = type metadata accessor for ModalViewState.LocationDetailModal(v22);
  sub_1000037E8();
  __chkstk_darwin(v23);
  sub_1000038E4();
  v135 = v24;
  v25 = sub_10022C350(&qword_100CA65E0);
  __chkstk_darwin(v25 - 8);
  v140 = &v124[-v26];
  v27 = sub_1000038CC();
  v138 = type metadata accessor for ModalViewState(v27);
  sub_1000037E8();
  __chkstk_darwin(v28);
  sub_1000038E4();
  v139 = v29;
  v30 = sub_10022C350(&qword_100CCF2F8);
  __chkstk_darwin(v30 - 8);
  sub_100003908();
  __chkstk_darwin(v31);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v32);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v33);
  sub_100003878();
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
  v142 = &v124[-v38];
  v39 = sub_10022C350(&qword_100CCF300);
  sub_1000037E8();
  __chkstk_darwin(v40);
  v42 = &v124[-v41];
  v43 = type metadata accessor for ViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v44);
  v46 = &v124[-((v45 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for ViewState.SecondaryViewState(0);
  sub_1000037E8();
  __chkstk_darwin(v47);
  v49 = &v124[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v141 = a1;
  v50 = a1 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_view;
  sub_1000A0730(v50 + v43[5], v49, type metadata accessor for ViewState.SecondaryViewState);
  v51 = v50;
  sub_1000A0730(v50, v46, type metadata accessor for ViewState);
  v52 = objc_opt_self();

  v53 = [v52 currentDevice];
  v54 = [v53 userInterfaceIdiom];

  if (v54 && *&v46[v43[9] + 8] == 2)
  {
    v55 = 1;
  }

  else
  {
    v55 = v46[v43[7]];
  }

  v56 = v43;
  sub_10009EF70(v46, type metadata accessor for ViewState);
  sub_1000A08E8(v49, &v42[*(v39 + 48)], type metadata accessor for ViewState.SecondaryViewState);

  if (v55)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100074D48();
    if (EnumCaseMultiPayload == 1)
    {
      v58 = 2;
    }

    else
    {
      v58 = 1;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v59 = _swiftEmptyArrayStorage;
    }

    else
    {
      v59 = &off_100C44CB8;
    }
  }

  else
  {
    sub_100074D48();
    v59 = _swiftEmptyArrayStorage;
    v58 = 1;
  }

  v60 = v141;
  v61 = v142;
  v62 = v51;
  v63 = v139;
  v64 = v140;
  sub_1000A0730(v141 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v139, type metadata accessor for ModalViewState);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 7u:
      type metadata accessor for MainViewModel.ModalModule(0);
      sub_100014C10();
      goto LABEL_18;
    case 4u:
      v65 = sub_100003940();
      sub_100051B60(v65, v66, v67);
      v68 = type metadata accessor for ModalViewState.MapViewModal(0);
      if (sub_100024D10(v64, 1, v68) == 1)
      {
        *v61 = 1;
        type metadata accessor for MainViewModel.ModalModule(0);
        sub_100014C10();
LABEL_18:
        swift_storeEnumTagMultiPayload();
        v69 = sub_100049A98();
LABEL_19:
        sub_10001B350(v69, v70, v71, v72);
      }

      else
      {
        *v61 = 0;
        type metadata accessor for MainViewModel.ModalModule(0);
        sub_100014C10();
        swift_storeEnumTagMultiPayload();
        v90 = sub_100049A98();
        sub_10001B350(v90, v91, v92, v93);
        sub_1000180EC(v64, &qword_100CA65E0);
      }

      v73 = v144;
LABEL_21:
      if (*(*v62 + 64) != 1)
      {
        goto LABEL_24;
      }

      sub_10065F814(v62 + v43[8], v73);
      v74 = type metadata accessor for SearchViewState(0);
      if (sub_100024D10(v73, 1, v74) == 1)
      {
        sub_1000180EC(v73, &qword_100CA6600);
LABEL_24:
        v75 = 1;
      }

      else
      {
        v84 = v137;
        sub_1000A0730(v73 + *(v74 + 20), v137, type metadata accessor for SearchViewState.ViewState);
        sub_10009EF70(v73, type metadata accessor for SearchViewState);
        v75 = 0;
        switch(swift_getEnumCaseMultiPayload())
        {
          case 2u:
          case 3u:
            break;
          case 4u:
            goto LABEL_24;
          default:
            sub_10009EF70(v84, type metadata accessor for SearchViewState.ViewState);
            v75 = 0;
            break;
        }
      }

      v76 = v43[10];
      v77 = *(v62 + v43[11]);
      v78 = type metadata accessor for MainViewModel(0);
      v79 = v62 + v76;
      v80 = v56;
      v81 = v145;
      sub_1000A0730(v79, v145 + v78[9], type metadata accessor for WeatherMapPresentationState);
      sub_1000A0730(v62 + v80[9], v81 + v78[10], type metadata accessor for DisplayMetrics);
      v82 = v60 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_environment;
      swift_beginAccess();
      LOBYTE(v82) = *(v82 + *(type metadata accessor for EnvironmentState() + 76)) == 0;
      *v81 = v58;
      *(v81 + 8) = v59;
      result = sub_100051B60(v61, v81 + v78[6], &qword_100CCF2F8);
      *(v81 + v78[7]) = v75;
      *(v81 + v78[8]) = v77;
      *(v81 + v78[11]) = v82;
      return result;
    case 5u:
      sub_1000A08E8(v63, v135, type metadata accessor for ModalViewState.LocationDetailModal);
      v85 = swift_getEnumCaseMultiPayload();
      v73 = v144;
      switch(v85)
      {
        case 1:
          v110 = sub_100016CA4();
          sub_100017BF0(v110, v111, &v151);
          sub_10001C96C(*(v126 + 24));
          sub_10006979C();
          v112.n128_f64[0] = sub_10001F46C();
          sub_100022F88(&v144, v112, v113);
          sub_1000201F8();
          goto LABEL_38;
        case 2:
          v98 = sub_100016CA4();
          sub_100017BF0(v98, v99, &v152);
          sub_10001C96C(*(HourPrecipitationDetailViewState + 20));
          sub_10006979C();
          v100.n128_f64[0] = sub_10001F46C();
          sub_100022F88(&v145, v100, v101);
          sub_1000201F8();
          goto LABEL_38;
        case 3:
          v102 = sub_100016CA4();
          sub_100017BF0(v102, v103, &v153);
          sub_10001C96C(*(v128 + 20));
          sub_10006979C();
          v104.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v146, v104, v105);
          sub_1000201F8();
          goto LABEL_38;
        case 4:
          v94 = sub_100016CA4();
          sub_100017BF0(v94, v95, &v154);
          sub_10001C96C(*(v129 + 28));
          sub_10006979C();
          v96.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v147, v96, v97);
          sub_1000201F8();
          goto LABEL_38;
        case 5:
          v114 = sub_100016CA4();
          v64 = v130;
          sub_1000A08E8(v114, v130, v115);
          sub_10001C96C(*(v131 + 28));
          sub_10006979C();
          v116.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v148, v116, v117);
          sub_1000201F8();
          goto LABEL_38;
        case 6:
          type metadata accessor for URL();
          sub_1000037E8();
          (*(v119 + 32))(v61, v135);
          type metadata accessor for MainViewModel.ModalModule.LocationDetailModule(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for MainViewModel.ModalModule(0);
          sub_100014C10();
          swift_storeEnumTagMultiPayload();
          v120 = sub_100049A98();
          sub_10001B350(v120, v121, v122, v123);
          goto LABEL_21;
        case 7:
          v106 = sub_100016CA4();
          v64 = v132;
          sub_1000A08E8(v106, v132, v107);
          sub_10001C96C(*(v133 + 24));
          sub_10006979C();
          v108.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v149, v108, v109);
          sub_1000201F8();
          goto LABEL_38;
        default:
          v86 = sub_100016CA4();
          sub_100017BF0(v86, v87, &v150);
          sub_10001C96C(*(v125 + 28));
          sub_10006979C();
          v88.n128_f64[0] = sub_10001F46C();
          sub_100022F88(v143, v88, v89);
          sub_1000201F8();
LABEL_38:
          swift_storeEnumTagMultiPayload();
          v118 = type metadata accessor for MainViewModel.ModalModule(0);
          swift_storeEnumTagMultiPayload();
          sub_10001B350(v64, 0, 1, v118);
          sub_100051B60(v64, v61, &qword_100CCF2F8);
          break;
      }

      goto LABEL_21;
    case 6u:
      v72 = type metadata accessor for MainViewModel.ModalModule(0);
      v69 = v61;
      v70 = 1;
      v71 = 1;
      goto LABEL_19;
    default:
      sub_100008BBC();
      type metadata accessor for MainViewModel.ModalModule(0);
      sub_100014C10();
      goto LABEL_18;
  }
}

uint64_t sub_1000A0664@<X0>(void (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  v3 = type metadata accessor for MainViewModel(0);

  return sub_10001B350(a2, 0, 1, v3);
}

uint64_t sub_1000A06D8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0730(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A078C()
{
  v1 = sub_100003B38();
  v2(v1);
  sub_1000037E8();
  v3 = sub_100003940();
  v4(v3);
  return v0;
}

uint64_t sub_1000A07E0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0838()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0890()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A08E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A0944()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A09B0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    sub_10022C350(&qword_100CCF2F8);
    sub_100003928();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[6];
    }

    else
    {
      type metadata accessor for WeatherMapPresentationState(0);
      sub_100003928();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[9];
      }

      else
      {
        v10 = type metadata accessor for DisplayMetrics();
        v11 = a4[10];
      }
    }

    return sub_10001B350(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_1000A0AC0()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A0B2C(uint64_t a1, uint64_t a2, int *a3)
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

  else
  {
    sub_10022C350(&qword_100CCF2F8);
    sub_100003928();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[6];
    }

    else
    {
      type metadata accessor for WeatherMapPresentationState(0);
      sub_100003928();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[9];
      }

      else
      {
        v10 = type metadata accessor for DisplayMetrics();
        v11 = a3[10];
      }
    }

    return sub_100024D10(a1 + v11, a2, v10);
  }
}

unint64_t sub_1000A0C40()
{
  result = qword_100CE46E8;
  if (!qword_100CE46E8)
  {
    sub_10022E824(&qword_100CE44F8);
    sub_1000A0CCC();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE46E8);
  }

  return result;
}

unint64_t sub_1000A0CCC()
{
  result = qword_100CE46F0;
  if (!qword_100CE46F0)
  {
    sub_10022E824(&qword_100CE44F0);
    sub_10006768C(&qword_100CE46F8, &qword_100CE4700);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE46F0);
  }

  return result;
}

unint64_t sub_1000A0DB0()
{
  result = qword_100CE4708;
  if (!qword_100CE4708)
  {
    sub_10022E824(&qword_100CE44D8);
    sub_1000A0E3C();
    sub_1000A11A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4708);
  }

  return result;
}

unint64_t sub_1000A0E3C()
{
  result = qword_100CE4630;
  if (!qword_100CE4630)
  {
    sub_10022E824(&qword_100CE44D0);
    sub_1000A0EC8();
    sub_1000A1038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4630);
  }

  return result;
}

unint64_t sub_1000A0EC8()
{
  result = qword_100CE4638;
  if (!qword_100CE4638)
  {
    sub_10022E824(&qword_100CE44E8);
    sub_1000A0F54();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4638);
  }

  return result;
}

unint64_t sub_1000A0F54()
{
  result = qword_100CE4640;
  if (!qword_100CE4640)
  {
    sub_10022E824(&qword_100CE44E0);
    sub_10006768C(&qword_100CE4648, &qword_100CE4650);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4640);
  }

  return result;
}

unint64_t sub_1000A1038()
{
  result = qword_100CE4658;
  if (!qword_100CE4658)
  {
    sub_10022E824(&qword_100CE44B8);
    sub_1000A10C4();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4658);
  }

  return result;
}

unint64_t sub_1000A10C4()
{
  result = qword_100CE4660;
  if (!qword_100CE4660)
  {
    sub_10022E824(&qword_100CE44B0);
    sub_10006768C(&qword_100CE4668, &qword_100CE4670);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4660);
  }

  return result;
}

unint64_t sub_1000A11A8()
{
  result = qword_100CE4678;
  if (!qword_100CE4678)
  {
    sub_10022E824(&qword_100CE43C8);
    sub_1000A1260();
    sub_10006768C(&qword_100CE4628, &qword_100CE43B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4678);
  }

  return result;
}

unint64_t sub_1000A1260()
{
  result = qword_100CE4580;
  if (!qword_100CE4580)
  {
    sub_10022E824(&qword_100CE44A8);
    sub_1000A12EC();
    sub_1000A1A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4580);
  }

  return result;
}

unint64_t sub_1000A12EC()
{
  result = qword_100CE4588;
  if (!qword_100CE4588)
  {
    sub_10022E824(&qword_100CE4490);
    sub_1000A1378();
    sub_1000A16E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4588);
  }

  return result;
}

unint64_t sub_1000A1378()
{
  result = qword_100CE4590;
  if (!qword_100CE4590)
  {
    sub_10022E824(&qword_100CE4488);
    sub_1000A1404();
    sub_1000A1574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4590);
  }

  return result;
}

unint64_t sub_1000A1404()
{
  result = qword_100CE4598;
  if (!qword_100CE4598)
  {
    sub_10022E824(&qword_100CE44A0);
    sub_1000A1490();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4598);
  }

  return result;
}

unint64_t sub_1000A1490()
{
  result = qword_100CE45A0;
  if (!qword_100CE45A0)
  {
    sub_10022E824(&qword_100CE4498);
    sub_10006768C(&qword_100CB0680, &qword_100CB0688);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45A0);
  }

  return result;
}

unint64_t sub_1000A1574()
{
  result = qword_100CE45A8;
  if (!qword_100CE45A8)
  {
    sub_10022E824(&qword_100CE4468);
    sub_1000A1600();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45A8);
  }

  return result;
}

unint64_t sub_1000A1600()
{
  result = qword_100CE45B0;
  if (!qword_100CE45B0)
  {
    sub_10022E824(&qword_100CE4460);
    sub_10006768C(&qword_100CB0690, &qword_100CB0698);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45B0);
  }

  return result;
}

unint64_t sub_1000A16E4()
{
  result = qword_100CE45B8;
  if (!qword_100CE45B8)
  {
    sub_10022E824(&qword_100CE4448);
    sub_1000A1770();
    sub_1000A18E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45B8);
  }

  return result;
}

unint64_t sub_1000A1770()
{
  result = qword_100CE45C0;
  if (!qword_100CE45C0)
  {
    sub_10022E824(&qword_100CE4458);
    sub_1000A17FC();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45C0);
  }

  return result;
}

unint64_t sub_1000A17FC()
{
  result = qword_100CE45C8;
  if (!qword_100CE45C8)
  {
    sub_10022E824(&qword_100CE4450);
    sub_10006768C(&qword_100CB06B0, &qword_100CB06B8);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45C8);
  }

  return result;
}

unint64_t sub_1000A18E0()
{
  result = qword_100CE45D0;
  if (!qword_100CE45D0)
  {
    sub_10022E824(&qword_100CE4438);
    sub_1000A196C();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45D0);
  }

  return result;
}

unint64_t sub_1000A196C()
{
  result = qword_100CE45D8;
  if (!qword_100CE45D8)
  {
    sub_10022E824(&qword_100CE4430);
    sub_10006768C(&qword_100CB06C0, &qword_100CB06C8);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45D8);
  }

  return result;
}

unint64_t sub_1000A1A50()
{
  result = qword_100CE45E0;
  if (!qword_100CE45E0)
  {
    sub_10022E824(&qword_100CE4418);
    sub_1000A1B08();
    sub_1008D8260(&qword_100CE4610, &qword_100CE43E8, &unk_100A971E0, sub_1000A1E74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45E0);
  }

  return result;
}

unint64_t sub_1000A1B08()
{
  result = qword_100CE45E8;
  if (!qword_100CE45E8)
  {
    sub_10022E824(&qword_100CE4410);
    sub_1000A1B94();
    sub_1000A1D04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45E8);
  }

  return result;
}

unint64_t sub_1000A1B94()
{
  result = qword_100CE45F0;
  if (!qword_100CE45F0)
  {
    sub_10022E824(&qword_100CE4428);
    sub_1000A1C20();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45F0);
  }

  return result;
}

unint64_t sub_1000A1C20()
{
  result = qword_100CE45F8;
  if (!qword_100CE45F8)
  {
    sub_10022E824(&qword_100CE4420);
    sub_10006768C(&qword_100CB06F0, &qword_100CB06F8);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE45F8);
  }

  return result;
}

unint64_t sub_1000A1D04()
{
  result = qword_100CE4600;
  if (!qword_100CE4600)
  {
    sub_10022E824(&qword_100CE43F8);
    sub_1000A1D90();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4600);
  }

  return result;
}

unint64_t sub_1000A1D90()
{
  result = qword_100CE4608;
  if (!qword_100CE4608)
  {
    sub_10022E824(&qword_100CE43F0);
    sub_10006768C(&qword_100CB0700, &qword_100CB0708);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4608);
  }

  return result;
}

unint64_t sub_1000A1E74()
{
  result = qword_100CE4618;
  if (!qword_100CE4618)
  {
    sub_10022E824(&qword_100CE43D8);
    sub_1000A1F00();
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4618);
  }

  return result;
}

unint64_t sub_1000A1F00()
{
  result = qword_100CE4620;
  if (!qword_100CE4620)
  {
    sub_10022E824(&qword_100CE43D0);
    sub_10006768C(&qword_100CB0738, &qword_100CB0740);
    sub_10006768C(&unk_100CE0FC0, &qword_100CA6EB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE4620);
  }

  return result;
}

uint64_t sub_1000A1FE4()
{
  sub_10022C350(&unk_100CB3AA0);
  Binding.wrappedValue.getter();
  return v1;
}

uint64_t sub_1000A203C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v16[2] = a4;
  v16[0] = a5;
  v16[1] = a2;
  v7 = *(a3 - 8);
  __chkstk_darwin(a1);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for _ValueTransactionModifier();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v16 - v13;
  (*(v7 + 16))(v9, a1, a3, v12);

  _ValueTransactionModifier.init(value:transform:)();
  View.modifier<A>(_:)();
  return (*(v11 + 8))(v14, v10);
}

uint64_t type metadata accessor for VFXTestView()
{
  result = qword_100CACC38;
  if (!qword_100CACC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000A228C()
{
  sub_1000A23E4();
  if (v0 <= 0x3F)
  {
    sub_100081B54(319, &qword_100CACC50);
    if (v1 <= 0x3F)
    {
      sub_100061D18();
      if (v2 <= 0x3F)
      {
        sub_100081B54(319, &qword_100CACC68);
        if (v3 <= 0x3F)
        {
          sub_100081B54(319, &unk_100CACC70);
          if (v4 <= 0x3F)
          {
            type metadata accessor for SkyBackgroundGradient();
            if (v5 <= 0x3F)
            {
              type metadata accessor for Date();
              if (v6 <= 0x3F)
              {
                type metadata accessor for Elevation();
                if (v7 <= 0x3F)
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
}

void sub_1000A23E4()
{
  if (!qword_100CACC48)
  {
    sub_10022E824(&qword_100CA4A38);
    sub_100006F64(&qword_100CA4A40, &qword_100CA4A38);
    v0 = type metadata accessor for ObservedObject();
    if (!v1)
    {
      atomic_store(v0, &qword_100CACC48);
    }
  }
}

uint64_t type metadata accessor for VFXTestViewModel()
{
  result = qword_100CD7200;
  if (!qword_100CD7200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1000A24F4()
{
  result = qword_100CE12A8;
  if (!qword_100CE12A8)
  {
    sub_10022E824(&qword_100CE12B0);
    sub_10006768C(&qword_100CE12B8, &qword_100CE12C0);
    sub_100061564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE12A8);
  }

  return result;
}

unint64_t sub_1000A25AC()
{
  result = qword_100CE12C8;
  if (!qword_100CE12C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE12C8);
  }

  return result;
}

uint64_t sub_1000A2608@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10022C350(&qword_100CE1250);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v42 - v6;
  v48 = sub_10022C350(&qword_100CE1258);
  __chkstk_darwin(v48);
  v9 = v42 - v8;
  v44 = sub_10022C350(&qword_100CE1260);
  __chkstk_darwin(v44);
  v45 = v42 - v10;
  v47 = sub_10022C350(&qword_100CE1268);
  __chkstk_darwin(v47);
  v46 = v42 - v11;
  v43 = sub_10022C350(&qword_100CE1270);
  __chkstk_darwin(v43);
  v13 = v42 - v12;
  v14 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v14 - 8);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v17 = *v16;
  v18 = sub_1000A2E84(v16);
  if (v17 == 1)
  {
    v42[1] = v42;
    __chkstk_darwin(v18);
    v42[0] = sub_10022C350(&qword_100CE12E8);
    v19 = sub_10022E824(&qword_100CE12F0);
    v20 = sub_10022E824(&qword_100CE12F8);
    v42[3] = v4;
    v21 = v20;
    v22 = sub_10006768C(&qword_100CE1300, &qword_100CE12F0);
    v42[2] = a1;
    v23 = sub_10022E824(&qword_100CE1308);
    v24 = sub_10006768C(&unk_100CE1310, &qword_100CE1308);
    __src[0] = v23;
    __src[1] = v24;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __src[0] = v19;
    __src[1] = v21;
    __src[2] = v22;
    __src[3] = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    v13[*(sub_10022C350(&qword_100CE12B0) + 36)] = 0;
    __src[0] = sub_1000A3470();
    __src[1] = v26;
    LOBYTE(__src[2]) = v27 & 1;
    sub_10022C350(&unk_100CB3AA0);
    Binding.wrappedValue.getter();
    v28 = v49[0];

    sub_1000A3644(v28, v54);
    v29 = &v13[*(sub_10022C350(&qword_100CE12A0) + 36)];
    v30 = v54[1];
    *v29 = v54[0];
    *(v29 + 1) = v30;
    *(v29 + 4) = v55;
    v31 = sub_1000A3470();
    v33 = v32;
    LOBYTE(v22) = v34;
    sub_100085DC0(v2, __src);
    v35 = swift_allocObject();
    memcpy((v35 + 16), __src, 0x48uLL);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1008921E4;
    *(v36 + 24) = v35;
    LOBYTE(v52) = 0;
    State.init(wrappedValue:)();
    v37 = v49[0];
    v38 = v50;
    v39 = &v13[*(v43 + 36)];
    *v39 = v31;
    *(v39 + 1) = v33;
    v39[16] = v22 & 1;
    v39[17] = 0;
    *(v39 + 18) = v52;
    *(v39 + 11) = v53;
    *(v39 + 3) = sub_1008921EC;
    *(v39 + 4) = v36;
    v39[40] = v37;
    *(v39 + 41) = v49[0];
    *(v39 + 11) = *(v49 + 3);
    *(v39 + 6) = v38;
    sub_1000302D8(v13, v45, &qword_100CE1270);
    swift_storeEnumTagMultiPayload();
    sub_1008920A0();
    v40 = v46;
    _ConditionalContent<>.init(storage:)();
    sub_1000302D8(v40, v9, &qword_100CE1268);
    swift_storeEnumTagMultiPayload();
    sub_100892014();
    sub_10006768C(&qword_100CE12E0, &qword_100CE1250);
    _ConditionalContent<>.init(storage:)();
    sub_1000180EC(v40, &qword_100CE1268);
    return sub_1000180EC(v13, &qword_100CE1270);
  }

  else if (v17 == 2)
  {
    sub_10022C350(&qword_100CE1278);
    sub_10006768C(&qword_100CE1280, &qword_100CE1278);
    NavigationView.init(content:)();
    (*(v5 + 16))(v9, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_100892014();
    sub_10006768C(&qword_100CE12E0, &qword_100CE1250);
    _ConditionalContent<>.init(storage:)();
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A2E40()
{

  return swift_deallocObject();
}

uint64_t sub_1000A2E84(uint64_t a1)
{
  v2 = type metadata accessor for MainViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000A2EE8(uint64_t a1)
{
  v9[0] = static HorizontalAlignment.center.getter();
  v9[1] = 0;
  v10 = 1;
  sub_100085DC0(a1, __src);
  v2 = swift_allocObject();
  memcpy((v2 + 16), __src, 0x48uLL);
  v3 = sub_10022C350(&qword_100CCC2D8);
  v14[7] = sub_10071E998;
  v14[8] = 0;
  v15 = 0;
  v11 = v3;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, __src, &unk_100CAF270);
  if (*&__src[24])
  {
    sub_100013188(__src, v14);
    v12 = sub_1008923A0;
    v13 = v2;
    v5 = Dictionary.init(dictionaryLiteral:)();
    v14[5] = _swiftEmptyArrayStorage;
    v14[6] = v5;
    sub_10022C350(&qword_100CE12F0);
    sub_10022C350(&qword_100CE12F8);
    sub_10006768C(&qword_100CE1300, &qword_100CE12F0);
    v6 = sub_10022E824(&qword_100CE1308);
    v7 = sub_10006768C(&unk_100CE1310, &qword_100CE1308);
    *__src = v6;
    *&__src[8] = v7;
    swift_getOpaqueTypeConformance2();
    View.toolbar<A>(content:)();
    return sub_1000180EC(v9, &qword_100CE12F0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000A3180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10000C778();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = type metadata accessor for ToolbarItemPlacement();
  v25 = sub_100003810(v24);
  __chkstk_darwin(v25);
  sub_1000037D8();
  v26 = sub_10022C350(&qword_100CE1308);
  sub_1000037C4();
  v28 = v27;
  sub_100003828();
  v30 = __chkstk_darwin(v29);
  v32 = &a9 - v31;
  v23(v30);
  sub_10022C350(&qword_100CE1340);
  sub_1000055A4();
  sub_10006768C(v33, &qword_100CE1340);
  ToolbarItem<>.init(placement:content:)();
  sub_100018414();
  sub_10006768C(v34, &qword_100CE1308);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  (*(v28 + 8))(v32, v26);
  sub_10000536C();
}

uint64_t sub_1000A333C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = sub_10022C350(a1);
  *(a4 + 80) = a2;
  *(a4 + 88) = 0;
  *(a4 + 96) = 0;
  *a4 = v7;
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000302D8(&xmmword_100D8FB90, &v9, &unk_100CAF270);
  if (v10)
  {
    sub_100013188(&v9, a4 + 24);
    *(a4 + 8) = a3;
    *(a4 + 16) = 0;
    result = Dictionary.init(dictionaryLiteral:)();
    *(a4 + 64) = _swiftEmptyArrayStorage;
    *(a4 + 72) = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000A3470()
{
  sub_100085DC0(v0, __src);
  type metadata accessor for MainActor();
  v1 = static MainActor.shared.getter();
  v2 = swift_allocObject();
  v2[2] = v1;
  v2[3] = &protocol witness table for MainActor;
  memcpy(v2 + 4, __src, 0x48uLL);
  sub_100085DC0(v0, __src);
  v3 = static MainActor.shared.getter();
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = &protocol witness table for MainActor;
  memcpy(v4 + 4, __src, 0x48uLL);
  Binding.init(get:set:)();
  return __src[0];
}

uint64_t sub_1000A358C@<X0>(BOOL *a1@<X8>)
{
  v2 = type metadata accessor for MainViewModel(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100095730();
  v5 = *(v4 + 1);

  sub_1000A2E84(v4);
  v6 = *(v5 + 16);

  *a1 = v6 != 0;
  return result;
}

uint64_t sub_1000A3644@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  State.init(wrappedValue:)();
  result = State.init(wrappedValue:)();
  *a2 = a1;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_1000A3734@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a2;
  v32 = type metadata accessor for WeatherMapPresentationState(0) - 8;
  __chkstk_darwin(v32);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MainViewModel(0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();

  sub_100095730();
  v14 = *(v10 + 48);
  v15 = (a4 + *(sub_10022C350(&qword_100CCFAE8) + 36));
  v16 = sub_10022C350(&qword_100CCFAF0);
  sub_1000A3D20(&v12[v14], v15 + *(v16 + 28), type metadata accessor for DisplayMetrics);
  sub_100097CF4(v12, type metadata accessor for MainViewModel);
  *v15 = KeyPath;
  sub_10022C350(&qword_100CCFAF8);
  sub_1000037E8();
  (*(v17 + 16))(a4, a1);
  swift_getKeyPath();
  sub_100095730();
  sub_1000A3D20(&v12[*(v10 + 44)], v8, type metadata accessor for WeatherMapPresentationState);
  sub_100014C34();
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v18 = sub_10022C350(&qword_100CCFB00);
  sub_10001F48C(v18);
  swift_getKeyPath();
  sub_100095730();
  sub_100008C0C();
  sub_100014C34();
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v19 = sub_10022C350(&qword_100CCFB08);
  sub_10001F48C(v19);
  swift_getKeyPath();
  sub_100095730();
  sub_100014C34();
  v20 = sub_10022C350(&qword_100CCFB10);
  sub_10001F48C(v20);
  sub_100095730();
  sub_100008C0C();
  sub_100014C34();
  LOBYTE(a1) = *v8;
  sub_100097CF4(v8, type metadata accessor for WeatherMapPresentationState);
  v21 = swift_allocObject();
  *(v21 + 16) = v33;
  *(v21 + 24) = a3;
  v22 = a4 + *(sub_10022C350(&qword_100CCFB18) + 36);
  *v22 = a1;
  *(v22 + 8) = sub_100670694;
  *(v22 + 16) = v21;

  sub_10022C350(&unk_100CE0F40);
  sub_100006F64(&qword_100CA4CD0, &unk_100CE0F40);
  v23 = ObservedObject.init(wrappedValue:)();
  v25 = v24;
  v26 = (a4 + *(sub_10022C350(&qword_100CCFB20) + 36));
  *v26 = v23;
  v26[1] = v25;
  v27 = sub_100670448();
  v29 = v28;
  result = sub_10022C350(&qword_100CCFB28);
  v31 = (a4 + *(result + 36));
  *v31 = v27;
  v31[1] = v29;
  return result;
}

uint64_t sub_1000A3B30()
{
  sub_10000FE4C();
  result = sub_1000A3F50();
  *v0 = result;
  return result;
}

uint64_t sub_1000A3B84()
{
  sub_10000FE4C();
  result = EnvironmentValues.isWindowFocused.getter();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1000A3BD4()
{

  return swift_deallocObject();
}

uint64_t sub_1000A3C14(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  v4 = sub_100003940();
  v5(v4);
  return a2;
}

uint64_t sub_1000A3C70()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A3CC8()
{
  sub_100003A00();
  v1(0);
  sub_1000037E8();
  v2 = sub_100003940();
  v3(v2);
  return v0;
}

uint64_t sub_1000A3D20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1000037E8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

unint64_t sub_1000A3DA0()
{
  result = qword_100CA6168;
  if (!qword_100CA6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6168);
  }

  return result;
}

uint64_t sub_1000A3E34()
{
  sub_10000FE4C();
  result = sub_1000A3E14();
  *v0 = result & 1;
  return result;
}

unint64_t sub_1000A3E60()
{
  result = qword_100CA60B0;
  if (!qword_100CA60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60B0);
  }

  return result;
}

unint64_t sub_1000A3EFC()
{
  result = qword_100CA6110;
  if (!qword_100CA6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6110);
  }

  return result;
}

uint64_t sub_1000A3F50()
{
  sub_1000A3EFC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000A3F8C()
{
  sub_10000FE4C();
  result = sub_1000A3F50();
  *v0 = result;
  return result;
}

uint64_t sub_1000A4020(uint64_t a1)
{
  *(v1 + 2408) = a1;
}

uint64_t sub_1000A405C()
{
}

uint64_t sub_1000A408C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_1007F4464(a1, v3);
}

unint64_t sub_1000A4108()
{
  result = qword_100CA60A8;
  if (!qword_100CA60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA60A8);
  }

  return result;
}

uint64_t sub_1000A415C()
{
  v0 = sub_1000A4108();
  sub_1000054C8(v0, &unk_100C49EB8);

  return EnvironmentValues.subscript.getter();
}

uint64_t sub_1000A419C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1E98 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for DisplayMetrics();
  v3 = sub_10000703C(v2, qword_100D8F3B8);

  return sub_1000A467C(v3, a1);
}

uint64_t sub_1000A4214()
{
  v0 = type metadata accessor for DisplayMetrics();
  sub_100007074(v0, qword_100D8F3B8);
  v1 = sub_10000703C(v0, qword_100D8F3B8);
  return sub_1000336E4(v1);
}

uint64_t sub_1000A4260@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022C350(&qword_100CE9840);
  sub_100003828();
  __chkstk_darwin(v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for DynamicTypeSize();
  sub_1000037C4();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_1000037D8();
  v13 = v12 - v11;
  v39 = [a1 interfaceOrientation];
  v14 = a1;
  v15 = [v14 traitCollection];
  v38 = [v15 horizontalSizeClass];

  [v14 bounds];
  v17 = v16;
  v18 = [v14 screen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v40.origin.x = v20;
  v40.origin.y = v22;
  v40.size.width = v24;
  v40.size.height = v26;
  v27 = v17 / CGRectGetWidth(v40);
  [v14 bounds];
  v29 = sub_1000A4598(v28);
  [v14 bounds];
  v31 = sub_1000A4608(v30);
  v32 = [v14 traitCollection];

  v33 = [v32 preferredContentSizeCategory];
  DynamicTypeSize.init(_:)();
  if (sub_100024D10(v6, 1, v7) == 1)
  {
    (*(v9 + 104))(v13, enum case for DynamicTypeSize.medium(_:), v7);
    if (sub_100024D10(v6, 1, v7) != 1)
    {
      sub_10099BA8C(v6);
    }
  }

  else
  {
    (*(v9 + 32))(v13, v6, v7);
  }

  v34 = v38;
  *a2 = v39;
  *(a2 + 8) = v34;
  if (v27 == 1.0)
  {
    v35 = 0;
  }

  else if (vabdd_f64(0.5, v27) <= 0.05)
  {
    v35 = 2;
  }

  else if (v27 > 0.5)
  {
    v35 = 1;
  }

  else
  {
    v35 = 3;
  }

  *(a2 + 16) = v35;
  *(a2 + 17) = v29;
  *(a2 + 18) = v31;
  v36 = type metadata accessor for DisplayMetrics();
  return (*(v9 + 32))(a2 + *(v36 + 36), v13, v7);
}

BOOL sub_1000A4598(double a1)
{
  v1 = 0;
  result = a1 >= 1024.0;
  v3 = &_mh_execute_header.magic + 1;
  do
  {
    while (*(&off_100C42A08 + v3 + 32) == 1)
    {
      v3 = 0;
      v4 = (a1 >= 1024.0) | v1;
      v1 = 1;
      if (v4)
      {
        return result;
      }
    }

    v3 = 0;
    v5 = v1 ^ 1;
    v1 = 1;
  }

  while (((a1 < 0.0) & v5) != 0);
  return 0;
}

uint64_t sub_1000A4608(double a1)
{
  for (i = 0; !*(&off_100C42A30 + i + 34); --i)
  {
    if (a1 >= 0.0 || i == -2)
    {
      return static VerticalSizingBehaviorKey.defaultValue.getter();
    }

LABEL_13:
    ;
  }

  if (*(&off_100C42A30 + i + 34) == 1)
  {
    if (a1 >= 1024.0)
    {
      return static LocationSearchEntityFromStringResolver.__derived_struct_equals(_:_:)();
    }

LABEL_12:
    if (i == -2)
    {
      return static VerticalSizingBehaviorKey.defaultValue.getter();
    }

    goto LABEL_13;
  }

  if (a1 < 1200.0)
  {
    goto LABEL_12;
  }

  return 2;
}

uint64_t sub_1000A467C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayMetrics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A46E0()
{
  v0 = type metadata accessor for DisplayMetrics();
  v1 = sub_100003810(v0);
  __chkstk_darwin(v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A3CC8();
  return sub_1000A4778(v3);
}

uint64_t sub_1000A4778(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMetrics();
  __chkstk_darwin(v2 - 8);
  sub_1000037D8();
  sub_1000A467C(a1, v4 - v3);
  sub_1000A4108();
  EnvironmentValues.subscript.setter();
  return sub_1000A4810(a1);
}

uint64_t sub_1000A4810(uint64_t a1)
{
  v2 = type metadata accessor for DisplayMetrics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000A486C()
{
  result = qword_100CA6048;
  if (!qword_100CA6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA6048);
  }

  return result;
}

uint64_t sub_1000A48C0()
{
  sub_1000A486C();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000A4900@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v3 = byte_100CA6008;
  *a1 = static MapTransitionNamespaceKey.defaultValue;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1000A49C8@<X0>(uint64_t a1@<X8>)
{
  v2 = qword_100CB3258;
  v1 = unk_100CB3260;
  *a1 = byte_100CB3250;
  *(a1 + 8) = v2;
  *(a1 + 16) = v1;
}

unint64_t sub_1000A49E4()
{
  result = qword_100CE1330;
  if (!qword_100CE1330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CE1330);
  }

  return result;
}

__n128 sub_1000A4A38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A4A4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  *a2 = static Alignment.center.getter();
  a2[1] = v6;
  sub_10022C350(&qword_100CA5A70);
  sub_1000A4BE0(v3, a1);
  v7 = [objc_opt_self() defaultCenter];
  v8 = sub_10022C350(&qword_100CA5A78);
  NSNotificationCenter.publisher(for:object:)();

  v9 = *(v3 + 8);
  v15 = *(v3 + 24);
  v16 = v9;
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v3 + 32);
  v12 = (a2 + *(v8 + 56));
  *v12 = sub_1002803F0;
  v12[1] = v10;
  sub_100060DE0(&v16, v14, &qword_100CA5A80);
  return sub_100060DE0(&v15, v14, &qword_100CA5A80);
}

uint64_t sub_1000A4BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA5A88);
  __chkstk_darwin(v4);
  v6 = &v16[-v5];
  v7 = sub_10022C350(&qword_100CA5A90);
  __chkstk_darwin(v7);
  v9 = &v16[-v8];
  if (sub_1000A4E98())
  {
    v10 = *(a1 + 8);
    v17 = *(a1 + 24);
    v18 = v10;
    v11 = swift_allocObject();
    v12 = *(a1 + 16);
    *(v11 + 16) = *a1;
    *(v11 + 32) = v12;
    *(v11 + 48) = *(a1 + 32);
    v13 = sub_10022C350(&qword_100CA5AB8);
    (*(*(v13 - 8) + 16))(v6, a2, v13);
    v14 = &v6[*(v4 + 36)];
    *v14 = sub_1002803F8;
    v14[1] = v11;
    v14[2] = 0;
    v14[3] = 0;
    sub_100060DE0(v6, v9, &qword_100CA5A88);
    swift_storeEnumTagMultiPayload();
    sub_100060DE0(&v18, v16, &qword_100CA5A80);
    sub_100060DE0(&v17, v16, &qword_100CA5A80);
    sub_10022C350(&qword_100CA5A98);
    sub_1000A4F28();
    sub_1000A4FAC();
    _ConditionalContent<>.init(storage:)();
    return sub_100280400(v6);
  }

  else
  {
    *v9 = static Color.clear.getter();
    v9[1] = sub_10013042C;
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = 0;
    swift_storeEnumTagMultiPayload();
    sub_10022C350(&qword_100CA5A98);
    sub_1000A4F28();
    sub_1000A4FAC();
    return _ConditionalContent<>.init(storage:)();
  }
}

uint64_t sub_1000A4E98()
{
  if ((*v0 & 1) == 0)
  {
    return 1;
  }

  sub_10022C350(&qword_100CA5A80);
  State.wrappedValue.getter();
  if (v2)
  {
    return 1;
  }

  State.wrappedValue.getter();
  return v2;
}

unint64_t sub_1000A4F28()
{
  result = qword_100CA5AA0;
  if (!qword_100CA5AA0)
  {
    sub_10022E824(&qword_100CA5A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5AA0);
  }

  return result;
}

unint64_t sub_1000A4FAC()
{
  result = qword_100CA5AA8;
  if (!qword_100CA5AA8)
  {
    sub_10022E824(&qword_100CA5A88);
    sub_100006F64(&qword_100CA5AB0, &qword_100CA5AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100CA5AA8);
  }

  return result;
}

uint64_t sub_1000A508C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000A5120(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for WeatherMapPresentationIntent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB)
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
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
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 5;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1000A51F0);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 5;
      default:
        break;
    }
  }

  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 3)
  {
    return v8 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A5204()
{
  if ((Transaction.disablesAnimations.getter() & 1) == 0)
  {
    sub_10022C350(&qword_100CA5A80);
    State.wrappedValue.getter();
  }

  return Transaction.disablesAnimations.setter();
}

__n128 sub_1000A528C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000A52E0()
{
  v3 = sub_100022A88();
  sub_1000A52A8(v3, v4);
  v5 = swift_allocObject();
  sub_10000FE30(v5, v6, v7, v8, v9, v10, v11, v12, v21, v22, v23, v13);
  *(v14 + 64) = v24;
  v15 = static Alignment.center.getter();
  v17 = v16;
  sub_10022C350(&qword_100CB3268);
  sub_1000037E8();
  (*(v18 + 16))(v0, v2);
  result = sub_10022C350(&qword_100CB3270);
  v20 = (v0 + *(result + 36));
  *v20 = sub_1000A5A50;
  v20[1] = v1;
  v20[2] = v15;
  v20[3] = v17;
  return result;
}

uint64_t sub_1000A53BC()
{
  sub_100006F14(v0 + 16);

  return swift_deallocObject();
}

void sub_1000A5410(uint64_t a1, uint64_t a2)
{
  sub_10000406C();
  if (v5 == v6)
  {
    *(v2 + 16) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_10022C350(&qword_100CA3BE8);
    v8 = sub_1000039EC(*(v7 + 32));

    sub_10001B350(v8, v9, a2, v10);
  }
}

void sub_1000A5494(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_100005B78();
  sub_100003928();
  if (*(v8 + 84) == a3)
  {
    v9 = sub_100005B64();

    sub_10001B350(v9, v10, v11, v12);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = -v4;
  }
}

void sub_1000A5524(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  sub_100003928();
  if (*(v10 + 84) == a3)
  {

    sub_10001B350(a1, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }
}

uint64_t sub_1000A55D0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_10022C350(&qword_100CA2CD8);
    v8 = v5 + *(a4 + 20);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000A565C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5)
{
  v10 = type metadata accessor for OverviewTableViewModel();
  if (*(*(v10 - 8) + 84) == a3)
  {
    v11 = v10;
    v12 = a1;
  }

  else
  {
    v11 = sub_10022C350(a5);
    v12 = a1 + *(a4 + 20);
  }

  return sub_10001B350(v12, a2, a2, v11);
}

uint64_t sub_1000A5714(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_10001B350(v2, a2, a2, v4);
}

void sub_1000A575C()
{
  sub_1000041D8();
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v5 + 84) == v3)
  {

    sub_10001B350(v1, v0, v0, v4);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }
}

__n128 initializeBufferWithCopyOfBuffer for DebugLocationManager.InterestingStorms.Storm(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A5818@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FullscreenMapTransitionContainer(0);
  __chkstk_darwin(v6);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a2 + 48) == 1)
  {
    v10 = *(a1 + 1);
    v9 = *(a1 + 2);
    v11 = *a1;
    sub_100035B30(a2, (v8 + 24));
    v12 = *(a2 + 40);
    *v8 = v11;
    *(v8 + 1) = v10;
    *(v8 + 2) = v9;
    *(v8 + 8) = v12;
    *(v8 + 9) = swift_getKeyPath();
    v8[80] = 0;
    v13 = *(v6 + 32);
    *&v8[v13] = swift_getKeyPath();
    sub_10022C350(&qword_100CB3278);
    swift_storeEnumTagMultiPayload();
    v14 = &v8[*(v6 + 36)];
    v17[15] = 4;

    State.init(wrappedValue:)();
    v15 = v18;
    *v14 = v17[16];
    *(v14 + 1) = v15;
    sub_1000EBDC8();
    return sub_10001B350(a3, 0, 1, v6);
  }

  else
  {

    return sub_10001B350(a3, 1, 1, v6);
  }
}

uint64_t sub_1000A59D4()
{
  sub_10000FE4C();
  result = sub_1000A3E14();
  *v0 = result & 1;
  return result;
}

uint64_t sub_1000A5A70()
{
  sub_10000406C();
  if (v2 == v3)
  {
    return sub_1000039D8(*(v0 + 16));
  }

  v5 = v1;
  sub_10022C350(&qword_100CA3BE8);
  v6 = sub_1000039EC(*(v5 + 32));

  return sub_100024D10(v6, v7, v8);
}

uint64_t sub_1000A5AF0()
{
  sub_10000410C();
  sub_100003928();
  if (*(v4 + 84) == v1)
  {

    return sub_100024D10(v0, v1, v3);
  }

  else
  {
    v6 = *(v0 + *(v2 + 20) + 8);
    if (v6 > 1)
    {
      return (v6 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1000A5B88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(0);
  sub_100003928();
  if (*(v8 + 84) != a2)
  {
    return sub_1000039D8(*(a1 + *(a3 + 20) + 24));
  }

  return sub_100024D10(a1, a2, v7);
}

uint64_t sub_1000A5C2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

  else
  {
    v8 = sub_10022C350(&qword_100CA2CD8);
    v9 = a1 + *(a3 + 20);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000A5CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OverviewTableViewModel();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_10022C350(a4);
    v10 = a1 + *(a3 + 20);
  }

  return sub_100024D10(v10, a2, v9);
}

uint64_t sub_1000A5D70(uint64_t a1, uint64_t a2)
{
  sub_1000038D8();
  v4 = type metadata accessor for Date();

  return sub_100024D10(v2, a2, v4);
}

uint64_t sub_1000A5DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10022C350(&qword_100CB76D0);
  sub_100003928();
  if (*(v7 + 84) != a2)
  {
    return sub_100020D78(a1 + *(a3 + 20));
  }

  return sub_100024D10(a1, a2, v6);
}

uint64_t sub_1000A5EA4()
{
  sub_100355B80(v1);
  sub_1000161C0(v1, v1[3]);
  sub_1000A5F80();
  return sub_100006F14(v1);
}

uint64_t sub_1000A5EEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100035B30(a1, v6);
  v3 = type metadata accessor for DebugPresenter();
  v4 = swift_allocObject();
  result = sub_100013188(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_100C5F738;
  *a2 = v4;
  return result;
}

void sub_1000A5F80()
{
  type metadata accessor for Capabilities();
  if (static Capabilities.isInternalBuild()())
  {
    v0 = [objc_opt_self() sharedApplication];
    v1 = UIApplication.maybeWindow.getter();

    if (v1)
    {
      v2 = swift_allocObject();
      swift_weakInit();
      v3 = swift_allocObject();
      *(v3 + 16) = v2;
      *(v3 + 24) = v1;
      aBlock[4] = sub_1005ADACC;
      aBlock[5] = v3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000742F0;
      aBlock[3] = &unk_100C5F7A0;
      v4 = _Block_copy(aBlock);
      v5 = v1;

      [v5 ts_installDebugMenuHandler:v4];
      _Block_release(v4);
    }

    else
    {
      if (qword_100CA2778 != -1)
      {
        sub_100014454();
      }

      v6 = type metadata accessor for Logger();
      sub_10000703C(v6, qword_100D90CC0);
      oslog = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v7))
      {
        *swift_slowAlloc() = 0;
        sub_10001C688(&_mh_execute_header, v8, v9, "unable to present debug menu because we have no window", v10, v11, v12, v13, v14, oslog);
      }
    }
  }
}

uint64_t sub_1000A6184()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000A61BC()
{

  return swift_deallocObject();
}

void sub_1000A6290(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v7 = type metadata accessor for SceneConnectionOptions();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v35[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    sub_10022C350(&qword_100CB3D88);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100A2C3F0;
    *(v13 + 32) = type metadata accessor for UITraitActiveAppearance();
    *(v13 + 40) = &protocol witness table for UITraitActiveAppearance;
    v36 = ObjectType;
    v35[0] = v3;
    v34 = a1;
    v14 = v3;
    UIWindowScene.registerForTraitChanges(_:target:action:)();
    swift_unknownObjectRelease();

    sub_100006F14(v35);
    v15 = [v12 traitCollection];
    sub_1003BF84C(v12);

    v16 = [a3 shortcutItem];
    if (v16)
    {
      v17 = v16;
      sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___shortcutItemHandlerManager, &type metadata accessor for ShortcutItemHandlerManager);
      ShortcutItemHandlerManager.handle(shortcutItem:)(v17);
    }

    sub_1003BF5AC(v35);
    sub_1000161C0(v35, v36);
    UISceneConnectionOptions.connectionOptions.getter();
    dispatch thunk of SceneStateManagerType.sceneWillConnectToSession(withOptions:)();
    (*(v8 + 8))(v10, v7);
    sub_100006F14(v35);
    v18 = [v12 windows];
    sub_10000C70C(0, &qword_100CB3D80);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (sub_100073CDC(v19))
    {
      sub_1000A7560(0, (v19 & 0xC000000000000001) == 0, v19);
      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v19 + 32);
      }

      v21 = v20;

      v22 = v21;
      sub_1003BF924(v22);
    }

    else
    {

      v21 = 0;
    }

    sub_1000A730C(&OBJC_IVAR____TtC7Weather13SceneDelegate____lazy_storage___displayMetricsMonitor, type metadata accessor for DisplayMetricsMonitor);
    v23 = v21;
    sub_1000A758C(v21);

    v24 = [a3 userActivities];
    sub_10000C70C(0, &qword_100CB3D90);
    sub_1000BEA60();
    static Set._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1000BEAC8();
    v26 = v25;

    v27 = v34;
    if (v26)
    {
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4();
      }

      v28 = type metadata accessor for Logger();
      v29 = sub_100019600(v28, qword_100D90AC0);
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = sub_10000389C();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Scene is handling a user activity on launch", v31, 2u);
        sub_100003884();
      }

      sub_1003BF45C(v35);
      sub_1000161C0(v35, v36);
      sub_100568640(v26);

      sub_100006F14(v35);
    }

    if (v21)
    {
      type metadata accessor for SceneResizingMonitor();
      swift_allocObject();
      v32 = v23;
      *&v14[OBJC_IVAR____TtC7Weather13SceneDelegate_sceneResizeMonitor] = sub_1006E5100(v32);

      v33 = v27;
      static UIWindow.keyWindowScene.setter();
      UIWindow.registerKeyWindowSceneNotification()();
    }
  }
}

uint64_t sub_1000A677C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100CA1F40 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = sub_1000955E0(&xmmword_100D8FB90, &v3, &unk_100CAF270);
  if (v4)
  {
    return sub_100013188(&v3, a1);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A6824(void *a1, void *a2)
{
  sub_1000161C0(a1, a1[3]);
  sub_1000161C0(a2, a2[3]);
  type metadata accessor for SessionEventsAndDataCoordinator();
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    sub_10004306C(&qword_100CBE1F0, type metadata accessor for SessionEventsAndDataCoordinator);
    dispatch thunk of SceneStateManagerType.add(monitor:)();

    sub_100006F14(v4);
    sub_1000161C0(a2, a2[3]);
    result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
    if (result)
    {
      dispatch thunk of SceneStateManagerType.add(monitor:)();

      return sub_100006F14(v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1000A6990(void *a1)
{
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for SessionManager();
  v2 = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = v2;
  sub_1000161C0(a1, a1[3]);
  type metadata accessor for Client();
  v4 = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v4)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = v4;
  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1480);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1478);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v23)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1488);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v21)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1490);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1498);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v17)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CAFC60);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v15)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB14A0);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (!v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1000161C0(a1, a1[3]);
  sub_10022C350(&qword_100CB1450);
  dispatch thunk of ResolverType.resolve<A>(_:)();
  if (v8)
  {
    type metadata accessor for SessionEventsAndDataCoordinator();
    swift_allocObject();
    LOBYTE(v6) = 1;
    sub_100067E9C(1, v3, v5, v24, v22, v20, v18, v16, v13, v10, v6, v7, v7[0], v7[1], v7[2], v8, v9, v10[0], v10[1], v10[2], v11, v12, v13[0], v14);
    return;
  }

LABEL_21:
  __break(1u);
}

void sub_1000A6CEC(uint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5)
{
  v5 = a5;
  v7 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10000C70C(0, v5);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10000C70C(0, a5);
    if (__CocoaSet.Index.age.getter() == *(a4 + 36))
    {
      __CocoaSet.Index.element.getter();
      swift_dynamicCast();
      v5 = v14;
      v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v7 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v10 = *(*(a4 + 48) + 8 * v7);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_15;
        }

        v8 = v7 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v12 = *(*(a4 + 48) + 8 * v7);

  v13 = v12;
}

uint64_t sub_1000A6EF0(void *a1, void *a2)
{
  sub_1000161C0(a2, a2[3]);
  sub_10022C350(&qword_100CB4460);
  result = dispatch thunk of ResolverType.resolve<A>(_:name:)();
  v5 = v7[0];
  if (v7[0])
  {
    sub_1000161C0(a2, a2[3]);
    dispatch thunk of ResolverType.resolve<A>(_:name:)();
    v6 = v7[0];
    sub_1000161C0(a1, a1[3]);
    dispatch thunk of SceneStateManagerType.add(monitor:)();
    sub_100006F14(v7);
    if (v5 == v6)
    {
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    else
    {
      dispatch thunk of SceneStateManagerType.add(monitor:)();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_100006F14(v7);
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }

  return result;
}

void SessionEventsAndDataCoordinator.sceneWillConnectToSession(withOptions:)()
{
  sub_10000C778();
  v1 = v0;
  v2 = type metadata accessor for URL();
  sub_1000037C4();
  v4 = v3;
  __chkstk_darwin(v5);
  sub_1000037D8();
  v8 = v7 - v6;
  if ((SceneConnectionOptions.isEmpty.getter() & 1) == 0)
  {
    v9 = SceneConnectionOptions.connectionOptions.getter();
    if (v9)
    {
      v10 = v9;
      v11 = [v9 URLContexts];

      sub_10000C70C(0, &qword_100CB5250);
      sub_100068A3C(&qword_100CB5258, &qword_100CB5250);
      static Set._unconditionallyBridgeFromObjectiveC(_:)();

      sub_100068A8C();
      v13 = v12;

      if (v13)
      {
        sub_1003E2674([v13 options]);
        if (v14)
        {
          v15 = String.lowercased()();
          countAndFlagsBits = v15._countAndFlagsBits;
          object = v15._object;
        }

        else
        {
          object = 0xE700000000000000;
          countAndFlagsBits = 0x6E776F6E6B6E75;
        }

        v18 = [v13 URL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v20[0] = URL.absoluteString.getter();
        v19 = (*(v4 + 8))(v8, v2);
        v20[1] = *(v1 + 328);
        __chkstk_darwin(v19);
        v20[-4] = v1;
        v20[-3] = countAndFlagsBits;
        v20[-2] = object;
        type metadata accessor for UnfairLock();

        Lock.sync<A>(_:)();

        sub_1003E0524();

        sub_10004A100();
      }
    }
  }

  sub_10000536C();
}

uint64_t sub_1000A730C(uint64_t *a1, void (*a2)(void))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
LABEL_5:

    return v5;
  }

  v7 = v2;
  sub_1000A677C(v9);
  sub_1000161C0(v9, v9[3]);
  a2(0);
  result = dispatch thunk of ResolverType.resolve<A>(_:)();
  if (result)
  {
    v5 = result;
    sub_100006F14(v9);
    *(v7 + v3) = v5;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *sub_1000A73F8(uint64_t a1, uint64_t a2)
{
  v2[4] = 0;
  v5 = OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics;
  v6 = type metadata accessor for DisplayMetrics();
  sub_10001B350(v2 + v5, 1, 1, v6);
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  v2[3] = a2;
  v7 = objc_opt_self();

  v8 = [v7 defaultCenter];
  [v8 addObserver:v2 selector:"windowContentSizeCategoryDidChange" name:UIContentSizeCategoryDidChangeNotification object:0];

  return v2;
}

uint64_t sub_1000A74E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = a2 + 1;
  }

  else
  {
    v7 = type metadata accessor for DynamicTypeSize();
    v8 = v5 + *(a4 + 36);

    return sub_10001B350(v8, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1000A7568(unint64_t result, char a2, uint64_t a3)
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

void sub_1000A758C(void *a1)
{
  swift_unknownObjectWeakAssign();
  sub_1000A75D8();
}

void sub_1000A75D8()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    dispatch thunk of NSKeyValueObservation.invalidate()();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_allocObject();
    swift_weakInit();
    v6 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v1 + 32);
  *(v1 + 32) = v6;

  sub_1000A7728();
}

uint64_t sub_1000A76E4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_1000A7728()
{
  type metadata accessor for MainAction();
  sub_1000037E8();
  __chkstk_darwin(v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10022C350(&qword_100CA65F8);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v12 = [Strong windowScene];
    if (v12)
    {
      v13 = v12;
      v14 = v21;
      sub_1000A4260(v14, v10);
      v15 = [v13 effectiveGeometry];
      v16 = sub_100491968(v10, v15);

      if (v16)
      {
        sub_1000A467C(v10, v6);
        sub_10001B350(v6, 0, 1, v7);
        v17 = OBJC_IVAR____TtC7Weather21DisplayMetricsMonitor_previousDisplayMetrics;
        swift_beginAccess();
        sub_1000A7AEC(v6, v0 + v17);
        swift_endAccess();
        v18 = *(v0 + 16);
        sub_1000A467C(v10, v3);
        type metadata accessor for ViewAction();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        v23 = 0;
        memset(v22, 0, sizeof(v22));
        sub_10004F034(v3, v22, v18);

        sub_1000180EC(v22, &unk_100CD81B0);
        sub_100154090(v3, type metadata accessor for MainAction);
        sub_10001EDB8();
      }

      else
      {
        sub_10001EDB8();
      }
    }

    else
    {
      v19 = v21;
    }
  }
}

uint64_t sub_1000A79E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for DynamicTypeSize();
    v9 = a1 + *(a3 + 36);

    return sub_100024D10(v9, a2, v8);
  }
}

uint64_t sub_1000A7AEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10022C350(&qword_100CA65F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A7B74()
{

  return sub_1000CA5D8(v0, type metadata accessor for ViewState);
}

uint64_t sub_1000A7BDC()
{
  *v5 = v2[564];
  v2[564] = *(v3 + *(v4 + 72));
  *(v5 + 8) = v1;
  *(v5 + 16) = v2[584];
  *(v5 + 17) = v2[582];
  *(v5 + 18) = v2[578];
  *(v5 + 19) = v2[576];
  *(v5 + 20) = v2[570];
  return v5 + v0;
}

uint64_t sub_1000A7C28(uint64_t a1)
{

  return sub_100024D10(v1 + v2, 1, a1);
}

uint64_t sub_1000A7C48()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_1000A7C60@<X0>(uint64_t a1@<X8>)
{
  **(a1 - 256) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000A7CA0()
{
  result = v0;
  *(v2 - 160) = v1;
  return result;
}

uint64_t sub_1000A7CB4()
{
}

uint64_t sub_1000A7CDC()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

uint64_t sub_1000A7CF4(unint64_t *a1)
{

  return sub_10068280C(a1, v1);
}

__n128 sub_1000A7D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __n128 a11)
{
  *v11 = a9;
  v11[1] = a10;
  result = a11;
  v11[2] = a11;
  return result;
}

uint64_t sub_1000A7D70@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a2 - 256);
  v5 = *(v2 - 184);

  return sub_100051C74(v4, v5, a1);
}

uint64_t sub_1000A7E0C(void *a1, uint64_t a2, uint64_t a3)
{
  v1358 = a2;
  v1359 = a1;
  v4 = sub_10022C350(&qword_100CA65B8);
  v5 = sub_100003810(v4);
  __chkstk_darwin(v5);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v6);
  sub_10000E70C();
  sub_100003918(v7);
  v1261 = type metadata accessor for Location();
  sub_1000037C4();
  v1200 = v8;
  __chkstk_darwin(v9);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v10);
  sub_10000E70C();
  sub_100003918(v11);
  v1317 = type metadata accessor for InteractiveMapViewAction();
  sub_1000037E8();
  __chkstk_darwin(v12);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v13);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v14);
  sub_10000E70C();
  v16 = sub_100003918(v15);
  v1341 = type metadata accessor for WeatherMapTrackingState(v16);
  sub_1000037E8();
  __chkstk_darwin(v17);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v18);
  sub_10000E70C();
  sub_100003918(v19);
  v1345 = type metadata accessor for WeatherMapOverlayKind();
  sub_1000037C4();
  v1343 = v20;
  __chkstk_darwin(v21);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v22);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v23);
  sub_10000E70C();
  sub_100003990(v24);
  v25 = sub_10022C350(&qword_100CA6698);
  v26 = sub_100003810(v25);
  __chkstk_darwin(v26);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v27);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v28);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v29);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v30);
  sub_10000E70C();
  v1344 = v31;
  v32 = sub_10022C350(&qword_100CA5CF8);
  v33 = sub_100003810(v32);
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
  sub_10000E70C();
  sub_100003918(v38);
  v39 = type metadata accessor for DisplayMetricsChangeAction();
  v40 = sub_100003810(v39);
  __chkstk_darwin(v40);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v41);
  sub_10000E70C();
  v43 = sub_100003918(v42);
  v1348 = type metadata accessor for SearchViewState(v43);
  sub_1000037E8();
  __chkstk_darwin(v44);
  sub_1000038E4();
  sub_100003918(v45);
  v46 = type metadata accessor for SearchViewAction();
  v47 = sub_100003810(v46);
  __chkstk_darwin(v47);
  sub_1000038E4();
  sub_100003990(v48);
  v49 = sub_10022C350(&qword_100CBEEC0);
  v50 = sub_100003810(v49);
  __chkstk_darwin(v50);
  sub_100003918(&v1195 - v51);
  v1239 = type metadata accessor for LocationViewerViewAction();
  sub_1000037E8();
  __chkstk_darwin(v52);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v53);
  sub_10000E70C();
  sub_100003918(v54);
  v1355 = type metadata accessor for TimeState();
  sub_1000037E8();
  __chkstk_darwin(v55);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v56);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v57);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v58);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v59);
  sub_10000E70C();
  sub_100003918(v60);
  v1350 = type metadata accessor for NotificationsOptInState();
  sub_1000037E8();
  __chkstk_darwin(v61);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v62);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v63);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v64);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v65);
  sub_10000E70C();
  sub_100003918(v66);
  v1356 = type metadata accessor for NotificationsState();
  sub_1000037E8();
  __chkstk_darwin(v67);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v68);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v69);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v70);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v71);
  sub_10000E70C();
  sub_100003918(v72);
  v1352 = type metadata accessor for LocationsState();
  sub_1000037E8();
  __chkstk_darwin(v73);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v74);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v75);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v76);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v77);
  sub_10000E70C();
  sub_100003918(v78);
  v1357 = type metadata accessor for EnvironmentState();
  sub_1000037E8();
  __chkstk_darwin(v79);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v80);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v81);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v82);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v83);
  sub_10000E70C();
  sub_100003918(v84);
  v1351 = type metadata accessor for AppConfigurationState();
  sub_1000037E8();
  __chkstk_darwin(v85);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v86);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v87);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v88);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v89);
  sub_10000E70C();
  v91 = sub_100003918(v90);
  v1347 = type metadata accessor for ModalViewState(v91);
  sub_1000037E8();
  __chkstk_darwin(v92);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v93);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v94);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v95);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v96);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v97);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v98);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v99);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v100);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v101);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v102);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v103);
  sub_100003878();
  v1346 = v104;
  __chkstk_darwin(v105);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v106);
  sub_10000E70C();
  sub_100003990(v107);
  v108 = sub_10022C350(&qword_100CA65E8);
  v109 = sub_100003810(v108);
  __chkstk_darwin(v109);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v110);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v111);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v112);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v113);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v114);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v115);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v116);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v117);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v118);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v119);
  sub_10000E70C();
  v121 = sub_100003918(v120);
  v1354 = type metadata accessor for WeatherMapPresentationState(v121);
  sub_1000037E8();
  __chkstk_darwin(v122);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v123);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v124);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v125);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v126);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v127);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v128);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v129);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v130);
  sub_10000E70C();
  sub_100003918(v131);
  v1349 = type metadata accessor for DisplayMetrics();
  sub_1000037E8();
  __chkstk_darwin(v132);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v133);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v134);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v135);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v136);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v137);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v138);
  sub_10000E70C();
  v140 = sub_100003918(v139);
  v1353 = type metadata accessor for ViewState.SecondaryViewState(v140);
  sub_1000037E8();
  __chkstk_darwin(v141);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v142);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v143);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v144);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v145);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v146);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v147);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v148);
  sub_10000E70C();
  sub_100003990(v149);
  v150 = sub_10022C350(&qword_100CA65F0);
  v151 = sub_100003810(v150);
  __chkstk_darwin(v151);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v152);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v153);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v154);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v155);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v156);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v157);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v158);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v159);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v160);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v161);
  sub_10000E70C();
  sub_100003990(v162);
  v163 = sub_10022C350(&qword_100CA65F8);
  v164 = sub_100003810(v163);
  __chkstk_darwin(v164);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v165);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v166);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v167);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v168);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v169);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v170);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v171);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v172);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v173);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v174);
  sub_10000E70C();
  sub_100003990(v175);
  v176 = sub_10022C350(&qword_100CA6600);
  v177 = sub_100003810(v176);
  __chkstk_darwin(v177);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v178);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v179);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v180);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v181);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v182);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v183);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v184);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v185);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v186);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v187);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v188);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v189);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v190);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v191);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v192);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v193);
  sub_10000E70C();
  sub_100003918(v194);
  active = type metadata accessor for LocationViewerActiveLocationState();
  sub_1000037E8();
  __chkstk_darwin(v195);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v196);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v197);
  sub_10000E70C();
  sub_100003990(v198);
  v199 = sub_10022C350(&qword_100CA6608);
  v200 = sub_100003810(v199);
  __chkstk_darwin(v200);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v201);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v202);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v203);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v204);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v205);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v206);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v207);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v208);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v209);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v210);
  sub_10000E70C();
  v212 = sub_100003918(v211);
  v1360 = type metadata accessor for ViewState(v212);
  sub_1000037E8();
  __chkstk_darwin(v213);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v214);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v215);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v216);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v217);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v218);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v219);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v220);
  sub_10000E70C();
  sub_100003990(v221);
  v222 = sub_10022C350(&qword_100CA6610);
  v223 = sub_100003810(v222);
  __chkstk_darwin(v223);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v224);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v225);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v226);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v227);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v228);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v229);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v230);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v231);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v232);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v233);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v234);
  sub_10000E70C();
  sub_100003990(v235);
  v236 = sub_10022C350(&qword_100CA6618);
  v237 = sub_100003810(v236);
  __chkstk_darwin(v237);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v238);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v239);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v240);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v241);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v242);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v243);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v244);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v245);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v246);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v247);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v248);
  sub_10000E70C();
  sub_100003990(v249);
  v250 = sub_10022C350(&qword_100CA6620);
  v251 = sub_100003810(v250);
  __chkstk_darwin(v251);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v252);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v253);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v254);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v255);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v256);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v257);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v258);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v259);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v260);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v261);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v262);
  sub_10000E70C();
  sub_100003990(v263);
  v264 = sub_10022C350(&qword_100CA6628);
  v265 = sub_100003810(v264);
  __chkstk_darwin(v265);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v266);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v267);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v268);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v269);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v270);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v271);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v272);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v273);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v274);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v275);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v276);
  sub_10000E70C();
  sub_100003990(v277);
  v278 = sub_10022C350(&qword_100CA6630);
  v279 = sub_100003810(v278);
  __chkstk_darwin(v279);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v280);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v281);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v282);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v283);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v284);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v285);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v286);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v287);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v288);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v289);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v290);
  sub_10000E70C();
  sub_100003990(v291);
  v292 = sub_10022C350(&qword_100CA6638);
  v293 = sub_100003810(v292);
  __chkstk_darwin(v293);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v294);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v295);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v296);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v297);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v298);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v299);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v300);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v301);
  sub_100003878();
  sub_100003908();
  v303 = __chkstk_darwin(v302);
  v305 = &v1195 - v304;
  __chkstk_darwin(v303);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v306);
  sub_10000E70C();
  sub_100003990(v307);
  v308 = sub_10022C350(&qword_100CA6640);
  v309 = sub_100003810(v308);
  __chkstk_darwin(v309);
  sub_100003848();
  sub_100003908();
  __chkstk_darwin(v310);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v311);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v312);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v313);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v314);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v315);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v316);
  sub_100003878();
  sub_100003908();
  v318 = __chkstk_darwin(v317);
  v320 = &v1195 - v319;
  v321 = __chkstk_darwin(v318);
  v323 = &v1195 - v322;
  __chkstk_darwin(v321);
  sub_100003878();
  sub_100003908();
  __chkstk_darwin(v324);
  sub_10000E70C();
  sub_100003918(v325);
  v1227 = type metadata accessor for LocationModel();
  sub_1000037C4();
  v1226 = v326;
  __chkstk_darwin(v327);
  sub_1000038E4();
  sub_100003918(v328);
  v329 = type metadata accessor for ListViewAction();
  sub_1000037E8();
  v331 = __chkstk_darwin(v330);
  v333 = &v1195 - ((v332 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v331);
  sub_10000E70C();
  sub_100003918(v334);
  v335 = type metadata accessor for ViewAction();
  sub_1000037E8();
  v337 = __chkstk_darwin(v336);
  v339 = (&v1195 - ((v338 + 15) & 0xFFFFFFFFFFFFFFF0));
  v340 = __chkstk_darwin(v337);
  v342 = (&v1195 - v341);
  __chkstk_darwin(v340);
  v344 = &v1195 - v343;
  sub_100036D54();
  sub_1000AF41C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1000167A4();
      sub_100021424();
      sub_1000AF474();
      v396 = v1359;
      v397 = v1360;
      sub_100019990();
      v398 = v1313;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10006A7C8();
        sub_1000B0F30(v333, v399);
        sub_10003BA34();
        v401 = v398;
        goto LABEL_47;
      }

      v572 = *v398;
      v335 = v1358;
      if (*(v396 + *(v397 + 36) + 8) != 1 || (sub_1000B010C() & 1) != 0)
      {
        sub_10051A7C8();
        sub_1000161C0((v573 + 56), *(v573 + 80));
        sub_1000B0F88(v572, v335, v333);
        sub_1000FFC4C();
        v566 = type metadata accessor for LocationViewerViewAction;
        goto LABEL_55;
      }

      sub_10006A7C8();
      sub_1000B0F30(v333, v993);

      goto LABEL_202;
    case 2u:
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4();
      }

      v376 = type metadata accessor for Logger();
      sub_10000703C(v376, qword_100D90AC0);
      sub_100036D54();
      sub_1000AF41C();
      sub_100022CD0();
      sub_100037814();
      sub_1000AF41C();
      v377 = Logger.logObject.getter();
      v378 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v377, v378))
      {
        v379 = swift_slowAlloc();
        v1361 = swift_slowAlloc();
        *v379 = 141558787;
        *(v379 + 4) = 1752392040;
        *(v379 + 12) = 2081;
        sub_100036D54();
        sub_1000AF41C();
        v380 = String.init<A>(describing:)();
        v382 = sub_100078694(v380, v381, &v1361);

        *(v379 + 14) = v382;
        sub_1000BCE74();
        *(v379 + 22) = 2160;
        *(v379 + 24) = 1752392040;
        *(v379 + 32) = 2081;
        sub_10051A770();
        v383 = dispatch thunk of CustomStringConvertible.description.getter();
        v385 = sub_100078694(v383, v384, &v1361);

        *(v379 + 34) = v385;
        sub_100016A9C();
        sub_1000B0F30(v323, v386);
        _os_log_impl(&_mh_execute_header, v377, v378, "Cannot handle actions of views that are not visible; action=%{private,mask.hash}s, state=%{private,mask.hash}s", v379, 0x2Au);
        swift_arrayDestroy();
        sub_100003884();
        sub_100003884();
      }

      else
      {

        sub_1000BCE74();
        sub_100016A9C();
        v401 = v323;
LABEL_47:
        sub_1000B0F30(v401, v400);
      }

      v335 = v1358;
      goto LABEL_202;
    case 3u:
      sub_1000167A4();
      sub_100021424();
      sub_1000AF474();
      sub_1000131DC();
      sub_100095588();
      v387 = sub_1000162A4();
      v388 = v1348;
      sub_1000113D0(v387, v389);
      if (v390)
      {
        type metadata accessor for SearchViewState.ViewState(0);
        v342 = v1299;
        swift_storeEnumTagMultiPayload();
        sub_100003934();
        sub_10001B350(v391, v392, v393, v1261);
        *v342 = 0;
        v342[1] = 0xE000000000000000;
        *(v342 + *(v388 + 24)) = 0;
        sub_100003A40(a3);
        v564 = v1358;
        if (!v390)
        {
          sub_1000180EC(a3, &qword_100CA6600);
        }
      }

      else
      {
        sub_10004E66C();
        sub_10003778C();
        sub_1000AF474();
        v564 = v1358;
      }

      sub_10051A7C8();
      sub_1000161C0((v565 + 136), *(v565 + 160));
      v335 = sub_1007CFB3C(v342, v564, v333);
      sub_1000B0F30(v342, type metadata accessor for SearchViewState);
      v566 = type metadata accessor for SearchViewAction;
LABEL_55:
      v348 = v566;
      v349 = v333;
      goto LABEL_338;
    case 4u:
      v350 = &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      sub_1000167A4();
      sub_100037814();
      sub_1000AF474();
      v351 = v1359;
      v352 = v1360;
      if (*(v1359 + v1360[10] + 1) != 128)
      {
        v353 = sub_10081B398();
        if (v353)
        {
          v354 = v353;
          sub_1000EFF78();
          sub_100032590();
          sub_1000AF41C();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v356 = v1350;
          v357 = v1358;
          v358 = v1345;
          switch(EnumCaseMultiPayload)
          {
            case 1:
              v350 = &OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState;
              v1103 = *(v1200 + 32);
              v1104 = v305;
              v305 = v1358;
              (v1103)(v1199, v1104, v1261);
              sub_100004430();
              sub_1000AF41C();
              sub_1000325F0(v1296);
              sub_1001923C0();
              v1103();
              type metadata accessor for PreviewLocation();
              swift_storeEnumTagMultiPayload();
              v1105 = type metadata accessor for LocationPreviewViewState(0);
              type metadata accessor for LocationPreviewModalViewState(0);
              swift_storeEnumTagMultiPayload();
              v366 = *(v1105 + 24);
              type metadata accessor for SelectedSearchResult();
              swift_storeEnumTagMultiPayload();
              type metadata accessor for ModalViewState.MapViewModal(0);
              sub_10000E7B0();
              sub_10001B350(v1106, v1107, v1108, v1109);
              v356 = v1350;
              swift_storeEnumTagMultiPayload();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 2:
              sub_1000325DC();
              v366 = v1199;
              v1070 = v305;
              v305 = v356;
              v1071 = v1261;
              v1072(v1199, v1070, v1261);
              Location.identifier.getter();
              v1073 = v1071;
              v356 = v305;
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v366, v1073);
              type metadata accessor for Location.Identifier();
              sub_10000E7B0();
              sub_10001B350(v1074, v1075, v1076, v1077);
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 3:
              v1078 = v1343;
              v1079 = v305;
              v305 = v1197;
              (*(v1343 + 32))(v1197, v1079, v1345);
              sub_100004430();
              sub_100037FF8(v1080);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1081);
              sub_10003778C();
              sub_1000AF41C();
              v1082 = v1258;
              (*(v1078 + 16))(v1258, v305, v358);
              sub_10000E7B0();
              sub_10001B350(v1083, v1084, v1085, v358);
              v1086 = sub_100020FBC(&v1286);
              sub_1000E59E4(v1086, v1087, v1088);
              v1089 = sub_100013268();
              v350 = v358;
              v366 = v357;
              sub_100399920(v1089, v1090, v1082, 0, 0, &OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, v1091);
              sub_1000180EC(&OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_activeLocationState, &qword_100CA6698);
              sub_1001923C0();
              sub_1000180EC(v1092, v1093);
              sub_100074B30();
              sub_1000B0F30(v357, v1094);
              (*(v1078 + 8))(v305, v350);
              v356 = v1350;
              goto LABEL_330;
            case 4:
              sub_1000325DC();
              v1049 = v1199;
              v1050(v1199, v305, v1261);
              sub_100004430();
              sub_100037FF8(v1051);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1052);
              sub_100032590();
              sub_1000AF41C();
              v1053 = v1258;
              sub_100003934();
              sub_10001B350(v1054, v1055, v1056, v358);
              v1057 = Location.id.getter();
              v1059 = v1058;
              sub_100051A88();
              sub_100003934();
              sub_1000E59E4(v1060, v1061, v1062);
              v1063 = sub_100013268();
              sub_100399920(v1063, v1064, v1053, v1057, v1059, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v1065);
              v366 = v1351;

              sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, &qword_100CA6698);
              sub_1001923C0();
              sub_1000180EC(v1066, v1067);
              sub_100074B30();
              sub_1000B0F30(v305, v1068);
              v1069 = v1049;
              v356 = v1350;
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v1069, v1261);
              goto LABEL_330;
            case 5:
              sub_100004430();
              sub_100037FF8(v1110);
              v366 = v1111;
              sub_1000AF41C();
              sub_10051A7D4();
              swift_storeEnumTagMultiPayload();
              sub_10001EF58();
              sub_10003024C();
              goto LABEL_330;
            case 6:
              sub_100004430();
              sub_100037FF8(v1112);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              v305 = v356;
              sub_1000131DC();
              sub_1000AF41C();
              v1113 = v358;
              v366 = *v356;
              v323 = v1354;
              v350 = v1272;
              (*(v1343 + 16))(v1272 + v1354[6], &v356[v1354[6]], v1113);
              sub_100071CF0();
              sub_1000AF41C();
              v1114 = v356[*(v323 + 9)];
              sub_100074B30();
              sub_1000B0F30(v356, v1115);
              *v350 = v366;
              v1116 = (v350 + *(v323 + 7));
              *v1116 = 0;
              v1116[1] = 0;
              *(v350 + *(v323 + 9)) = v1114;
              goto LABEL_330;
            case 7:
              sub_100004430();
              sub_100037FF8(v1095);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1096);
              sub_10003778C();
              sub_1000AF41C();
              v305 = v356;
              sub_1000325F0(v1285);
              sub_100003934();
              sub_10001B350(v1097, v1098, v1099, v358);
              sub_10022C350(&qword_100CA6660);
              v1100 = sub_100051A88();
              v1102 = 2;
              goto LABEL_329;
            case 8:
              sub_100004430();
              sub_100037FF8(v1117);
              sub_1000AF41C();
              sub_100010288();
              sub_1000883D4();
              sub_10001EF58();
              sub_1000C8288(v1118);
              sub_10003778C();
              sub_1000AF41C();
              v305 = v356;
              sub_1000325F0(v1285);
              sub_100003934();
              sub_10001B350(v1119, v1120, v1121, v358);
              sub_10022C350(&qword_100CA6660);
              v1100 = sub_100051A88();
              v1102 = 3;
LABEL_329:
              sub_10001B350(v1100, v1102, 3, v1101);
              sub_10000E7B0();
              sub_1000E59E4(v1122, v1123, v1124);
              v1125 = sub_100013268();
              v366 = v357;
              sub_100399920(v1125, v1126, v356, 0, 0, &OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, v1127);
              sub_1000180EC(&OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView, &qword_100CA6698);
              v1128 = v356;
              v356 = v305;
              sub_1000180EC(v1128, &qword_100CA5CF8);
              sub_100074B30();
              sub_1000B0F30(v357, v1129);
LABEL_330:
              sub_1001711E0();
              sub_1000C84EC();
              break;
            default:
              sub_1000325DC();
              v350 = v357;
              v359 = v1198;
              v360 = v1261;
              v361(v1198, v305, v1261);
              Location.identifier.getter();
              type metadata accessor for Location.Identifier();
              sub_10000E7B0();
              sub_10001B350(v362, v363, v364, v365);
              sub_10001EF58();
              sub_1000AF41C();
              sub_1000498D0();
              sub_100021424();
              sub_1000AF41C();
              v366 = sub_1004B5684();
              sub_100025220();
              sub_1000B0F30(v350, v367);
              OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState(v359, v360);
              if (v366)
              {
                sub_10051A7D4();
              }

              else
              {
                type metadata accessor for ModalViewState.MapViewModal(0);
                sub_100088864(v1296);
                sub_100003934();
                sub_10001B350(v1190, v1191, v1192, v1193);
              }

              swift_storeEnumTagMultiPayload();
              sub_1001711E0();
              sub_1001923C0();
              sub_1000C84EC();
              v356 = v1350;
              break;
          }

          v1130 = sub_100003BCC(&v1279);
          sub_10001B350(v1130, v1131, v1132, v1133);
          v1134 = sub_100003BCC(&v1280);
          sub_10001B350(v1134, v1135, v1136, v1357);
          v1137 = sub_100003BCC(v1281);
          sub_10001B350(v1137, v1138, v1139, v1352);
          v1140 = sub_100003BCC(&v1282);
          sub_10001B350(v1140, v1141, v1142, v1356);
          v1143 = sub_100003BCC(&v1283);
          sub_10001B350(v1143, v1144, v1145, v356);
          v1146 = sub_100003BCC(&v1284);
          sub_10001B350(v1146, v1147, v1148, v1355);
          sub_100004430();
          v335 = v1234;
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1149, v1150, v1151, v350);
          sub_100095588();
          sub_10000394C(v366);
          if (v390)
          {
            sub_100004430();
            sub_1000AF41C();
            sub_10000394C(v366);
            if (!v390)
            {
              sub_1000180EC(v366, &qword_100CA65B8);
            }
          }

          else
          {
            sub_1000167A4();
            sub_1000AF474();
          }

          sub_100037814();
          sub_1000AF474();
          v1152 = *(v354 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_addLocationAlertState);
          v1153 = *(v354 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_reportWeatherDisplayToggle);
          v1154 = *(v354 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_listToLocationViewTransitionState);
          v1155 = *(v354 + OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_trigger);
          v1156 = *(OBJC_IVAR____TtCV7Weather23LocationViewerViewState8_Storage_notificationsOptInAlertState + v354);
          type metadata accessor for LocationViewerViewState._Storage(0);
          sub_100003B6C();
          v1157 = sub_10003DDB8(v323, v1156, v1152, v1155, v1153, v1154);
          sub_1000180EC(v335, &qword_100CA65B8);
          v1158 = v1233;
          *v1233 = v1157;
          v1159 = v1353;
          swift_storeEnumTagMultiPayload();
          sub_10000E7B0();
          sub_10001B350(v1160, v1161, v1162, v1159);
          sub_1000325F0(v1245);
          sub_100003934();
          sub_10001B350(v1163, v1164, v1165, v1348);
          sub_1000E157C(&v1246);
          sub_100003934();
          sub_10001B350(v1166, v1167, v1168, v1349);
          sub_10001EF58();
          sub_100052674(&v1295);
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1169, v1170, v1171, v1354);
          v1172 = v1232;
          v1173 = v1359;
          sub_10081B470();
          sub_1000180EC(v305, &qword_100CA65F0);
          sub_1000180EC(v1153, &qword_100CA65F8);
          sub_1000180EC(v1155, &qword_100CA6600);
          sub_1000180EC(v1158, &qword_100CA6608);
          sub_10000E7B0();
          sub_10001B350(v1174, v1175, v1176, v352);
          sub_100010288();
          sub_10051A7D4();
          sub_1000113EC();
          sub_1000AF41C();
          sub_10000E7B0();
          sub_10001B350(v1177, v1178, v1179, v1347);
          sub_1000D3D58();
          v1180 = v1252;
          v1181 = v1253;
          v1182 = v1254;
          v1183 = v1255;
          v1184 = v1256;
          v1185 = v1257;
          sub_1000D2C20(0, 3u, v1252, v1253, v1254, v1255, v1256, v1257, v1172, v1173, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205);
          sub_1000FFC4C();
          sub_1000180EC(v1173, &qword_100CA65E8);
          sub_1000180EC(v1172, &qword_100CA6610);
          sub_1000180EC(v1185, &qword_100CA6618);
          sub_1000180EC(v1184, &qword_100CA6620);
          sub_1000180EC(v1183, &qword_100CA6628);
          sub_1000180EC(v1182, &qword_100CA6630);
          sub_1000180EC(v1181, &qword_100CA6638);
          sub_1000180EC(v1180, &qword_100CA6640);
          sub_100074B30();
          sub_1000B0F30(v1272, v1186);
          sub_10002864C();
          v1187 = sub_10051A7D4();
          sub_1000B0F30(v1187, v1188);
          sub_1000B0F30(v1271, type metadata accessor for LocationViewerActiveLocationState);
LABEL_336:
          sub_1000B9974();
          v890 = &v1332;
          goto LABEL_337;
        }
      }

      sub_1000EFF78();
      sub_1000113EC();
      sub_1000AF41C();
      v473 = swift_getEnumCaseMultiPayload();
      sub_1000B9974();
      sub_1000B0F30(v351, v474);
      v390 = v473 == 8;
      v475 = v1356;
      v476 = v1357;
      if (v390)
      {
        v477 = sub_100003BCC(v1288);
        sub_10001B350(v477, v478, v479, v1351);
        v480 = sub_100003BCC(v1289);
        sub_10001B350(v480, v481, v482, v476);
        v483 = sub_100003BCC(&v1290);
        sub_10001B350(v483, v484, v485, v1352);
        v486 = sub_100003BCC(&v1291);
        sub_10001B350(v486, v487, v488, v475);
        v489 = sub_100003BCC(&v1292);
        sub_10001B350(v489, v490, v491, v1350);
        v492 = sub_100003BCC(v1293);
        sub_10001B350(v492, v493, v494, v1355);
        v495 = sub_100003BCC(&v1327);
        sub_10001B350(v495, v496, v497, v1353);
        v498 = sub_100003BCC(&v1328);
        sub_10001B350(v498, v499, v500, v1348);
        v501 = sub_100003BCC(v1329);
        sub_10001B350(v501, v502, v503, v1349);
        sub_10001EF58();
        sub_100037814();
        sub_1000AF41C();
        v504 = sub_100020FBC(v1294);
        v505 = v1345;
        sub_10001B350(v504, v506, v507, v1345);
        sub_10022C350(&qword_100CA6660);
        v508 = sub_100088864(v1330);
        sub_10001B350(v508, 3, 3, v509);
        sub_10000E7B0();
        sub_1000E59E4(v510, v511, v512);
        v513 = *v323;
        v514 = v323[1];
        sub_1000113EC();
        sub_100095588();
        v515 = sub_10000C7F0();
        sub_1000038B4(v515, v516, v505);
        if (v390)
        {
          (*(v1343 + 16))(v1270, &v323[v1354[6]], v505);
          v517 = sub_10000C7F0();
          sub_1000038B4(v517, v518, v505);
          v891 = v1238;
          if (!v390)
          {
            sub_1000180EC(v476, &qword_100CA5CF8);
          }
        }

        else
        {
          (*(v1343 + 32))(v1270, v476, v505);
          v891 = v1238;
        }

        v892 = &v323[v1354[7]];
        v894 = *v892;
        v893 = *(v892 + 1);
        sub_100052674(v1330);
        sub_100095588();
        v895 = sub_1000175DC();
        v896 = v1341;
        sub_1000038B4(v895, v897, v1341);
        if (v390)
        {
          sub_100071CF0();
          sub_1000113EC();
          sub_1000AF41C();
          v898 = sub_1000175DC();
          v900 = sub_100024D10(v898, v899, v896);

          if (v900 != 1)
          {
            sub_1000180EC(v891, &qword_100CA6698);
          }
        }

        else
        {
          sub_1000241B8();
          sub_1000AF474();
        }

        v901 = sub_100399CD0(0xFEu, v323);
        v902 = v1320;
        *v1320 = v513;
        v902[1] = v514;
        v903 = v1354;
        (*(v1343 + 32))(&v902[v1354[6]], v1270, v1345);
        v904 = &v902[*(v903 + 28)];
        *v904 = v894;
        v904[1] = v893;
        sub_1000241B8();
        sub_1000AF474();
        v902[*(v903 + 36)] = v901 & 1;
        sub_1000180EC(v1321, &qword_100CA6698);
        sub_1000180EC(v1269, &qword_100CA5CF8);
        sub_100074B30();
        sub_1000B0F30(v323, v905);
        sub_10000E7B0();
        sub_10001B350(v906, v907, v908, v903);
        v909 = v1359;
        v910 = *v1359;
        sub_1000131DC();
        sub_100095588();
        v911 = sub_1000162A4();
        v912 = v1353;
        sub_1000C8778(v911, v913);
        if (v390)
        {
          sub_100019990();
          sub_1000AF41C();
          v914 = sub_1000162A4();
          v912 = sub_100024D10(v914, v915, v912);

          v916 = v1236;
          if (v912 != 1)
          {
            sub_1000180EC(v514, &qword_100CA6608);
          }
        }

        else
        {
          sub_100014824();
          sub_1000AF474();

          v916 = v1236;
        }

        LODWORD(v1357) = *(v909 + v352[6]);
        v917 = sub_1000B010C();
        sub_100021424();
        sub_100095588();
        v918 = sub_100016298();
        v919 = v1348;
        sub_1000038B4(v918, v920, v1348);
        if (v390)
        {
          sub_100095588();
          sub_10000C814(v912);
          if (!v390)
          {
            sub_1000180EC(v912, &qword_100CA6600);
          }
        }

        else
        {
          sub_10004E66C();
          sub_100021424();
          sub_1000AF474();
          sub_10000E7B0();
          sub_10001B350(v921, v922, v923, v919);
        }

        sub_1000453E0(v1329);
        sub_100095588();
        v924 = sub_1000201BC();
        sub_1000038B4(v924, v925, v1349);
        if (v390)
        {
          sub_1000498D0();
          sub_1000AF41C();
          sub_10000C814(v916);
          if (!v390)
          {
            sub_1000180EC(v916, &qword_100CA65F8);
          }
        }

        else
        {
          sub_100006000();
          sub_1000AF474();
        }

        sub_100037814();
        sub_100095588();
        v926 = sub_1000201BC();
        sub_1000038B4(v926, v927, v1354);
        if (v390)
        {
          sub_10001EF58();
          sub_1000AF41C();
          sub_10000C814(v916);
          if (!v390)
          {
            sub_1000180EC(v916, &qword_100CA65F0);
          }
        }

        else
        {
          sub_1000087FC();
          sub_1000AF474();
        }

        v928 = *(v909 + v352[11]);
        v929 = v1235;
        *v1235 = v910;
        sub_100014824();
        sub_1000AF474();
        *(v929 + v352[6]) = v1357;
        *(v929 + v352[7]) = v917 & 1;
        sub_100051BBC();
        sub_100006000();
        sub_1000AF474();
        sub_1000087FC();
        sub_1000AF474();
        *(v929 + v352[11]) = v928;
        sub_1000180EC(v1320, &qword_100CA65F0);
        sub_1000180EC(v1319, &qword_100CA65F8);
        v930 = sub_1000C893C(&v1328);
        sub_1000180EC(v930, v931);
        sub_1000180EC(v1318, &qword_100CA6608);
        sub_10000E7B0();
        sub_10001B350(v932, v933, v934, v352);
        v935 = v1260;
        sub_100003934();
        sub_10001B350(v936, v937, v938, v1347);
        sub_1000D3D58();
        v939 = v1262;
        v940 = v1263;
        v941 = v1264;
        v942 = v1265;
        v943 = v1266;
        v944 = v1267;
        v335 = sub_1000D2C20(0, 3u, v1262, v1263, v1264, v1265, v1266, v1267, v929, v935, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205);
        sub_1000180EC(v935, &qword_100CA65E8);
        sub_1000180EC(v929, &qword_100CA6610);
        sub_1000180EC(v944, &qword_100CA6618);
        sub_1000180EC(v943, &qword_100CA6620);
        sub_1000180EC(v942, &qword_100CA6628);
        sub_1000180EC(v941, &qword_100CA6630);
        sub_1000180EC(v940, &qword_100CA6638);
        sub_1000180EC(v939, &qword_100CA6640);
        goto LABEL_336;
      }

      v335 = v1358;
      if (qword_100CA26C8 != -1)
      {
        sub_10001EAC4();
      }

      v828 = type metadata accessor for Logger();
      sub_10000703C(v828, qword_100D90AC0);
      v829 = Logger.logObject.getter();
      v830 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v829, v830))
      {
        *swift_slowAlloc() = 0;
        sub_1000133FC(&_mh_execute_header, v831, v832, "Can only process pinned map actions when pinned map and locationViewer states available");
        sub_100003884();
      }

      sub_1000B9974();
      v826 = v323;
LABEL_201:
      sub_1000B0F30(v826, v827);
LABEL_202:

      return v335;
    case 5u:
      sub_1000167A4();
      sub_1000113EC();
      v403 = v402;
      sub_1000AF474();
      sub_1000167A4();
      sub_1000113EC();
      sub_1000AF41C();
      sub_100006000();
      sub_1000113EC();
      sub_1000AF474();
      sub_100003934();
      v404 = v1351;
      sub_10001B350(v405, v406, v407, v1351);
      sub_100003934();
      sub_10001B350(v408, v409, v410, v1357);
      v411 = sub_100003BCC(&v1348);
      sub_10001B350(v411, v412, v413, v1352);
      v414 = sub_100003BCC(&v1350);
      sub_10001B350(v414, v415, v416, v1356);
      v417 = sub_100003BCC(&v1352);
      v418 = v1350;
      sub_10001B350(v417, v419, v420, v1350);
      v421 = sub_100003BCC(&v1356);
      sub_10001B350(v421, v422, v423, v1355);
      sub_1000AF6DC();
      sub_10000E7B0();
      sub_10001B350(v424, v425, v426, v1360);
      v427 = v1315;
      sub_100003934();
      sub_10001B350(v428, v429, v430, v1347);
      sub_100010288();
      v431 = v1358;
      sub_1000131DC();
      sub_1000AF41C();
      sub_1000325C0();
      sub_100051BBC();
      sub_100003A40(v427);
      if (v390)
      {
        sub_1000180EC(v427, &qword_100CA65E8);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v403, v574);
        sub_10001C490();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_1000AF474();
      v575 = *(v431 + 16);
      LODWORD(v1354) = *(v431 + 24);
      sub_100051BBC();
      sub_100005404(v320);
      v576 = v1309;
      v577 = v1307;
      v1359 = v575;
      if (v390)
      {
        sub_100011634();
        sub_1000AF41C();
        v578 = sub_100024D10(v320, 1, v404);

        v579 = v1357;
        if (v578 != 1)
        {
          sub_1000180EC(v320, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();

        v579 = v1357;
      }

      sub_100032590();
      sub_100051BBC();
      v580 = sub_1000175DC();
      sub_1000038B4(v580, v581, v579);
      if (v390)
      {
        sub_10002014C();
        sub_100031630();
        sub_1000AF41C();
        v582 = sub_1000175DC();
        sub_1000038B4(v582, v583, v579);
        v584 = v305;
        v585 = v1274;
        if (!v390)
        {
          sub_1000180EC(v584, &qword_100CA6638);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v585 = v1274;
      }

      sub_100051BBC();
      sub_10000394C(v577);
      if (v390)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_10000394C(v577);
        v586 = v1279;
        if (!v390)
        {
          sub_1000180EC(v577, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v586 = v1279;
      }

      sub_100052674(&v1350);
      sub_100051BBC();
      sub_100003A40(v585);
      if (v390)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        sub_100003A40(v585);
        v587 = v1283;
        if (!v390)
        {
          sub_1000180EC(v585, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
        v587 = v1283;
      }

      sub_100051BBC();
      v588 = sub_1000162A4();
      sub_1000038B4(v588, v589, v418);
      if (v390)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v590 = sub_1000162A4();
        sub_1000038B4(v590, v591, v418);
        if (!v390)
        {
          sub_1000180EC(v576, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_100052378(&v1356);
      sub_100051BBC();
      v592 = sub_100016298();
      v593 = v1355;
      sub_1000038B4(v592, v594, v1355);
      if (v390)
      {
        sub_10003C57C();
        sub_1000AF41C();
        v595 = sub_100016298();
        sub_1000038B4(v595, v596, v593);
        if (!v390)
        {
          sub_1000180EC(v586, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_100051BBC();
      sub_100005404(v587);
      if (v390)
      {
        sub_100022CD0();
        sub_1000AF41C();
        sub_100005404(v587);
        if (!v390)
        {
          sub_1000180EC(v587, &qword_100CA6610);
        }
      }

      else
      {
        sub_100069674();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000();
      v597 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData);
      v335 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 8);
      v599 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 16);
      v598 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_weatherData + 24);
      v600 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState);
      v601 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 8);
      v602 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_debugState + 16);
      v603 = *(v431 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v1357 = v603;
      LOBYTE(v1194) = v600;
      sub_100040DE8(v1359, v1354, v1324[1], v1324[2], v1324[3], v1324[4], v1326[0], v604, v1323, v587, v597, v335, v599, v598, v1194, v601, v602, v603, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211);
      v606 = v605;
      sub_100022CD0();
      sub_100037814();
      sub_1000AF41C();
      v607 = v1360;
      sub_100019990();
      v608 = v1316;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_100016A9C();
        sub_1000B0F30(v600, v609);
        sub_100025220();
        sub_1000B0F30(v1338, v610);
        sub_100020FA0();
        sub_1000B0F30(*(v611 - 256), v612);
        sub_10003BA34();
        v614 = v608;
LABEL_86:
        sub_1000B0F30(v614, v613);
        return v606;
      }

      v615 = *v608;
      v616 = *(v600 + *(v607 + 36) + 8);

      if (v616 == 1)
      {
        v617 = sub_1000B010C();
        sub_100016A9C();
        sub_1000B0F30(v600, v618);
        if ((v617 & 1) == 0)
        {

          sub_100025220();
          sub_1000B0F30(v1338, v619);
          sub_100020FA0();
          v614 = *(v620 - 256);
          goto LABEL_86;
        }
      }

      else
      {
        sub_100016A9C();
        sub_1000B0F30(v600, v886);
      }

      sub_10051A7C8();
      sub_1000161C0((v887 + 56), *(v887 + 80));
      sub_1000E157C(&v1253);
      swift_storeEnumTagMultiPayload();
      sub_1000B0F88(v615, v606, v601);
      sub_1000FFC4C();

      sub_10006A7C8();
      sub_1000B0F30(v601, v888);
      sub_100025220();
      sub_1000B0F30(v1338, v889);
      sub_100020FA0();
LABEL_337:
      v349 = *(v890 - 32);
LABEL_338:
      sub_1000B0F30(v349, v348);
      return v335;
    case 6u:
      LODWORD(v1345) = *v344;
      v432 = sub_100003BCC(&v1347);
      sub_10001B350(v432, v433, v434, v1351);
      v435 = sub_100003BCC(&v1349);
      sub_10001B350(v435, v436, v437, v1357);
      v438 = sub_100003BCC(&v1353);
      sub_10001B350(v438, v439, v440, v1352);
      v441 = sub_100003BCC(&v1357);
      sub_10001B350(v441, v442, v443, v1356);
      v444 = sub_100003BCC(&v1360);
      sub_10001B350(v444, v445, v446, v1350);
      v447 = sub_100003BCC(v1362);
      sub_10001B350(v447, v448, v449, v1355);
      v450 = sub_100020FBC(&v1354);
      v451 = v1353;
      sub_10001B350(v450, v452, v453, v1353);
      v454 = v1311;
      sub_100003934();
      v455 = v1348;
      sub_10001B350(v456, v457, v458, v1348);
      sub_100003934();
      sub_10001B350(v459, v460, v461, v1349);
      sub_1000E157C(v1324);
      sub_100003934();
      sub_10001B350(v462, v463, v464, v1354);
      v465 = v1359;
      v466 = *v1359;
      sub_100032590();
      sub_100095588();
      sub_10000394C(v305);
      if (v390)
      {
        v621 = v1360;
        sub_100019990();
        sub_1000AF41C();
        v467 = sub_1000175DC();
        v469 = sub_100024D10(v467, v468, v451);

        v622 = v1290;
        if (v469 != 1)
        {
          sub_1000180EC(v305, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v621 = v1360;
        v622 = v1290;
      }

      v623 = *(v465 + v621[6]);
      v624 = sub_1000B010C();
      sub_1000180EC(v1333, &qword_100CA6608);
      sub_100037814();
      sub_100051BBC();
      v625 = sub_1000201BC();
      sub_1000038B4(v625, v626, v455);
      if (v390)
      {
        sub_100095588();
        v627 = sub_1000201BC();
        sub_1000038B4(v627, v628, v455);
        v632 = v1358;
        if (!v390)
        {
          sub_1000180EC(v454, &qword_100CA6600);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v629, v630, v631, v455);
        v632 = v1358;
      }

      v633 = v1314;
      sub_100051BBC();
      v634 = sub_100007FC4();
      sub_1000113D0(v634, v635);
      v636 = v1310;
      if (v390)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100003A40(v633);
        if (!v390)
        {
          sub_1000180EC(v633, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_100051BBC();
      v637 = sub_1000162B0();
      v638 = v1354;
      sub_1000113D0(v637, v639);
      if (v390)
      {
        sub_10001EF58();
        sub_1000325C0();
        sub_1000AF41C();
        sub_100003A40(v622);
        v640 = v1280;
        if (!v390)
        {
          sub_1000180EC(v622, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000325C0();
        sub_1000AF474();
        v640 = v1280;
      }

      v641 = v1335;
      *v1335 = v466;
      sub_100014824();
      sub_1000AF474();
      *(v641 + v621[6]) = v623;
      *(v641 + v621[7]) = v624 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v641 + v621[11]) = v1345;
      sub_10000E7B0();
      sub_10001B350(v642, v643, v644, v621);
      sub_1000E157C(v1326);
      sub_100003934();
      v645 = v1347;
      sub_10001B350(v646, v647, v648, v1347);
      sub_100010288();
      sub_1000113EC();
      sub_1000AF41C();
      sub_10003778C();
      sub_100051BBC();
      v649 = sub_1000131C4();
      sub_1000038B4(v649, v650, v645);
      if (v390)
      {
        sub_1000180EC(v641, &qword_100CA65E8);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v638, v651);
        sub_10001C490();
        sub_100021CEC();
        sub_1000AF474();
      }

      v652 = v1284;
      v653 = v1273;
      sub_10001C490();
      sub_1000AF474();
      v654 = *(v632 + 16);
      LODWORD(v1354) = *(v632 + 24);
      sub_100052378(&v1347);
      sub_100051BBC();
      v655 = sub_100016298();
      v656 = v1351;
      sub_1000038B4(v655, v657, v1351);
      v1359 = v654;
      if (v390)
      {
        sub_100011634();
        sub_1000AF41C();
        v658 = sub_100016298();
        v660 = sub_100024D10(v658, v659, v656);

        v661 = v1287;
        if (v660 != 1)
        {
          sub_1000180EC(v653, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();

        v661 = v1287;
      }

      sub_100021424();
      sub_100051BBC();
      v662 = sub_100016298();
      v663 = v1357;
      sub_1000038B4(v662, v664, v1357);
      if (v390)
      {
        sub_10002014C();
        sub_100031630();
        v667 = v632;
        sub_1000AF41C();
        v665 = sub_100016298();
        v621 = v1360;
        sub_1000038B4(v665, v666, v663);
        v668 = v1294[0];
        if (!v390)
        {
          sub_1000180EC(v653, &qword_100CA6638);
        }
      }

      else
      {
        v667 = v632;
        sub_100051E84();
        sub_1000AF474();
        v668 = v1294[0];
      }

      sub_1000453E0(&v1353);
      sub_100051BBC();
      sub_100005404(v636);
      if (v390)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100005404(v636);
        v669 = v1292;
        v670 = v1355;
        if (!v390)
        {
          sub_1000180EC(v636, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v669 = v1292;
        v670 = v1355;
      }

      sub_100051BBC();
      v671 = sub_100007FC4();
      v672 = v1356;
      sub_1000038B4(v671, v673, v1356);
      if (v390)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v674 = sub_100007FC4();
        sub_1000038B4(v674, v675, v672);
        if (!v390)
        {
          sub_1000180EC(v640, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052674(&v1360);
      sub_100051BBC();
      v676 = sub_1000175DC();
      v335 = v1350;
      sub_1000038B4(v676, v677, v1350);
      if (v390)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v678 = sub_1000175DC();
        sub_1000038B4(v678, v679, v335);
        if (!v390)
        {
          sub_1000180EC(v652, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_100051BBC();
      sub_10000394C(v661);
      if (v390)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000394C(v661);
        if (!v390)
        {
          sub_1000180EC(v661, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1365);
      sub_100051BBC();
      sub_10000C814(v669);
      if (v390)
      {
        sub_100022CD0();
        sub_1000AF41C();
        sub_10000C814(v669);
        v680 = v668;
        if (!v390)
        {
          sub_1000180EC(v669, &qword_100CA6610);
        }
      }

      else
      {
        sub_100069674();
        sub_1000AF474();
        v680 = v668;
      }

      sub_10001C490();
      v681 = v1346;
      sub_1000AF474();
      sub_10001327C();
      sub_100021D8C();
      v683 = *(v682 + OBJC_IVAR____TtCV7Weather9MainState8_Storage_contentStatusBanners);
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      LOBYTE(v1194) = v672;
      sub_100040DE8(v1359, v1354, v1326[2], v1326[3], v1326[4], v1326[5], v1326[6], v684, v680, v681, v335, v652, v667, v632, v1194, v621, v670, v683, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, v1206, v1207, v1208, v1209, v1210, v1211);
      sub_1000E31D4();

      goto LABEL_248;
    case 7u:
      sub_100019990();
      v394 = v1312;
      sub_1000AF41C();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_10003778C();
        sub_1000AF474();
        v395 = 0;
        v335 = v1358;
      }

      else
      {
        sub_10003BA34();
        sub_1000B0F30(v394, v567);
        v395 = 1;
        v335 = v1358;
        v342 = v1297;
      }

      v568 = type metadata accessor for VFXTestViewState();
      sub_10001B350(v342, v395, 1, v568);
      sub_100043778();
      sub_100024D10(v569, v570, v571);
      sub_1000180EC(v342, &qword_100CBEEC0);
      goto LABEL_202;
    case 8u:
      v470 = OBJC_IVAR____TtCV7Weather9MainState8_Storage_modalView;
      v471 = v1324[0];
      sub_1000AF41C();
      sub_100021424();
      sub_1000AF41C();
      v472 = swift_getEnumCaseMultiPayload();
      v1340 = v470;
      if (v472 == 4)
      {
        sub_1000B0F30(v471, type metadata accessor for ModalViewState);
        sub_1000B0F30(v333, type metadata accessor for ModalViewState);
        sub_100021CEC();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v333, v685);
      }

      v686 = v1359;
      v687 = v1360;
      v689 = v1354;
      v688 = v1355;
      v690 = v1348;
      v691 = v1353;
      v692 = sub_100003BCC(&v1351);
      sub_10001B350(v692, v693, v694, v695);
      v696 = sub_100003BCC(&v1355);
      sub_10001B350(v696, v697, v698, v1357);
      v699 = sub_100003BCC(&v1358);
      sub_10001B350(v699, v700, v701, v1352);
      v702 = sub_100003BCC(&v1361);
      sub_10001B350(v702, v703, v704, v1356);
      v705 = sub_100003BCC(v1364);
      sub_10001B350(v705, v706, v707, v1350);
      v708 = sub_100003BCC(&v1367);
      sub_10001B350(v708, v709, v710, v688);
      sub_100003934();
      sub_10001B350(v711, v712, v713, v691);
      v714 = sub_100003BCC(v1363);
      sub_10001B350(v714, v715, v716, v690);
      v717 = sub_100003BCC(&v1366);
      sub_10001B350(v717, v718, v719, v1349);
      v720 = v686 + *(v687 + 40);
      v721 = v1339;
      sub_100003934();
      v722 = v1345;
      sub_10001B350(v723, v724, v725, v1345);
      v726 = sub_10022C350(&qword_100CA6660);
      v727 = *(v726 + 48);
      LODWORD(v1338) = v720[1];
      v728 = v1338 >> 6;
      v730 = v1343;
      v729 = v1344;
      *v1344 = v1338 >> 6 == 1;
      v731 = *(v689 + 24);
      v732 = *(v730 + 16);
      v732(&v729[v727], &v720[v731], v722);
      sub_10001B350(v729, 0, 3, v726);
      sub_10000E7B0();
      v733 = v1341;
      sub_10001B350(v734, v735, v736, v1341);
      sub_100037814();
      sub_100095588();
      sub_100003A40(v721);
      v1342 = v720;
      if (v390)
      {
        v732(v1325, &v720[v731], v722);
        sub_100003A40(v721);
        v739 = v1303;
        if (!v390)
        {
          sub_1000180EC(v721, &qword_100CA5CF8);
        }
      }

      else
      {
        v737 = sub_1000453E0(v1334);
        v738(v737);
        v739 = v1303;
      }

      v740 = v1354;
      v741 = &v1342[v1354[7]];
      v743 = *v741;
      v742 = v741[1];
      sub_100095588();
      sub_10000394C(v739);
      if (v390)
      {
        sub_100071CF0();
        sub_1000AF41C();
        v744 = sub_100024D10(v739, 1, v733);

        v745 = v1343;
        if (v744 != 1)
        {
          sub_1000180EC(v739, &qword_100CA6698);
        }
      }

      else
      {
        sub_1000241B8();
        sub_1000AF474();

        v745 = v1343;
      }

      if (DeviceIsSlow())
      {
        v746 = 0;
      }

      else
      {
        v746 = (v728 != 1) | v1338;
      }

      v747 = v1294[3];
      sub_1000180EC(v1344, &qword_100CA6698);
      sub_1000180EC(v1339, &qword_100CA5CF8);
      v748 = v1336;
      *v1336 = -32764;
      (*(v745 + 32))(&v748[v740[6]], v1325, v1345);
      v749 = &v748[v740[7]];
      *v749 = v743;
      v749[1] = v742;
      sub_1000241B8();
      sub_1000AF474();
      v748[v740[9]] = v746 & 1;
      sub_10000E7B0();
      sub_10001B350(v750, v751, v752, v740);
      v753 = v1359;
      v754 = *v1359;
      v755 = v1322;
      sub_100032590();
      sub_100095588();
      v756 = sub_1000175DC();
      sub_1000113D0(v756, v757);
      if (v390)
      {
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v761 = sub_100024D10(v758, v759, v760);

        v762 = v1347;
        v763 = v1302;
        v764 = v1301;
        if (v761 != 1)
        {
          sub_1000180EC(v743, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v762 = v1347;
        v763 = v1302;
        v764 = v1301;
      }

      LODWORD(v1347) = sub_1000453F8();
      sub_1000180EC(v755, &qword_100CA6608);
      sub_1000131DC();
      sub_100051BBC();
      v765 = sub_1000162A4();
      v766 = v1348;
      sub_1000038B4(v765, v767, v1348);
      if (v390)
      {
        sub_100095588();
        v768 = sub_1000162A4();
        sub_1000038B4(v768, v769, v766);
        v770 = v753;
        v774 = v1293[0];
        if (!v390)
        {
          sub_1000180EC(v770, &qword_100CA6600);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v771, v772, v773, v766);
        v774 = v1293[0];
      }

      sub_100051BBC();
      v775 = sub_1000162A4();
      v776 = v1349;
      sub_1000038B4(v775, v777, v1349);
      if (v390)
      {
        sub_1000498D0();
        sub_1000AF41C();
        v778 = sub_1000162A4();
        sub_1000038B4(v778, v779, v776);
        if (!v390)
        {
          sub_1000180EC(v774, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_1000C893C(&v1368);
      sub_100051BBC();
      sub_100003A40(v747);
      if (v390)
      {
        sub_10001EF58();
        sub_1000AF41C();
        sub_100043778();
        sub_1000038B4(v780, v781, v782);
        if (!v390)
        {
          sub_1000180EC(v747, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000113EC();
        sub_1000AF474();
      }

      v783 = v1360;
      v784 = *(v1359 + v1360[11]);
      v785 = v1337;
      *v1337 = v754;
      sub_100014824();
      sub_1000AF474();
      *(v785 + v783[6]) = v1353;
      *(v785 + v783[7]) = v1347 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v785 + v783[11]) = v784;
      sub_10000E7B0();
      sub_10001B350(v786, v787, v788, v783);
      sub_10001C490();
      sub_1000AF474();
      sub_10000E7B0();
      sub_10001B350(v789, v790, v791, v762);
      sub_100010288();
      v792 = v1358;
      sub_1000AF41C();
      sub_100051BBC();
      sub_10000C814(v764);
      if (v390)
      {
        sub_1000180EC(v764, &qword_100CA65E8);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v763, v793);
        sub_10001C490();
        sub_1000AF474();
      }

      v794 = v1351;
      v795 = v1293[1];
      v796 = v1282;
      v797 = v1277;
      v335 = v1275;
      sub_10001C490();
      sub_1000AF474();
      v798 = *(v792 + 16);
      v799 = *(v792 + 24);
      sub_100051BBC();
      sub_100005404(v335);
      v1359 = v798;
      if (v390)
      {
        sub_100011634();
        sub_1000AF41C();
        v800 = sub_100007FC4();
        v802 = sub_100024D10(v800, v801, v794);

        if (v802 != 1)
        {
          sub_1000180EC(v335, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_100051BBC();
      v803 = sub_1000162B0();
      sub_1000C8778(v803, v804);
      if (v390)
      {
        sub_10002014C();
        sub_100031630();
        sub_1000AF41C();
        sub_10000394C(v797);
        v805 = v1291;
        v806 = v1286;
        if (!v390)
        {
          sub_1000180EC(v797, &qword_100CA6638);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v805 = v1291;
        v806 = v1286;
      }

      sub_100051BBC();
      sub_100003A40(v796);
      if (v390)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v796);
        v807 = v1360;
        if (!v390)
        {
          sub_1000180EC(v796, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v807 = v1360;
      }

      sub_1000436AC(&v1361);
      sub_100051BBC();
      v808 = sub_1000131C4();
      sub_1000113D0(v808, v809);
      if (v390)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        sub_100003A40(v806);
        if (!v390)
        {
          sub_1000180EC(v806, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(v1364);
      sub_100051BBC();
      v810 = sub_100016298();
      sub_10001627C(v810, v811);
      if (v390)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        sub_100005404(v805);
        v812 = v1295;
        if (!v390)
        {
          sub_1000180EC(v805, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
        v812 = v1295;
      }

      sub_1000C893C(&v1367);
      sub_100051BBC();
      sub_10000C814(v795);
      if (v390)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000C814(v795);
        if (!v390)
        {
          sub_1000180EC(v795, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1369);
      sub_100051BBC();
      v813 = sub_1000131C4();
      sub_1000038B4(v813, v814, v807);
      LODWORD(v1354) = v799;
      if (v390)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v815 = sub_1000131C4();
        sub_1000038B4(v815, v816, v807);
        if (!v390)
        {
          sub_1000180EC(v812, &qword_100CA6610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000();
      sub_10001327C();
      sub_100021D8C();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v817 = sub_100020224();
      v820 = v1326[8];
      v821 = v1327;
      v822 = v1328;
      v823 = v1329[0];
      v824 = v1329[1];
      goto LABEL_247;
    case 9u:
      v368 = v1359;
      v369 = v1360;
      if (*(v1359 + v1360[10] + 1) == 128)
      {
        if (qword_100CA26C8 != -1)
        {
          sub_10001EAC4();
        }

        v370 = type metadata accessor for Logger();
        sub_10000703C(v370, qword_100D90AC0);
        v371 = Logger.logObject.getter();
        v372 = static os_log_type_t.error.getter();
        v373 = os_log_type_enabled(v371, v372);
        v335 = v1358;
        if (v373)
        {
          *swift_slowAlloc() = 0;
          sub_1000133FC(&_mh_execute_header, v374, v375, "Can only process interactive map actions");
          sub_100003884();
        }

        goto LABEL_202;
      }

      v519 = sub_100399D40();
      v520 = v369[9];
      v521 = sub_100020FBC(v1285);
      sub_10001B350(v521, v522, v523, v1345);
      sub_100051A88();
      sub_100003934();
      sub_1000E59E4(v524, v525, v526);
      v527 = v1250;
      sub_1000B0430(v519, v368 + v520, v329, v333, v1250);
      sub_1000180EC(v333, &qword_100CA6698);
      sub_1000180EC(v329, &qword_100CA5CF8);
      v528 = sub_100003BCC(v1298);
      sub_10001B350(v528, v529, v530, v1351);
      v531 = sub_100003BCC(v1300);
      sub_10001B350(v531, v532, v533, v1357);
      v534 = sub_100003BCC(&v1302);
      sub_10001B350(v534, v535, v536, v1352);
      v537 = sub_100003BCC(v1305);
      sub_10001B350(v537, v538, v539, v1356);
      v540 = sub_100003BCC(&v1306);
      sub_10001B350(v540, v541, v542, v1350);
      v543 = sub_100003BCC(v1308);
      sub_10001B350(v543, v544, v545, v1355);
      v546 = v1278;
      sub_100003934();
      sub_10001B350(v547, v548, v549, v1353);
      v550 = sub_100020FBC(v1268);
      sub_10001B350(v550, v551, v552, v1348);
      v553 = sub_100003BCC(&v1307);
      sub_10001B350(v553, v554, v555, v1349);
      sub_10001EF58();
      sub_100037814();
      sub_1000AF41C();
      sub_10000E7B0();
      sub_10001B350(v556, v557, v558, v1354);
      v559 = *v368;
      sub_1000325C0();
      sub_100095588();
      sub_100003A40(v546);
      if (v390)
      {
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v563 = sub_100024D10(v560, v561, v562);

        if (v563 != 1)
        {
          sub_1000180EC(v546, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();
      }

      v833 = sub_1000453F8();
      sub_1000180EC(v1278, &qword_100CA6608);
      sub_100074B30();
      sub_1000B0F30(v527, v834);
      sub_1000131DC();
      sub_100051BBC();
      v835 = sub_1000162A4();
      v836 = v1348;
      sub_1000038B4(v835, v837, v1348);
      v838 = v1358;
      if (v390)
      {
        sub_100095588();
        v839 = sub_1000162A4();
        sub_1000038B4(v839, v840, v836);
        if (!v390)
        {
          sub_1000180EC(v368, &qword_100CA6600);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000113EC();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v841, v842, v843, v836);
      }

      sub_1000131DC();
      sub_100051BBC();
      v844 = sub_1000162A4();
      sub_1000113D0(v844, v845);
      if (v390)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100003A40(v368);
        v846 = v1351;
        if (!v390)
        {
          sub_1000180EC(v368, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
        v846 = v1351;
      }

      sub_100037814();
      sub_100051BBC();
      v847 = sub_1000201BC();
      v848 = v1354;
      sub_1000113D0(v847, v849);
      if (v390)
      {
        sub_10001EF58();
        sub_1000AF41C();
        sub_100003A40(v323);
        if (!v390)
        {
          sub_1000180EC(v323, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_1000AF474();
      }

      v850 = *(v1359 + v369[11]);
      v851 = v1249;
      *v1249 = v559;
      sub_100014824();
      sub_1000AF474();
      *(v851 + v369[6]) = v1353;
      *(v851 + v369[7]) = v833 & 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v851 + v369[11]) = v850;
      sub_10000E7B0();
      sub_10001B350(v852, v853, v854, v369);
      sub_100088864(v1276);
      sub_100003934();
      v855 = v1347;
      sub_10001B350(v856, v857, v858, v1347);
      sub_100010288();
      sub_100021424();
      sub_1000AF41C();
      sub_1000113EC();
      sub_100051BBC();
      v859 = sub_10000C7F0();
      sub_1000038B4(v859, v860, v855);
      if (v390)
      {
        sub_1000180EC(v848, &qword_100CA65E8);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v559, v861);
        sub_10001C490();
        sub_1000AF474();
      }

      v862 = v1248;
      v863 = v1246;
      v864 = v1244[4];
      sub_10001C490();
      sub_1000AF474();
      v865 = *(v838 + 16);
      LODWORD(v1354) = *(v838 + 24);
      sub_100021424();
      sub_100051BBC();
      sub_100005404(v559);
      v1359 = v865;
      if (v390)
      {
        sub_100011634();
        sub_1000AF41C();
        v866 = sub_100016298();
        v868 = sub_100024D10(v866, v867, v846);

        if (v868 != 1)
        {
          sub_1000180EC(v559, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_1000131DC();
      sub_100051BBC();
      v869 = sub_1000162A4();
      sub_1000C8778(v869, v870);
      if (v390)
      {
        sub_10002014C();
        sub_100031630();
        sub_1000AF41C();
        sub_10000394C(v865);
        v871 = v1251;
        v872 = v1247;
        if (!v390)
        {
          sub_1000180EC(v865, &qword_100CA6638);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v871 = v1251;
        v872 = v1247;
      }

      sub_100051BBC();
      sub_100003A40(v864);
      if (v390)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v864);
        v873 = v1350;
        if (!v390)
        {
          sub_1000180EC(v864, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v873 = v1350;
      }

      sub_100051BBC();
      v874 = sub_1000162B0();
      v335 = v1356;
      sub_1000038B4(v874, v875, v1356);
      if (v390)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v876 = sub_1000162B0();
        sub_1000038B4(v876, v877, v335);
        if (!v390)
        {
          sub_1000180EC(v863, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(&v1306);
      sub_100051BBC();
      v878 = sub_100016298();
      sub_1000038B4(v878, v879, v873);
      if (v390)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        v880 = sub_100016298();
        sub_1000038B4(v880, v881, v873);
        if (!v390)
        {
          sub_1000180EC(v872, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
      }

      sub_1000C893C(v1308);
      sub_100051BBC();
      sub_1000C8778(v862, 1);
      if (v390)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000394C(v862);
        if (!v390)
        {
          sub_1000180EC(v862, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_100051BBC();
      v882 = sub_1000131C4();
      sub_1000038B4(v882, v883, v369);
      if (v390)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v884 = sub_1000131C4();
        sub_1000038B4(v884, v885, v369);
        if (!v390)
        {
          sub_1000180EC(v871, &qword_100CA6610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000();
      sub_10001327C();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v817 = sub_100020224();
      v820 = v1304;
      v821 = v1305[0];
      v822 = v1305[2];
      v823 = v1305[3];
      v824 = v1306;
LABEL_247:
      sub_100040DE8(v817, v818, v820, v821, v822, v823, v824, v819, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, *(&v1205 + 1), v1206, v1207, v1208, v1209, v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1218, v1219, v1220);
      sub_1000E31D4();

LABEL_248:

      return v335;
    default:
      sub_1000167A4();
      sub_1000131DC();
      sub_1000AF474();
      v345 = sub_10081B330();
      if (v345)
      {
        v346 = v345;
        sub_10051A7C8();
        sub_1000161C0((v347 + 16), *(v347 + 40));
        sub_1008FBEE8(v346, v1358, a3);
        sub_1000FFC4C();
        sub_1001706F4();
        v349 = a3;
        goto LABEL_338;
      }

      sub_1000AF41C();
      v825 = swift_getEnumCaseMultiPayload();
      v335 = v1358;
      if (v825)
      {
        sub_1000B0F30(a3, type metadata accessor for ListViewAction);
        v826 = v333;
        v827 = type metadata accessor for ListViewAction;
        goto LABEL_201;
      }

      v945 = v333[*(sub_10022C350(&qword_100CBBE20) + 48)];
      v946 = sub_100088864(v1243);
      v947(v946, v333, v1227);
      v948 = sub_100003BCC(&v1255);
      sub_10001B350(v948, v949, v950, v1351);
      v951 = sub_100003BCC(&v1256);
      sub_10001B350(v951, v952, v953, v1357);
      v954 = sub_100003BCC(&v1257);
      sub_10001B350(v954, v955, v956, v1352);
      v957 = sub_100003BCC(&v1258);
      sub_10001B350(v957, v958, v959, v1356);
      v960 = sub_100003BCC(v1259);
      sub_10001B350(v960, v961, v962, v1350);
      v963 = sub_100003BCC(&v1261);
      sub_10001B350(v963, v964, v965, v1355);
      sub_100022CD0();
      v1345 = v966;
      sub_1000325C0();
      sub_1000AF41C();
      v967 = v1244[1];
      LocationModel.identifier.getter();
      type metadata accessor for Location.Identifier();
      sub_10000E7B0();
      sub_10001B350(v968, v969, v970, v971);
      type metadata accessor for LocationViewerViewState._Storage(0);
      sub_100003B6C();
      v972 = sub_10003DDB8(v967, 0, 0, 3, 0, v945);
      *v1228 = v972;
      v973 = v1353;
      swift_storeEnumTagMultiPayload();
      sub_10000E7B0();
      sub_10001B350(v974, v975, v976, v973);
      sub_1000E157C(v1237);
      sub_100003934();
      sub_10001B350(v977, v978, v979, v1348);
      v980 = sub_100003BCC(&v1260);
      sub_10001B350(v980, v981, v982, v1349);
      sub_100003934();
      sub_10001B350(v983, v984, v985, v1354);
      v986 = *v339;
      v987 = v1212;
      sub_100095588();
      sub_100003A40(v987);
      if (v390)
      {
        v994 = v1360;
        sub_100019990();
        sub_1000AF41C();
        sub_100043778();
        v991 = sub_100024D10(v988, v989, v990);

        v992 = v987;
        v995 = v1207;
        v996 = v1205;
        if (v991 != 1)
        {
          sub_1000180EC(v992, &qword_100CA6608);
        }
      }

      else
      {
        sub_100014824();
        sub_1000AF474();

        v994 = v1360;
        v995 = v1207;
        v996 = v1205;
      }

      v997 = *(v339 + v994[6]);
      sub_100095588();
      v998 = sub_1000201BC();
      v999 = v1348;
      sub_10001627C(v998, v1000);
      if (v390)
      {
        sub_100095588();
        sub_100005404(v996);
        if (!v390)
        {
          sub_1000180EC(v996, &qword_100CA6600);
        }
      }

      else
      {
        sub_10004E66C();
        sub_1000325C0();
        sub_1000AF474();
        sub_10000E7B0();
        sub_10001B350(v1001, v1002, v1003, v999);
      }

      sub_1000325C0();
      sub_100095588();
      v1004 = sub_1000162B0();
      sub_10001627C(v1004, v1005);
      if (v390)
      {
        sub_1000498D0();
        sub_1000AF41C();
        sub_100005404(v339);
        if (!v390)
        {
          sub_1000180EC(v339, &qword_100CA65F8);
        }
      }

      else
      {
        sub_100006000();
        sub_1000AF474();
      }

      sub_100095588();
      sub_10001627C(v995, 1);
      if (v390)
      {
        sub_10001EF58();
        sub_100021424();
        sub_1000AF41C();
        sub_100005404(v995);
        v1006 = v1217;
        if (!v390)
        {
          sub_1000180EC(v995, &qword_100CA65F0);
        }
      }

      else
      {
        sub_1000087FC();
        sub_100021424();
        sub_1000AF474();
        v1006 = v1217;
      }

      v1007 = v1240;
      v1008 = *(v1240 + v994[11]);
      v1009 = v1244[0];
      *v1244[0] = v986;
      sub_100014824();
      sub_1000AF474();
      *(v1009 + v994[6]) = v997;
      *(v1009 + v994[7]) = 1;
      sub_100051BBC();
      sub_100006000();
      sub_1000AF474();
      sub_1000087FC();
      sub_1000AF474();
      *(v1009 + v994[11]) = v1008;
      sub_1000180EC(v1229, &qword_100CA65F0);
      sub_1000180EC(v1243[3], &qword_100CA65F8);
      sub_1000180EC(v1006, &qword_100CA6600);
      sub_1000180EC(v1228, &qword_100CA6608);
      sub_100016A9C();
      sub_1000B0F30(v1007, v1010);
      sub_10000E7B0();
      sub_10001B350(v1011, v1012, v1013, v994);
      sub_100088864(v1244);
      sub_100003934();
      v1014 = v1347;
      sub_10001B350(v1015, v1016, v1017, v1347);
      sub_100010288();
      sub_10003778C();
      sub_1000AF41C();
      sub_1000113EC();
      sub_100095588();
      v1018 = sub_10000C7F0();
      sub_1000038B4(v1018, v1019, v1014);
      if (v390)
      {
        sub_1000180EC(&unk_100A5C400, &qword_100CA65E8);
      }

      else
      {
        sub_10002864C();
        sub_1000B0F30(v1008, v1020);
        sub_10001C490();
        sub_1000AF474();
      }

      v1021 = v1206;
      v1022 = *(&v1205 + 1);
      v1023 = v1203;
      v1024 = v1202;
      v1025 = v1201;
      sub_10001C490();
      sub_1000AF474();
      v1026 = *(v335 + 16);
      LODWORD(v1354) = *(v335 + 24);
      sub_1000453E0(&v1255);
      sub_100095588();
      sub_100003A40(v1025);
      v1359 = v1026;
      if (v390)
      {
        sub_100011634();
        sub_1000AF41C();
        sub_100043778();
        v1030 = sub_100024D10(v1027, v1028, v1029);

        if (v1030 != 1)
        {
          sub_1000180EC(v1025, &qword_100CA6640);
        }
      }

      else
      {
        sub_1000184A8();
        sub_1000AF474();
      }

      sub_100052674(&v1256);
      sub_100095588();
      v1031 = sub_1000175DC();
      sub_1000113D0(v1031, v1032);
      if (v390)
      {
        sub_10002014C();
        sub_100031630();
        sub_1000AF41C();
        sub_100003A40(v1024);
        v1033 = v1204;
        if (!v390)
        {
          sub_1000180EC(v1024, &qword_100CA6638);
        }
      }

      else
      {
        sub_100051E84();
        sub_1000AF474();
        v1033 = v1204;
      }

      sub_100095588();
      sub_1000113D0(v1023, 1);
      if (v390)
      {
        sub_100037B5C();
        sub_1000AF41C();
        sub_100003A40(v1023);
        v1034 = v1356;
        if (!v390)
        {
          sub_1000180EC(v1023, &qword_100CA6630);
        }
      }

      else
      {
        sub_10000EB04();
        sub_1000AF474();
        v1034 = v1356;
      }

      sub_1000436AC(&v1258);
      sub_100095588();
      v1035 = sub_1000131C4();
      sub_1000038B4(v1035, v1036, v1034);
      if (v390)
      {
        sub_10002C7E4();
        sub_1000AF41C();
        v1037 = sub_1000131C4();
        sub_1000038B4(v1037, v1038, v1034);
        if (!v390)
        {
          sub_1000180EC(v1033, &qword_100CA6628);
        }
      }

      else
      {
        sub_1000207F4();
        sub_1000AF474();
      }

      sub_100052378(v1259);
      sub_100095588();
      v1039 = sub_100016298();
      sub_10001627C(v1039, v1040);
      if (v390)
      {
        sub_10000CBF8();
        sub_1000AF41C();
        sub_100005404(v1022);
        v1041 = v1208;
        if (!v390)
        {
          sub_1000180EC(v1022, &qword_100CA6620);
        }
      }

      else
      {
        sub_1000247AC();
        sub_1000AF474();
        v1041 = v1208;
      }

      sub_1000C893C(&v1261);
      sub_100095588();
      sub_10000C814(v1021);
      if (v390)
      {
        sub_10003C57C();
        sub_1000AF41C();
        sub_10000C814(v1021);
        if (!v390)
        {
          sub_1000180EC(v1021, &qword_100CA6618);
        }
      }

      else
      {
        sub_1000179A4();
        sub_1000AF474();
      }

      sub_1000436AC(&v1262);
      sub_100095588();
      v1042 = sub_1000131C4();
      sub_1000038B4(v1042, v1043, v994);
      if (v390)
      {
        sub_100022CD0();
        sub_1000AF41C();
        v1044 = sub_1000131C4();
        sub_1000038B4(v1044, v1045, v994);
        if (!v390)
        {
          sub_1000180EC(v1041, &qword_100CA6610);
        }
      }

      else
      {
        sub_100069674();
        sub_100021CEC();
        sub_1000AF474();
      }

      sub_10001C490();
      sub_100041000();
      sub_10001327C();
      sub_100021D8C();
      type metadata accessor for MainState._Storage(0);
      sub_100003B6C();
      v1046 = sub_100020224();
      sub_100040DE8(v1046, v1047, v1220, v1221, v1222, v1223, v1224, v1048, v1195, v1196, v1197, v1198, v1199, v1200, v1201, v1202, v1203, v1204, v1205, *(&v1205 + 1), v1206, v1207, v1208, v1209, v1210, v1211, v1212, v1213, v1214, v1215, v1216, v1217, v1218, v1219, v1220);
      sub_1000E31D4();

      sub_1000180EC(v1230, &qword_100CA65E8);
      sub_1000180EC(v1244[0], &qword_100CA6610);
      sub_1000180EC(v1243[4], &qword_100CA6618);
      sub_1000180EC(v1243[2], &qword_100CA6620);
      sub_1000180EC(v1243[1], &qword_100CA6628);
      sub_1000180EC(v1243[0], &qword_100CA6630);
      sub_1000180EC(v1242, &qword_100CA6638);
      sub_1000180EC(v1241, &qword_100CA6640);
      (*(v1226 + 8))(v1225, v1227);
      sub_1001706F4();
      v890 = &v1331;
      goto LABEL_337;
  }
}