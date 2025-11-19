unint64_t sub_10004B234()
{
  result = qword_100131290;
  if (!qword_100131290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131290);
  }

  return result;
}

unint64_t sub_10004B28C()
{
  result = qword_100131298;
  if (!qword_100131298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131298);
  }

  return result;
}

unint64_t sub_10004B2E4()
{
  result = qword_1001312A0;
  if (!qword_1001312A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001312A0);
  }

  return result;
}

uint64_t *sub_10004B338(uint64_t a1, uint64_t *a2)
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

uint64_t sub_10004B404()
{
  *(v2 - 120) = v0;
  v3 = *(v1 + 8);
  result = *(v2 - 152);
  v5 = *(v2 - 176);
  return result;
}

uint64_t sub_10004B430()
{
  result = v0;
  v3 = *(v1 - 176);
  v4 = *(v1 - 152);
  return result;
}

uint64_t sub_10004B4A0()
{
  *(v5 - 96) = v2;
  *(v5 - 184) = v0;
  v6 = *(v3 + 16);
  result = v4;
  *(v5 - 144) = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  *(v5 - 136) = v6;
  return result;
}

uint64_t sub_10004B560()
{
  result = *(v0 - 152);
  v2 = *(v0 - 176);
  return result;
}

uint64_t sub_10004B5C4()
{
  v2 = **(v1 - 152);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

void sub_10004B5EC()
{
  *(v3 - 160) = v1;
  *(v3 - 152) = v2 + 8;
  *(v3 - 104) = v0 - 8;
  *(v3 - 128) = v0;
  *(v3 - 168) = v0 + 16;
}

uint64_t sub_10004B698()
{

  return static Measurement.< infix<A, B>(_:_:)(v1, v0);
}

uint64_t sub_10004B6BC()
{

  return sub_1000EC4A4();
}

uint64_t sub_10004B74C()
{

  return sub_1000EC514();
}

uint64_t sub_10004B76C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v8 = sub_1000EA3B4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EBC44();
  v17 = sub_1000090D4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  v23 = &v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v23, a1, v16);
  (*(v11 + 16))(v15, a2, v8);
  v24 = sub_100026CB4(v23, v15, a3, a4);
  (*(v11 + 8))(a2, v8);
  (*(v19 + 8))(a1, v16);
  return v24;
}

uint64_t sub_10004B92C()
{
  v0 = sub_100027034();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for LargePrecipitationViewAttributesFactory()
{
  result = qword_1001312D8;
  if (!qword_1001312D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004BA0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA214();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004BA3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v5 = sub_100002A10(&qword_100131388, &qword_1000F1E28);
  sub_1000090D4(v5);
  v57 = v6;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v56 - v10;
  v60 = sub_100002A10(&qword_100131390, &qword_1000F1E30);
  sub_1000090D4(v60);
  v62 = v12;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  v18 = sub_100002A10(&qword_100131398, &qword_1000F1E38);
  v63 = sub_1000090D4(v18);
  v64 = v19;
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v58 = &v56 - v23;
  v24 = sub_100002A10(&qword_1001313A0, &unk_1000F1E40);
  v65 = sub_1000090D4(v24);
  v66 = v25;
  v27 = *(v26 + 64);
  sub_100009204();
  __chkstk_darwin(v28);
  v61 = &v56 - v29;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v68 = sub_1000D88B8(3, a1, a2);
  v59 = v68;
  type metadata accessor for SunriseSunsetContentView();
  sub_10004C36C(&qword_1001313A8, type metadata accessor for SunriseSunsetContentView);
  sub_10004C36C(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);

  sub_1000EBCD4();
  sub_1000EA354();
  v30 = sub_100015CA8();
  v32 = v31;
  v34 = v33;
  v35 = sub_10004C3B4();
  sub_1000EA474();
  sub_1000058EC(v30, v32, v34 & 1);

  (*(v57 + 8))(v11, v5);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000EFAD0;
  (*(v38 + 104))(v42 + v41, enum case for WidgetFamily.systemSmall(_:), v36);
  v68 = v5;
  v69 = v35;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v58;
  v45 = v60;
  sub_1000EA454();

  v46 = v45;
  (*(v62 + 8))(v17, v45);
  sub_1000EA354();
  v47 = sub_100015CA8();
  v49 = v48;
  LOBYTE(v41) = v50;
  v68 = v46;
  v69 = OpaqueTypeConformance2;
  sub_100015C48();
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v61;
  v53 = v63;
  sub_1000EA444();
  sub_1000058EC(v47, v49, v41 & 1);

  (*(v64 + 8))(v44, v53);
  v68 = v53;
  v69 = v51;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v54 = v65;
  sub_1000EA494();

  return (*(v66 + 8))(v52, v54);
}

uint64_t sub_10004C034@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SunriseSunsetContentView();
  sub_1000159C8(a1, a2 + v4[11]);
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v6 = swift_getKeyPath();
  *(a2 + v4[10]) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v7 = a2 + v4[6];
  *v7 = KeyPath;
  v7[8] = 0;
  v8 = a2 + v4[9];
  *v8 = v6;
  v8[8] = 0;
  v9 = v4[12];
  v10 = [objc_opt_self() mainScreen];
  [v10 bounds];

  result = sub_100002750();
  *(a2 + v9) = result;
  return result;
}

uint64_t sub_10004C220()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.SunriseSunset(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_10004C33C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004C220();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004C36C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004C3B4()
{
  result = qword_1001313B0;
  if (!qword_1001313B0)
  {
    sub_100002ABC(&qword_100131388, &qword_1000F1E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001313B0);
  }

  return result;
}

uint64_t sub_10004C434@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA214();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10004C464()
{
  sub_100002ABC(&qword_1001313A0, &unk_1000F1E40);
  sub_100002ABC(&qword_100131398, &qword_1000F1E38);
  sub_100002ABC(&qword_100131390, &qword_1000F1E30);
  sub_100002ABC(&qword_100131388, &qword_1000F1E28);
  sub_10004C3B4();
  sub_100015C78();
  sub_100015CC8();
  sub_100015C48();
  sub_100015CC8();
  sub_100015C60();
  sub_100015CC8();
  return sub_100015CC8();
}

uint64_t sub_10004C534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_100002A10(&qword_1001313B8, &qword_1000F2010);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v45 - v11;
  v13 = sub_100002A10(&qword_1001313C0, &qword_1000F2018);
  v47 = sub_1000090D4(v13);
  v48 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v47);
  v18 = &v45 - v17;
  v19 = sub_100002A10(&qword_1001313C8, &unk_1000F2020);
  v49 = sub_1000090D4(v19);
  v50 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v49);
  v46 = &v45 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v52 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for TemperatureContentView();
  sub_10004CC10(&qword_1001313D0, type metadata accessor for TemperatureContentView);
  sub_10004CC10(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_10004CC58();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v52 = v5;
  v53 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v46;
  v34 = v47;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v48 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000EFAD0;
  (*(v38 + 104))(v42 + v41, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v52 = v34;
  v53 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_1000EA454();

  return (*(v50 + 8))(v35, v43);
}

uint64_t sub_10004CA48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for TemperatureContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10004CAC4()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.TemperatureComplication(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_10004CBE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10004CAC4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10004CC10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004CC58()
{
  result = qword_1001313D8;
  if (!qword_1001313D8)
  {
    sub_100002ABC(&qword_1001313B8, &qword_1000F2010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001313D8);
  }

  return result;
}

uint64_t sub_10004CCC0()
{
  sub_100002ABC(&qword_1001313C8, &unk_1000F2020);
  sub_100002ABC(&qword_1001313C0, &qword_1000F2018);
  sub_100002ABC(&qword_1001313B8, &qword_1000F2010);
  sub_10004CC58();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10004CD84@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  v32[0] = sub_1000EA4E4();
  v1 = sub_1000090D4(v32[0]);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_10012FC10, &qword_1000F2060);
  sub_1000069E4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = (v32 - v12);
  v14 = sub_100002A10(&qword_1001313E0, &qword_1000F2068);
  sub_1000090D4(v14);
  v16 = v15;
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  v21 = v32 - v20;
  *v13 = sub_1000EABC4();
  v13[1] = v22;
  v23 = sub_100002A10(&qword_1001313E8, &qword_1000F2070);
  sub_10004DAC4(v13 + *(v23 + 44));
  sub_1000EA4B4();
  sub_1000404D0();
  v25 = sub_100006988(v24, &qword_10012FC10, &qword_1000F2060);
  sub_1000EA914();
  (*(v3 + 8))(v7, v32[0]);
  sub_100008E48(v13, &qword_10012FC10, &qword_1000F2060);
  sub_1000EA354();
  sub_10004E774();
  v26 = sub_1000EA7F4();
  v28 = v27;
  v30 = v29;
  v32[3] = v8;
  v32[4] = v25;
  sub_10004E75C();
  swift_getOpaqueTypeConformance2();
  sub_1000EA8C4();
  sub_1000058EC(v26, v28, v30 & 1);

  return (*(v16 + 8))(v21, v14);
}

uint64_t sub_10004D034@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = sub_1000EA4E4();
  v1 = sub_1000090D4(v42);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_1001314B8, &qword_1000F2148);
  sub_1000069E4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = (&v38 - v12);
  v14 = sub_100002A10(&qword_1001314C0, &qword_1000F2150);
  v15 = sub_1000090D4(v14);
  v40 = v16;
  v41 = v15;
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  v21 = &v38 - v20;
  v43 = sub_100002A10(&qword_1001314C8, &qword_1000F2158);
  sub_1000069E4(v43);
  v23 = *(v22 + 64);
  sub_100009204();
  __chkstk_darwin(v24);
  v39 = &v38 - v25;
  *v13 = sub_1000EABC4();
  v13[1] = v26;
  v27 = sub_100002A10(&qword_1001314D0, &qword_1000F2160);
  sub_10004D39C(v13 + *(v27 + 44));
  sub_1000EA4B4();
  sub_1000404D0();
  v29 = sub_100006988(v28, &qword_1001314B8, &qword_1000F2148);
  sub_1000EA914();
  (*(v3 + 8))(v7, v42);
  sub_100008E48(v13, &qword_1001314B8, &qword_1000F2148);
  v47 = sub_1000EB4E4();
  v48 = v30;
  v45 = v8;
  v46 = v29;
  sub_10004E75C();
  swift_getOpaqueTypeConformance2();
  sub_100005898();
  v31 = v39;
  v32 = v41;
  sub_1000EA8E4();

  (*(v40 + 8))(v21, v32);
  sub_1000EA354();
  sub_10004E774();
  v33 = sub_1000EA7F4();
  v35 = v34;
  LOBYTE(v29) = v36;
  sub_1000EA044();
  sub_1000058EC(v33, v35, v29 & 1);

  return sub_100008E48(v31, &qword_1001314C8, &qword_1000F2158);
}

uint64_t sub_10004D39C@<X0>(char *a1@<X8>)
{
  v2 = sub_100002A10(&qword_1001314E0, &qword_1000F2168);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_1000EBBE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1000EBBD4();
  *v8 = sub_1000EA3C4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v17 = sub_100002A10(&qword_1001314E8, &qword_1000F2170);
  sub_10004D604(&v8[*(v17 + 44)]);
  v18 = v10[2];
  v18(v14, v16, v9);
  sub_10000EBC4(v8, v6, &qword_1001314E0, &qword_1000F2168);
  v18(a1, v14, v9);
  v19 = &a1[*(sub_100002A10(&qword_1001314F0, &qword_1000F2178) + 48)];
  sub_10000EBC4(v6, v19, &qword_1001314E0, &qword_1000F2168);
  sub_100008E48(v8, &qword_1001314E0, &qword_1000F2168);
  v20 = v10[1];
  v20(v16, v9);
  sub_100008E48(v6, &qword_1001314E0, &qword_1000F2168);
  return (v20)(v14, v9);
}

uint64_t sub_10004D604@<X0>(uint64_t *a1@<X8>)
{
  v44 = a1;
  v1 = sub_1000E8444();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v37[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v41 = sub_100002A10(&qword_1001314F8, &qword_1000F2180);
  v7 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v9 = &v37[-v8];
  v43 = sub_100002A10(&qword_100131500, &qword_1000F2188);
  v10 = *(v43 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v43);
  v42 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v40 = &v37[-v14];
  sub_1000EB4C4();
  if (v15)
  {
    v39 = sub_1000EAA24();
  }

  else
  {
    v39 = 0;
  }

  sub_1000EABC4();
  sub_1000EA0A4();
  v45[120] = 1;
  memcpy(&v45[7], __src, 0x70uLL);
  v38 = 1;
  sub_1000EB4A4();
  sub_1000EA6C4();
  sub_1000E8424();

  (*(v2 + 8))(v6, v1);
  v16 = sub_1000EA804();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &v9[*(sub_100002A10(&qword_100131508, &qword_1000F2190) + 36)];
  v24 = *(sub_100002A10(&qword_100131510, &qword_1000F2198) + 28);
  v25 = enum case for Text.Case.uppercase(_:);
  v26 = sub_1000EA7C4();
  (*(*(v26 - 8) + 104))(v23 + v24, v25, v26);
  sub_1000028A0(v23 + v24, 0, 1, v26);
  *v23 = swift_getKeyPath();
  *v9 = v16;
  *(v9 + 1) = v18;
  v9[16] = v20 & 1;
  *(v9 + 3) = v22;
  KeyPath = swift_getKeyPath();
  v28 = &v9[*(v41 + 36)];
  *v28 = KeyPath;
  v28[8] = 1;
  sub_1000EA664();
  sub_10004E3BC();
  v29 = v40;
  sub_1000EA874();
  sub_10004E52C(v9);
  v30 = v10[2];
  v31 = v42;
  v32 = v43;
  v30(v42, v29, v43);
  v33 = v44;
  *v44 = v39;
  v33[1] = 0;
  *(v33 + 16) = v38;
  memcpy(v33 + 17, v45, 0x77uLL);
  v34 = sub_100002A10(&qword_100131530, &qword_1000F21D0);
  v30(v33 + *(v34 + 64), v31, v32);
  v35 = v10[1];
  v35(v29, v32);
  v35(v31, v32);
}

uint64_t sub_10004DAC4@<X0>(char *a1@<X8>)
{
  v2 = sub_100002A10(&qword_1001313F0, &qword_1000F2078);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = sub_1000EBBE4();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v22 - v15;
  sub_1000EBBD4();
  *v8 = sub_1000EA3C4();
  *(v8 + 1) = 0x4008000000000000;
  v8[16] = 0;
  v17 = sub_100002A10(&qword_1001313F8, &qword_1000F2080);
  sub_10004DD24(&v8[*(v17 + 44)]);
  v18 = v10[2];
  v18(v14, v16, v9);
  sub_10000EBC4(v8, v6, &qword_1001313F0, &qword_1000F2078);
  v18(a1, v14, v9);
  v19 = &a1[*(sub_100002A10(&qword_100131400, &qword_1000F2088) + 48)];
  sub_10000EBC4(v6, v19, &qword_1001313F0, &qword_1000F2078);
  sub_100008E48(v8, &qword_1001313F0, &qword_1000F2078);
  v20 = v10[1];
  v20(v16, v9);
  sub_100008E48(v6, &qword_1001313F0, &qword_1000F2078);
  return (v20)(v14, v9);
}

uint64_t sub_10004DD24@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v24 = sub_100002A10(&qword_100131408, &qword_1000F2090);
  v1 = *(v24 - 8);
  v2 = v1[8];
  v3 = __chkstk_darwin(v24);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v23 = sub_1000EAA24();
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v7 = qword_100145E00;
  v8 = sub_1000EA7F4();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v27 = v8;
  v28 = v10;
  v29 = v12 & 1;
  v30 = v14;
  v31 = KeyPath;
  v32 = 1;
  sub_1000EA664();
  sub_100002A10(&qword_100131410, &unk_1000F2980);
  sub_10004E0BC();
  sub_1000EA874();
  sub_1000058EC(v8, v10, v12 & 1);

  v16 = v1[2];
  v18 = v24;
  v17 = v25;
  v16(v25, v6, v24);
  v19 = v26;
  *v26 = v23;
  v20 = sub_100002A10(&qword_100131420, &qword_1000F20D8);
  v16(v19 + *(v20 + 48), v17, v18);
  v21 = v1[1];

  v21(v6, v18);
  v21(v17, v18);
}

uint64_t sub_10004E014@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA1F4();
  *a1 = result;
  return result;
}

uint64_t sub_10004E040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000EA1F4();
  *a1 = result;
  return result;
}

unint64_t sub_10004E0BC()
{
  result = qword_100131418;
  if (!qword_100131418)
  {
    sub_100002ABC(&qword_100131410, &unk_1000F2980);
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131418);
  }

  return result;
}

uint64_t sub_10004E188(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10004E1E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB504();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RainCircularContentView()
{
  result = qword_100131480;
  if (!qword_100131480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10004E27C()
{
  result = sub_1000EB504();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10004E328(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100131538, &qword_1000F21D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_10004E594(a1, &v6 - v4);
  return sub_1000EA254();
}

unint64_t sub_10004E3BC()
{
  result = qword_100131518;
  if (!qword_100131518)
  {
    sub_100002ABC(&qword_1001314F8, &qword_1000F2180);
    sub_10004E474();
    sub_100006988(&qword_10012FAA0, &qword_10012FAA8, &qword_1000F20D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131518);
  }

  return result;
}

unint64_t sub_10004E474()
{
  result = qword_100131520;
  if (!qword_100131520)
  {
    sub_100002ABC(&qword_100131508, &qword_1000F2190);
    sub_100006988(&qword_100131528, &qword_100131510, &qword_1000F2198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131520);
  }

  return result;
}

uint64_t sub_10004E52C(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001314F8, &qword_1000F2180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004E594(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131538, &qword_1000F21D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10004E608()
{
  result = qword_100131540;
  if (!qword_100131540)
  {
    sub_100002ABC(&qword_1001314C8, &qword_1000F2158);
    sub_100002ABC(&qword_1001314B8, &qword_1000F2148);
    sub_100006988(&qword_1001314D8, &qword_1001314B8, &qword_1000F2148);
    swift_getOpaqueTypeConformance2();
    sub_10004E704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131540);
  }

  return result;
}

unint64_t sub_10004E704()
{
  result = qword_10012FBE0;
  if (!qword_10012FBE0)
  {
    sub_1000EA514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012FBE0);
  }

  return result;
}

uint64_t LocalSearchRequestService.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_10004E7EC(a1, v2 + 16);
  return v2;
}

uint64_t sub_10004E7EC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:calloutTitle:)(uint64_t a1)
{
  v6 = [objc_allocWithZone(MKLocalSearchRequest) initWithCompletion:a1];
  v1 = sub_100002A10(&qword_100131548, &qword_1000F21F0);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v4 = sub_1000E9CB4();

  return v4;
}

uint64_t LocalSearchRequestService.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MKLocalSearchRequest) init];
  sub_10004FA34(a1, a2, v4);
  v5 = sub_100002A10(&qword_100131548, &qword_1000F21F0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1000E9CB4();

  return v8;
}

void sub_10004E964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_10004FA34(a6, a7, a5);
  v14 = [objc_allocWithZone(MKLocalSearch) initWithRequest:a5];
  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  v15[4] = a3;
  v15[5] = a4;
  v15[6] = a1;
  v15[7] = a2;
  v17[4] = sub_10004FAF8;
  v17[5] = v15;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = sub_10004F958;
  v17[3] = &unk_100126598;
  v16 = _Block_copy(v17);

  [v14 startWithCompletionHandler:v16];
  _Block_release(v16);
}

void sub_10004EAC0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(char *), uint64_t a8)
{
  v135 = a8;
  v136 = a7;
  v142 = a6;
  v143 = a5;
  v146 = a4;
  v140 = a1;
  v141 = a3;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v139 = &v124 - v11;
  v137 = sub_1000E9A84();
  v134 = *(v137 - 8);
  v12 = *(v134 + 64);
  v13 = __chkstk_darwin(v137);
  v15 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v124 - v16;
  v18 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v124 - v24;
  __chkstk_darwin(v23);
  v27 = &v124 - v26;
  v28 = sub_1000E8784();
  v138 = *(v28 - 8);
  v29 = *(v138 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v124 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v124 - v33;
  v35 = sub_1000E9F64();
  v36 = *(v35 - 8);
  v144 = v35;
  v145 = v36;
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v39 = __chkstk_darwin(v38);
  v40 = __chkstk_darwin(v39);
  __chkstk_darwin(v40);
  v45 = &v124 - v44;
  if (a2)
  {
    swift_errorRetain();
    sub_1000E9F34();
    swift_errorRetain();
    v46 = v146;

    v47 = sub_1000E9F44();
    v48 = sub_1000EC194();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v49 = 141558531;
      *(v49 + 4) = 1752392040;
      *(v49 + 12) = 2085;
      *(v49 + 14) = sub_1000E2E18(v141, v46, v148);
      *(v49 + 22) = 2082;
      v147 = a2;
      swift_errorRetain();
      sub_100002A10(&qword_100130548, &qword_1000F0CF0);
      v50 = sub_1000EBEE4();
      v52 = sub_1000E2E18(v50, v51, v148);

      *(v49 + 24) = v52;
      _os_log_impl(&_mh_execute_header, v47, v48, "Failed to geocode. searchString=%{sensitive,mask.hash}s, error=%{public}s", v49, 0x20u);
      swift_arrayDestroy();
    }

    (*(v145 + 8))(v45, v144);
    sub_10004FB20();
    v53 = swift_allocError();
    *v54 = a2;
    swift_errorRetain();
    (v143)(v53);

LABEL_15:

    return;
  }

  v129 = v25;
  v130 = v27;
  v131 = v32;
  v55 = v139;
  v127 = v15;
  v132 = v34;
  v133 = v28;
  v128 = v17;
  v56 = v146;
  if (!v140)
  {
LABEL_12:
    v72 = v41;
    sub_1000E9F34();

    v73 = sub_1000E9F44();
    v74 = sub_1000EC194();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v148[0] = v76;
      *v75 = 141558275;
      *(v75 + 4) = 1752392040;
      *(v75 + 12) = 2085;
      *(v75 + 14) = sub_1000E2E18(v141, v56, v148);
      sub_100009068(v76);
    }

    (*(v145 + 8))(v72, v144);
    sub_10004FB20();
    swift_allocError();
    *v77 = 0;
    v143();
    goto LABEL_15;
  }

  v57 = v41;
  v125 = v43;
  v126 = v42;
  v58 = [v140 mapItems];
  sub_10004FB74();
  v59 = sub_1000EBFF4();

  if (!sub_100030A40(v59))
  {

    v41 = v57;
    goto LABEL_12;
  }

  sub_100030A18(0, (v59 & 0xC000000000000001) == 0, v59);
  if ((v59 & 0xC000000000000001) != 0)
  {
    v60 = sub_1000EC3F4();
  }

  else
  {
    v60 = *(v59 + 32);
  }

  v61 = v60;
  v62 = v133;
  v63 = v55;
  v64 = v131;

  v65 = [v61 placemark];
  v66 = [v65 timeZone];

  v67 = v129;
  if (v66)
  {
    sub_1000E8764();

    v68 = v138;
    v69 = *(v138 + 32);
    v69(v67, v64, v62);
    sub_1000028A0(v67, 0, 1, v62);
    v70 = v130;
    v69(v130, v67, v62);
    sub_1000028A0(v70, 0, 1, v62);
    v71 = v132;
  }

  else
  {
    v78 = 1;
    sub_1000028A0(v129, 1, 1, v62);
    v79 = [v61 timeZone];
    if (v79)
    {
      v80 = v79;
      sub_1000E8764();

      v78 = 0;
    }

    v71 = v132;
    v70 = v130;
    sub_1000028A0(v22, v78, 1, v62);
    sub_10004FBB8(v22, v70);
    v81 = sub_100005B30(v67, 1, v62);
    v68 = v138;
    if (v81 != 1)
    {
      sub_10004FC28(v67);
    }
  }

  if (sub_100005B30(v70, 1, v62) == 1)
  {
    sub_10004FC28(v70);
    v82 = v125;
    sub_1000E9F34();
    v83 = v146;

    v84 = sub_1000E9F44();
    v85 = sub_1000EC194();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v148[0] = v87;
      *v86 = 141558275;
      *(v86 + 4) = 1752392040;
      *(v86 + 12) = 2085;
      *(v86 + 14) = sub_1000E2E18(v141, v83, v148);
      _os_log_impl(&_mh_execute_header, v84, v85, "Time zone missing while geocoding, searchString=%{sensitive,mask.hash}s.", v86, 0x16u);
      sub_100009068(v87);
    }

    (*(v145 + 8))(v82, v144);
    sub_10004FB20();
    swift_allocError();
    *v88 = 1;
    v143();
  }

  else
  {
    (*(v68 + 32))(v71, v70, v62);
    v89 = [v61 placemark];
    [v89 coordinate];

    v142 = sub_1000EC314();
    v143 = v90;
    v91 = [v61 wc_weatherDisplayName];
    v92 = sub_1000EBE84();
    v139 = v93;
    v140 = v92;

    (*(v68 + 16))(v64, v71, v62);
    sub_1000E8AE4();
    v94 = sub_1000E8604();
    sub_1000028A0(v63, 0, 1, v94);
    v95 = [v61 placemark];
    v96 = MKPlacemark.safeTitle.getter();
    v130 = v97;
    v131 = v96;

    v98 = [v61 placemark];
    MKPlacemark.safeSubtitle.getter();
    v129 = v99;

    v100 = [v61 wc_weatherLocationName];
    v125 = sub_1000EBE84();

    v101 = [v61 wc_weatherLocationName];
    sub_1000EBE84();

    v102 = [v61 wc_weatherDisplayName];
    sub_1000EBE84();

    sub_1000E99F4();

    v103 = v128;
    sub_1000E9A14();
    v104 = v126;
    sub_1000E9F34();
    v105 = v134;
    v106 = v127;
    v107 = v137;
    (*(v134 + 16))(v127, v103, v137);
    v108 = v146;

    v109 = v61;
    v110 = sub_1000E9F44();
    v111 = sub_1000EC1B4();
    v143 = v109;

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v148[0] = swift_slowAlloc();
      *v112 = 141559299;
      v113 = v106;
      *(v112 + 4) = 1752392040;
      *(v112 + 12) = 2085;
      *(v112 + 14) = sub_1000E2E18(v141, v108, v148);
      *(v112 + 22) = 2160;
      *(v112 + 24) = 1752392040;
      *(v112 + 32) = 2081;
      v114 = sub_1000E9A24();
      v116 = v115;
      v117 = *(v105 + 8);
      v117(v113, v137);
      v118 = sub_1000E2E18(v114, v116, v148);

      *(v112 + 34) = v118;
      *(v112 + 42) = 2160;
      *(v112 + 44) = 1752392040;
      *(v112 + 52) = 2081;
      v119 = [v143 wc_weatherLocationName];
      v120 = sub_1000EBE84();
      v122 = v121;

      v123 = sub_1000E2E18(v120, v122, v148);

      *(v112 + 54) = v123;
      _os_log_impl(&_mh_execute_header, v110, v111, "Successfully geocoded location. searchString=%{sensitive,mask.hash}s, location=%{private,mask.hash}s, unsanitizedSecondaryName=%{private,mask.hash}s", v112, 0x3Eu);
      swift_arrayDestroy();
      v103 = v128;

      v107 = v137;
    }

    else
    {

      v117 = *(v105 + 8);
      v117(v106, v107);
    }

    (*(v145 + 8))(v104, v144);
    v136(v103);

    v117(v103, v107);
    (*(v138 + 8))(v132, v133);
  }
}

void sub_10004F958(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_10004FA34(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1000EBE64();
  [a3 setNaturalLanguageQuery:v4];
}

uint64_t sub_10004FAB0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10004FB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10004FB20()
{
  result = qword_1001315F0;
  if (!qword_1001315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001315F0);
  }

  return result;
}

unint64_t sub_10004FB74()
{
  result = qword_1001315F8;
  if (!qword_1001315F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001315F8);
  }

  return result;
}

uint64_t sub_10004FBB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10004FC28(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004FC90(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10004FCB4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10004FD08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_10004FD64(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_10004FDBC()
{
  v0 = sub_1000E9F64();
  sub_10004B338(v0, qword_100145BB0);
  sub_100008CB8(v0, qword_100145BB0);
  return sub_1000E9F54();
}

uint64_t sub_10004FEE0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1000E9F64();
  sub_10004B338(v3, a2);
  sub_100008CB8(v3, a2);
  return sub_1000E9F54();
}

double sub_10004FF7C()
{
  v1 = sub_1000E94B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0[6];
  sub_100008DA8(v0 + 2, v0[5]);
  sub_1000E9804();
  sub_1000E9494();
  v8 = v7;
  (*(v2 + 8))(v5, v1);
  return v8;
}

double sub_100050078@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_100051C1C((v1 + 10), &v5, &qword_100131600, &qword_1000F2330);
  if (*(&v6 + 1) == 1)
  {
    sub_10000D3A8(&v5, &qword_100131600, &qword_1000F2330);
    sub_100050158(v1, a1);
    sub_100051C1C(a1, &v5, &qword_1001316D8, &qword_1000F2428);
    swift_beginAccess();
    sub_100051C84(&v5, (v1 + 10));
    swift_endAccess();
  }

  else
  {
    result = *&v5;
    v4 = v6;
    *a1 = v5;
    *(a1 + 16) = v4;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_100050158@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000E9F64();
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5);
  v8 = a1[16];
  (a1[15])(v12, v7);
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9274();
  sub_1000E92E4();

  sub_100008DA8(v12, v12[3]);
  sub_1000E94F4();
  if (v11 == 1)
  {
    sub_1000E9274();
    sub_100051DE4(&qword_1001316E0, v9, type metadata accessor for LocalSearchRequestManager);
    sub_1000E9314();
  }

  sub_100051D3C(v12, a2);
  return sub_100009068(v12);
}

BOOL sub_1000504B8()
{
  v0 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_1000E8604();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v17 - v10;
  sub_1000E99D4();
  if (sub_100005B30(v3, 1, v4) == 1)
  {
    sub_10000D3A8(v3, &qword_10012F048, &qword_1000EEF30);
    return 1;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    v13 = sub_10004FF7C();
    sub_1000E8AE4();
    sub_1000E8544();
    v15 = v14;
    v16 = *(v5 + 8);
    v16(v9, v4);
    v16(v11, v4);
    return v13 <= v15;
  }
}

uint64_t LocalSearchRequestManager.__allocating_init(service:store:appConfigurationManager:queue:)()
{
  sub_100051E6C();
  v0 = sub_100051E48();

  return sub_100051644(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t LocalSearchRequestManager.init(service:store:appConfigurationManager:queue:)()
{
  sub_100051E6C();
  v0 = sub_100051E48();

  return sub_1000516D4(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[17];
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v2;
  sub_1000E9A84();

  v8 = sub_1000E9CC4();

  return v8;
}

uint64_t sub_100050868(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  v8 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v32 - v10;
  v12 = sub_1000E9A84();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v34 = v32 - v17;
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9284();
  sub_1000E92E4();

  if (v39[0])
  {
    goto LABEL_9;
  }

  v33 = v12;
  v36 = a2;
  sub_100050078(v39);
  if (!v40)
  {
    sub_10000D3A8(v39, &qword_1001316D8, &qword_1000F2428);
    sub_1000028A0(v11, 1, 1, v33);
    goto LABEL_8;
  }

  sub_100051D3C(v39, v37);
  sub_10000D3A8(v39, &qword_1001316D8, &qword_1000F2428);
  v32[1] = v7;
  sub_100008DA8(v37, v38);
  sub_1000E94D4();
  sub_100009068(v37);
  v18 = v33;
  if (sub_100005B30(v11, 1, v33) == 1)
  {
LABEL_8:
    sub_10000D3A8(v11, &qword_100130440, &qword_1000F0BE0);
    a2 = v36;
    goto LABEL_9;
  }

  v19 = v34;
  v20 = v35;
  (*(v35 + 32))(v34, v11, v18);
  if (!sub_1000504B8())
  {
    (*(v20 + 16))(v16, v19, v18);
    v29 = sub_100002A10(&qword_100131548, &qword_1000F21F0);
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    v27 = sub_1000E9C94();
    (*(v20 + 8))(v19, v18);
    return v27;
  }

  v21 = sub_100050078(v39);
  if (v40)
  {
    sub_100051D3C(v39, v37);
    sub_10000D3A8(v39, &qword_1001316D8, &qword_1000F2428);
    sub_100008DA8(v37, v38);
    sub_1000E94E4();
    (*(v20 + 8))(v19, v18);
    sub_100009068(v37);
  }

  else
  {
    (*(v20 + 8))(v19, v18, v21);
    sub_10000D3A8(v39, &qword_1001316D8, &qword_1000F2428);
  }

  a2 = v36;
LABEL_9:
  v22 = a1[7];
  v23 = a1[8];
  ObjectType = swift_getObjectType();
  (*(v23 + 8))(a2, a3, ObjectType, v23);
  v25 = a1[17];
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;

  v27 = sub_1000E9C74();

  return v27;
}

uint64_t LocalSearchRequestManager.performLocalSearch(with:calloutTitle:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = v3[17];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a1;
  v9[5] = v3;
  sub_1000E9A84();

  v10 = a1;

  v11 = sub_1000E9CC4();

  return v11;
}

uint64_t sub_100050E44(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v39 = *a5;
  v9 = sub_100002A10(&qword_100130440, &qword_1000F0BE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v36 - v11;
  v13 = sub_1000E9A84();
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v36 = &v36 - v18;
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9284();
  sub_1000E92E4();

  if (v42[0])
  {
    goto LABEL_11;
  }

  v38 = a1;
  sub_100050078(v42);
  if (!v43)
  {
    sub_10000D3A8(v42, &qword_1001316D8, &qword_1000F2428);
    sub_1000028A0(v12, 1, 1, v13);
    goto LABEL_8;
  }

  sub_100051D3C(v42, v40);
  sub_10000D3A8(v42, &qword_1001316D8, &qword_1000F2428);
  sub_100008DA8(v40, v41);
  v19 = v13;
  sub_1000E94D4();
  sub_100009068(v40);
  if (sub_100005B30(v12, 1, v13) == 1)
  {
LABEL_8:
    v23 = &qword_100130440;
    v24 = &qword_1000F0BE0;
    v25 = v12;
LABEL_9:
    sub_10000D3A8(v25, v23, v24);
    goto LABEL_10;
  }

  v21 = v36;
  v20 = v37;
  (*(v37 + 32))(v36, v12, v19);
  if (!sub_1000504B8())
  {
    (*(v20 + 16))(v17, v21, v19);
    v33 = sub_100002A10(&qword_100131548, &qword_1000F21F0);
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    swift_allocObject();
    v31 = sub_1000E9C94();
    (*(v20 + 8))(v21, v19);
    return v31;
  }

  v22 = sub_100050078(v42);
  if (!v43)
  {
    (*(v20 + 8))(v21, v19, v22);
    v23 = &qword_1001316D8;
    v24 = &qword_1000F2428;
    v25 = v42;
    goto LABEL_9;
  }

  sub_100051D3C(v42, v40);
  sub_10000D3A8(v42, &qword_1001316D8, &qword_1000F2428);
  sub_100008DA8(v40, v41);
  sub_1000E94E4();
  (*(v20 + 8))(v21, v19);
  sub_100009068(v40);
LABEL_10:
  a1 = v38;
LABEL_11:
  v26 = a3[7];
  v27 = a3[8];
  ObjectType = swift_getObjectType();
  (*(v27 + 16))(a4, a1, a2, ObjectType, v27);
  v29 = a3[17];
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  *(v30 + 24) = a2;

  v31 = sub_1000E9C74();

  return v31;
}

uint64_t sub_1000512C4(uint64_t a1)
{
  v3 = sub_1000E9A84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100050078(v13);
  if (v14)
  {
    sub_100051D3C(v13, v12);
    sub_10000D3A8(v13, &qword_1001316D8, &qword_1000F2428);
    v15 = v1;
    sub_100008DA8(v12, v12[3]);
    sub_1000E94C4();
    sub_100009068(v12);
  }

  else
  {
    sub_10000D3A8(v13, &qword_1001316D8, &qword_1000F2428);
  }

  (*(v4 + 16))(v7, a1, v3);
  v8 = sub_100002A10(&qword_100131548, &qword_1000F21F0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  return sub_1000E9C94();
}

uint64_t LocalSearchRequestManager.deinit()
{
  sub_100009068((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();
  v2 = *(v0 + 72);

  sub_10000D3A8(v0 + 80, &qword_100131600, &qword_1000F2330);
  v3 = *(v0 + 128);

  return v0;
}

uint64_t LocalSearchRequestManager.__deallocating_deinit()
{
  LocalSearchRequestManager.deinit();

  return _swift_deallocClassInstance(v0, 144, 7);
}

uint64_t sub_100051644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = swift_allocObject();

  return sub_1000516D4(a1, a2, a3, a4, a5, v15, a7, a8);
}

uint64_t sub_1000516D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a2;
  v34 = a8;
  v31 = a4;
  v32 = a1;
  v11 = sub_1000EC254();
  v29 = *(v11 - 8);
  v30 = v11;
  v12 = *(v29 + 64);
  __chkstk_darwin(v11);
  v28 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = sub_1000EC244();
  v14 = *(*(v27[0] - 8) + 64);
  __chkstk_darwin(v27[0]);
  v27[1] = v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000EAC94();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_1000E9BE4();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v35 = &_swiftEmptyArrayStorage;
  sub_100051DE4(&qword_10012EC08, 255, &type metadata accessor for PromiseDeduperFlags);
  sub_100002A10(&qword_10012EC10, &unk_1000EEAF0);
  sub_100031CA4(&qword_10012EC18, &qword_10012EC10, &unk_1000EEAF0);
  sub_1000EC3C4();
  v20 = sub_100002A10(&qword_10012EC20, &unk_1000F2430);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(a6 + 72) = sub_1000E9B94();
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000EEAE0;
  v23 = v31;
  v24 = v33;
  v25 = v34;
  *(a6 + 56) = v32;
  *(a6 + 64) = v25;
  *(a6 + 120) = v24;
  *(a6 + 128) = a3;
  sub_100051D3C(v23, a6 + 16);
  if (!a5)
  {
    sub_100051DA0();

    sub_1000EAC64();
    v35 = &_swiftEmptyArrayStorage;
    sub_100051DE4(&qword_1001316F0, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100002A10(&qword_1001316F8, &qword_1000F4BA0);
    sub_100031CA4(&qword_100131700, &qword_1001316F8, &qword_1000F4BA0);
    sub_1000EC3C4();
    (*(v29 + 104))(v28, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
    a5 = sub_1000EC274();
  }

  sub_100009068(v23);
  *(a6 + 136) = a5;
  return a6;
}

uint64_t sub_100051ABC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100051AFC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10005080C(a1);
}

uint64_t sub_100051B1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100051B64(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_100050DE4(a1);
}

uint64_t sub_100051C00(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000512C4(a1);
}

uint64_t sub_100051C1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A10(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100051C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131600, &qword_1000F2330);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051D04()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100051D3C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_100051DA0()
{
  result = qword_1001316E8;
  if (!qword_1001316E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001316E8);
  }

  return result;
}

uint64_t sub_100051DE4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100051E6C()
{

  return swift_getObjectType();
}

uint64_t sub_100051F40@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1000EABC4();
  a1[1] = v3;
  v4 = a1 + *(sub_100002A10(&qword_100131798, &qword_1000F24C0) + 44);
  *v4 = sub_1000EA3D4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = sub_100002A10(&qword_1001317A0, &qword_1000F24C8);
  return sub_100051FB4(v1, &v4[*(v5 + 44)]);
}

uint64_t sub_100051FB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v72 = sub_100002A10(&qword_1001317A8, &qword_1000F24D0);
  v3 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v5 = &v62 - v4;
  v6 = sub_1000EAFC4();
  v67 = *(v6 - 8);
  v68 = v6;
  v7 = *(v67 + 64);
  __chkstk_darwin(v6);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1000EB674();
  v69 = *(v66 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v66);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SmallConditionDescriptionView(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_100002A10(&qword_1001317B0, &qword_1000F24D8);
  v16 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v18 = &v62 - v17;
  v19 = sub_100002A10(&qword_1001317B8, &qword_1000F24E0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v74 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v62 - v23;
  v25 = sub_100002A10(&qword_1001317C0, &qword_1000F24E8);
  v26 = v25 - 8;
  v27 = *(*(v25 - 8) + 64);
  v28 = __chkstk_darwin(v25);
  v73 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v62 - v30;
  *v31 = sub_1000EA534();
  v32 = sub_100002A10(&qword_1001317C8, &qword_1000F24F0);
  sub_1000526B0(a1, &v31[*(v32 + 44)]);
  v33 = sub_1000EA574();
  sub_1000E9F74();
  v34 = &v31[*(v26 + 44)];
  *v34 = v33;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  v39 = sub_1000EB944();
  v41 = v40;

  v42 = HIBYTE(v41) & 0xF;
  if ((v41 & 0x2000000000000000) == 0)
  {
    v42 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v42)
  {
    v43 = sub_1000EBA54();
    (*(*(v43 - 8) + 16))(v15, a1, v43);
    v44 = sub_1000EB944();
    v45 = &v15[*(v12 + 20)];
    *v45 = v44;
    v45[1] = v46;
    sub_10005307C(v15, v5, type metadata accessor for SmallConditionDescriptionView);
    swift_storeEnumTagMultiPayload();
    sub_100052F44();
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView);
    sub_1000EA4A4();
    sub_1000530D4(v15, type metadata accessor for SmallConditionDescriptionView);
  }

  else
  {
    v63 = v18;
    v64 = v5;
    v48 = v69;
    v47 = v70;
    v65 = v24;
    if (sub_1000EBA04())
    {
      v49 = sub_1000EBA54();
      (*(*(v49 - 8) + 16))(v15, a1, v49);
      sub_1000EB934();
      sub_1000EB664();
      (*(v48 + 8))(v11, v66);
      v50 = sub_1000EAF74();
      v52 = v51;
      (*(v67 + 8))(v47, v68);
      v53 = &v15[*(v12 + 20)];
      *v53 = v50;
      v53[1] = v52;
      v54 = v63;
      sub_100052FF8(v15, v63);
      v55 = 0;
    }

    else
    {
      v55 = 1;
      v54 = v63;
    }

    sub_1000028A0(v54, v55, 1, v12);
    sub_1000553B8(v54, v64, &qword_1001317B0, &qword_1000F24D8);
    swift_storeEnumTagMultiPayload();
    sub_100052F44();
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView);
    v24 = v65;
    sub_1000EA4A4();
    sub_100008E48(v54, &qword_1001317B0, &qword_1000F24D8);
  }

  v56 = v73;
  sub_1000553B8(v31, v73, &qword_1001317C0, &qword_1000F24E8);
  v57 = v74;
  sub_1000553B8(v24, v74, &qword_1001317B8, &qword_1000F24E0);
  v58 = v75;
  sub_1000553B8(v56, v75, &qword_1001317C0, &qword_1000F24E8);
  v59 = sub_100002A10(&qword_1001317E0, &qword_1000F24F8);
  sub_1000553B8(v57, v58 + *(v59 + 48), &qword_1001317B8, &qword_1000F24E0);
  v60 = v58 + *(v59 + 64);
  *v60 = 0;
  *(v60 + 8) = 1;
  sub_100008E48(v24, &qword_1001317B8, &qword_1000F24E0);
  sub_100008E48(v31, &qword_1001317C0, &qword_1000F24E8);
  sub_100008E48(v57, &qword_1001317B8, &qword_1000F24E0);
  return sub_100008E48(v56, &qword_1001317C0, &qword_1000F24E8);
}

uint64_t sub_1000526B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SmallLocationView(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  v11 = sub_100002A10(&qword_1001317E8, &qword_1000F2500);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v22 - v16;
  *v17 = sub_1000EA2E4();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = sub_100002A10(&qword_1001317F0, &qword_1000F2508);
  sub_1000528E8(a1, &v17[*(v18 + 44)]);
  v19 = sub_1000EBA54();
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  sub_1000553B8(v17, v15, &qword_1001317E8, &qword_1000F2500);
  sub_10005307C(v10, v8, type metadata accessor for SmallLocationView);
  sub_1000553B8(v15, a2, &qword_1001317E8, &qword_1000F2500);
  v20 = sub_100002A10(&qword_1001317F8, &qword_1000F2510);
  sub_10005307C(v8, a2 + *(v20 + 48), type metadata accessor for SmallLocationView);
  sub_1000530D4(v10, type metadata accessor for SmallLocationView);
  sub_100008E48(v17, &qword_1001317E8, &qword_1000F2500);
  sub_1000530D4(v8, type metadata accessor for SmallLocationView);
  return sub_100008E48(v15, &qword_1001317E8, &qword_1000F2500);
}

uint64_t sub_1000528E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_1000EBC34();
  v62 = *(v3 - 8);
  v63 = v3;
  v4 = *(v62 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v55 - v8;
  v10 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v64 = &v55 - v12;
  v13 = sub_1000EAFC4();
  v57 = *(v13 - 8);
  v58 = v13;
  v14 = *(v57 + 64);
  __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EB674();
  KeyPath = *(v17 - 8);
  v18 = *(KeyPath + 64);
  __chkstk_darwin(v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100002A10(&qword_100131808, &qword_1000F2520);
  v21 = *(*(v59 - 8) + 64);
  v22 = __chkstk_darwin(v59);
  v65 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v26 = (&v55 - v25);
  __chkstk_darwin(v24);
  v61 = &v55 - v27;
  v28 = type metadata accessor for SmallLocationView(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v60 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v55 - v32;
  v34 = sub_1000EBA54();
  (*(*(v34 - 8) + 16))(v33, a1, v34);
  sub_1000EB9C4();
  if (!v35)
  {
    sub_1000EB934();
    sub_1000EB664();
    (*(KeyPath + 8))(v20, v17);
    sub_1000EAF84();
    (*(v57 + 8))(v16, v58);
  }

  v58 = sub_1000EAA24();
  v57 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();
  v36 = sub_1000EBA44();
  v37 = swift_getKeyPath();
  sub_100053BC0(&qword_10012EEB0, &qword_1000EFC90, type metadata accessor for SmallCurrentObservationView, &type metadata accessor for WidgetRenderingMode, v9);
  sub_1000EBC24();
  v38 = sub_1000EBBF4();
  v39 = v63;
  v40 = *(v62 + 8);
  v40(v7, v63);
  v40(v9, v39);
  v41 = v64;
  if (v38)
  {
    sub_1000EA404();
  }

  else
  {
    sub_1000EA3F4();
  }

  v42 = sub_1000EA414();
  sub_1000028A0(v41, 0, 1, v42);
  v43 = swift_getKeyPath();
  v44 = (v26 + *(v59 + 36));
  v45 = sub_100002A10(&qword_100131810, &qword_1000F25B8);
  sub_100055B1C(v41, v44 + *(v45 + 28), &qword_100131800, &qword_1000F2518);
  *v44 = v43;
  v47 = KeyPath;
  v46 = v57;
  *v26 = v58;
  v26[1] = v47;
  v26[2] = v46;
  v26[3] = v37;
  v26[4] = v36;
  v48 = v61;
  sub_100055B1C(v26, v61, &qword_100131808, &qword_1000F2520);
  v49 = v60;
  sub_10005307C(v33, v60, type metadata accessor for SmallLocationView);
  v50 = v65;
  sub_1000553B8(v48, v65, &qword_100131808, &qword_1000F2520);
  v51 = v66;
  sub_10005307C(v49, v66, type metadata accessor for SmallLocationView);
  v52 = sub_100002A10(&qword_100131818, &unk_1000F25C0);
  v53 = v51 + *(v52 + 48);
  *v53 = 0x4010000000000000;
  *(v53 + 8) = 0;
  sub_1000553B8(v50, v51 + *(v52 + 64), &qword_100131808, &qword_1000F2520);
  sub_100008E48(v48, &qword_100131808, &qword_1000F2520);
  sub_1000530D4(v33, type metadata accessor for SmallLocationView);
  sub_100008E48(v50, &qword_100131808, &qword_1000F2520);
  return sub_1000530D4(v49, type metadata accessor for SmallLocationView);
}

unint64_t sub_100052F44()
{
  result = qword_1001317D0;
  if (!qword_1001317D0)
  {
    sub_100002ABC(&qword_1001317B0, &qword_1000F24D8);
    sub_100055198(&qword_1001317D8, type metadata accessor for SmallConditionDescriptionView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001317D0);
  }

  return result;
}

uint64_t sub_100052FF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallConditionDescriptionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005307C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100026C1C(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_1000530D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10005312C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1000EA3D4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_100002A10(&qword_100131950, &qword_1000F2718);
  return sub_10005317C(v1, a1 + *(v3 + 44));
}

uint64_t sub_10005317C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[1] = a2;
  v23[0] = sub_100002A10(&qword_100131958, &qword_1000F2720);
  v3 = *(*(v23[0] - 8) + 64);
  __chkstk_darwin(v23[0]);
  v5 = v23 - v4;
  v6 = sub_100002A10(&qword_100131960, &qword_1000F2728);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = v23 - v8;
  v10 = type metadata accessor for SmallLocationText(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EB994();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB9B4();
  v19 = sub_1000EB984();
  (*(v15 + 8))(v18, v14);
  if (v19)
  {
    *v5 = sub_1000EA2E4();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v20 = sub_100002A10(&qword_100131978, &qword_1000F2730);
    sub_10005359C(a1, v19, &v5[*(v20 + 44)]);
    sub_1000553B8(v5, v9, &qword_100131958, &qword_1000F2720);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100131968, &qword_100131958, &qword_1000F2720);
    sub_100055198(&qword_100131970, type metadata accessor for SmallLocationText);
    sub_1000EA4A4();

    return sub_100008E48(v5, &qword_100131958, &qword_1000F2720);
  }

  else
  {
    v22 = sub_1000EBA54();
    (*(*(v22 - 8) + 16))(v13, a1, v22);
    *&v13[*(v10 + 20)] = swift_getKeyPath();
    sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
    swift_storeEnumTagMultiPayload();
    sub_10005307C(v13, v9, type metadata accessor for SmallLocationText);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100131968, &qword_100131958, &qword_1000F2720);
    sub_100055198(&qword_100131970, type metadata accessor for SmallLocationText);
    sub_1000EA4A4();
    return sub_1000530D4(v13, type metadata accessor for SmallLocationText);
  }
}

uint64_t sub_10005359C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v5 = sub_1000EB994();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100002A10(&qword_100131980, &qword_1000F2738);
  v55 = *(v57 - 8);
  v10 = *(v55 + 64);
  __chkstk_darwin(v57);
  v53 = &v46 - v11;
  v51 = sub_100002A10(&qword_100131988, &qword_1000F2740);
  v12 = *(*(v51 - 8) + 64);
  v13 = __chkstk_darwin(v51);
  v62 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v52 = &v46 - v16;
  __chkstk_darwin(v15);
  v59 = &v46 - v17;
  v18 = type metadata accessor for SmallLocationText(0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v58 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v25 = sub_1000EBA54();
  (*(*(v25 - 8) + 16))(v24, a1, v25);
  *&v24[*(v19 + 28)] = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  v54 = v24;
  swift_storeEnumTagMultiPayload();
  sub_1000EABC4();
  sub_1000E9FC4();
  v50 = v70;
  v49 = v72;
  v48 = v74;
  v47 = v75;
  v78 = 1;
  v77 = v71;
  v76 = v73;
  v26 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();

  v28 = sub_1000EBA44();
  v29 = swift_getKeyPath();
  v56 = a2;
  v65 = a2;
  v66 = KeyPath;
  v67 = v26;
  v68 = v29;
  v69 = v28;
  v64 = a1;
  sub_1000EB9B4();
  LOBYTE(a2) = sub_1000EB974();
  v30 = *(v6 + 8);
  v60 = v6 + 8;
  v61 = v5;
  v30(v9, v5);
  if (a2)
  {
    sub_1000EBA14();
  }

  sub_100002A10(&qword_100131990, &qword_1000F2748);
  sub_1000551E0();
  v31 = v53;
  sub_1000EA874();

  sub_1000EB9B4();
  v32 = v52;
  v33 = &v52[*(v51 + 36)];
  v34 = v33 + *(sub_100002A10(&qword_1001319B0, &qword_1000F2EF0) + 28);
  sub_1000EB964();
  v30(v9, v61);
  *v33 = swift_getKeyPath();
  (*(v55 + 32))(v32, v31, v57);
  v35 = v59;
  sub_100055358(v32, v59);
  v36 = v54;
  v37 = v58;
  sub_10005307C(v54, v58, type metadata accessor for SmallLocationText);
  v38 = v78;
  v39 = v77;
  LOBYTE(v31) = v76;
  v40 = v62;
  sub_1000553B8(v35, v62, &qword_100131988, &qword_1000F2740);
  v41 = v63;
  sub_10005307C(v37, v63, type metadata accessor for SmallLocationText);
  v42 = sub_100002A10(&qword_1001319B8, &unk_1000F27A0);
  v43 = v41 + *(v42 + 48);
  *v43 = 0;
  *(v43 + 8) = v38;
  *(v43 + 16) = v50;
  *(v43 + 24) = v39;
  *(v43 + 32) = v49;
  *(v43 + 40) = v31;
  v44 = v47;
  *(v43 + 48) = v48;
  *(v43 + 56) = v44;
  sub_1000553B8(v40, v41 + *(v42 + 64), &qword_100131988, &qword_1000F2740);
  sub_100008E48(v35, &qword_100131988, &qword_1000F2740);
  sub_1000530D4(v36, type metadata accessor for SmallLocationText);
  sub_100008E48(v40, &qword_100131988, &qword_1000F2740);
  return sub_1000530D4(v37, type metadata accessor for SmallLocationText);
}

uint64_t sub_100053BC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v30 = a5;
  v11 = sub_1000EA2C4();
  v12 = sub_1000090D4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_100040480();
  v17 = sub_100002A10(a1, a2);
  v18 = sub_1000069E4(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v29 - v21);
  v23 = a3(0);
  sub_1000553B8(v5 + *(v23 + 20), v22, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = a4(0);
    sub_100026C1C(v24);
    return (*(v25 + 32))(v30, v22);
  }

  else
  {
    v27 = *v22;
    sub_1000EC1A4();
    v28 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v14 + 8))(v6, v11);
  }
}

double sub_100053DA8@<D0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = sub_1000EA694();
  v37 = *(v1 - 8);
  v38 = v1;
  v2 = *(v37 + 64);
  __chkstk_darwin(v1);
  v36 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E9A84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EBA34();
  v9 = sub_1000E9A44();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  *&v39 = v9;
  *(&v39 + 1) = v11;
  sub_100005898();
  v12 = sub_1000EA814();
  v14 = v13;
  LOBYTE(v8) = v15;
  sub_1000EA9C4();
  v16 = sub_1000EA784();
  v18 = v17;
  v20 = v19;

  sub_1000058EC(v12, v14, v8 & 1);

  sub_1000EB954();
  v21 = sub_1000EA7D4();
  v23 = v22;
  LOBYTE(v11) = v24;

  sub_1000058EC(v16, v18, v20 & 1);

  sub_1000EBA14();
  v25 = sub_1000EA714();
  v27 = v26;
  LOBYTE(v16) = v28;
  v30 = v29;
  sub_1000058EC(v21, v23, v11 & 1);

  sub_1000EB954();
  v31 = v36;
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallLocationText, &type metadata accessor for Font.Context, v36);
  sub_1000EA594();

  (*(v37 + 8))(v31, v38);
  sub_1000EABC4();
  sub_1000E9FC4();
  v32 = v35;
  *v35 = v25;
  v32[1] = v27;
  *(v32 + 16) = v16 & 1;
  v32[3] = v30;
  v33 = v40;
  *(v32 + 2) = v39;
  *(v32 + 3) = v33;
  result = *&v41;
  *(v32 + 4) = v41;
  return result;
}

uint64_t sub_1000540FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SmallConditionDescription(0);
  v5 = v4[6];
  v6 = sub_1000EBA54();
  (*(*(v6 - 8) + 16))(a1 + v5, v2, v6);
  v7 = (v2 + *(type metadata accessor for SmallConditionDescriptionView(0) + 20));
  v9 = *v7;
  v8 = v7[1];
  *a1 = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  *(a1 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  v10 = (a1 + v4[7]);
  *v10 = v9;
  v10[1] = v8;
}

uint64_t sub_10005421C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_1000553B8(v2, &v17 - v11, &qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000EBC34();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100054420@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v2 = sub_1000EBC34();
  v84 = *(v2 - 8);
  v85 = v2;
  v3 = *(v84 + 64);
  v4 = __chkstk_darwin(v2);
  v83 = &v72[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v82 = &v72[-v6];
  v7 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v86 = &v72[-v9];
  v10 = sub_1000EA694();
  v79 = *(v10 - 8);
  v80 = v10;
  v11 = *(v79 + 64);
  __chkstk_darwin(v10);
  v78 = &v72[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_1000EA6A4();
  v13 = *(v77 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v77);
  v16 = &v72[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v81 = sub_100002A10(&qword_100131B00, &qword_1000F2890);
  v17 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v19 = &v72[-v18];
  v20 = type metadata accessor for SmallConditionDescription(0);
  v21 = (v1 + *(v20 + 28));
  v22 = v21[1];
  v89 = *v21;
  v90 = v22;
  sub_100005898();

  v23 = sub_1000EA814();
  v25 = v24;
  v27 = v26;
  sub_1000EA9C4();
  v76 = sub_1000EA784();
  v75 = v28;
  v73 = v29;
  KeyPath = v30;

  sub_1000058EC(v23, v25, v27 & 1);

  v88 = *(v20 + 24);
  sub_1000EB9D4();
  v31 = v77;
  (*(v13 + 104))(v16, enum case for Font.Leading.tight(_:), v77);
  sub_1000EA6D4();

  (*(v13 + 8))(v16, v31);
  LOBYTE(v20) = v73;
  v32 = v76;
  v33 = v75;
  v34 = sub_1000EA7D4();
  v36 = v35;
  LOBYTE(v23) = v37;

  sub_1000058EC(v32, v33, v20 & 1);

  sub_1000EA654();
  v77 = sub_1000EA714();
  v76 = v38;
  v73 = v39;
  v75 = v40;
  sub_1000058EC(v34, v36, v23 & 1);

  KeyPath = swift_getKeyPath();
  sub_1000EBA44();
  v41 = v78;
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallConditionDescription, &type metadata accessor for Font.Context, v78);
  sub_1000EA5A4();
  v43 = v42;

  v44 = v80;
  v45 = *(v79 + 8);
  v45(v41, v80);
  sub_1000EBA44();
  sub_100053BC0(&qword_10012F6E8, &unk_1000F06A0, type metadata accessor for SmallConditionDescription, &type metadata accessor for Font.Context, v41);
  sub_1000EA5A4();
  v47 = v46;

  v45(v41, v44);
  v88 = swift_getKeyPath();
  v48 = v73 & 1;
  v91 = v73 & 1;
  v49 = [objc_opt_self() wu_systemUsesExuberatedLineHeight];
  v50 = swift_getKeyPath();
  LOBYTE(v89) = 0;
  v51 = v82;
  sub_10005421C(v82);
  v52 = v83;
  sub_1000EBC24();
  v53 = sub_1000EBBF4();
  v54 = v85;
  v55 = *(v84 + 8);
  v55(v52, v85);
  v55(v51, v54);
  v56 = v86;
  if (v53)
  {
    sub_1000EA404();
  }

  else
  {
    sub_1000EA3F4();
  }

  if (v49)
  {
    v57 = 2;
  }

  else
  {
    v57 = 3;
  }

  v58 = sub_1000EA414();
  sub_1000028A0(v56, 0, 1, v58);
  v59 = swift_getKeyPath();
  v60 = &v19[*(v81 + 36)];
  v61 = sub_100002A10(&qword_100131810, &qword_1000F25B8);
  sub_100055B1C(v56, v60 + *(v61 + 28), &qword_100131800, &qword_1000F2518);
  *v60 = v59;
  v62 = v76;
  *v19 = v77;
  *(v19 + 1) = v62;
  v19[16] = v48;
  v63 = KeyPath;
  *(v19 + 3) = v75;
  *(v19 + 4) = v63;
  v19[40] = 0;
  *(v19 + 6) = v88;
  *(v19 + 7) = (v43 + -1.0) / v47;
  *(v19 + 8) = v50;
  *(v19 + 9) = v57;
  v19[80] = 0;
  v64 = swift_getKeyPath();
  v65 = sub_100002A10(&qword_100131B08, &qword_1000F2958);
  v66 = v87;
  v67 = (v87 + *(v65 + 36));
  v68 = *(sub_100002A10(&qword_100131B10, &unk_1000F2960) + 28);
  v69 = enum case for ColorSchemeContrast.standard(_:);
  v70 = sub_1000EA3A4();
  (*(*(v70 - 8) + 104))(v67 + v68, v69, v70);
  *v67 = v64;
  return sub_100055B1C(v19, v66, &qword_100131B00, &qword_1000F2890);
}

uint64_t sub_100054BEC(uint64_t a1)
{
  v3 = sub_1000EA3A4();
  v4 = sub_1000090D4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100040480();
  (*(v7 + 16))(v1, a1);
  return sub_1000EA1D4();
}

uint64_t sub_100054C9C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA134();
  *a1 = result;
  return result;
}

uint64_t sub_100054CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000EA134();
  *a1 = result;
  return result;
}

uint64_t sub_100054CF4(uint64_t *a1)
{
  v1 = *a1;

  return sub_1000EA144();
}

uint64_t sub_100054D50(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100131800, &qword_1000F2518);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000553B8(a1, &v6 - v4, &qword_100131800, &qword_1000F2518);
  return sub_1000EA1B4();
}

uint64_t sub_100054E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EBA54();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_100055EEC(a1 + *(a3 + 20));
  }

  return sub_100005B30(a1, a2, v7);
}

uint64_t sub_100054EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100055ED0();
  result = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    sub_100055F10();
    sub_100055F04();

    return sub_1000028A0(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_100054F54()
{
  result = sub_1000EBA54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100054FDC()
{
  v2 = sub_100055ED0();

  return sub_100005B30(v1, v0, v2);
}

uint64_t sub_10005502C()
{
  sub_100055ED0();
  sub_100055F10();
  sub_100055F04();

  return sub_1000028A0(v0, v1, v2, v3);
}

uint64_t sub_100055064()
{
  result = sub_1000EBA54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100055198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000551E0()
{
  result = qword_100131998;
  if (!qword_100131998)
  {
    sub_100002ABC(&qword_100131990, &qword_1000F2748);
    sub_100055298();
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131998);
  }

  return result;
}

unint64_t sub_100055298()
{
  result = qword_1001319A0;
  if (!qword_1001319A0)
  {
    sub_100002ABC(&qword_1001319A8, &unk_1000F2750);
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001319A0);
  }

  return result;
}

uint64_t sub_100055358(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002A10(&qword_100131988, &qword_1000F2740);
  sub_100026C1C(v3);
  v5 = *(v4 + 32);
  v6 = sub_100019AC0();
  v7(v6);
  return a2;
}

uint64_t sub_1000553B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C(v5);
  v7 = *(v6 + 16);
  v8 = sub_100019AC0();
  v9(v8);
  return v4;
}

uint64_t sub_100055414(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1000EBA54();
      v16 = sub_100006A04(v15);
      if (*(v17 + 84) != a2)
      {
        return sub_100055EEC(a1 + a3[7]);
      }

      v9 = v16;
      v14 = a3[6];
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_100055560(uint64_t a1, int a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
  sub_100006A04(v8);
  if (*(v9 + 84) == a3)
  {
    sub_100055F10();
  }

  else
  {
    v10 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    sub_100006A04(v10);
    if (*(v11 + 84) == a3)
    {
      v12 = a4[5];
    }

    else
    {
      v13 = sub_1000EBA54();
      result = sub_100006A04(v13);
      if (*(v15 + 84) != a3)
      {
        *(a1 + a4[7] + 8) = (a2 - 1);
        return result;
      }

      v16 = a4[6];
    }
  }

  sub_100055F04();

  return sub_1000028A0(v17, v18, v19, v20);
}

void sub_10005569C()
{
  sub_100055778(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_100055778(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
    if (v1 <= 0x3F)
    {
      sub_1000EBA54();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100055778(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1000557F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_100055ED0();
  v11 = sub_100006A04(v10);
  if (*(v12 + 84) == v5)
  {
    v13 = v11;
    v14 = v6;
  }

  else
  {
    v13 = sub_100002A10(a4, a5);
    v14 = v6 + *(a3 + 20);
  }

  return sub_100005B30(v14, v5, v13);
}

uint64_t sub_1000558BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v11 = sub_100055ED0();
  sub_100006A04(v11);
  if (*(v12 + 84) == a3)
  {
    sub_100055F10();
  }

  else
  {
    sub_100002A10(a5, a6);
    v13 = v6 + *(a4 + 20);
  }

  sub_100055F04();

  return sub_1000028A0(v14, v15, v16, v17);
}

void sub_10005597C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{
  sub_1000EBA54();
  if (v7 <= 0x3F)
  {
    sub_100055778(319, a4, a5);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_100055B1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100006A38(a1, a2, a3, a4);
  sub_100026C1C(v5);
  v7 = *(v6 + 32);
  v8 = sub_100019AC0();
  v9(v8);
  return v4;
}

unint64_t sub_100055B68()
{
  result = qword_100131B18;
  if (!qword_100131B18)
  {
    sub_100002ABC(&qword_10012EF70, &qword_1000EEE58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B18);
  }

  return result;
}

unint64_t sub_100055BF0()
{
  result = qword_100131B20;
  if (!qword_100131B20)
  {
    sub_100002ABC(&qword_100131B08, &qword_1000F2958);
    sub_100055CA8();
    sub_100006988(&qword_100131B78, &qword_100131B10, &unk_1000F2960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B20);
  }

  return result;
}

unint64_t sub_100055CA8()
{
  result = qword_100131B28;
  if (!qword_100131B28)
  {
    sub_100002ABC(&qword_100131B00, &qword_1000F2890);
    sub_100055D60();
    sub_100006988(&qword_100131B70, &qword_100131810, &qword_1000F25B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B28);
  }

  return result;
}

unint64_t sub_100055D60()
{
  result = qword_100131B30;
  if (!qword_100131B30)
  {
    sub_100002ABC(&qword_100131B38, &qword_1000F2970);
    sub_100055E18();
    sub_100006988(&qword_100131B60, &qword_100131B68, &qword_1000F2998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B30);
  }

  return result;
}

unint64_t sub_100055E18()
{
  result = qword_100131B40;
  if (!qword_100131B40)
  {
    sub_100002ABC(&qword_100131B48, &qword_1000F2978);
    sub_10004E0BC();
    sub_100006988(&qword_100131B50, &qword_100131B58, &qword_1000F2990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131B40);
  }

  return result;
}

uint64_t sub_100055ED0()
{

  return sub_1000EBA54();
}

uint64_t sub_100055EEC@<X0>(uint64_t a1@<X8>)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100055F30(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for CurrentObservationViewModelFactory();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_13:

    return sub_100005B30(v10, a2, v9);
  }

  v11 = sub_1000EB744();
  v12 = sub_100006A04(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[6];
LABEL_12:
    v10 = a1 + v14;
    goto LABEL_13;
  }

  v15 = sub_1000EBB44();
  v16 = sub_100006A04(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[7];
    goto LABEL_12;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v9 = type metadata accessor for EventViewModelFactory();
    v14 = a3[10];
    goto LABEL_12;
  }

  v18 = *(a1 + a3[8] + 24);
  if (v18 >= 0xFFFFFFFF)
  {
    LODWORD(v18) = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100056094(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for CurrentObservationViewModelFactory();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1000EB744();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[6];
    }

    else
    {
      v17 = sub_1000EBB44();
      result = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[7];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(a1 + a4[8] + 24) = (a2 - 1);
          return result;
        }

        v11 = type metadata accessor for EventViewModelFactory();
        v16 = a4[10];
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for AggregateWeatherViewModelFactory()
{
  result = qword_100131BD8;
  if (!qword_100131BD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005622C()
{
  result = type metadata accessor for CurrentObservationViewModelFactory();
  if (v1 <= 0x3F)
  {
    result = sub_1000EB744();
    if (v2 <= 0x3F)
    {
      result = sub_1000EBB44();
      if (v3 <= 0x3F)
      {
        result = sub_100056348(319, &qword_100131BE8);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for EventViewModelFactory();
          if (v5 <= 0x3F)
          {
            result = sub_100056348(319, &unk_100131BF0);
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

uint64_t sub_100056348(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10005639C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  v137 = a1;
  v139 = sub_1000E8524();
  v6 = sub_1000090D4(v139);
  v141 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_10000D45C();
  sub_10000D408();
  v11 = __chkstk_darwin(v10);
  v13 = v121 - v12;
  __chkstk_darwin(v11);
  sub_10000D4D0();
  v143 = v14;
  sub_10004B6F4();
  __chkstk_darwin(v15);
  sub_10000D56C();
  v144 = v16;
  sub_10000921C();
  v128 = sub_1000E89F4();
  v17 = sub_1000090D4(v128);
  v127 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10004B3F0();
  v126 = v21;
  v22 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v24);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v25);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v26);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v27);
  sub_10000D56C();
  v130 = v28;
  sub_10000921C();
  v153 = sub_1000E9A84();
  v29 = sub_1000090D4(v153);
  v151 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_10004B3F0();
  v150 = v33;
  sub_10000921C();
  v123 = sub_1000E8634();
  v34 = sub_1000090D4(v123);
  v122 = v35;
  v37 = *(v36 + 64);
  __chkstk_darwin(v34);
  sub_10004B3F0();
  v147 = v38;
  v39 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  sub_10000D45C();
  v149 = v41;
  sub_10004B6F4();
  __chkstk_darwin(v42);
  sub_10000D56C();
  v140 = v43;
  sub_10000921C();
  v142 = sub_1000EB674();
  v44 = sub_1000090D4(v142);
  v155 = v45;
  v47 = *(v46 + 64);
  __chkstk_darwin(v44);
  sub_10000D45C();
  v146 = v48;
  sub_10004B6F4();
  __chkstk_darwin(v49);
  sub_10000D56C();
  v154 = v50;
  v51 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  v52 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51 - 8);
  sub_10000D45C();
  v145 = v53;
  sub_10004B6F4();
  __chkstk_darwin(v54);
  sub_10000D56C();
  v152 = v55;
  sub_10000921C();
  v56 = sub_1000E8784();
  v57 = sub_1000090D4(v56);
  v59 = v58;
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v57);
  v64 = v121 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __chkstk_darwin(v62);
  v67 = v121 - v66;
  __chkstk_darwin(v65);
  v69 = v121 - v68;
  v138 = a2;
  sub_1000E9A74();
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v70 = sub_1000E9F64();
  v71 = sub_100008CB8(v70, qword_100145C10);
  v72 = *(v59 + 16);
  v148 = v69;
  v72(v67, v69, v56);
  v121[1] = v71;
  v73 = sub_1000E9F44();
  v74 = sub_1000EC1B4();
  v75 = os_log_type_enabled(v73, v74);
  v132 = v13;
  v125 = v56;
  v124 = v59;
  if (v75)
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v121[0] = a4;
    v78 = v77;
    v156 = v77;
    *v76 = 136446210;
    v72(v64, v67, v56);
    v79 = sub_1000EBEF4();
    v81 = v80;
    v82 = sub_1000573F4();
    v83(v82);
    v84 = sub_1000E2E18(v79, v81, &v156);

    *(v76 + 4) = v84;
    _os_log_impl(&_mh_execute_header, v73, v74, "Building aggregate weather data model. - timeZone: %{public}s", v76, 0xCu);
    sub_100009068(v78);
    a4 = v121[0];
  }

  else
  {

    v85 = sub_1000573F4();
    v86(v85);
  }

  v87 = v152;
  v88 = v137;
  sub_1000433B8(v152);
  v89 = v154;
  sub_100091F30(v88, v148, v136, v154);
  v90 = type metadata accessor for AggregateWeatherViewModelFactory();
  v91 = v90[7];
  sub_1000573D4();
  v136 = sub_1000EBB24();
  v92 = v90[6];
  sub_1000573D4();
  v121[0] = sub_1000EB724();
  v93 = v140;
  v94 = v138;
  sub_100056F94(v138, v140);
  v95 = v90[10];
  v96 = sub_1000573D4();
  v98 = sub_1000094A0(v96, v97, 0);
  v99 = sub_10000F10C(v88);
  v101 = v100;
  sub_1000E8624();
  (*(v151 + 16))(v150, v94, v153);
  v102 = v142;
  (*(v155 + 16))(v146, v89, v142);
  sub_1000068F4(v87, v145, &qword_100130EE0, &qword_1000F1690);
  sub_1000068F4(v93, v149, &qword_1001309D8, &qword_1000F10F0);
  v103 = v135;
  sub_1000E8514();
  v104 = v139;
  result = sub_10005740C(v103, 1);
  if (v106)
  {
    __break(1u);
    goto LABEL_14;
  }

  LODWORD(v137) = v101;
  v138 = v99;
  v107 = *(v141 + 32);
  v107(v144, v103, v104);
  sub_1000573E4();
  v108 = v133;
  sub_1000E8514();
  result = sub_10005740C(v108, 1);
  v109 = v134;
  if (v106)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v110 = v98;
  v107(v143, v108, v104);
  sub_1000573E4();
  sub_1000E8514();
  result = sub_10005740C(v109, 1);
  if (v106)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v107(v132, v109, v104);
  sub_1000573E4();
  v111 = v131;
  sub_1000E8514();
  result = sub_10005740C(v111, 1);
  if (v106)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v107(v129, v111, v104);
  v112 = v126;
  sub_1000E89D4();
  v113 = v130;
  sub_1000E89E4();
  (*(v127 + 8))(v112, v128);
  sub_1000028A0(v113, 0, 1, v104);
  v114 = type metadata accessor for AggregateWeatherViewModel(0);
  v115 = v114[14];
  v116 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  sub_1000028A0(a4 + v115, 1, 1, v116);
  (*(v122 + 32))(a4, v147, v123);
  (*(v151 + 32))(a4 + v114[5], v150, v153);
  (*(v155 + 32))(a4 + v114[6], v146, v102);
  *(a4 + v114[7]) = v136;
  *(a4 + v114[8]) = v121[0];
  sub_1000068A4(v145, a4 + v114[9], &qword_100130EE0, &qword_1000F1690);
  sub_1000068A4(v149, a4 + v114[10], &qword_1001309D8, &qword_1000F10F0);
  *(a4 + v114[11]) = v110;
  v117 = a4 + v114[12];
  *v117 = v138;
  *(v117 + 8) = v137;
  sub_1000068A4(v113, a4 + v114[13], &qword_100130EC8, &qword_1000F1670);
  v118 = sub_1000E9F44();
  v119 = sub_1000EC1B4();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v118, v119, "Built aggregate weather data model.", v120, 2u);
  }

  sub_100008E48(v93, &qword_1001309D8, &qword_1000F10F0);
  (*(v155 + 8))(v154, v102);
  sub_100008E48(v152, &qword_100130EE0, &qword_1000F1690);
  return (v121[2])(v148, v125);
}

uint64_t sub_100056F94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a1;
  v40 = a2;
  v2 = sub_1000E8604();
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  __chkstk_darwin(v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EBAC4();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E90D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v33 - v17;
  v19 = sub_100002A10(&qword_10012F110, &qword_1000EEF18);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v33 - v22;
  sub_1000E8CB4();
  if (sub_100005B30(v18, 1, v19) == 1)
  {
    sub_100008E48(v18, &qword_10012F108, &qword_1000EEF10);
LABEL_6:
    v30 = 1;
    v29 = v40;
    goto LABEL_7;
  }

  (*(v20 + 32))(v23, v18, v19);
  (*(v11 + 104))(v14, enum case for PrecipitationRelevancyWindow.default(_:), v10);
  v24 = sub_1000E91C4();
  (*(v11 + 8))(v14, v10);
  if ((v24 & 1) == 0)
  {
    (*(v20 + 8))(v23, v19);
    goto LABEL_6;
  }

  v25 = (v34 + *(type metadata accessor for AggregateWeatherViewModelFactory() + 32));
  v26 = v25[3];
  v34 = v25[4];
  sub_100008DA8(v25, v26);
  v27 = v35;
  v28 = v36;
  (*(v35 + 104))(v9, enum case for NextHourPrecipitationChartPlacement.component(_:), v36);
  sub_1000E85F4();
  v29 = v40;
  sub_1000EBBB4();
  (*(v38 + 8))(v5, v39);
  (*(v27 + 8))(v9, v28);
  (*(v20 + 8))(v23, v19);
  v30 = 0;
LABEL_7:
  v31 = sub_1000EBAF4();
  return sub_1000028A0(v29, v30, 1, v31);
}

uint64_t sub_1000573F4()
{
  result = v1;
  *(v2 - 384) = *(v0 + 8);
  return result;
}

uint64_t sub_10005743C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = type metadata accessor for ForecastEntry(0);
    v8 = a1 + *(a3 + 20);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_1000574F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = type metadata accessor for ForecastEntry(0);
    v10 = a1 + *(a4 + 20);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for MoonContentView()
{
  result = qword_100131C90;
  if (!qword_100131C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100057610@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (&v20 - v13);
  sub_10000EBC4(v2, &v20 - v13, &qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC44();
    sub_1000069E4(v15);
    return (*(v16 + 32))(a1, v14);
  }

  else
  {
    v18 = *v14;
    sub_1000EC1A4();
    v19 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_100057808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v49 = sub_100002A10(&qword_100131CC8, &qword_1000F2A30);
  v3 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v50 = &v45 - v4;
  v59 = sub_100002A10(&qword_100131CD0, &qword_1000F2A38);
  v5 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v53 = &v45 - v6;
  v54 = sub_1000EB074();
  v52 = *(v54 - 8);
  v7 = *(v52 + 64);
  __chkstk_darwin(v54);
  v51 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100002A10(&qword_100131CD8, &qword_1000F2A40);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v55 = &v45 - v10;
  v48 = sub_100002A10(&qword_100131CE0, &qword_1000F2A48);
  v11 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v13 = &v45 - v12;
  v57 = sub_100002A10(&qword_100131CE8, &qword_1000F2A50);
  v14 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v16 = &v45 - v15;
  v17 = sub_1000EB474();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000EB494();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EBC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v46 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v45 - v31;
  v56 = a1;
  sub_100057610(&v45 - v31);
  v47 = v27;
  v33 = v32;
  v34 = v26;
  v35 = (*(v27 + 88))(v33, v26);
  if (v35 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1000EC3E4(64);
    v63._countAndFlagsBits = 0xD000000000000021;
    v63._object = 0x80000001000FB1A0;
    sub_1000EBF44(v63);
    v43 = v46;
    sub_100057610(v46);
    sub_100058194(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v64._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v64);

    (*(v47 + 8))(v43, v34);
    v65._object = 0x80000001000FC6D0;
    v65._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v65);
LABEL_9:
    result = sub_1000EC464();
    __break(1u);
    return result;
  }

  if (v35 == enum case for WidgetFamily.accessoryRectangular(_:))
  {
    v36 = v56 + *(type metadata accessor for MoonContentView() + 20);
    sub_10000D5A4(v20);
    sub_1000EB484();
    (*(v22 + 16))(v13, v25, v21);
    swift_storeEnumTagMultiPayload();
    sub_100058194(&qword_100131D00, &type metadata accessor for MoonRectangularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v16, v55, &qword_100131CE8, &qword_1000F2A50);
    swift_storeEnumTagMultiPayload();
    sub_1000580D8();
    sub_1000581DC();
    sub_1000EA4A4();
    sub_100008E48(v16, &qword_100131CE8, &qword_1000F2A50);
    return (*(v22 + 8))(v25, v21);
  }

  if (v35 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1000EC3E4(65);
    v66._countAndFlagsBits = 0xD000000000000022;
    v66._object = 0x80000001000FB150;
    sub_1000EBF44(v66);
    v44 = v46;
    sub_100057610(v46);
    sub_100058194(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v67._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v67);

    (*(v47 + 8))(v44, v34);
    v68._object = 0x80000001000FC6D0;
    v68._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v68);
    goto LABEL_9;
  }

  v38 = v56 + *(type metadata accessor for MoonContentView() + 20);
  sub_10000D5A4(v20);
  v39 = v51;
  sub_1000EB064();
  v40 = v52;
  v41 = v54;
  (*(v52 + 16))(v50, v39, v54);
  swift_storeEnumTagMultiPayload();
  sub_100058194(&qword_100131CF0, &type metadata accessor for MoonInlineContentView);
  v42 = v53;
  sub_1000EA4A4();
  sub_10000EBC4(v42, v55, &qword_100131CD0, &qword_1000F2A38);
  swift_storeEnumTagMultiPayload();
  sub_1000580D8();
  sub_1000581DC();
  sub_1000EA4A4();
  sub_100008E48(v42, &qword_100131CD0, &qword_1000F2A38);
  return (*(v40 + 8))(v39, v41);
}

unint64_t sub_1000580D8()
{
  result = qword_100131CF8;
  if (!qword_100131CF8)
  {
    sub_100002ABC(&qword_100131CE8, &qword_1000F2A50);
    sub_100058194(&qword_100131D00, &type metadata accessor for MoonRectangularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131CF8);
  }

  return result;
}

uint64_t sub_100058194(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000581DC()
{
  result = qword_100131D08;
  if (!qword_100131D08)
  {
    sub_100002ABC(&qword_100131CD0, &qword_1000F2A38);
    sub_100058194(&qword_100131CF0, &type metadata accessor for MoonInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D08);
  }

  return result;
}

unint64_t sub_10005829C()
{
  result = qword_100131D10;
  if (!qword_100131D10)
  {
    sub_100002ABC(&qword_100131D18, &qword_1000F2A58);
    sub_100058320();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D10);
  }

  return result;
}

unint64_t sub_100058320()
{
  result = qword_100131D20;
  if (!qword_100131D20)
  {
    sub_100002ABC(&qword_100131D28, &unk_1000F2A60);
    sub_1000580D8();
    sub_1000581DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131D20);
  }

  return result;
}

uint64_t sub_1000583C0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000E8634();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1000E8604();
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      v15 = sub_1000E8E84();
      v16 = sub_100006A04(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[7];
      }

      else
      {
        v9 = sub_1000E8F64();
        v14 = a3[8];
      }
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_1000584EC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000E8634();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_1000E8604();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1000E8E84();
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v11 = sub_1000E8F64();
        v16 = a4[8];
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for AirQualityViewModel()
{
  result = qword_100131D88;
  if (!qword_100131D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100058658()
{
  result = sub_1000E8634();
  if (v1 <= 0x3F)
  {
    result = sub_1000E8604();
    if (v2 <= 0x3F)
    {
      result = sub_1000E8E84();
      if (v3 <= 0x3F)
      {
        result = sub_1000E8F64();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_100058714(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C616373 && a2 == 0xE500000000000000;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000014 && 0x80000001000FC6F0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1000EC5D4();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1000588BC(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x7865646E69;
      break;
    case 3:
      result = 0x656C616373;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100058954(uint64_t a1, uint64_t a2)
{
  if ((sub_1000E8614() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AirQualityViewModel();
  v5 = v4[5];
  if ((sub_1000E85A4() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  if ((sub_1000E8E74() & 1) == 0)
  {
    return 0;
  }

  v7 = v4[8];

  return sub_1000E8F54();
}

uint64_t sub_100058A00(void *a1)
{
  v3 = v1;
  v5 = sub_100002A10(&qword_100131DD0, &qword_1000F2B38);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v28[-v11];
  v13 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000593FC();
  sub_1000EC6A4();
  v28[15] = 0;
  sub_1000E8634();
  sub_1000597AC();
  sub_100059450(v14, v15);
  sub_1000597C4();
  if (!v2)
  {
    v16 = type metadata accessor for AirQualityViewModel();
    v17 = v16[5];
    v28[14] = 1;
    sub_1000E8604();
    sub_100059764();
    sub_100059450(v18, v19);
    sub_1000597C4();
    v20 = *(v3 + v16[6]);
    v28[13] = 2;
    sub_1000EC584();
    v21 = v16[7];
    v28[12] = 3;
    sub_1000E8E84();
    sub_100059794();
    sub_100059450(v22, v23);
    sub_1000597C4();
    v24 = v16[8];
    v28[11] = 4;
    sub_1000E8F64();
    sub_10005977C();
    sub_100059450(v25, v26);
    sub_1000597C4();
  }

  return (*(v8 + 8))(v12, v5);
}

uint64_t sub_100058C8C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v66 = sub_1000E8F64();
  v3 = sub_1000090D4(v66);
  v64 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v67 = v8 - v7;
  v75 = sub_1000E8E84();
  v9 = sub_1000090D4(v75);
  v69 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v68 = v14 - v13;
  v73 = sub_1000E8604();
  v15 = sub_1000090D4(v73);
  v70 = v16;
  v18 = *(v17 + 64);
  __chkstk_darwin(v15);
  sub_100006A10();
  v21 = v20 - v19;
  v22 = sub_1000E8634();
  v23 = sub_1000090D4(v22);
  v71 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100006A10();
  v74 = v28 - v27;
  v77 = sub_100002A10(&qword_100131DF0, &qword_1000F2B40);
  v29 = sub_1000090D4(v77);
  v72 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  v34 = &v63 - v33;
  v35 = type metadata accessor for AirQualityViewModel();
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  sub_100006A10();
  v39 = v38 - v37;
  v40 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000593FC();
  v76 = v34;
  v41 = v78;
  sub_1000EC694();
  if (v41)
  {
    return sub_100009068(a1);
  }

  v42 = v21;
  v43 = v73;
  v63 = v35;
  v78 = v39;
  v44 = v75;
  v83 = 0;
  sub_1000597AC();
  sub_100059450(v45, v46);
  v47 = v74;
  sub_1000EC514();
  (*(v71 + 32))(v78, v47, v22);
  v82 = 1;
  sub_100059764();
  sub_100059450(v48, v49);
  v50 = v42;
  v51 = v43;
  sub_1000597F0();
  v52 = v63;
  (*(v70 + 32))(v78 + *(v63 + 20), v50, v51);
  v81 = 2;
  v74 = 0;
  *(v78 + *(v52 + 24)) = sub_1000EC504();
  v80 = 3;
  sub_100059794();
  sub_100059450(v53, v54);
  v55 = v68;
  sub_1000EC514();
  (*(v69 + 32))(v78 + *(v52 + 28), v55, v44);
  v79 = 4;
  sub_10005977C();
  sub_100059450(v56, v57);
  v58 = v66;
  sub_1000597F0();
  v59 = sub_1000597E4();
  v60(v59);
  v61 = v78;
  (*(v64 + 32))(v78 + *(v63 + 32), v67, v58);
  sub_100059498(v61, v65);
  sub_100009068(a1);
  return sub_1000594FC(v61);
}

uint64_t sub_1000592B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100058714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000592E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000588B4();
  *a1 = result;
  return result;
}

uint64_t sub_100059308(uint64_t a1)
{
  v2 = sub_1000593FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100059344(uint64_t a1)
{
  v2 = sub_1000593FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000593FC()
{
  result = qword_100131DD8;
  if (!qword_100131DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131DD8);
  }

  return result;
}

uint64_t sub_100059450(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100059498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AirQualityViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000594FC(uint64_t a1)
{
  v2 = type metadata accessor for AirQualityViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for AirQualityViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x100059624);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_100059660()
{
  result = qword_100131E08;
  if (!qword_100131E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E08);
  }

  return result;
}

unint64_t sub_1000596B8()
{
  result = qword_100131E10;
  if (!qword_100131E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E10);
  }

  return result;
}

unint64_t sub_100059710()
{
  result = qword_100131E18;
  if (!qword_100131E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E18);
  }

  return result;
}

uint64_t sub_1000597C4()
{

  return sub_1000EC594();
}

uint64_t sub_1000597E4()
{
  v2 = *(v0 + 8);
  result = *(v1 - 104);
  v4 = *(v1 - 96);
  return result;
}

uint64_t sub_1000597F0()
{
  v3 = *(v0 - 104);
  v2 = *(v0 - 96);

  return sub_1000EC514();
}

uint64_t sub_100059810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_100131E20, &qword_1000F2CD8);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_100131E28, &qword_1000F2CE0);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_100131E30, &unk_1000F2CE8);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for WindContentView();
  sub_100059E34(&qword_100131E38, type metadata accessor for WindContentView);
  sub_100059E34(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_100059E7C();
  sub_1000EA474();
  sub_1000058EC(v24, v26, a1 & 1);

  (*(v8 + 8))(v12, v5);
  sub_1000EA354();
  v29 = sub_100015CA8();
  v31 = v30;
  LOBYTE(v12) = v32;
  v54 = v5;
  v55 = v28;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v48;
  v34 = v49;
  sub_1000EA444();
  sub_1000058EC(v29, v31, v12 & 1);

  (*(v50 + 8))(v18, v34);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v36 = sub_1000EBC44();
  sub_1000090D4(v36);
  v38 = v37;
  v40 = *(v39 + 72);
  v41 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1000F03E0;
  v43 = v42 + v41;
  v44 = *(v38 + 104);
  v44(v43, enum case for WidgetFamily.accessoryCircular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_100059D38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for WindContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_100059DFC@<X0>(void *a1@<X8>)
{
  result = sub_100059DB4();
  *a1 = 0xD000000000000023;
  a1[1] = v3;
  return result;
}

uint64_t sub_100059E34(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100059E7C()
{
  result = qword_100131E40;
  if (!qword_100131E40)
  {
    sub_100002ABC(&qword_100131E20, &qword_1000F2CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131E40);
  }

  return result;
}

uint64_t sub_100059EE4()
{
  sub_100002ABC(&qword_100131E30, &unk_1000F2CE8);
  sub_100002ABC(&qword_100131E28, &qword_1000F2CE0);
  sub_100002ABC(&qword_100131E20, &qword_1000F2CD8);
  sub_100059E7C();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100059FC0(uint64_t a1, unsigned int *a2)
{
  v53 = a2;
  v57 = a1;
  v2 = sub_1000E8734();
  v3 = sub_1000090D4(v2);
  v54 = v4;
  v55 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v52 = v8 - v7;
  v9 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v51 - v11;
  v58 = sub_1000E8604();
  v13 = sub_1000090D4(v58);
  v51 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v13);
  sub_100006A10();
  v56 = v18 - v17;
  v19 = sub_1000E8784();
  v20 = sub_1000090D4(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  v27 = v26 - v25;
  v28 = sub_100002A10(&qword_100131E48, &qword_1000F2D28);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v51 - v30;
  v32 = sub_1000E8754();
  v33 = sub_1000090D4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_100006A10();
  v40 = v39 - v38;
  sub_1000E83D4();
  if (sub_100005B30(v31, 1, v32) == 1)
  {
    v41 = &qword_100131E48;
    v42 = &qword_1000F2D28;
    v43 = v31;
  }

  else
  {
    (*(v35 + 32))(v40, v31, v32);
    (*(v22 + 16))(v27, v57, v19);
    sub_1000E8724();
    sub_1000E83C4();
    v44 = v58;
    if (sub_100005B30(v12, 1, v58) != 1)
    {
      v46 = v51;
      (*(v51 + 32))(v56, v12, v44);
      v47 = v54;
      v48 = v52;
      v49 = v55;
      (*(v54 + 104))(v52, *v53, v55);
      v45 = sub_1000E8744();
      (*(v47 + 8))(v48, v49);
      (*(v46 + 8))(v56, v44);
      (*(v35 + 8))(v40, v32);
      return v45;
    }

    (*(v35 + 8))(v40, v32);
    v41 = &qword_10012F048;
    v42 = &qword_1000EEF30;
    v43 = v12;
  }

  sub_10000D3A8(v43, v41, v42);
  return 0;
}

uint64_t sub_10005A408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_10005A464(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForecastEntry(0);

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for PrecipitationChartView()
{
  result = qword_100131EA8;
  if (!qword_100131EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005A4FC()
{
  result = type metadata accessor for ForecastEntry(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10005A584@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v50 = sub_1000EA4E4();
  v3 = sub_1000090D4(v50);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_100131F50, &qword_1000F2F28);
  sub_1000069E4(v10);
  v12 = *(v11 + 64);
  sub_100009204();
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = sub_100002A10(&qword_100131F58, &qword_1000F2F30);
  v17 = sub_1000090D4(v16);
  v51 = v18;
  v52 = v17;
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v48 - v22;
  v53 = sub_100002A10(&qword_100131F60, &qword_1000F2F38);
  sub_1000069E4(v53);
  v25 = *(v24 + 64);
  sub_100009204();
  __chkstk_darwin(v26);
  v28 = &v48 - v27;
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v29 = sub_1000E9F64();
  sub_100008CB8(v29, qword_100145C10);
  v30 = sub_1000E9F44();
  v31 = sub_1000EC1B4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Precipitation chart rendering", v32, 2u);
  }

  *v15 = sub_1000EA3D4();
  *(v15 + 1) = 0;
  v15[16] = 0;
  v33 = sub_100002A10(&qword_100131F68, &qword_1000F2F40);
  sub_10005AA14(v2, &v15[*(v33 + 44)]);
  sub_1000EA4C4();
  v49 = v2;
  v34 = sub_100006988(&qword_100131F70, &qword_100131F50, &qword_1000F2F28);
  sub_1000EA914();
  (*(v5 + 8))(v9, v50);
  sub_100008E48(v15, &qword_100131F50, &qword_1000F2F28);
  sub_1000EA354();
  v35 = sub_1000EA7F4();
  v37 = v36;
  v39 = v38;
  v55 = v10;
  v56 = v34;
  swift_getOpaqueTypeConformance2();
  v40 = v52;
  sub_1000EA884();
  sub_1000058EC(v35, v37, v39 & 1);

  (*(v51 + 8))(v23, v40);
  v41 = v49 + *(type metadata accessor for ForecastEntry(0) + 24);
  v42 = *(v41 + 40);
  v55 = *(v41 + 32);
  v56 = v42;
  sub_100005898();

  v43 = sub_1000EA814();
  v45 = v44;
  LOBYTE(v37) = v46;
  sub_1000EA034();
  sub_1000058EC(v43, v45, v37 & 1);

  return sub_100008E48(v28, &qword_100131F60, &qword_1000F2F38);
}

uint64_t sub_10005AA14@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v105 = a1;
  v111 = a2;
  v2 = sub_100002A10(&qword_100131F78, &qword_1000F2F48);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v95 = &v92 - v4;
  v110 = sub_100002A10(&qword_100131F80, &qword_1000F2F50);
  v5 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v96 = &v92 - v6;
  v7 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v99 = &v92 - v9;
  v100 = sub_1000EBAF4();
  v94 = *(v100 - 8);
  v10 = *(v94 + 64);
  v11 = __chkstk_darwin(v100);
  v92 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v92 - v13;
  v14 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v104 = &v92 - v16;
  v97 = type metadata accessor for AggregateWeatherViewModel(0);
  v17 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v98 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002A10(&qword_100131F88, &unk_1000F2F58);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v109 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v92 - v23;
  v103 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  v24 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v112 = &v92 - v25;
  v108 = sub_100002A10(&qword_100131F90, &qword_1000F2F68);
  v107 = *(v108 - 8);
  v26 = *(v107 + 64);
  v27 = __chkstk_darwin(v108);
  v106 = &v92 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v114 = &v92 - v29;
  sub_1000EA354();
  v30 = sub_1000EA7F4();
  v32 = v31;
  v34 = v33;
  v35 = [objc_opt_self() whiteColor];
  v36 = [v35 colorWithAlphaComponent:0.5];

  sub_1000EAA14();
  v37 = sub_1000EA784();
  v39 = v38;
  v41 = v40;

  sub_1000058EC(v30, v32, v34 & 1);

  sub_1000EA6E4();
  v42 = sub_1000EA7D4();
  v44 = v43;
  v46 = v45;

  v47 = v39;
  v48 = v112;
  sub_1000058EC(v37, v47, v41 & 1);

  sub_1000EA664();
  v49 = sub_1000EA714();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_1000058EC(v42, v44, v46 & 1);

  v115 = v49;
  v116 = v51;
  v56 = v53 & 1;
  LOBYTE(v117) = v53 & 1;
  v118 = v55;
  v57 = enum case for DynamicTypeSize.large(_:);
  v58 = sub_1000E9FF4();
  (*(*(v58 - 8) + 104))(v48, v57, v58);
  sub_10005C21C(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize);
  result = sub_1000EBE24();
  if (result)
  {
    sub_100006988(&qword_10012F6C0, &qword_10012F6B0, &unk_1000EFB80);
    v60 = v114;
    sub_1000EA8B4();
    sub_100008E48(v48, &qword_10012F6B0, &unk_1000EFB80);
    sub_1000058EC(v49, v51, v56);

    sub_1000EABC4();
    sub_1000E9FC4();
    v112 = v115;
    v103 = v117;
    v102 = v119;
    v101 = v120;
    v126 = 1;
    v125 = v116;
    v124 = v118;
    v61 = v104;
    sub_10000FB4C(v104);
    v62 = type metadata accessor for WeatherDataViewModel();
    v63 = v60;
    if (sub_100005B30(v61, 1, v62) == 1)
    {
      sub_100008E48(v61, &qword_10012F038, &qword_1000F0F90);
      v64 = 1;
      v65 = v110;
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v65 = v110;
      if (EnumCaseMultiPayload)
      {
        sub_10000DBCC(v61, type metadata accessor for WeatherDataViewModel);
      }

      else
      {
        v67 = v98;
        sub_10001D31C(v61, v98);
        v68 = v99;
        sub_10000EBC4(v67 + *(v97 + 40), v99, &qword_1001309D8, &qword_1000F10F0);
        v69 = v100;
        if (sub_100005B30(v68, 1, v100) != 1)
        {
          v83 = v94;
          v84 = v93;
          (*(v94 + 32))(v93, v68, v69);
          (*(v83 + 16))(v92, v84, v69);
          v121 = 0u;
          v122 = 0u;
          v123 = 0;
          v85 = sub_100002A10(&qword_100131FA0, &qword_1000F2F78);
          sub_1000028A0(v95, 1, 1, v85);
          v86 = v96;
          sub_1000EB894();
          (*(v83 + 8))(v84, v69);
          sub_10000DBCC(v67, type metadata accessor for AggregateWeatherViewModel);
          KeyPath = swift_getKeyPath();
          v88 = (v86 + *(v65 + 36));
          v89 = *(sub_100002A10(&qword_100131FA8, &qword_1000F2FB0) + 28);
          v90 = enum case for ColorScheme.dark(_:);
          v91 = sub_1000E9F84();
          (*(*(v91 - 8) + 104))(v88 + v89, v90, v91);
          *v88 = KeyPath;
          sub_10005C28C(v86, v113);
          v64 = 0;
          goto LABEL_9;
        }

        sub_10000DBCC(v67, type metadata accessor for AggregateWeatherViewModel);
        sub_100008E48(v68, &qword_1001309D8, &qword_1000F10F0);
      }

      v64 = 1;
    }

LABEL_9:
    v70 = v113;
    sub_1000028A0(v113, v64, 1, v65);
    v71 = v107;
    v72 = *(v107 + 16);
    v73 = v106;
    v74 = v108;
    v72(v106, v63, v108);
    v75 = v126;
    v76 = v125;
    LODWORD(v110) = v124;
    v77 = v109;
    sub_10000EBC4(v70, v109, &qword_100131F88, &unk_1000F2F58);
    v78 = v111;
    v72(v111, v73, v74);
    v79 = sub_100002A10(&qword_100131F98, &qword_1000F2F70);
    v80 = &v78[*(v79 + 48)];
    *v80 = 0;
    v80[8] = v75;
    *(v80 + 2) = v112;
    v80[24] = v76;
    *(v80 + 4) = v103;
    v80[40] = v110;
    v81 = v101;
    *(v80 + 6) = v102;
    *(v80 + 7) = v81;
    sub_10000EBC4(v77, &v78[*(v79 + 64)], &qword_100131F88, &unk_1000F2F58);
    sub_100008E48(v70, &qword_100131F88, &unk_1000F2F58);
    v82 = *(v71 + 8);
    v82(v114, v74);
    sub_100008E48(v77, &qword_100131F88, &unk_1000F2F58);
    return (v82)(v73, v74);
  }

  __break(1u);
  return result;
}

uint64_t sub_10005B5B8(uint64_t a1)
{
  v2 = sub_1000E9F84();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000EA114();
}

uint64_t sub_10005B6A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v9 = sub_100002A10(&qword_100131F30, &qword_1000F2EE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = v35 - v11;
  v13 = sub_100002A10(&qword_100131F28, &qword_1000F2EC8);
  v37 = *(v13 - 8);
  v14 = *(v37 + 64);
  __chkstk_darwin(v13);
  v16 = v35 - v15;
  v38 = sub_100002A10(&qword_100131F18, &qword_1000F2EC0);
  v17 = *(*(v38 - 8) + 64);
  v18 = __chkstk_darwin(v38);
  v20 = v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v35 - v22;
  if (a4)
  {
    v35[1] = a5;
    __chkstk_darwin(v21);
    v35[-4] = a1;
    v35[-3] = a2;
    v35[0] = a2;
    sub_100002A10(&qword_100131F38, &qword_1000F2EE8);
    sub_10005C15C();
    sub_1000EAA74();
    sub_1000EA354();
    v34 = 2;
    v33 = 100;
    v24 = sub_1000EA7F4();
    v26 = v25;
    v36 = v9;
    v28 = v27;
    sub_100006988(&qword_100131F20, &qword_100131F28, &qword_1000F2EC8);
    sub_1000EA8C4();
    sub_1000058EC(v24, v26, v28 & 1);

    (*(v37 + 8))(v16, v13);
    v39 = a1;
    v40 = v35[0];
    sub_100005898();
    sub_1000EA064();
    sub_100008E48(v20, &qword_100131F18, &qword_1000F2EC0);
    sub_10000EBC4(v23, v12, &qword_100131F18, &qword_1000F2EC0);
    swift_storeEnumTagMultiPayload();
    sub_10005C064();
    sub_1000EA4A4();
    return sub_100008E48(v23, &qword_100131F18, &qword_1000F2EC0);
  }

  else
  {
    v39 = a1;
    v40 = a2;
    sub_100005898();

    *v12 = sub_1000EA814();
    *(v12 + 1) = v30;
    v12[16] = v31 & 1;
    *(v12 + 3) = v32;
    swift_storeEnumTagMultiPayload();
    sub_10005C064();
    return sub_1000EA4A4();
  }
}

uint64_t sub_10005BB04@<X0>(uint64_t a1@<X8>)
{
  sub_100005898();

  result = sub_1000EA814();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005BB70@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000EAA24();
  v3 = (a1 + *(sub_100002A10(&qword_100131F38, &qword_1000F2EE8) + 36));
  v4 = *(sub_100002A10(&qword_1001319B0, &qword_1000F2EF0) + 28);
  v5 = enum case for Image.Scale.small(_:);
  v6 = sub_1000EAA64();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  *a1 = v2;
  return result;
}

uint64_t sub_10005BC50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_1000EA6A4();
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002A10(&qword_100131EE0, &qword_1000F2E48);
  sub_1000069E4(v16);
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  sub_10005B6A0(a1, a2, a3, a4, &v29 - v20);
  v22 = sub_1000EA9C4();
  KeyPath = swift_getKeyPath();
  v24 = &v21[*(sub_100002A10(&qword_100131EE8, &qword_1000F2E80) + 36)];
  *v24 = KeyPath;
  v24[1] = v22;
  (*(v11 + 104))(v15, enum case for Font.Leading.tight(_:), v8);
  v25 = sub_1000EA6D4();
  (*(v11 + 8))(v15, v8);
  v26 = swift_getKeyPath();
  v27 = &v21[*(v16 + 36)];
  *v27 = v26;
  v27[1] = v25;
  sub_10005BE68();
  sub_1000EA894();
  return sub_100008E48(v21, &qword_100131EE0, &qword_1000F2E48);
}

unint64_t sub_10005BE68()
{
  result = qword_100131EF0;
  if (!qword_100131EF0)
  {
    sub_100002ABC(&qword_100131EE0, &qword_1000F2E48);
    sub_10005BF20();
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EF0);
  }

  return result;
}

unint64_t sub_10005BF20()
{
  result = qword_100131EF8;
  if (!qword_100131EF8)
  {
    sub_100002ABC(&qword_100131EE8, &qword_1000F2E80);
    sub_10005BFD8();
    sub_100006988(&qword_10012FA90, &qword_10012FA98, &unk_1000F2ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131EF8);
  }

  return result;
}

unint64_t sub_10005BFD8()
{
  result = qword_100131F00;
  if (!qword_100131F00)
  {
    sub_100002ABC(&qword_100131F08, &qword_1000F2EB8);
    sub_10005C064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F00);
  }

  return result;
}

unint64_t sub_10005C064()
{
  result = qword_100131F10;
  if (!qword_100131F10)
  {
    sub_100002ABC(&qword_100131F18, &qword_1000F2EC0);
    sub_100006988(&qword_100131F20, &qword_100131F28, &qword_1000F2EC8);
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F10);
  }

  return result;
}

uint64_t sub_10005C14C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  return sub_10005BB04(a1);
}

unint64_t sub_10005C15C()
{
  result = qword_100131F40;
  if (!qword_100131F40)
  {
    sub_100002ABC(&qword_100131F38, &qword_1000F2EE8);
    sub_100006988(&qword_100131F48, &qword_1001319B0, &qword_1000F2EF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131F40);
  }

  return result;
}

uint64_t sub_10005C21C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005C28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100131F80, &qword_1000F2F50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005C300()
{
  result = qword_100131FB0;
  if (!qword_100131FB0)
  {
    sub_100002ABC(&qword_100131FB8, &qword_1000F2FB8);
    sub_10005BE68();
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FB0);
  }

  return result;
}

unint64_t sub_10005C3C0()
{
  result = qword_100131FC0;
  if (!qword_100131FC0)
  {
    sub_100002ABC(&qword_100131F60, &qword_1000F2F38);
    sub_100002ABC(&qword_100131F50, &qword_1000F2F28);
    sub_100006988(&qword_100131F70, &qword_100131F50, &qword_1000F2F28);
    swift_getOpaqueTypeConformance2();
    sub_10005C21C(&qword_10012FBE0, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FC0);
  }

  return result;
}

uint64_t sub_10005C560()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.DataDense(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_10005C67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_100002A10(&qword_100131FC8, &qword_1000F3038);
  v58 = sub_1000090D4(v5);
  v59 = v6;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v62 = sub_100002A10(&qword_100131FD0, &qword_1000F3040);
  sub_1000090D4(v62);
  v64 = v12;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  v17 = &v58 - v16;
  v18 = sub_100002A10(&qword_100131FD8, &qword_1000F3048);
  v65 = sub_1000090D4(v18);
  v66 = v19;
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v60 = &v58 - v23;
  v24 = sub_100002A10(&qword_100131FE0, &qword_1000F3050);
  v67 = sub_1000090D4(v24);
  v68 = v25;
  v27 = *(v26 + 64);
  sub_100009204();
  __chkstk_darwin(v28);
  v63 = &v58 - v29;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v30 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for WeatherIntent();
  v70 = v30;
  v61 = v30;
  type metadata accessor for DataDenseContentView();
  sub_10005D1CC(&qword_100131FE8, type metadata accessor for DataDenseContentView);
  sub_10005D1CC(&qword_10012F6C8, type metadata accessor for WeatherTimelineProvider);

  sub_1000EBCC4();
  sub_1000EA354();
  v31 = sub_100015CA8();
  v33 = v32;
  v35 = v34;
  v36 = sub_10005CE48();
  v37 = v58;
  sub_1000EA474();
  sub_1000058EC(v31, v33, v35 & 1);

  (*(v59 + 8))(v11, v37);
  sub_100002A10(&qword_10012F6D8, &qword_1000F0480);
  v38 = sub_1000EBC44();
  sub_1000090D4(v38);
  v40 = v39;
  v42 = *(v41 + 72);
  v43 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1000EFAD0;
  (*(v40 + 104))(v44 + v43, enum case for WidgetFamily.systemSmall(_:), v38);
  v70 = v37;
  v71 = v36;
  sub_100015C78();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v60;
  v47 = v62;
  sub_1000EA454();

  v48 = v47;
  (*(v64 + 8))(v17, v47);
  sub_1000EA354();
  v49 = sub_100015CA8();
  v51 = v50;
  LOBYTE(v43) = v52;
  v70 = v48;
  v71 = OpaqueTypeConformance2;
  sub_100015C48();
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v63;
  v55 = v65;
  sub_1000EA444();
  sub_1000058EC(v49, v51, v43 & 1);

  (*(v66 + 8))(v46, v55);
  v70 = v55;
  v71 = v53;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v56 = v67;
  sub_1000EA494();

  return (*(v68 + 8))(v54, v56);
}

uint64_t sub_10005CC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for DataDenseContentView();
  sub_1000159C8(a1, a2 + v4[9]);
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[5]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *(a2 + v4[7]) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v4[8]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[6];
  *v6 = KeyPath;
  v6[8] = 0;
  v7 = v4[10];
  v8 = [objc_opt_self() mainScreen];
  [v8 bounds];

  result = sub_100002750();
  *(a2 + v7) = result;
  return result;
}

uint64_t sub_10005CE18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005C560();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_10005CE48()
{
  result = qword_100131FF0;
  if (!qword_100131FF0)
  {
    sub_100002ABC(&qword_100131FC8, &qword_1000F3038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131FF0);
  }

  return result;
}

uint64_t sub_10005CFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  sub_1000090D4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = &v16 - v12;
  (*(v14 + 16))(&v16 - v12, a1);
  return a6(v13);
}

uint64_t sub_10005D068()
{
  sub_1000EA264();
  sub_10005D1CC(&qword_100131FF8, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_1000EA2D4();
  return v1;
}

uint64_t sub_10005D0E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D068();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D114@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D068();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005D1CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005D214()
{
  sub_100002ABC(&qword_100131FE0, &qword_1000F3050);
  sub_100002ABC(&qword_100131FD8, &qword_1000F3048);
  sub_100002ABC(&qword_100131FD0, &qword_1000F3040);
  sub_100002ABC(&qword_100131FC8, &qword_1000F3038);
  sub_10005CE48();
  sub_100015C78();
  sub_100015CC8();
  sub_100015C48();
  sub_100015CC8();
  sub_100015C60();
  sub_100015CC8();
  return sub_100015CC8();
}

uint64_t sub_10005D2E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000010 && 0x80000001000FCAB0 == a2;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x63736544676E6F6CLL && a2 == 0xEF6E6F6974706972;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001000FCAD0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7645657669746361 && a2 == 0xEB00000000746E65;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000011 && 0x80000001000FCAF0 == a2;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x656C6174537369 && a2 == 0xE700000000000000;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001000FCB10 == a2;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 1802398060 && a2 == 0xE400000000000000;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000011 && 0x80000001000FCB30 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1000EC5D4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_10005D5BC(char a1)
{
  result = 0x63736544676E6F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000017;
      break;
    case 3:
      result = 0x7645657669746361;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x656C6174537369;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 1802398060;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_10005D700(uint64_t a1, uint64_t a2)
{
  v6 = sub_1000E8524();
  v7 = sub_1000090D4(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(sub_100002A10(&qword_100130EC8, &qword_1000F1670) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  sub_100060440();
  v16 = sub_100002A10(&qword_100130ED0, &unk_1000F1678);
  sub_1000069E4(v16);
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  sub_100013D48();
  v20 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v20 && (sub_1000EC5D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v21 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v21 && (sub_1000EC5D4() & 1) == 0)
  {
    goto LABEL_29;
  }

  v22 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v22 && (sub_1000EC5D4() & 1) == 0 || !static ActiveEvent.__derived_struct_equals(_:_:)(*(a1 + 48), *(a2 + 48)) || *(a1 + 50) != *(a2 + 50) || *(a1 + 51) != *(a2 + 51) || *(a1 + 52) != *(a2 + 52))
  {
    goto LABEL_29;
  }

  v23 = type metadata accessor for WidgetContext();
  v24 = *(v23 + 44);
  v25 = *(v16 + 48);
  sub_10005FA90(a1 + v24, v2);
  sub_10005FA90(a2 + v24, v2 + v25);
  sub_1000199F0(v2);
  if (v20)
  {
    sub_1000199F0(v2 + v25);
    if (v20)
    {
      sub_100008E48(v2, &qword_100130EC8, &qword_1000F1670);
LABEL_32:
      v33 = *(v23 + 48);
      v34 = *(a1 + v33);
      v35 = *(a1 + v33 + 8);
      v36 = (a2 + v33);
      v37 = *v36;
      v38 = *(v36 + 8);
      v29 = sub_1000EAB74() & (v35 ^ v38 ^ 1);
      return v29 & 1;
    }

    goto LABEL_28;
  }

  sub_10005FA90(v2, v3);
  sub_1000199F0(v2 + v25);
  if (v26)
  {
    v27 = sub_100060428();
    v28(v27, v6);
LABEL_28:
    sub_100008E48(v2, &qword_100130ED0, &unk_1000F1678);
    goto LABEL_29;
  }

  (*(v9 + 32))(v13, v2 + v25, v6);
  sub_10005FD80(&qword_100130EF0);
  v31 = sub_1000EBE24();
  v32 = *(v9 + 8);
  v32(v13, v6);
  v32(v3, v6);
  sub_100008E48(v2, &qword_100130EC8, &qword_1000F1670);
  if (v31)
  {
    goto LABEL_32;
  }

LABEL_29:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_10005DA50(void *a1)
{
  v3 = v1;
  v5 = sub_100002A10(&qword_100132168, &qword_1000F35F8);
  sub_1000090D4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  v9 = a1[3];
  v10 = a1[4];
  sub_10006040C(a1);
  sub_10005FB00();
  sub_100060434();
  sub_1000EC6A4();
  v11 = *v3;
  v12 = v3[1];
  sub_100019A80();
  sub_1000EC564();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    sub_100019A80();
    sub_1000EC564();
    v15 = v3[4];
    v16 = v3[5];
    sub_100019A80();
    sub_1000EC564();
    v26 = *(v3 + 24);
    sub_10005FD2C();
    sub_1000603F0();
    sub_1000EC594();
    v17 = *(v3 + 50);
    sub_1000603F0();
    sub_1000EC574();
    v18 = *(v3 + 51);
    sub_1000603F0();
    sub_1000EC574();
    v19 = *(v3 + 52);
    sub_1000603F0();
    sub_1000EC574();
    v20 = type metadata accessor for WidgetContext();
    v21 = *(v20 + 44);
    sub_1000E8524();
    sub_10005FD80(&qword_100130F88);
    sub_100019A80();
    sub_1000EC554();
    v22 = (v3 + *(v20 + 48));
    v27 = *v22;
    v28 = *(v22 + 8);
    sub_10005FDC4();
    sub_1000603F0();
    sub_1000EC594();
  }

  v23 = sub_100060450();
  return v24(v23);
}

uint64_t sub_10005DCF4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v5 = *(*(sub_100002A10(&qword_100130EC8, &qword_1000F1670) - 8) + 64);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_100013D48();
  v7 = sub_100002A10(&qword_100132148, &qword_1000F35F0);
  sub_1000090D4(v7);
  v9 = *(v8 + 64);
  sub_100009204();
  __chkstk_darwin(v10);
  v30 = type metadata accessor for WidgetContext();
  v11 = sub_1000069E4(v30);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v16 = a1[4];
  v31 = a1;
  sub_100008DA8(a1, v17);
  sub_10005FB00();
  sub_1000EC694();
  if (v2)
  {
    return sub_100009068(v31);
  }

  v18 = v3;
  v19 = v29;
  LOBYTE(v32) = 0;
  sub_100060400();
  *v15 = sub_1000EC4E4();
  *(v15 + 1) = v20;
  sub_1000603C8(1);
  *(v15 + 2) = sub_1000EC4E4();
  *(v15 + 3) = v21;
  sub_1000603C8(2);
  *(v15 + 4) = sub_1000EC4E4();
  *(v15 + 5) = v22;
  v34 = 3;
  sub_10005FB54();
  sub_100060400();
  sub_1000EC514();
  *(v15 + 24) = v32;
  sub_1000603C8(4);
  v15[50] = sub_1000EC4F4() & 1;
  sub_1000603C8(5);
  v15[51] = sub_1000EC4F4() & 1;
  sub_1000603C8(6);
  v15[52] = sub_1000EC4F4() & 1;
  sub_1000E8524();
  LOBYTE(v32) = 7;
  sub_10005FD80(&qword_100131000);
  sub_100060400();
  sub_1000EC4D4();
  sub_10005FBA8(v18, &v15[*(v30 + 44)]);
  v34 = 8;
  sub_10005FC18();
  sub_100060400();
  sub_1000EC514();
  v23 = sub_1000603E0();
  v24(v23);
  v25 = v33;
  v26 = &v15[*(v30 + 48)];
  *v26 = v32;
  v26[8] = v25;
  sub_10005FC6C(v15, v19);
  sub_100009068(v31);
  return sub_10005FCD0(v15);
}

uint64_t sub_10005E18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656964617267 && a2 == 0xE800000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F43776F4C7369 && a2 == 0xED00007473617274)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_10005E25C(char a1)
{
  if (a1)
  {
    return 0x6E6F43776F4C7369;
  }

  else
  {
    return 0x746E656964617267;
  }
}

uint64_t sub_10005E2D8(void *a1)
{
  v4 = sub_100002A10(&qword_100132198, &qword_1000F3608);
  sub_1000090D4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  sub_100013D48();
  v10 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_10005FE18();
  sub_1000EC6A4();
  sub_10005FEC0();
  sub_1000EC594();
  if (!v1)
  {
    sub_1000EC574();
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t sub_10005E444(uint64_t *a1)
{
  v3 = sub_100002A10(&qword_100132180, &qword_1000F3600);
  sub_1000090D4(v3);
  v5 = *(v4 + 64);
  sub_100009204();
  __chkstk_darwin(v6);
  sub_100060440();
  v7 = a1[3];
  v8 = a1[4];
  sub_10006040C(a1);
  sub_10005FE18();
  sub_100060434();
  sub_1000EC694();
  if (!v1)
  {
    sub_10005FE6C();
    sub_1000EC514();
    v7 = v12;
    sub_1000EC4F4();
    v10 = sub_100060428();
    v11(v10, v3);
  }

  sub_100009068(a1);
  return v7;
}

uint64_t sub_10005E5E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005D2E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E60C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10005D5B4();
  *a1 = result;
  return result;
}

uint64_t sub_10005E634(uint64_t a1)
{
  v2 = sub_10005FB00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E670(uint64_t a1)
{
  v2 = sub_10005FB00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E6E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005E18C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005E710(uint64_t a1)
{
  v2 = sub_10005FE18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005E74C(uint64_t a1)
{
  v2 = sub_10005FE18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005E7A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10005E444(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_10005E7D8(void *a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  return sub_10005E2D8(a1);
}

uint64_t Gradient.init(from:)(uint64_t *a1)
{
  v4 = sub_100002A10(&qword_100132000, &qword_1000F3140);
  sub_1000090D4(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_100013D48();
  v8 = a1[3];
  v9 = a1[4];
  sub_10006040C(a1);
  sub_10005E998();
  sub_100060434();
  sub_1000EC694();
  if (!v2)
  {
    sub_100002A10(&qword_100132010, &qword_1000F3148);
    sub_10005EBA0(&qword_100132018, sub_10005E9EC);
    sub_1000EC514();
    v1 = sub_1000EAB94();
    v11 = sub_100060460();
    v12(v11);
  }

  sub_100009068(a1);
  return v1;
}

unint64_t sub_10005E998()
{
  result = qword_100132008;
  if (!qword_100132008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132008);
  }

  return result;
}

unint64_t sub_10005E9EC()
{
  result = qword_100132020;
  if (!qword_100132020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132020);
  }

  return result;
}

uint64_t Gradient.encode(to:)(void *a1)
{
  v2 = sub_100002A10(&qword_100132028, &qword_1000F3150);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100013D48();
  v6 = a1[3];
  v7 = a1[4];
  sub_10006040C(a1);
  sub_10005E998();
  sub_100060434();
  sub_1000EC6A4();
  sub_100002A10(&qword_100132010, &qword_1000F3148);
  sub_10005EBA0(&qword_100132030, sub_10005EC18);
  sub_1000EC594();
  v8 = sub_100060460();
  return v9(v8);
}

uint64_t sub_10005EBA0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_100132010, &qword_1000F3148);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005EC18()
{
  result = qword_100132038;
  if (!qword_100132038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132038);
  }

  return result;
}

BOOL sub_10005EC6C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100125020;
  v6._object = a2;
  v4 = sub_1000EC494(v3, v6);

  return v4 != 0;
}

BOOL sub_10005ECD4@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005EC6C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10005ED08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005ECB4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_10005ED34@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005EC6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005ED60(uint64_t a1)
{
  v2 = sub_10005E998();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005ED9C(uint64_t a1)
{
  v2 = sub_10005E998();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005EDD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Gradient.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

double Gradient.Stop.init(from:)(uint64_t *a1)
{
  v4 = sub_100002A10(&qword_100132040, &qword_1000F3158);
  sub_1000090D4(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_100060440();
  v8 = a1[3];
  v9 = a1[4];
  sub_10006040C(a1);
  sub_10005EFEC();
  sub_100060434();
  sub_1000EC694();
  if (!v1)
  {
    v10 = sub_1000EC4E4();
    sub_10000ED38(v10, v11);
    sub_10005F040();
    sub_1000EC514();
    sub_1000EAB84();
    v2 = v13;
    v14 = sub_100060428();
    v15(v14, v4);
  }

  sub_100009068(a1);
  return v2;
}

unint64_t sub_10005EFEC()
{
  result = qword_100132048;
  if (!qword_100132048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132048);
  }

  return result;
}

unint64_t sub_10005F040()
{
  result = qword_100132050;
  if (!qword_100132050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132050);
  }

  return result;
}

uint64_t Gradient.Stop.encode(to:)(void *a1)
{
  v3 = sub_100002A10(&qword_100132058, &qword_1000F3160);
  sub_1000090D4(v3);
  v5 = *(v4 + 64);
  sub_100009204();
  __chkstk_darwin(v6);
  v7 = a1[3];
  v8 = a1[4];
  sub_10006040C(a1);
  sub_10005EFEC();
  sub_100060434();
  sub_1000EC6A4();
  sub_1000EA984();
  sub_100019A80();
  sub_1000EC564();
  if (v1)
  {
    v9 = sub_100060450();
    v10(v9);
  }

  else
  {

    sub_10005F214();
    sub_1000603F0();
    sub_1000EC594();
    v12 = sub_100060450();
    return v13(v12);
  }
}

unint64_t sub_10005F214()
{
  result = qword_100132060;
  if (!qword_100132060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132060);
  }

  return result;
}

uint64_t sub_10005F268(uint64_t a1, void *a2)
{
  v7._countAndFlagsBits = a1;
  v3._rawValue = &off_100125058;
  v7._object = a2;
  v4 = sub_1000EC494(v3, v7);

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

uint64_t sub_10005F2BC(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 7890280;
  }
}

uint64_t sub_10005F310@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10005F268(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10005F340@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10005F2BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10005F374@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10005F268(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005F39C(uint64_t a1)
{
  v2 = sub_10005EFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005F3D8(uint64_t a1)
{
  v2 = sub_10005EFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10005F414(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = Gradient.Stop.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

uint64_t sub_10005F444(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return Gradient.Stop.encode(to:)(a1);
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10005F510);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10005F54C()
{
  result = qword_100132068;
  if (!qword_100132068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132068);
  }

  return result;
}

unint64_t sub_10005F5A4()
{
  result = qword_100132070;
  if (!qword_100132070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132070);
  }

  return result;
}

unint64_t sub_10005F5FC()
{
  result = qword_100132078;
  if (!qword_100132078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132078);
  }

  return result;
}

unint64_t sub_10005F654()
{
  result = qword_100132080;
  if (!qword_100132080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132080);
  }

  return result;
}

unint64_t sub_10005F6AC()
{
  result = qword_100132088;
  if (!qword_100132088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132088);
  }

  return result;
}

unint64_t sub_10005F704()
{
  result = qword_100132090;
  if (!qword_100132090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132090);
  }

  return result;
}

uint64_t sub_10005F76C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
    v9 = a1 + *(a3 + 44);

    return sub_100005B30(v9, a2, v8);
  }
}

uint64_t sub_10005F814(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
    v8 = v5 + *(a4 + 44);

    return sub_1000028A0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for WidgetContext()
{
  result = qword_1001320F0;
  if (!qword_1001320F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10005F8EC()
{
  sub_10005F994();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005F994()
{
  if (!qword_1001310C8)
  {
    sub_1000E8524();
    v0 = sub_1000EC364();
    if (!v1)
    {
      atomic_store(v0, &qword_1001310C8);
    }
  }
}

uint64_t sub_10005F9EC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10005FA00(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10005FA40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10005FA90(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005FB00()
{
  result = qword_100132150;
  if (!qword_100132150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132150);
  }

  return result;
}

unint64_t sub_10005FB54()
{
  result = qword_100132158;
  if (!qword_100132158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132158);
  }

  return result;
}

uint64_t sub_10005FBA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005FC18()
{
  result = qword_100132160;
  if (!qword_100132160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132160);
  }

  return result;
}

uint64_t sub_10005FC6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005FCD0(uint64_t a1)
{
  v2 = type metadata accessor for WidgetContext();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10005FD2C()
{
  result = qword_100132170;
  if (!qword_100132170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132170);
  }

  return result;
}

uint64_t sub_10005FD80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000E8524();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005FDC4()
{
  result = qword_100132178;
  if (!qword_100132178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132178);
  }

  return result;
}

unint64_t sub_10005FE18()
{
  result = qword_100132188;
  if (!qword_100132188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132188);
  }

  return result;
}

unint64_t sub_10005FE6C()
{
  result = qword_100132190;
  if (!qword_100132190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132190);
  }

  return result;
}

unint64_t sub_10005FEC0()
{
  result = qword_1001321A0;
  if (!qword_1001321A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321A0);
  }

  return result;
}

_BYTE *sub_10005FF1C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10005FFE8);
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

uint64_t getEnumTagSinglePayload for WidgetContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WidgetContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
        JUMPOUT(0x100060174);
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000601B0()
{
  result = qword_1001321A8;
  if (!qword_1001321A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321A8);
  }

  return result;
}

unint64_t sub_100060208()
{
  result = qword_1001321B0;
  if (!qword_1001321B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321B0);
  }

  return result;
}

unint64_t sub_100060260()
{
  result = qword_1001321B8;
  if (!qword_1001321B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321B8);
  }

  return result;
}

unint64_t sub_1000602B8()
{
  result = qword_1001321C0;
  if (!qword_1001321C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321C0);
  }

  return result;
}

unint64_t sub_100060310()
{
  result = qword_1001321C8;
  if (!qword_1001321C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321C8);
  }

  return result;
}

unint64_t sub_100060368()
{
  result = qword_1001321D0;
  if (!qword_1001321D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001321D0);
  }

  return result;
}

uint64_t sub_100060484(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
    v12 = sub_100006A04(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 254)
      {
        v16 = *(a1 + a3[6] + 8);
        if (v16 > 1)
        {
          return (v16 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v17 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a2)
      {
        v9 = v18;
        v14 = a3[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a2)
        {
          v9 = v21;
          v14 = a3[8];
        }

        else
        {
          v9 = type metadata accessor for ForecastEntry(0);
          v14 = a3[9];
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_100060650(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_100002A10(&qword_10012F140, &unk_1000EEF50);
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = sub_100002A10(&qword_100130570, &qword_1000F0D48);
    result = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = result;
      v16 = a4[5];
    }

    else
    {
      if (a3 == 254)
      {
        *(a1 + a4[6] + 8) = -a2;
        return result;
      }

      v17 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v18 = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = v18;
        v16 = a4[7];
      }

      else
      {
        v20 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[8];
        }

        else
        {
          v11 = type metadata accessor for ForecastEntry(0);
          v16 = a4[9];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

uint64_t type metadata accessor for DataDenseContentView()
{
  result = qword_100132230;
  if (!qword_100132230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060854()
{
  sub_1000609B0(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_1000609B0(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory);
    if (v1 <= 0x3F)
    {
      sub_100005F48();
      if (v2 <= 0x3F)
      {
        sub_1000609B0(319, &unk_10012FEC0, &type metadata accessor for Font.Context);
        if (v3 <= 0x3F)
        {
          sub_1000609B0(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
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

void sub_1000609B0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1000E9F94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100060A44()
{
  sub_100006A58();
  v2 = sub_1000405C8();
  v3 = sub_1000090D4(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100040480();
  v8 = sub_1000637E4();
  sub_1000069E4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_100019AE8();
  sub_100025FE0();
  if (sub_1000637FC() == 1)
  {
    v12 = sub_1000EBC44();
    sub_100026C1C(v12);
    v14 = *(v13 + 32);
    v15 = sub_1000637D8();
    v16(v15);
  }

  else
  {
    v17 = *v1;
    sub_1000EC1A4();
    v18 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v5 + 8))(v0, v2);
  }

  sub_100006A20();
}

void sub_100060BDC()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DataDenseContentView() + 20);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA3B4();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_100060D48()
{
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0 + *(type metadata accessor for DataDenseContentView() + 24);
  v10 = *v9;
  if (*(v9 + 8) != 1)
  {

    sub_1000EC1A4();
    v11 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v10, 0);
    (*(v4 + 8))(v8, v1);
    LOBYTE(v10) = v13[15];
  }

  return v10 & 1;
}

void sub_100060E94()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DataDenseContentView() + 28);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EA694();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

void sub_100061000()
{
  sub_100006A58();
  v1 = sub_1000405C8();
  v2 = sub_1000090D4(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100040480();
  v5 = sub_1000637E4();
  sub_1000069E4(v5);
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100019AE8();
  v9 = *(type metadata accessor for DataDenseContentView() + 32);
  sub_1000637B8();
  if (sub_1000637FC() == 1)
  {
    v10 = sub_1000EBC34();
    sub_100026C1C(v10);
    v12 = *(v11 + 32);
    v13 = sub_1000637D8();
  }

  else
  {
    v15 = *v0;
    sub_1000EC1A4();
    v16 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v13 = sub_100040568();
  }

  v14(v13);
  sub_100006A20();
}

uint64_t sub_10006116C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v50 = a1;
  v51 = a2;
  v55 = a4;
  v5 = sub_1000EBA54();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  __chkstk_darwin(v5);
  v52 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EA3B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000EBC44();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ForecastEntry.Model(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v17 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v48 - v19;
  v21 = type metadata accessor for AggregateWeatherViewModel(0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DataDenseContentView();
  v26 = v4 + *(v25 + 36);
  v27 = type metadata accessor for ForecastEntry(0);
  v28 = *(v27 + 28);
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000634D4();
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v20, v29, 1, v30);
  if (sub_100005B30(v20, 1, v30) == 1)
  {
    sub_100008E48(v20, &qword_10012F038, &qword_1000F0F90);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1000634D4();
      sub_100060A44();
      v35 = v48;
      sub_100060BDC();
      v36 = *(v4 + *(v25 + 40));
      v37 = sub_100060D48();
      v38 = type metadata accessor for CurrentObservationViewAttributesFactory();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_10007469C(v14, v35, v36, v37 & 1);
      v41 = v52;
      sub_100073028(v24, v26 + *(v27 + 24), &v24[*(v21 + 20)], v50, v51, *(v26 + *(v27 + 24) + 50), *(v26 + *(v27 + 24) + 51), *(v26 + *(v27 + 24) + 52), v52, 1u, v49 & 1, 1u);
      v43 = v53;
      v42 = v54;
      v44 = v55;
      (*(v53 + 16))(v55, v41, v54);
      v45 = &v24[*(v21 + 48)];
      v56 = *v45;
      v57 = *(v45 + 4);
      v46 = type metadata accessor for DataDenseViewAttributes();
      sub_100076750(v24, 1, v44 + *(v46 + 24));

      (*(v43 + 8))(v41, v42);
      sub_100063528(v24, type metadata accessor for AggregateWeatherViewModel);
      v47 = v44 + *(v46 + 20);
      *v47 = v56;
      *(v47 + 8) = v57;
      v32 = v44;
      v33 = 0;
      v31 = v46;
      return sub_1000028A0(v32, v33, 1, v31);
    }

    sub_100063528(v20, type metadata accessor for WeatherDataViewModel);
  }

  v31 = type metadata accessor for DataDenseViewAttributes();
  v32 = v55;
  v33 = 1;
  return sub_1000028A0(v32, v33, 1, v31);
}

void *sub_100061654@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000EA3B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &__src[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1000EBC44();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &__src[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_100061858(v1);
  sub_100060A44();
  sub_100060BDC();
  v17 = *(v1 + *(type metadata accessor for DataDenseContentView() + 40));
  v18 = sub_100060D48();
  v19 = type metadata accessor for ErrorViewAttributesFactory();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_10007653C(v15, v11, v17, v18 & 1);
  sub_100060E94();
  sub_10007628C(v16, __src);

  (*(v4 + 8))(v7, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_100061858(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for DataDenseContentView() + 36);
  v7 = *(type metadata accessor for ForecastEntry(0) + 28);
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v5;
  }

  sub_100063528(v5, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_100061948@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView() + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100063704(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

void sub_100061A54()
{
  sub_100006A58();
  v1 = v0;
  v38 = v2;
  v39 = sub_1000EA504();
  v3 = sub_1000090D4(v39);
  v37 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_100132280, &qword_1000F3888);
  sub_1000069E4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v13 = (&v32 - v12);
  v35 = sub_100002A10(&qword_100132288, &qword_1000F3890);
  sub_1000090D4(v35);
  v36 = v14;
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v33 = &v32 - v18;
  *v13 = sub_1000EABD4();
  v13[1] = v19;
  v20 = v13 + *(sub_100002A10(&qword_100132290, &qword_1000F3898) + 44);
  sub_100061DFC(v1);
  sub_1000EABA4();
  v42 = v1;
  v41 = v1;
  v21 = sub_100002A10(&qword_100132298, &qword_1000F38A0);
  v22 = sub_100002A10(&qword_1001322A0, &qword_1000F38A8);
  sub_1000404D0();
  v24 = sub_100006988(v23, &qword_100132280, &qword_1000F3888);
  v25 = sub_10006328C();
  v26 = sub_100063344();
  sub_1000EA954();
  sub_100008E48(v13, &qword_100132280, &qword_1000F3888);
  v27 = v34;
  sub_1000EA4F4();
  v40 = v1;
  sub_1000EABC4();
  type metadata accessor for BackgroundView(0);
  v43 = v8;
  v44 = &type metadata for Solarium;
  v45 = v21;
  v46 = v22;
  v47 = v24;
  v48 = &protocol witness table for Solarium;
  v49 = v25;
  v50 = v26;
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_100063788();
  sub_100063740(v28, v29);
  v30 = v35;
  v31 = v33;
  sub_1000EA904();
  (*(v37 + 8))(v27, v39);
  (*(v36 + 8))(v31, v30);
  sub_100006A20();
}

uint64_t sub_100061DFC(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001322C8, &qword_1000F3928);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &__src[-v4];
  v6 = sub_100002A10(&qword_1001322D0, &qword_1000F3930);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &__src[-v8];
  v10 = sub_100002A10(&qword_1001322D8, &qword_1000F3938);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &__src[-v12];
  v14 = type metadata accessor for DataDenseViewAttributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &__src[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1 + *(type metadata accessor for DataDenseContentView() + 36);
  v19 = type metadata accessor for ForecastEntry(0);
  sub_10006116C(*(v18 + *(v19 + 24)), *(v18 + *(v19 + 24) + 8), 1, v13);
  if (sub_100005B30(v13, 1, v14) == 1)
  {
    sub_100008E48(v13, &qword_1001322D8, &qword_1000F3938);
    sub_100061654(__src);
    memcpy(v9, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001322E0, &qword_1001322C8, &qword_1000F3928);
    sub_10006342C();
    return sub_1000EA4A4();
  }

  else
  {
    sub_1000634D4();
    *v5 = sub_1000EA3D4();
    *(v5 + 1) = 0;
    v5[16] = 1;
    v21 = sub_100002A10(&qword_1001322F0, &qword_1000F3940);
    sub_100062170(v17, &v5[*(v21 + 44)]);
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_1001322E0, &qword_1001322C8, &qword_1000F3928);
    sub_10006342C();
    sub_1000EA4A4();
    sub_100008E48(v5, &qword_1001322C8, &qword_1000F3928);
    return sub_100063528(v17, type metadata accessor for DataDenseViewAttributes);
  }
}

uint64_t sub_100062170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a1;
  v57 = a2;
  v3 = type metadata accessor for DataDenseTableView(0);
  v4 = *(v3 - 8);
  v55 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v56 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v54 = &v46 - v8;
  v9 = sub_1000E9A84();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = *(v52 + 64);
  __chkstk_darwin(v9);
  v48 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000EA4E4();
  v47 = *(v50 - 8);
  v12 = *(v47 + 64);
  __chkstk_darwin(v50);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_1001322F8, &qword_1000F3948);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = sub_100002A10(&qword_100132300, &qword_1000F3950);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v51 = sub_100002A10(&qword_100132308, &qword_1000F3958);
  v24 = *(*(v51 - 8) + 64);
  v25 = __chkstk_darwin(v51);
  v27 = &v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v49 = &v46 - v28;
  *v18 = sub_1000EA3C4();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v29 = sub_100002A10(&qword_100132310, &unk_1000F3960);
  sub_1000627AC(a1, &v18[*(v29 + 44)]);
  sub_1000EA4C4();
  v30 = sub_100006988(&qword_100132318, &qword_1001322F8, &qword_1000F3948);
  sub_1000EA914();
  (*(v47 + 8))(v14, v50);
  sub_100008E48(v18, &qword_1001322F8, &qword_1000F3948);
  v58 = v15;
  v59 = v30;
  swift_getOpaqueTypeConformance2();
  sub_1000EA934();
  (*(v20 + 8))(v23, v19);
  sub_100002A10(&qword_100130558, &qword_1000F0D00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1000EFAD0;
  v32 = v48;
  v33 = v46;
  sub_1000EBA34();
  v34 = sub_1000E9A44();
  v36 = v35;
  (*(v52 + 8))(v32, v53);
  *(v31 + 32) = v34;
  *(v31 + 40) = v36;
  sub_100005898();
  v37 = v49;
  sub_1000EA074();

  sub_100008E48(v27, &qword_100132308, &qword_1000F3958);
  v38 = v54;
  sub_100063480();
  v39 = *(type metadata accessor for DataDenseViewAttributes() + 24);
  v40 = v55;
  v41 = *(v55 + 28);
  v42 = sub_1000EB504();
  (*(*(v42 - 8) + 16))(v38 + v41, v33 + v39, v42);
  *(v38 + *(v40 + 32)) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100025FE0();
  v43 = v56;
  sub_100063480();
  sub_100025FE0();
  v44 = *(sub_100002A10(&qword_100132320, &qword_1000F3970) + 48);
  sub_100063480();
  sub_100063528(v38, type metadata accessor for DataDenseTableView);
  sub_100008E48(v37, &qword_100132308, &qword_1000F3958);
  sub_100063528(v43, type metadata accessor for DataDenseTableView);
  return sub_100008E48(v27, &qword_100132308, &qword_1000F3958);
}

uint64_t sub_1000627AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  v50 = sub_1000EB014();
  v40 = *(v50 - 8);
  v3 = v40;
  v4 = *(v40 + 64);
  v5 = __chkstk_darwin(v50);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v51 = &v37 - v7;
  v8 = sub_1000EBA54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000EAF14();
  v43 = *(v13 - 8);
  v14 = v43;
  v15 = *(v43 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v37 - v19;
  v21 = *(v9 + 16);
  v21(v12, a1, v8);
  v42 = v20;
  sub_1000EAF04();
  sub_1000EABC4();
  sub_1000E9FC4();
  v46 = v54;
  v47 = v52;
  v44 = v57;
  v45 = v56;
  v60 = 1;
  v59 = v53;
  v58 = v55;
  v21(v12, a1, v8);
  v22 = v51;
  sub_1000EB004();
  v23 = *(v14 + 16);
  v41 = v18;
  v23(v18, v20, v13);
  LOBYTE(v8) = v60;
  v38 = v59;
  v39 = v58;
  v24 = *(v3 + 16);
  v25 = v48;
  v26 = v22;
  v27 = v50;
  v24(v48, v26, v50);
  v28 = v49;
  v29 = v18;
  v30 = v13;
  v23(v49, v29, v13);
  v31 = sub_100002A10(&qword_100132328, &qword_1000F3978);
  v32 = &v28[*(v31 + 48)];
  *v32 = 0;
  v32[8] = v8;
  *(v32 + 2) = v47;
  v32[24] = v38;
  *(v32 + 4) = v46;
  v32[40] = v39;
  v33 = v44;
  *(v32 + 6) = v45;
  *(v32 + 7) = v33;
  v24(&v28[*(v31 + 64)], v25, v27);
  v34 = *(v40 + 8);
  v34(v51, v27);
  v35 = *(v43 + 8);
  v35(v42, v30);
  v34(v25, v27);
  return (v35)(v41, v30);
}

uint64_t sub_100062BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v30 = a3;
  v4 = sub_100002A10(&qword_1001322C0, &unk_1000F3918);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v28 = sub_100002A10(&qword_1001322A0, &qword_1000F38A8);
  v6 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v27 = &v27 - v7;
  v8 = sub_1000EBC34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = a2;
  if ((sub_100060D48() & 1) == 0)
  {
    goto LABEL_4;
  }

  v17 = v8;
  v18 = v16 + *(type metadata accessor for DataDenseContentView() + 36);
  v19 = *(type metadata accessor for ForecastEntry(0) + 24);
  if (*(v18 + v19 + *(type metadata accessor for WidgetContext() + 48) + 8) != 1)
  {
    goto LABEL_4;
  }

  v20 = v17;
  sub_100061000();
  sub_1000EBC14();
  sub_100063740(&qword_100130698, &type metadata accessor for WidgetRenderingMode);
  v21 = sub_1000EBE24();
  v22 = *(v9 + 8);
  v22(v13, v20);
  v22(v15, v20);
  if ((v21 & 1) == 0)
  {
    sub_1000EA9A4();
    v24 = sub_1000EA9D4();

    v25 = v27;
    sub_100025FE0();
    v26 = v25 + *(v28 + 36);
    *v26 = v24;
    *(v26 + 8) = xmmword_1000F0D30;
    *(v26 + 24) = 0x4000000000000000;
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100132280, &qword_1000F3888);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888);
    sub_1000EA4A4();
    return sub_100008E48(v25, &qword_1001322A0, &qword_1000F38A8);
  }

  else
  {
LABEL_4:
    sub_100025FE0();
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100132280, &qword_1000F3888);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888);
    return sub_1000EA4A4();
  }
}

double sub_100062FC4@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if ((sub_100060D48() & 1) != 0 && (v4 = a1 + *(type metadata accessor for DataDenseContentView() + 36), v5 = *(type metadata accessor for ForecastEntry(0) + 24), *(v4 + v5 + *(type metadata accessor for WidgetContext() + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v6 = sub_1000EA9D4();
  }

  else
  {
    v6 = sub_1000EA9B4();
  }

  sub_100025FE0();
  v7 = a2 + *(sub_100002A10(&qword_1001322A0, &qword_1000F38A8) + 36);
  *v7 = v6;
  result = 5.0;
  *(v7 + 8) = xmmword_1000F0D30;
  *(v7 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_1000630B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = a1 + *(type metadata accessor for DataDenseContentView() + 36);
  v7 = type metadata accessor for ForecastEntry(0);
  v8 = *(v7 + 24);
  v9 = (v6 + v8 + *(type metadata accessor for WidgetContext() + 48));
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = type metadata accessor for BackgroundView(0);
  v13 = v12[5];
  v14 = *(v7 + 28);
  sub_100063480();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000634D4();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(a2 + v13, v15, 1, v16);
  *a2 = v10;
  *(a2 + 8) = v11;
  v17 = v12[6];
  *(a2 + v17) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v18 = a2 + v12[7];
  *v18 = swift_getKeyPath();
  *(v18 + 8) = 0;
}

unint64_t sub_10006328C()
{
  result = qword_1001322B0;
  if (!qword_1001322B0)
  {
    sub_100002ABC(&qword_100132298, &qword_1000F38A0);
    sub_100063344();
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322B0);
  }

  return result;
}

unint64_t sub_100063344()
{
  result = qword_1001322B8;
  if (!qword_1001322B8)
  {
    sub_100002ABC(&qword_1001322A0, &qword_1000F38A8);
    sub_100006988(&qword_1001322A8, &qword_100132280, &qword_1000F3888);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322B8);
  }

  return result;
}

unint64_t sub_10006342C()
{
  result = qword_1001322E8;
  if (!qword_1001322E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001322E8);
  }

  return result;
}

uint64_t sub_100063480()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_100026C1C(v2);
  v4 = *(v3 + 16);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_1000634D4()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_100026C1C(v2);
  v4 = *(v3 + 32);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_100063528(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100063590()
{
  sub_100002ABC(&qword_100132288, &qword_1000F3890);
  type metadata accessor for BackgroundView(255);
  sub_100002ABC(&qword_100132280, &qword_1000F3888);
  sub_100002ABC(&qword_100132298, &qword_1000F38A0);
  sub_100002ABC(&qword_1001322A0, &qword_1000F38A8);
  sub_1000404D0();
  sub_100006988(v0, &qword_100132280, &qword_1000F3888);
  sub_10006328C();
  sub_100063344();
  sub_1000637A0();
  swift_getOpaqueTypeConformance2();
  sub_100063788();
  sub_100063740(v1, v2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100063740(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000637B8()
{

  return sub_100025FE0();
}

uint64_t sub_1000637E4()
{

  return sub_100002A10(v0, v1);
}

uint64_t sub_1000637FC()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_100063828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentObservationViewModelFactory();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_100063884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentObservationViewModelFactory();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for InstantWeatherViewModelFactory()
{
  result = qword_100132388;
  if (!qword_100132388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006391C()
{
  result = type metadata accessor for CurrentObservationViewModelFactory();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100063988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v55 = a3;
  v4 = sub_1000EB674();
  v5 = sub_1000090D4(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  v58 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000E8784();
  v12 = sub_1000090D4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v12);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v49 - v21;
  __chkstk_darwin(v20);
  v24 = &v49 - v23;
  v54 = a2;
  sub_1000E9A74();
  if (qword_10012EB38 != -1)
  {
    swift_once();
  }

  v25 = sub_1000E9F64();
  v26 = sub_100008CB8(v25, qword_100145C10);
  v27 = *(v14 + 16);
  v56 = v24;
  v27(v22, v24, v11);
  v52 = v26;
  v28 = sub_1000E9F44();
  v29 = sub_1000EC1B4();
  v30 = os_log_type_enabled(v28, v29);
  v57 = v14;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v50 = v7;
    v32 = v31;
    v33 = swift_slowAlloc();
    v51 = v4;
    v34 = v33;
    v59 = v33;
    *v32 = 136446210;
    v27(v19, v22, v11);
    v35 = sub_1000EBEF4();
    v37 = v36;
    v38 = *(v14 + 8);
    v38(v22, v11);
    v39 = sub_1000E2E18(v35, v37, &v59);

    *(v32 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Building instant weather data model. - timeZone: %{public}s", v32, 0xCu);
    sub_100009068(v34);
    v4 = v51;

    v7 = v50;
  }

  else
  {

    v38 = *(v14 + 8);
    v38(v22, v11);
  }

  v40 = v58;
  sub_100094574(v58);
  v41 = v55;
  sub_1000E8624();
  v42 = type metadata accessor for InstantWeatherViewModel();
  v43 = *(v42 + 20);
  v44 = sub_1000E9A84();
  (*(*(v44 - 8) + 16))(v41 + v43, v54, v44);
  (*(v7 + 16))(v41 + *(v42 + 24), v40, v4);
  v45 = sub_1000E9F44();
  v46 = sub_1000EC1B4();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&_mh_execute_header, v45, v46, "Built instant weather data model.", v47, 2u);
  }

  (*(v7 + 8))(v40, v4);
  return (v38)(v56, v11);
}

uint64_t sub_100063DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x457972616D697270 && a2 == 0xEC000000746E6576;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEE00746E65764579)
  {

    return 1;
  }

  else
  {
    v7 = sub_1000EC5D4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100063EB0(char a1)
{
  if (a1)
  {
    return 0x7261646E6F636573;
  }

  else
  {
    return 0x457972616D697270;
  }
}

uint64_t sub_100063F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100063DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063F2C(uint64_t a1)
{
  v2 = sub_100064118();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063F68(uint64_t a1)
{
  v2 = sub_100064118();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ActiveEvent.encode(to:)(void *a1, __int16 a2)
{
  v5 = sub_100002A10(&qword_1001323C0, &qword_1000F3B10);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v15[-v11];
  v13 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100064118();
  sub_1000EC6A4();
  v15[15] = a2;
  v15[14] = 0;
  sub_100018F3C();
  sub_10006472C();
  if (!v2)
  {
    v15[13] = HIBYTE(a2);
    v15[12] = 1;
    sub_10006472C();
  }

  return (*(v8 + 8))(v12, v5);
}

unint64_t sub_100064118()
{
  result = qword_1001323C8;
  if (!qword_1001323C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323C8);
  }

  return result;
}

uint64_t ActiveEvent.init(from:)(uint64_t *a1)
{
  v3 = sub_100002A10(&qword_1001323D0, &qword_1000F3B18);
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v15[-v9];
  v11 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100064118();
  sub_1000EC694();
  if (v1)
  {
    return sub_100009068(a1);
  }

  v15[14] = 0;
  sub_10001902C();
  sub_100064708();
  v12 = v15[15];
  v15[12] = 1;
  sub_100064708();
  (*(v6 + 8))(v10, v3);
  v13 = v15[13];
  sub_100009068(a1);
  return v12 | (v13 << 8);
}

uint64_t sub_100064318@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = ActiveEvent.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActiveEvent(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 65286 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65286 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65287;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ActiveEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65286 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65286 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 16) + 1;
    *result = a2 - 250;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000644C4);
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActiveEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000645C8);
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

unint64_t sub_100064604()
{
  result = qword_1001323D8;
  if (!qword_1001323D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323D8);
  }

  return result;
}

unint64_t sub_10006465C()
{
  result = qword_1001323E0;
  if (!qword_1001323E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323E0);
  }

  return result;
}

unint64_t sub_1000646B4()
{
  result = qword_1001323E8;
  if (!qword_1001323E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323E8);
  }

  return result;
}

uint64_t sub_100064708()
{

  return sub_1000EC514();
}

uint64_t sub_10006472C()
{

  return sub_1000EC594();
}

uint64_t sub_10006476C()
{
  result = sub_1000E9A84();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_1000E8604();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

void sub_100064870()
{
  sub_100006A58();
  v1 = v0;
  v37 = v2;
  v4 = v3;
  v40 = v5;
  v41 = v6;
  v8 = v7;
  v9 = sub_1000E8784();
  v10 = sub_1000090D4(v9);
  v38 = v11;
  v39 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v16 = v15 - v14;
  v36 = sub_1000E8604();
  v17 = sub_1000090D4(v36);
  v19 = v18;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v17);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v36 - v25;
  v27 = qword_100132418;
  v28 = sub_1000E90C4();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *&v0[v27] = sub_1000E90B4();
  *&v0[qword_100132428] = 0x40F5180000000000;
  *&v0[qword_100132430] = 0x40AC200000000000;
  v31 = qword_1001323F0;
  v32 = sub_1000E9A84();
  v33 = *(v32 - 8);
  (*(v33 + 16))(&v1[v31], v40, v32);
  *&v1[qword_1001323F8] = v8;
  sub_10006B078(v41, &v1[qword_100132400]);
  sub_10006B078(v4, &v1[qword_100132408]);
  v1[qword_100132410] = v37;

  sub_1000E85B4();
  sub_1000E9A74();
  sub_1000E8534();
  (*(v38 + 8))(v16, v39);
  v34 = v36;
  (*(v19 + 8))(v24, v36);
  (*(v19 + 32))(&v1[qword_100132420], v26, v34);
  v35 = type metadata accessor for WeatherDataOperation(0);
  v42.receiver = v1;
  v42.super_class = v35;
  objc_msgSendSuper2(&v42, "init");

  sub_100009068(v4);
  sub_100009068(v41);
  (*(v33 + 8))(v40, v32);
  sub_100006A20();
}

uint64_t sub_100064B70(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v112 = a1;
  v3 = sub_1000E94B4();
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v11 = v10 - v9;
  v105 = sub_1000E8A84();
  v12 = sub_1000090D4(v105);
  v110 = v13;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_10006BCFC();
  v114 = v16;
  v100 = v17;
  __chkstk_darwin(v18);
  sub_10000D56C();
  v115 = v19;
  v20 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v20);
  v22 = *(v21 + 64);
  sub_100009204();
  __chkstk_darwin(v23);
  v25 = &v89 - v24;
  v103 = sub_1000E9004();
  v26 = sub_1000090D4(v103);
  v109 = v27;
  v29 = *(v28 + 64);
  __chkstk_darwin(v26);
  sub_10006BCFC();
  v107 = v31;
  v108 = v30;
  __chkstk_darwin(v32);
  sub_10000D56C();
  v113 = v33;
  v106 = v2;
  sub_1000E99B4();
  v35 = v34;
  sub_1000E99B4();
  v37 = [objc_allocWithZone(CLLocation) initWithLatitude:v35 longitude:v36];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  v102 = v38;
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v39 = sub_1000E9F64();
  sub_100008CB8(v39, qword_100145C10);
  v40 = v37;
  v41 = sub_1000E9F44();
  v42 = sub_1000EC1B4();
  v104 = v40;

  if (os_log_type_enabled(v41, v42))
  {
    v43 = sub_1000327F4();
    v44 = sub_10006BC88();
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2113;
    v45 = v104;
    *(v43 + 14) = v104;
    *v44 = v45;
    v46 = v45;
    _os_log_impl(&_mh_execute_header, v41, v42, "About to fetch weather data; location=%{private,mask.hash}@", v43, 0x16u);
    sub_100008E48(v44, &qword_1001325D0, &unk_1000F3D80);
    sub_100009194();
    sub_100009194();
  }

  v47 = *(v106 + qword_100132418);
  v48 = v106;
  sub_1000E9A74();
  sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v49, v50, v51, v52);
  v53 = v113;
  sub_1000E9014();
  sub_100008E48(v25, &qword_1001304C8, &qword_1000F3D70);
  v54 = v48;
  v55 = *(v48 + qword_100132400 + 32);
  sub_100008DA8((v48 + qword_100132400), *(v48 + qword_100132400 + 24));
  sub_1000E9804();
  sub_1000E9484();
  (*(v6 + 8))(v11, v3);
  v56 = v115;
  v57 = sub_1000E8A74();
  __chkstk_darwin(v57);
  *(&v89 - 2) = v54;
  sub_100002A10(&qword_1001325C8, &qword_1000F3D78);
  v96 = sub_1000E9CD4();
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = v110;
  v60 = *(v110 + 16);
  v99 = v110 + 16;
  v101 = v60;
  v61 = v105;
  v60(v114, v56, v105);
  v62 = v109;
  v63 = *(v109 + 16);
  v97 = v109 + 16;
  v98 = v63;
  v64 = v103;
  v63(v108, v53, v103);
  v65 = *(v59 + 80);
  v66 = (v65 + 56) & ~v65;
  v67 = *(v62 + 80);
  v68 = v62;
  v95 = v66;
  v90 = (v100 + v67 + v66) & ~v67;
  v100 = v65 | v67;
  v69 = swift_allocObject();
  v71 = v111;
  v70 = v112;
  *(v69 + 2) = v58;
  *(v69 + 3) = v70;
  v72 = v102;
  *(v69 + 4) = v71;
  *(v69 + 5) = v72;
  v73 = v104;
  *(v69 + 6) = v104;
  v74 = *(v59 + 32);
  v92 = v59 + 32;
  v94 = v74;
  v74(&v69[v66], v114, v61);
  v93 = *(v68 + 32);
  v75 = v90;
  v76 = v108;
  v93(&v69[v90], v108, v64);
  v91 = v73;

  v77 = sub_1000E9C44();
  v104 = sub_1000E9C64();

  v78 = swift_allocObject();
  v96 = v78;
  swift_unknownObjectWeakInit();
  v79 = v105;
  v101(v114, v115, v105);
  v80 = v64;
  v98(v76, v113, v64);
  v81 = v75;
  v82 = swift_allocObject();
  v83 = v112;
  *(v82 + 2) = v78;
  *(v82 + 3) = v83;
  v84 = v91;
  *(v82 + 4) = v111;
  *(v82 + 5) = v84;
  *(v82 + 6) = v72;
  sub_10006BBD4();
  v85();
  v93(&v82[v81], v76, v80);
  v86 = v84;

  v87 = sub_1000E9C44();
  sub_1000E9C84();

  (*(v110 + 8))(v115, v79);
  (*(v109 + 8))(v113, v80);
}

uint64_t sub_100065390(uint64_t a1)
{
  v1 = (a1 + qword_100132408);
  v2 = v1[4];
  sub_100008DA8(v1, v1[3]);
  sub_1000E9824();
  v3 = sub_1000E9C54();

  return v3;
}

uint64_t sub_100065410(uint64_t *a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v70 = a8;
  v71 = a6;
  v72 = a7;
  v73 = a5;
  v76 = a3;
  v77 = a4;
  v9 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v67 - v11);
  v13 = sub_1000E9F64();
  v74 = *(v13 - 8);
  v75 = v13;
  v14 = *(v74 + 64);
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v67 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v25 = &v67 - v24;
  v27 = *a1;
  v26 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v69 = Strong;
    if (v26)
    {
      if (v26 != 1)
      {
        v52 = v73;
        swift_beginAccess();
        v53 = *(v52 + 24);
        *(v52 + 16) = v27;
        *(v52 + 24) = v26;

        v54 = v20;
        sub_1000E9F34();
        sub_10006B5A4(v27, v26);
        v55 = v29;
        v56 = sub_1000E9F44();
        v57 = sub_1000EC1B4();
        sub_10006B5B8(v27, v26);

        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v78[0] = swift_slowAlloc();
          *v58 = 141558787;
          *(v58 + 4) = 1752392040;
          v68 = v54;
          *(v58 + 12) = 2081;
          *(v58 + 14) = sub_1000E2E18(v27, v26, v78);
          *(v58 + 22) = 2160;
          *(v58 + 24) = 1752392040;
          *(v58 + 32) = 2081;
          sub_1000E9A84();
          sub_10006B5CC(&qword_1001325E8, &type metadata accessor for Location);
          v59 = sub_1000EC5B4();
          v61 = sub_1000E2E18(v59, v60, v78);

          *(v58 + 34) = v61;
          _os_log_impl(&_mh_execute_header, v56, v57, "resolved countryCode=%{private,mask.hash}s for location=%{private,mask.hash}s", v58, 0x2Au);
          swift_arrayDestroy();

          (*(v74 + 8))(v68, v75);
        }

        else
        {

          (*(v74 + 8))(v54, v75);
        }

        v50 = v76;
        v49 = v77;
        v51 = v70;
        v36 = v71;
        v35 = v72;
        v30 = v73;
        goto LABEL_18;
      }

      v30 = v73;
      swift_beginAccess();
      v31 = *(v30 + 24);
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;

      sub_1000E9F34();
      v32 = sub_1000E9F44();
      v33 = sub_1000EC1B4();
      v34 = os_log_type_enabled(v32, v33);
      v36 = v71;
      v35 = v72;
      if (v34)
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "countryCode = nil", v37, 2u);
      }

      (*(v74 + 8))(v23, v75);
    }

    else
    {
      v30 = v73;
      swift_beginAccess();
      v44 = *(v30 + 24);
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;

      sub_1000E9F34();
      v45 = sub_1000E9F44();
      v46 = sub_1000EC1B4();
      v47 = os_log_type_enabled(v45, v46);
      v36 = v71;
      v35 = v72;
      if (v47)
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "countryCode unresolvable", v48, 2u);
      }

      (*(v74 + 8))(v17, v75);
    }

    v50 = v76;
    v49 = v77;
    v51 = v70;
LABEL_18:
    swift_beginAccess();
    v63 = *(v30 + 16);
    v62 = *(v30 + 24);

    v64 = v49;
    v65 = v69;
    sub_100065E6C(v36, v63, v62, v35, v51, v50, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78[0]);
  }

  sub_1000E9F34();
  v38 = sub_1000E9F44();
  v39 = sub_1000EC1B4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "countryCode unresolvable; object was released", v40, 2u);
  }

  (*(v74 + 8))(v25, v75);
  sub_10006B550();
  v41 = swift_allocError();
  *v42 = 0;
  *v12 = v41;
  swift_storeEnumTagMultiPayload();
  v76(v12);
  return sub_100008E48(v12, &qword_1001325D8, &unk_1000FABC0);
}

uint64_t sub_100065A94(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v48 = a7;
  v49 = a8;
  v46 = a6;
  v47 = a5;
  v50 = a3;
  v44 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v9 = *(*(v44 - 8) + 64);
  __chkstk_darwin(v44);
  v45 = (&v42 - v10);
  v11 = sub_1000E9F64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v42 - v17;
  sub_1000E9F34();
  swift_errorRetain();
  v19 = sub_1000E9F44();
  v20 = sub_1000EC194();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v43 = a4;
    v22 = v21;
    v23 = swift_slowAlloc();
    v42 = v12;
    v24 = v23;
    v54[0] = v23;
    *v22 = 136380675;
    swift_getErrorValue();
    v25 = sub_1000EC614();
    v27 = sub_1000E2E18(v25, v26, v54);

    *(v22 + 4) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "Error resolving the country code, using a nil country code; error=%{private}s", v22, 0xCu);
    sub_100009068(v24);
    v12 = v42;

    a4 = v43;
  }

  v28 = *(v12 + 8);
  v28(v18, v11);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v30 = Strong;
    v31 = v46;
    swift_beginAccess();
    v32 = *(v31 + 16);
    v33 = *(v31 + 24);

    sub_100065E6C(v47, v32, v33, v48, v49, v50, a4, v34, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
  }

  else
  {
    sub_1000E9F34();
    v36 = sub_1000E9F44();
    v37 = sub_1000EC1B4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "cannot fetch weather; object was released", v38, 2u);
    }

    v28(v16, v11);
    sub_10006B550();
    v39 = swift_allocError();
    *v40 = 0;
    v41 = v45;
    *v45 = v39;
    swift_storeEnumTagMultiPayload();
    v50(v41);
    return sub_100008E48(v41, &qword_1001325D8, &unk_1000FABC0);
  }
}

void sub_100065E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v217 = v25;
  v218 = v26;
  v216 = v27;
  v224 = v29;
  v225 = v28;
  v219 = v30;
  v220 = v31;
  v32 = sub_1000E9004();
  v33 = sub_10006BB10(v32, &v228);
  v195 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  v193 = v37;
  v209 = v192 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000921C();
  v38 = sub_1000E89C4();
  v39 = sub_1000090D4(v38);
  v211 = v40;
  v212 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_10004B3F0();
  v210 = v43;
  sub_10000921C();
  v44 = sub_1000E8384();
  v45 = sub_10006BB10(v44, &v227);
  v194 = v46;
  v48 = *(v47 + 64);
  __chkstk_darwin(v45);
  sub_10004B3F0();
  v208 = v49;
  sub_10000921C();
  v50 = sub_1000E8604();
  v51 = sub_10006BB10(v50, &a18);
  v205 = v52;
  v54 = *(v53 + 64);
  __chkstk_darwin(v51);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v55);
  sub_10000D56C();
  sub_10000D4C4(v56);
  v57 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  sub_10006BB10(v57, &v223);
  v192[10] = v58;
  v60 = *(v59 + 64);
  sub_100009204();
  __chkstk_darwin(v61);
  sub_10000D58C();
  sub_10000D4C4(v62);
  v63 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  sub_10006BB10(v63, &v220);
  v192[7] = v64;
  v66 = *(v65 + 64);
  sub_100009204();
  __chkstk_darwin(v67);
  sub_10000D58C();
  sub_10000D4C4(v68);
  v69 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  sub_10006BB10(v69, &v217);
  v192[4] = v70;
  v72 = *(v71 + 64);
  sub_100009204();
  __chkstk_darwin(v73);
  sub_10000D58C();
  sub_10000D4C4(v74);
  v75 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  sub_10006BB10(v75, &a17);
  v204 = v76;
  v78 = *(v77 + 64);
  sub_100009204();
  __chkstk_darwin(v79);
  sub_10000D58C();
  v215 = v80;
  v81 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  sub_10006BB10(v81, &a14);
  v202 = v82;
  v84 = *(v83 + 64);
  sub_100009204();
  __chkstk_darwin(v85);
  sub_10000D58C();
  v214 = v86;
  v87 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  sub_10006BB10(v87, &v214);
  v192[0] = v88;
  v90 = *(v89 + 64);
  sub_100009204();
  __chkstk_darwin(v91);
  sub_10000D58C();
  sub_10000D4C4(v92);
  v93 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  sub_10006BB10(v93, &a11);
  v200 = v94;
  v96 = *(v95 + 64);
  sub_100009204();
  __chkstk_darwin(v97);
  sub_10000D58C();
  v213 = v98;
  v99 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  sub_100009210(v99);
  v101 = *(v100 + 64);
  sub_100009204();
  __chkstk_darwin(v102);
  sub_10000D58C();
  v223 = v103;
  sub_10000921C();
  v104 = sub_1000E94B4();
  v105 = sub_1000090D4(v104);
  v221 = v106;
  v222 = v105;
  v108 = *(v107 + 64);
  __chkstk_darwin(v105);
  sub_100006A10();
  v111 = v110 - v109;
  v112 = sub_1000E8A14();
  v113 = sub_1000069E4(v112);
  v115 = *(v114 + 64);
  __chkstk_darwin(v113);
  sub_100006A10();
  v116 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  sub_100009210(v116);
  v118 = *(v117 + 64);
  sub_100009204();
  __chkstk_darwin(v119);
  sub_10006BC48();
  v120 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  sub_100009210(v120);
  v122 = *(v121 + 64);
  sub_100009204();
  __chkstk_darwin(v123);
  v124 = sub_1000E8A64();
  v125 = sub_1000090D4(v124);
  v226 = v126;
  v227 = v125;
  v128 = *(v127 + 64);
  __chkstk_darwin(v125);
  sub_10000D4C4(v192 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v129);
  v131 = v192 - v130;

  sub_1000E9A74();
  sub_1000E8784();
  sub_10000D554();
  sub_1000028A0(v132, v133, v134, v135);
  v136 = sub_1000E8A84();
  sub_1000069E4(v136);
  (*(v137 + 16))(v21, v224, v136);
  sub_10000D554();
  sub_1000028A0(v138, v139, v140, v136);
  v228 = &_swiftEmptyArrayStorage;
  sub_10006BB5C();
  sub_10006B5CC(v141, v142);
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  v143 = *&v24[qword_100132400 + 32];
  sub_100008DA8(&v24[qword_100132400], *&v24[qword_100132400 + 24]);
  v144 = v131;
  v145 = v24;
  sub_1000E9804();
  sub_1000E9454();
  (*(v221 + 8))(v111, v222);
  v146 = sub_1000E8A44();
  sub_1000028A0(v223, 1, 1, v146);
  sub_1000E8A54();
  switch(v24[qword_100132410])
  {
    case 1:
    case 2:
    case 4:
      goto LABEL_7;
    case 3:
      v183 = *&v24[qword_1001323F8];
      v184 = v213;
      sub_1000E8FE4();
      v185 = v214;
      sub_1000E8FC4();
      v186 = v215;
      sub_1000E8FA4();
      v187 = swift_allocObject();
      v188 = v217;
      v187[2] = v145;
      v187[3] = v188;
      v187[4] = v218;
      sub_1000E88D4();
      v189 = v145;

      sub_100002A10(&qword_100132670, &unk_1000F54E0);
      sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      sub_1000E8B84();

      sub_10006BB44(&a15);
      v190(v186, v206);
      sub_10006BB44(&a13);
      v191(v185, v203);
      sub_10006BB44(&a10);
      v166 = v184;
      goto LABEL_5;
    case 5:
      v224 = *&v24[qword_1001323F8];
      sub_1000E8FE4();
      sub_1000E8FF4();
      sub_1000E8FC4();
      sub_1000E8FA4();
      v168 = v192[3];
      sub_1000E8F94();
      sub_10006BC7C(&v218);
      sub_1000E8FD4();
      v169 = v192[9];
      sub_1000E8FB4();
      v170 = swift_allocObject();
      v171 = v217;
      v170[2] = v24;
      v170[3] = v171;
      v225 = v144;
      v170[4] = v218;
      sub_1000E88D4();
      v172 = v24;

      sub_100002A10(&qword_10012F108, &qword_1000EEF10);
      sub_100002A10(&qword_100132670, &unk_1000F54E0);
      sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
      sub_100002A10(&qword_10012F260, &unk_1000EF030);
      sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
      sub_100002A10(&qword_100132678, &qword_1000F54F0);
      v144 = v225;
      v173 = v213;
      v174 = v214;
      v175 = v199;
      v176 = v215;
      sub_1000E8B94();

      sub_10006BB44(&v222);
      v177(v169, v192[11]);
      sub_10006BB44(&v219);
      v178(v21, v192[8]);
      sub_10006BB44(&v216);
      v179(v168, v192[5]);
      sub_10006BB44(&a15);
      v180(v176, v206);
      sub_10006BB44(&a13);
      v181(v174, v203);
      sub_10006BB44(&v212);
      v182(v175, v192[2]);
      sub_10006BB44(&a10);
      v166 = v173;
LABEL_5:
      v167 = &a11;
      goto LABEL_6;
    default:
      v147 = v201;
      sub_1000E85B4();
      sub_10006BBD4();
      (*(v148 + 16))(v192[1], v147, v207);
      sub_1000E8374();
      v224 = *&v24[qword_1001323F8];
      *v210 = 10;
      (*(v211 + 104))();
      sub_10006BC7C(&v226);
      v150 = v197;
      (*(v149 + 16))(v209, v216, v197);
      v151 = v226;
      (*(v226 + 16))(v198, v131, v227);
      v152 = (*(v21 + 80) + 48) & ~*(v21 + 80);
      v153 = *(v151 + 80);
      v225 = v131;
      v154 = (v193 + v153 + v152) & ~v153;
      v155 = swift_allocObject();
      v156 = v217;
      v157 = v218;
      *(v155 + 2) = v145;
      *(v155 + 3) = v156;
      v158 = v219;
      *(v155 + 4) = v157;
      *(v155 + 5) = v158;
      (*(v21 + 32))(&v155[v152], v209, v150);
      v159 = &v155[v154];
      v144 = v225;
      (*(v151 + 32))(v159, v198, v227);
      v160 = v145;

      v161 = v158;
      v162 = v208;
      v163 = v210;
      sub_1000E8B74();

      (*(v211 + 8))(v163, v212);
      sub_10006BB44(&v225);
      v164(v162, v196);
      sub_10006BB44(&a16);
      v166 = v201;
      v167 = &a18;
LABEL_6:
      v165(v166, *(v167 - 32));
LABEL_7:
      (*(v226 + 8))(v144, v227);
      sub_100006A20();
      return;
  }
}

uint64_t sub_100066D48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v64 = a3;
  v65 = a4;
  v62 = a2;
  v63 = a1;
  v66 = sub_100002A10(&qword_1001325D8, &unk_1000FABC0);
  v4 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v67 = (&v52 - v5);
  v58 = type metadata accessor for WeatherDataOperationResult(0);
  v6 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v61 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000E8CD4();
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100132680, &qword_1000F3E10);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v52 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v52 - v21;
  __chkstk_darwin(v20);
  v24 = &v52 - v23;
  v25 = sub_100002A10(&qword_100132688, &qword_1000F3E18);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v52 - v27;
  sub_1000068F4(v63, &v52 - v27, &qword_100132688, &qword_1000F3E18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100008E48(v28, &qword_100132688, &qword_1000F3E18);
    sub_10006B550();
    v29 = swift_allocError();
    *v30 = 0;
    v31 = v67;
    *v67 = v29;
    swift_storeEnumTagMultiPayload();
    v64(v31);
    v32 = &qword_1001325D8;
    v33 = &unk_1000FABC0;
    v34 = v31;
  }

  else
  {
    sub_1000068A4(v28, v24, &qword_100132680, &qword_1000F3E10);
    v57 = v24;
    sub_1000068F4(v24, v22, &qword_100132680, &qword_1000F3E10);
    v63 = *(v12 + 48);
    v56 = *(v12 + 64);
    sub_1000068F4(v24, v19, &qword_100132680, &qword_1000F3E10);
    v35 = *(v12 + 48);
    v54 = *(v12 + 64);
    sub_1000068F4(v24, v16, &qword_100132680, &qword_1000F3E10);
    v36 = *(v12 + 48);
    v37 = &v16[*(v12 + 64)];
    v55 = v11;
    sub_1000E8C44();
    v38 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    v53 = *(*(v38 - 8) + 8);
    v53(&v16[v36], v38);
    v39 = sub_1000E88D4();
    v40 = *(*(v39 - 8) + 8);
    v40(v16, v39);
    v41 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    v42 = *(*(v41 - 8) + 8);
    v42(&v19[v54], v41);
    v40(v19, v39);
    v42(&v22[v56], v41);
    v53(&v22[v63], v38);
    v44 = v59;
    v43 = v60;
    v45 = v61;
    v46 = v55;
    (*(v59 + 16))(v61, v55, v60);
    type metadata accessor for WeatherDataOperationResult.Data(0);
    swift_storeEnumTagMultiPayload();
    v47 = qword_1001323F0;
    v48 = *(v58 + 20);
    v49 = sub_1000E9A84();
    (*(*(v49 - 8) + 16))(v45 + v48, v62 + v47, v49);
    v50 = v67;
    sub_10006B8A8(v45, v67);
    swift_storeEnumTagMultiPayload();
    v64(v50);
    sub_100008E48(v50, &qword_1001325D8, &unk_1000FABC0);
    sub_10006B90C(v45);
    (*(v44 + 8))(v46, v43);
    v34 = v57;
    v32 = &qword_100132680;
    v33 = &qword_1000F3E10;
  }

  return sub_100008E48(v34, v32, v33);
}