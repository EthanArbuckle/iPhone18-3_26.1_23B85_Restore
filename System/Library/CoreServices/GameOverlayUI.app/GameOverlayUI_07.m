uint64_t sub_1000CD494(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002B38(&qword_100132100, &unk_1000EECA0);
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

        swift_unknownObjectRetain();
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

uint64_t sub_1000CD73C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for RemoteAlertRequest();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100002B38(&qword_1001320F8, &qword_1000EEC98);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
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
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_10003F35C(v31, v45);
      }

      else
      {
        sub_10003F2F4(v31, v45);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_10003F35C(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
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

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1000CDA78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002B38(&qword_100132128, &qword_1000EEDA0);
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

uint64_t sub_1000CDD1C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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

    if ((a2 & 1) == 0)
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

uint64_t sub_1000CDF8C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100002B38(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1000CE22C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
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
        sub_1000D1A50(v25, v37);
      }

      else
      {
        sub_1000BA7A0(v25, v37);
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
      result = sub_1000D1A50(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1000CE4E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
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
      sub_1000CD494(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000C547C(a2, a3);
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
      sub_1000CF1E4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return swift_unknownObjectRelease();
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

uint64_t sub_1000CE660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
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
      sub_1000CD1EC(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000C547C(a2, a3);
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
      sub_1000CF074();
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

uint64_t sub_1000CE7DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1000C547C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1000CF354();
      goto LABEL_7;
    }

    sub_1000CD73C(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_1000C547C(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for RemoteAlertRequest() - 8) + 72) * v12;

    return sub_1000D1AAC(a1, v20);
  }

LABEL_13:
  sub_1000CEF70(v12, a2, a3, a1, v18);
}

uint64_t sub_1000CE954(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
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
      sub_1000CDA78(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1000C547C(a2, a3);
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
      sub_1000CF598();
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

uint64_t sub_1000CEACC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000C55E0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000CDD1C(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1000C55E0(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        sub_1000D1A60();
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000CF704();
      v8 = v16;
    }
  }

  v19 = *v4;
  if ((v14 & 1) == 0)
  {
    v19[(v8 >> 6) + 8] |= 1 << v8;
    *(v19[6] + 8 * v8) = a2;
    *(v19[7] + 8 * v8) = a1;
    v23 = v19[2];
    v12 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v12)
    {
      v19[2] = v24;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v20 = v19[7];
  v21 = *(v20 + 8 * v8);
  *(v20 + 8 * v8) = a1;
}

uint64_t sub_1000CEC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1000C547C(a2, a3);
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
      sub_1000CDF8C(v20, a4 & 1, a5, a6);
      v24 = *v9;
      v15 = sub_1000C547C(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      sub_1000CF87C(a5, a6);
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

_OWORD *sub_1000CEDD8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000C547C(a2, a3);
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
      sub_1000CF9DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1000CE22C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000C547C(a2, a3);
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
    sub_10002E6CC(v23);

    return sub_1000D1A50(a1, v23);
  }

  else
  {
    sub_1000CF008(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1000CEF28(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

uint64_t sub_1000CEF70(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RemoteAlertRequest();
  result = sub_10003F35C(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

_OWORD *sub_1000CF008(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1000D1A50(a4, (a5[7] + 32 * a1));
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

void *sub_1000CF074()
{
  v1 = v0;
  sub_100002B38(&qword_1001320E8, &qword_1000EEC80);
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

void *sub_1000CF1E4()
{
  v1 = v0;
  sub_100002B38(&qword_100132100, &unk_1000EECA0);
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

void *sub_1000CF354()
{
  v1 = v0;
  v2 = type metadata accessor for RemoteAlertRequest();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002B38(&qword_1001320F8, &qword_1000EEC98);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10003F2F4(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10003F35C(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

id sub_1000CF598()
{
  v1 = v0;
  sub_100002B38(&qword_100132128, &qword_1000EEDA0);
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

void *sub_1000CF704()
{
  v1 = v0;
  sub_100002B38(&qword_1001320D0, &qword_1000EEC60);
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

void *sub_1000CF87C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100002B38(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
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

void *sub_1000CF9DC()
{
  v1 = v0;
  sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
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
        sub_1000BA7A0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000D1A50(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1000CFB80(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000CFCD0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_1000CFCD0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000CCBA4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000CC810();
      goto LABEL_16;
    }

    sub_1000CC96C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void (*sub_1000CFE50(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5))(void *a1)
{
  v89 = a3;
  v88 = a2;
  v8 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v83 - v10;
  v12 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v87 = v83 - v14;
  v15 = type metadata accessor for RemoteAlertRequest();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = v83 - v22;
  __chkstk_darwin(v21);
  v25 = v83 - v24;
  v96 = a4;
  v97 = a5;
  v26 = sub_100012854(v95);
  (*(*(a4 - 8) + 16))(v26, a1, a4);
  v27 = v96;
  v28 = v97;
  sub_10002D754(v95, v96);
  v90 = (*(v28 + 8))(v27, v28);
  if (!v29)
  {
    return sub_10002E6CC(v95);
  }

  v30 = v29;
  v86 = v20;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_100011F80(v31, qword_100135C88);
  sub_10002E8A8(v95, v92);

  v83[1] = v32;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.info.getter();

  v35 = os_log_type_enabled(v33, v34);
  v83[0] = v11;
  v85 = v15;
  v84 = v16;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v91[0] = swift_slowAlloc();
    *v36 = 136315394;
    *(v36 + 4) = sub_1000BA5C8(v90, v30, v91);
    *(v36 + 12) = 2080;
    v38 = v93;
    v37 = v94;
    sub_10002D754(v92, v93);
    v39 = (*(v37 + 16))(v38, v37);
    v41 = v40;
    sub_10002E6CC(v92);
    v42 = sub_1000BA5C8(v39, v41, v91);

    *(v36 + 14) = v42;
    _os_log_impl(&_mh_execute_header, v33, v34, "Finding completed request for token: %s, contextID: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002E6CC(v92);
  }

  v43 = v89;
  swift_beginAccess();
  v44 = *(v43 + 112);
  if (!*(v44 + 16))
  {
    goto LABEL_12;
  }

  v45 = *(v43 + 112);

  v46 = sub_1000C547C(v90, v30);
  if ((v47 & 1) == 0)
  {

LABEL_12:

    return sub_10002E6CC(v95);
  }

  v48 = *(*(v44 + 56) + 8 * v46);

  __chkstk_darwin(v49);
  v83[-2] = v95;
  v50 = sub_10002B934(sub_10002D798, &v83[-4], v48);
  v52 = v51;

  if (v52)
  {
    goto LABEL_12;
  }

  v54 = sub_1000C7BE8();
  v55 = sub_10002B860(v91, v90, v30);
  if (!*v56)
  {
    (v55)(v91, 0);

    (v54)(v92, 0);
    return sub_10002E6CC(v95);
  }

  sub_10002BA20(v50, v23);
  (v55)(v91, 0);
  (v54)(v92, 0);
  sub_10003F35C(v23, v25);

  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v92[0] = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_1000BA5C8(v90, v30, v92);
    _os_log_impl(&_mh_execute_header, v57, v58, "Removing completed request for token: %s", v59, 0xCu);
    sub_10002E6CC(v60);
  }

  v61 = v85;
  v62 = v84;
  v63 = v86;
  v64 = &v25[*(v85 + 32)];
  v65 = v89;
  if (*v64)
  {
    v66 = *(v64 + 1);
    (*v64)();
  }

  v67 = *(v65 + 112);
  if (!*(v67 + 16))
  {
LABEL_26:
    if (v88)
    {
      v73 = type metadata accessor for TaskPriority();
      v74 = v87;
      (*(*(v73 - 8) + 56))(v87, 1, 1, v73);
      v75 = swift_allocObject();
      v75[2] = 0;
      v75[3] = 0;
      v75[4] = v90;
      v75[5] = v30;
      sub_100014BBC(0, 0, v74, &unk_1000E9DC0, v75);

LABEL_29:
      sub_10002D820(v25);
      return sub_10002E6CC(v95);
    }

LABEL_28:

    goto LABEL_29;
  }

  v68 = *(v65 + 112);

  v69 = sub_1000C547C(v90, v30);
  if ((v70 & 1) == 0 || (v71 = *(*(v67 + 56) + 8 * v69), , , !*(v71 + 16)))
  {

    goto LABEL_26;
  }

  v72 = (*(v62 + 80) + 32) & ~*(v62 + 80);
  sub_10003F2F4(v71 + v72, v63);

  if (sub_1000D0750(v63, 0, 0, 0))
  {
    sub_10002D820(v63);
    goto LABEL_28;
  }

  v76 = sub_1000C7BE8();
  result = sub_10002B860(v91, v90, v30);
  v77 = result;
  v79 = *v78;
  if (!*v78)
  {
    (result)(v91, 0);

    (v76)(v92, 0);
    v82 = 1;
    v81 = v83[0];
    goto LABEL_34;
  }

  if (*(v79 + 16))
  {
    v80 = v79 + v72;
    v81 = v83[0];
    sub_10003F2F4(v80, v83[0]);
    sub_10002E60C(0, 1);
    v77(v91, 0);

    (v76)(v92, 0);
    v82 = 0;
LABEL_34:
    sub_10002D820(v86);
    sub_10002D820(v25);
    (*(v62 + 56))(v81, v82, 1, v61);
    sub_100005688(v81, &qword_10012DC30, &qword_1000EEC90);
    return sub_10002E6CC(v95);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D0750(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v117 = a3;
  v7 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v103 - v9;
  v11 = sub_100002B38(&qword_1001320A8, &unk_1000EEC18);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v114 = &v103 - v13;
  v14 = type metadata accessor for GameOverlayUIConfig.OverlayStyle();
  v116 = *(v14 - 8);
  v15 = *(v116 + 64);
  v16 = __chkstk_darwin(v14);
  v115 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v19 = &v103 - v18;
  v20 = type metadata accessor for RemoteAlertRequest();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20);
  v24 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + *(v22 + 24));
  v26 = v25[2];
  if (!v26)
  {
    goto LABEL_9;
  }

  v112 = v19;
  v27 = v26;
  if ((sub_1000E0268() & 1) == 0)
  {

LABEL_9:
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100011F80(v45, qword_100135C88);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Cannot present remote alert because the client process state is invalid.", v48, 2u);
    }

    return 0;
  }

  v111 = v14;
  v113 = v25;
  result = [objc_opt_self() identityOfCurrentProcess];
  if (result)
  {
    v29 = result;
    v110 = v27;
    v107 = v10;
    v108 = a2;
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    v31 = sub_100011F80(v30, qword_100135C88);
    sub_10003F2F4(a1, v24);
    v32 = v29;
    v109 = v31;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v120[0] = v106;
      *v35 = 136315394;
      v104 = v33;
      v36 = GameOverlayUIConfig.ServiceKind.rawValue.getter();
      v37 = v32;
      v38 = a4;
      v40 = v39;
      sub_10002D820(v24);
      v41 = sub_1000BA5C8(v36, v40, v120);
      a4 = v38;
      v32 = v37;

      *(v35 + 4) = v41;
      *(v35 + 12) = 2112;
      *(v35 + 14) = v37;
      v42 = v105;
      *v105 = v29;
      v43 = v37;
      v44 = v104;
      _os_log_impl(&_mh_execute_header, v104, v34, "Presenting remoteAlert for %s from %@", v35, 0x16u);
      sub_100005688(v42, &qword_100131110, &unk_1000EC870);

      sub_10002E6CC(v106);
    }

    else
    {

      sub_10002D820(v24);
    }

    v49 = v113;
    v50 = v111;
    *(a1 + *(v20 + 20));
    v51 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v52 = v32;
    v53 = String._bridgeToObjectiveC()();

    v54 = [v51 initWithSceneProvidingProcess:v52 configurationIdentifier:v53];

    [v54 setSupportsMultipleDisplayPresentations:1];
    v55 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v56 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    v57 = v49[2];
    if (v57)
    {
      swift_beginAccess();
      sub_1000035B4((v49 + 8), v120, &unk_100131120, &unk_1000EAAF0);
      v106 = v52;
      v105 = v57;
      if (v120[3])
      {
        v58 = v57;
        sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
        type metadata accessor for RemoteAlertGameModeBannerContext(0);
        if (swift_dynamicCast())
        {
          v104 = v56;
          v103 = v54;
          v59 = [*(v118 + 32) bundleIdentifier];
          if (!v59)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v59 = String._bridgeToObjectiveC()();
          }

          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;
          v63 = Logger.logObject.getter();
          v64 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v109 = a4;
            v66 = v65;
            v67 = v55;
            v68 = swift_slowAlloc();
            v120[0] = v68;
            *v66 = 136315138;
            v69 = sub_1000BA5C8(v60, v62, v120);

            *(v66 + 4) = v69;
            _os_log_impl(&_mh_execute_header, v63, v64, "Game Mode Banner Remote alert using presentation target for bundle Id: %s", v66, 0xCu);
            sub_10002E6CC(v68);
            v55 = v67;
            v50 = v111;
            v49 = v113;

            a4 = v109;
          }

          else
          {
          }

          v85 = [objc_allocWithZone(LSApplicationIdentity) initWithBundleIdentifier:v59 URL:0 personaUniqueString:0 personaType:4];
          v86 = [objc_opt_self() predicateForLaunchingApplicationIdentity:v85];

          v80 = v86;
          v54 = v103;
          v56 = v104;
LABEL_36:
          v87 = [objc_allocWithZone(SBSRemoteAlertPresentationTarget) initWithTargetPredicate:v80];

          [v87 setShouldDismissOnUILock:1];
          if (v49[19])
          {
            v88 = v49[18];
            v89 = v49[19];
          }

          v90 = v114;
          GameOverlayUIConfig.OverlayStyle.init(rawValue:)();
          v91 = v116;
          if ((*(v116 + 48))(v90, 1, v50) == 1)
          {
            sub_100005688(v90, &qword_1001320A8, &unk_1000EEC18);
          }

          else
          {
            v104 = v56;
            v111 = v55;
            (*(v91 + 32))(v112, v90, v50);
            (*(v91 + 104))(v115, enum case for GameOverlayUIConfig.OverlayStyle.fullScreen(_:), v50);
            sub_1000D3DCC(&qword_1001320B0, 255, &type metadata accessor for GameOverlayUIConfig.OverlayStyle);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            if (v120[0] == v118 && v120[1] == v119)
            {
              v92 = v54;
              v93 = 1;
            }

            else
            {
              v92 = v54;
              v93 = _stringCompareWithSmolCheck(_:_:expecting:)();
            }

            v94 = *(v91 + 8);
            v94(v115, v50);

            if (v93)
            {
              [v87 setShouldDismissInSwitcher:1];
              [v87 setRequiresFullscreenPresentation:1];
              v94(v112, v50);
              v54 = v92;
              v55 = v111;
              v56 = v104;
LABEL_48:
              [v56 setPresentationTarget:v87];
              v95 = type metadata accessor for TaskPriority();
              v96 = v107;
              (*(*(v95 - 8) + 56))(v107, 1, 1, v95);
              type metadata accessor for MainActor();

              v97 = v56;
              v98 = v54;
              v99 = v55;
              v100 = v113;

              v101 = static MainActor.shared.getter();
              v102 = swift_allocObject();
              *(v102 + 16) = v101;
              *(v102 + 24) = &protocol witness table for MainActor;
              *(v102 + 32) = v100;
              *(v102 + 40) = v108 & 1;
              *(v102 + 48) = v117;
              *(v102 + 56) = a4;
              *(v102 + 64) = v97;
              *(v102 + 72) = v98;
              *(v102 + 80) = v99;
              sub_100014BBC(0, 0, v96, &unk_1000EEC30, v102);

              return 1;
            }

            v94(v112, v50);
            v54 = v92;
            v55 = v111;
            v56 = v104;
          }

          [v87 setShouldDismissInSwitcher:0];
          [v56 setPreferredSceneDeactivationReason:0];
          goto LABEL_48;
        }
      }

      else
      {
        v73 = v57;
        sub_100005688(v120, &unk_100131120, &unk_1000EAAF0);
      }

      v74 = v57;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 67109120;
        *(v77 + 4) = [v74 pid];

        _os_log_impl(&_mh_execute_header, v75, v76, "Remote alert using presentation target for pid: %d", v77, 8u);
      }

      else
      {

        v75 = v74;
      }

      v78 = [objc_opt_self() processHandleForAuditToken:v74];
      v79 = [objc_opt_self() predicateForProcess:v78];
      v80 = v79;
      if (v49[19])
      {
        v81 = v49[18];
        v82 = v79;

        v83 = String._bridgeToObjectiveC()();
      }

      else
      {
        v84 = v79;
        v83 = 0;
      }

      [v80 setScenePersistentIdentifier:v83];

      goto LABEL_36;
    }

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&_mh_execute_header, v70, v71, "Cannot present remote alert because the client token is invalid.", v72, 2u);
    }

    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D15BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1000D161C(uint64_t a1)
{
  v4 = *(v1 + 24);
  v14 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v10 = *(v1 + 64);
  v9 = *(v1 + 72);
  v11 = *(v1 + 80);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100014BAC;

  return sub_1000C8F3C(a1, v14, v4, v5, v6, v7, v8, v10);
}

unint64_t sub_1000D1714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002B38(&qword_100132100, &unk_1000EECA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1000C547C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000D1818(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002B38(&qword_1001320C8, &qword_1000EEC58);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000035B4(v4, &v13, &qword_1001320C0, &qword_1000EEC40);
      v5 = v13;
      v6 = v14;
      result = sub_1000C547C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000D1A50(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000D1948()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000D1990(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014BAC;

  return sub_1000C9790(a1, v4, v5, v7, v6);
}

_OWORD *sub_1000D1A50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1000D1A60()
{
  result = qword_100131E98;
  if (!qword_100131E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100131E98);
  }

  return result;
}

uint64_t sub_1000D1AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteAlertRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000D1B10()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1000D1B58()
{
  v1 = type metadata accessor for RemoteAlertRequest();
  v2 = (*(*(v1 - 1) + 80) + 33) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for GameOverlayUIConfig.ServiceKind();
  (*(*(v5 - 8) + 8))(v0 + v2, v5);
  v6 = *(v0 + v2 + v1[6]);

  v7 = (v0 + v2 + v1[7]);
  if (*v7)
  {
    v8 = v7[1];
  }

  v9 = (v0 + v2 + v1[8]);
  if (*v9)
  {
    v10 = v9[1];
  }

  v11 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v11);

  v14 = *(v0 + v12);

  return swift_deallocObject();
}

uint64_t sub_1000D1CA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RemoteAlertRequest() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v12 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_100011720;

  return sub_1000CB110(a1, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_1000D1E0C(uint64_t a1, uint64_t a2)
{
  v3[70] = v2;
  v3[69] = a2;
  v3[68] = a1;
  v4 = *(*(sub_100002B38(&qword_10012DC30, &qword_1000EEC90) - 8) + 64) + 15;
  v3[71] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[72] = v5;
  v6 = *(v5 - 8);
  v3[73] = v6;
  v7 = *(v6 + 64) + 15;
  v3[74] = swift_task_alloc();
  v8 = *(*(sub_100002B38(&unk_100130F10, &qword_1000EA660) - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v9 = type metadata accessor for AccessPointUseCase();
  v3[76] = v9;
  v10 = *(v9 - 8);
  v3[77] = v10;
  v11 = *(v10 + 64) + 15;
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();

  return _swift_task_switch(sub_1000D1FC4, v2, 0);
}

uint64_t sub_1000D1FC4()
{
  v1 = [objc_allocWithZone(FBSSystemService) init];
  v2 = [v1 isPasscodeLockedOrBlocked];

  if (v2)
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100011F80(v3, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_19;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Skipping Access Point request because device is locked or blocked.";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v4, v5, v7, v6, 2u);

LABEL_19:

    v18 = *(v0 + 648);
    v19 = *(v0 + 640);
    v20 = *(v0 + 632);
    v21 = *(v0 + 624);
    v22 = *(v0 + 600);
    v23 = *(v0 + 592);
    v24 = *(v0 + 568);

    v25 = *(v0 + 8);

    return v25();
  }

  v8 = *(v0 + 544);
  v9 = type metadata accessor for RemoteAlertRequest();
  *(v0 + 656) = v9;
  v10 = *(v8 + *(v9 + 24));
  *(v0 + 664) = v10;
  swift_beginAccess();
  sub_1000035B4(v10 + 64, v0 + 96, &unk_100131120, &unk_1000EAAF0);
  if (!*(v0 + 120))
  {
    sub_100005688(v0 + 96, &unk_100131120, &unk_1000EAAF0);
    goto LABEL_14;
  }

  *(v0 + 672) = sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
  *(v0 + 680) = type metadata accessor for RemoteAlertAccessPointContext(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100011F80(v17, qword_100135C88);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v4, v5))
    {
      goto LABEL_19;
    }

    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = "Access point request without a valid remote context or token.";
    goto LABEL_18;
  }

  v11 = *(v0 + 480);
  *(v0 + 688) = v11;
  swift_getKeyPath();
  *(v0 + 696) = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext___observationRegistrar;
  *(v0 + 464) = v11;
  *(v0 + 704) = sub_1000D3DCC(&qword_10012CFC8, 255, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v11 + 16);
  *(v0 + 712) = v12;
  v13 = *(v11 + 24);
  *(v0 + 720) = v13;
  if (!v13)
  {

    goto LABEL_14;
  }

  swift_getKeyPath();
  *(v0 + 456) = v11;

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 792) = *(v11 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground);
  v14 = swift_task_alloc();
  *(v0 + 728) = v14;
  *v14 = v0;
  v14[1] = sub_1000D2414;
  v15 = *(v0 + 560);

  return sub_1000C9D6C(v12, v13);
}

uint64_t sub_1000D2414()
{
  v1 = *(*v0 + 728);
  v2 = *(*v0 + 560);
  v4 = *v0;

  return _swift_task_switch(sub_1000D2524, v2, 0);
}

uint64_t sub_1000D2524()
{
  v1 = *(*(v0 + 664) + 16);
  *(v0 + 736) = v1;
  if (v1)
  {
    v2 = v1;
    if (sub_1000E0268())
    {
      if (*(v0 + 792))
      {
        v3 = *(v0 + 736);
        v4 = *(v0 + 664);
        v5 = *(v4 + 144);
        v6 = *(v4 + 152);

        v7 = sub_1000DFEF0(2, v5, v6);
        v9 = v8;

        *(v0 + 752) = v7;
        *(v0 + 760) = v9;
        v10 = *(v4 + 144);
        v11 = *(v4 + 152);

        v12 = sub_1000DFEF0(1, v10, v11);
        v14 = v13;

        *(v0 + 768) = v12;
        *(v0 + 776) = v14;
        if (qword_10012CC20 != -1)
        {
          swift_once();
        }

        v15 = qword_100135CA0;
        *(v0 + 784) = qword_100135CA0;
        v16 = sub_1000D2DD8;
      }

      else
      {
        if (qword_10012CC20 != -1)
        {
          swift_once();
        }

        v15 = qword_100135CA0;
        *(v0 + 744) = qword_100135CA0;
        v16 = sub_1000D281C;
      }

      return _swift_task_switch(v16, v15, 0);
    }
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100011F80(v17, qword_100135C88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Access point request without a valid remote target.", v20, 2u);
  }

  v21 = *(v0 + 720);
  v22 = *(v0 + 712);
  v23 = *(v0 + 688);
  v24 = *(v0 + 560);

  sub_1000C6540(v22, v21);

  v25 = *(v0 + 648);
  v26 = *(v0 + 640);
  v27 = *(v0 + 632);
  v28 = *(v0 + 624);
  v29 = *(v0 + 600);
  v30 = *(v0 + 592);
  v31 = *(v0 + 568);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1000D281C()
{
  v1 = *(v0 + 744);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 720);
    v4 = *(v0 + 712);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 560);

  return _swift_task_switch(sub_1000D2930, v8, 0);
}

uint64_t sub_1000D2930()
{
  if (!v0[5])
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
    goto LABEL_9;
  }

  v1 = v0[85];
  v2 = v0[84];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v20 = v0[92];
    v21 = v0[83];
    v22 = *(v21 + 144);
    v23 = *(v21 + 152);

    v24 = sub_1000DFEF0(2, v22, v23);
    v26 = v25;

    v0[94] = v24;
    v0[95] = v26;
    v27 = *(v21 + 144);
    v28 = *(v21 + 152);

    v29 = sub_1000DFEF0(1, v27, v28);
    v31 = v30;

    v0[96] = v29;
    v0[97] = v31;
    if (qword_10012CC20 != -1)
    {
      swift_once();
    }

    v32 = qword_100135CA0;
    v0[98] = qword_100135CA0;

    return _swift_task_switch(sub_1000D2DD8, v32, 0);
  }

  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[77];
  v6 = v0[76];
  v7 = v0[67];
  v8 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
  swift_beginAccess();
  (*(v5 + 16))(v3, v7 + v8, v6);
  v9 = enum case for AccessPointUseCase.welcomeBannerOnly(_:);
  v49 = *(v5 + 104);
  v49(v4, enum case for AccessPointUseCase.welcomeBannerOnly(_:), v6);
  sub_1000D3DCC(&qword_100132120, 255, &type metadata accessor for AccessPointUseCase);
  v10 = dispatch thunk of static Equatable.== infix(_:_:)();
  v11 = *(v5 + 8);
  v11(v4, v6);
  v11(v3, v6);
  if (v10)
  {
    goto LABEL_8;
  }

  v12 = v7;
  v13 = v0[81];
  v14 = v0[76];
  v15 = v0[69];
  v49(v13, v9, v14);
  LOBYTE(v15) = dispatch thunk of static Equatable.== infix(_:_:)();
  v11(v13, v14);
  if (v15 & 1) != 0 || (v16 = v0[81], v17 = v0[76], v18 = v0[69], v49(v16, enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), v17), v19 = dispatch thunk of static Equatable.== infix(_:_:)(), v11(v16, v17), (v19))
  {
LABEL_8:

    goto LABEL_9;
  }

  v33 = v0[92];
  v34 = v0[90];
  v35 = v0[86];
  v36 = v0[75];

  v37 = type metadata accessor for TaskPriority();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  type metadata accessor for MainActor();

  v38 = static MainActor.shared.getter();
  v39 = swift_allocObject();
  v39[2] = v38;
  v39[3] = &protocol witness table for MainActor;
  v39[4] = v12;
  sub_100014BBC(0, 0, v36, &unk_1000EED70, v39);

  v40 = v0[81];
  v41 = v0[80];
  v42 = v0[79];
  v43 = v0[78];
  v44 = v0[75];
  v45 = v0[74];
  v46 = v0[71];

  v47 = v0[1];

  return v47();
}

uint64_t sub_1000D2DD8()
{
  v1 = v0[98];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    v13 = v0[95];
LABEL_7:

    goto LABEL_8;
  }

  v3 = v0[95];
  v4 = v0[94];

  v5 = sub_1000C547C(v4, v3);
  v6 = v0[95];
  if ((v7 & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = *(*(v2 + 56) + 8 * v5);

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v10 = v0[70];

    v11 = sub_1000D2EFC;
    v12 = v10;
    goto LABEL_9;
  }

LABEL_8:
  v12 = v0[98];
  v11 = sub_1000D3030;
LABEL_9:

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000D2EFC()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  swift_getKeyPath();
  v0[64] = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0[65] = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    v10 = v0[88];
    v11 = v0[87];
    v12 = v0[86];
    *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v9;
    v0[66] = v12;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    v5 = v0[98];
    v4 = sub_1000D3030;
    v6 = 0;
  }

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D3030()
{
  v1 = *(v0[98] + 112);
  if (!*(v1 + 16))
  {
    v13 = v0[97];
LABEL_7:

    goto LABEL_8;
  }

  v2 = v0[97];
  v3 = v0[96];
  v4 = *(v0[98] + 112);

  v5 = sub_1000C547C(v3, v2);
  v6 = v0[97];
  if ((v7 & 1) == 0)
  {

    goto LABEL_7;
  }

  v8 = *(*(v1 + 56) + 8 * v5);

  Strong = swift_unknownObjectWeakLoadStrong();

  if (Strong)
  {
    v10 = v0[70];

    v11 = sub_1000D3480;
    v12 = v10;
    goto LABEL_9;
  }

LABEL_8:
  v12 = v0[70];
  v11 = sub_1000D3140;
LABEL_9:

  return _swift_task_switch(v11, v12, 0);
}

uint64_t sub_1000D3140()
{
  if (*(v0 + 792))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 552);
  v2 = *(*(v0 + 616) + 104);
  v2(*(v0 + 632), enum case for AccessPointUseCase.welcomeBannerOnly(_:), *(v0 + 608));
  sub_1000D3DCC(&qword_10012CFE8, 255, &type metadata accessor for AccessPointUseCase);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 392) == *(v0 + 408) && *(v0 + 400) == *(v0 + 416))
  {
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 400);
    v5 = *(v0 + 416);
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v6 = *(*(v0 + 616) + 8);
  v6(*(v0 + 632), *(v0 + 608));

  if (v3)
  {
    goto LABEL_11;
  }

  v7 = *(v0 + 552);
  v2(*(v0 + 624), enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), *(v0 + 608));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = *(v0 + 624);
  v9 = *(v0 + 608);
  if (*(v0 + 424) == *(v0 + 440) && *(v0 + 432) == *(v0 + 448))
  {
    v6(*(v0 + 624), *(v0 + 608));

LABEL_11:
    v13 = *(v0 + 720);
    v14 = *(v0 + 712);
    v15 = *(v0 + 560);
    swift_beginAccess();
    sub_1000D447C(0, v14, v13);
    swift_endAccess();
    v16 = *(v0 + 736);
    v17 = *(v0 + 688);
    v18 = *(v0 + 560);
    sub_1000C7CA0(*(v0 + 544), 0, 0, 0);

    v19 = *(v0 + 648);
    v20 = *(v0 + 640);
    v21 = *(v0 + 632);
    v22 = *(v0 + 624);
    v23 = *(v0 + 600);
    v24 = *(v0 + 592);
    v25 = *(v0 + 568);

    v26 = *(v0 + 8);

    return v26();
  }

  v10 = *(v0 + 432);
  v11 = *(v0 + 448);
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6(v8, v9);

  if (v12)
  {
    goto LABEL_11;
  }

  v28 = *(v0 + 784);

  return _swift_task_switch(sub_1000D3884, v28, 0);
}

uint64_t sub_1000D3480()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 688);
  swift_getKeyPath();
  *(v0 + 488) = v3;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *(v0 + 496) = v3;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v7 = *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount);
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    return _swift_task_switch(v4, v5, v6);
  }

  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 688);
  *(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__hideCount) = v9;
  *(v0 + 504) = v12;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  if (*(v0 + 792))
  {
    goto LABEL_12;
  }

  v13 = *(v0 + 552);
  v14 = *(*(v0 + 616) + 104);
  v14(*(v0 + 632), enum case for AccessPointUseCase.welcomeBannerOnly(_:), *(v0 + 608));
  sub_1000D3DCC(&qword_10012CFE8, 255, &type metadata accessor for AccessPointUseCase);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (*(v0 + 392) == *(v0 + 408) && *(v0 + 400) == *(v0 + 416))
  {
    v15 = 1;
  }

  else
  {
    v16 = *(v0 + 400);
    v17 = *(v0 + 416);
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v18 = *(*(v0 + 616) + 8);
  v18(*(v0 + 632), *(v0 + 608));

  if (v15)
  {
    goto LABEL_12;
  }

  v19 = *(v0 + 552);
  v14(*(v0 + 624), enum case for AccessPointUseCase.welcomeBannerAndAccessPoint(_:), *(v0 + 608));
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v0 + 624);
  v21 = *(v0 + 608);
  if (*(v0 + 424) != *(v0 + 440) || *(v0 + 432) != *(v0 + 448))
  {
    v22 = *(v0 + 432);
    v23 = *(v0 + 448);
    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v18(v20, v21);

    if (v24)
    {
      goto LABEL_12;
    }

    v5 = *(v0 + 784);
    v4 = sub_1000D3884;
    v6 = 0;

    return _swift_task_switch(v4, v5, v6);
  }

  v18(*(v0 + 624), *(v0 + 608));

LABEL_12:
  v25 = *(v0 + 720);
  v26 = *(v0 + 712);
  v27 = *(v0 + 560);
  swift_beginAccess();
  sub_1000D447C(0, v26, v25);
  swift_endAccess();
  v28 = *(v0 + 736);
  v29 = *(v0 + 688);
  v30 = *(v0 + 560);
  sub_1000C7CA0(*(v0 + 544), 0, 0, 0);

  v31 = *(v0 + 648);
  v32 = *(v0 + 640);
  v33 = *(v0 + 632);
  v34 = *(v0 + 624);
  v35 = *(v0 + 600);
  v36 = *(v0 + 592);
  v37 = *(v0 + 568);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1000D3884()
{
  v1 = *(*(v0 + 784) + 112);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 720);
    v3 = *(v0 + 712);
    v4 = *(*(v0 + 784) + 112);

    v5 = sub_1000C547C(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 720);
      v8 = *(*(v1 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v8 + 32, v0 + 136, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  v9 = *(v0 + 720);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 168) = 0;
LABEL_6:

  v10 = *(v0 + 560);

  return _swift_task_switch(sub_1000D3998, v10, 0);
}

uint64_t sub_1000D3998()
{
  if (!v0[20])
  {
    sub_100005688((v0 + 17), &unk_100131120, &unk_1000EAAF0);
    goto LABEL_12;
  }

  v1 = v0[85];
  v2 = v0[84];
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v20 = v0[92];
    v21 = v0[86];
    v22 = v0[70];
    sub_1000C7CA0(v0[68], 0, 0, 0);

LABEL_13:

    goto LABEL_14;
  }

  v3 = v0[59];
  if (*(v3 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_allowCoalescing) != 1)
  {

    goto LABEL_12;
  }

  if (qword_10012CC18 != -1)
  {
    v39 = v0[59];
    swift_once();
    v3 = v39;
  }

  v43 = v3;
  v4 = type metadata accessor for Logger();
  sub_100011F80(v4, qword_100135C88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Attempting coalescing incoming request with existing banner.", v7, 2u);
  }

  v41 = v0[85];
  v42 = v0[83];
  v8 = v0[82];
  v9 = v0[74];
  v10 = v0[73];
  v11 = v0[72];
  v12 = v0[71];
  v13 = v0[70];
  v14 = v0[68];

  UUID.init()();
  v40 = UUID.uuidString.getter();
  v16 = v15;
  (*(v10 + 8))(v9, v11);
  sub_10003F2F4(v14, v12);
  (*(*(v8 - 8) + 56))(v12, 0, 1, v8);
  swift_beginAccess();

  sub_1000D4574(v12, v40, v16);
  swift_endAccess();
  v0[10] = v41;
  v0[11] = &off_1001240E8;
  v0[7] = v43;
  swift_beginAccess();

  sub_10003EF48((v0 + 7), v42 + 104);
  swift_endAccess();
  v17 = sub_1000D0750(v14, 1, v40, v16);

  if (v17)
  {
    v18 = v0[92];
    v19 = v0[86];

    goto LABEL_14;
  }

  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v0[92];
  v36 = v0[86];
  if (v34)
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Failed coalescing incoming request with existing banner.", v37, 2u);

    goto LABEL_13;
  }

  v38 = v0[86];

LABEL_14:
  v23 = v0[81];
  v24 = v0[80];
  v25 = v0[79];
  v26 = v0[78];
  v27 = v0[75];
  v28 = v0[74];
  v29 = v0[71];

  v30 = v0[1];

  return v30();
}

uint64_t sub_1000D3DCC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_1000D3E14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1000D3E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_1000CA7A0(a1, v4, v5, v6);
}

id sub_1000D3F34(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = sub_1000C547C(0xD000000000000015, 0x80000001000E8640);
  if ((v6 & 1) == 0)
  {
    v4 = 0;
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v34 = *(*(a1 + 56) + 8 * v5);
  swift_unknownObjectRetain();
  v7 = swift_dynamicCast();
  v4 = v32;
  v8 = v33;
  if (!v7)
  {
    v4 = 0;
    v8 = 0;
  }

LABEL_7:
  v9 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_challengeDefinitionID];
  *v9 = v4;
  *(v9 + 1) = v8;
  v10 = *(a1 + 16);
  if (!v10)
  {
LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v11 = sub_1000C547C(0xD000000000000018, 0x80000001000E8660);
  if ((v12 & 1) == 0)
  {
    v10 = 0;
    goto LABEL_12;
  }

  v35 = *(*(a1 + 56) + 8 * v11);
  swift_unknownObjectRetain();
  v13 = swift_dynamicCast();
  v10 = v32;
  v14 = v33;
  if (!v13)
  {
    v10 = 0;
    v14 = 0;
  }

LABEL_13:
  v15 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_gameActivityDefinitionID];
  *v15 = v10;
  *(v15 + 1) = v14;
  if (!*(a1 + 16))
  {
    goto LABEL_17;
  }

  v16 = sub_1000C547C(0x47746E6572727563, 0xEB00000000656D61);
  if ((v17 & 1) == 0)
  {
    goto LABEL_17;
  }

  v18 = *(*(a1 + 56) + 8 * v16);
  swift_unknownObjectRetain();
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
LABEL_17:
    v19 = 0;
  }

  *&v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_currentGame] = v19;
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v20 = sub_1000C547C(0x616C506C61636F6CLL, 0xEB00000000726579);
  if ((v21 & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *(*(a1 + 56) + 8 * v20);
  swift_unknownObjectRetain();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
LABEL_22:
    v23 = 0;
  }

  *&v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_localPlayer] = v23;
  if (*(a1 + 16) && (v24 = sub_1000C547C(0xD000000000000010, 0x80000001000E86D0), (v25 & 1) != 0))
  {
    v26 = *(*(a1 + 56) + 8 * v24);
    swift_unknownObjectRetain();

    v27 = swift_dynamicCast();
    v28 = v32;
    v29 = v33;
    if (!v27)
    {
      v28 = 0;
      v29 = 0;
    }
  }

  else
  {

    v28 = 0;
    v29 = 0;
  }

  v30 = &v2[OBJC_IVAR____TtC13GameOverlayUI19PlayTogetherRequest_activityInstanceID];
  *v30 = v28;
  *(v30 + 1) = v29;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for PlayTogetherRequest();
  return objc_msgSendSuper2(&v36, "init");
}

id sub_1000D423C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayTogetherRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000D431C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000D4360(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000DF158(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000DF158(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1000D91F0(v3, v5, v2 != 0, a1);
  v13 = v12;
  sub_1000DF158(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_1000D447C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000CE660(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000C547C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1000CF074();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_10002C5A0(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1000D4574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100002B38(&qword_10012DC30, &qword_1000EEC90);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for RemoteAlertRequest();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_100005688(a1, &qword_10012DC30, &qword_1000EEC90);
    sub_1000E0F14(a2, a3, v10);

    return sub_100005688(v10, &qword_10012DC30, &qword_1000EEC90);
  }

  else
  {
    sub_1000DFE10(a1, v14, type metadata accessor for RemoteAlertRequest);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1000CE7DC(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1000D4748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1000CE940(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1000C547C(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1000CF584();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1000321E8(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1000D4840(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_1000D48B8(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132550, &qword_1000EC170);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_1000035B4(a1, &v6 - v4, &qword_100132550, &qword_1000EC170);
  return EnvironmentValues.horizontalSizeClass.setter();
}

uint64_t sub_1000D4960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v5 = type metadata accessor for AccessPointAnchoring();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1000D4A58(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AccessPointAnchoring();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return sub_1000BCC80(v8);
}

uint64_t sub_1000D4B74@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_1000D4C50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_1000D4CFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000D4DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 64);
  return swift_unknownObjectRetain();
}

uint64_t sub_1000D4E74(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000D4F40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_1000D4FE8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

void sub_1000D5268()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "viewDidLoad");
  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (!v2)
  {
    v3 = objc_opt_self();
    v4 = [v3 defaultCenter];
    [v4 addObserver:v0 selector:"controllerDidConnectOrDisconnect:" name:GCControllerDidConnectNotification object:0];

    v5 = [v3 defaultCenter];
    [v5 addObserver:v0 selector:"controllerDidConnectOrDisconnect:" name:GCControllerDidDisconnectNotification object:0];
  }
}

void sub_1000D5388(void *a1)
{
  v1 = a1;
  sub_1000D5268();
}

void sub_1000D53D0(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, "viewWillDisappear:", a1 & 1);
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (!v4)
  {
    v5 = objc_opt_self();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v1 name:GCControllerDidConnectNotification object:0];

    v7 = [v5 defaultCenter];
    [v7 removeObserver:v1 name:GCControllerDidDisconnectNotification object:0];
  }
}

void sub_1000D54E8(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1000D53D0(a3);
}

void sub_1000D553C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_1000D97BC();
}

uint64_t sub_1000D559C(void *a1)
{
  v1 = a1;
  v2 = sub_1000D55D0();

  return v2;
}

uint64_t sub_1000D55D0()
{
  if (*(v0 + *((swift_isaMask & *v0) + qword_100135CE0 + 16)))
  {
    return 30;
  }

  v1 = [objc_opt_self() currentDevice];
  v2 = [v1 userInterfaceIdiom];

  if (v2)
  {
    return 30;
  }

  v4 = [objc_opt_self() current];
  if (!v4)
  {
    return 30;
  }

  v5 = v4;
  v6 = [v4 isAttachedToDevice];

  if ((v6 & 1) == 0)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

uint64_t sub_1000D56C8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000D97CC(a1);
  (*(*(*(v2 + qword_100135CE0) - 8) + 8))(a1);
  return v5;
}

void *sub_1000D578C(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_100135CE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  *(v2 + *(v8 + 16)) = 1;
  (*(v5 + 16))(&v14 - v9, v7);
  v10 = UIHostingController.init(coder:rootView:)();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_1000D58D4(void *a1)
{
  ObjectType = swift_getObjectType();
  *(v1 + *((swift_isaMask & *v1) + qword_100135CE0 + 16)) = 1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

void sub_1000D59D4()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Registering press gesture for handling controller back button", v5, 2u);
  }

  v6 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"handleCancelGestureWithSender:"];
  sub_10003F788(0, &qword_100131140, NSNumber_ptr);
  v7 = v6;
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v7 setAllowedTouchTypes:isa];

  sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1000EE0F0;
  *(v9 + 32) = [objc_allocWithZone(NSNumber) initWithInteger:5];
  *(v9 + 40) = [objc_allocWithZone(NSNumber) initWithInteger:7];
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v7 setAllowedPressTypes:v10];

  [v1 addGestureRecognizer:v7];
  v11 = *&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer];
  *&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer] = v7;
}

id sub_1000D5C04()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100011F80(v3, qword_100135C88);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing press gesture", v6, 2u);
  }

  v7 = OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer;
  if (*&v1[OBJC_IVAR____TtC13GameOverlayUI17GameOverlayWindow_pressGestureRecognizer])
  {
    [v1 removeGestureRecognizer:?];
    v8 = *&v1[v7];
    *&v1[v7] = 0;
  }

  v10.receiver = v1;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, "dealloc");
}

id sub_1000D5FB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GamepadGestureRecognizerDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1000D6064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v137 = a5;
  v12 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v135 = *(v12 - 8);
  v136 = v12;
  v13 = *(v135 + 64);
  __chkstk_darwin(v12);
  v133 = &v108 - v14;
  v124 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v122 = *(v124 - 8);
  v15 = *(v122 + 64);
  __chkstk_darwin(v124);
  v120 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100002B38(&unk_1001324E0, &unk_1000EAAE0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v118 = &v108 - v19;
  v20 = type metadata accessor for StoreTab.Identifier();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v117 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v26 = &v108 - v25;
  v27 = sub_100002B38(&qword_10012E4B0, qword_1000EA960);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v108 - v29;
  v31 = type metadata accessor for DashboardOverlayView(0);
  v32 = *(*(v31 - 1) + 64);
  __chkstk_darwin(v31);
  v138 = (&v108 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v34);
  v123 = &v108 - v35;
  v128 = sub_100002B38(&qword_1001324F0, &qword_1000EF108);
  v126 = *(v128 - 8);
  v36 = *(v126 + 64);
  __chkstk_darwin(v128);
  v125 = &v108 - v37;
  v134 = sub_100002B38(&qword_1001324F8, &qword_1000EF110);
  v132 = *(v134 - 8);
  v38 = *(v132 + 64);
  __chkstk_darwin(v134);
  v129 = &v108 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v130 = &v108 - v41;
  v43 = __chkstk_darwin(v42);
  v131 = &v108 - v44;
  [a1 setDisablesControlCenter:{1, v43}];
  if (a2)
  {
    v45 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID + 8);
    if (v45)
    {
      v109 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_gameBundleID);
      v110 = v45;
    }

    else
    {
      v47 = *(a2 + OBJC_IVAR____TtC13GameOverlayUI16DashboardRequest_currentGame);
      if (v47)
      {
        v48 = [v47 bundleIdentifier];
        v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v110 = v49;
      }

      else
      {
        v109 = 0;
        v110 = 0;
      }
    }

    sub_1000035B4(a6, &v139, &unk_100131120, &unk_1000EAAF0);
    DashboardRequest.destination.getter(v30);
    v46 = 0;
  }

  else
  {
    sub_1000035B4(a6, &v139, &unk_100131120, &unk_1000EAAF0);
    v110 = 0;
    v109 = 0;
    v46 = 1;
  }

  v50 = type metadata accessor for GameDashboardDestination();
  v51 = *(*(v50 - 8) + 56);
  v119 = v30;
  v51(v30, v46, 1, v50);
  v52 = *&v7[OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window];
  v53 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1000035B4(a6, v148, &unk_100131120, &unk_1000EAAF0);
  v54 = swift_allocObject();
  *(v54 + 16) = v53;
  *(v54 + 24) = v7;
  v55 = v148[1];
  *(v54 + 32) = v148[0];
  *(v54 + 48) = v55;
  *(v54 + 64) = v149;
  *(v54 + 72) = a3;
  v115 = v54;
  v56 = v138;
  v113 = v138 + v31[8];
  swift_unknownObjectWeakInit();
  v57 = v56 + v31[9];
  *(v57 + 32) = 0;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  v112 = v57;
  v114 = v56 + v31[10];
  swift_unknownObjectWeakInit();
  v58 = (v56 + v31[11]);
  *v58 = 0x6C7070612E6D6F63;
  v58[1] = 0xEF73656D61672E65;
  v59 = (v56 + v31[12]);
  v60 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v60 - 8) + 56))(v26, 1, 1, v60);
  v61 = type metadata accessor for ImpedimentFlowDestinationStates();
  v62 = *(v61 + 48);
  v63 = *(v61 + 52);
  swift_allocObject();
  swift_unknownObjectRetain();
  v111 = v52;
  v116 = v53;

  v64 = v7;
  v145 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v65 = v147;
  *v59 = v146;
  v59[1] = v65;
  v66 = (v56 + v31[13]);
  v145 = 0;
  State.init(wrappedValue:)();
  v67 = v147;
  *v66 = v146;
  v66[1] = v67;
  v68 = v31[14];
  *(v56 + v68) = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v121 = a3;
  v127 = v31;
  v69 = type metadata accessor for Logger();
  sub_100011F80(v69, qword_100135C88);
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v70, v71, "DashboardOverlayView: Initialized.", v72, 2u);
  }

  v108 = type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  dispatch thunk of ZoomCoordinator.reset()();

  v73 = v138;
  v74 = v110;
  *v138 = v109;
  v73[1] = v74;
  sub_100002B38(&qword_10012E480, &qword_1000EA8F0);
  v75 = *(type metadata accessor for StoreTab() - 8);
  v76 = *(v75 + 72);
  v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_1000EEDF0;
  static StoreTab.Identifier.overlayActiveCallPage.getter();
  v79 = type metadata accessor for URL();
  v80 = *(*(v79 - 8) + 56);
  v81 = v118;
  v80(v118, 1, 1, v79);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlayNowPlayingPage.getter();
  v80(v81, 1, 1, v79);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlaySocialPage.getter();
  v80(v81, 1, 1, v79);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  static StoreTab.Identifier.overlaySystemSettingsPage.getter();
  v80(v81, 1, 1, v79);
  sub_1000D9414(_swiftEmptyArrayStorage);
  StoreTab.init(identifier:url:title:imageIdentifier:pageContext:editorialPageUrls:)();
  v82 = v127;
  v83 = v138;
  *(v138 + v127[7]) = v78;
  swift_unknownObjectWeakAssign();
  sub_10004D924(&v139, v112);
  v84 = (v83 + v82[6]);
  v85 = v115;
  *v84 = sub_1000DF998;
  v84[1] = v85;
  v86 = v119;
  sub_1000035B4(v119, v83 + v82[5], &qword_10012E4B0, qword_1000EA960);
  v87 = v111;
  swift_unknownObjectWeakAssign();
  static ZoomCoordinator.shared.getter();
  (*(v122 + 104))(v120, enum case for ZoomCoordinator.DashboardVisibilityState.open(_:), v124);
  dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();

  sub_100005688(v86, &qword_10012E4B0, qword_1000EA960);
  sub_100005688(&v139, &unk_100131120, &unk_1000EAAF0);
  v88 = v123;
  sub_1000DFE10(v83, v123, type metadata accessor for DashboardOverlayView);

  Solarium.init()();
  v89 = v133;
  static ViewInputPredicate.! prefix(_:)();
  v90 = sub_100002B38(&qword_100132510, &qword_1000EF148);
  v91 = sub_1000DF30C(&qword_100132518, type metadata accessor for DashboardOverlayView);
  v139 = &type metadata for Solarium;
  v140 = &protocol witness table for Solarium;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = sub_1000DF9D0();
  v93 = v125;
  v94 = v136;
  View.staticIf<A, B>(_:then:)();
  (*(v135 + 8))(v89, v94);
  sub_1000DFD48(v88, type metadata accessor for DashboardOverlayView);
  v139 = v82;
  v140 = v94;
  v141 = v90;
  v142 = v91;
  v143 = OpaqueTypeConformance2;
  v144 = v107;
  swift_getOpaqueTypeConformance2();
  v95 = v131;
  v96 = v128;
  View.statusBar(hidden:)();
  (*(v126 + 8))(v93, v96);
  v97 = v132;
  v98 = *(v132 + 16);
  v99 = v130;
  v100 = v134;
  v98(v130, v95, v134);
  v101 = objc_allocWithZone(sub_100002B38(&qword_100132528, &qword_1000EF150));
  v101[*((swift_isaMask & *v101) + qword_100135CE0 + 16)] = 1;
  v98(v129, v99, v100);
  v102 = UIHostingController.init(rootView:)();
  v103 = *(v97 + 8);
  v103(v99, v100);
  *(v102 + *((swift_isaMask & *v102) + qword_100135CE0 + 16)) = v137 != 0;
  result = [v102 view];
  if (result)
  {
    v105 = result;
    v106 = [objc_opt_self() clearColor];
    [v105 setBackgroundColor:v106];

    v103(v95, v100);
    return v102;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000D7048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  type metadata accessor for MainActor();
  v8[19] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[20] = v10;
  v8[21] = v9;

  return _swift_task_switch(sub_1000D70E8, v10, v9);
}

uint64_t sub_1000D70E8()
{
  v1 = v0[15];
  if (!v1)
  {
    goto LABEL_12;
  }

  v2 = v0[14];
  v3 = v0[15];

  v10._countAndFlagsBits = v2;
  v10._object = v1;
  v4 = sub_1000C19BC(v10);
  if (v4 > 4)
  {
    if (v4 > 8)
    {
      goto LABEL_12;
    }
  }

  else if (v4 == 2)
  {

LABEL_9:
    if (qword_10012CC20 != -1)
    {
      swift_once();
    }

    v6 = qword_100135CA0;
    v0[22] = qword_100135CA0;
    v7 = sub_1000D7324;
    goto LABEL_15;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v6 = qword_100135CA0;
  v0[24] = qword_100135CA0;
  v7 = sub_1000D7738;
LABEL_15:

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1000D7324()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);

    v5 = sub_1000C547C(v4, v3);
    if (v6)
    {
      v7 = *(*(v2 + 56) + 8 * v5);

      swift_beginAccess();
      sub_1000035B4(v7 + 32, v0 + 16, &unk_100131120, &unk_1000EAAF0);

      goto LABEL_6;
    }
  }

  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
LABEL_6:
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);

  return _swift_task_switch(sub_1000D7430, v8, v9);
}

uint64_t sub_1000D7430()
{
  if (v0[5])
  {
    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
    type metadata accessor for RemoteAlertDashboardContext(0);
    if (swift_dynamicCast())
    {
      v1 = v0[13];
      v0[23] = v1;
      swift_getKeyPath();
      v0[2] = v1;
      sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong didDismissDashboard];
        swift_unknownObjectRelease();
      }

      v3 = v0[22];
      v4 = sub_1000D75D8;
      goto LABEL_10;
    }
  }

  else
  {
    sub_100005688((v0 + 2), &unk_100131120, &unk_1000EAAF0);
  }

  if (qword_10012CC20 != -1)
  {
    swift_once();
  }

  v3 = qword_100135CA0;
  v0[24] = qword_100135CA0;
  v4 = sub_1000D7738;
LABEL_10:

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1000D75D8()
{
  v1 = v0[22];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100093AC4(v4, v3, 0);
  swift_beginAccess();

  v5 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1000CE940(v2, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v10;
  swift_endAccess();
  v7 = v0[20];
  v8 = v0[21];

  return _swift_task_switch(sub_1000D76D0, v7, v8);
}

uint64_t sub_1000D76D0()
{
  v1 = v0[23];

  v2 = v0[19];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1000D7738()
{
  v1 = v0[24];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  sub_100093AC4(v4, v3, 0);
  swift_beginAccess();

  v5 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1000CE940(v2, v4, v3, isUniquelyReferenced_nonNull_native);

  *(v1 + 112) = v10;
  swift_endAccess();
  v7 = v0[20];
  v8 = v0[21];

  return _swift_task_switch(sub_1000D7830, v7, v8);
}

uint64_t sub_1000D7830()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1000D7920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  v20 = sub_1000DFED0;
  v21 = v11;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000D431C;
  v19 = &unk_100124488;
  v12 = _Block_copy(&v16);
  v13 = a1;

  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v20 = sub_1000DF668;
  v21 = v14;
  v16 = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000D4840;
  v19 = &unk_1001244D8;
  v15 = _Block_copy(&v16);
  swift_unknownObjectRetain();

  [v10 animateWithDuration:v12 animations:v15 completion:0.3];
  _Block_release(v15);
  _Block_release(v12);
}

void sub_1000D7AE4(uint64_t a1, void *a2)
{
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v24 - v5;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100011F80(v7, qword_100135C88);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Notifying gamed player onboarding finished.", v10, 2u);
  }

  if (a2)
  {
    [a2 didFinishOnboardingWithError:0];
  }

  v11 = [objc_opt_self() proxyForLocalPlayer];
  v12 = [v11 accountServicePrivate];

  v13 = String._bridgeToObjectiveC()();
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  [v12 notifyClient:v13 playerAuthenticatedFromClient:v15];
  swift_unknownObjectRelease();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    [Strong invalidate];
  }

  if (a2)
  {
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v19 = static MainActor.shared.getter();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = &protocol witness table for MainActor;
    v20[4] = a2;
    sub_100014BBC(0, 0, v6, &unk_1000EF020, v20);
  }

  else
  {
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Client does not appear to adopt the client side authentication protocol", v23, 2u);
    }
  }
}

uint64_t sub_1000D7E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D7EF4, v6, v5);
}

uint64_t sub_1000D7EF4()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 didFinishOnboardingWithError:0];
  v3 = v0[1];

  return v3();
}

void sub_1000D7F68()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_1000D7FE8(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_1000D80D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v13 = (a6 + *(sub_100002B38(a2, a3) + 36));
  v14 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v15 = enum case for ColorScheme.dark(_:);
  v16 = type metadata accessor for ColorScheme();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  *v13 = KeyPath;
  v17 = sub_100002B38(a4, a5);
  v18 = *(*(v17 - 8) + 16);

  return v18(a6, a1, v17);
}

void sub_1000D81F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011F80(v8, qword_100135C88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "DashboardOverlayView dismissAction called", v11, 2u);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    [Strong setDisablesControlCenter:0];
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v27 = sub_1000DFA8C;
  v28 = v15;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D431C;
  v26 = &unk_100124578;
  v16 = _Block_copy(&aBlock);
  v17 = a2;

  sub_1000035B4(a3, v21, &unk_100131120, &unk_1000EAAF0);
  v18 = swift_allocObject();
  v19 = v21[1];
  *(v18 + 24) = v21[0];
  *(v18 + 16) = a1;
  *(v18 + 40) = v19;
  *(v18 + 56) = v22;
  *(v18 + 64) = a4;
  v27 = sub_1000DFAE4;
  v28 = v18;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_1000D4840;
  v26 = &unk_1001245C8;
  v20 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();

  [v14 animateWithDuration:v16 animations:v20 completion:0.3];
  _Block_release(v20);
  _Block_release(v16);
}

void sub_1000D84C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v26 - v8;
  v10 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong invalidate];
  }

  sub_1000035B4(a3, v26, &unk_100131120, &unk_1000EAAF0);
  v17 = v27;
  if (v27)
  {
    v18 = v28;
    sub_10002D754(v26, v27);
    (*(v18 + 16))(v17, v18);
    sub_10002E6CC(v26);
  }

  else
  {
    sub_100005688(v26, &unk_100131120, &unk_1000EAAF0);
  }

  type metadata accessor for GameOverlayDashboardVisibilityNotifier();
  (*(v11 + 104))(v14, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v10);
  static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

  (*(v11 + 8))(v14, v10);
  if (a4)
  {
    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    type metadata accessor for MainActor();
    swift_unknownObjectRetain();
    v20 = static MainActor.shared.getter();
    v21 = swift_allocObject();
    v21[2] = v20;
    v21[3] = &protocol witness table for MainActor;
    v21[4] = a4;
    sub_100014BBC(0, 0, v9, &unk_1000EF178, v21);
  }

  else
  {
    if (qword_10012CC18 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100011F80(v22, qword_100135C88);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Client does not appear to adopt the client side dashboard protocol", v25, 2u);
    }
  }
}

uint64_t sub_1000D885C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for MainActor();
  *(v4 + 24) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000D88F4, v6, v5);
}

uint64_t sub_1000D88F4()
{
  v2 = v0[2];
  v1 = v0[3];

  [v2 didDismissDashboard];
  v3 = v0[1];

  return v3();
}

void sub_1000D898C(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v13 = sub_1000DFED0;
  v14 = v5;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000D431C;
  v12 = &unk_100124668;
  v6 = _Block_copy(&v9);
  v7 = a1;

  v13 = sub_1000DFC54;
  v14 = a2;
  v9 = _NSConcreteStackBlock;
  v10 = 1107296256;
  v11 = sub_1000D4840;
  v12 = &unk_100124690;
  v8 = _Block_copy(&v9);

  [v4 animateWithDuration:v6 animations:v8 completion:0.3];
  _Block_release(v8);
  _Block_release(v6);
}

void sub_1000D8B10()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong invalidate];
  }
}

uint64_t sub_1000D8B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = (a5 + *(sub_100002B38(a2, a3) + 36));
  v12 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v13 = enum case for ColorScheme.dark(_:);
  v14 = type metadata accessor for ColorScheme();
  (*(*(v14 - 8) + 104))(v11 + v12, v13, v14);
  *v11 = KeyPath;
  return sub_1000DFDA8(a1, a5, a4);
}

unint64_t sub_1000D8F30()
{
  result = qword_1001323F8;
  if (!qword_1001323F8)
  {
    sub_10003F788(255, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001323F8);
  }

  return result;
}

unint64_t sub_1000D8F98(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for EditorialPageKey();
  sub_1000DF30C(&qword_100132540, &type metadata accessor for EditorialPageKey);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_1000D9030(a1, v5);
}

unint64_t sub_1000D9030(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for EditorialPageKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1000DF30C(&qword_100132548, &type metadata accessor for EditorialPageKey);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1000D91F0(unint64_t a1, int a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_10003F788(0, &qword_1001323F0, SBUIRemoteAlertButtonAction_ptr);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v14;
    v7 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = static NSObject.== infix(_:_:)();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

unint64_t sub_1000D9414(uint64_t a1)
{
  v2 = sub_100002B38(&qword_100132530, &qword_1000EF158);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002B38(&qword_100132538, &unk_1000EF160);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000035B4(v10, v6, &qword_100132530, &qword_1000EF158);
      result = sub_1000D8F98(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EditorialPageKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for URL();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_1000D9634(void *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = [v3 role];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    v11 = sub_1000BA5C8(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Scene willConnectTo session: %s", v5, 0xCu);
    sub_10002E6CC(v6);
  }
}

uint64_t sub_1000D97CC(uint64_t a1)
{
  v2 = *(*(*((swift_isaMask & *v1) + qword_100135CE0) - 8) + 64);
  v3 = __chkstk_darwin(a1);
  *(v1 + *(v5 + 16)) = 1;
  (*(v6 + 16))(&v8 - v4, v3);
  return UIHostingController.init(rootView:)();
}

uint64_t sub_1000D98C4()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100011F80(v5, qword_100135C88);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Handling press gesture for menu/back button", v8, 2u);
  }

  type metadata accessor for ZoomCoordinator();
  static ZoomCoordinator.shared.getter();
  UUID.init()();
  UUID.uuidString.getter();
  (*(v1 + 8))(v4, v0);
  dispatch thunk of ZoomCoordinator.navigationCancelCommandNotificationId.setter();
}

id sub_1000D9A7C()
{
  static HorizontalAlignment.center.getter();
  sub_10000548C();

  v0 = Text.init<A>(_:)();
  v2 = v1;
  v4 = v3;
  v5 = objc_allocWithZone(sub_100002B38(&unk_1001325A0, &unk_1000EF210));
  v6 = v4 & 1;
  *(v5 + *((swift_isaMask & *v5) + qword_100135CE0 + 16)) = 1;

  sub_1000054F0(v0, v2, v4 & 1);
  v7 = UIHostingController.init(rootView:)();
  result = [v7 view];
  if (result)
  {
    v9 = result;
    v10 = [objc_opt_self() clearColor];
    [v9 setBackgroundColor:v10];
    sub_1000054E0(v0, v2, v6);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000D9C24()
{
  v0 = type metadata accessor for ActivitySharingRepromptOverlayView();
  v1 = *(v0 - 8);
  v2 = v1[8];
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v18 - v6;
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  ActivitySharingRepromptOverlayView.init(recipientName:dismissAction:)();
  v11 = v1[2];
  v11(v7, v10, v0);
  v12 = objc_allocWithZone(sub_100002B38(&qword_100132498, &qword_1000EF028));
  *(v12 + *((swift_isaMask & *v12) + qword_100135CE0 + 16)) = 1;
  v11(v4, v7, v0);
  v13 = UIHostingController.init(rootView:)();
  v14 = v1[1];
  v14(v7, v0);
  result = [v13 view];
  if (result)
  {
    v16 = result;
    v17 = [objc_opt_self() clearColor];
    [v16 setBackgroundColor:v17];

    v14(v10, v0);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1000D9EC0(int *a1, uint64_t a2, void *a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v144 = a8;
  v147 = a7;
  v142 = a6;
  v126 = a5;
  v141 = a4;
  v124 = a3;
  v137 = a2;
  v9 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v149 = *(v9 - 8);
  v150 = v9;
  v10 = *(v149 + 64);
  __chkstk_darwin(v9);
  v148 = &v118 - v11;
  v12 = type metadata accessor for AccessPointUseCase();
  v152 = *(v12 - 8);
  v13 = *(v152 + 64);
  __chkstk_darwin(v12);
  v134 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessPointAnchoring();
  v151 = *(v15 - 8);
  v16 = *(v151 + 64);
  __chkstk_darwin(v15);
  v131 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v121 = &v118 - v20;
  v21 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v123 = &v118 - v23;
  v24 = sub_100002B38(&unk_1001324A0, &unk_1000EF030);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v122 = &v118 - v26;
  v27 = sub_100002B38(&qword_10012E0C8, &qword_1000EA438);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v118 - v29;
  v31 = type metadata accessor for AccessPointView();
  v32 = *(*(v31 - 1) + 64);
  __chkstk_darwin(v31);
  v34 = (&v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v133 = &v118 - v36;
  v138 = sub_100002B38(&qword_1001324B0, &qword_1000EF040);
  v136 = *(v138 - 8);
  v37 = *(v136 + 64);
  __chkstk_darwin(v138);
  v135 = &v118 - v38;
  v39 = sub_100002B38(&qword_1001324B8, &qword_1000EF048);
  v145 = *(v39 - 8);
  v146 = v39;
  v40 = *(v145 + 64);
  __chkstk_darwin(v39);
  v139 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v140 = &v118 - v43;
  __chkstk_darwin(v44);
  v143 = &v118 - v45;
  swift_getKeyPath();
  v155 = a1;
  v46 = sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v128 = *(a1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__didReturnToForeground);
  swift_getKeyPath();
  v155 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v47 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__anchoring;
  swift_beginAccess();
  v48 = v151;
  (*(v151 + 16))(v30, a1 + v47, v15);
  v49 = *(v48 + 56);
  v129 = v30;
  v132 = v15;
  v50 = v15;
  v51 = v122;
  v49(v30, 0, 1, v50);
  v52 = v152;
  (*(v152 + 16))(v51, v137, v12);
  v53 = *(v52 + 56);
  v137 = v12;
  v53(v51, 0, 1, v12);
  swift_getKeyPath();
  v155 = a1;
  v130 = v46;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v127 = *(a1 + OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext__newToGameCenter);
  sub_1000035B4(v126, &v155, &unk_100131120, &unk_1000EAAF0);
  v54 = v31[5];
  v55 = type metadata accessor for Game();
  v56 = *(*(v55 - 8) + 56);
  v120 = v54;
  v119 = v56;
  v56(v34 + v54, 1, 1, v55);
  v57 = v34 + v31[11];
  *(v57 + 32) = 0;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  v125 = v57;
  v126 = v31[13];
  swift_unknownObjectWeakInit();
  v58 = v34 + v31[14];
  v59 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
  (*(*(v59 - 8) + 56))(v123, 1, 1, v59);
  v60 = type metadata accessor for ImpedimentFlowDestinationStates();
  v61 = *(v60 + 48);
  v62 = *(v60 + 52);
  swift_allocObject();
  v153 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
  State.init(wrappedValue:)();
  v63 = v154[1];
  *v58 = v154[0];
  *(v58 + 1) = v63;
  v64 = type metadata accessor for GameDashboardLaunchContext();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = GameDashboardLaunchContext.init()();
  v68 = v124;
  *v34 = v67;
  v34[1] = 0;
  if (v68)
  {
    v69 = objc_opt_self();
    v124 = v68;
    v70 = [v124 internal];
    v154[0] = 0;
    v71 = [v69 archivedDataWithRootObject:v70 requiringSecureCoding:1 error:v154];

    v72 = v154[0];
    if (v71)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      v73 = v121;
      Game.init(with:)();

      v119(v73, 0, 1, v55);
      sub_1000DF4FC(v73, v34 + v120, &qword_100132410, &unk_1000E9F30);
    }

    else
    {
      v74 = v72;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v75 = type metadata accessor for Logger();
      sub_100011F80(v75, qword_100135C88);
      swift_errorRetain();
      v76 = Logger.logObject.getter();
      v77 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *v78 = 138412290;
        swift_errorRetain();
        v80 = _swift_stdlib_bridgeErrorToNSError();
        *(v78 + 4) = v80;
        *v79 = v80;
        _os_log_impl(&_mh_execute_header, v76, v77, "Game could not be serialized: %@", v78, 0xCu);
        sub_100005688(v79, &qword_100131110, &unk_1000EC870);
      }

      else
      {
      }
    }
  }

  v81 = v51;
  v82 = v151;
  v83 = *(v151 + 48);
  v84 = v129;
  v85 = v132;
  if (v83(v129, 1, v132) == 1)
  {
    v86 = v131;
    (*(v82 + 104))(v131, enum case for AccessPointAnchoring.topLeading(_:), v85);
    v87 = v83(v84, 1, v85);
    v88 = v86;
    v89 = v87 == 1;
    v90 = v137;
    v91 = v84;
    v92 = v134;
    if (!v89)
    {
      sub_100005688(v91, &qword_10012E0C8, &qword_1000EA438);
    }
  }

  else
  {
    v88 = v131;
    (*(v82 + 32))(v131, v84, v85);
    v90 = v137;
    v92 = v134;
  }

  v93 = v128 ^ 1;
  (*(v82 + 32))(v34 + v31[6], v88, v85);
  v94 = v152;
  v95 = *(v152 + 48);
  if (v95(v81, 1, v90) == 1)
  {
    (*(v94 + 104))(v92, enum case for AccessPointUseCase.accessPointOnly(_:), v90);
    if (v95(v81, 1, v90) != 1)
    {
      sub_100005688(v81, &unk_1001324A0, &unk_1000EF030);
    }
  }

  else
  {
    (*(v94 + 32))(v92, v81, v90);
  }

  v96 = (v34 + v31[12]);
  (*(v94 + 32))(v34 + v31[7], v92, v90);
  *(v34 + v31[8]) = v93 & 1;
  *(v34 + v31[9]) = v127;
  *(v34 + v31[10]) = v141 & 1;
  sub_1000DF4FC(&v155, v125, &unk_100131120, &unk_1000EAAF0);
  v97 = v147;
  *v96 = v142;
  v96[1] = v97;
  swift_unknownObjectWeakAssign();
  v98 = v133;
  sub_1000DFE10(v34, v133, type metadata accessor for AccessPointView);
  v99 = type metadata accessor for RemoteAlertAccessPointContext(0);
  v100 = sub_1000DF30C(&qword_1001324C0, type metadata accessor for AccessPointView);

  v101 = v135;
  v102 = v130;
  View.environment<A>(_:)();
  sub_1000DFD48(v98, type metadata accessor for AccessPointView);
  Solarium.init()();
  v103 = v148;
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_1001324C8, &qword_1000EF0C8);
  v155 = v31;
  v156 = v99;
  v157 = v100;
  v158 = v102;
  swift_getOpaqueTypeConformance2();
  v155 = &type metadata for Solarium;
  v156 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1000DF7DC();
  v104 = v143;
  v105 = v138;
  v106 = v150;
  View.staticIf<A, B>(_:then:)();
  (*(v149 + 8))(v103, v106);
  (*(v136 + 8))(v101, v105);
  v108 = v145;
  v107 = v146;
  v109 = *(v145 + 16);
  v110 = v140;
  v109(v140, v104, v146);
  v111 = objc_allocWithZone(sub_100002B38(&qword_1001324D8, &qword_1000EF0D0));
  v111[*((swift_isaMask & *v111) + qword_100135CE0 + 16)] = 1;
  v109(v139, v110, v107);
  v112 = UIHostingController.init(rootView:)();
  v113 = *(v108 + 8);
  v113(v110, v107);
  v114 = [v112 view];
  if (!v114)
  {
    __break(1u);
  }

  v115 = v114;
  v116 = [objc_opt_self() clearColor];
  [v115 setBackgroundColor:v116];

  v113(v104, v107);
  return v112;
}

id sub_1000DAF78()
{
  v1 = sub_100002B38(&qword_100132558, &qword_1000EF180);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  __chkstk_darwin(v9);
  v11 = (&v25 - v10);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v0;
  *(v13 + 24) = v12;
  KeyPath = swift_getKeyPath();
  v15 = (v11 + *(v2 + 44));
  v16 = *(sub_100002B38(&qword_100132478, &qword_1000EEFC0) + 28);
  v17 = enum case for ColorScheme.dark(_:);
  v18 = type metadata accessor for ColorScheme();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  *v11 = 0x4030000000000000;
  v11[1] = sub_1000DFC28;
  v11[2] = v13;
  sub_1000035B4(v11, v8, &qword_100132558, &qword_1000EF180);
  v19 = objc_allocWithZone(sub_100002B38(&qword_100132560, &qword_1000EF188));
  *(v19 + *((swift_isaMask & *v19) + qword_100135CE0 + 16)) = 1;
  sub_1000035B4(v8, v5, &qword_100132558, &qword_1000EF180);
  v20 = v0;
  v21 = UIHostingController.init(rootView:)();
  sub_100005688(v8, &qword_100132558, &qword_1000EF180);
  result = [v21 view];
  if (result)
  {
    v23 = result;
    v24 = [objc_opt_self() clearColor];
    [v23 setBackgroundColor:v24];

    sub_100005688(v11, &qword_100132558, &qword_1000EF180);
    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1000DB268(uint64_t a1, void *a2)
{
  v4 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v37 - v7;
  v9 = type metadata accessor for GameModeBannerView();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_100002B38(&qword_100132568, &qword_1000EF190);
  v13 = *(v38 - 8);
  v14 = v13[8];
  __chkstk_darwin(v38);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v37 - v17;
  __chkstk_darwin(v19);
  v21 = &v37 - v20;
  LOBYTE(v42) = 0;
  State.init(wrappedValue:)();
  v22 = v44;
  v12[16] = v43;
  *(v12 + 3) = v22;
  v42 = 0x3FE8000000000000;
  State.init(wrappedValue:)();
  v23 = v44;
  *(v12 + 4) = v43;
  *(v12 + 5) = v23;
  v24 = *(v9 + 32);
  *&v12[v24] = swift_getKeyPath();
  sub_100002B38(&unk_100132500, &unk_1000EA640);
  swift_storeEnumTagMultiPayload();
  v25 = *(v9 + 36);
  *&v12[v25] = swift_getKeyPath();
  sub_100002B38(&qword_100132570, &unk_1000E9C70);
  swift_storeEnumTagMultiPayload();
  *v12 = a1;
  *(v12 + 1) = a2;

  v26 = a2;
  Solarium.init()();
  static ViewInputPredicate.! prefix(_:)();
  sub_100002B38(&qword_100132578, &qword_1000EF200);
  sub_1000DF30C(&qword_100132580, type metadata accessor for GameModeBannerView);
  v43 = &type metadata for Solarium;
  v44 = &protocol witness table for Solarium;
  swift_getOpaqueTypeConformance2();
  sub_1000DFC8C();
  v27 = v40;
  View.staticIf<A, B>(_:then:)();
  v28 = v8;
  v29 = v38;
  (*(v41 + 8))(v28, v27);
  sub_1000DFD48(v12, type metadata accessor for GameModeBannerView);
  v30 = v13[2];
  v30(v18, v21, v29);
  v31 = objc_allocWithZone(sub_100002B38(&unk_100132590, &qword_1000EF208));
  v31[*((swift_isaMask & *v31) + qword_100135CE0 + 16)] = 1;
  v30(v39, v18, v29);
  v32 = UIHostingController.init(rootView:)();
  v33 = v13[1];
  v33(v18, v29);
  result = [v32 view];
  if (result)
  {
    v35 = result;
    v36 = [objc_opt_self() clearColor];
    [v35 setBackgroundColor:v36];

    v33(v21, v29);
    return v32;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000DB780(void *a1)
{
  v3 = sub_100002B38(&unk_100130F10, &qword_1000EA660);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v309 - v5;
  v7 = sub_100002B38(&qword_100132408, &unk_1000EEF10);
  v345 = *(v7 - 8);
  v8 = *(v345 + 64);
  __chkstk_darwin(v7);
  v344 = &v309 - v9;
  v10 = sub_100002B38(&qword_100132410, &unk_1000E9F30);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v337 = &v309 - v12;
  v348 = type metadata accessor for InGameBannerView();
  v13 = *(*(v348 - 8) + 64);
  __chkstk_darwin(v348);
  v349 = (&v309 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v338 = &v309 - v16;
  v17 = sub_100002B38(&qword_100132418, &qword_1000EEF20);
  v340 = *(v17 - 8);
  v341 = v17;
  v18 = *(v340 + 64);
  __chkstk_darwin(v17);
  v339 = &v309 - v19;
  v20 = sub_100002B38(&unk_100132420, &unk_1000EEF28);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v342 = &v309 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v343 = &v309 - v25;
  __chkstk_darwin(v26);
  v28 = &v309 - v27;
  v29 = type metadata accessor for GameOverlayDashboardVisibilityNotifier.Scene();
  v354 = *(v29 - 8);
  v355 = v29;
  v30 = v354[8];
  __chkstk_darwin(v29);
  v353 = &v309 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AccessPointUseCase();
  v350 = *(v32 - 8);
  v351 = v32;
  v33 = *(v350 + 64);
  __chkstk_darwin(v32);
  v347 = &v309 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v346 = &v309 - v36;
  v37 = sub_100002B38(&qword_10012E668, &qword_1000EAB40);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v352 = &v309 - v39;
  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  v41 = qword_10012CC18;
  if (v40)
  {
    v42 = v40;
    v363 = v1;
    v335 = v6;
    v43 = a1;
    if (v41 != -1)
    {
      swift_once();
    }

    v330 = v7;
    v331 = v28;
    v332 = v21;
    v44 = type metadata accessor for Logger();
    v362 = sub_100011F80(v44, qword_100135C88);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Remote Alert scene will connect", v47, 2u);
    }

    v333 = type metadata accessor for GameOverlayWindow();
    v48 = objc_allocWithZone(v333);
    v49 = v43;
    v50 = [v48 initWithWindowScene:v42];
    v51 = OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window;
    v52 = v363;
    v53 = *(&v363->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
    *(&v363->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = v50;

    v54 = [objc_allocWithZone(UITapGestureRecognizer) init];
    sub_100002B38(&qword_1001317E8, &qword_1000EE1C0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1000EE0F0;
    v56 = v54;
    *(v55 + 32) = Int._bridgeToObjectiveC()();
    *(v55 + 40) = Int._bridgeToObjectiveC()();
    sub_10003F788(0, &qword_100131140, NSNumber_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v56 setAllowedPressTypes:isa];

    [v56 setDelegate:*(&v52->isa + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_gamepadGestureDelegate)];
    v359 = v51;
    v58 = *(&v52->isa + v51);
    if (v58)
    {
      [v58 addGestureRecognizer:v56];
    }

    v357 = v56;
    v59 = [v42 configurationIdentifier];
    v358 = v49;
    if (v59)
    {
      v60 = v59;
      v356 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v356 = 0;
      v62 = 0;
    }

    v70 = [v42 activationContext];
    if (v70 && (v71 = v70, v72 = [v70 userInfo], v71, v72))
    {
      v73 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v380 = 0;
      v74 = 0uLL;
      v378 = 0u;
      v379 = 0u;
      if (v73)
      {
        v365 = 0xD000000000000011;
        v366 = 0x80000001000E8560;

        AnyHashable.init<A>(_:)();
        sub_1000C1CA8(&v369, v73, &v367);

        sub_1000708BC(&v369);
        if (*(&v368 + 1))
        {
          if (swift_dynamicCast())
          {
            v75 = v369;
            v76 = v370;
            if (qword_10012CC40 != -1)
            {
              v308 = v369;
              swift_once();
              v75 = v308;
            }

            v77 = sub_1000E0480(v75, v76);

            v52 = v363;
LABEL_52:
            v365 = 0xD000000000000018;
            v366 = 0x80000001000E8580;

            AnyHashable.init<A>(_:)();
            sub_1000C1CA8(&v369, v73, &v367);

            sub_1000708BC(&v369);
            if (*(&v368 + 1))
            {
              if (swift_dynamicCast())
              {
                v336 = v369;
LABEL_57:
                v365 = 0xD000000000000011;
                v366 = 0x80000001000E85A0;

                AnyHashable.init<A>(_:)();
                sub_1000C1CA8(&v369, v73, &v367);

                sub_1000708BC(&v369);
                if (*(&v368 + 1))
                {
                  v99 = swift_dynamicCast();
                  if (v99)
                  {
                    v79 = v369;
                  }

                  else
                  {
                    v79 = 0;
                  }

                  if (v99)
                  {
                    v80 = v370;
                  }

                  else
                  {
                    v80 = 0;
                  }

                  v78 = v77;
                  v360 = v62;
                  v361 = v77;
                  if (!v62)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_29;
                }

                v78 = v77;
LABEL_28:
                sub_100005688(&v367, &qword_100131118, &unk_1000ED6E0);
                v79 = 0;
                v80 = 0;
                v360 = v62;
                v361 = v78;
                if (!v62)
                {
LABEL_65:

                  v334 = 0;
                  v82 = 0;
                  v83 = 2;
LABEL_66:
                  v96 = v359;
                  v100 = *(&v52->isa + v359);
                  if (!v100)
                  {
                    goto LABEL_164;
                  }

LABEL_67:
                  [v100 makeKeyAndVisible];
                  v101 = *(&v52->isa + v96);
                  if (v101)
                  {
                    v102 = [v101 _rootSheetPresentationController];
                    if (v102)
                    {
                      v103 = v102;
                      [v102 _setShouldScaleDownBehindDescendantSheets:0];
                      goto LABEL_166;
                    }
                  }

LABEL_164:
                  v103 = Logger.logObject.getter();
                  v172 = static os_log_type_t.error.getter();
                  if (os_log_type_enabled(v103, v172))
                  {
                    v173 = swift_slowAlloc();
                    *v173 = 0;
                    _os_log_impl(&_mh_execute_header, v103, v172, "_rootSheetPresentationController was unexpectedly nil.", v173, 2u);
                    v78 = v361;
                  }

LABEL_166:

                  v174 = String._bridgeToObjectiveC()();
                  [v42 setIdleTimerDisabled:1 forReason:v174];

                  [v42 setContentOpaque:0];
                  if (v83 == 2)
                  {
                    [v42 setAllowsAlertStacking:1];
                    [v42 setSwipeDismissalStyle:0];
                    [v42 setAllowsMenuButtonDismissal:0];
                    v175 = v358;
                    if (!v78)
                    {
                      goto LABEL_181;
                    }
                  }

                  else
                  {
                    [v42 setAllowsAlertStacking:0];
                    [v42 setAllowsMenuButtonDismissal:1];
                    if (v83)
                    {
                      [v42 setSwipeDismissalStyle:0];
                      [v42 setDesiredHardwareButtonEvents:16];
                    }

                    else
                    {
                      [v42 setSwipeDismissalStyle:1];
                    }

                    v175 = v358;
                    if (!v78)
                    {
                      goto LABEL_181;
                    }
                  }

                  v176 = v78[2];
                  if (!v176)
                  {
                    goto LABEL_181;
                  }

                  v177 = v176;
                  if ((sub_1000E0268() & 1) == 0)
                  {

LABEL_181:

                    v178 = Logger.logObject.getter();
                    v179 = static os_log_type_t.error.getter();
                    if (os_log_type_enabled(v178, v179))
                    {
                      v180 = swift_slowAlloc();
                      *v180 = 0;
                      _os_log_impl(&_mh_execute_header, v178, v179, "Invalidating remote alert scene because the client is no longer valid.", v180, 2u);
                    }

                    [v42 invalidate];
LABEL_184:

                    sub_100005688(&v378, &unk_100131120, &unk_1000EAAF0);
                    return;
                  }

                  if (v82)
                  {
                    if ((v336 & 1) == 0)
                    {
                      v181 = *(&v52->isa + v96);
                      sub_1000035B4(&v378, &v369, &unk_100131120, &unk_1000EAAF0);
                      type metadata accessor for RemoteSceneManager.WeakScene();
                      swift_allocObject();
                      v182 = v181;
                      v183 = sub_100092FE4(v42, v181, &v369);
                      v184 = type metadata accessor for TaskPriority();
                      v185 = v82;
                      v186 = v335;
                      (*(*(v184 - 8) + 56))(v335, 1, 1, v184);
                      type metadata accessor for MainActor();

                      v187 = static MainActor.shared.getter();
                      v188 = swift_allocObject();
                      v188[2] = v187;
                      v188[3] = &protocol witness table for MainActor;
                      v189 = v360;
                      v188[4] = v356;
                      v188[5] = v189;
                      v188[6] = v334;
                      v188[7] = v185;
                      v188[8] = v183;
                      sub_100014BBC(0, 0, v186, &unk_1000EEF40, v188);

                      goto LABEL_186;
                    }
                  }

LABEL_186:
                  v190 = [v42 configurationContext];
                  if (v190)
                  {
                    v191 = v190;
                    v192 = v190;
                    v193 = Logger.logObject.getter();
                    v194 = static os_log_type_t.info.getter();

                    if (os_log_type_enabled(v193, v194))
                    {
                      v195 = swift_slowAlloc();
                      v196 = swift_slowAlloc();
                      *v195 = 138412290;
                      *(v195 + 4) = v192;
                      *v196 = v191;
                      v197 = v192;
                      _os_log_impl(&_mh_execute_header, v193, v194, "Remote alert scene got configuration context %@", v195, 0xCu);
                      sub_100005688(v196, &qword_100131110, &unk_1000EC870);

                      v192 = v357;
                      v198 = v193;
                      v193 = v177;
                      v177 = v197;
                    }

                    else
                    {
                      v198 = v357;
                    }
                  }

                  else
                  {
                    v193 = v357;
                  }

                  goto LABEL_184;
                }

LABEL_29:

                v382._countAndFlagsBits = v356;
                v382._object = v62;
                v81 = sub_1000C19BC(v382);
                if (v81 == 9)
                {

                  v334 = 0;
                  v82 = 0;
                  v83 = 2;
                  v52 = v363;
                  goto LABEL_66;
                }

                v84 = v81;
                if (v78 && (v85 = v78[2]) != 0)
                {
                  v86 = *(v361 + 144);
                  v328 = v20;
                  v87 = v42;
                  v88 = v73;
                  v89 = v79;
                  v90 = v80;
                  v91 = *(v361 + 152);

                  v92 = v85;
                  v93 = v86;
                  v78 = v361;
                  v334 = sub_1000DFEF0(v84, v93, v91);
                  v329 = v94;

                  v80 = v90;
                  v79 = v89;
                  v73 = v88;
                  v42 = v87;
                  v20 = v328;
                }

                else
                {
                  v334 = 0;
                  v329 = 0;
                }

                v95 = v84;
                if (v84 <= 4u)
                {
                  v52 = v363;
                  if (v95 > 1)
                  {
                    if (v95 != 2)
                    {
                      v82 = v329;
                      if (v95 == 3)
                      {

                        v96 = v359;
                        if (v78)
                        {
                          sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                          if (v372)
                          {
                            sub_100002B38(&unk_100132440, &unk_1000EEFA8);
                            swift_dynamicCast();
                          }

                          else
                          {
                            sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                          }
                        }

                        v140 = *(&v52->isa + v96);
                        if (v140)
                        {
                          v141 = v140;
                          v142 = sub_1000DAF78();
                          [v141 setRootViewController:v142];
                          swift_unknownObjectRelease();

                          v78 = v361;
                        }

                        else
                        {
                          swift_unknownObjectRelease();
                        }

LABEL_151:
                        v83 = 2;
                        v100 = *(&v52->isa + v96);
                        if (!v100)
                        {
                          goto LABEL_164;
                        }

                        goto LABEL_67;
                      }

                      v96 = v359;
                      v114 = *(&v52->isa + v359);
                      if (v114)
                      {
                        goto LABEL_149;
                      }

LABEL_153:
                      v83 = 2;
                      goto LABEL_164;
                    }

                    if (v78 && *v78 == _TtC13GameOverlayUI26DashboardConnectionContext)
                    {
                      swift_beginAccess();
                      sub_1000035B4((v78 + 8), &v369, &unk_100131120, &unk_1000EAAF0);
                      if (!v372)
                      {

                        sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
LABEL_109:
                        v116 = Logger.logObject.getter();
                        v117 = static os_log_type_t.error.getter();
                        if (os_log_type_enabled(v116, v117))
                        {
                          v83 = 2;
                          v118 = swift_slowAlloc();
                          *v118 = 0;
                          _os_log_impl(&_mh_execute_header, v116, v117, "A valid RemoteAlertDashboardContext could not be found for the dashboard request.", v118, 2u);
                          v78 = v361;

                          v351 = 0;
                          v352 = 0;
                        }

                        else
                        {

                          v351 = 0;
                          v352 = 0;
                          v83 = 2;
                        }

LABEL_116:
                        v119 = *(&v379 + 1);
                        if (*(&v379 + 1))
                        {
                          v120 = v380;
                          v121 = sub_10002D754(&v378, *(&v379 + 1));
                          v122 = *(v119 - 8);
                          v123 = *(v122 + 64);
                          v124 = __chkstk_darwin(v121);
                          v126 = &v309 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
                          (*(v122 + 16))(v126, v124);
                          (*(v120 + 16))(v119, v120);
                          v350 = v127;
                          v128 = v126;
                          v52 = v363;
                          (*(v122 + 8))(v128, v119);
                          v78 = v361;
                        }

                        else
                        {
                          v350 = 0;
                        }

                        type metadata accessor for GameOverlayDashboardVisibilityNotifier();
                        v130 = v353;
                        v129 = v354;
                        v131 = v355;
                        (v354[13])(v353, enum case for GameOverlayDashboardVisibilityNotifier.Scene.dashboard(_:), v355);
                        static GameOverlayDashboardVisibilityNotifier.notify(id:isPresented:scene:)();

                        (v129[1])(v130, v131);
                        v96 = v359;
                        v132 = *(&v52->isa + v359);
                        if (v132)
                        {
                          if (v78)
                          {
                            v133 = v78[18];
                            v134 = v78[19];
                          }

                          else
                          {
                            v133 = 0;
                            v134 = 0;
                          }

                          sub_1000035B4(&v378, &v369, &unk_100131120, &unk_1000EAAF0);
                          v135 = v132;
                          v136 = sub_1000D6064(v42, v352, v351, v133, v134, &v369);

                          sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                          [v135 setRootViewController:v136];

                          v96 = v359;
                          v137 = *(&v52->isa + v359);
                          if (v137)
                          {
                            v138 = *(&v52->isa + v359);
                            if (swift_dynamicCastClass())
                            {
                              v139 = v137;
                              sub_1000D59D4();

                              v96 = v359;
                            }
                          }
                        }

                        swift_unknownObjectRelease();

                        goto LABEL_163;
                      }

                      swift_retain_n();
                      sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                      v110 = type metadata accessor for RemoteAlertDashboardContext(0);
                      if (swift_dynamicCast())
                      {
                        v327 = v80;
                        v111 = v365;
                        sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                        if (v372)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          swift_dynamicCast();
                        }

                        else
                        {
                          sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                        }

                        KeyPath = swift_getKeyPath();
                        __chkstk_darwin(KeyPath);
                        v369 = v111;
                        sub_1000DF30C(&qword_100131D80, type metadata accessor for RemoteAlertDashboardContext);
                        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

                        swift_unknownObjectRelease();
                        v373 = &off_1001240C0;
                        v372 = v110;
                        v369 = v111;
                        sub_1000DF4FC(&v369, &v378, &unk_100131120, &unk_1000EAAF0);
                        v78 = v361;
                        v83 = *(v361 + 176);
                        v352 = *(v361 + 160);
                        v201 = v352;

                        sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);

                        if (v372)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          v202 = swift_dynamicCast();
                          v203 = v365;
                          if (!v202)
                          {
                            v203 = 0;
                          }

                          v351 = v203;
                          v52 = v363;
                        }

                        else
                        {
                          sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                          v351 = 0;
                          v52 = v363;
                        }

                        goto LABEL_116;
                      }
                    }

                    else
                    {
                    }

                    goto LABEL_109;
                  }

                  if (!v95)
                  {

                    v96 = v359;
                    if (v78 && *v78 == _TtC13GameOverlayUI28AccessPointConnectionContext)
                    {
                      swift_beginAccess();
                      sub_1000035B4((v78 + 8), &v369, &unk_100131120, &unk_1000EAAF0);
                      if (!v372)
                      {

                        sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                        goto LABEL_148;
                      }

                      swift_retain_n();
                      sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                      v105 = type metadata accessor for RemoteAlertAccessPointContext(0);
                      if (swift_dynamicCast())
                      {
                        v106 = v365;
                        sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                        v355 = v105;
                        if (v372)
                        {
                          sub_100002B38(&qword_100131138, &qword_1000ED598);
                          swift_dynamicCast();
                        }

                        else
                        {
                          sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                        }

                        swift_unknownObjectWeakAssign();
                        swift_unknownObjectRelease();
                        v204 = v361;
                        v205 = *(v361 + 160);
                        v206 = v205;
                        sub_1000BD630(v205);
                        v207 = *(&v52->isa + v96);
                        if (v207)
                        {
                          v208 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
                          swift_beginAccess();
                          v209 = v350;
                          (*(v350 + 16))(v346, v106 + v208, v351);
                          v327 = v80;
                          v210 = v204[20];
                          swift_beginAccess();
                          sub_1000035B4((v204 + 13), &v369, &unk_100131120, &unk_1000EAAF0);
                          v211 = v210;
                          v354 = v207;

                          v212 = *(&v363->isa + v359);
                          v213 = v212;
                          v214 = v79;
                          v215 = v213;
                          v216 = v346;
                          v217 = sub_1000D9EC0(v106, v346, v210, v336, &v369, v214, v327, v212);

                          v52 = v363;

                          sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                          (*(v209 + 8))(v216, v351);
                          v218 = v354;
                          [v354 setRootViewController:v217];

                          v96 = v359;
                        }

                        else
                        {
                        }

                        v78 = v204;
                        v82 = v329;
                        v373 = &off_1001240E8;
                        v372 = v355;
                        v369 = v106;

                        sub_1000DF4FC(&v369, &v378, &unk_100131120, &unk_1000EAAF0);
                        v258 = v358;
                        sub_1000BD924(v42);
                        [v42 setInputHardwareEventsDisabled:1];

                        goto LABEL_151;
                      }
                    }

LABEL_148:
                    v114 = *(&v52->isa + v96);
                    v82 = v329;
                    if (!v114)
                    {
                      goto LABEL_153;
                    }

                    goto LABEL_149;
                  }

                  v328 = v20;
                  v355 = v73;
                  v96 = v359;
                  v82 = v329;
                  if (v78 && *v78 == _TtC13GameOverlayUI29InGameBannerConnectionContext)
                  {
                    swift_beginAccess();
                    sub_1000035B4((v78 + 8), &v369, &unk_100131120, &unk_1000EAAF0);
                    if (!v372)
                    {

                      sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                      v114 = *(&v52->isa + v96);
                      if (!v114)
                      {
                        goto LABEL_153;
                      }

                      goto LABEL_149;
                    }

                    swift_retain_n();
                    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                    v354 = type metadata accessor for RemoteAlertAccessPointContext(0);
                    if (swift_dynamicCast())
                    {
                      v115 = v367;
                      sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                      v327 = v80;
                      v317 = v79;
                      if (v372)
                      {
                        sub_100002B38(&qword_100131138, &qword_1000ED598);
                        swift_dynamicCast();
                      }

                      else
                      {
                        sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                      }

                      swift_unknownObjectWeakAssign();
                      swift_unknownObjectRelease();
                      v219 = v78[28];
                      v220 = v219;
                      sub_1000BD630(v219);
                      v221 = v78;
                      v222 = *(&v52->isa + v359);
                      if (!v222)
                      {

                        v259 = v358;
                        v78 = v221;
LABEL_217:
                        v373 = &off_1001240E8;
                        v372 = v354;
                        v369 = v115;

                        sub_1000DF4FC(&v369, &v378, &unk_100131120, &unk_1000EAAF0);
                        v307 = v259;
                        sub_1000BD924(v42);
                        [v42 setInputHardwareEventsDisabled:1];

                        v83 = 2;
                        v96 = v359;
                        goto LABEL_163;
                      }

                      v223 = v221[21];
                      v224 = v221[22];
                      v225 = v221[23];
                      v314 = v221[20];
                      v315 = v224;
                      v226 = v221[24];
                      v346 = v221[25];
                      v227 = v221[27];
                      v316 = v221[26];
                      v228 = v221[29];
                      v326 = v221[28];
                      v353 = v228;
                      swift_beginAccess();
                      sub_1000035B4((v221 + 13), &v369, &unk_100131120, &unk_1000EAAF0);
                      v323 = v225;

                      v322 = v223;

                      v310 = v222;
                      v324 = v226;
                      sub_1000304CC(v226, v346);

                      v321 = v227;

                      v319 = v326;

                      v229 = v221[30];
                      v230 = v221[31];
                      v231 = v221[32];
                      v232 = v221[33];
                      v313 = v231;
                      v233 = OBJC_IVAR____TtC13GameOverlayUI29RemoteAlertAccessPointContext_useCase;
                      swift_beginAccess();
                      v234 = *(v350 + 16);
                      v325 = v115;
                      v234(v347, v115 + v233, v351);
                      sub_1000035B4(&v369, &v367, &unk_100131120, &unk_1000EAAF0);
                      v235 = *(&v52->isa + v359);
                      v236 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
                      (*(*(v236 - 8) + 56))(v352, 1, 1, v236);
                      v237 = type metadata accessor for ImpedimentFlowDestinationStates();
                      v238 = *(v237 + 48);
                      v239 = *(v237 + 52);
                      swift_allocObject();
                      v320 = v229;
                      v240 = v229;
                      v241 = v232;
                      v333 = v230;
                      sub_1000304CC(v240, v230);
                      v312 = v235;

                      v364 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
                      State.init(wrappedValue:)();
                      v242 = v377[1];
                      v243 = v348;
                      v244 = v349;
                      v349[2] = v377[0];
                      v244[3] = v242;
                      v245 = v243[6];
                      v246 = type metadata accessor for Game();
                      v247 = *(*(v246 - 8) + 56);
                      v247(&v245[v244], 1, 1, v246);
                      v248 = v244 + v243[16];
                      *(v248 + 32) = 0;
                      *v248 = 0u;
                      *(v248 + 16) = 0u;
                      v311 = v248;
                      v352 = v244 + v243[18];
                      swift_unknownObjectWeakInit();
                      v249 = type metadata accessor for GameDashboardLaunchContext();
                      v250 = *(v249 + 48);
                      v251 = *(v249 + 52);
                      swift_allocObject();
                      *v244 = GameDashboardLaunchContext.init()();
                      v244[1] = 0;
                      v318 = v241;
                      if (v326)
                      {
                        v252 = objc_opt_self();
                        v253 = v319;
                        v254 = [v253 internal];
                        v377[0] = 0;
                        v255 = [v252 archivedDataWithRootObject:v254 requiringSecureCoding:1 error:v377];

                        v256 = v377[0];
                        if (v255)
                        {
                          v326 = v245;
                          static Data._unconditionallyBridgeFromObjectiveC(_:)();

                          v257 = v337;
                          Game.init(with:)();

                          v247(v257, 0, 1, v246);
                          sub_1000DF4FC(v257, &v326[v349], &qword_100132410, &unk_1000E9F30);
                        }

                        else
                        {
                          v260 = v256;
                          _convertNSErrorToError(_:)();

                          swift_willThrow();
                          swift_errorRetain();
                          v261 = Logger.logObject.getter();
                          v262 = static os_log_type_t.error.getter();

                          if (os_log_type_enabled(v261, v262))
                          {
                            v263 = swift_slowAlloc();
                            v264 = swift_slowAlloc();
                            *v263 = 138412290;
                            swift_errorRetain();
                            v265 = _swift_stdlib_bridgeErrorToNSError();
                            *(v263 + 4) = v265;
                            *v264 = v265;
                            _os_log_impl(&_mh_execute_header, v261, v262, "Game could not be serialized: %@", v263, 0xCu);
                            sub_100005688(v264, &qword_100131110, &unk_1000EC870);
                          }

                          else
                          {
                          }
                        }

                        v241 = v318;
                      }

                      v267 = v348;
                      v266 = v349;
                      v337 = v349 + *(v348 + 68);
                      (*(v350 + 32))(v349 + *(v348 + 28), v347, v351);
                      v268 = (v266 + v267[8]);
                      v269 = v315;
                      v270 = v322;
                      v271 = v323;
                      *v268 = v314;
                      v268[1] = v270;
                      v272 = (v266 + v267[9]);
                      *v272 = v269;
                      v272[1] = v271;
                      v273 = (v266 + v267[10]);
                      v274 = v324;
                      v275 = v346;
                      *v273 = v324;
                      v273[1] = v275;
                      v276 = (v266 + v267[13]);
                      v277 = v241;
                      v278 = v320;
                      v279 = v321;
                      *v276 = v316;
                      v276[1] = v279;
                      *(v266 + v267[14]) = v353;
                      v280 = (v266 + v267[11]);
                      v281 = v333;
                      *v280 = v278;
                      v280[1] = v281;
                      v282 = (v266 + v267[12]);
                      *v282 = v313;
                      v282[1] = v277;
                      *(v266 + v267[15]) = v336;

                      sub_1000304CC(v274, v275);

                      sub_1000304CC(v278, v333);

                      sub_1000DF4FC(&v367, v311, &unk_100131120, &unk_1000EAAF0);
                      v283 = v337;
                      v284 = v327;
                      *v337 = v317;
                      *(v283 + 1) = v284;
                      v285 = v312;
                      swift_unknownObjectWeakAssign();

                      v286 = v338;
                      sub_1000DFE10(v266, v338, type metadata accessor for InGameBannerView);
                      v287 = sub_1000DF30C(&unk_100132450, type metadata accessor for InGameBannerView);
                      v288 = sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
                      v289 = v339;
                      v290 = v354;
                      View.environment<A>(_:)();
                      sub_1000DFD48(v286, type metadata accessor for InGameBannerView);
                      Solarium.init()();
                      v291 = v344;
                      static ViewInputPredicate.! prefix(_:)();
                      sub_100002B38(&qword_100132460, &qword_1000EEFB8);
                      *&v367 = v267;
                      *(&v367 + 1) = v290;
                      *&v368 = v287;
                      *(&v368 + 1) = v288;
                      swift_getOpaqueTypeConformance2();
                      *&v367 = &type metadata for Solarium;
                      *(&v367 + 1) = &protocol witness table for Solarium;
                      swift_getOpaqueTypeConformance2();
                      sub_1000DF35C();
                      v292 = v330;
                      v293 = v331;
                      v294 = v341;
                      View.staticIf<A, B>(_:then:)();
                      (*(v345 + 8))(v291, v292);
                      (*(v340 + 8))(v289, v294);
                      v295 = v332;
                      v296 = *(v332 + 16);
                      v297 = v343;
                      v298 = v328;
                      v296(v343, v293, v328);
                      v299 = objc_allocWithZone(sub_100002B38(&qword_100132480, &qword_1000EEFC8));
                      v299[*((swift_isaMask & *v299) + qword_100135CE0 + 16)] = 1;
                      v296(v342, v297, v298);
                      v300 = UIHostingController.init(rootView:)();
                      v301 = *(v295 + 8);
                      v301(v297, v298);
                      v302 = v300;
                      v303 = [v302 view];
                      v259 = v358;
                      if (v303)
                      {
                        v304 = v303;

                        v305 = [objc_opt_self() clearColor];
                        [v304 setBackgroundColor:v305];

                        sub_10003091C(v320, v333);
                        sub_10003091C(v324, v346);
                        v301(v293, v298);
                        sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                        v306 = v310;
                        [v310 setRootViewController:v302];

                        v52 = v363;
                        v78 = v361;
                        v115 = v325;
                        goto LABEL_217;
                      }

                      goto LABEL_219;
                    }
                  }

                  else
                  {
                  }

                  v114 = *(&v52->isa + v96);
                  if (!v114)
                  {
                    goto LABEL_153;
                  }

LABEL_149:
                  v161 = v114;
                  v162 = sub_1000D9A7C();
                  [v161 setRootViewController:v162];

                  goto LABEL_150;
                }

                v355 = v73;
                v52 = v363;
                if ((v95 - 5) < 2)
                {
                  v96 = v359;
                  if (!v78 || *v78 != _TtC13GameOverlayUI31AuthenticationConnectionContext || (v97 = v78[21]) == 0)
                  {

                    v107 = *(&v52->isa + v96);
                    if (!v107)
                    {
                      v83 = 2;
                      v82 = v329;
                      goto LABEL_164;
                    }

                    v108 = v107;
                    v109 = sub_1000D9A7C();
                    [v108 setRootViewController:v109];

                    v83 = 2;
LABEL_163:
                    v82 = v329;
                    v100 = *(&v52->isa + v96);
                    if (!v100)
                    {
                      goto LABEL_164;
                    }

                    goto LABEL_67;
                  }

                  v354 = v78[20];
                  sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                  if (v372)
                  {

                    sub_100002B38(&qword_100131130, &qword_1000EF000);
                    if (swift_dynamicCast())
                    {
                      v98 = v367;
                    }

                    else
                    {
                      v98 = 0;
                    }
                  }

                  else
                  {

                    sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                    v98 = 0;
                  }

                  v143 = *(&v52->isa + v96);
                  if (!v143)
                  {

                    swift_unknownObjectRelease();

                    v83 = 2;
                    goto LABEL_163;
                  }

                  v327 = v80;
                  v144 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v145 = swift_allocObject();
                  v145[2] = v52;
                  v145[3] = v98;
                  v146 = v354;
                  v145[4] = v354;
                  v145[5] = v97;
                  v145[6] = v144;
                  swift_unknownObjectWeakInit();
                  v370 = v146;
                  v371 = v97;
                  v372 = sub_1000DF610;
                  v373 = v145;
                  v147 = sub_100002B38(&qword_10012E6A0, &qword_1000EAB60);
                  (*(*(v147 - 8) + 56))(v352, 1, 1, v147);
                  v148 = type metadata accessor for ImpedimentFlowDestinationStates();
                  v149 = *(v148 + 48);
                  v150 = *(v148 + 52);
                  swift_allocObject();
                  v354 = v98;
                  swift_unknownObjectRetain();
                  swift_bridgeObjectRetain_n();
                  v151 = v143;
                  v152 = v52;

                  v365 = ImpedimentFlowDestinationStates.init(completedWelcome:completedCrossUse:completedProfileCreation:lastRecordedSignedInPlayer:lastRecordedSignedInAppStoreDSID:)();
                  State.init(wrappedValue:)();

                  v374 = v367;
                  v153 = static SafeAreaRegions.all.getter();
                  v154 = static Edge.Set.all.getter();
                  v375 = v153;
                  v376 = v154;
                  sub_1000035B4(&v369, &v367, &qword_100132488, &qword_1000EF008);
                  v155 = objc_allocWithZone(sub_100002B38(&qword_100132490, &qword_1000EF010));
                  v155[*((swift_isaMask & *v155) + qword_100135CE0 + 16)] = 1;
                  sub_1000035B4(&v367, &v365, &qword_100132488, &qword_1000EF008);
                  v156 = UIHostingController.init(rootView:)();
                  sub_100005688(&v367, &qword_100132488, &qword_1000EF008);
                  v157 = v156;
                  v158 = [v157 view];
                  if (!v158)
                  {
                    __break(1u);
LABEL_219:
                    __break(1u);
                    return;
                  }

                  v159 = v158;

                  v160 = [objc_opt_self() clearColor];
                  [v159 setBackgroundColor:v160];

                  sub_100005688(&v369, &qword_100132488, &qword_1000EF008);
                  [v151 setRootViewController:v157];
                  swift_unknownObjectRelease();
                  v78 = v361;

                  v83 = 2;
                  v52 = v363;
LABEL_162:
                  v96 = v359;
                  goto LABEL_163;
                }

                v96 = v359;
                v82 = v329;
                if (v95 == 7)
                {

                  if (v78 && *v78 == _TtC13GameOverlayUI31AuthenticationConnectionContext && v78[23])
                  {
                    v104 = v78[22];
                    sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                    if (v372)
                    {

                      sub_100002B38(&qword_100131130, &qword_1000EF000);
                      swift_dynamicCast();
                    }

                    else
                    {

                      sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                    }

                    v163 = *(&v52->isa + v96);
                    if (!v163)
                    {
                      v199 = v361;

                      v78 = v199;
                      swift_unknownObjectRelease();
                      goto LABEL_151;
                    }

                    v164 = v163;
                    v162 = sub_1000D9C24();

                    [v164 setRootViewController:v162];
                    swift_unknownObjectRelease();
                    v78 = v361;

                    v82 = v329;
LABEL_150:

                    goto LABEL_151;
                  }

                  v114 = *(&v52->isa + v96);
                  if (!v114)
                  {
                    goto LABEL_153;
                  }

                  goto LABEL_149;
                }

                if (v78)
                {
                  swift_beginAccess();
                  sub_1000035B4((v78 + 8), &v369, &unk_100131120, &unk_1000EAAF0);
                  if (v372)
                  {

                    sub_100002B38(&qword_10012E0C0, &qword_1000EA820);
                    v112 = type metadata accessor for RemoteAlertGameModeBannerContext(0);
                    if (swift_dynamicCast())
                    {
                      v327 = v80;
                      v113 = v365;
                      sub_1000035B4((v78 + 3), &v369, &qword_100131118, &unk_1000ED6E0);
                      if (v372)
                      {
                        sub_100002B38(&qword_100131138, &qword_1000ED598);
                        swift_dynamicCast();
                      }

                      else
                      {
                        sub_100005688(&v369, &qword_100131118, &unk_1000ED6E0);
                      }

                      v165 = swift_getKeyPath();
                      __chkstk_darwin(v165);
                      v166 = OBJC_IVAR____TtC13GameOverlayUI32RemoteAlertGameModeBannerContext___observationRegistrar;
                      v369 = v113;
                      sub_1000DF30C(&unk_100132430, type metadata accessor for RemoteAlertGameModeBannerContext);
                      v354 = v166;
                      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

                      swift_unknownObjectRelease();
                      v52 = v363;
                      v167 = *(&v363->isa + v359);
                      if (v167)
                      {
                        v168 = *(v113 + 32);
                        v169 = v167;
                        v170 = v168;
                        v171 = sub_1000DB268(v113, v170);

                        [v169 setRootViewController:v171];
                      }

                      v373 = &off_100124070;
                      v372 = v112;
                      v369 = v113;

                      sub_1000DF4FC(&v369, &v378, &unk_100131120, &unk_1000EAAF0);
                      [v42 setInputHardwareEventsDisabled:1];
                      swift_getKeyPath();
                      v369 = v113;
                      ObservationRegistrar.access<A, B>(_:keyPath:)();

                      v78 = v361;

                      v83 = *(v113 + 72);

                      goto LABEL_162;
                    }

                    v96 = v359;
                  }

                  else
                  {

                    sub_100005688(&v369, &unk_100131120, &unk_1000EAAF0);
                  }
                }

                else
                {
                }

                v114 = *(&v52->isa + v96);
                if (!v114)
                {
                  goto LABEL_153;
                }

                goto LABEL_149;
              }
            }

            else
            {
              sub_100005688(&v367, &qword_100131118, &unk_1000ED6E0);
            }

            v336 = 0;
            goto LABEL_57;
          }
        }

        else
        {
          sub_100005688(&v367, &qword_100131118, &unk_1000ED6E0);
        }

        v77 = 0;
        goto LABEL_52;
      }
    }

    else
    {
      v380 = 0;
      v74 = 0uLL;
      v378 = 0u;
      v379 = 0u;
    }

    v367 = v74;
    v368 = v74;
    sub_100005688(&v367, &qword_100131118, &unk_1000ED6E0);
    v367 = 0u;
    v368 = 0u;
    sub_100005688(&v367, &qword_100131118, &unk_1000ED6E0);
    v336 = 0;
    v73 = 0;
    v78 = 0;
    v367 = 0u;
    v368 = 0u;
    goto LABEL_28;
  }

  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v63 = type metadata accessor for Logger();
  sub_100011F80(v63, qword_100135C88);
  v64 = a1;
  v363 = Logger.logObject.getter();
  v65 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v363, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *v66 = 138412290;
    *(v66 + 4) = v64;
    *v67 = v64;
    v68 = v64;
    _os_log_impl(&_mh_execute_header, v363, v65, "Expected scene to be SBSUIRemoteAlertScene but got %@", v66, 0xCu);
    sub_100005688(v67, &qword_100131110, &unk_1000EC870);
  }

  v69 = v363;
}

void sub_1000DEBA4()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidBecomeActive", v5, 2u);
  }

  v6 = *&v1[OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window];
  if (v6)
  {
    [v6 setAlpha:0.0];
  }

  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v1;
  v11[4] = sub_1000DF19C;
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_1000D431C;
  v11[3] = &unk_1001243C0;
  v9 = _Block_copy(v11);
  v10 = v1;

  [v7 animateWithDuration:v9 animations:0.3];
  _Block_release(v9);
}

void sub_1000DED6C()
{
  v1 = v0;
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Remote alert scene sceneDidDisconnect", v5, 2u);
  }

  v6 = *(v1 + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  *(v1 + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window) = 0;
}

void sub_1000DEE68(const char *a1)
{
  if (qword_10012CC18 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100011F80(v2, qword_100135C88);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

void sub_1000DEF58(uint64_t a1)
{
  v2 = type metadata accessor for ZoomCoordinator.DashboardVisibilityState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000D4360(a1);
  if (v7)
  {
    v14 = v7;
    if (([v7 events] & 0x10) != 0)
    {
      if (qword_10012CC18 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100011F80(v9, qword_100135C88);
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, v10, v11, "Will dismiss remote alert scene in response to homeButton event.", v12, 2u);
      }

      type metadata accessor for ZoomCoordinator();
      static ZoomCoordinator.shared.getter();
      (*(v3 + 104))(v6, enum case for ZoomCoordinator.DashboardVisibilityState.closed(_:), v2);
      dispatch thunk of ZoomCoordinator.dashboardVisibility.setter();
    }

    else
    {
      v8 = v14;
    }
  }
}

uint64_t sub_1000DF158(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000DF164()
{

  return swift_deallocObject();
}

uint64_t sub_1000DF1A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000DF1BC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  return swift_deallocObject();
}

uint64_t sub_1000DF20C(uint64_t a1)
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
  v11[1] = sub_100014BAC;

  return sub_1000D7048(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1000DF30C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000DF35C()
{
  result = qword_100132468;
  if (!qword_100132468)
  {
    sub_100005144(&qword_100132460, &qword_1000EEFB8);
    type metadata accessor for InGameBannerView();
    type metadata accessor for RemoteAlertAccessPointContext(255);
    sub_1000DF30C(&unk_100132450, type metadata accessor for InGameBannerView);
    sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    swift_getOpaqueTypeConformance2();
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132468);
  }

  return result;
}

unint64_t sub_1000DF498()
{
  result = qword_100132470;
  if (!qword_100132470)
  {
    sub_100005144(&qword_100132478, &qword_1000EEFC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132470);
  }

  return result;
}

uint64_t sub_1000DF4FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002B38(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000DF56C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_1000BED70();
}

uint64_t sub_1000DF588()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000DF5C0()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1000DF620()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

void sub_1000DF668(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  sub_1000D7AE4(a1, *(v1 + 16));
}

uint64_t sub_1000DF678(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014BAC;

  return sub_1000D7E5C(a1, v4, v5, v6);
}

unint64_t sub_1000DF7DC()
{
  result = qword_1001324D0;
  if (!qword_1001324D0)
  {
    sub_100005144(&qword_1001324C8, &qword_1000EF0C8);
    type metadata accessor for AccessPointView();
    type metadata accessor for RemoteAlertAccessPointContext(255);
    sub_1000DF30C(&qword_1001324C0, type metadata accessor for AccessPointView);
    sub_1000DF30C(&qword_10012CFC8, type metadata accessor for RemoteAlertAccessPointContext);
    swift_getOpaqueTypeConformance2();
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001324D0);
  }

  return result;
}

uint64_t sub_1000DF940()
{
  v1 = *(v0 + 16);

  if (*(v0 + 56))
  {
    sub_10002E6CC((v0 + 32));
  }

  v2 = *(v0 + 72);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_1000DF9D0()
{
  result = qword_100132520;
  if (!qword_100132520)
  {
    sub_100005144(&qword_100132510, &qword_1000EF148);
    sub_1000DF30C(&qword_100132518, type metadata accessor for DashboardOverlayView);
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132520);
  }

  return result;
}

uint64_t sub_1000DFA94()
{
  v1 = v0[2];

  if (v0[6])
  {
    sub_10002E6CC(v0 + 3);
  }

  v2 = v0[8];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DFAF4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000DFB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100011720;

  return sub_1000D885C(a1, v4, v5, v6);
}

uint64_t sub_1000DFBE8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

id sub_1000DFC30()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC13GameOverlayUI37GameOverlayUIRemoteAlertSceneDelegate_window);
  if (result)
  {
    return [result setAlpha:?];
  }

  return result;
}

unint64_t sub_1000DFC8C()
{
  result = qword_100132588;
  if (!qword_100132588)
  {
    sub_100005144(&qword_100132578, &qword_1000EF200);
    sub_1000DF30C(&qword_100132580, type metadata accessor for GameModeBannerView);
    sub_1000DF498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100132588);
  }

  return result;
}

uint64_t sub_1000DFD48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000DFDA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000DFE10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E0268()
{
  v1 = [objc_opt_self() processHandleForAuditToken:v0];
  sub_1000E0E90();
  v2 = v1;
  v3 = sub_1000E1250(v2);

  v4 = [v3 currentState];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 isRunning];

    if (v6)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000E0480(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_1000C547C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);
    swift_endAccess();
    swift_beginAccess();

    sub_1000E11B8(a1, a2);
    swift_endAccess();

    return v8;
  }

  else
  {
    swift_endAccess();
    return 0;
  }
}

uint64_t sub_1000E0554(void *a1)
{
  *(v1 + 56) = &_swiftEmptyDictionarySingleton;
  v2 = 0uLL;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  if (!a1)
  {
    *(v1 + 16) = 0;
LABEL_6:
    v4 = 0uLL;
    goto LABEL_7;
  }

  *(v1 + 16) = [a1 remoteToken];
  if (![a1 remoteTarget])
  {

    v2 = 0uLL;
    goto LABEL_6;
  }

  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  v2 = v6;
  v4 = v7;
LABEL_7:
  *(v1 + 24) = v2;
  *(v1 + 40) = v4;
  return v1;
}

uint64_t sub_1000E0618()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);
  v1 = *(v0 + 56);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);
  v2 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E06DC()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);
}

uint64_t sub_1000E070C()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);
  v1 = *(v0 + 56);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);
  v2 = *(v0 + 152);

  v3 = *(v0 + 168);

  v4 = *(v0 + 184);

  return v0;
}

uint64_t sub_1000E07A4()
{
  sub_1000E070C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0804()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);
  v1 = *(v0 + 56);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);
  v2 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_1000E08D0(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xF000000000000000;
  *(v3 + 208) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0;
  *(v3 + 248) = 0xF000000000000000;
  *(v3 + 256) = 0;
  *(v3 + 264) = 0;
  *(v3 + 160) = a2;
  *(v3 + 168) = a3;
  return sub_1000E0554(a1);
}

uint64_t sub_1000E08F4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 184);

  sub_10003091C(*(v0 + 192), *(v0 + 200));
  v3 = *(v0 + 216);

  v4 = *(v0 + 232);

  sub_10003091C(*(v0 + 240), *(v0 + 248));
  v5 = *(v0 + 264);
}

uint64_t sub_1000E0954()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);
  v1 = *(v0 + 56);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);
  v2 = *(v0 + 152);

  v3 = *(v0 + 168);

  v4 = *(v0 + 184);

  sub_10003091C(*(v0 + 192), *(v0 + 200));
  v5 = *(v0 + 216);

  v6 = *(v0 + 232);

  sub_10003091C(*(v0 + 240), *(v0 + 248));
  v7 = *(v0 + 264);

  return v0;
}

uint64_t sub_1000E0A1C()
{
  sub_1000E0954();

  return swift_deallocClassInstance();
}

void sub_1000E0A74()
{
  v1 = *(v0 + 168);
}

uint64_t sub_1000E0AA4()
{
  sub_100005688(v0 + 24, &qword_100131118, &unk_1000ED6E0);
  v1 = *(v0 + 56);

  sub_100005688(v0 + 64, &unk_100131120, &unk_1000EAAF0);
  sub_100005688(v0 + 104, &unk_100131120, &unk_1000EAAF0);
  v2 = *(v0 + 152);

  return v0;
}

uint64_t sub_1000E0B3C()
{
  sub_1000E0AA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E0B94()
{
  type metadata accessor for ConnectionContextManager();
  v0 = swift_allocObject();
  *(v0 + 16) = &_swiftEmptyDictionarySingleton;
  v1 = type metadata accessor for OverlayBootstrap();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  *(v4 + 16) = makeJSNativeIntentDispatcher()();
  v5 = OBJC_IVAR____TtC13GameOverlayUI16OverlayBootstrap__cachedBootstrapResult;
  v6 = type metadata accessor for BootstrapResult();
  v7 = *(*(v6 - 8) + 56);
  v7(v4 + v5, 1, 1, v6);
  v7(v4 + v5, 1, 1, v6);
  result = ObservationRegistrar.init()();
  *(v0 + 24) = v4;
  qword_100135CF0 = v0;
  return result;
}

uint64_t sub_1000E0C84()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for DashboardConnectionContext.DismissBehavior(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DashboardConnectionContext.DismissBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000E0E4C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000E0E68(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1000E0E90()
{
  result = qword_100132C88;
  if (!qword_100132C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100132C88);
  }

  return result;
}

uint64_t sub_1000E0EDC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1000E0F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1000C547C(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1000CF354();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for RemoteAlertRequest();
    v22 = *(v15 - 8);
    sub_10003F35C(v14 + *(v22 + 72) * v9, a3);
    sub_10002C750(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for RemoteAlertRequest();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1000E106C(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_1000C55E0(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_10002C93C(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1000CF704();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_1000CCFC8(v4, v7);

  v9 = sub_1000C55E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_10002C93C(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1000E11B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000C547C(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1000CF868();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_1000321E8(v7, v10);
  *v3 = v10;
  return v12;
}

id sub_1000E1250(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForLegacyHandle:a1 error:&v5];
  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

BOOL sub_1000E1338(int a1, int a2, int a3)
{
  if (qword_100135B90 == -1)
  {
    v3 = dword_100135B80 < a1;
    if (dword_100135B80 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_1000E18C0();
    a2 = v6;
    a3 = v5;
    v3 = dword_100135B80 < a1;
    if (dword_100135B80 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_100135B84 > a2)
  {
    return 1;
  }

  if (dword_100135B84 < a2)
  {
    return 0;
  }

  return dword_100135B88 >= a3;
}

uint64_t sub_1000E13F8(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_100135B98 == -1)
  {
    if (qword_100135BA0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000E18D8();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_100135BA0)
    {
      return _availability_version_check();
    }
  }

  if (qword_100135B90 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000E18C0();
    a3 = v10;
    a4 = v9;
    v8 = dword_100135B80 < v11;
    if (dword_100135B80 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_100135B84 > a3)
      {
        return 1;
      }

      if (dword_100135B84 >= a3)
      {
        return dword_100135B88 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_100135B80 < a2;
  if (dword_100135B80 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1000E158C(uint64_t result)
{
  v1 = qword_100135BA0;
  if (qword_100135BA0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_100135BA0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_100135B80, &dword_100135B84, &dword_100135B88);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t View.onChange<A>(of:initial:_:)()
{
  return View.onChange<A>(of:initial:_:)();
}

{
  return View.onChange<A>(of:initial:_:)();
}

uint64_t View.staticIf<A, B>(_:then:)()
{
  return View.staticIf<A, B>(_:then:)();
}

{
  return View.staticIf<A, B>(_:then:)();
}

uint64_t ForEach<>.init(_:content:)()
{
  return ForEach<>.init(_:content:)();
}

{
  return ForEach<>.init(_:content:)();
}

uint64_t Dependency.init<A>(satisfying:with:)()
{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}

{
  return Dependency.init<A>(satisfying:with:)();
}