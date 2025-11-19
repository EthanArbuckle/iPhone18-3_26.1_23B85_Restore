id sub_100001498()
{
  v1 = *v0;
  sub_100003EE0();
  sub_100003ED0();
  v2 = objc_allocWithZone(BCSRootViewController);

  return [v2 init];
}

uint64_t sub_10000153C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001AE0();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1000015A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100001AE0();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100001620()
{
  sub_100001AE0();
  sub_100003FC0();
  __break(1u);
}

uint64_t sub_100001648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100003F50();
  v5 = sub_100003FF0();
  *a2 = a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
}

uint64_t sub_10000169C()
{
  v0 = sub_1000018E8(&qword_10000C048, &qword_100004390);
  v1 = sub_100001930();

  return LockedCameraCaptureUIScene.init(content:)(sub_100001648, 0, v0, v1);
}

uint64_t sub_10000170C(uint64_t a1)
{
  v2 = sub_100001894();

  return LockedCameraCaptureExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_1000017B4();
  sub_100003EF0();
  return 0;
}

unint64_t sub_1000017B4()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_10000183C()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    sub_100003EC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_100001894()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

uint64_t sub_1000018E8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001930()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    sub_1000019BC(&qword_10000C048, &qword_100004390);
    sub_100001A04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_1000019BC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100001A04()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001A6C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    sub_1000019BC(&qword_10000C068, &qword_1000043C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001AE0()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001B38()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001B8C()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100001BE0()
{
  v0 = sub_100003E70();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100003EB0() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100004020() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100003E80();
  sub_100003CBC(v7, qword_10000CC50);
  sub_100003C84(v7, qword_10000CC50);
  sub_100004010();
  sub_100003EA0();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100003E90();
}

uint64_t sub_100001DD0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_100003F40();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_100004060();
  v1[6] = sub_100004050();
  v6 = sub_100004040();

  return _swift_task_switch(sub_100001EC4, v6, v5);
}

uint64_t sub_100001EC4()
{
  v2 = v0[5];
  v1 = v0[6];

  sub_100003F20();
  v3 = sub_100003F30();
  v4 = sub_100004070();
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

  sub_100003DA0();

  v11 = v0[1];

  return v11();
}

void (*sub_100002068(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100003DB0();
  return sub_1000020DC;
}

void sub_1000020DC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_10000212C()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100002184()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002220()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_1000022CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002364;

  return sub_100001DD0(a1);
}

uint64_t sub_100002364()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000034F0();
  *a1 = result;
  return result;
}

uint64_t sub_10000249C(uint64_t a1)
{
  v2 = sub_100002220();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000024D8()
{
  v0 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_100003E70();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003EB0();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_100004020();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v12 = sub_100003E80();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = sub_100003E60();
  sub_100003CBC(v15, qword_10000CC68);
  sub_100003C84(v15, qword_10000CC68);
  sub_100004010();
  sub_100003EA0();
  (*(v4 + 104))(v7, enum case for LocalizedStringResource.BundleDescription.main(_:), v17[0]);
  sub_100003E90();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_100003E50();
}

uint64_t sub_1000027C0()
{
  v0 = sub_1000018E8(&qword_10000C118, &qword_100004950);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v27 = &v25 - v2;
  v3 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v25 - v5;
  v26 = sub_100003E70();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v26);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100003EB0();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100004020();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100003E80();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_1000018E8(&qword_10000C128, &qword_100004960);
  v18 = *(sub_1000018E8(&qword_10000C130, &qword_100004968) - 8);
  v19 = *(v18 + 72);
  v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1000044A0;
  sub_100004010();
  sub_100003EA0();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v26);
  sub_100003E90();
  (*(v16 + 56))(v6, 1, 1, v15);
  v22 = sub_100003DF0();
  (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  sub_100003E00();
  v23 = sub_1000039F4(v21);
  swift_setDeallocating();
  sub_100003BAC(v21 + v20);
  result = swift_deallocClassInstance();
  qword_10000CC80 = v23;
  return result;
}

unint64_t sub_100002BE4()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

Swift::Int sub_100002C38()
{
  sub_1000040A0();
  sub_100004030();
  return sub_1000040B0();
}

Swift::Int sub_100002C9C()
{
  sub_1000040A0();
  sub_100004030();
  return sub_1000040B0();
}

uint64_t sub_100002CE8@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008810;
  v7._object = v3;
  v5 = sub_100004090(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002D5C()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_100002DB4()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

unint64_t sub_100002E18()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002E70()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002EC8()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_100002F20()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_100002FB0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003C84(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_1000030CC()
{
  result = qword_10000C0D8;
  if (!qword_10000C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D8);
  }

  return result;
}

uint64_t sub_100003120(uint64_t a1)
{
  v2 = sub_1000030CC();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100003170()
{
  result = qword_10000C0E0;
  if (!qword_10000C0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E0);
  }

  return result;
}

unint64_t sub_1000031C8()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

unint64_t sub_100003220()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

uint64_t sub_100003274()
{
  if (qword_10000C028 != -1)
  {
    swift_once();
  }

  v1 = qword_10000CC80;

  return _swift_bridgeObjectRetain(v1);
}

uint64_t sub_1000032D0(uint64_t a1)
{
  v2 = sub_100002F20();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
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

uint64_t sub_1000034A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000019BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000034F0()
{
  v0 = sub_100003E20();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  (__chkstk_darwin)();
  v29 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_1000018E8(&qword_10000C140, &qword_100004978) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v27 - v6;
  v8 = sub_1000018E8(&qword_10000C120, &qword_100004958);
  v9 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v8 - 8);
  v11 = &v27 - v10;
  v12 = sub_100003E70();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003EB0();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v19 = sub_100004020();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v21 = sub_100003E80();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v27 = sub_1000018E8(&qword_10000C148, &qword_100004980);
  sub_100004010();
  sub_100003EA0();
  (*(v13 + 104))(v16, enum case for LocalizedStringResource.BundleDescription.main(_:), v12);
  sub_100003E90();
  (*(v22 + 56))(v11, 1, 1, v21);
  v32 = 1;
  v24 = sub_100003D90();
  v25 = *(*(v24 - 8) + 56);
  v25(v7, 1, 1, v24);
  v25(v28, 1, 1, v24);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_1000030CC();
  return sub_100003DE0();
}

unint64_t sub_100003964(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100003990()
{
  v1 = *(v0 + 40);
  sub_1000040A0();
  sub_100004030();
  v2 = sub_1000040B0();

  return sub_100003964(v2);
}

unint64_t sub_1000039F4(uint64_t a1)
{
  v2 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000018E8(&qword_10000C138, &qword_100004970);
    v8 = sub_100004080();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003C14(v9, v6);
      result = sub_100003990();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_100003E10();
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

uint64_t sub_100003BAC(uint64_t a1)
{
  v2 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100003C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000018E8(&qword_10000C130, &qword_100004968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100003C84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003CBC(uint64_t a1, uint64_t *a2)
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