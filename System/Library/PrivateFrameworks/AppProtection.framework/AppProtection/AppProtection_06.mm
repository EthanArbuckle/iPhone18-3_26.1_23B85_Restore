uint64_t sub_185B4F8E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD690, &unk_185B6EEB0);
  v38 = a2;
  result = sub_185B6846C();
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
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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

uint64_t sub_185B4FB88(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AuthAssertion();
  v49 = *(v6 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_185B67AFC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v53 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v16 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  v50 = a2;
  result = sub_185B6846C();
  v18 = result;
  if (*(v15 + 16))
  {
    v45 = v3;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v46 = (v11 + 16);
    v47 = v11;
    v51 = (v11 + 32);
    v25 = result + 64;
    v48 = v15;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v52 = *(v11 + 72);
      v32 = v31 + v52 * v30;
      if (v50)
      {
        (*v51)(v53, v32, v10);
        v33 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_185B544C4(v33 + v34 * v30, v54);
      }

      else
      {
        (*v46)(v53, v32, v10);
        v35 = *(v15 + 56);
        v34 = *(v49 + 72);
        sub_185B54460(v35 + v34 * v30, v54);
      }

      v36 = *(v18 + 40);
      sub_185ACA328(&qword_1EA8CD490);
      result = sub_185B67DAC();
      v37 = -1 << *(v18 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v25 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v25 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v25 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v51)((*(v18 + 48) + v52 * v26), v53, v10);
      result = sub_185B544C4(v54, *(v18 + 56) + v34 * v26);
      ++*(v18 + 16);
      v11 = v47;
      v15 = v48;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v50 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v44 = 1 << *(v15 + 32);
    v3 = v45;
    if (v44 >= 64)
    {
      bzero(v20, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v44;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v3 = v18;
  return result;
}

uint64_t sub_185B4FFD8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6B8, &qword_185B6EEF0);
  v43 = a2;
  result = sub_185B6846C();
  v15 = result;
  if (*(v12 + 16))
  {
    v47 = v11;
    v48 = v6;
    v39 = v3;
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
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v22 = result + 64;
    v42 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v46 = *(v7 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v48);
        v45 = *(*(v12 + 56) + 16 * v27);
      }

      else
      {
        (*v40)(v47, v29, v48);
        v45 = *(*(v12 + 56) + 16 * v27);
      }

      v30 = *(v15 + 40);
      sub_185ACA328(&qword_1EA8CD490);
      result = sub_185B67DAC();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v41;
        v12 = v42;
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
      v7 = v41;
      v12 = v42;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = (*v44)(*(v15 + 48) + v46 * v23, v47, v48);
      *(*(v15 + 56) + 16 * v23) = v45;
      ++*(v15 + 16);
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

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v39;
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

uint64_t sub_185B5039C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A8, &qword_185B6EED8);
  result = sub_185B6846C();
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_185B6865C();
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

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
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

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
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

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_185B5060C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  v39 = a2;
  result = sub_185B6846C();
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 3 * v22);
      v27 = *v26;
      v40 = v26[2];
      v41 = v26[1];
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
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
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 3 * v16);
      *v18 = v27;
      v18[1] = v41;
      v18[2] = v40;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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

uint64_t sub_185B508D4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_185B6846C();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
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
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_185B6866C();
      sub_185B67EEC();
      result = sub_185B686AC();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
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

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

unint64_t sub_185B50B70(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_185B50BB8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_185B67AFC();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AuthAssertion();
  result = sub_185B544C4(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_185B50C94(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_185B67AFC();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_185B50D54(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + 3 * result);
  *v6 = a4 & 1;
  v6[1] = BYTE1(a4) & 1;
  v6[2] = BYTE2(a4) & 1;
  v7 = a5[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v9;
  }

  return result;
}

void *sub_185B50DB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD620, &unk_185B6EE30);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        sub_185ACB7C8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_185AD093C(v25, (*(v4 + 56) + v22));
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

void *sub_185B50F98(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_185B6845C();
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

void *sub_185B510F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C0, &qword_185B6EEF8);
  v2 = *v0;
  v3 = sub_185B6845C();
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

void *sub_185B51254()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD690, &unk_185B6EEB0);
  v2 = *v0;
  v3 = sub_185B6845C();
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

char *sub_185B513BC()
{
  v1 = v0;
  v2 = type metadata accessor for AuthAssertion();
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_185B67AFC();
  v41 = *(v38 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v38, v7);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
  v9 = *v0;
  v10 = sub_185B6845C();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v42 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v35 = v41 + 32;
    v36 = v41 + 16;
    v21 = v37;
    if (v19)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
LABEL_14:
        v25 = v22 | (v15 << 6);
        v26 = v41;
        v27 = *(v41 + 72) * v25;
        v28 = v38;
        (*(v41 + 16))(v21, *(v9 + 48) + v27, v38);
        v29 = v39;
        v30 = *(v40 + 72) * v25;
        sub_185B54460(*(v9 + 56) + v30, v39);
        v31 = v42;
        (*(v26 + 32))(*(v42 + 48) + v27, v21, v28);
        result = sub_185B544C4(v29, *(v31 + 56) + v30);
        v19 = v43;
      }

      while (v43);
    }

    v23 = v15;
    v11 = v42;
    while (1)
    {
      v15 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v24 = *(v34 + 8 * v15);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v43 = (v24 - 1) & v24;
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

void *sub_185B516C0()
{
  v1 = v0;
  v32 = sub_185B67AFC();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32, v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6B8, &qword_185B6EEF0);
  v5 = *v0;
  v6 = sub_185B6845C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v1;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v11;
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 64);
    v15 = (v12 + 63) >> 6;
    v30 = v34 + 16;
    v28 = v5 + 64;
    for (i = v34 + 32; v14; result = )
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v16 | (v10 << 6);
      v20 = v34;
      v21 = *(v34 + 72) * v19;
      v22 = v31;
      v23 = v32;
      (*(v34 + 16))(v31, *(v5 + 48) + v21, v32);
      v19 *= 16;
      v24 = v33;
      v25 = *(v33 + 48);
      v26 = *(v20 + 32);
      v35 = *(*(v5 + 56) + v19);
      v26(v25 + v21, v22, v23);
      *(*(v24 + 56) + v19) = v35;
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
        v7 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
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
    *v1 = v7;
  }

  return result;
}

void *sub_185B51940()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A8, &qword_185B6EED8);
  v2 = *v0;
  v3 = sub_185B6845C();
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

id sub_185B51A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD4E8, &qword_185B6EED0);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        sub_185ADF8F0(*(v2 + 56) + 40 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_185AC66F8(v19, *(v4 + 56) + 40 * v17);
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

void *sub_185B51C20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 3;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        LOBYTE(v22) = v22[2];
        v25 = (*(v4 + 48) + v18);
        *v25 = v21;
        v25[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v23;
        v26[1] = v24;
        v26[2] = v22;
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

void *sub_185B51DA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6A0, &qword_185B6EEC8);
  v2 = *v0;
  v3 = sub_185B6845C();
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
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

id sub_185B51F1C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_185B6845C();
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

uint64_t sub_185B52078(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_185AC9F40(a2, a3);
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
      sub_185B4F3A8(v16, a4 & 1, &qword_1EA8CD6E0, &qword_185B6EF18);
      v20 = *v5;
      v11 = sub_185AC9F40(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_185B50F98(&qword_1EA8CD6E0, &qword_185B6EF18);
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

unint64_t sub_185B5222C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_185AF6EA4(a2);
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
      sub_185B4F648(v14, a3 & 1);
      v18 = *v4;
      result = sub_185AF6EA4(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_185B510F8();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

unint64_t sub_185B52378(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_185AC9F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_185B4F8E8(v16, a4 & 1);
      v20 = *v5;
      result = sub_185AC9F40(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_185B51254();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 8 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_185B524DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_185AF6E20(a2);
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
      sub_185B513BC();
      goto LABEL_7;
    }

    sub_185B4FB88(v19, a3 & 1);
    v26 = *v4;
    v27 = sub_185AF6E20(a2);
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
      return sub_185B50BB8(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_185B685DC();
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
  v24 = v23 + *(*(type metadata accessor for AuthAssertion() - 8) + 72) * v16;

  return sub_185B54528(a1, v24);
}

uint64_t sub_185B526C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v32 = a1;
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v17 = sub_185AF6E20(a3);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 >= v20 && (a4 & 1) == 0)
    {
      sub_185B516C0();
      goto LABEL_9;
    }

    sub_185B4FFD8(v20, a4 & 1);
    v23 = *v5;
    v24 = sub_185AF6E20(a3);
    if ((v21 & 1) == (v25 & 1))
    {
      v17 = v24;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_185B685DC();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = v32;
  v27 = *v5;
  if (v21)
  {
    v28 = (v27[7] + 16 * v17);
    v29 = v28[1];
    *v28 = v32;
    v28[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v14, a3, v9);
    return sub_185B50C94(v17, v14, v26, a2, v27);
  }
}

unint64_t sub_185B528A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_185AF6F20(a2);
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
      sub_185B5039C(v14, a3 & 1);
      v18 = *v4;
      result = sub_185AF6F20(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        result = sub_185B685DC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_185B51940();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + 8 * result) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * result);
  *(v21 + 8 * result) = a1;
}

uint64_t sub_185B529EC(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_185AC9F40(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = result;
      sub_185B51C20();
      result = v19;
      goto LABEL_8;
    }

    sub_185B5060C(v16, a4 & 1);
    v20 = *v5;
    result = sub_185AC9F40(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      result = sub_185B685DC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 3 * result);
    *v23 = a1 & 1;
    v23[1] = BYTE1(a1) & 1;
    v23[2] = BYTE2(a1) & 1;
  }

  else
  {
    sub_185B50D54(result, a2, a3, a1 & 0x10101, v22);
  }

  return result;
}

uint64_t sub_185B52B54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_185AC9F40(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_185B508D4(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_185AC9F40(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        sub_185B685DC();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v23 = v15;
      sub_185B51F1C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v29 = (v26[6] + 16 * v15);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v30 = v26[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void *sub_185B52CF0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

unint64_t sub_185B52D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD688, &unk_185B6EEA0);
    v3 = sub_185B6847C();
    v4 = a1 + 32;

    while (1)
    {
      sub_185AD04BC(v4, &v11, &qword_1EA8CD368, &qword_185B6E0D8);
      v5 = v11;
      result = sub_185AF6BE0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_185AD093C(&v12, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B52EA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_185B6847C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_185AC9F40(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B52FB0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_185B6847C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_185AC9F40(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B530AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD6C8, &qword_185B6EF00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v23 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD488, &qword_185B6E818);
    v9 = sub_185B6847C();
    v10 = *(v2 + 48);
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);

    while (1)
    {
      sub_185AD04BC(v11, v7, &qword_1EA8CD6C8, &qword_185B6EF00);
      result = sub_185AF6E20(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_185B67AFC();
      (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      v18 = v9[7];
      v19 = type metadata accessor for AuthAssertion();
      result = sub_185B544C4(&v7[v10], v18 + *(*(v19 - 8) + 72) * v15);
      v20 = v9[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v9[2] = v22;
      v11 += v12;
      if (!--v8)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B532B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD660, &qword_185B6EE80);
    v3 = sub_185B6847C();
    v4 = a1 + 32;

    while (1)
    {
      sub_185AD04BC(v4, v13, &qword_1EA8CD658, &unk_185B6EE70);
      result = sub_185AF6B9C(v13);
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
      result = sub_185AD093C(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_185B533F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD460, &unk_185B6E7F0);
    v3 = sub_185B6847C();

    for (i = (a1 + 50); ; i += 24)
    {
      v5 = *(i - 18);
      v6 = *(i - 10);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_185AC9F40(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 3 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_185B53510()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_185B6BB70;
  v4 = sub_185B67ABC();
  *(v3 + 56) = sub_185ADF590(0, &qword_1EA8CD638, 0x1E696AFB0);
  *(v3 + 64) = sub_185B54014(&qword_1EA8CD640, &qword_1EA8CD638, 0x1E696AFB0);
  *(v3 + 32) = v4;
  v5 = sub_185B6804C();
  [v2 setPredicate_];

  v21[0] = 0;
  v6 = [v2 execute_];
  v7 = v21[0];
  if (!v6)
  {
    v18 = v21[0];
    sub_185B6792C();

    swift_willThrow();
    goto LABEL_20;
  }

  v8 = v6;
  type metadata accessor for DataAccess();
  v9 = sub_185B67F6C();
  v10 = v7;

  if (!(v9 >> 62))
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v12 = v11 == 1;
    if (v11 >= 1)
    {
      goto LABEL_4;
    }

LABEL_19:

    goto LABEL_20;
  }

  v19 = sub_185B6844C();
  v12 = v19 == 1;
  if (v19 < 1)
  {
    goto LABEL_19;
  }

LABEL_4:
  if (v12)
  {
    goto LABEL_9;
  }

  if (qword_1EA8CB718 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1EA8D2278);
    v14 = sub_185B67B6C();
    v15 = sub_185B6809C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_185AC1000, v14, v15, "multiple access records with same UUID!?", v16, 2u);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

LABEL_9:
    if (v9 >> 62)
    {
      if (!sub_185B6844C())
      {
        goto LABEL_14;
      }
    }

    else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = *(v9 + 32);
      goto LABEL_14;
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

  MEMORY[0x1865FD3E0](0, v9);
LABEL_14:

LABEL_20:
  v20 = *MEMORY[0x1E69E9840];
}

void sub_185B53884()
{
  v22[1] = *MEMORY[0x1E69E9840];
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_185B6BB60;
  v1 = sub_185B67E1C();
  v2 = sub_185ADF590(0, &qword_1EA8CD098, 0x1E696AEC0);
  *(v0 + 56) = v2;
  v3 = sub_185B54014(&qword_1EA8CD668, &qword_1EA8CD098, 0x1E696AEC0);
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  v4 = sub_185B67E1C();
  *(v0 + 96) = v2;
  *(v0 + 104) = v3;
  *(v0 + 72) = v4;
  v5 = sub_185B6804C();
  v6 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v7 = sub_185B67E1C();
  v8 = [v6 initWithEntityName_];

  [v8 setPredicate_];
  v22[0] = 0;
  v9 = [v8 execute_];
  v10 = v22[0];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for DataAccess();
    v12 = sub_185B67F6C();
    v13 = v10;

    if (v12 >> 62)
    {
      v14 = sub_185B6844C();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v14 >= 1)
    {
      if (v14 == 1)
      {
        goto LABEL_10;
      }

      if (qword_1EA8CB718 != -1)
      {
        goto LABEL_24;
      }

      while (1)
      {
        v15 = sub_185B67B8C();
        __swift_project_value_buffer(v15, qword_1EA8D2278);
        v16 = sub_185B67B6C();
        v17 = sub_185B6809C();
        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          *v18 = 0;
          _os_log_impl(&dword_185AC1000, v16, v17, "multiple access records with same accessor and accessee!?", v18, 2u);
          MEMORY[0x1865FE2F0](v18, -1, -1);
        }

LABEL_10:
        if (v12 >> 62)
        {
          if (!sub_185B6844C())
          {
LABEL_19:

            goto LABEL_20;
          }
        }

        else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        if ((v12 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v19 = *(v12 + 32);
LABEL_15:

          goto LABEL_20;
        }

        __break(1u);
LABEL_24:
        swift_once();
      }

      MEMORY[0x1865FD3E0](0, v12);
      goto LABEL_15;
    }
  }

  else
  {
    v20 = v22[0];
    sub_185B6792C();

    swift_willThrow();
  }

LABEL_20:
  v21 = *MEMORY[0x1E69E9840];
}

void sub_185B53C3C(uint64_t a1, uint64_t a2, void *a3)
{
  v38 = a2;
  v42 = *MEMORY[0x1E69E9840];
  v5 = sub_185B6794C();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v11 = sub_185B67E1C();
  v12 = [v10 initWithEntityName_];

  v40[0] = 0;
  v13 = [v12 execute_];
  if (v13)
  {
    v14 = v13;
    v15 = v40[0];
    v34 = v14;
    sub_185B6823C();
    sub_185B6793C();
    if (v41)
    {
      type metadata accessor for DataAccess();
      v37 = v12;
      do
      {
        if (swift_dynamicCast())
        {
          v16 = v39;
          v17 = [v39 accessed_bundle_id];
          if (v17)
          {
            v18 = v17;
            v19 = sub_185B67E4C();
            v21 = v20;

            if (v19 == a1 && v21 == v38)
            {
LABEL_20:
              v12 = v37;

LABEL_21:
              v31 = v16;
              MEMORY[0x1865FCFA0]();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_185B67F8C();
              }

              sub_185B67FAC();

              goto LABEL_5;
            }

            v23 = sub_185B6859C();

            v12 = v37;
            if (v23)
            {
              goto LABEL_21;
            }
          }

          v24 = [v16 accessor_bundle_id];
          if (v24)
          {
            v25 = v24;
            v26 = sub_185B67E4C();
            v28 = v27;

            if (v26 == a1 && v28 == v38)
            {
              goto LABEL_20;
            }

            v30 = sub_185B6859C();

            v12 = v37;
            if (v30)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_5:
        sub_185B6793C();
      }

      while (v41);
    }

    (*(v35 + 8))(v9, v36);
  }

  else
  {
    v32 = v40[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v33 = *MEMORY[0x1E69E9840];
}

uint64_t sub_185B54014(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_185ADF590(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_185B54098()
{
  result = qword_1EA8CD670;
  if (!qword_1EA8CD670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD648, &qword_185B6EE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD670);
  }

  return result;
}

void *sub_185B540FC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v6, *(v1 + 32));
  if (!v2)
  {
    *a1 = v6;
  }

  return result;
}

void *sub_185B54148@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 24);
  result = (*(v1 + 16))(&v7, *(v1 + 32));
  if (!v2)
  {
    v6 = v7;
    *(a1 + 2) = BYTE2(v7);
    *a1 = v6;
  }

  return result;
}

id sub_185B5419C(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v3 = sub_185B67E1C();
  v4 = [v2 initWithEntityName_];

  [v4 setPredicate_];
  v12[0] = 0;
  v5 = [v4 execute_];
  v6 = v12[0];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for PreferenceSetting();
    v8 = sub_185B67F6C();
    v9 = v6;
  }

  else
  {
    v8 = v12[0];
    sub_185B6792C();

    swift_willThrow();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t sub_185B542E4(uint64_t a1, uint64_t a2)
{
  sub_185ADF590(0, &qword_1EA8CB680, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD3A0, &unk_185B6EE50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_185B6BB70;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_185B06CBC();
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;

  v6 = sub_185B6804C();
  v7 = sub_185B5419C(v6);

  if (v2)
  {
    return v6;
  }

  if (!(v7 >> 62))
  {
    result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  result = sub_185B6844C();
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x1865FD3E0](0, v7);
    goto LABEL_7;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 4);
LABEL_7:
    v6 = v9;

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_185B54460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B544C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_185B54528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AuthAssertion();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_185B5458C(void *a1)
{
  if (*(v1 + 42))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v1 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_185B4BC08(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v3 | *(v1 + 40) | v2, *(v1 + 48));
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for APAppPreferences(unsigned __int16 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for APAppPreferences(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_185B54710(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, unsigned __int8 a3)
{
  v4 = a3;
  if (a3 == 2)
  {
    return (v4 == 2);
  }

  v6 = a3 & 1;
  result = a1(&v7, &v6);
  if (!v3)
  {
    return (v4 == 2);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B54770(uint64_t a1)
{
  sub_185B6866C();
  v3 = *v1;
  v4 = v1[1];
  sub_185B67EEC();
  v5 = v1[2];
  v6 = v1[3];
  sub_185B67EEC();
  v7 = *(a1 + 24);
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

uint64_t sub_185B54828(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_185B67EEC();
  v6 = v2[2];
  v7 = v2[3];
  sub_185B67EEC();
  v8 = *(a2 + 24);
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  return sub_185B67DBC();
}

uint64_t sub_185B548C4(uint64_t a1, uint64_t a2)
{
  sub_185B6866C();
  v4 = *v2;
  v5 = v2[1];
  sub_185B67EEC();
  v6 = v2[2];
  v7 = v2[3];
  sub_185B67EEC();
  v8 = *(a2 + 24);
  sub_185B67AFC();
  sub_185B5726C(&qword_1EA8CD490, 255, MEMORY[0x1E69695A8]);
  sub_185B67DBC();
  return sub_185B686AC();
}

id sub_185B54978()
{
  result = APGetViewSubjectMonitorServiceInterface();
  qword_1EA8D2370 = result;
  return result;
}

void sub_185B549A0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v72 = a1;
  v67 = type metadata accessor for ViewSubjectMonitorPair();
  v70 = *(v67 - 8);
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v67, v6);
  v8 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_185B67AFC();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v13 = MEMORY[0x1EEE9AC00](v9, v12);
  v64 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v61 - v16;
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v18 = sub_185B67B8C();
  v19 = __swift_project_value_buffer(v18, qword_1EA8D2278);
  v20 = v10[2];
  v65 = v10 + 2;
  v20(v17, a3, v9);

  v63 = v19;
  v21 = sub_185B67B6C();
  v22 = sub_185B680AC();

  v23 = os_log_type_enabled(v21, v22);
  v68 = a2;
  v69 = v8;
  v66 = v10;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v61 = v20;
    v26 = v25;
    v73[0] = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_185ACB2C4(v72, a2, v73);
    *(v24 + 12) = 2082;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v27 = sub_185B6856C();
    v28 = a3;
    v30 = v29;
    v62 = v10[1];
    v62(v17, v9);
    v31 = sub_185ACB2C4(v27, v30, v73);
    a3 = v28;

    *(v24 + 14) = v31;
    _os_log_impl(&dword_185AC1000, v21, v22, "server begin monitoring viewSubject %{public}s monitor %{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v32 = v26;
    v20 = v61;
    MEMORY[0x1865FE2F0](v32, -1, -1);
    MEMORY[0x1865FE2F0](v24, -1, -1);
  }

  else
  {

    v62 = v10[1];
    v62(v17, v9);
  }

  v61 = 0x8000000185B75730;
  v33 = v64;
  v20(v64, a3, v9);
  v34 = sub_185B67B6C();
  v35 = sub_185B680AC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v73[0] = v37;
    *v36 = 136315394;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v38 = sub_185B6856C();
    v39 = v33;
    v40 = v20;
    v41 = a3;
    v43 = v42;
    v62(v39, v9);
    v44 = sub_185ACB2C4(v38, v43, v73);
    a3 = v41;
    v20 = v40;

    *(v36 + 4) = v44;
    *(v36 + 12) = 2080;
    v45 = v61;
    *(v36 + 14) = sub_185ACB2C4(0xD000000000000013, v61, v73);
    _os_log_impl(&dword_185AC1000, v34, v35, "monitor %s is a monitor for %s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865FE2F0](v37, -1, -1);
    MEMORY[0x1865FE2F0](v36, -1, -1);

    v46 = v69;
  }

  else
  {

    v62(v33, v9);
    v46 = v69;
    v45 = v61;
  }

  v20(&v46[*(v67 + 24)], a3, v9);
  *v46 = 0xD000000000000013;
  *(v46 + 1) = v45;
  v47 = v71;
  v48 = v68;
  *(v46 + 2) = v72;
  *(v46 + 3) = v48;
  v49 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
  swift_beginAccess();
  v50 = *(v47 + v49);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + v49) = v50;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v50 = sub_185B3D0A0(0, v50[2] + 1, 1, v50);
    *(v47 + v49) = v50;
  }

  v53 = v50[2];
  v52 = v50[3];
  if (v53 >= v52 >> 1)
  {
    v50 = sub_185B3D0A0(v52 > 1, v53 + 1, 1, v50);
  }

  v50[2] = v53 + 1;
  sub_185B572B4(v46, v50 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53);
  *(v47 + v49) = v50;
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v73);
    swift_unknownObjectRelease();
    v55 = v74;
    v56 = v75;
    __swift_project_boxed_opaque_existential_1(v73, v74);
    v57 = (*(v56 + 24))(v55, v56);
    sub_185AC3A7C(0xD000000000000013, v45, v57);

    v58 = __swift_destroy_boxed_opaque_existential_0Tm(v73);
    MEMORY[0x1EEE9AC00](v58, v59);
    *(&v61 - 2) = v47;
    *(&v61 - 1) = a3;
    v76[0] = v60;
    sub_185B57318(v76);
  }
}

uint64_t sub_185B551EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v10 = sub_185B67B8C();
  __swift_project_value_buffer(v10, qword_1EA8D2278);
  (*(v5 + 16))(v9, a1, v4);
  v11 = sub_185B67B6C();
  v12 = sub_185B680AC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    sub_185B5726C(&qword_1ED6F4640, 255, MEMORY[0x1E69695A8]);
    v16 = sub_185B6856C();
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_185ACB2C4(v16, v18, &v28);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_185AC1000, v11, v12, "server end monitoring %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x1865FE2F0](v15, -1, -1);
    v20 = v14;
    a1 = v27;
    MEMORY[0x1865FE2F0](v20, -1, -1);
  }

  else
  {

    v21 = (*(v5 + 8))(v9, v4);
  }

  MEMORY[0x1EEE9AC00](v21, v22);
  *(&v26 - 2) = a1;
  v23 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
  swift_beginAccess();
  result = sub_185B56384(sub_185B56B64, (&v26 - 4), type metadata accessor for ViewSubjectMonitorPair, type metadata accessor for ViewSubjectMonitorPair, type metadata accessor for ViewSubjectMonitorPair, sub_185B5695C);
  v25 = *(*(v2 + v23) + 16);
  if (v25 < result)
  {
    __break(1u);
  }

  else
  {
    sub_185B56C1C(result, v25, sub_185B3D0A0, type metadata accessor for ViewSubjectMonitorPair, sub_185B57120);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_185B5565C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ViewSubjectMonitorPair();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v11 = (&v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v9, v12);
  v15 = (&v58 - v14);
  if ((*a1 & 6) != 0)
  {
    v70 = *(a1 + 8);
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v16 = result;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_185ADF8F0(Strong + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v71);
        swift_unknownObjectRelease();
        v18 = v72;
        v19 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        v69 = (*(v19 + 32))(v18, v19);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
      }

      else
      {
        v69 = MEMORY[0x1E69E7CD0];
      }

      v20 = OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations;
      swift_beginAccess();
      v21 = *&v16[v20];
      v66 = *(v21 + 16);
      if (v66)
      {
        v59 = v16;
        v64 = v21 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v67 = v69 + 7;
        v68 = v70 + 7;

        v22 = 0;
        *&v23 = 136315394;
        v60 = v23;
        v62 = a3;
        v61 = v5;
        v65 = v21;
        while (1)
        {
          if (v22 >= *(v21 + 16))
          {
            __break(1u);
            return result;
          }

          sub_185B5737C(v64 + *(v6 + 72) * v22, v15, type metadata accessor for ViewSubjectMonitorPair);
          if (!v70)
          {
            goto LABEL_23;
          }

          if (v70[2])
          {
            v27 = *v15;
            v26 = v15[1];
            v28 = v70;
            v29 = v70[5];
            sub_185B6866C();
            sub_185B67EEC();
            v30 = sub_185B686AC();
            v31 = -1 << *(v28 + 32);
            v32 = v30 & ~v31;
            if ((*(v68 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32))
            {
              break;
            }
          }

LABEL_10:
          ++v22;
          result = sub_185B573E4(v15, type metadata accessor for ViewSubjectMonitorPair);
          v21 = v65;
          if (v22 == v66)
          {
          }
        }

        v33 = ~v31;
        while (1)
        {
          v34 = (v70[6] + 16 * v32);
          v35 = *v34 == v27 && v34[1] == v26;
          if (v35 || (sub_185B6859C() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v68 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        if (!v69[2])
        {
          goto LABEL_32;
        }

LABEL_23:
        v36 = *v15;
        v37 = v15[1];
        v38 = v69;
        v39 = v69[5];
        sub_185B6866C();
        sub_185B67EEC();
        v40 = sub_185B686AC();
        v41 = -1 << *(v38 + 32);
        v42 = v40 & ~v41;
        if ((*(v67 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
        {
          v43 = ~v41;
          while (1)
          {
            v44 = (v69[6] + 16 * v42);
            v45 = *v44 == v36 && v44[1] == v37;
            if (v45 || (sub_185B6859C() & 1) != 0)
            {
              break;
            }

            v42 = (v42 + 1) & v43;
            if (((*(v67 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
            {
              goto LABEL_32;
            }
          }

          v46 = 1;
        }

        else
        {
LABEL_32:
          v46 = 0;
        }

        if (qword_1EA8CB718 != -1)
        {
          swift_once();
        }

        v47 = sub_185B67B8C();
        __swift_project_value_buffer(v47, qword_1EA8D2278);
        sub_185B5737C(v15, v11, type metadata accessor for ViewSubjectMonitorPair);
        v48 = sub_185B67B6C();
        v49 = sub_185B680AC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v71[0] = v51;
          *v50 = v60;
          v63 = v46;
          v52 = v15;
          v53 = v6;
          v54 = *v11;
          v55 = v11[1];

          sub_185B573E4(v11, type metadata accessor for ViewSubjectMonitorPair);
          v56 = sub_185ACB2C4(v54, v55, v71);
          v6 = v53;
          v15 = v52;
          v46 = v63;

          *(v50 + 4) = v56;
          v5 = v61;
          *(v50 + 12) = 1024;
          *(v50 + 14) = v46;
          _os_log_impl(&dword_185AC1000, v48, v49, "monitor for %s is potentially affected, locked: %{BOOL}d", v50, 0x12u);
          __swift_destroy_boxed_opaque_existential_0Tm(v51);
          v57 = v51;
          a3 = v62;
          MEMORY[0x1865FE2F0](v57, -1, -1);
          MEMORY[0x1865FE2F0](v50, -1, -1);
        }

        else
        {

          sub_185B573E4(v11, type metadata accessor for ViewSubjectMonitorPair);
        }

        v24 = v15 + *(v5 + 24);
        v25 = sub_185B67ABC();
        [a3 viewSubjectMonitorWithUUID:v25 lockedStatusUpdate:v46];

        goto LABEL_10;
      }
    }
  }

  return result;
}

id sub_185B55D54()
{
  if (qword_1EA8CC3F8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA8D2370;

  return v0;
}

id sub_185B55DF8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for ViewSubjectMonitorPair()
{
  result = qword_1EA8CD740;
  if (!qword_1EA8CD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_185B55F88(void *a1)
{
  v2 = APGetClientViewSubjectMonitorInterface();
  [a1 setRemoteObjectInterface_];
}

uint64_t sub_185B55FE8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for APViewSubjectMonitorService();
  v5 = objc_allocWithZone(v4);
  sub_185ADF8F0(a1, v5 + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v6;
  return result;
}

char *sub_185B56064(void *a1)
{
  v2 = *v1;
  v3 = [a1 remoteObjectProxy];
  sub_185B682AC();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD758, &qword_185B6F118);
  swift_dynamicCast();
  v4 = objc_allocWithZone(type metadata accessor for APViewSubjectMonitorClient());
  return sub_185B56970(v2, v6, v4);
}

uint64_t sub_185B56110(uint64_t a1, uint64_t a2)
{
  result = sub_185B5726C(&qword_1EA8CB988, a2, type metadata accessor for APViewSubjectMonitorClient);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_185B56168(uint64_t (*a1)(_BYTE *))
{
  v4 = *v2;
  v5 = (*v2 + 2);
  v6 = *v5;
  if (*v5)
  {
    v1 = 0;
    for (i = 6; ; i += 2)
    {
      result = a1(&v4[i - 2]);
      if (v3)
      {
        break;
      }

      if (result)
      {
        v16 = v2;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_32:
          __break(1u);
          return result;
        }

        v11 = *v5;
        while (v10 != v11)
        {
          if (v10 >= v11)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            goto LABEL_32;
          }

          sub_185AE7A7C(&v4[i], v15);
          v12 = a1(v15);
          result = sub_185AE7AD8(v15);
          if ((v12 & 1) == 0)
          {
            if (v10 != v1)
            {
              if ((v1 & 0x8000000000000000) != 0)
              {
                goto LABEL_28;
              }

              v13 = *v5;
              if (v1 >= *v5)
              {
                goto LABEL_29;
              }

              result = sub_185AE7A7C(&v4[2 * v1 + 4], v15);
              if (v10 >= v13)
              {
                goto LABEL_30;
              }

              sub_185AE7A7C(&v4[i], v14);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v4 = sub_185B568D0(v4);
              }

              result = sub_185B1F650(v14, &v4[2 * v1 + 4]);
              if (v10 >= v4[2])
              {
                goto LABEL_31;
              }

              result = sub_185B1F650(v15, &v4[i]);
              *v16 = v4;
            }

            ++v1;
          }

          ++v10;
          v5 = (v4 + 2);
          v11 = v4[2];
          i += 2;
        }

        return v1;
      }

      if (v6 == ++v1)
      {
        return *v5;
      }
    }
  }

  else if (!v3)
  {
    return *v5;
  }

  return v1;
}

uint64_t sub_185B56384(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t))
{
  v52 = a6;
  v61 = a5;
  v11 = a3(0);
  v59 = *(v11 - 8);
  v12 = *(v59 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11 - 8, v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v14, v17);
  v20 = &v49 - v19;
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v49 - v22;
  v24 = *v6;
  result = sub_185B56684(a1, a2, *v6, a4);
  if (!v7)
  {
    v58 = v23;
    v53 = v20;
    v51 = v16;
    if (v26)
    {
      return *(v24 + 16);
    }

    v54 = a1;
    v55 = a2;
    v50 = v6;
    v60 = result;
    v27 = result + 1;
    if (__OFADD__(result, 1))
    {
LABEL_27:
      __break(1u);
      return result;
    }

    for (i = v24; ; v24 = i)
    {
      v31 = *(v24 + 16);
      v30 = (v24 + 16);
      v29 = v31;
      if (v27 == v31)
      {
        break;
      }

      if (v27 >= v29)
      {
        __break(1u);
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

      v32 = i;
      v56 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v33 = i + v56;
      v34 = *(v59 + 72);
      v57 = v34 * v27;
      v35 = i + v56 + v34 * v27;
      v36 = v58;
      v37 = v61;
      sub_185B5737C(v35, v58, v61);
      v38 = v54(v36);
      result = sub_185B573E4(v36, v37);
      if (v38)
      {
        i = v32;
      }

      else
      {
        v39 = v60;
        i = v32;
        if (v27 != v60)
        {
          if ((v60 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v40 = *v30;
          if (v60 >= v40)
          {
            goto LABEL_24;
          }

          v41 = v34 * v60;
          v42 = v33 + v34 * v60;
          v43 = v61;
          result = sub_185B5737C(v42, v53, v61);
          if (v27 >= v40)
          {
            goto LABEL_25;
          }

          v44 = v57;
          v45 = v51;
          sub_185B5737C(v33 + v57, v51, v43);
          v46 = v43;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            i = v52(i);
          }

          v47 = v53;
          v48 = i + v56;
          result = sub_185B57444(v45, i + v56 + v41, v46);
          if (v27 >= *(i + 16))
          {
            goto LABEL_26;
          }

          result = sub_185B57444(v47, v48 + v44, v46);
          *v50 = i;
          v39 = v60;
        }

        v60 = v39 + 1;
      }

      ++v27;
    }

    return v60;
  }

  return result;
}

uint64_t sub_185B56684(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = *(a3 + 16);
  if (!v5)
  {
    return 0;
  }

  v8 = 0;
  v9 = *(a4(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    v12 = a1(v10);
    if (v4 || (v12 & 1) != 0)
    {
      break;
    }

    ++v8;
    v10 += v11;
    if (v5 == v8)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_185B56774(uint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v3 & 0x8000000000000000) != 0) || (v3 & 0x4000000000000000) != 0 || a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v3 >> 62)
    {
      sub_185B6844C();
    }

    else
    {
      v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = sub_185B6839C();
    *v1 = result;
  }

  return result;
}

uint64_t sub_185B56830(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_185B6844C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_185B6839C();
  *v1 = result;
  return result;
}

uint64_t sub_185B568E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_185B6844C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_185B6839C();
}

char *sub_185B56970(void *a1, uint64_t a2, char *a3)
{
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_changeEventsSubscription] = 0;
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_delegate + 8] = 0;
  v6 = swift_unknownObjectWeakInit();
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_monitorAssociations] = MEMORY[0x1E69E7CC0];
  *(v6 + 8) = &off_1EF46BF08;
  swift_unknownObjectWeakAssign();
  *&a3[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_remoteMonitor] = a2;
  v21.receiver = a3;
  v21.super_class = type metadata accessor for APViewSubjectMonitorClient();
  swift_unknownObjectRetain();
  v7 = objc_msgSendSuper2(&v21, sel_init);
  sub_185ADF8F0(a1 + OBJC_IVAR____TtC13AppProtection27APViewSubjectMonitorService_policy, v18);
  v8 = v19;
  v9 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v10 = *(v9 + 8);
  v11 = v7;
  v10(v17, v8, v9);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = a2;
  swift_unknownObjectRetain();
  v14 = sub_185B67C7C();

  swift_unknownObjectRelease();
  v15 = *&v11[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_changeEventsSubscription];
  *&v11[OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_changeEventsSubscription] = v14;

  __swift_destroy_boxed_opaque_existential_0Tm(v17);
  __swift_destroy_boxed_opaque_existential_0Tm(v18);
  return v11;
}

uint64_t sub_185B56B64()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for ViewSubjectMonitorPair() + 24);
  return sub_185B67ACC() & 1;
}

uint64_t sub_185B56C1C(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v15 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = a5(v9, a2, 0, a4);
  *v5 = v7;
  return result;
}

unint64_t sub_185B56D38(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = *(v7 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_19;
  }

  result = v8 + 16 * a3;
  v12 = v7 + 32 + 16 * a2;
  if (result < v12 || result >= v12 + 16 * (v11 - a2))
  {
    result = swift_arrayInitWithTakeFrontToBack();
  }

  else if (result != v12)
  {
    result = swift_arrayInitWithTakeBackToFront();
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_20;
  }

  *(v7 + 16) = v15;
LABEL_15:
  if (a3 > 0)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_185B56EA0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v8 = a3;
    v6 = a2;
    v7 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_185B6844C();
  if (result < v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v6, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v7 - v6;
  if (__OFSUB__(0, v6 - v7))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = sub_185B6844C();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    v8(result, 1);
    return sub_185B56FB0(v7, v6, 0, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_185B56FB0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_185B6844C();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = sub_185B6844C();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_185B57120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  result = a4(0);
  v11 = *(*(result - 8) + 72);
  v12 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(*(result - 8) + 80);
  v13 = v8 + ((v10 + 32) & ~v10);
  v14 = v13 + v11 * a1;
  result = swift_arrayDestroy();
  v15 = a3 - v12;
  if (__OFSUB__(a3, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v16 = v11 * a3;
  if (v15)
  {
    v17 = *(v8 + 16);
    if (!__OFSUB__(v17, a2))
    {
      result = v14 + v16;
      v18 = v13 + v11 * a2;
      if (v14 + v16 < v18 || result >= v18 + (v17 - a2) * v11)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v18)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v20 = *(v8 + 16);
      v21 = __OFADD__(v20, v15);
      v22 = v20 + v15;
      if (!v21)
      {
        *(v8 + 16) = v22;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v16 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_185B5726C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_185B572B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewSubjectMonitorPair();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_185B57318(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = *(v2 + OBJC_IVAR____TtC13AppProtection26APViewSubjectMonitorClient_remoteMonitor);
  v6 = sub_185B67ABC();
  [v5 viewSubjectMonitorWithUUID:v6 lockedStatusUpdate:v4];
}

uint64_t sub_185B5737C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B573E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_185B57444(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

id sub_185B57550(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id APStateDump.init(coder:)(void *a1)
{
  v2 = v1;
  sub_185ADF590(0, &qword_1EA8CD760, off_1E6EE8370);
  v4 = sub_185B6824C();
  if (v4)
  {
    v5 = OBJC_IVAR___APStateDump_clientState;
    *&v1[OBJC_IVAR___APStateDump_clientState] = v4;
    v6 = v4;
    sub_185ADF590(0, &qword_1EA8CD770, 0x1E695DEF0);
    v7 = v6;
    v8 = sub_185B6824C();
    if (v8)
    {
      v9 = v8;
      v29 = v7;
      v10 = sub_185B678DC();
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      sub_185B678CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD780, &qword_185B6F120);
      v13 = sub_185B67A5C();
      v15 = v14;
      sub_185B5A08C(&qword_1EA8CD788, &qword_1EA8CD790);
      sub_185B678BC();

      sub_185AE2FC8(v13, v15);

      *&v2[OBJC_IVAR___APStateDump_extantAccesses] = v31;
      v18 = sub_185B6824C();
      if (v18)
      {
        v19 = v18;
        v20 = *(v10 + 48);
        v21 = *(v10 + 52);
        swift_allocObject();
        sub_185B678CC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD798, &qword_185B6F128);
        v22 = sub_185B67A5C();
        v24 = v23;
        sub_185B57A68();
        sub_185B678BC();

        sub_185AE2FC8(v22, v24);

        *&v2[OBJC_IVAR___APStateDump_authAssertions] = v31;
        v26 = sub_185B67E1C();
        v27 = [a1 decodeBoolForKey_];

        v2[OBJC_IVAR___APStateDump_dtoEnabled] = v27;
        v30.receiver = v2;
        v30.super_class = APStateDump;
        v28 = objc_msgSendSuper2(&v30, sel_init);

        return v28;
      }

      v25 = *&v2[OBJC_IVAR___APStateDump_extantAccesses];
    }

    else
    {
    }
  }

  else
  {
  }

  type metadata accessor for APStateDump(v16);
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_185B57A68()
{
  result = qword_1EA8CD7A0;
  if (!qword_1EA8CD7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD798, &qword_185B6F128);
    sub_185B57B54(&qword_1EA8CBFD8, MEMORY[0x1E69695A8]);
    sub_185B57B54(&qword_1EA8CD7B0, type metadata accessor for AuthAssertion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD7A0);
  }

  return result;
}

uint64_t sub_185B57B54(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_185B57BC4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___APStateDump_clientState);
  v5 = sub_185B67E1C();
  [a1 encodeObject:v4 forKey:v5];

  v6 = sub_185B6790C();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_185B678FC();
  v23 = *(v2 + OBJC_IVAR___APStateDump_extantAccesses);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD780, &qword_185B6F120);
  sub_185B5A08C(&unk_1EA8CB6B8, qword_1EA8CBC40);
  v9 = sub_185B678EC();
  v11 = v10;

  v12 = sub_185B67A4C();
  sub_185AE2FC8(v9, v11);
  v13 = sub_185B67E1C();
  [a1 encodeObject:v12 forKey:v13];

  v14 = *(v6 + 48);
  v15 = *(v6 + 52);
  swift_allocObject();
  sub_185B678FC();
  v24 = *(v2 + OBJC_IVAR___APStateDump_authAssertions);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD798, &qword_185B6F128);
  sub_185B5A128();
  v16 = sub_185B678EC();
  v18 = v17;

  v19 = sub_185B67A4C();
  sub_185AE2FC8(v16, v18);
  v20 = sub_185B67E1C();
  [a1 encodeObject:v19 forKey:v20];

  v21 = *(v2 + OBJC_IVAR___APStateDump_dtoEnabled);
  v22 = sub_185B67E1C();
  [a1 encodeBool:v21 forKey:v22];
}

uint64_t sub_185B57F4C()
{
  v2 = sub_185B6777C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v6 = sub_185B677BC();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_185B677AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD8B8, &qword_185B6F168);
  v9 = *(v3 + 72);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_185B6BB60;
  sub_185B6775C();
  sub_185B6776C();
  sub_185B57B54(&unk_1EA8CC010, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD8C8, &qword_185B6F170);
  sub_185B59F80();
  sub_185B682CC();
  sub_185B6778C();
  sub_185B59FE4();
  v11 = v0;
  v12 = sub_185B6779C();
  if (v1)
  {

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v14 = v12;
    v15 = v13;

    sub_185B5A038();
    sub_185B6805C();

    return sub_185AE2FC8(v14, v15);
  }

  return result;
}

uint64_t sub_185B58314()
{
  v1 = *v0;
  v2 = 0x704164656B636F6CLL;
  v3 = 0x6341746E61747865;
  v4 = 0x6573734168747561;
  if (v1 != 4)
  {
    v4 = 0x6C62616E456F7464;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x70416E6564646968;
  if (v1 != 1)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_185B583EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_185B59780(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_185B58420(uint64_t a1)
{
  v2 = sub_185B5A264();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B5845C(uint64_t a1)
{
  v2 = sub_185B5A264();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B58498()
{
  v1 = *v0;
  v2 = 0x6565737365636361;
  v3 = 1701869940;
  v4 = 6580592;
  if (v1 != 3)
  {
    v4 = 1684632949;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F737365636361;
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

uint64_t sub_185B5851C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_185B599A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_185B58544(uint64_t a1)
{
  v2 = sub_185B5A9D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B58580(uint64_t a1)
{
  v2 = sub_185B5A9D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B585BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD990, &unk_185B6F3F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &atoken - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5A9D0();
  sub_185B686FC();
  v12 = v3[2];
  v13 = v3[3];
  LOBYTE(atoken.val[0]) = 0;
  sub_185B684EC();
  if (!v2)
  {
    v14 = *v3;
    v15 = v3[1];
    LOBYTE(atoken.val[0]) = 1;
    sub_185B684EC();
    v16 = *(v3 + 32);
    v21 = 2;
    sub_185B6852C();
    v17 = *(v3 + 52);
    *atoken.val = *(v3 + 36);
    *&atoken.val[4] = v17;
    audit_token_to_pid(&atoken);
    LOBYTE(atoken.val[0]) = 3;
    sub_185B6853C();
    v18 = *(type metadata accessor for DataAccessRecord() + 32);
    LOBYTE(atoken.val[0]) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B5AA24();
    sub_185B6851C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_185B58824(uint64_t a1)
{
  v2 = sub_185B5AAD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_185B58860(uint64_t a1)
{
  v2 = sub_185B5AAD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_185B5889C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD9B0, &qword_185B6F408);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5AAD8();
  sub_185B686FC();
  v12 = *v3;
  v13 = v3[1];
  v17[15] = 0;
  sub_185B684EC();
  if (!v2)
  {
    v15 = *(v3 + 4);
    v17[14] = 1;
    sub_185B6853C();
    v16 = *(type metadata accessor for AuthAssertion() + 24);
    v17[13] = 2;
    sub_185B67A8C();
    sub_185B57B54(&qword_1EA8CD9C0, MEMORY[0x1E6969530]);
    sub_185B6851C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_185B58AD0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper(0);
  v96 = *(v6 - 8);
  v7 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v95 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AuthAssertion();
  v94 = *(v10 - 8);
  v11 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8, v12);
  v93 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_185B67AFC();
  v97 = *(v92 - 8);
  v14 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v92, v15);
  v91 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper(0);
  v89 = *(v17 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD8F0, &qword_185B6F1E8);
  v98 = *(v22 - 8);
  v99 = v22;
  v23 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v82 - v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_185B5A264();
  sub_185B686FC();
  v90 = a2;
  v28 = *(a2 + OBJC_IVAR___APStateDump_clientState);
  v29 = [v28 lockedAppBundleIdentifiers];
  v30 = sub_185B67FDC();

  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = sub_185B2D0B0(*(v30 + 16), 0);
    v33 = sub_185B2D310(&v100, v32 + 4, v31, v30);
    sub_185AF36FC();
    if (v33 == v31)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v100 = v32;
  v101 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC840, &qword_185B6F1F0);
  sub_185B5A2B8();
  v34 = v99;
  sub_185B6851C();
  if (v2)
  {

    return (*(v98 + 8))(v26, v34);
  }

  v35 = [v28 hiddenAppBundleIdentifiers];
  v36 = sub_185B67FDC();

  v37 = *(v36 + 16);
  if (v37)
  {
    v38 = sub_185B2D0B0(*(v36 + 16), 0);
    v39 = sub_185B2D310(&v100, v38 + 4, v37, v36);
    sub_185AF36FC();
    if (v39 == v37)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v100 = v38;
  v101 = 1;
  sub_185B6851C();

  v40 = [v28 effectivelyLockedAppBundleIdentifiers];
  v41 = sub_185B67FDC();

  v42 = *(v41 + 16);
  if (!v42)
  {
LABEL_13:

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v43 = sub_185B2D0B0(*(v41 + 16), 0);
  v44 = sub_185B2D310(&v100, v43 + 4, v42, v41);
  sub_185AF36FC();
  if (v44 != v42)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_14:
  v100 = v43;
  v101 = 2;
  sub_185B6851C();

  v46 = *(v90 + OBJC_IVAR___APStateDump_extantAccesses);
  v47 = *(v46 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    v88 = 0;
    v100 = MEMORY[0x1E69E7CC0];
    sub_185B4EA2C(0, v47, 0);
    v48 = v100;
    v49 = *(type metadata accessor for DataAccessRecord() - 8);
    v50 = v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v51 = *(v49 + 72);
    v52 = v89;
    do
    {
      sub_185B5A3E8(v50, v21, type metadata accessor for DataAccessRecord);
      v100 = v48;
      v54 = v48[2];
      v53 = v48[3];
      if (v54 >= v53 >> 1)
      {
        sub_185B4EA2C(v53 > 1, v54 + 1, 1);
        v52 = v89;
        v48 = v100;
      }

      v48[2] = v54 + 1;
      sub_185B5A450(v21, v48 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v54, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper);
      v50 += v51;
      --v47;
    }

    while (v47);
    v3 = v88;
  }

  v100 = v48;
  v101 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD910, &qword_185B6F1F8);
  sub_185B5A334();
  v55 = v99;
  sub_185B6851C();
  if (v3)
  {

    return (*(v98 + 8))(v26, v55);
  }

  v56 = *(v90 + OBJC_IVAR___APStateDump_authAssertions);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD928, &qword_185B6F200);
  result = sub_185B6845C();
  v57 = result;
  v58 = 0;
  v59 = v56 + 64;
  v60 = 1 << *(v56 + 32);
  v61 = -1;
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  v62 = v61 & *(v56 + 64);
  v63 = (v60 + 63) >> 6;
  v84 = v97 + 16;
  v85 = v56;
  v83 = result + 64;
  v82 = v97 + 32;
  v88 = 0;
  v86 = result;
  v64 = v97;
  if (!v62)
  {
LABEL_28:
    v66 = v58;
    while (1)
    {
      v58 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v58 >= v63)
      {
        break;
      }

      v67 = *(v59 + 8 * v58);
      ++v66;
      if (v67)
      {
        v65 = __clz(__rbit64(v67));
        v87 = (v67 - 1) & v67;
        goto LABEL_33;
      }
    }

    v100 = v57;
    v101 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD930, &qword_185B6F208);
    sub_185B5A4B8();
    v55 = v99;
    sub_185B6851C();

    if (!v3)
    {
      v81 = *(v90 + OBJC_IVAR___APStateDump_dtoEnabled);
      LOBYTE(v100) = 5;
      sub_185B684FC();
    }

    return (*(v98 + 8))(v26, v55);
  }

  while (1)
  {
    v65 = __clz(__rbit64(v62));
    v87 = (v62 - 1) & v62;
LABEL_33:
    v68 = v65 | (v58 << 6);
    v69 = v85;
    v70 = *(v85 + 48);
    v89 = *(v64 + 72) * v68;
    v72 = v91;
    v71 = v92;
    (*(v64 + 16))(v91, v70 + v89, v92);
    v73 = *(v69 + 56);
    v74 = v93;
    sub_185B5A3E8(v73 + *(v94 + 72) * v68, v93, type metadata accessor for AuthAssertion);
    v75 = v74;
    v76 = v95;
    sub_185B5A450(v75, v95, type metadata accessor for AuthAssertion);
    *(v83 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
    v77 = v71;
    v57 = v86;
    (*(v64 + 32))(*(v86 + 48) + v89, v72, v77);
    result = sub_185B5A450(v76, *(v57 + 56) + *(v96 + 72) * v68, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper);
    v78 = *(v57 + 16);
    v79 = __OFADD__(v78, 1);
    v80 = v78 + 1;
    if (v79)
    {
      break;
    }

    *(v57 + 16) = v80;
    v62 = v87;
    v3 = v88;
    if (!v87)
    {
      goto LABEL_28;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

void sub_185B59564(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a1;
  v9 = a1;

  swift_beginAccess();
  v10 = *(a4 + 16);
  *(a4 + 16) = a2;
  v11 = a2;
}

id _sSo11APStateDumpC13AppProtectionEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_185B59780(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704164656B636F6CLL && a2 == 0xEA00000000007370;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70416E6564646968 && a2 == 0xEA00000000007370 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000185B78690 == a2 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6341746E61747865 && a2 == 0xEE00736573736563 || (sub_185B6859C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573734168747561 && a2 == 0xEE00736E6F697472 || (sub_185B6859C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C62616E456F7464 && a2 == 0xEA00000000006465)
  {

    return 5;
  }

  else
  {
    v6 = sub_185B6859C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_185B599A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6565737365636361 && a2 == 0xE800000000000000;
  if (v4 || (sub_185B6859C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xE800000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6580592 && a2 == 0xE300000000000000 || (sub_185B6859C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_185B6859C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_185B59B50()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v11 = sub_185B12704;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B6657C;
  v10 = &block_descriptor_26;
  v1 = _Block_copy(&v7);

  v2 = APGetSyncMaintenanceProxy(v1);
  _Block_release(v1);
  v11 = sub_185B59F78;
  v12 = v0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_185B2AF84;
  v10 = &block_descriptor_29_0;
  v3 = _Block_copy(&v7);

  [v2 clearAccessTableWithCompletion_];
  _Block_release(v3);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (v4)
  {
    swift_willThrow();
    v5 = v4;
  }
}

uint64_t sub_185B59D20()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = (v0 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v17 = sub_185B12574;
  v18 = v0;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_185B6657C;
  v16 = &block_descriptor_22;
  v3 = _Block_copy(&aBlock);

  v4 = APGetSyncMaintenanceProxy(v3);
  _Block_release(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;
  v17 = sub_185B59F70;
  v18 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_185B0E6C8;
  v16 = &block_descriptor_22_3;
  v6 = _Block_copy(&aBlock);

  [v4 getStateDumpWithCompletion_];
  _Block_release(v6);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = v7;

    return v8;
  }

  else
  {
    result = swift_beginAccess();
    v10 = *v1;
    if (*v1)
    {
      v11 = *v1;
      swift_willThrow();
      v12 = v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

unint64_t sub_185B59F80()
{
  result = qword_1EA8CD8D0;
  if (!qword_1EA8CD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD8C8, &qword_185B6F170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8D0);
  }

  return result;
}

unint64_t sub_185B59FE4()
{
  result = qword_1EA8CD8D8;
  if (!qword_1EA8CD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8D8);
  }

  return result;
}

unint64_t sub_185B5A038()
{
  result = qword_1EA8CD8E0;
  if (!qword_1EA8CD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8E0);
  }

  return result;
}

uint64_t sub_185B5A08C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD780, &qword_185B6F120);
    sub_185B57B54(a2, type metadata accessor for DataAccessRecord);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_185B5A128()
{
  result = qword_1EA8CB6C8;
  if (!qword_1EA8CB6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD798, &qword_185B6F128);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8]);
    sub_185B57B54(&qword_1EA8CBDE8, type metadata accessor for AuthAssertion);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CB6C8);
  }

  return result;
}

unint64_t sub_185B5A264()
{
  result = qword_1EA8CD8F8;
  if (!qword_1EA8CD8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD8F8);
  }

  return result;
}

unint64_t sub_185B5A2B8()
{
  result = qword_1EA8CD908;
  if (!qword_1EA8CD908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CC840, &qword_185B6F1F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD908);
  }

  return result;
}

unint64_t sub_185B5A334()
{
  result = qword_1EA8CD918;
  if (!qword_1EA8CD918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD910, &qword_185B6F1F8);
    sub_185B57B54(&qword_1EA8CD920, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperDataAccessRecordEncodingWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD918);
  }

  return result;
}

uint64_t sub_185B5A3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_185B5A450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_185B5A4B8()
{
  result = qword_1EA8CD938;
  if (!qword_1EA8CD938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA8CD930, &qword_185B6F208);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8]);
    sub_185B57B54(&unk_1EA8CD940, type metadata accessor for APStateDumpEncodingWrapper.APStateDumpEncodingWrapperAuthAssertionWrapperEncodingWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD938);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APStateDumpEncodingWrapper.Keys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for APStateDumpEncodingWrapper.Keys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_185B5A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_185B5A8CC()
{
  result = qword_1EA8CD978;
  if (!qword_1EA8CD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD978);
  }

  return result;
}

unint64_t sub_185B5A924()
{
  result = qword_1EA8CD980;
  if (!qword_1EA8CD980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD980);
  }

  return result;
}

unint64_t sub_185B5A97C()
{
  result = qword_1EA8CD988;
  if (!qword_1EA8CD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD988);
  }

  return result;
}

unint64_t sub_185B5A9D0()
{
  result = qword_1EA8CD998;
  if (!qword_1EA8CD998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD998);
  }

  return result;
}

unint64_t sub_185B5AA24()
{
  result = qword_1EA8CCDC8;
  if (!qword_1EA8CCDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
    sub_185B57B54(&unk_1EA8CBFE0, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CCDC8);
  }

  return result;
}

unint64_t sub_185B5AAD8()
{
  result = qword_1EA8CD9B8;
  if (!qword_1EA8CD9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9B8);
  }

  return result;
}

unint64_t sub_185B5AB50()
{
  result = qword_1EA8CD9C8;
  if (!qword_1EA8CD9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9C8);
  }

  return result;
}

unint64_t sub_185B5ABA8()
{
  result = qword_1EA8CD9D0;
  if (!qword_1EA8CD9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9D0);
  }

  return result;
}

unint64_t sub_185B5AC00()
{
  result = qword_1EA8CD9D8;
  if (!qword_1EA8CD9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9D8);
  }

  return result;
}

unint64_t sub_185B5AC58()
{
  result = qword_1EA8CD9E0;
  if (!qword_1EA8CD9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9E0);
  }

  return result;
}

unint64_t sub_185B5ACB0()
{
  result = qword_1EA8CD9E8;
  if (!qword_1EA8CD9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9E8);
  }

  return result;
}

unint64_t sub_185B5AD08()
{
  result = qword_1EA8CD9F0;
  if (!qword_1EA8CD9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8CD9F0);
  }

  return result;
}

id sub_185B5AFC8(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

void __swiftcall APSubject.init()(APSubject *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id sub_185B5B14C(void *a1)
{
  v1[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  result = [a1 bundleIdentifier];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  v5 = sub_185B67E4C();
  v7 = v6;

  v8 = &v1[OBJC_IVAR___APExtension_bundleIdentifier];
  *v8 = v5;
  v8[1] = v7;
  result = [a1 uniqueIdentifier];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *&v1[OBJC_IVAR___APExtension_extensionUUIDStorage] = result;
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v44);
  v9 = v45;
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v37[1] = v37;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10, v10);
  v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v42 = &type metadata for ServerBackedClientArena;
  v43 = &off_1EF46CD08;
  v15 = swift_allocObject();
  v41[0] = v15;
  v16 = v13[9];
  v15[9] = v13[8];
  v15[10] = v16;
  v15[11] = v13[10];
  v17 = v13[5];
  v15[5] = v13[4];
  v15[6] = v17;
  v18 = v13[7];
  v15[7] = v13[6];
  v15[8] = v18;
  v19 = v13[1];
  v15[1] = *v13;
  v15[2] = v19;
  v20 = v13[3];
  v15[3] = v13[2];
  v15[4] = v20;
  v21 = type metadata accessor for ClientArenaWrapper();
  v22 = objc_allocWithZone(v21);
  v23 = v42;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v25 = *(v23[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v24, v24);
  v27 = (v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v40[3] = &type metadata for ServerBackedClientArena;
  v40[4] = &off_1EF46CD08;
  v29 = swift_allocObject();
  v40[0] = v29;
  v30 = v27[9];
  v29[9] = v27[8];
  v29[10] = v30;
  v29[11] = v27[10];
  v31 = v27[5];
  v29[5] = v27[4];
  v29[6] = v31;
  v32 = v27[7];
  v29[7] = v27[6];
  v29[8] = v32;
  v33 = v27[1];
  v29[1] = *v27;
  v29[2] = v33;
  v34 = v27[3];
  v29[3] = v27[2];
  v29[4] = v34;
  sub_185ADF8F0(v40, v22 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v39.receiver = v22;
  v39.super_class = v21;
  v35 = objc_msgSendSuper2(&v39, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v38.receiver = v1;
  v38.super_class = APExtension;
  v36 = objc_msgSendSuper2(&v38, sel_initWithArena_, v35);

  return v36;
}

id sub_185B5B4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v4[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  v6 = &v4[OBJC_IVAR___APExtension_bundleIdentifier];
  *v6 = a2;
  v6[1] = a3;
  *&v4[OBJC_IVAR___APExtension_extensionUUIDStorage] = sub_185B67ABC();
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v44);
  v7 = v45;
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v37[1] = v37;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8, v8);
  v11 = (v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v42 = &type metadata for ServerBackedClientArena;
  v43 = &off_1EF46CD08;
  v13 = swift_allocObject();
  v41[0] = v13;
  v14 = v11[9];
  v13[9] = v11[8];
  v13[10] = v14;
  v13[11] = v11[10];
  v15 = v11[5];
  v13[5] = v11[4];
  v13[6] = v15;
  v16 = v11[7];
  v13[7] = v11[6];
  v13[8] = v16;
  v17 = v11[1];
  v13[1] = *v11;
  v13[2] = v17;
  v18 = v11[3];
  v13[3] = v11[2];
  v13[4] = v18;
  v19 = type metadata accessor for ClientArenaWrapper();
  v20 = objc_allocWithZone(v19);
  v21 = v42;
  v22 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v23 = *(v21[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v22, v22);
  v25 = (v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25);
  v40[3] = &type metadata for ServerBackedClientArena;
  v40[4] = &off_1EF46CD08;
  v27 = swift_allocObject();
  v40[0] = v27;
  v28 = v25[9];
  v27[9] = v25[8];
  v27[10] = v28;
  v27[11] = v25[10];
  v29 = v25[5];
  v27[5] = v25[4];
  v27[6] = v29;
  v30 = v25[7];
  v27[7] = v25[6];
  v27[8] = v30;
  v31 = v25[1];
  v27[1] = *v25;
  v27[2] = v31;
  v32 = v25[3];
  v27[3] = v25[2];
  v27[4] = v32;
  sub_185ADF8F0(v40, v20 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v39.receiver = v20;
  v39.super_class = v19;
  v33 = objc_msgSendSuper2(&v39, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);
  __swift_destroy_boxed_opaque_existential_0Tm(v44);
  v38.receiver = v4;
  v38.super_class = APExtension;
  v34 = objc_msgSendSuper2(&v38, sel_initWithArena_, v33);

  v35 = sub_185B67AFC();
  (*(*(v35 - 8) + 8))(a1, v35);
  return v34;
}

id sub_185B5B900()
{
  v0 = sub_185B67AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v41 = (v6 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v50 = sub_185B12574;
  v51 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_185B6657C;
  v49 = &block_descriptor_90;
  v8 = _Block_copy(&aBlock);

  v9 = APGetSyncExtensionInfoProxy(v8);
  _Block_release(v8);
  v39 = *(v44 + OBJC_IVAR___APExtension_extensionUUIDStorage);
  sub_185B67ADC();
  v10 = sub_185B67ABC();
  v11 = *(v1 + 8);
  v42 = v5;
  v43 = v0;
  v40 = v1 + 8;
  v11(v5, v0);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  v50 = sub_185B5EA98;
  v51 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_185B0E6C8;
  v49 = &block_descriptor_96_0;
  v13 = _Block_copy(&aBlock);

  [v9 getExtensionIsLockedForUUID:v10 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = [v14 BOOLValue];
  }

  else
  {
    v38 = v11;
    v16 = v43;
    v17 = v44;
    v18 = v41;
    v19 = v42;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v20 = sub_185B67B8C();
    __swift_project_value_buffer(v20, qword_1ED6F5130);

    v21 = v17;
    v22 = sub_185B67B6C();
    v23 = sub_185B6808C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v24 = 136315394;
      v25 = v19;
      sub_185B67ADC();
      sub_185AE9C80();
      v26 = sub_185B6856C();
      v28 = v27;
      v38(v25, v16);
      v29 = sub_185ACB2C4(v26, v28, &v45);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      swift_beginAccess();
      if (*v18)
      {
        v30 = *v18;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v32 = v31;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v24 + 14) = v31;
      v33 = v37;
      *v37 = v32;
      _os_log_impl(&dword_185AC1000, v22, v23, "could not get locked value for extension %s: %@", v24, 0x16u);
      sub_185AC3F6C(v33);
      MEMORY[0x1865FE2F0](v33, -1, -1);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x1865FE2F0](v34, -1, -1);
      MEMORY[0x1865FE2F0](v24, -1, -1);
    }

    return 0;
  }

  return v15;
}

id _sSo11APExtensionC13AppProtectionE10firstPartySbvg_0()
{
  v0 = sub_185B67AFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v41 = (v6 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v50 = sub_185B12704;
  v51 = v6;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_185B6657C;
  v49 = &block_descriptor_79_0;
  v8 = _Block_copy(&aBlock);

  v9 = APGetSyncExtensionInfoProxy(v8);
  _Block_release(v8);
  v39 = *(v44 + OBJC_IVAR___APExtension_extensionUUIDStorage);
  sub_185B67ADC();
  v10 = sub_185B67ABC();
  v11 = *(v1 + 8);
  v42 = v5;
  v43 = v0;
  v40 = v1 + 8;
  v11(v5, v0);
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  v50 = sub_185B5EAEC;
  v51 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_185B0E6C8;
  v49 = &block_descriptor_85;
  v13 = _Block_copy(&aBlock);

  [v9 getExtensionIsFirstPartyForUUID:v10 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = [v14 BOOLValue];
  }

  else
  {
    v38 = v11;
    v16 = v43;
    v17 = v44;
    v18 = v41;
    v19 = v42;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v20 = sub_185B67B8C();
    __swift_project_value_buffer(v20, qword_1ED6F5130);

    v21 = v17;
    v22 = sub_185B67B6C();
    v23 = sub_185B6808C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = v44;
      *v24 = 136315394;
      v25 = v19;
      sub_185B67ADC();
      sub_185AE9C80();
      v26 = sub_185B6856C();
      v28 = v27;
      v38(v25, v16);
      v29 = sub_185ACB2C4(v26, v28, &v45);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      swift_beginAccess();
      if (*v18)
      {
        v30 = *v18;
        v31 = _swift_stdlib_bridgeErrorToNSError();
        v32 = v31;
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      *(v24 + 14) = v31;
      v33 = v37;
      *v37 = v32;
      _os_log_impl(&dword_185AC1000, v22, v23, "could not get isFirstParty value for extension %s: %@", v24, 0x16u);
      sub_185AC3F6C(v33);
      MEMORY[0x1865FE2F0](v33, -1, -1);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      MEMORY[0x1865FE2F0](v34, -1, -1);
      MEMORY[0x1865FE2F0](v24, -1, -1);
    }

    return 0;
  }

  return v15;
}

Swift::String __swiftcall APExtension.effectiveBundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APExtension_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APExtension_bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_185B5C430(uint64_t a1, unint64_t a2)
{
  v2[OBJC_IVAR___APViewSubject_forcedLockedValue] = 2;
  if (sub_185B5E4C8(a1, a2))
  {
    v5 = &v2[OBJC_IVAR___APViewSubject_bundleIdentifier];
    *v5 = a1;
    v5[1] = a2;
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    sub_185ADF8F0(&qword_1ED6F5148, v42);
    v6 = v43;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v8 = *(*(v6 - 8) + 64);
    MEMORY[0x1EEE9AC00](v7, v7);
    v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10);
    v40 = &type metadata for ServerBackedClientArena;
    v41 = &off_1EF46CD08;
    v12 = swift_allocObject();
    v39[0] = v12;
    v13 = v10[9];
    v12[9] = v10[8];
    v12[10] = v13;
    v12[11] = v10[10];
    v14 = v10[5];
    v12[5] = v10[4];
    v12[6] = v14;
    v15 = v10[7];
    v12[7] = v10[6];
    v12[8] = v15;
    v16 = v10[1];
    v12[1] = *v10;
    v12[2] = v16;
    v17 = v10[3];
    v12[3] = v10[2];
    v12[4] = v17;
    v18 = type metadata accessor for ClientArenaWrapper();
    v19 = objc_allocWithZone(v18);
    v20 = v40;
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v22 = *(v20[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v21, v21);
    v24 = (&v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24);
    v38[3] = &type metadata for ServerBackedClientArena;
    v38[4] = &off_1EF46CD08;
    v26 = swift_allocObject();
    v38[0] = v26;
    v27 = v24[9];
    v26[9] = v24[8];
    v26[10] = v27;
    v26[11] = v24[10];
    v28 = v24[5];
    v26[5] = v24[4];
    v26[6] = v28;
    v29 = v24[7];
    v26[7] = v24[6];
    v26[8] = v29;
    v30 = v24[1];
    v26[1] = *v24;
    v26[2] = v30;
    v31 = v24[3];
    v26[3] = v24[2];
    v26[4] = v31;
    sub_185ADF8F0(v38, v19 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
    v37.receiver = v19;
    v37.super_class = v18;
    v32 = objc_msgSendSuper2(&v37, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v39);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    v36.receiver = v2;
    v36.super_class = APViewSubject;
    v33 = objc_msgSendSuper2(&v36, sel_initWithArena_, v32);

    return v33;
  }

  else
  {

    type metadata accessor for APViewSubject(v35);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id sub_185B5C7A4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v26 = (v1 + 16);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v33 = sub_185B12704;
  v34 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_185B6657C;
  v32 = &block_descriptor_68_1;
  v3 = _Block_copy(&aBlock);

  v4 = APGetSyncViewSubjectInfoProxy(v3);
  _Block_release(v3);
  v27 = v0;
  v6 = *&v0[OBJC_IVAR___APViewSubject_bundleIdentifier];
  v5 = *&v0[OBJC_IVAR___APViewSubject_bundleIdentifier + 8];
  v7 = sub_185B67E1C();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v1;
  v33 = sub_185B5EAEC;
  v34 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_185B0E6C8;
  v32 = &block_descriptor_74_0;
  v9 = _Block_copy(&aBlock);

  [v4 getViewSubjectIsLockedForBundleID:v7 completion:v9];
  _Block_release(v9);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = [v10 BOOLValue];
  }

  else
  {
    v12 = v5;
    v25 = v6;
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1ED6F5130);

    v14 = v27;
    v15 = sub_185B67B6C();
    v16 = sub_185B6808C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = v12;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v18 = 136315394;
      *(v18 + 4) = sub_185ACB2C4(v25, v17, &v28);
      *(v18 + 12) = 2112;
      swift_beginAccess();
      if (*v26)
      {
        v21 = *v26;
        v22 = _swift_stdlib_bridgeErrorToNSError();
        v23 = v22;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      *(v18 + 14) = v22;
      *v19 = v23;
      _os_log_impl(&dword_185AC1000, v15, v16, "could not get locked value for view subject: %s: %@", v18, 0x16u);
      sub_185AC3F6C(v19);
      MEMORY[0x1865FE2F0](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1865FE2F0](v20, -1, -1);
      MEMORY[0x1865FE2F0](v18, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v11;
}

uint64_t sub_185B5CBB0()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v13 = sub_185B5CD8C;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B6657C;
  v12 = &block_descriptor_37_4;
  v2 = _Block_copy(&v9);

  v3 = APGetSyncViewSubjectInfoProxy(v2);
  _Block_release(v2);
  v4 = [v0 effectiveBundleIdentifier];
  v13 = sub_185B5EA34;
  v14 = v1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B5CD98;
  v12 = &block_descriptor_40_2;
  v5 = _Block_copy(&v9);

  [v3 effectiveContainerLocalizedNameFor:v4 completion:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return v6;
}

void sub_185B5CD98(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_185B67E4C();
  v8 = v7;

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_185B5CE2C()
{
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v13 = sub_185B5D008;
  v14 = 0;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B6657C;
  v12 = &block_descriptor_23;
  v2 = _Block_copy(&v9);

  v3 = APGetSyncViewSubjectInfoProxy(v2);
  _Block_release(v2);
  v4 = [v0 effectiveBundleIdentifier];
  v13 = sub_185B5EA10;
  v14 = v1;
  v9 = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = sub_185B5CD98;
  v12 = &block_descriptor_33_0;
  v5 = _Block_copy(&v9);

  [v3 effectiveContainerFor:v4 completion:v5];
  _Block_release(v5);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return v6;
}

void sub_185B5D014(void *a1, const char *a2)
{
  if (qword_1ED6F4CB0 != -1)
  {
    swift_once();
  }

  v4 = sub_185B67B8C();
  __swift_project_value_buffer(v4, qword_1ED6F5130);
  v5 = a1;
  oslog = sub_185B67B6C();
  v6 = sub_185B6808C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = a1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_185AC1000, oslog, v6, a2, v7, 0xCu);
    sub_185AC3F6C(v8);
    MEMORY[0x1865FE2F0](v8, -1, -1);
    MEMORY[0x1865FE2F0](v7, -1, -1);
  }
}

uint64_t sub_185B5D168(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  if (a3)
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v10 = sub_185B67B8C();
    __swift_project_value_buffer(v10, qword_1ED6F5130);
    v11 = a3;
    v12 = sub_185B67B6C();
    v13 = sub_185B6808C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = a3;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_185AC1000, v12, v13, a5, v14, 0xCu);
      sub_185AC3F6C(v15);
      MEMORY[0x1865FE2F0](v15, -1, -1);
      MEMORY[0x1865FE2F0](v14, -1, -1);
    }
  }

  swift_beginAccess();
  v18 = *(a4 + 24);
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
}

uint64_t sub_185B5D328(unsigned __int8 *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v4 = a1[*a3];
  if (v4 == 2)
  {
    v6 = a1;
    LOBYTE(v4) = a4();
  }

  return v4 & 1;
}

uint64_t sub_185B5D39C(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3 == 2)
  {
    return a2();
  }

  else
  {
    return v3 & 1;
  }
}

Swift::String __swiftcall APViewSubject.effectiveBundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APViewSubject_bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APViewSubject_bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_185B5D410(void *a1, uint64_t a2, SEL *a3)
{
  v5 = objc_opt_self();
  v6 = a1;
  v7 = [v5 sharedGuard];
  v8 = [v7 *a3];

  return v8;
}

id sub_185B5D4BC(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_185B67E1C();

  return v5;
}

unint64_t APApplication.description.getter()
{
  sub_185B6836C();

  MEMORY[0x1865FCF60](*(v0 + OBJC_IVAR___APApplication__bundleIdentifier), *(v0 + OBJC_IVAR___APApplication__bundleIdentifier + 8));
  MEMORY[0x1865FCF60](62, 0xE100000000000000);
  return 0xD000000000000010;
}

Swift::String __swiftcall APApplication.effectiveBundleIdentifier()()
{
  v1 = [v0 bundleIdentifier];
  v2 = sub_185B67E4C();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::String __swiftcall APApplication.bundleIdentifier()()
{
  v1 = *(v0 + OBJC_IVAR___APApplication__bundleIdentifier);
  v2 = *(v0 + OBJC_IVAR___APApplication__bundleIdentifier + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t sub_185B5D6F0(SEL *a1)
{
  v1 = [objc_opt_self() *a1];
  v2 = sub_185B67FDC();

  v3 = sub_185AC9820(v2);

  return v3;
}

uint64_t sub_185B5D91C(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  sub_185ADF8F0(&qword_1ED6F5148, v14);
  v5 = v15;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v6);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_185B5DD44(v9, a2);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v14);
  *a3 = v11;
  return result;
}

BOOL sub_185B5DB4C()
{
  sub_185ADF8F0(v0 + OBJC_IVAR___APSubject_clientArenaStorage, v8);
  v1 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_185ADF8F0((v1 + 1), v7);
  v2 = *(*__swift_project_boxed_opaque_existential_1(v7, v7[3]) + 16);

  os_unfair_lock_lock((v2 + 48));
  sub_185AC9760((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 48));
  v3 = v6;

  v4 = *(v3 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v8);
  return v4 != 0;
}

id sub_185B5DCE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_185B5DD44(_OWORD *a1, uint64_t (*a2)(void))
{
  v62[3] = &type metadata for ServerBackedClientArena;
  v62[4] = &off_1EF46CD08;
  v4 = swift_allocObject();
  v62[0] = v4;
  v5 = a1[9];
  v4[9] = a1[8];
  v4[10] = v5;
  v4[11] = a1[10];
  v6 = a1[5];
  v4[5] = a1[4];
  v4[6] = v6;
  v7 = a1[7];
  v4[7] = a1[6];
  v4[8] = v7;
  v8 = a1[1];
  v4[1] = *a1;
  v4[2] = v8;
  v9 = a1[3];
  v4[3] = a1[2];
  v4[4] = v9;
  v10 = a2();
  v11 = objc_allocWithZone(v10);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v62, &type metadata for ServerBackedClientArena);
  v13 = *(off_1EF46CC38 + 8);
  MEMORY[0x1EEE9AC00](v12, v12);
  v15 = (&v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v61[3] = &type metadata for ServerBackedClientArena;
  v61[4] = &off_1EF46CD08;
  v17 = swift_allocObject();
  v61[0] = v17;
  v18 = v15[9];
  v17[9] = v15[8];
  v17[10] = v18;
  v17[11] = v15[10];
  v19 = v15[5];
  v17[5] = v15[4];
  v17[6] = v19;
  v20 = v15[7];
  v17[7] = v15[6];
  v17[8] = v20;
  v21 = v15[1];
  v17[1] = *v15;
  v17[2] = v21;
  v22 = v15[3];
  v17[3] = v15[2];
  v17[4] = v22;
  sub_185ADF8F0(v61, v59);
  v23 = v60;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24, v24);
  v27 = (&v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v57 = &type metadata for ServerBackedClientArena;
  v58 = &off_1EF46CD08;
  v29 = swift_allocObject();
  v56[0] = v29;
  v30 = v27[9];
  v29[9] = v27[8];
  v29[10] = v30;
  v29[11] = v27[10];
  v31 = v27[5];
  v29[5] = v27[4];
  v29[6] = v31;
  v32 = v27[7];
  v29[7] = v27[6];
  v29[8] = v32;
  v33 = v27[1];
  v29[1] = *v27;
  v29[2] = v33;
  v34 = v27[3];
  v29[3] = v27[2];
  v29[4] = v34;
  v35 = type metadata accessor for ClientArenaWrapper();
  v36 = objc_allocWithZone(v35);
  v37 = v57;
  v38 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
  v39 = *(v37[-1].Description + 8);
  MEMORY[0x1EEE9AC00](v38, v38);
  v41 = (&v52 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v42 + 16))(v41);
  v55[3] = &type metadata for ServerBackedClientArena;
  v55[4] = &off_1EF46CD08;
  v43 = swift_allocObject();
  v55[0] = v43;
  v44 = v41[9];
  v43[9] = v41[8];
  v43[10] = v44;
  v43[11] = v41[10];
  v45 = v41[5];
  v43[5] = v41[4];
  v43[6] = v45;
  v46 = v41[7];
  v43[7] = v41[6];
  v43[8] = v46;
  v47 = v41[1];
  v43[1] = *v41;
  v43[2] = v47;
  v48 = v41[3];
  v43[3] = v41[2];
  v43[4] = v48;
  sub_185ADF8F0(v55, v36 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
  v54.receiver = v36;
  v54.super_class = v35;
  v49 = objc_msgSendSuper2(&v54, sel_init);
  __swift_destroy_boxed_opaque_existential_0Tm(v55);
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  __swift_destroy_boxed_opaque_existential_0Tm(v59);
  v53.receiver = v11;
  v53.super_class = v10;
  v50 = objc_msgSendSuper2(&v53, sel_initWithArena_, v49);

  __swift_destroy_boxed_opaque_existential_0Tm(v61);
  __swift_destroy_boxed_opaque_existential_0Tm(v62);
  return v50;
}

id sub_185B5E154(void *a1)
{
  v1[OBJC_IVAR___APExtension_forcedLockedValue] = 2;
  v3 = [a1 bundleIdentifier];
  v4 = sub_185B67E4C();
  v6 = v5;

  v7 = &v1[OBJC_IVAR___APExtension_bundleIdentifier];
  *v7 = v4;
  v7[1] = v6;
  result = [a1 uniqueIdentifier];
  if (result)
  {
    *&v1[OBJC_IVAR___APExtension_extensionUUIDStorage] = result;
    if (qword_1ED6F4CA8 != -1)
    {
      swift_once();
    }

    sub_185ADF8F0(&qword_1ED6F5148, v44);
    v9 = v45;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    v37[1] = v37;
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v10, v10);
    v13 = (v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v42 = &type metadata for ServerBackedClientArena;
    v43 = &off_1EF46CD08;
    v15 = swift_allocObject();
    v41[0] = v15;
    v16 = v13[9];
    v15[9] = v13[8];
    v15[10] = v16;
    v15[11] = v13[10];
    v17 = v13[5];
    v15[5] = v13[4];
    v15[6] = v17;
    v18 = v13[7];
    v15[7] = v13[6];
    v15[8] = v18;
    v19 = v13[1];
    v15[1] = *v13;
    v15[2] = v19;
    v20 = v13[3];
    v15[3] = v13[2];
    v15[4] = v20;
    v21 = type metadata accessor for ClientArenaWrapper();
    v22 = objc_allocWithZone(v21);
    v23 = v42;
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v25 = *(v23[-1].Description + 8);
    MEMORY[0x1EEE9AC00](v24, v24);
    v27 = (v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27);
    v40[3] = &type metadata for ServerBackedClientArena;
    v40[4] = &off_1EF46CD08;
    v29 = swift_allocObject();
    v40[0] = v29;
    v30 = v27[9];
    v29[9] = v27[8];
    v29[10] = v30;
    v29[11] = v27[10];
    v31 = v27[5];
    v29[5] = v27[4];
    v29[6] = v31;
    v32 = v27[7];
    v29[7] = v27[6];
    v29[8] = v32;
    v33 = v27[1];
    v29[1] = *v27;
    v29[2] = v33;
    v34 = v27[3];
    v29[3] = v27[2];
    v29[4] = v34;
    sub_185ADF8F0(v40, v22 + OBJC_IVAR____TtC13AppProtectionP33_215D8CF8FF516198782505704A9473C518ClientArenaWrapper_arena);
    v39.receiver = v22;
    v39.super_class = v21;
    v35 = objc_msgSendSuper2(&v39, sel_init);
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    v38.receiver = v1;
    v38.super_class = APExtension;
    v36 = objc_msgSendSuper2(&v38, sel_initWithArena_, v35);

    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_185B5E4C8(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v29 = sub_185B12704;
  v30 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_185B6657C;
  v28 = &block_descriptor_51;
  v6 = _Block_copy(&aBlock);

  v7 = APGetSyncViewSubjectInfoProxy(v6);
  _Block_release(v6);
  v8 = sub_185B67E1C();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  v29 = sub_185B5EAEC;
  v30 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v26 = 1107296256;
  v27 = sub_185B0E6C8;
  v28 = &block_descriptor_57_0;
  v10 = _Block_copy(&aBlock);

  [v7 getProcessCanHostViewSubjectWithBundleID:v8 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  swift_beginAccess();
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
    if (qword_1ED6F4CB0 != -1)
    {
      swift_once();
    }

    v13 = sub_185B67B8C();
    __swift_project_value_buffer(v13, qword_1ED6F5130);

    v14 = sub_185B67B6C();
    v15 = sub_185B6808C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v16 = 136315394;
      *(v16 + 4) = sub_185ACB2C4(a1, a2, &v24);
      *(v16 + 12) = 2112;
      swift_beginAccess();
      v19 = *(v4 + 16);
      if (v19)
      {
        v20 = v19;
        v21 = _swift_stdlib_bridgeErrorToNSError();
        v22 = v21;
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      *(v16 + 14) = v21;
      *v17 = v22;
      _os_log_impl(&dword_185AC1000, v14, v15, "could not get canHost value for view subject: %s: %@", v16, 0x16u);
      sub_185AC3F6C(v17);
      MEMORY[0x1865FE2F0](v17, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x1865FE2F0](v18, -1, -1);
      MEMORY[0x1865FE2F0](v16, -1, -1);
    }

    return 0;
  }

  return v12;
}

uint64_t sub_185B5E89C()
{
  if (qword_1ED6F4CA8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED6F5160;
  v1 = __swift_project_boxed_opaque_existential_1(&qword_1ED6F5148, qword_1ED6F5160);
  v2 = *(v0 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5);
  sub_185ADF8F0((v5 + 8), v11);
  (*(v2 + 8))(v5, v0);
  v6 = *(*__swift_project_boxed_opaque_existential_1(v11, v11[3]) + 16);

  os_unfair_lock_lock((v6 + 48));
  sub_185B5EAF0((v6 + 16), &v10);
  os_unfair_lock_unlock((v6 + 48));
  v7 = v10;

  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

uint64_t objectdestroy_53Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

void sub_185B5EB44()
{
  type metadata accessor for Preferences();
  swift_allocObject();
  sub_185B5EB80();
  qword_1EA8D2330 = v0;
}

void sub_185B5EB80()
{
  has_internal_ui = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAD8, &qword_185B6F888);
  v1 = swift_allocObject();
  *(v1 + 64) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 72) = 1;
  *(v1 + 96) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE0, &qword_185B6F890);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 104) = v2;
  *(v1 + 112) = 0;
  *(v1 + 120) = 1;
  v201 = objc_opt_self();
  v3 = [v201 mainBundle];
  v4 = [v3 bundleIdentifier];

  if (!v4)
  {
    goto LABEL_7;
  }

  v5 = sub_185B67E4C();
  v7 = v6;

  if (v5 == 0xD000000000000018 && 0x8000000185B78D10 == v7)
  {
LABEL_9:

    goto LABEL_10;
  }

  v9 = sub_185B6859C();

  if ((v9 & 1) == 0)
  {
LABEL_7:
    v10 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v11 = sub_185B67E1C();
    v12 = [v10 initWithSuiteName_];

    if (v12)
    {
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_9;
  }

LABEL_10:
  v12 = [objc_opt_self() standardUserDefaults];
LABEL_11:
  v13 = *(v1 + 32);
  *(v1 + 16) = v12;
  *(v1 + 24) = 0xD000000000000018;
  *(v1 + 32) = 0x8000000185B78D10;

  strcpy((v1 + 40), "retryTimeout");
  *(v1 + 53) = 0;
  *(v1 + 54) = -5120;
  *(v1 + 56) = 0x4008000000000000;
  *(v1 + 73) = has_internal_ui;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE8, &qword_185B6F898);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v17 = sub_185B67C4C();
  *(v1 + 80) = v17;
  v210 = v17;
  sub_185AC7370(&qword_1EA8CB6F0, &qword_1EA8CDAE8, &qword_185B6F898);
  v18 = sub_185B67C6C();
  v19 = *(v1 + 96);
  *(v1 + 88) = v18;
  *(v1 + 96) = 0;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAF0, &qword_185B6F8A0);
  v21 = objc_allocWithZone(v20);
  swift_weakInit();
  swift_weakAssign();
  v209.receiver = v21;
  v209.super_class = v20;
  v22 = objc_msgSendSuper2(&v209, sel_init);
  v23 = *(v1 + 96);
  *(v1 + 96) = v22;

  v24 = *(v1 + 16);
  v25 = *(v1 + 40);
  v26 = *(v1 + 48);
  v27 = v22;
  v28 = v24;

  v29 = sub_185B67E1C();

  [v28 addObserver:v27 forKeyPath:v29 options:0 context:0];

  v202[2] = v1;
  v30 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAF8, &qword_185B6F8A8);
  v31 = swift_allocObject();
  *(v31 + 64) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = 0;
  *(v31 + 72) = 1;
  *(v31 + 96) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v31 + 104) = v32;
  *(v31 + 112) = 0;
  *(v31 + 120) = 1;
  v33 = [v201 mainBundle];
  v34 = [v33 bundleIdentifier];

  if (v34)
  {
    v35 = sub_185B67E4C();
    v37 = v36;

    if (v35 == 0xD000000000000018 && 0x8000000185B78D10 == v37)
    {

LABEL_16:
      v39 = [objc_opt_self() standardUserDefaults];
      goto LABEL_18;
    }

    v38 = sub_185B6859C();

    if (v38)
    {
      goto LABEL_16;
    }
  }

  v40 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v41 = sub_185B67E1C();
  v42 = [v40 initWithSuiteName_];

  v39 = v42;
  if (!v42)
  {
    __break(1u);
    goto LABEL_55;
  }

LABEL_18:
  v43 = *(v31 + 32);
  *(v31 + 16) = v39;
  *(v31 + 24) = 0xD000000000000018;
  *(v31 + 32) = 0x8000000185B78D10;

  *(v31 + 40) = 0xD000000000000012;
  *(v31 + 48) = 0x8000000185B78D30;
  *(v31 + 56) = 0;
  *(v31 + 73) = v30;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB00, &qword_185B6F8B0);
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_185B67C4C();
  *(v31 + 80) = v47;
  v210 = v47;
  sub_185AC7370(&qword_1EA8CB6E0, &qword_1EA8CDB00, &qword_185B6F8B0);
  v48 = sub_185B67C6C();
  v49 = *(v31 + 96);
  *(v31 + 88) = v48;
  *(v31 + 96) = 0;

  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB08, &qword_185B6F8B8);
  v51 = objc_allocWithZone(v50);
  swift_weakInit();
  swift_weakAssign();
  v208.receiver = v51;
  v208.super_class = v50;
  v52 = objc_msgSendSuper2(&v208, sel_init);
  v53 = *(v31 + 96);
  *(v31 + 96) = v52;

  v54 = *(v31 + 16);
  v55 = *(v31 + 40);
  v56 = *(v31 + 48);
  v57 = v52;
  v58 = v54;

  v59 = sub_185B67E1C();

  [v58 addObserver:v57 forKeyPath:v59 options:0 context:0];

  v202[3] = v31;
  v60 = os_variant_has_internal_ui();
  v61 = swift_allocObject();
  *(v61 + 64) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 0;
  *(v61 + 72) = 1;
  *(v61 + 96) = 0;
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v61 + 104) = v62;
  *(v61 + 112) = 0;
  *(v61 + 120) = 1;
  v63 = [v201 mainBundle];
  v64 = [v63 bundleIdentifier];

  if (v64)
  {
    v65 = sub_185B67E4C();
    v67 = v66;

    if (v65 == 0xD000000000000018 && 0x8000000185B78D10 == v67)
    {

LABEL_23:
      v69 = [objc_opt_self() standardUserDefaults];
      goto LABEL_25;
    }

    v68 = sub_185B6859C();

    if (v68)
    {
      goto LABEL_23;
    }
  }

  v70 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v71 = sub_185B67E1C();
  v69 = [v70 initWithSuiteName_];

  if (!v69)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_25:
  v72 = *(v61 + 32);
  *(v61 + 16) = v69;
  *(v61 + 24) = 0xD000000000000018;
  *(v61 + 32) = 0x8000000185B78D10;

  *(v61 + 40) = 0x636E65467473616CLL;
  *(v61 + 48) = 0xE900000000000065;
  *(v61 + 56) = 0;
  *(v61 + 73) = v60;
  v73 = *(v44 + 48);
  v74 = *(v44 + 52);
  swift_allocObject();
  v75 = sub_185B67C4C();
  *(v61 + 80) = v75;
  v210 = v75;
  v76 = sub_185B67C6C();
  v77 = *(v61 + 96);
  *(v61 + 88) = v76;
  *(v61 + 96) = 0;

  v78 = objc_allocWithZone(v50);
  swift_weakInit();
  swift_weakAssign();
  v207.receiver = v78;
  v207.super_class = v50;
  v79 = objc_msgSendSuper2(&v207, sel_init);
  v80 = *(v61 + 96);
  *(v61 + 96) = v79;

  v81 = *(v61 + 16);
  v82 = *(v61 + 40);
  v83 = *(v61 + 48);
  v84 = v79;
  v85 = v81;

  v86 = sub_185B67E1C();

  [v85 addObserver:v84 forKeyPath:v86 options:0 context:0];

  v202[4] = v61;
  v87 = os_variant_has_internal_ui();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB10, &qword_185B6F8C0);
  v88 = swift_allocObject();
  *(v88 + 64) = 0;
  *(v88 + 24) = 0;
  *(v88 + 32) = 0;
  *(v88 + 72) = 1;
  *(v88 + 96) = 0;
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v88 + 104) = v89;
  *(v88 + 112) = 0;
  *(v88 + 120) = 1;
  v90 = [v201 mainBundle];
  v91 = [v90 bundleIdentifier];

  if (v91)
  {
    v92 = sub_185B67E4C();
    v94 = v93;

    if (v92 == 0xD000000000000018 && 0x8000000185B78D10 == v94)
    {

LABEL_30:
      v96 = [objc_opt_self() standardUserDefaults];
      goto LABEL_32;
    }

    v95 = sub_185B6859C();

    if (v95)
    {
      goto LABEL_30;
    }
  }

  v97 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v98 = sub_185B67E1C();
  v99 = [v97 initWithSuiteName_];

  v96 = v99;
  if (!v99)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

LABEL_32:
  v100 = *(v88 + 32);
  *(v88 + 16) = v96;
  *(v88 + 24) = 0xD000000000000018;
  *(v88 + 32) = 0x8000000185B78D10;

  *(v88 + 40) = 0xD00000000000001ALL;
  *(v88 + 48) = 0x8000000185B77980;
  *(v88 + 56) = 0;
  *(v88 + 73) = v87;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB18, &qword_185B6F8C8);
  v102 = *(v101 + 48);
  v103 = *(v101 + 52);
  swift_allocObject();
  v104 = sub_185B67C4C();
  *(v88 + 80) = v104;
  v210 = v104;
  sub_185AC7370(&qword_1EA8CB6E8, &qword_1EA8CDB18, &qword_185B6F8C8);
  v105 = sub_185B67C6C();
  v106 = *(v88 + 96);
  *(v88 + 88) = v105;
  *(v88 + 96) = 0;

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDB20, &unk_185B6F8D0);
  v108 = objc_allocWithZone(v107);
  swift_weakInit();
  swift_weakAssign();
  v206.receiver = v108;
  v206.super_class = v107;
  v109 = objc_msgSendSuper2(&v206, sel_init);
  v110 = *(v88 + 96);
  *(v88 + 96) = v109;

  v111 = *(v88 + 16);
  v112 = *(v88 + 40);
  v113 = *(v88 + 48);
  v114 = v109;
  v115 = v111;

  v116 = sub_185B67E1C();

  [v115 addObserver:v114 forKeyPath:v116 options:0 context:0];

  v202[5] = v88;
  v117 = os_variant_has_internal_ui();
  v118 = swift_allocObject();
  *(v118 + 64) = 0;
  *(v118 + 24) = 0;
  *(v118 + 32) = 0;
  *(v118 + 72) = 1;
  *(v118 + 96) = 0;
  v119 = swift_allocObject();
  *(v119 + 16) = 0;
  *(v118 + 104) = v119;
  *(v118 + 112) = 0;
  *(v118 + 120) = 1;
  v120 = [v201 mainBundle];
  v121 = [v120 bundleIdentifier];

  if (v121)
  {
    v122 = sub_185B67E4C();
    v124 = v123;

    if (v122 == 0xD000000000000018 && 0x8000000185B78D10 == v124)
    {

LABEL_37:
      v126 = [objc_opt_self() standardUserDefaults];
      goto LABEL_39;
    }

    v125 = sub_185B6859C();

    if (v125)
    {
      goto LABEL_37;
    }
  }

  v127 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v128 = sub_185B67E1C();
  v129 = [v127 initWithSuiteName_];

  v126 = v129;
  if (!v129)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

LABEL_39:
  v130 = *(v118 + 32);
  *(v118 + 16) = v126;
  *(v118 + 24) = 0xD000000000000018;
  *(v118 + 32) = 0x8000000185B78D10;

  *(v118 + 40) = 0xD00000000000001CLL;
  *(v118 + 48) = 0x8000000185B779A0;
  *(v118 + 56) = 0;
  *(v118 + 73) = v117;
  v131 = *(v101 + 48);
  v132 = *(v101 + 52);
  swift_allocObject();
  v133 = sub_185B67C4C();
  *(v118 + 80) = v133;
  v210 = v133;
  v134 = sub_185B67C6C();
  v135 = *(v118 + 96);
  *(v118 + 88) = v134;
  *(v118 + 96) = 0;

  v136 = objc_allocWithZone(v107);
  swift_weakInit();
  swift_weakAssign();
  v205.receiver = v136;
  v205.super_class = v107;
  v137 = objc_msgSendSuper2(&v205, sel_init);
  v138 = *(v118 + 96);
  *(v118 + 96) = v137;

  v139 = *(v118 + 16);
  v140 = *(v118 + 40);
  v141 = *(v118 + 48);
  v142 = v137;
  v143 = v139;

  v144 = sub_185B67E1C();

  [v143 addObserver:v142 forKeyPath:v144 options:0 context:0];

  v202[6] = v118;
  v145 = os_variant_has_internal_ui();
  v146 = swift_allocObject();
  *(v146 + 64) = 0;
  *(v146 + 24) = 0;
  *(v146 + 32) = 0;
  *(v146 + 72) = 1;
  *(v146 + 96) = 0;
  v147 = swift_allocObject();
  *(v147 + 16) = 0;
  *(v146 + 104) = v147;
  *(v146 + 112) = 0;
  *(v146 + 120) = 1;
  v148 = [v201 mainBundle];
  v149 = [v148 bundleIdentifier];

  if (!v149)
  {
LABEL_45:
    v155 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v156 = sub_185B67E1C();
    v157 = [v155 initWithSuiteName_];

    v154 = v157;
    if (v157)
    {
      goto LABEL_46;
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v150 = sub_185B67E4C();
  v152 = v151;

  if (v150 != 0xD000000000000018 || 0x8000000185B78D10 != v152)
  {
    v153 = sub_185B6859C();

    if (v153)
    {
      goto LABEL_44;
    }

    goto LABEL_45;
  }

LABEL_44:
  v154 = [objc_opt_self() standardUserDefaults];
LABEL_46:
  v158 = *(v146 + 32);
  *(v146 + 16) = v154;
  *(v146 + 24) = 0xD000000000000018;
  *(v146 + 32) = 0x8000000185B78D10;

  *(v146 + 40) = 0xD00000000000001CLL;
  *(v146 + 48) = 0x8000000185B779C0;
  *(v146 + 56) = 0;
  *(v146 + 73) = v145;
  v159 = *(v101 + 48);
  v160 = *(v101 + 52);
  swift_allocObject();
  v161 = sub_185B67C4C();
  *(v146 + 80) = v161;
  v210 = v161;
  v162 = sub_185B67C6C();
  v163 = *(v146 + 96);
  *(v146 + 88) = v162;
  *(v146 + 96) = 0;

  v164 = objc_allocWithZone(v107);
  swift_weakInit();
  swift_weakAssign();
  v204.receiver = v164;
  v204.super_class = v107;
  v165 = objc_msgSendSuper2(&v204, sel_init);
  v166 = *(v146 + 96);
  *(v146 + 96) = v165;

  v167 = *(v146 + 16);
  v168 = *(v146 + 40);
  v169 = *(v146 + 48);
  v170 = v165;
  v171 = v167;

  v172 = sub_185B67E1C();

  [v171 addObserver:v170 forKeyPath:v172 options:0 context:0];

  v202[7] = v146;
  v173 = os_variant_has_internal_ui();
  v174 = swift_allocObject();
  *(v174 + 64) = 0;
  *(v174 + 24) = 0;
  *(v174 + 32) = 0;
  *(v174 + 72) = 1;
  *(v174 + 96) = 0;
  v175 = swift_allocObject();
  *(v175 + 16) = 0;
  *(v174 + 104) = v175;
  *(v174 + 112) = 0;
  *(v174 + 120) = 1;
  v176 = [v201 mainBundle];
  v177 = [v176 bundleIdentifier];

  if (v177)
  {
    v178 = sub_185B67E4C();
    v180 = v179;

    if (v178 == 0xD000000000000018 && 0x8000000185B78D10 == v180)
    {

LABEL_51:
      v182 = [objc_opt_self() standardUserDefaults];
LABEL_53:
      v186 = *(v174 + 32);
      *(v174 + 16) = v182;
      *(v174 + 24) = 0xD000000000000018;
      *(v174 + 32) = 0x8000000185B78D10;

      *(v174 + 40) = 0xD00000000000001CLL;
      *(v174 + 48) = 0x8000000185B779E0;
      *(v174 + 56) = 0;
      *(v174 + 73) = v173;
      v187 = *(v101 + 48);
      v188 = *(v101 + 52);
      swift_allocObject();
      v189 = sub_185B67C4C();
      *(v174 + 80) = v189;
      v210 = v189;
      v190 = sub_185B67C6C();
      v191 = *(v174 + 96);
      *(v174 + 88) = v190;
      *(v174 + 96) = 0;

      v192 = objc_allocWithZone(v107);
      swift_weakInit();
      swift_weakAssign();
      v203.receiver = v192;
      v203.super_class = v107;
      v193 = objc_msgSendSuper2(&v203, sel_init);
      v194 = *(v174 + 96);
      *(v174 + 96) = v193;

      v195 = *(v174 + 16);
      v196 = *(v174 + 40);
      v197 = *(v174 + 48);
      v198 = v193;
      v199 = v195;

      v200 = sub_185B67E1C();

      [v199 addObserver:v198 forKeyPath:v200 options:0 context:0];

      v202[8] = v174;
      return;
    }

    v181 = sub_185B6859C();

    if (v181)
    {
      goto LABEL_51;
    }
  }

  v183 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v184 = sub_185B67E1C();
  v185 = [v183 initWithSuiteName_];

  v182 = v185;
  if (v185)
  {
    goto LABEL_53;
  }

LABEL_59:
  __break(1u);
}

unint64_t sub_185B5FF54()
{
  v1 = sub_185B686DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Preferences();
  v24 = v0;

  sub_185B686BC();
  sub_185B686CC();
  v7 = sub_185B6840C();

  v24 = 0;
  v25 = 0xE000000000000000;
  sub_185B6836C();

  v24 = 0xD000000000000010;
  v25 = 0x8000000185B78DB0;
  v8 = *(v7 + 16);
  if (v8)
  {
    v21 = v2;
    v22 = v1;
    v23 = MEMORY[0x1E69E7CC0];
    sub_185B4E9AC(0, v8, 0);
    v9 = v23;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v23 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);

      if (v14 >= v13 >> 1)
      {
        sub_185B4E9AC((v13 > 1), v14 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v14 + 1;
      v15 = v9 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v10 += 2;
      --v8;
    }

    while (v8);

    v2 = v21;
    v1 = v22;
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v23 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC840, &qword_185B6F1F0);
  sub_185AC7370(&unk_1EA8CDB30, &qword_1EA8CC840, &qword_185B6F1F0);
  v16 = sub_185B67DCC();
  v18 = v17;

  MEMORY[0x1865FCF60](v16, v18);

  MEMORY[0x1865FCF60](62, 0xE100000000000000);
  v19 = v24;
  (*(v2 + 8))(v6, v1);
  return v19;
}

void *sub_185B60260()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  v5 = v0[6];

  v6 = v0[7];

  v7 = v0[8];

  return v0;
}

uint64_t sub_185B602B0()
{
  sub_185B60260();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_185B60308()
{
  v13 = sub_185B680EC();
  v0 = *(v13 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v13, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_185B680DC();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5, v7);
  v8 = sub_185B67CDC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12[1] = sub_185AC7294();
  sub_185B67CCC();
  v14 = MEMORY[0x1E69E7CC0];
  sub_185B63720(&qword_1ED6F48C0, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185AC7370(&qword_1ED6F48D0, &unk_1EA8CCE40, &qword_185B6BBC0);
  sub_185B682CC();
  (*(v0 + 104))(v4, *MEMORY[0x1E69E8098], v13);
  result = sub_185B6813C();
  qword_1EA8CDA48 = result;
  return result;
}

uint64_t sub_185B6057C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_185B6061C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_185B6829C();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_185B606C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_185B6829C();
  return (*(*(v6 - 8) + 16))(a1, v1 + v4, v6);
}

uint64_t sub_185B60774(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 176);
  swift_beginAccess();
  v5 = *(v3 + 80);
  v6 = sub_185B6829C();
  (*(*(v6 - 8) + 40))(v1 + v4, a1, v6);
  return swift_endAccess();
}

uint64_t sub_185B60838(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_185B67E4C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v13, 0, sizeof(v13));
    v10 = a5;
    v11 = a1;
    if (!a5)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_185B682AC();
  swift_unknownObjectRelease();
  if (a5)
  {
LABEL_4:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_185B63720(&qword_1EA8CCA18, type metadata accessor for NSKeyValueChangeKey);
    sub_185B67D8C();
  }

LABEL_7:
  sub_185B6237C();

  return sub_185B636B4(v13);
}

void sub_185B6096C(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  sub_185B62698();
}

id sub_185B609AC()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for UserDefault._KVOUserDefaultsObserver();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t *UserDefault.__allocating_init(domain:key:defaultValue:appleInternalOnly:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  has_internal_ui = os_variant_has_internal_ui();
  v14 = sub_185B62DC8(a1, a2, a3, a4, a5, a6, has_internal_ui);
  v16 = *(v6 + 80);
  v15 = *(v6 + 88);
  v17 = type metadata accessor for UserDefault.AppleInternalOnlyOption();
  (*(*(v17 - 8) + 8))(a6, v17);
  (*(*(v16 - 8) + 8))(a5, v16);
  return v14;
}

void UserDefault.deinit()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *&v0[v2];
  if (v3)
  {
    v4 = *(v0 + 5);
    v5 = *(v0 + 6);
    v6 = *(v0 + 2);

    v7 = v3;
    v8 = sub_185B67E1C();

    [v6 removeObserver:v7 forKeyPath:v8];

    if (*&v0[v2])
    {
      swift_weakAssign();

      v9 = *(v0 + 4);

      v10 = *(v0 + 6);

      (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 120)], *(v1 + 80));
      v11 = *(*v0 + 128);
      v12 = sub_185B6829C();
      v13 = *(*(v12 - 8) + 8);
      v13(&v0[v11], v12);
      v14 = *&v0[*(*v0 + 144)];

      v15 = *&v0[*(*v0 + 152)];

      v16 = *&v0[*(*v0 + 168)];

      v13(&v0[*(*v0 + 176)], v12);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t UserDefault.__deallocating_deinit()
{
  UserDefault.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_185B60DAC()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B62E88(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_185B60E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(*a1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v14 - v8;
  v14 = 0;
  v15 = 0xE000000000000000;
  v10 = *(v7 + 40);
  v11 = *(v7 + 48);

  MEMORY[0x1865FCF60](v10, v11);

  MEMORY[0x1865FCF60](2112800, 0xE300000000000000);
  sub_185B61C80(v9);
  sub_185B6857C();
  result = (*(v5 + 8))(v9, v4);
  v13 = v15;
  *a3 = v14;
  a3[1] = v13;
  return result;
}

uint64_t sub_185B60F84(uint64_t a1)
{
  v3 = *v1;
  sub_185B62F58();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*sub_185B61000(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  sub_185B61BC0();
  return sub_185B61114;
}

void sub_185B61114(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    sub_185B62ECC();
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    v9 = (*a1)[4];
    sub_185B62ECC();
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_185B6120C()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B4435C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B61290(void *a1)
{
  v95 = *a1;
  v2 = *(v95 + 80);
  v3 = sub_185B6829C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v96 = *(TupleTypeMetadata2 - 8);
  v5 = *(v96 + 64);
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v6);
  v9 = &v94 - v8;
  v112 = *(v3 - 8);
  isa = v112[8].isa;
  v12 = MEMORY[0x1EEE9AC00](v7, v11);
  v102 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v107 = &v94 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v20 = &v94 - v19;
  v22 = MEMORY[0x1EEE9AC00](v18, v21);
  v24 = &v94 - v23;
  v25 = *(v2 - 8);
  v26 = v25[8];
  v28 = MEMORY[0x1EEE9AC00](v22, v27);
  v99 = &v94 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v98 = &v94 - v32;
  MEMORY[0x1EEE9AC00](v31, v33);
  v35 = &v94 - v34;
  sub_185B61C80(&v94 - v34);
  v108 = v25[2];
  v109 = v35;
  v104 = v25 + 2;
  v108(v24, v35, v2);
  v100 = v25[7];
  v101 = v25 + 7;
  v100(v24, 0, 1, v2);
  v103 = a1;
  sub_185B606C8(v20);
  v97 = TupleTypeMetadata2;
  v36 = *(TupleTypeMetadata2 + 48);
  v37 = v112[2].isa;
  (v37)(v9, v24, v3);
  v105 = v36;
  v111 = v3;
  (v37)(&v9[v36], v20, v3);
  v113 = v25;
  v38 = v25[6];
  v110 = v9;
  v106 = v2;
  if (v38(v9, 1, v2) == 1)
  {
    v39 = v112[1].isa;
    v40 = v20;
    v41 = v111;
    (v39)(v40, v111);
    (v39)(v24, v41);
    v42 = v110;
    v43 = v106;
    v44 = v38(v110 + v105, 1, v106) == 1;
    v45 = v109;
    v46 = v42;
    if (v44)
    {
      (v39)(v42, v111);
      return (v113[1])(v45, v43);
    }

    goto LABEL_7;
  }

  v94 = v24;
  v48 = v110;
  (v37)(v107, v110, v111);
  v49 = v105;
  v43 = v106;
  if (v38(v48 + v105, 1, v106) == 1)
  {
    v50 = v112[1].isa;
    v51 = v20;
    v52 = v111;
    (v50)(v51, v111);
    (v50)(v94, v52);
    (v113[1])(v107, v43);
    v45 = v109;
    v46 = v110;
LABEL_7:
    (*(v96 + 8))(v46, v97);
    v53 = v103;
LABEL_8:
    if (qword_1EA8CB718 != -1)
    {
      swift_once();
    }

    v54 = sub_185B67B8C();
    __swift_project_value_buffer(v54, qword_1EA8D2278);
    v55 = v99;
    v56 = v108;
    v108(v99, v45, v43);

    v57 = sub_185B67B6C();
    v58 = sub_185B680AC();

    if (os_log_type_enabled(v57, v58))
    {
      LODWORD(v111) = v58;
      v112 = v57;
      v59 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v114 = v110;
      *v59 = 136315906;
      v60 = v53[4];
      if (v60)
      {
        v61 = v53;
        v62 = v53[3];
        v63 = v60;
      }

      else
      {
        v74 = [objc_opt_self() mainBundle];
        v75 = [v74 bundleIdentifier];

        if (v75)
        {
          v62 = sub_185B67E4C();
          v63 = v76;
        }

        else
        {
          v63 = 0xE300000000000000;
          v62 = 7104878;
        }

        v61 = v103;
      }

      v77 = sub_185ACB2C4(v62, v63, &v114);

      *(v59 + 4) = v77;
      *(v59 + 12) = 2080;
      v79 = v61[5];
      v78 = v61[6];

      v80 = sub_185ACB2C4(v79, v78, &v114);

      *(v59 + 14) = v80;
      *(v59 + 22) = 2080;
      v53 = v61;
      v81 = v98;
      v108(v98, v55, v43);
      v82 = sub_185B67EBC();
      v84 = v83;
      v64 = v113[1];
      v64(v55, v43);
      v85 = sub_185ACB2C4(v82, v84, &v114);

      *(v59 + 24) = v85;
      *(v59 + 32) = 2080;
      sub_185B6057C(v81);
      v86 = sub_185B67EBC();
      v88 = sub_185ACB2C4(v86, v87, &v114);

      *(v59 + 34) = v88;
      v89 = v112;
      _os_log_impl(&dword_185AC1000, v112, v111, "Preferences[%s]: %s preference changed to %s [default=%s]", v59, 0x2Au);
      v90 = v110;
      swift_arrayDestroy();
      MEMORY[0x1865FE2F0](v90, -1, -1);
      v91 = v59;
      v56 = v108;
      MEMORY[0x1865FE2F0](v91, -1, -1);

      v45 = v109;
    }

    else
    {

      v64 = v113[1];
      v64(v55, v43);
    }

    v92 = v102;
    v56(v102, v45, v43);
    v100(v92, 0, 1, v43);
    sub_185B60774(v92);
    v93 = *(v53 + *(*v53 + 144));

    sub_185B67C2C();

    return (v64)(v45, v43);
  }

  v65 = v113;
  v66 = v110;
  v67 = v98;
  (v113[4])(v98, v110 + v49, v43);
  v68 = *(v95 + 88);
  v69 = v107;
  v70 = sub_185B67DEC();
  v64 = v65[1];
  v64(v67, v43);
  v71 = v112[1].isa;
  v72 = v20;
  v73 = v111;
  (v71)(v72, v111);
  (v71)(v94, v73);
  v64(v69, v43);
  (v71)(v66, v73);
  v53 = v103;
  v45 = v109;
  if ((v70 & 1) == 0)
  {
    goto LABEL_8;
  }

  return (v64)(v45, v43);
}

uint64_t sub_185B61BC0()
{
  v1 = *(v0 + *(*v0 + 168));
  v2 = *(*v0 + 80);

  v5 = v2;
  v6 = sub_185B637B4;
  v7 = v0;
  sub_185B28E50(sub_185B637DC, v4, v1);
}

uint64_t sub_185B61C80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 80);
  v4 = sub_185B6829C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = v26 - v12;
  sub_185B6061C(v26 - v12);
  v14 = *(v3 - 8);
  v15 = *(v14 + 48);
  if (v15(v13, 1, v3) != 1)
  {
    return (*(v14 + 32))(a1, v13, v3);
  }

  v27 = v4;
  v28 = a1;
  v26[0] = *(v5 + 8);
  v26[1] = v5 + 8;
  (v26[0])(v13, v4);
  v16 = *(v1 + 40);
  v17 = *(v1 + 48);
  v18 = *(v1 + 16);

  v19 = sub_185B67E1C();

  v20 = [v18 valueForKey_];

  if (v20)
  {
    sub_185B682AC();
    swift_unknownObjectRelease();
    sub_185AD093C(&v29, v30);
  }

  else
  {
    memset(v30, 0, sizeof(v30));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  v22 = swift_dynamicCast();
  v23 = *(v14 + 56);
  v25 = v27;
  v24 = v28;
  if (v22)
  {
    v23(v10, 0, 1, v3);
    return (*(v14 + 32))(v24, v10, v3);
  }

  else
  {
    v23(v10, 1, 1, v3);
    sub_185B6057C(v24);
    result = (v15)(v10, 1, v3);
    if (result != 1)
    {
      return (v26[0])(v10, v25);
    }
  }

  return result;
}

uint64_t sub_185B61F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v28 - v9;
  v11 = sub_185B6829C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v28 - v15;
  sub_185B6061C(v28 - v15);
  v17 = (*(v7 + 48))(v16, 1, v6);
  result = (*(v12 + 8))(v16, v11);
  if (v17 == 1)
  {
    sub_185B61C80(v10);
    v19 = *(v5 + 88);
    v20 = sub_185B67DEC();
    result = (*(v7 + 8))(v10, v6);
    if ((v20 & 1) == 0)
    {
      v29 = v6;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
      (*(v7 + 16))(boxed_opaque_existential_1, a1, v6);
      v22 = v3[2];
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v23 = v22;
      v24 = sub_185B6858C();
      v26 = v3[5];
      v25 = v3[6];

      v27 = sub_185B67E1C();

      [v23 setObject:v24 forKey:v27];

      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v28);
    }
  }

  return result;
}

uint64_t sub_185B6222C@<X0>(void *a1@<X8>)
{
  result = sub_185B6841C();
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  return result;
}

id sub_185B62294()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  swift_weakInit();
  swift_weakAssign();
  v3 = *((v2 & v1) + 0x50);
  v4 = *((v2 & v1) + 0x58);
  v6.receiver = v0;
  v6.super_class = type metadata accessor for UserDefault._KVOUserDefaultsObserver();
  return objc_msgSendSuper2(&v6, sel_init);
}

id sub_185B62340()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = objc_allocWithZone(type metadata accessor for UserDefault._KVOUserDefaultsObserver());
  return sub_185B62294();
}

uint64_t sub_185B6237C()
{
  v0 = sub_185B67C9C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0, v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_185B67CDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = v6;
    v17 = v1;
    if (qword_1EA8CC418 != -1)
    {
      v14 = result;
      swift_once();
      result = v14;
    }

    v15 = qword_1EA8CDA48;
    aBlock[4] = sub_185B6371C;
    aBlock[5] = result;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_24;
    v13 = _Block_copy(aBlock);

    sub_185B67CBC();
    v18 = MEMORY[0x1E69E7CC0];
    sub_185B63720(&qword_1ED6F45B0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v11, v5, v13);
    _Block_release(v13);

    (*(v17 + 8))(v5, v0);
    (*(v7 + 8))(v11, v16);
  }

  return result;
}

uint64_t *sub_185B626C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v73 = a7;
  v72 = a6;
  v74 = a5;
  v69 = a3;
  v12 = *v8;
  v13 = *(*v8 + 80);
  v14 = sub_185B6829C();
  v64 = *(v14 - 8);
  v15 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v14, v16);
  v63 = v60 - v17;
  v71 = *(v12 + 88);
  v70 = type metadata accessor for UserDefault.AppleInternalOnlyOption();
  v67 = *(v70 - 8);
  v18 = *(v67 + 64);
  v20 = MEMORY[0x1EEE9AC00](v70, v19);
  v68 = v60 - v21;
  v22 = *(v13 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20, v24);
  v66 = v60 - v25;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  v26 = *(v22 + 56);
  v62 = *(v12 + 128);
  v26(&v8[v62], 1, 1, v13);
  *&v8[*(*v8 + 160)] = 0;
  v27 = *(*v8 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CDAE0, &qword_185B6F890);
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *&v8[v27] = v28;
  v29 = &v8[*(*v8 + 176)];
  v60[1] = v22 + 56;
  v61 = v26;
  v26(v29, 1, 1, v13);
  v65 = v14;
  if (!a2)
  {
    goto LABEL_7;
  }

  v30 = [objc_opt_self() mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    v60[0] = a4;
    v32 = sub_185B67E4C();
    v34 = v33;

    if (v32 == a1 && v34 == a2)
    {

      a4 = v60[0];
LABEL_7:
      result = [objc_opt_self() standardUserDefaults];
      goto LABEL_9;
    }

    v35 = sub_185B6859C();

    a4 = v60[0];
    if (v35)
    {
      goto LABEL_7;
    }
  }

  v37 = objc_allocWithZone(MEMORY[0x1E695E000]);

  v38 = sub_185B67E1C();

  v39 = [v37 initWithSuiteName_];

  result = v39;
  if (!v39)
  {
    __break(1u);
    return result;
  }

LABEL_9:
  v40 = *(v8 + 4);
  *(v8 + 2) = result;
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;

  *(v8 + 5) = v69;
  *(v8 + 6) = a4;
  v41 = *(*v8 + 120);
  v42 = *(v22 + 16);
  v42(&v8[v41], v74, v13);
  v43 = v73;
  v8[*(*v8 + 136)] = v73 & 1;
  v44 = v67;
  v45 = v68;
  v46 = v70;
  (*(v67 + 16))(v68, v72, v70);
  if ((*(v22 + 48))(v45, 1, v13) == 1)
  {
    (*(v44 + 8))(v45, v46);
  }

  else
  {
    v47 = v66;
    (*(v22 + 32))(v66, v45, v13);
    if (v43)
    {
      swift_beginAccess();
      (*(v22 + 40))(&v8[v41], v47, v13);
    }

    else
    {
      (*(v22 + 8))(v47, v13);
      v48 = v63;
      v42(v63, v74, v13);
      v61(v48, 0, 1, v13);
      v49 = v62;
      swift_beginAccess();
      (*(v64 + 40))(&v8[v49], v48, v65);
    }

    swift_endAccess();
  }

  sub_185B67C5C();
  v50 = sub_185B67C3C();
  *&v8[*(*v8 + 144)] = v50;
  v75 = v50;
  swift_getWitnessTable();
  *&v8[*(*v8 + 152)] = sub_185B67C6C();
  v51 = *(*v8 + 160);
  v52 = *&v8[v51];
  *&v8[v51] = 0;

  type metadata accessor for UserDefault._KVOUserDefaultsObserver();

  v53 = sub_185B62340();

  v54 = *&v8[v51];
  *&v8[v51] = v53;
  v55 = v53;

  v56 = *(v8 + 5);
  v57 = *(v8 + 6);
  v58 = *(v8 + 2);

  v59 = sub_185B67E1C();

  [v58 addObserver:v55 forKeyPath:v59 options:0 context:0];

  return v8;
}

uint64_t *sub_185B62DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v15 = *(v7 + 80);
  v16 = *(v7 + 88);
  v17 = type metadata accessor for UserDefault();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  return sub_185B626C8(a1, a2, a3, a4, a5, a6, a7);
}

void *sub_185B62E88@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_185B62ECC()
{
  v1 = *(v0 + *(*v0 + 168));

  os_unfair_lock_lock(v1 + 4);
  sub_185B44694(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_185B62FA4(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = sub_185B6829C();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_185B631D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

uint64_t sub_185B63230(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_28;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_28;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 <= 3)
          {
            v13 = v7;
          }

          else
          {
            v13 = 4;
          }

          if (v13 > 2)
          {
            if (v13 == 3)
            {
              v14 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v14 = *a1;
            }
          }

          else if (v13 == 1)
          {
            v14 = *a1;
          }

          else
          {
            v14 = *a1;
          }
        }

        else
        {
          v14 = 0;
        }

        return v6 + (v14 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_28:
  if (v5 < 2)
  {
    return 0;
  }

  v16 = (*(v4 + 48))(a1, v5);
  if (v16 >= 2)
  {
    return v16 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_185B633B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  v10 = v8 - 1;
  if (v8)
  {
    v11 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v10 = 0;
    v11 = v9 + 1;
  }

  v12 = a3 >= v10;
  v13 = a3 - v10;
  if (v13 == 0 || !v12)
  {
    goto LABEL_16;
  }

  if (v11 > 3)
  {
    v6 = 1;
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v14 = ((v13 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
  if (!HIWORD(v14))
  {
    if (v14 < 0x100)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 >= 2)
    {
      v6 = v15;
    }

    else
    {
      v6 = 0;
    }

LABEL_16:
    if (v10 < a2)
    {
      goto LABEL_17;
    }

    goto LABEL_26;
  }

  v6 = 4;
  if (v10 < a2)
  {
LABEL_17:
    v16 = ~v10 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> (8 * v11)) + 1;
      if (v11)
      {
        v18 = v16 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v18;
            if (v6 > 1)
            {
LABEL_55:
              if (v6 == 2)
              {
                *&a1[v11] = v17;
              }

              else
              {
                *&a1[v11] = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v6 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
      if (v6 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v6)
    {
      a1[v11] = v17;
    }

    return;
  }

LABEL_26:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v11] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v6)
  {
    goto LABEL_32;
  }

  a1[v11] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v8 >= 2)
  {
    if (a2 >= v8)
    {
      if (v9 <= 3)
      {
        v20 = ~(-1 << (8 * v9));
      }

      else
      {
        v20 = -1;
      }

      if (v9)
      {
        v21 = v20 & (a2 - v8);
        if (v9 <= 3)
        {
          v22 = v9;
        }

        else
        {
          v22 = 4;
        }

        bzero(a1, v9);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *a1 = v21;
            a1[2] = BYTE2(v21);
          }

          else
          {
            *a1 = v21;
          }
        }

        else if (v22 == 1)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      v19 = *(v7 + 56);

      v19();
    }
  }
}

uint64_t sub_185B636B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CC830, &unk_185B6BEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_185B63720(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_185B63784(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  return sub_185B61F64(v3, a2);
}

uint64_t sub_185B637DC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_185B63808(void *a1)
{
  v2 = a1[10];
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v11 = *(result - 8) + 64;
    v5 = a1[11];
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      v12 = *(result - 8) + 64;
      v7 = a1[12];
      result = swift_checkMetadataState();
      if (v8 <= 0x3F)
      {
        v13 = *(result - 8) + 64;
        v9 = a1[13];
        result = swift_checkMetadataState();
        if (v10 <= 0x3F)
        {
          v14 = *(result - 8) + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_185B63988()
{
  result = sub_185B639AC();
  byte_1EA8CB9A8 = result & 1;
  return result;
}

uint64_t sub_185B639AC()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_185B67E4C();
    v4 = v3;

    if (v2 == 0xD000000000000018 && 0x8000000185B78D10 == v4)
    {

      result = 1;
      goto LABEL_30;
    }

    v6 = sub_185B6859C();

    if (v6)
    {
      goto LABEL_10;
    }
  }

  if (qword_1EA8CC048 != -1)
  {
    swift_once();
  }

  if (byte_1EA8D22E0)
  {
LABEL_10:
    result = 1;
LABEL_30:
    v18 = *MEMORY[0x1E69E9840];
    return result;
  }

  sp = 0;
  if (bootstrap_look_up(*MEMORY[0x1E69E99F8], "com.apple.appprotectiond.write", &sp) || !sp)
  {
    v8 = 0;
  }

  else
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], sp);
    v8 = 1;
  }

  result = xpc_copy_entitlement_for_self();
  if (result)
  {
    value = xpc_BOOL_get_value(result);
    if ((v8 & 1) == 0)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v10 = sub_185B67B8C();
      __swift_project_value_buffer(v10, qword_1ED6F5130);
      v11 = sub_185B67B6C();
      v12 = sub_185B6808C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_185AC1000, v11, v12, "Client does not have access to com.apple.appprotectiond.write mach service", v13, 2u);
        MEMORY[0x1865FE2F0](v13, -1, -1);
      }
    }

    if (!value)
    {
      if (qword_1ED6F4CB0 != -1)
      {
        swift_once();
      }

      v14 = sub_185B67B8C();
      __swift_project_value_buffer(v14, qword_1ED6F5130);
      v15 = sub_185B67B6C();
      v16 = sub_185B6808C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_185AC1000, v15, v16, "Client is missing com.apple.appprotectiond.write.access entitlement", v17, 2u);
        MEMORY[0x1865FE2F0](v17, -1, -1);
      }
    }

    swift_unknownObjectRelease();
    result = v8 & value;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

unint64_t sub_185B63CEC(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2)
    {
      MEMORY[0x1865FCF60](0xD000000000000011, 0x8000000185B79050);
      return 0xD000000000000017;
    }

    sub_185B6836C();

    v8 = 0xD000000000000010;
    v9 = 0x8000000185B79070;
    v4 = (a1 & 1) == 0;
  }

  else
  {
    if (a1 >> 6)
    {
      v1 = 0x646469487465732ELL;
      v2 = 0xEB00000000286E65;
    }

    else
    {
      v1 = 0x6B636F4C7465732ELL;
      v2 = 0xEB00000000286465;
    }

    v8 = v1;
    v9 = v2;
    v4 = (a1 & 1) == 0;
  }

  if (v4)
  {
    v5 = 0x65736C6166;
  }

  else
  {
    v5 = 1702195828;
  }

  if (v4)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  MEMORY[0x1865FCF60](v5, v6);

  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v8, v9);

  return 0xD000000000000017;
}

unint64_t sub_185B63E70(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      sub_185B6836C();

      v6 = 0x8000000185B78F90;
      v7 = 0xD00000000000002FLL;
    }

    else
    {
      sub_185B6836C();

      v6 = 0x8000000185B78FC0;
      v7 = 0xD000000000000027;
    }

    v12 = v7;
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    sub_185B6836C();

    v5 = "appNoLongerLockable(";
    goto LABEL_8;
  }

  if (a3 != 3)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        v8 = "SettingsAuthorityEvent.";
        v9 = 0xD000000000000030;
        goto LABEL_21;
      }

      v11 = "clearPreferencesForNonHideableApps";
    }

    else
    {
      if (!(a1 | a2))
      {
        v8 = "ForNonLockableApps";
        v9 = 0xD00000000000001BLL;
LABEL_21:
        MEMORY[0x1865FCF60](v9, v8 | 0x8000000000000000);
        return 0xD000000000000017;
      }

      v11 = "clearPreferencesForNonLockableApps";
    }

    v8 = (v11 - 32);
    v9 = 0xD000000000000022;
    goto LABEL_21;
  }

  sub_185B6836C();

  v5 = "appNoLongerHideable(";
LABEL_8:
  v6 = (v5 - 32) | 0x8000000000000000;
  v12 = 0xD000000000000014;
LABEL_14:
  v13 = v6;
  MEMORY[0x1865FCF60](a1, a2);
  MEMORY[0x1865FCF60](41, 0xE100000000000000);
  MEMORY[0x1865FCF60](v12, v13);

  return 0xD000000000000017;
}

uint64_t sub_185B6406C()
{
  sub_185ACEE6C();
  if (qword_1EA8CB718 != -1)
  {
    swift_once();
  }

  v0 = sub_185B67B8C();
  __swift_project_value_buffer(v0, qword_1EA8D2278);
  v1 = sub_185B67B6C();
  v2 = sub_185B680AC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_185AC1000, v1, v2, "checking for u13 account", v3, 2u);
    MEMORY[0x1865FE2F0](v3, -1, -1);
  }

  return sub_185B65124();
}

id sub_185B6415C(unsigned __int8 a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = *v4;
  v12 = a1 >> 6;
  if (v12 != 3)
  {
    if ((sub_185AC9DE4() & 1) == 0)
    {
      return sub_185AD0148(8uLL, 0, 0, 262, 0xD000000000000034, 0x8000000185B78FF0);
    }

    v10 = *v4;
  }

  v13 = v10[22];
  (*(v11[14] + 40))(&v37, a2, a3, v11[10]);
  sub_185AC66F8(&v37, v40);
  if (a1 > 0x3Fu)
  {
    if (v12 == 1)
    {
      v26 = (v4 + *(*v4 + 192));
      v27 = v26[3];
      v28 = v26[4];
      v29 = __swift_project_boxed_opaque_existential_1(v26, v27);
      v30 = *(*v5 + 200);
      v31 = *(*v5 + 208);
      v33 = v11[17];
      v38 = v11[13];
      v32 = v38;
      v39 = v33;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v37);
      (*(*(v32 - 8) + 16))(boxed_opaque_existential_1, v5 + v31, v32);
      v35 = __swift_project_boxed_opaque_existential_1(v40, v41);
      v25 = sub_185B65CE4(v35, v29, v5 + v30, &v37, &type metadata for AppRecordProtectabilityInfo, v11[12], v27, &off_1EF466208, *(v11[16] + 8), *(v28 + 8));
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      sub_185B662E0(&v37);
      if (v25)
      {
        return v25;
      }

      return 0;
    }

LABEL_11:
    __swift_destroy_boxed_opaque_existential_0Tm(v40);
    return 0;
  }

  v14 = (a4 >> 8) & 1;
  v15 = (v5 + *(*v5 + 192));
  v16 = v15[3];
  v17 = v15[4];
  v18 = __swift_project_boxed_opaque_existential_1(v15, v16);
  v19 = *(*v5 + 200);
  v20 = *(*v5 + 208);
  v22 = v11[17];
  v38 = v11[13];
  v21 = v38;
  v39 = v22;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v37);
  (*(*(v21 - 8) + 16))(v23, v5 + v20, v21);
  v24 = __swift_project_boxed_opaque_existential_1(v40, v41);
  v25 = sub_185B65800(v24, v14, v18, v5 + v19, &v37, &type metadata for AppRecordProtectabilityInfo, v16, v11[12], &off_1EF466208, *(v17 + 8), *(v11[16] + 8));
  sub_185B662E0(&v37);
  if (!v25)
  {
    goto LABEL_11;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  return v25;
}

char *sub_185B644A0(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = *(*(*v3 + 112) + 32);
  v9 = *(*v3 + 80);
  v10 = v3 + *(*v3 + 176);
  v11 = v8(a1, a2, v9);
  v12 = MEMORY[0x1E69E7CC0];
  if ((v11 & 1) == 0 && (a3 & 0x10000) == 0)
  {
    v12 = sub_185B3CF60(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v12 + 2);
    v13 = *(v12 + 3);
    if (v14 >= v13 >> 1)
    {
      v12 = sub_185B3CF60((v13 > 1), v14 + 1, 1, v12);
    }

    *(v12 + 2) = v14 + 1;
    v12[v14 + 32] = -64;
  }

  if (qword_1EA8CB7B0 != -1)
  {
    swift_once();
  }

  if (sub_185AC3A7C(a1, a2, qword_1EA8D22B0))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_185B3CF60(0, *(v12 + 2) + 1, 1, v12);
    }

    v16 = *(v12 + 2);
    v15 = *(v12 + 3);
    if (v16 >= v15 >> 1)
    {
      v12 = sub_185B3CF60((v15 > 1), v16 + 1, 1, v12);
    }

    *(v12 + 2) = v16 + 1;
    v12[v16 + 32] = -64;
  }

  if (v11)
  {
    if ((a3 & 0x10000) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_185B3CF60(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_185B3CF60((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v12[v18 + 32] = 0x80;
    }

    if (a3)
    {
      v19 = (v4 + *(*v4 + 192));
      v20 = v19[3];
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      if (((*(*(v21 + 8) + 8))(a1, a2, v20) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if ((a3 & 0x100) != 0)
    {
      v22 = (v4 + *(*v4 + 192));
      v23 = v22[3];
      v24 = v22[4];
      __swift_project_boxed_opaque_existential_1(v22, v23);
      if (((*(*(v24 + 8) + 16))(a1, a2, v23) & 1) == 0)
      {
LABEL_25:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_185B3CF60(0, *(v12 + 2) + 1, 1, v12);
        }

        v26 = *(v12 + 2);
        v25 = *(v12 + 3);
        if (v26 >= v25 >> 1)
        {
          v12 = sub_185B3CF60((v25 > 1), v26 + 1, 1, v12);
        }

        *(v12 + 2) = v26 + 1;
        v12[v26 + 32] = -64;
      }
    }
  }

  return v12;
}

id sub_185B647EC()
{
  v1 = v0;
  v2 = sub_185B67C9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_185B67CDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v15 = sub_185ACB94C(v14);

  v16 = *(v15 + 16);
  v17 = &off_185B6A000;
  v34 = v9;
  v35 = v8;
  if (v16 == 1)
  {
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v25 = result;
      sub_185AD7200(v15);
      if (v26)
      {
        v27 = sub_185B67E1C();
      }

      else
      {
        v27 = 0;
      }

      v28 = [v25 applicationIsInstalled_];

      if (v28)
      {

        v18 = v15;
      }

      else
      {
        v18 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v18 = MEMORY[0x1E69E7CD0];
  if (v16)
  {
    v33 = v3;
    v42 = MEMORY[0x1E69E7CD0];
    v19 = [objc_opt_self() enumeratorWithOptions_];
    v20 = swift_allocObject();
    *(v20 + 16) = v15;
    *(v20 + 24) = &v42;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_185AD8474;
    *(v21 + 24) = v20;
    v40 = sub_185B40994;
    v41 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_185AD7364;
    v39 = &block_descriptor_13_1;
    v22 = _Block_copy(&aBlock);

    [v19 swift:v22 forEach:?];

    _Block_release(v22);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v18 = v42;

      v3 = v33;
      v17 = &off_185B6A000;
      goto LABEL_12;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_12:
  if (*(v18 + 16) <= *(v15 + 16) >> 3)
  {
    aBlock = v15;
    sub_185ACC0B0(v18);

    v29 = aBlock;
  }

  else
  {
    v29 = sub_185B3FA60(v18, v15);
  }

  v30 = *(v1 + 24);
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v1;
  v40 = sub_185B662D8;
  v41 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v37 = *(v17 + 482);
  v38 = sub_185ACA0E8;
  v39 = &block_descriptor_19_1;
  v32 = _Block_copy(&aBlock);

  sub_185B67CBC();
  v42 = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v13, v7, v32);
  _Block_release(v32);
  (*(v3 + 8))(v7, v2);
  (*(v34 + 8))(v13, v35);
}

uint64_t sub_185B64D00(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; result = )
  {
    v11 = i;
LABEL_9:
    v12 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
    v13 = *(a2 + 16);
    v7 &= v7 - 1;
    v14 = *v12;
    v15 = v12[1];

    sub_185B67C2C();
  }

  while (1)
  {
    v11 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
    }

    v7 = *(v4 + 8 * v11);
    ++i;
    if (v7)
    {
      i = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_185B64E04(uint64_t a1, uint64_t a2)
{
  v4 = sub_185B67C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_185B67CDC();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v19, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v2 + 24);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v2;
  aBlock[4] = sub_185B657F8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_185ACA0E8;
  aBlock[3] = &block_descriptor_4_0;
  v16 = _Block_copy(aBlock);

  sub_185B67CBC();
  v20 = MEMORY[0x1E69E7CC0];
  sub_185B26D00();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
  sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
  sub_185B682CC();
  MEMORY[0x1865FD170](0, v14, v9, v16);
  _Block_release(v16);
  (*(v5 + 8))(v9, v4);
  (*(v10 + 8))(v14, v19);
}

uint64_t sub_185B650AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = *(a2 + 16);
    v4 = (result + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      sub_185B67C2C();

      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_185B65124()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_185B67C9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_185B67CDC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2[25];
  result = (*(*(v2[16] + 8) + 8))(v2[12]);
  if (result)
  {
    v21 = v1[3];
    aBlock[4] = sub_185B66564;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_185ACA0E8;
    aBlock[3] = &block_descriptor_25;
    v17 = _Block_copy(aBlock);
    v20 = v9;
    v18 = v17;

    sub_185B67CBC();
    v22 = MEMORY[0x1E69E7CC0];
    sub_185B26D00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CCF50, &unk_185B6C580);
    sub_185AC7370(&qword_1ED6F45A0, &qword_1EA8CCF50, &unk_185B6C580);
    sub_185B682CC();
    MEMORY[0x1865FD170](0, v14, v8, v18);
    _Block_release(v18);
    (*(v4 + 8))(v8, v3);
    (*(v10 + 8))(v14, v20);
  }

  return result;
}

uint64_t sub_185B65410()
{
  v1 = *v0;
  v2 = *(v0 + 16);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 176));
  (*(*(v1[11] - 8) + 8))(v0 + *(*v0 + 184));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + *(*v0 + 192)));
  (*(*(v1[12] - 8) + 8))(v0 + *(*v0 + 200));
  (*(*(v1[13] - 8) + 8))(v0 + *(*v0 + 208));
  return v0;
}

uint64_t sub_185B655C0()
{
  sub_185B65410();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t get_enum_tag_for_layout_string_13AppProtection22SettingsAuthorityEventO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_185B6564C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_185B65694(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_185B656D8(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

id sub_185B65800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v44 = a5;
  v43 = a2;
  v17 = *(a8 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](a1, a2);
  v21 = &v42[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v19, v25);
  v27 = &v42[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v49 = v28;
  v50 = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v48);
  (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
  (*(v23 + 16))(v27, a3, a7);
  (*(v17 + 16))(v21, a4, a8);
  sub_185B4A164(v44, v46);
  if (v47)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v45 + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v35 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 62, 0xD000000000000072, 0x8000000185B78080);

        goto LABEL_15;
      }
    }
  }

  else
  {
    sub_185B662E0(v46);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v32 = 0xD000000000000020;
    v33 = 0x8000000185B77F30;
    v31 = 17;
    v34 = 66;
    goto LABEL_14;
  }

  v46[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v31 = 2;
    v32 = 0;
    v33 = 0;
    v34 = 70;
    goto LABEL_14;
  }

  if ((*(a11 + 8))(a8))
  {
    v31 = 12;
    v32 = 0;
    v33 = 0;
    v34 = 74;
LABEL_14:
    v35 = sub_185AD0148(v31, v32, v33, v34, 0xD000000000000072, 0x8000000185B78080);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v48);
    (*(v23 + 8))(v27, a7);
    (*(v17 + 8))(v21, a8);
    return v35;
  }

  if (v43)
  {
    v32 = 0xD000000000000026;
    v33 = 0x8000000185B77BF0;
    v31 = 3;
    v34 = 78;
    goto LABEL_14;
  }

  v37 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v35 = sub_185ACF880(*v37, v37[1]);
  if (v35)
  {
    goto LABEL_15;
  }

  result = [*__swift_project_boxed_opaque_existential_1(v48 v49)];
  if (result)
  {
    v38 = result;
    v39 = sub_185B67E4C();
    v41 = v40;

    LOBYTE(v38) = (*(a10 + 8))(v39, v41, a7, a10);

    if (v38)
    {
      v35 = 0;
      goto LABEL_15;
    }

    v32 = 0xD000000000000023;
    v33 = 0x8000000185B78100;
    v31 = 9;
    v34 = 86;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_185B65CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a6;
  v54[0] = a4;
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](a1, a2);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v18, v24);
  v26 = v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v27;
  v59 = v28;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  v30 = *(*(a5 - 8) + 16);
  v31 = a5;
  v32 = v16;
  v30(boxed_opaque_existential_1, a1, v31);
  (*(v22 + 16))(v26, a2, a7);
  (*(v16 + 16))(v20, a3, v11);
  sub_185B4A164(v54[0], v55);
  if (v56)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD608, &unk_185B6ED18);
    type metadata accessor for APPersistentStore();
    if (swift_dynamicCast())
    {
      if ((*(*(v54[1] + 16) + OBJC_IVAR____TtC13AppProtection27APDaemonPersistentContainer_isAvailable) & 1) == 0)
      {
        v37 = sub_185AD0148(0x12uLL, 0xD000000000000051, 0x8000000185B77FF0, 28, 0xD00000000000005ELL, 0x8000000185B77F60);

        goto LABEL_15;
      }
    }
  }

  else
  {
    sub_185B662E0(v55);
  }

  if (qword_1EA8CB9A0 != -1)
  {
    swift_once();
  }

  if (byte_1EA8CB9A8 != 1)
  {
    v34 = 0xD000000000000020;
    v35 = 0x8000000185B77F30;
    v33 = 17;
    v36 = 32;
    goto LABEL_14;
  }

  v55[0] = 0;
  if ((AppProtectionFeatures.enabled.getter() & 1) == 0)
  {
    v33 = 2;
    v34 = 0;
    v35 = 0;
    v36 = 36;
    goto LABEL_14;
  }

  if ((*(a9 + 8))(v11))
  {
    v33 = 12;
    v34 = 0;
    v35 = 0;
    v36 = 40;
LABEL_14:
    v37 = sub_185AD0148(v33, v34, v35, v36, 0xD00000000000005ELL, 0x8000000185B77F60);
LABEL_15:
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    (*(v22 + 8))(v26, a7);
    (*(v32 + 8))(v20, v11);
    return v37;
  }

  v39 = __swift_project_boxed_opaque_existential_1(v57, v58);
  v37 = sub_185AD0A7C(*v39, v39[1]);
  if (v37)
  {
    goto LABEL_15;
  }

  v40 = v26;
  v54[0] = v20;
  v41 = v11;
  v42 = a7;
  result = [*__swift_project_boxed_opaque_existential_1(v57 v58)];
  if (result)
  {
    v43 = result;
    v44 = sub_185B67E4C();
    v46 = v45;

    v47 = v44;
    a7 = v42;
    LOBYTE(v43) = (*(a10 + 8))(v47, v46, v42, a10);

    if ((v43 & 1) == 0)
    {
      goto LABEL_23;
    }

    result = [*__swift_project_boxed_opaque_existential_1(v57 v58)];
    if (result)
    {
      v48 = result;
      v49 = sub_185B67E4C();
      v51 = v50;

      v52 = v49;
      a7 = v42;
      v53 = (*(a10 + 16))(v52, v51, v42, a10);

      if (v53)
      {
        v37 = 0;
LABEL_24:
        v11 = v41;
        v20 = v54[0];
        v26 = v40;
        goto LABEL_15;
      }

LABEL_23:
      v37 = sub_185AD0148(9uLL, 0xD000000000000023, 0x8000000185B77FC0, 48, 0xD00000000000005ELL, 0x8000000185B77F60);
      goto LABEL_24;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_185B66224(int a1, int a2)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if ((a2 & 0xC0) != 0x80)
      {
        return 0;
      }

      return (a2 ^ a1 ^ 1) & 1;
    }

    if (a2 == 192)
    {
      return 1;
    }
  }

  else
  {
    if (!(a1 >> 6))
    {
      if (a2 >= 0x40u)
      {
        return 0;
      }

      return (a2 ^ a1 ^ 1) & 1;
    }

    if ((a2 & 0xC0) == 0x40)
    {
      return (a2 ^ a1 ^ 1) & 1;
    }
  }

  return 0;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_185B662E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8CD600, &qword_185B6ED10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for PreferenceSettingAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7D)
  {
    goto LABEL_17;
  }

  if (a2 + 131 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 131) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 131;
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

      return (*a1 | (v4 << 8)) - 131;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 131;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v6 >= 0x7C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for PreferenceSettingAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x7D)
  {
    v4 = 0;
  }

  if (a2 > 0x7C)
  {
    v5 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
    *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_185B664E8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 1) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_185B66514(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 & 1 ^ 0xC1;
  }

  return result;
}

void sub_185B6657C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_185B665E4()
{
  v1 = *v0;
  v17 = v0[1];
  v18 = v1;
  v11[5] = v1;
  v11[6] = v17;
  v2 = v0[2];
  v15 = v0[3];
  v16 = v2;
  v11[7] = v2;
  v11[8] = v15;
  v3 = v0[5];
  v14 = v0[4];
  v12 = MEMORY[0x1E69E7CD0];
  v13 = v3;
  v11[9] = v14;
  v11[10] = v3;
  sub_185B668E4(&v18, v11);
  sub_185B668E4(&v17, v11);
  sub_185B668E4(&v16, v11);
  sub_185B668E4(&v15, v11);
  sub_185B668E4(&v14, v11);
  sub_185B668E4(&v13, v11);

  sub_185B66724(v4);

  sub_185B66724(v5);

  sub_185B66724(v6);

  sub_185B66724(v7);

  sub_185B66724(v8);

  sub_185B66724(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  swift_arrayDestroy();
  return v12;
}

uint64_t sub_185B66724(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_185AC407C(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_185B66828()
{
  v1 = *v0;
  sub_185B6866C();
  MEMORY[0x1865FD6D0](v1);
  return sub_185B686AC();
}

uint64_t sub_185B6689C()
{
  sub_185B6866C();
  MEMORY[0x1865FD6D0](*v0);
  return sub_185B686AC();
}

uint64_t sub_185B668E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD2B0, &qword_185B6D8B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_185B66998(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
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

uint64_t sub_185B669E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_185B66A78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
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

uint64_t sub_185B66AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
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

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id DataAccess.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id DataAccess.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DataAccess();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id DataAccess.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataAccess();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static DataAccess.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_185B66CF4(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_185B67E4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_185B66D58(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = *a1;
    v8 = sub_185B67E1C();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  [v6 *a5];
}

void sub_185B66DC8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 raw_audit_token];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185B67A5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_185B66E30(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v4 = *a1;
    v3 = sub_185B67A4C();
  }

  v5 = v3;
  [v2 setRaw_audit_token_];
}

uint64_t sub_185B66EA8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 transaction_uuid];
  if (v3)
  {
    v4 = v3;
    sub_185B67ADC();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_185B67AFC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_185B66F4C(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8CD9A0, &unk_185B6C2C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v8 = &v13 - v7;
  sub_185AE7B2C(a1, &v13 - v7);
  v9 = *a2;
  v10 = sub_185B67AFC();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_185B67ABC();
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTransaction:v12 uuid:?];
}

uint64_t sub_185B67078@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for DataAccess();
  result = sub_185B6837C();
  *a1 = result;
  return result;
}

id PreferenceSetting.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id PreferenceSetting.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for PreferenceSetting();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id PreferenceSetting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreferenceSetting();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static PreferenceSetting.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v1 = sub_185B67E1C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_185B672AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 bundleid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_185B67E4C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_185B67314(uint64_t *a1, void **a2)
{
  v2 = *a2;
  if (a1[1])
  {
    v3 = *a1;
    v4 = sub_185B67E1C();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v2 setBundleid_];
}

uint64_t sub_185B67384@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for PreferenceSetting();
  result = sub_185B6837C();
  *a1 = result;
  return result;
}

void APDoFirstRunWork_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "Failed to open semaphore, not doing first-run work: errno=%{darwin.errno}d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "connection to %@ interrupted", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __APGetConnectionWithNameAndActiveCacheWithLock_block_invoke_152_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_185AC1000, a2, OS_LOG_TYPE_ERROR, "connection to %@ invalidated", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void __APGetAuditTokenForSelf_block_invoke_cold_1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_185AC1000, a2, OS_LOG_TYPE_FAULT, "failed to get audit token for current process: %llx", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void gotLoadHelper_x21__OBJC_CLASS___PDCPreflightManager(double a1)
{
  if (!atomic_load(dlopenHelperFlag_PrivacyDisclosureCore))
  {
    dlopenHelper_PrivacyDisclosureCore(a1);
  }
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PrivacyDisclosureCore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PrivacyDisclosureCore.framework/PrivacyDisclosureCore", 0);
  atomic_store(1u, dlopenHelperFlag_PrivacyDisclosureCore);
  return a1;
}