void sub_100031120()
{
  sub_1000326B8();
  if (v3)
  {
    sub_1000324A8();
    if (v5 != v6)
    {
      sub_100032694();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_100002A10(&qword_100130550, &qword_1000F0CF8);
    v9 = sub_100032758();
    j__malloc_size(v9);
    sub_1000327B4();
    *(v9 + 2) = v7;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = &_swiftEmptyArrayStorage;
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[32 * v7] <= v11)
    {
      memmove(v11, v12, 32 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v11, v12, 32 * v7);
  }
}

void sub_100031208()
{
  sub_1000326B8();
  if (v5)
  {
    sub_1000324A8();
    if (v7 != v8)
    {
      sub_100032694();
      if (v7)
      {
        __break(1u);
        return;
      }

      sub_100032498();
    }
  }

  else
  {
    v6 = v4;
  }

  sub_100032510(v6);
  if (v3)
  {
    sub_100002A10(v9, v10);
    v11 = sub_100032758();
    j__malloc_size(v11);
    sub_10003253C();
    v11[2] = v2;
    v11[3] = v12;
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  if (v1)
  {
    if (v11 != v0 || &v0[2 * v2 + 4] <= v11 + 4)
    {
      v14 = sub_10003277C();
      memmove(v14, v15, v16);
    }

    v0[2] = 0;
  }

  else
  {
    sub_100002A10(&qword_100130470, &qword_1000F0BF8);
    sub_10003277C();
    swift_arrayInitWithCopy();
  }
}

void sub_1000312F4()
{
  sub_1000325A0();
  if (v3)
  {
    sub_100032564();
    if (v5 != v6)
    {
      sub_1000327C8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1000315C4(*(v0 + 16), v4, &qword_1001304D8, &qword_1000FABD0, type metadata accessor for ForecastEntry);
  v7 = sub_100032724();
  v8 = type metadata accessor for ForecastEntry(v7);
  sub_100006A04(v8);
  v10 = *(v9 + 80);
  sub_10003279C();
  if (v1)
  {
    sub_100032678(type metadata accessor for ForecastEntry, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_1000313D4()
{
  sub_1000325A0();
  if (v2)
  {
    sub_100032564();
    if (v3 != v4)
    {
      sub_1000327C8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  v5 = *(v0 + 16);
  sub_100032654();
  sub_1000315C4(v5, v6, v7, v8, v9);
  sub_100032724();
  v10 = sub_1000EB214();
  sub_100006A04(v10);
  v12 = *(v11 + 80);
  sub_10003279C();
  if (v1)
  {
    sub_100032678(&type metadata accessor for DailyForecastViewModel, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

void sub_1000314A4()
{
  sub_1000325A0();
  if (v2)
  {
    sub_100032564();
    if (v3 != v4)
    {
      sub_1000327C8();
      if (v3)
      {
        __break(1u);
        return;
      }

      sub_100032520();
    }
  }

  v5 = *(v0 + 16);
  sub_10003263C();
  sub_1000315C4(v5, v6, v7, v8, v9);
  sub_100032724();
  v10 = sub_1000EB814();
  sub_100006A04(v10);
  v12 = *(v11 + 80);
  sub_10003279C();
  if (v1)
  {
    sub_100032678(&type metadata accessor for HourlyForecastBannerViewModel, v13);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_1000324C4();
  }
}

char *sub_1000315C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100002A10(a3, a4);
  v8 = sub_100032724();
  v9 = a5(v8);
  sub_100032590(v9);
  v11 = *(v10 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  result = j__malloc_size(v14);
  if (v11)
  {
    if (&result[-v13] != 0x8000000000000000 || v11 != -1)
    {
      v14[2] = a1;
      v14[3] = 2 * (&result[-v13] / v11);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000316E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100031734()
{
  result = qword_100130498;
  if (!qword_100130498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130498);
  }

  return result;
}

void sub_1000317D0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), sub_1000326A0(v8), a1 + *(v9 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100032788();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    sub_100032788();

    swift_arrayInitWithTakeBackToFront();
  }
}

id sub_100031894(id result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1000318C4()
{
  sub_1000309CC(*(v0 + 16), *(v0 + 24), *(v0 + 25));

  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_10003193C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  sub_100032770();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_100031988()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  sub_1000DBA40();
}

uint64_t sub_100031998()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  sub_100032770();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_1000319DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  swift_task_alloc();
  sub_1000325BC();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_100032444;
  sub_100032550();

  return sub_100027868(v9, v10, v11, v12, v5, v6);
}

uint64_t sub_100031A94()
{
  sub_100032604();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_1000325BC();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_1000325E4(v4);

  return v7(v6);
}

uint64_t sub_100031B2C()
{
  sub_100032604();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_task_alloc();
  sub_1000325BC();
  *(v1 + 16) = v4;
  *v4 = v5;
  v6 = sub_1000325E4(v4);

  return v7(v6);
}

uint64_t sub_100031BC4()
{
  sub_100032530();
  sub_1000325B0();
  v2 = *(v1 + 16);
  v3 = *v0;
  sub_10003246C();
  *v4 = v3;

  sub_1000324E4();

  return v5();
}

uint64_t sub_100031CA4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100031CF8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

id sub_100031D38(unint64_t a1, uint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  sub_100030A1C(a1, (a2 & 0xC000000000000001) == 0, a2);
  if (v4)
  {
    return sub_1000EC3F4();
  }

  else
  {
    return *(a2 + 8 * a1 + 32);
  }
}

void *sub_100031D9C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return 0;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100031DF4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1000EBE84();

  return v4;
}

uint64_t sub_100031E54()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = sub_1000326EC();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_100031EB8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_10002DA38();
}

uint64_t sub_100031EE4()
{
  sub_1000327A8();
  v3 = sub_1000E9A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  sub_10003261C(*(v6 + 64));
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_100032444;
  sub_100032550();

  return sub_10002C364(v8, v9, v10, v11, v12, v1, v2);
}

uint64_t sub_100031FF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A10(a3, a4);
  sub_1000326A0(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_100032054(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A10(a2, a3);
  sub_1000326A0(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1000320B8(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100032124()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = sub_1000326EC();

  return _swift_deallocObject(v3, v4, v5);
}

void sub_10003215C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_10002DA38();
}

uint64_t sub_100032184()
{
  v1 = sub_1000E9A84();
  sub_1000090D4(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, v1);
  v9 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v4 | 7);
}

uint64_t sub_10003225C()
{
  sub_1000327A8();
  v3 = sub_1000E9A84();
  sub_100032590(v3);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  sub_10003261C(*(v6 + 64));
  v7 = swift_task_alloc();
  *(v0 + 16) = v7;
  *v7 = v0;
  v7[1] = sub_100031BC4;
  sub_100032550();

  return sub_10002D47C(v8, v9, v10, v11, v12, v1, v2);
}

id sub_100032368@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  result = sub_100031D38(*a1, *a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1000323C4(uint64_t a1)
{
  v2 = sub_1000E9704();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003244C()
{

  return swift_once();
}

void sub_10003247C(float a1)
{
  *v1 = a1;
  *(v1 + 4) = 1752392040;
  *(v1 + 12) = 2081;
}

uint64_t sub_1000324C4()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_1000324E4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_100032510(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

BOOL sub_1000325C8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000325E4(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

void sub_10003261C(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = (v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
}

void sub_100032678(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  sub_1000317D0(v2 + a2, v4, v3 + a2, a1);
}

uint64_t sub_1000326FC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_10003270C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_10003273C()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[5];
}

uint64_t sub_100032758()
{

  return swift_allocObject();
}

void sub_1000327D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t sub_1000327F4()
{

  return swift_slowAlloc();
}

uint64_t sub_10003280C@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v93 = type metadata accessor for InstantWeatherViewModel();
  v2 = sub_1000069E4(v93);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  v94 = v6 - v5;
  v7 = sub_1000EB834();
  v8 = sub_1000090D4(v7);
  v101 = v9;
  v102 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100006A10();
  v100 = v13 - v12;
  v14 = sub_1000E8C34();
  v15 = sub_1000090D4(v14);
  v98 = v16;
  v99 = v15;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v15);
  v21 = v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v95 = v92 - v22;
  v23 = sub_1000EAFC4();
  v24 = sub_1000090D4(v23);
  v96 = v25;
  v97 = v24;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v30 = v29 - v28;
  v31 = type metadata accessor for AggregateWeatherViewModel(0);
  v32 = sub_1000069E4(v31);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  sub_100006A10();
  v37 = v36 - v35;
  v38 = type metadata accessor for WeatherDataViewModel();
  v39 = sub_1000069E4(v38);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v46 = v92 - v45;
  v47 = type metadata accessor for ForecastEntry.Model(0);
  v48 = sub_1000069E4(v47);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_100006A10();
  v53 = (v52 - v51);
  v54 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v54 + 28), v53, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v74 = v103;
    if (*v53)
    {
      v75 = 1;
    }

    else
    {
      v75 = 2;
    }

    v76 = v102;
    return sub_1000028A0(v74, v75, 2, v76);
  }

  sub_100032F34(v53, v46, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v46, v44, type metadata accessor for WeatherDataViewModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v77 = v21;
    sub_100032F34(v44, v37, type metadata accessor for AggregateWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v78 = sub_1000E9F64();
    sub_100008CB8(v78, qword_100145C10);
    v79 = sub_1000E9F44();
    v80 = sub_1000EC1B4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Making Location complication view model entry from aggregate weather", v81, 2u);
    }

    v82 = v37 + *(v31 + 24);
    sub_1000EB664();
    v64 = v95;
    sub_1000EAF64();
    v83 = sub_1000EAF84();
    v93 = v84;
    v94 = v83;
    v85 = v37 + *(v31 + 20);
    sub_1000E9A44();
    v86 = v98;
    v87 = v77;
    v88 = v99;
    (*(v98 + 16))(v87, v64, v99);
    v89 = v100;
    sub_1000EB824();
    (*(v86 + 8))(v64, v88);
    (*(v96 + 8))(v30, v97);
    sub_100032F94(v37, type metadata accessor for AggregateWeatherViewModel);
    sub_100032FEC();
    v71 = sub_100033014();
    v73 = v89;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100032F34(v44, v94, type metadata accessor for InstantWeatherViewModel);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v56 = v21;
    v57 = sub_1000E9F64();
    sub_100008CB8(v57, qword_100145C10);
    v58 = sub_1000E9F44();
    v59 = sub_1000EC1B4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Making Location complication view model entry from interpolated instant weather", v60, 2u);
    }

    v61 = v93;
    v62 = v94;
    v63 = v94 + *(v93 + 24);
    sub_1000EB664();
    v64 = v95;
    sub_1000EAF64();
    v65 = sub_1000EAF84();
    v92[1] = v66;
    v92[2] = v65;
    v67 = v62 + *(v61 + 20);
    sub_1000E9A44();
    v69 = v98;
    v68 = v99;
    (*(v98 + 16))(v56, v64, v99);
    v70 = v100;
    sub_1000EB824();
    (*(v69 + 8))(v64, v68);
    (*(v96 + 8))(v30, v97);
    sub_100032F94(v62, type metadata accessor for InstantWeatherViewModel);
    sub_100032FEC();
    v71 = sub_100033014();
    v73 = v70;
LABEL_18:
    v90 = v102;
    v72(v71, v73, v102);
    v74 = v64;
    v75 = 0;
    v76 = v90;
    return sub_1000028A0(v74, v75, 2, v76);
  }

  sub_100032F94(v46, type metadata accessor for WeatherDataViewModel);
  sub_1000028A0(v103, 1, 2, v102);
  return sub_100032F94(v44, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_100032F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1000069E4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_100032F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100032FEC()
{

  return sub_100032F94(v0, type metadata accessor for WeatherDataViewModel);
}

uint64_t sub_10003303C(uint64_t a1, uint64_t a2, int *a3)
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
      v15 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
      v16 = sub_100006A04(v15);
      if (*(v17 + 84) == a2)
      {
        v9 = v16;
        v14 = a3[7];
      }

      else
      {
        v18 = sub_100002A10(&qword_10012ED98, &unk_1000F2440);
        v19 = sub_100006A04(v18);
        if (*(v20 + 84) == a2)
        {
          v9 = v19;
          v14 = a3[8];
        }

        else
        {
          v21 = type metadata accessor for ForecastEntry(0);
          v22 = sub_100006A04(v21);
          if (*(v23 + 84) != a2)
          {
            return sub_100019B04(*(a1 + a3[10]));
          }

          v9 = v22;
          v14 = a3[9];
        }
      }
    }

    v10 = a1 + v14;
  }

  return sub_100005B30(v10, a2, v9);
}

uint64_t sub_100033220(uint64_t a1, uint64_t a2, int a3, int *a4)
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
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
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
          v23 = type metadata accessor for ForecastEntry(0);
          result = sub_100006A04(v23);
          if (*(v25 + 84) != a3)
          {
            *(a1 + a4[10]) = (a2 - 1);
            return result;
          }

          v11 = result;
          v16 = a4[9];
        }
      }
    }

    v12 = a1 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

void sub_100033418()
{
  sub_10003FF34(319, &qword_10012F1B0, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_10003FF34(319, &qword_1001305E0, &type metadata accessor for ContentSizeCategory, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100005F48();
      if (v2 <= 0x3F)
      {
        sub_10003FF34(319, &unk_10012FEC0, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_10003FF34(319, &qword_10012EE28, &type metadata accessor for WidgetRenderingMode, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ForecastEntry(319);
            if (v5 <= 0x3F)
            {
              sub_1000335DC();
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

void sub_1000335DC()
{
  if (!qword_1001305E8)
  {
    sub_100002ABC(&unk_10012EE48, qword_1000EED10);
    v0 = sub_1000EAAC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1001305E8);
    }
  }
}

uint64_t sub_10003365C@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000404E8(a1, a2);
  v5 = sub_100002A10(&qword_100130AB8, &qword_1000F12F0);
  v6 = sub_1000404AC(v5);
  sub_10003E6F8(v6, v2 + v7, v8);
  v10 = v3[2];
  v9 = v3[3];
  sub_100040498(v2 + v4[16]);
  sub_1000405A4(v11, v4[20]);
  sub_100040578();
  sub_100040498(v12);
  sub_1000405A4(v13, v4[28]);
  v15 = v3[6];
  v14 = v3[7];
  sub_100040498(v2 + v4[32]);
  return sub_1000405A4(v16, v4[36]);
}

uint64_t sub_1000336E8@<X0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  sub_1000404E8(a1, a2);
  v5 = sub_100002A10(&qword_100130AB0, &qword_1000F12E8);
  v6 = sub_1000404AC(v5);
  sub_10003E6F8(v6, v2 + v7, v8);
  v10 = *(v3 + 16);
  v9 = *(v3 + 24);
  sub_100040498(v2 + v4[16]);
  sub_1000405A4(v11, v4[20]);
  sub_100040578();
  sub_100040498(v12);
  return sub_1000405A4(v13, v4[28]);
}

uint64_t sub_10003375C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = sub_1000EB694();
  (*(*(v5 - 8) + 16))(a2, v4, v5);
  v6 = sub_100002A10(&qword_100130988, &qword_1000F1078);
  v7 = a2 + v6[12];
  v9 = a1[1];
  v8 = a1[2];
  v10 = *v9;
  LOBYTE(v9) = *(v9 + 8);
  *v7 = v10;
  *(v7 + 8) = v9;
  sub_100019210(v8, a2 + v6[16], &qword_100130978, &qword_1000F1068);
  sub_100019210(a1[3], a2 + v6[20], &qword_100130938, &qword_1000F1030);
  v11 = a2 + v6[24];
  v12 = a1[4];
  v13 = a1[5];
  v14 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *v11 = v14;
  *(v11 + 8) = v12;
  v15 = v6[28];
  v16 = sub_1000EAEF4();
  (*(*(v16 - 8) + 16))(a2 + v15, v13, v16);
  v17 = a2 + v6[32];
  v19 = a1[6];
  v18 = a1[7];
  v20 = *v19;
  LOBYTE(v19) = *(v19 + 8);
  *v17 = v20;
  *(v17 + 8) = v19;
  sub_100019210(v18, a2 + v6[36], &qword_100130938, &qword_1000F1030);
  v21 = a2 + v6[40];
  v23 = a1[8];
  v22 = a1[9];
  v24 = *v23;
  LOBYTE(v23) = *(v23 + 8);
  *v21 = v24;
  *(v21 + 8) = v23;
  return sub_100019210(v22, a2 + v6[44], &qword_100130968, &qword_1000F1058);
}

uint64_t sub_100033914@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E6F8(*a1, a2, type metadata accessor for PrecipitationChartView);
  v4 = sub_100002A10(&qword_100130940, &qword_1000F1038);
  v5 = (a2 + v4[12]);
  v6 = a1[1];
  v7 = a1[2];
  v8 = v6[3];
  v9 = *v6;
  v10 = v6[1];
  v5[2] = v6[2];
  v5[3] = v8;
  *v5 = v9;
  v5[1] = v10;
  v11 = a2 + v4[16];
  v12 = *v7;
  v13 = *(v7 + 8);
  v14 = *(v7 + 16);
  LOBYTE(v7) = *(v7 + 24);
  *v11 = v12;
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  *(v11 + 24) = v7;
  v15 = (a2 + v4[20]);
  v17 = a1[3];
  v16 = a1[4];
  v18 = v17[3];
  v20 = *v17;
  v19 = v17[1];
  v15[2] = v17[2];
  v15[3] = v18;
  *v15 = v20;
  v15[1] = v19;
  sub_100019210(v16, a2 + v4[24], &qword_100130938, &qword_1000F1030);
  v21 = (a2 + v4[28]);
  v22 = a1[5];
  v23 = a1[6];
  v24 = v22[3];
  v25 = *v22;
  v26 = v22[1];
  v21[2] = v22[2];
  v21[3] = v24;
  *v21 = v25;
  v21[1] = v26;
  v27 = v4[32];
  v28 = sub_1000EAEF4();
  (*(*(v28 - 8) + 16))(a2 + v27, v23, v28);
}

uint64_t sub_100033A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10003E6F8(*a1, a2, type metadata accessor for WeekdayColumn);
  v4 = sub_100002A10(&qword_100130AE0, &qword_1000F1300);
  sub_100019210(a1[1], a2 + v4[12], &qword_100130AE8, &qword_1000F1308);
  sub_100019210(a1[2], a2 + v4[16], &qword_100130AF0, &qword_1000F1310);
  sub_100019210(a1[3], a2 + v4[20], &qword_100130AF8, &qword_1000F1318);
  v5 = sub_100040578();
  v7 = v6[3];
  v8 = *v6;
  v9 = v6[1];
  v10[2] = v6[2];
  v10[3] = v7;
  *v10 = v8;
  v10[1] = v9;
  return sub_100019210(v5, a2 + v4[28], &qword_100130B00, &unk_1000F1320);
}

void sub_100033B60()
{
  sub_100006A58();
  v2 = sub_1000405C8();
  v3 = sub_1000090D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100040480();
  v6 = sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  sub_1000069E4(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v10 = sub_100040508();
  sub_100040548(*(v10 + 20));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EA3B4();
    sub_1000069E4(v11);
    (*(v12 + 32))(v0, v1);
  }

  else
  {
    v13 = *v1;
    sub_1000EC1A4();
    v14 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v15 = sub_100040568();
    v16(v15);
  }

  sub_100006A20();
}

uint64_t sub_100033CDC()
{
  v1 = sub_1000EA2C4();
  v2 = sub_1000090D4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0 + *(type metadata accessor for WidgetContentView(0) + 24);
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

void sub_100033E28()
{
  sub_100006A58();
  v2 = sub_1000405C8();
  v3 = sub_1000090D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100040480();
  v6 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  sub_1000069E4(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v10 = sub_100040508();
  sub_100040548(*(v10 + 28));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EA694();
    sub_1000069E4(v11);
    (*(v12 + 32))(v0, v1);
  }

  else
  {
    v13 = *v1;
    sub_1000EC1A4();
    v14 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v15 = sub_100040568();
    v16(v15);
  }

  sub_100006A20();
}

void sub_100033FA4()
{
  sub_100006A58();
  v2 = sub_1000405C8();
  v3 = sub_1000090D4(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_100040480();
  v6 = sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  sub_1000069E4(v6);
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  v10 = sub_100040508();
  sub_100040548(*(v10 + 32));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EBC34();
    sub_1000069E4(v11);
    (*(v12 + 32))(v0, v1);
  }

  else
  {
    v13 = *v1;
    sub_1000EC1A4();
    v14 = sub_1000EA524();
    sub_100040528();

    sub_1000EA2B4();
    sub_100040588();

    v15 = sub_100040568();
    v16(v15);
  }

  sub_100006A20();
}

BOOL sub_100034120()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
  (*(v2 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10003E7B8(&qword_1001309E8, &type metadata accessor for WidgetFamily);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v14 = *(v2 + 8);
  v14(v6, v1);
  v14(v8, v1);
  if (v18 != v17)
  {
    return 0;
  }

  v15 = v0 + *(type metadata accessor for WidgetContentView(0) + 36);
  return *(v15 + *(type metadata accessor for ForecastEntry(0) + 24) + 48) - 6 < 0xFFFFFFFD;
}

BOOL sub_10003431C()
{
  v1 = sub_1000EBC44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, vars0, vars8);
  (*(v2 + 104))(v6, enum case for WidgetFamily.systemMedium(_:), v1);
  sub_10003E7B8(&qword_1001309E8, &type metadata accessor for WidgetFamily);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v14 = *(v2 + 8);
  v14(v6, v1);
  v14(v8, v1);
  if (v18 != v17)
  {
    return 0;
  }

  v15 = v0 + *(type metadata accessor for WidgetContentView(0) + 36);
  return *(v15 + *(type metadata accessor for ForecastEntry(0) + 24) + 48) - 3 < 3;
}

uint64_t sub_1000346D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_1000EA3B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_1000EBC44();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = type metadata accessor for ForecastEntry.Model(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for AggregateWeatherViewModel(0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WidgetContentView(0);
  v20 = v2 + *(v19 + 36);
  v21 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v20 + *(v21 + 28), v10, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v10, v14, type metadata accessor for WeatherDataViewModel);
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v14, v22, 1, v23);
  if (sub_100005B30(v14, 1, v23) == 1)
  {
    sub_10003FBF8(v14, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v14, v18, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v28, v29, v30, v31, v32, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
      sub_100033B60();
      v33 = *(v2 + *(v19 + 44));
      sub_100033CDC();
      v34 = type metadata accessor for DailyViewAttributesFactory();
      v35 = *(v34 + 48);
      v36 = *(v34 + 52);
      swift_allocObject();
      sub_1000CFCC4();
      v37 = v20 + *(v21 + 24);
      v25 = v39;
      sub_1000CDE74(v18, v38, v37, 0, v39);

      sub_10003FBA4(v18, type metadata accessor for AggregateWeatherViewModel);
      v24 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v14, type metadata accessor for WeatherDataViewModel);
  }

  v24 = 1;
  v25 = v39;
LABEL_9:
  v26 = type metadata accessor for DailyViewAttributes();
  return sub_1000028A0(v25, v24, 1, v26);
}

uint64_t sub_100034A84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EA3B4();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = var50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000EBC44();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = var50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForecastEntry.Model(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = var50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = var50 - v17;
  v19 = type metadata accessor for AggregateWeatherViewModel(0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = var50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for WidgetContentView(0);
  v24 = v1 + *(v23 + 36);
  v25 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v24 + *(v25 + 28), v14, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v14, v18, type metadata accessor for WeatherDataViewModel);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v18, v26, 1, v27);
  if (sub_100005B30(v18, 1, v27) == 1)
  {
    sub_10003FBF8(v18, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v18, v22, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v31, v32, v33, v34, v35, var50[0], var50[1], var50[2], var50[3], var50[4], var50[5], var50[6], var50[7], var50[8], var50[9], var50[10], var50[11]);
      sub_100033B60();
      v36 = *(v1 + *(v23 + 44));
      v37 = sub_100033CDC();
      v38 = type metadata accessor for HourlyBannerViewAttributesFactory();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_1000C60CC(v10, v6, v36, v37 & 1);
      sub_1000C5AFC(v22);

      sub_10003FBA4(v22, type metadata accessor for AggregateWeatherViewModel);
      v28 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v18, type metadata accessor for WeatherDataViewModel);
  }

  v28 = 1;
LABEL_9:
  v29 = sub_1000EB464();
  return sub_1000028A0(a1, v28, 1, v29);
}

uint64_t sub_100034FA8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = sub_1000EA3B4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v42 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000EBC44();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForecastEntry.Model(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v42 - v15;
  v17 = type metadata accessor for AggregateWeatherViewModel(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for WidgetContentView(0);
  v22 = v1 + *(v21 + 36);
  v23 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v22 + *(v23 + 28), v12, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v12, v16, type metadata accessor for WeatherDataViewModel);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v16, v24, 1, v25);
  if (sub_100005B30(v16, 1, v25) == 1)
  {
    sub_10003FBF8(v16, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v16, v20, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v30, v31, v32, v33, v34, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
      v35 = v42;
      sub_100033B60();
      v36 = *(v1 + *(v21 + 44));
      v37 = sub_100033CDC();
      v38 = type metadata accessor for CurrentObservationViewAttributesFactory();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      sub_10007469C(v8, v35, v36, v37 & 1);
      v41 = v22 + *(v23 + 24);
      v27 = v43;
      sub_100073028(v20, v41, &v20[*(v17 + 20)], *v41, *(v41 + 8), *(v41 + 50), *(v41 + 51), *(v41 + 52), v43, 0, 1, 0);

      sub_10003FBA4(v20, type metadata accessor for AggregateWeatherViewModel);
      v26 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v16, type metadata accessor for WeatherDataViewModel);
  }

  v26 = 1;
  v27 = v43;
LABEL_9:
  v28 = sub_1000EBA54();
  return sub_1000028A0(v27, v26, 1, v28);
}

uint64_t sub_100035394@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v46) = a3;
  v47 = a1;
  v48 = a2;
  v49 = a4;
  v5 = sub_1000EA3B4();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v45 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EBC44();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForecastEntry.Model(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v44 - v18;
  v20 = type metadata accessor for AggregateWeatherViewModel(0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for WidgetContentView(0);
  v25 = v4 + *(v24 + 36);
  v26 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v25 + *(v26 + 28), v15, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v15, v19, type metadata accessor for WeatherDataViewModel);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v19, v27, 1, v28);
  if (sub_100005B30(v19, 1, v28) == 1)
  {
    sub_10003FBF8(v19, &qword_10012F038);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_10003E754(v19, v23, type metadata accessor for AggregateWeatherViewModel);
      sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v33, v34, v35, v36, v37, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
      v38 = v45;
      sub_100033B60();
      v39 = *(v4 + *(v24 + 44));
      v40 = sub_100033CDC();
      v41 = type metadata accessor for CurrentObservationViewAttributesFactory();
      v42 = *(v41 + 48);
      v43 = *(v41 + 52);
      swift_allocObject();
      sub_10007469C(v11, v38, v39, v40 & 1);
      v30 = v49;
      sub_100073028(v23, v25 + *(v26 + 24), &v23[*(v20 + 20)], v47, v48, *(v25 + *(v26 + 24) + 50), *(v25 + *(v26 + 24) + 51), *(v25 + *(v26 + 24) + 52), v49, 1u, BYTE4(v46) & 1, 0);

      sub_10003FBA4(v23, type metadata accessor for AggregateWeatherViewModel);
      v29 = 0;
      goto LABEL_9;
    }

    sub_10003FBA4(v19, type metadata accessor for WeatherDataViewModel);
  }

  v29 = 1;
  v30 = v49;
LABEL_9:
  v31 = sub_1000EBA54();
  return sub_1000028A0(v30, v29, 1, v31);
}

void *sub_100035794@<X0>(void *a1@<X8>)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = __src - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EA3B4();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = __src - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000EBC44();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = __src - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000359BC(v1);
  sub_10003E52C(&qword_10012F230, &qword_1000EEFF0, &type metadata accessor for WidgetFamily, v17, v18, v19, v20, v21, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11]);
  sub_100033B60();
  v22 = *(v1 + *(type metadata accessor for WidgetContentView(0) + 44));
  v23 = sub_100033CDC();
  v24 = type metadata accessor for ErrorViewAttributesFactory();
  v25 = *(v24 + 48);
  v26 = *(v24 + 52);
  swift_allocObject();
  sub_10007653C(v15, v11, v22, v23 & 1);
  sub_100033E28();
  sub_10007628C(v16, __src);

  (*(v4 + 8))(v7, v3);
  return memcpy(a1, __src, 0x50uLL);
}

uint64_t sub_1000359BC(uint64_t a1)
{
  v2 = type metadata accessor for ForecastEntry.Model(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v7 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v6 + *(v7 + 28), v5, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v5;
  }

  sub_10003FBA4(v5, type metadata accessor for ForecastEntry.Model);
  return 3;
}

double sub_100035AAC@<D0>(char *a1@<X8>)
{
  memcpy(a1, v1, 0x50uLL);
  v3 = *(type metadata accessor for ErrorView() + 20);
  *&a1[v3] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  sub_100040300(v1, &v7);
  v4 = sub_1000EA564();
  v5 = &a1[*(sub_100002A10(&qword_100130AA8, &qword_1000F12E0) + 36)];
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  v5[40] = 1;
  return result;
}

uint64_t sub_100035BB8@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v1 = sub_1000EB0D4();
  v27 = *(v1 - 8);
  v28 = v1;
  v2 = *(v27 + 64);
  __chkstk_darwin(v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100002A10(&qword_100130810, &qword_1000F0F38);
  v5 = *(*(v30 - 8) + 64);
  v6 = __chkstk_darwin(v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v27 - v9;
  v29 = sub_100002A10(&qword_1001309E0, &unk_1000F10F8);
  v11 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v13 = &v27 - v12;
  v14 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_1000EBA54();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v27 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v27 - v24;
  sub_100034FA8(v17);
  if (sub_100005B30(v17, 1, v18) == 1)
  {
    sub_10003FBF8(v17, &qword_100130838);
    sub_100035794(__src);
    memcpy(v13, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10003F15C();
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  else
  {
    (*(v19 + 32))(v25, v17, v18);
    (*(v19 + 16))(v23, v25, v18);
    sub_1000EB0C4();
    sub_1000EABD4();
    sub_1000EA0A4();
    (*(v27 + 32))(v8, v4, v28);
    memcpy(&v8[*(v30 + 36)], __src, 0x70uLL);
    sub_100019170(v8, v10, &qword_100130810, &qword_1000F0F38);
    sub_100019210(v10, v13, &qword_100130810, &qword_1000F0F38);
    swift_storeEnumTagMultiPayload();
    sub_10003F15C();
    sub_10003E85C();
    sub_1000EA4A4();
    sub_10003FBF8(v10, &qword_100130810);
    return (*(v19 + 8))(v25, v18);
  }
}

uint64_t sub_100036020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_100002A10(&qword_10012F6B0, &unk_1000EFB80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = sub_100002A10(&qword_1001307E0, &unk_1000F0F20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v37 - v9;
  v11 = sub_100002A10(&qword_100130990, &qword_1000F1080);
  v39 = *(v11 - 8);
  v12 = *(v39 + 64);
  __chkstk_darwin(v11);
  v38 = &v37 - v13;
  v14 = sub_100002A10(&qword_100130998, &qword_1000F1088);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v37 - v16;
  v18 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v37 - v20;
  v22 = sub_1000EBA54();
  v41 = *(v22 - 8);
  v23 = *(v41 + 64);
  __chkstk_darwin(v22);
  v40 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100034FA8(v21);
  v42 = v22;
  if (sub_100005B30(v21, 1, v22) == 1)
  {
    sub_10003FBF8(v21, &qword_100130838);
    sub_100035794(__src);
    memcpy(v17, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    v25 = sub_10004036C(&qword_1001307E8, &qword_1001307E0);
    v26 = sub_10004036C(&qword_10012F6C0, &qword_10012F6B0);
    v44 = v7;
    v45 = v3;
    v46 = v25;
    v47 = v26;
    swift_getOpaqueTypeConformance2();
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  else
  {
    v37 = v14;
    v28 = v40;
    (*(v41 + 32))(v40, v21, v42);
    *v10 = sub_1000EA3D4();
    *(v10 + 1) = 0;
    v10[16] = 0;
    v29 = sub_100002A10(&qword_1001309A0, &qword_1000F1090);
    sub_10003663C(v28, a1, &v10[*(v29 + 44)]);
    v30 = enum case for DynamicTypeSize.xxLarge(_:);
    v31 = sub_1000E9FF4();
    (*(*(v31 - 8) + 104))(v6, v30, v31);
    sub_10003E7B8(&qword_10012F6F0, &type metadata accessor for DynamicTypeSize);
    result = sub_1000EBE24();
    if (result)
    {
      v32 = sub_10004036C(&qword_1001307E8, &qword_1001307E0);
      v33 = v11;
      v34 = sub_10004036C(&qword_10012F6C0, &qword_10012F6B0);
      v35 = v38;
      sub_1000EA8B4();
      sub_10003FBF8(v6, &qword_10012F6B0);
      sub_10003FBF8(v10, &qword_1001307E0);
      v36 = v39;
      (*(v39 + 16))(v17, v35, v33);
      swift_storeEnumTagMultiPayload();
      __src[0] = v7;
      __src[1] = v3;
      __src[2] = v32;
      __src[3] = v34;
      swift_getOpaqueTypeConformance2();
      sub_10003E85C();
      sub_1000EA4A4();
      (*(v36 + 8))(v35, v33);
      return (*(v41 + 8))(v40, v42);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10003663C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a2;
  v45 = a3;
  v4 = sub_1000EA4E4();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_1001309A8, &qword_1000F1098);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v38 - v10);
  v41 = sub_100002A10(&qword_1001309B0, &qword_1000F10A0);
  v39 = *(v41 - 8);
  v12 = v39;
  v13 = *(v39 + 64);
  v14 = __chkstk_darwin(v41);
  v40 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v38 - v16;
  v18 = sub_100002A10(&qword_1001309B8, &qword_1000F10A8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v38 - v24;
  v26 = sub_1000EBA54();
  (*(*(v26 - 8) + 16))(v25, a1, v26);
  KeyPath = swift_getKeyPath();
  *&v25[*(type metadata accessor for SmallCurrentObservationView(0) + 20)] = KeyPath;
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  *&v25[*(v19 + 44)] = 256;
  *v11 = sub_1000EABC4();
  v11[1] = v28;
  v29 = sub_100002A10(&qword_1001309C0, &qword_1000F10E0);
  sub_100036AA4(v42, v11 + *(v29 + 44));
  sub_1000EA4D4();
  sub_10004036C(&qword_1001309C8, &qword_1001309A8);
  sub_1000EA914();
  (*(v43 + 8))(v7, v44);
  sub_10003FBF8(v11, &qword_1001309A8);
  sub_100019210(v25, v23, &qword_1001309B8, &qword_1000F10A8);
  v30 = *(v12 + 16);
  v32 = v40;
  v31 = v41;
  v30(v40, v17, v41);
  v33 = v45;
  sub_100019210(v23, v45, &qword_1001309B8, &qword_1000F10A8);
  v34 = sub_100002A10(&qword_1001309D0, &qword_1000F10E8);
  v35 = v33 + *(v34 + 48);
  *v35 = 0x3FF0000000000000;
  *(v35 + 8) = 0;
  v30((v33 + *(v34 + 64)), v32, v31);
  v36 = *(v39 + 8);
  v36(v17, v31);
  sub_10003FBF8(v25, &qword_1001309B8);
  v36(v32, v31);
  return sub_10003FBF8(v23, &qword_1001309B8);
}

uint64_t sub_100036AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v37 - v5;
  v7 = sub_1000EBAF4();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v37 - v12;
  v14 = type metadata accessor for ForecastEntry.Model(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v37 - v20;
  v22 = type metadata accessor for AggregateWeatherViewModel(0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v27 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v26 + *(v27 + 28), v17, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v17, v21, type metadata accessor for WeatherDataViewModel);
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v29 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(v21, v28, 1, v29);
  if (sub_100005B30(v21, 1, v29) == 1)
  {
    v30 = &qword_10012F038;
    v31 = v21;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10003FBA4(v21, type metadata accessor for WeatherDataViewModel);
      goto LABEL_9;
    }

    sub_10003E754(v21, v25, type metadata accessor for AggregateWeatherViewModel);
    sub_100019210(&v25[*(v22 + 40)], v6, &qword_1001309D8, &qword_1000F10F0);
    if (sub_100005B30(v6, 1, v7) != 1)
    {
      v36 = v37;
      (*(v37 + 32))(v13, v6, v7);
      (*(v36 + 16))(v11, v13, v7);
      v33 = v38;
      sub_1000EBB04();
      (*(v36 + 8))(v13, v7);
      sub_10003FBA4(v25, type metadata accessor for AggregateWeatherViewModel);
      v32 = 0;
      goto LABEL_10;
    }

    sub_10003FBA4(v25, type metadata accessor for AggregateWeatherViewModel);
    v30 = &qword_1001309D8;
    v31 = v6;
  }

  sub_10003FBF8(v31, v30);
LABEL_9:
  v32 = 1;
  v33 = v38;
LABEL_10:
  v34 = sub_1000EBB14();
  return sub_1000028A0(v33, v32, 1, v34);
}

uint64_t sub_100036EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[1] = a1;
  v36 = a3;
  v34 = sub_100002A10(&qword_100130880, &qword_1000F0F98);
  v4 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v6 = v32 - v5;
  v35 = sub_100002A10(&qword_100130888, &unk_1000F0FA0);
  v7 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v9 = v32 - v8;
  v10 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v32 - v12;
  v14 = sub_1000EB464();
  v32[0] = *(v14 - 8);
  v15 = *(v32[0] + 64);
  __chkstk_darwin(v14);
  v33 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v32 - v19;
  v21 = sub_1000EBA54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2 + *(type metadata accessor for WidgetContentView(0) + 36);
  v27 = type metadata accessor for ForecastEntry(0);
  sub_100035394(*(v26 + *(v27 + 24)), *(v26 + *(v27 + 24) + 8), 1, v20);
  if (sub_100005B30(v20, 1, v21) == 1)
  {
    sub_10003FBF8(v20, &qword_100130838);
LABEL_5:
    sub_100035794(__src);
    memcpy(v6, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_100130898, &qword_100130888);
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  (*(v22 + 32))(v25, v20, v21);
  sub_1000E9FD4();
  sub_100034A84(v13);
  if (sub_100005B30(v13, 1, v14) == 1)
  {
    sub_10003FBF8(v13, &qword_100130890);
    (*(v22 + 8))(v25, v21);
    goto LABEL_5;
  }

  v29 = v32[0];
  v30 = v33;
  (*(v32[0] + 32))(v33, v13, v14);
  *v9 = sub_1000EA3C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v31 = sub_100002A10(&qword_1001308A0, &qword_1000F0FB0);
  sub_100037400(v25, a2, v30, &v9[*(v31 + 44)]);
  sub_100019210(v9, v6, &qword_100130888, &unk_1000F0FA0);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130898, &qword_100130888);
  sub_10003E85C();
  sub_1000EA4A4();
  sub_10003FBF8(v9, &qword_100130888);
  (*(v29 + 8))(v33, v14);
  return (*(v22 + 8))(v25, v21);
}

uint64_t sub_100037400@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, char *a4@<X8>)
{
  v66 = a3;
  v67 = a4;
  v68 = a1;
  v5 = sub_1000EB464();
  v64 = *(v5 - 8);
  v65 = v5;
  v6 = *(v64 + 64);
  __chkstk_darwin(v5);
  v63 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000EAEF4();
  v60 = *(v57 - 8);
  v8 = *(v60 + 64);
  v9 = __chkstk_darwin(v57);
  v56 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = &v56 - v11;
  v12 = sub_1000EA3B4();
  v59 = *(v12 - 8);
  v13 = *(v59 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v56 - v17;
  v19 = sub_1000EBA54();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000EB694();
  v61 = *(v24 - 8);
  v62 = v24;
  v25 = *(v61 + 64);
  v26 = __chkstk_darwin(v24);
  v69 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v56 - v28;
  (*(v20 + 16))(v23, v68, v19);
  v68 = v29;
  sub_1000EB684();
  v30 = *(type metadata accessor for WidgetContentView(0) + 44);
  v31 = *(a2 + v30);
  if (sub_1000027EC(*(a2 + v30)))
  {
    v71 = 0x4028000000000000;
    v72 = 0;
    sub_1000EA4A4();
    v32 = v74;
    v33 = v75;
    if (HIBYTE(v75))
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    if (v31 >= 2)
    {
      sub_100033B60();
      v35 = v59;
      (*(v59 + 104))(v16, enum case for ContentSizeCategory.large(_:), v12);
      sub_1000CD388();
      v37 = v36;
      v38 = *(v35 + 8);
      v38(v16, v12);
      v38(v18, v12);
      if ((v37 & 1) == 0)
      {
        v71 = 0x4030000000000000;
        v72 = 0;
        v73 = 1;
        sub_100002A10(&qword_1001308A8, &qword_1000F0FB8);
        sub_10003FB28();
        goto LABEL_11;
      }
    }

    v71 = 0x4018000000000000;
    v72 = 256;
    sub_1000EA4A4();
    v32 = v74;
    v33 = v75;
    if (HIBYTE(v75))
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }
  }

  v71 = v32;
  v72 = v34 | v33;
  v73 = 0;
  sub_100002A10(&qword_1001308A8, &qword_1000F0FB8);
  sub_10003FB28();
LABEL_11:
  sub_1000EA4A4();
  v59 = v74;
  v58 = v75;
  v39 = v76;
  (*(v64 + 16))(v63, v66, v65);
  v40 = v70;
  sub_1000EAEE4();
  v42 = v61;
  v41 = v62;
  v43 = *(v61 + 16);
  v44 = v69;
  v43(v69, v68, v62);
  LOBYTE(v74) = v39;
  v45 = v60;
  v66 = *(v60 + 16);
  v46 = v56;
  v47 = v40;
  v48 = v57;
  v66(v56, v47, v57);
  v49 = v67;
  v43(v67, v44, v41);
  v50 = sub_100002A10(&qword_1001308B8, &qword_1000F0FC0);
  v51 = &v49[*(v50 + 48)];
  v52 = v74;
  *v51 = v59;
  *(v51 + 4) = v58;
  v51[10] = v52;
  v66(&v49[*(v50 + 64)], v46, v48);
  v53 = *(v45 + 8);
  v53(v70, v48);
  v54 = *(v42 + 8);
  v54(v68, v41);
  v53(v46, v48);
  return (v54)(v69, v41);
}

uint64_t sub_100037A7C@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v72 = sub_100002A10(&qword_100130820, &qword_1000F0F40);
  v2 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = &v61 - v3;
  v73 = sub_100002A10(&qword_100130748, &qword_1000F0EE0);
  v4 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v66 = (&v61 - v5);
  v80 = sub_100002A10(&qword_100130738, &qword_1000F0ED8);
  v6 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v75 = &v61 - v7;
  v78 = sub_100002A10(&qword_100130828, &qword_1000F0F48);
  v8 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v79 = &v61 - v9;
  v68 = sub_100002A10(&qword_100130830, &qword_1000F0F50);
  v10 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v69 = &v61 - v11;
  v70 = sub_1000EBBA4();
  v65 = *(v70 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v70);
  v64 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v61 - v19;
  v76 = sub_1000EBA54();
  v71 = *(v76 - 8);
  v21 = *(v71 + 64);
  v22 = __chkstk_darwin(v76);
  v63 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v61 = &v61 - v25;
  __chkstk_darwin(v24);
  v62 = &v61 - v26;
  v77 = sub_100002A10(&qword_100130720, &qword_1000F0ED0);
  v27 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v67 = &v61 - v28;
  v29 = sub_1000EA3B4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v61 - v35;
  sub_100033B60();
  v37 = type metadata accessor for WidgetContentView(0);
  if (*(v1 + *(v37 + 44)))
  {
    v38 = &enum case for ContentSizeCategory.accessibilityMedium(_:);
  }

  else
  {
    v38 = &enum case for ContentSizeCategory.extraExtraExtraLarge(_:);
  }

  (*(v30 + 104))(v34, *v38, v29);
  sub_1000CD72C();
  v40 = v39;
  v41 = *(v30 + 8);
  v41(v34, v29);
  v41(v36, v29);
  v42 = v1 + *(v37 + 36);
  v43 = v42 + *(type metadata accessor for ForecastEntry(0) + 24);
  v44 = *(v43 + 16);
  v45 = *(v43 + 24);
  if (v40)
  {
    sub_100035394(v44, v45, 0, v20);
    v46 = v76;
    if (sub_100005B30(v20, 1, v76) == 1)
    {
      sub_10003FBF8(v20, &qword_100130838);
      sub_100035794(__src);
      memcpy(v69, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView);
      sub_10003E85C();
      v47 = v67;
      sub_1000EA4A4();
    }

    else
    {
      v50 = v71;
      v51 = v62;
      (*(v71 + 32))(v62, v20, v46);
      (*(v50 + 16))(v61, v51, v46);
      v52 = v64;
      sub_1000EBB94();
      v53 = v65;
      v54 = v70;
      (*(v65 + 16))(v69, v52, v70);
      swift_storeEnumTagMultiPayload();
      sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView);
      sub_10003E85C();
      v47 = v67;
      sub_1000EA4A4();
      (*(v53 + 8))(v52, v54);
      (*(v50 + 8))(v51, v46);
    }

    sub_100019210(v47, v79, &qword_100130720, &qword_1000F0ED0);
    swift_storeEnumTagMultiPayload();
    sub_10003E9F4();
    sub_10003EAB0();
    sub_1000EA4A4();
    return sub_10003FBF8(v47, &qword_100130720);
  }

  else
  {
    sub_100035394(v44, v45, 1, v18);
    v48 = v76;
    if (sub_100005B30(v18, 1, v76) == 1)
    {
      sub_10003FBF8(v18, &qword_100130838);
      sub_100035794(__src);
      memcpy(v74, __src, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_10004036C(&qword_100130740, &qword_100130748);
      sub_10003E85C();
      v49 = v75;
      sub_1000EA4A4();
    }

    else
    {
      v56 = v71;
      v57 = v63;
      (*(v71 + 32))(v63, v18, v48);
      v58 = sub_1000EA3C4();
      v59 = v66;
      *v66 = v58;
      *(v59 + 8) = 0;
      *(v59 + 16) = 1;
      v60 = sub_100002A10(&qword_100130840, &qword_1000F0F60);
      sub_1000384E4(v57, v1, (v59 + *(v60 + 44)));
      sub_100019210(v59, v74, &qword_100130748, &qword_1000F0EE0);
      swift_storeEnumTagMultiPayload();
      sub_10004036C(&qword_100130740, &qword_100130748);
      sub_10003E85C();
      v49 = v75;
      sub_1000EA4A4();
      sub_10003FBF8(v59, &qword_100130748);
      (*(v56 + 8))(v57, v48);
    }

    sub_100019210(v49, v79, &qword_100130738, &qword_1000F0ED8);
    swift_storeEnumTagMultiPayload();
    sub_10003E9F4();
    sub_10003EAB0();
    sub_1000EA4A4();
    return sub_10003FBF8(v49, &qword_100130738);
  }
}

uint64_t sub_1000384E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v56 = a1;
  v62 = a3;
  v60 = sub_1000EA4E4();
  v3 = *(v60 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v60);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002A10(&qword_100130848, &qword_1000F0F68);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v53 - v9);
  v61 = sub_100002A10(&qword_100130850, &qword_1000F0F70);
  v57 = *(v61 - 8);
  v11 = *(v57 + 64);
  v12 = __chkstk_darwin(v61);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v63 = &v53 - v14;
  v15 = sub_1000EBA54();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1000EB694();
  v54 = *(v20 - 8);
  v21 = v54;
  v55 = v20;
  v22 = *(v54 + 64);
  v23 = __chkstk_darwin(v20);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v53 - v26;
  (*(v16 + 16))(v19, v56, v15);
  v28 = v27;
  v53 = v27;
  sub_1000EB684();
  *v10 = sub_1000EABC4();
  v10[1] = v29;
  v30 = *(sub_100002A10(&qword_100130858, &qword_1000F0F78) + 44);
  v31 = type metadata accessor for WidgetContentView(0);
  sub_10003E6F8(v59 + *(v31 + 36), v10 + v30, type metadata accessor for ForecastEntry);
  LOBYTE(v30) = sub_1000EA574();
  sub_1000E9F74();
  v32 = v10 + *(v7 + 36);
  *v32 = v30;
  *(v32 + 1) = v33;
  *(v32 + 2) = v34;
  *(v32 + 3) = v35;
  *(v32 + 4) = v36;
  v32[40] = 0;
  sub_1000EA4D4();
  sub_10003FA70();
  v37 = v63;
  sub_1000EA914();
  (*(v3 + 8))(v6, v60);
  sub_10003FBF8(v10, &qword_100130848);
  v38 = *(v21 + 16);
  v39 = v25;
  v40 = v25;
  v41 = v55;
  v38(v40, v28, v55);
  v64 = 0;
  v43 = v57;
  v42 = v58;
  v44 = *(v57 + 16);
  v45 = v61;
  v44(v58, v37, v61);
  v46 = v62;
  v38(v62, v39, v41);
  v47 = sub_100002A10(&qword_100130878, &qword_1000F0F88);
  v48 = &v46[*(v47 + 48)];
  v49 = v64;
  *v48 = 0x4018000000000000;
  v48[8] = v49;
  v44(&v46[*(v47 + 64)], v42, v45);
  v50 = *(v43 + 8);
  v50(v63, v45);
  v51 = *(v54 + 8);
  v51(v53, v41);
  v50(v42, v45);
  return (v51)(v39, v41);
}

uint64_t sub_1000389CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v47 = sub_100002A10(&qword_1001308C0, &qword_1000F0FC8);
  v5 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v7 = &v42 - v6;
  v48 = sub_100002A10(&qword_1001308C8, &unk_1000F0FD0);
  v8 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v45 = (&v42 - v9);
  v10 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v42 - v12;
  v14 = type metadata accessor for DailyViewAttributes();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v42 - v19;
  v21 = sub_1000EBA54();
  v46 = *(v21 - 8);
  v22 = *(v46 + 64);
  __chkstk_darwin(v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v42 - v27;
  v44 = a1;
  sub_1000E9FD4();
  sub_100034A84(v28);
  v29 = sub_1000EB464();
  if (sub_100005B30(v28, 1, v29) == 1)
  {
    v30 = &qword_100130890;
    v31 = v28;
LABEL_5:
    sub_10003FBF8(v31, v30);
    goto LABEL_6;
  }

  v32 = sub_1000EB454();
  (*(*(v29 - 8) + 8))(v28, v29);
  v33 = *(v32 + 16);

  sub_100034FA8(v20);
  if (sub_100005B30(v20, 1, v21) == 1)
  {
    v30 = &qword_100130838;
    v31 = v20;
    goto LABEL_5;
  }

  v35 = v46;
  (*(v46 + 32))(v24, v20, v21);
  sub_1000346D0(v33, v13);
  if (sub_100005B30(v13, 1, v14) != 1)
  {
    v36 = v13;
    v37 = v43;
    sub_10003E754(v36, v43, type metadata accessor for DailyViewAttributes);
    v38 = sub_1000EA2E4();
    v39 = v35;
    v40 = v45;
    *v45 = v38;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    v41 = sub_100002A10(&qword_1001308E0, &qword_1000F0FE0);
    sub_100038F78(v24, v37, a2, v40 + *(v41 + 44));
    sub_100019210(v40, v7, &qword_1001308C8, &unk_1000F0FD0);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_1001308D8, &qword_1001308C8);
    sub_10003E85C();
    sub_1000EA4A4();
    sub_10003FBF8(v40, &qword_1001308C8);
    sub_10003FBA4(v37, type metadata accessor for DailyViewAttributes);
    return (*(v39 + 8))(v24, v21);
  }

  sub_10003FBF8(v13, &qword_1001308D0);
  (*(v35 + 8))(v24, v21);
LABEL_6:
  sub_100035794(__src);
  memcpy(v7, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_1001308D8, &qword_1001308C8);
  sub_10003E85C();
  return sub_1000EA4A4();
}

uint64_t sub_100038F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a2;
  v52 = a4;
  v5 = sub_100002A10(&qword_1001308E8, &qword_1000F0FE8);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v12 = sub_1000EBA54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_1001308F0, &qword_1000F0FF0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v43 - v23;
  (*(v13 + 16))(v16, a1, v12);
  sub_1000EB0C4();
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v25 = &v24[*(v18 + 44)];
  v44 = v24;
  v26 = v56;
  *v25 = v55;
  *(v25 + 1) = v26;
  *(v25 + 2) = v57;
  sub_1000EABC4();
  sub_1000E9FC4();
  v48 = v58;
  v47 = v60;
  v46 = v62;
  v45 = v63;
  v68 = 1;
  v67 = v59;
  v66 = v61;
  sub_10003E6F8(v49, v11, type metadata accessor for DailyViewAttributes);
  v27 = (v50 + *(type metadata accessor for WidgetContentView(0) + 40));
  v29 = *v27;
  v28 = v27[1];
  v53 = v29;
  v54 = v28;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v30 = *v64;
  v31 = type metadata accessor for DailyView(0);
  v32 = *&v64[8];
  v33 = &v11[*(v31 + 20)];
  *v33 = v30;
  *(v33 + 8) = v32;
  sub_1000E9FD4();
  sub_1000E9FD4();
  sub_1000EABD4();
  sub_1000E9FC4();
  v34 = &v11[*(v6 + 44)];
  v35 = *&v64[16];
  *v34 = *v64;
  *(v34 + 1) = v35;
  *(v34 + 2) = v65;
  v43 = v22;
  sub_100019210(v24, v22, &qword_1001308F0, &qword_1000F0FF0);
  LOBYTE(v12) = v68;
  v36 = v67;
  LOBYTE(v16) = v66;
  v37 = v51;
  sub_100019210(v11, v51, &qword_1001308E8, &qword_1000F0FE8);
  v38 = v52;
  sub_100019210(v22, v52, &qword_1001308F0, &qword_1000F0FF0);
  v39 = sub_100002A10(&qword_1001308F8, &qword_1000F0FF8);
  v40 = v38 + *(v39 + 48);
  *v40 = 0;
  *(v40 + 8) = v12;
  *(v40 + 16) = v48;
  *(v40 + 24) = v36;
  *(v40 + 32) = v47;
  *(v40 + 40) = v16;
  v41 = v45;
  *(v40 + 48) = v46;
  *(v40 + 56) = v41;
  sub_100019210(v37, v38 + *(v39 + 64), &qword_1001308E8, &qword_1000F0FE8);
  sub_10003FBF8(v11, &qword_1001308E8);
  sub_10003FBF8(v44, &qword_1001308F0);
  sub_10003FBF8(v37, &qword_1001308E8);
  return sub_10003FBF8(v43, &qword_1001308F0);
}

uint64_t sub_10003947C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v75 = a2;
  v73 = sub_100002A10(&qword_100130948, &qword_1000F1040);
  v3 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73);
  v5 = &v61 - v4;
  v74 = sub_100002A10(&qword_100130950, &qword_1000F1048);
  v6 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v65 = (&v61 - v7);
  v8 = sub_100002A10(&qword_1001308D0, &qword_1000F7540);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v67 = &v61 - v10;
  v66 = type metadata accessor for DailyViewAttributes();
  v11 = *(*(v66 - 8) + 64);
  __chkstk_darwin(v66);
  v64 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v61 - v18;
  v20 = sub_1000EBA54();
  v70 = *(v20 - 8);
  v71 = v20;
  v21 = v70[8];
  v22 = __chkstk_darwin(v20);
  v68 = &v61 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v69 = &v61 - v24;
  v25 = sub_1000EB464();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  v72 = &v61 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v33 = &v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v61 - v34;
  sub_1000E9FD4();
  sub_100034A84(v35);
  if (sub_100005B30(v35, 1, v25) == 1)
  {
    v36 = v35;
LABEL_5:
    sub_10003FBF8(v36, &qword_100130890);
    goto LABEL_14;
  }

  v37 = sub_1000EB454();
  v38 = *(v26 + 8);
  v63 = v26 + 8;
  v62 = v38;
  v38(v35, v25);
  v39 = *(v37 + 16);

  sub_1000E9FD4();
  sub_100034A84(v33);
  if (sub_100005B30(v33, 1, v25) == 1)
  {
    v36 = v33;
    goto LABEL_5;
  }

  v61 = v39;
  v40 = v72;
  (*(v26 + 32))(v72, v33, v25);
  sub_100035394(0, 0xE000000000000000, 1, v19);
  v41 = v71;
  if (sub_100005B30(v19, 1, v71) == 1)
  {
    sub_10003FBF8(v19, &qword_100130838);
    v42 = v40;
  }

  else
  {
    v44 = v69;
    v43 = v70;
    v45 = v19;
    v46 = v70[4];
    v46(v69, v45, v41);
    v47 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
    v48 = type metadata accessor for ForecastEntry(0);
    sub_100035394(*(v47 + *(v48 + 24) + 16), *(v47 + *(v48 + 24) + 24), 1, v17);
    if (sub_100005B30(v17, 1, v41) == 1)
    {
      sub_10003FBF8(v17, &qword_100130838);
      (v43[1])(v44, v41);
    }

    else
    {
      v49 = v68;
      v46(v68, v17, v41);
      v50 = v67;
      sub_1000346D0(v61, v67);
      if (sub_100005B30(v50, 1, v66) != 1)
      {
        v53 = v64;
        sub_10003E754(v50, v64, type metadata accessor for DailyViewAttributes);
        v54 = sub_1000EA3C4();
        v55 = v65;
        *v65 = v54;
        *(v55 + 8) = 0;
        *(v55 + 16) = 0;
        v56 = sub_100002A10(&qword_100130960, &qword_1000F1050);
        v57 = v69;
        v58 = a1;
        v59 = v72;
        sub_100039CBC(v69, v58, v49, v72, v53, v55 + *(v56 + 44));
        sub_100019210(v55, v5, &qword_100130950, &qword_1000F1048);
        swift_storeEnumTagMultiPayload();
        sub_10004036C(&qword_100130958, &qword_100130950);
        sub_10003E85C();
        sub_1000EA4A4();
        sub_10003FBF8(v55, &qword_100130950);
        sub_10003FBA4(v53, type metadata accessor for DailyViewAttributes);
        v60 = v70[1];
        v60(v49, v41);
        v60(v57, v41);
        return v62(v59, v25);
      }

      sub_10003FBF8(v50, &qword_1001308D0);
      v51 = v70[1];
      v51(v49, v41);
      v51(v69, v41);
    }

    v42 = v72;
  }

  v62(v42, v25);
LABEL_14:
  sub_100035794(__src);
  memcpy(v5, __src, 0x50uLL);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130958, &qword_100130950);
  sub_10003E85C();
  return sub_1000EA4A4();
}

uint64_t sub_100039CBC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v114 = a4;
  v115 = a5;
  v108 = a3;
  v127 = a1;
  v121 = a6;
  v116 = type metadata accessor for DailyView(0);
  v7 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v9 = &v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_100002A10(&qword_100130968, &qword_1000F1058);
  v10 = *(*(v118 - 8) + 64);
  v11 = __chkstk_darwin(v118);
  v124 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v117 = &v104 - v14;
  __chkstk_darwin(v13);
  v120 = &v104 - v15;
  v16 = sub_1000EB464();
  v112 = *(v16 - 8);
  v113 = v16;
  v17 = *(v112 + 64);
  __chkstk_darwin(v16);
  v111 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000EAEF4();
  v122 = *(v19 - 8);
  v123 = v19;
  v20 = *(v122 + 64);
  v21 = __chkstk_darwin(v19);
  v134 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v119 = &v104 - v23;
  v110 = sub_100002A10(&qword_100130970, &qword_1000F1060);
  v24 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v26 = &v104 - v25;
  v27 = type metadata accessor for DescriptionView();
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v107 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v106 = &v104 - v31;
  v125 = sub_100002A10(&qword_100130938, &qword_1000F1030);
  v32 = *(*(v125 - 8) + 64);
  v33 = __chkstk_darwin(v125);
  v131 = &v104 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v132 = &v104 - v36;
  v37 = __chkstk_darwin(v35);
  v126 = &v104 - v38;
  __chkstk_darwin(v37);
  v136 = &v104 - v39;
  v40 = sub_100002A10(&qword_100130978, &qword_1000F1068);
  v41 = *(*(v40 - 8) + 64);
  v42 = __chkstk_darwin(v40 - 8);
  v133 = &v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v135 = &v104 - v44;
  v45 = sub_1000EBA54();
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v45);
  v49 = &v104 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1000EB694();
  v129 = *(v50 - 8);
  v130 = v50;
  v51 = *(v129 + 64);
  v52 = __chkstk_darwin(v50);
  v128 = &v104 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v52);
  v55 = &v104 - v54;
  v56 = *(v46 + 16);
  v56(v49, v127, v45);
  v127 = v55;
  sub_1000EB684();
  v109 = type metadata accessor for WidgetContentView(0);
  v57 = a2;
  v58 = a2 + *(v109 + 36);
  v59 = type metadata accessor for ForecastEntry(0);
  v60 = 1;
  if (*(v58 + *(v59 + 24) + 48) - 2 <= 3)
  {
    v104 = a2;
    v61 = v136;
    sub_1000EAB24();
    sub_1000EA9C4();
    v105 = v9;
    v62 = sub_1000EA9D4();

    v63 = sub_1000EA564();
    v64 = v61 + *(v125 + 36);
    *v64 = v62;
    *(v64 + 8) = v63;
    v65 = v106;
    v56(v106, v108, v45);
    v66 = v126;
    sub_100019210(v61, v126, &qword_100130938, &qword_1000F1030);
    v67 = v107;
    sub_10003E6F8(v65, v107, type metadata accessor for DescriptionView);
    sub_100019210(v66, v26, &qword_100130938, &qword_1000F1030);
    v68 = sub_100002A10(&qword_100130980, &qword_1000F1070);
    v69 = &v26[v68[12]];
    *v69 = 0x4018000000000000;
    v69[8] = 0;
    sub_10003E6F8(v67, &v26[v68[16]], type metadata accessor for DescriptionView);
    v70 = &v26[v68[20]];
    *v70 = 0x4018000000000000;
    v70[8] = 0;
    sub_10003FBA4(v65, type metadata accessor for DescriptionView);
    v71 = v61;
    v57 = v104;
    sub_10003FBF8(v71, &qword_100130938);
    sub_10003FBA4(v67, type metadata accessor for DescriptionView);
    v9 = v105;
    sub_10003FBF8(v66, &qword_100130938);
    sub_100019170(v26, v135, &qword_100130970, &qword_1000F1060);
    v60 = 0;
  }

  v72 = v135;
  sub_1000028A0(v135, v60, 1, v110);
  v73 = v132;
  sub_1000EAB24();
  sub_1000EA9C4();
  v74 = sub_1000EA9D4();

  v75 = sub_1000EA564();
  v76 = v125;
  v77 = v73 + *(v125 + 36);
  *v77 = v74;
  *(v77 + 8) = v75;
  (*(v112 + 16))(v111, v114, v113);
  v78 = v119;
  sub_1000EAEE4();
  v79 = v131;
  sub_1000EAB24();
  sub_1000EA9C4();
  v80 = sub_1000EA9D4();

  v81 = sub_1000EA564();
  v82 = v79 + *(v76 + 36);
  *v82 = v80;
  *(v82 + 8) = v81;
  sub_10003E6F8(v115, v9, type metadata accessor for DailyViewAttributes);
  v83 = (v57 + *(v109 + 40));
  v85 = *v83;
  v84 = v83[1];
  v145 = v85;
  v146 = v84;
  sub_100002A10(&qword_100130688, &qword_1000F0DF8);
  sub_1000EAAB4();
  v86 = *&__src[1];
  v87 = &v9[*(v116 + 20)];
  *v87 = __src[0];
  *(v87 + 8) = v86;
  sub_1000EABC4();
  sub_1000EA0A4();
  v88 = v117;
  sub_10003E754(v9, v117, type metadata accessor for DailyView);
  memcpy((v88 + *(v118 + 36)), __src, 0x70uLL);
  v89 = v120;
  sub_100019170(v88, v120, &qword_100130968, &qword_1000F1058);
  v90 = v128;
  (*(v129 + 16))();
  v143 = 0x4028000000000000;
  v144 = 0;
  v145 = v90;
  v146 = &v143;
  v91 = v133;
  sub_100019210(v72, v133, &qword_100130978, &qword_1000F1068);
  v147 = v91;
  v92 = v136;
  sub_100019210(v73, v136, &qword_100130938, &qword_1000F1030);
  v141 = 0x4018000000000000;
  v142 = 0;
  v148 = v92;
  v149 = &v141;
  v94 = v122;
  v93 = v123;
  v95 = v134;
  v96 = v78;
  (*(v122 + 16))();
  v139 = 0x4018000000000000;
  v140 = 0;
  v150 = v95;
  v151 = &v139;
  v97 = v131;
  v98 = v126;
  sub_100019210(v131, v126, &qword_100130938, &qword_1000F1030);
  v137 = 0x4018000000000000;
  v138 = 0;
  v152 = v98;
  v153 = &v137;
  v99 = v124;
  sub_100019210(v89, v124, &qword_100130968, &qword_1000F1058);
  v154 = v99;
  sub_10003375C(&v145, v121);
  sub_10003FBF8(v89, &qword_100130968);
  sub_10003FBF8(v97, &qword_100130938);
  v100 = *(v94 + 8);
  v100(v96, v93);
  sub_10003FBF8(v132, &qword_100130938);
  sub_10003FBF8(v135, &qword_100130978);
  v101 = v130;
  v102 = *(v129 + 8);
  v102(v127, v130);
  sub_10003FBF8(v99, &qword_100130968);
  sub_10003FBF8(v98, &qword_100130938);
  v100(v134, v93);
  sub_10003FBF8(v136, &qword_100130938);
  sub_10003FBF8(v133, &qword_100130978);
  return (v102)(v128, v101);
}

uint64_t sub_10003A85C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[1] = a1;
  v34 = a3;
  v32 = sub_100002A10(&qword_100130900, &qword_1000F1000);
  v4 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v6 = v30 - v5;
  v33 = sub_100002A10(&qword_100130908, &qword_1000F1008);
  v7 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v9 = v30 - v8;
  v10 = sub_100002A10(&qword_100130890, &qword_1000F7610);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v30 - v12;
  v14 = sub_1000EB464();
  v30[0] = *(v14 - 8);
  v15 = *(v30[0] + 64);
  __chkstk_darwin(v14);
  v31 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002A10(&qword_100130838, &qword_1000F0F58);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = v30 - v19;
  v21 = sub_1000EBA54();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = v30 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035394(0, 0xE000000000000000, 1, v20);
  if (sub_100005B30(v20, 1, v21) == 1)
  {
    sub_10003FBF8(v20, &qword_100130838);
LABEL_5:
    sub_100035794(__src);
    memcpy(v6, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10004036C(&qword_100130910, &qword_100130908);
    sub_10003E85C();
    return sub_1000EA4A4();
  }

  (*(v22 + 32))(v25, v20, v21);
  sub_1000E9FD4();
  sub_100034A84(v13);
  if (sub_100005B30(v13, 1, v14) == 1)
  {
    sub_10003FBF8(v13, &qword_100130890);
    (*(v22 + 8))(v25, v21);
    goto LABEL_5;
  }

  v27 = v30[0];
  v28 = v31;
  (*(v30[0] + 32))(v31, v13, v14);
  *v9 = sub_1000EA3C4();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v29 = sub_100002A10(&qword_100130918, &qword_1000F1010);
  sub_10003AD50(v25, a2, v28, &v9[*(v29 + 44)]);
  sub_100019210(v9, v6, &qword_100130908, &qword_1000F1008);
  swift_storeEnumTagMultiPayload();
  sub_10004036C(&qword_100130910, &qword_100130908);
  sub_10003E85C();
  sub_1000EA4A4();
  sub_10003FBF8(v9, &qword_100130908);
  (*(v27 + 8))(v31, v14);
  return (*(v22 + 8))(v25, v21);
}

uint64_t sub_10003AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v43 = a3;
  v44 = a4;
  v6 = sub_100002A10(&qword_100130920, &qword_1000F1018);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v42 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v35 - v10;
  v12 = sub_1000EBA54();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000EB694();
  v37 = *(v17 - 8);
  v18 = v37;
  v19 = *(v37 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v35 - v23;
  (*(v13 + 16))(v16, a1, v12);
  v36 = v24;
  sub_1000EB684();
  *(a2 + *(type metadata accessor for WidgetContentView(0) + 44));
  sub_1000EABC4();
  sub_1000E9FC4();
  v40 = v50;
  v41 = v48;
  v38 = v53;
  v39 = v52;
  v47 = 1;
  v46 = v49;
  v45 = v51;
  *v11 = sub_1000EA3D4();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v25 = sub_100002A10(&qword_100130928, &qword_1000F1020);
  sub_10003B120(a2, v43, &v11[*(v25 + 44)]);
  v26 = *(v18 + 16);
  v35 = v22;
  v26(v22, v24, v17);
  LOBYTE(v18) = v47;
  LOBYTE(a1) = v46;
  LOBYTE(a2) = v45;
  v27 = v42;
  sub_100019210(v11, v42, &qword_100130920, &qword_1000F1018);
  v28 = v44;
  v26(v44, v22, v17);
  v29 = sub_100002A10(&qword_100130930, &qword_1000F1028);
  v30 = &v28[*(v29 + 48)];
  *v30 = 0;
  v30[8] = v18;
  v31 = v40;
  *(v30 + 2) = v41;
  v30[24] = a1;
  *(v30 + 4) = v31;
  v30[40] = a2;
  v32 = v38;
  *(v30 + 6) = v39;
  *(v30 + 7) = v32;
  sub_100019210(v27, &v28[*(v29 + 64)], &qword_100130920, &qword_1000F1018);
  sub_10003FBF8(v11, &qword_100130920);
  v33 = *(v37 + 8);
  v33(v36, v17);
  sub_10003FBF8(v27, &qword_100130920);
  return (v33)(v35, v17);
}

uint64_t sub_10003B120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v66 = a2;
  v70 = a3;
  v4 = sub_1000EB464();
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  __chkstk_darwin(v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000EAEF4();
  v68 = *(v8 - 8);
  v69 = v8;
  v9 = *(v68 + 64);
  v10 = __chkstk_darwin(v8);
  v67 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v62 = &v45 - v12;
  v13 = sub_100002A10(&qword_100130938, &qword_1000F1030);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v65 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v45 - v18;
  v20 = type metadata accessor for PrecipitationChartView();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v45 - v25;
  v27 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v57 = v26;
  sub_10003E6F8(v27, v26, type metadata accessor for ForecastEntry);
  sub_1000EABC4();
  v28 = sub_1000E9FC4();
  v49 = v106[7];
  v56 = v108;
  v60 = v111;
  v61 = v110;
  v129 = 1;
  v127 = v107;
  v125 = v109;
  v29 = sub_100034E1C(v28);
  v54 = v30;
  v55 = v29;
  v53 = v31;
  v52 = v32;
  sub_1000EABC4();
  sub_1000E9FC4();
  v48 = v112;
  v51 = v114;
  v58 = v117;
  v59 = v116;
  v135 = 1;
  v133 = v113;
  v131 = v115;
  sub_1000EAB24();
  sub_1000EA9C4();
  v33 = sub_1000EA9D4();

  v34 = sub_1000EA564();
  v35 = &v19[*(v14 + 44)];
  *v35 = v33;
  v35[8] = v34;
  sub_1000EABC4();
  sub_1000E9FC4();
  v36 = v118;
  v37 = v120;
  v46 = v123;
  v47 = v122;
  v141 = 1;
  v139 = v119;
  v137 = v121;
  (*(v63 + 16))(v7, v66, v64);
  v38 = v62;
  sub_1000EAEE4();
  v50 = v24;
  sub_10003E6F8(v26, v24, type metadata accessor for PrecipitationChartView);
  v95 = 0;
  v96 = v129;
  *v97 = *v128;
  *&v97[3] = *&v128[3];
  v98 = v49;
  v99 = v127;
  *v100 = *v126;
  *&v100[3] = *&v126[3];
  v101 = v56;
  v102 = v125;
  *v103 = *v124;
  *&v103[3] = *&v124[3];
  v104 = v61;
  v105 = v60;
  v106[0] = v24;
  v106[1] = &v95;
  v93[0] = v55;
  v93[1] = v54;
  v93[2] = v53;
  v94 = v52 & 1;
  v82 = 0;
  v83 = v135;
  *v84 = *v134;
  *&v84[3] = *&v134[3];
  v85 = v48;
  v86 = v133;
  *v87 = *v132;
  *&v87[3] = *&v132[3];
  v88 = v51;
  v89 = v131;
  *&v90[3] = *&v130[3];
  *v90 = *v130;
  v91 = v59;
  v92 = v58;
  v106[2] = v93;
  v106[3] = &v82;
  v39 = v65;
  sub_100019210(v19, v65, &qword_100130938, &qword_1000F1030);
  v71 = 0;
  v72 = v141;
  *v73 = *v140;
  *&v73[3] = *&v140[3];
  v74 = v36;
  v75 = v139;
  *v76 = *v138;
  *&v76[3] = *&v138[3];
  v77 = v37;
  v78 = v137;
  *v79 = *v136;
  *&v79[3] = *&v136[3];
  v80 = v47;
  v81 = v46;
  v106[4] = v39;
  v106[5] = &v71;
  v40 = v67;
  v41 = v68;
  v42 = v69;
  (*(v68 + 16))(v67, v38, v69);
  v106[6] = v40;
  sub_100033914(v106, v70);
  v43 = *(v41 + 8);
  v43(v38, v42);
  sub_10003FBF8(v19, &qword_100130938);
  sub_10003FBA4(v57, type metadata accessor for PrecipitationChartView);
  v43(v40, v42);
  sub_10003FBF8(v39, &qword_100130938);

  return sub_10003FBA4(v50, type metadata accessor for PrecipitationChartView);
}

void sub_10003B780()
{
  sub_100006A58();
  v1 = v0;
  v68 = v2;
  v3 = type metadata accessor for WidgetContentView(0);
  v4 = *(v3 - 8);
  v66 = v3 - 8;
  v70 = v4;
  v69 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v67 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1000EA504();
  v6 = sub_1000090D4(v65);
  v64 = v7;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v59 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002A10(&qword_100130630, &qword_1000F0DC0);
  sub_1000069E4(v11);
  v13 = *(v12 + 64);
  sub_100009204();
  __chkstk_darwin(v14);
  v16 = (&v55 - v15);
  v60 = sub_100002A10(&qword_100130638, &qword_1000F0DC8);
  sub_1000090D4(v60);
  v61 = v17;
  v19 = *(v18 + 64);
  sub_100009204();
  __chkstk_darwin(v20);
  v56 = &v55 - v21;
  v62 = sub_100002A10(&qword_100130640, &qword_1000F0DD0);
  sub_1000090D4(v62);
  v63 = v22;
  v24 = *(v23 + 64);
  sub_100009204();
  __chkstk_darwin(v25);
  v58 = &v55 - v26;
  *v16 = sub_1000EABD4();
  v16[1] = v27;
  v28 = sub_100002A10(&qword_100130648, &qword_1000F0DD8);
  sub_10003BDC4(v1, v16 + *(v28 + 44));
  sub_1000EABA4();
  v73 = v1;
  v72 = v1;
  v57 = v1;
  v29 = sub_100002A10(&qword_100130650, &qword_1000F0DE0);
  v30 = sub_100002A10(&qword_100130658, &qword_1000F0DE8);
  sub_1000404D0();
  v32 = sub_10004036C(v31, &qword_100130630);
  v33 = sub_10003DA50();
  v34 = sub_10003DB08();
  sub_1000EA954();
  sub_10003FBF8(v16, &qword_100130630);
  v35 = v59;
  sub_1000EA4F4();
  v71 = v1;
  sub_1000EABC4();
  v55 = v36;
  v37 = type metadata accessor for BackgroundView(0);
  v74 = v11;
  v75 = &type metadata for Solarium;
  v76 = v29;
  v77 = v30;
  v78 = v32;
  v79 = &protocol witness table for Solarium;
  v80 = v33;
  v81 = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = sub_10003E7B8(&qword_100130678, type metadata accessor for BackgroundView);
  v39 = v58;
  v40 = v35;
  v41 = v60;
  v42 = v56;
  sub_1000EA904();
  (*(v64 + 8))(v40, v65);
  v43 = v41;
  (*(v61 + 8))(v42, v41);
  v44 = *(v66 + 44);
  v45 = type metadata accessor for ForecastEntry(0);
  v46 = v57;
  v47 = v57 + *(v45 + 24) + v44;
  LODWORD(v42) = *(type metadata accessor for WidgetContext() + 44);
  v74 = v43;
  v75 = v37;
  v76 = OpaqueTypeConformance2;
  v77 = v54;
  swift_getOpaqueTypeConformance2();
  v48 = v68;
  v49 = v62;
  sub_1000EA844();
  (*(v63 + 8))(v39, v49);
  v50 = v67;
  sub_10003E6F8(v46, v67, type metadata accessor for WidgetContentView);
  v51 = (*(v70 + 80) + 16) & ~*(v70 + 80);
  v52 = swift_allocObject();
  sub_10003E754(v50, v52 + v51, type metadata accessor for WidgetContentView);
  v53 = (v48 + *(sub_100002A10(&qword_100130680, &qword_1000F0DF0) + 36));
  *v53 = sub_10003DBEC;
  v53[1] = v52;
  sub_100006A20();
}

uint64_t sub_10003BDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v109 = a2;
  v93 = sub_100002A10(&qword_1001306A0, &qword_1000F0E70);
  v3 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v88 = v84 - v4;
  v89 = sub_100002A10(&qword_1001306A8, &qword_1000F0E78);
  v5 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v91 = v84 - v6;
  v90 = sub_100002A10(&qword_1001306B0, &qword_1000F0E80);
  v7 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v87 = v84 - v8;
  v108 = sub_100002A10(&qword_1001306B8, &qword_1000F0E88);
  v9 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108);
  v92 = v84 - v10;
  v11 = type metadata accessor for WidgetContentView(0);
  v12 = v11 - 8;
  v100 = *(v11 - 8);
  v13 = *(v100 + 64);
  __chkstk_darwin(v11);
  v101 = v14;
  v102 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_100002A10(&qword_1001306C0, &qword_1000F0E90);
  v15 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v98 = (v84 - v16);
  v97 = sub_100002A10(&qword_1001306C8, &qword_1000F0E98);
  v17 = *(*(v97 - 8) + 64);
  __chkstk_darwin(v97);
  v95 = v84 - v18;
  v103 = sub_100002A10(&qword_1001306D0, &qword_1000F0EA0);
  v19 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v99 = v84 - v20;
  v105 = sub_100002A10(&qword_1001306D8, &qword_1000F0EA8);
  v21 = *(*(v105 - 8) + 64);
  __chkstk_darwin(v105);
  v106 = v84 - v22;
  v104 = sub_100002A10(&qword_1001306E0, &qword_1000F0EB0);
  v23 = *(*(v104 - 8) + 64);
  __chkstk_darwin(v104);
  v25 = v84 - v24;
  v26 = sub_100002A10(&qword_1001306E8, &qword_1000F0EB8);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v29 = v84 - v28;
  v110 = sub_100002A10(&qword_1001306F0, &qword_1000F0EC0);
  v30 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v32 = v84 - v31;
  v107 = sub_100002A10(&qword_1001306F8, &qword_1000F0EC8);
  v33 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v35 = v84 - v34;
  v36 = type metadata accessor for ForecastEntry.Model(0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36);
  v39 = v84 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1 + *(v12 + 44);
  v41 = type metadata accessor for ForecastEntry(0);
  sub_10003E6F8(v40 + *(v41 + 28), v39, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100035794(__src);
    memcpy(v29, __src, 0x50uLL);
    swift_storeEnumTagMultiPayload();
    sub_10003E800(__src, &v111);
    sub_10003E85C();
    sub_10003E8B0();
    sub_1000EA4A4();
    sub_100019210(v32, v25, &qword_1001306F0, &qword_1000F0EC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    sub_1000EA4A4();
    sub_10003FBF8(v32, &qword_1001306F0);
    v48 = &qword_1001306F8;
    sub_100019210(v35, v106, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    sub_10003F218(__src);
    v49 = v35;
LABEL_10:
    v50 = v48;
    return sub_10003FBF8(v49, v50);
  }

  v84[1] = v26;
  v85 = v32;
  v86 = v25;
  v94 = v35;
  v42 = v106;
  sub_10003FBA4(v39, type metadata accessor for ForecastEntry.Model);
  if (sub_100034120())
  {
    v43 = v40 + *(v41 + 24);
    v44 = *(v43 + 48);
    v45 = *(v43 + 49);
    if (v44 == 6 || v45 == 6)
    {
      v47 = v95;
      sub_100037A7C(v95);
      sub_100019210(v47, v98, &qword_1001306C8, &qword_1000F0E98);
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100130758, &qword_1000F0EE8);
      sub_10003E968();
      sub_10004036C(&qword_100130750, &qword_100130758);
      v63 = v99;
      sub_1000EA4A4();
      sub_10003FBF8(v47, &qword_1001306C8);
    }

    else
    {
      v59 = v102;
      sub_10003E6F8(a1, v102, type metadata accessor for WidgetContentView);
      v60 = (*(v100 + 80) + 16) & ~*(v100 + 80);
      v61 = swift_allocObject();
      sub_10003E754(v59, v61 + v60, type metadata accessor for WidgetContentView);
      v62 = v98;
      *v98 = sub_10003FA58;
      v62[1] = v61;
      swift_storeEnumTagMultiPayload();
      sub_100002A10(&qword_100130758, &qword_1000F0EE8);
      sub_10003E968();
      sub_10004036C(&qword_100130750, &qword_100130758);
      v63 = v99;
      sub_1000EA4A4();
    }

    v64 = v86;
    sub_100019210(v63, v29, &qword_1001306D0, &qword_1000F0EA0);
    swift_storeEnumTagMultiPayload();
    sub_10003E85C();
    sub_10003E8B0();
    v65 = v85;
    sub_1000EA4A4();
    sub_100019210(v65, v64, &qword_1001306F0, &qword_1000F0EC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    v66 = v94;
    sub_1000EA4A4();
    sub_10003FBF8(v65, &qword_1001306F0);
    sub_100019210(v66, v42, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    sub_10003FBF8(v66, &qword_1001306F8);
    v49 = v63;
    v50 = &qword_1001306D0;
    return sub_10003FBF8(v49, v50);
  }

  v51 = sub_10003431C();
  v52 = v94;
  if (v51)
  {
    v53 = v102;
    sub_10003E6F8(a1, v102, type metadata accessor for WidgetContentView);
    v54 = (*(v100 + 80) + 16) & ~*(v100 + 80);
    v55 = swift_allocObject();
    sub_10003E754(v53, v55 + v54, type metadata accessor for WidgetContentView);
    *&v111 = sub_10003FA40;
    *(&v111 + 1) = v55;
    v112 = 0;

    sub_100002A10(&qword_100130780, &qword_1000F0EF8);
    sub_100002A10(&qword_100130790, &qword_1000F0F00);
    sub_10004036C(&qword_100130778, &qword_100130780);
    sub_10003ECAC();
    sub_1000EA4A4();
    v56 = __src[1];
    v57 = BYTE1(__src[1]);
    v58 = v86;
    *v86 = __src[0];
    *(v58 + 16) = v56;
    *(v58 + 17) = v57;
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130760, &qword_1000F0EF0);
    sub_10003EB68();
    sub_10003EBF4();
    sub_1000EA4A4();
    sub_100019210(v52, v42, &qword_1001306F8, &qword_1000F0EC8);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();

    v49 = v52;
    v50 = &qword_1001306F8;
    return sub_10003FBF8(v49, v50);
  }

  v68 = sub_100034518();
  v69 = v40 + *(v41 + 24);
  v70 = *(v69 + 48);
  if ((v68 & 1) == 0)
  {
    if (v70 == 6)
    {
      v76 = v87;
      sub_100036020(a1, v87);
      sub_100019210(v76, v91, &qword_1001306B0, &qword_1000F0E80);
      swift_storeEnumTagMultiPayload();
      sub_10003F058(&qword_1001307C8, &qword_1001306B0, &qword_1000F0E80, sub_10003EEFC);
      sub_10003F058(&qword_1001307F0, &qword_1001306A0, &qword_1000F0E70, sub_10003F0D0);
      v77 = v92;
      sub_1000EA4A4();
      sub_10003FBF8(v76, &qword_1001306B0);
    }

    else
    {
      v83 = v88;
      sub_100035BB8(v88);
      sub_100019210(v83, v91, &qword_1001306A0, &qword_1000F0E70);
      swift_storeEnumTagMultiPayload();
      sub_10003F058(&qword_1001307C8, &qword_1001306B0, &qword_1000F0E80, sub_10003EEFC);
      sub_10003F058(&qword_1001307F0, &qword_1001306A0, &qword_1000F0E70, sub_10003F0D0);
      v77 = v92;
      sub_1000EA4A4();
      sub_10003FBF8(v83, &qword_1001306A0);
    }

    v48 = &qword_1001306B8;
    sub_100019210(v77, v42, &qword_1001306B8, &qword_1000F0E88);
    swift_storeEnumTagMultiPayload();
    sub_10003ED8C();
    sub_10003EE18();
    sub_1000EA4A4();
    v49 = v77;
    goto LABEL_10;
  }

  v71 = *(v69 + 49);
  v72 = v102;
  sub_10003E6F8(a1, v102, type metadata accessor for WidgetContentView);
  v73 = (*(v100 + 80) + 16) & ~*(v100 + 80);
  if (v70 == 6 || v71 == 6)
  {
    v75 = swift_allocObject();
    sub_10003E754(v72, v75 + v73, type metadata accessor for WidgetContentView);
    *&v111 = sub_10003F994;
    *(&v111 + 1) = v75;
    LOBYTE(v112) = 0;
  }

  else
  {
    v78 = swift_allocObject();
    sub_10003E754(v72, v78 + v73, type metadata accessor for WidgetContentView);
    *&v111 = sub_10003F96C;
    *(&v111 + 1) = v78;
    LOBYTE(v112) = 1;
  }

  sub_100002A10(&qword_1001307A0, &qword_1000F0F08);
  sub_100002A10(&qword_1001307B0, &qword_1000F0F10);
  sub_10004036C(&qword_100130798, &qword_1001307A0);
  sub_10004036C(&qword_1001307A8, &qword_1001307B0);
  sub_1000EA4A4();
  v111 = __src[0];
  LOBYTE(v112) = __src[1];
  HIBYTE(v112) = 1;
  sub_10003F984();
  sub_10003F984();
  sub_100002A10(&qword_100130780, &qword_1000F0EF8);
  sub_100002A10(&qword_100130790, &qword_1000F0F00);
  sub_10004036C(&qword_100130778, &qword_100130780);
  sub_10003ECAC();
  sub_1000EA4A4();
  v79 = __src[1];
  v80 = BYTE1(__src[1]);
  v81 = v86;
  *v86 = __src[0];
  *(v81 + 16) = v79;
  *(v81 + 17) = v80;
  swift_storeEnumTagMultiPayload();
  sub_100002A10(&qword_100130760, &qword_1000F0EF0);
  sub_10003EB68();
  sub_10003EBF4();
  v82 = v94;
  sub_1000EA4A4();
  sub_100019210(v82, v42, &qword_1001306F8, &qword_1000F0EC8);
  swift_storeEnumTagMultiPayload();
  sub_10003ED8C();
  sub_10003EE18();
  sub_1000EA4A4();
  sub_10003F98C();
  sub_10003F98C();
  v49 = v82;
  v50 = &qword_1001306F8;
  return sub_10003FBF8(v49, v50);
}

uint64_t sub_10003D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = a1;
  v32 = a3;
  v4 = sub_100002A10(&qword_100130690, &qword_1000F0E68);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - v6;
  v30 = sub_100002A10(&qword_100130658, &qword_1000F0DE8);
  v8 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v29 = &v29 - v9;
  v10 = sub_1000EBC34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = a2;
  if ((sub_100033CDC() & 1) == 0)
  {
    goto LABEL_4;
  }

  v19 = v10;
  v20 = v18 + *(type metadata accessor for WidgetContentView(0) + 36);
  v21 = *(type metadata accessor for ForecastEntry(0) + 24);
  if (*(v20 + v21 + *(type metadata accessor for WidgetContext() + 48) + 8) != 1)
  {
    goto LABEL_4;
  }

  v22 = v19;
  sub_100033FA4();
  sub_1000EBC14();
  sub_10003E7B8(&qword_100130698, &type metadata accessor for WidgetRenderingMode);
  v23 = sub_1000EBE24();
  v24 = *(v11 + 8);
  v24(v15, v22);
  v24(v17, v22);
  if ((v23 & 1) == 0)
  {
    sub_1000EA9A4();
    v26 = sub_1000EA9D4();

    v27 = v29;
    sub_100019210(v31, v29, &qword_100130630, &qword_1000F0DC0);
    v28 = v27 + *(v30 + 36);
    *v28 = v26;
    *(v28 + 8) = xmmword_1000F0D30;
    *(v28 + 24) = 0x4000000000000000;
    sub_100019210(v27, v7, &qword_100130658, &qword_1000F0DE8);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130630, &qword_1000F0DC0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630);
    sub_1000EA4A4();
    return sub_10003FBF8(v27, &qword_100130658);
  }

  else
  {
LABEL_4:
    sub_100019210(v31, v7, &qword_100130630, &qword_1000F0DC0);
    swift_storeEnumTagMultiPayload();
    sub_100002A10(&qword_100130630, &qword_1000F0DC0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630);
    return sub_1000EA4A4();
  }
}

double sub_10003D564@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((sub_100033CDC() & 1) != 0 && (v6 = a2 + *(type metadata accessor for WidgetContentView(0) + 36), v7 = *(type metadata accessor for ForecastEntry(0) + 24), *(v6 + v7 + *(type metadata accessor for WidgetContext() + 48) + 8) == 1))
  {
    sub_1000EA9A4();
    v8 = sub_1000EA9D4();
  }

  else
  {
    v8 = sub_1000EA9B4();
  }

  sub_100019210(a1, a3, &qword_100130630, &qword_1000F0DC0);
  v9 = a3 + *(sub_100002A10(&qword_100130658, &qword_1000F0DE8) + 36);
  *v9 = v8;
  result = 5.0;
  *(v9 + 8) = xmmword_1000F0D30;
  *(v9 + 24) = 0x4000000000000000;
  return result;
}

uint64_t sub_10003D654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ForecastEntry.Model(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for WidgetContentView(0) + 36);
  v9 = type metadata accessor for ForecastEntry(0);
  v10 = *(v9 + 24);
  v11 = (v8 + v10 + *(type metadata accessor for WidgetContext() + 48));
  v12 = *v11;
  v13 = *(v11 + 8);
  v14 = type metadata accessor for BackgroundView(0);
  v15 = v14[5];
  sub_10003E6F8(v8 + *(v9 + 28), v7, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10003E754(v7, a2 + v15, type metadata accessor for WeatherDataViewModel);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = type metadata accessor for WeatherDataViewModel();
  sub_1000028A0(a2 + v15, v16, 1, v17);
  *a2 = v12;
  *(a2 + 8) = v13;
  v18 = v14[6];
  *(a2 + v18) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v19 = a2 + v14[7];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
}

void sub_10003D818(uint64_t *a1, uint64_t a2)
{
  v4 = sub_1000EB344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(*a1 + 16);
  if (v10)
  {
    v11 = (a2 + *(type metadata accessor for WidgetContentView(0) + 40));
    v12 = *v11;
    v13 = v11[1];
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = v9 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v31 = *(v14 + 56);
    v32 = v15;
    v33 = v14;
    v17 = (v14 - 8);
    while (1)
    {
      v32(v8, v16, v4);
      v18 = sub_1000EB334();
      sub_1000EB324();
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      (*v17)(v8, v4);
      v37 = v12;
      v38 = v13;

      sub_100002A10(&qword_100130688, &qword_1000F0DF8);
      sub_1000EAA94();
      v27 = v39;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_10003E6E4(v27);
        v27 = v29;
        if ((v18 & 0x8000000000000000) != 0)
        {
LABEL_9:
          __break(1u);
          return;
        }
      }

      if (v18 >= *(v27 + 16))
      {
        break;
      }

      v28 = (v27 + 32 * v18);
      v28[4] = v20;
      v28[5] = v22;
      v28[6] = v24;
      v28[7] = v26;
      v35 = v12;
      v36 = v13;
      v34 = v27;
      sub_1000EAAA4();

      v16 += v31;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10003DA50()
{
  result = qword_100130668;
  if (!qword_100130668)
  {
    sub_100002ABC(&qword_100130650, &qword_1000F0DE0);
    sub_10003DB08();
    sub_10004036C(&qword_100130660, &qword_100130630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130668);
  }

  return result;
}

unint64_t sub_10003DB08()
{
  result = qword_100130670;
  if (!qword_100130670)
  {
    sub_100002ABC(&qword_100130658, &qword_1000F0DE8);
    sub_10004036C(&qword_100130660, &unk_100130630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130670);
  }

  return result;
}

void sub_10003DBEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for WidgetContentView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_10003D818(a1, v4);
}

__n128 sub_10003DC5C@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_1000EABC4();
  v5 = v4;
  sub_10003DCB8(v1, v10);
  v6 = v11;
  v7 = v12;
  result = v10[0];
  v9 = v10[1];
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 32) = v9;
  *(a1 + 48) = v6;
  *(a1 + 56) = v7;
  return result;
}

uint64_t sub_10003DCB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000EA994();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000EA2C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + *(type metadata accessor for BackgroundView(0) + 28);
  v15 = *v14;
  if (v14[8] != 1)
  {

    sub_1000EC1A4();
    v21 = sub_1000EA524();
    v29 = v9;
    v22 = v8;
    v23 = v5;
    v24 = a1;
    v25 = v4;
    v26 = v21;
    sub_1000E9F14();

    v4 = v25;
    a1 = v24;
    v5 = v23;
    v8 = v22;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v15, 0);
    (*(v10 + 8))(v13, v29);
    if (v30)
    {
      goto LABEL_3;
    }

LABEL_5:
    v27 = *a1;

    sub_1000EAC24();
    sub_1000EAC34();
    sub_1000E9FE4();
    v16 = v30;
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v34;
    goto LABEL_6;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
LABEL_6:
  sub_10003DF74();
  (*(v5 + 104))(v8, enum case for Color.RGBColorSpace.sRGB(_:), v4);
  result = sub_1000EAA04();
  *a2 = v16;
  a2[1] = v17;
  a2[2] = v18;
  a2[3] = v19;
  a2[4] = v20;
  a2[5] = result;
  return result;
}

double sub_10003DF74()
{
  v1 = v0;
  v2 = sub_1000EA3A4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v35 - v8;
  v10 = sub_1000EA2C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for BackgroundView(0);
  v21 = v1 + *(v20 + 28);
  v22 = *v21;
  if (*(v21 + 8) == 1)
  {
    v23 = 1.0;
    if (v22)
    {
      return v23;
    }
  }

  else
  {

    sub_1000EC1A4();
    v36 = v10;
    v24 = sub_1000EA524();
    v37 = v9;
    v25 = v24;
    sub_1000E9F14();

    v9 = v37;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v22, 0);
    (*(v11 + 8))(v14, v36);
    v23 = 1.0;
    if ((v38 & 0x100000000000000) != 0)
    {
      return v23;
    }
  }

  v26 = v1 + *(v20 + 24);
  sub_10003E52C(&qword_10012EEA8, &unk_1000EED70, &type metadata accessor for ColorSchemeContrast, v15, v16, v17, v18, v19, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
  (*(v3 + 104))(v7, enum case for ColorSchemeContrast.increased(_:), v2);
  LOBYTE(v26) = sub_1000EA394();
  v27 = *(v3 + 8);
  v27(v7, v2);
  v27(v9, v2);
  if (v26)
  {
    v28 = *v1;
    v29 = sub_1000EAB54();
    v23 = 0.0;
    if (v29)
    {
      v30 = v29;
      sub_1000EA9C4();
      sub_1000EA974();
      v32 = v31;

      if (v32 < 4.5)
      {
        sub_10003E2E0(v30, 0.0, 0.46, 4.5);
        v23 = v33;
      }
    }
  }

  else if (*(v1 + 8))
  {
    return 0.1;
  }

  else
  {
    return 0.0;
  }

  return v23;
}

uint64_t sub_10003E2E0(uint64_t a1, double a2, double a3, double a4)
{
  v8 = sub_1000EA994();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 - a2 <= 0.01)
  {
    sub_1000EA964();
    (*(v9 + 104))(v12, enum case for Color.RGBColorSpace.sRGB(_:), v8);
    sub_1000EA9F4();
    sub_1000EA9C4();
    sub_1000EA974();
  }

  else
  {
    sub_1000EA964();
    (*(v9 + 104))(v12, enum case for Color.RGBColorSpace.sRGB(_:), v8);
    sub_1000EA9F4();
    sub_1000EA9C4();
    sub_1000EA974();
    v14 = v13;

    if (v14 >= a4)
    {
      v15.n128_f64[0] = a2;
      v16.n128_f64[0] = (a2 + a3) * 0.5;
    }

    else
    {
      v15.n128_f64[0] = (a2 + a3) * 0.5;
      v16.n128_f64[0] = a3;
    }

    return sub_10003E2E0(a1, v15, v16, a4);
  }
}

void sub_10003E52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100006A58();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = v21;
  v32 = sub_1000405C8();
  v33 = sub_1000090D4(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  __chkstk_darwin(v33);
  sub_100040480();
  v38 = sub_100002A10(v30, v28);
  sub_1000069E4(v38);
  v40 = *(v39 + 64);
  sub_100009204();
  __chkstk_darwin(v41);
  v43 = (&a9 - v42);
  sub_100019210(v31, &a9 - v42, v30, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v44 = v26(0);
    sub_1000069E4(v44);
    (*(v45 + 32))(v20, v43);
  }

  else
  {
    v46 = *v43;
    sub_1000EC1A4();
    v47 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v35 + 8))(v22, v32);
  }

  sub_100006A20();
}

uint64_t sub_10003E6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 16);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_10003E754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_1000069E4(v4);
  v6 = *(v5 + 32);
  v7 = sub_100019AC0();
  v8(v7);
  return a2;
}

uint64_t sub_10003E7B8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10003E85C()
{
  result = qword_100130700;
  if (!qword_100130700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130700);
  }

  return result;
}

unint64_t sub_10003E8B0()
{
  result = qword_100130708;
  if (!qword_100130708)
  {
    sub_100002ABC(&qword_1001306D0, &qword_1000F0EA0);
    sub_10003E968();
    sub_10004036C(&qword_100130750, &unk_100130758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130708);
  }

  return result;
}

unint64_t sub_10003E968()
{
  result = qword_100130710;
  if (!qword_100130710)
  {
    sub_100002ABC(&qword_1001306C8, &qword_1000F0E98);
    sub_10003E9F4();
    sub_10003EAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130710);
  }

  return result;
}

unint64_t sub_10003E9F4()
{
  result = qword_100130718;
  if (!qword_100130718)
  {
    sub_100002ABC(&qword_100130720, &qword_1000F0ED0);
    sub_10003E7B8(&qword_100130728, &type metadata accessor for AccessibilitySizeCurrentObservationBannerView);
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130718);
  }

  return result;
}

unint64_t sub_10003EAB0()
{
  result = qword_100130730;
  if (!qword_100130730)
  {
    sub_100002ABC(&qword_100130738, &qword_1000F0ED8);
    sub_10004036C(&qword_100130740, &unk_100130748);
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130730);
  }

  return result;
}

unint64_t sub_10003EB68()
{
  result = qword_100130768;
  if (!qword_100130768)
  {
    sub_100002ABC(&qword_1001306F0, &qword_1000F0EC0);
    sub_10003E85C();
    sub_10003E8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130768);
  }

  return result;
}

unint64_t sub_10003EBF4()
{
  result = qword_100130770;
  if (!qword_100130770)
  {
    sub_100002ABC(&qword_100130760, &qword_1000F0EF0);
    sub_10004036C(&qword_100130778, &unk_100130780);
    sub_10003ECAC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130770);
  }

  return result;
}

unint64_t sub_10003ECAC()
{
  result = qword_100130788;
  if (!qword_100130788)
  {
    sub_100002ABC(&qword_100130790, &qword_1000F0F00);
    sub_10004036C(&qword_100130798, &unk_1001307A0);
    sub_10004036C(&qword_1001307A8, &unk_1001307B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130788);
  }

  return result;
}

unint64_t sub_10003ED8C()
{
  result = qword_1001307B8;
  if (!qword_1001307B8)
  {
    sub_100002ABC(&qword_1001306F8, &qword_1000F0EC8);
    sub_10003EB68();
    sub_10003EBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307B8);
  }

  return result;
}

unint64_t sub_10003EE18()
{
  result = qword_1001307C0;
  if (!qword_1001307C0)
  {
    sub_100002ABC(&qword_1001306B8, &qword_1000F0E88);
    sub_10003F058(&qword_1001307C8, &unk_1001306B0, &unk_1000F0E80, sub_10003EEFC);
    sub_10003F058(&qword_1001307F0, &unk_1001306A0, &unk_1000F0E70, sub_10003F0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307C0);
  }

  return result;
}

unint64_t sub_10003EEFC()
{
  result = qword_1001307D0;
  if (!qword_1001307D0)
  {
    sub_100002ABC(&qword_1001307D8, &qword_1000F0F18);
    sub_100002ABC(&qword_1001307E0, &unk_1000F0F20);
    sub_100002ABC(&qword_10012F6B0, &unk_1000EFB80);
    sub_10004036C(&qword_1001307E8, &qword_1001307E0);
    sub_10004036C(&qword_10012F6C0, &qword_10012F6B0);
    swift_getOpaqueTypeConformance2();
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307D0);
  }

  return result;
}

uint64_t sub_10003F058(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = sub_1000405BC(0, a2);
    sub_100002ABC(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10003F0D0()
{
  result = qword_1001307F8;
  if (!qword_1001307F8)
  {
    sub_100002ABC(&qword_100130800, &qword_1000F0F30);
    sub_10003F15C();
    sub_10003E85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001307F8);
  }

  return result;
}

unint64_t sub_10003F15C()
{
  result = qword_100130808;
  if (!qword_100130808)
  {
    sub_100002ABC(&qword_100130810, &qword_1000F0F38);
    sub_10003E7B8(&qword_100130818, &type metadata accessor for CurrentObservationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130808);
  }

  return result;
}

uint64_t sub_10003F26C()
{
  v1 = type metadata accessor for WidgetContentView(0);
  v83 = *(*(v1 - 1) + 80);
  v82 = *(*(v1 - 1) + 64);
  v2 = (v0 + ((v83 + 16) & ~v83));
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1000EBC44();
    sub_1000069D0(v3);
    (*(v4 + 8))(v2);
  }

  else
  {
    v5 = *v2;
  }

  v6 = v1[5];
  sub_100002A10(&qword_10012F6E0, &unk_1000FA260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1000EA3B4();
    sub_1000069D0(v7);
    (*(v8 + 8))(&v2[v6]);
  }

  else
  {
    v9 = *&v2[v6];
  }

  sub_100006530(*&v2[v1[6]], v2[v1[6] + 8]);
  v10 = v1[7];
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1000EA694();
    sub_1000069D0(v11);
    (*(v12 + 8))(&v2[v10]);
  }

  else
  {
    v13 = *&v2[v10];
  }

  v14 = v1[8];
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EBC34();
    sub_1000069D0(v15);
    (*(v16 + 8))(&v2[v14]);
  }

  else
  {
    v17 = *&v2[v14];
  }

  v18 = &v2[v1[9]];
  v19 = sub_1000E8604();
  sub_1000069E4(v19);
  v81 = *(v20 + 8);
  v81(v18, v19);
  v21 = type metadata accessor for ForecastEntry(0);
  v22 = v21[5];
  v23 = sub_1000EBD64();
  if (!sub_100005B30(&v18[v22], 1, v23))
  {
    sub_1000326A0(v23);
    (*(v24 + 8))(&v18[v22], v23);
  }

  v25 = &v18[v21[6]];
  v26 = *(v25 + 1);

  v27 = *(v25 + 3);

  v28 = *(v25 + 5);

  v29 = type metadata accessor for WidgetContext();
  v30 = *(v29 + 44);
  v31 = sub_1000E8524();
  if (!sub_100005B30(&v25[v30], 1, v31))
  {
    sub_1000326A0(v31);
    (*(v32 + 8))(&v25[v30], v31);
  }

  v33 = *&v25[*(v29 + 48)];

  v34 = &v18[v21[7]];
  type metadata accessor for ForecastEntry.Model(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for WeatherDataViewModel();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:
        v73 = sub_1000EB2B4();
        sub_1000069D0(v73);
        (*(v74 + 8))(v34, v75);
        break;
      case 1:
        v63 = sub_1000E8634();
        sub_1000069D0(v63);
        (*(v64 + 8))(v34);
        v65 = type metadata accessor for InstantWeatherViewModel();
        v66 = *(v65 + 20);
        v67 = sub_1000E9A84();
        sub_1000069D0(v67);
        (*(v68 + 8))(&v34[v66]);
        v69 = *(v65 + 24);
        v70 = sub_1000EB674();
        sub_1000069D0(v70);
        (*(v71 + 8))(&v34[v69], v72);
        break;
      case 0:
        v36 = sub_1000E8634();
        sub_1000069E4(v36);
        v80 = *(v37 + 8);
        v80(v34, v36);
        v38 = type metadata accessor for AggregateWeatherViewModel(0);
        v39 = v38[5];
        v40 = sub_1000E9A84();
        sub_1000069D0(v40);
        (*(v41 + 8))(&v34[v39]);
        v42 = v38[6];
        v43 = sub_1000EB674();
        sub_1000069D0(v43);
        (*(v44 + 8))(&v34[v42]);
        v45 = *&v34[v38[7]];

        v46 = *&v34[v38[8]];

        v47 = &v34[v38[9]];
        v48 = type metadata accessor for AirQualityViewModel();
        if (!sub_100005B30(v47, 1, v48))
        {
          v80(v47, v36);
          v81((v47 + v48[5]), v19);
          v49 = v48[7];
          v50 = sub_1000E8E84();
          sub_1000069D0(v50);
          (*(v51 + 8))(v47 + v49);
          v52 = v48[8];
          v53 = sub_1000E8F64();
          sub_1000069D0(v53);
          (*(v54 + 8))(v47 + v52);
        }

        v55 = v38[10];
        v56 = sub_1000EBAF4();
        if (!sub_100005B30(&v34[v55], 1, v56))
        {
          sub_1000326A0(v56);
          (*(v57 + 8))(&v34[v55], v56);
        }

        v58 = *&v34[v38[11]];

        v59 = v38[13];
        if (!sub_100005B30(&v34[v59], 1, v31))
        {
          sub_1000326A0(v31);
          (*(v60 + 8))(&v34[v59], v31);
        }

        v61 = v38[14];
        v62 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
        if (!sub_100005B30(&v34[v61], 1, v62))
        {
          v81(&v34[v61], v19);
        }

        break;
    }
  }

  v76 = &v2[v1[10]];
  v77 = *v76;

  v78 = *(v76 + 1);

  return _swift_deallocObject(v0, ((v83 + 16) & ~v83) + v82, v83 | 7);
}

uint64_t sub_10003F9AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for WidgetContentView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_10003FA70()
{
  result = qword_100130860;
  if (!qword_100130860)
  {
    sub_100002ABC(&qword_100130848, &qword_1000F0F68);
    sub_10004036C(&qword_100130868, &unk_100130870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130860);
  }

  return result;
}

unint64_t sub_10003FB28()
{
  result = qword_1001308B0;
  if (!qword_1001308B0)
  {
    sub_100002ABC(&qword_1001308A8, &qword_1000F0FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001308B0);
  }

  return result;
}

uint64_t sub_10003FBA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069D0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10003FBF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1000405BC(a1, a2);
  v5 = sub_100002A10(v3, v4);
  sub_1000069D0(v5);
  (*(v6 + 8))(a1);
  return a1;
}

uint64_t sub_10003FC64(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100019B04(*a1);
  }

  v7 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
  v8 = sub_100006A04(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = *(a3 + 20);
  }

  else
  {
    v10 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v11 = *(a3 + 24);
  }

  return sub_100005B30(a1 + v11, a2, v10);
}

void *sub_10003FD4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_100002A10(&qword_10012F038, &qword_1000F0F90);
    v9 = sub_100006A04(v8);
    if (*(v10 + 84) == a3)
    {
      v11 = v9;
      v12 = *(a4 + 20);
    }

    else
    {
      v11 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
      v12 = *(a4 + 24);
    }

    return sub_1000028A0(v5 + v12, a2, a2, v11);
  }

  return result;
}

void sub_10003FE28()
{
  sub_10003FF34(319, &unk_100130A58, type metadata accessor for WeatherDataViewModel, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10003FF34(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_100005F48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003FF34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10003FFA4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003FFC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100040004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10004006C()
{
  result = qword_100130A90;
  if (!qword_100130A90)
  {
    sub_100002ABC(&qword_100130680, &qword_1000F0DF0);
    sub_100002ABC(&qword_100130640, &qword_1000F0DD0);
    sub_100002ABC(&qword_100130638, &qword_1000F0DC8);
    type metadata accessor for BackgroundView(255);
    sub_100002ABC(&qword_100130630, &qword_1000F0DC0);
    sub_100002ABC(&qword_100130650, &qword_1000F0DE0);
    sub_100002ABC(&qword_100130658, &qword_1000F0DE8);
    sub_10004036C(&qword_100130660, &qword_100130630);
    sub_10003DA50();
    sub_10003DB08();
    swift_getOpaqueTypeConformance2();
    sub_10003E7B8(&qword_100130678, type metadata accessor for BackgroundView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10004036C(&qword_100130A98, &unk_100130AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130A90);
  }

  return result;
}

uint64_t sub_10004036C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1000405BC(0, a2);
    sub_100002ABC(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000403B4()
{
  result = qword_100130AD0;
  if (!qword_100130AD0)
  {
    sub_100002ABC(&qword_100130AA8, &qword_1000F12E0);
    sub_10003E7B8(&qword_100130AD8, type metadata accessor for ErrorView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130AD0);
  }

  return result;
}

void sub_100040498(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = v2;
  *(a1 + 8) = v3;
}

__n128 sub_1000404E8@<Q0>(__n128 **a1@<X0>, __n128 *a2@<X8>)
{
  result = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  a2[2] = result;
  a2[3] = v3;
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_100040508()
{

  return type metadata accessor for WidgetContentView(0);
}

uint64_t sub_100040528()
{

  return sub_1000E9F14();
}

uint64_t sub_100040548@<X0>(uint64_t a1@<X8>)
{

  return sub_100019210(v1 + a1, v2, v3, v4);
}

uint64_t sub_100040578()
{
  v3 = v0 + *(v2 + 96);
  v5 = *(v1 + 32);
  return *(v1 + 40);
}

uint64_t sub_100040588()
{

  return swift_getAtKeyPath();
}

uint64_t sub_1000405A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  return sub_10003E6F8(a1, v2 + a2, v3);
}

uint64_t sub_1000405C8()
{

  return sub_1000EA2C4();
}

uint64_t sub_1000405E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_100002A10(&qword_100130B08, &qword_1000F13B0);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v45 - v11;
  v13 = sub_100002A10(&qword_100130B10, &qword_1000F13B8);
  v47 = sub_1000090D4(v13);
  v48 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v47);
  v18 = &v45 - v17;
  v19 = sub_100002A10(&qword_100130B18, &unk_1000F13C0);
  v49 = sub_1000090D4(v19);
  v50 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v49);
  v46 = &v45 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v52 = sub_1000D88B8(0, a1, a2);
  type metadata accessor for LocationContentView();
  sub_100040CB4(&qword_100130B20, type metadata accessor for LocationContentView);
  sub_100040CB4(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_100040CFC();
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
  (*(v38 + 104))(v42 + v41, enum case for WidgetFamily.accessoryInline(_:), v36);
  v52 = v34;
  v53 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v43 = v49;
  sub_1000EA454();

  return (*(v50 + 8))(v35, v43);
}

uint64_t sub_100040AEC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for LocationContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100040B68()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.LocationComplication(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_100040C84@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100040B68();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100040CB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100040CFC()
{
  result = qword_100130B28;
  if (!qword_100130B28)
  {
    sub_100002ABC(&qword_100130B08, &qword_1000F13B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130B28);
  }

  return result;
}

uint64_t sub_100040D64()
{
  sub_100002ABC(&qword_100130B18, &unk_1000F13C0);
  sub_100002ABC(&qword_100130B10, &qword_1000F13B8);
  sub_100002ABC(&qword_100130B08, &qword_1000F13B0);
  sub_100040CFC();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100040E28@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AggregateWeatherViewModel(0);
  v4 = sub_1000069E4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WeatherDataViewModel();
  v10 = sub_1000069E4(v9);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v18 = type metadata accessor for ForecastEntry.Model(0);
  v19 = sub_1000069E4(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v24 + 28), v23, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000DA94(v23, v17, type metadata accessor for WeatherDataViewModel);
    sub_10000DA34(v17, v15, type metadata accessor for WeatherDataViewModel);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_10001B078(v15);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v25 = sub_1000E9F64();
      sub_100008CB8(v25, qword_100145C10);
      v26 = sub_1000E9F44();
      v27 = sub_1000EC194();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Expected aggregate but got instant or sunriseSunset", v28, 2u);
      }

      sub_10001B078(v17);
      v29 = 1;
    }

    else
    {
      sub_10004130C();
      sub_10000DA94(v15, v8, v30);
      if (qword_10012EB38 != -1)
      {
        sub_10000DC3C();
      }

      v31 = sub_1000E9F64();
      sub_100008CB8(v31, qword_100145C10);
      v32 = sub_1000E9F44();
      v33 = sub_1000EC1B4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&_mh_execute_header, v32, v33, "Making Rain complication view model entry from aggregate weather", v34, 2u);
      }

      sub_10001B078(v17);
      sub_10004130C();
      sub_10000DA94(v8, a1, v35);
      v29 = 0;
    }
  }

  else if (*v23)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2;
  }

  return sub_1000028A0(a1, v29, 2, v3);
}

uint64_t sub_1000411AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AggregateWeatherViewModel(0);
  v5 = sub_100005B30(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100041208(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AggregateWeatherViewModel(0);

  return sub_1000028A0(a1, v5, a3, v6);
}

uint64_t type metadata accessor for RainComplicationDataStatus()
{
  result = qword_100130BA0;
  if (!qword_100130BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000412B4()
{
  v0 = type metadata accessor for AggregateWeatherViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100041324@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v2 = 1;
  switch(a1)
  {
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      sub_1000EBD54();
      v2 = 0;
      break;
    default:
      break;
  }

  v4 = sub_1000EBD64();

  return sub_1000028A0(a2, v2, 1, v4);
}

uint64_t sub_100041404@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v2 = sub_1000E8784();
  v3 = sub_1000090D4(v2);
  v71 = v4;
  v72 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_1000091AC();
  v70 = v7 - v8;
  __chkstk_darwin(v9);
  v68 = &v66 - v10;
  v69 = sub_1000EAFD4();
  v11 = sub_1000090D4(v69);
  v67 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v11);
  sub_1000091AC();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  v20 = &v66 - v19;
  v21 = type metadata accessor for AggregateWeatherViewModel(0);
  v22 = sub_1000069E4(v21);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WeatherDataViewModel();
  v28 = sub_1000069E4(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_1000091AC();
  v33 = v31 - v32;
  __chkstk_darwin(v34);
  v36 = &v66 - v35;
  v37 = type metadata accessor for ForecastEntry.Model(0);
  v38 = sub_1000069E4(v37);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v66 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for ForecastEntry(0);
  sub_10000DA34(v1 + *(v43 + 28), v42, type metadata accessor for ForecastEntry.Model);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v51 = *v42;
    v50 = sub_1000EB364();
    if (!v51)
    {
      v52 = v73;
      v53 = 2;
      return sub_1000028A0(v52, v53, 2, v50);
    }

    goto LABEL_9;
  }

  sub_10000DA94(v42, v36, type metadata accessor for WeatherDataViewModel);
  sub_10000DA34(v36, v33, type metadata accessor for WeatherDataViewModel);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_10000DC24();
    sub_10000DBCC(v33, v44);
    if (qword_10012EB38 != -1)
    {
      sub_10000DC3C();
    }

    v45 = sub_1000E9F64();
    sub_100008CB8(v45, qword_100145C10);
    v46 = sub_1000E9F44();
    v47 = sub_1000EC194();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Expected aggregate but got instant or sunriseSunset", v48, 2u);
    }

    sub_10000DC24();
    sub_10000DBCC(v36, v49);
    v50 = sub_1000EB364();
LABEL_9:
    v52 = v73;
    v53 = 1;
    return sub_1000028A0(v52, v53, 2, v50);
  }

  sub_10000DA94(v33, v26, type metadata accessor for AggregateWeatherViewModel);
  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v54 = sub_1000E9F64();
  sub_100008CB8(v54, qword_100145C10);
  v55 = sub_1000E9F44();
  v56 = sub_1000EC1B4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&_mh_execute_header, v55, v56, "Making Sun complication view model entry from aggregate weather", v57, 2u);
  }

  sub_100044A44(v20);
  v58 = &v26[*(v21 + 20)];
  v59 = v68;
  sub_1000E9A74();
  v60 = v67;
  v61 = v69;
  (*(v67 + 16))(v17, v20, v69);
  v62 = v71;
  v63 = v72;
  (*(v71 + 16))(v70, v59, v72);
  sub_1000EB354();
  (*(v62 + 8))(v59, v63);
  (*(v60 + 8))(v20, v61);
  sub_10000DBCC(v26, type metadata accessor for AggregateWeatherViewModel);
  sub_10000DC24();
  sub_10000DBCC(v36, v64);
  v50 = sub_1000EB364();
  v52 = v73;
  v53 = 0;
  return sub_1000028A0(v52, v53, 2, v50);
}

uint64_t sub_100041990(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_100041A4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for SunEventsContentView()
{
  result = qword_100130CC0;
  if (!qword_100130CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041B64@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_100041D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v51 = sub_100002A10(&qword_100130CF8, &qword_1000F14A8);
  v3 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v52 = &v45 - v4;
  v59 = sub_100002A10(&qword_100130D00, &qword_1000F14B0);
  v5 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v55 = &v45 - v6;
  v56 = sub_1000EB034();
  v54 = *(v56 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v56);
  v53 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_100002A10(&qword_100130D08, &qword_1000F14B8);
  v9 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v11 = &v45 - v10;
  v49 = sub_100002A10(&qword_100130D10, &qword_1000F14C0);
  v12 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v14 = &v45 - v13;
  v57 = sub_100002A10(&qword_100130D18, &unk_1000F14C8);
  v15 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v17 = &v45 - v16;
  v18 = sub_1000EB414();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000EB234();
  v50 = *(v22 - 8);
  v23 = *(v50 + 64);
  __chkstk_darwin(v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EBC44();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v46 = &v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v45 - v31;
  sub_100041B64(&v45 - v31);
  v47 = v27;
  v48 = v26;
  v33 = (*(v27 + 88))(v32, v26);
  if (v33 == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v34 = a1 + *(type metadata accessor for SunEventsContentView() + 20);
    sub_100041404(v21);
    sub_1000EB224();
    v35 = v50;
    (*(v50 + 16))(v14, v25, v22);
    swift_storeEnumTagMultiPayload();
    sub_1000426E4(&qword_100130D30, &type metadata accessor for SunCircularContentView);
    sub_1000EA4A4();
    sub_10000EBC4(v17, v11, &qword_100130D18, &unk_1000F14C8);
    swift_storeEnumTagMultiPayload();
    sub_100042628();
    sub_10004272C();
    sub_1000EA4A4();
    sub_100008E48(v17, &qword_100130D18, &unk_1000F14C8);
    return (*(v35 + 8))(v25, v22);
  }

  else if (v33 == enum case for WidgetFamily.accessoryRectangular(_:) || v33 != enum case for WidgetFamily.accessoryInline(_:))
  {
    v61 = 0;
    v62 = 0xE000000000000000;
    sub_1000EC3E4(68);
    v63._countAndFlagsBits = 0xD000000000000022;
    v63._object = 0x80000001000FB150;
    sub_1000EBF44(v63);
    v43 = v46;
    sub_100041B64(v46);
    sub_1000426E4(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v44 = v48;
    v64._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v64);

    (*(v47 + 8))(v43, v44);
    v65._object = 0x80000001000FBDC0;
    v65._countAndFlagsBits = 0xD000000000000020;
    sub_1000EBF44(v65);
    result = sub_1000EC464();
    __break(1u);
  }

  else
  {
    v37 = v11;
    v38 = a1 + *(type metadata accessor for SunEventsContentView() + 20);
    sub_100041404(v21);
    v39 = v53;
    sub_1000EB024();
    v40 = v54;
    v41 = v56;
    (*(v54 + 16))(v52, v39, v56);
    swift_storeEnumTagMultiPayload();
    sub_1000426E4(&qword_100130D20, &type metadata accessor for SunInlineContentView);
    v42 = v55;
    sub_1000EA4A4();
    sub_10000EBC4(v42, v37, &qword_100130D00, &qword_1000F14B0);
    swift_storeEnumTagMultiPayload();
    sub_100042628();
    sub_10004272C();
    sub_1000EA4A4();
    sub_100008E48(v42, &qword_100130D00, &qword_1000F14B0);
    return (*(v40 + 8))(v39, v41);
  }

  return result;
}

unint64_t sub_100042628()
{
  result = qword_100130D28;
  if (!qword_100130D28)
  {
    sub_100002ABC(&qword_100130D18, &unk_1000F14C8);
    sub_1000426E4(&qword_100130D30, &type metadata accessor for SunCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D28);
  }

  return result;
}

uint64_t sub_1000426E4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10004272C()
{
  result = qword_100130D38;
  if (!qword_100130D38)
  {
    sub_100002ABC(&qword_100130D00, &qword_1000F14B0);
    sub_1000426E4(&qword_100130D20, &type metadata accessor for SunInlineContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D38);
  }

  return result;
}

unint64_t sub_1000427EC()
{
  result = qword_100130D40;
  if (!qword_100130D40)
  {
    sub_100002ABC(&qword_100130D48, &qword_1000F14D8);
    sub_100042870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D40);
  }

  return result;
}

unint64_t sub_100042870()
{
  result = qword_100130D50;
  if (!qword_100130D50)
  {
    sub_100002ABC(&qword_100130D58, &unk_1000F14E0);
    sub_100042628();
    sub_10004272C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130D50);
  }

  return result;
}

uint64_t sub_100042910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EBC44();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_100005B30(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
    v8 = a1 + *(a3 + 88);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 20));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_100042A00(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EBC44();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 20)) = (a2 - 1);
      return result;
    }

    v9 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
    v10 = a1 + *(a4 + 88);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DailyViewAttributes()
{
  result = qword_100130DB8;
  if (!qword_100130DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100042B24()
{
  sub_1000EBC44();
  if (v0 <= 0x3F)
  {
    sub_100042C14();
    if (v1 <= 0x3F)
    {
      sub_100042C6C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100042C14()
{
  if (!qword_100130DC8)
  {
    sub_1000EB214();
    v0 = sub_1000EC034();
    if (!v1)
    {
      atomic_store(v0, &qword_100130DC8);
    }
  }
}

void sub_100042C6C()
{
  if (!qword_100130DD0)
  {
    sub_100002ABC(&qword_10012ED70, &qword_1000EECC0);
    v0 = sub_1000EC364();
    if (!v1)
    {
      atomic_store(v0, &qword_100130DD0);
    }
  }
}

BOOL sub_100042CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v44 = &v41[-v6];
  v7 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v41[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v41[-v12];
  v14 = sub_100002A10(&qword_100130E48, &qword_1000F1548);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v41[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v41[-v19];
  sub_1000EBC44();
  sub_100043230();
  sub_1000EBFB4();
  sub_1000EBFB4();
  if (v48 != v47)
  {
    return 0;
  }

  v21 = type metadata accessor for DailyViewAttributes();
  sub_10004339C(v21[5]);
  sub_100047844();
  if ((v22 & 1) == 0)
  {
    return 0;
  }

  if (!static ActiveEvent.__derived_struct_equals(_:_:)(*(a1 + v21[6]), *(a2 + v21[6])))
  {
    return 0;
  }

  sub_10004338C(v21[7]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[8]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[9]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[10]);
  if (!v28)
  {
    return 0;
  }

  sub_10004338C(v21[11]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[12]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[13]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[14]);
  if (!v28)
  {
    return 0;
  }

  sub_10004335C(v21[15]);
  if (!v28)
  {
    return 0;
  }

  sub_10004338C(v21[16]);
  if (!v28)
  {
    return 0;
  }

  sub_10004339C(v21[17]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  sub_10004339C(v21[18]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  sub_10004339C(v21[19]);
  if ((sub_1000EA5E4() & 1) == 0)
  {
    return 0;
  }

  v23 = v21[20];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if ((sub_1000EA634() & 1) == 0)
  {
    return 0;
  }

  sub_10004338C(v21[21]);
  if (!v28)
  {
    return 0;
  }

  v26 = v21[22];
  v27 = *(v14 + 48);
  sub_100043288(a1 + v26, v20);
  sub_100043288(a2 + v26, &v20[v27]);
  sub_10004336C(v20);
  if (v28)
  {
    sub_10004336C(&v20[v27]);
    if (v28)
    {
      sub_10000D3A8(v20, &qword_10012EF30, &unk_1000F14F0);
      goto LABEL_40;
    }

LABEL_38:
    v29 = v20;
LABEL_49:
    sub_10000D3A8(v29, &qword_100130E48, &qword_1000F1548);
    return 0;
  }

  sub_100043288(v20, v13);
  sub_10004336C(&v20[v27]);
  if (v28)
  {
    (*(v45 + 8))(v13, v46);
    goto LABEL_38;
  }

  v30 = &v20[v27];
  v31 = v46;
  (*(v45 + 32))(v44, v30, v46);
  sub_1000432F8();
  v42 = sub_1000EBE24();
  v43 = *(v45 + 8);
  v43(v44, v31);
  v43(v13, v31);
  sub_10000D3A8(v20, &qword_10012EF30, &unk_1000F14F0);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_40:
  v32 = v21[23];
  v33 = *(v14 + 48);
  sub_100043288(a1 + v32, v18);
  sub_100043288(a2 + v32, &v18[v33]);
  sub_10004336C(v18);
  if (v28)
  {
    sub_10004336C(&v18[v33]);
    if (v28)
    {
      sub_10000D3A8(v18, &qword_10012EF30, &unk_1000F14F0);
      return 1;
    }

    goto LABEL_48;
  }

  sub_100043288(v18, v11);
  sub_10004336C(&v18[v33]);
  if (v34)
  {
    (*(v45 + 8))(v11, v46);
LABEL_48:
    v29 = v18;
    goto LABEL_49;
  }

  v37 = v44;
  v36 = v45;
  v38 = v46;
  (*(v45 + 32))(v44, &v18[v33], v46);
  sub_1000432F8();
  v39 = sub_1000EBE24();
  v40 = *(v36 + 8);
  v40(v37, v38);
  v40(v11, v38);
  sub_10000D3A8(v18, &qword_10012EF30, &unk_1000F14F0);
  return (v39 & 1) != 0;
}

unint64_t sub_100043230()
{
  result = qword_1001309E8;
  if (!qword_1001309E8)
  {
    sub_1000EBC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001309E8);
  }

  return result;
}

uint64_t sub_100043288(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000432F8()
{
  result = qword_100130E50;
  if (!qword_100130E50)
  {
    sub_100002ABC(&qword_10012ED70, &qword_1000EECC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130E50);
  }

  return result;
}

uint64_t sub_10004339C@<X0>(uint64_t a1@<X8>)
{
  result = *(v2 + a1);
  v4 = *(v1 + a1);
  return result;
}

uint64_t sub_1000433B8@<X0>(uint64_t a1@<X8>)
{
  v73 = a1;
  v1 = sub_1000E8F64();
  v2 = sub_1000090D4(v1);
  v71 = v3;
  v72 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  sub_100006A10();
  v70 = v7 - v6;
  v8 = sub_1000E8E84();
  v9 = sub_1000090D4(v8);
  v68 = v10;
  v69 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_100006A10();
  v67 = v14 - v13;
  v15 = sub_1000E8604();
  v16 = sub_1000090D4(v15);
  v65 = v17;
  v66 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_100006A10();
  v22 = v21 - v20;
  v23 = sub_1000E8C04();
  v24 = sub_1000090D4(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_100006A10();
  v31 = v30 - v29;
  v32 = sub_1000E8634();
  v33 = sub_1000090D4(v32);
  v63 = v34;
  v64 = v33;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_100006A10();
  v39 = v38 - v37;
  v40 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v41 = *(*(v40 - 8) + 64);
  __chkstk_darwin(v40 - 8);
  v43 = &v62 - v42;
  v44 = sub_1000E8D34();
  v45 = sub_1000090D4(v44);
  v47 = v46;
  v49 = *(v48 + 64);
  __chkstk_darwin(v45);
  sub_100006A10();
  v52 = v51 - v50;
  sub_1000E8C74();
  if (sub_100005B30(v43, 1, v44) == 1)
  {
    sub_100043824(v43);
    v53 = type metadata accessor for AirQualityViewModel();
    v54 = v73;
    v55 = 1;
  }

  else
  {
    (*(v47 + 32))(v52, v43, v44);
    sub_1000E8624();
    sub_1000E8D24();
    sub_1000E8BF4();
    (*(v26 + 8))(v31, v23);
    v56 = sub_1000E8D04();
    v57 = v67;
    sub_1000E8D14();
    v58 = v70;
    sub_1000E8CF4();
    (*(v47 + 8))(v52, v44);
    v59 = v73;
    (*(v63 + 32))(v73, v39, v64);
    v60 = type metadata accessor for AirQualityViewModel();
    (*(v65 + 32))(v59 + v60[5], v22, v66);
    *(v59 + v60[6]) = v56;
    (*(v68 + 32))(v59 + v60[7], v57, v69);
    (*(v71 + 32))(v59 + v60[8], v58, v72);
    v54 = v59;
    v55 = 0;
    v53 = v60;
  }

  return sub_1000028A0(v54, v55, 1, v53);
}

uint64_t sub_100043824(uint64_t a1)
{
  v2 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_1000438CC()
{
  sub_1000EC664();
  sub_1000EBF14();
  return sub_1000EC684();
}

Swift::Int sub_100043920(Swift::UInt a1)
{
  sub_1000EC664();
  sub_1000EC674(a1);
  return sub_1000EC684();
}

uint64_t sub_100043968()
{
  sub_1000EBF14();
}

uint64_t sub_1000439E0(uint64_t a1, char a2)
{
  if (!a2)
  {
    sub_10004474C();
  }

  sub_1000EBF14();
}

Swift::Int sub_100043AB8(uint64_t a1, char a2)
{
  sub_1000EC664();
  if (!a2)
  {
    sub_10004474C();
  }

  sub_1000EBF14();

  return sub_1000EC684();
}

Swift::Int sub_100043B54(uint64_t a1, Swift::UInt a2)
{
  sub_1000EC664();
  sub_1000EC674(a2);
  return sub_1000EC684();
}

Swift::Int sub_100043B98(uint64_t a1, unsigned __int8 a2)
{
  sub_1000EC664();
  sub_1000EC674(a2);
  return sub_1000EC684();
}

Swift::Int sub_100043BF0()
{
  sub_1000EC664();
  sub_1000EBF14();
  return sub_1000EC684();
}

Swift::Int sub_100043C3C()
{
  sub_1000EC664();
  sub_1000EBF14();

  return sub_1000EC684();
}

id sub_100043CB4()
{
  result = [objc_allocWithZone(type metadata accessor for WeatherSettingsState()) init];
  qword_100145B90 = result;
  return result;
}

id sub_100043CE4()
{
  if (qword_10012EB00 != -1)
  {
    swift_once();
  }

  v1 = qword_100145B90;

  return v1;
}

id sub_100043DE0()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_100043E8C()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  isa = sub_1000EC054().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

id sub_100043F4C()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:1];

  return v2;
}

void sub_100043FF8()
{
  v0 = objc_opt_self();
  v1 = sub_10004472C();
  isa = sub_1000EC054().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

id sub_1000440B8()
{
  v0 = objc_opt_self();
  v1 = sub_100044764();
  v2 = [v0 readBoolFromContainerPreferenceValueForKey:v1 defaultValue:0];

  return v2;
}

void sub_100044164()
{
  v0 = objc_opt_self();
  v1 = sub_100044764();
  isa = sub_1000EC054().super.super.isa;
  [v0 writePreferenceForKey:v1 value:isa];
}

uint64_t sub_1000442C0()
{
  v1 = v0;
  v2 = sub_1000E98E4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorizationManager);
  sub_1000E98F4();
  result = sub_100044358(v5);
  *(v1 + OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorization) = result;
  return result;
}

uint64_t sub_100044358(uint64_t a1)
{
  v2 = sub_1000E98E4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  v5 = 0;
  if (v4 != enum case for PredictedLocationsAuthorization.notDetermined(_:))
  {
    if (v4 == enum case for PredictedLocationsAuthorization.featureUnavailable(_:))
    {
      return 1;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.enabled(_:))
    {
      return 2;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInSystemServices(_:))
    {
      return 3;
    }

    else if (v4 == enum case for PredictedLocationsAuthorization.disabledInWeatherSettings(_:))
    {
      return 4;
    }

    else
    {
      (*(v3 + 8))(a1, v2);
      return 0;
    }
  }

  return v5;
}

id sub_1000444D8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_units;
  *&v1[v3] = [objc_allocWithZone(type metadata accessor for WeatherSettingsUnits()) init];
  v4 = OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorizationManager;
  v5 = sub_1000E9924();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = sub_1000E9914();
  *&v1[OBJC_IVAR____TtC13WeatherWidget20WeatherSettingsState_predictedLocationsAuthorization] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t sub_100044628(unint64_t result)
{
  if (result > 4)
  {
    return 0;
  }

  return result;
}

unint64_t sub_100044684@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100044628(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1000446C8()
{
  result = qword_100130E98;
  if (!qword_100130E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130E98);
  }

  return result;
}

NSString sub_10004472C()
{

  return sub_1000EBE64();
}

NSString sub_100044764()
{

  return sub_1000EBE64();
}

uint64_t sub_100044784(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v3 = 7890280;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v5 = 7890280;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC5D4();
  }

  return v8 & 1;
}

uint64_t sub_10004481C(unsigned __int8 a1, char a2)
{
  v2 = 0x737569736C6563;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x65686E6572686166;
    }

    else
    {
      v4 = 0x7953726F7272696DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEA00000000007469;
    }

    else
    {
      v5 = 0xEC0000006D657473;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x737569736C6563;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x65686E6572686166;
    }

    else
    {
      v2 = 0x7953726F7272696DLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEA00000000007469;
    }

    else
    {
      v6 = 0xEC0000006D657473;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000EC5D4();
  }

  return v8 & 1;
}

uint64_t sub_10004493C()
{
  v0 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  sub_100009210(v0);
  v2 = *(v1 + 64);
  sub_100009204();
  __chkstk_darwin(v3);
  v5 = &v13 - v4;
  sub_100045448();
  v6 = sub_1000EB214();
  sub_10000D4FC(v5, 1, v6);
  if (v7)
  {
    sub_100008E48(v5, &qword_1001312A8, &unk_1000F1D70);
    sub_1000E8D54();
    sub_10000D52C();
    return sub_1000028A0(v8, v9, v10, v11);
  }

  else
  {
    sub_1000EB0E4();
    return (*(*(v6 - 8) + 8))(v5, v6);
  }
}

uint64_t sub_100044A44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_1000E8784();
  v4 = sub_1000090D4(v3);
  v49 = v5;
  v50 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10004B3F0();
  v47 = v8;
  sub_10000921C();
  v9 = sub_1000E8604();
  v10 = sub_1000090D4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_100006A10();
  v17 = v16 - v15;
  v18 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v18);
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  v23 = &v46 - v22;
  v24 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  v25 = sub_1000069E4(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1000091AC();
  v30 = v28 - v29;
  __chkstk_darwin(v31);
  v33 = &v46 - v32;
  v34 = type metadata accessor for AggregateWeatherViewModel(0);
  v35 = *(v34 + 56);
  v48 = v2;
  sub_100019210(v2 + v35, v23, &qword_100130EB8, &qword_1000F1660);
  sub_10000D4FC(v23, 1, v24);
  if (v36)
  {
    sub_100008E48(v23, &qword_100130EB8, &qword_1000F1660);
    if (qword_10012EB08 != -1)
    {
      swift_once();
    }

    v37 = sub_1000EB6D4();
    sub_100008CB8(v37, qword_100130EA0);
    v38 = *(v34 + 20);
    sub_1000E99B4();
    sub_1000E85F4();
    v39 = v47;
    sub_1000E9A74();
    sub_1000EB6B4();
    (*(v49 + 8))(v39, v50);
    return (*(v12 + 8))(v17, v9);
  }

  else
  {
    sub_100049658(v23, v33);
    sub_100049658(v33, v30);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v42 = v51;
    (*(v12 + 32))(v51, v30, v9);
    v43 = sub_1000EAFD4();
    sub_1000069E4(v43);
    if (EnumCaseMultiPayload == 1)
    {
      v45 = &enum case for SunriseSunsetEvent.sunset(_:);
    }

    else
    {
      v45 = &enum case for SunriseSunsetEvent.sunrise(_:);
    }

    return (*(v44 + 104))(v42, *v45);
  }
}

uint64_t AggregateWeatherViewModel.id.getter()
{
  v0 = sub_1000E8634();
  sub_1000069E4(v0);
  v2 = *(v1 + 16);
  v3 = sub_100019AC0();

  return v4(v3);
}

uint64_t sub_100044E30()
{
  v0 = sub_1000EB6D4();
  sub_10004B338(v0, qword_100130EA0);
  sub_100008CB8(v0, qword_100130EA0);
  return sub_1000EB6C4();
}

void sub_100044E7C()
{
  sub_100006A58();
  v3 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v4 = sub_1000090D4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000091AC();
  v47 = v7 - v8;
  sub_10004B6F4();
  __chkstk_darwin(v9);
  sub_10000D56C();
  v46 = v10;
  sub_10000921C();
  v11 = sub_1000EB214();
  v12 = sub_1000090D4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_1000091AC();
  v19 = (v17 - v18);
  __chkstk_darwin(v20);
  sub_10004B584();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v22 = sub_10000921C();
  v23 = type metadata accessor for AggregateWeatherViewModel(v22);
  sub_10004B6E0(v23);
  if (v24)
  {
    v25 = sub_10004B4A0();
    v26(v25);
    sub_10004B5EC();
    while (1)
    {
      if (v49 == v1)
      {
        v33 = sub_10004B65C();
        v34(v33);
        sub_1000EB1B4();
        v35 = sub_10004B724();
        v36(v35);
        sub_1000028A0(v42, 0, 1, v48);
        sub_100006A20();
        return;
      }

      if (v1 >= *(v0 + 16))
      {
        break;
      }

      v45(v19, v44 + *(v14 + 72) * v1, v11);
      sub_1000EB1B4();
      sub_1000EB1B4();
      sub_10004ADF0();
      sub_10004B698();
      v27 = sub_10004B5C4();
      v2(v27);
      v28 = v14;
      v14 = v11;
      (v2)(v46, v28);
      v29 = *(v11 + 8);
      sub_10004B718();
      v30();
      if (v19)
      {
        v31 = sub_10004B674();
        v32(v31);
      }

      v2 = v19;
      v11 = v47;
      ++v1;
      v0 = v43;
    }

    __break(1u);
  }

  else
  {
    sub_10000D52C();
    sub_100006A20();

    sub_1000028A0(v37, v38, v39, v40);
  }
}

void sub_100045164()
{
  sub_100006A58();
  v3 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v4 = sub_1000090D4(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_1000091AC();
  v47 = v7 - v8;
  sub_10004B6F4();
  __chkstk_darwin(v9);
  sub_10000D56C();
  v46 = v10;
  sub_10000921C();
  v11 = sub_1000EB214();
  v12 = sub_1000090D4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_1000091AC();
  v19 = (v17 - v18);
  sub_10004B6F4();
  __chkstk_darwin(v20);
  sub_10004B584();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v22 = sub_10000921C();
  v23 = type metadata accessor for AggregateWeatherViewModel(v22);
  sub_10004B6E0(v23);
  if (v24)
  {
    v25 = sub_10004B4A0();
    v26(v25);
    sub_10004B5EC();
    while (1)
    {
      if (v49 == v1)
      {
        v33 = sub_10004B65C();
        v34(v33);
        sub_1000EB194();
        v35 = sub_10004B724();
        v36(v35);
        sub_1000028A0(v42, 0, 1, v48);
        sub_100006A20();
        return;
      }

      if (v1 >= *(v0 + 16))
      {
        break;
      }

      v45(v19, v44 + *(v14 + 72) * v1, v11);
      sub_1000EB194();
      sub_1000EB194();
      sub_10004ADF0();
      sub_10004B698();
      v27 = sub_10004B5C4();
      v2(v27);
      v28 = v14;
      v14 = v11;
      (v2)(v46, v28);
      v29 = *(v11 + 8);
      sub_10004B718();
      v30();
      if (v2)
      {
        v31 = sub_10004B674();
        v32(v31);
      }

      v2 = v19;
      v11 = v47;
      ++v1;
      v0 = v43;
    }

    __break(1u);
  }

  else
  {
    sub_10000D52C();
    sub_100006A20();

    sub_1000028A0(v37, v38, v39, v40);
  }
}

void sub_100045448()
{
  sub_100006A58();
  v2 = v0;
  v34 = v3;
  v38 = sub_1000E8604();
  v4 = sub_1000090D4(v38);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10004B3F0();
  v37 = v9;
  sub_10000921C();
  v36 = sub_1000E8754();
  v10 = sub_1000090D4(v36);
  v12 = v11;
  v14 = *(v13 + 64);
  __chkstk_darwin(v10);
  sub_10004B3F0();
  v35 = v15;
  sub_10000921C();
  v16 = sub_1000EB214();
  v17 = sub_1000090D4(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_1000091AC();
  sub_10004B584();
  __chkstk_darwin(v22);
  sub_10000D56C();
  v33 = v23;
  v24 = sub_10000921C();
  v25 = 0;
  v26 = *(v2 + *(type metadata accessor for AggregateWeatherViewModel(v24) + 32));
  v39 = *(v26 + 16);
  v27 = (v12 + 8);
  while (1)
  {
    if (v39 == v25)
    {
      v30 = 1;
      v31 = v34;
LABEL_8:
      sub_1000028A0(v31, v30, 1, v16);
      sub_100006A20();
      return;
    }

    if (v25 >= *(v26 + 16))
    {
      break;
    }

    v28 = v26;
    (*(v19 + 16))(v1, v26 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25, v16);
    sub_1000E8714();
    sub_1000EB1A4();
    v29 = sub_1000E86C4();
    (*(v6 + 8))(v37, v38);
    (*v27)(v35, v36);
    if (v29)
    {
      v32 = *(v19 + 32);
      v32(v33, v1, v16);
      v31 = v34;
      v32(v34, v33, v16);
      v30 = 0;
      goto LABEL_8;
    }

    ++v25;
    (*(v19 + 8))(v1, v16);
    v26 = v28;
  }

  __break(1u);
}

uint64_t sub_10004572C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657369726E7573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7465736E7573 && a2 == 0xE600000000000000)
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

uint64_t sub_1000457F0(char a1)
{
  if (a1)
  {
    return 0x7465736E7573;
  }

  else
  {
    return 0x657369726E7573;
  }
}

void sub_100045824()
{
  sub_100006A58();
  v38 = v1;
  v3 = v2;
  v39 = sub_1000E8604();
  v4 = sub_1000090D4(v39);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_1000091AC();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  v13 = sub_10004B738();
  v14 = type metadata accessor for AggregateWeatherViewModel.SunEvent(v13);
  v15 = sub_1000069E4(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000091AC();
  v20 = v18 - v19;
  __chkstk_darwin(v21);
  v23 = &v38 - v22;
  v24 = sub_100002A10(&qword_100131248, &unk_1000F1A10);
  sub_100009210(v24);
  v26 = *(v25 + 64);
  sub_100009204();
  v28 = __chkstk_darwin(v27);
  v30 = &v38 - v29;
  v31 = *(v28 + 56);
  sub_100049C54(v3, &v38 - v29);
  sub_100049C54(v38, &v30[v31]);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_10004B460();
    sub_100049C54(v30, v23);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v39;
      (*(v6 + 32))(v0, &v30[v31], v39);
      sub_1000E85A4();
      v33 = *(v6 + 8);
      v33(v0, v36);
      v34 = v23;
      v35 = v36;
      goto LABEL_6;
    }

LABEL_8:
    (*(v6 + 8))(v23, v39);
    sub_100008E48(v30, &qword_100131248, &unk_1000F1A10);
    goto LABEL_9;
  }

  sub_10004B460();
  sub_100049C54(v30, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = v20;
    goto LABEL_8;
  }

  v32 = v39;
  (*(v6 + 32))(v11, &v30[v31], v39);
  sub_1000E85A4();
  v33 = *(v6 + 8);
  v33(v11, v32);
  v34 = v20;
  v35 = v32;
LABEL_6:
  v33(v34, v35);
  sub_10004B548();
  sub_100049600(v30, v37);
LABEL_9:
  sub_100006A20();
}

uint64_t sub_100045B10(void *a1)
{
  v3 = sub_100002A10(&qword_1001311E8, &qword_1000F19B0);
  v4 = sub_1000090D4(v3);
  v60 = v5;
  v61 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v59 = v9;
  v10 = sub_100002A10(&qword_1001311F0, &qword_1000F19B8);
  v11 = sub_1000090D4(v10);
  v57 = v12;
  v58 = v11;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  sub_10000D58C();
  v56 = v16;
  sub_10000921C();
  v17 = sub_1000E8604();
  v18 = sub_1000090D4(v17);
  v62 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_1000091AC();
  v55 = v22 - v23;
  sub_10004B6F4();
  __chkstk_darwin(v24);
  v25 = sub_10004B738();
  v26 = type metadata accessor for AggregateWeatherViewModel.SunEvent(v25);
  v27 = sub_1000069E4(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_100006A10();
  v32 = v31 - v30;
  v33 = sub_100002A10(&qword_1001311F8, &qword_1000F19C0);
  sub_1000090D4(v33);
  v64 = v34;
  v36 = *(v35 + 64);
  sub_100009204();
  __chkstk_darwin(v37);
  v39 = &v54 - v38;
  v40 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_10004A8C0();
  v41 = v62;
  sub_1000EC6A4();
  sub_10004B460();
  sub_100049C54(v63, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v43 = *(v41 + 32);
  if (EnumCaseMultiPayload == 1)
  {
    v44 = v55;
    v43(v55, v32, v17);
    v66 = 1;
    sub_10004A914();
    v45 = v59;
    sub_1000EC534();
    sub_10004B3A4();
    sub_1000495B8(v46, v47);
    v48 = v61;
    sub_1000EC594();
    (*(v60 + 8))(v45, v48);
    v1 = v44;
  }

  else
  {
    v43(v1, v32, v17);
    v65 = 0;
    sub_10004A968();
    sub_1000EC534();
    sub_10004B3A4();
    sub_1000495B8(v49, v50);
    sub_1000EC594();
    v51 = sub_10004B490();
    v52(v51);
  }

  (*(v41 + 8))(v1, v17);
  return (*(v64 + 8))(v39, v33);
}

uint64_t sub_100045F58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = sub_100002A10(&qword_100131218, &qword_1000F19C8);
  sub_1000090D4(v61);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10000D58C();
  v8 = sub_100002A10(&qword_100131220, &qword_1000F19D0);
  sub_1000090D4(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_10000D58C();
  v12 = sub_100002A10(&qword_100131228, &qword_1000F19D8);
  v13 = sub_1000090D4(v12);
  v59 = v14;
  v60 = v13;
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  v18 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  v19 = sub_1000069E4(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  sub_1000091AC();
  v24 = v22 - v23;
  __chkstk_darwin(v25);
  sub_10004B584();
  __chkstk_darwin(v26);
  sub_10004B640();
  v27 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_10004A8C0();
  sub_1000EC694();
  if (v62)
  {
    goto LABEL_8;
  }

  v63 = a1;
  v28 = sub_1000EC524();
  result = sub_1000814FC(v28, 0);
  if (v31 == v32 >> 1)
  {
LABEL_7:
    v40 = sub_1000EC414();
    swift_allocError();
    v42 = v41;
    v43 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
    *v42 = v18;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v40 - 8) + 104))(v42, enum case for DecodingError.typeMismatch(_:), v40);
    swift_willThrow();
    swift_unknownObjectRelease();
    v44 = sub_10004B5A4();
    v45(v44, v60);
    a1 = v63;
LABEL_8:
    v46 = a1;
    return sub_100009068(v46);
  }

  if (v31 < (v32 >> 1))
  {
    v64 = *(v30 + v31);
    sub_1000814F8(v31 + 1);
    v34 = v33;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v34 == v36 >> 1)
    {
      if (v64)
      {
        sub_10004A914();
        sub_10004B6BC();
        v37 = v2;
        sub_1000E8604();
        sub_10004B3A4();
        sub_1000495B8(v38, v39);
        sub_10004B74C();
        swift_unknownObjectRelease();
        v49 = sub_10004B490();
        v50(v49);
        v51 = *(v59 + 8);
        v52 = sub_10004B610();
        v53(v52);
      }

      else
      {
        sub_10004A968();
        sub_10004B6BC();
        v37 = v2;
        sub_1000E8604();
        sub_10004B3A4();
        sub_1000495B8(v47, v48);
        v24 = v3;
        sub_10004B74C();
        swift_unknownObjectRelease();
        v54 = sub_10004B490();
        v55(v54);
        v56 = sub_10004B5A4();
        v57(v56, v60);
      }

      swift_storeEnumTagMultiPayload();
      sub_100049658(v24, v37);
      sub_100049658(v37, a2);
      v46 = v63;
      return sub_100009068(v46);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100046550(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x80000001000FC0D0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F46796C72756F68 && a2 == 0xEF73747361636572;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x726F46796C696164 && a2 == 0xEE00737473616365;
          if (v9 || (sub_1000EC5D4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
            if (v10 || (sub_1000EC5D4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000015 && 0x80000001000FC0F0 == a2;
              if (v11 || (sub_1000EC5D4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73746E657665 && a2 == 0xE600000000000000;
                if (v12 || (sub_1000EC5D4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x736E654461746164 && a2 == 0xEE00656C62615465;
                  if (v13 || (sub_1000EC5D4() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
                    if (v14 || (sub_1000EC5D4() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0xD000000000000015 && 0x80000001000FC110 == a2)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1000EC5D4();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
}

unint64_t sub_1000468D0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x6F46796C72756F68;
      break;
    case 4:
      result = 0x726F46796C696164;
      break;
    case 5:
      result = 0x696C617551726961;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x73746E657665;
      break;
    case 8:
      result = 0x736E654461746164;
      break;
    case 9:
      result = 0x5255656372756F73;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100046A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004572C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046A7C(uint64_t a1)
{
  v2 = sub_10004A8C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046AB8(uint64_t a1)
{
  v2 = sub_10004A8C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046AF4(uint64_t a1)
{
  v2 = sub_10004A968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046B30(uint64_t a1)
{
  v2 = sub_10004A968();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046B6C(uint64_t a1)
{
  v2 = sub_10004A914();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046BA8(uint64_t a1)
{
  v2 = sub_10004A914();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100046C28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100046550(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100046C50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000468C8();
  *a1 = result;
  return result;
}

uint64_t sub_100046C78(uint64_t a1)
{
  v2 = sub_1000496B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100046CB4(uint64_t a1)
{
  v2 = sub_1000496B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void static AggregateWeatherViewModel.__derived_struct_equals(_:_:)()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v158 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  v5 = sub_1000069E4(v158);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10004B3F0();
  v154 = v8;
  v9 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v9);
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_10000D58C();
  v155 = v13;
  v157 = sub_100002A10(&qword_100130EC0, &qword_1000F1668);
  sub_1000069E4(v157);
  v15 = *(v14 + 64);
  sub_100009204();
  __chkstk_darwin(v16);
  sub_10000D58C();
  v159 = v17;
  sub_10000921C();
  v164 = sub_1000E8524();
  v18 = sub_1000090D4(v164);
  v161 = v19;
  v21 = *(v20 + 64);
  __chkstk_darwin(v18);
  sub_10004B3F0();
  v156 = v22;
  v23 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009210(v23);
  v25 = *(v24 + 64);
  sub_100009204();
  __chkstk_darwin(v26);
  sub_10000D58C();
  v160 = v27;
  v162 = sub_100002A10(&qword_100130ED0, &unk_1000F1678);
  sub_1000069E4(v162);
  v29 = *(v28 + 64);
  sub_100009204();
  __chkstk_darwin(v30);
  sub_10000D58C();
  v163 = v31;
  sub_10000921C();
  v32 = sub_1000EBAF4();
  v33 = sub_1000090D4(v32);
  v166 = v34;
  v36 = *(v35 + 64);
  __chkstk_darwin(v33);
  sub_10004B3F0();
  v165 = v37;
  v38 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v38);
  v40 = *(v39 + 64);
  sub_100009204();
  __chkstk_darwin(v41);
  v43 = &v150 - v42;
  v44 = sub_100002A10(&qword_100130ED8, &qword_1000F1688);
  sub_1000069E4(v44);
  v46 = *(v45 + 64);
  sub_100009204();
  __chkstk_darwin(v47);
  sub_10000D58C();
  v167 = v48;
  sub_10000921C();
  v49 = type metadata accessor for AirQualityViewModel();
  v50 = sub_1000069E4(v49);
  v52 = *(v51 + 64);
  __chkstk_darwin(v50);
  sub_100006A10();
  sub_10004B700();
  v53 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  sub_100009210(v53);
  v55 = *(v54 + 64);
  sub_100009204();
  __chkstk_darwin(v56);
  v58 = &v150 - v57;
  v59 = sub_100002A10(&qword_100130EE8, &qword_1000F1698);
  sub_1000069E4(v59);
  v61 = *(v60 + 64);
  sub_100009204();
  __chkstk_darwin(v62);
  v64 = &v150 - v63;
  if ((sub_1000E8614() & 1) == 0)
  {
    goto LABEL_29;
  }

  v153 = v32;
  v65 = type metadata accessor for AggregateWeatherViewModel(0);
  v66 = v65[5];
  if ((sub_1000E9A04() & 1) == 0)
  {
    goto LABEL_29;
  }

  v67 = v65[6];
  if ((sub_1000EB604() & 1) == 0)
  {
    goto LABEL_29;
  }

  v68 = v65[7];
  v69 = *(v4 + v68);
  v70 = *(v2 + v68);
  sub_100047D9C();
  if ((v71 & 1) == 0)
  {
    goto LABEL_29;
  }

  v72 = v65[8];
  v73 = *(v4 + v72);
  v74 = *(v2 + v72);
  sub_10004B61C();
  sub_100047D9C();
  if ((v75 & 1) == 0)
  {
    goto LABEL_29;
  }

  v152 = v65;
  v76 = v65[9];
  v77 = *(v59 + 48);
  v150 = v4;
  v78 = v4 + v76;
  v79 = v76;
  sub_100019210(v78, v64, &qword_100130EE0, &qword_1000F1690);
  v151 = v2;
  sub_100019210(v2 + v79, &v64[v77], &qword_100130EE0, &qword_1000F1690);
  sub_10000D4FC(v64, 1, v49);
  if (v88)
  {
    sub_10000D4FC(&v64[v77], 1, v49);
    if (v88)
    {
      sub_100008E48(v64, &qword_100130EE0, &qword_1000F1690);
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  sub_100019210(v64, v58, &qword_100130EE0, &qword_1000F1690);
  sub_10000D4FC(&v64[v77], 1, v49);
  if (v88)
  {
    sub_100049600(v58, type metadata accessor for AirQualityViewModel);
LABEL_19:
    v89 = &qword_100130EE8;
    v90 = &qword_1000F1698;
LABEL_27:
    v98 = v64;
LABEL_28:
    sub_100008E48(v98, v89, v90);
    goto LABEL_29;
  }

  sub_100049658(&v64[v77], v0);
  v91 = sub_1000E8614();
  if ((v91 & 1) == 0 || (v92 = v49[5], (sub_1000E85A4() & 1) == 0) || *&v58[v49[6]] != *(v0 + v49[6]) || (v93 = v49[7], (sub_1000E8E74() & 1) == 0))
  {
    sub_100049600(v0, type metadata accessor for AirQualityViewModel);
    sub_100049600(v58, type metadata accessor for AirQualityViewModel);
    v89 = &qword_100130EE0;
    v90 = &qword_1000F1690;
    goto LABEL_27;
  }

  v94 = v49[8];
  v95 = sub_1000E8F54();
  sub_100049600(v0, type metadata accessor for AirQualityViewModel);
  v96 = sub_10004B610();
  sub_100049600(v96, v97);
  sub_100008E48(v64, &qword_100130EE0, &qword_1000F1690);
  if ((v95 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_11:
  v80 = v152;
  v81 = v152[10];
  v82 = *(v44 + 48);
  v83 = v150;
  v84 = v167;
  sub_100019210(v150 + v81, v167, &qword_1001309D8, &qword_1000F10F0);
  v85 = v151 + v81;
  v86 = v151;
  sub_100019210(v85, v84 + v82, &qword_1001309D8, &qword_1000F10F0);
  v87 = v153;
  sub_10000D4FC(v84, 1, v153);
  if (v88)
  {
    sub_1000199F0(v84 + v82);
    if (v88)
    {
      sub_100008E48(v84, &qword_1001309D8, &qword_1000F10F0);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  sub_100019210(v84, v43, &qword_1001309D8, &qword_1000F10F0);
  sub_1000199F0(v84 + v82);
  if (v99)
  {
    (*(v166 + 8))(v43, v87);
LABEL_33:
    v89 = &qword_100130ED8;
    v90 = &qword_1000F1688;
    v98 = v84;
    goto LABEL_28;
  }

  v100 = v166;
  v101 = v84 + v82;
  v102 = v165;
  (*(v166 + 32))(v165, v101, v87);
  sub_10004B478();
  sub_1000495B8(v103, v104);
  sub_10004B68C();
  v105 = sub_1000EBE24();
  v106 = *(v100 + 8);
  v106(v102, v87);
  v106(v43, v87);
  sub_100008E48(v84, &qword_1001309D8, &qword_1000F10F0);
  if ((v105 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_35:
  if ((sub_100047F64(*(v83 + v80[11]), *(v86 + v80[11])) & 1) == 0 || !sub_10009699C(*(v83 + v80[12]), *(v83 + v80[12] + 8), *(v86 + v80[12]), *(v86 + v80[12] + 8)))
  {
    goto LABEL_29;
  }

  v107 = v80[13];
  v108 = v163;
  v109 = *(v162 + 48);
  sub_100019ACC();
  sub_100019210(v110, v111, v112, v113);
  sub_100019ACC();
  sub_100019210(v114, v115, v116, v117);
  v118 = v164;
  sub_10000D4FC(v108, 1, v164);
  if (v88)
  {
    sub_10000D4FC(v108 + v109, 1, v118);
    if (v88)
    {
      sub_100008E48(v108, &qword_100130EC8, &qword_1000F1670);
LABEL_47:
      v131 = v152[14];
      v132 = *(v157 + 48);
      v133 = v159;
      sub_100019ACC();
      sub_100019210(v134, v135, v136, v137);
      v138 = v133;
      sub_100019ACC();
      sub_100019210(v139, v140, v141, v142);
      v143 = v158;
      sub_10000D4FC(v133, 1, v158);
      if (v88)
      {
        sub_10000D4FC(v133 + v132, 1, v143);
        if (v88)
        {
          sub_100008E48(v133, &qword_100130EB8, &qword_1000F1660);
          goto LABEL_29;
        }
      }

      else
      {
        v144 = v133;
        v145 = v155;
        sub_100019210(v144, v155, &qword_100130EB8, &qword_1000F1660);
        sub_10000D4FC(v138 + v132, 1, v143);
        if (!v146)
        {
          v148 = v138 + v132;
          v149 = v154;
          sub_100049658(v148, v154);
          sub_100045824();
          sub_100049600(v149, type metadata accessor for AggregateWeatherViewModel.SunEvent);
          sub_100049600(v145, type metadata accessor for AggregateWeatherViewModel.SunEvent);
          sub_100008E48(v138, &qword_100130EB8, &qword_1000F1660);
          goto LABEL_29;
        }

        sub_10004B548();
        sub_100049600(v145, v147);
      }

      v89 = &qword_100130EC0;
      v90 = &qword_1000F1668;
      v98 = v138;
      goto LABEL_28;
    }

    goto LABEL_45;
  }

  sub_100019210(v108, v160, &qword_100130EC8, &qword_1000F1670);
  sub_10000D4FC(v108 + v109, 1, v118);
  if (v119)
  {
    v120 = *(v161 + 8);
    v121 = sub_10004B68C();
    v122(v121);
LABEL_45:
    v89 = &qword_100130ED0;
    v90 = &unk_1000F1678;
    v98 = v108;
    goto LABEL_28;
  }

  v123 = v161;
  v124 = v108 + v109;
  v125 = v156;
  (*(v161 + 32))(v156, v124, v118);
  sub_10004B448();
  sub_1000495B8(v126, v127);
  v128 = sub_1000EBE24();
  v129 = *(v123 + 8);
  v129(v125, v118);
  v130 = sub_10004B68C();
  (v129)(v130);
  sub_100008E48(v108, &qword_100130EC8, &qword_1000F1670);
  if (v128)
  {
    goto LABEL_47;
  }

LABEL_29:
  sub_100006A20();
}

void sub_10004788C()
{
  sub_100006A58();
  v2 = v1;
  v4 = v3;
  v5 = sub_1000E8604();
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_10004B3F0();
  v52 = v11;
  v12 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  sub_100009210(v12);
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  sub_10000D58C();
  v56 = v16;
  v54 = sub_100002A10(&qword_10012F910, &qword_1000F19F0);
  sub_1000069E4(v54);
  v18 = *(v17 + 64);
  sub_100009204();
  __chkstk_darwin(v19);
  sub_10004B700();
  v53 = type metadata accessor for TemplateDescriptions(0);
  v20 = *(*(v53 - 8) + 64);
  v21 = __chkstk_darwin(v53);
  v23 = (&v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v26 = (&v47 - v25);
  v27 = *(v4 + 16);
  if (v27 == *(v2 + 16) && v27 && v4 != v2)
  {
    v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v29 = v4 + v28;
    v30 = v2 + v28;
    v47 = (v8 + 32);
    v48 = (v8 + 8);
    v50 = *(v24 + 72);
    v51 = v5;
    v31 = &qword_1000EEF30;
    while (1)
    {
      sub_100049C54(v29, v26);
      sub_100049C54(v30, v23);
      v32 = *v26 == *v23 && v26[1] == v23[1];
      if (!v32 && (sub_1000EC5D4() & 1) == 0)
      {
        break;
      }

      v33 = v26[2] == v23[2] && v26[3] == v23[3];
      if (!v33 && (sub_1000EC5D4() & 1) == 0)
      {
        break;
      }

      v34 = v23[4];
      if (v26[4])
      {
        if (!v34)
        {
          break;
        }

        v35 = v23[4];

        sub_10004A9BC();
        v37 = v36;

        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      else if (v34)
      {
        break;
      }

      v55 = v27;
      v38 = *(v53 + 28);
      v39 = *(v54 + 48);
      v40 = v31;
      sub_100019210(v26 + v38, v0, &qword_10012F048, v31);
      sub_100019210(v23 + v38, v0 + v39, &qword_10012F048, v31);
      sub_1000199F0(v0);
      if (v32)
      {
        sub_1000199F0(v0 + v39);
        v41 = v55;
        if (!v32)
        {
          goto LABEL_30;
        }

        sub_100008E48(v0, &qword_10012F048, v31);
        sub_100049600(v23, type metadata accessor for TemplateDescriptions);
        sub_100049600(v26, type metadata accessor for TemplateDescriptions);
      }

      else
      {
        sub_100019210(v0, v56, &qword_10012F048, v31);
        sub_1000199F0(v0 + v39);
        if (v42)
        {
          (*v48)(v56, v5);
LABEL_30:
          sub_100008E48(v0, &qword_10012F910, &qword_1000F19F0);
          break;
        }

        v43 = v52;
        (*v47)(v52, v0 + v39, v5);
        sub_10004B3A4();
        sub_1000495B8(&qword_10012F920, v44);
        v49 = sub_1000EBE24();
        v45 = *v48;
        v46 = v43;
        v31 = v40;
        (*v48)(v46, v5);
        v45(v56, v5);
        sub_100008E48(v0, &qword_10012F048, v40);
        sub_100049600(v23, type metadata accessor for TemplateDescriptions);
        sub_100049600(v26, type metadata accessor for TemplateDescriptions);
        v41 = v55;
        if ((v49 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v5 = v51;
      v30 += v50;
      v29 += v50;
      v27 = v41 - 1;
      if (!v27)
      {
        goto LABEL_32;
      }
    }

    sub_100049600(v23, type metadata accessor for TemplateDescriptions);
    sub_100049600(v26, type metadata accessor for TemplateDescriptions);
  }

LABEL_32:
  sub_100006A20();
}

void sub_100047D9C()
{
  sub_100006A58();
  v33 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7(0);
  v9 = sub_1000090D4(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v9);
  sub_1000091AC();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  sub_10004B640();
  v18 = *(v6 + 16);
  if (v18 == *(v4 + 16) && v18 && v6 != v4)
  {
    v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v20 = v6 + v19;
    v21 = v4 + v19;
    v23 = *(v11 + 16);
    v22 = v11 + 16;
    v24 = (v22 - 8);
    v30 = *(v22 + 56);
    v31 = v23;
    while (1)
    {
      v25 = sub_10004B610();
      v31(v25);
      if (!v18)
      {
        break;
      }

      v26 = v22;
      (v31)(v16, v21, v8);
      sub_1000495B8(v32, v33);
      v27 = sub_1000EBE24();
      v28 = *v24;
      (*v24)(v16, v8);
      v28(v0, v8);
      if (v27)
      {
        v21 += v30;
        v20 += v30;
        v29 = v18-- == 1;
        v22 = v26;
        if (!v29)
        {
          continue;
        }
      }

      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    sub_100006A20();
  }
}

uint64_t sub_100047F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_100049C54(v14, v11);
        sub_100049C54(v15, v8);
        v17 = sub_100016D08(v11, v8);
        sub_100049600(v8, type metadata accessor for EventViewModel);
        sub_100049600(v11, type metadata accessor for EventViewModel);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t AggregateWeatherViewModel.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = sub_100002A10(&qword_100130F00, &unk_1000F16A0);
  sub_1000090D4(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  sub_10004B700();
  v12 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000496B0();
  sub_1000EC6A4();
  sub_1000E8634();
  sub_10004B530();
  sub_1000495B8(v13, v14);
  sub_10004B3DC();
  sub_1000EC594();
  if (!v2)
  {
    v15 = type metadata accessor for AggregateWeatherViewModel(0);
    v16 = v15[5];
    sub_10004B634(1);
    sub_1000E9A84();
    sub_10004B518();
    sub_1000495B8(v17, v18);
    sub_10004B3BC();
    sub_1000EC594();
    v19 = v15[6];
    sub_10004B634(2);
    sub_1000EB674();
    sub_10004B500();
    sub_1000495B8(v20, v21);
    sub_10004B3BC();
    sub_1000EC594();
    v37 = *(v4 + v15[7]);
    sub_100002A10(&qword_100130F28, &qword_1000F42A0);
    sub_100049704();
    sub_10004B3DC();
    sub_1000EC594();
    v38 = *(v4 + v15[8]);
    sub_100002A10(&qword_100130F40, &qword_1000F16B0);
    sub_1000497B8();
    sub_10004B3DC();
    sub_1000EC594();
    v22 = v15[9];
    sub_10004B634(5);
    type metadata accessor for AirQualityViewModel();
    sub_10004B4E8();
    sub_1000495B8(v23, v24);
    sub_10004B3BC();
    sub_1000EC554();
    v25 = v15[10];
    sub_10004B634(6);
    sub_1000EBAF4();
    sub_10004B478();
    sub_1000495B8(v26, v27);
    sub_10004B3BC();
    sub_1000EC554();
    v41 = *(v4 + v15[11]);
    sub_100002A10(&qword_100130F68, &qword_1000F16B8);
    sub_10004986C();
    sub_10004B3DC();
    sub_1000EC594();
    v28 = (v4 + v15[12]);
    v39 = *v28;
    v40 = *(v28 + 4);
    sub_100049920();
    sub_1000EC594();
    v29 = v15[13];
    sub_10004B634(9);
    sub_1000E8524();
    sub_10004B448();
    sub_1000495B8(v30, v31);
    sub_10004B3BC();
    sub_1000EC554();
    v32 = v15[14];
    v33 = sub_10004B634(10);
    type metadata accessor for AggregateWeatherViewModel.SunEvent(v33);
    sub_10004B4D0();
    sub_1000495B8(v34, v35);
    sub_10004B3DC();
    sub_1000EC554();
  }

  return (*(v8 + 8))(v3, v6);
}

uint64_t AggregateWeatherViewModel.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v4 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10000D58C();
  v108 = v8;
  v9 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
  sub_100009210(v9);
  v11 = *(v10 + 64);
  sub_100009204();
  __chkstk_darwin(v12);
  sub_10000D58C();
  v109 = v13;
  v14 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v14);
  v16 = *(v15 + 64);
  sub_100009204();
  __chkstk_darwin(v17);
  sub_10000D58C();
  v110 = v18;
  v19 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
  sub_100009210(v19);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  sub_10000D58C();
  v111 = v23;
  sub_10000921C();
  v117 = sub_1000EB674();
  v24 = sub_1000090D4(v117);
  v115 = v25;
  v27 = *(v26 + 64);
  __chkstk_darwin(v24);
  sub_10004B3F0();
  v113 = v28;
  sub_10000921C();
  v119 = sub_1000E9A84();
  v29 = sub_1000090D4(v119);
  v116 = v30;
  v32 = *(v31 + 64);
  __chkstk_darwin(v29);
  sub_100006A10();
  v35 = v34 - v33;
  v36 = sub_1000E8634();
  v37 = sub_1000090D4(v36);
  v120 = v38;
  v40 = *(v39 + 64);
  __chkstk_darwin(v37);
  sub_100006A10();
  v43 = v42 - v41;
  v118 = sub_100002A10(&qword_100130F98, &qword_1000F16C0);
  sub_1000090D4(v118);
  v112 = v44;
  v46 = *(v45 + 64);
  sub_100009204();
  __chkstk_darwin(v47);
  v49 = &v106 - v48;
  v50 = type metadata accessor for AggregateWeatherViewModel(0);
  v51 = sub_1000069E4(v50);
  v53 = *(v52 + 64);
  __chkstk_darwin(v51);
  sub_100006A10();
  sub_10004B700();
  v126 = v54;
  v55 = v54[14];
  v56 = type metadata accessor for AggregateWeatherViewModel.SunEvent(0);
  v123 = v55;
  v124 = v2;
  sub_10000D52C();
  sub_1000028A0(v57, v58, v59, v56);
  v60 = a1[3];
  v62 = a1[4];
  v122 = a1;
  sub_100008DA8(a1, v60);
  sub_1000496B0();
  v121 = v49;
  v61 = v125;
  sub_1000EC694();
  LODWORD(v62) = v61;
  v114 = v36;
  if (v61)
  {
    v125 = v61;
    v66 = 0;
    v67 = 0;
    sub_10004B5B4();
    v68 = v124;
    sub_100009068(v122);
    v71 = 0;
    v72 = 0;
    goto LABEL_11;
  }

  v63 = v113;
  v106 = v56;
  a1 = v112;
  LOBYTE(v127) = 0;
  sub_10004B530();
  sub_1000495B8(v64, v65);
  sub_10004B650();
  sub_1000EC514();
  v76 = v124;
  (*(v120 + 32))(v124, v43, v36);
  LOBYTE(v127) = 1;
  sub_10004B518();
  sub_1000495B8(v77, v78);
  sub_10004B650();
  v67 = v35;
  v79 = v119;
  sub_1000EC514();
  LODWORD(v36) = a1;
  v62 = v126;
  (*(v116 + 32))(v76 + v126[5], v35, v79);
  LOBYTE(v127) = 2;
  sub_10004B500();
  sub_1000495B8(v80, v81);
  sub_10004B650();
  v82 = v117;
  sub_1000EC514();
  (*(v115 + 32))(v76 + v62[6], v63, v82);
  sub_100002A10(&qword_100130F28, &qword_1000F42A0);
  v130 = 3;
  sub_100049974();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v76 + v62[7]) = v127;
  sub_100002A10(&qword_100130F40, &qword_1000F16B0);
  v130 = 4;
  sub_100049A28();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v76 + v62[8]) = v127;
  type metadata accessor for AirQualityViewModel();
  LOBYTE(v127) = 5;
  sub_10004B4E8();
  sub_1000495B8(v83, v84);
  sub_10004B650();
  v85 = v111;
  sub_10004B430();
  sub_1000EC4D4();
  sub_100019170(v85, v76 + v62[9], &qword_100130EE0, &qword_1000F1690);
  sub_1000EBAF4();
  LOBYTE(v127) = 6;
  sub_10004B478();
  sub_1000495B8(v86, v87);
  sub_10004B650();
  v88 = v110;
  sub_10004B430();
  sub_1000EC4D4();
  sub_100019170(v88, v76 + v62[10], &qword_1001309D8, &qword_1000F10F0);
  sub_100002A10(&qword_100130F68, &qword_1000F16B8);
  v130 = 7;
  sub_100049ADC();
  sub_10004B70C();
  sub_10004B430();
  sub_1000EC514();
  *(v76 + v62[11]) = v127;
  v130 = 8;
  sub_100049B90();
  sub_10004B70C();
  sub_1000EC514();
  v125 = 0;
  v89 = v76 + v126[12];
  *v89 = v127;
  *(v89 + 8) = v128;
  sub_1000E8524();
  v129 = 9;
  sub_10004B448();
  sub_1000495B8(v90, v91);
  v92 = v125;
  sub_1000EC4D4();
  v125 = v92;
  if (v92)
  {
    v93 = a1[1];
    LODWORD(a1) = a1 + 8;
    v94 = sub_10004B560();
    v95(v94);
    sub_100009068(v122);
    v66 = 0;
    sub_10004B418();
    v72 = 1;
    v71 = 1;
LABEL_24:
    v68 = v124;
    (*(v120 + 8))(v124, v114);
LABEL_11:
    v73 = v126;
    if (v67)
    {
      (*(v115 + 8))(v68 + v126[6], v117);
      if ((a1 & 1) == 0)
      {
LABEL_13:
        if (v36)
        {
LABEL_14:
          v74 = *(v68 + v73[8]);

          if ((v62 & 1) == 0)
          {
LABEL_15:
            if (v72)
            {
LABEL_16:
              sub_100008E48(v68 + v73[10], &qword_1001309D8, &qword_1000F10F0);
              if ((v71 & 1) == 0)
              {
LABEL_17:
                if (!v66)
                {
                  return sub_100008E48(v68 + v123, &qword_100130EB8, &qword_1000F1660);
                }

LABEL_18:
                sub_100008E48(v68 + v73[13], &qword_100130EC8, &qword_1000F1670);
                return sub_100008E48(v68 + v123, &qword_100130EB8, &qword_1000F1660);
              }

LABEL_9:
              v70 = *(v68 + v73[11]);

              if ((v66 & 1) == 0)
              {
                return sub_100008E48(v68 + v123, &qword_100130EB8, &qword_1000F1660);
              }

              goto LABEL_18;
            }

LABEL_8:
            if (!v71)
            {
              goto LABEL_17;
            }

            goto LABEL_9;
          }

LABEL_7:
          sub_100008E48(v68 + v73[9], &qword_100130EE0, &qword_1000F1690);
          if (v72)
          {
            goto LABEL_16;
          }

          goto LABEL_8;
        }

LABEL_6:
        if (!v62)
        {
          goto LABEL_15;
        }

        goto LABEL_7;
      }
    }

    else if (!a1)
    {
      goto LABEL_13;
    }

    v69 = *(v68 + v73[7]);

    if (v36)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_100019170(v109, v124 + v126[13], &qword_100130EC8, &qword_1000F1670);
  v129 = 10;
  sub_10004B4D0();
  sub_1000495B8(v96, v97);
  v98 = v125;
  sub_1000EC4D4();
  v125 = v98;
  if (v98)
  {
    v99 = a1[1];
    LODWORD(a1) = a1 + 8;
    v100 = sub_10004B560();
    v101(v100);
    sub_100009068(v122);
    sub_10004B418();
    v72 = 1;
    v71 = 1;
    v66 = 1;
    goto LABEL_24;
  }

  v102 = a1[1];
  v103 = sub_10004B560();
  v104(v103);
  v105 = v124;
  sub_100049BE4(v108, v124 + v123);
  sub_100049C54(v105, v107);
  sub_100009068(v122);
  return sub_100049600(v105, type metadata accessor for AggregateWeatherViewModel);
}

uint64_t InstantWeatherViewModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000E8634();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

void AggregateWeatherViewModel.nextHourPrecipitationShift(startDate:timeZone:)()
{
  sub_100006A58();
  v42 = v2;
  v41 = type metadata accessor for EventViewModel(0);
  v3 = sub_1000090D4(v41);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_100006A10();
  v10 = (v9 - v8);
  v11 = sub_100002A10(&qword_100131010, &unk_1000F6870);
  v12 = sub_100009210(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_1000091AC();
  v17 = v15 - v16;
  __chkstk_darwin(v18);
  sub_10004B640();
  v19 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
  sub_100009210(v19);
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  v24 = &v41 - v23;
  v25 = type metadata accessor for AggregateWeatherViewModel(0);
  sub_100019210(v0 + *(v25 + 40), v24, &qword_1001309D8, &qword_1000F10F0);
  v26 = sub_1000EBAF4();
  v27 = sub_100005B30(v24, 1, v26);
  sub_100008E48(v24, &qword_1001309D8, &qword_1000F10F0);
  if (v27 == 1)
  {
    sub_1000E8F24();
  }

  else
  {
    v28 = v42;
    v29 = 0;
    v30 = *(v0 + *(v25 + 44));
    v31 = *(v30 + 16);
    while (1)
    {
      if (v31 == v29)
      {
        v33 = 1;
        goto LABEL_10;
      }

      if (v29 >= *(v30 + 16))
      {
        __break(1u);
        return;
      }

      sub_100049C54(v30 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v29, v10);
      if (*v10 == 6)
      {
        break;
      }

      ++v29;
      sub_10004B56C();
      sub_100049600(v10, v32);
    }

    sub_100049658(v10, v1);
    v33 = 0;
LABEL_10:
    v34 = v41;
    sub_1000028A0(v1, v33, 1, v41);
    sub_100019170(v1, v17, &qword_100131010, &unk_1000F6870);
    sub_1000199F0(v17);
    if (!v35)
    {
      sub_100019210(v17 + *(v34 + 52), v28, &qword_10012F6F8, &qword_1000EFCB0);
      sub_10004B56C();
      sub_100049600(v17, v40);
      goto LABEL_14;
    }

    sub_100008E48(v17, &qword_100131010, &unk_1000F6870);
    sub_1000E8F24();
  }

  sub_10000D52C();
  sub_1000028A0(v36, v37, v38, v39);
LABEL_14:
  sub_100006A20();
}

uint64_t AggregateWeatherViewModel.hourlyPrecipitationForecast.getter()
{
  v1 = *(v0 + *(type metadata accessor for AggregateWeatherViewModel(0) + 28));
}

uint64_t AggregateWeatherViewModel.dailyPrecipitationForecast.getter()
{
  v1 = *(v0 + *(type metadata accessor for AggregateWeatherViewModel(0) + 32));
}

uint64_t sub_100049528@<X0>(uint64_t *a1@<X8>)
{
  result = AggregateWeatherViewModel.hourlyPrecipitationForecast.getter();
  *a1 = result;
  return result;
}

uint64_t sub_100049550@<X0>(uint64_t *a1@<X8>)
{
  result = AggregateWeatherViewModel.dailyPrecipitationForecast.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000495B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100049600(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069E4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100049658(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013D84();
  v5 = v4(v3);
  sub_1000069E4(v5);
  v7 = *(v6 + 32);
  v8 = sub_100019AC0();
  v9(v8);
  return a2;
}

unint64_t sub_1000496B0()
{
  result = qword_100130F08;
  if (!qword_100130F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F08);
  }

  return result;
}

unint64_t sub_100049704()
{
  result = qword_100130F30;
  if (!qword_100130F30)
  {
    sub_100002ABC(&qword_100130F28, &qword_1000F42A0);
    sub_1000495B8(&qword_100130F38, &type metadata accessor for HourlyForecastBannerViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F30);
  }

  return result;
}

unint64_t sub_1000497B8()
{
  result = qword_100130F48;
  if (!qword_100130F48)
  {
    sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
    sub_1000495B8(&qword_100130F50, &type metadata accessor for DailyForecastViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F48);
  }

  return result;
}

unint64_t sub_10004986C()
{
  result = qword_100130F70;
  if (!qword_100130F70)
  {
    sub_100002ABC(&qword_100130F68, &qword_1000F16B8);
    sub_1000495B8(&qword_100130F78, type metadata accessor for EventViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F70);
  }

  return result;
}

unint64_t sub_100049920()
{
  result = qword_100130F80;
  if (!qword_100130F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130F80);
  }

  return result;
}

unint64_t sub_100049974()
{
  result = qword_100130FB8;
  if (!qword_100130FB8)
  {
    sub_100002ABC(&qword_100130F28, &qword_1000F42A0);
    sub_1000495B8(&qword_100130FC0, &type metadata accessor for HourlyForecastBannerViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FB8);
  }

  return result;
}

unint64_t sub_100049A28()
{
  result = qword_100130FC8;
  if (!qword_100130FC8)
  {
    sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
    sub_1000495B8(&qword_100130FD0, &type metadata accessor for DailyForecastViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FC8);
  }

  return result;
}

unint64_t sub_100049ADC()
{
  result = qword_100130FE8;
  if (!qword_100130FE8)
  {
    sub_100002ABC(&qword_100130F68, &qword_1000F16B8);
    sub_1000495B8(&qword_100130FF0, type metadata accessor for EventViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FE8);
  }

  return result;
}

unint64_t sub_100049B90()
{
  result = qword_100130FF8;
  if (!qword_100130FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100130FF8);
  }

  return result;
}

uint64_t sub_100049BE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100049C54(uint64_t a1, uint64_t a2)
{
  v3 = sub_100013D84();
  v5 = v4(v3);
  sub_1000069E4(v5);
  v7 = *(v6 + 16);
  v8 = sub_100019AC0();
  v9(v8);
  return a2;
}

uint64_t sub_100049DE4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049E4C(uint64_t a1, uint64_t a2, int *a3)
{
  sub_100013D84();
  v6 = sub_1000E8634();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = v3;
LABEL_8:

    return sub_100005B30(v10, a2, v9);
  }

  v11 = sub_1000E9A84();
  v12 = sub_100006A04(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v14 = a3[5];
LABEL_7:
    v10 = v3 + v14;
    goto LABEL_8;
  }

  v15 = sub_1000EB674();
  v16 = sub_100006A04(v15);
  if (*(v17 + 84) == a2)
  {
    v9 = v16;
    v14 = a3[6];
    goto LABEL_7;
  }

  if (a2 != 0x7FFFFFFF)
  {
    v20 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
    v21 = sub_100006A04(v20);
    if (*(v22 + 84) == a2)
    {
      v9 = v21;
      v14 = a3[9];
    }

    else
    {
      v23 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
      v24 = sub_100006A04(v23);
      if (*(v25 + 84) == a2)
      {
        v9 = v24;
        v14 = a3[10];
      }

      else
      {
        v26 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
        v27 = sub_100006A04(v26);
        if (*(v28 + 84) == a2)
        {
          v9 = v27;
          v14 = a3[13];
        }

        else
        {
          v9 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
          v14 = a3[14];
        }
      }
    }

    goto LABEL_7;
  }

  v19 = *(v3 + a3[7]);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_10004A098(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  sub_100013D84();
  v8 = sub_1000E8634();
  v9 = sub_100006A04(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = v4;
  }

  else
  {
    v13 = sub_1000E9A84();
    v14 = sub_100006A04(v13);
    if (*(v15 + 84) == a3)
    {
      v11 = v14;
      v16 = a4[5];
    }

    else
    {
      v17 = sub_1000EB674();
      result = sub_100006A04(v17);
      if (*(v19 + 84) == a3)
      {
        v11 = result;
        v16 = a4[6];
      }

      else
      {
        if (a3 == 0x7FFFFFFF)
        {
          *(v4 + a4[7]) = (a2 - 1);
          return result;
        }

        v20 = sub_100002A10(&qword_100130EE0, &qword_1000F1690);
        v21 = sub_100006A04(v20);
        if (*(v22 + 84) == a3)
        {
          v11 = v21;
          v16 = a4[9];
        }

        else
        {
          v23 = sub_100002A10(&qword_1001309D8, &qword_1000F10F0);
          v24 = sub_100006A04(v23);
          if (*(v25 + 84) == a3)
          {
            v11 = v24;
            v16 = a4[10];
          }

          else
          {
            v26 = sub_100002A10(&qword_100130EC8, &qword_1000F1670);
            v27 = sub_100006A04(v26);
            if (*(v28 + 84) == a3)
            {
              v11 = v27;
              v16 = a4[13];
            }

            else
            {
              v11 = sub_100002A10(&qword_100130EB8, &qword_1000F1660);
              v16 = a4[14];
            }
          }
        }
      }
    }

    v12 = v4 + v16;
  }

  return sub_1000028A0(v12, a2, a2, v11);
}

void sub_10004A2CC()
{
  sub_1000E8634();
  if (v0 <= 0x3F)
  {
    sub_1000E9A84();
    if (v1 <= 0x3F)
    {
      sub_1000EB674();
      if (v2 <= 0x3F)
      {
        sub_10004A568(319, &qword_1001310A8, &type metadata accessor for HourlyForecastBannerViewModel, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_10004A568(319, &qword_100130DC8, &type metadata accessor for DailyForecastViewModel, &type metadata accessor for Array);
          if (v4 <= 0x3F)
          {
            sub_10004A568(319, &qword_1001310B0, type metadata accessor for AirQualityViewModel, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_10004A568(319, &qword_1001310B8, &type metadata accessor for NextHourPrecipitationChartViewModel, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_10004A568(319, &qword_1001310C0, type metadata accessor for EventViewModel, &type metadata accessor for Array);
                if (v7 <= 0x3F)
                {
                  sub_10004A568(319, &qword_1001310C8, &type metadata accessor for URL, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_10004A568(319, &unk_1001310D0, type metadata accessor for AggregateWeatherViewModel.SunEvent, &type metadata accessor for Optional);
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

void sub_10004A568(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for AggregateWeatherViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AggregateWeatherViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
        JUMPOUT(0x10004A720);
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_10004A758()
{
  result = sub_1000E8604();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_10004A7BC()
{
  result = qword_1001311D0;
  if (!qword_1001311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311D0);
  }

  return result;
}

unint64_t sub_10004A814()
{
  result = qword_1001311D8;
  if (!qword_1001311D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311D8);
  }

  return result;
}

unint64_t sub_10004A86C()
{
  result = qword_1001311E0;
  if (!qword_1001311E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001311E0);
  }

  return result;
}

unint64_t sub_10004A8C0()
{
  result = qword_100131200;
  if (!qword_100131200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131200);
  }

  return result;
}

unint64_t sub_10004A914()
{
  result = qword_100131208;
  if (!qword_100131208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131208);
  }

  return result;
}

unint64_t sub_10004A968()
{
  result = qword_100131210;
  if (!qword_100131210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131210);
  }

  return result;
}

void sub_10004A9BC()
{
  sub_100006A58();
  v1 = v0;
  v3 = v2;
  v4 = sub_1000E8604();
  v5 = sub_1000090D4(v4);
  v72 = v6;
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  sub_1000091AC();
  v11 = v9 - v10;
  __chkstk_darwin(v12);
  sub_10000D56C();
  v71 = v13;
  v14 = sub_100002A10(&qword_100131230, &qword_1000F19F8);
  v15 = sub_100009210(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000091AC();
  __chkstk_darwin(v18);
  v67 = v1;
  if (v3 == v1 || *(v3 + 16) != *(v67 + 16))
  {
LABEL_20:
    sub_100006A20();
  }

  else
  {
    v65 = (&v61 - v19);
    v66 = v20;
    v64 = v11;
    v21 = 0;
    v62 = v3;
    v22 = *(v3 + 64);
    v61 = v3 + 64;
    v23 = 1 << *(v3 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    v68 = v72 + 16;
    v69 = (v72 + 32);
    v63 = (v72 + 8);
    while (1)
    {
      v27 = v66;
      if (!v25)
      {
        break;
      }

      v70 = (v25 - 1) & v25;
      v28 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_12:
      v31 = (*(v62 + 48) + 16 * v28);
      v32 = *v31;
      v33 = v31[1];
      v35 = v71;
      v34 = v72;
      (*(v72 + 16))(v71, *(v62 + 56) + *(v72 + 72) * v28, v4);
      v36 = sub_100002A10(&qword_100131238, &unk_1000F1A00);
      v37 = *(v36 + 48);
      *v27 = v32;
      *(v27 + 1) = v33;
      (*(v34 + 32))(&v27[v37], v35, v4);
      sub_1000028A0(v27, 0, 1, v36);

LABEL_13:
      v38 = v65;
      sub_100019170(v27, v65, &qword_100131230, &qword_1000F19F8);
      v39 = sub_100002A10(&qword_100131238, &unk_1000F1A00);
      sub_1000199F0(v38);
      if (v40)
      {
        goto LABEL_20;
      }

      v41 = *(v39 + 48);
      v43 = *v38;
      v42 = v38[1];
      v44 = v67;
      (*v69)(v64, v38 + v41, v4);
      v45 = sub_1000A158C(v43, v42);
      v47 = v46;

      if ((v47 & 1) == 0)
      {
        v58 = *v63;
        v59 = sub_10004B68C();
        v60(v59);
        goto LABEL_20;
      }

      v49 = v71;
      v48 = v72;
      (*(v72 + 16))(v71, *(v44 + 56) + *(v72 + 72) * v45, v4);
      sub_10004B3A4();
      sub_1000495B8(&qword_10012F920, v50);
      v51 = sub_1000EBE24();
      v52 = *(v48 + 8);
      v52(v49, v4);
      v53 = sub_10004B68C();
      (v52)(v53);
      v25 = v70;
      if ((v51 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    while (1)
    {
      v29 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        sub_100002A10(&qword_100131238, &unk_1000F1A00);
        sub_10000D52C();
        sub_1000028A0(v54, v55, v56, v57);
        v70 = 0;
        goto LABEL_13;
      }

      v30 = *(v61 + 8 * v29);
      ++v21;
      if (v30)
      {
        v70 = (v30 - 1) & v30;
        v28 = __clz(__rbit64(v30)) | (v29 << 6);
        v21 = v29;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_10004ADF0()
{
  result = qword_100131240;
  if (!qword_100131240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131240);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AggregateWeatherViewModel.SunEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10004AF00);
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

_BYTE *sub_10004AF4C(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10004AFE8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10004B024()
{
  result = qword_100131260;
  if (!qword_100131260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131260);
  }

  return result;
}

unint64_t sub_10004B07C()
{
  result = qword_100131268;
  if (!qword_100131268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131268);
  }

  return result;
}

unint64_t sub_10004B0D4()
{
  result = qword_100131270;
  if (!qword_100131270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131270);
  }

  return result;
}

unint64_t sub_10004B12C()
{
  result = qword_100131278;
  if (!qword_100131278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131278);
  }

  return result;
}

unint64_t sub_10004B184()
{
  result = qword_100131280;
  if (!qword_100131280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131280);
  }

  return result;
}

unint64_t sub_10004B1DC()
{
  result = qword_100131288;
  if (!qword_100131288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100131288);
  }

  return result;
}