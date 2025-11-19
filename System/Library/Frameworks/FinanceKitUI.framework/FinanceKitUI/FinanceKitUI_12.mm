uint64_t sub_2385497B4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - v8;
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
  v42 = a2;
  result = sub_23875F560();
  v13 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v41 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v42)
      {
        sub_23854CEA4(v28, v9);
      }

      else
      {
        sub_23843981C(v28, v9, &qword_27DF0B328, &qword_238768050);
        v29 = v26;
      }

      v30 = *(v13 + 40);
      result = sub_23875F1A0();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_23854CEA4(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero((v10 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_238549AD8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE58, &qword_23876E848);
  v33 = a2;
  result = sub_23875F560();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      sub_23875F700();
      sub_23875F720();
      result = sub_23875F760();
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

LABEL_37:
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
        goto LABEL_37;
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

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_238549D68(uint64_t a1, int a2)
{
  v3 = v2;
  v44 = sub_238758680();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
  v42 = a2;
  result = sub_23875F560();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(*(v9 + 48) + 8 * v25);
      v27 = *(v6 + 72);
      v28 = *(v9 + 56) + v27 * v25;
      if (v42)
      {
        (*v19)(v43, v28, v44);
      }

      else
      {
        (*v40)(v43, v28, v44);
        v29 = v26;
      }

      v30 = *(v12 + 40);
      result = sub_23875F1A0();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v26;
      result = (*v19)(*(v12 + 56) + v27 * v21, v43, v44);
      ++*(v12 + 16);
      v6 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void *sub_23854A0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
  v2 = *v0;
  v3 = sub_23875F550();
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

void *sub_23854A224()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DB78, &unk_23876E7A0);
  v2 = *v0;
  v3 = sub_23875F550();
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
        sub_238453DB4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23846F7C4(v25, (*(v4 + 56) + v22));
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

void *sub_23854A404()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
  v2 = *v0;
  v3 = sub_23875F550();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(v2 + 48) + 24 * v14;
      v18 = *(v17 + 16);
      v19 = *(*(v2 + 56) + 8 * v14);
      v20 = *(v4 + 48) + 24 * v14;
      *v20 = *v17;
      *(v20 + 16) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

char *sub_23854A568(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - v8;
  v46 = sub_23875BCB0();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_23875F550();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

char *sub_23854A8C0()
{
  v1 = v0;
  v32 = sub_238758A00();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
  v4 = *v0;
  v5 = sub_23875F550();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_23854AB44(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23875F550();
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

id sub_23854ACA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
  v6 = *v0;
  v7 = sub_23875F550();
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
    v14 = -1;
    v15 = *(v6 + 64);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        v23 = *(v25 + 72) * v21;
        sub_23843981C(*(v6 + 56) + v23, v5, &qword_27DF0B328, &qword_238768050);
        *(*(v8 + 48) + 8 * v21) = v22;
        sub_23854CEA4(v5, *(v8 + 56) + v23);
        result = v22;
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

id sub_23854AECC()
{
  v1 = v0;
  v30 = sub_238758680();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
  v4 = *v0;
  v5 = sub_23875F550();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27[1] = v32 + 32;
    v27[2] = v32 + 16;
    for (i = v4; v14; v4 = i)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = *(v4 + 56);
      v21 = *(*(v4 + 48) + 8 * v19);
      v22 = v32;
      v23 = *(v32 + 72) * v19;
      v25 = v29;
      v24 = v30;
      (*(v32 + 16))(v29, v20 + v23, v30);
      v26 = v31;
      *(*(v31 + 48) + 8 * v19) = v21;
      (*(v22 + 32))(*(v26 + 56) + v23, v25, v24);
      result = v21;
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

        v1 = v27[0];
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

unint64_t sub_23854B138(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DD98, &qword_23876E798);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_238547800(v7);
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

unint64_t sub_23854B25C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDE0, &qword_23876E7E8);
    v3 = sub_23875F570();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_23853B46C(v5, v6);
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

unint64_t sub_23854B370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDD8, &qword_23876E7E0);
    v3 = sub_23875F570();
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 8);
      v8 = *i;
      result = sub_238547964(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = v3[6] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
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

unint64_t sub_23854B470(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEE8, &qword_23876E908);
    v3 = sub_23875F570();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_238547800(v6);
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

unint64_t sub_23854B5A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DEB0, &qword_23876E8C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE88, &qword_23876E878);
    v8 = sub_23875F570();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v10, v6, &qword_27DF0DEB0, &qword_23876E8C8);
      result = sub_238547890(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23875BCB0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_23875A610();
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

unint64_t sub_23854B7F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE80, &qword_23876E870);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23853B46C(v5, v6);
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

unint64_t sub_23854B8F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE60, &qword_23876E850);
    v3 = sub_23875F570();
    v4 = a1 + 32;

    while (1)
    {
      sub_23843981C(v4, &v11, &qword_27DF0DE68, &qword_23876E858);
      v5 = v11;
      result = sub_238547A58(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_23846F7C4(&v12, (v3[7] + 32 * result));
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

unint64_t sub_23854BA3C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_23875F570();
    v10 = a1 + 32;

    while (1)
    {
      sub_23843981C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_238547800(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_23846F7C4(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_23854BB54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDB8, &qword_23876E7C0);
    v3 = sub_23875F570();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_238547800(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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

unint64_t sub_23854BC50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE08, &qword_23876E800);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DDF0, &qword_23876E7F8);
    v8 = sub_23875F570();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v10, v6, &qword_27DF0DE08, &qword_23876E800);
      result = sub_238547B0C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_238758A00();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_23854BE38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE48, &qword_23876E838);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE50, &qword_23876E840);
    v8 = sub_23875F570();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v10, v6, &qword_27DF0DE48, &qword_23876E838);
      result = sub_238547890(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_23875BCB0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_238758680();
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

unint64_t sub_23854C058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE40, &qword_23876E830);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE38, &qword_23876E828);
    v8 = sub_23875F570();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v10, v6, &qword_27DF0DE40, &qword_23876E830);
      v12 = *v6;
      result = sub_238547BE0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
      result = sub_23854CEA4(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_23854C234(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE30, &unk_23876E818);
    v3 = sub_23875F570();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_238547A58(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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

unint64_t sub_23854C324(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE10, &qword_23876E808);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE18, &qword_23876E810);
    v8 = sub_23875F570();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_23843981C(v10, v6, &qword_27DF0DE10, &qword_23876E808);
      v12 = *v6;
      result = sub_238547BE0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_238758680();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

uint64_t sub_23854C50C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  *(v1 + 104) = a1;
  v2 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_23854C59C, 0, 0);
}

uint64_t sub_23854C59C()
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = [objc_allocWithZone(MEMORY[0x277D0ED90]) init];
  if (!v1)
  {
    goto LABEL_21;
  }

  v38 = v1;
  v2 = *(v0 + 104);
  v3 = sub_238759A20();
  v4 = v3;
  v5 = 0;
  v6 = v3 + 64;
  v7 = -1;
  v8 = -1 << *(v3 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v3 + 64);
  v10 = (63 - v8) >> 6;
  while (v9)
  {
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = (v5 << 9) | (8 * v12);
    v14 = *(*(v4 + 48) + v13);
    v15 = *(*(v4 + 56) + v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE70, &qword_23876E860);
    inited = swift_initStackObject();
    *(inited + 32) = 7955819;
    *(inited + 16) = xmmword_238763B60;
    *(inited + 40) = 0xE300000000000000;
    *(inited + 48) = v14;
    *(inited + 56) = 0x65756C6176;
    *(inited + 64) = 0xE500000000000000;
    *(inited + 72) = v15;
    v17 = sub_23854B7F4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DE78, &qword_23876E868);
    swift_arrayDestroy();
    sub_238547124(v17);

    v18 = objc_allocWithZone(MEMORY[0x277D0ED88]);
    v19 = sub_23875E910();

    v20 = [v18 initWithDictionary_];

    if (v20)
    {
      [v38 addAttribute_];
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  v21 = *(v0 + 104);

  v22 = sub_238759A30();
  if (v23)
  {
    goto LABEL_15;
  }

  if (v22 < 0)
  {
LABEL_26:
    __break(1u);
  }

  [v38 setCustomIconId_];
LABEL_15:
  v24 = [objc_opt_self() walletMerchantStylingInfoFrom_];
  if (v24)
  {
    v25 = v24;
    v26 = objc_opt_self();
    *(v0 + 96) = 0;
    v27 = [v26 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:v0 + 96];
    v28 = *(v0 + 96);
    if (v27)
    {
      v29 = sub_23875B990();
      v31 = v30;

      v32 = v31;
      v1 = v29;
      goto LABEL_22;
    }

    v33 = v28;
    v34 = sub_23875B730();

    swift_willThrow();
  }

  else
  {
  }

  v1 = 0;
LABEL_21:
  v32 = 0xF000000000000000;
LABEL_22:
  v35 = *(v0 + 8);
  v36 = *MEMORY[0x277D85DE8];

  return v35(v1, v32);
}

uint64_t dispatch thunk of MapsTransactionClassifying.classifyTransactions(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238547590;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of MapsTransactionClassifying.fetchHeroImageDetails(muid:resultProviderID:entity:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_2384494A4;

  return v17(a1, a2, a3 | ((HIDWORD(a3) & 1) << 32), a4, a5, a6);
}

uint64_t dispatch thunk of MapsTransactionClassifying.encodedStylingInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_238547020;

  return v11(a1, a2, a3);
}

uint64_t type metadata accessor for MapsTransactionClassifier()
{
  result = qword_27DF0DD88;
  if (!qword_27DF0DD88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23854CD10()
{
  result = sub_23875BC40();
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

uint64_t sub_23854CEA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B328, &qword_238768050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23854CF14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23854CF80@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = sub_238758680();
  v6 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v32 = &v29 - v10;
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 48) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23854D240@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a1;
  v6 = sub_238758680();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v7;
    v23 = a3;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v6, v9);
      v18 = v25(v11);
      if (v3)
      {
        return (*v15)(v11, v6);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v6);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v7 = v22;
        a3 = v23;
        return (*(v7 + 56))(a3, v19, 1, v6);
      }
    }

    v7 = v22;
    a3 = v23;
    (*(v22 + 32))(v23, v11, v6);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v7 + 56))(a3, v19, 1, v6);
}

uint64_t sub_23854D414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_23854D48C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23854D500()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  return v1;
}

uint64_t sub_23854D574()
{
  v64 = sub_23875A9F0();
  v1 = *(v64 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v64);
  v45 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A790, &qword_238765D10);
  v4 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v6 = &v43 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v43 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - v14;
  v63 = sub_238758680();
  v16 = *(v63 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v63);
  v65 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v59 = v0;
  v21 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);
  v57 = *(v21 + 16);
  if (!v57)
  {
    return 0;
  }

  v43 = &v43 - v20;
  v48 = v10;
  result = sub_23875ED50();
  v23 = 0;
  v52 = v21 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v53 = result;
  v50 = (v1 + 56);
  v51 = v16 + 16;
  v62 = (v1 + 48);
  v44 = (v1 + 32);
  v47 = (v1 + 8);
  v54 = (v16 + 8);
  v55 = v21;
  v24 = &qword_27DF0D390;
  v25 = v49;
  v60 = v15;
  v56 = v16;
  while (v23 < *(v21 + 16))
  {
    (*(v16 + 16))(v65, v52 + *(v16 + 72) * v23, v63);
    v61 = sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_238758530();
    v27 = v64;
    (*v50)(v15, 0, 1, v64);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23875C2D0();

    v28 = *(v58 + 48);
    v29 = v24;
    sub_23843981C(v15, v6, v24, &unk_238763350);
    sub_23843981C(v25, &v6[v28], v24, &unk_238763350);
    v30 = *v62;
    if ((*v62)(v6, 1, v27) == 1)
    {
      sub_238439884(v25, v24, &unk_238763350);
      sub_238439884(v15, v24, &unk_238763350);
      v26 = v30(&v6[v28], 1, v64);
      v21 = v55;
      if (v26 == 1)
      {
        sub_238439884(v6, &qword_27DF0D390, &unk_238763350);

LABEL_16:
        v39 = v56 + 32;
        v40 = v43;
        v41 = v63;
        (*(v56 + 32))(v43, v65, v63);
        v42 = sub_2387585B0();
        (*(v39 - 24))(v40, v41);
        return v42;
      }

      goto LABEL_4;
    }

    v31 = v48;
    sub_23843981C(v6, v48, v24, &unk_238763350);
    if (v30(&v6[v28], 1, v64) == 1)
    {
      v32 = v49;
      sub_238439884(v49, v24, &unk_238763350);
      sub_238439884(v60, v24, &unk_238763350);
      v33 = v31;
      v25 = v32;
      (*v47)(v33, v64);
      v21 = v55;
LABEL_4:
      sub_238439884(v6, &qword_27DF0A790, &qword_238765D10);

      goto LABEL_5;
    }

    v34 = v45;
    v35 = v64;
    (*v44)(v45, &v6[v28], v64);
    sub_238553318(&qword_27DF0A798, MEMORY[0x277CC8058]);
    v46 = sub_23875E9E0();
    v36 = *v47;
    (*v47)(v34, v35);
    v37 = v49;
    sub_238439884(v49, v29, &unk_238763350);
    sub_238439884(v60, v29, &unk_238763350);
    v38 = v31;
    v25 = v37;
    v36(v38, v35);
    sub_238439884(v6, v29, &unk_238763350);

    v21 = v55;
    v24 = v29;
    if (v46)
    {
      goto LABEL_16;
    }

LABEL_5:
    ++v23;
    result = (*v54)(v65, v63);
    v16 = v56;
    v15 = v60;
    if (v57 == v23)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23854DC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v64 - v3;
  v5 = sub_238758680();
  v83 = *(v5 - 8);
  v84 = v5;
  v6 = *(v83 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v64 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v64 - v13;
  v15 = sub_23875A9F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v74 = &v64 - v20;
  MEMORY[0x28223BE20](v21);
  v76 = &v64 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v64 - v24;
  v73 = v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v64 - v28;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_238439884(v14, &qword_27DF0D390, &unk_238763350);
  }

  v66 = v25;
  v67 = v4;
  v71 = v15;
  v72 = v16;
  v31 = *(v16 + 32);
  v70 = v29;
  v68 = v16 + 32;
  v65 = v31;
  v31(v29, v14, v15);
  v69 = v0;
  v82 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);
  v81 = *(v82 + 16);
  if (!v81)
  {
    return (*(v72 + 8))(v70, v71);
  }

  result = sub_23875ED50();
  v32 = 0;
  v33 = *(v69 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);
  v79 = v82 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v80 = v33;
  v78 = v83 + 16;
  v34 = (v83 + 8);
  while (1)
  {
    if (v32 >= *(v82 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v83 + 16))(v8, v79 + *(v83 + 72) * v32, v84);
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v35 = sub_238758570();
    v37 = v36;
    v38 = [v80 primaryAccountIdentifier];
    v39 = sub_23875EA80();
    v41 = v40;

    if (!v37)
    {

      goto LABEL_6;
    }

    if (v35 == v39 && v37 == v41)
    {
      break;
    }

    v42 = sub_23875F630();

    if (v42)
    {
      goto LABEL_17;
    }

LABEL_6:
    ++v32;
    result = (*v34)(v8, v84);
    if (v81 == v32)
    {
      return (*(v72 + 8))(v70, v71);
    }
  }

LABEL_17:
  v43 = v84;
  v44 = v83 + 32;
  v45 = v77;
  (*(v83 + 32))(v77, v8, v84);
  v46 = v76;
  sub_238758530();
  (*(v44 - 24))(v45, v43);
  v47 = v66;
  v48 = v46;
  v49 = v71;
  v50 = v65;
  v65(v66, v48, v71);
  sub_238553318(&qword_27DF0A798, MEMORY[0x277CC8058]);
  v51 = v70;
  if (sub_23875E9E0())
  {
    v52 = *(v69 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion + 8);
    (*(v69 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion))(1);
    v53 = *(v72 + 8);
    v53(v47, v49);
    return (v53)(v51, v49);
  }

  else
  {
    v54 = sub_23875ED80();
    (*(*(v54 - 8) + 56))(v67, 1, 1, v54);
    v55 = v72;
    v56 = *(v72 + 16);
    v56(v74, v47, v49);
    v56(v75, v51, v49);
    v57 = v69;

    v58 = sub_23875ED40();
    v59 = *(v55 + 80);
    v60 = (v59 + 40) & ~v59;
    v61 = (v73 + v59 + v60) & ~v59;
    v62 = swift_allocObject();
    *(v62 + 2) = v58;
    *(v62 + 3) = MEMORY[0x277D85700];
    *(v62 + 4) = v57;
    v50(&v62[v60], v74, v49);
    v50(&v62[v61], v75, v49);
    sub_2386C3BA4(0, 0, v67, &unk_23876EA78, v62);

    v63 = *(v55 + 8);
    v63(v47, v49);
    return (v63)(v51, v49);
  }
}

uint64_t sub_23854E3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_23875ED50();
  v6[3] = sub_23875ED40();
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_2384E80A8;

  return sub_23854E4C0(a5, a6);
}

uint64_t sub_23854E4C0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_23875C1E0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v7 = sub_23875A9F0();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_238758680();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v14 = sub_23875AAB0();
  v3[17] = v14;
  v15 = *(v14 - 8);
  v3[18] = v15;
  v16 = *(v15 + 64) + 15;
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  sub_23875ED50();
  v3[21] = sub_23875ED40();
  v18 = sub_23875ECE0();
  v3[22] = v18;
  v3[23] = v17;

  return MEMORY[0x2822009F8](sub_23854E71C, v18, v17);
}

uint64_t sub_23854E71C()
{
  v1 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  if (*(v0 + 256))
  {
    v2 = *(v0 + 168);
    v3 = *(v0 + 72);

    sub_23875C120();
    v4 = sub_23875C1B0();
    v5 = sub_23875EFE0();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 72);
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2383F8000, v4, v5, "Inconsistent state! The pass is being relinked already!", v10, 2u);
      MEMORY[0x23EE64DF0](v10, -1, -1);
    }

    (*(v9 + 8))(v7, v8);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    v14 = *(v0 + 120);
    v13 = *(v0 + 128);
    v15 = *(v0 + 96);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    v18 = *(v0 + 8);

    return v18();
  }

  else
  {
    v20 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 257) = 1;

    sub_23875C2E0();
    *(v0 + 192) = *(v20 + 16);
    v21 = *(MEMORY[0x277CC72C8] + 4);
    v22 = swift_task_alloc();
    *(v0 + 200) = v22;
    *v22 = v0;
    v22[1] = sub_23854E980;
    v23 = *(v0 + 24);

    return MEMORY[0x282117DB8](v23);
  }
}

uint64_t sub_23854E980()
{
  v2 = *(*v1 + 200);
  v3 = *v1;
  v3[26] = v0;

  if (v0)
  {
    v4 = v3[22];
    v5 = v3[23];

    return MEMORY[0x2822009F8](sub_23854F3B0, v4, v5);
  }

  else
  {
    v6 = *(MEMORY[0x277CC72C8] + 4);
    v7 = swift_task_alloc();
    v3[27] = v7;
    *v7 = v3;
    v7[1] = sub_23854EAF4;
    v8 = v3[24];
    v9 = v3[4];

    return MEMORY[0x282117DB8](v9);
  }
}

uint64_t sub_23854EAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = sub_23854F694;
  }

  else
  {
    v7 = sub_23854EC30;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_23854EC30()
{
  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[4];
  v5 = v0[5];
  v6 = [*(v5 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass) primaryAccountIdentifier];
  v7 = sub_23875EA80();
  v9 = v8;

  v0[29] = v9;
  (*(v2 + 16))(v1, v4, v3);
  (*(v2 + 56))(v1, 0, 1, v3);
  v10 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v11 = *(MEMORY[0x277CC72B8] + 4);
  v12 = swift_task_alloc();
  v0[30] = v12;
  *v12 = v0;
  v12[1] = sub_23854ED88;
  v13 = v0[24];
  v14 = v0[20];
  v15 = v0[16];

  return MEMORY[0x282117DA8](v14, v7, v9, v15, v5 + v10, 0, 0);
}

uint64_t sub_23854ED88()
{
  v2 = *v1;
  v3 = (*v1)[30];
  v4 = *v1;
  (*v1)[31] = v0;

  v5 = v2[29];
  sub_238439884(v2[16], &qword_27DF0D390, &unk_238763350);

  v6 = v2[23];
  v7 = v2[22];
  if (v0)
  {
    v8 = sub_23854F978;
  }

  else
  {
    v8 = sub_23854EF08;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_23854EF08()
{
  v60 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);

  (*(v4 + 16))(v3, v2, v5);
  v6 = (*(v4 + 88))(v3, v5);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  if (v6 != *MEMORY[0x277CC81A0])
  {
    (*(v7 + 8))(*(v0 + 152), v9);
    goto LABEL_8;
  }

  (*(v7 + 96))(*(v0 + 152), v9);
  if (*(*v8 + 16) != 1)
  {
    v23 = *v8;

LABEL_8:
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 144);
    sub_238553038();
    v27 = swift_allocError();
    swift_willThrow();
    (*(v26 + 8))(v24, v25);
    v28 = *(v0 + 64);
    v29 = *(v0 + 40);
    sub_23875C120();

    v30 = v27;
    v31 = sub_23875C1B0();
    v32 = sub_23875EFE0();

    v33 = os_log_type_enabled(v31, v32);
    v35 = *(v0 + 56);
    v34 = *(v0 + 64);
    v36 = *(v0 + 48);
    if (v33)
    {
      v58 = *(v0 + 64);
      v37 = *(v0 + 40);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v59 = v40;
      *v38 = 136315394;
      v41 = sub_238757B40();
      v57 = v36;
      v43 = sub_2384615AC(v41, v42, &v59);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2112;
      v44 = v27;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v38 + 14) = v45;
      *v39 = v45;
      _os_log_impl(&dword_2383F8000, v31, v32, "Failed to disconnect an account for %s: %@", v38, 0x16u);
      sub_238439884(v39, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v39, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x23EE64DF0](v40, -1, -1);
      MEMORY[0x23EE64DF0](v38, -1, -1);

      (*(v35 + 8))(v58, v57);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    v46 = *(v0 + 40);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 16) = v27;

    sub_23875C2E0();
    goto LABEL_12;
  }

  v10 = *(v0 + 96);
  v11 = *(v0 + 80);
  v12 = *(v0 + 88);
  v13 = *(v0 + 32);
  (*(*(v0 + 112) + 16))(*(v0 + 120), *v8 + ((*(*(v0 + 112) + 80) + 32) & ~*(*(v0 + 112) + 80)), *(v0 + 104));

  sub_238758530();
  v14 = MEMORY[0x23EE5F4A0](v10, v13);
  (*(v12 + 8))(v10, v11);
  if ((v14 & 1) == 0)
  {
    (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
    goto LABEL_8;
  }

  v15 = *(v0 + 160);
  v16 = *(v0 + 136);
  v17 = *(v0 + 144);
  v19 = *(v0 + 112);
  v18 = *(v0 + 120);
  v20 = *(v0 + 104);
  v21 = *(v0 + 40) + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion;
  v22 = *(v21 + 8);
  (*v21)(1);
  (*(v19 + 8))(v18, v20);
  (*(v17 + 8))(v15, v16);
LABEL_12:
  v47 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 258) = 0;

  sub_23875C2E0();
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v51 = *(v0 + 120);
  v50 = *(v0 + 128);
  v52 = *(v0 + 96);
  v54 = *(v0 + 64);
  v53 = *(v0 + 72);

  v55 = *(v0 + 8);

  return v55();
}

uint64_t sub_23854F3B0()
{
  v35 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 208);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  sub_23875C120();

  v5 = v2;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v33 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 136315394;
    v16 = sub_238757B40();
    v32 = v11;
    v18 = sub_2384615AC(v16, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to disconnect an account for %s: %@", v13, 0x16u);
    sub_238439884(v14, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v10 + 8))(v33, v32);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;

  sub_23875C2E0();
  v22 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 258) = 0;

  sub_23875C2E0();
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23854F694()
{
  v35 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 224);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  sub_23875C120();

  v5 = v2;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v33 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 136315394;
    v16 = sub_238757B40();
    v32 = v11;
    v18 = sub_2384615AC(v16, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to disconnect an account for %s: %@", v13, 0x16u);
    sub_238439884(v14, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v10 + 8))(v33, v32);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;

  sub_23875C2E0();
  v22 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 258) = 0;

  sub_23875C2E0();
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23854F978()
{
  v35 = v0;
  v1 = *(v0 + 168);

  v2 = *(v0 + 248);
  v3 = *(v0 + 64);
  v4 = *(v0 + 40);
  sub_23875C120();

  v5 = v2;
  v6 = sub_23875C1B0();
  v7 = sub_23875EFE0();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 56);
  v9 = *(v0 + 64);
  v11 = *(v0 + 48);
  if (v8)
  {
    v33 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34 = v15;
    *v13 = 136315394;
    v16 = sub_238757B40();
    v32 = v11;
    v18 = sub_2384615AC(v16, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    _os_log_impl(&dword_2383F8000, v6, v7, "Failed to disconnect an account for %s: %@", v13, 0x16u);
    sub_238439884(v14, &qword_27DF09930, &unk_2387638C0);
    MEMORY[0x23EE64DF0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x23EE64DF0](v15, -1, -1);
    MEMORY[0x23EE64DF0](v13, -1, -1);

    (*(v10 + 8))(v33, v32);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v21 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 16) = v2;

  sub_23875C2E0();
  v22 = *(v0 + 40);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 258) = 0;

  sub_23875C2E0();
  v24 = *(v0 + 152);
  v23 = *(v0 + 160);
  v26 = *(v0 + 120);
  v25 = *(v0 + 128);
  v27 = *(v0 + 96);
  v29 = *(v0 + 64);
  v28 = *(v0 + 72);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_23854FC5C()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v3 = sub_238757B60();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID;
  v5 = sub_23875BCB0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);

  v7 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion + 8);

  v8 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__selectedAccountFQAI;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09398, &unk_23876B810);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__disconnectAccountError;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CA18, &unk_23876EA80);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel__isLoading;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09EF0, &qword_2387663B0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  return v0;
}

uint64_t sub_23854FE1C()
{
  sub_23854FC5C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BankConnectManageConnectionViewModel()
{
  result = qword_27DF0DF10;
  if (!qword_27DF0DF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23854FEC8()
{
  v0 = sub_238757B60();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = sub_23875BCB0();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_2385500AC(319, &qword_27DF09460, &qword_27DF0D390, &unk_238763350);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_2385500AC(319, &qword_27DF0DF20, &qword_27DF0CA20, &qword_23876B820);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_238461990();
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_2385500AC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_23875C2F0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_238550100@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BankConnectManageConnectionViewModel();
  result = sub_23875C260();
  *a1 = result;
  return result;
}

uint64_t sub_238550140@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF38, &qword_23876EC50);
  v38 = *(v2 - 8);
  v39 = v2;
  v3 = *(v38 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v31 - v4;
  v40 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF40, &qword_23876EC58);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0DF48, &qword_23876EC60);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0C688, &qword_23876AE20);
  v8 = sub_23843A3E8(&qword_27DF0DF50, &qword_27DF0DF48, &qword_23876EC60);
  v9 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
  v10 = sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
  v44 = v9;
  v45 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = v6;
  v45 = v7;
  v46 = v8;
  v47 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v37 = v5;
  sub_23875C790();
  v12 = *v1;
  v13 = v1[1];
  v14 = *(v1 + 16);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v15 = v44;
  sub_23875C490();
  sub_23854D574();
  v17 = v16;

  sub_23875C490();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v18 = qword_2814F1B90;
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = sub_23875EA50();
  v22 = [v18 localizedStringForKey:v19 value:v20 table:v21];

  v23 = sub_23875EA80();
  v25 = v24;
  v35 = v24;

  v42 = v23;
  v43 = v25;
  v41 = v15 != 0;
  v26 = sub_23875E330();
  v34 = v31;
  v32 = v46;
  MEMORY[0x28223BE20](v26);
  MEMORY[0x28223BE20](v27);
  v33 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v31[1] = v17;
  sub_23843A3E8(&qword_27DF0DF60, &qword_27DF0DF38, &qword_23876EC50);
  sub_2384397A8();
  sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v28 = v39;
  v29 = v37;
  sub_23875DEC0();

  (*(v38 + 8))(v29, v28);
}

uint64_t sub_238550710@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v12[2] = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF48, &qword_23876EC60);
  v3 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v5 = v12 - v4;
  sub_23875ED50();
  v12[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v5 = sub_23875D020();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF68, &unk_23876EC68);
  sub_238550A14(a1, &v5[*(v6 + 44)]);
  v17 = *(a1 + 24);
  v14[0] = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  v15 = *a1;
  v16 = *(a1 + 16);
  v7 = swift_allocObject();
  v8 = a1[1];
  *(v7 + 16) = *a1;
  *(v7 + 32) = v8;
  *(v7 + 48) = *(a1 + 4);
  sub_23843981C(&v15, v14, &qword_27DF0DF70, &qword_23876EC78);
  sub_23843981C(&v17, v14, &qword_27DF0A118, &unk_2387655C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C688, &qword_23876AE20);
  sub_23843A3E8(&qword_27DF0DF50, &qword_27DF0DF48, &qword_23876EC60);
  v9 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(255);
  v10 = sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
  *&v14[0] = v9;
  *(&v14[0] + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_23875DED0();

  sub_238439884(v5, &qword_27DF0DF48, &qword_23876EC60);
}

uint64_t sub_238550A14@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF78, &qword_23876EC80);
  v3 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF80, &qword_23876EC88);
  v34 = *(v36 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v38 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  sub_23875ED50();
  v37 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = sub_23875D760();
  MEMORY[0x28223BE20](v13);
  *(&v33 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF88, &qword_23876EC90);
  sub_23843A3E8(&qword_27DF0DF90, &qword_27DF0DF88, &qword_23876EC90);
  v33 = v12;
  v14 = sub_23875C410();
  MEMORY[0x28223BE20](v14);
  *(&v33 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DF98, &qword_23876EC98);
  sub_23843A3E8(&qword_27DF0DFA0, &qword_27DF0DF98, &qword_23876EC98);
  v15 = v7;
  sub_23875D1D0();
  v16 = sub_23875D770();
  sub_23875C3D0();
  v17 = v36;
  v18 = &v7[*(v35 + 36)];
  *v18 = v16;
  *(v18 + 1) = v19;
  *(v18 + 2) = v20;
  *(v18 + 3) = v21;
  *(v18 + 4) = v22;
  v18[40] = 0;
  v23 = v33;
  v24 = v34;
  v25 = *(v34 + 16);
  v26 = v38;
  v25(v38, v33, v17);
  v27 = v40;
  sub_23843981C(v15, v40, &qword_27DF0DF78, &qword_23876EC80);
  v28 = v39;
  v25(v39, v26, v17);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFA8, &qword_23876ECA0);
  v30 = &v28[*(v29 + 48)];
  *v30 = 0;
  v30[8] = 1;
  sub_23843981C(v27, &v28[*(v29 + 64)], &qword_27DF0DF78, &qword_23876EC80);
  sub_238439884(v15, &qword_27DF0DF78, &qword_23876EC80);
  v31 = *(v24 + 8);
  v31(v23, v17);
  sub_238439884(v27, &qword_27DF0DF78, &qword_23876EC80);
  v31(v26, v17);
}

uint64_t sub_238550E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFC8, &qword_23876ECF0);
  sub_238550F3C(a1, a2 + *(v4 + 44));
}

uint64_t sub_238550F3C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFD0, &qword_23876ECF8);
  v3 = *(*(v60 - 8) + 64);
  MEMORY[0x28223BE20](v60);
  v64 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v57 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC0, &unk_23876ED00);
  v8 = *(*(v59 - 8) + 64);
  MEMORY[0x28223BE20](v59);
  v62 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v57 - v11);
  sub_23875ED50();
  v61 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F1B90;
  v14 = sub_23875EA50();
  v15 = sub_23875EA50();
  v16 = sub_23875EA50();
  v17 = [v13 localizedStringForKey:v14 value:v15 table:v16];

  v18 = sub_23875EA80();
  v58 = v19;

  v20 = a1;
  v22 = *a1;
  v21 = a1[1];
  v23 = *(v20 + 16);
  v24 = sub_2385534CC();
  v26 = v25;
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v27 = sub_23875C490();
  v28 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v29 = *(type metadata accessor for BankConnectConnectionHeaderView() + 24);
  v30 = sub_238757B60();
  (*(*(v30 - 8) + 16))(v12 + v29, v27 + v28, v30);

  v31 = v58;
  *v12 = v18;
  v12[1] = v31;
  v12[2] = v24;
  v12[3] = v26;
  LOBYTE(v27) = sub_23875D7A0();
  sub_23875C3D0();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0CAC8, &qword_23876B8F0) + 36);
  *v40 = v27;
  *(v40 + 1) = v33;
  *(v40 + 2) = v35;
  *(v40 + 3) = v37;
  *(v40 + 4) = v39;
  v40[40] = 0;
  LOBYTE(v27) = sub_23875D770();
  sub_23875C3D0();
  v41 = v12 + *(v59 + 36);
  *v41 = v27;
  *(v41 + 1) = v42;
  *(v41 + 2) = v43;
  *(v41 + 3) = v44;
  *(v41 + 4) = v45;
  v41[40] = 0;
  *v7 = sub_23875D030();
  *(v7 + 1) = 0x4024000000000000;
  v7[16] = 0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFD8, &qword_23876ED10);
  sub_238551924(v20, &v7[*(v46 + 44)]);
  LOBYTE(v27) = sub_23875D770();
  sub_23875C3D0();
  v47 = &v7[*(v60 + 36)];
  *v47 = v27;
  *(v47 + 1) = v48;
  *(v47 + 2) = v49;
  *(v47 + 3) = v50;
  *(v47 + 4) = v51;
  v47[40] = 0;
  v52 = v62;
  sub_23843981C(v12, v62, &qword_27DF0CAC0, &unk_23876ED00);
  v53 = v64;
  sub_23843981C(v7, v64, &qword_27DF0DFD0, &qword_23876ECF8);
  v54 = v63;
  sub_23843981C(v52, v63, &qword_27DF0CAC0, &unk_23876ED00);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFE0, &qword_23876ED18);
  sub_23843981C(v53, v54 + *(v55 + 48), &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v7, &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v12, &qword_27DF0CAC0, &unk_23876ED00);
  sub_238439884(v53, &qword_27DF0DFD0, &qword_23876ECF8);
  sub_238439884(v52, &qword_27DF0CAC0, &unk_23876ED00);
}

uint64_t sub_23855145C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = type metadata accessor for BankConnectAuthorizationMismatchedAccountView(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v25 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *a1;
  v8 = a1[1];
  v9 = *(a1 + 16);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v23 = v8;
  v24 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v10 = sub_23875C490();
  v11 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution;
  v12 = v3;
  v13 = *(v3 + 20);
  v14 = sub_238757B60();
  (*(*(v14 - 8) + 16))(&v6[v13], v10 + v11, v14);

  v15 = sub_23875C490();
  v16 = OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_previousConsentUUID;
  v17 = *(v12 + 24);
  v18 = sub_23875BCB0();
  (*(*(v18 - 8) + 16))(&v6[v17], v15 + v16, v18);

  v28 = *(a1 + 3);
  v19 = swift_allocObject();
  v20 = *(a1 + 1);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 48) = a1[4];
  *v6 = v24;
  v21 = &v6[*(v12 + 28)];
  *v21 = sub_238553388;
  v21[1] = v19;
  sub_2384D63F0();
  sub_23843981C(&v28, v27, &qword_27DF0A118, &unk_2387655C0);
  sub_238553318(&qword_27DF0C658, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
  sub_23875DE20();
  sub_238553AE0(v6, type metadata accessor for BankConnectAuthorizationMismatchedAccountView);
}

uint64_t sub_2385517AC(char a1, uint64_t *a2)
{
  if (a1)
  {
    v3 = *a2;
    v4 = a2[1];
    v5 = *(a2 + 16);
    type metadata accessor for BankConnectManageConnectionViewModel();
    sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
    v6 = sub_23875C490();
    v8 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion);
    v7 = *(v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_completion + 8);

    v8(1);
  }

  v10 = *(a2 + 3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t sub_2385518B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

uint64_t sub_238551924@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = a1;
  v57 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  v3 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57);
  v58 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v51[-v6];
  sub_23875ED50();
  v59 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  v66 = v13;
  v67 = v15;
  sub_2384397A8();
  v16 = sub_23875DAA0();
  v18 = v17;
  LOBYTE(v15) = v19;
  sub_23875D890();
  v20 = sub_23875D9E0();
  v22 = v21;
  v24 = v23;
  sub_2384397FC(v16, v18, v15 & 1);

  LODWORD(v66) = sub_23875D440();
  v54 = sub_23875DA20();
  v53 = v25;
  LOBYTE(v16) = v26;
  v55 = v27;
  sub_2384397FC(v20, v22, v24 & 1);

  v52 = sub_23875D770();
  sub_23875C3D0();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  LOBYTE(v11) = v16 & 1;
  LOBYTE(v66) = v16 & 1;
  LOBYTE(v62) = 0;
  v36 = *v56;
  v37 = v56[1];
  v38 = *(v56 + 16);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v39 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_accounts);

  sub_23875C4A0();
  swift_getKeyPath();
  v40 = v57;
  v41 = v7 + *(v57 + 24);
  sub_23875C7C0();

  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D340, &qword_238764740);
  swift_storeEnumTagMultiPayload();
  *(v7 + *(v40 + 20)) = v39;
  v42 = v58;
  sub_238553A7C(v7, v58);
  v43 = v54;
  *&v62 = v54;
  v44 = v53;
  *(&v62 + 1) = v53;
  LOBYTE(v63) = v11;
  *(&v63 + 1) = *v61;
  DWORD1(v63) = *&v61[3];
  v45 = v55;
  *(&v63 + 1) = v55;
  LOBYTE(v15) = v52;
  LOBYTE(v64) = v52;
  *(&v64 + 1) = *v60;
  DWORD1(v64) = *&v60[3];
  *(&v64 + 1) = v29;
  *v65 = v31;
  *&v65[8] = v33;
  *&v65[16] = v35;
  v65[24] = 0;
  v46 = v62;
  v47 = v63;
  *(a2 + 57) = *&v65[9];
  v48 = *v65;
  a2[2] = v64;
  a2[3] = v48;
  *a2 = v46;
  a2[1] = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFE8, &qword_23876ED58);
  sub_238553A7C(v42, a2 + *(v49 + 48));
  sub_23843981C(&v62, &v66, &qword_27DF0BAE8, &unk_23876A630);
  sub_238553AE0(v7, type metadata accessor for BankConnectAccountConnectionPickerView);
  sub_238553AE0(v42, type metadata accessor for BankConnectAccountConnectionPickerView);
  v66 = v43;
  v67 = v44;
  v68 = v11;
  *v69 = *v61;
  *&v69[3] = *&v61[3];
  v70 = v45;
  v71 = v15;
  *v72 = *v60;
  *&v72[3] = *&v60[3];
  v73 = v29;
  v74 = v31;
  v75 = v33;
  v76 = v35;
  v77 = 0;
  sub_238439884(&v66, &qword_27DF0BAE8, &unk_23876A630);
}

uint64_t sub_238551EF8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();
}

uint64_t sub_238551F74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D390, &unk_238763350);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_23843981C(a1, &v13 - v9, &qword_27DF0D390, &unk_238763350);
  v11 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23843981C(v10, v7, &qword_27DF0D390, &unk_238763350);

  sub_23875C2E0();
  return sub_238439884(v10, &qword_27DF0D390, &unk_238763350);
}

uint64_t sub_2385520A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_23875D020();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB0, &qword_23876ECA8);
  sub_238552178(a1, a2 + *(v4 + 44));
}

uint64_t sub_238552178@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFB8, &qword_23876ECB0);
  v3 = *(*(v33[0] - 8) + 64);
  MEMORY[0x28223BE20](v33[0]);
  v34 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = (v33 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = (v33 - v13);
  sub_23875ED50();
  v33[1] = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_2385525AC(v14);
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v18 = sub_238553720();
  v20 = v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09580, &qword_238763900);
  v22 = v7 + v21[9];
  sub_23875CFC0();
  v37 = *(a1 + 3);
  v23 = swift_allocObject();
  v24 = *(a1 + 1);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 48) = a1[4];
  *v7 = v18;
  v7[1] = v20;
  *(v7 + v21[10]) = 0;
  v25 = (v7 + v21[11]);
  *v25 = sub_2385539D8;
  v25[1] = v23;
  sub_2384D63F0();
  sub_23843981C(&v37, v36, &qword_27DF0A118, &unk_2387655C0);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  LOBYTE(v15) = v36[0];
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v15;
  v28 = (v7 + *(v33[0] + 36));
  *v28 = KeyPath;
  v28[1] = sub_238477BAC;
  v28[2] = v27;
  sub_23843981C(v14, v11, &qword_27DF0AAD8, &qword_23876B8C0);
  v29 = v34;
  sub_23843981C(v7, v34, &qword_27DF0DFB8, &qword_23876ECB0);
  v30 = v35;
  sub_23843981C(v11, v35, &qword_27DF0AAD8, &qword_23876B8C0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DFC0, &qword_23876ECE8);
  sub_23843981C(v29, v30 + *(v31 + 48), &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v7, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v14, &qword_27DF0AAD8, &qword_23876B8C0);
  sub_238439884(v29, &qword_27DF0DFB8, &qword_23876ECB0);
  sub_238439884(v11, &qword_27DF0AAD8, &qword_23876B8C0);
}

uint64_t sub_2385525AC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F1B90;
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  v10 = v9;

  v11 = *v1;
  v12 = v1[1];
  v13 = *(v1 + 16);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  sub_23875C490();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  v14 = v22;
  v22 = *(v1 + 3);
  v15 = swift_allocObject();
  v16 = *(v1 + 1);
  *(v15 + 16) = *v1;
  *(v15 + 32) = v16;
  *(v15 + 48) = v1[4];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AAD8, &qword_23876B8C0);
  v18 = v17[9];
  sub_2384D63F0();
  sub_23843981C(&v22, &v21, &qword_27DF0A118, &unk_2387655C0);
  result = sub_23875D610();
  *a1 = v8;
  a1[1] = v10;
  *(a1 + v17[10]) = v14;
  v20 = (a1 + v17[11]);
  *v20 = sub_238553A74;
  v20[1] = v15;
  return result;
}

uint64_t sub_238552824(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  sub_23875C490();
  sub_23854DC58();
}

uint64_t sub_2385528C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_238550140(a1);
}

uint64_t sub_238552900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v19 - v6;
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  v13 = sub_23875EA80();
  v15 = v14;

  v19[0] = v13;
  v19[1] = v15;
  sub_23875C3B0();
  v16 = sub_23875C3C0();
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_2384397A8();

  sub_23875E220();
}

uint64_t sub_238552B68(void (*a1)(uint64_t))
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_238552C18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2387632F0;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_238448C58();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;
  v7 = qword_2814F0880;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = qword_2814F1B90;
  v9 = sub_23875EA50();
  v10 = sub_23875EA50();
  v11 = sub_23875EA50();
  v12 = [v8 localizedStringForKey:v9 value:v10 table:v11];

  sub_23875EA80();
  sub_23875EAA0();

  sub_2384397A8();
  v13 = sub_23875DAA0();
  v15 = v14;
  LOBYTE(v9) = v16;
  v18 = v17;

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v9 & 1;
  *(a3 + 24) = v18;
  return result;
}

uint64_t sub_238552E48@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238552EC8(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v4 = v2;
  return sub_23875C2E0();
}

uint64_t sub_238552F44@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23875C2D0();

  *a2 = v5;
  return result;
}

uint64_t sub_238552FC4(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23875C2E0();
}

unint64_t sub_238553038()
{
  result = qword_27DF0DF28;
  if (!qword_27DF0DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DF28);
  }

  return result;
}

uint64_t sub_23855308C(uint64_t a1)
{
  v4 = *(sub_23875A9F0() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2384494A4;

  return sub_23854E3FC(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

unint64_t sub_2385531CC()
{
  result = qword_27DF0DF30;
  if (!qword_27DF0DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0DF30);
  }

  return result;
}

uint64_t sub_23855322C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_238553288(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_238553318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2385533A0()
{
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v0 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v1 = [v0 primaryAccountNumberSuffix];

  if (!v1)
  {
    sub_23875EA80();
    v1 = sub_23875EA50();
  }

  v2 = PKMaskedPaymentPAN();

  if (!v2)
  {
    return 0;
  }

  v3 = sub_23875EA80();

  return v3;
}

uint64_t sub_2385534CC()
{
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v0 = qword_2814F1B90;
  v1 = sub_23875EA50();
  v2 = sub_23875EA50();
  v3 = sub_23875EA50();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  sub_23875EA80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_238763B60;
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v6 = *(sub_23875C490() + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_paymentPass);

  v7 = [v6 localizedDescription];

  v8 = sub_23875EA80();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v12 = sub_238448C58();
  *(v5 + 64) = v12;
  *(v5 + 32) = v8;
  *(v5 + 40) = v10;
  v13 = sub_2385533A0();
  *(v5 + 96) = v11;
  *(v5 + 104) = v12;
  *(v5 + 72) = v13;
  *(v5 + 80) = v14;
  v15 = sub_23875EAB0();

  return v15;
}

uint64_t sub_238553720()
{
  v0 = sub_238757B60();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2387632F0;
  type metadata accessor for BankConnectManageConnectionViewModel();
  sub_238553318(&qword_27DF0DF58, type metadata accessor for BankConnectManageConnectionViewModel);
  v6 = sub_23875C490();
  (*(v1 + 16))(v4, v6 + OBJC_IVAR____TtC12FinanceKitUI36BankConnectManageConnectionViewModel_institution, v0);

  v7 = sub_238757B50();
  v9 = v8;
  (*(v1 + 8))(v4, v0);
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_238448C58();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v10 = qword_2814F1B90;
  v11 = sub_23875EA50();
  v12 = sub_23875EA50();
  v13 = sub_23875EA50();
  v14 = [v10 localizedStringForKey:v11 value:v12 table:v13];

  sub_23875EA80();
  v15 = sub_23875EAA0();

  return v15;
}

uint64_t sub_2385539D8()
{
  v2 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  return sub_23875E1C0();
}

uint64_t objectdestroy_49Tm()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_2383FC164();
  v4 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238553A7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BankConnectAccountConnectionPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238553AE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238553BA8()
{
  result = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_238553C3C()
{
  sub_23875B940();
  if (v0 <= 0x3F)
  {
    sub_238553DB4(319, &qword_2814F08C0);
    if (v1 <= 0x3F)
    {
      sub_238556DD4(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_238556DD4(319, &qword_2814F1158, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_238553DB4(319, &qword_27DF0E010);
          if (v4 <= 0x3F)
          {
            sub_238553DB4(319, &qword_27DF0E018);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_238553DB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_23875F1F0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_238553E1C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v5 = sub_23875BC40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v48 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v53 = &v48 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v19 = v18[6];
  v20 = sub_23875B940();
  v49 = *(*(v20 - 8) + 56);
  v50 = v19;
  v49(a3 + v19, 1, 1, v20);
  v21 = v18[7];
  v56 = v6;
  v57 = v5;
  v51 = *(v6 + 56);
  v52 = v21;
  v51(a3 + v21, 1, 1, v5);
  v22 = [a1 returnPolicyURL];
  sub_23875B8B0();

  v23 = [a1 returnPolicyDescription];
  if (v23)
  {
    v24 = v23;
    v25 = sub_23875EA80();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = (a3 + v18[5]);
  *v28 = v25;
  v28[1] = v27;
  v29 = [a1 returnManagementURL];
  v30 = v57;
  if (v29)
  {
    v31 = v29;
    sub_23875B8B0();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = 1;
  v49(v17, v32, 1, v20);
  sub_2385309FC(v17, a3 + v50, &qword_27DF0D040, &qword_2387676A0);
  v34 = [a1 returnDeadline];
  v35 = v53;
  if (v34)
  {
    v36 = v34;
    sub_23875BBE0();

    v33 = 0;
  }

  v51(v35, v33, 1, v30);
  v37 = v18[8];
  v38 = v52;
  sub_2385309FC(v35, a3 + v52, &qword_27DF12E00, &unk_238763FC0);
  *(a3 + v37) = sub_238759790();
  *(a3 + v18[9]) = v55 & 1;
  v39 = v54;
  sub_23843981C(a3 + v38, v54, &qword_27DF12E00, &unk_238763FC0);
  v40 = v56;
  v41 = (*(v56 + 48))(v39, 1, v30);
  if (v41 == 1)
  {

    v42 = 0;
LABEL_15:
    v47 = a3 + v18[10];
    *v47 = v42;
    *(v47 + 8) = v41 == 1;
    return;
  }

  v43 = v48;
  (*(v40 + 32))(v48, v39, v30);
  sub_23875BB60();
  v45 = v44;

  v46 = ceil(v45 / 86400.0);
  (*(v40 + 8))(v43, v30);
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v46 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v46 < 9.22337204e18)
  {
    v42 = v46;
    goto LABEL_15;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_2385542DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v45 = a2;
  v5 = sub_23875BC40();
  v43 = *(v5 - 8);
  v6 = v43;
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v5);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v42 - v17;
  v19 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v20 = v19[6];
  v21 = (a3 + v19[5]);
  v22 = sub_23875B940();
  (*(*(v22 - 8) + 56))(a3 + v20, 1, 1, v22);
  v23 = v19[7];
  v24 = *(v6 + 56);
  v25 = v5;
  v24(a3 + v23, 1, 1, v5);
  v26 = v19[8];
  sub_238758D70();
  *v21 = sub_238758DA0();
  v21[1] = v27;
  sub_238758D90();
  v28 = a3 + v20;
  v29 = a1;
  sub_2385309FC(v18, v28, &qword_27DF0D040, &qword_2387676A0);
  sub_238758D60();
  sub_2385309FC(v14, a3 + v23, &qword_27DF12E00, &unk_238763FC0);
  *(a3 + v26) = sub_238758D80();
  *(a3 + v19[9]) = v45;
  v30 = a3 + v23;
  v32 = v43;
  v31 = v44;
  sub_23843981C(v30, v44, &qword_27DF12E00, &unk_238763FC0);
  v33 = (*(v32 + 48))(v31, 1, v25);
  if (v33 == 1)
  {
    v34 = sub_238758DB0();
    result = (*(*(v34 - 8) + 8))(v29, v34);
    v36 = 0;
LABEL_7:
    v41 = a3 + v19[10];
    *v41 = v36;
    *(v41 + 8) = v33 == 1;
    return result;
  }

  v37 = v42;
  (*(v32 + 32))(v42, v31, v25);
  sub_23875BB60();
  v39 = ceil(v38 / 86400.0);
  v40 = sub_238758DB0();
  (*(*(v40 - 8) + 8))(v29, v40);
  result = (*(v32 + 8))(v37, v25);
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v39 < 9.22337204e18)
  {
    v36 = v39;
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2385546E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  sub_23843981C(v0 + v9[7], v8, &qword_27DF12E00, &unk_238763FC0);
  v10 = sub_23875BC40();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_238439884(v8, &qword_27DF12E00, &unk_238763FC0);
  if (v11 != 1)
  {
    v12 = *(v0 + v9[8]);
    if (v12 != 2 && (v12 & 1) != 0)
    {
      v13 = v0 + v9[10];
      if ((*(v13 + 8) & 1) == 0 && *v13 > 0)
      {
        return 1;
      }
    }
  }

  if (*(v0 + v9[9]))
  {
    return 0;
  }

  sub_23843981C(v0 + v9[6], v4, &qword_27DF0D040, &qword_2387676A0);
  v15 = sub_23875B940();
  v14 = (*(*(v15 - 8) + 48))(v4, 1, v15) != 1;
  sub_238439884(v4, &qword_27DF0D040, &qword_2387676A0);
  return v14;
}

uint64_t sub_238554904(uint64_t a1, uint64_t a2)
{
  v3 = sub_23875B7F0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v42 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23875BE40();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v39[3] = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23875BE20();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_23875BD20();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09980, &unk_2387640E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09988, &unk_2387675D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = v39 - v19;
  v21 = sub_23875BAD0();
  v40 = *(v21 - 8);
  v41 = v21;
  v22 = *(v40 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2387591F0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = v39 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a2;
  if (sub_23875BD70())
  {
    (*(v26 + 104))(v29, *MEMORY[0x277CC77C8], v25);
  }

  else
  {
    v30 = sub_23875BD90();
    (*(v26 + 104))(v29, *MEMORY[0x277CC77C8], v25);
    if ((v30 & 1) == 0)
    {
      v39[2] = "EFUNDS_DAYS_REMAINING";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2387632F0;
      v39[1] = v20;
      sub_23875BA30();
      v33 = sub_23875BA40();
      (*(*(v33 - 8) + 56))(v20, 0, 1, v33);
      v34 = sub_23875BA10();
      (*(*(v34 - 8) + 56))(v16, 1, 1, v34);
      sub_23875BCC0();
      sub_23875BDB0();
      sub_23875BE30();
      sub_23875B7E0();
      sub_23875BA50();
      v35 = sub_23875BAC0();
      v37 = v36;
      (*(v40 + 8))(v24, v41);
      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_238448C58();
      *(v32 + 32) = v35;
      *(v32 + 40) = v37;
      v31 = sub_238758A50();

      goto LABEL_6;
    }
  }

  v31 = sub_238758A40();
LABEL_6:
  (*(v26 + 8))(v29, v25);
  return v31;
}

uint64_t sub_238554E60@<X0>(uint64_t a1@<X8>)
{
  sub_238554ED8(v1, a1);
  v3 = *(type metadata accessor for OrderDetailsReturnInfoSection_iOS(0) + 20);
  *(a1 + v3) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0C2E0, &unk_23876EE10);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_238554ED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238554F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v63 = a4;
  v7 = sub_23875CEA0();
  v56 = *(v7 - 8);
  v57 = v7;
  v8 = *(v56 + 64);
  MEMORY[0x28223BE20](v7);
  v55 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E038, &qword_23876EE98);
  v60 = *(v64 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x28223BE20](v64);
  v54 = v52 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E040, &qword_23876EEA0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v62 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v61 = v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E048, &qword_23876EEA8);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E050, &qword_23876EEB0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v59 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v65 = v52 - v26;
  sub_23875ED50();
  v58 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = sub_2385546E4();
  if (v27)
  {
    v52[2] = v52;
    MEMORY[0x28223BE20](v27);
    v52[1] = &v52[-4];
    v53 = a1;
    v52[-2] = a1;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v66 = a2;
    v67 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E088, &qword_23876EF10);
    sub_238532714();
    v28 = a2;
    v29 = a3;
    sub_23843A3E8(&qword_27DF0E090, &qword_27DF0E088, &qword_23876EF10);
    sub_23875E3B0();
    v30 = v65;
    (*(v18 + 32))(v65, v21, v17);
    v31 = v30;
    a3 = v29;
    a2 = v28;
    (*(v18 + 56))(v31, 0, 1, v17);
    a1 = v53;
  }

  else
  {
    (*(v18 + 56))(v65, 1, 1, v17);
  }

  v32 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v33 = v64;
  if (*(a1 + *(v32 + 36)) == 1 && !*(a1 + *(v32 + 20) + 8))
  {
    v45 = 1;
    v44 = v61;
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    v52[-2] = a1;
    sub_23875ED40();
    sub_23875ECE0();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (sub_2385546E4())
    {
      a2 = 0;
      a3 = 0;
    }

    else
    {
    }

    v66 = a2;
    v67 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E058, &qword_23876EEB8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E060, &qword_23876EEC0);
    sub_238556FEC();
    sub_23843A3E8(&qword_27DF0E070, &qword_27DF0E060, &qword_23876EEC0);
    v34 = v54;
    sub_23875E3B0();
    v35 = v55;
    sub_23875CE90();
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E078, &qword_23876EEC8) + 36);
    v38 = v56;
    v37 = v57;
    (*(v56 + 16))(v34 + v36, v35, v57);
    v39 = *(v38 + 56);
    v39(v34 + v36, 0, 1, v37);
    KeyPath = swift_getKeyPath();
    v41 = v64;
    v42 = (v34 + *(v64 + 36));
    v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D480, &qword_23876D950) + 28);
    (*(v38 + 32))(v42 + v43, v35, v37);
    v39(v42 + v43, 0, 1, v37);
    *v42 = KeyPath;
    v44 = v61;
    sub_238557070(v34, v61);
    v33 = v41;
    v45 = 0;
  }

  (*(v60 + 56))(v44, v45, 1, v33);
  v46 = v65;
  v47 = v59;
  sub_23843981C(v65, v59, &qword_27DF0E050, &qword_23876EEB0);
  v48 = v62;
  sub_23843981C(v44, v62, &qword_27DF0E040, &qword_23876EEA0);
  v49 = v63;
  sub_23843981C(v47, v63, &qword_27DF0E050, &qword_23876EEB0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E080, &qword_23876EF08);
  sub_23843981C(v48, v49 + *(v50 + 48), &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v44, &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v46, &qword_27DF0E050, &qword_23876EEB0);
  sub_238439884(v48, &qword_27DF0E040, &qword_23876EEA0);
  sub_238439884(v47, &qword_27DF0E050, &qword_23876EEB0);
}

uint64_t sub_238555798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v108 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E098, &qword_23876EF18);
  v112 = *(v107 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v107);
  v99 = &v88 - v4;
  v5 = sub_23875B940();
  v6 = *(v5 - 8);
  v103 = v5;
  v104 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v97 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v98 = &v88 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0A0, &qword_23876EF20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v106 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v111 = &v88 - v20;
  v21 = sub_2387591F0();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  MEMORY[0x28223BE20](v21);
  v93 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_23875BE20();
  v90 = *(v91 - 8);
  v24 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23875BC40();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v100 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E00, &unk_238763FC0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v96 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v88 - v34;
  sub_23875ED50();
  v105 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v36 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v37 = v36[7];
  sub_23843981C(a1 + v37, v35, &qword_27DF12E00, &unk_238763FC0);
  v92 = v27;
  v38 = *(v27 + 48);
  v39 = v26;
  v40 = v38(v35, 1, v26);
  v41 = a1;
  v42 = v40;
  sub_238439884(v35, &qword_27DF12E00, &unk_238763FC0);
  if (v42 == 1)
  {
    v43 = 0;
    v44 = 0;
    v109 = 0;
    v110 = 0;
    v45 = v41;
    goto LABEL_12;
  }

  v46 = *(v41 + v36[8]);
  v45 = v41;
  if (v46 == 2 || (v46 & 1) == 0)
  {
    goto LABEL_11;
  }

  v43 = 0;
  v47 = v41 + v36[10];
  if (*(v47 + 8))
  {
    v44 = 0;
    v109 = 0;
    v110 = 0;
  }

  else
  {
    v48 = *v47;
    v44 = 0;
    v109 = 0;
    v110 = 0;
    if (v48 < 1)
    {
      goto LABEL_12;
    }

    v49 = v96;
    sub_23843981C(v45 + v37, v96, &qword_27DF12E00, &unk_238763FC0);
    v50 = v39;
    if (v38(v49, 1, v39) == 1)
    {
      sub_238439884(v49, &qword_27DF12E00, &unk_238763FC0);
LABEL_11:
      v43 = 0;
      v44 = 0;
      v109 = 0;
      v110 = 0;
      goto LABEL_12;
    }

    v72 = v92;
    v73 = v100;
    (*(v92 + 32))(v100, v49, v39);
    v74 = v45 + *(type metadata accessor for OrderDetailsReturnInfoSection_iOS(0) + 20);
    v75 = v89;
    sub_2384D5588(v89);
    v43 = sub_238554904(v75, v73);
    v44 = v76;
    (*(v90 + 8))(v75, v91);
    v110 = "nfoSection.swift";
    v77 = *MEMORY[0x277CC77C8];
    v78 = v94;
    v79 = *(v94 + 104);
    v96 = v50;
    v80 = v48;
    v81 = v93;
    v82 = v95;
    v79(v93, v77, v95);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
    v83 = swift_allocObject();
    v84 = MEMORY[0x277D83B88];
    *(v83 + 16) = xmmword_2387632F0;
    v85 = MEMORY[0x277D83C10];
    *(v83 + 56) = v84;
    *(v83 + 64) = v85;
    *(v83 + 32) = v80;
    v86 = sub_238758A50();
    v109 = v87;
    v110 = v86;

    (*(v78 + 8))(v81, v82);
    (*(v72 + 8))(v100, v96);
  }

LABEL_12:
  if (*(v45 + v36[9]))
  {
    v51 = 1;
    v52 = v107;
  }

  else
  {
    v53 = v36[6];
    v100 = v44;
    v54 = v43;
    v55 = v102;
    sub_23843981C(v45 + v53, v102, &qword_27DF0D040, &qword_2387676A0);
    v56 = v103;
    v96 = v45;
    v57 = *(v104 + 48);
    v51 = 1;
    v58 = v57(v55, 1, v103);
    v59 = v55;
    v43 = v54;
    v44 = v100;
    sub_238439884(v59, &qword_27DF0D040, &qword_2387676A0);
    v60 = v58 == 1;
    v52 = v107;
    if (!v60)
    {
      v61 = v101;
      sub_23843981C(v96 + v53, v101, &qword_27DF0D040, &qword_2387676A0);
      if (v57(v61, 1, v56) == 1)
      {
        sub_238439884(v61, &qword_27DF0D040, &qword_2387676A0);
      }

      else
      {
        v62 = v104;
        v63 = v98;
        (*(v104 + 32))(v98, v61, v56);
        (*(v62 + 16))(v97, v63, v56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
        sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30);
        v64 = v56;
        v65 = v99;
        sub_23875D9A0();
        (*(v62 + 8))(v63, v64);
        (*(v112 + 32))(v111, v65, v52);
        v51 = 0;
      }

      v44 = v100;
    }
  }

  v66 = v111;
  (*(v112 + 56))(v111, v51, 1, v52);
  v67 = v106;
  sub_23843981C(v66, v106, &qword_27DF0E0A0, &qword_23876EF20);
  v68 = v108;
  v69 = v109;
  *v108 = v43;
  v68[1] = v44;
  v68[2] = v110;
  v68[3] = v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0A8, &qword_23876EF28);
  sub_23843981C(v67, v68 + *(v70 + 48), &qword_27DF0E0A0, &qword_23876EF20);
  sub_2385570E8(v43, v44);
  sub_238439884(v66, &qword_27DF0E0A0, &qword_23876EF20);
  sub_238439884(v67, &qword_27DF0E0A0, &qword_23876EF20);
  sub_23855712C(v43, v44);
}

__n128 sub_2385561C8@<Q0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_23875CE60();
  v16 = 1;
  sub_2385562AC(&v10);

  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

uint64_t sub_2385562AC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CC77C8], v2);
  v7 = sub_238758A40();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v18[0] = v7;
  v18[1] = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;
  v16 = sub_23875E0D0();
  *a1 = v10;
  *(a1 + 8) = v12;
  LOBYTE(v7) = v7 & 1;
  *(a1 + 16) = v7;
  *(a1 + 24) = v15;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v16;
  sub_23843980C(v10, v12, v7);

  sub_2384397FC(v10, v12, v7);
}

uint64_t sub_2385564C4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v55 = a1;
  v47 = a2;
  v44 = sub_23875B940();
  v43 = *(v44 - 1);
  v2 = *(v43 + 64);
  MEMORY[0x28223BE20](v44);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0C0, &qword_23876EF40);
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0C8, &qword_23876EF48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  sub_23875ED50();
  v54 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(0);
  v16 = v55;
  v17 = (v55 + *(v15 + 20));
  v18 = v17[1];
  if (v18)
  {
    v61 = *v17;
    v62 = v18;
    sub_2384397A8();

    v52 = sub_23875DAA0();
    v51 = v19;
    v21 = v20;
    v50 = v22;
    KeyPath = swift_getKeyPath();
    v48 = sub_23875D7F0();
    v56 = swift_getKeyPath();
    LOBYTE(v61) = v21 & 1;
    LOBYTE(v57) = 0;
    v23 = v21 & 1;
    v46 = 0;
    v24 = sub_23875D440();
    v16 = v55;
    v45 = v24;
    v25 = 2;
  }

  else
  {
    v52 = 0;
    v51 = 0;
    v50 = 0;
    KeyPath = 0;
    v25 = 0;
    v56 = 0;
    v48 = 0;
    v45 = 0;
    v46 = 0;
    v23 = 0;
  }

  v26 = v53;
  if (*(v16 + *(v15 + 36)))
  {
    v27 = 1;
  }

  else
  {
    (*(v43 + 16))(v42);
    sub_23875D9A0();
    (*(v4 + 32))(v14, v7, v26);
    v27 = 0;
  }

  (*(v4 + 56))(v14, v27, 1, v26);
  v28 = v11;
  sub_23843981C(v14, v11, &qword_27DF0E0C8, &qword_23876EF48);
  v29 = v52;
  v30 = v51;
  *&v57 = v52;
  *(&v57 + 1) = v51;
  v31 = v50;
  *&v58 = v23;
  *(&v58 + 1) = v50;
  v53 = v23;
  v32 = KeyPath;
  *&v59 = KeyPath;
  *(&v59 + 1) = v25;
  v55 = v25;
  v33 = v46;
  *v60 = v46;
  *&v60[8] = v56;
  v34 = v28;
  v44 = v14;
  v35 = v48;
  *&v60[16] = v48;
  v36 = v45;
  *&v60[24] = v45;
  v37 = *v60;
  v38 = v47;
  v47[2] = v59;
  v38[3] = v37;
  *(v38 + 60) = *&v60[12];
  v39 = v58;
  *v38 = v57;
  v38[1] = v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0D0, &qword_23876EF50);
  sub_23843981C(v34, v38 + *(v40 + 48), &qword_27DF0E0C8, &qword_23876EF48);
  sub_23843981C(&v57, &v61, &qword_27DF0E0D8, &qword_23876EF58);
  sub_238439884(v44, &qword_27DF0E0C8, &qword_23876EF48);
  sub_238439884(v34, &qword_27DF0E0C8, &qword_23876EF48);
  v61 = v29;
  v62 = v30;
  v63 = v53;
  v64 = v31;
  v65 = v32;
  v66 = v55;
  v67 = v33;
  v68 = v56;
  v69 = v35;
  v70 = v36;
  sub_238439884(&v61, &qword_27DF0E0D8, &qword_23876EF58);
}

uint64_t sub_238556A50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2387591F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CC77C8], v2);
  v7 = sub_238758A40();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v17[0] = v7;
  v17[1] = v9;
  sub_2384397A8();
  v10 = sub_23875DAA0();
  v12 = v11;
  LOBYTE(v7) = v13;
  v15 = v14;

  *a1 = v10;
  *(a1 + 8) = v12;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_238556C30(uint64_t a1)
{
  v2 = sub_23875BE20();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return sub_23875CCC0();
}

void sub_238556D20()
{
  type metadata accessor for OrderDetailsReturnInfoSection.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238556DD4(319, &qword_27DF0DC58, MEMORY[0x277CC99E8], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238556DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_238556E38()
{
  result = qword_27DF0E030;
  if (!qword_27DF0E030)
  {
    type metadata accessor for OrderDetailsReturnInfoSection_iOS(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E030);
  }

  return result;
}

uint64_t sub_238556EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2387591F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x277CC77C8], v3, v6);
  v9 = sub_238758A40();
  v11 = v10;
  (*(v4 + 8))(v8, v3);
  sub_238554F5C(v1, v9, v11, a1);
}

unint64_t sub_238556FEC()
{
  result = qword_27DF0E068;
  if (!qword_27DF0E068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E058, &qword_23876EEB8);
    sub_238532714();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E068);
  }

  return result;
}

uint64_t sub_238557070(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E038, &qword_23876EE98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2385570E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_23855712C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_238557170()
{
  result = qword_27DF0E0E0;
  if (!qword_27DF0E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E0E8, &qword_23876EFC0);
    sub_23843A3E8(&qword_27DF0E0F0, &qword_27DF0E0F8, &qword_23876EFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E0E0);
  }

  return result;
}

uint64_t InstitutionLogo.init(institution:style:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  *(a3 + 24) = 0x3FB999999999999ALL;
  *(a3 + 32) = swift_getKeyPath();
  *(a3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  *(a3 + 48) = v11;
  v6 = sub_238757B40();
  v8 = v7;
  v9 = sub_238757B60();
  result = (*(*(v9 - 8) + 8))(a1, v9);
  *a3 = v6;
  *(a3 + 8) = v8;
  *(a3 + 16) = v5;
  return result;
}

double InstitutionLogo.init(institutionID:style:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  *(a4 + 24) = 0x3FB999999999999ALL;
  *(a4 + 32) = swift_getKeyPath();
  *(a4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09540, &unk_238763800);
  sub_23875E1A0();
  result = *&v9;
  *(a4 + 48) = v9;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v7;
  return result;
}

double InstitutionLogo.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v24 = *v1;
  v25 = v3;
  v4 = v1[3];
  v26 = v1[2];
  v27 = v4;
  v5 = sub_23875D020();
  sub_238557500(&v24, v17);
  v6 = v17[0];
  v7 = v17[1];
  v8 = v18;
  v9 = qword_23876F270[v25];
  sub_23875E4A0();
  sub_23875C5C0();
  v20 = 0;
  *&v19[6] = v21;
  *&v19[22] = v22;
  *&v19[38] = v23;
  v10 = swift_allocObject();
  v11 = v25;
  v10[1] = v24;
  v10[2] = v11;
  v12 = v27;
  v10[3] = v26;
  v10[4] = v12;
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E100, &qword_23876F018) + 36));
  v14 = *(sub_23875C6E0() + 20);
  sub_238558A88(&v24, v17);
  sub_23875ED60();
  *v13 = &unk_23876F010;
  v13[1] = v10;
  v15 = *&v19[16];
  *(a1 + 42) = *v19;
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 58) = v15;
  result = *&v19[32];
  *(a1 + 74) = *&v19[32];
  *(a1 + 88) = *&v19[46];
  return result;
}

uint64_t sub_238557500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23875E0E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1B0();
  if (v14)
  {
    v9 = v14;
    sub_23875E0C0();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v10 = sub_23875E150();

    (*(v5 + 8))(v8, v4);

    v12 = 1;
  }

  else
  {

    v10 = 0;
    v12 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = 0;
  *(a2 + 16) = v12;
  return result;
}

uint64_t sub_2385576EC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_23875CDB0();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  sub_23875ED50();
  v1[9] = sub_23875ED40();
  v6 = sub_23875ECE0();
  v1[10] = v6;
  v1[11] = v5;

  return MEMORY[0x2822009F8](sub_2385577E0, v6, v5);
}

uint64_t sub_2385577E0()
{
  v1 = *(v0 + 40);
  *(v0 + 96) = [objc_allocWithZone(type metadata accessor for BankConnectImageProvider()) init];
  v2 = *(v1 + 16);
  v3 = *(v0 + 40);
  v4 = *(v3 + 40);
  *(v0 + 16) = *(v3 + 32);
  v5 = dbl_23876F210[v2];
  *(v0 + 24) = v4;
  v6 = *(v0 + 16);
  if (v4 == 1)
  {
    v7 = *(v0 + 16);
  }

  else
  {
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = *(v0 + 48);
    v11 = *(v0 + 16);

    sub_23875EFF0();
    v12 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_238439884(v0 + 16, &qword_27DF0E148, &unk_23876F140);
    (*(v9 + 8))(v8, v10);
    v7 = *(v0 + 32);
    v3 = *(v0 + 40);
  }

  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = swift_task_alloc();
  *(v0 + 104) = v15;
  *v15 = v0;
  v15[1] = sub_2385579AC;

  return BankConnectImageProvider.logo(for:size:scale:)(v13, v14, v5, v5, v7);
}

uint64_t sub_2385579AC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 112) = a1;

  v5 = *(v2 + 88);
  v6 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_238557AF4, v6, v5);
}

uint64_t sub_238557AF4()
{
  v1 = v0[14];
  v2 = v0[9];

  if (v1)
  {
    v3 = v0[14];
    v4 = v0[5];
    v5 = *(v4 + 24);
    sub_23875E4E0();
    v6 = swift_task_alloc();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    sub_23875C6F0();
  }

  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_238557BDC(uint64_t a1, void *a2)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 48);
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A120, &qword_2387758B0);
  sub_23875E1C0();
}

uint64_t sub_238557CBC@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = sub_23875E0E0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E130, &qword_23876F128);
  v7 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v9 = &v40 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E138, &unk_23876F130);
  v10 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v12 = &v40 - v11;
  v13 = sub_23875C980();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v18 = qword_23876F240[v17];
  v20 = *(v19 + 28);
  v21 = *MEMORY[0x277CE0118];
  v22 = sub_23875CF50();
  (*(*(v22 - 8) + 104))(&v16[v20], v21, v22);
  *v16 = v18;
  *(v16 + 1) = v18;
  LOBYTE(v54) = v17;
  sub_238558208();
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v23 = qword_2814F1B90;
  sub_23875E170();
  (*(v3 + 104))(v6, *MEMORY[0x277CE0FE0], v2);
  v41 = sub_23875E150();

  (*(v3 + 8))(v6, v2);
  v40 = sub_23875E040();
  sub_23875E4A0();
  sub_23875C9C0();
  v52 = 1;
  sub_23875E010();
  v24 = sub_23875E060();

  v25 = [objc_opt_self() systemWhiteColor];
  v26 = sub_23875DFB0();
  v27 = sub_23875D780();
  v28 = qword_23876F270[v17];
  sub_23875E4A0();
  sub_23875C5C0();
  *&v53[7] = v54;
  *&v53[23] = v55;
  *&v53[39] = v56;
  v29 = &v9[*(v42 + 36)];
  sub_23846E86C(v16, v29);
  *(v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF09A88, &qword_238764220) + 36)) = 256;
  v30 = v50;
  *(v9 + 6) = v49;
  *(v9 + 7) = v30;
  *(v9 + 8) = v51;
  v31 = v46;
  *(v9 + 2) = v45;
  *(v9 + 3) = v31;
  v32 = v48;
  *(v9 + 4) = v47;
  *(v9 + 5) = v32;
  *(v9 + 152) = xmmword_2387657B0;
  *(v9 + 185) = *v53;
  v33 = *&v53[32];
  *(v9 + 201) = *&v53[16];
  *v9 = v41;
  *(v9 + 1) = 0;
  *(v9 + 8) = 1;
  *(v9 + 3) = v40;
  *(v9 + 18) = v24;
  *(v9 + 21) = 0x4000000000000000;
  *(v9 + 22) = v26;
  v9[184] = v27;
  *(v9 + 217) = v33;
  *(v9 + 29) = *&v53[47];
  v34 = sub_23875E4A0();
  v36 = v35;
  v37 = &v12[*(v43 + 36)];
  sub_2385586B4(v16, v17, v37);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A430, &unk_238768E20) + 36));
  *v38 = v34;
  v38[1] = v36;
  sub_2384396E4(v9, v12, &qword_27DF0E130, &qword_23876F128);
  sub_2384396E4(v12, v44, &qword_27DF0E138, &unk_23876F130);
  return sub_23846E8D0(v16);
}

unint64_t sub_238558208()
{
  v0 = 0xD000000000000013;
  v1 = sub_23875BD20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E140, &unk_238775000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19 - v8;
  sub_23875BCD0();
  sub_23875BD10();
  (*(v2 + 8))(v5, v1);
  v10 = sub_23875BD00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_238439884(v9, &qword_27DF0E140, &unk_238775000);
  }

  else
  {
    v12 = sub_23875BCE0();
    v14 = v13;
    (*(v11 + 8))(v9, v10);
    v15 = v12 == 4477781 && v14 == 0xE300000000000000;
    if (!v15 && (sub_23875F630() & 1) == 0)
    {
      v16 = v12 == 4475720 && v14 == 0xE300000000000000;
      if (!v16 && (sub_23875F630() & 1) == 0)
      {
        v17 = v12 == 4478273 && v14 == 0xE300000000000000;
        if (!v17 && (sub_23875F630() & 1) == 0 && (v12 != 4473155 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0 && (v12 != 4479566 || v14 != 0xE300000000000000) && (sub_23875F630() & 1) == 0)
        {
          if (v12 == 5395781 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000011;
          }

          if (v12 == 5853258 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5852739 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5722699 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000010;
          }

          if (v12 == 5259847 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0 || v12 == 5393993 && v14 == 0xE300000000000000 || (sub_23875F630() & 1) != 0)
          {

            return 0xD000000000000012;
          }
        }
      }
    }
  }

  return v0;
}

uint64_t sub_2385586B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_23875DFD0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A438, &unk_2387662D0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24[-v13];
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    (*(v7 + 104))(v10, *MEMORY[0x277CE0EE0], v6);
    sub_23875E090();
  }

  else
  {
    sub_23875E070();
  }

  v15 = sub_23875E060();

  sub_23875C4C0();
  sub_23846E86C(a1, v14);
  v16 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A440, &unk_238768D30) + 36)];
  v17 = v25;
  *v16 = *&v24[8];
  *(v16 + 1) = v17;
  *(v16 + 4) = v26;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A448, &qword_2387662E0);
  *&v14[*(v18 + 52)] = v15;
  *&v14[*(v18 + 56)] = 256;
  v19 = sub_23875E4A0();
  v21 = v20;
  v22 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A450, &unk_238768D40) + 36)];
  *v22 = v19;
  v22[1] = v21;
  sub_2384396E4(v14, a3, &qword_27DF0A438, &unk_2387662D0);
}

uint64_t sub_2385589A0@<X0>(void *a1@<X8>)
{
  result = sub_23875CA60();
  *a1 = v3;
  return result;
}

uint64_t sub_2385589F4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2384494A4;

  return sub_2385576EC(v0 + 16);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_238558AFC(uint64_t a1, int a2)
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

uint64_t sub_238558B44(uint64_t result, int a2, int a3)
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

unint64_t sub_238558BA4()
{
  result = qword_27DF0E108;
  if (!qword_27DF0E108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E100, &qword_23876F018);
    sub_238558C30();
    sub_238464898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E108);
  }

  return result;
}

unint64_t sub_238558C30()
{
  result = qword_27DF0E110;
  if (!qword_27DF0E110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E118, &qword_23876F118);
    sub_23843A3E8(&qword_27DF0E120, &qword_27DF0E128, &qword_23876F120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E110);
  }

  return result;
}

unint64_t sub_238558D30()
{
  result = qword_27DF0E150;
  if (!qword_27DF0E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E138, &unk_23876F130);
    sub_238558DE8();
    sub_23843A3E8(&qword_27DF0A4A0, &qword_27DF0A430, &unk_238768E20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E150);
  }

  return result;
}

unint64_t sub_238558DE8()
{
  result = qword_27DF0E158;
  if (!qword_27DF0E158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E130, &qword_23876F128);
    sub_238558EA0();
    sub_23843A3E8(&qword_27DF09AD0, &qword_27DF09A88, &qword_238764220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E158);
  }

  return result;
}

unint64_t sub_238558EA0()
{
  result = qword_27DF0E160;
  if (!qword_27DF0E160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E168, &qword_23876F1D8);
    sub_238558F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E160);
  }

  return result;
}

unint64_t sub_238558F2C()
{
  result = qword_27DF0E170;
  if (!qword_27DF0E170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E178, &qword_23876F1E0);
    sub_238558FE4();
    sub_23843A3E8(&qword_27DF09AC0, &qword_27DF09AC8, &unk_23876A000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E170);
  }

  return result;
}

unint64_t sub_238558FE4()
{
  result = qword_27DF0E180;
  if (!qword_27DF0E180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E188, &qword_23876F1E8);
    sub_238559070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E180);
  }

  return result;
}

unint64_t sub_238559070()
{
  result = qword_27DF0E190;
  if (!qword_27DF0E190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E198, &qword_23876F1F0);
    sub_2385590FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E190);
  }

  return result;
}

unint64_t sub_2385590FC()
{
  result = qword_27DF0E1A0;
  if (!qword_27DF0E1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1A8, &qword_23876F1F8);
    sub_238464BD4();
    sub_23843A3E8(&qword_27DF0A490, &qword_27DF0A498, &qword_23876AB20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E1A0);
  }

  return result;
}

uint64_t type metadata accessor for OrderDetailsBarcodeButton()
{
  result = qword_27DF0E1B0;
  if (!qword_27DF0E1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238559228()
{
  type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_2385592FC(319, &qword_27DF0A0B0, MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_2385592FC(319, &qword_2814F09A0, MEMORY[0x277CDF468]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2385592FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_23855936C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v71 = a1;
  v58 = sub_23875CDB0();
  v57 = *(v58 - 8);
  v3 = *(v57 + 64);
  MEMORY[0x28223BE20](v58);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for OrderLargeBlackButtonStyle();
  v5 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v64 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for OrderDetailsBarcodeButton();
  v7 = *(v72 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v72);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v62 = *(v9 - 8);
  v63 = v9;
  v10 = *(v62 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1C0, &qword_23876F318);
  v66 = *(v68 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v61 = &v56 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1C8, &unk_23876F320);
  v67 = *(v69 - 8);
  v15 = *(v67 + 64);
  MEMORY[0x28223BE20](v69);
  v65 = &v56 - v16;
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v17 = qword_2814F1B90;
  v18 = sub_23875EA50();
  v19 = sub_23875EA50();
  v20 = sub_23875EA50();
  v21 = [v17 localizedStringForKey:v18 value:v19 table:v20];

  v22 = sub_23875EA80();
  v24 = v23;

  v73 = v22;
  v74 = v24;
  sub_23855A5A4(v2, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsBarcodeButton);
  v25 = *(v7 + 80);
  v26 = v2;
  v27 = (v25 + 16) & ~v25;
  v28 = swift_allocObject();
  sub_23855A14C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
  sub_2384397A8();
  sub_23875E230();
  v29 = *(v72 + 20);
  v60 = v26;
  v30 = (v26 + v29);
  v31 = *v30;
  v32 = *(v30 + 1);
  v77 = v31;
  v78 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1D0();
  sub_23855A5A4(v26, &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for OrderDetailsBarcodeButton);
  v33 = swift_allocObject();
  sub_23855A14C(&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v27);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1D0, &qword_23876F330);
  v54 = sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
  v55 = sub_23843A3E8(&qword_27DF0E1D8, &qword_27DF0E1D0, &qword_23876F330);
  v34 = v61;
  v35 = v63;
  sub_23875DED0();

  (*(v62 + 8))(v12, v35);
  KeyPath = swift_getKeyPath();
  v37 = v64;
  *v64 = KeyPath;
  *(v37 + 8) = 0;
  v38 = v70;
  v39 = *(v70 + 20);
  *(v37 + v39) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF092F8, &qword_238763100);
  swift_storeEnumTagMultiPayload();
  v73 = v35;
  v74 = v59;
  v75 = v54;
  v76 = v55;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_23855A8DC(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle);
  v42 = v65;
  v43 = v68;
  sub_23875DB40();
  sub_23855A540(v37);
  (*(v66 + 8))(v34, v43);
  v73 = v43;
  v74 = v38;
  v75 = OpaqueTypeConformance2;
  v76 = v41;
  swift_getOpaqueTypeConformance2();
  v44 = v71;
  v45 = v69;
  sub_23875DE00();
  (*(v67 + 8))(v42, v45);
  v46 = v60 + *(v72 + 24);
  v47 = *v46;
  if (*(v46 + 8) != 1)
  {

    sub_23875EFF0();
    v48 = sub_23875D730();
    sub_23875C110();

    v49 = v56;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v47, 0);
    (*(v57 + 8))(v49, v58);
    LOBYTE(v47) = v73;
  }

  v50 = swift_getKeyPath();
  v51 = swift_allocObject();
  *(v51 + 16) = v47 & 1;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E1E8, &qword_23876F3D0);
  v53 = (v44 + *(result + 36));
  *v53 = v50;
  v53[1] = sub_238477BAC;
  v53[2] = v51;
  return result;
}

void sub_238559C1C(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsBarcodeButton() + 20));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v21[0]) = v3;
  v21[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_2384FBFBC(inited + 32);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = *MEMORY[0x277D38428];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v10;
  v11 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x65646F63726162;
  v12 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xE700000000000000;
  *(v7 + 80) = v12;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v13 = v8;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v16;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v21);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_23855A8DC(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];
}

uint64_t sub_238559F64()
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x28223BE20](isCurrentExecutor);
  type metadata accessor for OrderDetailsPickupBarcodeSheet(0);
  sub_23855A8DC(&qword_27DF0E1F0, type metadata accessor for OrderDetailsPickupBarcodeSheet);
  sub_23875C8F0();
}

uint64_t sub_23855A088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23855A5A4(a1, a2, type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel);
}

uint64_t sub_23855A14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsBarcodeButton();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23855A1B0()
{
  v1 = *(type metadata accessor for OrderDetailsBarcodeButton() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_238559C1C(v2);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for OrderDetailsBarcodeButton();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3 + 8);

  v7 = type metadata accessor for OrderDetailsPickupBarcodeSheet.ViewModel(0);
  v8 = v7[5];
  v9 = sub_23875B290();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);

  v10 = v7[7];
  v11 = sub_23875AEB0();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v3 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v7[8];
  v14 = sub_23875B1D0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v5 + v13, 1, v14))
  {
    (*(v15 + 8))(v5 + v13, v14);
  }

  v16 = *(v5 + v7[9] + 8);

  v17 = *(v5 + v7[10] + 8);

  v18 = v5 + v7[11];
  v19 = *(v18 + 8);

  v20 = type metadata accessor for MerchantImage.ViewModel(0);
  v21 = *(v20 + 20);
  v22 = sub_23875AF90();
  (*(*(v22 - 8) + 8))(v18 + v21, v22);
  v23 = *(v18 + *(v20 + 24) + 8);

  v24 = *(v5 + *(v1 + 20) + 8);

  sub_2384348B8(*(v5 + *(v1 + 24)), *(v5 + *(v1 + 24) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23855A4D0()
{
  v0 = *(*(type metadata accessor for OrderDetailsBarcodeButton() - 8) + 80);

  return sub_238559F64();
}

uint64_t sub_23855A540(uint64_t a1)
{
  v2 = type metadata accessor for OrderLargeBlackButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23855A5A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_23855A60C()
{
  result = qword_27DF0E1F8;
  if (!qword_27DF0E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1E8, &qword_23876F3D0);
    sub_23855A6C4();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E1F8);
  }

  return result;
}

unint64_t sub_23855A6C4()
{
  result = qword_27DF0E200;
  if (!qword_27DF0E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E208, &unk_23876F3D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1C0, &qword_23876F318);
    type metadata accessor for OrderLargeBlackButtonStyle();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF12E30, &unk_238765430);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E1D0, &qword_23876F330);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0E1D8, &qword_27DF0E1D0, &qword_23876F330);
    swift_getOpaqueTypeConformance2();
    sub_23855A8DC(&qword_27DF0E1E0, type metadata accessor for OrderLargeBlackButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_23855A8DC(&qword_27DF09330, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E200);
  }

  return result;
}

uint64_t sub_23855A8DC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_23855A96C()
{
  sub_23875B940();
  if (v0 <= 0x3F)
  {
    sub_238561900(319, &qword_2814F08C0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_238561950(319, &qword_2814F1160, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

BOOL sub_23855AA78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  sub_23843981C(v0 + v8[9], v7, &qword_27DF0D040, &qword_2387676A0);
  v9 = sub_23875B940();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_238439884(v7, &qword_27DF0D040, &qword_2387676A0);
    v38 = 0u;
    v39 = 0u;
  }

  else
  {
    *(&v39 + 1) = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
    (*(v10 + 32))(boxed_opaque_existential_1, v7, v9);
  }

  sub_23843981C(v0 + v8[8], v4, &qword_27DF0D040, &qword_2387676A0);
  if (v11(v4, 1, v9) == 1)
  {
    sub_238439884(v4, &qword_27DF0D040, &qword_2387676A0);
    v40 = 0u;
    v41 = 0u;
  }

  else
  {
    *(&v41 + 1) = v9;
    v13 = __swift_allocate_boxed_opaque_existential_1(&v40);
    (*(v10 + 32))(v13, v4, v9);
  }

  v14 = (v0 + v8[7]);
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;
    v17 = MEMORY[0x277D837D0];
    v18 = v15;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v44 = 0;
  }

  v42 = v16;
  v43 = v18;
  v45 = v17;
  v19 = (v0 + v8[10]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = MEMORY[0x277D837D0];
  }

  else
  {
    v21 = 0;
    v22 = 0;
    v48 = 0;
  }

  v46 = v21;
  v47 = v20;
  v49 = v22;

  v23 = MEMORY[0x277D84F90];
  for (i = 32; i != 160; i += 32)
  {
    sub_23843981C(&v37[i], &v34, &qword_27DF0A4A8, &qword_238767840);
    if (*(&v35 + 1))
    {
      v32 = v34;
      v33 = v35;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2385FEDCC(0, *(v23 + 16) + 1, 1);
        v23 = v36;
      }

      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_2385FEDCC((v26 > 1), v27 + 1, 1);
        v23 = v36;
      }

      *(v23 + 16) = v27 + 1;
      v28 = v23 + 32 * v27;
      v29 = v33;
      *(v28 + 32) = v32;
      *(v28 + 48) = v29;
    }

    else
    {
      sub_238439884(&v34, &qword_27DF0A4A8, &qword_238767840);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A4A8, &qword_238767840);
  swift_arrayDestroy();
  v30 = *(v23 + 16);

  return v30 > 1;
}

uint64_t sub_23855AE40()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12270, &qword_238765EC0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2387632F0;
  v3 = *v0;
  v2 = v0[1];
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_238448C58();
  *(v1 + 32) = v3;
  *(v1 + 40) = v2;
  v4 = qword_2814F0880;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_2814F1B90;
  v6 = sub_23875EA50();
  v7 = sub_23875EA50();
  v8 = sub_23875EA50();
  v9 = [v5 localizedStringForKey:v6 value:v7 table:v8];

  sub_23875EA80();
  v10 = sub_23875EAA0();

  return v10;
}

uint64_t sub_23855AFC4@<X0>(uint64_t a1@<X8>)
{
  v259 = a1;
  v257 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E230, &qword_23876F4A8);
  v2 = *(*(v257 - 8) + 64);
  MEMORY[0x28223BE20](v257);
  v260 = &v219 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v258 = &v219 - v5;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E238, &qword_23876F4B0);
  v6 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224);
  v225 = &v219 - v7;
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E240, &qword_23876F4B8);
  v8 = *(*(v243 - 8) + 64);
  MEMORY[0x28223BE20](v243);
  v226 = &v219 - v9;
  v247 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E248, &qword_23876F4C0);
  v10 = *(*(v247 - 8) + 64);
  MEMORY[0x28223BE20](v247);
  v223 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v221 = &v219 - v13;
  MEMORY[0x28223BE20](v14);
  v228 = &v219 - v15;
  MEMORY[0x28223BE20](v16);
  v234 = &v219 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v230 = &v219 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v251 = &v219 - v22;
  MEMORY[0x28223BE20](v23);
  v229 = &v219 - v24;
  MEMORY[0x28223BE20](v25);
  v250 = &v219 - v26;
  v261 = sub_23875B940();
  v263 = *(v261 - 8);
  v27 = *(v263 + 64);
  MEMORY[0x28223BE20](v261);
  v222 = &v219 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v220 = &v219 - v30;
  MEMORY[0x28223BE20](v31);
  v227 = &v219 - v32;
  MEMORY[0x28223BE20](v33);
  v231 = &v219 - v34;
  MEMORY[0x28223BE20](v35);
  v233 = &v219 - v36;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E250, &qword_23876F4C8);
  v37 = *(*(v245 - 8) + 64);
  MEMORY[0x28223BE20](v245);
  v246 = &v219 - v38;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E258, &qword_23876F4D0);
  v39 = *(*(v239 - 8) + 64);
  MEMORY[0x28223BE20](v239);
  v241 = &v219 - v40;
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E260, &qword_23876F4D8);
  v41 = *(*(v235 - 8) + 64);
  MEMORY[0x28223BE20](v235);
  v236 = &v219 - v42;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E268, &qword_23876F4E0);
  v43 = *(*(v240 - 8) + 64);
  MEMORY[0x28223BE20](v240);
  v238 = &v219 - v44;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E270, &qword_23876F4E8);
  v45 = *(*(v244 - 8) + 64);
  MEMORY[0x28223BE20](v244);
  v242 = &v219 - v46;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E278, &qword_23876F4F0);
  v232 = *(v237 - 8);
  v47 = *(v232 + 64);
  MEMORY[0x28223BE20](v237);
  v249 = &v219 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E280, &qword_23876F4F8);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8);
  v256 = &v219 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v255 = &v219 - v53;
  v54 = sub_23875CDB0();
  v55 = *(v54 - 8);
  v270 = v54;
  v271 = v55;
  v56 = *(v55 + 64);
  MEMORY[0x28223BE20](v54);
  v269 = &v219 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for OrderDetailsContactSection(0);
  v59 = v58 - 8;
  v60 = *(v58 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v58);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E288, &qword_23876F500);
  v63 = *(v62 - 8);
  v64 = *(v63 + 64);
  MEMORY[0x28223BE20](v62);
  v66 = &v219 - v65;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E290, &qword_23876F508);
  v67 = *(*(v248 - 8) + 64);
  MEMORY[0x28223BE20](v248);
  v254 = &v219 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v71 = &v219 - v70;
  sub_2385619D0(v1, &v219 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = *(v60 + 80);
  v73 = (v72 + 16) & ~v72;
  v265 = v73 + v61;
  v266 = v72;
  v74 = swift_allocObject();
  v267 = v73;
  v268 = &v219 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238561A34(v268, v74 + v73);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E0B0, &unk_23876EF30);
  v76 = sub_23843A3E8(&qword_27DF0E0B8, &qword_27DF0E0B0, &unk_23876EF30);
  v253 = v75;
  v252 = v76;
  sub_23875E200();
  sub_23843A3E8(&qword_27DF0E298, &qword_27DF0E288, &qword_23876F500);
  v272 = v71;
  sub_23875DE00();
  (*(v63 + 8))(v66, v62);
  v77 = *(v59 + 28);
  v273 = v1;
  v78 = v1 + v77;
  v79 = *v78;
  v80 = *(v78 + 8);
  v264 = *v78;
  if (v80 == 1)
  {
    v81 = v79;
    v82 = v269;
  }

  else
  {

    sub_23875EFF0();
    v83 = sub_23875D730();
    sub_23875C110();

    v82 = v269;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v79, 0);
    (*(v271 + 8))(v82, v270);
    v81 = v274;
  }

  KeyPath = swift_getKeyPath();
  v85 = swift_allocObject();
  *(v85 + 16) = v81 & 1;
  v86 = &v272[*(v248 + 36)];
  *v86 = KeyPath;
  v86[1] = sub_238477BAC;
  v86[2] = v85;
  v87 = sub_23855AA78();
  v88 = v251;
  v89 = v250;
  v262 = v80;
  if (!v87)
  {
    v104 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
    sub_23843981C(v273 + v104[8], v89, &qword_27DF0D040, &qword_2387676A0);
    v105 = v263;
    v106 = *(v263 + 48);
    v107 = v261;
    v108 = v106(v89, 1, v261);
    v109 = v89;
    v110 = v271;
    if (v108 != 1)
    {
      v128 = v233;
      (*(v105 + 32))(v233, v109, v107);
      v129 = (*(v105 + 16))(v231, v128, v107);
      MEMORY[0x28223BE20](v129);
      *(&v219 - 16) = 0;
      v130 = v234;
      sub_23875D9A0();
      v131 = v268;
      sub_2385619D0(v273, v268);
      v132 = v265;
      v133 = swift_allocObject();
      sub_238561A34(v131, v133 + v267);
      *(v133 + v132) = 0;
      v134 = swift_getKeyPath();
      v135 = swift_allocObject();
      *(v135 + 16) = sub_238562714;
      *(v135 + 24) = v133;
      v136 = &v130[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
      v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
      sub_23875C6C0();
      *v136 = v134;
      if (v80)
      {
        v138 = v264;
      }

      else
      {
        v139 = v264;

        sub_23875EFF0();
        v140 = sub_23875D730();
        sub_23875C110();

        sub_23875CDA0();
        swift_getAtKeyPath();
        sub_2384348B8(v139, 0);
        (*(v110 + 8))(v82, v270);
        v138 = v274;
      }

      v141 = swift_getKeyPath();
      v142 = swift_allocObject();
      *(v142 + 16) = v138 & 1;
      v143 = v234;
      v144 = &v234[*(v247 + 36)];
      *v144 = v141;
      v144[1] = sub_238562718;
      v144[2] = v142;
      sub_23843981C(v143, v236, &qword_27DF0E248, &qword_23876F4C0);
      swift_storeEnumTagMultiPayload();
      v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
      v146 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
      v147 = sub_238561FA0();
      v148 = sub_2384397A8();
      v149 = sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598);
      v274 = v145;
      v275 = MEMORY[0x277D837D0];
      v276 = v146;
      v277 = MEMORY[0x277CE0BD8];
      v278 = v147;
      v279 = v148;
      v280 = v149;
      v281 = MEMORY[0x277CE0BC8];
      swift_getOpaqueTypeConformance2();
      sub_238562084();
      v150 = v238;
      sub_23875D1B0();
      sub_23843981C(v150, v241, &qword_27DF0E268, &qword_23876F4E0);
      swift_storeEnumTagMultiPayload();
      sub_238561E48();
      sub_238562220();
      v151 = v242;
      sub_23875D1B0();
      sub_238439884(v150, &qword_27DF0E268, &qword_23876F4E0);
      sub_23843981C(v151, v246, &qword_27DF0E270, &qword_23876F4E8);
      swift_storeEnumTagMultiPayload();
      sub_238561DBC();
      v100 = v255;
      sub_23875D1B0();
      sub_238439884(v151, &qword_27DF0E270, &qword_23876F4E8);
      sub_238439884(v143, &qword_27DF0E248, &qword_23876F4C0);
      (*(v263 + 8))(v233, v261);
      v101 = 0;
      v152 = v258;
      v102 = v270;
      v103 = v271;
      v115 = v264;
      goto LABEL_35;
    }

    sub_238439884(v109, &qword_27DF0D040, &qword_2387676A0);
    v111 = (v273 + v104[7]);
    v100 = v255;
    if (v111[1])
    {
      v112 = *v111;
      v274 = 980182388;
      v275 = 0xE400000000000000;
      MEMORY[0x23EE63650](v112);
      v113 = v229;
      sub_23875B910();
      v105 = v263;

      v114 = v106(v113, 1, v107);
      v115 = v264;
      v116 = v230;
      if (v114 != 1)
      {
        v117 = v227;
        (*(v105 + 32))(v227, v113, v107);
        v118 = (*(v105 + 16))(v231, v117, v107);
        MEMORY[0x28223BE20](v118);
        *(&v219 - 16) = 2;
        v119 = v228;
        sub_23875D9A0();
        v120 = v268;
        sub_2385619D0(v273, v268);
        v121 = v265;
        v122 = swift_allocObject();
        sub_238561A34(v120, v122 + v267);
        *(v122 + v121) = 2;
        v123 = swift_getKeyPath();
        v124 = swift_allocObject();
        *(v124 + 16) = sub_238562714;
        *(v124 + 24) = v122;
        v125 = &v119[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
        v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
        sub_23875C6C0();
        *v125 = v123;
        if (v262)
        {
          v127 = v115;
          v103 = v271;
        }

        else
        {

          sub_23875EFF0();
          v182 = sub_23875D730();
          sub_23875C110();

          v183 = v269;
          sub_23875CDA0();
          swift_getAtKeyPath();
          sub_2384348B8(v115, 0);
          v103 = v271;
          (*(v271 + 8))(v183, v270);
          v127 = v274;
        }

        v184 = swift_getKeyPath();
        v185 = swift_allocObject();
        *(v185 + 16) = v127 & 1;
        v186 = v228;
        v187 = &v228[*(v247 + 36)];
        *v187 = v184;
        v187[1] = sub_238562718;
        v187[2] = v185;
        sub_23843981C(v186, v225, &qword_27DF0E248, &qword_23876F4C0);
        swift_storeEnumTagMultiPayload();
        sub_238562084();
        v188 = v226;
        sub_23875D1B0();
        sub_23843981C(v188, v241, &qword_27DF0E240, &qword_23876F4B8);
        swift_storeEnumTagMultiPayload();
        sub_238561E48();
        sub_238562220();
        v189 = v242;
        sub_23875D1B0();
        sub_238439884(v188, &qword_27DF0E240, &qword_23876F4B8);
        sub_23843981C(v189, v246, &qword_27DF0E270, &qword_23876F4E8);
        swift_storeEnumTagMultiPayload();
        sub_238561DBC();
        sub_23875D1B0();
        sub_238439884(v189, &qword_27DF0E270, &qword_23876F4E8);
        sub_238439884(v186, &qword_27DF0E248, &qword_23876F4C0);
        (*(v263 + 8))(v227, v261);
LABEL_32:
        v101 = 0;
        v102 = v270;
        goto LABEL_33;
      }
    }

    else
    {
      v113 = v229;
      (*(v105 + 56))(v229, 1, 1, v107);
      v115 = v264;
      v116 = v230;
    }

    sub_238439884(v113, &qword_27DF0D040, &qword_2387676A0);
    v153 = (v273 + v104[10]);
    if (v153[1])
    {
      v154 = *v153;
      v274 = 0x3A6F746C69616DLL;
      v275 = 0xE700000000000000;
      MEMORY[0x23EE63650](v154);
      sub_23875B910();

      v155 = v106(v88, 1, v107);
      v103 = v271;
      if (v155 != 1)
      {
        v156 = v263;
        v157 = v220;
        (*(v263 + 32))(v220, v88, v107);
        v158 = (*(v156 + 16))(v231, v157, v107);
        MEMORY[0x28223BE20](v158);
        *(&v219 - 16) = 3;
        v159 = v221;
        sub_23875D9A0();
        v160 = v268;
        sub_2385619D0(v273, v268);
        v161 = v265;
        v162 = swift_allocObject();
        sub_238561A34(v160, v162 + v267);
        *(v162 + v161) = 3;
        v163 = swift_getKeyPath();
        v164 = swift_allocObject();
        *(v164 + 16) = sub_238562714;
        *(v164 + 24) = v162;
        v165 = &v159[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
        v166 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
        sub_23875C6C0();
        *v165 = v163;
        if (v262)
        {
          v167 = v115;
        }

        else
        {

          sub_23875EFF0();
          v196 = sub_23875D730();
          sub_23875C110();

          v197 = v269;
          sub_23875CDA0();
          swift_getAtKeyPath();
          sub_2384348B8(v115, 0);
          (*(v103 + 8))(v197, v270);
          v167 = v274;
        }

        v198 = swift_getKeyPath();
        v199 = swift_allocObject();
        *(v199 + 16) = v167 & 1;
        v200 = v221;
        v201 = &v221[*(v247 + 36)];
        *v201 = v198;
        v201[1] = sub_238562718;
        v201[2] = v199;
        sub_23843981C(v200, v225, &qword_27DF0E248, &qword_23876F4C0);
        swift_storeEnumTagMultiPayload();
        sub_238562084();
        v202 = v226;
        sub_23875D1B0();
        sub_23843981C(v202, v241, &qword_27DF0E240, &qword_23876F4B8);
        swift_storeEnumTagMultiPayload();
        sub_238561E48();
        sub_238562220();
        v203 = v242;
        sub_23875D1B0();
        sub_238439884(v202, &qword_27DF0E240, &qword_23876F4B8);
        sub_23843981C(v203, v246, &qword_27DF0E270, &qword_23876F4E8);
        swift_storeEnumTagMultiPayload();
        sub_238561DBC();
        sub_23875D1B0();
        sub_238439884(v203, &qword_27DF0E270, &qword_23876F4E8);
        sub_238439884(v200, &qword_27DF0E248, &qword_23876F4C0);
        (*(v263 + 8))(v220, v261);
        goto LABEL_32;
      }
    }

    else
    {
      (*(v105 + 56))(v88, 1, 1, v107);
      v103 = v271;
    }

    sub_238439884(v88, &qword_27DF0D040, &qword_2387676A0);
    v168 = v273 + v104[9];
    v169 = v261;
    sub_23843981C(v168, v116, &qword_27DF0D040, &qword_2387676A0);
    if (v106(v116, 1, v169) == 1)
    {
      sub_238439884(v116, &qword_27DF0D040, &qword_2387676A0);
      v101 = 1;
    }

    else
    {
      v170 = v263;
      v171 = v222;
      (*(v263 + 32))(v222, v116, v169);
      v172 = (*(v170 + 16))(v231, v171, v169);
      MEMORY[0x28223BE20](v172);
      *(&v219 - 16) = 1;
      v173 = v223;
      sub_23875D9A0();
      v174 = v268;
      sub_2385619D0(v273, v268);
      v175 = v265;
      v176 = swift_allocObject();
      sub_238561A34(v174, v176 + v267);
      *(v176 + v175) = 1;
      v177 = swift_getKeyPath();
      v178 = swift_allocObject();
      *(v178 + 16) = sub_238561DB0;
      *(v178 + 24) = v176;
      v179 = &v173[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580) + 36)];
      v180 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
      sub_23875C6C0();
      *v179 = v177;
      if (v262)
      {
        v181 = v115;
      }

      else
      {

        sub_23875EFF0();
        v190 = sub_23875D730();
        sub_23875C110();

        v191 = v269;
        sub_23875CDA0();
        swift_getAtKeyPath();
        sub_2384348B8(v115, 0);
        (*(v103 + 8))(v191, v270);
        v181 = v274;
      }

      v192 = swift_getKeyPath();
      v193 = swift_allocObject();
      *(v193 + 16) = v181 & 1;
      v194 = v223;
      v195 = &v223[*(v247 + 36)];
      *v195 = v192;
      v195[1] = sub_238562718;
      v195[2] = v193;
      sub_23843981C(v194, v246, &qword_27DF0E248, &qword_23876F4C0);
      swift_storeEnumTagMultiPayload();
      sub_238561DBC();
      sub_238562084();
      sub_23875D1B0();
      sub_238439884(v194, &qword_27DF0E248, &qword_23876F4C0);
      (*(v263 + 8))(v222, v261);
      v101 = 0;
    }

    v102 = v270;
    goto LABEL_34;
  }

  v90 = v249;
  sub_23855DA28(v249);
  v91 = v232;
  v92 = v237;
  (*(v232 + 16))(v236, v90, v237);
  swift_storeEnumTagMultiPayload();
  v93 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
  v94 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
  v95 = sub_238561FA0();
  v96 = sub_2384397A8();
  v97 = sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598);
  v274 = v93;
  v275 = MEMORY[0x277D837D0];
  v276 = v94;
  v277 = MEMORY[0x277CE0BD8];
  v278 = v95;
  v279 = v96;
  v280 = v97;
  v281 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_238562084();
  v98 = v238;
  sub_23875D1B0();
  sub_23843981C(v98, v241, &qword_27DF0E268, &qword_23876F4E0);
  swift_storeEnumTagMultiPayload();
  sub_238561E48();
  sub_238562220();
  v99 = v242;
  sub_23875D1B0();
  sub_238439884(v98, &qword_27DF0E268, &qword_23876F4E0);
  sub_23843981C(v99, v246, &qword_27DF0E270, &qword_23876F4E8);
  swift_storeEnumTagMultiPayload();
  sub_238561DBC();
  v100 = v255;
  sub_23875D1B0();
  sub_238439884(v99, &qword_27DF0E270, &qword_23876F4E8);
  (*(v91 + 8))(v249, v92);
  v101 = 0;
  v102 = v270;
  v103 = v271;
LABEL_33:
  v115 = v264;
LABEL_34:
  v152 = v258;
LABEL_35:
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2A0, &qword_23876F540);
  (*(*(v204 - 8) + 56))(v100, v101, 1, v204);
  v205 = v268;
  sub_2385619D0(v273, v268);
  v206 = swift_allocObject();
  sub_238561A34(v205, v206 + v267);
  sub_23875E200();
  if (!v262)
  {

    sub_23875EFF0();
    v207 = sub_23875D730();
    sub_23875C110();

    v208 = v269;
    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v115, 0);
    (*(v103 + 8))(v208, v102);
    LOBYTE(v115) = v274;
  }

  v209 = swift_getKeyPath();
  v210 = swift_allocObject();
  *(v210 + 16) = v115 & 1;
  v211 = (v152 + *(v257 + 36));
  *v211 = v209;
  v211[1] = sub_238562718;
  v211[2] = v210;
  v212 = v254;
  sub_23843981C(v272, v254, &qword_27DF0E290, &qword_23876F508);
  v213 = v256;
  sub_23843981C(v100, v256, &qword_27DF0E280, &qword_23876F4F8);
  v214 = v100;
  v215 = v260;
  sub_23843981C(v152, v260, &qword_27DF0E230, &qword_23876F4A8);
  v216 = v259;
  sub_23843981C(v212, v259, &qword_27DF0E290, &qword_23876F508);
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2A8, &qword_23876F548);
  sub_23843981C(v213, v216 + *(v217 + 48), &qword_27DF0E280, &qword_23876F4F8);
  sub_23843981C(v215, v216 + *(v217 + 64), &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v152, &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v214, &qword_27DF0E280, &qword_23876F4F8);
  sub_238439884(v272, &qword_27DF0E290, &qword_23876F508);
  sub_238439884(v215, &qword_27DF0E230, &qword_23876F4A8);
  sub_238439884(v213, &qword_27DF0E280, &qword_23876F4F8);
  return sub_238439884(v212, &qword_27DF0E290, &qword_23876F508);
}

void sub_23855D418(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() sharedApplication];
  v3 = a1 + *(type metadata accessor for OrderDetailsContactSection.ViewModel(0) + 24);
  v4 = sub_23875B860();
  sub_23854BA18(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey(0);
  sub_2385626C8(&qword_27DF09138, type metadata accessor for OpenExternalURLOptionsKey);
  v5 = sub_23875E910();

  [v2 openURL:v4 options:v5 completionHandler:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v7 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_238763300;
  v9 = *MEMORY[0x277D383D8];
  *(v8 + 32) = *MEMORY[0x277D383D8];
  v10 = *MEMORY[0x277D38428];
  *(v8 + 40) = sub_23875EA80();
  *(v8 + 48) = v11;
  v12 = *MEMORY[0x277D38390];
  *(v8 + 56) = *MEMORY[0x277D38390];
  *(v8 + 64) = 0x724F6567616E616DLL;
  v13 = *MEMORY[0x277D384B8];
  *(v8 + 72) = 0xEB00000000726564;
  *(v8 + 80) = v13;
  strcpy((v8 + 88), "orderDetails");
  *(v8 + 101) = 0;
  *(v8 + 102) = -5120;
  v14 = v9;
  v15 = v12;
  v16 = v13;
  v17 = sub_23854B138(v8);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = v17;
  sub_2385C33E4(v7, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v22);

  v19 = *MEMORY[0x277D38548];
  v20 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v21 = sub_23875E910();

  [v20 subject:v19 sendEvent:v21];
}

uint64_t sub_23855D82C@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;
  v13 = sub_23875E0D0();
  *a1 = v7;
  *(a1 + 8) = v9;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v13;
  sub_23843980C(v7, v9, v4);

  sub_2384397FC(v7, v9, v4);
}

uint64_t sub_23855DA28@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_23875CDB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OrderDetailsContactSection(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D0, &qword_23876F590);
  v11 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v13 = v31 - v12;
  v37 = sub_23855AE40();
  v38 = v14;
  sub_2385619D0(v1, v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_238561A34(v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  v34 = sub_2384397A8();
  sub_23875E230();
  v17 = v2 + *(v8 + 20);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_23875EFF0();
    v19 = sub_23875D730();
    sub_23875C110();

    sub_23875CDA0();
    swift_getAtKeyPath();
    sub_2384348B8(v18, 0);
    (*(v4 + 8))(v7, v3);
    LOBYTE(v18) = v37;
  }

  KeyPath = swift_getKeyPath();
  v21 = swift_allocObject();
  *(v21 + 16) = v18 & 1;
  v22 = &v13[*(v35 + 36)];
  *v22 = KeyPath;
  v22[1] = sub_238562718;
  v22[2] = v21;
  v23 = sub_23855AE40();
  v33 = v24;
  v42 = v23;
  v43 = v24;
  v25 = v2 + *(v8 + 24);
  v26 = *v25;
  v27 = *(v25 + 8);
  v40 = v26;
  v41 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  v28 = sub_23875E1D0();
  v32 = v31;
  v31[3] = v39;
  MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2D8, &unk_23876F598);
  sub_238561FA0();
  sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598);
  sub_23875DCD0();

  return sub_238439884(v13, &qword_27DF0E2D0, &qword_23876F590);
}

uint64_t sub_23855DED4(uint64_t a1)
{
  v25 = a1;
  v26 = sub_23875C6D0();
  v1 = *(v26 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v26);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23875ED50();
  v24 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = *MEMORY[0x277D38428];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v10;
  v11 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  *(v7 + 64) = 0x746E61686372656DLL;
  v12 = *MEMORY[0x277D384B8];
  *(v7 + 72) = 0xEF65746973626557;
  *(v7 + 80) = v12;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v13 = v8;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = v16;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, &v27);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];

  v21 = v25 + *(type metadata accessor for OrderDetailsContactSection(0) + 28);
  sub_2384D51B0(v4);
  v22 = *(type metadata accessor for OrderDetailsContactSection.ViewModel(0) + 20);
  sub_23875C6A0();
  (*(v1 + 8))(v4, v26);
}

__n128 sub_23855E2EC@<Q0>(char a1@<W1>, void (*a2)(__n128 *__return_ptr)@<X2>, uint64_t a3@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = sub_23875CE60();
  v20 = a1 & 1;
  a2(&v14);

  v7 = v15;
  v8 = v16;
  v9 = v17;
  v10 = v18;
  v11 = v19;
  result = v14;
  v13 = v20;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = v13;
  *(a3 + 24) = result;
  *(a3 + 40) = v7;
  *(a3 + 48) = v8;
  *(a3 + 56) = v9;
  *(a3 + 64) = v10;
  *(a3 + 72) = v11;
  return result;
}

uint64_t sub_23855E3F0@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;
  v13 = sub_23875E0D0();
  *a1 = v7;
  *(a1 + 8) = v9;
  LOBYTE(v4) = v4 & 1;
  *(a1 + 16) = v4;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v13;
  sub_23843980C(v7, v9, v4);

  sub_2384397FC(v7, v9, v4);
}

void sub_23855E5E8(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsContactSection(0) + 24));
  v3 = *v2;
  v4 = *(v2 + 1);
  LOBYTE(v21[0]) = v3;
  v21[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  *(inited + 32) = sub_23875EA50();
  *(inited + 40) = 0x63697373616C63;
  *(inited + 48) = 0xE700000000000000;
  v6 = sub_23854B138(inited);
  swift_setDeallocating();
  sub_238439884(inited + 32, &unk_27DF130A0, &unk_238763810);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_238763300;
  v8 = *MEMORY[0x277D383D8];
  *(v7 + 32) = *MEMORY[0x277D383D8];
  v9 = *MEMORY[0x277D38428];
  *(v7 + 40) = sub_23875EA80();
  *(v7 + 48) = v10;
  v11 = *MEMORY[0x277D38390];
  *(v7 + 56) = *MEMORY[0x277D38390];
  strcpy((v7 + 64), "contactSupport");
  v12 = *MEMORY[0x277D384B8];
  *(v7 + 79) = -18;
  *(v7 + 80) = v12;
  strcpy((v7 + 88), "orderDetails");
  *(v7 + 101) = 0;
  *(v7 + 102) = -5120;
  v13 = v8;
  v14 = v11;
  v15 = v12;
  v16 = sub_23854B138(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v16;
  sub_2385C33E4(v6, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v21);

  v18 = *MEMORY[0x277D38548];
  v19 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v20 = sub_23875E910();

  [v19 subject:v18 sendEvent:v20];
}

uint64_t sub_23855E950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A328, &unk_2387655E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v151 = &v143 - v5;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF12E30, &unk_238765430);
  v154 = *(v155 - 8);
  v6 = *(v154 + 64);
  MEMORY[0x28223BE20](v155);
  v152 = &v143 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v165 = &v143 - v9;
  v10 = type metadata accessor for OrderDetailsContactSection(0);
  v169 = *(v10 - 8);
  v11 = *(v169 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v170 = v12;
  v168 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580);
  v175 = *(v13 - 8);
  v14 = *(v175 + 64);
  MEMORY[0x28223BE20](v13);
  v159 = &v143 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v149 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v143 - v20;
  MEMORY[0x28223BE20](v22);
  v148 = &v143 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v143 - v25;
  v27 = sub_23875B940();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v27);
  v146 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v145 = &v143 - v32;
  MEMORY[0x28223BE20](v33);
  v144 = &v143 - v34;
  MEMORY[0x28223BE20](v35);
  v158 = &v143 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v143 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E318, &qword_23876F5A8);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v164 = &v143 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v172 = &v143 - v44;
  MEMORY[0x28223BE20](v45);
  v163 = &v143 - v46;
  MEMORY[0x28223BE20](v47);
  v162 = &v143 - v48;
  MEMORY[0x28223BE20](v49);
  v161 = &v143 - v50;
  MEMORY[0x28223BE20](v51);
  v174 = &v143 - v52;
  MEMORY[0x28223BE20](v53);
  v173 = &v143 - v54;
  MEMORY[0x28223BE20](v55);
  v171 = &v143 - v56;
  sub_23875ED50();
  v150 = sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v167 = v13;
  v157 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  sub_23843981C(a1 + *(v157 + 32), v26, &qword_27DF0D040, &qword_2387676A0);
  v166 = *(v28 + 48);
  v57 = v166(v26, 1, v27);
  v160 = v28;
  if (v57 == 1)
  {
    sub_238439884(v26, &qword_27DF0D040, &qword_2387676A0);
    v58 = 1;
    v59 = v171;
    v60 = v167;
  }

  else
  {
    (*(v28 + 32))(v39, v26, v27);
    (*(v28 + 16))(v158, v39, v27);
    v147 = v21;
    v61 = v159;
    sub_23875D9A0();
    v62 = v168;
    sub_2385619D0(a1, v168);
    v63 = a1;
    v64 = (*(v169 + 80) + 16) & ~*(v169 + 80);
    v65 = swift_allocObject();
    sub_238561A34(v62, v65 + v64);
    KeyPath = swift_getKeyPath();
    v67 = swift_allocObject();
    *(v67 + 16) = sub_2385626C0;
    *(v67 + 24) = v65;
    v60 = v167;
    v68 = &v61[*(v167 + 36)];
    v69 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
    a1 = v63;
    sub_23875C6C0();
    (*(v28 + 8))(v39, v27);
    *v68 = KeyPath;
    v70 = v61;
    v21 = v147;
    v59 = v171;
    sub_2385625DC(v70, v171);
    v58 = 0;
  }

  v71 = *(v175 + 56);
  v175 += 56;
  v71(v59, v58, 1, v60);
  v72 = v157;
  v73 = (a1 + *(v157 + 28));
  v74 = v73[1];
  v75 = v60;
  v156 = v71;
  if (v74)
  {
    v76 = *v73;
    v176 = 980182388;
    v177 = 0xE400000000000000;
    MEMORY[0x23EE63650](v76);
    v77 = v148;
    sub_23875B910();
    v78 = v77;

    if (v166(v77, 1, v27) != 1)
    {
      v79 = v160;
      v80 = v144;
      (*(v160 + 32))(v144, v78, v27);
      (*(v79 + 16))(v158, v80, v27);
      v147 = v21;
      v81 = v159;
      sub_23875D9A0();
      v82 = v168;
      sub_2385619D0(a1, v168);
      v83 = (*(v169 + 80) + 16) & ~*(v169 + 80);
      v84 = swift_allocObject();
      sub_238561A34(v82, v84 + v83);
      v85 = swift_getKeyPath();
      v86 = swift_allocObject();
      *(v86 + 16) = sub_2385626B8;
      *(v86 + 24) = v84;
      v87 = &v81[*(v167 + 36)];
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
      v75 = v167;
      sub_23875C6C0();
      (*(v79 + 8))(v80, v27);
      *v87 = v85;
      v72 = v157;
      v89 = v81;
      v21 = v147;
      v90 = v82;
      v71 = v156;
      sub_2385625DC(v89, v173);
      v91 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v78 = v148;
    (*(v160 + 56))(v148, 1, 1, v27);
  }

  sub_238439884(v78, &qword_27DF0D040, &qword_2387676A0);
  v91 = 1;
  v90 = v168;
LABEL_11:
  v71(v173, v91, 1, v75);
  v92 = (a1 + *(v72 + 40));
  if (v92[1])
  {
    v93 = *v92;
    v176 = 0x3A6F746C69616DLL;
    v177 = 0xE700000000000000;
    MEMORY[0x23EE63650](v93);
    sub_23875B910();

    if (v166(v21, 1, v27) != 1)
    {
      v94 = v160;
      v95 = v145;
      (*(v160 + 32))(v145, v21, v27);
      (*(v94 + 16))(v158, v95, v27);
      v96 = v159;
      sub_23875D9A0();
      sub_2385619D0(a1, v168);
      v97 = (*(v169 + 80) + 16) & ~*(v169 + 80);
      v98 = swift_allocObject();
      sub_238561A34(v168, v98 + v97);
      v99 = swift_getKeyPath();
      v100 = swift_allocObject();
      *(v100 + 16) = sub_23856264C;
      *(v100 + 24) = v98;
      v101 = (v96 + *(v167 + 36));
      v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
      v75 = v167;
      sub_23875C6C0();
      v103 = v94;
      v71 = v156;
      v104 = v95;
      v90 = v168;
      (*(v103 + 8))(v104, v27);
      *v101 = v99;
      v72 = v157;
      sub_2385625DC(v96, v174);
      v105 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    (*(v160 + 56))(v21, 1, 1, v27);
  }

  sub_238439884(v21, &qword_27DF0D040, &qword_2387676A0);
  v105 = 1;
LABEL_16:
  v71(v174, v105, 1, v75);
  v106 = v149;
  sub_23843981C(a1 + *(v72 + 36), v149, &qword_27DF0D040, &qword_2387676A0);
  if (v166(v106, 1, v27) == 1)
  {
    sub_238439884(v106, &qword_27DF0D040, &qword_2387676A0);
    v107 = 1;
    v108 = v161;
  }

  else
  {
    v109 = v160;
    v110 = v146;
    (*(v160 + 32))(v146, v106, v27);
    (*(v109 + 16))(v158, v110, v27);
    v111 = v159;
    sub_23875D9A0();
    sub_2385619D0(a1, v90);
    v112 = (*(v169 + 80) + 16) & ~*(v169 + 80);
    v113 = swift_allocObject();
    sub_238561A34(v90, v113 + v112);
    v114 = swift_getKeyPath();
    v115 = swift_allocObject();
    *(v115 + 16) = sub_2385625D4;
    *(v115 + 24) = v113;
    v116 = (v111 + *(v75 + 36));
    v117 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B8, &qword_23876F588) + 28);
    sub_23875C6C0();
    (*(v109 + 8))(v110, v27);
    v71 = v156;
    *v116 = v114;
    v108 = v161;
    sub_2385625DC(v111, v161);
    v107 = 0;
  }

  v71(v108, v107, 1, v75);
  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v118 = qword_2814F1B90;
  v119 = sub_23875EA50();
  v120 = sub_23875EA50();
  v121 = sub_23875EA50();
  v122 = [v118 localizedStringForKey:v119 value:v120 table:v121];

  v123 = sub_23875EA80();
  v125 = v124;

  v176 = v123;
  v177 = v125;
  v126 = v151;
  sub_23875C3B0();
  v127 = sub_23875C3C0();
  (*(*(v127 - 8) + 56))(v126, 0, 1, v127);
  sub_2385619D0(a1, v90);
  v128 = (*(v169 + 80) + 16) & ~*(v169 + 80);
  v129 = swift_allocObject();
  sub_238561A34(v90, v129 + v128);
  sub_2384397A8();
  v130 = v165;
  sub_23875E220();
  v131 = v162;
  sub_23843981C(v171, v162, &qword_27DF0E318, &qword_23876F5A8);
  v132 = v163;
  sub_23843981C(v173, v163, &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v174, v172, &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v108, v164, &qword_27DF0E318, &qword_23876F5A8);
  v133 = v154;
  v134 = *(v154 + 16);
  v135 = v152;
  v136 = v130;
  v137 = v155;
  v134(v152, v136, v155);
  v138 = v153;
  sub_23843981C(v131, v153, &qword_27DF0E318, &qword_23876F5A8);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E320, qword_23876F5B0);
  sub_23843981C(v132, v138 + v139[12], &qword_27DF0E318, &qword_23876F5A8);
  sub_23843981C(v172, v138 + v139[16], &qword_27DF0E318, &qword_23876F5A8);
  v140 = v164;
  sub_23843981C(v164, v138 + v139[20], &qword_27DF0E318, &qword_23876F5A8);
  v134((v138 + v139[24]), v135, v137);
  v141 = *(v133 + 8);
  v141(v165, v137);
  sub_238439884(v161, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v174, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v173, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v171, &qword_27DF0E318, &qword_23876F5A8);
  v141(v135, v137);
  sub_238439884(v140, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v172, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v163, &qword_27DF0E318, &qword_23876F5A8);
  sub_238439884(v162, &qword_27DF0E318, &qword_23876F5A8);
}

uint64_t sub_23855FC00@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_23855FDA8(char a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (!a2)
    {
      v2 = qword_2814F0880;
      if (a1)
      {
LABEL_8:
        if (v2 != -1)
        {
          swift_once();
        }

        v3 = qword_2814F1B90;
        goto LABEL_23;
      }

      goto LABEL_20;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else if (a2 == 2)
  {
    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

  else
  {
    if (a2 == 3)
    {
      v2 = qword_2814F0880;
      if (a1)
      {
        goto LABEL_8;
      }

LABEL_20:
      if (v2 != -1)
      {
        swift_once();
      }

      v3 = qword_2814F1B90;
      goto LABEL_23;
    }

    if (qword_2814F0880 != -1)
    {
      swift_once();
    }

    v3 = qword_2814F1B90;
  }

LABEL_23:
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = sub_23875EA50();
  v7 = [v3 localizedStringForKey:v4 value:v5 table:v6];

  v8 = sub_23875EA80();
  return v8;
}

void sub_238560034(int a1)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v45 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF0D3C0, &qword_238769F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238763310;
  *(inited + 32) = sub_23875EA50();
  v45[1] = inited + 32;
  v8 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v9 = v8[9];
  v10 = sub_23875B940();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  v13 = v12(v2 + v9, 1, v10);
  v14 = MEMORY[0x277D38520];
  if (v13 != 1)
  {
    v14 = MEMORY[0x277D38528];
  }

  v15 = *v14;
  *(inited + 40) = sub_23875EA80();
  *(inited + 48) = v16;
  *(inited + 56) = sub_23875EA50();
  v17 = v8[7];
  v46 = v2;
  v18 = (v2 + v17);
  if (v18[1])
  {
    v19 = *v18;
    v49[0] = 980182388;
    v49[1] = 0xE400000000000000;
    MEMORY[0x23EE63650](v19);
    sub_23875B910();

    if (v12(v6, 1, v10) != 1)
    {
      v20 = MEMORY[0x277D38528];
      goto LABEL_8;
    }
  }

  else
  {
    (*(v11 + 56))(v6, 1, 1, v10);
  }

  v20 = MEMORY[0x277D38520];
LABEL_8:
  v21 = *v20;
  v22 = sub_23875EA80();
  v24 = v23;
  sub_238439884(v6, &qword_27DF0D040, &qword_2387676A0);
  *(inited + 64) = v22;
  *(inited + 72) = v24;
  *(inited + 80) = sub_23875EA50();
  v25 = v12(v46 + v8[8], 1, v10);
  v26 = MEMORY[0x277D38520];
  if (v25 != 1)
  {
    v26 = MEMORY[0x277D38528];
  }

  v27 = *v26;
  *(inited + 88) = sub_23875EA80();
  *(inited + 96) = v28;
  *(inited + 104) = sub_23875EA50();
  *(inited + 112) = 0x63697373616C63;
  *(inited + 120) = 0xE700000000000000;
  v29 = sub_23854B138(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF130A0, &unk_238763810);
  swift_arrayDestroy();
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_238763300;
  v31 = *MEMORY[0x277D383D8];
  *(v30 + 32) = *MEMORY[0x277D383D8];
  v32 = *MEMORY[0x277D38428];
  *(v30 + 40) = sub_23875EA80();
  *(v30 + 48) = v33;
  v34 = *MEMORY[0x277D38390];
  *(v30 + 56) = *MEMORY[0x277D38390];
  *(v30 + 64) = sub_23844B4DC(v48);
  *(v30 + 72) = v35;
  v36 = *MEMORY[0x277D384B8];
  *(v30 + 80) = *MEMORY[0x277D384B8];
  *(v30 + 88) = 0xD000000000000013;
  *(v30 + 96) = 0x8000000238784EC0;
  v37 = v31;
  v38 = v34;
  v39 = v36;
  v40 = sub_23854B138(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49[0] = v40;
  sub_2385C33E4(v29, sub_2386E31DC, 0, isUniquelyReferenced_nonNull_native, v49);

  v42 = *MEMORY[0x277D38548];
  v43 = objc_opt_self();
  type metadata accessor for PKAnalyticsKey(0);
  sub_2385626C8(&qword_27DF09090, type metadata accessor for PKAnalyticsKey);
  v44 = sub_23875E910();

  [v43 subject:v42 sendEvent:v44];
}

uint64_t sub_238560528@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_2385606D0@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_238560878@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_238560A20(uint64_t a1)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for OrderDetailsContactSection(0) + 24));
  v4 = *v2;
  v5 = *(v2 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0A118, &unk_2387655C0);
  sub_23875E1C0();
  sub_238560034(35);
}

uint64_t sub_238560B08@<X0>(uint64_t a1@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2814F0880 != -1)
  {
    swift_once();
  }

  v2 = qword_2814F1B90;
  v3 = sub_23875EA50();
  v4 = sub_23875EA50();
  v5 = sub_23875EA50();
  v6 = [v2 localizedStringForKey:v3 value:v4 table:v5];

  sub_23875EA80();
  sub_2384397A8();
  v7 = sub_23875DAA0();
  v9 = v8;
  LOBYTE(v4) = v10;
  v12 = v11;

  *a1 = v7;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_238560CB0@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_23875ED50();
  sub_23875ED40();
  sub_23875ECE0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_23855FDA8(1, a1);
  sub_2384397A8();
  v4 = sub_23875DAA0();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8 & 1;
  *(a2 + 24) = v10;
  return result;
}

uint64_t sub_238560DD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v12 = v11[8];
  v13 = sub_23875B940();
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v44 = v12;
  v15(a3 + v12, 1, 1, v13);
  v45 = v11[9];
  v46 = v15;
  v15(a3 + v45, 1, 1, v13);
  v16 = [a1 displayName];
  v17 = sub_2387586A0();
  v19 = v18;

  *a3 = v17;
  a3[1] = v19;
  v20 = [a1 url];
  v21 = a3 + v11[5];
  sub_23875B8B0();

  v22 = v11[6];
  v48 = v14;
  (*(v14 + 16))(a3 + v22, v49, v13);
  v23 = [a1 phoneNumber];
  if (v23)
  {
    v24 = v23;
    v25 = sub_23875EA80();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = (a3 + v11[7]);
  *v28 = v25;
  v28[1] = v27;
  v29 = [a1 businessChatURL];
  v30 = v47;
  if (v29)
  {
    v31 = v29;
    sub_23875B8B0();

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = v46;
  v34 = 1;
  v46(v10, v32, 1, v13);
  sub_2384A475C(v10, a3 + v44);
  v35 = [a1 contactURL];
  if (v35)
  {
    v36 = v35;
    sub_23875B8B0();

    v34 = 0;
  }

  v33(v30, v34, 1, v13);
  sub_2384A475C(v30, a3 + v45);
  v37 = [a1 emailAddress];
  if (v37)
  {
    v38 = v37;
    v39 = sub_23875EA80();
    v41 = v40;
  }

  else
  {

    v39 = 0;
    v41 = 0;
  }

  v42 = (a3 + v11[10]);
  result = (*(v48 + 8))(v49, v13);
  *v42 = v39;
  v42[1] = v41;
  return result;
}

uint64_t sub_238561120(void *a1, void *a2)
{
  v4 = sub_23875B940();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0D040, &qword_2387676A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B0D8, &qword_238772730);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v54 - v21;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_23875F630() & 1) == 0)
  {
    return 0;
  }

  v59 = v8;
  v23 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v24 = v23[5];
  if ((sub_23875B890() & 1) == 0)
  {
    return 0;
  }

  v25 = v23[6];
  if ((sub_23875B890() & 1) == 0)
  {
    return 0;
  }

  v26 = v23[7];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30 || (*v27 != *v29 || v28 != v30) && (sub_23875F630() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v30)
  {
    return 0;
  }

  v55 = v12;
  v58 = v5;
  v31 = v23[8];
  v32 = *(v16 + 48);
  sub_23843981C(a1 + v31, v22, &qword_27DF0D040, &qword_2387676A0);
  v57 = v32;
  sub_23843981C(a2 + v31, &v22[v32], &qword_27DF0D040, &qword_2387676A0);
  v33 = v58 + 48;
  v34 = *(v58 + 48);
  v35 = v34(v22, 1, v4);
  v56 = v34;
  if (v35 == 1)
  {
    if (v34(&v22[v57], 1, v4) == 1)
    {
      v54 = v33;
      sub_238439884(v22, &qword_27DF0D040, &qword_2387676A0);
      goto LABEL_20;
    }

LABEL_18:
    v36 = v22;
LABEL_26:
    sub_238439884(v36, &qword_27DF0B0D8, &qword_238772730);
    return 0;
  }

  sub_23843981C(v22, v15, &qword_27DF0D040, &qword_2387676A0);
  v54 = v33;
  if (v34(&v22[v57], 1, v4) == 1)
  {
    (*(v58 + 8))(v15, v4);
    goto LABEL_18;
  }

  v37 = v58;
  (*(v58 + 32))(v59, &v22[v57], v4);
  sub_2385626C8(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
  LODWORD(v57) = sub_23875E9E0();
  v38 = *(v37 + 8);
  v38(v59, v4);
  v38(v15, v4);
  sub_238439884(v22, &qword_27DF0D040, &qword_2387676A0);
  if ((v57 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v39 = v23[9];
  v40 = *(v16 + 48);
  sub_23843981C(a1 + v39, v19, &qword_27DF0D040, &qword_2387676A0);
  sub_23843981C(a2 + v39, &v19[v40], &qword_27DF0D040, &qword_2387676A0);
  v41 = v56;
  if (v56(v19, 1, v4) != 1)
  {
    v42 = v55;
    sub_23843981C(v19, v55, &qword_27DF0D040, &qword_2387676A0);
    if (v41(&v19[v40], 1, v4) != 1)
    {
      v44 = v58;
      v45 = &v19[v40];
      v46 = v59;
      (*(v58 + 32))(v59, v45, v4);
      sub_2385626C8(&qword_27DF0B0E0, MEMORY[0x277CC9260]);
      v47 = sub_23875E9E0();
      v48 = *(v44 + 8);
      v48(v46, v4);
      v48(v42, v4);
      sub_238439884(v19, &qword_27DF0D040, &qword_2387676A0);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_30;
    }

    (*(v58 + 8))(v42, v4);
    goto LABEL_25;
  }

  if (v41(&v19[v40], 1, v4) != 1)
  {
LABEL_25:
    v36 = v19;
    goto LABEL_26;
  }

  sub_238439884(v19, &qword_27DF0D040, &qword_2387676A0);
LABEL_30:
  v49 = v23[10];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (a2 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (v53 && (*v50 == *v52 && v51 == v53 || (sub_23875F630() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v53)
  {
    return 1;
  }

  return 0;
}

void sub_2385617D4()
{
  type metadata accessor for OrderDetailsContactSection.ViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_238561900(319, &qword_2814F09A0, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_238561900(319, &qword_27DF0A0B0, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_238561950(319, &qword_27DF0B130, MEMORY[0x277CDF708], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_238561900(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_238561950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2385619D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsContactSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238561A34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderDetailsContactSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_14()
{
  v1 = type metadata accessor for OrderDetailsContactSection(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;
  v4 = *(v0 + v21 + 8);

  v5 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v6 = v5[5];
  v7 = sub_23875B940();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v9(v3 + v5[6], v7);
  v10 = *(v3 + v5[7] + 8);

  v11 = v5[8];
  v12 = *(v8 + 48);
  if (!v12(v3 + v11, 1, v7))
  {
    v9(v3 + v11, v7);
  }

  v13 = v5[9];
  if (!v12(v3 + v13, 1, v7))
  {
    v9(v3 + v13, v7);
  }

  v14 = *(v3 + v5[10] + 8);

  sub_2384348B8(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v15 = *(v3 + v1[6] + 8);

  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875C6D0();
    (*(*(v17 - 8) + 8))(v3 + v16, v17);
  }

  else
  {
    v18 = *(v3 + v16);
  }

  return MEMORY[0x2821FE8E8](v22, v21 + v20, v2 | 7);
}

uint64_t sub_238561D34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OrderDetailsContactSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_238561DBC()
{
  result = qword_27DF0E2C0;
  if (!qword_27DF0E2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E270, &qword_23876F4E8);
    sub_238561E48();
    sub_238562220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2C0);
  }

  return result;
}

unint64_t sub_238561E48()
{
  result = qword_27DF0E2C8;
  if (!qword_27DF0E2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E268, &qword_23876F4E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D8, &unk_23876F598);
    sub_238561FA0();
    sub_2384397A8();
    sub_23843A3E8(&qword_27DF0E2E8, &qword_27DF0E2D8, &unk_23876F598);
    swift_getOpaqueTypeConformance2();
    sub_238562084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2C8);
  }

  return result;
}

unint64_t sub_238561FA0()
{
  result = qword_27DF0E2E0;
  if (!qword_27DF0E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2D0, &qword_23876F590);
    sub_23843A3E8(&qword_27DF0D2C0, &qword_27DF12E30, &unk_238765430);
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2E0);
  }

  return result;
}

unint64_t sub_238562084()
{
  result = qword_27DF0E2F0;
  if (!qword_27DF0E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E248, &qword_23876F4C0);
    sub_23856213C();
    sub_23843A3E8(&qword_27DF0A858, &qword_27DF0A860, &qword_238768810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2F0);
  }

  return result;
}

unint64_t sub_23856213C()
{
  result = qword_27DF0E2F8;
  if (!qword_27DF0E2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E2B0, &qword_23876F580);
    sub_23843A3E8(&qword_27DF0E300, &qword_27DF0E0C0, &qword_23876EF40);
    sub_23843A3E8(&qword_27DF0E308, &qword_27DF0E2B8, &qword_23876F588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E2F8);
  }

  return result;
}

unint64_t sub_238562220()
{
  result = qword_27DF0E310;
  if (!qword_27DF0E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DF0E240, &qword_23876F4B8);
    sub_238562084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF0E310);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  v1 = type metadata accessor for OrderDetailsContactSection(0);
  v2 = *(*(v1 - 1) + 80);
  v20 = *(*(v1 - 1) + 64);
  v21 = (v2 + 16) & ~v2;
  v22 = v0;
  v3 = v0 + v21;
  v4 = *(v0 + v21 + 8);

  v5 = type metadata accessor for OrderDetailsContactSection.ViewModel(0);
  v6 = v5[5];
  v7 = sub_23875B940();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v3 + v6, v7);
  v9(v3 + v5[6], v7);
  v10 = *(v3 + v5[7] + 8);

  v11 = v5[8];
  v12 = *(v8 + 48);
  if (!v12(v3 + v11, 1, v7))
  {
    v9(v3 + v11, v7);
  }

  v13 = v5[9];
  if (!v12(v3 + v13, 1, v7))
  {
    v9(v3 + v13, v7);
  }

  v14 = *(v3 + v5[10] + 8);

  sub_2384348B8(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  v15 = *(v3 + v1[6] + 8);

  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0B150, &unk_238767A10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_23875C6D0();
    (*(*(v17 - 8) + 8))(v3 + v16, v17);
  }

  else
  {
    v18 = *(v3 + v16);
  }

  return MEMORY[0x2821FE8E8](v22, v20 + v21 + 1, v2 | 7);
}

void sub_238562514()
{
  v1 = *(type metadata accessor for OrderDetailsContactSection(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  sub_238560D94(v2, v3);
}

uint64_t sub_2385625DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E2B0, &qword_23876F580);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_238562654(int a1)
{
  v3 = *(type metadata accessor for OrderDetailsContactSection(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_238560034(a1);
}

uint64_t sub_2385626C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OrderReturnLabel.fileUrl.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
  v4 = sub_23875B940();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OrderReturnLabel.name.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name);
  v2 = *(v0 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8);

  return v1;
}

FinanceKitUI::OrderReturnLabel::MimeType_optional __swiftcall OrderReturnLabel.MimeType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23875F590();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t OrderReturnLabel.MimeType.rawValue.getter()
{
  v1 = 0x746163696C707061;
  if (*v0 != 1)
  {
    v1 = 0x6E702F6567616D69;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x706A2F6567616D69;
  }
}

uint64_t sub_2385628C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746163696C707061;
  v4 = 0xEF6664702F6E6F69;
  if (v2 != 1)
  {
    v3 = 0x6E702F6567616D69;
    v4 = 0xE900000000000067;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x706A2F6567616D69;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA00000000006765;
  }

  v7 = 0x746163696C707061;
  v8 = 0xEF6664702F6E6F69;
  if (*a2 != 1)
  {
    v7 = 0x6E702F6567616D69;
    v8 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x706A2F6567616D69;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006765;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23875F630();
  }

  return v11 & 1;
}

uint64_t sub_2385629E8()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

uint64_t sub_238562AA0()
{
  *v0;
  *v0;
  sub_23875EB30();
}

uint64_t sub_238562B44()
{
  v1 = *v0;
  sub_23875F700();
  sub_23875EB30();

  return sub_23875F760();
}

void sub_238562C04(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006765;
  v4 = 0xEF6664702F6E6F69;
  v5 = 0x746163696C707061;
  if (v2 != 1)
  {
    v5 = 0x6E702F6567616D69;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x706A2F6567616D69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t *sub_238562C78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v7;
  sub_23875EAE0();
  v15 = sub_23875F590();

  if (v15 > 2)
  {
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v19 = sub_23875C1E0();
    __swift_project_value_buffer(v19, qword_27DF2F690);

    v20 = sub_23875C1B0();
    v21 = sub_23875EFE0();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315394;
      v24 = sub_2384615AC(a4, a5, &v30);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2080;
      v25 = sub_2384615AC(a2, a3, &v30);

      *(v22 + 14) = v25;
      _os_log_impl(&dword_2383F8000, v20, v21, "Return label %s has unsupported mime type: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE64DF0](v23, -1, -1);
      MEMORY[0x23EE64DF0](v22, -1, -1);
    }

    else
    {
    }

    v26 = sub_23875B940();
    (*(*(v26 - 8) + 8))(a1, v26);
    v27 = *(*v7 + 48);
    v28 = *(*v7 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {

    v16 = OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl;
    v17 = sub_23875B940();
    (*(*(v17 - 8) + 32))(v7 + v16, a1, v17);
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) = v15;
    v18 = (v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name);
    *v18 = a4;
    v18[1] = a5;
    *(v7 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) = a6 & 1;
  }

  return v7;
}

uint64_t OrderReturnLabel.deinit()
{
  v1 = v0;
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = sub_23875B940();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp))
  {
    v7 = [objc_opt_self() defaultManager];
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl, v2);
    v8 = sub_23875B860();
    v9 = *(v3 + 8);
    v9(v6, v2);
    v18[0] = 0;
    v10 = [v7 removeItemAtURL:v8 error:v18];

    if (v10)
    {
      v11 = v18[0];
    }

    else
    {
      v12 = v18[0];
      v13 = sub_23875B730();

      swift_willThrow();
    }

    v9((v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl), v2);
  }

  else
  {
    (*(v3 + 8))(v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_fileUrl, v2);
  }

  v14 = *(v1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8);

  v15 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t OrderReturnLabel.__deallocating_deinit()
{
  OrderReturnLabel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t _s12FinanceKitUI16OrderReturnLabelC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_23875B890() & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = 0xEA00000000006765;
  v5 = 0x706A2F6567616D69;
  if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
  {
    if (*(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) == 1)
    {
      v6 = 0x746163696C707061;
      v7 = 0xEF6664702F6E6F69;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
      {
        goto LABEL_11;
      }
    }

    else
    {
      v6 = 0x6E702F6567616D69;
      v7 = 0xE900000000000067;
      if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v6 = 0x706A2F6567616D69;
    v7 = 0xEA00000000006765;
    if (!*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType))
    {
LABEL_11:
      if (v6 != v5)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }
  }

  if (*(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_mimeType) == 1)
  {
    v5 = 0x746163696C707061;
    v4 = 0xEF6664702F6E6F69;
    goto LABEL_11;
  }

  v4 = 0xE900000000000067;
  if (v6 != 0x6E702F6567616D69)
  {
    goto LABEL_16;
  }

LABEL_14:
  if (v7 == v4)
  {

    goto LABEL_17;
  }

LABEL_16:
  v8 = sub_23875F630();

  if ((v8 & 1) == 0)
  {
LABEL_23:
    v10 = 0;
    return v10 & 1;
  }

LABEL_17:
  v9 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name) && *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8) == *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_name + 8);
  if (!v9 && (sub_23875F630() & 1) == 0)
  {
    goto LABEL_23;
  }

  v10 = *(a1 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) ^ *(a2 + OBJC_IVAR____TtC12FinanceKitUI16OrderReturnLabel_shouldCleanUp) ^ 1;
  return v10 & 1;
}

uint64_t *_s12FinanceKitUI16OrderReturnLabelC7fileUrlACSg10Foundation3URLV_tcfC_0(char *a1)
{
  v51 = sub_23875B940();
  v49 = *(v51 - 8);
  v2 = *(v49 + 64);
  MEMORY[0x28223BE20](v51);
  v50 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - v5;
  v7 = sub_23875B6C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0DBB8, &qword_23876E0B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v49 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0E350, &unk_23876F730);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2387632F0;
  v17 = *MEMORY[0x277CBE7B8];
  *(inited + 32) = *MEMORY[0x277CBE7B8];
  v18 = v17;
  sub_23844D11C(inited);
  swift_setDeallocating();
  sub_238564548(inited + 32);
  sub_23875B830();

  sub_23875B6B0();
  (*(v8 + 8))(v11, v7);
  v19 = sub_23875C0D0();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_238439884(v15, &qword_27DF0DBB8, &qword_23876E0B8);
    v21 = v50;
LABEL_3:
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v22 = sub_23875C1E0();
    __swift_project_value_buffer(v22, qword_27DF2F690);
    v23 = v49;
    v24 = v51;
    (*(v49 + 16))(v21, a1, v51);
    v25 = sub_23875C1B0();
    v26 = sub_23875EFE0();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v52 = v28;
      *v27 = 136315138;
      v29 = sub_23875B8F0();
      v30 = v21;
      v32 = v31;
      v33 = *(v23 + 8);
      v33(v30, v24);
      v34 = sub_2384615AC(v29, v32, &v52);

      *(v27 + 4) = v34;
      _os_log_impl(&dword_2383F8000, v25, v26, "Could not retreive mimeType from %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x23EE64DF0](v28, -1, -1);
      MEMORY[0x23EE64DF0](v27, -1, -1);

      v33(a1, v24);
    }

    else
    {

      v35 = *(v23 + 8);
      v35(a1, v24);
      v35(v21, v24);
    }

    return 0;
  }

  v37 = sub_23875C0C0();
  v39 = v38;
  (*(v20 + 8))(v15, v19);
  v21 = v50;
  if (!v39)
  {
    goto LABEL_3;
  }

  v40 = sub_23875B850();
  v42 = v41;
  v43 = v49;
  v44 = v51;
  (*(v49 + 16))(v6, a1, v51);
  v45 = type metadata accessor for OrderReturnLabel();
  v46 = *(v45 + 48);
  v47 = *(v45 + 52);
  swift_allocObject();
  v48 = sub_238562C78(v6, v37, v39, v40, v42, 0);
  (*(v43 + 8))(a1, v44);
  result = v48;
  if (!v48)
  {
    return 0;
  }

  return result;
}

uint64_t *_s12FinanceKitUI16OrderReturnLabelC4data8mimeType4nameACSg10Foundation4DataV_S2StcfC_0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v87 = a2;
  v88 = a6;
  v82 = a5;
  v85 = a4;
  v86 = a1;
  v78 = a3;
  v90[1] = *MEMORY[0x277D85DE8];
  v89 = sub_23875B810();
  v6 = *(v89 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v89);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23875BCB0();
  v10 = *(v84 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v84);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23875B940();
  v83 = *(v14 - 8);
  v15 = *(v83 + 64);
  MEMORY[0x28223BE20](v14);
  v79 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v80 = &v77 - v18;
  MEMORY[0x28223BE20](v19);
  v81 = &v77 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v77 - v25;
  v27 = NSTemporaryDirectory();
  sub_23875EA80();

  sub_23875B840();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF0AE08, &unk_2387675C0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_238763B60;
  strcpy((v28 + 32), "returnLabels");
  *(v28 + 45) = 0;
  *(v28 + 46) = -5120;
  sub_23875BCA0();
  v29 = sub_23875BC50();
  v31 = v30;
  (*(v10 + 8))(v13, v84);
  v32 = v83;
  *(v28 + 48) = v29;
  *(v28 + 56) = v31;
  v33 = v89;
  (*(v6 + 104))(v9, *MEMORY[0x277CC91D8], v89);
  sub_2384397A8();
  sub_23875B920();

  (*(v6 + 8))(v9, v33);
  v34 = *(v32 + 8);
  v89 = v14;
  v34(v23, v14);
  v35 = [objc_opt_self() defaultManager];
  v36 = sub_23875B860();
  v90[0] = 0;
  LODWORD(v14) = [v35 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:0 error:v90];

  if (!v14)
  {
    v44 = v90[0];

    v45 = sub_23875B730();

    swift_willThrow();
    if (qword_27DF08CD8 != -1)
    {
      swift_once();
    }

    v46 = sub_23875C1E0();
    __swift_project_value_buffer(v46, qword_27DF2F690);
    v47 = v80;
    (*(v32 + 16))(v80, v26, v89);
    v48 = v45;
    v49 = sub_23875C1B0();
    v50 = sub_23875EFE0();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v84 = v26;
      v54 = v53;
      v90[0] = v53;
      *v51 = 136315394;
      v55 = sub_23875B8F0();
      v56 = v47;
      v57 = v55;
      v59 = v58;
      v34(v56, v89);
      v60 = sub_2384615AC(v57, v59, v90);

      *(v51 + 4) = v60;
      *(v51 + 12) = 2112;
      v61 = v45;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v51 + 14) = v62;
      *v52 = v62;
      _os_log_impl(&dword_2383F8000, v49, v50, "Could not create directory %s with error %@", v51, 0x16u);
      sub_238439884(v52, &qword_27DF09930, &unk_2387638C0);
      MEMORY[0x23EE64DF0](v52, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x23EE64DF0](v54, -1, -1);
      MEMORY[0x23EE64DF0](v51, -1, -1);
      sub_23844C954(v86, v87);

      v63 = v84;
      v64 = v89;
    }

    else
    {
      sub_23844C954(v86, v87);

      v65 = v47;
      v66 = v89;
      v34(v65, v89);
      v63 = v26;
      v64 = v66;
    }

    v34(v63, v64);
    goto LABEL_11;
  }

  v37 = v85;
  v80 = v34;
  v38 = v90[0];
  v39 = v81;
  sub_23875B870();
  v41 = v86;
  v40 = v87;
  sub_23875B9A0();
  v42 = v40;
  v43 = v39;
  v67 = v89;
  (*(v32 + 16))(v23, v39, v89);
  v68 = type metadata accessor for OrderReturnLabel();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  v71 = v42;
  v72 = v43;
  v73 = sub_238562C78(v23, v78, v37, v82, v88, 1);
  sub_23844C954(v41, v71);
  v74 = v80;
  (v80)(v72, v67);
  (v74)(v26, v67);
  result = v73;
  if (!v73)
  {
LABEL_11:
    result = 0;
  }

  v76 = *MEMORY[0x277D85DE8];
  return result;
}