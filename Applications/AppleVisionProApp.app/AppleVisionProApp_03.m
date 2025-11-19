uint64_t sub_10004CCC8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_100169788, &qword_1001119F0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      *(*(v8 + 56) + v16) = v25;
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

uint64_t sub_10004CF68(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_100169758, &unk_10010D1F0);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_10004D20C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_100169770, &qword_10010D208);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10000BF7C(v25, v37);
      }

      else
      {
        sub_1000076F0(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      result = sub_10000BF7C(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_10004D4C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_100169760, &unk_1001119E0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_10004D76C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002BE4(&qword_100169768, &qword_10010D200);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_10004DA2C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for JoeColorType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  sub_100002BE4(&qword_1001697B0, &unk_10010D250);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
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
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      sub_100050A30();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
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
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
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

uint64_t sub_10004DDD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100068914(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10004E708();
      v9 = v17;
      goto LABEL_8;
    }

    sub_10004CA48(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_100068914(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = v20[7] + 8 * v9;

    return sub_10004F518(a1, v21);
  }

  else
  {

    return sub_10004E630(v9, a2, a1, v20);
  }
}

unint64_t sub_10004DEF8(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10006889C(a2, a3);
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
      sub_10004CCC8(v16, a4 & 1);
      v20 = *v5;
      result = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_10004E884();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + result) = a1 & 1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + result) = a1 & 1;
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

uint64_t sub_10004E064(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004CF68(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_10004E9EC();
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

_OWORD *sub_10004E1DC(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004EB58();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10004D20C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10006889C(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_1000052E4(v23);

    return sub_10000BF7C(a1, v23);
  }

  else
  {
    sub_10004E69C(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10004E32C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10006889C(a2, a3);
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
      sub_10004D4C4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10006889C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_10004ECFC();
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

uint64_t sub_10004E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10006889C(a3, a4);
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
      sub_10004D76C(v18, a5 & 1);
      v22 = *v6;
      v13 = sub_10006889C(a3, a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_10004EE6C();
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

uint64_t sub_10004E630(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100008A5C(a3, a4[7] + 8 * a1);
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

_OWORD *sub_10004E69C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_10000BF7C(a4, (a5[7] + 32 * a1));
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

void *sub_10004E708()
{
  v1 = v0;
  sub_100002BE4(&qword_10016BF28, &qword_1001119F8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v17 = 8 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        sub_100008A24(*(v2 + 56) + v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100008A5C(v19, *(v4 + 56) + v17);
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

void *sub_10004E884()
{
  v1 = v0;
  sub_100002BE4(&qword_100169788, &qword_1001119F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

id sub_10004E9EC()
{
  v1 = v0;
  sub_100002BE4(&qword_100169758, &unk_10010D1F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_10004EB58()
{
  v1 = v0;
  sub_100002BE4(&qword_100169770, &qword_10010D208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        sub_1000076F0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_10000BF7C(v25, (*(v4 + 56) + v22));
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

void *sub_10004ECFC()
{
  v1 = v0;
  sub_100002BE4(&qword_100169760, &unk_1001119E0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_10004EE6C()
{
  v1 = v0;
  sub_100002BE4(&qword_100169768, &qword_10010D200);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

char *sub_10004EFE4()
{
  v1 = v0;
  v34 = type metadata accessor for JoeColorType();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_1001697B0, &unk_10010D250);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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

id sub_10004F264()
{
  v0 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v0)
  {
    v1 = v0;
    static UserDefaultUtilities.SharedConstants.visioncompaniondHasInstalledTetsuoKey.getter();
    v2 = String._bridgeToObjectiveC()();

    v3 = [v1 BOOLForKey:v2];
  }

  else
  {
    if (qword_100168E30 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181FB8);
    v2 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v2, v5, "Failed to access daemon user defaults", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

unint64_t sub_10004F388(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = sub_10000B6F0(_swiftEmptyArrayStorage);
  }

  v2 = byte_10016BF08;
  v3 = objc_allocWithZone(NSNumber);

  v4 = [v3 initWithBool:v2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_10004E064(v4, 0xD000000000000017, 0x800000010011DDE0, isUniquelyReferenced_nonNull_native);
  v6 = [objc_allocWithZone(NSNumber) initWithBool:sub_10004F264() & 1];
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_10004E064(v6, 0xD000000000000018, 0x800000010011DE00, v7);
  return v1;
}

uint64_t sub_10004F4B0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016BF20, &unk_1001119D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s20TetsuoAnalyticsEventOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s20TetsuoAnalyticsEventOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004F6D8()
{
  result = qword_10016BF30;
  if (!qword_10016BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF30);
  }

  return result;
}

unint64_t sub_10004F730()
{
  result = qword_10016BF38;
  if (!qword_10016BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF38);
  }

  return result;
}

uint64_t sub_10004F784(void *a1)
{
  sub_10004C784();
  v2 = a1;
  isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
  v4 = static NSObject.== infix(_:_:)();

  if (v4)
  {

    return 0;
  }

  else
  {
    v6 = v2;
    v7 = NSNumber.init(integerLiteral:)(1).super.super.isa;
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {

      return 1;
    }

    else
    {
      v9 = v6;
      v10 = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {

        return 2;
      }

      else
      {
        v12 = v9;
        v13 = NSNumber.init(integerLiteral:)(3).super.super.isa;
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          return 3;
        }

        else
        {
          v15 = NSNumber.init(integerLiteral:)(4).super.super.isa;
          v16 = static NSObject.== infix(_:_:)();

          if (v16)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_10004F8C4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159918, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004F910(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 30324 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7368801 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972656C6C6167 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1668508013 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726F7473 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10004FAB4(uint64_t *a1)
{
  v53 = sub_100002BE4(&qword_10016BF40, &qword_100111BD8);
  v50 = *(v53 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v53);
  v55 = &v43 - v3;
  v4 = sub_100002BE4(&qword_10016BF48, &qword_100111BE0);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v54 = &v43 - v6;
  v7 = sub_100002BE4(&qword_10016BF50, &qword_100111BE8);
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  __chkstk_darwin(v7);
  v56 = &v43 - v9;
  v10 = sub_100002BE4(&qword_10016BF58, &qword_100111BF0);
  v46 = *(v10 - 8);
  v47 = v10;
  v11 = *(v46 + 64);
  __chkstk_darwin(v10);
  v13 = &v43 - v12;
  v14 = sub_100002BE4(&qword_10016BF60, &qword_100111BF8);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  __chkstk_darwin(v14);
  v17 = &v43 - v16;
  v18 = sub_100002BE4(&qword_10016BF68, &unk_100111C00);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v43 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v57 = a1;
  sub_10000524C(a1, v24);
  sub_100050218();
  v25 = v58;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_9;
  }

  v26 = v17;
  v44 = v14;
  v27 = v56;
  v58 = v19;
  v28 = v22;
  v29 = KeyedDecodingContainer.allKeys.getter();
  v30 = (2 * *(v29 + 16)) | 1;
  v59 = v29;
  v60 = v29 + 32;
  v61 = 0;
  v62 = v30;
  v31 = sub_100017D5C();
  if (v31 == 5 || v61 != v62 >> 1)
  {
    v35 = v18;
    v36 = type metadata accessor for DecodingError();
    v19 = swift_allocError();
    v38 = v37;
    v39 = *(sub_100002BE4(&qword_100169D10, &qword_100119030) + 48);
    *v38 = &type metadata for CardType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    (*(v58 + 8))(v28, v35);
    swift_unknownObjectRelease();
LABEL_9:
    sub_1000052E4(v57);
    return v19;
  }

  v19 = v31;
  if (v31 <= 1u)
  {
    if (v31)
    {
      v63 = 1;
      sub_100050368();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v46 + 8))(v13, v47);
    }

    else
    {
      v63 = 0;
      sub_1000503BC();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v45 + 8))(v26, v44);
    }

    (*(v58 + 8))(v22, v18);
  }

  else if (v31 == 2)
  {
    v63 = 2;
    sub_100050314();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = v58;
    (*(v48 + 8))(v27, v49);
    (*(v41 + 8))(v22, v18);
  }

  else
  {
    v32 = v58;
    v33 = v28;
    if (v31 == 3)
    {
      v63 = 3;
      sub_1000502C0();
      v34 = v54;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v51 + 8))(v34, v52);
    }

    else
    {
      v63 = 4;
      sub_10005026C();
      v42 = v55;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v50 + 8))(v42, v53);
    }

    (*(v32 + 8))(v33, v18);
  }

  swift_unknownObjectRelease();
  sub_1000052E4(v57);
  return v19;
}

unint64_t sub_100050218()
{
  result = qword_10016BF70;
  if (!qword_10016BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF70);
  }

  return result;
}

unint64_t sub_10005026C()
{
  result = qword_10016BF78;
  if (!qword_10016BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF78);
  }

  return result;
}

unint64_t sub_1000502C0()
{
  result = qword_10016BF80;
  if (!qword_10016BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF80);
  }

  return result;
}

unint64_t sub_100050314()
{
  result = qword_10016BF88;
  if (!qword_10016BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF88);
  }

  return result;
}

unint64_t sub_100050368()
{
  result = qword_10016BF90;
  if (!qword_10016BF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF90);
  }

  return result;
}

unint64_t sub_1000503BC()
{
  result = qword_10016BF98;
  if (!qword_10016BF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BF98);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppTitleComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppTitleComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000505BC()
{
  result = qword_10016BFD0;
  if (!qword_10016BFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD0);
  }

  return result;
}

unint64_t sub_100050614()
{
  result = qword_10016BFD8;
  if (!qword_10016BFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFD8);
  }

  return result;
}

unint64_t sub_10005066C()
{
  result = qword_10016BFE0;
  if (!qword_10016BFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE0);
  }

  return result;
}

unint64_t sub_1000506C4()
{
  result = qword_10016BFE8;
  if (!qword_10016BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFE8);
  }

  return result;
}

unint64_t sub_10005071C()
{
  result = qword_10016BFF0;
  if (!qword_10016BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF0);
  }

  return result;
}

unint64_t sub_100050774()
{
  result = qword_10016BFF8;
  if (!qword_10016BFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016BFF8);
  }

  return result;
}

unint64_t sub_1000507CC()
{
  result = qword_10016C000;
  if (!qword_10016C000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C000);
  }

  return result;
}

unint64_t sub_100050824()
{
  result = qword_10016C008;
  if (!qword_10016C008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C008);
  }

  return result;
}

unint64_t sub_10005087C()
{
  result = qword_10016C010;
  if (!qword_10016C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C010);
  }

  return result;
}

unint64_t sub_1000508D4()
{
  result = qword_10016C018;
  if (!qword_10016C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C018);
  }

  return result;
}

unint64_t sub_10005092C()
{
  result = qword_10016C020;
  if (!qword_10016C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C020);
  }

  return result;
}

unint64_t sub_100050984()
{
  result = qword_10016C028;
  if (!qword_10016C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C028);
  }

  return result;
}

unint64_t sub_1000509DC()
{
  result = qword_10016C030;
  if (!qword_10016C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C030);
  }

  return result;
}

unint64_t sub_100050A30()
{
  result = qword_10016C038;
  if (!qword_10016C038)
  {
    type metadata accessor for JoeColorType();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C038);
  }

  return result;
}

uint64_t sub_100050A94(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_100050ADC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_100050B58()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._countAndFlagsBits = 1397770580;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_10016C040 = v4;
}

uint64_t sub_100050C04()
{
  v1 = v0;
  v2 = sub_100002BE4(&qword_10016C050, &qword_100112170);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = v16 - v4;
  *v5 = static HorizontalAlignment.center.getter();
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = sub_100002BE4(&qword_10016C058, &qword_100112178);
  sub_100050E2C(v0, &v5[*(v6 + 44)]);
  v7 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  v9 = &v5[*(v2 + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  v17 = *(v1 + 24);
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.projectedValue.getter();
  v10 = swift_allocObject();
  v11 = v1[1];
  v10[1] = *v1;
  v10[2] = v11;
  v12 = v1[3];
  v10[3] = v1[2];
  v10[4] = v12;
  sub_100051744(v1, v16);
  sub_100002BE4(&qword_10016C060, &qword_1001121B8);
  sub_10005177C();
  v13 = type metadata accessor for PagePresentationSizing();
  v14 = sub_100051860();
  v16[0] = &type metadata for UserGuideView;
  v16[1] = v13;
  v16[2] = v14;
  v16[3] = &protocol witness table for PagePresentationSizing;
  swift_getOpaqueTypeConformance2();
  View.sheet<A>(isPresented:onDismiss:content:)();

  return sub_1000518B4(v5);
}

uint64_t sub_100050E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C090, &qword_1001121D8);
  v17 = *(v4 - 8);
  v5 = *(v17 + 64);
  __chkstk_darwin(v4);
  v7 = &v18[-v6 - 8];
  if (*(a1 + 8))
  {
    if (MobileGestaltCoordinator.hasHomeButton.getter())
    {
      v8 = *(v17 + 56);

      return v8(a2, 1, 1, v4);
    }

    else
    {
      if (qword_100168F40 != -1)
      {
        swift_once();
      }

      v10 = *(&xmmword_10016C040 + 1);
      *v7 = xmmword_10016C040;
      *(v7 + 1) = v10;
      v7[16] = 1;
      v11 = &v7[*(v4 + 40)];

      *v11 = static HorizontalAlignment.center.getter();
      *(v11 + 1) = 0x4030000000000000;
      v11[16] = 0;
      v12 = *(sub_100002BE4(&qword_10016C098, &qword_1001121E0) + 44);
      v19 = sub_1000E870C();
      v13 = swift_allocObject();
      v14 = *(a1 + 16);
      v13[1] = *a1;
      v13[2] = v14;
      v15 = *(a1 + 48);
      v13[3] = *(a1 + 32);
      v13[4] = v15;
      sub_100051744(a1, v18);
      sub_100002BE4(&qword_10016C0A0, &qword_1001121E8);
      type metadata accessor for ListTipView();
      sub_100012C48(&qword_10016C0A8, &qword_10016C0A0, &qword_1001121E8);
      sub_100051924(&qword_10016C0B0, type metadata accessor for ListTipView);
      sub_100051924(&qword_10016C0B8, type metadata accessor for Tip);
      ForEach<>.init(_:content:)();
      *&v7[*(v4 + 44)] = 0x4024000000000000;
      sub_10005196C(v7, a2);
      return (*(v17 + 56))(a2, 0, 1, v4);
    }
  }

  else
  {
    v16 = *(a1 + 16);
    type metadata accessor for AppDelegate();
    sub_100051924(&qword_10016A710, type metadata accessor for AppDelegate);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000511C0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  sub_100051A58(a1, a3, type metadata accessor for Tip);
  v5 = swift_allocObject();
  v6 = a2[1];
  *(v5 + 1) = *a2;
  *(v5 + 2) = v6;
  v7 = a2[3];
  *(v5 + 3) = a2[2];
  *(v5 + 4) = v7;
  v8 = (a3 + *(type metadata accessor for ListTipView() + 20));
  *v8 = sub_100051A34;
  v8[1] = v5;
  return sub_100051744(a2, &v10);
}

uint64_t sub_100051268(uint64_t a1)
{
  v3 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TipDestinationAction(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = v22 - v13;
  __chkstk_darwin(v12);
  v16 = v22 - v15;
  sub_100051A58(a1, v22 - v15, type metadata accessor for TipDestinationAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051A58(a1, v14, type metadata accessor for TipDestinationAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_100051AC0(v14, v6);
      sub_100081630();
      v23 = *(v1 + 24);
      LOBYTE(v22[0]) = 0;
      sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
      State.wrappedValue.setter();
      v17 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination;
      v18 = v6;
    }

    else
    {
      v17 = type metadata accessor for TipDestinationAction;
      v18 = v14;
    }

    sub_100051B24(v18, v17);
    return sub_100051B24(v16, type metadata accessor for TipDestinationAction);
  }

  else
  {
    sub_100051A58(a1, v11, type metadata accessor for TipDestinationAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_100051B24(v11, type metadata accessor for TipDestinationAction);
    }

    else
    {
      v20 = *v11;
      if (*v11 > 1u)
      {
        if (v20 == 2)
        {
          v21 = 0xEC00000037333966;
          v20 = 0x3763353738766564;
        }

        else
        {
          v21 = 0xEC00000065373636;
          v20 = 0x6333663735766564;
        }
      }

      else if (*v11)
      {
        v21 = 0xEC00000034383065;
        v20 = 0x3030386431766564;
      }

      else
      {
        v21 = 0xE000000000000000;
      }

      v23 = *(v1 + 40);
      v24 = *(v1 + 56);
      v22[0] = v20;
      v22[1] = v21;
      sub_100002BE4(&qword_10016C088, &qword_1001121D0);
      State.wrappedValue.setter();
      v23 = *(v1 + 24);
      LOBYTE(v22[0]) = 1;
      sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
      return State.wrappedValue.setter();
    }
  }
}

uint64_t sub_1000515B8(uint64_t a1)
{
  v2 = type metadata accessor for PagePresentationSizing();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  sub_100002BE4(&qword_10016C088, &qword_1001121D0);
  State.wrappedValue.getter();
  v9 = v8;
  static PresentationSizing<>.page.getter();
  sub_100051860();
  View.presentationSizing<A>(_:)();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_1000516F4()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  return sub_100050C04();
}

unint64_t sub_10005177C()
{
  result = qword_10016C068;
  if (!qword_10016C068)
  {
    sub_10000459C(&qword_10016C050, &qword_100112170);
    sub_100012C48(&qword_10016C070, &qword_10016C078, &unk_1001121C0);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C068);
  }

  return result;
}

unint64_t sub_100051860()
{
  result = qword_10016C080;
  if (!qword_10016C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C080);
  }

  return result;
}

uint64_t sub_1000518B4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016C050, &qword_100112170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100051924(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005196C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C090, &qword_1001121D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000519DC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100051A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100051AC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100051B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100051B84()
{
  sub_10000459C(&qword_10016C050, &qword_100112170);
  sub_10000459C(&qword_10016C060, &qword_1001121B8);
  sub_10005177C();
  type metadata accessor for PagePresentationSizing();
  sub_100051860();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_100051C60()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, "init");
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100182048);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s - Creating Tetsuo Config Service", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return v1;
}

id sub_100051DF8(uint64_t a1)
{
  v2 = MCGestaltIsiPad();
  if (qword_100168E60 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100006B0C(v3, qword_100182048);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v13);

    *(v6 + 4) = v10;
    *(v6 + 12) = 1024;
    if (v2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    *(v6 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s - Verifying device type %d", v6, 0x12u);
    sub_1000052E4(v7);
  }

  else
  {

    if (v2)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  result = [objc_opt_self() valueWithInt32:v11 inContext:a1];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100052058()
{
  result = qword_10016C0E8;
  if (!qword_10016C0E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10016C0E8);
  }

  return result;
}

void sub_1000520FC()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x5445535F4E45504FLL;
  v1._object = 0xED000053474E4954;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016C158 = v4;
}

uint64_t sub_1000521BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v48 = type metadata accessor for InsetGroupedListStyle();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v48);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016C168, &qword_1001122A8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v48 - v12;
  v14 = sub_100002BE4(&qword_10016C170, &qword_1001122B0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v48 - v17;
  v50 = a1;
  v51 = a2;
  v52 = a1;
  v53 = a2;
  sub_100002BE4(&qword_10016C178, &qword_1001122B8);
  v19 = sub_10000459C(&qword_10016C180, &qword_1001122C0);
  v20 = sub_100053F14();
  v54 = v19;
  v55 = v20;
  swift_getOpaqueTypeConformance2();
  List<>.init(content:)();
  v21 = sub_100012C48(&qword_10016C200, &qword_10016C168, &qword_1001122A8);
  View.listHasStackBehavior()();
  (*(v10 + 8))(v13, v9);
  InsetGroupedListStyle.init()();
  v54 = v9;
  v55 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v48;
  v22 = v49;
  View.listStyle<A>(_:)();
  (*(v5 + 8))(v8, v23);
  (*(v15 + 8))(v18, v14);
  v24 = v22;
  LOBYTE(v22) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = v24 + *(sub_100002BE4(&qword_10016C208, &qword_100112308) + 36);
  *v33 = v22;
  *(v33 + 8) = v26;
  *(v33 + 16) = v28;
  *(v33 + 24) = v30;
  *(v33 + 32) = v32;
  *(v33 + 40) = 0;
  v34 = static Edge.Set.bottom.getter();
  if (qword_100168F48 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v24 + *(sub_100002BE4(&qword_10016C210, &qword_100112310) + 36);
  *v43 = v34;
  *(v43 + 8) = v36;
  *(v43 + 16) = v38;
  *(v43 + 24) = v40;
  *(v43 + 32) = v42;
  *(v43 + 40) = 0;
  v44 = swift_allocObject();
  v45 = v51;
  *(v44 + 16) = v50;
  *(v44 + 24) = v45;
  v46 = (v24 + *(sub_100002BE4(&qword_10016C218, &unk_100112318) + 36));
  *v46 = sub_10005435C;
  v46[1] = v44;
  v46[2] = 0;
  v46[3] = 0;
}

uint64_t sub_100052638(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C1C8, &qword_1001122E8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14[-v6];
  v8 = sub_100002BE4(&qword_10016C180, &qword_1001122C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v14[-v11];
  v15 = a1;
  v16 = a2;
  sub_100053244(a2, v7);
  sub_100002BE4(&qword_10016C198, &qword_1001122C8);
  sub_100053FAC();
  sub_100054150();
  Section<>.init(footer:content:)();
  sub_100053F14();
  View.onOpenURL(perform:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100052808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = _swiftEmptyArrayStorage;
LABEL_5:
    v11[0] = v5;
    sub_100054460(v11);
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;

    sub_100002BE4(&qword_10016C240, &qword_100112368);
    sub_100002BE4(&qword_10016C248, &qword_100112370);
    sub_100012C48(&qword_10016C250, &qword_10016C240, &qword_100112368);
    v8 = sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    v9 = sub_10005406C();
    v11[0] = v8;
    v11[1] = v9;
    swift_getOpaqueTypeConformance2();
    sub_100054E58();
    return ForEach<>.init(_:content:)();
  }

  v5 = sub_1000B5A64(v4, 0);
  v6 = sub_100009968(v11, v5 + 32, v4, a1);

  sub_1000151D4();
  if (v6 == v4)
  {
    goto LABEL_5;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_100052A1C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v7 = type metadata accessor for Tip(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AutomationSemantics();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  __chkstk_darwin(v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v15 = *(v40 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v40);
  v18 = &v39 - v17;
  v41 = sub_100002BE4(&qword_10016C1A0, &unk_1001122D0);
  v19 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41);
  v21 = &v39 - v20;
  v22 = *a1;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  *(v23 + 32) = v22;
  v45 = v22;

  Button.init(action:label:)();
  if (v22 > 2)
  {
  }

  else
  {
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v25 = 0;
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  swift_getKeyPath();
  v46 = a3;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v25 = *(a3 + 48) != 0;
LABEL_6:
  KeyPath = swift_getKeyPath();
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  (*(v15 + 32))(v21, v18, v40);
  v28 = &v21[*(v41 + 36)];
  *v28 = KeyPath;
  v28[1] = sub_100054F7C;
  v28[2] = v27;
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v29 = *(type metadata accessor for AutomationUtilities.AutomationAttributeType() - 8);
  v30 = *(v29 + 72);
  v31 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_10010FEE0;
  v33 = (v32 + v31);
  *v33 = 1030;
  swift_storeEnumTagMultiPayload();
  v34 = (v33 + v30);
  sub_1000E4A84(v22);
  v36 = *(v10 + 2);
  v35 = *(v10 + 3);

  sub_100054FFC(v10, type metadata accessor for Tip);
  *v34 = v36;
  v34[1] = v35;
  swift_storeEnumTagMultiPayload();
  sub_1000FCC48(0xC0u, v32, v14);
  swift_setDeallocating();
  v37 = *(v32 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_10005406C();
  View.automationSemantics(_:)();
  (*(v42 + 8))(v14, v43);
  return sub_100009908(v21, &qword_10016C1A0, &unk_1001122D0);
}

uint64_t sub_100052F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TipDestinationAction(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v21 - v13;
  v15 = type metadata accessor for Tip(0);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E4A84(a3);
  sub_100054F94(&v19[*(v16 + 40)], v14, type metadata accessor for TipDestinationAction);
  sub_100054FFC(v19, type metadata accessor for Tip);
  sub_100054F94(v14, v12, type metadata accessor for TipDestinationAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_100051AC0(v12, v7);
    sub_100081630();
    sub_100054FFC(v7, type metadata accessor for ExternalLinkCoordinator.ExternalDestination);
  }

  else
  {
    sub_100054FFC(v14, type metadata accessor for TipDestinationAction);
    v14 = v12;
  }

  return sub_100054FFC(v14, type metadata accessor for TipDestinationAction);
}

uint64_t sub_10005316C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Tip(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000E4A84(a1);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);

  sub_100054FFC(v7, type metadata accessor for Tip);
  v14[0] = v9;
  v14[1] = v8;
  sub_100012928();
  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12 & 1;
  *(a2 + 24) = v13;
  return result;
}

uint64_t sub_100053244@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v65 = a2;
  v3 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v59 = *(v3 - 8);
  v60 = v3;
  v4 = *(v59 + 64);
  __chkstk_darwin(v3);
  v6 = (&v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v64 = type metadata accessor for AutomationSemantics();
  v62 = *(v64 - 8);
  v7 = *(v62 + 64);
  __chkstk_darwin(v64);
  v61 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016C228, &qword_100112338);
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = *(v66 + 64);
  __chkstk_darwin(v9);
  v63 = &v57 - v11;
  v12 = type metadata accessor for AttributedString();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v57 - v19;
  __chkstk_darwin(v18);
  v22 = &v57 - v21;
  swift_getKeyPath();
  *&v78[0] = a1;
  sub_100054D34();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v23 = *(a1 + 48);
  if (!v23)
  {
    return (*(v66 + 56))(v65, 1, 1, v67);
  }

  *&v78[0] = *(a1 + 40);
  *(&v78[0] + 1) = v23;
  sub_100053A7C(v78, v20);
  v24 = *(v13 + 32);
  v58 = v12;
  v24(v22, v20, v12);
  (*(v13 + 16))(v17, v22, v12);
  v25 = Text.init(_:)();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v29 & 1;
  LOBYTE(v78[0]) = v29 & 1;
  LOBYTE(v68) = 0;
  v42 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v77 = 0;
  *&v68 = v25;
  *(&v68 + 1) = v27;
  LOBYTE(v69) = v41;
  *(&v69 + 1) = v31;
  LOWORD(v70) = 256;
  BYTE8(v70) = v32;
  *&v71 = v34;
  *(&v71 + 1) = v36;
  *&v72 = v38;
  *(&v72 + 1) = v40;
  LOBYTE(v73) = 0;
  BYTE8(v73) = v42;
  *&v74 = v43;
  *(&v74 + 1) = v44;
  *&v75 = v45;
  *(&v75 + 1) = v46;
  v76 = 0;
  *v6 = 0xD000000000000016;
  v6[1] = 0x800000010011DEF0;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v47 = *(v59 + 72);
  v48 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_10010D3B0;
  sub_100054F94(v6, v49 + v48, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v50 = v61;
  sub_1000FCC48(0x8Cu, v49, v61);
  swift_setDeallocating();
  v51 = *(v49 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_100054FFC(v6, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  sub_100002BE4(&qword_10016C1D0, &qword_1001122F0);
  sub_100055118(&qword_10016C1D8, &qword_10016C1D0, &qword_1001122F0, sub_100054244);
  v52 = v63;
  View.automationSemantics(_:)();
  (*(v62 + 8))(v50, v64);
  v78[6] = v74;
  v78[7] = v75;
  v79 = v76;
  v78[2] = v70;
  v78[3] = v71;
  v78[4] = v72;
  v78[5] = v73;
  v78[0] = v68;
  v78[1] = v69;
  sub_100009908(v78, &qword_10016C1D0, &qword_1001122F0);
  (*(v13 + 8))(v22, v58);
  v54 = v65;
  v53 = v66;
  v55 = v67;
  (*(v66 + 32))(v65, v52, v67);
  return (*(v53 + 56))(v54, 0, 1, v55);
}

uint64_t sub_100053834()
{
  v0 = type metadata accessor for ExternalLinkCoordinator.ExternalDestination();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (URL.absoluteString.getter() == 0xD000000000000016 && 0x800000010011DEF0 == v4)
  {
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  v7 = sub_100002BE4(&qword_10016C220, &qword_100112330);
  (*(*(v7 - 8) + 56))(v3, 2, 7, v7);
  sub_100081630();
  return sub_100054FFC(v3, type metadata accessor for ExternalLinkCoordinator.ExternalDestination);
}

uint64_t sub_100053970(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;

  sub_1000EE5F8(0, 0, v6, &unk_100112328, v8);
}

uint64_t sub_100053A7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v33 = &v31 - v8;
  __chkstk_darwin(v7);
  v10 = &v31 - v9;
  v11 = type metadata accessor for URL();
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  __chkstk_darwin(v11);
  v35 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributeContainer();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v16 = type metadata accessor for AttributedString();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v31 - v22;
  v24 = a1[1];
  v36 = *a1;
  v37 = v24;

  v25._countAndFlagsBits = 32;
  v25._object = 0xE100000000000000;
  String.append(_:)(v25);
  AttributeContainer.init()();
  v26 = v34;
  AttributedString.init(_:attributes:)();
  (*(v17 + 16))(v38, v23, v16);
  URL.init(string:)();
  if ((*(v26 + 48))(v10, 1, v11) == 1)
  {
    (*(v17 + 8))(v23, v16);
    return sub_100009908(v10, &qword_10016BA40, &qword_100110FC0);
  }

  else
  {
    (*(v26 + 32))(v35, v10, v11);
    if (qword_100168F50 != -1)
    {
      swift_once();
    }

    AttributeContainer.init()();
    AttributedString.init(_:attributes:)();
    v28 = v33;
    v29 = v35;
    (*(v26 + 16))(v33, v35, v11);
    (*(v26 + 56))(v28, 0, 1, v11);
    sub_100054D8C(v28, v32);
    sub_100054DFC();
    AttributedString.subscript.setter();
    sub_100009908(v28, &qword_10016BA40, &qword_100110FC0);
    static AttributedString.+= infix(_:_:)();
    v30 = *(v17 + 8);
    v30(v21, v16);
    (*(v26 + 8))(v29, v11);
    return (v30)(v23, v16);
  }
}

unint64_t sub_100053F14()
{
  result = qword_10016C188;
  if (!qword_10016C188)
  {
    sub_10000459C(&qword_10016C180, &qword_1001122C0);
    sub_100053FAC();
    sub_100054150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C188);
  }

  return result;
}

unint64_t sub_100053FAC()
{
  result = qword_10016C190;
  if (!qword_10016C190)
  {
    sub_10000459C(&qword_10016C198, &qword_1001122C8);
    sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    sub_10005406C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C190);
  }

  return result;
}

unint64_t sub_10005406C()
{
  result = qword_10016C1A8;
  if (!qword_10016C1A8)
  {
    sub_10000459C(&qword_10016C1A0, &unk_1001122D0);
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
    sub_100012C48(&qword_10016C1B0, &qword_10016C1B8, &qword_1001122E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1A8);
  }

  return result;
}

unint64_t sub_100054150()
{
  result = qword_10016C1C0;
  if (!qword_10016C1C0)
  {
    sub_10000459C(&qword_10016C1C8, &qword_1001122E8);
    sub_10000459C(&qword_10016C1D0, &qword_1001122F0);
    sub_100055118(&qword_10016C1D8, &qword_10016C1D0, &qword_1001122F0, sub_100054244);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1C0);
  }

  return result;
}

unint64_t sub_100054244()
{
  result = qword_10016C1E0;
  if (!qword_10016C1E0)
  {
    sub_10000459C(&qword_10016C1E8, &qword_1001122F8);
    sub_1000542D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1E0);
  }

  return result;
}

unint64_t sub_1000542D0()
{
  result = qword_10016C1F0;
  if (!qword_10016C1F0)
  {
    sub_10000459C(&qword_10016C1F8, &qword_100112300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C1F0);
  }

  return result;
}

uint64_t sub_100054364()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000543A4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000FA04;

  return sub_1000BFAB4();
}

Swift::Int sub_100054460(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000B67E0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100054598(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_100054598(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    v85 = *v85;
    if (!v85)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1000B67CC(v9);
      v9 = result;
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100054AD4((*a3 + *v79), (*a3 + *v81), *a3 + v82, v85);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        result = memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100008E84(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100008E84((v30 > 1), v31 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *v85;
    if (!*v85)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100054AD4((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), *a3 + v75, v34);
        if (v4)
        {
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        result = sub_1000B6740(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_100054AD4(unsigned __int8 *__dst, unsigned __int8 *__src, unint64_t a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100054CC0@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_100054D34()
{
  result = qword_10016C230;
  if (!qword_10016C230)
  {
    type metadata accessor for PasscodeAndBiometricsProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C230);
  }

  return result;
}

uint64_t sub_100054D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016BA40, &qword_100110FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100054DFC()
{
  result = qword_10016C238;
  if (!qword_10016C238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C238);
  }

  return result;
}

unint64_t sub_100054E58()
{
  result = qword_10016C258;
  if (!qword_10016C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C258);
  }

  return result;
}

uint64_t sub_100054EB4(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100054F14@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100054F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100054FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100055060()
{
  result = qword_10016C260;
  if (!qword_10016C260)
  {
    sub_10000459C(&qword_10016C218, &unk_100112318);
    sub_100055118(&qword_10016C268, &qword_10016C210, &qword_100112310, sub_10005519C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C260);
  }

  return result;
}

uint64_t sub_100055118(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10005519C()
{
  result = qword_10016C270;
  if (!qword_10016C270)
  {
    sub_10000459C(&qword_10016C208, &qword_100112308);
    sub_10000459C(&qword_10016C170, &qword_1001122B0);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016C168, &qword_1001122A8);
    sub_100012C48(&qword_10016C200, &qword_10016C168, &qword_1001122A8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C270);
  }

  return result;
}

uint64_t sub_10005530C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(*(updated - 8) + 48);

  return v5(a1, a2, updated);
}

uint64_t sub_10005538C(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for SoftwareUpdateInfo();
  v5 = *(*(updated - 8) + 56);

  return v5(a1, a2, a2, updated);
}

uint64_t type metadata accessor for SoftwareUpdateView()
{
  result = qword_10016C2D0;
  if (!qword_10016C2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100055448()
{
  result = type metadata accessor for SoftwareUpdateInfo();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000554D0@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for InsetGroupedListStyle();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016C308, &qword_100112418);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v41 - v10;
  v12 = sub_100002BE4(&qword_10016C310, &qword_100112420);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v41 - v15;
  v45 = v1;
  sub_100002BE4(&qword_10016C318, &qword_100112428);
  sub_100012C48(&qword_10016C320, &qword_10016C318, &qword_100112428);
  List<>.init(content:)();
  v17 = sub_100012C48(&qword_10016C328, &qword_10016C308, &qword_100112418);
  View.listHasStackBehavior()();
  (*(v8 + 8))(v11, v7);
  InsetGroupedListStyle.init()();
  v46 = v7;
  v47 = v17;
  swift_getOpaqueTypeConformance2();
  v18 = v44;
  v19 = v42;
  View.listStyle<A>(_:)();
  (*(v43 + 8))(v6, v19);
  (*(v13 + 8))(v16, v12);
  v20 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = v18 + *(sub_100002BE4(&qword_10016C330, &qword_100112430) + 36);
  *v29 = v20;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  result = sub_100002BE4(&qword_10016C338, &qword_100112438);
  v40 = v18 + *(result + 36);
  *v40 = v30;
  *(v40 + 8) = v32;
  *(v40 + 16) = v34;
  *(v40 + 24) = v36;
  *(v40 + 32) = v38;
  *(v40 + 40) = 0;
  return result;
}

uint64_t sub_10005589C@<X0>(char *a1@<X8>)
{
  v53 = a1;
  v1 = sub_100002BE4(&qword_10016C340, &unk_100112440);
  v2 = *(*(v1 - 8) + 64);
  v3 = __chkstk_darwin(v1 - 8);
  v54 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v52 = &v45 - v5;
  v50 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v6 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v8 = &v45 - v7;
  v9 = sub_100002BE4(&qword_10016C348, &qword_100112450);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v45 - v14;
  v47 = sub_100002BE4(&qword_10016C350, &qword_100112458);
  v16 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v18 = &v45 - v17;
  v51 = sub_100002BE4(&qword_10016C358, &qword_100112460);
  v49 = *(v51 - 8);
  v19 = *(v49 + 64);
  v20 = __chkstk_darwin(v51);
  v48 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = &v45 - v22;
  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0x4028000000000000;
  v18[16] = 0;
  v24 = &v18[*(sub_100002BE4(&qword_10016C360, &qword_100112468) + 44)];
  sub_100055ED8(v60);
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0x4008000000000000;
  v15[16] = 0;
  v25 = sub_100002BE4(&qword_10016C368, &qword_100112470);
  sub_100056164(&v15[*(v25 + 44)]);
  v57 = v60[2];
  v58 = v60[3];
  v59 = v61;
  v55 = v60[0];
  v56 = v60[1];
  sub_10000C178(v15, v13, &qword_10016C348, &qword_100112450);
  v26 = v58;
  v62[2] = v57;
  v62[3] = v58;
  v27 = v59;
  v63 = v59;
  v29 = v55;
  v28 = v56;
  v62[0] = v55;
  v62[1] = v56;
  *(v24 + 2) = v57;
  *(v24 + 3) = v26;
  *(v24 + 8) = v27;
  *v24 = v29;
  *(v24 + 1) = v28;
  v30 = sub_100002BE4(&qword_10016C370, &unk_100112478);
  sub_10000C178(v13, &v24[*(v30 + 48)], &qword_10016C348, &qword_100112450);
  sub_100056DA0(v62, v64);
  sub_100009908(v15, &qword_10016C348, &qword_100112450);
  sub_100009908(v13, &qword_10016C348, &qword_100112450);
  v64[2] = v57;
  v64[3] = v58;
  v65 = v59;
  v64[0] = v55;
  v64[1] = v56;
  sub_100009908(v64, &qword_10016B8A0, &unk_100110E00);
  v31 = enum case for DynamicTypeSize.accessibility2(_:);
  v32 = type metadata accessor for DynamicTypeSize();
  (*(*(v32 - 8) + 104))(v8, v31, v32);
  sub_1000128D0();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100012C48(&qword_10016C378, &qword_10016C350, &qword_100112458);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    v46 = v23;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v8, &qword_100169A10, &qword_10010D450);
    sub_100009908(v18, &qword_10016C350, &qword_100112458);
    v34 = sub_100002BE4(&qword_10016C380, &qword_100112488);
    v35 = v52;
    (*(*(v34 - 8) + 56))(v52, 1, 1, v34);
    v37 = v48;
    v36 = v49;
    v38 = *(v49 + 16);
    v39 = v23;
    v40 = v51;
    v38(v48, v39, v51);
    v41 = v54;
    sub_10000C178(v35, v54, &qword_10016C340, &unk_100112440);
    v42 = v53;
    v38(v53, v37, v40);
    v43 = sub_100002BE4(&qword_10016C388, &unk_100112490);
    sub_10000C178(v41, &v42[*(v43 + 48)], &qword_10016C340, &unk_100112440);
    sub_100009908(v35, &qword_10016C340, &unk_100112440);
    v44 = *(v36 + 8);
    v44(v46, v40);
    sub_100009908(v41, &qword_10016C340, &unk_100112440);
    return (v44)(v37, v40);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_100055ED8@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Image.Interpolation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Image.ResizingMode();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = SoftwareUpdateInfo.iconImageData.getter();
  v14 = v13;
  v15 = static SoftwareUpdateUtilities.uiImageFromData(_:)();
  sub_10003DCC8(updated, v14);
  if (v15)
  {
    Image.init(uiImage:)();
  }

  else
  {
    Image.init(systemName:)();
  }

  (*(v8 + 104))(v11, enum case for Image.ResizingMode.stretch(_:), v7);
  Image.resizable(capInsets:resizingMode:)();

  (*(v8 + 8))(v11, v7);
  (*(v3 + 104))(v6, enum case for Image.Interpolation.high(_:), v2);
  v16 = Image.interpolation(_:)();

  (*(v3 + 8))(v6, v2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  *a1 = v16;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v17 = v19[1];
  *(a1 + 24) = v19[0];
  *(a1 + 40) = v17;
  result = *&v20;
  *(a1 + 56) = v20;
  return result;
}

uint64_t sub_100056164@<X0>(char *a1@<X8>)
{
  v52 = a1;
  v53 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v51 = *(v53 - 8);
  v1 = *(v51 + 64);
  v2 = __chkstk_darwin(v53);
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v43 - v4;
  v6 = sub_100002BE4(&qword_10016C390, &qword_1001124A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v43 - v8;
  v10 = sub_100002BE4(&qword_10016C398, &qword_1001124A8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v43 - v16;
  sub_100056838(v9);
  v18 = static Font.headline.getter();
  KeyPath = swift_getKeyPath();
  v20 = &v9[*(v6 + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  static Font.Weight.bold.getter();
  sub_100056E18();
  View.fontWeight(_:)();
  sub_100009908(v9, &qword_10016C390, &qword_1001124A0);
  sub_1000565B0(v5);
  updated = SoftwareUpdateInfo.releaseNotes.getter();
  if (v22 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v23 = updated;
  v24 = v22;
  v54 = static SoftwareUpdateUtilities.stringFromData(_:)();
  if (!v25)
  {
    sub_10003DCC8(v23, v24);
LABEL_5:
    v54 = 0;
    v49 = 0;
    v50 = 0;
    v48 = 0;
    goto LABEL_6;
  }

  v26 = v25;
  v56 = 0;
  State.init(wrappedValue:)();
  sub_10003DCC8(v23, v24);
  v48 = v58;
  v49 = v57;

  v50 = v26;

LABEL_6:
  v45 = v17;
  v46 = v11;
  v27 = *(v11 + 16);
  v27(v15, v17, v10);
  v28 = v51;
  v43 = v5;
  v44 = v10;
  v47 = v15;
  v29 = *(v51 + 16);
  v30 = v55;
  v31 = v53;
  v29(v55, v5, v53);
  v32 = v52;
  v27(v52, v15, v10);
  v33 = sub_100002BE4(&qword_10016C3C8, &unk_1001124F8);
  v29(&v32[*(v33 + 48)], v30, v31);
  v34 = &v32[*(v33 + 64)];
  v35 = v54;
  v37 = v49;
  v36 = v50;
  v38 = v48;
  sub_100057008(v54, v50);
  sub_10005704C(v35, v36);
  *v34 = v35;
  v34[1] = v36;
  v34[2] = v37;
  v34[3] = v38;
  v39 = *(v28 + 8);
  v39(v43, v31);
  v40 = *(v46 + 8);
  v41 = v44;
  v40(v45, v44);
  sub_10005704C(v35, v36);
  v39(v55, v31);
  return (v40)(v47, v41);
}

uint64_t sub_1000565B0@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v25 = type metadata accessor for AutomationSemantics();
  v23 = *(v25 - 8);
  v1 = *(v23 + 64);
  __chkstk_darwin(v25);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() mainBundle];
  v31._object = 0xE000000000000000;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0xD000000000000025;
  v6._object = 0x800000010011DF10;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v31._countAndFlagsBits = 0;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v31);

  v28 = v8;
  sub_100012928();
  v9 = Text.init<A>(_:)();
  v11 = v10;
  v13 = v12;
  static Font.footnote.getter();
  v14 = Text.font(_:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_10001297C(v9, v11, v13 & 1);

  v28._countAndFlagsBits = v14;
  v28._object = v16;
  v29 = v18 & 1;
  v30 = v20;
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  static AutomationSemantics.productPage(elementName:id:parentId:)();
  sub_100009908(v26, &qword_100169A38, &qword_10010D460);
  sub_100009908(v27, &qword_100169A38, &qword_10010D460);
  View.automationSemantics(_:)();
  (*(v23 + 8))(v3, v25);
  sub_10001297C(v14, v16, v18 & 1);
}

uint64_t sub_100056838@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AutomationSemantics();
  v37 = *(v2 - 8);
  v38 = v2;
  v3 = *(v37 + 64);
  __chkstk_darwin(v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_100169A90, &unk_10010D490);
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = v36 - v8;
  v10 = sub_100002BE4(&qword_10016C3D0, &qword_100112508);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v36 - v12;
  v14 = type metadata accessor for LocalizedStringKey.StringInterpolation();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v17);
  v18._countAndFlagsBits = SoftwareUpdateInfo.osName.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18);

  v19._countAndFlagsBits = 32;
  v19._object = 0xE100000000000000;
  LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v19);
  v20._countAndFlagsBits = SoftwareUpdateInfo.productVersion.getter();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);

  if (has_internal_ui)
  {
    v21._countAndFlagsBits = 10272;
    v21._object = 0xE200000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
    v22._countAndFlagsBits = SoftwareUpdateInfo.productBuildVersion.getter();
    LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v22);

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v23);
    LocalizedStringKey.init(stringInterpolation:)();
    *v13 = Text.init(_:tableName:bundle:comment:)();
    *(v13 + 1) = v24;
    v13[16] = v25 & 1;
    *(v13 + 3) = v26;
    swift_storeEnumTagMultiPayload();
    v42 = &type metadata for Text;
    v43 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    return _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    LocalizedStringKey.StringInterpolation.appendLiteral(_:)(v28);
    LocalizedStringKey.init(stringInterpolation:)();
    v29 = Text.init(_:tableName:bundle:comment:)();
    v31 = v30;
    v42 = v29;
    v43 = v30;
    v36[1] = v10;
    v33 = v32 & 1;
    v44 = v32 & 1;
    v45 = v34;
    memset(v41, 0, sizeof(v41));
    memset(v40, 0, sizeof(v40));
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    v36[0] = a1;
    sub_100009908(v40, &qword_100169A38, &qword_10010D460);
    sub_100009908(v41, &qword_100169A38, &qword_10010D460);
    View.automationSemantics(_:)();
    (*(v37 + 8))(v5, v38);
    sub_10001297C(v29, v31, v33);

    v35 = v39;
    (*(v39 + 16))(v13, v9, v6);
    swift_storeEnumTagMultiPayload();
    v42 = &type metadata for Text;
    v43 = &protocol witness table for Text;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v35 + 8))(v9, v6);
  }
}

uint64_t sub_100056DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016B8A0, &unk_100110E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100056E18()
{
  result = qword_10016C3A0;
  if (!qword_10016C3A0)
  {
    sub_10000459C(&qword_10016C390, &qword_1001124A0);
    sub_100056ED0();
    sub_100012C48(&qword_10016B108, &qword_10016B110, &unk_100110E10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3A0);
  }

  return result;
}

unint64_t sub_100056ED0()
{
  result = qword_10016C3A8;
  if (!qword_10016C3A8)
  {
    sub_10000459C(&qword_10016C3B0, &qword_1001124E0);
    sub_100056F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3A8);
  }

  return result;
}

unint64_t sub_100056F54()
{
  result = qword_10016C3B8;
  if (!qword_10016C3B8)
  {
    sub_10000459C(&qword_10016C3C0, &unk_1001124E8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3B8);
  }

  return result;
}

uint64_t sub_100057008(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10005704C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100057094()
{
  result = qword_10016C3D8;
  if (!qword_10016C3D8)
  {
    sub_10000459C(&qword_10016C338, &qword_100112438);
    sub_100057120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3D8);
  }

  return result;
}

unint64_t sub_100057120()
{
  result = qword_10016C3E0;
  if (!qword_10016C3E0)
  {
    sub_10000459C(&qword_10016C330, &qword_100112430);
    sub_10000459C(&qword_10016C310, &qword_100112420);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016C308, &qword_100112418);
    sub_100012C48(&qword_10016C328, &qword_10016C308, &qword_100112418);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C3E0);
  }

  return result;
}

uint64_t sub_10005728C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100057318(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DeviceModelConfiguratorView()
{
  result = qword_10016C448;
  if (!qword_10016C448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000573E0()
{
  sub_10005744C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10005744C()
{
  if (!qword_10016C458)
  {
    type metadata accessor for DeviceModelParameters();
    v0 = type metadata accessor for Bindable();
    if (!v1)
    {
      atomic_store(v0, &qword_10016C458);
    }
  }
}

__n128 sub_1000574C0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C498, &qword_1001125A0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v27[-v7];
  v28 = a1;
  static Axis.Set.vertical.getter();
  sub_100002BE4(&qword_10016C4A0, &qword_1001125A8);
  sub_100012C48(&qword_10016C4A8, &qword_10016C4A0, &qword_1001125A8);
  ScrollView.init(_:showsIndicators:content:)();
  LOBYTE(a1) = static Edge.Set.all.getter();
  v9 = &v8[*(sub_100002BE4(&qword_10016C4B0, &qword_1001125B0) + 36)];
  *v9 = a1;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  v9[40] = 1;
  v10 = [objc_opt_self() secondarySystemBackgroundColor];
  v11 = Color.init(_:)();
  v12 = static Edge.Set.all.getter();
  v13 = &v8[*(sub_100002BE4(&qword_10016C4B8, &unk_1001125B8) + 36)];
  *v13 = v11;
  v13[8] = v12;
  v14 = &v8[*(v5 + 44)];
  v15 = *(type metadata accessor for RoundedRectangle() + 20);
  v16 = enum case for RoundedCornerStyle.continuous(_:);
  v17 = type metadata accessor for RoundedCornerStyle();
  (*(*(v17 - 8) + 104))(&v14[v15], v16, v17);
  __asm { FMOV            V0.2D, #16.0 }

  *v14 = _Q0;
  *&v14[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10005B408(v8, a2);
  v23 = a2 + *(sub_100002BE4(&qword_10016C4C0, &qword_1001125C8) + 36);
  v24 = v34;
  *(v23 + 64) = v33;
  *(v23 + 80) = v24;
  *(v23 + 96) = v35;
  v25 = v30;
  *v23 = v29;
  *(v23 + 16) = v25;
  result = v32;
  *(v23 + 32) = v31;
  *(v23 + 48) = result;
  return result;
}

uint64_t sub_100057784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  v4 = sub_100002BE4(&qword_10016C4C8, &qword_1001125D0);
  return sub_1000577DC(a1, a2 + *(v4 + 44));
}

uint64_t sub_1000577DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002BE4(&qword_10016C4D0, &qword_1001125D8);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100002BE4(&qword_10016C4D8, &qword_1001125E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v21 - v16;
  *v17 = static VerticalAlignment.center.getter();
  *(v17 + 1) = 0x4020000000000000;
  v17[16] = 0;
  v18 = sub_100002BE4(&qword_10016C4E0, &qword_1001125E8);
  sub_1000579FC(a1, &v17[*(v18 + 44)]);
  sub_10005845C(a1, v10);
  sub_10000C178(v17, v15, &qword_10016C4D8, &qword_1001125E0);
  sub_10000C178(v10, v8, &qword_10016C4D0, &qword_1001125D8);
  sub_10000C178(v15, a2, &qword_10016C4D8, &qword_1001125E0);
  v19 = sub_100002BE4(&qword_10016C4E8, &qword_1001125F0);
  sub_10000C178(v8, a2 + *(v19 + 48), &qword_10016C4D0, &qword_1001125D8);
  sub_100009908(v10, &qword_10016C4D0, &qword_1001125D8);
  sub_100009908(v17, &qword_10016C4D8, &qword_1001125E0);
  sub_100009908(v8, &qword_10016C4D0, &qword_1001125D8);
  return sub_100009908(v15, &qword_10016C4D8, &qword_1001125E0);
}

uint64_t sub_1000579FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v86 = type metadata accessor for ButtonToggleStyle();
  v100 = *(v86 - 8);
  v3 = *(v100 + 64);
  __chkstk_darwin(v86);
  v95 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v97 = *(v5 - 8);
  v6 = *(v97 + 64);
  __chkstk_darwin(v5);
  v8 = &v79 - v7;
  v85 = sub_100002BE4(&qword_10016C5F8, &qword_100112958);
  v98 = *(v85 - 8);
  v9 = *(v98 + 64);
  __chkstk_darwin(v85);
  v93 = &v79 - v10;
  v90 = sub_100002BE4(&qword_10016C600, &qword_100112960);
  v89 = *(v90 - 8);
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v90);
  v88 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v87 = &v79 - v15;
  v16 = __chkstk_darwin(v14);
  v96 = &v79 - v17;
  __chkstk_darwin(v16);
  v99 = &v79 - v18;
  v19 = type metadata accessor for DeviceModelConfiguratorView();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19 - 8);
  v22 = sub_100002BE4(&qword_10016C608, &qword_100112968);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22);
  v94 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v79 - v27;
  v84 = a1;
  sub_10005B728(a1, &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v30 = swift_allocObject();
  sub_10005B864(&v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
  v101 = 0xD000000000000011;
  v102 = 0x800000010011DFD0;

  Button.init(action:label:)();
  LOBYTE(v21) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = &v28[*(sub_100002BE4(&qword_10016C610, &qword_100112970) + 36)];
  *v39 = v21;
  *(v39 + 1) = v32;
  *(v39 + 2) = v34;
  *(v39 + 3) = v36;
  *(v39 + 4) = v38;
  v39[40] = 0;
  v40 = static Color.blue.getter();
  v41 = static Edge.Set.all.getter();
  v42 = &v28[*(sub_100002BE4(&qword_10016C618, &qword_100112978) + 36)];
  *v42 = v40;
  v42[8] = v41;
  v43 = static Color.white.getter();

  KeyPath = swift_getKeyPath();
  v45 = *(sub_100002BE4(&qword_10016C620, &qword_1001129B0) + 36);
  v92 = v28;
  v46 = &v28[v45];
  *v46 = KeyPath;
  v46[1] = v43;
  v47 = &v28[*(v23 + 44)];
  v48 = *(type metadata accessor for RoundedRectangle() + 20);
  v49 = enum case for RoundedCornerStyle.continuous(_:);
  v50 = type metadata accessor for RoundedCornerStyle();
  (*(*(v50 - 8) + 104))(&v47[v48], v49, v50);
  __asm { FMOV            V0.2D, #8.0 }

  *v47 = _Q0;
  *&v47[*(sub_100002BE4(&qword_10016B180, &qword_1001102D0) + 36)] = 256;
  LocalizedStringKey.init(stringLiteral:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v56 = *(v97 + 8);
  v97 += 8;
  v83 = v56;
  v56(v8, v5);
  v57 = v93;
  Toggle<>.init(_:isOn:)();
  v58 = v95;
  ButtonToggleStyle.init()();
  v82 = sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958);
  v81 = sub_10005B940(&qword_10016C630, &type metadata accessor for ButtonToggleStyle);
  v59 = v85;
  v60 = v86;
  View.toggleStyle<A>(_:)();
  v61 = *(v100 + 8);
  v100 += 8;
  v80 = v61;
  v61(v58, v60);
  v62 = *(v98 + 8);
  v98 += 8;
  v79 = v62;
  v62(v57, v59);
  LocalizedStringKey.init(stringLiteral:)();
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v83(v8, v5);
  v63 = v93;
  Toggle<>.init(_:isOn:)();
  v64 = v95;
  ButtonToggleStyle.init()();
  v65 = v96;
  View.toggleStyle<A>(_:)();
  v80(v64, v60);
  v79(v63, v59);
  v66 = v94;
  sub_10000C178(v92, v94, &qword_10016C608, &qword_100112968);
  v67 = v89;
  v68 = *(v89 + 16);
  v69 = v87;
  v70 = v90;
  v68(v87, v99, v90);
  v71 = v88;
  v72 = v65;
  v73 = v70;
  v68(v88, v72, v70);
  v74 = v66;
  v75 = v91;
  sub_10000C178(v74, v91, &qword_10016C608, &qword_100112968);
  v76 = sub_100002BE4(&qword_10016C638, &qword_100112A08);
  v68((v75 + *(v76 + 48)), v69, v73);
  v68((v75 + *(v76 + 64)), v71, v73);
  v77 = *(v67 + 8);
  v77(v96, v73);
  v77(v99, v73);
  sub_100009908(v92, &qword_10016C608, &qword_100112968);
  v77(v71, v73);
  v77(v69, v73);
  return sub_100009908(v94, &qword_10016C608, &qword_100112968);
}

uint64_t sub_100058408()
{
  sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  Bindable.wrappedValue.getter();
  sub_10005E894();
}

uint64_t sub_10005845C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_100002BE4(&qword_10016C4F0, &qword_1001125F8);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v40 - v7;
  v9 = sub_100002BE4(&qword_10016C4F8, &qword_100112600);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v40 - v13;
  v15 = sub_100002BE4(&qword_10016C500, &qword_100112608);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v40 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v40 - v24;
  __chkstk_darwin(v23);
  v27 = &v40 - v26;
  v55 = a1;
  *v27 = static HorizontalAlignment.leading.getter();
  *(v27 + 1) = 0x4020000000000000;
  v27[16] = 0;
  v28 = sub_100002BE4(&qword_10016C508, &qword_100112610);
  v29 = *(v28 + 44);
  v44 = v27;
  sub_10005A3F4(0x6C65646F4DLL, 0xE500000000000000, sub_10005B478, v54, &qword_10016C5E8, &qword_1001128A8, &qword_10016C5F0, &qword_1001128B0, &v27[v29]);
  v53 = a1;
  *v14 = static HorizontalAlignment.leading.getter();
  *(v14 + 1) = 0x4020000000000000;
  v14[16] = 0;
  v30 = *(sub_100002BE4(&qword_10016C510, &qword_100112618) + 44);
  v42 = v14;
  sub_10005A3F4(0x6172656D6143, 0xE600000000000000, sub_10005B480, v52, &qword_10016C5D0, &qword_1001127A0, &qword_10016C5D8, &qword_1001127A8, &v14[v30]);
  v51 = a1;
  *v8 = static HorizontalAlignment.leading.getter();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v31 = *(sub_100002BE4(&qword_10016C518, &qword_100112620) + 44);
  v41 = v8;
  sub_10005A3F4(0x42206C6C6F726353, 0xEF726F6976616865, sub_10005B488, v50, &qword_10016C5B8, &qword_100112738, &qword_10016C5C0, &qword_100112740, &v8[v31]);
  v49 = a1;
  *v25 = static HorizontalAlignment.leading.getter();
  *(v25 + 1) = 0x4020000000000000;
  v25[16] = 0;
  sub_10005A3F4(2003134806, 0xE400000000000000, sub_10005B490, v48, &qword_10016C5E8, &qword_1001128A8, &qword_10016C5F0, &qword_1001128B0, &v25[*(v28 + 44)]);
  v32 = v22;
  v43 = v22;
  sub_10000C178(v27, v22, &qword_10016C500, &qword_100112608);
  v33 = v45;
  sub_10000C178(v14, v45, &qword_10016C4F8, &qword_100112600);
  v34 = v8;
  v35 = v46;
  sub_10000C178(v34, v46, &qword_10016C4F0, &qword_1001125F8);
  v36 = v19;
  sub_10000C178(v25, v19, &qword_10016C500, &qword_100112608);
  v37 = v47;
  sub_10000C178(v32, v47, &qword_10016C500, &qword_100112608);
  v38 = sub_100002BE4(&qword_10016C520, &qword_100112628);
  sub_10000C178(v33, v37 + v38[12], &qword_10016C4F8, &qword_100112600);
  sub_10000C178(v35, v37 + v38[16], &qword_10016C4F0, &qword_1001125F8);
  sub_10000C178(v36, v37 + v38[20], &qword_10016C500, &qword_100112608);
  sub_100009908(v25, &qword_10016C500, &qword_100112608);
  sub_100009908(v41, &qword_10016C4F0, &qword_1001125F8);
  sub_100009908(v42, &qword_10016C4F8, &qword_100112600);
  sub_100009908(v44, &qword_10016C500, &qword_100112608);
  sub_100009908(v36, &qword_10016C500, &qword_100112608);
  sub_100009908(v35, &qword_10016C4F0, &qword_1001125F8);
  sub_100009908(v33, &qword_10016C4F8, &qword_100112600);
  return sub_100009908(v43, &qword_10016C500, &qword_100112608);
}

uint64_t sub_1000589D8@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v53 - v4;
  v6 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v56 = &v53 - v11;
  v12 = __chkstk_darwin(v10);
  v55 = &v53 - v13;
  v14 = __chkstk_darwin(v12);
  v61 = &v53 - v15;
  v16 = __chkstk_darwin(v14);
  v54 = (&v53 - v17);
  v18 = __chkstk_darwin(v16);
  v60 = (&v53 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v53 - v21;
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25 = *(v2 + 8);
  v25(v5, v1);
  v27 = v62;
  v26 = v63;
  v28 = v64;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0x4010000000000000;
  v24[16] = 0;
  v59 = v24;
  v29 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x697461746F522058, 0xAF29B0C228206E6FLL, v27, v26, &v24[*(v29 + 44)], v28, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v30 = v62;
  v31 = v63;
  v32 = v64;
  v33 = static HorizontalAlignment.leading.getter();
  v53 = v22;
  *v22 = v33;
  *(v22 + 1) = 0x4010000000000000;
  v22[16] = 0;
  sub_10005A690(0x697461746F522059, 0xAF29B0C228206E6FLL, v30, v31, &v22[*(v29 + 44)], v32, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v34 = v62;
  v35 = v63;
  v36 = v64;
  v37 = static HorizontalAlignment.leading.getter();
  v38 = v60;
  *v60 = v37;
  v38[1] = 0x4010000000000000;
  *(v38 + 16) = 0;
  sub_10005A690(0x697461746F52205ALL, 0xAF29B0C228206E6FLL, v34, v35, (v38 + *(v29 + 44)), v36, 0, 0x43B40000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v39 = v62;
  v40 = v63;
  v41 = v64;
  v42 = static HorizontalAlignment.leading.getter();
  v43 = v54;
  *v54 = v42;
  *(v43 + 8) = 0x4010000000000000;
  *(v43 + 16) = 0;
  sub_10005A690(0x656C616353, 0xE500000000000000, v39, v40, (v43 + *(v29 + 44)), v41, 0, 0x3E4CCCCDu);

  v44 = v61;
  sub_10000C178(v59, v61, &qword_10016C528, &qword_100112630);
  v45 = v53;
  v46 = v55;
  sub_10000C178(v53, v55, &qword_10016C528, &qword_100112630);
  v47 = v60;
  v48 = v56;
  sub_10000C178(v60, v56, &qword_10016C528, &qword_100112630);
  v49 = v57;
  sub_10000C178(v43, v57, &qword_10016C528, &qword_100112630);
  v50 = v58;
  sub_10000C178(v44, v58, &qword_10016C528, &qword_100112630);
  v51 = sub_100002BE4(&qword_10016C538, &qword_1001126E0);
  sub_10000C178(v46, v50 + v51[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v48, v50 + v51[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v49, v50 + v51[20], &qword_10016C528, &qword_100112630);
  sub_100009908(v43, &qword_10016C528, &qword_100112630);
  sub_100009908(v47, &qword_10016C528, &qword_100112630);
  sub_100009908(v45, &qword_10016C528, &qword_100112630);
  sub_100009908(v59, &qword_10016C528, &qword_100112630);
  sub_100009908(v49, &qword_10016C528, &qword_100112630);
  sub_100009908(v48, &qword_10016C528, &qword_100112630);
  sub_100009908(v46, &qword_10016C528, &qword_100112630);
  return sub_100009908(v61, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005904C@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v72 - v4;
  v6 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v77 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v76 = &v72 - v11;
  v12 = __chkstk_darwin(v10);
  v75 = &v72 - v13;
  v14 = __chkstk_darwin(v12);
  v74 = &v72 - v15;
  v16 = __chkstk_darwin(v14);
  v73 = &v72 - v17;
  v18 = __chkstk_darwin(v16);
  v72 = &v72 - v19;
  v20 = __chkstk_darwin(v18);
  v80 = (&v72 - v21);
  v22 = __chkstk_darwin(v20);
  v83 = (&v72 - v23);
  v24 = __chkstk_darwin(v22);
  v82 = (&v72 - v25);
  v26 = __chkstk_darwin(v24);
  v84 = (&v72 - v27);
  v28 = __chkstk_darwin(v26);
  v30 = &v72 - v29;
  __chkstk_darwin(v28);
  v32 = &v72 - v31;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33 = *(v2 + 8);
  v33(v5, v1);
  v34 = v85;
  v35 = v86;
  v36 = v87;
  *v32 = static HorizontalAlignment.leading.getter();
  *(v32 + 1) = 0x4010000000000000;
  v32[16] = 0;
  v81 = v32;
  v37 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x697469736F502058, 0xEA00000000006E6FLL, v34, v35, &v32[*(v37 + 44)], v36, COERCE_UNSIGNED_INT(-10.0), COERCE_UNSIGNED_INT(10.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v5, v1);
  v38 = v85;
  v39 = v86;
  v40 = v87;
  v41 = static HorizontalAlignment.leading.getter();
  v79 = v30;
  *v30 = v41;
  *(v30 + 1) = 0x4010000000000000;
  v30[16] = 0;
  sub_10005A690(0x697469736F502059, 0xEA00000000006E6FLL, v38, v39, &v30[*(v37 + 44)], v40, 0, COERCE_UNSIGNED_INT(1.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v5, v1);
  v42 = v85;
  v43 = v86;
  v44 = v87;
  v45 = static HorizontalAlignment.leading.getter();
  v46 = v84;
  *v84 = v45;
  v46[1] = 0x4010000000000000;
  *(v46 + 16) = 0;
  sub_10005A690(0x697469736F50205ALL, 0xEA00000000006E6FLL, v42, v43, (v46 + *(v37 + 44)), v44, COERCE_UNSIGNED_INT(-20.0), COERCE_UNSIGNED_INT(20.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v5, v1);
  v47 = v85;
  v48 = v86;
  v49 = v87;
  v50 = static HorizontalAlignment.leading.getter();
  v51 = v82;
  *v82 = v50;
  v51[1] = 0x4010000000000000;
  *(v51 + 16) = 0;
  sub_10005A690(0x656C616353, 0xE500000000000000, v47, v48, (v51 + *(v37 + 44)), v49, 0, COERCE_UNSIGNED_INT(2.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v5, v1);
  v52 = v85;
  v53 = v86;
  v54 = v87;
  v55 = static HorizontalAlignment.leading.getter();
  v56 = v83;
  *v83 = v55;
  v56[1] = 0x4010000000000000;
  *(v56 + 16) = 0;
  sub_10005A690(7496006, 0xE300000000000000, v52, v53, (v56 + *(v37 + 44)), v54, 0, 0x459C4000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v33(v5, v1);
  v57 = v85;
  v58 = v86;
  v59 = v87;
  v60 = static HorizontalAlignment.leading.getter();
  v61 = v80;
  *v80 = v60;
  v61[1] = 0x4010000000000000;
  *(v61 + 16) = 0;
  sub_10005A690(1918985550, 0xE400000000000000, v57, v58, (v61 + *(v37 + 44)), v59, 0, 0x447A0000u);

  v62 = v72;
  sub_10000C178(v81, v72, &qword_10016C528, &qword_100112630);
  v63 = v73;
  sub_10000C178(v79, v73, &qword_10016C528, &qword_100112630);
  v64 = v74;
  sub_10000C178(v84, v74, &qword_10016C528, &qword_100112630);
  v65 = v75;
  sub_10000C178(v82, v75, &qword_10016C528, &qword_100112630);
  v66 = v76;
  sub_10000C178(v83, v76, &qword_10016C528, &qword_100112630);
  v67 = v61;
  v68 = v77;
  sub_10000C178(v67, v77, &qword_10016C528, &qword_100112630);
  v69 = v78;
  sub_10000C178(v62, v78, &qword_10016C528, &qword_100112630);
  v70 = sub_100002BE4(&qword_10016C5E0, &qword_1001128A0);
  sub_10000C178(v63, v69 + v70[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v64, v69 + v70[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v65, v69 + v70[20], &qword_10016C528, &qword_100112630);
  sub_10000C178(v66, v69 + v70[24], &qword_10016C528, &qword_100112630);
  sub_10000C178(v68, v69 + v70[28], &qword_10016C528, &qword_100112630);
  sub_100009908(v80, &qword_10016C528, &qword_100112630);
  sub_100009908(v83, &qword_10016C528, &qword_100112630);
  sub_100009908(v82, &qword_10016C528, &qword_100112630);
  sub_100009908(v84, &qword_10016C528, &qword_100112630);
  sub_100009908(v79, &qword_10016C528, &qword_100112630);
  sub_100009908(v81, &qword_10016C528, &qword_100112630);
  sub_100009908(v68, &qword_10016C528, &qword_100112630);
  sub_100009908(v66, &qword_10016C528, &qword_100112630);
  sub_100009908(v65, &qword_10016C528, &qword_100112630);
  sub_100009908(v64, &qword_10016C528, &qword_100112630);
  sub_100009908(v63, &qword_10016C528, &qword_100112630);
  return sub_100009908(v62, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31[1] = a1;
  v34 = a2;
  v2 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v31 - v5;
  v7 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v33 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v32 = v31 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = v31 - v14;
  __chkstk_darwin(v13);
  v17 = v31 - v16;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v18 = *(v3 + 8);
  v18(v6, v2);
  v19 = v35;
  v20 = v36;
  v21 = v37;
  *v17 = static HorizontalAlignment.leading.getter();
  *(v17 + 1) = 0x4010000000000000;
  v17[16] = 0;
  v22 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  sub_10005A690(0x76697469736E6553, 0xEB00000000797469, v19, v20, &v17[*(v22 + 44)], v21, 0, COERCE_UNSIGNED_INT(1.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v18(v6, v2);
  v23 = v35;
  v24 = v36;
  v25 = v37;
  *v15 = static HorizontalAlignment.leading.getter();
  *(v15 + 1) = 0x4010000000000000;
  v15[16] = 0;
  sub_10005A690(0x1000000000000011, 0x800000010011DFB0, v23, v24, &v15[*(v22 + 44)], v25, 0, 0x43B40000u);

  v26 = v32;
  sub_10000C178(v17, v32, &qword_10016C528, &qword_100112630);
  v27 = v33;
  sub_10000C178(v15, v33, &qword_10016C528, &qword_100112630);
  v28 = v34;
  sub_10000C178(v26, v34, &qword_10016C528, &qword_100112630);
  v29 = sub_100002BE4(&qword_10016C5C8, &qword_100112798);
  sub_10000C178(v27, v28 + *(v29 + 48), &qword_10016C528, &qword_100112630);
  sub_100009908(v15, &qword_10016C528, &qword_100112630);
  sub_100009908(v17, &qword_10016C528, &qword_100112630);
  sub_100009908(v27, &qword_10016C528, &qword_100112630);
  return sub_100009908(v26, &qword_10016C528, &qword_100112630);
}

uint64_t sub_100059CF8@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  v1 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v53 - v4;
  v6 = sub_100002BE4(&qword_10016C528, &qword_100112630);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v57 = &v53 - v11;
  v12 = __chkstk_darwin(v10);
  v56 = &v53 - v13;
  v14 = __chkstk_darwin(v12);
  v61 = &v53 - v15;
  v16 = __chkstk_darwin(v14);
  v55 = (&v53 - v17);
  v18 = __chkstk_darwin(v16);
  v60 = (&v53 - v19);
  v20 = __chkstk_darwin(v18);
  v22 = &v53 - v21;
  __chkstk_darwin(v20);
  v24 = &v53 - v23;
  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25 = *(v2 + 8);
  v25(v5, v1);
  v27 = v62;
  v26 = v63;
  v28 = v64;
  *v24 = static HorizontalAlignment.leading.getter();
  *(v24 + 1) = 0x4010000000000000;
  v24[16] = 0;
  v29 = sub_100002BE4(&qword_10016C530, &qword_100112660);
  v30 = *(v29 + 44);
  v53 = v24;
  sub_10005A690(0x5220746365707341, 0xEC0000006F697461, v27, v26, &v24[v30], v28, COERCE_UNSIGNED_INT(1.0), COERCE_UNSIGNED_INT(2.0));

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v31 = v62;
  v32 = v63;
  v33 = v64;
  *v22 = static HorizontalAlignment.leading.getter();
  *(v22 + 1) = 0x4010000000000000;
  v22[16] = 0;
  v54 = v22;
  sub_10005A690(0x206D756D6978614DLL, 0xED00006874646957, v31, v32, &v22[*(v29 + 44)], v33, 0, 0x44BB8000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v34 = v62;
  v35 = v63;
  v36 = v64;
  v37 = static HorizontalAlignment.leading.getter();
  v38 = v60;
  *v60 = v37;
  v38[1] = 0x4010000000000000;
  *(v38 + 16) = 0;
  sub_10005A690(0x206D756D696E694DLL, 0xED00006874646957, v34, v35, (v38 + *(v29 + 44)), v36, 0, 0x43960000u);

  Bindable.projectedValue.getter();
  swift_getKeyPath();
  Bindable<A>.subscript.getter();

  v25(v5, v1);
  v39 = v62;
  v40 = v63;
  v41 = v64;
  v42 = static HorizontalAlignment.leading.getter();
  v43 = v55;
  *v55 = v42;
  *(v43 + 8) = 0x4010000000000000;
  *(v43 + 16) = 0;
  sub_10005A690(0x50206D6F74746F42, 0xEE00676E69646461, v39, v40, (v43 + *(v29 + 44)), v41, 0xC2480000, 0x42480000u);

  v44 = v61;
  sub_10000C178(v24, v61, &qword_10016C528, &qword_100112630);
  v45 = v54;
  v46 = v56;
  sub_10000C178(v54, v56, &qword_10016C528, &qword_100112630);
  v47 = v60;
  v48 = v57;
  sub_10000C178(v60, v57, &qword_10016C528, &qword_100112630);
  v49 = v58;
  sub_10000C178(v43, v58, &qword_10016C528, &qword_100112630);
  v50 = v59;
  sub_10000C178(v44, v59, &qword_10016C528, &qword_100112630);
  v51 = sub_100002BE4(&qword_10016C538, &qword_1001126E0);
  sub_10000C178(v46, v50 + v51[12], &qword_10016C528, &qword_100112630);
  sub_10000C178(v48, v50 + v51[16], &qword_10016C528, &qword_100112630);
  sub_10000C178(v49, v50 + v51[20], &qword_10016C528, &qword_100112630);
  sub_100009908(v43, &qword_10016C528, &qword_100112630);
  sub_100009908(v47, &qword_10016C528, &qword_100112630);
  sub_100009908(v45, &qword_10016C528, &qword_100112630);
  sub_100009908(v53, &qword_10016C528, &qword_100112630);
  sub_100009908(v49, &qword_10016C528, &qword_100112630);
  sub_100009908(v48, &qword_10016C528, &qword_100112630);
  sub_100009908(v46, &qword_10016C528, &qword_100112630);
  return sub_100009908(v61, &qword_10016C528, &qword_100112630);
}

uint64_t sub_10005A388@<X0>(uint64_t a1@<X8>)
{
  sub_100012928();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10005A3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v54 = a7;
  v55 = a8;
  v49 = a5;
  v50 = a6;
  v51 = a4;
  v52 = a3;
  v53 = a9;
  v11 = sub_100002BE4(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v47 = &v47 - v15;
  v56 = a1;
  v57 = a2;
  sub_100012928();

  v16 = Text.init<A>(_:)();
  v18 = v17;
  v20 = v19;
  static Font.subheadline.getter();
  v21 = Text.font(_:)();
  v23 = v22;
  v25 = v24;

  sub_10001297C(v16, v18, v20 & 1);

  static Font.Weight.semibold.getter();
  v26 = Text.fontWeight(_:)();
  v28 = v27;
  v30 = v29;
  sub_10001297C(v21, v23, v25 & 1);

  static Color.secondary.getter();
  v31 = Text.foregroundColor(_:)();
  v33 = v32;
  LOBYTE(v21) = v34;
  v36 = v35;

  sub_10001297C(v26, v28, v30 & 1);

  v38 = v47;
  v52(v37);
  v40 = v48;
  v39 = v49;
  v41 = v50;
  sub_10000C178(v38, v48, v49, v50);
  v43 = v53;
  v42 = v54;
  *v53 = v31;
  v43[1] = v33;
  LOBYTE(v26) = v21 & 1;
  *(v43 + 16) = v21 & 1;
  v43[3] = v36;
  v44 = v43;
  v45 = sub_100002BE4(v42, v55);
  sub_10000C178(v40, v44 + *(v45 + 48), v39, v41);
  sub_100003AE4(v31, v33, v26);

  sub_100009908(v38, v39, v41);
  sub_100009908(v40, v39, v41);
  sub_10001297C(v31, v33, v26);
}

uint64_t sub_10005A690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, float a6@<S0>, unsigned int a7@<S1>, unsigned int a8@<S2>)
{
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v13 = sub_100002BE4(&qword_10016C540, &qword_1001126E8);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v42 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v42 - v17;
  v46 = a1;
  v47 = a2;
  sub_100012928();

  v19 = Text.init<A>(_:)();
  v21 = v20;
  v23 = v22;
  static Font.caption.getter();
  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_10001297C(v19, v21, v23 & 1);

  static Color.secondary.getter();
  v29 = Text.foregroundColor(_:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;

  sub_10001297C(v24, v26, v28 & 1);

  *v18 = static VerticalAlignment.center.getter();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v36 = sub_100002BE4(&qword_10016C548, &qword_1001126F0);
  sub_10005A940(v43, v44, &v18[*(v36 + 44)], a6, a7, a8);
  v37 = v42;
  sub_10000C178(v18, v42, &qword_10016C540, &qword_1001126E8);
  v38 = v45;
  *v45 = v29;
  v38[1] = v31;
  *(v38 + 16) = v33 & 1;
  v38[3] = v35;
  v39 = v38;
  v40 = sub_100002BE4(&qword_10016C550, &qword_1001126F8);
  sub_10000C178(v37, v39 + *(v40 + 48), &qword_10016C540, &qword_1001126E8);
  sub_100003AE4(v29, v31, v33 & 1);

  sub_100009908(v18, &qword_10016C540, &qword_1001126E8);
  sub_100009908(v37, &qword_10016C540, &qword_1001126E8);
  sub_10001297C(v29, v31, v33 & 1);
}

uint64_t sub_10005A940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float a4@<S0>, unsigned int a5@<S1>, unsigned int a6@<S2>)
{
  v91 = a3;
  v89 = type metadata accessor for RoundedBorderTextFieldStyle();
  v90 = *(v89 - 8);
  v11 = *(v90 + 64);
  __chkstk_darwin(v89);
  v88 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for NumberFormatStyleConfiguration.Precision();
  v80 = *(v82 - 8);
  v13 = *(v80 + 64);
  __chkstk_darwin(v82);
  v79 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v73 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_100002BE4(&qword_10016C558, &qword_100112700);
  v77 = *(v75 - 8);
  v18 = *(v77 + 64);
  v19 = __chkstk_darwin(v75);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v72 = &v70 - v22;
  v81 = sub_100002BE4(&qword_10016C560, &qword_100112708);
  v83 = *(v81 - 8);
  v23 = *(v83 + 64);
  __chkstk_darwin(v81);
  v74 = &v70 - v24;
  v84 = sub_100002BE4(&qword_10016C568, &qword_100112710);
  v25 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v78 = &v70 - v26;
  v87 = sub_100002BE4(&qword_10016C570, &qword_100112718);
  v86 = *(v87 - 8);
  v27 = *(v86 + 64);
  v28 = __chkstk_darwin(v87);
  v85 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v92 = &v70 - v30;
  v31 = sub_100002BE4(&qword_10016C578, &qword_100112720);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v70 - v34;
  v36 = sub_100002BE4(&qword_10016C580, &qword_100112728);
  v37 = v36 - 8;
  v38 = *(*(v36 - 8) + 64);
  v39 = __chkstk_darwin(v36);
  v76 = &v70 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v43 = &v70 - v42;
  __chkstk_darwin(v41);
  v45 = &v70 - v44;
  v71 = &v70 - v44;
  *&v93 = a1;
  *(&v93 + 1) = a2;
  *&v94 = a4;
  *&v100 = __PAIR64__(a6, a5);
  sub_10005B4B8();

  Slider<>.init<A>(value:in:onEditingChanged:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v32 + 32))(v43, v35, v31);
  v46 = &v43[*(v37 + 44)];
  v47 = v98;
  *(v46 + 4) = v97;
  *(v46 + 5) = v47;
  *(v46 + 6) = v99;
  v48 = v94;
  *v46 = v93;
  *(v46 + 1) = v48;
  v49 = v96;
  *(v46 + 2) = v95;
  *(v46 + 3) = v49;
  sub_10005B50C(v43, v45);
  LocalizedStringKey.init(stringLiteral:)();
  *&v100 = a1;
  *(&v100 + 1) = a2;
  *&v101 = a4;

  static Locale.autoupdatingCurrent.getter();
  FloatingPointFormatStyle.init(locale:)();
  v50 = v79;
  static NumberFormatStyleConfiguration.Precision.fractionLength(_:)();
  v51 = v75;
  FloatingPointFormatStyle.precision(_:)();
  (*(v80 + 8))(v50, v82);
  (*(v77 + 8))(v21, v51);
  sub_100012C48(&qword_10016C590, &qword_10016C558, &qword_100112700);
  v52 = v74;
  TextField<>.init<A>(_:value:format:prompt:)();
  v53 = v88;
  RoundedBorderTextFieldStyle.init()();
  sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708);
  sub_10005B940(&qword_10016C5A0, &type metadata accessor for RoundedBorderTextFieldStyle);
  v54 = v78;
  v55 = v81;
  v56 = v89;
  View.textFieldStyle<A>(_:)();
  (*(v90 + 8))(v53, v56);
  (*(v83 + 8))(v52, v55);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v57 = (v54 + *(v84 + 36));
  v58 = v101;
  *v57 = v100;
  v57[1] = v58;
  v57[2] = v102;
  sub_10005B57C();
  v59 = v92;
  View.keyboardType(_:)();
  sub_100009908(v54, &qword_10016C568, &qword_100112710);
  v60 = v71;
  v61 = v76;
  sub_10000C178(v71, v76, &qword_10016C580, &qword_100112728);
  v62 = v86;
  v63 = *(v86 + 16);
  v64 = v85;
  v65 = v87;
  v63(v85, v59, v87);
  v66 = v91;
  sub_10000C178(v61, v91, &qword_10016C580, &qword_100112728);
  v67 = sub_100002BE4(&qword_10016C5B0, &qword_100112730);
  v63((v66 + *(v67 + 48)), v64, v65);
  v68 = *(v62 + 8);
  v68(v92, v65);
  sub_100009908(v60, &qword_10016C580, &qword_100112728);
  v68(v64, v65);
  return sub_100009908(v61, &qword_10016C580, &qword_100112728);
}

double sub_10005B370@<D0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = sub_100002BE4(&qword_10016C488, &qword_100112590);
  sub_1000574C0(v1, a1 + *(v3 + 44));
  v4 = static Edge.Set.all.getter();
  v5 = a1 + *(sub_100002BE4(&qword_10016C490, &qword_100112598) + 36);
  *v5 = v4;
  result = 0.0;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  return result;
}

uint64_t sub_10005B408(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C498, &qword_1001125A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B4B8()
{
  result = qword_10016C588;
  if (!qword_10016C588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C588);
  }

  return result;
}

uint64_t sub_10005B50C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016C580, &qword_100112728);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B57C()
{
  result = qword_10016C5A8;
  if (!qword_10016C5A8)
  {
    sub_10000459C(&qword_10016C568, &qword_100112710);
    sub_10000459C(&qword_10016C560, &qword_100112708);
    type metadata accessor for RoundedBorderTextFieldStyle();
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708);
    sub_10005B940(&qword_10016C5A0, &type metadata accessor for RoundedBorderTextFieldStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C5A8);
  }

  return result;
}

uint64_t sub_10005B728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceModelConfiguratorView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B78C()
{
  v1 = *(type metadata accessor for DeviceModelConfiguratorView() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_100002BE4(&qword_10016C3E8, &unk_100112510);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10005B864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceModelConfiguratorView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B8C8()
{
  v0 = *(*(type metadata accessor for DeviceModelConfiguratorView() - 8) + 80);

  return sub_100058408();
}

uint64_t sub_10005B928@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10005A388(a1);
}

uint64_t sub_10005B940(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10005B994()
{
  result = qword_10016C640;
  if (!qword_10016C640)
  {
    sub_10000459C(&qword_10016C490, &qword_100112598);
    sub_100012C48(&qword_10016C648, &qword_10016C650, &unk_100112A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016C640);
  }

  return result;
}

uint64_t sub_10005BA4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 104);
  return result;
}

uint64_t sub_10005BAEC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 105);
  return result;
}

float sub_10005BB8C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 20);
  *a2 = result;
  return result;
}

float sub_10005BC2C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 24);
  *a2 = result;
  return result;
}

float sub_10005BCCC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 28);
  *a2 = result;
  return result;
}

float sub_10005BD6C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 44);
  *a2 = result;
  return result;
}

float sub_10005BE0C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 48);
  *a2 = result;
  return result;
}

float sub_10005BEAC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 52);
  *a2 = result;
  return result;
}

float sub_10005BF4C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 56);
  *a2 = result;
  return result;
}

float sub_10005BFEC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 60);
  *a2 = result;
  return result;
}

float sub_10005C08C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 64);
  *a2 = result;
  return result;
}

float sub_10005C12C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 68);
  *a2 = result;
  return result;
}

float sub_10005C1CC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 72);
  *a2 = result;
  return result;
}

float sub_10005C26C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 76);
  *a2 = result;
  return result;
}

float sub_10005C30C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 100);
  *a2 = result;
  return result;
}

float sub_10005C3AC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 84);
  *a2 = result;
  return result;
}

float sub_10005C44C@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 88);
  *a2 = result;
  return result;
}

float sub_10005C4EC@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 96);
  *a2 = result;
  return result;
}

uint64_t sub_10005C58C()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10005C5FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_10005C69C(char a1)
{
  v3 = "SpatialGalleryItemUnfavorited";
  if (*(v1 + 16))
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if (a1)
  {
    v3 = "RealityDevice14,1";
  }

  if ((v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {

LABEL_9:
    *(v1 + 16) = a1 & 1;
    return result;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_9;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10005F828();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

float sub_10005C800()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 20);
}

void sub_10005C870(float a1)
{
  if (*(v1 + 20) == a1)
  {
    *(v1 + 20) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005C958()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 24);
}

void sub_10005C9C8(float a1)
{
  if (*(v1 + 24) == a1)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CAB0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 28);
}

void sub_10005CB20(float a1)
{
  if (*(v1 + 28) == a1)
  {
    *(v1 + 28) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CC08()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

float sub_10005CC78@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 32);
  *a2 = result;
  return result;
}

void sub_10005CD18(float a1)
{
  if (*(v1 + 32) == a1)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CE00()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 36);
}

float sub_10005CE70@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 36);
  *a2 = result;
  return result;
}

void sub_10005CF10(float a1)
{
  if (*(v1 + 36) == a1)
  {
    *(v1 + 36) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005CFF8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 40);
}

float sub_10005D068@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 40);
  *a2 = result;
  return result;
}

void sub_10005D108(float a1)
{
  if (*(v1 + 40) == a1)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D1F0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 44);
}

void sub_10005D260(float a1)
{
  if (*(v1 + 44) == a1)
  {
    *(v1 + 44) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D348()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 48);
}

void sub_10005D3B8(float a1)
{
  if (*(v1 + 48) == a1)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D4A0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 52);
}

void sub_10005D510(float a1)
{
  if (*(v1 + 52) == a1)
  {
    *(v1 + 52) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D5F8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 56);
}

void sub_10005D668(float a1)
{
  if (*(v1 + 56) == a1)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D750()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 60);
}

void sub_10005D7C0(float a1)
{
  if (*(v1 + 60) == a1)
  {
    *(v1 + 60) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005D8A8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 64);
}

void sub_10005D918(float a1)
{
  if (*(v1 + 64) == a1)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DA00()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 68);
}

void sub_10005DA70(float a1)
{
  if (*(v1 + 68) == a1)
  {
    *(v1 + 68) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DB58()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 72);
}

void sub_10005DBC8(float a1)
{
  if (*(v1 + 72) == a1)
  {
    *(v1 + 72) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DCB0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 76);
}

void sub_10005DD20(float a1)
{
  if (*(v1 + 76) == a1)
  {
    *(v1 + 76) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DE08()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 84);
}

void sub_10005DE78(float a1)
{
  if (*(v1 + 84) == a1)
  {
    *(v1 + 84) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005DF60()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 88);
}

void sub_10005DFD0(float a1)
{
  if (*(v1 + 88) == a1)
  {
    *(v1 + 88) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E0B8()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 92);
}

float sub_10005E128@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v3 + 92);
  *a2 = result;
  return result;
}

void sub_10005E1C8(float a1)
{
  if (*(v1 + 92) == a1)
  {
    *(v1 + 92) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E2B0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 96);
}

void sub_10005E320(float a1)
{
  if (*(v1 + 96) == a1)
  {
    *(v1 + 96) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

float sub_10005E408()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 100);
}

void sub_10005E478(float a1)
{
  if (*(v1 + 100) == a1)
  {
    *(v1 + 100) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005E560()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 104);
}

uint64_t sub_10005E5D0(uint64_t result)
{
  if (*(v1 + 104) == (result & 1))
  {
    *(v1 + 104) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005E6B0()
{
  swift_getKeyPath();
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 105);
}

uint64_t sub_10005E720(uint64_t result)
{
  if (*(v1 + 105) == (result & 1))
  {
    *(v1 + 105) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10005F828();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10005E800(char a1)
{
  *(v1 + 16) = 1;
  *(v1 + 80) = 0;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1 & 1;
  sub_10005F880(a1 & 1, v5);
  v3 = v5[1];
  *(v1 + 20) = v5[0];
  *(v1 + 36) = v3;
  *(v1 + 52) = v5[2];
  *(v1 + 68) = v6;
  *(v1 + 76) = v7;
  *(v1 + 84) = v8;
  *(v1 + 100) = v9;
  *(v1 + 104) = v10;
  return v1;
}

void sub_10005E894()
{
  swift_getKeyPath();
  v23 = v0;
  sub_10005F828();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10005F880(*(v0 + 16), &v23);
  if (*(v0 + 20) == *&v23)
  {
    *(v0 + 20) = v23;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 24) == *(&v23 + 1))
  {
    *(v0 + 24) = HIDWORD(v23);
  }

  else
  {
    v2 = swift_getKeyPath();
    __chkstk_darwin(v2);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 28) == v24)
  {
    *(v0 + 28) = v24;
  }

  else
  {
    v3 = swift_getKeyPath();
    __chkstk_darwin(v3);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 32) == v25)
  {
    *(v0 + 32) = v25;
  }

  else
  {
    v4 = swift_getKeyPath();
    __chkstk_darwin(v4);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 36) == v26)
  {
    *(v0 + 36) = v26;
  }

  else
  {
    v5 = swift_getKeyPath();
    __chkstk_darwin(v5);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 40) == v27)
  {
    *(v0 + 40) = v27;
  }

  else
  {
    v6 = swift_getKeyPath();
    __chkstk_darwin(v6);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 44) == v28)
  {
    *(v0 + 44) = v28;
  }

  else
  {
    v7 = swift_getKeyPath();
    __chkstk_darwin(v7);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 48) == v29)
  {
    *(v0 + 48) = v29;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 52) == v30)
  {
    *(v0 + 52) = v30;
  }

  else
  {
    v9 = swift_getKeyPath();
    __chkstk_darwin(v9);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 56) == v31)
  {
    *(v0 + 56) = v31;
  }

  else
  {
    v10 = swift_getKeyPath();
    __chkstk_darwin(v10);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 60) == v32)
  {
    *(v0 + 60) = v32;
  }

  else
  {
    v11 = swift_getKeyPath();
    __chkstk_darwin(v11);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 64) == v33)
  {
    *(v0 + 64) = v33;
  }

  else
  {
    v12 = swift_getKeyPath();
    __chkstk_darwin(v12);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 68) == v34)
  {
    *(v0 + 68) = v34;
  }

  else
  {
    v13 = swift_getKeyPath();
    __chkstk_darwin(v13);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 72) == v35)
  {
    *(v0 + 72) = v35;
  }

  else
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 76) == v36)
  {
    *(v0 + 76) = v36;
  }

  else
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 84) == v37)
  {
    *(v0 + 84) = v37;
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 88) == v38)
  {
    *(v0 + 88) = v38;
  }

  else
  {
    v17 = swift_getKeyPath();
    __chkstk_darwin(v17);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 92) == v39)
  {
    *(v0 + 92) = v39;
  }

  else
  {
    v18 = swift_getKeyPath();
    __chkstk_darwin(v18);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 96) == v40)
  {
    *(v0 + 96) = v40;
  }

  else
  {
    v19 = swift_getKeyPath();
    __chkstk_darwin(v19);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v0 + 100) == v41)
  {
    *(v0 + 100) = v41;
  }

  else
  {
    v20 = swift_getKeyPath();
    __chkstk_darwin(v20);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (v42 == *(v0 + 104))
  {
    *(v0 + 104) = v42;
  }

  else
  {
    v21 = swift_getKeyPath();
    __chkstk_darwin(v21);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (v43 == *(v0 + 105))
  {
    *(v0 + 105) = v43;
  }

  else
  {
    v22 = swift_getKeyPath();
    __chkstk_darwin(v22);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_10005F63C()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp21DeviceModelParameters___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DeviceModelParameters()
{
  result = qword_10016C688;
  if (!qword_10016C688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005F72C()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_10005F828()
{
  result = qword_10016CC90;
  if (!qword_10016CC90)
  {
    type metadata accessor for DeviceModelParameters();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CC90);
  }

  return result;
}

double sub_10005F880@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if ((v4 | 0x8000000000000000) == 0x800000010011C810)
  {

    v5 = 0.0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = -0.125;
    }
  }

  if (a1)
  {
    v7 = 0x800000010011C810;
  }

  else
  {
    v7 = 0x800000010011C7F0;
  }

  if (0x800000010011C810 == v7)
  {

    v8 = 0.27;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = 0.015;
    if (v9)
    {
      v8 = 0.27;
    }
  }

  *a2 = 1086324736;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 0x3E0E560400000000;
  *(a2 + 28) = v5;
  *(a2 + 32) = v8;
  *(a2 + 36) = xmmword_100112A20;
  *(a2 + 52) = xmmword_100112A30;
  result = -131072.094;
  *(a2 + 68) = 0xC1000000C1700000;
  *(a2 + 76) = 1070386381;
  *(a2 + 80) = 0;
  return result;
}

float sub_10005FA30()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 20) = result;
  return result;
}

float sub_10005FA6C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 24) = result;
  return result;
}

float sub_10005FAA8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 28) = result;
  return result;
}

float sub_10005FAE4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 32) = result;
  return result;
}

float sub_10005FB20()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 36) = result;
  return result;
}

float sub_10005FB5C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 40) = result;
  return result;
}

float sub_10005FB98()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 44) = result;
  return result;
}

float sub_10005FBD4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 48) = result;
  return result;
}

float sub_10005FC10()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 52) = result;
  return result;
}

float sub_10005FC4C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 56) = result;
  return result;
}

float sub_10005FC88()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 60) = result;
  return result;
}

float sub_10005FCC4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 64) = result;
  return result;
}

float sub_10005FD00()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 68) = result;
  return result;
}

float sub_10005FD3C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 72) = result;
  return result;
}

float sub_10005FD78()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 76) = result;
  return result;
}

float sub_10005FDB4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 84) = result;
  return result;
}

float sub_10005FDF0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 88) = result;
  return result;
}

float sub_10005FE2C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 92) = result;
  return result;
}

float sub_10005FE68()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 96) = result;
  return result;
}

float sub_10005FEA4()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 100) = result;
  return result;
}

uint64_t sub_100060150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Device();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100060210(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Device();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DeviceModelView()
{
  result = qword_10016CCF0;
  if (!qword_10016CCF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100060300()
{
  sub_1000603A4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Device();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DeviceProvider();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000603A4()
{
  if (!qword_10016CD00)
  {
    type metadata accessor for DeviceModelParameters();
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &qword_10016CD00);
    }
  }
}

__n128 sub_100060418@<Q0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v2 = sub_100002BE4(&qword_10016CD38, &qword_100112F68);
  v3 = *(v2 - 8);
  v80 = v2 - 8;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = v73 - v5;
  v7 = sub_100002BE4(&qword_10016CD40, &qword_100112F70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v75 = v73 - v9;
  v74 = sub_100002BE4(&qword_10016CD48, &qword_100112F78);
  v10 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v76 = v73 - v11;
  v77 = sub_100002BE4(&qword_10016CD50, &qword_100112F80);
  v12 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v78 = v73 - v13;
  v14 = type metadata accessor for DeviceModelView();
  v15 = v14[5];
  v16 = type metadata accessor for Device();
  (*(*(v16 - 8) + 16))(v6, &v1[v15], v16);
  v17 = *&v1[v14[6]];
  v18 = *&v1[v14[7]];
  v20 = *(v1 + 1);
  v21 = *(v1 + 2);
  *&v82 = *v1;
  v19 = v82;
  *(&v82 + 1) = v20;
  *&v83 = v21;

  v22 = sub_100002BE4(&qword_10016CD58, &qword_100112F88);
  Binding.wrappedValue.getter();
  v23 = v81;
  v24 = type metadata accessor for AsyncARViewWrapper();
  *&v6[v24[5]] = v17;
  *&v6[v24[6]] = v18;
  *&v6[v24[7]] = v23;
  v25 = v24[8];
  v81 = 0;
  State.init(wrappedValue:)();
  *&v6[v25] = v82;
  v26 = &v6[v24[9]];
  v81 = 0x3FF0000000000000;
  State.init(wrappedValue:)();
  v27 = *(&v82 + 1);
  *v26 = v82;
  *(v26 + 1) = v27;
  *&v82 = v19;
  *(&v82 + 1) = v20;
  *&v83 = v21;
  Binding.wrappedValue.getter();
  v28 = v81;
  swift_getKeyPath();
  *&v82 = v28;
  v29 = sub_10006110C(&qword_10016CC90, type metadata accessor for DeviceModelParameters);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v17) = *(v28 + 100);

  v30 = &v6[*(v80 + 44)];
  *v30 = *&v17;
  *(v30 + 4) = 0;
  v31 = v19;
  *&v82 = v19;
  *(&v82 + 1) = v20;
  v32 = v20;
  v33 = v21;
  *&v83 = v21;
  v34 = v22;
  Binding.wrappedValue.getter();
  v35 = v81;
  swift_getKeyPath();
  *&v82 = v35;
  v80 = v29;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v26) = *(v35 + 104);

  if (v26 == 1)
  {
    v36 = static Color.red.getter();
  }

  else
  {
    v36 = static Color.clear.getter();
  }

  v37 = v36;
  *&v82 = v31;
  *(&v82 + 1) = v32;
  *&v83 = v21;
  v73[1] = v34;
  Binding.wrappedValue.getter();
  v38 = v81;
  swift_getKeyPath();
  *&v82 = v38;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v39 = *(v38 + 104);

  v40 = v75;
  sub_100060C40(v37, v75);

  sub_100009908(v6, &qword_10016CD38, &qword_100112F68);
  LOBYTE(v37) = static Edge.Set.top.getter();
  *&v82 = v31;
  *(&v82 + 1) = v32;
  *&v83 = v33;
  Binding.wrappedValue.getter();
  v41 = v81;
  swift_getKeyPath();
  *&v82 = v41;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v42 = *(v41 + 92);

  EdgeInsets.init(_all:)();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = v40;
  v52 = v76;
  sub_10001D504(v51, v76, &qword_10016CD40, &qword_100112F70);
  v53 = v52 + *(v74 + 36);
  *v53 = v37;
  *(v53 + 8) = v44;
  *(v53 + 16) = v46;
  *(v53 + 24) = v48;
  *(v53 + 32) = v50;
  *(v53 + 40) = 0;
  LOBYTE(v37) = static Edge.Set.bottom.getter();
  *&v82 = v31;
  *(&v82 + 1) = v32;
  *&v83 = v33;
  Binding.wrappedValue.getter();
  v54 = v81;
  swift_getKeyPath();
  *&v82 = v54;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v44) = *(v54 + 96);

  EdgeInsets.init(_all:)();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;
  v63 = v78;
  sub_10001D504(v52, v78, &qword_10016CD48, &qword_100112F78);
  v64 = v63 + *(v77 + 36);
  *v64 = v37;
  *(v64 + 8) = v56;
  *(v64 + 16) = v58;
  *(v64 + 24) = v60;
  *(v64 + 32) = v62;
  *(v64 + 40) = 0;
  *&v82 = v31;
  *(&v82 + 1) = v32;
  *&v83 = v33;
  Binding.wrappedValue.getter();
  v65 = v81;
  swift_getKeyPath();
  *&v82 = v65;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v56) = *(v65 + 88);

  *&v82 = v31;
  *(&v82 + 1) = v32;
  *&v83 = v33;
  Binding.wrappedValue.getter();
  v66 = v81;
  swift_getKeyPath();
  *&v82 = v66;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  LODWORD(v58) = *(v66 + 84);

  static Alignment.center.getter();
  if (*&v56 > *&v58)
  {
    static os_log_type_t.fault.getter();
    v67 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();
  }

  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v68 = v79;
  sub_10001D504(v63, v79, &qword_10016CD50, &qword_100112F80);
  v69 = v68 + *(sub_100002BE4(&qword_10016CD60, &qword_100113080) + 36);
  v70 = v87;
  *(v69 + 64) = v86;
  *(v69 + 80) = v70;
  *(v69 + 96) = v88;
  v71 = v83;
  *v69 = v82;
  *(v69 + 16) = v71;
  result = v85;
  *(v69 + 32) = v84;
  *(v69 + 48) = result;
  return result;
}

uint64_t sub_100060C40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  v6 = v29;
  v7 = v29 * 0.5;
  v8 = v30;
  v9 = DWORD1(v30);
  v10 = *(&v30 + 1);
  v11 = v31;

  v12 = static Alignment.center.getter();
  v14 = v13;
  *v32 = v29 * 0.5;
  *(v32 + 1) = v29;
  v32[1] = v30;
  *v33 = v31;
  *&v33[16] = a1;
  *&v33[24] = 256;
  v27 = v30;
  *v28 = v31;
  *&v28[10] = *&v33[10];
  v26 = v32[0];
  v36 = *v28;
  v37 = *&v28[16];
  v34 = v32[0];
  v35 = v30;
  *&v38 = v12;
  *(&v38 + 1) = v13;
  sub_10000C178(v3, a2, &qword_10016CD38, &qword_100112F68);
  v15 = (a2 + *(sub_100002BE4(&qword_10016CD40, &qword_100112F70) + 36));
  v16 = *&v28[16];
  v15[2] = *v28;
  v15[3] = v16;
  v15[4] = v38;
  v17 = v35;
  *v15 = v34;
  v15[1] = v17;
  v39[2] = *v28;
  v39[3] = *&v28[16];
  v39[0] = v26;
  v39[1] = v27;
  v40 = v12;
  v41 = v14;
  sub_10000C178(v32, v19, &qword_10016CD68, &qword_100113088);
  sub_10000C178(&v34, v19, &qword_10016CD70, &unk_100113090);
  sub_100009908(v39, &qword_10016CD70, &unk_100113090);
  *v19 = v7;
  *&v19[1] = v6;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = a1;
  v25 = 256;
  return sub_100009908(v19, &qword_10016CD68, &qword_100113088);
}

unint64_t sub_100060E58()
{
  result = qword_10016CD78;
  if (!qword_10016CD78)
  {
    sub_10000459C(&qword_10016CD60, &qword_100113080);
    sub_100060F40(&qword_10016CD80, &qword_10016CD50, &qword_100112F80, sub_100060F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD78);
  }

  return result;
}

uint64_t sub_100060F40(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100060FC4()
{
  result = qword_10016CD90;
  if (!qword_10016CD90)
  {
    sub_10000459C(&qword_10016CD40, &qword_100112F70);
    sub_100061050();
    sub_100061154();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD90);
  }

  return result;
}

unint64_t sub_100061050()
{
  result = qword_10016CD98;
  if (!qword_10016CD98)
  {
    sub_10000459C(&qword_10016CD38, &qword_100112F68);
    sub_10006110C(&qword_10016CDA0, type metadata accessor for AsyncARViewWrapper);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CD98);
  }

  return result;
}

uint64_t sub_10006110C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100061154()
{
  result = qword_10016CDA8;
  if (!qword_10016CDA8)
  {
    sub_10000459C(&qword_10016CD70, &unk_100113090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDA8);
  }

  return result;
}

unint64_t sub_1000611CC()
{
  result = qword_10016CDB0;
  if (!qword_10016CDB0)
  {
    sub_10000459C(&qword_10016CDB8, qword_1001130B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDB0);
  }

  return result;
}

uint64_t sub_100061230(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = "RealityDevice14,1";
  }

  else
  {
    v2 = "SpatialGalleryItemUnfavorited";
  }

  v3 = v2 | 0x8000000000000000;
  if (*a2)
  {
    v4 = "RealityDevice14,1";
  }

  else
  {
    v4 = "SpatialGalleryItemUnfavorited";
  }

  if (v3 == (v4 | 0x8000000000000000))
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

Swift::Int sub_1000612D4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10006134C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000613B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100061424@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100159AA0, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_100061484(void *a1@<X8>)
{
  if (*v1)
  {
    v2 = "RealityDevice14,1";
  }

  else
  {
    v2 = "SpatialGalleryItemUnfavorited";
  }

  *a1 = 0xD000000000000011;
  a1[1] = v2 | 0x8000000000000000;
}

unint64_t sub_1000614D0()
{
  result = qword_10016CDC0;
  if (!qword_10016CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016CDC0);
  }

  return result;
}

uint64_t sub_100061524()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1000615A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_100061638(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037614();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100061768()
{
  swift_getKeyPath();
  v4 = v0;
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_1000617E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100037614();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_10006187C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_1000618C4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100037614();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000619F4()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC17AppleVisionProApp12PINViewModel___observationRegistrar;
  v4 = type metadata accessor for ObservationRegistrar();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PINViewModel()
{
  result = qword_10016CDF8;
  if (!qword_10016CDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061AF4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100061BAC()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 40);
  *(v1 + 32) = v0[3];
  *(v1 + 40) = v2;
}

uint64_t sub_100061C08(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_100061C50()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_100061C90(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v5 = 0x64657269707865;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6465747065636361;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x64656E696C636564;
  if (*a2 != 1)
  {
    v8 = 0x64657269707865;
    v3 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6465747065636361;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100061D90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100061E34()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100061EC4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100061F64@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100063A04(*a1);
  *a2 = result;
  return result;
}

void sub_100061F94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636564;
  if (v2 != 1)
  {
    v5 = 0x64657269707865;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6465747065636361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100061FF4(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) = 0;
  v3 = (v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  *v3 = 0;
  v3[1] = 0;
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) = 0;
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter;
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  *(v1 + v4) = v7;
  v8 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v1 + v8, a1, v9);
  v11 = [objc_opt_self() defaultCenter];
  v12 = qword_100168F58;

  if (v12 != -1)
  {
    swift_once();
  }

  [v11 addObserver:v1 selector:"handleDialogResponseWithNotification:" name:qword_1001821B0 object:0];

  (*(v10 + 8))(a1, v9);
  return v1;
}

uint64_t sub_1000621BC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0];

  sub_1000631F8();
  v2 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);
  sub_100014104(*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback));

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AcceptDialogController()
{
  result = qword_10016CF68;
  if (!qword_10016CF68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10006231C()
{
  v1 = *v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) != 1)
  {
    return;
  }

  v9 = v5;
  v10 = v0;
  v11 = Notification.userInfo.getter();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v49 = 0xD000000000000012;
  v50 = 0x800000010011E440;
  AnyHashable.init<A>(_:)();
  if (*(v12 + 16))
  {
    v13 = sub_100068958(v51);
    if (v14)
    {
      sub_1000076F0(*(v12 + 56) + 32 * v13, v52);
      sub_100064580(v51);
      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_20:

        goto LABEL_14;
      }

      v16 = v49;
      v15 = v50;
      v49 = 0xD000000000000016;
      v50 = 0x800000010011E3E0;
      AnyHashable.init<A>(_:)();
      if (*(v12 + 16))
      {
        v17 = sub_100068958(v51);
        if (v18)
        {
          sub_1000076F0(*(v12 + 56) + 32 * v17, v52);
          sub_100064580(v51);

          if (swift_dynamicCast())
          {
            if (*(v10 + v8) == 1)
            {
              v47 = v50;
              v48 = v49;
              (*(v3 + 16))(v7, v10 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v9);
              v19 = UUID.uuidString.getter();
              v21 = v20;
              (*(v3 + 8))(v7, v9);
              if (v48 == v19 && v47 == v21)
              {

LABEL_26:
                if (v16 == 0xD00000000000002FLL && 0x800000010011E460 == v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  v31 = 0;
                }

                else if (v16 == 0xD00000000000002FLL && 0x800000010011E490 == v15)
                {

                  v31 = 1;
                }

                else
                {
                  v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v45)
                  {
                    v31 = 1;
                  }

                  else
                  {
                    v31 = 2;
                  }
                }

                if (qword_100168E20 != -1)
                {
                  swift_once();
                }

                v32 = type metadata accessor for Logger();
                sub_100006B0C(v32, qword_100181F88);
                v33 = Logger.logObject.getter();
                v34 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v33, v34))
                {
                  v35 = swift_slowAlloc();
                  v51[0] = swift_slowAlloc();
                  *v35 = 136315394;
                  v36 = _typeName(_:qualified:)();
                  v38 = sub_100006B44(v36, v37, v51);

                  *(v35 + 4) = v38;
                  *(v35 + 12) = 2080;
                  v39 = v10;
                  if (v31)
                  {
                    if (v31 == 1)
                    {
                      v40 = 0xE800000000000000;
                      v41 = 0x64656E696C636564;
                    }

                    else
                    {
                      v40 = 0xE700000000000000;
                      v41 = 0x64657269707865;
                    }
                  }

                  else
                  {
                    v40 = 0xE800000000000000;
                    v41 = 0x6465747065636361;
                  }

                  v42 = sub_100006B44(v41, v40, v51);

                  *(v35 + 14) = v42;
                  _os_log_impl(&_mh_execute_header, v33, v34, "%s Received notification respose with result %s.", v35, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {

                  v39 = v10;
                }

                v43 = *(v39 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
                if (v43)
                {
                  v44 = *(v39 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

                  v43(v31);
                  sub_100014104(v43);
                }

                sub_1000631F8();
                return;
              }

              v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v30)
              {
                goto LABEL_26;
              }
            }

            else
            {
            }

            return;
          }

          goto LABEL_20;
        }
      }
    }
  }

  sub_100064580(v51);
LABEL_14:
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006B0C(v22, qword_100181F88);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v51[0] = v26;
    *v25 = 136315138;
    v27 = _typeName(_:qualified:)();
    v29 = sub_100006B44(v27, v28, v51);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "%s The received AcceptDialogResponseNotification does not include the expected response user info keys.", v25, 0xCu);
    sub_1000052E4(v26);
  }
}

uint64_t sub_100062AEC()
{
  result = type metadata accessor for UUID();
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

void sub_100062BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v40 = v12;
    v41 = v11;
    swift_errorRetain();
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006B0C(v15, qword_100181F88);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = v5;
      v19 = v18;
      v20 = swift_slowAlloc();
      v39 = v4;
      v21 = v20;
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v19 = 136315394;
      v22 = _typeName(_:qualified:)();
      v24 = sub_100006B44(v22, v23, aBlock);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v25;
      *v21 = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s Failed adding accept dialog notification to center: %@.", v19, 0x16u);
      sub_100009908(v21, &unk_100169C20, &unk_10010D6B0);
      v4 = v39;

      sub_1000052E4(v37);

      v5 = v38;
    }

    sub_100064428();
    v26 = static OS_dispatch_queue.main.getter();
    aBlock[4] = sub_100064474;
    aBlock[5] = a2;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015CAA8;
    v27 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10006447C();
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v27);

    (*(v5 + 8))(v8, v4);
    (*(v40 + 8))(v14, v41);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100006B0C(v28, qword_100181F88);
    v41 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136315138;
      v32 = _typeName(_:qualified:)();
      v34 = sub_100006B44(v32, v33, aBlock);

      *(v30 + 4) = v34;
      _os_log_impl(&_mh_execute_header, v41, v29, "%s Successfuly added accept dialog notification to center.", v30, 0xCu);
      sub_1000052E4(v31);
    }

    else
    {
      v35 = v41;
    }
  }
}

void sub_100063124(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  if (v1)
  {
    v2 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

    v1(1);
    sub_100014104(v1);
  }

  sub_1000631F8();
}

void sub_10006318C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

void sub_1000631F8()
{
  *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog) = 0;
  v1 = (v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v2 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v3 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);
  *v1 = 0;
  v1[1] = 0;
  sub_100014104(v2);
  v4 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer;
  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  v6 = *(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v6 removePendingNotificationRequestsWithIdentifiers:isa];

  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v6 removeDeliveredNotificationsWithIdentifiers:v8];
}

void sub_1000632E8()
{
  v1 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer;
  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_expirationTimer) invalidate];
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  v9[4] = sub_100064578;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_1000634B8;
  v9[3] = &unk_10015CB48;
  v4 = _Block_copy(v9);

  v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:240.0];
  _Block_release(v4);
  v6 = *(v0 + v1);
  *(v0 + v1) = v5;
  v7 = v5;

  if (v7)
  {
    v8 = [objc_opt_self() currentRunLoop];
    [v8 addTimer:v7 forMode:NSRunLoopCommonModes];
  }
}

uint64_t sub_100063460()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100063520();
  }

  return result;
}

void sub_1000634B8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100063520()
{
  v1 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100064428();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v1;
  aBlock[4] = sub_100064538;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015CAF8;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10006447C();
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1000637E4()
{
  result = qword_10016D0A8;
  if (!qword_10016D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016D0A8);
  }

  return result;
}

void sub_100063838(uint64_t a1)
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s Invalidatig dialog as timer expired.", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  if (v10)
  {
    v11 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

    v10(2);
    sub_100014104(v10);
  }

  sub_1000631F8();
}

NSString sub_1000639CC()
{
  result = String._bridgeToObjectiveC()();
  qword_1001821B0 = result;
  return result;
}

unint64_t sub_100063A04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159B18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

void sub_100063A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v48 = a4;
  v47 = a3;
  v43 = a2;
  v42 = a1;
  v49 = *v4;
  v46 = type metadata accessor for UUID();
  v45 = *(v46 - 8);
  v6 = *(v45 + 64);
  __chkstk_darwin(v46);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(UNMutableNotificationContent) init];
  v9 = objc_opt_self();
  v10 = [v9 mainBundle];
  v56._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000015;
  v11._object = 0x800000010011E3A0;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v56._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v56);

  v14 = String._bridgeToObjectiveC()();

  [v8 setTitle:v14];

  v15 = [v9 mainBundle];
  v57._object = 0xE000000000000000;
  v16._object = 0x800000010011E3C0;
  v16._countAndFlagsBits = 0xD000000000000014;
  v17.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v17.value._object = 0xEB00000000656C62;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v57);

  sub_100002BE4(&unk_100171530, &unk_10011A560);
  v19 = swift_allocObject();
  v41 = xmmword_10010D3B0;
  *(v19 + 16) = xmmword_10010D3B0;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = sub_10006437C();
  v20 = v43;
  *(v19 + 32) = v42;
  *(v19 + 40) = v20;

  String.init(format:arguments:)();

  v21 = String._bridgeToObjectiveC()();

  [v8 setBody:v21];

  [v8 setInterruptionLevel:2];
  [v8 setRelevanceScore:1.0];
  sub_100002BE4(&qword_10016D0B8, &unk_100113360);
  inited = swift_initStackObject();
  *(inited + 16) = v41;
  aBlock = 0xD000000000000016;
  v51 = 0x800000010011E3E0;
  AnyHashable.init<A>(_:)();
  v23 = v45;
  v24 = v44;
  v25 = v46;
  (*(v45 + 16))(v44, v4 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v46);
  v26 = UUID.uuidString.getter();
  v28 = v27;
  (*(v23 + 8))(v24, v25);
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v26;
  *(inited + 80) = v28;
  sub_10000BA38(inited);
  swift_setDeallocating();
  sub_100009908(inited + 32, &unk_1001714D0, &qword_10010D1E8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 setUserInfo:isa];

  v30 = v8;
  v31 = String._bridgeToObjectiveC()();
  v32 = [objc_opt_self() requestWithIdentifier:v31 content:v30 trigger:0];

  v33 = (v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v34 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
  v35 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);
  v36 = v48;
  *v33 = v47;
  v33[1] = v36;

  sub_100014104(v34);
  v37 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_userNotificationCenter);
  v38 = swift_allocObject();
  v39 = v49;
  *(v38 + 16) = v5;
  *(v38 + 24) = v39;
  v54 = sub_100064408;
  v55 = v38;
  aBlock = _NSConcreteStackBlock;
  v51 = 1107296256;
  v52 = sub_10006318C;
  v53 = &unk_10015CA80;
  v40 = _Block_copy(&aBlock);

  [v37 addNotificationRequest:v32 withCompletionHandler:v40];
  _Block_release(v40);
  sub_1000632E8();
}

void sub_100064034(uint64_t a1, unint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v7 = *v4;
  v8 = OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog;
  if (*(v4 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_isShowingDialog))
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006B0C(v9, qword_100181F88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315138;
      v14 = _typeName(_:qualified:)();
      v16 = sub_100006B44(v14, v15, &v27);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s Already showing accept dialog, avoid raising another one", v12, 0xCu);
      sub_1000052E4(v13);
    }

    a3(2);
  }

  else
  {
    v26 = v4;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100006B0C(v19, qword_100181F88);

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v22 = 136315394;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100006B44(v23, v24, &v27);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_100006B44(a1, a2, &v27);
      _os_log_impl(&_mh_execute_header, v20, v21, "%s Raising accept dialog for client %s.", v22, 0x16u);
      swift_arrayDestroy();
    }

    *(v26 + v8) = 1;

    sub_100063A50(a1, a2, a3, a4);
  }
}