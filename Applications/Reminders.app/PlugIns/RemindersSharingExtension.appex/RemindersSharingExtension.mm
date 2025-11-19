uint64_t sub_100002168()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1000021CC(uint64_t a1, uint64_t a2)
{
  result = sub_10004C7D0();
  *a2 = 0;
  *(a2 + 4) = 1;
  return result;
}

uint64_t sub_100002220(uint64_t a1, uint64_t a2)
{
  v3 = sub_10004C7E0();
  *a2 = 0;
  *(a2 + 4) = 1;
  return v3 & 1;
}

uint64_t sub_100002278@<X0>(_DWORD *a1@<X8>)
{
  result = sub_10004C7F0();
  *a1 = v3;
  return result;
}

_DWORD *sub_1000022A0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

float sub_1000022B0@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1000022BC()
{
  v2 = *v0;
  sub_10000248C(&qword_100067020);
  sub_10000248C(&qword_100067028);
  return sub_10004CDA0();
}

uint64_t sub_100002370(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 sub_1000023A4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000023B0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000023D0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_10000248C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000024D8()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_10004CE60(LODWORD(v1));
}

uint64_t sub_100002514(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  return static Hasher._hash(seed:bytes:count:)(a1, LODWORD(v2), 4);
}

__n128 initializeWithTake for TTRISEDebugMenuView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100002584(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000025A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_1000025F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

_OWORD *_s25RemindersSharingExtension19TTRISEDebugMenuViewVwCP_0(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t *assignWithCopy for TTRISEDebugMenuView(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  v4 = *a1;
  *a1 = *a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  a1[1] = v3;
  return a1;
}

uint64_t *assignWithTake for TTRISEDebugMenuView(uint64_t *a1, _OWORD *a2)
{
  v4 = *a1;
  swift_unknownObjectRelease();
  *a1 = *a2;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRISEDebugMenuView(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRISEDebugMenuView(uint64_t result, int a2, int a3)
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

uint64_t sub_1000027B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[0] = a2;
  v21[1] = a3;
  v4 = sub_100049F90();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_100067048, &qword_1000524D0);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = v21 - v12;
  sub_100049F80();
  v22 = 0x654D206775626544;
  v23 = 0xEA0000000000756ELL;
  v14 = sub_1000031E0();
  v15 = sub_100003238();
  sub_10004C5C0();
  (*(v5 + 8))(v8, v4);
  v21[4] = a1;
  v21[5] = v21[0];
  sub_100003150(&qword_100067050, &qword_1000524D8);
  v22 = v4;
  v23 = &type metadata for String;
  v24 = v14;
  v25 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = sub_100003198(&qword_100067068, &qword_1000524E0);
  v17 = sub_100003198(&qword_100067070, &qword_1000524E8);
  v18 = sub_100003364(&qword_100067078, &qword_100067070, &qword_1000524E8);
  v22 = v17;
  v23 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v16;
  v23 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_10004C5D0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_100002AA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = a3;
  v5 = *(*(sub_10004C570() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_100003150(&qword_100067070, &qword_1000524E8);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = sub_100003150(&qword_100067068, &qword_1000524E0);
  v12 = *(v11 - 8);
  v20 = v11;
  v21 = v12;
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_10004C560();
  v23 = a1;
  v24 = a2;
  sub_100003150(&qword_100067080, &qword_1000524F0);
  sub_100003364(&qword_100067088, &qword_100067080, &qword_1000524F0);
  sub_10004C520();
  sub_10004C5E0();
  v16 = sub_100003364(&qword_100067078, &qword_100067070, &qword_1000524E8);
  sub_10004C540();

  (*(v7 + 8))(v10, v6);
  v25 = v6;
  v26 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v20;
  sub_10004C580();
  return (*(v21 + 8))(v15, v17);
}

uint64_t sub_100002D84(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  v5 = sub_100003150(&qword_100067090, &qword_1000524F8);
  v6 = sub_100003364(&qword_100067098, &qword_100067090, &qword_1000524F8);

  return Button.init(action:label:)(sub_1000032D4, v4, sub_100002EE4, 0, v5, v6);
}

void sub_100002E74(uint64_t a1)
{
  v1 = *sub_1000032DC((a1 + 32), *(a1 + 56));
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_100002EE4()
{
  sub_10004AA20();
  sub_100003238();
  return sub_10004C5F0();
}

uint64_t sub_100002F6C()
{
  v2 = *v0;
  sub_100003150(&qword_100067040, &qword_1000524C8);
  sub_100003198(&qword_100067048, &qword_1000524D0);
  sub_100003198(&qword_100067050, &qword_1000524D8);
  sub_100049F90();
  sub_1000031E0();
  sub_100003238();
  swift_getOpaqueTypeConformance2();
  sub_100003198(&qword_100067068, &qword_1000524E0);
  sub_100003198(&qword_100067070, &qword_1000524E8);
  sub_100003364(&qword_100067078, &qword_100067070, &qword_1000524E8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10004C530();
}

uint64_t sub_100003150(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100003198(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_1000031E0()
{
  result = qword_100067058;
  if (!qword_100067058)
  {
    sub_100049F90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067058);
  }

  return result;
}

unint64_t sub_100003238()
{
  result = qword_100067060;
  if (!qword_100067060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067060);
  }

  return result;
}

uint64_t sub_10000329C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1000032DC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003364(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003198(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000033B0()
{
  sub_100003414(v0 + 16);
  sub_10000343C((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10000343C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100003488()
{
  v0 = type metadata accessor for TTRISEDebugMenuRouter();
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[3] = v0;
  v15[4] = &off_10005F3C8;
  v15[0] = v1;
  type metadata accessor for TTRISEDebugMenuPresenter();
  v2 = swift_allocObject();
  v3 = sub_100003624(v15, v0);
  v4 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v3, v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = *v6;
  v13 = v0;
  v14 = &off_10005F3C8;
  *&v12 = v8;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100003674(&v12, v2 + 32);

  sub_10000343C(v15);
  v15[0] = v2;
  v15[1] = &off_10005F648;
  v9 = objc_allocWithZone(sub_100003150(&qword_100067158, &unk_1000525A0));
  v10 = sub_10004C550();
  swift_unknownObjectWeakAssign();

  return v10;
}

uint64_t sub_100003624(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100003674(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t *sub_10000368C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  v7 = sub_10004BBD0();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a2, 1, v7))
  {
    (*(v8 + 16))(a1, a2, v7);
    (*(v8 + 56))(a1, 0, 1, v7);
    return a1;
  }

  v9 = *(v6 + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_1000037F4(uint64_t a1)
{
  v2 = sub_10004BBD0();
  v5 = *(v2 - 8);
  result = (*(v5 + 48))(a1, 1, v2);
  if (!result)
  {
    v4 = *(v5 + 8);

    return v4(a1, v2);
  }

  return result;
}

void *sub_1000038C4(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_10004BBD0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 16))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_1000039F0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_10004BBD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 16))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 24))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

void *sub_100003B84(void *a1, const void *a2, uint64_t a3)
{
  v6 = sub_10004BBD0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a2, 1, v6))
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }

  else
  {
    (*(v7 + 32))(a1, a2, v6);
    (*(v7 + 56))(a1, 0, 1, v6);
    return a1;
  }
}

void *sub_100003CB0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_10004BBD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(a1, 1, v6);
  v10 = v8(a2, 1, v6);
  if (v9)
  {
    if (!v10)
    {
      (*(v7 + 32))(a1, a2, v6);
      (*(v7 + 56))(a1, 0, 1, v6);
      return a1;
    }
  }

  else
  {
    if (!v10)
    {
      (*(v7 + 40))(a1, a2, v6);
      return a1;
    }

    (*(v7 + 8))(a1, v6);
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t sub_100003E58(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBD0();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003ED8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_10004BBD0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100003F58(uint64_t a1)
{
  v2 = sub_10004BBD0();
  v3 = *(*(v2 - 8) + 48);

  return v3(a1, 1, v2);
}

uint64_t sub_100003FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBD0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, 1, v4);
}

uint64_t type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel()
{
  result = qword_1000671D0;
  if (!qword_1000671D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100004080()
{
  result = sub_10004BBD0();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

uint64_t sub_1000040FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004BBD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003150(&unk_1000671E0, &qword_100052608);
  v16 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15 - 8, v17);
  v20 = &v26 - v19;
  v21 = *(v18 + 56);
  sub_100004374(a1, &v26 - v19);
  sub_100004374(a2, &v20[v21]);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) != 1)
  {
    sub_100004374(v20, v14);
    if (v22(&v20[v21], 1, v4) != 1)
    {
      (*(v5 + 32))(v9, &v20[v21], v4);
      v23 = sub_10004BBA0();
      v24 = *(v5 + 8);
      v24(v9, v4);
      v24(v14, v4);
      sub_100004440(v20);
      return v23 & 1;
    }

    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  if (v22(&v20[v21], 1, v4) != 1)
  {
LABEL_6:
    sub_1000043D8(v20);
    v23 = 0;
    return v23 & 1;
  }

  sub_100004440(v20);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_100004374(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000043D8(uint64_t a1)
{
  v2 = sub_100003150(&unk_1000671E0, &qword_100052608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100004440(uint64_t a1)
{
  v2 = type metadata accessor for TTRISECreateRemindersItemIntermediateViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1000044BC()
{
  sub_100005B70();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_100004568(uint64_t a1)
{
  v3 = sub_100003150(&unk_100067238, &unk_100052CB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v14 - v7;
  v9 = qword_10006A2B0;
  swift_beginAccess();
  sub_100009B14(a1, v1 + v9);
  swift_endAccess();
  if (!(*(v4 + 48))(v1 + v9, 1, v3))
  {
    (*(v4 + 16))(v8, v1 + v9, v3);
    sub_10004AF00();
    (*(v4 + 8))(v8, v3);
    swift_getObjectType();
    sub_100009B84();
    swift_unknownObjectRetain();
    sub_10004B560();
    v10 = sub_10004A860();
    if (v10)
    {
      v11 = v10;
      v12 = *(v10 + qword_100067258);

      sub_10004B570();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return sub_10000A138(a1, &qword_100067468, &qword_100053240);
}

uint64_t sub_100004760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v33 = a3;
  v31 = a1;
  v34 = sub_10004A3F0();
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v34, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003150(&qword_100067460, &unk_100052880);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v31 - v13;
  v15 = sub_100049E60();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = qword_10006A2B0;
  v22 = sub_100003150(&unk_100067238, &unk_100052CB0);
  (*(*(v22 - 8) + 56))(v4 + v21, 1, 1, v22);
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_10004CC70(31);

  v35 = 0xD00000000000001DLL;
  v36 = 0x800000010004DF50;
  sub_100049E50();
  v23 = sub_100049E40();
  v25 = v24;
  (*(v16 + 8))(v20, v15);
  v37._countAndFlagsBits = v23;
  v37._object = v25;
  sub_10004C6D0(v37);

  v26 = (v4 + qword_1000671F0);
  v27 = v32;
  *v26 = v31;
  v26[1] = v27;
  v28 = v33;
  sub_10000A198(v33, v14, &qword_100067460, &unk_100052880);
  (*(v5 + 104))(v9, enum case for TTRITableCellContentPrototypeCellView.cellClass(_:), v34);
  v29 = sub_10004A870();
  sub_10000A138(v28, &qword_100067460, &unk_100052880);
  return v29;
}

uint64_t sub_100004A54@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for TTRITableCellSelectionBehavior.notSelectable(_:);
  v3 = sub_10004B090();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_100004AE4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100003150(&unk_100067238, &unk_100052CB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v16 - v8;
  v10 = *(a1 + qword_100067258);
  v11 = *(v2 + qword_1000671F0);
  v12 = *(v2 + qword_1000671F0 + 8);
  v13 = sub_10004C680();
  [v10 setAccessibilityIdentifier:v13];

  sub_10004A990();
  v14 = qword_10006A2B0;
  swift_beginAccess();
  result = (*(v5 + 48))(v2 + v14, 1, v4);
  if (!result)
  {
    (*(v5 + 16))(v9, v2 + v14, v4);
    sub_10004AF00();
    (*(v5 + 8))(v9, v4);
    swift_getObjectType();
    sub_10004B570();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100004C98(_BYTE *a1)
{
  v85 = a1;
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v3 = *(*(ReminderView - 8) + 64);
  __chkstk_darwin(ReminderView - 8, v4);
  v73 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003150(&qword_100067308, &unk_100052770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v84 = &v73 - v9;
  v10 = sub_100003150(&unk_100067238, &unk_100052CB0);
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = *(v82 + 64);
  __chkstk_darwin(v10, v12);
  v75 = &v73 - v13;
  v80 = sub_10004B6D0();
  v78 = *(v80 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v80, v15);
  v79 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004AD30();
  v76 = *(v17 - 8);
  v77 = v17;
  v18 = *(v76 + 64);
  __chkstk_darwin(v17, v19);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v23 = *(ReminderNotesCellContentState - 1);
  v24 = *(v23 + 64);
  __chkstk_darwin(ReminderNotesCellContentState, v25);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_100003150(&qword_100067460, &unk_100052880);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v33 = &v73 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v31, v34);
  v37 = &v73 - v36;
  __chkstk_darwin(v35, v38);
  v40 = &v73 - v39;
  v41 = sub_100003150(&unk_1000674F0, &qword_1000528C8);
  v42 = *(*(v41 - 8) + 64);
  v44 = __chkstk_darwin(v41 - 8, v43);
  v74 = &v73 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44, v46);
  v48 = &v73 - v47;
  v86 = v1;
  sub_10004A880();
  sub_10000A198(v40, v37, &qword_100067460, &unk_100052880);
  v49 = 1;
  v81 = *(v23 + 48);
  if (v81(v37, 1, ReminderNotesCellContentState) != 1)
  {
    sub_100009BDC(v37, v27, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    (*(v76 + 16))(v21, v27, v77);
    v50 = *&v27[ReminderNotesCellContentState[5]];
    (*(v78 + 16))(v79, &v27[ReminderNotesCellContentState[7]], v80);
    v51 = v27[ReminderNotesCellContentState[6]];
    v52 = v50;
    sub_10004B070();
    sub_100009AB4(v27, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
    v49 = 0;
  }

  sub_10000A138(v40, &qword_100067460, &unk_100052880);
  v53 = sub_10004B080();
  (*(*(v53 - 8) + 56))(v48, v49, 1, v53);
  v54 = qword_10006A2B0;
  v55 = v86;
  swift_beginAccess();
  v57 = v82;
  v56 = v83;
  if (!(*(v82 + 48))(v55 + v54, 1, v83))
  {
    v58 = v75;
    (*(v57 + 16))(v75, v55 + v54, v56);
    sub_10004AF00();
    (*(v57 + 8))(v58, v56);
    swift_getObjectType();
    sub_10000A198(v48, v74, &unk_1000674F0, &qword_1000528C8);
    sub_10004B580();
    swift_unknownObjectRelease();
  }

  sub_10004A880();
  if (v81(v33, 1, ReminderNotesCellContentState))
  {
    sub_10000A138(v33, &qword_100067460, &unk_100052880);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    (*(*(ReminderNotesCellContent - 8) + 56))(v84, 1, 1, ReminderNotesCellContent);
    v60 = v85;
  }

  else
  {
    v61 = v84;
    sub_10000A198(&v33[ReminderNotesCellContentState[8]], v84, &qword_100067308, &unk_100052770);
    sub_10000A138(v33, &qword_100067460, &unk_100052880);
    v62 = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    v63 = (*(*(v62 - 8) + 48))(v61, 1, v62);
    v60 = v85;
    if (v63 != 1)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v71 = v73;
        sub_100009BDC(v61, v73, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
        sub_10000573C(v71);
        sub_100009AB4(v71, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
      }

      else
      {
        v72 = *v61;
        sub_1000055AC(*v61, *(v61 + 8));
      }

LABEL_11:
      sub_100005970();
      return sub_10000A138(v48, &unk_1000674F0, &qword_1000528C8);
    }
  }

  if (v60[qword_100067278 + 8] == 2 && !*&v60[qword_100067278])
  {
    goto LABEL_11;
  }

  v64 = sub_10004ADC0();
  v65 = swift_allocObject();
  *(v65 + 16) = v60;
  v66 = swift_allocObject();
  *(v66 + 16) = sub_10000A0D4;
  *(v66 + 24) = v65;
  aBlock[4] = sub_10000A118;
  aBlock[5] = v66;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003415C;
  aBlock[3] = &unk_10005F758;
  v67 = _Block_copy(aBlock);
  v68 = v60;

  [v64 performBatchUpdates:v67];

  _Block_release(v67);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000055AC(void *a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_10004ADC0();
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2 & 1;
  *(v7 + 40) = ObjectType;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_10000A244;
  *(v8 + 24) = v7;
  v14[4] = sub_10000A410;
  v14[5] = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_10003415C;
  v14[3] = &unk_10005F7D0;
  v9 = _Block_copy(v14);
  v10 = v2;
  v11 = a1;

  [v6 performBatchUpdates:v9];

  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000573C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v5 = *(ReminderView - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(ReminderView - 8, v7);
  v8 = sub_10004ADC0();
  sub_100009C44(a1, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  sub_100009BDC(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10000A36C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_10000A410;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003415C;
  aBlock[3] = &unk_10005F848;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  [v8 performBatchUpdates:v12];

  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

void sub_100005970()
{
  v0 = sub_10004A860();
  if (!v0)
  {
    v3 = 0;
    v9 = sub_10004A860();
    if (!v9)
    {
      return;
    }

    goto LABEL_7;
  }

  v1 = v0;
  v2 = *(v0 + qword_100067258);

  v3 = [v2 attributedText];
  if (v3)
  {
    v4 = [v3 string];

    v5 = sub_10004C690();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v3 = v8 != 0;
  }

  v9 = sub_10004A860();
  if (v9)
  {
LABEL_7:
    v10 = v9;
    v11 = *(v9 + qword_100067260);

    [v11 setHidden:v3];
  }
}

uint64_t sub_100005AD4()
{
  v1 = *(v0 + qword_1000671F0 + 8);

  return sub_10000A138(v0 + qword_10006A2B0, &qword_100067468, &qword_100053240);
}

uint64_t sub_100005B1C(uint64_t a1)
{
  v2 = *(a1 + qword_1000671F0 + 8);

  return sub_10000A138(a1 + qword_10006A2B0, &qword_100067468, &qword_100053240);
}

void sub_100005B70()
{
  if (!qword_100067230)
  {
    sub_100003198(&unk_100067238, &unk_100052CB0);
    v0 = sub_10004CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_100067230);
    }
  }
}

uint64_t sub_100005C6C()
{
  result = sub_10004A860();
  if (result)
  {
    v1 = result;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      return v1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_100005CD4()
{
  v1 = v0;
  v2 = *&v0[qword_100067278];
  if (v0[qword_100067278 + 8])
  {
    if (v0[qword_100067278 + 8] == 1)
    {
      v3 = v2;
      v4 = sub_10004ADC0();
      [v4 setAxis:1];

      v5 = sub_10004ADC0();
      [v5 setSpacing:8.0];

      v6 = *&v1[qword_100067270];
      [v6 setHidden:0];
      sub_100003150(&qword_1000674B0, &qword_1000528A0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100052620;
      *(v7 + 32) = v3;
      sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
      v8 = v3;
      isa = sub_10004C710().super.isa;

      [v6 setArrangedSubviews:isa];

      [v6 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
      [v6 setVerticalAlignment:0];
      [v6 setHorizontalAlignment:1];
    }

    else
    {
      v15 = sub_10004ADC0();
      [v15 setAxis:0];

      v6 = *&v1[qword_100067270];
      [v6 setHidden:1];
      sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
      v8 = sub_10004C710().super.isa;
      [v6 setArrangedSubviews:v8];
    }
  }

  else
  {
    v10 = v2;
    v11 = sub_10004ADC0();
    [v11 setAxis:0];

    v12 = sub_10004ADC0();
    [v12 setSpacing:12.0];

    v6 = *&v1[qword_100067270];
    [v6 setHidden:0];
    sub_100003150(&qword_1000674B0, &qword_1000528A0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_100052620;
    *(v13 + 32) = v10;
    sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
    v8 = v10;
    v14 = sub_10004C710().super.isa;

    [v6 setArrangedSubviews:v14];

    [v6 setLayoutMargins:{15.0, 0.0, 0.0, 0.0}];
    [v6 setVerticalAlignment:1];
    [v6 setHorizontalAlignment:0];
  }

  sub_100003150(&qword_1000674D0, &qword_1000528B8);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100052630;
  v17 = *&v1[qword_100067258];
  *(v16 + 56) = sub_10004ACB0();
  *(v16 + 32) = v17;
  v18 = v17;
  if ([v6 isHidden])
  {
    v19 = 0;
    v20 = 0;
    *(v16 + 72) = 0;
    *(v16 + 80) = 0;
  }

  else
  {
    v20 = sub_100009FF0(0, &qword_1000674D8, NUIContainerBoxView_ptr);
    v19 = v6;
  }

  *(v16 + 64) = v19;
  *(v16 + 88) = v20;
  sub_100003150(&qword_1000674E0, &qword_1000528C0);
  sub_10000A038();
  sub_10004C6F0();

  v21 = sub_10004C710().super.isa;

  [v1 setAccessibilityElements:v21];
}

void sub_100006134(uint64_t a1, void *a2, char a3)
{
  if (*(a1 + qword_100067278 + 8))
  {
    v5 = sub_100006218(a1);
  }

  else
  {
    v5 = *(a1 + qword_100067278);
  }

  v9 = v5;
  if (a3)
  {
    v6 = 16.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = a2;
  [v9 setImage:a2];
  v8 = [v9 layer];
  [v8 setCornerRadius:v6];
}

id sub_100006218(uint64_t a1)
{
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setContentMode:2];
  [v2 setClipsToBounds:1];
  v3 = [v2 layer];

  [v3 setCornerCurve:kCACornerCurveContinuous];
  v4 = a1 + qword_100067278;
  v5 = *(a1 + qword_100067278);
  *v4 = v2;
  *(v4 + 8) = 0;
  v6 = v2;

  sub_100005CD4();
  return v6;
}

void sub_1000062F4(uint64_t a1, void **a2)
{
  if (*(a1 + qword_100067278 + 8) == 1)
  {
    v3 = *(a1 + qword_100067278);
  }

  else
  {
    v3 = sub_100009CAC(a2, a1);
  }

  v7 = v3;
  v4 = *(a2 + *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) + 24));
  v5 = v7;
  if (v4)
  {
    v6 = v4;
    sub_10004B660();

    v5 = v7;
  }
}

char *sub_100006394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a3;
  v74 = a2;
  v85 = a1;
  ObjectType = swift_getObjectType();
  v4 = sub_10004B060();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v3;
  v9 = &v3[qword_100067278];
  *v9 = 0;
  v9[8] = 2;
  *&v3[qword_100067280] = 0;
  (*(v10 + 104))(v8, enum case for TTRHashtagTokenTextInteraction.TokenEditingBehavior.inline(_:));
  v11 = objc_allocWithZone(sub_10004ACB0());
  v12 = sub_10004ACA0();
  [v12 setScrollEnabled:{1, v74}];
  [v12 setShowsVerticalScrollIndicator:1];
  sub_100009FF0(0, &qword_1000674A8, UIFont_ptr);
  v13 = v12;
  v14 = sub_10004CA00();
  [v13 setFont:v14];

  [v13 setAdjustsFontForContentSizeCategory:1];
  v15 = objc_opt_self();
  v16 = [v15 labelColor];
  [v13 setTextColor:v16];

  [v13 setEditable:1];
  v17 = v13;
  [v17 setBackgroundColor:0];
  LODWORD(v18) = 1132068864;
  v79 = v17;
  [v17 setContentHuggingPriority:0 forAxis:v18];
  v19 = [objc_allocWithZone(UILabel) init];
  [v19 setNumberOfLines:0];
  v20 = sub_10004CA00();
  [v19 setFont:v20];

  [v19 setAdjustsFontForContentSizeCategory:1];
  [v19 setTextAlignment:4];
  [v19 setUserInteractionEnabled:0];
  v21 = [v15 placeholderTextColor];
  [v19 setTextColor:v21];

  v87._countAndFlagsBits = 0x7365746F4ELL;
  v88._object = 0x800000010004E020;
  v87._object = 0xE500000000000000;
  v88._countAndFlagsBits = 0xD000000000000033;
  sub_10004A790(v87, v88);
  v22 = sub_10004C680();

  [v19 setText:v22];

  v81 = sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v23 = swift_allocObject();
  v80 = xmmword_100052640;
  *(v23 + 16) = xmmword_100052640;
  *(v23 + 32) = v17;
  *(v23 + 40) = v19;
  v24 = objc_allocWithZone(NUIContainerBoxView);
  v25 = sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
  v26 = v19;
  v77 = v25;
  v78 = v26;
  isa = sub_10004C710().super.isa;

  v28 = [v24 initWithArrangedSubviews:isa];

  [v28 setHorizontalAlignment:0];
  [v28 setVerticalAlignment:0];
  v29 = v28;
  v75 = v29;
  [v29 setAlignment:1 forView:v26 inAxis:1];
  v30 = objc_allocWithZone(NUIContainerBoxView);
  v31 = sub_10004C710().super.isa;
  v32 = [v30 initWithArrangedSubviews:v31];

  v33 = v32;
  v76 = v33;
  [v33 setLayoutMarginsRelativeArrangement:1];
  sub_100003150(&qword_1000674C0, &qword_1000528A8);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100052630;
  *(v34 + 32) = v29;
  *(v34 + 40) = 1132068864;
  *(v34 + 48) = v33;
  *(v34 + 56) = 1144750080;
  sub_100003150(&qword_1000674C8, &qword_1000528B0);
  v35 = sub_10004ADD0();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100052650;
  v40 = (v39 + v38);
  *v40 = 0;
  v41 = enum case for TTRIViewContentPriorityType.hugging(_:);
  v42 = *(v36 + 104);
  v42(v40, enum case for TTRIViewContentPriorityType.hugging(_:), v35);
  *(v40 + v37) = 1;
  v42(v40 + v37, v41, v35);
  *(v40 + 2 * v37) = 0;
  v43 = enum case for TTRIViewContentPriorityType.compressionResistance(_:);
  v42(v40 + 2 * v37, enum case for TTRIViewContentPriorityType.compressionResistance(_:), v35);
  *(v40 + 3 * v37) = 1;
  v44 = v40 + 3 * v37;
  v45 = v78;
  v46 = v43;
  v47 = v79;
  v42(v44, v46, v35);
  v48 = v82;
  v49 = v75;
  v50 = v76;
  v51 = v49;
  v52 = v50;
  sub_10004CA30();

  [v51 setDebugBoundingBoxesEnabled:0];

  v53 = v83;
  [v52 setDebugBoundingBoxesEnabled:0];
  *&v53[qword_100067258] = v47;
  *&v53[qword_100067260] = v45;
  *&v53[qword_100067268] = v51;
  *&v53[qword_100067270] = v52;
  v54 = v47;
  v55 = v45;
  v56 = v51;
  v57 = v52;
  if (v48)
  {
    v58 = sub_10004C680();
  }

  else
  {
    v58 = 0;
  }

  v86.receiver = v53;
  v86.super_class = ObjectType;
  v59 = objc_msgSendSuper2(&v86, "initWithStyle:reuseIdentifier:", v85, v58);

  v60 = v59;
  v61 = sub_10004ADC0();
  [v61 setEdgesPreservingSuperviewLayoutMargins:10];

  v62 = sub_10004ADC0();
  [v62 layoutMargins];
  v64 = v63;
  v66 = v65;

  v67 = sub_10004ADC0();
  [v67 setLayoutMargins:{12.0, v64, 12.0, v66}];

  v68 = v60;
  v69 = sub_10004ADC0();

  v70 = swift_allocObject();
  *(v70 + 16) = v80;
  *(v70 + 32) = v51;
  *(v70 + 40) = v52;
  v71 = sub_10004C710().super.isa;

  [v69 setArrangedSubviews:v71];

  v72 = sub_100006C1C();
  [v51 setDelegate:v72];

  [v52 setDelegate:*&v68[qword_100067280]];
  [v68 setIsAccessibilityElement:0];

  sub_100005CD4();
  return v68;
}

id sub_100006C1C()
{
  v1 = qword_100067280;
  v2 = *(v0 + qword_100067280);
  if (v2)
  {
    v3 = *(v0 + qword_100067280);
  }

  else
  {
    v4 = type metadata accessor for CustomSizeMeasurer();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, "init");
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *sub_100006CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_10004C690();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_100006394(a3, a4, v6);
}

void sub_100006D1C(uint64_t a1)
{
  v1 = a1 + qword_100067278;
  *v1 = 0;
  *(v1 + 8) = 2;
  *(a1 + qword_100067280) = 0;
  sub_10004CD40();
  __break(1u);
}

id sub_100006DF8@<X0>(void *a1@<X8>)
{
  v6 = *(v1 + qword_100067258);
  *a1 = v6;
  v3 = enum case for TTRITableCellSeparatorInsetType.leadingOfDescendant(_:);
  v4 = sub_10004B140();
  (*(*(v4 - 8) + 104))(a1, v3, v4);

  return v6;
}

void sub_100006E90()
{
  v1 = *(v0 + qword_100067280);
}

void sub_100006F14(uint64_t a1)
{
  v2 = *(a1 + qword_100067280);
}

id sub_100007058()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s25RemindersSharingExtension41TTRIExtensionCreateReminderNotesTableCellC6LayoutOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v4;
  v6 = v3;

  return a1;
}

uint64_t initializeWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderNotesTableCell.Layout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_100007220(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100007238(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void *sub_100007260(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v21 = *a2;
    *a1 = *a2;
    a1 = (v21 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_10004AD30();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[5];
    v9 = a3[6];
    v10 = *(a2 + v8);
    *(a1 + v8) = v10;
    *(a1 + v9) = *(a2 + v9);
    v11 = a3[7];
    v12 = sub_10004B6D0();
    v13 = *(*(v12 - 8) + 16);
    v14 = v10;
    v13(a1 + v11, a2 + v11, v12);
    v15 = a3[8];
    v16 = a1 + v15;
    v17 = (a2 + v15);
    ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
    v19 = *(ReminderNotesCellContent - 8);
    if ((*(v19 + 48))(v17, 1, ReminderNotesCellContent))
    {
      v20 = sub_100003150(&qword_100067308, &unk_100052770);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v22 = *v17;
        *v16 = *v17;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100049E00();
        v34 = *(*(v25 - 8) + 16);
        v26 = v22;
        v34(&v16[v24], v17 + v24, v25);
        v27 = *(ReminderView + 24);
        v28 = *(v17 + v27);
        *&v16[v27] = v28;
        v29 = v28;
      }

      else
      {
        v30 = *v17;
        v31 = *(v17 + 8);
        v32 = v30;
        *v16 = v30;
        v16[8] = v31;
      }

      swift_storeEnumTagMultiPayload();
      (*(v19 + 56))(v16, 0, 1, ReminderNotesCellContent);
    }
  }

  return a1;
}

void sub_100007534(uint64_t a1, int *a2)
{
  v4 = sub_10004AD30();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[7];
  v6 = sub_10004B6D0();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = a1 + a2[8];
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  if (!(*(*(ReminderNotesCellContent - 8) + 48))(v7, 1, ReminderNotesCellContent))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v10 = *(ReminderView + 20);
      v11 = sub_100049E00();
      (*(*(v11 - 8) + 8))(v7 + v10, v11);
      v12 = *(v7 + *(ReminderView + 24));
    }

    else
    {
      v12 = *v7;
      v13 = *(v7 + 8);
    }
  }
}

uint64_t sub_1000076E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[5];
  v8 = a3[6];
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  *(a1 + v8) = *(a2 + v8);
  v10 = a3[7];
  v11 = sub_10004B6D0();
  v12 = *(*(v11 - 8) + 16);
  v13 = v9;
  v12(a1 + v10, a2 + v10, v11);
  v14 = a3[8];
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v18 = *(ReminderNotesCellContent - 8);
  if ((*(v18 + 48))(v16, 1, ReminderNotesCellContent))
  {
    v19 = sub_100003150(&qword_100067308, &unk_100052770);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *v16;
      *v15 = *v16;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v22 = *(ReminderView + 20);
      v23 = sub_100049E00();
      v32 = *(*(v23 - 8) + 16);
      v24 = v20;
      v32(&v15[v22], v16 + v22, v23);
      v25 = *(ReminderView + 24);
      v26 = *(v16 + v25);
      *&v15[v25] = v26;
      v27 = v26;
    }

    else
    {
      v28 = *v16;
      v29 = *(v16 + 8);
      v30 = v28;
      *v15 = v28;
      v15[8] = v29;
    }

    swift_storeEnumTagMultiPayload();
    (*(v18 + 56))(v15, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_100007948(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  *(a1 + v7) = v9;
  v10 = v9;

  *(a1 + a3[6]) = *(a2 + a3[6]);
  v11 = a3[7];
  v12 = sub_10004B6D0();
  (*(*(v12 - 8) + 24))(a1 + v11, a2 + v11, v12);
  v13 = a3[8];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v17 = *(ReminderNotesCellContent - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderNotesCellContent);
  v20 = v18(v15, 1, ReminderNotesCellContent);
  if (v19)
  {
    if (!v20)
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *v15;
        *v14 = *v15;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v23 = *(ReminderView + 20);
        v24 = sub_100049E00();
        v46 = *(*(v24 - 8) + 16);
        v25 = v21;
        v46(&v14[v23], &v15[v23], v24);
        v26 = *(ReminderView + 24);
        v27 = *&v15[v26];
        *&v14[v26] = v27;
        v28 = v27;
      }

      else
      {
        v39 = *v15;
        v40 = v15[8];
        v41 = v39;
        *v14 = v39;
        v14[8] = v40;
      }

      swift_storeEnumTagMultiPayload();
      (*(v17 + 56))(v14, 0, 1, ReminderNotesCellContent);
      return a1;
    }

LABEL_7:
    v29 = sub_100003150(&qword_100067308, &unk_100052770);
    memcpy(v14, v15, *(*(v29 - 8) + 64));
    return a1;
  }

  if (v20)
  {
    sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    goto LABEL_7;
  }

  if (a1 != a2)
  {
    sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = *v15;
      *v14 = *v15;
      v31 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v32 = *(v31 + 20);
      v33 = sub_100049E00();
      v34 = *(*(v33 - 8) + 16);
      v35 = v30;
      v34(&v14[v32], &v15[v32], v33);
      v36 = *(v31 + 24);
      v37 = *&v15[v36];
      *&v14[v36] = v37;
      v38 = v37;
    }

    else
    {
      v43 = *v15;
      v44 = v15[8];
      v45 = v43;
      *v14 = v43;
      v14[8] = v44;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_100007CDC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[7];
  v9 = sub_10004B6D0();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  v10 = a3[8];
  v11 = (a1 + v10);
  v12 = (a2 + v10);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v14 = *(ReminderNotesCellContent - 8);
  if ((*(v14 + 48))(v12, 1, ReminderNotesCellContent))
  {
    v15 = sub_100003150(&qword_100067308, &unk_100052770);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *v11 = *v12;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v17 = *(ReminderView + 20);
      v18 = sub_100049E00();
      (*(*(v18 - 8) + 32))(v11 + v17, v12 + v17, v18);
      *(v11 + *(ReminderView + 24)) = *(v12 + *(ReminderView + 24));
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v11, v12, *(v14 + 64));
    }

    (*(v14 + 56))(v11, 0, 1, ReminderNotesCellContent);
  }

  return a1;
}

uint64_t sub_100007F04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[5];
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  v10 = sub_10004B6D0();
  (*(*(v10 - 8) + 40))(a1 + v9, a2 + v9, v10);
  v11 = a3[8];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v15 = *(ReminderNotesCellContent - 8);
  v16 = *(v15 + 48);
  v17 = v16(v12, 1, ReminderNotesCellContent);
  v18 = v16(v13, 1, ReminderNotesCellContent);
  if (!v17)
  {
    if (!v18)
    {
      if (a1 == a2)
      {
        return a1;
      }

      sub_100009AB4(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *v12 = *v13;
        ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
        v24 = *(ReminderView + 20);
        v25 = sub_100049E00();
        (*(*(v25 - 8) + 32))(&v12[v24], &v13[v24], v25);
        *&v12[*(ReminderView + 24)] = *&v13[*(ReminderView + 24)];
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v22 = *(v15 + 64);
      goto LABEL_8;
    }

    sub_100009AB4(v12, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_7:
    v22 = *(*(sub_100003150(&qword_100067308, &unk_100052770) - 8) + 64);
LABEL_8:
    memcpy(v12, v13, v22);
    return a1;
  }

  if (v18)
  {
    goto LABEL_7;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v12 = *v13;
    v19 = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v20 = *(v19 + 20);
    v21 = sub_100049E00();
    (*(*(v21 - 8) + 32))(&v12[v20], &v13[v20], v21);
    *&v12[*(v19 + 24)] = *&v13[*(v19 + 24)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v12, v13, *(v15 + 64));
  }

  (*(v15 + 56))(v12, 0, 1, ReminderNotesCellContent);
  return a1;
}

uint64_t sub_100008244(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_10004B6D0();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v16 = sub_100003150(&qword_100067308, &unk_100052770);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[8];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1000083E4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10004AD30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[5]) = a2;
    return result;
  }

  v13 = sub_10004B6D0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = sub_100003150(&qword_100067308, &unk_100052770);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[8];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_100008584(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000085BC()
{
  v0 = sub_10004AD30();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_10004B6D0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000086D4();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1000086D4()
{
  if (!qword_100067378)
  {
    type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(255);
    v0 = sub_10004CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_100067378);
    }
  }
}

char *sub_10000872C(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v8 = *(ReminderView + 20);
      v9 = sub_100049E00();
      v10 = *(*(v9 - 8) + 16);
      v11 = v6;
      v10(&a1[v8], a2 + v8, v9);
      v12 = *(ReminderView + 24);
      v13 = *(a2 + v12);
      *&a1[v12] = v13;
      v14 = v13;
    }

    else
    {
      v16 = *a2;
      v17 = *(a2 + 8);
      v18 = v16;
      *a1 = v16;
      a1[8] = v17;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_100008880(uint64_t a1)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v3 = *(ReminderView + 20);
    v4 = sub_100049E00();
    (*(*(v4 - 8) + 8))(a1 + v3, v4);
    v5 = *(a1 + *(ReminderView + 24));
  }

  else
  {
    v5 = *a1;
    v6 = *(a1 + 8);
  }
}

uint64_t sub_100008944(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = *a2;
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v6 = *(ReminderView + 20);
    v7 = sub_100049E00();
    v8 = *(*(v7 - 8) + 16);
    v9 = v4;
    v8(a1 + v6, a2 + v6, v7);
    v10 = *(ReminderView + 24);
    v11 = *(a2 + v10);
    *(a1 + v10) = v11;
    v12 = v11;
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 8);
    v15 = v13;
    *a1 = v13;
    *(a1 + 8) = v14;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t sub_100008A44(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100009AB4(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *a2;
      *a1 = *a2;
      ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
      v6 = *(ReminderView + 20);
      v7 = sub_100049E00();
      v8 = *(*(v7 - 8) + 16);
      v9 = v4;
      v8(a1 + v6, a2 + v6, v7);
      v10 = *(ReminderView + 24);
      v11 = *(a2 + v10);
      *(a1 + v10) = v11;
      v12 = v11;
    }

    else
    {
      v13 = *a2;
      v14 = *(a2 + 8);
      v15 = v13;
      *a1 = v13;
      *(a1 + 8) = v14;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *sub_100008B68(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100049E00();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v10 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v10);
  }
}

char *sub_100008C68(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_100009AB4(a1, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    v8 = sub_100049E00();
    (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
    *&a1[*(ReminderView + 24)] = *&a2[*(ReminderView + 24)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

uint64_t sub_100008DF0()
{
  result = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(319);
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t sub_100008E84(uint64_t a1, uint64_t a2)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v5 = *(*(ReminderView - 8) + 64);
  __chkstk_darwin(ReminderView, v6);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v10 = *(*(ReminderNotesCellContent - 8) + 64);
  v12 = __chkstk_darwin(ReminderNotesCellContent, v11);
  v14 = (&v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12, v15);
  v17 = &v44 - v16;
  v18 = sub_100003150(&qword_100067488, &qword_100052898);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v23 = &v44 - v22;
  v24 = &v44 + *(v21 + 56) - v22;
  sub_100009C44(a1, &v44 - v22, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_100009C44(a2, v24, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100009C44(v23, v17, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    v34 = *v17;
    v35 = v17[8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      goto LABEL_12;
    }

    v36 = *v24;
    v37 = v24[8];
    if (v35)
    {
      if (v24[8])
      {
        if (!v34)
        {
          if (!v36)
          {

            goto LABEL_34;
          }

          v41 = 0;
          goto LABEL_23;
        }

        if (v36)
        {
          sub_100009FF0(0, &qword_1000674A0, UIImage_ptr);
          v38 = v36;
          v39 = v34;
          v40 = sub_10004CA70();

          if (v40)
          {
            goto LABEL_34;
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

      v41 = v34;
    }

    else
    {
      if ((v24[8] & 1) == 0)
      {
        sub_100009FF0(0, &qword_100067490, NSObject_ptr);
        v42 = sub_10004CA70();

        if (v42)
        {
          goto LABEL_34;
        }

        goto LABEL_28;
      }

      v41 = v34;
    }

LABEL_23:

LABEL_28:
    sub_100009AB4(v23, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
    return 0;
  }

  sub_100009C44(v23, v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100009BDC(v24, v8, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_100009FF0(0, &qword_100067490, NSObject_ptr);
    v25 = *v14;
    v26 = *v8;
    if (sub_10004CA70())
    {
      v27 = *(ReminderView + 20);
      if (sub_100049DE0())
      {
        v28 = *(ReminderView + 24);
        v29 = *(v14 + v28);
        v30 = *(v8 + v28);
        if (v29)
        {
          if (v30)
          {
            sub_100009FF0(0, &qword_100067498, LPLinkMetadata_ptr);
            v31 = v30;
            v32 = v29;
            v33 = sub_10004CA70();

            if (v33)
            {
              goto LABEL_8;
            }
          }
        }

        else if (!v30)
        {
LABEL_8:
          sub_100009AB4(v8, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
          sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_34:
          sub_100009AB4(v23, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
          return 1;
        }
      }
    }

    sub_100009AB4(v8, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_28;
  }

  sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
LABEL_12:
  sub_10000A138(v23, &qword_100067488, &qword_100052898);
  return 0;
}

BOOL sub_100009370(uint64_t a1, uint64_t a2)
{
  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v5 = *(ReminderNotesCellContent - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(ReminderNotesCellContent, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003150(&qword_100067308, &unk_100052770);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v34 - v13;
  v15 = sub_100003150(&qword_100067478, &qword_100052890);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v34 - v18;
  if ((sub_10004AD20() & 1) == 0)
  {
    return 0;
  }

  v35 = v5;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v21 = ReminderNotesCellContentState[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v34 = v9;
    sub_100009FF0(0, &qword_100067480, NSAttributedString_ptr);
    v24 = v23;
    v25 = v22;
    v26 = sub_10004CA70();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v34 = v9;
    if (v23)
    {
      return 0;
    }
  }

  if (*(a1 + ReminderNotesCellContentState[6]) != *(a2 + ReminderNotesCellContentState[6]))
  {
    return 0;
  }

  v27 = ReminderNotesCellContentState[7];
  if ((sub_10004B6C0() & 1) == 0)
  {
    return 0;
  }

  v28 = ReminderNotesCellContentState[8];
  v29 = *(v15 + 48);
  sub_10000A198(a1 + v28, v19, &qword_100067308, &unk_100052770);
  sub_10000A198(a2 + v28, &v19[v29], &qword_100067308, &unk_100052770);
  v30 = *(v35 + 48);
  if (v30(v19, 1, ReminderNotesCellContent) == 1)
  {
    if (v30(&v19[v29], 1, ReminderNotesCellContent) == 1)
    {
      sub_10000A138(v19, &qword_100067308, &unk_100052770);
      return 1;
    }

    goto LABEL_14;
  }

  sub_10000A198(v19, v14, &qword_100067308, &unk_100052770);
  if (v30(&v19[v29], 1, ReminderNotesCellContent) == 1)
  {
    sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
LABEL_14:
    sub_10000A138(v19, &qword_100067478, &qword_100052890);
    return 0;
  }

  v32 = v34;
  sub_100009BDC(&v19[v29], v34, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  v33 = sub_100008E84(v14, v32);
  sub_100009AB4(v32, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_100009AB4(v14, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment);
  sub_10000A138(v19, &qword_100067308, &unk_100052770);
  return (v33 & 1) != 0;
}

uint64_t sub_100009720(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067460, &unk_100052880);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v31 - v9;
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v12 = *(ReminderNotesCellContentState - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(ReminderNotesCellContentState, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004B310();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005970();
  (*(v18 + 16))(v22, a1, v17);
  result = (*(v18 + 88))(v22, v17);
  if (result != enum case for TTRIReminderCellTitleEditingEvent.editingWillBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingDidBegin(_:) && result != enum case for TTRIReminderCellTitleEditingEvent.editingChanged(_:))
  {
    if (result == enum case for TTRIReminderCellTitleEditingEvent.editingDidEnd(_:))
    {
      sub_10004A880();
      if ((*(v12 + 48))(v10, 1, ReminderNotesCellContentState) == 1)
      {
        return sub_10000A138(v10, &qword_100067460, &unk_100052880);
      }

      else
      {
        sub_100009BDC(v10, v16, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        v26 = sub_10004A860();
        if (!v26 || (v27 = v26, v28 = *(v26 + qword_100067258), v27, v29 = [v28 attributedText], v28, !v29))
        {
          v29 = [objc_allocWithZone(NSAttributedString) init];
        }

        v30 = *(ReminderNotesCellContentState + 20);

        *&v16[v30] = v29;
        sub_100009C44(v16, v7, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
        (*(v12 + 56))(v7, 0, 1, ReminderNotesCellContentState);
        sub_10004A850();
        sub_10000A138(v7, &qword_100067460, &unk_100052880);
        return sub_100009AB4(v16, type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState);
      }
    }

    else
    {
      result = sub_10004CDC0();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100009AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100009B14(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&qword_100067468, &qword_100053240);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100009B84()
{
  result = qword_100067470;
  if (!qword_100067470)
  {
    type metadata accessor for TTRIExtensionCreateReminderNotesCellContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067470);
  }

  return result;
}

uint64_t sub_100009BDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100009C44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_100009CAC(void **a1, uint64_t a2)
{
  v4 = sub_100049E00();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(v5 + 16))(v9, a1 + *(ReminderView + 20), v4);
  v11 = *a1;
  v12 = objc_allocWithZone(sub_10004B680());
  v13 = v11;
  v14 = sub_10004B670();
  [v14 _setApplyCornerRadius:1];
  [v14 _setPreferredSizeClass:8];
  v15 = v14;
  v16 = [v15 layer];
  [v16 setCornerRadius:16.0];

  v17 = [v15 layer];
  [v17 setMasksToBounds:1];

  [v15 setUserInteractionEnabled:0];
  v18 = a2 + qword_100067278;
  v19 = *(a2 + qword_100067278);
  *v18 = v15;
  *(v18 + 8) = 1;
  v20 = v15;

  sub_100005CD4();
  return v20;
}

void sub_100009E7C(void *a1, double a2, double a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_10004C9F0();
    return;
  }

  v7 = Strong;
  if (*(Strong + qword_100067258) == a1)
  {
    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
    v10 = v7[qword_100067278 + 8];
    v11 = *&v7[qword_100067278];

    if (v10)
    {
      if (v10 == 1)
      {
      }
    }

    else
    {
    }
  }

  else
  {
    v8 = *(Strong + qword_100067278);
    if (*(Strong + qword_100067278 + 8))
    {
      if (*(Strong + qword_100067278 + 8) == 1 && v8 == a1)
      {
        [a1 effectiveLayoutSizeFittingSize:{a2, 120.0}];
LABEL_16:

        return;
      }

LABEL_15:
      sub_10004C9F0();
      goto LABEL_16;
    }

    if (v8 != a1)
    {
      goto LABEL_15;
    }

    [a1 effectiveLayoutSizeFittingSize:{a2, a3}];
  }
}

uint64_t sub_100009FF0(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_10000A038()
{
  result = qword_1000674E8;
  if (!qword_1000674E8)
  {
    sub_100003198(&qword_1000674E0, &qword_1000528C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000674E8);
  }

  return result;
}

uint64_t sub_10000A09C()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10000A0D4()
{
  v1 = *(v0 + 16) + qword_100067278;
  v2 = *v1;
  *v1 = 0;
  *(v1 + 8) = 2;

  sub_100005CD4();
}

uint64_t sub_10000A120(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000A138(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100003150(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000A198(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003150(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000A200()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10000A264()
{
  v1 = (type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = (v0 + v3);
  v6 = v1[7];
  v7 = sub_100049E00();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_10000A36C()
{
  v1 = *(type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000062F4(v3, (v0 + v2));
}

uint64_t sub_10000A420()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100067560);
  v1 = sub_10000D49C(v0, qword_100067560);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10000A4E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_10004BFF0();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.receiver = v1;
  v27.super_class = ObjectType;
  objc_msgSendSuper2(&v27, "viewDidLoad");
  v9 = enum case for REMFeatureFlags.multipleReminders(_:);
  v10 = v4[13];
  v10(v8, enum case for REMFeatureFlags.multipleReminders(_:), v3);
  LOBYTE(ObjectType) = sub_10004BFE0();
  v11 = v4[1];
  v11(v8, v3);
  [v1 setModalInPresentation:ObjectType & 1];
  sub_10004A840();
  v12 = [v1 navigationBar];
  sub_10004A830();

  v10(v8, v9, v3);
  LOBYTE(ObjectType) = sub_10004BFE0();
  v11(v8, v3);
  if (ObjectType)
  {
    v13 = sub_10000A7B0();
    v14 = sub_10000BB24(v13, v1);
    v16 = v15;
    v18 = v17;

    v19 = &OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface;
  }

  else
  {
    v14 = sub_10000CF60(0, v1, 0);
    v16 = v20;
    v18 = v21;
    v19 = &OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface;
  }

  v22 = &v1[*v19];
  v23 = *v22;
  *v22 = v16;
  *(v22 + 1) = v18;
  v24 = v14;
  swift_unknownObjectRelease();
  sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100052620;
  *(v25 + 32) = v24;
  sub_100009FF0(0, &qword_100067628, UIViewController_ptr);
  isa = sub_10004C710().super.isa;

  [v1 setViewControllers:isa animated:0];
}

uint64_t sub_10000A7B0()
{
  v1 = v0;
  v2 = [v0 extensionContext];
  if (v2)
  {
    v3 = v2;
    sub_10004C030();
    v4 = sub_10004C010();
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v1;
    sub_10004B3C0();
    v6 = v3;
    v7 = v1;
    v8 = sub_10004C150();

    return v8;
  }

  else
  {
    if (qword_100066EF0 != -1)
    {
      swift_once();
    }

    v10 = sub_10004C1B0();
    sub_10000D49C(v10, qword_100067560);
    v11 = sub_10004C1A0();
    v12 = sub_10004C890();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Sharing extension is missing extension context", v13, 2u);
    }

    v14 = [objc_opt_self() unexpectedError];
    v15 = sub_100003150(&qword_1000676D0, &qword_1000529A8);
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    return sub_10004C140();
  }
}

id sub_10000A9D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = &v2[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor;
  v17[3] = sub_10004B050();
  v17[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000B790(v17);
  sub_10004B040();
  v10 = sub_10004AE40();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v2[v9] = sub_10004AE20();
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = swift_getObjCClassFromMetadata();
LABEL_6:
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, v14);
}

id sub_10000AC20(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = &v3[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor;
  v18[3] = sub_10004B050();
  v18[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000B790(v18);
  sub_10004B040();
  v11 = sub_10004AE40();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v3[v10] = sub_10004AE20();
  if (a2)
  {
    v14 = sub_10004C680();
  }

  else
  {
    v14 = 0;
  }

  v17.receiver = v4;
  v17.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", v14, a3);

  return v15;
}

id sub_10000AD98(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionCreateReminderInterface];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor;
  v13[3] = sub_10004B050();
  v13[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  sub_10000B790(v13);
  sub_10004B040();
  v7 = sub_10004AE40();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v1[v6] = sub_10004AE20();
  v12.receiver = v1;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, "initWithCoder:", a1);

  if (v10)
  {
  }

  return v10;
}

uint64_t sub_10000AF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_10004B230();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v4[5] = v6;
  v7 = *(v6 + 64) + 15;
  v4[6] = swift_task_alloc();
  sub_10004C770();
  v4[7] = sub_10004C760();
  v9 = sub_10004C750();
  v4[8] = v9;
  v4[9] = v8;

  return _swift_task_switch(sub_10000B020, v9, v8);
}

uint64_t sub_10000B020()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_remindersCreationInterface);
  v0[10] = v1;
  if (v1)
  {
    (*(v0[5] + 104))(v0[6], enum case for TTRIViewControllerDismissalState.requested(_:), v0[4]);
    swift_unknownObjectRetain();
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_10000B188;
    v3 = v0[6];
    v4 = v0[2];

    return sub_1000365DC(v4, v3);
  }

  else
  {
    v6 = v0[7];

    v7 = v0[6];
    v8 = v0[2];
    v9 = sub_10004B0B0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10000B188()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 40);
  v6 = *(*v0 + 32);
  v10 = *v0;

  swift_unknownObjectRelease();
  (*(v5 + 8))(v4, v6);
  v7 = *(v1 + 72);
  v8 = *(v1 + 64);

  return _swift_task_switch(sub_10000B328, v8, v7);
}

uint64_t sub_10000B328()
{
  v1 = v0[7];

  v2 = v0[6];
  v3 = v0[2];
  v4 = sub_10004B0B0();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10000B508()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000B548(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000B5FC;

  return sub_10000AF2C(a1, v4, v5, v6);
}

uint64_t sub_10000B5FC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000B6F0(void *a1, uint64_t a2)
{
  v4 = sub_10004AF80();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v7 = a1;
  v8 = sub_10004AF70();
  v9 = *(a2 + OBJC_IVAR____TtC25RemindersSharingExtension24TTRISERootViewController_extensionContextExtractor);
  v12[3] = v4;
  v12[4] = &protocol witness table for TTRNSExtensionContextProvider;
  v12[0] = v8;

  v10 = sub_10004AE30();

  sub_10000343C(v12);
  return v10;
}

uint64_t *sub_10000B790(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_10000B7F8(uint64_t a1, void *a2, char *a3)
{
  v27 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_10004C490();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004C4D0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10004A460();
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presentationTreesCapability] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropController] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_dragAndDropCoordinator] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_diffableDataSource] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_currentTextInputModeObserver] = 0;
  (*(v21 + 104))(&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for TTRIShowRemindersDeferredItemUpdates.PendingScrollAction.none(_:));
  sub_10004A490();
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_taskToShowLoadingState] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___cancelButton] = 0;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController____lazy_storage___commitButton] = 0;
  v22 = &a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_presenter];
  *v22 = v27;
  *(v22 + 1) = &off_1000600B8;
  *&a3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersViewController_localUndoManager] = a2;
  sub_100009FF0(0, &qword_1000676C8, UICollectionViewCompositionalLayout_ptr);
  (*(v6 + 104))(v10, enum case for UICollectionLayoutListConfiguration.Appearance.insetGrouped(_:), v5);
  v23 = a2;
  sub_10004C4B0();
  v24 = sub_10004C9E0();
  (*(v12 + 8))(v16, v11);
  v29.receiver = a3;
  v29.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v29, "initWithCollectionViewLayout:", v24);

  return v25;
}

id sub_10000BB24(uint64_t a1, uint64_t a2)
{
  v158 = a2;
  v159 = a1;
  v2 = sub_100003150(&qword_100067630, &qword_100052960);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v157 = &v145 - v5;
  v160 = sub_10004BB70();
  v153 = *(v160 - 8);
  v6 = v153[8];
  __chkstk_darwin(v160, v7);
  v150 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100049E80();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v162 = &v145 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100003150(&qword_100067638, &qword_100052968);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v156 = &v145 - v16;
  v155 = sub_10004C100();
  *&v151 = *(v155 - 8);
  v152 = v151;
  v17 = *(v151 + 64);
  __chkstk_darwin(v155, v18);
  v154 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_10004AAC0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v145 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = [objc_allocWithZone(REMStore) init];
  v26 = sub_10004A980();
  sub_10004AAB0();
  v27 = v26;
  v163 = v26;
  v149 = sub_10004A970();
  (*(v21 + 8))(v25, v20);
  v28 = sub_10004B3B0();
  v29 = sub_10004B450();
  v189 = v28;
  v190 = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
  v188[0] = v29;
  sub_100009FF0(0, &qword_100067640, OS_dispatch_queue_ptr);
  sub_10004C980();
  v148 = sub_10004C030();
  sub_10004C020();
  v30 = sub_10004AA90();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = sub_10004AA80();
  *(&v185 + 1) = v30;
  v186 = &protocol witness table for TTRThumbnailGenerator;
  *&v184 = v33;
  v34 = sub_10004B030();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v169 = sub_10004B010();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v38 = v37;

  sub_10004C980();
  sub_10004C010();
  v39 = sub_10004C0A0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  v42 = v39;
  swift_allocObject();
  v43 = sub_10004C090();
  v189 = v42;
  v190 = &protocol witness table for REMContactsProvider;
  v44 = v42;
  v188[0] = v43;
  v167 = v38;

  v45 = v43;

  sub_10004C980();
  v164 = sub_10004AED0();
  v46 = v164[12];
  v47 = *(v164 + 26);
  swift_allocObject();
  v168 = sub_10004AEC0();
  v189 = v44;
  v190 = &protocol witness table for REMContactsProvider;
  *&v161 = v44;
  v188[0] = v43;
  *(&v185 + 1) = v27;
  v186 = &protocol witness table for TTRGeoLocationService;
  v48 = v149;
  *&v184 = v149;
  v49 = sub_10004B420();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();

  v52 = v166;
  v149 = v48;
  v53 = sub_10004B410();
  v189 = v49;
  v190 = &protocol witness table for TTRReminderLocationOptionsProvider;
  v188[0] = v53;
  v166 = v53;
  *(&v185 + 1) = v44;
  v186 = &protocol witness table for REMContactsProvider;
  *&v184 = v43;
  sub_100003150(&qword_100067648, &qword_100052970);
  v54 = *(v151 + 72);
  v55 = (*(v152 + 80) + 32) & ~*(v152 + 80);
  v56 = swift_allocObject();
  v151 = xmmword_1000528D0;
  *(v56 + 16) = xmmword_1000528D0;

  v146 = v52;

  sub_10004C0F0();
  *&v174 = v56;
  sub_10000DB28(&qword_100067650, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100003150(&qword_100067658, &qword_100052978);
  sub_100003364(&qword_100067660, &qword_100067658, &qword_100052978);
  sub_10004CBC0();
  v57 = sub_100049E30();
  (*(*(v57 - 8) + 56))(v156, 1, 1, v57);
  sub_10004C980();
  sub_10004C020();
  sub_100049E70();
  v58 = sub_10004B4D0();
  v59 = *(v58 + 48);
  v60 = *(v58 + 52);
  swift_allocObject();
  v61 = v146;
  v62 = sub_10004B4C0();
  v63 = sub_10004B360();
  v64 = *(v63 + 48);
  v65 = *(v63 + 52);
  swift_allocObject();
  v156 = v62;

  v66 = sub_10004B350();
  v189 = v63;
  v190 = &protocol witness table for TTRIReminderTitleAttributesStyler;
  v188[0] = v66;
  v67 = v161;
  *(&v185 + 1) = v161;
  v186 = &protocol witness table for REMContactsProvider;
  *&v184 = v45;
  v175 = v49;
  v176 = &protocol witness table for TTRReminderLocationOptionsProvider;
  v68 = v166;
  *&v174 = v166;
  v147 = sub_10004B5B0();
  v69 = *(v147 + 48);
  v70 = *(v147 + 52);
  swift_allocObject();

  v162 = sub_10004B5A0();
  v189 = v163;
  v190 = &protocol witness table for TTRGeoLocationService;
  v71 = v149;
  v188[0] = v149;
  *(&v185 + 1) = v49;
  v186 = &protocol witness table for TTRReminderLocationOptionsProvider;
  *&v184 = v68;
  v72 = sub_10004B190();
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = v71;

  v76 = sub_10004B180();
  v77 = v150;
  sub_10004BB60();
  *(&v185 + 1) = v67;
  v186 = &protocol witness table for REMContactsProvider;
  v165 = v45;
  *&v184 = v45;
  v175 = v164;
  v176 = &protocol witness table for TTRParticipantAvatarProvider;
  *&v174 = v168;

  v155 = v76;
  v78 = sub_10004B3E0();
  v152 = v78;
  v80 = v79;
  v154 = v79;

  (v153[1])(v77, v160);
  sub_10000343C(&v174);
  sub_10000343C(&v184);
  v190 = v78;
  v191 = v80;
  v81 = objc_allocWithZone(TTRUndoManager);
  v82 = sub_10004C680();
  v83 = [v81 initWithDebugIdentifier:v82];

  v84 = sub_100049F40();
  v85 = *(v84 + 48);
  v86 = *(v84 + 52);
  swift_allocObject();
  v87 = v83;
  v153 = v61;
  v145 = v87;
  v146 = sub_100049F20();
  v88 = type metadata accessor for TTRISECreateRemindersRouter();
  v89 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v89 + 32) = 0;
  sub_10000DB28(&qword_100067668, type metadata accessor for TTRISECreateRemindersRouter);
  sub_100009FF0(0, &qword_100067670, UNUserNotificationCenter_ptr);

  sub_10004C9C0();
  v186 = 0;
  v184 = 0u;
  v185 = 0u;
  v90 = objc_opt_self();
  v91 = v75;
  v92 = [v90 daemonUserDefaults];
  v93 = sub_10004A780();
  v94 = *(v93 + 48);
  v95 = *(v93 + 52);
  swift_allocObject();
  v160 = sub_10004A770();
  sub_10004AC70();
  v150 = v89;

  v149 = sub_10004AC60();
  v96 = sub_10004B2C0();
  v184 = 0u;
  v185 = 0u;
  v186 = 0;
  v97 = *(v96 + 48);
  v98 = *(v96 + 52);
  swift_allocObject();
  v99 = v165;

  v148 = sub_10004B2B0();
  sub_10000D364(v188, &v184);
  v101 = v186;
  v100 = v187;
  v183[3] = v88;
  v183[4] = &off_10005FFB8;
  v183[0] = v89;
  v182[4] = &protocol witness table for REMContactsProvider;
  v182[3] = v161;
  v182[0] = v99;
  v181[4] = &protocol witness table for TTRParticipantAvatarProvider;
  v181[3] = v164;
  v181[0] = v168;
  v180[4] = &protocol witness table for TTRGeoLocationService;
  v180[3] = v163;
  v180[0] = v91;
  v179[4] = &protocol witness table for TTRReminderTitleAttributesInteractor;
  v179[3] = v147;
  v179[0] = v162;
  v102 = type metadata accessor for TTRISECreateRemindersPresenter();
  v103 = *(v102 + 48);
  v104 = *(v102 + 52);
  v105 = swift_allocObject();
  v106 = sub_100003624(v183, v88);
  v107 = *(*(v88 - 8) + 64);
  __chkstk_darwin(v106, v106);
  v109 = (&v145 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v110 + 16))(v109);
  v111 = *v109;
  v178[3] = v88;
  v178[4] = &off_10005FFB8;
  v178[0] = v111;
  sub_10000D3D4(&v184, &v174);
  v176 = v101;
  v177 = v100;
  *(v105 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v105 + 40) = 0;
  swift_unknownObjectWeakInit();
  v112 = sub_100003150(&qword_100067680, &qword_100052988);
  v113 = *(v112 + 48);
  v114 = *(v112 + 52);
  swift_allocObject();
  v164 = v91;

  v115 = v145;

  *(v105 + 128) = sub_10004BFD0();
  v116 = sub_10004BF30();
  v117 = *(v116 + 48);
  v118 = *(v116 + 52);
  swift_allocObject();
  *(v105 + 136) = sub_10004BF20();
  v119 = sub_100003150(&qword_100067688, &qword_100052990);
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  swift_allocObject();
  *(v105 + 144) = sub_10004BE70();
  v122 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_completionState;
  v123 = enum case for TTRReminderDetailCompletionState.editing(_:);
  v124 = sub_10004B290();
  (*(*(v124 - 8) + 104))(v105 + v122, v123, v124);
  v125 = (v105 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_currentEventHandler);
  *v125 = 0u;
  v125[1] = 0u;
  v126 = OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertion;
  v127 = sub_10004AD30();
  (*(*(v127 - 8) + 56))(v157, 1, 1, v127);
  v163 = sub_100003150(&qword_100067690, &qword_100052998);
  v128 = *(v163 + 48);
  v129 = *(v163 + 52);
  swift_allocObject();
  *(v105 + v126) = sub_10004C500();
  *(v105 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertionCancellable) = 0;
  *(v105 + 48) = v146;
  *(v105 + 56) = &protocol witness table for TTRSECreateRemindersInteractor;
  sub_10000DAC4(v178, v105 + 64);
  *(v105 + 104) = v160;
  *(v105 + 112) = v115;
  sub_10000D364(&v174, v173);
  v161 = v173[2];
  sub_10000D3D4(v173, (v105 + 152));
  *(v105 + 184) = v161;
  sub_10000DAC4(v179, v105 + 200);
  sub_10000DAC4(v182, v173);
  sub_10000DAC4(v181, &v172);
  sub_10000DAC4(v180, &v171);
  sub_100003150(&qword_100067698, &qword_1000529A0);
  v130 = swift_allocObject();
  *(v130 + 16) = v151;
  v131 = *(v100 + 8);
  *(v130 + 32) = v101;
  *(v130 + 40) = v131;
  v170[3] = sub_10004B6A0();
  v170[4] = &protocol witness table for TTRRemindersListNoOpCellEditModeState;
  sub_10000B790(v170);
  v132 = v115;

  swift_unknownObjectRetain();
  sub_10004B690();
  v133 = sub_10004A280();
  v134 = *(v133 + 48);
  v135 = *(v133 + 52);
  swift_allocObject();
  *(v105 + 120) = sub_10004A000();
  sub_10000DB28(&qword_1000676A0, type metadata accessor for TTRISECreateRemindersPresenter);

  sub_10004A260();

  v136 = *(v105 + 128);
  sub_10000DB28(&qword_1000676A8, type metadata accessor for TTRISECreateRemindersPresenter);

  sub_10004BFC0();

  v137 = *(v105 + 144);
  swift_allocObject();
  swift_weakInit();

  sub_10004BE90();

  v138 = *(v105 + 136);
  swift_allocObject();
  swift_weakInit();

  sub_10004BEF0();

  *&v173[0] = *(v105 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertion);
  swift_allocObject();
  swift_weakInit();

  sub_100003364(&qword_1000676B0, &qword_100067690, &qword_100052998);
  v139 = sub_10004C510();

  sub_10000343C(v179);
  sub_10000343C(v180);
  sub_10000343C(v181);
  sub_10000343C(v182);
  sub_10000343C(v178);

  v140 = *(v105 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertionCancellable);
  *(v105 + OBJC_IVAR____TtC25RemindersSharingExtension30TTRISECreateRemindersPresenter_cellInfoButtonVisibilityAssertionCancellable) = v139;

  sub_10000D434(&v174);
  sub_10000343C(v183);
  v141 = objc_allocWithZone(type metadata accessor for TTRISECreateRemindersViewController());

  v143 = sub_10000B7F8(v142, v132, v141);
  sub_10000DB28(&qword_1000676B8, type metadata accessor for TTRISECreateRemindersPresenter);

  sub_100049F30();
  *(v105 + 24) = &off_10005FDD0;
  swift_unknownObjectWeakAssign();
  *(v105 + 40) = &off_10005F870;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  sub_10000DB28(&qword_1000676C0, type metadata accessor for TTRISECreateRemindersPresenter);

  sub_10004BB50();
  sub_100049F10();

  sub_10000D434(v188);

  return v143;
}

uint64_t sub_10000CF60(void *a1, uint64_t a2, int a3)
{
  v32 = a3;
  v4 = [objc_allocWithZone(REMStore) init];
  v5 = objc_allocWithZone(TTRUndoManager);
  v6 = sub_10004C680();
  v7 = [v5 initWithDebugIdentifier:v6];

  sub_10004AC70();
  sub_10004AC60();
  sub_10000A7B0();
  v8 = sub_10004B510();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = a1;
  v12 = v4;

  v13 = v7;

  v14 = sub_10004B4F0();
  ReminderRouter = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v16 + 24) = 0;
  v34[3] = ReminderRouter;
  v34[4] = &off_10005FA90;
  v34[0] = v16;
  ReminderPresenter = type metadata accessor for TTRIExtensionCreateReminderPresenter();
  v18 = *(ReminderPresenter + 48);
  v19 = *(ReminderPresenter + 52);
  v20 = swift_allocObject();
  v21 = sub_100003624(v34, ReminderRouter);
  v22 = *(*(ReminderRouter - 8) + 64);
  __chkstk_darwin(v21, v21);
  v24 = (&v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v25 + 16))(v24);
  v26 = *v24;
  v27 = v13;

  v28 = sub_10000D580(v14, v26, sub_10004989C, 0, sub_100049A80, 0, v27, v32, v20);

  sub_10000343C(v34);
  type metadata accessor for TTRIExtensionCreateReminderViewController();
  v34[0] = v28;
  v34[1] = &off_10005F958;
  sub_10000DB28(&qword_1000676D8, type metadata accessor for TTRIExtensionCreateReminderViewController);
  sub_10004A7B0();
  v29 = v33;
  sub_10000DB28(&qword_1000676E0, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_10004B500();

  v28[3] = &off_10005FBC0;
  swift_unknownObjectWeakAssign();
  v28[5] = &off_10005F888;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  return v29;
}

uint64_t sub_10000D324()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D364(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&qword_100067678, &qword_100052980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_10000D3D4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000D3E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000D434(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067678, &qword_100052980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D49C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000D4D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *sub_10000D51C(uint64_t a1, uint64_t *a2)
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

uint64_t *sub_10000D580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char a8, uint64_t *a9)
{
  v58 = a3;
  v59 = a5;
  v60 = *a9;
  v15 = sub_10004C050();
  v61 = *(v15 - 8);
  v62 = v15;
  v16 = *(v61 + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003150(&qword_1000676E8, &qword_1000529B0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = &v57 - v23;
  v65[3] = type metadata accessor for TTRIExtensionCreateReminderRouter();
  v65[4] = &off_10005FA90;
  v65[0] = a2;
  a9[3] = 0;
  swift_unknownObjectWeakInit();
  a9[5] = 0;
  swift_unknownObjectWeakInit();
  *(a9 + 48) = 0;
  v25 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_viewModel;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 56))(a9 + v25, 1, 1, ReminderViewModel);
  *(a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager) = 0;
  v27 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties;
  v28 = sub_10004BED0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  *(a9 + v27) = sub_10004BEC0();
  v31 = (a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  *v31 = a1;
  v31[1] = &protocol witness table for TTRExtensionCreateReminderInteractor;
  sub_10000DAC4(v65, a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router);
  *(a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_undoManager) = a7;
  *(a9 + 48) = a8;
  v32 = sub_10004BA10();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = a7;
  *(a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper) = sub_10004B9D0();
  v36 = (a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_makeCellTitleModule);
  v37 = v59;
  *v36 = v58;
  v36[1] = a4;
  v38 = (a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_makeCellNotesModule);
  *v38 = v37;
  v38[1] = a6;
  sub_100009FF0(0, &qword_100067640, OS_dispatch_queue_ptr);

  sub_10004C980();
  v39 = sub_10004A6F0();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  *(a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction) = sub_10004A6D0();
  sub_10000DB28(&qword_1000676F0, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_10004A6E0();

  v42 = *(a9 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);
  sub_10000DB28(&qword_1000676F8, type metadata accessor for TTRIExtensionCreateReminderPresenter);

  sub_10004BA00();

  sub_10000DCA8(v24);
  v43 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000DB70(v24, a9 + v43);
  swift_endAccess();
  sub_10004A660();
  v44 = sub_10004A630();
  sub_10004C080();
  sub_10004C070();
  v45 = sub_100003150(&unk_100067700, &qword_100052C90);
  v46 = &v19[v45[12]];
  v47 = v45[16];
  v48 = &v19[v45[20]];
  v49 = enum case for REMUserOperation.createReminder(_:);
  v50 = sub_10004C040();
  (*(*(v50 - 8) + 104))(v19, v49, v50);
  *v46 = sub_10004A640();
  v46[1] = v51;
  sub_10004A650();
  v63 = sub_10004CE80();
  v64 = v52;
  v66._countAndFlagsBits = 0x69736E657478452DLL;
  v66._object = 0xEA00000000006E6FLL;
  sub_10004C6D0(v66);
  v53 = v64;
  *v48 = v63;
  v48[1] = v53;
  v55 = v61;
  v54 = v62;
  (*(v61 + 104))(v19, enum case for REMAnalyticsEvent.userOperation(_:), v62);
  sub_10004C060();

  (*(v55 + 8))(v19, v54);
  sub_10000343C(v65);
  return a9;
}

uint64_t sub_10000DAC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000DB28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003150(&qword_1000676E8, &qword_1000529B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000DBE0()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100067710);
  v1 = sub_10000D49C(v0, qword_100067710);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000DCA8@<X0>(unint64_t a1@<X8>)
{
  v3 = sub_10004B6D0();
  v154 = *(v3 - 8);
  v4 = *(v154 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10004AAF0();
  v153 = *(v8 - 8);
  v9 = *(v153 + 64);
  __chkstk_darwin(v8, v10);
  v152 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004C0D0();
  v163 = *(v12 - 1);
  v13 = *(v163 + 64);
  __chkstk_darwin(v12, v14);
  v156 = &v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_10004B020();
  v158 = *(v16 - 8);
  v159 = v16;
  v17 = *(v158 + 64);
  __chkstk_darwin(v16, v18);
  v160 = &v132 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
  v21 = *(*(v20 - 8) + 64);
  v23 = __chkstk_darwin(v20 - 8, v22);
  v164 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v157 = &v132 - v26;
  v27 = sub_10004B720();
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8, v29);
  v151 = sub_10004B740();
  v150 = *(v151 - 8);
  v30 = *(v150 + 64);
  __chkstk_darwin(v151, v31);
  v161 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_10004AD30();
  v148 = *(v149 - 8);
  v33 = *(v148 + 64);
  v35 = __chkstk_darwin(v149, v34);
  v147 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v37);
  v155 = &v132 - v38;
  v162 = v1;
  v39 = v1 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor;
  v40 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  v41 = *(v39 + 8);
  swift_getObjectType();
  v42 = sub_10004BA60();
  if (!v42)
  {
    goto LABEL_9;
  }

  v43 = v42;
  v44 = sub_10004BA60();
  if (!v44)
  {

LABEL_9:
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v53 = *(*(ReminderViewModel - 8) + 56);

    return v53(a1, 1, 1, ReminderViewModel);
  }

  v133 = v12;
  v45 = v44;
  v46 = [v45 objectID];
  sub_10004ADA0();

  if (swift_unknownObjectWeakLoadStrong() && (v47 = sub_10001B7A0(), v49 = v48, swift_unknownObjectRelease(), v47))
  {
    swift_getObjectType();
    v50 = *(v49 + 8);
    swift_unknownObjectRetain();
    sub_10004B490();
    v142 = v47;
    swift_unknownObjectRelease();
    sub_100003674(&v167, &v168);
    sub_1000032DC(&v168, v169);
    if (sub_10004B250())
    {
      sub_1000032DC(&v168, v169);
      v138 = sub_10004B260();
      sub_10000343C(&v168);
      goto LABEL_16;
    }

    sub_10000343C(&v168);
    v51 = v142;
  }

  else
  {
    v51 = 0;
  }

  v142 = v51;
  v55 = [v43 titleAsString];
  if (v55)
  {
    v56 = v55;
    sub_10004C690();

    sub_10004C6B0();
    v138 = v57;
  }

  else
  {
    v138 = 0;
  }

LABEL_16:
  v169 = sub_100009FF0(0, &qword_1000678E8, REMReminderChangeItem_ptr);
  v170 = &protocol witness table for REMReminderChangeItem;
  v168 = v43;
  v58 = v43;
  sub_10004B710();
  sub_10004B730();
  v59 = sub_10004B700();
  if (v59)
  {
LABEL_17:
    v60 = v59;
    goto LABEL_19;
  }

  v60 = [v58 title];
  if (!v60)
  {
    v59 = [objc_allocWithZone(NSAttributedString) init];
    goto LABEL_17;
  }

LABEL_19:
  v61 = sub_10004B6F0();
  if (!v61)
  {
    v61 = [v58 notes];
    if (!v61)
    {
      v61 = [objc_allocWithZone(NSAttributedString) init];
    }
  }

  v137 = v61;
  v62 = [v58 accountCapabilities];
  v136 = [v62 supportsTextStyling];

  v63 = [v58 attachmentContext];
  if (v63)
  {
    v64 = v63;
    v65 = [v63 attachments];

    sub_100009FF0(0, &qword_1000678F8, REMAttachment_ptr);
    v66 = sub_10004C720();
  }

  else
  {
    v66 = &_swiftEmptyArrayStorage;
  }

  v139 = v8;
  v165 = v66 >> 62;
  v140 = v3;
  v141 = v58;
  v67 = v66 & 0xFFFFFFFFFFFFFF8;
  if (v66 >> 62)
  {
LABEL_108:
    v68 = sub_10004CD50();
  }

  else
  {
    v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v69 = v66 & 0xC000000000000001;
  v144 = (v66 + 32);

  v70 = 0;
  v166 = v66;
  while (v68 != v70)
  {
    if (v69)
    {
      v71 = sub_10004CC90();
    }

    else
    {
      if (v70 >= *(v67 + 16))
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      v71 = *(v66 + 8 * v70 + 32);
    }

    v72 = v71;
    objc_opt_self();
    v73 = swift_dynamicCastObjCClass();

    if (v73)
    {
      v68 = v70;
      v66 = v166;
      break;
    }

    v74 = __OFADD__(v70++, 1);
    v66 = v166;
    if (v74)
    {
      goto LABEL_105;
    }
  }

  if (v165)
  {
    v75 = sub_10004CD50();
  }

  else
  {
    v75 = *(v67 + 16);
  }

  v135 = a1;
  v134 = v60;
  if (v68 == v75)
  {

    v76 = 0;
  }

  else
  {
    if (v69)
    {
      v77 = sub_10004CC90();
    }

    else
    {
      if (v68 >= *(v67 + 16))
      {
        __break(1u);
        goto LABEL_111;
      }

      v77 = v144[v68];
    }

    v78 = v77;
    objc_opt_self();
    v79 = swift_dynamicCastObjCClass();
    if (!v79)
    {
      goto LABEL_113;
    }

    v76 = v79;
  }

  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v81 = *(ReminderView - 8);
  v82 = *(v81 + 56);
  v60 = (v81 + 56);
  v82(v157, 1, 1, ReminderView);
  v146 = v76;
  v145 = v7;
  if (v76)
  {
    v83 = v76;
    v84 = [v83 metadata];
    if (v84)
    {
      v85 = v84;
      v86 = sub_100049E20();
      v88 = v87;

      sub_1000127EC(v86, v88);
      isa = sub_100049E10().super.isa;
      v143 = [objc_opt_self() metadataWithDataRepresentation:isa];

      sub_100012840(v86, v88);
      sub_100012840(v86, v88);
    }

    else
    {
      v143 = 0;
    }

    v90 = [v83 objectID];
    v91 = [v83 url];
    v92 = v164;
    v93 = &v164[*(ReminderView + 20)];
    sub_100049DF0();

    v7 = &unk_100052CC0;
    v94 = v157;
    sub_10000A138(v157, &qword_1000678E0, &unk_100052CC0);
    *v92 = v90;
    *(v92 + *(ReminderView + 24)) = v143;
    v82(v92, 0, 1, ReminderView);
    sub_100012784(v92, v94, &qword_1000678E0, &unk_100052CC0);
    v66 = v166;
  }

  if (v165)
  {
    v78 = sub_10004CD50();
  }

  else
  {
    v78 = *(v67 + 16);
  }

  v70 = 0;
  a1 = &_s15RemindersUICore33TTRICollectionViewDragItemSourcesV25DraggedItemsForValidationO8externalyAEyx_qd__GSaySo06UIDragF0CGcAGmr__lFWC_ptr;
  while (v78 != v70)
  {
    if (v69)
    {
      v95 = sub_10004CC90();
    }

    else
    {
      if (v70 >= *(v67 + 16))
      {
        goto LABEL_104;
      }

      v95 = *(v66 + 8 * v70 + 32);
    }

    v96 = v95;
    objc_opt_self();
    v97 = swift_dynamicCastObjCClass();

    if (v97)
    {
      v78 = v70;
      break;
    }

    v74 = __OFADD__(v70++, 1);
    if (v74)
    {
      goto LABEL_106;
    }
  }

  v98 = v146;
  if (!v165)
  {
    if (v78 != *(v67 + 16))
    {
      goto LABEL_69;
    }

LABEL_77:
    swift_bridgeObjectRelease_n();
    if (v98)
    {
      v7 = 0;
      v107 = -1;
      v108 = v135;
LABEL_97:
      v123 = v148;
      v124 = v147;
      v125 = v155;
      v126 = v149;
      (*(v148 + 16))(v147, v155, v149);
      v127 = v152;
      v128 = v161;
      sub_10004B6E0();
      sub_10004AAE0();

      swift_unknownObjectRelease();
      (*(v153 + 8))(v127, v139);
      (*(v150 + 8))(v128, v151);
      (*(v123 + 8))(v125, v126);
      (*(v123 + 32))(v108, v124, v126);
      v129 = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
      *(v108 + v129[5]) = v138 & 1;
      *(v108 + v129[6]) = v134;
      *(v108 + v129[7]) = v137;
      *(v108 + v129[8]) = v136;
      (*(v154 + 32))(v108 + v129[9], v145, v140);
      sub_100012784(v157, v108 + v129[10], &qword_1000678E0, &unk_100052CC0);
      v130 = v108 + v129[11];
      *v130 = v7;
      *(v130 + 8) = v107;
      return (*(*(v129 - 1) + 56))(v108, 0, 1, v129);
    }

    v109 = [v141 userActivity];
    v108 = v135;
    if (!v109)
    {
      v7 = 0;
      v107 = -1;
      goto LABEL_97;
    }

    v110 = v109;
    (*(v163 + 104))(v156, enum case for REMApplicationIconFormat.reminderListiOS(_:), v133);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v112 = [Strong view];
      if (!v112)
      {
        goto LABEL_116;
      }

      v113 = v112;
      v114 = [v112 traitCollection];

      [v114 displayScale];
      swift_unknownObjectRelease();
    }

    v131 = v156;
    v7 = sub_10004C8B0();

    (*(v163 + 8))(v131, v133);
    if (!v7)
    {
      v107 = -1;
      goto LABEL_97;
    }

    v107 = 0;
    goto LABEL_96;
  }

  if (v78 == sub_10004CD50())
  {
    goto LABEL_77;
  }

LABEL_69:
  if (!v69)
  {
    if (v78 < *(v67 + 16))
    {
      v99 = v144[v78];
      goto LABEL_72;
    }

    __break(1u);
LABEL_113:

    __break(1u);
    goto LABEL_114;
  }

LABEL_111:
  v99 = sub_10004CC90();
LABEL_72:
  v70 = v99;
  v67 = v160;
  v100 = *(a1 + 688);
  objc_opt_self();
  v101 = swift_dynamicCastObjCClass();
  if (v101)
  {
    v102 = v101;

    v103 = swift_unknownObjectWeakLoadStrong();
    if (!v103)
    {
LABEL_83:
      sub_10000FCC0();
      sub_100003150(&qword_1000674B0, &qword_1000528A0);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_100052620;
      *(v115 + 32) = v102;
      v133 = v70;
      v116 = sub_10004B000();

      v117 = *(v116 + 16);
      if (v117)
      {
        a1 = 0;
        v7 = 0;
        v118 = v158;
        v164 = (v158 + 88);
        v165 = v158 + 16;
        LODWORD(v163) = enum case for TTRAttachmentThumbnailsManager.Result.thumbnail(_:);
        LODWORD(v156) = enum case for TTRAttachmentThumbnailsManager.Result.pending(_:);
        v144 = (v158 + 8);
        v60 = (v158 + 96);
        v107 = -1;
        LODWORD(v143) = enum case for TTRAttachmentThumbnailsManager.Result.error(_:);
        v119 = v159;
        while (a1 < *(v116 + 16))
        {
          (*(v118 + 16))(v67, v116 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * a1, v119);
          v120 = (*(v118 + 88))(v67, v119);
          if (v120 == v163)
          {
            sub_100012750(v7, v107);
            (*v60)(v67, v119);
            v7 = *v67;
          }

          else
          {
            if (v120 == v156)
            {
              (*v60)(v67, v119);
              v121 = *v67;

              sub_100009FF0(0, &qword_100067640, OS_dispatch_queue_ptr);
              v122 = sub_10004C980();
              swift_allocObject();
              swift_weakInit();
              sub_100003150(&qword_1000678F0, &qword_100052CD0);
              sub_10004C130();
              sub_100012750(v7, v107);
              v119 = v159;

              v118 = v158;

              v66 = v166;
              v67 = v160;
            }

            else
            {
              if (v120 != v143)
              {
                goto LABEL_117;
              }

              sub_100012750(v7, v107);
              (*v144)(v67, v119);
            }

            v7 = 0;
          }

          ++a1;
          v107 = 1;
          if (v117 == a1)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_107;
      }

      v7 = 0;
      v107 = -1;
LABEL_95:

      v108 = v135;
LABEL_96:

      goto LABEL_97;
    }

    v104 = [v103 view];
    if (v104)
    {
      v105 = v104;
      v106 = [v104 traitCollection];

      [v106 displayScale];
      swift_unknownObjectRelease();

      goto LABEL_83;
    }

    goto LABEL_115;
  }

LABEL_114:

  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  result = sub_10004CDC0();
  __break(1u);
  return result;
}

uint64_t sub_10000F030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a3;
  v43 = a6;
  v39 = a4;
  v40 = a1;
  v9 = v7;
  v41 = a2;
  v11 = sub_10004AD30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100003150(&qword_100067630, &qword_100052960);
  v18 = *(*(v17 - 8) + 64);
  v20 = __chkstk_darwin(v17 - 8, v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20, v23);
  v25 = &v38 - v24;
  v26 = *(v7 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v27 = *(v7 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  v28 = sub_10004BA60();
  if (v28)
  {
    v29 = v28;
    v30 = [v29 objectID];
    sub_10004ADA0();

    (*(v12 + 56))(v25, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v25, 1, 1, v11);
  }

  sub_10000A198(v25, v22, &qword_100067630, &qword_100052960);
  v31 = 1;
  if ((*(v12 + 48))(v22, 1, v11) != 1)
  {
    (*(v12 + 32))(v16, v22, v11);
    v32 = v9 + *v39;
    v34 = *v32;
    v33 = *(v32 + 8);
    v35 = sub_100012A64(&qword_1000678D0, type metadata accessor for TTRIExtensionCreateReminderPresenter);
    v34(v16, v9, v35, v40, v41, v42);
    (*(v12 + 8))(v16, v11);
    v31 = 0;
  }

  sub_10000A138(v25, &qword_100067630, &qword_100052960);
  v36 = sub_100003150(a5, v43);
  return (*(*(v36 - 8) + 56))(a7, v31, 1, v36);
}

uint64_t sub_10000F348()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_10004C050();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100066EF8 != -1)
  {
    swift_once();
  }

  v9 = sub_10004C1B0();
  sub_10000D49C(v9, qword_100067710);
  sub_100011BA4(&_swiftEmptyArrayStorage);
  sub_100014D1C();

  v10 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  v11 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_10004BAC0();

  sub_10004A660();
  v12 = sub_10004A630();
  sub_10004C080();
  sub_10004C070();
  v13 = sub_100003150(&unk_100067700, &qword_100052C90);
  v14 = &v8[v13[12]];
  v15 = v13[16];
  v16 = &v8[v13[20]];
  v17 = enum case for REMUserOperation.commitNewReminder(_:);
  v18 = sub_10004C040();
  (*(*(v18 - 8) + 104))(v8, v17, v18);
  *v14 = sub_10004A640();
  v14[1] = v19;
  sub_10004A650();
  v23 = sub_10004CE80();
  v24 = v20;
  v25._countAndFlagsBits = 0x69736E657478452DLL;
  v25._object = 0xEA00000000006E6FLL;
  sub_10004C6D0(v25);
  v21 = v24;
  *v16 = v23;
  v16[1] = v21;
  (*(v4 + 104))(v8, enum case for REMAnalyticsEvent.userOperation(_:), v3);
  sub_10004C060();

  return (*(v4 + 8))(v8, v3);
}

uint64_t sub_10000F65C(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      if (a2)
      {

        sub_100011DD8(a1, v6);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_10004C190();
        sub_10004C180();
        v7 = [v6 extensionContext];
        if (v7)
        {
          v8 = v7;
          [v7 completeRequestReturningItems:0 completionHandler:0];
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  return result;
}

void sub_10000F75C(void *a1, uint64_t a2, uint64_t a3, int a4, void (*a5)(void), uint64_t a6)
{
  v54 = a6;
  v55 = a2;
  v62 = a5;
  v61 = a4;
  v8 = sub_100003150(&qword_100067888, &unk_100053940);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v51 - v11;
  v13 = sub_10004C0E0();
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = *(v52 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003150(&qword_100067890, &qword_100052C70);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8, v20);
  v22 = &v51 - v21;
  v59 = sub_10004BE10();
  v57 = *(v59 - 8);
  v23 = *(v57 + 64);
  __chkstk_darwin(v59, v24);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_10004AC10();
  v27 = *(v56 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v56, v29);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_10004AB40();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  v38 = &v51 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v33 + 104);
  v40 = &enum case for TTRIReminderDetailStyle.sharingExtensionExtendedDetail(_:);
  if (!*(a3 + 48))
  {
    v40 = &enum case for TTRIReminderDetailStyle.sharingExtension(_:);
  }

  v41 = *v40;
  v58 = v36;
  v39(v38, v41);
  v42 = a1;
  sub_10004AC00();
  v60 = a3;
  v43 = *(a3 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  v44 = *(a3 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_10004BA90();
  if (v55 < 1)
  {
    v45 = 1;
  }

  else
  {
    (*(v52 + 104))(v17, enum case for REMRemindersListDataView.SectionLite.SectionType.sectionless(_:), v53);
    sub_10004A5B0();
    v45 = 0;
  }

  v46 = sub_10004A5C0();
  (*(*(v46 - 8) + 56))(v22, v45, 1, v46);
  sub_10004AD90();
  sub_100012A64(&qword_100067898, type metadata accessor for TTRIExtensionCreateReminderPresenter);
  v47 = sub_10004BCD0();
  (*(*(v47 - 8) + 56))(v12, 1, 1, v47);
  v48 = v60;
  v49 = sub_10004AD80();
  sub_10000A138(v12, &qword_100067888, &unk_100053940);
  sub_10000A138(v22, &qword_100067890, &qword_100052C70);
  (*(v57 + 8))(v26, v59);
  (*(v27 + 8))(v31, v56);
  swift_unknownObjectRelease();
  v50 = *sub_1000032DC((v48 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router), *(v48 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router + 24));
  sub_1000148FC(v49, v61 & 1);
  if (v62)
  {
    v62();

    (*(v33 + 8))(v38, v58);
  }

  else
  {
    (*(v33 + 8))(v38, v58);
  }
}

uint64_t sub_10000FCC0()
{
  v1 = v0;
  v2 = sub_10004B3A0();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v4);
  v7 = (v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager;
  if (*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager))
  {
    v9 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager);
  }

  else
  {
    *v7 = 0x4072C00000000000;
    (*(v5 + 104))(v7, enum case for TTRAttachmentThumbnailSizeProvider.ContentMode.scaleAspectFill(_:));
    v10 = sub_10004B3B0();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_10004B390();
    v23[8] = v10;
    v23[9] = &protocol witness table for TTRAttachmentThumbnailSizeProvider;
    v23[5] = v13;
    sub_100009FF0(0, &qword_100067640, OS_dispatch_queue_ptr);
    sub_10004C980();
    sub_10004C030();
    sub_10004C020();
    v14 = sub_10004AA90();
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    swift_allocObject();
    v17 = sub_10004AA80();
    v23[3] = v14;
    v23[4] = &protocol witness table for TTRThumbnailGenerator;
    v23[0] = v17;
    v18 = sub_10004B030();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v9 = sub_10004B010();
    v21 = *(v1 + v8);
    *(v1 + v8) = v9;
  }

  return v9;
}

uint64_t sub_10000FEB4@<X0>(BOOL *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v3 = result;
  if (result)
  {
    v4 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);
    v5._object = 0x800000010004E3D0;
    v5._countAndFlagsBits = 0xD000000000000011;
    sub_10004A6C0(v5);
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t sub_10000FF50()
{
  sub_100003414(v0 + 16);
  sub_100003414(v0 + 32);
  sub_10000A138(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_viewModel, &qword_1000676E8, &qword_1000529B0);
  v1 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  swift_unknownObjectRelease();
  sub_10000343C((v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router));

  v2 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter____lazy_storage___attachmentThumbnailsManager);

  v3 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);

  v4 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);

  v5 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_makeCellTitleModule + 8);

  v6 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_makeCellNotesModule + 8);

  v7 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties);

  return v0;
}

uint64_t sub_100010030()
{
  sub_10000FF50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRIExtensionCreateReminderPresenter()
{
  result = qword_100067798;
  if (!qword_100067798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000100DC()
{
  sub_1000101CC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1000101CC()
{
  if (!qword_1000677A8)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel(255);
    v0 = sub_10004CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_1000677A8);
    }
  }
}

void sub_100010224()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = [Strong extensionContext];
    if (v1)
    {
      v2 = v1;
      v3 = [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
      v4 = sub_100049DD0();

      [v2 cancelRequestWithError:v4];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_10001032C()
{
  v1 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);
  v2._object = 0x800000010004E3D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  sub_10004A6C0(v2);
}

uint64_t sub_100010370()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10004ABE0();
    sub_10001BA9C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000103E8()
{
  v1 = v0;
  v2 = *sub_1000032DC((v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router), *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router + 24));

  sub_1000149B4(sub_100011F2C, v1);
}

void *sub_100010458(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_100011DD8(a1, result);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1000104B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a3;
  v68 = a4;
  v69 = sub_10004B230();
  v67 = *(v69 - 8);
  v5 = *(v67 + 64);
  __chkstk_darwin(v69, v6);
  v66 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_1000678A8, &qword_100052C80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v70 = &v65 - v11;
  v12 = sub_10004BDB0();
  v71 = *(v12 - 8);
  v72 = v12;
  v13 = *(v71 + 64);
  __chkstk_darwin(v12, v14);
  v65 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100003150(&qword_1000678A0, &qword_100052C78);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v73 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v24 = &v65 - v23;
  __chkstk_darwin(v22, v25);
  v27 = &v65 - v26;
  v28 = sub_100003150(&qword_1000678B0, &qword_100052C88);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8, v30);
  v32 = &v65 - v31;
  v33 = sub_10004ABF0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33, v36);
  v38 = &v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a2;
  sub_10000A198(a2, v27, &qword_1000678A0, &qword_100052C78);
  v39 = sub_10004BDF0();
  v40 = *(v39 - 8);
  v76 = *(v40 + 48);
  if (v76(v27, 1, v39) == 1)
  {
    sub_10000A138(v27, &qword_1000678A0, &qword_100052C78);
    (*(v34 + 56))(v32, 1, 1, v33);
LABEL_4:
    sub_10000A138(v32, &qword_1000678B0, &qword_100052C88);
    goto LABEL_6;
  }

  sub_10004BDD0();
  (*(v40 + 8))(v27, v39);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    goto LABEL_4;
  }

  (*(v34 + 32))(v38, v32, v33);
  v42 = *(v75 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  v41 = *(v75 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_10004BAE0();
  (*(v34 + 8))(v38, v33);
LABEL_6:
  v43 = v71;
  v44 = v74;
  sub_10000A198(v74, v24, &qword_1000678A0, &qword_100052C78);
  v45 = v76(v24, 1, v39);
  v46 = v70;
  if (v45 == 1)
  {
    sub_10000A138(v24, &qword_1000678A0, &qword_100052C78);
    (*(v43 + 56))(v46, 1, 1, v72);
    v47 = v75;
LABEL_9:
    sub_10000A138(v46, &qword_1000678A8, &qword_100052C80);
    goto LABEL_11;
  }

  sub_10004BDE0();
  (*(v40 + 8))(v24, v39);
  v48 = v72;
  v49 = (*(v43 + 48))(v46, 1, v72);
  v47 = v75;
  if (v49 == 1)
  {
    goto LABEL_9;
  }

  v50 = *(v43 + 32);
  v71 = v40;
  v51 = v65;
  v50(v65, v46, v48);
  v53 = *(v47 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  v52 = *(v47 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  swift_getObjectType();
  sub_10004BAD0();
  v54 = v51;
  v40 = v71;
  (*(v43 + 8))(v54, v48);
LABEL_11:
  v55 = v73;
  sub_10000A198(v44, v73, &qword_1000678A0, &qword_100052C78);
  if (v76(v55, 1, v39) == 1)
  {
    sub_10000A138(v55, &qword_1000678A0, &qword_100052C78);
  }

  else
  {
    v56 = sub_10004BDC0();
    (*(v40 + 8))(v55, v39);
    if (v56)
    {
      goto LABEL_15;
    }
  }

  v57 = *(v47 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);
  v77._object = 0x800000010004E3D0;
  v77._countAndFlagsBits = 0xD000000000000011;
  sub_10004A6C0(v77);
LABEL_15:
  if (*(v47 + 48) == 1)
  {
LABEL_21:
    sub_10000F348();
    return;
  }

  v59 = v66;
  v58 = v67;
  v60 = v69;
  (*(v67 + 16))(v66, v68, v69);
  v61 = (*(v58 + 88))(v59, v60);
  if (v61 != enum case for TTRIViewControllerDismissalState.dismissedOrPopped(_:))
  {
    if (v61 != enum case for TTRIViewControllerDismissalState.requested(_:))
    {
      sub_10004CDC0();
      __break(1u);
      return;
    }

    goto LABEL_21;
  }

  v62 = *(*sub_1000032DC((v47 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router), *(v47 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_router + 24)) + 24);
  if (v62)
  {
    v63 = [v62 navigationController];
    if (v63)
    {
      v64 = v63;
    }
  }
}

void sub_100010C84()
{
  if (*(v0 + 48) == 1)
  {
    if (qword_100066EF8 != -1)
    {
      swift_once();
    }

    v1 = sub_10004C1B0();
    sub_10000D49C(v1, qword_100067710);
    sub_100011BA4(&_swiftEmptyArrayStorage);
    sub_100014D1C();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_100011DD8(0, Strong);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100010D80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004AB20();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_100010DF0@<X0>(uint64_t a1@<X8>)
{
  if (qword_100066EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C1B0();
  sub_10000D49C(v2, qword_100067710);
  v3 = sub_10004C1A0();
  v4 = sub_10004C890();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "TTRIExtensionCreateReminderPresenter.autoCompletReminderListScope(for:) should not be called", v5, 2u);
  }

  v6 = sub_10004B1B0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

uint64_t sub_100010FF4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10004AD30();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1000110A8(uint64_t a1, uint64_t a2)
{
  v19[1] = a2;
  v4 = sub_10004AD30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v11 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  result = sub_10004BA60();
  if (result)
  {
    v13 = result;
    sub_10004BA70();
    if (v21)
    {
      sub_100003674(&v20, v22);
      (*(v5 + 16))(v9, a1, v4);
      sub_10000DAC4(v22, &v20);
      v14 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_editingSessionSharedProperties);
      swift_allocObject();
      swift_weakInit();
      v15 = sub_10004B4B0();
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();

      v18 = sub_10004B4A0();
      sub_10000343C(v22);

      return v18;
    }

    else
    {

      sub_10000A138(&v20, &qword_100067900, &qword_100052CD8);
      return 0;
    }
  }

  return result;
}

void sub_1000112FC(id a1)
{
  if (qword_100066EF8 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C1B0();
  sub_10000D49C(v2, qword_100067710);
  v3 = a1;
  oslog = sub_10004C1A0();
  v4 = sub_10004C890();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    if (a1)
    {
      a1 = [v3 objectID];
    }

    sub_100003150(&qword_100067910, &qword_100052CE0);
    v7 = sub_10004CB80();
    v9 = v8;

    v10 = sub_100015238(v7, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, oslog, v4, "TTRIExtensionCreateReminderPresenter: setPendingMoveTargetList is called unexpectedly {listID: %s}", v5, 0xCu);
    sub_10000343C(v6);
  }

  else
  {
  }
}

uint64_t sub_1000114C4()
{
  v0 = sub_10004BCC0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004BCB0();
  sub_100012A64(&qword_100067908, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets);
  v6 = sub_10004CBB0();
  v7 = *(v1 + 8);
  v7(v5, v0);
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);
      v12._object = 0x800000010004E3D0;
      v12._countAndFlagsBits = 0xD000000000000011;
      sub_10004A6C0(v12);
    }
  }

  sub_10004BCA0();
  sub_10004CBB0();
  return (v7)(v5, v0);
}

unint64_t sub_100011688(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10004CE40();
  sub_10004C6C0();
  v6 = sub_10004CE70();

  return sub_100011828(a1, a2, v6);
}

unint64_t sub_100011700(void *a1)
{
  v3 = *(v1 + 40);
  sub_10004CE40();
  if (a1)
  {
    sub_10004CE50(1u);
    v4 = a1;
    sub_10004CA80();
  }

  else
  {
    sub_10004CE50(0);
  }

  v5 = sub_10004CE70();

  return sub_1000118E0(a1, v5);
}

unint64_t sub_100011790(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_10004AF20();
  sub_100012A64(&qword_100067928, &type metadata accessor for TTRRemindersListPostponeType);
  v5 = sub_10004C650();

  return sub_1000119E4(a1, v5);
}

unint64_t sub_100011828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_10004CDD0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000118E0(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      v9 = *(*(v6 + 48) + 8 * v5);
      if (v9)
      {
        if (a1)
        {
          sub_100009FF0(0, &qword_100067920, REMObjectID_ptr);
          v10 = v9;
          v11 = a1;
          v12 = sub_10004CA70();

          if (v12)
          {
            return v5;
          }
        }
      }

      else if (!a1)
      {
        return v5;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000119E4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_10004AF20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v10 = -1 << *(v2 + 32);
  v11 = a2 & ~v10;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v13 = v15;
    v16 = *(v14 + 56);
    do
    {
      v13(v9, *(v22 + 48) + v16 * v11, v4);
      sub_100012A64(&qword_100067930, &type metadata accessor for TTRRemindersListPostponeType);
      v17 = sub_10004C670();
      (*(v14 - 8))(v9, v4);
      if (v17)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v20 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_100011BA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003150(&qword_1000678C0, &qword_100052CA0);
    v3 = sub_10004CD80();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000A198(v4, &v13, &qword_1000678C8, &qword_100052CA8);
      v5 = v13;
      v6 = v14;
      result = sub_100011688(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D3D4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

unint64_t sub_100011CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003150(&qword_1000678B8, &qword_100052C98);
    v3 = sub_10004CD80();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100011688(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
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

void sub_100011DD8(void *a1, id a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = objc_opt_self();
    v5 = sub_100049DD0();
    v3 = [v4 errorSanitizedForXPCFromError:v5];
  }

  v6 = [a2 extensionContext];
  if (v6)
  {
    v7 = v6;
    if (!v3)
    {
      [objc_allocWithZone(NSError) initWithDomain:NSCocoaErrorDomain code:3072 userInfo:0];
    }

    swift_errorRetain();
    v8 = sub_100049DD0();

    [v7 cancelRequestWithError:v8];
  }

  else
  {
  }
}

void sub_100011F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = sub_10004B230();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v8 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100003150(&qword_1000678A0, &qword_100052C78);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8, v12);
  v14 = &v22 - v13;
  v15 = *(v3 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
  v16 = *(v3 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
  swift_getObjectType();
  sub_10004BAA0();
  sub_10000A198(v22, v14, &qword_1000678A0, &qword_100052C78);
  (*(v5 + 16))(v8, v23, v4);
  v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v5 + 80) + v18 + 8) & ~*(v5 + 80);
  v20 = swift_allocObject();
  sub_100012784(v14, v20 + v17, &qword_1000678A0, &qword_100052C78);
  *(v20 + v18) = v3;
  (*(v5 + 32))(v20 + v19, v8, v4);

  v21 = sub_10004C110();
  sub_10004C130();
}

uint64_t sub_1000121A4()
{
  v1 = *(sub_100003150(&qword_1000678A0, &qword_100052C78) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_10004B230();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_10004BDF0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = v2 | v7;
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + v7 + 8) & ~v7;
  v14 = *(v0 + v12);

  (*(v6 + 8))(v0 + v13, v5);

  return _swift_deallocObject(v0, v13 + v8, v11 | 7);
}

void sub_10001235C(uint64_t a1)
{
  v3 = *(sub_100003150(&qword_1000678A0, &qword_100052C78) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10004B230() - 8);
  sub_1000104B4(a1, v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

uint64_t sub_100012458()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001249C()
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v2 = *(ReminderViewModel - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(ReminderViewModel, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003150(&qword_1000676E8, &qword_1000529B0);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = &v18 - v14;
  sub_10000DCA8(&v18 - v14);
  v16 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000DB70(v15, v0 + v16);
  swift_endAccess();
  sub_10000A198(v0 + v16, v12, &qword_1000676E8, &qword_1000529B0);
  if ((*(v2 + 48))(v12, 1, ReminderViewModel) == 1)
  {
    return sub_10000A138(v12, &qword_1000676E8, &qword_1000529B0);
  }

  sub_100012690(v12, v6);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100019778(v6);
    swift_unknownObjectRelease();
  }

  return sub_1000126F4(v6);
}

uint64_t sub_100012690(uint64_t a1, uint64_t a2)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 32))(a2, a1, ReminderViewModel);
  return a2;
}

uint64_t sub_1000126F4(uint64_t a1)
{
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  (*(*(ReminderViewModel - 8) + 8))(a1, ReminderViewModel);
  return a1;
}

void sub_100012750(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_100012784(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003150(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000127EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100012840(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_100012894()
{
  if (qword_100066EF8 != -1)
  {
    swift_once();
  }

  v0 = sub_10004C1B0();
  sub_10000D49C(v0, qword_100067710);
  v1 = sub_10004C1A0();
  v2 = sub_10004C890();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "TTRIExtensionCreateReminderPresenter.shouldApplyListOfAutoCompleteSuggestion() should not be called", v3, 2u);
  }

  return 0;
}

unint64_t sub_100012978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003150(&qword_100067918, &qword_100052CE8);
    v3 = sub_10004CD80();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      result = sub_100011700(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_100012A64(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_100012AAC(void *a1, void *a2, int *a3)
{
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_10004AD30();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = a3[6];
    *(a1 + a3[5]) = *(a2 + a3[5]);
    v9 = *(a2 + v8);
    *(a1 + v8) = v9;
    v10 = a3[7];
    v11 = a3[8];
    v12 = *(a2 + v10);
    *(a1 + v10) = v12;
    *(a1 + v11) = *(a2 + v11);
    v13 = a3[9];
    v14 = sub_10004B6D0();
    v15 = *(*(v14 - 8) + 16);
    v16 = v9;
    v17 = v12;
    v15(a1 + v13, a2 + v13, v14);
    v18 = a3[10];
    v19 = (a1 + v18);
    v20 = (a2 + v18);
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v22 = *(ReminderView - 8);
    if ((*(v22 + 48))(v20, 1, ReminderView))
    {
      v23 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
      memcpy(v19, v20, *(*(v23 - 8) + 64));
    }

    else
    {
      v25 = *v20;
      *v19 = *v20;
      v26 = *(ReminderView + 20);
      v27 = sub_100049E00();
      v41 = *(*(v27 - 8) + 16);
      v28 = v25;
      v41(v19 + v26, v20 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v20 + v29);
      *(v19 + v29) = v30;
      v31 = *(v22 + 56);
      v32 = v30;
      v31(v19, 0, 1, ReminderView);
    }

    v33 = a3[11];
    v34 = a1 + v33;
    v35 = a2 + v33;
    v36 = v35[8];
    if (v36 == 255)
    {
      *v34 = *v35;
      v34[8] = v35[8];
    }

    else
    {
      v37 = *v35;
      v38 = v36 & 1;
      v39 = *v35;
      *v34 = v37;
      v34[8] = v38;
    }
  }

  return a1;
}

void sub_100012D84(uint64_t a1, int *a2)
{
  v4 = sub_10004AD30();
  (*(*(v4 - 8) + 8))(a1, v4);

  v5 = a2[9];
  v6 = sub_10004B6D0();
  (*(*(v6 - 8) + 8))(a1 + v5, v6);
  v7 = (a1 + a2[10]);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  if (!(*(*(ReminderView - 8) + 48))(v7, 1, ReminderView))
  {

    v9 = *(ReminderView + 20);
    v10 = sub_100049E00();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  v11 = a1 + a2[11];
  if (*(v11 + 8) != 255)
  {
    v12 = *v11;
  }
}

uint64_t sub_100012F20(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a2 + v7);
  *(a1 + v7) = v8;
  v9 = a3[7];
  v10 = a3[8];
  v11 = *(a2 + v9);
  *(a1 + v9) = v11;
  *(a1 + v10) = *(a2 + v10);
  v12 = a3[9];
  v13 = sub_10004B6D0();
  v14 = *(*(v13 - 8) + 16);
  v15 = v8;
  v16 = v11;
  v14(a1 + v12, a2 + v12, v13);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  if ((*(v21 + 48))(v19, 1, ReminderView))
  {
    v22 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
    memcpy(v18, v19, *(*(v22 - 8) + 64));
  }

  else
  {
    v23 = *v19;
    *v18 = *v19;
    v24 = *(ReminderView + 20);
    v25 = sub_100049E00();
    v39 = *(*(v25 - 8) + 16);
    v26 = v23;
    v39(v18 + v24, v19 + v24, v25);
    v27 = *(ReminderView + 24);
    v28 = *(v19 + v27);
    *(v18 + v27) = v28;
    v29 = *(v21 + 56);
    v30 = v28;
    v29(v18, 0, 1, ReminderView);
  }

  v31 = a3[11];
  v32 = a1 + v31;
  v33 = (a2 + v31);
  v34 = *(v33 + 8);
  if (v34 == 255)
  {
    *v32 = *v33;
    *(v32 + 8) = *(v33 + 8);
  }

  else
  {
    v35 = *v33;
    v36 = v34 & 1;
    v37 = *v33;
    *v32 = v35;
    *(v32 + 8) = v36;
  }

  return a1;
}

uint64_t sub_10001318C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v7 = a3[6];
  v8 = *(a2 + v7);
  v9 = *(a1 + v7);
  *(a1 + v7) = v8;
  v10 = v8;

  v11 = a3[7];
  v12 = *(a2 + v11);
  v13 = *(a1 + v11);
  *(a1 + v11) = v12;
  v14 = v12;

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v15 = a3[9];
  v16 = sub_10004B6D0();
  (*(*(v16 - 8) + 24))(a1 + v15, a2 + v15, v16);
  v17 = a3[10];
  v18 = (a1 + v17);
  v19 = (a2 + v17);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v21 = *(ReminderView - 8);
  v22 = *(v21 + 48);
  v23 = v22(v18, 1, ReminderView);
  v24 = v22(v19, 1, ReminderView);
  if (v23)
  {
    if (!v24)
    {
      v25 = *v19;
      *v18 = *v19;
      v26 = *(ReminderView + 20);
      v27 = sub_100049E00();
      v59 = *(*(v27 - 8) + 16);
      v28 = v25;
      v59(v18 + v26, v19 + v26, v27);
      v29 = *(ReminderView + 24);
      v30 = *(v19 + v29);
      *(v18 + v29) = v30;
      v31 = *(v21 + 56);
      v32 = v30;
      v31(v18, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v24)
  {
    sub_100013504(v18);
LABEL_6:
    v33 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
    memcpy(v18, v19, *(*(v33 - 8) + 64));
    goto LABEL_7;
  }

  v48 = *v19;
  v49 = *v18;
  *v18 = *v19;
  v50 = v48;

  v51 = *(ReminderView + 20);
  v52 = sub_100049E00();
  (*(*(v52 - 8) + 24))(v18 + v51, v19 + v51, v52);
  v53 = *(ReminderView + 24);
  v54 = *(v18 + v53);
  v55 = *(v19 + v53);
  *(v18 + v53) = v55;
  v56 = v55;

LABEL_7:
  v34 = a3[11];
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = *(a1 + v34 + 8);
  v38 = *(v36 + 8);
  if (v37 == 255)
  {
    if (v38 == 255)
    {
      v57 = *v36;
      *(v35 + 8) = *(v36 + 8);
      *v35 = v57;
    }

    else
    {
      v44 = *v36;
      v45 = v38 & 1;
      v46 = v44;
      *v35 = v44;
      *(v35 + 8) = v45;
    }
  }

  else if (v38 == 255)
  {
    sub_100013560(v35);
    v47 = *(v36 + 8);
    *v35 = *v36;
    *(v35 + 8) = v47;
  }

  else
  {
    v39 = *v36;
    v40 = v38 & 1;
    v41 = v39;
    v42 = *v35;
    v43 = *(v35 + 8);
    *v35 = v39;
    *(v35 + 8) = v40;
  }

  return a1;
}

uint64_t sub_100013504(uint64_t a1)
{
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  (*(*(ReminderView - 8) + 8))(a1, ReminderView);
  return a1;
}

uint64_t sub_100013560(uint64_t a1)
{
  v2 = *(a1 + 8);

  return a1;
}

uint64_t sub_100013590(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v7) = *(a2 + v7);
  v8 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v8) = *(a2 + v8);
  v9 = a3[9];
  v10 = sub_10004B6D0();
  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  v11 = a3[10];
  v12 = (a1 + v11);
  v13 = (a2 + v11);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v15 = *(ReminderView - 8);
  if ((*(v15 + 48))(v13, 1, ReminderView))
  {
    v16 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
    memcpy(v12, v13, *(*(v16 - 8) + 64));
  }

  else
  {
    *v12 = *v13;
    v17 = *(ReminderView + 20);
    v18 = sub_100049E00();
    (*(*(v18 - 8) + 32))(v12 + v17, v13 + v17, v18);
    *(v12 + *(ReminderView + 24)) = *(v13 + *(ReminderView + 24));
    (*(v15 + 56))(v12, 0, 1, ReminderView);
  }

  v19 = a3[11];
  v20 = a1 + v19;
  v21 = a2 + v19;
  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  return a1;
}

uint64_t sub_1000137A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  v9 = a3[7];
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  v11 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  v12 = sub_10004B6D0();
  (*(*(v12 - 8) + 40))(a1 + v11, a2 + v11, v12);
  v13 = a3[10];
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v17 = *(ReminderView - 8);
  v18 = *(v17 + 48);
  v19 = v18(v14, 1, ReminderView);
  v20 = v18(v15, 1, ReminderView);
  if (v19)
  {
    if (!v20)
    {
      *v14 = *v15;
      v21 = *(ReminderView + 20);
      v22 = sub_100049E00();
      (*(*(v22 - 8) + 32))(v14 + v21, v15 + v21, v22);
      *(v14 + *(ReminderView + 24)) = *(v15 + *(ReminderView + 24));
      (*(v17 + 56))(v14, 0, 1, ReminderView);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v20)
  {
    sub_100013504(v14);
LABEL_6:
    v23 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
    memcpy(v14, v15, *(*(v23 - 8) + 64));
    goto LABEL_7;
  }

  v30 = *v14;
  *v14 = *v15;

  v31 = *(ReminderView + 20);
  v32 = sub_100049E00();
  (*(*(v32 - 8) + 40))(v14 + v31, v15 + v31, v32);
  v33 = *(ReminderView + 24);
  v34 = *(v14 + v33);
  *(v14 + v33) = *(v15 + v33);

LABEL_7:
  v24 = a3[11];
  v25 = a1 + v24;
  v26 = a2 + v24;
  if (*(a1 + v24 + 8) == 255)
  {
LABEL_11:
    *v25 = *v26;
    *(v25 + 8) = *(v26 + 8);
    return a1;
  }

  v27 = *(v26 + 8);
  if (v27 == 255)
  {
    sub_100013560(v25);
    goto LABEL_11;
  }

  v28 = *v25;
  *v25 = *v26;
  *(v25 + 8) = v27 & 1;

  return a1;
}

uint64_t sub_100013AB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10004AD30();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_10004B6D0();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[9];
      goto LABEL_3;
    }

    v15 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[10];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_100013C4C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_10004AD30();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
    return result;
  }

  v13 = sub_10004B6D0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[9];
    goto LABEL_3;
  }

  v15 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[10];

  return v16(v17, a2, a2, v15);
}

void sub_100013DEC()
{
  v0 = sub_10004AD30();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_10004B6D0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_100013F14();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_100013F14()
{
  if (!qword_1000679A0)
  {
    type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(255);
    v0 = sub_10004CB90();
    if (!v1)
    {
      atomic_store(v0, &qword_1000679A0);
    }
  }
}

uint64_t _s25RemindersSharingExtension36TTRIExtensionCreateReminderViewModelV5ImageOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;

  return a1;
}

uint64_t assignWithTake for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for TTRIExtensionCreateReminderViewModel.Image(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

void **sub_100014108(void **a1, void **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v6 = a1;
    v7 = *(a3 + 20);
    v9 = sub_100049E00();
    v10 = *(*(v9 - 8) + 16);
    v11 = v4;
    v10(v6 + v7, a2 + v7, v9);
    v12 = *(a3 + 24);
    v13 = *(a2 + v12);
    *(v6 + v12) = v13;
    v14 = v13;
  }

  return v6;
}

void sub_1000141F4(id *a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_100049E00();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a1 + *(a2 + 24));
}

void **sub_10001427C(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = *a2;
  v7 = *(a3 + 20);
  v8 = sub_100049E00();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(a1 + v7, a2 + v7, v8);
  v11 = *(a3 + 24);
  v12 = *(a2 + v11);
  *(a1 + v11) = v12;
  v13 = v12;
  return a1;
}

void **sub_100014320(void **a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = sub_100049E00();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  *(a1 + v11) = v13;
  v14 = v13;

  return a1;
}

char *sub_1000143C0(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a3 + 20);
  v7 = sub_100049E00();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  *&a1[*(a3 + 24)] = *&a2[*(a3 + 24)];
  return a1;
}

void **sub_100014448(void **a1, void **a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = *(a3 + 20);
  v8 = sub_100049E00();
  (*(*(v8 - 8) + 40))(a1 + v7, a2 + v7, v8);
  v9 = *(a3 + 24);
  v10 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  return a1;
}

uint64_t sub_1000144F4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100049E00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000145B4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100049E00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100014658()
{
  result = sub_100049E00();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_10001471C(uint64_t *a1, uint64_t *a2)
{
  sub_100009FF0(0, &qword_100067490, NSObject_ptr);
  v4 = *a1;
  v5 = *a2;
  if (sub_10004CA70())
  {
    ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
    v7 = *(ReminderView + 20);
    if (sub_100049DE0())
    {
      v8 = *(ReminderView + 24);
      v9 = *(a1 + v8);
      v10 = *(a2 + v8);
      if (v9)
      {
        if (v10)
        {
          sub_100009FF0(0, &qword_100067498, LPLinkMetadata_ptr);
          v11 = v10;
          v12 = v9;
          v13 = sub_10004CA70();

          if (v13)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_1000147FC(void *a1, char a2, void *a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      sub_100009FF0(0, &qword_100067490, NSObject_ptr);
      return sub_10004CA70() & 1;
    }

    return 0;
  }

  if ((a4 & 1) == 0)
  {
    return 0;
  }

  if (!a1)
  {
    return !a3;
  }

  if (!a3)
  {
    return 0;
  }

  sub_100009FF0(0, &qword_1000674A0, UIImage_ptr);
  v6 = a3;
  v7 = a1;
  v8 = sub_10004CA70();

  result = 1;
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  return result;
}

void sub_1000148FC(void *a1, char a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [Strong navigationController];

    if (v6)
    {
      [v6 pushViewController:a1 animated:a2 & 1];

      v7 = *(v2 + 24);
      *(v2 + 24) = a1;

      v8 = a1;
    }
  }
}

void sub_1000149B4(uint64_t a1, uint64_t a2)
{
  sub_10004A9F0();
  v14._object = 0x800000010004E4B0;
  v15._countAndFlagsBits = 0xD00000000000002FLL;
  v15._object = 0x800000010004E4D0;
  v14._countAndFlagsBits = 0xD000000000000016;
  sub_10004A790(v14, v15);
  v4 = sub_10004C680();

  v5 = sub_10004C680();

  v6 = [objc_opt_self() alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  sub_10004AA30();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;

  v8 = sub_10004C680();

  v13[4] = sub_100014CDC;
  v13[5] = v7;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100014BD8;
  v13[3] = &unk_10005FAD8;
  v9 = _Block_copy(v13);

  v10 = [objc_opt_self() actionWithTitle:v8 style:0 handler:v9];
  _Block_release(v9);

  [v6 addAction:v10];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    [Strong presentViewController:v6 animated:1 completion:0];
  }
}

void sub_100014BD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100014C40()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_100014CA4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100014CDC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100014D04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100014D1C()
{
  sub_10004C000();
  sub_10004C170();
  sub_100003150(&qword_100067B28, &qword_100052E48);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000528D0;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  sub_10004CC80();
  v1 = sub_10004C680();

  *(inited + 48) = v1;
  sub_100011CD4(inited);
  swift_setDeallocating();
  sub_1000157E0(inited + 32);
  sub_10004C160();

  if (qword_100066F00 != -1)
  {
    swift_once();
  }

  v2 = sub_10004C1B0();
  sub_10000D49C(v2, qword_10006A2E0);

  v3 = sub_10004C1A0();
  v4 = sub_10004C8A0();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136446466;
    v6 = sub_10004CC80();
    v8 = sub_100015238(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_10004C630();
    v11 = sub_100015238(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s; UserInfo=%s", v5, 0x16u);
    swift_arrayDestroy();
  }
}

void sub_100014FC0(uint64_t a1, uint64_t a2, char a3)
{

  v5 = sub_10004C1A0();
  v6 = sub_10004C890();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v7 = 136446722;
    v8 = sub_10004CC80();
    v10 = sub_100015238(v8, v9, &v18);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    v11 = sub_10004C630();
    v13 = a3;
    v14 = sub_100015238(v11, v12, &v18);

    *(v7 + 14) = v14;
    *(v7 + 22) = 2082;
    v15 = sub_10004C630();
    v17 = sub_100015238(v15, v16, &v18);
    a3 = v13;

    *(v7 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s; UserInfo=%s; PublicUserInfo=%{public}s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a3)
  {
    goto LABEL_6;
  }

  if (a1)
  {
    rdi_os_crash();
LABEL_6:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000151C4(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v5 = sub_10004C1B0();
  sub_10000D51C(v5, a2);
  sub_10000D49C(v5, a2);
  v6 = [objc_opt_self() *a3];
  return sub_10004C1C0();
}

uint64_t sub_100015238(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100015304(v11, 0, 0, 1, a1, a2);
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
    sub_100015848(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000343C(v11);
  return v7;
}

unint64_t sub_100015304(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100015410(a5, a6);
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
    result = sub_10004CCA0();
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

char *sub_100015410(uint64_t a1, unint64_t a2)
{
  v4 = sub_10001545C(a1, a2);
  sub_10001558C(&off_10005F3A0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10001545C(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100015678(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004CCA0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10004C6E0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100015678(v10, 0);
        result = sub_10004CC60();
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

uint64_t sub_10001558C(uint64_t result)
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

  result = sub_1000156EC(result, v12, 1, v3);
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

void *sub_100015678(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_100003150(&qword_100067B38, &qword_100052E58);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000156EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003150(&qword_100067B38, &qword_100052E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_1000157E0(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067B30, &qword_100052E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015848(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

char *sub_1000158A8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver] = 0;
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TTRISECreateRemindersCollectionListCell();
  v9 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = sub_100003150(&qword_100067B70, &qword_100052E88);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v9;
  v14 = sub_10004A950();
  v15 = *&v13[OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver];
  *&v13[OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver] = v14;

  return v13;
}

uint64_t sub_1000159B8(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067B78, &qword_100052E90);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = sub_100003150(&unk_100067B80, qword_100052E98);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v16 - v11;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    if (*(result + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver))
    {
      v15 = *(result + OBJC_IVAR____TtC25RemindersSharingExtension39TTRISECreateRemindersCollectionListCell_viewModelObserver);

      sub_10004A910();

      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        return sub_100015F88(v6);
      }

      else
      {
        (*(v8 + 32))(v12, v6, v7);
        (*((swift_isaMask & *v14) + 0x70))(v12, a1);

        return (*(v8 + 8))(v12, v7);
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_100015E40()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRISECreateRemindersCollectionListCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100015EA8()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100015EE0()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = type metadata accessor for TTRISECreateRemindersCollectionListCell();
  return objc_msgSendSuper2(&v2, "invalidateIntrinsicContentSize");
}

uint64_t sub_100015F30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015F48()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100015F88(uint64_t a1)
{
  v2 = sub_100003150(&qword_100067B78, &qword_100052E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100015FF0()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100067B90);
  v1 = sub_10000D49C(v0, qword_100067B90);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1000160B8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension42TTRISECreateRemindersSuggestionLoadingCell_referenceTextViewWidth];
  *v10 = 0;
  v10[8] = 1;
  v11 = [objc_allocWithZone(UITextView) init];
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  [v13 setScrollEnabled:0];
  [v13 setEditable:0];
  [v13 setSelectable:0];
  [v13 setUserInteractionEnabled:0];
  [v13 setTextContainerInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v15 = [v13 textContainer];
  [v15 setLineFragmentPadding:0.0];

  v16 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  [v13 setFont:v16];

  LODWORD(v17) = 1144750080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v17];
  *&v4[OBJC_IVAR____TtC25RemindersSharingExtension42TTRISECreateRemindersSuggestionLoadingCell_textView] = v13;
  v33.receiver = v4;
  v33.super_class = ObjectType;
  v18 = v13;
  v19 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  sub_1000169EC();
  v20 = v19;
  sub_10004C990();
  v21 = [v20 contentView];
  type metadata accessor for ContentBoxView();
  v22 = swift_dynamicCastClass();
  if (!v22)
  {

    if (qword_100066F10 != -1)
    {
      swift_once();
    }

    v23 = sub_10004C1B0();
    sub_10000D49C(v23, qword_100067B90);
    v24 = sub_10004C1A0();
    v25 = sub_10004C890();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "TTRIRemindersListEditableSectionCell_collectionView: failed to create ContentBoxView", v26, 2u);
    }

    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v21 = v22;
  }

  v27 = v22;
  v28 = v21;
  v29 = v27;
  [v29 setDelegate:v20];
  [v29 setHorizontalAlignment:0];
  [v29 setVerticalAlignment:0];
  [v29 setPreservesSuperviewLayoutMargins:1];
  [v29 setLayoutMarginsRelativeArrangement:1];
  [v29 setDebugBoundingBoxesEnabled:0];

  sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100052620;
  *(v30 + 32) = v18;
  sub_100016A40();
  isa = sub_10004C710().super.isa;

  [v29 setArrangedSubviews:isa];

  return v20;
}

uint64_t sub_1000165FC(double a1, double a2, double a3)
{
  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_100016BB4();
    v5 = sub_10004C640();
  }

  else
  {
    v3 = fabs(a3);
    v4 = fabs(a1);
    if (v3 <= v4)
    {
      v3 = v4;
    }

    if (v3 <= 2.22507386e-308)
    {
      v3 = 2.22507386e-308;
    }

    v5 = vabdd_f64(a3, a1) < v3 * a2;
  }

  return v5 & 1;
}

unint64_t sub_1000168B0@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for ContentConfigurationForContentBoxView;
  result = sub_1000169EC();
  *(a1 + 32) = result;
  return result;
}

void (*sub_1000168E8(uint64_t *a1))(uint64_t **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 24) = &type metadata for ContentConfigurationForContentBoxView;
  *(v2 + 32) = sub_1000169EC();
  return sub_100016960;
}

void sub_100016960(uint64_t **a1)
{
  v1 = *a1;
  sub_10000343C(*a1);

  free(v1);
}

uint64_t sub_10001699C(uint64_t a1)
{
  sub_10000DAC4(a1, v2);
  sub_100003150(&qword_100067C68, &unk_100052F40);
  return swift_dynamicCast();
}

unint64_t sub_1000169EC()
{
  result = qword_100067C70;
  if (!qword_100067C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067C70);
  }

  return result;
}

unint64_t sub_100016A40()
{
  result = qword_1000674B8;
  if (!qword_1000674B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000674B8);
  }

  return result;
}

id sub_100016A8C()
{
  type metadata accessor for ContentBoxView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_100016C18();
  return v0;
}

uint64_t sub_100016AD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension42TTRISECreateRemindersSuggestionLoadingCell_textView);
  [v1 frame];
  Width = CGRectGetWidth(v7);
  v3 = v0 + OBJC_IVAR____TtC25RemindersSharingExtension42TTRISECreateRemindersSuggestionLoadingCell_referenceTextViewWidth;
  if ((*(v3 + 8) & 1) != 0 || (result = sub_1000165FC(*v3, 0.0000000149011612, Width), (result & 1) == 0))
  {
    *v3 = Width;
    *(v3 + 8) = 0;
    [v1 removeAnimatedTextPlaceholders];
    v5 = sub_10004C680();
    [v1 setText:v5];

    return [v1 insertAnimatedTextPlaceholder];
  }

  return result;
}

unint64_t sub_100016BB4()
{
  result = qword_100067C80;
  if (!qword_100067C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067C80);
  }

  return result;
}

unint64_t sub_100016C18()
{
  result = qword_100067C90;
  if (!qword_100067C90)
  {
    type metadata accessor for ContentBoxView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100067C90);
  }

  return result;
}

uint64_t sub_100016C70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a1;
  v32 = a2;
  v4 = sub_100003150(&qword_100067D10, &qword_100053088);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v31 - v8;
  v10 = sub_100003150(&qword_100067D18, &unk_100053090);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v14 = &v31 - v13;
  v15 = sub_100003150(&qword_100067D20, &unk_1000537A0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v31 - v18;
  v20 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModelUpdater];
  v33 = v3;
  result = sub_10004B150();
  if (result)
  {
    sub_10004B160();
    sub_10004AF60();
    (*(v5 + 8))(v9, v4);
    v28 = _s26ListPickerCellStateAndMenuVMa(0);
    if ((*(*(v28 - 8) + 48))(v14, 1, v28) == 1)
    {
      sub_10000A138(v14, &qword_100067D18, &unk_100053090);
      (*(v21 + 56))(v19, 1, 1, v20);
      v29 = v25 + *(v20 + 20);
      sub_10004AE00();
      *v25 = 0;
      v25[1] = 0xE000000000000000;
      if ((*(v21 + 48))(v19, 1, v20) != 1)
      {
        sub_10000A138(v19, &qword_100067D20, &unk_1000537A0);
      }
    }

    else
    {
      sub_100018A80(v14, v19);
      sub_100018AE4(v14, _s26ListPickerCellStateAndMenuVMa);
      (*(v21 + 56))(v19, 0, 1, v20);
      sub_100018B44(v19, v25);
    }

    result = sub_1000170CC(v25);
    v30 = v3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu];
    v3[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu] = 1;
    if ((v30 & 1) == 0)
    {
      return [v3 setNeedsUpdateConfiguration];
    }
  }

  return result;
}

uint64_t sub_10001700C@<X0>(uint64_t a1@<X8>)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1000245E4(a1);

    return swift_unknownObjectRelease();
  }

  else
  {
    v3 = _s26ListPickerCellStateAndMenuVMa(0);
    v4 = *(*(v3 - 8) + 56);

    return v4(a1, 1, 1, v3);
  }
}

uint64_t sub_1000170CC(uint64_t a1)
{
  v3 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6, v9);
  v11 = &v16[-v10];
  v12 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel;
  swift_beginAccess();
  sub_100018A80(v1 + v12, v11);
  swift_beginAccess();
  sub_100018BA8(a1, v1 + v12);
  swift_endAccess();
  sub_100018A80(v1 + v12, v8);
  v13 = *v8 == *v11 && v8[1] == v11[1];
  if (v13 || (sub_10004CDD0()) && (v14 = *(v3 + 20), (sub_10004ADF0()))
  {
    sub_100018AE4(a1, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
    a1 = v8;
  }

  else
  {
    sub_100018AE4(v8, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
    [v1 setNeedsUpdateConfiguration];
  }

  sub_100018AE4(a1, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
  return sub_100018AE4(v11, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
}

void sub_10001727C()
{
  v1 = v0;
  v2 = sub_10004AE10();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2, v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004C3D0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004C9B0();
  sub_100009FF0(0, &qword_1000674A8, UIFont_ptr);
  v12 = sub_10004CA00();
  sub_10004A9A0();
  sub_10004C3A0();
  v13 = v12;
  v14 = sub_10004C360();
  sub_10004C330();
  v14(v34, 0);
  v15 = (v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  sub_10004C310();
  v18 = v13;
  v19 = sub_10004C380();
  sub_10004C330();
  v19(v34, 0);
  v20 = [objc_opt_self() secondaryLabelColor];
  v21 = sub_10004C380();
  sub_10004C340();
  v21(v34, 0);
  sub_10004C300();
  sub_100017630();
  sub_10004C3B0();
  v34[3] = v6;
  v34[4] = &protocol witness table for UIListContentConfiguration;
  v22 = sub_10000B790(v34);
  (*(v7 + 16))(v22, v11, v6);
  sub_10004C990();
  sub_10001770C();
  if (*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews))
  {
    v23 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews + 8);
    v24 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
    v26 = v32;
    v25 = v33;
    v27 = v15 + *(v24 + 20);
    v28 = v31;
    (*(v32 + 16))(v31, v27, v33);
    v29 = v23;
    sub_10004A6A0();

    (*(v26 + 8))(v28, v25);
  }

  if (*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu) == 1)
  {
    *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu) = 0;
    sub_100017B20();

    (*(v7 + 8))(v11, v6);
  }

  else
  {
    (*(v7 + 8))(v11, v6);
  }
}

id sub_100017630()
{
  v1 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge);
  }

  else
  {
    v4 = v0;
    sub_100009FF0(0, &qword_1000674A0, UIImage_ptr);
    v5 = [objc_opt_self() clearColor];
    v6 = sub_10004CA50();

    v7 = [v6 imageWithRenderingMode:1];
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_10001770C()
{
  v1 = &v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews];
  if (!*&v0[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews])
  {
    v33 = [v0 contentView];
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2 && (v3 = [v2 imageLayoutGuide]) != 0)
    {
      v4 = v3;
      sub_10004A6B0();
      v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      sub_100003150(&qword_1000674B0, &qword_1000528A0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100052620;
      *(v6 + 32) = v5;
      v7 = objc_allocWithZone(sub_10004B0A0());
      sub_100009FF0(0, &qword_1000674B8, UIView_ptr);
      v8 = v5;
      isa = sub_10004C710().super.isa;

      v10 = [v7 initWithArrangedSubviews:isa];

      v11 = v10;
      [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      v12 = [v0 contentView];
      [v12 addSubview:v11];

      v13 = *v1;
      v14 = *(v1 + 1);
      *v1 = v11;
      *(v1 + 1) = v8;
      v15 = v8;
      v16 = v11;
      sub_100018A38(v13, v14);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_100052FB0;
      v18 = [v4 topAnchor];
      v19 = [v16 topAnchor];
      v20 = [v18 constraintEqualToAnchor:v19];

      *(v17 + 32) = v20;
      v21 = [v4 leadingAnchor];
      v22 = [v16 leadingAnchor];
      v23 = [v21 constraintEqualToAnchor:v22];

      *(v17 + 40) = v23;
      v24 = [v4 bottomAnchor];
      v25 = [v16 bottomAnchor];
      v26 = [v24 constraintEqualToAnchor:v25];

      *(v17 + 48) = v26;
      v27 = [v4 trailingAnchor];
      v28 = [v16 trailingAnchor];

      v29 = [v27 constraintEqualToAnchor:v28];
      *(v17 + 56) = v29;
      v30 = objc_opt_self();
      sub_100009FF0(0, &qword_100067D78, NSLayoutConstraint_ptr);
      v31 = sub_10004C710().super.isa;

      [v30 activateConstraints:v31];

      v32 = v31;
    }

    else
    {
      v32 = v33;
    }
  }
}

void sub_100017B20()
{
  v0 = sub_100003150(&qword_100067D58, &unk_1000530C0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v42 = v40 - v3;
  v4 = sub_10004C210();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  __chkstk_darwin(v4, v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_10004C1E0();
  v9 = *(v41 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v41, v11);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100003150(&qword_100067D10, &qword_100053088);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = v40 - v18;
  v20 = sub_100003150(&qword_100067D18, &unk_100053090);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8, v22);
  v24 = v40 - v23;
  sub_100009FF0(0, &qword_100067D60, UIMenu_ptr);
  sub_100003150(&qword_1000674B0, &qword_1000528A0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_100052620;
  sub_100009FF0(0, &qword_100067D68, UIAction_ptr);
  *(v25 + 32) = sub_10004CA90();
  v38 = v25;
  v26 = v40[1];
  v46._countAndFlagsBits = 0;
  v46._object = 0xE000000000000000;
  v47.value._countAndFlagsBits = 0;
  v47.value._object = 0;
  v45.value.super.isa = 0;
  v45.is_nil = 0;
  v27.value = 0;
  v28.super.super.isa = sub_10004CA10(v46, v47, v45, v27, 0xFFFFFFFFFFFFFFFFLL, v38, v39).super.super.isa;
  v29 = *(v26 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModelUpdater);
  sub_10004B160();
  sub_10004AF60();
  (*(v15 + 8))(v19, v14);
  v30 = _s26ListPickerCellStateAndMenuVMa(0);
  if ((*(*(v30 - 8) + 48))(v24, 1, v30) == 1)
  {
    sub_10000A138(v24, &qword_100067D18, &unk_100053090);
LABEL_4:
    v32 = v28.super.super.isa;
    goto LABEL_5;
  }

  v31 = *&v24[*(v30 + 20)];
  v32 = v31;
  sub_100018AE4(v24, _s26ListPickerCellStateAndMenuVMa);
  if (!v31)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_100003150(&qword_100067D70, &unk_1000530D0);
  v33 = *(sub_10004C2D0() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_1000528D0;
  v36 = v41;
  (*(v9 + 104))(v13, enum case for UICellAccessory.DisplayedState.always(_:), v41);
  v37 = sub_10004C1F0();
  (*(*(v37 - 8) + 56))(v42, 1, 1, v37);
  sub_10004C200();
  sub_10004C2C0();
  (*(v43 + 8))(v8, v44);
  (*(v9 + 8))(v13, v36);
  sub_10004C9A0();
}

uint64_t sub_100018214()
{
  sub_100003150(&qword_100067D30, &qword_1000530A8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100052FC0;
  v2 = (v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel);
  swift_beginAccess();
  v3 = v2[1];
  *(v1 + 32) = *v2;
  *(v1 + 40) = v3;
  v4 = v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews;
  if (*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews))
  {
    v5 = *(v4 + 8);

    v6 = [v5 accessibilityLabel];
    if (v6)
    {
      v7 = v6;
      v8 = sub_10004C690();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *(v1 + 48) = v8;
    *(v1 + 56) = v10;
    v11 = (v1 + 64);
    if (*v4)
    {
      v12 = [*(v4 + 8) accessibilityValue];
      if (v12)
      {
        v13 = v12;
        v14 = sub_10004C690();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      *v11 = v14;
      goto LABEL_12;
    }
  }

  else
  {
    *(v1 + 48) = 0;
    *(v1 + 56) = 0;
    v11 = (v1 + 64);
  }

  v16 = 0;
  *v11 = 0;
LABEL_12:
  *(v1 + 72) = v16;
  sub_100003150(&qword_100067D38, &qword_1000530B0);
  sub_100003364(&qword_100067D40, &qword_100067D38, &qword_1000530B0);
  v17 = sub_10004C6F0();

  v19 = 0;
  v20 = *(v17 + 16);
LABEL_13:
  v21 = (v17 + 40 + 16 * v19);
  while (1)
  {
    if (v20 == v19)
    {

      sub_10004A5E0();
      sub_100003150(&qword_100067D48, &qword_1000530B8);
      sub_100003364(&qword_100067D50, &qword_100067D48, &qword_1000530B8);
      v28 = sub_10004C660();

      return v28;
    }

    if (v19 >= *(v17 + 16))
    {
      break;
    }

    ++v19;
    v23 = *(v21 - 1);
    v22 = *v21;
    v21 += 2;
    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v23 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100031930(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        result = sub_100031930((v25 > 1), v26 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[2 * v26];
      *(v27 + 4) = v23;
      *(v27 + 5) = v22;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

id sub_100018548(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews];
  *v11 = 0;
  v11[1] = 0;
  *&v4[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_popupMenuButton] = 0;
  v12 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModelUpdater;
  v13 = sub_100003150(&qword_100067D28, &qword_1000530A0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v4[v12] = sub_10004B170();
  v16 = &v4[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel];
  v17 = v16 + *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  sub_10004AE00();
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v5[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu] = 0;
  *&v5[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge] = 0;
  v19.receiver = v5;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "initWithFrame:", a1, a2, a3, a4);
}

id sub_100018694(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v5 = &v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_popupMenuButton] = 0;
  v6 = OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModelUpdater;
  v7 = sub_100003150(&qword_100067D28, &qword_1000530A0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  *&v1[v6] = sub_10004B170();
  v10 = &v1[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel];
  v11 = v10 + *(type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0) + 20);
  sub_10004AE00();
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_needsUpdatePopupMenu] = 0;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge] = 0;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, "initWithCoder:", a1);

  if (v12)
  {
  }

  return v12;
}

void sub_1000187E0()
{
  sub_100003414(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_delegate);
  sub_100018A38(*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews), *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_badgeViews + 8));

  v1 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModelUpdater);

  sub_100018AE4(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell_viewModel, type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState);
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension35TTRISECreateRemindersListPickerCell____lazy_storage___placeholderImageForBadge);
}

uint64_t type metadata accessor for TTRISECreateRemindersListPickerCell()
{
  result = qword_100067D00;
  if (!qword_100067D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100018970()
{
  result = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(319);
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

void sub_100018A38(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100018A80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018AE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100018B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRSECreateRemindersViewModel.ListPickerCellState(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100018C0C()
{
  v0 = sub_10004C1B0();
  sub_10000D51C(v0, qword_100067D80);
  v1 = sub_10000D49C(v0, qword_100067D80);
  if (qword_100066F08 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D49C(v0, qword_10006A2F8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100018CD4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 0;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_tableDataController] = 0;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = 0;
  v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] = 0;
  v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 1;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell] = 0;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell] = 0;
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell] = 0;
  v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_detailViewHasBeenAutomaticallyShown] = 0;
  sub_10001C334(&qword_1000676D8, v5, type metadata accessor for TTRIExtensionCreateReminderViewController);
  sub_10004A7C0();
  *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter] = v8[1];
  v8[0].receiver = v2;
  v8[0].super_class = ObjectType;
  swift_unknownObjectRetain();
  v6 = [(objc_super *)v8 initWithCoder:a1];

  swift_unknownObjectRelease();
  if (v6)
  {
  }

  return v6;
}

void *sub_100018E74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100003150(&qword_1000676E8, &qword_1000529B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v28 - v6;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v9 = *(ReminderViewModel - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(ReminderViewModel, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29.receiver = v1;
  v29.super_class = ObjectType;
  objc_msgSendSuper2(&v29, "viewDidLoad");
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v15 = result;
  sub_10004C860();

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = result;
  sub_10004A5D0();
  v17 = sub_10004C680();

  [v16 setAccessibilityIdentifier:v17];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = result;
  [result setEditing:1];

  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v19 = result;
  [result setKeyboardDismissMode:3];

  sub_100019188();
  v20 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter];
  v21 = OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_viewModel;
  swift_beginAccess();
  sub_10000A198(v20 + v21, v7, &qword_1000676E8, &qword_1000529B0);
  if ((*(v9 + 48))(v7, 1, ReminderViewModel) == 1)
  {
    sub_10000A138(v7, &qword_1000676E8, &qword_1000529B0);
  }

  else
  {
    sub_10001C278(v7, v13, type metadata accessor for TTRIExtensionCreateReminderViewModel);
    sub_100019778(v13);
    sub_1000126F4(v13);
  }

  v22 = sub_10004B1F0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  v25 = sub_10004B1E0();
  v26 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver];
  *&v1[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver] = v25;

  v27 = *(v20 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_inCellEditingPresenterHelper);

  sub_10004B9F0();
}

void sub_100019188()
{
  v1 = sub_10004AB30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100003150(&qword_100067E80, &unk_100053278);
  v8 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7 - 8, v9);
  v12 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v13);
  v15 = v52 - v14;
  if (![v0 isViewLoaded])
  {
    return;
  }

  if (!*&v0[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_tableDataController])
  {
    v53 = v1;
    v54 = OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_tableDataController;
    v55 = v2;
    sub_100003150(&qword_1000674B0, &qword_1000528A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1000530E0;
    v21 = sub_10004AEB0();
    v22 = *(*(v21 - 8) + 56);
    v22(v15, 1, 1, v21);
    v22(v12, 1, 1, v21);
    v58 = sub_100003150(&qword_100067E88, &qword_100053288);
    v23 = swift_allocObject();
    v57 = xmmword_1000528D0;
    *(v23 + 16) = xmmword_1000528D0;
    v56 = v0;
    v24 = sub_10001A65C();
    v25 = sub_10001C2E0(&qword_100067E90, &qword_100067E68, &unk_100053268);
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    v26 = sub_10004A680();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    *(inited + 32) = sub_10004A670();
    v52[1] = inited + 32;
    v22(v15, 1, 1, v21);
    v22(v12, 1, 1, v21);
    v29 = swift_allocObject();
    *(v29 + 16) = v57;
    v30 = sub_10001A804();
    v31 = sub_10001C2E0(&qword_100067E98, &qword_100067E60, &qword_100053260);
    *(v29 + 32) = v30;
    *(v29 + 40) = v31;
    v32 = *(v26 + 48);
    v33 = *(v26 + 52);
    swift_allocObject();
    *(inited + 40) = sub_10004A670();
    v22(v15, 1, 1, v21);
    v22(v12, 1, 1, v21);
    v34 = swift_allocObject();
    *(v34 + 16) = v57;
    v35 = v56;
    v36 = sub_10001A95C();
    v37 = sub_10001C2E0(&qword_100067EA0, &qword_100067E28, &qword_100053230);
    *(v34 + 32) = v36;
    *(v34 + 40) = v37;
    v38 = *(v26 + 48);
    v39 = *(v26 + 52);
    swift_allocObject();
    v40 = inited;
    *(inited + 48) = sub_10004A670();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = Strong;
      v60 = sub_10001C22C();
      v61 = &protocol witness table for UITableView;
      v59 = v42;
      sub_10001AE4C(inited);
      (*(v55 + 104))(v6, enum case for TTRTableViewAnimations.middle(_:), v53);
      v43 = objc_allocWithZone(sub_10004AB90());
      v44 = sub_10004AB80();
      sub_10004AB60();
      v45 = *&v35[v54];
      *&v35[v54] = v44;
      v46 = v44;

      v47 = swift_unknownObjectWeakLoadStrong();
      if (v47)
      {
        v48 = v47;
        [v47 setDataSource:v46];

        v49 = swift_unknownObjectWeakLoadStrong();
        if (v49)
        {
          v50 = v49;
          swift_setDeallocating();
          v51 = *(v40 + 16);
          swift_arrayDestroy();
          [v50 setDelegate:v46];

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_100066F18 != -1)
  {
    swift_once();
  }

  v16 = sub_10004C1B0();
  sub_10000D49C(v16, qword_100067D80);
  v58 = sub_10004C1A0();
  v17 = sub_10004C890();
  if (os_log_type_enabled(v58, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v58, v17, "buildSections is called more than once", v18, 2u);
  }

  v19 = v58;
}

id sub_100019778(char *a1)
{
  v2 = v1;
  v79 = a1;
  v3 = sub_10004BE60();
  v80 = *(v3 - 8);
  v4 = *(v80 + 64);
  __chkstk_darwin(v3, v5);
  v7 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100067E30, &qword_100053238);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v76 - v11;
  v13 = sub_10004AB70();
  v78 = *(v13 - 8);
  v14 = *(v78 + 64);
  __chkstk_darwin(v13, v15);
  v17 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003150(&qword_100067468, &qword_100053240);
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18 - 8, v20);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v24);
  v26 = &v76 - v25;
  v27 = sub_100003150(&qword_100067E38, &qword_100053248);
  v28 = *(*(v27 - 8) + 64);
  v30 = __chkstk_darwin(v27 - 8, v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30, v33);
  v35 = &v76 - v34;
  result = [v2 isViewLoaded];
  if (result)
  {
    v76 = v7;
    v77 = v3;
    sub_10001A65C();
    v37 = sub_10004A530();

    sub_10004AE60();

    v38 = sub_100003150(&qword_1000678D8, &qword_100053250);
    v39 = (*(*(v38 - 8) + 48))(v35, 1, v38);
    sub_10000A138(v35, &qword_100067E38, &qword_100053248);
    if (v39 == 1)
    {
      v40 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell];

      v41 = sub_10004A530();

      v42 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter];
      v44 = sub_10001C334(&qword_100067E40, v43, type metadata accessor for TTRIExtensionCreateReminderViewController);
      sub_10000EFF8(v2, v44, v2, v32);
      sub_10004AE70();
    }

    sub_10001A804();
    v45 = sub_10004A530();

    v46 = qword_10006A2B0;
    swift_beginAccess();
    sub_10000A198(v45 + v46, v26, &qword_100067468, &qword_100053240);

    v47 = sub_100003150(&unk_100067238, &unk_100052CB0);
    LODWORD(v45) = (*(*(v47 - 8) + 48))(v26, 1, v47);
    sub_10000A138(v26, &qword_100067468, &qword_100053240);
    if (v45 == 1)
    {
      v48 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell];

      v49 = sub_10004A530();

      v50 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter];
      v52 = sub_10001C334(&qword_100067E48, v51, type metadata accessor for TTRIExtensionCreateReminderViewController);
      sub_10000F014(v2, v52, v2, v23);
      sub_100004568(v23);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v53 = result;
    ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
    v55 = v79;
    [v53 setEnabled:v79[*(ReminderViewModel + 20)]];

    v56 = v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_isFirstUpdate];
    v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_isFirstUpdate] = 0;
    v57 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_tableDataController];
    if (v57)
    {
      *v17 = v56 ^ 1;
      v58 = v78;
      v59 = (*(v78 + 104))(v17, enum case for TTRITableDataController.BatchUpdatesApplication.incremental(_:), v13);
      __chkstk_darwin(v59, v60);
      *(&v76 - 2) = v2;
      *(&v76 - 1) = v55;
      v61 = v57;
      sub_10004AB50();

      (*(v58 + 8))(v17, v13);
    }

    v62 = *&v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter];
    v63 = *(v62 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
    v64 = *(v62 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
    swift_getObjectType();
    sub_10004BA80();
    v65 = v80;
    v66 = v77;
    if ((*(v80 + 48))(v12, 1, v77) == 1)
    {
      return sub_10000A138(v12, &qword_100067E30, &qword_100053238);
    }

    v67 = v76;
    sub_10004BE50();
    sub_10001C334(&qword_100067E50, 255, &type metadata accessor for TTRExtensionCreateReminderInteractorRequestedActions);
    v68 = sub_10004CBB0();
    v69 = *(v65 + 8);
    v69(v67, v66);
    result = (v69)(v12, v66);
    if (v68)
    {
      v70 = OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected;
      if ((v2[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_generatedSuggestionTextHasBeenSelected] & 1) == 0 && (*(v62 + 48) & 1) == 0)
      {
        v71 = swift_allocObject();
        swift_unknownObjectWeakInit();

        v72 = [v2 transitionCoordinator];
        if (v72)
        {
          v73 = v72;
          if ([v72 isAnimated])
          {

            v74 = swift_allocObject();
            *(v74 + 16) = sub_10001C1BC;
            *(v74 + 24) = v71;
            aBlock[4] = sub_100014CDC;
            aBlock[5] = v74;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_10001BA3C;
            aBlock[3] = &unk_10005FCA0;
            v75 = _Block_copy(aBlock);

            [v73 animateAlongsideTransition:v75 completion:0];

            _Block_release(v75);
            result = swift_unknownObjectRelease();
LABEL_19:
            v2[v70] = 1;
            return result;
          }

          swift_unknownObjectRelease();
        }

        sub_10001B974();

        goto LABEL_19;
      }
    }
  }

  return result;
}

uint64_t sub_10001A038(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "viewWillAppear:", a1 & 1);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v6[3] = sub_10001C22C();
    v6[4] = &protocol witness table for UITableView;
    v6[0] = v4;
    sub_10004C940();
    sub_10000343C(v6);
    sub_10001C334(&qword_100067E70, v5, type metadata accessor for TTRIExtensionCreateReminderViewController);
    result = sub_10004A8F0();
    if (*&v1[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_currentTextInputModeObserver])
    {

      sub_10004B1D0();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A258()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v9, "viewWillLayoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) == 1)
  {
    *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout) = 0;
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10001C214;
    *(v4 + 24) = v3;
    v8[4] = sub_10000A118;
    v8[5] = v4;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_10003415C;
    v8[3] = &unk_10005FD18;
    v5 = _Block_copy(v8);
    v6 = v0;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10001A65C()
{
  v1 = v0;
  v2 = sub_100003150(&qword_100067E58, &qword_100053258);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell;
  if (*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell))
  {
    v8 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___titleCell);
  }

  else
  {
    v17._countAndFlagsBits = 0x656C746954;
    v18._countAndFlagsBits = 0xD00000000000002CLL;
    v18._object = 0x800000010004EBB0;
    v17._object = 0xE500000000000000;
    sub_10004A790(v17, v18);
    v9 = sub_10004B380();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    v10 = objc_allocWithZone(sub_10004AEA0());
    sub_10004AE50();
    v11 = sub_100003150(&qword_100067E68, &unk_100053268);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = sub_10004A540();
    v14 = *(v1 + v7);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_10001A804()
{
  v1 = v0;
  v2 = sub_100003150(&qword_100067460, &unk_100052880);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v16 - v5;
  v7 = OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell;
  if (*(v1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell))
  {
    v8 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___notesCell);
  }

  else
  {
    ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
    (*(*(ReminderNotesCellContentState - 8) + 56))(v6, 1, 1, ReminderNotesCellContentState);
    v10 = objc_allocWithZone(type metadata accessor for TTRIExtensionCreateReminderNotesCellContent(0));
    sub_100004760(0xD00000000000001CLL, 0x800000010004EB90, v6);
    v11 = sub_100003150(&qword_100067E60, &qword_100053260);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v8 = sub_10004A540();
    v14 = *(v1 + v7);
    *(v1 + v7) = v8;
  }

  return v8;
}

uint64_t sub_10001A95C()
{
  v1 = OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell;
  if (*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell);
  }

  else
  {
    v2 = sub_10001A9C4();
    v3 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10001A9C4()
{
  v0 = sub_10004A800();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003150(&qword_100067E20, &qword_100053228);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v22 - v9;
  v11 = sub_10004A820();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v14 = sub_10004B130();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v23._countAndFlagsBits = 0x736C6961746544;
  v25._object = 0x800000010004EB00;
  v23._object = 0xE700000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004A790(v23, v25);
  v24._countAndFlagsBits = 0x7265646E696D6552;
  v26._countAndFlagsBits = 0xD000000000000028;
  v26._object = 0x800000010004EB20;
  v24._object = 0xE900000000000073;
  sub_10004A790(v24, v26);
  (*(v1 + 104))(v5, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v0);
  sub_10004A810();
  v15 = objc_allocWithZone(sub_10004B110());
  v16 = sub_10004B100();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v16;

  sub_10004AAD0();

  v18 = sub_100003150(&qword_100067E28, &qword_100053230);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  return sub_10004A540();
}

void sub_10001ACE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10004C930();
    [v1 resignFirstResponder];
    v2 = *&v1[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter];
    v3 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor);
    v4 = *(v2 + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_interactor + 8);
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_10004BAB0();
    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    *(v5 + 24) = 1;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_10001C134;
    *(v6 + 24) = v5;
    swift_unknownObjectRetain();
    v7 = sub_10004C110();
    sub_10004C130();

    swift_unknownObjectRelease();
  }
}

void *sub_10001AE4C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_10004CD50();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100031950(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = 0;
      do
      {
        v5 = sub_10004CC90();
        v7 = _swiftEmptyArrayStorage[2];
        v6 = _swiftEmptyArrayStorage[3];
        if (v7 >= v6 >> 1)
        {
          v9 = v5;
          sub_100031950((v6 > 1), v7 + 1, 1);
          v5 = v9;
        }

        ++v4;
        _swiftEmptyArrayStorage[2] = v7 + 1;
        v8 = &_swiftEmptyArrayStorage[2 * v7];
        v8[4] = v5;
        v8[5] = &protocol witness table for TTRITableSection;
      }

      while (v2 != v4);
    }

    else
    {
      v10 = (a1 + 32);
      v11 = _swiftEmptyArrayStorage[2];
      v12 = 2 * v11;
      do
      {
        v13 = *v10;
        v14 = _swiftEmptyArrayStorage[3];

        if (v11 >= v14 >> 1)
        {
          sub_100031950((v14 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v15 = &_swiftEmptyArrayStorage[v12];
        v15[4] = v13;
        v15[5] = &protocol witness table for TTRITableSection;
        v12 += 2;
        ++v10;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return _swiftEmptyArrayStorage;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001AFE4(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = sub_100003150(&qword_100067460, &unk_100052880);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v72 = &v62 - v6;
  v7 = sub_100003150(&qword_1000678E0, &unk_100052CC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v65 = &v62 - v10;
  ReminderView = type metadata accessor for TTRIExtensionCreateReminderViewModel.Link(0);
  v63 = *(ReminderView - 8);
  v64 = ReminderView;
  v12 = *(v63 + 64);
  __chkstk_darwin(ReminderView, v13);
  v62 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100003150(&qword_100067308, &unk_100052770);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v62 - v18;
  v20 = sub_10004B6D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20, v23);
  v25 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10004AD30();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26, v29);
  v31 = &v62 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_100003150(&qword_100067E58, &qword_100053258);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8, v34);
  v36 = &v62 - v35;
  v75 = a1;
  sub_10001A65C();
  v37 = sub_10004A530();

  v38 = *(v27 + 16);
  v39 = v66;
  v70 = v27 + 16;
  v71 = v26;
  v69 = v38;
  v38(v31, v66, v26);
  v40 = v39;
  ReminderViewModel = type metadata accessor for TTRIExtensionCreateReminderViewModel(0);
  v42 = *(v40 + ReminderViewModel[6]);
  v43 = *(v21 + 16);
  v67 = ReminderViewModel[9];
  v68 = v43;
  v73 = v21 + 16;
  v74 = v20;
  v43(v25, v40 + v67, v20);
  v44 = v42;
  sub_10004B370();
  v45 = sub_10004B380();
  (*(*(v45 - 8) + 56))(v36, 0, 1, v45);
  sub_10004A890();

  ReminderNotesCellContent = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState.Attachment(0);
  v47 = *(*(ReminderNotesCellContent - 8) + 56);
  v47(v19, 1, 1, ReminderNotesCellContent);
  v48 = v40 + ReminderViewModel[11];
  v49 = *(v48 + 8);
  if (v49 != 255)
  {
    v50 = *v48;
    v51 = v49 & 1;
    v52 = *v48;
    sub_10000A138(v19, &qword_100067308, &unk_100052770);
    *v19 = v50;
    v19[8] = v51;
LABEL_6:
    swift_storeEnumTagMultiPayload();
    v47(v19, 0, 1, ReminderNotesCellContent);
    goto LABEL_7;
  }

  v53 = v62;
  v54 = v65;
  sub_10000A198(v40 + ReminderViewModel[10], v65, &qword_1000678E0, &unk_100052CC0);
  if ((*(v63 + 48))(v54, 1, v64) != 1)
  {
    sub_10000A138(v19, &qword_100067308, &unk_100052770);
    sub_10001C278(v54, v53, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    sub_10001C278(v53, v19, type metadata accessor for TTRIExtensionCreateReminderViewModel.Link);
    goto LABEL_6;
  }

  sub_10000A138(v54, &qword_1000678E0, &unk_100052CC0);
LABEL_7:
  sub_10001A804();
  v55 = sub_10004A530();

  v56 = v72;
  v69(v72, v40, v71);
  v57 = *(v40 + ReminderViewModel[7]);
  v58 = *(v40 + ReminderViewModel[8]);
  ReminderNotesCellContentState = type metadata accessor for TTRIExtensionCreateReminderNotesCellContentState(0);
  v68(&v56[ReminderNotesCellContentState[7]], v40 + v67, v74);
  sub_10000A198(v19, &v56[ReminderNotesCellContentState[8]], &qword_100067308, &unk_100052770);
  *&v56[ReminderNotesCellContentState[5]] = v57;
  v56[ReminderNotesCellContentState[6]] = v58;
  (*(*(ReminderNotesCellContentState - 1) + 56))(v56, 0, 1, ReminderNotesCellContentState);
  v60 = v57;
  sub_10004A890();

  return sub_10000A138(v19, &qword_100067308, &unk_100052770);
}

void sub_10001B640()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong performBatchUpdates:0 completion:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001B7A0()
{
  v0 = sub_100003150(&qword_1000678D8, &qword_100053250);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0, v3);
  v5 = &v13 - v4;
  v6 = sub_100003150(&qword_100067E38, &qword_100053248);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v13 - v9;
  sub_10001A65C();
  v11 = sub_10004A530();

  sub_10004AE60();

  if ((*(v1 + 48))(v10, 1, v0))
  {
    sub_10000A138(v10, &qword_100067E38, &qword_100053248);
    return 0;
  }

  else
  {
    (*(v1 + 16))(v5, v10, v0);
    sub_10000A138(v10, &qword_100067E38, &qword_100053248);
    sub_10004AF00();
    (*(v1 + 8))(v5, v0);
    return v13;
  }
}

void sub_10001B974()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_10001A65C();

    v2 = sub_10004A530();

    sub_10004AE80();
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    sub_10001A65C();

    v5 = sub_10004A530();

    sub_10004AE90();
  }
}

uint64_t sub_10001BA3C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_10001BA9C()
{
  v1 = v0;
  v2 = sub_10004A800();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100003150(&qword_100067E20, &qword_100053228);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8, v10);
  v12 = &v25 - v11;
  v13 = sub_10004A820();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v16 = *(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_tableDataController);
  v26 = v2;
  if (!v16)
  {
    if (qword_100066F18 != -1)
    {
      swift_once();
    }

    v17 = sub_10004C1B0();
    sub_10000D49C(v17, qword_100067D80);
    v18 = sub_10004C1A0();
    v19 = sub_10004C890();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "buildSections hasn't been called when update(listName:)", v20, 2u);
    }
  }

  sub_10001A95C();
  v21 = sub_10004A530();

  v22 = sub_10004B130();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v27._countAndFlagsBits = 0x736C6961746544;
  v28._object = 0x800000010004EB00;
  v27._object = 0xE700000000000000;
  v28._countAndFlagsBits = 0xD00000000000001ELL;
  sub_10004A790(v27, v28);
  (*(v3 + 104))(v7, enum case for TTRIDetailCellState.CheckmarkState.notSupported(_:), v26);

  sub_10004A810();
  sub_10004A890();

  v23 = *(v1 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController____lazy_storage___detailsCell);

  sub_10004A520(0);
}

uint64_t sub_10001BE1C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001BE48(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return TTRKeyboardAvoidance<>.shouldAvoidKeyboard.getter(ObjectType, a2);
}

uint64_t sub_10001BE84()
{
  swift_getObjectType();

  return sub_10004A8F0();
}

uint64_t sub_10001BEC0()
{
  swift_getObjectType();

  return sub_10004A8E0();
}

uint64_t sub_10001BEFC(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillShow(duration:)(ObjectType, a3, v6);
}

uint64_t sub_10001BF48(double a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6.n128_f64[0] = a1;

  return TTRKeyboardAvoidance<>.keyboardWillHide(duration:)(ObjectType, a3, v6);
}

uint64_t sub_10001BF94(double a1, double a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return TTRKeyboardAvoidance<>.setKeyboardAvoidanceBottomInset(_:duration:)(ObjectType, a4, v8, v9);
}

void sub_10001BFF0()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_presenter) + OBJC_IVAR____TtC25RemindersSharingExtension36TTRIExtensionCreateReminderPresenter_deferredAction);
  v2._object = 0x800000010004E3D0;
  v2._countAndFlagsBits = 0xD000000000000011;
  sub_10004A6C0(v2);
}

void sub_10001C044()
{
  v0[OBJC_IVAR____TtC25RemindersSharingExtension41TTRIExtensionCreateReminderViewController_needToUpdateCellSizesOnLayout] = 1;
  v1 = [v0 viewIfLoaded];
  [v1 setNeedsLayout];
}

uint64_t sub_10001C0AC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001C0EC()
{
  v1 = v0[2];

  if (v0[4])
  {
    v2 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001C144()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001C17C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_10001C1C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001C1DC()
{

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_10001C22C()
{
  result = qword_100067E78;
  if (!qword_100067E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100067E78);
  }

  return result;
}

uint64_t sub_10001C278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001C2E0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003198(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10001C334(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}