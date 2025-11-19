uint64_t sub_100031540()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100031580()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000315F4()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension18FakeNetworkMonitor__networkStatus;
  v2 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeNetworkMonitor()
{
  result = qword_1000CAF78;
  if (!qword_1000CAF78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000316F0()
{
  sub_100031780();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100031780()
{
  if (!qword_1000CAF88)
  {
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CAF88);
    }
  }
}

uint64_t sub_1000317D0()
{
  v1 = sub_100009C08(&qword_1000CB050, &unk_100093FD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  sub_10008CD8C();
  swift_endAccess();
  sub_100031B40();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100031904@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_100031984(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

void sub_1000319F8()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_10000A2D8(0xD00000000000001CLL, 0x80000001000996C0, &v5);
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s", v2, 0xCu);
    sub_10000BC74(v3);
  }
}

unint64_t sub_100031B40()
{
  result = qword_1000CB060;
  if (!qword_1000CB060)
  {
    sub_100007108(&qword_1000CB050, &unk_100093FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB060);
  }

  return result;
}

uint64_t sub_100031BBC(void *a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CB068, &qword_1000925A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_100031FA4();
  sub_10008E24C();
  v11[1] = a2;
  sub_100009C08(&qword_1000CB078, &qword_1000925B0);
  sub_100032200(&qword_1000CB080, sub_100031FF8);
  sub_10008E14C();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_100031D48()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

Swift::Int sub_100031DB4()
{
  sub_10008E1FC();
  sub_10008DC8C();
  return sub_10008E22C();
}

uint64_t sub_100031E04@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BECA8;
  v7._object = v3;
  v5 = sub_10008E06C(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_100031E8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_1000BECE0;
  v8._object = a2;
  v6 = sub_10008E06C(v5, v8);

  *a3 = v6 != 0;
  return result;
}

uint64_t sub_100031EE4(uint64_t a1)
{
  v2 = sub_100031FA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100031F20(uint64_t a1)
{
  v2 = sub_100031FA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_100031F5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10003204C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100031FA4()
{
  result = qword_1000CB070;
  if (!qword_1000CB070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB070);
  }

  return result;
}

unint64_t sub_100031FF8()
{
  result = qword_1000CB088;
  if (!qword_1000CB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB088);
  }

  return result;
}

void *sub_10003204C(uint64_t *a1)
{
  v3 = sub_100009C08(&qword_1000CB090, &qword_1000925B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000BB24(a1, a1[3]);
  sub_100031FA4();
  sub_10008E23C();
  if (v1)
  {
    sub_10000BC74(a1);
  }

  else
  {
    sub_100009C08(&qword_1000CB078, &qword_1000925B0);
    sub_100032200(&qword_1000CB098, sub_100032278);
    sub_10008E0DC();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000BC74(a1);
  }

  return v9;
}

uint64_t sub_100032200(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CB078, &qword_1000925B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100032278()
{
  result = qword_1000CB0A0;
  if (!qword_1000CB0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0A0);
  }

  return result;
}

unint64_t sub_1000322E0()
{
  result = qword_1000CB0A8;
  if (!qword_1000CB0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0A8);
  }

  return result;
}

unint64_t sub_100032338()
{
  result = qword_1000CB0B0;
  if (!qword_1000CB0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0B0);
  }

  return result;
}

unint64_t sub_100032390()
{
  result = qword_1000CB0B8;
  if (!qword_1000CB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB0B8);
  }

  return result;
}

uint64_t sub_1000323F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Device();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_10008CABC();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 3)
      {
        return v14 - 2;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_100032514(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for Device();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_10008CABC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for EnrolledDeviceRecord()
{
  result = qword_1000CB118;
  if (!qword_1000CB118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100032668()
{
  result = type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    result = sub_10008CABC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100032704(void *a1)
{
  v3 = v1;
  v5 = sub_100009C08(&qword_1000CB188, &qword_100092880);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_100033370();
  sub_10008E24C();
  v14[15] = 0;
  type metadata accessor for Device();
  sub_1000334E0(&qword_1000CB190, type metadata accessor for Device);
  sub_10008E14C();
  if (!v2)
  {
    v11 = type metadata accessor for EnrolledDeviceRecord();
    v12 = *(v11 + 20);
    v14[14] = 1;
    sub_10008CABC();
    sub_1000334E0(&qword_1000CB198, &type metadata accessor for Date);
    sub_10008E14C();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_100033528();
    sub_10008E14C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10003294C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_10008CABC();
  v29 = *(v31 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v31);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Device();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v32 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_100009C08(&qword_1000CB160, &qword_100092878);
  v30 = *(v33 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v33);
  v12 = &v27 - v11;
  v13 = type metadata accessor for EnrolledDeviceRecord();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v34 = a1;
  sub_10000BB24(a1, v17);
  sub_100033370();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(v34);
  }

  v27 = v13;
  v19 = v16;
  v21 = v30;
  v20 = v31;
  v38 = 0;
  sub_1000334E0(&qword_1000CB170, type metadata accessor for Device);
  sub_10008E0DC();
  v22 = v32;
  v32 = v19;
  sub_1000333C4(v22, v19);
  v37 = 1;
  sub_1000334E0(&qword_1000CB178, &type metadata accessor for Date);
  v23 = v6;
  sub_10008E0DC();
  v24 = v27;
  (*(v29 + 32))(&v32[*(v27 + 20)], v23, v20);
  v35 = 2;
  sub_100033428();
  sub_10008E0DC();
  (*(v21 + 8))(v12, v33);
  v25 = v32;
  v32[*(v24 + 24)] = v36;
  sub_10003347C(v25, v28);
  sub_10000BC74(v34);
  return sub_1000207B4(v25, type metadata accessor for EnrolledDeviceRecord);
}

uint64_t sub_100032DDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x64656C696166;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x64656C6C6F726E65;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (*a2 != 1)
  {
    v8 = 0x6E776F6E6B6E75;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x64656C6C6F726E65;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_100032ED8()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_100032F78()
{
  *v0;
  *v0;
  sub_10008DC8C();
}

Swift::Int sub_100033004()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_1000330A0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003357C(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000330D0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x64656C696166;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x64656C6C6F726E65;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1000331E0()
{
  result = qword_1000CB158;
  if (!qword_1000CB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB158);
  }

  return result;
}

uint64_t sub_100033234()
{
  v1 = 0x64656C6C6F726E65;
  if (*v0 != 1)
  {
    v1 = 0x656D6C6C6F726E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656369766564;
  }
}

uint64_t sub_1000332A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100033734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000332C8(uint64_t a1)
{
  v2 = sub_100033370();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100033304(uint64_t a1)
{
  v2 = sub_100033370();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100033370()
{
  result = qword_1000CB168;
  if (!qword_1000CB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB168);
  }

  return result;
}

uint64_t sub_1000333C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100033428()
{
  result = qword_1000CB180;
  if (!qword_1000CB180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB180);
  }

  return result;
}

uint64_t sub_10003347C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrolledDeviceRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000334E0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100033528()
{
  result = qword_1000CB1A0;
  if (!qword_1000CB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1A0);
  }

  return result;
}

uint64_t sub_10003357C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BEC40;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000335C8()
{
  result = qword_1000CB1A8;
  if (!qword_1000CB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1A8);
  }

  return result;
}

unint64_t sub_100033630()
{
  result = qword_1000CB1B0;
  if (!qword_1000CB1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1B0);
  }

  return result;
}

unint64_t sub_100033688()
{
  result = qword_1000CB1B8;
  if (!qword_1000CB1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1B8);
  }

  return result;
}

unint64_t sub_1000336E0()
{
  result = qword_1000CB1C0;
  if (!qword_1000CB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB1C0);
  }

  return result;
}

uint64_t sub_100033734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C6C6F726E65 && a2 == 0xEC00000065746144 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEF6574617453746ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_10008E18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100033854()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000338C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000092CC;

  return sub_100033958();
}

uint64_t sub_100033978()
{
  v1 = v0[6];
  v0[7] = *(v1 + 112);
  v2 = *(v1 + 120);
  v0[8] = v2;
  v0[9] = swift_getObjectType();
  v3 = *(v2 + 24);
  v2 += 24;
  v0[10] = v3;
  v0[11] = v2 & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
  v4 = *(v2 - 16);
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_100033A18, v6, v5);
}

uint64_t sub_100033A18()
{
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[7];
  v6 = sub_1000347F0();
  v7 = sub_1000348BC();
  v2(&type metadata for NetworkInfo, 0x7774654E69666977, 0xEF6F666E496B726FLL, &type metadata for NetworkInfo, v6, v7, v3, v4);
  v0[12] = 0;
  v8 = v0[6];

  return _swift_task_switch(sub_100033B08, v8, 0);
}

uint64_t sub_100033B08()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[4] = v2;
  v0[5] = v3;

  sub_10008CDBC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100033BDC()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension37KeyValueStoreBackedNetworkInfoStorage__networkInfo;
  v3 = sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for KeyValueStoreBackedNetworkInfoStorage()
{
  result = qword_1000CB1F8;
  if (!qword_1000CB1F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100033CBC()
{
  sub_100033D60();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100033D60()
{
  if (!qword_1000CB208)
  {
    sub_100007108(&qword_1000CD8C0, &qword_100091B80);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CB208);
    }
  }
}

uint64_t sub_100033DC4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_100033DE8, v2, 0);
}

uint64_t sub_100033DE8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[11] = *(v1 + 112);
  v4 = *(v1 + 120);
  v0[12] = v4;
  v0[13] = swift_getObjectType();
  v0[2] = v3;
  v0[3] = v2;
  v5 = *(v4 + 16);
  v4 += 16;
  v0[14] = v5;
  v0[15] = v4 & 0xFFFFFFFFFFFFLL | 0x30FA000000000000;
  v6 = *(v4 - 8);
  v8 = sub_10008DD8C();

  return _swift_task_switch(sub_100033E98, v8, v7);
}

uint64_t sub_100033E98()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = v0[11];
  v6 = sub_100009C08(&qword_1000CD8C0, &qword_100091B80);
  v7 = sub_100034844(&qword_1000CB2F0, sub_1000347F0);
  v8 = sub_100034844(&qword_1000CB300, sub_1000348BC);
  v2(v0 + 2, 0x7774654E69666977, 0xEF6F666E496B726FLL, v6, v7, v8, v3, v4);
  v0[16] = 0;
  v9 = swift_task_alloc();
  v0[17] = v9;
  *v9 = v0;
  v9[1] = sub_10003405C;
  v10 = v0[10];

  return sub_100033958();
}

uint64_t sub_10003405C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 80);

    return _swift_task_switch(sub_1000341A0, v7, 0);
  }
}

uint64_t sub_1000341A0()
{
  v1 = v0[10];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = v0[4];
  v3 = v0[5];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[6] = v2;
  v0[7] = v3;

  sub_10008CDBC();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1000342B8()
{
  *(v1 + 32) = v0;
  v2 = swift_task_alloc();
  *(v1 + 40) = v2;
  *v2 = v1;
  v2[1] = sub_100034348;

  return sub_100033958();
}

uint64_t sub_100034348()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v2 + 32);

    return _swift_task_switch(sub_10003448C, v7, 0);
  }
}

uint64_t sub_10003448C()
{
  v1 = v0[4];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_10003453C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000E290;

  return sub_100033DC4(a1, a2);
}

uint64_t sub_1000345E0()
{
  v0 = sub_100009C08(&qword_1000CB2D8, &qword_100092A70);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - v3;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB2E0, &qword_100092A78);
  sub_10008CD8C();
  swift_endAccess();
  sub_10003478C();
  v5 = sub_10008CDDC();
  (*(v1 + 8))(v4, v0);
  return v5;
}

unint64_t sub_10003470C(uint64_t a1)
{
  result = sub_100034734();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100034734()
{
  result = qword_1000CB2D0;
  if (!qword_1000CB2D0)
  {
    type metadata accessor for KeyValueStoreBackedNetworkInfoStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2D0);
  }

  return result;
}

unint64_t sub_10003478C()
{
  result = qword_1000CB2E8;
  if (!qword_1000CB2E8)
  {
    sub_100007108(&qword_1000CB2D8, &qword_100092A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2E8);
  }

  return result;
}

unint64_t sub_1000347F0()
{
  result = qword_1000CB2F8;
  if (!qword_1000CB2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB2F8);
  }

  return result;
}

uint64_t sub_100034844(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(&qword_1000CD8C0, &qword_100091B80);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000348BC()
{
  result = qword_1000CB308;
  if (!qword_1000CB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB308);
  }

  return result;
}

double sub_100034910@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100034994(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10002D95C(v2, v3);

  return sub_10008CDBC();
}

id sub_100034A20()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient);
  }

  else
  {
    v4 = [objc_allocWithZone(CATTaskClient) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_100034A94(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient] = 0;
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catOperationQueue] = 0;
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingConnection] = a1;
  v3 = objc_allocWithZone(CATSharingServiceTransport);
  swift_unknownObjectRetain();
  v4 = [v3 initWithConnection:a1];
  *&v1[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingTransport] = v4;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for BuddyProxy();
  v5 = objc_msgSendSuper2(&v8, "init");
  v6 = sub_100034A20();
  [v6 setDelegate:v5];

  [*&v5[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy____lazy_storage___catTaskClient] connectWithTransport:*&v5[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension10BuddyProxy_catSharingTransport]];
  swift_unknownObjectRelease();
  return v5;
}

id sub_100034BC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BuddyProxy();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100034CFC()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  swift_errorRetain();
  oslog = sub_10008CCBC();
  v1 = sub_10008DE2C();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v2 = 136315394;
    *(v2 + 4) = sub_10000A2D8(0xD000000000000020, 0x8000000100099870, &v7);
    *(v2 + 12) = 2082;
    swift_errorRetain();
    sub_100009C08(&qword_1000CB3B8, &qword_100092B38);
    v3 = sub_10008DC4C();
    v5 = sub_10000A2D8(v3, v4, &v7);

    *(v2 + 14) = v5;
    _os_log_impl(&_mh_execute_header, oslog, v1, "%s: CAT task client interrupted with error: %{public}s", v2, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }
}

uint64_t sub_10003519C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = sub_10008D3FC();
  v19 = *(v5 - 8);
  v20 = v5;
  v6 = *(v19 + 64);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000CB3C0, &qword_100092BC8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v18 - v12;
  v21 = a1;
  v22 = a2;
  sub_100009C08(&qword_1000CB3C8, &qword_100092BD0);
  v14 = sub_100007108(&qword_1000CB3D0, &qword_100092BD8);
  v15 = sub_10001121C(&qword_1000CB3D8, &qword_1000CB3D0, &qword_100092BD8);
  v16 = sub_100019E50();
  v23 = v14;
  v24 = &type metadata for String;
  v25 = v15;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  sub_10008D0AC();
  type metadata accessor for SettingsViewModel();
  sub_100013A10();
  sub_10008D12C();
  swift_getKeyPath();
  sub_10008D14C();

  sub_10008D3EC();
  sub_10001121C(&qword_1000CB3E0, &qword_1000CB3C0, &qword_100092BC8);
  sub_10008D6CC();

  (*(v19 + 8))(v8, v20);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1000354C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[1] = a3;
  v5 = sub_10008D2AC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10008CB2C();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_10008DBBC();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v14 = sub_100009C08(&qword_1000CB3D0, &qword_100092BD8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v21 - v17;
  v21[4] = a1;
  v21[5] = a2;
  sub_100009C08(&qword_1000CB3E8, &qword_100092C08);
  sub_100035DB0();
  sub_10008D62C();
  sub_10008DB5C();
  sub_10008CB1C();
  v21[7] = sub_10008DC3C();
  v21[8] = v19;
  (*(v6 + 104))(v9, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v5);
  sub_10001121C(&qword_1000CB3D8, &qword_1000CB3D0, &qword_100092BD8);
  sub_100019E50();
  sub_10008D72C();
  (*(v6 + 8))(v9, v5);

  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_1000357F4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {

    sub_10002B5D0();

    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;

    sub_100009C08(&qword_1000CA510, &qword_100090F80);
    sub_100009C08(&qword_1000CB400, &qword_100092C10);
    sub_10001121C(&qword_1000CB418, &qword_1000CA510, &qword_100090F80);
    sub_100035F58();
    sub_100035E34();
    return sub_10008D96C();
  }

  else
  {
    type metadata accessor for SettingsViewModel();
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

uint64_t sub_100035960@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v18 = *(a1 + 32);
  v19 = v16;
  v20 = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  v10 = a1[1];
  *(v9 + 32) = *a1;
  *(v9 + 48) = v10;
  *(v9 + 64) = *(a1 + 32);

  sub_10003600C(&v19, v15);
  sub_10003600C(&v20, v15);
  sub_100036068();
  sub_10008D90C();
  v11 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  result = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v14 = (a4 + *(result + 36));
  *v14 = KeyPath;
  v14[1] = v11;
  return result;
}

uint64_t sub_100035A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = (a3 + 16);
    v4 = *(a3 + 16);
    v6 = *(a3 + 32);
    v7 = *(a3 + 24);
    v14 = *(a3 + 8);
    v15 = *a3;
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = *a3;
    v16 = *v5;
    v17 = v8;
    sub_10003600C(&v17, v21);
    sub_10003600C(&v16, v21);

    sub_10008CDAC();

    v9 = v21[0];
    if (v21[1])
    {
      v10 = sub_100025EB0(a3, v21);

      sub_100036110(&v17);
      sub_100036110(&v16);
      v12 = v14;
      v11 = v15;
      if (v10)
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
LABEL_7:
        sub_100027A88(&v18);
      }
    }

    else
    {
      v12 = v14;
      v11 = v15;
      sub_1000360CC(v15, v14);
      sub_1000360CC(v9, 0);
    }

    *&v18 = v11;
    *(&v18 + 1) = v12;
    *&v19 = v4;
    *(&v19 + 1) = v7;
    v20 = v6;
    goto LABEL_7;
  }

  type metadata accessor for SettingsViewModel();
  sub_100013A10();
  result = sub_10008D13C();
  __break(1u);
  return result;
}

uint64_t sub_100035C44@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (v10)
    {

      sub_1000360CC(v9, v10);
      if (v9 == *a2 && v10 == a2[1])
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_10008E18C();
      }
    }

    else
    {
      v5 = 0;
    }

    v7 = a2[2];
    v6 = a2[3];
    *a3 = v5 & 1;
    *(a3 + 8) = v7;
    *(a3 + 16) = v6;
  }

  else
  {
    type metadata accessor for SettingsViewModel();
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_100035DB0()
{
  result = qword_1000CB3F0;
  if (!qword_1000CB3F0)
  {
    sub_100007108(&qword_1000CB3E8, &qword_100092C08);
    sub_100035E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB3F0);
  }

  return result;
}

unint64_t sub_100035E34()
{
  result = qword_1000CB3F8;
  if (!qword_1000CB3F8)
  {
    sub_100007108(&qword_1000CB400, &qword_100092C10);
    sub_10001121C(&qword_1000CB408, &qword_1000CB410, qword_100092C18);
    sub_10001121C(&qword_1000C9FE8, &qword_1000C9FF0, &unk_100092390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB3F8);
  }

  return result;
}

uint64_t sub_100035F18()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_100035F58()
{
  result = qword_1000CB420;
  if (!qword_1000CB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB420);
  }

  return result;
}

uint64_t sub_100035FAC()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 65, 7);
}

unint64_t sub_100036068()
{
  result = qword_1000CB428;
  if (!qword_1000CB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB428);
  }

  return result;
}

uint64_t sub_1000360CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100036164()
{
  sub_100007108(&qword_1000CB3C0, &qword_100092BC8);
  sub_10001121C(&qword_1000CB3E0, &qword_1000CB3C0, &qword_100092BC8);
  return swift_getOpaqueTypeConformance2();
}

double sub_100036244@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_1000362C8()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension24FakeMDMServerInfoStorage__mdmServerInfo;
  v2 = sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FakeMDMServerInfoStorage()
{
  result = qword_1000CB5B0;
  if (!qword_1000CB5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000363C4()
{
  sub_1000117AC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100036454(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return _swift_task_switch(sub_100036478, 0, 0);
}

uint64_t sub_100036478()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *v2 = *(v0 + 16);
  *(v2 + 16) = v4;
  *(v2 + 32) = v3;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100036534(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  return _swift_task_switch(sub_100036558, 0, 0);
}

uint64_t sub_100036558()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = *(v1 + 32);
  v4 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;

  sub_100012228(v1, v0 + 56);
  sub_10008CDBC();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100036618()
{
  v1 = sub_100009C08(&qword_1000C99C0, &unk_10008FA80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000CD8A0, &unk_100091D50);
  sub_10008CD8C();
  swift_endAccess();
  sub_100011F68();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

double sub_100036748@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_1000367D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100012298(v2, v3);

  return sub_10008CDBC();
}

uint64_t sub_100036898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRowViewModel();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100036918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceRowViewModel();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceRowView()
{
  result = qword_1000CB6C0;
  if (!qword_1000CB6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000369D4()
{
  result = type metadata accessor for DeviceRowViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100036A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CB700, &qword_100092E48);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v41 - v6;
  v8 = sub_100009C08(&qword_1000CB708, &qword_100092E50);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v42 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v41 - v13;
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  *v7 = sub_10008D2EC();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v17 = sub_100009C08(&qword_1000CB710, &qword_100092E58);
  sub_100036E7C(a1, &v7[*(v17 + 44)]);
  v18 = sub_10008D58C();
  v19 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v18)
  {
    v19 = sub_10008D57C();
  }

  sub_10008CF0C();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_100037C28(v7, v14, &qword_1000CB700, &qword_100092E48);
  v28 = &v14[*(v8 + 36)];
  *v28 = v19;
  *(v28 + 1) = v21;
  *(v28 + 2) = v23;
  *(v28 + 3) = v25;
  *(v28 + 4) = v27;
  v28[40] = 0;
  sub_100037C28(v14, v16, &qword_1000CB708, &qword_100092E50);
  v29 = sub_10008D2FC();
  v44 = 0;
  sub_10003764C(a1, &v54);
  v47 = *&v55[16];
  v48 = *&v55[32];
  v49 = *&v55[48];
  v50 = *&v55[64];
  v45 = v54;
  v46 = *v55;
  v51[2] = *&v55[16];
  v51[3] = *&v55[32];
  v51[4] = *&v55[48];
  v51[5] = *&v55[64];
  v51[0] = v54;
  v51[1] = *v55;
  sub_10000C314(&v45, &v52, &qword_1000CB718, &qword_100092E60);
  sub_10000C3F8(v51, &qword_1000CB718, &qword_100092E60);
  *&v43[39] = v47;
  *&v43[55] = v48;
  *&v43[71] = v49;
  *&v43[87] = v50;
  *&v43[7] = v45;
  *&v43[23] = v46;
  v30 = v44;
  v31 = v42;
  sub_10000C314(v16, v42, &qword_1000CB708, &qword_100092E50);
  sub_10000C314(v31, a2, &qword_1000CB708, &qword_100092E50);
  v32 = sub_100009C08(&qword_1000CB720, &qword_100092E68);
  v33 = *(v32 + 48);
  *&v53[49] = *&v43[48];
  *&v53[17] = *&v43[16];
  *&v53[65] = *&v43[64];
  *&v53[81] = *&v43[80];
  v34 = a2 + v33;
  *&v52 = v29;
  *(&v52 + 1) = 0x4008000000000000;
  v53[0] = v30;
  *&v53[96] = *&v43[95];
  *&v53[33] = *&v43[32];
  *&v53[1] = *v43;
  *(v34 + 112) = *&v43[95];
  v35 = *&v53[80];
  v36 = *&v53[32];
  *(v34 + 32) = *&v53[16];
  *(v34 + 48) = v36;
  v37 = *v53;
  *v34 = v52;
  *(v34 + 16) = v37;
  v38 = *&v53[48];
  *(v34 + 80) = *&v53[64];
  *(v34 + 96) = v35;
  *(v34 + 64) = v38;
  v39 = a2 + *(v32 + 64);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_10000C314(&v52, &v54, &qword_1000CB728, &unk_100092E70);
  sub_10000C3F8(v16, &qword_1000CB708, &qword_100092E50);
  *&v55[49] = *&v43[48];
  *&v55[65] = *&v43[64];
  *v56 = *&v43[80];
  *&v55[1] = *v43;
  *&v55[17] = *&v43[16];
  *&v54 = v29;
  *(&v54 + 1) = 0x4008000000000000;
  v55[0] = v30;
  *&v56[15] = *&v43[95];
  *&v55[33] = *&v43[32];
  sub_10000C3F8(&v54, &qword_1000CB728, &unk_100092E70);
  return sub_10000C3F8(v31, &qword_1000CB708, &qword_100092E50);
}

uint64_t sub_100036E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v53 = a2;
  v2 = sub_10008D47C();
  v48 = *(v2 - 8);
  v3 = *(v48 + 64);
  __chkstk_darwin(v2);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(v6);
  v9 = &v44 - v8;
  v10 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - v13;
  v51 = sub_100009C08(&qword_1000CB748, &qword_100092E90);
  v15 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v50 = (&v44 - v16);
  v17 = sub_100009C08(&qword_1000CB750, &qword_100092E98);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (&v44 - v19);
  v52 = sub_100009C08(&qword_1000CB758, &qword_100092EA0);
  v21 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v23 = &v44 - v22;
  v24 = *(v49 + *(type metadata accessor for DeviceRowViewModel() + 28));
  if (v24 <= 1)
  {
    v45 = v14;
    v46 = v23;
    v44 = v11;
    v49 = v10;
    if (v24)
    {
      sub_10008CF8C();
      sub_10008D46C();
      v38 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
      v39 = sub_100037E3C();
      v40 = v45;
      sub_10008D6BC();
      (*(v48 + 8))(v5, v2);
      (*(v47 + 8))(v9, v6);
      v41 = v44;
      v42 = v49;
      (*(v44 + 16))(v20, v40, v49);
      swift_storeEnumTagMultiPayload();
      *&v54 = v6;
      *(&v54 + 1) = v2;
      v55 = v38;
      v56 = v39;
      swift_getOpaqueTypeConformance2();
      v43 = v46;
      sub_10008D3DC();
      sub_10000C314(v43, v50, &qword_1000CB758, &qword_100092EA0);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CB760, &qword_100092ED8);
      sub_100037D20();
      sub_100037E94();
      sub_10008D3DC();
      sub_10000C3F8(v43, &qword_1000CB758, &qword_100092EA0);
      return (*(v41 + 8))(v45, v42);
    }

    else
    {
      v35 = v46;
      if (qword_1000C8D28 != -1)
      {
        swift_once();
      }

      *v20 = qword_1000D6DA8;
      swift_storeEnumTagMultiPayload();
      v36 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
      v37 = sub_100037E3C();

      *&v54 = v6;
      *(&v54 + 1) = v2;
      v55 = v36;
      v56 = v37;
      swift_getOpaqueTypeConformance2();
      sub_10008D3DC();
      sub_10000C314(v35, v50, &qword_1000CB758, &qword_100092EA0);
      swift_storeEnumTagMultiPayload();
      sub_100009C08(&qword_1000CB760, &qword_100092ED8);
      sub_100037D20();
      sub_100037E94();
      sub_10008D3DC();
      return sub_10000C3F8(v35, &qword_1000CB758, &qword_100092EA0);
    }
  }

  else
  {
    if (v24 == 3)
    {
      if (qword_1000C8D30 != -1)
      {
        swift_once();
      }

      v25 = qword_1000D6DB0;

      v26 = sub_10008D87C();
      KeyPath = swift_getKeyPath();
      v57 = v25;
      v58 = KeyPath;
      v59 = v26;
      v60 = 0;
    }

    else
    {
      if (qword_1000C8D38 != -1)
      {
        swift_once();
      }

      v28 = qword_1000D6DB8;

      v29 = sub_10008D85C();
      v30 = swift_getKeyPath();
      v57 = v28;
      v58 = v30;
      v59 = v29;
      v60 = 1;
    }

    sub_100009C08(&qword_1000C9FD8, &unk_100090010);
    sub_10001A21C();
    sub_10008D3DC();
    v31 = v55;
    v32 = v56;
    v33 = v50;
    *v50 = v54;
    *(v33 + 2) = v31;
    *(v33 + 24) = v32;
    swift_storeEnumTagMultiPayload();
    sub_100009C08(&qword_1000CB760, &qword_100092ED8);
    sub_100037D20();
    sub_100037E94();
    sub_10008D3DC();
  }
}

uint64_t sub_10003764C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a2;
  v3 = sub_100009C08(&qword_1000CB730, &qword_100095280);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v86 = v80 - v5;
  v91 = sub_100038734();
  v92 = v6;
  v7 = sub_100019E50();
  v87 = sub_10008D68C();
  v85 = v8;
  v84 = v9;
  v89 = v10;
  v11 = type metadata accessor for DeviceRowViewModel();
  v12 = (a1 + *(v11 + 32));
  v13 = v12[1];
  v80[1] = v7;
  if (v13)
  {
    v91 = *v12;
    v92 = v13;
    v80[0] = v11;

    v14 = sub_10008D68C();
    v16 = v15;
    v18 = v17;
    v19 = [objc_opt_self() secondaryLabelColor];
    sub_10008D80C();
    v88 = sub_10008D65C();
    v21 = v20;
    v23 = v22;

    v24 = v14;
    v25 = v86;
    sub_10001CD48(v24, v16, v18 & 1);

    v26 = sub_10008D5BC();
    (*(*(v26 - 8) + 56))(v25, 1, 1, v26);
    sub_10008D5EC();
    sub_10000C3F8(v25, &qword_1000CB730, &qword_100095280);
    v27 = v88;
    v28 = sub_10008D67C();
    v30 = v29;
    v32 = v31;
    v33 = a1;
    v35 = v34;

    sub_10001CD48(v27, v21, v23 & 1);

    v81 = v28;
    v36 = v30;
    v88 = v32 & 1;
    sub_10001CC9C(v28, v30, v32 & 1);
    v82 = v35;
    a1 = v33;

    v11 = v80[0];
  }

  else
  {
    v81 = 0;
    v82 = 0;
    v36 = 0;
    v88 = 0;
  }

  v37 = (a1 + *(v11 + 36));
  v38 = v37[1];
  if (!v38)
  {
    goto LABEL_9;
  }

  v39 = *v37;
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v91 = v39;
    v92 = v38;

    v41 = sub_10008D68C();
    v43 = v42;
    v45 = v44;
    v46 = [objc_opt_self() secondaryLabelColor];
    sub_10008D80C();
    v47 = sub_10008D65C();
    v49 = v48;
    v51 = v50;

    sub_10001CD48(v41, v43, v45 & 1);

    v52 = sub_10008D5BC();
    v53 = v86;
    (*(*(v52 - 8) + 56))(v86, 1, 1, v52);
    sub_10008D5EC();
    sub_10000C3F8(v53, &qword_1000CB730, &qword_100095280);
    v54 = v47;
    v55 = v49;
    v56 = sub_10008D67C();
    v58 = v57;
    v60 = v59;
    v62 = v61;

    sub_10001CD48(v54, v55, v51 & 1);

    v63 = v56;
    v64 = v58;
    v65 = v58;
    v66 = v60 & 1;
    sub_10001CC9C(v56, v65, v60 & 1);
    v67 = v62;
  }

  else
  {
LABEL_9:
    v63 = 0;
    v64 = 0;
    v66 = 0;
    v67 = 0;
  }

  v68 = v84 & 1;
  LOBYTE(v91) = v84 & 1;
  v90 = v84 & 1;
  v69 = v87;
  v70 = v85;
  sub_10001CC9C(v87, v85, v84 & 1);

  sub_10001CC9C(v69, v70, v68);

  v72 = v81;
  v71 = v82;
  v73 = v88;
  sub_100037C90(v81, v36, v88, v82);
  sub_100037C90(v63, v64, v66, v67);
  sub_100037CD4(v72, v36, v73, v71);
  sub_100037CD4(v63, v64, v66, v67);
  v74 = v87;
  sub_10001CD48(v87, v70, v68);
  v75 = v89;

  v76 = v90;
  v77 = v83;
  *v83 = v74;
  v77[1] = v70;
  *(v77 + 16) = v76;
  v77[3] = v75;
  v77[4] = v72;
  v78 = v88;
  v77[5] = v36;
  v77[6] = v78;
  v77[7] = v71;
  v77[8] = v63;
  v77[9] = v64;
  v77[10] = v66;
  v77[11] = v67;
  sub_100037CD4(v63, v64, v66, v67);
  sub_100037CD4(v72, v36, v78, v71);
  sub_10001CD48(v74, v70, v91);
}

uint64_t sub_100037BD4@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10008D2BC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100009C08(&qword_1000CB6F8, &qword_100092E40);
  return sub_100036A5C(v1, a1 + *(v3 + 44));
}

uint64_t sub_100037C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009C08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100037C90(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001CC9C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100037CD4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_10001CD48(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100037D20()
{
  result = qword_1000CB768;
  if (!qword_1000CB768)
  {
    sub_100007108(&qword_1000CB758, &qword_100092EA0);
    sub_100007108(&qword_1000CB738, &unk_100092E80);
    sub_10008D47C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    sub_100037E3C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB768);
  }

  return result;
}

unint64_t sub_100037E3C()
{
  result = qword_1000CB778;
  if (!qword_1000CB778)
  {
    sub_10008D47C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB778);
  }

  return result;
}

unint64_t sub_100037E94()
{
  result = qword_1000CB780;
  if (!qword_1000CB780)
  {
    sub_100007108(&qword_1000CB760, &qword_100092ED8);
    sub_10001A21C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB780);
  }

  return result;
}

uint64_t sub_100037F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  if (a1)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_10008CDAC();

    if (*(&v15 + 1) < 2uLL)
    {
      sub_10008DB5C();
      sub_10008CB1C();
      *&v15 = sub_10008DC3C();
      *(&v15 + 1) = v9;
      sub_100019E50();
      v10 = sub_10008D68C();
      v12 = v11;
      v14 = v13 & 1;
      sub_10001CC9C(v10, v11, v13 & 1);

      sub_10008D3DC();
      sub_100009C08(&qword_1000CB798, &qword_100092FC8);
      sub_10003832C();
      sub_10008D3DC();
      sub_10001CD48(v10, v12, v14);
    }

    else
    {
      if (*(&v15 + 1) != 2)
      {
      }

      sub_100009C08(&qword_1000CB798, &qword_100092FC8);
      sub_10003832C();
      result = sub_10008D3DC();
    }

    *a2 = v15;
    *(a2 + 16) = v16;
    *(a2 + 32) = v17;
    *(a2 + 33) = v18;
  }

  else
  {
    type metadata accessor for SettingsViewModel();
    sub_100013A10();
    result = sub_10008D13C();
    __break(1u);
  }

  return result;
}

unint64_t sub_10003832C()
{
  result = qword_1000CB7A0;
  if (!qword_1000CB7A0)
  {
    sub_100007108(&qword_1000CB798, &qword_100092FC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7A0);
  }

  return result;
}

unint64_t sub_1000383AC()
{
  result = qword_1000CB7A8;
  if (!qword_1000CB7A8)
  {
    sub_100007108(&qword_1000CB7B0, &unk_100092FD0);
    sub_10003832C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB7A8);
  }

  return result;
}

uint64_t sub_10003844C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10008CB0C();
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

uint64_t sub_10003852C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10008CB0C();
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

uint64_t type metadata accessor for DeviceRowViewModel()
{
  result = qword_1000CB810;
  if (!qword_1000CB810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100038634()
{
  sub_10008CB0C();
  if (v0 <= 0x3F)
  {
    sub_10000F8A8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1000386E0()
{
  result = qword_1000CB858;
  if (!qword_1000CB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CB858);
  }

  return result;
}

uint64_t sub_100038734()
{
  v1 = sub_10008CB2C();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10008DBBC();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for DeviceRowViewModel();
  v6 = (v0 + *(v5 + 20));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v9 = (v0 + *(v5 + 24));
    v10 = v9[1];
    if (!v10)
    {
      goto LABEL_8;
    }

    v7 = *v9;
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
    }

    else
    {
LABEL_8:
      sub_10008DB5C();
      sub_10008CB1C();
      v7 = sub_10008DC3C();
    }
  }

  return v7;
}

unint64_t sub_1000388AC()
{
  result = qword_1000C9430;
  if (!qword_1000C9430)
  {
    sub_10008CB0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000C9430);
  }

  return result;
}

uint64_t sub_100038904@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10008CB0C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10003896C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_10008C9BC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = outSystemSoundID - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    sub_10008C93C();
    LODWORD(outSystemSoundID[0]) = 0;
    sub_10008C95C(v13);
    v15 = v14;
    AudioServicesCreateSystemSoundID(v14, outSystemSoundID);

    AudioServicesPlaySystemSound(outSystemSoundID[0]);
    (*(v9 + 8))(v12, v8);
    v16 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
    [v16 notificationOccurred:0];
  }

  sub_10000BE8C(v4 + 16, outSystemSoundID);
  v17 = v21;
  v18 = v22;
  sub_10000BB24(outSystemSoundID, v21);
  (*(v18 + 40))(a1, a2, v17, v18);
  return sub_10000BC74(outSystemSoundID);
}

uint64_t sub_100038B34()
{
  sub_10000BC74((v0 + 16));
  sub_10000BC74((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100038B98@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for VisualPinScannerViewModel();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

__n128 sub_100038BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100038C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_100038C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100038CAC()
{
  sub_10000BC74((v0 + 16));
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100038D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = a4;
  v16 = a6;
  v11 = sub_10000F5C0(&v14);
  (*(*(a4 - 8) + 32))(v11, a1, a4);
  type metadata accessor for DeviceStatusViewModelProvider();
  v12 = swift_allocObject();
  sub_10000C3E0(&v14, v12 + 16);
  *(v12 + 56) = a2;
  *(v12 + 64) = a7;
  return v12;
}

uint64_t sub_100038DB0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();
}

uint64_t sub_100038E28(uint64_t a1)
{
  v3 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v13 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1000397B8(a1, v9);

  sub_10008CDBC();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_1000395D4(a1);
  v10 = type metadata accessor for ErrorInfo();
  LODWORD(a1) = (*(*(v10 - 8) + 48))(v7, 1, v10);
  result = sub_1000395D4(v7);
  if (a1 == 1)
  {
    v12 = *(v1 + 16);
    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_100038FC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100009C08(&unk_1000CBAE8, &qword_100093260) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_10008DDBC();
  v2[8] = sub_10008DDAC();
  v5 = sub_10008DD8C();

  return _swift_task_switch(sub_1000390B8, v5, v4);
}

uint64_t sub_1000390B8()
{
  v1 = v0[8];
  v2 = v0[2];
  v3 = v0[3];

  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  swift_errorRetain();
  swift_errorRetain();

  if (v2)
  {
    v5 = v0[6];
    sub_100054B14(v5);
    v6 = type metadata accessor for ErrorInfo();
    v7 = *(v6 - 8);
    v8 = *(v7 + 48);
    if (v8(v5, 1, v6) == 1)
    {
      v9 = v0[3] + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider;
      v10 = *v9;
      v11 = v0[7];
      v12 = v0[5];
      if (*v9)
      {
        v13 = *(v9 + 8);
        v14 = v0[5];
        v10(v0[2]);
        v15 = *(v7 + 56);
        v15(v12, 0, 1, v6);
        sub_10003963C(v12, v11);
      }

      else
      {
        v15 = *(v7 + 56);
        v15(v0[5], 1, 1, v6);
        sub_100054CF8(v11);
        if (v8(v12, 1, v6) != 1)
        {
          sub_1000395D4(v0[5]);
        }
      }

      v19 = v0[6];
      if (v8(v19, 1, v6) != 1)
      {
        sub_1000395D4(v19);
      }
    }

    else
    {
      sub_10003963C(v0[6], v0[7]);
      v15 = *(v7 + 56);
    }

    v20 = v0[7];
    v21 = v0[3];
    v15(v20, 0, 1, v6);
    sub_100038E28(v20);
  }

  else
  {
    v17 = v0[3];
    v16 = v0[4];
    v18 = type metadata accessor for ErrorInfo();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    sub_100038E28(v16);
  }

  v23 = v0[6];
  v22 = v0[7];
  v25 = v0[4];
  v24 = v0[5];

  v26 = v0[1];

  return v26();
}

uint64_t sub_100039374()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus__errorInfo;
  v3 = sub_100009C08(&qword_1000CBBC8, &qword_100093300);
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider + 8];
  sub_100039828(*&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension15OperationStatus_defaultErrorInfoProvider]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OperationStatus()
{
  result = qword_1000CBAD0;
  if (!qword_1000CBAD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003948C()
{
  sub_100039530();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100039530()
{
  if (!qword_1000CBAE0)
  {
    sub_100007108(&unk_1000CBAE8, &qword_100093260);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CBAE0);
    }
  }
}

uint64_t sub_100039594@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OperationStatus();
  result = sub_10008CD1C();
  *a1 = result;
  return result;
}

uint64_t sub_1000395D4(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003963C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorInfo();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000396A0(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();
}

uint64_t sub_100039720(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v10 - v6;
  sub_1000397B8(a1, &v10 - v6);
  v8 = *a2;
  return sub_100038E28(v7);
}

uint64_t sub_1000397B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&unk_1000CBAE8, &qword_100093260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039828(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_100039838()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(CWFInterface) init];
    [v3 activate];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_1000398B4()
{

  return swift_deallocClassInstance();
}

id sub_100039910()
{
  v0 = sub_10008DC2C();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_100039838();
  v3 = [v2 SSID];

  if (v3)
  {
    v4 = sub_10008CA0C();
    v6 = v5;

    sub_10008DC1C();
    v7 = sub_10008DBFC();
    v9 = v8;
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v10 = sub_10008CCDC();
    sub_100009F94(v10, qword_1000D6D38);

    v11 = sub_10008CCBC();
    v12 = sub_10008DE1C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v24 = v14;
      v25 = v7;
      *v13 = 136380675;
      v26 = v9;
      sub_100009C08(&qword_1000C92F0, &qword_10008F430);
      v15 = sub_10008DC4C();
      v17 = sub_10000A2D8(v15, v16, &v24);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "Current ssid name: %{private}s", v13, 0xCu);
      sub_10000BC74(v14);
    }

    else
    {
    }

    v25 = 0;
    v26 = 0;
    isa = sub_10008C9FC().super.isa;
    Password = CWFSecItemQueryPassword();

    v20 = sub_10008CCBC();
    v21 = sub_10008DE4C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 67240192;
      *(v22 + 4) = Password;
      _os_log_impl(&_mh_execute_header, v20, v21, "Query WiFi password osstatus: %{public}d)", v22, 8u);
    }

    if (v25)
    {
      swift_unknownObjectRetain();
      v3 = sub_10008DBDC();
      sub_10000B408(v4, v6);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_10000B408(v4, v6);
      v3 = 0;
    }
  }

  return v3;
}

BOOL sub_100039C60()
{
  v0 = sub_100039838();
  v1 = [v0 currentKnownNetworkProfile];

  if (!v1)
  {
    return 0;
  }

  v2 = [v1 nearbyShareableStatus];
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  v4 = sub_10008CCBC();
  v5 = sub_10008DE1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    type metadata accessor for CWFNearbyShareableStatus(0);
    v8 = sub_10008DC4C();
    v10 = sub_10000A2D8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Current network shareable status: %{public}s", v6, 0xCu);
    sub_10000BC74(v7);
  }

  return v2 < 2;
}

uint64_t sub_100039E04()
{
  v1 = *v0;
  v2 = sub_100039838();
  v3 = [v2 networkName];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_10008DBDC();

  return v4;
}

unint64_t sub_100039EDC()
{
  result = qword_1000CBC88;
  if (!qword_1000CBC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBC88);
  }

  return result;
}

uint64_t sub_100039F30()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100039FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v52 = a2;
  v53 = a1;
  v66 = sub_10008CB6C();
  v5 = *(v66 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v66);
  v65 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_10008C8AC();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v64);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EnrolledDeviceRecord();
  v62 = *(v12 - 8);
  v63 = v12;
  v13 = *(v62 + 64);
  v14 = __chkstk_darwin(v12);
  v67 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  v50 = v4;
  sub_10008CDAC();

  v19 = v72;
  v61 = v72[2];
  if (v61)
  {
    v20 = 0;
    v59 = enum case for Calendar.Component.year(_:);
    v57 = enum case for Calendar.Component.day(_:);
    v58 = enum case for Calendar.Component.month(_:);
    v55 = (v8 + 8);
    v56 = (v5 + 8);
    v21 = &_swiftEmptyArrayStorage;
    v54 = xmmword_100090C60;
    v60 = v72;
    while (1)
    {
      if (v20 >= v19[2])
      {
        __break(1u);
        return result;
      }

      v70 = v20;
      v71 = v21;
      v23 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v68 = *(v62 + 72);
      v69 = v23;
      sub_10003347C(v19 + v23 + v68 * v20, v17);
      v24 = v65;
      sub_10008CB4C();
      sub_100009C08(&qword_1000C9DE8, &qword_10008FE30);
      v25 = sub_10008CB5C();
      v26 = *(v25 - 8);
      v27 = v11;
      v28 = *(v26 + 72);
      v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v30 = v17;
      v31 = 2 * v28;
      v32 = swift_allocObject();
      *(v32 + 16) = v54;
      v33 = v32 + v29;
      v34 = *(v26 + 104);
      v34(v33, v59, v25);
      v35 = v33 + v28;
      v11 = v27;
      v34(v35, v58, v25);
      v36 = v33 + v31;
      v17 = v30;
      v34(v36, v57, v25);
      sub_10007F650(v32);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v37 = v30 + *(v63 + 20);
      sub_10008CB3C();

      (*v56)(v24, v66);
      v38 = sub_10008C88C();
      if (v39)
      {
        break;
      }

      if (v38 != v53)
      {
        break;
      }

      v40 = sub_10008C89C();
      if ((v41 & 1) != 0 || v40 != v52)
      {
        break;
      }

      v42 = sub_10008C86C();
      v44 = v43;
      (*v55)(v27, v64);
      v21 = v71;
      if ((v44 & 1) != 0 || v42 != v51)
      {
        goto LABEL_14;
      }

      result = sub_10003B214(v30);
      v19 = v60;
      v22 = v70;
LABEL_4:
      v20 = v22 + 1;
      if (v61 == v20)
      {
        goto LABEL_20;
      }
    }

    (*v55)(v27, v64);
    v21 = v71;
LABEL_14:
    sub_10003AE78(v30, v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = v21;
    v19 = v60;
    v22 = v70;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_10000A98C(0, v21[2] + 1, 1);
      v21 = v72;
    }

    v47 = v68;
    v46 = v69;
    v49 = v21[2];
    v48 = v21[3];
    if (v49 >= v48 >> 1)
    {
      sub_10000A98C(v48 > 1, v49 + 1, 1);
      v21 = v72;
    }

    v21[2] = v49 + 1;
    result = sub_10003AE78(v67, v21 + v46 + v49 * v47);
    goto LABEL_4;
  }

  v21 = &_swiftEmptyArrayStorage;
LABEL_20:

  swift_getKeyPath();
  swift_getKeyPath();
  v72 = v21;

  return sub_10008CDBC();
}

uint64_t sub_10003A588()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension29FakeEnrollmentHistoryProvider__enrolledDeviceRecords;
  v2 = sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for FakeEnrollmentHistoryProvider()
{
  result = qword_1000CBCC0;
  if (!qword_1000CBCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003A660()
{
  sub_10003A6FC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003A6FC()
{
  if (!qword_1000CBCD0)
  {
    sub_100007108(&unk_1000CBCD8, &qword_100096CA0);
    v0 = sub_10008CDCC();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CBCD0);
    }
  }
}

uint64_t sub_10003A760(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return _swift_task_switch(sub_10003A780, v1, 0);
}

uint64_t sub_10003A780()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  sub_100009C08(&qword_1000CBDC0, &qword_1000934F0);
  sub_10008CD8C();
  swift_endAccess();
  v3 = v0[1];

  return v3();
}

uint64_t sub_10003A828(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(type metadata accessor for EnrolledDeviceRecord() - 8);
  v2[8] = v3;
  v4 = *(v3 + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(sub_10003A8E4, v1, 0);
}

uint64_t sub_10003A8E4()
{
  v1 = v0[7];
  sub_10003347C(v0[6], v0[9]);
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = sub_10008CD9C();
  v4 = v3;
  v5 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_10003AF2C(0, v5[2] + 1, 1, v5, &qword_1000C92E8, &unk_10008F420, type metadata accessor for EnrolledDeviceRecord);
    *v4 = v5;
  }

  v8 = v5[2];
  v7 = v5[3];
  if (v8 >= v7 >> 1)
  {
    v5 = sub_10003AF2C(v7 > 1, v8 + 1, 1, v5, &qword_1000C92E8, &unk_10008F420, type metadata accessor for EnrolledDeviceRecord);
    *v4 = v5;
  }

  v9 = v0[8];
  v10 = v0[9];
  v5[2] = v8 + 1;
  sub_10003AE78(v10, v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
  v2(v0 + 2, 0);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003AAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10003AACC, v3, 0);
}

uint64_t sub_10003AACC()
{
  v1 = v0[5];
  sub_100039FA4(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_10003AB50()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v2 = v0[2];
  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_10003AC1C()
{
  v1 = v0[3];
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = &_swiftEmptyArrayStorage;

  sub_10008CDBC();
  v2 = v0[1];

  return v2();
}

unint64_t sub_10003ACCC(uint64_t a1)
{
  result = sub_10003ACF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003ACF4()
{
  result = qword_1000CBDB8;
  if (!qword_1000CBDB8)
  {
    type metadata accessor for FakeEnrollmentHistoryProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBDB8);
  }

  return result;
}

uint64_t sub_10003AD4C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_10003ADD0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_10003AE78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnrolledDeviceRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_10003AF2C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100009C08(a5, a6);
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

char *sub_10003B108(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009C08(&qword_1000C9348, &qword_10008F490);
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

uint64_t sub_10003B214(uint64_t a1)
{
  v2 = type metadata accessor for EnrolledDeviceRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10003B294()
{
  v1 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue;
  v2 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue);
  }

  else
  {
    v4 = [objc_allocWithZone(CATSerialOperationQueue) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10003B308()
{
  v1 = v0;
  v2 = *sub_10000BB24(&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider], *&v0[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24]);
  v3 = sub_100034A20();
  [v3 invalidate];

  v5.receiver = v1;
  v5.super_class = type metadata accessor for AXMEnroller();
  return objc_msgSendSuper2(&v5, "dealloc");
}

uint64_t type metadata accessor for AXMEnroller()
{
  result = qword_1000CBEF0;
  if (!qword_1000CBEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003B508(void *a1)
{
  v2 = v1;
  v4 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v49[-1] - v6;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v8 = sub_10008CCDC();
  sub_100009F94(v8, qword_1000D6D38);
  v9 = sub_10008CCBC();
  v10 = sub_10008DE1C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Fetch serial number operation finished", v11, 2u);
  }

  v12 = [a1 error];
  if (v12)
  {
    v13 = v12;
    v48 = sub_10008CCBC();
    v14 = sub_10008DE2C();

    if (os_log_type_enabled(v48, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *&v56 = v16;
      *v15 = 136446210;
      *&v52 = v13;
      v17 = v13;
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v18 = sub_10008DC4C();
      v20 = sub_10000A2D8(v18, v19, &v56);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v48, v14, "Fetch serial number operation finished with error: %{public}s", v15, 0xCu);
      sub_10000BC74(v16);
    }

    else
    {

      v21 = v48;
    }

    return;
  }

  if ([a1 resultObject])
  {
    sub_10008DF4C();
    swift_unknownObjectRelease();
  }

  else
  {
    v52 = 0u;
    v53 = 0u;
  }

  v56 = v52;
  v57 = v53;
  if (*(&v53 + 1))
  {
    sub_10003E148(0, &qword_1000CBF10, DMTFetchAutomatedDeviceEnrollmentPrerequisitesResultObject_ptr);
    if (swift_dynamicCast())
    {
      v22 = v49[0];
      sub_10008C56C(v22, &v56);

      *&v52 = sub_10003E148(0, &qword_1000CBF18, DMTFetchAutomatedDeviceEnrollmentPrerequisitesRequest_ptr);
      sub_100009C08(&qword_1000CBF20, &qword_1000935D8);
      v23 = sub_10008DC4C();
      v25 = v24;
      sub_10003E190(&v56, &v52);
      v26 = sub_10008CCBC();
      v27 = sub_10008DE1C();
      sub_10003E1EC(&v56);
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *v28 = 136446466;
        v29 = sub_10000A2D8(v23, v25, &v51);

        *(v28 + 4) = v29;
        *(v28 + 12) = 2082;
        v52 = v56;
        v53 = v57;
        v54 = v58;
        v55 = v59;
        sub_10003E190(&v56, v49);
        v30 = sub_10008DC4C();
        v32 = sub_10000A2D8(v30, v31, &v51);

        *(v28 + 14) = v32;
        _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s finished with result: %{public}s", v28, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v49[3] = &type metadata for DMTResultBackedADEPrerequisites;
      v49[4] = &off_1000C2CF0;
      v39 = swift_allocObject();
      v49[0] = v39;
      v40 = v57;
      v39[1] = v56;
      v39[2] = v40;
      v41 = v59;
      v39[3] = v58;
      v39[4] = v41;
      v50 = 0;
      v42 = *&v2[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject];
      sub_10003E190(&v56, &v52);
      sub_10008CD3C();
      v43 = sub_10008DDEC();
      (*(*(v43 - 8) + 56))(v7, 1, 1, v43);
      v44 = swift_allocObject();
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      *(v44 + 32) = v2;
      v45 = v57;
      *(v44 + 40) = v56;
      *(v44 + 56) = v45;
      v46 = v59;
      *(v44 + 72) = v58;
      *(v44 + 88) = v46;
      v47 = v2;
      sub_10007B228(0, 0, v7, &unk_1000935E8, v44);

      sub_10003D2C8(v49);
      return;
    }
  }

  else
  {
    sub_10000C3F8(&v56, &qword_1000C9338, &qword_10008F488);
  }

  v33 = a1;
  v34 = sub_10008CCBC();
  v35 = sub_10008DE2C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v33;
    *v37 = v33;
    v38 = v33;
    _os_log_impl(&_mh_execute_header, v34, v35, "Unexpected resultObject from %@", v36, 0xCu);
    sub_10000C3F8(v37, &qword_1000C9308, &qword_1000935D0);
  }
}

uint64_t sub_10003BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_1000092CC;

  return sub_10003D42C(a5, a4);
}

uint64_t sub_10003BD08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[45] = a4;
  v5[46] = v4;
  v5[43] = a2;
  v5[44] = a3;
  v5[42] = a1;
  return _swift_task_switch(sub_10003BD30, 0, 0);
}

id sub_10003BD30()
{
  v35 = v0;
  v1 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  (*(v3 + 16))(v2, v3);
  if (*(v0 + 24))
  {
    result = [objc_allocWithZone(DMTPerformAutomatedDeviceEnrollmentRequest) init];
    *(v0 + 376) = result;
    if (result)
    {
      v5 = result;
      v6 = *(v0 + 360);
      v8 = *(v0 + 336);
      v7 = *(v0 + 344);
      [result setAutomationBehavior:1];
      v9 = sub_10008DBCC();
      [v5 setNonce:v9];

      v10 = *(v0 + 96);
      *(v0 + 160) = *(v0 + 80);
      *(v0 + 176) = v10;
      *(v0 + 192) = *(v0 + 112);
      v11 = *(v0 + 64);
      *(v0 + 128) = *(v0 + 48);
      *(v0 + 144) = v11;
      sub_10002137C(v0 + 128, v0 + 200);
      sub_10000C3F8(v0 + 16, &unk_1000C90E8, &qword_10008F350);
      v12 = *(v0 + 128);
      v13 = *(v0 + 136);
      v14 = sub_10008DBCC();
      [v5 setOrganizationName:v14];

      v15 = sub_100024538();
      sub_10000BC20(v0 + 128);
      [v5 setOrganizationType:v15];
      if (v6)
      {
        v16 = *(v0 + 352);
        v17 = *(v0 + 360);
        v18 = sub_10008DBCC();
      }

      else
      {
        v18 = 0;
      }

      v26 = *(v0 + 368);
      [v5 setMdmServerName:v18];

      v28 = *(v26 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_networkInfoStore);
      v27 = *(v26 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_networkInfoStore + 8);
      ObjectType = swift_getObjectType();
      v30 = *(v27 + 16);
      v33 = (v30 + *v30);
      v31 = v30[1];
      v32 = swift_task_alloc();
      *(v0 + 384) = v32;
      *v32 = v0;
      v32[1] = sub_10003C134;

      return v33(ObjectType, v27);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v19 = sub_10008CCDC();
    sub_100009F94(v19, qword_1000D6D38);
    v20 = sub_10008CCBC();
    v21 = sub_10008DE2C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34 = v23;
      *v22 = 136315138;
      *(v22 + 4) = sub_10000A2D8(0xD000000000000029, 0x800000010009A080, &v34);
      _os_log_impl(&_mh_execute_header, v20, v21, "We don't have an account in %s. Did the user sign out immediately after pairing a device?", v22, 0xCu);
      sub_10000BC74(v23);
    }

    v24 = *(*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
    *(v0 + 193) = 3;
    sub_10008CD2C();
    v25 = *(v0 + 8);

    return v25();
  }

  return result;
}

uint64_t sub_10003C134(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 384);
  v8 = *v3;
  v4[49] = a1;
  v4[50] = a2;
  v4[51] = v2;

  if (v2)
  {
    v6 = sub_10003C9B8;
  }

  else
  {
    v6 = sub_10003C24C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10003C24C()
{
  v1 = *(v0 + 400);
  if (v1)
  {
    if (v1 == 1)
    {
      v12 = *(v0 + 392);
      v13 = *(v0 + 376);
      [v13 setNetworkConfiguration:3];
      v14 = sub_10008DBCC();
      v15 = sub_10008DBCC();
      v16 = [objc_opt_self() credentialWithNetworkName:v14 credential:v15];

      [v13 setNetworkCredential:v16];
      sub_10002D980(v12, 1uLL);
      goto LABEL_10;
    }

    if (v1 != 2)
    {
      v2 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_fileSystemStore);
      *(v0 + 416) = *v2;
      v3 = v2[1];
      *(v0 + 424) = v3;
      *(v0 + 432) = swift_getObjectType();
      v4 = *(v3 + 24);
      v3 += 24;
      *(v0 + 440) = v4;
      *(v0 + 448) = v3 & 0xFFFFFFFFFFFFLL | 0xA2EC000000000000;
      v5 = *(v3 - 16);
      v6 = sub_10008DD8C();
      v8 = v7;
      v9 = sub_10003C5F8;
      v10 = v6;
      v11 = v8;

      return _swift_task_switch(v9, v10, v11);
    }
  }

  else
  {
    sub_10002D980(*(v0 + 392), 0);
  }

  v17 = *(v0 + 376);
  v18 = (*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_currentNetworkPrimitives);
  v19 = v18[3];
  v20 = v18[4];
  sub_10000BB24(v18, v19);
  (*(v20 + 8))(v19, v20);
  v21 = v18[3];
  v22 = v18[4];
  sub_10000BB24(v18, v21);
  (*(v22 + 16))(v21, v22);
  [v17 setNetworkConfiguration:1];
  v23 = sub_10008DBCC();

  v24 = sub_10008DBCC();

  v16 = [objc_opt_self() credentialWithNetworkName:v23 credential:v24];

  [v17 setNetworkCredential:v16];
LABEL_10:

  v25 = *(v0 + 376);
  v26 = *sub_10000BB24((*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
  v27 = sub_100034A20();
  v28 = [v27 prepareTaskOperationForRequest:v25];

  if (!v28)
  {
    __break(1u);
    return _swift_task_switch(v9, v10, v11);
  }

  v29 = *(v0 + 368);
  v30 = *(v0 + 376);
  v32 = *(v0 + 352);
  v31 = *(v0 + 360);
  v34 = *(v0 + 336);
  v33 = *(v0 + 344);
  [v28 addTarget:v29 selector:"enrollmentOperationDidFinish:" forOperationEvents:6];
  v35 = sub_10003B294();
  [v35 addOperation:v28];

  *(v0 + 272) = v34;
  *(v0 + 280) = v33;
  *(v0 + 288) = v32;
  *(v0 + 296) = v31;
  *(v0 + 312) = 1;
  v36 = *(v29 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);

  sub_10008CD3C();

  sub_10003D2C8(v0 + 272);
  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_10003C5F8()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v6 = v0[51];
  v5 = v0[52];
  v8 = v0[49];
  v7 = v0[50];
  v9 = sub_10003D31C();
  v10 = sub_10003D370();
  v2(&type metadata for Data, v8, v7, &type metadata for Data, v9, v10, v3, v4);
  v0[57] = v6;
  if (v6)
  {
    v11 = sub_10003CAFC;
  }

  else
  {
    v11 = sub_10003C6D8;
  }

  return _swift_task_switch(v11, 0, 0);
}

void sub_10003C6D8()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  if (v1 >> 60 == 15)
  {
    sub_10003D3C4();
    swift_allocError();
    *v4 = 4;
    swift_willThrow();
    sub_10002D980(v3, v2);
    if (qword_1000C8CF8 != -1)
    {
      swift_once();
    }

    v5 = sub_10008CCDC();
    sub_100009F94(v5, qword_1000D6D38);
    v6 = sub_10008CCBC();
    v7 = sub_10008DE2C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "We don't have any network info to share, we shouldn't have gotten this far", v8, 2u);
    }

    v10 = *(v0 + 368);
    v9 = *(v0 + 376);

    v11 = *(v10 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
    *(v0 + 194) = 4;
    sub_10008CD2C();
  }

  else
  {
    v12 = *(v0 + 376);
    v13 = *(v0 + 320);
    v14 = *(v0 + 328);
    isa = sub_10008C9FC().super.isa;
    [v12 setNetworkPayload:isa];

    [v12 setNetworkConfiguration:2];
    sub_10002D980(v3, v2);
    sub_10003D418(v13, v1);
    v16 = *(v0 + 376);
    v17 = *sub_10000BB24((*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(*(v0 + 368) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
    v18 = sub_100034A20();
    v19 = [v18 prepareTaskOperationForRequest:v16];

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = *(v0 + 368);
    v21 = *(v0 + 376);
    v23 = *(v0 + 352);
    v22 = *(v0 + 360);
    v25 = *(v0 + 336);
    v24 = *(v0 + 344);
    [v19 addTarget:v20 selector:"enrollmentOperationDidFinish:" forOperationEvents:6];
    v26 = sub_10003B294();
    [v26 addOperation:v19];

    *(v0 + 272) = v25;
    *(v0 + 280) = v24;
    *(v0 + 288) = v23;
    *(v0 + 296) = v22;
    *(v0 + 312) = 1;
    v27 = *(v20 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);

    sub_10008CD3C();

    sub_10003D2C8(v0 + 272);
  }

  v28 = *(v0 + 8);

  v28();
}

uint64_t sub_10003C9B8()
{
  v1 = *(v0 + 408);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "We don't have any network info to share, we shouldn't have gotten this far", v5, 2u);
  }

  v7 = *(v0 + 368);
  v6 = *(v0 + 376);

  v8 = *(v7 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
  *(v0 + 194) = 4;
  sub_10008CD2C();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10003CAFC()
{
  sub_10002D980(*(v0 + 392), *(v0 + 400));
  v1 = *(v0 + 456);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE2C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "We don't have any network info to share, we shouldn't have gotten this far", v5, 2u);
  }

  v7 = *(v0 + 368);
  v6 = *(v0 + 376);

  v8 = *(v7 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
  *(v0 + 194) = 4;
  sub_10008CD2C();

  v9 = *(v0 + 8);

  return v9();
}

void sub_10003CC48(void *a1)
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v3 = sub_10008CCDC();
  sub_100009F94(v3, qword_1000D6D38);
  v4 = sub_10008CCBC();
  v5 = sub_10008DE1C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Enrollment operation finished", v6, 2u);
  }

  v7 = [a1 error];
  if (v7)
  {
    v8 = v7;
    oslog = sub_10008CCBC();
    v9 = sub_10008DE2C();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *&v18[0] = v11;
      *v10 = 136446210;
      v12 = v8;
      sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
      v13 = sub_10008DC4C();
      v15 = sub_10000A2D8(v13, v14, v18);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, oslog, v9, "Enrollment operation failed with error: %{public}s", v10, 0xCu);
      sub_10000BC74(v11);
    }

    else
    {
    }
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
    v19 = 0;
    memset(v18, 0, sizeof(v18));
    v20 = 2;
    sub_10008CD3C();
    sub_10003D2C8(v18);
    LOBYTE(v18[0]) = 5;
    sub_10008CD2C();
  }
}

uint64_t sub_10003CF58()
{
  result = type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_10003D01C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(DMTFetchAutomatedDeviceEnrollmentPrerequisitesRequest) init];
  if (v2)
  {
    v3 = v2;
    v4 = *sub_10000BB24((v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider), *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider + 24));
    v5 = sub_100034A20();
    v6 = [v5 prepareTaskOperationForRequest:v3];

    if (v6)
    {
      v10[4] = sub_10003D1B8;
      v10[5] = 0;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 1107296256;
      v10[2] = sub_100077134;
      v10[3] = &unk_1000C0978;
      v7 = _Block_copy(v10);
      v8 = v6;
      sub_10003D2B8(sub_10003D1B8);

      [v8 setCompletionBlock:v7];
      _Block_release(v7);

      [v8 addTarget:v1 selector:"fetchADEPrerequisitesOperationDidFinish:" forOperationEvents:6];
      v9 = sub_10003B294();
      [v9 addOperation:v8];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_10003D1B8()
{
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10008CCDC();
  sub_100009F94(v0, qword_1000D6D38);
  oslog = sub_10008CCBC();
  v1 = sub_10008DE1C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Serial number request completed", v2, 2u);
  }
}

uint64_t sub_10003D2A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003D2B8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10003D31C()
{
  result = qword_1000CDE10;
  if (!qword_1000CDE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CDE10);
  }

  return result;
}

unint64_t sub_10003D370()
{
  result = qword_1000CBF00;
  if (!qword_1000CBF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF00);
  }

  return result;
}

unint64_t sub_10003D3C4()
{
  result = qword_1000CBF08;
  if (!qword_1000CBF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF08);
  }

  return result;
}

uint64_t sub_10003D418(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000B408(a1, a2);
  }

  return a1;
}

uint64_t sub_10003D42C(_OWORD *a1, uint64_t a2)
{
  v2[29] = a2;
  v2[20] = &type metadata for DMTResultBackedADEPrerequisites;
  v2[21] = &off_1000C2CF0;
  v4 = swift_allocObject();
  v2[17] = v4;
  v5 = a1[1];
  v4[1] = *a1;
  v4[2] = v5;
  v6 = a1[3];
  v4[3] = a1[2];
  v4[4] = v6;
  sub_10003E190(a1, (v2 + 2));

  return _swift_task_switch(sub_10003D4DC, 0, 0);
}

uint64_t sub_10003D4DC()
{
  v1 = (*(v0 + 232) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_mdmServerInfoStore);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000BB24(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 240) = v6;
  *v6 = v0;
  v6[1] = sub_10003D614;

  return v8(v0 + 176, v2, v3);
}

uint64_t sub_10003D614()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10003DA74;
  }

  else
  {
    v3 = sub_10003D728;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003D728()
{
  v1 = v0[29];
  v2 = sub_10000BB24(v0 + 17, v0[20]);
  v4 = *v2;
  v3 = v2[1];
  v5 = sub_10000BB24(v0 + 17, v0[20]);
  v6 = v5[2];
  v7 = v5[3];

  sub_10001BDCC(v4, v3, v6, v7, v0 + 22, (v0 + 10));
  v8 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider + 24);
  v9 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider + 32);
  sub_10000BB24((v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider), v8);
  v10 = *(v9 + 40);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_10003D8B4;

  return (v14)(v0 + 10, v8, v9);
}

uint64_t sub_10003D8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 256);
  v12 = *v5;
  *(*v5 + 264) = v4;

  if (v4)
  {

    return _swift_task_switch(sub_10003DEA4, 0, 0);
  }

  else
  {
    v10[34] = a4;
    v10[35] = a2;
    sub_10000B93C((v10 + 10));
    v13 = swift_task_alloc();
    v10[36] = v13;
    *v13 = v12;
    v13[1] = sub_10003DD10;
    v14 = v10[29];

    return sub_10003BD08(a1, a2, a3, a4);
  }
}

uint64_t sub_10003DA74()
{
  v21 = v0;
  v1 = *(v0 + 248);
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 209);
    if (v2 == 6)
    {
      v15 = *(v0 + 232);

      v16 = *(v15 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
      *(v0 + 211) = 2;
      goto LABEL_11;
    }

    if (v2 == 7)
    {
      v3 = *(v0 + 232);

      v4 = *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
      *(v0 + 212) = 0;
LABEL_11:
      sub_10008CD2C();
      v17 = *(v0 + 216);
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 216);

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  swift_errorRetain();
  v7 = sub_10008CCBC();
  v8 = sub_10008DE2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v0 + 224) = v1;
    swift_errorRetain();
    v11 = sub_10008DC4C();
    v13 = sub_10000A2D8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to fetch the nonce with error: '%s'", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v14 = *(*(v0 + 232) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
  *(v0 + 210) = 2;
  sub_10008CD2C();
LABEL_12:

  sub_10000BC74((v0 + 136));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10003DD10()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v5 = *v0;

  return _swift_task_switch(sub_10003DE44, 0, 0);
}

uint64_t sub_10003DE44()
{
  sub_10000BC74((v0 + 136));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003DEA4()
{
  v21 = v0;
  sub_10000B93C(v0 + 80);
  v1 = *(v0 + 264);
  *(v0 + 216) = v1;
  swift_errorRetain();
  sub_100009C08(&unk_1000CD890, &qword_10008F6A0);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 209);
    if (v2 == 6)
    {
      v15 = *(v0 + 232);

      v16 = *(v15 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
      *(v0 + 211) = 2;
      goto LABEL_11;
    }

    if (v2 == 7)
    {
      v3 = *(v0 + 232);

      v4 = *(v3 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
      *(v0 + 212) = 0;
LABEL_11:
      sub_10008CD2C();
      v17 = *(v0 + 216);
      goto LABEL_12;
    }
  }

  v5 = *(v0 + 216);

  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v6 = sub_10008CCDC();
  sub_100009F94(v6, qword_1000D6D38);
  swift_errorRetain();
  v7 = sub_10008CCBC();
  v8 = sub_10008DE2C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136315138;
    *(v0 + 224) = v1;
    swift_errorRetain();
    v11 = sub_10008DC4C();
    v13 = sub_10000A2D8(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "Failed to fetch the nonce with error: '%s'", v9, 0xCu);
    sub_10000BC74(v10);
  }

  v14 = *(*(v0 + 232) + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject);
  *(v0 + 210) = 2;
  sub_10008CD2C();
LABEL_12:

  sub_10000BC74((v0 + 136));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10003E148(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_10003E240()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10003E290()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10003E2F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000092CC;

  return sub_10003BBEC(a1, v4, v5, v6, (v1 + 40));
}

uint64_t sub_10003E3B0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003E3C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10003E41C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_10003E478(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003E4A8(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return !v4;
  }

  if (v3 == 1)
  {
    return v4 == 1;
  }

  if (v4 < 2)
  {
    return 0;
  }

  if (*a1 != *a2 || v3 != v4)
  {
    return sub_10008E18C();
  }

  return 1;
}

uint64_t sub_10003E508(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v4 = 0x6572616873746F6ELL;
    v3 = 0xE900000000000064;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69746E6564657263;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64616F6C796170;
  if (*a2 != 1)
  {
    v8 = 0x6572616873746F6ELL;
    v7 = 0xE900000000000064;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69746E6564657263;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006C61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10008E18C();
  }

  return v11 & 1;
}

Swift::Int sub_10003E614()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003E6C0()
{
  *v0;
  *v0;
  sub_10008DC8C();
}

Swift::Int sub_10003E758()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003E800@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003EFB4(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10003E830(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006C61;
  v4 = 0xE700000000000000;
  v5 = 0x64616F6C796170;
  if (v2 != 1)
  {
    v5 = 0x6572616873746F6ELL;
    v4 = 0xE900000000000064;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69746E6564657263;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10003E948(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4E64616F6C796170;
  }

  else
  {
    v4 = 0x546B726F7774656ELL;
  }

  if (v3)
  {
    v5 = 0xEB00000000657079;
  }

  else
  {
    v5 = 0xEB00000000656D61;
  }

  if (*a2)
  {
    v6 = 0x4E64616F6C796170;
  }

  else
  {
    v6 = 0x546B726F7774656ELL;
  }

  if (*a2)
  {
    v7 = 0xEB00000000656D61;
  }

  else
  {
    v7 = 0xEB00000000657079;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10008E18C();
  }

  return v9 & 1;
}

Swift::Int sub_10003E9F8()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003EA84()
{
  *v0;
  sub_10008DC8C();
}

Swift::Int sub_10003EAFC()
{
  v1 = *v0;
  sub_10008E1FC();
  sub_10008DC8C();

  return sub_10008E22C();
}

uint64_t sub_10003EB84@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000BED80;
  v8._object = v3;
  v5 = sub_10008E06C(v4, v8);

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

void sub_10003EBE4(uint64_t *a1@<X8>)
{
  v2 = 0x546B726F7774656ELL;
  if (*v1)
  {
    v2 = 0x4E64616F6C796170;
  }

  v3 = 0xEB00000000656D61;
  if (!*v1)
  {
    v3 = 0xEB00000000657079;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10003EC2C()
{
  if (*v0)
  {
    result = 0x4E64616F6C796170;
  }

  else
  {
    result = 0x546B726F7774656ELL;
  }

  *v0;
  return result;
}

uint64_t sub_10003EC70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v9._countAndFlagsBits = a1;
  v5._rawValue = &off_1000BED80;
  v9._object = a2;
  v6 = sub_10008E06C(v5, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10003ECE0(uint64_t a1)
{
  v2 = sub_10003F3D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003ED1C(uint64_t a1)
{
  v2 = sub_10003F3D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003ED68(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009C08(&qword_1000CBF48, &qword_1000936E0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_10003F3D4();
  sub_10008E24C();
  if (!a3)
  {
    v14 = 0;
    sub_10003F4D0();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v16 = 2;
    v15 = 0;
    sub_10003F4D0();
LABEL_5:
    sub_10008E14C();
    return (*(v7 + 8))(v10, v6);
  }

  v19 = 1;
  v18 = 0;
  sub_10003F4D0();
  sub_10008E14C();
  if (!v3)
  {
    v17 = 1;
    sub_10008E12C();
    return (*(v7 + 8))(v10, v6);
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_10003EF6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10003F000(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_10003EFB4(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000BED18;
  v6._object = a2;
  v4 = sub_10008E06C(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10003F000(uint64_t *a1)
{
  v3 = sub_100009C08(&qword_1000CBF28, &qword_1000936D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  v8 = a1[3];
  sub_10000BB24(a1, v8);
  sub_10003F3D4();
  sub_10008E23C();
  if (!v1)
  {
    v17 = 0;
    sub_10003F428();
    sub_10008E0DC();
    if (v18 && v18 == 1)
    {
      v16 = 1;
      v8 = sub_10008E0BC();
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v10 = sub_10008CCDC();
      sub_100009F94(v10, qword_1000D6D38);
      v11 = sub_10008CCBC();
      v12 = sub_10008DE1C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v15 = v11;
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v15, v12, "Decoded network type is networkPayload)", v13, 2u);
        v11 = v15;
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      (*(v4 + 8))(v7, v3);
      v8 = 0;
    }
  }

  sub_10000BC74(a1);
  return v8;
}

unint64_t sub_10003F3D4()
{
  result = qword_1000CBF30;
  if (!qword_1000CBF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF30);
  }

  return result;
}

unint64_t sub_10003F428()
{
  result = qword_1000CBF38;
  if (!qword_1000CBF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF38);
  }

  return result;
}

unint64_t sub_10003F47C()
{
  result = qword_1000CBF40;
  if (!qword_1000CBF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF40);
  }

  return result;
}

unint64_t sub_10003F4D0()
{
  result = qword_1000CBF50;
  if (!qword_1000CBF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF50);
  }

  return result;
}

unint64_t sub_10003F558()
{
  result = qword_1000CBF58;
  if (!qword_1000CBF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF58);
  }

  return result;
}

unint64_t sub_10003F5B0()
{
  result = qword_1000CBF60;
  if (!qword_1000CBF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF60);
  }

  return result;
}

unint64_t sub_10003F608()
{
  result = qword_1000CBF68;
  if (!qword_1000CBF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF68);
  }

  return result;
}

unint64_t sub_10003F660()
{
  result = qword_1000CBF70;
  if (!qword_1000CBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF70);
  }

  return result;
}

unint64_t sub_10003F6B4()
{
  result = qword_1000CBF78;
  if (!qword_1000CBF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CBF78);
  }

  return result;
}

uint64_t sub_10003F708()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_10003F764()
{
  v2 = *(*v0 + 16);
  sub_100009C08(&qword_1000CD6C0, &unk_100093A00);
  sub_10003F80C();
  return sub_10008CDDC();
}

uint64_t sub_10003F7C0()
{
  v1 = *(*v0 + 16);

  sub_10008CD5C();
}

unint64_t sub_10003F80C()
{
  result = qword_1000CC038;
  if (!qword_1000CC038)
  {
    sub_100007108(&qword_1000CD6C0, &unk_100093A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC038);
  }

  return result;
}

uint64_t sub_10003F870()
{
  result = sub_10008D8AC();
  qword_1000D6DA8 = result;
  return result;
}

uint64_t sub_10003F8B0()
{
  result = sub_10008D8AC();
  qword_1000D6DB0 = result;
  return result;
}

uint64_t sub_10003F8E8()
{
  result = sub_10008D8AC();
  qword_1000D6DB8 = result;
  return result;
}

uint64_t sub_10003F920()
{
  result = sub_10008D8AC();
  qword_1000D6DC0 = result;
  return result;
}

uint64_t sub_10003F958(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10003F970(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 33))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_10003F9C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10003FA28(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10003FA60(void *a1)
{
  v2 = v1;
  v4 = sub_100009C08(&qword_1000CC088, &qword_100093B20);
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  __chkstk_darwin(v4);
  v32 = &v28 - v6;
  v7 = sub_100009C08(&qword_1000CC090, &qword_100093B28);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - v9;
  v11 = sub_100009C08(&qword_1000CC098, &qword_100093B30);
  v28 = *(v11 - 8);
  v29 = v11;
  v12 = *(v28 + 64);
  __chkstk_darwin(v11);
  v14 = &v28 - v13;
  v15 = sub_100009C08(&qword_1000CC0A0, &qword_100093B38);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v28 - v18;
  v20 = a1[4];
  sub_10000BB24(a1, a1[3]);
  sub_100040B68();
  sub_10008E24C();
  v21 = v2[1];
  if (v21 == 1)
  {
    LOBYTE(v35) = 1;
    sub_100040C10();
    sub_10008E0FC();
    (*(v30 + 8))(v10, v31);
    return (*(v16 + 8))(v19, v15);
  }

  if (!v21)
  {
    LOBYTE(v35) = 0;
    sub_100040C64();
    sub_10008E0FC();
    (*(v28 + 8))(v14, v29);
    return (*(v16 + 8))(v19, v15);
  }

  LODWORD(v31) = *(v2 + 32);
  v24 = v2[2];
  v23 = v2[3];
  v25 = *v2;
  LOBYTE(v35) = 2;
  sub_100040BBC();
  v26 = v32;
  sub_10008E0FC();
  v35 = v25;
  v36 = v21;
  v37 = v24;
  v38 = v23;
  v39 = v31;
  sub_100023694();
  v27 = v34;
  sub_10008E14C();
  (*(v33 + 8))(v26, v27);
  return (*(v16 + 8))(v19, v15);
}

uint64_t sub_10003FE4C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0x6369666963657073;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_10003FEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100040430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003FEDC(uint64_t a1)
{
  v2 = sub_100040B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FF18(uint64_t a1)
{
  v2 = sub_100040B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003FF60@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_10003FF90(uint64_t a1)
{
  v2 = sub_100040C10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003FFCC(uint64_t a1)
{
  v2 = sub_100040C10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100040024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65767265736D646DLL && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008E18C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000400B4(uint64_t a1)
{
  v2 = sub_100040BBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000400F0(uint64_t a1)
{
  v2 = sub_100040BBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004012C(uint64_t a1)
{
  v2 = sub_100040C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100040168(uint64_t a1)
{
  v2 = sub_100040C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000401A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100040250(v5, v7) & 1;
}

double sub_1000401F0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100040554(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100040250(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 == 1)
  {
    return *(a2 + 8) == 1;
  }

  if (!v3)
  {
    return !*(a2 + 8);
  }

  v5 = *(a2 + 8);
  if (v5 < 2)
  {
    return 0;
  }

  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *a1 == *a2 && v3 == v5;
  if (!v12 && (sub_10008E18C() & 1) == 0 || (v6 != v9 || v7 != v10) && (sub_10008E18C() & 1) == 0)
  {
    return 0;
  }

  v13 = 0x52414C55474552;
  if (!v8)
  {
    v15 = 0xE700000000000000;
    v14 = 0x52414C55474552;
    if (v11)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (v8 != 1)
  {
    v14 = 0x444D5F44554F4C43;
    v15 = 0xE90000000000004DLL;
    if (v11)
    {
      goto LABEL_22;
    }

LABEL_25:
    v16 = 0xE700000000000000;
    goto LABEL_27;
  }

  v14 = 0xD000000000000013;
  v15 = 0x80000001000979F0;
  if (!v11)
  {
    goto LABEL_25;
  }

LABEL_22:
  if (v11 == 1)
  {
    v13 = 0xD000000000000013;
    v16 = 0x80000001000979F0;
  }

  else
  {
    v13 = 0x444D5F44554F4C43;
    v16 = 0xE90000000000004DLL;
  }

LABEL_27:
  if (v14 == v13 && v15 == v16)
  {

    return 1;
  }

  v17 = sub_10008E18C();

  return (v17 & 1) != 0;
}

uint64_t sub_100040430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569;
  if (v4 || (sub_10008E18C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010009A210 == a2 || (sub_10008E18C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369666963657073 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_10008E18C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_100040554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_100009C08(&qword_1000CC040, &qword_100093AF8);
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v56 = &v47 - v7;
  v8 = sub_100009C08(&qword_1000CC048, &qword_100093B00);
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  __chkstk_darwin(v8);
  v11 = &v47 - v10;
  v12 = sub_100009C08(&qword_1000CC050, &qword_100093B08);
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v12);
  v15 = &v47 - v14;
  v16 = sub_100009C08(&qword_1000CC058, &qword_100093B10);
  v57 = *(v16 - 8);
  v17 = *(v57 + 64);
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v63 = a1;
  sub_10000BB24(a1, v20);
  sub_100040B68();
  sub_10008E23C();
  if (v2)
  {
    return sub_10000BC74(v63);
  }

  v48 = v12;
  v49 = 0;
  v23 = v55;
  v22 = v56;
  v24 = v19;
  v25 = sub_10008E0EC();
  v26 = *(v25 + 16);
  if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
  {
    v29 = sub_10008DFEC();
    swift_allocError();
    v30 = v16;
    v32 = v31;
    v33 = *(sub_100009C08(&qword_1000CC068, &qword_100093B18) + 48);
    *v32 = &type metadata for MDMServerInfo;
    sub_10008E08C();
    sub_10008DFDC();
    (*(*(v29 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v57 + 8))(v24, v30);
    goto LABEL_17;
  }

  if (!*(v25 + 32))
  {
    LOBYTE(v58) = 0;
    sub_100040C64();
    v36 = v49;
    sub_10008E07C();
    if (!v36)
    {
      (*(v23 + 8))(v15, v48);
      (*(v57 + 8))(v19, v16);
      swift_unknownObjectRelease();
      v41 = 0;
      v45 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0;
      v38 = v54;
      goto LABEL_22;
    }

    (*(v57 + 8))(v19, v16);
LABEL_17:
    swift_unknownObjectRelease();
    return sub_10000BC74(v63);
  }

  if (v27 == 1)
  {
    LOBYTE(v58) = 1;
    sub_100040C10();
    v34 = v49;
    sub_10008E07C();
    v35 = v57;
    if (v34)
    {
      goto LABEL_16;
    }

    (*(v50 + 8))(v11, v51);
    (*(v35 + 8))(v24, v16);
    swift_unknownObjectRelease();
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 1;
    v38 = v54;
  }

  else
  {
    LOBYTE(v58) = 2;
    sub_100040BBC();
    v37 = v49;
    sub_10008E07C();
    v38 = v54;
    v39 = v57;
    if (v37)
    {
LABEL_16:
      (*(v57 + 8))(v24, v16);
      goto LABEL_17;
    }

    sub_100023544();
    v46 = v52;
    sub_10008E0DC();
    (*(v53 + 8))(v22, v46);
    (*(v39 + 8))(v24, v16);
    swift_unknownObjectRelease();
    v41 = v58;
    v45 = v59;
    v42 = v60;
    v43 = v61;
    v44 = v62;
  }

LABEL_22:
  result = sub_10000BC74(v63);
  *v38 = v41;
  *(v38 + 8) = v45;
  *(v38 + 16) = v42;
  *(v38 + 24) = v43;
  *(v38 + 32) = v44;
  return result;
}

unint64_t sub_100040B68()
{
  result = qword_1000CC060;
  if (!qword_1000CC060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC060);
  }

  return result;
}

unint64_t sub_100040BBC()
{
  result = qword_1000CC070;
  if (!qword_1000CC070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC070);
  }

  return result;
}

unint64_t sub_100040C10()
{
  result = qword_1000CC078;
  if (!qword_1000CC078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC078);
  }

  return result;
}

unint64_t sub_100040C64()
{
  result = qword_1000CC080;
  if (!qword_1000CC080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC080);
  }

  return result;
}

unint64_t sub_100040CFC()
{
  result = qword_1000CC0A8;
  if (!qword_1000CC0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0A8);
  }

  return result;
}

unint64_t sub_100040D54()
{
  result = qword_1000CC0B0;
  if (!qword_1000CC0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0B0);
  }

  return result;
}

unint64_t sub_100040DAC()
{
  result = qword_1000CC0B8;
  if (!qword_1000CC0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0B8);
  }

  return result;
}

unint64_t sub_100040E04()
{
  result = qword_1000CC0C0;
  if (!qword_1000CC0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0C0);
  }

  return result;
}

unint64_t sub_100040E5C()
{
  result = qword_1000CC0C8;
  if (!qword_1000CC0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0C8);
  }

  return result;
}

unint64_t sub_100040EB4()
{
  result = qword_1000CC0D0;
  if (!qword_1000CC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0D0);
  }

  return result;
}

unint64_t sub_100040F0C()
{
  result = qword_1000CC0D8;
  if (!qword_1000CC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0D8);
  }

  return result;
}

unint64_t sub_100040F64()
{
  result = qword_1000CC0E0;
  if (!qword_1000CC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0E0);
  }

  return result;
}

unint64_t sub_100040FBC()
{
  result = qword_1000CC0E8;
  if (!qword_1000CC0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0E8);
  }

  return result;
}

unint64_t sub_100041014()
{
  result = qword_1000CC0F0;
  if (!qword_1000CC0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC0F0);
  }

  return result;
}

uint64_t sub_100041070()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000410E4()
{
  v1 = v0;
  v2 = *(v0 + 16);

  sub_10008CE7C();

  v3 = [objc_opt_self() defaultCenter];
  v4 = v3;
  v5 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver))
  {
    [v3 removeObserver:?];
  }

  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver;
  v7 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver);
    swift_unknownObjectRetain_n();
    [v4 removeObserver:v7];
    swift_unknownObjectRelease_n();
  }

  v9 = *(v1 + 16);

  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor__networkStatus;
  v11 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  (*(*(v11 - 8) + 8))(v1 + v10, v11);
  v12 = *(v1 + v5);
  swift_unknownObjectRelease();
  v13 = *(v1 + v6);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100041214()
{
  sub_1000410E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NWPathMonitorBackedWiFiNetworkStatusMonitor()
{
  result = qword_1000CC140;
  if (!qword_1000CC140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000412C0()
{
  sub_100031780();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_100041374(uint64_t a1)
{
  v3 = sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &aBlock - v6;
  v8 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor__networkStatus;
  LOBYTE(aBlock) = 0;
  sub_10008CD7C();
  (*(v4 + 32))(v1 + v8, v7, v3);
  v9 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_didBecomeActiveNotificationObserver) = 0;
  v10 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_willResignActiveNotificationObserver) = 0;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) = 0;
  *(v1 + 16) = a1;
  v11 = objc_opt_self();

  v12 = [v11 defaultCenter];
  if (qword_1000C8D20 != -1)
  {
    swift_once();
  }

  v13 = qword_1000D6D98;
  v14 = objc_opt_self();
  v15 = [v14 mainQueue];
  v29 = sub_1000421A4;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100077140;
  v28 = &unk_1000C0EA8;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 addObserverForName:v13 object:0 queue:v15 usingBlock:v16];
  _Block_release(v16);

  v18 = *(v1 + v9);
  *(v1 + v9) = v17;
  swift_unknownObjectRelease();
  if (qword_1000C8D18 != -1)
  {
    swift_once();
  }

  v19 = qword_1000D6D90;
  v20 = [v14 mainQueue];
  v29 = sub_1000421C0;
  v30 = v1;
  aBlock = _NSConcreteStackBlock;
  v26 = 1107296256;
  v27 = sub_100077140;
  v28 = &unk_1000C0ED0;
  v21 = _Block_copy(&aBlock);

  v22 = [v12 addObserverForName:v19 object:0 queue:v20 usingBlock:v21];

  _Block_release(v21);
  v23 = *(v1 + v10);
  *(v1 + v10) = v22;
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_10004170C()
{
  v0 = sub_10008CE9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10008CEAC();
  v5 = (*(v1 + 88))(v4, v0);
  if (v5 == enum case for NWPath.Status.satisfied(_:))
  {
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    v9[12] = 1;
  }

  else if (v5 == enum case for NWPath.Status.unsatisfied(_:))
  {
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    v9[14] = 2;
  }

  else
  {
    v6 = enum case for NWPath.Status.requiresConnection(_:);
    v7 = v5;
    swift_unownedRetainStrong();
    swift_getKeyPath();
    swift_getKeyPath();
    if (v7 != v6)
    {
      v9[15] = 2;
      sub_10008CDBC();
      return (*(v1 + 8))(v4, v0);
    }

    v9[13] = 3;
  }

  return sub_10008CDBC();
}

void sub_100041910()
{
  v1 = v0;
  v2 = sub_10008DA6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10008CE3C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v12 = sub_10008CCDC();
  sub_100009F94(v12, qword_1000D6D38);
  v13 = sub_10008CCBC();
  v14 = sub_10008DE1C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Received didBecomeActiveNotification - Start network monitoring", v15, 2u);
  }

  v16 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi;
  if ((*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) & 1) == 0)
  {
    (*(v8 + 104))(v11, enum case for NWInterface.InterfaceType.wifi(_:), v7);
    v17 = sub_10008CE8C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_10008CE5C();
    v21 = *(v1 + 16);
    *(v1 + 16) = v20;

    sub_1000167AC();
    (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInteractive(_:), v2);
    v22 = sub_10008DE9C();
    (*(v3 + 8))(v6, v2);
    v23 = *(v1 + 16);
    swift_unownedRetainStrong();

    swift_unownedRetain();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = v1;
    sub_10003D2B8(sub_1000421D0);
    sub_10008CE4C();

    swift_unownedRelease();
    v24 = *(v1 + 16);

    sub_10008CE6C();

    *(v1 + v16) = 1;
  }
}

uint64_t sub_100041C60()
{
  v1 = v0;
  v2 = sub_10008DA6C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000167AC();
  (*(v3 + 104))(v6, enum case for DispatchQoS.QoSClass.userInteractive(_:), v2);
  v7 = sub_10008DE9C();
  (*(v3 + 8))(v6, v2);
  v8 = *(v0 + 16);
  swift_unownedRetainStrong();

  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_10003D2B8(sub_1000420A0);
  sub_10008CE4C();

  swift_unownedRelease();
  v9 = *(v1 + 16);

  sub_10008CE6C();
}

void sub_100041E08()
{
  v1 = v0;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10008CCDC();
  sub_100009F94(v2, qword_1000D6D38);
  v3 = sub_10008CCBC();
  v4 = sub_10008DE1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received willResignActiveNotification - Stop network monitoring", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension43NWPathMonitorBackedWiFiNetworkStatusMonitor_isMonitoringWiFi) == 1)
  {
    v7 = *(v1 + 16);

    sub_10008CE7C();

    *(v1 + v6) = 0;
  }
}

uint64_t sub_100041F14()
{
  v1 = sub_100009C08(&qword_1000CB050, &unk_100093FD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *v0;
  swift_beginAccess();
  sub_100009C08(&qword_1000CB058, &qword_1000924D0);
  sub_10008CD8C();
  swift_endAccess();
  sub_100031B40();
  v7 = sub_10008CDDC();
  (*(v2 + 8))(v5, v1);
  return v7;
}

uint64_t sub_100042068()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000420A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  *a2 = v5;
  return result;
}

uint64_t sub_10004212C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_10008CDBC();
}

uint64_t sub_1000421A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000421D4()
{
  sub_10000BE8C(v0 + 56, v23);
  sub_10000BE8C(v0 + 16, v21);
  v1 = v22;
  v2 = sub_10000BCC0(v21, v22);
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = *v5;
  v8 = type metadata accessor for ConcreteVPScannerViewFinderMetricsProvider();
  v20[3] = v8;
  v20[4] = &off_1000C0C30;
  v20[0] = v7;
  type metadata accessor for VisualPinScannerViewModel();
  v9 = swift_allocObject();
  v10 = sub_10000BCC0(v20, v8);
  v11 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v18 = v8;
  v19 = &off_1000C0C30;
  *&v17 = v15;
  sub_10000C3E0(v23, v9 + 16);
  sub_10000C3E0(&v17, v9 + 56);
  sub_10000BC74(v20);
  sub_10000BC74(v21);
  return v9;
}

uint64_t sub_1000423EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000424BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100009C08(&qword_1000C9E80, &unk_10008FF30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SettingsView()
{
  result = qword_1000CC3A0;
  if (!qword_1000CC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000425B8()
{
  sub_100017558();
  if (v0 <= 0x3F)
  {
    sub_10004266C();
    if (v1 <= 0x3F)
    {
      sub_1000175A8();
      if (v2 <= 0x3F)
      {
        sub_100017694();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10004266C()
{
  if (!qword_1000CC3B0)
  {
    type metadata accessor for SettingsViewModel();
    sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel);
    v0 = sub_10008D08C();
    if (!v1)
    {
      atomic_store(v0, &qword_1000CC3B0);
    }
  }
}

uint64_t sub_10004271C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10008D29C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for SettingsView();
  sub_10000C314(v1 + *(v12 + 24), v11, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10008CFDC();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10008DE3C();
    v16 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

void sub_100042924(uint64_t a1@<X8>)
{
  v41 = a1;
  v2 = type metadata accessor for SettingsView();
  v37 = *(v2 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v2 - 8);
  v38 = v4;
  v39 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009C08(&qword_1000CC3E8, &qword_1000940A0);
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v8 = &v33 - v7;
  v34 = sub_100009C08(&qword_1000CC3F0, &qword_1000940A8);
  v9 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v11 = &v33 - v10;
  v40 = v1;
  v43 = v1;
  v42 = sub_100009C08(&qword_1000CC3F8, &qword_1000940B0);
  v12 = sub_100007108(&qword_1000CC400, &qword_1000940B8);
  v13 = sub_100007108(&qword_1000CC408, &qword_1000940C0);
  v14 = sub_100007108(&qword_1000CC410, &qword_1000940C8);
  v15 = sub_100007108(&qword_1000CC418, &qword_1000940D0);
  v16 = sub_10001121C(&qword_1000CC420, &qword_1000CC410, &qword_1000940C8);
  v17 = sub_100007108(&qword_1000CC428, &qword_1000940D8);
  v18 = sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8);
  v44 = v17;
  v45 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v14;
  v45 = v15;
  v46 = v16;
  v47 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_100019E50();
  v44 = v13;
  v45 = &type metadata for String;
  v46 = v20;
  v47 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v44 = v12;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10008D04C();
  v23 = sub_10008DBCC();
  v24 = [objc_opt_self() colorNamed:v23];

  if (v24)
  {
    v25 = sub_10008D80C();
    v26 = sub_10008D53C();
    (*(v35 + 32))(v11, v8, v36);
    v27 = &v11[*(v34 + 36)];
    *v27 = v25;
    v27[8] = v26;
    v28 = v39;
    sub_100048280(v40, v39);
    v29 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v30 = swift_allocObject();
    sub_1000482E8(v28, v30 + v29);
    v31 = v41;
    sub_100048364(v11, v41);
    v32 = (v31 + *(sub_100009C08(&qword_1000CC438, &unk_1000940E8) + 36));
    *v32 = sub_10004834C;
    v32[1] = v30;
    v32[2] = 0;
    v32[3] = 0;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100042D9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_10008CB2C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v32[1] = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v32[0] = sub_100009C08(&qword_1000CC410, &qword_1000940C8);
  v8 = *(*(v32[0] - 8) + 64);
  __chkstk_darwin(v32[0]);
  v10 = v32 - v9;
  v11 = sub_100009C08(&qword_1000CC408, &qword_1000940C0);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = v32 - v13;
  v15 = sub_100009C08(&qword_1000CC400, &qword_1000940B8);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v32 - v18;
  *v10 = sub_10008D2EC();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = sub_100009C08(&qword_1000CC440, &qword_100094100);
  sub_100043238(a1, &v10[*(v20 + 44)]);
  v37 = a1;
  v21 = sub_100009C08(&qword_1000CC418, &qword_1000940D0);
  v22 = sub_10001121C(&qword_1000CC420, &qword_1000CC410, &qword_1000940C8);
  v23 = sub_100007108(&qword_1000CC428, &qword_1000940D8);
  v24 = sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8);
  v38 = v23;
  v39 = v24;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v32[0];
  sub_10008D79C();
  sub_10000C3F8(v10, &qword_1000CC410, &qword_1000940C8);
  sub_10008DB5C();
  sub_10008CB1C();
  v42 = sub_10008DC3C();
  v43 = v27;
  v38 = v26;
  v39 = v21;
  v40 = v22;
  v41 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v29 = sub_100019E50();
  sub_10008D71C();

  (*(v33 + 8))(v14, v11);
  v38 = v11;
  v39 = &type metadata for String;
  v40 = v28;
  v41 = v29;
  swift_getOpaqueTypeConformance2();
  v30 = v34;
  sub_10008D74C();
  return (*(v35 + 8))(v19, v30);
}

uint64_t sub_100043238@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009C08(&qword_1000CC468, &qword_100094170);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v26 - v8;
  v10 = sub_100009C08(&qword_1000CC470, &qword_100094178);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v26 - v16;
  v31 = a1;
  sub_100009C08(&qword_1000CC478, &qword_100094180);
  sub_10001121C(&qword_1000CC480, &qword_1000CC478, &qword_100094180);
  v27 = v17;
  sub_10008D61C();
  v30 = a1;
  sub_100009C08(&qword_1000CC488, &qword_100094188);
  sub_100048508();
  sub_10008D61C();
  sub_10008D9FC();
  sub_10008CF9C();
  v18 = &v9[*(v4 + 44)];
  v19 = v33;
  *v18 = v32;
  *(v18 + 1) = v19;
  *(v18 + 2) = v34;
  v20 = v11[2];
  v20(v15, v17, v10);
  v21 = v28;
  sub_10000C314(v9, v28, &qword_1000CC468, &qword_100094170);
  v22 = v29;
  v20(v29, v15, v10);
  v23 = sub_100009C08(&qword_1000CC4A8, &qword_100094198);
  sub_10000C314(v21, &v22[*(v23 + 48)], &qword_1000CC468, &qword_100094170);
  sub_10000C3F8(v9, &qword_1000CC468, &qword_100094170);
  v24 = v11[1];
  v24(v27, v10);
  sub_10000C3F8(v21, &qword_1000CC468, &qword_100094170);
  return (v24)(v15, v10);
}

uint64_t sub_100043578@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v106 = a2;
  v105 = sub_100009C08(&qword_1000CC4E0, &qword_100094240);
  v104 = *(v105 - 8);
  v3 = *(v104 + 64);
  __chkstk_darwin(v105);
  v94 = &v94 - v4;
  v5 = sub_100009C08(&qword_1000CC4E8, &qword_100094248);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v121 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v114 = &v94 - v9;
  v120 = sub_100009C08(&qword_1000CC4F0, &qword_100094250);
  v123 = *(v120 - 8);
  v10 = v123[8];
  v11 = __chkstk_darwin(v120);
  v119 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v118 = &v94 - v13;
  v100 = sub_100009C08(&qword_1000CC4F8, &qword_100094258);
  v99 = *(v100 - 8);
  v14 = *(v99 + 64);
  __chkstk_darwin(v100);
  v95 = &v94 - v15;
  v16 = sub_100009C08(&qword_1000CC500, &qword_100094260);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v117 = &v94 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v116 = &v94 - v20;
  v113 = sub_100009C08(&qword_1000CC508, &qword_100094268);
  v122 = *(v113 - 8);
  v21 = v122[8];
  v22 = __chkstk_darwin(v113);
  v112 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v115 = &v94 - v24;
  v25 = sub_10008CB2C();
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_10008DBBC();
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v111 = sub_100009C08(&qword_1000CC510, &qword_100094270);
  v110 = *(v111 - 8);
  v31 = v110[8];
  v32 = __chkstk_darwin(v111);
  v109 = &v94 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v94 - v34;
  sub_10008DB5C();
  sub_10008CB1C();
  v130 = sub_10008DC3C();
  v131 = v36;
  v37 = sub_100019E50();
  v130 = sub_10008D68C();
  v131 = v38;
  LOBYTE(v132) = v39 & 1;
  v133 = v40;
  v125 = a1;
  sub_100009C08(&qword_1000CC518, &qword_100094278);
  sub_1000487DC();
  v108 = v35;
  sub_10008D98C();
  sub_10008DB5C();
  sub_10008CB1C();
  v97 = v28;
  v130 = sub_10008DC3C();
  v131 = v41;
  v96 = v37;
  v130 = sub_10008D68C();
  v131 = v42;
  LOBYTE(v132) = v43 & 1;
  v133 = v44;
  type metadata accessor for SettingsViewModel();
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel);
  v45 = sub_10008D15C();
  v47 = v46;
  v48 = *(a1 + 24);
  v49 = sub_10008CD0C();
  v126 = v45;
  v127 = v47;
  v128 = v49;
  v129 = v48;
  v107 = a1;
  v124 = a1;

  sub_100009C08(&qword_1000CC538, &qword_100094288);
  sub_100009C08(&qword_1000CC540, &unk_100094290);
  sub_10001121C(&qword_1000CC548, &qword_1000CC538, &qword_100094288);
  sub_100048980(&qword_1000CC550, &qword_1000CC540, &unk_100094290, sub_1000488DC);
  sub_10008D99C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  if (!v130)
  {
    v50 = sub_10008D15C();
    v51 = v54;
    v52 = sub_10008CD0C();

    swift_retain_n();
    v53 = v48;
  }

  v98 = v53;
  v101 = v52;
  v103 = v50;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v102 = v51;
  if (v130 == 1)
  {
    __chkstk_darwin(v55);
    sub_100009C08(&qword_1000CC5C0, &qword_100094360);
    sub_10001121C(&qword_1000CC5C8, &qword_1000CC5C0, &qword_100094360);
    v56 = v95;
    sub_10008D9AC();
    v60 = v99;
    v58 = v116;
    v59 = v100;
    (*(v99 + 32))(v116, v56, v100);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v58 = v116;
    v59 = v100;
    v60 = v99;
  }

  v61 = 1;
  (*(v60 + 56))(v58, v57, 1, v59);
  sub_10008DB5C();
  sub_10008CB1C();
  v130 = sub_10008DC3C();
  v131 = v62;
  v130 = sub_10008D68C();
  v131 = v63;
  LOBYTE(v132) = v64 & 1;
  v133 = v65;
  v66 = sub_10008D15C();
  v68 = v67;
  v69 = sub_10008CD0C();
  v126 = v66;
  v127 = v68;
  v128 = v69;
  v129 = v48;
  __chkstk_darwin(v69);

  sub_100009C08(&qword_1000CC560, &qword_1000942E8);
  sub_100009C08(&qword_1000CC568, &qword_1000942F0);
  sub_10001121C(&qword_1000CC570, &qword_1000CC560, &qword_1000942E8);
  sub_100048980(&qword_1000CC578, &qword_1000CC568, &qword_1000942F0, sub_100048A30);
  sub_10008D99C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v131 >= 2)
  {
    v70 = v105;
    v71 = v104;
    if (v131 != 2)
    {
      __chkstk_darwin(v130);
      sub_100009C08(&qword_1000CC590, &qword_100094348);
      sub_100048B8C();
      v72 = v94;
      sub_10008D9AC();

      (*(v71 + 32))(v114, v72, v70);
      v61 = 0;
    }
  }

  else
  {
    sub_100048B2C(v130, v131);
    v70 = v105;
    v71 = v104;
  }

  v73 = v114;
  (*(v71 + 56))(v114, v61, 1, v70);
  v74 = v110[2];
  v75 = v109;
  v76 = v111;
  v74(v109, v108, v111);
  v77 = v122[2];
  v78 = v112;
  v79 = v113;
  v77(v112, v115, v113);
  sub_10000C314(v116, v117, &qword_1000CC500, &qword_100094260);
  v107 = v123[2];
  v107(v119, v118, v120);
  sub_10000C314(v73, v121, &qword_1000CC4E8, &qword_100094248);
  v80 = v106;
  v74(v106, v75, v76);
  v81 = sub_100009C08(&qword_1000CC588, &qword_100094340);
  v77(&v80[v81[12]], v78, v79);
  v82 = &v80[v81[16]];
  v83 = v103;
  v84 = v102;
  *v82 = v103;
  v82[1] = v84;
  v85 = v101;
  v86 = v98;
  v82[2] = v101;
  v82[3] = v86;
  sub_10000C314(v117, &v80[v81[20]], &qword_1000CC500, &qword_100094260);
  v87 = v120;
  v107(&v80[v81[24]], v119, v120);
  sub_10000C314(v121, &v80[v81[28]], &qword_1000CC4E8, &qword_100094248);
  sub_100048A8C(v83, v84, v85);
  sub_100048ADC(v83, v84, v85);
  sub_10000C3F8(v114, &qword_1000CC4E8, &qword_100094248);
  v88 = v123[1];
  ++v123;
  v88(v118, v87);
  sub_10000C3F8(v116, &qword_1000CC500, &qword_100094260);
  v89 = v122[1];
  ++v122;
  v90 = v113;
  v89(v115, v113);
  v91 = v110[1];
  v92 = v111;
  v91(v108, v111);
  sub_10000C3F8(v121, &qword_1000CC4E8, &qword_100094248);
  v88(v119, v120);
  sub_10000C3F8(v117, &qword_1000CC500, &qword_100094260);
  sub_100048ADC(v83, v84, v85);
  v89(v112, v90);
  return (v91)(v109, v92);
}

uint64_t sub_10004464C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008D2FC();
  v27 = 1;
  sub_100044844(a1, &v19);
  v32 = v23;
  v33 = v24;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v34 = v25;
  v35[0] = v19;
  v35[1] = v20;
  v35[2] = v21;
  v35[3] = v22;
  v35[4] = v23;
  v35[5] = v24;
  v35[6] = v25;
  sub_10000C314(&v28, v18, &qword_1000CC668, &qword_1000944B8);
  sub_10000C3F8(v35, &qword_1000CC668, &qword_1000944B8);
  *&v26[55] = v31;
  *&v26[71] = v32;
  *&v26[87] = v33;
  *&v26[103] = v34;
  *&v26[7] = v28;
  *&v26[23] = v29;
  *&v26[39] = v30;
  v5 = v27;
  sub_100009C08(&qword_1000CAD58, &qword_1000944C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100091E50;
  v7 = sub_10008D54C();
  *(inited + 32) = v7;
  v8 = sub_10008D55C();
  *(inited + 33) = v8;
  v9 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v7)
  {
    v9 = sub_10008D57C();
  }

  sub_10008D57C();
  if (sub_10008D57C() != v8)
  {
    v9 = sub_10008D57C();
  }

  result = sub_10008CF0C();
  v11 = *&v26[80];
  *(a2 + 81) = *&v26[64];
  *(a2 + 97) = v11;
  *(a2 + 113) = *&v26[96];
  v12 = *&v26[16];
  *(a2 + 17) = *v26;
  *(a2 + 33) = v12;
  v13 = *&v26[48];
  *(a2 + 49) = *&v26[32];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  *(a2 + 128) = *&v26[111];
  *(a2 + 65) = v13;
  *(a2 + 136) = v9;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = 0;
  return result;
}

uint64_t sub_100044844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v49 = v60;
  v3 = *(&v61 + 1);
  v4 = v61;
  v53 = *v62;
  v54 = *&v62[16];
  v55 = v63;
  v56 = v64;
  if (*(&v59 + 1))
  {
    v60 = v49;
    *v62 = v53;
    *&v62[16] = v54;
    v63 = v55;
    v64 = v56;

    sub_10000C3F8(&v59, &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v59 = v59;
    v60 = v49;
    *v62 = v53;
    *&v62[16] = v54;
    v63 = v55;
    v64 = v56;
    sub_10000C3F8(&v59, &unk_1000C90E8, &qword_10008F350);
    v4 = 0;
    v3 = 0xE000000000000000;
  }

  *&v59 = v4;
  *(&v59 + 1) = v3;
  sub_100019E50();
  v5 = sub_10008D68C();
  v7 = v6;
  v9 = v8;
  sub_10008D60C();
  v10 = sub_10008D67C();
  v46 = v11;
  v47 = v10;
  v13 = v12;
  v48 = v14;

  sub_10001CD48(v5, v7, v9 & 1);

  LOBYTE(v7) = sub_10008D55C();
  v15 = sub_10008D57C();
  sub_10008D57C();
  if (sub_10008D57C() != v7)
  {
    v15 = sub_10008D57C();
  }

  v45 = v15;
  sub_10008CF0C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v13 & 1;
  v68 = v13 & 1;
  v65 = 0;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v26 = *(&v59 + 1);
  v25 = v59;
  v55 = *v62;
  v56 = *&v62[16];
  v57 = v63;
  v58 = v64;
  v53 = v60;
  v54 = v61;
  if (*(&v59 + 1))
  {
    *v62 = v55;
    *&v62[16] = v56;
    v63 = v57;
    v64 = v58;
    v60 = v53;
    v61 = v54;

    sub_10000C3F8(&v59, &unk_1000C90E8, &qword_10008F350);
  }

  else
  {
    v59 = v59;
    *v62 = v55;
    *&v62[16] = v56;
    v63 = v57;
    v64 = v58;
    v60 = v53;
    v61 = v54;
    sub_10000C3F8(&v59, &unk_1000C90E8, &qword_10008F350);
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  *&v59 = v25;
  *(&v59 + 1) = v26;
  v27 = sub_10008D68C();
  v29 = v28;
  v31 = v30;
  sub_10008D5AC();
  v32 = sub_10008D67C();
  v34 = v33;
  v36 = v35;
  v38 = v37;

  sub_10001CD48(v27, v29, v31 & 1);

  *&v49 = v47;
  *(&v49 + 1) = v46;
  LOBYTE(v50) = v24;
  *(&v50 + 1) = *v67;
  DWORD1(v50) = *&v67[3];
  *(&v50 + 1) = v48;
  LOBYTE(v51) = v45;
  *(&v51 + 1) = *v66;
  DWORD1(v51) = *&v66[3];
  *(&v51 + 1) = v17;
  *v52 = v19;
  *&v52[8] = v21;
  *&v52[16] = v23;
  v52[24] = 0;
  v39 = v49;
  v40 = v50;
  *&v62[9] = *&v52[9];
  v61 = v51;
  *v62 = *v52;
  v59 = v49;
  v60 = v50;
  v41 = *&v62[16];
  *(a2 + 48) = *v52;
  *(a2 + 64) = v41;
  v42 = v61;
  *(a2 + 16) = v40;
  *(a2 + 32) = v42;
  *a2 = v39;
  *(a2 + 80) = v32;
  *(a2 + 88) = v34;
  *(a2 + 96) = v36 & 1;
  *(a2 + 104) = v38;
  sub_10000C314(&v49, &v53, &qword_1000CC670, &qword_1000951A0);
  sub_10001CC9C(v32, v34, v36 & 1);

  sub_10001CD48(v32, v34, v36 & 1);

  *&v53 = v47;
  *(&v53 + 1) = v46;
  LOBYTE(v54) = v24;
  *(&v54 + 1) = *v67;
  DWORD1(v54) = *&v67[3];
  *(&v54 + 1) = v48;
  LOBYTE(v55) = v45;
  *(&v55 + 1) = *v66;
  DWORD1(v55) = *&v66[3];
  *(&v55 + 1) = v17;
  *&v56 = v19;
  *(&v56 + 1) = v21;
  *&v57 = v23;
  BYTE8(v57) = 0;
  return sub_10000C3F8(&v53, &qword_1000CC670, &qword_1000951A0);
}

uint64_t sub_100044CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = type metadata accessor for SettingsView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v42 - v12;
  v13 = __chkstk_darwin(v11);
  v44 = &v42 - v14;
  v15 = __chkstk_darwin(v13);
  v43 = &v42 - v16;
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - v18;
  __chkstk_darwin(v17);
  v21 = &v42 - v20;
  sub_100048280(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  sub_1000482E8(&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v50 = a1;
  sub_100036068();
  sub_10008D90C();
  v24 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  v26 = &v21[*(v7 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  sub_100048280(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = swift_allocObject();
  sub_1000482E8(&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v22);
  v49 = a1;
  sub_10008D90C();
  v28 = sub_10008D88C();
  v29 = swift_getKeyPath();
  v30 = &v19[*(v7 + 44)];
  *v30 = v29;
  v30[1] = v28;
  sub_100048280(a1, &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = swift_allocObject();
  sub_1000482E8(&v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v22);
  v48 = a1;
  v32 = v43;
  sub_10008D90C();
  v33 = sub_10008D88C();
  v34 = swift_getKeyPath();
  v35 = (v32 + *(v7 + 44));
  *v35 = v34;
  v35[1] = v33;
  v36 = v44;
  sub_10000C314(v21, v44, &qword_1000CB400, &qword_100092C10);
  v37 = v45;
  sub_10000C314(v19, v45, &qword_1000CB400, &qword_100092C10);
  v38 = v46;
  sub_10000C314(v32, v46, &qword_1000CB400, &qword_100092C10);
  v39 = v47;
  sub_10000C314(v36, v47, &qword_1000CB400, &qword_100092C10);
  v40 = sub_100009C08(&qword_1000CC660, &qword_1000944B0);
  sub_10000C314(v37, v39 + *(v40 + 48), &qword_1000CB400, &qword_100092C10);
  sub_10000C314(v38, v39 + *(v40 + 64), &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v32, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v19, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v21, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v38, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v37, &qword_1000CB400, &qword_100092C10);
  return sub_10000C3F8(v36, &qword_1000CB400, &qword_100092C10);
}

uint64_t sub_1000451AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (qword_1000C8D68 != -1)
  {
    swift_once();
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v11 == 0;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_100045380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v11 == 1;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_1000454F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v11 == 2;
  *(a2 + 8) = result;
  *(a2 + 16) = v10;
  return result;
}

uint64_t sub_100045668(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for SettingsView() + 28));
  v2 = *v1;
  v3 = v1[1];

  sub_100009C08(&qword_1000CC5D0, &qword_100094368);
  sub_100048C80();
  return sub_10008D90C();
}

uint64_t sub_100045708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100009C08(&qword_1000CC5A8, &qword_100094350);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v10 = v16;
  v11 = 1;
  if (v16)
  {
    v12 = v15;
    *v8 = sub_10008D2BC();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v13 = sub_100009C08(&qword_1000CC5E0, &unk_1000943B8);
    sub_100045890(v12, v10, &v8[*(v13 + 44)]);

    sub_100048D38(v8, a2);
    v11 = 0;
  }

  return (*(v5 + 56))(a2, v11, 1, v4);
}

uint64_t sub_100045890@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v5 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = sub_10008D8AC();
  v30 = a1;
  v31 = a2;
  sub_100019E50();

  v14 = sub_10008D68C();
  v16 = v15;
  v18 = v17;
  v28 = v19;
  KeyPath = swift_getKeyPath();
  v21 = &v12[*(v6 + 44)];
  v22 = *(sub_100009C08(&qword_1000CAB90, &qword_100092180) + 28);
  v23 = enum case for Text.TruncationMode.tail(_:);
  v24 = sub_10008D64C();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v12 = v14;
  *(v12 + 1) = v16;
  v12[16] = v18 & 1;
  *(v12 + 3) = v28;
  *(v12 + 4) = KeyPath;
  *(v12 + 5) = 1;
  v12[48] = 0;
  sub_10000C314(v12, v10, &qword_1000CAB88, &qword_1000920D0);
  v25 = v29;
  *v29 = v13;
  v26 = sub_100009C08(&qword_1000CC5E8, &qword_100094430);
  sub_10000C314(v10, v25 + *(v26 + 48), &qword_1000CAB88, &qword_1000920D0);

  sub_10000C3F8(v12, &qword_1000CAB88, &qword_1000920D0);
  sub_10000C3F8(v10, &qword_1000CAB88, &qword_1000920D0);
}

uint64_t sub_100045AD0(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  sub_100009C08(a2, a3);
  sub_10001121C(a4, a2, a3);
  return sub_10008D62C();
}

uint64_t sub_100045B68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = sub_100009C08(&qword_1000CC630, &unk_100094450);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v44 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v9 = type metadata accessor for SettingsView();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_100009C08(&qword_1000CB400, &qword_100092C10);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v43 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v47 = &v42 - v18;
  v19 = __chkstk_darwin(v17);
  v46 = &v42 - v20;
  __chkstk_darwin(v19);
  v22 = &v42 - v21;
  v42 = &v42 - v21;
  sub_100048280(a1, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v24 = swift_allocObject();
  sub_1000482E8(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
  v49 = a1;
  sub_100036068();
  sub_10008D90C();
  v25 = sub_10008D88C();
  KeyPath = swift_getKeyPath();
  v27 = &v22[*(v13 + 44)];
  *v27 = KeyPath;
  v27[1] = v25;
  sub_100048280(a1, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = swift_allocObject();
  sub_1000482E8(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v23);
  v48 = a1;
  v29 = v46;
  sub_10008D90C();
  v30 = sub_10008D88C();
  v31 = swift_getKeyPath();
  v32 = (v29 + *(v13 + 44));
  v33 = v29;
  *v32 = v31;
  v32[1] = v30;
  *v8 = sub_10008D2BC();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v34 = sub_100009C08(&qword_1000CC638, &qword_100094490);
  sub_100046348(a1, &v8[*(v34 + 44)]);
  v35 = v42;
  v36 = v47;
  sub_10000C314(v42, v47, &qword_1000CB400, &qword_100092C10);
  v37 = v43;
  sub_10000C314(v33, v43, &qword_1000CB400, &qword_100092C10);
  v38 = v44;
  sub_10000C314(v8, v44, &qword_1000CC630, &unk_100094450);
  v39 = v45;
  sub_10000C314(v36, v45, &qword_1000CB400, &qword_100092C10);
  v40 = sub_100009C08(&qword_1000CC640, &qword_100094498);
  sub_10000C314(v37, v39 + *(v40 + 48), &qword_1000CB400, &qword_100092C10);
  sub_10000C314(v38, v39 + *(v40 + 64), &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v8, &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v46, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v35, &qword_1000CB400, &qword_100092C10);
  sub_10000C3F8(v38, &qword_1000CC630, &unk_100094450);
  sub_10000C3F8(v37, &qword_1000CB400, &qword_100092C10);
  return sub_10000C3F8(v47, &qword_1000CB400, &qword_100092C10);
}

uint64_t sub_100046008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v13 == 2)
  {
    sub_100048B2C(v12, 2uLL);
    sub_100048B2C(0, 0);
    v9 = 0;
  }

  else
  {
    v9 = v13 == 0;
    sub_100048B2C(v12, v13);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v9;
  *(a2 + 8) = result;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_1000461A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008CB2C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v13 == 2)
  {
    sub_100048B2C(v12, 2uLL);
    sub_100048B2C(0, 1uLL);
    v9 = 0;
  }

  else
  {
    v9 = v13 == 1;
    sub_100048B2C(v12, v13);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  result = sub_10008DC3C();
  *a2 = v9;
  *(a2 + 8) = result;
  *(a2 + 16) = v11;
  return result;
}

uint64_t sub_100046348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10008D0EC();
  v30 = *(v4 - 8);
  v31 = v4;
  v5 = *(v30 + 64);
  __chkstk_darwin(v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10008CB2C();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10008DBBC();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  v13 = 0;
  if (v33 < 2)
  {
    goto LABEL_4;
  }

  if (v33 != 2)
  {
    v13 = 1;
LABEL_4:
    sub_100048B2C(v32, v33);
  }

  sub_10008DB5C();
  sub_10008CB1C();
  v14 = sub_10008DC3C();
  v28 = v15;
  v29 = v14;
  type metadata accessor for SettingsViewModel();
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel);
  v16 = sub_10008D15C();
  v18 = v17;
  v19 = sub_10008CD0C();
  v32 = v16;
  v33 = v18;
  v34 = v19;
  v35 = v12;
  v36 = 0;

  sub_10008D0DC();
  v20 = a2 + *(sub_100009C08(&qword_1000CC648, &qword_1000944A0) + 36);
  sub_100009C08(&qword_1000CC5F0, &qword_100094438);
  sub_100048F84();
  sub_100049090(&qword_1000CC618, &type metadata accessor for PlainButtonStyle);
  v21 = v31;
  sub_10008D6DC();
  (*(v30 + 8))(v7, v21);

  v22 = sub_10008D9FC();
  v24 = v23;
  result = sub_100009C08(&qword_1000CC5B8, &qword_100094358);
  v26 = (v20 + *(result + 36));
  *v26 = v22;
  v26[1] = v24;
  *a2 = v13;
  v27 = v28;
  *(a2 + 8) = v29;
  *(a2 + 16) = v27;
  return result;
}

uint64_t sub_1000466D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10008D0EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a3 = sub_10008D2BC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v11 = sub_100009C08(&qword_1000CC5E0, &unk_1000943B8);
  sub_100046944(a1, (a3 + *(v11 + 44)));
  type metadata accessor for SettingsViewModel();
  sub_100049090(&qword_1000C9BF8, type metadata accessor for SettingsViewModel);
  v12 = sub_10008D15C();
  v14 = v13;
  v15 = *(a2 + 24);
  v16 = sub_10008CD0C();
  v23[1] = v12;
  v23[2] = v14;
  v23[3] = v16;
  v23[4] = v15;
  v23[5] = 0;

  sub_10008D0DC();
  v17 = a3 + *(sub_100009C08(&qword_1000CC590, &qword_100094348) + 36);
  sub_100009C08(&qword_1000CC5F0, &qword_100094438);
  sub_100048F84();
  sub_100049090(&qword_1000CC618, &type metadata accessor for PlainButtonStyle);
  sub_10008D6DC();
  (*(v7 + 8))(v10, v6);

  v18 = sub_10008D9FC();
  v20 = v19;
  result = sub_100009C08(&qword_1000CC5B8, &qword_100094358);
  v22 = (v17 + *(result + 36));
  *v22 = v18;
  v22[1] = v20;
  return result;
}

uint64_t sub_100046944@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100009C08(&qword_1000CAB88, &qword_1000920D0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  v11 = sub_10008D8AC();
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v30 = v12;
  v31 = v13;
  sub_100019E50();

  v14 = sub_10008D68C();
  v16 = v15;
  v18 = v17;
  v28 = v19;
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(v4 + 44)];
  v22 = *(sub_100009C08(&qword_1000CAB90, &qword_100092180) + 28);
  v23 = enum case for Text.TruncationMode.tail(_:);
  v24 = sub_10008D64C();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  *v10 = v14;
  *(v10 + 1) = v16;
  v10[16] = v18 & 1;
  *(v10 + 3) = v28;
  *(v10 + 4) = KeyPath;
  *(v10 + 5) = 1;
  v10[48] = 0;
  sub_10000C314(v10, v8, &qword_1000CAB88, &qword_1000920D0);
  v25 = v29;
  *v29 = v11;
  v26 = sub_100009C08(&qword_1000CC5E8, &qword_100094430);
  sub_10000C314(v8, v25 + *(v26 + 48), &qword_1000CAB88, &qword_1000920D0);

  sub_10000C3F8(v10, &qword_1000CAB88, &qword_1000920D0);
  sub_10000C3F8(v8, &qword_1000CAB88, &qword_1000920D0);
}

uint64_t sub_100046B94()
{
  sub_100009C08(&qword_1000CC4A0, &qword_100094190);
  sub_10001121C(&qword_1000CC498, &qword_1000CC4A0, &qword_100094190);
  return sub_10008D9AC();
}

uint64_t sub_100046C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_10008D2BC();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = sub_100009C08(&qword_1000CC4B0, &qword_1000941A0);
  return sub_100046C90(a1, a2 + *(v4 + 44));
}

uint64_t sub_100046C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SettingsView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_100009C08(&qword_1000CC4B8, &qword_1000941A8);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v24[-v13];
  sub_100048280(a1, &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1000482E8(&v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15);
  v25 = a1;
  sub_100009C08(&qword_1000CC4C0, &qword_1000941B0);
  sub_100048660();
  sub_10008D90C();
  v17 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  LOBYTE(v15) = v26;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  v20 = &v14[*(v8 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_1000487CC;
  v20[2] = v19;
  sub_10000C314(v14, v12, &qword_1000CC4B8, &qword_1000941A8);
  *a2 = 0;
  *(a2 + 8) = 1;
  v21 = sub_100009C08(&qword_1000CC4D0, &qword_100094230);
  sub_10000C314(v12, a2 + *(v21 + 48), &qword_1000CC4B8, &qword_1000941A8);
  v22 = a2 + *(v21 + 64);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_10000C3F8(v14, &qword_1000CC4B8, &qword_1000941A8);
  return sub_10000C3F8(v12, &qword_1000CC4B8, &qword_1000941A8);
}

uint64_t sub_100046F7C(uint64_t a1)
{
  v2 = sub_10008CFDC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004271C(v6);
  sub_10008CFCC();
  (*(v3 + 8))(v6, v2);
  v7 = *(a1 + 24);
  return sub_100029A34();
}

uint64_t sub_10004705C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_10008CB2C();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v44[1] = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008DBBC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v46 = sub_100009C08(&qword_1000CC4D8, &qword_100094238);
  v8 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v10 = v44 - v9;
  v48 = sub_10008D47C();
  v44[0] = *(v48 - 8);
  v11 = *(v44[0] + 64);
  __chkstk_darwin(v48);
  v13 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v14 = *(v45 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v45);
  v17 = v44 - v16;
  v47 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v18 = *(v47 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v47);
  v21 = v44 - v20;
  v22 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v50 == 1)
  {
    sub_10008CF8C();
    sub_10008D46C();
    v23 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    v24 = sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    v25 = v45;
    v26 = v48;
    sub_10008D6BC();
    (*(v44[0] + 8))(v13, v26);
    (*(v14 + 8))(v17, v25);
    v27 = v47;
    (*(v18 + 16))(v10, v21, v47);
    swift_storeEnumTagMultiPayload();
    v50 = v25;
    v51 = v26;
    v52 = v23;
    v53 = v24;
    swift_getOpaqueTypeConformance2();
    sub_10008D3DC();
    return (*(v18 + 8))(v21, v27);
  }

  else
  {
    sub_10008DB5C();
    sub_10008CB1C();
    v50 = sub_10008DC3C();
    v51 = v29;
    sub_100019E50();
    v30 = sub_10008D68C();
    v32 = v31;
    v34 = v33;
    sub_10008D82C();
    v35 = sub_10008D65C();
    v37 = v36;
    v39 = v38;
    v41 = v40;

    sub_10001CD48(v30, v32, v34 & 1);

    *v10 = v35;
    *(v10 + 1) = v37;
    v10[16] = v39 & 1;
    *(v10 + 3) = v41;
    swift_storeEnumTagMultiPayload();
    v42 = sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    v43 = sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    v50 = v45;
    v51 = v48;
    v52 = v42;
    v53 = v43;
    swift_getOpaqueTypeConformance2();
    return sub_10008D3DC();
  }
}

uint64_t sub_100047668(uint64_t a1)
{
  v2 = sub_10008D42C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100009C08(&qword_1000CC428, &qword_1000940D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10[-v7];
  sub_10008D41C();
  v11 = a1;
  sub_100009C08(&qword_1000CC448, &qword_100094108);
  sub_10001121C(&qword_1000CC450, &qword_1000CC448, &qword_100094108);
  sub_10008D10C();
  sub_10001121C(&qword_1000CC430, &qword_1000CC428, &qword_1000940D8);
  sub_10008D45C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100047854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for SettingsView();
  v58 = *(v3 - 8);
  v4 = *(v58 + 64);
  __chkstk_darwin(v3 - 8);
  v59 = v5;
  v60 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10008CEFC();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009C08(&qword_1000C9FC8, &unk_100090000);
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  v11 = __chkstk_darwin(v9);
  v62 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = &v51 - v13;
  v14 = sub_10008D47C();
  v53 = *(v14 - 8);
  v54 = v14;
  v15 = *(v53 + 64);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009C08(&qword_1000CB738, &unk_100092E80);
  v51 = *(v18 - 8);
  v52 = v18;
  v19 = *(v51 + 64);
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v22 = sub_100009C08(&qword_1000CB740, &qword_100094110);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v51 - v25;
  v27 = sub_100009C08(&qword_1000CC458, &qword_100094118);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v51 - v32;
  v61 = a1;
  v34 = *(a1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  if (v66 == 1)
  {
    sub_10008CF8C();
    sub_10008D46C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    v35 = v52;
    v36 = v54;
    sub_10008D6BC();
    (*(v53 + 8))(v17, v36);
    (*(v51 + 8))(v21, v35);
    (*(v23 + 32))(v33, v26, v22);
    v37 = 0;
  }

  else
  {
    v37 = 1;
  }

  v38 = v33;
  (*(v23 + 56))(v33, v37, 1, v22);
  sub_10008CEEC();
  v39 = v60;
  sub_100048280(v61, v60);
  v40 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v41 = swift_allocObject();
  v55 = v33;
  sub_1000482E8(v39, v41 + v40);
  v42 = v56;
  sub_10008D91C();
  sub_10000C314(v38, v31, &qword_1000CC458, &qword_100094118);
  v44 = v62;
  v43 = v63;
  v45 = *(v63 + 16);
  v46 = v64;
  v45(v62, v42, v64);
  v47 = v65;
  sub_10000C314(v31, v65, &qword_1000CC458, &qword_100094118);
  v48 = sub_100009C08(&qword_1000CC460, &qword_100094168);
  v45((v47 + *(v48 + 48)), v44, v46);
  v49 = *(v43 + 8);
  v49(v42, v46);
  sub_10000C3F8(v55, &qword_1000CC458, &qword_100094118);
  v49(v44, v46);
  return sub_10000C3F8(v31, &qword_1000CC458, &qword_100094118);
}

uint64_t sub_100047EBC(uint64_t a1)
{
  v20 = sub_10008D29C();
  v2 = *(v20 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v19 - v8);
  v10 = sub_10008CFDC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SettingsView();
  sub_10000C314(a1 + *(v15 + 24), v9, &unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v14, v9, v10);
  }

  else
  {
    v16 = *v9;
    sub_10008DE3C();
    v17 = sub_10008D52C();
    sub_10008CCAC();

    sub_10008D28C();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v20);
  }

  sub_10008CFCC();
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_100048144(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = *(a1 + 24);
  v7 = sub_10008DDEC();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_10008DDBC();

  v8 = sub_10008DDAC();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v6;
  sub_10007B228(0, 0, v5, &unk_1000940F8, v9);

  return sub_10002783C();
}

uint64_t sub_100048280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000482E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048364(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CC3F0, &qword_1000940A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000483D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100048414()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1000092CC;

  return sub_1000270CC();
}

unint64_t sub_100048508()
{
  result = qword_1000CC490;
  if (!qword_1000CC490)
  {
    sub_100007108(&qword_1000CC488, &qword_100094188);
    sub_10001121C(&qword_1000CC498, &qword_1000CC4A0, &qword_100094190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC490);
  }

  return result;
}

uint64_t sub_1000485E4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SettingsView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_100048660()
{
  result = qword_1000CC4C8;
  if (!qword_1000CC4C8)
  {
    sub_100007108(&qword_1000CC4C0, &qword_1000941B0);
    sub_100007108(&qword_1000CB738, &unk_100092E80);
    sub_10008D47C();
    sub_10001121C(&qword_1000CB770, &qword_1000CB738, &unk_100092E80);
    sub_100049090(&qword_1000CB778, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC4C8);
  }

  return result;
}

unint64_t sub_1000487DC()
{
  result = qword_1000CC520;
  if (!qword_1000CC520)
  {
    sub_100007108(&qword_1000CC518, &qword_100094278);
    sub_10001121C(&qword_1000CC528, &qword_1000CC530, &qword_100094280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC520);
  }

  return result;
}

unint64_t sub_1000488DC()
{
  result = qword_1000CC558;
  if (!qword_1000CC558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC558);
  }

  return result;
}

uint64_t sub_100048980(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100007108(a2, a3);
    a4();
    sub_10001121C(&qword_1000C9C18, &qword_1000C9C20, &qword_10008FD40);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100048A30()
{
  result = qword_1000CC580;
  if (!qword_1000CC580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC580);
  }

  return result;
}

uint64_t sub_100048A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100048ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100048B2C(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_100048B3C(a1, a2);
  }

  return a1;
}

uint64_t sub_100048B3C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_100048B8C()
{
  result = qword_1000CC598;
  if (!qword_1000CC598)
  {
    sub_100007108(&qword_1000CC590, &qword_100094348);
    sub_10001121C(&qword_1000CC5A0, &qword_1000CC5A8, &qword_100094350);
    sub_10001121C(&qword_1000CC5B0, &qword_1000CC5B8, &qword_100094358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC598);
  }

  return result;
}

unint64_t sub_100048C80()
{
  result = qword_1000CC5D8;
  if (!qword_1000CC5D8)
  {
    sub_100007108(&qword_1000CC5D0, &qword_100094368);
    sub_10001121C(&qword_1000CC5A0, &qword_1000CC5A8, &qword_100094350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC5D8);
  }

  return result;
}

uint64_t sub_100048D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009C08(&qword_1000CC5A8, &qword_100094350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100048DA8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10008D26C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048DDC@<X0>(uint64_t a1@<X8>)
{
  result = sub_10008D26C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100048E10(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10008D27C();
}

uint64_t sub_100048E40(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10008D27C();
}

uint64_t sub_100048EB8(uint64_t a1)
{
  v2 = sub_10008D64C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10008D19C();
}

unint64_t sub_100048F84()
{
  result = qword_1000CC5F8;
  if (!qword_1000CC5F8)
  {
    sub_100007108(&qword_1000CC5F0, &qword_100094438);
    sub_100048980(&qword_1000CC600, &qword_1000CC608, &qword_100094440, sub_10004903C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC5F8);
  }

  return result;
}

unint64_t sub_10004903C()
{
  result = qword_1000CC610;
  if (!qword_1000CC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC610);
  }

  return result;
}

uint64_t sub_100049090(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000490E0()
{
  v1 = *(type metadata accessor for SettingsView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 24);
  memset(v4, 0, sizeof(v4));
  v5 = 0;
  return sub_100027A88(v4);
}

uint64_t sub_100049168()
{
  v1 = *(type metadata accessor for SettingsView() - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 24);
  v4 = xmmword_100094020;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  return sub_100027A88(&v4);
}

uint64_t sub_100049218()
{
  v1 = type metadata accessor for SettingsView();
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

uint64_t sub_10004928C()
{
  v1 = type metadata accessor for SettingsView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 24);

  v8 = *(v1 + 24);
  sub_100009C08(&unk_1000CDB90, &qword_1000940E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_10008CFDC();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
    v10 = *(v5 + v8);
  }

  v11 = *(v5 + *(v1 + 28) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000493E4(uint64_t (*a1)(void))
{
  v3 = *(type metadata accessor for SettingsView() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 24);
  return a1();
}

unint64_t sub_100049460()
{
  result = qword_1000CC678;
  if (!qword_1000CC678)
  {
    sub_100007108(&qword_1000CC438, &unk_1000940E8);
    sub_1000494EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC678);
  }

  return result;
}

unint64_t sub_1000494EC()
{
  result = qword_1000CC680;
  if (!qword_1000CC680)
  {
    sub_100007108(&qword_1000CC3F0, &qword_1000940A8);
    sub_10001121C(&qword_1000CC688, &qword_1000CC3E8, &qword_1000940A0);
    sub_10001121C(&qword_1000CADE0, &qword_1000CADE8, &unk_100094510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000CC680);
  }

  return result;
}

uint64_t sub_1000495EC()
{
  sub_1000207B4(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device, type metadata accessor for Device);
  v1 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription);

  sub_10000BC74((v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enroller));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000496AC()
{
  result = type metadata accessor for Device();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100049750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_1000497C4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10008CDAC();

  return v1;
}

uint64_t sub_100049848(uint64_t a1)
{
  v2 = sub_100009C08(&unk_1000CCC50, &qword_10008F440);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v10 - v4;
  v6 = sub_10008DDEC();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_10008DDBC();

  v7 = sub_10008DDAC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = a1;
  sub_10007B228(0, 0, v5, &unk_1000947B8, v8);
}

uint64_t sub_10004996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_10008DDBC();
  *(v4 + 24) = sub_10008DDAC();
  v6 = sub_10008DD8C();

  return _swift_task_switch(sub_100049A04, v6, v5);
}

uint64_t sub_100049A04()
{
  v2 = v0[2];
  v1 = v0[3];

  *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 1;
  sub_10004F890();
  v3 = v0[1];

  return v3();
}

uint64_t sub_100049AD8(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_unownedRetainStrong();
  a3(v4);
}

uint64_t sub_100049B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v8 = *(*(sub_100009C08(&qword_1000C9E10, &qword_10008FEF0) - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v9 = sub_100009C08(&qword_1000CCC98, &qword_100094798);
  v6[8] = v9;
  v10 = *(v9 - 8);
  v6[9] = v10;
  v11 = *(v10 + 64) + 15;
  v6[10] = swift_task_alloc();
  v12 = sub_100009C08(&qword_1000CCCA0, &unk_1000947A0);
  v6[11] = v12;
  v13 = *(v12 - 8);
  v6[12] = v13;
  v14 = *(v13 + 64) + 15;
  v15 = swift_task_alloc();
  v6[13] = v15;
  v6[14] = sub_10008DDBC();
  v6[15] = sub_10008DDAC();
  ObjectType = swift_getObjectType();
  v17 = *(a5 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v6[16] = v19;
  *v19 = v6;
  v19[1] = sub_100049DD8;

  return v21(v15, ObjectType, a5);
}

uint64_t sub_100049DD8()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v7 = *v0;

  v5 = sub_10008DD8C();

  return _swift_task_switch(sub_100049F14, v5, v4);
}

uint64_t sub_100049F14()
{
  v1 = v0[15];
  v2 = v0[10];
  v10 = v0[13];
  v11 = v0[11];
  v3 = v0[9];
  v12 = v0[8];
  v13 = v0[12];
  v5 = v0[6];
  v4 = v0[7];

  sub_1000167AC();
  v6 = sub_10008DE7C();
  v0[5] = v6;
  v7 = sub_10008DE6C();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_10001121C(&qword_1000CCCA8, &qword_1000CCCA0, &unk_1000947A0);
  sub_100052CD4(&qword_1000C9E40, sub_1000167AC);
  sub_10008CE0C();
  sub_100016840(v4);

  sub_10001121C(&unk_1000CCCB0, &qword_1000CCC98, &qword_100094798);

  sub_10008CE1C();

  (*(v3 + 8))(v2, v12);
  swift_beginAccess();
  sub_100009C08(&qword_1000CAF40, &unk_100095840);
  sub_10001121C(&unk_1000CCCC0, &qword_1000CAF40, &unk_100095840);
  sub_10008CCEC();
  swift_endAccess();

  (*(v13 + 8))(v10, v11);

  v8 = v0[1];

  return v8();
}

void *sub_10004A1E0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v1;
  v3 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver;
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_didBecomeActiveNotificationObserver))
  {
    [v1 removeObserver:?];
  }

  v4 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver;
  v5 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_willResignActiveNotificationObserver);
    swift_unknownObjectRetain_n();
    [v2 removeObserver:v5];
    swift_unknownObjectRelease_n();
  }

  v7 = v0[2];
  swift_unknownObjectRelease();
  v8 = v0[4];
  swift_unknownObjectRelease();
  v9 = v0[6];
  swift_unknownObjectRelease();
  v10 = v0[8];
  swift_unknownObjectRelease();
  sub_10000BC74(v0 + 10);
  sub_10000BC74(v0 + 15);
  v11 = v0[20];

  v12 = v0[21];

  v13 = v0[22];

  v14 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__assignmentStatus;
  v15 = sub_100009C08(&unk_1000CCBF0, &unk_10008F9E0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);
  v16 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider__enrollmentError;
  v17 = sub_100009C08(&qword_1000C98B0, &unk_10008F9F0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  v18 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier);

  v19 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_ignoredDeviceIdentifiers);

  v20 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer);
  swift_unknownObjectRelease();
  v21 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
  v22 = sub_10008DADC();
  (*(*(v22 - 8) + 8))(v0 + v21, v22);
  v23 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);

  v24 = *(v0 + v3);
  swift_unknownObjectRelease();
  v25 = *(v0 + v4);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_10004A410()
{
  sub_10004A1E0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10004A490(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10004A4C8()
{
  sub_100010A44();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000109E0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_10008DADC();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10004A64C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);

  v8 = sub_10008CCBC();
  v9 = sub_10008DE1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446210;
    v12 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
    if (v12)
    {
      v13 = [v12 identifier];
      sub_10008CAEC();

      v14 = sub_10008CADC();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000A2D8(v14, v16, &v19);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received didBecomeActiveNotification (currentTargetDevice = %{public}s)", v10, 0xCu);
    sub_10000BC74(v11);
  }

  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 0;
  if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) == 1)
  {
    sub_10004A8B8();
  }
}

void sub_10004A8B8()
{
  v1 = sub_10008DADC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_prerequisiteStatus) - 5 <= 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8[8] = 0;

    sub_10008CDBC();
    *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
    sub_10008DA9C();
    v6 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
    swift_beginAccess();
    (*(v2 + 40))(v0 + v6, v5, v1);
    swift_endAccess();
    if (*(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground))
    {
      *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 1;
    }

    else
    {
      *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 1;
      v7 = *(v0 + 16);
      sub_100082000();
    }
  }
}

void sub_10004AA4C()
{
  v1 = v0;
  v2 = sub_10008CB0C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v7 = sub_10008CCDC();
  sub_100009F94(v7, qword_1000D6D38);

  v8 = sub_10008CCBC();
  v9 = sub_10008DE1C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136446210;
    v12 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice);
    if (v12)
    {
      v13 = [v12 identifier];
      sub_10008CAEC();

      v14 = sub_10008CADC();
      v16 = v15;
      (*(v3 + 8))(v6, v2);
    }

    else
    {
      v16 = 0xE300000000000000;
      v14 = 7104878;
    }

    v17 = sub_10000A2D8(v14, v16, &v20);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "Received willResignActiveNotification (currentTargetDevice = %{public}s)", v10, 0xCu);
    sub_10000BC74(v11);
  }

  else
  {
  }

  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isInBackground) = 1;
  if (!*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_currentTargetDevice))
  {
    if (*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) == 1)
    {
      sub_10004ACEC();
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = v18;
  }
}

uint64_t sub_10004ACEC()
{
  v1 = v0;
  v2 = sub_10008DA4C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &ObjectType - v8;
  v21 = sub_10008DADC();
  v10 = *(v21 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v21);
  v13 = &ObjectType - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v0 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_10008DA9C();
  v15 = v3[13];
  v15(v9, enum case for DispatchTimeInterval.never(_:), v2);
  *v7 = 0;
  v15(v7, enum case for DispatchTimeInterval.milliseconds(_:), v2);
  sub_10008DEFC();
  swift_unknownObjectRelease();
  v16 = v3[1];
  v16(v7, v2);
  v16(v9, v2);
  (*(v10 + 8))(v13, v21);
  v17 = *(v1 + 16);
  sub_100082230();
  v18 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = &_swiftEmptyArrayStorage;

  result = sub_10004F160();
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) = 0;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_isDiscoveringDevices) = 0;
  *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_startDiscoveryOnActivation) = 0;
  return result;
}

uint64_t sub_10004AF68()
{
  v1 = v0;
  v2 = sub_10008DA4C();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v43 = (v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v45 = (v40 - v6);
  v7 = sub_10008DADC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v40 - v13;
  v15 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_maxDelayTime;
  swift_beginAccess();
  v44 = *(v8 + 16);
  v44(v14, v0 + v15, v7);
  sub_10008DA9C();
  v16 = sub_10008DABC();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v48 = v17;
  result = (v17)(v14, v7);
  if (v16)
  {
    sub_10008DACC();
    v19 = v45;
    *v45 = 5;
    v42 = v8 + 8;
    v20 = v7;
    v22 = v46;
    v21 = v47;
    (*(v46 + 104))(v19, enum case for DispatchTimeInterval.seconds(_:), v47);
    sub_10008DAEC();
    v23 = v22;
    v7 = v20;
    (*(v23 + 8))(v19, v21);
    v48(v12, v20);
    swift_beginAccess();
    (*(v8 + 40))(v1 + v15, v14, v20);
    result = swift_endAccess();
  }

  if ((*(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_shouldProcessDevices) & 1) == 0)
  {
    sub_10008DACC();
    v44(v12, v1 + v15, v7);
    v24 = sub_10008DAAC();
    v25 = v48;
    v48(v12, v7);
    result = v25(v14, v7);
    if (v24)
    {
      if (qword_1000C8CF8 != -1)
      {
        swift_once();
      }

      v26 = sub_10008CCDC();
      sub_100009F94(v26, qword_1000D6D38);
      v27 = sub_10008CCBC();
      v28 = sub_10008DE1C();
      v29 = os_log_type_enabled(v27, v28);
      v41 = v7;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v49 = v31;
        *v30 = 136315138;
        *(v30 + 4) = sub_10000A2D8(0xD00000000000001FLL, 0x800000010009AA70, &v49);
        _os_log_impl(&_mh_execute_header, v27, v28, "%s: Restarting discovery delay timer", v30, 0xCu);
        sub_10000BC74(v31);
      }

      v44 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer;
      v32 = *(v1 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_delayedProcessingTimer);
      v40[1] = swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10008DACC();
      v33 = v45;
      v34 = v46;
      *v45 = 2;
      v42 = v1;
      v35 = *(v34 + 104);
      v36 = v47;
      v35(v33, enum case for DispatchTimeInterval.seconds(_:), v47);
      sub_10008DAEC();
      v37 = *(v34 + 8);
      v37(v33, v36);
      v48(v12, v41);
      v35(v33, enum case for DispatchTimeInterval.never(_:), v36);
      v38 = v43;
      *v43 = 100;
      v35(v38, enum case for DispatchTimeInterval.milliseconds(_:), v36);
      sub_10008DEFC();
      swift_unknownObjectRelease();
      v37(v38, v36);
      v37(v33, v36);
      v48(v14, v41);
      v39 = *(v44 + v42);
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_10008DEDC();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_10004B544(unint64_t a1)
{
  v2 = v1;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v4 = sub_10008CCDC();
  sub_100009F94(v4, qword_1000D6D38);

  v5 = sub_10008CCBC();
  v6 = sub_10008DE1C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x800000010009AA50, &v16);
    *(v7 + 12) = 2048;
    if (a1 >> 62)
    {
      v9 = sub_10008E00C();
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v7 + 14) = v9;

    _os_log_impl(&_mh_execute_header, v5, v6, "%s: %ld nearby devices reported", v7, 0x16u);
    sub_10000BC74(v8);
  }

  else
  {
  }

  v20 = &_swiftEmptySetSingleton;
  v18 = &_swiftEmptyArrayStorage;
  v19 = &_swiftEmptyArrayStorage;

  sub_10005309C(a1, &v20, v1, &v19, &v18);

  v10 = sub_10008CCBC();
  v11 = sub_10008DE1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_10000A2D8(0xD00000000000001ALL, 0x800000010009AA50, &v17);
    *(v12 + 12) = 2048;
    swift_beginAccess();
    *(v12 + 14) = v19[2];
    _os_log_impl(&_mh_execute_header, v10, v11, "%s: %ld nearby devices (unpaired and de-duplicated)", v12, 0x16u);
    sub_10000BC74(v13);
  }

  v14 = *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices);
  *(v2 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_filteredNearbyDevices) = v18;

  sub_10004F160();
  sub_10004F890();
}

uint64_t sub_10004B870(void *a1, const char *a2)
{
  v4 = v2;
  v6 = sub_10008CB0C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v31 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = v30 - v11;
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v13 = sub_10008CCDC();
  sub_100009F94(v13, qword_1000D6D38);
  v14 = a1;
  v15 = sub_10008CCBC();
  v16 = sub_10008DE1C();

  p_type = &stru_1000C6FF0.type;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v30[1] = v4;
    v19 = v18;
    v30[0] = swift_slowAlloc();
    v32 = v30[0];
    *v19 = 136446210;
    v20 = [v14 identifier];
    sub_10008CAEC();

    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
    v21 = sub_10008E15C();
    v22 = a2;
    v23 = v6;
    v25 = v24;
    (*(v7 + 8))(v12, v23);
    v26 = sub_10000A2D8(v21, v25, &v32);

    *(v19 + 4) = v26;
    p_type = (&stru_1000C6FF0 + 16);
    _os_log_impl(&_mh_execute_header, v15, v16, v22, v19, 0xCu);
    sub_10000BC74(v30[0]);
  }

  else
  {

    v23 = v6;
  }

  v27 = [v14 p_type[344]];
  v28 = v31;
  sub_10008CAEC();

  swift_beginAccess();
  sub_100050FAC(v12, v28);
  (*(v7 + 8))(v12, v23);
  swift_endAccess();
  return sub_1000500A8();
}

uint64_t sub_10004BBA0(char *a1)
{
  v3 = sub_100009C08(&qword_1000C9E10, &qword_10008FEF0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v147 = &v141 - v5;
  v150 = sub_100009C08(&qword_1000CCC60, &qword_100094778);
  v149 = *(v150 - 8);
  v6 = *(v149 + 64);
  __chkstk_darwin(v150);
  v156 = &v141 - v7;
  v144 = type metadata accessor for Device();
  v146 = *(v144 - 1);
  v8 = *(v146 + 64);
  v9 = __chkstk_darwin(v144);
  v152 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = v10;
  __chkstk_darwin(v9);
  v158 = &v141 - v11;
  v12 = sub_10008CB0C();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = __chkstk_darwin(v12);
  *&v154 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v142 = &v141 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v141 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v141 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v141 - v26;
  __chkstk_darwin(v25);
  v29 = &v141 - v28;
  v145 = a1;
  v157 = [a1 remoteDevice];
  v30 = [v157 identifier];
  sub_10008CAEC();

  v31 = v13[2];
  v31(v24, v29, v12);
  swift_beginAccess();
  v159 = v1;
  sub_100050FAC(v27, v24);
  v33 = v13[1];
  v32 = v13 + 1;
  v160 = v33;
  v34 = v32;
  v33(v27, v12);
  swift_endAccess();
  if (qword_1000C8CF8 != -1)
  {
    swift_once();
  }

  v35 = sub_10008CCDC();
  v36 = sub_100009F94(v35, qword_1000D6D38);
  v31(v21, v29, v12);
  v151 = v36;
  v37 = sub_10008CCBC();
  v38 = sub_10008DE0C();
  v39 = os_log_type_enabled(v37, v38);
  v155 = v29;
  *&v153 = v31;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v168 = v41;
    *v40 = 136446210;
    sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
    v42 = sub_10008E15C();
    v43 = v12;
    v45 = v44;
    v160(v21, v43);
    v46 = sub_10000A2D8(v42, v45, &v168);
    v12 = v43;

    *(v40 + 4) = v46;
    _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s: Has a successful paired device connection", v40, 0xCu);
    sub_10000BC74(v41);
    v47 = v32;
    v48 = v155;
  }

  else
  {
    v48 = v29;

    v47 = v34;
    v160(v21, v12);
  }

  v49 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension23ConcreteDevicesProvider_deviceTrackingInfoByIdentifier;
  v50 = v159;
  swift_beginAccess();
  v51 = v152;
  v52 = v154;
  if (*(*(v50 + v49) + 16) && (v53 = *(v50 + v49), , sub_10000EA60(v48), v55 = v54, , (v55 & 1) != 0))
  {
    v56 = v142;
    (v153)(v142, v48, v12);
    v57 = sub_10008CCBC();
    v58 = sub_10008DE0C();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v168 = v60;
      *v59 = 136446210;
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
      v61 = sub_10008E15C();
      v63 = v62;
      v64 = v56;
      v65 = v160;
      v160(v64, v12);
      v66 = sub_10000A2D8(v61, v63, &v168);

      *(v59 + 4) = v66;
      _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s: We have already seen this paired device", v59, 0xCu);
      sub_10000BC74(v60);

      return v65(v48, v12);
    }

    else
    {

      v140 = v160;
      v160(v56, v12);
      return v140(v48, v12);
    }
  }

  else
  {
    v142 = v49;
    (v153)(v52, v48, v12);
    v68 = sub_10008CCBC();
    v69 = sub_10008DE0C();
    v70 = os_log_type_enabled(v68, v69);
    v143 = v12;
    if (v70)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v168 = v72;
      *v71 = 136446210;
      sub_100052CD4(&qword_1000CCC30, &type metadata accessor for UUID);
      v73 = sub_10008E15C();
      v74 = v12;
      v76 = v75;
      v160(v52, v74);
      v77 = sub_10000A2D8(v73, v76, &v168);

      *(v71 + 4) = v77;
      _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s: New paired Device", v71, 0xCu);
      sub_10000BC74(v72);
    }

    else
    {

      v160(v52, v12);
    }

    v78 = v157;
    v79 = v158;
    v151 = v47;
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v168) = 2;

    sub_10008CDBC();
    v80 = [v78 identifier];
    sub_10008CAEC();

    v81 = [v78 modelIdentifier];
    v82 = sub_10008DBDC();
    v84 = v83;

    v85 = v144;
    v86 = (v79 + *(v144 + 5));
    *v86 = 0;
    v86[1] = 0;
    v87 = (v79 + v85[6]);
    *v87 = v82;
    v87[1] = v84;
    v88 = (v79 + v85[7]);
    *v88 = 0;
    v88[1] = 0;
    v89 = (v79 + v85[8]);
    v90 = type metadata accessor for BuddyProxy();
    *v89 = 0;
    v89[1] = 0;
    v91 = objc_allocWithZone(v90);
    v92 = swift_unknownObjectRetain();
    v93 = sub_100034A94(v92);
    sub_100052990(v79, v51, type metadata accessor for Device);
    v94 = qword_1000C8CF0;
    v95 = v93;
    v96 = v51;
    if (v94 != -1)
    {
      swift_once();
    }

    sub_10000BE8C(&unk_1000D6CF0, &v168);
    v97 = v159;
    v154 = *(v159 + 64);
    sub_10000BE8C(v159 + 80, &v167);
    v98 = type metadata accessor for ConcreteCurrentWiFiNetworkPrimitives();
    v99 = swift_allocObject();
    *(v99 + 16) = 0;
    v165 = v90;
    v166 = &off_1000C05B8;
    v164 = v95;
    v163[3] = v98;
    v163[4] = &off_1000C0878;
    v163[0] = v99;
    v100 = type metadata accessor for AXMEnroller();
    v153 = *(v97 + 48);
    v101 = objc_allocWithZone(v100);
    v102 = v165;
    v103 = sub_10000BCC0(&v164, v165);
    v104 = *(*(v102 - 8) + 64);
    __chkstk_darwin(v103);
    v106 = (&v141 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v107 + 16))(v106);
    v108 = *v106;
    v162[4] = &off_1000C05B8;
    v162[3] = v90;
    v162[0] = v108;
    *&v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller____lazy_storage___catOperationQueue] = 0;
    v109 = OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject;
    v110 = sub_100009C08(&qword_1000CCC68, &qword_100094780);
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();
    v113 = v95;
    v145 = v113;
    *&v101[v109] = sub_10008CD4C();
    v114 = v96;
    sub_100052990(v96, &v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_device], type metadata accessor for Device);
    sub_10000BE8C(v162, &v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_requestPerformingProvider]);
    sub_10000BE8C(&v168, &v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_accountProvider]);
    *&v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_networkInfoStore] = v154;
    sub_10000BE8C(&v167, &v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_mdmServerInfoStore]);
    *&v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_fileSystemStore] = v153;
    sub_10000BE8C(v163, &v101[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_currentNetworkPrimitives]);
    v161.receiver = v101;
    v161.super_class = v100;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v115 = objc_msgSendSuper2(&v161, "init");

    sub_10000BC74(&v167);
    sub_10000BC74(&v168);
    sub_1000207B4(v96, type metadata accessor for Device);
    sub_10000BC74(v163);
    sub_10000BC74(v162);
    sub_10000BC74(&v164);
    v144 = type metadata accessor for Device;
    sub_100052990(v158, v96, type metadata accessor for Device);
    v116 = type metadata accessor for DeviceTrackingInfo(0);
    v117 = *(v116 + 48);
    v118 = *(v116 + 52);
    v119 = swift_allocObject();
    *(v119 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription) = 0;
    v120 = (v119 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enroller);
    v120[3] = v100;
    v120[4] = &off_1000C0960;
    *v120 = v115;
    sub_100052B74(v96, v119 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_device, type metadata accessor for Device);
    v168 = *&v115[OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtension11AXMEnroller_enrollmentStatusSubject];
    sub_10001121C(&qword_1000CCC70, &qword_1000CCC68, &qword_100094780);
    *&v154 = v115;
    v168 = sub_10008CDDC();
    sub_1000167AC();
    v121 = sub_10008DE7C();
    v167 = v121;
    v122 = sub_10008DE6C();
    v123 = v147;
    (*(*(v122 - 8) + 56))(v147, 1, 1, v122);
    sub_100009C08(&qword_1000CCC78, &qword_100094788);
    sub_10001121C(&unk_1000CCC80, &qword_1000CCC78, &qword_100094788);
    sub_100052CD4(&qword_1000C9E40, sub_1000167AC);
    sub_10008CE0C();
    sub_100016840(v123);

    v124 = v158;
    v125 = v144;
    sub_100052990(v158, v114, v144);
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v126 = *(v146 + 80);
    v127 = (v126 + 16) & ~v126;
    v128 = (v148 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v129 = swift_allocObject();
    sub_100052B74(v114, v129 + v127, v125);
    *(v129 + v128) = v97;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    sub_100052990(v124, v114, v125);
    v130 = swift_allocObject();
    *(v130 + 16) = v97;
    sub_100052B74(v114, v130 + ((v126 + 24) & ~v126), v125);
    sub_10001121C(&qword_1000CCC90, &qword_1000CCC60, &qword_100094778);
    v131 = v150;
    v132 = v156;
    v133 = sub_10008CDFC();

    (*(v149 + 8))(v132, v131);
    v134 = *(v119 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription);
    *(v119 + OBJC_IVAR____TtC46AddDevicesToAutomatedDeviceEnrollmentExtensionP33_E97D702A2F457666140BF89B599D5DED18DeviceTrackingInfo_enrollmentStatusSubscription) = v133;

    v135 = v142;
    swift_beginAccess();

    v136 = *&v135[v97];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v167 = *&v135[v97];
    *&v135[v97] = 0x8000000000000000;
    v138 = v155;
    sub_10006F734(v119, v155, isUniquelyReferenced_nonNull_native);
    *&v135[v97] = v167;
    swift_endAccess();
    sub_10004F160();
    v139 = v154;
    sub_10003D01C();

    sub_1000207B4(v124, v125);
    return (v160)(v138, v143);
  }
}