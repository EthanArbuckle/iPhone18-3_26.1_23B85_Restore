uint64_t sub_240289B34(uint64_t a1, id *a2)
{
  result = sub_2402A7388();
  *a2 = 0;
  return result;
}

uint64_t sub_240289BAC(uint64_t a1, id *a2)
{
  v3 = sub_2402A7398();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_240289C2C@<X0>(uint64_t *a1@<X8>)
{
  sub_2402A73A8();
  v2 = sub_2402A7378();

  *a1 = v2;
  return result;
}

uint64_t sub_240289C70()
{
  v1 = *v0;
  v2 = sub_2402A73A8();
  v3 = MEMORY[0x245CBD8F0](v2);

  return v3;
}

uint64_t sub_240289CAC()
{
  v1 = *v0;
  sub_2402A73A8();
  sub_2402A73F8();
}

uint64_t sub_240289D00()
{
  v1 = *v0;
  sub_2402A73A8();
  sub_2402A7938();
  sub_2402A73F8();
  v2 = sub_2402A7958();

  return v2;
}

uint64_t sub_240289D74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2402A73A8();
  v6 = v5;
  if (v4 == sub_2402A73A8() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2402A7888();
  }

  return v9 & 1;
}

uint64_t sub_240289DFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2402A7378();

  *a2 = v5;
  return result;
}

uint64_t sub_240289E44@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2402A73A8();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_240289E84(uint64_t a1)
{
  v2 = sub_240289F84(&qword_27E3C8B80);
  v3 = sub_240289F84(&qword_27E3C8B88);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_240289F84(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OpenExternalURLOptionsKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_24028A04C(uint64_t a1, unint64_t *a2)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_24028A0A4(uint64_t *a1, int a2)
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

uint64_t sub_24028A0EC(uint64_t result, int a2, int a3)
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

uint64_t sub_24028A174()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24028A21C;

  return sub_24028A31C();
}

uint64_t sub_24028A21C(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_24028A338()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCAB70]) init];
  [v1 ak_addClientInfoHeader];
  [v1 ak_addDeviceUDIDHeader];
  v2 = [v1 allHTTPHeaderFields];
  if (v2)
  {
    v3 = v2;
    v4 = sub_2402A7338();
  }

  else
  {
    v4 = sub_24029D62C(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_240299BE8(0xD000000000000022, 0x80000002402A9A00, 0xD000000000000010, 0x80000002402A99E0, isUniquelyReferenced_nonNull_native);

  v6 = *(v0 + 8);

  return v6(v4);
}

id sub_24028A490(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_24028C320();
    v5 = sub_2402A7328();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t sub_24028A51C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C48, &qword_2402A8770);
  v40 = a2;
  result = sub_2402A77E8();
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
      sub_2402A7938();
      sub_2402A73F8();
      result = sub_2402A7958();
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

uint64_t sub_24028A7DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C18, &qword_2402A8748);
  v39 = a2;
  result = sub_2402A77E8();
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
      sub_2402A7938();
      sub_2402A73F8();
      result = sub_2402A7958();
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

uint64_t sub_24028AA80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C40, &qword_2402A8F50);
  result = sub_2402A77E8();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
    while (1)
    {
      if (!v13)
      {
        v19 = v9;
        while (1)
        {
          v9 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_55;
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

        if ((a2 & 1) == 0)
        {

          v3 = v35;
          goto LABEL_53;
        }

        v34 = 1 << *(v5 + 32);
        v3 = v35;
        if (v34 >= 64)
        {
          bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v34;
        }

        *(v5 + 16) = 0;
        break;
      }

      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(v5 + 48);
      v23 = (*(v5 + 56) + 40 * v21);
      v24 = *(v22 + 16 * v21 + 8);
      v36 = *(v22 + 16 * v21);
      if (a2)
      {
        sub_24028C0CC(v23, v37);
      }

      else
      {
        sub_24028C068(v23, v37);
        sub_24028C19C(v36, v24);
      }

      v25 = *(v8 + 40);
      sub_2402A7938();
      if (v24 <= 2)
      {
        if (v24)
        {
          if (v24 == 1)
          {
            v26 = 2;
          }

          else
          {
            if (v24 != 2)
            {
              goto LABEL_32;
            }

            v26 = 3;
          }
        }

        else
        {
          v26 = 0;
        }
      }

      else if (v24 > 4)
      {
        if (v24 == 5)
        {
          v26 = 6;
        }

        else
        {
          if (v24 != 6)
          {
LABEL_32:
            MEMORY[0x245CBDE10](1);
            sub_2402A73F8();
            goto LABEL_37;
          }

          v26 = 7;
        }
      }

      else if (v24 == 3)
      {
        v26 = 4;
      }

      else
      {
        v26 = 5;
      }

      MEMORY[0x245CBDE10](v26);
LABEL_37:
      result = sub_2402A7958();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        v17 = v36;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_55:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
      v17 = v36;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      result = sub_24028C0CC(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }
  }

LABEL_53:
  *v3 = v8;
  return result;
}

void *sub_24028ADF0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C48, &qword_2402A8770);
  v2 = *v0;
  v3 = sub_2402A77D8();
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

id sub_24028AF68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C18, &qword_2402A8748);
  v2 = *v0;
  v3 = sub_2402A77D8();
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

void *sub_24028B0D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C40, &qword_2402A8F50);
  v2 = *v0;
  v3 = sub_2402A77D8();
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
        v20 = *v19;
        v21 = v19[1];
        v22 = 40 * v17;
        sub_24028C068(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        sub_24028C0CC(v25, *(v4 + 56) + v22);
        result = sub_24028C19C(v20, v21);
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

void sub_24028B280(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_24029CFE8(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_24028A7DC(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_24029CFE8(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2402A78C8();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_24028AF68();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2402A7648();
    MEMORY[0x245CBD8D0](0xD00000000000001BLL, 0x80000002402A9B00);
    sub_2402A7798();
    MEMORY[0x245CBD8D0](39, 0xE100000000000000);
    sub_2402A77B8();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_24029CFE8(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_24028A7DC(v34, 1);
        v35 = *a3;
        v30 = sub_24029CFE8(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *sub_24028B610(void *a1, int64_t a2, char a3)
{
  result = sub_24028B650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24028B630(char *a1, int64_t a2, char a3)
{
  result = sub_24028B798(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24028B650(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C30, &qword_2402A8758);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C38, &unk_2402A8760);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24028B798(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E3C8C50, &qword_2402A8778);
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

uint64_t sub_24028B8C4()
{
  v1 = *(v0 + 208);
  swift_beginAccess();
  *(v0 + 216) = *(v1 + 128);

  return MEMORY[0x2822009F8](sub_24028B94C, 0, 0);
}

uint64_t sub_24028B94C()
{
  v50 = v0;
  v1 = *(v0 + 216);
  v2 = *(v1 + 16);
  if (v2)
  {
    v48 = MEMORY[0x277D84F90];
    sub_24028B610(0, v2, 0);
    v47 = v48;
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    v5 = sub_2402A75F8();
    v8 = v5;
    v9 = 0;
    v10 = *(v1 + 36);
    v41 = v1 + 72;
    v42 = v2;
    v44 = v1 + 64;
    v45 = v1;
    v43 = v10;
    while (1)
    {
      if (v8 < 0 || v8 >= 1 << *(v1 + 32))
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return MEMORY[0x2822009F8](v5, v6, v7);
      }

      v12 = v8 >> 6;
      if ((*(v3 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_45;
      }

      if (v10 != *(v1 + 36))
      {
        goto LABEL_46;
      }

      v13 = (*(v1 + 48) + 16 * v8);
      v15 = *v13;
      v14 = v13[1];
      sub_24028C068(*(v1 + 56) + 40 * v8, v0 + 32);
      *(v0 + 72) = v15;
      *(v0 + 80) = v14;
      sub_24028C0CC((v0 + 32), v0 + 88);
      sub_24028C0E4(v0 + 72, v0 + 128);
      v16 = *(v0 + 136);
      v46 = v9;
      if (v16 <= 2)
      {
        if (v16)
        {
          if (v16 == 1)
          {
            sub_24028C19C(v15, v14);
            v18 = 0xE700000000000000;
            v19 = 0x6D6F6374756FLL;
            goto LABEL_25;
          }

          if (v16 == 2)
          {
            sub_24028C19C(v15, v14);
            v18 = 0xE700000000000000;
            v19 = 0x72756C696166;
LABEL_25:
            v17 = v19 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
            goto LABEL_26;
          }

LABEL_21:
          v20 = *(v0 + 128);
          v49[0] = 0x6E6F697461727564;
          v49[1] = 0xEB00000000726F46;
          sub_24028C19C(v15, v14);
          MEMORY[0x245CBD8D0](v20, v16);
          sub_24028C30C(v20, v16);
          v17 = 0x6E6F697461727564;
          v18 = 0xEB00000000726F46;
          goto LABEL_26;
        }

        sub_24028C19C(v15, v14);
        v18 = 0xE800000000000000;
        v17 = 0x6E6F697461727564;
      }

      else
      {
        if (v16 <= 4)
        {
          sub_24028C19C(v15, v14);
          if (v16 == 3)
          {
            v18 = 0xEA0000000000746ELL;
            v17 = 0x756F437972746572;
          }

          else
          {
            v17 = 0xD000000000000014;
            v18 = 0x80000002402A9AB0;
          }

          goto LABEL_26;
        }

        if (v16 == 5)
        {
          sub_24028C19C(v15, v14);
          v17 = 0xD000000000000014;
          v18 = 0x80000002402A9A90;
          goto LABEL_26;
        }

        if (v16 != 6)
        {
          goto LABEL_21;
        }

        sub_24028C19C(v15, v14);
        v17 = 0xD00000000000001DLL;
        v18 = 0x80000002402A9A30;
      }

LABEL_26:
      v21 = *(v0 + 112);
      v22 = *(v0 + 120);
      __swift_project_boxed_opaque_existential_1((v0 + 88), v21);
      v23 = (*(v22 + 8))(v21, v22);
      __swift_destroy_boxed_opaque_existential_1((v0 + 144));
      v5 = sub_24028C240(v0 + 72);
      v24 = v47;
      v26 = *(v47 + 16);
      v25 = *(v47 + 24);
      if (v26 >= v25 >> 1)
      {
        v5 = sub_24028B610((v25 > 1), v26 + 1, 1);
        v24 = v47;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (v24 + 24 * v26);
      v27[4] = v17;
      v27[5] = v18;
      v27[6] = v23;
      v1 = v45;
      v11 = 1 << *(v45 + 32);
      if (v8 >= v11)
      {
        goto LABEL_47;
      }

      v3 = v44;
      v28 = *(v44 + 8 * v12);
      if ((v28 & (1 << v8)) == 0)
      {
        goto LABEL_48;
      }

      v47 = v24;
      v10 = v43;
      if (v43 != *(v45 + 36))
      {
        goto LABEL_49;
      }

      v29 = v28 & (-2 << (v8 & 0x3F));
      if (v29)
      {
        v11 = __clz(__rbit64(v29)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v30 = v12 << 6;
        v31 = (v41 + 8 * v12);
        v32 = v12 + 1;
        while (v32 < (v11 + 63) >> 6)
        {
          v34 = *v31++;
          v33 = v34;
          v30 += 64;
          ++v32;
          if (v34)
          {
            v5 = sub_24028C300(v8, v43, 0);
            v11 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        v5 = sub_24028C300(v8, v43, 0);
      }

LABEL_4:
      v9 = v46 + 1;
      v8 = v11;
      if (v46 + 1 == v42)
      {
        v35 = *(v0 + 216);

        if (!*(v47 + 16))
        {
          goto LABEL_40;
        }

LABEL_38:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C18, &qword_2402A8748);
        v36 = sub_2402A77F8();
        goto LABEL_41;
      }
    }
  }

  v37 = *(v0 + 216);

  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_38;
  }

LABEL_40:
  v36 = MEMORY[0x277D84F98];
LABEL_41:
  v49[0] = v36;

  sub_24028B280(v38, 1, v49);
  v39 = *(v0 + 208);

  *(v0 + 224) = v49[0];
  v5 = sub_24028BEC8;
  v6 = v39;
  v7 = 0;

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_24028BEC8()
{
  v1 = v0[26];
  v0[29] = *(v1 + 112);
  v0[30] = *(v1 + 120);

  return MEMORY[0x2822009F8](sub_24028BF44, 0, 0);
}

void sub_24028BF44()
{
  if (v0[30])
  {
    v2 = v0[28];
    v1 = v0[29];
    v3 = v0[30];
    v4 = sub_2402A7378();

    v5 = swift_allocObject();
    *(v5 + 16) = v2;
    v0[6] = sub_24028C2E0;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_24028A490;
    v0[5] = &block_descriptor;
    v6 = _Block_copy(v0 + 2);
    v7 = v0[7];

    AnalyticsSendEventLazy();
    _Block_release(v6);

    v8 = v0[1];

    v8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24028C068(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_24028C0CC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_24028C0E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C10, &qword_2402A8740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_24028C19C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
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

uint64_t sub_24028C240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C10, &qword_2402A8740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24028C2A8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24028C300(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24028C30C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 7)
  {
  }

  return result;
}

unint64_t sub_24028C320()
{
  result = qword_27E3C8C20;
  if (!qword_27E3C8C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E3C8C20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestManagerError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RequestManagerError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_24028C3F8()
{
  v0 = [objc_opt_self() defaultSessionConfiguration];
  v1 = [objc_allocWithZone(MEMORY[0x277CF0188]) init];
  [v0 set:v1 appleIDContext:?];

  qword_27E3CA7E0 = v0;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24028C488(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_24028C4E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_24028C548(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0xD000000000000020;
    if (a1 == 3)
    {
      v2 = 0xD000000000000019;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000012;
    if (a1)
    {
      v3 = 0xD000000000000021;
    }

    if (a1 <= 1)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    sub_2402A7648();
    MEMORY[0x245CBD8D0](0xD00000000000001FLL, 0x80000002402A9C50);
    type metadata accessor for ACAccountCredentialRenewResult(0);
    sub_2402A7798();
    return 0;
  }
}

void sub_24028C698(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20]();
  v10 = aBlock - v9;
  (*(v7 + 16))(aBlock - v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v10, v6);
  aBlock[4] = sub_24028DEF4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24028CAA0;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);

  [a2 authenticateWithContext:a3 completion:v13];
  _Block_release(v13);
}

void sub_24028C850(uint64_t a1, id a2)
{
  if (a2)
  {
    *&v19 = a2;
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0);
    sub_2402A7478();
    return;
  }

  if (!a1)
  {
    goto LABEL_10;
  }

  v4 = *MEMORY[0x277CEFFA0];
  v5 = sub_2402A73A8();
  if (!*(a1 + 16))
  {

LABEL_10:
    v13 = 0;
    v19 = 0u;
    v20 = 0u;
LABEL_11:
    sub_24028DF98(&v19, &qword_27E3C8C88, &unk_2402A88D0);
    goto LABEL_12;
  }

  v7 = sub_24029CFE8(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_10;
  }

  v10 = *(*(a1 + 56) + 8 * v7);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    goto LABEL_10;
  }

  v12 = v11;
  swift_unknownObjectRetain();
  *&v17 = 0xD000000000000022;
  *(&v17 + 1) = 0x80000002402A9A00;
  v13 = v12;
  v14 = [v13 __swift_objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (v14)
  {
    sub_2402A75E8();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v19 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0);
    sub_2402A7488();
    goto LABEL_13;
  }

LABEL_12:
  sub_24028DD64();
  v15 = swift_allocError();
  *v16 = 2;
  *(v16 + 8) = 1;
  *&v19 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0);
  sub_2402A7478();
LABEL_13:
}

uint64_t sub_24028CAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C80, &qword_2402A88C8);
    v4 = sub_2402A7338();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_24028CB6C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24028A21C;

  return (sub_24028D734)(a1, v4, v5, v6);
}

uint64_t sub_24028CC34(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return MEMORY[0x2822009F8](sub_24028CC54, 0, 0);
}

uint64_t sub_24028CC54()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MEMORY[0x277CF0170]) init];
  v0[6] = v2;
  [v2 setAuthenticationType_];
  [v2 setIsUsernameEditable_];
  [v2 setServiceType_];
  v3 = sub_2402A7378();
  [v2 setServiceIdentifier_];

  [v2 setShouldUpdatePersistentServiceTokens_];
  v4 = [v1 aida_alternateDSID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2402A73A8();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      [v2 setAltDSID_];
    }
  }

  v10 = v0[5];
  if (v10)
  {
    v11 = swift_task_alloc();
    v0[7] = v11;
    *(v11 + 16) = v10;
    *(v11 + 24) = v2;
    v12 = *(MEMORY[0x277D85A40] + 4);
    v13 = v10;
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_24028CEE0;
    v15 = MEMORY[0x277D837D0];

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000018, 0x80000002402A9B40, sub_24028DE58, v11, v15);
  }

  else
  {
    sub_24028DD64();
    swift_allocError();
    *v16 = 1;
    *(v16 + 8) = 1;
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_24028CEE0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_24028D068;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_24028CFFC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24028CFFC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v2, v3);
}

uint64_t sub_24028D068()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = *(v0 + 72);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24028D0DC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 80) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = sub_2402A7318();
  *(v3 + 32) = v4;
  v5 = *(v4 - 8);
  *(v3 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24028D1B8, 0, 0);
}

uint64_t sub_24028D1B8()
{
  if (*(v0 + 80))
  {
    if (qword_27E3C8A90 != -1)
    {
      swift_once();
    }

    v2 = (v0 + 56);
    v1 = *(v0 + 56);
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    v5 = __swift_project_value_buffer(v3, qword_27E3CA818);
    (*(v4 + 16))(v1, v5, v3);
    v6 = sub_2402A72F8();
    v7 = sub_2402A7598();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Forcing GS token refresh due to retry…";
LABEL_18:
      _os_log_impl(&dword_240288000, v6, v7, v9, v8, 2u);
      v35 = *v2;
      MEMORY[0x245CBE530](v8, -1, -1);
LABEL_20:
      v36 = *(v0 + 32);
      v37 = *(v0 + 40);

      (*(v37 + 8))(v35, v36);
      v38 = swift_task_alloc();
      *(v0 + 72) = v38;
      *v38 = v0;
      v38[1] = sub_24028D5C0;
      v40 = *(v0 + 16);
      v39 = *(v0 + 24);

      return sub_24028CC34(v40, v39);
    }

    goto LABEL_19;
  }

  v10 = *(v0 + 16);
  v11 = sub_2402A7378();
  v12 = [v10 aida:v11 tokenWithExpiryCheckForService:?];

  if (!v12)
  {
    if (qword_27E3C8A90 != -1)
    {
      swift_once();
    }

    v2 = (v0 + 48);
    v31 = *(v0 + 48);
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v34 = __swift_project_value_buffer(v32, qword_27E3CA818);
    (*(v33 + 16))(v31, v34, v32);
    v6 = sub_2402A72F8();
    v7 = sub_2402A7598();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "Did not find cached valid GS token, fetching a new one…";
      goto LABEL_18;
    }

LABEL_19:
    v35 = *v2;
    goto LABEL_20;
  }

  v13 = sub_2402A73A8();
  v15 = v14;

  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 64);
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = __swift_project_value_buffer(v17, qword_27E3CA818);
  (*(v18 + 16))(v16, v19, v17);
  v20 = sub_2402A72F8();
  v21 = sub_2402A7598();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_240288000, v20, v21, "Using cached GS token", v22, 2u);
    MEMORY[0x245CBE530](v22, -1, -1);
  }

  v23 = *(v0 + 64);
  v24 = *(v0 + 32);
  v25 = *(v0 + 40);

  (*(v25 + 8))(v23, v24);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v28 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29(v13, v15);
}

uint64_t sub_24028D5C0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 72);
  v8 = *v3;

  v9 = v6[8];
  v10 = v6[7];
  v11 = v6[6];

  v14 = *(v8 + 8);
  if (!v2)
  {
    v12 = a1;
    v13 = a2;
  }

  return v14(v12, v13);
}

uint64_t sub_24028D734(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 160) = a4;
  *(v4 + 80) = a2;
  *(v4 + 88) = a3;
  v5 = sub_2402A73D8();
  *(v4 + 96) = v5;
  v6 = *(v5 - 8);
  *(v4 + 104) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24028D7F8, 0, 0);
}

uint64_t sub_24028D7F8()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    v2 = v1;
    v3 = [v2 aida_accountForPrimaryiCloudAccount];
    *(v0 + 120) = v3;
    if (v3)
    {
      v4 = v3;
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v5[1] = sub_24028D93C;
      v6 = *(v0 + 160);
      v7 = *(v0 + 88);

      return sub_24028D0DC(v4, v7, v6);
    }
  }

  sub_24028DD64();
  swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 1;
  swift_willThrow();
  v10 = *(v0 + 112);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_24028D93C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 128);
  v8 = *v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[19] = v2;

  if (v2)
  {
    v6 = sub_24028DCF0;
  }

  else
  {
    v6 = sub_24028DA54;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24028DA54()
{
  v1 = [*(v0 + 120) aida_alternateDSID];
  if (!v1)
  {
    v14 = *(v0 + 144);
    v11 = *(v0 + 120);
    v12 = *(v0 + 80);

    v13 = 3;
    goto LABEL_5;
  }

  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = v1;
  sub_2402A73A8();

  MEMORY[0x245CBD8D0](58, 0xE100000000000000);
  MEMORY[0x245CBD8D0](v3, v2);

  sub_2402A73C8();
  v8 = sub_2402A73B8();
  v10 = v9;

  (*(v5 + 8))(v4, v6);
  if (v10 >> 60 == 15)
  {
    v11 = *(v0 + 120);
    v12 = *(v0 + 80);
    v13 = 4;
LABEL_5:
    sub_24028DD64();
    swift_allocError();
    *v15 = v13;
    *(v15 + 8) = 1;
    swift_willThrow();

    v16 = *(v0 + 112);

    v17 = *(v0 + 8);

    return v17();
  }

  v19 = *(v0 + 112);
  v20 = *(v0 + 120);
  v21 = *(v0 + 80);
  v22 = sub_2402A7238();
  v24 = v23;
  sub_24028DDB8(v8, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2402A8810;
  *(inited + 32) = 0xD000000000000010;
  v26 = inited + 32;
  *(inited + 40) = 0x80000002402A9B20;
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  v27 = sub_24029D62C(inited);
  swift_setDeallocating();
  sub_24028DF98(v26, &qword_27E3C8C70, &qword_2402A88A0);

  v28 = *(v0 + 8);

  return v28(v27);
}

uint64_t sub_24028DCF0()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 152);
  v3 = *(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_24028DD64()
{
  result = qword_27E3C8C60;
  if (!qword_27E3C8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8C60);
  }

  return result;
}

uint64_t sub_24028DDB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_24028DDCC(a1, a2);
  }

  return a1;
}

uint64_t sub_24028DDCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_24028DE60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_24028DEF4(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C78, qword_2402A88B0) - 8) + 80);

  sub_24028C850(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24028DF98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AuthenticationHeadersProvider.AuthenticationError(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AuthenticationHeadersProvider.AuthenticationError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_24028E05C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24028E078(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_24028E0BC(uint64_t a1, int a2)
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

uint64_t sub_24028E104(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24028E170(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24028E1B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24028E228()
{
  v1 = *v0;
  sub_2402A7938();
  MEMORY[0x245CBDE10](v1);
  return sub_2402A7958();
}

uint64_t sub_24028E29C()
{
  v1 = *v0;
  sub_2402A7938();
  MEMORY[0x245CBDE10](v1);
  return sub_2402A7958();
}

uint64_t sub_24028E2E0()
{
  v1 = 0x656372756F73;
  v2 = 0x6575737369;
  if (*v0 != 2)
  {
    v2 = 0x736E6F6974706FLL;
  }

  if (*v0)
  {
    v1 = 0x72656C6C6163;
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

uint64_t sub_24028E350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24028E9F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24028E390(uint64_t a1)
{
  v2 = sub_24028E7B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24028E3CC(uint64_t a1)
{
  v2 = sub_24028E7B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24028E408(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C90, &qword_2402A8AB8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24028E7B8();
  sub_2402A7978();
  v11 = *v3;
  v12 = v3[1];
  v22 = 0;
  sub_2402A7858();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v21 = 1;
    sub_2402A7858();
    v15 = v3[4];
    v16 = v3[5];
    v20 = 2;
    sub_2402A7858();
    v19 = v3[6];
    v18[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
    sub_24028EEC8(&qword_27E3C8CA8);
    sub_2402A7868();
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_24028E640@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_24028EB50(a1, v6);
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

uint64_t sub_24028E6A8(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_2402A7888() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_2402A7888() & 1) == 0 || (v3 != v9 || v6 != v10) && (sub_2402A7888() & 1) == 0)
  {
    return 0;
  }

  return sub_24028E854(v5, v11);
}

unint64_t sub_24028E7B8()
{
  result = qword_27E3C8C98;
  if (!qword_27E3C8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8C98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_24028E854(uint64_t result, uint64_t a2)
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

    v20 = sub_24029CFE8(v15, v16);
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
      v25 = sub_2402A7888();

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

uint64_t sub_24028E9F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (sub_2402A7888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656C6C6163 && a2 == 0xE600000000000000 || (sub_2402A7888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6575737369 && a2 == 0xE500000000000000 || (sub_2402A7888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2402A7888();

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

uint64_t sub_24028EB50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CB0, &qword_2402A8AC8);
  v5 = *(v30 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = sub_24029D62C(MEMORY[0x277D84F90]);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24028E7B8();
  sub_2402A7968();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v5;
    v29 = v9;
    v35 = 0;
    v12 = sub_2402A7838();
    v14 = v13;
    v27 = v12;
    v34 = 1;
    v15 = sub_2402A7838();
    v28 = v16;
    v26 = v15;
    v33 = 2;
    v17 = sub_2402A7838();
    v19 = v18;
    v25 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CA0, &qword_2402A8AC0);
    v32 = 3;
    sub_24028EEC8(&qword_27E3C8CB8);
    sub_2402A7848();
    (*(v11 + 8))(v8, v30);

    v20 = v31;

    v21 = v28;

    __swift_destroy_boxed_opaque_existential_1(a1);

    v23 = v26;
    *a2 = v27;
    a2[1] = v14;
    a2[2] = v23;
    a2[3] = v21;
    a2[4] = v25;
    a2[5] = v19;
    a2[6] = v20;
  }

  return result;
}

uint64_t sub_24028EEC8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8CA0, &qword_2402A8AC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24028F0A4()
{
  result = qword_27E3C8CC0;
  if (!qword_27E3C8CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8CC0);
  }

  return result;
}

unint64_t sub_24028F0FC()
{
  result = qword_27E3C8CC8;
  if (!qword_27E3C8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8CC8);
  }

  return result;
}

unint64_t sub_24028F154()
{
  result = qword_27E3C8CD0;
  if (!qword_27E3C8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8CD0);
  }

  return result;
}

uint64_t sub_24028F1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_24028F1CC, 0, 0);
}

uint64_t sub_24028F1CC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_2402A7118();
  v0[6] = v3;
  v4 = *(v3 - 8);
  v0[7] = v4;
  (*(v4 + 16))(v1, v2, v3);
  v5 = off_28522D998;
  v6 = type metadata accessor for CompositeHTTPHeadersProvider();
  v13 = (v5 + *v5);
  v7 = v5[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_24028F370;
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];

  return (v13)(v11, v9, v6, &off_28522D988);
}

uint64_t sub_24028F370(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_24028F5EC;
  }

  else
  {
    v5 = sub_24028F484;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24028F484()
{
  v1 = 0;
  v2 = *(v0 + 72);
  v3 = -1;
  v4 = -1 << *(v2 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v2 + 64);
  v6 = (63 - v4) >> 6;
  if (v5)
  {
    while (1)
    {
      v7 = v1;
LABEL_9:
      v8 = v20[2];
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (v7 << 10) | (16 * v9);
      v11 = (*(v2 + 48) + v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(v2 + 56) + v10);
      v15 = *v14;
      v16 = v14[1];

      sub_2402A7108();

      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  v18 = v20[9];

  v19 = v20[1];

  return v19();
}

uint64_t sub_24028F5EC()
{
  (*(v0[7] + 8))(v0[2], v0[6]);
  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

uint64_t sub_24028F660(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_24028C0CC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_240299D70(v10, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_24028C30C(a2, a3);
    *v3 = v9;
  }

  else
  {
    sub_24028DF98(a1, &qword_27E3C8DD0, &qword_2402A8E80);
    sub_2402998D0(a2, a3, v10);
    sub_24028C30C(a2, a3);
    return sub_24028DF98(v10, &qword_27E3C8DD0, &qword_2402A8E80);
  }

  return result;
}

uint64_t sub_24028F738()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D88, &qword_2402A8DB8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_2402A7218();
  __swift_allocate_value_buffer(v5, qword_27E3CA7E8);
  v6 = __swift_project_value_buffer(v5, qword_27E3CA7E8);
  sub_2402A71E8();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

char *BatteryServiceBookingCoordinator.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return BatteryServiceBookingCoordinator.init()();
}

char *BatteryServiceBookingCoordinator.init()()
{
  sub_24029F088(&unk_2402A9268, 0, sub_24029EF54, 0, v22);
  type metadata accessor for UserDefaultsActor();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = [objc_opt_self() standardUserDefaults];
  v2 = [objc_allocWithZone(type metadata accessor for BatteryServiceOptions()) init];
  v21[3] = &type metadata for SignedRequestManager;
  v21[4] = &off_28522D888;
  v3 = swift_allocObject();
  v21[0] = v3;
  v4 = v22[1];
  *(v3 + 16) = v22[0];
  *(v3 + 32) = v4;
  *(v3 + 48) = v23;
  v20[3] = &type metadata for CoreAnalyticsReporter;
  v20[4] = &off_28522CF98;
  v5 = type metadata accessor for BatteryServiceBookingCoordinator();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v21, &type metadata for SignedRequestManager);
  v10 = *(off_28522D860 + 8);
  MEMORY[0x28223BE20](v9, v9);
  v12 = &v20[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  __swift_mutable_project_boxed_opaque_existential_1(v20, &type metadata for CoreAnalyticsReporter);
  v14 = *(v12 + 1);
  v24[0] = *v12;
  v24[1] = v14;
  v25 = *(v12 + 4);
  v15 = sub_24029A338(v24, sub_24028FE0C, 0, v1, v2, v8);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v21);
  swift_getObjectType();
  v16 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v17 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v15;
}

char *BatteryServiceBookingCoordinator.__allocating_init(options:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return BatteryServiceBookingCoordinator.init(options:)(a1);
}

char *BatteryServiceBookingCoordinator.init(options:)(void *a1)
{
  sub_24029F088(&unk_2402A9268, 0, sub_24029EF54, 0, v23);
  type metadata accessor for UserDefaultsActor();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = [objc_opt_self() standardUserDefaults];
  v22[3] = &type metadata for SignedRequestManager;
  v22[4] = &off_28522D888;
  v4 = swift_allocObject();
  v22[0] = v4;
  v5 = v23[1];
  *(v4 + 16) = v23[0];
  *(v4 + 32) = v5;
  *(v4 + 48) = v24;
  v21[3] = &type metadata for CoreAnalyticsReporter;
  v21[4] = &off_28522CF98;
  v6 = type metadata accessor for BatteryServiceBookingCoordinator();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v22, &type metadata for SignedRequestManager);
  v11 = *(off_28522D860 + 8);
  MEMORY[0x28223BE20](v10, v10);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  __swift_mutable_project_boxed_opaque_existential_1(v21, &type metadata for CoreAnalyticsReporter);
  v15 = *(v13 + 1);
  v25[0] = *v13;
  v25[1] = v15;
  v26 = *(v13 + 4);
  v16 = sub_24029A338(v25, sub_24028FE0C, 0, v3, a1, v9);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  swift_getObjectType();
  v17 = *((*MEMORY[0x277D85000] & *v1) + 0x30);
  v18 = *((*MEMORY[0x277D85000] & *v1) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

void sub_24028FE0C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = sub_2402A71D8();
  sub_24029D904(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_24029CBCC(&qword_27E3C8B80, type metadata accessor for OpenExternalURLOptionsKey);
  v2 = sub_2402A7328();

  [v0 openURL:v1 options:v2 completionHandler:0];
}

uint64_t sub_24028FF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_2402A7788();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_2402A7768();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240290044, 0, 0);
}

uint64_t sub_240290044()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[9];
  type metadata accessor for TelemetryEvent();
  v9 = swift_allocObject();
  v0[19] = v9;
  swift_defaultActor_initialize();
  v9[14] = 0;
  v9[15] = 0;
  v9[16] = sub_24029DA2C(MEMORY[0x277D84F90]);
  sub_2402A7748();
  sub_2402A7738();
  v10 = *(v4 + 8);
  v0[20] = v10;
  v0[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v2, v3);
  v11 = swift_allocObject();
  v0[22] = v11;
  v11[2] = v8;
  v11[3] = v9;
  v11[4] = v7;
  v11[5] = v6;

  sub_2402A7778();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v13 = swift_task_alloc();
  v0[23] = v13;
  v13[2] = &unk_2402A8EA8;
  v13[3] = v11;
  v13[4] = v1;
  v13[5] = v5;
  v14 = *(MEMORY[0x277D859B8] + 4);
  v15 = swift_task_alloc();
  v0[24] = v15;
  *v15 = v0;
  v15[1] = sub_240290244;
  v16 = v0[8];

  return MEMORY[0x282200740](v16, v12, v12, 0, 0, &unk_2402A8EB8, v13, v12);
}

uint64_t sub_240290244()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_240290438;
  }

  else
  {
    v5 = *(v2 + 184);

    v4 = sub_240290360;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240290360()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[12];
  v10 = v0[13];

  (*(v10 + 8))(v8, v9);
  v4(v5, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_240290438()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  (*(v10 + 8))(v8, v9);
  v5(v6, v7);
  *(v0 + 56) = v1;
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 152);

    *(v0 + 208) = *(v0 + 40);
    v13 = sub_240290578;
  }

  else
  {
    v12 = *(v0 + 152);

    v13 = sub_240290764;
  }

  return MEMORY[0x2822009F8](v13, v12, 0);
}

uint64_t sub_240290578()
{
  v8 = v0;
  v1 = *(v0 + 152);
  v2 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D837D0];
  v7 = &off_28522D730;
  v4 = 0x6572756C696166;
  v5 = 0xE700000000000000;
  swift_beginAccess();
  sub_24028F660(&v4, 0, 1uLL);
  v6 = v2;
  v7 = &off_28522D730;
  v4 = 0xD00000000000002CLL;
  v5 = 0x80000002402A9F00;
  sub_24028F660(&v4, 0, 2uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24029067C, 0, 0);
}

uint64_t sub_24029067C()
{
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 152);
  sub_24029C7D8();
  v4 = swift_allocError();
  *v5 = v2;
  v5[1] = v1;
  sub_24029C784();
  swift_allocError();
  *v6 = v4;
  v6[1] = v3;
  swift_willThrow();

  v8 = *(v0 + 136);
  v7 = *(v0 + 144);
  v9 = *(v0 + 112);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_240290764()
{
  v1 = *(v0 + 152);
  sub_24029E4B0(0xD00000000000001DLL, 0x80000002402A9EE0);

  return MEMORY[0x2822009F8](sub_2402907E4, 0, 0);
}

uint64_t sub_2402907E4()
{
  v1 = v0[25];
  v2 = v0[19];
  sub_24029C784();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();
  v5 = v0[17];
  v4 = v0[18];
  v6 = v0[14];

  v7 = v0[1];

  return v7();
}

uint64_t sub_240290894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = sub_2402A7218();
  v5[15] = v6;
  v7 = *(v6 - 8);
  v5[16] = v7;
  v8 = *(v7 + 64) + 15;
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029095C, 0, 0);
}

uint64_t sub_24029095C()
{
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[13];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2402A8810;
    *(inited + 32) = sub_2402A73A8();
    *(inited + 40) = v4;
    *(inited + 48) = v2;
    *(inited + 56) = v1;

    v5 = sub_24029D62C(inited);
    swift_setDeallocating();
    sub_24028DF98(inited + 32, &qword_27E3C8C70, &qword_2402A88A0);
  }

  else
  {
    v5 = sub_24029D62C(MEMORY[0x277D84F90]);
  }

  v0[18] = v5;
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_240290AA4;
  v7 = v0[17];
  v9 = v0[11];
  v8 = v0[12];

  return sub_240292F94(v7, v8, v5);
}

uint64_t sub_240290AA4()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = sub_240290C84;
  }

  else
  {
    v5 = *(v2 + 144);

    v4 = sub_240290BC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240290BC0()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[10];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40) + 48);
  (*(v2 + 32))(v5, v1, v3);
  *(v5 + v6) = v4;

  v7 = v0[1];

  return v7();
}

uint64_t sub_240290C84()
{
  v2 = v0[17];
  v1 = v0[18];

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_240290CF0()
{
  *(v1 + 72) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CD8, &qword_2402A8C48) - 8) + 64) + 15;
  *(v1 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240290D8C, v0, 0);
}

uint64_t sub_240290D8C()
{
  v1 = v0;
  v4 = v0 + 9;
  v2 = v0[9];
  v3 = v4[1];
  v1[8] = 0;
  v5 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_clock;
  sub_2402A76C8();
  v6 = sub_2402A76E8();
  (*(*(v6 - 8) + 56))(v3, 0, 1, v6);
  v7 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_lastPrepareInstant;
  swift_beginAccess();
  sub_24029C1A4(v3, v2 + v7, &qword_27E3C8CD8, &qword_2402A8C48);
  swift_endAccess();

  v8 = swift_task_alloc();
  v1[11] = v8;
  *v8 = v1;
  v8[1] = sub_240290EFC;
  v9 = v1[9];

  return sub_2402A014C(v2 + v5, (v1 + 8), v9);
}

void sub_240290EFC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 72);
  v7 = *v3;
  v4[12] = a1;
  v4[13] = a2;

  if (v2)
  {
  }

  else
  {
    v8 = v4[9];

    MEMORY[0x2822009F8](sub_240291054, v8, 0);
  }
}

uint64_t sub_240291054(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 64);
  *(v3 + 112) = v4;
  if (v4)
  {
    a1 = sub_24029107C;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, v4, a3);
}

uint64_t sub_24029107C()
{
  v9 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = sub_2402A7A48();
  sub_2402A7A48();
  *&v8[3] = MEMORY[0x277D839F8];
  *&v8[4] = &off_28522D750;
  v8[0] = v5 * 1.0e-18 + v4;
  swift_beginAccess();
  sub_24028F660(v8, 0, 0);
  swift_endAccess();
  v6 = v0[14];

  return MEMORY[0x2822009F8](sub_24029116C, v6, 0);
}

uint64_t sub_24029116C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0xD000000000000022;
  *(v1 + 120) = 0x80000002402A9C70;

  v3 = swift_task_alloc();
  *(v0 + 120) = v3;
  *v3 = v0;
  v3[1] = sub_240291238;

  return sub_24028B8A4(v1);
}

uint64_t sub_240291238()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_2402913D4;
  }

  else
  {
    v6 = sub_240291364;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240291364()
{
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_2402913D4()
{
  v1 = v0[14];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[16];

  return v3();
}

uint64_t sub_240291444(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v2[10] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = sub_2402A7318();
  v2[12] = v6;
  v7 = *(v6 - 8);
  v2[13] = v7;
  v8 = *(v7 + 64) + 15;
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029155C, a2, 0);
}

uint64_t sub_24029155C()
{
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  v4 = __swift_project_value_buffer(v2, qword_27E3CA818);
  v0[17] = v4;
  v5 = *(v3 + 16);
  v0[18] = v5;
  v0[19] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2402A72F8();
  v7 = sub_2402A7598();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_240288000, v6, v7, "Preparing battery service booking flow.", v8, 2u);
    MEMORY[0x245CBE530](v8, -1, -1);
  }

  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[13];
  v12 = v0[9];

  v13 = *(v11 + 8);
  v0[20] = v13;
  result = v13(v9, v10);
  v15 = *(v12 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask);
  v0[21] = v15;
  if (v15)
  {

    v16 = swift_task_alloc();
    v0[22] = v16;
    *v16 = v0;
    v16[1] = sub_240291740;
    v17 = v0[11];

    return sub_240294DEC(v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_240291740()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 184) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_240291B34;
  }

  else
  {
    v7 = sub_240291888;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_240291888()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[8];
  v8 = *v7;
  *v7 = *(v6 + *(v0[10] + 48));

  v9 = sub_2402A7218();
  (*(*(v9 - 8) + 8))(v6, v9);
  v2(v4, v3, v5);
  v10 = sub_2402A72F8();
  v11 = sub_2402A7598();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_240288000, v10, v11, "Successfully prepared battery booking flow.", v12, 2u);
    MEMORY[0x245CBE530](v12, -1, -1);
  }

  v13 = v0[20];
  v14 = v0[15];
  v15 = v0[12];
  v16 = v0[13];
  v17 = v0[8];

  v18 = v13(v14, v15);
  v21 = *v17;
  v0[24] = *v17;
  if (v21)
  {

    v18 = sub_240291A20;
    v19 = v21;
    v20 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_240291A20()
{
  v11 = v0;
  v1 = v0[24];
  *(&v9 + 1) = MEMORY[0x277D837D0];
  v10 = &off_28522D730;
  *&v8 = 0x73736563637573;
  *(&v8 + 1) = 0xE700000000000000;
  swift_beginAccess();
  sub_24028F660(&v8, 0, 1uLL);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  sub_24028F660(&v8, 0, 2uLL);
  swift_endAccess();

  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240291B34()
{
  v1 = *(v0 + 184);
  *(v0 + 56) = v1;
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v5 = *(v0 + 112);
  v6 = *(v0 + 96);
  v7 = *(v0 + 64);
  v8 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  swift_dynamicCast();
  v9 = *(v0 + 40);
  v10 = *v7;
  *v7 = *(v0 + 48);

  v3(v5, v4, v6);
  v11 = v9;

  v12 = sub_2402A72F8();
  v13 = sub_2402A75A8();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 184);
  if (v14)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v9;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_240288000, v12, v13, "Could not prepare battery service booking flow: '%@'.", v16, 0xCu);
    sub_24028DF98(v17, &qword_27E3C8DB8, &qword_2402A8E50);
    MEMORY[0x245CBE530](v17, -1, -1);
    MEMORY[0x245CBE530](v16, -1, -1);
  }

  else
  {
  }

  v20 = *(v0 + 104) + 8;
  (*(v0 + 160))(*(v0 + 112), *(v0 + 96));
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  v23 = *(v0 + 112);
  v24 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_240291F14(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_24029CC30;

  return sub_240290CF0();
}

uint64_t sub_240291FBC()
{
  v1[18] = v0;
  v2 = sub_2402A76E8();
  v1[19] = v2;
  v3 = *(v2 - 8);
  v1[20] = v3;
  v4 = *(v3 + 64) + 15;
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CD8, &qword_2402A8C48) - 8) + 64) + 15;
  v1[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CE0, &qword_2402A8C58);
  v1[24] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402920FC, v0, 0);
}

uint64_t sub_2402920FC(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[18];
  v3[17] = 0;
  v5 = *(v4 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask);
  v3[26] = v5;
  if (v5)
  {

    a1 = sub_240292188;
    a2 = v5;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_240292188()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 144);
  v5 = *(*v2 + 112);
  swift_beginAccess();
  sub_24029C20C(v2 + v5, v1, &qword_27E3C8CE0, &qword_2402A8C58);

  *(v0 + 280) = swift_getEnumCaseMultiPayload();
  sub_24028DF98(v1, &qword_27E3C8CE0, &qword_2402A8C58);

  return MEMORY[0x2822009F8](sub_240292280, v4, 0);
}

uint64_t sub_240292280()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_lastPrepareInstant;
  swift_beginAccess();
  sub_24029C20C(v4 + v5, v1, &qword_27E3C8CD8, &qword_2402A8C48);
  v6 = (*(v3 + 48))(v1, 1, v2);
  *(v0 + 284) = v6;
  v7 = *(v0 + 184);
  if (v6)
  {
    sub_24028DF98(*(v0 + 184), &qword_27E3C8CD8, &qword_2402A8C48);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v11 = *(v0 + 168);
    v10 = *(v0 + 176);
    v12 = *(v0 + 152);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);
    (*(v13 + 16))(v10, *(v0 + 184), v12);
    sub_24028DF98(v7, &qword_27E3C8CD8, &qword_2402A8C48);
    sub_2402A76C8();
    v8 = sub_2402A76D8();
    v9 = v15;
    v16 = *(v13 + 8);
    v16(v11, v12);
    v16(v10, v12);
  }

  *(v0 + 216) = v8;
  *(v0 + 224) = v9;
  v17 = *(v0 + 144);
  v18 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_clock;

  v19 = swift_task_alloc();
  *(v0 + 232) = v19;
  *v19 = v0;
  v19[1] = sub_24029248C;
  v20 = *(v0 + 144);

  return (sub_2402A042C)(v17 + v18, v20, v0 + 136);
}

void sub_24029248C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 232);
  v6 = *(*v3 + 144);
  v7 = *v3;
  v4[30] = a1;
  v4[31] = a2;

  if (v2)
  {
  }

  else
  {
    v8 = v4[18];

    MEMORY[0x2822009F8](sub_2402925E4, v8, 0);
  }
}

uint64_t sub_2402925E4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 136);
  *(v3 + 256) = v4;
  if (v4)
  {
    a1 = sub_24029260C;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, v4, a3);
}

uint64_t sub_24029260C()
{
  v10 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 284);
  v3 = *(v0 + 280) == 1;
  v8 = MEMORY[0x277D839B0];
  v9 = &off_28522D760;
  v7[0] = v3;
  swift_beginAccess();
  sub_24028F660(v7, 0, 4uLL);
  swift_endAccess();
  v4 = *(v0 + 256);
  if (v2)
  {
    v5 = sub_2402927D4;
  }

  else
  {
    v5 = sub_2402926E4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2402926E4()
{
  v9 = v0;
  v1 = v0[32];
  v2 = v0[27];
  v3 = v0[28];
  v4 = sub_2402A7A48();
  sub_2402A7A48();
  *&v8[3] = MEMORY[0x277D839F8];
  *&v8[4] = &off_28522D750;
  v8[0] = v5 * 1.0e-18 + v4;
  swift_beginAccess();
  sub_24028F660(v8, 0, 5uLL);
  swift_endAccess();
  v6 = v0[32];

  return MEMORY[0x2822009F8](sub_2402927D4, v6, 0);
}

uint64_t sub_2402927D4()
{
  v9 = v0;
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  v4 = sub_2402A7A48();
  sub_2402A7A48();
  *&v8[3] = MEMORY[0x277D839F8];
  *&v8[4] = &off_28522D750;
  v8[0] = v5 * 1.0e-18 + v4;
  swift_beginAccess();
  sub_24028F660(v8, 0, 0);
  swift_endAccess();
  v6 = v0[32];

  return MEMORY[0x2822009F8](sub_2402928C4, v6, 0);
}

uint64_t sub_2402928C4()
{
  v1 = *(v0 + 256);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0xD000000000000021;
  *(v1 + 120) = 0x80000002402A9CA0;

  v3 = swift_task_alloc();
  *(v0 + 264) = v3;
  *v3 = v0;
  v3[1] = sub_240292990;

  return sub_24028B8A4(v1);
}

uint64_t sub_240292990()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *v1;
  *(*v1 + 272) = v0;

  v5 = *(v2 + 144);
  if (v0)
  {
    v6 = sub_240292B54;
  }

  else
  {
    v6 = sub_240292ABC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240292ABC()
{
  v1 = v0[32];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  v6 = v0[1];

  return v6();
}

uint64_t sub_240292B54()
{
  v1 = v0[32];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];

  v6 = v0[1];
  v7 = v0[34];

  return v6();
}

uint64_t sub_240292D64(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_240292E0C;

  return sub_240291FBC();
}

uint64_t sub_240292E0C()
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
    v9 = sub_2402A71A8();

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

uint64_t sub_240292F94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_2402A71C8();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_2402A7118();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_2402A72C8();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v14 = sub_2402A72E8();
  v4[24] = v14;
  v15 = *(v14 - 8);
  v4[25] = v15;
  v16 = *(v15 + 64) + 15;
  v4[26] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D80, &qword_2402A8DB0) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D88, &qword_2402A8DB8) - 8) + 64) + 15;
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v19 = sub_2402A7218();
  v4[30] = v19;
  v20 = *(v19 - 8);
  v4[31] = v20;
  v21 = *(v20 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029325C, v3, 0);
}

uint64_t sub_24029325C()
{
  v1 = *(*(v0 + 112) + 168);
  *(v0 + 280) = v1;
  return MEMORY[0x2822009F8](sub_240293280, v1, 0);
}

uint64_t sub_240293280()
{
  v1 = *(v0[35] + 112);
  v2 = sub_2402A7378();
  v3 = [v1 stringForKey_];

  v4 = v0[14];
  if (v3)
  {
    v5 = sub_2402A73A8();
    v7 = v6;

    v0[36] = v5;
    v0[37] = v7;
    v8 = sub_2402939E0;
  }

  else
  {
    v8 = sub_240293370;
  }

  return MEMORY[0x2822009F8](v8, v4, 0);
}

uint64_t sub_240293370()
{
  (*(*(v0 + 248) + 56))(*(v0 + 232), 1, 1, *(v0 + 240));
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  sub_2402A71E8();
  v4 = *(v2 + 48);
  result = v4(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(v0 + 240);
    v7 = *(v0 + 232);
    (*(*(v0 + 248) + 32))(*(v0 + 272), *(v0 + 224), v6);
    if (v4(v7, 1, v6) != 1)
    {
      sub_24028DF98(*(v0 + 232), &qword_27E3C8D88, &qword_2402A8DB8);
    }

    v8 = *(v0 + 208);
    v9 = *(v0 + 216);
    v10 = *(v0 + 192);
    v11 = *(v0 + 200);
    v13 = *(v0 + 176);
    v12 = *(v0 + 184);
    v14 = *(v0 + 168);
    sub_2402A72A8();
    sub_2402A72D8();
    (*(v11 + 8))(v8, v10);
    sub_2402A72B8();
    (*(v13 + 8))(v12, v14);
    v15 = sub_2402A7298();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v9, 1, v15);
    v18 = *(v0 + 216);
    if (v17 == 1)
    {
      sub_24028DF98(*(v0 + 216), &qword_27E3C8D80, &qword_2402A8DB0);
    }

    else
    {
      sub_2402A7288();
      (*(v16 + 8))(v18, v15);
    }

    v20 = *(v0 + 264);
    v19 = *(v0 + 272);
    v21 = *(v0 + 248);
    v22 = *(v0 + 256);
    v23 = *(v0 + 240);
    v24 = *(v0 + 160);
    v25 = *(v0 + 128);
    v26 = *(v0 + 136);
    v27 = *(v0 + 120);
    v45 = v23;
    v46 = *(v0 + 104);
    *(v0 + 72) = 0xD000000000000019;
    *(v0 + 80) = 0x80000002402A9E60;
    (*(v25 + 104))(v26, *MEMORY[0x277CC91D8], v27);
    sub_24029BC0C();
    sub_2402A7208();
    (*(v25 + 8))(v26, v27);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D98, &qword_2402A8DC0);
    v28 = *(sub_2402A7198() - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    *(swift_allocObject() + 16) = xmmword_2402A8810;
    sub_2402A7188();

    sub_2402A71F8();

    v31 = *(v21 + 8);
    *(v0 + 304) = v31;
    *(v0 + 312) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v31(v22, v45);
    sub_2402A70D8();
    sub_2402A70B8();
    v32 = sub_2402A7178();
    v33 = *(v32 + 48);
    v34 = *(v32 + 52);
    swift_allocObject();
    sub_2402A7168();
    strcpy((v0 + 16), "ios_settings");
    *(v0 + 29) = 0;
    *(v0 + 30) = -5120;
    *(v0 + 32) = 0xD000000000000010;
    *(v0 + 40) = 0x80000002402A9E80;
    *(v0 + 48) = 0x5F79726574746162;
    *(v0 + 56) = 0xEF65636976726573;
    *(v0 + 64) = v46;
    sub_24029BC60();

    sub_2402A7158();
    v35 = *(v0 + 160);
    v36 = *(v0 + 24);
    v37 = *(v0 + 40);
    v38 = *(v0 + 56);
    v39 = *(v0 + 64);

    sub_2402A70F8();
    v40 = swift_task_alloc();
    *(v0 + 320) = v40;
    *v40 = v0;
    v40[1] = sub_2402940A0;
    v41 = *(v0 + 160);
    v42 = *(v0 + 112);
    v43 = *(v0 + 88);
    v44 = *(v0 + 96);

    return sub_240294400(v43, v41, v44);
  }

  return result;
}

uint64_t sub_2402939E0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v5 = *(v0 + 232);

  sub_2402A71E8();
  swift_bridgeObjectRelease_n();
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = *(v0 + 240);
    v7 = *(v0 + 248);
    v8 = *(v0 + 224);
    sub_2402A71E8();
    v9 = *(v7 + 48);
    result = v9(v8, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v11 = *(v0 + 240);
    v12 = *(v0 + 232);
    (*(*(v0 + 248) + 32))(*(v0 + 272), *(v0 + 224), v11);
    if (v9(v12, 1, v11) != 1)
    {
      sub_24028DF98(*(v0 + 232), &qword_27E3C8D88, &qword_2402A8DB8);
    }
  }

  else
  {
    (*(*(v0 + 248) + 32))(*(v0 + 272), *(v0 + 232), *(v0 + 240));
  }

  v13 = *(v0 + 208);
  v14 = *(v0 + 216);
  v15 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 176);
  v17 = *(v0 + 184);
  v19 = *(v0 + 168);
  sub_2402A72A8();
  sub_2402A72D8();
  (*(v16 + 8))(v13, v15);
  sub_2402A72B8();
  (*(v18 + 8))(v17, v19);
  v20 = sub_2402A7298();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 48))(v14, 1, v20);
  v23 = *(v0 + 216);
  if (v22 == 1)
  {
    sub_24028DF98(*(v0 + 216), &qword_27E3C8D80, &qword_2402A8DB0);
  }

  else
  {
    sub_2402A7288();
    (*(v21 + 8))(v23, v20);
  }

  v25 = *(v0 + 264);
  v24 = *(v0 + 272);
  v26 = *(v0 + 248);
  v27 = *(v0 + 256);
  v28 = *(v0 + 240);
  v29 = *(v0 + 160);
  v30 = *(v0 + 128);
  v31 = *(v0 + 136);
  v32 = *(v0 + 120);
  v50 = v28;
  v51 = *(v0 + 104);
  *(v0 + 72) = 0xD000000000000019;
  *(v0 + 80) = 0x80000002402A9E60;
  (*(v30 + 104))(v31, *MEMORY[0x277CC91D8], v32);
  sub_24029BC0C();
  sub_2402A7208();
  (*(v30 + 8))(v31, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D98, &qword_2402A8DC0);
  v33 = *(sub_2402A7198() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  *(swift_allocObject() + 16) = xmmword_2402A8810;
  sub_2402A7188();

  sub_2402A71F8();

  v36 = *(v26 + 8);
  *(v0 + 304) = v36;
  *(v0 + 312) = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v36(v27, v50);
  sub_2402A70D8();
  sub_2402A70B8();
  v37 = sub_2402A7178();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_2402A7168();
  strcpy((v0 + 16), "ios_settings");
  *(v0 + 29) = 0;
  *(v0 + 30) = -5120;
  *(v0 + 32) = 0xD000000000000010;
  *(v0 + 40) = 0x80000002402A9E80;
  *(v0 + 48) = 0x5F79726574746162;
  *(v0 + 56) = 0xEF65636976726573;
  *(v0 + 64) = v51;
  sub_24029BC60();

  sub_2402A7158();
  v40 = *(v0 + 160);
  v41 = *(v0 + 24);
  v42 = *(v0 + 40);
  v43 = *(v0 + 56);
  v44 = *(v0 + 64);

  sub_2402A70F8();
  v45 = swift_task_alloc();
  *(v0 + 320) = v45;
  *v45 = v0;
  v45[1] = sub_2402940A0;
  v46 = *(v0 + 160);
  v47 = *(v0 + 112);
  v48 = *(v0 + 88);
  v49 = *(v0 + 96);

  return sub_240294400(v48, v46, v49);
}

uint64_t sub_2402940A0()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = v0;

  v5 = *(v2 + 112);
  if (v0)
  {
    v6 = sub_2402942E4;
  }

  else
  {
    v6 = sub_2402941CC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2402941CC()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[33];
  v4 = v0[34];
  v5 = v0[32];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];
  v12 = v0[27];
  v13 = v0[26];
  v9 = v0[23];
  v14 = v0[17];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v1(v4, v6);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2402942E4()
{
  v2 = v0[38];
  v1 = v0[39];
  v3 = v0[34];
  v4 = v0[30];
  (*(v0[19] + 8))(v0[20], v0[18]);
  v2(v3, v4);
  v17 = v0[41];
  v6 = v0[33];
  v5 = v0[34];
  v7 = v0[32];
  v9 = v0[28];
  v8 = v0[29];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[23];
  v13 = v0[20];
  v14 = v0[17];

  v15 = v0[1];

  return v15();
}

uint64_t sub_240294400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = sub_2402A7318();
  v4[21] = v5;
  v6 = *(v5 - 8);
  v4[22] = v6;
  v7 = *(v6 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = *(*(type metadata accessor for HandoffResponse() - 8) + 64) + 15;
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402944FC, v3, 0);
}

uint64_t sub_2402944FC()
{
  v1 = v0[19];
  v0[26] = 0;
  v0[27] = 0;
  return MEMORY[0x2822009F8](sub_24029451C, v1, 0);
}

uint64_t sub_24029451C()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v0[10] = MEMORY[0x277D83B88];
  v0[11] = &off_28522D740;
  v0[7] = v1;
  swift_beginAccess();
  sub_24028F660((v0 + 7), 0, 3uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2402945D8, v2, 0);
}

uint64_t sub_2402945D8()
{
  v1 = *(v0 + 208);
  v2 = __swift_project_boxed_opaque_existential_1((*(v0 + 160) + 112), *(*(v0 + 160) + 136));
  v3 = v2[4];
  v4 = *(v2 + 1);
  *(v0 + 16) = *v2;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_2402946BC;
  v6 = *(v0 + 200);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);

  return sub_2402961E4(v6, v7, v1 != 0, v8);
}

uint64_t sub_2402946BC()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v4 = *v1;
  *(*v1 + 232) = v0;

  v5 = *(v2 + 160);
  if (v0)
  {
    v6 = sub_2402948B4;
  }

  else
  {
    v6 = sub_2402947E8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2402947E8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 136);

  v5 = sub_2402A7218();
  (*(*(v5 - 8) + 32))(v4, v2, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2402948B4()
{
  v1 = *(v0 + 232);
  *(v0 + 120) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  if ((swift_dynamicCast() & 1) == 0 || *(v0 + 128) != 401)
  {

    v33 = *(v0 + 232);
    goto LABEL_15;
  }

  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = __swift_project_value_buffer(v4, qword_27E3CA818);
  v7 = *(v5 + 16);
  v7(v3, v6, v4);
  v8 = sub_2402A72F8();
  v9 = sub_2402A75A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_240288000, v8, v9, "Support handoff API returned 401, retrying…", v10, 2u);
    MEMORY[0x245CBE530](v10, -1, -1);
  }

  v12 = *(v0 + 208);
  v11 = *(v0 + 216);
  v13 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v0 + 176);

  v16 = *(v15 + 8);
  v16(v13, v14);
  sub_24029BAC0();
  v17 = swift_allocError();
  *v18 = 401;

  if (v12 != 2)
  {
    ++*(v0 + 208);
    *(v0 + 216) = v17;
    v31 = *(v0 + 152);
    v30 = sub_24029451C;
    v32 = 0;

    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  v19 = v17;
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 184);
  v21 = *(v0 + 168);
  v22 = *(v0 + 176) + 16;
  v23 = __swift_project_value_buffer(v21, qword_27E3CA818);
  v7(v20, v23, v21);
  v24 = sub_2402A72F8();
  v25 = sub_2402A75A8();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 134217984;
    *(v26 + 4) = 3;
    _os_log_impl(&dword_240288000, v24, v25, "Failed to retrieve handoff URL after %ld attempts.", v26, 0xCu);
    MEMORY[0x245CBE530](v26, -1, -1);
  }

  v28 = *(v0 + 176);
  v27 = *(v0 + 184);
  v29 = *(v0 + 168);

  v30 = (v16)(v27, v29);
  if (!v19)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v30, v31, v32);
  }

  swift_willThrow();
LABEL_15:
  v35 = *(v0 + 192);
  v34 = *(v0 + 200);
  v36 = *(v0 + 184);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t *BatteryServiceBookingCoordinator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[20];

  v2 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v3 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_clock;
  v4 = sub_2402A7708();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24028DF98(v0 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_lastPrepareInstant, &qword_27E3C8CD8, &qword_2402A8C48);
  v5 = *(v0 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t BatteryServiceBookingCoordinator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  v1 = v0[20];

  v2 = v0[21];

  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v3 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_clock;
  v4 = sub_2402A7708();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_24028DF98(v0 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_lastPrepareInstant, &qword_27E3C8CD8, &qword_2402A8C48);
  v5 = *(v0 + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_240294DEC(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v2[16] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CE0, &qword_2402A8C58);
  v2[19] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240294F0C, v1, 0);
}

uint64_t sub_240294F0C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[15];
  v4 = *(*v3 + 112);
  v0[22] = v4;
  swift_beginAccess();
  sub_24029C20C(v3 + v4, v1, &qword_27E3C8CE0, &qword_2402A8C58);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_24029C134(v0[21], v0[14]);
      v7 = v0[20];
      v6 = v0[21];
      v9 = v0[17];
      v8 = v0[18];

      v10 = v0[1];

      return v10();
    }

    else
    {
      v20 = v0[19];
      v19 = v0[20];
      v21 = v0[18];
      v22 = v0[15];
      v23 = sub_2402A74E8();
      (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
      v24 = sub_24029C274();
      v25 = swift_allocObject();
      v25[2] = v22;
      v25[3] = v24;
      v25[4] = v22;
      swift_retain_n();
      v26 = sub_240295CDC(0, 0, v21, &unk_2402A8E68, v25);
      v0[23] = v26;
      *v19 = v26;
      swift_storeEnumTagMultiPayload();
      swift_beginAccess();

      sub_24029C1A4(v19, v3 + v4, &qword_27E3C8CE0, &qword_2402A8C58);
      swift_endAccess();
      v27 = *(MEMORY[0x277D85A10] + 4);
      v28 = swift_task_alloc();
      v0[24] = v28;
      *v28 = v0;
      v28[1] = sub_240295284;
      v29 = v0[16];
      v30 = v0[14];

      return MEMORY[0x282200830](v30, &unk_2402A8E78, v26, sub_24029C458, v26, v22, v24, v29);
    }
  }

  else
  {
    v12 = *v0[21];
    v0[26] = v12;
    v13 = *(MEMORY[0x277D857C8] + 4);
    v14 = swift_task_alloc();
    v0[27] = v14;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
    *v14 = v0;
    v14[1] = sub_2402953B0;
    v17 = v0[16];
    v16 = v0[17];
    v18 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v16, v12, v17, v15, v18);
  }
}

uint64_t sub_240295284()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;
  *(*v1 + 200) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_24029556C;
  }

  else
  {
    v6 = sub_2402954DC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2402953B0()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_240295788;
  }

  else
  {
    v6 = sub_240295670;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2402954DC()
{
  v1 = v0[23];

  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  v6 = v0[1];

  return v6();
}

uint64_t sub_24029556C()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];
  v9 = v0[15];

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_24029C1A4(v5, v9 + v3, &qword_27E3C8CE0, &qword_2402A8C58);
  swift_endAccess();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_240295670()
{
  v1 = v0[26];
  v2 = v0[22];
  v3 = v0[19];
  v4 = v0[20];
  v5 = v0[17];
  v6 = v0[14];
  v7 = v0[15];

  sub_24029C20C(v5, v4, &qword_27E3C8DB0, &qword_2402A8E40);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_24029C1A4(v4, v7 + v2, &qword_27E3C8CE0, &qword_2402A8C58);
  swift_endAccess();
  sub_24029C134(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v11 = v0[17];
  v10 = v0[18];

  v12 = v0[1];

  return v12();
}

uint64_t sub_240295788()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];

  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_24029C1A4(v6, v9 + v4, &qword_27E3C8CE0, &qword_2402A8C58);
  swift_endAccess();
  swift_willThrow();

  v10 = v0[1];

  return v10();
}

uint64_t sub_24029588C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CE0, &qword_2402A8C58);
  v4[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240295930, a4, 0);
}

uint64_t sub_240295930()
{
  v1 = (v0[6] + *(*v0[6] + 120));
  v2 = *v1;
  v0[9] = v1[1];

  v7 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_240295A50;
  v5 = v0[5];

  return v7(v5);
}

uint64_t sub_240295A50()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 48);
  if (v0)
  {
    v6 = sub_240295C70;
  }

  else
  {
    v6 = sub_240295B7C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240295B7C()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = v0[5];

  sub_24029C20C(v5, v2, &qword_27E3C8DB0, &qword_2402A8E40);
  swift_storeEnumTagMultiPayload();
  v6 = *(*v4 + 112);
  swift_beginAccess();
  sub_24029C1A4(v2, v4 + v6, &qword_27E3C8CE0, &qword_2402A8C58);
  swift_endAccess();

  v7 = v0[1];

  return v7();
}

uint64_t sub_240295C70()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_240295CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v25 - v11;
  sub_24029C20C(a3, v25 - v11, &qword_27E3C8DA8, &qword_2402A8DC8);
  v13 = sub_2402A74E8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_24028DF98(v12, &qword_27E3C8DA8, &qword_2402A8DC8);
  }

  else
  {
    sub_2402A74D8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2402A7468();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2402A73E8() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
      v22 = (v20 | v18);
      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v22 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      v25[1] = 7;
      v25[2] = v22;
      v25[3] = v21;
      v23 = swift_task_create();

      sub_24028DF98(a3, &qword_27E3C8DA8, &qword_2402A8DC8);

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

  sub_24028DF98(a3, &qword_27E3C8DA8, &qword_2402A8DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_240295F98(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  *v6 = v2;
  v6[1] = sub_240296080;
  v9 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a2, v7, v8, v9);
}

uint64_t sub_240296080()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_240296174(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  v4 = MEMORY[0x277D84950];

  return MEMORY[0x282200438](a1, v2, v3, v4);
}

uint64_t sub_2402961E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 288) = a4;
  *(v5 + 296) = v4;
  *(v5 + 632) = a3;
  *(v5 + 272) = a1;
  *(v5 + 280) = a2;
  v6 = sub_2402A7318();
  *(v5 + 304) = v6;
  v7 = *(v6 - 8);
  *(v5 + 312) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();
  v9 = *(*(sub_2402A79C8() - 8) + 64) + 15;
  *(v5 + 328) = swift_task_alloc();
  v10 = *(*(sub_2402A79A8() - 8) + 64) + 15;
  *(v5 + 336) = swift_task_alloc();
  v11 = *(*(sub_2402A7A18() - 8) + 64) + 15;
  *(v5 + 344) = swift_task_alloc();
  v12 = sub_2402A7A28();
  *(v5 + 352) = v12;
  v13 = *(v12 - 8);
  *(v5 + 360) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 368) = swift_task_alloc();
  v15 = sub_2402A76E8();
  *(v5 + 376) = v15;
  v16 = *(v15 - 8);
  *(v5 + 384) = v16;
  v17 = *(v16 + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = swift_task_alloc();
  v18 = sub_2402A7708();
  *(v5 + 408) = v18;
  v19 = *(v18 - 8);
  *(v5 + 416) = v19;
  v20 = *(v19 + 64) + 15;
  *(v5 + 424) = swift_task_alloc();
  v21 = type metadata accessor for CompositeHTTPHeadersProvider();
  *(v5 + 432) = v21;
  v22 = *(*(v21 - 8) + 64) + 15;
  *(v5 + 440) = swift_task_alloc();
  v23 = sub_2402A7118();
  *(v5 + 448) = v23;
  v24 = *(v23 - 8);
  *(v5 + 456) = v24;
  v25 = *(v24 + 64) + 15;
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2402964E8, 0, 0);
}

uint64_t sub_2402964E8()
{
  v2 = *(v0 + 432);
  v1 = *(v0 + 440);
  v3 = *(v0 + 296);
  v4 = *(v0 + 632);
  (*(*(v0 + 456) + 16))(*(v0 + 472), *(v0 + 280), *(v0 + 448));
  v5 = *v3;
  *(v0 + 248) = *v3;
  v6 = v3[3];
  *(v0 + 480) = v3[4];

  v6(v4);
  sub_24029C20C(v0 + 16, v0 + 56, &qword_27E3C8D08, &qword_2402A8D60);
  sub_24029A040(v0 + 56);
  sub_24028DF98(v0 + 16, &qword_27E3C8D08, &qword_2402A8D60);
  v7 = v5;
  *(v0 + 488) = v5;
  v8 = *(v2 + 20);

  sub_2402A76F8();
  *v1 = v7;
  v9 = swift_task_alloc();
  *(v0 + 496) = v9;
  *v9 = v0;
  v9[1] = sub_240296664;
  v10 = *(v0 + 464);
  v11 = *(v0 + 472);
  v12 = *(v0 + 440);
  v13 = *(v0 + 288);

  return sub_24028F1A8(v10, v11, v13);
}

uint64_t sub_240296664()
{
  v2 = *v1;
  v3 = *(*v1 + 496);
  v7 = *v1;
  *(*v1 + 504) = v0;

  if (v0)
  {
    v4 = *(v2 + 488);
    sub_24029BB14(*(v2 + 440));

    v5 = sub_240297690;
  }

  else
  {
    sub_24029BB14(*(v2 + 440));
    v5 = sub_240296794;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_240296794()
{
  v1 = *(v0 + 288);
  (*(*(v0 + 456) + 40))(*(v0 + 472), *(v0 + 464), *(v0 + 448));
  *(v0 + 633) = sub_24029F01C() & 1;

  return MEMORY[0x2822009F8](sub_240296820, v1, 0);
}

uint64_t sub_240296820()
{
  v7 = v0;
  v1 = *(v0 + 633);
  v2 = *(v0 + 288);
  v5 = MEMORY[0x277D839B0];
  v6 = &off_28522D760;
  v4[0] = v1;
  swift_beginAccess();
  sub_24028F660(v4, 0, 6uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2402968D0, 0, 0);
}

uint64_t sub_2402968D0()
{
  v1 = v0[60];
  v2 = v0[53];
  v3 = v0[37];
  sub_2402A76F8();
  v0[64] = *(v3 + 8);
  v0[65] = *(v3 + 16);
  sub_24029C20C((v0 + 31), (v0 + 33), &qword_27E3C8D10, &qword_2402A8D70);

  return MEMORY[0x2822009F8](sub_240296988, 0, 0);
}

uint64_t sub_240296988()
{
  v1 = v0[64];
  v2 = v0[53];
  v4 = v0[50];
  v3 = v0[51];
  v0[66] = sub_24029CBCC(&qword_27E3C8D18, MEMORY[0x277D85928]);
  sub_2402A78D8();
  v10 = (v1 + *v1);
  v5 = v1[1];
  v6 = swift_task_alloc();
  v0[67] = v6;
  *v6 = v0;
  v6[1] = sub_240296AD8;
  v7 = v0[65];
  v8 = v0[59];

  return v10(v8);
}

uint64_t sub_240296AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 536);
  v9 = *v4;
  v5[68] = a1;
  v5[69] = a2;
  v5[70] = a3;
  v5[71] = v3;

  if (v3)
  {
    v7 = sub_2402974D4;
  }

  else
  {
    v7 = sub_240296BF8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_240296BF8()
{
  sub_24029BB70(0, 0, 0);

  return MEMORY[0x2822009F8](sub_240296C68, 0, 0);
}

uint64_t sub_240296C68()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 520);
  v3 = *(v0 + 416);
  v4 = *(v0 + 424);
  v6 = *(v0 + 400);
  v5 = *(v0 + 408);
  v7 = *(v0 + 384);
  v8 = *(v0 + 392);
  v9 = *(v0 + 376);
  v12 = *(v0 + 480);
  v13 = *(v0 + 288);
  sub_2402A78D8();
  sub_24029CBCC(&qword_27E3C8D20, MEMORY[0x277D858F8]);
  sub_2402A7718();
  v10 = *(v7 + 8);
  v10(v8, v9);
  v10(v6, v9);
  sub_24028DF98(v0 + 248, &qword_27E3C8D10, &qword_2402A8D70);

  *(v0 + 576) = *(v0 + 216);
  (*(v3 + 8))(v4, v5);

  return MEMORY[0x2822009F8](sub_240296DDC, v13, 0);
}

uint64_t sub_240296DDC()
{
  v8 = v0;
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[36];
  v4 = sub_2402A7A48();
  sub_2402A7A48();
  *&v7[3] = MEMORY[0x277D839F8];
  *&v7[4] = &off_28522D750;
  v7[0] = v5 * 1.0e-18 + v4;
  swift_beginAccess();
  sub_24028F660(v7, 0xD000000000000012, 0x80000002402A9DF0);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_240296EE8, 0, 0);
}

uint64_t sub_240296EE8()
{
  v70 = v0;
  v65 = *(v0 + 576);
  v67 = *(v0 + 584);
  v1 = *(v0 + 360);
  v2 = *(v0 + 368);
  v3 = *(v0 + 344);
  v63 = *(v0 + 352);
  v4 = *(v0 + 328);
  v5 = *(v0 + 336);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D28, &qword_2402A8D78);
  v6 = *(sub_2402A79F8() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2402A8C10;
  sub_2402A79E8();
  sub_2402A79D8();
  sub_24029A7D8(v9);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2402A7A08();
  sub_2402A7998();
  sub_2402A79B8();
  sub_2402A7988();
  sub_24029CBCC(&qword_27E3C8D30, MEMORY[0x277CC9FF0]);
  sub_2402A7A38();
  (*(v1 + 8))(v2, v63);
  v11 = *(v0 + 232);
  v10 = *(v0 + 240);
  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v13 = *(v0 + 312);
  v12 = *(v0 + 320);
  v14 = *(v0 + 304);
  v15 = __swift_project_value_buffer(v14, qword_27E3CA818);
  (*(v13 + 16))(v12, v15, v14);

  v16 = sub_2402A72F8();
  v17 = sub_2402A7598();

  v18 = os_log_type_enabled(v16, v17);
  v20 = *(v0 + 312);
  v19 = *(v0 + 320);
  v21 = *(v0 + 304);
  if (v18)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v69 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_240299328(v11, v10, &v69);
    _os_log_impl(&dword_240288000, v16, v17, "Support service call completed in %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x245CBE530](v23, -1, -1);
    MEMORY[0x245CBE530](v22, -1, -1);
  }

  v24 = (*(v20 + 8))(v19, v21);
  if (!*(v0 + 560))
  {
    __break(1u);
    return MEMORY[0x2822009F8](v24, v25, v26);
  }

  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v28 = v27;
    v29 = *(v0 + 560);
    v30 = [v28 statusCode];
    v31 = *(v0 + 560);
    if ((v30 - 200) >= 0x64)
    {
      v41 = *(v0 + 488);

      v42 = [v28 statusCode];
      sub_24029BAC0();
      v40 = swift_allocError();
      *v43 = v42;
      swift_willThrow();

LABEL_12:
      v44 = *(v0 + 560);
      v45 = *(v0 + 552);
      v46 = *(v0 + 544);
      *(v0 + 624) = v40;
      v47 = *(v0 + 288);
      sub_24029BB70(v46, v45, v44);
      v24 = sub_2402979FC;
      v25 = v47;
      v26 = 0;

      return MEMORY[0x2822009F8](v24, v25, v26);
    }
  }

  v32 = *(v0 + 568);
  v33 = *(v0 + 552);
  v34 = *(v0 + 544);
  v35 = *(v0 + 488);
  v36 = *(v0 + 272);
  v37 = sub_2402A7148();
  v38 = *(v37 + 48);
  v39 = *(v37 + 52);
  swift_allocObject();
  sub_2402A7138();

  type metadata accessor for HandoffResponse();
  sub_24029CBCC(&qword_27E3C8D38, type metadata accessor for HandoffResponse);
  sub_2402A7128();
  if (v32)
  {
    v40 = v32;

    goto LABEL_12;
  }

  v48 = *(v0 + 560);
  v49 = *(v0 + 552);
  v50 = *(v0 + 544);
  v52 = *(v0 + 464);
  v51 = *(v0 + 472);
  v54 = *(v0 + 448);
  v53 = *(v0 + 456);
  v55 = *(v0 + 440);
  v58 = *(v0 + 424);
  v59 = *(v0 + 400);
  v60 = *(v0 + 392);
  v61 = *(v0 + 368);
  v62 = *(v0 + 344);
  v64 = *(v0 + 336);
  v66 = *(v0 + 328);
  v68 = *(v0 + 320);

  sub_24029BB70(v50, v49, v48);
  (*(v53 + 8))(v51, v54);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_2402974D4()
{
  (*(v0[48] + 8))(v0[50], v0[47]);

  return MEMORY[0x2822009F8](sub_24029754C, 0, 0);
}

uint64_t sub_24029754C()
{
  v1 = v0[65];
  v3 = v0[60];
  v2 = v0[61];
  v5 = v0[52];
  v4 = v0[53];
  v6 = v0[51];
  sub_24028DF98((v0 + 31), &qword_27E3C8D10, &qword_2402A8D70);

  (*(v5 + 8))(v4, v6);

  return MEMORY[0x2822009F8](sub_240297614, 0, 0);
}

uint64_t sub_240297614()
{
  v0[78] = v0[71];
  v1 = v0[36];
  sub_24029BB70(0, 0, 0);

  return MEMORY[0x2822009F8](sub_2402979FC, v1, 0);
}

uint64_t sub_240297690()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 288);
  *(v0 + 256) = v1;
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  swift_dynamicCast();
  v4 = *(v0 + 96);
  v6 = *(v0 + 104);
  *(v0 + 592) = v6;
  sub_2402A7648();

  MEMORY[0x245CBD8D0](v4, v6);

  *(v0 + 608) = 0xD00000000000001DLL;
  *(v0 + 616) = 0x80000002402A9DB0;

  return MEMORY[0x2822009F8](sub_2402977BC, v2, 0);
}

uint64_t sub_2402977BC()
{
  v10 = v0;
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[36];
  v4 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D837D0];
  v9 = &off_28522D730;
  v6 = 0x6572756C696166;
  v7 = 0xE700000000000000;
  swift_beginAccess();
  sub_24028F660(&v6, 0, 1uLL);
  v8 = v4;
  v9 = &off_28522D730;
  v6 = v2;
  v7 = v1;

  sub_24028F660(&v6, 0, 2uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_2402978C8, 0, 0);
}

uint64_t sub_2402978C8()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[63];
  swift_willThrow();

  v4 = v0[58];
  v5 = v0[55];
  v6 = v0[53];
  v8 = v0[49];
  v7 = v0[50];
  v9 = v0[46];
  v10 = v0[42];
  v11 = v0[43];
  v14 = v0[41];
  v15 = v0[40];
  v16 = v0[63];
  (*(v0[57] + 8))(v0[59], v0[56]);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2402979FC()
{
  v8 = v0;
  v1 = *(v0 + 288);
  v2 = MEMORY[0x277D837D0];
  v6 = MEMORY[0x277D837D0];
  v7 = &off_28522D730;
  v4 = 0x6572756C696166;
  v5 = 0xE700000000000000;
  swift_beginAccess();
  sub_24028F660(&v4, 0, 1uLL);
  v6 = v2;
  v7 = &off_28522D730;
  v4 = 0xD00000000000001ELL;
  v5 = 0x80000002402A9DD0;
  sub_24028F660(&v4, 0, 2uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_240297B00, 0, 0);
}

uint64_t sub_240297B00()
{
  v1 = v0[78];
  swift_willThrow();
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[53];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[46];
  v8 = v0[42];
  v9 = v0[43];
  v12 = v0[41];
  v13 = v0[40];
  v14 = v0[78];
  (*(v0[57] + 8))(v0[59], v0[56]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_240297C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = v21 - v10;
  sub_24029C20C(a1, v21 - v10, &qword_27E3C8DA8, &qword_2402A8DC8);
  v12 = sub_2402A74E8();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_24028DF98(v11, &qword_27E3C8DA8, &qword_2402A8DC8);
    if (*(a3 + 16))
    {
LABEL_3:
      v14 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v15 = sub_2402A7468();
      v17 = v16;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_2402A74D8();
    (*(v13 + 8))(v11, v12);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
  v17 = 0;
LABEL_6:
  v18 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v19 = (v17 | v15);
  if (v17 | v15)
  {
    v22[0] = 0;
    v22[1] = 0;
    v19 = v22;
    v22[2] = v15;
    v22[3] = v17;
  }

  v21[1] = 1;
  v21[2] = v19;
  v21[3] = v18;
  swift_task_create();
}

uint64_t sub_240297E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DE8, &qword_2402A8EC0) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v8 = sub_2402A7788();
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  v10 = sub_2402A7768();
  v6[13] = v10;
  v11 = *(v10 - 8);
  v6[14] = v11;
  v6[15] = *(v11 + 64);
  v6[16] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240297FBC, 0, 0);
}

uint64_t sub_240297FBC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[13];
  v24 = v0[12];
  v25 = v0[15];
  v20 = v0[10];
  v21 = v0[16];
  v22 = v0[7];
  v23 = v0[9];
  v18 = v3;
  v19 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  v26 = v0[11];
  v27 = v0[3];
  v6 = sub_2402A74E8();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v5;

  sub_240297C1C(v1, &unk_2402A8ED0, v8);
  sub_24028DF98(v1, &qword_27E3C8DA8, &qword_2402A8DC8);
  sub_2402A74C8();
  v7(v1, 0, 1, v6);
  (*(v2 + 16))(v21, v19, v3);
  (*(v20 + 16))(v24, v22, v23);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = (v25 + *(v20 + 80) + v9) & ~*(v20 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v9, v21, v18);
  (*(v20 + 32))(v11 + v10, v24, v23);
  sub_240297C1C(v1, &unk_2402A8EE0, v11);
  sub_24028DF98(v1, &qword_27E3C8DA8, &qword_2402A8DC8);
  v12 = *(MEMORY[0x277D85818] + 4);
  v13 = swift_task_alloc();
  v0[18] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DF0, &qword_2402A8EE8);
  *v13 = v0;
  v13[1] = sub_2402982A0;
  v15 = v0[8];
  v16 = v0[3];

  return MEMORY[0x2822004D0](v15, 0, 0, v14);
}

uint64_t sub_2402982A0()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_2402984E0;
  }

  else
  {
    v3 = sub_2402983B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2402983B4()
{
  v1 = v0[8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  result = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[16];
    v4 = v0[17];
    v6 = v0[12];
    v7 = v0[3];
    sub_24029C134(v1, v0[2]);
    v8 = *v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
    sub_2402A7558();

    v9 = v0[1];

    return v9();
  }

  return result;
}

uint64_t sub_2402984E0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v3 = *(v0 + 96);
  v4 = *(v0 + 64);
  v5 = **(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  sub_2402A7558();

  v6 = *(v0 + 8);
  v7 = *(v0 + 152);

  return v6();
}

uint64_t sub_2402985C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v9 = (a4 + *a4);
  v6 = a4[1];
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_24029CC14;

  return v9(a1);
}

uint64_t sub_2402986BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v8 = sub_2402A7768();
  *(v5 + 56) = v8;
  v9 = *(v8 - 8);
  *(v5 + 64) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v11 = sub_2402A7788();
  *(v5 + 88) = v11;
  v12 = *(v11 - 8);
  *(v5 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  v14 = *(MEMORY[0x277D857F0] + 4);
  v15 = swift_task_alloc();
  *(v5 + 112) = v15;
  v16 = sub_24029CBCC(&qword_27E3C8DF8, MEMORY[0x277D85960]);
  *v15 = v5;
  v15[1] = sub_240298894;

  return MEMORY[0x282200488](a4, v5 + 16, a5, v11, v16);
}

uint64_t sub_240298894()
{
  v2 = *(*v1 + 112);
  v4 = *v1;

  if (v0)
  {
  }

  return MEMORY[0x2822009F8](sub_2402989AC, 0, 0);
}

uint64_t sub_2402989AC()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  (*(v2 + 16))(v1, v0[6], v3);
  (*(v6 + 16))(v4, v8, v7);
  sub_2402A7728();
  v15 = sub_2402A76D8();
  v10 = v9;
  v11 = *(v6 + 8);
  v11(v5, v7);
  v11(v4, v7);
  (*(v2 + 8))(v1, v3);
  sub_24029C7D8();
  swift_allocError();
  *v12 = v15;
  v12[1] = v10;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_240298B24(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24029CC14;

  return v7();
}

uint64_t sub_240298C0C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_240296080;

  return v8();
}

uint64_t sub_240298CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DA8, &qword_2402A8DC8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v26 - v12;
  sub_24029C20C(a3, v26 - v12, &qword_27E3C8DA8, &qword_2402A8DC8);
  v14 = sub_2402A74E8();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24028DF98(v13, &qword_27E3C8DA8, &qword_2402A8DC8);
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

  sub_2402A74D8();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = sub_2402A7468();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = sub_2402A73E8() + 32;
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

    sub_24028DF98(a3, &qword_27E3C8DA8, &qword_2402A8DC8);

    return v24;
  }

LABEL_8:
  sub_24028DF98(a3, &qword_27E3C8DA8, &qword_2402A8DC8);
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

uint64_t sub_240298FF0(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2402990E8;

  return v7(a1);
}

uint64_t sub_2402990E8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_2402991E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D70, &unk_2402A8DA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D78, &qword_2402A94B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_240299328(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2402993F4(v11, 0, 0, 1, a1, a2);
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
    sub_24029BBB0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2402993F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_240299500(a5, a6);
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
    result = sub_2402A7668();
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

uint64_t sub_240299500(uint64_t a1, unint64_t a2)
{
  v4 = sub_24029954C(a1, a2);
  sub_24029967C(&unk_28522CCA0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_24029954C(uint64_t a1, unint64_t a2)
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

  v6 = sub_240299768(v5, 0);
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

  result = sub_2402A7668();
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
        v10 = sub_2402A7418();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_240299768(v10, 0);
        result = sub_2402A7638();
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

uint64_t sub_24029967C(uint64_t result)
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

  result = sub_2402997DC(result, v12, 1, v3);
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

void *sub_240299768(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D40, &qword_2402A8D80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2402997DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D40, &qword_2402A8D80);
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

double sub_2402998D0@<D0>(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_24029D138(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_24028B0D4();
      v12 = v14;
    }

    sub_24028C30C(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    sub_24028C0CC((*(v12 + 56) + 40 * v9), a3);
    sub_24029997C(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24029997C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2402A7608() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_2402A7938();
      if (v14 <= 2)
      {
        if (v14)
        {
          if (v14 == 1)
          {
            v15 = 2;
          }

          else
          {
            if (v14 != 2)
            {
              goto LABEL_17;
            }

            v15 = 3;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else if (v14 > 4)
      {
        if (v14 == 5)
        {
          v15 = 6;
        }

        else
        {
          if (v14 != 6)
          {
LABEL_17:
            MEMORY[0x245CBDE10](1);

            sub_2402A73F8();
            goto LABEL_22;
          }

          v15 = 7;
        }
      }

      else if (v14 == 3)
      {
        v15 = 4;
      }

      else
      {
        v15 = 5;
      }

      MEMORY[0x245CBDE10](v15);
LABEL_22:
      v16 = sub_2402A7958();
      result = sub_24028C30C(v13, v14);
      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_27;
      }

      if (v3 >= v17)
      {
LABEL_27:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = v21 + 40 * v3;
        v23 = (v21 + 40 * v6);
        if (v3 != v6 || v22 >= v23 + 40)
        {
          v9 = *v23;
          v10 = v23[1];
          *(v22 + 32) = *(v23 + 4);
          *v22 = v9;
          *(v22 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

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

uint64_t sub_240299BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24029CFE8(a3, a4);
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
      sub_24028A51C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_24029CFE8(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = sub_2402A78C8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24028ADF0();
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

uint64_t sub_240299D70(__int128 *a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24029D138(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_24028B0D4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_24028AA80(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_24029D138(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_2402A78C8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_24028C0CC(a1, v23);
  }

  else
  {
    sub_240299EC8(v11, a2, a3, a1, v22);

    return sub_24028C19C(a2, a3);
  }
}

uint64_t sub_240299EC8(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_24028C0CC(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_240299F38(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2402991E0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D78, &qword_2402A94B0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_24029A040(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = *(*v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v7 = v4[3] >> 1, v7 <= v5))
  {
    v4 = sub_2402991E0(isUniquelyReferenced_nonNull_native, v5 + 1, 1, v4);
    v7 = v4[3] >> 1;
  }

  v8 = v4[2];
  v9 = v7 - v8;
  v10 = &v4[5 * v8];
  v11 = &qword_27E3C8D08;
  sub_24029C20C(a1, &v26, &qword_27E3C8D08, &qword_2402A8D60);
  v12 = sub_24029A5E0(&v29, (v10 + 4), v9);
  sub_24028DF98(a1, &qword_27E3C8D08, &qword_2402A8D60);
  if (v12 < 1)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v4[2];
  v11 = v13 + v12;
  if (__OFADD__(v13, v12))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4[2] = v11;
  if (v12 != v9)
  {
    v14 = &qword_27E3C8D60;
    v15 = &qword_2402A8D90;
    v16 = &v29;
    goto LABEL_8;
  }

LABEL_11:
  v26 = v29;
  v27 = v30;
  v28 = v31;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  sub_24029C20C(&v26, &v24, &qword_27E3C8D68, &qword_2402A8D98);
  while (v25)
  {
    sub_24028DF98(&v24, &qword_27E3C8D68, &qword_2402A8D98);
    v19 = v4[3];
    v20 = v19 >> 1;
    if ((v19 >> 1) < v11 + 1)
    {
      v4 = sub_2402991E0((v19 > 1), v11 + 1, 1, v4);
      v20 = v4[3] >> 1;
    }

    sub_24029C20C(&v26, &v22, &qword_27E3C8D68, &qword_2402A8D98);
    if (v23)
    {
      if (v11 <= v20)
      {
        v18 = v20;
      }

      else
      {
        v18 = v11;
      }

      v21 = &v4[5 * v11 + 4];
      while (1)
      {
        sub_24028C0CC(&v22, &v24);
        if (v18 == v11)
        {
          break;
        }

        sub_24028DF98(&v26, &qword_27E3C8D68, &qword_2402A8D98);
        sub_24028C0CC(&v24, v21);
        ++v11;
        v26 = v29;
        v27 = v30;
        v28 = v31;
        v29 = 0u;
        v30 = 0u;
        v31 = 0;
        sub_24029C20C(&v26, &v22, &qword_27E3C8D68, &qword_2402A8D98);
        v21 += 40;
        if (!v23)
        {
          goto LABEL_13;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v24);
      v11 = v18;
    }

    else
    {
LABEL_13:
      sub_24028DF98(&v22, &qword_27E3C8D68, &qword_2402A8D98);
      v18 = v11;
    }

    v4[2] = v18;
    sub_24029C20C(&v26, &v24, &qword_27E3C8D68, &qword_2402A8D98);
  }

  sub_24028DF98(&v26, &qword_27E3C8D68, &qword_2402A8D98);
  sub_24028DF98(&v29, &qword_27E3C8D60, &qword_2402A8D90);
  v16 = &v24;
  v14 = &qword_27E3C8D68;
  v15 = &qword_2402A8D98;
LABEL_8:
  result = sub_24028DF98(v16, v14, v15);
  *v2 = v4;
  return result;
}

char *sub_24029A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, char *a6)
{
  ObjectType = swift_getObjectType();
  v33[3] = &type metadata for SignedRequestManager;
  v33[4] = &off_28522D888;
  v13 = swift_allocObject();
  v33[0] = v13;
  v14 = *(a1 + 16);
  *(v13 + 16) = *a1;
  *(v13 + 32) = v14;
  *(v13 + 48) = *(a1 + 32);
  v32[3] = &type metadata for CoreAnalyticsReporter;
  v32[4] = &off_28522CF98;
  swift_defaultActor_initialize();
  sub_2402A76F8();
  v15 = OBJC_IVAR____ACSBatteryServiceBookingCoordinator_lastPrepareInstant;
  v16 = sub_2402A76E8();
  (*(*(v16 - 8) + 56))(&a6[v15], 1, 1, v16);
  *&a6[OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask] = 0;
  sub_24028C068(v33, (a6 + 112));
  *(a6 + 19) = a2;
  *(a6 + 20) = a3;
  *(a6 + 21) = a4;
  sub_24028C068(v32, (a6 + 176));

  v17 = 0;
  v18 = 0;
  if ((sub_24029CC6C() & 0x100000000) == 0)
  {
    v17 = sub_2402A7878();
    v18 = v19;
  }

  v31.receiver = a6;
  v31.super_class = type metadata accessor for BatteryServiceBookingCoordinator();
  v20 = objc_msgSendSuper2(&v31, sel_init);
  v21 = swift_allocObject();
  v21[2] = v20;
  v21[3] = v17;
  v21[4] = v18;
  v21[5] = ObjectType;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DC8, &qword_2402A8E58);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  v25 = swift_allocObject();
  v26 = v20;
  swift_defaultActor_initialize();

  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v33);
  v27 = *(*v25 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8CE0, &qword_2402A8C58);
  swift_storeEnumTagMultiPayload();
  v28 = (v25 + *(*v25 + 120));
  *v28 = &unk_2402A8E98;
  v28[1] = v21;
  v29 = *&v26[OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask];
  *&v26[OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask] = v25;

  return v26;
}

uint64_t sub_24029A5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_24028C0CC(v4, v15);
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  result = sub_24029C1A4(v15, &v16, &qword_27E3C8D68, &qword_2402A8D98);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    v11 = v17;
    *a1 = v16;
    *(a1 + 16) = v11;
    *(a1 + 32) = v18;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    while (1)
    {
      v12 = v16;
      v13 = v17;
      v14 = v18;
      v16 = 0u;
      v17 = 0u;
      v18 = 0;
      if (!*(&v13 + 1))
      {
        break;
      }

      sub_24028C0CC(&v12, v15);
      sub_24028C0CC(v15, a2);
      if (a3 == v9)
      {
        goto LABEL_12;
      }

      a2 += 40;
      if (__OFADD__(v9++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_24028DF98(&v12, &qword_27E3C8D68, &qword_2402A8D98);
    a3 = v9 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_24029A6F4()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t type metadata accessor for BatteryServiceBookingCoordinator()
{
  result = qword_27E3C8CE8;
  if (!qword_27E3C8CE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_24029A7D8(uint64_t a1)
{
  v2 = sub_2402A79F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v41 = &v34 - v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8D48, &qword_2402A8D88);
    v12 = sub_2402A7628();
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
      sub_24029CBCC(&qword_27E3C8D50, MEMORY[0x277CC9FC8]);
      v20 = sub_2402A7358();
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
          v39(v8, *(v12 + 48) + v22 * v17, v2);
          sub_24029CBCC(&qword_27E3C8D58, MEMORY[0x277CC9FC8]);
          v27 = sub_2402A7368();
          v28 = *v18;
          (*v18)(v8, v2);
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

uint64_t sub_24029AAF8(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v4 = sub_2402A7318();
  v2[10] = v4;
  v5 = *(v4 - 8);
  v2[11] = v5;
  v6 = *(v5 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  v2[14] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[15] = swift_task_alloc();
  v9 = sub_2402A7218();
  v2[16] = v9;
  v10 = *(v9 - 8);
  v2[17] = v10;
  v11 = *(v10 + 64) + 15;
  v2[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029AC60, a1, 0);
}

void sub_24029AC60()
{
  v1 = *(v0[8] + OBJC_IVAR____ACSBatteryServiceBookingCoordinator_retrieveSupportHandoffURLTask);
  v0[19] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[20] = v2;
    *v2 = v0;
    v2[1] = sub_24029AD34;
    v3 = v0[15];

    sub_240294DEC(v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24029AD34()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 168) = v0;

  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_24029B444;
  }

  else
  {
    v7 = sub_24029AE7C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_24029AE7C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[9];
  v5 = *(v0[15] + *(v0[14] + 48));
  v0[22] = v5;
  (*(v2 + 32))(v1);
  v6 = *v4;
  *v4 = v5;

  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[11];
  v10 = __swift_project_value_buffer(v8, qword_27E3CA818);
  (*(v9 + 16))(v7, v10, v8);
  v11 = sub_2402A72F8();
  v12 = sub_2402A7598();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_240288000, v11, v12, "Opening handoff URL.", v13, 2u);
    MEMORY[0x245CBE530](v13, -1, -1);
  }

  v14 = v0[13];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[9];

  v18 = (*(v16 + 8))(v14, v15);
  v21 = *v17;
  v0[23] = *v17;
  if (v21)
  {

    v18 = sub_24029B040;
    v19 = v21;
    v20 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_24029B040()
{
  v7 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 64);
  *(&v5 + 1) = MEMORY[0x277D837D0];
  v6 = &off_28522D730;
  *&v4 = 0x73736563637573;
  *(&v4 + 1) = 0xE700000000000000;
  swift_beginAccess();
  sub_24028F660(&v4, 0, 1uLL);
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  sub_24028F660(&v4, 0, 2uLL);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24029B134, v2, 0);
}

uint64_t sub_24029B134()
{
  v1 = v0[8];
  v0[24] = *(v1 + 152);
  v0[25] = *(v1 + 160);
  sub_2402A74B8();
  v0[26] = sub_2402A74A8();
  v3 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_24029B1DC, v3, v2);
}

uint64_t sub_24029B1DC()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  v4 = v0[18];
  v5 = v0[8];

  v3(v4);

  return MEMORY[0x2822009F8](sub_24029B264, v5, 0);
}

uint64_t sub_24029B264()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];

  (*(v3 + 8))(v2, v4);
  v5 = v0[18];
  v6 = v0[15];
  v8 = v0[12];
  v7 = v0[13];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24029B318()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[8];

  v4(v2);

  return MEMORY[0x2822009F8](sub_24029B39C, v5, 0);
}

uint64_t sub_24029B39C()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 168);

  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v5 = *(v0 + 104);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_24029B444()
{
  v1 = v0[21];
  v0[7] = v1;
  v2 = v0[9];
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C28, &qword_2402A8750);
  swift_dynamicCast();
  v4 = v0[6];
  v0[31] = v0[5];
  v0[32] = v4;
  v5 = *v2;
  *v2 = v4;

  if (qword_27E3C8A90 != -1)
  {
    swift_once();
  }

  v6 = v0[21];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];
  v10 = __swift_project_value_buffer(v9, qword_27E3CA818);
  (*(v8 + 16))(v7, v10, v9);
  v11 = v6;
  v12 = sub_2402A72F8();
  v13 = sub_2402A75A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = v0[21];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v17 = v14;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    _os_log_impl(&dword_240288000, v12, v13, "Failed to retrieve handoff URL: '%@'. Using fallback URL.", v15, 0xCu);
    sub_24028DF98(v16, &qword_27E3C8DB8, &qword_2402A8E50);
    MEMORY[0x245CBE530](v16, -1, -1);
    MEMORY[0x245CBE530](v15, -1, -1);
  }

  v20 = v0[11];
  v19 = v0[12];
  v21 = v0[10];
  v22 = v0[8];

  (*(v20 + 8))(v19, v21);
  v0[27] = *(v22 + 152);
  v0[28] = *(v22 + 160);
  if (qword_27E3C8A88 != -1)
  {
    swift_once();
  }

  v0[29] = __swift_project_value_buffer(v0[16], qword_27E3CA7E8);
  sub_2402A74B8();
  v0[30] = sub_2402A74A8();
  v24 = sub_2402A7468();

  return MEMORY[0x2822009F8](sub_24029B318, v24, v23);
}

void sub_24029B70C()
{
  v0 = sub_2402A7708();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_24029BA68();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of BatteryServiceBookingCoordinator.prepareBatteryServiceBookingFlow()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xC8);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24029CC14;

  return v6();
}

uint64_t dispatch thunk of BatteryServiceBookingCoordinator.launchBatteryServiceBookingFlow()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24029CC14;

  return v6();
}

void sub_24029BA68()
{
  if (!qword_27E3C8CF8)
  {
    sub_2402A76E8();
    v0 = sub_2402A75D8();
    if (!v1)
    {
      atomic_store(v0, &qword_27E3C8CF8);
    }
  }
}

unint64_t sub_24029BAC0()
{
  result = qword_27E3C8D00;
  if (!qword_27E3C8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8D00);
  }

  return result;
}

uint64_t sub_24029BB14(uint64_t a1)
{
  v2 = type metadata accessor for CompositeHTTPHeadersProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24029BB70(uint64_t a1, unint64_t a2, void *a3)
{
  if (a3)
  {
    sub_24028DDCC(a1, a2);
  }
}

uint64_t sub_24029BBB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24029BC0C()
{
  result = qword_27E3C8D90;
  if (!qword_27E3C8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8D90);
  }

  return result;
}

unint64_t sub_24029BC60()
{
  result = qword_27E3C8DA0;
  if (!qword_27E3C8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8DA0);
  }

  return result;
}

uint64_t sub_24029BCB8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240296080;

  return sub_240292D64(v2, v3);
}

uint64_t sub_24029BD68()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24029CC14;

  return sub_240298B24(v2, v3, v5);
}

uint64_t sub_24029BE28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24029CC14;

  return sub_240298C0C(a1, v4, v5, v7);
}

uint64_t sub_24029BEF4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24029BF2C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24029CC14;

  return sub_240298FF0(a1, v5);
}

uint64_t objectdestroy_27Tm()
{
  _Block_release(*(v0 + 16));
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24029C024()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24029CC14;

  return sub_240291F14(v2, v3);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
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

uint64_t sub_24029C134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8DB0, &qword_2402A8E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24029C1A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_24029C20C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_24029C274()
{
  result = qword_27E3C8DC0;
  if (!qword_27E3C8DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8DC8, &qword_2402A8E58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8DC0);
  }

  return result;
}

uint64_t sub_24029C308(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24029CC14;

  return sub_24029588C(a1, v4, v5, v6);
}

uint64_t sub_24029C3BC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_240296080;

  return sub_240295F98(a1, v1);
}

uint64_t objectdestroy_70Tm(void (*a1)(void), void (*a2)(void), uint64_t a3)
{
  a1(*(v3 + 16));
  a2(*(v3 + 32));

  return MEMORY[0x2821FE8E8](v3, a3, 7);
}

uint64_t sub_24029C4F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24029CC14;

  return sub_24028FF18(a1, v4, v5, v7);
}

uint64_t sub_24029C5B4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24029C5FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24029CC14;

  return sub_240290894(a1, v4, v5, v7, v6);
}

uint64_t sub_24029C6BC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_24029CC14;

  return sub_240297E18(a1, a2, v6, v7, v9, v8);
}

unint64_t sub_24029C784()
{
  result = qword_27E3C8DD8;
  if (!qword_27E3C8DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8DD8);
  }

  return result;
}

unint64_t sub_24029C7D8()
{
  result = qword_27E3C8DE0;
  if (!qword_27E3C8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E3C8DE0);
  }

  return result;
}

uint64_t objectdestroy_31Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24029C86C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24029CC14;

  return sub_2402985C4(a1, v4, v5, v7);
}

uint64_t sub_24029C92C()
{
  v1 = sub_2402A7768();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2402A7788();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_24029CA7C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2402A7768() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2402A7788() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24029CC14;

  return sub_2402986BC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24029CBCC(unint64_t *a1, void (*a2)(uint64_t))
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

id BatteryServiceOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_24029CC6C()
{
  v1 = sub_2402A73A8();
  v3 = v2;
  v4 = *(v0 + OBJC_IVAR____ACSBatteryServiceOptions_storage);
  if (!*(v4 + 16) || (v5 = v1, , v6 = sub_24029CFE8(v5, v3), v8 = v7, , (v8 & 1) == 0))
  {

    goto LABEL_6;
  }

  sub_24029BBB0(*(v4 + 56) + 32 * v6, v13);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v10 = 0;
    v9 = 1;
    return v10 | (v9 << 32);
  }

  v9 = 0;
  v10 = v12;
  return v10 | (v9 << 32);
}

id BatteryServiceOptions.init()()
{
  *&v0[OBJC_IVAR____ACSBatteryServiceOptions_storage] = sub_24029D740(MEMORY[0x277D84F90]);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryServiceOptions();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BatteryServiceOptions.__allocating_init(values:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____ACSBatteryServiceOptions_storage] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BatteryServiceOptions.init(values:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____ACSBatteryServiceOptions_storage] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BatteryServiceOptions();
  return objc_msgSendSuper2(&v3, sel_init);
}

double sub_24029CF04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(v3 + OBJC_IVAR____ACSBatteryServiceOptions_storage);
  if (!*(v5 + 16))
  {
    goto LABEL_7;
  }

  v8 = sub_24029CFE8(a1, a2);
  if ((v9 & 1) == 0)
  {

LABEL_7:
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  sub_24029BBB0(*(v5 + 56) + 32 * v8, a3);

  return result;
}

id BatteryServiceOptions.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BatteryServiceOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24029CFE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2402A7938();
  sub_2402A73F8();
  v6 = sub_2402A7958();

  return sub_24029D258(a1, a2, v6);
}

unint64_t sub_24029D060(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_2402A75B8();

  return sub_24029D310(a1, v5);
}

unint64_t sub_24029D0A4(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_2402A73A8();
  sub_2402A7938();
  sub_2402A73F8();
  v4 = sub_2402A7958();

  return sub_24029D3D4(a1, v4);
}

unint64_t sub_24029D138(uint64_t a1, int64_t a2)
{
  v5 = *(v2 + 40);
  sub_2402A7938();
  if (a2 > 2)
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v6 = 4;
      }

      else
      {
        v6 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v6 = 6;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v6 = 7;
      goto LABEL_17;
    }

LABEL_13:
    MEMORY[0x245CBDE10](1);
    sub_2402A73F8();
    goto LABEL_18;
  }

  if (!a2)
  {
    v6 = 0;
    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v6 = 2;
    goto LABEL_17;
  }

  if (a2 != 2)
  {
    goto LABEL_13;
  }

  v6 = 3;
LABEL_17:
  MEMORY[0x245CBDE10](v6);
LABEL_18:
  v7 = sub_2402A7958();

  return sub_24029D4D8(a1, a2, v7);
}

unint64_t sub_24029D258(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2402A7888())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24029D310(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_24028C320();
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2402A75C8();

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

unint64_t sub_24029D3D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2402A73A8();
      v9 = v8;
      if (v7 == sub_2402A73A8() && v9 == v10)
      {
        break;
      }

      v12 = sub_2402A7888();

      if ((v12 & 1) == 0)
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

unint64_t sub_24029D4D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 <= 2)
      {
        switch(v12)
        {
          case 0:
            if (!a2)
            {
              return v6;
            }

            goto LABEL_4;
          case 1:
            if (a2 == 1)
            {
              return v6;
            }

            goto LABEL_4;
          case 2:
            if (a2 == 2)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= 4)
        {
          if (v12 == 3)
          {
            if (a2 == 3)
            {
              return v6;
            }
          }

          else if (a2 == 4)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 5)
        {
          if (a2 == 5)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 6)
        {
          if (a2 == 6)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 7)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (sub_2402A7888() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_24029D62C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C48, &qword_2402A8770);
    v3 = sub_2402A77F8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24029CFE8(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24029D740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E08, &qword_2402A8F38);
    v3 = sub_2402A77F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24029C20C(v4, &v13, &qword_27E3C8E10, &unk_2402A8F40);
      v5 = v13;
      v6 = v14;
      result = sub_24029CFE8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24029D8F4(&v15, (v3[7] + 32 * result));
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

_OWORD *sub_24029D8F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_24029D904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8E20, &qword_2402A8F60);
    v3 = sub_2402A77F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24029C20C(v4, &v11, qword_27E3C8E28, &qword_2402A8F68);
      v5 = v11;
      result = sub_24029D0A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24029D8F4(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24029DA2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C40, &qword_2402A8F50);
    v3 = sub_2402A77F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_24029C20C(v4, &v13, &qword_27E3C8E18, &qword_2402A8F58);
      v5 = v13;
      v6 = v14;
      result = sub_24029D138(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24028C0CC(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t sub_24029DB60()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24029DBE8()
{
  v1 = sub_2402A7278();
  v0[10] = v1;
  v2 = *(v1 - 8);
  v0[11] = v2;
  v3 = *(v2 + 64) + 15;
  v0[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24029DCA4, 0, 0);
}

uint64_t sub_24029DCA4()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C68, &unk_2402A8EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2402A8810;
  strcpy((inited + 32), "X-Apple-Txn-ID");
  *(inited + 47) = -18;
  sub_2402A7268();
  v5 = sub_2402A7258();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_24029D62C(inited);
  swift_setDeallocating();
  sub_24029DDD0(inited + 32);

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_24029DDD0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3C8C70, &qword_2402A88A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24029DE3C(void *a1)
{
  v1 = a1[10];
  v2 = a1[11];
  v3 = a1[12];
  result = type metadata accessor for CachingTask.State();
  if (v5 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24029DEEC()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = *(*v0 + 96);
  v5 = type metadata accessor for CachingTask.State();
  (*(*(v5 - 8) + 8))(v0 + v1, v5);
  v6 = *(v0 + *(*v0 + 120) + 8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_24029DFC0()
{
  sub_24029DEEC();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24029E024(uint64_t a1)
{
  v1 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3C8C28, &qword_2402A8750);
  result = sub_2402A7518();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24029E0C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_24029E1DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_24029E3E0()
{
  v0 = sub_2402A7318();
  __swift_allocate_value_buffer(v0, qword_27E3CA818);
  __swift_project_value_buffer(v0, qword_27E3CA818);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_2402A73A8();

    sub_2402A7308();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24029E4B0(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  if (!*(*(v2 + 128) + 16) || (, sub_24029D138(0, 1), v6 = v5, result = , (v6 & 1) == 0))
  {
    v8 = 0x6572756C696166;
    if (!a2)
    {
      v8 = 0x73736563637573;
    }

    v15 = MEMORY[0x277D837D0];
    v16 = &off_28522D730;
    v12 = v8;
    v13 = 0xE700000000000000;
    swift_beginAccess();
    sub_24028F660(&v12, 0, 1uLL);
    if (a2)
    {
      v9 = &off_28522D730;
      v10 = MEMORY[0x277D837D0];
      v11 = a2;
    }

    else
    {
      a1 = 0;
      v11 = 0;
      v10 = 0;
      v9 = 0;
      v14 = 0;
    }

    v12 = a1;
    v13 = v11;
    v15 = v10;
    v16 = v9;

    sub_24028F660(&v12, 0, 2uLL);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24029E5FC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24029E63C(uint64_t a1, uint64_t a2)
{
  sub_2402A7938();
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 2;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x245CBDE10](v3);
        return sub_2402A7958();
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (a2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (a2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x245CBDE10](1);
  sub_2402A73F8();
  return sub_2402A7958();
}

uint64_t sub_24029E744()
{
  v1 = v0[1];
  if (v1 <= 2)
  {
    switch(v1)
    {
      case 0:
        v2 = 0;
        return MEMORY[0x245CBDE10](v2);
      case 1:
        v2 = 2;
        return MEMORY[0x245CBDE10](v2);
      case 2:
        v2 = 3;
        return MEMORY[0x245CBDE10](v2);
    }
  }

  else
  {
    if (v1 <= 4)
    {
      if (v1 == 3)
      {
        v2 = 4;
      }

      else
      {
        v2 = 5;
      }

      return MEMORY[0x245CBDE10](v2);
    }

    if (v1 == 5)
    {
      v2 = 6;
      return MEMORY[0x245CBDE10](v2);
    }

    if (v1 == 6)
    {
      v2 = 7;
      return MEMORY[0x245CBDE10](v2);
    }
  }

  v3 = *v0;
  MEMORY[0x245CBDE10](1);

  return sub_2402A73F8();
}

uint64_t sub_24029E82C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_2402A7938();
  if (v2 <= 2)
  {
    switch(v2)
    {
      case 0:
        v3 = 0;
        goto LABEL_17;
      case 1:
        v3 = 2;
        goto LABEL_17;
      case 2:
        v3 = 3;
LABEL_17:
        MEMORY[0x245CBDE10](v3);
        return sub_2402A7958();
    }
  }

  else
  {
    if (v2 <= 4)
    {
      if (v2 == 3)
      {
        v3 = 4;
      }

      else
      {
        v3 = 5;
      }

      goto LABEL_17;
    }

    if (v2 == 5)
    {
      v3 = 6;
      goto LABEL_17;
    }

    if (v2 == 6)
    {
      v3 = 7;
      goto LABEL_17;
    }
  }

  MEMORY[0x245CBDE10](1);
  sub_2402A73F8();
  return sub_2402A7958();
}