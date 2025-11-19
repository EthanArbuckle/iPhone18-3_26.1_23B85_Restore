unint64_t sub_100031000()
{
  result = qword_100069728;
  if (!qword_100069728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069728);
  }

  return result;
}

uint64_t sub_10003105C(uint64_t a1)
{
  v2 = sub_100030E88();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1000310E0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100031170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100031230()
{
  result = qword_100069730;
  if (!qword_100069730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069730);
  }

  return result;
}

uint64_t sub_100031284()
{
  v0 = sub_1000420E8();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

BOOL sub_1000312D8(void *a1)
{
  if ([a1 valueForProperty:PDRDevicePropertyKeyHWModelString])
  {
    sub_100042088();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_100041FF8();

      v7._countAndFlagsBits = 3617390;
      v7._object = 0xE300000000000000;
      if (!sub_100042028(v7))
      {
        v8._countAndFlagsBits = 3682926;
        v8._object = 0xE300000000000000;
        if (!sub_100042028(v8))
        {
          v9._countAndFlagsBits = 3422062;
          v9._object = 0xE300000000000000;
          if (!sub_100042028(v9))
          {
            v10._countAndFlagsBits = 3487598;
            v10._object = 0xE300000000000000;
            v3 = sub_100042028(v10);

            return !v3;
          }
        }
      }
    }
  }

  else
  {
    sub_100007320(v6);
  }

  return 0;
}

uint64_t sub_100031440()
{
  v0 = [objc_allocWithZone(ADASManager) init];
  if ([v0 getNanoPreferenceFor:ADAFPreferenceKeyHAENotificationIsMandatory])
  {
    sub_100042088();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (*(&v6 + 1))
  {
    sub_100031EF0();
    if (swift_dynamicCast())
    {
      v1 = [v4 BOOLValue];

      goto LABEL_9;
    }
  }

  else
  {
    sub_100007320(&v7);
  }

  v1 = 0;
LABEL_9:
  if ([v0 getNanoPreferenceFor:ADAFPreferenceKeyHAEEnableHKWrite])
  {
    sub_100042088();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {

    sub_100007320(&v7);
LABEL_17:
    v2 = 0;
    return (v1 | v2) & 1;
  }

  sub_100031EF0();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_17;
  }

  v2 = [v4 BOOLValue];

  return (v1 | v2) & 1;
}

uint64_t sub_1000315F8()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069758, &unk_10004AA90);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 30;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10002FAAC();
  return sub_1000415C8();
}

uint64_t sub_100031910()
{
  sub_100040364(0, 30, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100062AC8 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100040364((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 30);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100031A34()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v7 = *v3++;
      v6 = v7;
      if (sub_10002ED90(v7))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100040394(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v5 = _swiftEmptyArrayStorage[2];
        v4 = _swiftEmptyArrayStorage[3];
        if (v5 >= v4 >> 1)
        {
          sub_100040394((v4 > 1), v5 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v5 + 1;
        *(&_swiftEmptyArrayStorage[4] + v5) = v6;
      }

      --v2;
    }

    while (v2);
  }

  v8 = _swiftEmptyArrayStorage[2];
  if (v8)
  {
    sub_100040364(0, v8, 0);
    v9 = _swiftEmptyArrayStorage[2];
    v10 = 32;
    do
    {
      v11 = *(_swiftEmptyArrayStorage + v10);
      v12 = _swiftEmptyArrayStorage[3];
      if (v9 >= v12 >> 1)
      {
        sub_100040364((v12 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      *(&_swiftEmptyArrayStorage[4] + v9) = v11;
      ++v10;
      ++v9;
      --v8;
    }

    while (v8);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100031C1C()
{
  for (i = 0; i != 30; ++i)
  {
    v4 = *(&off_100062AC8 + i + 32);
    if (sub_10002ED90(v4))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100040394(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v3 = _swiftEmptyArrayStorage[2];
      v2 = _swiftEmptyArrayStorage[3];
      if (v3 >= v2 >> 1)
      {
        sub_100040394((v2 > 1), v3 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v3 + 1;
      *(&_swiftEmptyArrayStorage[4] + v3) = v4;
    }
  }

  v5 = _swiftEmptyArrayStorage[2];
  if (v5)
  {
    sub_100040364(0, v5, 0);
    v6 = _swiftEmptyArrayStorage[2];
    v7 = 32;
    do
    {
      v8 = *(_swiftEmptyArrayStorage + v7);
      v9 = _swiftEmptyArrayStorage[3];
      if (v6 >= v9 >> 1)
      {
        sub_100040364((v9 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *(&_swiftEmptyArrayStorage[4] + v6) = v8;
      ++v7;
      ++v6;
      --v5;
    }

    while (v5);
  }

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_100031E00()
{
  v1 = 0;
  while (v1 != 30)
  {
    v2 = v1 + 1;
    v3 = &off_100062AC8 + v1;
    v4 = v3[32];
    v5 = sub_10002ED90(v3[32]);
    v1 = v2;
    if (v5)
    {
      goto LABEL_6;
    }
  }

  v4 = 30;
LABEL_6:
  v6 = *(v0 + 8);

  return v6(v4);
}

unint64_t sub_100031E9C()
{
  result = qword_100069748;
  if (!qword_100069748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069748);
  }

  return result;
}

unint64_t sub_100031EF0()
{
  result = qword_100069750;
  if (!qword_100069750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100069750);
  }

  return result;
}

unint64_t sub_100031F3C()
{
  result = qword_100069760;
  if (!qword_100069760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069760);
  }

  return result;
}

unint64_t sub_100031F90()
{
  result = qword_100069768;
  if (!qword_100069768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069768);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_100032094()
{
  result = qword_100069770;
  if (!qword_100069770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069770);
  }

  return result;
}

uint64_t sub_100032108(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x800000010004E4F0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000015;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v3 == 1)
  {
    v6 = 0x800000010004E4F0;
  }

  else
  {
    v6 = 0x800000010004E510;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = *a1;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE000000000000000;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v4 = 0x800000010004E510;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = *a2;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  if (v7 == v9 && v8 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1000420D8();
  }

  return v12 & 1;
}

unint64_t sub_1000321D8()
{
  result = qword_100069778;
  if (!qword_100069778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069778);
  }

  return result;
}

Swift::Int sub_10003222C()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_1000322CC()
{
  *v0;
  sub_100042008();
}

Swift::Int sub_100032358()
{
  v1 = *v0;
  sub_100042108();
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_1000323F4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100033C00(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_100032424(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE000000000000000;
  v4 = 0x800000010004E4F0;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
    v4 = 0x800000010004E510;
  }

  if (*v1)
  {
    v2 = v5;
    v3 = v4;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_1000324D4()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_10003252C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  result = sub_100033C00(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_100032578()
{
  result = qword_100069790;
  if (!qword_100069790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069790);
  }

  return result;
}

unint64_t sub_1000325CC()
{
  result = qword_100069798;
  if (!qword_100069798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069798);
  }

  return result;
}

uint64_t sub_100032620()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A388);
  sub_1000038F8(v0, qword_10006A388);
  return sub_1000417B8();
}

void (*sub_100032684(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_1000326F8()
{
  result = qword_1000697A0;
  if (!qword_1000697A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697A0);
  }

  return result;
}

uint64_t sub_10003274C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100034944();
  v5 = sub_100033BAC();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_1000327BC()
{
  result = qword_1000697A8;
  if (!qword_1000697A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697A8);
  }

  return result;
}

unint64_t sub_100032814()
{
  result = qword_1000697B0;
  if (!qword_1000697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697B0);
  }

  return result;
}

uint64_t sub_1000328F0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100034944();
  v7 = sub_100034998();
  v8 = sub_100033BAC();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_1000329BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100033C4C();
  *a1 = result;
  return result;
}

uint64_t sub_1000329E4(uint64_t a1)
{
  v2 = sub_1000326F8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_100032A24()
{
  result = qword_1000697B8;
  if (!qword_1000697B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697B8);
  }

  return result;
}

unint64_t sub_100032A7C()
{
  result = qword_1000697C0;
  if (!qword_1000697C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697C0);
  }

  return result;
}

unint64_t sub_100032AD4()
{
  result = qword_1000697C8;
  if (!qword_1000697C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697C8);
  }

  return result;
}

uint64_t sub_100032B28()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A3A0);
  sub_1000038F8(v7, qword_10006A3A0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_100032C98()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_100032EE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_1000340B8(a1);
}

uint64_t sub_100032F8C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100034328();
}

unint64_t sub_100033034()
{
  result = qword_1000697D0;
  if (!qword_1000697D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697D0);
  }

  return result;
}

uint64_t sub_100033088(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_100033F48();
}

unint64_t sub_100033130()
{
  result = qword_1000697D8;
  if (!qword_1000697D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697D8);
  }

  return result;
}

unint64_t sub_100033188()
{
  result = qword_1000697E0;
  if (!qword_1000697E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697E0);
  }

  return result;
}

unint64_t sub_1000331E0()
{
  result = qword_1000697E8;
  if (!qword_1000697E8)
  {
    sub_100003830(&qword_1000697F0, qword_10004AEB8);
    sub_100033188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697E8);
  }

  return result;
}

uint64_t sub_100033264(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_100033034();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_100033318(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10003472C();
}

unint64_t sub_1000333C0()
{
  result = qword_1000697F8;
  if (!qword_1000697F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000697F8);
  }

  return result;
}

uint64_t sub_100033414()
{
  v0 = sub_100003930(&qword_100069858, &qword_10004B2A8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069860, &qword_10004B2B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_100032AD4();
  sub_100041708();
  v9._object = 0x800000010004F9D0;
  v9._countAndFlagsBits = 0xD00000000000001CLL;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_1000335E0()
{
  result = qword_100069800;
  if (!qword_100069800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069800);
  }

  return result;
}

unint64_t sub_100033638()
{
  result = qword_100069808;
  if (!qword_100069808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069808);
  }

  return result;
}

unint64_t sub_100033690()
{
  result = qword_100069810;
  if (!qword_100069810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069810);
  }

  return result;
}

uint64_t sub_1000336E4()
{
  sub_100033BAC();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_100033754()
{
  result = qword_100069818;
  if (!qword_100069818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069818);
  }

  return result;
}

unint64_t sub_1000337AC()
{
  result = qword_100069820;
  if (!qword_100069820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069820);
  }

  return result;
}

unint64_t sub_100033804()
{
  result = qword_100069828;
  if (!qword_100069828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069828);
  }

  return result;
}

unint64_t sub_10003385C()
{
  result = qword_100069830;
  if (!qword_100069830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069830);
  }

  return result;
}

uint64_t sub_10003392C(uint64_t a1)
{
  v2 = sub_100032AD4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003397C()
{
  result = qword_100069848;
  if (!qword_100069848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069848);
  }

  return result;
}

uint64_t sub_1000339D8(uint64_t a1)
{
  v2 = sub_100033804();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_100033A5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100033AEC(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100033BAC()
{
  result = qword_100069850;
  if (!qword_100069850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069850);
  }

  return result;
}

uint64_t sub_100033C00(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100062B08;
  v6._object = a2;
  v4 = sub_1000420C8(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100033C4C()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069868, &qword_10004B2E0);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 3;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_100032AD4();
  return sub_1000415C8();
}

uint64_t sub_100033F64()
{
  sub_1000403C4(0, 3, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1000403C4((v1 > 1), v2 + 1, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v4;
  *(&_swiftEmptyArrayStorage[4] + v2) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1000403C4((v1 > 1), v2 + 2, 1);
    v1 = _swiftEmptyArrayStorage[3];
    v3 = v1 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v5;
  *(&_swiftEmptyArrayStorage[4] + v4) = 1;
  if (v3 < (v2 + 3))
  {
    sub_1000403C4((v1 > 1), v2 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v2 + 3;
  *(&_swiftEmptyArrayStorage[4] + v5) = 2;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000340D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    v5 = &DisplayBrightnessDataModel;
    do
    {
      v7 = *v3++;
      v6 = v7;
      v8 = [v4 sharedInstance];
      v9 = [v8 getActiveDevice];

      if (v9)
      {
        if ([v9 *&v5[4].ivar_base_size])
        {
        }

        else
        {
          v10 = [v9 supportsCapability:364860829];

          if (v10)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1000403F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v12 = _swiftEmptyArrayStorage[2];
            v11 = _swiftEmptyArrayStorage[3];
            if (v12 >= v11 >> 1)
            {
              sub_1000403F4((v11 > 1), v12 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v12 + 1;
            *(&_swiftEmptyArrayStorage[4] + v12) = v6;
            v5 = &DisplayBrightnessDataModel;
          }
        }
      }

      --v2;
    }

    while (v2);
  }

  v13 = _swiftEmptyArrayStorage[2];
  if (v13)
  {
    sub_1000403C4(0, v13, 0);
    v14 = _swiftEmptyArrayStorage[2];
    v15 = 32;
    do
    {
      v16 = *(_swiftEmptyArrayStorage + v15);
      v17 = _swiftEmptyArrayStorage[3];
      if (v14 >= v17 >> 1)
      {
        sub_1000403C4((v17 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      *(&_swiftEmptyArrayStorage[4] + v14) = v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  v18 = *(v20 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_100034344()
{
  v1 = objc_opt_self();
  v2 = [v1 sharedInstance];
  v3 = [v2 getActiveDevice];

  if (v3)
  {
    if ([v3 isAltAccount])
    {
    }

    else
    {
      v4 = [v3 supportsCapability:364860829];

      if (v4)
      {
        sub_1000403F4(0, 1, 1);
        v5 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        v7 = v5 + 1;
        if (v5 >= v6 >> 1)
        {
          v26 = _swiftEmptyArrayStorage[2];
          sub_1000403F4((v6 > 1), v5 + 1, 1);
          v5 = v26;
        }

        _swiftEmptyArrayStorage[2] = v7;
        *(&_swiftEmptyArrayStorage[4] + v5) = 0;
      }
    }
  }

  v8 = [v1 sharedInstance];
  v9 = [v8 getActiveDevice];

  if (v9)
  {
    if ([v9 isAltAccount])
    {
    }

    else
    {
      v10 = [v9 supportsCapability:364860829];

      if (v10)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000403F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v27 = _swiftEmptyArrayStorage[2];
          sub_1000403F4((v12 > 1), v11 + 1, 1);
          v11 = v27;
        }

        _swiftEmptyArrayStorage[2] = v13;
        *(&_swiftEmptyArrayStorage[4] + v11) = 1;
      }
    }
  }

  v14 = [v1 sharedInstance];
  v15 = [v14 getActiveDevice];

  if (v15)
  {
    if ([v15 isAltAccount])
    {
    }

    else
    {
      v16 = [v15 supportsCapability:364860829];

      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000403F4(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          sub_1000403F4((v17 > 1), v18 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v18 + 1;
        *(&_swiftEmptyArrayStorage[4] + v18) = 2;
      }
    }
  }

  v19 = _swiftEmptyArrayStorage[2];
  if (v19)
  {
    sub_1000403C4(0, v19, 0);
    v20 = _swiftEmptyArrayStorage[2];
    v21 = 32;
    do
    {
      v22 = *(_swiftEmptyArrayStorage + v21);
      v23 = _swiftEmptyArrayStorage[3];
      if (v20 >= v23 >> 1)
      {
        sub_1000403C4((v23 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      *(&_swiftEmptyArrayStorage[4] + v20) = v22;
      ++v21;
      ++v20;
      --v19;
    }

    while (v19);
  }

  v24 = *(v0 + 8);

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_100034748()
{
  v1 = 0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 getActiveDevice];

  if (v3)
  {
    if ([v3 isAltAccount])
    {
    }

    else
    {
      v4 = [v3 supportsCapability:364860829];

      if (v4)
      {
        goto LABEL_14;
      }
    }
  }

  v1 = 1;
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 getActiveDevice];

  if (v6)
  {
    if ([v6 isAltAccount])
    {
    }

    else
    {
      v7 = [v6 supportsCapability:364860829];

      if (v7)
      {
        goto LABEL_14;
      }
    }
  }

  v1 = 2;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 getActiveDevice];

  if (v9)
  {
    if ([v9 isAltAccount])
    {
    }

    else
    {
      v10 = [v9 supportsCapability:364860829];

      if (v10)
      {
        goto LABEL_14;
      }
    }
  }

  v1 = 3;
LABEL_14:
  v11 = *(v0 + 8);

  return v11(v1);
}

unint64_t sub_100034944()
{
  result = qword_100069870;
  if (!qword_100069870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069870);
  }

  return result;
}

unint64_t sub_100034998()
{
  result = qword_100069878;
  if (!qword_100069878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069878);
  }

  return result;
}

uint64_t sub_100034A38(void *__src)
{
  memcpy(__dst, __src, 0x1B2uLL);
  memcpy(v4, __src, sizeof(v4));
  sub_100007880(__dst, v3);
  sub_1000076B0();
  return sub_100041AE8();
}

uint64_t sub_100034AB4(uint64_t a1)
{
  __chkstk_darwin(a1);
  v10 = v1;
  v2 = sub_100003930(&qword_100069890, &qword_10004B358);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11[-1] - v5;
  v14[0] = swift_getKeyPath();
  sub_100035EFC(v14);
  memcpy(v12, v14, 0x1B3uLL);
  sub_100041DC8();
  sub_1000419E8();
  sub_100003930(&qword_1000698D0, &qword_10004B378);
  sub_100041F28();
  memcpy(&v16[7], v15, 0x1AAuLL);
  v17[0] = swift_getKeyPath();
  LOBYTE(v17[1]) = 3;
  memcpy(&v17[1] + 1, v16, 0x1B1uLL);
  memcpy(v13, v12, 0x1E8uLL);
  memcpy(&v13[488], v17, 0x1BAuLL);
  v18 = v17[0];
  v19 = 3;
  memcpy(v20, v16, sizeof(v20));
  sub_10001E390(v17, v21, &qword_1000698C8, &qword_10004B370);
  sub_10001E3F8(&v18, &qword_1000698C8, &qword_10004B370);
  memcpy(v11, v13, 0x3A2uLL);
  sub_100041CE8();
  v7 = sub_100003930(&qword_100069898, &qword_10004B360);
  v8 = sub_1000358D0();
  sub_100041C88();

  memcpy(v21, v11, 0x3A2uLL);
  sub_10001E3F8(v21, &qword_100069898, &qword_10004B360);
  sub_100041D08();
  v11[0] = v7;
  v11[1] = v8;
  swift_getOpaqueTypeConformance2();
  sub_100041C98();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100034DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v26 = a2;
  v3 = sub_100003930(&qword_1000698D0, &qword_10004B378);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(v4 + 16);
  v12(&v21 - v10, a1, v3);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = swift_allocObject();
  v14 = *(v4 + 32);
  v14(v25 + v13, v11, v3);
  v15 = v22;
  v12(v9, v22, v3);
  v23 = swift_allocObject();
  v14(v23 + v13, v9, v3);
  v16 = v24;
  v12(v24, v15, v3);
  v17 = swift_allocObject();
  v14(v17 + v13, v16, v3);
  sub_100003930(&qword_1000698D8, &qword_10004B380);
  sub_100003930(&qword_1000698E0, &qword_10004B388);
  v18 = sub_100003830(&qword_1000698E8, &qword_10004B390);
  v19 = sub_100035C0C();
  v27 = v18;
  v28 = v19;
  swift_getOpaqueTypeConformance2();
  sub_100035D8C();
  return sub_100041F08();
}

uint64_t sub_1000350D0(uint64_t a1)
{
  v2 = sub_100041F88();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100003930(&qword_100069918, &qword_10004B3C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v12[-v7];
  sub_100041F78();
  v14 = a1;
  v9 = sub_100003930(&qword_1000698E8, &qword_10004B390);
  v10 = sub_100035C0C();
  sub_100041F58();
  v13 = v8;
  sub_100003930(&qword_1000698D8, &qword_10004B380);
  v15 = v9;
  v16 = v10;
  swift_getOpaqueTypeConformance2();
  sub_100041F68();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1000352B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a1;
  v18 = a2;
  v2 = sub_100041FA8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003930(&qword_100069920, &qword_10004B3D0);
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v16);
  v10 = &v15 - v9;
  v26[0] = swift_getKeyPath();
  sub_100035EFC(v26);
  memcpy(v25, v26, 0x1B3uLL);
  sub_100041DC8();
  sub_100041A28();
  memcpy(v20, v25, sizeof(v20));
  sub_100041F98();
  sub_100003930(&qword_1000698F8, &qword_10004B398);
  sub_100035D00();
  sub_100041C78();
  (*(v3 + 8))(v6, v2);
  memcpy(v21, v20, sizeof(v21));
  sub_10001E3F8(v21, &qword_1000698F8, &qword_10004B398);
  KeyPath = swift_getKeyPath();
  sub_100003930(&qword_1000698D0, &qword_10004B378);
  sub_100041F28();
  memcpy(&v23[7], v22, 0x1AAuLL);
  v24[0] = KeyPath;
  LOBYTE(v24[1]) = 2;
  memcpy(&v24[1] + 1, v23, 0x1B1uLL);
  v12 = v18;
  (*(v7 + 32))(v18, v10, v16);
  v13 = sub_100003930(&qword_1000698E8, &qword_10004B390);
  memcpy((v12 + *(v13 + 36)), v24, 0x1BAuLL);
  v20[0] = KeyPath;
  LOBYTE(v20[1]) = 2;
  memcpy(&v20[1] + 1, v23, 0x1B1uLL);
  sub_10001E390(v24, &v19, &qword_1000698C8, &qword_10004B370);
  return sub_10001E3F8(v20, &qword_1000698C8, &qword_10004B370);
}

void *sub_1000355FC@<X0>(char a1@<W1>, _BYTE *a2@<X8>)
{
  __src[0] = swift_getKeyPath();
  sub_100035EFC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  sub_100003930(&qword_1000698D0, &qword_10004B378);
  sub_100041F28();
  memcpy(&v9[7], v8, 0x1AAuLL);
  v10[0] = swift_getKeyPath();
  LOBYTE(v10[1]) = a1;
  memcpy(&v10[1] + 1, v9, 0x1B1uLL);
  memcpy(&v6[4], v10, 0x1BAuLL);
  v11 = v10[0];
  v12 = a1;
  memcpy(v13, v9, sizeof(v13));
  sub_10001E390(v10, v5, &qword_1000698C8, &qword_10004B370);
  sub_10001E3F8(&v11, &qword_1000698C8, &qword_10004B370);
  memcpy(a2, __dst, 0x1B3uLL);
  a2[435] = 1;
  return memcpy(a2 + 436, v6, 0x1BEuLL);
}

uint64_t sub_10003574C()
{
  sub_1000418B8();
  sub_100003930(&qword_100069880, &qword_10004B350);
  sub_100035878();
  sub_100003830(&qword_100069890, &qword_10004B358);
  sub_100003830(&qword_100069898, &qword_10004B360);
  sub_1000358D0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_100041F38();
}

unint64_t sub_100035878()
{
  result = qword_100069888;
  if (!qword_100069888)
  {
    sub_1000418B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069888);
  }

  return result;
}

unint64_t sub_1000358D0()
{
  result = qword_1000698A0;
  if (!qword_1000698A0)
  {
    sub_100003830(&qword_100069898, &qword_10004B360);
    sub_100035988();
    sub_100003D80(&qword_1000698C0, &qword_1000698C8, &qword_10004B370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000698A0);
  }

  return result;
}

unint64_t sub_100035988()
{
  result = qword_1000698A8;
  if (!qword_1000698A8)
  {
    sub_100003830(&qword_1000698B0, &qword_10004B368);
    sub_100035A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000698A8);
  }

  return result;
}

unint64_t sub_100035A14()
{
  result = qword_1000698B8;
  if (!qword_1000698B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000698B8);
  }

  return result;
}

uint64_t sub_100035A6C()
{
  v1 = *(sub_100003930(&qword_1000698D0, &qword_10004B378) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1000350D0(v2);
}

uint64_t sub_100035AF0()
{
  v1 = sub_100003930(&qword_1000698D0, &qword_10004B378);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

unint64_t sub_100035C0C()
{
  result = qword_1000698F0;
  if (!qword_1000698F0)
  {
    sub_100003830(&qword_1000698E8, &qword_10004B390);
    sub_100003830(&qword_1000698F8, &qword_10004B398);
    sub_100035D00();
    swift_getOpaqueTypeConformance2();
    sub_100003D80(&qword_1000698C0, &qword_1000698C8, &qword_10004B370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000698F0);
  }

  return result;
}

unint64_t sub_100035D00()
{
  result = qword_100069900;
  if (!qword_100069900)
  {
    sub_100003830(&qword_1000698F8, &qword_10004B398);
    sub_100035A14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069900);
  }

  return result;
}

unint64_t sub_100035D8C()
{
  result = qword_100069908;
  if (!qword_100069908)
  {
    sub_100003830(&qword_1000698E0, &qword_10004B388);
    sub_100035E44();
    sub_100003D80(&qword_1000698C0, &qword_1000698C8, &qword_10004B370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069908);
  }

  return result;
}

unint64_t sub_100035E44()
{
  result = qword_100069910;
  if (!qword_100069910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069910);
  }

  return result;
}

void *sub_100035E98@<X0>(void *a1@<X8>)
{
  sub_1000076B0();
  sub_100041AD8();
  return memcpy(a1, __src, 0x1B2uLL);
}

void *sub_100035F0C(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_100041AF8();
  v18 = 0;
  sub_1000360E8(v2);
  memcpy(v19, __src, 0x5FAuLL);
  memcpy(v20, __src, 0x5FAuLL);
  sub_10001E390(v19, &v15, &qword_100069938, &qword_10004BFF0);
  sub_10001E3F8(v20, &qword_100069938, &qword_10004BFF0);
  memcpy(&v17[7], v19, 0x5FAuLL);
  v6 = v18;
  v7 = sub_100041CE8();
  v8 = sub_100041BA8();
  KeyPath = swift_getKeyPath();
  v10 = (v4 + *(sub_100003930(&qword_100069940, &qword_10004C028) + 36));
  v11 = *(sub_100003930(&qword_100069948, &qword_10004C030) + 28);
  v12 = enum case for ColorScheme.dark(_:);
  v13 = sub_1000419B8();
  (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
  *v10 = KeyPath;
  *v4 = v5;
  *(v4 + 8) = 0;
  *(v4 + 16) = v6;
  result = memcpy((v4 + 17), v17, 0x601uLL);
  *(v4 + 1554) = __src[0];
  *(v4 + 1558) = __src[1];
  *(v4 + 1560) = v7;
  *(v4 + 1568) = v8;
  return result;
}

uint64_t sub_1000360E8(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v3 = v2;
  v4 = sub_100041AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  memcpy(v63, v1, sizeof(v63));
  memcpy(v64, v1, 0x1B3uLL);
  if (sub_10003A480(v64) == 1)
  {
    nullsub_1(v64);
    memcpy(v41, v63, 0x1B3uLL);
    v10 = nullsub_1(v41);
    memcpy(v55, v10, sizeof(v55));
    sub_10003A488(v1, v38);
  }

  else
  {
    nullsub_1(v64);
    memcpy(v41, v63, 0x1B3uLL);
    v11 = nullsub_1(v41);
    v27 = KeyPath;
    v12 = v3;
    v13 = *v11;
    sub_10003A488(v1, v38);
    sub_100042068();
    v14 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    v3 = v12;
    KeyPath = v27;
    swift_getAtKeyPath();
    sub_10003A4C0(v1);
    (*(v5 + 8))(v8, v4);
  }

  v34[0] = KeyPath;
  sub_100035EFC(v34);
  memcpy(v32, v34, sizeof(v32));
  memcpy(v35, v55, 0x1B2uLL);
  sub_10003A4F0(v35);
  sub_100041928();
  sub_100041DC8();
  sub_1000419E8();
  *&v56[4] = v57;
  *&v56[20] = v58;
  *&v56[36] = v59;
  v36[0] = swift_getKeyPath();
  sub_100035EFC(v36);
  memcpy(v31, v36, 0x1B3uLL);
  v15 = sub_100041BB8();
  sub_1000419A8();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v41[0] = 0;
  sub_100041DD8();
  v24 = sub_1000419E8();
  *&v33[7] = v60;
  *&v33[23] = v61;
  *&v33[39] = v62;
  sub_1000366F8(v24);
  memcpy(v37, v32, 0x1B3uLL);
  HIBYTE(v37[108]) = 1;
  *&v37[109] = *v56;
  *&v37[113] = *&v56[16];
  *&v37[117] = *&v56[32];
  v37[121] = *&v56[48];
  memcpy(v29, v37, 0x1E8uLL);
  memcpy(v38, v31, 0x1B8uLL);
  LOBYTE(v38[55]) = v15;
  v38[56] = v17;
  v38[57] = v19;
  v38[58] = v21;
  v38[59] = v23;
  LOBYTE(v38[60]) = 0;
  *(&v38[60] + 1) = *v33;
  *(&v38[62] + 1) = *&v33[16];
  *(&v38[64] + 1) = *&v33[32];
  v38[66] = *&v33[47];
  memcpy(&v29[488], v38, 0x218uLL);
  v28[504] = 0;
  memcpy(v39, v30, 0x1EAuLL);
  memcpy(&v28[7], v30, 0x1EAuLL);
  memcpy(v3, v29, 0x400uLL);
  *(v3 + 1024) = 0x4024000000000000;
  *(v3 + 1032) = 0;
  memcpy((v3 + 1033), v28, 0x1F1uLL);
  memcpy(v40, v30, 0x1EAuLL);
  sub_10001E390(v37, v41, &qword_100069950, &qword_10004C038);
  sub_10001E390(v38, v41, &qword_100069958, &qword_10004C040);
  sub_10001E390(v39, v41, &qword_100069960, &qword_10004C048);
  sub_10001E3F8(v40, &qword_100069960, &qword_10004C048);
  memcpy(v41, v31, 0x1B8uLL);
  v41[440] = v15;
  v42 = v17;
  v43 = v19;
  v44 = v21;
  v45 = v23;
  v46 = 0;
  v47 = *v33;
  v48 = *&v33[16];
  *v49 = *&v33[32];
  *&v49[15] = *&v33[47];
  sub_10001E3F8(v41, &qword_100069958, &qword_10004C040);
  memcpy(v50, v32, 0x1B3uLL);
  v50[435] = 1;
  v51 = *v56;
  v52 = *&v56[16];
  v53 = *&v56[32];
  v54 = *&v56[48];
  return sub_10001E3F8(v50, &qword_100069950, &qword_10004C038);
}

void *sub_1000366F8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_100041AC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v81, v2, sizeof(v81));
  memcpy(v82, v2, 0x1B3uLL);
  _ZF = sub_10003A480(v82) == 1;
  v56 = v6;
  if (_ZF)
  {
    nullsub_1(v82);
    memcpy(v75, v81, 0x1B3uLL);
    v11 = nullsub_1(v75);
    memcpy(v77, v11, sizeof(v77));
    sub_10003A488(v2, v74);
  }

  else
  {
    nullsub_1(v82);
    memcpy(v75, v81, 0x1B3uLL);
    v12 = *nullsub_1(v75);
    sub_10003A488(v2, v74);
    sub_100042068();
    v13 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003A4C0(v2);
    (*(v6 + 8))(v9, v5);
  }

  memcpy(v76, &v77[8], 0x1AAuLL);
  v14 = v76[48];
  v15 = v76[49];
  v16 = v76[50];
  v17 = v76[51];
  v18 = LOBYTE(v76[53]);
  sub_10003A544(v76[48], v76[49], v76[50], v76[51], v76[52], v76[53]);
  sub_10003A590(v76);
  v57 = v4;
  if (!(v18 >> 6))
  {
    memcpy(v59, v81, 0x1B3uLL);
    if (sub_10003A480(v59) == 1)
    {
      nullsub_1(v59);
      memcpy(v75, v81, 0x1B3uLL);
      v20 = nullsub_1(v75);
      memcpy(v61, v20, 0x1B2uLL);
      sub_10003A488(v2, v74);
    }

    else
    {
      nullsub_1(v59);
      memcpy(v75, v81, 0x1B3uLL);
      v54[1] = *nullsub_1(v75);
      sub_10003A488(v2, v74);
      sub_100042068();
      v26 = v5;
      v27 = v14;
      v28 = sub_100041B98();
      sub_100041968();

      v14 = v27;
      sub_100041AB8();
      swift_getAtKeyPath();
      sub_10003A4C0(v2);
      (*(v56 + 8))(v9, v26);
    }

    memcpy(v60, v61, 0x1B2uLL);
    sub_10003A4F0(v60);
    v29 = qword_10004C1E0[v60[0]];
    v30 = qword_10004C200[v60[0]];
    v31 = qword_10004C220[v60[0]];
    v32 = sub_100041BA8();
    LOBYTE(v58[0]) = 0;
    v63[0] = v14;
    v63[1] = v15;
    v63[2] = v16;
    v63[3] = v17;
    LOBYTE(v63[4]) = v32;
    v63[5] = v29;
    v63[6] = v29;
    v63[7] = v30;
    v63[8] = v31;
    LOBYTE(v63[9]) = 0;
    sub_10003A9FC(v63);
    memcpy(v75, v63, 0x1E9uLL);
    sub_100003930(&qword_100069950, &qword_10004C038);
    sub_100003930(&qword_100069990, &qword_10004C060);
    sub_10003A6A0();
    sub_10003A72C();
    sub_100041B78();
    memcpy(v74, v62, 0x1E9uLL);
    sub_10003AA08(v74);
    goto LABEL_30;
  }

  if (v18 >> 6 == 1)
  {
    memcpy(v63, v81, 0x1B3uLL);
    _ZF = sub_10003A480(v63) == 1;
    v55 = v14;
    if (_ZF)
    {
      nullsub_1(v63);
      memcpy(v75, v81, 0x1B3uLL);
      v19 = nullsub_1(v75);
      memcpy(v61, v19, 0x1B2uLL);
      sub_10003A488(v2, v74);
    }

    else
    {
      nullsub_1(v63);
      memcpy(v75, v81, 0x1B3uLL);
      v23 = *nullsub_1(v75);
      sub_10003A488(v2, v74);
      sub_100042068();
      v24 = sub_100041B98();
      sub_100041968();

      sub_100041AB8();
      swift_getAtKeyPath();
      sub_10003A4C0(v2);
      (*(v56 + 8))(v9, v5);
    }

    memcpy(v60, v61, 0x1B2uLL);
    sub_10003A4F0(v60);
    if (v60[0] == 2)
    {
      memcpy(v75, v81, 0x1B3uLL);
      if (sub_10003A480(v75) == 1)
      {
        nullsub_1(v75);
        memcpy(v74, v81, 0x1B3uLL);
        v25 = nullsub_1(v74);
        memcpy(v58, v25, 0x1B2uLL);
        sub_10003A488(v2, v73);
      }

      else
      {
        nullsub_1(v75);
        memcpy(v74, v81, 0x1B3uLL);
        v35 = *nullsub_1(v74);
        sub_10003A488(v2, v73);
        sub_100042068();
        v36 = sub_100041B98();
        sub_100041968();

        sub_100041AB8();
        swift_getAtKeyPath();
        sub_10003A4C0(v2);
        (*(v56 + 8))(v9, v5);
      }

      memcpy(v70, v58, 0x1B2uLL);
      sub_10003A4F0(v70);
      sub_100041928();
      memcpy(v74, v81, 0x1B3uLL);
      if (sub_10003A480(v74) == 1)
      {
        nullsub_1(v74);
        memcpy(v73, v81, 0x1B3uLL);
        v37 = nullsub_1(v73);
        memcpy(v69, v37, 0x1B2uLL);
        sub_10003A488(v2, v62);
      }

      else
      {
        nullsub_1(v74);
        memcpy(v73, v81, 0x1B3uLL);
        v38 = *nullsub_1(v73);
        sub_10003A488(v2, v62);
        sub_100042068();
        v39 = sub_100041B98();
        sub_100041968();

        sub_100041AB8();
        swift_getAtKeyPath();
        sub_10003A4C0(v2);
        (*(v56 + 8))(v9, v5);
      }

      memcpy(v68, v69, sizeof(v68));
      sub_10003A4F0(v68);
      sub_100041928();
      sub_100041DC8();
      sub_1000419E8();
      *&v71[7] = v78;
      *&v71[23] = v79;
      *&v71[39] = v80;
      memcpy(v73, v81, 0x1B3uLL);
      if (sub_10003A480(v73) == 1)
      {
        nullsub_1(v73);
        memcpy(v62, v81, 0x1B3uLL);
        v40 = nullsub_1(v62);
        memcpy(v67, v40, sizeof(v67));
        sub_10003A488(v2, v59);
      }

      else
      {
        nullsub_1(v73);
        memcpy(v62, v81, 0x1B3uLL);
        v41 = *nullsub_1(v62);
        sub_10003A488(v2, v59);
        sub_100042068();
        v42 = sub_100041B98();
        sub_100041968();

        sub_100041AB8();
        swift_getAtKeyPath();
        sub_10003A4C0(v2);
        (*(v56 + 8))(v9, v5);
      }

      v43 = v55;
      memcpy(v62, v67, 0x1B2uLL);
      sub_10003A4F0(v62);
      v44 = qword_10004C1E0[v62[0]];
      v45 = qword_10004C200[v62[0]];
      v46 = qword_10004C220[v62[0]];
      v47 = sub_100041BA8();
      __asm { FMOV            V0.2D, #0.5 }

      *&v64[8] = _Q0;
      __asm { FMOV            V0.2D, #1.0 }

      *&v64[24] = _Q0;
      *&v64[41] = *v71;
      v72 = 0;
      *v64 = v43;
      v64[40] = 0;
      *&v64[57] = *&v71[16];
      *&v64[73] = *&v71[32];
      *&v64[88] = *&v71[47];
      LOBYTE(v65) = v47;
      *(&v65 + 1) = v44;
      *v66 = v44;
      *&v66[8] = v45;
      *&v66[16] = v46;
      v66[24] = 0;
      nullsub_1(v64);
      v59[6] = v65;
      v59[7] = *v66;
      *(&v59[7] + 9) = *&v66[9];
      v59[2] = *&v64[32];
      v59[3] = *&v64[48];
      v59[4] = *&v64[64];
      v59[5] = *&v64[80];
      v59[0] = *v64;
      v59[1] = *&v64[16];
    }

    else
    {
      sub_10003A5E4(v59);
    }

    v74[5] = v59[5];
    v74[6] = v59[6];
    v74[7] = v59[7];
    *(&v74[7] + 9) = *(&v59[7] + 9);
    v74[2] = v59[2];
    v74[3] = v59[3];
    v74[4] = v59[4];
    v74[0] = v59[0];
    v74[1] = v59[1];
    sub_10003A608(v74);
LABEL_30:
    memcpy(v73, v74, 0x1EAuLL);
    sub_100003930(&qword_100069968, &qword_10004C050);
    sub_100003930(&qword_100069970, &qword_10004C058);
    sub_10003A614();
    sub_10003A80C();
    sub_100041B78();
    return memcpy(v57, v75, 0x1EAuLL);
  }

  KeyPath = swift_getKeyPath();
  memcpy(v61, v81, 0x1B3uLL);
  if (sub_10003A480(v61) == 1)
  {
    nullsub_1(v61);
    memcpy(v75, v81, 0x1B3uLL);
    v22 = nullsub_1(v75);
    memcpy(v70, v22, 0x1B2uLL);
    sub_10003A488(v2, v74);
  }

  else
  {
    nullsub_1(v61);
    memcpy(v75, v81, 0x1B3uLL);
    v33 = *nullsub_1(v75);
    sub_10003A488(v2, v74);
    sub_100042068();
    v34 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003A4C0(v2);
    (*(v56 + 8))(v9, v5);
  }

  v58[0] = KeyPath;
  sub_100035EFC(v58);
  memcpy(v60, v58, 0x1B3uLL);
  memcpy(v69, v70, 0x1B2uLL);
  sub_10003A4F0(v69);
  sub_100041928();
  sub_100041DC8();
  sub_1000419E8();
  *&v68[4] = *v67;
  *&v68[20] = *&v67[16];
  *&v68[36] = *&v67[32];
  memcpy(v59, v60, 0x1B3uLL);
  BYTE3(v59[27]) = 0;
  *(&v59[27] + 4) = *v68;
  *(&v59[28] + 4) = *&v68[16];
  *(&v59[29] + 4) = *&v68[32];
  DWORD1(v59[30]) = *&v67[44];
  memcpy(v63, v59, 0x1E8uLL);
  sub_10003AA10(v63);
  memcpy(v75, v63, 0x1E9uLL);
  sub_10001E390(v59, v74, &qword_100069950, &qword_10004C038);
  sub_100003930(&qword_100069950, &qword_10004C038);
  sub_100003930(&qword_100069990, &qword_10004C060);
  sub_10003A6A0();
  sub_10003A72C();
  sub_100041B78();
  memcpy(v74, v62, 0x1E9uLL);
  sub_10003AA08(v74);
  memcpy(v75, v74, 0x1EAuLL);
  sub_100003930(&qword_100069968, &qword_10004C050);
  sub_100003930(&qword_100069970, &qword_10004C058);
  sub_10003A614();
  sub_10003A80C();
  sub_100041B78();
  sub_10001E3F8(v59, &qword_100069950, &qword_10004C038);
  memcpy(v75, v73, 0x1EAuLL);
  return memcpy(v57, v75, 0x1EAuLL);
}

uint64_t sub_1000376C4(uint64_t a1)
{
  v2 = sub_1000419B8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100041A48();
}

double sub_1000377D8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  v5 = sub_100041AC8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v1[435] & 1) == 0)
  {
    memcpy(v52, v1, sizeof(v52));
    memcpy(v53, v1, 0x1B3uLL);
    v12 = sub_10003A480(v53) == 1;
    v40 = v5;
    if (v12)
    {
      nullsub_1(v53);
      memcpy(v50, v52, 0x1B3uLL);
      v13 = nullsub_1(v50);
      memcpy(v51, v13, sizeof(v51));
      sub_10003AA18(v1, v49);
    }

    else
    {
      nullsub_1(v53);
      memcpy(v50, v52, 0x1B3uLL);
      v22 = *nullsub_1(v50);
      sub_10003AA18(v2, v49);
      sub_100042068();
      v23 = sub_100041B98();
      sub_100041968();

      sub_100041AB8();
      swift_getAtKeyPath();
      sub_10003AA50(v2);
      (*(v6 + 8))(v9, v5);
    }

    memcpy(v48, &v51[8], 0x1AAuLL);
    memcpy(v63, &v51[72], sizeof(v63));
    sub_10003AA80(&v48[64], v49);
    sub_10003A590(v48);
    memcpy(v50, v52, 0x1B3uLL);
    if (sub_10003A480(v50) == 1)
    {
      nullsub_1(v50);
      memcpy(v46, v52, 0x1B3uLL);
      v24 = nullsub_1(v46);
      memcpy(v47, v24, sizeof(v47));
      sub_10003AA18(v2, v49);
    }

    else
    {
      nullsub_1(v50);
      memcpy(v46, v52, 0x1B3uLL);
      v25 = *nullsub_1(v46);
      sub_10003AA18(v2, v49);
      sub_100042068();
      v26 = sub_100041B98();
      sub_100041968();

      sub_100041AB8();
      swift_getAtKeyPath();
      sub_10003AA50(v2);
      (*(v6 + 8))(v9, v40);
    }

    memcpy(v45, v47, 0x1B2uLL);
    sub_10003A4F0(v45);
    sub_100041918();
    sub_10003AADC(&v48[64]);
    v57 = *&v54[40];
    v58 = v55;
    v59 = v56;
    sub_10001E390(&v57, v49, &qword_1000699D0, &qword_10004C078);
    sub_10003AB30(v54);
    if (v59 == 255)
    {
      v10 = 0;
    }

    else
    {
      v60 = v57;
      v61 = v58;
      v62 = v59;
      v10 = sub_100039B54();
      sub_10001E3F8(&v57, &qword_1000699D0, &qword_10004C078);
    }

    memcpy(v46, v52, 0x1B3uLL);
    if (sub_10003A480(v46) == 1)
    {
      nullsub_1(v46);
      memcpy(v43, v52, 0x1B3uLL);
      v27 = nullsub_1(v43);
      memcpy(v44, v27, sizeof(v44));
      sub_10003AA18(v2, v49);
    }

    else
    {
      nullsub_1(v46);
      memcpy(v43, v52, 0x1B3uLL);
      v28 = *nullsub_1(v43);
      sub_10003AA18(v2, v49);
      sub_100042068();
      v29 = sub_100041B98();
      sub_100041968();

      sub_100041AB8();
      swift_getAtKeyPath();
      sub_10003AA50(v2);
      (*(v6 + 8))(v9, v40);
    }

    memcpy(v49, v44, sizeof(v49));
    sub_10003A4F0(v49);
    if (v49[0] >= 2u)
    {
      if (v49[0] != 2)
      {
        v19 = 10.0;
        v20 = 0.0;
        v21 = 0.0;
        goto LABEL_25;
      }

LABEL_24:
      v21 = 20.0;
      v20 = 0.0;
      v19 = 0.0;
      goto LABEL_25;
    }

LABEL_21:
    v20 = 4.0;
    v21 = 4.0;
    v19 = 4.0;
    goto LABEL_25;
  }

  v10 = sub_10003816C();
  memcpy(v52, v2, sizeof(v52));
  memcpy(v53, v2, 0x1B3uLL);
  if (sub_10003A480(v53) == 1)
  {
    nullsub_1(v53);
    memcpy(v50, v52, 0x1B3uLL);
    v11 = nullsub_1(v50);
    memcpy(v46, v11, 0x1B2uLL);
    sub_10003AA18(v2, v49);
  }

  else
  {
    nullsub_1(v53);
    memcpy(v50, v52, 0x1B3uLL);
    v14 = *nullsub_1(v50);
    sub_10003AA18(v2, v49);
    sub_100042068();
    v15 = sub_100041B98();
    v39 = v10;
    v16 = v5;
    v17 = v15;
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003AA50(v2);
    v18 = v16;
    v10 = v39;
    (*(v6 + 8))(v9, v18);
  }

  memcpy(v49, v46, sizeof(v49));
  sub_10003A4F0(v49);
  if (v49[0] < 2u)
  {
    goto LABEL_21;
  }

  if (v49[0] == 2)
  {
    goto LABEL_24;
  }

  v19 = 0.0;
  v20 = 20.0;
  v21 = 20.0;
LABEL_25:
  v30 = sub_100041B18();
  v46[0] = 1;
  sub_100038524(v10, v52, v20, v20, v21, v19);
  v53[6] = *&v52[96];
  v53[7] = *&v52[112];
  v53[2] = *&v52[32];
  v53[3] = *&v52[48];
  v53[4] = *&v52[64];
  v53[5] = *&v52[80];
  v53[0] = *v52;
  v53[1] = *&v52[16];
  *&v49[80] = *&v52[80];
  *&v49[96] = *&v52[96];
  *&v49[112] = *&v52[112];
  *&v49[16] = *&v52[16];
  *&v49[32] = *&v52[32];
  *&v49[48] = *&v52[48];
  *&v49[64] = *&v52[64];
  LOBYTE(v53[8]) = v52[128];
  v49[128] = v52[128];
  *v49 = *v52;
  sub_10001E390(v53, v50, &qword_1000699D8, &qword_10004C080);
  sub_10001E3F8(v49, &qword_1000699D8, &qword_10004C080);
  *&v41[87] = v53[5];
  *&v41[103] = v53[6];
  *&v41[119] = v53[7];
  *&v41[23] = v53[1];
  *&v41[39] = v53[2];
  *&v41[55] = v53[3];
  *&v41[71] = v53[4];
  v41[135] = v53[8];
  *&v41[7] = v53[0];
  v31 = v46[0];
  sub_100041DC8();
  sub_1000419E8();

  *&v42[7] = *v52;
  *&v42[23] = *&v52[16];
  *&v42[39] = *&v52[32];
  v32 = *&v41[64];
  *(v4 + 97) = *&v41[80];
  v33 = *&v41[112];
  *(v4 + 113) = *&v41[96];
  *(v4 + 129) = v33;
  v34 = *v41;
  *(v4 + 33) = *&v41[16];
  v35 = *&v41[48];
  *(v4 + 49) = *&v41[32];
  *(v4 + 65) = v35;
  *(v4 + 81) = v32;
  *(v4 + 17) = v34;
  v36 = *&v42[16];
  *(v4 + 153) = *v42;
  *v4 = v30;
  *(v4 + 8) = 0;
  *(v4 + 16) = v31;
  *(v4 + 145) = *&v41[128];
  *(v4 + 169) = v36;
  result = *&v42[32];
  *(v4 + 185) = *&v42[32];
  *(v4 + 200) = *&v42[47];
  return result;
}

uint64_t sub_10003816C()
{
  v1 = sub_100041AC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v27, v0, sizeof(v27));
  memcpy(v28, v0, 0x1B3uLL);
  if (sub_10003A480(v28) == 1)
  {
    nullsub_1(v28);
    memcpy(v22, v27, 0x1B3uLL);
    v6 = nullsub_1(v22);
    memcpy(v23, v6, sizeof(v23));
    sub_10003AA18(v0, v21);
  }

  else
  {
    nullsub_1(v28);
    memcpy(v22, v27, 0x1B3uLL);
    v7 = *nullsub_1(v22);
    sub_10003AA18(v0, v21);
    sub_100042068();
    v8 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003AA50(v0);
    (*(v2 + 8))(v5, v1);
  }

  memcpy(v20, &v23[8], 0x1AAuLL);
  memcpy(v26, &v23[72], sizeof(v26));
  sub_10003AA80(&v20[64], v21);
  sub_10003A590(v20);
  memcpy(v22, v27, 0x1B3uLL);
  if (sub_10003A480(v22) == 1)
  {
    nullsub_1(v22);
    memcpy(v18, v27, sizeof(v18));
    v9 = nullsub_1(v18);
    memcpy(v19, v9, sizeof(v19));
    sub_10003AA18(v0, v21);
  }

  else
  {
    nullsub_1(v22);
    memcpy(v18, v27, sizeof(v18));
    v10 = *nullsub_1(v18);
    sub_10003AA18(v0, v21);
    sub_100042068();
    v11 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003AA50(v0);
    (*(v2 + 8))(v5, v1);
  }

  memcpy(v21, v19, 0x1B2uLL);
  sub_10003A4F0(v21);
  sub_100041918();
  sub_10003AADC(&v20[64]);
  v24[0] = *v18;
  v24[1] = *&v18[16];
  v25 = v18[32];
  sub_1000078B8(v24, v17);
  sub_10003AB30(v18);
  v12 = sub_100039B54();
  sub_10003AB84(v24);
  if (v12)
  {
    return v12;
  }

  v14 = sub_100041888();
  v15 = *v14;
  v16 = v14[1];

  return sub_100041D68();
}

__n128 sub_100038524@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_100041D78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    (*(v13 + 104))(v16, enum case for Image.ResizingMode.stretch(_:), v12);
    v17 = sub_100041D88();
    (*(v13 + 8))(v16, v12);
    v18 = sub_100041DC8();
    v20 = v19;
    sub_100038750(&v39);
    v21 = v41;
    v22 = BYTE8(v41);
    v28 = v40;
    v29 = v39;
    v37 = 1;
    v23 = sub_100041BA8();
    v38 = 0;
    *&v30[0] = v17;
    *(v30 + 8) = v29;
    *(&v30[1] + 8) = v28;
    *(&v30[2] + 1) = v21;
    LOBYTE(v31) = v22;
    *(&v31 + 1) = v18;
    v32 = v20;
    LOWORD(v33) = 1;
    BYTE8(v33) = v23;
    *&v34 = a3;
    *(&v34 + 1) = a4;
    *&v35 = a5;
    *(&v35 + 1) = a6;
    v36 = 0;
    nullsub_1(v30);
    v45 = v34;
    v46 = v35;
    v47 = v36;
    v41 = v30[2];
    v42 = v31;
    v43 = v32;
    v44 = v33;
    v39 = v30[0];
    v40 = v30[1];
  }

  else
  {
    sub_10003B22C(&v39);
  }

  v24 = v46;
  *(a2 + 96) = v45;
  *(a2 + 112) = v24;
  *(a2 + 128) = v47;
  v25 = v42;
  *(a2 + 32) = v41;
  *(a2 + 48) = v25;
  v26 = v44;
  *(a2 + 64) = v43;
  *(a2 + 80) = v26;
  result = v40;
  *a2 = v39;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_100038750@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v29, v2, sizeof(v29));
  memcpy(v30, v2, 0x1B3uLL);
  if (sub_10003A480(v30) == 1)
  {
    nullsub_1(v30);
    memcpy(v27, v29, 0x1B3uLL);
    v9 = nullsub_1(v27);
    memcpy(v28, v9, sizeof(v28));
    sub_10003AA18(v2, v26);
  }

  else
  {
    nullsub_1(v30);
    memcpy(v27, v29, 0x1B3uLL);
    v10 = *nullsub_1(v27);
    sub_10003AA18(v2, v26);
    sub_100042068();
    v11 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003AA50(v2);
    (*(v5 + 8))(v8, v4);
  }

  memcpy(v25, v28, 0x1B2uLL);
  result = sub_10003A4F0(v25);
  if (v25[0] != 3)
  {
    goto LABEL_11;
  }

  memcpy(v27, v29, 0x1B3uLL);
  if (sub_10003A480(v27) == 1)
  {
    nullsub_1(v27);
    memcpy(v23, v29, 0x1B3uLL);
    v13 = nullsub_1(v23);
    memcpy(v24, v13, sizeof(v24));
    sub_10003AA18(v2, v26);
  }

  else
  {
    nullsub_1(v27);
    memcpy(v23, v29, 0x1B3uLL);
    v14 = *nullsub_1(v23);
    sub_10003AA18(v2, v26);
    sub_100042068();
    v15 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003AA50(v2);
    (*(v5 + 8))(v8, v4);
  }

  memcpy(v26, &v24[8], 0x1AAuLL);
  v16 = v26[48];
  v17 = v26[49];
  v18 = v26[50];
  v19 = v26[51];
  v20 = v26[52];
  v21 = v26[53];
  sub_10003A544(v26[48], v26[49], v26[50], v26[51], v26[52], v26[53]);
  result = sub_10003A590(v26);
  if ((v21 & 0xC0) != 0x40)
  {
    result = sub_10003B248(v16, v17, v18, v19, v20, v21);
LABEL_11:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v22 = 3;
    goto LABEL_12;
  }

  v22 = v21 & 0x3F;
LABEL_12:
  *a1 = v16;
  *(a1 + 8) = v17;
  *(a1 + 16) = v18;
  *(a1 + 24) = v19;
  *(a1 + 32) = v20;
  *(a1 + 40) = v22;
  return result;
}

uint64_t sub_100038B54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100041AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100041B28();
  v31 = 1;
  sub_100038EB4(v2, v41);
  v36 = v41[4];
  v37 = v41[5];
  v32 = v41[0];
  v33 = v41[1];
  v34 = v41[2];
  v35 = v41[3];
  v38 = v41[6];
  v39[0] = v41[0];
  v39[1] = v41[1];
  v39[2] = v41[2];
  v39[3] = v41[3];
  v39[4] = v41[4];
  v39[5] = v41[5];
  v39[6] = v41[6];
  sub_10001E390(&v32, v40, &qword_100069A58, &qword_10004C158);
  sub_10001E3F8(v39, &qword_100069A58, &qword_10004C158);
  *&v30[55] = v35;
  *&v30[71] = v36;
  *&v30[87] = v37;
  *&v30[103] = v38;
  *&v30[7] = v32;
  *&v30[23] = v33;
  *&v30[39] = v34;
  v10 = v31;
  v11 = sub_100041BC8();
  memcpy(v40, v2, 0x1B3uLL);
  memcpy(v41, v2, 0x1B3uLL);
  if (sub_10003A480(v41) == 1)
  {
    nullsub_1(v41);
    memcpy(v28, v40, 0x1B3uLL);
    v12 = nullsub_1(v28);
    memcpy(v29, v12, sizeof(v29));
    sub_10003B69C(v2, v27);
  }

  else
  {
    nullsub_1(v41);
    memcpy(v28, v40, 0x1B3uLL);
    v26 = *nullsub_1(v28);
    sub_10003B69C(v2, v27);
    sub_100042068();
    v24 = v2;
    v13 = sub_100041B98();
    v25 = v4;
    v14 = v13;
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(v24);
    (*(v5 + 8))(v8, v25);
  }

  memcpy(v28, v29, 0x1B2uLL);
  sub_10003A4F0(v28);
  v15 = qword_10004C240[v28[0]];
  result = sub_1000419A8();
  v17 = *&v30[80];
  *(a1 + 81) = *&v30[64];
  *(a1 + 97) = v17;
  *(a1 + 113) = *&v30[96];
  v18 = *&v30[16];
  *(a1 + 17) = *v30;
  *(a1 + 33) = v18;
  v19 = *&v30[48];
  *(a1 + 49) = *&v30[32];
  *a1 = v9;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 128) = *&v30[111];
  *(a1 + 65) = v19;
  *(a1 + 136) = v11;
  *(a1 + 144) = v20;
  *(a1 + 152) = v21;
  *(a1 + 160) = v22;
  *(a1 + 168) = v23;
  *(a1 + 176) = 0;
  return result;
}

uint64_t sub_100038EB4@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100041AC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v39, a1, sizeof(v39));
  memcpy(v40, a1, 0x1B3uLL);
  if (sub_10003A480(v40) == 1)
  {
    nullsub_1(v40);
    memcpy(v37, v39, 0x1B3uLL);
    v9 = nullsub_1(v37);
    memcpy(v38, v9, sizeof(v38));
    sub_10003B69C(a1, v32);
  }

  else
  {
    nullsub_1(v40);
    memcpy(v37, v39, 0x1B3uLL);
    v10 = *nullsub_1(v37);
    sub_10003B69C(a1, v32);
    sub_100042068();
    v11 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(a1);
    (*(v5 + 8))(v8, v4);
  }

  memcpy(v37, v38, 0x1B2uLL);
  sub_10003A4F0(v37);
  v12 = v37[0] != 2;
  sub_1000391EC(a1);
  KeyPath = swift_getKeyPath();
  v14 = swift_getKeyPath();
  v24 = v12;
  v29[3] = v28;
  v29[2] = v27;
  v29[1] = v26;
  v29[0] = v25;
  *&v30 = KeyPath;
  BYTE8(v30) = 0;
  *&v31 = v14;
  *(&v31 + 1) = 0x3F847AE147AE147BLL;
  *&v23[6] = v25;
  *&v23[22] = v26;
  *&v23[86] = v31;
  *&v23[70] = v30;
  *&v23[54] = v28;
  *&v23[38] = v27;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = v12;
  v15 = *v23;
  v16 = *&v23[16];
  v17 = *&v23[48];
  *(a2 + 42) = *&v23[32];
  *(a2 + 26) = v16;
  *(a2 + 10) = v15;
  v18 = *&v23[64];
  v19 = *&v23[80];
  *(a2 + 104) = *&v23[94];
  *(a2 + 90) = v19;
  *(a2 + 74) = v18;
  *(a2 + 58) = v17;
  v32[2] = v27;
  v32[3] = v28;
  v32[0] = v25;
  v32[1] = v26;
  v33 = KeyPath;
  v34 = 0;
  v35 = v14;
  v36 = 0x3F847AE147AE147BLL;
  sub_10001E390(v29, &v22, &qword_100069A60, &qword_10004C1C0);
  return sub_10001E3F8(v32, &qword_100069A60, &qword_10004C1C0);
}

uint64_t sub_1000391EC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v77 = v2;
  v3 = sub_100041AC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v98, v1, sizeof(v98));
  memcpy(v99, v1, 0x1B3uLL);
  if (sub_10003A480(v99) == 1)
  {
    nullsub_1(v99);
    memcpy(v88, v98, 0x1B3uLL);
    v8 = nullsub_1(v88);
    memcpy(v89, v8, 0x1B2uLL);
    sub_10003B69C(v1, v87);
  }

  else
  {
    nullsub_1(v99);
    memcpy(v88, v98, 0x1B3uLL);
    v9 = *nullsub_1(v88);
    sub_10003B69C(v1, v87);
    sub_100042068();
    v10 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(v1);
    (*(v4 + 8))(v7, v3);
  }

  memcpy(v86, &v89[1], 0x1AAuLL);
  v94 = *&v89[1];
  v95 = *&v89[3];
  v96 = *&v89[5];
  v97 = *&v89[7];
  sub_10003B7AC(v86, v88);
  sub_10003A590(v86);
  memcpy(v88, v98, 0x1B3uLL);
  v11 = sub_10003A480(v88) == 1;
  v75 = v3;
  v76 = v1;
  v73 = v7;
  v74 = v4;
  if (v11)
  {
    nullsub_1(v88);
    memcpy(v87, v98, 0x1B3uLL);
    v12 = nullsub_1(v87);
    memcpy(v85, v12, sizeof(v85));
    sub_10003B69C(v1, v84);
  }

  else
  {
    nullsub_1(v88);
    memcpy(v87, v98, 0x1B3uLL);
    v13 = *nullsub_1(v87);
    sub_10003B69C(v1, v84);
    sub_100042068();
    v14 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(v1);
    (*(v4 + 8))(v7, v3);
  }

  memcpy(v83, v85, 0x1B2uLL);
  sub_10003A4F0(v83);
  v15 = sub_1000418F8();
  v17 = v16;
  sub_10003B808(v86);

  v87[0] = v15;
  v87[1] = v17;
  v69[1] = sub_100024FB4();
  v18 = sub_100041C68();
  v20 = v19;
  v22 = v21;
  sub_100041C18();
  v23 = sub_100041C48();
  v25 = v24;
  v27 = v26;

  sub_100003E0C(v18, v20, v22 & 1);

  sub_100041D38();
  v28 = sub_100041C38();
  v71 = v29;
  v72 = v28;
  v70 = v30;
  v32 = v31;

  sub_100003E0C(v23, v25, v27 & 1);

  memcpy(v87, v98, 0x1B3uLL);
  if (sub_10003A480(v87) == 1)
  {
    nullsub_1(v87);
    memcpy(v84, v98, 0x1B3uLL);
    v33 = nullsub_1(v84);
    memcpy(v82, v33, 0x1B2uLL);
    v34 = v76;
    sub_10003B69C(v76, v81);
    v36 = v74;
    v35 = v75;
    v37 = v73;
  }

  else
  {
    nullsub_1(v87);
    memcpy(v84, v98, 0x1B3uLL);
    v38 = *nullsub_1(v84);
    v34 = v76;
    sub_10003B69C(v76, v81);
    sub_100042068();
    v39 = sub_100041B98();
    sub_100041968();

    v37 = v73;
    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(v34);
    v36 = v74;
    v35 = v75;
    (*(v74 + 8))(v37, v75);
  }

  memcpy(v80, &v82[1], 0x1AAuLL);
  v90 = *&v82[1];
  v91 = *&v82[3];
  v92 = *&v82[5];
  v93 = *&v82[7];
  sub_10003B7AC(v80, v84);
  sub_10003A590(v80);
  memcpy(v84, v98, 0x1B3uLL);
  if (sub_10003A480(v84) == 1)
  {
    nullsub_1(v84);
    memcpy(v81, v98, 0x1B3uLL);
    v40 = nullsub_1(v81);
    memcpy(v79, v40, sizeof(v79));
    sub_10003B69C(v34, v78);
  }

  else
  {
    nullsub_1(v84);
    memcpy(v81, v98, 0x1B3uLL);
    v41 = *nullsub_1(v81);
    sub_10003B69C(v34, v78);
    sub_100042068();
    v42 = sub_100041B98();
    sub_100041968();

    sub_100041AB8();
    swift_getAtKeyPath();
    sub_10003B6D4(v34);
    (*(v36 + 8))(v37, v35);
  }

  memcpy(v81, v79, 0x1B2uLL);
  sub_10003A4F0(v81);
  sub_1000418F8();
  v44 = v43;
  v46 = v45;
  sub_10003B808(v80);

  if (v46)
  {
    v78[0] = v44;
    v78[1] = v46;
    v47 = sub_100041C68();
    v49 = v48;
    v51 = v50;
    sub_100041BD8();
    v52 = sub_100041C48();
    v54 = v53;
    v56 = v55;
    v76 = v32;

    sub_100003E0C(v47, v49, v51 & 1);

    sub_100041D48();
    v57 = sub_100041C38();
    v46 = v58;
    v60 = v59;
    v62 = v61;

    sub_100003E0C(v52, v54, v56 & 1);
    v32 = v76;

    v63 = v60 & 1;
    sub_100003E1C(v57, v46, v63);
  }

  else
  {
    v57 = 0;
    v63 = 0;
    v62 = 0;
  }

  v64 = v70 & 1;
  v66 = v71;
  v65 = v72;
  sub_100003E1C(v72, v71, v70 & 1);

  sub_10003B85C(v57, v46, v63, v62);
  sub_100003DC8(v57, v46, v63, v62);
  LOBYTE(v78[0]) = v64;
  v67 = v77;
  *v77 = v65;
  v67[1] = v66;
  *(v67 + 16) = v64;
  v67[3] = v32;
  v67[4] = v57;
  v67[5] = v46;
  v67[6] = v63;
  v67[7] = v62;
  sub_100003DC8(v57, v46, v63, v62);
  sub_100003E0C(v65, v66, v64);
}

uint64_t sub_100039B54()
{
  v1 = v0;
  v2 = *(v0 + 8);
  v3 = sub_100041998();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = *(v47 + 64);
  v5 = __chkstk_darwin(v3);
  __chkstk_darwin(v5);
  v46 = &v46 - v6;
  v7 = sub_1000417F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100003930(&qword_1000699E0, &qword_10004C088);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v46 - v14;
  v16 = sub_100041818();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *v1;
  if (!*(v1 + 32))
  {

    return sub_100041D68();
  }

  if (*(v1 + 32) == 1)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    (*(v8 + 104))(v11, enum case for URL.DirectoryHint.inferFromPath(_:), v7);

    sub_100041808();
    v30 = sub_100041828();
    v32 = v31;
    (*(v17 + 8))(v20, v16);
    v33 = objc_allocWithZone(UIImage);
    sub_10003B180(v30, v32);
    isa = sub_100041838().super.isa;
    v35 = [v33 initWithData:isa];

    sub_10003B1D4(v30, v32);
    if (v35)
    {
      v36 = sub_100041D58();
      sub_10003B1D4(v30, v32);
      return v36;
    }

    v37 = v32;
    v38 = sub_1000418A8();
    v39 = v46;
    v40 = v47;
    v41 = v48;
    (*(v47 + 16))(v46, v38, v48);

    v42 = sub_100041978();
    v43 = sub_100042058();
    sub_10003AB84(v1);
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v50 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_10003ABD8(v49, v2, &v50);
      _os_log_impl(&_mh_execute_header, v42, v43, "Unable to read live activity image from stored data at path: %s", v44, 0xCu);
      sub_1000039EC(v45);

      sub_10003B1D4(v30, v37);
    }

    else
    {
      sub_10003B1D4(v30, v37);
    }

    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v23 = *(v1 + 16);
    v22 = *(v1 + 24);
    v24 = objc_allocWithZone(NSBundle);
    v25 = sub_100041FD8();
    v26 = [v24 initWithPath:v25];

    v27 = [objc_opt_self() currentTraitCollection];
    v28 = sub_100041FD8();
    v29 = [objc_opt_self() imageNamed:v28 inBundle:v26 compatibleWithTraitCollection:v27];

    if (v29)
    {
      return sub_100041D58();
    }
  }

  return 0;
}

uint64_t sub_10003A208()
{
  v1 = *(v0 + 16);
  sub_100003930(&qword_100069918, &qword_10004B3C8);
  return sub_100041F48();
}

uint64_t sub_10003A25C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 436))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 434);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003A2A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 436) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 436) = 0;
    }

    if (a2)
    {
      *(result + 434) = -a2;
    }
  }

  return result;
}

unint64_t sub_10003A3D0(uint64_t a1)
{
  result = sub_100035A14();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003A3F8(uint64_t a1)
{
  result = sub_100035E44();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10003A544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

double sub_10003A5E4(uint64_t a1)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  *(a1 + 40) = 3;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 121) = 0u;
  return result;
}

unint64_t sub_10003A614()
{
  result = qword_100069978;
  if (!qword_100069978)
  {
    sub_100003830(&qword_100069968, &qword_10004C050);
    sub_10003A6A0();
    sub_10003A72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069978);
  }

  return result;
}

unint64_t sub_10003A6A0()
{
  result = qword_100069980;
  if (!qword_100069980)
  {
    sub_100003830(&qword_100069950, &qword_10004C038);
    sub_100035E44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069980);
  }

  return result;
}

unint64_t sub_10003A72C()
{
  result = qword_100069988;
  if (!qword_100069988)
  {
    sub_100003830(&qword_100069990, &qword_10004C060);
    sub_10003A7B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069988);
  }

  return result;
}

unint64_t sub_10003A7B8()
{
  result = qword_100069998;
  if (!qword_100069998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069998);
  }

  return result;
}

unint64_t sub_10003A80C()
{
  result = qword_1000699A0;
  if (!qword_1000699A0)
  {
    sub_100003830(&qword_100069970, &qword_10004C058);
    sub_10003A890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699A0);
  }

  return result;
}

unint64_t sub_10003A890()
{
  result = qword_1000699A8;
  if (!qword_1000699A8)
  {
    sub_100003830(&qword_1000699B0, &qword_10004C068);
    sub_10003A91C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699A8);
  }

  return result;
}

unint64_t sub_10003A91C()
{
  result = qword_1000699B8;
  if (!qword_1000699B8)
  {
    sub_100003830(&qword_1000699C0, &qword_10004C070);
    sub_10003A9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699B8);
  }

  return result;
}

unint64_t sub_10003A9A8()
{
  result = qword_1000699C8;
  if (!qword_1000699C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699C8);
  }

  return result;
}

uint64_t sub_10003ABD8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003ACA4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_100003988(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_1000039EC(v11);
  return v7;
}

unint64_t sub_10003ACA4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003ADB0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1000420B8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_10003ADB0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003ADFC(a1, a2);
  sub_10003AF2C(&off_100062BC0);
  result = v4;
  v3 = v4[2] - 1;
  return result;
}

void *sub_10003ADFC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_10003B018(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1000420B8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100042018();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003B018(v10, 0);
        result = sub_1000420A8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003AF2C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003B08C(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003B018(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100003930(&qword_1000699E8, &unk_10004C090);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003B08C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003930(&qword_1000699E8, &unk_10004C090);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10003B180(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10003B1D4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

double sub_10003B22C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10003B248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 0x3Fu)
  {
  }

  return result;
}

uint64_t sub_10003B294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 435))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 434);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10003B2DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 434) = 0;
    *(result + 432) = 0;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 435) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 435) = 0;
    }

    if (a2)
    {
      *(result + 434) = -a2;
    }
  }

  return result;
}

unint64_t sub_10003B3AC()
{
  result = qword_1000699F0;
  if (!qword_1000699F0)
  {
    sub_100003830(&qword_100069940, &qword_10004C028);
    sub_10003B464();
    sub_100003D80(&qword_100069A28, &qword_100069948, &qword_10004C030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699F0);
  }

  return result;
}

unint64_t sub_10003B464()
{
  result = qword_1000699F8;
  if (!qword_1000699F8)
  {
    sub_100003830(&qword_100069A00, "Xd");
    sub_100003D80(&qword_100069A08, &qword_100069A10, &qword_10004C0C8);
    sub_100003D80(&qword_100069A18, &qword_100069A20, &qword_10004C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000699F8);
  }

  return result;
}

unint64_t sub_10003B54C()
{
  result = qword_100069A30;
  if (!qword_100069A30)
  {
    sub_100003830(&qword_100069A38, &qword_10004C0D8);
    sub_100003D80(&qword_100069A40, &qword_100069A48, &qword_10004C0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069A30);
  }

  return result;
}

unint64_t sub_10003B620(uint64_t a1)
{
  result = sub_10003B648();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10003B648()
{
  result = qword_100069A50;
  if (!qword_100069A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069A50);
  }

  return result;
}

uint64_t sub_10003B704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100041A98();
  *a1 = result;
  return result;
}

uint64_t sub_10003B758@<X0>(void *a1@<X8>)
{
  result = sub_100041A78();
  *a1 = v3;
  return result;
}

uint64_t sub_10003B85C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100003E1C(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_10003B8A4()
{
  result = qword_100069A68;
  if (!qword_100069A68)
  {
    sub_100003830(&qword_100069A70, &qword_10004C1C8);
    sub_100003D80(&qword_100069A78, &qword_100069A80, &unk_10004C1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069A68);
  }

  return result;
}

unint64_t sub_10003B96C(unint64_t result)
{
  result = result;
  switch(result)
  {
    case 1:
    case 7:
      v1 = 10;
      goto LABEL_12;
    case 2:
      return 0xD000000000000043;
    case 3:
      v1 = 46;
      goto LABEL_12;
    case 4:
    case 9:
      v1 = 11;
      goto LABEL_12;
    case 5:
      return 0xD000000000000016;
    case 6:
      return 0x4F463D6874617026;
    case 8:
    case 20:
      return 0xD00000000000001CLL;
    case 10:
      return 0xD000000000000014;
    case 11:
      return 0xD000000000000010;
    case 12:
      return 0xD000000000000012;
    case 13:
      return 0xD000000000000023;
    case 14:
      return 0x554E49544E4F4323;
    case 15:
      return 0xD000000000000018;
    case 16:
      return 0xD000000000000013;
    case 17:
      v1 = 5;
LABEL_12:
      result = v1 | 0xD000000000000010;
      break;
    case 18:
      result = 0xD000000000000010;
      break;
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 21:
      result = 0x45523D6874617026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003BC3C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_10003B96C(*a1);
  v5 = v4;
  if (v3 == sub_10003B96C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000420D8();
  }

  return v8 & 1;
}

unint64_t sub_10003BCC8()
{
  result = qword_100069A88;
  if (!qword_100069A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069A88);
  }

  return result;
}

Swift::Int sub_10003BD1C()
{
  v1 = *v0;
  sub_100042108();
  sub_10003B96C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10003BD80()
{
  sub_10003B96C(*v0);
  sub_100042008();
}

Swift::Int sub_10003BDD4()
{
  v1 = *v0;
  sub_100042108();
  sub_10003B96C(v1);
  sub_100042008();

  return sub_100042128();
}

uint64_t sub_10003BE34@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10003D83C();
  *a2 = result;
  return result;
}

unint64_t sub_10003BE64@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10003B96C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10003BEEC@<X0>(_BYTE *a1@<X8>)
{

  result = sub_10003D83C();
  *a1 = result;
  return result;
}

unint64_t sub_10003BF38()
{
  result = qword_100069AA0;
  if (!qword_100069AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AA0);
  }

  return result;
}

unint64_t sub_10003BF8C()
{
  result = qword_100069AA8;
  if (!qword_100069AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AA8);
  }

  return result;
}

uint64_t sub_10003BFE0()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A3B8);
  sub_1000038F8(v0, qword_10006A3B8);
  return sub_1000417B8();
}

void (*sub_10003C044(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10003C0B8()
{
  result = qword_100069AB0;
  if (!qword_100069AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AB0);
  }

  return result;
}

uint64_t sub_10003C10C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E724();
  v5 = sub_10003D7E8();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10003C17C()
{
  result = qword_100069AB8;
  if (!qword_100069AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AB8);
  }

  return result;
}

unint64_t sub_10003C1D4()
{
  result = qword_100069AC0;
  if (!qword_100069AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AC0);
  }

  return result;
}

uint64_t sub_10003C2B0(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_10003E724();
  v7 = sub_10003E778();
  v8 = sub_10003D7E8();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10003C37C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10003D890();
  *a1 = result;
  return result;
}

uint64_t sub_10003C3A4(uint64_t a1)
{
  v2 = sub_10003C0B8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003C3E4()
{
  result = qword_100069AC8;
  if (!qword_100069AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AC8);
  }

  return result;
}

unint64_t sub_10003C43C()
{
  result = qword_100069AD0;
  if (!qword_100069AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AD0);
  }

  return result;
}

unint64_t sub_10003C494()
{
  result = qword_100069AD8;
  if (!qword_100069AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AD8);
  }

  return result;
}

uint64_t sub_10003C4E8()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A3D0);
  sub_1000038F8(v7, qword_10006A3D0);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10003C660()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10003CB20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_10003DCAC(a1);
}

uint64_t sub_10003CBC8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_10003E070();
}

unint64_t sub_10003CC70()
{
  result = qword_100069AE0;
  if (!qword_100069AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AE0);
  }

  return result;
}

uint64_t sub_10003CCC4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_10003DB8C();
}

unint64_t sub_10003CD6C()
{
  result = qword_100069AE8;
  if (!qword_100069AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AE8);
  }

  return result;
}

unint64_t sub_10003CDC4()
{
  result = qword_100069AF0;
  if (!qword_100069AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AF0);
  }

  return result;
}

unint64_t sub_10003CE1C()
{
  result = qword_100069AF8;
  if (!qword_100069AF8)
  {
    sub_100003830(&qword_100069B00, qword_10004C5B8);
    sub_10003CDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069AF8);
  }

  return result;
}

uint64_t sub_10003CEA0(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10003CC70();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10003CF54(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005C28;

  return sub_10003E434();
}

unint64_t sub_10003CFFC()
{
  result = qword_100069B08;
  if (!qword_100069B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B08);
  }

  return result;
}

uint64_t sub_10003D050()
{
  v0 = sub_100003930(&qword_100069B68, "L_");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069B70, &qword_10004C9B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10003C494();
  sub_100041708();
  v9._object = 0x800000010004FBC0;
  v9._countAndFlagsBits = 0xD000000000000018;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10003D21C()
{
  result = qword_100069B10;
  if (!qword_100069B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B10);
  }

  return result;
}

unint64_t sub_10003D274()
{
  result = qword_100069B18;
  if (!qword_100069B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B18);
  }

  return result;
}

unint64_t sub_10003D2CC()
{
  result = qword_100069B20;
  if (!qword_100069B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B20);
  }

  return result;
}

uint64_t sub_10003D320()
{
  sub_10003D7E8();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10003D390()
{
  result = qword_100069B28;
  if (!qword_100069B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B28);
  }

  return result;
}

unint64_t sub_10003D3E8()
{
  result = qword_100069B30;
  if (!qword_100069B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B30);
  }

  return result;
}

unint64_t sub_10003D440()
{
  result = qword_100069B38;
  if (!qword_100069B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B38);
  }

  return result;
}

unint64_t sub_10003D498()
{
  result = qword_100069B40;
  if (!qword_100069B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B40);
  }

  return result;
}

uint64_t sub_10003D568(uint64_t a1)
{
  v2 = sub_10003C494();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003D5B8()
{
  result = qword_100069B58;
  if (!qword_100069B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B58);
  }

  return result;
}

uint64_t sub_10003D614(uint64_t a1)
{
  v2 = sub_10003D440();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_10003D698(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_10003D728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10003D7E8()
{
  result = qword_100069B60;
  if (!qword_100069B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B60);
  }

  return result;
}

uint64_t sub_10003D83C()
{
  v0 = sub_1000420E8();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10003D890()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069B78, &unk_10004C9E0);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 22;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10003C494();
  return sub_1000415C8();
}

uint64_t sub_10003DBA8()
{
  sub_100040424(0, 22, 0);
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = _swiftEmptyArrayStorage[2];
  do
  {
    v4 = *(&off_100062E18 + v1 + 32);
    v8 = v2;
    v5 = v2[3];
    if (v3 >= v5 >> 1)
    {
      sub_100040424((v5 > 1), v3 + 1, 1);
      v2 = v8;
    }

    ++v1;
    v2[2] = v3 + 1;
    *(v2 + v3++ + 32) = v4;
  }

  while (v1 != 22);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10003DCCC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = objc_opt_self();
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      v7 = [v4 sharedInstance];
      v8 = [v7 getActiveDevice];

      if (!v8)
      {
        goto LABEL_4;
      }

      if (v5 <= 10)
      {
        if (v5 > 8 || (v5 - 4) < 4)
        {
          goto LABEL_21;
        }

        if (v5 == 2)
        {
          v9 = [v8 supportsCapability:3581115489];
        }

        else
        {
          if (v5 != 3)
          {
            goto LABEL_33;
          }

          v9 = [v8 supportsCapability:4083462385];
        }

        goto LABEL_31;
      }

      if (v5 <= 15)
      {
        break;
      }

      if (v5 == 16)
      {
        if ([v8 isAltAccount])
        {
          goto LABEL_3;
        }

        v9 = [v8 supportsCapability:3031596921];
LABEL_31:
        v12 = v9;

        if (v12)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      }

      if (v5 != 17)
      {
        if (v5 != 18)
        {
LABEL_33:

LABEL_34:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_100040454(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v14 = _swiftEmptyArrayStorage[2];
          v13 = _swiftEmptyArrayStorage[3];
          if (v14 >= v13 >> 1)
          {
            sub_100040454((v13 > 1), v14 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v14 + 1;
          *(&_swiftEmptyArrayStorage[4] + v14) = v5;
          goto LABEL_4;
        }

LABEL_21:
        v10 = [v8 isAltAccount];

        if ((v10 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_4;
      }

      if ([v8 isAltAccount])
      {
        goto LABEL_3;
      }

      v11 = [v8 supportsCapability:3521655385];

      if (v11)
      {
        goto LABEL_34;
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_39;
      }
    }

    if ((v5 - 12) < 2)
    {
      if ([v8 isAltAccount])
      {
        goto LABEL_3;
      }

      v9 = [v8 supportsCapability:4033372590];
    }

    else
    {
      if ((v5 - 14) < 2)
      {
        goto LABEL_21;
      }

      if (v5 != 11)
      {
        goto LABEL_33;
      }

      if ([v8 isAltAccount])
      {
LABEL_3:

        goto LABEL_4;
      }

      v9 = [v8 supportsCapability:2431970007];
    }

    goto LABEL_31;
  }

LABEL_39:
  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    sub_100040424(0, v15, 0);
    v16 = _swiftEmptyArrayStorage[2];
    v17 = 32;
    do
    {
      v18 = *(_swiftEmptyArrayStorage + v17);
      v19 = _swiftEmptyArrayStorage[3];
      if (v16 >= v19 >> 1)
      {
        sub_100040424((v19 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      *(&_swiftEmptyArrayStorage[4] + v16) = v18;
      ++v17;
      ++v16;
      --v15;
    }

    while (v15);
  }

  v20 = *(v22 + 8);

  return v20(_swiftEmptyArrayStorage);
}

uint64_t sub_10003E08C()
{
  v0 = objc_opt_self();
  for (i = 0; i != 22; ++i)
  {
    v2 = *(&off_100062E18 + i + 32);
    v3 = [v0 sharedInstance];
    v4 = [v3 getActiveDevice];

    if (!v4)
    {
      continue;
    }

    if (v2 <= 10)
    {
      if (v2 <= 8 && (v2 - 4) >= 4)
      {
        if (v2 != 2)
        {
          if (v2 == 3)
          {
            v5 = [v4 supportsCapability:4083462385];
            goto LABEL_30;
          }

          goto LABEL_32;
        }

        v5 = [v4 supportsCapability:3581115489];
LABEL_30:
        v8 = v5;

        if ((v8 & 1) == 0)
        {
          continue;
        }

        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v2 <= 15)
    {
      if ((v2 - 12) < 2)
      {
        if ([v4 isAltAccount])
        {
          goto LABEL_2;
        }

        v5 = [v4 supportsCapability:4033372590];
        goto LABEL_30;
      }

      if ((v2 - 14) >= 2)
      {
        if (v2 == 11)
        {
          if ([v4 isAltAccount])
          {
            goto LABEL_2;
          }

          v5 = [v4 supportsCapability:2431970007];
          goto LABEL_30;
        }

        goto LABEL_32;
      }

LABEL_20:
      v6 = [v4 isAltAccount];

      if (v6)
      {
        continue;
      }

      goto LABEL_33;
    }

    if (v2 == 16)
    {
      if ([v4 isAltAccount])
      {
LABEL_2:

        continue;
      }

      v5 = [v4 supportsCapability:3031596921];
      goto LABEL_30;
    }

    if (v2 != 17)
    {
      if (v2 == 18)
      {
        goto LABEL_20;
      }

LABEL_32:

LABEL_33:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_100040454(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_100040454((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      *(&_swiftEmptyArrayStorage[4] + v10) = v2;
      continue;
    }

    if ([v4 isAltAccount])
    {
      goto LABEL_2;
    }

    v7 = [v4 supportsCapability:3521655385];

    if (v7)
    {
      goto LABEL_33;
    }
  }

  v11 = _swiftEmptyArrayStorage[2];
  if (v11)
  {
    sub_100040424(0, v11, 0);
    v12 = _swiftEmptyArrayStorage[2];
    v13 = 32;
    do
    {
      v14 = *(_swiftEmptyArrayStorage + v13);
      v15 = _swiftEmptyArrayStorage[3];
      if (v12 >= v15 >> 1)
      {
        sub_100040424((v15 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      *(&_swiftEmptyArrayStorage[4] + v12) = v14;
      ++v13;
      ++v12;
      --v11;
    }

    while (v11);
  }

  v16 = *(v18 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_10003E450()
{
  v1 = 0;
  while (1)
  {
    v3 = *(&off_100062E18 + v1 + 32);
    v4 = [objc_opt_self() sharedInstance];
    v5 = [v4 getActiveDevice];

    if (!v5)
    {
      goto LABEL_4;
    }

    if (v3 > 10)
    {
      break;
    }

    if (v3 > 8 || (v3 - 4) < 4)
    {
      goto LABEL_3;
    }

    if (v3 == 2)
    {
      v10 = [v5 supportsCapability:3581115489];

      if (v10)
      {
        v3 = 2;
        goto LABEL_35;
      }
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_38;
      }

      v6 = [v5 supportsCapability:4083462385];

      if (v6)
      {
        v3 = 3;
        goto LABEL_35;
      }
    }

LABEL_4:
    if (++v1 == 22)
    {
      v3 = 22;
      goto LABEL_35;
    }
  }

  if (v3 > 15)
  {
    switch(v3)
    {
      case 0x10:
        if (([v5 isAltAccount] & 1) == 0)
        {
          v11 = [v5 supportsCapability:3031596921];

          if (v11)
          {
            v3 = 16;
            goto LABEL_35;
          }

          goto LABEL_4;
        }

        break;
      case 0x11:
        if (([v5 isAltAccount] & 1) == 0)
        {
          v8 = [v5 supportsCapability:3521655385];

          if (v8)
          {
            v3 = 17;
            goto LABEL_35;
          }

          goto LABEL_4;
        }

        break;
      case 0x12:
LABEL_3:
        v2 = [v5 isAltAccount];

        if ((v2 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_4;
      default:
        goto LABEL_38;
    }

    goto LABEL_29;
  }

  if ((v3 - 12) < 2)
  {
    if (([v5 isAltAccount] & 1) == 0)
    {
      v9 = [v5 supportsCapability:4033372590];

      if (v9)
      {
        goto LABEL_35;
      }

      goto LABEL_4;
    }

    goto LABEL_29;
  }

  if ((v3 - 14) < 2)
  {
    goto LABEL_3;
  }

  if (v3 == 11)
  {
    if (([v5 isAltAccount] & 1) == 0)
    {
      v7 = [v5 supportsCapability:2431970007];

      if (v7)
      {
        v3 = 11;
        goto LABEL_35;
      }

      goto LABEL_4;
    }

LABEL_29:

    goto LABEL_4;
  }

LABEL_38:

LABEL_35:
  v12 = *(v0 + 8);

  return v12(v3);
}

unint64_t sub_10003E724()
{
  result = qword_100069B80;
  if (!qword_100069B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B80);
  }

  return result;
}

unint64_t sub_10003E778()
{
  result = qword_100069B88;
  if (!qword_100069B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B88);
  }

  return result;
}

unint64_t sub_10003E7F0()
{
  result = qword_100069B90;
  if (!qword_100069B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069B90);
  }

  return result;
}

uint64_t sub_10003E844@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100062E50;
  v7._object = v3;
  v5 = sub_1000420C8(v4, v7);

  *a2 = v5 != 0;
  return result;
}

Swift::Int sub_10003E8EC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v6._object = a2;
  v6._countAndFlagsBits = a1;
  v4._rawValue = &off_100062EB0;
  result = sub_1000420C8(v4, v6);
  *a3 = result != 0;
  return result;
}

unint64_t sub_10003E930()
{
  result = qword_100069BA8;
  if (!qword_100069BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BA8);
  }

  return result;
}

unint64_t sub_10003E984()
{
  result = qword_100069BB0;
  if (!qword_100069BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BB0);
  }

  return result;
}

uint64_t sub_10003E9D8()
{
  v0 = sub_1000417D8();
  sub_100003A7C(v0, qword_10006A3E8);
  sub_1000038F8(v0, qword_10006A3E8);
  return sub_1000417B8();
}

void (*sub_10003EA3C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = sub_100041598();
  return sub_10000489C;
}

unint64_t sub_10003EAB0()
{
  result = qword_100069BB8;
  if (!qword_100069BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BB8);
  }

  return result;
}

uint64_t sub_10003EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100040EA0();
  v5 = sub_10003FDD0();

  return static URLRepresentableIntent<>.urlRepresentation.getter(a1, v4, a2, v5);
}

unint64_t sub_10003EB74()
{
  result = qword_100069BC0;
  if (!qword_100069BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BC0);
  }

  return result;
}

unint64_t sub_10003EBCC()
{
  result = qword_100069BC8;
  if (!qword_100069BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BC8);
  }

  return result;
}

uint64_t sub_10003ECA8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to URLRepresentableIntent<>.perform()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_100040EA0();
  v7 = sub_100040EF4();
  v8 = sub_10003FDD0();
  *v5 = v2;
  v5[1] = sub_100004C0C;

  return URLRepresentableIntent<>.perform()(a2, v6, v7, v8);
}

uint64_t sub_10003ED74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000405D0();
  *a1 = result;
  return result;
}

uint64_t sub_10003ED9C(uint64_t a1)
{
  v2 = sub_10003EAB0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10003EDDC()
{
  result = qword_100069BD0;
  if (!qword_100069BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BD0);
  }

  return result;
}

unint64_t sub_10003EE34()
{
  result = qword_100069BD8;
  if (!qword_100069BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BD8);
  }

  return result;
}

unint64_t sub_10003EE8C()
{
  result = qword_100069BE0;
  if (!qword_100069BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BE0);
  }

  return result;
}

uint64_t sub_10003EEE0()
{
  v0 = sub_100003930(&qword_100068608, &qword_100042F30);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v9 - v2;
  v4 = sub_1000417D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = sub_100041768();
  sub_100003A7C(v7, qword_10006A400);
  sub_1000038F8(v7, qword_10006A400);
  sub_1000417B8();
  (*(v5 + 56))(v3, 1, 1, v4);
  return sub_100041758();
}

uint64_t sub_10003F058(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100007468;

  return sub_1000409A4(a1);
}

uint64_t sub_10003F100(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100007444;

  return sub_100040BD0();
}

unint64_t sub_10003F1A8()
{
  result = qword_100069BE8;
  if (!qword_100069BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BE8);
  }

  return result;
}

uint64_t sub_10003F1FC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100005884;

  return sub_1000408CC();
}

unint64_t sub_10003F2A4()
{
  result = qword_100069BF0;
  if (!qword_100069BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BF0);
  }

  return result;
}

unint64_t sub_10003F2FC()
{
  result = qword_100069BF8;
  if (!qword_100069BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069BF8);
  }

  return result;
}

unint64_t sub_10003F354()
{
  result = qword_100069C00;
  if (!qword_100069C00)
  {
    sub_100003830(&qword_100069C08, qword_10004CD48);
    sub_10003F2FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C00);
  }

  return result;
}

uint64_t sub_10003F3D8(uint64_t a1, uint64_t a2)
{
  v5 = async function pointer to EntityQuery.results()[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_10003F1A8();
  *v6 = v2;
  v6[1] = sub_100003510;

  return EntityQuery.results()(a1, a2, v7);
}

uint64_t sub_10003F48C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100012E08;

  return sub_100040DBC();
}

unint64_t sub_10003F534()
{
  result = qword_100069C10;
  if (!qword_100069C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C10);
  }

  return result;
}

uint64_t sub_10003F588()
{
  v0 = sub_100003930(&qword_100069C70, "BY");
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - v3;
  v5 = sub_100003930(&qword_100069C78, &qword_10004D140);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  sub_10003EE8C();
  sub_100041708();
  v9._object = 0x800000010004FC20;
  v9._countAndFlagsBits = 0xD000000000000017;
  sub_1000416F8(v9);
  (*(v1 + 104))(v4, enum case for EntityURLRepresentation.StringInterpolation.Token.id<A>(_:), v0);
  sub_1000416E8();
  (*(v1 + 8))(v4, v0);
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  sub_1000416F8(v10);
  return sub_100041718();
}

unint64_t sub_10003F754()
{
  result = qword_100069C18;
  if (!qword_100069C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C18);
  }

  return result;
}

unint64_t sub_10003F7AC()
{
  result = qword_100069C20;
  if (!qword_100069C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C20);
  }

  return result;
}

unint64_t sub_10003F804()
{
  result = qword_100069C28;
  if (!qword_100069C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C28);
  }

  return result;
}

uint64_t sub_10003F858()
{
  sub_10003FDD0();
  v1 = sub_1000416B8();
  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_10003F8C8()
{
  result = qword_100069C30;
  if (!qword_100069C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C30);
  }

  return result;
}

unint64_t sub_10003F920()
{
  result = qword_100069C38;
  if (!qword_100069C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C38);
  }

  return result;
}

unint64_t sub_10003F978()
{
  result = qword_100069C40;
  if (!qword_100069C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C40);
  }

  return result;
}

unint64_t sub_10003F9D0()
{
  result = qword_100069C48;
  if (!qword_100069C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C48);
  }

  return result;
}

uint64_t sub_10003FAA0(uint64_t a1)
{
  v2 = sub_10003EE8C();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_10003FAF0()
{
  result = qword_100069C60;
  if (!qword_100069C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C60);
  }

  return result;
}

uint64_t sub_10003FB44()
{
  v0 = sub_100003930(&qword_100068600, &unk_100043CC0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_100003930(&qword_100068608, &qword_100042F30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1000417D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_1000417B8();
  (*(v9 + 56))(v7, 1, 1, v8);
  sub_100041658();
  v11 = sub_100041668();
  (*(*(v11 - 8) + 56))(v3, 0, 1, v11);
  return sub_100041678();
}

uint64_t sub_10003FD44(uint64_t a1)
{
  v2 = sub_10003F978();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_10003FDD0()
{
  result = qword_100069C68;
  if (!qword_100069C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C68);
  }

  return result;
}

char *sub_10003FE24(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069DA8, &qword_10004D288);
  *v3 = result;
  return result;
}

char *sub_10003FE54(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069DB0, &unk_10004D290);
  *v3 = result;
  return result;
}

char *sub_10003FE84(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D98, &qword_10004D278);
  *v3 = result;
  return result;
}

char *sub_10003FEB4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069DA0, &qword_10004D280);
  *v3 = result;
  return result;
}

char *sub_10003FEE4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D88, &qword_10004D268);
  *v3 = result;
  return result;
}

char *sub_10003FF14(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D90, &qword_10004D270);
  *v3 = result;
  return result;
}

char *sub_10003FF44(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D78, &qword_10004D258);
  *v3 = result;
  return result;
}

char *sub_10003FF74(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D80, &qword_10004D260);
  *v3 = result;
  return result;
}

char *sub_10003FFA4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D68, &qword_10004D248);
  *v3 = result;
  return result;
}

char *sub_10003FFD4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D70, &qword_10004D250);
  *v3 = result;
  return result;
}

char *sub_100040004(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D58, &qword_10004D238);
  *v3 = result;
  return result;
}

char *sub_100040034(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D60, &qword_10004D240);
  *v3 = result;
  return result;
}

char *sub_100040064(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D48, &qword_10004D228);
  *v3 = result;
  return result;
}

char *sub_100040094(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D50, &qword_10004D230);
  *v3 = result;
  return result;
}

char *sub_1000400C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D38, &qword_10004D218);
  *v3 = result;
  return result;
}

char *sub_1000400F4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D40, &qword_10004D220);
  *v3 = result;
  return result;
}

char *sub_100040124(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D28, &qword_10004D208);
  *v3 = result;
  return result;
}

char *sub_100040154(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D30, &qword_10004D210);
  *v3 = result;
  return result;
}

char *sub_100040184(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D18, &qword_10004D1F8);
  *v3 = result;
  return result;
}

char *sub_1000401B4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D20, &qword_10004D200);
  *v3 = result;
  return result;
}

char *sub_1000401E4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D08, &qword_10004D1E8);
  *v3 = result;
  return result;
}

char *sub_100040214(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D10, &qword_10004D1F0);
  *v3 = result;
  return result;
}

char *sub_100040244(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CF8, &qword_10004D1D8);
  *v3 = result;
  return result;
}

char *sub_100040274(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069D00, &qword_10004D1E0);
  *v3 = result;
  return result;
}

char *sub_1000402A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CE8, &qword_10004D1C8);
  *v3 = result;
  return result;
}

char *sub_1000402D4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CF0, &qword_10004D1D0);
  *v3 = result;
  return result;
}

char *sub_100040304(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CD8, &qword_10004D1B8);
  *v3 = result;
  return result;
}

char *sub_100040334(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CE0, &qword_10004D1C0);
  *v3 = result;
  return result;
}

char *sub_100040364(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CC8, &qword_10004D1A8);
  *v3 = result;
  return result;
}

char *sub_100040394(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CD0, &qword_10004D1B0);
  *v3 = result;
  return result;
}

char *sub_1000403C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CB8, &qword_10004D198);
  *v3 = result;
  return result;
}

char *sub_1000403F4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CC0, &qword_10004D1A0);
  *v3 = result;
  return result;
}

char *sub_100040424(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CA8, &qword_10004D188);
  *v3 = result;
  return result;
}

char *sub_100040454(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069CB0, &qword_10004D190);
  *v3 = result;
  return result;
}

char *sub_100040484(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069C80, &qword_10004D158);
  *v3 = result;
  return result;
}

char *sub_1000404B4(char *a1, int64_t a2, char a3)
{
  result = sub_1000404E4(a1, a2, a3, *v3, &qword_100069C88, &qword_10004D168);
  *v3 = result;
  return result;
}

char *sub_1000404E4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_100003930(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_1000405D0()
{
  v21 = sub_100041728();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100003930(&qword_100068630, &qword_100042F70);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100003930(&qword_100068608, &qword_100042F30);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_1000417D8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100003930(&qword_100069C90, &qword_10004D180);
  sub_1000417B8();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_100041548();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10003EE8C();
  return sub_1000415C8();
}

uint64_t sub_1000408E8()
{
  sub_100040484(0, 1, 0);
  v2 = _swiftEmptyArrayStorage[2];
  v1 = _swiftEmptyArrayStorage[3];
  v3 = v2 + 1;
  if (v2 >= v1 >> 1)
  {
    sub_100040484((v1 > 1), v2 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000409C4()
{
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    v2 = objc_opt_self();
    do
    {
      v6 = [v2 sharedInstance];
      v7 = [v6 getActiveDevice];

      if (v7)
      {
        v8 = [v7 supportsCapability:1252261691];

        if (v8)
        {
          v15 = _swiftEmptyArrayStorage;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1000404B4(0, _swiftEmptyArrayStorage[2] + 1, 1);
          }

          v4 = _swiftEmptyArrayStorage[2];
          v3 = _swiftEmptyArrayStorage[3];
          v5 = v4 + 1;
          if (v4 >= v3 >> 1)
          {
            sub_1000404B4((v3 > 1), v4 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v5;
        }
      }

      --v1;
    }

    while (v1);
  }

  v9 = _swiftEmptyArrayStorage[2];
  if (v9)
  {
    sub_100040484(0, v9, 0);
    v10 = _swiftEmptyArrayStorage[2];
    do
    {
      v11 = _swiftEmptyArrayStorage[3];
      v12 = v10 + 1;
      if (v10 >= v11 >> 1)
      {
        sub_100040484((v11 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12;
      v10 = v12;
      --v9;
    }

    while (v9);
  }

  v13 = *(v0 + 8);

  return v13(_swiftEmptyArrayStorage);
}

uint64_t sub_100040BEC()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (!v2)
  {
    v7 = _swiftEmptyArrayStorage[2];
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  v3 = [v2 supportsCapability:1252261691];

  if (v3)
  {
    sub_1000404B4(0, 1, 1);
    v5 = _swiftEmptyArrayStorage[2];
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v5 + 1;
    if (v5 >= v4 >> 1)
    {
      sub_1000404B4((v4 > 1), v5 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v6;
  }

  v7 = _swiftEmptyArrayStorage[2];
  if (v7)
  {
LABEL_7:
    sub_100040484(0, v7, 0);
    v8 = _swiftEmptyArrayStorage[2];
    do
    {
      v9 = _swiftEmptyArrayStorage[3];
      v10 = v8 + 1;
      if (v8 >= v9 >> 1)
      {
        sub_100040484((v9 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10;
      v8 = v10;
      --v7;
    }

    while (v7);
  }

LABEL_13:

  v11 = *(v0 + 8);

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100040DD8()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 getActiveDevice];

  if (v2)
  {
    v3 = [v2 supportsCapability:1252261691];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 1;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

unint64_t sub_100040EA0()
{
  result = qword_100069C98;
  if (!qword_100069C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069C98);
  }

  return result;
}

unint64_t sub_100040EF4()
{
  result = qword_100069CA0;
  if (!qword_100069CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100069CA0);
  }

  return result;
}

id sub_100040FA0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DisplayBrightnessDataModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100040FFC()
{
  v0 = objc_allocWithZone(NPSDomainAccessor);
  v1 = sub_100041FD8();
  v2 = [v0 initWithDomain:v1];

  if (v2)
  {
    v3 = v2;
    v4 = sub_100041FD8();
    v2 = [v3 BOOLForKey:v4];
  }

  return v2;
}

Swift::Int sub_1000410E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003930(&qword_100069DE0, &unk_10004D2C0);
    v3 = sub_100042098();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_100042108();

      sub_100042008();
      result = sub_100042128();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1000420D8();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void sub_100041248(char a1)
{
  v2 = objc_allocWithZone(NPSDomainAccessor);
  v3 = sub_100041FD8();
  v4 = [v2 initWithDomain:v3];

  if (v4)
  {
    v5 = v4;
    v6 = sub_100041FD8();
    [v5 setBool:a1 & 1 forKey:v6];
  }

  v7 = [objc_allocWithZone(NPSManager) init];
  v8 = sub_100041FD8();
  sub_1000410E0(&off_100062050);
  sub_1000413E0(&unk_100062070);
  isa = sub_100042048().super.isa;

  [v7 synchronizeNanoDomain:v8 keys:isa];
}