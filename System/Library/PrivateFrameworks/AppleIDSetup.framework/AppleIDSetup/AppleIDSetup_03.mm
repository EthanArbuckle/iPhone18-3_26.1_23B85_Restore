uint64_t sub_2405BBDD0(uint64_t result)
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

  result = sub_2405BBF30(result, v12, 1, v3);
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

void *sub_2405BBEBC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7418, &qword_2407626B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2405BBF30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7418, &qword_2407626B0);
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

_BYTE **sub_2405BC024(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2405BC034(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
  v41 = a2;
  result = sub_24075A9F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
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
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_2405BE44C(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_24075AE64();
      sub_24075A114();
      result = sub_24075AED4();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2405BC304(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
  v39 = a2;
  result = sub_24075A9F4();
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
      sub_24075AE64();
      sub_24075A114();
      result = sub_24075AED4();
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

uint64_t sub_2405BC5A8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
  result = sub_24075A9F4();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
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
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      sub_24075AE64();
      MEMORY[0x245CC6BA0](v21);
      result = sub_24075AED4();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_2405BC828(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2405BB37C(a2, a3);
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
      sub_2405BC034(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2405BB37C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_24075AD94();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_24065B8BC();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_2405BE39C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_2405BC9B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2405BB37C(a2, a3);
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
      sub_2405BC304(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_2405BB37C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_24075AD94();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24065BA70();
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

unint64_t sub_2405BCB30(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2405BB3F4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_24065BBDC();
    result = v17;
    goto LABEL_8;
  }

  sub_2405BC5A8(v14, a3 & 1);
  v18 = *v4;
  result = sub_2405BB3F4(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73B8, &unk_240762660);
  result = sub_24075AD94();
  __break(1u);
  return result;
}

unint64_t sub_2405BCC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B73F0, &unk_240762690);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, &v16, &qword_27E4B71E8, &qword_240762468);
      v5 = v16;
      v6 = v17;
      result = sub_2405BB37C(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_2405BCD98(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2405BCDEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2405BCE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v7);
  return sub_2405BA368(a2, a3);
}

uint64_t sub_2405BD1CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2405BD228(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A8, &qword_240762650);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, &v13, &unk_27E4BB680, &qword_240762680);
      v5 = v13;
      v6 = v14;
      result = sub_2405BB37C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2405BE38C(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2405BD358(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73B0, &qword_240762658);
    v3 = sub_24075AA04();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2405BB37C(v5, v6);
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

unint64_t sub_2405BD46C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73A0, &qword_240762648);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2405BB37C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2405BD570(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7390, &qword_240762638);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_2405BB37C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_2405BD674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C8, &unk_240762670);
    v3 = sub_24075AA04();
    v4 = a1 + 32;

    while (1)
    {
      sub_2405B044C(v4, v13, &unk_27E4B73D0, &qword_240770790);
      result = sub_2405BB338(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2405BE38C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2405BD7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73C0, &qword_24076F0F0);
    v3 = sub_24075AA04();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_2405BB3F4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_2405BD890(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7398, &qword_240762640);
    v3 = sub_24075AA04();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_2405BB2A4(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

void sub_2405BD990(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v38 = a4;
  v39 = a6;
  v37 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B73E0, &qword_240762688);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v36 - v12;
  v14 = sub_240759E04();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    if (qword_27E4B5E98 != -1)
    {
      swift_once();
    }

    v19 = sub_240759AE4();
    __swift_project_value_buffer(v19, qword_27E4B71B0);
    v20 = sub_240759AC4();
    v21 = sub_24075A5E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_240579000, v20, v21, "** Incoming message was not signed (but expected) **", v22, 2u);
      MEMORY[0x245CC76B0](v22, -1, -1);
    }

    type metadata accessor for MessageUnpacker.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v23 = xmmword_240762440;
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    swift_willThrow();
    return;
  }

  v24 = a2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71D0, &unk_240770200);
  sub_2405B044C(a5 + *(v25 + 40), v13, &qword_27E4B73E0, &qword_240762688);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2405BB9D4(a1, a2);
    sub_2405B8A50(v13, &qword_27E4B73E0, &qword_240762688);
LABEL_15:
    if (qword_27E4B5E98 != -1)
    {
      swift_once();
    }

    v31 = sub_240759AE4();
    __swift_project_value_buffer(v31, qword_27E4B71B0);
    v32 = sub_240759AC4();
    v33 = sub_24075A5E4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_240579000, v32, v33, "** Incoming message signature is not valid (and enforced) **", v34, 2u);
      MEMORY[0x245CC76B0](v34, -1, -1);
    }

    type metadata accessor for MessageUnpacker.Failure();
    swift_getWitnessTable();
    swift_allocError();
    *v35 = xmmword_240762430;
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    swift_willThrow();
    sub_24058C9E4(a1, v24);
    return;
  }

  (*(v15 + 32))(v18, v13, v14);
  v42 = v37;
  v43 = v38;
  v40 = a1;
  v41 = a2;
  sub_2405BB9D4(a1, a2);
  sub_2405BE3F8();
  v26 = sub_240759DD4();
  (*(v15 + 8))(v18, v14);
  if ((v26 & 1) == 0)
  {
    goto LABEL_15;
  }

  if (qword_27E4B5E98 != -1)
  {
    swift_once();
  }

  v27 = sub_240759AE4();
  __swift_project_value_buffer(v27, qword_27E4B71B0);
  v28 = sub_240759AC4();
  v29 = sub_24075A5D4();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_240579000, v28, v29, "Validated signature", v30, 2u);
    MEMORY[0x245CC76B0](v30, -1, -1);
  }

  sub_24058C9E4(a1, v24);
}

void sub_2405BDF54()
{
  if (!qword_27E4B7280[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B71D0, &unk_240770200);
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, qword_27E4B7280);
    }
  }
}

void sub_2405BDFB8()
{
  if (!qword_27E4B6CB0)
  {
    v0 = sub_24075A714();
    if (!v1)
    {
      atomic_store(v0, &qword_27E4B6CB0);
    }
  }
}

void sub_2405BE020(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_2405BDF54();
    if (v5 <= 0x3F)
    {
      sub_2405BDFB8();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B71C8, &unk_240762450);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2405BE254()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup15MessageUnpackerV7FailureOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405BE2B4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405BE308(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2405BE368(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

_OWORD *sub_2405BE38C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2405BE3F8()
{
  result = qword_27E4B73E8;
  if (!qword_27E4B73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B73E8);
  }

  return result;
}

unint64_t sub_2405BE4A8()
{
  result = qword_27E4B7410;
  if (!qword_27E4B7410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7408, &qword_2407626A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E4B7410);
  }

  return result;
}

uint64_t sub_2405BE560()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E506810);
  __swift_project_value_buffer(v0, qword_27E506810);
  return sub_240759AD4();
}

uint64_t sub_2405BE5E0()
{
  v0 = sub_240759AE4();
  __swift_allocate_value_buffer(v0, qword_27E4B7420);
  v1 = __swift_project_value_buffer(v0, qword_27E4B7420);
  if (qword_27E4B5EA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27E506810);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static _Coordinated.CommonError.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v5 != 2)
      {
        goto LABEL_19;
      }

      sub_2405BE874(*a1, 2uLL);
      v7 = v4;
      v8 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_10;
      }

      if (v5 != 3)
      {
        goto LABEL_19;
      }

      sub_2405BE874(*a1, 3uLL);
      v7 = v4;
      v8 = 3;
    }

LABEL_18:
    sub_2405BE874(v7, v8);
    return 1;
  }

  if (!v3)
  {
    if (v5)
    {
      goto LABEL_19;
    }

    sub_2405BE874(*a1, 0);
    v7 = v4;
    v8 = 0;
    goto LABEL_18;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      v6 = 1;
      sub_2405BE874(*a1, 1uLL);
      sub_2405BE874(v4, 1uLL);
      return v6;
    }

LABEL_19:
    sub_2405BE860(*a2, *(a2 + 8));
    sub_2405BE860(v2, v3);
    sub_2405BE874(v2, v3);
    sub_2405BE874(v4, v5);
    return 0;
  }

LABEL_10:
  if (v5 < 4)
  {
    goto LABEL_19;
  }

  if (v2 == v4 && v3 == v5)
  {
    sub_2405BE860(*a1, v3);
    sub_2405BE860(v2, v3);
    sub_2405BE874(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_18;
  }

  v10 = *a1;
  v11 = sub_24075ACF4();
  sub_2405BE860(v4, v5);
  sub_2405BE860(v2, v3);
  sub_2405BE874(v2, v3);
  sub_2405BE874(v4, v5);
  return v11 & 1;
}

uint64_t sub_2405BE860(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_2405BE874(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
  }

  return result;
}

uint64_t sub_2405BE88C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(*(a3 + a4 - 8) - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6);
  v9 = *a2;
  return sub_2405BE9EC(v7);
}

uint64_t sub_2405BE94C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2405BE9EC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t (*sub_2405BEA94())()
{
  v1 = *(*v0 + 96);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _Coordinated.receiver.getter()
{
  v1 = (v0 + *(*v0 + 104));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_2405BEB4C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 120));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24058CA60(v4);
}

uint64_t sub_2405BEBE8()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  if (*(v0 + v2) == -1)
  {
    *(v0 + v2) = 0;
    v1 = *v0;
  }

  v3 = *(v1 + 136);
  v4 = *(v0 + v3);
  v5 = __CFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v3) = v6;
    return *(v0 + *(*v0 + 136));
  }

  return result;
}

uint64_t sub_2405BEC58(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v3 = sub_24075AEE4();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405BEDCC, v1, 0);
}

uint64_t sub_2405BEDCC()
{
  v37 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[2];
  v5 = sub_240759AE4();
  v0[13] = __swift_project_value_buffer(v5, qword_27E4B7420);
  v6 = *(v3 + 16);
  v0[14] = v6;
  v0[15] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  if (v9)
  {
    v11 = v0[11];
    v13 = v0[8];
    v12 = v0[9];
    v14 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v36 = v35;
    *v14 = 136315138;
    v6(v11, v10, v13);
    v15 = sub_24075A0E4();
    v17 = v16;
    v18 = *(v12 + 8);
    v18(v10, v13);
    v19 = sub_2405BBA7C(v15, v17, &v36);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_240579000, v7, v8, "Received _Coordinated value update: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x245CC76B0](v35, -1, -1);
    MEMORY[0x245CC76B0](v14, -1, -1);
  }

  else
  {
    v20 = v0[8];
    v21 = v0[9];

    v18 = *(v21 + 8);
    v18(v10, v20);
  }

  v0[16] = v18;
  if (*(v0[3] + *(*v0[3] + 128)))
  {
    v22 = sub_240759AC4();
    v23 = sub_24075A5E4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_240579000, v22, v23, "_Coordinated value is actually invalidated, rejecting this update", v24, 2u);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    v26 = v0[11];
    v25 = v0[12];
    v27 = v0[10];
    v28 = v0[7];

    v29 = v0[1];

    return v29(0);
  }

  else
  {
    v31 = v0[5];
    (*(*(v0[4] - 8) + 16))(v0[7], v0[2] + *(v0[8] + 32));
    swift_storeEnumTagMultiPayload();
    v32 = swift_task_alloc();
    v0[17] = v32;
    *v32 = v0;
    v32[1] = sub_2405BF18C;
    v33 = v0[2];
    v34 = v0[3];

    return sub_2405BFD7C(v33);
  }
}

uint64_t sub_2405BF18C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_2405BF97C;
  }

  else
  {
    v6 = sub_2405BF2B8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2405BF2B8()
{
  v1 = *(v0 + 24);
  if (**(v0 + 16) == *(v1 + *(*v1 + 136)))
  {
    v2 = (v1 + *(*v1 + 120));
    v3 = *v2;
    *(v0 + 152) = *v2;
    *(v0 + 160) = v2[1];
    if (v3)
    {
      sub_24057B5BC(v3);
      v34 = (v3 + *v3);
      v4 = v3[1];
      v5 = swift_task_alloc();
      *(v0 + 168) = v5;
      *v5 = v0;
      v5[1] = sub_2405BF668;
      v6 = *(v0 + 56);

      return v34(v6);
    }

    v21 = *(v0 + 104);
    v22 = sub_240759AC4();
    v23 = sub_24075A5D4();
    v24 = os_log_type_enabled(v22, v23);
    v26 = *(v0 + 48);
    v25 = *(v0 + 56);
    v27 = *(v0 + 40);
    if (v24)
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_240579000, v22, v23, "Ignoring value update response because we do not have an active update handler", v28, 2u);
      MEMORY[0x245CC76B0](v28, -1, -1);
    }

    (*(v26 + 8))(v25, v27);
  }

  else
  {
    v8 = *(v0 + 120);
    v9 = *(v0 + 104);
    v10 = *(v0 + 64);
    (*(v0 + 112))(*(v0 + 80));

    v11 = sub_240759AC4();
    v12 = sub_24075A5E4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 128);
    v16 = *(v0 + 72);
    v15 = *(v0 + 80);
    v17 = *(v0 + 64);
    v18 = *(v0 + 24);
    if (v13)
    {
      v19 = swift_slowAlloc();
      *v19 = 134218240;
      v20 = *v15;
      v14(v15, v17);
      *(v19 + 4) = v20;
      *(v19 + 12) = 2048;
      *(v19 + 14) = *(v18 + *(*v18 + 136));

      _os_log_impl(&dword_240579000, v11, v12, "Received update with sequence ID %llu but we're currently at %llu", v19, 0x16u);
      MEMORY[0x245CC76B0](v19, -1, -1);
    }

    else
    {
      v14(*(v0 + 80), *(v0 + 64));
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v30 = *(v0 + 88);
  v29 = *(v0 + 96);
  v31 = *(v0 + 80);
  v32 = *(v0 + 56);

  v33 = *(v0 + 8);

  return v33(0);
}

uint64_t sub_2405BF668(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_2405BF780, v3, 0);
}

uint64_t sub_2405BF780()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 104);
  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  v5 = os_log_type_enabled(v3, v4);
  if (v1 == 1)
  {
    if (v5)
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Clearing current update handler", v6, 2u);
      MEMORY[0x245CC76B0](v6, -1, -1);
    }

    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = *(v0 + 24);

    v13 = (v12 + *(*v12 + 120));
    v14 = *v13;
    v15 = v13[1];
    *v13 = 0;
    v13[1] = 0;
    sub_24058CA60(v14);
    sub_24058CA60(v8);
    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v17 = *(v0 + 152);
    v16 = *(v0 + 160);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 40);
    if (v5)
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_240579000, v3, v4, "Not clearing current update handler", v21, 2u);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    sub_24058CA60(v17);

    (*(v19 + 8))(v18, v20);
  }

  v23 = *(v0 + 88);
  v22 = *(v0 + 96);
  v24 = *(v0 + 80);
  v25 = *(v0 + 56);

  v26 = *(v0 + 8);

  return v26(v1);
}

uint64_t sub_2405BF97C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 56);
  (*(*(v0 + 48) + 8))(v2, *(v0 + 40));
  *v2 = v1;
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 24);
  if (**(v0 + 16) == *(v3 + *(*v3 + 136)))
  {
    v4 = (v3 + *(*v3 + 120));
    v5 = *v4;
    *(v0 + 152) = *v4;
    *(v0 + 160) = v4[1];
    if (v5)
    {
      sub_24057B5BC(v5);
      v36 = (v5 + *v5);
      v6 = v5[1];
      v7 = swift_task_alloc();
      *(v0 + 168) = v7;
      *v7 = v0;
      v7[1] = sub_2405BF668;
      v8 = *(v0 + 56);

      return v36(v8);
    }

    v23 = *(v0 + 104);
    v24 = sub_240759AC4();
    v25 = sub_24075A5D4();
    v26 = os_log_type_enabled(v24, v25);
    v28 = *(v0 + 48);
    v27 = *(v0 + 56);
    v29 = *(v0 + 40);
    if (v26)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_240579000, v24, v25, "Ignoring value update response because we do not have an active update handler", v30, 2u);
      MEMORY[0x245CC76B0](v30, -1, -1);
    }

    (*(v28 + 8))(v27, v29);
  }

  else
  {
    v10 = *(v0 + 120);
    v11 = *(v0 + 104);
    v12 = *(v0 + 64);
    (*(v0 + 112))(*(v0 + 80));

    v13 = sub_240759AC4();
    v14 = sub_24075A5E4();
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 128);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    v19 = *(v0 + 64);
    v20 = *(v0 + 24);
    if (v15)
    {
      v21 = swift_slowAlloc();
      *v21 = 134218240;
      v22 = *v17;
      v16(v17, v19);
      *(v21 + 4) = v22;
      *(v21 + 12) = 2048;
      *(v21 + 14) = *(v20 + *(*v20 + 136));

      _os_log_impl(&dword_240579000, v13, v14, "Received update with sequence ID %llu but we're currently at %llu", v21, 0x16u);
      MEMORY[0x245CC76B0](v21, -1, -1);
    }

    else
    {
      v16(*(v0 + 80), *(v0 + 64));
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v32 = *(v0 + 88);
  v31 = *(v0 + 96);
  v33 = *(v0 + 80);
  v34 = *(v0 + 56);

  v35 = *(v0 + 8);

  return v35(0);
}

uint64_t sub_2405BFD7C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *v1;
  v4 = sub_2407597B4();
  v2[19] = v4;
  v5 = *(v4 - 8);
  v2[20] = v5;
  v6 = *(v5 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = *(v3 + 80);
  v2[27] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v2[28] = type metadata accessor for _Coordinated.AsyncThrowingTapHandle();
  v2[29] = swift_getTupleTypeMetadata2();
  v7 = sub_24075A714();
  v2[30] = v7;
  v8 = *(v7 - 8);
  v2[31] = v8;
  v9 = *(v8 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405BFF58, v1, 0);
}

uint64_t sub_2405BFF58()
{
  v82 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_240759AE4();
  *(v0 + 272) = __swift_project_value_buffer(v2, qword_27E4B7420);

  v3 = sub_240759AC4();
  v4 = sub_24075A5D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 144);
    v7 = *(v0 + 152);
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = *(*v6 + 112);
    swift_beginAccess();
    v10 = *(v6 + v9);
    sub_2405D5548(&qword_27E4B7438);

    v11 = sub_240759F94();

    *(v8 + 4) = v11;

    _os_log_impl(&dword_240579000, v3, v4, "Expected to pre-process value update with %ld taps", v8, 0xCu);
    MEMORY[0x245CC76B0](v8, -1, -1);
  }

  else
  {
    v12 = *(v0 + 144);
  }

  v13 = *(v0 + 144);
  v14 = *(*v13 + 112);
  swift_beginAccess();
  v15 = *(v13 + v14);
  *(v0 + 280) = v15;
  v16 = *(v15 + 32);
  *(v0 + 352) = v16;
  v17 = -1;
  v18 = -1 << v16;
  if (-(-1 << v16) < 64)
  {
    v17 = ~(-1 << -v18);
  }

  v19 = v17 & *(v15 + 64);

  if (v19)
  {
    v20 = 0;
LABEL_13:
    v23 = *(v0 + 256);
    v24 = *(v0 + 232);
    v25 = *(v0 + 200);
    v26 = *(v0 + 152);
    v27 = *(v0 + 160);
    v28 = (v19 - 1) & v19;
    v29 = __clz(__rbit64(v19)) | (v20 << 6);
    (*(v27 + 16))(v25, *(v15 + 48) + *(v27 + 72) * v29, v26);
    v30 = *(*(v15 + 56) + 8 * v29);
    v31 = *(v24 + 48);
    (*(v27 + 32))(v23, v25, v26);
    *(v23 + v31) = v30;
    v32 = *(v24 - 8);
    (*(v32 + 56))(v23, 0, 1, v24);

    v22 = v20;
  }

  else
  {
    v21 = 0;
    v22 = ((63 - v18) >> 6) - 1;
    while (v22 != v21)
    {
      v20 = v21 + 1;
      v19 = *(v15 + 72 + 8 * v21++);
      if (v19)
      {
        goto LABEL_13;
      }
    }

    v32 = *(*(v0 + 232) - 8);
    (*(v32 + 56))(*(v0 + 256), 1, 1);
    v28 = 0;
  }

  *(v0 + 288) = v28;
  *(v0 + 296) = v22;
  v33 = *(v0 + 264);
  v34 = *(v0 + 232);
  (*(*(v0 + 248) + 32))(v33, *(v0 + 256), *(v0 + 240));
  v35 = (*(v32 + 48))(v33, 1, v34);
  v36 = *(v0 + 264);
  if (v35 == 1)
  {
    v37 = *(v0 + 280);
    v38 = *(v0 + 256);
    v40 = *(v0 + 192);
    v39 = *(v0 + 200);
    v42 = *(v0 + 176);
    v41 = *(v0 + 184);
    v43 = *(v0 + 168);

    v44 = *(v0 + 8);

    return v44();
  }

  else
  {
    v46 = *(v0 + 272);
    v48 = *(v0 + 184);
    v47 = *(v0 + 192);
    v49 = *(v0 + 152);
    v50 = *(v0 + 160);
    v51 = *(v36 + *(*(v0 + 232) + 48));
    *(v0 + 304) = v51;
    (*(v50 + 32))(v47, v36, v49);
    v52 = *(v50 + 16);
    *(v0 + 312) = v52;
    *(v0 + 320) = (v50 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v52(v48, v47, v49);

    v53 = sub_240759AC4();
    v54 = sub_24075A5D4();

    if (os_log_type_enabled(v53, v54))
    {
      v77 = *(v0 + 224);
      v79 = v54;
      v55 = *(v0 + 184);
      v57 = *(v0 + 152);
      v56 = *(v0 + 160);
      v58 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v81 = v78;
      *v58 = 136315394;
      sub_2405D5548(&qword_27E4B7458);
      v59 = sub_24075AC34();
      v61 = v60;
      v62 = *(v56 + 8);
      v62(v55, v57);
      v63 = sub_2405BBA7C(v59, v61, &v81);

      *(v58 + 4) = v63;
      *(v58 + 12) = 2080;
      *(v0 + 128) = v51;

      v64 = sub_24075A0E4();
      v66 = sub_2405BBA7C(v64, v65, &v81);

      *(v58 + 14) = v66;
      _os_log_impl(&dword_240579000, v53, v79, "Pre-processing value update with tap (id:%s): %s", v58, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v78, -1, -1);
      MEMORY[0x245CC76B0](v58, -1, -1);
    }

    else
    {
      v67 = *(v0 + 184);
      v68 = *(v0 + 152);
      v69 = *(v0 + 160);

      v62 = *(v69 + 8);
      v62(v67, v68);
    }

    *(v0 + 328) = v62;
    v70 = *(v0 + 208);
    v71 = *(v0 + 136);
    v73 = *(v51 + 32);
    v72 = *(v51 + 40);
    *(v0 + 40) = *(v0 + 224);
    *(v0 + 48) = &off_285269CF0;
    *(v0 + 16) = v51;
    v74 = *(type metadata accessor for _Coordinated.ValueUpdate.Response() + 32);

    v80 = (v73 + *v73);
    v75 = v73[1];
    v76 = swift_task_alloc();
    *(v0 + 336) = v76;
    *v76 = v0;
    v76[1] = sub_2405C06B0;

    return v80(v0 + 16, v71 + v74);
  }
}

uint64_t sub_2405C06B0()
{
  v2 = *v1;
  v3 = *(*v1 + 336);
  v8 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v4 = *(v2 + 144);
    v5 = sub_2405C0DB8;
  }

  else
  {
    v6 = *(v2 + 144);
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v5 = sub_2405C07D8;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2405C07D8()
{
  v72 = v0;
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 192);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  result = v1(v3, v4);
  v7 = *(v0 + 288);
  v8 = *(v0 + 296);
  if (v7)
  {
    v9 = *(v0 + 280);
LABEL_11:
    v14 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = *(v0 + 200);
    v17 = *(v0 + 152);
    v18 = *(v0 + 160);
    v19 = (v7 - 1) & v7;
    v20 = __clz(__rbit64(v7)) | (v8 << 6);
    (*(v18 + 16))(v16, *(v9 + 48) + *(v18 + 72) * v20, v17);
    v21 = *(*(v9 + 56) + 8 * v20);
    v22 = *(v15 + 48);
    (*(v18 + 32))(v14, v16, v17);
    *(v14 + v22) = v21;
    v23 = *(v15 - 8);
    (*(v23 + 56))(v14, 0, 1, v15);

    v12 = v8;
LABEL_12:
    *(v0 + 288) = v19;
    *(v0 + 296) = v12;
    v24 = *(v0 + 264);
    v25 = *(v0 + 232);
    (*(*(v0 + 248) + 32))(v24, *(v0 + 256), *(v0 + 240));
    v26 = (*(v23 + 48))(v24, 1, v25);
    v27 = *(v0 + 264);
    if (v26 == 1)
    {
      v28 = *(v0 + 280);
      v29 = *(v0 + 256);
      v31 = *(v0 + 192);
      v30 = *(v0 + 200);
      v33 = *(v0 + 176);
      v32 = *(v0 + 184);
      v34 = *(v0 + 168);

      v35 = *(v0 + 8);

      return v35();
    }

    else
    {
      v36 = *(v0 + 272);
      v38 = *(v0 + 184);
      v37 = *(v0 + 192);
      v39 = *(v0 + 152);
      v40 = *(v0 + 160);
      v41 = *(v27 + *(*(v0 + 232) + 48));
      *(v0 + 304) = v41;
      (*(v40 + 32))(v37, v27, v39);
      v42 = *(v40 + 16);
      *(v0 + 312) = v42;
      *(v0 + 320) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v42(v38, v37, v39);

      v43 = sub_240759AC4();
      v44 = sub_24075A5D4();

      if (os_log_type_enabled(v43, v44))
      {
        v67 = *(v0 + 224);
        v69 = v44;
        v45 = *(v0 + 184);
        v47 = *(v0 + 152);
        v46 = *(v0 + 160);
        v48 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v71 = v68;
        *v48 = 136315394;
        sub_2405D5548(&qword_27E4B7458);
        v49 = sub_24075AC34();
        v51 = v50;
        v52 = *(v46 + 8);
        v52(v45, v47);
        v53 = sub_2405BBA7C(v49, v51, &v71);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        *(v0 + 128) = v41;

        v54 = sub_24075A0E4();
        v56 = sub_2405BBA7C(v54, v55, &v71);

        *(v48 + 14) = v56;
        _os_log_impl(&dword_240579000, v43, v69, "Pre-processing value update with tap (id:%s): %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC76B0](v68, -1, -1);
        MEMORY[0x245CC76B0](v48, -1, -1);
      }

      else
      {
        v57 = *(v0 + 184);
        v58 = *(v0 + 152);
        v59 = *(v0 + 160);

        v52 = *(v59 + 8);
        v52(v57, v58);
      }

      *(v0 + 328) = v52;
      v60 = *(v0 + 208);
      v61 = *(v0 + 136);
      v63 = *(v41 + 32);
      v62 = *(v41 + 40);
      *(v0 + 40) = *(v0 + 224);
      *(v0 + 48) = &off_285269CF0;
      *(v0 + 16) = v41;
      v64 = *(type metadata accessor for _Coordinated.ValueUpdate.Response() + 32);

      v70 = (v63 + *v63);
      v65 = v63[1];
      v66 = swift_task_alloc();
      *(v0 + 336) = v66;
      *v66 = v0;
      v66[1] = sub_2405C06B0;

      return v70(v0 + 16, v61 + v64);
    }
  }

  else
  {
    v10 = ((1 << *(v0 + 352)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 352)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v23 = *(*(v0 + 232) - 8);
        (*(v23 + 56))(*(v0 + 256), 1, 1);
        v19 = 0;
        goto LABEL_12;
      }

      v9 = *(v0 + 280);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2405C0DB8()
{
  v142 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 208);
  v3 = *(v0 + 216);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 104) = v1;
  v4 = v1;
  type metadata accessor for _Coordinated.HaltingTapError();
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 312);
    v5 = *(v0 + 320);
    v7 = *(v0 + 272);
    v8 = *(v0 + 192);
    v9 = *(v0 + 176);
    v10 = *(v0 + 152);

    v11 = *(v0 + 112);
    v6(v9, v8, v10);
    v12 = v11;
    v13 = sub_240759AC4();
    v14 = sub_24075A5C4();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 328);
    v17 = *(v0 + 176);
    v19 = *(v0 + 152);
    v18 = *(v0 + 160);
    if (v15)
    {
      v20 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v141[0] = v138;
      *v20 = 136315394;
      sub_2405D5548(&qword_27E4B7458);
      v21 = sub_24075AC34();
      v130 = v14;
      v22 = v11;
      v24 = v23;
      v16(v17, v19);
      v25 = sub_2405BBA7C(v21, v24, v141);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      swift_getWitnessTable();
      swift_allocError();
      *v26 = v22;
      v27 = v22;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      *v134 = v28;
      _os_log_impl(&dword_240579000, v13, v130, "Halting coordination for tap (id:%s): %@", v20, 0x16u);
      sub_2405B8A50(v134, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v134, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v138);
      MEMORY[0x245CC76B0](v138, -1, -1);
      MEMORY[0x245CC76B0](v20, -1, -1);

      if (!v22)
      {
        goto LABEL_9;
      }
    }

    else
    {

      v16(v17, v19);
      if (!v11)
      {
LABEL_9:
        swift_getWitnessTable();
        swift_allocError();
        *v56 = 0;
      }
    }

    v57 = *(v0 + 328);
    v58 = *(v0 + 304);
    v59 = *(v0 + 280);
    v60 = *(v0 + 264);
    v127 = *(v0 + 256);
    v128 = *(v0 + 200);
    v61 = *(v0 + 192);
    v62 = *(v0 + 152);
    v63 = *(v0 + 160) + 8;
    v132 = *(v0 + 176);
    v136 = *(v0 + 184);
    v139 = *(v0 + 168);
    swift_willThrow();

    v57(v61, v62);

    v64 = *(v0 + 8);
LABEL_23:

    return v64();
  }

  v30 = *(v0 + 312);
  v29 = *(v0 + 320);
  v31 = *(v0 + 304);
  v32 = *(v0 + 272);
  v33 = *(v0 + 192);
  v34 = *(v0 + 168);
  v35 = *(v0 + 152);

  v30(v34, v33, v35);

  v36 = sub_240759AC4();
  v37 = sub_24075A5E4();

  v38 = os_log_type_enabled(v36, v37);
  v39 = *(v0 + 328);
  v40 = *(v0 + 304);
  if (!v38)
  {
    v65 = *(v0 + 192);
    v66 = *(v0 + 168);
    v67 = *(v0 + 152);
    v68 = *(v0 + 160) + 8;

    v39(v66, v67);
    result = (v39)(v65, v67);
    v53 = *(v0 + 288);
    v54 = *(v0 + 296);
    if (v53)
    {
      goto LABEL_7;
    }

LABEL_12:
    v69 = ((1 << *(v0 + 352)) + 63) >> 6;
    if (v69 <= (v54 + 1))
    {
      v70 = v54 + 1;
    }

    else
    {
      v70 = ((1 << *(v0 + 352)) + 63) >> 6;
    }

    v71 = v70 - 1;
    while (1)
    {
      v72 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v72 >= v69)
      {
        v82 = *(*(v0 + 232) - 8);
        (*(v82 + 56))(*(v0 + 256), 1, 1);
        v78 = 0;
        goto LABEL_21;
      }

      v55 = *(v0 + 280);
      v53 = *(v55 + 8 * v72 + 64);
      ++v54;
      if (v53)
      {
        v54 = v72;
        goto LABEL_20;
      }
    }

    __break(1u);
    return result;
  }

  v131 = *(v0 + 344);
  v135 = *(v0 + 192);
  v41 = *(v0 + 168);
  v42 = *(v0 + 152);
  v124 = *(v0 + 160) + 8;
  v125 = *(v0 + 224);
  v43 = swift_slowAlloc();
  v126 = swift_slowAlloc();
  v141[0] = v126;
  *v43 = 136315394;
  sub_2405D5548(&qword_27E4B7458);
  v44 = sub_24075AC34();
  v45 = v40;
  v47 = v46;
  v39(v41, v42);
  v48 = sub_2405BBA7C(v44, v47, v141);

  *(v43 + 4) = v48;
  *(v43 + 12) = 2080;
  *(v0 + 120) = v45;

  v49 = sub_24075A0E4();
  v51 = sub_2405BBA7C(v49, v50, v141);

  *(v43 + 14) = v51;
  _os_log_impl(&dword_240579000, v36, v37, "Ignoring non-halting error in tap (id:%s): %s", v43, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x245CC76B0](v126, -1, -1);
  MEMORY[0x245CC76B0](v43, -1, -1);

  result = (v39)(v135, v42);
  v53 = *(v0 + 288);
  v54 = *(v0 + 296);
  if (!v53)
  {
    goto LABEL_12;
  }

LABEL_7:
  v55 = *(v0 + 280);
LABEL_20:
  v73 = *(v0 + 256);
  v74 = *(v0 + 232);
  v75 = *(v0 + 200);
  v76 = *(v0 + 152);
  v77 = *(v0 + 160);
  v78 = (v53 - 1) & v53;
  v79 = __clz(__rbit64(v53)) | (v54 << 6);
  (*(v77 + 16))(v75, *(v55 + 48) + *(v77 + 72) * v79, v76);
  v80 = *(*(v55 + 56) + 8 * v79);
  v81 = *(v74 + 48);
  (*(v77 + 32))(v73, v75, v76);
  *(v73 + v81) = v80;
  v82 = *(v74 - 8);
  (*(v82 + 56))(v73, 0, 1, v74);

  v71 = v54;
LABEL_21:
  *(v0 + 288) = v78;
  *(v0 + 296) = v71;
  v83 = *(v0 + 264);
  v84 = *(v0 + 232);
  (*(*(v0 + 248) + 32))(v83, *(v0 + 256), *(v0 + 240));
  if ((*(v82 + 48))(v83, 1, v84) == 1)
  {
    v85 = *(v0 + 280);
    v86 = *(v0 + 256);
    v87 = *(v0 + 264);
    v89 = *(v0 + 192);
    v88 = *(v0 + 200);
    v91 = *(v0 + 176);
    v90 = *(v0 + 184);
    v92 = *(v0 + 168);

    v64 = *(v0 + 8);
    goto LABEL_23;
  }

  v93 = *(v0 + 272);
  v95 = *(v0 + 184);
  v94 = *(v0 + 192);
  v97 = *(v0 + 152);
  v96 = *(v0 + 160);
  v98 = *(*(v0 + 264) + *(*(v0 + 232) + 48));
  *(v0 + 304) = v98;
  (*(v96 + 32))(v94);
  v99 = *(v96 + 16);
  *(v0 + 312) = v99;
  *(v0 + 320) = (v96 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v99(v95, v94, v97);

  v100 = sub_240759AC4();
  v101 = sub_24075A5D4();

  if (os_log_type_enabled(v100, v101))
  {
    v129 = *(v0 + 224);
    v137 = v101;
    v102 = *(v0 + 184);
    v104 = *(v0 + 152);
    v103 = *(v0 + 160);
    v105 = swift_slowAlloc();
    v133 = swift_slowAlloc();
    v141[0] = v133;
    *v105 = 136315394;
    sub_2405D5548(&qword_27E4B7458);
    v106 = sub_24075AC34();
    v108 = v107;
    v109 = *(v103 + 8);
    v109(v102, v104);
    v110 = sub_2405BBA7C(v106, v108, v141);

    *(v105 + 4) = v110;
    *(v105 + 12) = 2080;
    *(v0 + 128) = v98;

    v111 = sub_24075A0E4();
    v113 = sub_2405BBA7C(v111, v112, v141);

    *(v105 + 14) = v113;
    _os_log_impl(&dword_240579000, v100, v137, "Pre-processing value update with tap (id:%s): %s", v105, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC76B0](v133, -1, -1);
    MEMORY[0x245CC76B0](v105, -1, -1);
  }

  else
  {
    v114 = *(v0 + 184);
    v115 = *(v0 + 152);
    v116 = *(v0 + 160);

    v109 = *(v116 + 8);
    v109(v114, v115);
  }

  *(v0 + 328) = v109;
  v117 = *(v0 + 208);
  v118 = *(v0 + 136);
  v119 = *(v98 + 32);
  v120 = *(v98 + 40);
  *(v0 + 40) = *(v0 + 224);
  *(v0 + 48) = &off_285269CF0;
  *(v0 + 16) = v98;
  v121 = *(type metadata accessor for _Coordinated.ValueUpdate.Response() + 32);

  v140 = (v119 + *v119);
  v122 = v119[1];
  v123 = swift_task_alloc();
  *(v0 + 336) = v123;
  *v123 = v0;
  v123[1] = sub_2405C06B0;

  return v140(v0 + 16, v118 + v121);
}

uint64_t _Coordinated.__allocating_init(coordinating:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  _Coordinated.init(coordinating:receiver:)(a1, a2, a3);
  return v9;
}

uint64_t *_Coordinated.init(coordinating:receiver:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  v8 = *(*v3 + 112);
  v9 = sub_2407597B4();
  v10 = *(v7 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v11 = type metadata accessor for _Coordinated.AsyncThrowingTapHandle();
  swift_getTupleTypeMetadata2();
  v12 = sub_24075A2E4();
  v13 = sub_2405D5548(&qword_27E4B7438);
  v14 = sub_2405D487C(v12, v9, v11, v13);

  *(v3 + v8) = v14;
  v15 = (v3 + *(*v3 + 120));
  *v15 = 0;
  v15[1] = 0;
  *(v3 + *(*v3 + 128)) = 0;
  *(v3 + *(*v3 + 136)) = 0;
  (*(*(v10 - 8) + 32))(v3 + *(*v3 + 96), a1, v10);
  v16 = (v3 + *(*v3 + 104));
  *v16 = a2;
  v16[1] = a3;
  return v3;
}

uint64_t sub_2405C1B48(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 16) = a1;
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_2405C1C40;

  return v8(a2);
}

uint64_t sub_2405C1C40(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2405C1D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v7 = sub_24075AEE4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C1E3C, 0, 0);
}

uint64_t sub_2405C1E3C()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  type metadata accessor for _Coordinated.CommonError();
  swift_getWitnessTable();
  v5 = swift_allocError();
  *v6 = xmmword_240762430;
  *v1 = v5;
  swift_storeEnumTagMultiPayload();
  v12 = (v4 + *v4);
  v7 = v4[1];
  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_2405C1FA0;
  v9 = v0[7];
  v10 = v0[3];

  return v12(v9);
}

uint64_t sub_2405C1FA0()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 40);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2405C20F8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_2405C2140, v1, 0);
}

uint64_t sub_2405C2140()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2405C2210;
  v5 = v0[3];

  return sub_2405C23B0(sub_2405D50A4, v3);
}

uint64_t sub_2405C2210()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_2405C234C, v4, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2405C234C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t sub_2405C23B0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*v2 + 80);
  v3[8] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = type metadata accessor for _Coordinated.ValueUpdate();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C24B8, v2, 0);
}

uint64_t sub_2405C24B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v3(v1 + v4);
  swift_endAccess();
  sub_2405C6240();
  v5 = v0[12];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[8];
  v9 = sub_2405BEBE8();
  sub_2405BE94C(v6);
  sub_2405C2878(v9, 0, v6, v8, v5);
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_2405C263C;
  v11 = v0[12];
  v12 = v0[7];

  return sub_2405C5970(v11, 0);
}

uint64_t sub_2405C263C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2405C27F0;
  }

  else
  {
    v6 = sub_2405C2768;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2405C2768()
{
  v1 = v0[9];
  (*(v0[11] + 8))(v0[12], v0[10]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2405C27F0()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2405C2878@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  v8 = type metadata accessor for _Coordinated.ValueUpdate();
  v9 = *(a4 - 8);
  (*(v9 + 16))(a5 + *(v8 + 32), a3, a4);
  v10 = *(v8 + 36);
  v11 = sub_2405C8984();
  result = (*(v9 + 8))(a3, a4);
  *(a5 + v10) = v11;
  return result;
}

uint64_t sub_2405C2944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  return MEMORY[0x2822009F8](sub_2405C2994, v5, 0);
}

uint64_t sub_2405C2994()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[9] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v2;
  v4[4] = v3;
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_2405C2A78;
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];

  return sub_2405C2C18(v10, sub_2405D5174, v4, v8, v9, v6);
}

uint64_t sub_2405C2A78()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[7];

    return MEMORY[0x2822009F8](sub_2405C2BB4, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2405C2BB4()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_2405C2C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[10] = a6;
  v7[11] = v6;
  v7[8] = a4;
  v7[9] = a5;
  v7[6] = a2;
  v7[7] = a3;
  v7[5] = a1;
  v8 = *(*v6 + 80);
  v7[12] = v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[13] = TupleTypeMetadata2;
  v10 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v11 = *(v8 - 8);
  v7[15] = v11;
  v12 = *(v11 + 64) + 15;
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v13 = type metadata accessor for _Coordinated.ValueUpdate();
  v7[18] = v13;
  v14 = *(v13 - 8);
  v7[19] = v14;
  v15 = *(v14 + 64) + 15;
  v7[20] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710) - 8) + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C2DE0, v6, 0);
}

uint64_t sub_2405C2DE0()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v3(v1 + v4);
  swift_endAccess();
  sub_2405C6240();
  v0[22] = 0;
  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[17];
  v8 = v0[12];
  v9 = v0[11];
  v23 = v0[10];
  v24 = v0[13];
  v10 = v0[9];
  v22 = v0[8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7440, &qword_240762718);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v0[23] = v14;
  swift_defaultActor_initialize();
  v15 = *(*v14 + 104);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  (*(*(v16 - 8) + 56))(&v14[v15], 1, 1, v16);
  v14[112] = 0;
  v17 = sub_24075A3D4();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  type metadata accessor for _Coordinated();
  WitnessTable = swift_getWitnessTable();
  v19 = swift_allocObject();
  v19[2] = v9;
  v19[3] = WitnessTable;
  v19[4] = v23;
  v19[5] = v9;
  v19[6] = v22;
  v19[7] = v10;
  v19[8] = v14;
  swift_retain_n();

  v0[24] = sub_2405C56EC(0, 0, v6, &unk_240762730, v19);
  v20 = sub_2405BEBE8();
  sub_2405BE94C(v7);
  sub_2405C2878(v20, 1, v7, v8, v5);

  return MEMORY[0x2822009F8](sub_2405C30E8, v14, 0);
}

uint64_t sub_2405C30E8()
{
  v2 = v0[22];
  v1 = v0[23];
  sub_2405D4184();
  if (v2)
  {
    v0[29] = v2;
    v3 = v0[11];

    return MEMORY[0x2822009F8](sub_2405C35BC, v3, 0);
  }

  else
  {
    v4 = v0[23];
    sub_240590128(&qword_27E4B7450, &qword_27E4B7440, &qword_240762718);
    v5 = *(MEMORY[0x277D85A40] + 4);
    v6 = swift_task_alloc();
    v0[25] = v6;
    *v6 = v0;
    v6[1] = sub_2405C3248;
    v7 = v0[23];

    return MEMORY[0x2822008A0]();
  }
}

uint64_t sub_2405C3248()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v7 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v4 = *(v2 + 184);
    v5 = sub_2405C3598;
  }

  else
  {
    v4 = *(v2 + 88);
    v5 = sub_2405C3360;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_2405C3360()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_2405C3400;
  v3 = v0[20];
  v4 = v0[11];

  return sub_2405C5970(v3, v1);
}

uint64_t sub_2405C3400()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  v3[28] = v0;

  if (v0)
  {
    v4 = v3[11];

    return MEMORY[0x2822009F8](sub_2405C3950, v4, 0);
  }

  else
  {
    v5 = *(MEMORY[0x277D857C8] + 4);
    v6 = swift_task_alloc();
    v3[30] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BD0, &qword_24076BB70);
    *v6 = v3;
    v6[1] = sub_2405C3688;
    v8 = v3[24];
    v10 = v3[13];
    v9 = v3[14];
    v11 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v9, v8, v10, v7, v11);
  }
}

uint64_t sub_2405C35BC()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  (*(v4 + 8))(v3, v5);
  v6 = v0[29];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2405C3688()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v4 = *v1;
  *(*v1 + 248) = v0;

  v5 = *(v2 + 88);
  if (v0)
  {
    v6 = sub_2405C3A1C;
  }

  else
  {
    v6 = sub_2405C37B4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2405C37B4()
{
  v13 = v0[24];
  v14 = v0[23];
  v16 = v0[20];
  v17 = v0[21];
  v1 = v0[19];
  v15 = v0[18];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[12];
  v7 = v0[10];
  v12 = v0[11];
  v8 = v0[5];
  v9 = *(v0[13] + 48);
  (*(v5 + 32))(v3, v4, v6);
  (*(*(v7 - 8) + 32))(v8, v4 + v9, v7);
  (*(v5 + 16))(v2, v3, v6);
  sub_2405BE9EC(v2);

  (*(v5 + 8))(v3, v6);
  (*(v1 + 8))(v16, v15);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2405C3950()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  (*(v4 + 8))(v3, v5);
  v6 = v0[28];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2405C3A1C()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];

  (*(v4 + 8))(v3, v5);
  v6 = v0[31];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];
  v11 = v0[14];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2405C3AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  v8[8] = *a4;
  return MEMORY[0x2822009F8](sub_2405C3B38, a4, 0);
}

uint64_t sub_2405C3B38()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 64) + 80);
  type metadata accessor for _Coordinated();
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v11 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v11;
  *(v4 + 40) = v5;
  v6 = *(MEMORY[0x277D85A40] + 4);
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v7 = v0;
  v7[1] = sub_2405C3C9C;
  v9 = *(v0 + 16);

  return MEMORY[0x2822008A0](v9, v11, WitnessTable, 0xD000000000000024, 0x8000000240786540, sub_2405DA18C, v4, TupleTypeMetadata2);
}

uint64_t sub_2405C3C9C()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[3];

    return MEMORY[0x2822009F8](sub_2405DA4F0, v4, 0);
  }

  else
  {
    v5 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_2405C3DD8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v26 - v14;
  v16 = *(v11 + 80);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v17 = sub_24075A374();
  v18 = sub_24071B2EC(v17);
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = a6;
  v19[4] = v18;
  v19[5] = a3;
  v19[6] = a4;
  v20 = (a2 + *(*a2 + 120));
  v21 = *v20;
  v22 = v20[1];
  *v20 = &unk_240763448;
  v20[1] = v19;
  swift_retain_n();

  sub_24058CA60(v21);

  v23 = sub_24075A3D4();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = a5;

  sub_240603208(0, 0, v15, &unk_240763458, v24);
}

uint64_t sub_2405C3FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6[10] = TupleTypeMetadata2;
  v10 = *(*(TupleTypeMetadata2 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(a6 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v6[16] = sub_24075A374();
  v13 = sub_24075A714();
  v6[17] = v13;
  v14 = *(v13 - 8);
  v6[18] = v14;
  v15 = *(v14 + 64) + 15;
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v16 = *(*(type metadata accessor for CoordinatedDecision() - 8) + 64) + 15;
  v6[22] = swift_task_alloc();
  v17 = sub_24075AEE4();
  v6[23] = v17;
  v18 = *(v17 - 8);
  v6[24] = v18;
  v19 = *(v18 + 64) + 15;
  v6[25] = swift_task_alloc();
  v20 = *(a5 - 8);
  v6[26] = v20;
  v21 = *(v20 + 64) + 15;
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C42F8, 0, 0);
}

uint64_t sub_2405C42F8()
{
  (*(v0[24] + 16))(v0[25], v0[4], v0[23]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = *v0[25];
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B7420);
    v3 = v1;
    v4 = sub_240759AC4();
    v5 = sub_24075A5E4();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      v8 = v1;
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v9;
      *v7 = v9;
      _os_log_impl(&dword_240579000, v4, v5, "Failed to coordinate with error: %@", v6, 0xCu);
      sub_2405B8A50(v7, &qword_27E4B92A0, &qword_240762400);
      MEMORY[0x245CC76B0](v7, -1, -1);
      MEMORY[0x245CC76B0](v6, -1, -1);
    }

    v10 = v0[21];
    v11 = v0[16];
    v12 = v0[5];

    sub_24071B444();
    v13 = *(v11 - 8);
    v14 = (*(v13 + 48))(v10, 1, v11);
    v15 = v0[21];
    if (v14 == 1)
    {
      v16 = v0[17];
      v13 = v0[18];
    }

    else
    {
      v16 = v0[16];
      v0[2] = v1;
      v24 = v1;
      sub_24075A354();
    }

    (*(v13 + 8))(v15, v16);
    v26 = v0[30];
    v25 = v0[31];
    v28 = v0[28];
    v27 = v0[29];
    v29 = v0[27];
    v30 = v0[25];
    v32 = v0[21];
    v31 = v0[22];
    v34 = v0[19];
    v33 = v0[20];
    v36 = v0[15];
    v37 = v0[14];
    v38 = v0[13];
    v40 = v0[11];

    v35 = v0[1];

    return v35(1);
  }

  else
  {
    v17 = v0[6];
    (*(v0[26] + 32))(v0[31], v0[25], v0[8]);
    v39 = (v17 + *v17);
    v18 = v17[1];
    v19 = swift_task_alloc();
    v0[32] = v19;
    *v19 = v0;
    v19[1] = sub_2405C471C;
    v20 = v0[31];
    v21 = v0[22];
    v22 = v0[7];

    return v39(v21, v20);
  }
}

uint64_t sub_2405C471C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_2405C4FE8;
  }

  else
  {
    v3 = sub_2405C4830;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2405C4830()
{
  v119 = v0;
  v1 = v0[22];
  v2 = v0[12];
  v3 = v0[9];
  v4 = (*(v2 + 48))(v1, 1, v3);
  v5 = v4;
  if (v4 == 1)
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v37 = v0[31];
    v38 = v0[28];
    v39 = v0[26];
    v40 = v0[8];
    v41 = sub_240759AE4();
    __swift_project_value_buffer(v41, qword_27E4B7420);
    v42 = *(v39 + 16);
    v42(v38, v37, v40);
    v43 = sub_240759AC4();
    v44 = sub_24075A5D4();
    v45 = os_log_type_enabled(v43, v44);
    v46 = v0[31];
    if (v45)
    {
      v48 = v0[28];
      v47 = v0[29];
      v108 = v0[26];
      v49 = v0[8];
      v50 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v114 = v46;
      v118 = v112;
      *v50 = 136315138;
      v51 = v48;
      v52 = v48;
      v53 = v49;
      v42(v47, v51, v49);
      v54 = sub_24075A0E4();
      v56 = v55;
      v57 = *(v108 + 8);
      v57(v52, v53);
      v58 = sub_2405BBA7C(v54, v56, &v118);

      *(v50 + 4) = v58;
      _os_log_impl(&dword_240579000, v43, v44, "Continuing to wait for coordination to complete: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v112);
      MEMORY[0x245CC76B0](v112, -1, -1);
      v59 = v50;
      v5 = 1;
      MEMORY[0x245CC76B0](v59, -1, -1);

      v57(v114, v53);
    }

    else
    {
      v77 = v0[28];
      v78 = v0[26];
      v79 = v0[8];

      v80 = *(v78 + 8);
      v80(v77, v79);
      v80(v46, v79);
    }
  }

  else
  {
    v116 = v4;
    (*(v2 + 32))(v0[15], v1, v3);
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v7 = v0[30];
    v6 = v0[31];
    v8 = v0[26];
    v9 = v0[14];
    v106 = v0[15];
    v10 = v0[12];
    v12 = v0[8];
    v11 = v0[9];
    v13 = sub_240759AE4();
    __swift_project_value_buffer(v13, qword_27E4B7420);
    v14 = *(v8 + 16);
    v14(v7, v6, v12);
    v111 = *(v10 + 16);
    v111(v9, v106, v11);
    v15 = sub_240759AC4();
    v16 = sub_24075A5D4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[30];
    v104 = v14;
    if (v17)
    {
      v107 = v16;
      v19 = v0[29];
      v20 = v0[26];
      v98 = v0[13];
      v99 = v0[14];
      v21 = v0[12];
      v22 = v0[8];
      v23 = v0[9];
      log = v15;
      v24 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v118 = v102;
      *v24 = 136315394;
      v14(v19, v18, v22);
      v25 = sub_24075A0E4();
      v27 = v26;
      v28 = v22;
      v29 = *(v20 + 8);
      v29(v18, v28);
      v30 = sub_2405BBA7C(v25, v27, &v118);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v111(v98, v99, v23);
      v31 = sub_24075A0E4();
      v33 = v32;
      v34 = v23;
      v35 = *(v21 + 8);
      v35(v99, v34);
      v36 = sub_2405BBA7C(v31, v33, &v118);

      *(v24 + 14) = v36;
      _os_log_impl(&dword_240579000, log, v107, "Accepting / completing coordination for inValue (%s) with outValue: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v102, -1, -1);
      MEMORY[0x245CC76B0](v24, -1, -1);
    }

    else
    {
      v60 = v0[26];
      v61 = v0[14];
      v62 = v0[12];
      v64 = v0[8];
      v63 = v0[9];

      v35 = *(v62 + 8);
      v35(v61, v63);
      v29 = *(v60 + 8);
      v29(v18, v64);
    }

    v65 = v0[20];
    v66 = v0[16];
    v67 = v0[5];

    sub_24071B444();
    v68 = *(v66 - 8);
    v69 = (*(v68 + 48))(v65, 1, v66);
    v70 = v0[31];
    v71 = v0[26];
    v72 = v0[20];
    if (v69 == 1)
    {
      v73 = v0[17];
      v74 = v0[18];
      v75 = v0[8];
      v76 = v0[12] + 8;
      v35(v0[15], v0[9]);
      v29(v70, v75);
      (*(v74 + 8))(v72, v73);
    }

    else
    {
      v81 = v0[15];
      v82 = v0[11];
      v100 = v0[16];
      v109 = v29;
      v83 = v0[9];
      v103 = v35;
      v84 = v0[8];
      v85 = *(v0[10] + 48);
      v104(v82, v70, v84);
      v111(v82 + v85, v81, v83);
      sub_24075A364();
      v103(v81, v83);
      v109(v70, v84);
      (*(v68 + 8))(v72, v100);
    }

    v5 = v116;
  }

  v87 = v0[30];
  v86 = v0[31];
  v117 = v5 != 1;
  v89 = v0[28];
  v88 = v0[29];
  v90 = v0[27];
  v91 = v0[25];
  v93 = v0[21];
  v92 = v0[22];
  v94 = v0[19];
  v95 = v0[20];
  v105 = v0[15];
  v110 = v0[14];
  v113 = v0[13];
  v115 = v0[11];

  v96 = v0[1];

  return v96(v117);
}

uint64_t sub_2405C4FE8()
{
  v58 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[31];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[8];
  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B7420);
  v7 = *(v4 + 16);
  v7(v3, v2, v5);
  v8 = v1;
  v9 = sub_240759AC4();
  v10 = sub_24075A5E4();

  if (os_log_type_enabled(v9, v10))
  {
    v53 = v0[33];
    v11 = v0[29];
    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[8];
    v15 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v57 = v55;
    *v15 = 136315394;
    v7(v11, v12, v14);
    v16 = sub_24075A0E4();
    v18 = v17;
    v19 = *(v13 + 8);
    v19(v12, v14);
    v20 = sub_2405BBA7C(v16, v18, &v57);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2112;
    v21 = v53;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v22;
    *v51 = v22;
    _os_log_impl(&dword_240579000, v9, v10, "Failed to handle incoming value (%s) with error: %@", v15, 0x16u);
    sub_2405B8A50(v51, &qword_27E4B92A0, &qword_240762400);
    MEMORY[0x245CC76B0](v51, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x245CC76B0](v55, -1, -1);
    MEMORY[0x245CC76B0](v15, -1, -1);
  }

  else
  {
    v24 = v0[26];
    v23 = v0[27];
    v25 = v0[8];

    v19 = *(v24 + 8);
    v19(v23, v25);
  }

  v26 = v0[19];
  v27 = v0[16];
  v28 = v0[5];

  sub_24071B444();
  v29 = *(v27 - 8);
  v30 = (*(v29 + 48))(v26, 1, v27);
  v31 = v0[33];
  v32 = v0[31];
  v33 = v0[26];
  v34 = v0[19];
  if (v30 == 1)
  {
    v35 = v0[17];
    v29 = v0[18];
    v19(v0[31], v0[8]);
  }

  else
  {
    v35 = v0[16];
    v36 = v0[8];
    v0[3] = v31;
    v37 = v31;
    sub_24075A354();

    v19(v32, v36);
  }

  (*(v29 + 8))(v34, v35);
  v39 = v0[30];
  v38 = v0[31];
  v41 = v0[28];
  v40 = v0[29];
  v42 = v0[27];
  v43 = v0[25];
  v45 = v0[21];
  v44 = v0[22];
  v47 = v0[19];
  v46 = v0[20];
  v50 = v0[15];
  v52 = v0[14];
  v54 = v0[13];
  v56 = v0[11];

  v48 = v0[1];

  return v48(1);
}

uint64_t sub_2405C5420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428) - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v4[12] = v7;
  v8 = *(v7 - 8);
  v4[13] = v8;
  v9 = *(v8 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C5534, a4, 0);
}

uint64_t sub_2405C5534()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = *(v0 + 72);
  v5 = *(*v4 + 104);
  swift_beginAccess();
  sub_2405B044C(v4 + v5, v3, &qword_27E4B7A88, &qword_240763428);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2405B8A50(*(v0 + 88), &qword_27E4B7A88, &qword_240763428);
    v6 = 1;
  }

  else
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v9 = *(v0 + 96);
    v10 = *(v0 + 80);
    (*(v8 + 32))(v7, *(v0 + 88), v9);
    (*(v8 + 56))(v10, 1, 1, v9);
    swift_beginAccess();
    sub_2405DA11C(v10, v4 + v5);
    swift_endAccess();
    sub_24075A364();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  v11 = *(v0 + 112);
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);
  **(v0 + 64) = v6;

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_2405C56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_2405B044C(a3, &v26[-1] - v11, &unk_27E4B9BF0, &qword_240762710);
  v13 = sub_24075A3D4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_2405B8A50(v12, &unk_27E4B9BF0, &qword_240762710);
  }

  else
  {
    sub_24075A3C4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_24075A344();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_24075A104();
      v22 = *(v21 + 16);
      sub_2405D46B4(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);

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

  sub_2405B8A50(a3, &unk_27E4B9BF0, &qword_240762710);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_2405C5970(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(*v2 + 80);
  v4 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C5A4C, v2, 0);
}

uint64_t sub_2405C5A4C()
{
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v1 = sub_240759AE4();
  v0[9] = __swift_project_value_buffer(v1, qword_27E4B7420);
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Running taps with echo response for update", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v0[8];
  v6 = v0[5];
  v7 = v0[2];

  v8 = type metadata accessor for _Coordinated.ValueUpdate();
  _Coordinated.ValueUpdate.response(withUpdatedValue:)(v7 + *(v8 + 32), v8, v5);
  v9 = swift_task_alloc();
  v0[10] = v9;
  *v9 = v0;
  v9[1] = sub_2405C5BD0;
  v10 = v0[8];
  v11 = v0[4];

  return sub_2405BFD7C(v10);
}

uint64_t sub_2405C5BD0()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_2405C602C;
  }

  else
  {
    v6 = sub_2405C5CFC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2405C5CFC()
{
  v1 = v0[9];
  v2 = sub_240759AC4();
  v3 = sub_24075A5D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_240579000, v2, v3, "Finished running taps, calling receiver", v4, 2u);
    MEMORY[0x245CC76B0](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = (v5 + *(*v5 + 104));
  v7 = v6[1];
  v13 = (*v6 + **v6);
  v8 = (*v6)[1];
  v9 = swift_task_alloc();
  v0[12] = v9;
  *v9 = v0;
  v9[1] = sub_2405C5E80;
  v10 = v0[2];
  v11 = v0[3];

  return v13(v11, v10);
}

uint64_t sub_2405C5E80()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_2405C60AC;
  }

  else
  {
    v6 = sub_2405C5FAC;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2405C5FAC()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405C602C()
{
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2405C60AC()
{
  v1 = v0[13];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t _Coordinated.ValueUpdate.response(withUpdatedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  (*(v7 + 16))(v10);
  v12 = sub_2405C89D8(a2);
  *a3 = v11;
  v13 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  result = (*(v7 + 32))(&a3[*(v13 + 32)], v10, v6);
  *(a3 + 1) = v12;
  return result;
}

void sub_2405C6240()
{
  v1 = *v0;
  if (*(v0 + *(*v0 + 128)))
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v2 = sub_240759AE4();
    __swift_project_value_buffer(v2, qword_27E4B7420);

    v3 = sub_240759AC4();
    v4 = sub_24075A5C4();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v22 = v6;
      *v5 = 136315138;
      v7 = *(v1 + 80);
      type metadata accessor for _Coordinated();

      v8 = sub_24075A0E4();
      v10 = sub_2405BBA7C(v8, v9, &v22);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_240579000, v3, v4, "Coordinator %s is invalidated", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x245CC76B0](v6, -1, -1);
      MEMORY[0x245CC76B0](v5, -1, -1);
    }

    else
    {

      v20 = *(v1 + 80);
    }

    type metadata accessor for _Coordinated.CommonError();
    swift_getWitnessTable();
    swift_allocError();
    *v21 = xmmword_240762430;
    swift_willThrow();
  }

  else
  {
    if (qword_27E4B5EA8 != -1)
    {
      swift_once();
    }

    v11 = sub_240759AE4();
    __swift_project_value_buffer(v11, qword_27E4B7420);

    v12 = sub_240759AC4();
    v13 = sub_24075A5D4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = *(v1 + 80);
      type metadata accessor for _Coordinated();

      v17 = sub_24075A0E4();
      v19 = sub_2405BBA7C(v17, v18, &v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_240579000, v12, v13, "Checked that %s is not invalidated & ready to coordinate", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x245CC76B0](v15, -1, -1);
      MEMORY[0x245CC76B0](v14, -1, -1);
    }
  }
}

uint64_t sub_2405C65AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2405C65F8, v3, 0);
}

uint64_t sub_2405C65F8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2405C66EC;
  v6 = v0[5];
  v7 = v0[2];

  return sub_2405C6D34(v7, &unk_240762748, v4);
}

uint64_t sub_2405C66EC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2405DA4F8, v2, 0);
}

uint64_t sub_2405C67FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2405C6820, 0, 0);
}

uint64_t sub_2405C6820()
{
  v1 = *(v0 + 40);
  (*(v0 + 32))(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2405C688C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  return MEMORY[0x2822009F8](sub_2405C68D8, v3, 0);
}

uint64_t sub_2405C68D8()
{
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];
  v4 = swift_allocObject();
  v0[7] = v4;
  v4[2] = *(v1 + 80);
  v4[3] = v3;
  v4[4] = v2;

  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2405C69CC;
  v6 = v0[5];
  v7 = v0[2];

  return sub_2405C6D34(v7, &unk_240762768, v4);
}

uint64_t sub_2405C69CC()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2405C6ADC, v2, 0);
}

uint64_t sub_2405C6ADC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2405C6B3C(uint64_t a1, uint64_t a2, int *a3)
{
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405C6C3C;

  return v9(a1, a2);
}

uint64_t sub_2405C6C3C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405C6D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *v3;
  v5 = sub_2407597B4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v4[9] = *(v6 + 64);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405C6E4C, v3, 0);
}

uint64_t sub_2405C6E4C()
{
  v58 = v0;
  v1 = v0[13];
  sub_2407597A4();
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v3 = v0[12];
  v2 = v0[13];
  v5 = v0[7];
  v4 = v0[8];
  v6 = sub_240759AE4();
  __swift_project_value_buffer(v6, qword_27E4B7420);
  v53 = *(v4 + 16);
  v53(v3, v2, v5);
  v7 = sub_240759AC4();
  v8 = sub_24075A5D4();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[12];
  v12 = v0[7];
  v11 = v0[8];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v57 = v14;
    *v13 = 136315138;
    sub_2405D5548(&qword_27E4B7458);
    v15 = sub_24075AC34();
    v17 = v16;
    v56 = *(v11 + 8);
    v56(v10, v12);
    v18 = sub_2405BBA7C(v15, v17, &v57);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_240579000, v7, v8, "Tapping with with id: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x245CC76B0](v14, -1, -1);
    MEMORY[0x245CC76B0](v13, -1, -1);
  }

  else
  {

    v56 = *(v11 + 8);
    v56(v10, v12);
  }

  v19 = v0[13];
  v20 = v0[11];
  v22 = v0[8];
  v21 = v0[9];
  v23 = v0[7];
  v24 = v0[5];
  v51 = v0[4];
  v52 = v0[10];
  v49 = v19;
  v50 = v0[3];
  v48 = *(v0[6] + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  v55 = type metadata accessor for _Coordinated.AsyncThrowingTapHandle();
  v25 = swift_allocObject();
  swift_weakInit();
  v53(v20, v19, v23);
  v26 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v48;
  (*(v22 + 32))(v27 + v26, v20, v23);
  *(v27 + ((v21 + v26 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v28 = swift_allocObject();
  v28[4] = v50;
  v28[5] = v51;
  v28[2] = sub_2405D54AC;
  v28[3] = v27;
  v53(v52, v49, v23);

  v29 = sub_240759AC4();
  v30 = sub_24075A5D4();
  v31 = os_log_type_enabled(v29, v30);
  v32 = v0[10];
  v33 = v0[7];
  v34 = v0[8];
  if (v31)
  {
    v35 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57 = v54;
    *v35 = 136315138;
    sub_2405D5548(&qword_27E4B7458);
    v36 = sub_24075AC34();
    v38 = v37;
    v56(v32, v33);
    v39 = sub_2405BBA7C(v36, v38, &v57);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_240579000, v29, v30, "Adding tap with id: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v54);
    MEMORY[0x245CC76B0](v54, -1, -1);
    MEMORY[0x245CC76B0](v35, -1, -1);
  }

  else
  {

    v56(v32, v33);
  }

  v40 = v0[13];
  v42 = v0[10];
  v41 = v0[11];
  v43 = v0[7];
  v44 = v0[5];
  v45 = v0[2];
  sub_2405C79F0(v28, v40);
  v45[3] = v55;
  v45[4] = &off_285269CF0;
  *v45 = v28;
  v56(v40, v43);

  v46 = v0[1];

  return v46();
}

uint64_t sub_2405C7380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v66 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v57 - v6;
  v7 = sub_2407597B4();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v57 - v13;
  v61 = v15;
  MEMORY[0x28223BE20](v12);
  v17 = &v57 - v16;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v18 = sub_240759AE4();
  v19 = __swift_project_value_buffer(v18, qword_27E4B7420);
  v20 = v8 + 2;
  v21 = v8[2];
  v21(v17, a1, v7);
  v59 = v19;
  v22 = sub_240759AC4();
  v23 = sub_24075A5D4();
  v24 = os_log_type_enabled(v22, v23);
  v63 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = v14;
    v26 = v25;
    v27 = swift_slowAlloc();
    v58 = v21;
    v28 = v27;
    v68[0] = v27;
    *v26 = 136315138;
    sub_2405D5548(&qword_27E4B7458);
    v29 = sub_24075AC34();
    v60 = v8 + 2;
    v30 = a1;
    v32 = v31;
    v33 = v8[1];
    v33(v17, v7);
    v34 = sub_2405BBA7C(v29, v32, v68);
    a1 = v30;
    v20 = v60;

    *(v26 + 4) = v34;
    _os_log_impl(&dword_240579000, v22, v23, "Called to untap with %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v35 = v28;
    v21 = v58;
    MEMORY[0x245CC76B0](v35, -1, -1);
    v36 = v26;
    v14 = v57;
    MEMORY[0x245CC76B0](v36, -1, -1);
  }

  else
  {

    v33 = v8[1];
    v33(v17, v7);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v58 = v33;
    v66 = result;
    v21(v14, a1, v7);
    v38 = sub_240759AC4();
    v39 = sub_24075A5D4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v67 = v41;
      *v40 = 136315138;
      sub_2405D5548(&qword_27E4B7458);
      v42 = sub_24075AC34();
      v60 = v20;
      v43 = a1;
      v45 = v44;
      v46 = v14;
      v47 = v63;
      (v58)(v46, v7);
      v48 = sub_2405BBA7C(v42, v45, &v67);
      a1 = v43;

      *(v40 + 4) = v48;
      v49 = v39;
      v50 = v47;
      _os_log_impl(&dword_240579000, v38, v49, "Untapping with %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x245CC76B0](v41, -1, -1);
      MEMORY[0x245CC76B0](v40, -1, -1);
    }

    else
    {

      v50 = v63;
      (v58)(v14, v7);
    }

    v51 = sub_24075A3D4();
    v52 = v64;
    (*(*(v51 - 8) + 56))(v64, 1, 1, v51);
    v53 = v62;
    v21(v62, a1, v7);
    v54 = (*(v50 + 80) + 48) & ~*(v50 + 80);
    v55 = swift_allocObject();
    *(v55 + 2) = 0;
    *(v55 + 3) = 0;
    v56 = v66;
    *(v55 + 4) = v65;
    *(v55 + 5) = v56;
    (v50[4])(&v55[v54], v53, v7);
    sub_240602F08(0, 0, v52, &unk_240763420, v55);
  }

  return result;
}

uint64_t sub_2405C791C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2405C793C, a4, 0);
}

uint64_t sub_2405C793C()
{
  v1 = v0[2];
  sub_2405C7D84(v0[3]);
  v2 = v0[1];

  return v2();
}

void *sub_2405C799C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[4] = a1;
  result[5] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

uint64_t sub_2405C79F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = *v2;
  v6 = sub_2407597B4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v14 = sub_240759AE4();
  __swift_project_value_buffer(v14, qword_27E4B7420);
  v31 = *(v7 + 16);
  v32 = a2;
  v31(v13, a2, v6);
  v15 = sub_240759AC4();
  v16 = sub_24075A5D4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v18 = 136315138;
    sub_2405D5548(&qword_27E4B7458);
    v19 = sub_24075AC34();
    v30 = v11;
    v21 = v20;
    (*(v7 + 8))(v13, v6);
    v22 = sub_2405BBA7C(v19, v21, v34);
    v11 = v30;

    *(v18 + 4) = v22;
    _os_log_impl(&dword_240579000, v15, v16, "Actually adding the tap with id now: %s", v18, 0xCu);
    v23 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CC76B0](v23, -1, -1);
    v24 = v18;
    a1 = v29;
    MEMORY[0x245CC76B0](v24, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  v31(v11, v32, v6);
  v34[3] = a1;
  v25 = *(*v3 + 112);
  swift_beginAccess();
  v26 = *(v33 + 80);

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  type metadata accessor for _Coordinated.AsyncThrowingTapHandle();
  sub_2405D5548(&qword_27E4B7438);
  sub_240759FA4();
  sub_240759FE4();
  return swift_endAccess();
}

uint64_t sub_2405C7D84(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_2407597B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - v11;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v13 = sub_240759AE4();
  __swift_project_value_buffer(v13, qword_27E4B7420);
  v31 = *(v6 + 16);
  v32 = a1;
  v31(v12, a1, v5);
  v14 = sub_240759AC4();
  v15 = sub_24075A5D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v4;
    v17 = v16;
    v28 = swift_slowAlloc();
    v33[0] = v28;
    *v17 = 136315138;
    sub_2405D5548(&qword_27E4B7458);
    v18 = sub_24075AC34();
    v30 = v10;
    v20 = v19;
    (*(v6 + 8))(v12, v5);
    v21 = sub_2405BBA7C(v18, v20, v33);
    v10 = v30;

    *(v17 + 4) = v21;
    _os_log_impl(&dword_240579000, v14, v15, "Removing tap with id: %s", v17, 0xCu);
    v22 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x245CC76B0](v22, -1, -1);
    v23 = v17;
    v4 = v29;
    MEMORY[0x245CC76B0](v23, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v12, v5);
  }

  v31(v10, v32, v5);
  v33[3] = 0;
  v24 = *(*v2 + 112);
  swift_beginAccess();
  v25 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
  type metadata accessor for _Coordinated.AsyncThrowingTapHandle();
  sub_2405D5548(&qword_27E4B7438);
  sub_240759FA4();
  sub_240759FE4();
  return swift_endAccess();
}

uint64_t _Coordinated.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(v0 + *(*v0 + 104) + 8);

  v2 = *(v0 + *(*v0 + 112));

  v3 = (v0 + *(*v0 + 120));
  v4 = v3[1];
  sub_24058CA60(*v3);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t _Coordinated.__deallocating_deinit()
{
  _Coordinated.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2405C8208(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_2405C8228, v1, 0);
}

uint64_t sub_2405C8228()
{
  v1 = v0[3];
  sub_2405BE94C(v0[2]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_2405C8288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4D8;

  return sub_2405BEC58(a1);
}

uint64_t sub_2405C831C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405C20F8(a1);
}

uint64_t sub_2405C83B0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405C23B0(a1, a2);
}

uint64_t sub_2405C8454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return sub_2405C2944(a1, a2, a3, a4, a5);
}

uint64_t sub_2405C851C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405C2C18(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405C85F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C65AC(a1, a2, a3);
}

uint64_t sub_2405C86A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C688C(a1, a2, a3);
}

uint64_t sub_2405C8754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405C6D34(a1, a2, a3);
}

uint64_t sub_2405C8804()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  v2(v3);
}

uint64_t sub_2405C885C()
{

  sub_2405C8804();
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2405C8890()
{
  sub_2405C885C();

  return swift_deallocClassInstance();
}

id _Coordinated.HaltingTapError.underlyingError.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t (*_Coordinated.ValueUpdate.updatedValue.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_3;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_2405C8984()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2407598C4();
}

void (*sub_2405C89D8(uint64_t a1))(void *, void)
{
  v2 = v1;
  v4 = *(v1 + *(a1 + 36));
  sub_2407598E4();
  if (v10[0] == -1)
  {
    v5 = *(v2 + *(a1 + 36));
    v10[0] = 0;
    sub_2407598F4();
  }

  v6 = *(v2 + *(a1 + 36));
  result = sub_2407598D4();
  if (*v8 == -1)
  {
    __break(1u);
  }

  else
  {
    ++*v8;
    result(v10, 0);
    v9 = *(v2 + *(a1 + 36));
    sub_2407598E4();
    return v10[0];
  }

  return result;
}

uint64_t sub_2405C8A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v9 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  result = (*(*(a4 - 8) + 32))(&a5[*(v9 + 32)], a2, a4);
  *(a5 + 1) = a3;
  return result;
}

uint64_t sub_2405C8B10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6964726F6F437369 && a2 == 0xED0000646574616ELL || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5664657461647075 && a2 == 0xEC00000065756C61 || (sub_24075ACF4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002407864A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24075ACF4();

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

unint64_t sub_2405C8C90(unsigned __int8 a1)
{
  v1 = 0x65636E6575716573;
  v2 = 0x5664657461647075;
  if (a1 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (a1)
  {
    v1 = 0x6964726F6F437369;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2405C8D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_2405C8B10(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2405C8D78@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2405D5658();
  *a2 = result;
  return result;
}

uint64_t sub_2405C8DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2405C8DF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_2405C8E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636E6575716573 && a2 == 0xEA00000000004449;
  if (v4 || (sub_24075ACF4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002407864C0 == a2 || (sub_24075ACF4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5664657461647075 && a2 == 0xEC00000065756C61)
  {

    return 2;
  }

  else
  {
    v6 = sub_24075ACF4();

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

uint64_t sub_2405C8FB0(unsigned __int8 a1)
{
  sub_24075AE64();
  MEMORY[0x245CC6BA0](a1);
  return sub_24075AED4();
}

uint64_t sub_2405C8FF8(char a1)
{
  if (!a1)
  {
    return 0x65636E6575716573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000012;
  }

  return 0x5664657461647075;
}

uint64_t sub_2405C9060(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void, void))
{
  sub_24075AE64();
  a4(v8, *v4, *(a2 + 16));
  return sub_24075AED4();
}

uint64_t sub_2405C90C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_2405C8E84(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_2405C90F0@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_2405D5660();
  *a2 = result;
  return result;
}

uint64_t sub_2405C911C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2405C9170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t _Coordinated.ValueUpdate<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a3;
  v30 = a4;
  v31 = *(a2 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](a1);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _Coordinated.ValueUpdate.CodingKeys();
  swift_getWitnessTable();
  v36 = sub_24075AB44();
  v32 = *(v36 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v27 - v9;
  v11 = type metadata accessor for _Coordinated.ValueUpdate();
  v29 = *(v11 - 8);
  v12 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v10;
  v16 = v37;
  sub_24075AF34();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v33;
  v37 = a1;
  v18 = v32;
  v42 = 0;
  v19 = v35;
  *v14 = sub_24075AB24();
  v41 = 1;
  v20 = sub_24075AAD4();
  v28 = v14;
  v14[8] = v20 & 1;
  v40 = 2;
  sub_24075AAF4();
  v21 = v17;
  v22 = *(v31 + 32);
  v23 = v28;
  v34 = *(v11 + 32);
  v22(&v28[v34], v21, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  v39 = 3;
  sub_2405D55A4(&qword_27E4B7468);
  v24 = v36;
  sub_24075AAF4();
  (*(v18 + 8))(v19, v24);
  *&v23[*(v11 + 36)] = v38;
  v25 = v29;
  (*(v29 + 16))(v30, v23, v11);
  __swift_destroy_boxed_opaque_existential_1(v37);
  return (*(v25 + 8))(v23, v11);
}

uint64_t _Coordinated.ValueUpdate<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = v3;
  v20 = a2;
  v19[1] = *(a2 + 16);
  type metadata accessor for _Coordinated.ValueUpdate.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_24075AC24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v12 = *v4;
  v27 = 0;
  v13 = v22;
  sub_24075AC14();
  if (v13)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v15 = v7;
  v16 = v20;
  v17 = *(v4 + 8);
  v26 = 1;
  sub_24075ABC4();
  v18 = *(v16 + 32);
  v25 = 2;
  sub_24075ABE4();
  v23 = *(v4 + *(v16 + 36));
  v24 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405D55A4(&qword_27E4B7470);
  sub_24075ABE4();
  return (*(v15 + 8))(v10, v6);
}

uint64_t static _Coordinated.ValueUpdate<A>.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = type metadata accessor for _Coordinated.ValueUpdate();
  v5 = *(v4 + 32);
  if ((sub_24075A054() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  v6 = *(v4 + 36);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  return sub_240759914() & 1;
}

uint64_t sub_2405C9988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static _Coordinated.ValueUpdate<A>.== infix(_:_:)(a1, a2);
}

uint64_t _Coordinated.ValueUpdate<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  MEMORY[0x245CC6BE0](*v2);
  v5 = *(v2 + 8);
  sub_24075AE94();
  v6 = *(a2 + 16);
  v7 = v2 + *(a2 + 32);
  sub_24075A004();
  v9 = *(v3 + *(a2 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7460, &qword_240762770);
  sub_2405D55A4(qword_27E4B7478);
  return sub_24075A004();
}

uint64_t _Coordinated.ValueUpdate.Response<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v23 = a4;
  v22 = *(a2 - 8);
  v6 = *(v22 + 64);
  MEMORY[0x28223BE20](a1);
  v25 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for _Coordinated.ValueUpdate.Response.CodingKeys();
  swift_getWitnessTable();
  v27 = sub_24075AB44();
  v24 = *(v27 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x28223BE20](v27);
  v10 = &v21 - v9;
  v11 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v21 = *(v11 - 8);
  v12 = *(v21 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = (&v21 - v13);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v28;
  sub_24075AF34();
  if (v16)
  {
    v20 = a1;
  }

  else
  {
    v28 = a1;
    v18 = v24;
    v17 = v25;
    v31 = 0;
    *v14 = sub_24075AB24();
    v30 = 1;
    v14[1] = sub_24075AB24();
    v29 = 2;
    sub_24075AAF4();
    (*(v18 + 8))(v10, v27);
    (*(v22 + 32))(v14 + *(v11 + 32), v17, a2);
    (*(v21 + 32))(v23, v14, v11);
    v20 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t _Coordinated.ValueUpdate.Response<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v4 = v3;
  v19 = a2;
  v18 = *(a2 + 16);
  type metadata accessor for _Coordinated.ValueUpdate.Response.CodingKeys();
  swift_getWitnessTable();
  v6 = sub_24075AC24();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24075AF74();
  v12 = *v4;
  v24 = 0;
  v13 = v21;
  sub_24075AC14();
  if (!v13)
  {
    v14 = v19;
    v15 = v4[1];
    v23 = 1;
    sub_24075AC14();
    v16 = *(v14 + 32);
    v22 = 2;
    sub_24075ABE4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t static _Coordinated.ValueUpdate.Response<A>.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for _Coordinated.ValueUpdate.Response() + 32);
  return sub_24075A054() & 1;
}

uint64_t sub_2405CA064(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static _Coordinated.ValueUpdate.Response<A>.== infix(_:_:)(a1, a2);
}

uint64_t _Coordinated.ValueUpdate.Response<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  MEMORY[0x245CC6BE0](*v2);
  MEMORY[0x245CC6BE0](v2[1]);
  v4 = *(a2 + 16);
  v5 = v2 + *(a2 + 32);
  return sub_24075A004();
}

uint64_t sub_2405CA0F0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_24075AE64();
  a3(v7, a1, a2);
  return sub_24075AED4();
}

uint64_t sub_2405CA178(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_24075AE64();
  a4(v8, a2, v6);
  return sub_24075AED4();
}

void *CoordinationProtocol.coercing<A>(derive:mutator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.Coerced();
  v13 = CoordinationProtocol.into()(a5, a7);
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a1;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = a4;

  return v14;
}

uint64_t CoordinationProtocol.into()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _AnyCoordinated();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = a2;
  swift_unknownObjectRetain();
  return v4;
}

void *sub_2405CA304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t CoordinationProtocol.coercing<A>(to:derive:mutator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v11 = sub_24075A714();
  v9[11] = v11;
  v12 = *(v11 - 8);
  v9[12] = v12;
  v13 = *(v12 + 64) + 15;
  v9[13] = swift_task_alloc();
  v14 = *(a7 - 8);
  v9[14] = v14;
  v15 = *(v14 + 64) + 15;
  v9[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CA488, 0, 0);
}

uint64_t sub_2405CA488()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 96);
  v26 = *(v0 + 88);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 16);
  swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.Coerced();
  v24 = *(v0 + 40);
  v25 = *(v0 + 24);
  v9 = CoordinationProtocol.into()(v7, v5);
  v10 = swift_allocObject();
  *(v0 + 128) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v25;
  *(v10 + 40) = v24;
  (*(v3 + 16))(v1, v8, v26);
  if ((*(v2 + 48))(v1, 1, v6) == 1)
  {
    v11 = *(v0 + 48);
    v12 = *(v0 + 32);
    v13 = *(v0 + 88);
    v14 = *(*(v0 + 96) + 8);
    v15 = *(v0 + 104);
    v16 = *(v0 + 120);

    v14(v15, v13);

    v17 = *(v0 + 8);
    v18 = *(v0 + 128);

    return v17(v18);
  }

  else
  {
    v20 = *(v0 + 48);
    v21 = *(v0 + 32);
    (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 104), *(v0 + 64));

    v22 = swift_task_alloc();
    *(v0 + 136) = v22;
    *v22 = v0;
    v22[1] = sub_2405CA6D0;
    v23 = *(v0 + 120);

    return sub_2405CB87C(v23);
  }
}

uint64_t sub_2405CA6D0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_2405CA874;
  }

  else
  {
    v3 = sub_2405CA7E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2405CA7E4()
{
  v1 = v0[13];
  (*(v0[14] + 8))(v0[15], v0[8]);

  v2 = v0[1];
  v3 = v0[16];

  return v2(v3);
}

uint64_t sub_2405CA874()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[8];

  (*(v4 + 8))(v2, v5);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

uint64_t sub_2405CA910()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  swift_getObjectType();
  v4 = *(*(v2 + 8) + 16);
  return sub_24075A344();
}

uint64_t sub_2405CA948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = *(v3 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v9 = sub_24075A344();
  v2[7] = v9;
  v2[8] = v8;

  return MEMORY[0x2822009F8](sub_2405CAA78, v9, v8);
}

uint64_t sub_2405CAA78()
{
  v1 = v0[3];
  v0[9] = v1[3];
  v0[10] = v1[4];
  v2 = v1[2];

  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_2405CAB2C;
  v4 = v0[6];

  return sub_2405CED84(v4);
}

uint64_t sub_2405CAB2C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v6 = *v0;

  v3 = *(v1 + 64);
  v4 = *(v1 + 56);

  return MEMORY[0x2822009F8](sub_2405CAC4C, v4, v3);
}

uint64_t sub_2405CAC4C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  (*(v0 + 72))(v2);

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 8);

  return v6();
}

void *sub_2405CACF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t sub_2405CAD04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v7 = sub_24075A344();
  v3[5] = v7;
  v3[6] = v6;

  return MEMORY[0x2822009F8](sub_2405CADD4, v7, v6);
}

uint64_t sub_2405CADD4()
{
  v1 = *(v0[4] + 16);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_2405CAE70;
  v3 = v0[2];

  return sub_2405CED84(v3);
}

uint64_t sub_2405CAE70()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_2405CAF90, v4, v3);
}

uint64_t sub_2405CAF90()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v5 = *(v1 + 40);
  v4 = *(v1 + 48);

  v5(v3, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_2405CB020(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v6 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v2[6] = v6;
  v7 = *(v6 - 8);
  v2[7] = v7;
  v8 = *(v7 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = *(v3 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v10 = sub_24075A344();
  v2[10] = v10;
  v2[11] = v9;

  return MEMORY[0x2822009F8](sub_2405CB188, v10, v9);
}

uint64_t sub_2405CB188()
{
  v1 = v0[9];
  v2 = v0[2];
  v0[12] = *(v0[3] + 16);
  v0[13] = *v2;
  v3 = *(type metadata accessor for _Coordinated.ValueUpdate.Response() + 32);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2405CB250;
  v5 = v0[5];
  v6 = v0[3];

  return sub_2405CAD04(v5, v2 + v3);
}

uint64_t sub_2405CB250()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 88);
  v4 = *(v1 + 80);

  return MEMORY[0x2822009F8](sub_2405CB370, v4, v3);
}

uint64_t sub_2405CB370()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  v4 = *(v0[2] + 8);
  *v1 = v0[13];
  v5 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  (*(*(v2 - 8) + 32))(&v1[*(v5 + 32)], v3, v2);
  *(v1 + 1) = v4;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2405CB470;
  v7 = v0[12];
  v8 = v0[8];

  return sub_2405CF380(v8);
}

uint64_t sub_2405CB470(uint64_t a1)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v7 = *(*v1 + 40);
  v10 = *v1;

  (*(v5 + 8))(v4, v6);

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t sub_2405CB5F4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[2];
  v9 = *(*v1 + 88);
  v10 = a1;
  v4 = *(v2 + 80);
  v5 = type metadata accessor for _AnyCoordinated();
  WitnessTable = swift_getWitnessTable();
  return sub_2405CB6C8(sub_2405D5668, v8, "AppleIDSetup/Coordinated.swift", 30, 2, 530, v5, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_2405CB6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_24075A344();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a8;
  v15[4] = a9;
  v15[5] = a1;
  v15[6] = a2;
  sub_2405D4770(sub_2405D9FD0, v15, v9, a7, a8, a9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_24075A864();
    MEMORY[0x245CC5E60](0xD00000000000003FLL, 0x8000000240786500);
    sub_24075ACC4();
    MEMORY[0x245CC5E60](46, 0xE100000000000000);
    result = sub_24075A9C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_2405CB87C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = *(v3 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v9 = sub_24075A344();
  v2[7] = v9;
  v2[8] = v8;

  return MEMORY[0x2822009F8](sub_2405CB9AC, v9, v8);
}

uint64_t sub_2405CB9AC()
{
  v0[9] = *(v0[3] + 16);
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_2405CBA50;
  v2 = v0[6];
  v3 = v0[2];
  v4 = v0[3];

  return sub_2405CAD04(v2, v3);
}

uint64_t sub_2405CBA50()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v3;
  v4[1] = sub_2405CBBA8;
  v5 = v1[9];
  v6 = v1[6];

  return sub_2405CFB50(v6);
}

uint64_t sub_2405CBBA8()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *(*v1 + 32);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = v6[7];
    v8 = v6[8];

    return MEMORY[0x2822009F8](sub_2405CBD4C, v7, v8);
  }

  else
  {
    v9 = v6[6];

    v10 = v6[1];

    return v10();
  }
}

uint64_t sub_2405CBD4C()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_2405CBDB0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *v2;
  v3[5] = *(*v2 + 80);
  v3[6] = *(v4 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v6 = sub_24075A344();
  v3[7] = v6;
  v3[8] = v5;

  return MEMORY[0x2822009F8](sub_2405CBE88, v6, v5);
}

uint64_t sub_2405CBE88()
{
  v1 = *(v0 + 32);
  v2 = v1[2];
  v4 = v1[5];
  v3 = v1[6];
  *(v0 + 72) = v3;
  v6 = v1[3];
  v5 = v1[4];
  *(v0 + 80) = v5;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  v8 = *(v0 + 16);
  *(v7 + 16) = *(v0 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  *(v7 + 48) = v8;
  *(v7 + 64) = v4;
  *(v7 + 72) = v3;

  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_2405CBF90;

  return sub_2405D01B4(sub_2405D569C, v7);
}

uint64_t sub_2405CBF90()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    v4 = v3[7];
    v5 = v3[8];

    return MEMORY[0x2822009F8](sub_2405CC0E0, v4, v5);
  }

  else
  {
    v6 = v3[10];
    v7 = v3[11];
    v8 = v3[9];

    v9 = v3[1];

    return v9();
  }
}

uint64_t sub_2405CC0E0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];

  v4 = v0[1];
  v5 = v0[13];

  return v4();
}

uint64_t sub_2405CC158(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *), uint64_t a5, void (*a6)(uint64_t, char *), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a9 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20]();
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v14);
  a4(v16);
  a6(a1, v16);
  return (*(v12 + 8))(v16, a9);
}

uint64_t sub_2405CC268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v8 = *(*v5 + 80);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = *(v7 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v12 = sub_24075A344();
  v6[12] = v12;
  v6[13] = v11;

  return MEMORY[0x2822009F8](sub_2405CC3A4, v12, v11);
}

uint64_t sub_2405CC3A4()
{
  v0[14] = *(v0[7] + 16);
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = sub_2405CC44C;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[3];

  return sub_2405CAD04(v2, v4);
}

uint64_t sub_2405CC44C()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v6 = *v0;

  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x2822009F8](sub_2405CC56C, v4, v3);
}

uint64_t sub_2405CC56C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  v8 = *(v2 + 24);
  v7 = *(v2 + 32);
  v0[16] = v7;
  v9 = swift_allocObject();
  v0[17] = v9;
  v9[2] = v3;
  v9[3] = v1;
  v9[4] = v5;
  v9[5] = v8;
  v9[6] = v7;
  v9[7] = v6;
  v9[8] = v4;
  swift_retain_n();

  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_2405CC698;
  v11 = v0[14];
  v12 = v0[10];
  v13 = v0[6];
  v14 = v0[2];

  return sub_2405D0968(v14, v12, &unk_2407627D8, v9, v13);
}

uint64_t sub_2405CC698()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v8 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v9 = v2[12];
    v10 = v2[13];

    return MEMORY[0x2822009F8](sub_2405CC87C, v9, v10);
  }

  else
  {
    v11 = v2[16];
    v12 = v2[10];

    v13 = *(v8 + 8);

    return v13();
  }
}

uint64_t sub_2405CC87C()
{
  v1 = v0[16];
  v2 = v0[10];

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_2405CC8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a8 - 8);
  v8[9] = v9;
  v10 = *(v9 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CC9B0, 0, 0);
}

uint64_t sub_2405CC9B0()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 24));
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2405CCABC;
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return v10(v8, v6);
}

uint64_t sub_2405CCABC()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2405CCC50;
  }

  else
  {
    v3 = sub_2405CCBD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2405CCBD0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2405CCC50()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];
  v2 = v0[12];

  return v1();
}

uint64_t sub_2405CCCD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *v6;
  v7[9] = *(*v6 + 80);
  v7[10] = *(v8 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v10 = sub_24075A344();
  v7[11] = v10;
  v7[12] = v9;

  return MEMORY[0x2822009F8](sub_2405CCDB0, v10, v9);
}

uint64_t sub_2405CCDB0()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  v20 = v4[2];
  v6 = v4[5];
  v5 = v4[6];
  *(v0 + 104) = v5;
  v7 = v4[3];
  v8 = v4[4];
  *(v0 + 112) = v8;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  v10 = *(v0 + 24);
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  *(v9 + 32) = v3;
  *(v9 + 40) = v7;
  *(v9 + 48) = v8;
  *(v9 + 56) = v10;
  *(v9 + 72) = v6;
  *(v9 + 80) = v5;
  v11 = v4[3];
  v12 = v4[4];
  *(v0 + 128) = v12;
  v13 = swift_allocObject();
  *(v0 + 136) = v13;
  v13[2] = v2;
  v13[3] = v1;
  v13[4] = v3;
  v13[5] = v11;
  v13[6] = v12;
  v13[7] = v18;
  v13[8] = v19;
  swift_retain_n();

  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_2405CCF4C;
  v15 = *(v0 + 56);
  v16 = *(v0 + 16);

  return sub_2405D15E8(v16, sub_2405D57C0, v9, &unk_2407627F8, v13, v15);
}

uint64_t sub_2405CCF4C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {
    v4 = v3[11];
    v5 = v3[12];

    return MEMORY[0x2822009F8](sub_2405CD0BC, v4, v5);
  }

  else
  {
    v7 = v3[16];
    v6 = v3[17];
    v9 = v3[14];
    v8 = v3[15];
    v10 = v3[13];

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_2405CD0BC()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  v6 = v0[1];
  v7 = v0[19];

  return v6();
}

uint64_t sub_2405CD150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a8 - 8);
  v8[9] = v9;
  v10 = *(v9 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CD214, 0, 0);
}

uint64_t sub_2405CD214()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  (*(v0 + 32))(*(v0 + 24));
  v10 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2405CD320;
  v6 = *(v0 + 80);
  v7 = *(v0 + 56);
  v8 = *(v0 + 16);

  return v10(v8, v6);
}

uint64_t sub_2405CD320()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_2405DA4C4;
  }

  else
  {
    v3 = sub_2405DA4C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2405CD434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[6] = *(*v3 + 80);
  v4[7] = *(v5 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CD50C, v7, v6);
}

uint64_t sub_2405CD50C()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v0 + 24);
  *(v0 + 64) = *(&v7 + 1);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v3[1] = *(v0 + 48);
  v3[2] = v8;
  v3[3] = v7;
  swift_retain_n();

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2405DA4CC;
  v5 = *(v0 + 16);

  return sub_2405D2298(v5, sub_2405D5928, v3);
}

uint64_t sub_2405CD634(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a8 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20]();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16(v15);
  a3(a1, v14);
  return (*(v11 + 8))(v14, a8);
}

uint64_t sub_2405CD728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[6] = *(*v3 + 80);
  v4[7] = *(v5 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CD800, v7, v6);
}

uint64_t sub_2405CD800()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v0 + 24);
  *(v0 + 64) = *(&v7 + 1);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v3[1] = *(v0 + 48);
  v3[2] = v8;
  v3[3] = v7;
  swift_retain_n();

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2405DA4CC;
  v5 = *(v0 + 16);

  return sub_2405D27F4(v5, &unk_240762828, v3);
}

uint64_t sub_2405CD928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a8 - 8);
  v8[9] = v9;
  v10 = *(v9 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CD9E8, 0, 0);
}

uint64_t sub_2405CD9E8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 24));
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2405CDAF4;
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return v10(v8, v6);
}

uint64_t sub_2405CDAF4()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 72);
  v4 = *(*v0 + 64);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_2405CDC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[6] = *(*v3 + 80);
  v4[7] = *(v5 + 88);
  type metadata accessor for _Coordinated.Coerced();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CDD24, v7, v6);
}

uint64_t sub_2405CDD24()
{
  v1 = *(v0 + 40);
  v2 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v0 + 24);
  *(v0 + 64) = *(&v7 + 1);
  v3 = swift_allocObject();
  *(v0 + 72) = v3;
  v3[1] = *(v0 + 48);
  v3[2] = v8;
  v3[3] = v7;
  swift_retain_n();

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2405CDE4C;
  v5 = *(v0 + 16);

  return sub_2405D2F98(v5, &unk_240762848, v3);
}

uint64_t sub_2405CDE4C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_2405CDF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = *(a8 - 8);
  v8[9] = v9;
  v10 = *(v9 + 64) + 15;
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405CE038, 0, 0);
}

uint64_t sub_2405CE038()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 32);
  (*(v0 + 48))(*(v0 + 24));
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  *v5 = v0;
  v5[1] = sub_2405CE144;
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);

  return v10(v8, v6);
}

uint64_t sub_2405CE144()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *v1;
  v6[12] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405CE2EC, 0, 0);
  }

  else
  {
    v7 = v6[10];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_2405CE2EC()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

void *_Coordinated.Coerced.deinit()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t _Coordinated.Coerced.__deallocating_deinit()
{
  _Coordinated.Coerced.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_2405CE3B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE450;

  return sub_2405CA948(a1);
}

uint64_t sub_2405CE450()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405CE544(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405CE5D8;

  return sub_2405CB020(a1);
}

uint64_t sub_2405CE5D8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2405CE6D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405CB87C(a1);
}

uint64_t sub_2405CE768(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405CBDB0(a1, a2);
}

uint64_t sub_2405CE80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405CE450;

  return sub_2405CC268(a1, a2, a3, a4, a5);
}

uint64_t sub_2405CE8D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405CCCD0(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405CE9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405CD434(a1, a2, a3);
}

uint64_t sub_2405CEA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405CD728(a1, a2, a3);
}

uint64_t sub_2405CEB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405CDC4C(a1, a2, a3);
}

uint64_t _AnyCoordinated.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a3;
  return result;
}

uint64_t _TypeEraser.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t _TypeEraser.init(wrappedValue:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  return v1;
}

uint64_t _TypeEraser.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = CoordinationProtocol.into()(a2, a3);
  v4 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  swift_unknownObjectRelease();
  return v4;
}

uint64_t _TypeEraser.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t _TypeEraser.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2405CED4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getObjectType();
  v3 = *(*(v2 + 8) + 16);
  return sub_24075A344();
}

uint64_t sub_2405CED84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(*v1 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v5 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CEE38, v5, v4);
}

uint64_t sub_2405CEE38()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CEEF4;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CEFE8(v6, v3, v7, ObjectType, v2);
}

uint64_t sub_2405CEEF4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405CEFE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a3;
  v5[4] = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  v9 = *(*(AssociatedTypeWitness - 8) + 64) + 15;
  v10 = swift_task_alloc();
  v5[6] = v10;
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_2405CF18C;

  return v15(v10, a4, a5);
}

uint64_t sub_2405CF18C()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v8 = *v0;

  *(v1 + 64) = *(v3 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v6 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF2FC, v6, v5);
}

uint64_t sub_2405CF2FC()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  swift_dynamicCast();

  v5 = v0[1];

  return v5();
}

uint64_t _AnyCoordinated.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return v3;
}

uint64_t sub_2405CF380(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(*v1 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v5 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF434, v5, v4);
}

uint64_t sub_2405CF434()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CF4EC;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CF5E8(v3, v6, v7, ObjectType, v2);
}

uint64_t sub_2405CF4EC(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_2405CF5E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *a3;
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v5[6] = v7;
  v8 = *(v7 - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(v6 + 80);
  v11 = type metadata accessor for _Coordinated.ValueUpdate.Response();
  v5[9] = v11;
  v12 = *(v11 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v15 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CF794, v15, v14);
}

uint64_t sub_2405CF794()
{
  v1 = v0[8];
  v2 = v0[6];
  v12 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v3 = *(v12 + 32);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2405CF8F8;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v6, v7, v8);
}

uint64_t sub_2405CF8F8(uint64_t a1)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *(*v1 + 48);
  v10 = *v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v10 + 8);

  return v8(a1);
}

uint64_t sub_2405CFA7C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[3];
  ObjectType = swift_getObjectType();
  v15 = a1;
  v9 = *(v3 + 80);
  v10 = ObjectType;
  v11 = v5;
  v12 = sub_2405D5B28;
  v13 = &v14;
  return sub_2405CB6C8(sub_2405D5B8C, v8, "AppleIDSetup/Coordinated.swift", 30, 2, 649, ObjectType, MEMORY[0x277D84F78] + 8, *(*(v5 + 8) + 16));
}

uint64_t sub_2405CFB50(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  v3 = *(*v1 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v5 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405CFC04, v5, v4);
}

uint64_t sub_2405CFC04()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_2405CEEF4;
  v6 = v0[2];
  v7 = v0[3];

  return sub_2405CFCBC(v3, v6, v7, ObjectType, v2);
}

uint64_t sub_2405CFCBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v6 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[6] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v5[7] = v8;
  v9 = *(v8 + 64) + 15;
  v5[8] = swift_task_alloc();
  v10 = *(v6 + 80);
  v5[9] = v10;
  v11 = *(v10 - 8);
  v5[10] = v11;
  v12 = *(v11 + 64) + 15;
  v5[11] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v14 = sub_24075A344();
  v5[12] = v14;
  v5[13] = v13;

  return MEMORY[0x2822009F8](sub_2405CFE54, v14, v13);
}

uint64_t sub_2405CFE54()
{
  v1 = v0[8];
  v2 = v0[6];
  v12 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v3 = *(v12 + 40);
  v11 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_2405CFFB8;
  v6 = v0[8];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v6, v7, v8);
}

uint64_t sub_2405CFFB8()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_2405D0128, v4, v5);
  }

  else
  {
    v6 = v3[11];
    (*(v3[7] + 8))(v3[8], v3[6]);

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2405D0128()
{
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[15];

  return v2();
}

uint64_t sub_2405D01B4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v6 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D026C, v6, v5);
}

uint64_t sub_2405D026C()
{
  v1 = v0[4];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2405D0328;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_2405D041C(v3, v8, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D0328()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405D041C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  v6[7] = *(*a4 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v8 = sub_24075A344();
  v6[8] = v8;
  v6[9] = v7;

  return MEMORY[0x2822009F8](sub_2405D04E0, v8, v7);
}

uint64_t sub_2405D04E0()
{
  v1 = *(v0 + 56);
  v13 = *(v0 + 48);
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  v4 = *(v0 + 24);
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  *(v3 + 32) = v13;
  *(v3 + 40) = v4;
  v5 = *(v13 + 48);
  v12 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_2405D0634;
  v8 = *(v0 + 40);
  v9 = *(v0 + 48);
  v10 = *(v0 + 16);

  return v12(sub_2405D9FC0, v3, v8, v9);
}

uint64_t sub_2405D0634()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  v3[12] = v0;

  if (v0)
  {
    v4 = v3[8];
    v5 = v3[9];

    return MEMORY[0x2822009F8](sub_2405CE2EC, v4, v5);
  }

  else
  {
    v6 = v3[10];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_2405D076C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v19 + 32))(v11, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  a2(v18);
  (*(v12 + 16))(v16, v18, a4);
  swift_dynamicCast();
  return (*(v12 + 8))(v18, a4);
}

uint64_t sub_2405D0968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*v5 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v9 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D0A24, v9, v8);
}

uint64_t sub_2405D0A24()
{
  v1 = v0[7];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_2405D0AEC;
  v7 = v0[6];
  v6 = v0[7];
  v8 = v0[4];
  v9 = v0[5];
  v10 = v0[2];
  v11 = v0[3];

  return sub_2405D0BE0(v10, v2, v11, v8, v9, v6, v7, ObjectType);
}

uint64_t sub_2405D0AEC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405D0BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v20;
  v8[6] = a5;
  v8[7] = a7;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  v8[11] = v11;
  v12 = *(v11 + 64) + 15;
  v8[12] = swift_task_alloc();
  v13 = *(v9 + 80);
  v8[13] = v13;
  v14 = *(v13 - 8);
  v8[14] = v14;
  v15 = *(v14 + 64) + 15;
  v8[15] = swift_task_alloc();
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v17 = sub_24075A344();
  v8[16] = v17;
  v8[17] = v16;

  return MEMORY[0x2822009F8](sub_2405D0D80, v17, v16);
}

uint64_t sub_2405D0D80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v18 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v16 = *(v0 + 56);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 32), v1);
  swift_dynamicCast();
  v5 = swift_allocObject();
  *(v0 + 144) = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v16;
  *(v5 + 40) = v18;
  *(v5 + 48) = v4;
  *(v5 + 56) = v3;
  v6 = *(v18 + 56);

  v17 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_2405D0F50;
  v9 = *(v0 + 96);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);
  v12 = *(v0 + 56);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);

  return v17(v13, v9, &unk_240763410, v5, v12, v10, v11);
}

uint64_t sub_2405D0F50()
{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[16];
    v5 = v3[17];

    return MEMORY[0x2822009F8](sub_2405D10CC, v4, v5);
  }

  else
  {
    v6 = v3[18];
    v7 = v3[15];
    v9 = v3[11];
    v8 = v3[12];
    v10 = v3[10];

    (*(v9 + 8))(v8, v10);

    v11 = v3[1];

    return v11();
  }
}

uint64_t sub_2405D10CC()
{
  v1 = v0[18];
  v2 = v0[15];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

uint64_t sub_2405D116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a5 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D12A4, 0, 0);
}

uint64_t sub_2405D12A4()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2405D13E8;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_2405D13E8()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405D155C, 0, 0);
  }

  else
  {
    v4 = v3[11];
    (*(v3[7] + 8))(v3[8], v3[6]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2405D155C()
{
  v1 = v0[11];
  (*(v0[7] + 8))(v0[8], v0[6]);

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

uint64_t sub_2405D15E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = *(*v6 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v10 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D16A8, v10, v9);
}

uint64_t sub_2405D16A8()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_2405D1770;
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[3];
  v10 = v0[4];
  v11 = v0[2];

  return sub_2405D1864(v11, v2, v9, v10, v7, v8, v5, v6);
}

uint64_t sub_2405D1770()
{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405D1864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = v13;
  v8[10] = v14;
  v8[7] = a6;
  v8[8] = a8;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[11] = *(*a7 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v10 = sub_24075A344();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x2822009F8](sub_2405D1938, v10, v9);
}

uint64_t sub_2405D1938()
{
  v1 = *(v0 + 88);
  v19 = *(v0 + 80);
  v3 = *(v0 + 64);
  v2 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  v7 = *(v0 + 32);
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  *(v6 + 32) = v2;
  *(v6 + 40) = v19;
  *(v6 + 48) = v7;
  v8 = swift_allocObject();
  *(v0 + 120) = v8;
  v8[2] = v1;
  v8[3] = v3;
  v8[4] = v2;
  v8[5] = v19;
  v8[6] = v5;
  v8[7] = v4;
  v9 = *(v19 + 64);

  v18 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 128) = v11;
  *v11 = v0;
  v11[1] = sub_2405D1B00;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = *(v0 + 16);
  v16 = *(v0 + 24);

  return (v18)(v15, sub_2405D9DF8, v6, &unk_240763400, v8, v14, v12, v13);
}

uint64_t sub_2405D1B00()
{
  v2 = *(*v1 + 128);
  v3 = *v1;
  v3[17] = v0;

  if (v0)
  {
    v4 = v3[12];
    v5 = v3[13];

    return MEMORY[0x2822009F8](sub_2405D1C44, v4, v5);
  }

  else
  {
    v7 = v3[14];
    v6 = v3[15];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_2405D1C44()
{
  v2 = v0[14];
  v1 = v0[15];

  v3 = v0[1];
  v4 = v0[17];

  return v3();
}

uint64_t sub_2405D1CB0(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v21 - v10;
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v9);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v21 - v17;
  (*(v19 + 32))(v11, a1, AssociatedTypeWitness);
  swift_dynamicCast();
  a2(v18);
  (*(v12 + 16))(v16, v18, a4);
  swift_dynamicCast();
  return (*(v12 + 8))(v18, a4);
}

uint64_t sub_2405D1EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a5 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D1FE0, 0, 0);
}

uint64_t sub_2405D1FE0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2405D2124;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_2405D2124()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2405DA4B8, 0, 0);
  }

  else
  {
    v4 = v3[11];
    (*(v3[7] + 8))(v3[8], v3[6]);

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_2405D2298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D2350, v7, v6);
}

uint64_t sub_2405D2350()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405DA4BC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D2410(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D2410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *(*a5 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v9 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D24D4, v9, v8);
}

uint64_t sub_2405D24D4()
{
  v1 = v0[8];
  v15 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v15;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v15 + 72);

  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2405DA4AC;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, sub_2405D9DE8, v5, v9, v10);
}

uint64_t sub_2405D264C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, char *), uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v16 + 16))(&v18 - v15, a2, AssociatedTypeWitness);
  swift_dynamicCast();
  a3(a1, v12);
  return (*(v9 + 8))(v12, a5);
}

uint64_t sub_2405D27F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D28AC, v7, v6);
}

uint64_t sub_2405D28AC()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405DA4BC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D296C(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *(*a5 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v9 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D2A30, v9, v8);
}

uint64_t sub_2405D2A30()
{
  v1 = v0[8];
  v15 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v15;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v15 + 80);

  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2405DA4AC;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, &unk_2407633F0, v5, v9, v10);
}

uint64_t sub_2405D2BA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a5 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D2CE0, 0, 0);
}

uint64_t sub_2405D2CE0()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2405D2E24;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t sub_2405D2E24()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);
  v5 = *(*v0 + 48);
  v8 = *v0;

  (*(v4 + 8))(v3, v5);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_2405D2F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = *(*v3 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v7 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D3050, v7, v6);
}

uint64_t sub_2405D3050()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2405D3110;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_2405D3204(v8, v3, v9, v6, v7, ObjectType, v2);
}

uint64_t sub_2405D3110()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2405D3204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *(*a5 + 80);
  type metadata accessor for _AnyCoordinated();
  swift_getWitnessTable();
  v9 = sub_24075A344();

  return MEMORY[0x2822009F8](sub_2405D32C8, v9, v8);
}

uint64_t sub_2405D32C8()
{
  v1 = v0[8];
  v15 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  v5 = swift_allocObject();
  v0[9] = v5;
  v5[2] = v1;
  v5[3] = v3;
  v5[4] = v15;
  v5[5] = v4;
  v5[6] = v2;
  v6 = *(v15 + 88);

  v14 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_2405D3440;
  v9 = v0[6];
  v10 = v0[7];
  v11 = v0[2];
  v12 = v0[3];

  return (v14)(v11, &unk_2407633E0, v5, v9, v10);
}

uint64_t sub_2405D3440()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2405D3550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *(a5 - 8);
  v5[7] = v6;
  v7 = *(v6 + 64) + 15;
  v5[8] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[9] = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v5[10] = v9;
  v10 = *(v9 + 64) + 15;
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2405D3688, 0, 0);
}

uint64_t sub_2405D3688()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);
  swift_dynamicCast();
  v10 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_2405D2124;
  v6 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return v10(v8, v6);
}

uint64_t _AnyCoordinated.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t _AnyCoordinated.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2405D3828(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405CED84(a1);
}

uint64_t sub_2405D38C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4D8;

  return sub_2405CF380(a1);
}

uint64_t sub_2405D3954(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2405DA4B0;

  return sub_2405CFB50(a1);
}

uint64_t sub_2405D39E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2405DA4B0;

  return sub_2405D01B4(a1, a2);
}

uint64_t sub_2405D3A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2405DA4B0;

  return sub_2405D0968(a1, a2, a3, a4, a5);
}

uint64_t sub_2405D3B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2405DA4B0;

  return sub_2405D15E8(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2405D3C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405D2298(a1, a2, a3);
}

uint64_t sub_2405D3CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405D27F4(a1, a2, a3);
}

uint64_t sub_2405D3D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2405DA4B0;

  return sub_2405D2F98(a1, a2, a3);
}

Swift::Void __swiftcall CoordinationProtocol.invalidate()()
{
  v2 = v1;
  v3 = v0;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v4 = sub_240759AE4();
  __swift_project_value_buffer(v4, qword_27E4B7420);
  v5 = sub_240759AC4();
  v6 = sub_24075A5C4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = sub_24075AFC4();
    v11 = sub_2405BBA7C(v9, v10, &v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_240579000, v5, v6, "%s invalidating by cancelling", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x245CC76B0](v8, -1, -1);
    MEMORY[0x245CC76B0](v7, -1, -1);
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for _Coordinated.CommonError();
  swift_getWitnessTable();
  v12 = swift_allocError();
  *v13 = xmmword_240762430;
  v14 = v12;
  (*(*(v2 + 8) + 24))(&v14, v3);
}

uint64_t sub_2405D4040(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = *(*a2 + 104);
  swift_beginAccess();
  sub_2405DA11C(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_2405D4184()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A88, &qword_240763428);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7448, &qword_240762720);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  v13 = *(*v0 + 104);
  swift_beginAccess();
  sub_2405B044C(&v0[v13], v7, &qword_27E4B7A88, &qword_240763428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2405B8A50(v7, &qword_27E4B7A88, &qword_240763428);
  }

  (*(v9 + 32))(v12, v7, v8);
  if (v0[112])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7A90, &qword_240763430);
    sub_240590128(&qword_27E4B7A98, &qword_27E4B7A90, &qword_240763430);
    v15[0] = swift_allocError();
    sub_24075A354();
    (*(v9 + 8))(v12, v8);
    (*(v9 + 56))(v5, 1, 1, v8);
    swift_beginAccess();
    sub_2405DA11C(v5, &v0[v13]);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B7AA0, &qword_240763438);
    sub_240590128(&qword_27E4B7AA8, &qword_27E4B7AA0, &qword_240763438);
    swift_allocError();
    swift_willThrow();
    return (*(v9 + 8))(v12, v8);
  }
}

unint64_t sub_2405D44D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_240759FF4();

  return sub_2405D452C(a1, v9, a2, a3);
}

unint64_t sub_2405D452C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_24075A054();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_2405D46B4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2405D4770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a1;
  v12[6] = a2;

  v14 = a3;
  sub_2405D9FF8(&v14);
}

void *sub_2405D4820(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2405D4840(void (*a1)(void))
{
  a1();

  return sub_24075AFC4();
}

uint64_t sub_2405D487C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_24075A304())
  {
    sub_24075AA14();
    v13 = sub_24075AA04();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_24075A304();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_24075A2F4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_24075A884();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2405D44D0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_2405D4B80()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v36[-1] - v5;
  if (qword_27E4B5EA8 != -1)
  {
    swift_once();
  }

  v7 = sub_240759AE4();
  __swift_project_value_buffer(v7, qword_27E4B7420);
  v8 = sub_240759AC4();
  v9 = sub_24075A5C4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v36[0] = v11;
    *v10 = 136315138;
    v12 = sub_24075AFC4();
    v14 = sub_2405BBA7C(v12, v13, v36);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_240579000, v8, v9, "%s Handling cancellation for error:", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x245CC76B0](v11, -1, -1);
    MEMORY[0x245CC76B0](v10, -1, -1);
  }

  *(v0 + (*v0)[16].isa) = 1;
  v15 = (v0 + (*v0)[15].isa);
  v16 = *v15;
  if (*v15)
  {
    v17 = v15[1];
    *v15 = 0;
    v15[1] = 0;

    sub_24058CA60(v16);
    sub_24057B5BC(v16);

    v18 = sub_240759AC4();
    v19 = sub_24075A5C4();

    sub_24058CA60(v16);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v37 = v21;
      *v20 = 136315394;
      v36[0] = v1;
      isa = v2[10].isa;
      type metadata accessor for _Coordinated();
      v35 = v2;

      v23 = sub_24075A0E4();
      v25 = sub_2405BBA7C(v23, v24, &v37);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2080;
      v26 = swift_allocObject();
      v26[2] = isa;
      v26[3] = v16;
      v26[4] = v17;
      v36[0] = &unk_240763480;
      v36[1] = v26;

      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E4B9BD0, &qword_24076BB70);
      sub_24075AEE4();
      swift_getFunctionTypeMetadata1();
      v27 = sub_24075A0E4();
      v29 = sub_2405BBA7C(v27, v28, &v37);
      v2 = v35;

      *(v20 + 14) = v29;
      _os_log_impl(&dword_240579000, v18, v19, "Invalidating %s with currentUpdateHandler: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC76B0](v21, -1, -1);
      MEMORY[0x245CC76B0](v20, -1, -1);
    }

    v30 = sub_24075A3D4();
    (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v2[10].isa;
    v31[5] = v16;
    v31[6] = v17;
    sub_240602F08(0, 0, v6, &unk_240763470, v31);
  }

  else
  {
    v35 = sub_240759AC4();
    v32 = sub_24075A5D4();
    if (os_log_type_enabled(v35, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_240579000, v35, v32, "Nothing to actively invalidate", v33, 2u);
      MEMORY[0x245CC76B0](v33, -1, -1);
    }

    v34 = v35;
  }
}

uint64_t sub_2405D50A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v7 = *(v4 - 8);
  (*(v7 + 8))(a1, v4);
  v5 = *(v7 + 16);

  return v5(a1, v3, v4);
}

uint64_t sub_2405D5174(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  v7 = *(v3 - 8);
  (*(v7 + 8))(a1, v3);
  v5 = *(v7 + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_2405D5248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2405DA4B0;

  return sub_2405C3AE8(a1, v4, v5, v7, v8, v9, v10, v6);
}

uint64_t sub_2405D532C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4B0;

  return sub_2405C67FC(a1, a2, v7, v8);
}

uint64_t sub_2405D53EC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4B0;

  return sub_2405C6B3C(a1, a2, v7);
}

uint64_t sub_2405D54AC()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2407597B4() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2405C7380(v0 + v3, v4, v1);
}

uint64_t sub_2405D5548(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2407597B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2405D55A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E4B7460, &qword_240762770);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2405D56D0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2405CC8EC(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t objectdestroy_41Tm()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2405D5838(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = v2[8];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2405DA4B0;

  return sub_2405CD150(a1, a2, v8, v10, v11, v12, v6, v7);
}

uint64_t sub_2405D5938(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CD928(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2405D5A50(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2405DA4B0;

  return sub_2405CDF78(a1, a2, v8, v9, v11, v10, v6, v7);
}

uint64_t sub_2405D5B28(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v7 = v4;
  return (*(*(a2 + 8) + 24))(&v7, ObjectType);
}

uint64_t sub_2405D5B8C(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  return v3(a1, v2);
}

uint64_t sub_2405D5BD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5C14(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2405D5CEC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5D28(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2405D5D64(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2405D5DA0(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of CoordinationProtocol.wrappedValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4B0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.submit(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4D8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.updateWithoutCoordination(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2405DA4B0;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of CoordinationProtocol.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_2405DA4B0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CoordinationProtocol.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 56);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_2405DA4B0;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of CoordinationProtocol.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 64);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_2405DA4B0;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of CoordinationProtocol.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 72);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2405DA4B0;

  return v15(a1, a2, a3, a4, a5);
}

{
  v11 = *(a5 + 80);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2405DA4B0;

  return v15(a1, a2, a3, a4, a5);
}

{
  v11 = *(a5 + 88);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_2405DA4B0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_2405D6914(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of _Coordinated.submit(_:)(uint64_t a1)
{
  v4 = *(*v1 + 272);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4D8;

  return v8(a1);
}

uint64_t dispatch thunk of _Coordinated.updateWithoutCoordination(to:)(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2405DA4B0;

  return v8(a1);
}

uint64_t dispatch thunk of _Coordinated.updatingWithoutCoordination(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 312);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2405DA4B0;

  return v10(a1, a2);
}

uint64_t dispatch thunk of _Coordinated.updateWithCoordination<A>(to:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 320);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_2405CE450;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _Coordinated.updatingWithCoordination<A>(_:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(*v6 + 328);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2405DA4B0;

  return v18(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _Coordinated.tapping(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 352);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 360);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

{
  v8 = *(*v3 + 368);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2405DA4B0;

  return v12(a1, a2, a3);
}

uint64_t sub_2405D74C0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12AppleIDSetup12_CoordinatedC11CommonErrorOyx_G(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2405D7514(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2405D7568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_2405D75C4(void *result, int a2)
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

uint64_t sub_2405D762C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2405D7674(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2405D76D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

void sub_2405D774C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_2405D7B20();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2405D77EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(*(*(a3 + 16) - 8) + 64) + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v9 = ((v8 + ((v6 + 9) & ~v6)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v10 = a2 - v7;
  v11 = v9 & 0xFFFFFFF8;
  if ((v9 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = v10 + 1;
  }

  if (v12 >= 0x10000)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

  if (v12 < 0x100)
  {
    v13 = 1;
  }

  if (v12 >= 2)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v9);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v9)) == 0)
  {
LABEL_28:
    v18 = (a1 + v6 + 9) & ~v6;
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(v18);
    }

    v19 = *((v8 + v18) & 0xFFFFFFFFFFFFFFF8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v7 + (v11 | v17) + 1;
}

_BYTE *sub_2405D7944(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = *(*(*(a4 + 16) - 8) + 64) + 7;
  v10 = ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v14 = 0;
    v15 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = a3 - v7;
    if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&result[v10] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v10] = 0;
      }

      else if (v14)
      {
        result[v10] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      result = (&result[v8 + 9] & ~v8);
      if (v6 < 0x7FFFFFFF)
      {
        v20 = (&result[v9] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v5 + 56);

        return v19(result);
      }

      return result;
    }
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v17 = ~v7 + a2;
    v18 = result;
    bzero(result, ((v9 + ((v8 + 9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v18;
    *v18 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *&result[v10] = v16;
    }

    else
    {
      *&result[v10] = v16;
    }
  }

  else if (v14)
  {
    result[v10] = v16;
  }

  return result;
}