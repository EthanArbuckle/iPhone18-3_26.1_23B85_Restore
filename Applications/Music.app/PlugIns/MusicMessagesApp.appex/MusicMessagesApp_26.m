uint64_t sub_10028BD78@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  a2(0);
  swift_allocObject();
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_10028BE08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028BE70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028BED8()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100008D24(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004D809C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10028C0C0(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035C88;

  return sub_10027F114(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_10028C1C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10028C224(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10028C31C()
{

  sub_10028C370(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

void sub_10028C370(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    if (!a7)
    {
      goto LABEL_13;
    }

    if (a7 != 1)
    {
      return;
    }

LABEL_12:

    return;
  }

  if (a7 == 2)
  {

    goto LABEL_12;
  }

  if (a7 != 3)
  {
    if (a7 == 4)
    {

      sub_10028C224(a1, a2);
    }

    return;
  }

LABEL_13:
}

uint64_t sub_10028C450(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10028C498(__int16 a1, void *a2, int a3, __int16 a4, void *a5, int a6)
{
  result = 0;
  v8 = a1 ^ a4;
  if (v8 & 0x100) != 0 || (v8)
  {
    return result;
  }

  if (!a2)
  {
    result = 0;
    if (a5 || ((a3 ^ a6) & 1) != 0)
    {
      return result;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  if (!a5)
  {
    return 0;
  }

  v9 = a3;
  v10 = a6;
  sub_100006F10(0, &qword_1006372B8);
  v13 = a5;
  v14 = a2;
  v15 = sub_1004DE5FC();

  result = 0;
  if (v15)
  {
    LOWORD(a6) = v10;
    LOWORD(a3) = v9;
    if (((v9 ^ v10) & 1) == 0)
    {
      return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
    }
  }

  return result;
}

id _s9MusicCore22GroupActivitiesManagerC8ActivityV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = *(a2 + 56);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  v5 = *(v2 + 16);
  v6 = v4;
  v7 = [v5 identifiers];
  v8 = [v6 identifiers];
  v9 = [v7 intersectsSet:v8];

  return v9;
}

Swift::Int sub_10028C638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004CB8(&qword_10063CCE0);
    v3 = sub_1004DEA8C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_1004DF26C();
      NSDirectionalEdgeInsets.Edge.hash(into:)(v18, v10);
      result = sub_1004DF2BC();
      v12 = -1 << *(v3 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = *(v5 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        while (1)
        {
          result = static NSDirectionalEdgeInsets.Edge.__derived_enum_equals(_:_:)(*(*(v3 + 48) + v13), v10);
          if (result)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

unint64_t sub_10028C7CC()
{
  result = qword_10063C420;
  if (!qword_10063C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C420);
  }

  return result;
}

uint64_t sub_10028C844(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10028C8B0()
{
  result = qword_10063C448;
  if (!qword_10063C448)
  {
    sub_100008DE4(&qword_10063C440);
    sub_10028C844(&qword_10063C450, type metadata accessor for CodableListeningProperties);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C448);
  }

  return result;
}

unint64_t sub_10028C964()
{
  result = qword_10063C460;
  if (!qword_10063C460)
  {
    sub_100008DE4(&qword_10063C458);
    sub_10028C844(&qword_10063C468, type metadata accessor for CodableModelObjectIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C460);
  }

  return result;
}

unint64_t sub_10028CAC0()
{
  result = qword_10063C4D8;
  if (!qword_10063C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063C4D8);
  }

  return result;
}

uint64_t sub_10028CB1C()
{
  v1 = *(sub_100004CB8(&qword_10063C400) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = v0 + v2;
  v4 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {

    v5 = *(v4 + 28);
    v6 = sub_1004D809C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10028CCBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_10063C400);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10028CD2C(uint64_t a1)
{
  v4 = *(sub_100004CB8(&qword_10063C400) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100035B28;

  return sub_10027C4B8(a1, v6, v1 + v5, v7);
}

uint64_t sub_10028CE54()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100285C10();
}

void sub_10028CF08(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

void sub_10028D06C()
{
  sub_1002709E0(319, &qword_10063C1B8, &type metadata for Int, &type metadata accessor for Published);
  if (v0 <= 0x3F)
  {
    sub_1002709E0(319, &qword_100639AD0, &type metadata for Bool, &type metadata accessor for Published);
    if (v1 <= 0x3F)
    {
      sub_10028D698(319, &qword_10063C578, &qword_10063C4A0, &unk_100524860, &type metadata accessor for Published);
      if (v2 <= 0x3F)
      {
        sub_10028D358(319, &unk_10063C580, type metadata accessor for GroupActivitiesManager.Activity);
        if (v3 <= 0x3F)
        {
          sub_10028D358(319, &qword_100637690, type metadata accessor for Signpost);
          if (v4 <= 0x3F)
          {
            sub_10028D358(319, &unk_10063C590, &type metadata accessor for Date);
            if (v5 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_10028D358(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004DE7CC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10028D3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004CB8(&qword_10063C400);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 32);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10028D49C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_10063C400);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10028D54C()
{
  sub_10028D698(319, &qword_10063C710, &qword_10063C718, &unk_100524B80, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10028D6FC();
    if (v1 <= 0x3F)
    {
      sub_10028D358(319, &qword_10063C730, type metadata accessor for CodableListeningProperties);
      if (v2 <= 0x3F)
      {
        sub_10028D358(319, &qword_10063C738, type metadata accessor for CodableModelObjectIdentity);
        if (v3 <= 0x3F)
        {
          sub_10028D358(319, &unk_10063C740, type metadata accessor for GroupActivitiesManager.Activity.Metadata);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10028D698(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_10028D6FC()
{
  if (!qword_10063C720)
  {
    sub_100006F10(255, &qword_100639C18);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063C720);
    }
  }
}

uint64_t sub_10028D778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100004CB8(&qword_100634B30);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10028D854(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_100634B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10028D904()
{
  sub_1002709E0(319, &qword_10063C230, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10028D358(319, qword_10063C7F0, type metadata accessor for CGImage);
    if (v1 <= 0x3F)
    {
      sub_10028D358(319, &qword_100636CC8, &type metadata accessor for URL);
      if (v2 <= 0x3F)
      {
        _s3__C6CGSizeVMa_0(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10028DA1C()
{
  result = sub_1004D86FC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 sub_10028DAB8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_10028DACC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 18))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10028DB28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10028DBB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028DC30(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_10028DCB4()
{
  v0 = type metadata accessor for GroupActivitiesManager.Activity(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

unint64_t sub_10028DD10()
{
  result = qword_10063CC28;
  if (!qword_10063CC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC28);
  }

  return result;
}

unint64_t sub_10028DD68()
{
  result = qword_10063CC30;
  if (!qword_10063CC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC30);
  }

  return result;
}

unint64_t sub_10028DDC0()
{
  result = qword_10063CC38;
  if (!qword_10063CC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC38);
  }

  return result;
}

unint64_t sub_10028DE14()
{
  result = qword_10063CC48;
  if (!qword_10063CC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC48);
  }

  return result;
}

unint64_t sub_10028DE68()
{
  result = qword_10063CC58;
  if (!qword_10063CC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC58);
  }

  return result;
}

unint64_t sub_10028DEBC()
{
  result = qword_10063CC60;
  if (!qword_10063CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC60);
  }

  return result;
}

unint64_t sub_10028DF10()
{
  result = qword_10063CC78;
  if (!qword_10063CC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC78);
  }

  return result;
}

uint64_t sub_10028DF64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10028DF7C()
{
  result = qword_10063CC88;
  if (!qword_10063CC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CC88);
  }

  return result;
}

unint64_t sub_10028DFEC()
{
  result = qword_10063CCC0;
  if (!qword_10063CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CCC0);
  }

  return result;
}

void sub_10028E040(void *a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
      }

      return;
    }

LABEL_7:

    return;
  }

  if (a2 == 2)
  {

    return;
  }

  if (a2 == 3)
  {
    goto LABEL_7;
  }
}

uint64_t sub_10028E078()
{
  v1 = *(sub_100004CB8(&qword_10063C400) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v17 = *(v1 + 64);
  v3 = sub_100004CB8(&unk_10063CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  swift_unknownObjectRelease();
  v7 = v0 + v2;
  v8 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v8 - 8) + 48))(v0 + v2, 1, v8))
  {

    v16 = v6;
    v9 = *(v8 + 28);
    v10 = sub_1004D809C();
    v11 = *(v10 - 8);
    v15 = v9;
    v12 = v7 + v9;
    v6 = v16;
    if (!(*(v11 + 48))(v12, 1, v10))
    {
      (*(v11 + 8))(v7 + v15, v10);
    }
  }

  v13 = (((v17 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5;

  (*(v4 + 8))(v0 + v13, v3);

  return swift_deallocObject();
}

uint64_t sub_10028E2DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100004CB8(&qword_10063C400) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100004CB8(&unk_10063CCD0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100035C88;

  return sub_10027D438(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_10028E490()
{
  v1 = *(sub_100004CB8(&qword_10063C400) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100004CB8(&unk_10063CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_1004D809C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10028E6D8(void *a1)
{
  v3 = *(sub_100004CB8(&qword_10063C400) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100004CB8(&unk_10063CCD0) - 8);
  v7 = *(v1 + v5);
  v8 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_10027DC28(a1, v1 + v4, v7, v8);
}

uint64_t sub_10028E7D4()
{
  v1 = *(sub_100004CB8(&qword_10063C400) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v12 = *(v1 + 64);
  v3 = sub_100004CB8(&unk_10063CCD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  v7 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v7 - 8) + 48))(v0 + v2, 1, v7))
  {

    v8 = *(v7 + 28);
    v9 = sub_1004D809C();
    v10 = *(v9 - 8);
    if (!(*(v10 + 48))(v6 + v8, 1, v9))
    {
      (*(v10 + 8))(v6 + v8, v9);
    }
  }

  (*(v4 + 8))(v0 + ((((v12 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + v5 + 8) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t sub_10028EA24(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100004CB8(&qword_10063C400) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_100004CB8(&unk_10063CCD0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_100035C88;

  return sub_10027DEFC(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_10028EBB0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10028EC00(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10028EC50()
{
  result = qword_10063CD30;
  if (!qword_10063CD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CD30);
  }

  return result;
}

uint64_t sub_10028ECA4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10028ECEC()
{

  return swift_deallocObject();
}

double sub_10028ED44(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_10028ED5C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10028ED74()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10028EDAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100035C88;

  return sub_100286694(a1);
}

uint64_t sub_10028EE5C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100288AF0(a1, v4, v5, v6);
}

uint64_t sub_10028EF10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035C88;

  return sub_100289134(a1, v4, v5, v6);
}

uint64_t sub_10028EFC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100286988();
}

id sub_10028F078(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
    return a2;
  }

  return result;
}

uint64_t sub_10028F0A0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100289AF8();
}

uint64_t sub_10028F154()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_100289CE4();
}

uint64_t sub_10028F210()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100035C88;

  return sub_10028A97C();
}

uint64_t sub_10028F2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035B28;

  return sub_10028A10C(a1, v4, v5, v6);
}

uint64_t sub_10028F36C()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100008D24(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004D809C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10028F524(void *a1)
{
  v3 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100280F30(a1, v4, v5);
}

uint64_t sub_10028F598()
{
  v1 = type metadata accessor for GroupActivitiesManager.Activity(0);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  if (*(v0 + v2 + 24))
  {
    sub_100008D24(v0 + v2);
  }

  v4 = v3 + *(v1 + 32);
  v5 = type metadata accessor for GroupActivitiesManager.Activity.Metadata(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {

    v6 = *(v5 + 28);
    v7 = sub_1004D809C();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v4 + v6, 1, v7))
    {
      (*(v8 + 8))(v4 + v6, v7);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_10028F760(uint64_t a1)
{
  v4 = *(type metadata accessor for GroupActivitiesManager.Activity(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100035C88;

  return sub_100281114(a1, v6, v7, v8, v9, v1 + v5);
}

unint64_t sub_10028F898()
{
  result = qword_10063CE48;
  if (!qword_10063CE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE48);
  }

  return result;
}

unint64_t sub_10028F8F0()
{
  result = qword_10063CE50;
  if (!qword_10063CE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE50);
  }

  return result;
}

unint64_t sub_10028F948()
{
  result = qword_10063CE58;
  if (!qword_10063CE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE58);
  }

  return result;
}

unint64_t sub_10028F9A0()
{
  result = qword_10063CE60;
  if (!qword_10063CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE60);
  }

  return result;
}

unint64_t sub_10028F9F8()
{
  result = qword_10063CE68;
  if (!qword_10063CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE68);
  }

  return result;
}

unint64_t sub_10028FA50()
{
  result = qword_10063CE70;
  if (!qword_10063CE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE70);
  }

  return result;
}

unint64_t sub_10028FAA8()
{
  result = qword_10063CE78;
  if (!qword_10063CE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CE78);
  }

  return result;
}

void MPCPlayerCommandDialog.alert(context:completion:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v85 = a4;
  v90 = a2;
  v91 = a3;
  v89 = a1;
  v80 = a6;
  v7 = sub_1004D83FC();
  __chkstk_darwin(v7 - 8);
  v8 = sub_1004DD3EC();
  v9 = *(v8 - 1);
  v10 = __chkstk_darwin(v8);
  v12 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v80 - v13;
  v84 = sub_1004D82AC();
  v15 = *(v84 - 8);
  __chkstk_darwin(v84);
  v83 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v6;
  v17 = [v6 actions];
  sub_100006F10(0, &qword_10063CE90);
  v18 = sub_1004DD87C();

  if (v18 >> 62)
  {
    v19 = sub_1004DED5C();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v19)
  {
    sub_100004CB8(&qword_100634F40);
    v19 = swift_allocObject();
    *(v19 + 1) = xmmword_100511DA0;
    sub_1004DD37C();
    (*(v9 + 16))(v12, v14, v8);
    if (qword_100633A80 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_50;
  }

  v8 = [v82 actions];
  v20 = sub_1004DD87C();

  if (v20 >> 62)
  {
    v9 = sub_1004DED5C();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_42:

    v19 = _swiftEmptyArrayStorage;
LABEL_43:
    v74 = [v82 localizedTitle];
    if (v74)
    {
      v75 = v74;
      v68 = sub_1004DD43C();
      v70 = v76;
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = [v82 localizedMessage];
    if (!v71)
    {
      goto LABEL_39;
    }

LABEL_47:
    v77 = v71;
    v72 = sub_1004DD43C();
    v73 = v78;

    goto LABEL_48;
  }

  v9 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (v9 >= 1)
  {
    v21 = 0;
    v92 = v20 & 0xC000000000000001;
    v93 = MPCPlayerCommandDialogActionTitlePlayOnlyForMe;
    v19 = _swiftEmptyArrayStorage;
    v81 = (v15 + 8);
    v88 = v20;
    v87 = v9;
    while (1)
    {
      if (v92)
      {
        v22 = sub_1004DEB2C();
      }

      else
      {
        v22 = *(v20 + 8 * v21 + 32);
      }

      v23 = v22;
      v24 = [v22 localizedTitle];
      v25 = sub_1004DD43C();
      v27 = v26;

      if (v25 == sub_1004DD43C() && v27 == v28)
      {
      }

      else
      {
        v30 = sub_1004DF08C();

        if ((v30 & 1) == 0)
        {
          v95 = v21;
          v31 = [v23 localizedTitle];
          v99 = sub_1004DD43C();
          v33 = v32;

          v34 = [v23 type];
          if (v34 == 2)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v34 == 1)
          {
            v36 = 0;
          }

          else
          {
            v36 = v35;
          }

          v37 = swift_allocObject();
          v38 = v85;
          v37[2] = v23;
          v37[3] = v38;
          v37[4] = v86;
          v39 = v23;
          sub_10000DE64(v38);
          v40 = v83;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v97 = sub_1004D827C();
          v42 = v41;
          (*v81)(v40, v84);

          v43 = v33;

          v44 = v37;

          v96 = &unk_1005252F8;
          v98 = v36;
          v94 = v36;
          goto LABEL_28;
        }
      }

      sub_10029691C(v89, v90, v91, &v101);
      v42 = v102;
      if (v102)
      {
        v95 = v21;
        v45 = v106;
        v46 = v107;
        v94 = v105;
        v47 = v104;
        v98 = v105;
        v99 = v103;
        v97 = v101;

        v43 = v47;

        v96 = v45;
        v44 = v46;
        sub_10000DE64(v45);
LABEL_28:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_10003A840(0, v19[2] + 1, 1, v19);
        }

        v49 = v19[2];
        v48 = v19[3];
        v50 = v23;
        if (v49 >= v48 >> 1)
        {
          v19 = sub_10003A840((v48 > 1), v49 + 1, 1, v19);
        }

        v51 = v97;
        v52 = v99;
        v53 = v96;
        sub_100296810(v97, v42, v99, v43, v98, v96);

        v19[2] = v49 + 1;
        v54 = &v19[7 * v49];
        v54[4] = v51;
        v54[5] = v42;
        v54[6] = v52;
        v54[7] = v43;
        *(v54 + 64) = v94;
        v54[9] = v53;
        v54[10] = v44;
        v20 = v88;
        v9 = v87;
        v21 = v95;
        goto LABEL_9;
      }

LABEL_9:
      if (v9 == ++v21)
      {

        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_50:
  swift_once();
LABEL_35:
  v55 = qword_100671958;
  sub_1004D838C();
  v56 = sub_1004DD4AC();
  v58 = v57;
  (*(v9 + 8))(v14, v8);
  v59 = swift_allocObject();
  v60 = v85;
  v61 = v86;
  *(v59 + 16) = v85;
  *(v59 + 24) = v61;
  sub_10000DE64(v60);
  v62 = v83;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v63 = sub_1004D827C();
  v65 = v64;
  (*(v15 + 8))(v62, v84);
  v19[4] = v63;
  v19[5] = v65;
  v19[6] = v56;
  v19[7] = v58;
  *(v19 + 64) = 2;
  v19[9] = &unk_100525308;
  v19[10] = v59;
  v66 = [v82 localizedTitle];
  if (v66)
  {
    v67 = v66;
    v68 = sub_1004DD43C();
    v70 = v69;
  }

  else
  {
    v68 = 0;
    v70 = 0;
  }

  v71 = [v82 localizedMessage];
  if (v71)
  {
    goto LABEL_47;
  }

LABEL_39:
  v72 = 0;
  v73 = 0;
LABEL_48:
  v100 = 1;
  v79 = v80;
  *v80 = v68;
  v79[1] = v70;
  v79[2] = v72;
  v79[3] = v73;
  *(v79 + 32) = 0;
  v79[5] = 0;
  *(v79 + 48) = 1;
  v79[7] = v19;
  v79[8] = 0;
}

BOOL static SharedListening.isMusicItemTypeSupported(_:)(uint64_t a1)
{
  if (qword_100633E88 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = (off_10063CE88 + 32);
  v2 = *(off_10063CE88 + 2) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = *v1;
    v1 += 2;
  }

  while (v3 != a1);
  return v2 != 0;
}

uint64_t Logger.sharedListening.unsafeMutableAddressor()
{
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v0 = sub_1004D966C();

  return sub_100035430(v0, static Logger.sharedListening);
}

uint64_t *SharedListening.Event.properties.unsafeMutableAddressor()
{
  if (qword_100633E78 != -1)
  {
    swift_once();
  }

  return &static SharedListening.Event.properties;
}

double SharedListening.Event.init(_:)@<D0>(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100296DE4(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

uint64_t static SharedListening.buildSharedSession(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100237B90;

  return sub_100297894(a1);
}

uint64_t static SharedListening.buildSharedSession(with:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100035B28;

  return sub_100297F54(a1, a2, a3, a4);
}

uint64_t SharedListening.Event.Content.title.getter(void *a1, char a2)
{
  v4 = sub_1004D83FC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1004DD3EC();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v11 = &v21[-v10];
  if (a2)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 title];
      if (!v13)
      {
        goto LABEL_9;
      }

LABEL_6:
      v14 = v13;
      v15 = sub_1004DD43C();

      return v15;
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v13 = [v17 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }

    else
    {
      objc_opt_self();
      v20 = swift_dynamicCastObjCClass();
      if (!v20)
      {
        v22 = 0;
        v23 = 0xE000000000000000;
        sub_1004DEAAC(34);

        v22 = 0xD000000000000020;
        v23 = 0x80000001004F3090;
        swift_getObjectType();
        v24._countAndFlagsBits = sub_1004DF34C();
        sub_1004DD5FC(v24);

        result = sub_1004DECCC();
        __break(1u);
        return result;
      }

      v13 = [v20 name];
      if (v13)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
    v13 = [a1 title];
    if (v13)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  sub_1004DD37C();
  (*(v6 + 16))(v9, v11, v5);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v18 = qword_100671958;
  sub_1004D838C();
  v19 = sub_1004DD4AC();
  (*(v6 + 8))(v11, v5);
  return v19;
}

void sub_100290ACC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    if (a2 == 1)
    {
      v16 = a1;
      if (qword_100633E70 != -1)
      {
        swift_once();
      }

      v17 = sub_1004D966C();
      sub_100035430(v17, static Logger.groupActivities);

      oslog = sub_1004D964C();
      v18 = sub_1004DDF7C();
      sub_10028E040(v16, 1u);
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v43 = v20;
        *v19 = 136446210;
        v45 = v16;

        sub_100004CB8(&unk_10063CD88);
        v21 = sub_1004DD4DC();
        v23 = sub_1000343A8(v21, v22, &v43);

        *(v19 + 4) = v23;
        _os_log_impl(&_mh_execute_header, oslog, v18, "Cannot joined invalid session=%{public}s", v19, 0xCu);
        sub_100008D24(v20);

        return;
      }
    }

    else
    {
      if (a2 != 2)
      {
        return;
      }

      v2 = [a1 error];
      if (qword_100633E90 != -1)
      {
        swift_once();
      }

      v3 = sub_1004D966C();
      sub_100035430(v3, static Logger.sharedListening);
      v4 = v2;
      oslog = sub_1004D964C();
      v5 = sub_1004DDF7C();

      if (os_log_type_enabled(oslog, v5))
      {
        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v45 = v7;
        *v6 = 136446210;
        v43 = v2;
        LOBYTE(v44) = 0;
        v8 = v4;
        v9 = sub_1004DD4DC();
        v11 = sub_1000343A8(v9, v10, &v45);

        *(v6 + 4) = v11;
        _os_log_impl(&_mh_execute_header, oslog, v5, "Creation error %{public}s", v6, 0xCu);
        sub_100008D24(v7);

        return;
      }
    }

    goto LABEL_42;
  }

  if (a2 != 3)
  {
    if (a2 != 4)
    {
      return;
    }

    if (a1 == 2)
    {
      if (qword_100633E90 != -1)
      {
        swift_once();
      }

      v41 = sub_1004D966C();
      sub_100035430(v41, static Logger.sharedListening);
      oslog = sub_1004D964C();
      v13 = sub_1004DDF9C();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Building session failed because the queue is empty";
    }

    else
    {
      if (a1 == 3)
      {
        if (qword_100633E90 != -1)
        {
          swift_once();
        }

        v34 = sub_1004D966C();
        sub_100035430(v34, static Logger.sharedListening);
        oslog = sub_1004D964C();
        v35 = sub_1004DDF9C();
        if (!os_log_type_enabled(oslog, v35))
        {
          goto LABEL_42;
        }

        v36 = swift_slowAlloc();
        *v36 = 67109120;
        *(v36 + 1) = FigOutputMonitorIsScreenProbablyBeingRecorded() != 0;
        v15 = "Presenting not supported content alert (isScreenSharing=%{BOOL}d)";
        v37 = v35;
        v38 = oslog;
        v39 = v36;
        v40 = 8;
LABEL_41:
        _os_log_impl(&_mh_execute_header, v38, v37, v15, v39, v40);

LABEL_42:

        return;
      }

      if (a1 != 4)
      {
        return;
      }

      if (qword_100633E90 != -1)
      {
        swift_once();
      }

      v12 = sub_1004D966C();
      sub_100035430(v12, static Logger.sharedListening);
      oslog = sub_1004D964C();
      v13 = sub_1004DDF9C();
      if (!os_log_type_enabled(oslog, v13))
      {
        goto LABEL_42;
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = "Cannot add intent for the current route.";
    }

    v37 = v13;
    v38 = oslog;
    v39 = v14;
    v40 = 2;
    goto LABEL_41;
  }

  if (a1)
  {
    swift_getErrorValue();
    a1 = sub_1004DF1CC();
  }

  else
  {
    v24 = 0;
  }

  v43 = a1;
  v44 = v24;
  sub_100004CB8(&unk_100639EB0);
  v25 = sub_1004DD4DC();
  v27 = v26;
  if (qword_100633E70 != -1)
  {
    swift_once();
  }

  v28 = sub_1004D966C();
  sub_100035430(v28, static Logger.groupActivities);

  v29 = sub_1004D964C();
  v30 = sub_1004DDF7C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v43 = v32;
    *v31 = 136446210;
    v33 = sub_1000343A8(v25, v27, &v43);

    *(v31 + 4) = v33;
    _os_log_impl(&_mh_execute_header, v29, v30, "Could not add intent to the player: %{public}s", v31, 0xCu);
    sub_100008D24(v32);
  }

  else
  {
  }
}

void sub_100291188(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, uint64_t)@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v169 = a4;
  v168 = a3;
  v167 = a2;
  v166 = a1;
  v174 = a6;
  v7 = sub_1004D809C();
  v164 = *(v7 - 8);
  v8 = *(v164 + 64);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = (v156 - v10);
  v12 = sub_100004CB8(&qword_100634B30);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v156 - v16;
  v171 = sub_1004D82AC();
  v18 = *(v171 - 8);
  __chkstk_darwin(v171);
  v170 = v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1004D83FC();
  __chkstk_darwin(v20 - 8);
  v172 = v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1004DD3EC();
  v173 = *(v22 - 8);
  v23 = __chkstk_darwin(v22);
  v25 = v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  if (a5 == 2)
  {
    v158 = v15;
    v156[1] = v8;
    v157 = v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v159 = v17;
    v162 = v11;
    v163 = v7;
    v28 = v156 - v26;
    v67 = v169;
    v68 = [v169 dialog];
    if (v68)
    {
      v69 = v68;
      MPCPlayerCommandDialog.alert(context:completion:)(v166, v167, v168, 0, 0, &v175);
      v70 = v175;
      v44 = v176;
      v71 = *(&v177 + 1);
      v40 = v177;
      v48 = *(&v178 + 1);
      v72 = v178;
      v73 = v179;
      v47 = v180;
      v49 = v181;

      v46 = v70;
      v52 = v72 & 0xFFFFFFFFFFFFFF00;
      v50 = v73 & 0xFFFFFFFFFFFFFF00;
      v51 = v72;
      v53 = v73;
      v45 = v71;
LABEL_26:
      v27 = v174;
      goto LABEL_27;
    }

    v74 = [v67 error];
    v27 = v174;
    if (v74)
    {
      v175 = v74;
      sub_100004CB8(&qword_100638980);
      type metadata accessor for MPCPlayerEnqueueError(0);
      if (swift_dynamicCast())
      {
        v75 = v182;
        v175 = v182;
        sub_100299C58(&qword_100634CA0, type metadata accessor for MPCPlayerEnqueueError);
        sub_1004D7EFC();

        if (v182 == 3)
        {
          goto LABEL_19;
        }
      }
    }

    v165 = v18;
    sub_1004DD37C();
    v94 = v173;
    v95 = v22;
    v96 = *(v173 + 16);
    v96(v25, v28, v95);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v97 = qword_100671958;
    sub_1004D838C();
    v98 = v97;
    v161 = sub_1004DD4AC();
    v160 = v99;
    v173 = *(v94 + 8);
    (v173)(v28, v95);
    sub_100004CB8(&qword_100634F40);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100511DA0;
    sub_1004DD37C();
    v96(v25, v28, v95);
    sub_1004D838C();
    v100 = sub_1004DD4AC();
    v102 = v101;
    (v173)(v28, v95);
    v103 = v170;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v104 = sub_1004D827C();
    v106 = v105;
    v107 = *(v165 + 8);
    v165 += 8;
    v107(v103, v171);
    *(v47 + 32) = v104;
    *(v47 + 40) = v106;
    *(v47 + 48) = v100;
    *(v47 + 56) = v102;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1004DEAAC(30);

    v175 = 0xD00000000000001CLL;
    v176 = 0x80000001004F31E0;
    *&v182 = [v67 error];
    sub_100004CB8(&qword_10063AD60);
    v185._countAndFlagsBits = sub_1004DD4DC();
    sub_1004DD5FC(v185);

    v109 = v175;
    v108 = v176;
    v110 = sub_10005F25C(_swiftEmptyArrayStorage);
    if (qword_100634428 != -1)
    {
      swift_once();
    }

    v27 = v174;
    v111 = v163;
    v112 = v162;
    if (static DeviceCapabilities.isInternalInstall == 1)
    {
      v113 = v109;
      v114 = v159;
      sub_100165FA8(v113, v108, 0xD000000000000032, 0x80000001004ED970, _swiftEmptyArrayStorage, v110, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v159, 1u);

      v115 = v158;
      sub_1000108DC(v114, v158, &qword_100634B30);
      v116 = v164;
      if ((*(v164 + 48))(v115, 1, v111) == 1)
      {
        sub_10001074C(v114, &qword_100634B30);
        v117 = v115;
      }

      else
      {
        v173 = v107;
        v139 = *(v116 + 32);
        v139(v112, v115, v111);
        v140 = v112;
        v141 = [objc_opt_self() sharedApplication];
        sub_1004D7FDC(v142);
        v144 = v143;
        v145 = [v141 canOpenURL:v143];

        if (v145)
        {
          v146 = v157;
          (*(v116 + 16))(v157, v140, v111);
          v147 = (*(v116 + 80) + 16) & ~*(v116 + 80);
          v148 = swift_allocObject();
          v139(v148 + v147, v146, v111);
          v149 = v170;
          _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
          v150 = sub_1004D827C();
          v152 = v151;
          (v173)(v149, v171);
          (*(v116 + 8))(v140, v111);
          sub_10001074C(v159, &qword_100634B30);
          v154 = *(v47 + 16);
          v153 = *(v47 + 24);
          if (v154 >= v153 >> 1)
          {
            v47 = sub_10003A840((v153 > 1), v154 + 1, 1, v47);
          }

          v40 = v161;
          *(v47 + 16) = v154 + 1;
          v155 = v47 + 56 * v154;
          *(v155 + 32) = v150;
          *(v155 + 40) = v152;
          strcpy((v155 + 48), "File a Radar");
          *(v155 + 61) = 0;
          *(v155 + 62) = -5120;
          *(v155 + 64) = 2;
          *(v155 + 72) = &unk_10051DF20;
          *(v155 + 80) = v148;
          goto LABEL_52;
        }

        (*(v116 + 8))(v140, v111);
        v117 = v159;
      }

      sub_10001074C(v117, &qword_100634B30);
    }

    else
    {
    }

    v40 = v161;
LABEL_52:
    v46 = 0;
    v44 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 1;
    v45 = v160;
    goto LABEL_27;
  }

  if (a5 == 3)
  {
    v54 = v170;
    v165 = v18;
    v55 = v156 - v26;
    sub_1004DD37C();
    v56 = v173;
    v166 = *(v173 + 16);
    (v166)(v25, v55, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v57 = qword_100671958;
    sub_1004D838C();
    v169 = v57;
    v168 = sub_1004DD4AC();
    v167 = v58;
    v59 = *(v56 + 8);
    v59(v55, v22);
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v173 = sub_1004D827C();
    v164 = v60;
    (*(v165 + 8))(v54, v171);
    sub_1004DD37C();
    v61 = v166;
    (v166)(v25, v55, v22);
    sub_1004D838C();
    v62 = v169;
    v63 = sub_1004DD4AC();
    v169 = v64;
    v59(v55, v22);
    sub_1004DD37C();
    v61(v25, v55, v22);
    v46 = v63;
    sub_1004D838C();
    v40 = sub_1004DD4AC();
    v45 = v65;
    v66 = v22;
    v44 = v169;
    v59(v55, v66);
    sub_100004CB8(&qword_100634F40);
    v47 = swift_allocObject();
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v173;
    *(v47 + 40) = v164;
    *(v47 + 16) = xmmword_100511DA0;
    *(v47 + 48) = v168;
    *(v47 + 56) = v167;
    *(v47 + 64) = 2;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    v53 = 1;
    goto LABEL_26;
  }

  v27 = v174;
  if (a5 != 4)
  {
    goto LABEL_10;
  }

  v28 = v156 - v26;
  if (v169 == 2)
  {
    v165 = v18;
    v80 = v156 - v26;
    sub_1004DD37C();
    v81 = v173;
    v82 = *(v173 + 16);
    v82(v25, v28, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v83 = qword_100671958;
    sub_1004D838C();
    v84 = v83;
    v164 = sub_1004DD4AC();
    v169 = v85;
    v173 = *(v81 + 8);
    (v173)(v80, v22);
    sub_100004CB8(&qword_100634F40);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_100511DA0;
    sub_1004DD37C();
    v82(v25, v80, v22);
    sub_1004D838C();
    v86 = sub_1004DD4AC();
    v88 = v87;
    v89 = v22;
    v44 = v169;
    (v173)(v80, v89);
    v90 = v170;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v91 = sub_1004D827C();
    v93 = v92;
    (*(v165 + 8))(v90, v171);
    v45 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    *(v47 + 32) = v91;
    *(v47 + 40) = v93;
    v46 = v164;
    *(v47 + 48) = v86;
    *(v47 + 56) = v88;
    v40 = 0;
    *(v47 + 64) = 0;
    v53 = 1;
    *(v47 + 72) = 0;
    *(v47 + 80) = 0;
    goto LABEL_26;
  }

  if (v169 != 3)
  {
    if (v169 == 4)
    {
      v165 = v18;
      sub_1004DD37C();
      v29 = v173;
      v30 = *(v173 + 16);
      v30(v25, v28, v22);
      if (qword_100633A80 != -1)
      {
        swift_once();
      }

      v31 = qword_100671958;
      v32 = qword_100671958;
      v163 = v31;
      v33 = v32;
      sub_1004D838C();
      v169 = v33;
      v168 = sub_1004DD4AC();
      v167 = v34;
      v162 = *(v29 + 8);
      (v162)(v28, v22);
      v35 = v170;
      _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
      v173 = sub_1004D827C();
      v166 = v36;
      (*(v165 + 8))(v35, v171);
      sub_1004DD37C();
      v30(v25, v28, v22);
      sub_1004D838C();
      v37 = v169;
      v164 = sub_1004DD4AC();
      v169 = v38;
      v39 = v162;
      (v162)(v28, v22);
      sub_1004DD37C();
      v30(v25, v28, v22);
      sub_1004D838C();
      v40 = sub_1004DD4AC();
      v42 = v41;
      v43 = v22;
      v44 = v169;
      (v39)(v28, v43);
      v45 = v42;
      v46 = v164;
      sub_100004CB8(&qword_100634F40);
      v47 = swift_allocObject();
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      *(v47 + 32) = v173;
      *(v47 + 40) = v166;
      *(v47 + 16) = xmmword_100511DA0;
      *(v47 + 48) = v168;
      *(v47 + 56) = v167;
      *(v47 + 64) = 2;
      *(v47 + 72) = 0;
      *(v47 + 80) = 0;
      v53 = 1;
      goto LABEL_27;
    }

LABEL_10:
    v46 = 0;
    v44 = 0;
    v40 = 0;
    v45 = 0;
    v48 = 0;
    v47 = 0;
    v49 = 0;
    v53 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_27;
  }

LABEL_19:
  v165 = v18;
  IsScreenProbablyBeingRecorded = FigOutputMonitorIsScreenProbablyBeingRecorded();
  v77 = (v173 + 16);
  v156[0] = v22;
  if (IsScreenProbablyBeingRecorded)
  {
    sub_1004DD37C();
    v78 = *v77;
    (*v77)(v25, v28, v22);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v174 = qword_100671958;
    sub_1004D838C();
    v161 = sub_1004DD4AC();
    v160 = v79;
    v169 = *(v173 + 8);
    v169(v28, v22);
    v164 = 0;
    v44 = 0;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  else
  {
    sub_1004DD37C();
    v118 = v25;
    v119 = *v77;
    (*v77)(v118, v28, v22);
    v163 = v77;
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v120 = qword_100671958;
    sub_1004D838C();
    v174 = v120;
    v161 = sub_1004DD4AC();
    v160 = v121;
    v122 = *(v173 + 8);
    v122(v28, v22);
    sub_1004DD37C();
    v119(v118, v28, v22);
    sub_1004D838C();
    v162 = v119;
    v25 = v118;
    v164 = sub_1004DD4AC();
    v124 = v123;
    v125 = v22;
    v44 = v124;
    v169 = v122;
    v122(v28, v125);
    v78 = v162;
    FigOutputMonitorIsScreenProbablyBeingRecorded();
  }

  sub_1004DD37C();
  v126 = v28;
  v78(v25, v28, v156[0]);
  if (qword_100633A80 != -1)
  {
    swift_once();
  }

  v127 = v174;
  sub_1004D838C();
  v128 = sub_1004DD4AC();
  v130 = v129;
  v131 = v165;
  v169(v126, v156[0]);
  v132 = v170;
  _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
  v133 = sub_1004D827C();
  v135 = v134;
  (*(v131 + 8))(v132, v171);
  sub_100004CB8(&qword_100634F40);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_100511DA0;
  *(v47 + 32) = v133;
  *(v47 + 40) = v135;
  *(v47 + 48) = v128;
  *(v47 + 56) = v130;
  *(v47 + 64) = 0;
  *(v47 + 72) = 0;
  *(v47 + 80) = 0;

  sub_10029691C(v166, v167, v168, &v175);
  v136 = v176;
  if (v176)
  {
    v137 = v175;
    v182 = v177;
    v183 = v178;
    v184 = v179;
    v47 = sub_10003A840(1, 2, 1, v47);

    *(v47 + 16) = 2;
    *(v47 + 88) = v137;
    *(v47 + 96) = v136;
    v138 = v183;
    *(v47 + 104) = v182;
    *(v47 + 120) = v138;
    *(v47 + 136) = v184;
  }

  else
  {
  }

  v40 = v161;
  v45 = v160;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v53 = 1;
  v46 = v164;
LABEL_27:
  *v27 = v46;
  v27[1] = v44;
  v27[2] = v40;
  v27[3] = v45;
  v27[4] = v52 | v51;
  v27[5] = v48;
  v27[6] = v50 | v53;
  v27[7] = v47;
  v27[8] = v49;
}

uint64_t static SharedListening.addIntent(_:playbackController:issuer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[85] = a3;
  v3[84] = a2;
  v3[83] = a1;
  v3[86] = sub_1004DDA4C();
  v3[87] = sub_1004DDA3C();
  v5 = sub_1004DD9BC();
  v3[88] = v5;
  v3[89] = v4;

  return _swift_task_switch(sub_100292AA8, v5, v4);
}

uint64_t sub_100292AA8()
{
  v22 = v0;
  v1 = qword_100633E90;
  v2 = *(v0 + 664);
  if (v1 == -1)
  {
    v3 = v2;
  }

  else
  {
    swift_once();
    v3 = *(v0 + 664);
  }

  v4 = sub_1004D966C();
  *(v0 + 720) = sub_100035430(v4, static Logger.sharedListening);
  v5 = v3;
  v6 = sub_1004D964C();
  v7 = sub_1004DDF9C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 664);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    *(v0 + 592) = v8;
    *(v0 + 600) = 1;
    v11 = v8;
    v12 = sub_1004DD4DC();
    v14 = sub_1000343A8(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v6, v7, "Adding the intent to the player with command%{public}s", v9, 0xCu);
    sub_100008D24(v10);
  }

  if (*(v0 + 672))
  {
    v15 = *(v0 + 664);
    *(v0 + 552) = &type metadata for Player.ReplaceCommand;
    *(v0 + 560) = &protocol witness table for Player.ReplaceCommand;
    *(v0 + 528) = v15;
    *(v0 + 536) = 1;
    v16 = v15;
    *(v0 + 728) = sub_1004DDA3C();
    v18 = sub_1004DD9BC();
    *(v0 + 736) = v18;
    *(v0 + 744) = v17;

    return _swift_task_switch(sub_100292D24, v18, v17);
  }

  else
  {

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100292D24()
{
  sub_100004CB8(&unk_100639D70);
  v1 = swift_allocObject();
  v0[94] = v1;
  *(v1 + 16) = xmmword_100511DA0;
  sub_100035868((v0 + 66), v1 + 32);
  v0[95] = sub_1004DDA3C();
  v2 = swift_task_alloc();
  v0[96] = v2;
  *v2 = v0;
  v2[1] = sub_100292E24;
  v3 = v0[85];

  return sub_100206638(v1, 0x10000, 1, 0, 0, v3);
}

uint64_t sub_100292E24(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 784) = v1;

  if (v1)
  {

    v4 = sub_1004DD9BC();
    v6 = v5;
    v7 = sub_100293120;
  }

  else
  {
    v4 = sub_1004DD9BC();
    v6 = v8;
    v7 = sub_100292FA0;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100292FA0()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100293014, v2, v1);
}

uint64_t sub_100293014()
{
  v1 = v0[97];

  if (v1 >> 62)
  {
    v4 = sub_1004DED5C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_100008D24((v0 + 66));
    v3 = v0[89];
    v2 = v0[88];
    v6 = sub_100293948;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[97] + 32);
  }

  v0[99] = v5;

  sub_100008D24((v0 + 66));
  v3 = v0[89];
  v2 = v0[88];
  v6 = sub_10029354C;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100293120()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 736);

  return _swift_task_switch(sub_100293188, v2, v1);
}

uint64_t sub_100293188()
{

  v1 = *(v0 + 712);
  v2 = *(v0 + 704);

  return _swift_task_switch(sub_1002931F0, v2, v1);
}

uint64_t sub_1002931F0()
{
  sub_100008D24((v0 + 66));
  v0[76] = v0[98];
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  type metadata accessor for MPCPlayerRequestError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_9;
  }

  v1 = v0[77];
  v0[100] = v1;
  v0[78] = v1;
  sub_100299C58(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);
  sub_1004D7EFC();
  if (v0[79] != 1001)
  {

LABEL_9:
    v11 = v0[83];

    swift_willThrow();

    goto LABEL_10;
  }

  v2 = v1;
  v3 = sub_1004D7F3C();

  v4 = [v3 msv_errorByUnwrappingDomain:MPCErrorDomain];
  v0[101] = v4;

  if (v4)
  {
    swift_getErrorValue();
    if (sub_1004DF1DC() == 58)
    {
      v5 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
      v6 = objc_allocWithZone(MPAVRoutingController);
      v7 = sub_1004DD3FC();
      v8 = [v6 initWithDataSource:v5 name:v7];
      v0[102] = v8;

      v0[2] = v0;
      v0[7] = v0 + 81;
      v0[3] = sub_100293A60;
      v9 = swift_continuation_init();
      v10 = sub_100004CB8(&qword_10063CE98);
      v0[103] = v10;
      v0[41] = v10;
      v0[34] = _NSConcreteStackBlock;
      v0[35] = 1107296256;
      v0[36] = sub_100295828;
      v0[37] = &unk_1005E9D68;
      v0[38] = v9;
      [v8 getActiveRouteWithTimeout:v0 + 34 completion:2.0];

      return _swift_continuation_await(v0 + 2);
    }
  }

  v13 = v0[83];

  swift_willThrow();

LABEL_10:
  v12 = v0[1];

  return v12();
}

uint64_t sub_10029354C()
{
  v1 = [*(v0 + 792) error];
  if (!v1)
  {
    v1 = [*(v0 + 792) dialog];
    if (!v1)
    {
      v17 = *(v0 + 792);
      v18 = *(v0 + 664);

      v16 = *(v0 + 8);
      goto LABEL_13;
    }
  }

  v2 = *(v0 + 792);

  sub_10028CAC0();
  v3 = swift_allocError();
  *v4 = v2;
  *(v4 + 8) = 2;
  swift_willThrow();

  *(v0 + 608) = v3;
  swift_errorRetain();
  sub_100004CB8(&qword_100638980);
  type metadata accessor for MPCPlayerRequestError(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 616);
    *(v0 + 800) = v5;
    *(v0 + 624) = v5;
    sub_100299C58(&unk_100639FD0, type metadata accessor for MPCPlayerRequestError);
    sub_1004D7EFC();
    if (*(v0 + 632) == 1001)
    {

      v6 = v5;
      v7 = sub_1004D7F3C();

      v8 = [v7 msv_errorByUnwrappingDomain:MPCErrorDomain];
      *(v0 + 808) = v8;

      if (v8)
      {
        swift_getErrorValue();
        if (sub_1004DF1DC() == 58)
        {
          v9 = [objc_allocWithZone(MPAVEndpointRoutingDataSource) init];
          v10 = objc_allocWithZone(MPAVRoutingController);
          v11 = sub_1004DD3FC();
          v12 = [v10 initWithDataSource:v9 name:v11];
          *(v0 + 816) = v12;

          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 648;
          *(v0 + 24) = sub_100293A60;
          v13 = swift_continuation_init();
          v14 = sub_100004CB8(&qword_10063CE98);
          *(v0 + 824) = v14;
          *(v0 + 328) = v14;
          *(v0 + 272) = _NSConcreteStackBlock;
          *(v0 + 280) = 1107296256;
          *(v0 + 288) = sub_100295828;
          *(v0 + 296) = &unk_1005E9D68;
          *(v0 + 304) = v13;
          [v12 getActiveRouteWithTimeout:v0 + 272 completion:2.0];

          return _swift_continuation_await(v0 + 16);
        }
      }

      v19 = *(v0 + 664);

      swift_willThrow();

      goto LABEL_12;
    }
  }

  v15 = *(v0 + 664);

  swift_willThrow();

LABEL_12:
  v16 = *(v0 + 8);
LABEL_13:

  return v16();
}

uint64_t sub_100293948()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002939B8()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100293A60()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_100293B68, v2, v1);
}

uint64_t sub_100293B68()
{
  v1 = v0[81];
  v0[104] = v1;
  v2 = objc_opt_self();
  v0[105] = v2;
  v3 = v1;
  v4 = [v2 systemRoute];
  v5 = v4;
  if (!v1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

LABEL_10:

LABEL_11:
    v12 = sub_1004D964C();
    v13 = sub_1004DDF9C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "SharedListening requires system route, switching…", v14, 2u);
    }

    v0[10] = v0;
    v0[11] = sub_100293DF4;
    v15 = swift_continuation_init();
    v16 = sub_100004CB8(&unk_10063A4A0);
    v0[106] = v16;
    v0[49] = v16;
    v0[42] = _NSConcreteStackBlock;
    v0[43] = 1107296256;
    v0[44] = sub_1000FD4C4;
    v0[45] = &unk_1005E9D90;
    v0[46] = v15;
    [v2 setActiveRoute:0 completion:v0 + 42];

    return _swift_continuation_await(v0 + 10);
  }

  if (!v4)
  {
    v5 = v3;
    goto LABEL_10;
  }

  sub_100006F10(0, &qword_10063AD68);
  v6 = sub_1004DE5FC();

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v7 = v0[102];
  v8 = v0[101];
  v9 = v0[83];

  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100293DF4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 856) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_10029478C;
  }

  else
  {
    v5 = sub_100293F24;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100293F24()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 816);
  v3 = [*(v0 + 840) systemRoute];
  *(v0 + 864) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_100294054;
  v4 = swift_continuation_init();
  *(v0 + 456) = v1;
  *(v0 + 400) = _NSConcreteStackBlock;
  *(v0 + 408) = 1107296256;
  *(v0 + 416) = sub_1000FD4C4;
  *(v0 + 424) = &unk_1005E9DB8;
  *(v0 + 432) = v4;
  [v2 selectRoute:v3 operation:0 completion:v0 + 400];

  return _swift_continuation_await(v0 + 144);
}

uint64_t sub_100294054()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 872) = v2;
  v3 = *(v1 + 712);
  v4 = *(v1 + 704);
  if (v2)
  {
    v5 = sub_100294840;
  }

  else
  {
    v5 = sub_100294184;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100294184()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);

  *(v0 + 208) = v0;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_1002942A0;
  v3 = swift_continuation_init();
  *(v0 + 520) = v1;
  *(v0 + 464) = _NSConcreteStackBlock;
  *(v0 + 472) = 1107296256;
  *(v0 + 480) = sub_100295828;
  *(v0 + 488) = &unk_1005E9DE0;
  *(v0 + 496) = v3;
  [v2 getActiveRouteWithTimeout:v0 + 464 completion:2.0];

  return _swift_continuation_await(v0 + 208);
}

uint64_t sub_1002942A0()
{
  v1 = *(*v0 + 712);
  v2 = *(*v0 + 704);

  return _swift_task_switch(sub_1002943A8, v2, v1);
}

uint64_t sub_1002943A8()
{
  v1 = *(v0 + 656);
  *(v0 + 880) = v1;
  v2 = v1;
  v3 = sub_1004D964C();
  v4 = sub_1004DDF9C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v1;
    v7 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "active route=%@", v5, 0xCu);
    sub_10001074C(v6, &qword_100636460);
  }

  v8 = *(v0 + 840);

  v9 = [v8 systemRoute];
  v10 = v9;
  if (!v1)
  {
    v11 = v9;
    if (!v9)
    {
LABEL_12:
      v20 = swift_task_alloc();
      *(v0 + 888) = v20;
      *v20 = v0;
      v20[1] = sub_100294650;
      v21 = *(v0 + 680);
      v22 = *(v0 + 672);
      v23 = *(v0 + 664);

      return static SharedListening.addIntent(_:playbackController:issuer:)(v23, v22, v21);
    }

    goto LABEL_8;
  }

  v11 = v2;
  if (!v9)
  {
LABEL_8:

    goto LABEL_9;
  }

  sub_100006F10(0, &qword_10063AD68);
  v12 = sub_1004DE5FC();

  if (v12)
  {
    goto LABEL_12;
  }

LABEL_9:
  v13 = *(v0 + 816);
  v14 = *(v0 + 808);
  v15 = *(v0 + 800);
  v16 = *(v0 + 664);

  sub_10028CAC0();
  swift_allocError();
  *v17 = 4;
  *(v17 + 8) = 4;
  swift_willThrow();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100294650()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 712);
  v4 = *(v2 + 704);
  if (v0)
  {
    v5 = sub_1002948FC;
  }

  else
  {
    v5 = sub_1002939B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10029478C()
{
  v1 = v0[104];
  v2 = v0[102];
  v3 = v0[101];
  v4 = v0[100];
  v5 = v0[83];

  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_100294840()
{
  v1 = v0[108];
  v2 = v0[104];
  v3 = v0[102];
  v4 = v0[101];
  v5 = v0[100];
  v6 = v0[83];

  swift_willThrow();

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002948FC()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 816);
  v3 = *(v0 + 808);
  v4 = *(v0 + 800);

  v5 = *(v0 + 8);

  return v5();
}

BOOL static SharedListening.isModelObjectTypeSupported(_:)(uint64_t a1)
{
  if (qword_100633E80 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = *(off_10063CE80 + 2);
  v2 = (off_10063CE80 + 32);
  do
  {
    v3 = v1;
    if (v1-- == 0)
    {
      break;
    }

    v5 = *v2++;
  }

  while (v5 != a1);
  return v3 != 0;
}

void __swiftcall SharedListening.Reaction.init(id:emoji:senderID:)(MusicCore::SharedListening::Reaction *__return_ptr retstr, Swift::String_optional id, Swift::String emoji, Swift::String_optional senderID)
{
  object = senderID.value._object;
  countAndFlagsBits = senderID.value._countAndFlagsBits;
  v6 = emoji._object;
  v7 = emoji._countAndFlagsBits;
  v8 = id.value._object;
  v9 = id.value._countAndFlagsBits;
  v11 = sub_1004D82AC();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v8)
  {
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v9 = sub_1004D827C();
    v8 = v15;
    (*(v12 + 8))(v14, v11);
  }

  retstr->id._countAndFlagsBits = v9;
  retstr->id._object = v8;
  retstr->emoji._countAndFlagsBits = v7;
  retstr->emoji._object = v6;
  retstr->senderID.value._countAndFlagsBits = countAndFlagsBits;
  retstr->senderID.value._object = object;
}

uint64_t sub_100294B40()
{
  v1 = 0x696A6F6D65;
  if (*v0 != 1)
  {
    v1 = 0x44497265646E6573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100294B8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100299330(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100294BB4(uint64_t a1)
{
  v2 = sub_1002992DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100294BF0(uint64_t a1)
{
  v2 = sub_1002992DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t SharedListening.Reaction.encode(to:)(void *a1)
{
  v3 = sub_100004CB8(&qword_10063CEA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100008C70(a1, a1[3]);
  sub_1002992DC();
  sub_1004DF30C();
  v8[15] = 0;
  sub_1004DEF1C();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1004DEF1C();
  v8[13] = 2;
  sub_1004DEEFC();
  return (*(v4 + 8))(v6, v3);
}

void SharedListening.Reaction.hash(into:)()
{
  sub_1004DD55C();
  sub_1004DD55C();
  if (*(v0 + 40))
  {
    sub_1004DF28C(1u);

    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }
}

Swift::Int SharedListening.Reaction.hashValue.getter()
{
  sub_1004DF26C();
  sub_1004DD55C();
  sub_1004DD55C();
  if (*(v0 + 40))
  {
    sub_1004DF28C(1u);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }

  return sub_1004DF2BC();
}

double SharedListening.Reaction.init(from:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10029943C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_100294F48()
{
  v1 = *(v0 + 40);
  sub_1004DF26C();
  sub_1004DD55C();
  sub_1004DD55C();
  if (v1)
  {
    sub_1004DF28C(1u);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }

  return sub_1004DF2BC();
}

void sub_100294FF0()
{
  v1 = *(v0 + 40);
  sub_1004DD55C();
  sub_1004DD55C();
  if (v1)
  {
    sub_1004DF28C(1u);

    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }
}

Swift::Int sub_10029508C()
{
  v1 = *(v0 + 40);
  sub_1004DF26C();
  sub_1004DD55C();
  sub_1004DD55C();
  if (v1)
  {
    sub_1004DF28C(1u);
    sub_1004DD55C();
  }

  else
  {
    sub_1004DF28C(0);
  }

  return sub_1004DF2BC();
}

uint64_t sub_100295130(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

void sub_100295178()
{
  sub_100004CB8(&qword_100637F60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100511B10;
  *(inited + 32) = sub_1004DD43C();
  *(inited + 40) = v1;
  sub_100004CB8(&unk_100637DF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100511DA0;
  *(v2 + 32) = sub_1004DD43C();
  *(v2 + 40) = v3;
  isa = sub_1004DD85C().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 propertySetWithProperties:isa];

  *(inited + 48) = v6;
  *(inited + 56) = sub_1004DD43C();
  *(inited + 64) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100511DA0;
  *(v8 + 32) = sub_1004DD43C();
  *(v8 + 40) = v9;
  v10 = sub_1004DD85C().super.isa;

  v11 = [v5 propertySetWithProperties:v10];

  *(inited + 72) = v11;
  *(inited + 80) = sub_1004DD43C();
  *(inited + 88) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100511DA0;
  *(v13 + 32) = sub_1004DD43C();
  *(v13 + 40) = v14;
  v15 = sub_1004DD85C().super.isa;

  v16 = [v5 propertySetWithProperties:v15];

  *(inited + 96) = v16;
  *(inited + 104) = sub_1004DD43C();
  *(inited + 112) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_100511DA0;
  *(v18 + 32) = sub_1004DD43C();
  *(v18 + 40) = v19;
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_100511DA0;
  *(v20 + 32) = sub_1004DD43C();
  *(v20 + 40) = v21;
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_100511DA0;
  *(v22 + 32) = sub_1004DD43C();
  *(v22 + 40) = v23;
  v24 = sub_1004DD85C().super.isa;

  v25 = [v5 propertySetWithProperties:v24];

  *(v20 + 48) = v25;
  sub_10005F144(v20);
  swift_setDeallocating();
  sub_10001074C(v20 + 32, &qword_100637F68);
  v26 = objc_allocWithZone(MPPropertySet);
  v27 = sub_1004DD85C().super.isa;

  sub_100006F10(0, &qword_100639C10);
  v28 = sub_1004DD1FC().super.isa;

  v29 = [v26 initWithProperties:v27 relationships:v28];

  *(inited + 120) = v29;
  sub_10005F144(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100637F68);
  swift_arrayDestroy();
  v30 = objc_allocWithZone(MPPropertySet);
  v31 = sub_1004DD85C().super.isa;
  v32 = sub_1004DD1FC().super.isa;

  v33 = [v30 initWithProperties:v31 relationships:v32];

  static SharedListening.Event.properties = v33;
}

id static SharedListening.Event.properties.getter()
{
  if (qword_100633E78 != -1)
  {
    swift_once();
  }

  v1 = static SharedListening.Event.properties;

  return v1;
}

uint64_t sub_100295660()
{
  sub_100296798();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100512790;
  *(v0 + 32) = sub_100006F10(0, &qword_10063CED8);
  *(v0 + 40) = sub_100006F10(0, &qword_10063CEE0);
  *(v0 + 48) = sub_100006F10(0, &qword_100636B50);
  *(v0 + 56) = sub_100006F10(0, qword_100636B58);
  result = sub_100006F10(0, &qword_10063CEE8);
  *(v0 + 64) = result;
  off_10063CE80 = v0;
  return result;
}

void *sub_100295740()
{
  result = sub_100295760();
  off_10063CE88 = result;
  return result;
}

uint64_t sub_100295760()
{
  sub_100004CB8(&qword_10063CF20);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1005128C0;
  *(v0 + 32) = sub_1004DCA0C();
  *(v0 + 40) = &protocol witness table for Album;
  *(v0 + 48) = sub_1004DC95C();
  *(v0 + 56) = &protocol witness table for Song;
  *(v0 + 64) = sub_1004DC2DC();
  *(v0 + 72) = &protocol witness table for MusicVideo;
  *(v0 + 80) = sub_1004DD05C();
  *(v0 + 88) = &protocol witness table for Playlist;
  *(v0 + 96) = sub_1004DCD1C();
  *(v0 + 104) = &protocol witness table for Station;
  *(v0 + 112) = sub_1004DCB3C();
  *(v0 + 120) = &protocol witness table for Artist;
  return v0;
}

uint64_t sub_100295828(uint64_t a1, void *a2)
{
  **(*(*sub_100008C70((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;
  v3 = a2;

  return swift_continuation_resume();
}

uint64_t sub_10029588C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(*sub_100008C70((a1 + 32), *(a1 + 56)) + 64) + 40);
  *v5 = a2;
  v5[1] = a3;
  v6 = a2;
  v7 = a3;

  return swift_continuation_resume();
}

uint64_t sub_100295900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[32] = a4;
  v5[33] = a5;
  v5[30] = a2;
  v5[31] = a3;
  v5[29] = a1;
  sub_100004CB8(&qword_100635240);
  v5[34] = swift_task_alloc();

  return _swift_task_switch(sub_1002959A4, 0, 0);
}

uint64_t sub_1002959A4()
{
  v1 = *(v0 + 248);
  if (v1)
  {
    *(v0 + 88) = v1;
    *(v0 + 96) = 3;
    v2 = &protocol witness table for Player.ReplaceCommand;
    v3 = &type metadata for Player.ReplaceCommand;
    v21 = v1;
  }

  else
  {
    v21 = 0;
    *(v0 + 88) = 0;
    v2 = &protocol witness table for Player.PlaybackCommand;
    v3 = &type metadata for Player.PlaybackCommand;
  }

  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 256);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v9 = sub_1004DDA8C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  sub_100035868(v0 + 88, v0 + 128);
  *(v0 + 168) = *v8;
  *(v0 + 184) = v8[1];
  v20 = *(v8 + 5);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v1;
  *(v10 + 40) = v6;
  *(v10 + 48) = v5;
  *(v10 + 56) = v1 == 0;
  sub_1000ABC20((v0 + 128), v10 + 64);
  v11 = *v8;
  v12 = v8[1];
  v13 = v8[2];
  *(v10 + 152) = *(v8 + 6);
  *(v10 + 136) = v13;
  *(v10 + 120) = v12;
  *(v10 + 104) = v11;
  *(v10 + 160) = *v7;
  v14 = *(v7 + 64);
  v16 = *(v7 + 32);
  v15 = *(v7 + 48);
  *(v10 + 176) = *(v7 + 16);
  *(v10 + 192) = v16;
  *(v10 + 208) = v15;
  *(v10 + 224) = v14;

  v17 = v21;

  sub_100036140(v0 + 168, v0 + 200);
  sub_100036140(v0 + 184, v0 + 216);
  sub_10000DE64(v20);
  sub_1000108DC(v7, v0 + 16, &qword_1006368B0);
  sub_10021C658(0, 0, v4, &unk_100525A00, v10);

  sub_100008D24(v0 + 88);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_100295BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 152) = v10;
  *(v8 + 160) = v11;
  *(v8 + 136) = a6;
  *(v8 + 144) = a8;
  *(v8 + 192) = a7;
  *(v8 + 128) = a5;
  return _swift_task_switch(sub_100295C14, 0, 0);
}

uint64_t sub_100295C14()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 168) = v1;
    *v1 = v0;
    v1[1] = sub_100295E24;
    v2 = *(v0 + 192);

    return GroupActivitiesManager.leave(performLeaveCommand:)(v2);
  }

  else if (*(v0 + 136))
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v6 = *v4;
    v7 = v4[1];
    v8 = v4[2];
    v9 = v4[3];
    v10 = v4[5];
    v11 = v4[6];

    sub_10000DE64(v10);
    sub_1000108DC(v5, v0 + 16, &qword_1006368B0);
    v12 = sub_10021C3A8(v6, v7, v8, v9, v10, v11, v5);
    *(v0 + 112) = &type metadata for Alert.ActionCommandIssuingContext;
    *(v0 + 120) = &protocol witness table for Alert.ActionCommandIssuingContext;
    *(v0 + 88) = v12;
    *(v0 + 96) = v13;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_1002960AC;
    v15 = *(v0 + 144);

    return Player.perform(_:options:issuer:)(v15, 0, 0, 0, v0 + 88);
  }

  else
  {
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_100295E24()
{

  return _swift_task_switch(sub_100295F20, 0, 0);
}

uint64_t sub_100295F20()
{
  if (v0[17])
  {
    v1 = v0[19];
    v2 = v0[20];
    v3 = *v1;
    v4 = v1[1];
    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[5];
    v8 = v1[6];

    sub_10000DE64(v7);
    sub_1000108DC(v2, (v0 + 2), &qword_1006368B0);
    v9 = sub_10021C3A8(v3, v4, v5, v6, v7, v8, v2);
    v0[14] = &type metadata for Alert.ActionCommandIssuingContext;
    v0[15] = &protocol witness table for Alert.ActionCommandIssuingContext;
    v0[11] = v9;
    v0[12] = v10;
    v11 = swift_task_alloc();
    v0[22] = v11;
    *v11 = v0;
    v11[1] = sub_1002960AC;
    v12 = v0[18];

    return Player.perform(_:options:issuer:)(v12, 0, 0, 0, (v0 + 11));
  }

  else
  {
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1002960AC(void *a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100296214, 0, 0);
  }

  else
  {

    sub_10001074C(v4 + 88, &qword_100635998);
    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_100296214()
{
  sub_10001074C(v0 + 88, &qword_100635998);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100296288()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, static Logger.sharedListening);
  sub_100035430(v0, static Logger.sharedListening);
  return sub_1004D965C();
}

uint64_t static Logger.sharedListening.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v2 = sub_1004D966C();
  v3 = sub_100035430(v2, static Logger.sharedListening);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1002963B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1002963D4, 0, 0);
}

uint64_t sub_1002963D4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    v1();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100296480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[8] = a3;
  return _swift_task_switch(sub_1002964A4, 0, 0);
}

uint64_t sub_1002964A4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = objc_opt_self();
  v5 = [v3 commandRequest];
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v0[6] = sub_100299F88;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100167E90;
  v0[5] = &unk_1005EA330;
  v7 = _Block_copy(v0 + 2);
  v8 = v3;
  sub_10000DE64(v2);

  [v4 performRequest:v5 completion:v7];
  _Block_release(v7);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10029660C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100035C88;

  return sub_100296480(a1, a2, v6, v7, v8);
}

void sub_1002966CC(uint64_t a1, id a2, void (*a3)(void))
{
  if ([a2 type] == 1)
  {
    if (a3)
    {
      v5 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      a3();
    }
  }

  else if (a3)
  {
    (a3)(a1);
  }
}

uint64_t sub_100296798()
{
  v0 = sub_100004CB8(&qword_10063CEF0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_10063CEF8;
  }

  else
  {
    v2 = &qword_1006379A0;
  }

  return sub_100004CB8(v2);
}

void sub_100296810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    sub_10000DE74(a6);
  }
}

uint64_t _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1004DF08C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1004DF08C() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_1004DF08C() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10029691C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v37 = a3;
  v38 = a2;
  v6 = sub_1004D82AC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004D83FC();
  __chkstk_darwin(v10 - 8);
  v11 = sub_1004DD3EC();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v34 - v16;
  if (FigOutputMonitorIsScreenProbablyBeingRecorded())
  {
    if (qword_100633E90 != -1)
    {
      swift_once();
    }

    v18 = sub_1004D966C();
    sub_100035430(v18, static Logger.sharedListening);
    v19 = sub_1004D964C();
    v20 = sub_1004DDF9C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Play locally action is NOT available because of screen sharing", v21, 2u);
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    v35 = v6;
    v36 = v7;
    sub_1004DD37C();
    (*(v12 + 16))(v15, v17, v11);
    if (qword_100633A80 != -1)
    {
      swift_once();
    }

    v29 = qword_100671958;
    sub_1004D838C();
    v24 = sub_1004DD4AC();
    v25 = v30;
    (*(v12 + 8))(v17, v11);
    v28 = swift_allocObject();
    v31 = v38;
    v28[2] = a1;
    v28[3] = v31;
    v28[4] = v37;

    v32 = a1;

    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v22 = sub_1004D827C();
    v23 = v33;
    (*(v36 + 8))(v9, v35);
    v27 = &unk_1005259F0;
    v26 = 2;
  }

  *a4 = v22;
  a4[1] = v23;
  a4[2] = v24;
  a4[3] = v25;
  a4[4] = v26;
  a4[5] = v27;
  a4[6] = v28;
}

uint64_t sub_100296CF4()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100296D34(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100035C88;

  return sub_1002963B4(a1, a2, v7, v6);
}

void sub_100296DE4(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 type];
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      v28 = [v2 sessionEvent];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 kind];

        if (v30 == 4)
        {

          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          v12 = 2;
          goto LABEL_83;
        }

        if (v30 == 1)
        {

          v12 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = 5;
          goto LABEL_83;
        }
      }

      if (qword_100633E90 != -1)
      {
        swift_once();
      }

      v38 = sub_1004D966C();
      sub_100035430(v38, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_1004D964C();
      v21 = sub_1004DDF5C();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v39 = [v20 sessionEvent];
        v40 = v39;
        if (v39)
        {
          v41 = [v39 kind];
        }

        else
        {
          v41 = 0;
        }

        v80 = v41;
        v81 = v40 == 0;
        sub_100004CB8(&qword_10063CF18);
        v59 = sub_1004DD4DC();
        v61 = sub_1000343A8(v59, v60, &v82);

        *(v22 + 4) = v61;
        v27 = "Unknown session event kind: %{public}s";
        goto LABEL_59;
      }

LABEL_46:

LABEL_47:
LABEL_60:
      v12 = 0;
      goto LABEL_61;
    }

    if (v4 == 2)
    {
      v5 = [v2 playbackEvent];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 kind];

        if (v7 > 2)
        {
          if (v7 == 3)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 1;
            goto LABEL_83;
          }

          if (v7 == 4)
          {
            v42 = [v2 playbackEvent];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 item];

              if (v44)
              {
                v45 = [v44 innermostModelObject];

                objc_opt_self();
                v46 = swift_dynamicCastObjCClass();
                v44 = v46;
                if (v46)
                {
                  v47 = [v46 title];
                  if (v47)
                  {
                    v48 = v47;
                    v12 = sub_1004DD43C();
                    v8 = v49;

                    v9 = 0;
                    v10 = 0;
                    v11 = 2;
                    goto LABEL_83;
                  }
                }

                else
                {
                }
              }
            }

            else
            {
              v44 = 0;
            }

            v12 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 2;
            v8 = 0xE000000000000000;
            goto LABEL_83;
          }
        }

        else
        {
          if (v7 == 1)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 4;
            goto LABEL_83;
          }

          if (v7 == 2)
          {

            v8 = 0;
            v9 = 0;
            v10 = 0;
            v11 = 5;
            v12 = 3;
LABEL_83:
            *a2 = v12;
            *(a2 + 8) = v8;
            *(a2 + 16) = v9;
            *(a2 + 24) = v10;
            *(a2 + 32) = 0;
            *(a2 + 40) = 0;
            *(a2 + 48) = v11;
            return;
          }
        }
      }

      if (qword_100633E90 != -1)
      {
        swift_once();
      }

      v50 = sub_1004D966C();
      sub_100035430(v50, static Logger.sharedListening);
      v20 = v2;
      v2 = sub_1004D964C();
      v21 = sub_1004DDF5C();

      if (os_log_type_enabled(v2, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v82 = v23;
        *v22 = 136446210;
        v51 = [v20 playbackEvent];
        v52 = v51;
        if (v51)
        {
          v53 = [v51 kind];
        }

        else
        {
          v53 = 0;
        }

        v80 = v53;
        v81 = v52 == 0;
        sub_100004CB8(&qword_10063CF10);
        v62 = sub_1004DD4DC();
        v64 = sub_1000343A8(v62, v63, &v82);

        *(v22 + 4) = v64;
        v27 = "Unknown playback event kind: %{public}s";
        goto LABEL_59;
      }

      goto LABEL_46;
    }

LABEL_13:
    if (qword_100633E90 != -1)
    {
      swift_once();
    }

    v19 = sub_1004D966C();
    sub_100035430(v19, static Logger.sharedListening);
    v20 = v2;
    v2 = sub_1004D964C();
    v21 = sub_1004DDF5C();

    if (os_log_type_enabled(v2, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v80 = v23;
      *v22 = 136446210;
      v82 = [v20 type];
      type metadata accessor for MPCSharedListeningEventType(0);
      v24 = sub_1004DD4DC();
      v26 = sub_1000343A8(v24, v25, &v80);

      *(v22 + 4) = v26;
      v27 = "Unknown event type: %{public}s";
LABEL_59:
      _os_log_impl(&_mh_execute_header, v2, v21, v27, v22, 0xCu);
      sub_100008D24(v23);

      goto LABEL_60;
    }

    goto LABEL_46;
  }

  if (v4 != 3)
  {
    if (v4 == 4)
    {
      v13 = [v2 reactionEvent];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 reactionIdentifier];
        v12 = sub_1004DD43C();
        v8 = v16;

        v17 = [v14 reaction];
        v9 = sub_1004DD43C();
        v10 = v18;

        v11 = 1;
        goto LABEL_83;
      }

      goto LABEL_47;
    }

    goto LABEL_13;
  }

  v31 = [v2 queueEvent];
  if (!v31)
  {
    goto LABEL_81;
  }

  v32 = v31;
  v33 = [v31 kind];

  if (v33 != 1)
  {
    if (v33 != 7)
    {
      if (v33 == 6)
      {
        v34 = [v2 queueEvent];
        if (v34)
        {
          v35 = v34;
          v12 = [v34 playedNowContent];

          if (v12)
          {
            v36 = [v12 startItem];
            v37 = [v36 innermostModelObject];

            objc_opt_self();
            v12 = swift_dynamicCastObjCClass();
            if (v12)
            {
              v8 = 0;
              v9 = 0;
              v10 = 0;
              v11 = 3;
              goto LABEL_83;
            }
          }

          else
          {
          }

LABEL_61:
          v8 = 0;
          v9 = 0;
          v10 = 0;
          v11 = -1;
          goto LABEL_83;
        }

        goto LABEL_47;
      }

      goto LABEL_81;
    }

LABEL_77:
    v71 = [v2 queueEvent];
    if (v71)
    {
      v72 = v71;
      v73 = [v71 contentUpdatedMessage];

      if (v73)
      {
        v74 = [v73 localizedTitle];
        if (v74)
        {
          v75 = v74;
          v12 = sub_1004DD43C();
          v8 = v76;
        }

        else
        {
          v12 = 0;
          v8 = 0;
        }

        v77 = [v73 localizedMessage];
        if (v77)
        {
          v78 = v77;
          v9 = sub_1004DD43C();
          v10 = v79;
        }

        else
        {

          v9 = 0;
          v10 = 0;
        }

        v11 = 4;
        goto LABEL_83;
      }
    }

LABEL_81:

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 4;
    goto LABEL_82;
  }

  v54 = [v2 queueEvent];
  if (!v54)
  {
    goto LABEL_77;
  }

  v55 = v54;
  v56 = [v54 addedContent];

  if (!v56)
  {
    goto LABEL_77;
  }

  v57 = [v56 container];
  if (v57)
  {
    v58 = v57;
    v12 = [v57 innermostModelObject];

    v9 = 0;
    v10 = 0;
    v11 = 0;
LABEL_82:
    v8 = 1;
    goto LABEL_83;
  }

  v65 = [v56 items];
  sub_100006F10(0, &qword_10063CF08);
  v66 = sub_1004DD87C();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_66;
    }

LABEL_76:

    goto LABEL_77;
  }

  if (!sub_1004DED5C())
  {
    goto LABEL_76;
  }

LABEL_66:
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = sub_1004DEB2C();
    goto LABEL_69;
  }

  if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v67 = *(v66 + 32);
LABEL_69:
    v68 = v67;

    v69 = [v68 innermostModelObject];

    objc_opt_self();
    v70 = swift_dynamicCastObjCClass();
    if (v70)
    {
      v12 = v70;

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      goto LABEL_83;
    }

    goto LABEL_77;
  }

  __break(1u);
}

uint64_t sub_1002978B4()
{
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_1004D966C();
  v0[21] = sub_100035430(v2, static Logger.sharedListening);
  v3 = v1;
  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with intent=%{public}@", v7, 0xCu);
    sub_10001074C(v8, &qword_100636460);
  }

  v10 = objc_allocWithZone(ICLiveLinkIdentity);
  v0[14] = CFRange.init(_:);
  v0[15] = 0;
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10001E3C4;
  v0[13] = &unk_1005EA240;
  v11 = _Block_copy(v0 + 10);
  v12 = [v10 initWithBlock:v11];
  v0[22] = v12;
  _Block_release(v11);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v14 = v0[20];
    v15 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100297BBC;
    v16 = swift_continuation_init();
    v0[17] = sub_100004CB8(&qword_10063CF00);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10029588C;
    v0[13] = &unk_1005EA268;
    v0[14] = v16;
    [v15 buildSharedSessionIntentWithIntent:v14 identity:v12 extendedStatusCompletion:v0 + 10];
    isEscapingClosureAtFileLocation = (v0 + 2);
  }

  return _swift_continuation_await(isEscapingClosureAtFileLocation);
}

uint64_t sub_100297BBC()
{

  return _swift_task_switch(sub_100297C9C, 0, 0);
}

uint64_t sub_100297C9C()
{
  v23 = v0;
  v1 = v0[18];
  v2 = v0[19];
  if (v1 && (v3 = v1, v4 = [v3 sharedListeningProperties], v3, v4))
  {

    v5 = sub_1004D964C();
    v6 = sub_1004DDF9C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "✅ Shared listening intent successfully built", v7, 2u);
    }

    v8 = v0[22];

    v9 = v0[1];

    return v9(v1);
  }

  else
  {
    v11 = v2;
    v12 = sub_1004D964C();
    v13 = sub_1004DDF7C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136446210;
      v0[10] = [v11 error];
      sub_100004CB8(&qword_10063AD60);
      v16 = sub_1004DD4DC();
      v18 = sub_1000343A8(v16, v17, &v22);

      *(v14 + 4) = v18;
      _os_log_impl(&_mh_execute_header, v12, v13, "⚠️ Creation error %{public}s", v14, 0xCu);
      sub_100008D24(v15);
    }

    v19 = v0[22];
    sub_10028CAC0();
    swift_allocError();
    *v20 = v11;
    *(v20 + 8) = 2;
    swift_willThrow();

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_100297F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[42] = a3;
  v4[43] = a4;
  v4[40] = a1;
  v4[41] = a2;
  v4[44] = sub_1004DDA4C();
  v4[45] = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  v4[46] = v6;
  v4[47] = v5;

  return _swift_task_switch(sub_100297FF4, v6, v5);
}

uint64_t sub_100297FF4()
{
  v45 = v0;
  if (qword_100633E90 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 320);
  v2 = sub_1004D966C();
  *(v0 + 384) = sub_100035430(v2, static Logger.sharedListening);
  v3 = v1;

  v4 = sub_1004D964C();
  v5 = sub_1004DDF9C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 336);
    v43 = *(v0 + 320);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v44[0] = v8;
    *v7 = 136446210;
    *(v0 + 272) = v43;
    *(v0 + 288) = v6;
    v9 = v43;

    v10 = sub_1004DD4DC();
    v12 = sub_1000343A8(v10, v11, v44);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "🏗 Building session with command=%{public}s", v7, 0xCu);
    sub_100008D24(v8);
  }

  v13 = *(v0 + 344);
  if (v13 && (v14 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player, swift_beginAccess(), *(v13 + v14)) && (swift_getKeyPath(), swift_getKeyPath(), , sub_1004D9B6C(), , , , (v15 = *(v0 + 296)) != 0) && (v16 = [*(v0 + 296) tracklist], v17 = objc_msgSend(v16, "playingItem"), v15, v16, v17))
  {

    v18 = OBJC_IVAR____TtC9MusicCore18PlaybackController_player;
    swift_beginAccess();
    if (!*(v13 + v18) || (swift_getKeyPath(), swift_getKeyPath(), , sub_1004D9B6C(), , , , (v19 = *(v0 + 304)) == 0) || (v20 = [*(v0 + 304) route], *(v0 + 392) = v20, v19, !v20))
    {
LABEL_14:
      v21 = *(v0 + 336);
      v22 = *(v0 + 320);
      *(v0 + 144) = v22;
      *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
      *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
      *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
      *(v0 + 184) = 0x694C646572616853;
      *(v0 + 192) = 0xEF676E696E657473;
      *(v0 + 160) = v21;
      *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
      v23 = v22;

      *(v0 + 416) = sub_1004DDA3C();
      v25 = sub_1004DD9BC();
      *(v0 + 424) = v25;
      *(v0 + 432) = v24;

      return _swift_task_switch(sub_1002988C4, v25, v24);
    }

    if ([v20 isDeviceRoute])
    {

      goto LABEL_14;
    }

    v28 = v20;
    v29 = sub_1004D964C();
    v30 = sub_1004DDF9C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136446210;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_1004DD43C();
      v37 = v36;

      v38 = sub_1000343A8(v35, v37, v44);

      *(v31 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v29, v30, "    Build session command needs to be performed on the system route.\n    Switching from %{public}s) to system route.", v31, 0xCu);
      sub_100008D24(v32);
    }

    v39 = objc_opt_self();
    v40 = [v39 systemRoute];
    *(v0 + 400) = v40;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100298690;
    v41 = swift_continuation_init();
    *(v0 + 136) = sub_100004CB8(&unk_10063A4A0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000FD4C4;
    *(v0 + 104) = &unk_1005EA218;
    *(v0 + 112) = v41;
    [v39 setActiveRoute:v40 completion:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    sub_10028CAC0();
    swift_allocError();
    *v26 = 2;
    *(v26 + 8) = 4;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_100298690()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  v3 = *(v1 + 376);
  v4 = *(v1 + 368);
  if (v2)
  {
    v5 = sub_100299230;
  }

  else
  {
    v5 = sub_1002987C0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1002987C0()
{
  v1 = *(v0 + 400);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  *(v0 + 144) = v3;
  *(v0 + 208) = &type metadata for Player.CommandIssuerIdentity;
  *(v0 + 216) = &protocol witness table for Player.CommandIssuerIdentity;
  *(v0 + 176) = &protocol witness table for Player.BuildSharedSessionCommand;
  *(v0 + 184) = 0x694C646572616853;
  *(v0 + 192) = 0xEF676E696E657473;
  *(v0 + 160) = v2;
  *(v0 + 168) = &type metadata for Player.BuildSharedSessionCommand;
  v4 = v3;

  *(v0 + 416) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();
  *(v0 + 424) = v6;
  *(v0 + 432) = v5;

  return _swift_task_switch(sub_1002988C4, v6, v5);
}

uint64_t sub_1002988C4()
{
  sub_100004CB8(&unk_100639D70);
  v1 = swift_allocObject();
  v0[55] = v1;
  *(v1 + 16) = xmmword_100511DA0;
  sub_100035868((v0 + 18), v1 + 32);
  v0[56] = sub_1004DDA3C();
  v2 = swift_task_alloc();
  v0[57] = v2;
  *v2 = v0;
  v2[1] = sub_1002989C0;

  return sub_100206638(v1, 0x10000, 1, 0, 0, (v0 + 23));
}

uint64_t sub_1002989C0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {

    v4 = sub_1004DD9BC();
    v6 = v5;
    v7 = sub_100298CD8;
  }

  else
  {
    v4 = sub_1004DD9BC();
    v6 = v8;
    v7 = sub_100298B38;
  }

  return _swift_task_switch(v7, v4, v6);
}

uint64_t sub_100298B38()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_100298BA4, v1, v2);
}

uint64_t sub_100298BA4()
{
  v1 = v0[58];

  if (v1 >> 62)
  {
    v4 = sub_1004DED5C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_8:

    sub_10001074C((v0 + 23), &qword_100635998);
    sub_100008D24((v0 + 18));
    v2 = v0[46];
    v3 = v0[47];
    v6 = sub_1002991CC;
    goto LABEL_9;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1004DEB2C();
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return _swift_task_switch(v4, v2, v3);
    }

    v5 = *(v0[58] + 32);
  }

  v0[60] = v5;

  sub_10001074C((v0 + 23), &qword_100635998);
  sub_100008D24((v0 + 18));
  v2 = v0[46];
  v3 = v0[47];
  v6 = sub_100298F78;
LABEL_9:
  v4 = v6;

  return _swift_task_switch(v4, v2, v3);
}

uint64_t sub_100298CD8()
{

  v1 = *(v0 + 424);
  v2 = *(v0 + 432);

  return _swift_task_switch(sub_100298D3C, v1, v2);
}

uint64_t sub_100298D3C()
{

  v1 = *(v0 + 368);
  v2 = *(v0 + 376);

  return _swift_task_switch(sub_100298DA0, v1, v2);
}

uint64_t sub_100298DA0()
{
  v13 = v0;

  sub_10001074C((v0 + 23), &qword_100635998);
  sub_100008D24((v0 + 18));
  v1 = v0[59];
  swift_errorRetain();
  v2 = sub_1004D964C();
  v3 = sub_1004DDF7C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136446210;
    v0[39] = v1;
    swift_errorRetain();
    sub_100004CB8(&qword_100638980);
    v6 = sub_1004DD4DC();
    v8 = sub_1000343A8(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "⚠️ Building session failed with error=%{public}s", v4, 0xCu);
    sub_100008D24(v5);
  }

  sub_10028CAC0();
  swift_allocError();
  *v9 = 3;
  *(v9 + 8) = 4;
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_100298F78()
{
  v18 = v0;
  v1 = *(v0 + 480);

  v2 = [v1 error];
  if (v2 || (v2 = [*(v0 + 480) dialog]) != 0)
  {
    v3 = *(v0 + 480);

    sub_10028CAC0();
    v4 = swift_allocError();
    *v5 = v3;
    *(v5 + 8) = 2;
    swift_willThrow();

    swift_errorRetain();
    v6 = sub_1004D964C();
    v7 = sub_1004DDF7C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      *(v0 + 312) = v4;
      swift_errorRetain();
      sub_100004CB8(&qword_100638980);
      v10 = sub_1004DD4DC();
      v12 = sub_1000343A8(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "⚠️ Building session failed with error=%{public}s", v8, 0xCu);
      sub_100008D24(v9);
    }

    swift_allocError();
    *v13 = 3;
    *(v13 + 8) = 4;
    swift_willThrow();

    v14 = *(v0 + 8);
  }

  else
  {
    v16 = *(v0 + 480);

    v14 = *(v0 + 8);
  }

  return v14();
}

uint64_t sub_1002991CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100299230()
{
  v1 = v0[50];
  v2 = v0[49];

  swift_willThrow();

  v3 = v0[1];

  return v3();
}

unint64_t sub_1002992DC()
{
  result = qword_10063CEA8;
  if (!qword_10063CEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CEA8);
  }

  return result;
}

uint64_t sub_100299330(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1004DF08C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696A6F6D65 && a2 == 0xE500000000000000 || (sub_1004DF08C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x44497265646E6573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1004DF08C();

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

uint64_t sub_10029943C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100004CB8(&qword_10063CED0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - v7;
  sub_100008C70(a1, a1[3]);
  sub_1002992DC();
  sub_1004DF2FC();
  if (v2)
  {
    return sub_100008D24(a1);
  }

  v25 = 0;
  v9 = sub_1004DEE8C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_1004DEE8C();
  v21 = v12;
  v23 = 2;
  v13 = sub_1004DEE6C();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = sub_100008D24(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_10029968C()
{
  result = qword_10063CEB0;
  if (!qword_10063CEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CEB0);
  }

  return result;
}

uint64_t sub_10029970C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100299730(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_10029974C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100299794(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002997E8(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_100299830(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10029988C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100299900(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10029995C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1002999D0(uint64_t a1)
{
  if ((*(a1 + 8) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 8) & 7;
  }
}

uint64_t sub_1002999EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100299A34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100299A78(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_100299AA4()
{
  result = qword_10063CEB8;
  if (!qword_10063CEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CEB8);
  }

  return result;
}

unint64_t sub_100299AFC()
{
  result = qword_10063CEC0;
  if (!qword_10063CEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CEC0);
  }

  return result;
}

unint64_t sub_100299B54()
{
  result = qword_10063CEC8;
  if (!qword_10063CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CEC8);
  }

  return result;
}

uint64_t sub_100299BB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100299BD0()
{
  v1 = sub_1004D809C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_100299C58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100299CA0()
{

  return swift_deallocObject();
}

uint64_t sub_100299CE8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_100035B28;

  return sub_100295900(a1, a2, v6, v7, v8);
}

uint64_t sub_100299DA8()
{
  swift_unknownObjectRelease();

  sub_100008D24(v0 + 64);

  if (*(v0 + 144))
  {
  }

  if (*(v0 + 216))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100299E48(uint64_t a1)
{
  v4 = *(v1 + 24);
  v11 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100035B28;

  return sub_100295BE0(a1, v11, v4, v5, v6, v7, v8, v1 + 64);
}

uint64_t sub_100299F40()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6572676F72506E69;
  if (a1 != 2)
  {
    v2 = 0x6574656C706D6F63;
  }

  if (!a1)
  {
    v1 = 0xD00000000000001ELL;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10029A088()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10029A158()
{
  sub_1004DD55C();
}

Swift::Int sub_10029A214()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10029A2E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10029A310(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (*v1 != 2)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE900000000000064;
  }

  if (!*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001004E9D70;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

MusicCore::UnifiedMessages::GroupDefaultsKey_optional __swiftcall UnifiedMessages.GroupDefaultsKey.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v6._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._rawValue = &off_1005D3DA8;
  v6._object = object;
  v3 = sub_1004DEE2C(v2, v6);

  if (v3 == 1)
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_countOfSongsInLibrary;
  }

  else
  {
    v4.value = MusicCore_UnifiedMessages_GroupDefaultsKey_unknownDefault;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t UnifiedMessages.GroupDefaultsKey.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_10029A518(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "nknown";
  }

  else
  {
    v4 = "countOfPlaylistsInLibrary";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000015;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v7 = "nknown";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1004DF08C();
  }

  return v9 & 1;
}

Swift::Int sub_10029A5C4()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10029A644()
{
  sub_1004DD55C();
}

Swift::Int sub_10029A6B0()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10029A72C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1005D3DA8;
  v8._object = v3;
  v5 = sub_1004DEE2C(v4, v8);

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

void sub_10029A78C(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000015;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "countOfPlaylistsInLibrary";
  }

  else
  {
    v3 = "nknown";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t _s9MusicCore15UnifiedMessagesO3MLIV5StateO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D3D28;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10029A81C()
{
  result = qword_10063CF28;
  if (!qword_10063CF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CF28);
  }

  return result;
}

unint64_t sub_10029A874()
{
  result = qword_10063CF30;
  if (!qword_10063CF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CF30);
  }

  return result;
}

unint64_t sub_10029A908()
{
  result = qword_10063CF38;
  if (!qword_10063CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063CF38);
  }

  return result;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v7 = qword_10063CF40;
  v8 = *algn_10063CF48;

  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  sub_1004DD5FC(v9);

  v10._countAndFlagsBits = countAndFlagsBits;
  v10._object = object;
  sub_1004DD5FC(v10);

  v3 = v7;
  v4 = v8;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_10029AA18(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1004DBE1C();
}

uint64_t *AccessibilityIdentifier.libraryAlbumsView.unsafeMutableAddressor()
{
  if (qword_100634178 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryAlbumsView;
}

uint64_t *AccessibilityIdentifier.libraryArtistsListView.unsafeMutableAddressor()
{
  if (qword_100634168 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryArtistsListView;
}

uint64_t *AccessibilityIdentifier.librarySongsView.unsafeMutableAddressor()
{
  if (qword_1006341C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.librarySongsView;
}

uint64_t *AccessibilityIdentifier.libraryPlaylistsView.unsafeMutableAddressor()
{
  if (qword_1006341B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryPlaylistsView;
}

uint64_t *AccessibilityIdentifier.libraryGenresView.unsafeMutableAddressor()
{
  if (qword_1006341A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGenresView;
}

uint64_t *AccessibilityIdentifier.libraryRecentlyAddedView.unsafeMutableAddressor()
{
  if (qword_100634160 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryRecentlyAddedView;
}

uint64_t *AccessibilityIdentifier.libraryMadeForYouView.unsafeMutableAddressor()
{
  if (qword_1006341A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMadeForYouView;
}

uint64_t *AccessibilityIdentifier.libraryMusicVideosView.unsafeMutableAddressor()
{
  if (qword_1006341B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryMusicVideosView;
}

uint64_t *AccessibilityIdentifier.libraryCompilationsView.unsafeMutableAddressor()
{
  if (qword_100634188 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryCompilationsView;
}

uint64_t *AccessibilityIdentifier.libraryComposersView.unsafeMutableAddressor()
{
  if (qword_100634180 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryComposersView;
}

uint64_t *AccessibilityIdentifier.libraryTVAndMoviesView.unsafeMutableAddressor()
{
  if (qword_1006341C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTVAndMoviesView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadedView.unsafeMutableAddressor()
{
  if (qword_100634190 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadedView;
}

uint64_t *AccessibilityIdentifier.libraryDownloadingView.unsafeMutableAddressor()
{
  if (qword_100634198 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryDownloadingView;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1.unsafeMutableAddressor()
{
  if (qword_100634310 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression1;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2.unsafeMutableAddressor()
{
  if (qword_100634318 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression2;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3.unsafeMutableAddressor()
{
  if (qword_100634320 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression3;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4.unsafeMutableAddressor()
{
  if (qword_100634328 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression4;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5.unsafeMutableAddressor()
{
  if (qword_100634330 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression5;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6.unsafeMutableAddressor()
{
  if (qword_100634338 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression6;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7.unsafeMutableAddressor()
{
  if (qword_100634340 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression7;
}

uint64_t *AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8.unsafeMutableAddressor()
{
  if (qword_100634348 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistEditorMetadataArtworkExpression8;
}

MusicCore::AccessibilityIdentifier __swiftcall AccessibilityIdentifier.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;

  v3 = countAndFlagsBits;
  v4 = object;
  v5 = countAndFlagsBits;
  v6 = object;
  result.name._object = v6;
  result.name._countAndFlagsBits = v5;
  result.rawValue._object = v4;
  result.rawValue._countAndFlagsBits = v3;
  return result;
}

uint64_t static AccessibilityIdentifier.named(_:)(uint64_t a1, void *a2)
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v5 = qword_10063CF40;

  v6._countAndFlagsBits = 46;
  v6._object = 0xE100000000000000;
  sub_1004DD5FC(v6);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  sub_1004DD5FC(v7);

  return v5;
}

void sub_10029B380()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_10029B3E4();
  v3 = v2;

  qword_10063CF40 = v1;
  *algn_10063CF48 = v3;
}

uint64_t sub_10029B3E4()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100634B30);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v27[-v6];
  v30 = 0;
  v31 = 0xE000000000000000;
  v8 = [v1 bundleIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1004DD43C();
    v12 = v11;

    v28 = 46;
    v29 = 0xE100000000000000;
    __chkstk_darwin(v13);
    *&v27[-16] = &v28;
    if (sub_1002AC394(0x7FFFFFFFFFFFFFFFLL, 1, sub_100108104, &v27[-32], v10, v12, v27)[2])
    {

      goto LABEL_12;
    }
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  v14 = [v1 executableURL];
  if (v14)
  {
    v15 = v14;
    sub_1004D802C();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_1004D809C();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v5, v16, 1, v17);
  sub_100031AD8(v5, v7);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_100031B48(v7);
    v19 = 0xE500000000000000;
    v20._countAndFlagsBits = 0x636973754DLL;
  }

  else
  {
    v21 = sub_1004D7FBC();
    v19 = v22;
    (*(v18 + 8))(v7, v17);
    v20._countAndFlagsBits = v21;
  }

  v20._object = v19;
  sub_1004DD5FC(v20);

  sub_1004DE7FC();
LABEL_12:
  v23 = sub_1004DD53C();
  v25 = v24;

  v32._countAndFlagsBits = v23;
  v32._object = v25;
  sub_1004DD5FC(v32);

  return v30;
}

uint64_t sub_10029B6E8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x6B726F77747241;
  v4._object = 0xE700000000000000;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.artwork = v1;
  *algn_100671FA8 = v2;
  qword_100671FB0 = 0x6B726F77747241;
  unk_100671FB8 = 0xE700000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.artwork.unsafeMutableAddressor()
{
  if (qword_100633EA0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.artwork;
}

uint64_t static AccessibilityIdentifier.artwork.getter()
{
  if (qword_100633EA0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.artwork;

  return v0;
}

uint64_t sub_10029B88C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001ALL;
  v4._object = 0x80000001004F40B0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.doneButton = v1;
  *algn_100671FC8 = v2;
  qword_100671FD0 = 0xD00000000000001ALL;
  unk_100671FD8 = 0x80000001004F40B0;
  return result;
}

uint64_t *AccessibilityIdentifier.doneButton.unsafeMutableAddressor()
{
  if (qword_100633EA8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.doneButton;
}

uint64_t static AccessibilityIdentifier.doneButton.getter()
{
  if (qword_100633EA8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.doneButton;

  return v0;
}

uint64_t sub_10029BA38()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x747475426B636142;
  v4._object = 0xEA00000000006E6FLL;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.backButton = v1;
  *algn_100671FE8 = v2;
  qword_100671FF0 = 0x747475426B636142;
  unk_100671FF8 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.backButton.unsafeMutableAddressor()
{
  if (qword_100633EB0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.backButton;
}

uint64_t static AccessibilityIdentifier.backButton.getter()
{
  if (qword_100633EB0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.backButton;

  return v0;
}

uint64_t sub_10029BBE4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 1701998413;
  v4._object = 0xE400000000000000;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.moreButton = v1;
  *algn_100672008 = v2;
  qword_100672010 = 1701998413;
  unk_100672018 = 0xE400000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.moreButton.unsafeMutableAddressor()
{
  if (qword_100633EB8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.moreButton;
}

uint64_t static AccessibilityIdentifier.moreButton.getter()
{
  if (qword_100633EB8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.moreButton;

  return v0;
}

uint64_t sub_10029BD84()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001004F4090;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.calendarButton = v1;
  *algn_100672028 = v2;
  qword_100672030 = 0xD000000000000014;
  unk_100672038 = 0x80000001004F4090;
  return result;
}

uint64_t *AccessibilityIdentifier.calendarButton.unsafeMutableAddressor()
{
  if (qword_100633EC0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.calendarButton;
}

uint64_t static AccessibilityIdentifier.calendarButton.getter()
{
  if (qword_100633EC0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.calendarButton;

  return v0;
}

uint64_t sub_10029BF30()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x65486C6961746544;
  v4._object = 0xEC00000072656461;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeader = v1;
  *algn_100672048 = v2;
  strcpy(&qword_100672050, "DetailHeader");
  unk_10067205D = 0;
  unk_10067205E = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeader.unsafeMutableAddressor()
{
  if (qword_100633EC8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeader;
}

uint64_t static AccessibilityIdentifier.detailHeader.getter()
{
  if (qword_100633EC8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeader;

  return v0;
}

uint64_t sub_10029C0DC()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001004F4070;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderTitle = v1;
  *algn_100672068 = v2;
  qword_100672070 = 0xD000000000000012;
  unk_100672078 = 0x80000001004F4070;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_100633ED0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitle.getter()
{
  if (qword_100633ED0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitle;

  return v0;
}

uint64_t sub_10029C288()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001004F4050;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderTitleFavorited = v1;
  *algn_100672088 = v2;
  qword_100672090 = 0xD00000000000001CLL;
  unk_100672098 = 0x80000001004F4050;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderTitleFavorited.unsafeMutableAddressor()
{
  if (qword_100633ED8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderTitleFavorited;
}

uint64_t static AccessibilityIdentifier.detailHeaderTitleFavorited.getter()
{
  if (qword_100633ED8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderTitleFavorited;

  return v0;
}

uint64_t sub_10029C434()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001004F4030;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderLabel = v1;
  *algn_1006720A8 = v2;
  qword_1006720B0 = 0xD000000000000018;
  unk_1006720B8 = 0x80000001004F4030;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderLabel.unsafeMutableAddressor()
{
  if (qword_100633EE0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderLabel.getter()
{
  if (qword_100633EE0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderLabel;

  return v0;
}

uint64_t sub_10029C5E0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001004F4010;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderArtistLink = v1;
  *algn_1006720C8 = v2;
  qword_1006720D0 = 0xD000000000000017;
  unk_1006720D8 = 0x80000001004F4010;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderArtistLink.unsafeMutableAddressor()
{
  if (qword_100633EE8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderArtistLink;
}

uint64_t static AccessibilityIdentifier.detailHeaderArtistLink.getter()
{
  if (qword_100633EE8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderArtistLink;

  return v0;
}

uint64_t sub_10029C78C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x80000001004F3FF0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderDescriptionLabel = v1;
  *algn_1006720E8 = v2;
  qword_1006720F0 = 0xD00000000000001DLL;
  unk_1006720F8 = 0x80000001004F3FF0;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderDescriptionLabel.unsafeMutableAddressor()
{
  if (qword_100633EF0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderDescriptionLabel;
}

uint64_t static AccessibilityIdentifier.detailHeaderDescriptionLabel.getter()
{
  if (qword_100633EF0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderDescriptionLabel;

  return v0;
}

uint64_t sub_10029C938()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001004F3FD0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.detailHeaderMore = v1;
  *algn_100672108 = v2;
  qword_100672110 = 0xD000000000000011;
  unk_100672118 = 0x80000001004F3FD0;
  return result;
}

uint64_t *AccessibilityIdentifier.detailHeaderMore.unsafeMutableAddressor()
{
  if (qword_100633EF8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.detailHeaderMore;
}

uint64_t static AccessibilityIdentifier.detailHeaderMore.getter()
{
  if (qword_100633EF8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.detailHeaderMore;

  return v0;
}

uint64_t sub_10029CAE4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001004F3FB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.playIntentButton = v1;
  *algn_100672128 = v2;
  qword_100672130 = 0xD000000000000015;
  unk_100672138 = 0x80000001004F3FB0;
  return result;
}

uint64_t *AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor()
{
  if (qword_100633F00 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playIntentButton;
}

uint64_t static AccessibilityIdentifier.playIntentButton.getter()
{
  if (qword_100633F00 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playIntentButton;

  return v0;
}

uint64_t sub_10029CC90()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001004F3F90;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.shuffleIntentButton = v1;
  *algn_100672148 = v2;
  qword_100672150 = 0xD000000000000018;
  unk_100672158 = 0x80000001004F3F90;
  return result;
}

uint64_t *AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor()
{
  if (qword_100633F08 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.shuffleIntentButton;
}

uint64_t static AccessibilityIdentifier.shuffleIntentButton.getter()
{
  if (qword_100633F08 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.shuffleIntentButton;

  return v0;
}

uint64_t sub_10029CE3C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001DLL;
  v4._object = 0x80000001004F3F70;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.startSingingIntentButton = v1;
  *algn_100672168 = v2;
  qword_100672170 = 0xD00000000000001DLL;
  unk_100672178 = 0x80000001004F3F70;
  return result;
}

uint64_t *AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor()
{
  if (qword_100633F10 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.startSingingIntentButton;
}

uint64_t static AccessibilityIdentifier.startSingingIntentButton.getter()
{
  if (qword_100633F10 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.startSingingIntentButton;

  return v0;
}

uint64_t sub_10029CFE8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x6C6C6543676E6F53;
  v4._object = 0xE800000000000000;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.songCell = v1;
  *algn_100672188 = v2;
  qword_100672190 = 0x6C6C6543676E6F53;
  unk_100672198 = 0xE800000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.songCell.unsafeMutableAddressor()
{
  if (qword_100633F18 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.songCell;
}

uint64_t static AccessibilityIdentifier.songCell.getter()
{
  if (qword_100633F18 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.songCell;

  return v0;
}

uint64_t sub_10029D18C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x73694C6B63617254;
  v4._object = 0xED00006C6C654374;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCell = v1;
  *algn_1006721A8 = v2;
  strcpy(&qword_1006721B0, "TrackListCell");
  unk_1006721BE = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCell.unsafeMutableAddressor()
{
  if (qword_100633F20 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCell;
}

uint64_t static AccessibilityIdentifier.trackListCell.getter()
{
  if (qword_100633F20 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCell;

  return v0;
}

uint64_t sub_10029D33C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001004F3F50;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListEmptyCell = v1;
  *algn_1006721C8 = v2;
  qword_1006721D0 = 0xD000000000000013;
  unk_1006721D8 = 0x80000001004F3F50;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListEmptyCell.unsafeMutableAddressor()
{
  if (qword_100633F28 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListEmptyCell;
}

uint64_t static AccessibilityIdentifier.trackListEmptyCell.getter()
{
  if (qword_100633F28 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListEmptyCell;

  return v0;
}

uint64_t sub_10029D4E8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x80000001004F3F30;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellArtwork = v1;
  *algn_1006721E8 = v2;
  qword_1006721F0 = 0xD000000000000015;
  unk_1006721F8 = 0x80000001004F3F30;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtwork.unsafeMutableAddressor()
{
  if (qword_100633F30 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtwork;
}

uint64_t static AccessibilityIdentifier.trackListCellArtwork.getter()
{
  if (qword_100633F30 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtwork;

  return v0;
}

uint64_t sub_10029D694()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001004F3F10;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellFavoriteBadge = v1;
  *algn_100672208 = v2;
  qword_100672210 = 0xD00000000000001CLL;
  unk_100672218 = 0x80000001004F3F10;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellFavoriteBadge.unsafeMutableAddressor()
{
  if (qword_100633F38 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellFavoriteBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellFavoriteBadge.getter()
{
  if (qword_100633F38 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellFavoriteBadge;

  return v0;
}

uint64_t sub_10029D840()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001004F3EF0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellPopularBadge = v1;
  *algn_100672228 = v2;
  qword_100672230 = 0xD00000000000001BLL;
  unk_100672238 = 0x80000001004F3EF0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellPopularBadge.unsafeMutableAddressor()
{
  if (qword_100633F40 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellPopularBadge;
}

uint64_t static AccessibilityIdentifier.trackListCellPopularBadge.getter()
{
  if (qword_100633F40 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellPopularBadge;

  return v0;
}

uint64_t sub_10029D9EC()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001004F3ED0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellTrackNumber = v1;
  *algn_100672248 = v2;
  qword_100672250 = 0xD000000000000019;
  unk_100672258 = 0x80000001004F3ED0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTrackNumber.unsafeMutableAddressor()
{
  if (qword_100633F48 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTrackNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellTrackNumber.getter()
{
  if (qword_100633F48 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTrackNumber;

  return v0;
}

uint64_t sub_10029DB98()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001004F3EB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellChartNumber = v1;
  *algn_100672268 = v2;
  qword_100672270 = 0xD000000000000019;
  unk_100672278 = 0x80000001004F3EB0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellChartNumber.unsafeMutableAddressor()
{
  if (qword_100633F50 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellChartNumber;
}

uint64_t static AccessibilityIdentifier.trackListCellChartNumber.getter()
{
  if (qword_100633F50 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellChartNumber;

  return v0;
}

uint64_t sub_10029DD44()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000017;
  v4._object = 0x80000001004F3E90;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellVideoIcon = v1;
  *algn_100672288 = v2;
  qword_100672290 = 0xD000000000000017;
  unk_100672298 = 0x80000001004F3E90;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellVideoIcon.unsafeMutableAddressor()
{
  if (qword_100633F58 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellVideoIcon;
}

uint64_t static AccessibilityIdentifier.trackListCellVideoIcon.getter()
{
  if (qword_100633F58 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellVideoIcon;

  return v0;
}

uint64_t sub_10029DEF0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001004F3E70;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellTitle = v1;
  *algn_1006722A8 = v2;
  qword_1006722B0 = 0xD000000000000013;
  unk_1006722B8 = 0x80000001004F3E70;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellTitle.unsafeMutableAddressor()
{
  if (qword_100633F60 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellTitle;
}

uint64_t static AccessibilityIdentifier.trackListCellTitle.getter()
{
  if (qword_100633F60 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellTitle;

  return v0;
}

uint64_t sub_10029E09C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001004F3E50;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellArtist = v1;
  *algn_1006722C8 = v2;
  qword_1006722D0 = 0xD000000000000014;
  unk_1006722D8 = 0x80000001004F3E50;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellArtist.unsafeMutableAddressor()
{
  if (qword_100633F68 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellArtist;
}

uint64_t static AccessibilityIdentifier.trackListCellArtist.getter()
{
  if (qword_100633F68 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellArtist;

  return v0;
}

uint64_t sub_10029E248()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000013;
  v4._object = 0x80000001004F3E30;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellAlbum = v1;
  *algn_1006722E8 = v2;
  qword_1006722F0 = 0xD000000000000013;
  unk_1006722F8 = 0x80000001004F3E30;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellAlbum.unsafeMutableAddressor()
{
  if (qword_100633F70 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellAlbum;
}

uint64_t static AccessibilityIdentifier.trackListCellAlbum.getter()
{
  if (qword_100633F70 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellAlbum;

  return v0;
}

uint64_t sub_10029E3F4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001004F3E10;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCellDuration = v1;
  *algn_100672308 = v2;
  qword_100672310 = 0xD000000000000016;
  unk_100672318 = 0x80000001004F3E10;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCellDuration.unsafeMutableAddressor()
{
  if (qword_100633F78 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCellDuration;
}

uint64_t static AccessibilityIdentifier.trackListCellDuration.getter()
{
  if (qword_100633F78 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCellDuration;

  return v0;
}

uint64_t sub_10029E5A0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001004F3DF0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListReleaseDate = v1;
  *algn_100672328 = v2;
  qword_100672330 = 0xD000000000000014;
  unk_100672338 = 0x80000001004F3DF0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListReleaseDate.unsafeMutableAddressor()
{
  if (qword_100633F80 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListReleaseDate;
}

uint64_t static AccessibilityIdentifier.trackListReleaseDate.getter()
{
  if (qword_100633F80 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListReleaseDate;

  return v0;
}

uint64_t sub_10029E74C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001004F3DD0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCountAndDuration = v1;
  *algn_100672348 = v2;
  qword_100672350 = 0xD000000000000019;
  unk_100672358 = 0x80000001004F3DD0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCountAndDuration.unsafeMutableAddressor()
{
  if (qword_100633F88 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCountAndDuration;
}

uint64_t static AccessibilityIdentifier.trackListCountAndDuration.getter()
{
  if (qword_100633F88 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCountAndDuration;

  return v0;
}

uint64_t sub_10029E8F8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001004F3DB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListCopyright = v1;
  *algn_100672368 = v2;
  qword_100672370 = 0xD000000000000012;
  unk_100672378 = 0x80000001004F3DB0;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListCopyright.unsafeMutableAddressor()
{
  if (qword_100633F90 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListCopyright;
}

uint64_t static AccessibilityIdentifier.trackListCopyright.getter()
{
  if (qword_100633F90 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListCopyright;

  return v0;
}

uint64_t sub_10029EAA4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000014;
  v4._object = 0x80000001004F3D90;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.trackListRecordLabel = v1;
  *algn_100672388 = v2;
  qword_100672390 = 0xD000000000000014;
  unk_100672398 = 0x80000001004F3D90;
  return result;
}

uint64_t *AccessibilityIdentifier.trackListRecordLabel.unsafeMutableAddressor()
{
  if (qword_100633F98 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.trackListRecordLabel;
}

uint64_t static AccessibilityIdentifier.trackListRecordLabel.getter()
{
  if (qword_100633F98 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.trackListRecordLabel;

  return v0;
}

uint64_t sub_10029EC50()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x64616F6C6E776F44;
  v4._object = 0xEE00737574617453;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.downloadStatus = v1;
  *algn_1006723A8 = v2;
  strcpy(&qword_1006723B0, "DownloadStatus");
  unk_1006723BF = -18;
  return result;
}

uint64_t *AccessibilityIdentifier.downloadStatus.unsafeMutableAddressor()
{
  if (qword_100633FA0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.downloadStatus;
}

uint64_t static AccessibilityIdentifier.downloadStatus.getter()
{
  if (qword_100633FA0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.downloadStatus;

  return v0;
}

uint64_t sub_10029EE00()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001004F3D70;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.lyricsStaticView = v1;
  *algn_1006723C8 = v2;
  qword_1006723D0 = 0xD000000000000010;
  unk_1006723D8 = 0x80000001004F3D70;
  return result;
}

uint64_t *AccessibilityIdentifier.lyricsStaticView.unsafeMutableAddressor()
{
  if (qword_100633FA8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsStaticView;
}

uint64_t static AccessibilityIdentifier.lyricsStaticView.getter()
{
  if (qword_100633FA8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsStaticView;

  return v0;
}

uint64_t sub_10029EFAC()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001004F3D50;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.lyricsSyncedView = v1;
  *algn_1006723E8 = v2;
  qword_1006723F0 = 0xD000000000000010;
  unk_1006723F8 = 0x80000001004F3D50;
  return result;
}

uint64_t *AccessibilityIdentifier.lyricsSyncedView.unsafeMutableAddressor()
{
  if (qword_100633FB0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.lyricsSyncedView;
}

uint64_t static AccessibilityIdentifier.lyricsSyncedView.getter()
{
  if (qword_100633FB0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.lyricsSyncedView;

  return v0;
}

uint64_t sub_10029F158()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x7474754279616C50;
  v4._object = 0xEA00000000006E6FLL;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.playButton = v1;
  *algn_100672408 = v2;
  qword_100672410 = 0x7474754279616C50;
  unk_100672418 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.playButton.unsafeMutableAddressor()
{
  if (qword_100633FB8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playButton;
}

uint64_t static AccessibilityIdentifier.playButton.getter()
{
  if (qword_100633FB8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playButton;

  return v0;
}

uint64_t sub_10029F304()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x7475426573756150;
  v4._object = 0xEB000000006E6F74;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.pauseButton = v1;
  *algn_100672428 = v2;
  qword_100672430 = 0x7475426573756150;
  unk_100672438 = 0xEB000000006E6F74;
  return result;
}

uint64_t *AccessibilityIdentifier.pauseButton.unsafeMutableAddressor()
{
  if (qword_100633FC0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.pauseButton;
}

uint64_t static AccessibilityIdentifier.pauseButton.getter()
{
  if (qword_100633FC0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.pauseButton;

  return v0;
}

uint64_t sub_10029F4B0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x74747542706F7453;
  v4._object = 0xEA00000000006E6FLL;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.stopButton = v1;
  *algn_100672448 = v2;
  qword_100672450 = 0x74747542706F7453;
  unk_100672458 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.stopButton.unsafeMutableAddressor()
{
  if (qword_100633FC8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.stopButton;
}

uint64_t static AccessibilityIdentifier.stopButton.getter()
{
  if (qword_100633FC8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.stopButton;

  return v0;
}

uint64_t sub_10029F65C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000011;
  v4._object = 0x80000001004F3D30;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.skipForwardButton = v1;
  *algn_100672468 = v2;
  qword_100672470 = 0xD000000000000011;
  unk_100672478 = 0x80000001004F3D30;
  return result;
}

uint64_t *AccessibilityIdentifier.skipForwardButton.unsafeMutableAddressor()
{
  if (qword_100633FD0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipForwardButton;
}

uint64_t static AccessibilityIdentifier.skipForwardButton.getter()
{
  if (qword_100633FD0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipForwardButton;

  return v0;
}

uint64_t sub_10029F808()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000012;
  v4._object = 0x80000001004F3D10;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.skipBackwardButton = v1;
  *algn_100672488 = v2;
  qword_100672490 = 0xD000000000000012;
  unk_100672498 = 0x80000001004F3D10;
  return result;
}

uint64_t *AccessibilityIdentifier.skipBackwardButton.unsafeMutableAddressor()
{
  if (qword_100633FD8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.skipBackwardButton;
}

uint64_t static AccessibilityIdentifier.skipBackwardButton.getter()
{
  if (qword_100633FD8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.skipBackwardButton;

  return v0;
}

uint64_t sub_10029F9B4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x74747542706D754ALL;
  v4._object = 0xEA00000000006E6FLL;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.jumpButton = v1;
  *algn_1006724A8 = v2;
  qword_1006724B0 = 0x74747542706D754ALL;
  unk_1006724B8 = 0xEA00000000006E6FLL;
  return result;
}

uint64_t *AccessibilityIdentifier.jumpButton.unsafeMutableAddressor()
{
  if (qword_100633FE0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.jumpButton;
}

uint64_t static AccessibilityIdentifier.jumpButton.getter()
{
  if (qword_100633FE0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.jumpButton;

  return v0;
}

uint64_t sub_10029FB60()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x547972617262694CLL;
  v4._object = 0xEA00000000006261;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryTab = v1;
  *algn_1006724C8 = v2;
  qword_1006724D0 = 0x547972617262694CLL;
  unk_1006724D8 = 0xEA00000000006261;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryTab.unsafeMutableAddressor()
{
  if (qword_100633FE8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryTab;
}

uint64_t static AccessibilityIdentifier.libraryTab.getter()
{
  if (qword_100633FE8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryTab;

  return v0;
}

uint64_t sub_10029FD0C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x6F4E6E657473694CLL;
  v4._object = 0xEC00000062615477;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.listenNowTab = v1;
  *algn_1006724E8 = v2;
  strcpy(&qword_1006724F0, "ListenNowTab");
  unk_1006724FD = 0;
  unk_1006724FE = -5120;
  return result;
}

uint64_t *AccessibilityIdentifier.listenNowTab.unsafeMutableAddressor()
{
  if (qword_100633FF0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.listenNowTab;
}

uint64_t static AccessibilityIdentifier.listenNowTab.getter()
{
  if (qword_100633FF0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.listenNowTab;

  return v0;
}

uint64_t sub_10029FEB8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x61546573776F7242;
  v4._object = 0xE900000000000062;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.browseTab = v1;
  *algn_100672508 = v2;
  qword_100672510 = 0x61546573776F7242;
  unk_100672518 = 0xE900000000000062;
  return result;
}

uint64_t *AccessibilityIdentifier.browseTab.unsafeMutableAddressor()
{
  if (qword_100633FF8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.browseTab;
}

uint64_t static AccessibilityIdentifier.browseTab.getter()
{
  if (qword_100633FF8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.browseTab;

  return v0;
}

uint64_t sub_1002A0064()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x6261546F69646152;
  v4._object = 0xE800000000000000;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.radioTab = v1;
  *algn_100672528 = v2;
  qword_100672530 = 0x6261546F69646152;
  unk_100672538 = 0xE800000000000000;
  return result;
}

uint64_t *AccessibilityIdentifier.radioTab.unsafeMutableAddressor()
{
  if (qword_100634000 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.radioTab;
}

uint64_t static AccessibilityIdentifier.radioTab.getter()
{
  if (qword_100634000 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.radioTab;

  return v0;
}

uint64_t sub_1002A0208()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x6154686372616553;
  v4._object = 0xE900000000000062;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.searchTab = v1;
  *algn_100672548 = v2;
  qword_100672550 = 0x6154686372616553;
  unk_100672558 = 0xE900000000000062;
  return result;
}

uint64_t *AccessibilityIdentifier.searchTab.unsafeMutableAddressor()
{
  if (qword_100634008 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.searchTab;
}

uint64_t static AccessibilityIdentifier.searchTab.getter()
{
  if (qword_100634008 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.searchTab;

  return v0;
}

uint64_t sub_1002A03B4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001004F3CF0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeader = v1;
  *algn_100672568 = v2;
  qword_100672570 = 0xD000000000000016;
  unk_100672578 = 0x80000001004F3CF0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeader.unsafeMutableAddressor()
{
  if (qword_100634010 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeader;
}

uint64_t static AccessibilityIdentifier.containerDetailHeader.getter()
{
  if (qword_100634010 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeader;

  return v0;
}

uint64_t sub_1002A0560()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v4._object = 0x80000001004F3CD0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeaderArtwork = v1;
  *algn_100672588 = v2;
  qword_100672590 = 0xD00000000000001ELL;
  unk_100672598 = 0x80000001004F3CD0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderArtwork.unsafeMutableAddressor()
{
  if (qword_100634018 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderArtwork.getter()
{
  if (qword_100634018 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderArtwork;

  return v0;
}

uint64_t sub_1002A070C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001CLL;
  v4._object = 0x80000001004F3CB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeaderTitle = v1;
  *algn_1006725A8 = v2;
  qword_1006725B0 = 0xD00000000000001CLL;
  unk_1006725B8 = 0x80000001004F3CB0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderTitle.unsafeMutableAddressor()
{
  if (qword_100634020 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderTitle;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderTitle.getter()
{
  if (qword_100634020 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderTitle;

  return v0;
}

uint64_t sub_1002A08B8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001004F3C80;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeaderAttribution = v1;
  *algn_1006725C8 = v2;
  qword_1006725D0 = 0xD000000000000022;
  unk_1006725D8 = 0x80000001004F3C80;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderAttribution.unsafeMutableAddressor()
{
  if (qword_100634028 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderAttribution;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderAttribution.getter()
{
  if (qword_100634028 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderAttribution;

  return v0;
}

uint64_t sub_1002A0A64()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001FLL;
  v4._object = 0x80000001004F3C60;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeaderMetadata = v1;
  *algn_1006725E8 = v2;
  qword_1006725F0 = 0xD00000000000001FLL;
  unk_1006725F8 = 0x80000001004F3C60;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderMetadata.unsafeMutableAddressor()
{
  if (qword_100634030 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderMetadata;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderMetadata.getter()
{
  if (qword_100634030 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderMetadata;

  return v0;
}

uint64_t sub_1002A0C10()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001004F3C30;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailHeaderDescription = v1;
  *algn_100672608 = v2;
  qword_100672610 = 0xD000000000000022;
  unk_100672618 = 0x80000001004F3C30;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailHeaderDescription.unsafeMutableAddressor()
{
  if (qword_100634038 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailHeaderDescription;
}

uint64_t static AccessibilityIdentifier.containerDetailHeaderDescription.getter()
{
  if (qword_100634038 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailHeaderDescription;

  return v0;
}

uint64_t sub_1002A0DBC()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000027;
  v4._object = 0x80000001004F3C00;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailContextualActionsButton = v1;
  *algn_100672628 = v2;
  qword_100672630 = 0xD000000000000027;
  unk_100672638 = 0x80000001004F3C00;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailContextualActionsButton.unsafeMutableAddressor()
{
  if (qword_100634040 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailContextualActionsButton;
}

uint64_t static AccessibilityIdentifier.containerDetailContextualActionsButton.getter()
{
  if (qword_100634040 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailContextualActionsButton;

  return v0;
}

uint64_t sub_1002A0F68()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001004F3BD0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailFloatingArtwork = v1;
  *algn_100672648 = v2;
  qword_100672650 = 0xD000000000000020;
  unk_100672658 = 0x80000001004F3BD0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailFloatingArtwork.unsafeMutableAddressor()
{
  if (qword_100634048 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailFloatingArtwork;
}

uint64_t static AccessibilityIdentifier.containerDetailFloatingArtwork.getter()
{
  if (qword_100634048 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailFloatingArtwork;

  return v0;
}

uint64_t sub_1002A1114()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001BLL;
  v4._object = 0x80000001004F3BB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailStateButton = v1;
  *algn_100672668 = v2;
  qword_100672670 = 0xD00000000000001BLL;
  unk_100672678 = 0x80000001004F3BB0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailStateButton.unsafeMutableAddressor()
{
  if (qword_100634050 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailStateButton;
}

uint64_t static AccessibilityIdentifier.containerDetailStateButton.getter()
{
  if (qword_100634050 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailStateButton;

  return v0;
}

uint64_t sub_1002A12C0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001004F3B90;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailAddButton = v1;
  *algn_100672688 = v2;
  qword_100672690 = 0xD000000000000019;
  unk_100672698 = 0x80000001004F3B90;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailAddButton.unsafeMutableAddressor()
{
  if (qword_100634058 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailAddButton;
}

uint64_t static AccessibilityIdentifier.containerDetailAddButton.getter()
{
  if (qword_100634058 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailAddButton;

  return v0;
}

uint64_t sub_1002A146C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD00000000000001ELL;
  v4._object = 0x80000001004F3B70;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailDownloadButton = v1;
  *algn_1006726A8 = v2;
  qword_1006726B0 = 0xD00000000000001ELL;
  unk_1006726B8 = 0x80000001004F3B70;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadButton.unsafeMutableAddressor()
{
  if (qword_100634060 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadButton.getter()
{
  if (qword_100634060 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadButton;

  return v0;
}

uint64_t sub_1002A1618()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001004F3B40;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailDownloadQueuedButton = v1;
  *algn_1006726C8 = v2;
  qword_1006726D0 = 0xD000000000000024;
  unk_1006726D8 = 0x80000001004F3B40;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadQueuedButton.unsafeMutableAddressor()
{
  if (qword_100634068 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadQueuedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadQueuedButton.getter()
{
  if (qword_100634068 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadQueuedButton;

  return v0;
}

uint64_t sub_1002A17C4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000024;
  v4._object = 0x80000001004F3B10;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailDownloadPausedButton = v1;
  *algn_1006726E8 = v2;
  qword_1006726F0 = 0xD000000000000024;
  unk_1006726F8 = 0x80000001004F3B10;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadPausedButton.unsafeMutableAddressor()
{
  if (qword_100634070 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadPausedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadPausedButton.getter()
{
  if (qword_100634070 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadPausedButton;

  return v0;
}

uint64_t sub_1002A1970()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001004F3AE0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailDownloadingButton = v1;
  *algn_100672708 = v2;
  qword_100672710 = 0xD000000000000021;
  unk_100672718 = 0x80000001004F3AE0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadingButton.unsafeMutableAddressor()
{
  if (qword_100634078 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadingButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadingButton.getter()
{
  if (qword_100634078 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadingButton;

  return v0;
}

uint64_t sub_1002A1B1C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000020;
  v4._object = 0x80000001004F3AB0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.containerDetailDownloadedButton = v1;
  *algn_100672728 = v2;
  qword_100672730 = 0xD000000000000020;
  unk_100672738 = 0x80000001004F3AB0;
  return result;
}

uint64_t *AccessibilityIdentifier.containerDetailDownloadedButton.unsafeMutableAddressor()
{
  if (qword_100634080 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.containerDetailDownloadedButton;
}

uint64_t static AccessibilityIdentifier.containerDetailDownloadedButton.getter()
{
  if (qword_100634080 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.containerDetailDownloadedButton;

  return v0;
}

uint64_t sub_1002A1CC8()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000021;
  v4._object = 0x80000001004F3A80;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.albumDetailOpenInClassicalButton = v1;
  *algn_100672748 = v2;
  qword_100672750 = 0xD000000000000021;
  unk_100672758 = 0x80000001004F3A80;
  return result;
}

uint64_t *AccessibilityIdentifier.albumDetailOpenInClassicalButton.unsafeMutableAddressor()
{
  if (qword_100634088 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.albumDetailOpenInClassicalButton;
}

uint64_t static AccessibilityIdentifier.albumDetailOpenInClassicalButton.getter()
{
  if (qword_100634088 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.albumDetailOpenInClassicalButton;

  return v0;
}

uint64_t sub_1002A1E74()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000023;
  v4._object = 0x80000001004F3A50;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.playlistDetailCollaborationControl = v1;
  *algn_100672768 = v2;
  qword_100672770 = 0xD000000000000023;
  unk_100672778 = 0x80000001004F3A50;
  return result;
}

uint64_t *AccessibilityIdentifier.playlistDetailCollaborationControl.unsafeMutableAddressor()
{
  if (qword_100634090 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.playlistDetailCollaborationControl;
}

uint64_t static AccessibilityIdentifier.playlistDetailCollaborationControl.getter()
{
  if (qword_100634090 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.playlistDetailCollaborationControl;

  return v0;
}

uint64_t sub_1002A2020()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0x42746E756F636361;
  v4._object = 0xED00006E6F747475;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.accountButton = v1;
  *algn_100672788 = v2;
  strcpy(&qword_100672790, "accountButton");
  unk_10067279E = -4864;
  return result;
}

uint64_t *AccessibilityIdentifier.accountButton.unsafeMutableAddressor()
{
  if (qword_100634098 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.accountButton;
}

uint64_t static AccessibilityIdentifier.accountButton.getter()
{
  if (qword_100634098 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.accountButton;

  return v0;
}

uint64_t sub_1002A21D0()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001004F3A30;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryListCell = v1;
  *algn_1006727A8 = v2;
  qword_1006727B0 = 0xD000000000000010;
  unk_1006727B8 = 0x80000001004F3A30;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCell.unsafeMutableAddressor()
{
  if (qword_1006340A0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCell;
}

uint64_t static AccessibilityIdentifier.libraryListCell.getter()
{
  if (qword_1006340A0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCell;

  return v0;
}

uint64_t sub_1002A237C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001004F3A10;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryListCellArtwork = v1;
  *algn_1006727C8 = v2;
  qword_1006727D0 = 0xD000000000000018;
  unk_1006727D8 = 0x80000001004F3A10;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006340A8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryListCellArtwork.getter()
{
  if (qword_1006340A8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellArtwork;

  return v0;
}

uint64_t sub_1002A2528()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000016;
  v4._object = 0x80000001004F39F0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryListCellTitle = v1;
  *algn_1006727E8 = v2;
  qword_1006727F0 = 0xD000000000000016;
  unk_1006727F8 = 0x80000001004F39F0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellTitle.unsafeMutableAddressor()
{
  if (qword_1006340B0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellTitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellTitle.getter()
{
  if (qword_1006340B0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellTitle;

  return v0;
}

uint64_t sub_1002A26D4()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000019;
  v4._object = 0x80000001004F39D0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryListCellSubtitle = v1;
  *algn_100672808 = v2;
  qword_100672810 = 0xD000000000000019;
  unk_100672818 = 0x80000001004F39D0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryListCellSubtitle.unsafeMutableAddressor()
{
  if (qword_1006340B8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryListCellSubtitle;
}

uint64_t static AccessibilityIdentifier.libraryListCellSubtitle.getter()
{
  if (qword_1006340B8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryListCellSubtitle;

  return v0;
}

uint64_t sub_1002A2880()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000010;
  v4._object = 0x80000001004F39B0;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryGridCell = v1;
  *algn_100672828 = v2;
  qword_100672830 = 0xD000000000000010;
  unk_100672838 = 0x80000001004F39B0;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCell.unsafeMutableAddressor()
{
  if (qword_1006340C0 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCell;
}

uint64_t static AccessibilityIdentifier.libraryGridCell.getter()
{
  if (qword_1006340C0 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCell;

  return v0;
}

uint64_t sub_1002A2A2C()
{
  if (qword_100633E98 != -1)
  {
    swift_once();
  }

  v1 = qword_10063CF40;
  v2 = *algn_10063CF48;

  v3._countAndFlagsBits = 46;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);

  v4._countAndFlagsBits = 0xD000000000000018;
  v4._object = 0x80000001004F3990;
  sub_1004DD5FC(v4);

  static AccessibilityIdentifier.libraryGridCellArtwork = v1;
  *algn_100672848 = v2;
  qword_100672850 = 0xD000000000000018;
  unk_100672858 = 0x80000001004F3990;
  return result;
}

uint64_t *AccessibilityIdentifier.libraryGridCellArtwork.unsafeMutableAddressor()
{
  if (qword_1006340C8 != -1)
  {
    swift_once();
  }

  return &static AccessibilityIdentifier.libraryGridCellArtwork;
}

uint64_t static AccessibilityIdentifier.libraryGridCellArtwork.getter()
{
  if (qword_1006340C8 != -1)
  {
    swift_once();
  }

  v0 = static AccessibilityIdentifier.libraryGridCellArtwork;

  return v0;
}