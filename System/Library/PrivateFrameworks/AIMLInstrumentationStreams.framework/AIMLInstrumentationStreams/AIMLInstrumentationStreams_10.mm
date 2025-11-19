uint64_t sub_23C63EFD0(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_23C871E74();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23C63F270(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
  v39 = a2;
  result = sub_23C871E74();
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
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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

uint64_t sub_23C63F514(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v33 = a2;
  result = sub_23C871E74();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
        sub_23C59A744(v22);
      }

      v23 = *(v8 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v21);
      result = sub_23C872124();
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
      *(*(v8 + 48) + 8 * v16) = v21;
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

uint64_t sub_23C63F7B8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_23C871E74();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
      }

      v26 = *(v10 + 40);
      result = sub_23C871B24();
      v27 = -1 << *(v10 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23C63FA34(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v35 = a2;
  result = sub_23C871E74();
  v10 = result;
  if (*(v7 + 16))
  {
    v34 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v10 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](v23);
      result = sub_23C872124();
      v26 = -1 << *(v10 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v5 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v5 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_23C63FCBC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE18, &unk_23C87BED0);
  v35 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C872114();
      if (v21)
      {
        v25 = v21;
        sub_23C871B44();
      }

      result = sub_23C872124();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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
        goto LABEL_39;
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

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_37;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_37:
  *v3 = v8;
  return result;
}

uint64_t sub_23C63FF74(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  v42 = a2;
  result = sub_23C871E74();
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
    v43 = v10;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(v10 + 48);
      v27 = *(v41 + 72);
      v28 = v26 + v27 * v25;
      if (v42)
      {
        sub_23C64BB10(v28, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      else
      {
        sub_23C600748(v28, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      v29 = *(*(v43 + 56) + 8 * v25);
      v30 = *(v13 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      result = sub_23C872124();
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
      result = sub_23C64BB10(v9, *(v13 + 48) + v27 * v21, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(*(v13 + 56) + 8 * v21) = v29;
      ++*(v13 + 16);
      v10 = v43;
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
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23C64033C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
  v43 = a2;
  result = sub_23C871E74();
  v15 = result;
  if (*(v12 + 16))
  {
    v40 = v3;
    v41 = v12;
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
    v22 = result + 64;
    v45 = v11;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v28 = *(v12 + 48);
      v44 = *(v42 + 72);
      v29 = v44 * (v25 | (v16 << 6));
      if (v43)
      {
        sub_23C64BB10(v28 + v29, v45, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C64BB10(*(v12 + 56) + v29, v46, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      else
      {
        sub_23C600748(v28 + v29, v45, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C600748(*(v12 + 56) + v29, v46, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      v30 = *(v15 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      v31 = sub_23C872124();
      v32 = -1 << *(v15 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        result = v45;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      result = v45;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = v44 * v23;
      sub_23C64BB10(result, *(v15 + 48) + v44 * v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
      result = sub_23C64BB10(v46, *(v15 + 56) + v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
      ++*(v15 + 16);
      v12 = v41;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v12 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v17, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_23C640768(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v46 = *(v10 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v15 = *(*v7 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = a2;
  result = sub_23C871E74();
  v17 = result;
  if (*(v14 + 16))
  {
    v44 = v7;
    v45 = v14;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v24 = result + 64;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = v26 | (v18 << 6);
      v30 = *(v14 + 48);
      v48 = *(v46 + 72);
      v31 = v30 + v48 * v29;
      if (v47)
      {
        sub_23C64BB10(v31, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v32 = v13;
        v33 = *(*(v14 + 56) + 8 * v29);
      }

      else
      {
        sub_23C600748(v31, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v32 = v13;
        v33 = *(*(v14 + 56) + 8 * v29);
      }

      v34 = *(v17 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      v35 = v32;
      sub_23C8716F4();
      result = sub_23C872124();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v25 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      result = sub_23C64BB10(v35, *(v17 + 48) + v48 * v25, type metadata accessor for SiriConversationPublisher.GraphUUID);
      *(*(v17 + 56) + 8 * v25) = v33;
      v13 = v35;
      ++*(v17 + 16);
      v14 = v45;
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v14 + 32);
    v7 = v44;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v7 = v17;
  return result;
}

uint64_t sub_23C640B38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
  v36 = a2;
  result = sub_23C871E74();
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
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_23C59A4B0(v25, v37);
      }

      else
      {
        sub_23C588DC0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_23C59A4B0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
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
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_23C640DF0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBE40, &unk_23C87BEF8);
  v42 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v41 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v42)
      {
        v43 = *v26;
        v27 = *(v26 + 16);
        v46 = *(v26 + 32);
        v44 = *(v26 + 24);
        v45 = *(v26 + 40);
        v48 = *(v26 + 48);
        v47 = *(v26 + 56);
      }

      else
      {
        v28 = *v26;
        v29 = *(v26 + 16);
        v30 = *(v26 + 32);
        *&v50[9] = *(v26 + 41);
        v49[1] = v29;
        *v50 = v30;
        v49[0] = v28;
        v47 = v50[24];
        v48 = *&v50[16];
        v45 = *(&v30 + 1);
        v46 = v30;
        v44 = *(&v29 + 1);
        v27 = v29;
        v43 = v28;

        sub_23C64BC50(v49, v51);
      }

      v31 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
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
      LOBYTE(v49[0]) = v27;
      v51[0] = v47;
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v43;
      *(v18 + 16) = v27;
      *(v18 + 24) = v44;
      *(v18 + 32) = v46;
      *(v18 + 40) = v45;
      *(v18 + 48) = v48;
      *(v18 + 56) = v47;
      ++*(v8 + 16);
      v5 = v41;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v10, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_23C641150(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B78, &qword_23C874C00);
  v38 = a2;
  result = sub_23C871E74();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
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
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_23C8720F4();
      sub_23C871804();
      result = sub_23C872124();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
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

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_23C6413F0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_23C871B24();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

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
}

unint64_t sub_23C641580(int64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for EventTypeIdPair();
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v31);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_23C871BC4() + 1) & ~v10;
    v14 = *(v4 + 72);
    v30 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v11;
      sub_23C600748(*(a2 + 48) + v14 * v11, v8, type metadata accessor for EventTypeIdPair);
      v17 = *(a2 + 40);
      sub_23C8720F4();
      MEMORY[0x23EED79F0](*v8);
      v18 = *(v31 + 20);
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      v19 = sub_23C872124();
      result = sub_23C64BB78(v8, type metadata accessor for EventTypeIdPair);
      v20 = v19 & v12;
      if (a1 >= v13)
      {
        if (v20 < v13)
        {
          v9 = v30;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (a1 >= v20)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v20 >= v13 || a1 >= v20)
        {
LABEL_11:
          v21 = *(a2 + 48);
          result = v21 + v14 * a1;
          if (v14 * a1 < v16 || result >= v21 + v16 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v30;
          }

          else
          {
            v22 = v14 * a1 == v16;
            v9 = v30;
            if (!v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = *(a2 + 56);
          v24 = (v23 + 8 * a1);
          v25 = (v23 + 8 * v11);
          if (a1 != v11 || v24 >= v25 + 1)
          {
            *v24 = *v25;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v30;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23C6418A4(int64_t a1, uint64_t a2)
{
  v43 = sub_23C870B74();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = sub_23C871BC4();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      v26 = sub_23C8716E4();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_23C641BC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 32 * v6);
      v12 = *v11;
      v13 = v11[1];
      v14 = v11[2];
      v15 = v11[3];
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      v16 = sub_23C872124();

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
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v21 = v20[1];
          *v19 = *v20;
          v19[1] = v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 32 * v3);
        v24 = (v22 + 32 * v6);
        if (v3 != v6 || v23 >= v24 + 2)
        {
          v9 = v24[1];
          *v23 = *v24;
          v23[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23C641D9C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 32 * v6);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      sub_23C8720F4();

      sub_23C871804();
      sub_23C871804();
      v15 = sub_23C872124();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v20 = v19[1];
          *v18 = *v19;
          v18[1] = v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
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

unint64_t sub_23C641F78(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v28 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v28);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (sub_23C871BC4() + 1) & ~v9;
    v13 = *(v4 + 72);
    v29 = a2 + 64;
    v14 = v30;
    do
    {
      v15 = v13;
      v16 = v13 * v10;
      sub_23C600748(*(a2 + 48) + v13 * v10, v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = *(a2 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      v18 = sub_23C872124();
      result = sub_23C64BB78(v14, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v19 = v18 & v11;
      if (a1 >= v12)
      {
        if (v19 < v12)
        {
          v8 = v29;
          v13 = v15;
          goto LABEL_4;
        }

        v13 = v15;
        if (a1 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v15;
        if (v19 >= v12 || a1 >= v19)
        {
LABEL_11:
          v20 = *(a2 + 48);
          result = v20 + v13 * a1;
          if (v13 * a1 < v16 || result >= v20 + v16 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v29;
          }

          else
          {
            v21 = v13 * a1 == v16;
            v8 = v29;
            if (!v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v10);
          if (a1 != v10 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v29;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23C642290(int64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(v25 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (sub_23C871BC4() + 1) & ~v10;
    v14 = *(v4 + 72);
    v26 = a2 + 64;
    while (1)
    {
      v15 = v14 * v11;
      sub_23C600748(*(a2 + 48) + v14 * v11, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v16 = *(a2 + 40);
      sub_23C8720F4();
      sub_23C870B74();
      sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
      sub_23C8716F4();
      v17 = sub_23C872124();
      result = sub_23C64BB78(v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v18 = v17 & v12;
      if (a1 >= v13)
      {
        break;
      }

      if (v18 < v13)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = v14 * a1;
      if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v19 != v15)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(a2 + 56);
      result = v20 + v19;
      if (v19 < v15 || result >= v20 + v15 + v14)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v11;
        if (v19 == v15)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      a1 = v11;
LABEL_5:
      v11 = (v11 + 1) & v12;
      v9 = v26;
      if (((*(v26 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v13)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (a1 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

uint64_t sub_23C64257C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C871BC4() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_23C8720F4();

      sub_23C871804();
      v14 = sub_23C872124();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23C64272C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_23C59A4B0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_23C6427A8(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_23C6427EC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_23C642888(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23C870B74();
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

uint64_t sub_23C642940(unint64_t a1, uint64_t a2, void *a3, double a4)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = sub_23C870B74();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a3[7] + 8 * a1) = a4;
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

unint64_t sub_23C6429F8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a7[7] + 8 * result) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_23C642A44(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  a10[(result >> 6) + 8] |= 1 << result;
  v10 = (a10[6] + 32 * result);
  *v10 = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  v11 = (a10[7] + 32 * result);
  *v11 = a6;
  v11[1] = a7;
  v11[2] = a8;
  v11[3] = a9;
  v12 = a10[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a10[2] = v14;
  }

  return result;
}

unint64_t sub_23C642AA0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, double a7)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v7 = (a6[6] + 32 * result);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  *(a6[7] + 8 * result) = a7;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_23C642AEC(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v5 = (a4[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a4[7] + 8 * result) = a5;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_23C642B34(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_23C642BA8(unint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void), uint64_t (*a5)(void), double a6)
{
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a3[6];
  v12 = a4(0);
  result = sub_23C64BB10(a2, v11 + *(*(v12 - 8) + 72) * a1, a5);
  *(a3[7] + 8 * a1) = a6;
  v14 = a3[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v16;
  }

  return result;
}

uint64_t sub_23C642C5C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v7 = a4[6];
  v8 = *(*(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8) + 72) * a1;
  sub_23C64BB10(a2, v7 + v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
  result = sub_23C64BB10(a3, a4[7] + v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23C642D24(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = a5(0);
  result = sub_23C64BB10(a2, v11 + *(*(v12 - 8) + 72) * a1, a6);
  *(a4[7] + 8 * a1) = a3;
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_23C642DD0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23C59A4B0(a4, (a5[7] + 32 * a1));
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

void *sub_23C642E3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE10, &unk_23C874CD0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = 40 * v17;
        sub_23C59A4C0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_23C588DC0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_23C59A4B0(v22, (*(v4 + 56) + v17));
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

id sub_23C642FE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  v2 = *v0;
  v3 = sub_23C871E64();
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

id sub_23C64313C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD90, &unk_23C874C90);
  v2 = *v0;
  v3 = sub_23C871E64();
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

void *sub_23C6432B0()
{
  v1 = v0;
  v2 = type metadata accessor for EventTypeIdPair();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  v7 = *v0;
  v8 = sub_23C871E64();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_23C600748(*(v7 + 48) + v23, v6, type metadata accessor for EventTypeIdPair);
        v24 = *(*(v7 + 56) + 8 * v22);
        result = sub_23C64BB10(v6, *(v9 + 48) + v23, type metadata accessor for EventTypeIdPair);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
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

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_23C6434EC()
{
  v1 = v0;
  v2 = type metadata accessor for EventTypeIdPair();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD70, &qword_23C874C58);
  v6 = *v0;
  v7 = sub_23C871E64();
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
        v22 = *(v25 + 72) * v21;
        sub_23C600748(*(v6 + 48) + v22, v5, type metadata accessor for EventTypeIdPair);
        v23 = *(*(v6 + 56) + 8 * v21);
        sub_23C64BB10(v5, *(v8 + 48) + v22, type metadata accessor for EventTypeIdPair);
        *(*(v8 + 56) + 8 * v21) = v23;
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

void *sub_23C64372C()
{
  v1 = v0;
  v30 = sub_23C870B74();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  v4 = *v0;
  v5 = sub_23C871E64();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; *(*(v24 + 56) + 8 * v18) = v23)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = v32;
      v20 = *(v32 + 72) * v18;
      v21 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 48) + v20, v30);
      v23 = *(*(v4 + 56) + 8 * v18);
      v24 = v31;
      result = (*(v19 + 32))(*(v31 + 48) + v20, v21, v22);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
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

char *sub_23C6439A0()
{
  v1 = v0;
  v34 = sub_23C870B74();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BD8, &qword_23C874C78);
  v4 = *v0;
  v5 = sub_23C871E64();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
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

void *sub_23C643C48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBE58, &unk_23C87BF10);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 *= 96;
        v23 = *(v19 + v17 + 32);
        v24 = *(v19 + v17 + 48);
        v25 = *(v19 + v17 + 80);
        v38 = *(v19 + v17 + 64);
        v39 = v25;
        v37 = v24;
        v26 = *(v19 + v17 + 16);
        v34 = *(v19 + v17);
        v35 = v26;
        v36 = v23;
        v27 = (*(v4 + 48) + v18);
        *v27 = v22;
        v27[1] = v21;
        v28 = (*(v4 + 56) + v17);
        v29 = v35;
        *v28 = v34;
        v28[1] = v29;
        v30 = v36;
        v31 = v37;
        v32 = v39;
        v28[4] = v38;
        v28[5] = v32;
        v28[2] = v30;
        v28[3] = v31;

        result = sub_23C58BBD4(&v34, &v33);
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

void *sub_23C643E14()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBDE0, &qword_23C874D00);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = (*(v2 + 56) + v17);
        v24 = *v23;
        v25 = v23[1];
        v26 = v23[2];
        v27 = v23[3];
        v28 = (*(v4 + 48) + v17);
        *v28 = v20;
        v28[1] = v19;
        v28[2] = v21;
        v28[3] = v22;
        v29 = (*(v4 + 56) + v17);
        *v29 = v24;
        v29[1] = v25;
        v29[2] = v26;
        v29[3] = v27;
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

void *sub_23C643FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = *(*(v2 + 56) + 8 * v17);
        v23 = (*(v4 + 48) + 32 * v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
        *(*(v4 + 56) + 8 * v17) = v22;
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

void *sub_23C644140(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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
        v20 = (*(v4 + 48) + 32 * v19);
        v21 = v20[1];
        v22 = v20[2];
        v23 = v20[3];
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = (*(v6 + 48) + 32 * v19);
        *v25 = *v20;
        v25[1] = v21;
        v25[2] = v22;
        v25[3] = v23;
        *(*(v6 + 56) + 8 * v19) = v24;
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

void *sub_23C6442B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C40, &unk_23C87BE90);
  v2 = *v0;
  v3 = sub_23C871E64();
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

void *sub_23C644434(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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

id sub_23C644594()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD10, &qword_23C874AF8);
  v2 = *v0;
  v3 = sub_23C871E64();
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

void *sub_23C644700()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C10, &qword_23C87BEF0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_23C59A744(v18);
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

void *sub_23C644870(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
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

void *sub_23C6449D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_23C871E64();
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

void *sub_23C644B24()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  v7 = *v0;
  v8 = sub_23C871E64();
  v9 = v8;
  if (*(v7 + 16))
  {
    v26 = v1;
    result = (v8 + 64);
    v11 = v7 + 64;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 64), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 64);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_14:
        v22 = v19 | (v13 << 6);
        v23 = *(v3 + 72) * v22;
        sub_23C600748(*(v7 + 48) + v23, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v24 = *(*(v7 + 56) + 8 * v22);
        result = sub_23C64BB10(v6, *(v9 + 48) + v23, type metadata accessor for SiriConversationPublisher.GraphUUID);
        *(*(v9 + 56) + 8 * v22) = v24;
      }

      while (v17);
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

        v1 = v26;
        goto LABEL_18;
      }

      v21 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

void *sub_23C644D60()
{
  v1 = v0;
  v2 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v26 = *(v2 - 8);
  v3 = *(v26 + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AA8, &qword_23C874B08);
  v9 = *v0;
  v10 = sub_23C871E64();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v1;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v13 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = *(v9 + 64);
    v18 = -1;
    if (v16 < 64)
    {
      v18 = ~(-1 << v16);
    }

    v19 = v18 & v17;
    v20 = (v16 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_14:
        v24 = *(v26 + 72) * (v21 | (v15 << 6));
        sub_23C600748(*(v9 + 48) + v24, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C600748(*(v9 + 56) + v24, v6, type metadata accessor for SiriConversationPublisher.GraphUUID);
        sub_23C64BB10(v8, *(v11 + 48) + v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
        result = sub_23C64BB10(v6, *(v11 + 56) + v24, type metadata accessor for SiriConversationPublisher.GraphUUID);
      }

      while (v19);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v23 = *(v13 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v19 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v11;
  }

  return result;
}

void *sub_23C644FD8(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *v2;
  v11 = sub_23C871E64();
  v12 = v11;
  if (*(v10 + 16))
  {
    v28 = v5;
    result = (v11 + 64);
    v14 = ((1 << *(v12 + 32)) + 63) >> 6;
    if (v12 != v10 || result >= v10 + 64 + 8 * v14)
    {
      result = memmove(result, (v10 + 64), 8 * v14);
    }

    v16 = 0;
    *(v12 + 16) = *(v10 + 16);
    v17 = 1 << *(v10 + 32);
    v18 = *(v10 + 64);
    v19 = -1;
    if (v17 < 64)
    {
      v19 = ~(-1 << v17);
    }

    v20 = v19 & v18;
    v21 = (v17 + 63) >> 6;
    if ((v19 & v18) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = *(v29 + 72) * v25;
        sub_23C600748(*(v10 + 48) + v26, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
        v27 = *(*(v10 + 56) + 8 * v25);
        sub_23C64BB10(v9, *(v12 + 48) + v26, type metadata accessor for SiriConversationPublisher.GraphUUID);
        *(*(v12 + 56) + 8 * v25) = v27;
      }

      while (v20);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v5 = v28;
        goto LABEL_21;
      }

      v24 = *(v10 + 64 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v12;
  }

  return result;
}

void *sub_23C645214()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C18, &qword_23C874CC0);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        sub_23C588DC0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23C59A4B0(v25, (*(v4 + 56) + v22));
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

void *sub_23C6453B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBE40, &unk_23C87BEF8);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v18 = 16 * v17;
        v19 = *(v2 + 56);
        v20 = (*(v2 + 48) + 16 * v17);
        v22 = *v20;
        v21 = v20[1];
        v17 <<= 6;
        v24 = *(v19 + v17 + 16);
        v23 = *(v19 + v17 + 32);
        v25 = *(v19 + v17);
        *&v34[9] = *(v19 + v17 + 41);
        v33 = v24;
        *v34 = v23;
        v32 = v25;
        v26 = (*(v4 + 48) + v18);
        *v26 = v22;
        v26[1] = v21;
        v27 = (*(v4 + 56) + v17);
        v28 = v32;
        v29 = v33;
        v30 = *v34;
        *(v27 + 41) = *&v34[9];
        v27[1] = v29;
        v27[2] = v30;
        *v27 = v28;

        result = sub_23C64BC50(&v32, &v31);
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

void *sub_23C645568()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9B78, &qword_23C874C00);
  v2 = *v0;
  v3 = sub_23C871E64();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

uint64_t sub_23C6456D0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23C648E8C(v2);
  }

  v3 = v2[2];
  v22[0] = (v2 + 4);
  v22[1] = v3;
  result = sub_23C871FC4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 6;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[5 * i + 8];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 + 2))
          {
            break;
          }

          v14 = v13[3];
          v15 = v13[4];
          v16 = *v13;
          *(v13 + 3) = *(v13 - 1);
          v17 = v13[5];
          v18 = v13[6];
          *(v13 + 5) = v16;
          v13[7] = v13[2];
          *(v13 - 2) = v14;
          *(v13 - 1) = v15;
          *v13 = v17;
          v13[1] = v18;
          *(v13 + 2) = v11;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF0, &qword_23C87BEC0);
      v7 = sub_23C8718F4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v20[0] = v7 + 32;
    v20[1] = v6;
    sub_23C645C98(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_23C645848(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23C648EC8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_23C6458FC(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_23C6458FC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23C871FC4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
        v6 = sub_23C8718F4();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_23C646278(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_23C645A40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23C645A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v8 = *(*(v40 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v30 - v16;
  v32 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v37 = -v19;
    v38 = v18;
    v21 = a1 - a3;
    v31 = v19;
    v22 = v18 + v19 * a3;
LABEL_5:
    v35 = v20;
    v36 = a3;
    v33 = v22;
    v34 = v21;
    v23 = v21;
    v24 = v40;
    while (1)
    {
      sub_23C5855B0(v22, v17, &qword_27E1F9A98, &qword_23C874AF0);
      sub_23C5855B0(v20, v13, &qword_27E1F9A98, &qword_23C874AF0);
      v25 = *(v24 + 48);
      v26 = *&v17[v25];
      v27 = *&v13[v25];
      sub_23C585C34(v13, &qword_27E1F9A98, &qword_23C874AF0);
      result = sub_23C585C34(v17, &qword_27E1F9A98, &qword_23C874AF0);
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v36 + 1;
        v20 = v35 + v31;
        v21 = v34 - 1;
        v22 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v28 = v39;
      sub_23C64B32C(v22, v39);
      v24 = v40;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23C64B32C(v28, v20);
      v20 += v37;
      v22 += v37;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23C645C98(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_23C6473A0(v8);
      v8 = result;
    }

    v91 = (v8 + 16);
    v92 = *(v8 + 16);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = (v8 + 16 * v92);
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = v95[1];
        sub_23C646BC8((*a3 + 40 * *v93), (*a3 + 40 * *v95), *a3 + 40 * v96, v100);
        if (v5)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_114;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_115;
        }

        *v93 = v94;
        v93[1] = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_116;
        }

        v92 = *v91 - 1;
        result = memmove(v95, v95 + 2, 16 * v97);
        *v91 = v92;
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v98 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 40 * v7 + 32);
      v11 = *a3 + 40 * v9;
      v12 = *(v11 + 32);
      v13 = v9 + 2;
      v14 = (v11 + 112);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v10 < v12) ^ v17) & 1) == 0)
        {
          v7 = v13 - 1;
          if (v10 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 40 * v7 - 16;
        v19 = 40 * v9 + 32;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = (v30 + v18);
            v25 = *(v22 - 2);
            v26 = *(v22 - 1);
            v27 = *v22;
            v28 = v24[1];
            v29 = *(v24 - 1);
            *(v22 - 2) = *(v24 - 3);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v24 - 3) = v23;
            *(v24 - 1) = v25;
            *v24 = v26;
            v24[1] = v27;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23C584338(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v44 = *(v8 + 16);
    v43 = *(v8 + 24);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      result = sub_23C584338((v43 > 1), v44 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v45;
    v46 = v8 + 32;
    v47 = (v8 + 32 + 16 * v44);
    *v47 = v9;
    v47[1] = v7;
    v100 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 32);
          v50 = *(v8 + 40);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_57:
          if (v52)
          {
            goto LABEL_104;
          }

          v65 = (v8 + 16 * v45);
          v67 = *v65;
          v66 = v65[1];
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_106;
          }

          v71 = (v46 + 16 * v48);
          v73 = *v71;
          v72 = v71[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_111;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v45 < 2)
        {
          goto LABEL_112;
        }

        v75 = (v8 + 16 * v45);
        v77 = *v75;
        v76 = v75[1];
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_72:
        if (v70)
        {
          goto LABEL_108;
        }

        v78 = (v46 + 16 * v48);
        v80 = *v78;
        v79 = v78[1];
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v48 - 1 >= v45)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v86 = (v46 + 16 * (v48 - 1));
        v87 = *v86;
        v88 = (v46 + 16 * v48);
        v89 = v88[1];
        sub_23C646BC8((*a3 + 40 * *v86), (*a3 + 40 * *v88), *a3 + 40 * v89, v100);
        if (v5)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_99;
        }

        if (v48 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *(v8 + 16);
        if (v48 >= v90)
        {
          goto LABEL_101;
        }

        v45 = v90 - 1;
        result = memmove((v46 + 16 * v48), v88 + 2, 16 * (v90 - 1 - v48));
        *(v8 + 16) = v90 - 1;
        if (v90 <= 2)
        {
          goto LABEL_3;
        }
      }

      v53 = v46 + 16 * v45;
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_102;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_103;
      }

      v60 = (v8 + 16 * v45);
      v62 = *v60;
      v61 = v60[1];
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_105;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_107;
      }

      if (v64 >= v56)
      {
        v82 = (v46 + 16 * v48);
        v84 = *v82;
        v83 = v82[1];
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v98;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v7 - 8;
  v33 = v9 - v7;
LABEL_30:
  v34 = *(v31 + 40 * v7 + 32);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *v36)
    {
LABEL_29:
      ++v7;
      v32 += 40;
      --v33;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 8);
    v38 = *(v36 + 16);
    v39 = *(v36 - 16);
    *(v36 + 8) = *(v36 - 32);
    v40 = *(v36 + 24);
    v41 = *(v36 + 32);
    *(v36 + 24) = v39;
    *(v36 + 40) = *v36;
    *(v36 - 32) = v37;
    *(v36 - 24) = v38;
    *(v36 - 16) = v40;
    *(v36 - 8) = v41;
    *v36 = v34;
    v36 -= 40;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_23C646278(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v5;
  v110 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v119 = *(v9 - 8);
  v10 = *(v119 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v115 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v123 = &v108 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v125 = &v108 - v16;
  result = MEMORY[0x28223BE20](v15);
  v124 = &v108 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_97:
    a4 = *v110;
    if (!*v110)
    {
      goto LABEL_136;
    }

    v4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_23C6473A0(v4);
    }

    v127 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (*a3)
      {
        v104 = *(result + 16 * v4);
        v105 = result;
        v106 = *(result + 16 * (v4 - 1) + 40);
        sub_23C646E04(*a3 + *(v119 + 72) * v104, *a3 + *(v119 + 72) * *(result + 16 * (v4 - 1) + 32), *a3 + *(v119 + 72) * v106, a4);
        if (v6)
        {
        }

        if (v106 < v104)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_23C6473A0(v105);
        }

        if (v4 - 2 >= *(v105 + 2))
        {
          goto LABEL_124;
        }

        v107 = &v105[16 * v4];
        *v107 = v104;
        *(v107 + 1) = v106;
        v127 = v105;
        sub_23C647314(v4 - 1);
        result = v127;
        v4 = *(v127 + 16);
        if (v4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v109 = a4;
  v126 = v9;
  while (1)
  {
    v22 = v20;
    v116 = v21;
    if (v20 + 1 >= v19)
    {
      v34 = v20 + 1;
    }

    else
    {
      v111 = v20;
      v23 = *a3;
      v121 = v19;
      v122 = v23;
      v24 = *(v119 + 72);
      v25 = v23 + v24 * (v20 + 1);
      v26 = v124;
      sub_23C5855B0(v25, v124, &qword_27E1F9A98, &qword_23C874AF0);
      v27 = v111;
      v28 = v23 + v24 * v111;
      v29 = v125;
      sub_23C5855B0(v28, v125, &qword_27E1F9A98, &qword_23C874AF0);
      v30 = *(v9 + 48);
      v31 = *(v26 + v30);
      v32 = *(v29 + v30);
      sub_23C585C34(v29, &qword_27E1F9A98, &qword_23C874AF0);
      result = sub_23C585C34(v26, &qword_27E1F9A98, &qword_23C874AF0);
      v4 = v27 + 2;
      v120 = v24;
      v33 = v122 + v24 * v4;
      while (1)
      {
        v34 = v121;
        if (v121 == v4)
        {
          break;
        }

        LODWORD(v122) = v31 < v32;
        v35 = v124;
        sub_23C5855B0(v33, v124, &qword_27E1F9A98, &qword_23C874AF0);
        v36 = v125;
        sub_23C5855B0(v25, v125, &qword_27E1F9A98, &qword_23C874AF0);
        v37 = *(v126 + 48);
        v38 = *(v35 + v37);
        v39 = *(v36 + v37);
        sub_23C585C34(v36, &qword_27E1F9A98, &qword_23C874AF0);
        result = sub_23C585C34(v35, &qword_27E1F9A98, &qword_23C874AF0);
        ++v4;
        v33 += v120;
        v25 += v120;
        if (((v122 ^ (v38 >= v39)) & 1) == 0)
        {
          v34 = v4 - 1;
          break;
        }
      }

      a4 = v109;
      v9 = v126;
      v22 = v111;
      if (v31 < v32)
      {
        if (v34 < v111)
        {
          goto LABEL_127;
        }

        if (v111 < v34)
        {
          v108 = v6;
          v4 = v120 * (v34 - 1);
          v40 = v34 * v120;
          v41 = v34;
          v42 = v111;
          v43 = v111 * v120;
          v112 = a3;
          do
          {
            if (v42 != --v34)
            {
              v44 = *a3;
              if (!v44)
              {
                goto LABEL_133;
              }

              sub_23C64B32C(v44 + v43, v115);
              if (v43 < v4 || v44 + v43 >= (v44 + v40))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23C64B32C(v115, v44 + v4);
              a3 = v112;
            }

            ++v42;
            v4 -= v120;
            v40 -= v120;
            v43 += v120;
          }

          while (v42 < v34);
          v6 = v108;
          a4 = v109;
          v9 = v126;
          v22 = v111;
          v34 = v41;
        }
      }
    }

    v45 = a3[1];
    if (v34 < v45)
    {
      if (__OFSUB__(v34, v22))
      {
        goto LABEL_126;
      }

      if (v34 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = a3[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v34 != v46)
        {
          break;
        }
      }
    }

    v20 = v34;
    if (v34 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v116;
    }

    else
    {
      result = sub_23C584338(0, *(v116 + 2) + 1, 1, v116);
      v21 = result;
    }

    v4 = *(v21 + 2);
    v47 = *(v21 + 3);
    a4 = v4 + 1;
    if (v4 >= v47 >> 1)
    {
      result = sub_23C584338((v47 > 1), v4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = a4;
    v48 = &v21[16 * v4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    if (!*v110)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      v49 = *v110;
      while (1)
      {
        v50 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_53:
          if (v54)
          {
            goto LABEL_114;
          }

          v67 = &v21[16 * a4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_117;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_121;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = a4 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v77 = &v21[16 * a4];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_67:
        if (v72)
        {
          goto LABEL_116;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_119;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_74:
        v4 = v50 - 1;
        if (v50 - 1 >= a4)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v88 = v21;
        a4 = *&v21[16 * v4 + 32];
        v89 = *&v21[16 * v50 + 40];
        sub_23C646E04(*a3 + *(v119 + 72) * a4, *a3 + *(v119 + 72) * *&v21[16 * v50 + 32], *a3 + *(v119 + 72) * v89, v49);
        if (v6)
        {
        }

        if (v89 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_23C6473A0(v88);
        }

        v9 = v126;
        if (v4 >= *(v90 + 2))
        {
          goto LABEL_111;
        }

        v91 = &v90[16 * v4];
        *(v91 + 4) = a4;
        *(v91 + 5) = v89;
        v127 = v90;
        v4 = &v127;
        result = sub_23C647314(v50);
        v21 = v127;
        a4 = *(v127 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * a4 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_112;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_113;
      }

      v62 = &v21[16 * a4];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_115;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_118;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_122;
        }

        if (v53 < v87)
        {
          v50 = a4 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v19 = a3[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_97;
    }
  }

  v108 = v6;
  v111 = v22;
  v112 = a3;
  v92 = *(v119 + 72);
  v93 = *a3 + v92 * (v34 - 1);
  v94 = -v92;
  v95 = v22 - v34;
  v122 = *a3;
  v113 = v92;
  v114 = v46;
  a4 = v122 + v34 * v92;
LABEL_87:
  v120 = v93;
  v121 = v34;
  v117 = a4;
  v118 = v95;
  v96 = v93;
  v97 = v126;
  while (1)
  {
    v4 = v124;
    sub_23C5855B0(a4, v124, &qword_27E1F9A98, &qword_23C874AF0);
    v98 = v125;
    sub_23C5855B0(v96, v125, &qword_27E1F9A98, &qword_23C874AF0);
    v99 = *(v97 + 48);
    v100 = *(v4 + v99);
    v101 = *(v98 + v99);
    sub_23C585C34(v98, &qword_27E1F9A98, &qword_23C874AF0);
    result = sub_23C585C34(v4, &qword_27E1F9A98, &qword_23C874AF0);
    if (v100 >= v101)
    {
LABEL_86:
      v34 = v121 + 1;
      v20 = v114;
      v93 = v120 + v113;
      v95 = v118 - 1;
      a4 = v117 + v113;
      if (v121 + 1 != v114)
      {
        goto LABEL_87;
      }

      v6 = v108;
      v22 = v111;
      a3 = v112;
      v9 = v126;
      if (v114 < v111)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v122)
    {
      break;
    }

    v102 = v123;
    sub_23C64B32C(a4, v123);
    v97 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_23C64B32C(v102, v96);
    v96 += v94;
    a4 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_86;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_23C646BC8(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[4] < v4[4])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t sub_23C646E04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = a3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  v7 = *(*(v48 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v49 - a2;
  if (v49 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v44 = v26;
      v45 = a4;
      do
      {
        v42 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = v28;
        while (1)
        {
          v31 = v49;
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v42;
            goto LABEL_58;
          }

          v43 = v25;
          v49 += v26;
          v32 = v27 + v26;
          sub_23C5855B0(v32, v12, &qword_27E1F9A98, &qword_23C874AF0);
          v33 = v29;
          v34 = v29;
          v35 = v12;
          v36 = v47;
          sub_23C5855B0(v34, v47, &qword_27E1F9A98, &qword_23C874AF0);
          v37 = *(v48 + 48);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v12 = v35;
          sub_23C585C34(v40, &qword_27E1F9A98, &qword_23C874AF0);
          sub_23C585C34(v35, &qword_27E1F9A98, &qword_23C874AF0);
          if (v38 < v39)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v32;
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v32;
            }
          }

          v27 = v25;
          v28 = v46;
          v30 = v32 > v45;
          v26 = v44;
          if (!v30)
          {
            a2 = v46;
            goto LABEL_57;
          }
        }

        if (v31 < v46 || v49 >= v46)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v44;
        }

        else
        {
          v26 = v44;
          a2 = v33;
          if (v31 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v43;
      }

      while (v27 > v45);
    }

LABEL_57:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < v49)
    {
      do
      {
        sub_23C5855B0(a2, v12, &qword_27E1F9A98, &qword_23C874AF0);
        v21 = v47;
        sub_23C5855B0(a4, v47, &qword_27E1F9A98, &qword_23C874AF0);
        v22 = *(v48 + 48);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_23C585C34(v21, &qword_27E1F9A98, &qword_23C874AF0);
        sub_23C585C34(v12, &qword_27E1F9A98, &qword_23C874AF0);
        if (v23 >= v24)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v19 && a2 < v49);
    }
  }

LABEL_58:
  sub_23C64750C(&v52, &v51, &v50, &qword_27E1F9A98, &qword_23C874AF0);
  return 1;
}

uint64_t sub_23C647314(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23C6473A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23C6473FC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23C64750C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_23C6475F4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_23C647694(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9C50, &unk_23C87BEA0);
  result = sub_23C871E94();
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
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 32 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = v18[2];
    v22 = v18[3];
    v23 = *(v17 + 8 * v16);
    v24 = *(v9 + 40);
    sub_23C8720F4();

    sub_23C871804();
    sub_23C871804();
    result = sub_23C872124();
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
    {
      v29 = 0;
      v30 = (63 - v25) >> 6;
      while (++v27 != v30 || (v29 & 1) == 0)
      {
        v31 = v27 == v30;
        if (v27 == v30)
        {
          v27 = 0;
        }

        v29 |= v31;
        v32 = *(v12 + 8 * v27);
        if (v32 != -1)
        {
          v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v9 + 48) + 32 * v28);
    *v33 = v19;
    v33[1] = v20;
    v33[2] = v21;
    v33[3] = v22;
    *(*(v9 + 56) + 8 * v28) = v23;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647904(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BF8, &unk_23C87BEE0);
  result = sub_23C871E94();
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
  v12 = result + 64;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = *(v9 + 40);
    v20 = v17;

    result = sub_23C871B24();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647B20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v47 = sub_23C870B74();
  v45 = *(v47 - 8);
  v8 = *(v45 + 64);
  v9 = MEMORY[0x28223BE20](v47);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v42 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD40, &unk_23C87BE30);
  result = sub_23C871E94();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v39[1] = v45 + 16;
  v40 = result;
  v46 = v45 + 32;
  v17 = result + 64;
  v41 = a1;
  v39[0] = a4;
  v18 = v47;
  while (v15)
  {
    v19 = v11;
    v20 = __clz(__rbit64(v15));
    v43 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = a4[6];
    v25 = v45;
    v44 = *(v45 + 72);
    v26 = v42;
    (*(v45 + 16))(v42, v24 + v44 * v23, v18);
    v27 = *(a4[7] + 8 * v23);
    v28 = *(v25 + 32);
    v11 = v19;
    v28(v19, v26, v18);
    v14 = v40;
    v29 = *(v40 + 40);
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
    result = sub_23C8716E4();
    v30 = -1 << *(v14 + 32);
    v31 = result & ~v30;
    v32 = v31 >> 6;
    if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
    {
      v34 = 0;
      v35 = (63 - v30) >> 6;
      a1 = v41;
      while (++v32 != v35 || (v34 & 1) == 0)
      {
        v36 = v32 == v35;
        if (v32 == v35)
        {
          v32 = 0;
        }

        v34 |= v36;
        v37 = *(v17 + 8 * v32);
        if (v37 != -1)
        {
          v33 = __clz(__rbit64(~v37)) + (v32 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v33 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_26:
    *(v17 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    result = (v28)(*(v14 + 48) + v33 * v44, v11, v47);
    *(*(v14 + 56) + 8 * v33) = v27;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v15 = v43;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v11;
      v20 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C647EB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for EventTypeIdPair();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - v13;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9BC8, &unk_23C87BE50);
  result = sub_23C871E94();
  v15 = result;
  if (a2 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *a1;
  }

  v17 = 0;
  v18 = result + 64;
  v38 = a4;
  v19 = v39;
  while (v16)
  {
    v20 = __clz(__rbit64(v16));
    v42 = (v16 - 1) & v16;
LABEL_16:
    v23 = v20 | (v17 << 6);
    v24 = a4[6];
    v43 = *(v40 + 72);
    sub_23C600748(v24 + v43 * v23, v19, type metadata accessor for EventTypeIdPair);
    v25 = *(a4[7] + 8 * v23);
    sub_23C64BB10(v19, v12, type metadata accessor for EventTypeIdPair);
    v26 = *(v15 + 40);
    sub_23C8720F4();
    MEMORY[0x23EED79F0](*v12);
    v27 = *(v41 + 20);
    sub_23C870B74();
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
    sub_23C8716F4();
    result = sub_23C872124();
    v28 = -1 << *(v15 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a4 = v38;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v18 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a4 = v38;
LABEL_26:
    *(v18 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_23C64BB10(v12, *(v15 + 48) + v31 * v43, type metadata accessor for EventTypeIdPair);
    *(*(v15 + 56) + 8 * v31) = v25;
    ++*(v15 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v16 = v42;
    if (!a3)
    {
      return v15;
    }
  }

  v21 = v17;
  while (1)
  {
    v17 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v17 >= a2)
    {
      return v15;
    }

    v22 = a1[v17];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v42 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C648254(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD80, &unk_23C874B80);
  result = sub_23C871E94();
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
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 56) + 8 * v16);
    v18 = *(v9 + 40);
    v19 = *(*(v4 + 48) + 8 * v16);
    result = sub_23C871B24();
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
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C648460(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9AD0, &qword_23C874B38);
  result = sub_23C871E94();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v35 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[6];
    v23 = v36;
    v38 = *(v37 + 72);
    sub_23C600748(v22 + v38 * v21, v36, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v24 = *(a4[7] + 8 * v21);
    sub_23C64BB10(v23, v39, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v25 = *(v14 + 40);
    sub_23C8720F4();
    sub_23C870B74();
    sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);
    sub_23C8716F4();
    result = sub_23C872124();
    v26 = -1 << *(v14 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
    {
      v30 = 0;
      v31 = (63 - v26) >> 6;
      a4 = v35;
      while (++v28 != v31 || (v30 & 1) == 0)
      {
        v32 = v28 == v31;
        if (v28 == v31)
        {
          v28 = 0;
        }

        v30 |= v32;
        v33 = *(v17 + 8 * v28);
        if (v33 != -1)
        {
          v29 = __clz(__rbit64(~v33)) + (v28 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v29 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
    a4 = v35;
LABEL_26:
    *(v17 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
    result = sub_23C64BB10(v39, *(v14 + 48) + v29 * v38, type metadata accessor for SiriConversationPublisher.GraphUUID);
    *(*(v14 + 56) + 8 * v29) = v24;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_23C6487D4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1FB5C0, &unk_27E1FBD50, &unk_23C87BE40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
            v9 = sub_23C594EDC(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C648964(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1F9DE0, &qword_27E1F9DD8, &unk_23C87BEB0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9DD8, &unk_23C87BEB0);
            v9 = sub_23C595568(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AnteroEvent();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C648AF4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&unk_27E1FBE00, &qword_27E1FBDF8, &qword_23C87BEC8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDF8, &qword_23C87BEC8);
            v9 = sub_23C5954E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_23C870D74();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23C648C84(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23C871C34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23C871C34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23C5F8EB8(&qword_27E1FBCE8, &qword_27E1FBCE0, &qword_23C87BDF0);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBCE0, &qword_23C87BDF0);
            v9 = sub_23C595568(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SiriTurn();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23C648EFC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EED7540](a1, a2, v7);
      sub_23C870E34();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_23C870E34();
    if (sub_23C871C14() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_23C871C24();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_23C871B24();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_23C871B34();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

id sub_23C64913C(unint64_t a1, id a2)
{
  v11 = a2;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v3)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EED7610](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v5 = *(a1 + 8 * i + 32);
        }

        a2 = v5;
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_23C64E050(&v10, v5);

        if (v6 == v3)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v8 = a2;
      v9 = sub_23C871C34();
      a2 = v8;
      v3 = v9;
    }

    while (v9);
  }

  return a2;
}

unint64_t sub_23C649230(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_54;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  if (v5)
  {
    v6 = 0;
    v42 = v4 & 0xFFFFFFFFFFFFFF8;
    v43 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v38 = v4;
    v39 = v5;
    v41 = v4 + 32;
    while (1)
    {
      if (v43)
      {
        v8 = MEMORY[0x23EED7610](v6, v38);
      }

      else
      {
        if (v6 >= *(v42 + 16))
        {
          goto LABEL_49;
        }

        v8 = *(v41 + 8 * v6);
      }

      v9 = v8;
      v10 = __OFADD__(v6++, 1);
      if (v10)
      {
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v5 = sub_23C871C34();
        goto LABEL_3;
      }

      v11 = *(a2 + 16);
      v12 = *(v11 + 16);

      if (v12 && (v13 = sub_23C5FFA08(v9), (v14 & 1) != 0))
      {
        v15 = *(*(v11 + 56) + 8 * v13);
      }

      else
      {
        v15 = MEMORY[0x277D84FA0];
      }

      v16 = v3;
      v17 = sub_23C631384(v15);

      v4 = v17 >> 62;
      if (v17 >> 62)
      {
        v18 = sub_23C871C34();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = v7 >> 62;
      if (v7 >> 62)
      {
        v36 = sub_23C871C34();
        v21 = v36 + v18;
        if (__OFADD__(v36, v18))
        {
LABEL_45:
          __break(1u);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v21 = v20 + v18;
        if (__OFADD__(v20, v18))
        {
          goto LABEL_45;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (v19)
        {
          goto LABEL_26;
        }

        v22 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v21 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v46 = v7;
          goto LABEL_28;
        }
      }

      else
      {
        if (v19)
        {
LABEL_26:
          sub_23C871C34();
          goto LABEL_27;
        }

        v22 = v7 & 0xFFFFFFFFFFFFFF8;
      }

      v23 = *(v22 + 16);
LABEL_27:
      v46 = sub_23C871D34();
      v22 = v46 & 0xFFFFFFFFFFFFFF8;
LABEL_28:
      v24 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v4)
      {
        v27 = v22;
        v28 = sub_23C871C34();
        v22 = v27;
        v26 = v28;
        if (!v28)
        {
LABEL_5:

          v7 = v46;
          if (v18 > 0)
          {
            goto LABEL_50;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v26 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v26)
        {
          goto LABEL_5;
        }
      }

      if (((v25 >> 1) - v24) < v18)
      {
        goto LABEL_51;
      }

      v29 = v22 + 8 * v24 + 32;
      v40 = v22;
      if (v4)
      {
        if (v26 < 1)
        {
          goto LABEL_53;
        }

        v4 = sub_23C5F8EB8(&unk_27E1FBDB0, &qword_27E1FBDA8, &unk_23C87BE80);
        for (i = 0; i != v26; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBDA8, &unk_23C87BE80);
          v31 = sub_23C595568(v45, i, v17);
          v33 = *v32;
          (v31)(v45, 0);
          *(v29 + 8 * i) = v33;
        }
      }

      else
      {
        v4 = v17 & 0xFFFFFFFFFFFFFF8;
        sub_23C870E34();
        swift_arrayInitWithCopy();
      }

      v3 = v16;
      v5 = v39;
      v7 = v46;
      if (v18 >= 1)
      {
        v34 = *(v40 + 16);
        v10 = __OFADD__(v34, v18);
        v35 = v34 + v18;
        if (v10)
        {
          goto LABEL_52;
        }

        *(v40 + 16) = v35;
      }

LABEL_6:
      if (v6 == v5)
      {
        return v7;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C6495EC(unint64_t a1, uint64_t *a2)
{
  v29 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v23 = a1;
    v4 = 0;
    v5 = a1 & 0xC000000000000001;
    v27 = a1 + 32;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = v3;
    v26 = a2;
    v24 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        a1 = MEMORY[0x23EED7610](v4, v23);
      }

      else
      {
        if (v4 >= *(v28 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v27 + 8 * v4);
      }

      v7 = a1;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        if (v9 < 0)
        {
          v10 = *a2;
        }

        v11 = *a2;

        v12 = v7;
        v13 = sub_23C871C74();

        if (v13)
        {

          goto LABEL_6;
        }
      }

      else if (*(v9 + 16))
      {
        sub_23C870E34();
        v14 = *(v9 + 40);

        v15 = sub_23C871B24();
        v16 = -1 << *(v9 + 32);
        v17 = v15 & ~v16;
        if ((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = *(*(v9 + 48) + 8 * v17);
            v20 = sub_23C871B34();

            if (v20)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v9 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          v3 = v25;
          a2 = v26;
          v5 = v24;
          goto LABEL_6;
        }

LABEL_4:

        v3 = v25;
        a2 = v26;
        v5 = v24;
      }

      sub_23C871D54();
      v6 = *(v29 + 16);
      sub_23C871D94();
      sub_23C871DA4();
      a1 = sub_23C871D64();
LABEL_6:
      if (v4 == v3)
      {
        return v29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v22 = a1;
    v3 = sub_23C871C34();
    a1 = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C649848(uint64_t a1, uint64_t a2)
{
  v4 = sub_23C870B74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = sub_23C870DF4();
  if (v12 == sub_23C870DF4())
  {
    sub_23C870E24();
    sub_23C870E24();
    v13 = MEMORY[0x23EED6420](v11, v9);
    v14 = *(v5 + 8);
    v14(v9, v4);
    v14(v11, v4);
  }

  else
  {
    v15 = sub_23C870DF4();
    v13 = v15 < sub_23C870DF4();
  }

  if (v13)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

unint64_t sub_23C6499B8(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
    goto LABEL_56;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  if (v3)
  {
    v4 = 0;
    v35 = v2 & 0xFFFFFFFFFFFFFF8;
    v36 = v2 & 0xC000000000000001;
    v32 = v2;
    v34 = (v2 + 32);
    v5 = MEMORY[0x277D84F90];
    v33 = v3;
    while (1)
    {
      if (v36)
      {
        v6 = MEMORY[0x23EED7610](v4, v32);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_51;
        }

        v6 = *&v34[8 * v4];
      }

      v7 = v6;
      v8 = __OFADD__(v4++, 1);
      if (v8)
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        v3 = sub_23C871C34();
        goto LABEL_3;
      }

      v9 = *(a2 + 24);
      if (*(v9 + 16))
      {
        v10 = *(a2 + 24);

        v11 = sub_23C5FFA08(v7);
        if (v12)
        {
          v13 = *(*(v9 + 56) + 8 * v11);

          goto LABEL_17;
        }
      }

      else
      {
      }

      v13 = MEMORY[0x277D84F90];
LABEL_17:
      v2 = v13 >> 62;
      if (v13 >> 62)
      {
        v14 = sub_23C871C34();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v5 >> 62;
      if (v5 >> 62)
      {
        v30 = sub_23C871C34();
        v17 = v30 + v14;
        if (__OFADD__(v30, v14))
        {
LABEL_47:
          __break(1u);
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = v16 + v14;
        if (__OFADD__(v16, v14))
        {
          goto LABEL_47;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v39 = v14;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v15)
        {
          goto LABEL_28;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v15)
        {
LABEL_28:
          sub_23C871C34();
          goto LABEL_29;
        }

        v19 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v20 = *(v19 + 16);
LABEL_29:
      v5 = sub_23C871D34();
      v19 = v5 & 0xFFFFFFFFFFFFFF8;
LABEL_30:
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v2)
      {
        v23 = sub_23C871C34();
        if (!v23)
        {
LABEL_5:

          if (v39 > 0)
          {
            goto LABEL_52;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v23)
        {
          goto LABEL_5;
        }
      }

      if (((v22 >> 1) - v21) < v39)
      {
        goto LABEL_53;
      }

      v24 = v19 + 8 * v21 + 32;
      if (v2)
      {
        v2 = &unk_27E1FBD50;
        if (v23 < 1)
        {
          goto LABEL_55;
        }

        sub_23C5F8EB8(&qword_27E1FB5C0, &unk_27E1FBD50, &unk_23C87BE40);
        for (i = 0; i != v23; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD50, &unk_23C87BE40);
          v26 = sub_23C594EDC(v38, i, v13);
          v2 = *v27;

          (v26)(v38, 0);
          *(v24 + 8 * i) = v2;
        }
      }

      else
      {
        v2 = v13 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for TimestampedOrderedEvent();
        swift_arrayInitWithCopy();
      }

      v3 = v33;
      if (v39 >= 1)
      {
        v28 = *(v19 + 16);
        v8 = __OFADD__(v28, v39);
        v29 = v28 + v39;
        if (v8)
        {
          goto LABEL_54;
        }

        *(v19 + 16) = v29;
      }

LABEL_6:
      if (v4 == v3)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C649D60(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_23C64E414(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_23C649DE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v40 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v38 = a1 + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = &qword_27E1F9DD8;
  while (1)
  {
    v8 = *(a2 + 24);
    if (*(v8 + 16))
    {
      v9 = (v38 + 32 * v4);
      v10 = v9[2];
      v11 = v9[3];
      v12 = *v9;
      v13 = v9[1];

      v14 = sub_23C5FFB88(v12, v13, v10, v11);
      v15 = MEMORY[0x277D84F90];
      if (v16)
      {
        v15 = *(*(v8 + 56) + 8 * v14);
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
    }

    v17 = v15 >> 62;
    v18 = v15 >> 62 ? sub_23C871C34() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v19 = v5 >> 62;
    if (v5 >> 62)
    {
      v37 = sub_23C871C34();
      v21 = v37 + v18;
      if (__OFADD__(v37, v18))
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v20 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v20 + v18;
      if (__OFADD__(v20, v18))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v19)
      {
        goto LABEL_21;
      }

      v22 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v21 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v19)
      {
LABEL_21:
        sub_23C871C34();
        goto LABEL_22;
      }

      v22 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = *(v22 + 16);
LABEL_22:
    result = sub_23C871D34();
    v5 = result;
    v22 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v24 = *(v22 + 16);
    v25 = *(v22 + 24);
    if (v17)
    {
      break;
    }

    v26 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_3;
    }

LABEL_27:
    if (((v25 >> 1) - v24) < v18)
    {
      goto LABEL_43;
    }

    v42 = v5;
    v44 = v4;
    v28 = v22 + 8 * v24 + 32;
    v39 = v22;
    if (v17)
    {
      if (v26 < 1)
      {
        goto LABEL_45;
      }

      sub_23C5F8EB8(&qword_27E1F9DE0, v6, &unk_23C87BEB0);
      for (i = 0; i != v26; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v6, &unk_23C87BEB0);
        v30 = v6;
        v31 = sub_23C595568(v43, i, v15);
        v33 = *v32;
        (v31)(v43, 0);
        v6 = v30;
        *(v28 + 8 * i) = v33;
      }
    }

    else
    {
      type metadata accessor for AnteroEvent();
      swift_arrayInitWithCopy();
    }

    v5 = v42;
    v4 = v44;
    if (v18 >= 1)
    {
      v34 = *(v39 + 16);
      v35 = __OFADD__(v34, v18);
      v36 = v34 + v18;
      if (v35)
      {
        goto LABEL_44;
      }

      *(v39 + 16) = v36;
    }

LABEL_4:
    if (++v4 == v40)
    {
      return v5;
    }
  }

  v27 = v22;
  result = sub_23C871C34();
  v22 = v27;
  v26 = result;
  if (result)
  {
    goto LABEL_27;
  }

LABEL_3:

  if (v18 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23C64A144(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  swift_beginAccess();
  v38 = v3;
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for SiriConversationPublisher.GraphUUID(0) - 8);
  v36 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v6 = MEMORY[0x277D84F90];
  v35 = *(v5 + 72);
  v7 = &qword_27E1FBCE0;
  while (1)
  {
    v9 = *(a2 + 24);
    if (*(v9 + 16))
    {
      v10 = *(a2 + 24);

      v11 = sub_23C5FFCB8(v36 + v35 * v4);
      v12 = MEMORY[0x277D84F90];
      if (v13)
      {
        v12 = *(*(v9 + 56) + 8 * v11);
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v14 = v12 >> 62;
    v15 = v12 >> 62 ? sub_23C871C34() : *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v6 >> 62;
    if (v6 >> 62)
    {
      v34 = sub_23C871C34();
      v18 = v34 + v15;
      if (__OFADD__(v34, v15))
      {
LABEL_39:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        goto LABEL_39;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v16)
      {
        goto LABEL_21;
      }

      v19 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v16)
      {
LABEL_21:
        sub_23C871C34();
        goto LABEL_22;
      }

      v19 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v20 = *(v19 + 16);
LABEL_22:
    result = sub_23C871D34();
    v6 = result;
    v19 = result & 0xFFFFFFFFFFFFFF8;
LABEL_23:
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v14)
    {
      v24 = v19;
      result = sub_23C871C34();
      v19 = v24;
      v23 = result;
    }

    else
    {
      v23 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v23)
    {
      break;
    }

    if (((v22 >> 1) - v21) < v15)
    {
      goto LABEL_43;
    }

    v40 = v6;
    v42 = v4;
    v25 = v19 + 8 * v21 + 32;
    v37 = v19;
    if (v14)
    {
      if (v23 < 1)
      {
        goto LABEL_45;
      }

      sub_23C5F8EB8(&qword_27E1FBCE8, v7, &qword_23C87BDF0);
      for (i = 0; i != v23; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v7, &qword_23C87BDF0);
        v27 = v7;
        v28 = sub_23C595568(v41, i, v12);
        v30 = *v29;
        (v28)(v41, 0);
        v7 = v27;
        *(v25 + 8 * i) = v30;
      }
    }

    else
    {
      type metadata accessor for SiriTurn();
      swift_arrayInitWithCopy();
    }

    v6 = v40;
    v4 = v42;
    if (v15 >= 1)
    {
      v31 = *(v37 + 16);
      v32 = __OFADD__(v31, v15);
      v33 = v31 + v15;
      if (v32)
      {
        goto LABEL_44;
      }

      *(v37 + 16) = v33;
    }

LABEL_4:
    if (++v4 == v38)
    {
      return v6;
    }
  }

  if (v15 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_23C64A4C4(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v3 - 3);
      v6 = *(v3 - 2);

      sub_23C64E564(&v9, v7, v6, v5, v4);

      v3 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return a2;
}

uint64_t sub_23C64A568(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v11 = &v16 - v10;
  v17 = a2;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    do
    {
      sub_23C600748(v13, v8, type metadata accessor for SiriConversationPublisher.GraphUUID);
      sub_23C64EAC8(v11, v8);
      sub_23C64BB78(v11, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v13 += v14;
      --v12;
    }

    while (v12);
    return v17;
  }

  return a2;
}

uint64_t sub_23C64A6B4(uint64_t result, uint64_t *a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v33 = result + 32;
    v4 = MEMORY[0x277D84F90];
    v32 = *(result + 16);
    while (1)
    {
      v35 = v4;
      while (2)
      {
        if (v3 >= v2)
        {
          __break(1u);
LABEL_34:
          __break(1u);
          return result;
        }

        if (__OFADD__(v3, 1))
        {
          goto LABEL_34;
        }

        v5 = (v33 + 32 * v3);
        v6 = v5[1];
        v7 = v5[2];
        v37 = ++v3;
        v8 = v7;
        v9 = *v5;
        v39 = v5[3];
        if (*(*a2 + 16))
        {
          v10 = *(*a2 + 40);
          v38 = *a2;
          sub_23C8720F4();

          sub_23C871804();
          sub_23C871804();
          v11 = sub_23C872124();
          v12 = -1 << *(v38 + 32);
          v13 = v11 & ~v12;
          if ((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
          {
            v36 = v3;
            v14 = ~v12;
            v15 = *(v38 + 48);
            v16 = v7;
            v17 = v9;
            v18 = v39;
            while (1)
            {
              v19 = (v15 + 32 * v13);
              v21 = v19[2];
              v20 = v19[3];
              v22 = *v19 == v17 && v19[1] == v6;
              if (v22 || (v23 = sub_23C872014(), v18 = v39, v17 = v9, v16 = v8, (v23 & 1) != 0))
              {
                if (v21 == v16 && v20 == v18)
                {
                  break;
                }

                v25 = sub_23C872014();
                v18 = v39;
                v17 = v9;
                v16 = v8;
                if (v25)
                {
                  break;
                }
              }

              v13 = (v13 + 1) & v14;
              if (((*(v38 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
              {

                v2 = v32;
                v4 = v35;
                v3 = v36;
                goto LABEL_23;
              }
            }

            v2 = v32;
            v3 = v36;
            v4 = v35;
            if (v37 != v32)
            {
              continue;
            }

            return v4;
          }

          v4 = v35;
        }

        else
        {
        }

        break;
      }

LABEL_23:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23C592C24(0, *(v4 + 16) + 1, 1);
      }

      v26 = v8;
      v27 = v9;
      v29 = *(v4 + 16);
      v28 = *(v4 + 24);
      v30 = v39;
      if (v29 >= v28 >> 1)
      {
        result = sub_23C592C24((v28 > 1), v29 + 1, 1);
        v30 = v39;
        v27 = v9;
        v26 = v8;
      }

      *(v4 + 16) = v29 + 1;
      v31 = (v4 + 32 * v29);
      v31[4] = v27;
      v31[5] = v6;
      v31[6] = v26;
      v31[7] = v30;
      if (v37 == v2)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C64A99C(uint64_t a1, uint64_t *a2)
{
  v33 = a2;
  v3 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v13 = &v28 - v12;
  v32 = *(a1 + 16);
  if (v32)
  {
    v14 = 0;
    v15 = *(v11 + 72);
    v30 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v31 = a1 + v30;
    v16 = MEMORY[0x277D84F90];
    v29 = v7;
    while (1)
    {
      sub_23C600748(v31 + v15 * v14, v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
      v17 = *v33;
      if (*(*v33 + 16))
      {
        v34 = v16;
        v18 = *(v17 + 40);
        sub_23C8720F4();
        sub_23C870B74();
        sub_23C64B2C8(&qword_27E1FBC90, MEMORY[0x277CC95F0]);

        sub_23C8716F4();
        v19 = sub_23C872124();
        v20 = -1 << *(v17 + 32);
        v21 = v19 & ~v20;
        if ((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          while (1)
          {
            sub_23C600748(*(v17 + 48) + v21 * v15, v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
            v23 = sub_23C870B44();
            sub_23C64BB78(v10, type metadata accessor for SiriConversationPublisher.GraphUUID);
            if (v23)
            {
              break;
            }

            v21 = (v21 + 1) & v22;
            if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          sub_23C64BB78(v13, type metadata accessor for SiriConversationPublisher.GraphUUID);
          v7 = v29;
          v16 = v34;
          goto LABEL_4;
        }

LABEL_10:

        v7 = v29;
        v16 = v34;
      }

      sub_23C64BB10(v13, v7, type metadata accessor for SiriConversationPublisher.GraphUUID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23C592CC8(0, *(v16 + 16) + 1, 1);
        v16 = v35;
      }

      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_23C592CC8(v25 > 1, v26 + 1, 1);
        v16 = v35;
      }

      *(v16 + 16) = v26 + 1;
      sub_23C64BB10(v7, v16 + v30 + v26 * v15, type metadata accessor for SiriConversationPublisher.GraphUUID);
LABEL_4:
      if (++v14 == v32)
      {
        return v16;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23C64AD24(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, double))
{
  v23 = 0;
  v22 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 32 * v13);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v18 = *(*(a3 + 56) + 8 * v13);
    v26[0] = *v14;
    v26[1] = v15;
    v26[2] = v16;
    v26[3] = v17;

    v19 = a4(v26, v18);

    if (v19)
    {
      *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_23C647694(v22, a2, v23, a3);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_23C647694(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_23C64AEAC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *, double))
{
  v21 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = *(*(a3 + 56) + 8 * v14);
    v23 = *(*(a3 + 48) + 8 * v14);
    v16 = v23;
    v17 = a4(&v23, v15);

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_15:
        sub_23C648254(a1, a2, v21, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_23C64B010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, v9, a2, a3);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_23C6475F4(v17, v11, v9, a2, a3, a5);
  result = MEMORY[0x23EED8240](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_23C64B1A0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *&v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_inner] = 0;
  *&v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_upstream] = a1;
  v5 = &v3[OBJC_IVAR____TtC26AIMLInstrumentationStreams25SiriConversationPublisher_trackingTag];
  *v5 = a2;
  *(v5 + 1) = a3;
  v6 = qword_27E1F8338;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_23C871654();
  __swift_project_value_buffer(v8, qword_27E1FBBE0);
  v9 = sub_23C871634();
  v10 = sub_23C871AC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_23C56D000, v9, v10, "SiriConversationPublisher constructed", v11, 2u);
    MEMORY[0x23EED8240](v11, -1, -1);
  }

  v13.receiver = v4;
  v13.super_class = type metadata accessor for SiriConversationPublisher();
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_23C64B2C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23C64B32C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F9A98, &qword_23C874AF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_23C64B39C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v34 = a2;
  v35 = a3;
  v33 = a1;
  v5 = type metadata accessor for CoreAnalyticsTracker();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23C870AE4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FB5D0, &unk_23C874EE0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v38 = &v33 - v17;
  v36 = *(v6 + 56);
  v37 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker;
  v39 = v6 + 56;
  v36(&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_tracker], 1, 1, v5);
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationCount] = 0;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_lastReceivedTimestamp] = 0;
  v18 = OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_graphBuilder;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBD20, &qword_23C87BE08);
  v19 = swift_allocObject();
  v20 = MEMORY[0x277D84F90];
  v19[2] = sub_23C598E80(MEMORY[0x277D84F90]);
  v19[3] = sub_23C599064(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBD28, &unk_23C87BE10);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_23C599454(v20);
  v19[4] = v21;
  v22 = sub_23C599264(v20);
  *&v4[v18] = v19;
  v19[5] = v22;
  v19[6] = 0;
  v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_upstreamFinished] = 0;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_conversationWindowLength] = 0x4072C00000000000;
  *&v4[OBJC_IVAR____TtCC26AIMLInstrumentationStreams25SiriConversationPublisher26SiriConversationSubscriber_downstream] = v33;
  swift_unknownObjectRetain();
  sub_23C870AD4();
  *&v9[v5[7]] = 0;
  *v9 = 2;
  *(v9 + 1) = 0xD00000000000001BLL;
  *(v9 + 2) = 0x800000023C8A72D0;
  (*(v11 + 16))(&v9[v5[6]], v14, v10);
  v23 = &v9[v5[8]];
  v24 = v35;
  *v23 = v34;
  *(v23 + 1) = v24;
  if (qword_27E1F8308 != -1)
  {
    swift_once();
  }

  v25 = sub_23C871654();
  __swift_project_value_buffer(v25, qword_27E1FB2F8);
  v26 = sub_23C871634();
  v27 = sub_23C871AC4();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = 2;
    _os_log_impl(&dword_23C56D000, v26, v27, "tracker starting for %ld", v28, 0xCu);
    MEMORY[0x23EED8240](v28, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  v29 = v38;
  sub_23C64BB10(v9, v38, type metadata accessor for CoreAnalyticsTracker);
  v36(v29, 0, 1, v5);
  v30 = v37;
  swift_beginAccess();
  sub_23C5A7B70(v29, &v4[v30]);
  swift_endAccess();
  v31 = type metadata accessor for SiriConversationPublisher.SiriConversationSubscriber(0);
  v40.receiver = v4;
  v40.super_class = v31;
  return objc_msgSendSuper2(&v40, sel_init);
}

unint64_t sub_23C64B80C(unint64_t result)
{
  if (result >> 62)
  {
    v4 = result;
    v5 = sub_23C871C34();
    result = v4;
    if (v5)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x23EED7610](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v1 = *(result + 32);
  }

  v2 = v1;
  v3 = objc_allocWithZone(type metadata accessor for SiriConversationPublisher());
  sub_23C64B1A0(v2, 0, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E1FBD30, &unk_23C87BE20);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C64B910(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, double))
{
  v22 = a2;
  v26 = a4;
  v23 = a1;
  v5 = type metadata accessor for SiriConversationPublisher.GraphUUID(0);
  v25 = *(v5 - 8);
  v6 = *(v25 + 64);
  result = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = 0;
  v10 = 0;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v10 << 6);
    sub_23C600748(*(a3 + 48) + *(v25 + 72) * v18, v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
    v19 = v26(v9, *(*(a3 + 56) + 8 * v18));
    result = sub_23C64BB78(v9, type metadata accessor for SiriConversationPublisher.GraphUUID);
    if (v19)
    {
      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return sub_23C648460(v23, v22, v24, a3);
      }
    }
  }

  v16 = v10;
  while (1)
  {
    v10 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v10 >= v14)
    {
      return sub_23C648460(v23, v22, v24, a3);
    }

    v17 = *(a3 + 64 + 8 * v10);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}