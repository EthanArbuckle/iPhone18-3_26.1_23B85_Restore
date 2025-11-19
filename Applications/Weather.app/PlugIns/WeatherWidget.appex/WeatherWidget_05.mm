uint64_t sub_100082BB4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (!v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133018, &qword_1000F4B80);
  result = sub_1000E9B54();
  if (!v14)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133070, &unk_1000F4BD8);
  result = sub_1000E9B54();
  if (v12)
  {
    sub_10004E7EC(&v11, v13);
    v8 = sub_1000E9414();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    result = sub_1000E9404();
    *a2 = result;
    a2[1] = &protocol witness table for GeocodeService;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100082D04(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[4];
  sub_100008DA8(a2, a2[3]);
  sub_100002A10(&qword_100133000, &qword_1000F4B68);
  result = sub_1000E9B54();
  if (v5[3])
  {
    sub_1000E93F4();
    return sub_100009068(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100082D90(void *a1)
{
  v2 = sub_1000E8A34();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100002A10(&qword_100133060, &qword_1000F4BC8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17[-1] - v6;
  v8 = a1[4];
  sub_100008DA8(a1, a1[3]);
  v9 = sub_1000E8D84();
  sub_1000E9B54();
  result = sub_100005B30(v7, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1000E8A24();
    v11 = a1[4];
    sub_100008DA8(a1, a1[3]);
    sub_100002A10(&qword_100133068, &qword_1000F4BD0);
    result = sub_1000E9B54();
    v12 = v19;
    if (v19)
    {
      sub_1000E8BD4();
      v13 = sub_100008DA8(v18, v12);
      v17[3] = v12;
      v14 = sub_100084730(v17);
      (*(*(v12 - 8) + 16))(v14, v13, v12);
      v15 = sub_1000E8BC4();
      sub_100009068(v18);
      return v15;
    }
  }

  __break(1u);
  return result;
}

void *sub_100082F7C(void *a1)
{
  v2 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133058, &qword_1000F4BC0);
  result = sub_1000E9B54();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000E8BD4();
  result = sub_1000E9B44();
  if (result)
  {
    v6 = result;
    type metadata accessor for WeatherDataService();
    swift_allocObject();
    return sub_1000A06AC(&v9, &v7, v6);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_100083098(void *a1)
{
  v2 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (v9[3])
  {
    v4 = a1[4];
    sub_100008DA8(a1, a1[3]);
    sub_100002A10(&qword_100133050, &qword_1000F4BB8);
    result = sub_1000E9B54();
    if (v8[3])
    {
      v5 = type metadata accessor for EntryFactory();
      v6 = *(v5 + 48);
      v7 = *(v5 + 52);
      swift_allocObject();
      return sub_1000D17B4(v9, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100083178(void *a1)
{
  v1 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (v5)
  {
    type metadata accessor for RefreshPolicyProvider();
    v3 = swift_allocObject();
    sub_10004E7EC(&v4, v3 + 16);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083210()
{
  v0 = sub_1000E97B4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1000E97A4();
}

uint64_t sub_100083248()
{
  type metadata accessor for DemoManager();
  result = swift_allocObject();
  *(result + 16) = 0xD00000000000001ALL;
  *(result + 24) = 0x80000001000FDD20;
  return result;
}

uint64_t sub_10008328C()
{
  v0 = sub_1000E9C34();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002A10(&qword_100133000, &qword_1000F4B68);
  sub_1000E9C14();
  v5 = enum case for Scope.singleton(_:);
  v6 = v1[13];
  v6(v4, enum case for Scope.singleton(_:), v0);
  sub_1000E9AA4();

  v7 = v1[1];
  v7(v4, v0);
  sub_100002A10(&qword_100133008, &qword_1000F4B70);
  sub_1000E9C14();
  v6(v4, v5, v0);
  sub_1000E9AA4();

  v7(v4, v0);
  sub_1000E8D84();
  sub_1000E9C14();
  v6(v4, enum case for Scope.containerSingleton(_:), v0);
  sub_1000E9AA4();

  v7(v4, v0);
  sub_100002A10(&qword_100133010, &qword_1000F4B78);
  sub_1000E9C14();

  sub_100002A10(&qword_100133018, &qword_1000F4B80);
  sub_1000E9C14();

  sub_100002A10(&qword_100133020, &qword_1000F4B88);
  sub_1000E9C14();
}

uint64_t sub_1000835AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_1000E8BD4();
  result = sub_1000E9B44();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  v7 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133008, &qword_1000F4B70);
  result = sub_1000E9B54();
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = a1[4];
  sub_100008DA8(a1, a1[3]);
  type metadata accessor for WidgetLocationManager();
  result = sub_1000E9B44();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  v10 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (v14)
  {
    v11 = type metadata accessor for GeocodeWeatherService();
    swift_allocObject();
    v12 = sub_10008FE50(v6, &v15, v9, &v13);
    a2[3] = v11;
    result = sub_1000847E0(&qword_100133048, type metadata accessor for GeocodeWeatherService);
    a2[4] = result;
    *a2 = v12;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_100083794@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_100083800@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1000E8524();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000E9754();
  v6 = *(v26 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v26);
  v23 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v24 = sub_1000E94B4();
  v11 = *(v24 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v24);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E9304();
  sub_1000E92F4();
  sub_1000E9234();
  sub_1000E92E4();

  v15 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (v29)
  {
    sub_10004E7EC(&v28, v30);
    sub_100008DA8(v30, v30[3]);
    sub_1000E9804();
    sub_1000E9464();
    v17 = sub_1000E9734();
    sub_1000E9744();
    if (v17)
    {
      v18 = v23;
      v19 = v26;
      (*(v6 + 16))(v23, v10, v26);
      v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
      v21 = swift_allocObject();
      (*(v6 + 32))(v21 + v20, v18, v19);
      sub_1000E8D64();
    }

    else
    {
      sub_1000E8D74();
      v19 = v26;
    }

    (*(v6 + 8))(v10, v19);
    (*(v11 + 8))(v14, v24);
    return sub_100009068(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083B60(uint64_t a1)
{
  v27 = a1;
  v28 = sub_1000E9F64();
  v1 = *(v28 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v28);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000E8524();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_100133040, &qword_1000F4BB0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  sub_1000E9AD4();
  sub_1000E9AC4();
  v17 = sub_1000E9AB4();
  v19 = v18;

  if (v19)
  {
    sub_1000E9744();
    sub_1000E8394();
    (*(v6 + 8))(v9, v5);
    sub_1000E9F24();
    v20 = sub_1000E9F44();
    v21 = sub_1000EC1B4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get port from mock server", v22, 2u);
    }

    (*(v1 + 8))(v4, v28);
    sub_100084658(v16, v14);
    v23 = sub_1000E83B4();
    if (sub_100005B30(v14, 1, v23) == 1)
    {
      sub_1000846C8(v16);
      sub_1000846C8(v14);
      return 0;
    }

    else
    {
      v17 = sub_1000E83A4();
      v25 = v24;
      sub_1000846C8(v16);
      (*(*(v23 - 8) + 8))(v14, v23);
      if (v25)
      {
        return 0;
      }
    }
  }

  return v17;
}

uint64_t sub_100083E98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133038, &qword_1000F4BA8);
  result = sub_1000E9B54();
  if (v8)
  {
    v5 = sub_1000E9664();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_1000E9654();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySaltProvider;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083F40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133010, &qword_1000F4B78);
  result = sub_1000E9B54();
  if (v8)
  {
    v5 = sub_1000E9434();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    result = sub_1000E9424();
    a2[3] = v5;
    a2[4] = &protocol witness table for PrivacySampler;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100083FE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  sub_100008DA8(a1, a1[3]);
  sub_100002A10(&qword_100133028, &qword_1000F4B90);
  result = sub_1000E9B54();
  if (v14)
  {
    sub_10004E7EC(&v13, v15);
    sub_100051D3C(v15, &v13);
    type metadata accessor for LocalSearchRequestService();
    v6 = swift_allocObject();
    sub_10004E7EC(&v13, v6 + 16);
    v7 = a1[4];
    sub_100008DA8(a1, a1[3]);
    sub_100002A10(&qword_100133030, &qword_1000F4B98);
    result = sub_1000E9B54();
    if (v11)
    {
      sub_100051D3C(v15, &v13);
      v8 = type metadata accessor for LocalSearchRequestManager();
      v9 = swift_allocObject();
      v10 = sub_100084184(v6, v11, v12, &v13, 0, v9);
      a2[3] = v8;
      a2[4] = &off_1001266A0;
      *a2 = v10;
      return sub_100009068(v15);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100084184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v31 = a4;
  v32 = a1;
  v33 = a2;
  v9 = sub_1000EC254();
  v29 = *(v9 - 8);
  v30 = v9;
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v28 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1000EC244();
  v12 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26);
  v27 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EAC94();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = sub_1000E9BE4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v34 = &_swiftEmptyArrayStorage;
  sub_1000847E0(&qword_10012EC08, &type metadata accessor for PromiseDeduperFlags);
  sub_100002A10(&qword_10012EC10, &unk_1000EEAF0);
  sub_100031CA4(&qword_10012EC18, &qword_10012EC10, &unk_1000EEAF0);
  sub_1000EC3C4();
  v18 = sub_100002A10(&qword_10012EC20, &unk_1000F2430);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_1000E9B94();
  v23 = v31;
  v22 = v32;
  *(a6 + 72) = v21;
  *(a6 + 80) = 0;
  *(a6 + 88) = 0;
  *(a6 + 96) = 0;
  *(a6 + 104) = xmmword_1000EEAE0;
  *(a6 + 56) = v22;
  *(a6 + 64) = &protocol witness table for LocalSearchRequestService;
  *(a6 + 120) = v33;
  *(a6 + 128) = a3;
  sub_100051D3C(v23, a6 + 16);
  if (!a5)
  {
    sub_100031CF8(0, &qword_1001316E8, OS_dispatch_queue_ptr);

    sub_1000EAC64();
    v34 = &_swiftEmptyArrayStorage;
    sub_1000847E0(&qword_1001316F0, &type metadata accessor for OS_dispatch_queue.Attributes);
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

uint64_t sub_100084570()
{
  v1 = sub_1000E9754();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000845F8()
{
  v1 = *(sub_1000E9754() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_100083B60(v2);
}

uint64_t sub_100084658(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100133040, &qword_1000F4BB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000846C8(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100133040, &qword_1000F4BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_100084730(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_100084790(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_1000847E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100084828()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100084878()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1000848A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000848EC()
{

  return sub_1000E9AA4();
}

uint64_t sub_100084904()
{
}

uint64_t sub_100084948@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = sub_1000EBC64();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_100002A10(&qword_1001330E8, &qword_1000F4CB0);
  v4 = sub_1000090D4(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  v10 = &v20 - v9;
  v11 = sub_100002A10(&qword_1001330F0, &qword_1000F4CB8);
  v21 = sub_1000090D4(v11);
  v22 = v12;
  v14 = *(v13 + 64);
  __chkstk_darwin(v21);
  v16 = &v20 - v15;
  swift_getKeyPath();
  sub_1000EBC54();
  sub_100084DEC();
  sub_100084E40();
  sub_100084E94();
  sub_1000EBC74();
  sub_1000EA354();
  v17 = sub_100084EE8();
  sub_1000EA464();

  (*(v6 + 8))(v10, v3);
  v24 = v3;
  v25 = v17;
  sub_100084FDC();
  swift_getOpaqueTypeConformance2();
  v18 = v21;
  sub_1000EA484();
  return (*(v22 + 8))(v16, v18);
}

uint64_t sub_100084C5C@<X0>(uint64_t a1@<X8>)
{
  sub_1000EA354();
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v2 = qword_100145E00;
  result = sub_1000EA7F4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_100084D44@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_1000BCDA0();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_100084D7C(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1000BCDA0();
  return sub_1000EBCB4();
}

unint64_t sub_100084DEC()
{
  result = qword_1001330F8;
  if (!qword_1001330F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001330F8);
  }

  return result;
}

unint64_t sub_100084E40()
{
  result = qword_100133100;
  if (!qword_100133100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133100);
  }

  return result;
}

unint64_t sub_100084E94()
{
  result = qword_100133108;
  if (!qword_100133108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133108);
  }

  return result;
}

unint64_t sub_100084EE8()
{
  result = qword_100133110;
  if (!qword_100133110)
  {
    sub_100002ABC(&qword_1001330E8, &qword_1000F4CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133110);
  }

  return result;
}

uint64_t sub_100084F4C()
{
  sub_100002ABC(&qword_1001330F0, &qword_1000F4CB8);
  sub_100002ABC(&qword_1001330E8, &qword_1000F4CB0);
  sub_100084EE8();
  sub_100084FDC();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100085008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DailyViewAttributes();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) != a2)
  {
    return sub_100019B04(*(a1 + *(a3 + 20) + 8));
  }

  return sub_100005B30(a1, a2, v7);
}

void sub_1000850BC()
{
  sub_10008F780();
  v1 = sub_10008F540();
  sub_100006A04(v1);
  if (*(v2 + 84) == v0)
  {
    sub_100055F10();
    sub_100055F04();

    sub_1000028A0(v3, v4, v5, v6);
  }

  else
  {
    sub_10008F78C();
  }
}

uint64_t sub_100085194(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = *(*(v6 - 8) + 64);
  __chkstk_darwin(TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_1000EAC14();
}

double sub_100085310(void (*a1)(double *__return_ptr, double *, unint64_t), double a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(a4 + 16);
  while (v9 != v8)
  {
    v10 = *(sub_1000EB214() - 8);
    a1(&v12, &v13, a4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v4)
    {
      break;
    }

    ++v8;
    a2 = v12;
    v13 = v12;
  }

  return a2;
}

uint64_t sub_100085400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1000EB214();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1000EB214();
    v7 = a2;
    v8 = 1;
  }

  return sub_1000028A0(v7, v8, 1, v9);
}

uint64_t sub_1000854C8@<X0>(uint64_t (**a1)(uint64_t a1)@<X8>)
{
  v2 = type metadata accessor for DailyView(0);
  v3 = sub_100032590(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1000864A0();
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  result = sub_100089A24();
  *a1 = sub_100086300;
  a1[1] = v9;
  return result;
}

uint64_t sub_1000855DC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1000EA4E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002A10(&qword_1001331A8, &qword_1000F4D88);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v30 - v10;
  v31 = sub_100002A10(&qword_1001331B0, &qword_1000F4D90);
  v12 = *(v31 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v31);
  v15 = &v30 - v14;
  v32 = sub_100002A10(&qword_1001331B8, &qword_1000F4D98);
  v16 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v18 = &v30 - v17;
  *v11 = sub_1000EABC4();
  *(v11 + 8) = v19;
  v20 = sub_100002A10(&qword_1001331C0, &qword_1000F4DA0);
  sub_100085990(a1, v11 + *(v20 + 44));
  sub_1000E9FD4();
  sub_1000EABB4();
  sub_1000E9FC4();
  v21 = (v11 + *(v8 + 36));
  v22 = v37;
  *v21 = v36;
  v21[1] = v22;
  v21[2] = v38;
  sub_1000EA4D4();
  v23 = sub_10008632C();
  sub_1000EA914();
  (*(v4 + 8))(v7, v3);
  sub_100006850(v11, &qword_1001331A8, &qword_1000F4D88);
  sub_1000EA354();
  v24 = sub_1000EA7F4();
  v26 = v25;
  LOBYTE(v11) = v27;
  v34 = v8;
  v35 = v23;
  swift_getOpaqueTypeConformance2();
  v28 = v31;
  sub_1000EA884();
  sub_1000058EC(v24, v26, v11 & 1);

  (*(v12 + 8))(v15, v28);
  sub_1000EA084();
  return sub_1000863E4(v18);
}

uint64_t sub_100085990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = type metadata accessor for LargeDailyView(0);
  v3 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v36 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_100002A10(&qword_1001331E0, &qword_1000F4DB0);
  v5 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v44 = &v35 - v6;
  v41 = type metadata accessor for MediumPrecipitationDailyView(0);
  v7 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v37 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100002A10(&qword_1001331E8, &qword_1000F4DB8);
  v9 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v39 = type metadata accessor for MediumTemperatureDailyView(0);
  v10 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39);
  v35 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_100002A10(&qword_1001331F0, &unk_1000F4DC0);
  v12 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v40 = &v35 - v13;
  v14 = sub_1000EBC44();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v15[13];
  v19(v18, enum case for WidgetFamily.systemSmall(_:), v14);
  sub_1000865E4(&qword_1001309E8, &type metadata accessor for WidgetFamily);
  sub_1000EBFB4();
  sub_1000EBFB4();
  v20 = v15[1];
  v20(v18, v14);
  if (v49 == v47 || (v19(v18, enum case for WidgetFamily.systemMedium(_:), v14), sub_1000EBFB4(), sub_1000EBFB4(), v20(v18, v14), v49 == v47))
  {
    v21 = type metadata accessor for DailyViewAttributes();
    if (*(a1 + *(v21 + 24)) == 5 && (*(a1 + *(v21 + 60)) & 1) == 0)
    {
      v33 = v35;
      sub_1000864A0();
      v34 = &v33[*(v39 + 20)];
      sub_1000EA764();
      sub_1000864A0();
      swift_storeEnumTagMultiPayload();
      sub_1000865E4(&qword_100133200, type metadata accessor for MediumTemperatureDailyView);
      sub_1000865E4(&qword_100133208, type metadata accessor for MediumPrecipitationDailyView);
      v23 = v40;
      sub_1000EA4A4();
      v24 = type metadata accessor for MediumTemperatureDailyView;
      v25 = v33;
    }

    else
    {
      v22 = v37;
      sub_1000864A0();
      sub_1000864A0();
      swift_storeEnumTagMultiPayload();
      sub_1000865E4(&qword_100133200, type metadata accessor for MediumTemperatureDailyView);
      sub_1000865E4(&qword_100133208, type metadata accessor for MediumPrecipitationDailyView);
      v23 = v40;
      sub_1000EA4A4();
      v24 = type metadata accessor for MediumPrecipitationDailyView;
      v25 = v22;
    }

    sub_10008662C(v25, v24);
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_1000864F8();
    sub_1000865E4(&qword_100133210, type metadata accessor for LargeDailyView);
    sub_1000EA4A4();
    return sub_100006850(v23, &qword_1001331F0, &unk_1000F4DC0);
  }

  else
  {
    v26 = v36;
    sub_1000864A0();
    v27 = (a1 + *(type metadata accessor for DailyView(0) + 20));
    v49 = *v27;
    v50 = *(v27 + 1);
    sub_100002A10(&qword_10012EF10, &qword_1000EEDF8);
    sub_1000EAB04();
    v28 = v46;
    v29 = v48;
    v30 = v26 + *(v46 + 20);
    *v30 = v47;
    *(v30 + 8) = v29;
    v31 = v26 + *(v28 + 24);
    sub_1000EA764();
    sub_1000864A0();
    swift_storeEnumTagMultiPayload();
    sub_1000864F8();
    sub_1000865E4(&qword_100133210, type metadata accessor for LargeDailyView);
    sub_1000EA4A4();
    return sub_10008662C(v26, type metadata accessor for LargeDailyView);
  }
}

uint64_t sub_10008615C()
{
  v4 = type metadata accessor for DailyView(0);
  sub_10008F518(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v9 = *(v8 + 64);
  v10 = v1 + v7;
  v11 = sub_1000EBC44();
  sub_1000069D0(v11);
  (*(v12 + 8))(v1 + v7);
  v13 = type metadata accessor for DailyViewAttributes();
  sub_10008F6E8(v13);
  v14 = *(v1 + v7 + v2[17]);

  v15 = *(v1 + v7 + v2[18]);

  v16 = *(v1 + v7 + v2[19]);

  v17 = v2[22];
  v18 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F5EC(v18))
  {
    sub_1000326A0(v3);
    (*(v19 + 8))(v10 + v17, v3);
  }

  if (!sub_10008F64C())
  {
    sub_1000326A0(v3);
    (*(v20 + 8))(v2 + v10, v3);
  }

  v21 = (v10 + *(v0 + 20));
  v22 = *v21;

  v23 = v21[1];

  v24 = v21[2];

  return _swift_deallocObject(v1, v7 + v9, v6 | 7);
}

unint64_t sub_10008632C()
{
  result = qword_1001331C8;
  if (!qword_1001331C8)
  {
    sub_100002ABC(&qword_1001331A8, &qword_1000F4D88);
    sub_100006988(&qword_1001331D0, &qword_1001331D8, &qword_1000F4DA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001331C8);
  }

  return result;
}

uint64_t sub_1000863E4(uint64_t a1)
{
  v2 = sub_100002A10(&qword_1001331B8, &qword_1000F4D98);
  sub_1000069D0(v2);
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000864A0()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 16);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

unint64_t sub_1000864F8()
{
  result = qword_1001331F8;
  if (!qword_1001331F8)
  {
    sub_100002ABC(&qword_1001331F0, &unk_1000F4DC0);
    sub_1000865E4(&qword_100133200, type metadata accessor for MediumTemperatureDailyView);
    sub_1000865E4(&qword_100133208, type metadata accessor for MediumPrecipitationDailyView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001331F8);
  }

  return result;
}

uint64_t sub_1000865E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008662C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1000069D0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100086694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008F540();
  v7 = sub_100006A04(v6);
  if (*(v8 + 84) == v3)
  {
    v9 = v7;
    v10 = v4;
  }

  else
  {
    if (v3 == 0x7FFFFFFF)
    {
      return sub_100019B04(*(v4 + *(a3 + 20) + 8));
    }

    v9 = sub_1000EA774();
    v10 = v4 + *(a3 + 24);
  }

  return sub_100005B30(v10, v3, v9);
}

void sub_100086760()
{
  sub_10008F780();
  v3 = sub_10008F540();
  sub_100006A04(v3);
  if (*(v4 + 84) == v2)
  {
    sub_100055F10();
  }

  else
  {
    if (v2 == 0x7FFFFFFF)
    {
      sub_10008F78C();
      return;
    }

    sub_1000EA774();
    v5 = v0 + *(v1 + 24);
  }

  sub_100055F04();

  sub_1000028A0(v6, v7, v8, v9);
}

void sub_100086808()
{
  type metadata accessor for DailyViewAttributes();
  if (v0 <= 0x3F)
  {
    sub_10000609C();
    if (v1 <= 0x3F)
    {
      sub_1000EA774();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000868B8()
{
  v2 = sub_10008F540();

  return sub_100005B30(v1, v0, v2);
}

uint64_t sub_100086908()
{
  sub_10008F540();
  sub_100055F10();
  sub_100055F04();

  return sub_1000028A0(v0, v1, v2, v3);
}

uint64_t sub_100086954()
{
  v2 = sub_10008F540();
  v3 = sub_100006A04(v2);
  if (*(v4 + 84) == v0)
  {
    v5 = v3;
    v6 = v1;
  }

  else
  {
    sub_1000EA774();
    v6 = sub_10008F7A0();
  }

  return sub_100005B30(v6, v0, v5);
}

uint64_t sub_1000869F0()
{
  sub_10008F780();
  v1 = sub_10008F540();
  sub_100006A04(v1);
  if (*(v2 + 84) == v0)
  {
    sub_100055F10();
  }

  else
  {
    sub_1000EA774();
    sub_10008F7A0();
  }

  sub_100055F04();

  return sub_1000028A0(v3, v4, v5, v6);
}

uint64_t sub_100086A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = type metadata accessor for DailyViewAttributes();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100086B78(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10008F66C(a1, a2);
  v4 = sub_100002A10(&qword_100133410, &qword_1000F4FE8);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  v8 = sub_100002A10(&qword_100133418, &qword_1000F4FF0);
  sub_100009210(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v12 = sub_10008F7C0();
  v13 = sub_10008F6A0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v18 = sub_10008F5C8();
  v3(v18);
  v19 = sub_10008F688();
  v20 = *(type metadata accessor for LargeDailyView(v19) + 24);
  v21 = sub_1000EA724();
  v22 = sub_10008F7E0(v21);
  sub_10008F704(v22);
  sub_10008F590();
  sub_10008F818();
  (*(v15 + 8))(v2);
  sub_10008F6B8();
}

uint64_t sub_100086CDC@<X0>(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v43 = a3;
  v5 = sub_100002A10(&qword_100133410, &qword_1000F4FE8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v40 = &v38 - v7;
  v8 = sub_100002A10(&qword_100133418, &qword_1000F4FF0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v39 = &v38 - v10;
  v11 = sub_1000EA754();
  v41 = *(v11 - 8);
  v42 = v11;
  v12 = *(v41 + 64);
  __chkstk_darwin(v11);
  v38 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000EAFC4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  sub_1000EB1E4();
  sub_1000EAF84();
  (*(v15 + 8))(v18, v14);
  sub_1000EAA24();
  v20 = sub_1000EA824();
  v22 = v21;
  v24 = v23;
  v25 = *(a2 + *(type metadata accessor for DailyViewAttributes() + 72));
  v26 = sub_1000EA7D4();
  v28 = v27;
  v30 = v29;
  sub_1000058EC(v20, v22, v24 & 1);

  LODWORD(v20) = *(type metadata accessor for LargeDailyView(0) + 24);
  v31 = sub_1000EA724();
  sub_1000028A0(v39, 1, 1, v31);
  v32 = sub_1000EA7E4();
  sub_1000028A0(v40, 1, 1, v32);
  v33 = v38;
  sub_1000EA744();
  sub_1000EA734();
  v35 = v34;
  sub_1000058EC(v26, v28, v30 & 1);

  result = (*(v41 + 8))(v33, v42);
  if (v19 > v35)
  {
    v37 = v19;
  }

  else
  {
    v37 = v35;
  }

  *v43 = v37;
  return result;
}

uint64_t sub_100087034(uint64_t a1)
{
  v2 = type metadata accessor for LargeDailyView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + *(type metadata accessor for DailyViewAttributes() + 20));
  v18 = a1;
  v6 = sub_100085310(sub_10008DA78, 0.0, v17, v5);
  v16 = a1;
  v7 = sub_100085310(sub_10008DAA8, 0.0, v15, v5);
  v14 = a1;
  v8 = sub_100085310(sub_10008DAD8, 0.0, v13, v5);
  v19 = v5;
  sub_1000864A0();
  v9 = (v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_100089A24();
  *(v11 + v9) = v6;
  *(v11 + v10) = v7;
  *(v11 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;

  sub_100002A10(&qword_100130F40, &qword_1000F16B0);
  sub_1000E8634();
  sub_100002A10(&qword_1001334A0, &qword_1000F5070);
  sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0);
  sub_100006988(&qword_1001334A8, &qword_1001334A0, &qword_1000F5070);
  sub_1000865E4(&qword_1001333F8, &type metadata accessor for DailyForecastViewModel);
  return sub_1000EAB34();
}

uint64_t sub_100087348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v62 = a1;
  v65 = a3;
  v11 = sub_1000EB214();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_100133400, &unk_1000F4F30);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v57 - v18;
  v20 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v59 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v66 = &v57 - v25;
  __chkstk_darwin(v24);
  v27 = &v57 - v26;
  v28 = type metadata accessor for ModernDailyForecastRowView();
  v29 = (v28 - 8);
  v30 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28);
  v64 = &v57 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = (&v57 - v33);
  v35 = v29[11];
  v63 = a2;
  sub_1000864A0();
  v36 = v29[12];
  v60 = v12;
  v37 = *(v12 + 16);
  v37(v34 + v36, a1, v11);
  v38 = a2 + *(type metadata accessor for LargeDailyView(0) + 20);
  v69 = *v38;
  v70 = *(v38 + 8);
  sub_100002A10(&qword_10012EF10, &qword_1000EEDF8);
  sub_1000EAB04();
  v39 = v67;
  v61 = v68;
  *v34 = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA0, &qword_1000EED68);
  swift_storeEnumTagMultiPayload();
  *(v34 + v29[9]) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  v40 = v34 + v29[7];
  *v40 = swift_getKeyPath();
  v40[8] = 0;
  v41 = v29[8];
  *(v34 + v41) = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v42 = v29[10];
  v69 = 0x4010000000000000;
  v67 = 0x3FF0000000000000;
  sub_100006048();
  sub_1000EAE94();
  *(v34 + v29[13]) = a4;
  *(v34 + v29[14]) = a5;
  *(v34 + v29[15]) = a6;
  v43 = v29[16];
  v44 = v66;
  v45 = v34 + v43;
  *v45 = v39;
  *(v45 + 8) = v61;
  v37(v27, v62, v11);
  sub_1000028A0(v27, 0, 1, v11);
  v46 = type metadata accessor for DailyViewAttributes();
  sub_100085400(*(v63 + *(v46 + 20)), v44);
  v47 = *(v16 + 56);
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v19, 1, v11) != 1)
  {
    v49 = v59;
    sub_10008F2B0();
    if (sub_100005B30(&v19[v47], 1, v11) != 1)
    {
      v50 = v60;
      v51 = v58;
      (*(v60 + 32))(v58, &v19[v47], v11);
      sub_1000865E4(&qword_100131250, &type metadata accessor for DailyForecastViewModel);
      v48 = sub_1000EBE24();
      v52 = *(v50 + 8);
      v52(v51, v11);
      sub_100006850(v66, &qword_1001312A8, &unk_1000F1D70);
      sub_100006850(v27, &qword_1001312A8, &unk_1000F1D70);
      v52(v49, v11);
      sub_100006850(v19, &qword_1001312A8, &unk_1000F1D70);
      goto LABEL_8;
    }

    sub_100006850(v44, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v27, &qword_1001312A8, &unk_1000F1D70);
    (*(v60 + 8))(v49, v11);
    goto LABEL_6;
  }

  sub_100006850(v44, &qword_1001312A8, &unk_1000F1D70);
  sub_100006850(v27, &qword_1001312A8, &unk_1000F1D70);
  if (sub_100005B30(&v19[v47], 1, v11) != 1)
  {
LABEL_6:
    sub_100006850(v19, &qword_100133400, &unk_1000F4F30);
    v48 = 0;
    goto LABEL_8;
  }

  sub_100006850(v19, &qword_1001312A8, &unk_1000F1D70);
  v48 = 1;
LABEL_8:
  v53 = v64;
  sub_1000864A0();
  v54 = v65;
  sub_1000864A0();
  v55 = v54 + *(sub_100002A10(&qword_1001334B0, &unk_1000F50B0) + 48);
  *v55 = 0;
  *(v55 + 8) = 0;
  *(v55 + 9) = v48 & 1;
  sub_10008662C(v34, type metadata accessor for ModernDailyForecastRowView);
  return sub_10008662C(v53, type metadata accessor for ModernDailyForecastRowView);
}

uint64_t sub_100087AA0@<X0>(_BYTE *a1@<X8>)
{
  *a1 = sub_1000EA534();
  v3 = &a1[*(sub_100002A10(&qword_100133420, &qword_1000F4FF8) + 44)];
  return sub_100087AEC(v1);
}

uint64_t sub_100087AEC(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100133428, &qword_1000F5000);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v18 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v18 - v11;
  __chkstk_darwin(v10);
  v14 = &v18 - v13;
  *v14 = sub_1000EA2E4();
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = sub_100002A10(&qword_100133430, &qword_1000F5008);
  sub_100087CF0(a1, 0, &v14[*(v15 + 44)]);
  *v12 = sub_1000EA2E4();
  *(v12 + 1) = 0;
  v12[16] = 1;
  sub_100087CF0(a1, 1, &v12[*(v15 + 44)]);
  sub_10008F2B0();
  sub_10008F2B0();
  sub_10008F2B0();
  v16 = *(sub_100002A10(&qword_100133438, &unk_1000F5010) + 48);
  sub_10008F2B0();
  sub_100006850(v12, &qword_100133428, &qword_1000F5000);
  sub_100006850(v14, &qword_100133428, &qword_1000F5000);
  sub_100006850(v6, &qword_100133428, &qword_1000F5000);
  return sub_100006850(v9, &qword_100133428, &qword_1000F5000);
}

uint64_t sub_100087CF0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v108) = a2;
  v121 = a3;
  v117 = type metadata accessor for HighTemperatureColumn(0);
  v4 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117);
  v116 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002A10(&qword_100130B00, &unk_1000F1320);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v120 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v119 = &v96 - v10;
  v107 = type metadata accessor for LowTemperatureColumn(0);
  v11 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_100002A10(&qword_100133440, &unk_1000F5020);
  v13 = *(*(v114 - 8) + 64);
  __chkstk_darwin(v114);
  v105 = &v96 - v14;
  v15 = sub_100002A10(&qword_100130AF8, &qword_1000F1318);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v118 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v96 - v19;
  v110 = sub_100002A10(&qword_100133448, &qword_1000F5030);
  v21 = *(*(v110 - 8) + 64);
  __chkstk_darwin(v110);
  v109 = (&v96 - v22);
  v111 = sub_100002A10(&qword_100133450, &qword_1000F5038);
  v23 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v25 = &v96 - v24;
  v102 = sub_1000EA994();
  v100 = *(v102 - 8);
  v26 = *(v100 + 64);
  __chkstk_darwin(v102);
  v101 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PrecipitationColumn(0);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v31 = (&v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = sub_100002A10(&qword_100133458, &unk_1000F5040);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v104 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v103 = &v96 - v36;
  v37 = sub_100002A10(&qword_100130AF0, &qword_1000F1310);
  v38 = *(*(v37 - 8) + 64);
  v39 = __chkstk_darwin(v37 - 8);
  v115 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v124 = &v96 - v41;
  v42 = type metadata accessor for ConditionColumn(0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = &v96 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100002A10(&qword_100133460, &unk_1000F5050);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v48 = sub_100002A10(&qword_100130AE8, &qword_1000F1308);
  v49 = *(*(v48 - 8) + 64);
  v50 = __chkstk_darwin(v48 - 8);
  v113 = &v96 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v53 = &v96 - v52;
  v54 = type metadata accessor for WeekdayColumn(0);
  v55 = *(*(v54 - 8) + 64);
  v56 = __chkstk_darwin(v54 - 8);
  v123 = &v96 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v122 = &v96 - v58;
  sub_1000864A0();
  if (v108)
  {
    v59 = 1;
  }

  else
  {
    sub_1000864A0();
    sub_1000865E4(&qword_100133468, type metadata accessor for ConditionColumn);
    sub_1000EA8F4();
    sub_10008662C(v45, type metadata accessor for ConditionColumn);
    sub_10008DA20();
    v59 = 0;
  }

  sub_1000028A0(v53, v59, 1, v46);
  v60 = type metadata accessor for DailyViewAttributes();
  v61 = *(a1 + v60[8]) == 1;
  v112 = v53;
  if (v61)
  {
    sub_1000EABC4();
    sub_1000E9FC4();
    v108 = v143;
    v99 = v145;
    v98 = v147;
    v97 = v148;
    LOBYTE(v125) = 1;
    LOBYTE(v149) = v144;
    LOBYTE(v136[0]) = v146;
    v62 = *(v28 + 20);
    sub_1000864A0();
    (*(v100 + 104))(v101, enum case for Color.RGBColorSpace.sRGB(_:), v102);
    *v31 = sub_1000EA9F4();
    sub_1000865E4(&qword_100133488, type metadata accessor for PrecipitationColumn);
    v63 = v103;
    sub_1000EA8F4();
    sub_10008662C(v31, type metadata accessor for PrecipitationColumn);
    v64 = v125;
    v65 = v149;
    v66 = a1;
    v67 = v20;
    v68 = v136[0];
    v69 = v60;
    v70 = v104;
    sub_10008F2B0();
    *v25 = 0;
    v25[8] = v64;
    *(v25 + 2) = v108;
    v25[24] = v65;
    *(v25 + 4) = v99;
    v25[40] = v68;
    v20 = v67;
    a1 = v66;
    v71 = v97;
    *(v25 + 6) = v98;
    *(v25 + 7) = v71;
    v72 = sub_100002A10(&qword_100133490, &qword_1000F5060);
    v73 = *(v72 + 48);
    sub_10008F2B0();
    v74 = &v25[*(v72 + 64)];
    *v74 = 0x4000000000000000;
    v74[8] = 0;
    v75 = v70;
    v60 = v69;
    sub_100006850(v75, &qword_100133458, &unk_1000F5040);
    sub_10008F2B0();
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100133470, &qword_100133450, &qword_1000F5038);
    sub_1000EA4A4();
    sub_100006850(v25, &qword_100133450, &qword_1000F5038);
    sub_100006850(v63, &qword_100133458, &unk_1000F5040);
  }

  else
  {
    v76 = v109;
    *v109 = 0;
    *(v76 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_100006988(&qword_100133470, &qword_100133450, &qword_1000F5038);
    sub_1000EA4A4();
  }

  v77 = 1;
  if (*(a1 + v60[9]) == 1)
  {
    v78 = v107;
    v79 = *(v107 + 24);
    v80 = v106;
    sub_1000864A0();
    *v80 = swift_getKeyPath();
    *(v80 + 8) = 0;
    v81 = *(v78 + 20);
    *(v80 + v81) = swift_getKeyPath();
    sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
    swift_storeEnumTagMultiPayload();
    sub_1000865E4(&qword_100133480, type metadata accessor for LowTemperatureColumn);
    sub_1000EA8F4();
    sub_10008662C(v80, type metadata accessor for LowTemperatureColumn);
    sub_10008DA20();
    v77 = 0;
  }

  sub_1000028A0(v20, v77, 1, v114);
  v82 = *(a1 + v60[16]);
  sub_1000EABC4();
  sub_1000E9FC4();
  v83 = v149;
  v84 = v151;
  v85 = v154;
  v114 = v153;
  v142 = 1;
  v140 = v150;
  v138 = v152;
  v86 = v116;
  sub_1000864A0();
  sub_1000865E4(&qword_100133478, type metadata accessor for HighTemperatureColumn);
  v87 = v119;
  sub_1000EA8F4();
  sub_10008662C(v86, type metadata accessor for HighTemperatureColumn);
  v88 = v123;
  sub_1000864A0();
  v136[0] = v88;
  v89 = v112;
  v90 = v113;
  sub_10008F2B0();
  v136[1] = v90;
  v91 = v124;
  v92 = v115;
  sub_10008F2B0();
  v136[2] = v92;
  v93 = v118;
  sub_10008F2B0();
  v125 = 0;
  v126 = v142;
  *v127 = *v141;
  *&v127[3] = *&v141[3];
  v128 = v83;
  v129 = v140;
  *v130 = *v139;
  *&v130[3] = *&v139[3];
  v131 = v84;
  v132 = v138;
  *v133 = *v137;
  *&v133[3] = *&v137[3];
  v134 = v114;
  v135 = v85;
  v136[3] = v93;
  v136[4] = &v125;
  v94 = v120;
  sub_10008F2B0();
  v136[5] = v94;
  sub_100033A6C(v136, v121);
  sub_100006850(v87, &qword_100130B00, &unk_1000F1320);
  sub_100006850(v20, &qword_100130AF8, &qword_1000F1318);
  sub_100006850(v91, &qword_100130AF0, &qword_1000F1310);
  sub_100006850(v89, &qword_100130AE8, &qword_1000F1308);
  sub_10008662C(v122, type metadata accessor for WeekdayColumn);
  sub_100006850(v94, &qword_100130B00, &unk_1000F1320);
  sub_100006850(v93, &qword_100130AF8, &qword_1000F1318);
  sub_100006850(v92, &qword_100130AF0, &qword_1000F1310);
  sub_100006850(v90, &qword_100130AE8, &qword_1000F1308);
  return sub_10008662C(v123, type metadata accessor for WeekdayColumn);
}

void sub_100088CD4(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  sub_10008F66C(a1, a2);
  v4 = sub_100002A10(&qword_100133410, &qword_1000F4FE8);
  sub_100009210(v4);
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  v8 = sub_100002A10(&qword_100133418, &qword_1000F4FF0);
  sub_100009210(v8);
  v10 = *(v9 + 64);
  sub_100009204();
  __chkstk_darwin(v11);
  v12 = sub_10008F7C0();
  v13 = sub_10008F6A0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  __chkstk_darwin(v13);
  v18 = sub_10008F5C8();
  v3(v18);
  v19 = sub_10008F688();
  v20 = *(type metadata accessor for MediumTemperatureDailyView(v19) + 20);
  v21 = sub_1000EA724();
  v22 = sub_10008F7E0(v21);
  sub_10008F704(v22);
  sub_10008F590();
  sub_10008F818();
  (*(v15 + 8))(v2);
  sub_10008F6B8();
}

uint64_t sub_100088E38@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  *a5 = sub_1000EA3C4();
  *(a5 + 8) = 0;
  *(a5 + 16) = a1;
  v11 = a5 + *(sub_100002A10(a2, a3) + 44);
  return a4(v5);
}

uint64_t sub_100088EA4(uint64_t a1)
{
  v2 = type metadata accessor for MediumTemperatureDailyView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = *(a1 + *(type metadata accessor for DailyViewAttributes() + 20));
  v14 = a1;
  v6 = sub_100085310(sub_100089808, 0.0, v13, v5);
  v12 = a1;
  v7 = sub_100085310(sub_100089838, 0.0, v11, v5);
  v15 = v5;
  sub_1000864A0();
  v8 = (v4 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_100089A24();
  *(v9 + v8) = v6;
  *(v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)) = v7;

  sub_100002A10(&qword_100130F40, &qword_1000F16B0);
  sub_1000E8634();
  sub_100002A10(&qword_1001333E8, &qword_1000F4F28);
  sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0);
  sub_100006988(&qword_1001333F0, &qword_1001333E8, &qword_1000F4F28);
  sub_1000865E4(&qword_1001333F8, &type metadata accessor for DailyForecastViewModel);
  return sub_1000EAB34();
}

uint64_t sub_100089178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v53 = a1;
  v54 = a2;
  v56 = a3;
  v8 = sub_1000EB214();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v50 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002A10(&qword_100133400, &unk_1000F4F30);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v49 - v15;
  v17 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v52 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v49 - v22;
  __chkstk_darwin(v21);
  v25 = &v49 - v24;
  v26 = type metadata accessor for DailyTemperatureForecastRowView();
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  v29 = __chkstk_darwin(v26);
  v55 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = &v49 - v31;
  sub_1000864A0();
  v33 = v27[7];
  v51 = v9;
  v34 = *(v9 + 16);
  v34(&v32[v33], a1, v8);
  *&v32[v27[10]] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEB0, &qword_1000EFC90);
  swift_storeEnumTagMultiPayload();
  *&v32[v27[8]] = a4;
  *&v32[v27[9]] = a5;
  v35 = &v32[v27[11]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = v27[12];
  *&v32[v36] = swift_getKeyPath();
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  swift_storeEnumTagMultiPayload();
  v37 = v27[13];
  v57 = 0x3FF0000000000000;
  v58 = 0x4010000000000000;
  sub_100006048();
  sub_1000EAE94();
  v34(v25, v53, v8);
  sub_1000028A0(v25, 0, 1, v8);
  v38 = type metadata accessor for DailyViewAttributes();
  sub_100085400(*(v54 + *(v38 + 20)), v23);
  v39 = *(v13 + 56);
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v16, 1, v8) != 1)
  {
    v41 = v52;
    sub_10008F2B0();
    if (sub_100005B30(&v16[v39], 1, v8) != 1)
    {
      v42 = v50;
      v43 = v51;
      (*(v51 + 32))(v50, &v16[v39], v8);
      sub_1000865E4(&qword_100131250, &type metadata accessor for DailyForecastViewModel);
      v40 = sub_1000EBE24();
      v44 = *(v43 + 8);
      v44(v42, v8);
      sub_100006850(v23, &qword_1001312A8, &unk_1000F1D70);
      sub_100006850(v25, &qword_1001312A8, &unk_1000F1D70);
      v44(v52, v8);
      sub_100006850(v16, &qword_1001312A8, &unk_1000F1D70);
      goto LABEL_8;
    }

    sub_100006850(v23, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v25, &qword_1001312A8, &unk_1000F1D70);
    (*(v51 + 8))(v41, v8);
    goto LABEL_6;
  }

  sub_100006850(v23, &qword_1001312A8, &unk_1000F1D70);
  sub_100006850(v25, &qword_1001312A8, &unk_1000F1D70);
  if (sub_100005B30(&v16[v39], 1, v8) != 1)
  {
LABEL_6:
    sub_100006850(v16, &qword_100133400, &unk_1000F4F30);
    v40 = 0;
    goto LABEL_8;
  }

  sub_100006850(v16, &qword_1001312A8, &unk_1000F1D70);
  v40 = 1;
LABEL_8:
  v45 = v55;
  sub_1000864A0();
  v46 = v56;
  sub_1000864A0();
  v47 = v46 + *(sub_100002A10(&qword_100133408, &qword_1000F4FE0) + 48);
  *v47 = 0;
  *(v47 + 8) = (v40 & 1) == 0;
  *(v47 + 9) = v40 & 1;
  sub_10008662C(v32, type metadata accessor for DailyTemperatureForecastRowView);
  return sub_10008662C(v45, type metadata accessor for DailyTemperatureForecastRowView);
}

uint64_t sub_100089868()
{
  v4 = type metadata accessor for MediumTemperatureDailyView(0);
  sub_10008F518(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = v1 + ((v6 + 16) & ~v6);
  v10 = sub_1000EBC44();
  sub_1000069D0(v10);
  (*(v11 + 8))(v9);
  v12 = type metadata accessor for DailyViewAttributes();
  sub_10008F6E8(v12);
  v13 = *(v9 + v2[17]);

  v14 = *(v9 + v2[18]);

  v15 = *(v9 + v2[19]);

  v16 = v2[22];
  v17 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F5EC(v17))
  {
    sub_1000326A0(v3);
    (*(v18 + 8))(v9 + v16, v3);
  }

  if (!sub_10008F64C())
  {
    sub_1000326A0(v3);
    (*(v19 + 8))(v2 + v9, v3);
  }

  sub_10008F760();
  v21 = v20 & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v0 + 20);
  v23 = sub_1000EA774();
  sub_1000069D0(v23);
  (*(v24 + 8))(v9 + v22);

  return _swift_deallocObject(v1, v21 + 8, v6 | 7);
}

uint64_t sub_100089A24()
{
  sub_100026C9C();
  v2 = v1(0);
  sub_1000069E4(v2);
  v4 = *(v3 + 32);
  v5 = sub_100019AC0();
  v6(v5);
  return v0;
}

uint64_t sub_100089A7C()
{
  v1 = sub_10008F580();
  v2 = type metadata accessor for MediumTemperatureDailyView(v1);
  sub_100032590(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  sub_10008F6D0();
  v10 = *(v0 + v9);
  v12 = *(v0 + v11);
  v13 = sub_10008F530();

  return sub_100089178(v13, v14, v15, v16, v17);
}

uint64_t sub_100089B0C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for WeekdayColumn(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for DailyViewAttributes();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v10 = sub_1000EA3D4();
  sub_1000864A0();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100089A24();
  v13 = *(sub_100002A10(&qword_1001337E0, &qword_1000F5368) + 48);
  *(a1 + v13) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v9[*(v6 + 28)];
  v14 = *&v9[*(v6 + 76)];

  result = sub_10008662C(v9, type metadata accessor for DailyViewAttributes);
  a1[1] = v14;
  a1[2] = v10;
  a1[3] = sub_10008EC40;
  a1[4] = v12;
  return result;
}

uint64_t sub_100089D30(uint64_t a1, uint64_t a2)
{
  sub_1000EB104();
  sub_100005898();
  v2 = sub_1000EA814();
  v4 = v3;
  v6 = v5;
  sub_1000EA9C4();
  v7 = sub_1000EA784();
  v9 = v8;
  v11 = v10;

  sub_1000058EC(v2, v4, v6 & 1);

  v12 = type metadata accessor for DailyViewAttributes();
  v13 = *(a2 + *(v12 + 68));
  v14 = sub_1000EA7D4();
  v16 = v15;
  v18 = v17;
  sub_1000058EC(v7, v9, v11 & 1);

  v19 = sub_1000EA794();
  v21 = v20;
  LOBYTE(v7) = v22;
  sub_1000058EC(v14, v16, v18 & 1);

  v23 = *(a2 + *(v12 + 80));
  v24 = sub_1000EA714();
  v26 = v25;
  LOBYTE(v16) = v27;
  sub_1000058EC(v19, v21, v7 & 1);

  sub_1000EB144();
  v28 = sub_1000EA7A4();
  v30 = v29;
  LOBYTE(v12) = v31;
  sub_1000058EC(v24, v26, v16 & 1);

  sub_1000EA934();
  sub_1000058EC(v28, v30, v12 & 1);
}

uint64_t sub_100089F88@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for ConditionColumn(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for DailyViewAttributes();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v10 = sub_1000EA3C4();
  sub_1000864A0();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100089A24();
  v13 = *(sub_100002A10(&qword_1001337C0, &qword_1000F52E0) + 48);
  *(a1 + v13) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v9[*(v6 + 28)];
  v14 = *&v9[*(v6 + 76)];

  result = sub_10008662C(v9, type metadata accessor for DailyViewAttributes);
  a1[1] = v14;
  a1[2] = v10;
  a1[3] = sub_10008E4A4;
  a1[4] = v12;
  return result;
}

uint64_t sub_10008A1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a2;
  v41 = a3;
  v42 = sub_1000EA384();
  v40 = *(v42 - 8);
  v4 = *(v40 + 64);
  __chkstk_darwin(v42);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000EAFC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v34 - v12;
  v35 = sub_100002A10(&qword_10012EF00, &qword_1000F5320);
  v14 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v16 = &v34 - v15;
  v38 = sub_100002A10(&qword_1001337C8, &qword_1000F5328);
  v17 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v36 = &v34 - v18;
  v34 = a1;
  sub_1000EB1E4();
  sub_1000EAF84();
  v19 = *(v7 + 8);
  v19(v13, v6);
  sub_1000EB1E4();
  sub_1000EAF54();
  v19(v11, v6);
  sub_1000EAED4();
  v20 = *(v37 + *(type metadata accessor for DailyViewAttributes() + 72));
  KeyPath = swift_getKeyPath();
  v22 = &v16[*(v35 + 36)];
  *v22 = KeyPath;
  v22[1] = v20;

  sub_1000EB1E4();
  v23 = sub_1000EAF74();
  v25 = v24;
  v19(v13, v6);
  v43 = v23;
  v44 = v25;
  sub_100005898();
  v26 = sub_1000EA814();
  v28 = v27;
  v30 = v29;
  sub_10008E560();
  v31 = v36;
  sub_1000EA884();
  sub_1000058EC(v26, v28, v30 & 1);

  sub_100006850(v16, &qword_10012EF00, &qword_1000F5320);
  v32 = v39;
  sub_1000EA374();
  sub_1000EA024();
  (*(v40 + 8))(v32, v42);
  return sub_100006850(v31, &qword_1001337C8, &qword_1000F5328);
}

uint64_t sub_10008A57C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for PrecipitationColumn(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for DailyViewAttributes();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 28);
  sub_1000864A0();
  v12 = sub_1000EA3D4();
  sub_1000864A0();
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100089A24();
  v15 = *(sub_100002A10(qword_1001337F0, &unk_1000F5390) + 48);
  *(a1 + v15) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v10[*(v7 + 28)];
  v16 = *&v10[*(v7 + 76)];

  result = sub_10008662C(v10, type metadata accessor for DailyViewAttributes);
  a1[1] = v16;
  a1[2] = v12;
  a1[3] = sub_10008EBBC;
  a1[4] = v14;
  return result;
}

double sub_10008A7A8@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1000EAFC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000EB1E4();
  v9 = sub_1000EAF94();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    sub_1000EB114();
    *&v46 = sub_1000EC094(1);
    *(&v46 + 1) = v10;
    sub_100005898();
    v11 = sub_1000EA814();
    v13 = v12;
    v15 = v14;
    v16 = *a1;
    v17 = sub_1000EA784();
    v19 = v18;
    v21 = v20;
    sub_1000058EC(v11, v13, v15 & 1);

    v22 = a1 + *(type metadata accessor for PrecipitationColumn(0) + 20);
    v23 = *&v22[*(type metadata accessor for DailyViewAttributes() + 76)];
    v24 = sub_1000EA7D4();
    v26 = v25;
    LOBYTE(v13) = v27;
    sub_1000058EC(v17, v19, v21 & 1);

    v28 = sub_1000EA794();
    v30 = v29;
    LOBYTE(v19) = v31;
    sub_1000058EC(v24, v26, v13 & 1);

    sub_1000EA664();
    v32 = sub_1000EA714();
    v34 = v33;
    LOBYTE(v13) = v35;
    v37 = v36;
    sub_1000058EC(v28, v30, v19 & 1);

    *&v42 = v32;
    *(&v42 + 1) = v34;
    v43 = v13 & 1;
    v44 = v37;
    v45 = 0;
  }

  else
  {
    v42 = xmmword_1000F4D00;
    v43 = 0;
    v44 = 0;
    v45 = 1;
  }

  sub_1000EA4A4();
  result = *&v46;
  v39 = v47;
  v40 = v48;
  *a2 = v46;
  *(a2 + 16) = v39;
  *(a2 + 32) = v40;
  return result;
}

uint64_t sub_10008AA6C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for HighTemperatureColumn(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = type metadata accessor for DailyViewAttributes();
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000864A0();
  v10 = sub_1000EA3E4();
  sub_1000864A0();
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_100089A24();
  v13 = *(sub_100002A10(&qword_1001337E0, &qword_1000F5368) + 48);
  *(a1 + v13) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v9[*(v6 + 28)];
  v14 = *&v9[*(v6 + 76)];

  result = sub_10008662C(v9, type metadata accessor for DailyViewAttributes);
  a1[1] = v14;
  a1[2] = v10;
  a1[3] = sub_10008E7E4;
  a1[4] = v12;
  return result;
}

uint64_t sub_10008AC90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v71 = sub_1000EAD74();
  v5 = *(v71 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v71);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v66 - v11;
  v13 = sub_1000EC224();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v66 - v19;
  v21 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v69 = *(v21 - 8);
  v70 = v21;
  v22 = *(v69 + 64);
  __chkstk_darwin(v21);
  v24 = &v66 - v23;
  v73 = a1;
  sub_1000EB1B4();
  v72 = type metadata accessor for DailyViewAttributes();
  v25 = *(v72 + 52);
  v74 = a2;
  if (*(a2 + v25) == 1)
  {
    sub_1000EC0E4();
  }

  else
  {
    sub_1000EC0F4();
  }

  v26 = sub_1000E86A4();
  sub_1000028A0(v12, 1, 1, v26);
  sub_1000EAD34();

  sub_100006850(v12, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v68 = *(v14 + 8);
  v68(v20, v13);
  v27 = v18;
  v28 = v71;
  (*(v5 + 104))(v8, enum case for WeatherFormatPlaceholder.none(_:), v71);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v29 = v70;
  v30 = v24;
  v31 = sub_1000E8304();
  v67 = v32;

  (*(v5 + 8))(v8, v28);
  v68(v27, v13);
  (*(v69 + 8))(v30, v29);
  v78 = v31;
  v79 = v67;
  v71 = sub_100005898();
  v33 = sub_1000EA814();
  v35 = v34;
  v37 = v36;
  sub_1000EA9C4();
  v38 = sub_1000EA784();
  v40 = v39;
  LOBYTE(v29) = v41;

  sub_1000058EC(v33, v35, v37 & 1);

  v42 = *(v74 + *(v72 + 68));
  v43 = sub_1000EA7D4();
  v45 = v44;
  v47 = v46;
  sub_1000058EC(v38, v40, v29 & 1);

  v48 = sub_1000EA794();
  v50 = v49;
  v52 = v51;
  sub_1000058EC(v43, v45, v47 & 1);

  sub_1000EA664();
  v53 = sub_1000EA714();
  v55 = v54;
  LOBYTE(v45) = v56;
  v58 = v57;
  sub_1000058EC(v48, v50, v52 & 1);

  v78 = v53;
  v79 = v55;
  v80 = v45 & 1;
  v81 = v58;
  v76 = sub_10008B250(v73);
  v77 = v59;
  v60 = sub_1000EA814();
  v62 = v61;
  v64 = v63;
  sub_1000EA884();
  sub_1000058EC(v60, v62, v64 & 1);

  sub_1000058EC(v53, v55, v45 & 1);
}

uint64_t sub_10008B250(uint64_t a1)
{
  v2 = sub_1000EAD74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000EC224();
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v34);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v14 = qword_100145E00;
  v28._countAndFlagsBits = 0x80000001000FDE60;
  v37._object = 0x80000001000FDE40;
  v37._countAndFlagsBits = 0xD000000000000011;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v15.super.isa = v14;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v16 = sub_1000E8464(v37, v38, v15, v39, v28);
  v32 = v17;
  v33 = v16;

  sub_100002A10(&qword_100132C18, &unk_1000F42B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000F03E0;
  sub_1000EB1B4();
  sub_1000EAD24();
  (*(v3 + 104))(v6, enum case for WeatherFormatPlaceholder.none(_:), v2);
  sub_1000E93A4();
  sub_1000E9394();
  v30 = v2;
  v31 = a1;
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v19 = v34;
  v20 = sub_1000E8304();
  v22 = v21;

  (*(v3 + 8))(v6, v30);
  (*(v36 + 8))(v9, v19);
  (*(v35 + 8))(v13, v10);
  *(v18 + 56) = &type metadata for String;
  v23 = sub_10007C984();
  *(v18 + 64) = v23;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v24 = sub_1000EB124();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v23;
  *(v18 + 72) = v24;
  *(v18 + 80) = v25;
  v26 = sub_1000EBEB4();

  return v26;
}

uint64_t sub_10008B650@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for LowTemperatureColumn(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v2);
  v6 = type metadata accessor for DailyViewAttributes();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);
  sub_1000864A0();
  v12 = sub_1000EA3E4();
  sub_1000864A0();
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_100089A24();
  v15 = *(sub_100002A10(&qword_1001337E8, &unk_1000F5380) + 48);
  *(a1 + v15) = swift_getKeyPath();
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  swift_storeEnumTagMultiPayload();
  *a1 = *&v10[*(v7 + 28)];
  v16 = *&v10[*(v7 + 76)];

  result = sub_10008662C(v10, type metadata accessor for DailyViewAttributes);
  a1[1] = v16;
  a1[2] = v12;
  a1[3] = sub_10008EA04;
  a1[4] = v14;
  return result;
}

uint64_t sub_10008B87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v98 = sub_1000EA3A4();
  v97 = *(v98 - 8);
  v5 = *(v97 + 64);
  v6 = __chkstk_darwin(v98);
  v96 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v95 = &v92 - v8;
  v94 = sub_1000EA2C4();
  v93 = *(v94 - 8);
  v9 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1000EAD74();
  v11 = *(v104 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v104);
  v14 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002A10(&qword_10012FD68, &unk_1000F5370);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v92 - v17;
  v19 = sub_1000EC224();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v92 - v25;
  v27 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v102 = *(v27 - 8);
  v103 = v27;
  v28 = *(v102 + 64);
  __chkstk_darwin(v27);
  v100 = &v92 - v29;
  v105 = a1;
  sub_1000EB194();
  v106 = a2;
  if (sub_10008C0F8())
  {
    sub_1000EC0F4();
  }

  else
  {
    sub_1000EC0E4();
  }

  v30 = sub_1000E86A4();
  sub_1000028A0(v18, 1, 1, v30);
  sub_1000EAD34();

  sub_100006850(v18, &qword_10012FD68, &unk_1000F5370);
  sub_1000EC214();
  v101 = *(v20 + 8);
  v101(v26, v19);
  v31 = v104;
  (*(v11 + 104))(v14, enum case for WeatherFormatPlaceholder.none(_:), v104);
  sub_1000E93A4();
  sub_1000E9394();
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v32 = v103;
  v33 = v100;
  v99 = sub_1000E8304();
  v35 = v34;

  (*(v11 + 8))(v14, v31);
  v101(v24, v19);
  (*(v102 + 8))(v33, v32);
  v110 = v99;
  v111 = v35;
  v104 = sub_100005898();
  v36 = sub_1000EA814();
  v38 = v37;
  LOBYTE(v31) = v39;
  sub_1000EA9C4();
  v40 = sub_1000EA784();
  v42 = v41;
  v44 = v43;

  sub_1000058EC(v36, v38, v31 & 1);

  v103 = type metadata accessor for LowTemperatureColumn(0);
  v45 = v106;
  v46 = v106 + *(v103 + 24);
  v47 = *(v46 + *(type metadata accessor for DailyViewAttributes() + 68));
  sub_1000EA5D4();
  v48 = sub_1000EA7D4();
  v50 = v49;
  LOBYTE(v46) = v51;

  sub_1000058EC(v40, v42, v44 & 1);

  sub_1000EA664();
  v52 = sub_1000EA714();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v59 = v48;
  v60 = v45;
  sub_1000058EC(v59, v50, v46 & 1);

  v69 = *v45;
  if (*(v45 + 8) == 1)
  {
    v70 = 1.0;
    if (v69)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v71 = *v45;

    sub_1000EC1A4();
    v72 = sub_1000EA524();
    sub_1000E9F14();

    v73 = v92;
    sub_1000EA2B4();
    swift_getAtKeyPath();
    sub_100006530(v69, 0);
    v61 = (*(v93 + 8))(v73, v94);
    v70 = 1.0;
    if (v110)
    {
      goto LABEL_10;
    }
  }

  v74 = v60 + *(v103 + 20);
  v103 = v54;
  v75 = v52;
  v76 = v58;
  v77 = v56;
  v78 = v95;
  sub_10003E504(v61, v62, v63, v64, v65, v66, v67, v68, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  v79 = v97;
  v80 = v96;
  v81 = v98;
  (*(v97 + 104))(v96, enum case for ColorSchemeContrast.increased(_:), v98);
  LOBYTE(v74) = sub_1000EA394();
  v82 = *(v79 + 8);
  v82(v80, v81);
  v83 = v78;
  v56 = v77;
  v58 = v76;
  v52 = v75;
  v54 = v103;
  v82(v83, v81);
  v70 = 0.6;
  if (v74)
  {
    v70 = 1.0;
  }

LABEL_10:
  v110 = v52;
  v111 = v54;
  v84 = v56 & 1;
  v112 = v84;
  v113 = v58;
  v114 = v70;
  v108 = sub_10008C404(v105);
  v109 = v85;
  v86 = sub_1000EA814();
  v88 = v87;
  v90 = v89;
  sub_100002A10(&qword_1001301F0, &qword_1000F09D0);
  sub_1000268B8();
  sub_1000EA884();
  sub_1000058EC(v86, v88, v90 & 1);

  sub_1000058EC(v52, v54, v84);
}

uint64_t sub_10008C0F8()
{
  v1 = sub_1000EA2C4();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = (&v23 - v7);
  v9 = sub_1000EA3A4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LowTemperatureColumn(0);
  v15 = *(v14 + 20);
  v26 = v0;
  sub_10008F2B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v13, v8, v9);
  }

  else
  {
    v16 = *v8;
    sub_1000EC1A4();
    v17 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    (*(v24 + 8))(v4, v25);
  }

  v18 = (*(v10 + 88))(v13, v9);
  if (v18 == enum case for ColorSchemeContrast.standard(_:))
  {
    v19 = v26 + *(v14 + 24);
    return *(v19 + *(type metadata accessor for DailyViewAttributes() + 56));
  }

  else if (v18 == enum case for ColorSchemeContrast.increased(_:))
  {
    return 0;
  }

  else
  {
    v21 = v26 + *(v14 + 24);
    v20 = *(v21 + *(type metadata accessor for DailyViewAttributes() + 56));
    (*(v10 + 8))(v13, v9);
  }

  return v20;
}

uint64_t sub_10008C404(uint64_t a1)
{
  v2 = sub_1000EAD74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000EC224();
  v36 = *(v34 - 8);
  v7 = *(v36 + 64);
  __chkstk_darwin(v34);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  v35 = *(v10 - 8);
  v11 = *(v35 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - v12;
  if (qword_10012EBF8 != -1)
  {
    swift_once();
  }

  v14 = qword_100145E00;
  v28._countAndFlagsBits = 0x80000001000FDF60;
  v37._object = 0x80000001000FDF40;
  v37._countAndFlagsBits = 0xD000000000000010;
  v38.value._countAndFlagsBits = 0;
  v38.value._object = 0;
  v15.super.isa = v14;
  v39._countAndFlagsBits = 0;
  v39._object = 0xE000000000000000;
  v16 = sub_1000E8464(v37, v38, v15, v39, v28);
  v32 = v17;
  v33 = v16;

  sub_100002A10(&qword_100132C18, &unk_1000F42B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000F03E0;
  sub_1000EB194();
  sub_1000EAD24();
  (*(v3 + 104))(v6, enum case for WeatherFormatPlaceholder.none(_:), v2);
  sub_1000E93A4();
  sub_1000E9394();
  v30 = v2;
  v31 = a1;
  sub_1000865E4(&qword_10012ED78, &type metadata accessor for NSUnitTemperature.BaseWeatherFormatStyle);
  v19 = v34;
  v20 = sub_1000E8304();
  v22 = v21;

  (*(v3 + 8))(v6, v30);
  (*(v36 + 8))(v9, v19);
  (*(v35 + 8))(v13, v10);
  *(v18 + 56) = &type metadata for String;
  v23 = sub_10007C984();
  *(v18 + 64) = v23;
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  v24 = sub_1000EB124();
  *(v18 + 96) = &type metadata for String;
  *(v18 + 104) = v23;
  *(v18 + 72) = v24;
  *(v18 + 80) = v25;
  v26 = sub_1000EBEB4();

  return v26;
}

uint64_t sub_10008C800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v18 - v11);
  v13 = *(a1 + 48);
  sub_10008F2B0();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_1000EA694();
    return (*(*(v14 - 8) + 32))(a2, v12, v14);
  }

  else
  {
    v16 = *v12;
    sub_1000EC1A4();
    v17 = sub_1000EA524();
    sub_1000E9F14();

    sub_1000EA2B4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

double sub_10008CA08(uint64_t a1)
{
  v3 = sub_1000EA694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 8);
  sub_10008C800(a1, v7);
  sub_1000EA594();
  v10 = v9;
  (*(v4 + 8))(v7, v3);
  return v10;
}

uint64_t sub_10008CAF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  v6 = sub_1000E8634();
  v7 = *(a1 + 16);
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  v26 = v5;
  v27 = v6;
  v28 = sub_1000EAC04();
  v29 = sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0);
  v30 = sub_1000865E4(&qword_100131018, &type metadata accessor for UUID);
  sub_1000EAB44();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v8 = sub_1000EAAE4();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v15 = &v21[-v14];
  v16 = *(v2 + 16);
  v17 = *(a1 + 24);
  v22 = v7;
  v23 = v17;
  v24 = v2;
  sub_1000EAAD4();
  swift_getWitnessTable();
  v18 = v9[2];
  v18(v15, v13, v8);
  v19 = v9[1];
  v19(v13, v8);
  v18(a2, v15, v8);
  return (v19)(v15, v8);
}

uint64_t sub_10008CDE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v34 = a3;
  v35 = a4;
  v32 = a2;
  v33 = type metadata accessor for Column();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v33);
  v8 = v31 - v7;
  v9 = sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  v31[3] = v9;
  v10 = sub_1000E8634();
  v31[2] = v10;
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  v11 = sub_1000EAC04();
  v31[0] = v11;
  v12 = sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0);
  v31[1] = v12;
  v13 = sub_1000865E4(&qword_100131018, &type metadata accessor for UUID);
  v37 = v9;
  v38 = v10;
  v39 = v11;
  v40 = v12;
  v41 = v13;
  v14 = sub_1000EAB44();
  v15 = *(v14 - 8);
  v16 = v15[8];
  v17 = __chkstk_darwin(v14);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v31 - v20;
  v37 = *a1;
  v22 = a1;
  v23 = v33;
  (*(v5 + 16))(v8, v22, v33);
  v24 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v25 = swift_allocObject();
  v26 = v34;
  *(v25 + 16) = v32;
  *(v25 + 24) = v26;
  (*(v5 + 32))(v25 + v24, v8, v23);

  WitnessTable = swift_getWitnessTable();
  sub_1000865E4(&qword_1001333F8, &type metadata accessor for DailyForecastViewModel);
  sub_1000EAB34();
  v36 = WitnessTable;
  swift_getWitnessTable();
  v28 = v15[2];
  v28(v21, v19, v14);
  v29 = v15[1];
  v29(v19, v14);
  v28(v35, v21, v14);
  return (v29)(v21, v14);
}

uint64_t sub_10008D1E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v70 = a4;
  v71 = a5;
  v74 = a1;
  v64 = sub_1000EB214();
  v61 = *(v64 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v64);
  v59 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_100133400, &unk_1000F4F30);
  v10 = *(v9 - 8);
  v63 = v9 - 8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v62 = &v58 - v12;
  v13 = sub_100002A10(&qword_1001312A8, &unk_1000F1D70);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v72 = &v58 - v18;
  v19 = __chkstk_darwin(v17);
  v73 = &v58 - v20;
  v21 = *(a3 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v19);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000EA094();
  v26 = *(v25 - 8);
  v27 = v26[8];
  v28 = __chkstk_darwin(v25);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v58 - v31;
  v33 = *(a2 + 32);
  (*(a2 + 24))(v74);
  v34 = v70;
  v35 = type metadata accessor for Column();
  sub_10008CA08(v35);
  sub_1000EABC4();
  sub_1000EA944();
  v36 = a3;
  v37 = v72;
  (*(v21 + 8))(v24, v36);
  v81[2] = v34;
  v81[3] = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  v38 = v26[2];
  v69 = v32;
  v39 = v32;
  v40 = v61;
  v66 = v38;
  v38(v39, v30, v25);
  v41 = v26[1];
  v65 = v25;
  v70 = v26 + 1;
  v68 = v41;
  v41(v30, v25);
  v42 = v64;
  v43 = v73;
  (*(v40 + 16))(v73, v74, v64);
  sub_1000028A0(v43, 0, 1, v42);
  sub_100085400(*a2, v37);
  v44 = *(v63 + 56);
  v45 = v62;
  sub_10008F2B0();
  sub_10008F2B0();
  if (sub_100005B30(v45, 1, v42) == 1)
  {
    sub_100006850(v37, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v43, &qword_1001312A8, &unk_1000F1D70);
    if (sub_100005B30(v45 + v44, 1, v42) == 1)
    {
      sub_100006850(v45, &qword_1001312A8, &unk_1000F1D70);
LABEL_9:
      v49 = 0;
      v48 = 1;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v46 = v45;
  v47 = v60;
  sub_10008F2B0();
  if (sub_100005B30(v46 + v44, 1, v42) == 1)
  {
    sub_100006850(v72, &qword_1001312A8, &unk_1000F1D70);
    sub_100006850(v73, &qword_1001312A8, &unk_1000F1D70);
    (*(v40 + 8))(v47, v42);
    v45 = v46;
LABEL_6:
    sub_100006850(v45, &qword_100133400, &unk_1000F4F30);
    goto LABEL_7;
  }

  v50 = v46 + v44;
  v51 = v59;
  (*(v40 + 32))(v59, v50, v42);
  sub_1000865E4(&qword_100131250, &type metadata accessor for DailyForecastViewModel);
  v52 = sub_1000EBE24();
  v53 = *(v40 + 8);
  v53(v51, v42);
  sub_100006850(v72, &qword_1001312A8, &unk_1000F1D70);
  sub_100006850(v73, &qword_1001312A8, &unk_1000F1D70);
  v53(v47, v42);
  sub_100006850(v46, &qword_1001312A8, &unk_1000F1D70);
  if (v52)
  {
    goto LABEL_9;
  }

LABEL_7:
  v48 = 0;
  v49 = 0x4020000000000000;
LABEL_10:
  v54 = v69;
  v55 = v65;
  v66(v30, v69, v65);
  v78 = v49;
  v79 = 0;
  v80 = v48;
  v81[0] = v30;
  v81[1] = &v78;
  v77[0] = v55;
  v77[1] = sub_100002A10(&qword_1001338A0, &qword_1000F5408);
  v75 = WitnessTable;
  v76 = sub_10008F234();
  sub_100085194(v81, 2, v77);
  v56 = v68;
  v68(v54, v55);
  return v56(v30, v55);
}

uint64_t sub_10008DA20()
{
  sub_100026C9C();
  v3 = sub_100002A10(v1, v2);
  sub_1000069E4(v3);
  v5 = *(v4 + 32);
  v6 = sub_100019AC0();
  v7(v6);
  return v0;
}

uint64_t sub_10008DAF4()
{
  v4 = type metadata accessor for LargeDailyView(0);
  sub_10008F518(v4);
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  v9 = v1 + ((v6 + 16) & ~v6);
  v10 = sub_1000EBC44();
  sub_1000069D0(v10);
  (*(v11 + 8))(v9);
  v12 = type metadata accessor for DailyViewAttributes();
  sub_10008F6E8(v12);
  v13 = *(v9 + v2[17]);

  v14 = *(v9 + v2[18]);

  v15 = *(v9 + v2[19]);

  v16 = v2[22];
  v17 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F5EC(v17))
  {
    sub_1000326A0(v3);
    (*(v18 + 8))(v9 + v16, v3);
  }

  if (!sub_10008F64C())
  {
    sub_1000326A0(v3);
    (*(v19 + 8))(v2 + v9, v3);
  }

  sub_10008F760();
  v21 = ((v20 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v9 + *(v0 + 20));
  v23 = *v22;

  v24 = v22[1];

  v25 = v22[2];

  v26 = *(v0 + 24);
  v27 = sub_1000EA774();
  sub_1000069D0(v27);
  (*(v28 + 8))(v9 + v26);

  return _swift_deallocObject(v1, v21 + 8, v6 | 7);
}

uint64_t sub_10008DCD8()
{
  v1 = sub_10008F580();
  v2 = type metadata accessor for LargeDailyView(v1);
  sub_100032590(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = *(v6 + 64);
  sub_10008F6D0();
  v10 = *(v0 + v9);
  v12 = *(v0 + v11);
  v13 = *(v0 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = sub_10008F530();

  return sub_100087348(v14, v15, v16, v17, v18, v19);
}

uint64_t sub_10008DD98(uint64_t a1)
{
  v2 = sub_1000EA014();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1000EA164();
}

uint64_t sub_10008DEA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    v9 = sub_100006A04(v8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(a3 + 20);
    }

    else
    {
      v11 = type metadata accessor for DailyViewAttributes();
      v12 = *(a3 + 24);
    }

    return sub_100005B30(a1 + v12, a2, v11);
  }
}

uint64_t sub_10008DF84(uint64_t result, char a2, int a3)
{
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    sub_10008F780();
    v5 = sub_100002A10(&qword_10012ED90, &unk_1000EECD0);
    sub_100006A04(v5);
    if (*(v6 + 84) == v4)
    {
      v7 = *(v3 + 20);
    }

    else
    {
      type metadata accessor for DailyViewAttributes();
      v8 = *(v3 + 24);
    }

    sub_100055F04();

    return sub_1000028A0(v9, v10, v11, v12);
  }

  return result;
}

void sub_10008E048()
{
  sub_100005F48();
  if (v0 <= 0x3F)
  {
    sub_10008EF18(319, &qword_10012EE20, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      type metadata accessor for DailyViewAttributes();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008E128()
{
  sub_10008F774();
  if (v1 == v2)
  {
    return sub_100019B04(*v0);
  }

  v4 = v1;
  type metadata accessor for DailyViewAttributes();
  v5 = sub_10008F7A0();

  return sub_100005B30(v5, v4, v6);
}

void sub_10008E1B0(uint64_t a1, int a2)
{
  sub_10008F774();
  if (v4 == v5)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    type metadata accessor for DailyViewAttributes();
    sub_10008F7A0();
    sub_100055F04();

    sub_1000028A0(v6, v7, v8, v9);
  }
}

uint64_t sub_10008E224()
{
  result = type metadata accessor for DailyViewAttributes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008E2F0()
{
  result = type metadata accessor for DailyViewAttributes();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008E4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = sub_10008F580();
  v5 = v4(v3);
  sub_100009210(v5);
  v7 = *(v6 + 80);
  v8 = sub_10008F530();

  return a3(v8);
}

unint64_t sub_10008E560()
{
  result = qword_1001337D0;
  if (!qword_1001337D0)
  {
    sub_100002ABC(&qword_10012EF00, &qword_1000F5320);
    sub_1000865E4(&qword_1001337D8, &type metadata accessor for ConditionImage);
    sub_100006988(&qword_10012FA60, &qword_10012FA68, &unk_1000F2760);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001337D0);
  }

  return result;
}

uint64_t sub_10008E660(uint64_t (*a1)(void))
{
  v4 = a1(0);
  sub_100032590(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v9 = *(v8 + 64);
  v10 = v1 + v7;
  v11 = sub_1000EBC44();
  sub_1000069D0(v11);
  (*(v12 + 8))(v1 + v7);
  v13 = type metadata accessor for DailyViewAttributes();
  sub_10008F744(v13);
  v14 = *(v1 + v7 + v2[17]);

  v15 = *(v1 + v7 + v2[18]);

  v16 = *(v1 + v7 + v2[19]);

  v17 = v2[22];
  v18 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v18))
  {
    sub_1000326A0(v3);
    (*(v19 + 8))(v10 + v17, v3);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0(v3);
    (*(v20 + 8))(v2 + v10, v3);
  }

  return _swift_deallocObject(v1, v7 + v9, v6 | 7);
}

uint64_t sub_10008E810()
{
  v2 = type metadata accessor for LowTemperatureColumn(0);
  sub_10008F518(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = (v4 + 16) & ~v4;
  v8 = (v1 + v7);
  sub_100006530(*(v1 + v7), *(v1 + v7 + 8));
  v9 = *(v0 + 20);
  sub_100002A10(&qword_10012EEA8, &unk_1000EED70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1000EA3A4();
    sub_1000069D0(v10);
    (*(v11 + 8))(v8 + v9);
  }

  else
  {
    v12 = *(v8 + v9);
  }

  v13 = v8 + *(v0 + 24);
  v14 = sub_1000EBC44();
  sub_1000069D0(v14);
  (*(v15 + 8))(v13);
  v16 = type metadata accessor for DailyViewAttributes();
  sub_10008F744(v16);
  v17 = *&v13[v8[17]];

  v18 = *&v13[v8[18]];

  v19 = *&v13[v8[19]];

  v20 = v8[22];
  v21 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v21))
  {
    sub_1000326A0(v9);
    (*(v22 + 8))(&v13[v20], v9);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0(v9);
    (*(v23 + 8))(v8 + v13, v9);
  }

  return _swift_deallocObject(v1, v7 + v6, v4 | 7);
}

uint64_t sub_10008EA30()
{
  v3 = type metadata accessor for PrecipitationColumn(0);
  sub_10008F7AC(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + v6);

  v10 = v1 + v6 + *(v0 + 28);
  v11 = sub_1000EBC44();
  sub_1000069D0(v11);
  (*(v12 + 8))(v10);
  v13 = type metadata accessor for DailyViewAttributes();
  sub_10008F744(v13);
  v14 = *(v10 + *(v1 + v6 + 68));

  v15 = *(v10 + *(v1 + v6 + 72));

  v16 = *(v10 + *(v1 + v6 + 76));

  v17 = *(v1 + v6 + 88);
  v18 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  if (!sub_10008F60C(v18))
  {
    sub_1000326A0(v2);
    (*(v19 + 8))(v10 + v17, v2);
  }

  if (!sub_10008F62C())
  {
    sub_1000326A0(v2);
    (*(v20 + 8))(v10 + v1 + v6, v2);
  }

  return _swift_deallocObject(v1, v6 + v8, v5 | 7);
}

double sub_10008EBBC()
{
  v0 = sub_10008F580();
  v1 = type metadata accessor for PrecipitationColumn(v0);
  sub_100009210(v1);
  v3 = *(v2 + 80);
  sub_10008F530();

  return sub_10008A7A8(v4, v5);
}

void sub_10008EC74()
{
  sub_10008EF18(319, &qword_100130DC8, &type metadata accessor for DailyForecastViewModel, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_10008EED0();
    if (v1 <= 0x3F)
    {
      sub_10008EF18(319, &unk_10012FEC0, &type metadata accessor for Font.Context, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_10008ED9C()
{
  sub_10008F774();
  if (v1 == v3)
  {
    return sub_100019B04(*v0);
  }

  v5 = v2;
  v6 = v1;
  v7 = sub_100002A10(&qword_10012FE50, &qword_1000F0720);
  v8 = v0 + *(v5 + 48);

  return sub_100005B30(v8, v6, v7);
}

void sub_10008EE34(uint64_t a1, int a2)
{
  sub_10008F774();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    sub_100002A10(&qword_10012FE50, &qword_1000F0720);
    v8 = *(v7 + 48);
    sub_100055F04();

    sub_1000028A0(v9, v10, v11, v12);
  }
}

unint64_t sub_10008EED0()
{
  result = qword_100133878;
  if (!qword_100133878)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_100133878);
  }

  return result;
}

void sub_10008EF18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10008F08C()
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = type metadata accessor for Column();
  sub_10008F7AC(v4);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = v1 + v7;
  v11 = *(v1 + v7);

  v12 = *(v1 + v7 + 8);

  v13 = *(v1 + v7 + 32);

  v14 = *(v0 + 56);
  sub_100002A10(&qword_10012F6E8, &unk_1000F06A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_1000EA694();
    sub_1000069D0(v15);
    (*(v16 + 8))(v10 + v14);
  }

  else
  {
    v17 = *(v10 + v14);
  }

  return _swift_deallocObject(v1, v7 + v9, v6 | 7);
}

uint64_t sub_10008F1A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Column();
  sub_100009210(v3);
  v5 = *(v4 + 80);
  v6 = sub_10008F530();

  return sub_10008D1E8(v6, v7, v1, v2, v8);
}

unint64_t sub_10008F234()
{
  result = qword_1001338A8;
  if (!qword_1001338A8)
  {
    sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001338A8);
  }

  return result;
}

uint64_t sub_10008F2B0()
{
  sub_100026C9C();
  v3 = sub_100002A10(v1, v2);
  sub_1000069E4(v3);
  v5 = *(v4 + 16);
  v6 = sub_100019AC0();
  v7(v6);
  return v0;
}

uint64_t sub_10008F338(uint64_t *a1)
{
  v1 = *a1;
  sub_100002ABC(&qword_100130F40, &qword_1000F16B0);
  sub_1000E8634();
  sub_1000EA094();
  sub_100002ABC(&qword_1001338A0, &qword_1000F5408);
  swift_getTupleTypeMetadata2();
  sub_1000EAC04();
  sub_100006988(&qword_100131020, &qword_100130F40, &qword_1000F16B0);
  sub_1000865E4(&qword_100131018, &type metadata accessor for UUID);
  sub_1000EAB44();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1000EAAE4();
  return swift_getWitnessTable();
}

uint64_t sub_10008F4F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3);
}

uint64_t sub_10008F540()
{

  return type metadata accessor for DailyViewAttributes();
}

uint64_t sub_10008F55C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_100006988(a1, a2, a3);
}

uint64_t sub_10008F590()
{
  v3 = *(v1 - 128) + v0;

  return sub_1000EA734();
}

uint64_t sub_10008F5EC(uint64_t a1)
{

  return sub_100005B30(v1 + v2, 1, a1);
}

uint64_t sub_10008F60C(uint64_t a1)
{

  return sub_100005B30(v1 + v2, 1, a1);
}

uint64_t sub_10008F62C()
{
  v4 = v0 + *(v1 + 92);

  return sub_100005B30(v4, 1, v2);
}

uint64_t sub_10008F64C()
{
  v4 = v0 + *(v1 + 92);

  return sub_100005B30(v4, 1, v2);
}

void sub_10008F66C(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  *(v3 - 112) = a2;
  *(v3 - 104) = v2;
  *(v3 - 128) = a1;
}

uint64_t sub_10008F6A0(uint64_t result)
{
  *(v1 - 120) = result;
  v2 = *(result - 8);
  return result;
}

void sub_10008F6B8()
{
  if (v2 > v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = *(v0 - 104);
  **(v0 - 112) = v3;
}

uint64_t sub_10008F6E8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));
}

uint64_t sub_10008F704(uint64_t a1)
{
  sub_1000028A0(v1, 1, 1, a1);

  return sub_1000EA744();
}

uint64_t sub_10008F744(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 20));
}

uint64_t sub_10008F7C0()
{

  return sub_1000EA754();
}

uint64_t sub_10008F7E0(uint64_t a1)
{
  sub_1000028A0(v1, 1, 1, a1);

  return sub_1000EA7E4();
}

uint64_t sub_10008F818()
{
  sub_1000058EC(v1, v2, v0 & 1);
}

uint64_t sub_10008F850@<X0>(uint64_t a1@<X8>)
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
        _os_log_impl(&_mh_execute_header, v26, v27, "Expected aggregate weather but got instant or sunriseSunset", v28, 2u);
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
        _os_log_impl(&_mh_execute_header, v32, v33, "Making AdaptiveConditions complication view model entry from aggregate weather", v34, 2u);
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

uint64_t sub_10008FBD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000EBA54();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    if (a2 == 251)
    {
      v9 = *(a1 + *(a3 + 20));
      if (v9 >= 5)
      {
        return v9 - 4;
      }

      else
      {
        return 0;
      }
    }

    v7 = sub_1000EB504();
    v8 = a1 + *(a3 + 24);
  }

  return sub_100005B30(v8, a2, v7);
}

uint64_t sub_10008FCB0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000EBA54();
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 251)
    {
      *(a1 + *(a4 + 20)) = a2 + 4;
      return result;
    }

    v9 = sub_1000EB504();
    v10 = a1 + *(a4 + 24);
  }

  return sub_1000028A0(v10, a2, a2, v9);
}

uint64_t type metadata accessor for DataDenseViewAttributes()
{
  result = qword_100133908;
  if (!qword_100133908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008FDC4()
{
  result = sub_1000EBA54();
  if (v1 <= 0x3F)
  {
    result = sub_1000EB504();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008FE50(uint64_t a1, __int128 *a2, void *a3, __int128 *a4)
{
  swift_unknownObjectWeakInit();
  *(v4 + 16) = a1;
  sub_10004E7EC(a2, v4 + 24);
  swift_unknownObjectWeakAssign();

  sub_10004E7EC(a4, v4 + 72);
  return v4;
}

void *sub_10008FEC8()
{
  v1 = v0[2];

  sub_100009068(v0 + 3);
  swift_unknownObjectWeakDestroy();
  sub_100009068(v0 + 9);
  return v0;
}

uint64_t sub_10008FF00()
{
  sub_10008FEC8();

  return _swift_deallocClassInstance(v0, 112, 7);
}

uint64_t sub_10008FF58(uint64_t a1, void *a2)
{
  v91 = a2;
  v88 = sub_1000E8A14();
  v4 = sub_1000069E4(v88);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100006A10();
  v87 = v8 - v7;
  v9 = sub_100002A10(&qword_100132640, &unk_1000F3DE0);
  v10 = sub_100009210(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v85 = &v75 - v13;
  v14 = sub_100002A10(&qword_100132648, &qword_1000F54A0);
  v15 = sub_100009210(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v80 = &v75 - v18;
  v19 = sub_1000E8A64();
  v20 = sub_1000090D4(v19);
  v89 = v21;
  v90 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v20);
  sub_100006A10();
  v86 = v25 - v24;
  v26 = sub_100002A10(&qword_100133A00, &qword_1000F54A8);
  v27 = sub_100009210(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v75 - v30;
  v83 = sub_1000E8A84();
  v32 = sub_1000090D4(v83);
  v79 = v33;
  v35 = *(v34 + 64);
  __chkstk_darwin(v32);
  sub_100006A10();
  v77 = v37 - v36;
  v38 = sub_1000E90A4();
  v39 = sub_1000090D4(v38);
  v81 = v40;
  v82 = v39;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_100006A10();
  v45 = v44 - v43;
  v46 = sub_100002A10(&qword_1001304C8, &qword_1000F3D70);
  v47 = sub_100009210(v46);
  v49 = *(v48 + 64);
  v50 = __chkstk_darwin(v47);
  v52 = &v75 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v54 = &v75 - v53;
  sub_1000E9D54();
  v55 = v2[7];
  sub_100008DA8(v2 + 3, v2[6]);
  v78 = v45;
  sub_1000E90E4();
  v84 = a1;
  sub_1000E9D34();
  v56 = sub_1000E9D74();
  if (sub_100005B30(v31, 1, v56) == 1)
  {
    sub_100008E48(v31, &qword_100133A00, &qword_1000F54A8);
  }

  else
  {
    sub_1000E9D64();
    (*(*(v56 - 8) + 8))(v31, v56);
  }

  v75 = v2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v58 = Strong;
    sub_1000272C0();
  }

  v59 = v77;
  sub_1000E8A74();
  v76 = v54;
  sub_10000EBC4(v54, v52, &qword_1001304C8, &qword_1000F3D70);
  v61 = v79;
  v60 = v80;
  v62 = v83;
  (*(v79 + 16))(v80, v59, v83);
  sub_1000028A0(v60, 0, 1, v62);
  sub_1000E9D44();
  v63 = sub_1000E8A44();
  sub_1000028A0(v85, 1, 1, v63);
  v92 = &_swiftEmptyArrayStorage;
  sub_100091C90();
  sub_100002A10(&qword_100132660, &qword_1000F3DF8);
  sub_10006B614();
  sub_1000EC3C4();
  v64 = v86;
  v65 = sub_1000E8A54();
  __chkstk_darwin(v65);
  v66 = v91;
  *(&v75 - 4) = v75;
  *(&v75 - 3) = v66;
  v67 = v78;
  v73 = v78;
  v74 = v64;
  v68 = sub_100002A10(&qword_100133A08, &qword_1000F54B0);
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = sub_1000E9CB4();
  (*(v61 + 8))(v59, v62);
  sub_100008E48(v76, &qword_1001304C8, &qword_1000F3D70);
  (*(v89 + 8))(v64, v90);
  (*(v81 + 8))(v67, v82);
  return v71;
}

uint64_t sub_10009056C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v71 = a8;
  v52 = a5;
  v54 = a4;
  v59 = a3;
  v51 = a2;
  v56 = a1;
  v72 = sub_100002A10(&qword_100133A10, &qword_1000F54B8);
  v70 = *(v72 - 8);
  v9 = *(v70 + 64);
  __chkstk_darwin(v72);
  v44 = &v44 - v10;
  v11 = sub_100002A10(&qword_100132600, &qword_1000F3DA0);
  v68 = *(v11 - 8);
  v69 = v11;
  v12 = *(v68 + 64);
  __chkstk_darwin(v11);
  v45 = &v44 - v13;
  v14 = sub_100002A10(&qword_100132608, &qword_1000F3DA8);
  v66 = *(v14 - 8);
  v67 = v14;
  v15 = *(v66 + 64);
  __chkstk_darwin(v14);
  v46 = &v44 - v16;
  v17 = sub_100002A10(&qword_100132610, &qword_1000F3DB0);
  v64 = *(v17 - 8);
  v65 = v17;
  v18 = *(v64 + 64);
  __chkstk_darwin(v17);
  v47 = &v44 - v19;
  v20 = sub_100002A10(&qword_100132618, &qword_1000F3DB8);
  v62 = *(v20 - 8);
  v63 = v20;
  v21 = *(v62 + 64);
  __chkstk_darwin(v20);
  v48 = &v44 - v22;
  v23 = sub_100002A10(&qword_100132638, &unk_1000F54C0);
  v60 = *(v23 - 8);
  v61 = v23;
  v24 = *(v60 + 64);
  __chkstk_darwin(v23);
  v49 = &v44 - v25;
  v26 = sub_100002A10(&qword_100132620, &unk_1000F3DC0);
  v57 = *(v26 - 8);
  v58 = v26;
  v27 = *(v57 + 64);
  __chkstk_darwin(v26);
  v50 = &v44 - v28;
  v55 = sub_100002A10(&qword_100132628, &unk_1000F54D0);
  v53 = *(v55 - 8);
  v29 = *(v53 + 64);
  __chkstk_darwin(v55);
  v31 = &v44 - v30;
  v52 = *(v52 + 16);
  sub_1000E9084();
  sub_1000E9094();
  sub_1000E9064();
  sub_1000E9044();
  sub_1000E9024();
  sub_1000E9074();
  sub_1000E9054();
  sub_1000E9034();
  v32 = swift_allocObject();
  v33 = v56;
  v32[2] = a6;
  v32[3] = v33;
  v34 = v59;
  v32[4] = v51;
  v32[5] = v34;
  v32[6] = v54;
  sub_1000E88D4();
  v35 = a6;

  sub_100002A10(&qword_10012F108, &qword_1000EEF10);
  sub_100002A10(&qword_100132670, &unk_1000F54E0);
  sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  sub_100002A10(&qword_10012F260, &unk_1000EF030);
  sub_100002A10(&qword_10012F0F8, &qword_1000EEF00);
  sub_100002A10(&qword_100132678, &qword_1000F54F0);
  sub_1000E8E04();
  v36 = v44;
  v37 = v50;
  v38 = v49;
  v39 = v48;
  v40 = v47;
  v41 = v46;
  v42 = v45;
  sub_1000E8BA4();

  (*(v70 + 8))(v36, v72);
  (*(v68 + 8))(v42, v69);
  (*(v66 + 8))(v41, v67);
  (*(v64 + 8))(v40, v65);
  (*(v62 + 8))(v39, v63);
  (*(v60 + 8))(v38, v61);
  (*(v57 + 8))(v37, v58);
  return (*(v53 + 8))(v31, v55);
}

uint64_t sub_100090C9C(uint64_t a1, void *a2, void (*a3)(char *), uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v145 = a6;
  v154 = a4;
  v155 = a3;
  v150 = a2;
  v157 = a1;
  v7 = sub_100002A10(&qword_100133A18, &qword_1000F54F8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v108 - v9;
  v11 = sub_100002A10(&qword_100133A20, &unk_1000F5500);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v149 = (v108 - v13);
  v14 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v148 = v108 - v16;
  v146 = sub_1000E8604();
  v17 = *(*(v146 - 8) + 64);
  v18 = __chkstk_darwin(v146);
  v147 = v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v158 = (v108 - v20);
  v21 = sub_1000E9DF4();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v159 = v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1000E9DA4();
  v156 = *(v151 - 8);
  v24 = *(v156 + 64);
  __chkstk_darwin(v151);
  v161 = v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100002A10(&qword_100133A28, &qword_1000F5510);
  v27 = *(*(v26 - 1) + 64);
  v28 = __chkstk_darwin(v26);
  v152 = v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v153 = v108 - v31;
  v32 = __chkstk_darwin(v30);
  v160 = v108 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = v108 - v35;
  v37 = __chkstk_darwin(v34);
  v39 = v108 - v38;
  __chkstk_darwin(v37);
  v41 = v108 - v40;
  v42 = sub_100002A10(&qword_100133A30, &qword_1000F5518);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v45 = (v108 - v44);
  sub_10000EBC4(v157, v108 - v44, &qword_100133A30, &qword_1000F5518);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a5(*v45);
  }

  else
  {
    v47 = v45;
    v48 = v41;
    sub_100091D4C(v47, v41);
    v144 = v41;
    sub_10000EBC4(v41, v39, &qword_100133A28, &qword_1000F5510);
    v145 = v26[12];
    v143 = v26[16];
    v142 = v26[20];
    v141 = v26[24];
    v140 = v26[28];
    v49 = *&v39[v26[32]];

    v50 = v26[36];
    sub_1000E8DE4();
    v51 = sub_1000E8E04();
    v52 = *(v51 - 8);
    v53 = *(v52 + 8);
    v54 = v52 + 8;
    v131 = v51;
    v53(&v39[v50], v51);
    v132 = v54;
    v55 = v10;
    v133 = v53;
    sub_10000EBC4(v48, v36, &qword_100133A28, &qword_1000F5510);
    v139 = v26[12];
    v138 = v26[16];
    v137 = v26[20];
    v157 = v26[24];
    v136 = v26[28];
    v56 = *(v36 + v26[32]);

    v57 = v26[36];
    sub_1000E8D94();
    v53((v36 + v57), v51);
    sub_1000028A0(v148, 1, 1, v146);
    v58 = v150;
    [v150 coordinate];
    [v58 coordinate];
    v59 = sub_1000E9DD4();
    sub_1000028A0(v149, 1, 1, v59);
    v60 = sub_1000E9D84();
    sub_1000028A0(v55, 1, 1, v60);
    sub_1000E9DE4();
    sub_100008E48(&v136[v36], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v36 + v157, &qword_10012F260, &unk_1000EF030);
    v157 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
    v61 = *(v157 - 8);
    v150 = *(v61 + 8);
    v147 = (v61 + 8);
    (v150)(v36 + v137, v157);
    v62 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
    v63 = *(v62 - 8);
    v64 = *(v63 + 8);
    v65 = v63 + 8;
    v129 = v62;
    v64(v36 + v138, v62);
    v130 = v65;
    v158 = v64;
    sub_100008E48(v36 + v139, &qword_10012F108, &qword_1000EEF10);
    v66 = sub_1000E88D4();
    v67 = *(v66 - 8);
    v68 = *(v67 + 8);
    v69 = v67 + 8;
    v146 = v66;
    v68(v36, v66);
    v148 = v69;
    v149 = v68;
    sub_100008E48(&v39[v140], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v39[v141], &qword_10012F260, &unk_1000EF030);
    (v150)(&v39[v142], v157);
    v64(&v39[v143], v62);
    sub_100008E48(&v39[v145], &qword_10012F108, &qword_1000EEF10);
    v68(v39, v66);
    v70 = v144;
    sub_10000EBC4(v144, v39, &qword_100133A28, &qword_1000F5510);
    v145 = v26[12];
    v143 = v26[16];
    v142 = v26[20];
    v141 = v26[24];
    v140 = v26[28];
    v71 = *&v39[v26[32]];

    v72 = v26[36];
    v123 = sub_1000E8DC4();
    v122 = v73;
    v74 = v131;
    v75 = v133;
    v133(&v39[v72], v131);
    sub_10000EBC4(v70, v36, &qword_100133A28, &qword_1000F5510);
    v139 = v26[12];
    v138 = v26[16];
    v137 = v26[20];
    v135 = v26[24];
    v134 = v26[28];
    v76 = *(v36 + v26[32]);

    v77 = v26[36];
    v118 = sub_1000E8DD4();
    v117 = v78;
    v79 = v74;
    v75(v36 + v77, v74);
    v80 = v160;
    v136 = v39;
    sub_10000EBC4(v70, v160, &qword_100133A28, &qword_1000F5510);
    v128 = v26[12];
    v127 = v26[16];
    v126 = v26[20];
    v125 = v26[24];
    v124 = v26[28];
    v81 = *(v80 + v26[32]);

    v82 = v26[36];
    v114 = sub_1000E8DB4();
    v113 = v83;
    v84 = v79;
    v75(v80 + v82, v79);
    v85 = v70;
    v86 = v153;
    sub_10000EBC4(v70, v153, &qword_100133A28, &qword_1000F5510);
    v121 = v26[12];
    v120 = v26[16];
    v119 = v26[20];
    v116 = v26[24];
    v115 = v26[28];
    v87 = *(v86 + v26[32]);

    v88 = v26[36];
    v111 = sub_1000E8DA4();
    v108[1] = v89;
    v75(v86 + v88, v84);
    v90 = v75;
    v91 = v152;
    sub_10000EBC4(v85, v152, &qword_100133A28, &qword_1000F5510);
    v92 = v26[12];
    v112 = v26[16];
    v110 = v26[20];
    v109 = v26[24];
    v108[0] = v26[28];
    v93 = *(v91 + v26[32]);

    v94 = v26[36];
    sub_1000E8DF4();
    v90(v91 + v94, v84);
    sub_1000E9D94();
    sub_100008E48(v91 + v108[0], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v91 + v109, &qword_10012F260, &unk_1000EF030);
    v95 = v157;
    v96 = v150;
    (v150)(v91 + v110, v157);
    v97 = v129;
    v98 = v158;
    v158(v91 + v112, v129);
    sub_100008E48(v91 + v92, &qword_10012F108, &qword_1000EEF10);
    v99 = v36;
    v100 = v146;
    v149(v91, v146);
    sub_100008E48(v86 + v115, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v86 + v116, &qword_10012F260, &unk_1000EF030);
    v96(v86 + v119, v95);
    v98(v86 + v120, v97);
    sub_100008E48(v86 + v121, &qword_10012F108, &qword_1000EEF10);
    v101 = v149;
    v149(v86, v100);
    v102 = v160;
    sub_100008E48(v160 + v124, &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(v102 + v125, &qword_10012F260, &unk_1000EF030);
    v96(v102 + v126, v95);
    v158(v102 + v127, v97);
    sub_100008E48(v102 + v128, &qword_10012F108, &qword_1000EEF10);
    v103 = v146;
    v101(v102, v146);
    sub_100008E48(&v99[v134], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v99[v135], &qword_10012F260, &unk_1000EF030);
    v104 = v157;
    v96(&v99[v137], v157);
    v105 = v158;
    v158(&v99[v138], v97);
    sub_100008E48(&v99[v139], &qword_10012F108, &qword_1000EEF10);
    v101(v99, v103);
    v106 = v136;
    sub_100008E48(&v136[v140], &qword_10012F0F8, &qword_1000EEF00);
    sub_100008E48(&v106[v141], &qword_10012F260, &unk_1000EF030);
    v96(&v106[v142], v104);
    v105(&v106[v143], v97);
    sub_100008E48(&v106[v145], &qword_10012F108, &qword_1000EEF10);
    v101(v106, v103);
    v107 = v161;
    v155(v161);
    (*(v156 + 8))(v107, v151);
    return sub_100008E48(v144, &qword_100133A28, &qword_1000F5510);
  }
}

unint64_t sub_100091C90()
{
  result = qword_100132658;
  if (!qword_100132658)
  {
    sub_1000E8A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132658);
  }

  return result;
}

uint64_t sub_100091CF4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100091D4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100133A28, &qword_1000F5510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100091DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB3C4();

  return sub_100005B30(a1, a2, v4);
}

uint64_t sub_100091E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB3C4();

  return sub_1000028A0(a1, a2, a2, v4);
}

uint64_t type metadata accessor for CurrentObservationViewModelFactory()
{
  result = qword_100133A90;
  if (!qword_100133A90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100091EC4()
{
  result = sub_1000EB3C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *sub_100091F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v457 = a3;
  v459 = a2;
  v465 = a1;
  v446[1] = a4;
  v399 = sub_1000EB3C4();
  v4 = sub_1000090D4(v399);
  v398 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10004B3F0();
  sub_10000D4A0(v8);
  v405 = sub_1000E8814();
  v9 = sub_1000090D4(v405);
  v404 = v10;
  v12 = *(v11 + 64);
  __chkstk_darwin(v9);
  sub_10004B3F0();
  sub_10000D4C4(v13);
  v14 = sub_100002A10(&qword_100132670, &unk_1000F54E0);
  v15 = sub_100009210(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_10000D4C4(v379 - v18);
  v19 = sub_100002A10(&qword_10012F260, &unk_1000EF030);
  v20 = sub_100009210(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v23);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v24);
  sub_10000D56C();
  sub_10000D4C4(v25);
  v26 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v27 = sub_100009210(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v30);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v31);
  sub_10000D56C();
  sub_10000D4A0(v32);
  v33 = sub_1000E9134();
  v34 = sub_100009210(v33);
  v36 = *(v35 + 64);
  __chkstk_darwin(v34);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v37);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v38);
  sub_10000D56C();
  sub_10000D4A0(v39);
  v40 = sub_1000E9184();
  v41 = sub_100009210(v40);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v44);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v45);
  sub_10000D56C();
  sub_10000D4A0(v46);
  v47 = sub_1000E9224();
  v48 = sub_1000090D4(v47);
  v451 = v49;
  v452 = v48;
  v51 = *(v50 + 64);
  __chkstk_darwin(v48);
  sub_10004B3F0();
  sub_10000D4C4(v52);
  v53 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v54 = sub_100009210(v53);
  v56 = *(v55 + 64);
  __chkstk_darwin(v54);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v57);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v58);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v59);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v60);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v61);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v62);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v63);
  sub_10000D56C();
  sub_10000D4A0(v64);
  v65 = sub_1000EAF24();
  v66 = sub_100009210(v65);
  v68 = *(v67 + 64);
  __chkstk_darwin(v66);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v69);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v70);
  sub_10000D56C();
  sub_10000D4C4(v71);
  v72 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v73 = sub_100009210(v72);
  v75 = *(v74 + 64);
  __chkstk_darwin(v73);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v76);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v77);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v78);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v79);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v80);
  sub_10000D56C();
  sub_10000D4C4(v81);
  v458 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000326A0(v458);
  v83 = *(v82 + 64);
  __chkstk_darwin(v84);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v85);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v86);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v87);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v88);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v89);
  sub_10000D56C();
  sub_10000D4A0(v90);
  v445 = sub_1000E8C04();
  v91 = sub_1000090D4(v445);
  v444 = v92;
  v94 = *(v93 + 64);
  __chkstk_darwin(v91);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v95);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v96);
  v98 = v379 - v97;
  v99 = sub_1000E8634();
  v100 = sub_100009210(v99);
  v102 = *(v101 + 64);
  __chkstk_darwin(v100);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v103);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v104);
  sub_10000D56C();
  sub_10000D4A0(v105);
  v443 = sub_1000E8C34();
  v106 = sub_1000090D4(v443);
  v442 = v107;
  v109 = *(v108 + 64);
  __chkstk_darwin(v106);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v110);
  sub_10000D56C();
  sub_10000D4A0(v111);
  v112 = sub_1000EAFC4();
  v461 = sub_1000090D4(v112);
  v462 = v113;
  v115 = *(v114 + 64);
  __chkstk_darwin(v461);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v116);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v117);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v118);
  sub_10000D4D0();
  v456 = v119;
  sub_10004B6F4();
  __chkstk_darwin(v120);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v121);
  sub_10000D56C();
  sub_10000D4A0(v122);
  v123 = sub_1000E8604();
  v124 = sub_1000090D4(v123);
  v126 = v125;
  v128 = *(v127 + 64);
  __chkstk_darwin(v124);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v129);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v130);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v131);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v132);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v133);
  sub_10000D4D0();
  v454 = v134;
  sub_10004B6F4();
  __chkstk_darwin(v135);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v136);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v137);
  sub_10000D56C();
  sub_10000D4C4(v138);
  v447 = sub_100002A10(&qword_10012F0F0, &unk_1000F3E00);
  v139 = sub_1000090D4(v447);
  v446[3] = v140;
  v142 = *(v141 + 64);
  __chkstk_darwin(v139);
  sub_10000D4C4(v379 - v143);
  v144 = sub_100002A10(&qword_100133AC8, &qword_1000F5550);
  v145 = sub_100009210(v144);
  v147 = *(v146 + 64);
  __chkstk_darwin(v145);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v148);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v149);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v150);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v151);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v152);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v153);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v154);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v155);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v156);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v157);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v158);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v159);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v160);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v161);
  sub_10000D56C();
  v466 = v162;
  sub_10000921C();
  v464 = sub_1000E88D4();
  v163 = sub_1000090D4(v464);
  v165 = v164;
  v167 = *(v166 + 64);
  __chkstk_darwin(v163);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v168);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v169);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v170);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v171);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v172);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v173);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v174);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v175);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v176);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v177);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v178);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v179);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v180);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v181);
  sub_10000D4D0();
  sub_10000D408();
  __chkstk_darwin(v182);
  v184 = v379 - v183;
  sub_1000E93A4();
  sub_1000E9394();
  v185 = sub_1000E9364();

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v186 = sub_1000E9F64();
  v187 = sub_100008CB8(v186, qword_100145C10);
  v188 = v185;
  v453 = v187;
  v189 = sub_1000E9F44();
  v190 = sub_1000EC1B4();

  v191 = os_log_type_enabled(v189, v190);
  v463 = v184;
  v460 = v188;
  if (v191)
  {
    v192 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    v455 = v126;
    v194 = v193;
    v467 = v188;
    v468 = v193;
    *v192 = 136446210;
    sub_10004ADF0();
    v195 = v188;
    v188 = v123;
    v196 = v195;
    v197 = sub_1000EBEF4();
    v199 = v165;
    v200 = sub_1000E2E18(v197, v198, &v468);

    *(v192 + 4) = v200;
    v165 = v199;
    _os_log_impl(&_mh_execute_header, v189, v190, "Building current weather model from aggregate weather. - unit: %{public}s", v192, 0xCu);
    sub_100009068(v194);
    v126 = v455;
    sub_100009194();
    sub_100009194();
  }

  v441 = v165;
  v201 = v165;
  sub_1000E8C64();
  v202 = v446[2];
  sub_1000E8C84();
  sub_10009572C(&v472);
  sub_1000E8874();
  sub_1000E91A4();
  v205 = *(v126 + 8);
  v204 = v126 + 8;
  v203 = v205;
  v459 = v123;
  v206 = v204;
  (v205)(v188, v123);
  sub_10006BB44(&v471);
  v207(v202, v447);
  if (!v457)
  {
    sub_100095788(&v457);
    sub_1000E88C4();
    sub_1000E8844();
    sub_1000EB3A4();
    sub_10006BB44(&v469);
    v218(v123, v443);
    sub_1000E8624();
    sub_100095788(v406);
    v219 = v465;
    sub_1000E8C64();
    sub_1000E8874();
    v220 = sub_100095834();
    v203(v220);
    sub_10009572C(v407);
    sub_1000E8C64();
    sub_1000E88B4();
    v221 = sub_10007CEA0();
    v203(v221);
    sub_1000E8BE4();
    sub_10006BB44(&v470);
    v222(v98, v445);
    sub_10009572C(v408);
    sub_1000E8C64();
    sub_100095758(v448);
    sub_1000E8854();
    v223 = sub_10007CEA0();
    v203(v223);
    sub_10009572C(v409);
    sub_1000E8C64();
    sub_100095758(&v449);
    sub_1000E8864();
    v224 = sub_10007CEA0();
    v203(v224);
    v225 = v460;
    sub_1000EC234();
    v457 = v226;
    sub_100095800(v466, v410);
    v227 = sub_1000E87C4();
    sub_1000956EC(v225);
    if (v228)
    {
      sub_100032054(v225, &qword_100133AC8, &qword_1000F5550);
      v276 = 1;
      v277 = v389;
      v219 = v426;
    }

    else
    {
      sub_100095770(&v451);
      sub_1000E87A4();
      sub_10009570C();
      v273 = *(v272 + 8);
      v274 = sub_100095764();
      v275(v274);
      v276 = 0;
      v277 = v389;
    }

    v278 = v387;
    v279 = v441;
    v280 = sub_10009586C(v219, v276);
    sub_10009562C(v280, v278);
    if (sub_100005B30(v278, 1, v227) == 1)
    {
      sub_100032054(v278, &qword_100133AC8, &qword_1000F5550);
      v281 = 1;
      v206 = v425;
    }

    else
    {
      sub_10009577C(v450);
      sub_1000E8794();
      sub_10009570C();
      (*(v282 + 8))(v278, v227);
      v281 = 0;
    }

    sub_1000957D0(v206, v281);
    v283(v423, v449);
    sub_10009572C(v411);
    v284 = v465;
    sub_1000E8C64();
    sub_1000E8834();
    v285 = v464;
    (v203)(v279, v464);
    sub_10009572C(v412);
    sub_1000E8C64();
    sub_100095758(&v452);
    sub_1000E8824();
    (v203)(v279, v285);
    sub_100095800(v466, v413);
    sub_1000956EC(v284);
    if (v228)
    {
      sub_100032054(v284, &qword_100133AC8, &qword_1000F5550);
      v286 = sub_10009571C(&v453);
      sub_1000028A0(v286, v287, v288, v459);
    }

    else
    {
      sub_10009577C(&v473);
      sub_1000E87B4();
      sub_10009570C();
      v290 = *(v289 + 8);
      v291 = sub_100095764();
      v292(v291);
      sub_1000E9214();
      sub_1000957F4();
      v293(v285);
    }

    v294 = v390;
    v295 = v388;
    sub_10009562C(v466, v388);
    sub_1000956EC(v295);
    if (v228)
    {
      sub_100032054(v295, &qword_100133AC8, &qword_1000F5550);
      v296 = sub_10009571C(&v454);
      sub_1000028A0(v296, v297, v298, v459);
    }

    else
    {
      sub_10009577C(&v473);
      sub_1000E87B4();
      sub_10009570C();
      v300 = *(v299 + 8);
      v301 = sub_100095764();
      v302(v301);
      sub_1000E9204();
      (*(v451 + 8))(v285, v452);
    }

    v263 = v463;
    sub_1000E8894();
    sub_1000E8884();
    sub_1000E88A4();
    sub_100095818();
    v303 = sub_1000E8D34();
    sub_1000956EC(v294);
    if (v228)
    {
      sub_100032054(v294, &qword_10012F260, &unk_1000EF030);
      v305 = 1;
    }

    else
    {
      sub_100094DB4();
      sub_10009570C();
      (*(v304 + 8))(v294, v303);
      v305 = 0;
    }

    v306 = sub_1000EB584();
    sub_1000028A0(v277, v305, 1, v306);
    v378 = v277;
    v377 = v429;
    v376 = v428[1];
    v375 = v428[0];
    sub_100095860();
    sub_1000957C0();
    sub_1000EB614();
    sub_1000957B0();
    v307(v449);
    v260 = v460;
    goto LABEL_69;
  }

  v208 = v454;
  sub_1000E8874();
  sub_100095770(v446);
  v209 = sub_1000E8CA4();
  v210 = v379;
  __chkstk_darwin(v209);
  v377 = v208;
  result = sub_100095238(sub_100095218, &v375);
  v212 = result;
  v213 = result[2];
  v455 = v204;
  v418 = v203;
  if (v213)
  {
    v214 = v421;
    if (v213 >= v457)
    {
      v264 = v457 - 1;
      if (__OFSUB__(v457, 1))
      {
        __break(1u);
      }

      else
      {
        v265 = v386;
        v266 = v385;
        if (v264 < v213)
        {
          v267 = v420;
          (*(v404 + 16))(v420, result + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v264, v405);

          (*(v398 + 16))(v397, v446[0], v399);
          sub_1000E8804();
          sub_1000E87F4();
          sub_10009562C(v466, v266);
          v268 = sub_1000E87C4();
          sub_1000956EC(v266);
          if (v228)
          {
            sub_100032054(v266, &qword_100133AC8, &qword_1000F5550);
            v269 = sub_10009571C(&v418);
            sub_1000028A0(v269, v270, v271, v459);
          }

          else
          {
            sub_100095770(&v473);
            v267 = v266;
            sub_1000E87B4();
            sub_10009570C();
            (*(v308 + 8))(v266, v268);
            sub_100095854(&v418);
            sub_1000E9214();
            sub_1000957F4();
            v309(0);
          }

          sub_100095800(v466, &v399);
          sub_1000956EC(v267);
          if (v228)
          {
            sub_100032054(v267, &qword_100133AC8, &qword_1000F5550);
            sub_10000D52C();
            v318 = v459;
            sub_1000028A0(v310, v311, v312, v459);
          }

          else
          {
            sub_100095770(&v473);
            sub_1000E87B4();
            sub_10009570C();
            v314 = *(v313 + 8);
            v315 = sub_100095764();
            v316(v315);
            sub_1000E9204();
            sub_1000957F4();
            v317(0);
            v318 = v459;
          }

          v319 = v392;
          v320 = v394;
          sub_1000E85E4();
          v321 = v265;
          v322 = &qword_1000EEF30;
          sub_100032054(v321, &qword_10012F048, &qword_1000EEF30);
          sub_100032054(v319, &qword_10012F048, &qword_1000EEF30);
          v418(v320, v318);
          v323 = v395;
          v324 = v397;
          sub_1000EB3A4();
          sub_10006BB44(&v469);
          v325(v323, v443);
          sub_10006BB44(v424);
          v326(v324, v399);
          sub_1000E8624();
          sub_1000E87F4();
          sub_10009577C(&v398);
          sub_1000E8C64();
          sub_10009572C(&v403);
          sub_1000E88B4();
          v328 = *(v201 + 8);
          v327 = v201 + 8;
          v203 = v328;
          (v328)(v319, v464);
          sub_100095758(v422);
          sub_1000E8BE4();
          sub_10006BB44(&v470);
          v329(&qword_1000EEF30, v445);
          sub_100095854(&v426);
          sub_1000E87D4();
          sub_1000E87E4();
          v330 = v460;
          sub_1000EC234();
          v332 = v331;
          sub_100095800(v466, v400);
          sub_1000956EC(v330);
          if (v228)
          {
            sub_100032054(v330, &qword_100133AC8, &qword_1000F5550);
            v337 = 1;
            v322 = v391;
          }

          else
          {
            sub_10009572C(&v417);
            sub_1000E87A4();
            sub_10009570C();
            v334 = *(v333 + 8);
            v335 = sub_100095764();
            v336(v335);
            v337 = 0;
          }

          v338 = v379[1];
          v339 = sub_10009586C(v322, v337);
          v340 = v384;
          sub_10009562C(v339, v384);
          sub_1000956EC(v340);
          v457 = v332;
          v341 = v466;
          if (v228)
          {
            sub_100032054(v340, &qword_100133AC8, &qword_1000F5550);
            v343 = 1;
            v340 = v381;
          }

          else
          {
            sub_10009572C(&v396);
            sub_1000E8794();
            sub_10009570C();
            (*(v342 + 8))(v340, v268);
            v343 = 0;
          }

          sub_1000957D0(v340, v343);
          v344(v396, v419);
          v345 = v465;
          sub_1000E8C64();
          sub_1000E8834();
          v346 = v464;
          (v203)(v338, v464);
          sub_100095770(v401);
          sub_1000E8C64();
          sub_100095854(v427);
          sub_1000E8824();
          (v203)(v338, v346);
          sub_100095800(v341, &v402);
          sub_1000956EC(v345);
          if (v228)
          {
            sub_100032054(v345, &qword_100133AC8, &qword_1000F5550);
            v347 = sub_10009571C(&v419);
            sub_1000028A0(v347, v348, v349, v459);
          }

          else
          {
            sub_100095794();
            sub_10009570C();
            v351 = *(v350 + 8);
            v352 = sub_100095764();
            v353(v352);
            sub_100095848(&v419);
            sub_1000E9214();
            sub_1000957F4();
            v354(v327);
          }

          v355 = v380;
          sub_10009562C(v466, v380);
          sub_1000956EC(v355);
          v263 = v463;
          if (v228)
          {
            sub_100032054(v355, &qword_100133AC8, &qword_1000F5550);
            v356 = sub_10009571C(&v420);
            sub_1000028A0(v356, v357, v358, v459);
          }

          else
          {
            sub_100095794();
            sub_10009570C();
            v360 = *(v359 + 8);
            v361 = sub_100095764();
            v362(v361);
            sub_100095848(&v420);
            sub_1000E9204();
            (*(v451 + 8))(v327, v452);
          }

          v363 = v383;
          sub_100095854(v428);
          sub_1000E8894();
          sub_1000E8884();
          sub_1000E88A4();
          sub_100095818();
          v364 = sub_1000E8D34();
          sub_1000956EC(v363);
          if (v228)
          {
            sub_100032054(v363, &qword_10012F260, &unk_1000EF030);
            v367 = 1;
            v365 = v382;
          }

          else
          {
            v365 = v382;
            sub_100094DB4();
            sub_10009570C();
            (*(v366 + 8))(v363, v364);
            v367 = 0;
          }

          v368 = sub_1000EB584();
          sub_1000028A0(v365, v367, 1, v368);
          v378 = v365;
          v377 = v403;
          v376 = v402;
          v375 = v393;
          sub_100095860();
          sub_1000957C0();
          sub_1000EB614();
          sub_1000957B0();
          v369(v419);
          sub_10006BB44(&v429);
          v370(v420, v405);
          v250 = v459;
          v260 = v460;
          goto LABEL_68;
        }
      }

      __break(1u);
      return result;
    }

    v215 = sub_1000E9F44();
    v216 = sub_1000EC194();
    if (os_log_type_enabled(v215, v216))
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&_mh_execute_header, v215, v216, "Invalid hour entry - falling back to current conditions", v210, 2u);
      sub_100009194();
    }

    v217 = v460;
  }

  else
  {

    v217 = v460;
    v214 = v421;
  }

  sub_100095788(&v457);
  sub_1000E88C4();
  sub_1000E8844();
  sub_1000EB3A4();
  sub_10006BB44(&v469);
  v229(v212, v443);
  sub_1000E8624();
  sub_100095788(v430);
  sub_1000E8C64();
  sub_1000E8874();
  v230 = sub_100095834();
  v203(v230);
  sub_10009577C(v431);
  sub_1000E8C64();
  sub_10009572C(v438);
  sub_1000E88B4();
  (v203)(v204, v212);
  sub_100095758(&v459);
  sub_1000E8BE4();
  sub_10006BB44(&v470);
  v231(v210, v445);
  sub_10009572C(&v432);
  sub_1000E8C64();
  sub_100095758(&v462);
  sub_1000E8854();
  v232 = sub_10007CEA0();
  v203(v232);
  sub_10009572C(v433);
  sub_1000E8C64();
  sub_100095758(&v463);
  sub_1000E8864();
  v233 = sub_10007CEA0();
  v203(v233);
  v457 = sub_1000EC234();
  v449 = v234;
  sub_100095800(v466, v434);
  v235 = sub_1000E87C4();
  sub_100095738(v217);
  if (v228)
  {
    sub_100032054(v217, &qword_100133AC8, &qword_1000F5550);
    v237 = 1;
    v217 = v436;
  }

  else
  {
    sub_100095770(&v464);
    sub_1000E87A4();
    sub_1000326A0(v235);
    (*(v236 + 8))(v217, v235);
    v237 = 0;
  }

  v238 = sub_10009586C(v217, v237);
  sub_10009562C(v238, v214);
  sub_100095738(v214);
  v239 = v466;
  if (v228)
  {
    sub_100032054(v214, &qword_100133AC8, &qword_1000F5550);
    v241 = 1;
    v217 = v415;
  }

  else
  {
    sub_100095770(v440);
    sub_1000E8794();
    sub_1000326A0(v235);
    (*(v240 + 8))(v214, v235);
    v241 = 0;
  }

  sub_1000957D0(v217, v241);
  v242(v432, v456);
  sub_100095788(v435);
  sub_1000E8C64();
  sub_1000E8834();
  v243 = v464;
  (v203)(v212, v464);
  sub_100095788(&v436);
  sub_1000E8C64();
  sub_1000E8824();
  (v203)(v212, v243);
  sub_100095800(v239, v437);
  sub_100095738(v212);
  if (v228)
  {
    sub_100032054(v212, &qword_100133AC8, &qword_1000F5550);
    v244 = sub_10009571C(&v466);
    sub_1000028A0(v244, v245, v246, v459);
  }

  else
  {
    sub_100095794();
    sub_1000326A0(v235);
    (*(v247 + 8))(v212, v235);
    sub_100095848(&v466);
    sub_1000E9214();
    sub_1000957F4();
    v248(v201);
  }

  v249 = v414;
  sub_10009562C(v466, v414);
  sub_100095738(v249);
  v250 = v459;
  if (v228)
  {
    sub_100032054(v249, &qword_100133AC8, &qword_1000F5550);
    v251 = sub_10009571C(&v467);
    sub_1000028A0(v251, v252, v253, v250);
  }

  else
  {
    sub_100095794();
    sub_1000326A0(v235);
    (*(v254 + 8))(v249, v235);
    sub_100095848(&v467);
    sub_1000E9204();
    (*(v451 + 8))(v201, v452);
  }

  v255 = v417;
  sub_1000E8894();
  sub_1000E8884();
  sub_1000E88A4();
  sub_100095818();
  v256 = sub_1000E8D34();
  sub_100095738(v255);
  if (v228)
  {
    sub_100032054(v255, &qword_10012F260, &unk_1000EF030);
    v259 = 1;
    v260 = v460;
    v257 = v416;
  }

  else
  {
    v257 = v416;
    sub_100094DB4();
    sub_1000326A0(v256);
    (*(v258 + 8))(v255, v256);
    v259 = 0;
    v260 = v460;
  }

  v261 = sub_1000EB584();
  sub_1000028A0(v257, v259, 1, v261);
  v378 = v257;
  v377 = v440[1];
  v376 = v440[0];
  v375 = v439;
  sub_100095860();
  sub_1000957C0();
  sub_1000EB614();
  sub_1000957B0();
  v262(v456);
  v263 = v463;
LABEL_68:
  v418(v454, v250);
LABEL_69:
  v371 = sub_1000E9F44();
  v372 = sub_1000EC1B4();
  if (os_log_type_enabled(v371, v372))
  {
    *swift_slowAlloc() = 0;
    sub_100009134(&_mh_execute_header, v373, v374, "Built current weather model from aggregate weather");
    v263 = v463;
    sub_100009194();
  }

  sub_100032054(v466, &qword_100133AC8, &qword_1000F5550);
  return (v203)(v263, v464);
}

uint64_t sub_100094574@<X0>(uint64_t a1@<X8>)
{
  v127 = a1;
  v1 = sub_100002A10(&qword_10012FD80, &unk_1000F06B8);
  v2 = sub_100009210(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v123 = &v110 - v5;
  sub_10000921C();
  v6 = sub_1000E9134();
  v7 = sub_100009210(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10004B3F0();
  v121 = v10;
  sub_10000921C();
  v11 = sub_1000E9184();
  v12 = sub_100009210(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10004B3F0();
  v119 = v15;
  v16 = sub_100002A10(&qword_10012F048, &qword_1000EEF30);
  v17 = sub_100009210(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_10000D45C();
  v126 = v20;
  sub_10004B6F4();
  __chkstk_darwin(v21);
  sub_10000D56C();
  v125 = v22;
  sub_10000921C();
  v23 = sub_1000EAF24();
  v24 = sub_100009210(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10004B3F0();
  v124 = v27;
  v28 = sub_100002A10(&qword_10012EF30, &unk_1000F14F0);
  v29 = sub_100009210(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000D45C();
  v120 = v32;
  sub_10004B6F4();
  __chkstk_darwin(v33);
  sub_10000D56C();
  v122 = v34;
  v35 = sub_100002A10(&qword_10012ED70, &qword_1000EECC0);
  sub_1000326A0(v35);
  v37 = *(v36 + 64);
  __chkstk_darwin(v38);
  sub_10000D45C();
  v135 = v39;
  sub_10004B6F4();
  __chkstk_darwin(v40);
  sub_10000D56C();
  v134 = v41;
  sub_10000921C();
  v42 = sub_1000E8C04();
  v43 = sub_1000090D4(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  __chkstk_darwin(v43);
  v49 = &v110 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_1000E8604();
  sub_1000326A0(v117);
  v51 = *(v50 + 64);
  __chkstk_darwin(v52);
  sub_10000D45C();
  v130 = v53;
  sub_10004B6F4();
  __chkstk_darwin(v54);
  sub_10000D56C();
  v129 = v55;
  sub_10000921C();
  v56 = sub_1000E8634();
  v57 = sub_100009210(v56);
  v59 = *(v58 + 64);
  __chkstk_darwin(v57);
  sub_10004B3F0();
  v128 = v60;
  sub_10000921C();
  v115 = sub_1000E8C34();
  v61 = sub_1000090D4(v115);
  v114 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v61);
  sub_10004B3F0();
  sub_10000D4A0(v65);
  v66 = sub_1000EAFC4();
  v67 = sub_1000090D4(v66);
  v132 = v68;
  v133 = v67;
  v70 = *(v69 + 64);
  __chkstk_darwin(v67);
  sub_10000D45C();
  sub_10000D408();
  __chkstk_darwin(v71);
  sub_10000D56C();
  v131 = v72;
  sub_10000921C();
  sub_1000E93A4();
  sub_1000E9394();
  v73 = sub_1000E9364();

  if (qword_10012EB38 != -1)
  {
    sub_10000DC3C();
  }

  v74 = sub_1000E9F64();
  v75 = sub_100008CB8(v74, qword_100145C10);
  v76 = v73;
  v116 = v75;
  v77 = sub_1000E9F44();
  v78 = sub_1000EC1B4();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v112 = v42;
    v110 = v80;
    v136 = v76;
    v137 = v80;
    *v79 = 136446210;
    sub_10004ADF0();
    v111 = v35;
    v81 = v76;
    v82 = sub_1000EBEF4();
    v84 = v49;
    v85 = v76;
    v86 = v45;
    v87 = sub_1000E2E18(v82, v83, &v137);
    v35 = v111;

    *(v79 + 4) = v87;
    v45 = v86;
    v76 = v85;
    v49 = v84;
    _os_log_impl(&_mh_execute_header, v77, v78, "Building current weather model from instant weather. - unit: %{public}s", v79, 0xCu);
    sub_100009068(v110);
    v42 = v112;
    sub_100009194();
    sub_100009194();
  }

  v113 = v76;
  sub_10009577C(&v138);
  sub_1000E89A4();
  sub_1000E8904();
  v88 = v131;
  sub_1000EB3A4();
  sub_10006BB44(&v139);
  v89(v78, v115);
  sub_1000E8624();
  sub_1000E8954();
  sub_1000E8994();
  sub_1000E8BE4();
  (*(v45 + 8))(v49, v42);
  sub_1000E8914();
  sub_1000E8944();
  v115 = sub_1000EC234();
  v114 = v90;
  v91 = v122;
  sub_1000E8934();
  sub_1000028A0(v91, 0, 1, v35);
  v92 = v120;
  sub_1000E8924();
  sub_1000028A0(v92, 0, 1, v35);
  (*(v132 + 16))(v118, v88, v133);
  sub_1000E88F4();
  sub_1000E88E4();
  sub_10000D52C();
  v93 = v117;
  sub_1000028A0(v94, v95, v96, v117);
  sub_10000D52C();
  sub_1000028A0(v97, v98, v99, v93);
  sub_1000E8974();
  sub_1000E8964();
  sub_1000E8984();
  sub_1000EB584();
  sub_10000D52C();
  sub_1000028A0(v100, v101, v102, v103);
  sub_1000EB614();
  v104 = sub_1000E9F44();
  v105 = sub_1000EC1B4();
  if (os_log_type_enabled(v104, v105))
  {
    *swift_slowAlloc() = 0;
    sub_100009134(&_mh_execute_header, v106, v107, "Built current weather model from instant weather");
    sub_100009194();
    sub_100095860();
  }

  else
  {
    v108 = v104;
    v104 = v113;
  }

  return (*(v132 + 8))(v131, v133);
}

uint64_t sub_100094DB4()
{
  v0 = sub_1000E8F64();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000E8E84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v31 - v10;
  v36 = sub_1000EB544();
  v12 = *(v36 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v36);
  v34 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = (&v31 - v16);
  sub_1000E8D14();
  v18 = sub_1000E8E54();
  v19 = *(v5 + 8);
  v35 = v4;
  v33 = v19;
  v19(v11, v4);
  if (v18)
  {
    *v17 = sub_1000E8D04();
    v20 = &enum case for CurrentObservationViewModel.AirQuality.Value.number(_:);
  }

  else
  {
    sub_1000E8CF4();
    v21 = sub_1000E8F44();
    v23 = v22;
    (*(v31 + 8))(v3, v32);
    *v17 = v21;
    v17[1] = v23;
    v20 = &enum case for CurrentObservationViewModel.AirQuality.Value.category(_:);
  }

  (*(v12 + 104))(v17, *v20, v36);
  sub_1000E8D14();
  sub_1000E8E64();
  v25 = v24;
  v26 = v9;
  v27 = v35;
  v28 = v33;
  v33(v26, v35);
  if (!v25)
  {
    sub_1000E8D14();
    sub_1000E8E44();
    v28(v11, v27);
  }

  v29 = v36;
  (*(v12 + 16))(v34, v17, v36);
  sub_1000EB564();
  return (*(v12 + 8))(v17, v29);
}

uint64_t sub_10009512C()
{
  v0 = sub_1000E8604();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E87F4();
  v5 = sub_1000E8564();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

void *sub_100095238(uint64_t (*a1)(char *), uint64_t a2)
{
  v36 = a1;
  v37 = a2;
  v40 = sub_1000E8814();
  v3 = *(v40 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v40);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v35 = &v29 - v8;
  __chkstk_darwin(v7);
  v39 = &v29 - v9;
  v10 = sub_100002A10(&qword_100133AD0, &qword_1000F5558);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  sub_100002A10(&qword_100132670, &unk_1000F54E0);
  sub_10009569C(&qword_100133AD8);
  sub_1000EBFA4();
  v15 = *(v11 + 44);
  sub_10009569C(&qword_100133AE0);
  v38 = (v3 + 32);
  v30 = v3;
  v33 = (v3 + 8);
  v34 = (v3 + 16);
  v32 = &_swiftEmptyArrayStorage;
  while (1)
  {
    sub_1000EC124();
    if (*&v14[v15] == v41[0])
    {
      sub_100032054(v14, &qword_100133AD0, &qword_1000F5558);
      return v32;
    }

    v16 = sub_1000EC144();
    v17 = v35;
    v18 = v40;
    (*v34)(v35);
    v16(v41, 0);
    sub_1000EC134();
    v19 = v39;
    v20 = *v38;
    (*v38)(v39, v17, v18);
    v21 = v36(v19);
    if (v2)
    {
      break;
    }

    if (v21)
    {
      v20(v31, v39, v40);
      v22 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000AC980(0, v22[2] + 1, 1);
        v22 = v42;
      }

      v25 = v22[2];
      v24 = v22[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000AC980(v24 > 1, v25 + 1, 1);
        v22 = v42;
      }

      v22[2] = v25 + 1;
      v26 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v32 = v22;
      v20(v22 + v26 + *(v30 + 72) * v25, v31, v40);
    }

    else
    {
      (*v33)(v39, v40);
    }
  }

  (*v33)(v39, v40);
  sub_100032054(v14, &qword_100133AD0, &qword_1000F5558);
  v27 = v32;

  return v27;
}

uint64_t sub_10009562C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002A10(&qword_100133AC8, &qword_1000F5550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009569C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100002ABC(&qword_100132670, &unk_1000F54E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100095794()
{
  v2 = *(v0 - 264);

  return sub_1000E87B4();
}

uint64_t sub_1000957D0(uint64_t a1, uint64_t a2)
{
  result = sub_1000028A0(a1, a2, 1, v2);
  v5 = *(v3 - 176);
  v6 = *(*(v3 - 168) + 16);
  return result;
}

uint64_t sub_100095800@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a2 - 256);

  return sub_10009562C(a1, v3);
}

uint64_t sub_100095818()
{
  v2 = *(v0 - 144);

  return sub_1000E8C74();
}

uint64_t sub_100095834()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 152);
  return result;
}

uint64_t sub_10009588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_100133AE8, &qword_1000F55E8);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_100133AF0, &qword_1000F55F0);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_100133AF8, &unk_1000F55F8);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for AdaptiveConditionsContentView();
  sub_100095F88(&qword_100133B00, type metadata accessor for AdaptiveConditionsContentView);
  sub_100095F88(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_100095FD0();
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
  v44(v43, enum case for WidgetFamily.accessoryRectangular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_100095DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AdaptiveConditionsContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100095E3C()
{
  v0 = sub_1000E93C4();
  v1 = sub_1000090D4(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v7, enum case for WidgetNames.AdaptiveConditionsComplication(_:), v0);
  v8 = sub_1000E93B4();
  (*(v3 + 8))(v7, v0);
  return v8;
}

uint64_t sub_100095F58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100095E3C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100095F88(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100095FD0()
{
  result = qword_100133B08;
  if (!qword_100133B08)
  {
    sub_100002ABC(&qword_100133AE8, &qword_1000F55E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B08);
  }

  return result;
}

uint64_t sub_100096038()
{
  sub_100002ABC(&qword_100133AF8, &unk_1000F55F8);
  sub_100002ABC(&qword_100133AF0, &qword_1000F55F0);
  sub_100002ABC(&qword_100133AE8, &qword_1000F55E8);
  sub_100095FD0();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000960FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a3;
  v5 = sub_100002A10(&qword_100133B10, &qword_1000F56B8);
  v6 = sub_1000090D4(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v47 - v11;
  v13 = sub_100002A10(&qword_100133B18, &qword_1000F56C0);
  v49 = sub_1000090D4(v13);
  v50 = v14;
  v16 = *(v15 + 64);
  __chkstk_darwin(v49);
  v18 = &v47 - v17;
  v19 = sub_100002A10(&qword_100133B20, &unk_1000F56C8);
  v51 = sub_1000090D4(v19);
  v52 = v20;
  v22 = *(v21 + 64);
  __chkstk_darwin(v51);
  v48 = &v47 - v23;
  type metadata accessor for WeatherTimelineProvider();
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v54 = sub_1000D88B8(5, a1, a2);
  type metadata accessor for MoonContentView();
  sub_100096720(&qword_100133B28, type metadata accessor for MoonContentView);
  sub_100096720(&qword_10012FAD0, type metadata accessor for WeatherTimelineProvider);
  sub_1000EBCD4();
  sub_1000EA354();
  v24 = sub_100015CA8();
  v26 = v25;
  LOBYTE(a1) = v27;
  v28 = sub_100096768();
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
  v44(v43, enum case for WidgetFamily.accessoryRectangular(_:), v36);
  v44(v43 + v40, enum case for WidgetFamily.accessoryInline(_:), v36);
  v54 = v34;
  v55 = OpaqueTypeConformance2;
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  v45 = v51;
  sub_1000EA454();

  return (*(v52 + 8))(v35, v45);
}

uint64_t sub_100096624@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for MoonContentView();
  sub_1000159C8(a1, a2 + *(v4 + 20));
  *a2 = swift_getKeyPath();
  sub_100002A10(&qword_10012F230, &qword_1000EEFF0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1000966E8@<X0>(void *a1@<X8>)
{
  result = sub_1000966A0();
  *a1 = 0xD000000000000029;
  a1[1] = v3;
  return result;
}

uint64_t sub_100096720(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100096768()
{
  result = qword_100133B30;
  if (!qword_100133B30)
  {
    sub_100002ABC(&qword_100133B10, &qword_1000F56B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B30);
  }

  return result;
}

uint64_t sub_1000967D0()
{
  sub_100002ABC(&qword_100133B20, &unk_1000F56C8);
  sub_100002ABC(&qword_100133B18, &qword_1000F56C0);
  sub_100002ABC(&qword_100133B10, &qword_1000F56B8);
  sub_100096768();
  sub_100015C78();
  swift_getOpaqueTypeConformance2();
  sub_100015C60();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000968AC(SEL *a1)
{
  if ([v1 respondsToSelector:*a1])
  {
    return sub_100031DF4(v1, a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000968FC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100096910(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[10])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10009694C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1000969B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE2B0 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE2D0 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001000FE2F0 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6F43776F52656E6FLL && a2 == 0xEF6E6F697469646ELL)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100096B20(char a1)
{
  result = 0x6F43776F52656E6FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      return result;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_100096BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000969B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100096C04(uint64_t a1)
{
  v2 = sub_100098F28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100096C40(uint64_t a1)
{
  v2 = sub_100098F28();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100096C98()
{
  sub_100013DC0();
  v3 = v2;
  v4 = sub_100002A10(&qword_100133B38, &qword_1000F57C0);
  sub_1000090D4(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100009204();
  __chkstk_darwin(v9);
  sub_100019AE8();
  v10 = v3[4];
  sub_100008DA8(v3, v3[3]);
  sub_100098F28();
  sub_10009B2D0();
  sub_1000EC6A4();
  sub_100098F7C();
  sub_10009B2A8();
  if (!v0)
  {
    sub_100098FD0();
    sub_10009B2A8();
    sub_100099024();
    sub_10009B2A8();
    sub_100099078();
    sub_10009B2A8();
  }

  (*(v6 + 8))(v1, v4);
  sub_100013DA8();
}

void sub_100096E7C()
{
  sub_100013DC0();
  v2 = v1;
  v3 = sub_100002A10(&qword_100133B68, &qword_1000F57C8);
  sub_1000090D4(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_100060440();
  sub_10009B1D8();
  sub_100098F28();
  sub_100060434();
  sub_1000EC694();
  sub_1000990CC();
  sub_10009B268();
  sub_100099120();
  sub_10009B268();
  sub_100099174();
  sub_10009B268();
  sub_1000991C8();
  sub_10009B268();
  (*(v5 + 8))(v0, v3);
  sub_100009068(v2);
  sub_100013DA8();
}

uint64_t sub_100097090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469706963657270 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684957559 && a2 == 0xE400000000000000;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696C617551726961 && a2 == 0xEA00000000007974;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6F69566172746C75 && a2 == 0xEB0000000074656CLL;
        if (v8 || (sub_1000EC5D4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6B694C736C656566 && a2 == 0xE900000000000065)
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

uint64_t sub_10009724C(char a1)
{
  result = 0x7469706963657270;
  switch(a1)
  {
    case 1:
      result = 1684957559;
      break;
    case 2:
      result = 0x696C617551726961;
      break;
    case 3:
      result = 0x6F69566172746C75;
      break;
    case 4:
      result = 0x6B694C736C656566;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100097310()
{
  sub_100013DC0();
  v63 = v0;
  v2 = v1;
  v3 = sub_100002A10(&qword_100133C80, &qword_1000F5D48);
  v4 = sub_1000090D4(v3);
  v61 = v5;
  v62 = v4;
  v7 = *(v6 + 64);
  sub_100009204();
  __chkstk_darwin(v8);
  sub_10000D58C();
  v60 = v9;
  v10 = sub_100002A10(&qword_100133C88, &qword_1000F5D50);
  v11 = sub_1000090D4(v10);
  v58 = v12;
  v59 = v11;
  v14 = *(v13 + 64);
  sub_100009204();
  __chkstk_darwin(v15);
  sub_10000D58C();
  v57 = v16;
  v17 = sub_100002A10(&qword_100133C90, &qword_1000F5D58);
  v18 = sub_1000090D4(v17);
  v55 = v19;
  v56 = v18;
  v21 = *(v20 + 64);
  sub_100009204();
  __chkstk_darwin(v22);
  sub_10000D58C();
  v54 = v23;
  v24 = sub_100002A10(&qword_100133C98, &qword_1000F5D60);
  v25 = sub_1000090D4(v24);
  v52 = v26;
  v53 = v25;
  v28 = *(v27 + 64);
  sub_100009204();
  __chkstk_darwin(v29);
  v31 = &v51 - v30;
  v32 = sub_100002A10(&qword_100133CA0, &qword_1000F5D68);
  sub_1000090D4(v32);
  v51 = v33;
  v35 = *(v34 + 64);
  sub_100009204();
  __chkstk_darwin(v36);
  v38 = &v51 - v37;
  v39 = sub_100002A10(&qword_100133CA8, &qword_1000F5D70);
  sub_1000090D4(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_100009204();
  __chkstk_darwin(v44);
  v46 = &v51 - v45;
  v47 = v2[4];
  sub_100008DA8(v2, v2[3]);
  sub_10009A0D8();
  sub_1000EC6A4();
  switch(v63)
  {
    case 1:
      sub_10009B29C();
      sub_10009A228();
      sub_1000EC534();
      (*(v52 + 8))(v31, v53);
      break;
    case 2:
      sub_10009A1D4();
      v48 = v54;
      sub_10009B248();
      v50 = v55;
      v49 = v56;
      goto LABEL_6;
    case 3:
      sub_10009A180();
      v48 = v57;
      sub_10009B248();
      v50 = v58;
      v49 = v59;
      goto LABEL_6;
    case 4:
      sub_10009A12C();
      v48 = v60;
      sub_10009B248();
      v50 = v61;
      v49 = v62;
LABEL_6:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      sub_10009A27C();
      sub_10009B248();
      (*(v51 + 8))(v38, v32);
      break;
  }

  (*(v41 + 8))(v46, v39);
  sub_100013DA8();
}

void sub_100097770()
{
  sub_100013DC0();
  v86 = v0;
  v3 = v2;
  v85 = sub_100002A10(&qword_100133C20, &qword_1000F5D10);
  sub_1000090D4(v85);
  v80 = v4;
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  sub_10000D58C();
  v84 = v8;
  v9 = sub_100002A10(&qword_100133C28, &qword_1000F5D18);
  v10 = sub_1000090D4(v9);
  v78 = v11;
  v79 = v10;
  v13 = *(v12 + 64);
  sub_100009204();
  __chkstk_darwin(v14);
  sub_10000D58C();
  v82 = v15;
  v16 = sub_100002A10(&qword_100133C30, &qword_1000F5D20);
  v17 = sub_1000090D4(v16);
  v76 = v18;
  v77 = v17;
  v20 = *(v19 + 64);
  sub_100009204();
  __chkstk_darwin(v21);
  sub_10000D58C();
  v81 = v22;
  v23 = sub_100002A10(&qword_100133C38, &qword_1000F5D28);
  v24 = sub_1000090D4(v23);
  v74 = v25;
  v75 = v24;
  v27 = *(v26 + 64);
  sub_100009204();
  __chkstk_darwin(v28);
  sub_100019AE8();
  v29 = sub_100002A10(&qword_100133C40, &qword_1000F5D30);
  sub_1000090D4(v29);
  v73 = v30;
  v32 = *(v31 + 64);
  sub_100009204();
  __chkstk_darwin(v33);
  v35 = &v69 - v34;
  v36 = sub_100002A10(&qword_100133C48, &unk_1000F5D38);
  sub_1000090D4(v36);
  v83 = v37;
  v39 = *(v38 + 64);
  sub_100009204();
  __chkstk_darwin(v40);
  v41 = v3[4];
  sub_100008DA8(v3, v3[3]);
  sub_10009A0D8();
  v42 = v86;
  sub_1000EC694();
  if (v42)
  {
    goto LABEL_8;
  }

  v70 = v29;
  v71 = v35;
  v72 = v1;
  v44 = v84;
  v43 = v85;
  v86 = v3;
  v45 = sub_1000EC524();
  sub_1000814FC(v45, 0);
  if (v47 == v48 >> 1)
  {
    goto LABEL_7;
  }

  if (v47 >= (v48 >> 1))
  {
    __break(1u);
    JUMPOUT(0x100097DD0);
  }

  v49 = *(v46 + v47);
  sub_1000814F8(v47 + 1);
  v51 = v50;
  v53 = v52;
  swift_unknownObjectRelease();
  if (v51 != v53 >> 1)
  {
LABEL_7:
    v56 = sub_1000EC414();
    swift_allocError();
    v58 = v57;
    v59 = *(sub_100002A10(&qword_10012F440, &unk_1000F19E0) + 48);
    *v58 = &unk_1001276D8;
    sub_1000EC4B4();
    sub_1000EC404();
    (*(*(v56 - 8) + 104))(v58, enum case for DecodingError.typeMismatch(_:), v56);
    swift_willThrow();
    swift_unknownObjectRelease();
    v60 = *(v83 + 8);
    v61 = sub_10009B2DC();
    v62(v61);
    v3 = v86;
LABEL_8:
    sub_100009068(v3);
    goto LABEL_9;
  }

  v54 = v83;
  switch(v49)
  {
    case 1:
      sub_10009B29C();
      sub_10009A228();
      v63 = v72;
      sub_10009B228();
      swift_unknownObjectRelease();
      v65 = v74;
      v64 = v75;
      goto LABEL_14;
    case 2:
      sub_10009A1D4();
      v63 = v81;
      sub_10009B228();
      swift_unknownObjectRelease();
      v65 = v76;
      v64 = v77;
      goto LABEL_14;
    case 3:
      sub_10009A180();
      v63 = v82;
      sub_10009B228();
      swift_unknownObjectRelease();
      v65 = v78;
      v64 = v79;
LABEL_14:
      (*(v65 + 8))(v63, v64);
      break;
    case 4:
      sub_10009A12C();
      sub_1000EC4A4();
      swift_unknownObjectRelease();
      (*(v80 + 8))(v44, v43);
      break;
    default:
      sub_10009A27C();
      v55 = v71;
      sub_10009B228();
      swift_unknownObjectRelease();
      (*(v73 + 8))(v55, v70);
      break;
  }

  v66 = *(v54 + 8);
  v67 = sub_10009B2DC();
  v68(v67);
  sub_100009068(v86);
LABEL_9:
  sub_100013DA8();
}

uint64_t sub_100097DE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE330 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001000FE350 == a2;
      if (v7 || (sub_1000EC5D4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001000FE370 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1000EC5D4();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_100097F48(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100097FC8()
{
  sub_10009B31C();
  sub_10009B2C0();
  v2 = sub_100002A10(&qword_100133BB0, &qword_1000F5CD0);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  v6 = v0[3];
  v7 = v0[4];
  sub_10006040C(v0);
  sub_100099EE0();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  sub_100099F34();
  sub_10006472C();
  if (!v1)
  {
    sub_10009B288();
    sub_10006472C();
    sub_10009B2E8();
    sub_10006472C();
    sub_10006472C();
  }

  v8 = sub_100060450();
  v9(v8);
  sub_10009B308();
}

void sub_100098138()
{
  sub_100013DC0();
  sub_10009B2FC();
  v1 = sub_100002A10(&qword_100133BF8, &qword_1000F5CF0);
  sub_1000090D4(v1);
  v3 = *(v2 + 64);
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  sub_10009B1D8();
  sub_100099EE0();
  sub_10009B1FC();
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  sub_100064708();
  sub_100064708();
  v5 = sub_10009B1C8();
  v6(v5);
  sub_100009068(v0);
  sub_100013DA8();
}

uint64_t sub_1000982E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001000FE330 == a2;
    if (v6 || (sub_1000EC5D4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000001000FE350 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_1000EC5D4();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

unint64_t sub_100098400(char a1)
{
  result = 0xD000000000000011;
  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return result;
}

void sub_100098450()
{
  sub_10009B31C();
  sub_10009B2C0();
  v2 = sub_100002A10(&qword_100133BC8, &qword_1000F5CD8);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  v6 = v0[3];
  v7 = v0[4];
  sub_10006040C(v0);
  sub_100099F88();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  sub_100099F34();
  sub_10006472C();
  if (!v1)
  {
    sub_10009B288();
    sub_10006472C();
    sub_10009B2E8();
    sub_10006472C();
  }

  v8 = sub_100060450();
  v9(v8);
  sub_10009B308();
}

void sub_100098594()
{
  sub_100013DC0();
  sub_10009B2FC();
  v1 = sub_100002A10(&qword_100133C08, &qword_1000F5CF8);
  sub_1000090D4(v1);
  v3 = *(v2 + 64);
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  sub_10009B1D8();
  sub_100099F88();
  sub_10009B1FC();
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  sub_100064708();
  v5 = sub_10009B1C8();
  v6(v5);
  sub_100009068(v0);
  sub_100013DA8();
}

uint64_t sub_100098708(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001000FE310 == a2;
  if (v3 || (sub_1000EC5D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000FE330 == a2)
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

unint64_t sub_1000987DC(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000011;
  }
}

void sub_100098810()
{
  sub_10009B31C();
  sub_10009B2C0();
  v2 = sub_100002A10(&qword_100133BD8, &qword_1000F5CE0);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100019AE8();
  v6 = v0[3];
  v7 = v0[4];
  sub_10006040C(v0);
  sub_100099FDC();
  sub_10009B2D0();
  sub_100060434();
  sub_1000EC6A4();
  sub_100099F34();
  sub_10006472C();
  if (!v1)
  {
    sub_10009B288();
    sub_10006472C();
  }

  v8 = sub_100060450();
  v9(v8);
  sub_10009B308();
}

void sub_100098934()
{
  sub_10009B31C();
  sub_10009B2FC();
  v1 = sub_100002A10(&qword_100133C10, &qword_1000F5D00);
  sub_1000090D4(v1);
  v3 = *(v2 + 64);
  sub_100009204();
  __chkstk_darwin(v4);
  sub_100060440();
  sub_10009B1D8();
  sub_100099FDC();
  sub_10009B1FC();
  sub_10009A084();
  sub_100064708();
  sub_10009B29C();
  sub_100064708();
  v5 = sub_10009B1C8();
  v6(v5);
  sub_100009068(v0);
  sub_10009B308();
}

uint64_t sub_100098A84(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1000EC5D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_100098B20()
{
  sub_10009B31C();
  v1 = v0;
  v2 = sub_100002A10(&qword_100133BE8, &qword_1000F5CE8);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100060440();
  v6 = v1[3];
  v7 = v1[4];
  sub_10006040C(v1);
  sub_10009A030();
  sub_100060434();
  sub_1000EC6A4();
  sub_100099F34();
  sub_1000EC594();
  v8 = sub_10009B1C8();
  v9(v8);
  sub_10009B308();
}

void sub_100098C34()
{
  sub_10009B31C();
  sub_10009B2FC();
  v2 = sub_100002A10(&qword_100133C18, &qword_1000F5D08);
  sub_1000090D4(v2);
  v4 = *(v3 + 64);
  sub_100009204();
  __chkstk_darwin(v5);
  sub_100060440();
  sub_10009B1D8();
  sub_10009A030();
  sub_10009B1FC();
  if (!v1)
  {
    sub_10009A084();
    sub_1000EC514();
    v6 = sub_10009B1C8();
    v7(v6);
  }

  sub_100009068(v0);
  sub_10009B308();
}

uint64_t sub_100098D54(uint64_t a1)
{
  v2 = sub_100002A10(&qword_100133CB0, &qword_1000F5D78);
  sub_1000090D4(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100009204();
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_10009B2DC();
  sub_100008DA8(v12, v13);
  sub_10009A2D0();
  sub_1000EC6A4();
  return (*(v4 + 8))(v9, v2);
}

void sub_100098E98(uint64_t a1@<X8>)
{
  sub_100096E7C();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
  }
}

void sub_100098F08()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_100096C98();
}

unint64_t sub_100098F28()
{
  result = qword_100133B40;
  if (!qword_100133B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B40);
  }

  return result;
}

unint64_t sub_100098F7C()
{
  result = qword_100133B48;
  if (!qword_100133B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B48);
  }

  return result;
}

unint64_t sub_100098FD0()
{
  result = qword_100133B50;
  if (!qword_100133B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B50);
  }

  return result;
}

unint64_t sub_100099024()
{
  result = qword_100133B58;
  if (!qword_100133B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B58);
  }

  return result;
}

unint64_t sub_100099078()
{
  result = qword_100133B60;
  if (!qword_100133B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B60);
  }

  return result;
}

unint64_t sub_1000990CC()
{
  result = qword_100133B70;
  if (!qword_100133B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B70);
  }

  return result;
}

unint64_t sub_100099120()
{
  result = qword_100133B78;
  if (!qword_100133B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B78);
  }

  return result;
}

unint64_t sub_100099174()
{
  result = qword_100133B80;
  if (!qword_100133B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B80);
  }

  return result;
}

unint64_t sub_1000991C8()
{
  result = qword_100133B88;
  if (!qword_100133B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B88);
  }

  return result;
}

uint64_t sub_10009924C(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000992D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
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
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
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
        JUMPOUT(0x1000993A4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000993D8(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_1000993EC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 5;
  v3 = v4 - 5;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_100099454(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_100099504(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[4])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100099540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_10009958C(uint64_t a1)
{
  v2 = sub_10009A1D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000995C8(uint64_t a1)
{
  v2 = sub_10009A1D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009960C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097090(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099634(uint64_t a1)
{
  v2 = sub_10009A0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099670(uint64_t a1)
{
  v2 = sub_10009A0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000996AC(uint64_t a1)
{
  v2 = sub_10009A12C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000996E8(uint64_t a1)
{
  v2 = sub_10009A12C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100099724(uint64_t a1)
{
  v2 = sub_10009A27C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099760(uint64_t a1)
{
  v2 = sub_10009A27C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10009979C(uint64_t a1)
{
  v2 = sub_10009A180();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000997D8(uint64_t a1)
{
  v2 = sub_10009A180();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100099814(uint64_t a1)
{
  v2 = sub_10009A228();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099850(uint64_t a1)
{
  v2 = sub_10009A228();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009988C(_BYTE *a1@<X8>)
{
  sub_100097770();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1000998DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100097DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099904(uint64_t a1)
{
  v2 = sub_100099EE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099940(uint64_t a1)
{
  v2 = sub_100099EE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009997C(_DWORD *a1@<X8>)
{
  sub_100098138();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_1000999D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000982E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099A00(uint64_t a1)
{
  v2 = sub_100099F88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099A3C(uint64_t a1)
{
  v2 = sub_100099F88();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100099A78(uint64_t a1@<X8>)
{
  sub_100098594();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 2) = BYTE2(v3);
  }
}

uint64_t sub_100099AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100099B24(uint64_t a1)
{
  v2 = sub_100099FDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099B60(uint64_t a1)
{
  v2 = sub_100099FDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100099B9C(_WORD *a1@<X8>)
{
  sub_100098934();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100099BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100098A84(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100099C18(uint64_t a1)
{
  v2 = sub_10009A030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099C54(uint64_t a1)
{
  v2 = sub_10009A030();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100099C90(_BYTE *a1@<X8>)
{
  sub_100098C34();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100099CD8(uint64_t a1)
{
  v2 = sub_10009A2D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100099D14(uint64_t a1)
{
  v2 = sub_10009A2D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100099D84()
{
  result = qword_100133B90;
  if (!qword_100133B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B90);
  }

  return result;
}

unint64_t sub_100099DDC()
{
  result = qword_100133B98;
  if (!qword_100133B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133B98);
  }

  return result;
}

unint64_t sub_100099E34()
{
  result = qword_100133BA0;
  if (!qword_100133BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA0);
  }

  return result;
}

unint64_t sub_100099E8C()
{
  result = qword_100133BA8;
  if (!qword_100133BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BA8);
  }

  return result;
}

unint64_t sub_100099EE0()
{
  result = qword_100133BB8;
  if (!qword_100133BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BB8);
  }

  return result;
}

unint64_t sub_100099F34()
{
  result = qword_100133BC0;
  if (!qword_100133BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BC0);
  }

  return result;
}

unint64_t sub_100099F88()
{
  result = qword_100133BD0;
  if (!qword_100133BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BD0);
  }

  return result;
}

unint64_t sub_100099FDC()
{
  result = qword_100133BE0;
  if (!qword_100133BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BE0);
  }

  return result;
}

unint64_t sub_10009A030()
{
  result = qword_100133BF0;
  if (!qword_100133BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133BF0);
  }

  return result;
}

unint64_t sub_10009A084()
{
  result = qword_100133C00;
  if (!qword_100133C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C00);
  }

  return result;
}

unint64_t sub_10009A0D8()
{
  result = qword_100133C50;
  if (!qword_100133C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C50);
  }

  return result;
}

unint64_t sub_10009A12C()
{
  result = qword_100133C58;
  if (!qword_100133C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C58);
  }

  return result;
}

unint64_t sub_10009A180()
{
  result = qword_100133C60;
  if (!qword_100133C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C60);
  }

  return result;
}

unint64_t sub_10009A1D4()
{
  result = qword_100133C68;
  if (!qword_100133C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C68);
  }

  return result;
}

unint64_t sub_10009A228()
{
  result = qword_100133C70;
  if (!qword_100133C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C70);
  }

  return result;
}

unint64_t sub_10009A27C()
{
  result = qword_100133C78;
  if (!qword_100133C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C78);
  }

  return result;
}

unint64_t sub_10009A2D0()
{
  result = qword_100133CB8;
  if (!qword_100133CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CB8);
  }

  return result;
}

_BYTE *sub_10009A334(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A400);
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

_BYTE *storeEnumTagSinglePayload for DataDenseTable.OneRowCondition.CodingKeys(_BYTE *result, int a2, int a3)
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
      JUMPOUT(0x10009A524);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataDenseTable.TwoRowConditions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A628);
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

_BYTE *storeEnumTagSinglePayload for DataDenseTable.ThreeRowConditions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10009A72CLL);
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

_BYTE *sub_10009A76C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x10009A838);
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10009A874()
{
  result = qword_100133CC0;
  if (!qword_100133CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CC0);
  }

  return result;
}

unint64_t sub_10009A8CC()
{
  result = qword_100133CC8;
  if (!qword_100133CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CC8);
  }

  return result;
}

unint64_t sub_10009A924()
{
  result = qword_100133CD0;
  if (!qword_100133CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CD0);
  }

  return result;
}

unint64_t sub_10009A97C()
{
  result = qword_100133CD8;
  if (!qword_100133CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CD8);
  }

  return result;
}

unint64_t sub_10009A9D4()
{
  result = qword_100133CE0;
  if (!qword_100133CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CE0);
  }

  return result;
}

unint64_t sub_10009AA2C()
{
  result = qword_100133CE8;
  if (!qword_100133CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CE8);
  }

  return result;
}

unint64_t sub_10009AA84()
{
  result = qword_100133CF0;
  if (!qword_100133CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CF0);
  }

  return result;
}

unint64_t sub_10009AADC()
{
  result = qword_100133CF8;
  if (!qword_100133CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133CF8);
  }

  return result;
}

unint64_t sub_10009AB34()
{
  result = qword_100133D00;
  if (!qword_100133D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D00);
  }

  return result;
}

unint64_t sub_10009AB8C()
{
  result = qword_100133D08;
  if (!qword_100133D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D08);
  }

  return result;
}

unint64_t sub_10009ABE4()
{
  result = qword_100133D10;
  if (!qword_100133D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D10);
  }

  return result;
}

unint64_t sub_10009AC3C()
{
  result = qword_100133D18;
  if (!qword_100133D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D18);
  }

  return result;
}

unint64_t sub_10009AC94()
{
  result = qword_100133D20;
  if (!qword_100133D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D20);
  }

  return result;
}

unint64_t sub_10009ACEC()
{
  result = qword_100133D28;
  if (!qword_100133D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D28);
  }

  return result;
}

unint64_t sub_10009AD44()
{
  result = qword_100133D30;
  if (!qword_100133D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D30);
  }

  return result;
}

unint64_t sub_10009AD9C()
{
  result = qword_100133D38;
  if (!qword_100133D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D38);
  }

  return result;
}

unint64_t sub_10009ADF4()
{
  result = qword_100133D40;
  if (!qword_100133D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D40);
  }

  return result;
}

unint64_t sub_10009AE4C()
{
  result = qword_100133D48;
  if (!qword_100133D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D48);
  }

  return result;
}

unint64_t sub_10009AEA4()
{
  result = qword_100133D50;
  if (!qword_100133D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D50);
  }

  return result;
}

unint64_t sub_10009AEFC()
{
  result = qword_100133D58;
  if (!qword_100133D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D58);
  }

  return result;
}

unint64_t sub_10009AF54()
{
  result = qword_100133D60;
  if (!qword_100133D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D60);
  }

  return result;
}

unint64_t sub_10009AFAC()
{
  result = qword_100133D68;
  if (!qword_100133D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D68);
  }

  return result;
}

unint64_t sub_10009B004()
{
  result = qword_100133D70;
  if (!qword_100133D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D70);
  }

  return result;
}

unint64_t sub_10009B05C()
{
  result = qword_100133D78;
  if (!qword_100133D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D78);
  }

  return result;
}

unint64_t sub_10009B0B4()
{
  result = qword_100133D80;
  if (!qword_100133D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D80);
  }

  return result;
}

unint64_t sub_10009B10C()
{
  result = qword_100133D88;
  if (!qword_100133D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D88);
  }

  return result;
}

unint64_t sub_10009B164()
{
  result = qword_100133D90;
  if (!qword_100133D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133D90);
  }

  return result;
}

uint64_t sub_10009B1FC()
{

  return sub_1000EC694();
}

uint64_t sub_10009B228()
{

  return sub_1000EC4A4();
}

uint64_t sub_10009B248()
{

  return sub_1000EC534();
}

uint64_t sub_10009B268()
{

  return sub_1000EC514();
}

uint64_t sub_10009B2A8()
{

  return sub_1000EC594();
}

uint64_t sub_10009B330(uint64_t a1)
{
  v2 = sub_10009B3AC(a1);
  v3 = sub_10009B458(a1);
  if (v2)
  {
    if (v3)
    {
      v4 = 6;
    }

    else
    {
      v4 = 1;
    }

    v5 = 2;
  }

  else if (v3)
  {
    v4 = 1;
    v5 = 6;
  }

  else
  {
    v6 = sub_10009B504(a1);
    if ((v6 & 0xFE) != 0)
    {
      v5 = v6;
    }

    else
    {
      v5 = 1;
    }

    v4 = 1;
  }

  return v5 | (v4 << 8);
}

BOOL sub_10009B3AC(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(type metadata accessor for EventViewModel(0) - 8);
    v2 = v4 + 1;
  }

  while (*(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4) != 2);
  return v3 != v4;
}

BOOL sub_10009B458(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    v5 = *(type metadata accessor for EventViewModel(0) - 8);
    v2 = v4 + 1;
  }

  while (*(a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4) != 6);
  return v3 != v4;
}

uint64_t sub_10009B504(uint64_t a1)
{
  v37 = sub_1000E8734();
  v2 = *(v37 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v37);
  v36 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000E8754();
  v5 = *(v35 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v35);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000E8604();
  v8 = *(v34 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v34);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EventViewModel(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return 0;
  }

  v18 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v19 = *(v14 + 72);
  v32 = enum case for Calendar.Component.hour(_:);
  v30 = (v2 + 8);
  v31 = (v2 + 104);
  v28 = (v8 + 8);
  v29 = (v5 + 8);
  v20 = v36;
  while (1)
  {
    sub_10000ACD0(v18, v16);
    v21 = *v16;
    sub_10000B874(v16);
    if ((v21 - 3) <= 2)
    {
      sub_1000E85F4();
      v22 = v33;
      sub_1000E8714();
      v23 = v37;
      (*v31)(v20, v32, v37);
      v24 = v19;
      v25 = sub_1000E8744();
      (*v30)(v20, v23);
      (*v29)(v22, v35);
      (*v28)(v11, v34);
      v26 = v25 <= 19;
      v19 = v24;
      if (!v26)
      {
        break;
      }
    }

    v18 += v19;
    if (!--v17)
    {
      return 0;
    }
  }

  return v21;
}

uint64_t sub_10009B858(char a1, uint64_t a2)
{
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a2 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      return 0;
    }

    sub_10000ACD0(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v8);
    if (*v8 == a1)
    {
      break;
    }

    ++v9;
    sub_10000B874(v8);
  }

  v11 = sub_10009B984(v8);
  sub_10000B874(v8);
  return v11;
}

uint64_t sub_10009B984(_BYTE *a1)
{
  v2 = sub_1000E8684();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000E86A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 2)
  {
    sub_1000E8644();
    sub_1000E8694();
    (*(v8 + 8))(v11, v7);
    v12 = sub_1000E8674();
    (*(v3 + 8))(v6, v2);
    v13 = &a1[*(type metadata accessor for EventViewModel(0) + 40)];
    v14 = *v13;
    v15 = v13[1];

    if (v12)
    {

      sub_10009C080(1);
      v16 = sub_1000EC384();
      v18 = v17;

      sub_1000D135C(1uLL, v14, v15);
      v19 = sub_1000EC374();
      v21 = v20;

      v25[0] = v16;
      v25[1] = v18;

      v26._countAndFlagsBits = v19;
      v26._object = v21;
      sub_1000EBF44(v26);

      return v25[0];
    }
  }

  else
  {
    v22 = &a1[*(type metadata accessor for EventViewModel(0) + 40)];
    v14 = *v22;
    v23 = v22[1];
  }

  return v14;
}

uint64_t sub_10009BBDC(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = type metadata accessor for EventViewModel(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a2 + 16);
  while (1)
  {
    if (v10 == v9)
    {
      return 0;
    }

    sub_10000ACD0(a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v9, v8);
    if (*v8 == v3)
    {
      break;
    }

    ++v9;
    sub_10000B874(v8);
  }

  v12 = &v8[*(v4 + 44)];
  if (v12[1])
  {
    v11 = *v12;
    v13 = v12[1];
  }

  else
  {
    v11 = sub_10009B984(v8);
  }

  sub_10000B874(v8);
  return v11;
}

uint64_t sub_10009BD30(__int16 a1, uint64_t a2)
{
  if (a1 == 1538)
  {
    return sub_10009BD48(a2);
  }

  else
  {
    return sub_10009BBDC(a1, a2);
  }
}

uint64_t sub_10009BD48(uint64_t a1)
{
  v2 = sub_10009BBDC(2u, a1);
  v4 = v3;
  v6 = sub_10009BBDC(6u, a1);
  v7 = v5;
  v8 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v8 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      if (qword_10012EBF8 != -1)
      {
        swift_once();
      }

      v10 = qword_100145E00;
      v15._countAndFlagsBits = 0x80000001000FE3C0;
      v16._countAndFlagsBits = 0x4025202E4025;
      v16._object = 0xE600000000000000;
      v17.value._countAndFlagsBits = 0;
      v17.value._object = 0;
      v11.super.isa = v10;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      sub_1000E8464(v16, v17, v11, v18, v15);

      sub_100002A10(&qword_100132C18, &unk_1000F42B0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000F03E0;
      *(v12 + 56) = &type metadata for String;
      v13 = sub_10007C984();
      *(v12 + 32) = v2;
      *(v12 + 40) = v4;
      *(v12 + 96) = &type metadata for String;
      *(v12 + 104) = v13;
      *(v12 + 64) = v13;
      *(v12 + 72) = v6;
      *(v12 + 80) = v7;
      v6 = sub_1000EBE74();
    }

    else
    {
      v6 = v2;
    }
  }

  return v6;
}

uint64_t sub_10009BF2C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = a5 >> 1;
    result = sub_10009C164(a4, result, a5 >> 1);
    if (v7)
    {
      v8 = v6;
    }

    else
    {
      v8 = result;
    }

    if (v8 >= a4)
    {
      sub_1000814F8(a4);
      sub_10009C1B0();
      swift_unknownObjectRelease();
      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009BFF8(uint64_t result, uint64_t a2, uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t), void (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    result = a3(0, result, v5, a2);
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = result;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      a4(0);
      sub_10009C1B0();

      return sub_10009C1C8();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10009C080(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1000EBF34();
    v1 = sub_1000EBF84();

    return v1;
  }

  return result;
}

uint64_t sub_10009C164(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_10009C1F0(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10009C2AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t type metadata accessor for TemperatureContentView()
{
  result = qword_100133E88;
  if (!qword_100133E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10009C3C4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000EA2C4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002A10(&qword_10012F230, &qword_1000EEFF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_10001D3D8(v2, &v17 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1000EBC44();
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

uint64_t sub_10009C5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_100002A10(&qword_100133EC0, &unk_1000F6768);
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v5 = &v25 - v4;
  v6 = sub_1000EBAA4();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000EB8B4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000EBC44();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v25 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v25 - v20;
  sub_10009C3C4(&v25 - v20);
  v26 = v16;
  if ((*(v16 + 88))(v21, v15) == enum case for WidgetFamily.accessoryCircular(_:))
  {
    v22 = a1 + *(type metadata accessor for TemperatureContentView() + 20);
    sub_10007E2C8(v9);
    sub_1000EB8A4();
    (*(v11 + 16))(v5, v14, v10);
    swift_storeEnumTagMultiPayload();
    sub_10009C9CC(&qword_100133EC8, &type metadata accessor for TemperatureCircularContentView);
    sub_1000EA4A4();
    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v29 = 0;
    v30 = 0xE000000000000000;
    sub_1000EC3E4(65);
    v31._countAndFlagsBits = 0xD000000000000022;
    v31._object = 0x80000001000FB150;
    sub_1000EBF44(v31);
    v24 = v25;
    sub_10009C3C4(v25);
    sub_10009C9CC(&qword_10012F208, &type metadata accessor for WidgetFamily);
    v32._countAndFlagsBits = sub_1000EC5B4();
    sub_1000EBF44(v32);

    (*(v26 + 8))(v24, v15);
    v33._object = 0x80000001000FE470;
    v33._countAndFlagsBits = 0xD00000000000001DLL;
    sub_1000EBF44(v33);
    result = sub_1000EC464();
    __break(1u);
  }

  return result;
}

uint64_t sub_10009C9CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10009CA18()
{
  result = qword_100133ED0;
  if (!qword_100133ED0)
  {
    sub_100002ABC(&qword_100133ED8, &qword_1000F6778);
    sub_10009CA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133ED0);
  }

  return result;
}

unint64_t sub_10009CA9C()
{
  result = qword_100133EE0;
  if (!qword_100133EE0)
  {
    sub_100002ABC(&qword_100133EE8, &unk_1000F6780);
    sub_10009C9CC(&qword_100133EC8, &type metadata accessor for TemperatureCircularContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133EE0);
  }

  return result;
}

uint64_t sub_10009CB58@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v31 = sub_1000EA4E4();
  v1 = sub_1000090D4(v31);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  sub_100006A10();
  v8 = v7 - v6;
  v9 = sub_1000EA344();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  sub_100006A10();
  v32 = sub_100002A10(&qword_1001328A0, &qword_1000F4090);
  v11 = sub_1000090D4(v32);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  v17 = &v30 - v16;
  sub_1000EA334();
  v38._countAndFlagsBits = 0;
  v38._object = 0xE000000000000000;
  sub_1000EA324(v38);
  sub_1000EAA24();
  sub_1000EA304();

  v39._countAndFlagsBits = 623717664;
  v39._object = 0xE400000000000000;
  sub_1000EA324(v39);
  sub_1000EA364();
  sub_10004E774();
  v18 = sub_1000EA7F4();
  v20 = v19;
  v34 = v18;
  v35 = v19;
  v22 = v21 & 1;
  v36 = v21 & 1;
  v37 = v23;
  sub_1000EA4B4();
  sub_1000EA914();
  (*(v3 + 8))(v8, v31);
  sub_1000058EC(v18, v20, v22);

  sub_1000EA354();
  sub_10004E774();
  v24 = sub_1000EA7F4();
  v26 = v25;
  LOBYTE(v8) = v27;
  v34 = &type metadata for Text;
  v35 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v28 = v32;
  sub_1000EA8C4();
  sub_1000058EC(v24, v26, v8 & 1);

  return (*(v13 + 8))(v17, v28);
}