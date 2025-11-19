unint64_t sub_23A6749C0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23A6DF9C4() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23A6DFCE4();

      sub_23A6DF684();
      v13 = sub_23A6DFD14();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A674BC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23A6DF9C4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23A6DFCE4();

      sub_23A6DF684();
      v13 = sub_23A6DFD14();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23A674D74(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_23A648D1C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_23A675168();
      goto LABEL_7;
    }

    sub_23A674388(v15, a4 & 1);
    v26 = *v5;
    v27 = sub_23A648D1C(a2, a3);
    if ((v16 & 1) == (v28 & 1))
    {
      v12 = v27;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23A6DFC54();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_23A6750AC(v12, a2, a3, a1, v18);
}

uint64_t sub_23A674F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6, uint64_t *a7)
{
  v10 = v7;
  v16 = *v7;
  v17 = sub_23A648D1C(a3, a4);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_23A674710(v22, a5 & 1, a6, a7);
      v26 = *v10;
      v17 = sub_23A648D1C(a3, a4);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_23A6DFC54();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_23A6753F0(a6, a7);
      v17 = v25;
    }
  }

  v28 = *v10;
  if (v23)
  {
    v29 = (v28[7] + 16 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a3;
  v32[1] = a4;
  v33 = (v28[7] + 16 * v17);
  *v33 = a1;
  v33[1] = a2;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

uint64_t sub_23A6750AC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

char *sub_23A675168()
{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
  v39 = *(v37 - 8);
  v2 = *(v39 + 64);
  MEMORY[0x28223BE20](v37, v3);
  v36 = &v31 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
  v5 = *v0;
  v6 = sub_23A6DFB64();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_23A6753F0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23A6DFB64();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 16 * (v16 | (v10 << 6));
        v20 = (*(v4 + 48) + v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + v19);
        v24 = (*(v6 + 48) + v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t sub_23A675560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D8, &unk_23A6E2110);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9D0, &qword_23A6E2108);
    v8 = sub_23A6DFB84();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23A646D48(v10, v6, &qword_27DF9C9D8, &unk_23A6E2110);
      v13 = *v6;
      v12 = v6[1];
      result = sub_23A648D1C(*v6, v12);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v13;
      v17[1] = v12;
      v18 = v8[7];
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C810, &qword_23A6E1638);
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_23A67577C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_23A6DFB84();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = sub_23A648D1C(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

uint64_t sub_23A675890(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t type metadata accessor for PaymentCardReaderActor()
{
  result = qword_27DF9EDE8;
  if (!qword_27DF9EDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A675940()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A6599A4(v5, v6, v7, v2, v3, v4);
}

uint64_t sub_23A675A00(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 97) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A675AAC, a4, 0);
}

uint64_t sub_23A675AAC()
{
  v27 = v0;
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  *(v0 + 72) = OBJC_IVAR____TtC15ProximityReader22PaymentCardReaderActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 64);
    v4 = sub_23A6DCDF0();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(*(v0 + 64), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = *(v0 + 24);

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v0 + 16);
        v15 = *(v0 + 24);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v26 = v18;
        *v17 = 136315138;
        v19 = sub_23A66B368(v16, v15);
        v21 = sub_23A657E78(v19, v20, &v26);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v13, v14, "Error (%s: a previous request is running, returning busy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v6 + 8))(*(v0 + 64), v5);
    }

    if (*(v0 + 97) == 1)
    {
      sub_23A6763DC();
      swift_allocError();
      *v22 = xmmword_23A6E1CA0;
      *(v22 + 16) = 3;
    }

    else
    {
      type metadata accessor for PaymentCardReaderError();
      sub_23A6781B0(&qword_27DF9C7F8, type metadata accessor for PaymentCardReaderError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
    }

    v23 = *(v0 + 40);
    swift_willThrow();

    v24 = *(v0 + 64);

    v25 = *(v0 + 8);

    return v25(0);
  }

  else
  {
    *(v1 + v2) = 1;
    v7 = swift_task_alloc();
    *(v0 + 80) = v7;
    *v7 = v0;
    v7[1] = sub_23A675E2C;
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    v10 = *(v0 + 40);

    return sub_23A65C830(v0 + 96, v10, v8, v9);
  }
}

uint64_t sub_23A675E2C()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_23A675FD4;
  }

  else
  {
    v6 = sub_23A675F58;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A675F58()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  *(*(v0 + 32) + *(v0 + 72)) = 0;

  v3 = *(v0 + 96);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_23A675FD4()
{
  v1 = v0[5];
  *(v0[4] + v0[9]) = 0;

  v2 = v0[11];
  v3 = v0[8];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_23A67604C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23A676074(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23A647234;

  return sub_23A669878(a1, v4, v5, v6, v7, v9 | v8);
}

const char *sub_23A676188(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v17 - v5;
  v7 = sub_23A6DE874();
  if (v7 == 2)
  {
    return "PaymentWithVAS";
  }

  if (v7 == 1)
  {
    return "VAS";
  }

  if (v7)
  {
    v10 = sub_23A6DCDF0();
    sub_23A646D48(v10, v6, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v6, 1, v11) == 1)
    {
      sub_23A646DB0(v6, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = a1;
      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF884();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134217984;
        sub_23A6DE874();
        *(v16 + 4) = sub_23A6DE764();

        _os_log_impl(&dword_23A63D000, v14, v15, "Unknown transaction data type [ %ld ]", v16, 0xCu);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      else
      {

        v14 = v13;
      }

      (*(v12 + 8))(v6, v11);
    }

    return "Unknown";
  }

  else
  {
    sub_23A6DE854();
    v8 = sub_23A6DE7C4();
    if (v8 == sub_23A6DE7C4())
    {
      return "Payment";
    }

    else
    {
      return "Verification";
    }
  }
}

unint64_t sub_23A6763DC()
{
  result = qword_27DF9C918;
  if (!qword_27DF9C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C918);
  }

  return result;
}

uint64_t sub_23A676450(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  if (*(v1 + 49))
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23A647140;

  return sub_23A669878(a1, v4, v5, v6, v7, v9 | v8);
}

unint64_t sub_23A676530()
{
  result = qword_27DF9C928;
  if (!qword_27DF9C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C928);
  }

  return result;
}

unint64_t sub_23A676584()
{
  result = qword_27DF9C930;
  if (!qword_27DF9C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C930);
  }

  return result;
}

unint64_t sub_23A6765D8()
{
  result = qword_27DF9C938;
  if (!qword_27DF9C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C938);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A676644()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A673268(v3, v4, v5, v2);
}

uint64_t sub_23A6766D8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A6734C4(v3, v4, v5, v2);
}

uint64_t sub_23A67676C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A6736D4(v3, v4, v5, v2);
}

uint64_t sub_23A676800()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647140;

  return sub_23A673A30(v3, v4, v5, v2);
}

void sub_23A67689C()
{
  sub_23A6769A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A6769A4()
{
  if (!qword_27DF9C950)
  {
    sub_23A6DE2F4();
    v0 = sub_23A6DF954();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9C950);
    }
  }
}

uint64_t sub_23A676A2C(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8) + 80);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  return sub_23A671F8C(a1, v4, v5);
}

uint64_t sub_23A676AB0(char a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v6 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));
  v8 = *(v2 + 16);

  return sub_23A6726E0(a1, a2, v8, v6, v7);
}

uint64_t sub_23A676B60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v74 = a5;
  v75 = a4;
  v71 = a1;
  v72 = sub_23A6DE7F4();
  v69 = *(v72 - 8);
  v7 = *(v69 + 64);
  MEMORY[0x28223BE20](v72, v8);
  v68 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v60[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7A8, &qword_23A6E12A0);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v70 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v60[-v21];
  v23 = sub_23A6DE294();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v27 = MEMORY[0x28223BE20](v23, v26);
  v29 = &v60[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27, v30);
  v32 = &v60[-v31];
  v67 = *a2;
  v33 = *(a2 + 9);
  v65 = *(a2 + 8);
  v66 = v33;
  v73 = a3;
  sub_23A646D48(a3, v22, &qword_27DF9C7A8, &qword_23A6E12A0);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v34 = &qword_27DF9C7A8;
    v35 = &qword_23A6E12A0;
    v36 = v22;
LABEL_5:
    sub_23A646DB0(v36, v34, v35);
    goto LABEL_10;
  }

  (*(v24 + 32))(v32, v22, v23);
  v37 = sub_23A6DCDF0();
  sub_23A646D48(v37, v14, &qword_27DF9D240, qword_23A6E1D30);
  v38 = sub_23A6DECC4();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v14, 1, v38) == 1)
  {
    (*(v24 + 8))(v32, v23);
    v34 = &qword_27DF9D240;
    v35 = qword_23A6E1D30;
    v36 = v14;
    goto LABEL_5;
  }

  (*(v24 + 16))(v29, v32, v23);
  v40 = sub_23A6DECA4();
  v41 = sub_23A6DF8A4();
  if (os_log_type_enabled(v40, v41))
  {
    v62 = swift_slowAlloc();
    v63 = v40;
    v42 = v62;
    v64 = swift_slowAlloc();
    v76 = v64;
    *v42 = 136446210;
    sub_23A6781B0(&qword_27DF9C9A8, MEMORY[0x277CC9578]);
    v61 = v41;
    v43 = sub_23A6DFBD4();
    v45 = v44;
    v46 = *(v24 + 8);
    v46(v29, v23);
    v47 = sub_23A657E78(v43, v45, &v76);

    v48 = v62;
    v49 = v63;
    *(v62 + 4) = v47;
    v50 = v48;
    _os_log_impl(&dword_23A63D000, v49, v61, "OS deprecation date: %{public}s", v48, 0xCu);
    v51 = v64;
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    MEMORY[0x23EE8A960](v51, -1, -1);
    MEMORY[0x23EE8A960](v50, -1, -1);

    v46(v32, v23);
  }

  else
  {

    v52 = *(v24 + 8);
    v52(v29, v23);
    v52(v32, v23);
  }

  (*(v39 + 8))(v14, v38);
LABEL_10:
  v53 = v72;
  v55 = v68;
  v54 = v69;
  (*(v69 + 16))(v68, v71, v72);
  v56 = (*(v54 + 88))(v55, v53);
  if (v56 == *MEMORY[0x277D43908])
  {
    (*(v54 + 8))(v55, v53);
    type metadata accessor for PaymentCardReaderSession();
    v76 = v67;
    LOBYTE(v77) = v65;
    BYTE1(v77) = v66;
    v57 = v70;
    sub_23A646D48(v73, v70, &qword_27DF9C7A8, &qword_23A6E12A0);

    return sub_23A6947F8(&v76, v57, v75, v74 & 1);
  }

  else if (v56 == *MEMORY[0x277D43900])
  {
    type metadata accessor for StoreAndForwardPaymentCardReaderSession();
    v76 = v67;
    LOBYTE(v77) = v65;
    BYTE1(v77) = v66;
    v59 = v70;
    sub_23A646D48(v73, v70, &qword_27DF9C7A8, &qword_23A6E12A0);

    return sub_23A646C3C(&v76, v59, v75, v74 & 1);
  }

  else
  {
    v76 = 0;
    v77 = 0xE000000000000000;
    sub_23A6DFA84();
    MEMORY[0x23EE89BB0](0xD000000000000015, 0x800000023A6E8DD0);
    sub_23A6DFB34();
    result = sub_23A6DFB44();
    __break(1u);
  }

  return result;
}

unint64_t sub_23A677268()
{
  result = qword_27DF9C958;
  if (!qword_27DF9C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C958);
  }

  return result;
}

uint64_t sub_23A6772BC(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_23A6DE2F4() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23A647234;

  return sub_23A668BDC(a1, a2, v8, v2 + v7);
}

uint64_t sub_23A677420()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A66F0A8(v7, v8, v9, v4, v5, v6, v0 + v3);
}

uint64_t sub_23A677544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C900, &qword_23A6E1D20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A6775B4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_23A6775CC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t objectdestroy_165Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 56) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(v2 + 2);
  swift_unknownObjectRelease();
  v9 = *(v2 + 5);

  v10 = *(v2 + 6);
  swift_unknownObjectRelease();
  (*(v4 + 8))(&v2[v6], v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_23A677728()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C968, &qword_23A6E2060) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_23A647234;

  return sub_23A66EFA4(v7, v8, v9, v4, v5, v6, v0 + v3);
}

void sub_23A67785C(void *a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  sub_23A663B00(a1, a2);
}

uint64_t sub_23A6778BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t sub_23A677990(void *a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C988, &qword_23A6E2090) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = v2 + ((*(v5 + 80) + 33) & ~*(v5 + 80));

  return sub_23A662074(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_23A677A38(char a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C998, &qword_23A6E20A0) - 8) + 80);

  return sub_23A6604A4(a1);
}

void sub_23A677AB4(void *a1, uint64_t a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_23A66A000(a1, a2, *(v2 + 16), *(v2 + 24), v3 | *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

void sub_23A677B04(void *a1, void *a2)
{
  v5 = *(sub_23A6DE574() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9A0, &unk_23A6E20A8) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_23A6DE7F4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v2 + v7);
  v14 = v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
  v15 = *v14;
  v16 = *(v14 + 8);
  if (*(v14 + 9))
  {
    v17 = 256;
  }

  else
  {
    v17 = 0;
  }

  sub_23A66A480(a1, a2, v2 + v6, v13, v2 + v9, (v2 + v12), v15, v17 | v16);
}

uint64_t sub_23A677CB0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_23A677CF4(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  sub_23A65CF78(a1, a2);
}

uint64_t sub_23A677D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = v5 + ((*(v8 + 80) + 16) & ~*(v8 + 80));

  return a5(a1, a2, v9);
}

uint64_t objectdestroy_159Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + 24);

  (*(v4 + 8))(v2 + v6, v3);
  v9 = *(v2 + v7);

  return MEMORY[0x2821FE8E8](v2, v7 + 9, v5 | 7);
}

uint64_t sub_23A677EA4(void *a1, uint64_t *a2, uint64_t *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_23A66EA0C(a1, *(v3 + 16), *(v3 + 24), v3 + v8, *v9, *(v9 + 8), a2, a3);
}

uint64_t sub_23A677F64()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23A647234;

  return sub_23A672E9C(v3, v4, v5, v2);
}

uint64_t sub_23A677FF8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23A65B9BC(a1, a2, a3, v8);
}

uint64_t sub_23A67808C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9B8, &qword_23A6E20D0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_23A647234;

  return sub_23A65BBD0(v8, v9, v10, v4, v0 + v3, v6, v7);
}

uint64_t sub_23A6781B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23A6782B4()
{
  v0 = type metadata accessor for PaymentCardReaderStoreActor();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23A6786D0();
  qword_27DFA5E90 = v3;
  return result;
}

uint64_t sub_23A6782F4()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23A6786D0();
  return v3;
}

uint64_t *sub_23A67832C()
{
  if (qword_27DF9EE00 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E90;
}

uint64_t sub_23A67837C()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E0, &unk_23A6E2130);
  v1 = swift_allocObject();
  *(v1 + 24) = 0;
  *(v1 + 16) = MEMORY[0x277D84F98];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_23A6783E4()
{
  v0 = [objc_msgSend(objc_opt_self() interfaceWithProtocol_];
  sub_23A6DF844();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA48, &qword_23A6E2398);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_23A6E2120;
  v2 = sub_23A6DEA74();
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA50, &qword_23A6E23A0);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(MEMORY[0x277CBEB98]);
  v4 = sub_23A6DF724();

  [v3 initWithArray_];

  result = sub_23A6DF834();
  __break(1u);
  return result;
}

uint64_t sub_23A6785C4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v5 = result + 56;
  v4 = *(result + 56);
  v17 = a2;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  if ((v7 & v4) != 0)
  {
    do
    {
      v10 = v3;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      sub_23A682460(*(v2 + 48) + 40 * (v11 | (v10 << 6)), v15);
      v12[0] = v15[0];
      v12[1] = v15[1];
      v13 = v16;
      sub_23A67F56C(v14, v12);
      result = sub_23A6824BC(v14);
    }

    while (v8);
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return v17;
    }

    v8 = *(v5 + 8 * v10);
    ++v3;
    if (v8)
    {
      v3 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23A6786D0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v30 - v6;
  v8 = sub_23A6DE784();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  type metadata accessor for PaymentReadResultStorageDelegate();
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E0, &unk_23A6E2130);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D84F98];
  *(v15 + 24) = 0;
  *(v15 + 16) = v16;
  *(v14 + 16) = v15;
  *(v1 + 112) = v14;
  v17 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_delegateInterface;
  *(v1 + v17) = sub_23A6783E4();
  *(v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning) = 0;
  sub_23A6DE654();
  v18 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v19 = sub_23A6DF614();

  v20 = [v18 initWithMachServiceName:v19 options:4096];

  (*(v9 + 104))(v13, *MEMORY[0x277D43838], v8);
  v21 = sub_23A6DE774();
  (*(v9 + 8))(v13, v8);
  sub_23A67EFA4();
  swift_allocError();
  *v22 = v21;
  *(v22 + 8) = 0;
  v23 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9F8, qword_23A6E2148);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection, v7, v2);
  v24 = sub_23A6DEA14();
  [v24 setExportedObject_];

  v25 = sub_23A6DEA14();
  [v25 setExportedInterface_];

  v26 = sub_23A6DEA14();
  v27 = [objc_opt_self() interfaceWithProtocol_];
  [v26 setRemoteObjectInterface_];

  v28 = sub_23A6DEA14();
  [v28 activate];

  return v1;
}

uint64_t sub_23A678A90()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23 - v11;
  v13 = sub_23A6DCDF0();
  sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v16 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v1, 0x74696E696564, 0xE600000000000000, v16, v17);

    (*(v15 + 8))(v12, v14);
  }

  v18 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_connection, v2);
  v19 = sub_23A6DEA14();
  v20 = *(v3 + 8);
  v20(v7, v2);
  [v19 invalidate];

  v21 = *(v1 + 112);

  v20((v1 + v18), v2);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_23A678D14()
{
  sub_23A678A90();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A678D40(uint64_t a1)
{
  v2[4] = v1;
  v2[5] = a1;
  v3 = sub_23A6DE784();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = sub_23A6DE574();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v2[11] = *(v7 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A678EA8, v1, 0);
}

uint64_t sub_23A678EA8()
{
  v1 = *(v0 + 112);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 112);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 112), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 32);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000027, 0x800000023A6E93C0, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v0 + 64);
  v15 = *(v0 + 72);
  v16 = *(v0 + 48);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  sub_23A6DE504();
  (*(v17 + 104))(v14, *MEMORY[0x277D43838], v16);

  v29 = sub_23A6DE774();
  (*(v17 + 8))(v14, v16);
  (*(v13 + 16))(v10, v11, v15);
  *(v0 + 136) = 0;
  v19 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v0 + 120) = v22;
  *(v22 + 16) = v18;
  (*(v13 + 32))(v22 + v19, v10, v15);
  v23 = (v22 + v20);
  *v23 = &unk_23A6E2168;
  v23[1] = v18;
  v24 = (v22 + v21);
  *v24 = 0xD000000000000027;
  v24[1] = 0x800000023A6E93C0;
  v25 = v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v25 = v29;
  *(v25 + 8) = *(v0 + 136);
  swift_retain_n();
  v26 = swift_task_alloc();
  *(v0 + 128) = v26;
  *v26 = v0;
  v26[1] = sub_23A6791DC;
  v27 = *(v0 + 32);

  return sub_23A67DD4C(0xD000000000000027, 0x800000023A6E93C0, 1, 1, &unk_23A6E2178, v22, v0 + 16);
}

uint64_t sub_23A6791DC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[15];
    v8 = v4[4];

    return MEMORY[0x2822009F8](sub_23A6793A0, v8, 0);
  }

  else
  {
    v10 = v4[14];
    v9 = v4[15];
    v12 = v4[12];
    v11 = v4[13];
    v13 = v4[9];
    v14 = v4[10];
    v15 = v4[8];
    v16 = v4[4];

    (*(v14 + 8))(v11, v13);

    v17 = *(v6 + 8);

    return v17(a1);
  }
}

uint64_t sub_23A6793A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = *(v0 + 80);
  v6 = *(v0 + 64);
  v7 = *(v0 + 32);
  v8 = *(v0 + 40);

  (*(v5 + 8))(v1, v4);
  v9 = *(v0 + 24);
  *v8 = *(v0 + 16);
  *(v8 + 8) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_23A679474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[22] = a2;
  v3[23] = a3;
  v3[21] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A679518, a3, 0);
}

uint64_t sub_23A679518()
{
  v1 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A679634;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA28, &qword_23A6E2358);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A679A10;
  v0[13] = &block_descriptor_93;
  v0[14] = v2;
  [v1 fetchStoredPaymentCardReadResultCountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A679634()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 184);
  if (v3)
  {
    v5 = sub_23A67991C;
  }

  else
  {
    v5 = sub_23A679754;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A679754()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v1, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_23A646DB0(v0[24], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = v0[24];
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23A63D000, v7, v8, "Result (fetchStoredPaymentCardReadResultCount): success", v9, 2u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    v10 = v0[24];

    (*(v5 + 8))(v10, v4);
  }

  v11 = v0[22];
  v0[20] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF774();
  v12 = v0[24];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A67991C()
{
  v1 = v0[25];
  v2 = v0[22];
  swift_willThrow();
  sub_23A67EFA4();
  v3 = swift_allocError();
  sub_23A67E358(v1, 0xD000000000000027, 0x800000023A6E93C0, v4);
  v0[19] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF764();

  v5 = v0[24];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A679A10(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A679ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = v3;
  v4[17] = a3;
  v4[14] = a1;
  v4[15] = a2;
  v5 = sub_23A6DE784();
  v4[18] = v5;
  v6 = *(v5 - 8);
  v4[19] = v6;
  v7 = *(v6 + 64) + 15;
  v4[20] = swift_task_alloc();
  v8 = sub_23A6DE574();
  v4[21] = v8;
  v9 = *(v8 - 8);
  v4[22] = v9;
  v4[23] = *(v9 + 64);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A679C78, v3, 0);
}

uint64_t sub_23A679C78()
{
  v80 = v0;
  v1 = *(v0 + 240);
  v2 = sub_23A6DCDF0();
  *(v0 + 248) = v2;
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  *(v0 + 256) = v3;
  v4 = *(v3 - 8);
  *(v0 + 264) = v4;
  v5 = *(v4 + 48);
  *(v0 + 272) = v5;
  *(v0 + 280) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v77 = v5;
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 240);
  if (v6 == 1)
  {
    sub_23A646DB0(*(v0 + 240), &qword_27DF9D240, qword_23A6E1D30);
    v8 = *(v0 + 120);
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v22 = *(v0 + 232);
    sub_23A646D48(v2, v22, &qword_27DF9D240, qword_23A6E1D30);
    if (v77(v22, 1, v3) == 1)
    {
      sub_23A646DB0(*(v0 + 232), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v36 = *(v0 + 232);
      v37 = sub_23A6DECA4();
      v38 = sub_23A6DF884();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 120);
        v40 = v4;
        v41 = swift_slowAlloc();
        *v41 = 134217984;
        *(v41 + 4) = v39;
        _os_log_impl(&dword_23A63D000, v37, v38, "Requested batch size is not valid: [%ld]", v41, 0xCu);
        v42 = v41;
        v4 = v40;
        MEMORY[0x23EE8A960](v42, -1, -1);
      }

      v43 = *(v0 + 232);

      (*(v4 + 8))(v43, v3);
    }

    v44 = *(v0 + 136);
    *v44 = 6;
    *(v44 + 8) = 1;
    *(v0 + 80) = 6;
    *(v0 + 88) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
    goto LABEL_20;
  }

  v19 = *(v0 + 128);
  v20 = sub_23A6DCFB0();
  sub_23A6DCFBC(1, v19, 0xD00000000000002CLL, 0x800000023A6E93F0, v20, v21);

  (*(v4 + 8))(v7, v3);
  v8 = *(v0 + 120);
  if (v8 < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  v72 = v4;
  v73 = v2;
  v9 = *(v0 + 208);
  v76 = *(v0 + 200);
  v10 = *(v0 + 176);
  v74 = v3;
  v75 = *(v0 + 168);
  v12 = *(v0 + 152);
  v11 = *(v0 + 160);
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  sub_23A6DE484();
  v15 = swift_allocObject();
  *(v0 + 288) = v15;
  *(v15 + 16) = v14;
  *(v15 + 24) = v8;
  (*(v12 + 104))(v11, *MEMORY[0x277D43838], v13);

  *(v0 + 296) = sub_23A6DE774();
  (*(v12 + 8))(v11, v13);
  v16 = *(v10 + 16);
  v16(v76, v9, v75);
  v17 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v0 + 304) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  LODWORD(v11) = *(v14 + v17);

  if (v11 == 1)
  {
    v18 = *(v0 + 224);
    sub_23A646D48(v73, v18, &qword_27DF9D240, qword_23A6E1D30);
    if (v77(v18, 1, v74) == 1)
    {
      sub_23A646DB0(*(v0 + 224), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v45 = *(v0 + 224);
      v46 = sub_23A6DECA4();
      v47 = sub_23A6DF884();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v79 = v49;
        *v48 = 136315138;
        v50 = sub_23A66B368(0xD00000000000002CLL, 0x800000023A6E93F0);
        v52 = sub_23A657E78(v50, v51, &v79);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_23A63D000, v46, v47, "Error (%s: a previous request is running, returning busy", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x23EE8A960](v49, -1, -1);
        MEMORY[0x23EE8A960](v48, -1, -1);
      }

      (*(v72 + 8))(*(v0 + 224), v74);
    }

    v53 = *(v0 + 200);
    v54 = *(v0 + 168);
    v55 = *(v0 + 176);
    v56 = *(v0 + 128);
    *(v0 + 64) = 1;
    *(v0 + 72) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v57 = *(v55 + 8);
    v57(v53, v54);

    v58 = *(v0 + 288);
    v59 = *(v0 + 208);
    v60 = *(v0 + 168);
    v61 = *(v0 + 136);

    v57(v59, v60);
    *v61 = 1;
    *(v61 + 8) = 1;
LABEL_20:
    v63 = *(v0 + 232);
    v62 = *(v0 + 240);
    v65 = *(v0 + 216);
    v64 = *(v0 + 224);
    v67 = *(v0 + 200);
    v66 = *(v0 + 208);
    v68 = *(v0 + 192);
    v69 = *(v0 + 160);

    v70 = *(v0 + 8);

    return v70();
  }

  v24 = *(v0 + 192);
  v23 = *(v0 + 200);
  v26 = *(v0 + 176);
  v25 = *(v0 + 184);
  v27 = *(v0 + 168);
  v78 = *(v0 + 128);
  *(v14 + v17) = 1;
  v16(v24, v23, v27);
  v28 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v29 = (v25 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v0 + 312) = v30;
  (*(v26 + 32))(v30 + v28, v24, v27);
  v31 = (v30 + v29);
  *v31 = &unk_23A6E2198;
  v31[1] = v15;
  v32 = *(MEMORY[0x277D43B00] + 4);

  v33 = swift_task_alloc();
  *(v0 + 320) = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  *v33 = v0;
  v33[1] = sub_23A67A3E0;
  v35 = *(v0 + 112);

  return MEMORY[0x2821A5668](v35, &unk_23A6E21A8, v30, v34, &type metadata for StoreAndForwardBatch);
}

uint64_t sub_23A67A3E0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v9 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 128);
    v5 = sub_23A67A638;
  }

  else
  {
    v6 = *(v2 + 312);
    v7 = *(v2 + 128);

    v5 = sub_23A67A508;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67A508()
{
  v1 = v0[38];
  v2 = v0[36];
  v3 = v0[30];
  v12 = v0[29];
  v13 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v14 = v0[27];
  v15 = v0[24];
  v7 = v0[21];
  v6 = v0[22];
  v16 = v0[20];
  v8 = v0[16];

  v9 = *(v6 + 8);
  v9(v5, v7);

  v9(v4, v7);
  *(v8 + v1) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A67A638()
{
  v49 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 312);

  *(v0 + 96) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 16);
    *(v0 + 48) = v4;
    v5 = *(v0 + 24);
    *(v0 + 56) = v5;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(v0 + 272);
    v6 = *(v0 + 280);
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 216);

    sub_23A646D48(v9, v10, &qword_27DF9D240, qword_23A6E1D30);
    if (v7(v10, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 216), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 328);
      v12 = *(v0 + 216);
      v13 = v11;
      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF884();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 328);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v48 = v18;
        *v17 = 136315394;
        v19 = sub_23A66B368(0xD00000000000002CLL, 0x800000023A6E93F0);
        v21 = sub_23A657E78(v19, v20, &v48);

        *(v17 + 4) = v21;
        *(v17 + 12) = 2080;
        *(v0 + 104) = v16;
        v22 = v16;
        v23 = sub_23A6DF634();
        v25 = sub_23A657E78(v23, v24, &v48);

        *(v17 + 14) = v25;
        _os_log_impl(&dword_23A63D000, v14, v15, "Error (%s: unexpected error [ %s ]", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(*(v0 + 264) + 8))(*(v0 + 216), *(v0 + 256));
    }

    v26 = *(v0 + 328);
    *(v0 + 32) = *(v0 + 296);
    *(v0 + 40) = 0;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v5 = 0;
    v4 = *(v0 + 296);
  }

  v27 = *(v0 + 304);
  v28 = *(v0 + 288);
  v29 = *(v0 + 200);
  v30 = *(v0 + 168);
  v31 = *(v0 + 176);
  v32 = *(v0 + 128);

  v33 = *(v31 + 8);
  v33(v29, v30);

  *(v32 + v27) = 0;
  v34 = *(v0 + 288);
  v35 = *(v0 + 208);
  v36 = *(v0 + 168);
  v37 = *(v0 + 136);

  v33(v35, v36);
  *v37 = v4;
  *(v37 + 8) = v5;
  v39 = *(v0 + 232);
  v38 = *(v0 + 240);
  v41 = *(v0 + 216);
  v40 = *(v0 + 224);
  v43 = *(v0 + 200);
  v42 = *(v0 + 208);
  v44 = *(v0 + 192);
  v45 = *(v0 + 160);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_23A67AA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[38] = a3;
  v4[39] = a4;
  v4[36] = a1;
  v4[37] = a2;
  v6 = sub_23A6DE784();
  v4[40] = v6;
  v7 = *(v6 - 8);
  v4[41] = v7;
  v8 = *(v7 + 64) + 15;
  v4[42] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v4[44] = swift_task_alloc();
  v10 = sub_23A6DE2F4();
  v4[45] = v10;
  v11 = *(v10 - 8);
  v4[46] = v11;
  v12 = *(v11 + 64) + 15;
  v4[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67AB74, a3, 0);
}

uint64_t sub_23A67AB74()
{
  v1 = v0[47];
  v3 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  type metadata accessor for BatchBuilder();
  v0[48] = sub_23A6ABAC8();
  v5 = *(v3 + 112);
  v0[49] = v5;
  (*(*v5 + 88))();
  v0[2] = v0;
  v0[7] = v0 + 34;
  v0[3] = sub_23A67ACF0;
  v6 = swift_continuation_init();
  v0[26] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA38, &qword_23A6E2370);
  v0[19] = MEMORY[0x277D85DD0];
  v0[20] = 1107296256;
  v0[21] = sub_23A66765C;
  v0[22] = &block_descriptor_79;
  v0[23] = v6;
  [v4 fetchStoredPaymentCardReadResultBatchWithSize:v2 completionHandler:v0 + 19];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67ACF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 400) = v3;
  v4 = *(v1 + 304);
  if (v3)
  {
    v5 = sub_23A67B324;
  }

  else
  {
    v5 = sub_23A67AE04;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67AE04()
{
  v53 = v0;
  v1 = *(v0 + 384);
  v2 = *(v0 + 272);
  sub_23A6AB3A0(v2);

  sub_23A6AB5AC(v48);
  v3 = v48[0];
  v4 = v48[1];
  v5 = v50;
  *(v0 + 216) = v49;
  *(v0 + 232) = v5;
  *(v0 + 248) = v51;
  *(v0 + 264) = v52;
  v6 = sub_23A6DCDF0();
  if (v4)
  {
    v7 = *(v0 + 344);
    sub_23A646D48(v6, v7, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 344), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = *(v0 + 344);
      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF8A4();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23A63D000, v14, v15, "Result (fetchStoredPaymentCardReadResultBatch): success", v16, 2u);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      v17 = *(v0 + 344);

      (*(v9 + 8))(v17, v8);
    }

    v19 = *(v0 + 384);
    v18 = *(v0 + 392);
    v21 = *(v0 + 368);
    v20 = *(v0 + 376);
    v22 = *(v0 + 360);
    v23 = *(v0 + 296);
    *(v0 + 80) = v3;
    *(v0 + 88) = v4;
    v24 = *(v0 + 232);
    *(v0 + 96) = *(v0 + 216);
    *(v0 + 112) = v24;
    *(v0 + 128) = *(v0 + 248);
    *(v0 + 144) = *(v0 + 264);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
    sub_23A6DF774();

    (*(*v18 + 96))(v20);

    (*(v21 + 8))(v20, v22);
  }

  else
  {
    v10 = *(v0 + 352);
    sub_23A646D48(v6, v10, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_23A646DB0(*(v0 + 352), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v25 = *(v0 + 352);
      v26 = sub_23A6DECA4();
      v27 = sub_23A6DF884();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_23A63D000, v26, v27, "Error building batch", v28, 2u);
        MEMORY[0x23EE8A960](v28, -1, -1);
      }

      v29 = *(v0 + 352);

      (*(v12 + 8))(v29, v11);
    }

    v30 = *(v0 + 384);
    v31 = *(v0 + 392);
    v32 = *(v0 + 376);
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 320);
    (*(v34 + 104))(v33, *MEMORY[0x277D43838], v35);
    v36 = sub_23A6DE774();
    (*(v34 + 8))(v33, v35);
    sub_23A67EFA4();
    v37 = swift_allocError();
    *v38 = v36;
    *(v38 + 8) = 0;
    swift_willThrow();

    (*(*v31 + 96))(v32);

    v39 = *(v0 + 296);
    (*(*(v0 + 368) + 8))(*(v0 + 376), *(v0 + 360));
    v40 = swift_allocError();
    sub_23A67E358(v37, 0xD00000000000002CLL, 0x800000023A6E93F0, v41);
    *(v0 + 280) = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
    sub_23A6DF764();
  }

  v42 = *(v0 + 376);
  v43 = *(v0 + 344);
  v44 = *(v0 + 352);
  v45 = *(v0 + 336);

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_23A67B324()
{
  v1 = v0[49];
  v2 = v0[50];
  v4 = v0[47];
  v3 = v0[48];
  swift_willThrow();
  (*(*v1 + 96))(v4);

  v5 = v0[50];
  v6 = v0[37];
  (*(v0[46] + 8))(v0[47], v0[45]);
  sub_23A67EFA4();
  v7 = swift_allocError();
  sub_23A67E358(v5, 0xD00000000000002CLL, 0x800000023A6E93F0, v8);
  v0[35] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA40, &qword_23A6E2378);
  sub_23A6DF764();

  v9 = v0[47];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];

  v13 = v0[1];

  return v13();
}

uint64_t sub_23A67B480(uint64_t a1)
{
  v2[12] = v1;
  v2[13] = a1;
  v3 = sub_23A6DE784();
  v2[14] = v3;
  v4 = *(v3 - 8);
  v2[15] = v4;
  v5 = *(v4 + 64) + 15;
  v2[16] = swift_task_alloc();
  v6 = sub_23A6DE574();
  v2[17] = v6;
  v7 = *(v6 - 8);
  v2[18] = v7;
  v2[19] = *(v7 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67B60C, v1, 0);
}

uint64_t sub_23A67B60C()
{
  v65 = v0;
  v1 = *(v0 + 200);
  v2 = sub_23A6DCDF0();
  *(v0 + 208) = v2;
  v60 = v2;
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  *(v0 + 216) = v3;
  v4 = *(v3 - 8);
  *(v0 + 224) = v4;
  v5 = *(v4 + 48);
  *(v0 + 232) = v5;
  *(v0 + 240) = (v4 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v59 = v5;
  v6 = v5(v1, 1, v3);
  v7 = *(v0 + 200);
  v62 = v3;
  v58 = v4;
  if (v6 == 1)
  {
    sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v8 = *(v0 + 96);
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v8, 0xD000000000000011, 0x800000023A6E9420, v9, v10);

    (*(v4 + 8))(v7, v3);
  }

  *(v0 + 248) = 0x800000023A6E9420;
  v12 = *(v0 + 168);
  v11 = *(v0 + 176);
  v14 = *(v0 + 136);
  v13 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = *(v0 + 112);
  v18 = *(v0 + 96);
  sub_23A6DE494();
  (*(v16 + 104))(v15, *MEMORY[0x277D43838], v17);

  *(v0 + 256) = sub_23A6DE774();
  (*(v16 + 8))(v15, v17);
  v19 = *(v13 + 16);
  v19(v12, v11, v14);
  v20 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v0 + 264) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  LODWORD(v15) = *(v18 + v20);
  swift_retain_n();
  if (v15 == 1)
  {
    v21 = *(v0 + 192);
    sub_23A646D48(v60, v21, &qword_27DF9D240, qword_23A6E1D30);
    if (v59(v21, 1, v62) == 1)
    {
      sub_23A646DB0(*(v0 + 192), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v35 = *(v0 + 192);
      v36 = sub_23A6DECA4();
      v37 = sub_23A6DF884();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v64 = v39;
        *v38 = 136315138;
        v40 = sub_23A66B368(0xD000000000000011, 0x800000023A6E9420);
        v42 = sub_23A657E78(v40, v41, &v64);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_23A63D000, v36, v37, "Error (%s: a previous request is running, returning busy", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x23EE8A960](v39, -1, -1);
        MEMORY[0x23EE8A960](v38, -1, -1);
      }

      (*(v58 + 8))(*(v0 + 192), v62);
    }

    v43 = *(v0 + 168);
    v44 = *(v0 + 136);
    v45 = *(v0 + 144);
    v46 = *(v0 + 96);
    *(v0 + 64) = 1;
    *(v0 + 72) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v47 = *(v45 + 8);
    v47(v43, v44);

    v48 = *(v0 + 192);
    v49 = *(v0 + 200);
    v51 = *(v0 + 176);
    v50 = *(v0 + 184);
    v52 = *(v0 + 168);
    v53 = *(v0 + 136);
    v61 = *(v0 + 160);
    v63 = *(v0 + 128);
    v54 = *(v0 + 96);
    v55 = *(v0 + 104);

    v47(v51, v53);
    *v55 = 1;
    *(v55 + 8) = 1;

    v56 = *(v0 + 8);

    return v56();
  }

  else
  {
    v23 = *(v0 + 160);
    v22 = *(v0 + 168);
    v25 = *(v0 + 144);
    v24 = *(v0 + 152);
    v26 = *(v0 + 136);
    v27 = *(v0 + 96);
    *(v18 + v20) = 1;
    v19(v23, v22, v26);
    v28 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v29 = swift_allocObject();
    *(v0 + 272) = v29;
    (*(v25 + 32))(v29 + v28, v23, v26);
    v30 = (v29 + ((v24 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v30 = &unk_23A6E21C8;
    v30[1] = v27;
    v31 = *(MEMORY[0x277D43B00] + 4);

    v32 = swift_task_alloc();
    *(v0 + 280) = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
    *v32 = v0;
    v32[1] = sub_23A67BBF8;
    v34 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2821A5668](v33, &unk_23A6E21D8, v29, v33, v34);
  }
}

uint64_t sub_23A67BBF8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v9 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = *(v2 + 96);
    v5 = sub_23A67BE3C;
  }

  else
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 96);

    v5 = sub_23A67BD20;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67BD20()
{
  v1 = v0[33];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[21];
  v12 = v0[23];
  v13 = v0[20];
  v7 = v0[17];
  v6 = v0[18];
  v14 = v0[16];
  v8 = v0[12];

  v9 = *(v6 + 8);
  v9(v5, v7);

  v9(v4, v7);
  *(v8 + v1) = 0;

  v10 = v0[1];

  return v10();
}

uint64_t sub_23A67BE3C()
{
  v47 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);

  *(v0 + 80) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    v45 = *(v0 + 16);
    *(v0 + 48) = v45;
    v44 = *(v0 + 24);
    *(v0 + 56) = v44;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v5 = *(v0 + 232);
    v4 = *(v0 + 240);
    v7 = *(v0 + 208);
    v6 = *(v0 + 216);
    v8 = *(v0 + 184);

    sub_23A646D48(v7, v8, &qword_27DF9D240, qword_23A6E1D30);
    if (v5(v8, 1, v6) == 1)
    {
      sub_23A646DB0(*(v0 + 184), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v9 = *(v0 + 288);
      v10 = *(v0 + 184);
      v11 = v9;
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 288);
        v15 = *(v0 + 248);
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v46 = v17;
        *v16 = 136315394;
        v18 = sub_23A66B368(0xD000000000000011, v15);
        v20 = sub_23A657E78(v18, v19, &v46);

        *(v16 + 4) = v20;
        *(v16 + 12) = 2080;
        *(v0 + 88) = v14;
        v21 = v14;
        v22 = sub_23A6DF634();
        v24 = sub_23A657E78(v22, v23, &v46);

        *(v16 + 14) = v24;
        _os_log_impl(&dword_23A63D000, v12, v13, "Error (%s: unexpected error [ %s ]", v16, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v17, -1, -1);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      (*(*(v0 + 224) + 8))(*(v0 + 184), *(v0 + 216));
    }

    v25 = *(v0 + 288);
    *(v0 + 32) = *(v0 + 256);
    *(v0 + 40) = 0;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    v44 = 0;
    v45 = *(v0 + 256);
  }

  v26 = *(v0 + 264);
  v27 = *(v0 + 168);
  v28 = *(v0 + 136);
  v29 = *(v0 + 144);
  v30 = *(v0 + 96);

  v31 = *(v29 + 8);
  v31(v27, v28);

  *(v30 + v26) = 0;
  v32 = *(v0 + 192);
  v33 = *(v0 + 200);
  v35 = *(v0 + 176);
  v34 = *(v0 + 184);
  v36 = *(v0 + 168);
  v37 = *(v0 + 136);
  v42 = *(v0 + 160);
  v43 = *(v0 + 128);
  v38 = *(v0 + 96);
  v39 = *(v0 + 104);

  v31(v35, v37);
  *v39 = v45;
  *(v39 + 8) = v44;

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_23A67C208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67C2AC, a3, 0);
}

uint64_t sub_23A67C2AC()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_23A67C3C0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C960, &qword_23A6E2050);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A6697CC;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  [v1 resetBatchStateWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67C3C0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 184) = v3;
  v4 = *(v1 + 168);
  if (v3)
  {
    v5 = sub_23A67C698;
  }

  else
  {
    v5 = sub_23A67C4E0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67C4E0()
{
  v1 = v0[22];
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v1, 1, v3) == 1)
  {
    sub_23A646DB0(v0[22], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v5 = v0[22];
    v6 = sub_23A6DECA4();
    v7 = sub_23A6DF8A4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23A63D000, v6, v7, "Result (resetBatchState): success", v8, 2u);
      MEMORY[0x23EE8A960](v8, -1, -1);
    }

    v9 = v0[22];

    (*(v4 + 8))(v9, v3);
  }

  v10 = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();
  v11 = v0[22];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23A67C698()
{
  v1 = v0[23];
  v2 = v0[20];
  swift_willThrow();
  sub_23A67EFA4();
  v3 = swift_allocError();
  sub_23A67E358(v1, 0xD000000000000011, 0x800000023A6E9420, v4);
  v0[18] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v5 = v0[22];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A67C78C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = v3;
  v4[9] = a3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = sub_23A6DE784();
  v4[10] = v5;
  v6 = *(v5 - 8);
  v4[11] = v6;
  v7 = *(v6 + 64) + 15;
  v4[12] = swift_task_alloc();
  v8 = sub_23A6DE574();
  v4[13] = v8;
  v9 = *(v8 - 8);
  v4[14] = v9;
  v4[15] = *(v9 + 64);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67C8F8, v3, 0);
}

uint64_t sub_23A67C8F8()
{
  v1 = *(v0 + 144);
  v2 = sub_23A6DCDF0();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 144);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 144), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 64);
    v8 = sub_23A6DCFB0();
    sub_23A6DCFBC(1, v7, 0xD000000000000021, 0x800000023A6E9440, v8, v9);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v12 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    v13 = *(v0 + 136);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v38 = *(v0 + 104);
    v39 = *(v0 + 120);
    v17 = *(v0 + 80);
    v16 = *(v0 + 88);
    v40 = *(v0 + 128);
    v18 = *(v0 + 64);
    sub_23A6DE4A4();
    v19 = swift_allocObject();
    *(v0 + 152) = v19;
    v19[2] = v11;
    v19[3] = v10;
    v36 = v18;
    v19[4] = v18;
    (*(v16 + 104))(v15, *MEMORY[0x277D43838], v17);

    v37 = sub_23A6DE774();
    (*(v16 + 8))(v15, v17);
    (*(v14 + 16))(v40, v13, v38);
    *(v0 + 176) = 0;
    v20 = (*(v14 + 80) + 24) & ~*(v14 + 80);
    v21 = (v39 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
    v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v0 + 160) = v23;
    *(v23 + 16) = v36;
    (*(v14 + 32))(v23 + v20, v40, v38);
    v24 = (v23 + v21);
    *v24 = &unk_23A6E21F0;
    v24[1] = v19;
    v25 = (v23 + v22);
    *v25 = 0xD000000000000021;
    v25[1] = 0x800000023A6E9440;
    v26 = v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
    *v26 = v37;
    *(v26 + 8) = *(v0 + 176);

    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_23A67CD24;
    v28 = *(v0 + 64);

    return sub_23A67DD4C(0xD000000000000021, 0x800000023A6E9440, 1, 1, &unk_23A6E21F8, v23, v0 + 16);
  }

  else
  {
    v30 = *(v0 + 72);
    *v30 = 8;
    *(v30 + 8) = 1;
    *(v0 + 32) = 8;
    *(v0 + 40) = 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
    v32 = *(v0 + 136);
    v31 = *(v0 + 144);
    v33 = *(v0 + 128);
    v34 = *(v0 + 96);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_23A67CD24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;

  if (v1)
  {
    v7 = v4[20];
    v8 = v4[8];

    return MEMORY[0x2822009F8](sub_23A67CEE8, v8, 0);
  }

  else
  {
    v10 = v4[19];
    v9 = v4[20];
    v12 = v4[17];
    v11 = v4[18];
    v13 = v4[16];
    v14 = v4[13];
    v15 = v4[14];
    v16 = v4[12];

    (*(v15 + 8))(v12, v14);

    v17 = *(v6 + 8);

    return v17(a1);
  }
}

uint64_t sub_23A67CEE8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);
  v5 = *(v0 + 72);

  (*(v4 + 8))(v2, v3);
  v6 = *(v0 + 24);
  *v5 = *(v0 + 16);
  *(v5 + 8) = v6;
  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 128);
  v10 = *(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_23A67CFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67D058, a5, 0);
}

uint64_t sub_23A67D058()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[21];
  v4 = sub_23A6DF614();
  v0[27] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A67D190;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA28, &qword_23A6E2358);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A679A10;
  v0[13] = &block_descriptor_1;
  v0[14] = v5;
  [v3 resolveBatchWithBatchDeletionToken:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A67D190()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 224) = v3;
  v4 = *(v1 + 200);
  if (v3)
  {
    v5 = sub_23A67D47C;
  }

  else
  {
    v5 = sub_23A67D2B0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67D2B0()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 144);

  v3 = sub_23A6DCDF0();
  sub_23A646D48(v3, v1, &qword_27DF9D240, qword_23A6E1D30);
  v4 = sub_23A6DECC4();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_23A646DB0(*(v0 + 208), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v6 = *(v0 + 208);
    v7 = sub_23A6DECA4();
    v8 = sub_23A6DF8A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23A63D000, v7, v8, "Result (resolveBatch): success", v9, 2u);
      MEMORY[0x23EE8A960](v9, -1, -1);
    }

    v10 = *(v0 + 208);

    (*(v5 + 8))(v10, v4);
  }

  v11 = *(v0 + 176);
  *(v0 + 160) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF774();
  v12 = *(v0 + 208);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_23A67D47C()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[22];
  swift_willThrow();

  sub_23A67EFA4();
  v4 = swift_allocError();
  sub_23A67E358(v1, 0xD000000000000021, 0x800000023A6E9440, v5);
  v0[19] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA30, &unk_23A6E2360);
  sub_23A6DF764();

  v6 = v0[26];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A67D574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 25) = a8;
  *(v8 + 136) = a7;
  *(v8 + 144) = v15;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 104) = a3;
  *(v8 + 112) = a4;
  *(v8 + 88) = a1;
  *(v8 + 96) = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();
  v11 = sub_23A6DE574();
  *(v8 + 160) = v11;
  v12 = *(v11 - 8);
  *(v8 + 168) = v12;
  *(v8 + 176) = *(v12 + 64);
  *(v8 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67D690, a1, 0);
}

uint64_t sub_23A67D690()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v6 = v0[13];
  v5 = v0[14];
  v16 = v0[11];
  (*(v4 + 16))(v2, v0[12], v3);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[24] = v9;
  (*(v4 + 32))(v9 + v7, v2, v3);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  v11 = *(MEMORY[0x277D43B00] + 4);

  v12 = swift_task_alloc();
  v0[25] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C9E8, &qword_23A6E2140);
  *v12 = v0;
  v12[1] = sub_23A67D824;
  v14 = MEMORY[0x277D83B88];

  return MEMORY[0x2821A5668](v0 + 8, &unk_23A6E2390, v9, v13, v14);
}

uint64_t sub_23A67D824()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v9 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 88);
    v5 = sub_23A67D9C4;
  }

  else
  {
    v6 = *(v2 + 192);
    v7 = *(v2 + 88);

    v5 = sub_23A67D94C;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67D94C()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[8];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_23A67D9C4()
{
  v39 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);

  *(v0 + 72) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 144);

    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    *v4 = v5;
    *(v4 + 8) = v6;
    *(v0 + 48) = v5;
    *(v0 + 56) = v6;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = *(v0 + 152);

    v8 = sub_23A6DCDF0();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 152), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 208);
      v12 = *(v0 + 152);
      v13 = *(v0 + 128);
      v14 = v11;

      v15 = sub_23A6DECA4();
      v16 = sub_23A6DF884();

      if (os_log_type_enabled(v15, v16))
      {
        v36 = *(v0 + 208);
        v18 = *(v0 + 120);
        v17 = *(v0 + 128);
        v19 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = v37;
        *v19 = 136315394;
        v20 = sub_23A66B368(v18, v17);
        v22 = sub_23A657E78(v20, v21, &v38);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        *(v0 + 80) = v36;
        v23 = v36;
        v24 = sub_23A6DF634();
        v26 = sub_23A657E78(v24, v25, &v38);

        *(v19 + 14) = v26;
        _os_log_impl(&dword_23A63D000, v15, v16, "Error (%s: unexpected error [ %s ]", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v37, -1, -1);
        MEMORY[0x23EE8A960](v19, -1, -1);
      }

      (*(v10 + 8))(*(v0 + 152), v9);
    }

    v27 = *(v0 + 208);
    v28 = *(v0 + 25);
    v30 = *(v0 + 136);
    v29 = *(v0 + 144);
    *(v0 + 32) = v30;
    v31 = v28 & 1;
    *(v0 + 40) = v28 & 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();

    *v29 = v30;
    *(v29 + 8) = v31;
  }

  v32 = *(v0 + 184);
  v33 = *(v0 + 152);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_23A67DD4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 96) = v7;
  *(v8 + 104) = a7;
  *(v8 + 80) = a5;
  *(v8 + 88) = a6;
  *(v8 + 25) = a4;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A67DDF8, v7, 0);
}

uint64_t sub_23A67DDF8()
{
  v30 = v0;
  v1 = *(v0 + 96);
  v2 = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  *(v0 + 120) = OBJC_IVAR____TtC15ProximityReader27PaymentCardReaderStoreActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = *(v0 + 112);
    v4 = sub_23A6DCDF0();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(*(v0 + 112), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = *(v0 + 64);

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v0 + 56);
        v15 = *(v0 + 64);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136315138;
        v19 = sub_23A66B368(v16, v15);
        v21 = sub_23A657E78(v19, v20, &v29);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v13, v14, "Error (%s: a previous request is running, returning busy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v6 + 8))(*(v0 + 112), v5);
    }

    v22 = *(v0 + 104);
    v23 = *(v0 + 25);
    v24 = *(v0 + 72);
    *(v0 + 32) = v24;
    v25 = v23 & 1;
    *(v0 + 40) = v23 & 1;
    sub_23A67EFA4();
    swift_willThrowTypedImpl();
    *v22 = v24;
    *(v22 + 8) = v25;
    v26 = *(v0 + 112);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v7 = *(v0 + 80);
    *(v1 + v2) = 1;
    v28 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_23A67E150;
    v10 = *(v0 + 88);

    return v28(v0 + 48, v0 + 16);
  }
}

uint64_t sub_23A67E150()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;

  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_23A67E2D8;
  }

  else
  {
    v5 = sub_23A67E264;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A67E264()
{
  v1 = v0[14];
  *(v0[12] + v0[15]) = 0;
  v2 = v0[6];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_23A67E2D8()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 24);
  *v2 = *(v0 + 16);
  *(v2 + 8) = v4;
  *(v3 + v1) = 0;
  v5 = *(v0 + 112);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_23A67E358@<X0>(uint64_t *a1@<X0>, NSObject *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_23A6DE784();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v62 - v21;
  v69 = a1;
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  sub_23A6DE7B4();
  if (swift_dynamicCast())
  {
    v67 = a2;
    v24 = v71;
    sub_23A6DB238(&v69);
    v25 = v69;
    v26 = v70;
    v27 = sub_23A6DCDF0();
    sub_23A646D48(v27, v22, &qword_27DF9D240, qword_23A6E1D30);
    v28 = sub_23A6DECC4();
    v29 = *(v28 - 8);
    if ((*(v29 + 48))(v22, 1, v28) == 1)
    {

      result = sub_23A646DB0(v22, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {

      v34 = sub_23A6DECA4();
      v35 = sub_23A6DF884();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        LODWORD(v66) = v35;
        v37 = v36;
        v65 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v69 = v68;
        *v37 = 136315394;
        v38 = sub_23A66B368(v67, a3);
        v40 = sub_23A657E78(v38, v39, &v69);
        v67 = v34;
        v41 = a4;
        v42 = v40;

        *(v37 + 4) = v42;
        a4 = v41;
        *(v37 + 12) = 2114;
        sub_23A67EFA4();
        swift_allocError();
        *v43 = v25;
        *(v43 + 8) = v26;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v37 + 14) = v44;
        v45 = v65;
        *v65 = v44;
        v46 = v67;
        _os_log_impl(&dword_23A63D000, v67, v66, "Error (%s: %{public}@", v37, 0x16u);
        sub_23A646DB0(v45, &qword_27DF9C8B0, &qword_23A6E4ED0);
        MEMORY[0x23EE8A960](v45, -1, -1);
        v47 = v68;
        __swift_destroy_boxed_opaque_existential_1Tm(v68);
        MEMORY[0x23EE8A960](v47, -1, -1);
        MEMORY[0x23EE8A960](v37, -1, -1);
      }

      else
      {
      }

      result = (*(v29 + 8))(v22, v28);
    }
  }

  else
  {
    v68 = a4;
    v31 = sub_23A6DCDF0();
    sub_23A646D48(v31, v19, &qword_27DF9D240, qword_23A6E1D30);
    v32 = sub_23A6DECC4();
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v19, 1, v32) == 1)
    {
      sub_23A646DB0(v19, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v65 = v32;
      v67 = a2;
      v48 = a1;

      v49 = a3;
      v50 = sub_23A6DECA4();
      v51 = sub_23A6DF884();

      v64 = v51;
      v66 = v50;
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v69 = v63;
        *v52 = 136315394;
        v53 = sub_23A66B368(v67, v49);
        v55 = sub_23A657E78(v53, v54, &v69);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        v71 = a1;
        v56 = a1;
        v57 = sub_23A6DF634();
        v59 = sub_23A657E78(v57, v58, &v69);

        *(v52 + 14) = v59;
        v60 = v66;
        _os_log_impl(&dword_23A63D000, v66, v64, "Error (%s: unexpected error [ %s ]", v52, 0x16u);
        v61 = v63;
        swift_arrayDestroy();
        MEMORY[0x23EE8A960](v61, -1, -1);
        MEMORY[0x23EE8A960](v52, -1, -1);
      }

      else
      {
      }

      (*(v33 + 8))(v19, v65);
    }

    (*(v9 + 104))(v13, *MEMORY[0x277D43838], v8);
    v25 = sub_23A6DE774();
    result = (*(v9 + 8))(v13, v8);
    v26 = 0;
    a4 = v68;
  }

  *a4 = v25;
  *(a4 + 8) = v26;
  return result;
}

void sub_23A67E98C(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_23A681B6C((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 24));
}

void sub_23A67E9F4()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_23A681BE4((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_23A67EA48(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_23A67EA68, 0, 0);
}

uint64_t sub_23A67EA68()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_23A681CB0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  v3 = v0[1];

  return v3();
}

uint64_t sub_23A67EB28(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *a1 + 64;
  v5 = 1 << *(*a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(*a1 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = *(*(v3 + 56) + ((v11 << 9) | (8 * v12)));

      sub_23A6AAF7C(a2);

      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }
}

uint64_t sub_23A67EDC8(int a1, void *aBlock, uint64_t a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_23A6DEA74();
  v3[4] = sub_23A6DF734();

  return MEMORY[0x2822009F8](sub_23A67EE64, 0, 0);
}

uint64_t sub_23A67EE64()
{
  v1 = v0[4];
  v2 = *(v0[2] + 16);
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_23A682528((v2 + 16));
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  os_unfair_lock_unlock((v2 + 24));

  v4[2](v4);
  _Block_release(v4);
  v6 = v0[1];

  return v6();
}

uint64_t sub_23A67EF6C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_23A67EFA4()
{
  result = qword_27DF9C9F0;
  if (!qword_27DF9C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9C9F0);
  }

  return result;
}

uint64_t sub_23A67EFF8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return sub_23A679474(a1, a2, v2);
}

uint64_t sub_23A67F0A0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_23A647234;

  return v7();
}

uint64_t sub_23A67F188(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_23A647140;

  return v8();
}

uint64_t sub_23A67F270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_23A646D48(a3, v26 - v12, &qword_27DF9C7F0, &qword_23A6E25B0);
  v14 = sub_23A6DF7B4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_23A646DB0(v13, &qword_27DF9C7F0, &qword_23A6E25B0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23A6DF7A4();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_23A6DF754();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_23A6DF654() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);

    return v24;
  }

LABEL_8:
  sub_23A646DB0(a3, &qword_27DF9C7F0, &qword_23A6E25B0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23A67F56C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_23A6DFA34();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_23A682460(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x23EE89F30](v18, a2);
      sub_23A6824BC(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_23A6824BC(a2);
    sub_23A682460(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_23A682460(a2, v18);
    v17 = *v3;
    sub_23A67F918(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_23A67F6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  result = sub_23A6DFA64();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_23A6DFA34();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_23A67F918(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23A67F6B8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_23A67FA90();
      goto LABEL_12;
    }

    sub_23A67FC08(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_23A6DFA34();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_23A682460(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x23EE89F30](v20, v6);
      result = sub_23A6824BC(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23A6DFC44();
  __break(1u);
  return result;
}

void *sub_23A67FA90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  v2 = *v0;
  v3 = sub_23A6DFA54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_23A682460(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_23A67FC08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA58, &qword_23A6E23A8);
  result = sub_23A6DFA64();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_23A682460(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_23A6DFA34();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

unint64_t sub_23A67FE34(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_23A6DE2F4();
  sub_23A682230(&qword_27DF9CA10);
  v5 = sub_23A6DF5D4();

  return sub_23A68080C(a1, v5);
}

uint64_t sub_23A67FEB8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_23A6DE2F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA18, &qword_23A6E2350);
  v44 = a2;
  result = sub_23A6DFB74();
  v15 = result;
  if (*(v12 + 16))
  {
    v48 = v11;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v12;
    v43 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v47 = *(v43 + 72);
      v29 = v28 + v47 * v27;
      if (v44)
      {
        (*v45)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      else
      {
        (*v41)(v48, v29, v6);
        v46 = *(*(v12 + 56) + 8 * v27);
      }

      v30 = *(v15 + 40);
      sub_23A682230(&qword_27DF9CA10);
      result = sub_23A6DF5D4();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v45)(*(v15 + 48) + v47 * v23, v48, v6);
      *(*(v15 + 56) + 8 * v23) = v46;
      ++*(v15 + 16);
      v12 = v42;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

unint64_t sub_23A680280(int64_t a1, uint64_t a2)
{
  v44 = sub_23A6DE2F4();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v44, v6);
  v43 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v45 = v8;
    v14 = sub_23A6DF9C4();
    v15 = v44;
    v8 = v45;
    v16 = v13;
    v42 = (v14 + 1) & v13;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v40 = a2 + 64;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v12;
      v22 = v43;
      v23 = v16;
      v24 = v17;
      v25 = v8;
      v41(v43, *(v8 + 48) + v19 * v12, v15);
      v26 = *(v25 + 40);
      sub_23A682230(&qword_27DF9CA10);
      v27 = sub_23A6DF5D4();
      result = (*v39)(v22, v15);
      v16 = v23;
      v28 = v27 & v23;
      if (a1 >= v42)
      {
        if (v28 >= v42 && a1 >= v28)
        {
LABEL_15:
          v8 = v45;
          v31 = *(v45 + 48);
          result = v31 + v20 * a1;
          v17 = v24;
          if (v20 * a1 < v21 || (v19 = v20, result >= v31 + v21 + v20))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v45;
            v19 = v20;
            v16 = v23;
            v10 = v40;
          }

          else
          {
            v10 = v40;
            if (v20 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v8 = v45;
              v19 = v20;
              v16 = v23;
            }
          }

          v32 = *(v8 + 56);
          v33 = (v32 + 8 * a1);
          v34 = (v32 + 8 * v12);
          if (a1 != v12 || v33 >= v34 + 1)
          {
            *v33 = *v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v28 >= v42 || a1 >= v28)
      {
        goto LABEL_15;
      }

      v17 = v24;
      v10 = v40;
      v19 = v20;
      v8 = v45;
LABEL_4:
      v12 = (v12 + 1) & v16;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v8 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v37;
    ++*(v8 + 36);
  }

  return result;
}

uint64_t sub_23A680588(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23A6DE2F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_23A67FE34(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_23A6809B8();
      goto LABEL_7;
    }

    sub_23A67FEB8(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_23A67FE34(a2);
    if ((v20 & 1) == (v28 & 1))
    {
      v16 = v27;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_23A680754(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_23A6DFC54();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

uint64_t sub_23A680754(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23A6DE2F4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

unint64_t sub_23A68080C(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_23A6DE2F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
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
      sub_23A682230(&qword_27DF9CA20);
      v17 = sub_23A6DF604();
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

char *sub_23A6809B8()
{
  v1 = v0;
  v35 = sub_23A6DE2F4();
  v37 = *(v35 - 8);
  v2 = *(v37 + 64);
  MEMORY[0x28223BE20](v35, v3);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA18, &qword_23A6E2350);
  v5 = *v0;
  v6 = sub_23A6DFB64();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v36 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v38 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v37;
        v22 = *(v37 + 72) * v20;
        v24 = v34;
        v23 = v35;
        (*(v37 + 16))(v34, *(v5 + 48) + v22, v35);
        v25 = *(*(v5 + 56) + 8 * v20);
        v26 = v5;
        v27 = v36;
        (*(v21 + 32))(*(v36 + 48) + v22, v24, v23);
        v28 = *(v27 + 56);
        v5 = v26;
        *(v28 + 8 * v20) = v25;

        v15 = v38;
      }

      while (v38);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v36;
        goto LABEL_18;
      }

      v19 = *(v31 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v38 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_23A680C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v15 = *a8;
  v16 = *(a8 + 8);
  v17 = swift_task_alloc();
  *(v8 + 24) = v17;
  *v17 = v8;
  v17[1] = sub_23A680D30;

  return sub_23A67D574(a2, a3, a4, a5, a6, a7, v15, v16);
}

uint64_t sub_23A680D30(uint64_t a1)
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

void sub_23A680E54()
{
  v2 = *(sub_23A6DE574() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_23A647234;

  JUMPOUT(0x23A680C38);
}

uint64_t sub_23A680FCC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_23A647140;

  return sub_23A67AA0C(a1, a2, v7, v6);
}

uint64_t sub_23A68107C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = *a1;
  return MEMORY[0x2822009F8](sub_23A6810A8, 0, 0);
}

uint64_t sub_23A6810A8()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_23A6DE544();
  v9 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6811A4;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];

  return v9(v5, v7);
}

uint64_t sub_23A6811A4()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A682540, 0, 0);
}

uint64_t sub_23A6812A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  v5[6] = *a1;
  return MEMORY[0x2822009F8](sub_23A6812CC, 0, 0);
}

uint64_t sub_23A6812CC()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_23A6DE544();
  v9 = (v1 + *v1);
  v3 = v1[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23A6813C8;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[2];

  return v9(v5, v7);
}

uint64_t sub_23A6813C8()
{
  v1 = *(*v0 + 56);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A6814C4, 0, 0);
}

uint64_t sub_23A6814C4()
{
  v1 = *(v0 + 24);
  sub_23A6DE524();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A681524(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A6812A0(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A681658(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_23A647234;

  return sub_23A67C208(a1, a2, v2);
}

uint64_t sub_23A681700(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A68107C(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A681834(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23A647234;

  return sub_23A67CFB0(a1, a2, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  v1 = sub_23A6DE574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 9, v3 | 7);
}

void sub_23A6819F4()
{
  v2 = *(sub_23A6DE574() - 8);
  v3 = (*(v2 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_23A647140;

  JUMPOUT(0x23A680C38);
}

uint64_t sub_23A681B6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23A6DE2E4();

  v5 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_23A680588(v2, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

unint64_t sub_23A681BE4(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  result = sub_23A67FE34(v3);
  if (v6)
  {
    v7 = result;
    v8 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23A6809B8();
      v10 = v14;
    }

    v11 = *(v10 + 48);
    v12 = sub_23A6DE2F4();
    (*(*(v12 - 8) + 8))(v11 + *(*(v12 - 8) + 72) * v7, v12);
    v13 = *(*(v10 + 56) + 8 * v7);

    result = sub_23A680280(v7, v10);
    *a1 = v10;
  }

  return result;
}

uint64_t type metadata accessor for PaymentCardReaderStoreActor()
{
  result = qword_27DF9EEA0;
  if (!qword_27DF9EEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23A681D30()
{
  sub_23A681DF0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23A681DF0()
{
  if (!qword_27DF9CA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF9C9F8, qword_23A6E2148);
    v0 = sub_23A6DEA24();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF9CA00);
    }
  }
}

uint64_t sub_23A681E60(uint64_t a1, int a2)
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

uint64_t sub_23A681E80(uint64_t result, int a2, int a3)
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

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27DF9CA08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27DF9CA08);
    }
  }
}

uint64_t sub_23A681EF8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23A647234;

  return sub_23A67EDC8(v2, v3, v4);
}

uint64_t sub_23A681FAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23A647234;

  return sub_23A67F0A0(v2, v3, v5);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23A6820AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23A647234;

  return sub_23A67F188(a1, v4, v5, v7);
}

uint64_t sub_23A682178(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_23A647234;

  return sub_23A64E6E8(a1, v5);
}

uint64_t sub_23A682230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_23A6DE2F4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_10Tm()
{
  v1 = sub_23A6DE574();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_23A68232C(void *a1, uint64_t a2)
{
  v6 = *(sub_23A6DE574() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_23A647234;

  return sub_23A68107C(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_23A682544()
{
  v0 = type metadata accessor for ProximityReaderDiscoveryActor(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_23A68260C();
  qword_27DFA5E98 = v3;
  return result;
}

uint64_t sub_23A682584()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  sub_23A68260C();
  return v3;
}

uint64_t *sub_23A6825BC()
{
  if (qword_27DF9EEB0 != -1)
  {
    swift_once();
  }

  return &qword_27DFA5E98;
}

uint64_t sub_23A68260C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v21 - v6;
  swift_defaultActor_initialize();
  *(v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_service) = 0;
  *(v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning) = 0;
  v8 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager;
  type metadata accessor for LayoutBundleManager();
  *(v0 + v8) = LayoutBundleManager.__allocating_init()();
  v9 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  type metadata accessor for ProximityReaderDiscoveryAnalyticsManager();
  *(v0 + v9) = sub_23A6C1E6C();
  v10 = (v0 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  *v10 = sub_23A6DEBE4();
  v10[1] = v11;
  sub_23A6DE674();
  v12 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v13 = sub_23A6DF614();

  v14 = [v12 initWithMachServiceName:v13 options:4096];

  sub_23A650718();
  swift_allocError();
  *v15 = 5;
  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA68, qword_23A6E23F0);
  sub_23A6DEA04();
  (*(v3 + 32))(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection, v7, v2);
  v17 = sub_23A6DEA14();
  v18 = [objc_opt_self() interfaceWithProtocol_];
  [v17 setRemoteObjectInterface_];

  v19 = sub_23A6DEA14();
  [v19 activate];

  return v1;
}

uint64_t sub_23A68288C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v29 - v11;
  v13 = sub_23A6DCE38();
  sub_23A646D48(v13, v12, &qword_27DF9D240, qword_23A6E1D30);
  v14 = sub_23A6DECC4();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v12, 1, v14) == 1)
  {
    sub_23A646DB0(v12, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v16 = sub_23A6507C0();
    v17 = sub_23A6DCFB0();
    sub_23A6DCFBC(v16 & 1, v1, 0x74696E696564, 0xE600000000000000, v17, v18);

    (*(v15 + 8))(v12, v14);
  }

  v19 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection;
  (*(v3 + 16))(v7, v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection, v2);
  v20 = sub_23A6DEA14();
  v21 = *(v3 + 8);
  v21(v7, v2);
  [v20 invalidate];

  v22 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager;
  v23 = *(**(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager) + 144);

  v23(v24);

  v21((v1 + v19), v2);
  v25 = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_service);
  swift_unknownObjectRelease();
  v26 = *(v1 + v22);

  v27 = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region + 8);

  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_23A682B84()
{
  sub_23A68288C();

  return swift_defaultActor_deallocate();
}

uint64_t sub_23A682BB0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A682CB4, v1, 0);
}

uint64_t sub_23A682CB4()
{
  v1 = v0[7];
  v2 = sub_23A6DCE38();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[7];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[7], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[3];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x28746E65746E6F63, 0xEF293A6369706F74, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[3];
  sub_23A68D8F4(v0[6]);
  v12 = v0[6];
  v13 = swift_task_alloc();
  v0[8] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v0[9] = v14;
  *v14 = v0;
  v14[1] = sub_23A682F18;
  v15 = v0[2];
  v16 = v0[3];

  return sub_23A68CAB4(v15, 0x28746E65746E6F63, 0xEF293A6369706F74, &unk_23A6E2410, v13);
}

uint64_t sub_23A682F18()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v9 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A683040;
  }

  else
  {
    v6 = *(v2 + 64);
    v7 = *(v2 + 24);

    v5 = sub_23A6920D0;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A683040()
{
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);
  v5 = v0[10];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A6830DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_23A6830FC, 0, 0);
}

uint64_t sub_23A6830FC()
{
  v1 = *(MEMORY[0x277D43B08] + 4);
  v2 = swift_task_alloc();
  v0[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *v2 = v0;
  v2[1] = sub_23A6831CC;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2821A5670](v4, sub_23A691EB4, 0, v3, &type metadata for ProximityReaderDiscovery.Content);
}

uint64_t sub_23A6831CC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23A650328, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_23A683300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB50, &qword_23A6E26E8) - 8) + 64) + 15;
  v5[34] = swift_task_alloc();
  v8 = sub_23A6DE734();
  v5[35] = v8;
  v9 = *(v8 - 8);
  v5[36] = v9;
  v10 = *(v9 + 64) + 15;
  v5[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A683448, 0, 0);
}

uint64_t sub_23A683448()
{
  v1 = v0[29];
  sub_23A6DE974();
  sub_23A6DE984();
  v2 = sub_23A6DF614();
  v0[38] = v2;

  v3 = sub_23A6DF614();
  v0[39] = v3;

  v0[2] = v0;
  v0[7] = v0 + 22;
  v0[3] = sub_23A6835CC;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB20, &qword_23A6E26B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A683EA8;
  v0[13] = &block_descriptor_134;
  v0[14] = v4;
  [v1 contentWithTopic:v2 subtopic:v3 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A6835CC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_23A683A30;
  }

  else
  {
    v3 = sub_23A6836DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A6836DC()
{
  v35 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);
  v4 = *(v0 + 272);
  v5 = *(v0 + 176);
  v6 = *(v0 + 184);

  sub_23A690358(&qword_27DF9CB38, MEMORY[0x277D43778]);
  sub_23A6DE204();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v7 = *(v0 + 264);
    sub_23A646DB0(*(v0 + 272), &qword_27DF9CB50, &qword_23A6E26E8);
    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v17 = *(v0 + 264);
      v18 = sub_23A6DECA4();
      v19 = sub_23A6DF884();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_23A63D000, v18, v19, "content - content is nil", v20, 2u);
        MEMORY[0x23EE8A960](v20, -1, -1);
      }

      v21 = *(v0 + 264);

      (*(v10 + 8))(v21, v9);
    }

    v22 = *(v0 + 240);
    sub_23A650718();
    v23 = swift_allocError();
    *v24 = 5;
    *(v0 + 224) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    sub_23A691B9C(v5, v6);
  }

  else
  {
    v12 = *(v0 + 288);
    v11 = *(v0 + 296);
    v13 = *(v0 + 280);
    v14 = *(v0 + 240);
    (*(v12 + 32))(v11, *(v0 + 272), v13);
    sub_23A6BB7B8(&v32);
    v15 = v33;
    v16 = v34;
    *(v0 + 144) = v32;
    *(v0 + 160) = v15;
    *(v0 + 168) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF774();
    sub_23A691B9C(v5, v6);
    (*(v12 + 8))(v11, v13);
  }

  v25 = *(v0 + 296);
  v26 = *(v0 + 264);
  v27 = *(v0 + 272);
  v29 = *(v0 + 248);
  v28 = *(v0 + 256);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23A683A30()
{
  v43 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 320);
  v3 = *(v0 + 304);
  swift_willThrow();

  *(v0 + 192) = v2;
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 256);

    v6 = *(v0 + 200);
    v7 = sub_23A6DCE38();
    sub_23A646D48(v7, v5, &qword_27DF9D240, qword_23A6E1D30);
    v8 = sub_23A6DECC4();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(v5, 1, v8) == 1)
    {
      sub_23A646DB0(*(v0 + 256), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v14 = *(v0 + 256);
      v15 = sub_23A6DECA4();
      v16 = sub_23A6DF884();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v42 = v18;
        *v17 = 136315138;
        v19 = sub_23A6DE934();
        v21 = sub_23A657E78(v19, v20, &v42);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_23A63D000, v15, v16, "content - error: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v9 + 8))(*(v0 + 256), v8);
    }

    v22 = *(v0 + 240);
    sub_23A650718();
    v23 = swift_allocError();
    sub_23A6BB890(v6, v24);
    *(v0 + 216) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    v25 = *(v0 + 192);
  }

  else
  {
    v10 = *(v0 + 248);

    v11 = sub_23A6DCE38();
    sub_23A646D48(v11, v10, &qword_27DF9D240, qword_23A6E1D30);
    v12 = sub_23A6DECC4();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(v10, 1, v12) == 1)
    {
      sub_23A646DB0(*(v0 + 248), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v26 = *(v0 + 248);
      v27 = sub_23A6DECA4();
      v28 = sub_23A6DF884();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_23A63D000, v27, v28, "content - unknown error", v29, 2u);
        MEMORY[0x23EE8A960](v29, -1, -1);
      }

      v30 = *(v0 + 248);

      (*(v13 + 8))(v30, v12);
    }

    v31 = *(v0 + 320);
    v32 = *(v0 + 240);
    sub_23A650718();
    v33 = swift_allocError();
    *v34 = 5;
    *(v0 + 208) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB48, &qword_23A6E26D0);
    sub_23A6DF764();
    v25 = v31;
  }

  v35 = *(v0 + 296);
  v36 = *(v0 + 264);
  v37 = *(v0 + 272);
  v39 = *(v0 + 248);
  v38 = *(v0 + 256);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_23A683EA8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_23A6DE234();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_23A683F90()
{
  v1[2] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A684094, v0, 0);
}

uint64_t sub_23A684094()
{
  v1 = v0[6];
  v2 = sub_23A6DCE38();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[6];
  if (v5 == 1)
  {
    sub_23A646DB0(v0[6], &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = v0[2];
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0x4C746E65746E6F63, 0xED00002928747369, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = v0[2];
  sub_23A68D8F4(v0[5]);
  v12 = v0[5];
  v13 = swift_task_alloc();
  v0[7] = v13;
  *(v13 + 16) = v12;
  v14 = swift_task_alloc();
  v0[8] = v14;
  *v14 = v0;
  v14[1] = sub_23A6842F8;
  v15 = v0[2];

  return sub_23A68D020(0x4C746E65746E6F63, 0xED00002928747369, &unk_23A6E2430, v13);
}

uint64_t sub_23A6842F8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = v4[2];
    v8 = sub_23A6844C4;
  }

  else
  {
    v9 = v4[7];
    v10 = v4[2];
    v4[10] = a1;

    v8 = sub_23A684438;
    v7 = v10;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_23A684438()
{
  v1 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_23A6844C4()
{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];

  (*(v3 + 8))(v2, v4);
  v5 = v0[9];
  v7 = v0[5];
  v6 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A684560(uint64_t a1)
{
  v3 = *(MEMORY[0x277D43B08] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB10, &qword_23A6E2698);
  *v4 = v1;
  v4[1] = sub_23A647140;

  return MEMORY[0x2821A5670](a1, sub_23A684654, 0, v5, v6);
}

uint64_t sub_23A684684(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v25 - v18;
  v20 = *a1;
  v21 = sub_23A6DF7B4();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  (*(v10 + 16))(v14, a2, v9);
  v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = v20;
  (*(v10 + 32))(&v23[v22], v14, v9);
  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v19, a6, v23);
}

uint64_t sub_23A684868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[27] = a4;
  v5[28] = a5;
  v6 = sub_23A6DE734();
  v5[29] = v6;
  v7 = *(v6 - 8);
  v5[30] = v7;
  v8 = *(v7 + 64) + 15;
  v5[31] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A684978, 0, 0);
}

uint64_t sub_23A684978()
{
  v1 = v0[27];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_23A684A94;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB20, &qword_23A6E26B8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A683EA8;
  v0[13] = &block_descriptor_123;
  v0[14] = v2;
  [v1 contentListWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A684A94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_23A684F58;
  }

  else
  {
    v3 = sub_23A684BA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23A684BA4()
{
  v44 = v0;
  v1 = v0[18];
  v2 = v0[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB28, &qword_23A6E26C0);
  sub_23A691E00();
  sub_23A6DE204();
  v3 = v0[24];
  if (v3)
  {
    v38 = v2;
    v39 = v1;
    v4 = *(v3 + 16);
    v37 = v0[24];
    if (v4)
    {
      v5 = v0[30];
      v41 = *(v5 + 16);
      v6 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v40 = *(v5 + 72);
      v7 = (v5 + 8);
      v8 = MEMORY[0x277D84F90];
      v42 = v0;
      do
      {
        v9 = v0[31];
        v10 = v0[29];
        v41(v9, v6, v10);
        sub_23A6BB7B8(v43);
        (*v7)(v9, v10);
        v12 = v43[0];
        v11 = v43[1];
        v13 = v43[2];
        v14 = v43[3];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_23A68FF4C(0, *(v8 + 2) + 1, 1, v8);
        }

        v16 = *(v8 + 2);
        v15 = *(v8 + 3);
        if (v16 >= v15 >> 1)
        {
          v8 = sub_23A68FF4C((v15 > 1), v16 + 1, 1, v8);
        }

        *(v8 + 2) = v16 + 1;
        v17 = &v8[32 * v16];
        *(v17 + 4) = v12;
        *(v17 + 5) = v11;
        *(v17 + 6) = v13;
        *(v17 + 7) = v14;
        v6 += v40;
        --v4;
        v0 = v42;
      }

      while (v4);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    v22 = v0[28];

    v0[26] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF774();
    v2 = v38;
    v1 = v39;
  }

  else
  {
    v18 = v0[34];
    v19 = sub_23A6DCE38();
    sub_23A646D48(v19, v18, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) == 1)
    {
      sub_23A646DB0(v0[34], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v23 = v0[34];
      v24 = sub_23A6DECA4();
      v25 = sub_23A6DF884();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_23A63D000, v24, v25, "contentList - content list is nil", v26, 2u);
        MEMORY[0x23EE8A960](v26, -1, -1);
      }

      v27 = v0[34];

      (*(v21 + 8))(v27, v20);
    }

    v28 = v0[28];
    sub_23A650718();
    v29 = swift_allocError();
    *v30 = 5;
    v0[25] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
  }

  sub_23A691B9C(v1, v2);
  v32 = v0[33];
  v31 = v0[34];
  v34 = v0[31];
  v33 = v0[32];

  v35 = v0[1];

  return v35();
}

uint64_t sub_23A684F58()
{
  v40 = v0;
  v1 = *(v0 + 280);
  swift_willThrow();
  *(v0 + 160) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 264);

    v4 = *(v0 + 168);
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v3, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v3, 1, v6) == 1)
    {
      sub_23A646DB0(*(v0 + 264), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = *(v0 + 264);
      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v39 = v16;
        *v15 = 136315138;
        v17 = sub_23A6DE934();
        v19 = sub_23A657E78(v17, v18, &v39);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_23A63D000, v13, v14, "contentList - error: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x23EE8A960](v16, -1, -1);
        MEMORY[0x23EE8A960](v15, -1, -1);
      }

      (*(v7 + 8))(*(v0 + 264), v6);
    }

    v20 = *(v0 + 224);
    sub_23A650718();
    v21 = swift_allocError();
    sub_23A6BB890(v4, v22);
    *(v0 + 184) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
    v23 = *(v0 + 160);
  }

  else
  {
    v8 = *(v0 + 256);

    v9 = sub_23A6DCE38();
    sub_23A646D48(v9, v8, &qword_27DF9D240, qword_23A6E1D30);
    v10 = sub_23A6DECC4();
    v11 = *(v10 - 8);
    if ((*(v11 + 48))(v8, 1, v10) == 1)
    {
      sub_23A646DB0(*(v0 + 256), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v24 = *(v0 + 256);
      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF884();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23A63D000, v25, v26, "contentList - unknown error", v27, 2u);
        MEMORY[0x23EE8A960](v27, -1, -1);
      }

      v28 = *(v0 + 256);

      (*(v11 + 8))(v28, v10);
    }

    v29 = *(v0 + 280);
    v30 = *(v0 + 224);
    sub_23A650718();
    v31 = swift_allocError();
    *v32 = 5;
    *(v0 + 176) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CB18, &qword_23A6E26A0);
    sub_23A6DF764();
    v23 = v29;
  }

  v34 = *(v0 + 264);
  v33 = *(v0 + 272);
  v36 = *(v0 + 248);
  v35 = *(v0 + 256);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_23A6853B8(uint64_t *a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *(v3 + 32) = v5;
  v6 = *(v5 - 8);
  *(v3 + 40) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a1;
  *(v3 + 56) = v9;
  *(v3 + 64) = v10;
  *(v3 + 72) = *(a1 + 1);
  *(v3 + 88) = a1[3];

  return MEMORY[0x2822009F8](sub_23A6854D4, v2, 0);
}

uint64_t sub_23A6854D4()
{
  v1 = *(v0 + 56);
  v2 = sub_23A6DCE38();
  sub_23A646D48(v2, v1, &qword_27DF9D240, qword_23A6E1D30);
  v3 = sub_23A6DECC4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = *(v0 + 56);
  if (v5 == 1)
  {
    sub_23A646DB0(*(v0 + 56), &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = sub_23A6507C0();
    v9 = sub_23A6DCFB0();
    sub_23A6DCFBC(v8 & 1, v7, 0xD000000000000017, 0x800000023A6E9730, v9, v10);

    (*(v4 + 8))(v6, v3);
  }

  v11 = *(v0 + 24);
  sub_23A68D8F4(*(v0 + 48));
  v12 = *(v0 + 88);
  v21 = *(v0 + 72);
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);
  v17 = swift_task_alloc();
  *(v0 + 96) = v17;
  *(v17 + 16) = v15;
  *(v17 + 24) = v14;
  *(v17 + 32) = v16;
  *(v17 + 40) = v13;
  *(v17 + 48) = v21;
  *(v17 + 64) = v12;
  v18 = swift_task_alloc();
  *(v0 + 104) = v18;
  *v18 = v0;
  v18[1] = sub_23A685748;
  v19 = *(v0 + 24);

  return sub_23A68D3F4(v18, 0xD000000000000017, 0x800000023A6E9730, &unk_23A6E2450, v17);
}

uint64_t sub_23A685748()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 24);
    v5 = sub_23A6858F8;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 24);

    v5 = sub_23A685870;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A685870()
{
  v1 = v0[7];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_23A6858F8()
{
  v1 = v0[12];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];

  (*(v3 + 8))(v2, v4);
  v5 = v0[14];
  v7 = v0[6];
  v6 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_23A685994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a2;
  return MEMORY[0x2822009F8](sub_23A6859BC, a2, 0);
}

uint64_t sub_23A6859BC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[4];
  v6 = v0[2];
  v7 = sub_23A6DEBE4();
  v8 = (v6 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v9 = *(v6 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region + 8);
  *v8 = v7;
  v8[1] = v10;

  v11 = swift_allocObject();
  v0[9] = v11;
  v11[2] = v6;
  v11[3] = v5;
  v11[4] = v4;
  v11[5] = v3;
  v11[6] = v2;
  v11[7] = v1;
  v12 = *(MEMORY[0x277D43B08] + 4);

  v13 = v5;

  v14 = swift_task_alloc();
  v0[10] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
  *v14 = v0;
  v14[1] = sub_23A685B20;
  v16 = v0[3];
  v17 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821A5670](v15, sub_23A691400, v11, v15, v17);
}

uint64_t sub_23A685B20()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 16);
    v5 = sub_23A685C60;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 16);

    v5 = sub_23A685C48;
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_23A685C60()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_23A685CC4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a7;
  v37 = a8;
  v34 = a5;
  v35 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8, v20);
  v22 = &v32 - v21;
  v33 = &v32 - v21;
  v23 = *a1;
  v24 = sub_23A6DF7B4();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  v25 = v12;
  (*(v13 + 16))(v17, a2, v12);
  v26 = (*(v13 + 80) + 88) & ~*(v13 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  *(v27 + 4) = a3;
  *(v27 + 5) = a4;
  v28 = v35;
  *(v27 + 6) = v34;
  *(v27 + 7) = v28;
  v29 = v37;
  *(v27 + 8) = v36;
  *(v27 + 9) = v29;
  *(v27 + 10) = v23;
  (*(v13 + 32))(&v27[v26], v17, v25);

  v30 = a4;

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v33, &unk_23A6E25F0, v27);
}

uint64_t sub_23A685F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v19;
  *(v8 + 56) = v18;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  *(v8 + 80) = v10;
  v11 = *(v10 - 8);
  *(v8 + 88) = v11;
  *(v8 + 96) = *(v11 + 64);
  *(v8 + 104) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v14 = swift_task_alloc();
  v15 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  *(v8 + 120) = v14;
  *(v8 + 128) = v15;

  return MEMORY[0x2822009F8](sub_23A686074, a4, 0);
}

uint64_t sub_23A686074()
{
  v1 = *(v0[2] + v0[16]);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23A68611C;
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];

  return sub_23A68AECC(v5, v3, v4, v1);
}

uint64_t sub_23A68611C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_23A68621C, 0, 0);
}

uint64_t sub_23A68621C()
{
  v1 = v0[18];
  if (v1)
  {
    v3 = v0[13];
    v2 = v0[14];
    v4 = v0[11];
    v40 = v0[12];
    v6 = v0[9];
    v5 = v0[10];
    v7 = v0[8];
    v43 = v0[7];
    v45 = v2;
    v8 = v0[5];
    v41 = v0[4];
    v42 = v0[6];
    v9 = v0[2];
    v10 = sub_23A6DF7B4();
    (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    (*(v4 + 16))(v3, v6, v5);
    v11 = (*(v4 + 80) + 88) & ~*(v4 + 80);
    v12 = swift_allocObject();
    *(v12 + 2) = 0;
    *(v12 + 3) = 0;
    *(v12 + 4) = v7;
    *(v12 + 5) = v41;
    *(v12 + 6) = v8;
    *(v12 + 7) = v42;
    *(v12 + 8) = v43;
    *(v12 + 9) = v9;
    *(v12 + 10) = v1;
    (*(v4 + 32))(&v12[v11], v3, v5);
    swift_unknownObjectRetain();

    v13 = v1;
    v14 = sub_23A64A15C(0, 0, v45, &unk_23A6E2600, v12);
    v0[19] = v14;
    v15 = swift_allocObject();
    v0[20] = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = v14;
    sub_23A6DF794();
    swift_unknownObjectRetain();

    v0[21] = sub_23A6DF784();
    v17 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A6866B0, v17, v16);
  }

  else
  {
    v18 = v0[15];
    v19 = sub_23A6DCE38();
    sub_23A646D48(v19, v18, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v18, 1, v20) == 1)
    {
      sub_23A646DB0(v0[15], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v22 = v0[15];
      v23 = sub_23A6DECA4();
      v24 = sub_23A6DF884();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23A63D000, v23, v24, "presentContent - unable to create Discovery view controller", v25, 2u);
        MEMORY[0x23EE8A960](v25, -1, -1);
      }

      v26 = v0[15];

      (*(v21 + 8))(v26, v20);
    }

    v27 = v0[13];
    v28 = v0[10];
    v29 = v0[11];
    v30 = v0[8];
    v31 = v0[7];
    v32 = v0[5];
    v44 = v0[4];
    v46 = v0[6];
    v33 = v0[2];
    (*(v29 + 16))(v27, v0[9], v28);
    v34 = (*(v29 + 80) + 64) & ~*(v29 + 80);
    v35 = swift_allocObject();
    v0[22] = v35;
    *(v35 + 2) = v33;
    *(v35 + 3) = v30;
    *(v35 + 4) = v44;
    *(v35 + 5) = v32;
    *(v35 + 6) = v46;
    *(v35 + 7) = v31;
    (*(v29 + 32))(&v35[v34], v27, v28);
    swift_unknownObjectRetain();

    v36 = swift_task_alloc();
    v0[23] = v36;
    *v36 = v0;
    v36[1] = sub_23A6867E4;
    v38 = v0[2];
    v37 = v0[3];

    return sub_23A68C5B8(v37, sub_23A69152C, v35);
  }
}

uint64_t sub_23A6866B0()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  v4 = (v3 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = *(v3 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v6 = v4[1];
  *v4 = sub_23A6916C0;
  v4[1] = v2;

  sub_23A677CB0(v5);

  return MEMORY[0x2822009F8](sub_23A686764, 0, 0);
}

uint64_t sub_23A686764()
{
  v2 = v0[18];
  v1 = v0[19];

  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];

  return v6();
}

uint64_t sub_23A6867E4()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v9 = *v0;

  v4 = v1[15];
  v5 = v1[14];
  v6 = v1[13];

  v7 = *(v9 + 8);

  return v7();
}

uint64_t sub_23A686950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 288) = v14;
  *(v8 + 272) = v13;
  *(v8 + 256) = a7;
  *(v8 + 264) = a8;
  *(v8 + 240) = a5;
  *(v8 + 248) = a6;
  *(v8 + 232) = a4;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0) - 8) + 64) + 15;
  *(v8 + 320) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A686A58, 0, 0);
}

uint64_t sub_23A686A58()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  v4 = sub_23A6DF614();
  v0[41] = v4;
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_23A686BA0;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAF8, &unk_23A6E2620);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A66765C;
  v0[13] = &block_descriptor_81;
  v0[14] = v5;
  [v3 layoutBundleWithContentId:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A686BA0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 336) = v3;
  if (v3)
  {
    v4 = *(v1 + 248);

    v5 = sub_23A68935C;
  }

  else
  {
    v5 = sub_23A686CB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23A686CB8()
{
  v1 = v0[41];
  v2 = v0[34];
  v0[43] = v0[24];

  v0[44] = sub_23A6DE814();
  v0[45] = v3;

  return MEMORY[0x2822009F8](sub_23A686D34, v2, 0);
}

uint64_t sub_23A686D34()
{
  v1 = v0[45];
  v2 = v0[34];
  v3 = (v2 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v4 = *(v2 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region + 8);
  *v3 = v0[44];
  v3[1] = v1;

  v0[46] = *(v2 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_bundleManager);

  return MEMORY[0x2822009F8](sub_23A686DC4, 0, 0);
}

uint64_t sub_23A686DC4()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = sub_23A6DE804();
  v5 = v4;
  v0[47] = v4;
  v6 = *(*v1 + 136);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_23A686F08;
  v9 = v0[46];

  return v11(v3, v5);
}

uint64_t sub_23A686F08(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 384);
  v7 = *v3;
  v5[49] = a2;
  v5[50] = v2;

  v8 = v5[47];
  if (v2)
  {
    v9 = v5[31];

    v10 = sub_23A6896B8;
    v11 = 0;
  }

  else
  {
    v12 = v5[34];

    v5[51] = a1;
    v10 = sub_23A68706C;
    v11 = v12;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_23A68706C()
{
  v1 = v0[50];
  v0[52] = sub_23A690688(v0[51], v0[49], v0[30], v0[31]);
  v0[53] = v1;
  if (v1)
  {
    v2 = v0[49];
    v3 = v0[31];

    v4 = sub_23A687710;
  }

  else
  {
    v4 = sub_23A687110;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_23A687110()
{
  *(v0 + 432) = sub_23A6DF794();
  *(v0 + 440) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6871A8, v2, v1);
}

uint64_t sub_23A6871A8()
{
  v1 = v0[55];
  v2 = v0[52];
  v3 = v0[35];

  sub_23A689A08(v2, 1);

  return MEMORY[0x2822009F8](sub_23A687224, 0, 0);
}

uint64_t sub_23A687224()
{
  v1 = *(v0 + 432);
  *(v0 + 448) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6872B0, v3, v2);
}

uint64_t sub_23A6872B0()
{
  v1 = *(v0 + 448);
  v2 = *(v0 + 280);

  v3 = (v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v3 = 0;
  v3[1] = 0;
  sub_23A677CB0(v4);

  return MEMORY[0x2822009F8](sub_23A687334, 0, 0);
}

uint64_t sub_23A687334()
{
  v1 = *(v0 + 432);
  *(v0 + 456) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6873C0, v3, v2);
}

uint64_t sub_23A6873C0()
{
  v1 = v0[57];
  v2 = v0[35];

  v0[58] = [v2 view];

  return MEMORY[0x2822009F8](sub_23A687448, 0, 0);
}

uint64_t sub_23A687448(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[58])
  {
    v4 = v3[54];
    v3[59] = sub_23A6DF784();
    v5 = sub_23A6DF754();
    v7 = v6;
    a1 = sub_23A6874E0;
    a2 = v5;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23A6874E0()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);

  [v2 layoutIfNeeded];

  return MEMORY[0x2822009F8](sub_23A68755C, 0, 0);
}

uint64_t sub_23A68755C()
{
  v1 = *(v0 + 432);
  *(v0 + 480) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A6875E8, v3, v2);
}

uint64_t sub_23A6875E8()
{
  v1 = v0[60];
  v2 = v0[35];

  v0[61] = [v2 collectionView];

  return MEMORY[0x2822009F8](sub_23A687670, 0, 0);
}

uint64_t sub_23A687670(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[61])
  {
    v4 = v3[54];
    v5 = v3[49];

    v3[62] = sub_23A6DF784();
    v6 = sub_23A6DF754();
    v8 = v7;
    a1 = sub_23A687A60;
    a2 = v6;
    a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_23A687710()
{
  v1 = *(v0 + 424);
  *(v0 + 200) = v1;
  *(v0 + 616) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v0 + 624) = *(v0 + 208);
    *(v0 + 632) = sub_23A6DF794();
    *(v0 + 640) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v4;
    v6 = sub_23A6883A4;
  }

  else
  {
    v7 = *(v0 + 296);

    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 296);
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "presentContent - unable to display content", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = *(v0 + 296);

      (*(v10 + 8))(v15, v9);
    }

    v16 = *(v0 + 320);
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 232);
    v22 = *(v0 + 240);
    v23 = sub_23A6DF7B4();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v17;
    v24[5] = v21;
    v24[6] = v22;
    v24[7] = v19;
    v24[8] = v20;
    v24[9] = v18;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v16, &unk_23A6E2638, v24);

    *(v0 + 696) = sub_23A6DF794();
    *(v0 + 704) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v25;
    v6 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

uint64_t sub_23A687A60()
{
  v2 = v0[61];
  v1 = v0[62];

  v0[63] = [v2 collectionViewLayout];

  return MEMORY[0x2822009F8](sub_23A687AE8, 0, 0);
}

uint64_t sub_23A687AE8()
{
  v1 = *(v0 + 432);
  *(v0 + 512) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A687B74, v3, v2);
}

uint64_t sub_23A687B74()
{
  v2 = v0[63];
  v1 = v0[64];

  [v2 collectionViewContentSize];
  v4 = v3;

  v0[65] = v4;

  return MEMORY[0x2822009F8](sub_23A687BF8, 0, 0);
}

uint64_t sub_23A687BF8()
{
  v1 = *(v0 + 432);
  v2 = PKUIGetMinScreenType();
  *(v0 + 528) = PKUIScreenTypeGetSize(v2);
  *(v0 + 536) = sub_23A6DF784();
  v4 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A687C90, v4, v3);
}

uint64_t sub_23A687C90()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 280);

  *(v0 + 760) = [v2 isScrollable];

  return MEMORY[0x2822009F8](sub_23A687D10, 0, 0);
}

uint64_t sub_23A687D10()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v28 = *(v0 + 432);
  v4 = *(v0 + 344);
  v5 = *(v0 + 320);
  v6 = *(v0 + 272);
  v8 = *(v0 + 240);
  v7 = *(v0 + 248);
  v9 = *(v0 + 232);
  v10 = sub_23A6DE824();
  v12 = v11;
  v13 = sub_23A6DE814();
  sub_23A6A979C(v8, v7, v10, v12, v13, v14, (v0 + 144));
  v15 = sub_23A6C2038(v1);
  v17 = v16;
  v19 = v18;
  LOBYTE(v4) = v15;
  v20 = sub_23A6DF7B4();
  *(v0 + 544) = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  *(v0 + 552) = v22;
  *(v0 + 560) = (v21 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v22(v5, 1, 1, v20);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v6;
  *(v23 + 40) = v9;
  v24 = *(v0 + 160);
  *(v23 + 48) = *(v0 + 144);
  *(v23 + 64) = v24;
  *(v23 + 80) = *(v0 + 176);
  *(v23 + 96) = v17;
  *(v23 + 104) = v19;
  *(v23 + 112) = v4 & 1;

  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v5, &unk_23A6E2668, v23);

  *(v0 + 568) = sub_23A6DF784();
  v26 = sub_23A6DF754();
  *(v0 + 576) = v26;
  *(v0 + 584) = v25;

  return MEMORY[0x2822009F8](sub_23A687F08, v26, v25);
}

uint64_t sub_23A687F08()
{
  v1 = v0[35];
  if (*(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {
    v2 = v0[71];

    return MEMORY[0x2822009F8](sub_23A688230, 0, 0);
  }

  else
  {
    v3 = v0[54];
    v0[74] = sub_23A6DF784();
    v4 = swift_task_alloc();
    v0[75] = v4;
    *(v4 + 16) = v1;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[76] = v6;
    *v6 = v0;
    v6[1] = sub_23A688068;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A688068()
{
  v1 = *v0;
  v2 = *(*v0 + 608);
  v3 = *(*v0 + 600);
  v4 = *(*v0 + 592);
  v8 = *v0;

  v5 = *(v1 + 584);
  v6 = *(v1 + 576);

  return MEMORY[0x2822009F8](sub_23A6881C8, v6, v5);
}

uint64_t sub_23A6881C8()
{
  v1 = *(v0 + 568);

  return MEMORY[0x2822009F8](sub_23A688230, 0, 0);
}

uint64_t sub_23A688230()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 416);
  v5 = *(v0 + 344);
  v6 = *(v0 + 320);
  v7 = *(v0 + 288);
  v8 = *(v0 + 272);
  (*(**(v0 + 368) + 144))();
  v2(v6, 1, 1, v3);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;

  sub_23A64A15C(0, 0, v6, &unk_23A6E2678, v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF774();

  v11 = *(v0 + 312);
  v10 = *(v0 + 320);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_23A6883A4()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 280);

  v3 = (v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v4 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v3 = 0;
  v3[1] = 0;
  sub_23A677CB0(v4);

  return MEMORY[0x2822009F8](sub_23A688428, 0, 0);
}

uint64_t sub_23A688428()
{
  v52 = v0;
  v1 = *(v0 + 624);
  v2 = sub_23A6DE944();
  v3 = sub_23A6DE944();
  v4 = sub_23A6DCE38();
  if (v2 == v3)
  {
    v5 = *(v0 + 312);
    sub_23A646D48(v4, v5, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_23A646DB0(*(v0 + 312), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 312);
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "presentContent - display cancelled", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = *(v0 + 312);

      (*(v7 + 8))(v15, v6);
    }

    v16 = *(v0 + 320);
    v17 = *(v0 + 288);
    v19 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 248);
    v21 = *(v0 + 256);
    v22 = *(v0 + 232);
    v23 = *(v0 + 240);
    v24 = sub_23A6DF7B4();
    (*(*(v24 - 8) + 56))(v16, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v18;
    v25[5] = v22;
    v25[6] = v23;
    v25[7] = v20;
    v25[8] = v21;
    v25[9] = v19;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v16, &unk_23A6E2658, v25);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
    sub_23A6DF774();

    v27 = *(v0 + 312);
    v26 = *(v0 + 320);
    v29 = *(v0 + 296);
    v28 = *(v0 + 304);

    v30 = *(v0 + 8);

    return v30();
  }

  else
  {
    v8 = *(v0 + 304);
    sub_23A646D48(v4, v8, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 304), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v32 = *(v0 + 304);
      v33 = sub_23A6DECA4();
      v34 = sub_23A6DF884();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 624);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v51 = v37;
        *v36 = 136315138;
        v38 = sub_23A6DE934();
        v40 = sub_23A657E78(v38, v39, &v51);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_23A63D000, v33, v34, "presentContent - unable to display content: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x23EE8A960](v37, -1, -1);
        MEMORY[0x23EE8A960](v36, -1, -1);
      }

      (*(v10 + 8))(*(v0 + 304), v9);
    }

    v41 = *(v0 + 624);
    v42 = *(v0 + 320);
    v44 = *(v0 + 264);
    v43 = *(v0 + 272);
    v45 = *(v0 + 248);
    v46 = *(v0 + 256);
    v47 = *(v0 + 232);
    v48 = *(v0 + 240);
    v49 = sub_23A6DF7B4();
    (*(*(v49 - 8) + 56))(v42, 1, 1, v49);
    v50 = swift_allocObject();
    v50[2] = 0;
    v50[3] = 0;
    v50[4] = v43;
    v50[5] = v47;
    v50[6] = v48;
    v50[7] = v45;
    v50[8] = v46;
    v50[9] = v44;
    v50[10] = v41;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v42, &unk_23A6E2648, v50);

    return MEMORY[0x2822009F8](sub_23A688988, v43, 0);
  }
}

uint64_t sub_23A688988()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 272);
  sub_23A68B810(*(v0 + 624), *(v0 + 280));
  *(v0 + 648) = sub_23A6DF784();
  v4 = sub_23A6DF754();
  *(v0 + 656) = v4;
  *(v0 + 664) = v3;

  return MEMORY[0x2822009F8](sub_23A688A24, v4, v3);
}

uint64_t sub_23A688A24()
{
  v1 = v0[35];
  if (*(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {
    v2 = v0[81];

    return MEMORY[0x2822009F8](sub_23A688D4C, 0, 0);
  }

  else
  {
    v3 = v0[79];
    v0[84] = sub_23A6DF784();
    v4 = swift_task_alloc();
    v0[85] = v4;
    *(v4 + 16) = v1;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[86] = v6;
    *v6 = v0;
    v6[1] = sub_23A688B84;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A688B84()
{
  v1 = *v0;
  v2 = *(*v0 + 688);
  v3 = *(*v0 + 680);
  v4 = *(*v0 + 672);
  v8 = *v0;

  v5 = *(v1 + 664);
  v6 = *(v1 + 656);

  return MEMORY[0x2822009F8](sub_23A688CE4, v6, v5);
}

uint64_t sub_23A688CE4()
{
  v1 = *(v0 + 648);

  return MEMORY[0x2822009F8](sub_23A688D4C, 0, 0);
}

uint64_t sub_23A688D4C()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 288);
  sub_23A650718();
  v3 = swift_allocError();
  sub_23A6BB890(v1, v4);
  *(v0 + 224) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_23A688E34()
{
  v1 = v0[88];
  v3 = v0[34];
  v2 = v0[35];

  v4 = (v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v5 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler);
  v6 = *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8);
  *v4 = 0;
  v4[1] = 0;
  sub_23A677CB0(v5);

  return MEMORY[0x2822009F8](sub_23A688EB8, v3, 0);
}

uint64_t sub_23A688EB8()
{
  v1 = *(v0 + 696);
  v2 = *(v0 + 272);
  sub_23A68B810(6, *(v0 + 280));
  *(v0 + 712) = sub_23A6DF784();
  v4 = sub_23A6DF754();
  *(v0 + 720) = v4;
  *(v0 + 728) = v3;

  return MEMORY[0x2822009F8](sub_23A688F54, v4, v3);
}

uint64_t sub_23A688F54()
{
  v1 = v0[35];
  if (*(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed) == 1)
  {
    v2 = v0[89];

    return MEMORY[0x2822009F8](sub_23A68927C, 0, 0);
  }

  else
  {
    v3 = v0[87];
    v0[92] = sub_23A6DF784();
    v4 = swift_task_alloc();
    v0[93] = v4;
    *(v4 + 16) = v1;
    v5 = *(MEMORY[0x277D859E0] + 4);
    v6 = swift_task_alloc();
    v0[94] = v6;
    *v6 = v0;
    v6[1] = sub_23A6890B4;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A6890B4()
{
  v1 = *v0;
  v2 = *(*v0 + 752);
  v3 = *(*v0 + 744);
  v4 = *(*v0 + 736);
  v8 = *v0;

  v5 = *(v1 + 728);
  v6 = *(v1 + 720);

  return MEMORY[0x2822009F8](sub_23A689214, v6, v5);
}

uint64_t sub_23A689214()
{
  v1 = *(v0 + 712);

  return MEMORY[0x2822009F8](sub_23A68927C, 0, 0);
}

uint64_t sub_23A68927C()
{
  v1 = v0[77];
  v2 = v0[36];
  sub_23A650718();
  v3 = swift_allocError();
  *v4 = 5;
  v0[27] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  sub_23A6DF764();

  v6 = v0[39];
  v5 = v0[40];
  v8 = v0[37];
  v7 = v0[38];

  v9 = v0[1];

  return v9();
}

uint64_t sub_23A68935C()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);
  swift_willThrow();

  v3 = *(v0 + 336);
  *(v0 + 200) = v3;
  *(v0 + 616) = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v0 + 624) = *(v0 + 208);
    *(v0 + 632) = sub_23A6DF794();
    *(v0 + 640) = sub_23A6DF784();
    v5 = sub_23A6DF754();
    v7 = v6;
    v8 = sub_23A6883A4;
  }

  else
  {
    v9 = *(v0 + 296);

    v10 = sub_23A6DCE38();
    sub_23A646D48(v10, v9, &qword_27DF9D240, qword_23A6E1D30);
    v11 = sub_23A6DECC4();
    v12 = *(v11 - 8);
    if ((*(v12 + 48))(v9, 1, v11) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = *(v0 + 296);
      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF884();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_23A63D000, v14, v15, "presentContent - unable to display content", v16, 2u);
        MEMORY[0x23EE8A960](v16, -1, -1);
      }

      v17 = *(v0 + 296);

      (*(v12 + 8))(v17, v11);
    }

    v18 = *(v0 + 320);
    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 248);
    v22 = *(v0 + 256);
    v23 = *(v0 + 232);
    v24 = *(v0 + 240);
    v25 = sub_23A6DF7B4();
    (*(*(v25 - 8) + 56))(v18, 1, 1, v25);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v19;
    v26[5] = v23;
    v26[6] = v24;
    v26[7] = v21;
    v26[8] = v22;
    v26[9] = v20;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v18, &unk_23A6E2638, v26);

    *(v0 + 696) = sub_23A6DF794();
    *(v0 + 704) = sub_23A6DF784();
    v5 = sub_23A6DF754();
    v7 = v27;
    v8 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v8, v5, v7);
}

uint64_t sub_23A6896B8()
{
  v1 = *(v0 + 400);
  *(v0 + 200) = v1;
  *(v0 + 616) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8B8, &qword_23A6E1C30);
  if (swift_dynamicCast())
  {

    *(v0 + 624) = *(v0 + 208);
    *(v0 + 632) = sub_23A6DF794();
    *(v0 + 640) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v4;
    v6 = sub_23A6883A4;
  }

  else
  {
    v7 = *(v0 + 296);

    v8 = sub_23A6DCE38();
    sub_23A646D48(v8, v7, &qword_27DF9D240, qword_23A6E1D30);
    v9 = sub_23A6DECC4();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v7, 1, v9) == 1)
    {
      sub_23A646DB0(*(v0 + 296), &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v11 = *(v0 + 296);
      v12 = sub_23A6DECA4();
      v13 = sub_23A6DF884();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_23A63D000, v12, v13, "presentContent - unable to display content", v14, 2u);
        MEMORY[0x23EE8A960](v14, -1, -1);
      }

      v15 = *(v0 + 296);

      (*(v10 + 8))(v15, v9);
    }

    v16 = *(v0 + 320);
    v18 = *(v0 + 264);
    v17 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(v0 + 256);
    v21 = *(v0 + 232);
    v22 = *(v0 + 240);
    v23 = sub_23A6DF7B4();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v17;
    v24[5] = v21;
    v24[6] = v22;
    v24[7] = v19;
    v24[8] = v20;
    v24[9] = v18;

    swift_unknownObjectRetain();

    sub_23A64A15C(0, 0, v16, &unk_23A6E2638, v24);

    *(v0 + 696) = sub_23A6DF794();
    *(v0 + 704) = sub_23A6DF784();
    v3 = sub_23A6DF754();
    v5 = v25;
    v6 = sub_23A688E34;
  }

  return MEMORY[0x2822009F8](v6, v3, v5);
}

void sub_23A689A08(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = MEMORY[0x28223BE20](v11, v12).n128_u64[0];
  v15 = &v38 - v14;
  v38.receiver = v2;
  v38.super_class = ObjectType;
  objc_msgSendSuper2(&v38, sel_setArticleLayout_animated_, a1, a2 & 1, v13);
  *(v2 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet) = 1;
  v16 = objc_opt_self();
  v17 = [v16 currentDevice];
  v18 = [v17 orientation];

  if (UIDeviceOrientationIsLandscape(v18))
  {
    v19 = sub_23A6DCE38();
    sub_23A646D48(v19, v15, &qword_27DF9D240, qword_23A6E1D30);
    v20 = sub_23A6DECC4();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {
      sub_23A646DB0(v15, &qword_27DF9D240, qword_23A6E1D30);
      sub_23A68ECD0();
    }

    else
    {
      v32 = sub_23A6DECA4();
      v33 = sub_23A6DF8A4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_23A63D000, v32, v33, "DiscoveryArticleViewController: initial orientation is landscape", v34, 2u);
        MEMORY[0x23EE8A960](v34, -1, -1);
      }

      (*(v21 + 8))(v15, v20);
      sub_23A68ECD0();
    }
  }

  else
  {
    v22 = [v16 currentDevice];
    v23 = [v22 orientation];

    if ((v23 - 5) <= 1)
    {
      v24 = [objc_opt_self() sharedApplication];
      v25 = [v24 connectedScenes];

      sub_23A691180(0, &qword_27DF9CA78, 0x277D75940);
      sub_23A68DE78();
      v26 = sub_23A6DF844();

      v27 = sub_23A68F6F0(v26);

      if (v27)
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28 && UIDeviceOrientationIsLandscape([v28 interfaceOrientation]))
        {
          v29 = sub_23A6DCE38();
          sub_23A646D48(v29, v10, &qword_27DF9D240, qword_23A6E1D30);
          v30 = sub_23A6DECC4();
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(v10, 1, v30) == 1)
          {
            sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
          }

          else
          {
            v35 = sub_23A6DECA4();
            v36 = sub_23A6DF8A4();
            if (os_log_type_enabled(v35, v36))
            {
              v37 = swift_slowAlloc();
              *v37 = 0;
              _os_log_impl(&dword_23A63D000, v35, v36, "DiscoveryArticleViewController: initial orientation is flat, but scene orientation is landscape", v37, 2u);
              MEMORY[0x23EE8A960](v37, -1, -1);
            }

            (*(v31 + 8))(v10, v30);
          }

          sub_23A68ECD0();
        }
      }
    }
  }
}

uint64_t sub_23A689E8C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *(v9 + 72) = a9;
  *(v9 + 40) = a1;
  *(v9 + 48) = a2;
  *(v9 + 24) = a7;
  *(v9 + 32) = a8;
  *(v9 + 16) = a6;
  *(v9 + 56) = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A689EC4, a6, 0);
}

uint64_t sub_23A689EF0()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 64)) + 0xB0))(*(v0 + 24), *(v0 + 32), *(v0 + 72), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A689F8C()
{
  v1[2] = v0;
  v1[3] = sub_23A6DF794();
  v1[4] = sub_23A6DF784();
  v3 = sub_23A6DF754();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x2822009F8](sub_23A68A028, v3, v2);
}

uint64_t sub_23A68A028()
{
  v1 = v0[2];
  if (*(v1 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed))
  {
    v2 = v0[4];

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[3];
    v0[7] = sub_23A6DF784();
    v6 = swift_task_alloc();
    v0[8] = v6;
    *(v6 + 16) = v1;
    v7 = *(MEMORY[0x277D859E0] + 4);
    v8 = swift_task_alloc();
    v0[9] = v8;
    *v8 = v0;
    v8[1] = sub_23A68A17C;

    return MEMORY[0x2822007B8]();
  }
}

uint64_t sub_23A68A17C()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v8 = *v0;

  v5 = *(v1 + 48);
  v6 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_23A68A2DC, v6, v5);
}

uint64_t sub_23A68A2DC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A68A33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  *(v4 + 16) = a4;
  *(v4 + 24) = v5;
  return MEMORY[0x2822009F8](sub_23A68A364, a4, 0);
}

uint64_t sub_23A68A38C()
{
  (*((*MEMORY[0x277D85000] & **(v0 + 32)) + 0xC0))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23A68A41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68A450, a4, 0);
}

uint64_t sub_23A68A450()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A4E4, 0, 0);
}

uint64_t sub_23A68A4E4()
{
  v10 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v9 = 3;
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v1, v2, v4, v5, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  v7[6] = v10;
  v7[7] = v8;
  return MEMORY[0x2822009F8](sub_23A68A5D8, a4, 0);
}

uint64_t sub_23A68A5D8()
{
  v1 = v0[2];
  v0[8] = *(v1 + v0[7]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[9] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[10] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A66C, 0, 0);
}

uint64_t sub_23A68A66C()
{
  v10 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];
  v6 = v0[3];
  v5 = v0[4];
  sub_23A6BB890(v0[6], &v9);
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v2, v1, v5, v4, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68A77C, a4, 0);
}

uint64_t sub_23A68A77C()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A68A810, 0, 0);
}

uint64_t sub_23A68A810()
{
  v10 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];
  v9 = 5;
  (*((*MEMORY[0x277D85000] & *v3) + 0xC8))(v6, v1, v2, v4, v5, &v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23A68A8CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v10 - v5;
  v7 = sub_23A6DF7B4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  swift_unknownObjectRetain();
  sub_23A64A15C(0, 0, v6, &unk_23A6E2610, v8);

  return sub_23A6DF814();
}

uint64_t sub_23A68AA20()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_23A68AB34;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAF0, &qword_23A6E2618);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23A68AC28;
  v0[13] = &block_descriptor_78;
  v0[14] = v2;
  [v1 cancelRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23A68AB34()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_23A68AC14, 0, 0);
}

uint64_t sub_23A68AC28(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23A68AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = v22 - v15;
  v17 = sub_23A6DF7B4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a1;
  v18[5] = a2;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = a5;
  v18[9] = a6;

  swift_unknownObjectRetain();

  sub_23A64A15C(0, 0, v16, &unk_23A6E2690, v18);

  sub_23A650718();
  v19 = swift_allocError();
  *v20 = 5;
  v22[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C8A0, &unk_23A6E1C10);
  return sub_23A6DF764();
}

uint64_t sub_23A68AE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v7[6] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_discoveryAnalyticsManager;
  return MEMORY[0x2822009F8](sub_23A68AE38, a4, 0);
}

uint64_t sub_23A68AE38()
{
  v1 = v0[2];
  v0[7] = *(v1 + v0[6]);
  v2 = v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region;
  v0[8] = *(v1 + OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_region);
  v0[9] = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_23A6920CC, 0, 0);
}

uint64_t sub_23A68AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68AF70, v4, 0);
}

uint64_t sub_23A68AF70()
{
  *(v0 + 112) = sub_23A6DF794();
  *(v0 + 120) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B008, v2, v1);
}

uint64_t sub_23A68B008()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];

  v5 = objc_allocWithZone(type metadata accessor for DiscoveryArticleViewController(0));
  v6 = sub_23A6DF614();
  v0[16] = [v5 initWithItemIdentifier:v6 referrerIdentifier:0];

  return MEMORY[0x2822009F8](sub_23A68B0C0, v2, 0);
}

uint64_t sub_23A68B0C0()
{
  if (v0[16])
  {
    v1 = v0[14];
    v0[17] = sub_23A6DF784();
    v3 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A68B2D0, v3, v2);
  }

  else
  {
    v4 = v0[13];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v8 = v0[13];
      v9 = sub_23A6DECA4();
      v10 = sub_23A6DF884();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23A63D000, v9, v10, "presentDiscoveryView - discovery view controller is not available", v11, 2u);
        MEMORY[0x23EE8A960](v11, -1, -1);
      }

      v12 = v0[13];

      (*(v7 + 8))(v12, v6);
    }

    v13 = v0[13];

    v14 = v0[1];

    return v14(0);
  }
}

uint64_t sub_23A68B2D0()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[11];
  v3 = v0[12];

  [v2 setProximityReaderDelegate_];

  return MEMORY[0x2822009F8](sub_23A68B358, v3, 0);
}

uint64_t sub_23A68B358()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 128);
  *(v0 + 144) = sub_23A6DF784();
  v4 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B3EC, v4, v3);
}

uint64_t sub_23A68B3EC()
{
  v1 = v0[18];
  v2 = v0[16];
  v3 = v0[12];

  v0[19] = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  return MEMORY[0x2822009F8](sub_23A68B480, v3, 0);
}

uint64_t sub_23A68B480()
{
  v1 = v0[14];
  v0[6] = sub_23A68B67C;
  v0[7] = 0;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_23A672F1C;
  v0[5] = &block_descriptor_2;
  v0[20] = _Block_copy(v0 + 2);
  v0[21] = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68B56C, v3, v2);
}

uint64_t sub_23A68B56C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = v0[12];
  v5 = v0[8];

  [v5 presentViewController:v3 animated:1 completion:v2];
  _Block_release(v2);

  return MEMORY[0x2822009F8](sub_23A68B60C, v4, 0);
}

uint64_t sub_23A68B60C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_23A68B67C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v12 - v3;
  v5 = sub_23A6DCE38();
  sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
  v6 = sub_23A6DECC4();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    return sub_23A646DB0(v4, &qword_27DF9D240, qword_23A6E1D30);
  }

  v9 = sub_23A6DECA4();
  v10 = sub_23A6DF8A4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23A63D000, v9, v10, "presentDiscoveryView - discovery view controller is presented", v11, 2u);
    MEMORY[0x23EE8A960](v11, -1, -1);
  }

  return (*(v7 + 8))(v4, v6);
}

uint64_t sub_23A68B810(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v24 - v7;
  v9 = sub_23A6DE944();
  v10 = sub_23A6DE944();
  if (v9 == v10)
  {
    v11 = 0xD00000000000001FLL;
  }

  else
  {
    v11 = 0xD00000000000002DLL;
  }

  if (v9 == v10)
  {
    v12 = "E_OFFLINE_MESSAGE";
  }

  else
  {
    v12 = "ndler";
  }

  v13 = sub_23A6DE944();
  v14 = sub_23A6DE944();
  if (v13 == v14)
  {
    v15 = 0xD000000000000021;
  }

  else
  {
    v15 = 0xD000000000000035;
  }

  if (v13 == v14)
  {
    v16 = "AILABLE_ERROR_MESSAGE";
  }

  else
  {
    v16 = "E_CURRENTLY_UNAVAILABLE_TITLE";
  }

  v17 = v16 | 0x8000000000000000;
  v18 = v12 | 0x8000000000000000;
  v19 = sub_23A6DF7B4();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_23A690358(&qword_27DF9CAC0, type metadata accessor for ProximityReaderDiscoveryActor);
  v21 = swift_allocObject();
  v21[2] = v2;
  v21[3] = v20;
  v21[4] = a2;
  v21[5] = v11;
  v21[6] = v18;
  v21[7] = v15;
  v21[8] = v17;
  v21[9] = v2;
  swift_retain_n();
  v22 = a2;
  sub_23A64A15C(0, 0, v8, &unk_23A6E25C0, v21);
}

uint64_t sub_23A68BA0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a8;
  v8[12] = v12;
  v8[9] = a6;
  v8[10] = a7;
  v8[7] = a4;
  v8[8] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68BAB8, v12, 0);
}

uint64_t sub_23A68BAB8()
{
  *(v0 + 112) = sub_23A6DF794();
  *(v0 + 120) = sub_23A6DF784();
  v2 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BB50, v2, v1);
}

uint64_t sub_23A68BB50()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[7];

  [v3 setIsDownloading_];

  return MEMORY[0x2822009F8](sub_23A68BBD4, v2, 0);
}

uint64_t sub_23A68BBD4()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  sub_23A6DEC54();
  v6 = sub_23A6DF674();
  v8 = v7;

  sub_23A6DEC54();
  v9 = sub_23A6DF674();
  v11 = v10;

  sub_23A6B8E94(v6, v8, v9, v11, 1, (v0 + 2));
  v0[16] = sub_23A6DF784();
  v13 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BCEC, v13, v12);
}

uint64_t sub_23A68BCEC()
{
  v1 = v0[16];
  v2 = v0[12];

  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAC8, &qword_23A6E25D0));
  v0[17] = sub_23A6DF264();

  return MEMORY[0x2822009F8](sub_23A68BD80, v2, 0);
}

uint64_t sub_23A68BD80()
{
  v1 = *(v0 + 112);
  *(v0 + 144) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68BE0C, v3, v2);
}

uint64_t sub_23A68BE0C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[12];

  v0[19] = [v2 view];

  return MEMORY[0x2822009F8](sub_23A68BE98, v3, 0);
}

uint64_t sub_23A68BE98()
{
  if (v0[19])
  {
    v1 = v0[14];
    v0[20] = sub_23A6DF784();
    v3 = sub_23A6DF754();

    return MEMORY[0x2822009F8](sub_23A68C0A4, v3, v2);
  }

  else
  {
    v4 = v0[13];
    v5 = sub_23A6DCE38();
    sub_23A646D48(v5, v4, &qword_27DF9D240, qword_23A6E1D30);
    v6 = sub_23A6DECC4();
    v7 = *(v6 - 8);
    if ((*(v7 + 48))(v4, 1, v6) == 1)
    {
      sub_23A646DB0(v0[13], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v8 = v0[13];
      v9 = sub_23A6DECA4();
      v10 = sub_23A6DF8A4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_23A63D000, v9, v10, "presentErrorView - unable to present the error view", v11, 2u);
        MEMORY[0x23EE8A960](v11, -1, -1);
      }

      v12 = v0[13];

      (*(v7 + 8))(v12, v6);
    }

    v13 = v0[13];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_23A68C0A4()
{
  v1 = v0[20];
  v2 = v0[7];

  v3 = [v2 view];
  if (!v3)
  {
    goto LABEL_23;
  }

  v6 = v3;
  v7 = [v3 subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v8 = sub_23A6DF734();

  if (v8 >> 62)
  {
    v3 = sub_23A6DFB54();
    v9 = v3;
    if (!v3)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  for (i = 0; i != v9; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x23EE89F80](i, v8);
    }

    else
    {
      v11 = *(v8 + 8 * i + 32);
    }

    v12 = v11;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      [v12 removeFromSuperview];
    }
  }

LABEL_13:
  v13 = v0[7];

  v3 = [v13 view];
  if (!v3)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v3;
  v15 = v0[19];
  v16 = v0[7];
  [v3 addSubview_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAD8, &qword_23A6E25D8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_23A6E23C0;
  v18 = [v15 centerXAnchor];
  v3 = [v16 view];
  if (!v3)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v19 = v3;
  v20 = v0[19];
  v21 = v0[7];
  v22 = [v3 centerXAnchor];

  v23 = [v18 constraintEqualToAnchor_];
  *(v17 + 32) = v23;
  v24 = [v20 centerYAnchor];
  v3 = [v21 view];
  if (!v3)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = v3;
  v26 = v0[19];
  v27 = v0[7];
  v28 = [v3 centerYAnchor];

  v29 = [v24 constraintEqualToAnchor_];
  *(v17 + 40) = v29;
  v30 = [v26 widthAnchor];
  v3 = [v27 view];
  if (!v3)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v31 = v3;
  v32 = v0[7];
  v33 = objc_opt_self();
  v34 = [v31 widthAnchor];

  v35 = [v30 constraintEqualToAnchor_];
  *(v17 + 48) = v35;
  sub_23A691180(0, &qword_27DF9CAE0, 0x277CCAAD0);
  v36 = sub_23A6DF724();

  [v33 activateConstraints_];

  v3 = [v32 view];
  if (!v3)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v37 = v3;
  v38 = v0[7];
  v39 = [objc_opt_self() systemBackgroundColor];
  [v37 _setBackgroundColor_];

  v3 = [v38 view];
  if (!v3)
  {
LABEL_29:
    __break(1u);
    return MEMORY[0x2822009F8](v3, v4, v5);
  }

  v40 = v3;
  v41 = v0[12];
  [v3 layoutIfNeeded];

  v3 = sub_23A68C550;
  v4 = v41;
  v5 = 0;

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_23A68C550()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23A68C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB0, &qword_23A6E25A0) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v6 = *(*(type metadata accessor for DiscoveryErrorSheet() - 8) + 64) + 15;
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68C690, v3, 0);
}

uint64_t sub_23A68C690()
{
  v1 = v0[8];
  v16 = v0[7];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_23A6DEC54();
  v5 = sub_23A6DF674();
  v7 = v6;

  sub_23A6DEC54();
  v8 = sub_23A6DF674();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v3;
  *(v11 + 24) = v4;

  sub_23A6B7774(v12);
  sub_23A6B77D8(v5, v7, v8, v10, sub_23A690330, v11, v2, v1);
  sub_23A6912C0(v1, v16, type metadata accessor for DiscoveryErrorSheet);
  v0[9] = sub_23A6DF794();
  v0[10] = sub_23A6DF784();
  v14 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68C854, v14, v13);
}

uint64_t sub_23A68C854()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[5];

  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CAB8, &qword_23A6E25A8));
  v0[11] = sub_23A6DF264();

  return MEMORY[0x2822009F8](sub_23A68C8F0, v3, 0);
}

uint64_t sub_23A68C8F0()
{
  v1 = *(v0 + 72);
  *(v0 + 96) = sub_23A6DF784();
  v3 = sub_23A6DF754();

  return MEMORY[0x2822009F8](sub_23A68C97C, v3, v2);
}

uint64_t sub_23A68C97C()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  v4 = v0[2];

  [v4 presentViewController:v2 animated:1 completion:0];

  return MEMORY[0x2822009F8](sub_23A68CA10, v3, 0);
}

uint64_t sub_23A68CA10()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);

  sub_23A691328(v2, type metadata accessor for DiscoveryErrorSheet);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_23A68CAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68CB58, v5, 0);
}

uint64_t sub_23A68CB58()
{
  v25 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v0[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[8];
    v4 = sub_23A6DCE38();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(v0[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = v0[4];

      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF884();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = v0[3];
        v16 = v0[4];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_23A657E78(v17, v16, &v24);
        _os_log_impl(&dword_23A63D000, v14, v15, "%s - a previous discovery request is running, returning busy", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x23EE8A960](v19, -1, -1);
        MEMORY[0x23EE8A960](v18, -1, -1);
      }

      (*(v6 + 8))(v0[8], v5);
    }

    sub_23A650718();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v7 = v0[5];
    *(v1 + v2) = 1;
    v23 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_23A68CE88;
    v10 = v0[6];
    v11 = v0[2];

    return v23(v11);
  }
}

uint64_t sub_23A68CE88()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23A66BF5C;
  }

  else
  {
    v6 = sub_23A68CFB4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A68CFB4()
{
  v1 = v0[8];
  *(v0[7] + v0[9]) = 0;

  v2 = v0[1];

  return v2();
}

uint64_t sub_23A68D020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68D0C4, v4, 0);
}

uint64_t sub_23A68D0C4()
{
  v24 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v0[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[8];
    v4 = sub_23A6DCE38();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(v0[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v12 = v0[4];

      v13 = sub_23A6DECA4();
      v14 = sub_23A6DF884();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = v0[3];
        v15 = v0[4];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v23 = v18;
        *v17 = 136315138;
        *(v17 + 4) = sub_23A657E78(v16, v15, &v23);
        _os_log_impl(&dword_23A63D000, v13, v14, "%s - a previous discovery request is running, returning busy", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x23EE8A960](v18, -1, -1);
        MEMORY[0x23EE8A960](v17, -1, -1);
      }

      (*(v6 + 8))(v0[8], v5);
    }

    sub_23A650718();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();
    v20 = v0[8];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v7 = v0[5];
    *(v1 + v2) = 1;
    v22 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_23A66BDBC;
    v10 = v0[6];

    return v22(v0 + 2);
  }
}

uint64_t sub_23A68D3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23A68D498, v5, 0);
}

uint64_t sub_23A68D498()
{
  v25 = v0;
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  v0[9] = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_requestRunning;
  if (*(v1 + v2) == 1)
  {
    v3 = v0[8];
    v4 = sub_23A6DCE38();
    sub_23A646D48(v4, v3, &qword_27DF9D240, qword_23A6E1D30);
    v5 = sub_23A6DECC4();
    v6 = *(v5 - 8);
    if ((*(v6 + 48))(v3, 1, v5) == 1)
    {
      sub_23A646DB0(v0[8], &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v13 = v0[4];

      v14 = sub_23A6DECA4();
      v15 = sub_23A6DF884();

      if (os_log_type_enabled(v14, v15))
      {
        v17 = v0[3];
        v16 = v0[4];
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24 = v19;
        *v18 = 136315138;
        *(v18 + 4) = sub_23A657E78(v17, v16, &v24);
        _os_log_impl(&dword_23A63D000, v14, v15, "%s - a previous discovery request is running, returning busy", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x23EE8A960](v19, -1, -1);
        MEMORY[0x23EE8A960](v18, -1, -1);
      }

      (*(v6 + 8))(v0[8], v5);
    }

    sub_23A650718();
    swift_allocError();
    *v20 = 4;
    swift_willThrow();
    v21 = v0[8];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v7 = v0[5];
    *(v1 + v2) = 1;
    v23 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_23A68D7C8;
    v10 = v0[6];
    v11 = v0[2];

    return v23(v11);
  }
}

uint64_t sub_23A68D7C8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_23A6920C0;
  }

  else
  {
    v6 = sub_23A6920C4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23A68D8F4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v3 = *(*(v2 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v2 - 8, v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = sub_23A6DCE38();
  sub_23A646D48(v11, v10, &qword_27DF9D240, qword_23A6E1D30);
  v12 = sub_23A6DECC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v10, 1, v12) == 1)
  {
    sub_23A646DB0(v10, &qword_27DF9D240, qword_23A6E1D30);
    v15 = v1;
  }

  else
  {
    v29 = v12;
    v16 = sub_23A6507C0();
    v17 = sub_23A6DCFB0();
    v27 = v14;
    v28 = v11;
    v12 = v29;
    sub_23A6DCFBC(v16 & 1, v1, 0xD000000000000014, 0x800000023A6E8650, v17, v18);
    v14 = v27;

    (*(v13 + 8))(v10, v12);
    v15 = v1;
    v11 = v28;
  }

  sub_23A6DEC84();
  if (sub_23A6DEC74())
  {
    v19 = OBJC_IVAR____TtC15ProximityReader29ProximityReaderDiscoveryActor_connection;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA60, &qword_23A6E23E8);
    return (*(*(v20 - 8) + 16))(v30, v15 + v19, v20);
  }

  else
  {
    sub_23A646D48(v11, v7, &qword_27DF9D240, qword_23A6E1D30);
    if (v14(v7, 1, v12) == 1)
    {
      sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v22 = sub_23A6DECA4();
      v23 = sub_23A6DF884();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_23A63D000, v22, v23, "This device is not supported", v24, 2u);
        MEMORY[0x23EE8A960](v24, -1, -1);
      }

      (*(v13 + 8))(v7, v12);
    }

    sub_23A650718();
    v25 = swift_allocError();
    *v26 = 2;
    v31 = v25;
    return swift_willThrow();
  }
}

uint64_t sub_23A68DC58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A647234;

  return sub_23A6830DC(a1, v4);
}

uint64_t sub_23A68DCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23A647140;

  return sub_23A684560(a1);
}

uint64_t sub_23A68DD98()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_23A647234;

  return sub_23A685994(v9, v2, v3, v4, v5, v6, v7, v8);
}

unint64_t sub_23A68DE78()
{
  result = qword_27DF9CA80;
  if (!qword_27DF9CA80)
  {
    sub_23A691180(255, &qword_27DF9CA78, 0x277D75940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF9CA80);
  }

  return result;
}

id sub_23A68DEE0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v23 - v11;
  v13 = v1;
  [v13 setProximityReaderDelegate_];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  swift_beginAccess();
  sub_23A68FEDC(v12, v13 + v15);
  swift_endAccess();
  v16 = sub_23A6DCE38();
  sub_23A646D48(v16, v7, &qword_27DF9D240, qword_23A6E1D30);
  v17 = sub_23A6DECC4();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v7, 1, v17) == 1)
  {
    sub_23A646DB0(v7, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v19 = sub_23A6DECA4();
    v20 = sub_23A6DF8A4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23A63D000, v19, v20, "DiscoveryArticleViewController deinit", v21, 2u);
      MEMORY[0x23EE8A960](v21, -1, -1);
    }

    (*(v18 + 8))(v7, v17);
  }

  v24.receiver = v13;
  v24.super_class = ObjectType;
  return objc_msgSendSuper2(&v24, sel_dealloc);
}

uint64_t sub_23A68E210(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v13 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  v11 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
  swift_beginAccess();
  sub_23A68FEDC(v8, a2 + v11);
  return swift_endAccess();
}

id sub_23A68E348(int a1)
{
  v2 = v1;
  v44 = a1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA90, &qword_23A6E2468);
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v40 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9CA98, &qword_23A6E2470);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v41 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v39 - v18;
  v20 = [v2 parentViewController];
  if (v20)
  {
    v21 = v20;
    v22 = [v20 isBeingDismissed];
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_23A6DCE38();
  sub_23A646D48(v23, v19, &qword_27DF9D240, qword_23A6E1D30);
  v24 = sub_23A6DECC4();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v19, 1, v24) == 1)
  {
    sub_23A646DB0(v19, &qword_27DF9D240, qword_23A6E1D30);
    if (!v22)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v26 = sub_23A6DECA4();
  v27 = sub_23A6DF8A4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 67109120;
    *(v28 + 4) = v22;
    _os_log_impl(&dword_23A63D000, v26, v27, "DiscoveryArticleViewController: view did disappear - view is being dismissed = %{BOOL}d", v28, 8u);
    MEMORY[0x23EE8A960](v28, -1, -1);
  }

  (*(v25 + 8))(v19, v24);
  if (v22)
  {
LABEL_10:
    v29 = OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissingContinuation;
    swift_beginAccess();
    sub_23A646D48(&v2[v29], v14, &qword_27DF9CA98, &qword_23A6E2470);
    v30 = *(v42 + 48);
    v31 = v30(v14, 1, v3);
    sub_23A646DB0(v14, &qword_27DF9CA98, &qword_23A6E2470);
    if (v31 != 1)
    {
      if (!v30(&v2[v29], 1, v3))
      {
        v32 = v42;
        v33 = v40;
        (*(v42 + 16))(v40, &v2[v29], v3);
        sub_23A6DF774();
        (*(v32 + 8))(v33, v3);
      }

      v34 = v41;
      (*(v42 + 56))(v41, 1, 1, v3);
      swift_beginAccess();
      sub_23A68FEDC(v34, &v2[v29]);
      swift_endAccess();
      v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_viewDismissed] = 1;
      v35 = *&v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler];
      if (v35)
      {
        v36 = *&v2[OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_dismissHandler + 8];

        v35(v37);
        sub_23A677CB0(v35);
      }
    }
  }

LABEL_15:
  v45.receiver = v2;
  v45.super_class = ObjectType;
  return objc_msgSendSuper2(&v45, sel_viewDidDisappear_, v44 & 1);
}

void sub_23A68E834(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9D240, qword_23A6E1D30);
  v10 = *(*(v9 - 8) + 64);
  v12 = (MEMORY[0x28223BE20])(v9 - 8, v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v40 - v16;
  v40.receiver = v4;
  v40.super_class = ObjectType;
  objc_msgSendSuper2(&v40, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*(v4 + OBJC_IVAR____TtC15ProximityReader30DiscoveryArticleViewController_layoutSet) != 1)
  {
    return;
  }

  v18 = [objc_opt_self() currentDevice];
  v19 = [v18 orientation];

  LODWORD(v18) = UIDeviceOrientationIsLandscape(v19);
  v20 = sub_23A6DCE38();
  if (v18)
  {
    sub_23A646D48(v20, v17, &qword_27DF9D240, qword_23A6E1D30);
    v21 = sub_23A6DECC4();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v17, 1, v21) == 1)
    {
      sub_23A646DB0(v17, &qword_27DF9D240, qword_23A6E1D30);
    }

    else
    {
      v25 = sub_23A6DECA4();
      v26 = sub_23A6DF8A4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_23A63D000, v25, v26, "DiscoveryArticleViewController: rotated to landscape", v27, 2u);
        MEMORY[0x23EE8A960](v27, -1, -1);
      }

      (*(v22 + 8))(v17, v21);
    }

    sub_23A68ECD0();
    return;
  }

  sub_23A646D48(v20, v14, &qword_27DF9D240, qword_23A6E1D30);
  v23 = sub_23A6DECC4();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v14, 1, v23) == 1)
  {
    sub_23A646DB0(v14, &qword_27DF9D240, qword_23A6E1D30);
  }

  else
  {
    v28 = sub_23A6DECA4();
    v29 = sub_23A6DF8A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_23A63D000, v28, v29, "DiscoveryArticleViewController: rotated to portrait", v30, 2u);
      MEMORY[0x23EE8A960](v30, -1, -1);
    }

    (*(v24 + 8))(v14, v23);
  }

  v31 = [v4 view];
  if (!v31)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v32 = v31;
  v33 = [v31 subviews];

  sub_23A691180(0, &qword_27DF9CAD0, 0x277D75D18);
  v34 = sub_23A6DF734();

  if (!(v34 >> 62))
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
      goto LABEL_17;
    }

LABEL_26:

    return;
  }

  v35 = sub_23A6DFB54();
  if (!v35)
  {
    goto LABEL_26;
  }

LABEL_17:
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v38 = MEMORY[0x23EE89F80](v37, v34);
    goto LABEL_22;
  }

  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (v37 >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v38 = *(v34 + 8 * v37 + 32);
LABEL_22:
  v39 = v38;

  if ([v39 tag] == 123456)
  {
    [v39 removeFromSuperview];
  }
}