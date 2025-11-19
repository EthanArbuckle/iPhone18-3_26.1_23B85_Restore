uint64_t sub_42488()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_424F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_42518(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4257C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_425F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_54A4(&qword_63EB0, &qword_4CFA8);
  v39 = a2;
  result = sub_48804();
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
      sub_488D4();
      sub_48464();
      result = sub_48904();
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

uint64_t sub_42894(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ViewModelPollVote();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6 - 8, v8);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_54A4(&qword_630D0, &qword_4CFA0);
  v40 = a2;
  result = sub_48804();
  v13 = result;
  if (*(v10 + 16))
  {
    v38 = v3;
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
      v26 = *(v39 + 72);
      v27 = *(v10 + 56) + v26 * v25;
      v42 = *(*(v10 + 48) + 16 * v25);
      v28 = *(&v42 + 1);
      if (v40)
      {
        sub_7A64(v27, v41);
      }

      else
      {
        sub_6BEC(v27, v41);
      }

      v29 = *(v13 + 40);
      sub_488D4();
      if (v28)
      {
        sub_488F4(1u);
        sub_48464();
      }

      else
      {
        sub_488F4(0);
      }

      result = sub_48904();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 16 * v21) = v42;
      result = sub_7A64(v41, *(v13 + 56) + v26 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_41;
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

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_39;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_39:
  *v3 = v13;
  return result;
}

uint64_t sub_42BEC(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_54A4(a3, a4);
  v39 = a2;
  result = sub_48804();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
    v38 = v7;
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
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = (v23 + 32 * v22);
      if (v39)
      {
        sub_54EC(v25, v40);
      }

      else
      {
        sub_606C(v25, v40);
        v26 = v24;
      }

      v27 = *(v10 + 40);
      sub_48414();
      sub_488D4();
      sub_48464();
      v28 = sub_48904();

      v29 = -1 << *(v10 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      result = sub_54EC(v40, (*(v10 + 56) + 32 * v18));
      ++*(v10 + 16);
      v7 = v38;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v39 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_36;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero(v12, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_36:
  *v5 = v10;
  return result;
}

uint64_t sub_42EB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_4D30(a2, a3);
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
      sub_425F0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_4D30(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_48884();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_43310();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
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

_OWORD *sub_4302C(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), uint64_t *a5, uint64_t *a6, void (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = *(v15 + 16);
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = *(v15 + 24);
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      sub_436AC(a5, a6);
      v16 = v24;
      goto LABEL_8;
    }

    sub_42BEC(v21, a3 & 1, a5, a6);
    v25 = *v12;
    v16 = a4(a2);
    if ((v22 & 1) != (v26 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_48884();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v12;
  if (v22)
  {
    v28 = (v27[7] + 32 * v16);
    sub_6020(v28);

    return sub_54EC(a1, v28);
  }

  else
  {
    sub_431B0(v16, a2, a1, v27);

    return a2;
  }
}

_OWORD *sub_431B0(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_54EC(a3, (a4[7] + 32 * a1));
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

uint64_t sub_43218(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62128, &qword_4AA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_43288(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 16);
  sub_41748(v5, a1, a2, v6, v7);
}

uint64_t sub_432C8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_43310()
{
  v1 = v0;
  sub_54A4(&qword_63EB0, &qword_4CFA8);
  v2 = *v0;
  v3 = sub_487F4();
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

void *sub_4347C()
{
  v1 = v0;
  v2 = type metadata accessor for ViewModelPollVote();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8, v4);
  v32 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_54A4(&qword_630D0, &qword_4CFA0);
  v6 = *v0;
  v7 = sub_487F4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v34 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = *(v6 + 64);
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
        v22 = v19 | (v12 << 6);
        v23 = 16 * v22;
        v24 = (*(v6 + 48) + 16 * v22);
        v25 = *v24;
        v26 = v24[1];
        v27 = v32;
        v28 = *(v33 + 72) * v22;
        sub_6BEC(*(v6 + 56) + v28, v32);
        v29 = v34;
        v30 = (*(v34 + 48) + v23);
        *v30 = v25;
        v30[1] = v26;
        sub_7A64(v27, *(v29 + 56) + v28);
      }

      while (v17);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v18)
      {

        v1 = v31;
        v8 = v34;
        goto LABEL_18;
      }

      v21 = *(v10 + 8 * v12);
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
    *v1 = v8;
  }

  return result;
}

id sub_436AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_54A4(a1, a2);
  v4 = *v2;
  v5 = sub_487F4();
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
        sub_606C(*(v4 + 56) + 32 * v19, v21);
        *(*(v6 + 48) + 8 * v19) = v20;
        sub_54EC(v21, (*(v6 + 56) + 32 * v19));
        result = v20;
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

uint64_t sub_43898(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_47A04();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_43958(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_47A04();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s11RowTextViewVMa()
{
  result = qword_63F10;
  if (!qword_63F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_43A48()
{
  type metadata accessor for PollViewModel();
  if (v0 <= 0x3F)
  {
    sub_43BA8(319, &qword_636A0, &type metadata for PollViewModel.TextItem, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_47A04();
      if (v2 <= 0x3F)
      {
        sub_43BA8(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
        if (v3 <= 0x3F)
        {
          sub_43BA8(319, &unk_63F20, &type metadata for CGFloat, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_43BA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_43C14()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0 + *(_s11RowTextViewVMa() + 28);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_48634();
    v9 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v8, 0);
    (*(v2 + 8))(v6, v1);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_43D6C()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v1 + 98) == 1)
  {
    sub_631C();
    sub_480A4();
    v2 = sub_486B4();
  }

  else
  {
    v2 = 0;
  }

  v3 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  type metadata accessor for PollOptionTextTransformer();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(result + 32) = 1;
  return result;
}

uint64_t sub_43E84@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v58 = sub_54A4(&qword_63F70, &qword_4D010);
  v2 = *(v58 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v58, v4);
  v6 = &v52 - v5;
  v55 = sub_54A4(&qword_63F78, &qword_4D018);
  v7 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55, v8);
  v54 = &v52 - v9;
  v10 = sub_54A4(&qword_63F80, &qword_4D020);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v12);
  v14 = &v52 - v13;
  v56 = sub_54A4(&qword_63F88, &qword_4D028);
  v15 = *(*(v56 - 8) + 64);
  v17 = __chkstk_darwin(v56, v16);
  v52 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v53 = &v52 - v20;
  v21 = v1;
  v22 = *v1;
  swift_getKeyPath();
  v59 = v22;
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v22 + 98) == 1 && (swift_getKeyPath(), v59 = v22, sub_475C4(), , (*(v22 + 97) & 1) == 0))
  {
    *v14 = sub_47C84();
    *(v14 + 1) = 0;
    v14[16] = 0;
    v27 = sub_54A4(&qword_64030, &qword_4D0C8);
    sub_44DE0(v1, &v14[*(v27 + 44)]);
    KeyPath = swift_getKeyPath();
    v29 = _s11RowTextViewVMa();
    v30 = *(v29 + 24);
    v31 = &v14[*(v10 + 36)];
    v32 = *(sub_54A4(&qword_63890, &qword_4C860) + 28);
    v33 = sub_47A04();
    (*(*(v33 - 8) + 16))(v31 + v32, &v21[v30], v33);
    *v31 = KeyPath;
    sub_54A4(&qword_63920, &qword_4C9A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_4C610;
    v35 = sub_47E64();
    *(inited + 32) = v35;
    v36 = sub_47E74();
    *(inited + 33) = v36;
    v37 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v35)
    {
      v37 = sub_47E94();
    }

    sub_47E94();
    if (sub_47E94() != v36)
    {
      v37 = sub_47E94();
    }

    v38 = *&v21[*(v29 + 32) + 8];
    sub_47834();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = v52;
    sub_E940(v14, v52, &qword_63F80, &qword_4D020);
    v48 = v47 + *(v56 + 36);
    *v48 = v37;
    *(v48 + 8) = v40;
    *(v48 + 16) = v42;
    *(v48 + 24) = v44;
    *(v48 + 32) = v46;
    *(v48 + 40) = 0;
    v49 = v53;
    sub_E940(v47, v53, &qword_63F88, &qword_4D028);
    sub_6128(v49, v54, &qword_63F88, &qword_4D028);
    swift_storeEnumTagMultiPayload();
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    v50 = sub_A36C(&qword_63FB0, &qword_4D060);
    v51 = sub_46368();
    v59 = v50;
    v60 = v51;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return sub_60C8(v49, &qword_63F88, &qword_4D028);
  }

  else
  {
    sub_444C4(v6);
    v23 = v58;
    (*(v2 + 16))(v54, v6, v58);
    swift_storeEnumTagMultiPayload();
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    v24 = sub_A36C(&qword_63FB0, &qword_4D060);
    v25 = sub_46368();
    v59 = v24;
    v60 = v25;
    swift_getOpaqueTypeConformance2();
    sub_47CC4();
    return (*(v2 + 8))(v6, v23);
  }
}

uint64_t sub_444C4@<X0>(uint64_t a1@<X8>)
{
  v77 = a1;
  v78 = sub_47EF4();
  v76 = *(v78 - 8);
  v2 = *(v76 + 64);
  __chkstk_darwin(v78, v3);
  v75 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ViewModelPollVote();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8, v8);
  v10 = (&v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *v1;
  swift_getKeyPath();
  v83 = OBJC_IVAR____TtC13MessagesPolls13PollViewModel___observationRegistrar;
  *&v96 = v11;
  v12 = sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  swift_beginAccess();
  v13 = *(v11 + 72);
  v14 = *(v1 + 3);
  v15 = *(v1 + 7);
  v98 = *(v1 + 5);
  v99[0] = v15;
  *(v99 + 10) = *(v1 + 66);
  v79 = v1;
  v96 = *(v1 + 1);
  v97 = v14;

  v74 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v16 = v107;
  v84 = v106;

  sub_E8EC(v105);
  swift_getKeyPath();
  *&v96 = v11;
  v81 = v12;
  sub_475C4();

  v82 = v11;
  v17 = *(v11 + 88);
  if (!v17)
  {

    LODWORD(v18) = 0;
LABEL_23:
    v27 = sub_47464();
    v84 = &v68;
    v28 = *(*(v27 - 8) + 64);
    __chkstk_darwin(v27 - 8, v29);
    v30 = v79;
    sub_43D6C();
    v31 = *(v30 + 3);
    v32 = *(v30 + 7);
    v98 = *(v30 + 5);
    v99[0] = v32;
    *(v99 + 10) = *(v30 + 66);
    v96 = *(v30 + 1);
    v97 = v31;
    sub_48164();
    v33 = v104[4];

    sub_E8EC(v104);
    sub_40428(v33, 0);

    sub_47484();
    v34 = sub_47F04();
    v36 = v35;
    v38 = v37;
    LODWORD(v84) = v18;
    *&v96 = sub_46E20(v18);
    v80 = sub_47ED4();
    v73 = v40;
    v74 = v39;
    v42 = v41;
    sub_3189C(v34, v36, v38 & 1);

    swift_getKeyPath();
    v43 = v82;
    *&v96 = v82;
    sub_475C4();

    v71 = *(v43 + 98);
    KeyPath = swift_getKeyPath();
    swift_getKeyPath();
    *&v96 = v43;
    sub_475C4();

    v69 = *(v43 + 98);
    v70 = swift_getKeyPath();
    v101 = v42 & 1;
    swift_getKeyPath();
    *&v96 = v43;
    sub_475C4();

    v44 = *(v43 + 98);
    v68 = swift_getKeyPath();
    v102 = v44 ^ 1;
    sub_54A4(&qword_63920, &qword_4C9A8);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_4C610;
    v46 = sub_47E84();
    *(v45 + 32) = v46;
    v47 = sub_47EA4();
    *(v45 + 33) = v47;
    v48 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v46)
    {
      v48 = sub_47E94();
    }

    sub_47E94();
    if (sub_47E94() != v47)
    {
      v48 = sub_47E94();
    }

    v49 = v79;
    v50 = _s11RowTextViewVMa();
    v51 = *(v49 + *(v50 + 32));
    sub_47834();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v103 = 0;
    swift_getKeyPath();
    v60 = v82;
    *&v96 = v82;
    sub_475C4();

    v61 = v49;
    v62 = 0;
    if (*(v60 + 97) == 1)
    {
      v62 = *(v61 + *(v50 + 48));
    }

    v63 = v69 ^ 1;
    if (v71)
    {
      v64 = 1.0;
    }

    else
    {
      v64 = 0.5;
    }

    swift_getKeyPath();
    v65 = v82;
    *&v96 = v82;
    sub_475C4();

    v66 = *(v65 + 98);
    *&v85 = v80;
    *(&v85 + 1) = v74;
    LOBYTE(v86) = v42 & 1;
    *(&v86 + 1) = v73;
    *&v87 = KeyPath;
    *(&v87 + 1) = v64;
    *&v88 = v70;
    BYTE8(v88) = v63;
    *&v89 = v68;
    *(&v89 + 1) = v44;
    LOBYTE(v90) = v44 ^ 1;
    BYTE8(v90) = v48;
    *&v91 = v53;
    *(&v91 + 1) = v55;
    *&v92 = v57;
    *(&v92 + 1) = v59;
    LOBYTE(v93) = 0;
    *(&v93 + 1) = v62;
    LOBYTE(v94) = v66;
    *(&v94 + 1) = 0;
    v95 = v84;
    v67 = v75;
    sub_47EE4();
    sub_54A4(&qword_63FB0, &qword_4D060);
    sub_46368();
    sub_48024();
    (*(v76 + 8))(v67, v78);
    v99[5] = v93;
    v99[6] = v94;
    v100 = v95;
    v99[1] = v89;
    v99[2] = v90;
    v99[3] = v91;
    v99[4] = v92;
    v96 = v85;
    v97 = v86;
    v98 = v87;
    v99[0] = v88;
    return sub_60C8(&v96, &qword_63FB0, &qword_4D060);
  }

  v80 = v16;
  v18 = *(v13 + 16);
  if (!v18)
  {

    goto LABEL_23;
  }

  v19 = *(v82 + 80);
  v20 = v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v22 = 0;
  while (v22 < *(v13 + 16))
  {
    sub_47154(v20 + *(v6 + 72) * v22, v10, type metadata accessor for ViewModelPollVote);
    v23 = v10[3];
    if (v23 && (v10[2] == v19 ? (v24 = v23 == v17) : (v24 = 0), (v24 || (sub_48874() & 1) != 0) && (v25 = v10[1]) != 0))
    {
      if (*v10 == v84 && v25 == v80)
      {
        sub_471BC(v10, type metadata accessor for ViewModelPollVote);
LABEL_22:

        LODWORD(v18) = 1;
        goto LABEL_23;
      }

      v26 = sub_48874();
      result = sub_471BC(v10, type metadata accessor for ViewModelPollVote);
      if (v26)
      {
        goto LABEL_22;
      }
    }

    else
    {
      result = sub_471BC(v10, type metadata accessor for ViewModelPollVote);
    }

    if (v18 == ++v22)
    {

      LODWORD(v18) = 0;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_44DE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v163 = a2;
  v3 = sub_47C54();
  v155 = *(v3 - 8);
  v156 = v3;
  v4 = *(v155 + 64);
  __chkstk_darwin(v3, v5);
  v154 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_47D14();
  v152 = *(v7 - 8);
  v153 = v7;
  v8 = *(v152 + 64);
  __chkstk_darwin(v7, v9);
  v151 = &v129 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = _s11RowTextViewVMa();
  v145 = *(v166 - 8);
  v11 = *(v145 + 64);
  __chkstk_darwin(v166, v12);
  v146 = v13;
  v14 = &v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for AdaptiveGlyphSwiftUITextView(0);
  v15 = *(*(v165 - 8) + 64);
  __chkstk_darwin(v165, v16);
  v18 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_54A4(&qword_64038, &qword_4D100);
  v19 = *(*(v150 - 8) + 64);
  v21 = __chkstk_darwin(v150, v20);
  v147 = &v129 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21, v23);
  v149 = &v129 - v24;
  v148 = sub_54A4(&qword_64040, &qword_4D108);
  v25 = *(*(v148 - 8) + 64);
  __chkstk_darwin(v148, v26);
  v159 = &v129 - v27;
  v158 = sub_54A4(&qword_64048, &qword_4D110);
  v28 = *(*(v158 - 8) + 64);
  __chkstk_darwin(v158, v29);
  v161 = &v129 - v30;
  v160 = sub_54A4(&qword_64050, &qword_4D118);
  v31 = *(*(v160 - 8) + 64);
  v33 = __chkstk_darwin(v160, v32);
  v162 = &v129 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33, v35);
  v157 = &v129 - v37;
  __chkstk_darwin(v36, v38);
  v164 = &v129 - v39;
  v40 = *(a1 + 24);
  v41 = *(a1 + 56);
  v185 = *(a1 + 40);
  v186[0] = v41;
  *(v186 + 10) = *(a1 + 66);
  v183 = *(a1 + 8);
  v184 = v40;
  v42 = sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48194();
  swift_getKeyPath();
  v185 = v192[2];
  v186[0] = v193[0];
  *(v186 + 10) = *(v193 + 10);
  v183 = v192[0];
  v184 = v192[1];
  sub_48184();

  sub_60C8(v192, &qword_624C8, &unk_4AF90);
  v143 = *&v168[0];
  v144 = *(v168 + 8);
  v142 = sub_43D6C();
  v43 = *(a1 + 24);
  v44 = *(a1 + 56);
  v180[0] = *(a1 + 40);
  v180[1] = v44;
  *(&v180[1] + 10) = *(a1 + 66);
  v178 = *(a1 + 8);
  v179 = v43;
  v167 = v42;
  sub_48164();
  v45 = v166;
  v46 = *(a1 + *(v166 + 40));
  sub_54A4(&qword_62B50, &qword_4BB60);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_4A9C0;
  if (__OFADD__(v46, 1))
  {
    __break(1u);
  }

  else
  {
    *(v47 + 56) = &type metadata for Int;
    *(v47 + 64) = &protocol witness table for Int;
    *(v47 + 32) = v46 + 1;
    if (qword_61CD0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  sub_47494();
  v48 = sub_483E4();
  v140 = v49;
  v141 = v48;

  sub_E8EC(&v194);
  v50 = *(a1 + 24);
  v51 = *(a1 + 56);
  v180[0] = *(a1 + 40);
  v180[1] = v51;
  *(&v180[1] + 10) = *(a1 + 66);
  v178 = *(a1 + 8);
  v179 = v50;
  sub_48164();
  v195[0] = v174;
  v195[1] = v175;
  v196[0] = v176[0];
  *(v196 + 10) = *(v176 + 10);
  sub_E8EC(v195);
  v52 = *(a1 + *(v45 + 36));
  v138 = BYTE8(v196[1]);
  v139 = v52;
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v53 = (*(v145 + 80) + 16) & ~*(v145 + 80);
  v137 = swift_allocObject();
  sub_467C4(v14, v137 + v53);
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v135 = swift_allocObject();
  sub_467C4(v14, v135 + v53);
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v134 = swift_allocObject();
  sub_467C4(v14, v134 + v53);
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v133 = swift_allocObject();
  sub_467C4(v14, v133 + v53);
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v132 = swift_allocObject();
  sub_467C4(v14, v132 + v53);
  v54 = *(a1 + 24);
  v55 = *(a1 + 56);
  v180[0] = *(a1 + 40);
  v180[1] = v55;
  *(&v180[1] + 10) = *(a1 + 66);
  v178 = *(a1 + 8);
  v179 = v54;
  sub_48164();
  v56 = v197[1];
  v131 = v197[0];

  sub_E8EC(v197);
  v57 = *(a1 + *(v166 + 44));
  v58 = (a1 + *(v166 + 52));
  v59 = *v58;
  v145 = v58[1];
  *&v174 = v59;
  *(&v174 + 1) = v145;
  v136 = sub_54A4(qword_62A78, &qword_4B948);
  sub_48144();
  v129 = *(&v178 + 1);
  v130 = v178;
  v60 = v179;
  *(v18 + 25) = sub_62DC;
  *(v18 + 26) = 0;
  v61 = *(v165 + 76);
  *&v18[v61] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v62 = v142;
  *v18 = v143;
  *(v18 + 8) = v144;
  *(v18 + 3) = v62;
  v63 = [objc_allocWithZone(type metadata accessor for AdaptiveGlyphTextViewObserver()) init];
  v64 = v140;
  *(v18 + 4) = v141;
  *(v18 + 5) = v64;
  v18[48] = v138;
  *(v18 + 7) = v63;
  *(v18 + 8) = sub_46828;
  *(v18 + 9) = v137;
  *(v18 + 10) = sub_46840;
  v65 = v134;
  *(v18 + 11) = v135;
  *(v18 + 12) = sub_468BC;
  *(v18 + 13) = v65;
  *(v18 + 14) = sub_468D4;
  v66 = v132;
  *(v18 + 15) = v133;
  *(v18 + 16) = sub_46980;
  *(v18 + 17) = v66;
  v18[144] = v139;
  v67 = v130;
  *(v18 + 19) = v131;
  *(v18 + 20) = v56;
  *(v18 + 21) = v57;
  v68 = v129;
  *(v18 + 22) = v67;
  *(v18 + 23) = v68;
  *(v18 + 24) = v60;
  sub_47154(a1, v14, _s11RowTextViewVMa);
  v69 = swift_allocObject();
  sub_467C4(v14, v69 + v53);
  v70 = v151;
  sub_47D04();
  sub_46C78(&qword_63548, type metadata accessor for AdaptiveGlyphSwiftUITextView);
  v71 = v147;
  sub_47FE4();

  (*(v152 + 8))(v70, v153);
  sub_471BC(v18, type metadata accessor for AdaptiveGlyphSwiftUITextView);
  v72 = v154;
  sub_47C44();
  v73 = v149;
  sub_47A44();
  (*(v155 + 8))(v72, v156);
  sub_60C8(v71, &qword_64038, &qword_4D100);
  sub_46B8C();
  v74 = v159;
  sub_47F94();
  sub_60C8(v73, &qword_64038, &qword_4D100);
  v166 = a1 + *(v166 + 32);
  v75 = *(v166 + 48);
  v76 = (v74 + *(v148 + 36));
  v77 = *(sub_47A84() + 20);
  v78 = enum case for RoundedCornerStyle.continuous(_:);
  v79 = sub_47C24();
  v80 = v76 + v77;
  v81 = v145;
  (*(*(v79 - 8) + 104))(v80, v78, v79);
  *v76 = v75;
  v76[1] = v75;
  *(v76 + *(sub_54A4(&qword_62390, &qword_4AE78) + 36)) = 256;
  v82 = *(a1 + 24);
  v83 = *(a1 + 56);
  v185 = *(a1 + 40);
  v186[0] = v83;
  *(v186 + 10) = *(a1 + 66);
  v183 = *(a1 + 8);
  v184 = v82;
  sub_48164();
  v198[0] = v178;
  v198[1] = v179;
  *v199 = v180[0];
  *&v199[10] = *(v180 + 10);
  sub_E8EC(v198);
  if (v199[24] == 1)
  {
    *&v183 = v59;
    *(&v183 + 1) = v81;
    sub_48124();
  }

  sub_482A4();
  sub_47904();
  v84 = v161;
  sub_E940(v74, v161, &qword_64040, &qword_4D108);
  v85 = (v84 + *(v158 + 36));
  v86 = v190[3];
  *v85 = v190[2];
  v85[1] = v86;
  v85[2] = v190[4];
  *&v183 = v59;
  *(&v183 + 1) = v81;
  sub_48124();
  v87 = v178;
  v88 = v157;
  sub_E940(v84, v157, &qword_64048, &qword_4D110);
  v89 = (v88 + *(v160 + 36));
  *v89 = 0;
  v89[1] = v87;
  v90 = v164;
  sub_E940(v88, v164, &qword_64050, &qword_4D118);
  v91 = *(a1 + 24);
  v92 = *(a1 + 56);
  v185 = *(a1 + 40);
  v186[0] = v92;
  *(v186 + 10) = *(a1 + 66);
  v183 = *(a1 + 8);
  v184 = v91;
  sub_48164();
  v189[0] = v178;
  v189[1] = v179;
  v190[0] = v180[0];
  *(v190 + 10) = *(v180 + 10);
  sub_E8EC(v189);
  if (BYTE8(v190[1]) == 1)
  {
    v93 = *a1;
    swift_getKeyPath();
    *&v183 = v93;
    sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    if (*(v93 + 98) != 1)
    {
      goto LABEL_12;
    }

    swift_getKeyPath();
    *&v183 = v93;
    sub_475C4();

    if (*(v93 + 97) != 1)
    {
      goto LABEL_12;
    }
  }

  v94 = *a1;
  v95 = *(a1 + 24);
  v96 = *(a1 + 56);
  v185 = *(a1 + 40);
  v186[0] = v96;
  *(v186 + 10) = *(a1 + 66);
  v183 = *(a1 + 8);
  v184 = v95;
  sub_48164();
  v97 = sub_1F8F8(v191);
  v99 = v98;
  sub_E8EC(v191);
  if (v99)
  {
    *&v183 = v97;
    *(&v183 + 1) = v99;
    sub_10330();
    v167 = sub_47F14();
    v101 = v100;
    v103 = v102;
    v105 = v104;
    KeyPath = swift_getKeyPath();
    v107 = sub_47EB4();
    v108 = swift_getKeyPath();
    v109 = v103 & 1;
    LOBYTE(v183) = v103 & 1;
    LOBYTE(v178) = 0;
    v110 = *(v166 + 56);

    v111 = sub_47E74();
    v112 = sub_47E94();
    sub_47E94();
    if (sub_47E94() != v111)
    {
      v112 = sub_47E94();
    }

    v113 = *(v166 + 24);
    sub_47834();
    LOBYTE(v174) = 0;
    *&v178 = v167;
    *(&v178 + 1) = v101;
    LOBYTE(v179) = v109;
    *(&v179 + 1) = v105;
    *&v180[0] = KeyPath;
    *(&v180[0] + 1) = 2;
    LOBYTE(v180[1]) = 0;
    *(&v180[1] + 1) = v108;
    *&v180[2] = v107;
    *(&v180[2] + 1) = v110;
    LOBYTE(v181) = v112;
    *(&v181 + 1) = v114;
    *&v182[0] = v115;
    *(&v182[0] + 1) = v116;
    *&v182[1] = v117;
    BYTE8(v182[1]) = 0;
    nullsub_1(&v178);
    v186[1] = v180[2];
    v187 = v181;
    v188[0] = v182[0];
    *(v188 + 9) = *(v182 + 9);
    v183 = v178;
    v184 = v179;
    v185 = v180[0];
    v186[0] = v180[1];
    v90 = v164;
  }

  else
  {
LABEL_12:
    sub_46CC0(&v183);
  }

  v118 = v162;
  sub_6128(v90, v162, &qword_64050, &qword_4D118);
  v171 = v186[1];
  v172 = v187;
  v173[0] = v188[0];
  *(v173 + 9) = *(v188 + 9);
  v168[0] = v183;
  v168[1] = v184;
  v169 = v185;
  v170 = v186[0];
  v119 = v163;
  sub_6128(v118, v163, &qword_64050, &qword_4D118);
  v120 = (v119 + *(sub_54A4(&qword_64060, &qword_4D170) + 48));
  v121 = v171;
  v122 = v172;
  v176[2] = v171;
  v176[3] = v172;
  v123 = v173[0];
  v177[0] = v173[0];
  v124 = *(v173 + 9);
  *(v177 + 9) = *(v173 + 9);
  v125 = v168[0];
  v126 = v168[1];
  v174 = v168[0];
  v175 = v168[1];
  v127 = v170;
  v176[0] = v169;
  v176[1] = v170;
  v120[2] = v169;
  v120[3] = v127;
  *v120 = v125;
  v120[1] = v126;
  *(v120 + 105) = v124;
  v120[5] = v122;
  v120[6] = v123;
  v120[4] = v121;
  sub_46CDC(&v174, &v178);
  sub_60C8(v90, &qword_64050, &qword_4D118);
  v180[2] = v171;
  v181 = v172;
  v182[0] = v173[0];
  *(v182 + 9) = *(v173 + 9);
  v178 = v168[0];
  v179 = v168[1];
  v180[0] = v169;
  v180[1] = v170;
  sub_60C8(&v178, &qword_64068, &qword_4D178);
  return sub_60C8(v118, &qword_64050, &qword_4D118);
}

uint64_t sub_45E94(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  result = *(v5 + 160);
  if (result != a1 || *(v5 + 168) != a2)
  {
    result = sub_48874();
    if ((result & 1) == 0)
    {

      return sub_1E83C(a1, a2);
    }
  }

  return result;
}

uint64_t sub_45F7C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v5 + 160) == a1 && *(v5 + 168) == a2)
  {
    return sub_1E83C(0, 0xE000000000000000);
  }

  result = sub_48874();
  if (result)
  {
    return sub_1E83C(0, 0xE000000000000000);
  }

  return result;
}

uint64_t sub_4605C(void *a1)
{
  result = _s11RowTextViewVMa();
  if (*(a1 + *(result + 36)) == 1)
  {
    v3 = *a1;
    swift_getKeyPath();
    sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
    sub_475C4();

    v4 = *(v3 + 168);
    v5 = *(v3 + 160) & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(v4) & 0xF;
    }

    if (v5)
    {
      return sub_1E83C(0, 0xE000000000000000);
    }
  }

  return result;
}

uint64_t sub_4613C(uint64_t *a1)
{
  v9 = *(a1 + 5);
  *v10 = *(a1 + 7);
  *&v10[10] = *(a1 + 66);
  v7 = *(a1 + 1);
  v8 = *(a1 + 3);
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  v3 = v11[0];
  v2 = v11[1];

  sub_E8EC(v11);
  v4 = *a1;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  v5 = *(v4 + 160) == v3 && *(v4 + 168) == v2;
  if (v5 || (sub_48874() & 1) != 0)
  {
  }

  else
  {
    return sub_1E83C(v3, v2);
  }
}

unint64_t sub_46284()
{
  result = qword_63F98;
  if (!qword_63F98)
  {
    sub_A36C(&qword_63F80, &qword_4D020);
    sub_EAF0(&qword_63FA0, &qword_63FA8, &qword_4D058);
    sub_EAF0(&qword_63888, &qword_63890, &qword_4C860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63F98);
  }

  return result;
}

unint64_t sub_46368()
{
  result = qword_63FB8;
  if (!qword_63FB8)
  {
    sub_A36C(&qword_63FB0, &qword_4D060);
    sub_46420();
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FB8);
  }

  return result;
}

unint64_t sub_46420()
{
  result = qword_63FC0;
  if (!qword_63FC0)
  {
    sub_A36C(&qword_63FC8, &qword_4D068);
    sub_46504(&qword_63FD0, &qword_63FD8, &qword_4D070, sub_46588);
    sub_EAF0(&qword_63778, &qword_63780, &qword_4C768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FC0);
  }

  return result;
}

uint64_t sub_46504(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_A36C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_46588()
{
  result = qword_63FE0;
  if (!qword_63FE0)
  {
    sub_A36C(&qword_63FE8, &qword_4D078);
    sub_46640();
    sub_EAF0(&qword_64020, &qword_64028, &qword_4D098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FE0);
  }

  return result;
}

unint64_t sub_46640()
{
  result = qword_63FF0;
  if (!qword_63FF0)
  {
    sub_A36C(&qword_63FF8, &qword_4D080);
    sub_466F8();
    sub_EAF0(&qword_64010, &qword_64018, &qword_4D090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_63FF0);
  }

  return result;
}

unint64_t sub_466F8()
{
  result = qword_64000;
  if (!qword_64000)
  {
    sub_A36C(&qword_64008, &qword_4D088);
    sub_EAF0(&qword_623C0, &qword_623C8, &qword_4AE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64000);
  }

  return result;
}

uint64_t sub_467C4(uint64_t a1, uint64_t a2)
{
  v4 = _s11RowTextViewVMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_46858(uint64_t (*a1)(void))
{
  v3 = *(_s11RowTextViewVMa() - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  return a1();
}

uint64_t sub_468EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v6 = *(_s11RowTextViewVMa() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2, v7);
}

uint64_t sub_469A0()
{
  v1 = (_s11RowTextViewVMa() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 8);

  v7 = *(v0 + v3 + 16);

  v8 = *(v0 + v3 + 32);

  v9 = *(v0 + v3 + 48);

  v10 = *(v0 + v3 + 56);

  v11 = *(v0 + v3 + 72);

  v12 = v1[8];
  v13 = sub_47A04();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  sub_EB40(*(v0 + v3 + v1[9]), *(v0 + v3 + v1[9] + 8));
  v14 = *(v0 + v3 + v1[10] + 56);

  v15 = *(v0 + v3 + v1[14]);

  v16 = *(v0 + v3 + v1[15] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_46B18(uint64_t (*a1)(uint64_t))
{
  v2 = *(_s11RowTextViewVMa() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_46B8C()
{
  result = qword_64058;
  if (!qword_64058)
  {
    sub_A36C(&qword_64038, &qword_4D100);
    sub_46C78(&qword_63548, type metadata accessor for AdaptiveGlyphSwiftUITextView);
    sub_46C78(&qword_63240, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64058);
  }

  return result;
}

uint64_t sub_46C78(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_46CC0(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 105) = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_46CDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_64068, &qword_4D178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_46D4C@<X0>(uint64_t a1@<X8>)
{
  result = sub_47BC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_46D80(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_47BD4();
}

uint64_t sub_46DB0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_47B64();
  *a1 = result;
  return result;
}

uint64_t sub_46DDC(uint64_t *a1)
{
  v1 = *a1;

  return sub_47B74();
}

uint64_t sub_46E20(char a1)
{
  v2 = v1;
  v4 = *v1;
  swift_getKeyPath();
  sub_46C78(&qword_62300, type metadata accessor for PollViewModel);
  sub_475C4();

  if (*(v4 + 98) == 1)
  {
    v15 = *(v1 + 5);
    *v16 = *(v1 + 7);
    *&v16[10] = *(v1 + 66);
    v13 = *(v1 + 1);
    v14 = *(v1 + 3);
    sub_54A4(&qword_624C8, &unk_4AF90);
    sub_48164();
    v5 = v18;

    sub_E8EC(v17);
    v6 = *(v5 + 16);
    v7 = [v6 length];

    if (v7)
    {
      return sub_480A4();
    }

    else
    {
      sub_480B4();
      v11 = *(v2 + *(_s11RowTextViewVMa() + 32) + 32);
      v8 = sub_48094();
    }
  }

  else
  {
    v9 = *(v4 + 152);
    v10 = sub_43C14();
    if (a1)
    {
      if (v9)
      {
        if (qword_61D58 != -1)
        {
          swift_once();
        }

        v8 = qword_643F0;
      }

      else
      {
        if (qword_61D50 != -1)
        {
          swift_once();
        }

        v8 = qword_643E8;
      }
    }

    else if (v10)
    {
      if (qword_61D68 != -1)
      {
        swift_once();
      }

      v8 = qword_64400;
    }

    else
    {
      if (qword_61D38 != -1)
      {
        swift_once();
      }

      v8 = qword_643D0;
    }
  }

  return v8;
}

uint64_t sub_470A8@<X0>(void *a1@<X8>)
{
  result = sub_47B24();
  *a1 = v3;
  return result;
}

uint64_t sub_470FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_47B04();
  *a1 = result & 1;
  return result;
}

uint64_t sub_47154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_471BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_47220()
{
  result = qword_64070;
  if (!qword_64070)
  {
    sub_A36C(&qword_64078, &qword_4D2B8);
    sub_46504(&qword_63F90, &qword_63F88, &qword_4D028, sub_46284);
    sub_A36C(&qword_63FB0, &qword_4D060);
    sub_46368();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_64070);
  }

  return result;
}