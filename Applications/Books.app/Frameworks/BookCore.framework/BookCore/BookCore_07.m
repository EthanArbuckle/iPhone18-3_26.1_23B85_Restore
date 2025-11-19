uint64_t sub_1BBAE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_18AFC0(&qword_3411D0);
  v31 = a2;
  result = sub_1EF654();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_1EF784();
      sub_1EF794(v20);
      result = sub_1EF7B4();
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
      *(*(v7 + 48) + v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

uint64_t sub_1BBD6C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_18AFC0(&qword_340AD0);
  v33 = a2;
  result = sub_1EF654();
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
        sub_19DE70(v24, v34);
      }

      else
      {
        sub_18E2AC(v24, v34);
      }

      sub_1EF784();
      sub_1EEF74();
      result = sub_1EF7B4();
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
      result = sub_19DE70(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1BC024(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1EDEF4();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1EDF14();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_18AFC0(&unk_341120);
  v47 = a2;
  result = sub_1EF654();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1BD9D8(&qword_340B70, &type metadata accessor for UUID);
      result = sub_1EEE84();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
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
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

void *sub_1BC508()
{
  v1 = v0;
  v2 = type metadata accessor for Achievement();
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC0(&qword_340B90);
  v5 = *v0;
  v6 = sub_1EF644();
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
        v21 = *(*(v5 + 48) + v20);
        v22 = *(v24 + 72) * v20;
        sub_1BDB50(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + v20) = v21;
        result = sub_1B29E0(v4, *(v7 + 56) + v22);
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

id sub_1BC714()
{
  v1 = v0;
  sub_18AFC0(&qword_3411D0);
  v2 = *v0;
  v3 = sub_1EF644();
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
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1BC870()
{
  v1 = v0;
  sub_18AFC0(&qword_340AD0);
  v2 = *v0;
  v3 = sub_1EF644();
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
        sub_18E2AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_19DE70(v25, (*(v4 + 56) + v22));
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

char *sub_1BCA50(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v45 = &v35 - v7;
  v44 = a2(0);
  v48 = *(v44 - 8);
  __chkstk_darwin(v44);
  v43 = &v35 - v8;
  sub_18AFC0(a3);
  v9 = *v3;
  v10 = sub_1EF644();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

uint64_t sub_1BCDAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_18E2AC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1BCDF8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
  }

  sub_19A4B0(a1 + 32, &v44, &unk_341600);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_19DE70(v46, v41);
  v9 = *a3;
  v10 = sub_1B0598(v8, v7);
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
    sub_1BBD6C(v15, a2 & 1);
    v10 = sub_1B0598(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_1EF714();
      __break(1u);
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_1BC870();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    swift_errorRetain();
    sub_18AFC0(&qword_3411A0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_18E310(v41);
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_19DE70(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_19A4B0(v25, &v44, &unk_341600);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_19DE70(v46, v41);
      v29 = *a3;
      v30 = sub_1B0598(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_1BBD6C(v34, 1);
        v30 = sub_1B0598(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_19DE70(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1EF564(30);
  v48._object = 0x800000000024FA30;
  v48._countAndFlagsBits = 0xD00000000000001BLL;
  sub_1EEF84(v48);
  sub_1EF5F4();
  v49._countAndFlagsBits = 39;
  v49._object = 0xE100000000000000;
  sub_1EEF84(v49);
  result = sub_1EF614();
  __break(1u);
  return result;
}

uint64_t sub_1BD1E8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_18E2AC(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_19DE70(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1927B4(v21, &unk_341110);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1BD348(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1BD1E8(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_19DE70(v44, v42);
  v14 = *a5;
  result = sub_1B0598(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1BBD6C(v20, a4 & 1);
    result = sub_1B0598(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1EF714();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_1BC870();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_18E310(v25);
    sub_19DE70(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_19DE70(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1BD1E8(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_19DE70(v44, v42);
        v32 = *a5;
        result = sub_1B0598(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_1BBD6C(v36, 1);
          result = sub_1B0598(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_18E310(v31);
          sub_19DE70(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_19DE70(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1BD1E8(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1AD018();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1BD658(void *a1)
{
  v3 = [a1 segmentsAsStrings];
  v4 = sub_1EEFE4();

  v5 = [a1 segmentSetsAsStrings];
  v6 = sub_1EEFE4();

  v7 = [a1 treatmentsAsStrings];
  v8 = sub_1EEFE4();

  type metadata accessor for ABData();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v6;
  v9[4] = v8;
  v10 = *&v1[OBJC_IVAR___BCRCDataContainer_accessQueue];
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = 1;
  *(v11 + 32) = v9;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1BDFD4;
  *(v12 + 24) = v11;
  v18[4] = sub_1ADC78;
  v18[5] = v12;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_199688;
  v18[3] = &unk_2D0C88;
  v13 = _Block_copy(v18);
  swift_retain_n();
  v14 = v10;
  v15 = v1;

  dispatch_sync(v14, v13);

  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BD894@<X0>(void *a1@<X8>)
{
  result = NSUserDefaults.rcDataContainerWatchedKeyPaths.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BD9D8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BDA20()
{
  result = qword_341100;
  if (!qword_341100)
  {
    sub_1928F4(255, &qword_340388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341100);
  }

  return result;
}

uint64_t sub_1BDA88()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BDAD0()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1BDB50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Achievement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BDBB4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18C9D4;

  return sub_1B9A7C(a1, a2);
}

uint64_t sub_1BDC64()
{

  return _swift_deallocObject(v0, 49, 7);
}

uint64_t sub_1BDCE0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1BDD34()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1BDD74()
{
  v1 = *(v0 + 16);
  v2 = sub_1EEED4();
  [v1 refreshNamespace:v2];
}

uint64_t sub_1BDDD0()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1BDE14()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BDE54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1BDEA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_19D4D4(a1, a2);
  }

  return a1;
}

uint64_t sub_1BDEB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BDF08()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1BDF50()
{

  return _swift_deallocObject(v0, 24, 7);
}

id UIView.applyCornerRadius(_:)(double a1)
{
  v3 = sub_18AFC0(&qword_3411E8);
  __chkstk_darwin(v3 - 8);
  v5 = &v8 - v4;
  if (_UISolariumEnabled())
  {
    sub_1EECC4();
    v6 = sub_1EECD4();
    (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
    return sub_1EF2D4();
  }

  else
  {

    return [v1 _setContinuousCornerRadius:a1];
  }
}

Swift::Void __swiftcall UIView.applyCornerRadius(from:)(UIView from)
{
  v3 = sub_18AFC0(&qword_3411E8);
  __chkstk_darwin(v3 - 8);
  if (_UISolariumEnabled())
  {
    sub_1EF2C4();
    sub_1EF2D4();
  }

  else
  {
    [(objc_class *)from.super.super.isa _continuousCornerRadius];

    [v1 _setContinuousCornerRadius:?];
  }
}

id ReadingGoalsServiceClient.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingGoalsServiceClient();
  return objc_msgSendSuper2(&v2, "init");
}

id ReadingGoalsServiceClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReadingGoalsServiceClient();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall BCCardViewController.configureFeedProxyScrollView(_:)(UIScrollView a1)
{
  v2 = sub_1EEBD4();
  __chkstk_darwin(v2);
  sub_1EF0C4();
  v3 = a1.super.super.super.isa;
  sub_1EEB74();
  sub_1EF0D4();
}

Swift::Void __swiftcall BCCardViewController.configureCardTraitOverrides()()
{
  v0 = sub_1EEBD4();
  __chkstk_darwin(v0);
  sub_1EF0C4();
  sub_1EEB94();
  sub_1EF0D4();
  sub_1EF0C4();
  sub_1EEBC4();
  sub_1EF0D4();
}

uint64_t BCCardViewController.updateNavBarAlphaForTransition(_:)(double a1)
{
  v3 = sub_1EEBD4();
  __chkstk_darwin(v3);
  v4 = [v1 cardNavigationController];
  v5 = [v4 navigationBar];

  [v5 setAlpha:a1];
  sub_1EF0C4();
  sub_1EEB84();
  return sub_1EF0D4();
}

Swift::Void __swiftcall BCCardViewController.updateNavBarAlpha()()
{
  v1 = v0;
  v2 = sub_1EEBD4();
  __chkstk_darwin(v2);
  v3 = [v0 cardNavigationController];
  v4 = [v3 navigationBar];

  v5 = [v1 isCurrentCard];
  v6 = 0.0;
  if (v5)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];

  [v1 isCurrentCard];
  sub_1EF0C4();
  sub_1EEB84();
  sub_1EF0D4();
}

uint64_t Achievement.key.getter()
{
  v1 = type metadata accessor for Achievement();
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDB50(v0, v3);
  result = swift_getEnumCaseMultiPayload();
  if (result >= 2)
  {
    v5 = *(sub_18AFC0(&qword_340AE8) + 48);
    v6 = sub_1EE684();
    (*(*(v6 - 8) + 8))(&v3[v5], v6);
    return 2;
  }

  return result;
}

uint64_t type metadata accessor for Achievement()
{
  result = qword_341298;
  if (!qword_341298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Achievement.description.getter()
{
  v1 = v0;
  v2 = sub_1EE684();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Achievement();
  __chkstk_darwin(v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BDB50(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v8;
  if (!EnumCaseMultiPayload)
  {
    v12 = v8[8];
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1EF564(16);

    strcpy(v18, "dailyReading(");
    HIWORD(v18[1]) = -4864;
    v16 = v10;
    v17 = v12;
    sub_18AFC0(&qword_341218);
    v11._countAndFlagsBits = sub_1EEF44();
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    sub_1EF564(17);

    strcpy(v18, "booksFinished(");
    HIBYTE(v18[1]) = -18;
    v16 = v10;
    v11._countAndFlagsBits = sub_1EF6A4();
LABEL_5:
    sub_1EEF84(v11);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    sub_1EEF84(v19);
    return v18[0];
  }

  v14 = sub_18AFC0(&qword_340AE8);
  (*(v3 + 32))(v5, &v8[*(v14 + 48)], v2);
  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_1EF564(27);
  v20._countAndFlagsBits = 0x72286B6165727473;
  v20._object = 0xEF203A64726F6365;
  sub_1EEF84(v20);
  v16 = v10;
  v21._countAndFlagsBits = sub_1EF6A4();
  sub_1EEF84(v21);

  v22._countAndFlagsBits = 0x203A796164202CLL;
  v22._object = 0xE700000000000000;
  sub_1EEF84(v22);
  sub_1EF5F4();
  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  sub_1EEF84(v23);
  v15 = v18[0];
  (*(v3 + 8))(v5, v2);
  return v15;
}

Swift::Int Achievement.Key.hashValue.getter(unsigned __int8 a1)
{
  sub_1EF784();
  sub_1EF794(a1);
  return sub_1EF7B4();
}

uint64_t static Achievement.Key.mappedKey(from:)(uint64_t a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t _s8BookCore11AchievementO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1EE684();
  v39 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v38 = &v36 - v8;
  v9 = type metadata accessor for Achievement();
  v10 = __chkstk_darwin(v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = (&v36 - v14);
  __chkstk_darwin(v13);
  v17 = (&v36 - v16);
  v18 = sub_18AFC0(&unk_3412F0);
  v19 = __chkstk_darwin(v18 - 8);
  v21 = &v36 - v20;
  v22 = (&v36 + *(v19 + 56) - v20);
  sub_1BDB50(a1, &v36 - v20);
  sub_1BDB50(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1BDB50(v21, v17);
    v25 = *v17;
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_14;
    }

    v26 = *(v22 + 8);
    if (v17[1])
    {
      if (!*(v22 + 8))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v25 != *v22)
      {
        v26 = 1;
      }

      if (v26)
      {
        goto LABEL_19;
      }
    }

    sub_1BF8EC(v21);
    v24 = 1;
    return v24 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1BDB50(v21, v12);
    v27 = *(sub_18AFC0(&qword_340AE8) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v39 + 8))(&v12[v27], v4);
      goto LABEL_14;
    }

    v37 = *v12;
    v28 = *v22;
    v29 = v39;
    v30 = *(v39 + 32);
    v31 = &v12[v27];
    v32 = v38;
    v30(v38, v31, v4);
    v30(v7, v22 + v27, v4);
    if (v37 == *&v28)
    {
      v24 = sub_1EE674();
      v33 = *(v29 + 8);
      v33(v7, v4);
      v33(v32, v4);
      goto LABEL_12;
    }

    v34 = *(v29 + 8);
    v34(v7, v4);
    v34(v32, v4);
LABEL_19:
    sub_1BF8EC(v21);
    goto LABEL_20;
  }

  sub_1BDB50(v21, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_14:
    sub_1BF884(v21);
LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  v24 = *v15 == *v22;
LABEL_12:
  sub_1BF8EC(v21);
  return v24 & 1;
}

unint64_t sub_1BF4D4()
{
  result = qword_341220;
  if (!qword_341220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341220);
  }

  return result;
}

void sub_1BF578()
{
  sub_1BF600();
  if (v0 <= 0x3F)
  {
    sub_1BF698();
    if (v1 <= 0x3F)
    {
      sub_1BF6C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1BF600()
{
  if (!qword_3412A8)
  {
    sub_1BF648();
    if (!v1)
    {
      atomic_store(v0, &qword_3412A8);
    }
  }
}

void sub_1BF648()
{
  if (!qword_3412B0)
  {
    v0 = sub_1EF414();
    if (!v1)
    {
      atomic_store(v0, &qword_3412B0);
    }
  }
}

void *sub_1BF698()
{
  result = qword_3412B8;
  if (!qword_3412B8)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_3412B8);
  }

  return result;
}

void sub_1BF6C8()
{
  if (!qword_3412C0)
  {
    sub_1EE684();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_3412C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Achievement.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Achievement.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BF884(uint64_t a1)
{
  v2 = sub_18AFC0(&unk_3412F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF8EC(uint64_t a1)
{
  v2 = type metadata accessor for Achievement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SwiftUIDragItem.assetID.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID);

  return v1;
}

id SwiftUIDragItem.__allocating_init(assetID:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, "init");
}

id SwiftUIDragItem.init(assetID:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SwiftUIDragItem();
  return objc_msgSendSuper2(&v5, "init");
}

uint64_t SwiftUIDragItem.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  objc_allocWithZone(v2);
  sub_1928F4(0, &qword_341308);
  v4 = sub_1EF2E4();
  if (v4)
  {
    v7 = 0;
    v5 = v4;
    sub_1EEEF4();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SwiftUIDragItem.init(coder:)(void *a1)
{
  sub_1928F4(0, &qword_341308);
  v2 = sub_1EF2E4();
  if (v2)
  {
    v5 = 0;
    v3 = v2;
    sub_1EEEF4();
  }

  type metadata accessor for SwiftUIDragItem();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1BFC58(void *a1)
{
  v2 = sub_1EEED4();
  v3 = sub_1EEED4();
  [a1 encodeObject:v2 forKey:v3];
}

id SwiftUIDragItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SwiftUIDragItem();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t SwiftUIDragItem.loadData(withTypeIdentifier:forItemProviderCompletionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  if ((a1 != 0xD000000000000022 || 0x800000000024DFA0 != a2) && (sub_1EF6D4() & 1) == 0)
  {
    sub_1C0064();
    v14 = swift_allocError();
    *v15 = a1;
    v15[1] = a2;

    a3(0, 0xF000000000000000, v14);
    goto LABEL_8;
  }

  v17 = 0;
  v7 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v17];
  v8 = v17;
  if (!v7)
  {
    v12 = v8;
    v13 = sub_1EDDA4();

    swift_willThrow();
    swift_errorRetain();
    a3(0, 0xF000000000000000, v13);

LABEL_8:

    return 0;
  }

  v9 = sub_1EDE14();
  v11 = v10;

  sub_1BDEB4(v9, v11);
  a3(v9, v11, 0);
  sub_19D4D4(v9, v11);
  sub_19D4D4(v9, v11);
  return 0;
}

unint64_t sub_1C0064()
{
  result = qword_341310;
  if (!qword_341310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341310);
  }

  return result;
}

uint64_t static SwiftUIDragItem.object(withItemProviderData:typeIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  if (a3 == 0xD000000000000022 && 0x800000000024DFA0 == a4 || (sub_1EF6D4() & 1) != 0)
  {
    sub_1928F4(0, &qword_341318);
    v7 = sub_1EF0E4();
    if (!v4)
    {
      if (v7)
      {
        v9 = *(v7 + OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID);
        v8 = *(v7 + OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID + 8);
        v10 = v7;
        v11 = type metadata accessor for SwiftUIDragItem();
        v12 = objc_allocWithZone(v11);
        v13 = &v12[OBJC_IVAR____TtC8BookCore15SwiftUIDragItem_assetID];
        *v13 = v9;
        *(v13 + 1) = v8;
        v17.receiver = v12;
        v17.super_class = v11;

        v5 = objc_msgSendSuper2(&v17, "init");
      }

      else
      {
        sub_1C0064();
        v5 = swift_allocError();
        *v15 = 0;
        v15[1] = 0;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_1C0064();
    swift_allocError();
    *v14 = a3;
    v14[1] = v5;
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1C04C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0510(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0564(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1C057C(void *result, int a2)
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

uint64_t sub_1C05AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 != 0xD000000000000022 || 0x800000000024DFA0 != a2) && (sub_1EF6D4() & 1) == 0)
  {
    sub_1C0064();
    swift_allocError();
    *v16 = a1;
    v16[1] = a2;

    v17 = sub_1EDD94();
    (*(a4 + 16))(a4, 0, v17);

    goto LABEL_8;
  }

  v19 = 0;
  v8 = [objc_opt_self() archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v19];
  v9 = v19;
  if (!v8)
  {
    v14 = v9;
    sub_1EDDA4();

    swift_willThrow();
    swift_errorRetain();
    v15 = sub_1EDD94();
    (*(a4 + 16))(a4, 0, v15);

LABEL_8:

    return 0;
  }

  v10 = sub_1EDE14();
  v12 = v11;

  sub_1BDEB4(v10, v12);
  isa = sub_1EDE04().super.isa;
  (*(a4 + 16))(a4, isa, 0);

  sub_19D4D4(v10, v12);
  sub_19D4D4(v10, v12);
  return 0;
}

id sub_1C0808()
{
  v1 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1C08BC(uint64_t a1)
{
  v3 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1C0914(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id AppAnalyticsExtensionManager.__allocating_init(uploadsEnabled:)(char a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR___BCAppAnalyticsExtensionManager_uploadsEnabled] = a1;
  *&v3[OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController] = [objc_allocWithZone(sub_1EE014()) init];
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, "init");
}

id AppAnalyticsExtensionManager.init(uploadsEnabled:)(char a1)
{
  *&v1[OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___BCAppAnalyticsExtensionManager_uploadsEnabled] = a1;
  *&v1[OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController] = [objc_allocWithZone(sub_1EE014()) init];
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AppAnalyticsExtensionManager();
  return objc_msgSendSuper2(&v4, "init");
}

id AppAnalyticsExtensionManager.init()()
{
  *&v0[OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion] = 0;
  swift_unknownObjectWeakInit();
  v0[OBJC_IVAR___BCAppAnalyticsExtensionManager_uploadsEnabled] = 1;
  *&v0[OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController] = [objc_allocWithZone(sub_1EE014()) init];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAnalyticsExtensionManager();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t sub_1C0CCC(void *a1)
{
  v2 = v1;
  sub_1EE054();
  v4 = sub_1EE044();
  v5 = [objc_opt_self() books];
  v6 = [v5 identifier];

  sub_1EEF04();
  sub_1EE024();

  v7 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v8 = *&v2[v7];
  sub_1EDFF4();

  v9 = *&v2[v7];
  v10 = v2;
  sub_1EE004();

  v11 = *&v2[v7];
  v12 = sub_1EDFE4();

  [a1 ba_setAnalyticsTracker:v12];
  return swift_unknownObjectWeakAssign();
}

void sub_1C0E90()
{
  v1 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v2 = [*(v0 + v1) newSessionAssertion];
  *(v0 + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion) = v2;
  swift_unknownObjectRelease();
  if (qword_33F930 != -1)
  {
    swift_once();
  }

  RCDataContainer.deployStagedDataIfNeeded()();
}

uint64_t sub_1C0FEC()
{
  v1 = OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion;
  v2 = *(v0 + OBJC_IVAR___BCAppAnalyticsExtensionManager_assertion);
  if (v2)
  {
    [v2 invalidate];
  }

  *(v0 + v1) = 0;

  return swift_unknownObjectRelease();
}

void sub_1C10B0()
{
  v1 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_1EDFD4();
}

void sub_1C1188()
{
  sub_1EE054();
  v0 = sub_1EE044();
  sub_1EE034();
}

id AppAnalyticsExtensionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppAnalyticsExtensionManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1C14B8(int a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v3[2]();
  _Block_release(v3);
  v4 = *(v2 + 8);

  return v4();
}

void AppAnalyticsExtensionManager.analyticsSessionData(for:)(uint64_t a1@<X8>)
{
  v2 = sub_1EEF04();
  v4 = v3;
  if (v2 == sub_1EEF04() && v4 == v5)
  {

    goto LABEL_15;
  }

  v7 = sub_1EF6D4();

  if (v7)
  {
LABEL_15:
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 environment];

    v20 = [v19 appVersion];
    goto LABEL_16;
  }

  v8 = sub_1EEF04();
  v10 = v9;
  if (v8 == sub_1EEF04() && v10 == v11)
  {

LABEL_18:
    v24 = [objc_opt_self() sharedProvider];
    v20 = [v24 currentStorefront];

    if (!v20)
    {
      goto LABEL_19;
    }

LABEL_16:
    v21 = sub_1EEF04();
    v23 = v22;

    *(a1 + 24) = &type metadata for String;
    *a1 = v21;
    *(a1 + 8) = v23;
    return;
  }

  v13 = sub_1EF6D4();

  if (v13)
  {
    goto LABEL_18;
  }

  v14 = sub_1EEF04();
  v16 = v15;
  if (v14 != sub_1EEF04() || v16 != v17)
  {
    v25 = sub_1EF6D4();

    if (v25)
    {
      goto LABEL_21;
    }

    v30 = sub_1EEF04();
    v32 = v31;
    if (v30 == sub_1EEF04() && v32 == v33)
    {

LABEL_27:
      v26 = [objc_opt_self() sharedProvider];
      v27 = [v26 isUserSignedInToiTunes];
      goto LABEL_22;
    }

    v34 = sub_1EF6D4();

    if (v34)
    {
      goto LABEL_27;
    }

    v35 = sub_1EEF04();
    v37 = v36;
    if (v35 == sub_1EEF04() && v37 == v38)
    {

LABEL_32:
      v26 = [objc_opt_self() sharedProvider];
      v27 = [v26 isGlobalICloudDriveSyncOptedIn];
      goto LABEL_22;
    }

    v39 = sub_1EF6D4();

    if (v39)
    {
      goto LABEL_32;
    }

LABEL_19:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

LABEL_21:
  v26 = [objc_opt_self() sharedProvider];
  v27 = [v26 isUserSignedInToiCloud];
LABEL_22:
  v28 = v27;

  v29 = [objc_allocWithZone(NSNumber) initWithBool:v28];
  *(a1 + 24) = sub_1C1CC0();
  *a1 = v29;
}

void _s8BookCore28AppAnalyticsExtensionManagerC15didStartSession4withy0aD00D10ControllerC_tF_0()
{
  v0 = sub_18AFC0(&qword_3405B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong ba_effectiveAnalyticsTracker];

    if (v5)
    {
      sub_1EE204();
      sub_1C2144(&qword_341470, &type metadata accessor for AppSessionStartEvent);
      v6 = v5;
      sub_1EE334();

      sub_1EE1E4();
      v7 = sub_1EDEF4();
      (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
      sub_1C2144(&qword_341478, &type metadata accessor for AppSessionEndEvent);
      v8 = v6;
      sub_1EE324();

      sub_1C218C(v2);
    }
  }
}

unint64_t sub_1C1CC0()
{
  result = qword_341430;
  if (!qword_341430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_341430);
  }

  return result;
}

id sub_1C1D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCAppAnalyticsExtensionManager_analyticsController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1C1F44()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C1F8C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18C9D4;

  return sub_1C14B8(v2, v3);
}

uint64_t sub_1C2044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18E3B8;

  return sub_1CDE58(v2, v3, v4);
}

uint64_t sub_1C2104()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C2144(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C218C(uint64_t a1)
{
  v2 = sub_18AFC0(&qword_3405B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static OS_os_log.rcDataContainer.getter()
{
  if (qword_33F938 != -1)
  {
    swift_once();
  }

  v1 = qword_341480;

  return v1;
}

uint64_t sub_1C2254()
{
  sub_19D414();
  result = sub_1EF3F4();
  qword_341480 = result;
  return result;
}

void BRCNamespaceData._booksRecordID(from:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v9 = [objc_opt_self() defaultBag];
  v10 = [v9 remoteConfigSupportedStorefronts];

  v11 = [v10 valuePromise];
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = ObjectType;
  v14[4] = sub_1C2610;
  v14[5] = v12;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1C2620;
  v14[3] = &unk_2D1090;
  v13 = _Block_copy(v14);

  [v11 addFinishBlock:v13];
  _Block_release(v13);
}

uint64_t sub_1C247C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  if (a1)
  {
    sub_1EEFD4();
  }

  v13 = a3;
  v14 = a4;

  __chkstk_darwin(v8);
  v12[2] = &v13;
  v9 = sub_1C280C(sub_1C28B8, v12, &off_2CF310);

  if (v9)
  {
  }

  else
  {
    a4 = 0xE600000000000000;
    a3 = 0x303030303030;
  }

  v13 = sub_1EEF04();
  v14 = v10;

  v15._countAndFlagsBits = a3;
  v15._object = a4;
  sub_1EEF84(v15);

  a5(v13, v14);
}

uint64_t sub_1C25D0()
{

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1C2620(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C26AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C277C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1C27B4()
{
  v1 = *(v0 + 16);
  v2 = sub_1EEED4();
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_1C280C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_1C28B8(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1EF6D4() & 1;
  }
}

void *DisplaySleepController.window.getter()
{
  v1 = OBJC_IVAR___BCDisplaySleepController_window;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DisplaySleepController.window.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___BCDisplaySleepController_window;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DisplaySleepController.init()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR___BCDisplaySleepController_window] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, "init");
}

id DisplaySleepController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t BooksFinished.YearEntry.assets.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t static BooksFinished.YearEntry.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {

      v4 = sub_1C3E2C(v2, v3);

      if (v4)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t BooksFinished.State.currentYearEntry.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t BooksFinished.State.currentYearEntry.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t BooksFinished.State.init(assets:year:allTimeCount:afterCurrentYearCount:priorToCurrentYearCount:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a2;
  a6[1] = result;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t BooksFinishedController.currentYear.setter(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t BooksFinishedController.__allocating_init(dataSource:currentYear:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  BooksFinishedController.init(dataSource:currentYear:)(a1, a2);
  return v4;
}

void *BooksFinishedController.init(dataSource:currentYear:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v3 = sub_1EF104();
  __chkstk_darwin(v3);
  v4 = sub_1EF134();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1EEDE4();
  __chkstk_darwin(v8 - 8);
  v14[1] = sub_1928F4(0, &qword_340388);
  sub_1EEDC4();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
  *&v17 = _swiftEmptyArrayStorage;
  sub_1C4840(&qword_340650, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_18AFC0(&qword_340658);
  sub_19A5C8(&qword_340660, &qword_340658);
  sub_1EF454();
  v2[2] = sub_1EF174();
  v9 = v15;
  sub_19F5E0(v15, (v2 + 4));
  v2[9] = v16;
  v17 = xmmword_2A5AE0;
  v19 = 0;
  v20 = 0;
  v18 = 0;
  sub_18AFC0(&qword_3414B8);
  swift_allocObject();
  v2[3] = sub_1EE7D4();
  v10 = v2[7];
  v11 = v2[8];
  sub_18E35C(v2 + 4, v10);
  v12 = *(v11 + 48);

  v12(sub_1C41F0, v2, v10, v11);

  sub_1C31EC();
  sub_18E310(v9);
  return v2;
}

uint64_t sub_1C31EC()
{
  v1 = v0;
  v47 = sub_1EED84();
  v50 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1EEDE4();
  v48 = *(v3 - 8);
  v49 = v3;
  __chkstk_darwin(v3);
  v45 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1EF084();
  sub_1928F4(0, &qword_341A60);
  v5 = sub_1EF404();
  sub_1EEAA4();

  swift_beginAccess();
  v6 = v1[9];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v44 = swift_allocObject();
  *(v44 + 16) = 0;
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  v10 = v1[7];
  v9 = v1[8];
  sub_18E35C(v1 + 4, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  v52 = v7;
  v12 = *(v9 + 8);
  v13 = v8;

  v12(v6, sub_1C46BC, v11, v10, v9);

  dispatch_group_enter(v13);
  v14 = v1[7];
  v15 = v1[8];
  sub_18E35C(v1 + 4, v14);
  v16 = swift_allocObject();
  v17 = v51;
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  v18 = *(v15 + 24);
  v19 = v13;

  v18(sub_1C46C4, v16, v14, v15);

  dispatch_group_enter(v19);
  v20 = v1[7];
  v21 = v1[8];
  sub_18E35C(v1 + 4, v20);
  v22 = swift_allocObject();
  v23 = v53;
  *(v22 + 16) = v19;
  *(v22 + 24) = v23;
  v24 = *(v21 + 40);
  v25 = v19;

  v26 = v6;
  v24(v6, sub_1C46F0, v22, v20, v21);

  dispatch_group_enter(v25);
  v27 = v1[7];
  v28 = v1[8];
  sub_18E35C(v1 + 4, v27);
  v29 = swift_allocObject();
  v30 = v44;
  *(v29 + 16) = v25;
  *(v29 + 24) = v30;
  v31 = *(v28 + 32);
  v43 = v25;

  v31(v26, sub_1C475C, v29, v27, v28);

  v42[1] = v1[2];
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = swift_allocObject();
  v34 = v52;
  v35 = v53;
  v33[2] = v32;
  v33[3] = v34;
  v33[4] = v26;
  v33[5] = v51;
  v33[6] = v35;
  v33[7] = v30;
  aBlock[4] = sub_1C4818;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D13E0;
  v36 = _Block_copy(aBlock);

  v37 = v45;
  sub_1EEDA4();
  v54 = _swiftEmptyArrayStorage;
  sub_1C4840(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_19A5C8(&qword_3403A0, &qword_340398);
  v39 = v46;
  v38 = v47;
  sub_1EF454();
  v40 = v43;
  sub_1EF0F4();
  _Block_release(v36);

  (*(v50 + 8))(v39, v38);
  (*(v48 + 8))(v37, v49);
}

void sub_1C3898(uint64_t a1, unint64_t a2, NSObject *a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    *(a4 + 16) = a1;
  }

  else
  {
    sub_1EF094();
    sub_1928F4(0, &qword_341A60);
    v8 = sub_1EF404();
    sub_18AFC0(&qword_340AF0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2A5AF0;
    if (a2)
    {
      swift_getErrorValue();
      v10 = sub_1EF724();
      a2 = v11;
    }

    else
    {
      v10 = 0;
    }

    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_1ACF5C();
    if (a2)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (a2)
    {
      v13 = a2;
    }

    *(v9 + 32) = v12;
    *(v9 + 40) = v13;
    sub_1EEAA4();
  }

  dispatch_group_leave(a3);
}

void sub_1C39FC(uint64_t a1, char a2, unint64_t a3, NSObject *a4, uint64_t a5)
{
  if (a2)
  {
    sub_1EF094();
    sub_1928F4(0, &qword_341A60);
    v7 = sub_1EF404();
    sub_18AFC0(&qword_340AF0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2A5AF0;
    if (a3)
    {
      swift_getErrorValue();
      v9 = sub_1EF724();
      a3 = v10;
    }

    else
    {
      v9 = 0;
    }

    *(v8 + 56) = &type metadata for String;
    *(v8 + 64) = sub_1ACF5C();
    if (a3)
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }

    v14 = 0xE000000000000000;
    if (a3)
    {
      v14 = a3;
    }

    *(v8 + 32) = v13;
    *(v8 + 40) = v14;
    sub_1EEAA4();
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = a1;
  }

  dispatch_group_leave(a4);
}

uint64_t sub_1C3B5C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    __chkstk_darwin(v1);
    sub_1EE7F4();
  }

  return result;
}

uint64_t sub_1C3C4C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_19A0F8(*a1, a1[1]);
  swift_beginAccess();
  v12 = *a2;
  swift_beginAccess();
  v13 = *a4;
  swift_beginAccess();
  v14 = *a5;
  swift_beginAccess();
  v15 = *a6;
  *a1 = a3;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v14;
  a1[4] = v15;
}

uint64_t BooksFinishedController.deinit()
{

  sub_18E310(v0 + 32);
  return v0;
}

uint64_t BooksFinishedController.__deallocating_deinit()
{

  sub_18E310(v0 + 32);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall BooksFinishedController.setState(year:)(Swift::Int year)
{
  swift_beginAccess();
  *(v1 + 72) = year;
  sub_1C31EC();
}

uint64_t sub_1C3DE4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  *(v3 + 72) = a1;
  return sub_1C31EC();
}

uint64_t sub_1C3E2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1C3F74(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1C3EE4(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1EF6D4() & 1) == 0)
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

uint64_t sub_1C3F74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
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
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_19A10C(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_1B0598(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_19A52C(&v24);
      return 0;
    }

    sub_19A10C(*(a2 + 56) + 40 * v17, v23);
    v20 = sub_1EF4F4();
    sub_19A52C(v23);
    result = sub_19A52C(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL _s8BookCore13BooksFinishedO5StateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  if (!v2)
  {
    result = 0;
    if (v6)
    {
      return result;
    }

    if (v3 != v7 || v5 != v9)
    {
      return result;
    }

    return v4 == v8;
  }

  if (!v6)
  {
    return 0;
  }

  v10 = sub_1C3E2C(v2, v6);

  result = 0;
  if ((v10 & 1) != 0 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BooksFinished(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BooksFinished(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1C42D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C4330(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 sub_1C4390(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C43A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1C4400(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of BooksFinishedDataSource.fetchFinishedAssets(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18DC8C;

  return v9(a1, a2, a3);
}

uint64_t sub_1C4670()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C471C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1C4788()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C47C0()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1C4828(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C4840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C49B0(uint64_t a1)
{
  v3 = OBJC_IVAR___BCEngagementEventController_dataProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_1C4A08(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___BCEngagementEventController_dataProvider;
  swift_beginAccess();
  *(v3 + v4) = v2;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

id EngagementEventController.init()()
{
  *&v0[OBJC_IVAR___BCEngagementEventController_dataProvider] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementEventController();
  return objc_msgSendSuper2(&v2, "init");
}

void sub_1C4B80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_33F960 != -1)
  {
    swift_once();
  }

  v8 = sub_1EEAF4();
  sub_19C418(v8, qword_3418D8);

  v9 = sub_1EEAD4();
  v10 = sub_1EF084();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1C554C(a1, a2, aBlock);
    _os_log_impl(&dword_0, v9, v10, "Submit event name: %s", v11, 0xCu);
    sub_18E310(v12);
  }

  v13 = OBJC_IVAR___BCEngagementEventController_dataProvider;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_1EEED4();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a3;
    v17[4] = a1;
    v17[5] = a2;
    aBlock[4] = sub_1C5D54;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C52D4;
    aBlock[3] = &unk_2D1458;
    v18 = _Block_copy(aBlock);

    [v14 engagementEventDataForEventWithEventName:v15 completion:v18];
    _Block_release(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1C5AF4(a1, a2, 0);
  }
}

void sub_1C4E14(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_26;
  }

  v11 = Strong;
  if (!a1)
  {

LABEL_26:
    if (qword_33F960 != -1)
    {
LABEL_37:
      swift_once();
    }

    v35 = sub_1EEAF4();
    sub_19C418(v35, qword_3418D8);
    v36 = sub_1EEAD4();
    v37 = sub_1EF094();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_0, v36, v37, "No data received to send with event.", v38, 2u);
    }

    return;
  }

  if (a4)
  {
    v48 = Strong;
    v49 = a5;
    v50 = a6;
    v12 = a4 + 64;
    v13 = 1 << *(a4 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v11 = v14 & *(a4 + 64);
    a5 = (v13 + 63) >> 6;

    a6 = 0;
    for (i = a4; ; a4 = i)
    {
      if (!v11)
      {
        while (1)
        {
          v16 = a6 + 1;
          if (__OFADD__(a6, 1))
          {
            break;
          }

          if (v16 >= a5)
          {

            a5 = v49;
            a6 = v50;
            v11 = v48;
            goto LABEL_31;
          }

          v11 = *(v12 + 8 * v16);
          ++a6;
          if (v11)
          {
            a6 = v16;
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_14:
      v17 = __clz(__rbit64(v11)) | (a6 << 6);
      v18 = *(a4 + 56);
      v19 = (*(a4 + 48) + 16 * v17);
      v21 = *v19;
      v20 = v19[1];
      sub_18E2AC(v18 + 32 * v17, v55);
      v54[0] = v21;
      v54[1] = v20;
      sub_18E2AC(v55, v53);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = a1;
      v23 = sub_1B0598(v21, v20);
      v25 = a1[2];
      v26 = (v24 & 1) == 0;
      v27 = __OFADD__(v25, v26);
      v28 = v25 + v26;
      if (v27)
      {
        goto LABEL_36;
      }

      v29 = v24;
      if (a1[3] < v28)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_19;
      }

      v34 = v23;
      sub_1BC870();
      v23 = v34;
      a1 = v52;
      if (v29)
      {
LABEL_7:
        v15 = (a1[7] + 32 * v23);
        sub_18E310(v15);
        sub_19DE70(v53, v15);

        goto LABEL_8;
      }

LABEL_20:
      a1[(v23 >> 6) + 8] |= 1 << v23;
      v31 = (a1[6] + 16 * v23);
      *v31 = v21;
      v31[1] = v20;
      sub_19DE70(v53, (a1[7] + 32 * v23));
      v32 = a1[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        __break(1u);
        goto LABEL_39;
      }

      a1[2] = v33;
LABEL_8:
      v11 &= v11 - 1;
      sub_1C5EC0(v54);
    }

    sub_1BBD6C(v28, isUniquelyReferenced_nonNull_native);
    v23 = sub_1B0598(v21, v20);
    if ((v29 & 1) != (v30 & 1))
    {
      sub_1EF714();
      __break(1u);
      return;
    }

LABEL_19:
    if (v29)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_31:
  if (qword_33F960 != -1)
  {
LABEL_39:
    swift_once();
  }

  v39 = sub_1EEAF4();
  sub_19C418(v39, qword_3418D8);
  v40 = sub_1EEAD4();
  v41 = sub_1EF084();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v54[0] = v43;
    *v42 = 136315138;

    v44 = sub_1EEE64();
    v46 = v45;

    v47 = sub_1C554C(v44, v46, v54);

    *(v42 + 4) = v47;
    _os_log_impl(&dword_0, v40, v41, "data to send with event: %s", v42, 0xCu);
    sub_18E310(v43);
  }

  sub_1C5AF4(a5, a6, a1);

  swift_bridgeObjectRelease_n();
}

uint64_t sub_1C52D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1EEE54();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

void sub_1C5420()
{
  if (qword_33F960 != -1)
  {
    swift_once();
  }

  v0 = sub_1EEAF4();
  sub_19C418(v0, qword_3418D8);
  oslog = sub_1EEAD4();
  v1 = sub_1EF084();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "Promise for data enqeue did finish.", v2, 2u);
  }
}

id EngagementEventController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EngagementEventController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1C554C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C5618(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_18E2AC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_18E310(v11);
  return v7;
}

unint64_t sub_1C5618(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C5724(a5, a6);
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
    result = sub_1EF594();
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

char *sub_1C5724(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C5770(a1, a2);
  sub_1C58A0(&off_2CF228);
  return v3;
}

char *sub_1C5770(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1C598C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1EF594();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1EEF94();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1C598C(v10, 0);
        result = sub_1EF554();
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

uint64_t sub_1C58A0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C5A00(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C598C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_18AFC0(&qword_3415A8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C5A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_18AFC0(&qword_3415A8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void sub_1C5AF4(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = &type metadata for String;
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  *&aBlock = a1;
  *(&aBlock + 1) = a2;
  sub_19DE70(&aBlock, v17);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = v3;
  sub_1B1A08(v17, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v5 = v16;
  v6 = [objc_opt_self() defaultBag];
  v7 = [objc_allocWithZone(AMSEngagement) initWithBag:v6];

  sub_1C78C4(v5);

  isa = sub_1EEE44().super.isa;

  v9 = [v7 enqueueData:isa];

  v14 = sub_1C5420;
  v15 = 0;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v12 = sub_1C2620;
  v13 = &unk_2D1490;
  v10 = _Block_copy(&aBlock);
  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

uint64_t sub_1C5CD4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1C5D0C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1C5D60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C5D78@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___BCEngagementEventController_dataProvider;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1C5EC0(uint64_t a1)
{
  v2 = sub_18AFC0(&unk_341110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SeriesManagerUpdaterHelper.gatherAllAssetAdamIDs(in:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18C330;

  return sub_1C6A6C(a1);
}

uint64_t sub_1C5FD8(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1C6960(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C60CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1AE078(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1AE078((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_19DE70(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C6350(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  sub_18AFC0(&qword_3417D0);
  v3 = sub_1EEE54();
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C643C;

  return sub_1C6A6C(v3);
}

uint64_t sub_1C643C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_1EDD94();

    (v7)[2](v7, 0, v8);

    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_1C65E0()
{
  sub_18AFC0(&qword_3415E8);
  v0 = sub_1EE834();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2A5D70;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for MResourceType.bookSeries(_:), v0);
  result = (v6)(v5 + v2, enum case for MResourceType.audiobookSeries(_:), v0);
  off_3415B0 = v4;
  return result;
}

id SeriesManagerUpdaterHelper.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeriesManagerUpdaterHelper();
  return objc_msgSendSuper2(&v2, "init");
}

id SeriesManagerUpdaterHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SeriesManagerUpdaterHelper();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1C6818(void *result, int64_t a2, char a3, void *a4)
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
    sub_18AFC0(&unk_341190);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_18AFC0(&unk_341600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6960(char *result, int64_t a2, char a3, char *a4)
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
    sub_18AFC0(&unk_3415F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_1C6A8C()
{
  *(v0 + 16) = _swiftEmptyArrayStorage;
  v1 = *(v0 + 24);
  v2 = *(v1 + 32);
  *(v0 + 72) = v2;
  v3 = 1 << v2;
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (v5)
  {
    v8 = v7;
LABEL_10:
    *(v0 + 32) = v5;
    *(v0 + 40) = v8;
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    *(v0 + 48) = *(*(v1 + 56) + ((v8 << 9) | (8 * v9)));
    sub_1EEA34();
    v10 = swift_dynamicCastClass();
    *(v0 + 56) = v10;
    if (v10)
    {
      swift_unknownObjectRetain();
      v11 = swift_task_alloc();
      *(v0 + 64) = v11;
      *v11 = v0;
      v11[1] = sub_1C6CB0;

      return MSeries.fetchAllAssets()();
    }
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      return MSeries.fetchAllAssets()();
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v1 + 64 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      goto LABEL_10;
    }
  }

  sub_1C60CC(*(v0 + 16));

  v12 = objc_allocWithZone(NSArray);
  isa = sub_1EEFC4().super.isa;

  v14 = [v12 initWithArray:isa];

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1C6CB0()
{

  if (v0)
  {

    v1 = sub_1C78C0;
  }

  else
  {
    v1 = sub_1C6DC8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1C6DC8()
{
  v1 = sub_1EEA24();
  if (v1)
  {
    v2 = v1;
    v3 = v1 & 0xFFFFFFFFFFFFFF8;
    if (v1 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1EF634())
    {
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      v28 = v3;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v7 = sub_1EF584();
        }

        else
        {
          if (v5 >= *(v3 + 16))
          {
            goto LABEL_17;
          }

          v7 = *(v2 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v10 = sub_1EEA54();
        v12 = v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1C6960(0, *(v6 + 2) + 1, 1, v6);
        }

        v14 = *(v6 + 2);
        v13 = *(v6 + 3);
        if (v14 >= v13 >> 1)
        {
          v6 = sub_1C6960((v13 > 1), v14 + 1, 1, v6);
        }

        *(v6 + 2) = v14 + 1;
        v15 = &v6[16 * v14];
        *(v15 + 4) = v10;
        *(v15 + 5) = v12;
        ++v5;
        v3 = v28;
        if (v9 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v6 = _swiftEmptyArrayStorage;
LABEL_20:

    sub_1C5FD8(v6);
  }

  swift_unknownObjectRelease();
  v16 = *(v0 + 40);
  v17 = (*(v0 + 32) - 1) & *(v0 + 32);
  while (v17)
  {
    v18 = *(v0 + 24);
LABEL_28:
    *(v0 + 32) = v17;
    *(v0 + 40) = v16;
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    *(v0 + 48) = *(*(v18 + 56) + ((v16 << 9) | (8 * v20)));
    sub_1EEA34();
    v21 = swift_dynamicCastClass();
    *(v0 + 56) = v21;
    if (v21)
    {
      swift_unknownObjectRetain();
      v22 = swift_task_alloc();
      *(v0 + 64) = v22;
      *v22 = v0;
      v22[1] = sub_1C6CB0;

      return MSeries.fetchAllAssets()();
    }
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return MSeries.fetchAllAssets()();
    }

    v18 = *(v0 + 24);
    if (v19 >= (((1 << *(v0 + 72)) + 63) >> 6))
    {
      break;
    }

    v17 = *(v18 + 8 * v19 + 64);
    ++v16;
    if (v17)
    {
      v16 = v19;
      goto LABEL_28;
    }
  }

  sub_1C60CC(*(v0 + 16));

  v23 = objc_allocWithZone(NSArray);
  isa = sub_1EEFC4().super.isa;

  v25 = [v23 initWithArray:isa];

  v26 = *(v0 + 8);

  return v26(v25);
}

uint64_t _s8BookCore26SeriesManagerUpdaterHelperC6update_4with2inySo12BKSeriesItemC_So9BFMSeries_pSo0J28DatabaseManagedObjectContextCtFZ_0(id a1, uint64_t a2)
{
  v4 = sub_1EE834();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v42 - v9;
  sub_1EEA34();
  result = swift_dynamicCastClass();
  if (result)
  {
    v49 = v8;
    swift_unknownObjectRetain();
    v12 = sub_1EEA14();
    v13 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
    v14 = objc_allocWithZone(NSNumber);
    if (v12)
    {
      v15 = 2;
    }

    else
    {
      v15 = 4;
    }

    v16 = [v14 initWithShort:v15];
    [a1 setItemTypeRaw:v16];

    v17 = sub_1EEA44();
    if (v17)
    {
      v18 = v17;
      v19 = v17 & 0xFFFFFFFFFFFFFF8;
      v47 = a1;
      v48 = a2;
      if (v17 >> 62)
      {
        goto LABEL_36;
      }

      for (i = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1EF634())
      {
        v21 = 0;
        v22 = v18 & 0xC000000000000001;
        v45 = v19;
        v46 = (v5 + 8);
        v43 = v18 & 0xC000000000000001;
        v44 = i;
        v42 = v18 + 32;
        while (2)
        {
          if (v22)
          {
            sub_1EF584();
            v23 = __OFADD__(v21++, 1);
            if (!v23)
            {
LABEL_12:
              if (qword_33F940 != -1)
              {
                swift_once();
              }

              v24 = off_3415B0;
              sub_1EE8E4();
              v25 = 0;
              v26 = *(&dword_10 + v24);
              while (v26 != v25)
              {
                v27 = v25 + 1;
                sub_1C7864();
                v28 = sub_1EEEB4();
                v25 = v27;
                if (v28)
                {
                  v29 = *(v5 + 8);
                  v29(v10, v4);

                  sub_1EE8D4();
                  v30 = sub_1EEED4();

                  a1 = v47;
                  [v47 setMappedItemId:v30];

                  v31 = v49;
                  sub_1EE8E4();
                  v32 = (*(v5 + 88))(v31, v4);
                  if (v32 == enum case for MResourceType.audiobooks(_:))
                  {
                    v33 = 1;
                    v13 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
                    goto LABEL_31;
                  }

                  v13 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
                  if (v32 == enum case for MResourceType.audiobookSeries(_:))
                  {
                    v33 = 2;
                    goto LABEL_31;
                  }

                  if (v32 == enum case for MResourceType.books(_:))
                  {
                    v33 = 3;
                    goto LABEL_31;
                  }

                  if (v32 == enum case for MResourceType.bookSeries(_:))
                  {
                    v33 = 4;
LABEL_31:
                    v34 = [objc_allocWithZone(v13[109]) initWithShort:v33];
                    [a1 setMappedItemTypeRaw:v34];
                  }

                  else
                  {
                    v29(v31, v4);
                    [a1 setMappedItemTypeRaw:0];
                  }

                  goto LABEL_38;
                }
              }

              (*v46)(v10, v4);

              v19 = v45;
              v22 = v43;
              if (v21 != v44)
              {
                continue;
              }

              goto LABEL_37;
            }
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              goto LABEL_35;
            }

            v23 = __OFADD__(v21++, 1);
            if (!v23)
            {
              goto LABEL_12;
            }
          }

          break;
        }

        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        ;
      }

LABEL_37:

      a1 = v47;
      v13 = &_s5JSApp18ProcessEnvironmentC7currentACvgZ_ptr;
    }

LABEL_38:
    sub_1EE924();
    if (!swift_dynamicCastClass())
    {
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRetain();
    v35 = sub_1EE914();
    if (v35 == 2)
    {
      v36 = sub_1EE8F4();
      if (v37)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v39 = [objc_allocWithZone(v13[109]) initWithBool:v35 & 1];
      [a1 setHasTooManyNarrators:v39];

      v36 = sub_1EE8F4();
      if (v40)
      {
LABEL_41:
        if (!sub_1EE904())
        {
LABEL_43:
          swift_unknownObjectRelease();
          return swift_unknownObjectRelease();
        }

LABEL_42:
        isa = sub_1EEFC4().super.isa;

        [a1 setNarratorNames:isa];

        goto LABEL_43;
      }
    }

    v41 = [objc_allocWithZone(v13[109]) initWithInteger:v36];
    [a1 setNarratorCount:v41];

    if (!sub_1EE904())
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  return result;
}

uint64_t sub_1C76A0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1C76E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18C9D4;

  return sub_1C6350(v2, v3);
}

uint64_t sub_1C7798(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_18E3B8;

  return sub_1CDF44(a1, v4, v5, v6);
}

unint64_t sub_1C7864()
{
  result = qword_3415E0;
  if (!qword_3415E0)
  {
    sub_1EE834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3415E0);
  }

  return result;
}

uint64_t sub_1C78C4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_18AFC0(&qword_3417E0);
    v2 = sub_1EF664();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_18E2AC(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_19DE70(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_19DE70(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_19DE70(v31, v32);
    result = sub_1EF4E4(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_19DE70(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1C7B8C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 16))
  {
    sub_18AFC0(a2);
    v3 = sub_1EF664();
  }

  else
  {
    v3 = &_swiftEmptyDictionarySingleton;
  }

  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      return v3;
    }

    v6 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        result = sub_1B0598(v17, v16);
        if (v20)
        {
          v10 = (v3[6] + 16 * result);
          *v10 = v17;
          v10[1] = v16;
          v11 = result;

          *(v3[7] + 8 * v11) = v19;
          result = swift_unknownObjectRelease();
          v9 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v3[2] >= v3[3])
          {
            goto LABEL_20;
          }

          *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v3[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          *(v3[7] + 8 * result) = v19;
          v22 = v3[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v3[2] = v24;
          v9 = v12;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v9;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_1C7D64()
{
  result = [objc_allocWithZone(type metadata accessor for MBridgedCatalogService()) init];
  qword_341670 = result;
  return result;
}

id static MBridgedCatalogService.default.getter()
{
  if (qword_33F948 != -1)
  {
    swift_once();
  }

  v1 = qword_341670;

  return v1;
}

uint64_t sub_1C7E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_18AFC0(&qword_3416A8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_1C7EF0, 0, 0);
}

uint64_t sub_1C7EF0()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_1EE8C4();
  sub_19C418(v2, qword_341690);
  sub_1EE844();
  v3 = sub_1EE834();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1C8030;
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_1C8208(v9, v7, v8, v5, v6);
}

uint64_t sub_1C8030()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1927B4(v2, &qword_3416A8);
  if (v0)
  {

    return _swift_task_switch(sub_1C81A4, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C81A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C8208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  sub_18AFC0(&qword_3416A8);
  v6[8] = swift_task_alloc();
  v7 = sub_1EE834();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  sub_18AFC0(&qword_3416B0);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_1C8358, 0, 0);
}

uint64_t sub_1C8358()
{
  v1 = [objc_opt_self() sharedReachabilityForInternetConnection];
  if (!v1)
  {
    goto LABEL_9;
  }

  v2 = v1;
  if (![v1 currentReachabilityStatus])
  {

    goto LABEL_9;
  }

  v3 = [v2 connectionRequired];

  if (v3)
  {
LABEL_9:
    v16 = v0[2];
    v17 = sub_1EDDF4();
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

    v18 = v0[1];
LABEL_10:

    return v18();
  }

  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v8 = v0[5];
  v9 = sub_1EDDF4();
  v0[15] = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v0[16] = v11;
  v0[17] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v4, 1, 1, v9);
  sub_19A4B0(v8, v7, &qword_3416A8);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    sub_1927B4(v0[8], &qword_3416A8);
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_1C8A78;
    v13 = v0[6];
    v15 = v0[3];
    v14 = v0[4];

    return MCatalogService.fetch(adamID:relationships:views:additionalParameters:metadata:)(v15, v14, 0, 0, 0, v13);
  }

  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[9];
  v22 = v0[10];
  (*(v22 + 32))(v20, v0[8], v21);
  v23 = *(v22 + 16);
  v23(v19, v20, v21);
  v24 = (*(v22 + 88))(v19, v21);
  if (v24 != enum case for MResourceType.audiobooks(_:) && v24 != enum case for MResourceType.books(_:))
  {
    v25 = v0[14];
    v26 = v0[12];
    v39 = v0[11];
    v27 = v0[9];
    v28 = v0[10];
    v29 = sub_1EE854();
    sub_1CECE0();
    swift_allocError();
    v31 = v30;
    v23(v30, v26, v27);
    (*(*(v29 - 8) + 104))(v31, enum case for MCatalogService.FetchError.invalidResourceType(_:), v29);
    swift_willThrow();
    v32 = *(v28 + 8);
    v32(v26, v27);
    sub_1927B4(v25, &qword_3416B0);
    v32(v39, v27);

    v18 = v0[1];
    goto LABEL_10;
  }

  v33 = swift_task_alloc();
  v0[18] = v33;
  *v33 = v0;
  v33[1] = sub_1C881C;
  v34 = v0[12];
  v35 = v0[6];
  v37 = v0[3];
  v36 = v0[4];

  return MCatalogService.fetch(adamID:type:relationships:views:additionalParameters:metadata:)(v37, v36, v34, 0, 0, 0, v35);
}

uint64_t sub_1C881C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1C8CB8;
  }

  else
  {
    v4 = sub_1C8930;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1C8930()
{
  v1 = v0[19];
  if (v1)
  {
    v2 = v0[16];
    v4 = v0[14];
    v3 = v0[15];
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[9];
    v8 = v0[10];
    sub_1EE9C4();

    (*(v8 + 8))(v6, v7);
    sub_1927B4(v4, &qword_3416B0);
    v2(v5, 0, 1, v3);
    sub_1CD264(v5, v4);
  }

  else
  {
    (*(v0[10] + 8))(v0[12], v0[9]);
  }

  sub_1CD264(v0[14], v0[2]);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1C8A78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1C8D88;
  }

  else
  {
    v4 = sub_1C8B8C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1C8B8C()
{
  v1 = v0[22];
  if (v1)
  {
    sub_1EE9F4();
    if (swift_dynamicCastClass())
    {
      v2 = v0[16];
      v4 = v0[14];
      v3 = v0[15];
      v5 = v0[13];
      sub_1EE9C4();

      sub_1927B4(v4, &qword_3416B0);
      v2(v5, 0, 1, v3);
      sub_1CD264(v5, v4);
    }

    else
    {
    }
  }

  sub_1CD264(v0[14], v0[2]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1C8CB8()
{
  v1 = v0[14];
  (*(v0[10] + 8))(v0[12], v0[9]);
  sub_1927B4(v1, &qword_3416B0);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1C8D88()
{
  sub_1927B4(*(v0 + 112), &qword_3416B0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C8FDC(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v4[2] = a2;
  sub_18AFC0(&qword_3416A8);
  v4[3] = swift_task_alloc();
  v7 = sub_1EE944();
  v4[4] = v7;
  v4[5] = *(v7 - 8);
  v4[6] = swift_task_alloc();
  sub_18AFC0(&qword_3416B0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = _Block_copy(a4);
  v4[10] = sub_1EEF04();
  v4[11] = v8;
  v9 = a3;
  sub_1EE934();

  return _swift_task_switch(sub_1C9168, 0, 0);
}

uint64_t sub_1C9168()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_1EE8C4();
  sub_19C418(v2, qword_341690);
  sub_1EE844();
  v3 = sub_1EE834();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1C92A8;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];
  v8 = v0[6];
  v9 = v0[3];

  return sub_1C8208(v7, v5, v6, v9, v8);
}

uint64_t sub_1C92A8()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  v3[13] = v0;

  sub_1927B4(v2, &qword_3416A8);
  if (v0)
  {

    return _swift_task_switch(sub_1C953C, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    (*(v3[5] + 8))(v3[6], v3[4]);
    sub_1CD264(v4, v5);
    v6 = sub_1EDDF4();
    v7 = *(v6 - 8);
    v9 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v10 = v3[7];
      sub_1EDDB4(v8);
      v9 = v11;
      (*(v7 + 8))(v10, v6);
    }

    v12 = v3[9];
    (v12)[2](v12, v9, 0);
    _Block_release(v12);

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_1C953C()
{
  v1 = v0[9];
  (*(v0[5] + 8))(v0[6], v0[4]);
  v2 = sub_1EDD94();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C961C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  sub_18AFC0(&qword_3416A8);
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_1C96BC, 0, 0);
}

uint64_t sub_1C96BC()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_1EE8C4();
  sub_19C418(v2, qword_341690);
  v3 = sub_1EE834();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1C97E8;
  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return sub_1C8208(v9, v7, v8, v5, v6);
}

uint64_t sub_1C97E8()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1927B4(v2, &qword_3416A8);
  if (v0)
  {

    return _swift_task_switch(sub_1C995C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1C995C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C9B50(uint64_t a1, void *a2, const void *a3)
{
  sub_18AFC0(&qword_3416A8);
  v3[2] = swift_task_alloc();
  v6 = sub_1EE944();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  sub_18AFC0(&qword_3416B0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v3[8] = _Block_copy(a3);
  v3[9] = sub_1EEF04();
  v3[10] = v7;
  v8 = a2;
  sub_1EE934();

  return _swift_task_switch(sub_1C9CD8, 0, 0);
}

uint64_t sub_1C9CD8()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_1EE8C4();
  sub_19C418(v2, qword_341690);
  v3 = sub_1EE834();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_1C9E08;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];

  return sub_1C8208(v7, v5, v6, v9, v8);
}

uint64_t sub_1C9E08()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  v3[12] = v0;

  sub_1927B4(v2, &qword_3416A8);
  if (v0)
  {

    return _swift_task_switch(sub_1CA09C, 0, 0);
  }

  else
  {
    v5 = v3[6];
    v4 = v3[7];
    (*(v3[4] + 8))(v3[5], v3[3]);
    sub_1CD264(v4, v5);
    v6 = sub_1EDDF4();
    v7 = *(v6 - 8);
    v9 = 0;
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v10 = v3[6];
      sub_1EDDB4(v8);
      v9 = v11;
      (*(v7 + 8))(v10, v6);
    }

    v12 = v3[8];
    (v12)[2](v12, v9, 0);
    _Block_release(v12);

    v13 = v3[1];

    return v13();
  }
}

uint64_t sub_1CA09C()
{
  v1 = v0[8];
  (*(v0[4] + 8))(v0[5], v0[3]);
  v2 = sub_1EDD94();

  (v1)[2](v1, 0, v2);

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

BOOL sub_1CA17C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = sub_1EE834();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v11 = sub_1EE8C4();
  sub_19C418(v11, qword_341690);
  sub_1EE844();
  v12 = sub_1CCCB4(a1, a2, v10, a4);
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
  }

  return v12 != 0;
}

id MBridgedCatalogService.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MBridgedCatalogService();
  return objc_msgSendSuper2(&v2, "init");
}

id MBridgedCatalogService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MBridgedCatalogService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MBridgedCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1CA5CC, 0, 0);
}

uint64_t sub_1CA5CC()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1CA6B8;
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_1CA6B8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_1CA804, 0, 0);
  }
}

uint64_t sub_1CA804()
{
  v1 = sub_1C7B8C(*(v0 + 80), &qword_3417F8);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CAA64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, const void *a8)
{
  v8[2] = a6;
  v16 = sub_1EE944();
  v8[3] = v16;
  v8[4] = *(v16 - 8);
  v8[5] = swift_task_alloc();
  v8[6] = _Block_copy(a8);
  if (a1)
  {
    v8[7] = sub_1EEFE4();
    if (a2)
    {
LABEL_3:
      v17 = sub_1EEFE4();
      goto LABEL_6;
    }
  }

  else
  {
    v8[7] = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v8[8] = v17;
  v18 = 0;
  if (a3)
  {
    type metadata accessor for MCatalogRequestRelationship(0);
    v18 = sub_1EEFE4();
    v19 = a4;
    v20 = a5;
    v21 = a7;
  }

  else
  {
    v19 = a5;
    v20 = a7;
    v21 = a4;
  }

  v8[9] = v18;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  if (a4)
  {
    type metadata accessor for MCatalogRequestView(0);
    v25 = sub_1EEFE4();

    v8[10] = v25;
    if (a5)
    {
LABEL_11:
      v26 = sub_1EEE54();

      goto LABEL_14;
    }
  }

  else
  {
    v8[10] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v26 = 0;
LABEL_14:
  v8[11] = v26;
  sub_1EE934();

  return _swift_task_switch(sub_1CAC68, 0, 0);
}

uint64_t sub_1CAC68()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1CAD58;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];

  return MCatalogService.fetch(bookAssets:audiobookAssets:relationships:views:additionalParameters:batchSize:metadata:)(v7, v5, v6, v3, v4, v9, v8);
}

uint64_t sub_1CAD58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_1CB054;
  }

  else
  {
    *(v4 + 112) = a1;

    v5 = sub_1CAF38;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1CAF38()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1C7B8C(v0[14], &qword_3417F8);

  (*(v2 + 8))(v1, v3);
  sub_18AFC0(&qword_3417D8);
  isa = sub_1EEE44().super.isa;

  v5 = v0[6];
  (v5)[2](v5, isa, 0);

  _Block_release(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CB054()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = sub_1EDD94();

  v2 = v0[6];
  (v2)[2](v2, 0, v1);

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t MBridgedCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_1CB140, 0, 0);
}

uint64_t sub_1CB140()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_1CB22C;
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];

  return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v9, v7, v8, v5, v6, v3, v4);
}

uint64_t sub_1CB22C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;

    return _swift_task_switch(sub_1CB378, 0, 0);
  }
}

uint64_t sub_1CB378()
{
  v1 = sub_1C7B8C(*(v0 + 80), &qword_3417F0);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CB5D8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, void *a7, const void *a8)
{
  v8[2] = a6;
  v16 = sub_1EE944();
  v8[3] = v16;
  v8[4] = *(v16 - 8);
  v8[5] = swift_task_alloc();
  v8[6] = _Block_copy(a8);
  if (a1)
  {
    v8[7] = sub_1EEFE4();
    if (a2)
    {
LABEL_3:
      v17 = sub_1EEFE4();
      goto LABEL_6;
    }
  }

  else
  {
    v8[7] = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v17 = 0;
LABEL_6:
  v8[8] = v17;
  v18 = 0;
  if (a3)
  {
    type metadata accessor for MCatalogRequestRelationship(0);
    v18 = sub_1EEFE4();
    v19 = a4;
    v20 = a5;
    v21 = a7;
  }

  else
  {
    v19 = a5;
    v20 = a7;
    v21 = a4;
  }

  v8[9] = v18;
  v22 = v19;
  v23 = v20;
  v24 = v21;
  if (a4)
  {
    type metadata accessor for MCatalogRequestView(0);
    v25 = sub_1EEFE4();

    v8[10] = v25;
    if (a5)
    {
LABEL_11:
      v26 = sub_1EEE54();

      goto LABEL_14;
    }
  }

  else
  {
    v8[10] = 0;
    if (a5)
    {
      goto LABEL_11;
    }
  }

  v26 = 0;
LABEL_14:
  v8[11] = v26;
  sub_1EE934();

  return _swift_task_switch(sub_1CB7DC, 0, 0);
}

uint64_t sub_1CB7DC()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_1CB8CC;
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];
  v8 = v0[5];
  v9 = v0[2];

  return MCatalogService.fetch(bookSeries:audiobookSeries:relationships:views:additionalParameters:batchSize:metadata:)(v7, v5, v6, v3, v4, v9, v8);
}

uint64_t sub_1CB8CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = sub_1CED64;
  }

  else
  {
    *(v4 + 112) = a1;

    v5 = sub_1CBAAC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1CBAAC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1C7B8C(v0[14], &qword_3417F0);

  (*(v2 + 8))(v1, v3);
  sub_18AFC0(&qword_3417D0);
  isa = sub_1EEE44().super.isa;

  v5 = v0[6];
  (v5)[2](v5, isa, 0);

  _Block_release(v5);

  v6 = v0[1];

  return v6();
}

uint64_t MBridgedCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return _swift_task_switch(sub_1CBBF0, 0, 0);
}

uint64_t sub_1CBBF0()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_1CBCD8;
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[2];
  v7 = v0[3];

  return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v8, v7, v5, v6, v3, v4);
}

uint64_t sub_1CBCD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 72) = a1;

    return _swift_task_switch(sub_1CBE24, 0, 0);
  }
}

uint64_t sub_1CBE24()
{
  v1 = sub_1C7B8C(*(v0 + 72), &qword_3417E8);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1CC070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, const void *a7)
{
  v7[2] = a5;
  v13 = sub_1EE944();
  v7[3] = v13;
  v7[4] = *(v13 - 8);
  v7[5] = swift_task_alloc();
  v7[6] = _Block_copy(a7);
  v7[7] = sub_1EEFE4();
  v14 = 0;
  if (a2)
  {
    type metadata accessor for MCatalogRequestRelationship(0);
    v14 = sub_1EEFE4();
  }

  v7[8] = v14;
  v15 = 0;
  if (a3)
  {
    type metadata accessor for MCatalogRequestView(0);
    v15 = sub_1EEFE4();
  }

  v7[9] = v15;
  if (a4)
  {
    v16 = sub_1EEE54();
  }

  else
  {
    v16 = 0;
  }

  v7[10] = v16;
  v17 = a6;
  sub_1EE934();

  return _swift_task_switch(sub_1CC200, 0, 0);
}

uint64_t sub_1CC200()
{
  if (qword_33F958 != -1)
  {
    swift_once();
  }

  v1 = sub_1EE8C4();
  sub_19C418(v1, qword_341690);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1CC2EC;
  v3 = v0[9];
  v4 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[5];
  v8 = v0[2];

  return MCatalogService.fetch(adamIDs:relationships:views:additionalParameters:batchSize:metadata:)(v6, v5, v3, v4, v8, v7);
}

uint64_t sub_1CC2EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_1CC5B4;
  }

  else
  {
    *(v4 + 104) = a1;

    v5 = sub_1CC498;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1CC498()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  sub_1C7B8C(v0[13], &qword_3417E8);

  (*(v2 + 8))(v1, v3);
  sub_18AFC0(&qword_341768);
  isa = sub_1EEE44().super.isa;

  v5 = v0[6];
  (v5)[2](v5, isa, 0);

  _Block_release(v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1CC5B4()
{
  (*(v0[4] + 8))(v0[5], v0[3]);
  v1 = sub_1EDD94();

  v2 = v0[6];
  (v2)[2](v2, 0, v1);

  _Block_release(v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CC674()
{
  v0 = sub_1EE974();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1EE994();
  sub_19C688(v4, qword_341678);
  sub_19C418(v4, qword_341678);
  (*(v1 + 104))(v3, enum case for MClientIdentifier.books(_:), v0);
  v5 = [objc_opt_self() sharedProvider];
  v6 = [v5 activeStoreAccount];

  return sub_1EE984();
}

uint64_t sub_1CC7F4()
{
  v0 = sub_1EE994();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1EE8C4();
  sub_19C688(v4, qword_341690);
  sub_19C418(v4, qword_341690);
  if (qword_33F950 != -1)
  {
    swift_once();
  }

  v5 = sub_19C418(v0, qword_341678);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1EE8B4();
}

uint64_t sub_1CC968@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = sub_19C418(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t MCatalogService.fetchSampleURL(adamID:type:metadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_18AFC0(&qword_3416B0);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v30 - v14;
  v16 = sub_1CCCB4(a1, a2, a3, a4);
  if (v16)
  {
    v17 = v16;
    if (sub_1EE9A4())
    {
      v18 = [v17 bookSampleDownloadURL];
      if (v18)
      {
        v19 = v18;
        sub_1EDDD4();

        v20 = sub_1EDDF4();
        (*(*(v20 - 8) + 56))(v15, 0, 1, v20);
      }

      else
      {

        v27 = sub_1EDDF4();
        (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
      }

      v28 = v15;
    }

    else
    {
      v24 = [v17 previewURL];
      if (v24)
      {
        v25 = v24;
        sub_1EDDD4();

        v26 = sub_1EDDF4();
        (*(*(v26 - 8) + 56))(v13, 0, 1, v26);
      }

      else
      {

        v29 = sub_1EDDF4();
        (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
      }

      v28 = v13;
    }

    return sub_1CD264(v28, a5);
  }

  else
  {
    v21 = sub_1EDDF4();
    v22 = *(*(v21 - 8) + 56);

    return v22(a5, 1, 1, v21);
  }
}

id sub_1CCCB4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v50 = a4;
  v52 = a1;
  v53 = a2;
  v51 = sub_1EEE04();
  v4 = *(v51 - 8);
  v5 = __chkstk_darwin(v51);
  v54 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v55 = &v41 - v7;
  v58 = sub_1EE944();
  v49 = *(v58 - 8);
  v8 = *(v49 + 64);
  __chkstk_darwin(v58);
  v57 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1EE834();
  v46 = *(v56 - 8);
  v9 = *(v46 + 64);
  __chkstk_darwin(v56);
  v10 = sub_1EE8C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v14 - 8);
  v16 = &v41 - v15;
  result = [objc_opt_self() sharedReachabilityForInternetConnection];
  if (result)
  {
    v18 = result;
    if ([result currentReachabilityStatus])
    {
      v45 = v4;
      v19 = [v18 connectionRequired];

      result = 0;
      if ((v19 & 1) == 0)
      {
        v44 = dispatch_semaphore_create(0);
        sub_18AFC0(&qword_341800);
        v43 = swift_allocObject();
        *(v43 + 16) = 0;
        v20 = sub_1EF014();
        (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
        (*(v11 + 16))(&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v10);
        v21 = v46;
        v22 = *(v46 + 16);
        v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        v22(v42, v48, v56);
        v23 = v49;
        (*(v49 + 16))(v57, v50, v58);
        v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v25 = (v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
        v26 = (v9 + *(v23 + 80) + ((*(v21 + 80) + v25 + 16) & ~*(v21 + 80))) & ~*(v23 + 80);
        v47 = (*(v21 + 80) + v25 + 16) & ~*(v21 + 80);
        v48 = v26;
        v50 = (v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
        v27 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
        v28 = swift_allocObject();
        *(v28 + 16) = 0;
        *(v28 + 24) = 0;
        (*(v11 + 32))(v28 + v24, v13, v10);
        v29 = (v28 + v25);
        v30 = v53;
        *v29 = v52;
        v29[1] = v30;
        (*(v21 + 32))(v28 + v47, v42, v56);
        (*(v23 + 32))(v28 + v48, v57, v58);
        v32 = v43;
        v31 = v44;
        *(v28 + v50) = v43;
        *(v28 + v27) = v31;

        v33 = v31;
        sub_1CD564(0, 0, v16, &unk_2A6AB0, v28);

        v34 = v54;
        sub_1EEDF4();
        v35 = v55;
        sub_1EEE24();
        v36 = *(v45 + 8);
        v37 = v34;
        v38 = v51;
        v36(v37, v51);
        sub_1EF254();

        v36(v35, v38);
        v39 = *(v32 + 16);
        v40 = v39;

        return v39;
      }
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1CD264(uint64_t a1, uint64_t a2)
{
  v4 = sub_18AFC0(&qword_3416B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1CD2D4()
{
  v0[2] = v3;
  v0[3] = v4;
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1CD3B4;

  JUMPOUT(0x1EE894);
}

uint64_t sub_1CD3B4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1CD4E8, 0, 0);
  }
}

uint64_t sub_1CD4E8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[2];
    v3 = *(v2 + 16);
    *(v2 + 16) = v1;
  }

  sub_1EF264();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1CD564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_19A4B0(a3, v22 - v9, &unk_341460);
  v11 = sub_1EF014();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1927B4(v10, &unk_341460);
  }

  else
  {
    sub_1EF004();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1EEFF4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1EEF64() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1927B4(a3, &unk_341460);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1927B4(a3, &unk_341460);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1CD810()
{
  v1 = *(*v0 + 88);
  v2 = sub_1EF414();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static MResource.from<A>(response:)()
{
  if (qword_33F950 != -1)
  {
    swift_once();
  }

  v0 = sub_1EE994();
  sub_19C418(v0, qword_341678);
  return sub_1EEA84();
}

uint64_t dispatch thunk of MBridgedCatalogService.fetchStoreURL(for:type:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(&stru_20.filesize + (swift_isaMask & *v5)) + **(&stru_20.filesize + (swift_isaMask & *v5)));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_18E3B8;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MBridgedCatalogService.fetchStoreURL(for:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(&stru_20.maxprot + (swift_isaMask & *v4)) + **(&stru_20.maxprot + (swift_isaMask & *v4)));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_18E3B8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1CDC5C()
{
  result = sub_1EF414();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CDD08()
{
  _Block_release(*(v0 + 64));

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1CDD70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_18E3B8;

  return sub_1CC070(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1CDE58(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_18E3B8;

  return v6();
}

uint64_t sub_1CDF44(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_18C9D4;

  return v7();
}

uint64_t sub_1CE02C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_18AFC0(&unk_341460);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_19A4B0(a3, v23 - v10, &unk_341460);
  v12 = sub_1EF014();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1927B4(v11, &unk_341460);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1EF004();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1EEFF4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1EEF64() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1927B4(a3, &unk_341460);

    return v21;
  }

LABEL_8:
  sub_1927B4(a3, &unk_341460);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1CE328()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1CE360(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_18E3B8;

  return sub_192030(a1, v4);
}

void sub_1CE41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3B8;

  JUMPOUT(0x1CB5D8);
}

uint64_t sub_1CE514()
{
  _Block_release(*(v0 + 72));

  return _swift_deallocObject(v0, 88, 7);
}

void sub_1CE584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18E3B8;

  JUMPOUT(0x1CAA64);
}

uint64_t sub_1CE67C()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1CE6CC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18E3B8;

  return sub_1C9B50(v2, v3, v4);
}

uint64_t sub_1CE78C()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1CE7DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18C9D4;

  return sub_1C8FDC(v2, v3, v4, v5);
}

uint64_t sub_1CE8A4()
{
  v17 = sub_1EE8C4();
  v1 = *(v17 - 8);
  v2 = *(v1 + 80);
  v15 = (v2 + 32) & ~v2;
  v3 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = sub_1EE834();
  v4 = *(v16 - 8);
  v5 = *(v4 + 80);
  v6 = (v3 + v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  v8 = sub_1EE944();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v6 + v7 + v10) & ~v10;
  v14 = v2 | v5 | v10;
  v12 = (((*(v9 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v15, v17);

  (*(v4 + 8))(v0 + v6, v16);
  (*(v9 + 8))(v0 + v11, v8);

  return _swift_deallocObject(v0, v12 + 8, v14 | 7);
}

void sub_1CEAC4()
{
  sub_1EE8C4();
  sub_1EE834();
  sub_1EE944();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18C9D4;

  sub_1CD2D4();
}

unint64_t sub_1CECE0()
{
  result = qword_341808;
  if (!qword_341808)
  {
    sub_1EE854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_341808);
  }

  return result;
}

uint64_t UIImage.isLikelyTransparent.getter()
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v2 = calloc(1uLL, 0x9C40uLL);
  if (v2)
  {
    v3 = v2;
    v4 = sub_1CEE8C(v2, DeviceRGB);
    if (v4)
    {
      v5 = v4;
      v6 = [v0 CGImage];
      if (v6)
      {
        v7 = v6;
        CGContextSetInterpolationQuality(v5, kCGInterpolationNone);
        sub_1EF054();
        LOBYTE(v8) = 0;
        v9 = 0;
        do
        {
          if (v9 < 40000)
          {
            v10 = v9 + 4;
          }

          else
          {
            v12 = (v9 != 40000) | v8;
            v8 = 1;
            v10 = 40000;
            if (v12)
            {
              goto LABEL_13;
            }
          }

          v11 = v3[v9 + 3];
          v9 = v10;
        }

        while (!v11);
        v8 = 0;
LABEL_13:
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    free(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_1CEECC()
{
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v2 = sub_1EEED4();
  v3 = sub_1EEED4();
  v4 = sub_1EEED4();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_1EEF04();
  return v6;
}

uint64_t BKSeriesItem.ItemType.init(resourceType:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1EE834();
  v5 = *(v4 - 8);
  result = (*(v5 + 88))(a1, v4);
  if (result == enum case for MResourceType.audiobooks(_:))
  {
    v7 = 0;
  }

  else if (result == enum case for MResourceType.audiobookSeries(_:))
  {
    v7 = 1;
  }

  else if (result == enum case for MResourceType.books(_:))
  {
    v7 = 2;
  }

  else if (result == enum case for MResourceType.bookSeries(_:))
  {
    v7 = 3;
  }

  else
  {
    result = (*(v5 + 8))(a1, v4);
    v7 = 4;
  }

  *a2 = v7;
  return result;
}

void sub_1CF108(unsigned __int8 *a1, SEL *a2)
{
  v4 = *a1;
  if (v4 == 4)
  {
    v5 = *a2;

    [v2 v5];
  }

  else
  {
    v6 = [objc_allocWithZone(NSNumber) initWithShort:(v4 + 1)];
    [v2 *a2];
  }
}

uint64_t BKSeriesItem.ItemType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result >= 5u)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x302010004uLL >> (8 * result);
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_1CF1F4()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF7A4(v1 + 1);
  return sub_1EF7B4();
}

Swift::Int sub_1CF26C()
{
  v1 = *v0;
  sub_1EF784();
  sub_1EF7A4(v1 + 1);
  return sub_1EF7B4();
}

void (*BKSeriesItem.itemType.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 itemTypeRaw];
  if (v4 && (v5 = v4, v6 = [v4 shortValue], v5, v6 <= 4))
  {
    v7 = 0x302010004uLL >> (8 * v6);
  }

  else
  {
    LOBYTE(v7) = 4;
  }

  *(a1 + 8) = v7;
  return sub_1CF380;
}

void sub_1CF398(SEL *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4 && (v5 = v4, v6 = [v4 shortValue], v5, v6 <= 4))
  {
    v7 = 0x302010004uLL >> (8 * v6);
  }

  else
  {
    LOBYTE(v7) = 4;
  }

  *a2 = v7;
}

id sub_1CF418@<X0>(id *a1@<X0>, SEL *a2@<X3>, char *a3@<X8>)
{
  result = [*a1 *a2];
  if (result)
  {
    v5 = result;
    v6 = [result shortValue];

    result = BKSeriesItem.ItemType.init(rawValue:)(v6, &v8);
    v7 = v8;
  }

  else
  {
    v7 = 4;
  }

  *a3 = v7;
  return result;
}

void sub_1CF494(unsigned __int8 *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = *a2;
  if (v6 == 4)
  {
    v8 = *a5;

    [v7 v8];
  }

  else
  {
    v9 = [objc_allocWithZone(NSNumber) initWithShort:(v6 + 1)];
    [v7 *a5];
  }
}

void (*BKSeriesItem.mappedItemType.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = v1;
  *a1 = v2;
  v4 = [v2 mappedItemTypeRaw];
  if (v4 && (v5 = v4, v6 = [v4 shortValue], v5, v6 <= 4))
  {
    v7 = 0x302010004uLL >> (8 * v6);
  }

  else
  {
    LOBYTE(v7) = 4;
  }

  *(a1 + 8) = v7;
  return sub_1CF5F4;
}

void sub_1CF600(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 == 4)
  {
    v6 = *a3;
    v7 = *a1;

    [v7 v6];
  }

  else
  {
    v8 = [objc_allocWithZone(NSNumber) initWithShort:(v4 + 1)];
    [v5 *a3];
  }
}

unint64_t sub_1CF6B8()
{
  result = qword_3418A8;
  if (!qword_3418A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3418A8);
  }

  return result;
}

id BookToolbarController.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookToolbarController();
  return objc_msgSendSuper2(&v2, "init");
}

id BookToolbarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BookToolbarController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1CF8B8()
{
  v0 = sub_1EEAF4();
  sub_19C688(v0, qword_3418D8);
  sub_19C418(v0, qword_3418D8);
  return sub_1EEAE4();
}

uint64_t static Logger.engagement.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_33F960 != -1)
  {
    swift_once();
  }

  v2 = sub_1EEAF4();
  v3 = sub_19C418(v2, qword_3418D8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1CF9DC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_annotationUUID);
  v4 = *(v1 + OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_pageTheme);
  swift_unknownObjectWeakLoadStrong();
  v5 = type metadata accessor for HighlightMenuIdentifier();
  v6 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_annotationUUID] = v3;
  *&v6[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_pageTheme] = v4;
  swift_unknownObjectWeakAssign();
  v10.receiver = v6;
  v10.super_class = v5;
  v7 = v3;
  v8 = objc_msgSendSuper2(&v10, "init");
  result = swift_unknownObjectRelease();
  a1[3] = v5;
  *a1 = v8;
  return result;
}

void sub_1CFBC0(void *a1, id a2, void *a3)
{
  v5 = [a2 format];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [a3 setFill];
  v14 = [a1 CGContext];
  v17.origin.x = v7;
  v17.origin.y = v9;
  v17.size.width = v11;
  v17.size.height = v13;
  CGContextAddEllipseInRect(v14, v17);

  v15 = [a1 CGContext];
  CGContextDrawPath(v15, kCGPathFill);
}

void sub_1CFCBC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1CFD08(void *a1, id a2, void *a3)
{
  v5 = [a2 format];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_opt_self() secondarySystemFillColor];
  [v14 setFill];

  v15 = [a1 CGContext];
  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  CGContextAddEllipseInRect(v15, v21);

  v16 = [a1 CGContext];
  CGContextDrawPath(v16, kCGPathFill);

  if (a3)
  {
    v19 = a3;
    [v19 size];
    [v19 drawAtPoint:{(v11 - v17) * 0.5, (v13 - v18) * 0.5}];
  }
}

id sub_1CFE8C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id static BECustomViewMenuElement.createHighlightMenuElement(for:annotationUUID:view:rect:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a4;
  aBlock[4] = sub_1D36B4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFE8C;
  aBlock[3] = &unk_2D1990;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_self();
  v19 = a2;
  swift_unknownObjectRetain();
  v20 = [v18 elementWithViewProvider:v17];
  _Block_release(v17);

  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a4;
  *(v21 + 32) = v20;
  *(v21 + 40) = a3;
  *(v21 + 48) = a5;
  *(v21 + 56) = a6;
  *(v21 + 64) = a7;
  *(v21 + 72) = a8;
  type metadata accessor for BundleFinder();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = objc_opt_self();
  swift_unknownObjectRetain();
  v24 = v20;
  v25 = a3;
  v26 = [v23 bundleForClass:ObjCClassFromMetadata];
  v27 = sub_1EEED4();
  v28 = sub_1EEED4();
  v29 = sub_1EEED4();
  v30 = [v26 localizedStringForKey:v27 value:v28 table:v29];

  sub_1EEF04();
  sub_1928F4(0, &qword_341900);
  v31 = objc_opt_self();
  v32 = sub_1EEED4();
  v33 = [v31 __systemImageNamedSwift:v32];

  v34 = swift_allocObject();
  *(v34 + 16) = a2;
  *(v34 + 24) = sub_1D3734;
  *(v34 + 32) = v21;
  *(v34 + 40) = a4;
  *(v34 + 48) = a5;
  *(v34 + 56) = a6;
  *(v34 + 64) = a7;
  *(v34 + 72) = a8;
  *(v34 + 80) = v38;
  swift_unknownObjectRetain();
  v35 = v19;

  v36 = sub_1EF334();
  [v20 setMenuElementRepresentation:{v36, 0, 0, 0, sub_1D3790, v34}];

  return v20;
}

char *sub_1D0388(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(type metadata accessor for HighlightColorChooserView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC8BookCore25HighlightColorChooserView_pageTheme] = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  return v3;
}

uint64_t sub_1D0418(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, double a6, double a7, double a8, double a9)
{
  v18 = sub_1EED84();
  v34 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1EEDE4();
  v21 = *(v33 - 8);
  __chkstk_darwin(v33);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1928F4(0, &qword_340388);
  v32 = sub_1EF144();
  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a3;
  *(v24 + 40) = a4;
  *(v24 + 48) = a5;
  *(v24 + 56) = a6;
  *(v24 + 64) = a7;
  *(v24 + 72) = a8;
  *(v24 + 80) = a9;
  aBlock[4] = sub_1D3DF0;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_195254;
  aBlock[3] = &unk_2D1C88;
  v25 = _Block_copy(aBlock);
  v26 = a1;
  swift_unknownObjectRetain();
  v27 = a4;
  v28 = a5;

  sub_1EEDA4();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1D3E08(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
  sub_18AFC0(&qword_340398);
  sub_1D39CC();
  sub_1EF454();
  v29 = v32;
  sub_1EF164();
  _Block_release(v25);

  (*(v34 + 8))(v20, v18);
  return (*(v21 + 8))(v23, v33);
}

void sub_1D0730(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, void *a9)
{
  v16 = type metadata accessor for HighlightMenuIdentifier();
  v17 = objc_allocWithZone(v16);
  swift_unknownObjectWeakInit();
  *&v17[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_annotationUUID] = a1;
  *&v17[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_pageTheme] = a2;
  swift_unknownObjectWeakAssign();
  v29.receiver = v17;
  v29.super_class = v16;
  v18 = a1;
  v19 = objc_msgSendSuper2(&v29, "init");
  v20 = sub_1D0934();
  v21 = [objc_allocWithZone(UIEditMenuInteraction) initWithDelegate:v20];
  v22 = v21;
  if (v20)
  {
    v23 = *&v20[OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction];
    *&v20[OBJC_IVAR____TtC8BookCore28BECustomViewMenuEditDelegate_interaction] = v21;
    v24 = v20;
    v25 = v22;
  }

  [a9 addInteraction:v22];
  v30.origin.x = a3;
  v30.origin.y = a4;
  v30.size.width = a5;
  v30.size.height = a6;
  CGRectGetMidX(v30);
  sub_1928F4(0, &qword_341A78);
  v28 = v19;
  sub_1D3E08(&unk_341A80, type metadata accessor for HighlightMenuIdentifier);
  v26 = v19;
  sub_1EF504();
  v27 = sub_1EF274();
  [v22 presentEditMenuWithConfiguration:{v27, v28}];
}

id sub_1D0934()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_3418F0);
  swift_endAccess();
  if (v1)
  {
    sub_1EF444();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_18FF14(v8);
    goto LABEL_8;
  }

  type metadata accessor for BECustomViewMenuEditDelegate();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v3 = [objc_allocWithZone(type metadata accessor for BECustomViewMenuEditDelegate()) init];
    swift_beginAccess();
    v2 = v3;
    objc_setAssociatedObject(v0, &unk_3418F0, v2, &dword_0 + 1);
    swift_endAccess();

    return v2;
  }

  return v5;
}

void sub_1D0A68(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, void (*a7)(void), uint64_t a8, void *a9, uint64_t a10)
{
  if (a6)
  {
    v20 = a6;
    a7();
  }

  else
  {
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    *(v18 + 32) = a3;
    *(v18 + 40) = a4;
    *(v18 + 48) = a7;
    *(v18 + 56) = a8;
    *(v18 + 64) = a10;
    aBlock[4] = sub_1D3D8C;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D0EFC;
    aBlock[3] = &unk_2D1C38;
    v19 = _Block_copy(aBlock);

    [a9 createHighlightForSelectionWithCurrentThemeWithCompletion:v19];
    _Block_release(v19);
  }
}

void sub_1D0BC0(void *a1, void (*a2)(id), CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_1EEAF4();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v26 - v17;
  if (a1)
  {
    v27 = a1;
    v30.origin.x = 0.0;
    v30.origin.y = 0.0;
    v30.size.width = 0.0;
    v30.size.height = 0.0;
    v29.origin.x = a3;
    v29.origin.y = a4;
    v29.size.width = a5;
    v29.size.height = a6;
    if (CGRectEqualToRect(v29, v30))
    {
      sub_1928F4(0, &qword_341A60);
      sub_1EF3F4();
      sub_1EEB04();
      v19 = sub_1EEAD4();
      v20 = sub_1EF094();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_0, v19, v20, "was unable to determine selection rect for secondary highlight menu", v21, 2u);
      }

      (*(v13 + 8))(v16, v12);
    }

    else
    {
      a2(v27);
      v25 = v27;
    }
  }

  else
  {
    sub_1928F4(0, &qword_341A60);
    sub_1EF3F4();
    sub_1EEB04();
    v22 = sub_1EEAD4();
    v23 = sub_1EF094();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "nil annotationUUID for secondary highlight menu", v24, 2u);
    }

    (*(v13 + 8))(v18, v12);
  }
}

void sub_1D0EFC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

id static BECustomViewMenuElement.createHighlightMenuElement(menuElementRepresentation:actions:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v9[4] = sub_1D37E0;
  v9[5] = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1CFE8C;
  v9[3] = &unk_2D1A30;
  v5 = _Block_copy(v9);
  v6 = objc_opt_self();

  v7 = [v6 elementWithViewProvider:v5];
  _Block_release(v5);

  [v7 setMenuElementRepresentation:a1];
  return v7;
}

void sub_1D114C()
{
  type metadata accessor for HighlightColorChooserView();

  sub_1D1190(v0, 0.0, 0.0, 0.0, 0.0);
}

void sub_1D1190(unint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = [objc_msgSend(objc_allocWithZone(v5) initWithFrame:{a2, a3, a4, a5), "subviews"}];
  sub_1928F4(0, &qword_341A50);
  v9 = sub_1EEFE4();

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = sub_1EF584();
  }

  else
  {
    if (!*(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_31;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

  objc_opt_self();
  v52 = swift_dynamicCastObjCClassUnconditional();
  v12 = [v52 arrangedSubviews];
  v13 = sub_1EEFE4();

  if (v13 >> 62)
  {
    v14 = sub_1EF634();
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
  }

  v51 = v11;
  if (v14)
  {
    sub_1AE098(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_61;
    }

    v15 = 0;
    v6 = _swiftEmptyArrayStorage;
    v16 = a1;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = sub_1EF584();
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = v14;
      v20 = [v17 accessibilityLabel];
      if (v20)
      {
        v21 = v20;
        v22 = sub_1EEF04();
        v24 = v23;
      }

      else
      {

        v22 = 0;
        v24 = 0;
      }

      v26 = _swiftEmptyArrayStorage[2];
      v25 = _swiftEmptyArrayStorage[3];
      if (v26 >= v25 >> 1)
      {
        sub_1AE098((v25 > 1), v26 + 1, 1);
      }

      ++v15;
      _swiftEmptyArrayStorage[2] = v26 + 1;
      v27 = &_swiftEmptyArrayStorage[2 * v26];
      v27[4] = v22;
      v27[5] = v24;
      v14 = v19;
    }

    while (v19 != v15);
    a1 = v16;
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
  }

  v28 = [v52 arrangedSubviews];
  v8 = sub_1EEFE4();

  if (!(v8 >> 62))
  {
    v29 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
    if (!v29)
    {
      goto LABEL_32;
    }

    goto LABEL_22;
  }

LABEL_31:
  v29 = sub_1EF634();
  if (!v29)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v29 < 1)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  for (i = 0; i != v29; ++i)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v31 = sub_1EF584();
    }

    else
    {
      v31 = *(v8 + 8 * i + 32);
    }

    v32 = v31;
    [v52 removeArrangedSubview:v31];
  }

LABEL_32:

  if (a1 >> 62)
  {
    v33 = sub_1EF634();
    if (v33)
    {
LABEL_34:
      sub_1928F4(0, &unk_341A40);
      if (v33 >= 1)
      {
        v34 = 0;
        do
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v35 = sub_1EF584();
          }

          else
          {
            v35 = *(a1 + 8 * v34 + 32);
          }

          v36 = v35;
          ++v34;
          v37 = v35;
          v53.value.super.super.isa = v36;
          isa = sub_1EF3D4(UIButtonTypeCustom, v53).super.super.super.super.isa;
          [(objc_class *)isa setPointerInteractionEnabled:1];
          [v52 addArrangedSubview:isa];
        }

        while (v33 != v34);
        goto LABEL_41;
      }

LABEL_62:
      __break(1u);
      return;
    }
  }

  else
  {
    v33 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v33)
    {
      goto LABEL_34;
    }
  }

LABEL_41:

  v39 = [v52 arrangedSubviews];
  v40 = sub_1EEFE4();

  if (v40 >> 62)
  {
    goto LABEL_58;
  }

  v41 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  if (v41)
  {
    while (1)
    {
      v42 = 0;
      v43 = v6 + 5;
      while ((v40 & 0xC000000000000001) != 0)
      {
        v46 = sub_1EF584();
LABEL_49:
        v47 = v46;
        v48 = v6[2];
        if (v42 == v48)
        {

          goto LABEL_55;
        }

        if (v42 >= v48)
        {
          goto LABEL_57;
        }

        if (*v43)
        {
          v44 = v46;

          v45 = sub_1EEED4();
        }

        else
        {
          v49 = v46;
          v45 = 0;
        }

        ++v42;
        [v47 setAccessibilityLabel:v45];

        v43 += 2;
        if (v41 == v42)
        {
          goto LABEL_55;
        }
      }

      if (v42 < *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8)))
      {
        break;
      }

      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      v41 = sub_1EF634();
      if (!v41)
      {
        goto LABEL_55;
      }
    }

    v46 = *(v40 + 8 * v42 + 32);
    goto LABEL_49;
  }

LABEL_55:
}

id BECustomViewMenuElement.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id BECustomViewMenuElement.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BECustomViewMenuElement();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

char *sub_1D19F0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC8BookCore25HighlightColorChooserView_pageTheme] = 4;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v49.receiver = v4;
  v49.super_class = type metadata accessor for HighlightColorChooserView();
  v9 = objc_msgSendSuper2(&v49, "initWithFrame:", a1, a2, a3, a4);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 setPreservesSuperviewLayoutMargins:1];
  sub_18AFC0(&qword_3411B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2A6BC0;
  v11 = objc_opt_self();
  v12 = OBJC_IVAR____TtC8BookCore25HighlightColorChooserView_pageTheme;
  result = [v11 yellowTheme:*&v9[OBJC_IVAR____TtC8BookCore25HighlightColorChooserView_pageTheme]];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  v15 = sub_1D2060(result);

  *(v10 + 32) = v15;
  result = [v11 greenTheme:*&v9[v12]];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v16 = result;
  v17 = sub_1D2060(result);

  *(v10 + 40) = v17;
  result = [v11 blueTheme:*&v9[v12]];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = result;
  v19 = sub_1D2060(result);

  *(v10 + 48) = v19;
  result = [v11 pinkTheme:*&v9[v12]];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = result;
  v21 = sub_1D2060(result);

  *(v10 + 56) = v21;
  result = [v11 purpleTheme:*&v9[v12]];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v22 = result;
  v23 = sub_1D2060(result);

  *(v10 + 64) = v23;
  result = [v11 underlineTheme:*&v9[v12]];
  if (result)
  {
    v24 = result;
    v25 = sub_1D2060(result);

    *(v10 + 72) = v25;
    v26 = objc_allocWithZone(UIStackView);
    sub_1928F4(0, &qword_341A50);
    isa = sub_1EEFC4().super.isa;

    v28 = [v26 initWithArrangedSubviews:isa];

    [v28 setAlignment:3];
    [v28 setDistribution:3];
    v29 = v28;
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v29 setPreservesSuperviewLayoutMargins:1];
    [v9 addSubview:v29];
    v30 = objc_opt_self();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_2A6BD0;
    v32 = [v29 leadingAnchor];
    v33 = [v9 layoutMarginsGuide];
    v34 = [v33 leadingAnchor];

    v35 = [v32 constraintEqualToAnchor:v34];
    *(v31 + 32) = v35;
    v36 = [v29 trailingAnchor];
    v37 = [v9 layoutMarginsGuide];
    v38 = [v37 trailingAnchor];

    v39 = [v36 constraintEqualToAnchor:v38];
    *(v31 + 40) = v39;
    v40 = [v29 topAnchor];
    v41 = [v9 layoutMarginsGuide];
    v42 = [v41 topAnchor];

    v43 = [v40 constraintEqualToAnchor:v42];
    *(v31 + 48) = v43;
    v44 = [v29 bottomAnchor];

    v45 = [v9 layoutMarginsGuide];
    v46 = [v45 bottomAnchor];

    v47 = [v44 constraintEqualToAnchor:v46];
    *(v31 + 56) = v47;
    sub_1928F4(0, &qword_341A58);
    v48 = sub_1EEFC4().super.isa;

    [v30 activateConstraints:v48];

    return v9;
  }

LABEL_13:
  __break(1u);
  return result;
}

Class sub_1D2060(void *a1)
{
  if ([a1 isUnderline])
  {
    v2 = sub_1D2B50();
    goto LABEL_5;
  }

  result = [a1 highlightColor];
  if (result)
  {
    v4 = result;
    v2 = sub_1D29BC(result);

LABEL_5:
    sub_1928F4(0, &unk_341A40);
    sub_1928F4(0, &qword_341900);
    v5 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a1;
    v7 = v2;
    v8 = a1;
    v13 = v6;
    v14.value.super.super.isa = sub_1EF334();
    v9.super.super.super.super.isa = sub_1EF3D4(UIButtonTypeCustom, v14).super.super.super.super.isa;
    [(objc_class *)v9.super.super.super.super.isa setPointerInteractionEnabled:1, 0, 0, 0, sub_1D38F0, v13];
    v10 = [v8 annotationStyle];
    if (v10 > 3)
    {
      if (v10 != 4 && v10 != 5 && v10 != 6)
      {
        goto LABEL_14;
      }
    }

    else if (v10 != 1 && v10 != 2 && v10 != 3)
    {
      goto LABEL_14;
    }

    sub_1CEECC();
    v11 = v9.super.super.super.super.isa;
    v12 = sub_1EEED4();

    [(objc_class *)v11 setAccessibilityLabel:v12];

LABEL_14:
    return v9.super.super.super.super.isa;
  }

  __break(1u);
  return result;
}

void sub_1D22DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1EED84();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1EEDE4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectUnownedLoadStrong();
  v14 = swift_unknownObjectWeakLoadStrong();

  if (v14)
  {
    sub_1928F4(0, &qword_340388);
    v21 = sub_1EF144();
    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = v14;
    v15[4] = a3;
    aBlock[4] = sub_1D39C0;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_195254;
    aBlock[3] = &unk_2D1B48;
    v16 = _Block_copy(aBlock);
    v20 = v9;
    v17 = v16;

    swift_unknownObjectRetain();
    v18 = a3;

    sub_1EEDA4();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1D3E08(&qword_340390, &type metadata accessor for DispatchWorkItemFlags);
    sub_18AFC0(&qword_340398);
    sub_1D39CC();
    sub_1EF454();
    v19 = v21;
    sub_1EF164();
    _Block_release(v17);
    swift_unknownObjectRelease();

    (*(v6 + 8))(v8, v5);
    (*(v10 + 8))(v12, v20);
  }
}

void sub_1D25EC(uint64_t a1, void *a2, void *a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v7 = swift_unknownObjectWeakLoadStrong();

  v6 = [a3 annotationStyle];
  if (v7)
  {
    [a2 setStyleOfExistingHighlight:v7 to:v6];
  }

  else
  {

    [a2 createHighlightForSelectionWithStyle:v6];
  }
}

id sub_1D26D4(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

id sub_1D2758(void *a1)
{
  sub_18AFC0(&qword_3411B0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2A61C0;
  *(v2 + 32) = a1;
  sub_1928F4(0, &qword_341A90);
  v3 = a1;
  isa = sub_1EEFC4().super.isa;

  v5 = [objc_opt_self() configurationWithPaletteColors:isa];

  v6 = v5;
  v7 = sub_1EEED4();
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  if (v8)
  {
    v9 = v8;
    v10 = sub_1EEED4();
    [v9 setAccessibilityLabel:v10];

    v6 = v10;
  }

  return v8;
}

id sub_1D28CC()
{
  v0 = sub_1EEED4();
  v1 = [objc_opt_self() systemImageNamed:v0];

  if (v1)
  {
    v2 = [v1 imageWithRenderingMode:2];

    v1 = v2;
    sub_1CEECC();
    v3 = sub_1EEED4();

    [v1 setAccessibilityLabel:v3];
  }

  return v1;
}

uint64_t sub_1D29BC(void *a1)
{
  v2 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{28.0, 28.0}];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D3A30;
  *(v4 + 24) = v3;
  v10[4] = sub_1D3ED8;
  v10[5] = v4;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1CFCBC;
  v10[3] = &unk_2D1BC0;
  v5 = _Block_copy(v10);
  v6 = v2;
  v7 = a1;

  v8 = [v6 imageWithActions:v5];

  _Block_release(v5);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if ((v6 & 1) == 0)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2B50()
{
  v0 = [objc_opt_self() configurationWithScale:-1];
  v1 = sub_1EEED4();
  v2 = [objc_opt_self() systemImageNamed:v1];

  if (v2)
  {
    v3 = [v2 imageWithConfiguration:v0];

    v4 = [v3 imageWithRenderingMode:1];
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:{28.0, 28.0}];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D3938;
  *(v7 + 24) = v6;
  v14[4] = sub_1D3950;
  v14[5] = v7;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_1CFCBC;
  v14[3] = &unk_2D1AF8;
  v8 = _Block_copy(v14);
  v9 = v4;

  v10 = v5;

  v11 = [v10 imageWithActions:v8];

  _Block_release(v8);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v11;
  }

  __break(1u);
  return result;
}

void _s8BookCore23BECustomViewMenuElementC25highlightStyleButtonImage5style9pageTheme7isSmallSo7UIImageCSgSo012AEAnnotationH0V_So0qm5_PageM0VSbtFZ_0(int a1, uint64_t a2, char a3)
{
  if (a1 <= 3)
  {
    if (a1 != 1)
    {
      if (a1 != 2)
      {
        if (a1 != 3)
        {
          return;
        }

        v4 = [objc_opt_self() yellowTheme:a2];
        if (v4)
        {
          v5 = v4;
          v6 = [v4 highlightColor];

          if (v6)
          {
            v7 = [v6 bc_darkenedColorByFactor:0.051];

            if (v7)
            {
              goto LABEL_27;
            }

LABEL_44:
            __break(1u);
            return;
          }

          goto LABEL_41;
        }

        goto LABEL_36;
      }

      v12 = [objc_opt_self() blueTheme:a2];
      if (!v12)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v13 = v12;
      v7 = [v12 highlightColor];

      if (!v7)
      {
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_27:
      sub_1CEECC();
      if (a3)
      {
        sub_1D2758(v7);
      }

      else
      {

        sub_1D29BC(v7);
      }

      return;
    }

    v8 = [objc_opt_self() greenTheme:a2];
    if (v8)
    {
      v9 = v8;
      v7 = [v8 highlightColor];

      if (!v7)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      goto LABEL_27;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  switch(a1)
  {
    case 4:
      v10 = [objc_opt_self() pinkTheme:a2];
      if (v10)
      {
        v11 = v10;
        v7 = [v10 highlightColor];

        if (!v7)
        {
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        goto LABEL_27;
      }

      goto LABEL_35;
    case 5:
      v14 = [objc_opt_self() purpleTheme:a2];
      if (v14)
      {
        v15 = v14;
        v7 = [v14 highlightColor];

        if (v7)
        {
          goto LABEL_27;
        }

        goto LABEL_43;
      }

      goto LABEL_38;
    case 6:
      if (a3)
      {

        sub_1D28CC();
      }

      else
      {

        sub_1D2B50();
      }

      break;
  }
}

void *sub_1D30E4(char *a1)
{
  v2 = sub_1EEAF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *&a1[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_pageTheme];
    v18 = _swiftEmptyArrayStorage;
    sub_1EF5C4();
    sub_1928F4(0, &qword_341900);
    for (i = 0; i != 24; i += 4)
    {
      v10 = *(&off_2CF370 + i + 32);
      _s8BookCore23BECustomViewMenuElementC25highlightStyleButtonImage5style9pageTheme7isSmallSo7UIImageCSgSo012AEAnnotationH0V_So0qm5_PageM0VSbtFZ_0(v10, v8, 1);
      v11 = swift_allocObject();
      *(v11 + 16) = a1;
      *(v11 + 24) = v7;
      *(v11 + 32) = v10;
      v12 = a1;
      swift_unknownObjectRetain();
      sub_1EF334();
      sub_1EF5A4();
      sub_1EF5D4();
      sub_1EF5E4();
      sub_1EF5B4();
    }

    swift_unknownObjectRelease();
    return v18;
  }

  else
  {
    sub_1928F4(0, &qword_341A60);
    sub_1EF3F4();
    sub_1EEB04();
    v14 = sub_1EEAD4();
    v15 = sub_1EF094();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_0, v14, v15, "No delegate for highlight menu", v16, 2u);
    }

    (*(v3 + 8))(v5, v2);
    return _swiftEmptyArrayStorage;
  }
}

id _s8BookCore23BECustomViewMenuElementC015createHighlighteF03for14annotationUUID8delegateSo06UIMenuF0CSo022AEAnnotationTheme_PageO0V_So8NSStringCSgAA0heF8Delegate_ptFZ_0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  aBlock[4] = sub_1D3EB4;
  aBlock[5] = v6;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFE8C;
  aBlock[3] = &unk_2D1CD8;
  v7 = _Block_copy(aBlock);
  v8 = objc_opt_self();
  v9 = a2;
  swift_unknownObjectRetain();
  v10 = [v8 elementWithViewProvider:v7];
  _Block_release(v7);

  v11 = type metadata accessor for HighlightMenuIdentifier();
  v12 = objc_allocWithZone(v11);
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_annotationUUID] = a2;
  *&v12[OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_pageTheme] = a1;
  swift_unknownObjectWeakAssign();
  v27.receiver = v12;
  v27.super_class = v11;
  v13 = v9;
  v14 = objc_msgSendSuper2(&v27, "init");
  v15 = sub_1CEECC();
  v17 = v16;
  v18 = objc_opt_self();
  v19 = sub_1EEED4();
  v20 = [v18 __systemImageNamedSwift:v19];

  v21 = sub_1D30E4(v14);
  if (v21 >> 62)
  {
    sub_1928F4(0, &qword_341A68);
    v22 = sub_1EF624();
  }

  else
  {

    sub_1EF6E4();
    sub_1928F4(0, &qword_341A68);
    v22 = v21;
  }

  sub_1928F4(0, &qword_341A70);
  v30._countAndFlagsBits = v15;
  v30._object = v17;
  v31.value._countAndFlagsBits = 0;
  v31.value._object = 0;
  v29.value.super.isa = v20;
  v29.is_nil = 0;
  v23.value = (&stru_68 + 24);
  isa = sub_1EF2A4(v30, v31, v29, v23, 0xFFFFFFFFFFFFFFFFLL, v22, v26).super.super.isa;
  [v10 setMenuElementRepresentation:isa];

  return v10;
}

uint64_t sub_1D36D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D36EC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1D3748()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1D37A8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1D3878()
{
  swift_unknownObjectUnownedDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1D38B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D38F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1D3978()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1D39CC()
{
  result = qword_3403A0;
  if (!qword_3403A0)
  {
    sub_199A00(&qword_340398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3403A0);
  }

  return result;
}

Class sub_1D3A38()
{
  v0 = sub_1EEAF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1EF284();
  v4.isa = sub_1EF4D4().isa;
  sub_19A52C(v16);
  type metadata accessor for HighlightMenuIdentifier();
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = sub_1D30E4(v5);
    if (v6 >> 62)
    {
      sub_1928F4(0, &qword_341A68);
      v7 = sub_1EF624();
    }

    else
    {

      sub_1EF6E4();
      sub_1928F4(0, &qword_341A68);
      v7 = v6;
    }

    sub_1928F4(0, &qword_341A70);
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v19.value._countAndFlagsBits = 0;
    v19.value._object = 0;
    v17.value.super.isa = 0;
    v17.is_nil = 0;
    v8.value = 0;
    v9.super.super.isa = sub_1EF2A4(v18, v19, v17, v8, 0xFFFFFFFFFFFFFFFFLL, v7, v14).super.super.isa;
  }

  else
  {

    sub_1928F4(0, &qword_341A60);
    sub_1EF3F4();
    sub_1EEB04();
    v10 = sub_1EEAD4();
    v11 = sub_1EF094();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_0, v10, v11, "No identifier for highlight menu", v12, 2u);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  return v9.super.super.isa;
}

uint64_t sub_1D3CE0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 36, 7);
}

id sub_1D3D20()
{
  v1 = *(v0 + 24);
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8BookCoreP33_213CCCF002B71F6D33A127415B0D848C23HighlightMenuIdentifier_annotationUUID))
  {
    return [v1 setStyleOfExistingHighlight:? to:?];
  }

  else
  {
    return [v1 createHighlightForSelectionWithStyle:?];
  }
}

uint64_t sub_1D3D54()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1D3DA0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1D3E08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3E50()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1D3EDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000004C52;
  v3 = a1;
  if (a1 > 4u)
  {
    if (a1 <= 6u)
    {
      if (a1 == 5)
      {
        v10 = 0xD000000000000017;
      }

      else
      {
        v10 = 0xD000000000000018;
      }

      if (v3 == 5)
      {
        v11 = 0x800000000024E070;
      }

      else
      {
        v11 = 0x800000000024E090;
      }
    }

    else if (a1 == 7)
    {
      v10 = 0x6F6F626F69647561;
      v11 = 0xEF4C52556169566BLL;
    }

    else
    {
      if (a1 == 8)
      {
        v10 = 0xD00000000000001CLL;
      }

      else
      {
        v10 = 0xD00000000000001DLL;
      }

      if (v3 == 8)
      {
        v11 = 0x800000000024E0C0;
      }

      else
      {
        v11 = 0x800000000024E0E0;
      }
    }
  }

  else
  {
    v4 = 0x800000000024E010;
    v5 = 0xD000000000000021;
    v6 = 0x800000000024E040;
    v7 = 0xD00000000000001CLL;
    if (a1 != 3)
    {
      v7 = 0x556169566B6F6F62;
      v6 = 0xEA00000000004C52;
    }

    if (a1 != 2)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = 0x800000000024DFD0;
    v9 = 0xD000000000000014;
    if (a1)
    {
      v9 = 0xD000000000000017;
      v8 = 0x800000000024DFF0;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 1)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x800000000024E010;
        if (v10 != 0xD000000000000021)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      if (a2 != 3)
      {
        if (v10 != 0x556169566B6F6F62)
        {
          goto LABEL_59;
        }

        goto LABEL_57;
      }

      v12 = "readNowPaidStoreFrontNewUser";
      goto LABEL_38;
    }

    if (!a2)
    {
      v2 = 0x800000000024DFD0;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    v13 = "readNowUnpaidStoreFront";
LABEL_54:
    v2 = (v13 - 32) | 0x8000000000000000;
    if (v10 != 0xD000000000000017)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (a2 > 6u)
  {
    if (a2 == 7)
    {
      v2 = 0xEF4C52556169566BLL;
      if (v10 != 0x6F6F626F69647561)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    if (a2 != 8)
    {
      v2 = 0x800000000024E0E0;
      if (v10 != 0xD00000000000001DLL)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

    v12 = "audiobookViaStateRestoration";
LABEL_38:
    v2 = (v12 - 32) | 0x8000000000000000;
    if (v10 != 0xD00000000000001CLL)
    {
      goto LABEL_59;
    }

    goto LABEL_57;
  }

  if (a2 == 5)
  {
    v13 = "bookViaStateRestoration";
    goto LABEL_54;
  }

  v2 = 0x800000000024E090;
  if (v10 != 0xD000000000000018)
  {
LABEL_59:
    v14 = sub_1EF6D4();
    goto LABEL_60;
  }

LABEL_57:
  if (v11 != v2)
  {
    goto LABEL_59;
  }

  v14 = 1;
LABEL_60:

  return v14 & 1;
}