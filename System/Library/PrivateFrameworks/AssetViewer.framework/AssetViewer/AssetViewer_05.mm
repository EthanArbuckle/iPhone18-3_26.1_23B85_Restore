uint64_t sub_2412A2AE8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2412FDC70(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v11 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_2412A871C();
    v7 = v11;
  }

  v8 = v5;
  v9 = *(*(v7 + 56) + 16 * v5);
  sub_2413396A8(v8, v7);
  *v2 = v7;
  return v9;
}

double sub_2412A2B7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2412FD8C4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2412A8884();
      v9 = v11;
    }

    sub_2412AF728(*(v9 + 48) + 40 * v7);
    sub_241245AA4((*(v9 + 56) + 32 * v7), a2);
    sub_2413399F8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_2412A2C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2412FD968(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2412A9110();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for PhysicsState();
    v18 = *(v11 - 8);
    sub_2412B35BC(v10 + *(v18 + 72) * v7, a2, type metadata accessor for PhysicsState);
    sub_24133A048(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for PhysicsState();
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_2412A2D88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388C8);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_241354ADC();
      MEMORY[0x245CE2EA0](v20);
      result = sub_241354B1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A300C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A00);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
      }

      result = sub_241354ACC();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A327C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A70);
  v35 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_241354ADC();
      sub_241353CCC();
      result = sub_241354B1C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A3520(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B60);
  v34 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_241354ADC();
      sub_241353CCC();
      result = sub_241354B1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A37C0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24135152C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130);
  v39 = a2;
  result = sub_24135481C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2412B3164(&qword_27E538AD0, MEMORY[0x277CC9260]);
      result = sub_241353B8C();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2412A3B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538568);
  v31 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_241352C5C();
      sub_2412B3164(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
      result = sub_241353B8C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
      v12 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A3E80(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D8);
  v34 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v34 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_241354ADC();
      MEMORY[0x245CE2EA0](v21);
      result = sub_241354B1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A4124(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389A8);
  v31 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v32 = (v12 - 1) & v12;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_241352C5C();
      sub_2412B3164(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
      result = sub_241353B8C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
      v5 = v30;
      v12 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A4408(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B88);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_2413542AC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A4678(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B80);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2413542AC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2412A48E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B70);
  v32 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_241354ADC();
      sub_241353CCC();

      result = sub_241354B1C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2412A4D48(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_241245AA4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2412B365C(v23, &v36);
        sub_2412461A0(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_24135454C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_241245AA4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2412A5000(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388C0);
  v33 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_241245AA4(v24, v34);
      }

      else
      {
        sub_2412461A0(v24, v34);
      }

      sub_241354ADC();
      sub_241353CCC();
      result = sub_241354B1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_241245AA4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A52B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538140);
  v37 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_241354ADC();
      sub_241353CCC();
      result = sub_241354B1C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A5578(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_24135152C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538120);
  v40 = a2;
  result = sub_24135481C();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + 8 * v24);
      sub_2412B3164(&qword_27E538AD0, MEMORY[0x277CC9260]);
      result = sub_241353B8C();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2412A5938(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A90);
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_2413542AC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2412A5B9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D0);
  v30 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_241354ADC();
      MEMORY[0x245CE2EA0](v20);
      result = sub_241354B1C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2412A5E2C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PhysicsState();
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v39 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A58);
  v37 = a2;
  result = sub_24135481C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(v7 + 56);
      v23 = *(*(v7 + 48) + 8 * v21);
      v40 = v23;
      v38 = *(v36 + 72);
      v24 = v22 + v38 * v21;
      if (v37)
      {
        sub_2412B35BC(v24, v39, type metadata accessor for PhysicsState);
      }

      else
      {
        sub_2412B30F0(v24, v39, type metadata accessor for PhysicsState);
      }

      sub_241352C5C();
      sub_2412B3164(&qword_27E5389B0, MEMORY[0x277CDB1C8]);
      result = sub_241353B8C();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v23;
      result = sub_2412B35BC(v39, *(v9 + 56) + v38 * v17, type metadata accessor for PhysicsState);
      ++*(v9 + 16);
      v7 = v35;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero(v11, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2412A61D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388E0);
  v34 = a2;
  result = sub_24135481C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_241354ADC();
      sub_241353CCC();
      result = sub_241354B1C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_2412A6480(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2412FD858(a1);
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
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_2412A7824();
    result = v17;
    goto LABEL_8;
  }

  sub_2412A2D88(v14, a2 & 1);
  result = sub_2412FD858(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_2413549DC();
  __break(1u);
  return result;
}

unint64_t sub_2412A65A8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_2412FD908(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2412A300C(v14, a3 & 1);
      result = sub_2412FD908(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_2412A7970();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void sub_2412A66F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2412FDA14(a2, a3);
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
      sub_2412A327C(v16, a4 & 1);
      v11 = sub_2412FDA14(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_2413549DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_2412A7ACC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

uint64_t sub_2412A686C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_2412FD968(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_2412A3B9C(v14, a3 & 1);
      v9 = sub_2412FD968(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_241352C5C();
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = v9;
      sub_2412A8020();
      v9 = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  v19[(v9 >> 6) + 8] |= 1 << v9;
  *(v19[6] + 8 * v9) = a2;
  *(v19[7] + 8 * v9) = a1;
  v21 = v19[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v22;
}

id sub_2412A69CC(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2412FDBDC(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2412A4408(v13, a3 & 1);
      v8 = sub_2412FDBDC(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for EntityController();
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_2412A8458();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void sub_2412A6B38(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_2412FDC20(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_2412A4678(v13, a3 & 1);
      v8 = sub_2412FDC20(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_241246158(0, &qword_27E538A40);
        sub_2413549DC();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_2412A85BC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

_OWORD *sub_2412A6CB0(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2412FD8C4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2412A8884();
      goto LABEL_7;
    }

    sub_2412A4D48(v13, a3 & 1);
    v19 = sub_2412FD8C4(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2412B365C(a2, v21);
      return sub_2412A75DC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_2413549DC();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_241245AA4(a1, v17);
}

_OWORD *sub_2412A6DFC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2412FDA14(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2412A8A28();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2412A5000(v16, a4 & 1);
    v11 = sub_2412FDA14(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_2413549DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_241245AA4(a1, v22);
  }

  else
  {
    sub_2412A7658(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_2412A6F4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_2412FDA14(a3, a4);
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
      sub_2412A52B8(v18, a5 & 1);
      v13 = sub_2412FDA14(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_2412A8BCC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_2412A70D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_24135152C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_2412FDA8C(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  result = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= result && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_2412A8D44();
    goto LABEL_7;
  }

  sub_2412A5578(result, a3 & 1);
  result = sub_2412FDA8C(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_2413549DC();
    __break(1u);
    return result;
  }

  v14 = result;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_2412A76C4(v14, v11, a1, v20);
}

uint64_t sub_2412A7270(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2412FD968(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for PhysicsState();
      return sub_2412B3554(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for PhysicsState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_2412A9110();
    goto LABEL_7;
  }

  sub_2412A5E2C(v13, a3 & 1);
  v20 = sub_2412FD968(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    sub_241352C5C();
    result = sub_2413549DC();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2412A777C(v10, a2, a1, v16);
}

uint64_t sub_2412A73CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2412FDA14(a2, a3);
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
      sub_2412A61D8(v16, a4 & 1);
      v11 = sub_2412FDA14(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_2413549DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_2412A934C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

unint64_t sub_2412A7548(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = a5[7] + 16 * result;
  *v5 = a3 & 1;
  *(v5 + 8) = a4;
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

unint64_t sub_2412A7598(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

_OWORD *sub_2412A75DC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_241245AA4(a3, (a4[7] + 32 * a1));
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

_OWORD *sub_2412A7658(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_241245AA4(a4, (a5[7] + 32 * a1));
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

uint64_t sub_2412A76C4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_24135152C();
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

uint64_t sub_2412A777C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for PhysicsState();
  result = sub_2412B35BC(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for PhysicsState);
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

void *sub_2412A7824()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388C8);
  v2 = *v0;
  v3 = sub_24135480C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

void *sub_2412A7970()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A00);
  v2 = *v0;
  v3 = sub_24135480C();
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

id sub_2412A7ACC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A70);
  v2 = *v0;
  v3 = sub_24135480C();
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

void *sub_2412A7C38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B60);
  v2 = *v0;
  v3 = sub_24135480C();
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

char *sub_2412A7DA0()
{
  v1 = v0;
  v33 = sub_24135152C();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538130);
  v3 = *v0;
  v4 = sub_24135480C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2412A8020()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538568);
  v2 = *v0;
  v3 = sub_24135480C();
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

void *sub_2412A8184()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388D8);
  v2 = *v0;
  v3 = sub_24135480C();
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
        v18 = *(v2 + 56) + 16 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = *(v4 + 56) + 16 * v17;
        *v21 = v19;
        *(v21 + 8) = v20;
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

void *sub_2412A82F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5389A8);
  v2 = *v0;
  v3 = sub_24135480C();
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

void *sub_2412A8458()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B88);
  v2 = *v0;
  v3 = sub_24135480C();
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

id sub_2412A85BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B80);
  v2 = *v0;
  v3 = sub_24135480C();
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

void *sub_2412A871C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B70);
  v2 = *v0;
  v3 = sub_24135480C();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_2412A8884()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538138);
  v2 = *v0;
  v3 = sub_24135480C();
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
        sub_2412B365C(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2412461A0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_241245AA4(v22, (*(v4 + 56) + v17));
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

void *sub_2412A8A28()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388C0);
  v2 = *v0;
  v3 = sub_24135480C();
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
        sub_2412461A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_241245AA4(v25, (*(v4 + 56) + v22));
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

void *sub_2412A8BCC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538140);
  v2 = *v0;
  v3 = sub_24135480C();
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

char *sub_2412A8D44()
{
  v1 = v0;
  v31 = sub_24135152C();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538120);
  v3 = *v0;
  v4 = sub_24135480C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_2412A8FB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538A90);
  v2 = *v0;
  v3 = sub_24135480C();
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
        v19 = *(*(v2 + 56) + v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + v17) = v19;
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

void *sub_2412A9110()
{
  v1 = v0;
  v2 = type metadata accessor for PhysicsState();
  v24 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538A58);
  v5 = *v0;
  v6 = sub_24135480C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v23 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        v22 = *(v24 + 72) * v20;
        sub_2412B30F0(*(v5 + 56) + v22, v4, type metadata accessor for PhysicsState);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_2412B35BC(v4, *(v7 + 56) + v22, type metadata accessor for PhysicsState);
      }

      while (v15);
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

        v1 = v23;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

void *sub_2412A934C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388E0);
  v2 = *v0;
  v3 = sub_24135480C();
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

uint64_t sub_2412A94BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2412ED848(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2412A95A4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2412A9528(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_2412ED870(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_2412A969C(v6);
  return sub_24135465C();
}

uint64_t sub_2412A95A4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24135490C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_241353E5C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2412A9A44(v7, v8, a1, v4);
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
    return sub_2412A97A0(0, v2, 1, a1);
  }

  return result;
}

void sub_2412A969C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24135490C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for EntityController();
        v6 = sub_241353E5C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_2412AA020(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_2412A9870(0, v2, 1, a1);
  }
}

uint64_t sub_2412A97A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_24135497C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2412A9870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_241352C5C();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
LABEL_5:
    v32 = v4;
    v9 = *(v6 + 8 * v4);
    v24 = v8;
    v25 = v7;
    v10 = v7;
    while (1)
    {
      v11 = *v10;
      v12 = v9;
      v13 = v11;
      sub_24135191C();
      sub_24135176C();
      v30 = v14;
      sub_24135176C();
      v29 = v15;
      sub_24135176C();
      v28 = v16;
      sub_24135191C();
      sub_24135176C();
      v27 = v17;
      sub_24135176C();
      v26 = v18;
      sub_24135176C();
      v31 = v19;

      v20 = vmul_f32(vmul_f32(vzip1_s32(v30, v27), vzip2_s32(v29, v26)), vzip1_s32(*&vextq_s8(v28, v28, 8uLL), *&vextq_s8(v31, v31, 8uLL)));
      if ((vcgt_f32(vdup_lane_s32(v20, 1), v20).u32[0] & 1) == 0)
      {
LABEL_4:
        v4 = v32 + 1;
        v7 = v25 + 8;
        v8 = v24 - 1;
        if (v32 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v21 = *v10;
      v9 = *(v10 + 8);
      *v10 = v9;
      *(v10 + 8) = v21;
      v10 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2412A9A44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2412ED820(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2412AA83C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_24135497C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_24135497C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2412A1444(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2412A1444((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2412AA83C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2412ED820(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2412ED794(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_24135497C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

void sub_2412AA020(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v8 = v5;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_93;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v111 = v9;
      v11 = *v6;
      v12 = *(*v6 + 8 * v8);
      v13 = *(*v6 + 8 * (v8 + 1));
      v14 = v12;
      v118 = sub_2412945E4();
      if (v5)
      {

        return;
      }

      v15 = (v8 + 2);
      v109 = v8;
      v116 = 8 * v8;
      v16 = (v11 + 8 * v8 + 16);
      while (v7 != v15)
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v8 = &OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
        v5 = sub_241352C5C();
        v19 = v7;
        v20 = v17;
        v21 = v18;
        sub_24135191C();
        sub_24135176C();
        v128 = v22;
        sub_24135176C();
        v126 = v23;
        sub_24135176C();
        v124 = v24;
        sub_24135191C();
        sub_24135176C();
        v122 = v25;
        sub_24135176C();
        v120 = v26;
        sub_24135176C();
        v130 = v27;

        v7 = v19;
        v28 = vmul_f32(vmul_f32(vzip1_s32(v128, v122), vzip2_s32(v126, v120)), vzip1_s32(*&vextq_s8(v124, v124, 8uLL), *&vextq_s8(v130, v130, 8uLL)));
        ++v15;
        ++v16;
        if ((v118 & 1) == (vmvn_s8(vcgt_f32(vdup_lane_s32(v28, 1), v28)).u8[0] & 1))
        {
          v7 = (v15 - 1);
          break;
        }
      }

      v6 = a3;
      v10 = v109;
      v9 = v111;
      v29 = v116;
      if (v118)
      {
        if (v7 < v109)
        {
          goto LABEL_123;
        }

        v5 = 0;
        if (v109 < v7)
        {
          v30 = 8 * v7 - 8;
          v31 = v7;
          v32 = v109;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v34 = *(v33 + v29);
              *(v33 + v29) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        v5 = 0;
      }
    }

    v35 = v6[1];
    if (v7 < v35)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_120;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v35)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          v9 = sub_2412ED820(v9);
LABEL_93:
          v101 = *(v9 + 2);
          if (v101 >= 2)
          {
            while (*v6)
            {
              v102 = v9;
              v9 = (v101 - 1);
              v103 = *&v102[16 * v101];
              v104 = *&v102[16 * v101 + 24];
              sub_2412AAA64((*v6 + 8 * v103), (*v6 + 8 * *&v102[16 * v101 + 16]), (*v6 + 8 * v104), v5);
              if (v8)
              {
                goto LABEL_101;
              }

              if (v104 < v103)
              {
                goto LABEL_117;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v102 = sub_2412ED820(v102);
              }

              if (v101 - 2 >= *(v102 + 2))
              {
                goto LABEL_118;
              }

              v105 = &v102[16 * v101];
              *v105 = v103;
              *(v105 + 1) = v104;
              sub_2412ED794(v101 - 1);
              v9 = v102;
              v101 = *(v102 + 2);
              if (v101 <= 1)
              {
                goto LABEL_101;
              }
            }

            goto LABEL_128;
          }

LABEL_101:

          return;
        }

        if (v7 != v8)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_119;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_2412A1444(0, *(v9 + 2) + 1, 1, v9);
    }

    v37 = *(v9 + 2);
    v36 = *(v9 + 3);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      v9 = sub_2412A1444((v36 > 1), v37 + 1, 1, v9);
    }

    *(v9 + 2) = v38;
    v39 = &v9[16 * v37];
    *(v39 + 4) = v10;
    *(v39 + 5) = v8;
    v40 = *a1;
    if (!*a1)
    {
      goto LABEL_129;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v9 + 4);
          v43 = *(v9 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_49:
          if (v45)
          {
            goto LABEL_108;
          }

          v58 = &v9[16 * v38];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_111;
          }

          v64 = &v9[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_114;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_115;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v68 = &v9[16 * v38];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_63:
        if (v63)
        {
          goto LABEL_110;
        }

        v71 = &v9[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_70:
        v79 = v41 - 1;
        if (v41 - 1 >= v38)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_126;
        }

        v80 = *&v9[16 * v79 + 32];
        v81 = *&v9[16 * v41 + 40];
        sub_2412AAA64((*v6 + 8 * v80), (*v6 + 8 * *&v9[16 * v41 + 32]), (*v6 + 8 * v81), v40);
        if (v5)
        {
          goto LABEL_101;
        }

        if (v81 < v80)
        {
          goto LABEL_104;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2412ED820(v9);
        }

        if (v79 >= *(v9 + 2))
        {
          goto LABEL_105;
        }

        v82 = &v9[16 * v79];
        *(v82 + 4) = v80;
        *(v82 + 5) = v81;
        sub_2412ED794(v41);
        v38 = *(v9 + 2);
        if (v38 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v9[16 * v38 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_106;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_107;
      }

      v53 = &v9[16 * v38];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_109;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_112;
      }

      if (v57 >= v49)
      {
        v75 = &v9[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_116;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v112 = v9;
  v108 = v5;
  v83 = *v6;
  sub_241352C5C();
  v84 = v83 + 8 * v7 - 8;
  v110 = v10;
  v85 = v10 - v7;
  v114 = v8;
LABEL_81:
  v117 = v84;
  v119 = v7;
  v86 = *(v83 + 8 * v7);
  v115 = v85;
  v87 = v85;
  v88 = v84;
  while (1)
  {
    v89 = *v88;
    v90 = v86;
    v91 = v89;
    sub_24135191C();
    sub_24135176C();
    v129 = v92;
    sub_24135176C();
    v127 = v93;
    sub_24135176C();
    v125 = v94;
    sub_24135191C();
    sub_24135176C();
    v123 = v95;
    sub_24135176C();
    v121 = v96;
    sub_24135176C();
    v131 = v97;

    v98 = vmul_f32(vmul_f32(vzip1_s32(v129, v123), vzip2_s32(v127, v121)), vzip1_s32(*&vextq_s8(v125, v125, 8uLL), *&vextq_s8(v131, v131, 8uLL)));
    if ((vcgt_f32(vdup_lane_s32(v98, 1), v98).u32[0] & 1) == 0)
    {
LABEL_80:
      v7 = v119 + 1;
      v84 = v117 + 8;
      v8 = v114;
      v85 = v115 - 1;
      if ((v119 + 1) != v114)
      {
        goto LABEL_81;
      }

      v6 = a3;
      v5 = v108;
      v10 = v110;
      v9 = v112;
      if (v114 < v110)
      {
        goto LABEL_119;
      }

      goto LABEL_30;
    }

    if (!v83)
    {
      break;
    }

    v99 = *v88;
    v86 = *(v88 + 8);
    *v88 = v86;
    *(v88 + 8) = v99;
    v88 -= 8;
    if (__CFADD__(v87++, 1))
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
}

uint64_t sub_2412AA83C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_24135497C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_24135497C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2412AAA64(void **__src, void **__dst, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
      v6 = __dst;
    }

    v15 = &v4[v10];
    if (v8 < 8 || v6 >= v5)
    {
      v29 = v7;
      goto LABEL_41;
    }

    v16 = v6;
    sub_241352C5C();
    v60 = v15;
    while (1)
    {
      v17 = *v4;
      v18 = *v16;
      v19 = v17;
      sub_24135191C();
      sub_24135176C();
      v56 = v20;
      sub_24135176C();
      v54 = v21;
      sub_24135176C();
      v52 = v22;
      sub_24135191C();
      sub_24135176C();
      v50 = v23;
      sub_24135176C();
      v48 = v24;
      sub_24135176C();
      v58 = v25;

      v26 = vmul_f32(vmul_f32(vzip1_s32(v56, v50), vzip2_s32(v54, v48)), vzip1_s32(*&vextq_s8(v52, v52, 8uLL), *&vextq_s8(v58, v58, 8uLL)));
      if ((vcgt_f32(vdup_lane_s32(v26, 1), v26).u32[0] & 1) == 0)
      {
        break;
      }

      v27 = v16;
      v28 = v7 == v16++;
      v15 = v60;
      if (!v28)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v7;
      if (v4 >= v15 || v16 >= v5)
      {
        v29 = v7;
        goto LABEL_41;
      }
    }

    v27 = v4;
    v28 = v7 == v4++;
    v15 = v60;
    if (v28)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v27;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
    v6 = __dst;
  }

  v15 = &v4[v13];
  if (v11 < 8)
  {
    v29 = v6;
    goto LABEL_41;
  }

  v31 = v6;
  if (v6 <= v7)
  {
    v29 = v6;
    goto LABEL_41;
  }

  sub_241352C5C();
  do
  {
    v46 = v31;
    v32 = v31 - 1;
    --v5;
    v33 = v15;
    v61 = v31 - 1;
    while (1)
    {
      v34 = v5 + 1;
      v35 = *--v33;
      v36 = *v32;
      v57 = v35;
      v37 = v36;
      sub_24135191C();
      sub_24135176C();
      v55 = v38;
      sub_24135176C();
      v53 = v39;
      sub_24135176C();
      v51 = v40;
      sub_24135191C();
      sub_24135176C();
      v49 = v41;
      sub_24135176C();
      v47 = v42;
      sub_24135176C();
      v59 = v43;

      v44 = vmul_f32(vmul_f32(vzip1_s32(v55, v49), vzip2_s32(v53, v47)), vzip1_s32(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v59, v59, 8uLL)));
      if (vcgt_f32(vdup_lane_s32(v44, 1), v44).u32[0])
      {
        break;
      }

      if (v34 != v15)
      {
        *v5 = *v33;
      }

      --v5;
      v15 = v33;
      v32 = v61;
      if (v33 <= v4)
      {
        v15 = v33;
        v29 = v46;
        goto LABEL_41;
      }
    }

    v29 = v61;
    if (v34 != v46)
    {
      *v5 = *v61;
    }

    if (v15 <= v4)
    {
      break;
    }

    v31 = v61;
  }

  while (v61 > v7);
LABEL_41:
  if (v29 != v4 || v29 >= (v4 + ((v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v29, v4, 8 * (v15 - v4));
  }

  return 1;
}

uint64_t sub_2412AAF20(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_2413544EC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2412A288C(v3, 0);
  sub_2412867BC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_2412AAFB4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_2412AB10C(uint64_t a1, void *a2, char *a3)
{
  v6 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter;
  if (!*&a3[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter])
  {
    sub_2412B30F0(a1, v8, type metadata accessor for ModelCustomizationOptions.BannerStyle);
    type metadata accessor for TraitCollectionManager();
    v10 = swift_allocObject();
    type metadata accessor for CheckoutPlatter(0);
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v11 = swift_allocObject();
    *&a3[v9] = sub_2412ABE10(v8, a2, v10, v11);

    v12 = [a3 view];
    if (v12)
    {
      v13 = v12;
      sub_24133EB20(v12);

      if (*&a3[v9])
      {

        v14 = sub_24133E674();

        [v14 setAlpha_];

        sub_2412FA424(8);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_2412AB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char *a6)
{
  v11 = type metadata accessor for VariantsBar();
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  if (*(a1 + 16))
  {
    if (*&a6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView])
    {
      return;
    }

    v59 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView;
    v60 = (&v59 - v15);
    v16 = *&a6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsViewModel];
    v17 = [a6 view];
    if (v17)
    {
      v18 = v17;
      [v17 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      v64.origin.x = v20;
      v64.origin.y = v22;
      v64.size.width = v24;
      v64.size.height = v26;
      v27 = CGRectGetWidth(v64) + -32.0;
      swift_getKeyPath();
      swift_getKeyPath();
      v61 = v27;
      v62 = 0;

      sub_24135317C();
      *(v16 + OBJC_IVAR____TtC11AssetViewer16VariantViewModel_delegate + 8) = &off_285300688;
      swift_unknownObjectWeakAssign();
      *&v28 = COERCE_DOUBLE(sub_241303544(a1));
      swift_getKeyPath();
      swift_getKeyPath();
      v61 = *&v28;

      sub_24135317C();
      v29 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v30 = swift_allocObject();
      *(v30 + 16) = v29;
      *(v30 + 24) = a3;
      *(v30 + 32) = a4;
      *(v30 + 40) = a5 & 1;

      v31 = v60;
      VariantsBar.init(viewModel:onSheetVisibilityChanged:)(sub_2412B31AC, v30, v60);
      sub_2412B30F0(v31, v14, type metadata accessor for VariantsBar);
      v32 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5388F8));
      v33 = sub_24135346C();
      v34 = [v33 view];
      if (v34)
      {
        v35 = v34;
        [v34 setTranslatesAutoresizingMaskIntoConstraints_];
        v36 = [objc_opt_self() clearColor];
        [v35 setBackgroundColor_];

        v37 = [a6 view];
        if (v37)
        {
          v38 = v37;
          [v37 addSubview_];

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538900);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_241366EF0;
          v40 = [v35 bottomAnchor];
          v41 = [a6 view];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 safeAreaLayoutGuide];

            v44 = [v43 bottomAnchor];
            v45 = [v40 constraintEqualToAnchor:v44 constant:-16.0];

            *(v39 + 32) = v45;
            v46 = [v35 centerXAnchor];
            v47 = [a6 view];
            if (v47)
            {
              v48 = v47;
              v49 = objc_opt_self();
              v50 = [v48 centerXAnchor];

              v51 = [v46 constraintEqualToAnchor_];
              *(v39 + 40) = v51;
              sub_241246158(0, &qword_27E539D00);
              v52 = sub_241353E1C();

              [v49 activateConstraints_];

              v53 = *&a6[v59];
              *&a6[v59] = v35;
              v54 = v35;

              if ((a6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities] & 4) != 0)
              {
                sub_2412AF7A8(v31, type metadata accessor for VariantsBar);
              }

              else
              {
                sub_2412FA424(4);

                sub_2412AF7A8(v31, type metadata accessor for VariantsBar);
              }

              return;
            }

LABEL_23:
            __break(1u);
            return;
          }

LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_21;
  }

  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v55 = sub_241352FFC();
  __swift_project_value_buffer(v55, qword_27E53A538);
  v60 = sub_241352FDC();
  v56 = sub_2413540DC();
  if (os_log_type_enabled(v60, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_241215000, v60, v56, "No variants available, variants UI is not added", v57, 2u);
    MEMORY[0x245CE4870](v57, -1, -1);
  }

  v58 = v60;
}

char *sub_2412AB944(void *a1, _BYTE *a2)
{
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_wantsStatusPillHidden] = 0;
  v4 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_arTrackingState;
  v5 = sub_24135425C();
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 2, v5);
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTriggerAffordance] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackedRaycastState] = 1;
  v7 = &a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType];
  *v7 = 4;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 56) = 0u;
  *(v7 + 9) = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isARModeEnabled] = 1;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sessionIsInterrupted] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_isInFullscreen] = 1;
  v8 = MEMORY[0x277D84F90];
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_cancellables] = MEMORY[0x277D84F90];
  v9 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsViewModel;
  type metadata accessor for VariantViewModel();
  swift_allocObject();
  *&a2[v9] = VariantViewModel.init(variants:)(v8);
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_variantsView] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___longPressGesture] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6(&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentTrackingState], 1, 2, v5);
  v10 = &a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackingStateStatus];
  *v10 = 0;
  v10[1] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_sharingEnabled] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_allowOverlayToBeHidden] = 0;
  v11 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_touchesOnScreenGestureRecognizer;
  *&a2[v11] = [objc_allocWithZone(type metadata accessor for TouchesOnScreenCountGestureRecognizer()) init];
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusPortraitSidePadding] = 0x4030000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusDefaultPadding] = 0x403B000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayCornerRadiusPortraitShutterButtonPadding] = 0x4052C00000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_defaultPortraitShutterButtonPadding] = 0x4034000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_defaultControlPadding] = 0x4018000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_controlsViewToStatusBarVerticalPadding] = 0x403B000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsHeight] = 0x4047800000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsButtonWidth] = 0x404E800000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_topControlsSegmentedControlWidth] = 0x4065400000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_trackingLabelMinimumBottomPadding] = 0x4020000000000000;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitConstraints] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_portraitUpsideDownConstraints] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeLeftConstraints] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_landscapeRightConstraints] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentConstraints] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_autoHideControlsTimer] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButtonContainer] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_checkoutPlatter] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButtonContainer] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___debugActionsButton] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___fileARadarButton] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___shutterButton] = 0;
  v12 = &a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_animationView];
  *v12 = 0;
  v12[1] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_coachingOverlayView] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___statusPill] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___assetLoadingView] = 0;
  v13 = OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_backgroundDimmingView;
  v14 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.0 alpha:0.6];
  [v14 setBackgroundColor_];

  *&a2[v13] = v14;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_bottomControlCapabilities] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 0;
  a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_currentAppearance] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController____lazy_storage___solariumDisplayModeSegmentedControl] = 0;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_additionalDismissObservers] = v8;
  *&a2[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_loadingTask] = 0;
  v18.receiver = a2;
  v18.super_class = type metadata accessor for ARQuickLookOverlayController();
  v16 = objc_msgSendSuper2(&v18, sel_initWithNibName_bundle_, 0, 0);
  sub_2412F97FC();
  *&v16[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_delegate + 8] = &off_285300700;
  swift_unknownObjectWeakAssign();

  return v16;
}

uint64_t sub_2412ABE10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = type metadata accessor for ModelCustomizationOptions.BannerStyle(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_delegate;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_heightBackgroundViewConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_widthBackgroundViewConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_leftBackgroundViewConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_rightBackgroundViewConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomBackgroundViewConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_topCheckoutContainerConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_bottomCheckoutContainerConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_centerYCheckoutContainerConstraint) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___backgroundView) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___customButtonFull) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasCustomContentFinishedLoaded) = 0;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_hasPerformedSlideUpIntroAnimation) = 0;
  v11 = a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_analytics;
  v12 = sub_2413515EC();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v14 = _s15CheckoutPlatterVMa(0);
  v13(v11 + *(v14 + 20), 1, 1, v12);
  v15 = a2;
  v16 = v34;
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_allowsContentVisibility) = 0;
  v17 = (a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_customHTMLLoadedBlock);
  *v17 = 0;
  v17[1] = 0;
  sub_2412B30F0(a1, a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_style, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  *(v10 + 8) = &off_2853006F0;
  swift_unknownObjectWeakAssign();
  *(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter_traitManager) = v16;
  v33 = a1;
  sub_2412B30F0(a1, v9, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2412AF7A8(v33, type metadata accessor for ModelCustomizationOptions.BannerStyle);

      v29 = sub_24135152C();
      (*(*(v29 - 8) + 8))(v9, v29);
      return a4;
    }

    v31 = *(v9 + 4);
    v32 = v15;
  }

  else
  {
    v31 = *(v9 + 4);
    v32 = v15;
  }

  v19 = sub_24133E674();
  v20 = *&v19[OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_titleLabel];

  v21 = sub_241353BDC();
  [v20 setText_];

  v22 = OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer;
  v23 = *(*(a4 + OBJC_IVAR____TtC11AssetViewer15CheckoutPlatter____lazy_storage___checkoutContainer) + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_subTitleLabel);
  v24 = sub_241353BDC();
  [v23 setText_];

  v25 = *(*(a4 + v22) + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_tertiaryTitleLabel);
  v26 = sub_241353BDC();

  [v25 setText_];

  v27 = *(a4 + v22);
  v28 = v33;
  sub_241341030(v33);

  [*(*(a4 + v22) + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_ctaButton) addTarget:a4 action:sel_applePayButtonPressed forControlEvents:64];
  [*(*(a4 + v22) + OBJC_IVAR____TtC11AssetViewer21CheckoutContainerView_applePayButton) addTarget:a4 action:sel_applePayButtonPressed forControlEvents:64];

  sub_2412AF7A8(v28, type metadata accessor for ModelCustomizationOptions.BannerStyle);
  return a4;
}

id sub_2412AC2D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = sub_24135144C();
  v15[0] = 0;
  v7 = [v3 initWithBaseConfiguration:a1 fileURL:v6 outError:v15];

  v8 = v15[0];
  if (v7)
  {
    v9 = sub_24135152C();
    v10 = *(*(v9 - 8) + 8);
    v11 = v8;
    v10(a2, v9);
  }

  else
  {
    v12 = v15[0];
    sub_24135139C();

    swift_willThrow();
    v13 = sub_24135152C();
    (*(*(v13 - 8) + 8))(a2, v13);
  }

  return v7;
}

double sub_2412AC428(double a1, float32x4_t a2)
{
  v3 = simd_matrix4x4(a2);
  sub_24135410C();
  sub_241354A8C();
  sub_241354A9C();
  return v3;
}

void sub_2412AC494(uint64_t a1)
{
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = v1;
  v5 = sub_241352FDC();
  v6 = sub_2413540DC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    v8 = [v4 traitCollection];
    v9 = [v8 userInterfaceStyle];

    *(v7 + 4) = v9;
    _os_log_impl(&dword_241215000, v5, v6, "updateToNewAppearance called, userInterfaceStyle: %ld", v7, 0xCu);
    MEMORY[0x245CE4870](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  if (*(a1 + OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode))
  {
    [v4 setOverrideUserInterfaceStyle:0];
    v10 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v11 = *(&v4->isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v11)
    {
      if (!*(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView))
      {
        v12 = sub_241352FDC();
        v13 = sub_2413540BC();
        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_241215000, v12, v13, "ARView is nil in updateToNewAppearance", v14, 2u);
          MEMORY[0x245CE4870](v14, -1, -1);
        }
      }

      v15 = *(&v4->isa + v10);
      if (v15)
      {
        v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v16)
        {
          v20 = v16;
          v17 = [v4 traitCollection];
          v18 = [v17 userInterfaceStyle];

          v19 = v20[qword_27E53A1D0];
          v20[qword_27E53A1D0] = v18 == 2;
          sub_24131AF34(v19);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  [v4 setOverrideUserInterfaceStyle:2];
}

void _s11AssetViewer21PreviewViewControllerC6update_9deltaTimey10RealityKit6ARViewC_SftF_0()
{
  v1 = v0;
  v161 = sub_2413517BC();
  v160 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v159 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v172 = sub_2413517DC();
  v162 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  *&v171 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2413538CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  *&v169 = &v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2413538FC();
  v168 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E537C90 != -1)
  {
    goto LABEL_130;
  }

  while (2)
  {
    if (*(qword_27E5418F0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_state) == 2)
    {
      v10 = *(qword_27E5418F0 + OBJC_IVAR____TtC11AssetViewer14ScreenRecorder_movieWriter);
      if (v10)
      {
        v11 = *(v10 + OBJC_IVAR____TtC11AssetViewer11MovieWriter_assetWriterInput);
        if (v11)
        {
          if ([v11 isReadyForMoreMediaData])
          {
            sub_241317710();
          }
        }
      }
    }

    v166 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v12 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (!v12)
    {
      goto LABEL_192;
    }

    v13 = *(v12 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v13 >> 62)
    {
      v14 = sub_2413544EC();
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v167 = v1;
    v164 = v7;
    if (v14)
    {
      v15 = *(v1 + v166);
      if (!v15)
      {
        goto LABEL_199;
      }

      v16 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      if (v16 >> 62)
      {
        v116 = *(v15 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
        v17 = sub_2413544EC();
        v16 = v116;
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = MEMORY[0x277D84F90];
      if (v17)
      {
        *&v175 = MEMORY[0x277D84F90];
        v19 = v16;

        sub_2412DE1D4(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_139;
        }

        v156 = v9;
        v157 = v5;
        v158 = v4;
        v20 = 0;
        v18 = v175;
        v21 = v19;
        v170 = v19 & 0xC000000000000001;
        v173.i64[0] = v19;
        do
        {
          v22 = v17;
          if (v170)
          {
            v23 = MEMORY[0x245CE29C0](v20, v21);
          }

          else
          {
            v23 = *(v21 + 8 * v20 + 32);
          }

          v24 = v23;
          sub_241352C5C();
          sub_24135197C();
          v174 = v25;
          *&aBlock = 0;
          *(&aBlock + 1) = 0xE000000000000000;
          MEMORY[0x245CE20D0](40, 0xE100000000000000);
          v183 = v174;
          sub_2413546CC();
          MEMORY[0x245CE20D0](8236, 0xE200000000000000);
          v183 = DWORD1(v174);
          sub_2413546CC();
          MEMORY[0x245CE20D0](8236, 0xE200000000000000);
          v183 = DWORD2(v174);
          sub_2413546CC();
          MEMORY[0x245CE20D0](41, 0xE100000000000000);

          v26 = aBlock;
          *&v175 = v18;
          v28 = *(v18 + 16);
          v27 = *(v18 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_2412DE1D4((v27 > 1), v28 + 1, 1);
            v18 = v175;
          }

          ++v20;
          *(v18 + 16) = v28 + 1;
          *(v18 + 16 * v28 + 32) = v26;
          v17 = v22;
          v21 = v173.i64[0];
        }

        while (v22 != v20);

        v1 = v167;
        v4 = v158;
        v5 = v157;
        v9 = v156;
      }

      *&aBlock = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538B08);
      sub_24123D370(&qword_27E538B10, &qword_27E538B08);
      sub_241353BAC();
    }

    v29 = MEMORY[0x277D84F90];
    if (qword_27E537BF8 != -1)
    {
      swift_once();
    }

    *&v180 = sub_24129D468;
    *(&v180 + 1) = 0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v179 = sub_2412D5698;
    *(&v179 + 1) = &block_descriptor_131;
    v19 = _Block_copy(&aBlock);
    sub_2413538DC();
    *&v175 = v29;
    sub_2412B3164(&qword_27E539870, MEMORY[0x277D85198]);
    v30 = v9;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538930);
    sub_24123D370(&qword_27E539880, &unk_27E538930);
    v9 = v169;
    sub_24135444C();
    MEMORY[0x245CE2540](0, v30, v9, v19);
    _Block_release(v19);
    v31 = *(v5 + 8);
    v5 += 8;
    v31(v9, v4);
    v168[1](v30, v164);
    v32 = sub_241287420();
    v33 = v32[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

    if ((v33 & 1) == 0)
    {
      sub_241287498();
      sub_241338A98();

      v35 = CACurrentMediaTime();
      v36 = OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime;
      if (v35 - *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_lastTriggerAffordanceUpdateTime) >= 0.2)
      {
        sub_24123E374(v34);
        *(v1 + v36) = CACurrentMediaTime();
      }
    }

    v37 = *(v1 + v166);
    if (!v37)
    {
      goto LABEL_193;
    }

    v38 = *(v37 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v38 || *(v38 + qword_27E53A1C8) != 3)
    {
      v7 = *(v37 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      if (v7 >> 62)
      {
        v4 = sub_2413544EC();
      }

      else
      {
        v4 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v4)
      {
        v5 = 0;
        v9 = (v7 & 0xC000000000000001);
        *&v174 = v7 & 0xC000000000000001;
        do
        {
          if (v9)
          {
            v39 = MEMORY[0x245CE29C0](v5, v7);
          }

          else
          {
            if (v5 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_127;
            }

            v39 = *(v7 + 8 * v5 + 32);
          }

          v19 = v39;
          v1 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

          v40 = OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer;
          v41 = *&v39[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
          if (!v41)
          {
            goto LABEL_37;
          }

          if ([v41 isActive])
          {
            [*(v19 + v40) update];
          }

          v42 = *(v19 + v40);
          if (v42)
          {
            v43 = v42;
            if ([v43 isScaleAnimating])
            {
              [v43 animatedScaleValue];
              v45 = *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_type);
              if (v45)
              {
                *(v45 + 52) = *(v45 + 60) / *&v44;

                sub_2412596EC();
                sub_2412596EC();
                v46 = *(v45 + 60);
                v47 = *(v45 + 52);
                if (swift_unknownObjectWeakLoadStrong())
                {
                  v48 = *(v45 + 104);
                  ObjectType = swift_getObjectType();
                  v50 = *(v48 + 8);
                  v51 = v48;
                  v9 = v174;
                  v50(ObjectType, v51, -*(v45 + 36), *(v45 + 32), v46 / v47);

                  swift_unknownObjectRelease();
                }

                else
                {
                }

                goto LABEL_38;
              }

              if (*(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48))
              {
                v52 = vdupq_lane_s32(*&v44, 0);
                v52.i32[3] = 0;
                v173 = v52;
                sub_241352C5C();
                sub_24135199C();
              }

              else
              {
                v170 = *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_verticalPlacementMarker);
                v169 = v44;
                sub_241352C5C();
                sub_24135196C();
                v173 = v53;
                sub_24135199C();
                sub_24135196C();
                v173 = vsubq_f32(v173, v54);
                sub_24135196C();
                v9 = v174;
                sub_24135190C();
              }
            }
          }

          else
          {
LABEL_37:
          }

LABEL_38:
          ++v5;
        }

        while (v1 != v4);
      }

      v1 = v167;
      v37 = *(v167 + v166);
      if (!v37)
      {
        goto LABEL_198;
      }
    }

    v55 = *(v37 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (!v55)
    {
      goto LABEL_194;
    }

    ServiceLocator = v55;
    sub_241320ECC();

    v57 = *(v1 + v166);
    if (!v57)
    {
      goto LABEL_195;
    }

    v58 = *(v57 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v170 = v58 & 0xFFFFFFFFFFFFFF8;
    if (v58 >> 62)
    {
      v4 = sub_2413544EC();
    }

    else
    {
      v4 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v4)
    {
      goto LABEL_81;
    }

    v1 = 0;
    *&v169 = v58 & 0xC000000000000001;
    v168 = (v162 + 8);
    while (2)
    {
      for (i = v1; ; ++i)
      {
        if (v169)
        {
          v60 = MEMORY[0x245CE29C0](i, v58);
        }

        else
        {
          if (i >= *(v170 + 16))
          {
            goto LABEL_125;
          }

          v60 = *(v58 + 8 * i + 32);
        }

        v19 = v60;
        v1 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        v5 = OBJC_IVAR____TtC11AssetViewer16EntityController_entity;
        v61 = v171;
        sub_24135296C();
        sub_2413516FC();
        (*v168)(v61, v172);
        ServiceLocator = aBlock;
        REAnchorShadowMarkerComponentGetComponentType();
        if (!REEntityGetComponentByClass())
        {

          if (v1 == v4)
          {
            goto LABEL_81;
          }

          continue;
        }

        v62 = sub_241287420();
        v63 = v62[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

        if (v63)
        {
          v65 = *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB + 4);
          ServiceLocator = *(v19 + v5);
          sub_241352C5C();
          v9 = MEMORY[0x277CDB1B8];
          sub_24135194C();
          v67 = vmuls_lane_f32(v65, v66, 1) - *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
          sub_24135196C();
          *(&v69 + 1) = v67 + v68;
          v174 = v69;
          sub_24135193C();
          v74 = vmlaq_f32(vmlaq_f32(vaddq_f32(v71, vmulq_f32(v70, 0)), 0, v72), 0, v73);
          v75 = vmulq_f32(v74, v74);
          v72.f32[0] = v75.f32[2] + vaddv_f32(*v75.f32);
          *v75.f32 = vrsqrte_f32(v72.u32[0]);
          *v75.f32 = vmul_f32(*v75.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v75.f32, *v75.f32)));
          v76 = vmulq_n_f32(v74, vmul_f32(*v75.f32, vrsqrts_f32(v72.u32[0], vmul_f32(*v75.f32, *v75.f32))).f32[0]);
          v76.i32[3] = v165;
          v173 = v76;
          REAnchorShadowMarkerSetPointAndNormal();

          v77 = v173;
          v78 = &v180;
          goto LABEL_80;
        }

        if (*(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48))
        {
          break;
        }

        v174 = *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 16);
        v9 = sub_241352C5C();
        v7 = v4;
        sub_24135196C();
        v173 = v64;
        ServiceLocator = *(v19 + v5);
        sub_24135194C();
        REAnchorShadowMarkerSetPointAndNormal();

        if (v1 == v4)
        {
          goto LABEL_81;
        }
      }

      v79 = *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_initialAABB + 4);
      ServiceLocator = *(v19 + v5);
      sub_241352C5C();
      v9 = MEMORY[0x277CDB1B8];
      sub_24135194C();
      v81 = vmuls_lane_f32(v79, v80, 1) - *(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_levitationHeight);
      sub_24135196C();
      *(&v83 + 1) = v81 + v82;
      v174 = v83;
      sub_24135193C();
      v88 = vmlaq_f32(vmlaq_f32(vaddq_f32(v85, vmulq_f32(v84, 0)), 0, v86), 0, v87);
      v89 = vmulq_f32(v88, v88);
      v86.f32[0] = v89.f32[2] + vaddv_f32(*v89.f32);
      *v89.f32 = vrsqrte_f32(v86.u32[0]);
      *v89.f32 = vmul_f32(*v89.f32, vrsqrts_f32(v86.u32[0], vmul_f32(*v89.f32, *v89.f32)));
      v90 = vmulq_n_f32(v88, vmul_f32(*v89.f32, vrsqrts_f32(v86.u32[0], vmul_f32(*v89.f32, *v89.f32))).f32[0]);
      v90.i32[3] = v163;
      v173 = v90;
      REAnchorShadowMarkerSetPointAndNormal();

      v77 = v173;
      v78 = &v179;
LABEL_80:
      *(v78 - 16) = v77;
      if (v1 != v4)
      {
        continue;
      }

      break;
    }

LABEL_81:

    v4 = v167;
    v91 = *(v167 + v166);
    if (!v91)
    {
      goto LABEL_196;
    }

    v92 = *(v91 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v92 >> 62)
    {
      if (!sub_2413544EC())
      {
        goto LABEL_96;
      }

LABEL_84:
      if ((v92 & 0xC000000000000001) != 0)
      {

        v19 = MEMORY[0x245CE29C0](0, v92);
      }

      else
      {
        if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        v19 = *(v92 + 32);
      }

      v94 = v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType;
      if ((*(v19 + OBJC_IVAR____TtC11AssetViewer16EntityController_planeType + 48) & 1) == 0)
      {
        v96 = (v94 + 24);
        v97 = *(v94 + 16);
        LODWORD(v93) = v97;
        *&v95 = v97;
        *(&v95 + 1) = *v96;
LABEL_91:
        v98 = *(v4 + v166);
        if (!v98)
        {
          goto LABEL_202;
        }

        v173 = v93;
        v174 = v95;
        v99 = *(v98 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v99)
        {
          v100 = v99;
          sub_24135257C();
          v101 = v159;
          sub_241351C8C();
          sub_2413516FC();

          (*(v160 + 8))(v101, v161);
          ServiceLocator = REEngineGetServiceLocator();

          if (MEMORY[0x245CE3AC0](ServiceLocator))
          {
            REShadowManagerSetLightDirection();
          }

          goto LABEL_96;
        }

LABEL_203:
        __break(1u);
        goto LABEL_204;
      }

      if (qword_27E537C40 == -1)
      {
LABEL_89:
        v93 = xmmword_27E541820;
        v95 = xmmword_27E541820;
        goto LABEL_91;
      }

LABEL_140:
      swift_once();
      goto LABEL_89;
    }

    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_84;
    }

LABEL_96:
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v103 = *(v4 + v166);
      if (v103)
      {
        v104 = Strong;
        v105 = *(v103 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v105)
        {
          v106 = [v105 session];
          ServiceLocator = [v106 currentFrame];

          if (ServiceLocator)
          {

            ServiceLocator = v4;
            sub_24128F378();
            sub_24128F138(v104);
          }

          goto LABEL_102;
        }

LABEL_201:
        __break(1u);
LABEL_202:
        __break(1u);
        goto LABEL_203;
      }

LABEL_200:
      __break(1u);
      goto LABEL_201;
    }

LABEL_102:
    if (![objc_opt_self() supportsSceneReconstruction] || *(v4 + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8) - 3 > 2)
    {
      goto LABEL_145;
    }

    v107 = *(v4 + v166);
    if (!v107)
    {
      goto LABEL_205;
    }

    if (*(v107 + OBJC_IVAR____TtC11AssetViewer15ModelController_isFaceAnchoredScene))
    {
      goto LABEL_145;
    }

    v108 = *(v107 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    if (v108 >> 62)
    {
      v109 = sub_2413544EC();
    }

    else
    {
      v109 = *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v109)
    {
      v110 = 0;
      v9 = (v108 & 0xC000000000000001);
      v1 = v108 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v9)
        {
          v111 = MEMORY[0x245CE29C0](v110, v108);
        }

        else
        {
          if (v110 >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_129;
          }

          v111 = *(v108 + 8 * v110 + 32);
        }

        ServiceLocator = v111;
        v7 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        sub_241323584();

        ++v110;
        if (v7 == v109)
        {
          goto LABEL_117;
        }
      }

LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      swift_once();
      continue;
    }

    break;
  }

LABEL_117:

  v112 = *(v4 + v166);
  if (!v112)
  {
    goto LABEL_206;
  }

  v113 = *(v112 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v113 >> 62)
  {
    if (!sub_2413544EC())
    {
      goto LABEL_143;
    }

LABEL_120:
    if ((v113 & 0xC000000000000001) != 0)
    {

      v114 = MEMORY[0x245CE29C0](0, v113);
    }

    else
    {
      if (!*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }

      v114 = *(v113 + 32);
    }

    sub_241352C5C();
    sub_24135196C();
    v174 = v115;

    ServiceLocator = &unk_24136BA00;
    v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E538B20);
    v177 = sub_24123D370(&qword_27E538390, &unk_27E538B20);
    *&v175 = swift_allocObject();
    *(v175 + 16) = v174;
    sub_241258074(&v175, &aBlock);
    goto LABEL_144;
  }

  if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_120;
  }

LABEL_143:
  *(&v179 + 1) = MEMORY[0x277D837D0];
  *&v180 = MEMORY[0x277D83838];
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
LABEL_144:
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
LABEL_145:
  v117 = *(v4 + v166);
  if (!v117)
  {
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
LABEL_199:
    __break(1u);
    goto LABEL_200;
  }

  v118 = *(v117 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
  if (v118 >> 62)
  {
LABEL_186:
    v119 = sub_2413544EC();
    if (!v119)
    {
      goto LABEL_158;
    }

LABEL_148:
    if (v119 >= 1)
    {

      for (j = 0; j != v119; ++j)
      {
        if ((v118 & 0xC000000000000001) != 0)
        {
          v121 = MEMORY[0x245CE29C0](j, v118);
        }

        else
        {
          v121 = *(v118 + 8 * j + 32);
        }

        v122 = v121;
        v123 = &v121[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState];
        if (v121[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 8] == 1 && (sub_241323A38() & 1) != 0)
        {

          sub_24133D85C(v124);

          v123[8] = 0;
        }
      }

      v4 = v167;
      goto LABEL_158;
    }

    __break(1u);
    goto LABEL_189;
  }

  v119 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v119)
  {
    goto LABEL_148;
  }

LABEL_158:
  if ([objc_opt_self() wantsShowLastPlacementResultTypeStatus])
  {
    v125 = *(v4 + v166);
    if (v125)
    {
      ServiceLocator = *(v125 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
      v4 = ServiceLocator & 0xFFFFFFFFFFFFFF8;
      if (!(ServiceLocator >> 62))
      {
        v126 = *((ServiceLocator & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_162;
      }

LABEL_189:
      v126 = sub_2413544EC();
LABEL_162:

      if (v126)
      {
        v127 = 0;
        v128 = MEMORY[0x277D84F90];
        v118 = &qword_27E5383A0;
        do
        {
          *&v174 = v128;
          v129 = v127;
          while (1)
          {
            if ((ServiceLocator & 0xC000000000000001) != 0)
            {
              v130 = MEMORY[0x245CE29C0](v129, ServiceLocator);
            }

            else
            {
              if (v129 >= *(v4 + 16))
              {
                goto LABEL_185;
              }

              v130 = *(ServiceLocator + 8 * v129 + 32);
            }

            v131 = v130;
            v127 = v129 + 1;
            if (__OFADD__(v129, 1))
            {
              __break(1u);
LABEL_185:
              __break(1u);
              goto LABEL_186;
            }

            aBlock = *&v130[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 16];
            v132 = *&v130[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 80];
            v134 = *&v130[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 32];
            v133 = *&v130[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 48];
            v181 = *&v130[OBJC_IVAR____TtC11AssetViewer16EntityController_sceneUnderstandingState + 64];
            v182 = v132;
            v179 = v134;
            v180 = v133;
            sub_241246210(&aBlock, &v175, &qword_27E5383A0);

            if (aBlock != 4)
            {
              break;
            }

            ++v129;
            if (v127 == v126)
            {
              v128 = v174;
              goto LABEL_180;
            }
          }

          v135 = v174;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_2412A1324(0, *(v135 + 2) + 1, 1, v135);
          }

          v137 = *(v135 + 2);
          v136 = *(v135 + 3);
          v138 = v135;
          if (v137 >= v136 >> 1)
          {
            v138 = sub_2412A1324((v136 > 1), v137 + 1, 1, v135);
          }

          v139 = aBlock;
          v140 = v179;
          v141 = v180;
          v142 = v181;
          v143 = v182;
          *(v138 + 2) = v137 + 1;
          v128 = v138;
          v144 = &v138[80 * v137];
          *(v144 + 4) = v139;
          *(v144 + 3) = v140;
          *(v144 + 4) = v141;
          *(v144 + 5) = v142;
          *(v144 + 6) = v143;
        }

        while (v127 != v126);
      }

      else
      {
        v128 = MEMORY[0x277D84F90];
      }

LABEL_180:

      if (*(v128 + 2))
      {
        v145 = *(v128 + 4);
        v146 = *(v128 + 4);
        v174 = *(v128 + 3);
        v173 = v146;
        v147 = *(v128 + 6);
        v172 = *(v128 + 5);
        v171 = v147;
        sub_241257A94(v145);

        v148 = *(v167 + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
        v149 = &v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType];
        aBlock = *&v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType];
        v150 = *&v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType + 48];
        v151 = *&v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType + 64];
        v152 = *&v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType + 32];
        v179 = *&v148[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_lastResultType + 16];
        v180 = v152;
        v181 = v150;
        v182 = v151;
        *v149 = v145;
        v153 = v173;
        *(v149 + 1) = v174;
        *(v149 + 2) = v153;
        v154 = v171;
        *(v149 + 3) = v172;
        *(v149 + 4) = v154;
        sub_241257A94(v145);
        sub_241257A94(v145);
        v155 = v148;
        sub_241246278(&aBlock, &qword_27E5383A0);
        [v155 updateStatusPill];
        sub_24124B044(v145);

        sub_24124B044(v145);
      }

      else
      {
      }

      return;
    }

LABEL_204:
    __break(1u);
LABEL_205:
    __break(1u);
LABEL_206:
    __break(1u);
  }
}

void sub_2412AE1A8(char a1)
{
  v2 = &v1[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
  if ((v1[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint + 16] & 1) == 0)
  {
    v3 = *v2;
    v4 = v2[1];
    *v2 = 0.0;
    v2[1] = 0.0;
    *(v2 + 16) = 1;
    if (a1)
    {
      v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *&v1[v5];
      *&v1[v5] = 0x8000000000000000;
      sub_2412A6480(1, isUniquelyReferenced_nonNull_native, 0.0);
      *&v1[v5] = v11;
      swift_endAccess();
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v7 = sub_241352FFC();
      __swift_project_value_buffer(v7, qword_27E53A538);
      v8 = sub_241352FDC();
      v9 = sub_2413540DC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_241215000, v8, v9, "performedTapInteraction called, don't need to show tap trigger hint", v10, 2u);
        MEMORY[0x245CE4870](v10, -1, -1);
      }
    }

    else
    {

      [v1 handleTapAtPointWithPoint_];
    }
  }
}

void _s11AssetViewer21PreviewViewControllerC4view_41performedProximityInteractionsForEntitiesy10RealityKit6ARViewC_SayAF6EntityCGtF_0()
{
  v1 = OBJC_IVAR___ASVPreviewViewControllerInternal_interactionsShownState;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v0 + v1);
  *(v0 + v1) = 0x8000000000000000;
  sub_2412A6480(2, isUniquelyReferenced_nonNull_native, 0.0);
  *(v0 + v1) = v7;
  swift_endAccess();
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v3 = sub_241352FFC();
  __swift_project_value_buffer(v3, qword_27E53A538);
  v4 = sub_241352FDC();
  v5 = sub_2413540DC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_241215000, v4, v5, "performedProximityInteractionsForEntities called, don't need to show proximity trigger hint", v6, 2u);
    MEMORY[0x245CE4870](v6, -1, -1);
  }
}

uint64_t sub_2412AE478(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_241353CFC();

    return sub_241353D9C();
  }

  return result;
}

unint64_t sub_2412AE514()
{
  result = qword_27E538740;
  if (!qword_27E538740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E538740);
  }

  return result;
}

unint64_t sub_2412AE568(unint64_t result, void *a2)
{
  v4 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x245CE29C0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v9 = v7;
        sub_24128DE78(&v9, a2);

        if (!v2)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v4 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2413544EC();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void _s11AssetViewer21PreviewViewControllerC12touchesBegan_4withyShySo7UITouchCG_So7UIEventCSgtF_0(uint64_t a1)
{
  v2 = v1;
  sub_241295418();
  v4 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v5 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v5)
  {
    goto LABEL_62;
  }

  if (!*(v5 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController) || (*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) & 1) != 0)
  {
    return;
  }

  v6 = sub_241287420();
  v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  if (v7 == 1)
  {
    v8 = *(v2 + v4);
    if (!v8)
    {
      goto LABEL_63;
    }

    v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v9)
    {
      goto LABEL_64;
    }

    [*(v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
    v10 = *(v2 + v4);
    if (!v10)
    {
      goto LABEL_65;
    }

    v11 = *(v10 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v11)
    {
      goto LABEL_66;
    }

    v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
    if (v12)
    {
      v13 = v12;
      sub_24132A610(a1);
      v67 = sub_241353FEC();

      [v13 processTouches:v67 phase:0];
    }

    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2413544AC();
    sub_241246158(0, &qword_27E538A40);
    sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40);
    sub_24135401C();
    a1 = v71[3];
    v14 = v71[4];
    v15 = v71[5];
    v16 = v71[6];
    v17 = v71[7];
  }

  else
  {
    v18 = -1 << *(a1 + 32);
    v14 = (a1 + 56);
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = (v20 & *(a1 + 56));

    v16 = 0;
  }

  v21 = (v15 + 64) >> 6;
  v64 = MEMORY[0x277D84F90] >> 62;
  v65 = v14;
  v66 = a1;
  while (a1 < 0)
  {
    if (!sub_24135451C() || (sub_241246158(0, &qword_27E538A40), swift_dynamicCast(), v31 = v71[0], v29 = v16, v30 = v17, !v71[0]))
    {
LABEL_56:
      sub_24121C274();
      swift_beginAccess();

      sub_241295E60(v63, 0);

      return;
    }

LABEL_31:
    sub_241295A34(v31, v2);
    v33 = v32;
    [*&v32[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer] cancelDeceleration];
    v34 = OBJC_IVAR___ASVPreviewViewControllerInternal_touchToEntityControllerMapping;
    swift_beginAccess();
    v35 = *(v2 + v34);
    v68 = v30;
    if ((v35 & 0xC000000000000001) != 0)
    {
      if (v35 < 0)
      {
        v36 = *(v2 + v34);
      }

      else
      {
        v36 = v35 & 0xFFFFFFFFFFFFFF8;
      }

      v37 = v31;
      v38 = v33;
      v39 = sub_2413544EC();
      if (__OFADD__(v39, 1))
      {
        goto LABEL_60;
      }

      *(v2 + v34) = sub_24126DDFC(v36, v39 + 1);
    }

    else
    {
      v40 = v31;
      v41 = v33;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = *(v2 + v34);
    *(v2 + v34) = 0x8000000000000000;
    v45 = sub_2412FDC20(v31);
    v46 = v43[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_59;
    }

    v49 = v44;
    if (v43[3] >= v48)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v44)
        {
          goto LABEL_46;
        }
      }

      else
      {
        sub_2412A85BC();
        if (v49)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      sub_2412A4678(v48, isUniquelyReferenced_nonNull_native);
      v50 = sub_2412FDC20(v31);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_67;
      }

      v45 = v50;
      if (v49)
      {
LABEL_46:
        v55 = v43[7];
        v56 = *(v55 + 8 * v45);
        *(v55 + 8 * v45) = v33;

        goto LABEL_47;
      }
    }

    v43[(v45 >> 6) + 8] |= 1 << v45;
    *(v43[6] + 8 * v45) = v31;
    *(v43[7] + 8 * v45) = v33;
    v52 = v43[2];
    v53 = __OFADD__(v52, 1);
    v54 = v52 + 1;
    if (v53)
    {
      goto LABEL_61;
    }

    v43[2] = v54;
LABEL_47:
    *(v2 + v34) = v43;
    swift_endAccess();
    v57 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
    swift_beginAccess();
    v58 = *(v2 + v57);
    if (*(v58 + 16) && (v59 = sub_2412FDBDC(v33), (v60 & 1) != 0))
    {
      v22 = *(*(v58 + 56) + 8 * v59);
      swift_endAccess();
      v70 = v22;
    }

    else
    {
      swift_endAccess();
      if (v64 && (v62 = MEMORY[0x277D84F90], sub_2413544EC()))
      {
        sub_2412C0B78(v62);
      }

      else
      {
        v61 = MEMORY[0x277D84FA0];
      }

      v70 = v61;
    }

    v23 = v31;
    sub_24132F1E0(v71, v23);

    v24 = OBJC_IVAR___ASVPreviewViewControllerInternal_entityControllerToTouchesMapping;
    swift_beginAccess();
    v25 = v33;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v69 = *(v2 + v24);
    *(v2 + v24) = 0x8000000000000000;
    sub_2412A69CC(v70, v25, v26);

    *(v2 + v24) = v69;
    swift_endAccess();

    v16 = v29;
    a1 = v66;
    v17 = v68;
    v14 = v65;
  }

  v27 = v16;
  v28 = v17;
  v29 = v16;
  if (v17)
  {
LABEL_27:
    v30 = (v28 - 1) & v28;
    v31 = *(*(a1 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v31)
    {
      goto LABEL_56;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v29 = (v27 + 1);
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v21)
    {
      goto LABEL_56;
    }

    v28 = v14[v29];
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  sub_241246158(0, &qword_27E538A40);
  sub_2413549DC();
  __break(1u);
}

void _s11AssetViewer21PreviewViewControllerC12touchesMoved_4withyShySo7UITouchCG_So7UIEventCSgtF_0(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v2)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (*(v2 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    v3 = v1;
    if ((*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) & 1) == 0)
    {
      v37 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
      if ((a1 & 0xC000000000000001) != 0)
      {

        swift_unknownObjectRetain();
        sub_2413544AC();
        sub_241246158(0, &qword_27E538A40);
        sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40);
        sub_24135401C();
        v5 = v40;
        v4 = v41;
        v6 = v42;
        v7 = v43;
        v8 = v44;
      }

      else
      {
        v9 = -1 << *(a1 + 32);
        v4 = a1 + 56;
        v6 = ~v9;
        v10 = -v9;
        if (v10 < 64)
        {
          v11 = ~(-1 << v10);
        }

        else
        {
          v11 = -1;
        }

        v8 = v11 & *(a1 + 56);
        v5 = a1;
        swift_bridgeObjectRetain_n();
        v7 = 0;
      }

      v12 = (v6 + 64) >> 6;
      v13 = &selRef_addConstraints_;
      while (1)
      {
        if (v5 < 0)
        {
          if (!sub_24135451C() || (sub_241246158(0, &qword_27E538A40), swift_dynamicCast(), v18 = v38, v16 = v7, v17 = v8, v13 = &selRef_addConstraints_, !v38))
          {
LABEL_25:
            sub_24121C274();
            if ((a1 & 0xC000000000000001) != 0)
            {
              if (sub_2413544EC() >= 1)
              {
                goto LABEL_27;
              }

LABEL_35:

              return;
            }

            if (*(a1 + 16) < 1)
            {
              goto LABEL_35;
            }

LABEL_27:
            v27 = sub_241287420();
            v28 = v27[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

            if (v28 != 1)
            {

              swift_beginAccess();

              sub_241295E60(v35, 1);
              goto LABEL_35;
            }

            v29 = *(v3 + v37);
            if (!v29)
            {
              goto LABEL_39;
            }

            v30 = *(v29 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
            if (v30)
            {
              v31 = v30;

              v32 = *&v31[OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer];
              v33 = v32;

              if (v32)
              {
                sub_24132A610(a1);
                v34 = sub_241353FEC();

                [v33 processTouches:v34 phase:1];
              }

              return;
            }

LABEL_40:
            __break(1u);
            return;
          }
        }

        else
        {
          v14 = v7;
          v15 = v8;
          v16 = v7;
          if (!v8)
          {
            while (1)
            {
              v16 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                break;
              }

              if (v16 >= v12)
              {
                goto LABEL_25;
              }

              v15 = *(v4 + 8 * v16);
              ++v14;
              if (v15)
              {
                goto LABEL_18;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_18:
          v17 = (v15 - 1) & v15;
          v18 = *(*(v5 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
          if (!v18)
          {
            goto LABEL_25;
          }
        }

        v19 = v18;
        [v19 v13[358]];
        v21 = v20;
        [v19 previousLocation];
        if (vceq_f32(v21, v22).u8[0] & 1) != 0 && ([v19 v13[358]], v24 = v23, objc_msgSend(v19, sel_previousLocation), (vceq_f32(v24, v25).i32[1]))
        {
          v26 = sub_24132FD74(v19);

          v19 = v26;
          v13 = &selRef_addConstraints_;
        }

        else
        {
        }

        v7 = v16;
        v8 = v17;
      }
    }
  }
}

void _s11AssetViewer21PreviewViewControllerC12touchesEnded_4withyShySo7UITouchCG_So7UIEventCSgtF_0(uint64_t a1)
{
  v2 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v3 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (!v3)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (*(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController))
  {
    v4 = v1;
    if ((*(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_isDismissing) & 1) == 0)
    {
      v6 = sub_241287420();
      v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

      if (v7 == 1)
      {
        v8 = *(v4 + v2);
        if (!v8)
        {
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
        if (!v9)
        {
LABEL_32:
          __break(1u);
          return;
        }

        v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer);
        if (v10)
        {
          v11 = v10;
          sub_24132A610(a1);
          v12 = sub_241353FEC();

          [v11 processTouches:v12 phase:2];
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        swift_beginAccess();

        sub_241295E60(v17, 2);

        if ((a1 & 0xC000000000000001) != 0)
        {
LABEL_10:
          swift_unknownObjectRetain();
          sub_2413544AC();
          sub_241246158(0, &qword_27E538A40);
          sub_2412B3208(&qword_27E53A4B0, &qword_27E538A40);
          sub_24135401C();
          a1 = v27[4];
          v13 = v27[5];
          v14 = v27[6];
          v15 = v27[7];
          v16 = v27[8];
LABEL_16:
          v21 = (v14 + 64) >> 6;
          if (a1 < 0)
          {
            goto LABEL_23;
          }

          while (1)
          {
            v22 = v15;
            v23 = v16;
            v24 = v15;
            if (!v16)
            {
              break;
            }

LABEL_21:
            v25 = (v23 - 1) & v23;
            v26 = *(*(a1 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
            if (!v26)
            {
LABEL_27:
              sub_24121C274();
              return;
            }

            while (1)
            {
              v27[0] = v26;
              sub_241296108(v27, v4);

              v15 = v24;
              v16 = v25;
              if ((a1 & 0x8000000000000000) == 0)
              {
                break;
              }

LABEL_23:
              if (sub_24135451C())
              {
                sub_241246158(0, &qword_27E538A40);
                swift_dynamicCast();
                v26 = v27[0];
                v24 = v15;
                v25 = v16;
                if (v27[0])
                {
                  continue;
                }
              }

              goto LABEL_27;
            }
          }

          while (1)
          {
            v24 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v24 >= v21)
            {
              goto LABEL_27;
            }

            v23 = v13[v24];
            ++v22;
            if (v23)
            {
              goto LABEL_21;
            }
          }

          __break(1u);
          goto LABEL_30;
        }
      }

      v18 = -1 << *(a1 + 32);
      v13 = (a1 + 56);
      v14 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v16 = (v20 & *(a1 + 56));

      v15 = 0;
      goto LABEL_16;
    }
  }
}

void _s11AssetViewer21PreviewViewControllerC25presentationModeDidChange_8animatedySo014QLPresentationG0V_SbtF_0(uint64_t a1)
{
  *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState] = a1;
  [v1 updateInterfaceState];
  if (a1)
  {
    if (a1 == 3)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v7 = sub_241352FFC();
      __swift_project_value_buffer(v7, qword_27E53A538);
      oslog = sub_241352FDC();
      v4 = sub_2413540DC();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Currently in embedded presentation mode";
        goto LABEL_20;
      }
    }

    else if (a1 == 4)
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v3 = sub_241352FFC();
      __swift_project_value_buffer(v3, qword_27E53A538);
      oslog = sub_241352FDC();
      v4 = sub_2413540DC();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Currently in peek presentation mode";
LABEL_20:
        _os_log_impl(&dword_241215000, oslog, v4, v6, v5, 2u);
        MEMORY[0x245CE4870](v5, -1, -1);
      }
    }

    else
    {
      if (qword_27E537CD0 != -1)
      {
        swift_once();
      }

      v9 = sub_241352FFC();
      __swift_project_value_buffer(v9, qword_27E53A538);
      oslog = sub_241352FDC();
      v4 = sub_2413540DC();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        v6 = "Currently in normal presentation mode";
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (qword_27E537CD0 != -1)
    {
      swift_once();
    }

    v8 = sub_241352FFC();
    __swift_project_value_buffer(v8, qword_27E53A538);
    oslog = sub_241352FDC();
    v4 = sub_2413540DC();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      v6 = "Currently in an undefined presentation mode";
      goto LABEL_20;
    }
  }
}

uint64_t sub_2412AF7A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2412AF808(double a1, double a2)
{
  v3 = v2[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8];
  v4 = v3 > 5;
  v5 = (1 << v3) & 0x3A;
  if (!v4 && v5 != 0)
  {
    v7 = &v2[OBJC_IVAR___ASVPreviewViewControllerInternal_singleTapScreenPoint];
    *v7 = a1;
    v7[1] = a2;
    *(v7 + 16) = 0;
    v8 = *&v2[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
    if (v8)
    {
      v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (v9)
      {
        v10 = v9;
        sub_24135282C();

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  [v2 handleTapAtPointWithPoint_];
}

void sub_2412AF90C(void *a1)
{
  v2 = v1;
  v4 = sub_241287420();
  v5 = v4[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_displayMode];

  v26 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
  v6 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController];
  if (v5 == 1)
  {
    if (!v6)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v7)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    [*(v7 + OBJC_IVAR____TtC11AssetViewer16EntityController_worldGestureRecognizer) cancelDeceleration];
    v8 = *&v1[v26];
    if (!v8)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v9 = *(v8 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController);
    if (!v9)
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v10 = v9;
    sub_241247C18(1, 0, 0, 0.35);

    v11 = *&v2[v26];
    if (!v11)
    {
LABEL_44:
      __break(1u);
      return;
    }

    v12 = *(v11 + OBJC_IVAR____TtC11AssetViewer15ModelController_entityControllers);
    v25 = v2;
    if (v12 >> 62)
    {
LABEL_36:
      v13 = sub_2413544EC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v13)
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x245CE29C0](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        if (!*&v25[v26])
        {
          break;
        }

        v19 = *&v15[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager];
        v18 = *&v15[OBJC_IVAR____TtC11AssetViewer16EntityController_physicsStateManager + 8];

        sub_24133B4B4(v20, v19, v18);

        ++v14;
        if (v17 == v13)
        {
          goto LABEL_29;
        }
      }

      __break(1u);
      goto LABEL_38;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (!v6)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v21 = *(v6 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
  if (!v21)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (*(v21 + qword_27E53A1C8) != 2)
  {
LABEL_30:
    v24 = objc_opt_self();

    [v24 sendAnalyticsWithEvent_];
    return;
  }

  v22 = *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_fallbackTapGestureEntityController];
  if (v22)
  {
    v23 = v22 == a1;
  }

  else
  {
    v23 = 0;
  }

  if (!v23)
  {
    if (v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] == 3)
    {
      v1[OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState + 8] = 4;
      [v1 updateInterfaceState];
    }

    sub_241248358();
    swift_unknownObjectWeakAssign();
    sub_24128F138(a1);
    [*&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_lozengeLabel] setHidden:0 animated:1];
    sub_24128F5C4();
    goto LABEL_30;
  }
}

id _s11AssetViewer21PreviewViewControllerC17previewWillAppearyySbF_0()
{
  v1 = v0;
  type metadata accessor for BacklightController();
  v2 = swift_allocObject();
  *(v2 + 16) = [objc_allocWithZone(MEMORY[0x277CFD390]) init];
  sub_2412DF0E4();
  sub_2412DEC34();
  *&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController] = v2;

  result = [objc_opt_self() wantsStatusBarHidden];
  if (result)
  {
    result = [v1 setFullScreen_];
  }

  if (!*&v1[OBJC_IVAR___ASVPreviewViewControllerInternal_modelController])
  {
    __break(1u);
    goto LABEL_9;
  }

  result = [v1 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = result;
  [result frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *(swift_allocObject() + 16) = v1;
  v13 = v1;
  sub_24124BCF8(1, sub_2412B36EC, v6, v8, v10, v12);
}

void _s11AssetViewer21PreviewViewControllerC16previewDidAppearyySbF_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E538868);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  v0[OBJC_IVAR___ASVPreviewViewControllerInternal_previewDidAppearCalled] = 1;
  sub_2413515DC();
  v4 = sub_2413515EC();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = OBJC_IVAR___ASVPreviewViewControllerInternal_analyticsViewDidAppearDate;
  swift_beginAccess();
  sub_241255BC8(v3, &v0[v5], &qword_27E538868);
  swift_endAccess();
  if ([objc_opt_self() wantsStatusBarHidden])
  {
    [v0 setFullScreen_];
  }

  v6 = [objc_opt_self() defaultCenter];
  if (qword_27E537B28 != -1)
  {
    swift_once();
  }

  [v6 postNotificationName:qword_27E5386E0 object:0 userInfo:0];

  sub_241295418();
}

void _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0()
{
  v1 = v0;
  if (qword_27E537CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_241352FFC();
  __swift_project_value_buffer(v2, qword_27E53A538);
  v3 = sub_241352FDC();
  v4 = sub_2413540DC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_241215000, v3, v4, "ARQL previewWillDisappear", v5, 2u);
    MEMORY[0x245CE4870](v5, -1, -1);
  }

  v6 = sub_241287420();
  v7 = v6[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode];

  if (v7 != 2)
  {
    v8 = OBJC_IVAR___ASVPreviewViewControllerInternal_modelController;
    v9 = *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
    if (v9)
    {
      v10 = *(v9 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
      if (!v10 || (v11 = [v10 session], v12 = objc_msgSend(v11, sel_state), v11, v12 != 1))
      {
LABEL_12:
        *(v1 + OBJC_IVAR___ASVPreviewViewControllerInternal_backlightController) = 0;

        sub_24130EC70();
        return;
      }

      v13 = *(v1 + v8);
      if (v13)
      {
        v14 = *(v13 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
        if (v14)
        {
          v15 = [v14 session];
          [v15 pause];

          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_17;
  }
}