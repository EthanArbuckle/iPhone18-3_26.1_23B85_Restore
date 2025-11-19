uint64_t PayloadProvider.payload(for:sendingOver:knownClient:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[30] = a2;
  v4[31] = a4;
  v4[29] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530650, &qword_241167408);
  v4[32] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[33] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();
  v8 = sub_241165BD8();
  v4[38] = v8;
  v9 = *(v8 - 8);
  v4[39] = v9;
  v10 = *(v9 + 64) + 15;
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2410FA3BC, 0, 0);
}

uint64_t sub_2410FA3BC()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[37];
  sub_2410FC88C(v0[31], v3, &qword_27E530658, &unk_241167410);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v6 = v0[38];
    v5 = v0[39];
    v7 = v0[36];
    sub_2410FB29C(v0[37], &qword_27E530658, &unk_241167410);
    (*(v5 + 56))(v7, 1, 1, v6);
    v8 = type metadata accessor for AppExtensionProxy();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    v11 = swift_allocObject();
    v12 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
    *(v11 + v12) = sub_2410FC34C(MEMORY[0x277D84F90], &qword_27E5307F8, &qword_2411674C8);
    *(v11 + 16) = 1;
    sub_2410FB22C(v7, v11 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
    v56 = v8;
    v0[27] = v8;
    v0[28] = sub_2410FCEE0(&qword_27E530660, type metadata accessor for AppExtensionProxy);
  }

  else
  {
    v13 = v0[40];
    v14 = v0[41];
    v15 = v0[38];
    v16 = v0[39];
    v17 = v0[30];
    (*(v16 + 32))(v14, v0[37], v15);
    (*(v16 + 16))(v13, v14, v15);
    v18 = sub_241165CC8();
    v19 = sub_2411653A8();

    v11 = sub_241154E14(v13);
    v56 = type metadata accessor for AppExtensionProxy();
    v0[27] = v56;
    v0[28] = sub_2410FCEE0(&qword_27E530660, type metadata accessor for AppExtensionProxy);
    (*(v16 + 8))(v14, v15);
  }

  v21 = v0[38];
  v20 = v0[39];
  v22 = v0[35];
  v24 = v0[32];
  v23 = v0[33];
  v25 = v0[31];
  v0[24] = v11;
  (*(v20 + 104))(v22, *MEMORY[0x277CEED80], v21);
  (*(v20 + 56))(v22, 0, 1, v21);
  v26 = *(v24 + 48);
  sub_2410FC88C(v25, v23, &qword_27E530658, &unk_241167410);
  sub_2410FC88C(v22, v23 + v26, &qword_27E530658, &unk_241167410);
  v27 = v4(v23, 1, v21);
  v28 = v0[38];
  if (v27 == 1)
  {
    sub_2410FB29C(v0[35], &qword_27E530658, &unk_241167410);
    if (v4(v23 + v26, 1, v28) == 1)
    {
      sub_2410FB29C(v0[33], &qword_27E530658, &unk_241167410);
      goto LABEL_12;
    }

LABEL_9:
    sub_2410FB29C(v0[33], &qword_27E530650, &qword_241167408);
    goto LABEL_10;
  }

  sub_2410FC88C(v0[33], v0[34], &qword_27E530658, &unk_241167410);
  if (v4(v23 + v26, 1, v28) == 1)
  {
    v30 = v0[38];
    v29 = v0[39];
    v31 = v0[34];
    sub_2410FB29C(v0[35], &qword_27E530658, &unk_241167410);
    (*(v29 + 8))(v31, v30);
    goto LABEL_9;
  }

  v34 = v0[39];
  v33 = v0[40];
  v35 = v0[38];
  v37 = v0[34];
  v36 = v0[35];
  v38 = v0[33];
  (*(v34 + 32))(v33, v23 + v26, v35);
  sub_2410FCEE0(&qword_27E530670, MEMORY[0x277CEEDA8]);
  v39 = sub_241165D98();
  v40 = *(v34 + 8);
  v40(v33, v35);
  sub_2410FB29C(v36, &qword_27E530658, &unk_241167410);
  v40(v37, v35);
  sub_2410FB29C(v38, &qword_27E530658, &unk_241167410);
  if ((v39 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  v41 = v0[30];
  v42 = sub_241165CC8();
  v43 = sub_2411653A8();

  v44 = sub_241165368();
  v46 = v45;

  if (v44 != 0xD00000000000001DLL || 0x800000024116A040 != v46)
  {
    v47 = sub_2411663E8();

    if (v47)
    {
      goto LABEL_16;
    }

LABEL_10:
    v32 = MEMORY[0x277D18868];
    goto LABEL_17;
  }

LABEL_16:
  v32 = MEMORY[0x277D188E0];
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  v49 = *v32;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v50;
  v51 = sub_2410FB2FC(inited);
  v0[42] = v51;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v52 = *__swift_project_boxed_opaque_existential_1(v0 + 24, v56);
  v53 = swift_task_alloc();
  v0[43] = v53;
  *v53 = v0;
  v53[1] = sub_2410FAA00;
  v54 = v0[30];

  return sub_241150BD0((v0 + 2), v54, v51);
}

uint64_t sub_2410FAA00()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_2410FAC3C;
  }

  else
  {
    v4 = sub_2410FAB30;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2410FAB30()
{
  v2 = *(v0 + 320);
  v1 = *(v0 + 328);
  v4 = *(v0 + 288);
  v3 = *(v0 + 296);
  v6 = *(v0 + 272);
  v5 = *(v0 + 280);
  v7 = *(v0 + 264);
  v8 = *(v0 + 232);
  v8[3] = &type metadata for MessagesPayload;
  v8[4] = &off_2852EBA28;
  v9 = swift_allocObject();
  *v8 = v9;
  v10 = *(v0 + 32);
  v9[1] = *(v0 + 16);
  v9[2] = v10;
  v11 = *(v0 + 64);
  v9[3] = *(v0 + 48);
  v9[4] = v11;
  v9[5] = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2410FAC3C()
{
  v1 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v7 = v0[33];
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v8 = v0[1];
  v9 = v0[44];

  return v8();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

void *sub_2410FAD68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

unint64_t sub_2410FAD78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2411664A8();
  sub_241165E28();
  v6 = sub_2411664C8();

  return sub_2410FAECC(a1, a2, v6);
}

unint64_t sub_2410FADF0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_241166138();

  return sub_2410FAF84(a1, v5);
}

unint64_t sub_2410FAE34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_2411651A8();
  sub_2410FCEE0(&qword_27E530780, MEMORY[0x277CC95F0]);
  v5 = sub_241165D88();

  return sub_2410FB058(a1, v5);
}

unint64_t sub_2410FAECC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2411663E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2410FAF84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_2410FCF28(0, &qword_27E5307A0, 0x277D08268);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_241166148();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2410FB058(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_2411651A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_2410FCEE0(&qword_27E530788, MEMORY[0x277CC95F0]);
      v16 = sub_241165D98();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_2410FB22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2410FB29C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2410FB2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
    v3 = sub_241166298();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_2411664A8();

      sub_241165E28();
      result = sub_2411664C8();
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
          result = sub_2411663E8();
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
    return MEMORY[0x277D84FA0];
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_2410FB548()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_2410FB5B8(*(v0 + 16), v1);
  }

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2410FB5B8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for PayloadProvider(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PayloadProvider(_WORD *result, int a2, int a3)
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

void sub_2410FB6F0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307D8, &unk_2411674B0);
      v3 = sub_241166298();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2411661F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CDBC20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_241166138();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_241166148();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_241166138();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_241166148();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_2410FB9E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530770, &unk_241167470);
    v3 = sub_241166378();
    v4 = a1 + 32;

    while (1)
    {
      sub_2410FC88C(v4, &v13, &unk_27E530E80, &qword_241168920);
      v5 = v13;
      v6 = v14;
      result = sub_2410FAD78(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2410FC87C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBB24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530688, &qword_241167448);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
    v8 = sub_241166378();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2410FC88C(v10, v6, &qword_27E530688, &qword_241167448);
      v12 = *v6;
      v13 = v6[1];
      result = sub_2410FAD78(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for PendingAskStore.Metadata();
      result = sub_2410FC768(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
    v3 = sub_241166378();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_2410FADF0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBE04(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_241166378();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_2410FAD78(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FBF00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530790, &qword_241167480);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
    v8 = sub_241166378();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2410FC88C(v10, v6, &qword_27E530790, &qword_241167480);
      result = sub_2410FAE34(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2411651A8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2411659F8();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530768, &qword_241167468);
    v3 = sub_241166378();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2410FAD78(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC21C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
    v3 = sub_241166378();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_2410FAD78(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2410FC34C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_241166378();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2410FAD78(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2410FC448(uint64_t a1)
{
  v2 = sub_241165BD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530678, &qword_241167440);
    v10 = sub_241166298();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2410FCEE0(&qword_27E530680, MEMORY[0x277CEEDA8]);
      v18 = sub_241165D88();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2410FCEE0(&qword_27E530670, MEMORY[0x277CEEDA8]);
          v25 = sub_241165D98();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2410FC768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2410FC87C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2410FC88C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2410FC8F4(uint64_t a1)
{
  v2 = sub_241165A38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307C0, &qword_2411674A8);
    v10 = sub_241166298();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_2410FCEE0(&qword_27E5307C8, MEMORY[0x277CEECC0]);
      v18 = sub_241165D88();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_2410FCEE0(&qword_27E5307D0, MEMORY[0x277CEECC0]);
          v25 = sub_241165D98();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2410FCC14(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2411661F8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
      v3 = sub_241166298();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2411661F8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x245CDBC20](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_241166138();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_241165928();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_241166148();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_241166138();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_241165928();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_241166148();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2410FCEE0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2410FCF28(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_2410FCF7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2410FCF9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_2410FD014(uint64_t a1, unint64_t *a2)
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

void sub_2410FD064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() newHandleWithDefinition:a1 configurationContext:a2];
  [v4 activateWithContext_];
}

void sub_2410FD0E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_241165808();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E5339F0);
  v10 = sub_241165268();
  v11 = sub_241166068();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v57 = v4;
    v14 = v5;
    v15 = v8;
    v16 = a1;
    v17 = v13;
    aBlock[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_241156B38(0xD00000000000002DLL, 0x800000024116A290, aBlock);
    _os_log_impl(&dword_2410F8000, v10, v11, "%s called", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v18 = v17;
    a1 = v16;
    v8 = v15;
    v5 = v14;
    v2 = v1;
    v4 = v57;
    MEMORY[0x245CDC5E0](v18, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  sub_2410FDA7C();
  if (!v2)
  {
    v20 = v19;
    v57 = v4;
    v54 = v5;
    v21 = [objc_allocWithZone(MEMORY[0x277D66BD0]) init];
    v22 = sub_241164E68();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    sub_241164E58();
    aBlock[0] = a1;
    sub_241165668();
    sub_2410FDE70(&qword_27E5309A0, MEMORY[0x277CEEAF8]);
    v52 = sub_241164E48();
    v53 = 0;
    v51 = v25;

    v26 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
    v27 = sub_2411650F8();
    v50 = a1;
    v28 = v27;
    v29 = sub_241165638();
    v48 = v26;
    [v26 setObject:v28 forSetting:v29];

    aBlock[4] = sub_2410FD798;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2410FD8D4;
    aBlock[3] = &block_descriptor;
    v30 = _Block_copy(aBlock);
    v31 = [objc_opt_self() responderWithHandler_];
    v49 = v31;
    _Block_release(v30);

    v32 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v26 responder:v31];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_241167630;
    *(inited + 32) = v32;
    v47 = v32;
    sub_2410FB6F0(inited);
    swift_setDeallocating();
    v34 = *(inited + 16);
    swift_arrayDestroy();
    sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
    sub_2410FDE08();
    v35 = sub_241165FB8();

    [v21 setActions_];

    v36 = [objc_allocWithZone(MEMORY[0x277D66BC0]) init];
    v46 = v36;
    v38 = *(v55 + 16);
    v37 = *(v55 + 24);
    v39 = v20;
    v40 = v21;
    v38(v39, v40, v36);

    sub_241165818();
    v41 = sub_241165628();
    v55 = sub_2411657C8();

    v42 = sub_241165658();
    v43 = sub_2411653A8();

    v44 = v54;
    v45 = v57;
    (*(v54 + 104))(v8, *MEMORY[0x277CEEBD0], v57);
    sub_2410FDE70(&qword_27E5309B0, MEMORY[0x277CEEBE8]);
    sub_241165C28();
    sub_2410FB5B8(v52, v51);

    (*(v44 + 8))(v8, v45);
  }
}

void sub_2410FD798(void *a1)
{
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = a1;
  oslog = sub_241165268();
  v4 = sub_241166068();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_2410F8000, oslog, v4, "SendAsk response: Received response %@", v5, 0xCu);
    sub_2410FDEB8(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }
}

void sub_2410FD8D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2410FD93C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2410FD9AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2410FD9F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

void sub_2410FDA7C()
{
  v1 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v2 = sub_24113FEE0(0xD000000000000015, 0x800000024116A2C0, 0);
  if (v0)
  {

LABEL_3:
    v3 = 0;
LABEL_4:
    if (qword_27E530580 != -1)
    {
      swift_once();
    }

    v4 = sub_241165288();
    __swift_project_value_buffer(v4, qword_27E5339F0);
    v5 = sub_241165268();
    v6 = sub_241166048();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2410F8000, v5, v6, "Unable to get uiHostAppIdentity", v7, 2u);
      MEMORY[0x245CDC5E0](v7, -1, -1);
    }

    sub_2410FDF20();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
LABEL_9:

    return;
  }

  if (!v2)
  {
    goto LABEL_3;
  }

  v9 = v2;
  v3 = [v2 identities];
  sub_2410FCF28(0, &unk_27E530E20, 0x277CC1E58);
  v10 = sub_241165EF8();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_23:

    v3 = v9;
    goto LABEL_4;
  }

  if (!sub_2411661F8())
  {
    goto LABEL_23;
  }

LABEL_13:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x245CDBC20](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v11 = *(v10 + 32);
  }

  v3 = v11;

  v12 = [objc_opt_self() identityForLSApplicationIdentity_];
  if (!v12)
  {
    if (qword_27E530580 == -1)
    {
LABEL_19:
      v14 = sub_241165288();
      __swift_project_value_buffer(v14, qword_27E5339F0);
      v15 = sub_241165268();
      v16 = sub_241166048();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_2410F8000, v15, v16, "Unable to get uiHostProcessIdentity", v17, 2u);
        MEMORY[0x245CDC5E0](v17, -1, -1);
      }

      sub_2410FDF20();
      swift_allocError();
      *v18 = 1;
      swift_willThrow();

      goto LABEL_9;
    }

LABEL_26:
    swift_once();
    goto LABEL_19;
  }

  v13 = v12;
  [objc_allocWithZone(MEMORY[0x277D66BD8]) initWithSceneProvidingProcess:v12 configurationIdentifier:0];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2410FDE08()
{
  result = qword_27E5309A8;
  if (!qword_27E5309A8)
  {
    sub_2410FCF28(255, &qword_27E5307E0, 0x277CF0B58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309A8);
  }

  return result;
}

uint64_t sub_2410FDE70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2410FDEB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E30, &qword_2411676F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2410FDF20()
{
  result = qword_27E5309B8;
  if (!qword_27E5309B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309B8);
  }

  return result;
}

unint64_t sub_2410FDF74(unsigned __int8 a1)
{
  v1 = 0x65737361206C694ELL;
  if (a1 != 4)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (a1 == 3)
  {
    v1 = 0xD000000000000013;
  }

  v2 = 0xD000000000000018;
  if (a1 != 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!a1)
  {
    v2 = 0xD000000000000016;
  }

  if (a1 <= 2u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2410FE04C(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v3 = inited + 32;
  *(inited + 40) = 0xE400000000000000;
  if (a1 > 2u)
  {
    v4 = 0xED00006E6F697472;
    v8 = 0x65737361206C694ELL;
    if (a1 != 4)
    {
      v8 = 0xD00000000000001BLL;
      v4 = 0x800000024116A400;
    }

    if (a1 == 3)
    {
      v7 = 0xD000000000000013;
    }

    else
    {
      v7 = v8;
    }

    if (a1 == 3)
    {
      v4 = 0x800000024116A420;
    }
  }

  else
  {
    v4 = 0x800000024116A480;
    v5 = 0x800000024116A460;
    v6 = 0xD000000000000018;
    if (a1 != 1)
    {
      v6 = 0xD000000000000010;
      v5 = 0x800000024116A440;
    }

    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0xD000000000000016;
    }

    if (a1)
    {
      v4 = v5;
    }
  }

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v7;
  *(inited + 56) = v4;
  v9 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v3, &unk_27E530E80, &qword_241168920);
  return v9;
}

uint64_t sub_2410FE1EC()
{
  v1 = *v0;
  sub_2411664A8();
  MEMORY[0x245CDBE00](v1);
  return sub_2411664C8();
}

uint64_t sub_2410FE260()
{
  v1 = *v0;
  sub_2411664A8();
  MEMORY[0x245CDBE00](v1);
  return sub_2411664C8();
}

uint64_t sub_2410FE2C8(uint64_t a1)
{
  v2 = sub_241100AA8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2410FE304(uint64_t a1)
{
  v2 = sub_241100AA8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2410FE348(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 256) = a3;
  *(v4 + 264) = v3;
  *(v4 + 248) = a2;
  *(v4 + 440) = a1;
  *(v4 + 272) = *v3;
  v5 = sub_241165238();
  *(v4 + 280) = v5;
  v6 = *(v5 - 8);
  *(v4 + 288) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();
  v8 = sub_241165208();
  *(v4 + 304) = v8;
  v9 = *(v8 - 8);
  *(v4 + 312) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v11 = sub_241165248();
  *(v4 + 336) = v11;
  v12 = *(v11 - 8);
  *(v4 + 344) = v12;
  v13 = *(v12 + 64) + 15;
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2410FE508, 0, 0);
}

uint64_t sub_2410FE508()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 440);
  *(v1 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 88) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 16) = v2 & 1;
  sub_241165678();
  v3 = objc_allocWithZone(MEMORY[0x277CC5DF8]);
  v4 = sub_241165DA8();

  v5 = [v3 initWithExtensionPointIdentifier_];
  *(v0 + 368) = v5;

  v6 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_241167630;
  *(v7 + 32) = v5;
  sub_2410FCF28(0, &qword_27E5309C8, 0x277CC5DF8);
  v8 = v5;
  v9 = sub_241165EE8();
  *(v0 + 376) = v9;

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 240;
  *(v0 + 24) = sub_2410FE738;
  v10 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309D0, &qword_241167798);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_2410FF528;
  *(v0 + 104) = &block_descriptor_0;
  *(v0 + 112) = v10;
  [v6 executeQueries:v9 completionHandler:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2410FE738()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2410FE818, 0, 0);
}

uint64_t sub_2410FE818()
{
  v70 = v0;
  v1 = *(v0 + 240);

  if (qword_27E530590 != -1)
  {
LABEL_38:
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();

  v5 = v1 >> 62;
  v66 = v1;
  if (os_log_type_enabled(v3, v4))
  {
    v6 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v68 = v64;
    *v6 = 136315394;
    *(v6 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v68);
    *(v6 + 12) = 2080;
    if (v5)
    {
      v7 = sub_2411661F8();
    }

    else
    {
      v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v69 = MEMORY[0x277D84F90];
      v9 = sub_241100458(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        return MEMORY[0x282116960](v9, v10);
      }

      v61 = v4;
      v62 = v6;
      v63 = v1 >> 62;
      v11 = 0;
      v8 = v69;
      v12 = v1 & 0xC000000000000001;
      do
      {
        if (v12)
        {
          v13 = MEMORY[0x245CDBC20](v11, v1);
        }

        else
        {
          v13 = *(v1 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 bundleIdentifier];
        v16 = sub_241165DD8();
        v18 = v17;

        v69 = v8;
        v20 = *(v8 + 16);
        v19 = *(v8 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_241100458((v19 > 1), v20 + 1, 1);
          v8 = v69;
        }

        ++v11;
        *(v8 + 16) = v20 + 1;
        v21 = v8 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
        v1 = v66;
      }

      while (v7 != v11);
      v5 = v63;
      v6 = v62;
      v4 = v61;
    }

    v22 = MEMORY[0x245CDB850](v8, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_241156B38(v22, v24, &v68);

    *(v6 + 14) = v25;
    _os_log_impl(&dword_2410F8000, v3, v4, "Extension bundleId: %s ; Found identities %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v64, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);

    v1 = v66;
  }

  else
  {
  }

  if (v5)
  {
    v26 = sub_2411661F8();
    if (v26)
    {
LABEL_19:
      v27 = 0;
      v28 = v1 & 0xC000000000000001;
      v29 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v28)
        {
          v30 = MEMORY[0x245CDBC20](v27, v1);
        }

        else
        {
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_37;
          }

          v30 = *(v1 + 8 * v27 + 32);
        }

        v1 = v30;
        v65[48] = v30;
        v31 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v32 = [v30 bundleIdentifier];
        v33 = sub_241165DD8();
        v35 = v34;

        if (v33 == 0xD000000000000018 && 0x800000024116A380 == v35)
        {
          break;
        }

        v37 = sub_2411663E8();

        if (v37)
        {
          goto LABEL_33;
        }

        ++v27;
        v1 = v66;
        if (v31 == v26)
        {
          goto LABEL_40;
        }
      }

LABEL_33:
      v38 = v65[44];
      v39 = v65[45];
      v40 = v65[42];
      v41 = v65[43];
      v42 = v65[41];
      v67 = v65[40];
      v43 = v65[38];
      v44 = v65[39];

      v45 = v1;
      sub_241165258();
      (*(v41 + 16))(v38, v39, v40);
      sub_2411651F8();
      (*(v44 + 16))(v67, v42, v43);
      v46 = *(MEMORY[0x277CC5DB0] + 4);
      v47 = swift_task_alloc();
      v65[49] = v47;
      *v47 = v65;
      v47[1] = sub_2410FEE14;
      v10 = v65[40];
      v9 = v65[37];

      return MEMORY[0x282116960](v9, v10);
    }
  }

  else
  {
    v26 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26)
    {
      goto LABEL_19;
    }
  }

LABEL_40:
  v48 = v65[46];

  sub_241100310();
  swift_allocError();
  *v49 = 0;
  swift_willThrow();

  v51 = v65[44];
  v50 = v65[45];
  v53 = v65[40];
  v52 = v65[41];
  v54 = v65[37];
  v56 = v65[33];
  v55 = v65[34];
  sub_2411003D8(v56 + 24);

  v57 = *(v56 + 72);
  sub_241100400(*(v56 + 64));
  v58 = *(v56 + 88);
  sub_241100400(*(v56 + 80));
  swift_deallocPartialClassInstance();

  v59 = v65[1];

  return v59();
}

uint64_t sub_2410FEE14()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_2410FF3FC;
  }

  else
  {
    v3 = sub_2410FEF28;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2410FEF28()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  *(v0 + 408) = sub_2411651E8();
  *(v0 + 416) = v4;
  *(v0 + 420) = v5;
  *(v0 + 424) = v6;
  *(v0 + 428) = v7;
  *(v0 + 432) = v8;
  *(v0 + 436) = v9;
  *(v3 + 40) = audit_token_to_pid((v0 + 408));
  v10 = sub_241165228();
  if (v1)
  {
    v11 = *(v0 + 368);
    v53 = *(v0 + 360);
    v12 = *(v0 + 336);
    v13 = *(v0 + 344);
    v14 = *(v0 + 328);
    v16 = *(v0 + 304);
    v15 = *(v0 + 312);
    v17 = *(v0 + 288);
    v18 = *(v0 + 296);
    v19 = *(v0 + 280);

    (*(v17 + 8))(v18, v19);
    (*(v15 + 8))(v14, v16);
    (*(v13 + 8))(v53, v12);
    v22 = *(v0 + 352);
    v23 = *(v0 + 360);
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 296);
    v28 = *(v0 + 264);
    v27 = *(v0 + 272);
    sub_2411003D8(v28 + 24);

    v29 = *(v28 + 72);
    sub_241100400(*(v28 + 64));
    v30 = *(v28 + 88);
    sub_241100400(*(v28 + 80));
    swift_deallocPartialClassInstance();

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    v20 = v10;
    v21 = *(v0 + 256);
    (*(v0 + 248))(v10, 0xD000000000000018, 0x800000024116A380);
    v47 = *(v0 + 384);
    v48 = *(v0 + 368);
    v33 = *(v0 + 344);
    v52 = *(v0 + 360);
    v54 = *(v0 + 352);
    v50 = *(v0 + 328);
    v51 = *(v0 + 336);
    v34 = *(v0 + 312);
    v55 = *(v0 + 320);
    v49 = *(v0 + 304);
    v35 = *(v0 + 288);
    v45 = *(v0 + 280);
    v46 = *(v0 + 296);
    *(*(v0 + 264) + 48) = v20;
    v36 = swift_allocObject();
    swift_weakInit();
    *(v0 + 176) = sub_241100448;
    *(v0 + 184) = v36;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_2410FF7EC;
    *(v0 + 168) = &block_descriptor_5;
    v37 = _Block_copy((v0 + 144));
    v38 = *(v0 + 184);
    v39 = v20;

    [v39 setInterruptionHandler_];
    _Block_release(v37);
    v40 = swift_allocObject();
    swift_weakInit();

    *(v0 + 224) = sub_241100450;
    *(v0 + 232) = v40;
    *(v0 + 192) = MEMORY[0x277D85DD0];
    *(v0 + 200) = 1107296256;
    *(v0 + 208) = sub_2410FF7EC;
    *(v0 + 216) = &block_descriptor_9;
    v41 = _Block_copy((v0 + 192));
    v42 = *(v0 + 232);

    [v39 setInvalidationHandler_];
    _Block_release(v41);

    (*(v35 + 8))(v46, v45);
    (*(v34 + 8))(v50, v49);
    (*(v33 + 8))(v52, v51);

    v43 = *(v0 + 8);
    v44 = *(v0 + 264);

    return v43(v44);
  }
}

uint64_t sub_2410FF3FC()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 336);
  v4 = *(v0 + 344);
  v5 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v1, v3);
  v8 = *(v0 + 400);
  v10 = *(v0 + 352);
  v9 = *(v0 + 360);
  v12 = *(v0 + 320);
  v11 = *(v0 + 328);
  v13 = *(v0 + 296);
  v15 = *(v0 + 264);
  v14 = *(v0 + 272);
  sub_2411003D8(v15 + 24);

  v16 = *(v15 + 72);
  sub_241100400(*(v15 + 64));
  v17 = *(v15 + 88);
  sub_241100400(*(v15 + 80));
  swift_deallocPartialClassInstance();

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_2410FF528(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_2410FCF28(0, &qword_27E5309D8, 0x277CC5DD8);
  **(*(v1 + 64) + 40) = sub_241165EF8();

  return MEMORY[0x282200948](v1);
}

uint64_t sub_2410FF5AC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 64);
    if (v1)
    {
      v2 = *(result + 72);

      v1(v3);
      sub_241100400(v1);
    }

    sub_2410FF638();
  }

  return result;
}

id sub_2410FF638()
{
  v1 = v0;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 67109378;
    *(v5 + 4) = *(v1 + 40);

    *(v5 + 8) = 2080;
    *(v5 + 10) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v11);
    _os_log_impl(&dword_2410F8000, v3, v4, "Invalidating assertion for extension with PID %d and bundleId %s", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    [v7 invalidate];
    v8 = *(v1 + 56);
  }

  else
  {
    v8 = 0;
  }

  *(v1 + 56) = 0;

  v9 = *(v1 + 48);

  return [v9 invalidate];
}

uint64_t sub_2410FF7EC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_2410FF830()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 80);
    if (v1)
    {
      v2 = *(result + 88);

      v1(v3);
      sub_241100400(v1);
    }

    sub_2410FF638();
  }

  return result;
}

void sub_2410FF8BC()
{
  [*(v0 + 48) activate];
  v1 = *(v0 + 56);
  if (v1 && [v1 valid])
  {
    if (qword_27E530590 != -1)
    {
      swift_once();
    }

    v2 = sub_241165288();
    __swift_project_value_buffer(v2, qword_27E533A20);
    v3 = sub_241165268();
    v4 = sub_241166048();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_241156B38(0x6574617669746361, 0xEA00000000002928, &v7);
      _os_log_impl(&dword_2410F8000, v3, v4, "%s was called, but there was already a valid assertion for the extension process", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CDC5E0](v6, -1, -1);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }
  }

  else
  {
    sub_2410FFA30();
  }
}

void sub_2410FFA30()
{
  v1 = v0;
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v23 = v6;
    *v5 = 67109378;
    *(v5 + 4) = *(v0 + 40);

    *(v5 + 8) = 2080;
    *(v5 + 10) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
    _os_log_impl(&dword_2410F8000, v3, v4, "Initializing assertion for extension with PID %d and bundleId %s", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v7 = *(v0 + 40);
  v8 = objc_allocWithZone(MEMORY[0x277CEEEA8]);
  v9 = sub_241165DA8();
  v10 = [v8 initWithPID:v7 flags:10 reason:13 name:v9];

  if (v10)
  {
    v11 = v10;
    v12 = [v11 acquire];
    v13 = sub_241165268();
    if (v12)
    {
      v14 = sub_241166068();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
        _os_log_impl(&dword_2410F8000, v13, v14, "Successfully acquired assertion for extension with bundleId %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        MEMORY[0x245CDC5E0](v16, -1, -1);
        MEMORY[0x245CDC5E0](v15, -1, -1);
      }

      v17 = *(v1 + 56);
      *(v1 + 56) = v10;
    }

    else
    {
      v19 = sub_241166048();
      if (os_log_type_enabled(v13, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v23 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_241156B38(0xD000000000000018, 0x800000024116A380, &v23);
        _os_log_impl(&dword_2410F8000, v13, v19, "Failed to acquire assertion for extension with bundleId %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x245CDC5E0](v21, -1, -1);
        MEMORY[0x245CDC5E0](v20, -1, -1);
      }

      sub_241100310();
      swift_allocError();
      *v22 = 5;
      swift_willThrow();
    }
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v18 = 4;
    swift_willThrow();
  }
}

void sub_2410FFE1C()
{
  v1 = *(v0 + 48);
  aBlock[4] = sub_2411000CC;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241100228;
  aBlock[3] = &block_descriptor_13;
  v2 = _Block_copy(aBlock);
  v3 = [v1 remoteObjectProxyWithErrorHandler_];
  _Block_release(v2);
  sub_2411661A8();
  swift_unknownObjectRelease();
  v4 = *(v0 + 56);
  if (!v4 || ([v4 valid] & 1) == 0)
  {
    if (qword_27E530590 != -1)
    {
      swift_once();
    }

    v5 = sub_241165288();
    __swift_project_value_buffer(v5, qword_27E533A20);
    v6 = sub_241165268();
    v7 = sub_241166048();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_2410F8000, v6, v7, "Trying to obtain a remote proxy without a valid assertion. Re-acquiring assertion.", v8, 2u);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    sub_2410FFA30();
  }
}

void sub_2411000CC(void *a1)
{
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A20);
  v3 = a1;
  oslog = sub_241165268();
  v4 = sub_241166048();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2410F8000, oslog, v4, "Error obtaining remote proxy: %@", v5, 0xCu);
    sub_2410FB29C(v6, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v6, -1, -1);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }
}

void sub_241100228(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_241100290()
{
  sub_2411003D8(v0 + 24);

  v1 = *(v0 + 72);
  sub_241100400(*(v0 + 64));
  v2 = *(v0 + 88);
  sub_241100400(*(v0 + 80));

  return swift_deallocClassInstance();
}

unint64_t sub_241100310()
{
  result = qword_27E5309C0;
  if (!qword_27E5309C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309C0);
  }

  return result;
}

uint64_t sub_241100374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_241100400(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_241100410()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_241100458(char *a1, int64_t a2, char a3)
{
  result = sub_2411004B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_241100478(size_t a1, int64_t a2, char a3)
{
  result = sub_2411005C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_241100498(char *a1, int64_t a2, char a3)
{
  result = sub_2411007B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2411004B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_2411005C8(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E8, &unk_2411677B0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309F0, &qword_2411692B0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2411007B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  v1 = *(a1 + 40);
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t getEnumTagSinglePayload for ExtensionConnectionError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionConnectionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_241100A54()
{
  result = qword_27E5309F8;
  if (!qword_27E5309F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5309F8);
  }

  return result;
}

unint64_t sub_241100AA8()
{
  result = qword_27E530A00;
  if (!qword_27E530A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A00);
  }

  return result;
}

unint64_t sub_241100B10()
{
  v1 = v0;
  v2 = sub_241165728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for iMessageSender.Error();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2411035AC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000056;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000047;
    }

    else
    {
      return 0xD000000000000029;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v15 = *v10;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000045, 0x800000024116A5B0);
      v21 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A60, &qword_241168260);
      sub_241166318();

      return v22;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v12 = *v10;
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_2411662B8();
      MEMORY[0x245CDB790](0xD000000000000023, 0x800000024116A560);
      v13 = sub_241165468();
      MEMORY[0x245CDB790](v13);

      MEMORY[0x245CDB790](0xD00000000000001FLL, 0x800000024116A590);
      return v22;
    }

    v16 = *v10;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940);
    (*(v3 + 32))(v6, &v10[*(v17 + 48)], v2);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2411662B8();
    MEMORY[0x245CDB790](0x2820746E65696C43, 0xEC00000020444950);
    LODWORD(v21) = v16;
    v18 = sub_2411663B8();
    MEMORY[0x245CDB790](v18);

    MEMORY[0x245CDB790](0xD000000000000019, 0x800000024116A4F0);
    sub_241166318();
    MEMORY[0x245CDB790](46, 0xE100000000000000);
    v19 = v22;
    (*(v3 + 8))(v6, v2);
    return v19;
  }
}

unint64_t sub_241100EB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  v1 = sub_241100B10();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
    type metadata accessor for iMessageSender.Error();
    sub_241166318();
    v1 = 0;
    v2 = 0xE000000000000000;
  }

  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(inited + 32, &unk_27E530E80, &qword_241168920);
  return v3;
}

uint64_t sub_241100FA4(uint64_t a1)
{
  v2 = sub_24110366C(&qword_27E530A58, type metadata accessor for iMessageSender.Error);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241101010(uint64_t a1)
{
  v2 = sub_24110366C(&qword_27E530A58, type metadata accessor for iMessageSender.Error);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241101088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 424) = a6;
  *(v7 + 432) = v6;
  *(v7 + 608) = a5;
  *(v7 + 408) = a3;
  *(v7 + 416) = a4;
  *(v7 + 392) = a1;
  *(v7 + 400) = a2;
  v8 = sub_241165728();
  *(v7 + 440) = v8;
  v9 = *(v8 - 8);
  *(v7 + 448) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  *(v7 + 472) = swift_task_alloc();
  v11 = sub_241165C38();
  *(v7 + 480) = v11;
  v12 = *(v11 - 8);
  *(v7 + 488) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 496) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2411011C8, 0, 0);
}

uint64_t *sub_2411011C8()
{
  v162 = v0;
  v1 = *(v0 + 416);
  v2 = *(sub_241165A98() + 16);

  if (!v2)
  {
    if (qword_27E530598 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 416);
    v36 = sub_241165288();
    __swift_project_value_buffer(v36, qword_27E533A38);

    v37 = sub_241165268();
    v38 = sub_241166048();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = *(v0 + 416);
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v161[0] = v41;
      *v40 = 136315138;
      sub_241165A78();
      v42 = sub_241165468();
      v44 = sub_241156B38(v42, v43, v161);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_2410F8000, v37, v38, "There were no ids handles in the privledged recipient group derived from  %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x245CDC5E0](v41, -1, -1);
      MEMORY[0x245CDC5E0](v40, -1, -1);
    }

    v45 = *(v0 + 416);
    type metadata accessor for iMessageSender.Error();
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
    swift_allocError();
    *v46 = sub_241165A78();
    goto LABEL_31;
  }

  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 480);
  v6 = *(v0 + 608);
  v7 = *(v0 + 392);
  v8 = v7[5];
  *(v0 + 504) = v8;
  v9 = v7[6];
  *(v0 + 512) = v9;
  v10 = v7[7];
  *(v0 + 520) = v10;
  v11 = *MEMORY[0x277CEEE30];
  v12 = *(v4 + 104);
  *(v0 + 528) = v12;
  *(v0 + 536) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v12(v3, v11, v5);
  MEMORY[0x245CDB590](v8, v9, v10, v3);
  v13 = *(v4 + 8);
  *(v0 + 544) = v13;
  *(v0 + 552) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v3, v5);
  if (v6 == 1)
  {
    v14 = *(v0 + 400);
    (*(*(v0 + 448) + 104))(*(v0 + 472), *MEMORY[0x277CEEB40], *(v0 + 440));
    if (!v14)
    {
      if (qword_27E530598 != -1)
      {
        swift_once();
      }

      v101 = *(v0 + 472);
      v103 = *(v0 + 448);
      v102 = *(v0 + 456);
      v104 = *(v0 + 440);
      v105 = sub_241165288();
      __swift_project_value_buffer(v105, qword_27E533A38);
      (*(v103 + 16))(v102, v101, v104);
      v106 = sub_241165268();
      v107 = sub_241166048();
      v108 = os_log_type_enabled(v106, v107);
      v110 = *(v0 + 448);
      v109 = *(v0 + 456);
      v111 = *(v0 + 440);
      if (v108)
      {
        v112 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        v161[0] = v160;
        *v112 = 136315138;
        v158 = sub_241165718();
        v114 = v113;
        v115 = *(v110 + 8);
        v115(v109, v111);
        v116 = sub_241156B38(v158, v114, v161);

        *(v112 + 4) = v116;
        _os_log_impl(&dword_2410F8000, v106, v107, "Unable to to check for %s entitlement because caller is nil. Bailing from send.", v112, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v160);
        MEMORY[0x245CDC5E0](v160, -1, -1);
        v117 = v112;
        v118 = v115;
        MEMORY[0x245CDC5E0](v117, -1, -1);
      }

      else
      {

        v118 = *(v110 + 8);
        v118(v109, v111);
      }

      v139 = *(v0 + 472);
      v140 = *(v0 + 440);
      type metadata accessor for iMessageSender.Error();
      sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v118(v139, v140);
      goto LABEL_32;
    }

    v15 = *(v0 + 472);
    v17 = *(v0 + 400);
    v16 = *(v0 + 408);
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_241165828() & 1) == 0)
    {
      if (qword_27E530598 != -1)
      {
        swift_once();
      }

      v120 = *(v0 + 464);
      v119 = *(v0 + 472);
      v122 = *(v0 + 440);
      v121 = *(v0 + 448);
      v123 = sub_241165288();
      __swift_project_value_buffer(v123, qword_27E533A38);
      v157 = *(v121 + 16);
      v157(v120, v119, v122);
      v124 = sub_241165268();
      v125 = sub_241166048();
      v126 = os_log_type_enabled(v124, v125);
      v127 = *(v0 + 464);
      v129 = *(v0 + 440);
      v128 = *(v0 + 448);
      if (v126)
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v161[0] = v131;
        *v130 = 136315138;
        v132 = sub_241165718();
        v134 = v133;
        v135 = v129;
        v136 = *(v128 + 8);
        v136(v127, v135);
        v137 = sub_241156B38(v132, v134, v161);

        *(v130 + 4) = v137;
        _os_log_impl(&dword_2410F8000, v124, v125, "Missing entitlement %s. Ignoring IDS destinations that don't support.", v130, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v131);
        MEMORY[0x245CDC5E0](v131, -1, -1);
        MEMORY[0x245CDC5E0](v130, -1, -1);
      }

      else
      {

        v141 = v129;
        v136 = *(v128 + 8);
        v136(v127, v141);
      }

      v142 = *(v0 + 472);
      v143 = *(v0 + 440);
      type metadata accessor for iMessageSender.Error();
      sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
      swift_allocError();
      v145 = v144;
      v146 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940) + 48);
      *v145 = sub_241165838();
      v157(v145 + v146, v142, v143);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      v136(v142, v143);
      goto LABEL_32;
    }

    if (qword_27E530598 != -1)
    {
      swift_once();
    }

    v18 = *(v0 + 392);
    v19 = sub_241165288();
    *(v0 + 560) = __swift_project_value_buffer(v19, qword_27E533A38);
    sub_241102C64(v18, v0 + 96);
    v20 = sub_241165268();
    v21 = sub_241166068();
    sub_241102CC0(v18);
    if (os_log_type_enabled(v20, v21))
    {
      v22 = *(v0 + 392);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v161[0] = v24;
      *v23 = 136315138;
      v25 = *(v22 + 32);
      v26 = sub_241165FE8();
      v28 = sub_241156B38(v26, v27, v161);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_2410F8000, v20, v21, "Looking for IDS endpoints that don't support the following reg caps: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x245CDC5E0](v24, -1, -1);
      MEMORY[0x245CDC5E0](v23, -1, -1);
    }

    sub_2411031DC(*(v0 + 432), v0 + 296);
    if (*(v0 + 320))
    {
      v29 = *(v0 + 416);
      v30 = *(v0 + 392);
      sub_24110324C((v0 + 296), v0 + 256);
      __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
      v31 = *(v30 + 32);
      *(v0 + 568) = v31;
      v32 = sub_241165A98();
      *(v0 + 576) = v32;
      v33 = swift_task_alloc();
      *(v0 + 584) = v33;
      *v33 = v0;
      v33[1] = sub_241102128;

      return sub_24114E880(v31, v32);
    }

    goto LABEL_55;
  }

  v47 = *(v0 + 552);
  v48 = *(v0 + 544);
  v49 = *(v0 + 536);
  v50 = *(v0 + 520);
  v52 = *(v0 + 504);
  v51 = *(v0 + 512);
  v53 = *(v0 + 496);
  v54 = *(v0 + 480);
  (*(v0 + 528))(v53, *MEMORY[0x277CEEE28], v54);
  MEMORY[0x245CDB590](v52, v51, v50, v53);
  v48(v53, v54);
  if (qword_27E530598 != -1)
  {
    swift_once();
  }

  v55 = *(v0 + 416);
  v56 = *(v0 + 392);
  v57 = sub_241165288();
  __swift_project_value_buffer(v57, qword_27E533A38);
  sub_241102C64(v56, v0 + 16);

  v58 = sub_241165268();
  v59 = sub_241166068();

  v60 = os_log_type_enabled(v58, v59);
  v61 = *(v0 + 392);
  if (v60)
  {
    v62 = swift_slowAlloc();
    result = swift_slowAlloc();
    v63 = result;
    v161[0] = result;
    *v62 = 134218242;
    v64 = v61[1];
    if (v64 >> 60 == 15)
    {
      goto LABEL_22;
    }

    v65 = *v61;
    v138 = v64 >> 62;
    if ((v64 >> 62) <= 1)
    {
      if (v138)
      {
        v150 = __OFSUB__(HIDWORD(v65), v65);
        LODWORD(v65) = HIDWORD(v65) - v65;
        if (v150)
        {
          __break(1u);
          goto LABEL_61;
        }

        v65 = v65;
      }

      else
      {
        v65 = BYTE6(v64);
      }

      goto LABEL_23;
    }

    if (v138 != 2)
    {
LABEL_22:
      v65 = 0;
    }

    else
    {
      v149 = v65 + 16;
      v147 = *(v65 + 16);
      v148 = *(v149 + 8);
      v150 = __OFSUB__(v148, v147);
      v65 = v148 - v147;
      if (v150)
      {
        __break(1u);
LABEL_55:
        sub_2410FB29C(v0 + 296, &qword_27E530A20, &qword_241167948);
        v151 = sub_241165268();
        v152 = sub_241166048();
        if (os_log_type_enabled(v151, v152))
        {
          v153 = swift_slowAlloc();
          *v153 = 0;
          _os_log_impl(&dword_2410F8000, v151, v152, "Needed to lookup unsupported destinations, but idsLookupController was nil.", v153, 2u);
          MEMORY[0x245CDC5E0](v153, -1, -1);
        }

        v154 = *(v0 + 472);
        v156 = *(v0 + 440);
        v155 = *(v0 + 448);

        type metadata accessor for iMessageSender.Error();
        sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        swift_unknownObjectRelease();
        (*(v155 + 8))(v154, v156);
        goto LABEL_32;
      }
    }

LABEL_23:
    v66 = *(v0 + 416);
    v67 = *(v0 + 392);
    *(v62 + 4) = v65;
    sub_241102CC0(v67);
    *(v62 + 12) = 2080;
    sub_241165A98();
    v68 = MEMORY[0x245CDB850]();
    v70 = v69;

    v71 = sub_241156B38(v68, v70, v161);

    *(v62 + 14) = v71;
    _os_log_impl(&dword_2410F8000, v58, v59, "Sending message of %ld bytes to %s", v62, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v63);
    MEMORY[0x245CDC5E0](v63, -1, -1);
    MEMORY[0x245CDC5E0](v62, -1, -1);
    goto LABEL_25;
  }

  sub_241102CC0(*(v0 + 392));
LABEL_25:

  v72 = *(v0 + 416);
  v73 = sub_241165A98();
  result = [objc_opt_self() stringGUID];
  if (!result)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v74 = result;
  v75 = *(v0 + 392);
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  v79 = v75[3];
  v80 = sub_241165DD8();
  v82 = v81;

  v83 = sub_241103C68(v76, v77, v73, v78, v79, 0, 0xE000000000000000, v80, v82);

  v84 = sub_241165268();
  v85 = sub_241166068();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 67109120;
    *(v86 + 4) = v83 & 1;
    _os_log_impl(&dword_2410F8000, v84, v85, "Result of call to send message is %{BOOL}d", v86, 8u);
    MEMORY[0x245CDC5E0](v86, -1, -1);
  }

  if ((v83 & 1) == 0)
  {
    type metadata accessor for iMessageSender.Error();
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
    swift_allocError();
LABEL_31:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_32:
    v97 = *(v0 + 496);
    v98 = *(v0 + 464);
    v99 = *(v0 + 472);
    v100 = *(v0 + 456);

    v96 = *(v0 + 8);
    goto LABEL_33;
  }

  v87 = *(v0 + 552);
  v88 = *(v0 + 544);
  v89 = *(v0 + 536);
  v90 = *(v0 + 520);
  v92 = *(v0 + 504);
  v91 = *(v0 + 512);
  v93 = *(v0 + 496);
  v94 = *(v0 + 480);
  v95 = *(v0 + 464);
  v159 = *(v0 + 456);
  (*(v0 + 528))(v93, *MEMORY[0x277CEEE08], v94);
  MEMORY[0x245CDB590](v92, v91, v90, v93);
  v88(v93, v94);

  v96 = *(v0 + 8);
LABEL_33:

  return v96();
}

uint64_t sub_241102128(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 584);
  v9 = *v2;
  *(v3 + 592) = a1;
  *(v3 + 600) = v1;

  if (v1)
  {
    v5 = sub_2411029A8;
  }

  else
  {
    v6 = *(v3 + 576);
    v7 = **(v3 + 424);

    v5 = sub_241102258;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_241102258()
{
  v91 = v0;
  v1 = *(v0 + 592);
  *(v0 + 384) = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    v2 = sub_2411661F8();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_39;
  }

  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v87 = *(v0 + 592) + 32;
  do
  {
    if (v4)
    {
      v5 = MEMORY[0x245CDBC20](v3, *(v0 + 592));
    }

    else
    {
      v5 = *(v87 + 8 * v3);
      swift_unknownObjectRetain();
    }

    ++v3;
    v6 = [v5 destinationURIs];
    v7 = sub_241165FD8();

    sub_24110BB14(v7);
    swift_unknownObjectRelease();
  }

  while (v2 != v3);
LABEL_10:
  v8 = *(v0 + 592);
  v9 = *(v0 + 560);

  v10 = sub_241165268();
  v11 = sub_241166068();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 472);
  v15 = *(v0 + 440);
  v14 = *(v0 + 448);
  v16 = *(v0 + 400);
  if (v12)
  {
    v88 = *(v0 + 440);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v90[0] = v18;
    *v17 = 136315138;
    swift_beginAccess();
    v19 = *(v0 + 384);

    v21 = MEMORY[0x245CDB850](v20, MEMORY[0x277D837D0]);
    v86 = v13;
    v23 = v22;

    v24 = sub_241156B38(v21, v23, v90);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_2410F8000, v10, v11, "The following destinations don't support the required reg caps: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CDC5E0](v18, -1, -1);
    MEMORY[0x245CDC5E0](v17, -1, -1);

    swift_unknownObjectRelease();
    (*(v14 + 8))(v86, v88);
  }

  else
  {

    swift_unknownObjectRelease();
    (*(v14 + 8))(v13, v15);
  }

  v25 = *(v0 + 424);
  swift_beginAccess();
  *v25 = *(v0 + 384);
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  v26 = *(v0 + 552);
  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  v29 = *(v0 + 520);
  v31 = *(v0 + 504);
  v30 = *(v0 + 512);
  v32 = *(v0 + 496);
  v33 = *(v0 + 480);
  (*(v0 + 528))(v32, *MEMORY[0x277CEEE28], v33);
  MEMORY[0x245CDB590](v31, v30, v29, v32);
  v27(v32, v33);
  if (qword_27E530598 != -1)
  {
    swift_once();
  }

  v34 = *(v0 + 416);
  v35 = *(v0 + 392);
  v36 = sub_241165288();
  __swift_project_value_buffer(v36, qword_27E533A38);
  sub_241102C64(v35, v0 + 16);

  v37 = sub_241165268();
  v38 = sub_241166068();

  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 392);
  if (v39)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v90[0] = v42;
    *v41 = 134218242;
    v43 = v40[1];
    if (v43 >> 60 == 15)
    {
LABEL_17:
      v44 = 0;
LABEL_18:
      v45 = *(v0 + 416);
      v46 = *(v0 + 392);
      *(v41 + 4) = v44;
      sub_241102CC0(v46);
      *(v41 + 12) = 2080;
      sub_241165A98();
      v47 = MEMORY[0x245CDB850]();
      v49 = v48;

      v50 = sub_241156B38(v47, v49, v90);

      *(v41 + 14) = v50;
      _os_log_impl(&dword_2410F8000, v37, v38, "Sending message of %ld bytes to %s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x245CDC5E0](v42, -1, -1);
      MEMORY[0x245CDC5E0](v41, -1, -1);
      goto LABEL_20;
    }

    v44 = *v40;
    v81 = v43 >> 62;
    if ((v43 >> 62) > 1)
    {
      if (v81 != 2)
      {
        goto LABEL_17;
      }

      v84 = v44 + 16;
      v82 = *(v44 + 16);
      v83 = *(v84 + 8);
      v85 = __OFSUB__(v83, v82);
      v44 = v83 - v82;
      if (!v85)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    else if (!v81)
    {
      v44 = BYTE6(v43);
      goto LABEL_18;
    }

    v85 = __OFSUB__(HIDWORD(v44), v44);
    LODWORD(v44) = HIDWORD(v44) - v44;
    if (!v85)
    {
      v44 = v44;
      goto LABEL_18;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_241102CC0(*(v0 + 392));
LABEL_20:

  v51 = *(v0 + 416);
  v52 = sub_241165A98();
  v53 = [objc_opt_self() stringGUID];
  if (!v53)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v54 = v53;
  v55 = *(v0 + 392);
  v56 = *v55;
  v57 = v55[1];
  v58 = v55[2];
  v59 = v55[3];
  v60 = sub_241165DD8();
  v62 = v61;

  v63 = sub_241103C68(v56, v57, v52, v58, v59, 0, 0xE000000000000000, v60, v62);

  v64 = sub_241165268();
  v65 = sub_241166068();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v63 & 1;
    _os_log_impl(&dword_2410F8000, v64, v65, "Result of call to send message is %{BOOL}d", v66, 8u);
    MEMORY[0x245CDC5E0](v66, -1, -1);
  }

  if (v63)
  {
    v67 = *(v0 + 552);
    v68 = *(v0 + 544);
    v69 = *(v0 + 536);
    v70 = *(v0 + 520);
    v72 = *(v0 + 504);
    v71 = *(v0 + 512);
    v73 = *(v0 + 496);
    v74 = *(v0 + 480);
    v75 = *(v0 + 464);
    v89 = *(v0 + 456);
    (*(v0 + 528))(v73, *MEMORY[0x277CEEE08], v74);
    MEMORY[0x245CDB590](v72, v71, v70, v73);
    v68(v73, v74);
  }

  else
  {
    type metadata accessor for iMessageSender.Error();
    sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v77 = *(v0 + 496);
    v79 = *(v0 + 464);
    v78 = *(v0 + 472);
    v80 = *(v0 + 456);
  }

  v76 = *(v0 + 8);

  v76();
}

uint64_t sub_2411029A8()
{
  v31 = v0;
  v1 = v0[75];
  v2 = v0[72];
  v3 = v0[70];
  v4 = v0[49];

  sub_241102C64(v4, (v0 + 22));
  v5 = v1;
  v6 = sub_241165268();
  v7 = sub_241166048();
  sub_241102CC0(v4);

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[75];
    v9 = v0[71];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v30 = v12;
    *v10 = 136315394;
    v13 = sub_241165FE8();
    v15 = sub_241156B38(v13, v14, &v30);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_2410F8000, v6, v7, "Error looking up endpoints without required registration capabilities %s. error: %@", v10, 0x16u);
    sub_2410FB29C(v11, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  v18 = v0[75];
  v19 = v0[59];
  v20 = v0[55];
  v21 = v0[56];
  v22 = v0[50];
  type metadata accessor for iMessageSender.Error();
  sub_24110366C(&qword_27E530A10, type metadata accessor for iMessageSender.Error);
  swift_allocError();
  *v23 = v18;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v21 + 8))(v19, v20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  v24 = v0[62];
  v25 = v0[58];
  v26 = v0[59];
  v27 = v0[57];

  v28 = v0[1];

  return v28();
}

uint64_t sub_241102D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_241165728();
  v38 = *(v4 - 8);
  v5 = v38[8];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for iMessageSender.Error();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v36 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A68, &qword_241167AB8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v36 - v21;
  v23 = &v36 + *(v20 + 56) - v21;
  sub_2411035AC(a1, &v36 - v21);
  sub_2411035AC(a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_2411035AC(v22, v17);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v25 = *v17;
          v26 = *v23;
          v27 = sub_241165488();
          v28 = v27 == sub_241165488();
LABEL_26:
          sub_241103610(v22);
          return v28 & 1;
        }
      }

      else
      {
        sub_2411035AC(v22, v15);
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A18, &qword_241167940) + 48);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v30 = *v15;
          v36 = *v23;
          v37 = v30;
          v31 = v38;
          v32 = v38[4];
          v32(v10, v15 + v29, v4);
          v32(v8, &v23[v29], v4);
          if (v37 == v36)
          {
            sub_24110366C(&qword_27E530A70, MEMORY[0x277CEEB48]);
            sub_241165EC8();
            sub_241165EC8();
            if (v41 == v39 && v42 == v40)
            {
              v28 = 1;
            }

            else
            {
              v28 = sub_2411663E8();
            }

            v34 = v38[1];
            v34(v8, v4);
            v34(v10, v4);
          }

          else
          {
            v33 = v31[1];
            v33(v8, v4);
            v33(v10, v4);
            v28 = 0;
          }

          goto LABEL_26;
        }

        (v38[1])(v15 + v29, v4);
      }

      goto LABEL_22;
    }

    if (!swift_getEnumCaseMultiPayload())
    {
      sub_241103610(v23);
      goto LABEL_20;
    }

LABEL_22:
    sub_2410FB29C(v22, &qword_27E530A68, &qword_241167AB8);
    v28 = 0;
    return v28 & 1;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_241103610(v22);
  v28 = 1;
  return v28 & 1;
}

uint64_t type metadata accessor for iMessageSender.Error()
{
  result = qword_27E530A28;
  if (!qword_27E530A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2411031DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A20, &qword_241167948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24110324C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_2411032B4()
{
  sub_24110333C();
  if (v0 <= 0x3F)
  {
    sub_2411033E8();
    if (v1 <= 0x3F)
    {
      sub_241103418();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24110333C()
{
  if (!qword_27E530A38)
  {
    v0 = sub_241103384();
    if (!v1)
    {
      atomic_store(v0, &qword_27E530A38);
    }
  }
}

unint64_t sub_241103384()
{
  result = qword_27E530A40;
  if (!qword_27E530A40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27E530A40);
  }

  return result;
}

uint64_t sub_2411033E8()
{
  result = qword_27E530A48;
  if (!qword_27E530A48)
  {
    result = MEMORY[0x277CEEAF0];
    atomic_store(MEMORY[0x277CEEAF0], &qword_27E530A48);
  }

  return result;
}

void sub_241103418()
{
  if (!qword_27E530A50)
  {
    sub_241165728();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E530A50);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon16IDSLookupCapable_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2411034B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241103500(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2411035AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for iMessageSender.Error();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_241103610(uint64_t a1)
{
  v2 = type metadata accessor for iMessageSender.Error();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24110366C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2411036B8()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);

    v5 = sub_241165DA8();

    [v2 removeListenerID:v5 forService:1];

    v6 = *(v0 + 24);

    return swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241103794(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v34 = *a5;
  if (qword_27E5305C0 != -1)
  {
    swift_once();
  }

  v9 = sub_241165288();
  __swift_project_value_buffer(v9, qword_27E533AB0);

  v10 = sub_241165268();
  v11 = sub_241166068();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    if (a2)
    {
      sub_24110412C();
      swift_allocError();
      *v14 = a1;
      v14[1] = a2;

      v15 = _swift_stdlib_bridgeErrorToNSError();
      v16 = v15;
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }

    *(v12 + 4) = v15;
    *v13 = v16;
    _os_log_impl(&dword_2410F8000, v10, v11, "sentMessageGUID is %@", v12, 0xCu);
    sub_2410FDEB8(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  if (!a2 || (a1 != a3 || a4 != a2) && (sub_2411663E8() & 1) == 0)
  {
    v33 = a3;

    v17 = sub_241165268();
    v18 = sub_241166048();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v21;
      *v19 = 138412546;
      if (a2)
      {
        sub_24110412C();
        swift_allocError();
        *v22 = a1;
        v22[1] = a2;

        v23 = _swift_stdlib_bridgeErrorToNSError();
        v24 = v23;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      *(v19 + 4) = v23;
      *v20 = v24;
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_241156B38(v33, a4, &v35);
      _os_log_impl(&dword_2410F8000, v17, v18, "sentMessageGUID %@ does not equal payload messageGUID %s", v19, 0x16u);
      sub_2410FDEB8(v20);
      MEMORY[0x245CDC5E0](v20, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }
  }

  v25 = sub_241165268();
  v26 = sub_241166068();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136315138;
    sub_2411040D4();
    v29 = sub_2411663B8();
    v31 = sub_241156B38(v29, v30, &v35);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_2410F8000, v25, v26, "Completing OS transaction background-messsage-send: %s from MSPISendMSMessagePayloadReturningGUID completion handler", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CDC5E0](v28, -1, -1);
    MEMORY[0x245CDC5E0](v27, -1, -1);
  }

  return MEMORY[0x245CDAB10]();
}

uint64_t sub_241103BEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_241165DD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3(v4, v6);
}

uint64_t sub_241103C68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (qword_27E5305C0 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E533AB0);
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(0xD000000000000077, 0x800000024116A700, aBlock);
    _os_log_impl(&dword_2410F8000, v12, v13, "%s called", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  v16 = sub_2411651D8();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_2411651B8();

  v20 = sub_241165268();
  v21 = sub_241166068();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136315138;
    sub_2411040D4();
    v24 = sub_2411663B8();
    v26 = sub_241156B38(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_2410F8000, v20, v21, "Opening OS transaction for background-messsage-send: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CDC5E0](v23, -1, -1);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

  if (a2 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_2411650F8();
  }

  v28 = sub_241165EE8();
  v29 = sub_241165DA8();
  v30 = sub_241165DA8();
  v31 = sub_241165DA8();
  v32 = sub_241165EE8();
  v33 = swift_allocObject();
  v33[2] = a8;
  v33[3] = a9;
  v33[4] = v19;
  aBlock[4] = sub_2411040B0;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241103BEC;
  aBlock[3] = &block_descriptor_1;
  v34 = _Block_copy(aBlock);

  v35 = IMSPISendMSMessagePayloadReturningGUID();
  _Block_release(v34);

  return v35;
}

uint64_t sub_241104070()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2411040D4()
{
  result = qword_27E530A78;
  if (!qword_27E530A78)
  {
    sub_2411651D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A78);
  }

  return result;
}

unint64_t sub_24110412C()
{
  result = qword_27E530A80;
  if (!qword_27E530A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530A80);
  }

  return result;
}

id sub_241104184()
{
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v1 = result;
    v2 = [result aa_primaryAppleAccount];

    if (v2 && (v3 = v2, v4 = sub_241166158(), v6 = v5, v3, v6))
    {

      return v4;
    }

    else
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v7 = sub_241165288();
      __swift_project_value_buffer(v7, qword_27E5339F0);
      v8 = sub_241165268();
      v9 = sub_241166048();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2410F8000, v8, v9, "Unable to get logged in user's apple ID", v10, 2u);
        MEMORY[0x245CDC5E0](v10, -1, -1);
      }

      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2411042F4()
{
  v1 = sub_241157FC8(1, v0, &off_281A914D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A88, &qword_241167C08);
  swift_allocObject();
  v2 = v1;
  v3 = sub_241104670(v2);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v3 + 24) = &off_281A914C0;
  swift_unknownObjectWeakAssign();

  sub_2411047D4();
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533A80);
  v6 = sub_241165268();
  v7 = sub_241166068();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v11);
    _os_log_impl(&dword_2410F8000, v6, v7, "%s init complete", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  return v4;
}

unint64_t sub_2411044DC(uint64_t a1)
{
  if (!BYTE4(a1))
  {
    sub_2411662B8();
    v1 = "The Biome event had an invalid Screen Time request status ";
    goto LABEL_5;
  }

  if (BYTE4(a1) == 1)
  {
    sub_2411662B8();
    v1 = "The Biome event had an unknown Screen Time request answer ";
LABEL_5:
    MEMORY[0x245CDB790](0xD00000000000003ALL, (v1 - 32) | 0x8000000000000000);
    v2 = sub_2411663B8();
    MEMORY[0x245CDB790](v2);

    MEMORY[0x245CDB790](46, 0xE100000000000000);
    return 0;
  }

  if (a1)
  {
    return 0xD00000000000002FLL;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t sub_241104614()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_241104670(uint64_t a1)
{
  v2 = v1;
  *(v1 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + 40) = 0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A80);
  v5 = sub_241165268();
  v6 = sub_241166068();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v10);
    _os_log_impl(&dword_2410F8000, v5, v6, "BiomeStreamListener create for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  *(v2 + 32) = a1;
  return v2;
}

void sub_2411047D4()
{
  v1 = [objc_opt_self() screenTimeRequestStream];
  v2 = [v1 publisher];

  v3 = [v2 subscribeOn_];
  v12 = sub_241105580;
  v13 = v0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_2410FD8D4;
  v11 = &block_descriptor_2;
  v4 = _Block_copy(&v8);

  v12 = sub_2411055A0;
  v13 = v0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 1107296256;
  v10 = sub_241104B00;
  v11 = &block_descriptor_6;
  v5 = _Block_copy(&v8);

  v6 = [v3 sinkWithCompletion:v4 receiveInput:v5];

  _Block_release(v5);
  _Block_release(v4);
  v7 = *(v0 + 40);
  *(v0 + 40) = v6;
}

void sub_241104998()
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v0 = sub_241165288();
  __swift_project_value_buffer(v0, qword_27E533A80);

  oslog = sub_241165268();
  v1 = sub_241166068();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;

    *(v2 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v5);
    _os_log_impl(&dword_2410F8000, oslog, v1, "Biome stream sunk for %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x245CDC5E0](v3, -1, -1);
    MEMORY[0x245CDC5E0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_241104B00(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_241104B60()
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v0 = sub_241165288();
  __swift_project_value_buffer(v0, qword_27E533A80);

  v1 = sub_241165268();
  v2 = sub_241166068();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v21 = v4;
    *v3 = 136315138;

    *(v3 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v21);
    _os_log_impl(&dword_2410F8000, v1, v2, "%s receive input", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x245CDC5E0](v4, -1, -1);
    MEMORY[0x245CDC5E0](v3, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2411062C8(v6);
      swift_unknownObjectRelease();
    }

    else
    {

      v16 = sub_241165268();
      v17 = sub_241166048();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *v18 = 136315138;

        *(v18 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v21);
        _os_log_impl(&dword_2410F8000, v16, v17, "%s received event, but has no delegate to notify", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x245CDC5E0](v19, -1, -1);
        MEMORY[0x245CDC5E0](v18, -1, -1);

        swift_unknownObjectRelease();
        return;
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    swift_unknownObjectRetain();
    oslog = sub_241165268();
    v7 = sub_241166048();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315650;

      *(v8 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v21);
      *(v8 + 12) = 2080;
      swift_unknownObjectRetain();
      v10 = sub_241165DE8();
      v12 = sub_241156B38(v10, v11, &v21);

      *(v8 + 14) = v12;
      *(v8 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A90, &qword_241167C10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A98, &qword_241167C18);
      v13 = sub_241165DE8();
      v15 = sub_241156B38(v13, v14, &v21);

      *(v8 + 24) = v15;
      _os_log_impl(&dword_2410F8000, oslog, v7, "%s has the wrong type: %s, expected: %s", v8, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v9, -1, -1);
      MEMORY[0x245CDC5E0](v8, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_241105010()
{
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v0 = sub_241165288();
  __swift_project_value_buffer(v0, qword_27E533A80);
  v1 = sub_241165268();
  v2 = sub_241166068();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v6);
    _os_log_impl(&dword_2410F8000, v1, v2, "%s completing transaction", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x245CDC5E0](v4, -1, -1);
    MEMORY[0x245CDC5E0](v3, -1, -1);
  }

  return MEMORY[0x245CDAB10]();
}

uint64_t sub_24110515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 48) = a6;
  v8 = swift_task_alloc();
  *(v6 + 56) = v8;
  *v8 = v6;
  v8[1] = sub_241105208;

  return sub_2411059C8(a5);
}

uint64_t sub_241105208()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_24110537C;
  }

  else
  {
    v3 = sub_24110531C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24110531C()
{
  dispatch_group_leave(*(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24110537C()
{
  v19 = v0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A80);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v18);
    *(v8 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);
    v12 = *(v0 + 32);
    v13 = sub_241166458();
    v15 = sub_241156B38(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s event error: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  else
  {
  }

  dispatch_group_leave(*(v0 + 48));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2411055A4(int a1, int a2)
{
  if (a1 == 2)
  {
    return 0;
  }

  v24[5] = v2;
  v24[6] = v3;
  if (a1 != 3)
  {
    if (qword_27E5305B0 != -1)
    {
      swift_once();
    }

    v7 = sub_241165288();
    __swift_project_value_buffer(v7, qword_27E533A80);
    v8 = sub_241165268();
    v9 = sub_241166048();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24[0] = v11;
      *v10 = 67109378;
      *(v10 + 4) = a1;
      *(v10 + 8) = 2080;
      *(v10 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
      _os_log_impl(&dword_2410F8000, v8, v9, "Invalid status %d for %s", v10, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x245CDC5E0](v11, -1, -1);
      MEMORY[0x245CDC5E0](v10, -1, -1);
    }

    v12 = 0;
    v4 = a1;
    goto LABEL_13;
  }

  v4 = a2;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (qword_27E5305B0 != -1)
      {
        swift_once();
      }

      v19 = sub_241165288();
      __swift_project_value_buffer(v19, qword_27E533A80);
      v20 = sub_241165268();
      v21 = sub_241166048();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24[0] = v23;
        *v22 = 67109378;
        *(v22 + 8) = 2080;
        *(v22 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
        _os_log_impl(&dword_2410F8000, v20, v21, "Unknown approval time %d for %s", v22, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x245CDC5E0](v23, -1, -1);
        MEMORY[0x245CDC5E0](v22, -1, -1);
      }

      v4 = 0;
      v12 = 1;
      goto LABEL_13;
    }

    if (a2 == 1)
    {
      return 1;
    }

LABEL_17:
    if (qword_27E5305B0 != -1)
    {
      swift_once();
    }

    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E533A80);
    v15 = sub_241165268();
    v16 = sub_241166048();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24[0] = v18;
      *v17 = 67109378;
      *(v17 + 4) = v4;
      *(v17 + 8) = 2080;
      *(v17 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v24);
      _os_log_impl(&dword_2410F8000, v15, v16, "Unknown approval time %d for %s", v17, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x245CDC5E0](v18, -1, -1);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    v12 = 1;
LABEL_13:
    sub_241106834();
    swift_allocError();
    *v13 = v4;
    *(v13 + 4) = v12;
    return swift_willThrow();
  }

  if (a2 == 2)
  {
    return 2;
  }

  if (a2 != 3)
  {
    goto LABEL_17;
  }

  return 3;
}

uint64_t sub_2411059E8()
{
  v47 = v0;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v1 = sub_241165288();
  __swift_project_value_buffer(v1, qword_27E533A80);
  v2 = sub_241165268();
  v3 = sub_241166068();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v46[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
    _os_log_impl(&dword_2410F8000, v2, v3, "Handling %s biome event", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x245CDC5E0](v5, -1, -1);
    MEMORY[0x245CDC5E0](v4, -1, -1);
  }

  v6 = [*(v0 + 56) eventBody];
  *(v0 + 64) = v6;
  if (!v6)
  {
    v13 = sub_241165268();
    v14 = sub_241166048();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v46[0] = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
      _os_log_impl(&dword_2410F8000, v13, v14, "No event body for %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x245CDC5E0](v16, -1, -1);
      MEMORY[0x245CDC5E0](v15, -1, -1);
    }

    sub_241106834();
    swift_allocError();
    *v17 = 0;
    *(v17 + 4) = 2;
    swift_willThrow();
    goto LABEL_19;
  }

  v7 = v6;
  if ([v6 status] == 1)
  {
    v8 = v7;
    v9 = sub_241165268();
    v10 = sub_241166068();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v46[0] = v12;
      *v11 = 67109378;
      *(v11 + 4) = [v8 status];

      *(v11 + 8) = 2080;
      *(v11 + 10) = sub_241156B38(0xD000000000000011, 0x800000024116A020, v46);
      _os_log_impl(&dword_2410F8000, v9, v10, "Status was %d (pending) for %s. Ignoring biome event.", v11, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x245CDC5E0](v12, -1, -1);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    else
    {
    }

    v23 = *(v0 + 8);
    goto LABEL_20;
  }

  v18 = [v7 responderDSID];
  if (!v18)
  {
    v24 = sub_241165268();
    v25 = sub_241166048();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2410F8000, v24, v25, "Event body did not contain a DSID.", v26, 2u);
      MEMORY[0x245CDC5E0](v26, -1, -1);
    }

    sub_241106834();
    swift_allocError();
    *v27 = 1;
    *(v27 + 4) = 2;
    swift_willThrow();

LABEL_19:
    v23 = *(v0 + 8);
LABEL_20:

    return v23();
  }

  v19 = v18;
  v20 = sub_241165DD8();
  v22 = v21;

  *(v0 + 72) = v22;
  v29 = sub_2411055A4([v7 status], objc_msgSend(v7, sel_approvalTime));
  v30 = [v7 requestID];
  v31 = sub_241165DD8();
  v33 = v32;

  *(v0 + 80) = v33;
  *(v0 + 16) = v31;
  *(v0 + 24) = v33;
  *(v0 + 32) = v20;
  *(v0 + 40) = v22;
  *(v0 + 48) = v29;

  v34 = v7;
  v35 = sub_241165268();
  v36 = sub_241166068();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46[0] = v45;
    *v37 = 136315650;
    v38 = [v34 requestID];
    v39 = sub_241165DD8();
    v41 = v40;

    v42 = sub_241156B38(v39, v41, v46);

    *(v37 + 4) = v42;
    *(v37 + 12) = 2080;
    v43 = sub_241156B38(v20, v22, v46);

    *(v37 + 14) = v43;
    *(v37 + 22) = 2048;
    *(v37 + 24) = v29;
    _os_log_impl(&dword_2410F8000, v35, v36, "Calling into ScreenTimeAnswerHandler with requestID %s, responderDSID: %s, answer: %ld", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v45, -1, -1);
    MEMORY[0x245CDC5E0](v37, -1, -1);
  }

  else
  {
  }

  v44 = swift_task_alloc();
  *(v0 + 88) = v44;
  *v44 = v0;
  v44[1] = sub_2411060CC;

  return sub_24110BEC0();
}

uint64_t sub_2411060CC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_241106254;
  }

  else
  {
    v3 = sub_2411061E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2411061E0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_241106254()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  v4 = v0[12];
  v5 = v0[1];

  return v5();
}

uint64_t sub_2411062C8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F50, &qword_241167C20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v26 - v6;
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v8 = sub_241165288();
  __swift_project_value_buffer(v8, qword_27E533A80);
  v9 = sub_241165268();
  v10 = sub_241166068();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v27);
    _os_log_impl(&dword_2410F8000, v9, v10, "%s event consume", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x245CDC5E0](v12, -1, -1);
    MEMORY[0x245CDC5E0](v11, -1, -1);
  }

  v13 = sub_2411651D8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_2411651B8();
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = sub_241165FA8();
  (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v2;
  v18[5] = a1;
  v18[6] = v16;

  v19 = a1;
  v20 = v16;
  sub_24113C95C(0, 0, v7, &unk_241167C30, v18);

  sub_241166098();
  v21 = sub_241165268();
  v22 = sub_241166068();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_241156B38(0xD000000000000011, 0x800000024116A020, &v27);
    _os_log_impl(&dword_2410F8000, v21, v22, "%s eventHandler complete", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x245CDC5E0](v24, -1, -1);
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

  sub_241105010();
}

uint64_t sub_241106628()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_241106678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_241106740;

  return sub_24110515C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_241106740()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_241106834()
{
  result = qword_27E530AA0;
  if (!qword_27E530AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AA0);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenTimeRequestBiomeEventHandler.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
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

uint64_t storeEnumTagSinglePayload for ScreenTimeRequestBiomeEventHandler.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_241106928(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_241106940(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

id sub_241106974()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v2 = result;
    v3 = [objc_opt_self() defaultCenter];
    v4 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v0 accountStore:v2 notificationCenter:v3];

    v5 = [v4 downtimeWhitelistContainer];
    v6 = [v5 identifier];

    v7 = sub_241165DD8();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    return (v10 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_241106AC0()
{
  sub_2411664A8();
  MEMORY[0x245CDBE00](0);
  return sub_2411664C8();
}

uint64_t sub_241106B2C()
{
  sub_2411664A8();
  MEMORY[0x245CDBE00](0);
  return sub_2411664C8();
}

uint64_t sub_241106B8C(uint64_t a1)
{
  v2 = sub_2411093E8();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241106BC8(uint64_t a1)
{
  v2 = sub_2411093E8();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_241106C04()
{
  v1 = *v0;
  v2 = sub_241165CC8();
  v3 = sub_241165338();
  v5 = v4;

  v6 = sub_241165498();
  if (v5)
  {
    if (v3 != v6 || v5 != v7)
    {
      sub_2411663E8();
    }
  }

  else
  {
  }

  return sub_241165E38();
}

uint64_t sub_241106CDC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_241164ED8();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_2411650D8();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v11 = sub_241164F58();
  v2[15] = v11;
  v12 = *(v11 - 8);
  v2[16] = v12;
  v13 = *(v12 + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB8, &unk_241167D40);
  v2[19] = v14;
  v15 = *(v14 - 8);
  v2[20] = v15;
  v16 = *(v15 + 64) + 15;
  v2[21] = swift_task_alloc();
  v17 = sub_241165168();
  v2[22] = v17;
  v18 = *(v17 - 8);
  v2[23] = v18;
  v19 = *(v18 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241106FC4, 0, 0);
}

id sub_241106FC4()
{
  v123 = v0;
  v1 = v0[3];
  v2 = sub_2411655E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64) + 15;
  v5 = swift_task_alloc();
  sub_2411655D8();
  sub_241107BB4();
  sub_241165598();
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result aa_primaryAppleAccount];

  v98 = v3;
  v99 = v2;
  if (v8)
  {
    v9 = [v8 aa_firstName];
    if (v9)
    {
      v10 = v9;
      sub_241165DD8();

      goto LABEL_7;
    }
  }

  sub_241165E38();
LABEL_7:
  v11 = v0[24];
  bufa = v0[23];
  v109 = v0[22];
  v13 = v0[20];
  v12 = v0[21];
  v100 = v0[25];
  v103 = v0[19];
  v113 = v0[18];
  v117 = v0[14];
  v14 = v0[3];
  sub_2411655A8();
  v15 = *v14;
  v16 = sub_241165CC8();
  sub_241165328();
  v119 = v5;

  sub_2411655C8();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AC0, &qword_241168060) - 8) + 64) + 15;
  v18 = swift_task_alloc();
  v19 = *MEMORY[0x277D39F30];
  v20 = sub_2411654C8();
  v21 = v0;
  v22 = *(v20 - 8);
  (*(v22 + 104))(v18, v19, v20);
  (*(v22 + 56))(v18, 0, 1, v20);
  sub_241165508();

  v23 = sub_241165CC8();
  sub_241165338();

  v24 = v119;
  sub_241165578();
  sub_241106C04();
  sub_241165528();
  v25 = sub_241165CC8();
  sub_241165388();

  sub_241165548();
  v26 = *(sub_2411654D8() - 8);
  v27 = *(v26 + 64) + 15;
  swift_task_alloc();
  v28 = *MEMORY[0x277D39F48];
  (*(v26 + 104))();
  sub_241165558();

  sub_241165158();
  v29 = [objc_opt_self() hours];
  sub_241108F98();
  sub_241164E78();
  sub_241165148();
  (*(v13 + 8))(v12, v103);
  (*(bufa + 1))(v11, v109);
  sub_241165538();
  sub_241164F48();
  sub_241165B68();
  v31 = v21[13];
  v30 = v21[14];
  v32 = v21[12];
  v33 = v21[8];
  v34 = v21[9];
  v35 = v21[3];
  sub_241107F38(v30, v15, v31);
  sub_2410FB29C(v30, &qword_27E530AB0, &qword_241168080);
  sub_241108FE4(v31, v30);
  sub_241109054(v30, v32);
  v36 = *(v34 + 48);
  v37 = v21;
  if (v36(v32, 1, v33) != 1)
  {
    v39 = v21[16];
    v40 = v21[15];
    v41 = v21[7];
    (*(v21[9] + 32))(v21[10], v21[12], v21[8]);
    sub_241164F28();
    if ((*(v39 + 48))(v41, 1, v40) == 1)
    {
      sub_2410FB29C(v21[7], &qword_27E530AA8, &qword_241167D20);
      v37 = v21;
    }

    else
    {
      v43 = v21[16];
      v42 = v21[17];
      v44 = v21[15];
      (*(v43 + 32))(v42, v21[7], v44);
      v38 = sub_241164F08();
      (*(v43 + 8))(v42, v44);
      v37 = v21;
      if (v38)
      {
        (*(v21[9] + 8))(v21[10], v21[8]);
        goto LABEL_14;
      }
    }

    (*(v37[9] + 8))(v37[10], v37[8]);
    v38 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  sub_2410FB29C(v21[12], &qword_27E530AB0, &qword_241168080);
  v38 = MEMORY[0x277D84F90];
LABEL_14:
  sub_2411654A8();
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v45 = sub_241165288();
  __swift_project_value_buffer(v45, qword_27E533A20);

  v46 = sub_241165268();
  v47 = sub_241166068();
  if (os_log_type_enabled(v46, v47))
  {
    v104 = v47;
    v48 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v121 = v101;
    *v48 = 134218242;
    *(v48 + 4) = *(v38 + 16);

    buf = v48;
    *(v48 + 12) = 2080;
    v49 = *(v38 + 16);
    v50 = MEMORY[0x277D84F90];
    if (v49)
    {
      v95 = v46;
      v97 = v36;
      v51 = v37[5];
      v122 = MEMORY[0x277D84F90];
      sub_241100458(0, v49, 0);
      v50 = v122;
      v52 = *(v51 + 16);
      v51 += 16;
      v96 = v38;
      v53 = v38 + ((*(v51 + 64) + 32) & ~*(v51 + 64));
      v110 = *(v51 + 56);
      v114 = v52;
      v54 = (v51 - 8);
      do
      {
        v55 = v37[6];
        v56 = v37[4];
        v114(v55, v53, v56);
        v57 = sub_241164EB8();
        v59 = v58;
        (*v54)(v55, v56);
        v122 = v50;
        v61 = *(v50 + 16);
        v60 = *(v50 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_241100458((v60 > 1), v61 + 1, 1);
          v50 = v122;
        }

        *(v50 + 16) = v61 + 1;
        v62 = v50 + 16 * v61;
        *(v62 + 32) = v57;
        *(v62 + 40) = v59;
        v53 += v110;
        --v49;
      }

      while (v49);
      v36 = v97;
      v38 = v96;
      v46 = v95;
    }

    v63 = MEMORY[0x245CDB850](v50, MEMORY[0x277D837D0]);
    v65 = v64;

    v66 = sub_241156B38(v63, v65, &v121);

    *(buf + 14) = v66;
    _os_log_impl(&dword_2410F8000, v46, v104, "Appending %ld additional components to conversation url: %s", buf, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v101);
    MEMORY[0x245CDC5E0](v101, -1, -1);
    MEMORY[0x245CDC5E0](buf, -1, -1);

    v24 = v119;
  }

  else
  {
  }

  v67 = v37[18];
  v68 = v37[11];
  v69 = v37[8];
  sub_24110B9E8(v38);
  sub_241164F18();
  sub_241164F38();
  if (v36(v68, 1, v69) == 1)
  {
    v70 = v37[18];
    v72 = v37[15];
    v71 = v37[16];
    v73 = v37[14];
    sub_2410FB29C(v37[11], &qword_27E530AB0, &qword_241168080);
    sub_2411090C4();
    swift_allocError();
    swift_willThrow();
    sub_2410FB29C(v73, &qword_27E530AB0, &qword_241168080);
    (*(v71 + 8))(v70, v72);
    (*(v98 + 8))(v24, v99);
    v75 = v37[24];
    v74 = v37[25];
    v76 = v37[21];
    v78 = v37[17];
    v77 = v37[18];
    v80 = v37[13];
    v79 = v37[14];
    v82 = v37[11];
    v81 = v37[12];
    v111 = v37[10];
    v115 = v37[7];
    v120 = v37[6];

    v83 = v37[1];
  }

  else
  {
    (*(v37[9] + 32))(v37[2], v37[11], v37[8]);
    v84 = sub_241165268();
    v85 = sub_241166068();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_2410F8000, v84, v85, "SPI Payload successful!", v86, 2u);
      MEMORY[0x245CDC5E0](v86, -1, -1);
    }

    v87 = v37[24];
    v88 = v37[25];
    v89 = v37[21];
    v91 = v37[17];
    v90 = v37[18];
    v93 = v37[15];
    v92 = v37[16];
    v94 = v37[14];
    v102 = v37[13];
    v105 = v37[12];
    bufb = v37[11];
    v112 = v37[10];
    v116 = v37[7];
    v118 = v37[6];

    sub_2410FB29C(v94, &qword_27E530AB0, &qword_241168080);
    (*(v92 + 8))(v90, v93);
    (*(v98 + 8))(v119, v99);

    v83 = v37[1];
  }

  return v83();
}

void sub_241107BB4()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    goto LABEL_76;
  }

  v1 = v0;
  v2 = [v0 aa_primaryAppleAccount];

  if (v2)
  {
    v3 = [v2 normalizedDSID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_241165DD8();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      v9 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v7 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v7) & 0xF;
      }

      else
      {
        v10 = v5 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v7 & 0x1000000000000000) != 0)
        {
          v37 = 0;
          sub_24113049C(v5, v7, 10);
          goto LABEL_66;
        }

        if ((v7 & 0x2000000000000000) != 0)
        {
          v36[0] = v5;
          v36[1] = v7 & 0xFFFFFFFFFFFFFFLL;
          if (v5 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v25 = 0;
                v26 = v36 + 1;
                while (1)
                {
                  v27 = *v26 - 48;
                  if (v27 > 9)
                  {
                    break;
                  }

                  v28 = 10 * v25;
                  if ((v25 * 10) >> 64 != (10 * v25) >> 63)
                  {
                    break;
                  }

                  v25 = v28 + v27;
                  if (__OFADD__(v28, v27))
                  {
                    break;
                  }

                  ++v26;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

              goto LABEL_64;
            }

            goto LABEL_75;
          }

          if (v5 != 45)
          {
            if (v8)
            {
              v32 = 0;
              v33 = v36;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  break;
                }

                v35 = 10 * v32;
                if ((v32 * 10) >> 64 != (10 * v32) >> 63)
                {
                  break;
                }

                v32 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  break;
                }

                ++v33;
                if (!--v8)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }

          if (v8)
          {
            if (--v8)
            {
              v17 = 0;
              v18 = v36 + 1;
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  break;
                }

                v20 = 10 * v17;
                if ((v17 * 10) >> 64 != (10 * v17) >> 63)
                {
                  break;
                }

                v17 = v20 - v19;
                if (__OFSUB__(v20, v19))
                {
                  break;
                }

                ++v18;
                if (!--v8)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_64;
          }
        }

        else
        {
          if ((v5 & 0x1000000000000000) != 0)
          {
            v11 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v11 = sub_2411662F8();
          }

          v12 = *v11;
          if (v12 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v21 = 0;
                if (v11)
                {
                  v22 = v11 + 1;
                  while (1)
                  {
                    v23 = *v22 - 48;
                    if (v23 > 9)
                    {
                      goto LABEL_64;
                    }

                    v24 = 10 * v21;
                    if ((v21 * 10) >> 64 != (10 * v21) >> 63)
                    {
                      goto LABEL_64;
                    }

                    v21 = v24 + v23;
                    if (__OFADD__(v24, v23))
                    {
                      goto LABEL_64;
                    }

                    ++v22;
                    if (!--v8)
                    {
                      goto LABEL_65;
                    }
                  }
                }

                goto LABEL_56;
              }

              goto LABEL_64;
            }

            goto LABEL_74;
          }

          if (v12 != 45)
          {
            if (v9)
            {
              v29 = 0;
              if (v11)
              {
                while (1)
                {
                  v30 = *v11 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_64;
                  }

                  v31 = 10 * v29;
                  if ((v29 * 10) >> 64 != (10 * v29) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v29 = v31 + v30;
                  if (__OFADD__(v31, v30))
                  {
                    goto LABEL_64;
                  }

                  ++v11;
                  if (!--v9)
                  {
                    goto LABEL_56;
                  }
                }
              }

              goto LABEL_56;
            }

LABEL_64:
            LOBYTE(v8) = 1;
            goto LABEL_65;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v13 = 0;
              if (v11)
              {
                v14 = v11 + 1;
                while (1)
                {
                  v15 = *v14 - 48;
                  if (v15 > 9)
                  {
                    goto LABEL_64;
                  }

                  v16 = 10 * v13;
                  if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                  {
                    goto LABEL_64;
                  }

                  v13 = v16 - v15;
                  if (__OFSUB__(v16, v15))
                  {
                    goto LABEL_64;
                  }

                  ++v14;
                  if (!--v8)
                  {
                    goto LABEL_65;
                  }
                }
              }

LABEL_56:
              LOBYTE(v8) = 0;
LABEL_65:
              v37 = v8;
LABEL_66:

              return;
            }

            goto LABEL_64;
          }

          __break(1u);
        }

        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_241107F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v86 = a2;
  v97 = a3;
  v96 = sub_241164F58();
  v90 = *(v96 - 8);
  v4 = *(v90 + 64);
  (MEMORY[0x28223BE20])();
  v82 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_241164ED8();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = *(v91 + 64);
  v8 = (MEMORY[0x28223BE20])();
  v94 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v89 = &v81 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v85 = &v81 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v84 = &v81 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v83 = &v81 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v81 - v18;
  v20 = sub_241165B28();
  v87 = *(v20 - 8);
  v88 = v20;
  v21 = *(v87 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v98 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v95 = &v81 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  v26 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25 - 8);
  v28 = &v81 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v81 - v31;
  v33 = sub_2411650D8();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v93 = &v81 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v37 = sub_241165288();
  __swift_project_value_buffer(v37, qword_27E533A20);
  v38 = sub_241165268();
  v39 = sub_241166068();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2410F8000, v38, v39, "Attempting to add icon image data to base URL", v40, 2u);
    MEMORY[0x245CDC5E0](v40, -1, -1);
  }

  sub_241109054(a1, v32);
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    sub_2410FB29C(v32, &qword_27E530AB0, &qword_241168080);
    v41 = sub_241165268();
    v42 = sub_241166068();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2410F8000, v41, v42, "Tried adding an icon to a URL, but the given URL was nil", v43, 2u);
      MEMORY[0x245CDC5E0](v43, -1, -1);
    }

    return (*(v34 + 56))(v97, 1, 1, v33);
  }

  else
  {
    v45 = *(v34 + 32);
    v81 = v33;
    v45(v93, v32, v33);
    sub_241164F28();
    v46 = *(type metadata accessor for MessagesBackwardCompatibilityURLProvider() + 20);
    sub_241165738();
    sub_241165B18();
    sub_241165748();
    v47 = *(v90 + 48);
    v48 = v47(v28, 1, v96);
    v49 = MEMORY[0x277D84F90];
    if (!v48)
    {
      v50 = sub_241164F08();
      if (v50)
      {
        v49 = v50;
      }
    }

    if ((sub_241165B18() & 1) != 0 || (sub_241108CD8(), !v51))
    {
      v57 = sub_241165268();
      v58 = sub_241166068();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_2410F8000, v57, v58, "Tried adding associatedContentIcon data to the URL, but the icon data was nil", v59, 2u);
        MEMORY[0x245CDC5E0](v59, -1, -1);
      }
    }

    else
    {
      sub_241164EA8();

      (*(v91 + 16))(v83, v19, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_241160894(0, v49[2] + 1, 1, v49);
      }

      v53 = v49[2];
      v52 = v49[3];
      if (v53 >= v52 >> 1)
      {
        v49 = sub_241160894(v52 > 1, v53 + 1, 1, v49);
      }

      v54 = v91;
      v55 = v19;
      v56 = v92;
      (*(v91 + 8))(v55, v92);
      v49[2] = v53 + 1;
      (*(v54 + 32))(v49 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53, v83, v56);
    }

    if ((sub_241165B18() & 1) != 0 || (sub_241108CD8(), !v60))
    {
      v66 = sub_241165268();
      v67 = sub_241166068();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_2410F8000, v66, v67, "Tried adding clientIcon data to the URL, but the icon data was nil", v68, 2u);
        MEMORY[0x245CDC5E0](v68, -1, -1);
      }

      v62 = v91;
      v63 = v92;
    }

    else
    {
      v61 = v84;
      sub_241164EA8();

      v62 = v91;
      v63 = v92;
      (*(v91 + 16))(v85, v61, v92);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_241160894(0, v49[2] + 1, 1, v49);
      }

      v65 = v49[2];
      v64 = v49[3];
      if (v65 >= v64 >> 1)
      {
        v49 = sub_241160894(v64 > 1, v65 + 1, 1, v49);
      }

      (*(v62 + 8))(v84, v63);
      v49[2] = v65 + 1;
      (*(v62 + 32))(v49 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v65, v85, v63);
    }

    v69 = v89;
    sub_241164EA8();

    (*(v62 + 16))(v94, v69, v63);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_241160894(0, v49[2] + 1, 1, v49);
    }

    v71 = v49[2];
    v70 = v49[3];
    if (v71 >= v70 >> 1)
    {
      v49 = sub_241160894(v70 > 1, v71 + 1, 1, v49);
    }

    v49[2] = v71 + 1;
    (*(v62 + 32))(v49 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v71, v94, v63);
    v72 = v96;
    if (v47(v28, 1, v96))
    {
    }

    else
    {
      sub_241164F18();
    }

    if (v47(v28, 1, v72))
    {
      (*(v62 + 8))(v69, v63);
      v73 = v88;
      v74 = *(v87 + 8);
      v74(v98, v88);
      v74(v95, v73);
      v75 = v81;
      (*(v34 + 8))(v93, v81);
      (*(v34 + 56))(v97, 1, 1, v75);
    }

    else
    {
      v76 = v62;
      v77 = v90;
      v78 = v82;
      (*(v90 + 16))(v82, v28, v72);
      sub_241164F38();
      (*(v77 + 8))(v78, v72);
      (*(v76 + 8))(v69, v63);
      v79 = v88;
      v80 = *(v87 + 8);
      v80(v98, v88);
      v80(v95, v79);
      (*(v34 + 8))(v93, v81);
    }

    return sub_2410FB29C(v28, &qword_27E530AA8, &qword_241167D20);
  }
}

uint64_t URL.getQueryParameters.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = sub_241164F58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_241164F28();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2410FB29C(v3, &qword_27E530AA8, &qword_241167D20);
    return MEMORY[0x277D84F90];
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = sub_241164F08();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      return v10;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }
}

uint64_t sub_241108CD8()
{
  v27[1] = *MEMORY[0x277D85DE8];
  v1 = v0 + *(type metadata accessor for MessagesBackwardCompatibilityURLProvider() + 20);
  v2 = sub_241165758();
  v4 = v3;
  v5 = 0;
  if (v3 >> 60 != 15)
  {
    v6 = sub_2411650F8();
    v27[0] = 0;
    v5 = [v6 compressedDataUsingAlgorithm:3 error:v27];

    v7 = v27[0];
    if (!v5)
    {
      v8 = v7;
      v9 = sub_241165058();

      swift_willThrow();
      v5 = 0;
    }
  }

  if (qword_27E530590 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533A20);
  v11 = v5;
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (!v5)
    {
      v21 = 0;
LABEL_17:
      *(v14 + 4) = v21;

      _os_log_impl(&dword_2410F8000, v12, v13, "Icon image data is %ld bytes", v14, 0xCu);
      MEMORY[0x245CDC5E0](v14, -1, -1);

      if (!v5)
      {
        goto LABEL_18;
      }

      goto LABEL_15;
    }

    v26 = v2;
    v15 = sub_241166108();
    v16 = sub_241166118();
    v17 = sub_241166108();
    v18 = sub_241166118();
    if (v15 < v17 || v18 < v15)
    {
      __break(1u);
    }

    else
    {
      v19 = sub_241166108();
      v20 = sub_241166118();
      if (v16 >= v19 && v20 >= v16)
      {
        v21 = v16 - v15;
        if (!__OFSUB__(v16, v15))
        {
          v2 = v26;
          goto LABEL_17;
        }

LABEL_22:
        __break(1u);
      }
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v5)
  {
LABEL_18:
    sub_241109164(v2, v4);
    v23 = 0;
    goto LABEL_19;
  }

LABEL_15:
  v22 = [v11 base64EncodedStringWithOptions_];
  v23 = sub_241165DD8();
  sub_241109164(v2, v4);

LABEL_19:
  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

unint64_t sub_241108F98()
{
  result = qword_27E530AC8;
  if (!qword_27E530AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E530AC8);
  }

  return result;
}

uint64_t sub_241108FE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_241109054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AB0, &qword_241168080);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2411090C4()
{
  result = qword_27E530AD0;
  if (!qword_27E530AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AD0);
  }

  return result;
}

uint64_t type metadata accessor for MessagesBackwardCompatibilityURLProvider()
{
  result = qword_27E530AD8;
  if (!qword_27E530AD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_241109164(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2410FB5B8(a1, a2);
  }

  return a1;
}

uint64_t sub_2411091A4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_241165788();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_241109264(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_241165788();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_241109308()
{
  result = sub_241165CE8();
  if (v1 <= 0x3F)
  {
    result = sub_241165788();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_241109394()
{
  result = qword_27E530AE8;
  if (!qword_27E530AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AE8);
  }

  return result;
}

unint64_t sub_2411093E8()
{
  result = qword_27E530AF0;
  if (!qword_27E530AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E530AF0);
  }

  return result;
}

unint64_t sub_24110943C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x800000024116A970;
  v2 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  sub_2410FB29C(v1, &unk_27E530E80, &qword_241168920);
  return v2;
}

void sub_241109594(void *a1)
{
  v3 = (*MEMORY[0x277D85000] & *v1);
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  __swift_project_value_buffer(v4, qword_27E533A08);
  v5 = v1;
  v6 = a1;
  v7 = sub_241165268();
  v8 = sub_241166068();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_241156B38(*(v5 + qword_27E530B00), *(v5 + qword_27E530B00 + 8), &aBlock);
    *(v9 + 12) = 1024;
    *(v9 + 14) = [v6 processIdentifier];

    _os_log_impl(&dword_2410F8000, v7, v8, "Configuring XPC connection for %s from PID %d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  else
  {
  }

  aBlock = v6;
  v11 = v3[11];
  v12 = v3[12];
  v13 = v3[10];
  swift_getAssociatedConformanceWitness();
  v14 = v6;
  v15 = sub_2411657D8();
  v41 = *(v5 + qword_27E530B10);
  v43 = (*(v12 + 32))();
  v16 = (*(v12 + 24))(v13, v12);
  v39 = objc_opt_self();
  v42 = [v39 interfaceWithProtocol_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_241167EC0;
  v18 = sub_24110A348();
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C08, &qword_241167F88);
  *(v17 + 32) = v18;
  v19 = sub_241165928();
  *(v17 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530C10, &qword_241167F90);
  *(v17 + 64) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v21 = sub_241165EE8();

  v22 = [v20 initWithArray_];

  aBlock = 0;
  sub_241165FC8();
  if (aBlock)
  {

    v23 = sub_241165FB8();
    [v42 setClasses:v23 forSelector:sel_knownHandlesFrom_reply_ argumentIndex:0 ofReply:0];

    v24 = sub_241165FB8();

    [v42 setClasses:v24 forSelector:sel_knownHandlesFrom_reply_ argumentIndex:0 ofReply:1];

    [v14 setExportedInterface_];
    [v14 setExportedObject_];
    v25 = sub_2411657E8();
    v26 = [v39 interfaceWithProtocol_];

    v40 = v26;
    [v14 setRemoteObjectInterface_];
    v27 = swift_allocObject();
    v27[2] = v14;
    v27[3] = v5;
    v27[4] = v15;
    v48 = sub_24110A398;
    v49 = v27;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2410FF7EC;
    v47 = &block_descriptor_3;
    v28 = _Block_copy(&aBlock);
    v29 = v5;
    v30 = v14;
    swift_unknownObjectRetain();

    [v30 setInterruptionHandler_];
    _Block_release(v28);
    v31 = swift_allocObject();
    v31[2] = v30;
    v31[3] = v29;
    v31[4] = v15;
    v48 = sub_24110A434;
    v49 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v45 = 1107296256;
    v46 = sub_2410FF7EC;
    v47 = &block_descriptor_7;
    v32 = _Block_copy(&aBlock);
    v33 = v29;
    v34 = v30;
    swift_unknownObjectRetain();

    [v34 setInvalidationHandler_];
    _Block_release(v32);
    sub_2411657F8();
    sub_24114C170();
    v35 = v34;
    v36 = sub_241165268();
    v37 = sub_241166068();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 67109120;
      *(v38 + 4) = [v35 processIdentifier];

      _os_log_impl(&dword_2410F8000, v36, v37, "Activated connection for PID %d", v38, 8u);
      MEMORY[0x245CDC5E0](v38, -1, -1);
      swift_unknownObjectRelease();
      v35 = v42;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_241109CA0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t (*a5)(uint64_t))
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v10 = sub_241165288();
  __swift_project_value_buffer(v10, qword_27E533A08);
  v11 = a1;
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = [v11 processIdentifier];

    _os_log_impl(&dword_2410F8000, v12, v13, a4, v14, 8u);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  v15 = *(a2 + qword_27E530B10);
  return a5(a3);
}

id sub_241109DE8(const char *a1, const char **a2)
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533A08);
  v6 = v2;
  v7 = sub_241165268();
  v8 = sub_241166068();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_241156B38(*&v6[qword_27E530B00], *&v6[qword_27E530B00 + 8], &v14);
    _os_log_impl(&dword_2410F8000, v7, v8, a1, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x245CDC5E0](v10, -1, -1);
    MEMORY[0x245CDC5E0](v9, -1, -1);
  }

  v11 = *&v6[qword_27E530B08];
  v12 = *a2;

  return [v11 v12];
}

uint64_t sub_241109F5C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_24110A1BC(v7);

  return v9 & 1;
}

void sub_241109FBC(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  sub_24110A318();
}

id sub_24110A010()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24110A048(uint64_t a1)
{
  v2 = *(a1 + qword_27E530B00 + 8);

  v3 = *(a1 + qword_27E530B10);
}

uint64_t sub_24110A0C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 96);
  v3 = *(a2 + 80);
  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_24110A0E0()
{
  v1 = *v0;
  v2 = sub_24110A1A8();

  return v2;
}

uint64_t sub_24110A1A8()
{
  result = *(v0 + qword_27E530B00);
  v2 = *(v0 + qword_27E530B00 + 8);
  return result;
}

uint64_t sub_24110A1BC(void *a1)
{
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533A08);
  v4 = v1;
  v5 = sub_241165268();
  v6 = sub_241166068();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(*&v4[qword_27E530B00], *&v4[qword_27E530B00 + 8], &v10);
    _os_log_impl(&dword_2410F8000, v5, v6, "Incoming XPC connection for %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  sub_241109594(a1);
  return 1;
}

unint64_t sub_24110A348()
{
  result = qword_27E530C00;
  if (!qword_27E530C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E530C00);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24110A4BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = sub_241165DA8();
  (*(v10 + 16))(v13, a1, v9);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  (*(v10 + 32))(v16 + v15, v13, v9);
  aBlock[4] = sub_24110B940;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24110AB10;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  [a2 openApplication:v14 withOptions:v19 completion:v17];
  _Block_release(v17);
}

uint64_t sub_24110A6AC(void *a1, id a2, uint64_t a3, unint64_t a4)
{
  if (a1)
  {
    v6 = qword_27E5305E0;
    v7 = a1;
    if (v6 != -1)
    {
      swift_once();
    }

    v8 = sub_241165288();
    __swift_project_value_buffer(v8, qword_27E533B10);
    v9 = v7;

    v10 = sub_241165268();
    v11 = sub_241166068();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_241156B38(a3, a4, &v30);
      *(v12 + 12) = 1024;
      *(v12 + 14) = [v9 pid];

      _os_log_impl(&dword_2410F8000, v10, v11, "Successfully background launched app with bundle identifier %s. Client PID: %d", v12, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x245CDC5E0](v13, -1, -1);
      MEMORY[0x245CDC5E0](v12, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v15 = a2;
      if (qword_27E5305E0 != -1)
      {
        swift_once();
      }

      v16 = sub_241165288();
      __swift_project_value_buffer(v16, qword_27E533B10);

      v17 = a2;
      v18 = sub_241165268();
      v19 = sub_241166048();

      if (!os_log_type_enabled(v18, v19))
      {

        goto LABEL_18;
      }

      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v20 = 136315394;
      *(v20 + 4) = sub_241156B38(a3, a4, &v30);
      *(v20 + 12) = 2112;
      v23 = a2;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v24;
      *v21 = v24;
      _os_log_impl(&dword_2410F8000, v18, v19, "Failed to background launch app with bundle identifier %s. error: %@", v20, 0x16u);
      sub_2410FDEB8(v21);
      MEMORY[0x245CDC5E0](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v20, -1, -1);
    }

    else
    {
      if (qword_27E5305E0 != -1)
      {
        swift_once();
      }

      v25 = sub_241165288();
      __swift_project_value_buffer(v25, qword_27E533B10);

      v18 = sub_241165268();
      v26 = sub_241166048();

      if (os_log_type_enabled(v18, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v30 = v28;
        *v27 = 136315138;
        *(v27 + 4) = sub_241156B38(a3, a4, &v30);
        _os_log_impl(&dword_2410F8000, v18, v26, "Failed to background launch app with bundle identifier %s due to an unknown error.", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x245CDC5E0](v28, -1, -1);
        MEMORY[0x245CDC5E0](v27, -1, -1);
      }
    }
  }

LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  return sub_241165F78();
}

void sub_24110AB10(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_24110AB9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_241106740;

  return sub_24110AC5C(a1, a2, a3);
}

uint64_t sub_24110AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v3[22] = swift_getObjectType();
  v4 = sub_241165AC8();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = sub_2411651A8();
  v3[26] = v7;
  v8 = *(v7 - 8);
  v3[27] = v8;
  v9 = *(v8 + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24110AD88, 0, 0);
}

uint64_t sub_24110AD88()
{
  v69 = v0;
  if (qword_27E5305E0 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533B10);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166068();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[27];
    v7 = v0[28];
    v8 = v0[26];
    v9 = v0[21];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v68[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_241156B38(0xD00000000000002BLL, 0x800000024116AA10, v68);
    *(v10 + 12) = 2080;
    v12 = sub_2411656C8();
    sub_2411653D8();

    sub_24110B828(&qword_27E530C38, MEMORY[0x277CC95F0]);
    v13 = sub_2411663B8();
    v15 = v14;
    (*(v6 + 8))(v7, v8);
    v16 = sub_241156B38(v13, v15, v68);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_2410F8000, v4, v5, "%s called with response for original question ID %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  v17 = v0[20];

  v18 = sub_241165268();
  v19 = sub_241166068();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[19];
    v20 = v0[20];
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v68[0] = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_241156B38(v21, v20, v68);
    _os_log_impl(&dword_2410F8000, v18, v19, "Launching client with bundle identifier %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CDC5E0](v23, -1, -1);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

  v24 = v0[21];
  v25 = v0[22];
  v26 = sub_241164E68();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  sub_241164E58();
  v0[18] = v24;
  sub_24110B828(&qword_27E530C20, MEMORY[0x277CEEB10]);
  v29 = sub_241164E48();
  v0[29] = v29;
  v0[30] = v30;
  v31 = v29;
  v32 = v30;
  v33 = v0[24];
  v34 = v0[25];
  v35 = v0[23];

  v36 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  v0[31] = v36;
  v37 = sub_2411650F8();
  (*(v33 + 104))(v34, *MEMORY[0x277CEED30], v35);
  v38 = sub_241165AB8();
  (*(v33 + 8))(v34, v35);
  [v36 setObject:v37 forSetting:v38];

  v39 = [objc_allocWithZone(MEMORY[0x277CF0B58]) initWithInfo:v36 responder:0];
  v0[32] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_241167EC0;
  v41 = *MEMORY[0x277D0ABF0];
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v42;
  v43 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 72) = sub_2410FCF28(0, &qword_27E530C28, 0x277CCABB0);
  *(inited + 48) = v43;
  v44 = *MEMORY[0x277D0ABD0];
  *(inited + 80) = sub_241165DD8();
  *(inited + 88) = v45;
  v46 = sub_2410FCF28(0, &qword_27E530C30, 0x277CBEA60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5309E0, &qword_241167F80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_2411673F0;
  *(v47 + 56) = sub_2410FCF28(0, &qword_27E5307E0, 0x277CF0B58);
  *(v47 + 32) = v39;
  v48 = v39;
  v49 = MEMORY[0x245CDBA70](v47);
  *(inited + 120) = v46;
  *(inited + 96) = v49;
  v50 = sub_2410FB9E0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530E80, &qword_241168920);
  swift_arrayDestroy();
  v51 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  v0[33] = v51;
  if (v51)
  {
    v52 = v51;
    v54 = v0[19];
    v53 = v0[20];
    sub_241142774(v50);

    v55 = sub_241165D08();

    v56 = [objc_opt_self() optionsWithDictionary_];
    v0[34] = v56;

    v57 = swift_task_alloc();
    v0[35] = v57;
    v57[2] = v52;
    v57[3] = v54;
    v57[4] = v53;
    v57[5] = v56;
    v58 = *(MEMORY[0x277D859E0] + 4);
    v59 = swift_task_alloc();
    v0[36] = v59;
    *v59 = v0;
    v59[1] = sub_24110B660;
    v60 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v59, 0, 0, 0xD00000000000002BLL, 0x800000024116AA10, sub_24110B81C, v57, v60);
  }

  else
  {

    v61 = sub_241165268();
    v62 = sub_241166048();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_2410F8000, v61, v62, "FBSOpenApplicationService was nil", v63, 2u);
      MEMORY[0x245CDC5E0](v63, -1, -1);
    }

    sub_2410FB5B8(v31, v32);

    v64 = v0[28];
    v65 = v0[25];

    v66 = v0[1];

    return v66();
  }
}

uint64_t sub_24110B660()
{
  v1 = *(*v0 + 288);
  v2 = *(*v0 + 280);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24110B778, 0, 0);
}

uint64_t sub_24110B778()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);

  sub_2410FB5B8(v4, v5);
  v6 = *(v0 + 224);
  v7 = *(v0 + 200);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24110B828(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24110B870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_24110B940(void *a1, void *a2)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C40, &qword_241167FC8) - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_24110A6AC(a1, a2, v6, v7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24110B9E8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_241160894(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = sub_241164ED8();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24110BB14(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  v8 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v10 = *(v4 + 3) >> 1, v10 < v6))
  {
    if (v5 <= v6)
    {
      v11 = v5 + v3;
    }

    else
    {
      v11 = v5;
    }

    v4 = sub_2411608BC(isUniquelyReferenced_nonNull_native, v11, 1, v4);
    v10 = *(v4 + 3) >> 1;
  }

  v12 = *(v4 + 2);
  v13 = v10 - v12;
  result = sub_241130E9C(&v43, &v4[16 * v12 + 32], v10 - v12, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_48:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v46 = v24;
          v47 = 0;
          goto LABEL_13;
        }

        v26 = *(v14 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v40 = v15;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v43;
  if (v16 != v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v13 = *(v4 + 2);
  v14 = v44;
  v15 = v45;
  v2 = v46;
  v42 = v44;
  if (!v47)
  {
    goto LABEL_19;
  }

  v20 = (v47 - 1) & v47;
  v21 = __clz(__rbit64(v47)) | (v46 << 6);
  v40 = v45;
  v22 = (v45 + 64) >> 6;
LABEL_27:
  v41 = result;
  v27 = (*(result + 48) + 16 * v21);
  v29 = *v27;
  v28 = v27[1];

  v30 = v42;
LABEL_29:
  while (1)
  {
    v31 = *(v4 + 3);
    v32 = v31 >> 1;
    if ((v31 >> 1) < v13 + 1)
    {
      break;
    }

    if (v13 < v32)
    {
      goto LABEL_31;
    }

LABEL_28:
    *(v4 + 2) = v13;
  }

  v38 = sub_2411608BC((v31 > 1), v13 + 1, 1, v4);
  v30 = v42;
  v4 = v38;
  v32 = *(v38 + 3) >> 1;
  if (v13 >= v32)
  {
    goto LABEL_28;
  }

LABEL_31:
  while (1)
  {
    v33 = &v4[16 * v13 + 32];
    *v33 = v29;
    *(v33 + 1) = v28;
    ++v13;
    if (!v20)
    {
      break;
    }

    result = v41;
LABEL_38:
    v36 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v37 = (*(result + 48) + ((v2 << 10) | (16 * v36)));
    v29 = *v37;
    v28 = v37[1];

    v30 = v42;
    if (v13 == v32)
    {
      v13 = v32;
      *(v4 + 2) = v32;
      goto LABEL_29;
    }
  }

  v34 = v2;
  result = v41;
  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v35 >= v22)
    {
      break;
    }

    v20 = *(v30 + 8 * v35);
    ++v34;
    if (v20)
    {
      v2 = v35;
      goto LABEL_38;
    }
  }

  if (v22 <= v2 + 1)
  {
    v39 = v2 + 1;
  }

  else
  {
    v39 = v22;
  }

  v45 = v40;
  v46 = v39 - 1;
  v47 = 0;
  *(v4 + 2) = v13;
LABEL_13:
  result = sub_24111606C();
  *v1 = v4;
  return result;
}

uint64_t sub_24110BDD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_2411661F8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_2411661F8();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_241112744(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_2411127E4(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24110BEC0()
{
  v1[24] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530AA8, &qword_241167D20) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v3 = sub_241164F58();
  v1[26] = v3;
  v4 = *(v3 - 8);
  v1[27] = v4;
  v5 = *(v4 + 64) + 15;
  v1[28] = swift_task_alloc();
  v6 = sub_241165BD8();
  v1[29] = v6;
  v7 = *(v6 - 8);
  v1[30] = v7;
  v8 = *(v7 + 64) + 15;
  v1[31] = swift_task_alloc();
  v9 = sub_241165B58();
  v1[32] = v9;
  v10 = *(v9 - 8);
  v1[33] = v10;
  v11 = *(v10 + 64) + 15;
  v1[34] = swift_task_alloc();
  v12 = sub_2411650D8();
  v1[35] = v12;
  v13 = *(v12 - 8);
  v1[36] = v13;
  v14 = *(v13 + 64) + 15;
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530C48, &qword_241168010);
  v1[39] = v15;
  v16 = *(v15 - 8);
  v1[40] = v16;
  v17 = *(v16 + 64) + 15;
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24110C164, 0, 0);
}

uint64_t sub_24110C164()
{
  v19 = v0;
  v0[22] = *(v0[24] + 32);
  v1 = sub_2411663B8();
  v3 = v2;
  v0[45] = v1;
  v0[46] = v2;
  if (qword_27E5305B8 != -1)
  {
    swift_once();
  }

  v4 = sub_241165288();
  v0[47] = v4;
  v0[48] = __swift_project_value_buffer(v4, qword_27E533A98);

  v5 = sub_241165268();
  v6 = sub_241166068();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_241156B38(v1, v3, &v18);
    _os_log_impl(&dword_2410F8000, v5, v6, "ScreenTime answer ID was %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v9 = v0[24];
  v10 = *v9;
  v0[49] = *v9;
  v11 = v9[1];
  v0[50] = v11;
  v0[51] = v9[2];
  v0[52] = v9[3];

  v12 = sub_241165268();
  v13 = sub_241166068();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_241156B38(v10, v11, &v18);
    _os_log_impl(&dword_2410F8000, v12, v13, "Looking for Messages messages with request ID %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x245CDC5E0](v15, -1, -1);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  v16 = swift_task_alloc();
  v0[53] = v16;
  *v16 = v0;
  v16[1] = sub_24110C450;

  return sub_2411129EC(v10, v11);
}

uint64_t sub_24110C450(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 424);
  v7 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v5 = sub_24110D7B0;
  }

  else
  {
    v5 = sub_24110C564;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24110C564()
{
  v181 = v0;
  v2 = *(v0 + 432);
  v3 = *(v0 + 416);
  v4 = *(v0 + 400);
  v5 = *(v0 + 384);

  v6 = sub_241165268();
  v7 = sub_241166068();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 432);
  if (v8)
  {
    v11 = *(v0 + 392);
    v10 = *(v0 + 400);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v180[0] = v13;
    *v12 = 134218242;
    *(v12 + 4) = *(v9 + 16);

    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_241156B38(v11, v10, v180);
    _os_log_impl(&dword_2410F8000, v6, v7, "Found %ld Messages messages matching request ID %s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  else
  {
    v14 = *(v0 + 432);
  }

  v15 = *(v0 + 432);
  v16 = *(v15 + 16);
  *(v0 + 448) = v16;
  if (!v16)
  {
    v50 = *(v0 + 368);

    v52 = *(v0 + 344);
    v51 = *(v0 + 352);
    v54 = *(v0 + 328);
    v53 = *(v0 + 336);
    v56 = *(v0 + 296);
    v55 = *(v0 + 304);
    v57 = *(v0 + 272);
    v58 = *(v0 + 248);
    v59 = *(v0 + 224);
    v60 = *(v0 + 200);

    v61 = *(v0 + 8);
LABEL_66:

    return v61();
  }

  v17 = *(v0 + 344);
  v18 = *(v0 + 352);
  v19 = *(v0 + 336);
  v20 = *(v0 + 312);
  v21 = *(v0 + 320);
  v22 = *(v0 + 288);
  v23 = *(v20 + 48);
  *(v0 + 592) = v23;
  *(v0 + 456) = sub_241165CE8();
  v24 = *(v21 + 80);
  *(v0 + 596) = v24;
  v25 = MEMORY[0x277D188E0];
  *(v0 + 600) = *MEMORY[0x277CEED80];
  v26 = *v25;
  v27 = *(v0 + 440);
  *(v0 + 464) = v26;
  *(v0 + 472) = 0;
  if (*(v15 + 16))
  {
    v1 = *(v0 + 280);
    v170 = *(v0 + 304);
    v172 = *(v0 + 272);
    v177 = v27;
    sub_2410FC88C(v15 + ((v24 + 32) & ~v24), v18, &qword_27E530C48, &qword_241168010);
    v28 = *(v18 + 8);
    v29 = *(v20 + 48);
    *v17 = *v18;
    *(v17 + 1) = v28;
    v30 = *(v22 + 32);
    v22 += 32;
    v30(&v17[v29], v18 + v23, v1);
    sub_2410FC88C(v17, v19, &qword_27E530C48, &qword_241168010);
    v31 = *(v19 + 8);

    v30(v170, v19 + *(v20 + 48), v1);
    sub_241165B48();
    v32 = MEMORY[0x277CEEE38];
    sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38]);
    sub_241115914(&qword_27E530C58, v32);
    sub_241165B38();
    if (v177)
    {
      v1 = v177;
      v33 = *(v0 + 384);
      (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
      v34 = v177;
      v35 = sub_241165268();
      v36 = sub_241166048();

      v37 = os_log_type_enabled(v35, v36);
      v39 = *(v0 + 288);
      v38 = *(v0 + 296);
      v40 = *(v0 + 280);
      if (v37)
      {
        v41 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        v180[0] = v178;
        *v41 = 136315394;
        sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260]);
        v42 = v1;
        v43 = sub_2411663B8();
        v45 = v44;
        v176 = *(v39 + 8);
        v176(v38, v40);
        v46 = v43;
        v1 = v42;
        v47 = sub_241156B38(v46, v45, v180);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2112;
        v48 = v42;
        v49 = _swift_stdlib_bridgeErrorToNSError();
        *(v41 + 14) = v49;
        *v173 = v49;
        _os_log_impl(&dword_2410F8000, v35, v36, "Could not parse ATPayload from messagesPayloadURL %s. error: %@", v41, 0x16u);
        sub_2410FB29C(v173, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v173, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x245CDC5E0](v178, -1, -1);
        MEMORY[0x245CDC5E0](v41, -1, -1);
      }

      else
      {

        v176 = *(v39 + 8);
        v176(v38, v40);
      }

      v74 = *(v0 + 304);
      v75 = *(v0 + 208);
      v76 = *(v0 + 216);
      v77 = *(v0 + 200);
      sub_241164F28();
      if ((*(v76 + 48))(v77, 1, v75) == 1)
      {
        v78 = *(v0 + 432);
        v79 = *(v0 + 368);
        v80 = *(v0 + 200);

        sub_2410FB29C(v80, &qword_27E530AA8, &qword_241167D20);
        if (qword_27E5305B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
        v81 = sub_241165268();
        v82 = sub_241166048();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v180[0] = v84;
          *v83 = 136315138;
          *(v83 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v180);
          _os_log_impl(&dword_2410F8000, v81, v82, "%s URL components was nil", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v84);
          MEMORY[0x245CDC5E0](v84, -1, -1);
          MEMORY[0x245CDC5E0](v83, -1, -1);
        }

        v85 = *(v0 + 344);
        v86 = *(v0 + 304);
        v87 = *(v0 + 280);
        v88 = *(v0 + 264);
        v89 = *(v0 + 272);
        v90 = *(v0 + 256);
        v91 = *(v0 + 288) + 8;
        sub_2411133A8();
        swift_allocError();
        *v92 = v1;
        *(v92 + 8) = 0;
        *(v92 + 16) = 3;
        swift_willThrow();
        (*(v88 + 8))(v89, v90);
        v176(v86, v87);
        v93 = v85;
        goto LABEL_64;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      v22 = sub_2411655E8();
      v94 = *(v22 - 8);
      v95 = *(v94 + 64) + 15;
      v18 = swift_task_alloc();
      v96 = swift_task_alloc();
      sub_2411654E8();
      (*(v94 + 32))(v18, v96, v22);

      v97 = sub_241114874(v18);
      if (!v97)
      {
        v105 = *(v0 + 432);
        v106 = *(v0 + 368);

        if (qword_27E5305B0 == -1)
        {
LABEL_40:
          __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
          v107 = sub_241165268();
          v108 = sub_241166048();
          v171 = v1;
          v174 = v18;
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v180[0] = v110;
            *v109 = 136315138;
            *(v109 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v180);
            _os_log_impl(&dword_2410F8000, v107, v108, "%s derivedPayload was nil", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v110);
            MEMORY[0x245CDC5E0](v110, -1, -1);
            MEMORY[0x245CDC5E0](v109, -1, -1);
          }

          v168 = *(v0 + 304);
          v169 = *(v0 + 344);
          v111 = *(v0 + 264);
          v112 = *(v0 + 272);
          v113 = *(v0 + 256);
          v115 = *(v0 + 216);
          v114 = *(v0 + 224);
          v116 = *(v0 + 208);
          v166 = *(v0 + 288) + 8;
          v167 = *(v0 + 280);
          sub_2411133A8();
          swift_allocError();
          *v117 = v171;
          *(v117 + 8) = 0;
          *(v117 + 16) = 3;
          swift_willThrow();
          (*(v94 + 8))(v174, v22);
          (*(v115 + 8))(v114, v116);
          (*(v111 + 8))(v112, v113);
          v176(v168, v167);
          sub_2410FB29C(v169, &qword_27E530C48, &qword_241168010);

          goto LABEL_65;
        }

LABEL_70:
        swift_once();
        goto LABEL_40;
      }

      v62 = v97;
      v99 = *(v0 + 216);
      v98 = *(v0 + 224);
      v100 = *(v0 + 208);

      (*(v94 + 8))(v18, v22);
      (*(v99 + 8))(v98, v100);
    }

    else
    {
      v62 = *(v0 + 184);
    }

    v63 = v62;
    *(v0 + 480) = v63;
    v64 = sub_241165CC8();
    v176 = v63;

    v23 = sub_2411652F8();
    if (!(v23 >> 62))
    {
      v65 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v65)
      {
        goto LABEL_13;
      }

LABEL_47:
      v118 = *(v0 + 432);

      v119 = sub_241165CC8();
      v120 = sub_2411652F8();

      if (v120 >> 62)
      {
        v94 = sub_2411661F8();
        if (v94)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v94 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v94)
        {
LABEL_49:
          v179 = v0;
          v180[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v94 & ~(v94 >> 63), 0);
          if ((v94 & 0x8000000000000000) == 0)
          {
            v121 = 0;
            v122 = v180[0];
            v123 = v120;
            v124 = v120 & 0xC000000000000001;
            v125 = v120;
            v126 = v94;
            do
            {
              if (v124)
              {
                v127 = MEMORY[0x245CDBC20](v121, v123);
              }

              else
              {
                v127 = *(v123 + 8 * v121 + 32);
              }

              v128 = v127;
              v129 = sub_241165418();
              v131 = v130;

              v180[0] = v122;
              v133 = *(v122 + 16);
              v132 = *(v122 + 24);
              if (v133 >= v132 >> 1)
              {
                sub_241100458((v132 > 1), v133 + 1, 1);
                v122 = v180[0];
              }

              ++v121;
              *(v122 + 16) = v133 + 1;
              v134 = v122 + 16 * v133;
              *(v134 + 32) = v129;
              *(v134 + 40) = v131;
              v123 = v125;
            }

            while (v126 != v121);

            v0 = v179;
            goto LABEL_60;
          }

          __break(1u);
          goto LABEL_70;
        }
      }

      v122 = MEMORY[0x277D84F90];
LABEL_60:
      v135 = *(v0 + 384);
      v136 = *(v0 + 368);

      v137 = sub_241165268();
      v138 = sub_241166048();

      if (os_log_type_enabled(v137, v138))
      {
        v140 = *(v0 + 360);
        v139 = *(v0 + 368);
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v180[0] = v142;
        *v141 = 136315394;
        *(v141 + 4) = sub_241156B38(v140, v139, v180);
        *(v141 + 12) = 2080;
        v143 = MEMORY[0x245CDB850](v122, MEMORY[0x277D837D0]);
        v145 = v144;

        v146 = sub_241156B38(v143, v145, v180);

        *(v141 + 14) = v146;
        _os_log_impl(&dword_2410F8000, v137, v138, "No answer choice in the original question had id %s. originalAnswerIds: %s", v141, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v142, -1, -1);
        MEMORY[0x245CDC5E0](v141, -1, -1);
      }

      else
      {
      }

      v147 = *(v0 + 360);
      v148 = *(v0 + 368);
      v175 = *(v0 + 344);
      v149 = *(v0 + 304);
      v150 = *(v0 + 280);
      v151 = *(v0 + 288);
      v152 = *(v0 + 264);
      v153 = *(v0 + 272);
      v154 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v155 = v147;
      *(v155 + 8) = v148;
      *(v155 + 16) = 1;
      swift_willThrow();

      (*(v152 + 8))(v153, v154);
      (*(v151 + 8))(v149, v150);
      v93 = v175;
LABEL_64:
      sub_2410FB29C(v93, &qword_27E530C48, &qword_241168010);
LABEL_65:
      v157 = *(v0 + 344);
      v156 = *(v0 + 352);
      v159 = *(v0 + 328);
      v158 = *(v0 + 336);
      v161 = *(v0 + 296);
      v160 = *(v0 + 304);
      v162 = *(v0 + 272);
      v163 = *(v0 + 248);
      v164 = *(v0 + 224);
      v165 = *(v0 + 200);

      v61 = *(v0 + 8);
      goto LABEL_66;
    }
  }

  else
  {
LABEL_45:
    __break(1u);
  }

  v65 = sub_2411661F8();
  if (!v65)
  {
    goto LABEL_47;
  }

LABEL_13:
  v22 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v66 = MEMORY[0x245CDBC20](v22, v23);
    }

    else
    {
      if (v22 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v66 = *(v23 + 8 * v22 + 32);
    }

    v67 = v66;
    *(v0 + 488) = v66;
    v1 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v69 = *(v0 + 360);
    v68 = *(v0 + 368);
    if (sub_241165418() == v69 && v70 == v68)
    {
      break;
    }

    v72 = *(v0 + 360);
    v73 = *(v0 + 368);
    v18 = sub_2411663E8();

    if (v18)
    {
      goto LABEL_36;
    }

    ++v22;
    if (v1 == v65)
    {
      goto LABEL_47;
    }
  }

LABEL_36:

  v101 = swift_task_alloc();
  *(v0 + 496) = v101;
  *v101 = v0;
  v101[1] = sub_24110D8A4;
  v103 = *(v0 + 408);
  v102 = *(v0 + 416);

  return sub_2411133FC(v103, v102);
}

uint64_t sub_24110D7B0()
{
  v1 = v0[46];

  v14 = v0[55];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[41];
  v4 = v0[42];
  v7 = v0[37];
  v6 = v0[38];
  v8 = v0[34];
  v9 = v0[31];
  v10 = v0[28];
  v11 = v0[25];

  v12 = v0[1];

  return v12();
}

uint64_t sub_24110D8A4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 496);
  v10 = *v3;
  v4[63] = a1;
  v4[64] = a2;
  v4[65] = v2;

  if (v2)
  {
    v6 = v4[54];
    v7 = v4[46];

    v8 = sub_24110DDA0;
  }

  else
  {
    v8 = sub_24110D9D0;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_24110D9D0()
{
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 488);
  v21 = *(v0 + 600);
  v4 = *(v0 + 456);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v22 = *(v0 + 464);
  v20 = *(v0 + 232);
  v7 = *(v0 + 480);
  sub_241165CC8();
  v8 = objc_allocWithZone(sub_2411656E8());

  v9 = v3;
  v10 = sub_2411656D8();
  *(v0 + 528) = v10;
  v11 = v10;
  v12 = sub_241165C68();
  *(v0 + 536) = v12;
  (*(v6 + 104))(v5, v21, v20);
  v13 = objc_allocWithZone(sub_241165378());
  v14 = sub_241165358();
  *(v0 + 544) = sub_241154E14(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v16;
  v17 = sub_2410FB2FC(inited);
  *(v0 + 552) = v17;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v18 = swift_task_alloc();
  *(v0 + 560) = v18;
  *v18 = v0;
  v18[1] = sub_24110DBDC;

  return sub_241150BD0(v0 + 16, v12, v17);
}

uint64_t sub_24110DBDC()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  v2[71] = v0;

  v5 = v2[69];
  if (v0)
  {
    v6 = v2[64];
    v7 = v2[54];
    v8 = v2[46];

    return MEMORY[0x2822009F8](sub_241110C44, 0, 0);
  }

  else
  {

    v9 = swift_task_alloc();
    v2[72] = v9;
    *v9 = v4;
    v9[1] = sub_24110DEF4;
    v10 = v2[64];
    v11 = v2[60];
    v12 = v2[63];

    return sub_241113DE8(v12, v10, v11);
  }
}

uint64_t sub_24110DDA0()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  v4 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 264);
  v6 = *(v0 + 272);
  v8 = *(v0 + 256);

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v3, v4);
  sub_2410FB29C(v2, &qword_27E530C48, &qword_241168010);
  v21 = *(v0 + 520);
  v10 = *(v0 + 344);
  v9 = *(v0 + 352);
  v12 = *(v0 + 328);
  v11 = *(v0 + 336);
  v14 = *(v0 + 296);
  v13 = *(v0 + 304);
  v15 = *(v0 + 272);
  v16 = *(v0 + 248);
  v17 = *(v0 + 224);
  v18 = *(v0 + 200);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_24110DEF4()
{
  v2 = *v1;
  v3 = *(*v1 + 576);
  v4 = *v1;
  *(*v1 + 584) = v0;

  v5 = *(v2 + 512);

  if (v0)
  {
    v6 = sub_24110F5C0;
  }

  else
  {
    v6 = sub_24110E028;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24110E028()
{
  v225 = v0;
  v221 = *(v0 + 584);
  *(v0 + 144) = *(v0 + 16);
  if (*(v0 + 152) >> 60 == 15)
  {
    v1 = *(v0 + 432);
    v2 = *(v0 + 384);
    v3 = *(v0 + 368);

    v4 = sub_241165268();
    v5 = sub_241166048();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2410F8000, v4, v5, "The data for the messages paylaod obtained from the People extension was nil.", v6, 2u);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v10 = *(v0 + 488);
    v212 = *(v0 + 304);
    v218 = *(v0 + 344);
    v11 = *(v0 + 288);
    v203 = *(v0 + 480);
    v207 = *(v0 + 280);
    v12 = *(v0 + 264);
    v199 = *(v0 + 272);
    v13 = *(v0 + 256);

    sub_2411133A8();
    swift_allocError();
    *v14 = xmmword_241167FD0;
    *(v14 + 16) = 7;
    swift_willThrow();

    sub_241102CC0(v0 + 16);
    (*(v12 + 8))(v199, v13);
    (*(v11 + 8))(v212, v207);
    v15 = v218;
    goto LABEL_5;
  }

  v213 = *(v0 + 144);
  v219 = *(v0 + 152);
  v27 = *(v0 + 528);
  v28 = *(v0 + 384);
  sub_2410FC88C(*(v0 + 344), *(v0 + 328), &qword_27E530C48, &qword_241168010);
  v29 = v27;
  sub_2410FC88C(v0 + 144, v0 + 160, &qword_27E530C68, &unk_241168040);
  v30 = sub_241165268();
  v31 = sub_241166068();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 528);
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 288);
    v200 = *(v0 + 312);
    v204 = *(v0 + 280);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v224[0] = v208;
    *v36 = 136315394;
    sub_2411158A4(v34, v33);
    v38 = *v33;
    v39 = v33[1];
    (*(v35 + 8))(v33 + *(v200 + 48), v204);
    v40 = sub_241156B38(v38, v39, v224);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v32;
    *v37 = v32;
    v41 = v32;
    _os_log_impl(&dword_2410F8000, v30, v31, "Updating message with GUID %s in Messages with response: %@", v36, 0x16u);
    sub_2410FB29C(v37, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v37, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v208);
    MEMORY[0x245CDC5E0](v208, -1, -1);
    MEMORY[0x245CDC5E0](v36, -1, -1);
  }

  else
  {
    v42 = *(v0 + 328);

    sub_2410FB29C(v42, &qword_27E530C48, &qword_241168010);
  }

  v43 = *(v0 + 544);
  v191 = *(v0 + 536);
  v195 = *(v0 + 488);
  v197 = *(v0 + 480);
  v45 = *(v0 + 336);
  v44 = *(v0 + 344);
  v46 = *(v0 + 312);
  v201 = *(v0 + 304);
  v47 = *(v0 + 280);
  v48 = *(v0 + 288);
  v49 = *(v0 + 264);
  v193 = *(v0 + 528);
  v194 = *(v0 + 272);
  v205 = *(v0 + 472) + 1;
  v209 = *(v0 + 448);
  v192 = *(v0 + 256);
  sub_2410FC88C(v44, v45, &qword_27E530C48, &qword_241168010);
  v50 = *v45;
  v51 = *(v45 + 8);
  v52 = *(v46 + 48);
  v53 = sub_241165DA8();

  v55 = *(v48 + 8);
  v54 = (v48 + 8);
  v55(v45 + v52, v47);
  v56 = sub_2411650F8();
  IMSPIUpdatePluginMessageWithGUID();
  sub_2410FB29C(v0 + 144, &qword_27E530C68, &unk_241168040);

  sub_241102CC0(v0 + 16);

  (*(v49 + 8))(v194, v192);
  v55(v201, v47);
  sub_2410FB29C(v44, &qword_27E530C48, &qword_241168010);
  if (v205 == v209)
  {
    v57 = *(v0 + 432);
    v58 = *(v0 + 368);

    v60 = *(v0 + 344);
    v59 = *(v0 + 352);
    v62 = *(v0 + 328);
    v61 = *(v0 + 336);
    v64 = *(v0 + 296);
    v63 = *(v0 + 304);
    v65 = *(v0 + 272);
    v66 = *(v0 + 248);
    v67 = *(v0 + 224);
    v68 = *(v0 + 200);

    v26 = *(v0 + 8);
    goto LABEL_12;
  }

  v70 = *(v0 + 472) + 1;
  *(v0 + 472) = v70;
  v71 = *(v0 + 432);
  if (v70 >= *(v71 + 16))
  {
LABEL_54:
    __break(1u);
  }

  else
  {
    v220 = *(v0 + 456);
    v72 = *(v0 + 592);
    v74 = *(v0 + 344);
    v73 = *(v0 + 352);
    v75 = *(v0 + 336);
    v76 = *(v0 + 312);
    v45 = *(v0 + 280);
    v77 = *(v0 + 288);
    v210 = *(v0 + 304);
    v214 = *(v0 + 272);
    v54 = &qword_241168010;
    sub_2410FC88C(v71 + ((*(v0 + 596) + 32) & ~*(v0 + 596)) + *(*(v0 + 320) + 72) * v70, v73, &qword_27E530C48, &qword_241168010);
    v78 = *(v73 + 1);
    v79 = *(v76 + 48);
    *v74 = *v73;
    *(v74 + 1) = v78;
    v80 = *(v77 + 32);
    v80(&v74[v79], &v73[v72], v45);
    sub_2410FC88C(v74, v75, &qword_27E530C48, &qword_241168010);
    v81 = *(v75 + 8);

    v80(v210, (v75 + *(v76 + 48)), v45);
    sub_241165B48();
    v82 = MEMORY[0x277CEEE38];
    v53 = sub_241115914(&qword_27E530C50, MEMORY[0x277CEEE38]);
    sub_241115914(&qword_27E530C58, v82);
    sub_241165B38();
    if (v221)
    {
      v54 = v221;
      v83 = *(v0 + 384);
      (*(*(v0 + 288) + 16))(*(v0 + 296), *(v0 + 304), *(v0 + 280));
      v84 = v221;
      v85 = sub_241165268();
      v86 = sub_241166048();

      v87 = os_log_type_enabled(v85, v86);
      v89 = *(v0 + 288);
      v88 = *(v0 + 296);
      v90 = *(v0 + 280);
      if (v87)
      {
        v91 = swift_slowAlloc();
        v215 = swift_slowAlloc();
        v222 = swift_slowAlloc();
        v224[0] = v222;
        *v91 = 136315394;
        sub_241115914(&qword_27E530C70, MEMORY[0x277CC9260]);
        v92 = v54;
        v93 = sub_2411663B8();
        v95 = v94;
        v219 = *(v89 + 8);
        v219(v88, v90);
        v96 = v93;
        v54 = v92;
        v97 = sub_241156B38(v96, v95, v224);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2112;
        v98 = v92;
        v99 = _swift_stdlib_bridgeErrorToNSError();
        *(v91 + 14) = v99;
        *v215 = v99;
        _os_log_impl(&dword_2410F8000, v85, v86, "Could not parse ATPayload from messagesPayloadURL %s. error: %@", v91, 0x16u);
        sub_2410FB29C(v215, &qword_27E530E30, &qword_2411676F0);
        MEMORY[0x245CDC5E0](v215, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v222);
        MEMORY[0x245CDC5E0](v222, -1, -1);
        MEMORY[0x245CDC5E0](v91, -1, -1);
      }

      else
      {

        v219 = *(v89 + 8);
        v219(v88, v90);
      }

      v112 = *(v0 + 304);
      v113 = *(v0 + 208);
      v114 = *(v0 + 216);
      v115 = *(v0 + 200);
      sub_241164F28();
      if ((*(v114 + 48))(v115, 1, v113) == 1)
      {
        v116 = *(v0 + 432);
        v117 = *(v0 + 368);
        v118 = *(v0 + 200);

        sub_2410FB29C(v118, &qword_27E530AA8, &qword_241167D20);
        if (qword_27E5305B0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
        v119 = sub_241165268();
        v120 = sub_241166048();
        if (os_log_type_enabled(v119, v120))
        {
          v121 = swift_slowAlloc();
          v122 = swift_slowAlloc();
          v224[0] = v122;
          *v121 = 136315138;
          *(v121 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v224);
          _os_log_impl(&dword_2410F8000, v119, v120, "%s URL components was nil", v121, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v122);
          MEMORY[0x245CDC5E0](v122, -1, -1);
          MEMORY[0x245CDC5E0](v121, -1, -1);
        }

        v123 = *(v0 + 344);
        v124 = *(v0 + 304);
        v125 = *(v0 + 280);
        v126 = *(v0 + 264);
        v127 = *(v0 + 272);
        v128 = *(v0 + 256);
        v129 = *(v0 + 288) + 8;
        sub_2411133A8();
        swift_allocError();
        *v130 = v54;
        *(v130 + 8) = 0;
        *(v130 + 16) = 3;
        swift_willThrow();
        (*(v126 + 8))(v127, v128);
        v219(v124, v125);
        v15 = v123;
        goto LABEL_5;
      }

      (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
      v53 = sub_2411655E8();
      v131 = *(v53 - 8);
      v132 = *(v131 + 64) + 15;
      v45 = swift_task_alloc();
      v133 = swift_task_alloc();
      sub_2411654E8();
      (*(v131 + 32))(v45, v133, v53);

      v134 = sub_241114874(v45);
      if (!v134)
      {
        v141 = *(v0 + 432);
        v142 = *(v0 + 368);

        if (qword_27E5305B0 == -1)
        {
LABEL_49:
          __swift_project_value_buffer(*(v0 + 376), qword_27E533A80);
          v143 = sub_241165268();
          v144 = sub_241166048();
          v211 = v54;
          v216 = v45;
          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            v146 = swift_slowAlloc();
            v224[0] = v146;
            *v145 = 136315138;
            *(v145 + 4) = sub_241156B38(0x2928656C646E6168, 0xE800000000000000, v224);
            _os_log_impl(&dword_2410F8000, v143, v144, "%s derivedPayload was nil", v145, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v146);
            MEMORY[0x245CDC5E0](v146, -1, -1);
            MEMORY[0x245CDC5E0](v145, -1, -1);
          }

          v202 = *(v0 + 304);
          v206 = *(v0 + 344);
          v147 = *(v0 + 264);
          v148 = *(v0 + 272);
          v149 = *(v0 + 256);
          v151 = *(v0 + 216);
          v150 = *(v0 + 224);
          v152 = *(v0 + 208);
          v196 = *(v0 + 288) + 8;
          v198 = *(v0 + 280);
          sub_2411133A8();
          swift_allocError();
          *v153 = v211;
          *(v153 + 8) = 0;
          *(v153 + 16) = 3;
          swift_willThrow();
          (*(v131 + 8))(v216, v53);
          (*(v151 + 8))(v150, v152);
          (*(v147 + 8))(v148, v149);
          v219(v202, v198);
          sub_2410FB29C(v206, &qword_27E530C48, &qword_241168010);

          goto LABEL_6;
        }

LABEL_74:
        swift_once();
        goto LABEL_49;
      }

      v100 = v134;
      v136 = *(v0 + 216);
      v135 = *(v0 + 224);
      v137 = *(v0 + 208);

      (*(v131 + 8))(v45, v53);
      (*(v136 + 8))(v135, v137);
    }

    else
    {
      v100 = *(v0 + 184);
    }

    v101 = v100;
    *(v0 + 480) = v101;
    v102 = sub_241165CC8();
    v219 = v101;

    v43 = sub_2411652F8();
    if (!(v43 >> 62))
    {
      v103 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v103)
      {
        goto LABEL_22;
      }

LABEL_56:
      v154 = *(v0 + 432);

      v155 = sub_241165CC8();
      v156 = sub_2411652F8();

      if (v156 >> 62)
      {
        v131 = sub_2411661F8();
        if (v131)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v131 = *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v131)
        {
LABEL_58:
          v224[0] = MEMORY[0x277D84F90];
          sub_241100458(0, v131 & ~(v131 >> 63), 0);
          if ((v131 & 0x8000000000000000) == 0)
          {
            v157 = 0;
            v158 = v224[0];
            v159 = v156;
            v223 = v156 & 0xC000000000000001;
            v160 = v156;
            v161 = v131;
            do
            {
              if (v223)
              {
                v162 = MEMORY[0x245CDBC20](v157, v159);
              }

              else
              {
                v162 = *(v159 + 8 * v157 + 32);
              }

              v163 = v162;
              v164 = sub_241165418();
              v166 = v165;

              v224[0] = v158;
              v168 = *(v158 + 16);
              v167 = *(v158 + 24);
              if (v168 >= v167 >> 1)
              {
                sub_241100458((v167 > 1), v168 + 1, 1);
                v158 = v224[0];
              }

              ++v157;
              *(v158 + 16) = v168 + 1;
              v169 = v158 + 16 * v168;
              *(v169 + 32) = v164;
              *(v169 + 40) = v166;
              v159 = v160;
            }

            while (v161 != v157);

            goto LABEL_69;
          }

          __break(1u);
          goto LABEL_74;
        }
      }

      v158 = MEMORY[0x277D84F90];
LABEL_69:
      v170 = *(v0 + 384);
      v171 = *(v0 + 368);

      v172 = sub_241165268();
      v173 = sub_241166048();

      if (os_log_type_enabled(v172, v173))
      {
        v175 = *(v0 + 360);
        v174 = *(v0 + 368);
        v176 = swift_slowAlloc();
        v177 = swift_slowAlloc();
        v224[0] = v177;
        *v176 = 136315394;
        *(v176 + 4) = sub_241156B38(v175, v174, v224);
        *(v176 + 12) = 2080;
        v178 = MEMORY[0x245CDB850](v158, MEMORY[0x277D837D0]);
        v180 = v179;

        v181 = sub_241156B38(v178, v180, v224);

        *(v176 + 14) = v181;
        _os_log_impl(&dword_2410F8000, v172, v173, "No answer choice in the original question had id %s. originalAnswerIds: %s", v176, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CDC5E0](v177, -1, -1);
        MEMORY[0x245CDC5E0](v176, -1, -1);
      }

      else
      {
      }

      v182 = *(v0 + 360);
      v183 = *(v0 + 368);
      v217 = *(v0 + 344);
      v184 = *(v0 + 304);
      v185 = *(v0 + 280);
      v186 = *(v0 + 288);
      v187 = *(v0 + 264);
      v188 = *(v0 + 272);
      v189 = *(v0 + 256);
      sub_2411133A8();
      swift_allocError();
      *v190 = v182;
      *(v190 + 8) = v183;
      *(v190 + 16) = 1;
      swift_willThrow();

      (*(v187 + 8))(v188, v189);
      (*(v186 + 8))(v184, v185);
      v15 = v217;
LABEL_5:
      sub_2410FB29C(v15, &qword_27E530C48, &qword_241168010);
LABEL_6:
      v17 = *(v0 + 344);
      v16 = *(v0 + 352);
      v19 = *(v0 + 328);
      v18 = *(v0 + 336);
      v21 = *(v0 + 296);
      v20 = *(v0 + 304);
      v22 = *(v0 + 272);
      v23 = *(v0 + 248);
      v24 = *(v0 + 224);
      v25 = *(v0 + 200);

      v26 = *(v0 + 8);
LABEL_12:

      return v26();
    }
  }

  v103 = sub_2411661F8();
  if (!v103)
  {
    goto LABEL_56;
  }

LABEL_22:
  v53 = 0;
  while (1)
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v104 = MEMORY[0x245CDBC20](v53, v43);
    }

    else
    {
      if (v53 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v104 = *(v43 + 8 * v53 + 32);
    }

    v105 = v104;
    *(v0 + 488) = v104;
    v54 = (v53 + 1);
    if (__OFADD__(v53, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v107 = *(v0 + 360);
    v106 = *(v0 + 368);
    if (sub_241165418() == v107 && v108 == v106)
    {
      break;
    }

    v110 = *(v0 + 360);
    v111 = *(v0 + 368);
    v45 = sub_2411663E8();

    if (v45)
    {
      goto LABEL_45;
    }

    ++v53;
    if (v54 == v103)
    {
      goto LABEL_56;
    }
  }

LABEL_45:

  v138 = swift_task_alloc();
  *(v0 + 496) = v138;
  *v138 = v0;
  v138[1] = sub_24110D8A4;
  v140 = *(v0 + 408);
  v139 = *(v0 + 416);

  return sub_2411133FC(v140, v139);
}