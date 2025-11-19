void *sub_1A2CB3880(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v42 = a4;
  v7 = v4;
  v8 = a1(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v39 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v4;
  v12 = sub_1A2D08964();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v7;
    result = (v12 + 64);
    v15 = v11 + 64;
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 64 + 8 * v16)
    {
      result = memmove(result, (v11 + 64), 8 * v16);
    }

    v18 = 0;
    v19 = *(v11 + 16);
    v43 = v13;
    *(v13 + 16) = v19;
    v20 = 1 << *(v11 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v11 + 64);
    v23 = (v20 + 63) >> 6;
    if (v22)
    {
      do
      {
        v24 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
LABEL_17:
        v27 = v24 | (v18 << 6);
        v28 = 16 * v27;
        v29 = *(v11 + 56);
        v30 = (*(v11 + 48) + 16 * v27);
        v31 = v11;
        v32 = *v30;
        v33 = v30[1];
        v34 = v40;
        v35 = *(v41 + 72) * v27;
        v36 = v42;
        sub_1A2C68F00(v29 + v35, v40, v42);
        v37 = v43;
        v38 = (*(v43 + 48) + v28);
        *v38 = v32;
        v38[1] = v33;
        v11 = v31;
        sub_1A2C7C5F8(v34, *(v37 + 56) + v35, v36);

        v22 = v44;
      }

      while (v44);
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v39;
        v13 = v43;
        goto LABEL_21;
      }

      v26 = *(v15 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v44 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v13;
  }

  return result;
}

void *sub_1A2CB3AD4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1A2D08964();
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
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v6 + 48) + v20);
        *v28 = v23;
        v28[1] = v22;
        v29 = (*(v6 + 56) + v19);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
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

void *sub_1A2CB3C5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07B8, &qword_1A2D0BE30);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;

        result = swift_unknownObjectRetain();
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

void *sub_1A2CB3DDC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0760, &qword_1A2D0BDA8);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_1A2C5E63C(v22, *(&v22 + 1));
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

void *sub_1A2CB3F60()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A07A8, &unk_1A2D0D100);
  v2 = *v0;
  v3 = sub_1A2D08964();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1A2C53CD8(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A2C5E3C4(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_1A2CB4144()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A8, &unk_1A2D0D150);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

void *sub_1A2CB42A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A09A0, &qword_1A2D0D148);
  v2 = *v0;
  v3 = sub_1A2D08964();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

void *sub_1A2CB4450()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0780, &qword_1A2D0BDC0);
  v2 = *v0;
  v3 = sub_1A2D08964();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1A2C57B10(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1A2CAB5F4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A2CB45F4(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34() & 1;
  }
}

uint64_t sub_1A2CB4668(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34() & 1;
  }
}

unint64_t sub_1A2CB46C0()
{
  result = qword_1EB09F078;
  if (!qword_1EB09F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F078);
  }

  return result;
}

uint64_t _s11ActivityKit0A21PresentationPredicateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4)
  {
    if (v6 && (sub_1A2CC30E4(v4, v6) & 1) != 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_4:
  result = (v5 | v7) == 0;
  if (v5)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {

    return sub_1A2CC30E4(v5, v7);
  }

  return result;
}

unint64_t sub_1A2CB479C(void *a1)
{
  a1[1] = sub_1A2CB47D4();
  a1[2] = sub_1A2CA5AA8();
  result = sub_1A2CB4828();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CB47D4()
{
  result = qword_1EB09ED80;
  if (!qword_1EB09ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED80);
  }

  return result;
}

unint64_t sub_1A2CB4828()
{
  result = qword_1EB09ED78;
  if (!qword_1EB09ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED78);
  }

  return result;
}

uint64_t sub_1A2CB487C(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1A2CB48D8(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1A2CB494C()
{
  result = qword_1EB0A0968;
  if (!qword_1EB0A0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0968);
  }

  return result;
}

unint64_t sub_1A2CB49A4()
{
  result = qword_1EB09F068;
  if (!qword_1EB09F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F068);
  }

  return result;
}

unint64_t sub_1A2CB49FC()
{
  result = qword_1EB09F070;
  if (!qword_1EB09F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F070);
  }

  return result;
}

unint64_t sub_1A2CB4A50()
{
  result = qword_1ED7088C8;
  if (!qword_1ED7088C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7088C8);
  }

  return result;
}

uint64_t sub_1A2CB4C20@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AC0, &qword_1A2D0A810);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityEndingOptions();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1EB09F0D0, type metadata accessor for ActivityEndingOptions);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &unk_1EB0A0AC0, &qword_1A2D0A810);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &unk_1EB0A0AC0, &qword_1A2D0A810);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &unk_1EB0A0AC0, &qword_1A2D0A810);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &unk_1EB0A0AC0, &qword_1A2D0A810);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityEndingOptions);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB4EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v23 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = type metadata accessor for ActivityDescriptor();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v16(v13, 1, 1, v14);
  if (a1)
  {
    v23 = a2;
    v24 = v16;
    v17 = sub_1A2D07E84();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v2 = sub_1A2D07F44();
    v16 = v20;
    sub_1A2C569E8(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
    sub_1A2D07E64();
    sub_1A2C54E38(v13, &qword_1EB0A0210, &unk_1A2D0ACA0);
    sub_1A2C55840(v2, v16);

    v24(v11, 0, 1, v14);
    sub_1A2C639DC(v11, v13, &qword_1EB0A0210, &unk_1A2D0ACA0);
    v21 = v25;
    sub_1A2C6BD18(v13, v25, &qword_1EB0A0210, &unk_1A2D0ACA0);
    if ((*(v15 + 48))(v21, 1, v14) != 1)
    {
      sub_1A2C54E38(v13, &qword_1EB0A0210, &unk_1A2D0ACA0);
      return sub_1A2C72628(v21, v23, type metadata accessor for ActivityDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v2, v16);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB51D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2CA7000();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 2)
    {
      *a2 = v10 & 1;
      a2[1] = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB52D0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2CA6274();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 2)
    {
      *a2 = v10 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB53C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0790, &unk_1A2D0D270);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for AlertPayload();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1EB09EFA0, type metadata accessor for AlertPayload);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A0790, &unk_1A2D0D270);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A0790, &unk_1A2D0D270);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &qword_1EB0A0790, &unk_1A2D0D270);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A0790, &unk_1A2D0D270);
      return sub_1A2C72628(v20, v22, type metadata accessor for AlertPayload);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB56FC@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2CB47D4();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 1)
    {
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB57EC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2CA7000();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 2)
    {
      *a2 = v10 & 1;
      a2[1] = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB58E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2C620FC();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 2)
    {
      *a2 = v10 & 1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB59D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2C6CDD0();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v11)
    {
      *a2 = v10;
      a2[1] = v11;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5AE0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2C78A64();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v10 != 5)
    {
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5BCC@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0AA0, &unk_1A2D10000);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for OpaqueActivityContent();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1ED709098, type metadata accessor for OpaqueActivityContent);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &unk_1EB0A0AA0, &unk_1A2D10000);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &unk_1EB0A0AA0, &unk_1A2D10000);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &unk_1EB0A0AA0, &unk_1A2D10000);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &unk_1EB0A0AA0, &unk_1A2D10000);
      return sub_1A2C72628(v20, v22, type metadata accessor for OpaqueActivityContent);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB5EA8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A90, &unk_1A2D0D260);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityUIDismissalPolicy();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1EB09F090, type metadata accessor for ActivityUIDismissalPolicy);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &unk_1EB0A0A90, &unk_1A2D0D260);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &unk_1EB0A0A90, &unk_1A2D0D260);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &unk_1EB0A0A90, &unk_1A2D0D260);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &unk_1EB0A0A90, &unk_1A2D0D260);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityUIDismissalPolicy);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = sub_1A2D07E84();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v6 = sub_1A2D07F44();
    v8 = v7;
    sub_1A2CBBB98();
    sub_1A2D07E64();
    sub_1A2C55840(v6, v8);

    if (v11 != 1)
    {
      *a2 = v10;
      *(a2 + 8) = v11;
      *(a2 + 24) = v12;
      *(a2 + 40) = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB62A8@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = sub_1A2D07E84();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v8 = sub_1A2D07F44();
    v10 = v9;
    a2();
    sub_1A2D07E64();
    sub_1A2C55840(v8, v10);

    if (v12 != 1)
    {
      *a3 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB63A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A04F0, &qword_1A2D0AC98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1EB09EFD8, type metadata accessor for ActivityRequest);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &unk_1EB0A04F0, &qword_1A2D0AC98);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &unk_1EB0A04F0, &qword_1A2D0AC98);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &unk_1EB0A04F0, &qword_1A2D0AC98);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &unk_1EB0A04F0, &qword_1A2D0AC98);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6680@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A70, &unk_1A2D0D250);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityPlatterDismissalPolicy();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1EB0A0A78, type metadata accessor for ActivityPlatterDismissalPolicy);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A0A70, &unk_1A2D0D250);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A0A70, &unk_1A2D0D250);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &qword_1EB0A0A70, &unk_1A2D0D250);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A0A70, &unk_1A2D0D250);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityPlatterDismissalPolicy);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB697C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A02E0, &qword_1A2D0AA50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for OpaqueActivityPayload(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A02E0, &qword_1A2D0AA50);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A02E0, &qword_1A2D0AA50);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &qword_1EB0A02E0, &qword_1A2D0AA50);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A02E0, &qword_1A2D0AA50);
      return sub_1A2C72628(v20, v22, type metadata accessor for OpaqueActivityPayload);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6C58@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A68, &unk_1A2D0D240);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityDescriptorContentState();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(qword_1ED7090F0, type metadata accessor for ActivityDescriptorContentState);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A0A68, &unk_1A2D0D240);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A0A68, &unk_1A2D0D240);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &qword_1EB0A0A68, &unk_1A2D0D240);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A0A68, &unk_1A2D0D240);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityDescriptorContentState);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB6F54@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0210, &unk_1A2D0ACA0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - v11;
  v13 = type metadata accessor for ActivityDescriptor();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v15(v12, 1, 1, v13);
  if (a1)
  {
    v22 = a2;
    v23 = v15;
    v16 = sub_1A2D07E84();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v15 = sub_1A2D07F44();
    a1 = v19;
    sub_1A2C569E8(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
    sub_1A2D07E64();
    sub_1A2C54E38(v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
    sub_1A2C55840(v15, a1);

    v23(v9, 0, 1, v13);
    sub_1A2C639DC(v9, v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
    v20 = v24;
    sub_1A2C6BD18(v12, v24, &qword_1EB0A0210, &unk_1A2D0ACA0);
    if ((*(v14 + 48))(v20, 1, v13) != 1)
    {
      sub_1A2C54E38(v12, &qword_1EB0A0210, &unk_1A2D0ACA0);
      return sub_1A2C72628(v20, v22, type metadata accessor for ActivityDescriptor);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  sub_1A2C55840(v15, a1);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB7250@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    v5 = sub_1A2D07E84();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v8 = sub_1A2D07F44();
    v10 = v9;
    a2();
    sub_1A2D07E64();
    sub_1A2C55840(v8, v10);

    if (v12)
    {
      *a3 = v12;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A2CB7348()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F610);
  __swift_project_value_buffer(v0, qword_1EB09F610);
  return sub_1A2D08084();
}

id sub_1A2CB73CC()
{
  result = [objc_allocWithZone(type metadata accessor for ActivityAuthorizationClient()) init];
  qword_1EB0B25B0 = result;
  return result;
}

uint64_t sub_1A2CB73FC()
{
  v1 = sub_1A2D086E4();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v34 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A2D086C4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A2D08314();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationPublisher;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A30, &unk_1A2D0D220);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  *&v0[v9] = sub_1A2D08144();
  v13 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__frequentUpdatesPublisher;
  v14 = *(v10 + 48);
  v15 = *(v10 + 52);
  swift_allocObject();
  *&v0[v13] = sub_1A2D08144();
  v16 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationLevelPublisher;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0A20, &qword_1A2D0D218);
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *&v0[v16] = sub_1A2D08144();
  v20 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_serverStartupToken] = -1;
  v32 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue;
  sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C569E8(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v35 + 104))(v34, *MEMORY[0x1E69E8098], v36);
  *&v0[v32] = sub_1A2D08724();
  *&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs] = MEMORY[0x1E69E7CD0];
  v21 = *&v0[v20];
  *&v0[v20] = 0;

  v22 = type metadata accessor for ActivityAuthorizationClient();
  v38.receiver = v0;
  v38.super_class = v22;
  v23 = objc_msgSendSuper2(&v38, sel_init);
  v24 = *&v23[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue];
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1A2CBBB20;
  *(v26 + 24) = v25;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v26;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_45;
  v27 = _Block_copy(aBlock);
  v28 = v23;
  v29 = v24;

  dispatch_sync(v29, v27);

  _Block_release(v27);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if ((v27 & 1) == 0)
  {
    return v28;
  }

  __break(1u);
  return result;
}

void sub_1A2CB78D8()
{
  v1 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection])
  {
    v2 = v0;
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CBBAC4();
    v3 = sub_1A2D08784();
    if (v3)
    {
      v4 = *&v0[v1];
      *&v2[v1] = v3;
      v5 = v3;

      v6 = swift_allocObject();
      *(v6 + 16) = v2;
      v7 = swift_allocObject();
      *(v7 + 16) = sub_1A2CBBB18;
      *(v7 + 24) = v6;
      v9[4] = sub_1A2C573BC;
      v9[5] = v7;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 1107296256;
      v9[2] = sub_1A2C57338;
      v9[3] = &block_descriptor_27;
      v8 = _Block_copy(v9);
      v2;

      [v5 configureConnection_];
      _Block_release(v8);
      LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

      if (v8)
      {
        __break(1u);
      }

      else
      {
        sub_1A2CB805C();
      }
    }
  }
}

void sub_1A2CB7AA0(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CB7D98;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_30;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CB7DA4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_33;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CB7DB0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_36;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CB7DBC(uint64_t a1, const char *a2)
{
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09F610);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CB7EAC()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1A2CB78D8();
    v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection);
    if (v9)
    {
      v10 = v9;
      if ([v10 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v11, 0, sizeof(v11));
        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v10 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CB805C()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CBBABC;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_18_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09F610);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CB8254()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CB7EAC(Strong);
    sub_1A2CB82C4();
  }
}

uint64_t sub_1A2CB82C4()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_1A2D08344();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = (&v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8020], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_1A2D08364();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    goto LABEL_29;
  }

  if (qword_1EB09F600 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v12 = sub_1A2D08094();
    v13 = __swift_project_value_buffer(v12, qword_1EB09F610);
    v14 = sub_1A2D08074();
    v15 = sub_1A2D086A4();
    v16 = os_log_type_enabled(v14, v15);
    v52 = v13;
    if (v16)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1A2C51000, v14, v15, "Resubscribing to authorization status updates", v17, 2u);
      MEMORY[0x1A58E5180](v17, -1, -1);
    }

    v18 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
    result = swift_beginAccess();
    if (!*(*(v3 + v18) + 16))
    {
      return result;
    }

    v51 = sub_1A2CB8864();
    if (!v51)
    {
      v43 = sub_1A2D08074();
      v44 = sub_1A2D08684();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_1A2C51000, v43, v44, "Could not resubscribe to authorization status updates because connection is nil", v45, 2u);
        MEMORY[0x1A58E5180](v45, -1, -1);
      }

      sub_1A2CA1590();
      swift_allocError();
      *v46 = xmmword_1A2D0AC20;
      *(v46 + 16) = 0u;
      *(v46 + 32) = 0u;
      *(v46 + 48) = 0u;
      *(v46 + 64) = 0;
      return swift_willThrow();
    }

    v47 = v2;
    v20 = *(v3 + v18);
    v3 = v20 + 56;
    v21 = 1 << *(v20 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v20 + 56);
    v24 = (v21 + 63) >> 6;
    v50 = v20;

    v25 = 0;
    *&v26 = 136380675;
    v49 = v26;
    while (v23)
    {
      v27 = v25;
LABEL_16:
      v28 = (*(v50 + 48) + ((v27 << 10) | (16 * __clz(__rbit64(v23)))));
      v29 = *v28;
      v30 = v28[1];
      swift_bridgeObjectRetain_n();
      v31 = sub_1A2D08074();
      v2 = sub_1A2D086A4();

      v32 = os_log_type_enabled(v31, v2);
      v53 = v29;
      if (v32)
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v54 = v34;
        *v33 = v49;
        *(v33 + 4) = sub_1A2C55558(v53, v30, &v54);
        _os_log_impl(&dword_1A2C51000, v31, v2, "Resubscribing to authorization status updates for %{private}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v34);
        MEMORY[0x1A58E5180](v34, -1, -1);
        MEMORY[0x1A58E5180](v33, -1, -1);
      }

      v23 &= v23 - 1;
      v35 = sub_1A2D08434();
      v36 = [v51 subscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if (v36)
      {

        v25 = v27;
      }

      else
      {

        v37 = sub_1A2D08074();
        v2 = sub_1A2D08684();

        if (os_log_type_enabled(v37, v2))
        {
          v38 = swift_slowAlloc();
          v48 = v37;
          v39 = v38;
          v40 = swift_slowAlloc();
          v54 = v40;
          *v39 = v49;
          v41 = sub_1A2C55558(v53, v30, &v54);

          *(v39 + 4) = v41;
          v42 = v48;
          _os_log_impl(&dword_1A2C51000, v48, v2, "Could not resubscribe to authorization status updates for %{private}s", v39, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v40);
          MEMORY[0x1A58E5180](v40, -1, -1);
          MEMORY[0x1A58E5180](v39, -1, -1);
        }

        else
        {
        }

        v25 = v27;
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        return swift_unknownObjectRelease();
      }

      v23 = *(v3 + 8 * v27);
      ++v25;
      if (v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }
}

uint64_t sub_1A2CB8864()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v6 = v7;
  (*(isa + 13))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  v9 = (*(isa + 1))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CB7EAC(v9);
  v10 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_connection);
  if (!v10)
  {
    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v11 = sub_1A2D08094();
    __swift_project_value_buffer(v11, qword_1EB09F610);
    v1 = sub_1A2D08074();
    v12 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v12, "Authorization Service: Failed to establish a connection", v13, 2u);
      MEMORY[0x1A58E5180](v13, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v10;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (*(&v21 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A58, &unk_1A2D0D230);
    if (swift_dynamicCast())
    {

      return v19[1];
    }
  }

  else
  {
    sub_1A2C54E38(v22, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09F600 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v15 = sub_1A2D08094();
  __swift_project_value_buffer(v15, qword_1EB09F610);
  v16 = sub_1A2D08074();
  v17 = sub_1A2D08694();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1A2C51000, v16, v17, "Autorization Service: Failed to cast connection to server interface protocol", v18, 2u);
    MEMORY[0x1A58E5180](v18, -1, -1);
  }

LABEL_18:
  return 0;
}

id sub_1A2CB8BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityAuthorizationClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CB8C8C(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A2CB9984(a1, a2, a3, &selRef_setActivitiesAuthorizationForBundleIdentifier_options_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CB8CE0()
{
  v18[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
  }

  v9 = sub_1A2CB8864();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1A2D08434();
    v18[0] = 0;
    v12 = [v10 clearActivitiesAuthorizationForBundleIdentifier:v11 error:v18];

    if (v12)
    {
      v13 = v18[0];
    }

    else
    {
      v16 = v18[0];
      sub_1A2D07ED4();

      swift_willThrow();
    }

    result = swift_unknownObjectRelease();
  }

  else
  {
    sub_1A2CA1590();
    swift_allocError();
    *v14 = xmmword_1A2D0AC20;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0;
    result = swift_willThrow();
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CB8EF4@<X0>(char *a1@<X8>)
{
  v3 = sub_1A2D08344();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x1E69E8020], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_1A2D08364();
  result = (*(v4 + 8))(v8, v3);
  if (v9)
  {
    result = sub_1A2CB8864();
    v12 = 3;
    if (result)
    {
      v13 = result;
      v14 = sub_1A2D08434();
      v15 = [v13 activityAuthorizationsCountForBundleIdentifier_];

      v16 = [v15 integerValue];
      result = swift_unknownObjectRelease();
      if (v16 == 2)
      {
        v17 = 1;
      }

      else
      {
        v17 = 3;
      }

      if (v16 == 1)
      {
        v12 = 0;
      }

      else
      {
        v12 = v17;
      }
    }

    *a1 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9090(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1A2D08364();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if (qword_1EB09F600 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1EB09F610);

  v15 = sub_1A2D08074();
  v16 = sub_1A2D086A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v31 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_1A2C55558(a1, a2, &v31);
    _os_log_impl(&dword_1A2C51000, v15, v16, "Subscribing to authorization status updates for %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1A58E5180](v18, -1, -1);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

  v19 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
  swift_beginAccess();
  v20 = *(v3 + v19);

  v21 = sub_1A2CB9DD0(a1, a2, v20);

  if ((v21 & 1) == 0)
  {
    swift_beginAccess();

    sub_1A2CBAD68(&v30, a1, a2);
    swift_endAccess();

    v23 = sub_1A2CB8864();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1A2D08434();
      v26 = [v24 subscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if ((v26 & 1) == 0)
      {
        sub_1A2CA1590();
        swift_allocError();
        *v27 = xmmword_1A2D0AC20;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0u;
        *(v27 + 48) = 0u;
        *(v27 + 64) = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1A2CA1590();
      swift_allocError();
      *v28 = xmmword_1A2D0AC20;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A2CB9424(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v29[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1A2D08364();
  (*(v7 + 8))(v11, v6);
  if (v12)
  {
    if (qword_1EB09F600 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1EB09F610);

  v15 = sub_1A2D08074();
  v16 = sub_1A2D086A4();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v30 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_1A2C55558(a1, a2, &v30);
    _os_log_impl(&dword_1A2C51000, v15, v16, "Unsubscribing from authorization status updates for %{private}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1A58E5180](v18, -1, -1);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

  v19 = OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue_subscribedAuthorizationBundleIDs;
  swift_beginAccess();
  v20 = *(v3 + v19);

  v21 = sub_1A2CB9DD0(a1, a2, v20);

  if (v21)
  {
    swift_beginAccess();
    sub_1A2CBB62C(a1, a2);
    swift_endAccess();

    v23 = sub_1A2CB8864();
    if (v23)
    {
      v24 = v23;
      v25 = sub_1A2D08434();
      v26 = [v24 unsubscribeToAuthorizationLevelChangesForBundleIdentifier_];

      if ((v26 & 1) == 0)
      {
        sub_1A2CA1590();
        swift_allocError();
        *v27 = xmmword_1A2D0AC20;
        *(v27 + 16) = 0u;
        *(v27 + 32) = 0u;
        *(v27 + 48) = 0u;
        *(v27 + 64) = 0;
        swift_willThrow();
      }

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_1A2CA1590();
      swift_allocError();
      *v28 = xmmword_1A2D0AC20;
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
      *(v28 + 48) = 0u;
      *(v28 + 64) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_1A2CB97C4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1A2D08344();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v10 = v11;
  (*(v6 + 104))(v10, *MEMORY[0x1E69E8020], v5, v8);
  v12 = v11;
  LOBYTE(v11) = sub_1A2D08364();
  result = (*(v6 + 8))(v10, v5);
  if (v11)
  {
    v14 = sub_1A2CB8864();
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = sub_1A2D08434();
    v17 = [v15 *a3];
    swift_unknownObjectRelease();

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9930(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = sub_1A2CB9984(a1, a2, a3, &selRef_setFrequentPushesEnabledForBundleIdentifier_options_error_);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1A2CB9984(uint64_t a1, uint64_t a2, char *a3, SEL *a4)
{
  v37 = a2;
  v38 = a4;
  v39[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1A2D08344();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a3;
  v14 = a3[1];
  v15 = *(v4 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v12 = v15;
  (*(v8 + 104))(v12, *MEMORY[0x1E69E8020], v7, v10);
  v16 = v15;
  LOBYTE(v15) = sub_1A2D08364();
  (*(v8 + 8))(v12, v7);
  if ((v15 & 1) == 0)
  {
    __break(1u);
  }

  v17 = sub_1A2CB8864();
  if (!v17)
  {
    sub_1A2CA1590();
    swift_allocError();
    *v33 = xmmword_1A2D0AC20;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0;
    result = swift_willThrow();
LABEL_9:
    v36 = *MEMORY[0x1E69E9840];
    return result;
  }

  v18 = v17;
  LOBYTE(v39[0]) = v13;
  BYTE1(v39[0]) = v14;
  v19 = sub_1A2D07EB4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2CA7054();
  v22 = sub_1A2D07E94();
  if (!v5)
  {
    v24 = v22;
    v25 = v23;
    v26 = sub_1A2D07F24();
    sub_1A2C55840(v24, v25);

    v27 = sub_1A2D07F44();
    v29 = v28;

    v30 = sub_1A2D08434();
    v31 = sub_1A2D07F24();
    v39[0] = 0;
    LOBYTE(v25) = [v18 *v38];

    if (v25)
    {
      v32 = v39[0];
    }

    else
    {
      v35 = v39[0];
      sub_1A2D07ED4();

      swift_willThrow();
    }

    sub_1A2C55840(v27, v29);
    result = swift_unknownObjectRelease();
    goto LABEL_9;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void *sub_1A2CB9C78@<X0>(uint64_t a1@<X0>, SEL *a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v6 = sub_1A2D08344();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x1E69E8020], v6, v9);
  v13 = v12;
  LOBYTE(v12) = sub_1A2D08364();
  result = (*(v7 + 8))(v11, v6);
  if (v12)
  {
    result = sub_1A2CB8864();
    if (result)
    {
      v15 = [result *a2];
      result = swift_unknownObjectRelease();
    }

    else
    {
      v15 = 0;
    }

    *a3 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CB9DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  v7 = sub_1A2D08C54();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1A2D08B34() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A2CB9F10(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(v6 + *a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1A2C56A78(a6, a4, a5);
  return sub_1A2D081F4();
}

uint64_t sub_1A2CBA17C()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  sub_1A2D08704();
  return v3;
}

uint64_t sub_1A2CBA20C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  v6 = *a3;
  v7 = a3[1];
  return sub_1A2D08704();
}

uint64_t sub_1A2CBA288()
{
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue);
  sub_1A2D08704();
  return v3;
}

uint64_t sub_1A2CBA2E8(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = sub_1A2D082D4();
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1A2D08314();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v25);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a3 integerValue];
  if (v16 == 2)
  {
    v17 = 1;
  }

  else
  {
    v17 = 3;
  }

  if (v16 == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  v19 = *&v3[OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient_queue];
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = v18;
  *(v20 + 40) = v3;
  aBlock[4] = sub_1A2CBBAAC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C5E5B8;
  aBlock[3] = &block_descriptor_6;
  v21 = _Block_copy(aBlock);

  v22 = v3;
  sub_1A2D082E4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1A2C569E8(&qword_1ED709AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2C56A78(&unk_1ED709AC0, &qword_1EB0A0A50, &unk_1A2D0AA40);
  sub_1A2D08804();
  MEMORY[0x1A58E43D0](0, v15, v10, v21);
  _Block_release(v21);
  (*(v26 + 8))(v10, v7);
  (*(v11 + 8))(v15, v25);
}

uint64_t sub_1A2CBA5F8(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v8 = sub_1A2D08094();
  __swift_project_value_buffer(v8, qword_1EB09F610);

  v9 = sub_1A2D08074();
  v10 = sub_1A2D086A4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136380931;
    *(v11 + 4) = sub_1A2C55558(a1, a2, v22);
    *(v11 + 12) = 2082;
    v13 = 0xEA0000000000736ELL;
    v14 = 0x6F6974704F206F4ELL;
    if (a3 == 2)
    {
      v14 = 0xD000000000000015;
      v13 = 0x80000001A2D198D0;
    }

    v15 = 0xD000000000000010;
    v16 = 0x80000001A2D19910;
    if (a3)
    {
      v15 = 0xD000000000000011;
      v16 = 0x80000001A2D198F0;
    }

    if (a3 <= 1u)
    {
      v17 = v15;
    }

    else
    {
      v17 = v14;
    }

    if (a3 <= 1u)
    {
      v18 = v16;
    }

    else
    {
      v18 = v13;
    }

    v19 = sub_1A2C55558(v17, v18, v22);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1A2C51000, v9, v10, "Activity authorization level for %{private}s changed to %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1A58E5180](v12, -1, -1);
    MEMORY[0x1A58E5180](v11, -1, -1);
  }

  v20 = *(a4 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationLevelPublisher);
  v22[0] = a1;
  v22[1] = a2;
  v23 = a3;

  sub_1A2D08124();
}

uint64_t sub_1A2CBA8CC(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  if (qword_1EB09F600 != -1)
  {
    swift_once();
  }

  v4 = sub_1A2D08094();
  __swift_project_value_buffer(v4, qword_1EB09F610);
  v5 = sub_1A2D08074();
  v6 = sub_1A2D086A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_1A2C51000, v5, v6, "Activity authorization changed to %{BOOL,public}d", v7, 8u);
    MEMORY[0x1A58E5180](v7, -1, -1);
  }

  v8 = *(v2 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__activityAuthorizationPublisher);
  return sub_1A2D08124();
}

uint64_t sub_1A2CBAA88()
{
  v1 = v0;
  v2 = sub_1A2D07F24();
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2CA7000();
  sub_1A2D07E64();
  sub_1A2C55840(v6, v8);

  if (v15 == 2)
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {

    if (qword_1EB09F600 != -1)
    {
      swift_once();
    }

    v9 = sub_1A2D08094();
    __swift_project_value_buffer(v9, qword_1EB09F610);
    v10 = sub_1A2D08074();
    v11 = sub_1A2D086A4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = v15 & 1;
      _os_log_impl(&dword_1A2C51000, v10, v11, "Frequent updates changed to %{BOOL,public}d", v12, 8u);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    v13 = *(v1 + OBJC_IVAR____TtC11ActivityKit27ActivityAuthorizationClient__frequentUpdatesPublisher);
    return sub_1A2D08124();
  }

  return result;
}

uint64_t sub_1A2CBAD3C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1A2CB9424(v1, v2);
}

uint64_t sub_1A2CBAD68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  v9 = sub_1A2D08C54();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1A2D08B34() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1A2CBB118(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A2CBAEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  result = sub_1A2D08834();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1A2D08C14();
      sub_1A2D08484();
      result = sub_1A2D08C54();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1A2CBB118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A2CBAEB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A2CBB298();
      goto LABEL_16;
    }

    sub_1A2CBB3F4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  result = sub_1A2D08C54();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A2D08B34();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A2D08B74();
  __break(1u);
  return result;
}

void *sub_1A2CBB298()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  v2 = *v0;
  v3 = sub_1A2D08824();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1A2CBB3F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB0A0B30, &qword_1A2D0D210);
  result = sub_1A2D08834();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1A2D08C14();

      sub_1A2D08484();
      result = sub_1A2D08C54();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1A2CBB62C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  v7 = sub_1A2D08C54();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1A2D08B34() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1A2CBB298();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_1A2CBB768(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_1A2CBB768(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_1A2D08814();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_1A2D08C14();

        sub_1A2D08484();
        v15 = sub_1A2D08C54();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1A2CBB92C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1A2CB9090(v1, v2);
}

uint64_t sub_1A2CBB958@<X0>(char *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return sub_1A2CB8EF4(a1);
}

uint64_t sub_1A2CBB98C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1A2CB8CE0();
}

uint64_t sub_1A2CBB9D8(SEL *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 41);
  v8[0] = *(v1 + 40);
  v8[1] = v6;
  return sub_1A2CB9984(v3, v5, v8, a1);
}

uint64_t sub_1A2CBBA3C@<X0>(SEL *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[2];
  result = sub_1A2CB97C4(v5, v6, a1);
  *a2 = result & 1;
  return result;
}

unint64_t sub_1A2CBBAC4()
{
  result = qword_1EB09F628;
  if (!qword_1EB09F628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F628);
  }

  return result;
}

unint64_t sub_1A2CBBB44()
{
  result = qword_1EB0A0A80;
  if (!qword_1EB0A0A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0A80);
  }

  return result;
}

unint64_t sub_1A2CBBB98()
{
  result = qword_1EB0A1B60;
  if (!qword_1EB0A1B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A1B60);
  }

  return result;
}

id ActivityFrequentUpdatesObservationClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ActivityFrequentUpdatesObservationClient.init()()
{
  if (qword_1ED709978 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED709988;
  *&v0[OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton] = qword_1ED709988;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ActivityFrequentUpdatesObservationClient();
  v2 = v1;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1A2CBBCD8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0940, &unk_1A2D0D280);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AE0, &qword_1A2D15370);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC11ActivityKit40ActivityFrequentUpdatesObservationClient_singleton);
  v12 = OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activities;
  swift_beginAccess();
  v13 = MEMORY[0x1E69E7CD0];
  if (*(v11 + v12))
  {
    v13 = *(v11 + v12);
  }

  v16 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0AF0, qword_1A2D0D290);
  sub_1A2D081D4();
  v16 = *(v11 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2C56A78(&unk_1EB09EB48, &qword_1EB0A0940, &unk_1A2D0D280);
  sub_1A2C56A78(&qword_1EB09EB70, &qword_1EB0A0B00, &qword_1A2D0CDF0);
  sub_1A2D08244();
  (*(v2 + 8))(v5, v1);
  sub_1A2C56A78(&qword_1EB09EBE0, &qword_1EB0A0AE0, &qword_1A2D15370);
  v14 = sub_1A2D081F4();
  (*(v7 + 8))(v10, v6);
  return v14;
}

void sub_1A2CBC098()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2C5BCFC();
  }
}

id sub_1A2CBC108(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A2CBC1AC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1A2CBC01C();
  if (*v6)
  {

    sub_1A2CBAD68(&v12, a1, a2);
  }

  (v5)(v11, 0);
  v7 = *(v2 + OBJC_IVAR____TtC11ActivityKitP33_D074D31B035C9B27F4F7807A7D21110D9Singleton_activityDiffPublisher);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0370, qword_1A2D0D300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A2D0AD20;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v9 = sub_1A2CDCE74(inited);
  swift_setDeallocating();
  sub_1A2CBC528(inited + 32);
  v11[0] = v9;
  sub_1A2D08124();
}

uint64_t sub_1A2CBC3D0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_1A2D08C14();
  sub_1A2D08484();
  result = sub_1A2D08C54();
  v8 = v5 + 56;
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  v11 = v10 >> 6;
  v12 = *(v5 + 56 + 8 * (v10 >> 6));
  v13 = 1 << v10;
  if (((1 << v10) & v12) != 0)
  {
    v14 = ~v9;
    while (1)
    {
      v15 = (*(v5 + 48) + 16 * v10);
      if (*v15 == a1 && v15[1] == a2)
      {
        break;
      }

      result = sub_1A2D08B34();
      if (result)
      {
        v21 = v15[1];
        break;
      }

      v10 = (v10 + 1) & v14;
      v11 = v10 >> 6;
      v12 = *(v8 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) == 0)
      {
        goto LABEL_9;
      }
    }

    *v15 = a1;
    v15[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v8 + 8 * v11) = v13 | v12;
      v17 = (*(v5 + 48) + 16 * v10);
      *v17 = a1;
      v17[1] = a2;
      v18 = *(v5 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v5 + 16) = v20;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CBC5E4()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09EC10);
  __swift_project_value_buffer(v0, qword_1EB09EC10);
  return sub_1A2D08084();
}

uint64_t sub_1A2CBC658()
{
  v1 = v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_1A2CBC6A8(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A2CBC714(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A2CBC7B4;
}

void sub_1A2CBC7B4(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
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

id AlertClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AlertClient.init()()
{
  v1 = v0;
  v2 = sub_1A2D086E4();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A2D086C4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = sub_1A2D08314();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtC11ActivityKit11AlertClient_connection;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_connection] = 0;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_serverStartupToken] = -1;
  *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = OBJC_IVAR____TtC11ActivityKit11AlertClient_queue;
  v11 = sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
  v23[1] = "datesObservationClient";
  v23[2] = v11;
  sub_1A2D082F4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A2C94E04(&qword_1ED709E30, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2C56A78(&qword_1ED709E40, &qword_1EB0A0A60, &unk_1A2D0ACC0);
  sub_1A2D08804();
  (*(v25 + 104))(v5, *MEMORY[0x1E69E8098], v26);
  *&v0[v24] = sub_1A2D08724();
  v12 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  *&v1[v12] = sub_1A2CAAD58(MEMORY[0x1E69E7CC0]);
  *&v1[OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_activityStatusSubscription] = 0;
  v13 = *&v1[v10];
  *&v1[v10] = 0;

  type metadata accessor for ActivityOutputClient();
  swift_allocObject();
  *&v1[OBJC_IVAR____TtC11ActivityKit11AlertClient_outputClient] = ActivityOutputClient.init()();
  v14 = type metadata accessor for AlertClient();
  v28.receiver = v1;
  v28.super_class = v14;
  v15 = objc_msgSendSuper2(&v28, sel_init);
  v16 = *&v15[OBJC_IVAR____TtC11ActivityKit11AlertClient_queue];
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1A2CC02DC;
  *(v18 + 24) = v17;
  aBlock[4] = sub_1A2C56C14;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A2C56C44;
  aBlock[3] = &block_descriptor_8;
  v19 = _Block_copy(aBlock);
  v20 = v15;
  v21 = v16;

  dispatch_sync(v21, v19);

  _Block_release(v19);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

void sub_1A2CBCCD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0570, &qword_1A2D0ADA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BD0, &unk_1A2D0D3A8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v35 - v9;
  v11 = sub_1A2D08344();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v16 = v17;
  (*(v12 + 104))(v16, *MEMORY[0x1E69E8020], v11, v14);
  v18 = v17;
  v19 = sub_1A2D08364();
  (*(v12 + 8))(v16, v11);
  if (v19)
  {
    v20 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_outputClient);
    ActivityOutputClient.observeDescriptorStates()();
    v36 = v30;
    v35[0] = v30;
    v35[1] = v18;
    v31 = sub_1A2D086D4();
    (*(*(v31 - 8) + 56))(v5, 1, 1, v31);
    v32 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0148, &qword_1A2D0A850);
    sub_1A2C569A0(0, &qword_1ED709E20, 0x1E69E9610);
    sub_1A2C56A78(&unk_1EB09F510, &qword_1EB0A0148, &qword_1A2D0A850);
    sub_1A2C8B9D4();
    sub_1A2D08264();
    sub_1A2C54E38(v5, &qword_1EB0A0570, &qword_1A2D0ADA0);

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A2C56A78(&qword_1EB0A0BE0, &unk_1EB0A0BD0, &unk_1A2D0D3A8);
    v33 = sub_1A2D08284();

    (*(v7 + 8))(v10, v6);
    v34 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_activityStatusSubscription);
    *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_activityStatusSubscription) = v33;
  }

  else
  {
    __break(1u);
    swift_once();
    v21 = sub_1A2D08094();
    __swift_project_value_buffer(v21, qword_1EB09EC10);
    v22 = v16;
    v23 = sub_1A2D08074();
    v24 = sub_1A2D08684();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = sub_1A2D08BB4();
      v29 = sub_1A2C55558(v27, v28, &v36);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1A2C51000, v23, v24, "Failed to start monitoring activities: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1A58E5180](v26, -1, -1);
      MEMORY[0x1A58E5180](v25, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1A2CBD210()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_queue];
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = OBJC_IVAR____TtC11ActivityKit11AlertClient_connection;
  if (!*&v0[OBJC_IVAR____TtC11ActivityKit11AlertClient_connection])
  {
    sub_1A2C569A0(0, &unk_1ED709E10, 0x1E698F490);
    sub_1A2CC0580();
    v10 = v0;
    v11 = sub_1A2D08784();
    if (v11)
    {
      v12 = *&v0[v9];
      *&v10[v9] = v11;
      v13 = v11;

      v14 = swift_allocObject();
      *(v14 + 16) = v10;
      v15 = swift_allocObject();
      *(v15 + 16) = sub_1A2CC05D4;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1A2C573BC;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A2C57338;
      aBlock[3] = &block_descriptor_35;
      v16 = _Block_copy(aBlock);
      v10;

      [v13 configureConnection_];
      _Block_release(v16);
      LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

      if ((v16 & 1) == 0)
      {
        sub_1A2CBDA78();

        return;
      }

LABEL_8:
      __break(1u);
    }
  }
}

void sub_1A2CBD4BC(void *a1, uint64_t a2)
{
  v4 = sub_1A2D08434();
  v5 = [objc_opt_self() interfaceWithIdentifier_];

  v6 = objc_opt_self();
  v7 = [v6 protocolForProtocol_];
  [v5 setClient_];

  v8 = [v6 protocolForProtocol_];
  [v5 setServer_];

  v9 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v17 = sub_1A2CBD7B4;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_38_1;
  v10 = _Block_copy(&v13);
  [a1 setActivationHandler_];
  _Block_release(v10);
  v17 = sub_1A2CBD7C0;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_41_2;
  v11 = _Block_copy(&v13);
  [a1 setInterruptionHandler_];
  _Block_release(v11);
  v17 = sub_1A2CBD7CC;
  v18 = 0;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A2C58E8C;
  v16 = &block_descriptor_44_1;
  v12 = _Block_copy(&v13);
  [a1 setInvalidationHandler_];
  _Block_release(v12);
}

void sub_1A2CBD7D8(uint64_t a1, const char *a2)
{
  if (qword_1EB09EC00 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1EB09EC10);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CBD8C8()
{
  v1 = sub_1A2D08344();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v6 = v7;
  (*(v2 + 104))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(v2 + 8))(v6, v1);
  if (v7)
  {
    sub_1A2CBD210();
    v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_connection);
    if (v9)
    {
      v10 = v9;
      if ([v10 remoteTarget])
      {
        sub_1A2D087F4();
        swift_unknownObjectRelease();

        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
      }

      else
      {
        memset(v11, 0, sizeof(v11));
        sub_1A2C54E38(v11, &qword_1EB0A04E0, &unk_1A2D0AA70);
        [v10 activate];
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1A2CBDA78()
{
  sub_1A2D07FF4();
  v1 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10[4] = sub_1A2CC0578;
  v10[5] = v2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A2CF6AC8;
  v10[3] = &block_descriptor_26_0;
  v3 = _Block_copy(v10);

  v4 = sub_1A2D08464();

  v5 = OBJC_IVAR____TtC11ActivityKit11AlertClient_serverStartupToken;
  swift_beginAccess();
  LODWORD(v1) = notify_register_dispatch((v4 + 32), (v0 + v5), v1, v3);
  swift_endAccess();
  _Block_release(v3);

  if (v1)
  {
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v6 = sub_1A2D08094();
    __swift_project_value_buffer(v6, qword_1EB09EC10);
    v7 = sub_1A2D08074();
    v8 = sub_1A2D08684();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1A2C51000, v7, v8, "Could not register for daemon startup notifications", v9, 2u);
      MEMORY[0x1A58E5180](v9, -1, -1);
    }
  }
}

void sub_1A2CBDC70()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2CBD8C8();
  }
}

uint64_t sub_1A2CBDCC4()
{
  v1 = sub_1A2D08344();
  isa = v1[-1].isa;
  v3 = *(isa + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v6 = v7;
  (*(isa + 13))(v6, *MEMORY[0x1E69E8020], v1, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1A2D08364();
  (*(isa + 1))(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  sub_1A2CBD8C8();
  v9 = *(v0 + OBJC_IVAR____TtC11ActivityKit11AlertClient_connection);
  if (!v9)
  {
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v10 = sub_1A2D08094();
    __swift_project_value_buffer(v10, qword_1EB09EC10);
    v1 = sub_1A2D08074();
    v11 = sub_1A2D08694();
    if (os_log_type_enabled(v1, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A2C51000, v1, v11, "AlertClient: Failed to establish a connection", v12, 2u);
      MEMORY[0x1A58E5180](v12, -1, -1);
    }

    goto LABEL_18;
  }

  v1 = v9;
  if ([v1 remoteTarget])
  {
    sub_1A2D087F4();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (*(&v20 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0BA8, &qword_1A2D0D3A0);
    if (swift_dynamicCast())
    {

      return v18[1];
    }
  }

  else
  {
    sub_1A2C54E38(v21, &qword_1EB0A04E0, &unk_1A2D0AA70);
  }

  if (qword_1EB09EC00 != -1)
  {
    goto LABEL_20;
  }

LABEL_15:
  v14 = sub_1A2D08094();
  __swift_project_value_buffer(v14, qword_1EB09EC10);
  v15 = sub_1A2D08074();
  v16 = sub_1A2D08694();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A2C51000, v15, v16, "AlertClient: Failed to cast connection to server interface protocol", v17, 2u);
    MEMORY[0x1A58E5180](v17, -1, -1);
  }

LABEL_18:
  return 0;
}

id AlertClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A2CBE0C8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A2CBE124(v1);
  }
}

uint64_t sub_1A2CBE124(void *a1)
{
  v151 = a1;
  v2 = type metadata accessor for BufferedAlert();
  v156 = *(v2 - 8);
  v3 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v163 = (&v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v145 = &v143 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v144 = &v143 - v8;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0BE8, &qword_1A2D0D3B8);
  v9 = *(*(v148 - 8) + 64);
  MEMORY[0x1EEE9AC00](v148);
  v155 = (&v143 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v143 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v143 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v143 - v19;
  v21 = type metadata accessor for ActivityDescriptorState();
  v159 = *(v21 - 8);
  v160 = v21;
  v22 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v154 = (&v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_1A2D08344();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v161 = v1;
  v30 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v29 = v30;
  (*(v25 + 104))(v29, *MEMORY[0x1E69E8020], v24, v27);
  v31 = v30;
  v32 = sub_1A2D08364();
  result = (*(v25 + 8))(v29, v24);
  if ((v32 & 1) == 0)
  {
LABEL_77:
    __break(1u);
    return result;
  }

  v35 = v151[2];
  v162 = v2;
  v158 = v14;
  v147 = v17;
  if (!v35)
  {
    v146 = MEMORY[0x1E69E7CC0];
    v37 = v161;
    goto LABEL_29;
  }

  v36 = 0;
  v153 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  v146 = MEMORY[0x1E69E7CC0];
  v152 = (v156 + 56);
  *&v34 = 136446210;
  v149 = v34;
  v38 = v160;
  v37 = v161;
  v39 = v151;
  v40 = v159;
  v157 = v35;
  *&v150 = v20;
  do
  {
    v41 = v36;
    while (1)
    {
      if (v41 >= v35)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      v36 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        goto LABEL_76;
      }

      v42 = (v39 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v41);
      if (*(v42 + *(v38 + 20)) > 2u)
      {
        break;
      }

      if (*(v42 + *(v38 + 20)))
      {
        goto LABEL_22;
      }

LABEL_6:
      ++v41;
      if (v36 == v35)
      {
        goto LABEL_29;
      }
    }

    if (*(v42 + *(v38 + 20)) == 3)
    {
      if (qword_1EB09EC00 != -1)
      {
        swift_once();
      }

      v43 = sub_1A2D08094();
      __swift_project_value_buffer(v43, qword_1EB09EC10);
      v44 = v154;
      sub_1A2CC06C8(v42, v154, type metadata accessor for ActivityDescriptorState);
      v45 = sub_1A2D08074();
      v46 = sub_1A2D086A4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v166[0] = v48;
        *v47 = v149;
        v50 = *v44;
        v49 = v44[1];

        sub_1A2CC0730(v44, type metadata accessor for ActivityDescriptorState);
        v51 = sub_1A2C55558(v50, v49, v166);

        *(v47 + 4) = v51;
        v39 = v151;
        _os_log_impl(&dword_1A2C51000, v45, v46, "Activity %{public}s has been dismissed, deleting any buffered alert", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v52 = v48;
        v20 = v150;
        MEMORY[0x1A58E5180](v52, -1, -1);
        MEMORY[0x1A58E5180](v47, -1, -1);
      }

      else
      {

        sub_1A2CC0730(v44, type metadata accessor for ActivityDescriptorState);
      }

      v54 = *v42;
      v53 = v42[1];
      v55 = v161;
      v56 = v153;
      swift_beginAccess();
      v57 = *(v55 + v56);
      v58 = sub_1A2C64868(v54, v53);
      v40 = v159;
      if (v59)
      {
        v60 = v58;
        v61 = *(v55 + v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v55 + v56);
        v167 = v63;
        v37 = v55;
        v64 = v162;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1A2CB4108();
          v63 = v167;
        }

        v65 = *(*(v63 + 48) + 16 * v60 + 8);

        sub_1A2CC0604(*(v63 + 56) + *(v156 + 72) * v60, v20, type metadata accessor for BufferedAlert);
        sub_1A2CA9310(v60, v63);
        v66 = 0;
        *(v37 + v56) = v63;
      }

      else
      {
        v66 = 1;
        v37 = v55;
        v64 = v162;
      }

      (*v152)(v20, v66, 1, v64);
      sub_1A2C54E38(v20, &unk_1EB0A0BB0, &unk_1A2D0B780);
      result = swift_endAccess();
      v38 = v160;
      v35 = v157;
      goto LABEL_6;
    }

LABEL_22:
    v67 = *v42;
    v68 = v42[1];

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A2C8A10C(0, *(v146 + 2) + 1, 1, v146);
      v146 = result;
    }

    v70 = *(v146 + 2);
    v69 = *(v146 + 3);
    if (v70 >= v69 >> 1)
    {
      result = sub_1A2C8A10C((v69 > 1), v70 + 1, 1, v146);
      v146 = result;
    }

    v71 = v146;
    *(v146 + 2) = v70 + 1;
    v72 = &v71[16 * v70];
    *(v72 + 4) = v67;
    *(v72 + 5) = v68;
    v35 = v157;
    v37 = v161;
  }

  while (v36 != v157);
LABEL_29:
  v73 = sub_1A2CC0790(v146);

  v74 = OBJC_IVAR____TtC11ActivityKit11AlertClient__queue_bufferedAlerts;
  swift_beginAccess();
  v157 = v74;
  v75 = *(v37 + v74);
  v76 = (v75 + 8);
  v77 = 1 << *(v75 + 32);
  if (v77 < 64)
  {
    v78 = ~(-1 << v77);
  }

  else
  {
    v78 = -1;
  }

  v79 = v78 & v75[8];
  v80 = (v77 + 63) >> 6;
  v160 = v73 + 56;
  v159 = v156 + 56;
  v154 = (v156 + 48);
  result = swift_bridgeObjectRetain_n();
  v81 = 0;
  v151 = MEMORY[0x1E69E7CC0];
  *&v82 = 136446210;
  v150 = v82;
  v152 = v75;
  while (v79)
  {
    v83 = v81;
LABEL_38:
    v84 = __clz(__rbit64(v79)) | (v83 << 6);
    v85 = v75[7];
    v86 = (v75[6] + 16 * v84);
    v87 = *v86;
    v88 = v86[1];
    v153 = *(v156 + 72);
    v89 = *(v148 + 48);
    v90 = v155;
    sub_1A2CC06C8(v85 + v153 * v84, v155 + v89, type metadata accessor for BufferedAlert);
    *v90 = v87;
    v90[1] = v88;
    if (*(v73 + 16))
    {
      v91 = *(v73 + 40);
      sub_1A2D08C14();

      sub_1A2D08484();
      v92 = sub_1A2D08C54();
      v93 = v73;
      v94 = -1 << *(v73 + 32);
      v95 = v92 & ~v94;
      if ((*(v160 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95))
      {
        v96 = ~v94;
        while (1)
        {
          v97 = (*(v93 + 48) + 16 * v95);
          v98 = *v97 == v87 && v97[1] == v88;
          if (v98 || (sub_1A2D08B34() & 1) != 0)
          {
            break;
          }

          v95 = (v95 + 1) & v96;
          if (((*(v160 + ((v95 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v95) & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        if (qword_1EB09EC00 != -1)
        {
          swift_once();
        }

        v101 = sub_1A2D08094();
        __swift_project_value_buffer(v101, qword_1EB09EC10);

        v102 = sub_1A2D08074();
        v103 = sub_1A2D086A4();

        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          LODWORD(v146) = v103;
          v105 = v104;
          *&v149 = swift_slowAlloc();
          v166[0] = v149;
          *v105 = v150;
          *(v105 + 4) = sub_1A2C55558(v87, v88, v166);
          _os_log_impl(&dword_1A2C51000, v102, v146, "Activity %{public}s is now active, presenting buffered alert", v105, 0xCu);
          v106 = v149;
          __swift_destroy_boxed_opaque_existential_1(v149);
          MEMORY[0x1A58E5180](v106, -1, -1);
          MEMORY[0x1A58E5180](v105, -1, -1);
        }

        v73 = v93;
        v107 = v155 + v89;
        v100 = v147;
        sub_1A2CC06C8(v107, v147, type metadata accessor for BufferedAlert);
        v99 = 0;
      }

      else
      {
LABEL_47:
        v99 = 1;
        v100 = v147;
        v73 = v93;
      }

      v75 = v152;
    }

    else
    {

      v99 = 1;
      v100 = v147;
    }

    v79 &= v79 - 1;
    v108 = v162;
    (*v159)(v100, v99, 1, v162);
    sub_1A2C54E38(v155, &qword_1EB0A0BE8, &qword_1A2D0D3B8);
    if ((*v154)(v100, 1, v108) == 1)
    {
      result = sub_1A2C54E38(v100, &unk_1EB0A0BB0, &unk_1A2D0B780);
      v81 = v83;
    }

    else
    {
      v109 = v144;
      sub_1A2CC0604(v100, v144, type metadata accessor for BufferedAlert);
      sub_1A2CC0604(v109, v145, type metadata accessor for BufferedAlert);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v151 = sub_1A2CB2C68(0, v151[2] + 1, 1, v151);
      }

      v111 = v151[2];
      v110 = v151[3];
      if (v111 >= v110 >> 1)
      {
        v151 = sub_1A2CB2C68(v110 > 1, v111 + 1, 1, v151);
      }

      v112 = v151;
      v151[2] = v111 + 1;
      result = sub_1A2CC0604(v145, v112 + ((*(v156 + 80) + 32) & ~*(v156 + 80)) + v111 * v153, type metadata accessor for BufferedAlert);
      v81 = v83;
    }
  }

  while (1)
  {
    v83 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    if (v83 >= v80)
    {
      break;
    }

    v79 = v76[v83];
    ++v81;
    if (v79)
    {
      goto LABEL_38;
    }
  }

  v113 = v151[2];
  if (v113)
  {
    v114 = v161 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
    v115 = v156;
    v116 = v151 + ((*(v156 + 80) + 32) & ~*(v156 + 80));
    swift_beginAccess();
    v160 = *(v115 + 72);
    v117 = v162;
    do
    {
      v126 = v163;
      sub_1A2CC06C8(v116, v163, type metadata accessor for BufferedAlert);
      v127 = *(*(*(v126 + v117[8]) + 24) + 16);

      os_unfair_lock_lock(v127);
      sub_1A2C8EB74();
      os_unfair_lock_unlock(v127);

      v129 = *v126;
      v128 = v126[1];
      v130 = v161;
      v131 = v157;
      swift_beginAccess();
      v132 = *(v130 + v131);
      v133 = sub_1A2C64868(v129, v128);
      if (v134)
      {
        v135 = v133;
        v136 = *(v130 + v131);
        v137 = swift_isUniquelyReferenced_nonNull_native();
        v138 = *(v130 + v131);
        v164 = v138;
        *(v130 + v131) = 0x8000000000000000;
        v139 = v158;
        if (!v137)
        {
          sub_1A2CB4108();
          v138 = v164;
        }

        v140 = *(*(v138 + 48) + 16 * v135 + 8);

        sub_1A2CC0604(*(v138 + 56) + v135 * v160, v139, type metadata accessor for BufferedAlert);
        sub_1A2CA9310(v135, v138);
        v141 = *(v130 + v131);
        *(v130 + v131) = v138;

        v142 = 0;
      }

      else
      {
        v142 = 1;
        v139 = v158;
      }

      v117 = v162;
      (*v159)(v139, v142, 1, v162);
      sub_1A2C54E38(v139, &unk_1EB0A0BB0, &unk_1A2D0B780);
      swift_endAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v118 = *(v114 + 8);
        ObjectType = swift_getObjectType();
        v120 = v117[5];
        v121 = v163;
        v122 = v163 + v117[6];
        v123 = *v122;
        v124 = v122[1];
        LOBYTE(v122) = v122[2];
        v165[0] = v123;
        v165[1] = v124;
        v165[2] = v122;
        (*(v118 + 8))(v129, v128, v163 + v120, v165, *(v163 + v117[7]), *(v163 + v117[7] + 8), ObjectType, v118);
        swift_unknownObjectRelease();
        v125 = v121;
      }

      else
      {
        v125 = v163;
      }

      sub_1A2CC0730(v125, type metadata accessor for BufferedAlert);
      v116 += v160;
      --v113;
    }

    while (v113);
  }
}

void sub_1A2CBF0F8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6)
{
  v89 = a3;
  v90 = a5;
  v92 = a1;
  v93 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v80 - v11;
  v12 = type metadata accessor for BufferedAlert();
  v81 = *(v12 - 8);
  v82 = v12;
  v13 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v91 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SubscribedActivity(0);
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A2D08344();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v19);
  v23 = (&v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  LODWORD(v22) = a4[1];
  v86 = *a4;
  v87 = v22;
  v88 = a4[2];
  v24 = *(v6 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v23 = v24;
  v25 = (v20 + 13);
  v26 = v20[13];
  v26(v23, *MEMORY[0x1E69E8020], v19);
  v84 = v24;
  LOBYTE(v24) = sub_1A2D08364();
  v27 = v20[1];
  v27(v23, v19);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v85 = a6;
  v94 = v6;
  v28 = *(*(v6 + OBJC_IVAR____TtC11ActivityKit11AlertClient_outputClient) + 24);
  v29 = OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue;
  v30 = *(v28 + OBJC_IVAR____TtC11ActivityKitP33_1602B0B984EDF6E52CE840E80AB3FBCA9Singleton_queue);
  *v23 = v30;
  v26(v23, *MEMORY[0x1E69E8018], v19);
  v31 = v30;
  LOBYTE(v30) = sub_1A2D08364();
  v32 = (v27)(v23, v19);
  if ((v30 & 1) == 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v33 = *(v28 + v29);
  MEMORY[0x1EEE9AC00](v32);
  *(&v80 - 2) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0190, &qword_1A2D0A890);
  sub_1A2D08704();
  v34 = v96[0];
  v25 = v92;
  v27 = v93;
  if (!*(v96[0] + 16) || (v35 = sub_1A2C64868(v92, v93), (v36 & 1) == 0))
  {

    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v45 = sub_1A2D08094();
    __swift_project_value_buffer(v45, qword_1EB09EC10);

    v40 = sub_1A2D08074();
    v41 = sub_1A2D086A4();

    v46 = os_log_type_enabled(v40, v41);
    v18 = v91;
    if (v46)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v96[0] = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1A2C55558(v25, v27, v96);
      v44 = "Activity %{public}s not found, buffering alert";
      goto LABEL_15;
    }

LABEL_16:

    v47 = v82;
    v48 = v83;
    v49 = v81;
    type metadata accessor for Watchdog();
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    type metadata accessor for UnfairLock();
    v50 = swift_allocObject();
    v51 = swift_slowAlloc();
    *(v50 + 16) = v51;
    *v51 = 0;
    *(v19 + 24) = v50;
    *(v19 + 32) = 0;
    sub_1A2CC06C8(v89, &v18[v47[5]], type metadata accessor for AlertPayload);
    *v18 = v25;
    *(v18 + 1) = v27;
    v52 = &v18[v47[6]];
    v53 = v87;
    *v52 = v86;
    v52[1] = v53;
    v52[2] = v88;
    v54 = &v18[v47[7]];
    v55 = v85;
    *v54 = v90;
    *(v54 + 1) = v55;
    *&v18[v47[8]] = v19;
    sub_1A2CC06C8(v18, v48, type metadata accessor for BufferedAlert);
    (*(v49 + 56))(v48, 0, 1, v47);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();

    sub_1A2CA840C(v48, v25, v27);
    swift_endAccess();
    if (qword_1EB09EC00 == -1)
    {
LABEL_17:
      v56 = sub_1A2D08094();
      __swift_project_value_buffer(v56, qword_1EB09EC10);

      v57 = sub_1A2D08074();
      v58 = sub_1A2D086A4();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v96[0] = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_1A2C55558(v25, v27, v96);
        _os_log_impl(&dword_1A2C51000, v57, v58, "Buffered alert for activity %{public}s.", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x1A58E5180](v60, -1, -1);
        MEMORY[0x1A58E5180](v59, -1, -1);
      }

      v61 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v62 = swift_allocObject();
      v62[2] = v61;
      v62[3] = v25;
      v62[4] = v27;
      v63 = *(*(v19 + 24) + 16);

      os_unfair_lock_lock(v63);
      sub_1A2C8BCE8(v84, sub_1A2CC05F8, v62, 5.0);
      os_unfair_lock_unlock(v63);

      sub_1A2CC0730(v18, type metadata accessor for BufferedAlert);

      return;
    }

LABEL_35:
    swift_once();
    goto LABEL_17;
  }

  sub_1A2CC06C8(*(v34 + 56) + *(v80 + 72) * v35, v18, type metadata accessor for SubscribedActivity);

  v37 = v18[16];
  sub_1A2CC0730(v18, type metadata accessor for SubscribedActivity);
  v38 = v94;
  if (v37 <= 2)
  {
    v18 = v91;
    if ((v37 - 1) >= 2)
    {
      if (qword_1EB09EC00 != -1)
      {
        swift_once();
      }

      v39 = sub_1A2D08094();
      __swift_project_value_buffer(v39, qword_1EB09EC10);

      v40 = sub_1A2D08074();
      v41 = sub_1A2D086A4();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v96[0] = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_1A2C55558(v25, v27, v96);
        v44 = "Activity %{public}s is pending, buffering alert";
LABEL_15:
        _os_log_impl(&dword_1A2C51000, v40, v41, v44, v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1A58E5180](v43, -1, -1);
        MEMORY[0x1A58E5180](v42, -1, -1);
        goto LABEL_16;
      }

      goto LABEL_16;
    }

    goto LABEL_27;
  }

  if (v37 != 3)
  {
LABEL_27:
    if (qword_1EB09EC00 != -1)
    {
      swift_once();
    }

    v71 = sub_1A2D08094();
    __swift_project_value_buffer(v71, qword_1EB09EC10);

    v72 = sub_1A2D08074();
    v73 = sub_1A2D086A4();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v96[0] = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_1A2C55558(v25, v27, v96);
      _os_log_impl(&dword_1A2C51000, v72, v73, "Activity %{public}s is active, presenting alert immediately", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v75);
      v76 = v75;
      v38 = v94;
      MEMORY[0x1A58E5180](v76, -1, -1);
      MEMORY[0x1A58E5180](v74, -1, -1);
    }

    v77 = v38 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v78 = *(v77 + 8);
      ObjectType = swift_getObjectType();
      v95[0] = v86;
      v95[1] = v87;
      v95[2] = v88;
      (*(v78 + 8))(v25, v27, v89, v95, v90, v85, ObjectType, v78);
      swift_unknownObjectRelease();
    }

    return;
  }

  if (qword_1EB09EC00 != -1)
  {
    swift_once();
  }

  v64 = sub_1A2D08094();
  __swift_project_value_buffer(v64, qword_1EB09EC10);

  v65 = sub_1A2D08074();
  v66 = sub_1A2D086A4();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v25;
    v70 = v68;
    v96[0] = v68;
    *v67 = 136446210;
    *(v67 + 4) = sub_1A2C55558(v69, v27, v96);
    _os_log_impl(&dword_1A2C51000, v65, v66, "Activity %{public}s is dismissed, ignoring alert", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v70);
    MEMORY[0x1A58E5180](v70, -1, -1);
    MEMORY[0x1A58E5180](v67, -1, -1);
  }
}

void sub_1A2CBFCB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_1A2CBFD20(a3, a4);
  }
}

uint64_t sub_1A2CBFD20(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0BB0, &unk_1A2D0B780);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for BufferedAlert();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A2D08344();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1A2D08364();
  v21 = *(v14 + 8);
  v20 = v14 + 8;
  v21(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_5;
  }

  swift_beginAccess();
  sub_1A2CA8D54(a1, a2, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1A2C54E38(v8, &unk_1EB0A0BB0, &unk_1A2D0B780);
  }

  v20 = v32;
  sub_1A2CC0604(v8, v32, type metadata accessor for BufferedAlert);
  if (qword_1EB09EC00 != -1)
  {
    goto LABEL_9;
  }

LABEL_5:
  v23 = sub_1A2D08094();
  __swift_project_value_buffer(v23, qword_1EB09EC10);

  v24 = sub_1A2D08074();
  v25 = sub_1A2D086A4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v33 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1A2C55558(a1, a2, &v33);
    _os_log_impl(&dword_1A2C51000, v24, v25, "Buffered alert for activity %{public}s timed out after 5 seconds", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1A58E5180](v27, -1, -1);
    MEMORY[0x1A58E5180](v26, -1, -1);
  }

  v28 = v20 + *(v9 + 28);
  v30 = *v28;
  v29 = *(v28 + 8);
  sub_1A2CC066C();
  v31 = swift_allocError();
  v30();

  return sub_1A2CC0730(v20, type metadata accessor for BufferedAlert);
}

Swift::Void __swiftcall AlertClient.requestAlertDismissal(activityIdentifier:)(Swift::String activityIdentifier)
{
  v2 = *(v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB0A0B80, qword_1A2D0D328);
  sub_1A2D08704();
}

uint64_t sub_1A2CC0194@<X0>(BOOL *a1@<X8>)
{
  result = sub_1A2CBDCC4();
  v3 = result;
  if (result)
  {
    v4 = sub_1A2D08434();
    [v3 requestAlertDismissalWithActivityIdentifier_];

    result = swift_unknownObjectRelease();
  }

  *a1 = v3 == 0;
  return result;
}

Swift::Void __swiftcall AlertClient.dismissAlert(withActivityIdentifier:)(Swift::String withActivityIdentifier)
{
  object = withActivityIdentifier._object;
  countAndFlagsBits = withActivityIdentifier._countAndFlagsBits;
  v4 = v1 + OBJC_IVAR____TtC11ActivityKit11AlertClient_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(countAndFlagsBits, object, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

void sub_1A2CC02DC()
{
  v1 = *(v0 + 16);
  sub_1A2CBD8C8();
  sub_1A2CBCCD4();
}

uint64_t sub_1A2CC0304@<X0>(BOOL *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1A2CC0194(a1);
}

uint64_t type metadata accessor for BufferedAlert()
{
  result = qword_1EB0A0B90;
  if (!qword_1EB0A0B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A2CC0474()
{
  result = type metadata accessor for AlertPayload();
  if (v1 <= 0x3F)
  {
    result = sub_1A2CC0528();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Watchdog();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1A2CC0528()
{
  result = qword_1EB0A0BA0;
  if (!qword_1EB0A0BA0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB0A0BA0);
  }

  return result;
}

unint64_t sub_1A2CC0580()
{
  result = qword_1EB09ECF8;
  if (!qword_1EB09ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ECF8);
  }

  return result;
}

uint64_t sub_1A2CC0604(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A2CC066C()
{
  result = qword_1EB0A0BC0;
  if (!qword_1EB0A0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0BC0);
  }

  return result;
}

uint64_t sub_1A2CC06C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A2CC0730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A2CC0790(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1A58E4320](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A2CBAD68(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1A2CC083C()
{
  result = qword_1EB0A0BF0;
  if (!qword_1EB0A0BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0BF0);
  }

  return result;
}

uint64_t static ActivityOutputServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709D48 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709D50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t ActivitySubscriptionOptions.description.getter()
{
  v1 = *v0;
  sub_1A2D08864();

  if (v1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1A58E4150](v2, v3);

  return 0xD000000000000011;
}

uint64_t sub_1A2CC0A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x506564756C636E69 && a2 == 0xEF7364616F6C7961)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC0AA8(uint64_t a1)
{
  v2 = sub_1A2C61DDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC0AE4(uint64_t a1)
{
  v2 = sub_1A2C61DDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySubscriptionOptions.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C00, &qword_1A2D0D480);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C61DDC();
  sub_1A2D08C74();
  sub_1A2D08AC4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1A2CC0C5C()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C61B90();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CC0D24()
{
  v1 = 0x696669746E656469;
  v2 = 0x7470697263736564;
  if (*v0 != 2)
  {
    v2 = 0x7364616F6C796170;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1A2CC0DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CC245C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CC0DD4(uint64_t a1)
{
  v2 = sub_1A2CC190C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC0E10(uint64_t a1)
{
  v2 = sub_1A2CC190C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SubscribedActivity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C10, &qword_1A2D0D490);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC190C();
  sub_1A2D08C74();
  v11 = *v3;
  v12 = v3[1];
  v21 = 0;
  sub_1A2D08AB4();
  if (!v2)
  {
    v20 = *(v3 + 16);
    v19 = 1;
    sub_1A2C74124();
    sub_1A2D08AE4();
    v13 = type metadata accessor for SubscribedActivity(0);
    v14 = *(v13 + 24);
    v18 = 2;
    type metadata accessor for ActivityDescriptor();
    sub_1A2C60E08(&qword_1ED708D60, type metadata accessor for ActivityDescriptor);
    sub_1A2D08AE4();
    v17 = *(v3 + *(v13 + 28));
    v16[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1960();
    sub_1A2D08AE4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t SubscribedActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for ActivityDescriptor();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C38, &qword_1A2D0D4A0);
  v28 = *(v7 - 8);
  v29 = v7;
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for SubscribedActivity(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC190C();
  v30 = v10;
  v16 = v31;
  sub_1A2D08C64();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = a1;
  v19 = v28;
  v18 = v29;
  v37 = 0;
  *v14 = sub_1A2D08A24();
  *(v14 + 1) = v20;
  v31 = v20;
  v35 = 1;
  sub_1A2C78A64();
  sub_1A2D08A54();
  v14[16] = v36;
  v34 = 2;
  sub_1A2C60E08(&qword_1ED709430, type metadata accessor for ActivityDescriptor);
  v26 = v14;
  v21 = v6;
  sub_1A2D08A54();
  v22 = v17;
  v23 = v26;
  sub_1A2C72690(v21, &v26[*(v11 + 24)], type metadata accessor for ActivityDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0C20, &qword_1A2D0D498);
  v33 = 3;
  sub_1A2CC1A70();
  sub_1A2D08A54();
  (*(v19 + 8))(v30, v18);
  *(v23 + *(v11 + 28)) = v32;
  sub_1A2C72558(v23, v27, type metadata accessor for SubscribedActivity);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1A2C74070(v23, type metadata accessor for SubscribedActivity);
}

uint64_t sub_1A2CC150C(uint64_t a1)
{
  v2 = sub_1A2C72504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1548(uint64_t a1)
{
  v2 = sub_1A2C72504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC1584(uint64_t a1)
{
  v2 = sub_1A2C6F514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC15C0(uint64_t a1)
{
  v2 = sub_1A2C6F514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC15FC(uint64_t a1)
{
  v2 = sub_1A2C7495C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1638(uint64_t a1)
{
  v2 = sub_1A2C7495C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC1674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC16F4(uint64_t a1)
{
  v2 = sub_1A2C740D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC1730(uint64_t a1)
{
  v2 = sub_1A2C740D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityChange.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

ActivityKit::ActivityChange __swiftcall ActivityChange.init(identifier:changes:)(Swift::String identifier, Swift::OpaquePointer changes)
{
  *v2 = identifier;
  *(v2 + 16) = changes;
  result.identifier = identifier;
  result.changes = changes;
  return result;
}

uint64_t sub_1A2CC17B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1A2D08B34() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365676E616863 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A2D08B34();

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

uint64_t sub_1A2CC1894(uint64_t a1)
{
  v2 = sub_1A2C6EDCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC18D0(uint64_t a1)
{
  v2 = sub_1A2C6EDCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1A2CC190C()
{
  result = qword_1EB0A0C18;
  if (!qword_1EB0A0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C18);
  }

  return result;
}

unint64_t sub_1A2CC1960()
{
  result = qword_1EB0A0C28;
  if (!qword_1EB0A0C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1A1C();
    sub_1A2C60E08(&qword_1EB09F658, type metadata accessor for OpaqueActivityPayload);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C28);
  }

  return result;
}

unint64_t sub_1A2CC1A1C()
{
  result = qword_1EB0A0C30;
  if (!qword_1EB0A0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C30);
  }

  return result;
}

unint64_t sub_1A2CC1A70()
{
  result = qword_1EB0A0C40;
  if (!qword_1EB0A0C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0C20, &qword_1A2D0D498);
    sub_1A2CC1B2C();
    sub_1A2C60E08(&qword_1ED709070, type metadata accessor for OpaqueActivityPayload);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C40);
  }

  return result;
}

unint64_t sub_1A2CC1B2C()
{
  result = qword_1EB0A0C48;
  if (!qword_1EB0A0C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0C48);
  }

  return result;
}

unint64_t sub_1A2CC1B80(void *a1)
{
  a1[1] = sub_1A2C620FC();
  a1[2] = sub_1A2C61B90();
  result = sub_1A2CC1BB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC1BB8()
{
  result = qword_1EB09F080;
  if (!qword_1EB09F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F080);
  }

  return result;
}

uint64_t sub_1A2CC1C1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1A2CC1C64(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1A2CC1CF4()
{
  result = type metadata accessor for ActivityDescriptor();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OpaqueActivityPayload(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A2CC1DD8()
{
  result = qword_1EB0A0CA8;
  if (!qword_1EB0A0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CA8);
  }

  return result;
}

unint64_t sub_1A2CC1E30()
{
  result = qword_1EB0A0CB0;
  if (!qword_1EB0A0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CB0);
  }

  return result;
}

unint64_t sub_1A2CC1E88()
{
  result = qword_1EB0A0CB8;
  if (!qword_1EB0A0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CB8);
  }

  return result;
}

unint64_t sub_1A2CC1EE0()
{
  result = qword_1EB0A0CC0;
  if (!qword_1EB0A0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CC0);
  }

  return result;
}

unint64_t sub_1A2CC1F38()
{
  result = qword_1EB0A0CC8;
  if (!qword_1EB0A0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CC8);
  }

  return result;
}

unint64_t sub_1A2CC1F90()
{
  result = qword_1EB0A0CD0;
  if (!qword_1EB0A0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CD0);
  }

  return result;
}

unint64_t sub_1A2CC1FE8()
{
  result = qword_1EB0A0CD8;
  if (!qword_1EB0A0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CD8);
  }

  return result;
}

unint64_t sub_1A2CC2040()
{
  result = qword_1ED709158;
  if (!qword_1ED709158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709158);
  }

  return result;
}

unint64_t sub_1A2CC2098()
{
  result = qword_1ED709160;
  if (!qword_1ED709160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709160);
  }

  return result;
}

unint64_t sub_1A2CC20F0()
{
  result = qword_1ED7091D0;
  if (!qword_1ED7091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091D0);
  }

  return result;
}

unint64_t sub_1A2CC2148()
{
  result = qword_1ED7091D8;
  if (!qword_1ED7091D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091D8);
  }

  return result;
}

unint64_t sub_1A2CC21A0()
{
  result = qword_1ED7091A8;
  if (!qword_1ED7091A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091A8);
  }

  return result;
}

unint64_t sub_1A2CC21F8()
{
  result = qword_1ED7091B0;
  if (!qword_1ED7091B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091B0);
  }

  return result;
}

unint64_t sub_1A2CC2250()
{
  result = qword_1ED7091C0;
  if (!qword_1ED7091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091C0);
  }

  return result;
}

unint64_t sub_1A2CC22A8()
{
  result = qword_1ED7091C8;
  if (!qword_1ED7091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091C8);
  }

  return result;
}

unint64_t sub_1A2CC2300()
{
  result = qword_1ED7091E8;
  if (!qword_1ED7091E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091E8);
  }

  return result;
}

unint64_t sub_1A2CC2358()
{
  result = qword_1ED7091F0;
  if (!qword_1ED7091F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7091F0);
  }

  return result;
}

unint64_t sub_1A2CC23B0()
{
  result = qword_1EB0A0CE0;
  if (!qword_1EB0A0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CE0);
  }

  return result;
}

unint64_t sub_1A2CC2408()
{
  result = qword_1EB0A0CE8;
  if (!qword_1EB0A0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0CE8);
  }

  return result;
}

uint64_t sub_1A2CC245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEA0000000000726FLL || (sub_1A2D08B34() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7364616F6C796170 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

uint64_t ActivityAttributesType.attributesType.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t ActivityAttributesType.attributesType.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1A2CC266C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7475626972747461 && a2 == 0xEE00657079547365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A2D08B34();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A2CC26FC(uint64_t a1)
{
  v2 = sub_1A2C6697C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC2738(uint64_t a1)
{
  v2 = sub_1A2C6697C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityAttributesType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0CF8, &qword_1A2D0DFC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2C6697C();
  sub_1A2D08C74();
  sub_1A2D08AB4();
  return (*(v4 + 8))(v7, v3);
}

uint64_t static ActivityAttributesType.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

uint64_t ActivityAttributesType.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A2D08484();
}

uint64_t ActivityAttributesType.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC2934()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC2980()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1A2D08484();
}

uint64_t sub_1A2CC2988()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08C14();
  sub_1A2D08484();
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC29D0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1A2D08B34();
  }
}

unint64_t ActivityAttributesType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t ActivityAttributesType.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1A2D08864();

  MEMORY[0x1A58E4150](v1, v2);
  return 0xD000000000000011;
}

unint64_t sub_1A2CC2AFC()
{
  result = qword_1EB09F0C0;
  if (!qword_1EB09F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F0C0);
  }

  return result;
}

unint64_t sub_1A2CC2B50(void *a1)
{
  a1[1] = sub_1A2C6CDD0();
  a1[2] = sub_1A2C6ABA0();
  result = sub_1A2CC2B88();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC2B88()
{
  result = qword_1EB09F5F0;
  if (!qword_1EB09F5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09F5F0);
  }

  return result;
}

uint64_t sub_1A2CC2BDC()
{
  v9 = *v0;
  v10 = v0[1];
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C6ABA0();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t sub_1A2CC2CA4(uint64_t a1, int a2)
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

uint64_t sub_1A2CC2CEC(uint64_t result, int a2, int a3)
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

unint64_t sub_1A2CC2D3C()
{
  result = qword_1EB0A0D00;
  if (!qword_1EB0A0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D00);
  }

  return result;
}

unint64_t sub_1A2CC2D94()
{
  result = qword_1ED709B78;
  if (!qword_1ED709B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B78);
  }

  return result;
}

unint64_t sub_1A2CC2DEC()
{
  result = qword_1ED709B80;
  if (!qword_1ED709B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED709B80);
  }

  return result;
}

uint64_t sub_1A2CC2E40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 49);
    for (i = (a1 + 49); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(i - 17) == *(v3 - 17) && *(i - 9) == *(v3 - 9);
      if (!v9 && (sub_1A2D08B34() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (v6 == 1)
        {
          result = 0;
          if (v8 != 1 || ((v7 ^ v5) & 1) != 0)
          {
            return result;
          }
        }

        else
        {
          result = 0;
          if (v8 != 2 || v7)
          {
            return result;
          }
        }
      }

      else
      {
        if (v8)
        {
          return 0;
        }

        if (v5 == 2)
        {
          if (v7 != 2)
          {
            return 0;
          }
        }

        else if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return 0;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1A2CC2F58(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 3);
        v6 = *(v4 - 2);
        v7 = *(v4 - 1);
        v8 = *v4;
        v21 = *(v4 - 4);
        v22 = v5;
        v23 = v6;
        v24 = v7;
        v25 = v8;
        v10 = *(v3 - 3);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v13 = *v3;
        v16 = *(v3 - 4);
        v9 = v16;
        v17 = v10;
        v18 = v11;
        v19 = v12;
        v20 = v13;
        sub_1A2CC35F8(v21, v5, v6, v7, v8, sub_1A2C66A94, sub_1A2C66A98);
        sub_1A2CC35F8(v9, v10, v11, v12, v13, sub_1A2C66A94, sub_1A2C66A98);
        v14 = _s11ActivityKit0A13ContentSourceO7RequestO2eeoiySbAE_AEtFZ_0(&v21, &v16);
        sub_1A2CC35F8(v16, v17, v18, v19, v20, sub_1A2C6AE84, sub_1A2C6AE84);
        sub_1A2CC35F8(v21, v22, v23, v24, v25, sub_1A2C6AE84, sub_1A2C6AE84);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v4 += 40;
        v3 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1A2CC30E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1A2D08B34() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

Swift::Bool __swiftcall ActivityProminencePredicate.matches(activityIdentifier:)(Swift::String activityIdentifier)
{
  if (*v1)
  {
    v6 = activityIdentifier;
    MEMORY[0x1EEE9AC00](activityIdentifier._countAndFlagsBits);
    v5[2] = &v6;
    v3 = sub_1A2C956A8(sub_1A2CB05CC, v5, v2);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_1A2CC321C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001A2D19F50 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1A2D08B34();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1A2CC32B0(uint64_t a1)
{
  v2 = sub_1A2C8A41C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC32EC(uint64_t a1)
{
  v2 = sub_1A2C8A41C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A2CC3328()
{
  v9 = *v0;
  v1 = sub_1A2D07EB4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C8A218();
  v4 = sub_1A2D07E94();
  v6 = v5;
  v7 = sub_1A2D07F24();
  sub_1A2C55840(v4, v6);

  return v7;
}

uint64_t static ActivityProminencePredicate.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

uint64_t sub_1A2CC3418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return (v2 | v3) == 0;
  }

  else
  {
    return sub_1A2CC30E4(v2, v3);
  }
}

unint64_t sub_1A2CC3444(void *a1)
{
  a1[1] = sub_1A2C8B528();
  a1[2] = sub_1A2C8A218();
  result = sub_1A2CC347C();
  a1[3] = result;
  return result;
}

unint64_t sub_1A2CC347C()
{
  result = qword_1EB09ED88;
  if (!qword_1EB09ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09ED88);
  }

  return result;
}

unint64_t sub_1A2CC34F4()
{
  result = qword_1EB0A0D18;
  if (!qword_1EB0A0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D18);
  }

  return result;
}

unint64_t sub_1A2CC354C()
{
  result = qword_1ED708438;
  if (!qword_1ED708438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708438);
  }

  return result;
}

unint64_t sub_1A2CC35A4()
{
  result = qword_1ED708440;
  if (!qword_1ED708440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED708440);
  }

  return result;
}

uint64_t sub_1A2CC35F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void (*a6)(void), uint64_t (*a7)(void))
{
  if (a5)
  {

    return a7();
  }

  else
  {
    a6();

    return (a7)(a3, a4);
  }
}

uint64_t sub_1A2CC3668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }

  else
  {
    if (a5)
    {
      return result;
    }
  }
}

uint64_t static ActivityFrequentUpdatesObservationServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED709B00 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED709B08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t RemoteSubscriptionType.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6168436574617473;
    }

    if (a1 == 3)
    {
      return 1701736302;
    }
  }

  else
  {
    if (!a1)
    {
      return 1819047270;
    }

    if (a1 == 1)
    {
      return 0x737472656C61;
    }
  }

  result = sub_1A2D08B64();
  __break(1u);
  return result;
}

uint64_t static RemoteSubscriptionType.mostRestrictive(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = 0;
  v5 = a1 + 32;
  while (2)
  {
    v6 = result;
    v7 = result - 1;
    for (i = v4; ; ++i)
    {
      if (i >= v1)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_22;
      }

      result = *(v5 + 8 * i);
      if (result > 1)
      {
        break;
      }

      if (result)
      {
        if (result != 1)
        {
          goto LABEL_23;
        }

        if (v6 < 2)
        {
          goto LABEL_17;
        }
      }

      else if (v7 >= 3)
      {
        goto LABEL_17;
      }

LABEL_5:
      if (v4 == v1)
      {
        return v6;
      }
    }

    if (result == 2)
    {
      if (v6 != 3)
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    if (result != 3)
    {
LABEL_23:
      result = sub_1A2D08B64();
      __break(1u);
      return result;
    }

LABEL_17:
    if (v4 != v1)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_1A2CC3964()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

uint64_t sub_1A2CC39D8()
{
  v1 = *v0;
  sub_1A2D08C14();
  MEMORY[0x1A58E48E0](v1);
  return sub_1A2D08C54();
}

unint64_t sub_1A2CC3A1C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1A2CC44DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t RemoteSubscription.presentationTargetBundleIDExceptions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t RemoteSubscription.init(subscriptionType:presentationTargetBundleIDExceptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1A2CC3CA4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a3;
    v9 = a4;
    swift_once();
    a2 = v7;
    a4 = v9;
    a3 = v8;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t RemoteSubscription.description.getter()
{
  v1 = *v0;
  if (!*(v0[1] + 16))
  {
    if (v1 <= 1)
    {
      if (!v1)
      {
        return 1819047270;
      }

LABEL_16:
      if (v1 == 1)
      {
        return 0x737472656C61;
      }

      goto LABEL_23;
    }

    if (v1 == 2)
    {
      return 0x6168436574617473;
    }

    if (v1 != 3)
    {
LABEL_23:
      result = sub_1A2D08B64();
      __break(1u);
      return result;
    }

LABEL_12:

    return 1701736302;
  }

  v7 = v0[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
  sub_1A2CC44EC();
  v2 = sub_1A2D08404();
  v4 = v3;

  if (v1 == 3)
  {
    goto LABEL_12;
  }

  result = 1819047270;
  if (v4)
  {
    switch(v1)
    {
      case 0:
        v6 = 0xE400000000000000;
        goto LABEL_21;
      case 2:
        result = 0x6168436574617473;
        v6 = 0xEC0000007365676ELL;
LABEL_21:
        MEMORY[0x1A58E4150](result, v6);

        MEMORY[0x1A58E4150](0x2074706563786520, 0xE800000000000000);
        MEMORY[0x1A58E4150](v2, v4);

        return 0;
      case 1:
        v6 = 0xE600000000000000;
        result = 0x737472656C61;
        goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v1)
  {
    if (v1 == 2)
    {
      return 0x6168436574617473;
    }

    goto LABEL_16;
  }

  return result;
}

unint64_t sub_1A2CC3F30()
{
  if (*v0)
  {
    result = 0xD000000000000024;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t sub_1A2CC3F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001A2D1A350 == a2 || (sub_1A2D08B34() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001A2D1A370 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A2D08B34();

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

uint64_t sub_1A2CC4050(uint64_t a1)
{
  v2 = sub_1A2CC4550();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC408C(uint64_t a1)
{
  v2 = sub_1A2CC4550();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteSubscription.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D78, &qword_1A2D0E5C8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC4550();
  sub_1A2D08C74();
  v14 = v9;
  v13 = 0;
  sub_1A2CC45A4();
  sub_1A2D08AE4();
  if (!v2)
  {
    v14 = v12;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    sub_1A2C8A470(&unk_1ED708820);
    sub_1A2D08AE4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t RemoteSubscription.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0D90, &qword_1A2D0E5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A2CC4550();
  sub_1A2D08C64();
  if (!v2)
  {
    v15 = 0;
    sub_1A2CC45F8();
    sub_1A2D08A54();
    v11 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    v15 = 1;
    sub_1A2C8A470(&qword_1ED709510);
    sub_1A2D08A54();
    (*(v6 + 8))(v9, v5);
    v12 = v16;
    *a2 = v11;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1A2CC44DC(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1A2CC44EC()
{
  result = qword_1EB0A0D70;
  if (!qword_1EB0A0D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB0A0850, &qword_1A2D0E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D70);
  }

  return result;
}

unint64_t sub_1A2CC4550()
{
  result = qword_1EB0A0D80;
  if (!qword_1EB0A0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D80);
  }

  return result;
}

unint64_t sub_1A2CC45A4()
{
  result = qword_1EB0A0D88;
  if (!qword_1EB0A0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D88);
  }

  return result;
}

unint64_t sub_1A2CC45F8()
{
  result = qword_1EB0A0D98;
  if (!qword_1EB0A0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0D98);
  }

  return result;
}

unint64_t sub_1A2CC4650()
{
  result = qword_1EB0A0DA0;
  if (!qword_1EB0A0DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DA0);
  }

  return result;
}

unint64_t sub_1A2CC46D8()
{
  result = qword_1EB0A0DA8;
  if (!qword_1EB0A0DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DA8);
  }

  return result;
}

unint64_t sub_1A2CC4730()
{
  result = qword_1EB0A0DB0;
  if (!qword_1EB0A0DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DB0);
  }

  return result;
}

unint64_t sub_1A2CC4788()
{
  result = qword_1EB0A0DB8;
  if (!qword_1EB0A0DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0DB8);
  }

  return result;
}

unint64_t sub_1A2CC47DC()
{
  result = qword_1EB09EF48;
  if (!qword_1EB09EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF48);
  }

  return result;
}

void sub_1A2CC49B0(uint64_t a1, const char *a2)
{
  if (qword_1ED7097E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1A2D08094();
  __swift_project_value_buffer(v3, qword_1ED7097F0);
  oslog = sub_1A2D08074();
  v4 = sub_1A2D08674();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1A2C51000, oslog, v4, a2, v5, 2u);
    MEMORY[0x1A58E5180](v5, -1, -1);
  }
}

void sub_1A2CC4AA0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1A2C59424();
  }
}

double sub_1A2CC4AF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens);
  if (*(v5 + 16))
  {
    v8 = *(a1 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient__queue_pushTokens);

    v9 = sub_1A2C64868(a2, a3);
    if (v10)
    {
      v11 = *(*(v5 + 56) + 16 * v9);
      *a4 = v11;
      sub_1A2C5E63C(v11, *(&v11 + 1));
    }

    else
    {

      result = 0.0;
      *a4 = xmmword_1A2D0AC30;
    }
  }

  else
  {
    result = 0.0;
    *a4 = xmmword_1A2D0AC30;
  }

  return result;
}

id sub_1A2CC4BA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ActivityPushTokenClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A2CC4C48()
{
  v1 = *(*v0 + OBJC_IVAR____TtC11ActivityKit23ActivityPushTokenClient_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0DF8, &qword_1A2D0E948);
  sub_1A2D08704();
  return v3;
}

ActivityKit::AlertPresentationOptions __swiftcall AlertPresentationOptions.init(optional:interrupting:breaksThroughFocus:)(Swift::Bool optional, Swift::Bool interrupting, Swift::Bool breaksThroughFocus)
{
  *v3 = optional;
  v3[1] = interrupting;
  v3[2] = breaksThroughFocus;
  result.optional = optional;
  return result;
}

id AlertPresentationOptions.acAlertPresentationOptions.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = [objc_allocWithZone(ACAlertPresentationOptions) init];
  [v4 setInterrupting_];
  [v4 setOptional_];
  [v4 setBreaksThroughFocus_];
  return v4;
}

uint64_t sub_1A2CC4DB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A2CC5418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A2CC4DD8(uint64_t a1)
{
  v2 = sub_1A2C94000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A2CC4E14(uint64_t a1)
{
  v2 = sub_1A2C94000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static AlertPresentationOptions._forceBridgeFromObjectiveC(_:result:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C944B4();
  sub_1A2D07E64();

  result = sub_1A2C55840(v6, v8);
  if (v12)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 2) = v13 != 0;
  *a2 = v10 | v11;
  return result;
}

uint64_t sub_1A2CC4F60()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = sub_1A2D07EB4();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_1A2D07EA4();
  sub_1A2C93DD8();
  v7 = sub_1A2D07E94();
  v9 = v8;
  v10 = sub_1A2D07F24();
  sub_1A2C55840(v7, v9);

  return v10;
}

uint64_t sub_1A2CC5034(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C944B4();
  sub_1A2D07E64();

  result = sub_1A2C55840(v6, v8);
  if (v12)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  *(a2 + 2) = v13 != 0;
  *a2 = v10 | v11;
  return result;
}

uint64_t sub_1A2CC5148@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v5 = sub_1A2D07E84();
    v6 = *(v5 + 48);
    v7 = *(v5 + 52);
    swift_allocObject();
    sub_1A2D07E74();
    v8 = sub_1A2D07F44();
    v10 = v9;
    sub_1A2C944B4();
    sub_1A2D07E64();

    result = sub_1A2C55840(v8, v10);
    *a2 = v12;
    a2[1] = v13;
    a2[2] = v14;
  }

  else
  {
    __break(1u);
    sub_1A2C55840(v3, v2);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1A2CC5244()
{
  v0 = sub_1A2D08014();
  __swift_allocate_value_buffer(v0, qword_1ED708838);
  __swift_project_value_buffer(v0, qword_1ED708838);
  return sub_1A2D08004();
}

uint64_t static AlertServiceDefinition.domain.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708830 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708838);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CC5354@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED708830 != -1)
  {
    swift_once();
  }

  v2 = sub_1A2D08014();
  v3 = __swift_project_value_buffer(v2, qword_1ED708838);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1A2CC5418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E6F6974706FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1A2D08B34() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7075727265746E69 && a2 == 0xEC000000676E6974 || (sub_1A2D08B34() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A2D1A470 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A2D08B34();

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

BOOL _s11ActivityKit24AlertPresentationOptionsV34_conditionallyBridgeFromObjectiveC_6resultSbSo6NSDataC_ACSgztFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A2D07E84();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1A2D07E74();
  v6 = sub_1A2D07F44();
  v8 = v7;
  sub_1A2C944B4();
  sub_1A2D07E64();

  sub_1A2C55840(v6, v8);
  if (v15)
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 | v14;
  if (v16)
  {
    v11 = 0x10000;
  }

  else
  {
    v11 = 0;
  }

  v12 = v10 | v11;
  *a2 = v12;
  *(a2 + 2) = BYTE2(v12);
  return v12 != 2;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AlertPresentationOptions(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for AlertPresentationOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_1A2CC57A4()
{
  result = qword_1EB0A0E20;
  if (!qword_1EB0A0E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB0A0E20);
  }

  return result;
}

unint64_t sub_1A2CC57FC()
{
  result = qword_1EB09EF30;
  if (!qword_1EB09EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF30);
  }

  return result;
}

unint64_t sub_1A2CC5854()
{
  result = qword_1EB09EF38;
  if (!qword_1EB09EF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB09EF38);
  }

  return result;
}

uint64_t sub_1A2CC58A8()
{
  v0 = sub_1A2D08094();
  __swift_allocate_value_buffer(v0, qword_1EB09F570);
  __swift_project_value_buffer(v0, qword_1EB09F570);
  return sub_1A2D08084();
}

uint64_t static Activity.request(attributes:contentState:pushType:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v32 = a2;
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v29 - v7;
  v33 = v3;
  v9 = *(v3 + 80);
  v8 = *(v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v29 - v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = AssociatedConformanceWitness;
  v16 = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v35 = AssociatedTypeWitness;
  v36 = AssociatedConformanceWitness;
  v37 = v16;
  v38 = v17;
  v30 = type metadata accessor for ActivityContent();
  v18 = *(v30 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v30);
  v22 = &v29 - v21;
  v24 = *a3;
  v23 = a3[1];
  (*(v11 + 16))(v14, v32, AssociatedTypeWitness, v20);
  v25 = sub_1A2D07F94();
  v26 = v31;
  (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  ActivityContent.init(state:staleDate:relevanceScore:)(v14, v26, AssociatedTypeWitness, v22, 0.0);
  v35 = v24;
  v36 = v23;
  v27 = static Activity.request(attributes:content:pushType:)(v34, v22, &v35);
  (*(v18 + 8))(v22, v30);
  return v27;
}

uint64_t static Activity.request(attributes:content:pushType:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[1];
  v4 = v3;
  if (v3)
  {
    if (v3 == 1)
    {
      v5 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v4 = *a3;
  }

  v6 = a1;
  v7 = a2;
  v8 = a3[1];

  v5 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = *(v5 + 2);
  v9 = *(v5 + 3);
  if (v10 >= v9 >> 1)
  {
    v5 = sub_1A2CB2C90((v9 > 1), v10 + 1, 1, v5);
  }

  *(v5 + 2) = v10 + 1;
  v11 = &v5[40 * v10];
  *(v11 + 4) = v4;
  *(v11 + 5) = v3;
  *(v11 + 3) = xmmword_1A2D0EBF0;
  v11[64] = 0;
  a2 = v7;
  a1 = v6;
LABEL_8:
  *&v16 = &unk_1F15791C8;
  DWORD2(v16) = 65793;
  WORD6(v16) = 0;
  BYTE14(v16) = 3;
  v17 = 0;
  v12 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v16, 0, 1uLL, 0, v5, 0, 0, 0);
  v14 = v16;
  v15 = v17;
  sub_1A2C69EAC(&v14);

  return v12;
}

uint64_t static Activity.request(attributes:content:pushType:isMomentary:)(void *a1, uint64_t a2, uint64_t *a3, char a4)
{
  v6 = a3[1];
  v7 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v7 = *a3;
  }

  v20 = v4;
  v9 = a1;
  v10 = a2;

  v8 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1A2CB2C90((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = &v8[40 * v12];
  *(v13 + 4) = v7;
  *(v13 + 5) = v6;
  *(v13 + 3) = xmmword_1A2D0EBF0;
  v13[64] = 0;
  a2 = v10;
  a1 = v9;
LABEL_8:
  *&v18 = &unk_1F15791C8;
  DWORD2(v18) = 65793;
  WORD6(v18) = 0;
  BYTE14(v18) = 3;
  v19 = 0;
  v14 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v18, 0, 1uLL, 0, v8, 0, 0, a4 & 1);
  v16 = v18;
  v17 = v19;
  sub_1A2C69EAC(&v16);

  return v14;
}

uint64_t static Activity.request(attributes:content:pushType:style:)(void *a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v6 = a3[1];
  v7 = *a4;
  v8 = v6;
  if (v6)
  {
    if (v6 == 1)
    {
      v9 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v8 = *a3;
  }

  v22 = v4;
  v10 = a1;
  v11 = a2;

  v9 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = sub_1A2CB2C90((v12 > 1), v13 + 1, 1, v9);
  }

  *(v9 + 2) = v13 + 1;
  v14 = &v9[40 * v13];
  *(v14 + 4) = v8;
  *(v14 + 5) = v6;
  *(v14 + 3) = xmmword_1A2D0EBF0;
  v14[64] = 0;
  a2 = v11;
  a1 = v10;
LABEL_8:
  *&v20 = &unk_1F15791C8;
  DWORD2(v20) = 65793;
  WORD6(v20) = 0;
  BYTE14(v20) = 3;
  v21 = 0;
  if (v7)
  {
    v15 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v20, 0, 1uLL, 0, v9, 0, 0, 1u);
  }

  else
  {
    v15 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(a1, a2, &v20, 0, 1uLL, 0, v9, 0, 0, 0);
  }

  v18 = v20;
  v19 = v21;
  if (v5)
  {
    sub_1A2C69EAC(&v18);
  }

  else
  {
    v17 = v15;
    sub_1A2C69EAC(&v18);

    return v17;
  }
}

NSObject *static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, uint64_t a13, uint64_t a14)
{
  v79 = a8;
  v80 = a7;
  v75 = a6;
  v77 = a5;
  v76 = a4;
  v72 = a2;
  v69 = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v62 = &v61 - v18;
  v74 = sub_1A2D07F94();
  v73 = *(v74 - 8);
  v19 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v14 + 80);
  v21 = *(v14 + 88);
  v82 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  *&v86 = AssociatedTypeWitness;
  *(&v86 + 1) = AssociatedConformanceWitness;
  v68 = AssociatedConformanceWitness;
  v71 = v25;
  v87 = v25;
  v88 = v26;
  v70 = v26;
  v27 = type metadata accessor for ActivityContent();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v91 = &v61 - v30;
  v31 = *(v22 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ActivityRequest();
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v39 = (&v61 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = *a3;
  v90 = *(a3 + 16);
  if (*(v89 + 16))
  {
    v67 = a12;
    v63 = a11;
    v65 = a10;
    v66 = a9;
    v40 = *(v31 + 16);
    v64 = v35;
    v40(v35, v69, v22);
    ActivityAttributesType.init<A>(from:)(v85);
    v84[0] = v85[0];
    v84[1] = v85[1];
    (*(v28 + 16))(v91, v72, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v42 = v76;
    v43 = v77;
    *(inited + 40) = v76;
    *(inited + 48) = v43;
    *(inited + 56) = v75 & 1;
    sub_1A2C66A94(v42);
    v44 = sub_1A2C66AAC(inited);
    swift_setDeallocating();
    sub_1A2C54E38(inited + 32, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v45 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v86 = v89;
    v87 = v90;
    v46 = v78;
    (*(v73 + 16))(v78, a13, v74);
    sub_1A2C66F58(&v89, v83);
    v47 = *(v21 + 8);
    v48 = *(v21 + 16);
    v49 = v80;

    v60 = v47;
    v50 = v81;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v64, v84, v91, v44, v45, &v86, v49, v79 & 1, v39, v66 & 1, v65 & 1, v63 & 1, 0, 0, v67, v46, 0, 0, v22, AssociatedTypeWitness, v60, v48, v68, v71, v70);
    v51 = v50;
    if (v50)
    {
      sub_1A2CC6E68(v50);
      swift_willThrow();
    }

    else
    {
      v56 = a14;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
        v56 = a14;
      }

      v57 = v62;
      sub_1A2C7FF28(v56, v62, type metadata accessor for AlertConfiguration);
      v58 = type metadata accessor for AlertConfiguration();
      (*(*(v58 - 8) + 56))(v57, 0, 1, v58);
      v51 = sub_1A2C67380(v39, v57, v22, v21);
      sub_1A2C54E38(v57, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v39, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v52 = sub_1A2D08094();
    __swift_project_value_buffer(v52, qword_1EB09F570);
    v51 = sub_1A2D08074();
    v53 = sub_1A2D08684();
    if (os_log_type_enabled(v51, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1A2C51000, v51, v53, "Cannot specify presentationOptions with no visual destinations", v54, 2u);
      MEMORY[0x1A58E5180](v54, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v55 = xmmword_1A2D0EBF0;
    *(v55 + 16) = 0u;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0u;
    *(v55 + 64) = 0;
    swift_willThrow();
  }

  return v51;
}

uint64_t sub_1A2CC6908(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t a5, uint64_t a6)
{
  v8 = a3[1];
  v9 = *a4;
  v10 = v8;
  if (v8)
  {
    if (v8 == 1)
    {
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_8;
    }

    v10 = *a3;
  }

  v20 = a5;
  v21 = a6;
  v26 = v6;
  v12 = a1;
  v13 = a2;

  v11 = sub_1A2CB2C90(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v15 = *(v11 + 2);
  v14 = *(v11 + 3);
  if (v15 >= v14 >> 1)
  {
    v11 = sub_1A2CB2C90((v14 > 1), v15 + 1, 1, v11);
  }

  *(v11 + 2) = v15 + 1;
  v16 = &v11[40 * v15];
  *(v16 + 4) = v10;
  *(v16 + 5) = v8;
  *(v16 + 3) = xmmword_1A2D0EBF0;
  v16[64] = 0;
  a2 = v13;
  a1 = v12;
  a5 = v20;
  a6 = v21;
LABEL_8:
  *&v24 = &unk_1F15791F0;
  DWORD2(v24) = 65793;
  WORD6(v24) = 0;
  BYTE14(v24) = 3;
  v25 = 0;
  if (v9)
  {
    v17 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(a1, a2, &v24, 0, 1, 0, v11, 0, 0, 1u, 0, 2u, a6, a5);
  }

  else
  {
    v17 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(a1, a2, &v24, 0, 1, 0, v11, 0, 0, 0, 0, 2u, a6, a5);
  }

  v22 = v24;
  v23 = v25;
  if (v7)
  {
    sub_1A2C69EAC(&v22);
  }

  else
  {
    v19 = v17;
    sub_1A2C69EAC(&v22);

    return v19;
  }
}

uint64_t static Activity.request(attributes:contentState:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:)(void *a1, uint64_t a2, __int128 *a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9)
{
  v42 = a8;
  v40 = a5;
  v41 = a7;
  v38 = a6;
  v39 = a4;
  v33 = a3;
  v34 = a2;
  v37 = a1;
  v36 = a9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v31 - v12;
  v35 = v9;
  v15 = *(v9 + 80);
  v14 = *(v9 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v31 - v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v43 = AssociatedTypeWitness;
  v44 = AssociatedConformanceWitness;
  v45 = v22;
  v46 = v23;
  v32 = type metadata accessor for ActivityContent();
  v24 = *(v32 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v27 = &v31 - v26;
  v47 = *v33;
  v48 = *(v33 + 2);
  (*(v17 + 16))(v20, v34, AssociatedTypeWitness);
  v28 = sub_1A2D07F94();
  (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  ActivityContent.init(state:staleDate:relevanceScore:)(v20, v13, AssociatedTypeWitness, v27, 0.0);
  v29 = static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:)(v37, v27, &v47, v39, v40, v38 & 1, v41, v42, v36, 0);
  (*(v24 + 8))(v27, v32);
  return v29;
}

void sub_1A2CC6E68(void *a1)
{
  v23 = a1;
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0360, &unk_1A2D0AA80);
  if (swift_dynamicCast())
  {
    sub_1A2CD149C();
    swift_allocError();
    *v3 = v22;
  }

  else
  {
    v21 = sub_1A2D07EC4();
    v4 = [v21 underlyingErrors];
    v5 = sub_1A2D08554();

    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = 0;
      while (1)
      {
        if (v7 >= *(v5 + 16))
        {
          __break(1u);
          return;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v8;
        v10 = sub_1A2D07EC4();
        v11 = [v10 domain];

        v12 = sub_1A2D08444();
        v14 = v13;

        if (v12 == 0xD00000000000002BLL && 0x80000001A2D1A530 == v14)
        {
          break;
        }

        v16 = sub_1A2D08B34();

        if (v16)
        {
          goto LABEL_14;
        }

        ++v7;

        if (v6 == v7)
        {
          goto LABEL_12;
        }
      }

LABEL_14:

      v23 = v8;
      sub_1A2C569A0(0, &qword_1EB0A1170, 0x1E696ABC0);
      if ((swift_dynamicCast() & 1) == 0)
      {

        goto LABEL_18;
      }

      v17 = v22;
      sub_1A2CE00C8([v17 code], &v23);
      v18 = v23;
      if (v23 == 12)
      {

        goto LABEL_18;
      }

      sub_1A2CD149C();
      swift_allocError();
      *v20 = v18;
    }

    else
    {
LABEL_12:

LABEL_18:
      v19 = a1;
    }
  }
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:protectionClass:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11)
{
  v78 = a8;
  v79 = a7;
  LODWORD(v74) = a6;
  v76 = a5;
  v75 = a4;
  v73 = a2;
  v71 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v65 = &v64 - v15;
  v16 = sub_1A2D07F94();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v11 + 80);
  v19 = *(v11 + 88);
  v81 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v85 = AssociatedTypeWitness;
  *(&v85 + 1) = AssociatedConformanceWitness;
  v70 = AssociatedConformanceWitness;
  v86 = v23;
  v87 = v24;
  v72 = v24;
  v25 = type metadata accessor for ActivityContent();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v90 = &v64 - v28;
  v29 = *(v20 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ActivityRequest();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = (&v64 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v88 = *a3;
  v89 = *(a3 + 16);
  if (*(v88 + 16))
  {
    v69 = a11;
    v66 = a10;
    v67 = a9;
    v38 = *(v29 + 16);
    v68 = v33;
    v39 = v71;
    v71 = v37;
    v38(v33, v39, v20);
    ActivityAttributesType.init<A>(from:)(v84);
    v83[0] = v84[0];
    v83[1] = v84[1];
    (*(v26 + 16))(v90, v73, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    v41 = v19;
    v42 = v70;
    v43 = inited;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v44 = inited + 32;
    v45 = v75;
    v46 = v76;
    *(v43 + 40) = v75;
    *(v43 + 48) = v46;
    *(v43 + 56) = v74 & 1;
    sub_1A2C66A94(v45);
    v76 = sub_1A2C66AAC(v43);
    swift_setDeallocating();
    sub_1A2C54E38(v44, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v75 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v85 = v88;
    v86 = v89;
    sub_1A2C66F58(&v88, v82);
    v74 = v41;
    v47 = *(v41 + 8);
    v48 = *(v41 + 16);
    v49 = v79;

    v50 = v77;
    v51 = v72;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v20, AssociatedTypeWitness, v47, v48, v42, v23, v72);
    v63 = v23;
    v52 = v71;
    v53 = v80;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v68, v83, v90, v76, v75, &v85, v49, v78 & 1, v71, v67 & 1, v66 & 1, 0, 0, 0, v69, v50, 0, 0, v20, AssociatedTypeWitness, v47, v48, v42, v63, v51);
    if (v53)
    {
      v54 = v81;
      sub_1A2CC6E68(v53);
      swift_willThrow();
    }

    else
    {
      v59 = v74;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v60 = type metadata accessor for AlertConfiguration();
      v61 = v65;
      (*(*(v60 - 8) + 56))(v65, 1, 1, v60);
      v54 = sub_1A2C67380(v52, v61, v20, v59);
      sub_1A2C54E38(v61, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v52, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v55 = sub_1A2D08094();
    __swift_project_value_buffer(v55, qword_1EB09F570);
    v56 = sub_1A2D08074();
    v54 = sub_1A2D08684();
    if (os_log_type_enabled(v56, v54))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1A2C51000, v56, v54, "Cannot specify presentationOptions with no visual destinations", v57, 2u);
      MEMORY[0x1A58E5180](v57, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v58 = xmmword_1A2D0EBF0;
    *(v58 + 16) = 0u;
    *(v58 + 32) = 0u;
    *(v58 + 48) = 0u;
    *(v58 + 64) = 0;
    swift_willThrow();
  }

  return v54;
}

uint64_t static Activity.request(attributes:content:presentationOptions:sceneTargets:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  v75 = a5;
  v73 = a8;
  v74 = a7;
  v72 = a6;
  v87 = a4;
  v71 = a2;
  v70 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v62 = &v61 - v14;
  v15 = sub_1A2D07F94();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v10 + 80);
  v18 = *(v10 + 88);
  v77 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22 = swift_getAssociatedConformanceWitness();
  v78 = v18;
  v23 = swift_getAssociatedConformanceWitness();
  *&v82 = AssociatedTypeWitness;
  *(&v82 + 1) = AssociatedConformanceWitness;
  v67 = AssociatedConformanceWitness;
  v68 = v22;
  v83 = v22;
  v84 = v23;
  v24 = v23;
  v25 = type metadata accessor for ActivityContent();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v61 - v28;
  v30 = *(v19 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ActivityRequest();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = (&v61 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = *a3;
  v86 = *(a3 + 16);
  if (*(v85 + 16))
  {
    v66 = a10;
    v64 = a9;
    v39 = *(v30 + 16);
    v65 = v34;
    v40 = v70;
    v70 = v38;
    v39(v34, v40, v19);
    v41 = v78;
    ActivityAttributesType.init<A>(from:)(v81);
    v80[0] = v81[0];
    v80[1] = v81[1];
    v42 = *(v26 + 16);
    v63 = v29;
    v42(v29, v71, v25);

    v71 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v82 = v85;
    v83 = v86;
    sub_1A2C66F58(&v85, v79);
    v44 = *(v41 + 8);
    v43 = *(v41 + 16);
    v45 = v75;

    v46 = v69;
    v47 = v67;
    v48 = v68;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v19, AssociatedTypeWitness, v44, v43, v67, v68, v24);
    v60 = v48;
    v49 = v70;
    v50 = v76;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v65, v80, v63, v87, v71, &v82, v45, v72 & 1, v70, v74 & 1, v73 & 1, v64 & 1, 0, 0, v66, v46, 0, 0, v19, AssociatedTypeWitness, v44, v43, v47, v60, v24);
    if (v50)
    {
      v51 = v77;
      sub_1A2CC6E68(v50);
      swift_willThrow();
    }

    else
    {
      v56 = v78;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for AlertConfiguration();
      v58 = v62;
      (*(*(v57 - 8) + 56))(v62, 1, 1, v57);
      v51 = sub_1A2C67380(v49, v58, v19, v56);
      sub_1A2C54E38(v58, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v49, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v52 = sub_1A2D08094();
    __swift_project_value_buffer(v52, qword_1EB09F570);
    v53 = sub_1A2D08074();
    v51 = sub_1A2D08684();
    if (os_log_type_enabled(v53, v51))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_1A2C51000, v53, v51, "Cannot specify presentationOptions with no visual destinations", v54, 2u);
      MEMORY[0x1A58E5180](v54, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v55 = xmmword_1A2D0EBF0;
    *(v55 + 16) = 0u;
    *(v55 + 32) = 0u;
    *(v55 + 48) = 0u;
    *(v55 + 64) = 0;
    swift_willThrow();
  }

  return v51;
}

NSObject *static Activity.request(attributes:content:presentationOptions:sceneTargets:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:startDate:alertConfiguration:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8, unsigned __int8 a9, unsigned __int8 a10, uint64_t a11, uint64_t a12)
{
  v70 = a5;
  v66 = a8;
  v67 = a7;
  v68 = a6;
  v69 = a4;
  v64 = a2;
  v61 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v55 = &v54 - v16;
  v63 = sub_1A2D07F94();
  v62 = *(v63 - 8);
  v17 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v12 + 80);
  v19 = *(v12 + 88);
  v72 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v76 = AssociatedTypeWitness;
  *(&v76 + 1) = AssociatedConformanceWitness;
  v60 = AssociatedConformanceWitness;
  v59 = v23;
  v77 = v23;
  v78 = v24;
  v58 = v24;
  v25 = type metadata accessor for ActivityContent();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v81 = &v54 - v28;
  v29 = *(v20 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ActivityRequest();
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = (&v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v79 = *a3;
  v80 = *(a3 + 16);
  if (*(v79 + 16))
  {
    v57 = a10;
    v56 = a9;
    (*(v29 + 16))(v33, v61, v20);
    ActivityAttributesType.init<A>(from:)(v75);
    v74[0] = v75[0];
    v74[1] = v75[1];
    (*(v26 + 16))(v81, v64, v25);
    v38 = v69;

    v64 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v76 = v79;
    v77 = v80;
    v39 = v65;
    (*(v62 + 16))(v65, a11, v63);
    sub_1A2C66F58(&v79, v73);
    v40 = *(v19 + 8);
    v41 = *(v19 + 16);
    v42 = v70;

    v53 = v40;
    v43 = v71;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v33, v74, v81, v38, v64, &v76, v42, v68 & 1, v37, v67 & 1, v66 & 1, v56 & 1, 0, 0, v57, v39, 0, 0, v20, AssociatedTypeWitness, v53, v41, v60, v59, v58);
    v44 = v43;
    if (v43)
    {
      sub_1A2CC6E68(v43);
      swift_willThrow();
    }

    else
    {
      v49 = a12;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
        v49 = a12;
      }

      v50 = v55;
      sub_1A2C7FF28(v49, v55, type metadata accessor for AlertConfiguration);
      v51 = type metadata accessor for AlertConfiguration();
      (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
      v44 = sub_1A2C67380(v37, v50, v20, v19);
      sub_1A2C54E38(v50, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v37, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v45 = sub_1A2D08094();
    __swift_project_value_buffer(v45, qword_1EB09F570);
    v44 = sub_1A2D08074();
    v46 = sub_1A2D08684();
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_1A2C51000, v44, v46, "Cannot specify presentationOptions with no visual destinations", v47, 2u);
      MEMORY[0x1A58E5180](v47, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v48 = xmmword_1A2D0EBF0;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0u;
    *(v48 + 48) = 0u;
    *(v48 + 64) = 0;
    swift_willThrow();
  }

  return v44;
}

uint64_t static Activity.request(attributes:content:presentationOptions:platterTarget:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:protectionClass:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, int a6, uint64_t a7, int a8, unsigned __int8 a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12)
{
  v79 = a8;
  v80 = a7;
  LODWORD(v75) = a6;
  v77 = a5;
  v76 = a4;
  v74 = a2;
  v71 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v65 - v16;
  v17 = sub_1A2D07F94();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v78 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v12 + 80);
  v20 = *(v12 + 88);
  v82 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = swift_getAssociatedConformanceWitness();
  *&v86 = AssociatedTypeWitness;
  *(&v86 + 1) = AssociatedConformanceWitness;
  v72 = AssociatedConformanceWitness;
  v87 = v24;
  v88 = v25;
  v73 = v25;
  v26 = type metadata accessor for ActivityContent();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v65 - v29;
  v30 = *(v21 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ActivityRequest();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = (&v65 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = *a3;
  v90 = *(a3 + 16);
  if (*(v89 + 16))
  {
    v70 = a12;
    v66 = a11;
    v67 = a10;
    v68 = a9;
    v39 = *(v30 + 16);
    v69 = v34;
    v40 = v71;
    v71 = v38;
    v39(v34, v40, v21);
    ActivityAttributesType.init<A>(from:)(v85);
    v84[0] = v85[0];
    v84[1] = v85[1];
    (*(v27 + 16))(v91, v74, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E30, &qword_1A2D0EC20);
    inited = swift_initStackObject();
    v42 = v20;
    v43 = v72;
    v44 = inited;
    *(inited + 16) = xmmword_1A2D0AD20;
    *(inited + 32) = 0;
    v45 = inited + 32;
    v46 = v76;
    v47 = v77;
    *(v44 + 40) = v76;
    *(v44 + 48) = v47;
    *(v44 + 56) = v75 & 1;
    sub_1A2C66A94(v46);
    v77 = sub_1A2C66AAC(v44);
    swift_setDeallocating();
    sub_1A2C54E38(v45, &qword_1EB0A0E38, &qword_1A2D0EC28);
    v76 = sub_1A2C66AAC(MEMORY[0x1E69E7CC0]);
    v86 = v89;
    v87 = v90;
    sub_1A2C66F58(&v89, v83);
    v75 = v42;
    v48 = *(v42 + 8);
    v49 = *(v42 + 16);
    v50 = v80;

    v51 = v78;
    v52 = v73;
    default argument 13 of ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v21, AssociatedTypeWitness, v48, v49, v43, v24, v73);
    v64 = v24;
    v53 = v71;
    v54 = v81;
    ActivityRequest.init<A, B>(attributes:attributesType:initialContent:sceneTargets:alertSceneTargets:presentationOptions:contentSourceRequests:isEphemeral:isUnbounded:isMomentary:isImportant:identifier:protectionClass:startDate:assetProviderBundleId:)(v69, v84, v91, v77, v76, &v86, v50, v79 & 1, v71, v68 & 1, v67 & 1, v66 & 1, 0, 0, v70, v51, 0, 0, v21, AssociatedTypeWitness, v48, v49, v43, v64, v52);
    if (v54)
    {
      v55 = v82;
      sub_1A2CC6E68(v54);
      swift_willThrow();
    }

    else
    {
      v60 = v75;
      if (qword_1ED709CF0 != -1)
      {
        swift_once();
      }

      v61 = type metadata accessor for AlertConfiguration();
      v62 = v65;
      (*(*(v61 - 8) + 56))(v65, 1, 1, v61);
      v55 = sub_1A2C67380(v53, v62, v21, v60);
      sub_1A2C54E38(v62, &qword_1EB0A04D0, &unk_1A2D15640);
      sub_1A2C69F84(v53, type metadata accessor for ActivityRequest);
    }
  }

  else
  {
    if (qword_1EB09F5F8 != -1)
    {
      swift_once();
    }

    v56 = sub_1A2D08094();
    __swift_project_value_buffer(v56, qword_1EB09F570);
    v57 = sub_1A2D08074();
    v55 = sub_1A2D08684();
    if (os_log_type_enabled(v57, v55))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_1A2C51000, v57, v55, "Cannot specify presentationOptions with no visual destinations", v58, 2u);
      MEMORY[0x1A58E5180](v58, -1, -1);
    }

    sub_1A2CA1590();
    swift_allocError();
    *v59 = xmmword_1A2D0EBF0;
    *(v59 + 16) = 0u;
    *(v59 + 32) = 0u;
    *(v59 + 48) = 0u;
    *(v59 + 64) = 0;
    swift_willThrow();
  }

  return v55;
}

uint64_t sub_1A2CC8ED8()
{
  type metadata accessor for Activity();

  return sub_1A2D08044();
}

uint64_t Activity.id.getter()
{
  v0 = sub_1A2CCF17C();

  return v0;
}

uint64_t sub_1A2CC8F5C()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E40, &unk_1A2D0EC30);
  sub_1A2C56A78(&unk_1EB09EEA0, &qword_1EB0A0E40, &unk_1A2D0EC30);
  sub_1A2D081F4();
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9008()
{
  v1 = *(v0 + 40);

  sub_1A2D08184();
}

uint64_t sub_1A2CC9050()
{
  v4 = v0[5];
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  sub_1A2D08194();
  swift_getWitnessTable();
  sub_1A2D081F4();
  swift_getAssociatedTypeWitness();
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9164()
{
  swift_getAssociatedTypeWitness();

  return sub_1A2D08044();
}

uint64_t sub_1A2CC91C8()
{
  v4 = v0[6];
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  sub_1A2D08194();
  swift_getWitnessTable();
  sub_1A2D081F4();
  return sub_1A2CC9330();
}

uint64_t sub_1A2CC9330()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ActivityContent();
  return sub_1A2D08044();
}

uint64_t sub_1A2CC9424()
{
  v1 = *(v0 + *(*v0 + 144));
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v1 + 80);

  v5 = sub_1A2CA7A1C(v2, v3);

  return v5;
}

uint64_t sub_1A2CC9498()
{
  v1 = *(v0 + *(*v0 + 144));
  v3 = v0[2];
  v2 = v0[3];
  v4 = *(*(*(v1 + 80) + 16) + 16);

  os_unfair_lock_lock(v4);
  sub_1A2CA7BCC(v3, v2);
  os_unfair_lock_unlock(v4);

  return sub_1A2D08044();
}

uint64_t static Activity.pushToStartTokenUpdates.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  sub_1A2CB06C0();

  return sub_1A2D08044();
}

uint64_t static Activity.pushToStartToken.getter()
{
  if (qword_1ED709CF0 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ED709CF8 + 10);
  v1 = *(v0[2] + 16);

  os_unfair_lock_lock(v1);
  v2 = v0[10];
  sub_1A2CB0824(v2, v0[11]);
  os_unfair_lock_unlock(v1);

  return v2;
}

uint64_t sub_1A2CC9750(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = *(v3 + 88);
  v7 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[10] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v2[11] = v9;
  v10 = *(v9 + 64) + 15;
  v2[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2[13] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v2[14] = v12;
  v13 = swift_getAssociatedConformanceWitness();
  v2[15] = v13;
  v2[2] = AssociatedTypeWitness;
  v2[3] = AssociatedConformanceWitness;
  v2[4] = v12;
  v2[5] = v13;
  v14 = type metadata accessor for ActivityContent();
  v2[16] = v14;
  v15 = *(v14 - 8);
  v2[17] = v15;
  v16 = *(v15 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CC99B4, 0, 0);
}

uint64_t sub_1A2CC99B4()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
  v7 = v0[8];
  v6 = v0[9];
  (*(v0[11] + 16))(v4, v0[6], v5);
  v8 = sub_1A2D07F94();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  ActivityContent.init(state:staleDate:relevanceScore:)(v4, v6, v5, v1, 0.0);
  v9 = type metadata accessor for AlertConfiguration();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_1A2CC9B38;
  v11 = v0[18];
  v13 = v0[7];
  v12 = v0[8];

  return sub_1A2C83E7C(v11, v12);
}

uint64_t sub_1A2CC9B38()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 64);
  v4 = *v0;

  sub_1A2C54E38(v2, &qword_1EB0A04D0, &unk_1A2D15640);

  return MEMORY[0x1EEE6DFA0](sub_1A2CC9C60, 0, 0);
}

uint64_t sub_1A2CC9C60()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A2CC9D04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A04D0, &unk_1A2D15640) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CC9DA0, 0, 0);
}

uint64_t sub_1A2CC9DA0()
{
  v1 = v0[4];
  v2 = type metadata accessor for AlertConfiguration();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1A2CC9E7C;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_1A2C83E7C(v6, v4);
}

uint64_t sub_1A2CC9E7C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v5 = *v0;

  sub_1A2C54E38(v2, &qword_1EB0A04D0, &unk_1A2D15640);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1A2CC9FA4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(v4 + 88);
  v7 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v3[11] = v9;
  v10 = *(v9 + 64) + 15;
  v3[12] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[13] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v3[14] = v12;
  v13 = swift_getAssociatedConformanceWitness();
  v3[15] = v13;
  v3[2] = AssociatedTypeWitness;
  v3[3] = AssociatedConformanceWitness;
  v3[4] = v12;
  v3[5] = v13;
  v14 = type metadata accessor for ActivityContent();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA1D4, 0, 0);
}

uint64_t sub_1A2CCA1D4()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[9];
  (*(v0[11] + 16))(v4, v0[6], v5);
  v7 = sub_1A2D07F94();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  ActivityContent.init(state:staleDate:relevanceScore:)(v4, v6, v5, v1, 0.0);
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_1A2CCA318;
  v9 = v0[18];
  v10 = v0[7];
  v11 = v0[8];

  return sub_1A2C83E7C(v9, v10);
}

uint64_t sub_1A2CCA318()
{
  v1 = *(*v0 + 152);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA414, 0, 0);
}

uint64_t sub_1A2CCA414()
{
  v1 = v0[12];
  v2 = v0[9];
  (*(v0[17] + 8))(v0[18], v0[16]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A2CCA4B0(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB0A0E28, &unk_1A2D0EC10) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = *(v4 + 88);
  v7 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v9 = sub_1A2D087E4();
  v3[11] = v9;
  v10 = *(v9 - 8);
  v3[12] = v10;
  v11 = *(v10 + 64) + 15;
  v3[13] = swift_task_alloc();
  v12 = *(AssociatedTypeWitness - 8);
  v3[14] = v12;
  v13 = *(v12 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3[17] = AssociatedConformanceWitness;
  v15 = swift_getAssociatedConformanceWitness();
  v3[18] = v15;
  v16 = swift_getAssociatedConformanceWitness();
  v3[19] = v16;
  v3[2] = AssociatedTypeWitness;
  v3[3] = AssociatedConformanceWitness;
  v3[4] = v15;
  v3[5] = v16;
  v3[20] = type metadata accessor for ActivityContent();
  v17 = sub_1A2D087E4();
  v3[21] = v17;
  v18 = *(v17 - 8);
  v3[22] = v18;
  v19 = *(v18 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCA75C, 0, 0);
}

uint64_t sub_1A2CCA75C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = v0[6];
  v7 = *(*(v0[20] - 8) + 56);
  v7(v0[23], 1, 1);
  (*(v4 + 16))(v1, v6, v3);
  if ((*(v2 + 48))(v1, 1, v5) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  else
  {
    v8 = v0[23];
    v25 = v7;
    v26 = v0[20];
    v23 = v0[18];
    v24 = v0[19];
    v9 = v0[16];
    v22 = v0[17];
    v10 = v0[14];
    v11 = v0[15];
    v12 = v0[13];
    v13 = v0[9];
    v14 = v0[10];
    (*(v0[22] + 8))(v8, v0[21]);
    v15 = *(v10 + 32);
    v15(v9, v12, v14);
    v15(v11, v9, v14);
    v16 = sub_1A2D07F94();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    ActivityContent.init(state:staleDate:relevanceScore:)(v11, v13, v14, v8, 0.0);
    v25(v8, 0, 1, v26);
  }

  v17 = swift_task_alloc();
  v0[24] = v17;
  *v17 = v0;
  v17[1] = sub_1A2CCA9A4;
  v18 = v0[23];
  v19 = v0[7];
  v20 = v0[8];

  return sub_1A2CCAB58(v18, v19);
}

uint64_t sub_1A2CCA9A4()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1A2CCAAA0, 0, 0);
}

uint64_t sub_1A2CCAAA0()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[9];
  (*(v0[22] + 8))(v0[23], v0[21]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A2CCAB58(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A2D07F94();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A2CCAC1C, 0, 0);
}

uint64_t sub_1A2CCAC1C()
{
  v1 = v0[7];
  _s11ActivityKit0A7RequestV14attributesType0D4Data20initialOpaqueContent12sceneTargets010alertSceneK019presentationOptions21contentSourceRequests11isEphemeral0S9Unbounded0S9Momentary0S9Important10identifier15protectionClass9startDate21assetProviderBundleIdAcA0a10AttributesE0V_10Foundation0F0VAA0haI0VSDyAA0a12PresentationO0V0A23PresentationDestinationOAA0M6TargetO0C0OGA6_A_SayAA0aiQ0OA4_OGS4bSSSgAA0a10ProtectionZ0OSgAU4DateVA11_tcfcfA12__0();
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1A2C8B248;
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_1A2CCACC0(v6, v4, v3);
}

uint64_t sub_1A2CCACC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1A2CCACE4, 0, 0);
}

uint64_t sub_1A2CCACE4()
{
  v1 = v0[5];
  sub_1A2C8F394(v0[2], v0[3], v0[4]);
  v2 = v0[1];

  return v2();
}