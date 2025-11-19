unint64_t sub_100001448()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_10000149C()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

uint64_t sub_1000014F0()
{
  v0 = sub_1000047C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100004804() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_1000048E4() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_1000047D4();
  sub_100003664(v7, qword_10000C170);
  sub_10000362C(v7, qword_10000C170);
  sub_1000048D4();
  sub_1000047F4();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_1000047E4();
}

uint64_t sub_1000016E0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100004834();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_100004934();
  v1[6] = sub_100004924();
  v6 = sub_100004914();

  return _swift_task_switch(sub_1000017D4, v6, v5);
}

uint64_t sub_1000017D4()
{
  v2 = v0[5];
  v1 = v0[6];

  sub_100004814();
  v3 = sub_100004824();
  v4 = sub_100004944();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "BarcodeScannerIntent performed successfully", v5, 2u);
  }

  v7 = v0[4];
  v6 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  (*(v7 + 8))(v6, v8);
  v10 = [objc_opt_self() defaultCenter];
  [v10 postNotificationName:BCSDidLaunchFromControlNotification object:0];

  sub_1000046F4();

  v11 = v0[1];

  return v11();
}

void (*sub_100001978(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_100004704();
  return sub_1000019EC;
}

void sub_1000019EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100001A3C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001A94()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100001B30()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001BDC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100001C74;

  return sub_1000016E0(a1);
}

uint64_t sub_100001C74()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100001D68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002E98();
  *a1 = result;
  return result;
}

uint64_t sub_100001DB0(uint64_t a1)
{
  v2 = sub_100001B30();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001DEC()
{
  v0 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1000047C4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004804();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_1000048E4();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_1000047D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_1000047B4();
  sub_100003664(v15, qword_10000C188);
  sub_10000362C(v15, qword_10000C188);
  sub_1000048D4();
  sub_1000047F4();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_1000047E4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1000047A4();
}

uint64_t sub_1000020D4()
{
  v0 = sub_100002E50(&qword_10000C0C8, &qword_100005030);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = &v25 - v2;
  v3 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v26 = sub_1000047C4();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004804();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_1000048E4();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_1000047D4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100002E50(&qword_10000C0D8, &qword_100005040);
  v18 = *(sub_100002E50(&qword_10000C0E0, &qword_100005048) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_100004B60;
  sub_1000048D4();
  sub_1000047F4();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v26);
  sub_1000047E4();
  (*(v16 + 56))(v6, 1, 1, v15);
  v22 = sub_100004744();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_100004754();
  v23 = sub_10000339C(v21);
  swift_setDeallocating();
  sub_100003554(v21 + v20);
  result = swift_deallocClassInstance();
  qword_10000C1A0 = v23;
  return result;
}

unint64_t sub_1000024F8()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

Swift::Int sub_10000254C()
{
  sub_100004974();
  sub_100004904();
  return sub_100004984();
}

Swift::Int sub_1000025B0()
{
  sub_100004974();
  sub_100004904();
  return sub_100004984();
}

uint64_t sub_1000025FC@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000087B0;
  v7._object = v3;
  v5 = sub_100004964(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002670()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000026C8()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_10000272C()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100002784()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_1000027DC()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002834()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000028C4@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_10000362C(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_1000029E0()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100002A34(uint64_t a1)
{
  v2 = sub_1000029E0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100002A84()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002ADC()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002B34()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_100002B88()
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002BE4(uint64_t a1)
{
  v2 = sub_100002834();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100002C74(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for LaunchCodeScannerAppEnum(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LaunchCodeScannerAppEnum(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_100002E08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002C74(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002E50(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002E98()
{
  v0 = sub_100004774();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  (__chkstk_darwin)();
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_100002E50(&qword_10000C0F0, &qword_100005058) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_100002E50(&qword_10000C0D0, &qword_100005038);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_1000047C4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100004804();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_1000048E4();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_1000047D4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27 = sub_100002E50(&qword_10000C0F8, &qword_100005060);
  sub_1000048D4();
  sub_1000047F4();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_1000047E4();
  (*(v22 + 56))(v11, 1, 1, v21);
  v32 = 1;
  v24 = sub_1000046E4();
  v25 = *(*(v24 - 8) + 56);
  v25(v7, 1, 1, v24);
  v25(v28, 1, 1, v24);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_1000029E0();
  return sub_100004734();
}

unint64_t sub_10000330C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100003338()
{
  v1 = *(v0 + 40);
  sub_100004974();
  sub_100004904();
  v2 = sub_100004984();

  return sub_10000330C(v2);
}

unint64_t sub_10000339C(uint64_t a1)
{
  v2 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002E50(&qword_10000C0E8, &qword_100005050);
    v8 = sub_100004954();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000035BC(v9, v6);
      result = sub_100003338();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_100004764();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100003554(uint64_t a1)
{
  v2 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000035BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002E50(&qword_10000C0E0, &qword_100005048);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000362C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003664(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000036D8()
{
  v0 = sub_100004804();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = sub_1000048E4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100002E50(&qword_10000C108, &unk_1000050E0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  sub_1000048D4();
  sub_1000047F4();
  v11[1] = sub_1000048F4();
  v11[2] = v9;
  sub_100003988();
  sub_100004864();
  sub_1000039DC();
  sub_100004854();
  return (*(v5 + 8))(v8, v4);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003908();
  sub_100004844();
  return 0;
}

unint64_t sub_100003908()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

unint64_t sub_100003988()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000039DC()
{
  result = qword_10000C118;
  if (!qword_10000C118)
  {
    sub_100002C74(&qword_10000C108, &unk_1000050E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C118);
  }

  return result;
}

uint64_t sub_100003A40()
{
  sub_100002C74(&qword_10000C108, &unk_1000050E0);
  sub_1000039DC();
  return swift_getOpaqueTypeConformance2();
}

__n128 sub_100003AA4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100003AB0(uint64_t a1, int a2)
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

uint64_t sub_100003AF8(uint64_t result, int a2, int a3)
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

uint64_t sub_100003B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a3;
  v5 = sub_1000047C4();
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v48 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004804();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_1000048E4();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v49 = sub_1000047D4();
  v47 = *(v49 - 8);
  v13 = *(v47 + 64);
  __chkstk_darwin(v49);
  v43 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_100002E50(&qword_10000C120, &qword_100005168);
  v46 = *(v44 - 8);
  v15 = *(v46 + 64);
  __chkstk_darwin(v44);
  v17 = &v39 - v16;
  v18 = sub_100002E50(&qword_10000C128, &qword_100005170);
  v19 = *(v18 - 8);
  v50 = v18;
  v51 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v42 = &v39 - v21;
  v22 = sub_100002E50(&qword_10000C130, &qword_100005178);
  v23 = *(v22 - 8);
  v52 = v22;
  v53 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v45 = &v39 - v25;
  v26 = swift_allocObject();
  *(v26 + 16) = a1;
  *(v26 + 24) = a2;

  sub_100002E50(&qword_10000C138, &qword_100005180);
  sub_100002E08(&qword_10000C140, &qword_10000C138, &qword_100005180);
  sub_1000048C4();
  sub_1000048D4();
  sub_1000047F4();
  v41 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v27 = *(v56 + 104);
  v56 += 104;
  v40 = v27;
  v28 = v48;
  v27(v48);
  v29 = v43;
  sub_1000047E4();
  v30 = sub_100002E08(&qword_10000C148, &qword_10000C120, &qword_100005168);
  v31 = v44;
  sub_100004884();
  v47 = *(v47 + 8);
  v32 = v49;
  (v47)(v29, v49);
  (*(v46 + 8))(v17, v31);
  sub_1000048D4();
  sub_1000047F4();
  v40(v28, v41, v55);
  sub_1000047E4();
  v57 = v31;
  v58 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v45;
  v35 = v50;
  v36 = v42;
  sub_100004874();
  (v47)(v29, v32);
  (*(v51 + 8))(v36, v35);
  v57 = v35;
  v58 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v52;
  sub_100004894();
  return (*(v53 + 8))(v34, v37);
}

uint64_t sub_1000041E4(uint64_t a1, uint64_t a2)
{
  sub_100002E98();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_100002E50(&qword_10000C150, &qword_100005188);
  sub_100002E08(&qword_10000C158, &qword_10000C150, &qword_100005188);
  sub_1000044C0();
  return sub_1000048B4();
}

uint64_t sub_1000042D8()
{
  sub_100004514();

  return sub_1000048A4();
}

uint64_t sub_100004350@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100004804();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_1000048E4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  sub_1000048D4();
  sub_1000047F4();
  result = sub_1000048F4();
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_100004478()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000044B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000042D8();
}

unint64_t sub_1000044C0()
{
  result = qword_10000C160;
  if (!qword_10000C160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C160);
  }

  return result;
}

unint64_t sub_100004514()
{
  result = qword_10000C168;
  if (!qword_10000C168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C168);
  }

  return result;
}

uint64_t sub_100004568()
{
  sub_100002C74(&qword_10000C130, &qword_100005178);
  sub_100002C74(&qword_10000C128, &qword_100005170);
  sub_100002C74(&qword_10000C120, &qword_100005168);
  sub_100002E08(&qword_10000C148, &qword_10000C120, &qword_100005168);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}