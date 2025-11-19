uint64_t sub_1000014C8()
{
  v0 = (*(*(sub_100003DB8(&qword_1000142B8, &qword_100009D88) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v44 = &v34 - v1;
  v2 = (*(*(sub_100003DB8(&qword_100014290, &qword_100009D78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v45 = &v34 - v3;
  v4 = sub_100009340();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (__chkstk_darwin)();
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_100009390() - 8) + 64);
  (__chkstk_darwin)();
  v10 = *(*(sub_100009450() - 8) + 64);
  (__chkstk_darwin)();
  v39 = sub_100009350();
  v11 = *(v39 - 8);
  v12 = *(v11 + 64);
  v13 = (__chkstk_darwin)();
  v43 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v40 = &v34 - v15;
  sub_100003DB8(&qword_1000142C0, &qword_100009D90);
  v16 = *(sub_100003DB8(&qword_1000142C8, &qword_100009D98) - 8);
  v17 = *(v16 + 72);
  v42 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100009790;
  sub_100009440();
  sub_100009380();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v5 + 104);
  v37 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v4);
  v38 = v5 + 104;
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v19(v8, v18, v4);
  v20 = v19;
  v21 = v45;
  sub_100009360();
  v22 = *(v11 + 56);
  v11 += 56;
  v22(v21, 0, 1, v39);
  v23 = v44;
  sub_1000091B0();
  v24 = sub_1000091C0();
  (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
  sub_100003DB8(&qword_1000142D0, &qword_100009DA0);
  v36 = *(v11 + 16);
  v25 = (*(v11 + 24) + 32) & ~*(v11 + 24);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1000097A0;
  sub_100009440();
  sub_100009380();
  v26 = v37;
  v20(v8, v37, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v35 = v4;
  v20(v8, v26, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v20(v8, v26, v4);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v27 = v26;
  v28 = v26;
  v29 = v35;
  v20(v8, v27, v35);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v20(v8, v28, v29);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v20(v8, v28, v29);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v20(v8, v28, v29);
  sub_100009360();
  v30 = v41;
  v31 = v42;
  sub_1000091D0();
  v32 = sub_100003788(v30);
  swift_setDeallocating();
  sub_100003F98(v30 + v31);
  result = swift_deallocClassInstance();
  qword_100014610 = v32;
  return result;
}

uint64_t sub_100001DDC()
{
  v0 = (*(*(sub_100003DB8(&qword_100014290, &qword_100009D78) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = v14 - v1;
  v14[0] = sub_100009340();
  v3 = *(v14[0] - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_100009390() - 8) + 64);
  __chkstk_darwin();
  v8 = *(*(sub_100009450() - 8) + 64);
  __chkstk_darwin();
  v9 = sub_100009350();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = sub_1000092F0();
  sub_100003F34(v12, qword_100014618);
  sub_100003EFC(v12, qword_100014618);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v14[0]);
  sub_100009360();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1000092E0();
}

unint64_t sub_1000020D4()
{
  result = qword_1000141E0;
  if (!qword_1000141E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E0);
  }

  return result;
}

Swift::Int sub_100002128()
{
  sub_100009500();
  sub_100009470();
  return sub_100009510();
}

Swift::Int sub_10000219C()
{
  sub_100009500();
  sub_100009470();
  return sub_100009510();
}

uint64_t sub_1000021F0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100010C08;
  v7._object = v3;
  v5 = sub_1000094F0(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100002268()
{
  result = qword_1000141E8;
  if (!qword_1000141E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141E8);
  }

  return result;
}

unint64_t sub_1000022C0()
{
  result = qword_1000141F0;
  if (!qword_1000141F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F0);
  }

  return result;
}

uint64_t sub_100002314(uint64_t a1)
{
  v2 = sub_100002268();

  return _EnumURLRepresentation.init(stringLiteral:)(0xD000000000000016, 0x800000010000AA80, a1, v2);
}

unint64_t sub_100002378()
{
  result = qword_1000141F8;
  if (!qword_1000141F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000141F8);
  }

  return result;
}

unint64_t sub_1000023D0()
{
  result = qword_100014200;
  if (!qword_100014200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014200);
  }

  return result;
}

unint64_t sub_100002428()
{
  result = qword_100014208;
  if (!qword_100014208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014208);
  }

  return result;
}

uint64_t sub_100002488()
{
  sub_100003EA8();
  v1 = sub_100009200();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_1000024F8()
{
  result = qword_100014210;
  if (!qword_100014210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014210);
  }

  return result;
}

unint64_t sub_100002550()
{
  result = qword_100014218;
  if (!qword_100014218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014218);
  }

  return result;
}

unint64_t sub_1000025A8()
{
  result = qword_100014220;
  if (!qword_100014220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014220);
  }

  return result;
}

unint64_t sub_100002600()
{
  result = qword_100014228;
  if (!qword_100014228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014228);
  }

  return result;
}

uint64_t sub_1000026BC(uint64_t a1)
{
  v2 = sub_100002268();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10000270C()
{
  result = qword_100014230;
  if (!qword_100014230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014230);
  }

  return result;
}

unint64_t sub_100002764()
{
  result = qword_100014238;
  if (!qword_100014238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014238);
  }

  return result;
}

unint64_t sub_1000027BC()
{
  result = qword_100014240;
  if (!qword_100014240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014240);
  }

  return result;
}

uint64_t sub_100002810()
{
  if (qword_100014188 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10000286C(uint64_t a1)
{
  v2 = sub_100002600();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000028BC()
{
  result = qword_100014248;
  if (!qword_100014248)
  {
    sub_100002920(&qword_100014250, &qword_100009A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014248);
  }

  return result;
}

uint64_t sub_100002920(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_10000297C()
{
  result = qword_100014258;
  if (!qword_100014258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014258);
  }

  return result;
}

uint64_t sub_1000029D4()
{
  v0 = sub_100009340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009390();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100009450();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100009350();
  sub_100003F34(v9, qword_100014630);
  sub_100003EFC(v9, qword_100014630);
  sub_100009440();
  sub_100009380();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100009360();
}

uint64_t sub_100002BC4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_100009340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100009390();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100009450();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100009350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100009440();
  sub_100009380();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100009360();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100009170();
  v18 = sub_100009160();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

void (*sub_100002F18(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_1000090F0();
  return sub_100002F8C;
}

void sub_100002F8C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100002FD8()
{
  result = qword_100014260;
  if (!qword_100014260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014260);
  }

  return result;
}

unint64_t sub_10000302C()
{
  result = qword_100014268;
  if (!qword_100014268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014268);
  }

  return result;
}

uint64_t sub_100003080(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003E00();
  v5 = sub_100003EA8();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_1000030F0()
{
  v0 = qword_1000141A0;

  return v0;
}

unint64_t sub_100003130()
{
  result = qword_100014270;
  if (!qword_100014270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014270);
  }

  return result;
}

unint64_t sub_100003188()
{
  result = qword_100014278;
  if (!qword_100014278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014278);
  }

  return result;
}

uint64_t sub_10000328C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003EFC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_10000334C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100003E00();
  v8 = sub_100003E54();
  v9 = sub_100003EA8();
  *v6 = v2;
  v6[1] = sub_100003420;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100003420()
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

uint64_t sub_100003528@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100003940();
  *a1 = result;
  return result;
}

uint64_t sub_100003550(uint64_t a1)
{
  v2 = sub_100002FD8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void type metadata accessor for CBManagerState()
{
  if (!qword_100014280)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100014280);
    }
  }
}

uint64_t getEnumTagSinglePayload for BluetoothSettingsStaticDeepLinks(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for BluetoothSettingsStaticDeepLinks(_WORD *result, int a2, int a3)
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

void *sub_1000036D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_1000036F0(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_10000371C()
{
  v1 = *(v0 + 40);
  sub_100009500();
  sub_100009470();
  v2 = sub_100009510();

  return sub_1000036F0(v2);
}

unint64_t sub_100003788(uint64_t a1)
{
  v2 = *(sub_100003DB8(&qword_1000142C8, &qword_100009D98) - 8);
  v3 = (*(v2 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100003DB8(&qword_1000142D8, &unk_100009DA8);
    v7 = sub_1000094E0();
    v8 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);

    while (1)
    {
      sub_100004000(v8, v5);
      result = sub_10000371C();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v13 = *(v7 + 56);
      v14 = sub_1000091E0();
      result = (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = *(v7 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      *(v7 + 16) = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100003940()
{
  v0 = sub_100009240();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v28 - v11;
  v13 = sub_100009340();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009390();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100009450();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100009350();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28 = sub_100003DB8(&qword_100014298, &qword_100009D80);
  sub_100009440();
  sub_100009380();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100009360();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 1;
  v25 = sub_1000090B0();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_100002268();
  return sub_100009120();
}

uint64_t sub_100003DB8(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100003E00()
{
  result = qword_1000142A0;
  if (!qword_1000142A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A0);
  }

  return result;
}

unint64_t sub_100003E54()
{
  result = qword_1000142A8;
  if (!qword_1000142A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142A8);
  }

  return result;
}

unint64_t sub_100003EA8()
{
  result = qword_1000142B0;
  if (!qword_1000142B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000142B0);
  }

  return result;
}

uint64_t sub_100003EFC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100003F34(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003F98(uint64_t a1)
{
  v2 = sub_100003DB8(&qword_1000142C8, &qword_100009D98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004000(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DB8(&qword_1000142C8, &qword_100009D98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100004084()
{
  type metadata accessor for BluetoothAppIntentsManager();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(CBController) init];
  *(v0 + 24) = 0;
  result = sub_100009370();
  qword_100014648 = v0;
  return result;
}

uint64_t sub_1000040FC()
{
  sub_100009370();
  [*(v0 + 16) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_10000418C(uint64_t result)
{
  if (result)
  {
    sub_1000094C0(19);

    swift_errorRetain();
    sub_100003DB8(&qword_1000143C8, qword_100009E20);
    v1._countAndFlagsBits = sub_100009460();
    sub_100009480(v1);

    result = sub_1000094D0();
    __break(1u);
  }

  return result;
}

BOOL sub_10000425C()
{
  v1 = v0;
  v2 = sub_100009420();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_semaphore_create(0);
  v8 = *(v1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v7;
  aBlock[4] = sub_10000454C;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004554;
  aBlock[3] = &unk_100010D90;
  v10 = _Block_copy(aBlock);
  v11 = v8;

  v12 = v7;

  [v11 getPowerStateWithCompletion:v10];
  _Block_release(v10);

  sub_100009410();
  sub_1000094A0();

  (*(v3 + 8))(v6, v2);
  return *(v1 + 24) == 5;
}

Swift::Int sub_10000441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    sub_1000094C0(16);

    swift_errorRetain();
    sub_100003DB8(&qword_1000143C8, qword_100009E20);
    v4._countAndFlagsBits = sub_100009460();
    sub_100009480(v4);

    result = sub_1000094D0();
    __break(1u);
  }

  else
  {
    *(a3 + 24) = a1;
    return sub_1000094B0();
  }

  return result;
}

uint64_t sub_10000450C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100004554(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000045CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000045E4()
{
  v0 = sub_1000046E0();

  return static WidgetBundleBuilder.buildBlock<A>(_:)(v0, &type metadata for BluetoothPowerToggle, v0);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100004660();
  sub_1000093A0();
  return 0;
}

unint64_t sub_100004660()
{
  result = qword_1000143D0;
  if (!qword_1000143D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D0);
  }

  return result;
}

unint64_t sub_1000046E0()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_100004784()
{
  result = qword_100014400;
  if (!qword_100014400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014400);
  }

  return result;
}

void sub_10000481C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_100004888()
{
  v0 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v28 = v25 - v2;
  v26 = sub_100009340();
  v3 = *(v26 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v26);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009390();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100009450();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100009350();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v25[1] = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000092F0();
  sub_100003F34(v15, qword_100014650);
  v27 = sub_100003EFC(v15, qword_100014650);
  sub_100009440();
  sub_100009380();
  v16 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v25[0] = *(v3 + 104);
  v17 = v26;
  (v25[0])(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v26);
  sub_100009360();
  v18 = *(v12 + 56);
  v12 += 56;
  v18(v28, 1, 1, v11);
  sub_100003DB8(&qword_1000142D0, &qword_100009DA0);
  v19 = *(v12 + 16);
  v20 = (*(v12 + 24) + 32) & ~*(v12 + 24);
  *(swift_allocObject() + 16) = xmmword_100009ED0;
  sub_100009440();
  sub_100009380();
  v21 = v17;
  v22 = v17;
  v23 = v25[0];
  (v25[0])(v6, v16, v22);
  sub_100009360();
  sub_100009440();
  sub_100009380();
  v23(v6, v16, v21);
  sub_100009360();
  return sub_1000092D0();
}

uint64_t sub_100004CD8()
{
  v0 = sub_100009350();
  sub_100003F34(v0, qword_100014668);
  sub_100003EFC(v0, qword_100014668);
  return sub_100009330();
}

uint64_t sub_100004D3C()
{
  v0 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  sub_100003F34(v0, qword_100014680);
  v1 = sub_100003EFC(v0, qword_100014680);
  sub_100009150();
  v2 = sub_100009160();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t sub_100004DFC()
{
  result = swift_getKeyPath();
  qword_100014698 = result;
  return result;
}

uint64_t sub_100004E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  return _swift_task_switch(sub_100004E4C, 0, 0);
}

uint64_t sub_100004E4C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_100009100();
  v3 = *(v0 + 16);
  *(v0 + 24) = v3;
  *(v0 + 72) = v3;
  sub_100009100();
  *(v0 + 145) = *(v0 + 144);
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }

  v4 = qword_100014698;
  *(v0 + 80) = qword_100014698;
  v5 = async function pointer to AppEntity._setValue<A, B, C>(_:for:)[1];

  v6 = swift_task_alloc();
  *(v0 + 88) = v6;
  v7 = sub_100008E3C(&qword_100014520, &qword_100014528, &unk_10000A830);
  *(v0 + 96) = v7;
  *v6 = v0;
  v6[1] = sub_100004FB0;

  return AppEntity._setValue<A, B, C>(_:for:)(v0 + 145, v4, &type metadata for Bool, v7);
}

uint64_t sub_100004FB0()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v5 = sub_1000053B8;
  }

  else
  {
    v5 = sub_100005104;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005104()
{
  v1 = v0[7];
  sub_100009100();
  v2 = v0[4];
  v0[5] = v2;
  v3 = qword_100014698;
  v0[14] = v2;
  v0[15] = v3;
  v4 = async function pointer to AppEntity._value<A, B>(for:)[1];

  v5 = swift_task_alloc();
  v0[16] = v5;
  *v5 = v0;
  v5[1] = sub_1000051DC;
  v6 = v0[12];

  return AppEntity._value<A, B>(for:)(v0 + 146, v3, v6);
}

uint64_t sub_1000051DC()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v5 = sub_1000053D0;
  }

  else
  {
    v5 = sub_100005330;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100005330()
{
  v1 = *(v0 + 48);
  *(v0 + 147) = *(v0 + 146);
  sub_100008D40();
  sub_1000090C0();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000053E8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  result = sub_100009100();
  *a1 = v5;
  return result;
}

uint64_t sub_100005424(uint64_t *a1)
{
  v2 = *v1;
  v4 = *a1;

  sub_100009110();
}

void (*sub_10000546C(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1000090F0();
  return sub_100008F70;
}

uint64_t sub_1000054E0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_100009100();
  *a1 = v5;
  return result;
}

uint64_t sub_10000551C(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_100009110();
}

void (*sub_100005554(uint64_t *a1))(void *)
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
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1000090F0();
  return sub_100008F70;
}

uint64_t sub_1000055C8()
{
  if (qword_1000141D0 != -1)
  {
    swift_once();
  }
}

unint64_t sub_100005644()
{
  result = qword_100014418;
  if (!qword_100014418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014418);
  }

  return result;
}

unint64_t sub_10000569C()
{
  result = qword_100014420;
  if (!qword_100014420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014420);
  }

  return result;
}

uint64_t sub_10000577C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1000141C8 != -1)
  {
    swift_once();
  }

  v2 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  v3 = sub_100003EFC(v2, qword_100014680);

  return sub_100008DA0(v3, a1);
}

uint64_t sub_100005800(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000058AC;

  return sub_100004E28(a1, v5, v4);
}

uint64_t sub_1000058AC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000059A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100008058();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1000059E4()
{
  result = qword_100014428;
  if (!qword_100014428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014428);
  }

  return result;
}

unint64_t sub_100005A3C()
{
  result = qword_100014430;
  if (!qword_100014430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014430);
  }

  return result;
}

unint64_t sub_100005A98()
{
  result = qword_100014438;
  if (!qword_100014438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014438);
  }

  return result;
}

uint64_t sub_100005B0C()
{
  if (qword_1000141B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  *v1 = sub_10000425C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100005BD4()
{
  if (qword_1000141B0 != -1)
  {
    swift_once();
  }

  if (*(v0 + 64))
  {
    v1 = 5;
  }

  else
  {
    v1 = 4;
  }

  v2 = *(qword_100014648 + 16);
  *(v0 + 48) = sub_10000418C;
  *(v0 + 56) = 0;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_10000481C;
  *(v0 + 40) = &unk_100010EC8;
  v3 = _Block_copy((v0 + 16));
  v4 = v2;
  [v4 setPowerState:v1 completion:v3];
  _Block_release(v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100005D0C(uint64_t a1)
{
  v2 = sub_1000059E4();

  return _EntityURLRepresentation.init(stringLiteral:)(0xD000000000000025, 0x800000010000ACE0, a1, v2);
}

uint64_t sub_100005D70()
{
  v0 = qword_1000143E0;

  return v0;
}

unint64_t sub_100005DA8()
{
  result = qword_100014440;
  if (!qword_100014440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014440);
  }

  return result;
}

unint64_t sub_100005E00()
{
  result = qword_100014448;
  if (!qword_100014448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014448);
  }

  return result;
}

unint64_t sub_100005E58()
{
  result = qword_100014450;
  if (!qword_100014450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014450);
  }

  return result;
}

unint64_t sub_100005EB0()
{
  result = qword_100014458;
  if (!qword_100014458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014458);
  }

  return result;
}

uint64_t sub_100005F10()
{
  sub_100008CD4();
  v1 = sub_100009250();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100005F80()
{
  result = qword_100014460;
  if (!qword_100014460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014460);
  }

  return result;
}

unint64_t sub_100005FD8()
{
  result = qword_100014468;
  if (!qword_100014468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014468);
  }

  return result;
}

unint64_t sub_100006030()
{
  result = qword_100014470;
  if (!qword_100014470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014470);
  }

  return result;
}

unint64_t sub_100006088()
{
  result = qword_100014478;
  if (!qword_100014478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014478);
  }

  return result;
}

uint64_t sub_1000060E8@<X0>(uint64_t *a1@<X8>)
{
  sub_100006400();
  result = sub_1000090E0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000061A4(uint64_t a1)
{
  v2 = sub_1000059E4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000061F4()
{
  result = qword_100014490;
  if (!qword_100014490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014490);
  }

  return result;
}

uint64_t sub_100006248(uint64_t a1)
{
  v2 = sub_100006400();

  return _UniqueEntity.displayRepresentation.getter(a1, v2);
}

uint64_t sub_100006294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to InstanceDisplayRepresentable.displayRepresentation(with:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000058AC;

  return InstanceDisplayRepresentable.displayRepresentation(with:)(a1, a2, a3, a4);
}

uint64_t sub_100006358(uint64_t a1)
{
  v2 = sub_100006088();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1000063A8()
{
  result = qword_100014498;
  if (!qword_100014498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014498);
  }

  return result;
}

unint64_t sub_100006400()
{
  result = qword_1000144A0;
  if (!qword_1000144A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A0);
  }

  return result;
}

uint64_t sub_100006454()
{
  v0 = sub_1000093B0();

  return Label<>.init(_:systemImage:)(v0);
}

uint64_t sub_1000064E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009390();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100009450();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100009350();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100009360();
  result = sub_1000093F0();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_100006708@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100009340();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100009390();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100009450();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_100009350();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_100009440();
  sub_100009380();
  (*(v3 + 104))(v6, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  sub_100009360();
  result = sub_1000093F0();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_10000693C@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = sub_100003DB8(&qword_100014550, &qword_10000A8E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v14 - v4;
  v6 = sub_100003DB8(&qword_100014558, &qword_10000A8F0);
  v7 = *(v6 - 8);
  v15 = v6;
  v16 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v14 - v9;
  swift_getKeyPath();
  sub_100003DB8(&qword_100014560, qword_10000A8F8);
  sub_100006400();
  sub_100008E3C(&qword_100014568, &qword_100014560, qword_10000A8F8);
  sub_100009430();
  sub_1000093B0();
  v11 = sub_100008E3C(&qword_100014570, &qword_100014550, &qword_10000A8E8);
  sub_1000093E0();

  (*(v2 + 8))(v5, v1);
  sub_1000093B0();
  v18 = v1;
  v19 = v11;
  swift_getOpaqueTypeConformance2();
  v12 = v15;
  sub_1000093D0();

  return (*(v16 + 8))(v10, v12);
}

uint64_t sub_100006CBC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100008F6C;

  return sub_1000084BC();
}

uint64_t sub_100006D60(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.allEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100005A3C();
  *v5 = v2;
  v5[1] = sub_100006E10;

  return _UniqueEntityQuery.allEntities()(a2, v6);
}

uint64_t sub_100006E10(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

unint64_t sub_100006F28()
{
  result = qword_1000144A8;
  if (!qword_1000144A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144A8);
  }

  return result;
}

unint64_t sub_100006F80()
{
  result = qword_1000144B0;
  if (!qword_1000144B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B0);
  }

  return result;
}

uint64_t sub_100006FD4(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _UniqueEntityQuery.entities(for:)[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005A3C();
  *v6 = v2;
  v6[1] = sub_100008F98;

  return _UniqueEntityQuery.entities(for:)(a1, a2, v7);
}

uint64_t sub_100007088(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = async function pointer to _UniqueEntityQuery.suggestedEntities()[1];
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  v6 = sub_100005A3C();
  *v5 = v2;
  v5[1] = sub_100008F6C;

  return _UniqueEntityQuery.suggestedEntities()(a2, v6);
}

uint64_t sub_100007138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = async function pointer to EntityQuery.displayRepresentations(for:requestedComponents:)[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1000071F8;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_1000071F8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

unint64_t sub_1000072FC()
{
  result = qword_1000144B8;
  if (!qword_1000144B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144B8);
  }

  return result;
}

unint64_t sub_100007354()
{
  result = qword_1000144C0;
  if (!qword_1000144C0)
  {
    sub_100002920(&qword_1000144C8, qword_10000A458);
    sub_100006030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144C0);
  }

  return result;
}

uint64_t sub_1000073D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100005EB0();
  *v6 = v2;
  v6[1] = sub_100008F58;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10000748C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to DynamicOptionsProvider.defaultResult()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100008F58;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

unint64_t sub_100007548()
{
  result = qword_1000144D0;
  if (!qword_1000144D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D0);
  }

  return result;
}

uint64_t sub_1000075A0()
{
  v0 = sub_100009340();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100009390();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_100009450();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100009350();
  sub_100003F34(v9, qword_1000146A0);
  sub_100003EFC(v9, qword_1000146A0);
  sub_100009440();
  sub_100009380();
  (*(v1 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return sub_100009360();
}

uint64_t sub_100007790@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_100009340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_100009390();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v13 = sub_100009450();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v15 = sub_100009350();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100009440();
  sub_100009380();
  (*(v7 + 104))(v10, enum case for LocalizedStringResource.BundleDescription.main(_:), v6);
  sub_100009360();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_100009170();
  v18 = sub_100009160();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

void (*sub_100007A9C(uint64_t *a1))(void *)
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
  *(v3 + 32) = sub_1000090F0();
  return sub_100007B10;
}

unint64_t sub_100007B14()
{
  result = qword_1000144D8;
  if (!qword_1000144D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144D8);
  }

  return result;
}

uint64_t sub_100007B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008C2C();
  v5 = sub_100008CD4();

  return static _URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

uint64_t sub_100007BD4()
{
  v0 = qword_1000143F0;

  return v0;
}

unint64_t sub_100007C10()
{
  result = qword_1000144E0;
  if (!qword_1000144E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E0);
  }

  return result;
}

unint64_t sub_100007C68()
{
  result = qword_1000144E8;
  if (!qword_1000144E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000144E8);
  }

  return result;
}

uint64_t sub_100007D60@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100003EFC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_100007E0C(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to _URLRepresentableIntent<>.perform()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100008C2C();
  v8 = sub_100008C80();
  v9 = sub_100008CD4();
  *v6 = v2;
  v6[1] = sub_100003420;

  return _URLRepresentableIntent<>.perform()(a1, a2, v7, v8, v9);
}

uint64_t sub_100007EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000087C0();
  *a1 = result;
  return result;
}

uint64_t sub_100007F08(uint64_t a1)
{
  v2 = sub_100007B14();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

__n128 sub_100007F74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100007F80(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100007FC8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_100008058()
{
  v0 = sub_100003DB8(&qword_100014530, &qword_10000A840);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v35 = &v27 - v2;
  v36 = sub_100009240();
  v3 = *(v36 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v36);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v27 - v16;
  v18 = sub_100009350();
  v34 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v28 = sub_100003DB8(&qword_100014500, &qword_10000A810);
  sub_100009330();
  v21 = *(v19 + 56);
  v32 = v19 + 56;
  v33 = v21;
  v21(v17, 1, 1, v18);
  v38 = 0;
  v22 = sub_1000090B0();
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  v23(v11, 1, 1, v22);
  v31 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v3 + 104);
  v29 = v3 + 104;
  v30 = v24;
  v24(v6);
  sub_1000059E4();
  v28 = sub_100009130();
  sub_100003DB8(&qword_100014538, &qword_10000A848);
  sub_100009330();
  v33(v17, 1, 1, v34);
  v37 = 2;
  v25 = sub_100009490();
  (*(*(v25 - 8) + 56))(v35, 1, 1, v25);
  v23(v13, 1, 1, v22);
  v30(v6, v31, v36);
  sub_100009140();
  return v28;
}

uint64_t sub_1000084BC()
{
  v1 = sub_100009340();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v4 = *(*(sub_100009390() - 8) + 64) + 15;
  v0[5] = swift_task_alloc();
  v5 = *(*(sub_100009450() - 8) + 64) + 15;
  v0[6] = swift_task_alloc();
  v6 = *(*(sub_100009350() - 8) + 64) + 15;
  v0[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000085FC, 0, 0);
}

uint64_t sub_1000085FC()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  sub_100003DB8(&qword_100014410, qword_100009EE0);
  sub_100009440();
  sub_100009380();
  (*(v6 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  sub_100009360();
  sub_100008E3C(&qword_100014520, &qword_100014528, &unk_10000A830);
  v7 = sub_100009320();

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1000087C0()
{
  v0 = sub_100009240();
  v31 = *(v0 - 8);
  v32 = v0;
  v1 = *(v31 + 64);
  __chkstk_darwin(v0);
  v30 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100003DB8(&qword_100014288, &qword_100009D70);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v28 - v7;
  v9 = sub_100003DB8(&qword_100014290, &qword_100009D78);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v28 - v11;
  v13 = sub_100009340();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100009390();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v20 = sub_100009450();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_100009350();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v28[1] = sub_100003DB8(&qword_100014500, &qword_10000A810);
  sub_100009440();
  sub_100009380();
  (*(v14 + 104))(v17, enum case for LocalizedStringResource.BundleDescription.main(_:), v13);
  sub_100009360();
  (*(v23 + 56))(v12, 1, 1, v22);
  v33 = 0;
  v25 = sub_1000090B0();
  v26 = *(*(v25 - 8) + 56);
  v26(v8, 1, 1, v25);
  v26(v29, 1, 1, v25);
  (*(v31 + 104))(v30, enum case for InputConnectionBehavior.default(_:), v32);
  sub_1000059E4();
  return sub_100009130();
}

unint64_t sub_100008C2C()
{
  result = qword_100014508;
  if (!qword_100014508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014508);
  }

  return result;
}

unint64_t sub_100008C80()
{
  result = qword_100014510;
  if (!qword_100014510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014510);
  }

  return result;
}

unint64_t sub_100008CD4()
{
  result = qword_100014518;
  if (!qword_100014518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014518);
  }

  return result;
}

uint64_t sub_100008D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100008D40()
{
  result = qword_100014540;
  if (!qword_100014540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100014540);
  }

  return result;
}

uint64_t sub_100008DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003DB8(&qword_100014548, &unk_10000A880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008E3C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002920(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008E84()
{
  sub_100002920(&qword_100014558, &qword_10000A8F0);
  sub_100002920(&qword_100014550, &qword_10000A8E8);
  sub_100008E3C(&qword_100014570, &qword_100014550, &qword_10000A8E8);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}