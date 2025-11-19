uint64_t sub_1000010D8(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_1000035E8();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C028;
  if (!qword_10000C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C028);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100001294()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_1000012EC()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001340()
{
  v0 = sub_1000035D8();
  sub_100003014(v0, qword_10000CC60);
  sub_100002FDC(v0, qword_10000CC60);
  return sub_1000035C8();
}

void (*sub_1000013EC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000034A8();
  return sub_100001460;
}

void sub_100001460(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1000014AC()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

uint64_t sub_100001500(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003370();
  v5 = sub_100003078();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_100001570()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_1000015C8()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_100001620()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

uint64_t sub_1000016F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100003370();
  v7 = sub_1000033C4();
  v8 = sub_100003078();
  *v5 = v2;
  v5[1] = sub_1000017BC;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000017BC()
{
  v2 = *(*v1 + 16);
  v3 = *v1;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  return result;
}

uint64_t sub_1000018C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002A80();
  *a1 = result;
  return result;
}

uint64_t sub_1000018EC(uint64_t a1)
{
  v2 = sub_1000014AC();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100001928()
{
  v0 = sub_1000035B8();
  sub_100003014(v0, qword_10000CC78);
  sub_100002FDC(v0, qword_10000CC78);
  return sub_1000035A8();
}

uint64_t sub_10000198C()
{
  sub_100002A38(&qword_10000C108, &qword_100004140);
  v0 = *(sub_1000035D8() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100003BD0;
  sub_1000035C8();
  sub_1000035C8();
  sub_1000035C8();
  sub_1000035C8();
  sub_1000035C8();
  result = sub_1000035C8();
  qword_10000C038 = v3;
  return result;
}

uint64_t sub_100001B10()
{
  v0 = sub_100002A38(&qword_10000C0E0, &qword_100004118);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_100002A38(&qword_10000C0E8, &qword_100004120);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - v6;
  v8 = sub_1000035D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100002A38(&qword_10000C0F0, &qword_100004128);
  v11 = *(sub_100002A38(&qword_10000C0F8, &qword_100004130) - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100003BE0;
  sub_1000035C8();
  sub_1000035C8();
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_1000034F8();
  v15 = sub_100003508();
  (*(*(v15 - 8) + 56))(v3, 0, 1, v15);
  if (qword_10000C010 != -1)
  {
    swift_once();
  }

  sub_100003518();
  v16 = sub_100002E10(v14);
  swift_setDeallocating();
  sub_1000032A8(v14 + v13, &qword_10000C0F8, &qword_100004130);
  result = swift_deallocClassInstance();
  qword_10000CC90 = v16;
  return result;
}

uint64_t sub_100001E4C()
{
  v0 = sub_100002A38(&qword_10000C118, &qword_100004148);
  sub_100003014(v0, qword_10000CC98);
  sub_100002FDC(v0, qword_10000CC98);
  sub_100002A38(&qword_10000C120, &qword_100004150);
  v1 = *(sub_100002A38(&qword_10000C128, &qword_100004158) - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100003BE0;
  sub_100002140();
  sub_100003538();
  sub_1000030CC(v4);
  swift_setDeallocating();
  sub_1000032A8(v4 + v3, &qword_10000C128, &qword_100004158);
  swift_deallocClassInstance();
  return sub_100003548();
}

unint64_t sub_100001FDC()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

Swift::Int sub_100002030()
{
  sub_100003628();
  sub_1000035F8();
  return sub_100003638();
}

Swift::Int sub_10000208C()
{
  sub_100003628();
  sub_1000035F8();
  return sub_100003638();
}

uint64_t sub_1000020D4@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000085F0;
  v7._object = v3;
  v5 = sub_100003618(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002140()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100002198()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_1000021EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C020 != -1)
  {
    swift_once();
  }

  v2 = sub_100002A38(&qword_10000C118, &qword_100004148);
  v3 = sub_100002FDC(v2, qword_10000CC98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1000022A4()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_1000022FC()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

uint64_t sub_10000235C()
{
  sub_100003078();
  v1 = sub_1000034E8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000023CC()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

unint64_t sub_100002420()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

unint64_t sub_100002478()
{
  result = qword_10000C0A8;
  if (!qword_10000C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A8);
  }

  return result;
}

unint64_t sub_1000024D0()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_100002564@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100002FDC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100002680(uint64_t a1)
{
  v2 = sub_100002140();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000026D0()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_100002728()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

unint64_t sub_100002780()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

uint64_t sub_1000027D4()
{
  if (qword_10000C018 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100002830(uint64_t a1)
{
  v2 = sub_1000024D0();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_100002880()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    sub_1000028E4(&qword_10000C0D8, &qword_100004040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_1000028E4(uint64_t *a1, uint64_t *a2)
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

uint64_t getEnumTagSinglePayload for NewDeviceOutreachStaticDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for NewDeviceOutreachStaticDeepLinks(_WORD *result, int a2, int a3)
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

uint64_t sub_100002A38(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100002A80()
{
  v20 = sub_100003578();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  (__chkstk_darwin)();
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(sub_100002A38(&qword_10000C140, &qword_100004170) - 8) + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = sub_100002A38(&qword_10000C0E8, &qword_100004120);
  v11 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v10 - 8);
  v13 = &v20 - v12;
  v14 = sub_1000035D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_100002A38(&qword_10000C148, &qword_100004178);
  sub_1000035C8();
  (*(v15 + 56))(v13, 1, 1, v14);
  v21 = 1;
  v17 = sub_100003498();
  v18 = *(*(v17 - 8) + 56);
  v18(v9, 1, 1, v17);
  v18(v7, 1, 1, v17);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v20);
  sub_100002140();
  return sub_1000034D8();
}

unint64_t sub_100002D84(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_100002DB0()
{
  v1 = *(v0 + 40);
  sub_100003628();
  sub_1000035F8();
  v2 = sub_100003638();

  return sub_100002D84(v2);
}

unint64_t sub_100002E10(uint64_t a1)
{
  v2 = sub_100002A38(&qword_10000C0F8, &qword_100004130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002A38(&qword_10000C100, &qword_100004138);
    v8 = sub_100003608();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003308(v9, v6, &qword_10000C0F8, &qword_100004130);
      result = sub_100002DB0();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_100003528();
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

uint64_t sub_100002FDC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003014(uint64_t a1, uint64_t *a2)
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

unint64_t sub_100003078()
{
  result = qword_10000C110;
  if (!qword_10000C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C110);
  }

  return result;
}

unint64_t sub_1000030CC(uint64_t a1)
{
  v2 = sub_100002A38(&qword_10000C128, &qword_100004158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002A38(&qword_10000C130, &qword_100004160);
    v8 = sub_100003608();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100003308(v9, v6, &qword_10000C128, &qword_100004158);
      result = sub_100002DB0();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_100002A38(&qword_10000C138, &qword_100004168);
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

uint64_t sub_1000032A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002A38(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100003308(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002A38(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100003370()
{
  result = qword_10000C150;
  if (!qword_10000C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C150);
  }

  return result;
}

unint64_t sub_1000033C4()
{
  result = qword_10000C158;
  if (!qword_10000C158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C158);
  }

  return result;
}