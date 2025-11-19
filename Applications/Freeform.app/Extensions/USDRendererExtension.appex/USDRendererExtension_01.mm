uint64_t sub_10002D228(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30[1] = a6;
  v14 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v14 - 8);
  v16 = v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  v18 = &a3[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_surfaceRenderer];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v30[0] = a8;
    v21 = a7;
    v22 = *(v18 + 1);
    v23 = sub_10008AD08();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    sub_10008ACE8();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v24 = a3;
    sub_10002AC70(a1, a2);

    v25 = sub_10008ACD8();
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = &protocol witness table for MainActor;
    v26[4] = v20;
    v26[5] = v22;
    v26[6] = v24;
    v26[7] = a1;
    v26[8] = a2;
    v26[9] = v21;
    v26[10] = v17;
    sub_10004BA04(0, 0, v16, v30[0], v26);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v28 = xmmword_1000A5430;
    _Block_copy(a4);
    v29 = sub_100089BD8();
    (a4)[2](a4, 0, v29);
  }
}

uint64_t sub_10002D494(uint64_t a1, unint64_t a2, char *a3, void (**a4)(void, void, void))
{
  v8 = sub_10002A958(&qword_1000D6780);
  __chkstk_darwin(v8 - 8);
  v10 = &v23 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  v12 = &a3[OBJC_IVAR____TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy_compressor];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = *(v12 + 1);
    v16 = sub_10008AD08();
    (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
    sub_10008ACE8();
    _Block_copy(a4);
    swift_unknownObjectRetain();
    v17 = a3;
    sub_10002AC70(a1, a2);

    v18 = sub_10008ACD8();
    v19 = swift_allocObject();
    v19[2] = v18;
    v19[3] = &protocol witness table for MainActor;
    v19[4] = v14;
    v19[5] = v15;
    v19[6] = v17;
    v19[7] = a1;
    v19[8] = a2;
    v19[9] = sub_10002D70C;
    v19[10] = v11;
    sub_10004BA04(0, 0, v10, &unk_1000A57E8, v19);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10002D714();
    swift_allocError();
    *v21 = xmmword_1000A5430;
    _Block_copy(a4);
    v22 = sub_100089BD8();
    (a4)[2](a4, 0, v22);
  }
}

unint64_t sub_10002D714()
{
  result = qword_1000D6790;
  if (!qword_1000D6790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6790);
  }

  return result;
}

uint64_t sub_10002D76C(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100023864(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10002D860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D8C4(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100022D78(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10002D9B8()
{
  result = qword_1000D67A8;
  if (!qword_1000D67A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D67A8);
  }

  return result;
}

uint64_t sub_10002DA60(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100022560(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10002DB5C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10002DBAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10002F13C;

  return sub_100021E0C(v8, a1, v4, v5, v6, v7, v9, v10);
}

unint64_t sub_10002DC98()
{
  result = qword_1000D67B0;
  if (!qword_1000D67B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D67B0);
  }

  return result;
}

uint64_t sub_10002DCEC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100021838(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10002DDE0()
{
  result = qword_1000D67B8;
  if (!qword_1000D67B8)
  {
    sub_10002AD9C(&qword_1000D6700);
    sub_10002DE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D67B8);
  }

  return result;
}

unint64_t sub_10002DE64()
{
  result = qword_1000D67C0;
  if (!qword_1000D67C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D67C0);
  }

  return result;
}

uint64_t sub_10002DEB8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100027728;

  return sub_100021278(a1, v12, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_10002DFAC()
{
  result = qword_1000D67C8;
  if (!qword_1000D67C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D67C8);
  }

  return result;
}

uint64_t sub_10002E000()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_10002AC1C(*(v0 + 56), *(v0 + 64));

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_10002E058(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_100020B9C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10002E14C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E1B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_10002A958(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002E21C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10002A958(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10002E27C()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10002E2C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F13C;

  return sub_1000207F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10002E40C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10002E424(uint64_t a1, unsigned int a2)
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

uint64_t sub_10002E478(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_10002E4D8(void *result, int a2)
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

__n128 sub_10002E508(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002E514(uint64_t a1, int a2)
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

uint64_t sub_10002E534(uint64_t result, int a2, int a3)
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

unint64_t sub_10002E578()
{
  result = qword_1000D6800;
  if (!qword_1000D6800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6800);
  }

  return result;
}

void *sub_10002E7C4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10002E808()
{
  result = qword_1000D6860;
  if (!qword_1000D6860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6860);
  }

  return result;
}

uint64_t sub_10002E85C(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_10002E8A8()
{
  result = qword_1000D6870;
  if (!qword_1000D6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6870);
  }

  return result;
}

unint64_t sub_10002E8FC()
{
  result = qword_1000D6878;
  if (!qword_1000D6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6878);
  }

  return result;
}

unint64_t sub_10002E950()
{
  result = qword_1000D6880;
  if (!qword_1000D6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6880);
  }

  return result;
}

uint64_t sub_10002E9A4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t getEnumTagSinglePayload for CRLUSDRendererExtensionShared.ExtensionError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRLUSDRendererExtensionShared.ExtensionError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CRLUSDRendererExtensionShared.ExtensionError.ForegroundAssertionCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CRLUSDRendererExtensionShared.ExtensionError.ForegroundAssertionCodingKeys(_WORD *result, int a2, int a3)
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

__n128 sub_10002EC50(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10002EC64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002EC84(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

void sub_10002ECE8(uint64_t a1, unint64_t *a2)
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

unint64_t sub_10002ED38()
{
  result = qword_1000D68C8;
  if (!qword_1000D68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68C8);
  }

  return result;
}

unint64_t sub_10002ED90()
{
  result = qword_1000D68D0;
  if (!qword_1000D68D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68D0);
  }

  return result;
}

unint64_t sub_10002EDE8()
{
  result = qword_1000D68D8;
  if (!qword_1000D68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68D8);
  }

  return result;
}

unint64_t sub_10002EE40()
{
  result = qword_1000D68E0;
  if (!qword_1000D68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68E0);
  }

  return result;
}

unint64_t sub_10002EE98()
{
  result = qword_1000D68E8;
  if (!qword_1000D68E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68E8);
  }

  return result;
}

unint64_t sub_10002EEF0()
{
  result = qword_1000D68F0;
  if (!qword_1000D68F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68F0);
  }

  return result;
}

unint64_t sub_10002EF48()
{
  result = qword_1000D68F8;
  if (!qword_1000D68F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D68F8);
  }

  return result;
}

unint64_t sub_10002EFA0()
{
  result = qword_1000D6900;
  if (!qword_1000D6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6900);
  }

  return result;
}

unint64_t sub_10002EFF8()
{
  result = qword_1000D6908;
  if (!qword_1000D6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6908);
  }

  return result;
}

unint64_t sub_10002F050()
{
  result = qword_1000D6910;
  if (!qword_1000D6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6910);
  }

  return result;
}

uint64_t sub_10002F1B0()
{

  return swift_deallocClassInstance();
}

void *sub_10002F214()
{
  result = sub_100041694(_swiftEmptyArrayStorage);
  off_1000D6BB0 = result;
  return result;
}

char *sub_10002F23C(void *a1, void *a2, id a3)
{
  v6 = [a3 computeCommandEncoder];
  if (!v6)
  {
    sub_10002F788();
    swift_allocError();
    *v8 = xmmword_1000A6210;
    *(v8 + 16) = 2;
    return swift_willThrow();
  }

  v7 = v6;
  if (*(v3 + 32) == 1)
  {
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
  }

  else
  {
    v10 = [a1 newTextureViewWithPixelFormat:80];
    if (!v10)
    {
      v23 = [a1 description];
      v24 = sub_10008AB38();
      v26 = v25;

      sub_10002F788();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v11 = v10;
    v12 = [a2 newTextureViewWithPixelFormat:80];
    if (!v12)
    {
      v28 = [a2 description];
      v29 = sub_10008AB38();
      v31 = v30;

      sub_10002F788();
      swift_allocError();
      *v32 = v29;
      *(v32 + 8) = v31;
      *(v32 + 16) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    a2 = v12;
    a1 = v11;
  }

  v13 = *(v3 + 24);
  [v7 setComputePipelineState:v13];
  [v7 setTexture:a1 atIndex:0];
  [v7 setTexture:a2 atIndex:1];
  v14 = [v13 threadExecutionWidth];
  result = [v13 maxTotalThreadsPerThreadgroup];
  if (!v14)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = result;
  if (result == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_30;
  }

  v16 = [a2 width];
  result = [a2 height];
  v17 = &v16[v14];
  if (__OFADD__(v16, v14))
  {
    goto LABEL_25;
  }

  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_31;
  }

  v20 = v15 / v14;
  v21 = &result[v15 / v14];
  if (__OFADD__(result, v15 / v14))
  {
    goto LABEL_27;
  }

  v18 = __OFSUB__(v21, 1);
  v22 = v21 - 1;
  if (v18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!v20)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v22 != 0x8000000000000000 || v20 != -1)
  {
    v34[0] = v19 / v14;
    v34[1] = v22 / v20;
    v34[2] = 1;
    v33[0] = v14;
    v33[1] = v15 / v14;
    v33[2] = 1;
    [v7 dispatchThreadgroups:v34 threadsPerThreadgroup:v33];
    [v7 endEncoding];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10002F590(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    sub_10008AEB8(43);

    v7 = 0xD000000000000028;
    swift_getErrorValue();
    v9._countAndFlagsBits = sub_10008B208();
    sub_10008ABB8(v9);

    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_10008AEB8(46);

    v7 = 0xD00000000000002BLL;
    v8._countAndFlagsBits = a1;
    v8._object = a2;
    sub_10008ABB8(v8);
LABEL_5:
    v10._countAndFlagsBits = 46;
    v10._object = 0xE100000000000000;
    sub_10008ABB8(v10);
    return v7;
  }

  if (a1 ^ 1 | a2)
  {
    v6 = 0xD00000000000002CLL;
  }

  else
  {
    v6 = 0xD000000000000029;
  }

  if (a1 | a2)
  {
    return v6;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_10002F724()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_10002F788()
{
  result = qword_1000D6C68;
  if (!qword_1000D6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D6C68);
  }

  return result;
}

uint64_t sub_10002F7DC(void *a1)
{
  v2 = [a1 newDefaultLibrary];
  if (v2)
  {
    v3 = v2;
    MTLPixelFormatGetInfoForDevice();
    v4 = v21;
    v5 = sub_10008AB08();
    v6 = [v3 newFunctionWithName:v5];

    if (v6)
    {
      v20 = 0;
      v7 = [a1 newComputePipelineStateWithFunction:v6 error:&v20];
      if (v7)
      {
        v8 = v7;
        v9 = v20;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        _s16TextureResamplerCMa();
        v10 = swift_allocObject();
        *(v10 + 16) = a1;
        *(v10 + 24) = v8;
        *(v10 + 32) = (v4 & 2) != 0;
        swift_unknownObjectRetain();
      }

      else
      {
        v15 = v20;
        v16 = sub_100089BE8();

        swift_willThrow();
        sub_10002F788();
        v17 = swift_allocError();
        *v18 = v16;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        v10 = v17;
        swift_willThrow();
        swift_errorRetain();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_10002F788();
      v13 = swift_allocError();
      *v14 = xmmword_1000A6220;
      *(v14 + 16) = 2;
      v10 = v13;
      swift_willThrow();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_10002F788();
    v11 = swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    v10 = v11;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_10002FA14(void *a1)
{
  if (qword_1000D5FF8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1000D6BB0;
  if (*(off_1000D6BB0 + 2) && (v5 = sub_10003FA64(a1), (v6 & 1) != 0))
  {
    v2 = *(v4[7] + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7 = sub_10002F7DC(a1);
    if (!v1)
    {
      v2 = v7;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = off_1000D6BB0;
      off_1000D6BB0 = 0x8000000000000000;
      sub_100066DD4(v2, a1, isUniquelyReferenced_nonNull_native);
      off_1000D6BB0 = v10;
      swift_endAccess();
    }
  }

  return v2;
}

uint64_t sub_10002FB54(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_10002FB70(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_10002FB84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10002FBCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_10002FC10(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t *OS_os_log.crlThreeDimensionalObjects.unsafeMutableAddressor()
{
  if (qword_1000D6128 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlThreeDimensionalObjects;
}

void sub_10002FC8C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLDefaultCat_log_t, &CRLDefaultCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDefault = v1;
}

uint64_t *OS_os_log.crlDefault.unsafeMutableAddressor()
{
  if (qword_1000D6000 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDefault;
}

void sub_10002FDC0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAssertCat_log_t, &CRLAssertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssert = v1;
}

uint64_t *OS_os_log.crlAssert.unsafeMutableAddressor()
{
  if (qword_1000D6008 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssert;
}

void sub_10002FEF0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLErrorCat_log_t, &CRLErrorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlError = v1;
}

uint64_t *OS_os_log.crlError.unsafeMutableAddressor()
{
  if (qword_1000D6010 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlError;
}

void sub_100030020()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLWarningCat_log_t, &CRLWarningCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlWarning = v1;
}

uint64_t *OS_os_log.crlWarning.unsafeMutableAddressor()
{
  if (qword_1000D6018 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlWarning;
}

void sub_100030154()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAlertCat_log_t, &CRLAlertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAlert = v1;
}

uint64_t *OS_os_log.crlAlert.unsafeMutableAddressor()
{
  if (qword_1000D6020 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAlert;
}

void sub_100030284()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLPerformanceCat_log_t, &CRLPerformanceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPerformance = v1;
}

uint64_t *OS_os_log.crlPerformance.unsafeMutableAddressor()
{
  if (qword_1000D6028 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPerformance;
}

void sub_1000303B0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLStatusHUDCat_log_t, &CRLStatusHUDCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStatusHUD = v1;
}

uint64_t *OS_os_log.crlStatusHUD.unsafeMutableAddressor()
{
  if (qword_1000D6030 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStatusHUD;
}

void sub_1000304E4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLTextInputCat_log_t, &CRLTextInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTextInput = v1;
}

uint64_t *OS_os_log.crlTextInput.unsafeMutableAddressor()
{
  if (qword_1000D6038 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTextInput;
}

void sub_100030618()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLTraceableResourceCat_log_t, &CRLTraceableResourceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTraceableResource = v1;
}

uint64_t *OS_os_log.crlTraceableResource.unsafeMutableAddressor()
{
  if (qword_1000D6040 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTraceableResource;
}

void sub_100030744()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLStorageHierachyCat_log_t, &CRLStorageHierachyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStorageHierachy = v1;
}

uint64_t *OS_os_log.crlStorageHierachy.unsafeMutableAddressor()
{
  if (qword_1000D6048 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStorageHierachy;
}

void sub_100030870()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSerializableObjectCat_log_t, &CRLSerializableObjectCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSerializableObject = v1;
}

uint64_t *OS_os_log.crlSerializableObject.unsafeMutableAddressor()
{
  if (qword_1000D6050 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSerializableObject;
}

void sub_10003099C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaborationParticipantCat_log_t, &CRLCollaborationParticipantCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaborationParticipant = v1;
}

uint64_t *OS_os_log.crlCollaborationParticipant.unsafeMutableAddressor()
{
  if (qword_1000D6058 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaborationParticipant;
}

void sub_100030AC8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSpotlightCat_log_t, &CRLSpotlightCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSpotlight = v1;
}

uint64_t *OS_os_log.crlSpotlight.unsafeMutableAddressor()
{
  if (qword_1000D6060 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSpotlight;
}

void sub_100030BFC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLNetworkReachabilityCat_log_t, &CRLNetworkReachabilityCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlNetworkReachability = v1;
}

uint64_t *OS_os_log.crlNetworkReachability.unsafeMutableAddressor()
{
  if (qword_1000D6068 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlNetworkReachability;
}

void sub_100030D28()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetDownloadManagerCat_log_t, &CRLAssetDownloadManagerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssetDownloadManager = v1;
}

uint64_t *OS_os_log.crlAssetDownloadManager.unsafeMutableAddressor()
{
  if (qword_1000D6070 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssetDownloadManager;
}

void sub_100030E54()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAnalyticsCat_log_t, &CRLAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnalytics = v1;
}

uint64_t *OS_os_log.crlAnalytics.unsafeMutableAddressor()
{
  if (qword_1000D6078 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnalytics;
}

void sub_100030F88()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAppAnalyticsCat_log_t, &CRLAppAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAppAnalytics = v1;
}

uint64_t *OS_os_log.crlAppAnalytics.unsafeMutableAddressor()
{
  if (qword_1000D6080 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAppAnalytics;
}

uint64_t (*static OS_os_log.crlAppAnalytics.modify())()
{
  if (qword_1000D6080 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_100031160()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardCat_log_t, &CRLKeyboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlKeyboard = v1;
}

uint64_t *OS_os_log.crlKeyboard.unsafeMutableAddressor()
{
  if (qword_1000D6088 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlKeyboard;
}

void sub_100031294()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLFolderUICat_log_t, &CRLFolderUICat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

uint64_t *OS_os_log.crlFolderUI.unsafeMutableAddressor()
{
  if (qword_1000D6090 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFolderUI;
}

void sub_1000313C8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardLibraryCat_log_t, &CRLBoardLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardLibrary = v1;
}

uint64_t *OS_os_log.crlBoardLibrary.unsafeMutableAddressor()
{
  if (qword_1000D6098 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardLibrary;
}

void sub_1000314F4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardPreviewImageCacheCat_log_t, &CRLBoardPreviewImageCacheCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardPreviewImageCache = v1;
}

uint64_t *OS_os_log.crlBoardPreviewImageCache.unsafeMutableAddressor()
{
  if (qword_1000D60A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardPreviewImageCache;
}

void sub_100031620()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLDragAndDropCat_log_t, &CRLDragAndDropCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDragAndDrop = v1;
}

uint64_t *OS_os_log.crlDragAndDrop.unsafeMutableAddressor()
{
  if (qword_1000D60A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDragAndDrop;
}

void sub_10003174C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSharingExtensionCat_log_t, &CRLSharingExtensionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSharingExtension = v1;
}

uint64_t *OS_os_log.crlSharingExtension.unsafeMutableAddressor()
{
  if (qword_1000D60B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSharingExtension;
}

void sub_100031878()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLStencilLibraryCat_log_t, &CRLStencilLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStencilLibrary = v1;
}

uint64_t *OS_os_log.crlStencilLibrary.unsafeMutableAddressor()
{
  if (qword_1000D60B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStencilLibrary;
}

void sub_1000319A4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeMessageTransferCat_log_t, &CRLCarmelRealTimeMessageTransferCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlRealTimeMessageTransfer = v1;
}

uint64_t *OS_os_log.crlRealTimeMessageTransfer.unsafeMutableAddressor()
{
  if (qword_1000D60C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlRealTimeMessageTransfer;
}

void sub_100031AD0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLZoneRefetchCat_log_t, &CRLZoneRefetchCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

uint64_t *OS_os_log.crlZoneRefetch.unsafeMutableAddressor()
{
  if (qword_1000D60C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlZoneRefetch;
}

void sub_100031BFC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSendACopyCat_log_t, &CRLSendACopyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSendACopy = v1;
}

uint64_t *OS_os_log.crlSendACopy.unsafeMutableAddressor()
{
  if (qword_1000D60D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSendACopy;
}

void sub_100031D30()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudKitEnvironmentCat_log_t, &CRLCloudKitEnvironmentCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudKitEnvironment = v1;
}

uint64_t *OS_os_log.crlCloudKitEnvironment.unsafeMutableAddressor()
{
  if (qword_1000D60D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudKitEnvironment;
}

void sub_100031E5C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSidebarCat_log_t, &CRLSidebarCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSidebar = v1;
}

uint64_t *OS_os_log.crlSidebar.unsafeMutableAddressor()
{
  if (qword_1000D60E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSidebar;
}

void sub_100031F90()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLInsertMediaCat_log_t, &CRLInsertMediaCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInsertMedia = v1;
}

uint64_t *OS_os_log.crlInsertMedia.unsafeMutableAddressor()
{
  if (qword_1000D60E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInsertMedia;
}

void sub_1000320BC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaboratorCursorCat_log_t, &CRLCollaboratorCursorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaboratorCursor = v1;
}

uint64_t *OS_os_log.crlCollaboratorCursor.unsafeMutableAddressor()
{
  if (qword_1000D60F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaboratorCursor;
}

void sub_1000321E8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLStateRestorationCat_log_t, &CRLStateRestorationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStateRestoration = v1;
}

uint64_t *OS_os_log.crlStateRestoration.unsafeMutableAddressor()
{
  if (qword_1000D60F8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStateRestoration;
}

void sub_100032314()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLFollowCat_log_t, &CRLFollowCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFollow = v1;
}

uint64_t *OS_os_log.crlFollow.unsafeMutableAddressor()
{
  if (qword_1000D6100 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFollow;
}

void sub_100032444()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLJoinLeaveCat_log_t, &CRLJoinLeaveCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlJoinLeave = v1;
}

uint64_t *OS_os_log.crlJoinLeave.unsafeMutableAddressor()
{
  if (qword_1000D6108 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlJoinLeave;
}

void sub_100032578()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLPencilHoverCat_log_t, &CRLPencilHoverCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPencilHover = v1;
}

uint64_t *OS_os_log.crlPencilHover.unsafeMutableAddressor()
{
  if (qword_1000D6110 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPencilHover;
}

void sub_1000326A4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLScenesCat_log_t, &CRLScenesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlScenes = v1;
}

uint64_t *OS_os_log.crlScenes.unsafeMutableAddressor()
{
  if (qword_1000D6118 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlScenes;
}

void sub_1000327D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLTablesCat_log_t, &CRLTablesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTables = v1;
}

uint64_t *OS_os_log.crlTables.unsafeMutableAddressor()
{
  if (qword_1000D6120 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTables;
}

void sub_10003290C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLThreeDimensionalObjectsCat_log_t, &CRLThreeDimensionalObjectsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlThreeDimensionalObjects = v1;
}

void sub_1000329E8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLChangeShapeCat_log_t, &CRLChangeShapeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlChangeShape = v1;
}

uint64_t *OS_os_log.crlChangeShape.unsafeMutableAddressor()
{
  if (qword_1000D6130 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlChangeShape;
}

void sub_100032B14()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudQuotaMessagingCat_log_t, &CRLCloudQuotaMessagingCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudQuotaMessaging = v1;
}

uint64_t *OS_os_log.crlCloudQuotaMessaging.unsafeMutableAddressor()
{
  if (qword_1000D6138 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudQuotaMessaging;
}

void sub_100032C40()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRL3DBreakthroughCat_log_t, &CRL3DBreakthroughCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crl3DBreakthrough = v1;
}

uint64_t *OS_os_log.crl3DBreakthrough.unsafeMutableAddressor()
{
  if (qword_1000D6140 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crl3DBreakthrough;
}

void sub_100032D6C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLObjectTransformCat_log_t, &CRLObjectTransformCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlObjectTransform = v1;
}

uint64_t *OS_os_log.crlObjectTransform.unsafeMutableAddressor()
{
  if (qword_1000D6148 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlObjectTransform;
}

void sub_100032E98()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLLayerAnimationCat_log_t, &CRLLayerAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlLayerAnimation = v1;
}

uint64_t *OS_os_log.crlLayerAnimation.unsafeMutableAddressor()
{
  if (qword_1000D6150 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlLayerAnimation;
}

void sub_100032FC4()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAnimationImplCat_log_t, &CRLAnimationImplCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnimationImpl = v1;
}

uint64_t *OS_os_log.crlAnimationImpl.unsafeMutableAddressor()
{
  if (qword_1000D6158 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnimationImpl;
}

void sub_1000330F0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLMiniFormatterCat_log_t, &CRLMiniFormatterCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlMiniFormatter = v1;
}

uint64_t *OS_os_log.crlMiniFormatter.unsafeMutableAddressor()
{
  if (qword_1000D6160 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlMiniFormatter;
}

void sub_10003321C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSceneManagementCat_log_t, &CRLSceneManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t *OS_os_log.sceneManagement.unsafeMutableAddressor()
{
  if (qword_1000D6168 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sceneManagement;
}

void sub_100033350()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCompositionCat_log_t, &CRLCompositionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.composition = v1;
}

uint64_t *OS_os_log.composition.unsafeMutableAddressor()
{
  if (qword_1000D6170 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.composition;
}

void sub_100033480()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLViewControllerCat_log_t, &CRLViewControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.CRLViewController = v1;
}

uint64_t *OS_os_log.CRLViewController.unsafeMutableAddressor()
{
  if (qword_1000D6178 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.CRLViewController;
}

void sub_1000335AC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAppIntentsCat_log_t, &CRLAppIntentsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appIntents = v1;
}

uint64_t *OS_os_log.appIntents.unsafeMutableAddressor()
{
  if (qword_1000D6180 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appIntents;
}

void sub_1000336D8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAppStateCat_log_t, &CRLAppStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appState = v1;
}

uint64_t *OS_os_log.appState.unsafeMutableAddressor()
{
  if (qword_1000D6188 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appState;
}

void sub_100033800()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLInteractionCat_log_t, &CRLInteractionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.interaction = v1;
}

uint64_t *OS_os_log.interaction.unsafeMutableAddressor()
{
  if (qword_1000D6190 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.interaction;
}

void sub_100033930()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLContentStateCat_log_t, &CRLContentStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.contentState = v1;
}

uint64_t *OS_os_log.contentState.unsafeMutableAddressor()
{
  if (qword_1000D6198 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.contentState;
}

void sub_100033A60()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardDataStoreCat_log_t, &CRLBoardDataStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardStore = v1;
}

uint64_t *OS_os_log.boardStore.unsafeMutableAddressor()
{
  if (qword_1000D61A0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardStore;
}

void sub_100033B8C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLFileProviderStoreCat_log_t, &CRLFileProviderStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.fileProviderStore = v1;
}

uint64_t *OS_os_log.fileProviderStore.unsafeMutableAddressor()
{
  if (qword_1000D61A8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.fileProviderStore;
}

void sub_100033CB8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLPersistenceCat_log_t, &CRLPersistenceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.persistence = v1;
}

uint64_t *OS_os_log.persistence.unsafeMutableAddressor()
{
  if (qword_1000D61B0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.persistence;
}

void sub_100033DE8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLDataSyncCat_log_t, &CRLDataSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t *OS_os_log.dataSync.unsafeMutableAddressor()
{
  if (qword_1000D61B8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataSync;
}

void sub_100033F10()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCommandControllerCat_log_t, &CRLCommandControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.commandController = v1;
}

uint64_t *OS_os_log.commandController.unsafeMutableAddressor()
{
  if (qword_1000D61C0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.commandController;
}

void sub_10003403C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSuspendResumeCollaborationCat_log_t, &CRLSuspendResumeCollaborationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.suspendResumeCollaboration = v1;
}

uint64_t *OS_os_log.suspendResumeCollaboration.unsafeMutableAddressor()
{
  if (qword_1000D61C8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.suspendResumeCollaboration;
}

void sub_100034168()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeSyncCat_log_t, &CRLCarmelRealTimeSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.realTimeSync = v1;
}

uint64_t *OS_os_log.realTimeSync.unsafeMutableAddressor()
{
  if (qword_1000D61D0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.realTimeSync;
}

void sub_100034294()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardInputCat_log_t, &CRLKeyboardInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.keyboardInput = v1;
}

uint64_t *OS_os_log.keyboardInput.unsafeMutableAddressor()
{
  if (qword_1000D61D8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardInput;
}

void sub_1000343C8()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLTargetGestureCat_log_t, &CRLTargetGestureCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.target_gesture = v1;
}

uint64_t *OS_os_log.target_gesture.unsafeMutableAddressor()
{
  if (qword_1000D61E0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.target_gesture;
}

void sub_1000344FC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLDataStoreUpgradeCat_log_t, &CRLDataStoreUpgradeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t *OS_os_log.upgrade.unsafeMutableAddressor()
{
  if (qword_1000D61E8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.upgrade;
}

void sub_100034628()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLPasteboardCat_log_t, &CRLPasteboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.pasteboard = v1;
}

uint64_t *OS_os_log.pasteboard.unsafeMutableAddressor()
{
  if (qword_1000D61F0 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.pasteboard;
}

void sub_100034754()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemDataSizeCat_log_t, &CRLBoardItemDataSizeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemDataSize = v1;
}

uint64_t *OS_os_log.boardItemDataSize.unsafeMutableAddressor()
{
  if (qword_1000D61F8 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemDataSize;
}

void sub_100034880()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemLifecycleCat_log_t, &CRLBoardItemLifecycleCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemLifecycle = v1;
}

uint64_t *OS_os_log.boardItemLifecycle.unsafeMutableAddressor()
{
  if (qword_1000D6200 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemLifecycle;
}

void sub_1000349AC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetManagementCat_log_t, &CRLAssetManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.assetManagement = v1;
}

uint64_t *OS_os_log.assetManagement.unsafeMutableAddressor()
{
  if (qword_1000D6208 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.assetManagement;
}

void sub_100034AE0()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLShareStateCat_log_t, &CRLShareStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

uint64_t *OS_os_log.shareState.unsafeMutableAddressor()
{
  if (qword_1000D6210 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.shareState;
}

void sub_100034C0C()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLDrawingDataDetectors_log_t, &CRLDrawingDataDetectors_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.DrawingDataDetectors = v1;
}

uint64_t *OS_os_log.DrawingDataDetectors.unsafeMutableAddressor()
{
  if (qword_1000D6218 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.DrawingDataDetectors;
}

void sub_100034D38()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSideStore_log_t, &CRLSideStore_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sideStore = v1;
}

uint64_t *OS_os_log.sideStore.unsafeMutableAddressor()
{
  if (qword_1000D6220 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sideStore;
}

void sub_100034E64()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLSurfaceCat_log_t, &CRLSurfaceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSurface = v1;
}

uint64_t *OS_os_log.crlSurface.unsafeMutableAddressor()
{
  if (qword_1000D6228 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSurface;
}

id sub_100034F8C(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void sub_100034FEC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLWritingTools_log_t, &CRLWritingTools_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.writingTools = v1;
}

uint64_t *OS_os_log.writingTools.unsafeMutableAddressor()
{
  if (qword_1000D6230 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.writingTools;
}

uint64_t (*static OS_os_log.writingTools.modify())()
{
  if (qword_1000D6230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1000351CC()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = sub_10008AB08();
  v1 = CRLLogEnsureCreated(v0, &CRLFreehandDrawingStrokeAnimationCat_log_t, &CRLFreehandDrawingStrokeAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFreehandDrawingStrokeAnimation = v1;
}

uint64_t *OS_os_log.crlFreehandDrawingStrokeAnimation.unsafeMutableAddressor()
{
  if (qword_1000D6238 != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFreehandDrawingStrokeAnimation;
}

id sub_1000352F8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void sub_100035384(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.crlFreehandDrawingStrokeAnimation.modify())()
{
  if (qword_1000D6238 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_100035474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  switch(*(a7 + 16))
  {
    case 1:
      sub_10002A958(&qword_1000D6C70);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000A64C0;
      v9 = a7 + 32;
      v10 = v20 + 32;
      goto LABEL_25;
    case 2:
      sub_10002A958(&qword_1000D6C70);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1000A64B0;
      sub_10003637C(a7 + 32, v16 + 32);
      v9 = a7 + 72;
      v10 = v16 + 72;
      goto LABEL_25;
    case 3:
      sub_10002A958(&qword_1000D6C70);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1000A64A0;
      sub_10003637C(a7 + 32, v18 + 32);
      sub_10003637C(a7 + 72, v18 + 72);
      v9 = a7 + 112;
      v10 = v18 + 112;
      goto LABEL_25;
    case 4:
      sub_10002A958(&qword_1000D6C70);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_1000A6490;
      sub_10003637C(a7 + 32, v13 + 32);
      sub_10003637C(a7 + 72, v13 + 72);
      sub_10003637C(a7 + 112, v13 + 112);
      v9 = a7 + 152;
      v10 = v13 + 152;
      goto LABEL_25;
    case 5:
      sub_10002A958(&qword_1000D6C70);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1000A6480;
      sub_10003637C(a7 + 32, v23 + 32);
      sub_10003637C(a7 + 72, v23 + 72);
      sub_10003637C(a7 + 112, v23 + 112);
      sub_10003637C(a7 + 152, v23 + 152);
      v9 = a7 + 192;
      v10 = v23 + 192;
      goto LABEL_25;
    case 6:
      sub_10002A958(&qword_1000D6C70);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_1000A6470;
      sub_10003637C(a7 + 32, v26 + 32);
      sub_10003637C(a7 + 72, v26 + 72);
      sub_10003637C(a7 + 112, v26 + 112);
      sub_10003637C(a7 + 152, v26 + 152);
      sub_10003637C(a7 + 192, v26 + 192);
      v9 = a7 + 232;
      v10 = v26 + 232;
      goto LABEL_25;
    case 7:
      sub_10002A958(&qword_1000D6C70);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1000A6460;
      sub_10003637C(a7 + 32, v19 + 32);
      sub_10003637C(a7 + 72, v19 + 72);
      sub_10003637C(a7 + 112, v19 + 112);
      sub_10003637C(a7 + 152, v19 + 152);
      sub_10003637C(a7 + 192, v19 + 192);
      sub_10003637C(a7 + 232, v19 + 232);
      v9 = a7 + 272;
      v10 = v19 + 272;
      goto LABEL_25;
    case 8:
      sub_10002A958(&qword_1000D6C70);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1000A6450;
      sub_10003637C(a7 + 32, v29 + 32);
      sub_10003637C(a7 + 72, v29 + 72);
      sub_10003637C(a7 + 112, v29 + 112);
      sub_10003637C(a7 + 152, v29 + 152);
      sub_10003637C(a7 + 192, v29 + 192);
      sub_10003637C(a7 + 232, v29 + 232);
      sub_10003637C(a7 + 272, v29 + 272);
      v9 = a7 + 312;
      v10 = v29 + 312;
      goto LABEL_25;
    case 9:
      sub_10002A958(&qword_1000D6C70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_1000A6440;
      sub_10003637C(a7 + 32, v15 + 32);
      sub_10003637C(a7 + 72, v15 + 72);
      sub_10003637C(a7 + 112, v15 + 112);
      sub_10003637C(a7 + 152, v15 + 152);
      sub_10003637C(a7 + 192, v15 + 192);
      sub_10003637C(a7 + 232, v15 + 232);
      sub_10003637C(a7 + 272, v15 + 272);
      sub_10003637C(a7 + 312, v15 + 312);
      v9 = a7 + 352;
      v10 = v15 + 352;
      goto LABEL_25;
    case 0xALL:
      sub_10002A958(&qword_1000D6C70);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1000A6430;
      sub_10003637C(a7 + 32, v28 + 32);
      sub_10003637C(a7 + 72, v28 + 72);
      sub_10003637C(a7 + 112, v28 + 112);
      sub_10003637C(a7 + 152, v28 + 152);
      sub_10003637C(a7 + 192, v28 + 192);
      sub_10003637C(a7 + 232, v28 + 232);
      sub_10003637C(a7 + 272, v28 + 272);
      sub_10003637C(a7 + 312, v28 + 312);
      sub_10003637C(a7 + 352, v28 + 352);
      v9 = a7 + 392;
      v10 = v28 + 392;
      goto LABEL_25;
    case 0xBLL:
      sub_10002A958(&qword_1000D6C70);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1000A6420;
      sub_10003637C(a7 + 32, v12 + 32);
      sub_10003637C(a7 + 72, v12 + 72);
      sub_10003637C(a7 + 112, v12 + 112);
      sub_10003637C(a7 + 152, v12 + 152);
      sub_10003637C(a7 + 192, v12 + 192);
      sub_10003637C(a7 + 232, v12 + 232);
      sub_10003637C(a7 + 272, v12 + 272);
      sub_10003637C(a7 + 312, v12 + 312);
      sub_10003637C(a7 + 352, v12 + 352);
      sub_10003637C(a7 + 392, v12 + 392);
      v9 = a7 + 432;
      v10 = v12 + 432;
      goto LABEL_25;
    case 0xCLL:
      sub_10002A958(&qword_1000D6C70);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1000A6410;
      sub_10003637C(a7 + 32, v14 + 32);
      sub_10003637C(a7 + 72, v14 + 72);
      sub_10003637C(a7 + 112, v14 + 112);
      sub_10003637C(a7 + 152, v14 + 152);
      sub_10003637C(a7 + 192, v14 + 192);
      sub_10003637C(a7 + 232, v14 + 232);
      sub_10003637C(a7 + 272, v14 + 272);
      sub_10003637C(a7 + 312, v14 + 312);
      sub_10003637C(a7 + 352, v14 + 352);
      sub_10003637C(a7 + 392, v14 + 392);
      sub_10003637C(a7 + 432, v14 + 432);
      v9 = a7 + 472;
      v10 = v14 + 472;
      goto LABEL_25;
    case 0xDLL:
      sub_10002A958(&qword_1000D6C70);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1000A6400;
      sub_10003637C(a7 + 32, v25 + 32);
      sub_10003637C(a7 + 72, v25 + 72);
      sub_10003637C(a7 + 112, v25 + 112);
      sub_10003637C(a7 + 152, v25 + 152);
      sub_10003637C(a7 + 192, v25 + 192);
      sub_10003637C(a7 + 232, v25 + 232);
      sub_10003637C(a7 + 272, v25 + 272);
      sub_10003637C(a7 + 312, v25 + 312);
      sub_10003637C(a7 + 352, v25 + 352);
      sub_10003637C(a7 + 392, v25 + 392);
      sub_10003637C(a7 + 432, v25 + 432);
      sub_10003637C(a7 + 472, v25 + 472);
      v9 = a7 + 512;
      v10 = v25 + 512;
      goto LABEL_25;
    case 0xELL:
      sub_10002A958(&qword_1000D6C70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1000A63F0;
      sub_10003637C(a7 + 32, v11 + 32);
      sub_10003637C(a7 + 72, v11 + 72);
      sub_10003637C(a7 + 112, v11 + 112);
      sub_10003637C(a7 + 152, v11 + 152);
      sub_10003637C(a7 + 192, v11 + 192);
      sub_10003637C(a7 + 232, v11 + 232);
      sub_10003637C(a7 + 272, v11 + 272);
      sub_10003637C(a7 + 312, v11 + 312);
      sub_10003637C(a7 + 352, v11 + 352);
      sub_10003637C(a7 + 392, v11 + 392);
      sub_10003637C(a7 + 432, v11 + 432);
      sub_10003637C(a7 + 472, v11 + 472);
      sub_10003637C(a7 + 512, v11 + 512);
      v9 = a7 + 552;
      v10 = v11 + 552;
      goto LABEL_25;
    case 0xFLL:
      sub_10002A958(&qword_1000D6C70);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1000A63E0;
      sub_10003637C(a7 + 32, v17 + 32);
      sub_10003637C(a7 + 72, v17 + 72);
      sub_10003637C(a7 + 112, v17 + 112);
      sub_10003637C(a7 + 152, v17 + 152);
      sub_10003637C(a7 + 192, v17 + 192);
      sub_10003637C(a7 + 232, v17 + 232);
      sub_10003637C(a7 + 272, v17 + 272);
      sub_10003637C(a7 + 312, v17 + 312);
      sub_10003637C(a7 + 352, v17 + 352);
      sub_10003637C(a7 + 392, v17 + 392);
      sub_10003637C(a7 + 432, v17 + 432);
      sub_10003637C(a7 + 472, v17 + 472);
      sub_10003637C(a7 + 512, v17 + 512);
      sub_10003637C(a7 + 552, v17 + 552);
      v9 = a7 + 592;
      v10 = v17 + 592;
      goto LABEL_25;
    case 0x10:
      sub_10002A958(&qword_1000D6C70);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1000A63D0;
      sub_10003637C(a7 + 32, v8 + 32);
      sub_10003637C(a7 + 72, v8 + 72);
      sub_10003637C(a7 + 112, v8 + 112);
      sub_10003637C(a7 + 152, v8 + 152);
      sub_10003637C(a7 + 192, v8 + 192);
      sub_10003637C(a7 + 232, v8 + 232);
      sub_10003637C(a7 + 272, v8 + 272);
      sub_10003637C(a7 + 312, v8 + 312);
      sub_10003637C(a7 + 352, v8 + 352);
      sub_10003637C(a7 + 392, v8 + 392);
      sub_10003637C(a7 + 432, v8 + 432);
      sub_10003637C(a7 + 472, v8 + 472);
      sub_10003637C(a7 + 512, v8 + 512);
      sub_10003637C(a7 + 552, v8 + 552);
      sub_10003637C(a7 + 592, v8 + 592);
      v9 = a7 + 632;
      v10 = v8 + 632;
      goto LABEL_25;
    case 0x11:
      sub_10002A958(&qword_1000D6C70);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000A63C0;
      sub_10003637C(a7 + 32, v21 + 32);
      sub_10003637C(a7 + 72, v21 + 72);
      sub_10003637C(a7 + 112, v21 + 112);
      sub_10003637C(a7 + 152, v21 + 152);
      sub_10003637C(a7 + 192, v21 + 192);
      sub_10003637C(a7 + 232, v21 + 232);
      sub_10003637C(a7 + 272, v21 + 272);
      sub_10003637C(a7 + 312, v21 + 312);
      sub_10003637C(a7 + 352, v21 + 352);
      sub_10003637C(a7 + 392, v21 + 392);
      sub_10003637C(a7 + 432, v21 + 432);
      sub_10003637C(a7 + 472, v21 + 472);
      sub_10003637C(a7 + 512, v21 + 512);
      sub_10003637C(a7 + 552, v21 + 552);
      sub_10003637C(a7 + 592, v21 + 592);
      sub_10003637C(a7 + 632, v21 + 632);
      v9 = a7 + 672;
      v10 = v21 + 672;
      goto LABEL_25;
    case 0x12:
      sub_10002A958(&qword_1000D6C70);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1000A63B0;
      sub_10003637C(a7 + 32, v27 + 32);
      sub_10003637C(a7 + 72, v27 + 72);
      sub_10003637C(a7 + 112, v27 + 112);
      sub_10003637C(a7 + 152, v27 + 152);
      sub_10003637C(a7 + 192, v27 + 192);
      sub_10003637C(a7 + 232, v27 + 232);
      sub_10003637C(a7 + 272, v27 + 272);
      sub_10003637C(a7 + 312, v27 + 312);
      sub_10003637C(a7 + 352, v27 + 352);
      sub_10003637C(a7 + 392, v27 + 392);
      sub_10003637C(a7 + 432, v27 + 432);
      sub_10003637C(a7 + 472, v27 + 472);
      sub_10003637C(a7 + 512, v27 + 512);
      sub_10003637C(a7 + 552, v27 + 552);
      sub_10003637C(a7 + 592, v27 + 592);
      sub_10003637C(a7 + 632, v27 + 632);
      sub_10003637C(a7 + 672, v27 + 672);
      v9 = a7 + 712;
      v10 = v27 + 712;
      goto LABEL_25;
    case 0x13:
      sub_10002A958(&qword_1000D6C70);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000A63A0;
      sub_10003637C(a7 + 32, v30 + 32);
      sub_10003637C(a7 + 72, v30 + 72);
      sub_10003637C(a7 + 112, v30 + 112);
      sub_10003637C(a7 + 152, v30 + 152);
      sub_10003637C(a7 + 192, v30 + 192);
      sub_10003637C(a7 + 232, v30 + 232);
      sub_10003637C(a7 + 272, v30 + 272);
      sub_10003637C(a7 + 312, v30 + 312);
      sub_10003637C(a7 + 352, v30 + 352);
      sub_10003637C(a7 + 392, v30 + 392);
      sub_10003637C(a7 + 432, v30 + 432);
      sub_10003637C(a7 + 472, v30 + 472);
      sub_10003637C(a7 + 512, v30 + 512);
      sub_10003637C(a7 + 552, v30 + 552);
      sub_10003637C(a7 + 592, v30 + 592);
      sub_10003637C(a7 + 632, v30 + 632);
      sub_10003637C(a7 + 672, v30 + 672);
      sub_10003637C(a7 + 712, v30 + 712);
      v9 = a7 + 752;
      v10 = v30 + 752;
      goto LABEL_25;
    case 0x14:
      sub_10002A958(&qword_1000D6C70);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000A6390;
      sub_10003637C(a7 + 32, v22 + 32);
      sub_10003637C(a7 + 72, v22 + 72);
      sub_10003637C(a7 + 112, v22 + 112);
      sub_10003637C(a7 + 152, v22 + 152);
      sub_10003637C(a7 + 192, v22 + 192);
      sub_10003637C(a7 + 232, v22 + 232);
      sub_10003637C(a7 + 272, v22 + 272);
      sub_10003637C(a7 + 312, v22 + 312);
      sub_10003637C(a7 + 352, v22 + 352);
      sub_10003637C(a7 + 392, v22 + 392);
      sub_10003637C(a7 + 432, v22 + 432);
      sub_10003637C(a7 + 472, v22 + 472);
      sub_10003637C(a7 + 512, v22 + 512);
      sub_10003637C(a7 + 552, v22 + 552);
      sub_10003637C(a7 + 592, v22 + 592);
      sub_10003637C(a7 + 632, v22 + 632);
      sub_10003637C(a7 + 672, v22 + 672);
      sub_10003637C(a7 + 712, v22 + 712);
      sub_10003637C(a7 + 752, v22 + 752);
      v9 = a7 + 792;
      v10 = v22 + 792;
LABEL_25:
      sub_10003637C(v9, v10);
      sub_10008A968();

      break;
    default:

      result = sub_10008A968();
      break;
  }

  return result;
}

uint64_t sub_10003637C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000363E4()
{
  if (*v0)
  {
    return 0x6D6B6F6F426C7275;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_100036424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_10008B158() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6B6F6F426C7275 && a2 == 0xEF617461446B7261)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10008B158();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100036508(uint64_t a1)
{
  v2 = sub_100047448();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036544(uint64_t a1)
{
  v2 = sub_100047448();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036588()
{
  v1 = 0x72756769666E6F63;
  if (*v0 != 1)
  {
    v1 = 0x46746C7561666564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_100036604@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042678(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10003662C(uint64_t a1)
{
  v2 = sub_1000475AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036668(uint64_t a1)
{
  v2 = sub_1000475AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000366A4()
{
  v1 = *v0;
  v2 = 0x4F466172656D6163;
  v3 = 0x724664656C616373;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x73746E65746E6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000427A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036790(uint64_t a1)
{
  v2 = sub_1000485F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000367CC(uint64_t a1)
{
  v2 = sub_1000485F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100036808()
{
  v1 = *v0;
  v2 = 0x6D696E4179616C70;
  v3 = 0xD000000000000010;
  v4 = 0x696E417465736572;
  if (v1 != 3)
  {
    v4 = 0x6D696E41706F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x696E416573756170;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000368C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042978(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000368FC(uint64_t a1)
{
  v2 = sub_100047BC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036938(uint64_t a1)
{
  v2 = sub_100047BC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036974(uint64_t a1)
{
  v2 = sub_100047D18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000369B0(uint64_t a1)
{
  v2 = sub_100047D18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036A04()
{
  if (*v0)
  {
    return 0x6150737472617473;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_100036A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001000A2E40 == a2 || (sub_10008B158() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6150737472617473 && a2 == 0xEC00000064657375)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_10008B158();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100036B44(uint64_t a1)
{
  v2 = sub_100047D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036B80(uint64_t a1)
{
  v2 = sub_100047D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036BBC(uint64_t a1)
{
  v2 = sub_100047C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036BF8(uint64_t a1)
{
  v2 = sub_100047C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036C34(uint64_t a1)
{
  v2 = sub_100047CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036C70(uint64_t a1)
{
  v2 = sub_100047CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036CAC(uint64_t a1)
{
  v2 = sub_100047C1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036CE8(uint64_t a1)
{
  v2 = sub_100047C1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036D24()
{
  v1 = *v0;
  v2 = 0x6465737561507369;
  v3 = 0x6E6979616C507369;
  v4 = 0x6570706F74537369;
  if (v1 != 3)
  {
    v4 = 0x6465657073;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C706D6F437369;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100036DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100036DF4(uint64_t a1)
{
  v2 = sub_100047F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036E30(uint64_t a1)
{
  v2 = sub_100047F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036E6C(uint64_t a1)
{
  v2 = sub_100047E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100036EA8(uint64_t a1)
{
  v2 = sub_100047E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100036EE4()
{
  if (*v0)
  {
    return 0x657669746361;
  }

  else
  {
    return 0x6576697463616E69;
  }
}

uint64_t sub_100036F1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6576697463616E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_10008B158() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_10008B158();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100036FF4(uint64_t a1)
{
  v2 = sub_100047DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037030(uint64_t a1)
{
  v2 = sub_100047DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003706C(uint64_t a1)
{
  v2 = sub_100047EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000370A8(uint64_t a1)
{
  v2 = sub_100047EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000370E4()
{
  v1 = 0x756F426C65646F6DLL;
  v2 = 0x6956734977656976;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 0x6F6974616D696E61;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100037178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000371AC(uint64_t a1)
{
  v2 = sub_1000486F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000371E8(uint64_t a1)
{
  v2 = sub_1000486F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037224()
{
  v1 = *v0;
  v2 = 0x64656C6261736964;
  v3 = 0x676E6964616F6CLL;
  v4 = 0x6E697265646E6572;
  if (v1 != 3)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6574736575716572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000372C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100042E84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000372F0(uint64_t a1)
{
  v2 = sub_100047FB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003732C(uint64_t a1)
{
  v2 = sub_100047FB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037368(uint64_t a1)
{
  v2 = sub_1000481B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000373A4(uint64_t a1)
{
  v2 = sub_1000481B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000373EC(uint64_t a1)
{
  v2 = sub_10004800C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037428(uint64_t a1)
{
  v2 = sub_10004800C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037464(uint64_t a1)
{
  v2 = sub_100048108();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000374A0(uint64_t a1)
{
  v2 = sub_100048108();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000374DC(uint64_t a1)
{
  v2 = sub_100048060();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037518(uint64_t a1)
{
  v2 = sub_100048060();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037554(uint64_t a1)
{
  v2 = sub_10004815C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037590(uint64_t a1)
{
  v2 = sub_10004815C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000375CC(float32x4_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = a1[2];
  v6 = a1[3].i64[0];
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_100041460(v5, v7) & 1;
}

uint64_t sub_100037628(uint64_t a1)
{
  v2 = sub_10004854C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037664(uint64_t a1)
{
  v2 = sub_10004854C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000376A0()
{
  v1 = *v0;
  v2 = 0x7245676E69646F63;
  v3 = 0x6F69736E65747865;
  if (v1 != 5)
  {
    v3 = 0x45636972656E6567;
  }

  v4 = 0x7272456574617473;
  if (v1 != 3)
  {
    v4 = 0x4574756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F7272456C7275;
  if (v1 != 1)
  {
    v5 = 0x45676E6964616F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000377A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004303C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000377D4(uint64_t a1)
{
  v2 = sub_1000482AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037810(uint64_t a1)
{
  v2 = sub_1000482AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003784C(uint64_t a1)
{
  v2 = sub_100048354();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037888(uint64_t a1)
{
  v2 = sub_100048354();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000378C4(uint64_t a1)
{
  v2 = sub_100048300();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037900(uint64_t a1)
{
  v2 = sub_100048300();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003793C(uint64_t a1)
{
  v2 = sub_1000484A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037978(uint64_t a1)
{
  v2 = sub_1000484A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000379B4(uint64_t a1)
{
  v2 = sub_100048450();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000379F0(uint64_t a1)
{
  v2 = sub_100048450();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037A2C(uint64_t a1)
{
  v2 = sub_1000483FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037A68(uint64_t a1)
{
  v2 = sub_1000483FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037AA4(uint64_t a1)
{
  v2 = sub_1000484F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037AE0(uint64_t a1)
{
  v2 = sub_1000484F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037B1C(uint64_t a1)
{
  v2 = sub_100048A00();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100037B58(uint64_t a1)
{
  v2 = sub_100048A00();

  return Error<>._code.getter(a1, v2);
}

unint64_t sub_100037BB0()
{
  v1 = *v0;
  v2 = 0x654D6E49657A6973;
  v3 = 0x6874706564;
  v4 = 0x5365636166727573;
  if (v1 != 3)
  {
    v4 = 0x615272656E726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100037C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000432A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037C8C(uint64_t a1)
{
  v2 = sub_100047A60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037CC8(uint64_t a1)
{
  v2 = sub_100047A60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037D04()
{
  v1 = *v0;
  v2 = 0x646E696B5FLL;
  v3 = 1702521203;
  v4 = 0x7461746E6569726FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6B72616D6B6F6F62;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100037DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100043464(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037DD4(uint64_t a1)
{
  v2 = sub_1000478BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037E10(uint64_t a1)
{
  v2 = sub_1000478BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037E4C()
{
  v1 = *v0;
  v2 = 0x72756769666E6F63;
  v3 = 0x746E49656E616C70;
  v4 = 0x736D657469;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x46746C7561666564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100037F08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100043624(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100037F30(uint64_t a1)
{
  v2 = sub_1000476E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100037F6C(uint64_t a1)
{
  v2 = sub_1000476E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100037FCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_10008B158();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10003805C(uint64_t a1)
{
  v2 = sub_100047B0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100038098(uint64_t a1)
{
  v2 = sub_100047B0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000380D4(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D6EA8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10002E7C4(a1, a1[3]);
  sub_100047448();
  sub_10008B328();
  LOBYTE(v13) = 0;
  sub_100089CD8();
  sub_1000474F0(&qword_1000D6EB0, 255, &type metadata accessor for URL);
  sub_10008B128();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for CRLUSDRendering.BookmarkableURL(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_10002AC70(v13, v10);
    sub_100047538();
    sub_10008B128();
    sub_10002AC1C(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000382B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_100089CD8();
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002A958(&qword_1000D6E88);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E7C4(a1, a1[3]);
  sub_100047448();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  LOBYTE(v28) = 0;
  sub_1000474F0(&qword_1000D6E98, 255, &type metadata accessor for URL);
  v15 = v27;
  v16 = v25;
  sub_10008B088();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v29 = 1;
  sub_10004749C();
  sub_10008B088();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v28;
  sub_100047600(v18, v23, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_10002E85C(a1);
  return sub_100047668(v18, type metadata accessor for CRLUSDRendering.BookmarkableURL);
}

uint64_t sub_100038638(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D6ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000475AC();
  sub_10008B328();
  LOBYTE(v18) = 0;
  type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  sub_1000474F0(&qword_1000D67A0, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_10008B128();
  if (!v2)
  {
    v9 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
    v10 = v3 + *(v9 + 20);
    v11 = *(v10 + 64);
    LODWORD(v18) = *v10;
    v12 = *(v10 + 32);
    v19 = *(v10 + 16);
    v20 = v12;
    v21 = *(v10 + 48);
    v22 = v11;
    v17 = 1;
    sub_10002B7C4();
    sub_10008B128();
    v13 = (v3 + *(v9 + 24));
    v14 = v13[1];
    v18 = *v13;
    v19 = v14;
    v17 = 2;
    type metadata accessor for CGRect(0);
    sub_1000474F0(&qword_1000D6EE0, 255, type metadata accessor for CGRect);
    sub_10008B128();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000388B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002A958(&qword_1000D6EC0);
  v22 = *(v6 - 8);
  v23 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E7C4(a1, a1[3]);
  sub_1000475AC();
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(a1);
  }

  v12 = v22;
  v13 = v11;
  LOBYTE(v25) = 0;
  sub_1000474F0(&qword_1000D6760, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v14 = v23;
  sub_10008B088();
  sub_100047B60(v24, v13, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  v30 = 1;
  sub_10002DFAC();
  sub_10008B088();
  v15 = v29;
  v16 = v13 + *(v9 + 20);
  *v16 = v25;
  v17 = v27;
  *(v16 + 16) = v26;
  *(v16 + 32) = v17;
  *(v16 + 48) = v28;
  *(v16 + 64) = v15;
  type metadata accessor for CGRect(0);
  v30 = 2;
  sub_1000474F0(&qword_1000D6ED0, 255, type metadata accessor for CGRect);
  sub_10008B088();
  (*(v12 + 8))(v8, v14);
  v19 = (v13 + *(v9 + 24));
  v20 = v26;
  *v19 = v25;
  v19[1] = v20;
  sub_100047600(v13, v21, type metadata accessor for CRLUSDRendering.SceneRequest);
  sub_10002E85C(a1);
  return sub_100047668(v13, type metadata accessor for CRLUSDRendering.SceneRequest);
}

uint64_t sub_100038C94(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D6F18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000476E8();
  sub_10008B328();
  v9 = v3[3];
  v18 = v3[2];
  v19 = v9;
  v20 = *(v3 + 8);
  v10 = v3[1];
  v16 = *v3;
  v17 = v10;
  v15 = 0;
  sub_10002B7C4();
  sub_10008B128();
  if (!v2)
  {
    v11 = *(v3 + 88);
    v16 = *(v3 + 72);
    v17 = v11;
    v15 = 1;
    type metadata accessor for CGRect(0);
    sub_1000474F0(&qword_1000D6EE0, 255, type metadata accessor for CGRect);
    sub_10008B128();
    v12 = *(v3 + 120);
    v16 = *(v3 + 104);
    v17 = v12;
    LODWORD(v18) = *(v3 + 34);
    v15 = 2;
    sub_1000477C8();
    sub_10008B128();
    *&v16 = *(v3 + 18);
    v15 = 3;
    sub_10002A958(&qword_1000D6F00);
    sub_10004781C(&qword_1000D6F28, &qword_1000D6F30);
    sub_10008B128();
    LOBYTE(v16) = 4;
    sub_10008B118();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100038F78(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D6F60);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000478BC();
  sub_10008B328();
  LOBYTE(v17) = 0;
  sub_10008B118();
  if (!v2)
  {
    v9 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
    LOBYTE(v17) = 1;
    type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    sub_1000474F0(&qword_1000D67A0, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_10008B128();
    v17 = *(v3 + v9[6]);
    v21 = 2;
    type metadata accessor for CGSize(0);
    sub_1000474F0(&qword_1000D6F68, 255, type metadata accessor for CGSize);
    sub_10008B128();
    v10 = (v3 + v9[7]);
    v11 = *(v10 + 16);
    v17 = *v10;
    LOBYTE(v18) = v11;
    v21 = 3;
    sub_1000479B8();
    sub_10008B0C8();
    v12 = (v3 + v9[8]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v17 = *v12;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    v21 = 4;
    sub_100047A0C();
    sub_10008B128();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100039258@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10002A958(&qword_1000D6F38);
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  __chkstk_darwin(v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v28 = a1;
  sub_10002E7C4(a1, v13);
  sub_1000478BC();
  v27 = v9;
  sub_10008B308();
  if (v2)
  {
    return sub_10002E85C(v28);
  }

  v14 = v25;
  v15 = v26;
  LOBYTE(v29) = 0;
  *v12 = sub_10008B078();
  LOBYTE(v29) = 1;
  sub_1000474F0(&qword_1000D6760, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_10008B088();
  sub_100047B60(v6, v12 + v10[5], type metadata accessor for CRLUSDRendering.BookmarkableURL);
  type metadata accessor for CGSize(0);
  v33 = 2;
  sub_1000474F0(&qword_1000D6F48, 255, type metadata accessor for CGSize);
  sub_10008B088();
  *(v12 + v10[6]) = v29;
  v33 = 3;
  sub_100047910();
  sub_10008B028();
  v16 = v30;
  v17 = v12 + v10[7];
  *v17 = v29;
  v17[16] = v16;
  v33 = 4;
  sub_100047964();
  sub_10008B088();
  (*(v14 + 8))(v27, v15);
  v19 = v30;
  v20 = v31;
  v21 = v32;
  v22 = (v12 + v10[8]);
  *v22 = v29;
  v22[1] = v19;
  v22[2] = v20;
  v22[3] = v21;
  sub_100047600(v12, v24, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
  sub_10002E85C(v28);
  return sub_100047668(v12, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
}

uint64_t sub_1000396A0(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D6F90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10002E7C4(a1, a1[3]);
  sub_100047A60();
  sub_10008B328();
  LOBYTE(v11) = 0;
  sub_10008B0E8();
  if (!v2)
  {
    v11 = *(v3 + 8);
    v10[15] = 1;
    type metadata accessor for CGSize(0);
    sub_1000474F0(&qword_1000D6F68, 255, type metadata accessor for CGSize);
    sub_10008B128();
    LOBYTE(v11) = 2;
    sub_10008B108();
    LOBYTE(v11) = 3;
    sub_10008B108();
    LOBYTE(v11) = 4;
    sub_10008B108();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000398D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  __chkstk_darwin(v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10002A958(&qword_1000D6F98);
  v16 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRLUSDRendering.CompressionRequest(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002E7C4(a1, a1[3]);
  sub_100047B0C();
  sub_10008B308();
  if (!v2)
  {
    v12 = v15;
    sub_1000474F0(&qword_1000D6760, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    v13 = v17;
    sub_10008B088();
    (*(v16 + 8))(v8, v6);
    sub_100047B60(v13, v11, type metadata accessor for CRLUSDRendering.BookmarkableURL);
    sub_100047B60(v11, v12, type metadata accessor for CRLUSDRendering.CompressionRequest);
  }

  return sub_10002E85C(a1);
}

uint64_t sub_100039B48(void *a1, uint64_t a2, int a3)
{
  v40 = a3;
  v37 = a2;
  v4 = sub_10002A958(&qword_1000D7010);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v36 = &v29 - v5;
  v6 = sub_10002A958(&qword_1000D7018);
  v34 = *(v6 - 8);
  v35 = v6;
  __chkstk_darwin(v6);
  v33 = &v29 - v7;
  v8 = sub_10002A958(&qword_1000D7020);
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v29 - v9;
  v11 = sub_10002A958(&qword_1000D7028);
  v29 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  v14 = sub_10002A958(&qword_1000D7030);
  v30 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v29 - v15;
  v17 = sub_10002A958(&qword_1000D7038);
  v41 = *(v17 - 8);
  v42 = v17;
  __chkstk_darwin(v17);
  v19 = &v29 - v18;
  sub_10002E7C4(a1, a1[3]);
  sub_100047BC8();
  v20 = v40;
  sub_10008B328();
  if (v20 > 3u)
  {
    if (v20 == 4)
    {
      v49 = 3;
      sub_100047C70();
      v22 = v33;
      v21 = v42;
      sub_10008B0A8();
      v24 = v34;
      v23 = v35;
    }

    else
    {
      if (v20 != 5)
      {
        goto LABEL_8;
      }

      v50 = 4;
      sub_100047C1C();
      v22 = v36;
      v21 = v42;
      sub_10008B0A8();
      v24 = v38;
      v23 = v39;
    }

    (*(v24 + 8))(v22, v23);
    return (*(v41 + 8))(v19, v21);
  }

  if (v20 == 2)
  {
    v47 = 1;
    sub_100047D18();
    v27 = v42;
    sub_10008B0A8();
    (*(v29 + 8))(v13, v11);
    return (*(v41 + 8))(v19, v27);
  }

  if (v20 == 3)
  {
    v48 = 2;
    sub_100047CC4();
    v21 = v42;
    sub_10008B0A8();
    (*(v31 + 8))(v10, v32);
    return (*(v41 + 8))(v19, v21);
  }

LABEL_8:
  v46 = 0;
  sub_100047D6C();
  v25 = v42;
  sub_10008B0A8();
  v45 = 0;
  v26 = v43;
  sub_10008B0F8();
  if (!v26)
  {
    v44 = 1;
    sub_10008B0E8();
  }

  (*(v30 + 8))(v16, v14);
  return (*(v41 + 8))(v19, v25);
}

void sub_10003A128(uint64_t a1, Swift::UInt64 a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 == 4)
    {
      v3 = 3;
      goto LABEL_14;
    }

    if (a3 == 5)
    {
      v3 = 4;
      goto LABEL_14;
    }
  }

  else
  {
    if (a3 == 2)
    {
      v3 = 1;
      goto LABEL_14;
    }

    if (a3 == 3)
    {
      v3 = 2;
LABEL_14:
      sub_10008B278(v3);
      return;
    }
  }

  sub_10008B278(0);
  if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  sub_10008B2A8(v6);
  sub_10008B288(a3 & 1);
}

uint64_t sub_10003A1C4(void *a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D7078);
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4);
  v6 = &v16 - v5;
  v7 = sub_10002A958(&qword_1000D7080);
  v16 = *(v7 - 8);
  v17 = v7;
  __chkstk_darwin(v7);
  v9 = &v16 - v8;
  v10 = sub_10002A958(&qword_1000D7088);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - v12;
  sub_10002E7C4(a1, a1[3]);
  sub_100047DC0();
  sub_10008B328();
  if (a2 == 2)
  {
    v24 = 0;
    sub_100047EBC();
    sub_10008B0A8();
    (*(v16 + 8))(v9, v17);
  }

  else
  {
    v25 = 1;
    sub_100047E14();
    sub_10008B0A8();
    v20 = a2 & 0x101;
    v21 = BYTE2(a2) & 1;
    v22 = BYTE3(a2) & 1;
    v23 = HIDWORD(a2);
    sub_100047F10();
    v15 = v19;
    sub_10008B128();
    (*(v18 + 8))(v6, v15);
  }

  return (*(v11 + 8))(v13, v10);
}

void sub_10003A4EC(uint64_t a1, unint64_t a2)
{
  if (a2 == 2)
  {
    sub_10008B278(0);
  }

  else
  {
    v2 = HIDWORD(a2);
    sub_10008B278(1uLL);
    sub_10008B288(a2 & 1);
    sub_10008B288(BYTE1(a2) & 1);
    sub_10008B288(BYTE2(a2) & 1);
    sub_10008B288(BYTE3(a2) & 1);
    if ((v2 & 0x7FFFFF) == 0 && (a2 & 0x7F80000000000000) == 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2;
    }

    sub_10008B298(v5);
  }
}

uint64_t sub_10003A570(void *a1)
{
  v3 = sub_10002A958(&qword_1000D70A8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10002E7C4(a1, a1[3]);
  sub_100047F64();
  sub_10008B328();
  v13 = 0;
  sub_10008B0E8();
  if (!v1)
  {
    v12 = 1;
    sub_10008B0E8();
    v11 = 2;
    sub_10008B0E8();
    v10 = 3;
    sub_10008B0E8();
    v9 = 4;
    sub_10008B108();
  }

  return (*(v4 + 8))(v6, v3);
}

void sub_10003A758(float a1, uint64_t a2, int a3)
{
  sub_10008B288(a3 & 1);
  sub_10008B288(BYTE1(a3) & 1);
  sub_10008B288(BYTE2(a3) & 1);
  sub_10008B288(HIBYTE(a3) & 1);
  v5 = 0.0;
  if (a1 != 0.0)
  {
    v5 = a1;
  }

  sub_10008B298(LODWORD(v5));
}

uint64_t sub_10003A7BC(void *a1)
{
  v2 = v1;
  v4 = sub_10002A958(&qword_1000D7118);
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v33 - v5;
  v6 = sub_10002A958(&qword_1000D7120);
  v42 = *(v6 - 8);
  v43 = v6;
  __chkstk_darwin(v6);
  v41 = &v33 - v7;
  v8 = sub_10002A958(&qword_1000D7128);
  v37 = *(v8 - 8);
  v38 = v8;
  __chkstk_darwin(v8);
  v36 = &v33 - v9;
  v35 = sub_10002A958(&qword_1000D7130);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v33 = &v33 - v10;
  v11 = sub_10002A958(&qword_1000D7138);
  v39 = *(v11 - 8);
  v40 = v11;
  __chkstk_darwin(v11);
  v13 = &v33 - v12;
  v55 = sub_10002A958(&qword_1000D7140);
  v47 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v33 - v14;
  sub_10002E7C4(a1, a1[3]);
  sub_100047FB8();
  sub_10008B328();
  v16 = *v2;
  v17 = v2[1];
  v19 = v2[2];
  v18 = v2[3];
  v21 = v2[4];
  v20 = v2[5];
  v22 = v2[6];
  if (v20 >> 62)
  {
    if (v20 >> 62 == 1)
    {
      LOBYTE(v48) = 4;
      sub_10004800C();
      v23 = v44;
      v24 = v55;
      sub_10008B0A8();
      v48 = v16;
      v49 = v17;
      LOBYTE(v50) = v19;
      sub_100048204();
      v25 = v46;
      sub_10008B128();
      (*(v45 + 8))(v23, v25);
      return (*(v47 + 8))(v15, v24);
    }

    else
    {
      v29 = v19 | v17;
      if (v20 != 0x8000000000000000 || v29 | v16 | v18 | v21 | v22)
      {
        if (v20 == 0x8000000000000000 && v16 == 1 && !(v22 | v21 | v29 | v18))
        {
          LOBYTE(v48) = 1;
          sub_10004815C();
          v31 = v33;
          v30 = v55;
          sub_10008B0A8();
          (*(v34 + 8))(v31, v35);
        }

        else
        {
          LOBYTE(v48) = 2;
          sub_100048108();
          v32 = v36;
          v30 = v55;
          sub_10008B0A8();
          (*(v37 + 8))(v32, v38);
        }
      }

      else
      {
        LOBYTE(v48) = 0;
        sub_1000481B0();
        v30 = v55;
        sub_10008B0A8();
        (*(v39 + 8))(v13, v40);
      }

      return (*(v47 + 8))(v15, v30);
    }
  }

  else
  {
    v46 = v20 & 0x3FFFFFFFFFFFFFFFLL;
    LOBYTE(v48) = 3;
    sub_100048060();
    v27 = v41;
    sub_10008B0A8();
    v48 = v16;
    v49 = v17;
    v50 = v19;
    v51 = v18;
    v52 = v21;
    v53 = v46;
    v54 = v22;
    sub_100048258();
    v28 = v43;
    sub_10008B128();
    (*(v42 + 8))(v27, v28);
    return (*(v47 + 8))(v15, v55);
  }
}

void sub_10003AE0C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  if (v6 >> 62)
  {
    if (v6 >> 62 == 1)
    {
      v8 = *(v1 + 16);
      v13 = *v1;
      sub_10008B278(4uLL);

      sub_10003B7AC(a1, v13.i64[0], v13.i64[1], v8);
    }

    else
    {
      v9 = vorrq_s8(v4, vdupq_laneq_s64(v3, 1)).u64[0];
      if (v6 == 0x8000000000000000 && (v9 | v3.i64[0] | v4.i64[1] | v5 | v7) == 0)
      {
        v11 = 0;
      }

      else if (v6 == 0x8000000000000000 && v3.i64[0] == 1 && !(v7 | v5 | v9 | v4.i64[1]))
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      sub_10008B278(v11);
    }
  }

  else
  {
    v12 = *(v1 + 16);
    v14 = *v1;
    sub_10008B278(3uLL);
    sub_1000408A8(v14);
    sub_1000408A8(v12);
    sub_1000406FC(a1, v5);
    sub_10008B288(v6 & 1);

    sub_100040590(a1, v7);
  }
}

uint64_t sub_10003AF8C(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v61 = a4;
  v57 = a2;
  v58 = a3;
  v5 = sub_10002A958(&qword_1000D71E0);
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v40 - v6;
  v7 = sub_10002A958(&qword_1000D71E8);
  v49 = *(v7 - 8);
  v50 = v7;
  __chkstk_darwin(v7);
  v48 = &v40 - v8;
  v9 = sub_10002A958(&qword_1000D71F0);
  v46 = *(v9 - 8);
  v47 = v9;
  __chkstk_darwin(v9);
  v44 = &v40 - v10;
  v45 = sub_10002A958(&qword_1000D71F8);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v42 = &v40 - v11;
  v12 = sub_10002A958(&qword_1000D7200);
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin(v12);
  v14 = &v40 - v13;
  v15 = sub_10002A958(&qword_1000D7208);
  v41 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v40 - v16;
  v18 = sub_10002A958(&qword_1000D7210);
  v54 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v40 - v19;
  v60 = sub_10002A958(&qword_1000D7218);
  v62 = *(v60 - 8);
  __chkstk_darwin(v60);
  v22 = &v40 - v21;
  sub_10002E7C4(a1, a1[3]);
  sub_1000482AC();
  v59 = v22;
  sub_10008B328();
  if (v61 <= 2u)
  {
    v28 = v15;
    v30 = v54;
    v29 = v55;
    v31 = v56;
    if (v61)
    {
      if (v61 == 1)
      {
        LOBYTE(v63) = 1;
        sub_1000484F8();
        v32 = v59;
        v33 = v60;
        sub_10008B0A8();
        sub_10008B0D8();
        (*(v41 + 8))(v17, v28);
        return (*(v62 + 8))(v32, v33);
      }

      else
      {
        LOBYTE(v63) = 2;
        sub_1000484A4();
        v37 = v59;
        v38 = v60;
        sub_10008B0A8();
        sub_10008B0D8();
        (*(v29 + 8))(v14, v31);
        return (*(v62 + 8))(v37, v38);
      }
    }

    else
    {
      LOBYTE(v63) = 0;
      sub_10004854C();
      v36 = v59;
      v35 = v60;
      sub_10008B0A8();
      sub_10008B0D8();
      (*(v30 + 8))(v20, v18);
      return (*(v62 + 8))(v36, v35);
    }
  }

  else
  {
    if (v61 > 4u)
    {
      v24 = v59;
      v23 = v60;
      if (v61 != 5)
      {
        LOBYTE(v63) = 4;
        sub_1000483FC();
        v39 = v44;
        sub_10008B0A8();
        (*(v46 + 8))(v39, v47);
        return (*(v62 + 8))(v24, v23);
      }

      LOBYTE(v63) = 6;
      sub_100048300();
      v25 = v51;
      sub_10008B0A8();
      v26 = v53;
      sub_10008B0B8();
      v27 = v52;
    }

    else
    {
      v24 = v59;
      v23 = v60;
      if (v61 == 3)
      {
        LOBYTE(v63) = 3;
        sub_100048450();
        v25 = v42;
        sub_10008B0A8();
        v26 = v45;
        sub_10008B0D8();
        v27 = v43;
      }

      else
      {
        LOBYTE(v63) = 5;
        sub_100048354();
        v25 = v48;
        sub_10008B0A8();
        v63 = v57;
        v64 = v58;
        sub_1000485A0();
        v26 = v50;
        sub_10008B128();
        v27 = v49;
      }
    }

    (*(v27 + 8))(v25, v26);
    return (*(v62 + 8))(v24, v23);
  }
}

void sub_10003B7AC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
    if (!a4)
    {
      v5 = 0;
      goto LABEL_16;
    }

    if (a4 == 1)
    {
      v5 = 1;
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a4 > 4u)
  {
    if (a4 == 5)
    {
      sub_10008B278(6uLL);
      if (!a3)
      {
        sub_10008B288(0);
        return;
      }

      sub_10008B288(1u);
      goto LABEL_17;
    }

    v6 = 4;
LABEL_23:
    sub_10008B278(v6);
    return;
  }

  if (a4 != 3)
  {
    sub_10008B278(5uLL);
    if (!a3)
    {
      v6 = 0;
      goto LABEL_23;
    }

    if (a3 == 1)
    {
      v6 = 1;
      goto LABEL_23;
    }

LABEL_15:
    v5 = 2;
    goto LABEL_16;
  }

  v5 = 3;
LABEL_16:
  sub_10008B278(v5);
LABEL_17:

  sub_10008AB98();
}

uint64_t sub_10003B8A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_100089C98() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = *v9;
  v11 = v9[1];

  return sub_10004185C(v7, v8, v10, v11);
}

BOOL sub_10003B97C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v13[6] = a1[6];
  v13[7] = v2;
  v3 = a1[9];
  v13[8] = a1[8];
  v13[9] = v3;
  v4 = a1[3];
  v13[2] = a1[2];
  v13[3] = v4;
  v5 = a1[5];
  v13[4] = a1[4];
  v13[5] = v5;
  v6 = a1[1];
  v13[0] = *a1;
  v13[1] = v6;
  v7 = a2[7];
  v14[6] = a2[6];
  v14[7] = v7;
  v8 = a2[9];
  v14[8] = a2[8];
  v14[9] = v8;
  v9 = a2[3];
  v14[2] = a2[2];
  v14[3] = v9;
  v10 = a2[5];
  v14[4] = a2[4];
  v14[5] = v10;
  v11 = a2[1];
  v14[0] = *a2;
  v14[1] = v11;
  return sub_100041C90(v13, v14);
}

double sub_10003BA00@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000437EC(a1, v10);
  if (!v2)
  {
    v5 = v10[7];
    a2[6] = v10[6];
    a2[7] = v5;
    v6 = v10[9];
    a2[8] = v10[8];
    a2[9] = v6;
    v7 = v10[3];
    a2[2] = v10[2];
    a2[3] = v7;
    v8 = v10[5];
    a2[4] = v10[4];
    a2[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a2 = v10[0];
    a2[1] = v9;
  }

  return result;
}

BOOL sub_10003BAA8(float *a1, float *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2) && a1[6] == a2[6] && a1[7] == a2[7])
  {
    return a1[8] == a2[8];
  }

  return result;
}

double sub_10003BAF8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100043CE0(a1, v6);
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

BOOL sub_10003BB58(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_100089C98())
  {
    v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
    if (sub_10004185C(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), *(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_10003BBCC(void *a1)
{
  v2 = sub_10002A958(&qword_1000D6FA8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10002E7C4(a1, a1[3]);
  sub_100047B0C();
  sub_10008B328();
  type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  sub_1000474F0(&qword_1000D67A0, 255, type metadata accessor for CRLUSDRendering.BookmarkableURL);
  sub_10008B128();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int sub_10003BD48()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_10008B268();
  sub_10003A128(v4, v1, v2);
  return sub_10008B2C8();
}

Swift::Int sub_10003BDA4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_10008B268();
  sub_10003A128(v4, v1, v2);
  return sub_10008B2C8();
}

uint64_t sub_10003BDF0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100043F70(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10003BE40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v4 = v3 == 4;
      goto LABEL_12;
    }

    if (v2 == 5)
    {
      v4 = v3 == 5;
      goto LABEL_12;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v4 = v3 == 2;
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v4 = v3 == 3;
LABEL_12:
      v6 = v4;
      return v6 & 1;
    }
  }

  if ((v3 - 2) < 4u)
  {
    return 0;
  }

  v7 = v3 ^ v2 ^ 1;
  if (*a1 != *a2)
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_10003BED0()
{
  v1 = *v0;
  sub_10008B268();
  sub_10003A4EC(v3, v1);
  return sub_10008B2C8();
}

Swift::Int sub_10003BF20()
{
  v1 = *v0;
  sub_10008B268();
  sub_10003A4EC(v3, v1);
  return sub_10008B2C8();
}

unint64_t sub_10003BF64@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1000447B8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10003BFAC(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  LODWORD(v2) = (((*a2 & 0x100) == 0) ^ ((v2 & 0x100) >> 8)) & ~(*a2 ^ v2) & (((*a2 & 0x10000) == 0) ^ WORD1(v2)) & (((*a2 & 0x1000000) == 0) ^ BYTE3(v2));
  if (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2)))
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

Swift::Int sub_10003C038()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[1];
  sub_10008B268();
  if (v2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v1;
  if (v3)
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  sub_10003A758(v5, v11, v7 | v8 | v9);
  return sub_10008B2C8();
}

void sub_10003C0D8(uint64_t a1)
{
  if (*(v1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (*(v1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 3))
  {
    v5 = 0x1000000;
  }

  else
  {
    v5 = 0;
  }

  sub_10003A758(v1[1], a1, v3 | v4 | v5);
}

Swift::Int sub_10003C120()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[1];
  sub_10008B268();
  if (v2)
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | v1;
  if (v3)
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = 0x1000000;
  }

  else
  {
    v9 = 0;
  }

  sub_10003A758(v5, v11, v7 | v8 | v9);
  return sub_10008B2C8();
}

void sub_10003C1BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100044CA8(a1);
  if (!v2)
  {
    *a2 = v4 & 1;
    *(a2 + 1) = BYTE1(v4) & 1;
    *(a2 + 2) = BYTE2(v4) & 1;
    *(a2 + 3) = HIBYTE(v4) & 1;
    *(a2 + 4) = v5;
  }
}

BOOL sub_10003C264(float *a1, float *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && ((*(a1 + 2) ^ *(a2 + 2)) & 1) == 0 && ((*(a1 + 3) ^ *(a2 + 3)) & 1) == 0)
  {
    return a1[1] == a2[1];
  }

  return result;
}

Swift::Int sub_10003C2C0()
{
  sub_10008B268();
  sub_10003AE0C(v1);
  return sub_10008B2C8();
}

Swift::Int sub_10003C304()
{
  sub_10008B268();
  sub_10003AE0C(v1);
  return sub_10008B2C8();
}

double sub_10003C340@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100044EEC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

Swift::Int sub_10003C3A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10008B268();
  sub_10003B7AC(v5, v1, v2, v3);
  return sub_10008B2C8();
}

Swift::Int sub_10003C40C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_10008B268();
  sub_10003B7AC(v5, v1, v2, v3);
  return sub_10008B2C8();
}

void *sub_10003C464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100045820(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

void sub_10003C4B4()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  sub_10008B298(LODWORD(v1));
  sub_10008ADD8();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_10008B2A8(*&v2);
  if (v3 == 0.0)
  {
    v4 = 0.0;
  }

  else
  {
    v4 = v3;
  }

  sub_10008B2A8(*&v4);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_10008B2A8(*&v5);
  if (v6 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v6;
  }

  sub_10008B2A8(*&v7);
  v8 = *(v0 + 64);
  if (v8 == 0.0)
  {
    v8 = 0.0;
  }

  sub_10008B2A8(*&v8);
}

uint64_t sub_10003C564(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D7248);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000485F4();
  sub_10008B328();
  LOBYTE(v12) = 0;
  sub_10008B108();
  if (!v2)
  {
    v12 = *(v3 + 16);
    v11 = 1;
    type metadata accessor for simd_quatf(0);
    sub_1000474F0(&qword_1000D7250, 255, type metadata accessor for simd_quatf);
    sub_10008B128();
    v12 = *(v3 + 32);
    v11 = 2;
    type metadata accessor for CGSize(0);
    sub_1000474F0(&qword_1000D6F68, 255, type metadata accessor for CGSize);
    sub_10008B128();
    v12 = *(v3 + 48);
    v11 = 3;
    sub_10008B128();
    *&v12 = *(v3 + 64);
    v11 = 4;
    sub_10004869C();
    sub_10008B128();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10003C814()
{
  sub_10008B268();
  sub_10003C4B4();
  return sub_10008B2C8();
}

Swift::Int sub_10003C858()
{
  sub_10008B268();
  sub_10003C4B4();
  return sub_10008B2C8();
}

__n128 sub_10003C894@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000464A4(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

BOOL sub_10003C8F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_100041E00(v7, v9);
}

uint64_t sub_10003C954(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_14:
    v14 = v11 | (v4 << 6);
    v15 = (*(v3 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(v3 + 56) + 8 * v14);
    v10 = v16 == 0;

    if (!v16)
    {
      return v10;
    }

    v19 = v3;
    v20 = sub_10003F9EC(v17, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }

    v23 = *(*(a2 + 56) + 8 * v20);
    if (v23 == 2)
    {
      v3 = v19;
      v10 = 0;
      if (v18 != 2)
      {
        return v10;
      }
    }

    else
    {
      if (v18 == 2 || ((v23 ^ v18) & 1) != 0)
      {
        return 0;
      }

      v3 = v19;
      v26 = ((v18 & 0x100) == 0) != ((v23 >> 8) & 1) && ((v18 & 0x10000) == 0) != ((v23 >> 16) & 1) && ((v18 & 0x1000000) == 0) != ((v23 >> 24) & 1) && *(&v23 + 1) == *(&v18 + 1);
      v10 = 0;
      if (!v26)
      {
        return v10;
      }
    }
  }

  v12 = v4;
  while (1)
  {
    v4 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v13 = *(v5 + 8 * v4);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v8 = (v13 - 1) & v13;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CB3C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_10003F9EC(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_10008B158();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CCE0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v12 = (*(v3 + 56) + 16 * (v9 | (v4 << 6)));
    v14 = *v12;
    v13 = v12[1];

    v15 = sub_100041FE4();
    if ((v16 & 1) == 0)
    {

      return 0;
    }

    v17 = (*(a2 + 56) + 16 * v15);
    if (*v17 == v14 && v17[1] == v13)
    {
    }

    else
    {
      v19 = sub_10008B158();

      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003CE30(void *a1)
{
  v3 = v1;
  v5 = sub_10002A958(&qword_1000D72A0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_10002E7C4(a1, a1[3]);
  sub_1000486F0();
  sub_10008B328();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  sub_1000487EC();
  sub_10008B128();
  if (!v2)
  {
    *&v13 = *(v3 + 4);
    v12 = 1;
    sub_10002A958(&qword_1000D7278);
    sub_100048840(&qword_1000D72B0, sub_1000488C4);
    sub_10008B128();
    LOBYTE(v13) = 2;
    sub_10008B0E8();
    *&v13 = *(v3 + 6);
    v12 = 3;
    sub_10002A958(&qword_1000D7290);
    sub_100048918(&qword_1000D72C0);
    sub_10008B128();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10003D0B0()
{
  v5 = *v0;
  v6 = v0[1];
  v1 = v0[2].n128_i64[0];
  v2 = v0[2].n128_u8[8];
  v3 = v0[3].n128_i64[0];
  sub_10008B268();
  sub_1000408A8(v5);
  sub_1000408A8(v6);
  sub_1000406FC(v7, v1);
  sub_10008B288(v2);
  sub_100040590(v7, v3);
  return sub_10008B2C8();
}

void sub_10003D140(uint64_t a1)
{
  v6 = v1[1];
  v3 = v1[2].n128_i64[0];
  v4 = v1[2].n128_u8[8];
  v5 = v1[3].n128_i64[0];
  sub_1000408A8(*v1);
  sub_1000408A8(v6);
  sub_1000406FC(a1, v3);
  sub_10008B288(v4);

  sub_100040590(a1, v5);
}

Swift::Int sub_10003D1CC()
{
  v5 = *v0;
  v6 = v0[1];
  v1 = v0[2].n128_i64[0];
  v2 = v0[2].n128_u8[8];
  v3 = v0[3].n128_i64[0];
  sub_10008B268();
  sub_1000408A8(v5);
  sub_1000408A8(v6);
  sub_1000406FC(v7, v1);
  sub_10008B288(v2);
  sub_100040590(v7, v3);
  return sub_10008B2C8();
}

double sub_10003D258@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000467CC(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_10003D2BC(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[2].i64[0];
  v3 = a1[2].u8[8];
  v4 = a1[3].i64[0];
  v5 = a2[2].i64[0];
  v6 = a2[2].u8[8];
  v7 = a2[3].i64[0];
  if (sub_1000412DC(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (sub_10003C954(v2, v5) & 1) == 0 || ((v3 ^ v6))
  {
    return 0;
  }

  return sub_10003CB3C(v4, v7);
}

unint64_t sub_10003D358()
{
  sub_10008AEB8(35);

  sub_100089CD8();
  sub_1000474F0(&qword_1000D72C8, 255, &type metadata accessor for URL);
  v1._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v1);

  v2._countAndFlagsBits = 0x69666E6F63202C3ELL;
  v2._object = 0xEB00000000203A67;
  sub_10008ABB8(v2);
  type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v3._countAndFlagsBits = sub_10003D4A8();
  sub_10008ABB8(v3);

  v4._countAndFlagsBits = 41;
  v4._object = 0xE100000000000000;
  sub_10008ABB8(v4);
  return 0xD000000000000013;
}

uint64_t sub_10003D4A8()
{
  sub_10008AEB8(66);
  v1._object = 0x80000001000A2C00;
  v1._countAndFlagsBits = 0xD000000000000011;
  sub_10008ABB8(v1);
  sub_10008ADB8();
  v2._countAndFlagsBits = 0x746E6569726F202CLL;
  v2._object = 0xEF203A6E6F697461;
  sub_10008ABB8(v2);
  sub_10002A958(&qword_1000D6C80);
  sub_100048A5C(&qword_1000D72D0);
  v3._countAndFlagsBits = sub_10008B198();
  sub_10008ABB8(v3);

  v4._countAndFlagsBits = 0x203A657A6973202CLL;
  v4._object = 0xE800000000000000;
  sub_10008ABB8(v4);
  type metadata accessor for CGSize(0);
  sub_10008AF78();
  v5._object = 0x80000001000A2C20;
  v5._countAndFlagsBits = 0xD000000000000011;
  sub_10008ABB8(v5);
  v6._countAndFlagsBits = sub_10008ADA8();
  sub_10008ABB8(v6);

  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  sub_10008ABB8(v7);
  return 0;
}

uint64_t sub_10003D674()
{
  sub_10008AEB8(66);
  v1._countAndFlagsBits = 0xD000000000000021;
  v1._object = 0x80000001000A2C80;
  sub_10008ABB8(v1);
  v2._countAndFlagsBits = sub_10003D7A0();
  sub_10008ABB8(v2);

  v3._countAndFlagsBits = 0x69666E6F63202C3ELL;
  v3._object = 0xEB00000000203A67;
  sub_10008ABB8(v3);
  v4._countAndFlagsBits = sub_10003D4A8();
  sub_10008ABB8(v4);

  v5._object = 0x80000001000A2CB0;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_10008ABB8(v5);
  v6._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v6);

  return 0;
}

uint64_t sub_10003D7A0()
{
  sub_10008AEB8(102);
  v4._countAndFlagsBits = 0xD000000000000022;
  v4._object = 0x80000001000A2CD0;
  sub_10008ABB8(v4);
  if (*v0)
  {
    v1._countAndFlagsBits = 1702195828;
  }

  else
  {
    v1._countAndFlagsBits = 0x65736C6166;
  }

  if (*v0)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  v1._object = v2;
  sub_10008ABB8(v1);

  v5._object = 0x80000001000A2D00;
  v5._countAndFlagsBits = 0xD000000000000010;
  sub_10008ABB8(v5);
  type metadata accessor for CGSize(0);
  sub_10008AF78();
  v6._countAndFlagsBits = 0x3A6874706564202CLL;
  v6._object = 0xE900000000000020;
  sub_10008ABB8(v6);
  sub_10008ADB8();
  v7._object = 0x80000001000A2D20;
  v7._countAndFlagsBits = 0xD000000000000010;
  sub_10008ABB8(v7);
  sub_10008ADB8();
  v8._object = 0x80000001000A2D40;
  v8._countAndFlagsBits = 0xD000000000000010;
  sub_10008ABB8(v8);
  sub_10008ADB8();
  v9._countAndFlagsBits = 41;
  v9._object = 0xE100000000000000;
  sub_10008ABB8(v9);
  return 0;
}

unint64_t sub_10003D95C()
{
  sub_10008AEB8(27);

  sub_100089CD8();
  sub_1000474F0(&qword_1000D72C8, 255, &type metadata accessor for URL);
  v1._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v1);

  v2._countAndFlagsBits = 41;
  v2._object = 0xE100000000000000;
  sub_10008ABB8(v2);
  return 0xD000000000000018;
}

uint64_t simd_quatf.encode(to:)(void *a1)
{
  sub_10002E7C4(a1, a1[3]);
  sub_10008B318();
  sub_100046BFC(v2, v3);
  sub_10002A958(&qword_1000D6C80);
  sub_100048A5C(&qword_1000D6C88);
  sub_10008B178();
  return sub_10002E85C(v2);
}

uint64_t sub_10003DB34@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_100046AEC(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_10003DB60(void *a1)
{
  sub_10002E7C4(a1, a1[3]);
  sub_10008B318();
  sub_100046BFC(v2, v3);
  sub_10002A958(&qword_1000D6C80);
  sub_100048A5C(&qword_1000D6C88);
  sub_10008B178();
  return sub_10002E85C(v2);
}

double sub_10003DC40()
{
  type metadata accessor for CRLUSDRendering.TaskQueue();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 128) = _swiftEmptyArrayStorage;
  *&result = 1;
  *(v0 + 112) = xmmword_1000A6220;
  qword_1000D6C78 = v0;
  return result;
}

uint64_t sub_10003DC94()
{
  v1[5] = v0;
  v2 = sub_100089CD8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003DD54, 0, 0);
}

uint64_t sub_10003DD54()
{
  if (qword_1000D6240 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D6C78;
  *(v0 + 72) = qword_1000D6C78;

  return _swift_task_switch(sub_10003DDEC, v1, 0);
}

uint64_t sub_10003DDEC()
{
  sub_10008AD98();
  v1 = *(v0 + 72);
  v3 = sub_1000474F0(&qword_1000D7348, v2, type metadata accessor for CRLUSDRendering.TaskQueue);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_10003DF50;
  v5 = *(v0 + 72);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v1, v3, 0xD000000000000013, 0x80000001000A2D80, sub_10004B9D8, v5, &type metadata for () + 8);
}

uint64_t sub_10003DF50()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  if (v0)
  {
    v4 = sub_10003E180;
  }

  else
  {
    v4 = sub_10003E07C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003E07C()
{
  v1 = v0[11];
  v2 = sub_10008AD98();
  if (!v1)
  {
    sub_10008ACE8();
    v0[12] = sub_10008ACD8();
    v11 = sub_10008AC88();
    v4 = v12;
    v0[13] = v11;
    v0[14] = v12;
    v2 = sub_10003E1E4;
    v3 = v11;

    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v0[9];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  *(v5 + 120) = v8;
  sub_10003F05C();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003E180()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003E1E4()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_10008A618();
  (*(v2 + 16))(v1, v4 + OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering11LoadReceipt_url, v3);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_10003E2D0;
  v6 = v0[8];

  return Entity.init(contentsOf:withName:)(v6, 0, 0);
}

uint64_t sub_10003E2D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = v1;
  v4[16] = v1;

  v5 = v3[14];
  v6 = v3[13];
  if (v1)
  {
    v7 = sub_10003E514;
  }

  else
  {
    v7 = sub_10003E414;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10003E414()
{
  v1 = *(v0 + 72);

  return _swift_task_switch(sub_10003E480, v1, 0);
}

void sub_10003E480()
{
  v2 = v0[9];
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[3];
    *(v2 + 120) = v5;
    sub_10003F05C();

    v7 = v0[1];

    v7(v6);
  }
}

uint64_t sub_10003E514()
{
  v1 = *(v0 + 72);

  sub_10002ACC4();
  *(v0 + 136) = swift_allocError();
  *v2 = 0xD00000000000001CLL;
  *(v2 + 8) = 0x80000001000A2DA0;
  *(v2 + 16) = 2;
  swift_willThrow();

  return _swift_task_switch(sub_10003E5E0, v1, 0);
}

uint64_t sub_10003E5E0()
{
  v2 = *(v0 + 72);
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 120) = v5;
    sub_10003F05C();

    v6 = *(v0 + 8);

    return v6();
  }

  return result;
}

uint64_t sub_10003E680()
{
  if (qword_1000D6240 != -1)
  {
    swift_once();
  }

  v1 = qword_1000D6C78;
  *(v0 + 24) = qword_1000D6C78;

  return _swift_task_switch(sub_10003E718, v1, 0);
}

uint64_t sub_10003E718()
{
  sub_10008AD98();
  v1 = *(v0 + 24);
  v3 = sub_1000474F0(&qword_1000D7348, v2, type metadata accessor for CRLUSDRendering.TaskQueue);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_10003E874;
  v5 = *(v0 + 24);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, v1, v3, 0xD000000000000013, 0x80000001000A2D80, sub_100048A54, v5, &type metadata for () + 8);
}

uint64_t sub_10003E874()
{
  v2 = *v1;
  *(*v1 + 40) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_10003EA9C;
  }

  else
  {
    v4 = sub_10003E9A0;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10003E9A0()
{
  v1 = v0[5];
  v2 = sub_10008AD98();
  if (!v1)
  {
    sub_10008ACE8();
    v0[6] = sub_10008ACD8();
    v11 = sub_10008AC88();
    v13 = v12;
    v2 = sub_10003EAB4;
    v3 = v11;
    v4 = v13;

    return _swift_task_switch(v2, v3, v4);
  }

  v5 = v0[3];
  v6 = *(v5 + 120);
  v7 = __OFSUB__(v6, 1);
  v8 = v6 - 1;
  if (v7)
  {
    __break(1u);
    return _swift_task_switch(v2, v3, v4);
  }

  *(v5 + 120) = v8;
  sub_10003F05C();
  v9 = v0[1];

  return v9();
}

uint64_t sub_10003EAB4()
{

  if (sub_100089C18())
  {
    v1 = objc_opt_self();
    sub_100089CB8();
    v2 = sub_10008AB08();

    v3 = [v1 determineCompression:v2];

    v4 = v3 == -1;
    if (v3 == -1)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = v3;
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  *(v0 + 64) = v4;
  *(v0 + 56) = v5;
  v6 = *(v0 + 24);

  return _swift_task_switch(sub_10003EBA8, v6, 0);
}

void sub_10003EBA8()
{
  v2 = *(v0 + 24);
  v3 = *(v2 + 120);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 64);
    *(v2 + 120) = v5;
    sub_10003F05C();
    v7 = *(v0 + 8);
    v8 = *(v0 + 56);

    v7(v8, v6);
  }
}

uint64_t sub_10003EC2C()
{
  v1 = OBJC_IVAR____TtCO20USDRendererExtension15CRLUSDRendering11LoadReceipt_url;
  v2 = sub_100089CD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_10003ECC8()
{
  v1 = v0;
  v2 = sub_10002A958(&qword_1000D66F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - v4;
  v6 = *(v1 + 128);
  v7 = *(v6 + 16);
  if (v7)
  {
    v15[1] = *(v1 + 128);
    v15[2] = v1;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = v6 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);

    do
    {
      v9(v5, v11, v2);
      sub_10008ACC8();
      sub_1000474F0(&qword_1000D7340, 255, &type metadata accessor for CancellationError);
      v13 = swift_allocError();
      sub_10008AAA8();
      v15[3] = v13;
      sub_10008AC98();
      (*(v8 - 8))(v5, v2);
      v11 += v12;
      --v7;
    }

    while (v7);
  }

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t sub_10003EE98(uint64_t a1, uint64_t a2)
{
  v4 = sub_10002A958(&qword_1000D66F8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  (*(v5 + 16))(&v13 - v6, a1, v4);
  v8 = *(a2 + 128);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 128) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1000403A8(0, v8[2] + 1, 1, v8, &qword_1000D72F0, &unk_1000A7520, &qword_1000D66F8);
    *(a2 + 128) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1000403A8(v10 > 1, v11 + 1, 1, v8, &qword_1000D72F0, &unk_1000A7520, &qword_1000D66F8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 128) = v8;
  return sub_10003F05C();
}

uint64_t sub_10003F05C()
{
  v1 = sub_10002A958(&qword_1000D66F8);
  v2 = *(v1 - 8);
  result = __chkstk_darwin(v1);
  v5 = &v9 - v4;
  v6 = *(v0 + 128);
  if (*(v6 + 16))
  {
    v7 = *(v0 + 120);
    if (v7 <= 0)
    {
      *(v0 + 120) = v7 + 1;
      v8 = result;
      (*(v2 + 16))(v5, v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), result);
      sub_100040FEC(0, 1);
      sub_10008ACA8();
      return (*(v2 + 8))(v5, v8);
    }
  }

  return result;
}

unint64_t sub_10003F19C()
{
  if (qword_1000D5FD0 != -1)
  {
    swift_once();
  }

  sub_100048204();
  v0 = sub_100089B28();
  v2 = v1;
  sub_10002A958(&qword_1000D72D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000A64C0;
  *(inited + 32) = 0xD000000000000026;
  v4 = inited + 32;
  *(inited + 72) = &type metadata for Data;
  *(inited + 40) = 0x80000001000A2BB0;
  *(inited + 48) = v0;
  *(inited + 56) = v2;
  v5 = sub_100041E88(inited);
  swift_setDeallocating();
  sub_100048984(v4);
  return v5;
}

uint64_t sub_10003F2F4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10003F328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  v5 = __chkstk_darwin(v4);
  v7 = (&v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v10 = (&v76 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  v78 = 0;
  v79 = v15;
  v76 = v4;
  while (1)
  {
    sub_100047600(v13, v10, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    sub_100047600(v14, v7, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if (*v10 != *v7 || (v16 = v4[5], v17 = v10 + v16, v18 = v7 + v16, (sub_100089C98() & 1) == 0))
    {
LABEL_80:
      sub_100047668(v7, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      sub_100047668(v10, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
      return 0;
    }

    v19 = *(type metadata accessor for CRLUSDRendering.BookmarkableURL(0) + 20);
    v20 = *&v17[v19];
    v21 = *&v17[v19 + 8];
    v22 = &v18[v19];
    v23 = *v22;
    v24 = v22[1];
    v25 = v21 >> 62;
    v26 = v24 >> 62;
    if (v21 >> 62 == 3)
    {
      if (v20)
      {
        v27 = 0;
      }

      else
      {
        v27 = v21 == 0xC000000000000000;
      }

      if (v27 && v24 >> 62 == 3 && !v23 && v24 == 0xC000000000000000)
      {
        goto LABEL_66;
      }

LABEL_31:
      v30 = 0;
      if (v26 <= 1)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    if (v25 > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_31;
      }

      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      v33 = __OFSUB__(v31, v32);
      v30 = v31 - v32;
      if (v33)
      {
        goto LABEL_85;
      }

      if (v26 <= 1)
      {
        goto LABEL_29;
      }
    }

    else if (v25)
    {
      LODWORD(v30) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_86;
      }

      v30 = v30;
      if (v26 <= 1)
      {
LABEL_29:
        if (v26)
        {
          LODWORD(v34) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
          }

          v34 = v34;
        }

        else
        {
          v34 = BYTE6(v24);
        }

        goto LABEL_38;
      }
    }

    else
    {
      v30 = BYTE6(v21);
      if (v26 <= 1)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    if (v26 != 2)
    {
      if (v30)
      {
        goto LABEL_80;
      }

      goto LABEL_66;
    }

    v36 = *(v23 + 16);
    v35 = *(v23 + 24);
    v33 = __OFSUB__(v35, v36);
    v34 = v35 - v36;
    if (v33)
    {
      goto LABEL_84;
    }

LABEL_38:
    if (v30 != v34)
    {
      goto LABEL_80;
    }

    if (v30 < 1)
    {
      goto LABEL_66;
    }

    if (v25 > 1)
    {
      break;
    }

    if (v25)
    {
      *&v80 = v14;
      v40 = v20;
      if (v20 >> 32 < v20)
      {
        goto LABEL_87;
      }

      v41 = sub_100089B68();
      if (v41)
      {
        v77 = v41;
        v42 = sub_100089B88();
        if (__OFSUB__(v40, v42))
        {
          goto LABEL_90;
        }

        v38 = v40 - v42 + v77;
      }

      else
      {
        v38 = 0;
      }

      goto LABEL_64;
    }

    v82[0] = v20;
    LOWORD(v82[1]) = v21;
    BYTE2(v82[1]) = BYTE2(v21);
    BYTE3(v82[1]) = BYTE3(v21);
    BYTE4(v82[1]) = BYTE4(v21);
    BYTE5(v82[1]) = BYTE5(v21);
LABEL_60:
    v43 = v23;
    v44 = v78;
    sub_10003FFC4(v82, v43, v24, &v81);
    v78 = v44;
    if (v44)
    {
      goto LABEL_91;
    }

    if (!v81)
    {
      goto LABEL_80;
    }

LABEL_66:
    v47 = v4[6];
    v48 = *(v10 + v47);
    v49 = *(v10 + v47 + 8);
    v50 = (v7 + v47);
    if (v48 != *v50 || v49 != v50[1])
    {
      goto LABEL_80;
    }

    v52 = v4[7];
    v53 = (v10 + v52);
    v54 = *(v10 + v52 + 16);
    v55 = v7 + v52;
    if (v54)
    {
      if ((v55[16] & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    else
    {
      if (v55[16])
      {
        goto LABEL_80;
      }

      v57 = *v53;
      v56 = v53[1];
      v59 = *v55;
      v58 = *(v55 + 1);
      v85[0] = sub_10004B9A0(*v53);
      *&v60 = v57;
      *(&v60 + 1) = v56;
      v80 = v60;
      v85[1] = sub_10004B9A0(HIDWORD(v57));
      v85[2] = sub_10004B9A0(DWORD2(v80));
      v85[3] = sub_10004B9A0(HIDWORD(v80));
      v61 = sub_100081D90(v85, &v86);
      v77 = v13;
      v62 = v4;
      v64 = v63;
      v83[0] = sub_10004B9A0(v59);
      *&v65 = v59;
      *(&v65 + 1) = v58;
      v80 = v65;
      v83[1] = sub_10004B9A0(HIDWORD(v59));
      v83[2] = sub_10004B9A0(DWORD2(v80));
      v83[3] = sub_10004B9A0(HIDWORD(v80));
      v66 = sub_100081D90(v83, v84);
      v67 = v14;
      v69 = v68;
      LOBYTE(v56) = sub_10004185C(v61, v64, v66, v68);
      v70 = v69;
      v14 = v67;
      sub_10002AC1C(v66, v70);
      v71 = v64;
      v4 = v62;
      v13 = v77;
      sub_10002AC1C(v61, v71);
      if ((v56 & 1) == 0)
      {
        goto LABEL_80;
      }
    }

    v72 = v4[8];
    v73 = vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v10 + v72 + 16), *(v7 + v72 + 16)), vceqq_f32(*(v10 + v72), *(v7 + v72))), vandq_s8(vceqq_f32(*(v10 + v72 + 32), *(v7 + v72 + 32)), vceqq_f32(*(v10 + v72 + 48), *(v7 + v72 + 48)))));
    v74 = v73 >> 31;
    sub_100047668(v7, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    sub_100047668(v10, type metadata accessor for CRLUSDRendering.SurfaceRequest.Item);
    if ((v73 & 0x80000000) != 0)
    {
      v14 += v79;
      v13 += v79;
      if (--v11)
      {
        continue;
      }
    }

    return v74;
  }

  if (v25 != 2)
  {
    memset(v82, 0, 14);
    goto LABEL_60;
  }

  *&v80 = v14;
  v37 = *(v20 + 16);
  v77 = *(v20 + 24);
  v38 = sub_100089B68();
  if (v38)
  {
    v39 = sub_100089B88();
    if (__OFSUB__(v37, v39))
    {
      goto LABEL_89;
    }

    v38 += v37 - v39;
  }

  if (__OFSUB__(v77, v37))
  {
    goto LABEL_88;
  }

LABEL_64:
  sub_100089B78();
  v45 = v23;
  v46 = v78;
  sub_10003FFC4(v38, v45, v24, v82);
  v78 = v46;
  if (!v46)
  {
    v4 = v76;
    v14 = v80;
    if ((v82[0] & 1) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_66;
  }

LABEL_91:

  __break(1u);
  return result;
}

unint64_t sub_10003F9EC(uint64_t a1, uint64_t a2)
{
  sub_10008B268();
  sub_10008AB98();
  v4 = sub_10008B2C8();

  return sub_10003FBD8(a1, a2, v4);
}

unint64_t sub_10003FA64(uint64_t a1)
{
  v2 = sub_10008B258();

  return sub_10003FC90(a1, v2);
}

unint64_t sub_10003FAA8(uint64_t a1)
{
  sub_100089DA8();
  sub_1000474F0(&qword_1000D7308, 255, &type metadata accessor for UUID);
  v2 = sub_10008AAD8();

  return sub_10003FCFC(a1, v2);
}

unint64_t sub_10003FB44(uint64_t a1)
{
  sub_10008AB38();
  sub_10008B268();
  sub_10008AB98();
  v2 = sub_10008B2C8();

  return sub_10003FEC0(a1, v2);
}

unint64_t sub_10003FBD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10008B158())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003FC90(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10003FCFC(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_100089DA8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1000474F0(&qword_1000D7310, 255, &type metadata accessor for UUID);
      v15 = sub_10008AAF8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_10003FEC0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_10008AB38();
      v8 = v7;
      if (v6 == sub_10008AB38() && v8 == v9)
      {
        break;
      }

      v11 = sub_10008B158();

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

uint64_t sub_10003FFC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100089B68();
    if (v10)
    {
      v11 = sub_100089B88();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100089B78();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100089B68();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_100089B88();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100089B78();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1000401F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000417A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_10002AC1C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10003FFC4(v13, a3, a4, &v12);
  v10 = v4;
  sub_10002AC1C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

size_t sub_1000403A8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  sub_10002A958(a5);
  v14 = *(sub_10002A958(a7) - 8);
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
  v19 = *(sub_10002A958(a7) - 8);
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

void sub_100040590(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      sub_10008B278(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_10008AB98();

        sub_10008AB98();

        v7 ^= sub_10008B2C8();
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
}

void sub_1000406FC(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = *(*(a2 + 48) + 16 * v11 + 8);
    v13 = *(*(a2 + 56) + 8 * v11);

    if (!v12)
    {
LABEL_20:

      sub_10008B278(v8);
      return;
    }

    sub_10008AB98();

    if (v13 == 2)
    {
      sub_10008B278(0);
    }

    else
    {
      sub_10008B278(1uLL);
      sub_10008B288(v13 & 1);
      sub_10008B288(BYTE1(v13) & 1);
      sub_10008B288(BYTE2(v13) & 1);
      sub_10008B288(BYTE3(v13) & 1);
      if ((v13 & 0x7FFFFF00000000) == 0 && (v13 & 0x7F80000000000000) == 0)
      {
        v15 = 0;
      }

      else
      {
        v15 = HIDWORD(v13);
      }

      sub_10008B298(v15);
    }

    v6 &= v6 - 1;
    v8 ^= sub_10008B2C8();
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1000408A8(__n128 a1)
{
  if (a1.n128_f32[0] == 0.0)
  {
    v1 = 0.0;
  }

  else
  {
    v1 = a1.n128_f32[0];
  }

  sub_10008B298(LODWORD(v1));
  v2 = a1.n128_f32[1];
  if (a1.n128_f32[1] == 0.0)
  {
    v2 = 0.0;
  }

  sub_10008B298(LODWORD(v2));
  v3 = a1.n128_f32[2];
  if (a1.n128_f32[2] == 0.0)
  {
    v3 = 0.0;
  }

  sub_10008B298(LODWORD(v3));
}

uint64_t sub_100040920(void *a1)
{
  v1 = [a1 userInfo];
  v2 = sub_10008AAC8();

  if (!*(v2 + 16) || (v3 = sub_10003F9EC(0xD000000000000026, 0x80000001000A2BB0), (v4 & 1) == 0))
  {

    return 0;
  }

  sub_10002A9E0(*(v2 + 56) + 32 * v3, &v8);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (qword_1000D5FD8 != -1)
  {
    swift_once();
  }

  sub_1000473D4();
  sub_100089B18();
  sub_10002AC1C(v6, v7);
  return v8;
}

void sub_100040A98(uint64_t a1, char a2)
{
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  do
  {
    while (1)
    {
      if (!v9)
      {
        while (1)
        {
          v11 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          if (v11 >= v10)
          {
            goto LABEL_16;
          }

          v9 = *(a1 + 64 + 8 * v11);
          ++v6;
          if (v9)
          {
            v6 = v11;
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      if (*(*(a1 + 56) + ((v6 << 9) | (8 * v12))) == 2)
      {
        break;
      }

      v13 = __OFADD__(v5, 1);
      v4 = ++v5;
      if (v13)
      {
        goto LABEL_25;
      }
    }

    v13 = __OFADD__(v3++, 1);
  }

  while (!v13);
  __break(1u);
LABEL_16:
  sub_100089E08();
  v20 = v14;
  sub_10002A958(&qword_1000D6C70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1000A64C0;
  *(v15 + 56) = &type metadata for Float;
  *(v15 + 64) = &protocol witness table for Float;
  *(v15 + 32) = v20;
  v21._countAndFlagsBits = sub_10008AB48();
  sub_10008ABB8(v21);

  v22._countAndFlagsBits = 2127904;
  v22._object = 0xE300000000000000;
  sub_10008ABB8(v22);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000A64C0;
  *(v16 + 56) = &type metadata for Float;
  *(v16 + 64) = &protocol witness table for Float;
  *(v16 + 32) = DWORD1(v20);
  v23._countAndFlagsBits = sub_10008AB48();
  sub_10008ABB8(v23);

  v24._countAndFlagsBits = 2127904;
  v24._object = 0xE300000000000000;
  sub_10008ABB8(v24);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1000A64C0;
  *(v17 + 56) = &type metadata for Float;
  *(v17 + 64) = &protocol witness table for Float;
  *(v17 + 32) = DWORD2(v20);
  v25._countAndFlagsBits = sub_10008AB48();
  sub_10008ABB8(v25);

  v26._countAndFlagsBits = 41;
  v26._object = 0xE100000000000000;
  sub_10008ABB8(v26);
  sub_10008AEB8(69);
  v27._object = 0x80000001000A2C40;
  v27._countAndFlagsBits = 0xD000000000000012;
  sub_10008ABB8(v27);
  v28._countAndFlagsBits = 40;
  v28._object = 0xE100000000000000;
  sub_10008ABB8(v28);

  v29._countAndFlagsBits = 8236;
  v29._object = 0xE200000000000000;
  sub_10008ABB8(v29);
  if (__OFADD__(v4, v3))
  {
    goto LABEL_26;
  }

  v30._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v30);

  v31._countAndFlagsBits = 0x2820736D696E6120;
  v31._object = 0xE800000000000000;
  sub_10008ABB8(v31);
  v32._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v32);

  v33._countAndFlagsBits = 0x2C65766974636120;
  v33._object = 0xE900000000000020;
  sub_10008ABB8(v33);
  v34._countAndFlagsBits = sub_10008B138();
  sub_10008ABB8(v34);

  v35._countAndFlagsBits = 0xD000000000000015;
  v35._object = 0x80000001000A2C60;
  sub_10008ABB8(v35);
  if (a2)
  {
    v18._countAndFlagsBits = 1702195828;
  }

  else
  {
    v18._countAndFlagsBits = 0x65736C6166;
  }

  if (a2)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE500000000000000;
  }

  v18._object = v19;
  sub_10008ABB8(v18);

  v36._countAndFlagsBits = 41;
  v36._object = 0xE100000000000000;
  sub_10008ABB8(v36);
}

unint64_t sub_100040E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_10002A958(&qword_1000D66F8);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100040FEC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000403A8(isUniquelyReferenced_nonNull_native, v10, 1, v4, &qword_1000D72F0, &unk_1000A7520, &qword_1000D66F8);
    *v2 = v4;
  }

  result = sub_100040E98(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1000410CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002A958(&unk_1000D7FE0);
    v3 = sub_10008AFC8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003F9EC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1000411C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002A958(&unk_1000D85F0);
    v3 = sub_10008AFC8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003F9EC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_1000412DC(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = 0;
  a1.i32[3] = a2.i32[0];
  a3.i32[3] = a4.i32[0];
  if (vminv_u16(vmovn_s32(vceqq_f32(a1, a3))))
  {
    v5 = vmovn_s32(vceqq_f32(a2, a4));
    if (v5.i8[2])
    {
      v4 = v5.i8[4];
    }
  }

  return v4 & 1;
}

uint64_t sub_100041318(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 2u)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        if (a6 == 1)
        {
          goto LABEL_18;
        }
      }

      else if (a6 == 2)
      {
        goto LABEL_18;
      }
    }

    else if (!a6)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (a3 > 4u)
  {
    if (a3 != 5)
    {
      return a6 == 6 && !(a5 | a4);
    }

    if (a6 != 5)
    {
      return 0;
    }

    if (a2)
    {
      if (!a5)
      {
        return 0;
      }

      return a1 == a4 && a2 == a5 || (sub_10008B158() & 1) != 0;
    }

    return !a5;
  }

  if (a3 != 3)
  {
    if (a6 != 4)
    {
      return 0;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

      if (a5 >= 2)
      {
        return a1 == a4 && a2 == a5 || (sub_10008B158() & 1) != 0;
      }

      return 0;
    }

    return !a5;
  }

  if (a6 != 3)
  {
    return 0;
  }

LABEL_18:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_10008B158();
}

uint64_t sub_100041460(float32x4_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2].i64[0];
  v7 = a1[2].u64[1];
  v6 = a1[3].i64[0];
  if (!(v7 >> 62))
  {
    v12 = *(a2 + 40);
    if (v12 >> 62)
    {
      return 0;
    }

    v14 = *a2;
    v13 = *(a2 + 16);
    v14.i64[1] = *(a2 + 8);
    v4.i32[3] = v3.i32[0];
    v14.i32[3] = v13.i32[0];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v4, v14))) & 1) == 0)
    {
      return 0;
    }

    v13.i64[1] = *(a2 + 24);
    v15 = vmovn_s32(vceqq_f32(v3, v13));
    if ((v15.i8[2] & 1) == 0)
    {
      return 0;
    }

    if ((v15.i8[4] & 1) == 0)
    {
      return 0;
    }

    v16 = *(a2 + 48);
    return (sub_10003C954(v5, *(a2 + 32)) & 1) != 0 && ((v7 ^ v12) & 1) == 0 && (sub_10003CB3C(v6, v16) & 1) != 0;
  }

  if (v7 >> 62 != 1)
  {
    v17 = vorrq_s8(v3, vdupq_laneq_s64(v4, 1)).u64[0];
    if (v7 == 0x8000000000000000 && (v17 | v4.i64[0] | v3.i64[1] | v5 | v6) == 0)
    {
      v20 = *(a2 + 40);
      if (v20 >> 62 != 2)
      {
        return 0;
      }

      if (v20 != 0x8000000000000000)
      {
        return 0;
      }

      v21 = vorrq_s8(*a2, *(a2 + 16));
      if (*&vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL)) | *(a2 + 32) | *(a2 + 48))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == 0x8000000000000000 && v4.i64[0] == 1 && !(v6 | v5 | v17 | v3.i64[1]))
      {
        v19 = *(a2 + 40);
        if (v19 >> 62 != 2 || *(a2 + 48) || v19 != 0x8000000000000000 || *a2 != 1)
        {
          return 0;
        }
      }

      else
      {
        v22 = *(a2 + 40);
        if (v22 >> 62 != 2 || *(a2 + 48) || v22 != 0x8000000000000000 || *a2 != 2)
        {
          return 0;
        }
      }

      v23 = vorrq_s8(*(a2 + 8), *(a2 + 24));
      if (vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))
      {
        return 0;
      }
    }

    return 1;
  }

  if (*(a2 + 40) >> 62 != 1)
  {
    return 0;
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);

  return sub_100041318(v4.i64[0], v4.i64[1], v3.u8[0], v8, v9, v10);
}

unint64_t sub_100041694(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10002A958(&qword_1000D72F8);
  v3 = sub_10008AFC8();
  v13 = *(a1 + 32);
  result = sub_10003FA64(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_10003FA64(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000417A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100089B68();
  v11 = result;
  if (result)
  {
    result = sub_100089B88();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100089B78();
  sub_10003FFC4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_10004185C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10002AC70(a3, a4);
          return sub_1000401F4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1000419C4(uint64_t a1, uint64_t a2)
{
  if ((sub_100089C98() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  if ((sub_10004185C(*(a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 8), *(a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 8)) & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CRLUSDRendering.SceneRequest(0);
  v6 = *(v5 + 20);
  v7 = a1 + v6;
  v8 = *(a1 + v6 + 16);
  v9 = a2 + v6;
  v10 = v8;
  v10.i32[3] = *v7;
  v11 = *(v9 + 16);
  v11.i32[3] = *v9;
  v12 = 0;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v10, v11))) & 1) != 0 && (vmovn_s32(vceqq_f32(v8, *(v9 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v7 + 32), *(v9 + 32)), vceqq_f64(*(v7 + 48), *(v9 + 48))), xmmword_1000A64D0)) & 0xF) == 0 && *(v7 + 64) == *(v9 + 64))
  {
    return CGRectEqualToRect(*(a1 + *(v5 + 24)), *(a2 + *(v5 + 24)));
  }

  return v12;
}

uint64_t sub_100041AE8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for CRLUSDRendering.SurfaceRequest.Item(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((sub_100089C98() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for CRLUSDRendering.BookmarkableURL(0);
  if ((sub_10004185C(*&v6[*(v8 + 20)], *&v6[*(v8 + 20) + 8], *&v7[*(v8 + 20)], *&v7[*(v8 + 20) + 8]) & 1) == 0)
  {
    return 0;
  }

  v9 = v4[6];
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 != *v12 || v11 != v12[1])
  {
    return 0;
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 16);
  v18 = (a2 + v15);
  if (v17)
  {
    if (v18[1].n128_u8[0])
    {
LABEL_16:
      v26 = v4[8];
      return vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(a1 + v26 + 16), *(a2 + v26 + 16)), vceqq_f32(*(a1 + v26), *(a2 + v26))), vandq_s8(vceqq_f32(*(a1 + v26 + 32), *(a2 + v26 + 32)), vceqq_f32(*(a1 + v26 + 48), *(a2 + v26 + 48))))) >> 31;
    }
  }

  else if ((v18[1].n128_u8[0] & 1) == 0)
  {
    v27 = *v18;
    v19 = CRL3DRotation.rawValue.getter(*v16);
    v21 = v20;
    v22 = CRL3DRotation.rawValue.getter(v27);
    v24 = v23;
    v25 = sub_10004185C(v19, v21, v22, v23);
    sub_10002AC1C(v22, v24);
    sub_10002AC1C(v19, v21);
    if (v25)
    {
      goto LABEL_16;
    }
  }

  return 0;
}

BOOL sub_100041C90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = v2;
  v3.i32[3] = *a1;
  v4 = *(a2 + 16);
  v4.i32[3] = *a2;
  if ((vminv_u16(vmovn_s32(vceqq_f32(v3, v4))) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if ((vmovn_s32(vceqq_f32(v2, *(a2 + 16))).i8[6] & 1) != 0 && (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))), xmmword_1000A64D0)) & 0xF) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v8 = a1;
    result = CGRectEqualToRect(*(a1 + 72), *(a2 + 72));
    if (result)
    {
      result = 0;
      if (((*(v8 + 104) ^ *(a2 + 104)) & 1) == 0 && *(v8 + 112) == *(a2 + 112) && *(v8 + 120) == *(a2 + 120) && *(v8 + 128) == *(a2 + 128) && *(v8 + 132) == *(a2 + 132) && *(v8 + 136) == *(a2 + 136))
      {
        return (sub_10003F328(*(v8 + 144), *(a2 + 144)) & 1) != 0 && *(v8 + 152) == *(a2 + 152);
      }
    }
  }

  return result;
}

unint64_t sub_100041E88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002A958(&qword_1000D72E8);
    v3 = sub_10008AFC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002E1B4(v4, &v13, &qword_1000D72E0);
      v5 = v13;
      v6 = v14;
      result = sub_10003F9EC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000489EC(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100041FE4()
{
  sub_10008B268();
  sub_10008AB98();
  v0 = sub_10008B2C8();

  return sub_100041FB8(v0);
}

unint64_t sub_100042050(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002A958(&unk_1000D85A0);
    v3 = sub_10008AFC8();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100041FE4();
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 56) + 16 * result);
      *v9 = v6;
      v9[1] = v5;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
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

unint64_t sub_100042138(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D7300);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002A958(&unk_1000D85E0);
    v7 = sub_10008AFC8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002E1B4(v9, v5, &qword_1000D7300);
      result = sub_10003FAA8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100089DA8();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa(0);
      result = sub_100047B60(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, _s6CoreREO19SceneRenderingStateC15SnapshotRequestVMa);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
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

unint64_t sub_100042354(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10002A958(&qword_1000D7330);
    v3 = sub_10008AFC8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10002E1B4(v4, &v11, &qword_1000D7338);
      v5 = v11;
      result = sub_10003FB44(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000489EC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10004247C(uint64_t a1)
{
  v2 = sub_10002A958(&qword_1000D7870);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10002A958(&unk_1000D85B0);
    v7 = sub_10008AFC8();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10002E1B4(v9, v5, &qword_1000D7870);
      result = sub_10003FAA8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_100089DA8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 48 * v13);
      v17 = *(v8 + 1);
      v18 = *(v8 + 2);
      *v16 = *v8;
      v16[1] = v17;
      v16[2] = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
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

uint64_t sub_100042678(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B72616D6B6F6F62 && a2 == 0xEF6C7255656C6261;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x46746C7561666564 && a2 == 0xEC000000656D6172)
  {

    return 2;
  }

  else
  {
    v6 = sub_10008B158();

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

uint64_t sub_1000427A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4F466172656D6163 && a2 == 0xE900000000000056;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x724664656C616373 && a2 == 0xEF657A6953656D61 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A2E60 == a2 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73746E65746E6F63 && a2 == 0xED0000656C616353)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100042978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D696E4179616C70 && a2 == 0xEE00736E6F697461;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696E416573756170 && a2 == 0xEF736E6F6974616DLL || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000A2E20 == a2 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696E417465736572 && a2 == 0xEF736E6F6974616DLL || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D696E41706F7473 && a2 == 0xEE00736E6F697461)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100042B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465737561507369 && a2 == 0xE800000000000000;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C706D6F437369 && a2 == 0xEA00000000006574 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6979616C507369 && a2 == 0xE900000000000067 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6570706F74537369 && a2 == 0xE900000000000064 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100042D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x756F426C65646F6DLL && a2 == 0xEB0000000073646ELL;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xEA0000000000736ELL || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6956734977656976 && a2 == 0xED0000656C626973 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_100042E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E6964616F6CLL && a2 == 0xE700000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xE900000000000067 || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_10004303C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7245676E69646F63 && a2 == 0xEB00000000726F72;
  if (v4 || (sub_10008B158() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7272456C7275 && a2 == 0xE800000000000000 || (sub_10008B158() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x45676E6964616F6CLL && a2 == 0xEC000000726F7272 || (sub_10008B158() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7272456574617473 && a2 == 0xEA0000000000726FLL || (sub_10008B158() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4574756F656D6974 && a2 == 0xEC000000726F7272 || (sub_10008B158() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xEE00726F7272456ELL || (sub_10008B158() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x45636972656E6567 && a2 == 0xEC000000726F7272)
  {

    return 6;
  }

  else
  {
    v6 = sub_10008B158();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}