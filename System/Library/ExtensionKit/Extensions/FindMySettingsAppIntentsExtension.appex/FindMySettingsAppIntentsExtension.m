uint64_t sub_1000010D8(uint64_t a1)
{
  v2 = sub_10000122C();

  return AppIntentsExtension.configuration.getter(a1, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100001184();
  sub_100005034();
  return 0;
}

unint64_t sub_100001184()
{
  result = qword_10000C018;
  if (!qword_10000C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C018);
  }

  return result;
}

unint64_t sub_10000122C()
{
  result = qword_10000C020;
  if (!qword_10000C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C020);
  }

  return result;
}

uint64_t sub_100001290()
{
  v0 = sub_100003ECC(&qword_10000C130, &qword_100005F90);
  sub_100004048(v0, qword_10000CD98);
  sub_100004010(v0, qword_10000CD98);
  sub_100003ECC(&qword_10000C138, &qword_100005F98);
  v1 = sub_100003ECC(&qword_10000C140, &qword_100005FA0);
  v2 = *(*(v1 - 8) + 72);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000059B0;
  v5 = (v4 + v3);
  v6 = *(v1 + 48);
  *v5 = 0;
  sub_100001A7C();
  sub_100004F44();
  v7 = *(v1 + 48);
  v5[v2] = 1;
  sub_100004F44();
  sub_100002E74(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return sub_100004F54();
}

uint64_t sub_10000146C()
{
  v0 = (*(*(sub_100003ECC(&qword_10000C0E0, &qword_100005F58) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_100004FE4();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_100005024() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_100005054() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_100004FF4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_100004FC4();
  sub_100004048(v12, qword_10000CDB0);
  sub_100004010(v12, qword_10000CDB0);
  sub_100005044();
  sub_100005014();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_100005004();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_100004FB4();
}

uint64_t sub_100001750(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x4C794D6572616873;
  }

  else
  {
    v4 = 1953460082;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEF6E6F697461636FLL;
  }

  if (*a2)
  {
    v6 = 0x4C794D6572616873;
  }

  else
  {
    v6 = 1953460082;
  }

  if (*a2)
  {
    v7 = 0xEF6E6F697461636FLL;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100005094();
  }

  return v9 & 1;
}

unint64_t sub_100001800()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

Swift::Int sub_100001854()
{
  v1 = *v0;
  sub_1000050A4();
  sub_100005064();

  return sub_1000050B4();
}

uint64_t sub_1000018DC()
{
  *v0;
  sub_100005064();
}

Swift::Int sub_100001950()
{
  v1 = *v0;
  sub_1000050A4();
  sub_100005064();

  return sub_1000050B4();
}

uint64_t sub_1000019D4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100008788;
  v8._object = v3;
  v5 = sub_100005084(v4, v8);

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

void sub_100001A34(uint64_t *a1@<X8>)
{
  v2 = 1953460082;
  if (*v1)
  {
    v2 = 0x4C794D6572616873;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEF6E6F697461636FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_100001A7C()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100001AD4()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

uint64_t sub_100001B28@<X0>(uint64_t a1@<X8>)
{
  if (qword_10000C000 != -1)
  {
    swift_once();
  }

  v2 = sub_100003ECC(&qword_10000C130, &qword_100005F90);
  v3 = sub_100004010(v2, qword_10000CD98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_100001BDC()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_100001C34()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100001C8C()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

uint64_t sub_100001CEC()
{
  sub_100003FBC();
  v1 = sub_100004F34();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100001D5C()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100001DB4()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_100001E0C()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100001E64()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

uint64_t sub_100001F20(uint64_t a1)
{
  v2 = sub_100001A7C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_100001F70()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

unint64_t sub_100001FC8()
{
  result = qword_10000C090;
  if (!qword_10000C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C090);
  }

  return result;
}

unint64_t sub_100002020()
{
  result = qword_10000C098;
  if (!qword_10000C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C098);
  }

  return result;
}

uint64_t sub_100002078(uint64_t a1)
{
  v2 = sub_100001E64();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000020C8()
{
  result = qword_10000C0A0;
  if (!qword_10000C0A0)
  {
    sub_10000212C(&qword_10000C0A8, &qword_100005C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0A0);
  }

  return result;
}

uint64_t sub_10000212C(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002188()
{
  result = qword_10000C0B0;
  if (!qword_10000C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B0);
  }

  return result;
}

uint64_t sub_1000021E0()
{
  v0 = sub_100004FE4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(sub_100005024() - 8) + 64);
  __chkstk_darwin();
  v6 = *(*(sub_100005054() - 8) + 64);
  __chkstk_darwin();
  v7 = sub_100004FF4();
  sub_100004048(v7, qword_10000CDC8);
  sub_100004010(v7, qword_10000CDC8);
  sub_100005044();
  sub_100005014();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100005004();
}

uint64_t sub_100002404@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  result = sub_100004D64();
  *a1 = v5;
  return result;
}

uint64_t sub_100002440(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_100004D74();
}

void (*sub_100002478(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100004D54();
  return sub_1000024EC;
}

void sub_1000024EC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002538()
{
  result = qword_10000C0B8;
  if (!qword_10000C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0B8);
  }

  return result;
}

unint64_t sub_10000258C()
{
  result = qword_10000C0C0;
  if (!qword_10000C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C0);
  }

  return result;
}

uint64_t sub_1000025E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003F14();
  v5 = sub_100003FBC();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100002650()
{
  v0 = qword_10000C028;

  return v0;
}

unint64_t sub_100002690()
{
  result = qword_10000C0C8;
  if (!qword_10000C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0C8);
  }

  return result;
}

unint64_t sub_1000026E8()
{
  result = qword_10000C0D0;
  if (!qword_10000C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0D0);
  }

  return result;
}

uint64_t sub_1000027EC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100004010(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1000028B4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003F14();
  v8 = sub_100003F68();
  v9 = sub_100003FBC();
  *v6 = v2;
  v6[1] = sub_100002988;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100002988()
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

uint64_t sub_100002A90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003A48();
  *a1 = result;
  return result;
}

uint64_t sub_100002AB8(uint64_t a1)
{
  v2 = sub_100002538();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for FindMySettingsAppIntentsExtensionDeepLinks(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FindMySettingsAppIntentsExtensionDeepLinks(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100002C78(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1000050A4();
  sub_100005064();

  v5 = sub_1000050B4();

  return sub_100002D24(a1 & 1, v5);
}

unint64_t sub_100002D24(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4C794D6572616873;
    }

    else
    {
      v6 = 1953460082;
    }

    if (a1)
    {
      v7 = 0xEF6E6F697461636FLL;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4C794D6572616873 : 1953460082;
      v9 = *(*(v2 + 48) + v4) ? 0xEF6E6F697461636FLL : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_100005094();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_100002E74(uint64_t a1)
{
  v2 = sub_100003ECC(&qword_10000C140, &qword_100005FA0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003ECC(&qword_10000C148, &qword_100005FA8);
    v8 = sub_100005074();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000040AC(v10, v6, &qword_10000C140, &qword_100005FA0);
      v12 = *v6;
      result = sub_100002C78(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100003ECC(&qword_10000C150, &unk_100005FB0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
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

unint64_t sub_100003068(uint64_t a1)
{
  v2 = sub_100003ECC(&qword_10000C118, &qword_100005F78);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100003ECC(&qword_10000C128, &qword_100005F88);
    v8 = sub_100005074();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000040AC(v10, v6, &qword_10000C118, &qword_100005F78);
      v12 = *v6;
      result = sub_100002C78(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_100004F24();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
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

unint64_t sub_100003250()
{
  v0 = sub_100003ECC(&qword_10000C108, &qword_100005F68);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v67 = v45 - v2;
  v3 = sub_100003ECC(&qword_10000C0E0, &qword_100005F58);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v66 = v45 - v5;
  v6 = sub_100004FE4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100005024();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100005054();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100004FF4();
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v62 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v48 = v45 - v20;
  sub_100003ECC(&qword_10000C110, &qword_100005F70);
  v21 = sub_100003ECC(&qword_10000C118, &qword_100005F78);
  v63 = v21;
  v22 = *(v21 - 8);
  v58 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v59 = v24;
  *(v24 + 16) = xmmword_1000059B0;
  v61 = v24 + v23;
  v57 = *(v21 + 48);
  *(v24 + v23) = 0;
  v52 = 0xD000000000000010;
  sub_100005044();
  sub_100005014();
  v25 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v26 = *(v7 + 104);
  v46 = v6;
  v26(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  v47 = v26;
  v60 = v7 + 104;
  sub_100005004();
  v55 = "OPEN_FIND_MY_SETTINGS";
  v56 = 0xD000000000000015;
  sub_100005044();
  sub_100005014();
  v26(v10, v25, v6);
  v45[1] = "FIND_MY_SETTINGS";
  v27 = v66;
  sub_100005004();
  v28 = v65 + 56;
  v54 = *(v65 + 56);
  v54(v27, 0, 1, v64);
  v53 = "FIND_MY_SETTINGS_PATH";
  v29 = v67;
  sub_100004EF4();
  v50 = sub_100004F04();
  v30 = *(v50 - 8);
  v49 = *(v30 + 56);
  v51 = v30 + 56;
  v49(v29, 0, 1, v50);
  sub_100003ECC(&qword_10000C120, &qword_100005F80);
  v65 = v28;
  v31 = *(v28 + 16);
  v32 = (*(v28 + 24) + 32) & ~*(v28 + 24);
  *(swift_allocObject() + 16) = xmmword_1000059C0;
  sub_100005044();
  sub_100005014();
  v33 = v10;
  v34 = v10;
  v35 = v25;
  v36 = v25;
  v37 = v46;
  v38 = v47;
  v47(v34, v35, v46);
  sub_100005004();
  sub_100004FD4();
  v39 = v61;
  sub_100004F14();
  v40 = *(v63 + 48);
  v57 = (v39 + v58);
  v58 = v40;
  *v57 = 1;
  sub_100005044();
  sub_100005014();
  v38(v33, v36, v37);
  sub_100005004();
  sub_100005044();
  sub_100005014();
  v38(v33, v36, v37);
  v41 = v66;
  sub_100005004();
  v54(v41, 0, 1, v64);
  v42 = v67;
  sub_100004EF4();
  v49(v42, 0, 1, v50);
  sub_100004FD4();
  sub_100004F14();
  v43 = sub_100003068(v59);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v43;
}

uint64_t sub_100003A48()
{
  v0 = sub_100004F64();
  v30 = *(v0 - 8);
  v31 = v0;
  v1 = *(v30 + 64);
  (__chkstk_darwin)();
  v29 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *(*(sub_100003ECC(&qword_10000C0D8, &qword_100005F50) - 8) + 64);
  v4 = (__chkstk_darwin)();
  v28 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v27 = v26 - v6;
  v7 = sub_100003ECC(&qword_10000C0E0, &qword_100005F58);
  v8 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v7 - 8);
  v10 = v26 - v9;
  v11 = sub_100004FE4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100005024();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_100005054();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100004FF4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v26[1] = sub_100003ECC(&qword_10000C0E8, &qword_100005F60);
  sub_100005044();
  sub_100005014();
  (*(v12 + 104))(v15, enum case for LocalizedStringResource.BundleDescription.main(_:), v11);
  sub_100005004();
  (*(v21 + 56))(v10, 1, 1, v20);
  v32 = 2;
  v23 = sub_100004D44();
  v24 = *(*(v23 - 8) + 56);
  v24(v27, 1, 1, v23);
  v24(v28, 1, 1, v23);
  (*(v30 + 104))(v29, enum case for InputConnectionBehavior.default(_:), v31);
  sub_100001A7C();
  return sub_100004D84();
}

uint64_t sub_100003ECC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003F14()
{
  result = qword_10000C0F0;
  if (!qword_10000C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F0);
  }

  return result;
}

unint64_t sub_100003F68()
{
  result = qword_10000C0F8;
  if (!qword_10000C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0F8);
  }

  return result;
}

unint64_t sub_100003FBC()
{
  result = qword_10000C100;
  if (!qword_10000C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C100);
  }

  return result;
}

uint64_t sub_100004010(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100004048(uint64_t a1, uint64_t *a2)
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

uint64_t sub_1000040AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003ECC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100004128()
{
  v0 = sub_100003ECC(&qword_10000C178, &qword_1000060A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - v3;
  sub_100002538();
  sub_100004E64();
  v5 = sub_100004DF4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  sub_100004E64();
  v7 = sub_100004DF4();
  v6(v4, v0);
  sub_100004E64();
  v8 = sub_100004DF4();
  v6(v4, v0);
  sub_100004E64();
  v9 = sub_100004DF4();
  v6(v4, v0);
  sub_100003ECC(&qword_10000C188, &qword_1000060B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100005FC0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v10 + 48) = v8;
  *(v10 + 56) = v9;
  v11 = sub_100004DE4();

  return v11;
}

uint64_t sub_1000043A8()
{
  v0 = sub_100004E14();
  sub_100003ECC(&qword_10000C160, &qword_100006060);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000059C0;
  *(v1 + 32) = v0;
  v2 = sub_100004E04();

  return v2;
}

uint64_t sub_100004428()
{
  v0 = sub_100003ECC(&qword_10000C178, &qword_1000060A0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = sub_100003ECC(&qword_10000C180, &qword_1000060A8);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100002538();
  sub_100004E94();
  v12._countAndFlagsBits = 0x206E65704FLL;
  v12._object = 0xE500000000000000;
  sub_100004E84(v12);
  swift_getKeyPath();
  sub_100001E0C();
  sub_100004DD4();

  sub_100004E74();

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100004E84(v13);
  sub_100004EA4();
  v7 = sub_100004DF4();
  (*(v1 + 8))(v4, v0);
  sub_100003ECC(&qword_10000C188, &qword_1000060B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000059C0;
  *(v8 + 32) = v7;
  v9 = sub_100004DE4();

  return v9;
}

uint64_t sub_100004684()
{
  v0 = sub_100004E54();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100001E0C();
  sub_100004DD4();

  sub_100002538();
  sub_100004E44();
  v5 = sub_100004E34();
  (*(v1 + 8))(v4, v0);
  sub_100003ECC(&qword_10000C170, &qword_100006098);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000059C0;
  *(v6 + 32) = v5;
  v7 = sub_100004E24();

  return v7;
}

uint64_t sub_1000047E8()
{
  v0 = sub_100004E14();
  sub_100003ECC(&qword_10000C160, &qword_100006060);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000059C0;
  *(v1 + 32) = v0;
  v2 = sub_100004E04();

  return v2;
}

uint64_t sub_10000486C()
{
  v0 = sub_100004E14();
  sub_100003ECC(&qword_10000C160, &qword_100006060);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1000059C0;
  *(v1 + 32) = v0;
  v2 = sub_100004E04();

  return v2;
}

uint64_t sub_1000048F8()
{
  v0 = sub_100004DC4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002538();
  sub_100004DB4();
  v5 = sub_100004DA4();
  (*(v1 + 8))(v4, v0);
  sub_100003ECC(&qword_10000C158, &qword_100006058);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000059C0;
  *(v6 + 32) = v5;
  v7 = sub_100004D94();

  return v7;
}

uint64_t sub_100004A48()
{
  v0 = sub_100004ED4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003A48();
  sub_100002538();
  sub_100004EE4();
  v5 = sub_100004EC4();
  v6 = *(v1 + 8);
  v6(v4, v0);
  v12 = sub_100003A48();
  sub_100004EE4();
  v7 = sub_100004EC4();
  v6(v4, v0);
  sub_100003ECC(&qword_10000C168, &qword_100006068);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1000059B0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v7;
  v9 = sub_100004EB4();

  return v9;
}

uint64_t sub_100004C30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_100004D64();
  *a2 = v5;
  return result;
}

uint64_t sub_100004C6C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return sub_100004D74();
}