unint64_t sub_1E4BDF184(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_1E4BF05EC() + 1) & ~v7;
    while (1)
    {
      v13 = *(a2 + 40);
      v14 = (*(a2 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      sub_1E4BF0A6C();

      sub_1E4BEFF4C();
      v17 = sub_1E4BF0A9C();

      v18 = v17 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v18 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v5);
      v21 = (v19 + 16 * v8);
      if (v5 != v8 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v24 = v23 * v5;
      result = v22 + v23 * v5;
      v25 = v23 * v8;
      v26 = v22 + v23 * v8 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1E4BDF394()
{
  v1 = v0;
  v2 = type metadata accessor for MMSMessage(0);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945D8, &unk_1E4C18D10);
  v6 = *v0;
  v7 = sub_1E4BF07AC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v24 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 4 * v21);
        v23 = *(v25 + 72) * v21;
        sub_1E4BE6884(*(v6 + 56) + v23, v5, type metadata accessor for MMSMessage);
        *(*(v8 + 48) + 4 * v21) = v22;
        result = sub_1E4BE68EC(v5, *(v8 + 56) + v23, type metadata accessor for MMSMessage);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1E4BDF5C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF945F0, &qword_1E4C05608);
  v2 = *v0;
  v3 = sub_1E4BF07AC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1E4BDF740(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF944B0, &qword_1E4C0EF40);
  v36 = *(v34 - 8);
  v6 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v29 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_1E4BF07AC();
  v10 = v9;
  if (*(v8 + 16))
  {
    v29 = v5;
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, (v8 + 64), 8 * v12);
    }

    v13 = 0;
    v14 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v14;
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 64);
    v18 = (v15 + 63) >> 6;
    v32 = v36 + 16;
    v30 = v8 + 64;
    for (i = v36 + 32; v17; result = (*(v24 + 32))(*(v28 + 56) + v25, v27, v26))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = v19 | (v13 << 6);
      v23 = *(*(v8 + 48) + 4 * v22);
      v24 = v36;
      v25 = *(v36 + 72) * v22;
      v27 = v33;
      v26 = v34;
      (*(v36 + 16))(v33, *(v8 + 56) + v25, v34);
      v28 = v35;
      *(*(v35 + 48) + 4 * v22) = v23;
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v5 = v29;
        v10 = v35;
        goto LABEL_18;
      }

      v21 = *(v30 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

void *sub_1E4BDFAD0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v47 = *(v45 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v10 = *v4;
  v11 = sub_1E4BF07AC();
  v12 = v11;
  if (*(v10 + 16))
  {
    v40 = v7;
    result = (v11 + 64);
    v14 = v10 + 64;
    v15 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v15)
    {
      result = memmove(result, (v10 + 64), 8 * v15);
    }

    v17 = 0;
    v18 = *(v10 + 16);
    v46 = v12;
    *(v12 + 16) = v18;
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    v41 = v47 + 32;
    v42 = v47 + 16;
    v43 = v10;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v48 = (v21 - 1) & v21;
LABEL_17:
        v26 = v23 | (v17 << 6);
        v27 = 16 * v26;
        v28 = *(v10 + 56);
        v29 = (*(v10 + 48) + 16 * v26);
        v30 = *v29;
        v31 = v29[1];
        v32 = v47;
        v33 = *(v47 + 72) * v26;
        v34 = v44;
        v35 = v45;
        (*(v47 + 16))(v44, v28 + v33, v45);
        v36 = v46;
        v37 = (*(v46 + 48) + v27);
        *v37 = v30;
        v37[1] = v31;
        v38 = *(v36 + 56) + v33;
        v10 = v43;
        (*(v32 + 32))(v38, v34, v35);

        v21 = v48;
      }

      while (v48);
    }

    v24 = v17;
    while (1)
    {
      v17 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v7 = v40;
        v12 = v46;
        goto LABEL_21;
      }

      v25 = *(v14 + 8 * v17);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v48 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v12;
  }

  return result;
}

uint64_t sub_1E4BDFD4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  *(v7 + 16) = a6;
  *(v7 + 40) = *a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v7 + 24) = v9;
  *v9 = v7;
  v9[1] = sub_1E4BDFE40;

  return v11();
}

uint64_t sub_1E4BDFE40()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BDFF74, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BDFF74()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1E4BC8038(*(v0 + 40), v1, sub_1E4B8EFD0, &qword_1ECF94608, &qword_1E4C18D20);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E4BE000C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  *(v7 + 16) = a6;
  *(v7 + 40) = *a7;
  v11 = (a4 + *a4);
  v8 = a4[1];
  v9 = swift_task_alloc();
  *(v7 + 24) = v9;
  *v9 = v7;
  v9[1] = sub_1E4BE0100;

  return v11();
}

uint64_t sub_1E4BE0100()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE0234, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE0234()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  sub_1E4BC8038(*(v0 + 40), v1, sub_1E4B8EFD0, &qword_1ECF94558, &unk_1E4C05570);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E4BE02CC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE02F8, 0, 0);
}

uint64_t sub_1E4BE02F8()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BE0400;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE64BC, v2, v7);
}

uint64_t sub_1E4BE0400()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE053C, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1E4BE053C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1E4BE05A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_1E4BDDFCC(a2);
}

uint64_t sub_1E4BE05D0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE06C4;

  return v13();
}

uint64_t sub_1E4BE06C4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE07F8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE07F8()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC8228(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE086C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE0898, 0, 0);
}

uint64_t sub_1E4BE0898()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F68, &qword_1E4C12EB0);
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v7 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE62A8, v2, v6);
}

uint64_t sub_1E4BE09AC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE6970, 0, 0);
  }

  else
  {
    v4 = v3[8];

    v5 = v3[1];

    return v5();
  }
}

void sub_1E4BE0AE8(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t, void *))
{
  v4 = *a2;
  v5 = a2[1];
  sub_1E4BF01DC();
  sub_1E4BC3EF0(&qword_1ECF94600, MEMORY[0x1E69E8550]);
  v6 = swift_allocError();
  sub_1E4BEFD9C();
  a3(v4, v5, v6);
}

uint64_t sub_1E4BE0BA8@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_1E4BDE18C(a2);
}

uint64_t sub_1E4BE0BD8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE0CCC;

  return v13();
}

uint64_t sub_1E4BE0CCC()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE0E00, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE0E00()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC8408(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE0E74(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE0EA0, 0, 0);
}

uint64_t sub_1E4BE0EA0()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95F10, &qword_1E4C0E7F0);
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v7 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE6190, v2, v6);
}

uint64_t sub_1E4BE0FB4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_1E4BDE34C(a2);
}

uint64_t sub_1E4BE0FE4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE10D8;

  return v13();
}

uint64_t sub_1E4BE10D8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE120C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE120C()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC85E8(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE1280(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE12AC, 0, 0);
}

uint64_t sub_1E4BE12AC()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v6 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5DE0, v2, &type metadata for RCSService.CreateGroupChatRequest.Result);
}

uint64_t sub_1E4BE13B0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE14A4;

  return v13();
}

uint64_t sub_1E4BE14A4()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE15D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE15D8()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC87C8(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE164C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE1678, 0, 0);
}

uint64_t sub_1E4BE1678()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5CC8, v2, v7);
}

uint64_t sub_1E4BE1780(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE1874;

  return v13();
}

uint64_t sub_1E4BE1874()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE19A8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE19A8()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC89A8(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE1A1C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE1A48, 0, 0);
}

uint64_t sub_1E4BE1A48()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v6 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5BB0, v2, &type metadata for RCSService.AddGroupChatParticipantsRequest.Result);
}

uint64_t sub_1E4BE1B4C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE1C40;

  return v13();
}

uint64_t sub_1E4BE1C40()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE1D74, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE1D74()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC8B88(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE1DE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3[1];
  v5[2] = *a3;
  v5[3] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE1E14, 0, 0);
}

uint64_t sub_1E4BE1E14()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 48);
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 16;
  *(v2 + 32) = v3;
  v4 = *(MEMORY[0x1E69E8920] + 4);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_1E4BE09AC;
  v6 = *(v0 + 32);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000014, 0x80000001E4BF1B10, sub_1E4BE5A98, v2, &type metadata for RCSService.RemoveGroupChatParticipantsRequest.Result);
}

uint64_t sub_1E4BE1F18(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE200C;

  return v13();
}

uint64_t sub_1E4BE200C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE2140, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE2140()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC8D68(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E4BE21B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *a3;
  v10 = a3[1];
  v11 = swift_task_alloc();
  *(v5 + 24) = v11;
  *v11 = v5;
  v11[1] = sub_1E4BE2278;

  return sub_1E4BCCD94(a2, v9, v10, a4, a5);
}

uint64_t sub_1E4BE2278(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_1E4BE238C@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  return sub_1E4BDEC0C(a2);
}

uint64_t sub_1E4BE23BC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v8 = *a7;
  v9 = a7[1];
  v7[2] = a6;
  v7[3] = v8;
  v7[4] = v9;
  v13 = (a4 + *a4);
  v10 = a4[1];
  v11 = swift_task_alloc();
  v7[5] = v11;
  *v11 = v7;
  v11[1] = sub_1E4BE24B0;

  return v13();
}

uint64_t sub_1E4BE24B0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE25E4, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE25E4()
{
  v1 = v0[6];
  v2 = v0[2];
  sub_1E4BC8F48(v0[3], v0[4], v1);

  v3 = v0[1];

  return v3();
}

uint64_t _s21TelephonyMessagingKit10RCSServiceC27IncomingMessageNotificationV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1E4BF099C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = type metadata accessor for RCSMessage(0);
  if ((static RCSMessage.Content.== infix(_:_:)(a1 + v5[6], a2 + v5[6]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1 + v5[7];
  v7 = *(v6 + 8);
  v8 = *(v6 + 16);
  v9 = *(v6 + 24);
  v10 = *(v6 + 32);
  v42 = *v6;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v46 = v10;
  v11 = a2 + v5[7];
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(v11 + 24);
  v15 = *(v11 + 32);
  v37 = *v11;
  v38 = v12;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  sub_1E4ADD6D8(v42, v7, v8, v9, v10);
  sub_1E4ADD6D8(v37, v12, v13, v14, v15);
  v16 = _s21TelephonyMessagingKit9RCSHandleO2eeoiySbAC_ACtFZ_0(&v42, &v37);
  sub_1E4ADD764(v37, v38, v39, v40, v41);
  sub_1E4ADD764(v42, v43, v44, v45, v46);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

  v17 = v5[8];
  if ((sub_1E4BEFA9C() & 1) == 0)
  {
    return 0;
  }

  v18 = type metadata accessor for RCSService.IncomingMessageNotification(0);
  v19 = *(v18 + 20);
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v23 = *(a1 + v19 + 16);
  v22 = *(a1 + v19 + 24);
  v24 = (a2 + v19);
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  if (!v21)
  {
    v36 = v18;
    sub_1E4B440B4(v20, 0);
    if (!v26)
    {
      sub_1E4B440B4(v25, 0);
      v21 = 0;
      goto LABEL_25;
    }

    sub_1E4B440B4(v25, v26);
    goto LABEL_21;
  }

  if (!v26)
  {
    sub_1E4B440B4(v20, v21);
    sub_1E4B440B4(v25, 0);
    sub_1E4B440B4(v20, v21);

LABEL_21:
    sub_1E4B44588(v20, v21);
    v29 = v25;
    v30 = v26;
LABEL_30:
    sub_1E4B44588(v29, v30);
    return 0;
  }

  v36 = v18;
  if ((v20 != v25 || v21 != v26) && (sub_1E4BF099C() & 1) == 0)
  {
    sub_1E4B440B4(v20, v21);
    sub_1E4B440B4(v25, v26);
    sub_1E4B440B4(v20, v21);
    sub_1E4B44588(v25, v26);
LABEL_29:

    v29 = v20;
    v30 = v21;
    goto LABEL_30;
  }

  if (v23 != v27 || v22 != v28)
  {
    v35 = sub_1E4BF099C();
    sub_1E4B440B4(v20, v21);
    sub_1E4B440B4(v25, v26);
    sub_1E4B440B4(v20, v21);
    sub_1E4B44588(v25, v26);
    if (v35)
    {
      goto LABEL_23;
    }

    goto LABEL_29;
  }

  sub_1E4B440B4(v20, v21);
  sub_1E4B440B4(v25, v26);
  sub_1E4B440B4(v20, v21);
  sub_1E4B44588(v25, v26);
LABEL_23:

LABEL_25:
  sub_1E4B44588(v20, v21);
  v31 = *(v36 + 24);
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);

  return sub_1E4BC68F4(v32, v33);
}

uint64_t sub_1E4BE2A70(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1E4ADD6D8(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_1E4BE2AB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E4BF1BD0 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69646F636564 && a2 == 0xEE0064656C696146 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261726F706D6574 && a2 == 0xEE00726F72724579 || (sub_1E4BF099C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E656E616D726570 && a2 == 0xEE00726F72724574 || (sub_1E4BF099C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (sub_1E4BF099C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646E756F46746F6ELL && a2 == 0xE800000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF1A80 == a2)
  {

    return 9;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1E4BE2E10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97B58, &qword_1E4C18CF0);
    v3 = sub_1E4BF067C();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1E4BEFEAC();
      sub_1E4BF0A6C();
      v29 = v7;
      sub_1E4BEFF4C();
      v9 = sub_1E4BF0A9C();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1E4BEFEAC();
        v20 = v19;
        if (v18 == sub_1E4BEFEAC() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1E4BF099C();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E4BE3004(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BE3064()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD2A70(v4, v0 + v3);
}

uint64_t sub_1E4BE313C()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD3718(v4, v0 + v3);
}

uint64_t sub_1E4BE3214()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD3EA0(v4, v0 + v3);
}

uint64_t objectdestroy_11Tm()
{
  v1 = type metadata accessor for RCSMessage(0);
  v2 = *(*(v1 - 1) + 80);
  v69 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = v0 + ((v2 + 24) & ~v2);
  v5 = *(v4 + 8);

  v6 = (v4 + v1[6]);
  type metadata accessor for RCSMessage.Content(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v23 = type metadata accessor for RCSService.Business.Card(0);
        v24 = *(v23 + 28);
        v25 = sub_1E4BEFA6C();
        v65 = *(*(v25 - 8) + 48);
        v67 = *(v25 - 8);
        if (!v65(&v6[v24], 1, v25))
        {
          (*(v67 + 8))(&v6[v24], v25);
        }

        v6 += *(v23 + 36);
        v26 = type metadata accessor for RCSService.Business.Card.Media(0);
        if (!(*(*(v26 - 1) + 48))(v6, 1, v26))
        {
          v57 = *(v67 + 8);
          v57(v6, v25);
          v27 = v26[5];
          v28 = sub_1E4BEFB4C();
          v58 = *(v28 - 8);
          v63 = v28;
          v61 = *(v58 + 48);
          if (!v61(&v6[v27], 1))
          {
            (*(v58 + 8))(&v6[v27], v63);
          }

          v59 = v26[6];
          v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92D70, &unk_1E4C07A60);
          v30 = *(v29 - 8);
          v56 = *(v30 + 8);
          v56(&v6[v59], v29);
          v55 = v26[7];
          if (!v65(&v6[v55], 1, v25))
          {
            v57(&v6[v55], v25);
          }

          v31 = v26[8];
          if (!(v61)(&v6[v31], 1, v63))
          {
            (*(v58 + 8))(&v6[v31], v63);
          }

          v32 = v26[9];
          if (!(*(v30 + 48))(&v6[v32], 1, v29))
          {
            v56(&v6[v32], v29);
          }

          v33 = *&v6[v26[11] + 8];
        }

        v34 = type metadata accessor for RCSService.Business.Card.Content(0);
        v35 = *&v6[v34[5] + 8];

        v36 = *&v6[v34[6] + 8];

        v20 = v34[7];
      }

      else
      {
        if (EnumCaseMultiPayload != 6)
        {
          goto LABEL_34;
        }

        v16 = type metadata accessor for RCSService.Business.CardCarousel(0);
        v17 = *(v16 + 28);
        v18 = sub_1E4BEFA6C();
        v19 = *(v18 - 8);
        if (!(*(v19 + 48))(&v6[v17], 1, v18))
        {
          (*(v19 + 8))(&v6[v17], v18);
        }

        v20 = *(v16 + 32);
      }

      v37 = *&v6[v20];
    }

    else
    {
      if (EnumCaseMultiPayload != 3)
      {
        v8 = type metadata accessor for RCSMessage.ComposingIndicator(0);
        v9 = *(v8 + 20);
        v10 = sub_1E4BEFABC();
        v11 = *(v10 - 8);
        if (!(*(v11 + 48))(&v6[v9], 1, v10))
        {
          (*(v11 + 8))(&v6[v9], v10);
        }

        v12 = *(v8 + 24);
        v13 = sub_1E4BEFB4C();
        v14 = *(v13 - 8);
        if (!(*(v14 + 48))(&v6[v12], 1, v13))
        {
          (*(v14 + 8))(&v6[v12], v13);
        }

        goto LABEL_34;
      }

      v22 = *(v6 + 2);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (!EnumCaseMultiPayload)
  {
    v21 = *(v6 + 1);
    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_34;
    }

    v15 = *(v6 + 3);
    goto LABEL_33;
  }

  v41 = sub_1E4BEFA6C();
  v64 = *(*(v41 - 8) + 8);
  v66 = v41;
  v64(v6);
  v42 = type metadata accessor for RCSFileTransferMetadata();
  v43 = *&v6[v42[5] + 8];

  v44 = v42[7];
  v45 = sub_1E4BEFB4C();
  v68 = *(v45 - 8);
  v60 = *(v68 + 48);
  if (!v60(&v6[v44], 1, v45))
  {
    (*(v68 + 8))(&v6[v44], v45);
  }

  v62 = v45;
  v46 = v42[8];
  v47 = sub_1E4BEFABC();
  v48 = (*(v47 - 8) + 8);
  v49 = &v6[v46];
  v50 = *v48;
  (*v48)(v49, v47);
  v51 = &v6[*(type metadata accessor for RCSMessage.FileTransfer(0) + 20)];
  if (!(*(*(v42 - 1) + 48))(v51, 1, v42))
  {
    (v64)(v51, v66);
    v52 = *&v51[v42[5] + 8];

    v53 = v42[7];
    if (!v60(&v51[v53], 1, v62))
    {
      (*(v68 + 8))(&v51[v53], v62);
    }

    v50(&v51[v42[8]], v47);
  }

LABEL_34:
  v38 = v4 + v1[7];
  sub_1E4ADD764(*v38, *(v38 + 8), *(v38 + 16), *(v38 + 24), *(v38 + 32));
  v39 = v1[8];
  v40 = sub_1E4BEFABC();
  (*(*(v40 - 8) + 8))(v4 + v39, v40);

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v69, v2 | 7);
}

uint64_t sub_1E4BE3B18()
{
  v2 = *(type metadata accessor for RCSMessage(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD4394(v4, v0 + v3);
}

uint64_t sub_1E4BE3BF0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v9 = *(v0 + 112);
  v10 = *(v0 + 24);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1E4B34F84;

  return sub_1E4BD4734(v2, v10, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E4BE3CF8()
{
  v2 = v0[2];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD52F8(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE3E00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE086C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4BE3EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BD84FC(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1E4BE3FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE1280(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4BE40CC()
{
  v2 = v0[2];
  v3 = v0[8];
  v4 = v0[9];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD8E20(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE41D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE164C(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4BE42D0()
{
  v2 = v0[2];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BD97C8(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE43D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE1A1C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_78Tm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1E4BE452C()
{
  v2 = v0[2];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BDA060(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE4634(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE1DE8(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4BE4730()
{
  v2 = v0[2];
  v3 = v0[10];
  v4 = v0[11];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BDA934(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE4838()
{
  v2 = *(type metadata accessor for RCSService.ReportSpamRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E4B33678;

  return sub_1E4BDC87C(v4, v0 + v3, v6, v7);
}

uint64_t sub_1E4BE4A00()
{
  v2 = v0[2];
  v3 = v0[11];
  v4 = v0[12];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E4B34F84;

  return sub_1E4BDD3B4(v2, (v0 + 3), v3, v4);
}

uint64_t sub_1E4BE4B08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE21B4(a1, v4, v5, v7, v6);
}

unint64_t sub_1E4BE4C08()
{
  result = qword_1ECF97A50;
  if (!qword_1ECF97A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97A50);
  }

  return result;
}

unint64_t sub_1E4BE4C60(void *a1)
{
  a1[1] = sub_1E4B1B7E8();
  a1[2] = sub_1E4B1B740();
  result = sub_1E4B843DC();
  a1[3] = result;
  return result;
}

void sub_1E4BE4D0C()
{
  type metadata accessor for RCSMessage(319);
  if (v0 <= 0x3F)
  {
    sub_1E4AE5B08(319, &qword_1ECF95A38);
    if (v1 <= 0x3F)
    {
      sub_1E4BE4F18(319, &qword_1EE2BD738, type metadata accessor for RCSService.Business.Suggestion, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4BE4E3C()
{
  sub_1E4AE5B08(319, &qword_1ECF97A78);
  if (v0 <= 0x3F)
  {
    sub_1E4BE4F18(319, &qword_1ECF96D40, type metadata accessor for RCSService.RemoteCapabilities, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E4BE4F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1E4BE4F8C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1E4BE501C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4BE5180()
{
  result = qword_1ECF97AA0;
  if (!qword_1ECF97AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AA0);
  }

  return result;
}

unint64_t sub_1E4BE51D8()
{
  result = qword_1ECF97AA8;
  if (!qword_1ECF97AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AA8);
  }

  return result;
}

unint64_t sub_1E4BE5230()
{
  result = qword_1ECF97AB0;
  if (!qword_1ECF97AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AB0);
  }

  return result;
}

unint64_t sub_1E4BE5288()
{
  result = qword_1ECF97AB8;
  if (!qword_1ECF97AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AB8);
  }

  return result;
}

unint64_t sub_1E4BE52E0()
{
  result = qword_1ECF97AC0;
  if (!qword_1ECF97AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AC0);
  }

  return result;
}

unint64_t sub_1E4BE5338()
{
  result = qword_1ECF97AC8;
  if (!qword_1ECF97AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AC8);
  }

  return result;
}

unint64_t sub_1E4BE5390()
{
  result = qword_1ECF97AD0;
  if (!qword_1ECF97AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AD0);
  }

  return result;
}

unint64_t sub_1E4BE53E8()
{
  result = qword_1ECF97AD8;
  if (!qword_1ECF97AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AD8);
  }

  return result;
}

unint64_t sub_1E4BE5440()
{
  result = qword_1ECF97AE0;
  if (!qword_1ECF97AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AE0);
  }

  return result;
}

unint64_t sub_1E4BE5498()
{
  result = qword_1ECF97AE8;
  if (!qword_1ECF97AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AE8);
  }

  return result;
}

unint64_t sub_1E4BE54F0()
{
  result = qword_1ECF97AF0;
  if (!qword_1ECF97AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AF0);
  }

  return result;
}

unint64_t sub_1E4BE5548()
{
  result = qword_1ECF97AF8;
  if (!qword_1ECF97AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97AF8);
  }

  return result;
}

unint64_t sub_1E4BE55A0()
{
  result = qword_1ECF97B00;
  if (!qword_1ECF97B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B00);
  }

  return result;
}

unint64_t sub_1E4BE55F8()
{
  result = qword_1ECF97B08;
  if (!qword_1ECF97B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B08);
  }

  return result;
}

unint64_t sub_1E4BE5650()
{
  result = qword_1ECF97B10;
  if (!qword_1ECF97B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B10);
  }

  return result;
}

unint64_t sub_1E4BE56A8()
{
  result = qword_1ECF97B18;
  if (!qword_1ECF97B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B18);
  }

  return result;
}

unint64_t sub_1E4BE5700()
{
  result = qword_1ECF97B20;
  if (!qword_1ECF97B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B20);
  }

  return result;
}

unint64_t sub_1E4BE5758()
{
  result = qword_1ECF97B28;
  if (!qword_1ECF97B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B28);
  }

  return result;
}

unint64_t sub_1E4BE57B0()
{
  result = qword_1ECF97B30;
  if (!qword_1ECF97B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B30);
  }

  return result;
}

unint64_t sub_1E4BE5808()
{
  result = qword_1ECF97B38;
  if (!qword_1ECF97B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B38);
  }

  return result;
}

unint64_t sub_1E4BE5860()
{
  result = qword_1ECF97B40;
  if (!qword_1ECF97B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B40);
  }

  return result;
}

unint64_t sub_1E4BE58B8()
{
  result = qword_1ECF97B48;
  if (!qword_1ECF97B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B48);
  }

  return result;
}

unint64_t sub_1E4BE5910()
{
  result = qword_1ECF97B50;
  if (!qword_1ECF97B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B50);
  }

  return result;
}

uint64_t sub_1E4BE599C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE23BC(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE5AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE1F18(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE5BE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE1B4C(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE5D00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE1780(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE5E18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE13B0(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE5EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  if (a8 - 1 >= 2)
  {
    if (a8)
    {
      return result;
    }
  }
}

uint64_t sub_1E4BE5FC0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BD733C(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t sub_1E4BE6094(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE0E74(a1, v4, v5, v7, v6);
}

uint64_t sub_1E4BE61C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE0FE4(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE62E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE0BD8(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE63C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E4B34F84;

  return sub_1E4BE02CC(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_181Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1E4BE655C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE05D0(a1, v4, v5, v6, v7, v8, v1 + 7);
}

uint64_t sub_1E4BE665C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B34F84;

  return sub_1E4BE000C(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t objectdestroy_279Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 60, 7);
}

uint64_t sub_1E4BE67A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E4B33678;

  return sub_1E4BDFD4C(a1, v4, v5, v6, v7, v8, (v1 + 56));
}

uint64_t sub_1E4BE6884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BE68EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4BE69A4()
{
  result = qword_1ECF97B60;
  if (!qword_1ECF97B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B60);
  }

  return result;
}

uint64_t sub_1E4BE6A20(_BYTE *a1, uint64_t a2, _DWORD *a3)
{
  v5 = *(a2 + 16);
  *(v4 + 152) = *a2;
  *(v4 + 144) = v3;
  *(v4 + 228) = *a1;
  *(v4 + 168) = v5;
  *(v4 + 184) = *(a2 + 32);
  *(v4 + 200) = *(a2 + 48);
  *(v4 + 224) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1E4BE6A6C, 0, 0);
}

uint64_t sub_1E4BE6A6C()
{
  v40 = v0;
  if (qword_1ECF92448 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);
  v6 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v6, qword_1ECF97B68);

  v7 = sub_1E4BEFB5C();
  v8 = sub_1E4BF04BC();

  if (os_log_type_enabled(v7, v8))
  {
    v32 = *(v0 + 224);
    v34 = *(v0 + 200);
    v9 = *(v0 + 228);
    v30 = *(v0 + 184);
    v31 = *(v0 + 168);
    v29 = *(v0 + 152);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v35 = v11;
    *&v36 = 0;
    *v10 = 136315650;
    *(&v36 + 1) = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v9);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v12 = sub_1E4B30548(v36, 0xE000000000000000, &v35);

    *(v10 + 4) = v12;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v32;
    *(v10 + 18) = 2080;
    v36 = v29;
    v37 = v31;
    v38 = v30;
    v39 = v34;
    v13 = sub_1E4AEDEC0();
    v15 = sub_1E4B30548(v13, v14, &v35);

    *(v10 + 20) = v15;
    _os_log_impl(&dword_1E4AD3000, v7, v8, "Sending MMS: [%s], [%u], mms:%s", v10, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v11, -1, -1);
    MEMORY[0x1E6921800](v10, -1, -1);
  }

  else
  {
    v9 = *(v0 + 228);
  }

  v16 = *(v0 + 200);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 20) = v9;
  *(v0 + 24) = v18;
  *(v0 + 32) = v17;
  *(v0 + 40) = *(v0 + 168);
  *(v0 + 56) = *(v0 + 184);
  *(v0 + 72) = v16;
  v20 = v19[6];
  v21 = v19[7];
  __swift_project_boxed_opaque_existential_1(v19 + 3, v20);
  v22 = *(v0 + 32);
  *(v0 + 80) = *(v0 + 16);
  *(v0 + 96) = v22;
  v23 = *(v0 + 64);
  *(v0 + 112) = *(v0 + 48);
  *(v0 + 128) = v23;
  v24 = *(v21 + 32);

  v33 = (v24 + *v24);
  v25 = v24[1];
  v26 = swift_task_alloc();
  *(v0 + 208) = v26;
  v27 = sub_1E4B15148();
  *v26 = v0;
  v26[1] = sub_1E4BE6E7C;

  return v33(v0 + 80, &type metadata for SendMMSRequest, v27, v20, v21);
}

uint64_t sub_1E4BE6E7C()
{
  v2 = *(*v1 + 208);
  v3 = *v1;
  *(v3 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E4BE6FB8, 0, 0);
  }

  else
  {
    sub_1E4BE7E40(v3 + 16);
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E4BE6FB8()
{
  sub_1E4BE7E40(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 216);

  return v1();
}

uint64_t sub_1E4BE701C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for MMSReportSpamRequest();
  v2[4] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E4BE70B0, 0, 0);
}

uint64_t sub_1E4BE70B0()
{
  if (qword_1ECF92448 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  __swift_project_value_buffer(v1, qword_1ECF97B68);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "Reporting MMS message as spam.", v4, 2u);
    MEMORY[0x1E6921800](v4, -1, -1);
  }

  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  sub_1E4BE7D20(v6, v5, type metadata accessor for MMSMessage);
  v8 = v7[6];
  v9 = v7[7];
  __swift_project_boxed_opaque_existential_1(v7 + 3, v8);
  v10 = *(v9 + 32);
  v17 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[6] = v12;
  v13 = sub_1E4BE7D88();
  *v12 = v0;
  v12[1] = sub_1E4BE72C8;
  v15 = v0[4];
  v14 = v0[5];

  return v17(v14, v15, v13, v8, v9);
}

uint64_t sub_1E4BE72C8()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E4BE7460;
  }

  else
  {
    v3 = sub_1E4BE73DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BE73DC()
{
  sub_1E4BE7DE0(*(v0 + 40), type metadata accessor for MMSReportSpamRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E4BE7460()
{
  sub_1E4BE7DE0(v0[5], type metadata accessor for MMSReportSpamRequest);

  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_1E4BE74E4(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = type metadata accessor for MMSService.Configuration(0);
  *(v3 + 32) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 40) = swift_task_alloc();
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 81) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1E4BE7590, 0, 0);
}

uint64_t sub_1E4BE7590()
{
  v22 = v0;
  if (qword_1ECF92448 != -1)
  {
    swift_once();
  }

  v1 = sub_1E4BEFB7C();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1ECF97B68);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 81);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    v20 = 0;
    *v6 = 136315138;
    v21 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v5);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v8 = sub_1E4B30548(v20, 0xE000000000000000, &v19);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "[%s] Retrieving MMS configuration.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6921800](v7, -1, -1);
    MEMORY[0x1E6921800](v6, -1, -1);
  }

  *(v0 + 82) = v5;
  v9 = *(v0 + 24);
  v10 = v9[6];
  v11 = v9[7];
  __swift_project_boxed_opaque_existential_1(v9 + 3, v10);
  *(v0 + 80) = v5;
  v12 = *(v11 + 24);
  v18 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  v15 = sub_1E4B006AC();
  *v14 = v0;
  v14[1] = sub_1E4BE7858;
  v16 = *(v0 + 16);

  return v18(v16, v0 + 80, &type metadata for MMSConfigurationRetrieveRequest, v15, v10, v11);
}

uint64_t sub_1E4BE7858()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1E4BE7BEC;
  }

  else
  {
    v3 = sub_1E4BE796C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E4BE796C()
{
  v23 = v0;
  v1 = *(v0 + 56);
  sub_1E4BE7D20(*(v0 + 16), *(v0 + 48), type metadata accessor for MMSService.Configuration);
  v2 = sub_1E4BEFB5C();
  v3 = sub_1E4BF04BC();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = *(v0 + 82);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    v21 = 0;
    *v8 = 136315394;
    v22 = 0xE000000000000000;
    sub_1E4BF069C();
    MEMORY[0x1E69205B0](0xD000000000000012, 0x80000001E4BF14E0);
    sub_1E4AEC058(v7);
    MEMORY[0x1E69205B0](41, 0xE100000000000000);
    v10 = sub_1E4B30548(v21, 0xE000000000000000, &v20);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    sub_1E4BE7D20(v4, v5, type metadata accessor for MMSService.Configuration);
    v11 = sub_1E4BEFF0C();
    v13 = v12;
    sub_1E4BE7DE0(v4, type metadata accessor for MMSService.Configuration);
    v14 = sub_1E4B30548(v11, v13, &v20);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1E4AD3000, v2, v3, "[%s] Service responded with %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E6921800](v9, -1, -1);
    MEMORY[0x1E6921800](v8, -1, -1);
  }

  else
  {
    v15 = *(v0 + 48);

    sub_1E4BE7DE0(v15, type metadata accessor for MMSService.Configuration);
  }

  v17 = *(v0 + 40);
  v16 = *(v0 + 48);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E4BE7BEC()
{
  v2 = v0[5];
  v1 = v0[6];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_1E4BE7C58()
{
  v0 = sub_1E4BEFB7C();
  __swift_allocate_value_buffer(v0, qword_1ECF97B68);
  v1 = __swift_project_value_buffer(v0, qword_1ECF97B68);
  if (qword_1EE2BD748 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE2C1FE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1E4BE7D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E4BE7D88()
{
  result = qword_1EE2BDD38;
  if (!qword_1EE2BDD38)
  {
    type metadata accessor for MMSReportSpamRequest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2BDD38);
  }

  return result;
}

uint64_t sub_1E4BE7DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RCSService.GroupChatEndedEvent.groupHandle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RCSService.GroupChatEndedEvent.endedBy.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v2;
}

uint64_t RCSService.GroupChatParticipantsAddedEvent.groupHandle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RCSService.GroupChatParticipantsAddedEvent.addedBy.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSService.GroupChatParticipantsRemovedEvent.groupHandle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RCSService.GroupChatParticipantsRemovedEvent.removedBy.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t RCSService.GroupChatSubjectUpdatedEvent.groupHandle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RCSService.GroupChatSubjectUpdatedEvent.newSubject.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t RCSService.GroupChatSubjectUpdatedEvent.changedBy.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v2;
}

uint64_t RCSService.GroupChatStartedEvent.groupHandle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t RCSService.GroupChatStartedEvent.subject.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t RCSService.GroupChatStartedEvent.creator.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;
}

__n128 RCSService.GroupChatEndedEvent.CodableRepresentation.init(cellularServiceID:groupHandle:endedBy:isEndToEndEncrypted:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = *a2;
  v5 = a2[1].n128_u64[0];
  v6 = a2[1].n128_u64[1];
  v7 = *a3;
  v8 = a3[1];
  *a4 = *a1;
  *(a4 + 8) = result;
  *(a4 + 24) = v5;
  *(a4 + 32) = v6;
  *(a4 + 40) = v7;
  *(a4 + 48) = v8;
  return result;
}

unint64_t sub_1E4BE8104()
{
  v1 = 0x6E614870756F7267;
  if (*v0 != 1)
  {
    v1 = 0x79426465646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E4BE816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BEB3E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BE8194(uint64_t a1)
{
  v2 = sub_1E4BE8440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BE81D0(uint64_t a1)
{
  v2 = sub_1E4BE8440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.GroupChatEndedEvent.CodableRepresentation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97B80, &qword_1E4C18E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v10 = *(v1 + 2);
  v11 = *(v1 + 4);
  v20 = *(v1 + 3);
  v21 = v9;
  v22 = v11;
  v12 = *(v1 + 5);
  v18 = *(v1 + 6);
  v19 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE8440();
  sub_1E4BF0ACC();
  LOBYTE(v24) = v8;
  v28 = 0;
  sub_1E4ADBE98();
  v14 = v23;
  sub_1E4BF093C();
  if (!v14)
  {
    v15 = v18;
    v16 = v19;
    v24 = v21;
    v25 = v10;
    v26 = v20;
    v27 = v22;
    v28 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    v24 = v16;
    v25 = v15;
    v28 = 2;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E4BE8440()
{
  result = qword_1ECF97B88;
  if (!qword_1ECF97B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97B88);
  }

  return result;
}

uint64_t RCSService.GroupChatEndedEvent.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97B90, &qword_1E4C18E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE8440();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v21;
  v25 = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v19 = v21;
  v20 = v22;
  v12 = v24;
  v18 = v23;
  v25 = 2;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v13 = v21;
  v14 = v22;
  *a2 = v11;
  v15 = v20;
  *(a2 + 8) = v19;
  *(a2 + 16) = v15;
  *(a2 + 24) = v18;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 RCSService.GroupChatParticipantsAddedEvent.CodableRepresentation.init(cellularServiceID:groupHandle:addedParticipants:addedBy:isEndToEndEncrypted:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a2;
  v6 = a2[1].n128_u64[0];
  v7 = a2[1].n128_u64[1];
  v8 = *a4;
  v9 = a4[1];
  *a5 = *a1;
  *(a5 + 8) = result;
  *(a5 + 24) = v6;
  *(a5 + 32) = v7;
  *(a5 + 40) = a3;
  *(a5 + 48) = v8;
  *(a5 + 56) = v9;
  return result;
}

unint64_t sub_1E4BE8770()
{
  v1 = 0x6E614870756F7267;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x79426465646461;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E4BE87FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BEB508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BE8824(uint64_t a1)
{
  v2 = sub_1E4BE8B80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BE8860(uint64_t a1)
{
  v2 = sub_1E4BE8B80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.GroupChatParticipantsAddedEvent.CodableRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97B98, &unk_1E4C18E70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v23 = *(v1 + 1);
  v24 = v10;
  v11 = *(v1 + 3);
  v25 = *(v1 + 4);
  v12 = *(v1 + 6);
  v21 = *(v1 + 5);
  v22 = v11;
  v19 = *(v1 + 7);
  v20 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE8B80();
  sub_1E4BF0ACC();
  LOBYTE(v26) = v9;
  v30 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v15 = v20;
    v16 = v21;
    v17 = v19;
    v26 = v23;
    v27 = v24;
    v28 = v22;
    v29 = v25;
    v30 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    v26 = v16;
    v30 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40);
    sub_1E4BF093C();
    v26 = v15;
    v27 = v17;
    v30 = 3;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4BE8B80()
{
  result = qword_1ECF97BA0;
  if (!qword_1ECF97BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97BA0);
  }

  return result;
}

uint64_t RCSService.GroupChatParticipantsAddedEvent.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BA8, &qword_1E4C18E80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE8B80();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v29) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v33;
  LOBYTE(v29) = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v42 = v11;
  v28 = v34;
  v12 = v35;
  v26 = v33;
  v27 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  LOBYTE(v29) = 2;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140);
  sub_1E4BF087C();
  v25 = v12;
  v13 = v33;
  v43 = 3;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v23 = *(&v41 + 1);
  v24 = v41;
  v14 = v42;
  LOBYTE(v29) = v42;
  v15 = v26;
  v16 = v27;
  v17 = v28;
  *(&v29 + 1) = v26;
  *&v30 = v28;
  v18 = v25;
  *(&v30 + 1) = v25;
  *&v31 = v27;
  *(&v31 + 1) = v13;
  v32 = v41;
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  sub_1E4BE8F74(&v29, &v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v33) = v14;
  v34 = v15;
  v35 = v17;
  v36 = v18;
  v37 = v16;
  v38 = v13;
  v39 = v24;
  v40 = v23;
  return sub_1E4BE8FAC(&v33);
}

__n128 RCSService.GroupChatParticipantsRemovedEvent.CodableRepresentation.init(cellularServiceID:groupHandle:removedParticipants:removedBy:removedCurrentUser:isEndToEndEncrypted:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u64[1];
  v9 = *a4;
  v10 = a4[1];
  *a6 = *a1;
  *(a6 + 8) = result;
  *(a6 + 24) = v7;
  *(a6 + 32) = v8;
  *(a6 + 40) = a3;
  *(a6 + 48) = v9;
  *(a6 + 56) = v10;
  *(a6 + 64) = a5;
  return result;
}

unint64_t sub_1E4BE9038()
{
  v1 = *v0;
  v2 = 0x6E614870756F7267;
  if (v1 == 3)
  {
    v3 = 0x426465766F6D6572;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4BE90E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BEB684(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BE9110(uint64_t a1)
{
  v2 = sub_1E4BE94B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BE914C(uint64_t a1)
{
  v2 = sub_1E4BE94B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.GroupChatParticipantsRemovedEvent.CodableRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BB0, &qword_1E4C18E88);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v23 = *(v1 + 1);
  v24 = v10;
  v11 = *(v1 + 3);
  v25 = *(v1 + 4);
  v12 = *(v1 + 6);
  v21 = *(v1 + 5);
  v22 = v11;
  v19 = *(v1 + 7);
  v20 = v12;
  v30 = v1[64];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE94B4();
  sub_1E4BF0ACC();
  LOBYTE(v26) = v9;
  v31 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v16 = v20;
    v15 = v21;
    v17 = v19;
    v26 = v23;
    v27 = v24;
    v28 = v22;
    v29 = v25;
    v31 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    v26 = v15;
    v31 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40);
    sub_1E4BF093C();
    v26 = v16;
    v27 = v17;
    v31 = 3;
    sub_1E4AE2E40();

    sub_1E4BF093C();

    LOBYTE(v26) = 4;
    sub_1E4BF090C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4BE94B4()
{
  result = qword_1ECF97BB8;
  if (!qword_1ECF97BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97BB8);
  }

  return result;
}

uint64_t RCSService.GroupChatParticipantsRemovedEvent.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BC0, &qword_1E4C18E90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE94B4();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v31) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v36;
  LOBYTE(v31) = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v45 = v11;
  v30 = v37;
  v12 = v38;
  v28 = v36;
  v29 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  LOBYTE(v31) = 2;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140);
  sub_1E4BF087C();
  v26 = v12;
  v27 = v36;
  LOBYTE(v31) = 3;
  sub_1E4AE3140();
  sub_1E4BF087C();
  v13 = v37;
  v25 = v36;
  v46 = 4;
  v14 = sub_1E4BF084C();
  (*(v6 + 8))(v9, v5);
  v15 = v45;
  LOBYTE(v31) = v45;
  v16 = v13;
  v24 = v13;
  v18 = v28;
  v17 = v29;
  v19 = v30;
  *(&v31 + 1) = v28;
  *&v32 = v30;
  *(&v32 + 1) = v26;
  *&v33 = v29;
  v20 = v27;
  *(&v33 + 1) = v27;
  *&v34 = v25;
  *(&v34 + 1) = v16;
  v14 &= 1u;
  v35 = v14;
  *(a2 + 64) = v14;
  v21 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v21;
  v22 = v32;
  *a2 = v31;
  *(a2 + 16) = v22;
  sub_1E4BE9944(&v31, &v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v36) = v15;
  v37 = v18;
  v38 = v19;
  v39 = v26;
  v40 = v17;
  v41 = v20;
  v42 = v25;
  v43 = v24;
  v44 = v14;
  return sub_1E4BE997C(&v36);
}

__n128 RCSService.GroupChatSubjectUpdatedEvent.CodableRepresentation.init(cellularServiceID:groupHandle:newSubject:changedBy:isEndToEndEncrypted:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  result = *a2;
  v7 = a2[1].n128_u64[0];
  v8 = a2[1].n128_u64[1];
  v9 = *a5;
  v10 = a5[1];
  *a6 = *a1;
  *(a6 + 8) = result;
  *(a6 + 24) = v7;
  *(a6 + 32) = v8;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = v9;
  *(a6 + 64) = v10;
  return result;
}

unint64_t sub_1E4BE9A04()
{
  v1 = 0x6E614870756F7267;
  v2 = 0x656A62755377656ELL;
  if (*v0 != 2)
  {
    v2 = 0x426465676E616863;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1E4BE9A94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BEB84C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BE9ABC(uint64_t a1)
{
  v2 = sub_1E4BE9DAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BE9AF8(uint64_t a1)
{
  v2 = sub_1E4BE9DAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.GroupChatSubjectUpdatedEvent.CodableRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BC8, &qword_1E4C18E98);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v22 = *(v1 + 1);
  v23 = v10;
  v11 = *(v1 + 3);
  v24 = *(v1 + 4);
  v12 = *(v1 + 6);
  v20 = *(v1 + 5);
  v21 = v11;
  v13 = *(v1 + 8);
  v18 = *(v1 + 7);
  v19 = v12;
  v17 = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE9DAC();
  sub_1E4BF0ACC();
  LOBYTE(v25) = v9;
  v29 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v15 = v18;
    v25 = v22;
    v26 = v23;
    v27 = v21;
    v28 = v24;
    v29 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    LOBYTE(v25) = 2;
    sub_1E4BF08FC();
    v25 = v15;
    v26 = v17;
    v29 = 3;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4BE9DAC()
{
  result = qword_1ECF97BD0;
  if (!qword_1ECF97BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97BD0);
  }

  return result;
}

uint64_t RCSService.GroupChatSubjectUpdatedEvent.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BD8, &qword_1E4C18EA0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BE9DAC();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v35;
  LOBYTE(v30) = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v46 = v11;
  v27 = v35;
  v29 = v36;
  v12 = v37;
  v28 = v38;
  LOBYTE(v35) = 2;
  v24 = sub_1E4BF083C();
  v25 = v12;
  v26 = v13;
  v47 = 3;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v14 = v45;
  v23 = v44;
  v15 = v46;
  LOBYTE(v30) = v46;
  v16 = v27;
  v17 = v29;
  *(&v30 + 1) = v27;
  *&v31 = v29;
  v18 = v28;
  *(&v31 + 1) = v25;
  *&v32 = v28;
  v19 = v26;
  *(&v32 + 1) = v24;
  *&v33 = v26;
  *(&v33 + 1) = v44;
  v34 = v45;
  *(a2 + 64) = v45;
  v20 = v31;
  *a2 = v30;
  *(a2 + 16) = v20;
  v21 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v21;
  sub_1E4BEA188(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v35) = v15;
  v36 = v16;
  v37 = v17;
  v38 = v25;
  v39 = v18;
  v40 = v24;
  v41 = v19;
  v42 = v23;
  v43 = v14;
  return sub_1E4BEA1C0(&v35);
}

__n128 RCSService.GroupChatStartedEvent.CodableRepresentation.init(cellularServiceID:groupHandle:participants:subject:creator:isEndToEndEncrypted:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  result = *a2;
  v8 = a2[1].n128_u64[0];
  v9 = a2[1].n128_u64[1];
  v10 = *a6;
  v11 = a6[1];
  *a7 = *a1;
  *(a7 + 8) = result;
  *(a7 + 24) = v8;
  *(a7 + 32) = v9;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  *(a7 + 56) = a5;
  *(a7 + 64) = v10;
  *(a7 + 72) = v11;
  return result;
}

unint64_t sub_1E4BEA24C()
{
  v1 = *v0;
  v2 = 0x6E614870756F7267;
  v3 = 0x7069636974726170;
  v4 = 0x7463656A627573;
  if (v1 != 3)
  {
    v4 = 0x726F7461657263;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1E4BEA2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E4BEB9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E4BEA324(uint64_t a1)
{
  v2 = sub_1E4BEA6D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEA360(uint64_t a1)
{
  v2 = sub_1E4BEA6D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSService.GroupChatStartedEvent.CodableRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BE0, &qword_1E4C18EA8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = *(v1 + 2);
  v25 = *(v1 + 1);
  v26 = v10;
  v11 = *(v1 + 3);
  v27 = *(v1 + 4);
  v12 = *(v1 + 6);
  v23 = *(v1 + 5);
  v24 = v11;
  v13 = *(v1 + 8);
  v21 = *(v1 + 7);
  v22 = v12;
  v14 = *(v1 + 9);
  v19 = v13;
  v20 = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEA6D0();
  sub_1E4BF0ACC();
  LOBYTE(v28) = v9;
  v32 = 0;
  sub_1E4ADBE98();
  sub_1E4BF093C();
  if (!v2)
  {
    v17 = v23;
    v28 = v25;
    v29 = v26;
    v30 = v24;
    v31 = v27;
    v32 = 1;
    sub_1E4AE8804();

    sub_1E4BF093C();

    v28 = v17;
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
    sub_1E4B69A3C(&qword_1ECF95A70, sub_1E4AE2E40);
    sub_1E4BF093C();
    LOBYTE(v28) = 3;
    sub_1E4BF08FC();
    v28 = v19;
    v29 = v20;
    v32 = 4;
    sub_1E4AE2E40();

    sub_1E4BF093C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E4BEA6D0()
{
  result = qword_1ECF97BE8;
  if (!qword_1ECF97BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97BE8);
  }

  return result;
}

uint64_t RCSService.GroupChatStartedEvent.CodableRepresentation.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97BF0, &qword_1E4C18EB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEA6D0();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32) = 0;
  sub_1E4ADBF38();
  sub_1E4BF087C();
  v11 = v37;
  LOBYTE(v32) = 1;
  sub_1E4AE88AC();
  sub_1E4BF087C();
  v48 = v11;
  v29 = v37;
  v31 = v38;
  v12 = v39;
  v30 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF95A68, &qword_1E4C0C798);
  LOBYTE(v32) = 2;
  sub_1E4B69A3C(&qword_1ECF95A80, sub_1E4AE3140);
  sub_1E4BF087C();
  v27 = v12;
  v28 = v37;
  LOBYTE(v37) = 3;
  v26 = sub_1E4BF083C();
  v14 = v13;
  v49 = 4;
  sub_1E4AE3140();
  sub_1E4BF087C();
  (*(v6 + 8))(v9, v5);
  v24 = *(&v47 + 1);
  v25 = v47;
  v15 = v48;
  LOBYTE(v32) = v48;
  v16 = v31;
  *(&v32 + 1) = v29;
  *&v33 = v31;
  v17 = v27;
  v18 = v30;
  *(&v33 + 1) = v27;
  *&v34 = v30;
  v19 = v28;
  *(&v34 + 1) = v28;
  *&v35 = v26;
  *(&v35 + 1) = v14;
  v36 = v47;
  v20 = v35;
  a2[2] = v34;
  a2[3] = v20;
  v21 = v33;
  *a2 = v32;
  a2[1] = v21;
  a2[4] = v36;
  sub_1E4BEABAC(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v37) = v15;
  v38 = v29;
  v39 = v16;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v26;
  v44 = v14;
  v45 = v25;
  v46 = v24;
  return sub_1E4BEABE4(&v37);
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BEAD00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BEAD48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4BEADBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4BEAE04(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1E4BEAEBC()
{
  result = qword_1ECF97BF8;
  if (!qword_1ECF97BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97BF8);
  }

  return result;
}

unint64_t sub_1E4BEAF14()
{
  result = qword_1ECF97C00;
  if (!qword_1ECF97C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C00);
  }

  return result;
}

unint64_t sub_1E4BEAF6C()
{
  result = qword_1ECF97C08;
  if (!qword_1ECF97C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C08);
  }

  return result;
}

unint64_t sub_1E4BEAFC4()
{
  result = qword_1ECF97C10;
  if (!qword_1ECF97C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C10);
  }

  return result;
}

unint64_t sub_1E4BEB01C()
{
  result = qword_1ECF97C18;
  if (!qword_1ECF97C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C18);
  }

  return result;
}

unint64_t sub_1E4BEB074()
{
  result = qword_1ECF97C20;
  if (!qword_1ECF97C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C20);
  }

  return result;
}

unint64_t sub_1E4BEB0CC()
{
  result = qword_1ECF97C28;
  if (!qword_1ECF97C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C28);
  }

  return result;
}

unint64_t sub_1E4BEB124()
{
  result = qword_1ECF97C30;
  if (!qword_1ECF97C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C30);
  }

  return result;
}

unint64_t sub_1E4BEB17C()
{
  result = qword_1ECF97C38;
  if (!qword_1ECF97C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C38);
  }

  return result;
}

unint64_t sub_1E4BEB1D4()
{
  result = qword_1ECF97C40;
  if (!qword_1ECF97C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C40);
  }

  return result;
}

unint64_t sub_1E4BEB22C()
{
  result = qword_1ECF97C48;
  if (!qword_1ECF97C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C48);
  }

  return result;
}

unint64_t sub_1E4BEB284()
{
  result = qword_1ECF97C50;
  if (!qword_1ECF97C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C50);
  }

  return result;
}

unint64_t sub_1E4BEB2DC()
{
  result = qword_1ECF97C58;
  if (!qword_1ECF97C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C58);
  }

  return result;
}

unint64_t sub_1E4BEB334()
{
  result = qword_1ECF97C60;
  if (!qword_1ECF97C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C60);
  }

  return result;
}

unint64_t sub_1E4BEB38C()
{
  result = qword_1ECF97C68;
  if (!qword_1ECF97C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C68);
  }

  return result;
}

uint64_t sub_1E4BEB3E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79426465646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E4BEB508(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E4BF2950 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79426465646461 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4BEB684(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E4BF2970 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x426465766F6D6572 && a2 == 0xE900000000000079 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001E4BF2990 == a2)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E4BEB84C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656A62755377656ELL && a2 == 0xEA00000000007463 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x426465676E616863 && a2 == 0xE900000000000079)
  {

    return 3;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1E4BEB9D0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001E4BF1400 == a2 || (sub_1E4BF099C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E614870756F7267 && a2 == 0xEB00000000656C64 || (sub_1E4BF099C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEC00000073746E61 || (sub_1E4BF099C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656A627573 && a2 == 0xE700000000000000 || (sub_1E4BF099C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_1E4BF099C();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t TransferService.FileUploadRequest.init(request:sandboxExtension:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for RCSService.FileUploadRequest(0);
  v8 = v7[5];
  v9 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
  v10 = v9[5];
  v11 = sub_1E4BEFA6C();
  (*(*(v11 - 8) + 32))(&a3[v10], &a1[v8], v11);
  sub_1E4AFD6D0(&a1[v7[6]], &a3[v9[6]], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AFD6D0(&a1[v7[7]], &a3[v9[7]], &qword_1ECF92F88, &qword_1E4BFDD20);
  sub_1E4AFD6D0(&a1[v7[8]], &a3[v9[8]], &qword_1ECF92700, &qword_1E4BFB090);
  *a3 = v6;
  result = type metadata accessor for TransferService.FileUploadRequest(0);
  *&a3[*(result + 20)] = a2;
  return result;
}

uint64_t TransferService.FileUploadRequest.Reply.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEC950(v2, v8, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
  v9 = sub_1E4BEFAFC();
  (*(*(v9 - 8) + 32))(a1, v8, v9);
  v10 = *(v5 + 28);
  v11 = type metadata accessor for RCSService.FileUploadRequest.Metadata(0);
  sub_1E4BEC428(&v8[v10], a1 + *(v11 + 20), type metadata accessor for RCSFileTransferMetadata);
  return sub_1E4AFD6D0(&v8[*(v5 + 32)], a1 + *(v11 + 24), &qword_1ECF93730, qword_1E4C16550);
}

uint64_t TransferService.FileUploadRequest.Reply.init(metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E4BEFAFC();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  v5 = type metadata accessor for RCSService.FileUploadRequest.Metadata(0);
  v6 = *(v5 + 20);
  v7 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4BEC428(a1 + v6, a2 + *(v7 + 20), type metadata accessor for RCSFileTransferMetadata);
  return sub_1E4AFD6D0(a1 + *(v5 + 24), a2 + *(v7 + 24), &qword_1ECF93730, qword_1E4C16550);
}

uint64_t sub_1E4BEBF08(uint64_t a1)
{
  v2 = sub_1E4BEC0F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEBF44(uint64_t a1)
{
  v2 = sub_1E4BEC0F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileUploadRequest.Reply.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97C70, &qword_1E4C19848);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEC0F8();
  sub_1E4BF0ACC();
  _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4BEC3E0(&qword_1ECF97510, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BEC0F8()
{
  result = qword_1ECF97C78;
  if (!qword_1ECF97C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C78);
  }

  return result;
}

uint64_t TransferService.FileUploadRequest.Reply.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97C80, &qword_1E4C19850);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for TransferService.FileUploadRequest.Reply(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEC0F8();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4BEC3E0(&qword_1ECF97508, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4BEC428(v17, v14, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
    sub_1E4BEC428(v14, v16, type metadata accessor for TransferService.FileUploadRequest.Reply);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E4BEC3E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BEC428(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BEC4A8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97C70, &qword_1E4C19848);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEC0F8();
  sub_1E4BF0ACC();
  _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(0);
  sub_1E4BEC3E0(&qword_1ECF97510, _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t TransferService.FileUploadRequest.request.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92F88, &qword_1E4BFDD20);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v28 - v5;
  v6 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
  v7 = (v6 - 8);
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4BEC950(v1, v10, _s17FileUploadRequestV21CodableRepresentationVMa);
  v30 = *v10;
  v11 = v7[7];
  v12 = type metadata accessor for RCSService.FileUploadRequest(0);
  v13 = v12[5];
  v29 = sub_1E4BEFA6C();
  v14 = *(v29 - 8);
  (*(v14 + 32))(&a1[v13], &v10[v11], v29);
  v15 = v7[8];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92700, &qword_1E4BFB090);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4AFD6D0(&v10[v15], v18, &qword_1ECF92700, &qword_1E4BFB090);
  v19 = sub_1E4AFD6D0(&v10[v7[9]], v31, &qword_1ECF92F88, &qword_1E4BFDD20);
  v20 = v7[10];
  MEMORY[0x1EEE9AC00](v19);
  sub_1E4AFD6D0(&v10[v21], v18, &qword_1ECF92700, &qword_1E4BFB090);
  v22 = v12[6];
  v23 = sub_1E4BEFB4C();
  v24 = *(*(v23 - 8) + 56);
  v24(&a1[v22], 1, 1, v23);
  v25 = v12[7];
  (*(v14 + 56))(&a1[v25], 1, 1, v29);
  v26 = v12[8];
  v24(&a1[v26], 1, 1, v23);
  *a1 = v30;
  sub_1E4AF1900(v18, &a1[v22], &qword_1ECF92700, &qword_1E4BFB090);
  sub_1E4AF1900(v31, &a1[v25], &qword_1ECF92F88, &qword_1E4BFDD20);
  return sub_1E4AF1900(v18, &a1[v26], &qword_1ECF92700, &qword_1E4BFB090);
}

uint64_t sub_1E4BEC950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t TransferService.FileUploadRequest.sandboxExtension.getter()
{
  v1 = *(v0 + *(type metadata accessor for TransferService.FileUploadRequest(0) + 20));
}

uint64_t sub_1E4BEC9EC(uint64_t a1)
{
  v2 = sub_1E4BECC6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BECA28(uint64_t a1)
{
  v2 = sub_1E4BECC6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TransferService.FileUploadRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97C88, &qword_1E4C19858);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BECC6C();
  sub_1E4BF0ACC();
  v14 = 0;
  _s17FileUploadRequestV21CodableRepresentationVMa(0);
  sub_1E4BEC3E0(&qword_1ECF97500, _s17FileUploadRequestV21CodableRepresentationVMa);
  sub_1E4BF093C();
  if (!v2)
  {
    v13 = *(v3 + *(type metadata accessor for TransferService.FileUploadRequest(0) + 20));
    v12[15] = 1;
    type metadata accessor for SandboxExtension();
    sub_1E4BEC3E0(&qword_1ECF92748, type metadata accessor for SandboxExtension);
    sub_1E4BF093C();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E4BECC6C()
{
  result = qword_1ECF97C90;
  if (!qword_1ECF97C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97C90);
  }

  return result;
}

uint64_t TransferService.FileUploadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = _s17FileUploadRequestV21CodableRepresentationVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97C98, &qword_1E4C19860);
  v22 = *(v7 - 8);
  v23 = v7;
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for TransferService.FileUploadRequest(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BECC6C();
  sub_1E4BF0ABC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v22;
  v17 = v14;
  v27 = 0;
  sub_1E4BEC3E0(&qword_1ECF974F8, _s17FileUploadRequestV21CodableRepresentationVMa);
  v18 = v23;
  sub_1E4BF087C();
  sub_1E4BEC428(v24, v17, _s17FileUploadRequestV21CodableRepresentationVMa);
  type metadata accessor for SandboxExtension();
  v26 = 1;
  sub_1E4BEC3E0(&qword_1ECF92760, type metadata accessor for SandboxExtension);
  sub_1E4BF087C();
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 20)) = v25;
  sub_1E4BEC950(v17, v21, type metadata accessor for TransferService.FileUploadRequest);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E4BED01C(v17, type metadata accessor for TransferService.FileUploadRequest);
}

uint64_t sub_1E4BED01C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E4BED07C(uint64_t a1)
{
  result = sub_1E4BEC3E0(&qword_1ECF941A0, type metadata accessor for TransferService.FileUploadRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BED164(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BEC3E0(&qword_1ECF97CB0, type metadata accessor for TransferService.FileUploadRequest);
  result = sub_1E4BEC3E0(&qword_1ECF97CB8, type metadata accessor for TransferService.FileUploadRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BED240()
{
  result = _s17FileUploadRequestV21CodableRepresentationVMa(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SandboxExtension();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E4BED2EC()
{
  result = _s17FileUploadRequestV8MetadataV21CodableRepresentationVMa(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BED37C()
{
  result = qword_1ECF97CE0;
  if (!qword_1ECF97CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97CE0);
  }

  return result;
}

unint64_t sub_1E4BED3D4()
{
  result = qword_1ECF97CE8;
  if (!qword_1ECF97CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97CE8);
  }

  return result;
}

unint64_t sub_1E4BED42C()
{
  result = qword_1ECF97CF0;
  if (!qword_1ECF97CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97CF0);
  }

  return result;
}

unint64_t sub_1E4BED484()
{
  result = qword_1ECF97CF8;
  if (!qword_1ECF97CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97CF8);
  }

  return result;
}

unint64_t sub_1E4BED4DC()
{
  result = qword_1ECF97D00;
  if (!qword_1ECF97D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D00);
  }

  return result;
}

unint64_t sub_1E4BED534()
{
  result = qword_1ECF97D08;
  if (!qword_1ECF97D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D08);
  }

  return result;
}

uint64_t sub_1E4BED5D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RCSMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4BED634(uint64_t a1)
{
  v2 = sub_1E4BED824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BED670(uint64_t a1)
{
  v2 = sub_1E4BED824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RCSSendRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D10, &qword_1E4C19B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BED824();
  sub_1E4BF0ACC();
  type metadata accessor for RCSMessage(0);
  sub_1E4BEDC7C(&qword_1ECF928D8, type metadata accessor for RCSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BED824()
{
  result = qword_1ECF97D18;
  if (!qword_1ECF97D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D18);
  }

  return result;
}

uint64_t RCSSendRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for RCSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D20, &qword_1E4C19B98);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RCSSendRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BED824();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4BEDC7C(&qword_1ECF928F8, type metadata accessor for RCSMessage);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4BEDB38(v17, v14, type metadata accessor for RCSMessage);
    sub_1E4BEDB38(v14, v16, type metadata accessor for RCSSendRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for RCSSendRequest()
{
  result = qword_1EE2BDE98;
  if (!qword_1EE2BDE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BEDB38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BEDBA0(uint64_t a1)
{
  result = sub_1E4BEDC7C(&qword_1EE2BDED0, type metadata accessor for RCSSendRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BEDBF8(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BEDC7C(&qword_1EE2BDED8, type metadata accessor for RCSSendRequest);
  result = sub_1E4BEDC7C(qword_1EE2BDEE0, type metadata accessor for RCSSendRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BEDC7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BEDCDC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D10, &qword_1E4C19B90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BED824();
  sub_1E4BF0ACC();
  type metadata accessor for RCSMessage(0);
  sub_1E4BEDC7C(&qword_1ECF928D8, type metadata accessor for RCSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E4BEDE7C()
{
  result = type metadata accessor for RCSMessage(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1E4BEDEFC()
{
  result = qword_1ECF97D28;
  if (!qword_1ECF97D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D28);
  }

  return result;
}

unint64_t sub_1E4BEDF54()
{
  result = qword_1ECF97D30;
  if (!qword_1ECF97D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D30);
  }

  return result;
}

unint64_t sub_1E4BEDFAC()
{
  result = qword_1ECF97D38;
  if (!qword_1ECF97D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D38);
  }

  return result;
}

uint64_t sub_1E4BEE048(uint64_t a1)
{
  v2 = sub_1E4BEE238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEE084(uint64_t a1)
{
  v2 = sub_1E4BEE238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MMSReportSpamRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D40, &qword_1E4C19D80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEE238();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BEE69C(&qword_1ECF94180, type metadata accessor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BEE238()
{
  result = qword_1ECF97D48;
  if (!qword_1ECF97D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D48);
  }

  return result;
}

uint64_t MMSReportSpamRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for MMSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D50, &qword_1E4C19D88);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MMSReportSpamRequest();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEE238();
  sub_1E4BF0ABC();
  if (!v2)
  {
    v16 = v19;
    sub_1E4BEE69C(&qword_1ECF94178, type metadata accessor for MMSMessage);
    v17 = v21;
    sub_1E4BF087C();
    (*(v20 + 8))(v10, v7);
    sub_1E4BEE54C(v17, v14, type metadata accessor for MMSMessage);
    sub_1E4BEE54C(v14, v16, type metadata accessor for MMSReportSpamRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MMSReportSpamRequest()
{
  result = qword_1EE2BDD00;
  if (!qword_1EE2BDD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4BEE54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4BEE5B4(uint64_t a1)
{
  result = sub_1E4BEE69C(&qword_1EE2BDD38, type metadata accessor for MMSReportSpamRequest);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4BEE618(uint64_t a1)
{
  *(a1 + 8) = sub_1E4BEE69C(&qword_1EE2BDD40, type metadata accessor for MMSReportSpamRequest);
  result = sub_1E4BEE69C(&qword_1EE2BDD48, type metadata accessor for MMSReportSpamRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E4BEE69C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E4BEE6FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D40, &qword_1E4C19D80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEE238();
  sub_1E4BF0ACC();
  type metadata accessor for MMSMessage(0);
  sub_1E4BEE69C(&qword_1ECF94180, type metadata accessor for MMSMessage);
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1E4BEE8B0()
{
  result = qword_1ECF97D58;
  if (!qword_1ECF97D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D58);
  }

  return result;
}

unint64_t sub_1E4BEE908()
{
  result = qword_1ECF97D60;
  if (!qword_1ECF97D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D60);
  }

  return result;
}

unint64_t sub_1E4BEE960()
{
  result = qword_1ECF97D68;
  if (!qword_1ECF97D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D68);
  }

  return result;
}

uint64_t sub_1E4BEE9EC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D70, &qword_1E4C1A018);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEEFE4();
  sub_1E4BF0ACC();
  sub_1E4BEF038();
  sub_1E4BF093C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1E4BEEB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1735289200 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BEEBBC(uint64_t a1)
{
  v2 = sub_1E4BEF6FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEEBF8(uint64_t a1)
{
  v2 = sub_1E4BEF6FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BEEC34(uint64_t a1)
{
  v2 = sub_1E4BEF750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEEC70(uint64_t a1)
{
  v2 = sub_1E4BEF750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E4BEECC4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97DB8, &qword_1E4C1A200);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97DC0, &qword_1E4C1A208);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEF6FC();
  sub_1E4BF0ACC();
  sub_1E4BEF750();
  sub_1E4BF08BC();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E4BEEEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E4BF099C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E4BEEF3C(uint64_t a1)
{
  v2 = sub_1E4BEEFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E4BEEF78(uint64_t a1)
{
  v2 = sub_1E4BEEFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1E4BEEFE4()
{
  result = qword_1ECF97D78;
  if (!qword_1ECF97D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D78);
  }

  return result;
}

unint64_t sub_1E4BEF038()
{
  result = qword_1ECF97D80;
  if (!qword_1ECF97D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D80);
  }

  return result;
}

uint64_t sub_1E4BEF08C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97DD8, &qword_1E4C1A210);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97DE0, &unk_1E4C1A218);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEF6FC();
  sub_1E4BF0ABC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1E4BF088C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1E4AE0F14() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1E4BF06EC();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF92530, &qword_1E4BFA540) + 48);
    *v19 = &type metadata for XPCControlMessage.Command;
    sub_1E4BF07FC();
    sub_1E4BF06DC();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  sub_1E4BEF750();
  sub_1E4BF07EC();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1E4BEF3D8(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF97D88, &qword_1E4C1A020);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E4BEEFE4();
  sub_1E4BF0ABC();
  if (!v1)
  {
    sub_1E4BEF528();
    sub_1E4BF087C();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E4BEF528()
{
  result = qword_1ECF97D90;
  if (!qword_1ECF97D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D90);
  }

  return result;
}

unint64_t sub_1E4BEF5A0()
{
  result = qword_1ECF97D98;
  if (!qword_1ECF97D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97D98);
  }

  return result;
}

unint64_t sub_1E4BEF5F8()
{
  result = qword_1ECF97DA0;
  if (!qword_1ECF97DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DA0);
  }

  return result;
}

unint64_t sub_1E4BEF650()
{
  result = qword_1ECF97DA8;
  if (!qword_1ECF97DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DA8);
  }

  return result;
}

unint64_t sub_1E4BEF6A8()
{
  result = qword_1ECF97DB0;
  if (!qword_1ECF97DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DB0);
  }

  return result;
}

unint64_t sub_1E4BEF6FC()
{
  result = qword_1ECF97DC8;
  if (!qword_1ECF97DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DC8);
  }

  return result;
}

unint64_t sub_1E4BEF750()
{
  result = qword_1ECF97DD0;
  if (!qword_1ECF97DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DD0);
  }

  return result;
}

unint64_t sub_1E4BEF7C8()
{
  result = qword_1ECF97DE8;
  if (!qword_1ECF97DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DE8);
  }

  return result;
}

unint64_t sub_1E4BEF820()
{
  result = qword_1ECF97DF0;
  if (!qword_1ECF97DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DF0);
  }

  return result;
}

unint64_t sub_1E4BEF878()
{
  result = qword_1ECF97DF8;
  if (!qword_1ECF97DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97DF8);
  }

  return result;
}

unint64_t sub_1E4BEF8D0()
{
  result = qword_1ECF97E00;
  if (!qword_1ECF97E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97E00);
  }

  return result;
}

unint64_t sub_1E4BEF928()
{
  result = qword_1ECF97E08;
  if (!qword_1ECF97E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF97E08);
  }

  return result;
}