uint64_t sub_1B1E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B23C()
{
  result = qword_1C0EA0;
  if (!qword_1C0EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EA8);
    sub_1ACF0();
    sub_1AF64(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0EA0);
  }

  return result;
}

unint64_t sub_1B34C()
{
  result = qword_1C0ED0;
  if (!qword_1C0ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0ED0);
  }

  return result;
}

unint64_t sub_1B3B0()
{
  result = qword_1C0EE0;
  if (!qword_1C0EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EB0);
    sub_1D4A4(&qword_1C0ED8, &qword_1C0EB0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0EE0);
  }

  return result;
}

uint64_t sub_1B4AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1B4EC()
{
  result = qword_1C0F10;
  if (!qword_1C0F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0F10);
  }

  return result;
}

id sub_1B540()
{
  v0 = sub_1DBA4();

  return v0;
}

uint64_t sub_1B574@<X0>(void *a1@<X8>)
{
  sub_1DB40(v1, v10);
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  v3 = objc_allocWithZone(type metadata accessor for ContextMenuInteractionView.Coordinator());
  sub_1D19C(v10, v7, &qword_1C4860);
  sub_1D19C(v8, v6, &qword_1C12E8);
  v4 = sub_7BA0C(v7, v6);
  sub_15340(v8, &qword_1C12E8);
  result = sub_15340(v10, &qword_1C4860);
  *a1 = v4;
  return result;
}

uint64_t sub_1B698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC78();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1B6FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC78();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1B760()
{
  sub_1DC78();
  sub_14325C();
  __break(1u);
}

uint64_t sub_1B7A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1B804@<X0>(void *a1@<X8>)
{
  result = sub_142E6C();
  *a1 = v3;
  return result;
}

uint64_t sub_1B880@<X0>(void *a1@<X8>)
{
  result = sub_14124C();
  *a1 = v3;
  return result;
}

uint64_t sub_1B918(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroy_36Tm(uint64_t a1)
{

  return _swift_deallocObject(v1, a1, 7);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B9DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

uint64_t sub_1BA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1BB38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F78);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1BBE8()
{
  type metadata accessor for NowPlayingQueueController(319);
  if (v0 <= 0x3F)
  {
    sub_1C124(319, &qword_1C0FE8, &type metadata for Bool, &type metadata accessor for State);
    if (v1 <= 0x3F)
    {
      sub_1C174(319, &unk_1C0FF0, &type metadata accessor for ColorSchemeContrast);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BCE8(uint64_t *a1, uint64_t a2, int *a3)
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

  v8 = sub_14413C();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1030);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1038);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

char *sub_1BE80(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_14413C();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1030);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1038);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[11]];

  return v15(v16, a2, a2, v14);
}

void sub_1C004()
{
  type metadata accessor for NowPlayingQueueController(319);
  if (v0 <= 0x3F)
  {
    sub_14413C();
    if (v1 <= 0x3F)
    {
      sub_1C124(319, &qword_1C10A8, &type metadata for CGFloat, &type metadata accessor for Environment);
      if (v2 <= 0x3F)
      {
        sub_1C174(319, &qword_1C10B0, &type metadata accessor for LayoutDirection);
        if (v3 <= 0x3F)
        {
          sub_1C1C8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C124(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C174(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_142A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C1C8()
{
  if (!qword_1C10B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1C10C0);
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C10B8);
    }
  }
}

unint64_t sub_1C270()
{
  result = qword_1C1118;
  if (!qword_1C1118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EB8);
    sub_1B3B0();
    swift_getOpaqueTypeConformance2();
    sub_1AF64(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1118);
  }

  return result;
}

unint64_t sub_1C3AC()
{
  result = qword_1C1130;
  if (!qword_1C1130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0EF8);
    sub_1C464();
    sub_1D4A4(&qword_1C1158, &qword_1C1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1130);
  }

  return result;
}

unint64_t sub_1C464()
{
  result = qword_1C1138;
  if (!qword_1C1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0F38);
    sub_1D4A4(&qword_1C1140, &qword_1C0EF0);
    sub_1D4A4(&qword_1C1148, &qword_1C1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1138);
  }

  return result;
}

uint64_t sub_1C58C(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C608()
{
  result = qword_1C1178;
  if (!qword_1C1178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0F58);
    sub_1C6C0();
    sub_1D4A4(&qword_1C1158, &qword_1C1160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1178);
  }

  return result;
}

unint64_t sub_1C6C0()
{
  result = qword_1C1180;
  if (!qword_1C1180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0F68);
    sub_1D4A4(&qword_1C1188, &qword_1C0F50);
    sub_1D4A4(&qword_1C1148, &qword_1C1150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1180);
  }

  return result;
}

uint64_t sub_1C804(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1C810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C8AC()
{
  result = qword_1C11E8;
  if (!qword_1C11E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11B0);
    sub_1D4A4(&qword_1C11F0, &qword_1C11F8);
    sub_1D4A4(&qword_1C1200, &qword_1C1208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C11E8);
  }

  return result;
}

unint64_t sub_1C990()
{
  result = qword_1C1210;
  if (!qword_1C1210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11E0);
    sub_1D4A4(&qword_1C1218, &qword_1C1220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1210);
  }

  return result;
}

unint64_t sub_1CA40()
{
  result = qword_1C1230;
  if (!qword_1C1230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11E0);
    sub_1C8AC();
    sub_1C990();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1230);
  }

  return result;
}

void sub_1CB78(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

unint64_t sub_1CB9C()
{
  result = qword_1C24C0;
  if (!qword_1C24C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C24C0);
  }

  return result;
}

uint64_t objectdestroy_102Tm()
{
  v1 = type metadata accessor for RowContent(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[5];
  v7 = sub_14413C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  sub_1C804(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v8 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_142C0C();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  sub_1C804(*(v5 + v1[10]), *(v5 + v1[10] + 8));
  v10 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1411CC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v5 + v10, 1, v11))
    {
      (*(v12 + 8))(v5 + v10, v11);
    }
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CE68(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_1CEE4()
{
  v1 = sub_14413C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1CFB0(uint64_t a1)
{
  v4 = *(sub_14413C() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D0A8;

  return sub_B1280(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D0A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D19C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D204(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D2AC()
{
  result = qword_1C1298;
  if (!qword_1C1298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1270);
    sub_1D364();
    sub_1D4A4(&unk_1C2730, &qword_1C12B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1298);
  }

  return result;
}

unint64_t sub_1D364()
{
  result = qword_1C12A0;
  if (!qword_1C12A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1220);
    sub_1D4A4(&qword_1C1218, &qword_1C1220);
    sub_9CCC();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C12A0);
  }

  return result;
}

uint64_t sub_1D4A4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_113Tm()
{
  v1 = (type metadata accessor for HardQueueHeaderView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_14317C();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D640(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1DD10;

  return sub_B2500(a1, v4, v5, v6);
}

uint64_t objectdestroy_124Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1D734(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0A8;

  return sub_B2500(a1, v4, v5, v6);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1D7FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D844(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8A4()
{
  result = qword_1C12C0;
  if (!qword_1C12C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C12C8);
    sub_1D4A4(&qword_1C11A0, &qword_1C1198);
    sub_1AF64(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C12C0);
  }

  return result;
}

uint64_t sub_1D98C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C11C8);
  sub_1CA40();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1D9F4()
{
  result = qword_1C12D0;
  if (!qword_1C12D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C12D8);
    sub_1D4A4(&qword_1C1260, &qword_1C1250);
    sub_1AF64(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C12D0);
  }

  return result;
}

unint64_t sub_1DAEC()
{
  result = qword_1C12E0;
  if (!qword_1C12E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C12E0);
  }

  return result;
}

uint64_t sub_1DB40(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1DBA4()
{
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() clearColor];
  [v1 setBackgroundColor:v2];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C12F0);
  sub_14355C();
  v3 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v5];

  [v1 addInteraction:v3];
  return v1;
}

unint64_t sub_1DC78()
{
  result = qword_1C12F8;
  if (!qword_1C12F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C12F8);
  }

  return result;
}

uint64_t sub_1DD14(uint64_t a1, int a2)
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

uint64_t sub_1DD5C(uint64_t result, int a2, int a3)
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

uint64_t sub_1DDC4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NowPlayingTipViewModel();
  sub_21080(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel);

  v2 = sub_142B9C();
  v4 = v3;
  result = sub_143CAC();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  return result;
}

unint64_t sub_1DEA0()
{
  result = qword_1C1360;
  if (!qword_1C1360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1360);
  }

  return result;
}

uint64_t sub_1DF10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1368);
  __chkstk_darwin(v9 - 8);
  v48 = v38 - v10;
  v46 = sub_14187C();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1370);
  __chkstk_darwin(v12);
  v14 = v38 - v13;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1378);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v51 = v38 - v15;
  v16 = sub_143BCC();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1380);
  sub_1426AC();
  swift_endAccess();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  *v14 = v16;
  v14[8] = 0;
  v18 = &v14[*(v12 + 56)];
  *v18 = sub_1F25C;
  *(v18 + 1) = v17;
  LOBYTE(v76) = a3;
  *&v77 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  sub_143CDC();
  v38[1] = *(&v93 + 1);
  v38[2] = v93;
  v39 = v94;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v89 = v93;
  v90 = v94;
  v91 = v95;
  v19 = v97;
  v92 = v96;
  v85 = v98;
  v86 = v99;
  v87 = v100;
  v88 = v101;
  v20 = sub_20E6C(&v93);
  v21 = 2;
  if (v20 != 1)
  {
    v21 = v19;
  }

  v38[0] = v21;
  v69[0] = v89;
  v69[1] = v90;
  v69[2] = v91;
  v70 = v92;
  v71 = v19;
  v72 = v85;
  v73 = v86;
  v74 = v87;
  v75 = v88;
  sub_15340(v69, &qword_1C2440);
  v22 = swift_allocObject();
  v23 = a1;
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 24) = a2;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  swift_retain_n();
  swift_retain_n();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1388);
  v27 = sub_1D4A4(&qword_1C1390, &qword_1C1370);
  v40 = sub_20EB4();
  v41 = v27;
  v42 = v26;
  v45 = v12;
  sub_14382C();

  sub_15340(v14, &qword_1C1370);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v65 = v81;
  v66 = v82;
  v67 = v83;
  v28 = v76;
  v61 = v77;
  v62 = v78;
  v63 = v79;
  v64 = v80;
  v68 = v84;
  if (sub_20E6C(&v76) == 1)
  {
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v52 = v28;
    v60 = v68;
    v56 = v64;
    sub_15340(&v52, &qword_1C2440);
    v29 = v44;
    v30 = v48;
    v31 = v46;
    (*(v44 + 56))(v48, 1, 1, v46);
    v32 = v43;
    sub_14185C();
    if ((*(v29 + 48))(v30, 1, v31) != 1)
    {
      sub_15340(v30, &qword_1C1368);
    }
  }

  else
  {
    v57 = v65;
    v58 = v66;
    v59 = v67;
    v53 = v61;
    v54 = v62;
    v55 = v63;
    v52 = v28;
    v60 = v68;
    v56 = v64;
    sub_20F8C(v28);
    sub_15340(&v52, &qword_1C2440);
    v33 = v48;
    sub_D9C60(v28);
    sub_20F9C(v28);
    v29 = v44;
    v34 = v46;
    (*(v44 + 56))(v33, 0, 1, v46);
    v32 = v43;
    (*(v29 + 32))(v43, v33, v34);
    v31 = v34;
  }

  sub_14352C();
  sub_143F7C();
  v52 = v45;
  *&v53 = v42;
  *(&v53 + 1) = v41;
  *&v54 = v40;
  swift_getOpaqueTypeConformance2();
  v35 = v49;
  v36 = v51;
  sub_14380C();
  (*(v29 + 8))(v32, v31);
  return (*(v47 + 8))(v36, v35);
}

uint64_t sub_1E774(_OWORD *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v37 = a4;
  v33 = a3;
  v32 = a2;
  v7 = sub_143FBC();
  v36 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_143FDC();
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_143FFC();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = a1[4];
  v20 = a1[6];
  v21 = a1[7];
  v45[5] = a1[5];
  v45[6] = v20;
  v45[7] = v21;
  v22 = a1[1];
  v45[0] = *a1;
  v45[1] = v22;
  v23 = a1[3];
  v45[2] = a1[2];
  v45[3] = v23;
  v45[4] = v19;
  if (sub_20E6C(v45) == 1)
  {
    LOBYTE(aBlock) = v37 & 1;
    v39 = a5;
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    return sub_143CCC();
  }

  else
  {
    sub_20FCC();
    v29 = sub_144D8C();
    sub_143FEC();
    sub_14401C();
    v31 = *(v13 + 8);
    v30 = v12;
    v31(v16, v12);
    v25 = swift_allocObject();
    v26 = v33;
    *(v25 + 16) = v32;
    *(v25 + 24) = v26;
    *(v25 + 32) = v37 & 1;
    *(v25 + 40) = a5;
    v42 = sub_21058;
    v43 = v25;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_11D5C0;
    v41 = &block_descriptor_0;
    v27 = _Block_copy(&aBlock);

    sub_143FCC();
    aBlock = _swiftEmptyArrayStorage;
    sub_21080(&qword_1C81A0, &type metadata accessor for DispatchWorkItemFlags);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13A8);
    sub_1D4A4(&qword_1C81B0, &qword_1C13A8);
    sub_14515C();
    v28 = v29;
    sub_144D2C();
    _Block_release(v27);

    (*(v36 + 8))(v9, v7);
    (*(v34 + 8))(v11, v35);
    return (v31)(v18, v30);
  }
}

uint64_t sub_1EC54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v1[0] = v2[0];
  v1[1] = v2[1];
  v1[5] = v2[5];
  v1[6] = v2[6];
  v1[2] = v2[2];
  v1[3] = v2[3];
  v1[4] = v2[4];
  v1[7] = v2[7];
  if (sub_20E6C(v2) != 1)
  {
    sub_15340(v1, &qword_1C2440);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
  return sub_143CCC();
}

uint64_t sub_1ED84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v12 = v16;
  v13 = v17;
  v14 = v18;
  v15 = v19;
  v0 = v20;
  v9 = v22;
  v10 = v23;
  v11 = v24;
  v3[0] = v16;
  v3[1] = v17;
  v3[2] = v18;
  v3[3] = v19;
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v23;
  v8 = v24;
  if (sub_20E6C(&v16) == 1)
  {
    return sub_15340(v3, &qword_1C2440);
  }

  v2 = sub_15340(v3, &qword_1C2440);
  v0(v2);
}

uint64_t sub_1EEDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v12 = v17;
  v13 = v18;
  v14 = v19;
  v10 = v15;
  v11 = v16;
  v0 = v20;
  v8 = v22;
  v9 = v23;
  v3[2] = v17;
  v3[3] = v18;
  v3[4] = v19;
  v3[0] = v15;
  v3[1] = v16;
  v4 = v20;
  v5 = v21;
  v6 = v22;
  v7 = v23;
  if (sub_20E6C(&v15) == 1)
  {
    return sub_15340(v3, &qword_1C2440);
  }

  v2 = sub_15340(v3, &qword_1C2440);
  v0(v2);
}

__n128 sub_1F030@<Q0>(__n128 *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_1426DC();

  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v34 = v23;
  if (sub_20E6C(&v31) == 1)
  {

    sub_20FAC(&v20);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290);
    sub_143CDC();
    type metadata accessor for NowPlayingTipViewModel();
    sub_21080(&qword_1C1358, type metadata accessor for NowPlayingTipViewModel);
    v2 = sub_142B9C();
    v14 = v35;
    v15 = v36;
    v16 = v37;
    v17 = v38;
    v10 = v31;
    v11 = v32;
    v12 = v33;
    v13 = v34;
    v9.n128_u64[0] = v2;
    v9.n128_u64[1] = v3;
    v18 = v20;
    v19 = v21.n128_u8[0];
    UIScreen.Dimensions.size.getter(&v9);
    v28 = v17;
    v29 = v18;
    v30 = v19;
    v24 = v13;
    v25 = v14;
    v26 = v15;
    v27 = v16;
    v20 = v9;
    v21 = v10;
    v22 = v11;
    v23 = v12;
  }

  v4 = v29;
  *(a1 + 128) = v28;
  *(a1 + 144) = v4;
  *(a1 + 160) = v30;
  v5 = v25;
  *(a1 + 64) = v24;
  *(a1 + 80) = v5;
  v6 = v27;
  *(a1 + 96) = v26;
  *(a1 + 112) = v6;
  v7 = v21;
  *a1 = v20;
  *(a1 + 16) = v7;
  result = v23;
  *(a1 + 32) = v22;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1F26C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v66 = a1;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13B0);
  __chkstk_darwin(v62);
  v4 = v61 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13B8);
  __chkstk_darwin(v5 - 8);
  v7 = (v61 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13C0);
  __chkstk_darwin(v8);
  v63 = v61 - v9;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13C8);
  __chkstk_darwin(v65);
  v11 = v61 - v10;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C13D0);
  __chkstk_darwin(v64);
  v13 = (v61 - v12);
  if ((sub_141D9C() & 1) != 0 && *(v1 + 16) >= 5uLL)
  {
    v43 = *(v1 + 24);
    v42 = *(v1 + 32);
    v44 = swift_allocObject();
    v45 = *(v2 + 144);
    *(v44 + 144) = *(v2 + 128);
    *(v44 + 160) = v45;
    *(v44 + 176) = *(v2 + 160);
    v46 = *(v2 + 80);
    *(v44 + 80) = *(v2 + 64);
    *(v44 + 96) = v46;
    v47 = *(v2 + 112);
    *(v44 + 112) = *(v2 + 96);
    *(v44 + 128) = v47;
    v48 = *(v2 + 16);
    *(v44 + 16) = *v2;
    *(v44 + 32) = v48;
    v49 = *(v2 + 48);
    *(v44 + 48) = *(v2 + 32);
    *(v44 + 64) = v49;
    v50 = swift_allocObject();
    v52 = *(v2 + 80);
    v51 = *(v2 + 96);
    v53 = *(v2 + 48);
    *(v50 + 80) = *(v2 + 64);
    *(v50 + 96) = v52;
    v54 = *(v2 + 144);
    v55 = *(v2 + 112);
    *(v50 + 144) = *(v2 + 128);
    *(v50 + 160) = v54;
    *(v50 + 112) = v51;
    *(v50 + 128) = v55;
    v56 = *(v2 + 16);
    v57 = *(v2 + 32);
    *(v50 + 16) = *v2;
    *(v50 + 32) = v56;
    *(v50 + 176) = *(v2 + 160);
    *(v50 + 48) = v57;
    *(v50 + 64) = v53;
    v58 = *(v2 + 8);
    v59 = *(v58 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_artworkViewModel);
    v60 = *(v58 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_objectGraph);
    *v13 = v43;
    v13[1] = v42;
    v13[2] = v59;
    v13[3] = v60;
    v13[4] = sub_21528;
    v13[5] = v44;
    v13[6] = sub_215D0;
    v13[7] = v50;
    swift_storeEnumTagMultiPayload();
    sub_21300(v2, v67);
    sub_21300(v2, v67);
    sub_213F0();
    sub_21444();

    return sub_14329C();
  }

  else
  {
    v14 = *(v1 + 32);
    v61[3] = *(v1 + 24);
    v61[2] = v14;
    v15 = *(v1 + 48);
    v61[1] = *(v1 + 40);
    v68 = *(v1 + 56);
    v16 = *(&v68 + 1);
    if (*(&v68 + 1))
    {
      *v7 = v68;
      v7[1] = v16;
      v17 = enum case for BubbleImage.symbol(_:);
      v18 = sub_14118C();
      v19 = *(v18 - 8);
      v61[0] = v15;
      v20 = v19;
      (*(v19 + 104))(v7, v17, v18);
      (*(v20 + 56))(v7, 0, 1, v18);
      v21 = swift_allocObject();
      v22 = *(v2 + 144);
      *(v21 + 144) = *(v2 + 128);
      *(v21 + 160) = v22;
      *(v21 + 176) = *(v2 + 160);
      v23 = *(v2 + 80);
      *(v21 + 80) = *(v2 + 64);
      *(v21 + 96) = v23;
      v24 = *(v2 + 112);
      *(v21 + 112) = *(v2 + 96);
      *(v21 + 128) = v24;
      v25 = *(v2 + 16);
      *(v21 + 16) = *v2;
      *(v21 + 32) = v25;
      v26 = *(v2 + 48);
      *(v21 + 48) = *(v2 + 32);
      *(v21 + 64) = v26;
      sub_21300(v2, v67);
      sub_1D19C(&v68, v67, &qword_1C1400);
    }

    else
    {
      v28 = sub_14118C();
      (*(*(v28 - 8) + 56))(v7, 1, 1, v28);
      v29 = swift_allocObject();
      v30 = *(v1 + 144);
      *(v29 + 144) = *(v1 + 128);
      *(v29 + 160) = v30;
      *(v29 + 176) = *(v1 + 160);
      v31 = *(v1 + 80);
      *(v29 + 80) = *(v1 + 64);
      *(v29 + 96) = v31;
      v32 = *(v1 + 112);
      *(v29 + 112) = *(v1 + 96);
      *(v29 + 128) = v32;
      v33 = *(v1 + 16);
      *(v29 + 16) = *v1;
      *(v29 + 32) = v33;
      v34 = *(v1 + 48);
      *(v29 + 48) = *(v1 + 32);
      *(v29 + 64) = v34;
      sub_21300(v1, v67);
    }

    v27 = v63;
    sub_141A2C();
    v35 = sub_14362C();
    sub_14290C();
    v36 = v27 + *(v8 + 36);
    *v36 = v35;
    *(v36 + 8) = v37;
    *(v36 + 16) = v38;
    *(v36 + 24) = v39;
    *(v36 + 32) = v40;
    *(v36 + 40) = 0;
    sub_1D19C(v27, v4, &qword_1C13C0);
    swift_storeEnumTagMultiPayload();
    sub_21338();
    sub_14329C();
    sub_15340(v27, &qword_1C13C0);
    sub_1D19C(v11, v13, &qword_1C13C8);
    swift_storeEnumTagMultiPayload();
    sub_213F0();
    sub_21444();
    sub_14329C();
    return sub_15340(v11, &qword_1C13C8);
  }
}

uint64_t sub_1F998(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
  return sub_143DAC();
}

uint64_t sub_1FA0C(uint64_t a1)
{
  v1 = *(a1 + 128);
  if (v1)
  {
    v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1408);
  return sub_143DAC();
}

uint64_t sub_1FADC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1438);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  *v9 = sub_14307C();
  *(v9 + 1) = 0x4028000000000000;
  v9[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1440);
  sub_1FDDC(a1, &v9[*(v10 + 44)]);
  v21 = sub_14307C();
  v23 = 0;
  v11 = a1[6];
  v12 = a1[7];
  v13 = a1[4];
  v14 = a1[5];

  sub_2172C(v11);

  sub_2172C(v13);

  sub_2173C(v13);

  sub_2173C(v11);
  v15 = v23;
  v22 = v7;
  sub_1D19C(v9, v7, &qword_1C1438);
  sub_1D19C(v7, a2, &qword_1C1438);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1448) + 48);
  v17 = v21;
  *&v24 = v21;
  *(&v24 + 1) = 0x4028000000000000;
  LOBYTE(v25) = v15;
  *(&v25 + 1) = 0x6B72616D78;
  *&v26 = 0xE500000000000000;
  *(&v26 + 1) = v11;
  *&v27 = v12;
  *(&v27 + 1) = 0x72616D6B63656863;
  *&v28 = 0xE90000000000006BLL;
  *(&v28 + 1) = v13;
  v29 = v14;
  *(v16 + 80) = v14;
  v18 = v25;
  *v16 = v24;
  *(v16 + 16) = v18;
  v19 = v27;
  *(v16 + 32) = v26;
  *(v16 + 48) = v19;
  *(v16 + 64) = v28;
  sub_1D19C(&v24, v30, &qword_1C1450);
  sub_15340(v9, &qword_1C1438);
  v30[0] = v17;
  v30[1] = 0x4028000000000000;
  v31 = v15;
  v32 = 0x6B72616D78;
  v33 = 0xE500000000000000;
  v34 = v11;
  v35 = v12;
  v36 = 0x72616D6B63656863;
  v37 = 0xE90000000000006BLL;
  v38 = v13;
  v39 = v14;
  sub_15340(v30, &qword_1C1450);
  return sub_15340(v22, &qword_1C1438);
}

uint64_t sub_1FDDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1458);
  v4 = v3 - 8;
  v5 = __chkstk_darwin(v3);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = a1[2];
  v10 = a1[3];

  sub_143EAC();
  sub_142A9C();
  v11 = v46;
  v12 = v48;
  KeyPath = v51;
  v43 = v50;
  v55 = v47;
  v53 = v49;
  v13 = &v8[*(v4 + 44)];
  v14 = *(sub_142D2C() + 20);
  v15 = enum case for RoundedCornerStyle.continuous(_:);
  v16 = sub_14310C();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  __asm { FMOV            V0.2D, #4.0 }

  *v13 = _Q0;
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1460) + 36)] = 256;
  *v8 = v9;
  *(v8 + 1) = v10;
  *(v8 + 2) = v11;
  v8[24] = v55;
  *(v8 + 25) = *v54;
  *(v8 + 7) = *&v54[3];
  *(v8 + 4) = v12;
  v8[40] = v53;
  *(v8 + 41) = *v52;
  *(v8 + 11) = *&v52[3];
  v22 = KeyPath;
  *(v8 + 6) = v43;
  *(v8 + 7) = v22;
  v23 = a1[1];
  v66 = *a1;
  v67 = v23;
  sub_9CCC();

  v24 = sub_1437EC();
  v26 = v25;
  LOBYTE(v10) = v27;
  v29 = v28;
  v43 = v28;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  LOBYTE(a1) = v10 & 1;
  LOBYTE(v66) = v10 & 1;
  LOBYTE(v59) = 1;
  v40 = swift_getKeyPath();
  v30 = v45;
  sub_1D19C(v8, v45, &qword_1C1458);
  v31 = v44;
  sub_1D19C(v30, v44, &qword_1C1458);
  v32 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1468) + 48);
  *&v59 = v24;
  *(&v59 + 1) = v26;
  LOBYTE(v60) = a1;
  *(&v60 + 1) = *v57;
  DWORD1(v60) = *&v57[3];
  v33 = v41;
  v34 = KeyPath;
  *(&v60 + 1) = v29;
  *&v61 = KeyPath;
  BYTE8(v61) = 0;
  HIDWORD(v61) = *&v56[3];
  *(&v61 + 9) = *v56;
  v62 = v41;
  v63 = 0;
  LOBYTE(v64) = 1;
  *(&v64 + 1) = *v58;
  DWORD1(v64) = *&v58[3];
  v35 = v40;
  *(&v64 + 1) = v40;
  v65 = 0x3FE999999999999ALL;
  v36 = v41;
  v37 = v64;
  *(v32 + 32) = v61;
  *(v32 + 48) = v36;
  v38 = v60;
  *v32 = v59;
  *(v32 + 16) = v38;
  *(v32 + 80) = 0x3FE999999999999ALL;
  *(v32 + 64) = v37;
  sub_1D19C(&v59, &v66, &qword_1C1470);
  sub_15340(v8, &qword_1C1458);
  v66 = v24;
  v67 = v26;
  v68 = a1;
  *v69 = *v57;
  *&v69[3] = *&v57[3];
  v70 = v43;
  v71 = v34;
  v72 = 0;
  *v73 = *v56;
  *&v73[3] = *&v56[3];
  v74 = v33;
  v75 = 0;
  v76 = 1;
  *&v77[3] = *&v58[3];
  *v77 = *v58;
  v78 = v35;
  v79 = 0x3FE999999999999ALL;
  sub_15340(&v66, &qword_1C1470);
  return sub_15340(v45, &qword_1C1458);
}

uint64_t sub_201F4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_143EAC();
  a1[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14A0);
  return sub_2026C(a1 + *(v3 + 44));
}

uint64_t sub_2026C@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14A8);
  v1 = __chkstk_darwin(v32);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = (&v32 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14B0);
  v7 = __chkstk_darwin(v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = (&v32 - v10);

  v12 = sub_143C2C();
  if (qword_1BFED8 != -1)
  {
    swift_once();
  }

  v13 = qword_1C1300;
  KeyPath = swift_getKeyPath();
  v15 = qword_1BFEE0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8);
  v17 = __swift_project_value_buffer(v16, qword_1C1308);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14B8);
  (*(*(v16 - 8) + 16))(v11 + *(v18 + 36), v17, v16);
  *v11 = v12;
  v11[1] = KeyPath;
  v11[2] = v13;
  if (qword_1BFEE8 != -1)
  {
    swift_once();
  }

  v19 = sub_143C4C();
  v20 = __swift_project_value_buffer(v19, qword_1C1320);
  v21 = swift_getKeyPath();
  v22 = (v11 + *(v6 + 36));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14C0);
  (*(*(v19 - 8) + 16))(v22 + *(v23 + 28), v20, v19);
  *v22 = v21;
  if (qword_1BFEF0 != -1)
  {
    swift_once();
  }

  v24 = qword_1C1338;
  v25 = qword_1BFEF8;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = sub_143F3C();
  v27 = __swift_project_value_buffer(v26, qword_1C1340);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14C8);
  (*(*(v26 - 8) + 16))(v5 + *(v28 + 36), v27, v26);
  *v5 = v24;
  *(v5 + *(v32 + 36)) = 0x3FB999999999999ALL;
  sub_21A00(v11, v9);
  sub_1D19C(v5, v3, &qword_1C14A8);
  v29 = v33;
  sub_21A00(v9, v33);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14D0);
  sub_1D19C(v3, v29 + *(v30 + 48), &qword_1C14A8);
  sub_15340(v5, &qword_1C14A8);
  sub_21A70(v11);
  sub_15340(v3, &qword_1C14A8);
  return sub_21A70(v9);
}

uint64_t sub_20704()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_14372C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for Font.TextStyle.subheadline(_:), v3);
  v7 = sub_1436BC();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  sub_1436EC();
  v8 = sub_1436FC();
  sub_15340(v2, &unk_1C2B60);
  result = (*(v4 + 8))(v6, v3);
  qword_1C1300 = v8;
  return result;
}

uint64_t sub_208BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8);
  __swift_allocate_value_buffer(v0, qword_1C1308);
  __swift_project_value_buffer(v0, qword_1C1308);
  return sub_14295C();
}

uint64_t sub_2093C()
{
  result = sub_143BDC();
  qword_1C1338 = result;
  return result;
}

uint64_t sub_20984(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, unsigned int *a4)
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  v7 = __swift_project_value_buffer(v6, a3);
  v8 = *a4;
  v9 = *(*(v6 - 8) + 104);

  return v9(v7, v8, v6);
}

double sub_20A10@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v3;
  v7[4] = v6;
  v7[5] = v5;

  sub_2172C(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1488);
  sub_1D4A4(&qword_1C1490, &qword_1C1488);
  sub_143CFC();
  sub_143EAC();
  sub_142A9C();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1498) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

id sub_20B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_143C3C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a2)
  {
    KeyPath = swift_getKeyPath();
    v17 = a1;
    v18 = a2;
    v19 = KeyPath;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_21B3C();

LABEL_6:
    result = sub_14329C();
    v13 = v24;
    v14 = v25;
    v15 = v26;
    *a3 = v23;
    *(a3 + 16) = v13;
    *(a3 + 32) = v14;
    *(a3 + 34) = v15;
    return result;
  }

  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    sub_143C1C();
    (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
    v12 = sub_143C5C();

    (*(v7 + 8))(v9, v6);
    v17 = v12;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 1;
    sub_21B3C();
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_20D78@<X0>(uint64_t *a1@<X8>)
{
  v2 = a1;
  v3 = v1[1];
  v18[0] = *v1;
  v18[1] = v3;
  v4 = v1[3];
  v18[2] = v1[2];
  v18[3] = v4;
  *a1 = sub_143EAC();
  v2[1] = v5;
  v6 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1420) + 44);
  *v6 = sub_14307C();
  *(v6 + 1) = 0x4020000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1428);
  sub_1FADC(v18, &v6[*(v7 + 44)]);
  LOBYTE(v2) = sub_14362C();
  sub_14290C();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1430);
  v17 = &v6[*(result + 36)];
  *v17 = v2;
  *(v17 + 1) = v9;
  *(v17 + 2) = v11;
  *(v17 + 3) = v13;
  *(v17 + 4) = v15;
  v17[40] = 0;
  return result;
}

uint64_t sub_20E6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_20EB4()
{
  result = qword_1C1398;
  if (!qword_1C1398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1388);
    sub_20F38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1398);
  }

  return result;
}

unint64_t sub_20F38()
{
  result = qword_1C13A0;
  if (!qword_1C13A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C13A0);
  }

  return result;
}

id sub_20F8C(id result)
{
  if (result >= 5)
  {
    return result;
  }

  return result;
}

void sub_20F9C(id a1)
{
  if (a1 >= 5)
  {
  }
}

double sub_20FAC(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
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

unint64_t sub_20FCC()
{
  result = qword_1C2160;
  if (!qword_1C2160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C2160);
  }

  return result;
}

uint64_t objectdestroyTm()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21080(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_Ieg_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_2111C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 161))
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

uint64_t sub_21164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 161) = 1;
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

    *(result + 161) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_211E0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1378);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1388);
  sub_1D4A4(&qword_1C1390, &qword_1C1370);
  sub_20EB4();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_21338()
{
  result = qword_1C13D8;
  if (!qword_1C13D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C13C0);
    sub_1D4A4(&qword_1C13E0, &qword_1C13E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C13D8);
  }

  return result;
}

unint64_t sub_213F0()
{
  result = qword_1C13F0;
  if (!qword_1C13F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C13F0);
  }

  return result;
}

unint64_t sub_21444()
{
  result = qword_1C13F8;
  if (!qword_1C13F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C13C8);
    sub_21338();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C13F8);
  }

  return result;
}

uint64_t objectdestroy_30Tm()
{

  v1 = v0[4];
  if (v1 >= 5)
  {
  }

  if (v0[16])
  {
  }

  if (v0[18])
  {
  }

  return _swift_deallocObject(v0, 177, 7);
}

uint64_t sub_215D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_21620(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21684()
{
  result = qword_1C1410;
  if (!qword_1C1410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1418);
    sub_213F0();
    sub_21444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1410);
  }

  return result;
}

uint64_t sub_2172C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2173C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21764(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_217AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_217FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_21858(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_21934()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_2197C()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21A00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_21B3C()
{
  result = qword_1C1FA0;
  if (!qword_1C1FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1FA0);
  }

  return result;
}

unint64_t sub_21BA8()
{
  result = qword_1C14D8;
  if (!qword_1C14D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1498);
    sub_1D4A4(&qword_1C14E0, &qword_1C14E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C14D8);
  }

  return result;
}

unint64_t sub_21C64()
{
  result = qword_1C14F0;
  if (!qword_1C14F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C14F8);
    sub_21B3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C14F0);
  }

  return result;
}

uint64_t NowPlayingTabController.nowPlayingDelegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTabController_nowPlayingDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*NowPlayingTabController.nowPlayingDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTabController_nowPlayingDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21E7C;
}

void sub_21E7C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void NowPlayingTabController.init(asPartOf:)()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTabController_nowPlayingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();

  v2 = BaseTabBarController.init(asPartOf:)(v1);
  v3 = qword_1BFFE8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1508);

  sub_1446DC();

  v7[5] = 0;
  v7[6] = 0;
  swift_beginAccess();
  sub_223C8(v7, &static NowPlayingDataProvider.shared);
  swift_endAccess();
  v7[0] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1518);
  sub_14490C();
  v5 = sub_14489C();

  [v4 setRestorationIdentifier:v5];

  if (qword_1D1830)
  {
    v6 = qword_1D1840;
    qword_1D1840 = v4;
  }

  else
  {
    __break(1u);
  }
}

void NowPlayingTabController.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTabController_nowPlayingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_1452FC();
  __break(1u);
}

void NowPlayingTabController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTabController_nowPlayingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_1452FC();
  __break(1u);
}

Swift::Void __swiftcall NowPlayingTabController.encodeRestorableState(with:)(NSCoder with)
{
  v3 = [v1 childViewControllers];
  sub_77DC();
  v4 = sub_1449DC();

  if (!(v4 >> 62))
  {
    v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_12:

    v11.receiver = v1;
    v11.super_class = type metadata accessor for NowPlayingTabController();
    objc_msgSendSuper2(&v11, "encodeRestorableStateWithCoder:", with.super.isa);
    return;
  }

  v5 = sub_14531C();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = sub_1451FC();
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 restorationIdentifier];
      if (v9)
      {
        v10 = v9;
        [(objc_class *)with.super.isa encodeObject:v8 forKey:v9];

        v8 = v10;
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

id NowPlayingTabController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlayingTabController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_223C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1510);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2245C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

uint64_t sub_224F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();
}

uint64_t sub_22568()
{
  v33 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v1 - 8);
  v29 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1820);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1828);
  v30 = *(v28 - 8);
  __chkstk_darwin(v28);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1830);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  __chkstk_darwin(v9);
  v26 = &v25 - v11;
  *&v43[0] = *(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_nowPlayingItemStatePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23B0);
  sub_1D4A4(&unk_1C1840, &unk_1C23B0);
  sub_14279C();

  v42 = 1;
  v34 = 0uLL;
  *&v35 = 0;
  BYTE8(v35) = -1;
  *&v36 = 0;
  BYTE8(v36) = 1;
  v37 = 0u;
  v38 = 0u;
  *&v39 = 0;
  BYTE8(v39) = -1;
  *&v40 = 0;
  BYTE8(v40) = 1;
  v41 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23C0);
  sub_1D4A4(&qword_1C1850, &qword_1C1820);
  sub_1427CC();
  v43[4] = v38;
  v43[5] = v39;
  v43[6] = v40;
  v43[7] = v41;
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = v36;
  v43[3] = v37;
  sub_15340(v43, &unk_1C23C0);
  (*(v4 + 8))(v6, v3);
  sub_2B860(0, &qword_1C2160);
  v12 = sub_144D8C();
  *&v34 = v12;
  v13 = sub_144D3C();
  v14 = v29;
  (*(*(v13 - 8) + 56))(v29, 1, 1, v13);
  sub_1D4A4(&qword_1C1858, &qword_1C1828);
  sub_2ACD0();
  v15 = v26;
  v16 = v28;
  sub_14283C();
  sub_15340(v14, &qword_1C16E0);

  (*(v30 + 8))(v8, v16);
  v17 = swift_allocObject();
  v18 = v27;
  swift_weakInit();
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 16) = v17;
  *(v19 + 24) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_2B654;
  *(v21 + 24) = v19;
  sub_1D4A4(&qword_1C1860, &unk_1C1830);
  v22 = v31;
  v23 = sub_14289C();

  (*(v32 + 8))(v15, v22);
  *(v18 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_nowPlayingItemStateSubscription) = v23;
}

uint64_t sub_22B74(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *a2;
  v45 = *(a2 + 8);
  v46 = v2;
  v42 = *(a2 + 16);
  v43 = v4;
  v47 = *(a2 + 24);
  v48 = v5;
  v10 = *(a2 + 32);
  v11 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = (v8 | v12) == 0;
  if (v8 && v12)
  {
    v13 = [v8 isEqual:?];
  }

  v44 = v13;
  if (v3 && (v14 = [v3 artworkInfo]) != 0)
  {
    v15 = v14;
    v16 = sub_14480C();

    v17 = sub_F6A54(v16);

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v17 = 0;
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v18 = [v9 artworkInfo];
  if (v18)
  {
    v19 = v18;
    v20 = sub_14480C();

    v21 = sub_F6A54(v20);

    if (v17)
    {
      goto LABEL_14;
    }

LABEL_11:
    if (!v21)
    {
      v23 = 0;
      if (!v3)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_13:
  v21 = 0;
  if (!v17)
  {
    goto LABEL_11;
  }

LABEL_14:
  if (!v21)
  {
LABEL_18:

    v23 = 1;
    if (!v3)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  v22 = sub_F6D48(v17, v21);

  v23 = v22 ^ 1;
  if (!v3)
  {
LABEL_16:
    if (!v9)
    {
      v29 = 0;
      v31 = 1;
      goto LABEL_36;
    }

    v24 = sub_F7710(v10, v11);
    goto LABEL_23;
  }

LABEL_19:
  v25 = sub_F7710(v6, v7);
  v26 = v25;
  if (v9)
  {
    v24 = sub_F7710(v10, v11);
    if (!v26)
    {
LABEL_23:
      v29 = v24 != 0;
      if (v24)
      {
      }

      if (v3)
      {
        v30 = [v3 shouldShowChapterArtwork];
        goto LABEL_29;
      }

      [v9 shouldShowChapterArtwork];
      goto LABEL_35;
    }

    if (v24)
    {
      v27 = v24;
      v28 = [v26 isEqual:v27];

      v29 = v28 ^ 1;
      v30 = [v3 shouldShowChapterArtwork];
LABEL_29:
      v31 = [v9 shouldShowChapterArtwork] ^ v30 ^ 1;
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  if (v25)
  {
LABEL_28:

    v30 = [v3 shouldShowChapterArtwork];
    v29 = 1;
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  [v3 shouldShowChapterArtwork];
  v29 = 0;
LABEL_35:
  v31 = 0;
LABEL_36:
  if (v48 == 255)
  {
    if (v47 == 255)
    {
      goto LABEL_48;
    }

    return 0;
  }

  if (v47 == 255)
  {
    return 0;
  }

  if (v48)
  {
    if ((v47 & 1) == 0 || v46 != v45)
    {
      return 0;
    }
  }

  else if ((v47 & 1) != 0 || (v46 != v45 || v43 != v42) && (sub_1453BC() & 1) == 0)
  {
    return 0;
  }

LABEL_48:
  if (!v3)
  {
    v34 = 0;
    if (v9)
    {
      goto LABEL_51;
    }

LABEL_58:
    v38 = 0;
    if (!v3)
    {
      goto LABEL_59;
    }

    goto LABEL_53;
  }

  v32 = [v3 title];
  if (!v32)
  {
    v34 = 0;
    v3 = 0;
    if (v9)
    {
      goto LABEL_51;
    }

    goto LABEL_58;
  }

  v33 = v32;
  v34 = sub_1448DC();
  v3 = v35;

  if (!v9)
  {
    goto LABEL_58;
  }

LABEL_51:
  v36 = [v9 title];
  if (v36)
  {
    v37 = v36;
    v38 = sub_1448DC();
    v9 = v39;

    if (v3)
    {
      goto LABEL_53;
    }

LABEL_59:
    if (!v9)
    {
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  v38 = 0;
  v9 = 0;
  if (!v3)
  {
    goto LABEL_59;
  }

LABEL_53:
  if (!v9)
  {
LABEL_60:

    return 0;
  }

  if (v34 != v38 || v3 != v9)
  {
    v41 = sub_1453BC();

    if (!(v29 & 1 | ((v41 & 1) == 0) | ((v44 & 1) == 0) | v23 & 1))
    {
      return v31;
    }

    return 0;
  }

LABEL_61:
  if (v29 & 1 | ((v44 & 1) == 0) | v23 & 1)
  {
    return 0;
  }

  return v31;
}

uint64_t sub_22FF8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[5];
  v26 = a1[4];
  v27 = v5;
  v6 = a1[7];
  v28 = a1[6];
  v29 = v6;
  v7 = a1[1];
  v22 = *a1;
  v23 = v7;
  v8 = a1[3];
  v24 = a1[2];
  v25 = v8;
  v10 = *a2;
  v9 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 48);
  v13 = *(a2 + 56);
  v14 = v22;
  v15 = *(a2 + 24);
  sub_1D19C(&v22, &v21, &unk_1C23C0);

  sub_2AFA8(*(&v22 + 1), v23, SBYTE8(v23));
  swift_unknownObjectRelease();

  v16 = v27;
  *a3 = v26;
  *(a3 + 16) = v16;
  v17 = v29;
  *(a3 + 32) = v28;
  *(a3 + 48) = v17;
  *(a3 + 64) = v10;
  *(a3 + 72) = v9;
  *(a3 + 80) = v11;
  *(a3 + 88) = v15;
  *(a3 + 89) = *(a2 + 25);
  *(a3 + 104) = *(a2 + 40);
  *(a3 + 112) = v12;
  *(a3 + 120) = v13;
  v18 = v10;
  sub_2ADDC(v9, v11, v15);
  v19 = v13;
  return swift_unknownObjectRetain();
}

uint64_t sub_23104(uint64_t a1, uint64_t a2)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v39 = v5;
    v40 = v4;
    v41 = a1;
    sub_1423FC();
    v10 = *a2;
    v11 = *(a2 + 8);
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v14 = *(a2 + 56);
    v46 = *(a2 + 48);
    v47 = v10;
    v45 = v14;
    sub_1D19C(&v47, v43, &qword_1C17A8);
    sub_2ADDC(v11, v12, v13);
    sub_1D19C(&v46, v43, &unk_1C8980);
    sub_1D19C(&v45, v43, &qword_1C17C0);
    v36 = v7;
    v15 = sub_14242C();
    v16 = sub_144C5C();
    sub_15340(&v47, &qword_1C17A8);
    v38 = v11;
    v17 = v11;
    v18 = v12;
    v37 = v13;
    sub_2AFA8(v17, v12, v13);
    sub_15340(&v46, &unk_1C8980);
    sub_15340(&v45, &qword_1C17C0);
    v35 = v16;
    if (os_log_type_enabled(v15, v16))
    {
      v19 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v42 = v34;
      *v19 = 136316163;
      *(v19 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v42);
      *(v19 + 12) = 2160;
      *(v19 + 14) = 1752392040;
      *(v19 + 22) = 2081;
      v20 = sub_F6460();
      v22 = sub_ED2A4(v20, v21, &v42);

      *(v19 + 24) = v22;
      *(v19 + 32) = 2160;
      *(v19 + 34) = 1752392040;
      *(v19 + 42) = 2081;
      v23 = v38;
      v43[0] = v38;
      v43[1] = v18;
      v24 = v18;
      v25 = v37;
      v44 = v37;
      sub_2ADDC(v38, v24, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
      v26 = sub_14490C();
      v28 = sub_ED2A4(v26, v27, &v42);

      *(v19 + 44) = v28;
      _os_log_impl(&dword_0, v15, v35, "%s [State Update] Received updated state=%{private,mask.hash}s for id=%{private,mask.hash}s", v19, 0x34u);
      swift_arrayDestroy();

      (*(v39 + 8))(v36, v40);
      v29 = v23;
    }

    else
    {

      (*(v39 + 8))(v36, v40);
      v29 = v38;
      v24 = v12;
      v25 = v37;
    }

    v30 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_subscriptions;
    swift_beginAccess();
    *(v9 + v30) = _swiftEmptyArrayStorage;

    sub_235B4(a2, &enum case for NowPlayingArtwork.Placement.primary(_:), &unk_14BB68);
    sub_235B4(a2, &enum case for NowPlayingArtwork.Placement.metadata(_:), &unk_14BB20);
    v31 = *(v41 + 24);
    v32 = (v31 & v25) == 255;
    if (v31 != 255 && v25 != 255)
    {
      v33 = *(v41 + 8);
      if (v31)
      {
        v32 = v25 & (v33 == v29);
      }

      else if (v25)
      {
        v32 = 0;
      }

      else if (v33 == v29 && *(v41 + 16) == v24)
      {
        v32 = 1;
      }

      else
      {
        v32 = sub_1453BC();
      }
    }

    sub_239A0(a2, (v32 & 1) == 0);
  }

  return result;
}

uint64_t sub_235B4(void **a1, unsigned int *a2, uint64_t a3)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v5 - 8);
  v7 = v20 - v6;
  v8 = sub_140C7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1A30);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v20 - v14;
  (*(v9 + 104))(v11, *a2, v8);
  v16 = sub_252D8(a1, v11);
  (*(v9 + 8))(v11, v8);
  v21 = v16;
  sub_2B860(0, &qword_1C2160);
  v17 = sub_144D8C();
  v22 = v17;
  v18 = sub_144D3C();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18C8);
  sub_1D4A4(&qword_1C18D0, &qword_1C18C8);
  sub_2ACD0();
  sub_14283C();
  sub_15340(v7, &qword_1C16E0);

  swift_getKeyPath();
  v21 = v20[0];
  sub_1D4A4(&qword_1C1A38, &qword_1C1A30);
  sub_1428AC();

  (*(v13 + 8))(v15, v12);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910);
  sub_1D4A4(&qword_1C1918, &qword_1C1910);
  sub_14258C();
  swift_endAccess();
}

uint64_t sub_239A0(void **a1, int a2)
{
  v108 = a2;
  v116 = a1;
  v3 = v2;
  v119 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1868);
  __chkstk_darwin(v4 - 8);
  v96 = &v73 - v5;
  v97 = sub_144D6C();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97);
  v94 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1870);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100);
  v118 = &v73 - v7;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1878);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v73 - v8;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1880);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v73 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1888);
  v109 = *(v111 - 8);
  __chkstk_darwin(v111);
  v107 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1890);
  v112 = *(v11 - 8);
  v113 = v11;
  __chkstk_darwin(v11);
  v110 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v13 - 8);
  v117 = &v73 - v14;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1898);
  v84 = *(v85 - 1);
  __chkstk_darwin(v85);
  v83 = &v73 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18A0);
  v87 = *(v16 - 8);
  __chkstk_darwin(v16);
  v86 = &v73 - v17;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18A8);
  v89 = *(v91 - 8);
  __chkstk_darwin(v91);
  v88 = &v73 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18B0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v73 - v19;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18B8);
  v99 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v73 - v20;
  v21 = sub_140C7C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_14400C();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (&v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_2B860(0, &qword_1C2160);
  *v28 = sub_144D8C();
  (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
  v29 = sub_14402C();
  result = (*(v26 + 8))(v28, v25);
  if (v29)
  {
    v31 = sub_141DAC();
    v122[3] = v31;
    v122[4] = sub_2AE04(&qword_1C18C0, &type metadata accessor for Podcasts);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v122);
    (*(*(v31 - 8) + 104))(boxed_opaque_existential_1, enum case for Podcasts.useShowPageTallForBackdrop(_:), v31);
    LOBYTE(v31) = sub_141B2C();
    __swift_destroy_boxed_opaque_existential_0(v122);
    v81 = v22;
    v33 = *(v22 + 104);
    v34 = &enum case for NowPlayingArtwork.Placement.backdrop(_:);
    if ((v31 & 1) == 0)
    {
      v34 = &enum case for NowPlayingArtwork.Placement.primary(_:);
    }

    v35 = *v34;
    v79 = v24;
    v80 = v21;
    v33(v24, v35, v21);
    v122[0] = sub_252D8(v116, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18C8);
    v78 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_1D4A4(&qword_1C18D0, &qword_1C18C8);
    v36 = sub_14280C();

    v122[0] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18D8);
    sub_1D4A4(&qword_1C18E0, &qword_1C18D8);
    sub_14288C();

    v114 = swift_allocObject();
    *(v114 + 16) = 0;
    swift_allocObject();
    swift_weakInit();
    sub_14256C();
    v37 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1758);
    v76 = sub_1D4A4(&qword_1C18E8, &qword_1C18B8);
    sub_1D4A4(&qword_1C1760, &qword_1C1758);
    v38 = v83;
    sub_1428DC();

    v39 = sub_144D8C();
    v122[0] = v39;
    v74 = sub_144D3C();
    v40 = *(v74 - 8);
    v115 = *(v40 + 56);
    v75 = v40 + 56;
    v41 = v117;
    v115(v117, 1, 1, v74);
    v77 = &protocol conformance descriptor for Publishers.FlatMap<A, B>;
    sub_1D4A4(&qword_1C18F0, &qword_1C1898);
    v116 = sub_2ACD0();
    v42 = v86;
    v43 = v85;
    sub_14283C();
    sub_15340(v41, &qword_1C16E0);

    (*(v84 + 8))(v38, v43);
    *(swift_allocObject() + 16) = v119;
    v85 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_1D4A4(&qword_1C18F8, &qword_1C18A0);

    v44 = v88;
    sub_14275C();

    v87[1](v42, v37);
    sub_1DB40(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropTrace, v122);
    v87 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
    sub_1D4A4(&qword_1C1900, &qword_1C18A8);
    v45 = v91;
    sub_141E1C();
    v46 = v90;
    sub_14270C();
    sub_15340(v122, &qword_1C1770);
    (*(v89 + 8))(v44, v45);
    swift_getKeyPath();
    v122[0] = v3;
    sub_1D4A4(&qword_1C1908, &qword_1C18B0);
    v47 = v93;
    sub_1428AC();

    (*(v92 + 8))(v46, v47);
    v73 = v3;
    v91 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_subscriptions;
    swift_beginAccess();
    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1910);
    v92 = sub_1D4A4(&qword_1C1918, &qword_1C1910);
    sub_14258C();
    swift_endAccess();

    v48 = v94;
    sub_144D4C();
    v49 = v95;
    v50 = v96;
    v51 = v97;
    (*(v95 + 56))(v96, 1, 1, v97);
    v52 = sub_144D8C();
    v122[0] = v52;
    v53 = v117;
    v54 = v74;
    v115(v117, 1, 1, v74);
    sub_1427EC();
    sub_15340(v53, &qword_1C16E0);

    sub_15340(v50, &qword_1C1868);
    (*(v49 + 8))(v48, v51);
    v55 = sub_144D8C();
    v122[0] = v55;
    v115(v53, 1, 1, v54);
    sub_1D4A4(&qword_1C1920, &qword_1C1870);
    v56 = v101;
    v57 = v100;
    v58 = v118;
    sub_14283C();
    sub_15340(v53, &qword_1C16E0);

    (*(v98 + 8))(v58, v57);
    v59 = swift_allocObject();
    v60 = v73;
    swift_weakInit();
    v61 = swift_allocObject();
    v62 = v114;
    *(v61 + 16) = v59;
    *(v61 + 24) = v62;
    *(v61 + 32) = v108 & 1;

    sub_14256C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1928);
    sub_1D4A4(&qword_1C1930, &qword_1C1878);
    sub_1D4A4(&qword_1C1938, &qword_1C1928);
    v63 = v103;
    v64 = v104;
    sub_1428DC();

    (*(v102 + 8))(v56, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
    sub_1D4A4(&qword_1C1940, &qword_1C1880);
    v65 = v107;
    v66 = v106;
    sub_1427BC();
    (*(v105 + 8))(v63, v66);
    *(swift_allocObject() + 16) = v119;
    sub_1D4A4(&qword_1C1948, &qword_1C1888);
    v67 = v111;
    v68 = v110;
    sub_14275C();

    (*(v109 + 8))(v65, v67);
    swift_getKeyPath();
    v122[0] = v60;
    sub_1D4A4(&unk_1C1950, &qword_1C1890);
    v69 = v113;
    sub_1428AC();

    (*(v112 + 8))(v68, v69);
    swift_beginAccess();
    sub_14258C();
    swift_endAccess();

    v70 = v120;
    v71 = v121;
    sub_14252C();
    (*(v99 + 8))(v70, v71);
    (*(v81 + 8))(v79, v80);
    v72 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropConnection;
    swift_beginAccess();
    sub_2B7F0(v122, v60 + v72);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F28()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__backdropImage;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2330);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__primaryArtworkData;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16D0);
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__metadataArtworkData, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_imageProvider);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropTrace);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_treatmentTrace);

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropConnection, &qword_1C16D8);

  return v0;
}

uint64_t sub_250A0()
{
  sub_24F28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NowPlayingArtworkController()
{
  result = qword_1C15D0;
  if (!qword_1C15D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2514C()
{
  sub_25284(319, &qword_1C15E0, &qword_1C15E8);
  if (v0 <= 0x3F)
  {
    sub_25284(319, &qword_1C15F0, &unk_1C15F8);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_25284(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1426FC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id sub_252D8(void **a1, uint64_t a2)
{
  v172 = a2;
  v169 = *v2;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19A8);
  v163 = *(v164 - 8);
  __chkstk_darwin(v164);
  v162 = &v134 - v4;
  v5 = sub_140C4C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v142 = (&v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19B0);
  v143 = *(v144 - 8);
  __chkstk_darwin(v144);
  v141 = &v134 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19B8);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v140 = &v134 - v14;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19C0);
  v158 = *(v159 - 1);
  __chkstk_darwin(v159);
  v157 = &v134 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  __chkstk_darwin(v16);
  v18 = &v134 - v17;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19C8);
  v149 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v134 - v19;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19D0);
  v150 = *(v170 - 1);
  __chkstk_darwin(v170);
  v148 = &v134 - v20;
  v167 = sub_140C7C();
  v168 = *(v167 - 8);
  v21 = __chkstk_darwin(v167);
  v161 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v145 = &v134 - v24;
  v25 = __chkstk_darwin(v23);
  v155 = &v134 - v26;
  v160 = v27;
  __chkstk_darwin(v25);
  v29 = &v134 - v28;
  v30 = sub_14243C();
  v31 = __chkstk_darwin(v30);
  v171 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v156 = &v134 - v34;
  v35 = __chkstk_darwin(v33);
  v38 = &v134 - v37;
  v165 = a1;
  v39 = *a1;
  if (!*a1)
  {
    (*(v6 + 56))(v18, 1, 1, v5);
    sub_14264C();
    sub_1D4A4(&qword_1C19D8, &qword_1C19B8);
    v79 = sub_14273C();
    (*(v10 + 8))(v13, v9);
    return v79;
  }

  v135 = v10;
  v136 = v9;
  v137 = v18;
  v152 = v36;
  v153 = v35;
  v138 = v6;
  v139 = v5;
  v154 = v16;
  v166 = v39;
  v40 = [v166 artworkInfo];
  if (v40)
  {
    v41 = v40;
    v42 = sub_14480C();

    v175[0] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1A00);
    sub_1D4A4(&qword_1C1A08, &qword_1C1A00);
    LOBYTE(v41) = sub_144B8C();

    if (v41)
    {
      v43 = v38;
      sub_1423FC();
      v44 = v168;
      v45 = *(v168 + 16);
      v171 = ((v168 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
      v46 = v167;
      v45(v29, v172, v167);
      v47 = v166;
      v48 = sub_14242C();
      v49 = sub_144C5C();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v159 = v47;
        v175[0] = v51;
        *v50 = 136315907;
        *(v50 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, v175);
        *(v50 + 12) = 2080;
        v52 = sub_140C6C();
        v158 = v43;
        v53 = v52;
        v55 = v54;
        (*(v44 + 8))(v29, v46);
        v56 = sub_ED2A4(v53, v55, v175);

        *(v50 + 14) = v56;
        *(v50 + 22) = 2160;
        *(v50 + 24) = 1752392040;
        *(v50 + 32) = 2081;
        v57 = v159;
        v58 = [v57 description];
        v59 = sub_1448DC();
        v61 = v60;

        v62 = sub_ED2A4(v59, v61, v175);
        v46 = v167;

        *(v50 + 34) = v62;
        swift_arrayDestroy();
        v47 = v159;

        (*(v152 + 8))(v158, v153);
      }

      else
      {

        (*(v44 + 8))(v29, v46);
        (*(v152 + 8))(v43, v153);
      }

      v89 = v165;
      v94 = v137;
      sub_1DB40(v146 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider, v175);
      __swift_project_boxed_opaque_existential_1(v175, v175[3]);
      v174[3] = &type metadata for NowPlayingItemState;
      v174[4] = sub_2AEF4();
      v95 = swift_allocObject();
      v174[0] = v95;
      v96 = *(v89 + 1);
      v95[1] = *v89;
      v95[2] = v96;
      v97 = *(v89 + 3);
      v95[3] = *(v89 + 2);
      v95[4] = v97;
      v179 = *(v89 + 24);
      v98 = v89[6];
      v176 = v89[7];
      v177 = v98;
      v178 = *(v89 + 1);
      v99 = v47;
      sub_1D19C(&v178, v173, &unk_1C17B0);
      sub_1D19C(&v177, v173, &unk_1C8980);
      sub_1D19C(&v176, v173, &qword_1C17C0);
      v100 = sub_140E3C();
      __swift_destroy_boxed_opaque_existential_0(v174);
      v174[0] = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1A10);
      sub_1D4A4(&qword_1C1A18, &qword_1C1A10);
      v101 = v147;
      sub_1427BC();

      __swift_destroy_boxed_opaque_existential_0(v175);
      (*(v138 + 56))(v94, 1, 1, v139);
      sub_1D4A4(&qword_1C1A20, &qword_1C19C8);
      v102 = v148;
      v103 = v151;
      sub_14276C();
      sub_15340(v94, &unk_1C15F8);
      (*(v149 + 8))(v101, v103);
      sub_1D4A4(&qword_1C1A28, &qword_1C19D0);
      v104 = v170;
      v93 = sub_14273C();
      (*(v150 + 8))(v102, v104);
      goto LABEL_19;
    }
  }

  v63 = [v166 artworkCatalog];
  v64 = v168 + 16;
  if (v63)
  {
    v65 = v63;
    v66 = v156;
    sub_1423FC();
    v67 = *v64;
    v171 = (v64 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v68 = v155;
    v46 = v167;
    v170 = v67;
    v67(v155, v172, v167);
    v69 = v65;
    v70 = sub_14242C();
    v71 = sub_144C5C();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v175[0] = v151;
      *v72 = 136315907;
      *(v72 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, v175);
      *(v72 + 12) = 2080;
      v73 = sub_140C6C();
      v75 = v74;
      v44 = v168;
      (*(v168 + 8))(v68, v167);
      v76 = sub_ED2A4(v73, v75, v175);
      v46 = v167;

      *(v72 + 14) = v76;
      *(v72 + 22) = 2160;
      *(v72 + 24) = 1752392040;
      *(v72 + 32) = 2113;
      *(v72 + 34) = v69;
      v77 = v150;
      *v150 = v65;
      v78 = v69;
      sub_15340(v77, &qword_1C2580);

      swift_arrayDestroy();
    }

    else
    {

      v44 = v168;
      (*(v168 + 8))(v68, v46);
    }

    (*(v152 + 8))(v66, v153);
    v89 = v165;
    v175[0] = sub_144CBC();
    v90 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C19E8);
    sub_1D4A4(&qword_1C19F0, &qword_1C19E8);
    v91 = v157;
    sub_1427BC();

    sub_1D4A4(&qword_1C19F8, &qword_1C19C0);
    v92 = v159;
    v93 = sub_14273C();

    (*(v158 + 8))(v91, v92);
    v45 = v170;
    goto LABEL_19;
  }

  v80 = v171;
  sub_1423FC();
  v45 = *v64;
  v81 = v145;
  v46 = v167;
  (*v64)(v145, v172, v167);
  v82 = sub_14242C();
  v83 = sub_144C5C();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v175[0] = swift_slowAlloc();
    *v84 = 136315394;
    *(v84 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, v175);
    *(v84 + 12) = 2080;
    v85 = sub_140C6C();
    v87 = v86;
    (*(v168 + 8))(v81, v167);
    v88 = sub_ED2A4(v85, v87, v175);
    v46 = v167;

    *(v84 + 14) = v88;
    _os_log_impl(&dword_0, v82, v83, "%s [Artwork/%s] Falling back to using placeholder.", v84, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v168 + 8))(v81, v46);
  }

  (*(v152 + 8))(v80, v153);
  v105 = v139;
  v106 = v138;
  v107 = v136;
  v108 = v135;
  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    v110 = v142;
    *v142 = result;
    (*(v106 + 104))(v110, enum case for NowPlayingArtwork.Data.image(_:), v105);
    v111 = v141;
    sub_14264C();
    v112 = v140;
    v113 = v144;
    sub_14263C();
    (*(v143 + 8))(v111, v113);
    sub_1D4A4(&qword_1C19D8, &qword_1C19B8);
    v93 = sub_14273C();
    (*(v108 + 8))(v112, v107);
    v171 = (v64 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
    v89 = v165;
    v44 = v168;
LABEL_19:
    v170 = v45;
    v159 = v93;
    v175[0] = v93;
    v114 = v89[1];
    v115 = v89[2];
    LODWORD(v168) = *(v89 + 24);
    v116 = v161;
    v45(v161, v172, v46);
    v117 = (*(v44 + 80) + 16) & ~*(v44 + 80);
    v167 = v117;
    v118 = (v117 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
    v119 = v46;
    v120 = (v117 + v160 + 31) & 0xFFFFFFFFFFFFFFF8;
    v121 = swift_allocObject();
    v165 = *(v44 + 32);
    (v165)(v121 + v117, v116, v119);
    v160 = v121;
    v157 = v118;
    v122 = v121 + v118;
    v123 = v114;
    v156 = v114;
    *v122 = v114;
    *(v122 + 8) = v115;
    *(v122 + 16) = v168;
    *(v121 + v120) = v169;
    v124 = v172;
    (v170)(v116, v172, v119);
    v125 = swift_allocObject();
    (v165)(v125 + v167, v116, v119);
    v158 = v125;
    v126 = v125 + v118;
    *v126 = v123;
    *(v126 + 8) = v115;
    v127 = v115;
    LOBYTE(v115) = v168;
    *(v126 + 16) = v168;
    v128 = v169;
    *(v125 + v120) = v169;
    (v170)(v116, v124, v119);
    v129 = swift_allocObject();
    (v165)(v129 + v167, v116, v119);
    v130 = &v157[v129];
    v131 = v156;
    *v130 = v156;
    *(v130 + 1) = v127;
    v130[16] = v115;
    *(v129 + v120) = v128;
    sub_2ADDC(v131, v127, v115);
    sub_2ADDC(v131, v127, v115);
    sub_2ADDC(v131, v127, v115);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C18C8);
    sub_1D4A4(&qword_1C18D0, &qword_1C18C8);
    v132 = v162;
    sub_14275C();

    sub_1D4A4(&qword_1C19E0, &qword_1C19A8);
    v133 = v164;
    v79 = sub_14273C();

    (*(v163 + 8))(v132, v133);
    return v79;
  }

  __break(1u);
  return result;
}

uint64_t sub_26B10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_140C7C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1988);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - v10;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    (*(v5 + 104))(v7, enum case for NowPlayingArtwork.Placement.primary(_:), v4);
    v12 = sub_26D64(a1, v7);

    result = (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
    sub_14264C();
    sub_1D4A4(&qword_1C1990, &qword_1C1988);
    v12 = sub_14273C();
    result = (*(v9 + 8))(v11, v8);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_26D64(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1988);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1790);
  v31 = *(v33 - 8);
  __chkstk_darwin(v33);
  v28 = &v26 - v7;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1798);
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v29 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v26 - v10;
  v12 = sub_140C4C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19C(a1, v11, &unk_1C15F8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_15340(v11, &unk_1C15F8);
    v35[0] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
    sub_14264C();
    sub_1D4A4(&qword_1C1990, &qword_1C1988);
    v16 = sub_14273C();
    (*(v27 + 8))(v6, v4);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider), *(v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider + 24));
    sub_140C5C();
    sub_1DB40(v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropTrace, v35);
    v17 = sub_140E5C();
    sub_15340(v35, &qword_1C1770);
    v35[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
    sub_1D4A4(&qword_1C17D0, &qword_1C17C8);
    v18 = v28;
    sub_1427BC();

    sub_140C5C();
    v21 = sub_278D4(v19, v20);
    v35[0] = v21;
    sub_1D4A4(&qword_1C17D8, &qword_1C1790);
    v22 = v29;
    v23 = v33;
    sub_14276C();

    (*(v31 + 8))(v18, v23);
    sub_1D4A4(&qword_1C17E0, &qword_1C1798);
    v24 = v34;
    v16 = sub_14273C();
    (*(v32 + 8))(v22, v24);
    (*(v13 + 8))(v15, v12);
  }

  return v16;
}

uint64_t sub_2733C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a1 = v3;
  return result;
}

uint64_t sub_273BC(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1426EC();
}

uint64_t sub_27434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t *a4@<X8>)
{
  v18 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1960);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - v9;
  v11 = sub_140C7C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_6;
  }

  swift_beginAccess();
  if ((*(a2 + 16) & 1) != 0 || (a3 & 1) == 0)
  {

LABEL_6:
    sub_2B860(0, &qword_1C2F20);
    sub_14265C();
    sub_1D4A4(&qword_1C1970, &unk_1C1960);
    v15 = sub_14273C();
    result = (*(v8 + 8))(v10, v7);
    goto LABEL_7;
  }

  (*(v12 + 104))(v14, enum case for NowPlayingArtwork.Placement.primary(_:), v11);
  v15 = sub_2B8A8(a1, v14);

  result = (*(v12 + 8))(v14, v11);
LABEL_7:
  *v18 = v15;
  return result;
}

id sub_276C4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t sub_276D0(void **a1, uint64_t a2, const char *a3)
{
  v5 = sub_14243C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1423FC();
  v10 = v9;
  v11 = sub_14242C();
  v12 = sub_144C5C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v19 = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v14 = 136315394;
    *(v14 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v20);
    *(v14 + 12) = 2112;
    *(v14 + 14) = v10;
    *v15 = v9;
    v17 = v10;
    _os_log_impl(&dword_0, v11, v12, v19, v14, 0x16u);
    sub_15340(v15, &qword_1C2580);

    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_278D4(double a1, double a2)
{
  v5 = sub_141DEC();
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_140C4C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, v2, v8);
  if ((*(v9 + 88))(v11, v8) == enum case for NowPlayingArtwork.Data.model(_:))
  {
    (*(v9 + 96))(v11, v8);
    sub_2C168(v11, v7);
    if (v7[64] != 255)
    {
      v12 = sub_14211C();
      v13 = sub_29DDC(v12, a1, a2);

      sub_2C1CC(v7);
      return v13;
    }

    sub_2C1CC(v7);
  }

  else
  {
    (*(v9 + 8))(v11, v8);
  }

  return 0;
}

uint64_t sub_27AA8()
{
  sub_140C5C();
  sub_278D4(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
  return sub_14264C();
}

uint64_t sub_27B14()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();
}

uint64_t sub_27B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v9 - v6;
  sub_1D19C(a1, &v9 - v6, &unk_1C15F8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D19C(v7, v5, &unk_1C15F8);

  sub_1426EC();
  return sub_15340(v7, &unk_1C15F8);
}

uint64_t sub_27CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_140C4C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  (*(v5 + 32))(a2, v7, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_27DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v44 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  v9 = __chkstk_darwin(v41);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = sub_140C7C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_14243C();
  v45 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  (*(v14 + 16))(v16, a2, v13);
  sub_1D19C(v44, v12, &unk_1C15F8);
  sub_2ADDC(a3, a4, a5);
  v20 = sub_14242C();
  v21 = sub_144C5C();
  v42 = a3;
  v43 = a4;
  v22 = a3;
  v23 = v21;
  LODWORD(v44) = a5;
  sub_2AFA8(v22, a4, a5);
  if (os_log_type_enabled(v20, v23))
  {
    v24 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v24 = 136316419;
    *(v24 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v49);
    *(v24 + 12) = 2080;
    v25 = v20;
    v26 = sub_140C6C();
    v39 = v17;
    v28 = v27;
    (*(v14 + 8))(v16, v13);
    v29 = sub_ED2A4(v26, v28, &v49);

    *(v24 + 14) = v29;
    *(v24 + 22) = 2160;
    *(v24 + 24) = 1752392040;
    *(v24 + 32) = 2081;
    sub_1D19C(v12, v40, &unk_1C15F8);
    v30 = sub_14490C();
    v32 = v31;
    sub_15340(v12, &unk_1C15F8);
    v33 = sub_ED2A4(v30, v32, &v49);

    *(v24 + 34) = v33;
    *(v24 + 42) = 2160;
    *(v24 + 44) = 1752392040;
    *(v24 + 52) = 2081;
    v46 = v42;
    v47 = v43;
    v48 = v44;
    sub_2ADDC(v42, v43, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v34 = sub_14490C();
    v36 = sub_ED2A4(v34, v35, &v49);

    *(v24 + 54) = v36;
    _os_log_impl(&dword_0, v25, v23, "%s [ArtworkData/%s] Received output=%{private,mask.hash}s for id=%{private,mask.hash}s", v24, 0x3Eu);
    swift_arrayDestroy();

    return (*(v45 + 8))(v19, v39);
  }

  else
  {

    sub_15340(v12, &unk_1C15F8);
    (*(v14 + 8))(v16, v13);
    return (*(v45 + 8))(v19, v17);
  }
}

uint64_t sub_2828C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = sub_140C7C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_14243C();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  (*(v10 + 16))(v12, a2, v9);
  sub_2ADDC(a3, a4, a5);
  v36 = v16;
  v17 = sub_14242C();
  LODWORD(v16) = sub_144C5C();
  v32 = a3;
  v33 = a4;
  v34 = a5;
  sub_2AFA8(a3, a4, a5);
  v35 = v16;
  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v31 = v13;
    v19 = v18;
    v40 = swift_slowAlloc();
    *v19 = 136315907;
    *(v19 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v40);
    *(v19 + 12) = 2080;
    v20 = v17;
    v21 = sub_140C6C();
    v22 = v14;
    v24 = v23;
    (*(v10 + 8))(v12, v9);
    v25 = sub_ED2A4(v21, v24, &v40);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    sub_2ADDC(v32, v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v26 = sub_14490C();
    v28 = sub_ED2A4(v26, v27, &v40);

    *(v19 + 34) = v28;
    _os_log_impl(&dword_0, v20, v35, "%s [ArtworkData/%s] Received completion for id=%{private,mask.hash}s", v19, 0x2Au);
    swift_arrayDestroy();

    return (*(v22 + 8))(v36, v31);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    return (*(v14 + 8))(v36, v13);
  }
}

uint64_t sub_2861C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = sub_140C7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14243C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  (*(v9 + 16))(v11, a1, v8);
  sub_2ADDC(a2, a3, a4);
  v35 = v15;
  v16 = sub_14242C();
  LODWORD(v15) = sub_144C5C();
  v31 = a2;
  v32 = a3;
  v33 = a4;
  sub_2AFA8(a2, a3, a4);
  v34 = v15;
  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v30 = v12;
    v18 = v17;
    v39 = swift_slowAlloc();
    *v18 = 136315907;
    *(v18 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v39);
    *(v18 + 12) = 2080;
    v19 = v16;
    v20 = sub_140C6C();
    v21 = v13;
    v23 = v22;
    (*(v9 + 8))(v11, v8);
    v24 = sub_ED2A4(v20, v23, &v39);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2160;
    *(v18 + 24) = 1752392040;
    *(v18 + 32) = 2081;
    v36 = v31;
    v37 = v32;
    v38 = v33;
    sub_2ADDC(v31, v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v25 = sub_14490C();
    v27 = sub_ED2A4(v25, v26, &v39);

    *(v18 + 34) = v27;
    _os_log_impl(&dword_0, v19, v34, "%s Received [ArtworkData/%s] cancellation for id=%{private,mask.hash}s", v18, 0x2Au);
    swift_arrayDestroy();

    return (*(v21 + 8))(v35, v30);
  }

  else
  {

    (*(v9 + 8))(v11, v8);
    return (*(v13 + 8))(v35, v12);
  }
}

void sub_289AC(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  if (!*a1)
  {
    a2[3] = sub_14194C();
    a2[4] = sub_2AE04(&qword_1C1800, &type metadata accessor for NowPlayingStandardArtworkTreatment);
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_14180C();
    return;
  }

  v19 = *a1;
  if (sub_1450AC())
  {
    v7 = *(a1 + 6);
    if (v7)
    {
      v8 = sub_144ADC();
      (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
      sub_144ABC();
      swift_unknownObjectRetain_n();
      v9 = sub_144AAC();
      v10 = swift_allocObject();
      v10[2] = v9;
      v10[3] = &protocol witness table for MainActor;
      v10[4] = v7;
      sub_43FB8(0, 0, v6, &unk_14B9A8, v10);
      a2[3] = sub_14193C();
      a2[4] = sub_2AE04(&qword_1C1808, &type metadata accessor for NowPlayingMPCVideoArtworkTreatment);
      __swift_allocate_boxed_opaque_existential_1(a2);
      sub_1417EC();

      swift_unknownObjectRelease();

      return;
    }

    goto LABEL_8;
  }

  v11 = [v19 artworkInfo];
  if (v11)
  {

LABEL_8:
    v12 = a1[1];
    v20 = *a1;
    v21 = v12;
    v13 = a1[3];
    v22 = a1[2];
    v23 = v13;
    if (*(a1 + 40))
    {
      v14 = 0.0;
    }

    else
    {
      v14 = *(a1 + 4);
    }

    sub_2AEF4();
    if (sub_140E8C(v14))
    {
      a2[3] = sub_14194C();
      a2[4] = sub_2AE04(&qword_1C1800, &type metadata accessor for NowPlayingStandardArtworkTreatment);
      __swift_allocate_boxed_opaque_existential_1(a2);
      sub_1417FC();
    }

    else
    {
      v15 = a1[1];
      v20 = *a1;
      v21 = v15;
      v16 = a1[3];
      v22 = a1[2];
      v23 = v16;
      if (sub_140E9C())
      {
        a2[3] = sub_141A1C();
        a2[4] = sub_2AE04(&qword_1C1788, &type metadata accessor for NowPlayingBackgroundStaticArtworkTreatment);
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_1417DC();
      }

      else
      {
        a2[3] = sub_14194C();
        a2[4] = sub_2AE04(&qword_1C1800, &type metadata accessor for NowPlayingStandardArtworkTreatment);
        __swift_allocate_boxed_opaque_existential_1(a2);
        sub_14180C();
      }
    }

    return;
  }

  a2[3] = sub_14194C();
  a2[4] = sub_2AE04(&qword_1C1800, &type metadata accessor for NowPlayingStandardArtworkTreatment);
  __swift_allocate_boxed_opaque_existential_1(a2);
  sub_14180C();
  v17 = v19;
}

uint64_t sub_28DFC(uint64_t *a1)
{
  v2 = v1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1790);
  v24 = *(v22 - 8);
  __chkstk_darwin(v22);
  v5 = &v21 - v4;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1798);
  v23 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v21 - v6;
  v8 = sub_140C7C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v11, enum case for NowPlayingArtwork.Placement.showPageTall(_:), v8);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider), *(v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider + 24));
  v31 = *a1;
  v29 = *(a1 + 1);
  v30 = *(a1 + 24);
  v12 = a1[6];
  v27 = a1[7];
  v28 = v12;
  v26[3] = &type metadata for NowPlayingItemState;
  v26[4] = sub_2AEF4();
  v13 = swift_allocObject();
  v26[0] = v13;
  v14 = *(a1 + 1);
  v13[1] = *a1;
  v13[2] = v14;
  v15 = *(a1 + 3);
  v13[3] = *(a1 + 2);
  v13[4] = v15;
  sub_1D19C(&v31, v25, &qword_1C17A8);
  sub_1D19C(&v29, v25, &unk_1C17B0);
  sub_1D19C(&v28, v25, &unk_1C8980);
  sub_1D19C(&v27, v25, &qword_1C17C0);
  sub_140C5C();
  sub_1DB40(v2 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_treatmentTrace, v25);
  v16 = sub_140E4C();
  sub_15340(v25, &qword_1C1770);
  __swift_destroy_boxed_opaque_existential_0(v26);
  v26[0] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
  sub_1D4A4(&qword_1C17D0, &qword_1C17C8);
  sub_1427BC();

  v26[0] = 0;
  sub_1D4A4(&qword_1C17D8, &qword_1C1790);
  v17 = v22;
  sub_14276C();
  (*(v24 + 8))(v5, v17);
  sub_1D4A4(&qword_1C17E0, &qword_1C1798);
  v18 = v21;
  v19 = sub_14273C();
  (*(v23 + 8))(v7, v18);
  (*(v9 + 8))(v11, v8);
  return v19;
}

uint64_t sub_292E0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = sub_141A1C();
  a1[4] = sub_2AE04(&qword_1C1788, &type metadata accessor for NowPlayingBackgroundStaticArtworkTreatment);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1417DC();
}

uint64_t sub_2935C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v12 = sub_14243C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  sub_1DB40(a1, v41);
  sub_2ADDC(a2, a3, a4);
  v16 = sub_14242C();
  v17 = sub_144C5C();
  sub_2AFA8(a2, a3, a4);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v34 = a5;
    v19 = v18;
    v36 = swift_slowAlloc();
    v40 = v36;
    *v19 = 136316419;
    *(v19 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v40);
    *(v19 + 12) = 2082;
    sub_1DB40(v41, &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1718);
    v20 = sub_14490C();
    v33 = a6;
    v21 = v20;
    v35 = v12;
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_0(v41);
    v24 = sub_ED2A4(v21, v23, &v40);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v37 = a2;
    v38 = a3;
    v39 = a4;
    sub_2ADDC(a2, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v25 = sub_14490C();
    v27 = sub_ED2A4(v25, v26, &v40);

    *(v19 + 34) = v27;
    *(v19 + 42) = 2160;
    *(v19 + 44) = 1752392040;
    *(v19 + 52) = 2081;
    v37 = v34;
    LOBYTE(v38) = v33 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8);
    v28 = sub_14490C();
    v30 = sub_ED2A4(v28, v29, &v40);

    *(v19 + 54) = v30;
    _os_log_impl(&dword_0, v16, v17, "%s [Treatment] Received treatment=%{public}s for id=%{private,mask.hash}s at elapsedTime=%{private,mask.hash}s.", v19, 0x3Eu);
    swift_arrayDestroy();

    return (*(v13 + 8))(v15, v35);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v41);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_296B8(char *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6)
{
  v33 = a5;
  v11 = sub_14243C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  sub_1423FC();
  sub_2ADDC(a2, a3, a4);
  v16 = sub_14242C();
  v17 = sub_144C5C();
  sub_2AFA8(a2, a3, a4);
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    HIDWORD(v30) = a6;
    v19 = v18;
    v32 = swift_slowAlloc();
    v37 = v32;
    *v19 = 136316419;
    *(v19 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v37);
    *(v19 + 12) = 2082;
    LOBYTE(v34) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17F0);
    v20 = sub_14490C();
    v31 = v11;
    v22 = sub_ED2A4(v20, v21, &v37);

    *(v19 + 14) = v22;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2081;
    v34 = a2;
    v35 = a3;
    v36 = a4;
    sub_2ADDC(a2, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v23 = sub_14490C();
    v25 = sub_ED2A4(v23, v24, &v37);

    *(v19 + 34) = v25;
    *(v19 + 42) = 2160;
    *(v19 + 44) = 1752392040;
    *(v19 + 52) = 2081;
    v34 = v33;
    LOBYTE(v35) = BYTE4(v30) & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8);
    v26 = sub_14490C();
    v28 = sub_ED2A4(v26, v27, &v37);

    *(v19 + 54) = v28;
    _os_log_impl(&dword_0, v16, v17, "%s Received treatment completion=%{public}s for id=%{private,mask.hash}s at elapsedTime=%{private,mask.hash}s.", v19, 0x3Eu);
    swift_arrayDestroy();

    return (*(v12 + 8))(v14, v31);
  }

  else
  {

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_299E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5)
{
  v10 = sub_14243C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  sub_2ADDC(a1, a2, a3);
  v14 = sub_14242C();
  v15 = sub_144C5C();
  sub_2AFA8(a1, a2, a3);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v27 = a4;
    v33 = v18;
    *v17 = 136316163;
    *(v17 + 4) = sub_ED2A4(0xD00000000000001ELL, 0x80000000001611B0, &v33);
    *(v17 + 12) = 2160;
    *(v17 + 14) = 1752392040;
    v29 = v10;
    v30 = a1;
    *(v17 + 22) = 2081;
    v31 = a2;
    v32 = a3;
    sub_2ADDC(a1, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C17B0);
    v19 = sub_14490C();
    v21 = sub_ED2A4(v19, v20, &v33);

    *(v17 + 24) = v21;
    *(v17 + 32) = 2160;
    *(v17 + 34) = 1752392040;
    *(v17 + 42) = 2081;
    v30 = v27;
    LOBYTE(v31) = v28 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C17E8);
    v22 = sub_14490C();
    v24 = sub_ED2A4(v22, v23, &v33);

    *(v17 + 44) = v24;
    _os_log_impl(&dword_0, v14, v15, "%s Received treatment cancellation for id=%{private,mask.hash}s at elapsedTime=%{private,mask.hash}s.", v17, 0x34u);
    swift_arrayDestroy();

    return (*(v11 + 8))(v13, v29);
  }

  else
  {

    return (*(v11 + 8))(v13, v10);
  }
}

uint64_t sub_29CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_144ABC();
  v4[4] = sub_144AAC();
  v6 = sub_144A8C();

  return _swift_task_switch(sub_29D58, v6, v5);
}

uint64_t sub_29D58()
{
  v1 = v0[3];
  v2 = v0[2];

  *v2 = v1;
  v4 = v0[1];
  swift_unknownObjectRetain();

  return v4();
}

uint64_t sub_29DDC(void *a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{a2, a3}];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2C260;
  *(v8 + 24) = v7;
  v13[4] = sub_2C2D8;
  v13[5] = v8;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_29F7C;
  v13[3] = &block_descriptor_1;
  v9 = _Block_copy(v13);
  v10 = a1;

  v11 = [v6 imageWithActions:v9];

  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void sub_29F7C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t sub_29FF0(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v62 = a4;
  v53 = a3;
  v54 = a2;
  v65 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v7 - 8);
  v64 = &v52 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E8);
  v68 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v52 - v9;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16F0);
  v69 = *(v71 - 8);
  __chkstk_darwin(v71);
  v67 = &v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16F8);
  v63 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v52 - v12;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1700);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v55 = &v52 - v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1708);
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v16 = &v52 - v15;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1710);
  v59 = *(v61 - 8);
  __chkstk_darwin(v61);
  v18 = &v52 - v17;
  v19 = sub_141A1C();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_289AC(a1, v74);
  sub_1DB40(v74, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1718);
  if (swift_dynamicCast())
  {
    v52 = v13;
    (*(v20 + 8))(v22, v19);
    v73[0] = sub_28DFC(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1758);
    sub_1D4A4(&qword_1C1760, &qword_1C1758);
    sub_1427BC();

    sub_1DB40(v5 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_treatmentTrace, v73);
    sub_1D4A4(&qword_1C1768, &qword_1C1708);
    v24 = v60;
    sub_141E1C();
    sub_14270C();
    sub_15340(v73, &qword_1C1770);
    (*(v58 + 8))(v16, v24);
    sub_1D4A4(&qword_1C1778, &qword_1C1710);
    v25 = v61;
    v26 = sub_14273C();
    (*(v59 + 8))(v18, v25);
    v27 = *(a1 + 24);
    if (v27 == 255)
    {
      v28 = v11;
      v29 = v63;
      v30 = v52;
      if (v62 == 0xFF)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v28 = v11;
      v29 = v63;
      v30 = v52;
      if (v62 != 0xFF)
      {
        v31 = *(a1 + 8);
        if (v27)
        {
          if ((v62 & 1) == 0 || v31 != v54)
          {
            goto LABEL_12;
          }
        }

        else if ((v62 & 1) != 0 || (v31 != v54 || *(a1 + 16) != v53) && (sub_1453BC() & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_17:
        v73[0] = v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1730);
        sub_1D4A4(&qword_1C1738, &qword_1C1730);
        v32 = sub_14273C();

        goto LABEL_13;
      }
    }

LABEL_12:
    sub_1DB40(v74, v73);
    sub_14264C();
    v73[0] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1730);
    sub_1D4A4(&unk_1C1720, &qword_1C16F8);
    sub_1D4A4(&qword_1C1738, &qword_1C1730);
    v33 = v55;
    sub_14281C();
    (*(v29 + 8))(v30, v28);
    sub_1D4A4(&qword_1C1780, &qword_1C1700);
    v34 = v57;
    v32 = sub_14273C();

    (*(v56 + 8))(v33, v34);
    goto LABEL_13;
  }

  sub_1DB40(v74, v73);
  sub_14264C();
  sub_1D4A4(&unk_1C1720, &qword_1C16F8);
  v32 = sub_14273C();
  (*(v63 + 8))(v13, v11);
LABEL_13:
  v73[0] = v32;
  sub_2B860(0, &qword_1C2160);

  v63 = v32;
  v35 = sub_144D8C();
  v72 = v35;
  v36 = sub_144D3C();
  v37 = v64;
  (*(*(v36 - 8) + 56))(v64, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1730);
  sub_1D4A4(&qword_1C1738, &qword_1C1730);
  sub_2ACD0();
  v38 = v66;
  sub_14283C();
  sub_15340(v37, &qword_1C16E0);

  v39 = *(a1 + 8);
  v40 = *(v23 + 16);
  v41 = *(v23 + 32);
  v42 = *(v23 + 40);
  LOBYTE(v37) = *(v23 + 24);
  v43 = swift_allocObject();
  *(v43 + 16) = v39;
  *(v43 + 24) = v40;
  *(v43 + 32) = v37;
  *(v43 + 40) = v41;
  *(v43 + 48) = v42;
  v44 = v65;
  *(v43 + 56) = v65;
  v45 = swift_allocObject();
  *(v45 + 16) = v39;
  *(v45 + 24) = v40;
  *(v45 + 32) = v37;
  *(v45 + 40) = v41;
  *(v45 + 48) = v42;
  *(v45 + 56) = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v39;
  *(v46 + 24) = v40;
  *(v46 + 32) = v37;
  *(v46 + 40) = v41;
  *(v46 + 48) = v42;
  *(v46 + 56) = v44;
  sub_2ADDC(v39, v40, v37);
  sub_2ADDC(v39, v40, v37);
  sub_2ADDC(v39, v40, v37);
  sub_1D4A4(&qword_1C1748, &qword_1C16E8);
  v47 = v70;
  v48 = v67;
  sub_14275C();

  (*(v68 + 8))(v38, v47);
  sub_1D4A4(&qword_1C1750, &qword_1C16F0);
  v49 = v71;
  v50 = sub_14273C();

  (*(v69 + 8))(v48, v49);
  __swift_destroy_boxed_opaque_existential_0(v74);
  return v50;
}

unint64_t sub_2ACD0()
{
  result = qword_1C1740;
  if (!qword_1C1740)
  {
    sub_2B860(255, &qword_1C2160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1740);
  }

  return result;
}

uint64_t sub_2AD3C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 32);
  if (v1 != 255)
  {
    sub_2AD3C(*(v0 + 16), *(v0 + 24), v1 & 1);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_2ADDC(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2ADF4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2ADF4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2AE04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2AEF4()
{
  result = qword_1C17A0;
  if (!qword_1C17A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C17A0);
  }

  return result;
}

uint64_t sub_2AF48()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_2AD3C(*(v0 + 24), *(v0 + 32), v1 & 1);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_2AFA8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2AD3C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2AFC0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2B000(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D0A8;

  return sub_29CC0(a1, v4, v5, v6);
}

uint64_t sub_2B0B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v35 = a1;
  v4 = sub_14243C();
  v32 = *(v4 - 8);
  v33 = v4;
  __chkstk_darwin(v4);
  v31 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16D0);
  v36 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v28 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  v8 = __chkstk_darwin(v28);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2330);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - v15;
  v17 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__backdropImage;
  *&v37[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C15E8);
  sub_14269C();
  (*(v14 + 32))(v3 + v17, v16, v13);
  v29 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__primaryArtworkData;
  v18 = sub_140C4C();
  v19 = *(*(v18 - 8) + 56);
  v19(v12, 1, 1, v18);
  sub_1D19C(v12, v10, &unk_1C15F8);
  sub_14269C();
  sub_15340(v12, &unk_1C15F8);
  v20 = *(v36 + 32);
  v36 += 32;
  v21 = v30;
  v20(v3 + v29, v7, v30);
  v22 = OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController__metadataArtworkData;
  v19(v12, 1, 1, v18);
  sub_1D19C(v12, v10, &unk_1C15F8);
  sub_14269C();
  sub_15340(v12, &unk_1C15F8);
  v20(v3 + v22, v7, v21);
  v23 = v31;
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  v24 = v33;
  v25 = *(v32 + 8);
  v25(v23, v33);
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  v25(v23, v24);
  *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_subscriptions) = _swiftEmptyArrayStorage;
  v26 = v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_backdropConnection;
  *v26 = 0u;
  *(v26 + 16) = 0u;
  *(v26 + 32) = 0;
  *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_nowPlayingItemStateSubscription) = 0;
  *(v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_nowPlayingItemStatePublisher) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1810);

  sub_1446DC();
  sub_2B5CC(v37, v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_imageProvider);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1818);
  sub_1446DC();
  sub_2B5CC(v37, v3 + OBJC_IVAR____TtC12NowPlayingUI27NowPlayingArtworkController_artworkProvider);
  sub_22568();
  return v3;
}

uint64_t sub_2B5CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2B5E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_2B61C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B65C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_2B694(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v8[0] = *a1;
  v8[1] = v3;
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v5 = a1[5];
  v9[0] = a1[4];
  v9[1] = v5;
  v6 = a1[7];
  v9[2] = a1[6];
  v9[3] = v6;
  return v2(v8, v9);
}

uint64_t sub_2B738()
{
  result = swift_beginAccess();
  *(v0 + 16) = 1;
  return result;
}

uint64_t sub_2B780()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_2B7F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16D8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B860(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2B8A8(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1960);
  v43 = *(v3 - 8);
  v44 = v3;
  __chkstk_darwin(v3);
  v40 = &v35 - v4;
  v41 = sub_140C7C();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = v6;
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1978);
  v47 = *(v49 - 8);
  __chkstk_darwin(v49);
  v45 = &v35 - v7;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1980);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v46 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C15F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_140C4C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v16 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v35 - v17;
  sub_1D19C(a1, v11, &unk_1C15F8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_15340(v11, &unk_1C15F8);
    sub_2B860(0, &qword_1C2F20);
    v19 = v40;
    sub_14265C();
    sub_1D4A4(&qword_1C1970, &unk_1C1960);
    v20 = v44;
    v21 = sub_14273C();
    (*(v43 + 8))(v19, v20);
  }

  else
  {
    v22 = *(v13 + 32);
    v36 = v12;
    v37 = v18;
    v22(v18, v11, v12);
    (*(v13 + 16))(v16, v18, v12);
    v23 = v39;
    v24 = v41;
    (*(v5 + 16))(v39, v42, v41);
    v25 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v26 = (v14 + *(v5 + 80) + v25) & ~*(v5 + 80);
    v27 = swift_allocObject();
    v28 = v27 + v25;
    v29 = v36;
    v22(v28, v16, v36);
    (*(v5 + 32))(v27 + v26, v23, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1988);
    sub_1D4A4(&qword_1C1990, &qword_1C1988);
    v30 = v45;
    sub_14268C();
    sub_2B860(0, &qword_1C2F20);
    sub_1D4A4(&qword_1C1998, &qword_1C1978);
    v31 = v46;
    v32 = v49;
    sub_14274C();
    (*(v47 + 8))(v30, v32);
    sub_1D4A4(&qword_1C19A0, &qword_1C1980);
    v33 = v50;
    v21 = sub_14273C();
    (*(v48 + 8))(v31, v33);
    (*(v13 + 8))(v37, v29);
  }

  return v21;
}

uint64_t sub_2BF4C()
{
  v1 = sub_140C4C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_140C7C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_2C094()
{
  sub_140C4C();
  sub_140C7C();

  return sub_27AA8();
}

uint64_t sub_2C168(uint64_t a1, uint64_t a2)
{
  v4 = sub_141DEC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2C1CC(uint64_t a1)
{
  v2 = sub_141DEC();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2C228()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_2C260(void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  [*(v1 + 16) setFill];

  return [a1 fillRect:{0.0, 0.0, v3, v4}];
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2C31C(uint64_t a1)
{
  v3 = *(sub_140C7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_27DD0(a1, v1 + v4, v6, v7, v8);
}

uint64_t sub_2C3CC(uint64_t a1)
{
  v3 = *(sub_140C7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((v4 + *(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  return sub_2828C(a1, v1 + v4, v6, v7, v8);
}

uint64_t objectdestroy_51Tm()
{
  v1 = sub_140C7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = v4 + *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v6 = v0 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  v7 = *(v6 + 16);
  if (v7 != 255)
  {
    sub_2AD3C(*v6, *(v6 + 8), v7 & 1);
  }

  return _swift_deallocObject(v0, ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2C534()
{
  v1 = *(sub_140C7C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((v2 + *(v1 + 64) + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);

  return sub_2861C(v0 + v2, v4, v5, v6);
}

Swift::Int sub_2C694()
{
  v1 = *v0;
  sub_14545C();
  if (v1)
  {
    sub_14500C();
  }

  else
  {
    sub_14546C(0xF4240uLL);
  }

  return sub_1454AC();
}

void sub_2C6F0()
{
  if (*v0)
  {
    sub_14500C();
  }

  else
  {
    sub_14546C(0xF4240uLL);
  }
}

uint64_t sub_2C740(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2C790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_2C7E4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

Swift::Int sub_2C814()
{
  v1 = *v0;
  sub_14545C();
  if (v1)
  {
    sub_14500C();
  }

  else
  {
    sub_14546C(0xF4240uLL);
  }

  return sub_1454AC();
}

id sub_2C86C(void **a1, void **a2)
{
  v4 = *a1;
  v5 = *a2;
  if (!v4)
  {
    return (v5 == 0);
  }

  if (!v5)
  {
    return 0;
  }

  if (v4 == v5)
  {
    return &dword_0 + 1;
  }

  return [v4 isEqual:{v2, v3}];
}

unint64_t sub_2C8C8()
{
  result = qword_1C1A40;
  if (!qword_1C1A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1A40);
  }

  return result;
}

uint64_t sub_2C91C(unsigned __int8 *a1, uint64_t a2)
{
  v4 = sub_14243C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1423CC();
  v9 = sub_14242C();
  v10 = sub_144C5C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19[0] = v13;
    *v12 = 136315394;
    v14 = sub_1454BC();
    v16 = sub_ED2A4(v14, v15, v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1026;
    *(v12 + 14) = v8;
    _os_log_impl(&dword_0, v9, v10, "[%s]: [Transcript Button] Setting to enabled: %{BOOL,public}d", v12, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  (*(v5 + 8))(v7, v4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2CB2C();

    sub_14196C();
  }

  return result;
}

uint64_t sub_2CB2C()
{
  v1 = v0;
  v2 = sub_1417CC();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_14138C();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___transcriptButton;
  if (*(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___transcriptButton))
  {
    v12 = *(v1 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___transcriptButton);
  }

  else
  {
    if (qword_1BFF00 != -1)
    {
      v17 = v8;
      swift_once();
      v8 = v17;
    }

    v13 = v8;
    v14 = __swift_project_value_buffer(v8, static NowPlayingButtonID.transcript);
    swift_beginAccess();
    (*(v7 + 16))(v10, v14, v13);
    if (qword_1BFF08 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, static NowPlayingHostedContentID.transcript);
    swift_beginAccess();
    (*(v3 + 16))(v5, v15, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D10);
    swift_allocObject();
    v12 = sub_14197C();
    *(v1 + v11) = v12;
  }

  return v12;
}

uint64_t sub_2CDD8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CA8);
  __chkstk_darwin(v3 - 8);
  v26 = &v23 - v4;
  v5 = sub_1417CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CB0);
  __chkstk_darwin(v9 - 8);
  v27 = &v23 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C80);
  v12 = __chkstk_darwin(v11 - 8);
  v25 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v23 - v14;
  v16 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___hostedContent;
  swift_beginAccess();
  sub_1D19C(v1 + v16, v15, &qword_1C1C80);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1AA8);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v15, 1, v17) != 1)
  {
    return (*(v18 + 32))(a1, v15, v17);
  }

  v24 = a1;
  sub_15340(v15, &qword_1C1C80);
  sub_1417BC();
  v23 = sub_301E8();
  sub_14131C();
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  (*(v6 + 16))(v8, v19, v5);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  sub_14218C();
  sub_30198(&qword_1C1CC0, &type metadata accessor for TranscriptViewController);
  sub_14132C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CC8);
  sub_30198(&qword_1C1CD0, &type metadata accessor for NowPlayingHostedContentID);
  sub_1D4A4(&qword_1C1CD8, &qword_1C1CC8);
  v20 = v24;
  sub_1411AC();
  v21 = v25;
  (*(v18 + 16))(v25, v20, v17);
  (*(v18 + 56))(v21, 0, 1, v17);
  swift_beginAccess();
  sub_3027C(v21, v1 + v16);
  return swift_endAccess();
}

uint64_t sub_2D2EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);

  v4 = sub_14159C();
  type metadata accessor for NowPlayingMediaPlayerController();
  sub_30198(&qword_1C0E50, type metadata accessor for NowPlayingMediaPlayerController);
  v5 = sub_142DBC();
  v7 = v6;
  sub_143CAC();
  sub_14427C();
  sub_30198(&qword_1C0E88, &type metadata accessor for QueueViewModel);

  result = sub_142B9C();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = result;
  a2[3] = v9;
  a2[4] = v5;
  a2[5] = v7;
  a2[6] = v10;
  a2[7] = v11;
  return result;
}

uint64_t sub_2D46C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v17[-1] - v5;
  swift_unownedRetainStrong();

  sub_14188C();
  v7 = sub_14120C();
  v8 = *(v7 - 8);
  result = (*(v8 + 48))(v6, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CE8);
    v18 = v7;
    v19 = &protocol witness table for DeviceMetrics;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    sub_1446FC();

    __swift_destroy_boxed_opaque_existential_0(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CF0);
    swift_unownedRetainStrong();
    v11 = a2[4];

    v12 = sub_1416CC();
    v18 = v12;
    v19 = &protocol witness table for NowPlayingViewModel;
    v17[0] = v11;
    sub_1446FC();

    __swift_destroy_boxed_opaque_existential_0(v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1CF8);
    swift_unownedRetainStrong();
    v13 = a2[4];

    v18 = v12;
    v19 = &protocol witness table for NowPlayingViewModel;
    v17[0] = v13;
    sub_1446FC();

    __swift_destroy_boxed_opaque_existential_0(v17);
    sub_14221C();
    swift_unownedRetainStrong();
    v14 = a2[7];

    v17[0] = v14;
    sub_1446FC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D00);
    swift_unownedRetainStrong();
    v15 = a2[3];

    v18 = sub_141D4C();
    v19 = &protocol witness table for PlaybackController;
    v17[0] = v15;
    sub_1446FC();

    __swift_destroy_boxed_opaque_existential_0(v17);
    swift_unownedRetainStrong();

    v18 = sub_1418CC();
    v19 = sub_30198(&qword_1C1D08, &type metadata accessor for NowPlayingHostedContentSession);
    v17[0] = a1;
    objc_allocWithZone(sub_14218C());

    return sub_14217C();
  }

  return result;
}

uint64_t sub_2D824@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C88);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_30640(v1 + v10, v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25D0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_30130(v9);
  v13 = sub_14142C();
  v15[0] = v3;
  v15[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D20);
  sub_30198(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C2690, &qword_1C1D20);
  sub_14119C();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_306B0(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_2DAEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D28);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - v2;
  swift_getKeyPath();
  if (qword_1BFF18 != -1)
  {
    swift_once();
  }

  v4 = sub_14142C();
  __swift_project_value_buffer(v4, qword_1D1780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D38);
  v5 = sub_3075C();
  v9 = &type metadata for NowPlayingFooterButtonController.QueueButtonLabel;
  v10 = v5;
  swift_getOpaqueTypeConformance2();
  sub_14183C();

  swift_getKeyPath();
  if (qword_1BFF10 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v4, qword_1D1768);
  v6 = type metadata accessor for NowPlayingFooterButtonController.TranscriptsButtonLabel(255);
  v7 = sub_30198(&qword_1C1D40, type metadata accessor for NowPlayingFooterButtonController.TranscriptsButtonLabel);
  v9 = v6;
  v10 = v7;
  swift_getOpaqueTypeConformance2();
  sub_14183C();

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_2DD70()
{
  v1 = v0;
  v2 = sub_1417CC();
  __chkstk_darwin(v2 - 8);
  v3 = sub_14138C();
  __chkstk_darwin(v3 - 8);
  v4 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___queueButton;
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___queueButton))
  {
    v5 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___queueButton);
  }

  else
  {
    sub_14134C();
    sub_1417BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D48);
    swift_allocObject();
    v5 = sub_14197C();
    *(v1 + v4) = v5;
  }

  return v5;
}

uint64_t sub_2DEBC@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v16[0] = sub_14309C();
  v1 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C30);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - v6;
  v8 = [objc_opt_self() mainBundle];
  v15._countAndFlagsBits = 0xE000000000000000;
  v17._object = 0x80000000001613B0;
  v17._countAndFlagsBits = 0xD000000000000015;
  v18.value._countAndFlagsBits = 0;
  v18.value._object = 0;
  v9.super.isa = v8;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v10 = sub_1409DC(v17, v18, v9, v19, v15);
  v12 = v11;

  v16[2] = v10;
  v16[3] = v12;
  sub_9CCC();
  sub_143C9C();
  sub_14308C();
  sub_1D4A4(&qword_1C1C38, &qword_1C1C30);
  sub_30198(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  v13 = v16[0];
  sub_14389C();
  (*(v1 + 8))(v3, v13);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2E1A4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_2E204@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D18);

  return swift_storeEnumTagMultiPayload();
}

void sub_2E264(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v7._countAndFlagsBits = 0xE000000000000000;
  v8._object = 0x8000000000161400;
  v8._countAndFlagsBits = 0xD00000000000001ALL;
  v9.value._countAndFlagsBits = 0;
  v9.value._object = 0;
  v3.super.isa = v2;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v4 = sub_1409DC(v8, v9, v3, v10, v7);
  v6 = v5;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = _swiftEmptyArrayStorage;
}

uint64_t sub_2E314()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C78);
  __chkstk_darwin(v0);
  v2 = (&v18 - v1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C60);
  __chkstk_darwin(v3);
  v5 = (&v18 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1C00);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  sub_FA78C(&v18 - v7);
  v9 = sub_1434EC();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_15340(v8, &unk_1C1C00);
  }

  else
  {
    v11 = sub_1434BC();
    (*(v10 + 8))(v8, v9);
    if (v11)
    {
      v12 = sub_143C6C();
      v13 = (v5 + *(v3 + 36));
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C14C0) + 28);
      v15 = enum case for Image.Scale.small(_:);
      v16 = sub_143C4C();
      (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
      *v13 = swift_getKeyPath();
      *v5 = v12;
      sub_1D19C(v5, v2, &qword_1C1C60);
      swift_storeEnumTagMultiPayload();
      sub_2FDB0();
      sub_14329C();
      return sub_15340(v5, &qword_1C1C60);
    }
  }

  *v2 = sub_143C2C();
  swift_storeEnumTagMultiPayload();
  sub_2FDB0();
  return sub_14329C();
}

uint64_t sub_2E664()
{
  v1 = sub_14309C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C40);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  v11 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C48);
  sub_2FD24();
  sub_143C7C();
  sub_14308C();
  sub_1D4A4(&qword_1C1C70, &qword_1C1C40);
  sub_30198(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  sub_14389C();
  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2E8D4(uint64_t a1, int a2)
{
  v81 = a2;
  v84 = sub_14138C();
  *&v82 = *(v84 - 8);
  v2 = __chkstk_darwin(v84);
  v77 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v75 = &v72 - v5;
  __chkstk_darwin(v4);
  *&v83 = &v72 - v6;
  v7 = sub_1411CC();
  v8 = *(v7 - 8);
  v79 = v7;
  v80 = v8;
  __chkstk_darwin(v7);
  v74 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C90);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v78 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0);
  v14 = __chkstk_darwin(v13 - 8);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v72 - v17;
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = sub_14120C();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C25C0);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v72 - v27;
  sub_142DCC();
  sub_14121C();
  v29 = v28;
  v30 = v20;
  v31 = v78;
  (*(v26 + 8))(v29, v25);
  v32 = v79;
  sub_1411DC();
  v33 = v21;
  v34 = v80;
  (*(v22 + 8))(v24, v33);
  (*(v34 + 104))(v18, enum case for DeviceMetrics.Layout.compact(_:), v32);
  (*(v34 + 56))(v18, 0, 1, v32);
  v35 = *(v11 + 56);
  sub_1D19C(v30, v31, &unk_1C10C0);
  sub_1D19C(v18, v31 + v35, &unk_1C10C0);
  v36 = *(v34 + 48);
  if (v36(v31, 1, v32) == 1)
  {
    sub_15340(v18, &unk_1C10C0);
    sub_15340(v30, &unk_1C10C0);
    v37 = v36(v31 + v35, 1, v32);
    v38 = v84;
    v39 = v82;
    if (v37 == 1)
    {
      sub_15340(v31, &unk_1C10C0);
      v40 = v83;
LABEL_16:
      if (v81)
      {
        if (qword_1BFF10 != -1)
        {
          swift_once();
        }

        v62 = sub_14142C();
        __swift_project_value_buffer(v62, qword_1D1768);
        sub_14136C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C98);
        v63 = (*(v39 + 80) + 32) & ~*(v39 + 80);
        v64 = swift_allocObject();
        *(v64 + 1) = xmmword_14A710;
        (*(v39 + 32))(v64 + v63, v40, v38);
      }

      else
      {
        v64 = _swiftEmptyArrayStorage;
      }

      sub_14135C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C98);
      v65 = (*(v39 + 80) + 32) & ~*(v39 + 80);
      v66 = swift_allocObject();
      v83 = xmmword_14A710;
      *(v66 + 16) = xmmword_14A710;
      v67 = *(v39 + 32);
      v67(v66 + v65, v40, v38);
      if (qword_1BFF18 != -1)
      {
        swift_once();
      }

      v68 = sub_14142C();
      __swift_project_value_buffer(v68, qword_1D1780);
      v69 = v75;
      sub_14136C();
      v70 = swift_allocObject();
      *(v70 + 16) = v83;
      v67(v70 + v65, v69, v38);
      v85 = v64;
      v56 = &v85;
      sub_A707C(v66);
      v57 = v70;
      goto LABEL_24;
    }

    goto LABEL_6;
  }

  v73 = v30;
  v41 = v76;
  sub_1D19C(v31, v76, &unk_1C10C0);
  if (v36(v31 + v35, 1, v32) == 1)
  {
    sub_15340(v18, &unk_1C10C0);
    sub_15340(v73, &unk_1C10C0);
    (*(v34 + 8))(v41, v32);
    v38 = v84;
    v39 = v82;
LABEL_6:
    sub_15340(v31, &qword_1C1C90);
    v40 = v83;
    goto LABEL_7;
  }

  v58 = v31 + v35;
  v59 = v74;
  (*(v34 + 32))(v74, v58, v32);
  sub_30198(&qword_1C1CA0, &type metadata accessor for DeviceMetrics.Layout);
  v60 = sub_14486C();
  v61 = *(v34 + 8);
  v61(v59, v32);
  sub_15340(v18, &unk_1C10C0);
  sub_15340(v73, &unk_1C10C0);
  v61(v41, v32);
  sub_15340(v31, &unk_1C10C0);
  v38 = v84;
  v39 = v82;
  v40 = v83;
  if (v60)
  {
    goto LABEL_16;
  }

LABEL_7:
  sub_14135C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C98);
  v42 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = swift_allocObject();
  v82 = xmmword_14A710;
  *(v43 + 16) = xmmword_14A710;
  v44 = *(v39 + 32);
  v44(v43 + v42, v40, v38);
  v45 = v77;
  sub_14137C();
  v46 = swift_allocObject();
  *(v46 + 16) = v82;
  v47 = v45;
  v48 = v84;
  v44(v46 + v42, v47, v84);
  if (v81)
  {
    if (qword_1BFF10 != -1)
    {
      swift_once();
    }

    v49 = sub_14142C();
    __swift_project_value_buffer(v49, qword_1D1768);
    sub_14136C();
    v50 = swift_allocObject();
    v51 = v40;
    v52 = v50;
    *(v50 + 16) = v82;
    v44(v50 + v42, v51, v48);
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  if (qword_1BFF18 != -1)
  {
    swift_once();
  }

  v53 = sub_14142C();
  __swift_project_value_buffer(v53, qword_1D1780);
  v54 = v83;
  sub_14136C();
  v55 = swift_allocObject();
  *(v55 + 16) = v82;
  v44(v55 + v42, v54, v84);
  v86 = v43;
  v56 = &v86;
  sub_A707C(v46);
  sub_A707C(v52);
  v57 = v55;
LABEL_24:
  sub_A707C(v57);
  return *v56;
}

uint64_t sub_2F304()
{

  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___hostedContent, &qword_1C1C80);
  sub_30130(v0 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___viewProvider);

  return v0;
}

uint64_t sub_2F3A4()
{
  sub_2F304();

  return swift_deallocClassInstance();
}

void (*sub_2F448(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_14189C();
  return sub_2F4BC;
}

void sub_2F4BC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*static NowPlayingButtonID.transcript.modify())()
{
  if (qword_1BFF00 != -1)
  {
    swift_once();
  }

  v0 = sub_14138C();
  __swift_project_value_buffer(v0, static NowPlayingButtonID.transcript);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2F6AC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
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
  v8 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  return (*(*(v7 - 8) + 16))(a4, v8, v7);
}

uint64_t sub_2F798(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (*a2 == -1)
  {
    v6 = a3(0);
  }

  else
  {
    swift_once();
    v6 = a3(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a4);
  swift_beginAccess();
  v9 = *(v7 - 8);
  (*(v9 + 24))(v8, a1, v7);
  swift_endAccess();
  return (*(v9 + 8))(a1, v7);
}

uint64_t (*static NowPlayingHostedContentID.transcript.modify())()
{
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v0 = sub_1417CC();
  __swift_project_value_buffer(v0, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_2F940()
{
  sub_2FC80(319, &qword_1C1AA0, &qword_1C1AA8, &unk_14BD10, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_2FC80(319, &unk_1C1AB0, &qword_1C25D0, &unk_14BD18, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_2FAC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1B88);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2FB4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1B88);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_2FBE8()
{
  sub_2FC80(319, &qword_1C1BF8, &unk_1C1C00, &unk_14BD78, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2FC80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2FD24()
{
  result = qword_1C1C50;
  if (!qword_1C1C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C48);
    sub_2FDB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1C50);
  }

  return result;
}

unint64_t sub_2FDB0()
{
  result = qword_1C1C58;
  if (!qword_1C1C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C1C60);
    sub_1D4A4(&qword_1C1C68, &qword_1C14C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1C58);
  }

  return result;
}

uint64_t sub_2FE9C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0x697263736E617274, 0xEA00000000007470);
}

uint64_t sub_2FF14()
{
  v0 = sub_14142C();
  __swift_allocate_value_buffer(v0, qword_1D1780);
  __swift_project_value_buffer(v0, qword_1D1780);
  return sub_14143C();
}

uint64_t sub_2FF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1C00);
  __chkstk_darwin(v2 - 8);
  sub_1D19C(a1, &v5 - v3, &unk_1C1C00);
  return sub_14129C();
}

uint64_t sub_30064(uint64_t a1)
{
  v2 = sub_143C4C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_142DFC();
}

uint64_t sub_30130(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_30198(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_301E8()
{
  result = qword_1C1CB8;
  if (!qword_1C1CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1CB8);
  }

  return result;
}

uint64_t sub_3023C()
{
  swift_unownedRelease();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3027C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t *sub_302EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v22 = *v8;
  v8[6] = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___hostedContent;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1AA8);
  (*(*(v16 - 8) + 56))(v8 + v15, 1, 1, v16);
  v17 = OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___viewProvider;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25D0);
  (*(*(v18 - 8) + 56))(v8 + v17, 1, 1, v18);
  *(v8 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___queueButton) = 0;
  *(v8 + OBJC_IVAR____TtC12NowPlayingUI32NowPlayingFooterButtonController____lazy_storage___transcriptButton) = 0;
  v8[2] = a1;
  sub_141D4C();

  sub_1446DC();
  v8[3] = v23;
  v8[4] = a2;
  v8[5] = a3;
  v8[7] = a4;
  v8[8] = a6;
  *(v8 + 72) = a7;
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
  sub_1D4A4(&qword_1C2020, &unk_1C9310);
  sub_14289C();

  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  return v8;
}

uint64_t sub_30598()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_305D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_30640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_306B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1C88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_30720@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2DD70();
  *a1 = result;
  return result;
}

unint64_t sub_3075C()
{
  result = qword_1C1D30;
  if (!qword_1C1D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1D30);
  }

  return result;
}

uint64_t sub_307D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2CB2C();
  *a1 = result;
  return result;
}

uint64_t keypath_set_18Tm(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(*a2 + *a5) = *a1;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE10labelStyleyQrqd__AA05LabelE0Rd__lFQOyAA0F0VyAA4TextVAA5ImageVG_AA08IconOnlyfE0VQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_14309C();
  sub_1D4A4(a4, a2);
  sub_30198(&qword_1C2B90, &type metadata accessor for IconOnlyLabelStyle);
  return swift_getOpaqueTypeConformance2();
}

uint64_t *MPULayoutSizeNoDimension.unsafeMutableAddressor()
{
  if (qword_1BFF20 != -1)
  {
    swift_once();
  }

  return &MPULayoutSizeNoDimension;
}

double sub_30A0C()
{
  result = MTMPULayoutSizeNoDimension;
  MPULayoutSizeNoDimension = MTMPULayoutSizeNoDimension;
  return result;
}

uint64_t sub_30A48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C25C0);
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_142DDC();
}

uint64_t sub_30B3C(uint64_t a1)
{
  v2 = sub_14120C();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_14122C();
}

uint64_t NowPlayingMediaPlayerController.controlsInteractionTracker.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

void *NowPlayingMediaPlayerController.__allocating_init(asPartOf:)()
{
  swift_allocObject();
  v0 = sub_4030C();

  return v0;
}

void *NowPlayingMediaPlayerController.init(asPartOf:)()
{
  v0 = sub_4030C();

  return v0;
}

uint64_t sub_30D5C@<X0>(uint64_t *a1@<X8>)
{
  sub_14437C();
  swift_allocObject();

  result = sub_14436C();
  *a1 = result;
  return result;
}

id sub_30DC4()
{
  v1 = sub_140C4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_140C7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 136))
  {
    v9 = *(v0 + 136);
LABEL_5:

    return v9;
  }

  (*(v6 + 104))(v8, enum case for NowPlayingArtwork.Placement.primary(_:), v5);
  sub_1DB40(v0 + 96, v14);
  type metadata accessor for NowPlayingArtworkViewModel();
  v9 = swift_allocObject();
  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    *v4 = result;
    (*(v2 + 104))(v4, enum case for NowPlayingArtwork.Data.image(_:), v1);
    (*(v2 + 32))(v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData, v4, v1);
    _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
    (*(v6 + 32))(v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_placement, v8, v5);
    v11 = v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace;
    v12 = v14[1];
    *v11 = v14[0];
    *(v11 + 16) = v12;
    *(v11 + 32) = v15;
    *(v0 + 136) = v9;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_31040()
{
  v1 = sub_140C4C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_140C7C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 184))
  {
    v9 = *(v0 + 184);
LABEL_5:

    return v9;
  }

  (*(v6 + 104))(v8, enum case for NowPlayingArtwork.Placement.metadata(_:), v5);
  sub_1DB40(v0 + 144, v14);
  type metadata accessor for NowPlayingArtworkViewModel();
  v9 = swift_allocObject();
  result = [objc_opt_self() defaultPodcastArtwork];
  if (result)
  {
    *v4 = result;
    (*(v2 + 104))(v4, enum case for NowPlayingArtwork.Data.image(_:), v1);
    (*(v2 + 32))(v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel__artworkData, v4, v1);
    _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
    (*(v6 + 32))(v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_placement, v8, v5);
    v11 = v9 + OBJC_IVAR____TtC12NowPlayingUI26NowPlayingArtworkViewModel_trace;
    v12 = v14[1];
    *v11 = v14[0];
    *(v11 + 16) = v12;
    *(v11 + 32) = v15;
    *(v0 + 184) = v9;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_312BC()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    v1 = sub_3131C();
    *(v0 + 232) = v1;
  }

  return v1;
}

uint64_t sub_3131C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v0 - 8);
  v55 = &v37 - v1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C24F8);
  v50 = *(v48 - 8);
  __chkstk_darwin(v48);
  v39 = &v37 - v2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2500);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v42 = &v37 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2508);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v40 = &v37 - v4;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2510);
  v54 = *(v51 - 8);
  __chkstk_darwin(v51);
  v41 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2518);
  v7 = *(v6 - 8);
  v52 = v6;
  v53 = v7;
  __chkstk_darwin(v6);
  v49 = &v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2520);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20D0);
  v56 = *(v37 - 8);
  v13 = __chkstk_darwin(v37);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v37 - v16;
  v38 = &v37 - v16;
  sub_141BCC();
  v57 = sub_141C4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4AC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2530);
  v43 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_1D4A4(&qword_1C2538, &unk_1C4AC0);
  sub_1427BC();

  sub_1D4A4(&qword_1C2540, &unk_1C2520);
  v18 = sub_14273C();
  (*(v10 + 8))(v12, v9);
  v57 = v18;
  v19 = v37;
  (*(v56 + 16))(v15, v17, v37);
  sub_1D4A4(&qword_1C2118, &qword_1C20D0);

  v20 = v39;
  v21 = v19;
  sub_1424EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2548);
  sub_1D4A4(&qword_1C2550, &qword_1C24F8);
  v22 = v42;
  v23 = v48;
  sub_1427BC();
  (*(v50 + 8))(v20, v23);
  v24 = v40;
  v25 = v44;
  sub_14254C();
  (*(v46 + 8))(v22, v25);
  sub_1D4A4(&qword_1C2558, &qword_1C2508);
  sub_4326C();
  v26 = v41;
  v27 = v45;
  sub_14286C();
  (*(v47 + 8))(v24, v27);
  sub_2B860(0, &qword_1C2160);
  v28 = sub_144D8C();
  v57 = v28;
  v29 = sub_144D3C();
  v30 = v55;
  (*(*(v29 - 8) + 56))(v55, 1, 1, v29);
  sub_1D4A4(&qword_1C2568, &qword_1C2510);
  sub_4236C(&qword_1C1740, &qword_1C2160);
  v31 = v49;
  v32 = v51;
  sub_14283C();
  sub_15340(v30, &qword_1C16E0);

  (*(v54 + 8))(v26, v32);
  sub_1D4A4(&qword_1C2570, &qword_1C2518);
  v33 = v52;
  v34 = sub_14271C();
  (*(v53 + 8))(v31, v33);
  v57 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23B0);
  sub_1D4A4(&unk_1C1840, &unk_1C23B0);
  v35 = sub_14273C();

  (*(v56 + 8))(v38, v21);
  return v35;
}

id sub_31C80@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_140ABC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0.0;
  if (!a1)
  {
    v11 = 0;
    goto LABEL_7;
  }

  v11 = sub_144CFC();
  v12 = [a1 tracklist];
  v13 = [v12 playingItem];

  if (!v13)
  {
LABEL_7:
    v20 = 1;
    goto LABEL_8;
  }

  [v13 duration];
  v14 = *&v24[1];
  v15 = *&v24[4];
  v16 = *&v24[5];
  v17 = v25;

  sub_140AAC();
  sub_140A4C();
  v19 = v18;
  (*(v7 + 8))(v9, v6);
  v20 = 0;
  v21 = v16 + (v19 - v14) * v17;
  if (v21 >= v15)
  {
    v21 = v15;
  }

  v10 = round(fmax(v21, 0.0) * 1000.0) / 1000.0;
LABEL_8:
  v22 = [a1 videoOutput];
  result = a2;
  *a3 = v11;
  *(a3 + 8) = v10;
  *(a3 + 16) = v20;
  *(a3 + 24) = v22;
  *(a3 + 32) = a2;
  return result;
}

__n128 sub_31E74@<Q0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  sub_31C80(*a1, a1[1], &v5);
  v3 = v6;
  result = v7;
  *a2 = v5;
  *(a2 + 16) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t sub_31EC4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  if (a1)
  {
    v12 = a5;
    v13 = a1;
    swift_unknownObjectRetain();
    result = sub_144C0C();
    if (v15)
    {
      result = sub_144BFC();
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        result = 0;
        v17 = 0;
      }

      if (v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = -1;
      }
    }

    else
    {
      v17 = 0;
      v18 = 1;
    }
  }

  else
  {
    v19 = a5;
    swift_unknownObjectRetain();
    result = 0;
    v17 = 0;
    v18 = -1;
  }

  *a6 = a1;
  *(a6 + 8) = result;
  *(a6 + 16) = v17;
  *(a6 + 24) = v18;
  *(a6 + 32) = a2;
  *(a6 + 40) = a3 & 1;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

double sub_31F98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_31EC4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_31FE8()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    v1 = sub_32048();
    *(v0 + 240) = v1;
  }

  return v1;
}

uint64_t sub_32048()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v0 - 8);
  v52 = &v37 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20B8);
  v3 = *(v2 - 8);
  v49 = v2;
  v50 = v3;
  __chkstk_darwin(v2);
  v47 = &v37 - v4;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20C0);
  v56 = *(v53 - 8);
  __chkstk_darwin(v53);
  v48 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20C8);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  __chkstk_darwin(v6);
  v51 = &v37 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20D0);
  v45 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20D8);
  v42 = *(v44 - 8);
  v10 = __chkstk_darwin(v44);
  v41 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v57 = &v37 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E0);
  __chkstk_darwin(v39);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E8);
  __chkstk_darwin(v37);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0);
  __chkstk_darwin(v13);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F8);
  v58 = *(v38 - 8);
  v14 = __chkstk_darwin(v38);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v37 - v17;
  sub_141BEC();
  sub_141C2C();
  sub_141B9C();
  sub_1D4A4(&qword_1C2100, &qword_1C20F0);
  sub_1D4A4(&qword_1C2108, &qword_1C20E8);
  sub_1D4A4(&qword_1C2110, &qword_1C20E0);
  v46 = v18;
  sub_14255C();
  v19 = v40;
  sub_141BCC();
  sub_1D4A4(&qword_1C2118, &qword_1C20D0);
  sub_422BC();
  v20 = v57;
  v21 = v43;
  sub_14286C();
  (*(v45 + 8))(v19, v21);
  v22 = v38;
  (*(v58 + 16))(v16, v18, v38);
  v23 = v42;
  v24 = v44;
  (*(v42 + 16))(v41, v20, v44);
  sub_1D4A4(&qword_1C2140, &qword_1C20F8);
  sub_1D4A4(&qword_1C2148, &qword_1C20D8);
  v25 = v47;
  sub_1424EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2150);
  sub_1D4A4(&qword_1C2158, &qword_1C20B8);
  v27 = v48;
  v26 = v49;
  sub_1427BC();
  (*(v50 + 8))(v25, v26);
  sub_2B860(0, &qword_1C2160);
  v28 = sub_144D8C();
  v59 = v28;
  v29 = sub_144D3C();
  v30 = v52;
  (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
  sub_1D4A4(&unk_1C2168, &qword_1C20C0);
  sub_4236C(&qword_1C1740, &qword_1C2160);
  v31 = v51;
  v32 = v53;
  sub_14283C();
  sub_15340(v30, &qword_1C16E0);

  (*(v56 + 8))(v27, v32);
  sub_1D4A4(&qword_1C2178, &qword_1C20C8);
  v33 = v54;
  v34 = sub_14271C();
  (*(v55 + 8))(v31, v33);
  v59 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2070);
  sub_1D4A4(&qword_1C2078, &qword_1C2070);
  v35 = sub_14273C();

  (*(v23 + 8))(v57, v24);
  (*(v58 + 8))(v46, v22);
  return v35;
}

uint64_t sub_32A28@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 9);
  v4 = *a1;
  v5 = a1[1];
  *a2 = *a1;
  *(a2 + 16) = v5;
  v6 = a1[3];
  *(a2 + 32) = a1[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v3;
  *(a2 + 72) = v2;
  v7 = v4;
  v8 = v2;
  v9 = v7;

  return swift_unknownObjectRetain();
}

uint64_t NowPlayingMediaPlayerController.playerStylePublisher.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 264) = a1;
}

void *sub_32B4C()
{
  if (v0[34])
  {
    v1 = v0[34];
  }

  else
  {
    v2 = v0[4];
    swift_beginAccess();
    v3 = v0[33];
    type metadata accessor for NowPlayingMenuController();
    swift_allocObject();

    v1 = sub_4117C(v2, v3);

    v0[34] = v1;
  }

  return v1;
}

uint64_t sub_32C18()
{
  if (v0[35])
  {
    v1 = v0[35];
  }

  else
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = v0;
    v5 = sub_32D70();
    sub_14427C();
    swift_allocObject();
    v6 = sub_14426C();
    type metadata accessor for NowPlayingQueueController(0);
    v1 = swift_allocObject();
    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    *(v1 + 56) = 1;
    *(v1 + 72) = 0;
    *(v1 + 80) = 0;
    *(v1 + 64) = _swiftEmptyArrayStorage;
    v7 = OBJC_IVAR____TtC12NowPlayingUI25NowPlayingQueueController____lazy_storage___viewProvider;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21B0);
    (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
    *(v1 + 16) = v3;
    *(v1 + 24) = v6;
    *(v1 + 32) = v2;

    sub_AF548(v5);

    v4[35] = v1;
  }

  return v1;
}

uint64_t sub_32D70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2180);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  if (*(v0 + 288))
  {
    v5 = *(v0 + 288);
  }

  else
  {
    v6 = v0;
    v8[1] = sub_31FE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2070);
    sub_1D4A4(&qword_1C2078, &qword_1C2070);
    sub_1427BC();

    sub_1D4A4(&unk_1C2188, &qword_1C2180);
    v5 = sub_14273C();
    (*(v2 + 8))(v4, v1);
    *(v6 + 288) = v5;
  }

  return v5;
}

uint64_t sub_32F50@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1450AC();
  *a1 = result & 1;
  return result;
}

id sub_32F80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = *(a1 + 72);
  if (result)
  {
    result = [result isAppleTVRoute];
  }

  *a2 = result;
  return result;
}

uint64_t sub_32FB8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2180);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  if (*(v0 + 296))
  {
    v5 = *(v0 + 296);
  }

  else
  {
    v6 = v0;
    v8[1] = sub_31FE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2070);
    sub_1D4A4(&qword_1C2078, &qword_1C2070);
    sub_1427BC();

    sub_1D4A4(&unk_1C2188, &qword_1C2180);
    v5 = sub_14273C();
    (*(v2 + 8))(v4, v1);
    *(v6 + 296) = v5;
  }

  return v5;
}

uint64_t sub_33198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2050);
  v29 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v23 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2058);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2060);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2068);
  __chkstk_darwin(v12);
  v16 = &v23 - v15;
  if (*(v0 + 304))
  {
    v17 = *(v0 + 304);
  }

  else
  {
    v25 = v0;
    v26 = v8;
    v27 = v13;
    v28 = v14;
    v18 = sub_31FE8();
    v24 = v5;
    v30 = v18;
    sub_14223C();
    v19 = v9;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2070);
    sub_1D4A4(&qword_1C2078, &qword_1C2070);
    sub_1D4A4(&qword_1C2080, &qword_1C2050);
    sub_14278C();
    (*(v29 + 8))(v3, v1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2088);
    sub_1D4A4(&qword_1C2090, &qword_1C2058);
    sub_14274C();
    (*(v24 + 8))(v7, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2098);
    v20 = v26;
    sub_14251C();
    (*(v19 + 8))(v11, v20);
    sub_1D4A4(&qword_1C20A0, &qword_1C2068);
    v21 = v27;
    v17 = sub_14273C();
    (*(v28 + 8))(v16, v21);
    *(v25 + 304) = v17;
  }

  return v17;
}

id sub_33650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1;
  v12 = v11;
  if (a1 && (v13 = [v11 identifiers], v14 = objc_msgSend(v13, "isPlaceholder"), v13, v12, v14))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2088);
    v16 = *(*(v15 - 8) + 56);

    return v16(a6, 1, 1, v15);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2088);
    v19 = *(v18 + 48);
    *a6 = a1;
    v20 = *(a2 + 16);
    *(a6 + 8) = *a2;
    *(a6 + 24) = v20;
    *(a6 + 40) = *(a2 + 32);
    *(a6 + 56) = *(a2 + 48);
    *(a6 + 64) = a3;
    *(a6 + 72) = a4;
    sub_1D19C(a5, a6 + v19, &unk_1C20A8);
    (*(*(v18 - 8) + 56))(a6, 0, 1, v18);
    v21 = v12;
    swift_unknownObjectRetain();

    return a4;
  }
}

id sub_33814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 24);
  v10[0] = *(a1 + 8);
  v10[1] = v5;
  v10[2] = *(a1 + 40);
  v6 = *(a1 + 64);
  v11 = *(a1 + 56);
  v7 = *(a1 + 72);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2088);
  return sub_33650(v4, v10, v6, v7, a1 + *(v8 + 48), a2);
}

uint64_t sub_338A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 72);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2088);
  result = sub_41704(v4, v5, a1 + *(v6 + 48));
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10 & 1;
  return result;
}

uint64_t sub_33914()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2030);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v8 - v3;
  if (*(v0 + 312))
  {
    v5 = *(v0 + 312);
  }

  else
  {
    v6 = v0;
    v8[1] = sub_33198();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2038);
    sub_1D4A4(&qword_1C2040, &qword_1C2038);
    sub_1427BC();

    sub_1D4A4(&qword_1C2048, &qword_1C2030);
    v5 = sub_14273C();
    (*(v2 + 8))(v4, v1);
    *(v6 + 312) = v5;
  }

  return v5;
}

uint64_t sub_33B08()
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2588);
  v13 = *(v11 - 8);
  __chkstk_darwin(v11);
  v2 = v9 - v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2590);
  v12 = *(v10 - 8);
  __chkstk_darwin(v10);
  v4 = v9 - v3;
  v17 = *(v0 + 320);
  swift_beginAccess();
  v16 = *(v0 + 264);

  v15 = sub_141CAC();
  v14 = sub_33914();
  v9[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100);
  v9[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
  sub_1D4A4(&qword_1C21F8, &qword_1C0100);
  sub_1D4A4(&qword_1C21A8, &unk_1C00F0);
  sub_1D4A4(&qword_1C2020, &unk_1C9310);
  sub_1424FC();
  sub_1D4A4(&qword_1C2598, &qword_1C2588);
  v5 = v11;
  sub_1427BC();
  (*(v13 + 8))(v2, v5);
  sub_1D4A4(&qword_1C25A0, &qword_1C2590);
  v6 = v10;
  v7 = sub_14273C();
  (*(v12 + 8))(v4, v6);
  return v7;
}

uint64_t sub_33E94(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v37 = a4;
  v32 = a3;
  v33 = a2;
  v5 = sub_140D5C();
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v34 = &v31[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1417CC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25B0);
  __chkstk_darwin(v11);
  v13 = &v31[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  v15 = __chkstk_darwin(v14 - 8);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v19 = &v31[-v18];
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v7, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  (*(v8 + 16))(v19, v20, v7);
  (*(v8 + 56))(v19, 0, 1, v7);
  v21 = *(v11 + 48);
  sub_1D19C(a1, v13, &unk_1C1DA0);
  sub_1D19C(v19, &v13[v21], &unk_1C1DA0);
  v22 = *(v8 + 48);
  if (v22(v13, 1, v7) == 1)
  {
    sub_15340(v19, &unk_1C1DA0);
    if (v22(&v13[v21], 1, v7) == 1)
    {
      sub_15340(v13, &unk_1C1DA0);
      v23 = v37;
      goto LABEL_10;
    }

LABEL_8:
    sub_15340(v13, &qword_1C25B0);
    goto LABEL_15;
  }

  sub_1D19C(v13, v17, &unk_1C1DA0);
  if (v22(&v13[v21], 1, v7) == 1)
  {
    sub_15340(v19, &unk_1C1DA0);
    (*(v8 + 8))(v17, v7);
    goto LABEL_8;
  }

  (*(v8 + 32))(v10, &v13[v21], v7);
  sub_40DC4(&qword_1C25B8, &type metadata accessor for NowPlayingHostedContentID);
  v24 = sub_14486C();
  v25 = *(v8 + 8);
  v25(v10, v7);
  sub_15340(v19, &unk_1C1DA0);
  v25(v17, v7);
  sub_15340(v13, &unk_1C1DA0);
  v23 = v37;
  if ((v24 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_10:
  v27 = v34;
  v26 = v35;
  v28 = v36;
  (*(v35 + 104))(v34, enum case for NowPlayingPlayerStyle.fullScreen(_:), v36);
  sub_40DC4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v40 == v38 && v41 == v39)
  {
    (*(v26 + 8))(v27, v28);

    goto LABEL_14;
  }

  v29 = sub_1453BC();
  (*(v26 + 8))(v27, v28);

  if ((v29 & 1) == 0)
  {
LABEL_15:
    v23 = 0;
    return v23 & 1;
  }

LABEL_14:
  if ((v32 & 1) == 0)
  {
    goto LABEL_15;
  }

  return v23 & 1;
}

uint64_t sub_34464@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25A8);
  result = sub_33E94(a1, a1 + v4[12], *(a1 + v4[16]), *(a1 + v4[20]));
  *a2 = result & 1;
  return result;
}

uint64_t sub_344C4()
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2448);
  v18 = *(v15 - 8);
  __chkstk_darwin(v15);
  v2 = &v14 - v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2450);
  v20 = *(v17 - 8);
  __chkstk_darwin(v17);
  v14 = &v14 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2458);
  v19 = *(v16 - 8);
  __chkstk_darwin(v16);
  v5 = &v14 - v4;
  swift_beginAccess();
  v6 = *(v0 + 264);
  v21 = *(v0 + 320);
  v22 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100);
  sub_1D4A4(&qword_1C21A8, &unk_1C00F0);
  sub_1D4A4(&qword_1C21F8, &qword_1C0100);
  sub_1424EC();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_42920;
  *(v7 + 24) = v0;

  sub_14256C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2460);
  sub_1D4A4(&qword_1C2468, &qword_1C2448);
  sub_1D4A4(&qword_1C2470, &qword_1C2460);
  v8 = v14;
  v9 = v15;
  sub_1428DC();

  (*(v18 + 8))(v2, v9);
  sub_1D4A4(&qword_1C2478, &qword_1C2450);
  v10 = v17;
  sub_14286C();
  (*(v20 + 8))(v8, v10);
  sub_1D4A4(&qword_1C2480, &qword_1C2458);
  v11 = v16;
  v12 = sub_14273C();
  (*(v19 + 8))(v5, v11);
  return v12;
}

uint64_t sub_34950(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - v5;
  v7 = sub_140D5C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v10, a1, v7);
  sub_1D19C(v17, v6, &unk_1C1DA0);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = (v9 + *(v4 + 80) + v12) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  (*(v8 + 32))(v14 + v12, v10, v7);
  sub_10358(v6, v14 + v13, &unk_1C1DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2460);
  swift_allocObject();
  return sub_14267C();
}

BOOL sub_34BA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_140D5C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, enum case for NowPlayingPlayerStyle.fullScreen(_:), v3);
  sub_40DC4(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v10[2] == v10[0] && v10[3] == v10[1])
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v7 = sub_1453BC();
    (*(v4 + 8))(v6, v3);

    result = 0;
    if ((v7 & 1) == 0)
    {
      return result;
    }
  }

  v9 = sub_1417CC();
  return (*(*(v9 - 8) + 48))(a2, 1, v9) == 1;
}

uint64_t sub_34DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v11 = sub_140D5C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v33 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490);
  __chkstk_darwin(v14 - 8);
  v16 = &v29 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_144ADC();
    v21 = *(*(v20 - 8) + 56);
    v29 = v16;
    v21(v16, 1, 1, v20);
    (*(v12 + 16))(v33, v30, v11);
    sub_1D19C(v31, v10, &unk_1C1DA0);
    sub_144ABC();
    v31 = v10;

    v22 = sub_144AAC();
    v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v24 = (v13 + *(v32 + 80) + v23) & ~*(v32 + 80);
    v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = &protocol witness table for MainActor;
    (*(v12 + 32))(v26 + v23, v33, v11);
    sub_10358(v31, v26 + v24, &unk_1C1DA0);
    v27 = (v26 + v25);
    *v27 = sub_42C1C;
    v27[1] = v17;
    *(v26 + ((v25 + 23) & 0xFFFFFFFFFFFFFFF8)) = v19;
    sub_C8D08(0, 0, v29, &unk_14C7D0, v26);
  }

  else
  {
  }
}

uint64_t sub_35130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0);
  v8[10] = swift_task_alloc();
  v9 = sub_140D5C();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = sub_14528C();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  sub_144ABC();
  v8[17] = sub_144AAC();
  v12 = sub_144A8C();
  v8[18] = v12;
  v8[19] = v11;

  return _swift_task_switch(sub_352C0, v12, v11);
}

uint64_t sub_352C0()
{
  if (sub_34BA8(v0[5], v0[6]))
  {
    sub_14541C();
    v1 = swift_task_alloc();
    v0[20] = v1;
    *v1 = v0;
    v1[1] = sub_3540C;

    return sub_10F4DC(500000000000000000, 0, 0, 0, 1);
  }

  else
  {
    v3 = v0[7];

    v3(0);

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_3540C()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[16];
  v5 = v2[15];
  v6 = v2[14];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_43A00;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[18];
    v8 = v3[19];
    v9 = sub_355A0;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_355A0()
{

  if ((sub_144AFC() & 1) == 0)
  {
    v2 = v0[12];
    v1 = v0[13];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[7];
    swift_beginAccess();

    sub_1425FC();

    sub_1425FC();

    v6 = sub_34BA8(v1, v4);
    sub_15340(v4, &unk_1C1DA0);
    (*(v2 + 8))(v1, v3);
    v5(v6);
  }

  v7 = v0[1];

  return v7();
}

uint64_t *sub_356F4()
{
  if (v0[41])
  {
    v1 = v0[41];
  }

  else
  {
    v2 = v0[4];
    v3 = v0[2];

    v4 = v0;
    v5 = sub_32C18();
    v6 = v0[51];

    v7 = sub_33914();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0);
    sub_1D4A4(&qword_1C21A8, &unk_1C00F0);
    v8 = sub_14273C();
    v9 = sub_40EE0();
    type metadata accessor for NowPlayingFooterButtonController(0);
    swift_allocObject();
    v1 = sub_302EC(v2, v3, v5, v6, v7, v8, v9);

    v4[41] = v1;
  }

  return v1;
}

uint64_t sub_35894()
{
  if (*(v0 + 336))
  {
    v1 = *(v0 + 336);
  }

  else
  {
    v2 = *(v0 + 32);

    v3 = sub_312BC();
    type metadata accessor for NowPlayingArtworkController();
    swift_allocObject();
    v1 = sub_2B0B4(v2, v3);

    *(v0 + 336) = v1;
  }

  return v1;
}

void *sub_35944()
{
  v1 = sub_141C9C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 344))
  {
    v5 = *(v0 + 344);
  }

  else
  {
    v6 = v0;
    v7 = sub_32D70();
    v8 = *(v0 + 40);

    v9 = sub_35B98()[2];

    v10 = *(v9 + 48);

    v15[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0130);
    sub_1D4A4(&unk_1C2198, &unk_1C0130);
    v11 = sub_14273C();

    v12 = sub_1415EC();
    type metadata accessor for SleepTimerController();
    v5 = swift_allocObject();
    v5[6] = &_swiftEmptySetSingleton;
    (*(v2 + 104))(v4, enum case for PlaybackController.SleepTimerStopMode.off(_:), v1);
    v13 = sub_141C7C();
    type metadata accessor for NowPlayingSleepTimer.ViewModel(0);
    swift_allocObject();
    v5[2] = sub_46774(v4, v13, 1);
    type metadata accessor for NowPlayingSleepTimerRemaining.ViewModel();
    swift_allocObject();
    v5[3] = sub_B9B14();
    v5[4] = v7;
    v5[5] = v11;
    v5[7] = v8;
    v5[8] = v12;
    *(v6 + 344) = v5;
  }

  return v5;
}

void *sub_35B98()
{
  if (*(v0 + 352))
  {
    v1 = *(v0 + 352);
  }

  else
  {
    v2 = *(v0 + 40);

    v3 = v0;
    v4 = sub_32FB8();
    v5 = [objc_opt_self() defaultCenter];
    type metadata accessor for NowPlayingPlaybackControlsController();
    swift_allocObject();
    v1 = sub_10FAD0(v2, v4, v5);

    *(v3 + 352) = v1;
  }

  return v1;
}

uint64_t sub_35C74()
{
  if (v0[45])
  {
    v1 = v0[45];
  }

  else
  {
    v2 = v0[2];
    v3 = v0[5];
    v4 = v0;
    v5 = sub_35944();
    v6 = sub_35B98();
    v7 = v0[51];
    v8 = v0[4];
    type metadata accessor for NowPlayingTransportController(0);
    v1 = swift_allocObject();
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 2;
    v9 = OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_preferredJumpInterval;
    v10 = sub_141CEC();
    (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_subscriptions) = _swiftEmptyArrayStorage;
    *(v1 + 16) = v2;
    *(v1 + 24) = v3;
    *(v1 + 32) = v5;
    *(v1 + 40) = v6;
    *(v1 + OBJC_IVAR____TtC12NowPlayingUI29NowPlayingTransportController_transcriptSyncingStateObserver) = v7;
    *(v1 + 48) = v8;

    sub_1299E4();

    v4[45] = v1;
  }

  return v1;
}

void *sub_35DF4()
{
  if (*(v0 + 368))
  {
    v1 = *(v0 + 368);
  }

  else
  {
    v2 = *(v0 + 32);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100);
    sub_1D4A4(&qword_1C21F8, &qword_1C0100);
    v3 = v0;
    v4 = sub_14273C();
    type metadata accessor for NowPlayingBannerController();
    v5 = swift_allocObject();

    v1 = sub_40038(v2, v4, v3, v5);
    *(v3 + 368) = v1;
  }

  return v1;
}

uint64_t sub_35F04()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20F0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  if (v0[47])
  {
    v5 = v0[47];
  }

  else
  {
    v6 = v0;
    v7 = *(sub_32C18() + 24);

    v8 = v0[2];

    sub_141BEC();
    sub_1D4A4(&qword_1C2100, &qword_1C20F0);
    v20 = sub_14273C();
    (*(v2 + 8))(v4, v1);
    v19 = sub_33914();
    swift_beginAccess();
    v9 = v0[33];

    v18 = sub_40EE0();
    v17 = sub_31040();
    v10 = v0[4];
    type metadata accessor for NowPlayingTipController();
    v5 = swift_allocObject();
    v11 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController____lazy_storage___viewProvider;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2438);
    (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
    LOBYTE(v29[0]) = 0;

    sub_14269C();
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTipVisible) = 0;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_subscriptions) = _swiftEmptyArrayStorage;
    v13 = OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_tipViewModel;
    type metadata accessor for NowPlayingTipViewModel();
    v14 = swift_allocObject();
    sub_42908(v29);
    v25 = v29[4];
    v26 = v29[5];
    v27 = v29[6];
    v28 = v29[7];
    v21 = v29[0];
    v22 = v29[1];
    v23 = v29[2];
    v24 = v29[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2440);
    sub_14269C();
    *(v14 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_artworkViewModel) = 0;
    *(v14 + OBJC_IVAR____TtC12NowPlayingUI22NowPlayingTipViewModel_objectGraph) = 0;
    *(v5 + v13) = v14;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_queueViewModel) = v7;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingViewModel) = v8;
    v15 = v19;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_nowPlayingItemPublisher) = v20;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_isTranscriptAvailablePublisher) = v15;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_playerStylePublisher) = v9;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_areTranscriptsSupportedInNowPlaying) = v18;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_artworkViewModel) = v17;
    *(v5 + OBJC_IVAR____TtC12NowPlayingUI23NowPlayingTipController_objectGraph) = v10;
    v6[47] = v5;
  }

  return v5;
}

uint64_t sub_362AC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2000);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - v3;
  if (*(v0 + 384))
  {
    v5 = *(v0 + 384);
  }

  else
  {
    v6 = v0;
    v16 = sub_35944();
    v7 = sub_35B98();
    v8 = sub_33914();
    v15 = v8;
    HIDWORD(v14) = sub_40EE0();
    v9 = *(v0 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2008);
    v5 = swift_allocObject();
    swift_weakInit();
    *(v5 + 56) = &_swiftEmptySetSingleton;
    type metadata accessor for TranscriptButtonViewModel();
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
    *(v5 + 64) = v10;
    v11 = *(*v5 + 152);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2010);
    (*(*(v12 - 8) + 56))(v5 + v11, 1, 1, v12);
    swift_weakAssign();
    *(v5 + 24) = v16;
    *(v5 + 32) = v7;
    *(v5 + 40) = BYTE4(v14) & 1;
    *(v5 + 48) = v9;
    v17 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
    sub_1D4A4(&qword_1C2020, &unk_1C9310);
    sub_14286C();
    swift_allocObject();
    swift_weakInit();
    sub_1D4A4(&qword_1C2028, &qword_1C2000);

    sub_14289C();

    (*(v2 + 8))(v4, v1);
    swift_beginAccess();
    sub_14257C();
    swift_endAccess();

    *(v6 + 384) = v5;
  }

  return v5;
}

Swift::Void __swiftcall NowPlayingMediaPlayerController.metadataButtonAction()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1D50);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v53 - v6;
  v8 = sub_140A3C();
  v58 = *(v8 - 8);
  __chkstk_darwin(v8);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_14455C();
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin(v10);
  v55 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_14148C();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (!qword_1D1830)
  {
    goto LABEL_30;
  }

  v16 = qword_1D1840;
  if (!qword_1D1840)
  {
    return;
  }

  (*(v13 + 104))(v15, enum case for NowPlayingViewModel.PlayerStyle.mini(_:), v12);
  sub_40DC4(&qword_1C0E58, type metadata accessor for NowPlayingMediaPlayerController);
  v59 = v16;
  sub_1416EC();
  (*(v13 + 8))(v15, v12);
  v17 = sub_141BDC();
  if (!v17 || (v18 = v17, sub_144BFC(), v20 = v19, v18, !v20))
  {
    v25 = sub_141BDC();
    if (v25)
    {
      v26 = v25;
      v27 = [v25 shareURL];

      if (v27)
      {
        sub_140A2C();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      v29 = v58;
      (*(v58 + 56))(v5, v28, 1, v8);
      sub_10358(v5, v7, &unk_1C1D50);
      if ((*(v29 + 48))(v7, 1, v8) != 1)
      {
        v44 = v54;
        (*(v29 + 32))(v54, v7, v8);
        __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
        v46 = v55;
        v45 = v56;
        v47 = v57;
        (*(v56 + 104))(v55, enum case for PreviewingPresentationHint.inferTab(_:), v57);
        sub_14451C();
        (*(v45 + 8))(v46, v47);
        (*(v29 + 8))(v44, v8);
        v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
        goto LABEL_24;
      }
    }

    else
    {
      (*(v58 + 56))(v7, 1, 1, v8);
    }

    sub_15340(v7, &unk_1C1D50);
    v30 = sub_141BDC();
    if (!v30)
    {
      goto LABEL_22;
    }

    v31 = v30;
    v32 = [v30 podcast];

    if (!v32)
    {
      goto LABEL_22;
    }

    v33 = sub_144C0C();
    v35 = v34;

    if (v35)
    {
      goto LABEL_22;
    }

    if (v33 < 0)
    {
      __break(1u);
    }

    else
    {
      v36 = sub_141BDC();
      if (!v36)
      {
        goto LABEL_22;
      }

      v37 = v36;
      v38 = sub_144C0C();
      v40 = v39;

      if (v40)
      {
        goto LABEL_22;
      }

      if ((v38 & 0x8000000000000000) == 0)
      {
        __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
        v42 = v55;
        v41 = v56;
        v43 = v57;
        (*(v56 + 104))(v55, enum case for PreviewingPresentationHint.inferTab(_:), v57);
        sub_1444FC();
        (*(v41 + 8))(v42, v43);
LABEL_22:
        v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
    return;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 48), *(v0 + 72));
  v22 = v55;
  v21 = v56;
  v23 = v57;
  (*(v56 + 104))(v55, enum case for PreviewingPresentationHint.inferTab(_:), v57);
  sub_14450C();

  (*(v21 + 8))(v22, v23);
  v24 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
LABEL_24:
  v48 = v24;

  v49 = sub_14489C();

  v50 = [v48 BOOLForKey:v49];

  if ((v50 & 1) == 0)
  {
    isa = sub_144A7C().super.super.isa;

    v52 = sub_14489C();

    [v48 setValue:isa forKey:v52];
  }
}

uint64_t NowPlayingMediaPlayerController.miniPlayerContextInteractionDelegate.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 416) = a1;
  return swift_unknownObjectRelease();
}

uint64_t NowPlayingMediaPlayerController.viewProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D60);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_1D19C(v1 + v10, v9, &qword_1C1D60);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_15340(v9, &qword_1C1D60);
  v14[0] = sub_14142C();
  v14[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D78);
  sub_40DC4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C1D88, &qword_1C1D78);
  sub_14119C();
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_4363C(v7, v1 + v10, &qword_1C1D60);
  return swift_endAccess();
}

uint64_t sub_371C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v93 = a1;
  v103 = a2;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2438);
  v102 = *(v104 - 8);
  __chkstk_darwin(v104);
  v101 = &v58 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21B0);
  v99 = *(v3 - 8);
  v100 = v3;
  __chkstk_darwin(v3);
  v98 = &v58 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2010);
  v96 = *(v5 - 8);
  v97 = v5;
  __chkstk_darwin(v5);
  v95 = &v58 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108);
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v58 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25D0);
  v89 = *(v8 - 8);
  v90 = v8;
  __chkstk_darwin(v8);
  v88 = &v58 - v9;
  v10 = sub_14142C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25D8);
  v61 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v58 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25E0);
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v18 = &v58 - v17;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25E8);
  v65 = *(v64 - 8);
  __chkstk_darwin(v64);
  v20 = &v58 - v19;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25F0);
  v67 = *(v66 - 8);
  __chkstk_darwin(v66);
  v59 = &v58 - v21;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C25F8);
  v72 = *(v70 - 8);
  __chkstk_darwin(v70);
  v60 = &v58 - v22;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2600);
  v75 = *(v73 - 8);
  __chkstk_darwin(v73);
  v68 = &v58 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2608);
  v78 = *(v76 - 8);
  __chkstk_darwin(v76);
  v69 = &v58 - v24;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2610);
  v80 = *(v79 - 8);
  __chkstk_darwin(v79);
  v71 = &v58 - v25;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2618);
  v83 = *(v82 - 8);
  __chkstk_darwin(v82);
  v74 = &v58 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2620);
  v85 = *(v84 - 8);
  __chkstk_darwin(v84);
  v77 = &v58 - v27;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2628);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v58 - v28;
  swift_getKeyPath();
  sub_1413AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2630);
  sub_41ED4();
  sub_14183C();

  v29 = *(v11 + 8);
  v29(v13, v10);
  swift_getKeyPath();
  sub_1413BC();
  sub_21B3C();
  sub_14183C();

  v29(v13, v10);
  (*(v61 + 8))(v16, v14);
  swift_getKeyPath();
  sub_14140C();
  sub_41FC0();
  v30 = v62;
  sub_14183C();

  v29(v13, v10);
  (*(v63 + 8))(v18, v30);
  swift_getKeyPath();
  sub_1413CC();
  sub_41F68();
  v31 = v59;
  v32 = v64;
  sub_14183C();

  v29(v13, v10);
  (*(v65 + 8))(v20, v32);
  swift_getKeyPath();
  sub_1413EC();
  sub_43394();
  v33 = v60;
  v34 = v66;
  sub_14183C();

  v29(v13, v10);
  (*(v67 + 8))(v31, v34);
  swift_getKeyPath();
  sub_1413FC();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C2658);
  v36 = sub_1432AC();
  v37 = sub_4352C();
  v38 = sub_40DC4(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect);
  v105 = v35;
  v106 = v36;
  v107 = v37;
  v108 = v38;
  swift_getOpaqueTypeConformance2();
  v39 = v68;
  v40 = v70;
  sub_14183C();

  v29(v13, v10);
  (*(v72 + 8))(v33, v40);
  swift_getKeyPath();
  sub_1413DC();
  sub_42168();
  v41 = v69;
  v42 = v73;
  sub_14183C();

  v29(v13, v10);
  (*(v75 + 8))(v39, v42);
  sub_356F4();
  v43 = v88;
  sub_2D824(v88);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D20);
  sub_1D4A4(&qword_1C2690, &qword_1C1D20);
  v44 = v71;
  v45 = v76;
  sub_14184C();
  (*(v89 + 8))(v43, v90);
  (*(v78 + 8))(v41, v45);
  v46 = v91;
  sub_74AB8(v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2698);
  sub_1D4A4(&qword_1C26A0, &qword_1C2698);
  v47 = v74;
  v48 = v79;
  sub_14184C();
  (*(v92 + 8))(v46, v94);
  (*(v80 + 8))(v44, v48);
  sub_362AC();
  v49 = v95;
  sub_38880(v95);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26A8);
  sub_1D4A4(&qword_1C26B0, &qword_1C26A8);
  v50 = v77;
  v51 = v82;
  sub_14184C();
  (*(v96 + 8))(v49, v97);
  (*(v83 + 8))(v47, v51);
  sub_32C18();
  v52 = v98;
  sub_AF258(v98);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26B8);
  sub_1D4A4(&qword_1C26C0, &qword_1C26B8);
  v53 = v81;
  v54 = v84;
  sub_14184C();
  (*(v99 + 8))(v52, v100);
  (*(v85 + 8))(v50, v54);
  sub_35F04();
  v55 = v101;
  sub_D04CC(v101);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26C8);
  sub_1D4A4(&qword_1C26D0, &qword_1C26C8);
  v56 = v86;
  sub_14184C();
  (*(v102 + 8))(v55, v104);
  return (*(v87 + 8))(v53, v56);
}

uint64_t NowPlayingMediaPlayerController.primaryArtworkView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_30DC4();
  v4 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  swift_weakInit();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_40EC8;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t sub_38384@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_30DC4();
  v5 = *(v3 + 32);
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  swift_weakInit();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = sub_43A1C;
  *(a2 + 48) = v7;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
}

uint64_t NowPlayingMediaPlayerController.metadataArtworkView.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_31040();
  v4 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t sub_3849C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_31040();
  v5 = *(v3 + 32);
  KeyPath = swift_getKeyPath();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = KeyPath;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

uint64_t NowPlayingMediaPlayerController.contextMenuButton()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_32B4C()[4];
  type metadata accessor for NowPlayingMenuController.ViewModel();
  sub_40DC4(&qword_1C1D90, type metadata accessor for NowPlayingMenuController.ViewModel);

  v3 = sub_142B9C();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v2;
  return result;
}

uint64_t sub_385B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_32B4C()[4];
  type metadata accessor for NowPlayingMenuController.ViewModel();
  sub_40DC4(&qword_1C1D90, type metadata accessor for NowPlayingMenuController.ViewModel);

  v3 = sub_142B9C();
  v5 = v4;

  *a1 = v3;
  a1[1] = v5;
  a1[2] = v2;
  return result;
}

uint64_t NowPlayingMediaPlayerController.timeControlAccessoryView()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_35C74();
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  sub_14221C();
  sub_40DC4(&qword_1C1D98, &type metadata accessor for TranscriptSyncingStateObserver);

  v5 = sub_142B9C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v3;
  a1[3] = v4;
  return result;
}

uint64_t sub_387A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_35C74();
  v3 = *(v2 + 16);
  v4 = *(v2 + 32);
  sub_14221C();
  sub_40DC4(&qword_1C1D98, &type metadata accessor for TranscriptSyncingStateObserver);

  v5 = sub_142B9C();
  v7 = v6;

  *a1 = v5;
  a1[1] = v7;
  a1[2] = v3;
  a1[3] = v4;
  return result;
}

uint64_t sub_38880@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26D8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v16 - v9;
  v11 = *(v3 + 152);
  swift_beginAccess();
  sub_1D19C(v1 + v11, v10, &qword_1C26D8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2010);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_15340(v10, &qword_1C26D8);
  v14 = sub_14142C();
  v16[0] = v4;
  v16[1] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C26A8);
  sub_40DC4(&qword_1C1D80, &type metadata accessor for NowPlayingLookupID);
  sub_1D4A4(&qword_1C26B0, &qword_1C26A8);
  sub_14119C();
  (*(v13 + 16))(v8, a1, v12);
  (*(v13 + 56))(v8, 0, 1, v12);
  swift_beginAccess();
  sub_4363C(v8, v1 + v11, &qword_1C26D8);
  return swift_endAccess();
}

uint64_t NowPlayingMediaPlayerController.viewProvider.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D60);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110);
  v7 = *(v6 - 8);
  (*(v7 + 32))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v8 = OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider;
  swift_beginAccess();
  sub_4363C(v5, v1 + v8, &qword_1C1D60);
  return swift_endAccess();
}

void (*NowPlayingMediaPlayerController.viewProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1D60) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v4[7] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110);
  v4[8] = v7;
  v8 = *(v7 - 8);
  v4[9] = v8;
  v9 = *(v8 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[10] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[10] = malloc(*(v8 + 64));
    v10 = malloc(v9);
  }

  v4[11] = v10;
  NowPlayingMediaPlayerController.viewProvider.getter(v10);
  return sub_38E28;
}

void sub_38E28(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 80);
  v3 = *(*a1 + 88);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 72);
  v8 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    (*(v2[9] + 16))(v2[10], v2[11], v2[8]);
    (*(v6 + 32))(v7, v4, v5);
    (*(v6 + 56))(v7, 0, 1, v5);
    v9 = OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider;
    swift_beginAccess();
    sub_4363C(v7, v8 + v9, &qword_1C1D60);
    swift_endAccess();
    (*(v6 + 8))(v3, v5);
  }

  else
  {
    (*(v2[9] + 32))(v2[7], v2[11], v2[8]);
    (*(v6 + 56))(v7, 0, 1, v5);
    v10 = OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider;
    swift_beginAccess();
    sub_4363C(v7, v8 + v10, &qword_1C1D60);
    swift_endAccess();
  }

  free(v3);
  free(v4);
  free(v7);

  free(v2);
}

uint64_t NowPlayingMediaPlayerController.deinit()
{

  __swift_destroy_boxed_opaque_existential_0(v0 + 48);

  __swift_destroy_boxed_opaque_existential_0(v0 + 96);

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);

  __swift_destroy_boxed_opaque_existential_0(v0 + 192);

  swift_unknownObjectRelease();
  sub_15340(v0 + OBJC_IVAR____TtC12NowPlayingUI31NowPlayingMediaPlayerController____lazy_storage___viewProvider, &qword_1C1D60);
  return v0;
}

uint64_t NowPlayingMediaPlayerController.__deallocating_deinit()
{
  NowPlayingMediaPlayerController.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_39204(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3[9];
  v6 = v3[10];
  __swift_project_boxed_opaque_existential_1(v3 + 6, v5);
  return a3(v5, v6);
}

uint64_t sub_39268(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  return a1(v3, v4);
}

uint64_t sub_392FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!result)
  {
    v6 = v4[9];
    v7 = v4[10];
    __swift_project_boxed_opaque_existential_1(v4 + 6, v6);
    return a4(v6, v7);
  }

  return result;
}

uint64_t sub_3936C(uint64_t result, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (!result)
  {
    v4 = v2[9];
    v5 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v4);
    return a2(v4, v5);
  }

  return result;
}

uint64_t sub_39418@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_30DC4();
  v4 = *(v1 + 32);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  swift_weakInit();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = KeyPath;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = sub_43A1C;
  *(a1 + 48) = v6;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
}

uint64_t sub_39528(void (*a1)(void), void (*a2)(void))
{
  a1();
  a2();
}

uint64_t sub_395AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14172C();
  *a1 = result;
  return result;
}

uint64_t sub_395FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_14173C();
  *a1 = result;
  return result;
}

uint64_t sub_39678(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void))
{
  a3();
  a4();
}

uint64_t sub_396FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_14170C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_39754()
{
  v0 = *(sub_356F4() + 72);
  *(swift_allocObject() + 16) = v0;
  sub_14175C();
}

uint64_t NowPlayingMediaPlayerController.footerButtonLayout.getter()
{
  v0 = *(sub_356F4() + 72);
  *(swift_allocObject() + 16) = v0;
  sub_14175C();
}

uint64_t sub_39854()
{
  v0 = sub_1419DC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1419FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_362AC();
  sub_1419EC();
  v3 = *(v2 + 40);
  *(swift_allocObject() + 16) = v3;
  sub_1419CC();
  sub_141A0C();
}

uint64_t NowPlayingMediaPlayerController.miniPlayerAccessoryLayout.getter()
{
  v0 = sub_1419DC();
  __chkstk_darwin(v0 - 8);
  v1 = sub_1419FC();
  __chkstk_darwin(v1 - 8);
  v2 = sub_362AC();
  sub_1419EC();
  v3 = *(v2 + 40);
  *(swift_allocObject() + 16) = v3;
  sub_1419CC();
  sub_141A0C();
}

uint64_t sub_39AF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1425BC();
  *a1 = result;
  return result;
}

uint64_t sub_39B44()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_39B9C();
  }

  return result;
}

uint64_t sub_39B9C()
{
  v265 = *v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2218);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v242 = &v166 - v3;
  v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2220);
  v240 = *(v241 - 8);
  __chkstk_darwin(v241);
  v239 = &v166 - v4;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2228);
  v237 = *(v238 - 8);
  __chkstk_darwin(v238);
  v236 = &v166 - v5;
  v256 = sub_1417CC();
  v235 = *(v256 - 8);
  __chkstk_darwin(v256);
  v234 = &v166 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = sub_14169C();
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v233 = &v166 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2230);
  v229 = *(v8 - 8);
  v230 = v8;
  __chkstk_darwin(v8);
  v227 = &v166 - v9;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2238);
  v231 = *(v232 - 8);
  __chkstk_darwin(v232);
  v228 = &v166 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1820);
  v211 = *(v11 - 8);
  v212 = v11;
  __chkstk_darwin(v11);
  v210 = &v166 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1828);
  v214 = *(v13 - 8);
  __chkstk_darwin(v13);
  v213 = &v166 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2240);
  v216 = *(v15 - 8);
  v217 = v15;
  __chkstk_darwin(v15);
  v215 = &v166 - v16;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2248);
  v220 = *(v222 - 8);
  __chkstk_darwin(v222);
  v218 = &v166 - v17;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2250);
  v221 = *(v223 - 8);
  __chkstk_darwin(v223);
  v219 = &v166 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2258);
  v225 = *(v19 - 8);
  v226 = v19;
  __chkstk_darwin(v19);
  v224 = &v166 - v20;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2260);
  v260 = *(v248 - 8);
  __chkstk_darwin(v248);
  v205 = &v166 - v21;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2268);
  v261 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v166 - v22;
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2270);
  v262 = *(v250 - 8);
  __chkstk_darwin(v250);
  v206 = &v166 - v23;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2278);
  v263 = *(v209 - 8);
  __chkstk_darwin(v209);
  v207 = &v166 - v24;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2280);
  v264 = *(v251 - 8);
  __chkstk_darwin(v251);
  v208 = &v166 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2288);
  v195 = *(v26 - 8);
  v196 = v26;
  __chkstk_darwin(v26);
  v194 = &v166 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2290);
  v192 = *(v28 - 8);
  v193 = v28;
  __chkstk_darwin(v28);
  v191 = &v166 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2298);
  v198 = *(v30 - 8);
  v199 = v30;
  __chkstk_darwin(v30);
  v197 = &v166 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22A0);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin(v32);
  v200 = &v166 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22A8);
  v204 = *(v34 - 8);
  __chkstk_darwin(v34);
  v203 = &v166 - v35;
  v246 = sub_144D6C();
  v190 = *(v246 - 8);
  __chkstk_darwin(v246);
  v245 = &v166 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C20E8);
  v266 = *(v253 - 8);
  __chkstk_darwin(v253);
  v252 = &v166 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22B0);
  v185 = *(v38 - 8);
  v186 = v38;
  __chkstk_darwin(v38);
  v184 = &v166 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22B8);
  v188 = *(v40 - 8);
  v189 = v40;
  __chkstk_darwin(v40);
  v187 = &v166 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22C0);
  v179 = *(v42 - 8);
  v180 = v42;
  __chkstk_darwin(v42);
  v178 = &v166 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22C8);
  v182 = *(v44 - 8);
  v183 = v44;
  __chkstk_darwin(v44);
  v181 = &v166 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16E0);
  __chkstk_darwin(v46 - 8);
  v271 = &v166 - v47;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2000);
  v175 = *(v244 - 1);
  __chkstk_darwin(v244);
  v49 = &v166 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C22D0);
  v176 = *(v50 - 8);
  v177 = v50;
  __chkstk_darwin(v50);
  v52 = &v166 - v51;
  result = swift_beginAccess();
  v54 = v0;
  v55 = *(v0 + 248);
  if ((v55 & 0xC000000000000001) != 0)
  {

    v56 = sub_14517C();

    if (v56)
    {
      return result;
    }
  }

  else if (*(v55 + 16))
  {
    return result;
  }

  v171 = v2;
  v172 = v1;
  v167 = v34;
  v174 = *(v54 + 40);
  *&v285[0] = sub_141CAC();
  swift_getKeyPath();
  *&v274 = *(v54 + 16);
  v259 = v274;
  swift_retain_n();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9310);
  v168 = v13;
  v58 = v57;
  v173 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v59 = sub_1D4A4(&qword_1C2020, &unk_1C9310);
  sub_1428AC();

  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  *&v285[0] = sub_33B08();
  v169 = v59;
  v170 = v58;
  sub_14286C();

  v269 = sub_2B860(0, &qword_1C2160);
  v60 = sub_144D8C();
  *&v285[0] = v60;
  v258 = sub_144D3C();
  v61 = *(v258 - 8);
  v268 = *(v61 + 56);
  v267 = v61 + 56;
  v62 = v271;
  v268(v271, 1, 1, v258);
  v257 = &protocol conformance descriptor for Publishers.RemoveDuplicates<A>;
  sub_1D4A4(&qword_1C2028, &qword_1C2000);
  v270 = sub_4236C(&qword_1C1740, &qword_1C2160);
  v63 = v244;
  sub_14283C();
  sub_15340(v62, &qword_1C16E0);

  (*(v175 + 8))(v49, v63);
  v244 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_1D4A4(&qword_1C22D8, &qword_1C22D0);
  v64 = v177;
  sub_14289C();
  (*(v176 + 8))(v52, v64);
  v65 = v54;
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v66 = v178;
  sub_141CFC();
  sub_1D4A4(&qword_1C22E0, &qword_1C22C0);
  sub_42410();
  v67 = v180;
  v68 = v181;
  sub_14286C();
  (*(v179 + 8))(v66, v67);
  swift_getKeyPath();
  *&v285[0] = sub_35C74();
  sub_1D4A4(&qword_1C2300, &qword_1C22C8);
  v69 = v183;
  sub_1428AC();

  (*(v182 + 1))(v68, v69);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v70 = v252;
  sub_141C2C();
  v177 = &protocol conformance descriptor for Published<A>.Publisher;
  v71 = sub_1D4A4(&qword_1C2108, &qword_1C20E8);
  sub_42538();
  v72 = v184;
  v73 = v253;
  v183 = v71;
  sub_14286C();
  v74 = *(v266 + 8);
  v266 += 8;
  v182 = v74;
  v74(v70, v73);
  v75 = v245;
  sub_144D4C();
  v76 = sub_144D8C();
  *&v285[0] = v76;
  sub_1D4A4(&qword_1C2320, &qword_1C22B0);
  v77 = v187;
  v78 = v75;
  v79 = v186;
  sub_14284C();

  v190 = *(v190 + 8);
  (v190)(v78, v246);
  (*(v185 + 8))(v72, v79);
  swift_getKeyPath();
  *&v285[0] = *(v65 + 360);
  v186 = &protocol conformance descriptor for Publishers.Throttle<A, B>;
  sub_1D4A4(&qword_1C2328, &qword_1C22B8);

  v80 = v189;
  sub_1428AC();

  (*(v188 + 8))(v77, v80);
  swift_beginAccess();
  v243 = v65;
  sub_14257C();
  swift_endAccess();

  sub_35894();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2330);
  v81 = v191;
  sub_1426AC();
  swift_endAccess();

  v82 = swift_allocObject();
  *(v82 + 16) = sub_3D47C;
  *(v82 + 24) = 0;
  sub_1D4A4(&qword_1C2338, &qword_1C2290);
  v84 = v193;
  v83 = v194;
  sub_14279C();

  sub_1D4A4(&qword_1C2340, &qword_1C2288);
  v85 = v196;
  v86 = sub_14273C();
  v195[1](v83, v85);
  (*(v192 + 8))(v81, v84);
  *&v285[0] = v86;
  v87 = v245;
  sub_144D4C();
  v88 = sub_144D8C();
  *&v274 = v88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1758);
  sub_1D4A4(&qword_1C1760, &qword_1C1758);
  v89 = v197;
  sub_14284C();

  (v190)(v87, v246);

  *(swift_allocObject() + 16) = v265;
  sub_1D4A4(&qword_1C2348, &qword_1C2298);
  v90 = v199;
  v91 = v200;
  sub_14275C();

  v198[1](v89, v90);
  v92 = sub_144D8C();
  *&v285[0] = v92;
  v93 = v271;
  v94 = v258;
  v268(v271, 1, 1, v258);
  v199 = &protocol conformance descriptor for Publishers.HandleEvents<A>;
  sub_1D4A4(&qword_1C2350, &qword_1C22A0);
  v95 = v202;
  v96 = v203;
  sub_14283C();
  sub_15340(v93, &qword_1C16E0);

  v201[1](v91, v95);
  swift_getKeyPath();
  *&v285[0] = v259;
  sub_1D4A4(&unk_1C2358, &qword_1C22A8);
  v97 = v167;
  sub_1428AC();

  (*(v204 + 8))(v96, v97);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  swift_beginAccess();

  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C16D0);
  v98 = v205;
  sub_1426AC();
  swift_endAccess();

  v245 = sub_1D4A4(&qword_1C2368, &qword_1C2260);
  v204 = sub_426D0();
  v99 = v247;
  v100 = v248;
  sub_14286C();
  v101 = *(v260 + 8);
  v260 += 8;
  v203 = v101;
  (v101)(v98, v100);
  *(swift_allocObject() + 16) = v265;
  v202 = sub_1D4A4(&qword_1C2388, &qword_1C2268);
  v102 = v249;
  v103 = v206;
  sub_14275C();

  v104 = *(v261 + 8);
  v261 += 8;
  v201 = v104;
  (v104)(v99, v102);
  v105 = sub_144D8C();
  *&v285[0] = v105;
  v268(v93, 1, 1, v94);
  v200 = sub_1D4A4(&qword_1C2390, &qword_1C2270);
  v106 = v207;
  v107 = v250;
  v108 = v103;
  sub_14283C();
  sub_15340(v93, &qword_1C16E0);

  v109 = *(v262 + 8);
  v262 += 8;
  v199 = v109;
  v109(v103, v107);
  v110 = v243;
  sub_1DB40(v243 + 96, v285);
  v197 = sub_1D4A4(&unk_1C2398, &qword_1C2278);
  v111 = v209;
  sub_141E1C();
  v112 = v208;
  sub_14270C();
  sub_15340(v285, &qword_1C1770);
  v113 = *(v263 + 8);
  v263 += 8;
  v198 = v113;
  (v113)(v106, v111);
  swift_allocObject();
  swift_weakInit();
  v196 = sub_1D4A4(&qword_1C23A8, &qword_1C2280);
  v114 = v251;
  sub_14289C();

  v115 = *(v264 + 8);
  v264 += 8;
  v195 = v115;
  (v115)(v112, v114);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  swift_beginAccess();

  sub_1426AC();
  swift_endAccess();

  v116 = v247;
  v117 = v248;
  sub_14286C();
  (v203)(v98, v117);
  *(swift_allocObject() + 16) = v265;
  v118 = v249;
  sub_14275C();

  (v201)(v116, v118);
  v119 = sub_144D8C();
  *&v285[0] = v119;
  v120 = v271;
  v268(v271, 1, 1, v258);
  v121 = v250;
  sub_14283C();
  sub_15340(v120, &qword_1C16E0);

  (v199)(v108, v121);
  sub_1DB40(v110 + 144, v285);
  sub_141E1C();
  sub_14270C();
  sub_15340(v285, &qword_1C1770);
  (v198)(v106, v111);
  swift_allocObject();
  swift_weakInit();
  v122 = v251;
  sub_14289C();

  (v195)(v112, v122);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  *&v285[0] = sub_312BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23B0);
  sub_1D4A4(&unk_1C1840, &unk_1C23B0);
  v123 = v210;
  sub_14279C();

  v283 = 1;
  *&v275 = 0;
  v274 = 0uLL;
  BYTE8(v275) = -1;
  *(&v275 + 9) = *v284;
  HIDWORD(v275) = *&v284[3];
  *&v276 = 0;
  BYTE8(v276) = 1;
  *(&v276 + 9) = *v282;
  HIDWORD(v276) = *&v282[3];
  v277 = 0u;
  v278 = 0u;
  *&v279 = 0;
  BYTE8(v279) = -1;
  *(&v279 + 9) = *v284;
  HIDWORD(v279) = *&v284[3];
  *&v280 = 0;
  BYTE8(v280) = 1;
  *(&v280 + 9) = *v282;
  HIDWORD(v280) = *&v282[3];
  v281 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23C0);
  sub_1D4A4(&qword_1C1850, &qword_1C1820);
  v125 = v212;
  v124 = v213;
  sub_1427CC();
  v285[4] = v278;
  v285[5] = v279;
  v285[6] = v280;
  v285[7] = v281;
  v285[0] = v274;
  v285[1] = v275;
  v285[2] = v276;
  v285[3] = v277;
  sub_15340(v285, &unk_1C23C0);
  (*(v211 + 8))(v123, v125);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C23D0);
  sub_1D4A4(&qword_1C1858, &qword_1C1828);
  v126 = v215;
  v127 = v168;
  sub_1427BC();

  (*(v214 + 8))(v124, v127);
  sub_1D4A4(&qword_1C23E0, &qword_1C2240);
  sub_1D4A4(&qword_1C23E8, &unk_1C23D0);
  v128 = v217;
  v129 = v218;
  sub_14287C();
  (*(v216 + 8))(v126, v128);
  v130 = sub_144D8C();
  *&v274 = v130;
  v131 = v271;
  v268(v271, 1, 1, v258);
  sub_1D4A4(&qword_1C23F0, &qword_1C2248);
  v132 = v219;
  v133 = v222;
  sub_14283C();
  sub_15340(v131, &qword_1C16E0);

  (*(v220 + 8))(v129, v133);
  sub_1D4A4(&qword_1C23F8, &qword_1C2250);
  v134 = v223;
  v135 = v224;
  sub_14279C();
  (*(v221 + 8))(v132, v134);
  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C2400, &qword_1C2258);
  v136 = v226;
  sub_14289C();

  (*(v225 + 8))(v135, v136);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  sub_32C18();

  v137 = v227;
  sub_14425C();

  sub_1D4A4(&qword_1C2408, &qword_1C2230);
  sub_40DC4(&qword_1C2410, &type metadata accessor for QueueModel);
  v138 = v228;
  v139 = v230;
  sub_14286C();
  (*(v229 + 8))(v137, v139);
  sub_1D4A4(&qword_1C2418, &qword_1C2238);
  v140 = v232;
  sub_14289C();

  (*(v231 + 8))(v138, v140);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  sub_1416AC();
  v141 = enum case for NowPlayingViewModel.Metrics.Event.toggle(_:);
  v142 = v233;
  v265 = *(v254 + 104);
  v265(v233, enum case for NowPlayingViewModel.Metrics.Event.toggle(_:), v255);
  if (qword_1BFF08 != -1)
  {
    swift_once();
  }

  v143 = v256;
  v144 = __swift_project_value_buffer(v256, static NowPlayingHostedContentID.transcript);
  swift_beginAccess();
  v145 = v235;
  v146 = v234;
  (*(v235 + 16))(v234, v144, v143);
  swift_allocObject();
  swift_weakInit();

  sub_14168C();

  v264 = *(v145 + 8);
  (v264)(v146, v143);
  v263 = *(v254 + 8);
  v147 = v255;
  (v263)(v142, v255);

  sub_1416AC();
  v265(v142, v141, v147);
  sub_1417BC();
  swift_allocObject();
  v148 = v243;
  swift_weakInit();

  sub_14168C();

  (v264)(v146, v256);
  (v263)(v142, v147);

  v149 = v148;
  v273 = sub_33198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2038);
  sub_1D4A4(&qword_1C2040, &qword_1C2038);
  v150 = v236;
  sub_14279C();

  v151 = swift_allocObject();
  swift_weakInit();
  v152 = swift_allocObject();
  *(v152 + 16) = sub_428B4;
  *(v152 + 24) = v151;
  sub_1D4A4(&qword_1C2420, &qword_1C2228);
  v153 = v238;
  sub_14289C();

  (*(v237 + 8))(v150, v153);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();

  v154 = v252;
  sub_141C2C();
  type metadata accessor for MPCPlayerItemDurationSnapshot(0);
  v155 = v239;
  v156 = v253;
  sub_14274C();
  v182(v154, v156);
  sub_1D4A4(&qword_1C2428, &qword_1C2220);
  v157 = v241;
  v158 = sub_14273C();
  (*(v240 + 8))(v155, v157);
  v159 = sub_141D1C();
  v160 = swift_allocObject();
  swift_weakInit();
  _s23SkippedDurationObserverCMa();
  swift_allocObject();
  v161 = sub_CB840(v158, v159, sub_428F8, v160);

  *(v149 + 256) = v161;

  v273 = sub_344C4();
  v162 = sub_144D8C();
  v272 = v162;
  v163 = v271;
  v268(v271, 1, 1, v258);
  v164 = v242;
  sub_14283C();
  sub_15340(v163, &qword_1C16E0);

  swift_allocObject();
  swift_weakInit();
  sub_1D4A4(&qword_1C2430, &qword_1C2218);
  v165 = v172;
  sub_14289C();

  (*(v171 + 8))(v164, v165);
  swift_beginAccess();
  sub_14257C();
  swift_endAccess();
}