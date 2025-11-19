uint64_t sub_2411539DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410FAD78(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2411531F0(v16, a4 & 1, &qword_27E5307F8, &qword_2411674C8);
      v20 = *v5;
      v11 = sub_2410FAD78(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_241166428();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_241154C08(&qword_27E5307F8, &qword_2411674C8);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_241153B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2410FADF0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_24115220C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_2410FADF0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_241115980();
        sub_241166428();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_241154208();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_241153CE8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2410FAD78(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_241152F40(v16, a4 & 1, &qword_27E5307B0, &qword_241167498);
      v20 = *v5;
      v11 = sub_2410FAD78(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_241166428();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_241154A98(&qword_27E5307B0, &qword_241167498);
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_241153E84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2410FAD78(a2, a3);
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
      sub_24115436C();
      goto LABEL_7;
    }

    sub_24115247C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_2410FAD78(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_241166428();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for PendingAskStore.Metadata() - 8) + 72) * v12;

    return sub_241154DB0(a1, v20);
  }

LABEL_13:
  sub_241154170(v12, a2, a3, a1, v18);
}

uint64_t sub_241153FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2410FAD78(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_241152C74(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_2410FAD78(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_241166428();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_241154904();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t sub_241154170(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for PendingAskStore.Metadata();
  result = sub_2410FC768(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

void *sub_241154208()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307A8, &qword_241167490);
  v2 = *v0;
  v3 = sub_241166358();
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

void *sub_24115436C()
{
  v1 = v0;
  v2 = type metadata accessor for PendingAskStore.Metadata();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530690, &qword_241167450);
  v5 = *v0;
  v6 = sub_241166358();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_241139C34(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2410FC768(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

char *sub_24115459C()
{
  v1 = v0;
  v43 = sub_2411659F8();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_2411651A8();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530798, &qword_241167488);
  v6 = *v0;
  v7 = sub_241166358();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

void *sub_241154904()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530698, &qword_241167458);
  v2 = *v0;
  v3 = sub_241166358();
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

id sub_241154A98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_241166358();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

void *sub_241154C08(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_241166358();
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

uint64_t sub_241154D68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241154DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingAskStore.Metadata();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_241154E14(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_241165BD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v10, *MEMORY[0x277CEED80], v6);
  v11 = sub_241165BC8();
  v12 = *(v7 + 8);
  v12(v10, v6);
  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

  if (sub_241165368() != 0xD00000000000001DLL || 0x800000024116A040 != v13)
  {
    v15 = sub_2411663E8();

    v14 = 0;
    if (v15)
    {
      goto LABEL_7;
    }

LABEL_6:
    v14 = 1;
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  (*(v7 + 16))(v5, a1, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  v16 = type metadata accessor for AppExtensionProxy();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  v21 = sub_2410FB218(MEMORY[0x277D84F90]);
  v12(a1, v6);
  *(v19 + v20) = v21;
  *(v19 + 16) = v14;
  sub_2410FB22C(v5, v19 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
  return v19;
}

uint64_t sub_241155084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[33] = a3;
  v4[34] = a4;
  v4[31] = a1;
  v4[32] = a2;
  v5 = type metadata accessor for MessagesBackwardCompatibilityURLProvider();
  v4[35] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[36] = swift_task_alloc();
  v7 = sub_2411650D8();
  v4[37] = v7;
  v8 = *(v7 - 8);
  v4[38] = v8;
  v9 = *(v8 + 64) + 15;
  v4[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241155178, 0, 0);
}

uint64_t sub_241155178()
{
  v1 = v0[32];
  sub_2410FFE1C();
  sub_241100374((v0 + 22), (v0 + 26));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531188, &qword_2411697F0);
  if (swift_dynamicCast())
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[33];
    v0[40] = v0[30];
    *v3 = v4;
    v5 = *(v2 + 20);
    v6 = v4;
    sub_241165778();
    v7 = swift_task_alloc();
    v0[41] = v7;
    *v7 = v0;
    v7[1] = sub_24115530C;
    v8 = v0[39];
    v9 = v0[36];

    return sub_241106CDC(v8);
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 22);
    v12 = v0[39];
    v13 = v0[36];

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24115530C()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = v0;

  sub_241155C58(*(v2 + 288));
  if (v0)
  {
    v5 = sub_241155750;
  }

  else
  {
    v5 = sub_241155440;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241155440()
{
  v2 = v0[39];
  v1 = v0[40];
  v4 = v0[33];
  v3 = v0[34];
  v5 = swift_task_alloc();
  v0[43] = v5;
  v5[2] = v1;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v3;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  v0[44] = v7;
  *v7 = v0;
  v7[1] = sub_241155548;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000061, 0x800000024116C740, sub_241155CB4, v5, &type metadata for MessagesPayload);
}

uint64_t sub_241155548()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v7 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = *(v2 + 344);

    v5 = sub_2411557D0;
  }

  else
  {
    v5 = sub_241155664;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_241155664()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 312);
  v2 = *(v0 + 320);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  v7 = *(v0 + 248);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  v8 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v8;
  *(v0 + 160) = *(v0 + 80);
  v9 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v9;
  (*(v5 + 8))(v3, v4);
  *v7 = *(v0 + 96);
  v10 = *(v0 + 112);
  v11 = *(v0 + 128);
  v12 = *(v0 + 160);
  v7[3] = *(v0 + 144);
  v7[4] = v12;
  v7[1] = v10;
  v7[2] = v11;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_241155750()
{
  v1 = v0[40];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[36];

  v5 = v0[1];

  return v5();
}

uint64_t sub_2411557D0()
{
  v2 = v0[39];
  v1 = v0[40];
  v3 = v0[37];
  v4 = v0[38];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  (*(v4 + 8))(v2, v3);
  v5 = v0[45];
  v6 = v0[39];
  v7 = v0[36];

  v8 = v0[1];

  return v8();
}

uint64_t sub_241155874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a3;
  v4[20] = a4;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](sub_241155898, 0, 0);
}

uint64_t sub_241155898()
{
  v1 = v0[18];
  sub_2410FFE1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531188, &qword_2411697F0);
  if (swift_dynamicCast())
  {
    v3 = v0[19];
    v2 = v0[20];
    v4 = v0[16];
    v0[21] = v4;
    v5 = swift_task_alloc();
    v0[22] = v5;
    v5[2] = v3;
    v5[3] = v4;
    v5[4] = v2;
    v6 = *(MEMORY[0x277D85A40] + 4);
    v7 = swift_task_alloc();
    v0[23] = v7;
    *v7 = v0;
    v7[1] = sub_241155A50;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000060, 0x800000024116C800, sub_241155CF4, v5, &type metadata for MessagesPayload);
  }

  else
  {
    sub_241100310();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_241155A50()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_241155BEC;
  }

  else
  {
    v3 = sub_241155B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_241155B64()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 136);
  swift_unknownObjectRelease();
  *v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  v5 = *(v0 + 48);
  v6 = *(v0 + 80);
  v3[3] = *(v0 + 64);
  v3[4] = v6;
  v3[1] = v4;
  v3[2] = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_241155BEC()
{
  v1 = v0[21];
  v2 = v0[22];
  swift_unknownObjectRelease();

  v3 = v0[24];
  v4 = v0[1];

  return v4();
}

uint64_t sub_241155C58(uint64_t a1)
{
  v2 = type metadata accessor for MessagesBackwardCompatibilityURLProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_33Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241155DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E531190, &qword_2411697F8) - 8);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a4(a1, a2, a3, v9, v10, v11);
}

char *sub_241155EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311B8, &qword_241169848);
  v7 = swift_allocObject();
  v8 = sub_2410FC338(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311C0, &unk_241169850);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = (v9 + 24);
  *(v9 + 16) = v8;
  v11 = v9 + 16;
  *(v7 + 16) = v9;

  os_unfair_lock_lock(v10);
  sub_2411570BC(v11);
  v12 = qword_27E530B10;
  os_unfair_lock_unlock(v10);

  *&v3[v12] = v7;
  v13 = &v3[qword_27E530B00];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = objc_allocWithZone(MEMORY[0x277CCAE98]);

  v15 = sub_241165DA8();

  v16 = [v14 initWithMachServiceName_];

  *&v3[qword_27E530B08] = v16;
  v19.receiver = v3;
  v19.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  [*&v17[qword_27E530B08] setDelegate_];
  return v17;
}

uint64_t sub_241156068(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 >> 62)
  {
LABEL_27:
    result = sub_2411661F8();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v27 = v2;
      v28 = v2 & 0xC000000000000001;
      v25 = v2 & 0xFFFFFFFFFFFFFF8;
      v26 = v4;
      do
      {
        if (v28)
        {
          v9 = MEMORY[0x245CDBC20](v5, v2);
          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v5 >= *(v25 + 16))
          {
            goto LABEL_26;
          }

          v9 = *(v2 + 8 * v5 + 32);

          v10 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v29 = v10;
        sub_241165C18();
        sub_2411570D8();
        sub_2411662C8();

        v11 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v13 = v3;
        v14 = *v3;
        v30 = *v3;
        v2 = sub_2410FAD78(v31, v32);
        v16 = *(v14 + 16);
        v17 = (v15 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_24;
        }

        v3 = v15;
        if (*(v14 + 24) >= v18)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v15)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_241154BF4();
            if (v3)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_2411531DC(v18, isUniquelyReferenced_nonNull_native);
          v19 = sub_2410FAD78(v31, v32);
          if ((v3 & 1) != (v20 & 1))
          {
            result = sub_241166428();
            __break(1u);
            return result;
          }

          v2 = v19;
          if (v3)
          {
LABEL_4:

            v6 = v30;
            v7 = v30[7];
            v8 = *(v7 + 8 * v2);
            *(v7 + 8 * v2) = v9;

            goto LABEL_5;
          }
        }

        v6 = v30;
        v30[(v2 >> 6) + 8] |= 1 << v2;
        v21 = (v30[6] + 16 * v2);
        *v21 = v31;
        v21[1] = v32;
        *(v30[7] + 8 * v2) = v9;

        v22 = v30[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_25;
        }

        v30[2] = v24;
LABEL_5:
        v3 = v13;
        *v13 = v6;
        ++v5;
        v2 = v27;
      }

      while (v29 != v26);
    }
  }

  return result;
}

uint64_t Daemon.__allocating_init()()
{
  v0 = swift_allocObject();
  Daemon.init()();
  return v0;
}

uint64_t Daemon.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E5339F0);
  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2410F8000, v3, v4, "Initializing daemon", v5, 2u);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  v6 = sub_241165268();
  v7 = sub_241166068();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2410F8000, v6, v7, "Daemon entering sandbox", v8, 2u);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  if (_set_user_dir_suffix())
  {
    v9 = sub_241165268();
    v10 = sub_241166068();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2410F8000, v9, v10, "Creating IDS service and adding service delegate", v11, 2u);
      MEMORY[0x245CDC5E0](v11, -1, -1);
    }

    if (qword_27E530638 != -1)
    {
      swift_once();
    }

    *(v0 + 24) = qword_27E533BE8;

    v12 = sub_241165268();
    v13 = sub_241166068();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2410F8000, v12, v13, "Creating Biome listener", v14, 2u);
      MEMORY[0x245CDC5E0](v14, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311A8, &qword_241169800);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2411673F0;
    type metadata accessor for ScreenTimeRequestBiomeEventHandler();
    *(v15 + 32) = sub_2411042F4();
    *(v15 + 40) = &off_281A914D8;
    *(v1 + 32) = v15;
    return v1;
  }

  else
  {
    result = sub_241166328();
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Daemon.startup()()
{
  v1 = v0;
  v3 = qword_27E531198;
  v2 = off_27E5311A0;
  v4 = qword_27E530580;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E5339F0);

  v6 = sub_241165268();
  v7 = sub_241166068();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(v3, v2, &v28);
    _os_log_impl(&dword_2410F8000, v6, v7, "Starting daemon - %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  v10 = sub_241165268();
  v11 = sub_241166068();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2410F8000, v10, v11, "Creating and resuming client connection listener", v12, 2u);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5311B0, &qword_241169808));

  v14 = sub_241155EB0(v3, v2);
  if (qword_27E530588 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v5, qword_27E533A08);
  v15 = v14;
  v16 = sub_241165268();
  v17 = sub_241166068();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_241156B38(*&v15[qword_27E530B00], *&v15[qword_27E530B00 + 8], &v28);
    _os_log_impl(&dword_2410F8000, v16, v17, "Resuming XPC listener for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  [*&v15[qword_27E530B08] resume];
  v20 = *(v1 + 16);
  *(v1 + 16) = v15;
  v26 = v15;

  if (qword_27E530648 != -1)
  {
    swift_once();
  }

  [*(qword_27E533C00 + OBJC_IVAR____TtC11AskToDaemon23NotificationsController_userNotificationCenter) setWantsNotificationResponsesDelivered];

  v21 = sub_241165268();
  v22 = sub_241166068();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v28 = v24;
    *v23 = 136315138;
    v25 = sub_241156B38(v3, v2, &v28);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_2410F8000, v21, v22, "Daemon started - %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x245CDC5E0](v24, -1, -1);
    MEMORY[0x245CDC5E0](v23, -1, -1);
  }

  else
  {
  }
}

uint64_t Daemon.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_241156B38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_241156C04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_241100374(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_241156C04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_241156D10(a5, a6);
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
    result = sub_2411662F8();
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

uint64_t sub_241156D10(uint64_t a1, unint64_t a2)
{
  v4 = sub_241156D5C(a1, a2);
  sub_241156E8C(&unk_2852EA840);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_241156D5C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_241130428(v5, 0);
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

  result = sub_2411662F8();
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
        v10 = sub_241165E58();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_241130428(v10, 0);
        result = sub_2411662A8();
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

uint64_t sub_241156E8C(uint64_t result)
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

  result = sub_241156F78(result, v12, 1, v3);
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

char *sub_241156F78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D30, &unk_241168530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_2411570D8()
{
  result = qword_27E5311C8;
  if (!qword_27E5311C8)
  {
    sub_241165C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5311C8);
  }

  return result;
}

uint64_t sub_241157198()
{
  sub_2411003D8(v0 + 16);

  return v0;
}

uint64_t sub_2411571C8()
{
  sub_241157198();

  return swift_deallocClassInstance();
}

unint64_t sub_241157228()
{
  result = qword_27E5312B0;
  if (!qword_27E5312B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5312B8, qword_241169968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312B0);
  }

  return result;
}

uint64_t sub_24115728C()
{
  sub_2411664A8();
  sub_241165E28();
  return sub_2411664C8();
}

uint64_t sub_241157300()
{
  sub_2411664A8();
  sub_241165E28();
  return sub_2411664C8();
}

uint64_t sub_241157354@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_241166388();

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_2411573F8()
{
  result = qword_27E5312C0;
  if (!qword_27E5312C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312C0);
  }

  return result;
}

unint64_t sub_24115744C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530A08, &unk_241167910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  *(inited + 32) = 1868983913;
  *(inited + 40) = 0xE400000000000000;
  sub_241157F70();
  v1 = sub_241164F88();
  *(inited + 72) = MEMORY[0x277D837D0];
  if (!v2)
  {
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

uint64_t sub_241157548(uint64_t a1)
{
  v2 = sub_241157F1C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_241157584(uint64_t a1)
{
  v2 = sub_241157F1C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2411575C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530658, &unk_241167410) - 8) + 64) + 15;
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_241157660, 0, 0);
}

uint64_t sub_241157660()
{
  v1 = v0[21];
  v2 = sub_241165BD8();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = type metadata accessor for AppExtensionProxy();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  v6 = swift_allocObject();
  v0[22] = v6;
  v7 = OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_connectionCache;
  *(v6 + v7) = sub_2410FB218(MEMORY[0x277D84F90]);
  *(v6 + 16) = 1;
  sub_2410FB22C(v1, v6 + OBJC_IVAR____TtC11AskToDaemon17AppExtensionProxy_client);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2411673F0;
  v9 = *MEMORY[0x277D18868];
  *(inited + 32) = sub_241165DD8();
  *(inited + 40) = v10;
  v11 = sub_2410FB2FC(inited);
  v0[23] = v11;
  swift_setDeallocating();
  sub_2410FB464(inited + 32);
  v12 = swift_task_alloc();
  v0[24] = v12;
  *v12 = v0;
  v12[1] = sub_241157804;
  v13 = v0[20];

  return sub_241150BD0((v0 + 2), v13, v11);
}

uint64_t sub_241157804()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 184);

  if (v0)
  {
    v6 = sub_241157CB4;
  }

  else
  {
    v6 = sub_241157938;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_241157938()
{
  v35 = v0;
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v3 = sub_241165288();
    __swift_project_value_buffer(v3, qword_27E533AC8);
    v4 = sub_241165268();
    v5 = sub_241166048();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_2410F8000, v4, v5, "The data for the messages paylaod obtained from the extension was nil.", v6, 2u);
      MEMORY[0x245CDC5E0](v6, -1, -1);
    }

    sub_241157E5C();
    swift_allocError();
    swift_willThrow();
    sub_241102CC0((v0 + 2));
    v8 = v0[21];
    v7 = v0[22];

    v9 = v0[1];
  }

  else
  {
    sub_241134D44(v0[2], v0[3]);
    if (qword_27E5305C8 != -1)
    {
      swift_once();
    }

    v11 = v0[19];
    v10 = v0[20];
    v12 = sub_241165288();
    __swift_project_value_buffer(v12, qword_27E533AC8);

    v13 = v10;
    v14 = sub_241165268();
    v15 = sub_241166068();

    if (os_log_type_enabled(v14, v15))
    {
      v17 = v0[19];
      v16 = v0[20];
      v18 = v0[18];
      v19 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34[0] = v33;
      *v19 = 136315394;
      *(v19 + 4) = sub_241156B38(v18, v17, v34);
      *(v19 + 12) = 2080;
      v20 = sub_241165CD8();
      if (v20)
      {
        v21 = v20;
        v22 = sub_241165698();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_241156B38(v22, v24, v34);

      *(v19 + 14) = v25;
      _os_log_impl(&dword_2410F8000, v14, v15, "Updating message with GUID %s in Messages with response: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v33, -1, -1);
      MEMORY[0x245CDC5E0](v19, -1, -1);
    }

    v27 = v0[21];
    v26 = v0[22];
    v28 = v0[18];
    v29 = v0[19];
    v30 = sub_241165DA8();
    v31 = sub_2411650F8();
    IMSPIUpdatePluginMessageWithGUID();
    sub_241102CC0((v0 + 2));
    sub_241109164(v1, v2);

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_241157CB4()
{
  if (qword_27E5305C8 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533AC8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[25];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to get the new Messages payload from the extension. error: %@", v7, 0xCu);
    sub_2410FB29C(v8, &qword_27E530E30, &qword_2411676F0);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v11 = v0[25];

  swift_willThrow();
  v12 = v0[25];
  v14 = v0[21];
  v13 = v0[22];

  v15 = v0[1];

  return v15();
}

unint64_t sub_241157E5C()
{
  result = qword_27E5312C8;
  if (!qword_27E5312C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312C8);
  }

  return result;
}

unint64_t sub_241157EC8()
{
  result = qword_27E5312D0;
  if (!qword_27E5312D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312D0);
  }

  return result;
}

unint64_t sub_241157F1C()
{
  result = qword_27E5312D8;
  if (!qword_27E5312D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312D8);
  }

  return result;
}

unint64_t sub_241157F70()
{
  result = qword_27E5312E0;
  if (!qword_27E5312E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5312E0);
  }

  return result;
}

id sub_241157FC8(int a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = sub_2411660A8();
  v5 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = sub_241165618();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_2411660B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a3 + 16);
  v13(a2, a3);
  v24 = sub_241158370();
  v13(a2, a3);
  (*(v9 + 104))(v12, *MEMORY[0x277D85268], v8);
  sub_2411655F8();
  v27 = MEMORY[0x277D84F90];
  sub_24114CD08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5310E0, &qword_241169588);
  sub_24114CD60();
  sub_2411661B8();
  v14 = sub_2411660D8();
  if (qword_27E5305B0 != -1)
  {
    swift_once();
  }

  v15 = sub_241165288();
  __swift_project_value_buffer(v15, qword_27E533A80);
  v16 = sub_241165268();
  v17 = sub_241166068();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_241156B38(0xD000000000000022, 0x800000024116C980, &v27);
    _os_log_impl(&dword_2410F8000, v16, v17, "Creating listening scheduler for %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x245CDC5E0](v19, -1, -1);
    MEMORY[0x245CDC5E0](v18, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CF1918]);
  v21 = sub_241165DA8();
  v22 = [v20 initWithIdentifier:v21 targetQueue:v14 waking:v26 & 1];

  return v22;
}

unint64_t sub_241158370()
{
  result = qword_27E5310D0;
  if (!qword_27E5310D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E5310D0);
  }

  return result;
}

uint64_t sub_2411583DC()
{
  v11 = v0;
  if (*(v0[2] + 56))
  {
    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v1 = sub_241165288();
    __swift_project_value_buffer(v1, qword_27E533A50);
    v2 = sub_241165268();
    v3 = sub_241166048();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v10 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_241156B38(0xD00000000000001ALL, 0x800000024116CAA0, &v10);
      _os_log_impl(&dword_2410F8000, v2, v3, "%s Unhandled transport", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x245CDC5E0](v5, -1, -1);
      MEMORY[0x245CDC5E0](v4, -1, -1);
    }

    v6 = v0[1];

    return v6(0);
  }

  else
  {
    v8 = swift_task_alloc();
    v0[3] = v8;
    *v8 = v0;
    v8[1] = sub_2411585D0;
    v9 = v0[2];

    return sub_2411586CC();
  }
}

uint64_t sub_2411585D0(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2411586EC()
{
  v35 = v0;
  v2 = *(*(v0 + 24) + 80);
  v3 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = -v4;
    v7 = v2 + 40;
    v8 = 0x27E530000uLL;
    v32 = v2;
    do
    {
      v30 = v3;
      v9 = (v7 + 16 * v5++);
      while (1)
      {
        if ((v5 - 1) >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_21;
        }

        v1 = *(v9 - 1);
        v10 = *v9;
        v11 = sub_241165DA8();
        v12 = IDSCopyBestGuessIDForID();

        if (v12)
        {
          break;
        }

        if (*(v8 + 1440) != -1)
        {
          swift_once();
        }

        v13 = sub_241165288();
        __swift_project_value_buffer(v13, qword_27E533A50);

        v14 = sub_241165268();
        v15 = sub_241166048();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v17 = v6;
          v18 = v7;
          v19 = swift_slowAlloc();
          v34 = v19;
          *v16 = 136315138;
          *(v16 + 4) = sub_241156B38(v1, v10, &v34);
          _os_log_impl(&dword_2410F8000, v14, v15, "Best guess ID for %s was nil. Skipping destination.", v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          v20 = v19;
          v7 = v18;
          v6 = v17;
          v2 = v32;
          MEMORY[0x245CDC5E0](v20, -1, -1);
          v21 = v16;
          v8 = 0x27E530000;
          MEMORY[0x245CDC5E0](v21, -1, -1);
        }

        ++v5;
        v9 += 2;
        if (v6 + v5 == 1)
        {
          v3 = v30;
          goto LABEL_16;
        }
      }

      MEMORY[0x245CDB820]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241165F18();
      }

      sub_241165F28();
      v3 = v33;
    }

    while (v6 + v5);
  }

LABEL_16:
  v1 = v31;
  v31[4] = v3;
  v7 = v3;
  if (qword_27E530638 != -1)
  {
LABEL_21:
    swift_once();
  }

  v23 = qword_27E533BE8;
  v24 = *(v1[3] + 64);
  v25 = swift_task_alloc();
  v1[5] = v25;
  v25[2] = v23;
  v25[3] = v7;
  v25[4] = 0xD000000000000010;
  v25[5] = 0x800000024116C6E0;
  v25[6] = v24;
  v26 = *(MEMORY[0x277D859E0] + 4);
  v27 = swift_task_alloc();
  v1[6] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E5312E8, &qword_241169CD0);
  *v27 = v1;
  v27[1] = sub_241158A90;

  return MEMORY[0x2822007B8](v1 + 2, 0, 0, 0xD00000000000004CLL, 0x800000024116CAC0, sub_241158E6C, v25, v28);
}

uint64_t sub_241158A90()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return MEMORY[0x2822009F8](sub_241158BC4, 0, 0);
}

uint64_t sub_241158BC4()
{
  v1 = *(v0 + 16);
  if (qword_27E5305A0 != -1)
  {
    swift_once();
  }

  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533A50);

  v3 = sub_241165268();
  v4 = sub_241166068();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v1 + 16);

    _os_log_impl(&dword_2410F8000, v3, v4, "Found %ld valid IDS destinations", v5, 0xCu);
    MEMORY[0x245CDC5E0](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v1 + 16);

  v7 = *(v0 + 8);

  return v7(v6 != 0);
}

uint64_t sub_241158D1C()
{
  sub_241132558((v0 + 2));
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_9AskToCore22ClientMetadataProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_241158DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_241158E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_241158E7C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  *(v4 + 202) = a4;
  *(v4 + 384) = a2;
  *(v4 + 392) = a3;
  *(v4 + 376) = a1;
  return MEMORY[0x2822009F8](sub_241158EA4, 0, 0);
}

uint64_t sub_241158EA4()
{
  if (*(v0 + 202))
  {
    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v1 = sub_241165288();
    __swift_project_value_buffer(v1, qword_27E533A50);
    v2 = sub_241165268();
    v3 = sub_241166058();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = *(v0 + 202);
      v5 = swift_slowAlloc();
      *v5 = 33554688;
      *(v5 + 4) = sub_241165488();
      _os_log_impl(&dword_2410F8000, v2, v3, "Error inflating recipient group. Recipient group was unknown. %hd", v5, 6u);
      MEMORY[0x245CDC5E0](v5, -1, -1);
    }

    v6 = *(v0 + 392);
    v7 = *(v0 + 376);

    v8 = 2;
    goto LABEL_12;
  }

  v9 = *(*(v0 + 392) + 40);
  v10 = sub_241165CF8();
  if (v10 != sub_241165CF8())
  {
    v6 = *(v0 + 392);
    v7 = *(v0 + 376);
    v8 = 1;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v13 = v8;
    swift_willThrow();
    sub_241132558(v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
    __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
    v14 = *(v0 + 8);

    return v14();
  }

  v11 = [objc_allocWithZone(MEMORY[0x277D08280]) init];
  *(v0 + 400) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 368;
  *(v0 + 24) = sub_241159180;
  v12 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E530F60, &qword_241168050);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_241142CF4;
  *(v0 + 104) = &block_descriptor_12;
  *(v0 + 112) = v12;
  [v11 startRequestWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_241159180()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 408) = v2;
  if (v2)
  {
    v3 = sub_24115A13C;
  }

  else
  {
    v3 = sub_241159290;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

id sub_241159290()
{
  v1 = *(v0 + 368);
  *(v0 + 416) = v1;
  v2 = [v1 childBotAllowlistedParents];
  if (v2)
  {
    v3 = v2;
    v4 = sub_241165EF8();

    if (*(v4 + 16))
    {
      result = [v1 childBotAllowlistedParents];
      if (result)
      {
        v6 = result;
        v7 = *(v0 + 400);

        v68 = sub_241165EF8();

LABEL_28:
        v26 = *(v0 + 384);
        v25 = *(v0 + 392);
        v67 = v26;
        v63 = v25;
        v65 = *(v0 + 376);
        sub_241135730(v65, v0 + 208);
        sub_241135730(v26, v0 + 248);
        sub_2411324FC(v25, v0 + 144);
        v27 = *(v0 + 232);
        __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v27);
        v28 = *(v27 - 8);
        v29 = *(v28 + 64) + 15;
        v62 = swift_task_alloc();
        (*(v28 + 16))();
        v30 = *(v0 + 272);
        v31 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v30);
        v32 = *(v30 - 8);
        v33 = *(v32 + 64) + 15;
        v34 = swift_task_alloc();
        (*(v32 + 16))(v34, v31, v30);
        v35 = *v62;
        v36 = type metadata accessor for AskToIDSController();
        *(v0 + 312) = v36;
        *(v0 + 320) = &off_2852EBEC8;
        *(v0 + 288) = v35;
        v37 = type metadata accessor for IDSLookupController();
        *(v0 + 352) = v37;
        *(v0 + 360) = &off_2852EC2E0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 328));
        sub_24115A610(v34, boxed_opaque_existential_1);
        type metadata accessor for PrivledgedRecipientGroup();
        v39 = swift_allocObject();
        v40 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 288, v36);
        v41 = *(v36 - 8);
        v42 = *(v41 + 64) + 15;
        v43 = swift_task_alloc();
        (*(v41 + 16))(v43, v40, v36);
        v44 = *(v0 + 352);
        v45 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 328, v44);
        v46 = *(v44 - 8);
        v47 = *(v46 + 64) + 15;
        v48 = swift_task_alloc();
        (*(v46 + 16))(v48, v45, v44);
        v49 = *v43;
        *(v39 + 112) = v36;
        *(v39 + 120) = &off_2852EBEC8;
        *(v39 + 88) = v49;
        *(v39 + 152) = v37;
        *(v39 + 160) = &off_2852EC2E0;
        v50 = __swift_allocate_boxed_opaque_existential_1((v39 + 128));
        sub_24115A610(v48, v50);
        sub_241132558(v63);
        __swift_destroy_boxed_opaque_existential_1(v65);
        v51 = *(v0 + 160);
        *(v39 + 16) = *(v0 + 144);
        *(v39 + 32) = v51;
        *(v39 + 48) = *(v0 + 176);
        *(v39 + 57) = *(v0 + 185);
        *(v39 + 74) = 0;
        *(v39 + 80) = v68;
        __swift_destroy_boxed_opaque_existential_1((v0 + 328));

        __swift_destroy_boxed_opaque_existential_1((v0 + 288));

        __swift_destroy_boxed_opaque_existential_1((v0 + 248));

        __swift_destroy_boxed_opaque_existential_1((v0 + 208));

        __swift_destroy_boxed_opaque_existential_1(v67);
        v52 = *(v0 + 8);

        return v52(v39);
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  v8 = sub_241166078();
  v9 = v8;
  *(v0 + 424) = v8;
  if (v8 >> 62)
  {
    goto LABEL_33;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
    while ((*(*(v0 + 392) + 56) & 1) == 0)
    {
      v68 = MEMORY[0x277D84F90];
      v12 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x245CDBC20](v12, v9);
        }

        else
        {
          if (v12 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v13 = *(v9 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = [v13 appleID];
        if (v16)
        {
          v66 = v1;
          v17 = v16;
          v18 = sub_241165DD8();
          v64 = v19;

          v20 = v68;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2411608BC(0, *(v68 + 16) + 1, 1, v68);
          }

          v22 = *(v20 + 2);
          v21 = *(v20 + 3);
          v68 = v20;
          if (v22 >= v21 >> 1)
          {
            v68 = sub_2411608BC((v21 > 1), v22 + 1, 1, v20);
          }

          *(v68 + 16) = v22 + 1;
          v23 = v68 + 16 * v22;
          v1 = v66;
          *(v23 + 32) = v18;
          *(v23 + 40) = v64;
          if (v15 == v10)
          {
LABEL_27:
            v24 = *(v0 + 400);

            goto LABEL_28;
          }

          v12 = v15;
        }

        else
        {

          ++v12;
          if (v15 == v10)
          {
            goto LABEL_27;
          }
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      v10 = sub_2411661F8();
      if (!v10)
      {
        goto LABEL_34;
      }
    }

    __swift_project_boxed_opaque_existential_1(*(v0 + 384), *(*(v0 + 384) + 24));
    v11 = swift_task_alloc();
    *(v0 + 432) = v11;
    *v11 = v0;
    v11[1] = sub_241159A6C;

    return sub_24114CE10(v9);
  }

  else
  {
LABEL_34:

    if (qword_27E5305A0 != -1)
    {
      swift_once();
    }

    v53 = sub_241165288();
    __swift_project_value_buffer(v53, qword_27E533A50);
    v54 = sub_241165268();
    v55 = sub_241166058();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2410F8000, v54, v55, "There were no parents and guardians. This shouldn't ever happen. Please file a radar to Family Frameworks - AskTo | All.", v56, 2u);
      MEMORY[0x245CDC5E0](v56, -1, -1);
    }

    v58 = *(v0 + 392);
    v57 = *(v0 + 400);
    v59 = *(v0 + 376);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530D20, &qword_241168528);
    sub_2411351DC();
    swift_allocError();
    *v60 = 3;
    swift_willThrow();

    sub_241132558(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
    v61 = *(v0 + 8);

    return v61();
  }
}

uint64_t sub_241159A6C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 432);
  v6 = *v2;
  *(v4 + 440) = a1;
  *(v4 + 448) = v1;

  v7 = *(v3 + 424);

  if (v1)
  {
    v8 = sub_241159BA8;
  }

  else
  {
    v8 = sub_241159C38;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_241159BA8()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 400);
  v3 = *(v0 + 376);

  sub_241132558(v1);
  __swift_destroy_boxed_opaque_existential_1(v3);
  v4 = *(v0 + 448);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
  v5 = *(v0 + 8);

  return v5();
}

void sub_241159C38()
{
  v1 = 0;
  v2 = *(v0 + 440);
  v3 = *(v2 + 64);
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & v3;
  v7 = (63 - v5) >> 6;
  v8 = MEMORY[0x277D84F90];
  if ((v4 & v3) == 0)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(v2 + 56) + ((v1 << 9) | (8 * v9)));
      if (v10[2])
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v13 = v10[4];
    v12 = v10[5];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2411608BC(0, *(v8 + 2) + 1, 1, v8);
    }

    v15 = *(v8 + 2);
    v14 = *(v8 + 3);
    v16 = v8;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_2411608BC((v14 > 1), v15 + 1, 1, v8);
    }

    *(v16 + 2) = v15 + 1;
    v8 = v16;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v13;
    *(v17 + 5) = v12;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v7)
    {
      break;
    }

    v6 = *(v2 + 64 + 8 * v11);
    ++v1;
    if (v6)
    {
      v1 = v11;
      goto LABEL_4;
    }
  }

  v18 = *(v0 + 440);
  v51 = v8;
  v19 = *(v0 + 400);

  v21 = *(v0 + 384);
  v20 = *(v0 + 392);
  v52 = v21;
  v49 = v20;
  v50 = *(v0 + 376);
  sub_241135730(v50, v0 + 208);
  sub_241135730(v21, v0 + 248);
  sub_2411324FC(v20, v0 + 144);
  v22 = *(v0 + 232);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 208, v22);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64) + 15;
  v48 = swift_task_alloc();
  (*(v23 + 16))();
  v25 = *(v0 + 272);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 248, v25);
  v27 = *(v25 - 8);
  v28 = *(v27 + 64) + 15;
  v29 = swift_task_alloc();
  (*(v27 + 16))(v29, v26, v25);
  v30 = *v48;
  v31 = type metadata accessor for AskToIDSController();
  *(v0 + 312) = v31;
  *(v0 + 320) = &off_2852EBEC8;
  *(v0 + 288) = v30;
  v32 = type metadata accessor for IDSLookupController();
  *(v0 + 352) = v32;
  *(v0 + 360) = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 328));
  sub_24115A610(v29, boxed_opaque_existential_1);
  type metadata accessor for PrivledgedRecipientGroup();
  v34 = swift_allocObject();
  v35 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 288, v31);
  v36 = *(v31 - 8);
  v37 = *(v36 + 64) + 15;
  v38 = swift_task_alloc();
  (*(v36 + 16))(v38, v35, v31);
  v39 = *(v0 + 352);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 328, v39);
  v41 = *(v39 - 8);
  v42 = *(v41 + 64) + 15;
  v43 = swift_task_alloc();
  (*(v41 + 16))(v43, v40, v39);
  v44 = *v38;
  *(v34 + 112) = v31;
  *(v34 + 120) = &off_2852EBEC8;
  *(v34 + 88) = v44;
  *(v34 + 152) = v32;
  *(v34 + 160) = &off_2852EC2E0;
  v45 = __swift_allocate_boxed_opaque_existential_1((v34 + 128));
  sub_24115A610(v43, v45);
  sub_241132558(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  v46 = *(v0 + 160);
  *(v34 + 16) = *(v0 + 144);
  *(v34 + 32) = v46;
  *(v34 + 48) = *(v0 + 176);
  *(v34 + 57) = *(v0 + 185);
  *(v34 + 74) = 0;
  *(v34 + 80) = v51;
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  __swift_destroy_boxed_opaque_existential_1((v0 + 248));

  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  __swift_destroy_boxed_opaque_existential_1(v52);
  v47 = *(v0 + 8);

  v47(v34);
}

uint64_t sub_24115A13C()
{
  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 392);
  v4 = *(v0 + 376);
  swift_willThrow();

  sub_241132558(v3);
  __swift_destroy_boxed_opaque_existential_1(v4);
  v5 = *(v0 + 408);
  __swift_destroy_boxed_opaque_existential_1(*(v0 + 384));
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24115A1D4(uint64_t a1, __int16 a2)
{
  *(v2 + 74) = a2;
  *(v2 + 160) = a1;
  v3 = type metadata accessor for IDSLookupController();
  *(v2 + 168) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 176) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115A26C, 0, 0);
}

uint64_t sub_24115A26C()
{
  if (qword_27E530638 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = qword_27E533BE8;
  sub_24114C9EC(v1);
  *(v0 + 104) = type metadata accessor for AskToIDSController();
  *(v0 + 112) = &off_2852EBEC8;
  *(v0 + 80) = v4;
  *(v0 + 144) = v2;
  *(v0 + 152) = &off_2852EC2E0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
  sub_241131B28(v1, boxed_opaque_existential_1);
  sub_2411324FC(v3, v0 + 16);

  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_24115A3C8;
  v7 = *(v0 + 74);

  return sub_241158E7C(v0 + 80, v0 + 120, v0 + 16, v7);
}

uint64_t sub_24115A3C8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = sub_24115A56C;
  }

  else
  {
    *(v4 + 200) = a1;
    v7 = sub_24115A4F0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24115A4F0()
{
  v1 = v0[22];
  sub_241132558(v0[20]);
  sub_241131B8C(v1);

  v2 = v0[1];
  v3 = v0[25];

  return v2(v3);
}

uint64_t sub_24115A56C()
{
  v1 = v0[22];
  sub_241132558(v0[20]);
  sub_241131B8C(v1);

  v2 = v0[1];
  v3 = v0[24];

  return v2();
}

uint64_t sub_24115A610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSLookupController();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24115A674()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_11AskToDaemon24PrivledgedRecipientGroupC5ErrorOy_xG(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24115A6D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24115A72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_24115A794(uint64_t a1)
{
  v2 = sub_241165BD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277CEED68] || v7 == *MEMORY[0x277CEED70] || v7 == *MEMORY[0x277CEED88] || v7 == *MEMORY[0x277CEEDA0] || v7 == *MEMORY[0x277CEED90])
  {
    goto LABEL_15;
  }

  if (v7 != *MEMORY[0x277CEED80])
  {
    if (v7 == *MEMORY[0x277CEED98])
    {
      if (qword_27E530580 != -1)
      {
        swift_once();
      }

      v25 = sub_241165288();
      __swift_project_value_buffer(v25, qword_27E5339F0);
      v13 = sub_241165268();
      v14 = sub_241166068();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_19;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Client is Contacts. No custom response tasks.";
      goto LABEL_18;
    }

    if (v7 != *MEMORY[0x277CEED78])
    {
      sub_2411663D8();
      __break(1u);
      goto LABEL_33;
    }

LABEL_15:
    if (qword_27E530580 == -1)
    {
LABEL_16:
      v12 = sub_241165288();
      __swift_project_value_buffer(v12, qword_27E5339F0);
      v13 = sub_241165268();
      v14 = sub_241166068();
      if (!os_log_type_enabled(v13, v14))
      {
LABEL_19:

        return MEMORY[0x277D84F90];
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Client is an AskTo-owned process. Returning no response tasks.";
LABEL_18:
      _os_log_impl(&dword_2410F8000, v13, v14, v16, v15, 2u);
      MEMORY[0x245CDC5E0](v15, -1, -1);
      goto LABEL_19;
    }

LABEL_33:
    swift_once();
    goto LABEL_16;
  }

  v18 = v7;
  if (qword_27E530580 != -1)
  {
    swift_once();
  }

  v19 = sub_241165288();
  __swift_project_value_buffer(v19, qword_27E5339F0);
  v20 = sub_241165268();
  v21 = sub_241166068();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2410F8000, v20, v21, "Client is ScreenTime. Returning ScreenTime response tasks.", v22, 2u);
    MEMORY[0x245CDC5E0](v22, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E531370, &unk_241169DC0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_2411673F0;
  *(v23 + 56) = type metadata accessor for ScreenTimeResponseTask();
  *(v23 + 64) = &off_2852EBDE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v23 + 32));
  (*(v3 + 104))(boxed_opaque_existential_1, v18, v2);
  return v23;
}

void sub_24115AB9C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v35 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  sub_241164FE8();
  if (v11)
  {
    v12 = sub_241165DA8();

    [v0 setNamePrefix_];
  }

  sub_241164FB8();
  if (v13)
  {
    v14 = sub_241165DA8();

    [v0 setGivenName_];
  }

  sub_241164FD8();
  if (v15)
  {
    v16 = sub_241165DA8();

    [v0 setMiddleName_];
  }

  sub_241164FC8();
  if (v17)
  {
    v18 = sub_241165DA8();

    [v0 setFamilyName_];
  }

  sub_241164FF8();
  if (v19)
  {
    v20 = sub_241165DA8();

    [v0 setNameSuffix_];
  }

  sub_241165018();
  if (v21)
  {
    v22 = sub_241165DA8();

    [v0 setNickname_];
  }

  v36 = v0;
  sub_241165008();
  v23 = sub_241165028();
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  if (v25(v10, 1, v23) == 1)
  {
    sub_24115AFCC(v10);
  }

  else
  {
    sub_241164FB8();
    v27 = v26;
    (*(v24 + 8))(v10, v23);
    if (v27)
    {
      v28 = sub_241165DA8();

      [v36 setPhoneticGivenName_];
    }
  }

  sub_241165008();
  if (v25(v8, 1, v23) == 1)
  {
    sub_24115AFCC(v8);
  }

  else
  {
    sub_241164FD8();
    v30 = v29;
    (*(v24 + 8))(v8, v23);
    if (v30)
    {
      v31 = sub_241165DA8();

      [v36 setPhoneticMiddleName_];
    }
  }

  sub_241165008();
  if (v25(v5, 1, v23) == 1)
  {
    sub_24115AFCC(v5);
  }

  else
  {
    sub_241164FC8();
    v33 = v32;
    (*(v24 + 8))(v5, v23);
    if (v33)
    {
      v34 = sub_241165DA8();

      [v36 setPhoneticFamilyName_];
    }
  }
}

uint64_t sub_24115AFCC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E38, &unk_241168EF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24115B034(uint64_t a1, uint64_t *a2, int64_t a3)
{
  if (qword_27E5305E8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = sub_241165288();
    __swift_project_value_buffer(v6, qword_27E533B28);

    v7 = sub_241165268();
    v8 = sub_241166068();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v98[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_241156B38(a2, a3, v98);
      *(v9 + 12) = 2080;
      sub_241165928();
      sub_24115DFC4();
      v11 = sub_241165FE8();
      v13 = sub_241156B38(v11, v12, v98);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_2410F8000, v7, v8, "Looking up known handles for %s in set %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CDC5E0](v10, -1, -1);
      MEMORY[0x245CDC5E0](v9, -1, -1);
    }

    v14 = sub_24115BAD4(a1, a2, a3);
    v15 = sub_241165268();
    v16 = sub_241166068();
    v92 = v14 >> 62;
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      a2 = swift_slowAlloc();
      v98[0] = a2;
      *v17 = 134218242;
      if (v14 >> 62)
      {
        v18 = sub_2411661F8();
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;
      *(v17 + 12) = 2080;
      v19 = sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
      v20 = MEMORY[0x245CDB850](v14, v19);
      v22 = sub_241156B38(v20, v21, v98);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_2410F8000, v15, v16, "Found %ld contacts: %s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(a2);
      MEMORY[0x245CDC5E0](a2, -1, -1);
      MEMORY[0x245CDC5E0](v17, -1, -1);
    }

    v88 = v14;
    v97 = MEMORY[0x277D84FA0];
    v91 = sub_2410FBDF0(MEMORY[0x277D84F90]);
    if ((a1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2411661E8();
      sub_241165928();
      sub_24115DFC4();
      sub_241165FF8();
      a1 = v98[0];
      v23 = v98[1];
      v24 = v98[2];
      v25 = v98[3];
      v26 = v98[4];
    }

    else
    {
      v27 = -1 << *(a1 + 32);
      v23 = a1 + 56;
      v24 = ~v27;
      v28 = -v27;
      v29 = v28 < 64 ? ~(-1 << v28) : -1;
      v26 = v29 & *(a1 + 56);

      v25 = 0;
    }

    a3 = (v24 + 64) >> 6;
    if (a1 < 0)
    {
      break;
    }

LABEL_15:
    v30 = v25;
    v31 = v26;
    v32 = v25;
    if (v26)
    {
LABEL_19:
      a2 = ((v31 - 1) & v31);
      v33 = *(*(a1 + 48) + ((v32 << 9) | (8 * __clz(__rbit64(v31)))));
      if (v33)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }

    while (1)
    {
      v32 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v32 >= a3)
      {
        goto LABEL_25;
      }

      v31 = *(v23 + 8 * v32);
      ++v30;
      if (v31)
      {
        goto LABEL_19;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  while (1)
  {
    v34 = sub_241166218();
    if (!v34)
    {
      break;
    }

    v96 = v34;
    sub_241165928();
    swift_dynamicCast();
    v33 = v94;
    v32 = v25;
    a2 = v26;
    if (!v94)
    {
      break;
    }

LABEL_23:
    v35 = MEMORY[0x245CDB260]();
    v37 = v36;
    v38 = v33;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v91;
    sub_241153CE8(v38, v35, v37, isUniquelyReferenced_nonNull_native);
    v91 = v94;
    sub_24115C55C(&v94, v35, v37);

    v25 = v32;
    v26 = a2;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_15;
    }
  }

LABEL_25:
  sub_24111606C();
  v40 = MEMORY[0x277D84FA0];
  v41 = v88;
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_2411661F8())
    {
      sub_2410FCC14(MEMORY[0x277D84F90]);
      v40 = v79;
    }

    v41 = v88;
  }

  v96 = v40;
  if (v92)
  {
    v80 = v41;
    v81 = sub_2411661F8();
    v41 = v80;
    v42 = v81;
    if (!v81)
    {
LABEL_78:

      goto LABEL_79;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v42)
    {
      goto LABEL_78;
    }
  }

  v43 = 0;
  v86 = v97;
  v87 = v41 & 0xC000000000000001;
  v83 = v41 + 32;
  v84 = v41 & 0xFFFFFFFFFFFFFF8;
  v85 = v42;
  do
  {
    if (v87)
    {
      v44 = MEMORY[0x245CDBC20](v43);
      v45 = __OFADD__(v43, 1);
      v46 = v43 + 1;
      if (v45)
      {
        goto LABEL_71;
      }
    }

    else
    {
      if (v43 >= *(v84 + 16))
      {
        goto LABEL_72;
      }

      v44 = *(v83 + 8 * v43);
      v45 = __OFADD__(v43, 1);
      v46 = v43 + 1;
      if (v45)
      {
        goto LABEL_71;
      }
    }

    v89 = v44;
    v90 = v46;
    v47 = [v44 socialProfiles];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E50, qword_241168F00);
    v48 = sub_241165EF8();

    v95 = MEMORY[0x277D84FA0];
    if (v48 >> 62)
    {
      a3 = sub_2411661F8();
      if (a3)
      {
LABEL_38:
        v49 = 0;
        a2 = (v48 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v48 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x245CDBC20](v49, v48);
          }

          else
          {
            if (v49 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_69;
            }

            v50 = *(v48 + 8 * v49 + 32);
          }

          v51 = v50;
          v52 = v49 + 1;
          if (__OFADD__(v49, 1))
          {
            break;
          }

          v53 = [v50 value];
          a1 = [v53 username];

          v54 = sub_241165DD8();
          v56 = v55;

          sub_24115C55C(&v94, v54, v56);

          ++v49;
          if (v52 == a3)
          {
            v57 = v95;
            goto LABEL_48;
          }
        }

LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        goto LABEL_70;
      }
    }

    else
    {
      a3 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a3)
      {
        goto LABEL_38;
      }
    }

    v57 = MEMORY[0x277D84FA0];
LABEL_48:

    v58 = sub_24115CD98(v86, v57);
    a1 = v58;
    v59 = 0;
    v60 = v58 + 56;
    v61 = 1 << *(v58 + 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    a3 = v62 & *(v58 + 56);
    a2 = ((v61 + 63) >> 6);
    for (i = v58; a3; v59 = v63)
    {
      while (1)
      {
        v63 = v59;
        v64 = v91;
LABEL_60:
        v65 = __clz(__rbit64(a3));
        a3 &= a3 - 1;
        v66 = (*(a1 + 48) + ((v63 << 10) | (16 * v65)));
        v68 = *v66;
        v67 = v66[1];
        v69 = v64[2];

        if (!v69)
        {
          break;
        }

        v70 = sub_2410FAD78(v68, v67);
        if ((v71 & 1) == 0)
        {
          break;
        }

        v72 = v70;

        sub_24115C344(&v94, *(v64[7] + 8 * v72));

        v59 = v63;
        if (!a3)
        {
          goto LABEL_56;
        }
      }

      v73 = sub_241165268();
      v74 = sub_241166048();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v94 = v76;
        *v75 = 136315138;
        v77 = sub_241156B38(v68, v67, &v94);

        *(v75 + 4) = v77;
        _os_log_impl(&dword_2410F8000, v73, v74, "Handle string could not be found in handle map. Skipping %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        v78 = v76;
        a1 = i;
        MEMORY[0x245CDC5E0](v78, -1, -1);
        MEMORY[0x245CDC5E0](v75, -1, -1);
      }

      else
      {
      }
    }

LABEL_56:
    v64 = v91;
    while (1)
    {
      v63 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        __break(1u);
        goto LABEL_68;
      }

      if (v63 >= a2)
      {
        break;
      }

      a3 = *(v60 + 8 * v63);
      ++v59;
      if (a3)
      {
        goto LABEL_60;
      }
    }

    v43 = v90;
  }

  while (v90 != v85);

  v40 = v96;
LABEL_79:

  return v40;
}

void *sub_24115B9AC()
{
  type metadata accessor for CommunicationPolicyController();
  swift_allocObject();
  result = sub_24115B9E8();
  qword_27E533BF8 = result;
  return result;
}

void *sub_24115B9E8()
{
  v0[4] = 0;
  v1 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v0[2] = v1;
  v2 = objc_opt_self();
  v3 = v1;
  result = [v2 defaultStore];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() defaultCenter];
    v7 = [objc_allocWithZone(MEMORY[0x277CBDAF0]) initWithContactStore:v3 accountStore:v5 notificationCenter:v6];

    v0[3] = v7;
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24115BAD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62[6] = *MEMORY[0x277D85DE8];
  v60 = MEMORY[0x277D84F90];
  v61 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2411661E8();
    sub_241165928();
    sub_24115DFC4();
    sub_241165FF8();
    v4 = v62[1];
    v3 = v62[2];
    v6 = v62[3];
    v5 = v62[4];
    v7 = v62[5];
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v6 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = (v10 & *(a1 + 56));
    v5 = 0;
  }

  v11 = (v6 + 64) >> 6;
  v57 = v4;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v5;
    v13 = v7;
    v14 = v5;
    if (!v7)
    {
      while (1)
      {
        v14 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v11)
        {
          goto LABEL_20;
        }

        v13 = v3[v14];
        ++v12;
        if (v13)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      break;
    }

    while (1)
    {
      MEMORY[0x245CDB260]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530668, &unk_2411677A0);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2411673F0;
      *(v17 + 32) = a2;
      *(v17 + 40) = a3;
      v18 = objc_allocWithZone(MEMORY[0x277CBDBB0]);

      v19 = sub_241165DA8();

      v20 = sub_241165EE8();

      v21 = [v18 initWithUrlString:0 username:v19 userIdentifier:0 service:0 displayname:0 teamIdentifier:0 bundleIdentifiers:v20];

      v22 = [objc_opt_self() predicateForContactsMatchingSocialProfile_];
      MEMORY[0x245CDB820]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_241165F18();
      }

      sub_241165F28();

      v5 = v14;
      v7 = v15;
      v4 = v57;
      if ((v57 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_241166218())
      {
        sub_241165928();
        swift_dynamicCast();
        v16 = v62[0];
        v14 = v5;
        v15 = v7;
        if (v62[0])
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

LABEL_20:
  sub_24111606C();
  sub_2410FCF28(0, &qword_27E531388, 0x277CCAC30);
  v24 = sub_241165EE8();
  v25 = [objc_opt_self() orPredicateWithSubpredicates_];

  v5 = v25;
  MEMORY[0x245CDB820]();
  if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_21;
  }

LABEL_33:
  sub_241165F18();
LABEL_21:
  sub_241165F28();
  if (qword_27E5305E8 != -1)
  {
    swift_once();
  }

  v26 = sub_241165288();
  __swift_project_value_buffer(v26, qword_27E533B28);
  v27 = v5;
  v28 = sub_241165268();
  v29 = sub_241166068();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_2410F8000, v28, v29, "fetchPredicate: %@", v30, 0xCu);
    sub_2410FDEB8(v31);
    MEMORY[0x245CDC5E0](v31, -1, -1);
    MEMORY[0x245CDC5E0](v30, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E60, &qword_241167790);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_241167630;
  v34 = *MEMORY[0x277CBD138];
  *(v33 + 32) = *MEMORY[0x277CBD138];
  v35 = *(v56 + 16);
  v36 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E68, &qword_241168F18);
  v37 = sub_241165EE8();

  v62[0] = 0;
  v38 = [v35 unifiedContactsMatchingPredicate:v27 keysToFetch:v37 error:v62];

  v39 = v62[0];
  if (v38)
  {

    sub_2410FCF28(0, &unk_27E530E70, 0x277CBDA58);
    v40 = sub_241165EF8();
  }

  else
  {
    v41 = v39;
    v42 = sub_241165058();

    swift_willThrow();

    v43 = v42;
    v44 = sub_241165268();
    v45 = sub_241166048();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v62[0] = v48;
      *v46 = 136315394;
      sub_241165928();
      sub_24115DFC4();
      v49 = sub_241165FE8();
      v51 = sub_241156B38(v49, v50, v62);

      *(v46 + 4) = v51;
      *(v46 + 12) = 2112;
      v52 = v42;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 14) = v53;
      *v47 = v53;

      _os_log_impl(&dword_2410F8000, v44, v45, "Error fetching contacts for handles %s: %@", v46, 0x16u);
      sub_2410FDEB8(v47);
      MEMORY[0x245CDC5E0](v47, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x245CDC5E0](v48, -1, -1);
      MEMORY[0x245CDC5E0](v46, -1, -1);
    }

    else
    {
    }

    v40 = MEMORY[0x277D84F90];
  }

  v54 = *MEMORY[0x277D85DE8];
  return v40;
}

uint64_t CommunicationPolicyController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_24115C344(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_241166208();

    if (v9)
    {

      sub_241165928();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2411661F8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_24115C6AC(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_24115C88C(v22 + 1);
    }

    v20 = v8;
    sub_24115CD14(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_241165928();
  v11 = *(v6 + 40);
  v12 = sub_241166138();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_24115D5EC(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_241166148();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_24115C55C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_2411664A8();
  sub_241165E28();
  v9 = sub_2411664C8();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_2411663E8() & 1) != 0)
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

    sub_24115D74C(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24115C6AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
    v2 = sub_241166288();
    v16 = v2;
    sub_2411661E8();
    if (sub_241166218())
    {
      sub_241165928();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_24115C88C(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_241166138();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_241166218());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_24115C88C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  result = sub_241166278();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_241166138();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24115CAB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166278();
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
      sub_2411664A8();
      sub_241165E28();
      result = sub_2411664C8();
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

unint64_t sub_24115CD14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_241166138();
  v5 = -1 << *(a2 + 32);
  result = sub_2411661D8();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_24115CD98(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_24115CFEC(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v9 = sub_24115CF5C(v12, v6, a2, a1);

    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_24115CF5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_24115CFEC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_24115CFEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v55 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v53 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v53);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v4 + 40);
      sub_2411664A8();

      sub_241165E28();
      v27 = sub_2411664C8();
      v28 = -1 << *(v4 + 32);
      v29 = v27 & ~v28;
      if ((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
      {
        v30 = ~v28;
        while (1)
        {
          v31 = (*(a4 + 48) + 16 * v29);
          v32 = *v31 == v25 && v31[1] == v24;
          if (v32 || (sub_2411663E8() & 1) != 0)
          {
            break;
          }

          v29 = (v29 + 1) & v30;
          if (((*(v19 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v52 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        if (v33)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_24115D3C8(v52, a2, v55, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v55 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v51 = v11;
    while (v10)
    {
      v34 = __clz(__rbit64(v10));
      v54 = (v10 - 1) & v10;
LABEL_41:
      v37 = (*(v4 + 48) + 16 * (v34 | (v6 << 6)));
      v39 = *v37;
      v38 = v37[1];
      v40 = *(v5 + 40);
      sub_2411664A8();

      sub_241165E28();
      v41 = sub_2411664C8();
      v42 = -1 << *(v5 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) != 0)
      {
        v46 = (*(v5 + 48) + 16 * v43);
        if (*v46 != v39 || v46[1] != v38)
        {
          v48 = ~v42;
          while ((sub_2411663E8() & 1) == 0)
          {
            v43 = (v43 + 1) & v48;
            v44 = v43 >> 6;
            v45 = 1 << v43;
            if (((1 << v43) & *(v12 + 8 * (v43 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v49 = (*(a3 + 48) + 16 * v43);
            if (*v49 == v39 && v49[1] == v38)
            {
              break;
            }
          }
        }

        v11 = v51;
        v52[v44] |= v45;
        v5 = a3;
        v33 = __OFADD__(v55++, 1);
        v4 = a4;
        v10 = v54;
        if (v33)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v51;
        v10 = v54;
      }
    }

    v35 = v6;
    while (1)
    {
      v6 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v36 = *(v7 + 8 * v6);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v54 = (v36 - 1) & v36;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24115D3C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166298();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    sub_2411664A8();

    sub_241165E28();
    result = sub_2411664C8();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_24115D5EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_24115C88C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_24115D8CC();
      goto LABEL_12;
    }

    sub_24115DB78(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_241166138();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_241165928();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_241166148();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_241166418();
  __break(1u);
}

uint64_t sub_24115D74C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_24115CAB4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24115DA1C();
      goto LABEL_16;
    }

    sub_24115DD8C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_2411664A8();
  sub_241165E28();
  result = sub_2411664C8();
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

      result = sub_2411663E8();
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
  result = sub_241166418();
  __break(1u);
  return result;
}

id sub_24115D8CC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  v2 = *v0;
  v3 = sub_241166268();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_24115DA1C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  v2 = *v0;
  v3 = sub_241166268();
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

uint64_t sub_24115DB78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307B8, &qword_2411674A0);
  result = sub_241166278();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_241166138();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
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

uint64_t sub_24115DD8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5307F0, &qword_2411674C0);
  result = sub_241166278();
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
      sub_2411664A8();

      sub_241165E28();
      result = sub_2411664C8();
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

unint64_t sub_24115DFC4()
{
  result = qword_27E531380;
  if (!qword_27E531380)
  {
    sub_241165928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E531380);
  }

  return result;
}

uint64_t sub_24115E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_24115E044, 0, 0);
}

uint64_t sub_24115E044()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = *(sub_241165A18() + 16);

  v4 = *(sub_241165A18() + 16);

  if (v3 == v4)
  {
    v5 = v0[3];
    v6 = sub_241164E68();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    sub_241164E58();
    v0[2] = v5;
    sub_241165A58();
    sub_241161FAC(&qword_27E5313A8, MEMORY[0x277CEECD8]);
    v9 = sub_241164E48();
    v11 = v10;
    v0[8] = v9;
    v0[9] = v10;

    v27 = swift_task_alloc();
    v0[10] = v27;
    *v27 = v0;
    v27[1] = sub_24115E430;
    v28 = v0[6];
    v29 = v0[7];
    v30 = v0[5];

    return sub_24113AAC8(v9, v11, v30, v28);
  }

  else
  {
    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v13 = v0[3];
    v12 = v0[4];
    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E533BB8);
    v15 = v13;
    v16 = v12;
    v17 = sub_241165268();
    v18 = sub_241166048();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[3];
    v21 = v0[4];
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      v23 = *(sub_241165A18() + 16);

      *(v22 + 4) = v23;
      *(v22 + 12) = 2048;
      v24 = *(sub_241165A18() + 16);

      *(v22 + 14) = v24;

      _os_log_impl(&dword_2410F8000, v17, v18, "Person information count mismatch - original: %ld, previewing: %ld", v22, 0x16u);
      MEMORY[0x245CDC5E0](v22, -1, -1);
    }

    else
    {
    }

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_24115E430()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_24115E6E0;
  }

  else
  {
    v3 = sub_24115E544;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24115E544()
{
  v15 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533BB8);

  v3 = sub_241165268();
  v4 = sub_241166038();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[8];
  v6 = v0[9];
  if (v5)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_241156B38(v9, v8, &v14);
    _os_log_impl(&dword_2410F8000, v3, v4, "Cached metadata for question identifier %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  sub_2410FB5B8(v7, v6);
  v12 = v0[1];

  return v12();
}

uint64_t sub_24115E6E0()
{
  v13 = v0;
  sub_2410FB5B8(v0[8], v0[9]);
  v1 = v0[11];
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = sub_241165288();
  __swift_project_value_buffer(v3, qword_27E533BB8);

  v4 = sub_241165268();
  v5 = sub_241166048();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(v7, v6, &v12);
    _os_log_impl(&dword_2410F8000, v4, v5, "Failed to cache metadata for question identifier %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24115E878(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2411652E8();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115E97C, 0, 0);
}

uint64_t sub_24115E97C()
{
  v60 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_241165288();
  *(v0 + 72) = __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166038();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v59 = v8;
    *v7 = 136315138;
    v9 = sub_241165328();
    v11 = sub_241156B38(v9, v10, &v59);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "Moving cached metadata to final path for question %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 32);
  v15 = *(v0 + 16);
  sub_241165298();
  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v16 = *(v0 + 16);
    sub_2411610E4(*(v0 + 32));
    v17 = v16;
    v18 = sub_241165268();
    v19 = sub_241166038();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 16);
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v59 = v22;
      *v21 = 136315138;
      v23 = sub_241165328();
      v25 = sub_241156B38(v23, v24, &v59);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_2410F8000, v18, v19, "No topic metadata found for question %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x245CDC5E0](v22, -1, -1);
      MEMORY[0x245CDC5E0](v21, -1, -1);
    }

LABEL_16:
    v56 = *(v0 + 56);
    v55 = *(v0 + 64);
    v57 = *(v0 + 32);

    v58 = *(v0 + 8);

    return v58();
  }

  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v28 = *(v0 + 40);
  v29 = *(v0 + 48);
  (*(v29 + 32))(v26, *(v0 + 32), v28);
  (*(v29 + 16))(v27, v26, v28);
  if ((*(v29 + 88))(v27, v28) != *MEMORY[0x277CEEAD0])
  {
    v41 = *(v0 + 16);
    v42 = sub_241165268();
    v43 = sub_241166038();

    v44 = os_log_type_enabled(v42, v43);
    v45 = *(v0 + 64);
    v46 = *(v0 + 40);
    v47 = *(v0 + 48);
    if (v44)
    {
      v48 = *(v0 + 16);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v59 = v50;
      *v49 = 136315138;
      v51 = sub_241165328();
      v53 = sub_241156B38(v51, v52, &v59);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_2410F8000, v42, v43, "Unknown topic metadata type for question %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x245CDC5E0](v50, -1, -1);
      MEMORY[0x245CDC5E0](v49, -1, -1);
    }

    v54 = *(v47 + 8);
    v54(v45, v46);
    v54(*(v0 + 56), *(v0 + 40));
    goto LABEL_16;
  }

  v31 = *(v0 + 48);
  v30 = *(v0 + 56);
  v32 = *(v0 + 40);
  v33 = *(v0 + 16);
  v34 = *(v31 + 8);
  *(v0 + 80) = v34;
  *(v0 + 88) = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v34(v30, v32);
  v35 = sub_241165328();
  v37 = v36;
  *(v0 + 96) = v36;
  v38 = swift_task_alloc();
  *(v0 + 104) = v38;
  *v38 = v0;
  v38[1] = sub_24115EE88;
  v39 = *(v0 + 24);

  return sub_24113AFD8(v35, v37);
}

uint64_t sub_24115EE88()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_24115F144;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_24115EFA4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24115EFA4()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v2 = *(v0 + 16);
  v3 = sub_241165268();
  v4 = sub_241166038();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  v8 = *(v0 + 40);
  if (v5)
  {
    v20 = *(v0 + 88);
    v9 = *(v0 + 16);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = sub_241165328();
    v14 = sub_241156B38(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_2410F8000, v3, v4, "Moved cached metadata for question identifier %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);

    v6(v7, v8);
  }

  else
  {

    v6(v7, v8);
  }

  v16 = *(v0 + 56);
  v15 = *(v0 + 64);
  v17 = *(v0 + 32);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_24115F144()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];

  v4 = v3;
  v5 = sub_241165268();
  v6 = sub_241166048();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[8];
  v11 = v0[5];
  if (v7)
  {
    v24 = v0[11];
    v12 = v0[2];
    v23 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v13 = 136315138;
    v15 = sub_241165328();
    v17 = sub_241156B38(v15, v16, &v25);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_2410F8000, v5, v6, "Failed to move cached metadata for question identifier %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CDC5E0](v14, -1, -1);
    MEMORY[0x245CDC5E0](v13, -1, -1);

    v23(v10, v11);
  }

  else
  {

    v9(v10, v11);
  }

  v19 = v0[7];
  v18 = v0[8];
  v20 = v0[4];

  v21 = v0[1];

  return v21();
}

uint64_t sub_24115F304(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115F3A0, 0, 0);
}

uint64_t sub_24115F3A0()
{
  v29 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_241165288();
  __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166028();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v7 = 136315138;
    v9 = sub_241165328();
    v11 = sub_241156B38(v9, v10, &v28);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "Preparing question %s for sending", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = sub_24116114C(*(v0 + 16));
  *(v0 + 40) = v12;
  if (v12)
  {
    v13 = v12;
    v14 = sub_241165268();
    v15 = sub_241166038();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      v17 = *(sub_241165A18() + 16);

      *(v16 + 4) = v17;

      _os_log_impl(&dword_2410F8000, v14, v15, "Processing communication metadata with %ld person(s)", v16, 0xCu);
      MEMORY[0x245CDC5E0](v16, -1, -1);
    }

    else
    {
    }

    v21 = *(v0 + 16);
    v22 = sub_241165A28();
    *(v0 + 48) = v22;
    v23 = sub_241165328();
    v25 = v24;
    *(v0 + 56) = v24;
    v26 = swift_task_alloc();
    *(v0 + 64) = v26;
    *v26 = v0;
    v26[1] = sub_24115F694;
    v27 = *(v0 + 24);

    return sub_24115E01C(v13, v22, v23, v25, v27);
  }

  else
  {
    v18 = *(v0 + 32);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_24115F694()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_24115F7AC, 0, 0);
}

uint64_t sub_24115F7AC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  *v3 = v1;
  v5 = *MEMORY[0x277CEEAD0];
  v6 = sub_2411652E8();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v3, v5, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = v1;
  sub_2411652A8();

  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

uint64_t sub_24115F8CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_24115F8EC, 0, 0);
}

uint64_t sub_24115F8EC()
{
  v17 = v0;
  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_241165288();
  v0[4] = __swift_project_value_buffer(v2, qword_27E533BB8);
  v3 = v1;
  v4 = sub_241165268();
  v5 = sub_241166028();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_241165328();
    v11 = sub_241156B38(v9, v10, &v16);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2410F8000, v4, v5, "Question %s was sent, performing post-send operations", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CDC5E0](v8, -1, -1);
    MEMORY[0x245CDC5E0](v7, -1, -1);
  }

  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_24115FAB8;
  v14 = v0[2];
  v13 = v0[3];

  return sub_24115E878(v14, v13);
}

uint64_t sub_24115FAB8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_24115FBB4, 0, 0);
}

uint64_t sub_24115FBB4()
{
  v14 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_241165268();
  v4 = sub_241166038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = sub_241165328();
    v10 = sub_241156B38(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2410F8000, v3, v4, "Completed post-send operations for question %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24115FCFC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_2411650D8();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24115FE00, 0, 0);
}

uint64_t sub_24115FE00()
{
  v82 = v0;
  v1 = v0[3];
  v2 = sub_2411656C8();
  v3 = sub_241160DD4(v2);

  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v4 = v0[3];
  v5 = sub_241165288();
  __swift_project_value_buffer(v5, qword_27E533BB8);
  v6 = v4;
  v7 = sub_241165268();
  v8 = sub_241166038();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[3];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v81[0] = v11;
    *v10 = 136315394;
    v12 = sub_2411656C8();
    v13 = sub_241165328();
    v15 = v14;

    v16 = sub_241156B38(v13, v15, v81);

    *(v10 + 4) = v16;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v3;
    _os_log_impl(&dword_2410F8000, v7, v8, "Can process response for question %s: %{BOOL}d", v10, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CDC5E0](v11, -1, -1);
    MEMORY[0x245CDC5E0](v10, -1, -1);
  }

  if (!v3)
  {
    goto LABEL_16;
  }

  v17 = v0[9];
  v18 = v0[3];
  v19 = sub_2411656C8();
  v0[10] = v19;
  v20 = sub_2411656C8();
  sub_241165298();

  v21 = sub_2411652E8();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v17, 1, v21);
  v24 = v0[9];
  if (v23 == 1)
  {
    sub_2411610E4(v24);
    goto LABEL_13;
  }

  v25 = (*(v22 + 88))(v24, v21);
  v26 = v0[9];
  if (v25 != *MEMORY[0x277CEEAD0])
  {
    (*(v22 + 8))(v0[9], v21);
LABEL_13:
    v40 = v19;
    v41 = sub_241165268();
    v42 = sub_241166028();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v81[0] = v44;
      *v43 = 136315138;
      v45 = sub_241165328();
      v47 = sub_241156B38(v45, v46, v81);

      *(v43 + 4) = v47;
      _os_log_impl(&dword_2410F8000, v41, v42, "CommunicationMetadata nil for question %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x245CDC5E0](v44, -1, -1);
      MEMORY[0x245CDC5E0](v43, -1, -1);
    }

    else
    {
    }

LABEL_16:
    v54 = v0[8];
    v53 = v0[9];
    v55 = v0[7];

    v56 = v0[1];

    return v56();
  }

  v78 = v25;
  (*(v22 + 96))(v26, v21);
  v80 = *v26;
  v0[11] = *v26;
  v27 = v19;
  v28 = sub_241165268();
  v29 = sub_241166028();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v79 = v27;
    v31 = swift_slowAlloc();
    v81[0] = v31;
    *v30 = 136315138;
    v32 = sub_241165328();
    v34 = sub_241156B38(v32, v33, v81);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_2410F8000, v28, v29, "Processing received response for question %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v35 = v31;
    v27 = v79;
    MEMORY[0x245CDC5E0](v35, -1, -1);
    MEMORY[0x245CDC5E0](v30, -1, -1);
  }

  v36 = v0[7];
  v37 = v0[4];
  v38 = sub_241165328();
  v39 = *(v37 + 32);
  (*(v37 + 24))(v38);
  v48 = v0[7];

  v0[12] = sub_2411650E8();
  v0[13] = v49;
  (*(v0[6] + 8))(v0[7], v0[5]);
  v50 = sub_241164E38();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  sub_241164E28();
  sub_241165A58();
  sub_241161FAC(&qword_27E531390, MEMORY[0x277CEECD8]);
  sub_241164E18();
  v58 = v0[8];
  v59 = v0[3];

  v60 = v0[2];
  v0[14] = v60;
  v61 = sub_2411615C8(v60, v80);
  v0[15] = v61;
  v62 = sub_2411656C8();
  *v58 = v61;
  (*(v22 + 104))(v58, v78, v21);
  (*(v22 + 56))(v58, 0, 1, v21);
  v63 = v61;
  sub_2411652A8();

  v64 = v27;
  v65 = sub_241165268();
  v66 = sub_241166038();

  if (os_log_type_enabled(v65, v66))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v81[0] = v69;
    *v68 = 136315138;
    v70 = sub_241165328();
    v72 = sub_241156B38(v70, v71, v81);

    *(v68 + 4) = v72;
    _os_log_impl(&dword_2410F8000, v65, v66, "Successfully loaded existing metadata for question %s ", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x245CDC5E0](v69, -1, -1);
    MEMORY[0x245CDC5E0](v68, -1, -1);
  }

  v73 = sub_241165328();
  v75 = v74;
  v0[16] = v74;
  v76 = swift_task_alloc();
  v0[17] = v76;
  *v76 = v0;
  v76[1] = sub_2411606D0;
  v77 = v0[4];

  return sub_24113BB20(v73, v75);
}

uint64_t sub_2411606D0()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2411607E8, 0, 0);
}

uint64_t sub_2411607E8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  sub_2410FB5B8(v3, v4);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);

  v9 = *(v0 + 8);

  return v9();
}

char *sub_2411608BC(char *result, int64_t a2, char a3, char *a4)
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

size_t sub_2411609EC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
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
  v19 = *(a7(0) - 8);
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

size_t sub_241160BEC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

BOOL sub_241160DD4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - v4;
  v6 = sub_2411652E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  sub_241165298();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2411610E4(v5);
    v14 = 0;
  }

  else
  {
    v15 = *(v7 + 32);
    v15(v13, v5, v6);
    v15(v11, v13, v6);
    v14 = (*(v7 + 88))(v11, v6) == *MEMORY[0x277CEEAD0];
    (*(v7 + 8))(v11, v6);
  }

  if (qword_27E530618 != -1)
  {
    swift_once();
  }

  v16 = sub_241165288();
  __swift_project_value_buffer(v16, qword_27E533BB8);
  v17 = a1;
  v18 = sub_241165268();
  v19 = sub_241166038();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27 = v21;
    *v20 = 136315394;
    v22 = sub_241165328();
    v24 = sub_241156B38(v22, v23, &v27);

    *(v20 + 4) = v24;
    *(v20 + 12) = 1024;
    *(v20 + 14) = v14;
    _os_log_impl(&dword_2410F8000, v18, v19, "Can process question %s: %{BOOL}d", v20, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x245CDC5E0](v21, -1, -1);
    MEMORY[0x245CDC5E0](v20, -1, -1);
  }

  return v14;
}

uint64_t sub_2411610E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24116114C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v34 - v4;
  v6 = sub_2411652E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_241165298();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2411610E4(v5);
    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v14 = sub_241165288();
    __swift_project_value_buffer(v14, qword_27E533BB8);
    v15 = a1;
    v16 = sub_241165268();
    v17 = sub_241166038();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35 = v19;
      *v18 = 136315138;
      v20 = sub_241165328();
      v22 = sub_241156B38(v20, v21, &v35);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_2410F8000, v16, v17, "No topic metadata found for question %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x245CDC5E0](v19, -1, -1);
      MEMORY[0x245CDC5E0](v18, -1, -1);
    }
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    if ((*(v7 + 88))(v11, v6) == *MEMORY[0x277CEEAD0])
    {
      (*(v7 + 8))(v13, v6);
      (*(v7 + 96))(v11, v6);
      return *v11;
    }

    if (qword_27E530618 != -1)
    {
      swift_once();
    }

    v24 = sub_241165288();
    __swift_project_value_buffer(v24, qword_27E533BB8);
    v25 = a1;
    v26 = sub_241165268();
    v27 = sub_241166038();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v35 = v29;
      *v28 = 136315138;
      v30 = sub_241165328();
      v32 = sub_241156B38(v30, v31, &v35);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_2410F8000, v26, v27, "Unknown topic metadata type for question %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x245CDC5E0](v29, -1, -1);
      MEMORY[0x245CDC5E0](v28, -1, -1);
    }

    v33 = *(v7 + 8);
    v33(v13, v6);
    v33(v11, v6);
  }

  return 0;
}

uint64_t sub_2411615C8(uint64_t a1, uint64_t a2)
{
  v89 = a2;
  ObjectType = swift_getObjectType();
  v108 = sub_2411651A8();
  v2 = *(v108 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v108);
  v92 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v93 = &v88 - v7;
  MEMORY[0x28223BE20](v6);
  v110 = (&v88 - v8);
  v9 = sub_2411659F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v107 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v91 = &v88 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v109 = &v88 - v26;
  MEMORY[0x28223BE20](v25);
  v105 = &v88 - v27;
  v28 = sub_2410FBF00(MEMORY[0x277D84F90]);
  v29 = sub_241165A18();
  v30 = *(v29 + 16);
  v100 = v16;
  v101 = v21;
  v103 = v24;
  v96 = v2;
  if (v30)
  {
    v31 = 0;
    v104 = v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v106 = (v10 + 32);
    v95 = (v2 + 16);
    v98 = (v2 + 8);
    v99 = (v10 + 16);
    *&v94 = v10 + 40;
    v97 = v29;
    v102 = v10;
    while (v31 < *(v29 + 16))
    {
      v32 = *(v10 + 72);
      v33 = v105;
      (*(v10 + 16))(v105, v104 + v32 * v31, v9);
      v34 = v110;
      sub_2411659C8();
      v35 = *(v10 + 32);
      v35(v109, v33, v9);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v111 = v28;
      v37 = sub_2410FAE34(v34);
      v39 = v28[2];
      v40 = (v38 & 1) == 0;
      v41 = __OFADD__(v39, v40);
      v42 = v39 + v40;
      if (v41)
      {
        goto LABEL_35;
      }

      v43 = v38;
      if (v28[3] >= v42)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v37;
          sub_24115459C();
          v37 = v52;
        }
      }

      else
      {
        sub_2411527B8(v42, isUniquelyReferenced_nonNull_native);
        v37 = sub_2410FAE34(v110);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_37;
        }
      }

      v24 = v103;
      v28 = v111;
      if (v43)
      {
        (*v94)(v111[7] + v37 * v32, v109, v9);
        (*v98)(v110, v108);
      }

      else
      {
        v45 = v30;
        v111[(v37 >> 6) + 8] |= 1 << v37;
        v46 = v96;
        v47 = v37;
        v48 = v110;
        v49 = v108;
        (*(v96 + 16))(v28[6] + *(v96 + 72) * v37, v110, v108);
        v35((v28[7] + v47 * v32), v109, v9);
        (*(v46 + 8))(v48, v49);
        v50 = v28[2];
        v41 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v41)
        {
          goto LABEL_36;
        }

        v28[2] = v51;
        v24 = v103;
        v30 = v45;
      }

      ++v31;
      v21 = v101;
      v10 = v102;
      v29 = v97;
      if (v30 == v31)
      {

        v16 = v100;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    result = sub_241166428();
    __break(1u);
  }

  else
  {

LABEL_17:
    v53 = sub_241165A18();
    v55 = *(v53 + 16);
    v56 = v93;
    if (v55)
    {
      v58 = *(v10 + 16);
      v57 = v10 + 16;
      v109 = v58;
      v59 = (*(v57 + 64) + 32) & ~*(v57 + 64);
      v89 = v53;
      v97 = v59;
      v60 = v53 + v59;
      v98 = *(v57 + 56);
      v99 = (v96 + 8);
      v106 = (v57 - 8);
      v110 = MEMORY[0x277D84F90];
      v96 = v57 + 16;
      *&v54 = 136315138;
      v94 = v54;
      v102 = v57;
      do
      {
        v104 = v60;
        v105 = v55;
        v61 = v109;
        (v109)(v24);
        v61(v21, v24, v9);
        sub_2411659C8();
        if (v28[2] && (v62 = sub_2410FAE34(v56), (v63 & 1) != 0))
        {
          v64 = v91;
          (v109)(v91, v28[7] + v62 * v98, v9);
          (*v99)(v56, v108);
          sub_241165998();
          sub_2411659A8();
          v65 = *v106;
          (*v106)(v64, v9);
        }

        else
        {
          v66 = *v99;
          (*v99)(v56, v108);
          if (qword_27E530618 != -1)
          {
            swift_once();
          }

          v67 = sub_241165288();
          __swift_project_value_buffer(v67, qword_27E533BB8);
          (v109)(v16, v24, v9);
          v68 = sub_241165268();
          v69 = sub_241166048();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v111 = v95;
            *v70 = v94;
            v71 = v92;
            sub_2411659C8();
            sub_241161FAC(&qword_27E530C38, MEMORY[0x277CC95F0]);
            v72 = v108;
            v73 = sub_2411663B8();
            v75 = v74;
            v76 = v71;
            v24 = v103;
            v66(v76, v72);
            v65 = *v106;
            (*v106)(v100, v9);
            v77 = sub_241156B38(v73, v75, &v111);

            *(v70 + 4) = v77;
            _os_log_impl(&dword_2410F8000, v68, v69, "Could not find original person info for received person info with id %s", v70, 0xCu);
            v78 = v95;
            __swift_destroy_boxed_opaque_existential_1(v95);
            MEMORY[0x245CDC5E0](v78, -1, -1);
            v79 = v70;
            v56 = v93;
            MEMORY[0x245CDC5E0](v79, -1, -1);
          }

          else
          {

            v65 = *v106;
            (*v106)(v16, v9);
          }

          v21 = v101;
        }

        v80 = v110;
        (v109)(v107, v21, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = sub_2411609EC(0, v80[2] + 1, 1, v80, &qword_27E531398, &qword_241169EF0, MEMORY[0x277CEEC68]);
        }

        v82 = v80[2];
        v81 = v80[3];
        v110 = v80;
        if (v82 >= v81 >> 1)
        {
          v110 = sub_2411609EC(v81 > 1, v82 + 1, 1, v110, &qword_27E531398, &qword_241169EF0, MEMORY[0x277CEEC68]);
        }

        v65(v21, v9);
        v65(v24, v9);
        v83 = v110;
        v110[2] = v82 + 1;
        v84 = v98;
        (*v96)(&v83[v97 + v82 * v98], v107, v9);
        v60 = v84 + v104;
        v55 = v105 - 1;
        v16 = v100;
      }

      while (v105 != 1);
    }

    v85 = objc_allocWithZone(ObjectType);
    v86 = sub_241165A08();

    return v86;
  }

  return result;
}

uint64_t sub_241161FAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_241162014(uint64_t a1, void *a2, void *a3)
{
  v22 = a1;
  v23 = a3;
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(v5 + 16);
  v9(&v21 - v7, a1, v4);
  v10 = *(v5 + 80);
  v11 = swift_allocObject();
  v12 = *(v5 + 32);
  v12(v11 + ((v10 + 16) & ~v10), v8, v4);
  v29 = sub_241163474;
  v30 = v11;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_241100228;
  v28 = &block_descriptor_14;
  v13 = _Block_copy(&aBlock);

  v14 = [v21 remoteObjectProxyWithErrorHandler_];
  _Block_release(v13);
  sub_2411661A8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313C0, &unk_241169FD0);
  swift_dynamicCast();
  v15 = v24;
  v9(v8, v22, v4);
  v16 = swift_allocObject();
  v17 = v23;
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  v12(v16 + ((v10 + 32) & ~v10), v8, v4);
  v29 = sub_241163564;
  v30 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2410FF7EC;
  v28 = &block_descriptor_20;
  v18 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v19 = v17;

  [v15 wakeUpWithReply_];
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t sub_241162320(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  return sub_241165F68();
}

void sub_241162370(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - v9;
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v11 = sub_241165288();
  __swift_project_value_buffer(v11, qword_27E533AF8);
  v12 = sub_241165268();
  v13 = sub_241166068();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2410F8000, v12, v13, "Client process woke up!", v14, 2u);
    MEMORY[0x245CDC5E0](v14, -1, -1);
  }

  (*(v7 + 16))(v10, a3, v6);
  v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v15, v10, v6);
  aBlock[4] = sub_241163668;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_241162658;
  aBlock[3] = &block_descriptor_26_0;
  v17 = _Block_copy(aBlock);

  [a1 didReceiveResponse:a2 reply:v17];
  _Block_release(v17);
}

uint64_t sub_2411625E4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F68();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
    return sub_241165F78();
  }
}

void sub_241162658(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_2411626C4(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v6 = sub_241165288();
  __swift_project_value_buffer(v6, qword_27E533AF8);

  oslog = sub_241165268();
  v7 = sub_241166048();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_241156B38(a1, a2, &v11);
    _os_log_impl(&dword_2410F8000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x245CDC5E0](v9, -1, -1);
    MEMORY[0x245CDC5E0](v8, -1, -1);
  }
}

uint64_t sub_24116281C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_241106740;

  return sub_2411628C4(a3);
}

uint64_t sub_2411628E4()
{
  v56 = v0;
  v1 = v0 + 2;
  v2 = v0 + 8;
  v3 = v0[14];
  v4 = sub_2411656C8();
  v5 = sub_2411653A8();
  v0[15] = v5;

  v6 = sub_241165A68();
  v8 = v7;
  v9 = sub_241165368();
  v11 = v10;
  v54 = v6;
  v55 = v8;

  MEMORY[0x245CDB790](v9, v11);

  v13 = v6;
  v12 = v55;
  if (qword_27E5305D8 != -1)
  {
    swift_once();
  }

  v14 = sub_241165288();
  v0[16] = __swift_project_value_buffer(v14, qword_27E533AF8);

  v15 = sub_241165268();
  v16 = sub_241166068();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v54 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_241156B38(v13, v12, &v54);
    _os_log_impl(&dword_2410F8000, v15, v16, "Attempting to create connection with mach service name %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x245CDC5E0](v18, -1, -1);
    v19 = v17;
    v2 = v0 + 8;
    v1 = v0 + 2;
    MEMORY[0x245CDC5E0](v19, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v21 = sub_241165DA8();
  v22 = [v20 initWithMachServiceName:v21 options:0];
  v0[17] = v22;

  v23 = [objc_opt_self() interfaceWithProtocol_];
  [v22 setRemoteObjectInterface_];
  v24 = swift_allocObject();
  *(v24 + 16) = v13;
  *(v24 + 24) = v12;
  v0[6] = sub_241163408;
  v0[7] = v24;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_2410FF7EC;
  v0[5] = &block_descriptor_13;
  v25 = _Block_copy(v1);
  v26 = v0[7];

  [v22 setInterruptionHandler_];
  _Block_release(v25);
  v27 = swift_allocObject();
  *(v27 + 16) = v13;
  *(v27 + 24) = v12;
  v0[12] = sub_241163444;
  v0[13] = v27;
  v0[8] = MEMORY[0x277D85DD0];
  v0[9] = 1107296256;
  v0[10] = sub_2410FF7EC;
  v0[11] = &block_descriptor_7_0;
  v28 = _Block_copy(v2);
  v29 = v0[13];

  [v22 setInvalidationHandler_];
  _Block_release(v28);

  v30 = v5;
  v31 = sub_241165268();
  v32 = sub_241166068();

  v53 = v13;
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52 = v22;
    v35 = swift_slowAlloc();
    v54 = v35;
    *v33 = 138412546;
    *(v33 + 4) = v30;
    *v34 = v30;
    *(v33 + 12) = 2080;
    v36 = v30;
    *(v33 + 14) = sub_241156B38(v13, v12, &v54);
    _os_log_impl(&dword_2410F8000, v31, v32, "Created connection for topic %@ with mach service name %s", v33, 0x16u);
    sub_2410FDEB8(v34);
    MEMORY[0x245CDC5E0](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v35);
    v37 = v35;
    v22 = v52;
    MEMORY[0x245CDC5E0](v37, -1, -1);
    MEMORY[0x245CDC5E0](v33, -1, -1);
  }

  [v22 activate];

  v38 = v30;
  v39 = sub_241165268();
  v40 = sub_241166068();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54 = v43;
    *v41 = 138412546;
    *(v41 + 4) = v38;
    *v42 = v38;
    *(v41 + 12) = 2080;
    v44 = v38;
    v45 = sub_241156B38(v53, v12, &v54);

    *(v41 + 14) = v45;
    _os_log_impl(&dword_2410F8000, v39, v40, "Activated connection for topic %@ with mach service name %s", v41, 0x16u);
    sub_2410FDEB8(v42);
    MEMORY[0x245CDC5E0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x245CDC5E0](v43, -1, -1);
    MEMORY[0x245CDC5E0](v41, -1, -1);
  }

  else
  {
  }

  v46 = v0[14];
  v47 = swift_task_alloc();
  v0[18] = v47;
  *(v47 + 16) = v22;
  *(v47 + 24) = v46;
  v48 = *(MEMORY[0x277D85A40] + 4);
  v49 = swift_task_alloc();
  v0[19] = v49;
  *v49 = v0;
  v49[1] = sub_241162FB4;
  v50 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v49, 0, 0, 0xD00000000000002ALL, 0x800000024116CBB0, sub_241163468, v47, v50);
}

uint64_t sub_241162FB4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_241163218;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_2411630D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2411630D0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = sub_241165268();
  v4 = sub_241166068();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_2410F8000, v3, v4, "Successfully notified client of received response! response: %@", v6, 0xCu);
    sub_2410FDEB8(v7);
    MEMORY[0x245CDC5E0](v7, -1, -1);
    MEMORY[0x245CDC5E0](v6, -1, -1);
  }

  v9 = *(v0 + 136);
  v10 = *(v0 + 120);
  [v9 invalidate];

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_241163218()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[14];

  v5 = v4;
  v6 = v1;
  v7 = sub_241165268();
  v8 = sub_241166048();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[20];
  if (v9)
  {
    v11 = v0[14];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v15;
    v13[1] = v11;
    v16 = v11;
    _os_log_impl(&dword_2410F8000, v7, v8, "Failed to notified client of received response. error: %@, response: %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530E30, &qword_2411676F0);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v13, -1, -1);
    MEMORY[0x245CDC5E0](v12, -1, -1);
  }

  else
  {
  }

  v17 = v0[17];
  v18 = v0[15];
  [v17 invalidate];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2411633D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24116348C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_241163564()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_241162370(v2, v3, v4);
}

uint64_t objectdestroy_10Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_241163680(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530F70, &unk_241169240) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_241163738(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v165 = a5;
  v160 = a4;
  v169 = a2;
  v170 = a3;
  v173 = sub_2411651A8();
  v175 = *(v173 - 8);
  isa = v175[8].isa;
  MEMORY[0x28223BE20](v173);
  v174 = &v159 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2411658F8();
  v163 = *(v8 - 8);
  v164 = v8;
  v9 = *(v163 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v162 = &v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v161 = &v159 - v12;
  v13 = sub_2411659F8();
  v167 = *(v13 - 8);
  v168 = v13;
  v14 = *(v167 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v159 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E530CE8, &qword_241168400);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v171 = (&v159 - v19);
  if (qword_27E5305F8 != -1)
  {
    swift_once();
  }

  v20 = sub_241165288();
  __swift_project_value_buffer(v20, qword_27E533B58);
  v21 = a1;
  v22 = sub_241165268();
  v23 = sub_241166068();

  v24 = os_log_type_enabled(v22, v23);
  v166 = v16;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v177[0] = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_241156B38(0xD000000000000039, 0x800000024116CE80, v177);
    *(v25 + 12) = 2080;
    v27 = sub_2411656C8();
    v28 = sub_2411652B8();
    v30 = v29;

    v31 = sub_241156B38(v28, v30, v177);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2080;
    v32 = sub_2411656A8();
    v33 = sub_2411653F8();
    v35 = v34;

    v36 = sub_241156B38(v33, v35, v177);

    *(v25 + 24) = v36;
    _os_log_impl(&dword_2410F8000, v22, v23, "%s called. Question:%s answer: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x245CDC5E0](v26, -1, -1);
    MEMORY[0x245CDC5E0](v25, -1, -1);
  }

  v37 = sub_2411656C8();
  v38 = sub_2411652C8();

  if (v38)
  {
    if (sub_241165688())
    {
      v39 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
      v40 = sub_2411656C8();
      v41 = sub_2411652D8();

      if (v41)
      {
        v42 = sub_241165DA8();
        v43 = [objc_opt_self() iconForApplicationIdentifier_];

        [v39 setIcon_];
      }

      else
      {
        v61 = sub_241165DA8();
        v62 = [objc_opt_self() iconForApplicationIdentifier_];

        [v39 setIcon_];
      }

      v63 = sub_241165DA8();
      v64 = v39;
      [v39 setDefaultActionBundleIdentifier_];

      v65 = sub_2411656C8();
      v66 = v171;
      sub_241165298();

      v67 = sub_2411652E8();
      v68 = *(v67 - 8);
      v69 = (*(v68 + 48))(v66, 1, v67);
      v159 = v21;
      if (v69 == 1)
      {
        sub_2411610E4(v66);
LABEL_25:
        type metadata accessor for Localization();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v81 = objc_opt_self();
        v82 = [v81 bundleForClass_];
        sub_241164FA8();

        v83 = sub_241165DA8();

        [v39 setTitle_];

        v64 = v39;
        v84 = [v81 bundleForClass_];
        sub_241164FA8();

        v70 = sub_241165DA8();

        [v64 setBody_];
LABEL_50:

        v144 = v174;
        sub_241165198();
        sub_241165188();
        (v175[1].isa)(v144, v173);
        v145 = v64;
        v146 = sub_241165DA8();

        v147 = [objc_opt_self() requestWithIdentifier:v146 content:v145 trigger:0];

        v148 = v159;
        v149 = sub_241165268();
        v150 = sub_241166068();

        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v177[0] = v152;
          *v151 = 136315138;
          v153 = sub_2411656C8();
          v154 = sub_241165328();
          v156 = v155;

          v157 = sub_241156B38(v154, v156, v177);

          *(v151 + 4) = v157;
          _os_log_impl(&dword_2410F8000, v149, v150, "Question %s posted approval notification.", v151, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v152);
          MEMORY[0x245CDC5E0](v152, -1, -1);
          MEMORY[0x245CDC5E0](v151, -1, -1);
        }

        [*(v172 + OBJC_IVAR____TtC11AskToDaemon23NotificationsController_userNotificationCenter) addNotificationRequest:v147 withCompletionHandler:0];
        return;
      }

      if ((*(v68 + 88))(v66, v67) != *MEMORY[0x277CEEAD0])
      {
        (*(v68 + 8))(v66, v67);
        goto LABEL_25;
      }

      (*(v68 + 96))(v66, v67);
      v70 = *v66;
      type metadata accessor for Localization();
      v71 = swift_getObjCClassFromMetadata();
      v72 = objc_opt_self();
      v73 = [v72 bundleForClass_];
      sub_241164FA8();

      v74 = sub_241165DA8();

      [v64 setTitle_];

      v75 = sub_241165A18();
      if (!*(v75 + 16))
      {

        v85 = sub_241165268();
        v86 = sub_241166048();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&dword_2410F8000, v85, v86, "Original question had no person information. Using default notification text.", v87, 2u);
          MEMORY[0x245CDC5E0](v87, -1, -1);
        }

        v88 = [v72 bundleForClass_];
        sub_241164FA8();

        goto LABEL_49;
      }

      (*(v167 + 16))(v166, v75 + ((*(v167 + 80) + 32) & ~*(v167 + 80)), v168);

      v76 = sub_2411659D8();
      if (v77)
      {
        v78 = v76;
        v79 = v77;
      }

      else
      {
        v170 = v71;
        v171 = v72;
        v89 = sub_2411659E8();
        v169 = MEMORY[0x245CDB260]();
        v79 = v90;

        v91 = sub_2411659E8();
        v92 = v161;
        sub_241165908();

        v94 = v162;
        v93 = v163;
        v95 = v164;
        (*(v163 + 104))(v162, *MEMORY[0x277CEEC30], v164);
        sub_241164D6C();
        sub_241165EC8();
        sub_241165EC8();
        v96 = *(v93 + 8);
        v96(v94, v95);
        v96(v92, v95);
        if (v177[0] == v176)
        {
          v97 = objc_allocWithZone(MEMORY[0x277CBDB70]);
          v78 = v169;
          v98 = sub_241165DA8();
          v99 = [v97 initWithStringValue_];

          v100 = [v99 formattedStringValue];
          if (v100)
          {
            v78 = sub_241165DD8();
            v102 = v101;

            v79 = v102;
          }

          v71 = v170;
          v72 = v171;
        }

        else
        {
          v71 = v170;
          v72 = v171;
          v78 = v169;
        }
      }

      v103 = sub_2411656C8();
      v104 = sub_2411652D8();

      if (v104)
      {
        if (!v165)
        {
          v128 = *(sub_241165A18() + 16);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
          if (v128 < 2)
          {
            v158 = swift_allocObject();
            *(v158 + 16) = xmmword_2411673F0;
            *(v158 + 56) = MEMORY[0x277D837D0];
            *(v158 + 64) = sub_241164DC4();
            *(v158 + 32) = v78;
            *(v158 + 40) = v79;
          }

          else
          {
            v129 = swift_allocObject();
            *(v129 + 16) = xmmword_241167EC0;
            v130 = v78;
            v131 = v70;
            v132 = v64;
            v133 = MEMORY[0x277D837D0];
            *(v129 + 56) = MEMORY[0x277D837D0];
            v134 = sub_241164DC4();
            *(v129 + 64) = v134;
            *(v129 + 32) = v130;
            *(v129 + 40) = v79;
            v135 = *(sub_241165A18() + 16);

            v177[0] = v135 - 1;
            v136 = sub_2411663B8();
            *(v129 + 96) = v133;
            *(v129 + 104) = v134;
            v64 = v132;
            v70 = v131;
            *(v129 + 72) = v136;
            *(v129 + 80) = v137;
          }

          v138 = [v72 bundleForClass_];
          goto LABEL_48;
        }

        v171 = v72;
        v105 = v165;

        v106 = *(sub_241165A18() + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
        if (v106 < 2)
        {
          v139 = swift_allocObject();
          *(v139 + 16) = xmmword_241167EC0;
          v140 = MEMORY[0x277D837D0];
          *(v139 + 56) = MEMORY[0x277D837D0];
          v141 = sub_241164DC4();
          *(v139 + 32) = v78;
          *(v139 + 40) = v79;
          *(v139 + 96) = v140;
          *(v139 + 104) = v141;
          v142 = v160;
          *(v139 + 64) = v141;
          *(v139 + 72) = v142;
          *(v139 + 80) = v105;
        }

        else
        {
          v107 = swift_allocObject();
          *(v107 + 16) = xmmword_241169FE0;
          v108 = v78;
          v109 = v64;
          v110 = MEMORY[0x277D837D0];
          *(v107 + 56) = MEMORY[0x277D837D0];
          v111 = sub_241164DC4();
          *(v107 + 64) = v111;
          *(v107 + 32) = v108;
          *(v107 + 40) = v79;
          v112 = *(sub_241165A18() + 16);

          v177[0] = v112 - 1;
          v113 = sub_2411663B8();
          *(v107 + 96) = v110;
          *(v107 + 104) = v111;
          *(v107 + 72) = v113;
          *(v107 + 80) = v114;
          *(v107 + 136) = v110;
          *(v107 + 144) = v111;
          v64 = v109;
          *(v107 + 112) = v160;
          *(v107 + 120) = v105;
        }

        v115 = v171;

        v116 = [v115 bundleForClass_];
      }

      else
      {
        v117 = *(sub_241165A18() + 16);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5313D8, &unk_24116A030);
        if (v117 < 2)
        {
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_2411673F0;
          *(v127 + 56) = MEMORY[0x277D837D0];
          *(v127 + 64) = sub_241164DC4();
          *(v127 + 32) = v78;
          *(v127 + 40) = v79;
        }

        else
        {
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_241167EC0;
          v119 = v78;
          v120 = v70;
          v121 = v64;
          v122 = MEMORY[0x277D837D0];
          *(v118 + 56) = MEMORY[0x277D837D0];
          v123 = sub_241164DC4();
          *(v118 + 64) = v123;
          *(v118 + 32) = v119;
          *(v118 + 40) = v79;
          v124 = *(sub_241165A18() + 16);

          v177[0] = v124 - 1;
          v125 = sub_2411663B8();
          *(v118 + 96) = v122;
          *(v118 + 104) = v123;
          v64 = v121;
          v70 = v120;
          *(v118 + 72) = v125;
          *(v118 + 80) = v126;
        }

        v116 = [v72 bundleForClass_];
      }

      v138 = v116;
LABEL_48:
      sub_241164FA8();

      sub_241165DB8();

      (*(v167 + 8))(v166, v168);
LABEL_49:
      v143 = sub_241165DA8();

      [v64 setBody_];

      goto LABEL_50;
    }

    v54 = v21;
    v175 = sub_241165268();
    v45 = sub_241166068();

    if (os_log_type_enabled(v175, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v177[0] = v47;
      *v46 = 136315138;
      v55 = sub_2411656C8();
      v56 = sub_241165328();
      v58 = v57;

      v59 = sub_241156B38(v56, v58, v177);

      *(v46 + 4) = v59;
      v53 = "Question %s not an approval, no notification.";
      goto LABEL_13;
    }
  }

  else
  {
    v44 = v21;
    v175 = sub_241165268();
    v45 = sub_241166048();

    if (os_log_type_enabled(v175, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v177[0] = v47;
      *v46 = 136315138;
      v48 = sub_2411656C8();
      v49 = sub_241165328();
      v51 = v50;

      v52 = sub_241156B38(v49, v51, v177);

      *(v46 + 4) = v52;
      v53 = "Question %s was not a communication question";
LABEL_13:
      _os_log_impl(&dword_2410F8000, v175, v45, v53, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x245CDC5E0](v47, -1, -1);
      MEMORY[0x245CDC5E0](v46, -1, -1);

      return;
    }
  }

  v60 = v175;
}

id sub_241164C00()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Localization();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_241164C5C()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationsController()) init];
  qword_27E533C00 = result;
  return result;
}

unint64_t sub_241164D6C()
{
  result = qword_27E5313D0;
  if (!qword_27E5313D0)
  {
    sub_2411658F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5313D0);
  }

  return result;
}

unint64_t sub_241164DC4()
{
  result = qword_27E5313E0;
  if (!qword_27E5313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5313E0);
  }

  return result;
}