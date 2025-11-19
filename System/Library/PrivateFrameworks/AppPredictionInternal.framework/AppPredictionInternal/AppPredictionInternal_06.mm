id sub_2267B7230()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_2267B72C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineSuggestionStore();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2267B7394(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_2263B9740(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_2267B7CCC(v15, v4 & 1);
    v17 = *a3;
    v10 = sub_2263B9740(v6, v5);
    if ((v16 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_226836BA8();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_2267B78B0();
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v6;
  v23[1] = v5;
  v24 = (v22[7] + 16 * v10);
  *v24 = v7;
  v24[1] = v8;
  v25 = v22[2];
  v14 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_226836968();
    MEMORY[0x22AA7F8E0](0xD00000000000001BLL, 0x80000002268CE560);
    sub_226836A48();
    MEMORY[0x22AA7F8E0](39, 0xE100000000000000);
    sub_226836A58();
    __break(1u);
    return;
  }

  v22[2] = v26;
  if (v41 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v27 = *(v4 - 1);
      v8 = *v4;
      v28 = *a3;

      v29 = sub_2263B9740(v6, v5);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v14 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v30;
      if (v28[3] < v33)
      {
        sub_2267B7CCC(v33, 1);
        v34 = *a3;
        v29 = sub_2263B9740(v6, v5);
        if ((v16 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v6;
      v37[1] = v5;
      v38 = (v36[7] + 16 * v29);
      *v38 = v27;
      v38[1] = v8;
      v39 = v36[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v36[2] = v40;
      v4 += 4;
      if (v41 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

id sub_2267B7744()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

void *sub_2267B78B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1CB0, &unk_226874170);
  v2 = *v0;
  v3 = sub_226836A98();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

uint64_t sub_2267B7A28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A23B0, qword_226873D30);
  v39 = a2;
  result = sub_226836AA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2267B7CCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1CB0, &unk_226874170);
  v40 = a2;
  result = sub_226836AA8();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_226836C08();
      sub_226836498();
      result = sub_226836C48();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_2267B7F8C(void *a1, int64_t a2, char a3)
{
  result = sub_2267B7FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2267B7FAC(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D40, &qword_226873F50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D48, &qword_226873F58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2267B80E0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_2267B818C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1DA8, qword_226873F70);
    v3 = sub_226836948();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      sub_226836C08();
      MEMORY[0x22AA80040](v10);
      result = sub_226836C48();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
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

  return MEMORY[0x277D84FA0];
}

id sub_2267B82EC()
{
  if (qword_27D7A3850 != -1)
  {
    swift_once();
  }

  v0 = qword_27D7A3858;
  v1 = sub_2268363F8();
  v2 = [v0 dataForKey_];

  if (v2)
  {
    v3 = sub_226835148();
    v5 = v4;

    sub_2263B5030(0, &unk_27D7A1D50, 0x277CCAAC8);
    sub_226835CA8();
    v2 = sub_2268366F8();
    sub_2267A1D24(v3, v5);
  }

  return v2;
}

unint64_t sub_2267B8438()
{
  result = qword_27D7A1CB8;
  if (!qword_27D7A1CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7A1CC0, qword_226873D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1CB8);
  }

  return result;
}

uint64_t sub_2267B84B0(uint64_t *a1, unsigned int a2)
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

uint64_t sub_2267B850C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2267B858C(uint64_t a1, int a2)
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

uint64_t sub_2267B85AC(uint64_t result, int a2, int a3)
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

unint64_t sub_2267B8630()
{
  result = qword_27D7A1D80;
  if (!qword_27D7A1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1D80);
  }

  return result;
}

unint64_t sub_2267B8684()
{
  result = qword_27D7A1D88;
  if (!qword_27D7A1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A1D88);
  }

  return result;
}

uint64_t sub_2267B86F4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226836B58() & 1;
  }
}

uint64_t RelevantShortcutCandidate.donationBundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier + 8);

  return v1;
}

void *RelevantShortcutCandidate.intent.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_intent);
  v2 = v1;
  return v1;
}

id RelevantShortcutCandidate.__allocating_init(widgetDescriptor:donationBundleIdentifier:intent:relevantContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor] = a1;
  v12 = &v11[OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier];
  *v12 = a2;
  *(v12 + 1) = a3;
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_intent] = a4;
  *&v11[OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id RelevantShortcutCandidate.init(widgetDescriptor:donationBundleIdentifier:intent:relevantContexts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor] = a1;
  v6 = &v5[OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier];
  *v6 = a2;
  *(v6 + 1) = a3;
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_intent] = a4;
  *&v5[OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts] = a5;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for RelevantShortcutCandidate();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_2267B8AD4@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for RelevantShortcutCandidate();
  *a1 = v3;

  return v3;
}

uint64_t sub_2267B8B8C()
{
  v1 = v0;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD000000000000026, 0x80000002268CE580);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier), *(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_donationBundleIdentifier + 8));
  MEMORY[0x22AA7F8E0](0x746567646977203BLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___ATXRelevantShortcutCandidate_widgetDescriptor);
  v3 = [v2 extensionBundleIdentifier];
  v4 = sub_226836408();
  v6 = v5;

  MEMORY[0x22AA7F8E0](v4, v6);

  MEMORY[0x22AA7F8E0](0x203A646E696B203BLL, 0xE800000000000000);
  v7 = [v2 kind];
  v8 = sub_226836408();
  v10 = v9;

  MEMORY[0x22AA7F8E0](v8, v10);

  MEMORY[0x22AA7F8E0](0xD000000000000015, 0x80000002268CE5B0);
  v11 = *(v1 + OBJC_IVAR___ATXRelevantShortcutCandidate_relevantContexts);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1E40, qword_226873F88);
  v13 = MEMORY[0x22AA7F9A0](v11, v12);
  MEMORY[0x22AA7F8E0](v13);

  MEMORY[0x22AA7F8E0](62, 0xE100000000000000);
  return 0;
}

id RelevantShortcutCandidate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RelevantShortcutCandidate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RelevantShortcutCandidate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2267B8EF8()
{
  v1 = OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener;
  v2 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener);
  }

  else
  {
    sub_226835EF8();
    v4 = objc_allocWithZone(MEMORY[0x277CCAE98]);
    v5 = sub_2268363F8();

    v6 = [v4 initWithMachServiceName_];

    [v6 setDelegate_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2267B8FC0()
{
  v1 = v0 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v3 = *(v1 + 8);
  return result;
}

uint64_t sub_2267B9010(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2267B907C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_2267B5950;
}

id sub_2267B9160(void *a1)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer____lazy_storage___xpcListener] = 0;
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore] = a1;
  v9 = type metadata accessor for ContextualEngineInternalServer();
  v18.receiver = v1;
  v18.super_class = v9;
  v10 = a1;
  v11 = objc_msgSendSuper2(&v18, sel_init);
  v12 = sub_2263B7458();
  (*(v4 + 16))(v8, v12, v3);
  v13 = sub_226836038();
  v14 = sub_2268366E8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2263AA000, v13, v14, "ContextualEngineInternalServer init", v15, 2u);
    MEMORY[0x22AA821D0](v15, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  v16 = sub_2267B8EF8();
  [v16 resume];

  return v11;
}

uint64_t sub_2267B93B4(uint64_t (*a1)(void), const char *a2)
{
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2263B7458();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_226836038();
  v12 = a1();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, a2, v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_2267B9594()
{
  v1 = (*((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xB0))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2267B97A8(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2267B9820, 0, 0);
}

uint64_t sub_2267B9820()
{
  v2 = v0[2];
  v1 = v0[3];
  (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore]) + 0xB0))();

  sub_226835CA8();
  v3 = sub_226836348();

  (v1)[2](v1, v3, 0);

  _Block_release(v1);
  v4 = v0[1];

  return v4();
}

uint64_t sub_2267B9940()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xF8);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2267B9A70;

  return v5();
}

uint64_t sub_2267B9A70(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2267B9CE4(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2267B9D5C, 0, 0);
}

uint64_t sub_2267B9D5C()
{
  v1 = *((*MEMORY[0x277D85000] & **(*(v0 + 16) + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0xF8);
  v5 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_2267B9E8C;

  return v5();
}

uint64_t sub_2267B9E8C(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v4)[2](v4, a1, 0);
  _Block_release(v4);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2267B9FDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2267B9FFC, 0, 0);
}

uint64_t sub_2267B9FFC()
{
  v1 = *((*MEMORY[0x277D85000] & **(v0[3] + OBJC_IVAR____TtC21AppPredictionInternal30ContextualEngineInternalServer_suggestionStore)) + 0x100);
  v6 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2267BA13C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_2267BA13C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2267BA238, 0, 0);
}

uint64_t sub_2267BA238()
{
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 24)) + 0x80))();
  *(v0 + 40) = v2;
  if (v2)
  {
    v3 = v1;
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 8);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    *(v0 + 48) = v7;
    *v7 = v0;
    v7[1] = sub_2267BA3D0;

    return v10(ObjectType, v3);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_2267BA3D0()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2267BA50C, 0, 0);
  }

  else
  {
    v4 = v3[5];
    swift_unknownObjectRelease();
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2267BA50C()
{
  v1 = v0[5];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2267BA6F8(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2267BA7BC;

  return sub_2267B9FDC(v6);
}

uint64_t sub_2267BA7BC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 24);
  v7 = *(*v1 + 16);
  v8 = *v1;

  v9 = *(v3 + 32);
  if (v2)
  {
    v10 = sub_226835018();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 32), 0);
  }

  _Block_release(*(v4 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_2267BA958()
{
  v1[2] = v0;
  v2 = sub_226836068();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BAA18, 0, 0);
}

uint64_t sub_2267BAA18()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_2263B7458();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_226836038();
  v6 = sub_2268366E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2263AA000, v5, v6, "ContextualEngineInternalServer: update()", v7, 2u);
    MEMORY[0x22AA821D0](v7, -1, -1);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  v12 = (*(v9 + 8))(v8, v11);
  v14 = (*((*MEMORY[0x277D85000] & *v10) + 0x80))(v12);
  v0[6] = v14;
  if (v14)
  {
    v15 = v13;
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 8);
    v23 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[7] = v19;
    *v19 = v0;
    v19[1] = sub_2267BAC74;

    return v23(ObjectType, v15);
  }

  else
  {
    v21 = v0[5];

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_2267BAC74()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2267BADB8, 0, 0);
  }

  else
  {
    v4 = v3[6];
    swift_unknownObjectRelease();
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2267BADB8()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_2267BAF98(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_2267BB040;

  return sub_2267BA958();
}

uint64_t sub_2267BB040()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_226835018();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

id sub_2267BB224()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextualEngineInternalServer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267BB2B4(void *a1)
{
  v2 = v1;
  v4 = sub_226836068();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2263B7458();
  (*(v5 + 16))(v9, v10, v4);
  v11 = sub_226836038();
  v12 = sub_2268366E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_2263AA000, v11, v12, "ContextualEngineInternalServer: incoming connection", v13, 2u);
    MEMORY[0x22AA821D0](v13, -1, -1);
  }

  (*(v5 + 8))(v9, v4);
  v14 = sub_226835E88();
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v22 = sub_2267B9374;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22679BFD8;
  v21 = &block_descriptor_3;
  v15 = _Block_copy(&aBlock);
  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v22 = sub_2267B9394;
  v23 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_22679BFD8;
  v21 = &block_descriptor_79;
  v16 = _Block_copy(&aBlock);
  [a1 setInvalidationHandler_];
  _Block_release(v16);
  [a1 resume];
  return 1;
}

uint64_t sub_2267BB558(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2263BA0A4;

  return v9(a1, a2);
}

uint64_t sub_2267BB670()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267BAF98(v2, v3);
}

uint64_t sub_2267BB71C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2267A1ED0;

  return sub_2267BA6F8(v2, v3, v4);
}

uint64_t sub_2267BB7D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2267A1ED0;

  return sub_2267B9CE4(v2, v3);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2267BB8BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2267B97A8(v2, v3);
}

id ATXCompanionBundleIdMapper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ATXCompanionBundleIdMapper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATXCompanionBundleIdMapper();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ATXCompanionBundleIdMapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ATXCompanionBundleIdMapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2267BBAD4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2268368A8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_226836C08();

      sub_226836498();
      v13 = sub_226836C48();

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

uint64_t _s21AppPredictionInternal26ATXCompanionBundleIdMapperC15generateMapping3forSDyS2SGSaySSG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = objc_opt_self();
  v4 = (a1 + 40);
  v5 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = *(v4 - 1);
    v9 = *v4;

    v11 = sub_2268363F8();
    v12 = [v3 companionBundleIdForBundleId_];

    if (!v12)
    {
      v25 = sub_2263B9740(v10, v9);
      v27 = v26;

      if (v27)
      {
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_2267B78B0();
        }

        v28 = *(v5[6] + 16 * v25 + 8);

        v29 = *(v5[7] + 16 * v25 + 8);

        sub_2267BBAD4(v25, v5);
      }

      goto LABEL_4;
    }

    v13 = sub_226836408();
    v15 = v14;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_2263B9740(v10, v9);
    v19 = v5[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v5[3] < v22)
    {
      sub_2267B7CCC(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_2263B9740(v10, v9);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_24;
      }

LABEL_15:
      if (v23)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v34 = v17;
    sub_2267B78B0();
    v17 = v34;
    if (v23)
    {
LABEL_3:
      v6 = v17;

      v7 = (v5[7] + 16 * v6);
      v8 = v7[1];
      *v7 = v13;
      v7[1] = v15;

      goto LABEL_4;
    }

LABEL_16:
    v5[(v17 >> 6) + 8] |= 1 << v17;
    v30 = (v5[6] + 16 * v17);
    *v30 = v10;
    v30[1] = v9;
    v31 = (v5[7] + 16 * v17);
    *v31 = v13;
    v31[1] = v15;
    v32 = v5[2];
    v21 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v21)
    {
      goto LABEL_23;
    }

    v5[2] = v33;
LABEL_4:
    v4 += 2;
    if (!--v1)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_226836BA8();
  __break(1u);
  return result;
}

uint64_t sub_2267BBF1C@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  swift_beginAccess();
  sub_2267A1AF8(v1 + v3, &v8, &qword_27D7A1A60, &unk_2268732B0);
  if (v9)
  {
    return sub_2267A1ED8(&v8, a1);
  }

  v5 = sub_2268359D8();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  result = sub_2268359C8();
  a1[3] = v5;
  a1[4] = &off_2839962C8;
  *a1 = result;
  if (v9)
  {
    return sub_2267A1DC0(&v8, &qword_27D7A1A60, &unk_2268732B0);
  }

  return result;
}

id sub_2267BBFEC(__int128 *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  sub_2267A1ED8(a1, v7);
  v4 = OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  swift_beginAccess();
  v5 = v3;
  sub_22679CE58(v7, v3 + v4);
  swift_endAccess();

  return v5;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.entityIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier);
  v2 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier + 8);

  return v1;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.entityType.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType);
  v2 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType + 8);

  return v1;
}

uint64_t AppEntityContext.SelectedHydratedAppEntity.displayRepresentation.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation);
  v2 = *(v0 + OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation + 8);

  return v1;
}

id sub_2267BC154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(v7);
  v14 = OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue;
  v15 = sub_2268361B8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a1, v15);
  v17 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &v13[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
  *v19 = a6;
  *(v19 + 1) = a7;
  v24.receiver = v13;
  v24.super_class = v7;
  v20 = objc_msgSendSuper2(&v24, sel_init);
  (*(v16 + 8))(a1, v15);
  return v20;
}

id sub_2267BC280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue;
  v15 = sub_2268361B8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v7[v14], a1, v15);
  v17 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
  *v17 = a2;
  *(v17 + 1) = a3;
  v18 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
  *v18 = a4;
  *(v18 + 1) = a5;
  v19 = &v7[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
  *v19 = a6;
  *(v19 + 1) = a7;
  v23.receiver = v7;
  v23.super_class = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
  v20 = objc_msgSendSuper2(&v23, sel_init);
  (*(v16 + 8))(a1, v15);
  return v20;
}

id AppEntityContext.SelectedHydratedAppEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AppEntityContext.OnScreenSelectedContent.selectedText.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXOnScreenSelectedContent_selectedText);
  v2 = *(v0 + OBJC_IVAR___ATXOnScreenSelectedContent_selectedText + 8);

  return v1;
}

id AppEntityContext.OnScreenSelectedContent.__allocating_init(selectedText:selectedAppEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id AppEntityContext.OnScreenSelectedContent.init(selectedText:selectedAppEntities:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = &v3[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_2267BC6E4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t AppEntityContext.AppEntity.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_bundleID);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_bundleID + 8);

  return v1;
}

uint64_t AppEntityContext.AppEntity.type.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_type);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_type + 8);

  return v1;
}

uint64_t AppEntityContext.AppEntity.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_identifier);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_identifier + 8);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle + 8);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationSubtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle + 8);

  return v1;
}

uint64_t AppEntityContext.AppEntity.displayRepresentationAltText.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationAltText);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationAltText + 8);

  return v1;
}

uint64_t sub_2267BC904@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id sub_2267BC98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v22 = objc_allocWithZone(v15);
  v23 = &v22[OBJC_IVAR___ATXAppEntity_bundleID];
  *v23 = a1;
  v23[1] = a2;
  v24 = &v22[OBJC_IVAR___ATXAppEntity_type];
  *v24 = a3;
  v24[1] = a4;
  v25 = &v22[OBJC_IVAR___ATXAppEntity_identifier];
  *v25 = a5;
  v25[1] = a6;
  v26 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v26 = a7;
  v26[1] = a8;
  v27 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  *v27 = a9;
  v27[1] = a10;
  v28 = &v22[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  *v28 = a11;
  v28[1] = a12;
  *&v22[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = a13;
  v29 = OBJC_IVAR___ATXAppEntity_appEntityValue;
  v30 = sub_226836168();
  v31 = *(v30 - 8);
  (*(v31 + 16))(&v22[v29], a14, v30);
  v22[OBJC_IVAR___ATXAppEntity_isSelected] = a15;
  v37.receiver = v22;
  v37.super_class = v36;
  v32 = objc_msgSendSuper2(&v37, sel_init);
  (*(v31 + 8))(a14, v30);
  return v32;
}

id sub_2267BCB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  v16 = &v15[OBJC_IVAR___ATXAppEntity_bundleID];
  *v16 = a1;
  v16[1] = a2;
  v17 = &v15[OBJC_IVAR___ATXAppEntity_type];
  *v17 = a3;
  v17[1] = a4;
  v18 = &v15[OBJC_IVAR___ATXAppEntity_identifier];
  *v18 = a5;
  v18[1] = a6;
  v19 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v19 = a7;
  v19[1] = a8;
  v20 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  *v20 = a9;
  v20[1] = a10;
  v21 = &v15[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  *v21 = a11;
  v21[1] = a12;
  *&v15[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = a13;
  v22 = OBJC_IVAR___ATXAppEntity_appEntityValue;
  v23 = sub_226836168();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v15[v22], a14, v23);
  v15[OBJC_IVAR___ATXAppEntity_isSelected] = a15;
  v27.receiver = v15;
  v27.super_class = type metadata accessor for AppEntityContext.AppEntity(0);
  v25 = objc_msgSendSuper2(&v27, sel_init);
  (*(v24 + 8))(a14, v23);
  return v25;
}

uint64_t sub_2267BCCC0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267BCCF8(uint64_t a1)
{
  sub_2267A1AF8(a1, v8, &qword_27D7A1AA0, &qword_2268732C0);
  if (!v9)
  {
    sub_2267A1DC0(v8, &qword_27D7A1AA0, &qword_2268732C0);
    goto LABEL_20;
  }

  type metadata accessor for AppEntityContext.AppEntity(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v5 = 0;
    return v5 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___ATXAppEntity_identifier) == *&v7[OBJC_IVAR___ATXAppEntity_identifier] && *(v1 + OBJC_IVAR___ATXAppEntity_identifier + 8) == *&v7[OBJC_IVAR___ATXAppEntity_identifier + 8];
  if (!v2 && (sub_226836B58() & 1) == 0 || (*(v1 + OBJC_IVAR___ATXAppEntity_bundleID) == *&v7[OBJC_IVAR___ATXAppEntity_bundleID] ? (v3 = *(v1 + OBJC_IVAR___ATXAppEntity_bundleID + 8) == *&v7[OBJC_IVAR___ATXAppEntity_bundleID + 8]) : (v3 = 0), !v3 && (sub_226836B58() & 1) == 0))
  {

    goto LABEL_20;
  }

  if (*(v1 + OBJC_IVAR___ATXAppEntity_type) == *&v7[OBJC_IVAR___ATXAppEntity_type] && *(v1 + OBJC_IVAR___ATXAppEntity_type + 8) == *&v7[OBJC_IVAR___ATXAppEntity_type + 8])
  {

    v5 = 1;
  }

  else
  {
    v5 = sub_226836B58();
  }

  return v5 & 1;
}

uint64_t sub_2267BCF6C()
{
  sub_226836C58();
  v1 = *(v0 + OBJC_IVAR___ATXAppEntity_identifier);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_identifier + 8);
  sub_226836498();
  v3 = *(v0 + OBJC_IVAR___ATXAppEntity_bundleID);
  v4 = *(v0 + OBJC_IVAR___ATXAppEntity_bundleID + 8);
  sub_226836498();
  v5 = *(v0 + OBJC_IVAR___ATXAppEntity_type);
  v6 = *(v0 + OBJC_IVAR___ATXAppEntity_type + 8);
  sub_226836498();
  return sub_226836C38();
}

uint64_t sub_2267BD088()
{
  v1 = v0;
  sub_226836968();
  MEMORY[0x22AA7F8E0](0xD000000000000017, 0x80000002268CE980);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXAppEntity_bundleID), *(v1 + OBJC_IVAR___ATXAppEntity_bundleID + 8));
  MEMORY[0x22AA7F8E0](0x203A65707974202CLL, 0xE800000000000000);
  MEMORY[0x22AA7F8E0](*(v1 + OBJC_IVAR___ATXAppEntity_type), *(v1 + OBJC_IVAR___ATXAppEntity_type + 8));
  MEMORY[0x22AA7F8E0](0x656C74697420202CLL, 0xEA0000000000203ALL);
  v2 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle + 8);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle);
  }

  else
  {
    v3 = 0;
  }

  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationTitle + 8);
  }

  else
  {
    v4 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v3, v4);

  MEMORY[0x22AA7F8E0](0x746974627573202CLL, 0xEC000000203A656CLL);
  v5 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = *(v0 + OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle + 8);
  }

  else
  {
    v7 = 0xE000000000000000;
  }

  MEMORY[0x22AA7F8E0](v6, v7);

  MEMORY[0x22AA7F8E0](0x69746E656469202CLL, 0xEE00203A72656966);
  MEMORY[0x22AA7F8E0](*(v0 + OBJC_IVAR___ATXAppEntity_identifier), *(v0 + OBJC_IVAR___ATXAppEntity_identifier + 8));
  return 0;
}

uint64_t sub_2267BD3B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_226835FB8();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BD478, 0, 0);
}

uint64_t sub_2267BD478()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v12 = *(v0 + 32);
  v5 = objc_opt_self();
  *(v0 + 72) = v5;
  MEMORY[0x22AA7F8E0](v4, v12);
  v6 = sub_2268363F8();

  [v5 logCurrentMemoryFootprint_];

  v7 = sub_2267991D0();
  (*(v2 + 16))(v1, v7, v3);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  *(v8 + 16) = v4;
  *(v8 + 24) = v12;
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  *v9 = v0;
  v9[1] = sub_2267BD620;
  v10 = *(v0 + 64);

  return sub_226798CF8(v0 + 16, "AppEntityContext.fetchOnScreenContext", 37, 2, &unk_2268741A0, v8);
}

uint64_t sub_2267BD620()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_2267BD88C;
  }

  else
  {
    v7 = sub_2267BD7B4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2267BD7B4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[2];
  MEMORY[0x22AA7F8E0](v0[3], v0[4]);
  v4 = sub_2268363F8();

  [v1 logCurrentMemoryFootprint_];

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_2267BD88C()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2267BD8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BD990, 0, 0);
}

uint64_t sub_2267BD990()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_226836608();
  v5 = sub_226836628();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v2;

  v7 = v2;
  v8 = sub_2267C0858(0, 0, v1, &unk_226874400, v6);
  v0[7] = v8;
  v9 = *(MEMORY[0x277D857C8] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  v11 = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1D38, &unk_226874A70);
  *v10 = v0;
  v10[1] = sub_2267BDB18;
  v13 = v0[2];
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v13, v8, v11, v12, v14);
}

uint64_t sub_2267BDB18()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_2267BDC98;
  }

  else
  {
    v3 = sub_2267BDC2C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2267BDC2C()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2267BDC98()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t sub_2267BDD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[26] = a5;
  v6[27] = a6;
  v6[24] = a1;
  v6[25] = a4;
  v7 = sub_2268361D8();
  v6[28] = v7;
  v8 = *(v7 - 8);
  v6[29] = v8;
  v9 = *(v8 + 64) + 15;
  v6[30] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2010, &qword_2268743A8) - 8) + 64) + 15;
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v11 = sub_226836168();
  v6[34] = v11;
  v12 = *(v11 - 8);
  v6[35] = v12;
  v13 = *(v12 + 64) + 15;
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v14 = sub_2268361A8();
  v6[38] = v14;
  v15 = *(v14 - 8);
  v6[39] = v15;
  v16 = *(v15 + 64) + 15;
  v6[40] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2070, &qword_226874410) - 8) + 64) + 15;
  v6[41] = swift_task_alloc();
  v18 = sub_2268361B8();
  v6[42] = v18;
  v19 = *(v18 - 8);
  v6[43] = v19;
  v20 = *(v19 + 64) + 15;
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2078, qword_226874418) - 8) + 64) + 15;
  v6[50] = swift_task_alloc();
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v22 = sub_226836068();
  v6[53] = v22;
  v23 = *(v22 - 8);
  v6[54] = v23;
  v24 = *(v23 + 64) + 15;
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v25 = sub_226835618();
  v6[58] = v25;
  v26 = *(v25 - 8);
  v6[59] = v26;
  v27 = *(v26 + 64) + 15;
  v6[60] = swift_task_alloc();
  v28 = sub_226835638();
  v6[61] = v28;
  v29 = *(v28 - 8);
  v6[62] = v29;
  v30 = *(v29 + 64) + 15;
  v6[63] = swift_task_alloc();
  v31 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F90, &qword_2268741B0) - 8) + 64) + 15;
  v6[64] = swift_task_alloc();
  v32 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F98, &qword_2268741B8) - 8) + 64) + 15;
  v6[65] = swift_task_alloc();
  v33 = sub_226835668();
  v6[66] = v33;
  v34 = *(v33 - 8);
  v6[67] = v34;
  v35 = *(v34 + 64) + 15;
  v6[68] = swift_task_alloc();
  v36 = sub_226835568();
  v6[69] = v36;
  v37 = *(v36 - 8);
  v6[70] = v37;
  v38 = *(v37 + 64) + 15;
  v6[71] = swift_task_alloc();
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = swift_task_alloc();
  v6[75] = swift_task_alloc();
  v39 = sub_2268355F8();
  v6[76] = v39;
  v40 = *(v39 - 8);
  v6[77] = v40;
  v41 = *(v40 + 64) + 15;
  v6[78] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267BE2DC, 0, 0);
}

uint64_t sub_2267BE2DC()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA0, &qword_2268741C0);
  v3 = *(v1 + 72);
  *(v0 + 632) = v3;
  v4 = *(v1 + 80);
  *(v0 + 752) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 640) = v6;
  *(v6 + 16) = xmmword_226874180;
  v7 = v6 + v5;
  *(v0 + 756) = *MEMORY[0x277D1EA88];
  v8 = *(v1 + 104);
  *(v0 + 648) = v8;
  *(v0 + 656) = (v1 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v8(v7);
  *(v0 + 760) = *MEMORY[0x277D1EB18];
  v8(v7 + v3);
  *(v0 + 176) = MEMORY[0x277D84F90];
  v9 = sub_226835818();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v0 + 664) = sub_226835808();
  v12 = *(MEMORY[0x277D1D2D8] + 4);

  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_2267BE474;

  return MEMORY[0x2821761F0](v6);
}

uint64_t sub_2267BE474(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 672);
  v5 = *(*v2 + 664);
  v6 = *(*v2 + 640);
  v10 = *v2;
  v3[85] = a1;
  v3[86] = v1;

  if (v1)
  {
    v7 = v3[80];

    v8 = sub_2267C0460;
  }

  else
  {
    v8 = sub_2267BE5D8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_2267BE5D8()
{
  v247 = v0;
  *(v0 + 184) = MEMORY[0x277D84FA0];
  v1 = *(v0 + 680);
  v2 = *(v1 + 16);
  if (v2)
  {
    v227 = 0;
    v239 = 0;
    v3 = 0;
    v4 = *(v0 + 616);
    v5 = *(v0 + 536);
    v242 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(v0 + 344);
    v244 = (*(v0 + 560) + 8);
    v229 = (v6 + 48);
    v224 = (v6 + 32);
    v7 = (v6 + 8);
    v222 = (v6 + 16);
    v219 = (v6 + 88);
    v8 = *(v0 + 280);
    v217 = (v6 + 96);
    v212 = (v8 + 16);
    v216 = (*(v0 + 232) + 8);
    v211 = (v8 + 8);
    v9 = *(v0 + 312);
    v214 = (v9 + 8);
    v215 = (v9 + 16);
    v236 = (v5 + 48);
    v233 = (v5 + 32);
    v10 = *(v0 + 432);
    v232 = (*(v0 + 496) + 8);
    v231 = (*(v0 + 472) + 8);
    v218 = *MEMORY[0x277D72A38];
    v220 = (v10 + 8);
    v221 = (v10 + 16);
    v213 = *MEMORY[0x277D729F8];
    v230 = (v5 + 8);
    v235 = (v5 + 56);
    v234 = *(v0 + 208);
    v243 = v4;
    v241 = (v4 + 8);
    v225 = MEMORY[0x277D84F90];
    v237 = *(v0 + 680);
    v238 = *(v1 + 16);
    v223 = v7;
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v13 = v3;
      v14 = *(v0 + 640);
      v15 = *(v0 + 600);
      ++v3;
      (*(v243 + 16))(*(v0 + 624), v242 + *(v243 + 72) * v13, *(v0 + 608));
      sub_2268355D8();
      v16 = 0;
      v17 = *(v14 + 16);
      do
      {
        if (v17 == v16)
        {
          v11 = *(v0 + 624);
          v12 = *(v0 + 608);
          (*v244)(*(v0 + 600), *(v0 + 552));
          (*v241)(v11, v12);
          goto LABEL_4;
        }

        v18 = *(v0 + 600);
        v19 = *(v0 + 552);
        v20 = v16 + 1;
        v21 = *(v0 + 640) + ((*(v0 + 752) + 32) & ~*(v0 + 752)) + *(v0 + 632) * v16;
        sub_2267C7E7C(&qword_27D7A2080, MEMORY[0x277D1EB58]);
        v22 = sub_2268363C8();
        v16 = v20;
      }

      while ((v22 & 1) == 0);
      v240 = v3;
      v23 = *(v0 + 656);
      v24 = *(v0 + 648);
      v25 = *(v0 + 756);
      v26 = *(v0 + 624);
      v27 = *(v0 + 592);
      v28 = *(v0 + 584);
      v29 = *(v0 + 552);
      v30 = *v244;
      (*v244)(*(v0 + 600), v29);
      sub_2268355D8();
      v24(v28, v25, v29);
      sub_2267C7E7C(&qword_27D7A2088, MEMORY[0x277D1EB58]);
      sub_226836538();
      sub_226836538();
      v31 = *(v0 + 592);
      v32 = *(v0 + 584);
      v33 = *(v0 + 552);
      if (*(v0 + 16) != *(v0 + 32))
      {
        goto LABEL_12;
      }

      if (*(v0 + 24) == *(v0 + 40))
      {
        v30(*(v0 + 584), *(v0 + 552));
        v30(v31, v33);
      }

      else
      {
LABEL_12:
        v34 = *(v0 + 24);
        v35 = *(v0 + 40);
        v36 = sub_226836B58();
        v30(v32, v33);
        v30(v31, v33);

        if ((v36 & 1) == 0)
        {
          break;
        }
      }

      if (v239)
      {
        break;
      }

      v37 = *(v0 + 624);
      v38 = *(v0 + 512);
      sub_2268355B8();
      v39 = sub_226835688();
      v40 = *(v39 - 8);
      if ((*(v40 + 48))(v38, 1, v39) == 1)
      {
        v41 = *(v0 + 528);
        v42 = *(v0 + 520);
        v43 = *(v0 + 512);
        (*v241)(*(v0 + 624), *(v0 + 608));
        sub_2267A1DC0(v43, &qword_27D7A1F90, &qword_2268741B0);
        (*v235)(v42, 1, 1, v41);
        v2 = v238;
      }

      else
      {
        v64 = *(v0 + 528);
        v65 = *(v0 + 520);
        v66 = *(v0 + 512);
        sub_226835678();
        (*(v40 + 8))(v66, v39);
        v2 = v238;
        if ((*v236)(v65, 1, v64) != 1)
        {
          v72 = *(v0 + 504);
          v74 = *(v0 + 480);
          v73 = *(v0 + 488);
          v75 = *(v0 + 464);
          (*v233)(*(v0 + 544), *(v0 + 520), *(v0 + 528));
          sub_226835658();
          sub_226835628();
          (*v232)(v72, v73);
          v76 = sub_226835608();
          v78 = v77;
          (*v231)(v74, v75);
          v3 = v240;
          if (!v78)
          {
            goto LABEL_43;
          }

          if (v76 == *(v0 + 200) && v78 == v234)
          {
          }

          else
          {
            v93 = *(v0 + 208);
            v94 = sub_226836B58();

            if ((v94 & 1) == 0)
            {
LABEL_43:
              v99 = *(v0 + 624);
              v100 = *(v0 + 608);
              (*v230)(*(v0 + 544), *(v0 + 528));
              (*v241)(v99, v100);
              v239 = 0;
              goto LABEL_4;
            }
          }

          v95 = *(v0 + 544);
          v96 = sub_226835648();
          if (v96[2])
          {
            v98 = v96[4];
            v97 = v96[5];
          }

          else
          {
            v98 = 0;
            v97 = 0;
          }

          v107 = sub_2267C6934(v98, v97);
          v109 = v108;

          if (!v109)
          {
            v121 = *(v0 + 624);
            v122 = *(v0 + 608);
            (*v230)(*(v0 + 544), *(v0 + 528));
            (*v241)(v121, v122);
            v239 = 0;
            v3 = v240;
            goto LABEL_4;
          }

          v110 = *(v0 + 456);
          v111 = *(v0 + 424);
          v112 = sub_2267FBA9C();
          (*v221)(v110, v112, v111);
          v113 = sub_226836038();
          v114 = sub_2268366A8();
          v115 = os_log_type_enabled(v113, v114);
          v228 = *(v0 + 624);
          v116 = *(v0 + 544);
          v117 = *(v0 + 528);
          v206 = v117;
          v208 = *(v0 + 608);
          v118 = *(v0 + 456);
          v119 = *(v0 + 424);
          if (v115)
          {
            v120 = swift_slowAlloc();
            *v120 = 0;
            _os_log_impl(&dword_2263AA000, v113, v114, "Detected onscreen selected text", v120, 2u);
            MEMORY[0x22AA821D0](v120, -1, -1);
          }

          else
          {
          }

          (*v220)(v118, v119);
          (*v230)(v116, v206);
          (*v241)(v228, v208);
          v227 = v107;
          v239 = v109;
          goto LABEL_37;
        }

        (*v241)(*(v0 + 624), *(v0 + 608));
      }

      v3 = v240;
      sub_2267A1DC0(*(v0 + 520), &qword_27D7A1F98, &qword_2268741B8);
      v239 = 0;
LABEL_4:
      if (v3 == v2)
      {
        v190 = *(v0 + 680);
        v191 = *(v0 + 640);

        v193 = v225;
        v192 = v227;
        v194 = v239;
        goto LABEL_73;
      }
    }

    v44 = *(v0 + 760);
    v45 = *(v0 + 656);
    v46 = *(v0 + 648);
    v47 = *(v0 + 624);
    v48 = *(v0 + 576);
    v49 = *(v0 + 568);
    v50 = *(v0 + 552);
    sub_2268355D8();
    v46(v49, v44, v50);
    sub_226836538();
    sub_226836538();
    v51 = *(v0 + 576);
    v52 = *(v0 + 568);
    v53 = *(v0 + 552);
    if (*(v0 + 48) == *(v0 + 64) && *(v0 + 56) == *(v0 + 72))
    {
      v30(*(v0 + 568), *(v0 + 552));
      v30(v51, v53);

      v1 = v237;
    }

    else
    {
      v54 = *(v0 + 56);
      v55 = *(v0 + 72);
      v56 = sub_226836B58();
      v30(v52, v53);
      v30(v51, v53);

      v1 = v237;
      if ((v56 & 1) == 0)
      {
LABEL_36:
        (*v241)(*(v0 + 624), *(v0 + 608));
LABEL_37:
        v2 = v238;
        v3 = v240;
        goto LABEL_4;
      }
    }

    v57 = *(v0 + 624);
    v58 = *(v0 + 416);
    sub_2268355E8();
    v59 = sub_2268355A8();
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    v62 = v61(v58, 1, v59);
    v63 = *(v0 + 416);
    if (v62 == 1)
    {
      sub_2267A1DC0(*(v0 + 416), &qword_27D7A2078, qword_226874418);
      goto LABEL_36;
    }

    v67 = *(v0 + 416);
    v68 = sub_226835588();
    v70 = v69;
    v71 = *(v60 + 8);
    v71(v63, v59);
    if (!v70)
    {
      goto LABEL_36;
    }

    if (v68 == *(v0 + 200) && v70 == v234)
    {
    }

    else
    {
      v79 = *(v0 + 208);
      v80 = sub_226836B58();

      if ((v80 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v81 = *(v0 + 624);
    v83 = *(v0 + 328);
    v82 = *(v0 + 336);
    sub_2268355C8();
    v84 = (*v229)(v83, 1, v82);
    v85 = *(v0 + 624);
    if (v84 == 1)
    {
      v86 = *(v0 + 328);
      (*v241)(*(v0 + 624), *(v0 + 608));
      v87 = v86;
      v88 = &unk_27D7A2070;
      v89 = &unk_226874410;
LABEL_47:
      sub_2267A1DC0(v87, v88, v89);
      goto LABEL_37;
    }

    v90 = *(v0 + 408);
    (*v224)(*(v0 + 392), *(v0 + 328), *(v0 + 336));
    sub_2268355E8();
    v91 = v61(v90, 1, v59);
    v92 = *(v0 + 408);
    if (v91 == 1)
    {
      sub_2267A1DC0(*(v0 + 408), &qword_27D7A2078, qword_226874418);
    }

    else
    {
      v101 = sub_226835578();
      v71(v92, v59);
      if (v101)
      {
        goto LABEL_54;
      }
    }

    v102 = *(v0 + 624);
    v103 = *(v0 + 400);
    sub_2268355E8();
    if (v61(v103, 1, v59) == 1)
    {
      v104 = *(v0 + 624);
      v105 = *(v0 + 608);
      v106 = *(v0 + 400);
      (*v223)(*(v0 + 392), *(v0 + 336));
      (*v241)(v104, v105);
      v87 = v106;
      v88 = &qword_27D7A2078;
      v89 = qword_226874418;
      goto LABEL_47;
    }

    v123 = *(v0 + 400);
    v124 = sub_226835598();
    v71(v123, v59);
    if ((v124 & 1) == 0)
    {
      v158 = *(v0 + 624);
      v159 = *(v0 + 608);
      (*v223)(*(v0 + 392), *(v0 + 336));
      (*v241)(v158, v159);
      goto LABEL_37;
    }

LABEL_54:
    v125 = *(v0 + 384);
    v126 = *(v0 + 336);
    v127 = *v222;
    (*v222)(v125, *(v0 + 392), v126);
    v128 = *v219;
    if ((*v219)(v125, v126) == v218)
    {
      v226 = v127;
      v129 = *(v0 + 384);
      v130 = *(v0 + 320);
      v131 = *(v0 + 304);
      v132 = *(v0 + 264);
      (*v217)(v129, *(v0 + 336));
      v133 = *v129;
      v134 = swift_projectBox();
      (*v215)(v130, v134, v131);

      v135 = sub_226836138();
      v137 = v136;
      sub_226836188();
      v138 = sub_226836268();
      v139 = *(v138 - 8);
      v140 = (*(v139 + 48))(v132, 1, v138);
      v141 = *(v0 + 264);
      v142 = v223;
      v209 = v137;
      if (v140 == 1)
      {
        sub_2267A1DC0(v141, &qword_27D7A2010, &qword_2268743A8);
        v205 = 0;
        v207 = 0;
      }

      else
      {
        v160 = sub_2268361E8();
        v205 = v161;
        v207 = v160;
        (*(v139 + 8))(v141, v138);
      }

      v162 = *(v0 + 320);
      v163 = *(v0 + 304);
      v164 = *(v0 + 240);
      v165 = *(v0 + 224);
      *(v0 + 160) = 0;
      *(v0 + 168) = 0xE000000000000000;
      sub_226836158();
      sub_226836A48();
      (*v216)(v164, v165);
      v203 = *(v0 + 168);
      v204 = *(v0 + 160);
      v166 = v214;
    }

    else
    {
      v143 = *(v0 + 392);
      v144 = *(v0 + 376);
      v145 = *(v0 + 336);
      v142 = v223;
      v210 = *v223;
      (*v223)(*(v0 + 384), v145);
      v127(v144, v143, v145);
      v3 = v240;
      if (v128(v144, v145) != v213)
      {
        v167 = *(v0 + 624);
        v168 = *(v0 + 608);
        v169 = *(v0 + 376);
        v170 = *(v0 + 336);
        v210(*(v0 + 392), v170);
        (*v241)(v167, v168);
        v210(v169, v170);
        v2 = v238;
        goto LABEL_4;
      }

      v226 = v127;
      v146 = *(v0 + 376);
      v147 = *(v0 + 296);
      v148 = *(v0 + 272);
      v149 = *(v0 + 256);
      (*v217)(v146, *(v0 + 336));
      v150 = *v146;
      v151 = swift_projectBox();
      (*v212)(v147, v151, v148);

      v135 = sub_226836138();
      v153 = v152;
      sub_226836148();
      v154 = sub_226836268();
      v155 = *(v154 - 8);
      v156 = (*(v155 + 48))(v149, 1, v154);
      v157 = *(v0 + 256);
      v209 = v153;
      if (v156 == 1)
      {
        sub_2267A1DC0(v157, &qword_27D7A2010, &qword_2268743A8);
        v205 = 0;
        v207 = 0;
      }

      else
      {
        v171 = sub_2268361E8();
        v205 = v172;
        v207 = v171;
        (*(v155 + 8))(v157, v154);
      }

      v162 = *(v0 + 296);
      v163 = *(v0 + 272);
      v173 = *(v0 + 240);
      v174 = *(v0 + 224);
      *(v0 + 128) = 0;
      *(v0 + 136) = 0xE000000000000000;
      sub_226836158();
      sub_226836A48();
      (*v216)(v173, v174);
      v203 = *(v0 + 136);
      v204 = *(v0 + 128);
      v166 = v211;
    }

    (*v166)(v162, v163);
    v175 = *(v0 + 392);
    v176 = *(v0 + 368);
    v177 = *(v0 + 336);

    sub_2267A451C(v246, v135, v209);

    v226(v176, v175, v177);
    v178 = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
    v179 = objc_allocWithZone(v178);
    v226(&v179[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue], v176, v177);
    v180 = &v179[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
    *v180 = v135;
    v180[1] = v209;
    v181 = &v179[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
    *v181 = v204;
    *(v181 + 1) = v203;
    v182 = &v179[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
    *v182 = v207;
    v182[1] = v205;
    *(v0 + 144) = v179;
    *(v0 + 152) = v178;
    objc_msgSendSuper2((v0 + 144), sel_init);
    v183 = *v142;
    v184 = (*v142)(v176, v177);
    MEMORY[0x22AA7F970](v184);
    if (*((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v189 = *((*(v0 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_226836588();
    }

    v185 = *(v0 + 624);
    v186 = *(v0 + 608);
    v187 = *(v0 + 392);
    v188 = *(v0 + 336);
    sub_2268365A8();
    v183(v187, v188);
    (*v241)(v185, v186);
    v225 = *(v0 + 176);
    goto LABEL_37;
  }

  v195 = *(v0 + 640);
  v196 = *(v0 + 680);

  v192 = 0;
  v194 = 0;
  v193 = MEMORY[0x277D84F90];
LABEL_73:
  *(v0 + 720) = v193;
  *(v0 + 712) = v193;
  *(v0 + 704) = v194;
  *(v0 + 696) = v192;
  v197 = *((*MEMORY[0x277D85000] & **(v0 + 216)) + 0x90);
  v245 = (v197 + *v197);
  v198 = v197[1];
  v199 = swift_task_alloc();
  *(v0 + 728) = v199;
  *v199 = v0;
  v199[1] = sub_2267BF9E8;
  v200 = *(v0 + 208);
  v201 = *(v0 + 216);
  v202 = *(v0 + 200);

  v245(v202, v200);
}

uint64_t sub_2267BF9E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v9 = *v2;
  v3[92] = a1;
  v3[93] = v1;

  if (v1)
  {
    v5 = v3[89];

    v6 = v3[23];

    v7 = sub_2267C0658;
  }

  else
  {
    v7 = sub_2267BFB10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2267BFB10()
{
  v137 = v2;
  v3 = *(v2 + 736);
  v122 = *(v3 + 16);
  if (v122)
  {
    v4 = 0;
    v5 = *(v2 + 344);
    v6 = *(v2 + 280);
    v7 = *(v2 + 184);
    v118 = v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = v7 + 56;
    v120 = v6;
    v116 = (v6 + 8);
    v108 = *MEMORY[0x277D729F8];
    v106 = (v5 + 104);
    v130 = (v5 + 16);
    v102 = (v5 + 8);
    v104 = (*(v2 + 232) + 8);
    v9 = *(v2 + 720);
    v112 = v7;
    v114 = *(v2 + 736);
    v110 = v7 + 56;
    while (v4 < *(v3 + 16))
    {
      v132 = *(v120 + 16);
      v132(*(v2 + 288), v118 + *(v120 + 72) * v4, *(v2 + 272));
      v10 = sub_226836138();
      v12 = v11;
      if (*(v7 + 16) && (v13 = v10, v14 = *(v7 + 40), sub_226836C08(), sub_226836498(), v15 = sub_226836C48(), v16 = -1 << *(v7 + 32), v1 = v15 & ~v16, ((*(v8 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0))
      {
        v0 = ~v16;
        while (1)
        {
          v17 = (*(v7 + 48) + 16 * v1);
          v18 = *v17 == v13 && v17[1] == v12;
          if (v18 || (sub_226836B58() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & v0;
          if (((*(v8 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        (*v116)(*(v2 + 288), *(v2 + 272));
      }

      else
      {
LABEL_15:
        v128 = v4;
        v20 = *(v2 + 352);
        v19 = *(v2 + 360);
        v21 = *(v2 + 336);
        v22 = *(v2 + 288);
        v23 = *(v2 + 272);
        v24 = *(v2 + 240);
        v25 = *(v2 + 248);
        v26 = *(v2 + 224);

        v27 = swift_allocBox();
        v132(v28, v22, v23);
        *v19 = v27;
        (*v106)(v19, v108, v21);
        v29 = *v130;
        (*v130)(v20, v19, v21);
        v133 = sub_226836138();
        v126 = v30;
        *(v2 + 96) = 0;
        *(v2 + 104) = 0xE000000000000000;
        sub_226836158();
        sub_226836A48();
        (*v104)(v24, v26);
        v31 = *(v2 + 96);
        v124 = *(v2 + 104);
        sub_226836148();
        v32 = sub_226836268();
        v33 = *(v32 - 8);
        v34 = (*(v33 + 48))(v25, 1, v32);
        v35 = *(v2 + 248);
        if (v34 == 1)
        {
          sub_2267A1DC0(*(v2 + 248), &qword_27D7A2010, &qword_2268743A8);
          v36 = 0;
          v37 = 0;
        }

        else
        {
          v36 = sub_2268361E8();
          v37 = v38;
          (*(v33 + 8))(v35, v32);
        }

        v39 = *(v2 + 352);
        v40 = *(v2 + 336);
        v41 = type metadata accessor for AppEntityContext.SelectedHydratedAppEntity(0);
        v42 = objc_allocWithZone(v41);
        v29(&v42[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityValue], v39, v40);
        v43 = &v42[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityIdentifier];
        *v43 = v133;
        v43[1] = v126;
        v44 = &v42[OBJC_IVAR___ATXSelectedHydratedAppEntity_entityType];
        *v44 = v31;
        *(v44 + 1) = v124;
        v45 = &v42[OBJC_IVAR___ATXSelectedHydratedAppEntity_displayRepresentation];
        *v45 = v36;
        v45[1] = v37;
        *(v2 + 112) = v42;
        *(v2 + 120) = v41;
        objc_msgSendSuper2((v2 + 112), sel_init);
        v46 = *v102;
        v47 = (*v102)(v39, v40);
        MEMORY[0x22AA7F970](v47);
        if (*((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v51 = *((*(v2 + 176) & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_226836588();
        }

        v0 = *(v2 + 360);
        v48 = *(v2 + 336);
        v49 = *(v2 + 288);
        v50 = *(v2 + 272);
        v1 = v2 + 176;
        sub_2268365A8();
        v46(v0, v48);
        (*v116)(v49, v50);
        v9 = *(v2 + 176);
        v7 = v112;
        v3 = v114;
        v4 = v128;
        v8 = v110;
      }

      if (++v4 == v122)
      {
        v52 = *(v2 + 736);

        v53 = *(v2 + 184);

        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v54 = *(v2 + 448);
  v55 = *(v2 + 424);
  v56 = *(v2 + 432);
  v57 = *(v2 + 208);

  v58 = *(v2 + 184);

  v59 = sub_2267FBA9C();
  (*(v56 + 16))(v54, v59, v55);

  v60 = sub_226836038();
  v61 = sub_2268366A8();

  v62 = os_log_type_enabled(v60, v61);
  v63 = *(v2 + 448);
  v64 = *(v2 + 424);
  v65 = *(v2 + 432);
  if (v62)
  {
    v67 = *(v2 + 200);
    v66 = *(v2 + 208);
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    v136 = v69;
    *v68 = 136315138;
    *(v68 + 4) = sub_2263B4D48(v67, v66, &v136);
    _os_log_impl(&dword_2263AA000, v60, v61, "Did not get any on-screen documents for %s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v69);
    MEMORY[0x22AA821D0](v69, -1, -1);
    MEMORY[0x22AA821D0](v68, -1, -1);
  }

  (*(v65 + 8))(v63, v64);
  v9 = *(v2 + 720);
LABEL_25:
  v71 = *(v2 + 432);
  v70 = *(v2 + 440);
  v0 = *(v2 + 424);
  v72 = sub_2267FBA9C();
  (*(v71 + 16))(v70, v72, v0);

  v1 = sub_226836038();
  LOBYTE(v0) = sub_2268366A8();
  if (os_log_type_enabled(v1, v0))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    if (!(v9 >> 62))
    {
      v73 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:
      v75 = *(v2 + 432);
      v74 = *(v2 + 440);
      v76 = *(v2 + 424);
      *(v3 + 4) = v73;

      _os_log_impl(&dword_2263AA000, v1, v0, "Detected total %ld selected app entities + documents", v3, 0xCu);
      MEMORY[0x22AA821D0](v3, -1, -1);

      (*(v75 + 8))(v74, v76);
      goto LABEL_30;
    }

LABEL_34:
    v73 = sub_2268368D8();
    goto LABEL_28;
  }

  v78 = *(v2 + 432);
  v77 = *(v2 + 440);
  v79 = *(v2 + 424);

  (*(v78 + 8))(v77, v79);

LABEL_30:
  v80 = *(v2 + 704);
  v81 = *(v2 + 696);
  v82 = *(v2 + 624);
  v83 = *(v2 + 600);
  v84 = *(v2 + 592);
  v85 = *(v2 + 584);
  v92 = *(v2 + 576);
  v93 = *(v2 + 568);
  v94 = *(v2 + 544);
  v95 = *(v2 + 520);
  v96 = *(v2 + 512);
  v97 = *(v2 + 504);
  v98 = *(v2 + 480);
  v99 = *(v2 + 456);
  v100 = *(v2 + 448);
  v101 = *(v2 + 440);
  v103 = *(v2 + 416);
  v105 = *(v2 + 408);
  v107 = *(v2 + 400);
  v109 = *(v2 + 392);
  v111 = *(v2 + 384);
  v113 = *(v2 + 376);
  v115 = *(v2 + 368);
  v117 = *(v2 + 360);
  v119 = *(v2 + 352);
  v121 = *(v2 + 328);
  v123 = *(v2 + 320);
  v125 = *(v2 + 296);
  v127 = *(v2 + 288);
  v129 = *(v2 + 264);
  v131 = *(v2 + 256);
  v134 = *(v2 + 248);
  v135 = *(v2 + 240);
  v86 = *(v2 + 192);
  v87 = type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  v88 = objc_allocWithZone(v87);
  v89 = &v88[OBJC_IVAR___ATXOnScreenSelectedContent_selectedText];
  *v89 = v81;
  *(v89 + 1) = v80;
  *&v88[OBJC_IVAR___ATXOnScreenSelectedContent_selectedAppEntities] = v9;
  *(v2 + 80) = v88;
  *(v2 + 88) = v87;
  *v86 = objc_msgSendSuper2((v2 + 80), sel_init);

  v90 = *(v2 + 8);

  return v90();
}

uint64_t sub_2267C0460()
{
  v34 = v0[86];
  v1 = v0[78];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[73];
  v5 = v0[72];
  v6 = v0[71];
  v7 = v0[68];
  v8 = v0[65];
  v10 = v0[63];
  v9 = v0[64];
  v13 = v0[60];
  v14 = v0[57];
  v15 = v0[56];
  v16 = v0[55];
  v17 = v0[52];
  v18 = v0[51];
  v19 = v0[50];
  v20 = v0[49];
  v21 = v0[48];
  v22 = v0[47];
  v23 = v0[46];
  v24 = v0[45];
  v25 = v0[44];
  v26 = v0[41];
  v27 = v0[40];
  v28 = v0[37];
  v29 = v0[36];
  v30 = v0[33];
  v31 = v0[32];
  v32 = v0[31];
  v33 = v0[30];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2267C0658()
{
  v1 = v0[88];

  v35 = v0[93];
  v2 = v0[78];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[72];
  v7 = v0[71];
  v8 = v0[68];
  v9 = v0[65];
  v11 = v0[63];
  v10 = v0[64];
  v14 = v0[60];
  v15 = v0[57];
  v16 = v0[56];
  v17 = v0[55];
  v18 = v0[52];
  v19 = v0[51];
  v20 = v0[50];
  v21 = v0[49];
  v22 = v0[48];
  v23 = v0[47];
  v24 = v0[46];
  v25 = v0[45];
  v26 = v0[44];
  v27 = v0[41];
  v28 = v0[40];
  v29 = v0[37];
  v30 = v0[36];
  v31 = v0[33];
  v32 = v0[32];
  v33 = v0[31];
  v34 = v0[30];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2267C0858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_2267A1AF8(a3, v25 - v11, &unk_27D7A1F30, &qword_226873360);
  v13 = sub_226836628();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2267A1DC0(v12, &unk_27D7A1F30, &qword_226873360);
  }

  else
  {
    sub_226836618();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2268365D8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a2;
      v21 = sub_226836458() + 32;
      type metadata accessor for AppEntityContext.OnScreenSelectedContent();

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v22 = 0;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2267A1DC0(a3, &unk_27D7A1F30, &qword_226873360);
  type metadata accessor for AppEntityContext.OnScreenSelectedContent();
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2267C0C90(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_226836408();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_2267C0D64;

  return sub_2267BD3B4(v5, v7);
}

uint64_t sub_2267C0D64(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 16);
  v9 = *v2;

  v10 = *(v5 + 24);
  if (v3)
  {
    v11 = sub_226835018();

    (v10)[2](v10, 0, v11);
    _Block_release(v10);
  }

  else
  {
    (v10)[2](*(v5 + 24), a1, 0);
    _Block_release(v10);
  }

  v12 = *(v9 + 8);

  return v12();
}

uint64_t sub_2267C0F20(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_226834EE8();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_226835618();
  v2[15] = v6;
  v7 = *(v6 - 8);
  v2[16] = v7;
  v8 = *(v7 + 64) + 15;
  v2[17] = swift_task_alloc();
  v9 = sub_226835638();
  v2[18] = v9;
  v10 = *(v9 - 8);
  v2[19] = v10;
  v11 = *(v10 + 64) + 15;
  v2[20] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F90, &qword_2268741B0) - 8) + 64) + 15;
  v2[21] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1F98, &qword_2268741B8) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v14 = sub_226835668();
  v2[23] = v14;
  v15 = *(v14 - 8);
  v2[24] = v15;
  v16 = *(v15 + 64) + 15;
  v2[25] = swift_task_alloc();
  v17 = sub_2268355F8();
  v2[26] = v17;
  v18 = *(v17 - 8);
  v2[27] = v18;
  v19 = *(v18 + 64) + 15;
  v2[28] = swift_task_alloc();
  v20 = sub_226836068();
  v2[29] = v20;
  v21 = *(v20 - 8);
  v2[30] = v21;
  v22 = *(v21 + 64) + 15;
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267C1228, 0, 0);
}

uint64_t sub_2267C1228()
{
  v30 = v0;
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[11];
  v5 = sub_2267FBA9C();
  v0[33] = v5;
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_226836038();
  v8 = sub_2268366A8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[32];
  v11 = v0[29];
  v12 = v0[30];
  if (v9)
  {
    v14 = v0[10];
    v13 = v0[11];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2263B4D48(v14, v13, &v29);
    _os_log_impl(&dword_2263AA000, v7, v8, "Attempting to retrieve text bundleID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x22AA821D0](v16, -1, -1);
    MEMORY[0x22AA821D0](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[36] = v17;
  v18 = sub_226835818();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v0[37] = sub_226835808();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA0, &qword_2268741C0);
  v21 = sub_226835568();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v25 = swift_allocObject();
  v0[38] = v25;
  *(v25 + 16) = xmmword_226872800;
  (*(v22 + 104))(v25 + v24, *MEMORY[0x277D1EA88], v21);
  v26 = *(MEMORY[0x277D1D2D8] + 4);
  v27 = swift_task_alloc();
  v0[39] = v27;
  *v27 = v0;
  v27[1] = sub_2267C14E4;

  return MEMORY[0x2821761F0](v25);
}

uint64_t sub_2267C14E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v9 = *v2;
  v3[40] = a1;
  v3[41] = v1;

  if (v1)
  {
    v5 = sub_2267C1BF4;
  }

  else
  {
    v7 = v3[37];
    v6 = v3[38];

    v5 = sub_2267C1608;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2267C1608()
{
  v1 = v0[40];
  v72 = *(v1 + 16);
  if (v72)
  {
    v2 = 0;
    v3 = v0[27];
    v71 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v4 = v0[24];
    v70 = (v4 + 48);
    v66 = (v0[19] + 8);
    v67 = (v4 + 32);
    v64 = v0[11];
    v65 = (v0[16] + 8);
    v62 = (v0[13] + 8);
    v68 = (v4 + 8);
    v69 = v0[40];
    v5 = (v4 + 56);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        return;
      }

      v6 = v0[28];
      v7 = v0[26];
      v8 = v0[21];
      (*(v3 + 16))(v6, v71 + *(v3 + 72) * v2, v7);
      sub_2268355B8();
      (*(v3 + 8))(v6, v7);
      v9 = sub_226835688();
      v10 = *(v9 - 8);
      v11 = (*(v10 + 48))(v8, 1, v9);
      v13 = v0[22];
      v12 = v0[23];
      v14 = v0[21];
      if (v11 == 1)
      {
        sub_2267A1DC0(v0[21], &qword_27D7A1F90, &qword_2268741B0);
        (*v5)(v13, 1, 1, v12);
      }

      else
      {
        v15 = v0[22];
        sub_226835678();
        (*(v10 + 8))(v14, v9);
        if ((*v70)(v13, 1, v12) != 1)
        {
          v16 = v0[20];
          v18 = v0[17];
          v17 = v0[18];
          v19 = v0[15];
          (*v67)(v0[25], v0[22], v0[23]);
          sub_226835658();
          sub_226835628();
          (*v66)(v16, v17);
          v20 = sub_226835608();
          v22 = v21;
          v23 = v19;
          v1 = v69;
          (*v65)(v18, v23);
          if (v22)
          {
            if (v20 == v0[10] && v22 == v64)
            {

LABEL_14:
              v26 = v0[25];
              v27 = sub_226835648();
              if (v27[2])
              {
                v28 = v0[14];
                v63 = v0[12];
                v29 = v27[4];
                v30 = v27[5];

                v0[2] = v29;
                v0[3] = v30;
                v0[4] = 0x43464646755CLL;
                v0[5] = 0xE600000000000000;
                v0[6] = 0;
                v0[7] = 0xE000000000000000;
                sub_22679BAA8();
                v0[8] = sub_226836858();
                v0[9] = v31;
                sub_226834ED8();
                v32 = sub_226836848();
                v34 = v33;
                (*v62)(v28, v63);

                v35 = sub_2268364A8();

                if (v35 > 0)
                {
                  v37 = v32;
                  v47 = v0[40];
                  v49 = v0[34];
                  v48 = v0[35];
                  v50 = v0[33];
                  v51 = v0[31];
                  v52 = v0[29];

                  v49(v51, v50, v52);
                  v53 = sub_226836038();
                  v54 = sub_2268366B8();
                  if (os_log_type_enabled(v53, v54))
                  {
                    v55 = swift_slowAlloc();
                    *v55 = 0;
                    _os_log_impl(&dword_2263AA000, v53, v54, "Detected onscreen selected text", v55, 2u);
                    MEMORY[0x22AA821D0](v55, -1, -1);
                  }

                  v56 = v0[36];
                  v58 = v0[30];
                  v57 = v0[31];
                  v59 = v0[29];
                  v60 = v0[25];
                  v61 = v0[23];

                  v56(v57, v59);
                  (*v68)(v60, v61);
                  goto LABEL_21;
                }

                v1 = v69;
              }

              else
              {
              }
            }

            else
            {
              v24 = v0[11];
              v25 = sub_226836B58();

              if (v25)
              {
                goto LABEL_14;
              }
            }
          }

          (*v68)(v0[25], v0[23]);
          goto LABEL_5;
        }
      }

      sub_2267A1DC0(v0[22], &qword_27D7A1F98, &qword_2268741B8);
LABEL_5:
      if (v72 == ++v2)
      {
        v36 = v0[40];
        break;
      }
    }
  }

  v37 = 0;
  v34 = 0;
LABEL_21:
  v39 = v0[31];
  v38 = v0[32];
  v40 = v0[28];
  v41 = v0[25];
  v43 = v0[21];
  v42 = v0[22];
  v44 = v0[20];
  v45 = v0[17];
  v73 = v0[14];

  v46 = v0[1];

  v46(v37, v34);
}

uint64_t sub_2267C1BF4()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[28];
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  v9 = v0[20];
  v10 = v0[17];
  v14 = v0[14];

  v11 = v0[1];
  v12 = v0[41];

  return v11();
}

uint64_t sub_2267C1CE8()
{
  v0 = sub_226835AD8();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v63 = &v56 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA8, &qword_2268741C8);
  v9 = *(v62 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v62, v11);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v72 = &v56 - v15;
  v16 = sub_2268357E8();
  v17 = *(v16 - 8);
  v67 = v16;
  v68 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v70 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FB0, &qword_2268741D0);
  v23 = *(v1 + 72);
  v24 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_226872800;
  v26 = *MEMORY[0x277D1D430];
  v60 = *(v2 + 104);
  v61 = v2 + 104;
  v60(v25 + v24, v26, v0);
  v27 = sub_2267C6B84(v25);
  swift_setDeallocating();
  v28 = *(v2 + 8);
  v65 = v2 + 8;
  v66 = v0;
  v59 = v28;
  v28(v25 + v24, v0);
  swift_deallocClassInstance();
  v73 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FB8, &unk_2268741D8);
  v29 = *(v9 + 72);
  v30 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v31 = 40;
  v58 = swift_allocObject();
  v32 = v58 + v30;
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835798();
  v33 = v67;
  v35 = v68 + 56;
  v34 = *(v68 + 56);
  v34(v32 + 4 * v29, 0, 1, v67);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835778();
  v34(v32 + 7 * v29, 0, 1, v33);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835748();
  v34(v32 + 10 * v29, 0, 1, v33);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_2268356C8();
  v34(v32 + 14 * v29, 0, 1, v33);
  sub_2268357A8();
  v34(v32 + 15 * v29, 0, 1, v33);
  sub_2268357B8();
  v34(v32 + 16 * v29, 0, 1, v33);
  sub_226835768();
  sub_226835698();
  sub_2268356A8();
  v34(v32 + 18 * v29, 0, 1, v33);
  sub_2268356B8();
  v34(v32 + 19 * v29, 0, 1, v33);
  v36 = v34;
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_2268357C8();
  v37 = v67;
  v69 = v36;
  v36(v32 + 23 * v29, 0, 1, v67);
  sub_226835708();
  v36(v32 + 24 * v29, 0, 1, v37);
  sub_2268356D8();
  v38 = v35;
  v39 = v69;
  v69(v32 + 25 * v29, 0, 1, v37);
  sub_2268356F8();
  v39(v32 + 26 * v29, 0, 1, v37);
  v57 = v38;
  sub_226835728();
  v39(v32 + 27 * v29, 0, 1, v37);
  sub_226835718();
  v39(v32 + 28 * v29, 0, 1, v37);
  sub_226835768();
  sub_226835698();
  sub_226835768();
  sub_226835698();
  sub_226835788();
  v39(v32 + 31 * v29, 0, 1, v37);
  sub_226835768();
  sub_226835698();
  sub_226835738();
  v39(v32 + 33 * v29, 0, 1, v37);
  sub_226835768();
  sub_226835698();
  sub_2268357D8();
  v39(v32 + 35 * v29, 0, 1, v37);
  sub_2268356E8();
  v39(v32 + 36 * v29, 0, 1, v37);
  sub_226835768();
  sub_226835698();
  sub_226835758();
  v40 = v67;
  (v69)(v32 + 38 * v29, 0, 1);
  v69 = v29;
  sub_226835768();
  sub_226835698();
  v41 = (v68 + 48);
  v42 = MEMORY[0x277D84F90];
  v43 = (v68 + 32);
  v57 = v32;
  v44 = v32;
  do
  {
    v45 = v72;
    sub_2267A1AF8(v44, v72, &qword_27D7A1FA8, &qword_2268741C8);
    v46 = v45;
    v47 = v71;
    sub_2267C6EA4(v46, v71);
    if ((*v41)(v47, 1, v40) == 1)
    {
      sub_2267A1DC0(v47, &qword_27D7A1FA8, &qword_2268741C8);
    }

    else
    {
      v48 = v47;
      v49 = *v43;
      (*v43)(v70, v48, v40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_2267C589C(0, *(v42 + 2) + 1, 1, v42, &qword_27D7A2050, &qword_2268743E0, MEMORY[0x277D85578]);
      }

      v51 = *(v42 + 2);
      v50 = *(v42 + 3);
      if (v51 >= v50 >> 1)
      {
        v42 = sub_2267C589C(v50 > 1, v51 + 1, 1, v42, &qword_27D7A2050, &qword_2268743E0, MEMORY[0x277D85578]);
      }

      *(v42 + 2) = v51 + 1;
      v49(&v42[((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v51], v70, v40);
    }

    v44 += v69;
    --v31;
  }

  while (v31);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v52 = v64;
  *v64 = v42;
  v53 = v66;
  v60(v52, *MEMORY[0x277D1D438], v66);
  v54 = v63;
  sub_2267C5A78(v63, v52);
  v59(v54, v53);
  return v73;
}

void *sub_2267C2A08(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = sub_226835B28();
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x22AA7F970](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226836588();
      }

      sub_2268365A8();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t sub_2267C2B88(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_226836068();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC0, &qword_2268741E8) - 8) + 64) + 15;
  v3[14] = swift_task_alloc();
  v8 = sub_226836168();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v11 = sub_2268358E8();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = sub_226835978();
  v3[23] = v14;
  v15 = *(v14 - 8);
  v3[24] = v15;
  v16 = *(v15 + 64) + 15;
  v3[25] = swift_task_alloc();
  v17 = sub_226835918();
  v3[26] = v17;
  v18 = *(v17 - 8);
  v3[27] = v18;
  v19 = *(v18 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v20 = sub_226835938();
  v3[30] = v20;
  v21 = *(v20 - 8);
  v3[31] = v21;
  v22 = *(v21 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC8, &qword_2268741F0) - 8) + 64) + 15;
  v3[34] = swift_task_alloc();
  v24 = sub_226835988();
  v3[35] = v24;
  v25 = *(v24 - 8);
  v3[36] = v25;
  v26 = *(v25 + 64) + 15;
  v3[37] = swift_task_alloc();
  v27 = sub_226835B48();
  v3[38] = v27;
  v28 = *(v27 - 8);
  v3[39] = v28;
  v29 = *(v28 + 64) + 15;
  v3[40] = swift_task_alloc();
  v30 = sub_226835B68();
  v3[41] = v30;
  v31 = *(v30 - 8);
  v3[42] = v31;
  v32 = *(v31 + 64) + 15;
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267C2FCC, 0, 0);
}

uint64_t sub_2267C2FCC()
{
  v1 = v0[43];
  v3 = v0[39];
  v2 = v0[40];
  v4 = v0[38];
  v5 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FD0, &qword_2268741F8);
  v6 = *(v3 + 72);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_226872800;
  sub_226835B38();
  v0[7] = v8;
  sub_2267C7E7C(&qword_27D7A1FD8, MEMORY[0x277D1D4E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FE0, &qword_226874200);
  sub_2267A0610(&qword_27D7A1FE8, &qword_27D7A1FE0, &qword_226874200);
  v9 = sub_226836888();
  v10 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v5) + 0x88))(v9);
  v11 = sub_226835B58();
  (*((*v10 & *v5) + 0x70))(v11);
  v12 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
  v14 = *(v13 + 24);
  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[44] = v16;
  *v16 = v0;
  v16[1] = sub_2267C3284;
  v17 = v0[43];

  return v19(v17, v12, v13);
}

uint64_t sub_2267C3284(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 352);
  v7 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v5 = sub_2267C3CD4;
  }

  else
  {
    v5 = sub_2267C3398;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2267C3398()
{
  v119 = v0;
  v1 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[36];
    v4 = *(v3 + 16);
    v3 += 16;
    v109 = v4;
    v5 = v0[21];
    v6 = v0[45] + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v112 = (v0[27] + 8);
    v114 = (v0[31] + 8);
    v103 = (v5 + 88);
    v107 = (v3 - 8);
    v7 = v0[24];
    v100 = (v5 + 96);
    v101 = (v5 + 8);
    v99 = (v7 + 32);
    v8 = v0[16];
    v98 = (v8 + 48);
    v97 = (v8 + 32);
    v9 = v0[12];
    v92 = (v9 + 16);
    v93 = v8;
    v95 = (v8 + 8);
    v96 = (v8 + 16);
    v91 = (v9 + 8);
    v105 = v0[9];
    v106 = *(v3 + 56);
    v102 = *MEMORY[0x277D1D368];
    v104 = MEMORY[0x277D84F90];
    v94 = (v7 + 8);
    while (1)
    {
      v116 = v2;
      v10 = v0[34];
      v11 = v0[33];
      v13 = v0[29];
      v12 = v0[30];
      v14 = v0[26];
      v109(v0[37], v6, v0[35]);
      sub_226835948();
      sub_226835928();
      v15 = *v114;
      (*v114)(v11, v12);
      sub_2268358F8();
      v16 = *v112;
      (*v112)(v13, v14);
      v17 = sub_226835558();
      v18 = *(v17 - 8);
      if ((*(v18 + 48))(v10, 1, v17) == 1)
      {
        sub_2267A1DC0(v0[34], &qword_27D7A1FC8, &qword_2268741F0);
      }

      else
      {
        v19 = v0[34];
        v20 = sub_226835548();
        v22 = v21;
        (*(v18 + 8))(v19, v17);
        if (v22)
        {
          if (v20 == v0[8] && v22 == v105)
          {
          }

          else
          {
            v23 = v0[9];
            v24 = sub_226836B58();

            if ((v24 & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v25 = v0[37];
          v26 = v0[32];
          v27 = v0[30];
          v28 = v0[28];
          v29 = v0[26];
          sub_226835948();
          sub_226835928();
          v15(v26, v27);
          LOBYTE(v25) = sub_226835908();
          v16(v28, v29);
          if (v25)
          {
            v30 = v0[37];
            v31 = v0[22];
            v32 = v0[20];
            sub_226835958();
            v33 = (*v103)(v31, v32);
            v34 = v0[22];
            v35 = v0[20];
            if (v33 == v102)
            {
              v36 = v0[25];
              v37 = v0[23];
              v39 = v0[14];
              v38 = v0[15];
              (*v100)(v0[22], v0[20]);
              (*v99)(v36, v34, v37);
              sub_226835968();
              if ((*v98)(v39, 1, v38) == 1)
              {
                v40 = v0[37];
                v41 = v0[35];
                v42 = v0[14];
                (*v94)(v0[25], v0[23]);
                (*v107)(v40, v41);
                sub_2267A1DC0(v42, &qword_27D7A1FC0, &qword_2268741E8);
              }

              else
              {
                v43 = v0[18];
                v44 = v0[19];
                v45 = v0[15];
                v46 = v0[13];
                v47 = v0[11];
                v48 = v0[9];
                v90 = *v97;
                (*v97)(v44, v0[14], v45);
                v49 = sub_2267FBA9C();
                (*v92)(v46, v49, v47);
                v50 = *v96;
                (*v96)(v43, v44, v45);

                v51 = sub_226836038();
                v52 = sub_2268366B8();

                v53 = os_log_type_enabled(v51, v52);
                v54 = v0[18];
                v55 = v0[15];
                v56 = v0[13];
                v57 = v0[11];
                if (v53)
                {
                  v88 = v0[11];
                  v58 = v0[8];
                  v59 = v0[9];
                  log = v51;
                  v87 = v0[13];
                  v60 = swift_slowAlloc();
                  v61 = swift_slowAlloc();
                  v118[0] = v61;
                  *v60 = 136315394;
                  *(v60 + 4) = sub_2263B4D48(v58, v59, v118);
                  *(v60 + 12) = 2080;
                  v62 = sub_226836138();
                  v64 = v63;
                  v89 = *v95;
                  (*v95)(v54, v55);
                  v65 = sub_2263B4D48(v62, v64, v118);

                  *(v60 + 14) = v65;
                  _os_log_impl(&dword_2263AA000, log, v52, "Retrieved document entity for bundleID: %s with identifier: %s", v60, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x22AA821D0](v61, -1, -1);
                  MEMORY[0x22AA821D0](v60, -1, -1);

                  (*v91)(v87, v88);
                }

                else
                {

                  v89 = *v95;
                  (*v95)(v54, v55);
                  (*v91)(v56, v57);
                }

                v50(v0[17], v0[19], v0[15]);
                v66 = v104;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v66 = sub_2267C589C(0, v104[2] + 1, 1, v104, &qword_27D7A2048, &qword_2268743D8, MEMORY[0x277D728B0]);
                }

                v68 = v66[2];
                v67 = v66[3];
                if (v68 >= v67 >> 1)
                {
                  v104 = sub_2267C589C(v67 > 1, v68 + 1, 1, v66, &qword_27D7A2048, &qword_2268743D8, MEMORY[0x277D728B0]);
                }

                else
                {
                  v104 = v66;
                }

                v69 = v0[37];
                v70 = v0[35];
                v71 = v0[25];
                v72 = v0[23];
                v73 = v0[17];
                v74 = v0[15];
                v89(v0[19], v74);
                (*v94)(v71, v72);
                (*v107)(v69, v70);
                v104[2] = v68 + 1;
                v90(v104 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v68, v73, v74);
              }
            }

            else
            {
              (*v107)(v0[37], v0[35]);
              (*v101)(v34, v35);
            }

            goto LABEL_15;
          }
        }
      }

LABEL_14:
      (*v107)(v0[37], v0[35]);
LABEL_15:
      v6 += v106;
      v2 = v116 - 1;
      if (v116 == 1)
      {
        v75 = v0[45];

        goto LABEL_28;
      }
    }
  }

  v104 = MEMORY[0x277D84F90];
LABEL_28:
  v76 = v0[40];
  v77 = v0[37];
  v79 = v0[33];
  v78 = v0[34];
  v80 = v0[32];
  v81 = v0[28];
  v82 = v0[29];
  v83 = v0[25];
  v108 = v0[22];
  v110 = v0[19];
  v111 = v0[18];
  v113 = v0[17];
  v115 = v0[14];
  v117 = v0[13];
  (*(v0[42] + 8))(v0[43], v0[41]);

  v84 = v0[1];

  return v84(v104);
}

uint64_t sub_2267C3CD4()
{
  v1 = v0[40];
  v2 = v0[37];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[28];
  v6 = v0[29];
  v8 = v0[25];
  v13 = v0[22];
  v14 = v0[19];
  v15 = v0[18];
  v9 = v0[17];
  v16 = v0[14];
  v17 = v0[13];
  (*(v0[42] + 8))(v0[43], v0[41]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v10 = v0[1];
  v11 = v0[46];

  return v10();
}

uint64_t sub_2267C3E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v31 = a1;
  v4 = sub_226835A68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF0, qword_226874208);
  v10 = sub_226835AE8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  v32 = xmmword_226872800;
  *(v14 + 16) = xmmword_226872800;
  (*(v11 + 104))(v14 + v13, *MEMORY[0x277D1D468], v10);
  sub_2267C6F14(v14);
  swift_setDeallocating();
  v15 = v14 + v13;
  v16 = v30;
  (*(v11 + 8))(v15, v10);
  v17 = v31;
  swift_deallocClassInstance();
  v18 = sub_226835A88();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  v21 = sub_226835A38();
  (*(v5 + 104))(v9, *MEMORY[0x277D1D408], v4);
  sub_226835A78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1C60, &qword_226873D20);
  inited = swift_initStackObject();
  *(inited + 16) = v32;
  *(inited + 32) = v17;
  *(inited + 40) = v16;

  sub_2267A1368(inited);
  swift_setDeallocating();
  sub_2267A0598(inited + 32);
  v23 = sub_226835A58();
  (*((*MEMORY[0x277D85000] & *v3) + 0x70))(v33, v23);
  v24 = v34;
  v25 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v26 = v36;
  v27 = (*(v25 + 16))(v21, v24, v25);
  if (v26)
  {
  }

  else
  {
    v28 = v27;

    v17 = sub_2267C7234(v28, v17, v16);
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return v17;
}

uint64_t sub_2267C4180@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v215 = a3;
  v218 = a2;
  v222 = a1;
  v227 = a4;
  v216 = sub_226835BA8();
  isa = v216[-1].isa;
  v4 = *(isa + 8);
  MEMORY[0x28223BE20](v216, v5);
  v213 = &v189[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2008, &qword_2268743A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v209 = &v189[-v10];
  v200 = sub_226836208();
  v199 = *(v200 - 8);
  v11 = *(v199 + 64);
  MEMORY[0x28223BE20](v200, v12);
  v198 = &v189[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2010, &qword_2268743A8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v212 = &v189[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18, v19);
  v211 = &v189[-v20];
  MEMORY[0x28223BE20](v21, v22);
  v207 = &v189[-v23];
  MEMORY[0x28223BE20](v24, v25);
  v205 = &v189[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2018, &qword_2268743B0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v206 = &v189[-v30];
  v197 = sub_226836238();
  v196 = *(v197 - 8);
  v31 = *(v196 + 64);
  MEMORY[0x28223BE20](v197, v32);
  v195 = &v189[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v223 = sub_226836068();
  v219 = *(v223 - 8);
  v34 = *(v219 + 64);
  MEMORY[0x28223BE20](v223, v35);
  v202 = &v189[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v37, v38);
  v221 = &v189[-v39];
  v40 = sub_2268361D8();
  v41 = *(v40 - 8);
  v224 = v40;
  v225 = v41;
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40, v43);
  v208 = &v189[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v45, v46);
  v220 = &v189[-v47];
  MEMORY[0x28223BE20](v48, v49);
  v217 = &v189[-v50];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FC0, &qword_2268741E8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8, v53);
  v55 = &v189[-v54];
  v56 = sub_226836168();
  v57 = *(v56 - 8);
  v58 = *(v57 + 64);
  MEMORY[0x28223BE20](v56, v59);
  v201 = &v189[-((v60 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v61, v62);
  v210 = &v189[-v63];
  MEMORY[0x28223BE20](v64, v65);
  v204 = &v189[-v66];
  MEMORY[0x28223BE20](v67, v68);
  v203 = &v189[-v69];
  MEMORY[0x28223BE20](v70, v71);
  v226 = &v189[-v72];
  v73 = sub_226835858();
  v74 = *(v73 - 8);
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73, v76);
  v78 = &v189[-((v77 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v79 = sub_226835AA8();
  v80 = *(v79 - 8);
  v81 = *(v80 + 64);
  MEMORY[0x28223BE20](v79, v82);
  v84 = &v189[-((v83 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_226835B18();
  if ((*(v74 + 88))(v78, v73) != *MEMORY[0x277D1D2E8])
  {
    result = (*(v74 + 8))(v78, v73);
    goto LABEL_5;
  }

  (*(v74 + 96))(v78, v73);
  (*(v80 + 32))(v84, v78, v79);
  sub_226835A98();
  v85 = v79;
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {
    (*(v80 + 8))(v84, v79);
    result = sub_2267A1DC0(v55, &qword_27D7A1FC0, &qword_2268741E8);
LABEL_5:
    v87 = 0;
    goto LABEL_6;
  }

  v88 = v57;
  v193 = v84;
  v194 = v80;
  v89 = v226;
  (*(v57 + 32))(v226, v55, v56);
  v90 = v217;
  sub_226836158();
  v91 = sub_2268361C8();
  v93 = v92;
  v94 = v224;
  v95 = v225 + 8;
  v217 = *(v225 + 8);
  (v217)(v90, v224);
  if (v91 == v222 && v93 == v218)
  {

    v96 = v219;
  }

  else
  {
    v97 = sub_226836B58();

    v96 = v219;
    if ((v97 & 1) == 0)
    {
      v164 = sub_2267FBA9C();
      (*(v96 + 16))(v202, v164, v223);
      (*(v88 + 16))(v201, v89, v56);

      v165 = sub_226836038();
      v166 = sub_2268366C8();

      LODWORD(v225) = v166;
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        v221 = swift_slowAlloc();
        v229 = v221;
        *v167 = 136315394;
        v168 = v94;
        v169 = v220;
        v216 = v165;
        v170 = v201;
        sub_226836158();
        v171 = sub_2268361C8();
        v172 = v168;
        v174 = v173;
        (v217)(v169, v172);
        v175 = *(v88 + 8);
        v175(v170, v56);
        v176 = sub_2263B4D48(v171, v174, &v229);

        *(v167 + 4) = v176;
        *(v167 + 12) = 2080;
        *(v167 + 14) = sub_2263B4D48(v222, v218, &v229);
        v177 = v216;
        _os_log_impl(&dword_2263AA000, v216, v225, "On-screen app entity for bundleID %s doesn't match provided bundleID %s", v167, 0x16u);
        v178 = v221;
        swift_arrayDestroy();
        MEMORY[0x22AA821D0](v178, -1, -1);
        MEMORY[0x22AA821D0](v167, -1, -1);

        (*(v219 + 8))(v202, v223);
        v175(v89, v56);
      }

      else
      {

        v188 = *(v88 + 8);
        v188(v201, v56);
        (*(v96 + 8))(v202, v223);
        v188(v89, v56);
      }

      result = (*(v194 + 8))(v193, v85);
      goto LABEL_5;
    }
  }

  v222 = v85;
  v225 = v95;
  v98 = sub_2267FBA9C();
  (*(v96 + 16))(v221, v98, v223);
  v99 = *(v88 + 16);
  v100 = v89;
  v101 = v203;
  (v99)(v203, v100, v56);
  v102 = v204;
  v218 = v88 + 16;
  v202 = v99;
  (v99)(v204, v100, v56);
  v103 = sub_226836038();
  v104 = sub_2268366B8();
  v105 = os_log_type_enabled(v103, v104);
  v192 = v56;
  v191 = v88;
  if (v105)
  {
    v106 = swift_slowAlloc();
    v201 = swift_slowAlloc();
    v229 = v201;
    *v106 = 136315394;
    v190 = v104;
    v107 = v220;
    sub_226836158();
    v108 = sub_2268361C8();
    v110 = v109;
    (v217)(v107, v224);
    v111 = *(v88 + 8);
    (v111)(v101, v56);
    v112 = sub_2263B4D48(v108, v110, &v229);

    *(v106 + 4) = v112;
    *(v106 + 12) = 2080;
    v113 = sub_226836138();
    v115 = v114;
    v204 = v111;
    (v111)(v102, v56);
    v116 = sub_2263B4D48(v113, v115, &v229);

    *(v106 + 14) = v116;
    _os_log_impl(&dword_2263AA000, v103, v190, "Retrieved app entity for bundleID: %s with identifier: %s", v106, 0x16u);
    v117 = v201;
    swift_arrayDestroy();
    MEMORY[0x22AA821D0](v117, -1, -1);
    MEMORY[0x22AA821D0](v106, -1, -1);
  }

  else
  {

    v118 = *(v88 + 8);
    (v118)(v102, v56);
    v204 = v118;
    (v118)(v101, v56);
  }

  (*(v96 + 8))(v221, v223);
  v119 = v205;
  sub_226836148();
  v120 = sub_226836268();
  v121 = *(v120 - 8);
  v225 = *(v121 + 48);
  v122 = (v225)(v119, 1, v120);
  v123 = v211;
  v124 = v206;
  if (v122 == 1)
  {
    sub_2267A1DC0(v119, &qword_27D7A2010, &qword_2268743A8);
    v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2020, &qword_2268743B8);
    (*(*(v125 - 8) + 56))(v124, 1, 1, v125);
LABEL_17:
    sub_2267A1DC0(v124, &qword_27D7A2018, &qword_2268743B0);
LABEL_18:
    v223 = 0;
    v221 = 0;
    goto LABEL_19;
  }

  sub_226836248();
  (*(v121 + 8))(v119, v120);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2020, &qword_2268743B8);
  v127 = *(v126 - 8);
  if ((*(v127 + 48))(v124, 1, v126) == 1)
  {
    goto LABEL_17;
  }

  if ((*(v127 + 88))(v124, v126) != *MEMORY[0x277D731E0])
  {
    (*(v127 + 8))(v124, v126);
    goto LABEL_18;
  }

  (*(v127 + 96))(v124, v126);
  v179 = v196;
  v180 = v195;
  v181 = v197;
  (*(v196 + 32))(v195, v124, v197);
  v223 = sub_2268361F8();
  v221 = v182;
  (*(v179 + 8))(v180, v181);
LABEL_19:
  v128 = v207;
  sub_226836148();
  v129 = (v225)(v128, 1, v120);
  v130 = v209;
  if (v129 == 1)
  {
    sub_2267A1DC0(v128, &qword_27D7A2010, &qword_2268743A8);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2028, &unk_2268743C0);
    (*(*(v131 - 8) + 56))(v130, 1, 1, v131);
LABEL_22:
    sub_2267A1DC0(v130, &qword_27D7A2008, &qword_2268743A0);
    goto LABEL_23;
  }

  sub_226836218();
  (*(v121 + 8))(v128, v120);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2028, &unk_2268743C0);
  v133 = *(v132 - 8);
  if ((*(v133 + 48))(v130, 1, v132) == 1)
  {
    goto LABEL_22;
  }

  if ((*(v133 + 88))(v130, v132) == *MEMORY[0x277D731E0])
  {
    (*(v133 + 96))(v130, v132);
    v183 = v199;
    v184 = v198;
    v185 = v130;
    v186 = v200;
    (*(v199 + 32))(v198, v185, v200);
    v219 = sub_2268361F8();
    v209 = v187;
    (*(v183 + 8))(v184, v186);
    goto LABEL_24;
  }

  (*(v133 + 8))(v130, v132);
LABEL_23:
  v219 = 0;
  v209 = 0;
LABEL_24:
  v134 = v208;
  sub_226836158();
  v207 = sub_2268361C8();
  v206 = v135;
  v136 = v224;
  v137 = v217;
  (v217)(v134, v224);
  v229 = 0;
  v230 = 0xE000000000000000;
  v138 = v220;
  sub_226836158();
  sub_226836A48();
  v137(v138, v136);
  v224 = v229;
  v220 = v230;
  v217 = sub_226836138();
  v208 = v139;
  sub_226836148();
  if ((v225)(v123, 1, v120) == 1)
  {
    sub_2267A1DC0(v123, &qword_27D7A2010, &qword_2268743A8);
    v205 = 0;
    v140 = 0;
  }

  else
  {
    v205 = sub_2268361E8();
    v140 = v141;
    (*(v121 + 8))(v123, v120);
  }

  v142 = v212;
  sub_226836148();
  if ((v225)(v142, 1, v120) == 1)
  {
    sub_2267A1DC0(v142, &qword_27D7A2010, &qword_2268743A8);
    v143 = 0;
  }

  else
  {
    v143 = sub_226836258();
    (*(v121 + 8))(v142, v120);
  }

  v144 = v210;
  v145 = v226;
  v146 = v192;
  v147 = v202;
  (v202)(v210, v226, v192);
  v148 = v213;
  sub_2268359E8();
  v149 = sub_226835B78();
  (*(isa + 1))(v148, v216);
  v150 = type metadata accessor for AppEntityContext.AppEntity(0);
  v151 = objc_allocWithZone(v150);
  v152 = &v151[OBJC_IVAR___ATXAppEntity_bundleID];
  v153 = v206;
  *v152 = v207;
  v152[1] = v153;
  v154 = &v151[OBJC_IVAR___ATXAppEntity_type];
  v155 = v220;
  *v154 = v224;
  v154[1] = v155;
  v156 = &v151[OBJC_IVAR___ATXAppEntity_identifier];
  v157 = v208;
  *v156 = v217;
  v156[1] = v157;
  v158 = &v151[OBJC_IVAR___ATXAppEntity_displayRepresentationTitle];
  *v158 = v205;
  v158[1] = v140;
  v159 = &v151[OBJC_IVAR___ATXAppEntity_displayRepresentationSubtitle];
  v160 = v221;
  *v159 = v223;
  v159[1] = v160;
  v161 = &v151[OBJC_IVAR___ATXAppEntity_displayRepresentationAltText];
  v162 = v209;
  *v161 = v219;
  v161[1] = v162;
  *&v151[OBJC_IVAR___ATXAppEntity_displayRepresentationSynonyms] = v143;
  v147(&v151[OBJC_IVAR___ATXAppEntity_appEntityValue], v144, v146);
  v151[OBJC_IVAR___ATXAppEntity_isSelected] = v149 & 1;
  v228.receiver = v151;
  v228.super_class = v150;
  v87 = objc_msgSendSuper2(&v228, sel_init);
  v163 = v204;
  (v204)(v144, v146);
  v163(v145, v146);
  result = (*(v194 + 8))(v193, v222);
LABEL_6:
  *v227 = v87;
  return result;
}

id AppEntityContext.init()()
{
  v1 = &v0[OBJC_IVAR___ATXAppEntityContext_uiContextClient];
  v2 = type metadata accessor for AppEntityContext();
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

size_t sub_2267C589C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_2267C5A78(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_226835AD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v13 = *(*v2 + 40);
  sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440]);
  v37 = a2;
  v14 = sub_226836358();
  v15 = v12 + 56;
  v35 = v12 + 56;
  v36 = v12;
  v16 = -1 << *(v12 + 32);
  v17 = v14 & ~v16;
  if ((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v32 = v3;
    v33 = a1;
    v34 = ~v16;
    v31 = v7;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    v22 = (v19 - 8);
    v30[1] = v19 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v23 = v18;
      v18(v11, *(v36 + 48) + v21 * v17, v6);
      sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440]);
      v24 = sub_2268363C8();
      v25 = *v22;
      (*v22)(v11, v6);
      if (v24)
      {
        break;
      }

      v17 = (v17 + 1) & v34;
      v18 = v23;
      if (((*(v35 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        v3 = v32;
        a1 = v33;
        v7 = v31;
        goto LABEL_7;
      }
    }

    v25(v37, v6);
    v23(v33, *(v36 + 48) + v21 * v17, v6);
    return 0;
  }

  else
  {
    v18 = *(v7 + 16);
LABEL_7:
    v26 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = v37;
    v18(v11, v37, v6);
    v38 = *v3;
    sub_2267C60B4(v11, v17, isUniquelyReferenced_nonNull_native);
    *v3 = v38;
    (*(v7 + 32))(a1, v28, v6);
    return 1;
  }
}

uint64_t sub_2267C5D58(uint64_t a1)
{
  v2 = v1;
  v42 = sub_226835AD8();
  v4 = *(v42 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v42, v6);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  result = sub_226836928();
  v11 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v37 = v8;
    v12 = 0;
    v13 = (v8 + 56);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v40 = v4 + 4;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48) + v4[9] * (v20 | (v12 << 6));
      v24 = v4[4];
      v38 = v4[9];
      v39 = v24;
      v24(v41, v23, v42);
      v25 = v11;
      v26 = *(v11 + 40);
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440]);
      result = sub_226836358();
      v11 = v25;
      v27 = -1 << *(v25 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v39(*(v25 + 48) + v19 * v38, v41, v42);
      ++*(v25 + 16);
      v8 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v8 + 32);
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    v2 = v36;
    *(v8 + 16) = 0;
  }

  *v2 = v11;
  return result;
}

uint64_t sub_2267C60B4(uint64_t a1, unint64_t a2, char a3)
{
  v35 = a1;
  v6 = sub_226835AD8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10.n128_f64[0] = MEMORY[0x28223BE20](v6, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v3 + 16);
  v14 = *(*v3 + 24);
  v32 = v3;
  v33 = v7;
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2267C5D58(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_2267C6358();
      goto LABEL_12;
    }

    sub_2267C6590(v13 + 1);
  }

  v15 = *v3;
  v16 = *(*v3 + 40);
  sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440]);
  v17 = sub_226836358();
  v18 = v15 + 56;
  v34 = v15;
  v19 = -1 << *(v15 + 32);
  a2 = v17 & ~v19;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v23 = *(v7 + 16);
    v22 = v7 + 16;
    v21 = v23;
    v24 = *(v22 + 56);
    do
    {
      v21(v12, *(v34 + 48) + v24 * a2, v6);
      sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440]);
      v25 = sub_2268363C8();
      (*(v22 - 8))(v12, v6);
      if (v25)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v26 = v33;
  v27 = *v32;
  *(v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v26 + 32))(*(v27 + 48) + *(v26 + 72) * a2, v35, v6, v10);
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v27 + 16) = v31;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226836B98();
  __break(1u);
  return result;
}

void *sub_2267C6358()
{
  v1 = v0;
  v2 = sub_226835AD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  v8 = *v0;
  v9 = sub_226836918();
  v10 = v9;
  if (*(v8 + 16))
  {
    v24 = v1;
    result = (v9 + 56);
    v12 = v8 + 56;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v12 + 8 * v13)
    {
      result = memmove(result, (v8 + 56), 8 * v13);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v8 + 56);
    v18 = (v15 + 63) >> 6;
    v25 = v3 + 32;
    for (i = v3 + 16; v17; result = (*(v3 + 32))(*(v10 + 48) + v22, v7, v2))
    {
      v19 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_14:
      v22 = *(v3 + 72) * (v19 | (v14 << 6));
      (*(v3 + 16))(v7, *(v8 + 48) + v22, v2);
    }

    v20 = v14;
    while (1)
    {
      v14 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v14 >= v18)
      {

        v1 = v24;
        goto LABEL_18;
      }

      v21 = *(v12 + 8 * v14);
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
    *v1 = v10;
  }

  return result;
}

uint64_t sub_2267C6590(uint64_t a1)
{
  v2 = v1;
  v38 = sub_226835AD8();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38, v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
  v11 = sub_226836928();
  result = v9;
  if (*(v9 + 16))
  {
    v33 = v2;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v36 = v4 + 16;
    v37 = v4;
    v19 = v11 + 56;
    v34 = (v4 + 32);
    v35 = result;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v37 + 72);
      (*(v37 + 16))(v8, *(result + 48) + v24 * (v21 | (v13 << 6)), v38);
      v25 = *(v11 + 40);
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440]);
      result = sub_226836358();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v19 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v19 + 8 * v28);
          if (v32 != -1)
          {
            v20 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v27) & ~*(v19 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v34)(*(v11 + 48) + v20 * v24, v8, v38);
      ++*(v11 + 16);
      result = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
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
    *v2 = v11;
  }

  return result;
}

void (*sub_2267C68AC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x22AA7FDD0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2267C692C;
  }

  __break(1u);
  return result;
}

uint64_t sub_2267C6934(uint64_t a1, uint64_t a2)
{
  v4 = sub_226834EE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = a1;
    v14 = a2;
    v12[2] = 0x43464646755CLL;
    v12[3] = 0xE600000000000000;
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_22679BAA8();
    v13 = sub_226836858();
    v14 = v10;
    sub_226834ED8();
    a1 = sub_226836848();
    (*(v5 + 8))(v9, v4);

    if (sub_2268364A8() < 1)
    {

      return 0;
    }
  }

  return a1;
}

uint64_t sub_2267C6AD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2267A1ED0;

  return sub_2267BD8F0(a1, v4, v5, v6);
}

uint64_t sub_2267C6B84(uint64_t a1)
{
  v2 = sub_226835AD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2068, &unk_2268743E8);
    v12 = sub_226836948();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_2267C7E7C(&qword_27D7A2058, MEMORY[0x277D1D440]);
      v20 = sub_226836358();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_2267C7E7C(&qword_27D7A2060, MEMORY[0x277D1D440]);
          v27 = sub_2268363C8();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2267C6EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FA8, &qword_2268741C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2267C6F14(uint64_t a1)
{
  v2 = sub_226835AE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2030, &qword_2268743D0);
    v12 = sub_226836948();
    v13 = 0;
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v39 = v15;
    v40 = v12 + 56;
    v16 = *(v14 + 64);
    v36 = v11;
    v37 = a1 + ((v16 + 32) & ~v16);
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    v35 = (v14 + 16);
    while (1)
    {
      v38 = v13;
      v39(v41, v37 + v17 * v13, v2);
      v19 = *(v12 + 40);
      sub_2267C7E7C(&qword_27D7A2038, MEMORY[0x277D1D4B0]);
      v20 = sub_226836358();
      v21 = ~(-1 << *(v12 + 32));
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v40 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) != 0)
      {
        while (1)
        {
          v26 = v14;
          v39(v7, *(v12 + 48) + v22 * v17, v2);
          sub_2267C7E7C(&qword_27D7A2040, MEMORY[0x277D1D4B0]);
          v27 = sub_2268363C8();
          v28 = *v18;
          (*v18)(v7, v2);
          if (v27)
          {
            break;
          }

          v22 = (v22 + 1) & v21;
          v23 = v22 >> 6;
          v24 = *(v40 + 8 * (v22 >> 6));
          v25 = 1 << v22;
          v14 = v26;
          if (((1 << v22) & v24) == 0)
          {
            goto LABEL_8;
          }
        }

        v28(v41, v2);
        v14 = v26;
      }

      else
      {
LABEL_8:
        v29 = v41;
        *(v40 + 8 * v23) = v25 | v24;
        result = (*v35)(*(v12 + 48) + v22 * v17, v29, v2);
        v31 = *(v12 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          __break(1u);
          return result;
        }

        *(v12 + 16) = v33;
      }

      v13 = v38 + 1;
      if (v38 + 1 == v36)
      {
        return v12;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2267C7234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a2;
  v40 = a3;
  v38 = *(a1 + 16);
  if (!v38)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(sub_226835A08() - 8);
  v37 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v36 = *(v7 + 72);
  while (1)
  {
    v10 = v37 + v36 * v6;
    v11 = sub_2268359F8();
    MEMORY[0x28223BE20](v11, v12);
    v34[2] = v39;
    v34[3] = v40;
    v34[4] = v10;
    v13 = sub_2267C2A08(sub_2267C7D98, v34, v11);

    v14 = v13 >> 62;
    v15 = v13 >> 62 ? sub_2268368D8() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v8 >> 62;
    if (v8 >> 62)
    {
      v33 = sub_2268368D8();
      v18 = v33 + v15;
      if (__OFADD__(v33, v15))
      {
LABEL_34:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_34;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v16)
      {
        goto LABEL_16;
      }

      v19 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v16)
      {
LABEL_16:
        sub_2268368D8();
        goto LABEL_17;
      }

      v19 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v19 + 16);
LABEL_17:
    result = sub_2268369B8();
    v8 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v14)
    {
      break;
    }

    v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_38;
    }

    v42 = v6;
    v43 = v8;
    v45 = v4;
    v25 = v19 + 8 * v21 + 32;
    v41 = v15;
    v35 = v19;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_40;
      }

      sub_2267A0610(&qword_27D7A2000, &qword_27D7A1FF8, &qword_226874398);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1FF8, &qword_226874398);
        v27 = sub_2267C68AC(v44, i, v13);
        v29 = *v28;
        (v27)(v44, 0);
        *(v25 + 8 * i) = v29;
      }
    }

    else
    {
      type metadata accessor for AppEntityContext.AppEntity(0);
      swift_arrayInitWithCopy();
    }

    v6 = v42;
    v4 = v45;
    v8 = v43;
    if (v41 >= 1)
    {
      v30 = *(v35 + 16);
      v31 = __OFADD__(v30, v41);
      v32 = v30 + v41;
      if (v31)
      {
        goto LABEL_39;
      }

      *(v35 + 16) = v32;
    }

LABEL_4:
    if (++v6 == v38)
    {
      return v8;
    }
  }

  v24 = v19;
  result = sub_2268368D8();
  v19 = v24;
  v23 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of AppEntityContext.fetchOnScreenContext(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x78);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2267A1644;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AppEntityContext.retrieveSelectedTextContent(for:minSize:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x80);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2267C7888;

  return v12(a1, a2, a3);
}

uint64_t sub_2267C7888(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t dispatch thunk of AppEntityContext.retrieveOnScreenDocuments(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x90);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2267C7EC4;

  return v10(a1, a2);
}

uint64_t sub_2267C7B1C()
{
  result = sub_2268361B8();
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

uint64_t sub_2267C7C0C()
{
  result = sub_226836168();
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

uint64_t sub_2267C7CE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2263BA0A4;

  return sub_2267C0C90(v2, v3, v4);
}

uint64_t sub_2267C7DC8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2263BA0A4;

  return sub_2267BDD04(a1, v7, v8, v4, v5, v6);
}

uint64_t sub_2267C7E7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267C7ED4()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier);
  v2 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier + 8);

  return v1;
}

uint64_t sub_2267C7F30()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem);
  v2 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem + 8);

  return v1;
}

uint64_t sub_2267C7F6C()
{
  v1 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory);
  v2 = *(v0 + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory + 8);

  return v1;
}

id PowerThrottlingCreditPool.Config.__allocating_init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier];
  *v18 = a1;
  *(v18 + 1) = a2;
  *&v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits] = a3;
  *&v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit] = a4;
  v19 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = &v17[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory];
  *v20 = a7;
  *(v20 + 1) = a8;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

id PowerThrottlingCreditPool.Config.init(identifier:maxCredits:secondsToReplenishOneCredit:loggingSubsystem:loggingCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = &v8[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier];
  *v9 = a1;
  *(v9 + 1) = a2;
  *&v8[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits] = a3;
  *&v8[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit] = a4;
  v10 = &v8[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem];
  *v10 = a5;
  *(v10 + 1) = a6;
  v11 = &v8[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory];
  *v11 = a7;
  *(v11 + 1) = a8;
  v13.receiver = v8;
  v13.super_class = type metadata accessor for PowerThrottlingCreditPool.Config();
  return objc_msgSendSuper2(&v13, sel_init);
}

id PowerThrottlingCreditPool.Config.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2267C8348(void *a1)
{
  *(v1 + 24) = a1;
  v3 = *MEMORY[0x277CEBD00];
  sub_226836408();
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = a1;
  v6 = sub_2268363F8();

  v7 = [v4 initWithSuiteName_];

  if (v7)
  {
    *(v1 + 16) = v7;
  }

  else
  {

    type metadata accessor for PowerThrottlingCreditPool.State();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

unint64_t sub_2267C843C(uint64_t a1, uint64_t a2)
{
  sub_226836968();

  v5 = (*(v2 + 24) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_identifier);
  v6 = *v5;
  v7 = v5[1];

  MEMORY[0x22AA7F8E0](v6, v7);

  MEMORY[0x22AA7F8E0](95, 0xE100000000000000);
  MEMORY[0x22AA7F8E0](a1, a2);
  return 0xD000000000000020;
}

id sub_2267C850C()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v2 = sub_2268363F8();

  v3 = [v1 integerForKey_];

  return v3;
}

void sub_2267C8580()
{
  v1 = *(v0 + 16);
  v2 = sub_226836698();
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v3 = sub_2268363F8();

  [v1 setValue:v2 forKey:v3];
}

void (*sub_2267C8614(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v4 = sub_2268363F8();

  v5 = [v3 integerForKey_];

  *a1 = v5;
  return sub_2267C86AC;
}

void sub_2267C86AC(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v5 = sub_226836698();
  sub_2267C843C(0x73746964657263, 0xE700000000000000);
  v4 = sub_2268363F8();

  [v1 setValue:v5 forKey:v4];
}

double sub_2267C8744()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v2 = sub_2268363F8();

  [v1 doubleForKey_];
  v4 = v3;

  return v4;
}

void sub_2267C87C4()
{
  v1 = *(v0 + 16);
  v2 = sub_226836648();
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v3 = sub_2268363F8();

  [v1 setValue:v2 forKey:v3];
}

void (*sub_2267C885C(void *a1))(uint64_t *a1)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v4 = sub_2268363F8();

  [v3 doubleForKey_];
  v6 = v5;

  *a1 = v6;
  return sub_2267C8900;
}

void sub_2267C8900(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *a1;
  v5 = sub_226836648();
  sub_2267C843C(0xD000000000000018, 0x80000002268CEDC0);
  v4 = sub_2268363F8();

  [v1 setValue:v5 forKey:v4];
}

uint64_t sub_2267C899C()
{
  v1 = *(v0 + 16);
  sub_2267C843C(0xD00000000000001BLL, 0x80000002268CEDE0);
  v2 = sub_2268363F8();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_2267C8A9C(v8);
  }

  return *(*(v0 + 24) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_secondsToReplenishOneCredit);
}

uint64_t sub_2267C8A9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1AA0, &qword_2268732C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2267C8B2C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2267C8B6C()
{
  v0 = sub_226836708();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  v3 = sub_2268362B8();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v6 = sub_226836718();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22679C4BC();
  (*(v7 + 104))(v11, *MEMORY[0x277D85268], v6);
  sub_2268362A8();
  v13[1] = MEMORY[0x277D84F90];
  sub_2267C8D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A5AD0();
  sub_226836888();
  return sub_226836738();
}

unint64_t sub_2267C8D64()
{
  result = qword_28138FE00;
  if (!qword_28138FE00)
  {
    sub_226836708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE00);
  }

  return result;
}

id PowerThrottlingCreditPool.__allocating_init(config:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_2267C9A08(a1);

  return v4;
}

id PowerThrottlingCreditPool.init(config:)(void *a1)
{
  v2 = sub_2267C9A08(a1);

  return v2;
}

uint64_t sub_2267C8E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR___ATXPowerThrottlingCreditPool_queue];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2267C9D60;
  *(v9 + 24) = v8;
  v14[4] = sub_2267A5A70;
  v14[5] = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_2267A3E84;
  v14[3] = &block_descriptor_4;
  v10 = _Block_copy(v14);
  v11 = v3;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2267C8FC8(uint64_t a1, NSObject *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_226835228();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + OBJC_IVAR___ATXPowerThrottlingCreditPool_state);
  if (!v14)
  {
    v60 = sub_226836038();
    v19 = sub_2268366E8();
    if (os_log_type_enabled(v60, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2263AA000, v60, v19, "PowerThrottlingCreditPool: Failed to initialize state. Dropping request.", v20, 2u);
      MEMORY[0x22AA821D0](v20, -1, -1);
    }

    v21 = v60;

    return;
  }

  v60 = a2;
  v57 = a4;
  swift_retain_n();
  v15 = sub_226836038();
  v16 = sub_2268366E8();
  v17 = os_log_type_enabled(v15, v16);
  v58 = a3;
  if (v17)
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v60;
    *(v18 + 12) = 2048;
    *(v18 + 14) = (*(*v14 + 112))();

    _os_log_impl(&dword_2263AA000, v15, v16, "PowerThrottlingCreditPool: Request to consume %ld credits. Currently at %ld before replenishing", v18, 0x16u);
    MEMORY[0x22AA821D0](v18, -1, -1);
  }

  else
  {
  }

  sub_226835208();
  sub_226835168();
  v23 = v22;
  v24 = (*(v9 + 8))(v13, v8);
  v25 = v23 - (*(*v14 + 136))(v24);
  if (COERCE__INT64(fabs(v25)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v26 = *(*(a1 + OBJC_IVAR___ATXPowerThrottlingCreditPool_config) + OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_maxCredits);
  v27 = *(*v14 + 112);
  v28 = *v14 + 112;
  v29 = v27();
  v30 = __OFSUB__(v26, v29);
  v31 = v26 - v29;
  if (v30)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v32 = (*(*v14 + 160))();
  if (!v32)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v33 = v25;
  if (v25 == 0x8000000000000000 && v32 == -1)
  {
    goto LABEL_46;
  }

  v59 = v28;
  if ((v31 & ~(v31 >> 63)) >= v33 / v32)
  {
    v35 = v33 / v32;
  }

  else
  {
    v35 = v31 & ~(v31 >> 63);
  }

  v36 = v35 & ~(v35 >> 63);
  v37 = sub_226836038();
  v38 = sub_2268366E8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134218240;
    *(v39 + 4) = v33;
    *(v39 + 12) = 2048;
    *(v39 + 14) = v36;
    _os_log_impl(&dword_2263AA000, v37, v38, "PowerThrottlingCreditPool: secondsSinceLastReplenish: %ld creditsToReplenish: %ld", v39, 0x16u);
    MEMORY[0x22AA821D0](v39, -1, -1);
  }

  if (v35 < 1)
  {
    goto LABEL_29;
  }

  v41 = sub_226836038();
  v42 = sub_2268366E8();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 134217984;
    *(v43 + 4) = v36;
    _os_log_impl(&dword_2263AA000, v41, v42, "PowerThrottlingCreditPool: Replenishing %ld credits and setting timestampLastReplenished", v43, 0xCu);
    MEMORY[0x22AA821D0](v43, -1, -1);
  }

  v44 = (*(*v14 + 128))(v61);
  if (__OFADD__(*v45, v36))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

  *v45 += v36;
  v46 = v44(v61, 0);
  v40 = (*(*v14 + 144))(v46, v23);
LABEL_29:
  if ((v27)(v40) > 0)
  {
    v47 = (*(*v14 + 128))(v61);
    v49 = v60;
    if (!__OFSUB__(*v48, v60))
    {
      *v48 -= v60;
      v47(v61, 0);

      v50 = sub_226836038();
      v51 = sub_2268366E8();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 134218240;
        *(v52 + 4) = v49;
        *(v52 + 12) = 2048;
        *(v52 + 14) = v27();

        _os_log_impl(&dword_2263AA000, v50, v51, "PowerThrottlingCreditPool: Running block and consuming %ld credits, remaining credits: %ld", v52, 0x16u);
        MEMORY[0x22AA821D0](v52, -1, -1);
      }

      else
      {
      }

      v58(v53);
      goto LABEL_37;
    }

    goto LABEL_45;
  }

  v54 = sub_226836038();
  v55 = sub_2268366E8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 134217984;
    *(v56 + 4) = v27();

    _os_log_impl(&dword_2263AA000, v54, v55, "PowerThrottlingCreditPool: Not enought credits to run block. Dropping request. credits: %ld", v56, 0xCu);
    MEMORY[0x22AA821D0](v56, -1, -1);

LABEL_37:

    return;
  }
}

id sub_2267C9934(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_2267C9A08(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = sub_226836068();
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v31 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_226836708();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7, v9);
  v10 = sub_2268362B8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v13 = sub_226836718();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR___ATXPowerThrottlingCreditPool_queue;
  sub_22679C4BC();
  (*(v14 + 104))(v18, *MEMORY[0x277D85268], v13);
  sub_2268362A8();
  v35 = MEMORY[0x277D84F90];
  sub_2267C8D64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
  sub_2267A5AD0();
  sub_226836888();
  *&v1[v19] = sub_226836738();
  type metadata accessor for PowerThrottlingCreditPool.State();
  swift_allocObject();
  v20 = v30;
  *&v1[OBJC_IVAR___ATXPowerThrottlingCreditPool_state] = sub_2267C8348(v20);
  *&v1[OBJC_IVAR___ATXPowerThrottlingCreditPool_config] = v20;
  v21 = *&v20[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem];
  v22 = *&v20[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingSubsystem + 8];
  v23 = *&v20[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory];
  v24 = *&v20[OBJC_IVAR___ATXPowerThrottlingCreditPoolConfig_loggingCategory + 8];
  v25 = v20;

  v26 = v31;
  sub_226836048();
  (*(v32 + 32))(v2 + OBJC_IVAR___ATXPowerThrottlingCreditPool_logger, v26, v33);
  v27 = type metadata accessor for PowerThrottlingCreditPool();
  v34.receiver = v2;
  v34.super_class = v27;
  return objc_msgSendSuper2(&v34, sel_init);
}

uint64_t type metadata accessor for PowerThrottlingCreditPool()
{
  result = qword_281390480;
  if (!qword_281390480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2267C9DC0()
{
  result = sub_226836068();
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

id sub_2267C9F18()
{
  v0 = sub_226836068();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  return sub_2267CA3B0();
}

id sub_2267CA0F8()
{
  result = sub_2267CA118();
  qword_27D7A51B0 = result;
  return result;
}

id sub_2267CA118()
{
  v0 = sub_226836068();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0, v2);
  return sub_2267CA99C();
}

uint64_t *sub_2267CA304()
{
  if (qword_27D7A3980 != -1)
  {
    swift_once();
  }

  return &qword_27D7A51B0;
}

uint64_t sub_2267CA354()
{
  if (qword_27D7A3980 != -1)
  {
    swift_once();
  }
}

id sub_2267CA3B0()
{
  v40[4] = *MEMORY[0x277D85DE8];
  v37 = sub_226835068();
  v0 = *(v37 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v37, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_2268350D8();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = sub_2268363F8();
  v17 = sub_2268363F8();
  v18 = [v15 pathForResource:v16 ofType:v17 isDirectory:0];

  if (!v18)
  {
    sub_2267CAE68();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_226836408();

  v19 = v36;
  (*(v36 + 56))(v9, 1, 1, v10);
  (*(v0 + 104))(v4, *MEMORY[0x277CC91D8], v37);
  sub_2268350C8();
  v18 = objc_autoreleasePoolPush();
  v20 = v38;
  v21 = sub_2268350F8();
  v23 = v19;
  v24 = v14;
  if (v20)
  {
    goto LABEL_3;
  }

  v27 = v21;
  v28 = v22;
  v29 = v18;
  v30 = objc_opt_self();
  v31 = sub_226835138();
  v40[0] = 0;
  v32 = [v30 propertyListWithData:v31 options:0 format:0 error:v40];

  if (!v32)
  {
    v34 = v40[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v27, v28);
    v18 = v29;
LABEL_3:
    objc_autoreleasePoolPop(v18);
    (*(v23 + 8))(v24, v10);
    goto LABEL_5;
  }

  v33 = v40[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  if (swift_dynamicCast())
  {
    v18 = v39;
    sub_2267A1D24(v27, v28);
  }

  else
  {
    sub_2267A1D24(v27, v28);
    v18 = MEMORY[0x277D84F90];
  }

  objc_autoreleasePoolPop(v29);
  (*(v23 + 8))(v24, v10);
LABEL_5:
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

unint64_t sub_2267CA804()
{
  result = qword_27D7A20C8;
  if (!qword_27D7A20C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A20C8);
  }

  return result;
}

unint64_t sub_2267CA88C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20D0, &qword_2268745D0);
    v3 = sub_226836AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2267CADE8(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2263B9740(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2267CAE58(&v15, (v3[7] + 32 * result));
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

id sub_2267CA99C()
{
  v40[4] = *MEMORY[0x277D85DE8];
  v37 = sub_226835068();
  v0 = *(v37 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v37, v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A1A10, &qword_226873060);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v35 - v8;
  v10 = sub_2268350D8();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = objc_opt_self();
  v16 = sub_2268363F8();
  v17 = sub_2268363F8();
  v18 = [v15 pathForResource:v16 ofType:v17 isDirectory:0];

  if (!v18)
  {
    sub_2267CAE68();
    swift_allocError();
    swift_willThrow();
    goto LABEL_5;
  }

  sub_226836408();

  v19 = v36;
  (*(v36 + 56))(v9, 1, 1, v10);
  (*(v0 + 104))(v4, *MEMORY[0x277CC91D8], v37);
  sub_2268350C8();
  v18 = objc_autoreleasePoolPush();
  v20 = v38;
  v21 = sub_2268350F8();
  v23 = v19;
  v24 = v14;
  if (v20)
  {
    goto LABEL_3;
  }

  v27 = v21;
  v28 = v22;
  v29 = v18;
  v30 = objc_opt_self();
  v31 = sub_226835138();
  v40[0] = 0;
  v32 = [v30 propertyListWithData:v31 options:0 format:0 error:v40];

  if (!v32)
  {
    v34 = v40[0];
    sub_226835028();

    swift_willThrow();
    sub_2267A1D24(v27, v28);
    v18 = v29;
LABEL_3:
    objc_autoreleasePoolPop(v18);
    (*(v23 + 8))(v24, v10);
    goto LABEL_5;
  }

  v33 = v40[0];
  sub_226836878();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20E8, &qword_2268745E8);
  if (swift_dynamicCast())
  {
    v18 = v39;
  }

  else
  {
    v18 = sub_2267CA88C(MEMORY[0x277D84F90]);
  }

  sub_2267A1D24(v27, v28);
  objc_autoreleasePoolPop(v29);
  (*(v23 + 8))(v24, v10);
LABEL_5:
  v25 = *MEMORY[0x277D85DE8];
  return v18;
}

uint64_t sub_2267CADE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20D8, &unk_2268745D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2267CAE58(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2267CAE68()
{
  result = qword_27D7A20E0;
  if (!qword_27D7A20E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A20E0);
  }

  return result;
}

uint64_t sub_2267CAEBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226835228();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_226836068();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267CAFFC, 0, 0);
}

uint64_t sub_2267CAFFC()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v4 = sub_226799540();
  v0[13] = v4;
  v5 = *(v3 + 16);
  v0[14] = v5;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_226836038();
  v7 = sub_2268366E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2263AA000, v6, v7, "createSuggestions", v8, 2u);
    MEMORY[0x22AA821D0](v8, -1, -1);
  }

  v9 = v0[12];
  v10 = v0[7];
  v11 = v0[8];
  v12 = v0[6];
  v13 = v0[2];
  v14 = v0[3];

  v15 = *(v11 + 8);
  v0[16] = v15;
  v15(v9, v10);
  sub_226835198();
  type metadata accessor for SportsContextProducer();
  v0[17] = sub_2263B91B8();
  v16 = swift_task_alloc();
  v0[18] = v16;
  *v16 = v0;
  v16[1] = sub_2267CB1A8;
  v17 = v0[6];
  v18 = v0[2];

  return sub_2267E8D18(v18, v17);
}

uint64_t sub_2267CB1A8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v8 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = sub_2267CB59C;
  }

  else
  {
    v6 = v3[17];

    v5 = sub_2267CB2C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2267CB2C4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 120);
  (*(v0 + 112))(*(v0 + 88), *(v0 + 104), *(v0 + 56));

  v3 = sub_226836038();
  v4 = sub_2268366E8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 152);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&dword_2263AA000, v3, v4, "Contexts created %ld", v7, 0xCu);
    MEMORY[0x22AA821D0](v7, -1, -1);
  }

  else
  {
    v8 = *(v0 + 152);
  }

  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  v11 = *(v0 + 120);
  v13 = *(v0 + 104);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  v15 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 88), v15);
  type metadata accessor for SportsSuggestionProducer();
  sub_2263B91B8();
  v16 = sub_2267CC354(v10);

  v12(v14, v13, v15);

  v17 = sub_226836038();
  v18 = sub_2268366E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    if (v16 >> 62)
    {
      v20 = sub_2268368D8();
    }

    else
    {
      v20 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v19 + 4) = v20;

    _os_log_impl(&dword_2263AA000, v17, v18, "Created total suggestions %ld", v19, 0xCu);
    MEMORY[0x22AA821D0](v19, -1, -1);
  }

  else
  {
  }

  v21 = *(v0 + 128);
  v22 = *(v0 + 80);
  v23 = *(v0 + 56);

  v21(v22, v23);
  v25 = *(v0 + 88);
  v24 = *(v0 + 96);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));

  v28 = *(v0 + 8);

  return v28(v16);
}

uint64_t sub_2267CB59C()
{
  v1 = v0[20];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[7];

  v4(v6, v5, v7);
  v8 = v1;
  v9 = sub_226836038();
  v10 = sub_2268366C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = v0[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_2263AA000, v9, v10, "Context producer error: %@", v12, 0xCu);
    sub_2267A1DC0(v13, &unk_27D7A1D90, &unk_226873270);
    MEMORY[0x22AA821D0](v13, -1, -1);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  v16 = v0[20];
  v17 = v0[16];
  v19 = v0[8];
  v18 = v0[9];
  v20 = v0[7];

  v17(v18, v20);
  v21 = v0[11];
  v22 = v0[12];
  v24 = v0[9];
  v23 = v0[10];
  (*(v0[5] + 8))(v0[6], v0[4]);

  v25 = v0[1];
  v26 = MEMORY[0x277D84F90];

  return v25(v26);
}

uint64_t sub_2267CB790@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_226836068();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SportsContextEntry(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v56 - v17;
  v19 = *a1;
  v20 = *(*a1 + 16);
  if (v20)
  {
    if (v20 == 2)
    {
      v21 = v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      sub_2267CC79C(v21, &v56 - v17, type metadata accessor for SportsContextEntry);
      sub_2267CC79C(v21 + *(v10 + 72), v14, type metadata accessor for SportsContextEntry);
      v22 = sub_2267D0490();
      v24 = v23;
      v25 = *(v9 + 24);
      v62[3] = type metadata accessor for SportsDependencies(0);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v62);
      sub_2267CC79C(&v18[v25], boxed_opaque_existential_0, type metadata accessor for SportsDependencies);
      v27 = sub_2267DF6CC(v22, v24, v62);

      v28 = __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x28223BE20](v28, v29);
      *(&v56 - 2) = v18;
      *(&v56 - 1) = v14;
      v30 = sub_2267CC214(sub_2267CC804, (&v56 - 4), v27);

      *a2 = v30;
      sub_2267CC6DC(v14);
      return sub_2267CC6DC(v18);
    }

    v57 = a2;
    v58 = v2;
    v62[0] = MEMORY[0x277D84F90];
    v47 = v19;
    sub_2267A0578(0, v20, 0);
    v32 = v62[0];
    v48 = *(v10 + 80);
    v56 = v47;
    v49 = v47 + ((v48 + 32) & ~v48);
    v63 = *(v10 + 72);
    do
    {
      sub_2267CC79C(v49, v14, type metadata accessor for SportsContextEntry);
      sub_226835228();
      sub_2267CC684();
      v50 = sub_226836B48();
      v52 = v51;
      sub_2267CC6DC(v14);
      v62[0] = v32;
      v54 = *(v32 + 16);
      v53 = *(v32 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_2267A0578((v53 > 1), v54 + 1, 1);
        v32 = v62[0];
      }

      *(v32 + 16) = v54 + 1;
      v55 = v32 + 16 * v54;
      *(v55 + 32) = v50;
      *(v55 + 40) = v52;
      v49 += v63;
      --v20;
    }

    while (v20);
  }

  else
  {
    v56 = *a1;
    v57 = a2;
    v58 = v2;
    v32 = MEMORY[0x277D84F90];
  }

  v62[0] = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1CC0, qword_226873D50);
  sub_2267A0610(&qword_27D7A1A90, &unk_27D7A1CC0, qword_226873D50);
  v33 = sub_226836388();
  v35 = v34;

  v36 = sub_226799540();
  v38 = v59;
  v37 = v60;
  v39 = v61;
  (*(v59 + 16))(v61, v36, v60);
  v40 = v56;

  v41 = sub_226836038();
  v42 = sub_2268366C8();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62[0] = v44;
    *v43 = 134218242;
    *(v43 + 4) = *(v40 + 16);

    *(v43 + 12) = 2080;
    v45 = sub_2263B4D48(v33, v35, v62);

    *(v43 + 14) = v45;
    v46 = v57;
    _os_log_impl(&dword_2263AA000, v41, v42, "Context pair error %ld: %s", v43, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x22AA821D0](v44, -1, -1);
    MEMORY[0x22AA821D0](v43, -1, -1);

    result = (*(v38 + 8))(v61, v37);
  }

  else
  {

    result = (*(v38 + 8))(v39, v37);
    v46 = v57;
  }

  *v46 = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2267CBD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v59 = a3;
  v60 = a4;
  v6 = sub_226836068();
  v57 = *(v6 - 8);
  v58 = v6;
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v56 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v53 - v17;
  v19 = sub_226835228();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19, v22);
  v55 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v53 - v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v53 - v30;
  v32 = *(a1 + 16);
  v33 = v59;
  sub_2267CF450(v32, a2, v59, &v53 - v30);
  sub_2267CF74C(v32, a2, v33, v27);
  v34 = v20[2];
  v61 = v31;
  v34(v18, v31, v19);
  v35 = v20[7];
  v35(v18, 0, 1, v19);
  v34(v14, v27, v19);
  v35(v14, 0, 1, v19);
  sub_22679C634(a1 + 24, v18, v14);
  v37 = v36;
  sub_2267A1DC0(v14, &qword_27D7A2530, qword_2268738A0);
  sub_2267A1DC0(v18, &qword_27D7A2530, qword_2268738A0);
  if (v37)
  {
    v38 = v20[1];
    v38(v27, v19);
    result = (v38)(v61, v19);
  }

  else
  {
    v59 = v27;
    v40 = sub_226799540();
    (*(v57 + 16))(v56, v40, v58);
    v41 = v61;
    v34(v55, v61, v19);
    v42 = sub_226836038();
    v43 = sub_2268366C8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v62 = v54;
      *v44 = 136315138;
      sub_2267CC684();
      v45 = v55;
      v46 = sub_226836B48();
      v48 = v47;
      v49 = v20[1];
      v49(v45, v19);
      v50 = sub_2263B4D48(v46, v48, &v62);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_2263AA000, v42, v43, "Unable to create suggestion %s", v44, 0xCu);
      v51 = v54;
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x22AA821D0](v51, -1, -1);
      MEMORY[0x22AA821D0](v44, -1, -1);

      (*(v57 + 8))(v56, v58);
      v49(v59, v19);
      result = (v49)(v61, v19);
    }

    else
    {

      v52 = v20[1];
      v52(v55, v19);
      (*(v57 + 8))(v56, v58);
      v52(v59, v19);
      result = (v52)(v41, v19);
    }
  }

  *v60 = v37;
  return result;
}

void *sub_2267CC214(void *result, uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = a3 + 32;
    v12 = a3 + 32;
    do
    {
      v9 = v8 + (v7 << 6);
      for (i = v7; ; ++i)
      {
        if (i >= v5)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = v6(&v13, v9);
        if (v3)
        {

          return v4;
        }

        if (v13)
        {
          break;
        }

        v9 += 64;
        if (v7 == v5)
        {
          return v4;
        }
      }

      MEMORY[0x22AA7F970](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226836588();
      }

      result = sub_2268365A8();
      v4 = v14;
      v8 = v12;
    }

    while (v7 != v5);
  }

  return v4;
}

uint64_t sub_2267CC354(uint64_t a1)
{
  v2 = v1;
  v31 = *(a1 + 16);
  if (!v31)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  v30 = a1 + 32;
  while (1)
  {
    v35 = *(v30 + 8 * v3);

    v6 = v2;
    sub_2267CB790(&v35, &v34);
    if (v2)
    {

      return v4;
    }

    v7 = v34;
    v8 = v34 >> 62;
    v9 = v34 >> 62 ? sub_2268368D8() : *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = v4 >> 62;
    if (v4 >> 62)
    {
      v28 = sub_2268368D8();
      v12 = v28 + v9;
      if (__OFADD__(v28, v9))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = v11 + v9;
      if (__OFADD__(v11, v9))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v10)
      {
        goto LABEL_17;
      }

      v13 = v4 & 0xFFFFFFFFFFFFFF8;
      if (v12 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = v9;
        goto LABEL_19;
      }
    }

    else
    {
      if (v10)
      {
LABEL_17:
        sub_2268368D8();
        goto LABEL_18;
      }

      v13 = v4 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v13 + 16);
LABEL_18:
    v14 = v9;
    result = sub_2268369B8();
    v4 = result;
    v13 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v16 = *(v13 + 16);
    v17 = *(v13 + 24);
    if (v8)
    {
      break;
    }

    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v17 >> 1) - v16) < v14)
    {
      goto LABEL_40;
    }

    v32 = v4;
    v20 = v13 + 8 * v16 + 32;
    v29 = v13;
    if (v8)
    {
      if (v18 < 1)
      {
        goto LABEL_42;
      }

      sub_2267A0610(&qword_27D7A20F8, &qword_27D7A20F0, "Rw\n");
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A20F0, "Rw\n");
        v22 = sub_2267C68AC(v33, i, v7);
        v24 = *v23;
        (v22)(v33, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_2263B51C8();
      swift_arrayInitWithCopy();
    }

    v2 = v6;
    v4 = v32;
    if (v14 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v14);
      v27 = v25 + v14;
      if (v26)
      {
        goto LABEL_41;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v3 == v31)
    {
      return v4;
    }
  }

  v19 = v13;
  result = sub_2268368D8();
  v13 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_2267CC684()
{
  result = qword_28138FE40;
  if (!qword_28138FE40)
  {
    sub_226835228();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28138FE40);
  }

  return result;
}

uint64_t sub_2267CC6DC(uint64_t a1)
{
  v2 = type metadata accessor for SportsContextEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2267CC79C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id sub_2267CC830()
{
  v1 = v0;
  v2 = sub_226836708();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2, v4);
  v5 = sub_2268362B8();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = sub_226836718();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue;
  v15 = *(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue);
  if (v15)
  {
    v16 = *(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue);
  }

  else
  {
    v17 = sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
    v22[1] = "pertd.updateSportsSuggestions";
    v22[2] = v17;
    (*(v9 + 104))(v13, *MEMORY[0x277D85268], v8);
    sub_2268362A8();
    v22[3] = MEMORY[0x277D84F90];
    sub_2267CE9C8(&qword_28138FE00, MEMORY[0x277D85230]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2510, &qword_2268754C0);
    sub_2267CEA10(&qword_28138FE20, &unk_27D7A2510, &qword_2268754C0);
    sub_226836888();
    v18 = sub_226836738();
    v19 = *(v0 + v14);
    *(v1 + v14) = v18;
    v16 = v18;

    v15 = 0;
  }

  v20 = v15;
  return v16;
}

uint64_t sub_2267CCAC4()
{
  v1 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2267CCB08(uint64_t a1)
{
  v3 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ContextHeuristicsScheduler.__allocating_init(contextHeuristics:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_timer] = 0;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics] = a1;
  *&v3[OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval] = 7200;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ContextHeuristicsScheduler.init(contextHeuristics:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler____lazy_storage___queue] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_timer] = 0;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics] = a1;
  *&v1[OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval] = 7200;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Void __swiftcall ContextHeuristicsScheduler.start()()
{
  v0 = sub_226836298();
  v88 = *(v0 - 8);
  v89 = v0;
  v1 = *(v88 + 64);
  MEMORY[0x28223BE20](v0, v2);
  v87 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_226836278();
  v85 = *(v86 - 8);
  v4 = *(v85 + 64);
  MEMORY[0x28223BE20](v86, v5);
  v84 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v82 = (&v79 - v9);
  v83 = sub_2268362D8();
  v81 = *(v83 - 8);
  v10 = *(v81 + 64);
  MEMORY[0x28223BE20](v83, v11);
  v80 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_226836288();
  v94 = *(v13 - 8);
  ObjectType = v13;
  v14 = *(v94 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v92 = &v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_2268362B8();
  v91 = *(v93 - 8);
  v17 = *(v91 + 64);
  MEMORY[0x28223BE20](v93, v18);
  v90 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_226836758();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_226836068();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2267F78F4();
  (*(v27 + 16))(v31, v32, v26);
  v33 = sub_226836038();
  v34 = sub_2268366E8();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_2263AA000, v33, v34, "Starting ContextHeuristicsScheduler", v35, 2u);
    MEMORY[0x22AA821D0](v35, -1, -1);
  }

  (*(v27 + 8))(v31, v26);
  v36 = v96;
  sub_2267CD83C();
  sub_2263B5030(0, &qword_28138FDD8, 0x277D85CA0);
  v37 = sub_2267CC830();
  aBlock = MEMORY[0x277D84F90];
  sub_2267CE9C8(&unk_28138FDE0, MEMORY[0x277D85278]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2138, qword_226874650);
  sub_2267CEA10(&unk_28138FE10, &unk_27D7A2138, qword_226874650);
  v38 = v36;
  sub_226836888();
  v39 = sub_226836768();

  (*(v21 + 8))(v25, v20);
  v40 = OBJC_IVAR___ATXContextHeuristicsScheduler_timer;
  v41 = *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_timer);
  *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_timer) = v39;
  swift_unknownObjectRelease();
  if (*(v38 + v40))
  {
    v42 = *(v38 + v40);
    swift_getObjectType();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = sub_2267CD8E0;
    v102 = v43;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_22679BFD8;
    v100 = &block_descriptor_5;
    v44 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    v45 = v90;
    sub_2268362A8();
    v46 = v92;
    sub_2267CDB98();
    sub_226836778();
    _Block_release(v44);
    swift_unknownObjectRelease();
    (*(v94 + 8))(v46, ObjectType);
    (*(v91 + 8))(v45, v93);

    if (*(v38 + v40))
    {
      v47 = *(v38 + v40);
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v48 = v80;
      sub_2268362C8();
      v49 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
      swift_beginAccess();
      v50 = v82;
      *v82 = *(v38 + v49);
      v51 = *MEMORY[0x277D85188];
      v52 = v85;
      v53 = *(v85 + 104);
      v54 = v86;
      v53(v50, v51, v86);
      v55 = v84;
      *v84 = 10;
      v53(v55, v51, v54);
      MEMORY[0x22AA7FBF0](v48, v50, v55, ObjectType);
      swift_unknownObjectRelease();
      v56 = *(v52 + 8);
      v57 = v55;
      v38 = v96;
      v56(v57, v54);
      v56(v50, v54);
      (*(v81 + 8))(v48, v83);
      if (*(v38 + v40))
      {
        v58 = *(v38 + v40);
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_226836798();
        swift_unknownObjectRelease();
      }
    }
  }

  if ([objc_opt_self() isInternalBuild])
  {
    sub_2263B5030(0, &qword_28138FDF0, 0x277D85C78);
    v60 = v87;
    v59 = v88;
    v61 = v89;
    (*(v88 + 104))(v87, *MEMORY[0x277D851B8], v89);
    v62 = sub_226836748();
    (*(v59 + 8))(v60, v61);
    v63 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = sub_2267CDF8C;
    v102 = v63;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_2267CDC70;
    v100 = &block_descriptor_12;
    v64 = _Block_copy(&aBlock);

    v65 = OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.duetexpertd.contextheuristics.donateSports", (v38 + v65), v62, v64);
    swift_endAccess();
    _Block_release(v64);
  }

  v66 = objc_opt_self();
  v67 = [v66 defaultCenter];
  v68 = *MEMORY[0x277D7A998];
  v69 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = sub_2267CDCC4;
  v102 = v69;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_2267CDCE8;
  v100 = &block_descriptor_4;
  v70 = _Block_copy(&aBlock);

  v71 = [v67 addObserverForName:v68 object:0 queue:0 usingBlock:v70];
  _Block_release(v70);

  v72 = *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken);
  *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_favoritesChangedToken) = v71;
  swift_unknownObjectRelease();
  v73 = [v66 defaultCenter];
  v74 = *MEMORY[0x277D7A9A0];
  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v101 = sub_2267CDF68;
  v102 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v98 = 1107296256;
  v99 = sub_2267CDCE8;
  v100 = &block_descriptor_8_0;
  v76 = _Block_copy(&aBlock);

  v77 = [v73 addObserverForName:v74 object:0 queue:0 usingBlock:v76];
  _Block_release(v76);

  v78 = *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken);
  *(v38 + OBJC_IVAR___ATXContextHeuristicsScheduler_syncSportsChangedToken) = v77;
  swift_unknownObjectRelease();
}

uint64_t sub_2267CD83C()
{
  v1 = v0;
  v2 = OBJC_IVAR___ATXContextHeuristicsScheduler_timer;
  if (*(v0 + OBJC_IVAR___ATXContextHeuristicsScheduler_timer))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_226836788();
    swift_unknownObjectRelease();
    v3 = *(v0 + v2);
  }

  *(v0 + v2) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR___ATXContextHeuristicsScheduler_debugRerunSportsNotificationToken;
  swift_beginAccess();
  result = *(v1 + v4);
  if (result)
  {
    result = notify_cancel(result);
    *(v1 + v4) = 0;
  }

  return result;
}

uint64_t sub_2267CD904()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v26 - v5;
  v7 = sub_226836068();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2267F78F4();
  (*(v8 + 16))(v12, v13, v7);
  v14 = sub_226836038();
  v15 = sub_2268366E8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_2263AA000, v14, v15, "Running ContextHeuristicsScheduler", v16, 2u);
    MEMORY[0x22AA821D0](v16, -1, -1);
  }

  (*(v8 + 8))(v12, v7);
  v17 = *(v1 + OBJC_IVAR___ATXContextHeuristicsScheduler_contextHeuristics);
  v18 = OBJC_IVAR___ATXContextHeuristicsScheduler_repeatInterval;
  swift_beginAccess();
  v19 = *(v1 + v18);
  v20 = v17;
  v21 = os_transaction_create();
  v22 = sub_226836628();
  (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v20;
  v23[6] = v21;
  v24 = v20;
  sub_2267AEA94(0, 0, v6, &unk_2268746D8, v23);
}

uint64_t sub_2267CDB98()
{
  sub_226836288();
  sub_2267CE9C8(&qword_28138FE38, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A2210, &unk_226874700);
  sub_2267CEA10(&qword_28138FE30, &unk_27D7A2210, &unk_226874700);
  return sub_226836888();
}

uint64_t sub_2267CDC70(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2267CDCE8(uint64_t a1)
{
  v2 = sub_226834F48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  sub_226834F38();

  v9(v7);

  return (*(v3 + 8))(v7, v2);
}

void sub_2267CDDDC(uint64_t a1, const char *a2)
{
  v3 = sub_226836068();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226799540();
  (*(v4 + 16))(v8, v9, v3);
  v10 = sub_226836038();
  v11 = sub_2268366E8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2263AA000, v10, v11, a2, v12, 2u);
    MEMORY[0x22AA821D0](v12, -1, -1);
  }

  (*(v4 + 8))(v8, v3);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_2267CD904();
  }
}

id ContextHeuristicsScheduler.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  sub_2267CD83C();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2267CE114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_226836068();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v9 = sub_226835228();
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  v11 = *(v10 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2267CE248, 0, 0);
}

uint64_t sub_2267CE248()
{
  v36 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[4];
  v7 = v0[5];
  sub_226835208();
  v8 = sub_226799540();
  v0[12] = v8;
  v9 = *(v7 + 16);
  v0[13] = v9;
  v0[14] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v8, v6);
  (*(v4 + 16))(v1, v2, v3);
  v10 = sub_226836038();
  v11 = sub_2268366E8();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[9];
  v13 = v0[10];
  v15 = v0[7];
  v16 = v0[8];
  v18 = v0[4];
  v17 = v0[5];
  if (v12)
  {
    v33 = v0[2];
    v34 = v0[4];
    v19 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v35 = v32;
    *v19 = 136315394;
    sub_2267CE9C8(&qword_28138FE40, MEMORY[0x277CC9578]);
    v20 = sub_226836B48();
    v31 = v15;
    v22 = v21;
    v30 = v11;
    v23 = *(v14 + 8);
    v23(v13, v16);
    v24 = sub_2263B4D48(v20, v22, &v35);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2048;
    *(v19 + 14) = v33;
    _os_log_impl(&dword_2263AA000, v10, v30, "Generating sports suggestions: %s, %ld", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x22AA821D0](v32, -1, -1);
    MEMORY[0x22AA821D0](v19, -1, -1);

    v25 = *(v17 + 8);
    v25(v31, v34);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v16);
    v25 = *(v17 + 8);
    v25(v15, v18);
  }

  v0[15] = v23;
  v0[16] = v25;
  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  v26[1] = sub_2267CE50C;
  v27 = v0[11];
  v28 = v0[2];

  return sub_2267CAEBC(v27, v28);
}

uint64_t sub_2267CE50C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_2267CE60C, 0, 0);
}

uint64_t sub_2267CE60C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  (*(v0 + 104))(*(v0 + 48), *(v0 + 96), *(v0 + 32));

  v3 = sub_226836038();
  v4 = sub_2268366E8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 144);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      *(v0 + 144);
      v24 = v7;
      v8 = sub_2268368D8();
      v7 = v24;
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = *(v0 + 144);
    *(v7 + 4) = v8;
    v10 = v7;

    _os_log_impl(&dword_2263AA000, v3, v4, "Donating sports suggestions: %ld", v10, 0xCu);
    MEMORY[0x22AA821D0](v10, -1, -1);
  }

  else
  {
    v11 = *(v0 + 144);
  }

  v12 = *(v0 + 144);
  v13 = *(v0 + 120);
  v14 = *(v0 + 80);
  v15 = *(v0 + 88);
  v17 = *(v0 + 64);
  v16 = *(v0 + 72);
  v25 = *(v0 + 56);
  v18 = *(v0 + 40) + 8;
  v19 = *(v0 + 24);
  (*(v0 + 128))(*(v0 + 48), *(v0 + 32));
  sub_2263B5030(0, &qword_28138F9A0, 0x277D42068);
  v20 = sub_226836558();

  v21 = sub_2268363F8();
  [v19 donateSuggestions:v20 forHeuristic:v21];

  v13(v15, v17);

  v22 = *(v0 + 8);

  return v22();
}

id ContextHeuristicsScheduler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2267CE930()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2263BA0A4;

  return sub_2267CE114(v4, v5, v6, v2, v3);
}

uint64_t sub_2267CE9C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2267CEA10(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2267CEA7C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_2267CEAB4()
{
  type metadata accessor for WatchSmartStackLayoutSelector();
  *&v0[OBJC_IVAR___ATXWatchSmartStacksLayoutSelector_layoutSelector] = sub_2267B7230();
  v2.receiver = v0;
  v2.super_class = ATXWatchSmartStacksLayoutSelector;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_2267CECC8()
{
  v0 = sub_226836068();
  __swift_allocate_value_buffer(v0, qword_281390C20);
  __swift_project_value_buffer(v0, qword_281390C20);
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  v1 = qword_281390C00;
  return sub_226836078();
}

uint64_t *sub_2267CED54()
{
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  return &qword_281390C00;
}

uint64_t sub_2267CEDA4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813905C8 != -1)
  {
    swift_once();
  }

  v2 = sub_226836068();
  v3 = __swift_project_value_buffer(v2, qword_281390C20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2267CEE4C()
{
  sub_2267CEF14();
  result = sub_226836818();
  qword_281390C00 = result;
  return result;
}

id sub_2267CEEB8()
{
  if (qword_2813905B8 != -1)
  {
    swift_once();
  }

  v0 = qword_281390C00;

  return v0;
}

unint64_t sub_2267CEF14()
{
  result = qword_28138FDC8;
  if (!qword_28138FDC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28138FDC8);
  }

  return result;
}

uint64_t sub_2267CEF60()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_2267CEF98(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_2267CEFD0(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 24));

  return sub_2263C0708(a1, v1 + 24);
}

uint64_t sub_2267CF010(uint64_t result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      v4 = result;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = -result;
    if (__OFSUB__(0, result))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (a4)
  {
    if (a4 == 1)
    {
      v5 = a3;
    }

    else
    {
      v5 = 0;
    }

    return v4 < v5;
  }

  v5 = -a3;
  if (!__OFSUB__(0, a3))
  {
    return v4 < v5;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2267CF05C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t sub_2267CF0B0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      a2 = 1;
      return MEMORY[0x22AA80040](a2);
    }

    v4 = 2;
  }

  else
  {
    v4 = a3;
  }

  MEMORY[0x22AA80040](v4);
  return MEMORY[0x22AA80040](a2);
}

uint64_t sub_2267CF104(uint64_t a1, unsigned __int8 a2)
{
  sub_226836C08();
  if (a2)
  {
    if (a2 != 1)
    {
      a1 = 1;
      goto LABEL_7;
    }

    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  MEMORY[0x22AA80040](v4);
LABEL_7:
  MEMORY[0x22AA80040](a1);
  return sub_226836C48();
}

uint64_t sub_2267CF17C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_226836C08();
  if (v2)
  {
    if (v2 != 1)
    {
      v1 = 1;
      goto LABEL_6;
    }

    v2 = 2;
  }

  MEMORY[0x22AA80040](v2);
LABEL_6:
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t sub_2267CF1F4()
{
  v1 = *v0;
  if (*(v0 + 8) && *(v0 + 8) != 1)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x22AA80040]();
  }

  return MEMORY[0x22AA80040](v1);
}

uint64_t sub_2267CF244()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_226836C08();
  if (v2)
  {
    if (v2 != 1)
    {
      v1 = 1;
      goto LABEL_6;
    }

    v2 = 2;
  }

  MEMORY[0x22AA80040](v2);
LABEL_6:
  MEMORY[0x22AA80040](v1);
  return sub_226836C48();
}

uint64_t *sub_2267CF2B8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }

    return (v2 < v3);
  }

  v4 = __OFSUB__(0, v3);
  v3 = -v3;
  if (!v4)
  {
    return (v2 < v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF30C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v3 = -v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }

    return (v3 >= v2);
  }

  v4 = __OFSUB__(0, v2);
  v2 = -v2;
  if (!v4)
  {
    return (v3 >= v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF360(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v2);
    v2 = -v2;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }

    return (v2 >= v3);
  }

  v4 = __OFSUB__(0, v3);
  v3 = -v3;
  if (!v4)
  {
    return (v2 >= v3);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t *sub_2267CF3B4(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  if (*(a2 + 8))
  {
    if (*(a2 + 8) != 1)
    {
      v3 = 0;
    }
  }

  else
  {
    v4 = __OFSUB__(0, v3);
    v3 = -v3;
    if (v4)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  if (*(result + 8))
  {
    if (*(result + 8) != 1)
    {
      v2 = 0;
    }

    return (v3 < v2);
  }

  v4 = __OFSUB__(0, v2);
  v2 = -v2;
  if (!v4)
  {
    return (v3 < v2);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2267CF408(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2267CF450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  v19 = *(v8 - 8);
  v9 = *(v19 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2267CF5F0(a1);
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      (*(v19 + 16))(v12, a2, v8);
      return (*(v19 + 32))(a4, v12, v8);
    }

    v17 = *(v19 + 16);

    return v17(a4, a2, v8);
  }

  else
  {
    if (v14)
    {
      (*(v19 + 16))(v12, a3, v8);
      return (*(v19 + 32))(a4, v12, v8);
    }

    if ((v13 & 0x8000000000000000) == 0 || (v15 = __OFSUB__(0, v13), result = -v13, !v15))
    {
      sub_226835198();
      return (*(v19 + 32))(a4, v12, v8);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2267CF5F0(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    do
    {
      if (v8 - 1 == v10)
      {
        return 0;
      }

      v5 = v10 + 1;
      v11 = *(a1 + 64 + 8 * v10);
      v9 -= 64;
      ++v10;
    }

    while (!v11);
    v7 = (v11 - 1) & v11;
    v6 = __clz(__rbit64(v11)) - v9;
  }

  v12 = *(a1 + 48);
  v13 = (v12 + 16 * v6);
  v14 = *v13;
  LOBYTE(v15) = *(v13 + 8);
LABEL_10:
  v16 = v15;
  result = v14;
  v18 = -v14;
  v19 = __OFSUB__(0, v14);
  while (v7)
  {
LABEL_20:
    v22 = (v12 + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v22;
    v15 = *(v22 + 8);
    if (v15)
    {
      if (v15 == 1)
      {
        v23 = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = -v14;
      if (__OFSUB__(0, v14))
      {
        goto LABEL_32;
      }
    }

    v7 &= v7 - 1;
    if (!v16)
    {
      v20 = v18;
      if (v19)
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    v20 = result;
    if (v16 == 1)
    {
LABEL_14:
      if (v23 < v20)
      {
        goto LABEL_10;
      }
    }

    else if (v23 < 0)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v21 >= v8)
    {
      return result;
    }

    v7 = *(v1 + 8 * v21);
    ++v5;
    if (v7)
    {
      v5 = v21;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2267CF74C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_226835228();
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2267CF8DC(a1);
  if (v13 <= 1u)
  {
    if (v13)
    {
      sub_226835198();
    }

    else
    {
      (*(v17 + 16))(v12, a2, v8);
    }

    return (*(v17 + 32))(a4, v12, v8);
  }

  if (v13 == 2)
  {
    (*(v17 + 16))(v12, a3, v8);
    return (*(v17 + 32))(a4, v12, v8);
  }

  v15 = *(v17 + 16);

  return v15(a4, a3, v8);
}

uint64_t sub_2267CF8DC(uint64_t a1)
{
  v1 = a1 + 56;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 56);
  if (v4)
  {
    v5 = 0;
    v6 = __clz(__rbit64(v4));
    v7 = (v4 - 1) & v4;
    v8 = (v2 + 63) >> 6;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v8 = (v2 + 63) >> 6;
    do
    {
      if (v8 - 1 == v10)
      {
        return 0;
      }

      v5 = v10 + 1;
      v11 = *(a1 + 64 + 8 * v10);
      v9 -= 64;
      ++v10;
    }

    while (!v11);
    v7 = (v11 - 1) & v11;
    v6 = __clz(__rbit64(v11)) - v9;
  }

  v12 = *(a1 + 48);
  v13 = (v12 + 16 * v6);
  v14 = *v13;
  LOBYTE(v15) = *(v13 + 8);
LABEL_10:
  v16 = v15;
  result = v14;
  v18 = -v14;
  v19 = __OFSUB__(0, v14);
  while (v7)
  {
LABEL_20:
    v22 = (v12 + ((v5 << 10) | (16 * __clz(__rbit64(v7)))));
    v14 = *v22;
    v15 = *(v22 + 8);
    if (v16)
    {
      if (v16 == 1)
      {
        v23 = result;
      }

      else
      {
        v23 = 0;
      }
    }

    else
    {
      v23 = v18;
      if (v19)
      {
        goto LABEL_32;
      }
    }

    v7 &= v7 - 1;
    if (!v15)
    {
      v20 = -v14;
      if (__OFSUB__(0, v14))
      {
        goto LABEL_33;
      }

      goto LABEL_14;
    }

    v20 = v14;
    if (v15 == 1)
    {
LABEL_14:
      if (v23 < v20)
      {
        goto LABEL_10;
      }
    }

    else if (v23 < 0)
    {
      goto LABEL_10;
    }
  }

  while (1)
  {
    v21 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v21 >= v8)
    {
      return result;
    }

    v7 = *(v1 + 8 * v21);
    ++v5;
    if (v7)
    {
      v5 = v21;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_2267CFA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  return sub_2263C0708(a4, (a5 + 3));
}

uint64_t sub_2267CFA4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2267CFAE8(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  v4 = sub_226835228();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2267CFBAC(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_226836B58() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for SportsDependencies(0) + 20);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t sub_2267CFC28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_226836498();
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  return sub_226836368();
}

uint64_t sub_2267CFCB8()
{
  sub_226836C08();
  v1 = *v0;
  v2 = v0[1];
  sub_226836498();
  v3 = *(type metadata accessor for SportsDependencies(0) + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFD64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SportsDependencies(0) + 20);
  v7 = sub_226835228();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_2267CFDE8(uint64_t a1)
{
  sub_226836C08();
  v3 = *v1;
  v4 = v1[1];
  sub_226836498();
  v5 = *(a1 + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFE90(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_226836498();
  v6 = *(a2 + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  return sub_226836368();
}

uint64_t sub_2267CFF1C(uint64_t a1, uint64_t a2)
{
  sub_226836C08();
  v4 = *v2;
  v5 = v2[1];
  sub_226836498();
  v6 = *(a2 + 20);
  sub_226835228();
  sub_2267D0624(&qword_27D7A22F0, MEMORY[0x277CC9578]);
  sub_226836368();
  return sub_226836C48();
}

uint64_t sub_2267CFFC0(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_226836B58() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_2267D006C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226835228();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2267D00D4(uint64_t a1)
{
  v3 = sub_226835228();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_2267D0180(char a1)
{
  result = type metadata accessor for SportsContextEntry(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_2267D01F8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SportsContextEntry(0) + 24);

  return sub_2267D023C(v3, a1);
}