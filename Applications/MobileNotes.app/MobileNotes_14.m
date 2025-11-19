uint64_t sub_100267BB4()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10015DA04(&qword_1006C1828);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100267F10()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&unk_1006C16F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v4 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v2 + 32);
    if (v27 >= 64)
    {
      bzero((v2 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v27;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100268170()
{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10015DA04(&qword_1006C16E8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100271144(&unk_1006C6390, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_1002684CC()
{
  v1 = v0;
  v35 = type metadata accessor for URL();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  sub_10015DA04(&qword_1006C1758);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v29 = v0;
    v30 = v4;
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v33 = v2 + 32;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(v4 + 48) + *(v2 + 72) * (v15 | (v7 << 6));
      v19 = *(v2 + 32);
      v31 = *(v2 + 72);
      v32 = v19;
      v19(v34, v18, v35);
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = v32(*(v6 + 48) + v14 * v31, v34, v35);
      ++*(v6 + 16);
      v4 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v4 + 32);
    if (v27 >= 64)
    {
      bzero(v8, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v1 = v29;
    *(v4 + 16) = 0;
  }

  *v1 = v6;
  return result;
}

uint64_t sub_100268828()
{
  v1 = v0;
  v49 = type metadata accessor for URL();
  v2 = *(v49 - 8);
  __chkstk_darwin(v49);
  v4 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarkdownStyle(0);
  v47 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v48 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v50 = &v42 - v8;
  v9 = *v0;
  sub_10015DA04(&qword_1006C1798);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v45 = v0;
    v12 = 0;
    v13 = (v9 + 56);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v46 = (v2 + 48);
    v43 = (v2 + 8);
    v44 = (v2 + 32);
    v18 = result + 56;
    while (v16)
    {
      v29 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v32 = *(v47 + 72);
      v33 = v50;
      sub_100271954(*(v9 + 48) + v32 * (v29 | (v12 << 6)), v50, type metadata accessor for MarkdownStyle);
      Hasher.init(_seed:)();
      v34 = v33;
      v35 = v48;
      sub_100270FE4(v34, v48, type metadata accessor for MarkdownStyle);
      v36 = (*v46)(v35, 6, v49);
      if (v36 <= 2)
      {
        if (v36)
        {
          if (v36 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1uLL);
          }
        }

        else
        {
          v19 = *v44;
          v20 = v4;
          v42 = v9;
          v21 = v4;
          v22 = v49;
          v19(v20, v48, v49);
          Hasher._combine(_:)(6uLL);
          sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          v23 = v21;
          v24 = v22;
          v4 = v21;
          v9 = v42;
          (*v43)(v23, v24);
        }
      }

      else if (v36 > 4)
      {
        if (v36 == 5)
        {
          Hasher._combine(_:)(4uLL);
        }

        else
        {
          Hasher._combine(_:)(5uLL);
        }
      }

      else if (v36 == 3)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(3uLL);
      }

      result = Hasher._finalize()();
      v25 = -1 << *(v11 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v25) >> 6;
        while (++v27 != v38 || (v37 & 1) == 0)
        {
          v39 = v27 == v38;
          if (v27 == v38)
          {
            v27 = 0;
          }

          v37 |= v39;
          v40 = *(v18 + 8 * v27);
          if (v40 != -1)
          {
            v28 = __clz(__rbit64(~v40)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_43:
        __break(1u);
        return result;
      }

      v28 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      result = sub_100271954(v50, *(v11 + 48) + v28 * v32, type metadata accessor for MarkdownStyle);
      ++*(v11 + 16);
    }

    v30 = v12;
    while (1)
    {
      v12 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v12 >= v17)
      {
        break;
      }

      v31 = v13[v12];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v16 = (v31 - 1) & v31;
        goto LABEL_17;
      }
    }

    v41 = 1 << *(v9 + 32);
    if (v41 >= 64)
    {
      bzero(v13, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v41;
    }

    v1 = v45;
    *(v9 + 16) = 0;
  }

  *v1 = v11;
  return result;
}

uint64_t sub_100268D3C()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&unk_1006C17F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v24 = v1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    if (v7 >= 64)
    {
      bzero((v2 + 56), 8 * v10);
    }

    else
    {
      *v6 = -1 << v7;
    }

    v1 = v24;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_100268F60()
{
  v1 = v0;
  v2 = type metadata accessor for AccountEntity();
  v30 = *(v2 - 8);
  v31 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C17B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v32 = *(v30 + 72);
      sub_100271954(v19 + v32 * (v16 | (v8 << 6)), v4, type metadata accessor for AccountEntity);
      Hasher.init(_seed:)();
      type metadata accessor for AccountID();
      sub_100271144(&unk_1006C4040, &type metadata accessor for AccountID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for URL();
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100271954(v4, *(v7 + 48) + v15 * v32, type metadata accessor for AccountEntity);
      ++*(v7 + 16);
      v5 = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero(v9, ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v1 = v28;
    *(v5 + 16) = 0;
  }

  *v1 = v7;
  return result;
}

unint64_t sub_100269330(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

uint64_t sub_1002693B4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for FolderEntity();
  v8 = *(v7 - 1);
  __chkstk_darwin(v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v34 = v8;
  v35 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_100267054();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10026B52C();
      goto LABEL_26;
    }

    sub_10026C574();
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for FolderID();
  sub_100271144(&qword_1006C1B50, &type metadata accessor for FolderID);
  dispatch thunk of Hashable.hash(into:)();
  type metadata accessor for URL();
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  dispatch thunk of Hashable.hash(into:)();
  v14 = (a1 + v7[6]);
  v15 = v14[1];
  v38 = *v14;
  String.hash(into:)();
  v16 = (a1 + v7[7]);
  v17 = *v16;
  v36 = v16[1];
  v37 = v17;
  String.hash(into:)();
  v33 = *(a1 + v7[8]);
  Hasher._combine(_:)(v33);
  v32 = *(a1 + v7[9]);
  Hasher._combine(_:)(v32);
  v18 = Hasher._finalize()();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v8 + 72);
    while (1)
    {
      sub_100270FE4(*(v13 + 48) + v21 * a2, v10, type metadata accessor for FolderEntity);
      if (static FolderID.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        v22 = &v10[v7[6]];
        v23 = *v22 == v38 && *(v22 + 1) == v15;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v24 = &v10[v7[7]];
          v25 = *v24 == v37 && *(v24 + 1) == v36;
          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v33 == v10[v7[8]] && v32 == v10[v7[9]])
          {
            break;
          }
        }
      }

      sub_100270DF4(v10, type metadata accessor for FolderEntity);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_100270DF4(v10, type metadata accessor for FolderEntity);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_26:
  v26 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100271954(a1, *(v26 + 48) + *(v34 + 72) * a2, type metadata accessor for FolderEntity);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

Swift::Int sub_100269798(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100267454();
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_10026B74C();
      goto LABEL_12;
    }

    sub_10026C944();
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100024F40(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100024F9C(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100269910(uint64_t a1, unint64_t a2, char a3)
{
  v60 = a1;
  v59 = sub_10015DA04(&qword_1006C1240);
  __chkstk_darwin(v59);
  v7 = &v41 - v6;
  v48 = _s3TagVMa();
  v43 = *(v48 - 8);
  __chkstk_darwin(v48);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10015DA04(&unk_1006C1710);
  v14 = __chkstk_darwin(v13 - 8);
  v51 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v41 - v16;
  v18 = *(*v3 + 16);
  v19 = *(*v3 + 24);
  v41 = v3;
  if (v19 > v18 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1002676B4();
  }

  else
  {
    if (v19 > v18)
    {
      sub_10026B8D8();
      goto LABEL_27;
    }

    sub_10026CB70();
  }

  v44 = *v3;
  Hasher.init(_seed:)();
  sub_100006038(v60, v17, &unk_1006C1710);
  v57 = *(v11 + 48);
  v58 = v11 + 48;
  if (v57(v17, 1, v10) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v20 = v45;
    (*(v11 + 32))(v45, v17, v10);
    Hasher._combine(_:)(1u);
    sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v20, v10);
  }

  v21 = (v60 + *(v48 + 20));
  v22 = *v21;
  v49 = v21[1];
  v50 = v22;
  String.hash(into:)();
  v23 = Hasher._finalize()();
  v24 = v44;
  v25 = -1 << *(v44 + 32);
  a2 = v23 & ~v25;
  v56 = v44 + 56;
  if ((*(v44 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v53 = v10;
    v55 = ~v25;
    v42 = (v11 + 32);
    v54 = *(v43 + 72);
    v47 = (v11 + 8);
    v52 = v9;
    do
    {
      sub_100270FE4(*(v24 + 48) + v54 * a2, v9, _s3TagVMa);
      v26 = *(v59 + 48);
      sub_100006038(v9, v7, &unk_1006C1710);
      sub_100006038(v60, &v7[v26], &unk_1006C1710);
      v27 = v53;
      v28 = v57;
      if (v57(v7, 1, v53) == 1)
      {
        v29 = v28(&v7[v26], 1, v27);
        v9 = v52;
        if (v29 != 1)
        {
          goto LABEL_14;
        }

        sub_1000073B4(v7, &unk_1006C1710);
      }

      else
      {
        v30 = v51;
        sub_100006038(v7, v51, &unk_1006C1710);
        if (v28(&v7[v26], 1, v27) == 1)
        {
          (*v47)(v30, v27);
          v9 = v52;
LABEL_14:
          sub_1000073B4(v7, &qword_1006C1240);
          goto LABEL_15;
        }

        v31 = v45;
        (*v42)(v45, &v7[v26], v27);
        sub_100271144(&qword_1006C1720, &type metadata accessor for Date);
        v46 = dispatch thunk of static Equatable.== infix(_:_:)();
        v32 = *v47;
        v33 = v31;
        v24 = v44;
        (*v47)(v33, v27);
        v32(v51, v27);
        sub_1000073B4(v7, &unk_1006C1710);
        v9 = v52;
        if ((v46 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      v34 = &v9[*(v48 + 20)];
      v35 = *v34 == v50 && *(v34 + 1) == v49;
      if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_100270DF4(v9, _s3TagVMa);
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

LABEL_15:
      sub_100270DF4(v9, _s3TagVMa);
      a2 = (a2 + 1) & v55;
    }

    while (((*(v56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_27:
  v36 = *v41;
  *(*v41 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100271954(v60, *(v36 + 48) + *(v43 + 72) * a2, _s3TagVMa);
  v38 = *(v36 + 16);
  v39 = __OFADD__(v38, 1);
  v40 = v38 + 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(v36 + 16) = v40;
  }

  return result;
}

uint64_t sub_10026A04C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100267BB4();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10026BC90(&type metadata accessor for UUID, &qword_1006C1828);
      goto LABEL_12;
    }

    sub_10026D048();
  }

  v12 = *v3;
  sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100271144(&qword_1006C1820, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_10026A314(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100267F10();
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10026BB0C();
      goto LABEL_16;
    }

    sub_10026D364();
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10026A494(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100268170();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10026BC90(&type metadata accessor for IndexPath, &qword_1006C16E8);
      goto LABEL_12;
    }

    sub_10026D59C();
  }

  v12 = *v3;
  sub_100271144(&unk_1006C6390, &type metadata accessor for IndexPath);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100271144(&qword_1006C16E0, &type metadata accessor for IndexPath);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10026A75C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002684CC();
  }

  else
  {
    if (v11 > v10)
    {
      sub_10026BC90(&type metadata accessor for URL, &qword_1006C1758);
      goto LABEL_12;
    }

    sub_10026D8B8();
  }

  v12 = *v3;
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_100271144(&qword_1006C1750, &type metadata accessor for URL);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10026AA24(uint64_t a1, unint64_t a2, char a3)
{
  v51 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10015DA04(&qword_1006C1790);
  __chkstk_darwin(v50);
  v11 = &v38 - v10;
  v12 = type metadata accessor for MarkdownStyle(0);
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v18 = &v38 - v17;
  v19 = *(*v3 + 16);
  v20 = *(*v3 + 24);
  v47 = v13;
  v48 = v3;
  if (v20 <= v19 || (a3 & 1) == 0)
  {
    v45 = v16;
    if (a3)
    {
      v39 = v15;
      sub_100268828();
    }

    else
    {
      if (v20 > v19)
      {
        sub_10026BEC8();
        goto LABEL_34;
      }

      v39 = v15;
      sub_10026DBD4();
    }

    v21 = *v3;
    Hasher.init(_seed:)();
    sub_1002F804C();
    v22 = Hasher._finalize()();
    v23 = -1 << *(v21 + 32);
    a2 = v22 & ~v23;
    v46 = v21 + 56;
    if ((*(v21 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v42 = v9;
      v49 = ~v23;
      v24 = *(v13 + 72);
      v25 = (v7 + 48);
      v44 = (v7 + 8);
      v40 = (v7 + 32);
      v41 = v24;
      v26 = v46;
      while (1)
      {
        sub_100270FE4(*(v21 + 48) + v24 * a2, v18, type metadata accessor for MarkdownStyle);
        v27 = *(v50 + 48);
        sub_100270FE4(v18, v11, type metadata accessor for MarkdownStyle);
        sub_100270FE4(v51, &v11[v27], type metadata accessor for MarkdownStyle);
        v28 = *v25;
        v29 = (*v25)(v11, 6, v6);
        if (v29 > 2)
        {
          if (v29 > 4)
          {
            if (v29 == 5)
            {
              sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
              if (v28(&v11[v27], 6, v6) == 5)
              {
                goto LABEL_37;
              }
            }

            else
            {
              sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
              if (v28(&v11[v27], 6, v6) == 6)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v29 == 3)
          {
            sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
            if (v28(&v11[v27], 6, v6) == 3)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
            if (v28(&v11[v27], 6, v6) == 4)
            {
              goto LABEL_37;
            }
          }

          goto LABEL_29;
        }

        if (v29)
        {
          break;
        }

        v30 = v45;
        sub_100270FE4(v11, v45, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6))
        {
          sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
          (*v44)(v30, v6);
          v26 = v46;
LABEL_29:
          sub_1000073B4(v11, &qword_1006C1790);
          goto LABEL_30;
        }

        v31 = v42;
        (*v40)(v42, &v11[v27], v6);
        v43 = static URL.== infix(_:_:)();
        v32 = *v44;
        (*v44)(v31, v6);
        sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
        v32(v30, v6);
        v24 = v41;
        v26 = v46;
        if (v43)
        {
          goto LABEL_37;
        }

        sub_100270DF4(v11, type metadata accessor for MarkdownStyle);
LABEL_30:
        a2 = (a2 + 1) & v49;
        if (((*(v26 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      if (v29 == 1)
      {
        sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6) == 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_100270DF4(v18, type metadata accessor for MarkdownStyle);
        if (v28(&v11[v27], 6, v6) == 2)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_29;
    }
  }

LABEL_34:
  v33 = *v48;
  *(*v48 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100271954(v51, *(v33 + 48) + *(v47 + 72) * a2, type metadata accessor for MarkdownStyle);
  v35 = *(v33 + 16);
  v36 = __OFADD__(v35, 1);
  v37 = v35 + 1;
  if (v36)
  {
    __break(1u);
LABEL_37:
    sub_100270DF4(v11, type metadata accessor for MarkdownStyle);
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v33 + 16) = v37;
  }

  return result;
}

uint64_t sub_10026B0B0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100268D3C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10026C0D4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10026E0AC();
  }

  v8 = *v3;
  result = static Hasher._hash(seed:_:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10026B1D0(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for AccountEntity();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v8;
  v30 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_100268F60();
  }

  else
  {
    if (v12 > v11)
    {
      sub_10026C368();
      goto LABEL_19;
    }

    sub_10026E29C();
  }

  v13 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for AccountID();
  sub_100271144(&unk_1006C4040, &type metadata accessor for AccountID);
  dispatch thunk of Hashable.hash(into:)();
  v14 = *(v7 + 20);
  type metadata accessor for URL();
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  v31 = v14;
  dispatch thunk of Hashable.hash(into:)();
  v15 = (a1 + *(v7 + 24));
  v16 = *v15;
  v17 = v15[1];
  String.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v13 + 32);
  a2 = v18 & ~v19;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v8 + 72);
    while (1)
    {
      sub_100270FE4(*(v13 + 48) + v21 * a2, v10, type metadata accessor for AccountEntity);
      if (static AccountID.== infix(_:_:)() & 1) != 0 && (static URL.== infix(_:_:)())
      {
        v22 = &v10[*(v7 + 24)];
        v23 = *v22 == v16 && *(v22 + 1) == v17;
        if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      sub_100270DF4(v10, type metadata accessor for AccountEntity);
      a2 = (a2 + 1) & v20;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_100270DF4(v10, type metadata accessor for AccountEntity);
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_19:
  v24 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100271954(a1, *(v24 + 48) + *(v29 + 72) * a2, type metadata accessor for AccountEntity);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }

  return result;
}

void *sub_10026B52C()
{
  v1 = v0;
  v2 = type metadata accessor for FolderEntity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C1B58);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100270FE4(*(v6 + 48) + v21, v5, type metadata accessor for FolderEntity);
        result = sub_100271954(v5, *(v8 + 48) + v21, type metadata accessor for FolderEntity);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10026B74C()
{
  v1 = v0;
  sub_10015DA04(&qword_1006C1788);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100024F40(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10026B8D8()
{
  v1 = v0;
  v2 = _s3TagVMa();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C1728);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100270FE4(*(v6 + 48) + v21, v5, _s3TagVMa);
        result = sub_100271954(v5, *(v8 + 48) + v21, _s3TagVMa);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10026BB0C()
{
  v1 = v0;
  sub_10015DA04(&unk_1006C16F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_10026BC90(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  sub_10015DA04(a2);
  v9 = *v2;
  v10 = static _SetStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

void *sub_10026BEC8()
{
  v1 = v0;
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C1798);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100270FE4(*(v6 + 48) + v21, v5, type metadata accessor for MarkdownStyle);
        result = sub_100271954(v5, *(v8 + 48) + v21, type metadata accessor for MarkdownStyle);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

void *sub_10026C0D4()
{
  v1 = v0;
  sub_10015DA04(&unk_1006C17F0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

id sub_10026C228(uint64_t *a1)
{
  v2 = v1;
  sub_10015DA04(a1);
  v3 = *v1;
  v4 = static _SetStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_10026C368()
{
  v1 = v0;
  v2 = type metadata accessor for AccountEntity();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006C17B0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
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
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_100270FE4(*(v6 + 48) + v21, v5, type metadata accessor for AccountEntity);
        result = sub_100271954(v5, *(v8 + 48) + v21, type metadata accessor for AccountEntity);
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
        goto LABEL_16;
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
LABEL_16:

    *v1 = v8;
  }

  return result;
}

uint64_t sub_10026C574()
{
  v1 = v0;
  v2 = type metadata accessor for FolderEntity();
  v30 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C1B58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v28 = v0;
    v29 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v31 = *(v30 + 72);
      sub_100270FE4(v19 + v31 * (v16 | (v8 << 6)), v4, type metadata accessor for FolderEntity);
      Hasher.init(_seed:)();
      type metadata accessor for FolderID();
      sub_100271144(&qword_1006C1B50, &type metadata accessor for FolderID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for URL();
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      Hasher._combine(_:)(v4[*(v2 + 32)]);
      Hasher._combine(_:)(v4[*(v2 + 36)]);
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v5 = v29;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v29;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100271954(v4, *(v7 + 48) + v15 * v31, type metadata accessor for FolderEntity);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v28;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

uint64_t sub_10026C944()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&qword_1006C1788);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      sub_100024F40(*(v2 + 48) + 40 * (v15 | (v5 << 6)), v25);
      result = AnyHashable._rawHashValue(seed:)(*(v4 + 40));
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v10 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v10 + 8 * v20);
          if (v24 != -1)
          {
            v11 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v19) & ~*(v10 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = *(v4 + 48) + 40 * v11;
      v13 = v25[0];
      v14 = v25[1];
      *(v12 + 32) = v26;
      *v12 = v13;
      *(v12 + 16) = v14;
      ++*(v4 + 16);
    }

    v16 = v5;
    while (1)
    {
      v5 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v17 = *(v2 + 56 + 8 * v5);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v8 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10026CB70()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v42 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - v6;
  v8 = _s3TagVMa();
  v46 = *(v8 - 8);
  __chkstk_darwin(v8);
  v48 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  sub_10015DA04(&qword_1006C1728);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v45 = v2;
    v38 = v0;
    v13 = 0;
    v14 = v10 + 56;
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 56);
    v18 = (v15 + 63) >> 6;
    v43 = (v3 + 48);
    v44 = v10;
    v39 = (v3 + 8);
    v40 = (v3 + 32);
    v19 = result + 56;
    v41 = v8;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = *(v10 + 48);
      v47 = *(v46 + 72);
      v25 = v48;
      sub_100270FE4(v24 + v47 * (v21 | (v13 << 6)), v48, _s3TagVMa);
      Hasher.init(_seed:)();
      sub_100006038(v25, v7, &unk_1006C1710);
      v26 = v45;
      if ((*v43)(v7, 1, v45) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v27 = v7;
        v28 = v42;
        (*v40)(v42, v27, v26);
        Hasher._combine(_:)(1u);
        sub_100271144(&qword_1006C1238, &type metadata accessor for Date);
        dispatch thunk of Hashable.hash(into:)();
        v29 = v28;
        v7 = v27;
        (*v39)(v29, v26);
      }

      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      v10 = v44;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_100271954(v48, *(v12 + 48) + v20 * v47, _s3TagVMa);
      ++*(v12 + 16);
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v38;
        goto LABEL_29;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v1 = v12;
  }

  return result;
}

uint64_t sub_10026D048()
{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C1828);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10026D364()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&unk_1006C16F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v4 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v10 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v10 + 8 * v21);
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~*(v10 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_10026D59C()
{
  v1 = v0;
  v32 = type metadata accessor for IndexPath();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C16E8);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100271144(&unk_1006C6390, &type metadata accessor for IndexPath);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10026D8B8()
{
  v1 = v0;
  v32 = type metadata accessor for URL();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C1758);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  result = v5;
  if (*(v5 + 16))
  {
    v27 = v0;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v30 = v2 + 16;
    v31 = v2;
    v14 = v6 + 56;
    v28 = (v2 + 32);
    v29 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v31 + 72);
      (*(v31 + 16))(v4, *(result + 48) + v19 * (v16 | (v8 << 6)), v32);
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      (*v28)(*(v6 + 48) + v15 * v19, v4, v32);
      ++*(v6 + 16);
      result = v29;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_10026DBD4()
{
  v1 = v0;
  v48 = type metadata accessor for URL();
  v2 = *(v48 - 8);
  __chkstk_darwin(v48);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MarkdownStyle(0);
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4 - 8);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v49 = &v40 - v8;
  v9 = *v0;
  sub_10015DA04(&qword_1006C1798);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v0;
    v12 = 0;
    v13 = v9 + 56;
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 56);
    v17 = (v14 + 63) >> 6;
    v45 = v9;
    v46 = (v2 + 48);
    v41 = (v2 + 8);
    v42 = (v2 + 32);
    v18 = result + 56;
    while (v16)
    {
      v27 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_18:
      v30 = *(v5 + 72);
      v31 = *(v9 + 48) + v30 * (v27 | (v12 << 6));
      v32 = v49;
      sub_100270FE4(v31, v49, type metadata accessor for MarkdownStyle);
      Hasher.init(_seed:)();
      v33 = v32;
      v34 = v47;
      sub_100270FE4(v33, v47, type metadata accessor for MarkdownStyle);
      v35 = (*v46)(v34, 6, v48);
      if (v35 <= 2)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1uLL);
          }
        }

        else
        {
          v19 = *v42;
          v20 = v48;
          v40 = v5;
          v21 = v44;
          v19();
          Hasher._combine(_:)(6uLL);
          sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
          dispatch thunk of Hashable.hash(into:)();
          v22 = v21;
          v5 = v40;
          (*v41)(v22, v20);
        }
      }

      else if (v35 > 4)
      {
        if (v35 == 5)
        {
          Hasher._combine(_:)(4uLL);
        }

        else
        {
          Hasher._combine(_:)(5uLL);
        }
      }

      else if (v35 == 3)
      {
        Hasher._combine(_:)(2uLL);
      }

      else
      {
        Hasher._combine(_:)(3uLL);
      }

      result = Hasher._finalize()();
      v23 = -1 << *(v11 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v18 + 8 * (v24 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v23) >> 6;
        while (++v25 != v37 || (v36 & 1) == 0)
        {
          v38 = v25 == v37;
          if (v25 == v37)
          {
            v25 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v25);
          if (v39 != -1)
          {
            v26 = __clz(__rbit64(~v39)) + (v25 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_41;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v18 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v18 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = sub_100271954(v49, *(v11 + 48) + v26 * v30, type metadata accessor for MarkdownStyle);
      ++*(v11 + 16);
      v9 = v45;
    }

    v28 = v12;
    while (1)
    {
      v12 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v43;
        goto LABEL_39;
      }

      v29 = *(v13 + 8 * v12);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v16 = (v29 - 1) & v29;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
  }

  else
  {

LABEL_39:
    *v1 = v11;
  }

  return result;
}

uint64_t sub_10026E0AC()
{
  v1 = v0;
  v2 = *v0;
  sub_10015DA04(&unk_1006C17F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = static Hasher._hash(seed:_:)();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_10026E29C()
{
  v1 = v0;
  v2 = type metadata accessor for AccountEntity();
  v29 = *(v2 - 8);
  v30 = v2;
  __chkstk_darwin(v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_10015DA04(&qword_1006C17B0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v27 = v0;
    v28 = v5;
    v8 = 0;
    v9 = v5 + 56;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48);
      v31 = *(v29 + 72);
      sub_100270FE4(v19 + v31 * (v16 | (v8 << 6)), v4, type metadata accessor for AccountEntity);
      Hasher.init(_seed:)();
      type metadata accessor for AccountID();
      sub_100271144(&unk_1006C4040, &type metadata accessor for AccountID);
      dispatch thunk of Hashable.hash(into:)();
      type metadata accessor for URL();
      sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        v5 = v28;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v5 = v28;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = sub_100271954(v4, *(v7 + 48) + v15 * v31, type metadata accessor for AccountEntity);
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v27;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v7;
  }

  return result;
}

unsigned __int8 *sub_10026E650@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 > 0xFD)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2;
  }

  return result;
}

id sub_10026E668(void *a1, _BYTE *a2, unint64_t *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_10015DA04(&unk_1006C1710);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for NoteID();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000054A4(0, a3);
  ICSearchIndexableNote<>.entityIdentifier.getter();
  (*(v14 + 32))(&a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_id], v16, v13);
  v17 = [a1 title];
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title];
  *v22 = v19;
  v22[1] = v21;
  v23 = [a1 creationDate];
  if (v23)
  {
    v24 = v23;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = type metadata accessor for Date();
  v27 = *(*(v26 - 8) + 56);
  v28 = 1;
  v27(v12, v25, 1, v26);
  sub_1001F7498(v12, &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_creationDate], &unk_1006C1710);
  v29 = [a1 modificationDate];
  if (v29)
  {
    v30 = v29;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = 0;
  }

  v27(v10, v28, 1, v26);
  sub_1001F7498(v10, &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_modificationDate], &unk_1006C1710);
  v31 = [a1 folder];
  if (v31)
  {
    v32 = [v31 localizedTitle];
    swift_unknownObjectRelease();
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName];
  *v36 = v33;
  v36[1] = v35;
  v37 = [a1 folderManagedIdentifier];
  if (v37)
  {
    v38 = v37;
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v42 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderManagedIdentifier];
  *v42 = v39;
  v42[1] = v41;
  v43 = [a1 isModernNote];

  a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_isModernNote] = v43;
  v45.receiver = a2;
  v45.super_class = ObjectType;
  return objc_msgSendSuper2(&v45, "init");
}

id sub_10026EA40(void *a1, _BYTE *a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_10015DA04(&unk_1006C1710);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v43 - v9;
  v11 = type metadata accessor for NoteID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ICSearchIndexableNote<>.entityIdentifier.getter();
  (*(v12 + 32))(&a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_id], v14, v11);
  v15 = [a1 title];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0xE000000000000000;
  }

  v20 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_title];
  *v20 = v17;
  v20[1] = v19;
  v21 = [a1 creationDate];
  if (v21)
  {
    v22 = v21;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = type metadata accessor for Date();
  v25 = *(*(v24 - 8) + 56);
  v26 = 1;
  v25(v10, v23, 1, v24);
  sub_1001F7498(v10, &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_creationDate], &unk_1006C1710);
  v27 = [a1 modificationDate];
  if (v27)
  {
    v28 = v27;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  v25(v8, v26, 1, v24);
  sub_1001F7498(v8, &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_modificationDate], &unk_1006C1710);
  v29 = [a1 folder];
  if (v29)
  {
    v30 = [v29 localizedTitle];
    swift_unknownObjectRelease();
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderName];
  *v34 = v31;
  v34[1] = v33;
  v35 = [a1 folderManagedIdentifier];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v40 = &a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_folderManagedIdentifier];
  *v40 = v37;
  v40[1] = v39;
  v41 = [a1 isModernNote];

  a2[OBJC_IVAR____TtC11MobileNotesP33_10D1876D3C9D5070F0B0F84A41ABC8CB16NoteSearchResult_isModernNote] = v41;
  v43.receiver = a2;
  v43.super_class = ObjectType;
  return objc_msgSendSuper2(&v43, "init");
}

uint64_t sub_10026EE08()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

id sub_10026EF78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    sub_10015DA04(&qword_1006BFBE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100531E30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v8;
    _StringGuts.grow(_:)(87);
    v9._countAndFlagsBits = 0x69746E4565746F4ELL;
    v9._object = 0xEA00000000007974;
    String.append(_:)(v9);
    v10._object = 0x80000001005603E0;
    v10._countAndFlagsBits = 0xD000000000000053;
    String.append(_:)(v10);
    v11 = [a3 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_1001E27A0(inited);
    swift_setDeallocating();
    sub_1000073B4(inited + 32, &unk_1006BFA10);
    sub_100271144(&qword_1006BE4D0, type metadata accessor for ICError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_beginAccess();
    v16 = *v4;
    *v4 = 0;
    v5 = 0;

    v3 = 0;
  }

  v17 = v3;
  return v5;
}

uint64_t sub_10026F190(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006BFEC0);
    sub_100005B0C(&qword_1006C63A0, &qword_1006BFEC0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = NSManagedObjectID_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006BFEC0, NSManagedObjectID_ptr, &unk_1006C16D0, &unk_10053D0C0);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10026F31C(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006C1B60);
    sub_100005B0C(&unk_1006C1B70, &qword_1006C1B60);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = ICCloudSyncingObject_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006C1B60, ICCloudSyncingObject_ptr, &qword_1006C1B68, "lR\n");

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10026F4A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_100024F40(v4, v5);
      sub_100264DA0(v6, v5);
      sub_100024F9C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10026F534(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for NoteSearchResult(0);
    sub_100271144(&qword_1006BF428, type metadata accessor for NoteSearchResult);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100021CAC(&v8, v6, type metadata accessor for NoteSearchResult, &qword_1006C19E0, &unk_10053D388, type metadata accessor for NoteSearchResult);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10026F6DC(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = ICHashtag_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006C63E0, ICHashtag_ptr, &unk_1006C1760, &unk_10053D108);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_10026F868(uint64_t a1)
{
  v2 = _s3TagVMa();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100271144(&unk_1006C1700, _s3TagVMa);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100270FE4(v11, v6, _s3TagVMa);
      sub_100264F10(v8, v6);
      sub_100270DF4(v8, _s3TagVMa);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_10026F9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v20 - v11;
  v13 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v13 - 8);
  v15 = v20 - v14;
  sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
  v16 = Set.init(minimumCapacity:)();
  v20[4] = a3;
  v21 = v16;
  v20[1] = a1;
  v20[2] = 0;
  v20[3] = a2;
  sub_1002299EC(v15);
  v17 = *(v7 + 48);
  if (v17(v15, 1, v6) != 1)
  {
    v18 = *(v7 + 32);
    do
    {
      v18(v10, v15, v6);
      sub_100265690(v12, v10);
      (*(v7 + 8))(v12, v6);
      sub_1002299EC(v15);
    }

    while (v17(v15, 1, v6) != 1);
    return v21;
  }

  return v16;
}

uint64_t sub_10026FC34(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100271144(&qword_1006C07C8, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100265690(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_10026FDD0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100265994(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10026FE68(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100271144(&unk_1006C6390, &type metadata accessor for IndexPath);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100265AE4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100270004(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for AttachmentSearchResult(0);
    sub_100271144(&qword_1006C1810, type metadata accessor for AttachmentSearchResult);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100021CAC(&v8, v6, type metadata accessor for AttachmentSearchResult, &qword_1006C1818, &unk_10053D160, type metadata accessor for AttachmentSearchResult);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1002701AC(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  sub_100271144(&qword_1006C07C0, &type metadata accessor for URL);
  result = Set.init(minimumCapacity:)();
  v17 = result;
  if (v9)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_100265DC4(v8, v6);
      (*(v11 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
    return v17;
  }

  return result;
}

uint64_t sub_100270348(uint64_t a1)
{
  v2 = type metadata accessor for MarkdownStyle(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  sub_100271144(&unk_1006C17A0, type metadata accessor for MarkdownStyle);
  result = Set.init(minimumCapacity:)();
  v14 = result;
  if (v9)
  {
    v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v12 = *(v3 + 72);
    do
    {
      sub_100270FE4(v11, v6, type metadata accessor for MarkdownStyle);
      sub_1002660A4(v8, v6);
      sub_100270DF4(v8, type metadata accessor for MarkdownStyle);
      v11 += v12;
      --v9;
    }

    while (v9);
    return v14;
  }

  return result;
}

uint64_t sub_1002704D8(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006C5F80);
    sub_100005B0C(&qword_1006C1800, &qword_1006C5F80);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = CKShareParticipant_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006C5F80, CKShareParticipant_ptr, &qword_1006C1808, &unk_10053D158);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100270664(unint64_t a1)
{
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_1000054A4(0, &qword_1006C2D00);
    sub_100005B0C(&qword_1006C17B8, &qword_1006C2D00);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (v2)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    v6 = 0;
    v2 = NSManagedObject_ptr;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      sub_100014550(&v9, v7, &qword_1006C2D00, NSManagedObject_ptr, &unk_1006C17C0, &unk_10053D138);

      ++v6;
      if (v8 == v4)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1002707F0(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    type metadata accessor for TableSearchResult(0);
    sub_100271144(&qword_1006BF3C8, type metadata accessor for TableSearchResult);
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100021CAC(&v8, v6, type metadata accessor for TableSearchResult, &unk_1006C17D0, &unk_10053D140, type metadata accessor for TableSearchResult);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100270998()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t sub_100270AF8()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t sub_100270C4C()
{
  sub_10015DA04(&unk_1006BCA40);
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  v0 = AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&unk_1006BCBB0);
  swift_getKeyPath();
  IntentParameterDependency.__allocating_init<A, B>(_:)();
  return v0;
}

uint64_t sub_100270DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100270E74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A600;

  return sub_100261420(a1, v5, v4);
}

uint64_t sub_100270F20(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000A1FC;

  return sub_1002618B8(a1, v5, v4);
}

uint64_t sub_100270FE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100271050()
{
  result = qword_1006C14A0;
  if (!qword_1006C14A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C14A0);
  }

  return result;
}

unint64_t sub_1002710A8()
{
  result = qword_1006C14A8;
  if (!qword_1006C14A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C14A8);
  }

  return result;
}

uint64_t sub_100271144(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100271190()
{
  result = qword_1006C14B8;
  if (!qword_1006C14B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C14B8);
  }

  return result;
}

unint64_t sub_100271230()
{
  result = qword_1006C14C8;
  if (!qword_1006C14C8)
  {
    sub_10017992C(&unk_1006C14D0);
    sub_100271144(&qword_1006BE480, type metadata accessor for NoteEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C14C8);
  }

  return result;
}

void sub_1002712F4()
{
  type metadata accessor for NoteID();
  if (v0 <= 0x3F)
  {
    sub_10027162C(319, &qword_1006C0EE8, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

__n128 sub_1002713F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_10027140C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 29))
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

uint64_t sub_100271454(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 29) = 1;
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

    *(result + 29) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002714AC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_100271500()
{
  sub_10027162C(319, &qword_1006C1670, type metadata accessor for FolderEntity);
  if (v0 <= 0x3F)
  {
    type metadata accessor for ICQueryType();
    if (v1 <= 0x3F)
    {
      sub_100271680();
      if (v2 <= 0x3F)
      {
        sub_100271730(319, &qword_1006C1688, &qword_1006C1498);
        if (v3 <= 0x3F)
        {
          sub_100271730(319, &qword_1006C1690, &qword_1006C1490);
          if (v4 <= 0x3F)
          {
            sub_1002717A0();
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10027162C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100271680()
{
  if (!qword_1006C2F10)
  {
    sub_1002716C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C2F10);
    }
  }
}

void sub_1002716C8()
{
  if (!qword_1006C1680)
  {
    sub_1000054A4(255, &qword_1006BFEC0);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_1006C1680);
    }
  }
}

void sub_100271730(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10017992C(a3);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1002717A0()
{
  if (!qword_1006C1698)
  {
    sub_10017992C(&qword_1006C1490);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006C1698);
    }
  }
}

unint64_t sub_100271820()
{
  result = qword_1006C1890;
  if (!qword_1006C1890)
  {
    sub_10017992C(&qword_1006C5430);
    sub_100271144(&qword_1006C18A0, type metadata accessor for TagEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1890);
  }

  return result;
}

uint64_t sub_10027190C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100262168(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_100271954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002719C8()
{
  result = qword_1006C1A88;
  if (!qword_1006C1A88)
  {
    sub_10017992C(&qword_1006C1A80);
    sub_100271A54();
    sub_100271C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1A88);
  }

  return result;
}

unint64_t sub_100271A54()
{
  result = qword_1006C1A90;
  if (!qword_1006C1A90)
  {
    sub_10017992C(&qword_1006C1A50);
    sub_100271AE0();
    sub_100271B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1A90);
  }

  return result;
}

unint64_t sub_100271AE0()
{
  result = qword_1006C1A98;
  if (!qword_1006C1A98)
  {
    sub_10017992C(&qword_1006C1A48);
    sub_1000060B4(&qword_1006C1AA0, &qword_1006C1A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1A98);
  }

  return result;
}

unint64_t sub_100271B90()
{
  result = qword_1006C1AA8;
  if (!qword_1006C1AA8)
  {
    sub_10017992C(&qword_1006C1A60);
    sub_1000060B4(&qword_1006C1AB0, &qword_1006C1AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1AA8);
  }

  return result;
}

unint64_t sub_100271C40()
{
  result = qword_1006C1AC0;
  if (!qword_1006C1AC0)
  {
    sub_10017992C(&qword_1006C1A38);
    sub_100271D14(&qword_1006C1AC8);
    sub_100271D14(&qword_1006C1AD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1AC0);
  }

  return result;
}

uint64_t sub_100271D14(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C1A78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100271D8C()
{
  result = qword_1006C1B28;
  if (!qword_1006C1B28)
  {
    sub_10017992C(&qword_1006C1B20);
    sub_100271E18();
    sub_100271C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B28);
  }

  return result;
}

unint64_t sub_100271E18()
{
  result = qword_1006C1B30;
  if (!qword_1006C1B30)
  {
    sub_10017992C(&qword_1006C1B08);
    sub_100271EA4();
    sub_100271B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B30);
  }

  return result;
}

unint64_t sub_100271EA4()
{
  result = qword_1006C1B38;
  if (!qword_1006C1B38)
  {
    sub_10017992C(&qword_1006C1B00);
    sub_1000060B4(&qword_1006C1B40, &qword_1006C1AF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1B38);
  }

  return result;
}

void *sub_100271F60(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = __CocoaSet.count.getter();
    result = _swiftEmptyArrayStorage;
    if (!v2)
    {
      return result;
    }

    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    result = __CocoaSet.startIndex.getter();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return result;
  }

  v29 = _swiftEmptyArrayStorage;
  specialized ContiguousArray.reserveCapacity(_:)();
  result = _HashTable.startBucket.getter();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_1002CB444(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 objectID];

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = specialized ContiguousArray._endMutation()();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (__CocoaSet.Index.handleBitPattern.getter())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_10015DA04(&qword_1006C1BE0);
      v7 = Set.Index._asCocoa.modify();
      __CocoaSet.formIndex(after:isUnique:)();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_1000153F8(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_1000153F8(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_1000153F8(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

char *sub_100272278()
{
  v1 = OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView;
  v2 = *&v0[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView];
  }

  else
  {
    v4 = *&v0[OBJC_IVAR___ICTagAssignmentViewController_managedObjectContext];
    v5 = swift_allocObject();
    *(v5 + 16) = v0;
    objc_allocWithZone(type metadata accessor for TagAssignmentCollectionView());
    v6 = v4;
    v7 = v0;
    v8 = v4;
    v9 = v0;
    v10 = sub_10040D590(v8, sub_1002736DC, v5);
    v11 = *&v0[v1];
    *&v9[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

void sub_100272344(void *a1)
{

  v3 = sub_100271F60(v2);

  v4 = sub_10026F190(v3);

  v5 = [a1 includedObjectIDs];
  sub_1000054A4(0, &qword_1006BFEC0);
  sub_100005B0C(&qword_1006C63A0, &qword_1006BFEC0);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100273700(v4, v6);
  LOBYTE(v5) = v7;

  v8 = sub_100272498(&OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem, &selRef_dismissAndSaveActionWithSender_, 0);
  [v8 setEnabled:(v5 & 1) == 0];

  sub_1003EBA50(a1, 0, 0);
}

id sub_100272498(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:a3 target:v3 action:*a2];
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_10027259C(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView] = 0;
  *&v4[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___cancelBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem] = 0;
  *&v4[OBJC_IVAR___ICTagAssignmentViewController_selectedNotes] = a1;
  *&v4[OBJC_IVAR___ICTagAssignmentViewController_managedObjectContext] = a2;
  v10 = &v4[OBJC_IVAR___ICTagAssignmentViewController_completion];
  *v10 = a3;
  *(v10 + 1) = a4;
  type metadata accessor for TagAssignmentModel();
  v11 = swift_allocObject();
  v11[2] = &_swiftEmptySetSingleton;
  v11[3] = a1;
  v11[4] = a2;
  swift_bridgeObjectRetain_n();
  v12 = a2;

  v13 = sub_1003ECE74(a1, v12);

  v11[5] = v13;
  *&v4[OBJC_IVAR___ICTagAssignmentViewController_model] = v11;
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", 0, 0);
  v15 = sub_100272278();
  v16 = *&v15[OBJC_IVAR____TtC11MobileNotes27TagAssignmentCollectionView_tagAssignmentDataSource];
  if (v16)
  {
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[3] = 0;
    v18[4] = 0;
    v18[2] = v17;
    v19 = v16;

    sub_100355740(0, sub_100273A78, v18);
  }

  return v14;
}

id sub_100272848()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, "viewDidLoad");
  v1 = [objc_opt_self() mainBundle];
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 localizedStringForKey:v2 value:0 table:0];

  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  [v0 setTitle:v3];

  v4 = [v0 navigationItem];
  v5 = sub_100272498(&OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___cancelBarButtonItem, &selRef_dismissActionWithSender_, 1);
  [v4 setLeftBarButtonItem:v5];

  v6 = [v0 navigationItem];
  v7 = sub_100272498(&OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___doneBarButtonItem, &selRef_dismissAndSaveActionWithSender_, 0);
  [v6 setRightBarButtonItem:v7];

  result = [v0 view];
  if (result)
  {
    v9 = result;
    v10 = sub_100272278();
    [v9 addSubview:v10];

    return [*&v0[OBJC_IVAR___ICTagAssignmentViewController____lazy_storage___collectionView] ic_addAnchorsToFillSuperview];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100272A7C()
{
  v1 = sub_10015DA04(&unk_1006C3FD0);
  __chkstk_darwin(v1 - 8);
  v68 = &v56 - v2;
  v70 = type metadata accessor for IndexPath();
  v3 = *(v70 - 8);
  __chkstk_darwin(v70);
  v66 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v0;
  v5 = *(*(v0 + OBJC_IVAR___ICTagAssignmentViewController_model) + 40);
  if ((v5 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    sub_1000054A4(0, &qword_1006C63E0);
    sub_100005B0C(&qword_1006C1770, &qword_1006C63E0);
    Set.Iterator.init(_cocoa:)();
    v5 = v78;
    v6 = v79;
    v8 = v80;
    v7 = v81;
    v9 = v82;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v6 = v5 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v5 + 56);

    v7 = 0;
  }

  v62 = v8;
  v13 = (v8 + 64) >> 6;
  v14 = (v3 + 48);
  v64 = (v3 + 32);
  v61 = v76;
  v63 = (v3 + 8);
  v65 = (v3 + 48);
  v67 = v5;
  while (1)
  {
    if (v5 < 0)
    {
      v20 = __CocoaSet.Iterator.next()();
      if (!v20 || (v74 = v20, sub_1000054A4(0, &qword_1006C63E0), swift_dynamicCast(), v19 = aBlock[0], v17 = v7, v18 = v9, !aBlock[0]))
      {
LABEL_42:
        sub_10019E530();
        return;
      }

      goto LABEL_18;
    }

    v15 = v7;
    v16 = v9;
    v17 = v7;
    if (!v9)
    {
      break;
    }

LABEL_14:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v5 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v19)
    {
      goto LABEL_42;
    }

LABEL_18:
    v21 = [v19 standardizedContent];
    if (v21)
    {
      v73 = v18;
      v22 = v21;
      v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25 = sub_100272278();
      v26 = v25;
      v27 = *&v25[OBJC_IVAR____TtC11MobileNotes27TagAssignmentCollectionView_tagAssignmentDataSource];
      if (!v27)
      {

        goto LABEL_24;
      }

      v71 = v24;
      v28 = v27;
      v29 = v68;
      dispatch thunk of UICollectionViewDiffableDataSource.indexPath(for:)();
      v30 = v70;
      if ((*v14)(v29, 1, v70) == 1)
      {

        sub_10018031C(v29);
LABEL_22:
        v7 = v17;
        v9 = v73;
        goto LABEL_35;
      }

      v31 = v66;
      (*v64)(v66, v29, v30);
      v32 = *&v28[qword_1006C49F0];
      isa = IndexPath._bridgeToObjectiveC()().super.isa;
      v34 = [v32 cellForItemAtIndexPath:isa];

      if (v34)
      {
        type metadata accessor for TagContainerCell();
        if (!swift_dynamicCastClass())
        {

          (*v63)(v66, v70);
          goto LABEL_34;
        }

        v35 = sub_1002B3F04();
        v36 = OBJC_IVAR____TtC11MobileNotes17TagCollectionView_tagDataSource;
        swift_beginAccess();
        v37 = *&v35[v36];
        v14 = v65;
        if (!v37)
        {
          (*v63)(v66, v70);

          goto LABEL_22;
        }

        v59 = v28;
        v60 = v35;
        v38 = [v37 indexer];
        v5 = v67;
        if (!v38)
        {

          v55 = &v84;
LABEL_40:

          goto LABEL_41;
        }

        v39 = v38;
        objc_opt_self();
        v40 = swift_dynamicCastObjCClass();
        if (v40)
        {
          v58 = v39;
          v41 = v60;
          v42 = *&v60[v36];
          if (!v42)
          {

            v55 = &v83;
            goto LABEL_40;
          }

          v43 = v40;
          v44 = v42;
          v45 = [v43 objectIDs];
          sub_1000054A4(0, &qword_1006BFEC0);
          v56 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = *&v44[OBJC_IVAR____TtC11MobileNotes13TagDataSource_modernViewContext];
          v57 = v44;
          v47 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v48 = swift_allocObject();
          v49 = v56;
          *(v48 + 16) = v47;
          *(v48 + 24) = v49;
          v50 = v69;
          *(v48 + 32) = v46;
          *(v48 + 40) = v50;
          *(v48 + 48) = v71;
          *(v48 + 56) = v44;
          *(v48 + 64) = 0;
          *(v48 + 72) = 0;
          *(v48 + 80) = 0;
          v76[2] = sub_1002736A4;
          v77 = v48;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          v76[0] = sub_10028DCE8;
          v76[1] = &unk_100652278;
          v51 = _Block_copy(aBlock);
          v71 = v77;
          v52 = v46;
          v53 = v57;
          v54 = v52;

          [v54 performBlock:v51];

          _Block_release(v51);
          v14 = v65;
        }

        else
        {
        }

LABEL_41:
        (*v63)(v66, v70);
LABEL_24:
        v7 = v17;
        v9 = v73;
      }

      else
      {

        (*v63)(v31, v30);
LABEL_34:
        v7 = v17;
        v9 = v73;
        v14 = v65;
LABEL_35:
        v5 = v67;
      }
    }

    else
    {

      v7 = v17;
      v9 = v18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      goto LABEL_42;
    }

    v16 = *(v6 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_100273700(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

_$ss10__CocoaSetV7isEqual2toSbAB_tF:
      __CocoaSet.isEqual(to:)(v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_100273978(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1000054A4(0, &qword_1006BFEC0);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v28 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v29 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto _$ss10__CocoaSetV7isEqual2toSbAB_tF;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v29 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(a2 + 40);
      v21 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v22 = NSObject._rawHashValue(seed:)(v20);
      v23 = -1 << *(a2 + 32);
      v24 = v22 & ~v23;
      if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
      {
        break;
      }

      v25 = ~v23;
      while (1)
      {
        v26 = *(*(a2 + 48) + 8 * v24);
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {
          break;
        }

        v24 = (v24 + 1) & v25;
        if (((*(v15 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v28;
      v12 = v29;
      v16 = a1;
      if (!v29)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_100273978(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == __CocoaSet.count.getter())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = __CocoaSet.contains(_:)();

      if ((v13 & 1) == 0)
      {
        return;
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
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100273A94()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C1BE8);
  sub_10002597C(v0, qword_1006C1BE8);
  return static Logger.archiving.getter();
}

unint64_t sub_100273AE0(char a1)
{
  result = 0x6E65644965707974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6954746E65726170;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
    case 21:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0x6C6946616964656DLL;
      break;
    case 8:
      result = 0x4164657461657263;
      break;
    case 9:
      result = 0x6465696669646F6DLL;
      break;
    case 10:
      result = 1635017060;
      break;
    case 11:
      result = 0x656C746974;
      break;
    case 12:
      result = 0x73646E756F62;
      break;
    case 13:
      result = 0x676E6970706F7263;
      break;
    case 14:
      result = 0x7461746E6569726FLL;
      break;
    case 15:
      result = 0x6C69466567616D69;
      break;
    case 16:
      result = 7107189;
      break;
    case 17:
      result = 0x4474657070696E73;
      break;
    case 18:
      result = 0x616E6964726F6F63;
      break;
    case 19:
      result = 1937207154;
      break;
    case 20:
      result = 0x5474686769527369;
      break;
    case 22:
      result = 0x65746F75516C7275;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 24:
      result = 0x6365526F69647561;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100273DB8(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C1DE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_10027A9A8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v35) = *v3;
  LOBYTE(v30) = 0;
  sub_10027A9FC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v35) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v35) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v35) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v35) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v35) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v35) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v35) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = type metadata accessor for ICAttachmentArchiveModel();
    LOBYTE(v35) = 8;
    type metadata accessor for Date();
    sub_10027B988(&qword_1006C1230, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = 9;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = &v3[v46[14]];
    v10 = v9[1];
    *&v35 = *v9;
    *(&v35 + 1) = v10;
    LOBYTE(v30) = 10;
    sub_10027AA50(v35, v10);
    sub_100196888();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1001C60E4(v35, *(&v35 + 1));
    LOBYTE(v35) = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = &v3[v46[16]];
    v12 = v11[32];
    v13 = *(v11 + 1);
    v43 = *v11;
    v44 = v13;
    v45 = v12;
    v42 = 12;
    type metadata accessor for CGRect(0);
    sub_10027B988(&qword_1006C1E00, type metadata accessor for CGRect);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = &v3[v46[17]];
    v15 = *(v14 + 3);
    v37 = *(v14 + 2);
    v38 = v15;
    v39[0] = v14[64];
    v16 = *(v14 + 1);
    v35 = *v14;
    v36 = v16;
    LOBYTE(v30) = 13;
    sub_10027AA64();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = v3[v46[18]];
    LOBYTE(v30) = 14;
    sub_10027AAB8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = v3[v46[19]];
    LOBYTE(v30) = 15;
    sub_10027AB0C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = 16;
    type metadata accessor for URL();
    sub_10027B988(&qword_1006BEFB8, &type metadata accessor for URL);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = &v3[v46[21]];
    v18 = v17[1];
    *&v35 = *v17;
    *(&v35 + 1) = v18;
    LOBYTE(v30) = 17;
    sub_10027AA50(v35, v18);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1001C60E4(v35, *(&v35 + 1));
    v19 = &v3[v46[22]];
    v20 = v19[16];
    v35 = *v19;
    LOBYTE(v36) = v20;
    LOBYTE(v30) = 18;
    sub_10027AB60();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v35 = *&v3[v46[23]];
    LOBYTE(v30) = 19;
    sub_10015DA04(&qword_1006C1CB8);
    sub_10027ADE0(&qword_1006C1E28, sub_10027ABB4);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v35 = *&v3[v46[25]];
    LOBYTE(v30) = 21;
    sub_10015DA04(&qword_1006C13F0);
    sub_10027AF58(&qword_1006C1E40);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v35) = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v41 = v3[v46[27]];
    v40 = 23;
    sub_10027AC3C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = &v3[v46[28]];
    v22 = v21[3];
    v23 = v21[1];
    v37 = v21[2];
    v38 = v22;
    v24 = v21[3];
    *v39 = v21[4];
    *&v39[9] = *(v21 + 73);
    v25 = v21[1];
    v35 = *v21;
    v36 = v25;
    v32 = v37;
    v33 = v24;
    v34[0] = v21[4];
    *(v34 + 9) = *(v21 + 73);
    v30 = v35;
    v31 = v23;
    v29 = 24;
    sub_100006038(&v35, v27, &qword_1006C1C00);
    sub_10027AC90();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27[2] = v32;
    v27[3] = v33;
    *v28 = v34[0];
    *&v28[9] = *(v34 + 9);
    v27[0] = v30;
    v27[1] = v31;
    sub_1000073B4(v27, &qword_1006C1C00);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100274698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a1;
  v78 = a2;
  v2 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v2 - 8);
  v77 = v76 - v3;
  v4 = sub_10015DA04(&unk_1006C1710);
  v5 = __chkstk_darwin(v4 - 8);
  v79 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v80 = v76 - v7;
  v8 = sub_10015DA04(&qword_1006C1E58);
  v81 = *(v8 - 8);
  v82 = v8;
  __chkstk_darwin(v8);
  v10 = v76 - v9;
  v11 = type metadata accessor for ICAttachmentArchiveModel();
  v12 = __chkstk_darwin(v11);
  v14 = v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 48);
  v16 = type metadata accessor for Date();
  v17 = *(*(v16 - 8) + 56);
  v89 = v15;
  v17(&v14[v15], 1, 1, v16);
  v88 = v11[13];
  v17(&v14[v88], 1, 1, v16);
  v18 = &v14[v11[14]];
  v91 = xmmword_10053D570;
  v87 = v18;
  *v18 = xmmword_10053D570;
  v19 = &v14[v11[17]];
  v111 = 1;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *(v19 + 3) = 0u;
  v19[64] = 1;
  v20 = v11[20];
  v21 = type metadata accessor for URL();
  v22 = *(*(v21 - 8) + 56);
  v86 = v20;
  v22(&v14[v20], 1, 1, v21);
  v85 = &v14[v11[21]];
  *v85 = v91;
  v23 = v11[28];
  *&v91 = v14;
  v24 = &v14[v23];
  *v24 = xmmword_10053D580;
  *(v24 + 1) = 0u;
  *(v24 + 2) = 0u;
  *(v24 + 3) = 0u;
  *(v24 + 4) = 0u;
  v84 = &v14[v23];
  *(v24 + 73) = 0u;
  sub_10017CC60(v112, v112[3]);
  sub_10027A9A8();
  v83 = v10;
  v25 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    v90 = v25;
    sub_100009F60(v112);
    swift_bridgeObjectRelease_n();
LABEL_4:

    v28 = v91;
    sub_1000073B4(v91 + v89, &unk_1006C1710);
    sub_1000073B4(v28 + v88, &unk_1006C1710);
    sub_1001C60E4(*v87, *(v87 + 1));

    sub_1000073B4(v28 + v86, &qword_1006BCC20);
    sub_1001C60E4(*v85, *(v85 + 1));

    v29 = *(v84 + 3);
    v108 = *(v84 + 2);
    v109 = v29;
    v110[0] = *(v84 + 4);
    *(v110 + 9) = *(v84 + 73);
    v30 = *(v84 + 1);
    v106 = *v84;
    v107 = v30;
    return sub_1000073B4(&v106, &qword_1006C1C00);
  }

  v76[5] = v16;
  v26 = v80;
  LOBYTE(v97[0]) = 0;
  sub_10027ACE4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v91;
  *v91 = v106;
  LOBYTE(v106) = 1;
  *(v27 + 8) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v27 + 16) = v32;
  LOBYTE(v106) = 2;
  *(v27 + 24) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 32) = v33;
  v76[4] = v33;
  LOBYTE(v106) = 3;
  *(v27 + 40) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 48) = v34;
  v76[3] = v34;
  LOBYTE(v106) = 4;
  *(v27 + 56) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 5;
  *(v27 + 57) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v106) = 6;
  *(v27 + 64) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 72) = v35;
  v76[2] = v35;
  LOBYTE(v106) = 7;
  *(v27 + 80) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  *(v27 + 88) = v36;
  v76[1] = v36;
  LOBYTE(v106) = 8;
  v76[0] = sub_10027B988(&qword_1006C1220, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v90 = 0;
  sub_10000A49C(v26, v91 + v89, &unk_1006C1710);
  LOBYTE(v106) = 9;
  v37 = v90;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v90 = v37;
  if (v37 || (sub_10000A49C(v79, v91 + v88, &unk_1006C1710), LOBYTE(v97[0]) = 10, sub_100196770(), v38 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v38) != 0) || (v39 = v106, v40 = v87, sub_1001C60E4(*v87, *(v87 + 1)), *v40 = v39, LOBYTE(v106) = 11, v41 = v90, v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v80 = v43, (v90 = v41) != 0))
  {
    (*(v81 + 8))(v83, v82);
    v80 = 0;
LABEL_9:
    sub_100009F60(v112);

    goto LABEL_4;
  }

  v44 = (v91 + v11[15]);
  v45 = v80;
  *v44 = v42;
  v44[1] = v45;
  type metadata accessor for CGRect(0);
  LOBYTE(v97[0]) = 12;
  sub_10027B988(&qword_1006C1E68, type metadata accessor for CGRect);
  v46 = v90;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v90 = v46;
  if (v46 || (v47 = v91 + v11[16], v48 = v108, v49 = v107, *v47 = v106, *(v47 + 16) = v49, *(v47 + 32) = v48, v100 = 13, sub_10027AD38(), v50 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v50) != 0) || (v51 = v102, v52 = v104, *(v19 + 2) = v103, *(v19 + 3) = v52, v19[64] = v105, *v19 = v101, *(v19 + 1) = v51, LOBYTE(v97[0]) = 14, sub_10027A740(), v53 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v53) != 0) || (*(v91 + v11[18]) = v106, LOBYTE(v97[0]) = 15, sub_10027A834(), v54 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v54) != 0) || (*(v91 + v11[19]) = v106, LOBYTE(v106) = 16, sub_10027B988(&qword_1006BEF70, &type metadata accessor for URL), v55 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v55) != 0) || (sub_10000A49C(v77, v91 + v86, &qword_1006BCC20), LOBYTE(v97[0]) = 17, v56 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v56) != 0) || (v57 = v106, v58 = v85, sub_1001C60E4(*v85, *(v85 + 1)), *v58 = v57, LOBYTE(v97[0]) = 18, sub_10027AD8C(), v59 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v59) != 0) || (v60 = v91 + v11[22], v61 = v107, *v60 = v106, *(v60 + 16) = v61, sub_10015DA04(&qword_1006C1CB8), LOBYTE(v97[0]) = 19, sub_10027ADE0(&qword_1006C1E80, sub_10027AE58), v62 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v62) != 0) || (*(v91 + v11[23]) = v106, LOBYTE(v106) = 20, v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v90 = 0, *(v91 + v11[24]) = v63, sub_10015DA04(&qword_1006C13F0), LOBYTE(v97[0]) = 21, sub_10027AF58(&qword_1006C1E98), v64 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v64) != 0) || (*(v91 + v11[25]) = v106, LOBYTE(v106) = 22, v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)(), v90 = 0, v66 = (v91 + v11[26]), *v66 = v65, v66[1] = v67, LOBYTE(v97[0]) = 23, sub_10027AFC4(), v68 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v68) != 0) || (*(v91 + v11[27]) = v106, v99 = 24, sub_10027B018(), v69 = v90, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v90 = v69) != 0))
  {
    (*(v81 + 8))(v83, v82);
    goto LABEL_9;
  }

  (*(v81 + 8))(v83, v82);
  v94 = v108;
  v95 = v109;
  v96[0] = v110[0];
  *(v96 + 9) = *(v110 + 9);
  v92 = v106;
  v93 = v107;
  v70 = v84;
  v71 = *(v84 + 3);
  v97[2] = *(v84 + 2);
  v97[3] = v71;
  v98[0] = *(v84 + 4);
  *(v98 + 9) = *(v84 + 73);
  v72 = *(v84 + 1);
  v97[0] = *v84;
  v97[1] = v72;
  sub_1000073B4(v97, &qword_1006C1C00);
  v73 = v95;
  v70[2] = v94;
  v70[3] = v73;
  v70[4] = v96[0];
  *(v70 + 73) = *(v96 + 9);
  v74 = v93;
  *v70 = v92;
  v70[1] = v74;
  v75 = v91;
  sub_10027B06C(v91, v78);
  sub_100009F60(v112);
  return sub_10027B0D0(v75);
}

uint64_t sub_10027554C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002794A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100275580(uint64_t a1)
{
  v2 = sub_10027A9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002755BC(uint64_t a1)
{
  v2 = sub_10027A9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002755F8(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v158 = a2;
  v5 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v5 - 8);
  v157 = &v140 - v6;
  v7 = sub_10015DA04(&unk_1006C1710);
  v8 = __chkstk_darwin(v7 - 8);
  v154 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v140 - v10;
  *a3 = 4;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 514;
  v12 = type metadata accessor for ICAttachmentArchiveModel();
  v13 = v12[12];
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v17 = v15 + 56;
  v151 = v13;
  v16(a3 + v13, 1, 1, v14);
  v152 = v12[13];
  v153 = v16;
  v159 = v17;
  v16(a3 + v152, 1, 1, v14);
  v18 = (a3 + v12[14]);
  v150 = xmmword_10053D570;
  v142 = v18;
  *v18 = xmmword_10053D570;
  v19 = a3 + v12[17];
  v166 = 1;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 1;
  v20 = v12[20];
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v155 = v20;
  v146 = v23;
  v147 = v21;
  v145 = v22 + 56;
  (v23)(a3 + v20, 1, 1);
  v156 = (a3 + v12[21]);
  *v156 = v150;
  v24 = a3 + v12[22];
  *v24 = 0;
  *(v24 + 8) = 0;
  *&v150 = v24;
  *(v24 + 16) = 1;
  v143 = v12[23];
  *(a3 + v143) = 0;
  v144 = v12[24];
  *(a3 + v144) = 2;
  v148 = v12[25];
  *(a3 + v148) = 0;
  v149 = v12[27];
  *(a3 + v149) = 3;
  v25 = (a3 + v12[28]);
  *v25 = xmmword_10053D580;
  v25[1] = 0u;
  v25[2] = 0u;
  v25[3] = 0u;
  v25[4] = 0u;
  v141 = v25;
  *(v25 + 73) = 0u;
  v26 = [a1 identifier];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {
    v28 = 0;
    v30 = 0xE000000000000000;
  }

  *(a3 + 8) = v28;
  *(a3 + 16) = v30;
  v31 = [a1 typeUTI];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = v153;
  *(a3 + 64) = v33;
  *(a3 + 72) = v35;
  v37 = a1;
  v38 = sub_100279298();
  v40 = v39;

  *(a3 + 80) = v38;
  *(a3 + 88) = v40;
  v41 = [v37 creationDate];
  if (v41)
  {
    v42 = v41;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v44 = v154;
  v45 = 1;
  v36(v11, v43, 1, v14);
  sub_10000A49C(v11, a3 + v151, &unk_1006C1710);
  v46 = [v37 modificationDate];
  if (v46)
  {
    v47 = v46;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v45 = 0;
  }

  v36(v44, v45, 1, v14);
  sub_10000A49C(v44, a3 + v152, &unk_1006C1710);
  v48 = [v37 title];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = (a3 + v12[15]);
  *v53 = v50;
  v53[1] = v52;
  v159 = v52;
  [v37 bounds];
  v168.origin.x = 0.0;
  v168.origin.y = 0.0;
  v168.size.width = 0.0;
  v168.size.height = 0.0;
  v54 = CGRectEqualToRect(v167, v168);
  v55 = 0uLL;
  v56 = 0uLL;
  if (!v54)
  {
    [v37 bounds];
    *(&v55 + 1) = v57;
    *(&v56 + 1) = v58;
  }

  v59 = a3 + v12[16];
  v60 = v12[18];
  *v59 = v55;
  *(v59 + 16) = v56;
  *(v59 + 32) = v54;
  v61 = v37;
  sub_100279C8C(v61, v162);
  v62 = v162[3];
  *(v19 + 32) = v162[2];
  *(v19 + 48) = v62;
  *(v19 + 64) = v163;
  v63 = v162[1];
  *v19 = v162[0];
  *(v19 + 16) = v63;
  *(a3 + v60) = sub_100279E70([v61 orientation]);
  v64 = [v61 urlString];
  if (v64)
  {
    v65 = v64;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v66 = v157;
    URL.init(string:)();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v66 = v157;
    v146(v157, 1, 1, v147);
  }

  v67 = v158;
  sub_10000A49C(v66, a3 + v155, &qword_1006BCC20);
  v68 = [v61 synapseData];
  if (v68)
  {
    v69 = v68;
    v70 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0xF000000000000000;
  }

  v73 = v156;
  sub_1001C60E4(*v156, v156[1]);
  *v73 = v70;
  v73[1] = v72;
  v74 = [v61 synapseBasedMetadata];
  if (v74 && (v75 = v74, v76 = [v74 selectedText], v75, v76))
  {
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0;
  }

  v80 = (a3 + v12[26]);
  *v80 = v77;
  v80[1] = v79;
  v81 = [v61 imageFilterType];
  v82 = 0x403020105uLL >> (8 * v81);
  if (v81 >= 5)
  {
    LOBYTE(v82) = 5;
  }

  *(a3 + v12[19]) = v82;
  v83 = [v61 mergeablePreferredViewSize];
  if (v83)
  {
    v84 = v83;
    v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    sub_10019671C(v85, v87);
    v88 = sub_1004C635C([v61 preferredViewSize]);
    *(a3 + v149) = v88;
  }

  v89 = [v61 location];
  if (v89)
  {
    v90 = v89;
    [v90 latitude];
    v92 = v91;
    [v90 longitude];
    v94 = v93;

    v95 = v150;
    *v150 = v92;
    *(v95 + 8) = v94;
    *(v95 + 16) = 0;
  }

  v96 = [v61 tableModel];
  if (v96)
  {
    if ((*v67 & 1) == 0)
    {
      v108 = v96;
      v109 = sub_100279FC0(v96, v67);
      *(a3 + v143) = v109;
      v110 = [v108 table];
      v111 = [v110 isRightToLeft];

      sub_100279F6C(v67);
      *(a3 + v144) = v111;
      if ((*(v67 + 59) & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_38;
    }
  }

  v97 = [v61 attachmentModel];
  objc_opt_self();
  v98 = swift_dynamicCastObjCClass();
  if (v98)
  {
    v99 = [v98 subAttachmentIdentifiers];
    v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    sub_100279F6C(v67);
    *(a3 + v148) = v100;
    if (*(v67 + 59))
    {
      goto LABEL_38;
    }

LABEL_42:

    return;
  }

  v117 = [v61 audioModel];
  if (!v117)
  {
    goto LABEL_53;
  }

  v118 = v117;
  v119 = [v117 audioDocument];

  if (!v119)
  {
    __break(1u);
    return;
  }

  v120 = ICTTAudioDocument.root.getter();

  if (v120)
  {
    v121 = v61;
    sub_10027A180(v67, v164);
    sub_100489F54(v120, v121, v67, v164);
    v122 = v141;
    v123 = v141[3];
    v160[2] = v141[2];
    v160[3] = v123;
    v161[0] = v141[4];
    *(v161 + 9) = *(v141 + 73);
    v124 = v141[1];
    v160[0] = *v141;
    v160[1] = v124;
    sub_1000073B4(v160, &qword_1006C1C00);
    sub_100279F6C(v67);
    v125 = v164[3];
    v122[2] = v164[2];
    v122[3] = v125;
    v122[4] = v165[0];
    *(v122 + 73) = *(v165 + 9);
    v126 = v164[1];
    *v122 = v164[0];
    v122[1] = v126;
    if ((*(v67 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
LABEL_53:
    v127 = [v61 mergeableData];
    if (v127)
    {
      v128 = v127;
      v129 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v131 = v130;
    }

    else
    {
      v129 = 0;
      v131 = 0xF000000000000000;
    }

    v139 = v142;
    sub_1001C60E4(*v142, v142[1]);
    sub_100279F6C(v67);
    *v139 = v129;
    v139[1] = v131;
    if ((*(v67 + 59) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

LABEL_38:
  v101 = v61;
  v102 = [v101 note];
  if (v102 && (v103 = v102, v104 = [v102 identifier], v103, v104))
  {
    v105 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v107 = v106;
  }

  else
  {
    v105 = 0;
    v107 = 0;
  }

  *(a3 + 24) = v105;
  *(a3 + 32) = v107;
  v112 = [v101 note];

  if (v112)
  {
    v113 = &selRef_tintColor;
    v114 = [v112 title];

    if (v114)
    {
      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;
    }

    else
    {
      v112 = 0;
      v116 = 0;
    }
  }

  else
  {
    v116 = 0;
    v113 = &selRef_tintColor;
  }

  *(a3 + 40) = v112;
  *(a3 + 48) = v116;
  v132 = [v101 v113[1]];
  if (v132)
  {
    v133 = v132;
    v134 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v136 = v135;
  }

  else
  {

    v134 = 0;
    v136 = 0;
  }

  *v53 = v134;
  v53[1] = v136;
  v137 = v101;
  *(a3 + 56) = [v137 markedForDeletion];
  v138 = [v137 isPasswordProtected];

  *(a3 + 57) = v138;
}

uint64_t type metadata accessor for ICAttachmentArchiveModel()
{
  result = qword_1006C1C70;
  if (!qword_1006C1C70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002761D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _OWORD *a5, void **a6)
{
  v28 = a6;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v31 = _swiftEmptyArrayStorage;
  v13 = [a4 table];
  (*(v10 + 16))(v12, a1, v9);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = ((v15 + 68) & 0xFFFFFFFFFFFFFFF8);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  (*(v10 + 32))(v17 + v14, v12, v9);
  v18 = (v17 + v15);
  v19 = a5[1];
  *v18 = *a5;
  v18[1] = v19;
  v18[2] = a5[2];
  *(v18 + 45) = *(a5 + 45);
  *(v16 + v17) = &v31;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_10027A214;
  *(v20 + 24) = v17;
  aBlock[4] = sub_10027BE68;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100276790;
  aBlock[3] = &unk_100652408;
  v21 = _Block_copy(aBlock);
  v22 = a4;
  sub_10027A180(a5, v29);

  [v13 enumerateColumnsWithBlock:v21];

  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    isEscapingClosureAtFileLocation = v31;
    v16 = v28;
    a4 = *v28;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v16 = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a4 = sub_1001CB26C(0, a4[2] + 1, 1, a4);
  *v16 = a4;
LABEL_3:
  v26 = a4[2];
  v25 = a4[3];
  if (v26 >= v25 >> 1)
  {
    a4 = sub_1001CB26C((v25 > 1), v26 + 1, 1, a4);
    *v16 = a4;
  }

  a4[2] = v26 + 1;
  a4[v26 + 4] = isEscapingClosureAtFileLocation;
}

void sub_100276508(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char **a7)
{
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = [a4 table];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v16 = UUID._bridgeToObjectiveC()().super.isa;
  v17 = [v14 mergeableStringForColumnID:isa rowID:v16];

  if (!v17)
  {
    UUID.init()();
    v18 = objc_allocWithZone(ICTTMergeableAttributedString);
    v19 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v13, v10);
    v17 = [v18 initWithReplicaID:v19];
  }

  v20 = [a4 attachment];
  if (v20)
  {
    v21 = v20;
    sub_10027A180(a6, v34);
    v22 = v17;
    v23 = sub_1002FCE90(v22, v21, a6);
    v25 = v24;
    v27 = v26;
    v28 = *a7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a7 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_1001CB3C4(0, *(v28 + 2) + 1, 1, v28);
      *a7 = v28;
    }

    v31 = *(v28 + 2);
    v30 = *(v28 + 3);
    if (v31 >= v30 >> 1)
    {
      *a7 = sub_1001CB3C4((v30 > 1), v31 + 1, 1, v28);
    }

    v32 = *a7;
    *(v32 + 2) = v31 + 1;
    v33 = &v32[24 * v31];
    *(v33 + 4) = v23;
    *(v33 + 5) = v25;
    *(v33 + 6) = v27;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100276790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11(v10, a3, a4);
  return (*(v8 + 8))(v10, v7);
}

id sub_100276894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a3;
  v4 = v3;
  v6 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v6 - 8);
  v83 = &v74 - v7;
  v8 = sub_10015DA04(&unk_1006C1710);
  v9 = __chkstk_darwin(v8 - 8);
  v82 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v74 - v11;
  v13 = type metadata accessor for Date();
  v81 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v74 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v74 - v21;
  __chkstk_darwin(v20);
  v24 = &v74 - v23;
  ObjectType = swift_getObjectType();
  v26 = v84;
  v27 = (*(a2 + 40))(v4[1], v4[2], v85, ObjectType, a2);
  v28 = v27;
  if (!v26)
  {
    v76 = v22;
    v77 = v24;
    v29 = v81;
    v78 = v16;
    v79 = 0;
    v84 = v27;
    v30 = v4[9];
    v75 = v19;
    if (v30)
    {
      v31 = String._bridgeToObjectiveC()();
    }

    else
    {
      v31 = 0;
    }

    v32 = v29;
    [v84 setTypeUTI:v31];

    v33 = type metadata accessor for ICAttachmentArchiveModel();
    sub_100006038(v4 + v33[12], v12, &unk_1006C1710);
    v34 = *(v29 + 48);
    v35 = v13;
    v36 = v34(v12, 1, v13);
    v80 = v4;
    if (v36 == 1)
    {
      v37 = v76;
      Date.init()();
      v38 = v34(v12, 1, v35) == 1;
      v39 = v12;
      v40 = v77;
      v41 = v34;
      if (!v38)
      {
        sub_1000073B4(v39, &unk_1006C1710);
      }
    }

    else
    {
      v37 = v76;
      (*(v32 + 32))(v76, v12, v35);
      v40 = v77;
      v41 = v34;
    }

    static Date.+ infix(_:_:)();
    v42 = *(v32 + 8);
    v42(v37, v35);
    v43.super.isa = Date._bridgeToObjectiveC()().super.isa;
    v44 = v40;
    isa = v43.super.isa;
    v42(v44, v35);
    [v84 setCreationDate:isa];

    v46 = v82;
    sub_100006038(v80 + v33[13], v82, &unk_1006C1710);
    if (v41(v46, 1, v35) == 1)
    {
      v47 = v78;
      Date.init()();
      v48 = v41(v46, 1, v35);
      v49 = v83;
      if (v48 != 1)
      {
        sub_1000073B4(v46, &unk_1006C1710);
      }
    }

    else
    {
      v47 = v78;
      (*(v32 + 32))(v78, v46, v35);
      v49 = v83;
    }

    v50 = v75;
    static Date.+ infix(_:_:)();
    v42(v47, v35);
    v51 = Date._bridgeToObjectiveC()().super.isa;
    v42(v50, v35);
    v28 = v84;
    [v84 setModificationDate:v51];

    v52 = v80;
    if (*(v80 + v33[15] + 8))
    {
      v53 = String._bridgeToObjectiveC()();
    }

    else
    {
      v53 = 0;
    }

    [v28 setTitle:v53];

    v54 = v52 + v33[16];
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    if ((*(v54 + 32) & 1) == 0)
    {
      v57 = *(v54 + 16);
      v58 = *(v54 + 24);
      v55 = *v54;
      v56 = *(v54 + 8);
    }

    [v28 setBounds:{v55, v56, v57, v58}];
    v59 = v52 + v33[17];
    if ((*(v59 + 64) & 1) == 0)
    {
      v61 = *(v59 + 48);
      v60 = *(v59 + 56);
      v63 = *(v59 + 32);
      v62 = *(v59 + 40);
      v65 = *(v59 + 16);
      v64 = *(v59 + 24);
      v66 = *(v59 + 8);
      [v28 setCroppingQuadTopLeftX:*v59];
      [v28 setCroppingQuadTopLeftY:v66];
      [v28 setCroppingQuadTopRightX:v65];
      [v28 setCroppingQuadTopRightY:v64];
      [v28 setCroppingQuadBottomRightX:v63];
      [v28 setCroppingQuadBottomRightY:v62];
      [v28 setCroppingQuadBottomLeftX:v61];
      [v28 setCroppingQuadBottomLeftY:v60];
    }

    [v28 setOrientation:word_10053DD86[*(v52 + v33[18])]];
    [v28 setImageFilterType:word_10053DD90[*(v52 + v33[19])]];
    sub_100006038(v52 + v33[20], v49, &qword_1006BCC20);
    v67 = type metadata accessor for URL();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v49, 1, v67) == 1)
    {
      sub_1000073B4(v49, &qword_1006BCC20);
      v69 = 0;
    }

    else
    {
      URL.absoluteString.getter();
      (*(v68 + 8))(v49, v67);
      v28 = v84;
      v69 = String._bridgeToObjectiveC()();
    }

    [v28 setUrlString:v69];

    if (*(v52 + v33[21] + 8) >> 60 == 15)
    {
      v70 = 0;
    }

    else
    {
      v70 = Data._bridgeToObjectiveC()().super.isa;
    }

    [v28 setSynapseData:v70];

    v71 = *(v52 + v33[27]);
    if (v71 <= 1)
    {
      v72 = v71 != 0;
LABEL_30:
      [v28 setPreferredViewSize:v72];
      return v28;
    }

    if (v71 == 2)
    {
      v72 = 2;
      goto LABEL_30;
    }
  }

  return v28;
}

void sub_100277094(void *a1, char **a2, uint64_t a3, char *a4, char **a5, char *a6)
{
  v153 = a6;
  v147 = a5;
  v149 = a4;
  v148 = a2;
  v151 = type metadata accessor for URL();
  v150 = *(v151 - 8);
  v8 = __chkstk_darwin(v151);
  v10 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v139 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = (&v139 - v15);
  v17 = __chkstk_darwin(v14);
  v19 = &v139 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v139 - v21;
  __chkstk_darwin(v20);
  v24 = &v139 - v23;
  v25 = [a1 attachmentModel];
  objc_opt_self();
  v155 = swift_dynamicCastObjCClass();
  if (!v155)
  {
    v142 = v22;
    v143 = v16;
    v140 = v13;
    v144 = a1;
    v139 = v10;
    v146 = v24;
    v145 = v19;
    v40 = v150;
    objc_opt_self();
    v155 = swift_dynamicCastObjCClass();
    if (v155)
    {
      v41 = *(v152 + *(type metadata accessor for ICAttachmentArchiveModel() + 56) + 8);
      v141 = v25;
      v42 = v25;
      if (v41 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      v82 = v151;
      v83 = v142;
      [v144 setMergeableData:isa];

      v84 = v155;
      v85 = [v155 paperBundleDatabaseSubdirectoryURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.lastPathComponent.getter();
      v86 = v40[1];
      (v86)(v83, v82);
      URL.appendingPathComponent(_:isDirectory:)();

      v87 = [v84 paperBundleAssetsSubdirectoryURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.lastPathComponent.getter();
      v153 = v86;
      (v86)(v83, v82);
      v88 = v84;
      URL.appendingPathComponent(_:isDirectory:)();

      swift_getObjectType();
      v89 = [v84 paperBundleURL];
      v90 = v143;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v91 = v154;
      dispatch thunk of ICFileManaging.createDirectory(at:withIntermediateDirectories:)();
      if (v91)
      {
        v92 = v151;
        v93 = v153;
        v97 = v141;
        (v153)(v90, v151);
        (v93)(v145, v92);
        (v93)(v146, v92);
        if (qword_1006BC690 != -1)
        {
          swift_once();
        }

        v98 = type metadata accessor for Logger();
        sub_10002597C(v98, qword_1006C1BE8);
        swift_errorRetain();
        v99 = Logger.logObject.getter();
        v100 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v162 = v102;
          *v101 = 136315138;
          swift_getErrorValue();
          v103 = Error.localizedDescription.getter();
          v105 = sub_100009D88(v103, v104, &v162);

          *(v101 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v99, v100, "Cannot import paper attachment database and assets — skipping {error: %s}", v101, 0xCu);
          sub_100009F60(v102);
        }

        else
        {
        }
      }

      else
      {
        v94 = v153;
        (v153)(v90, v151);
        v95 = [v88 paperBundleDatabaseSubdirectoryURL];
        v96 = v140;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of ICFileManaging.copyItem(at:to:)();
        (v94)(v96, v151);
        v127 = [v88 paperBundleAssetsSubdirectoryURL];
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        dispatch thunk of ICFileManaging.copyItem(at:to:)();
        v138 = v151;
        (v94)(v139, v151);
        (v94)(v145, v138);
        (v94)(v146, v138);
      }

      return;
    }

    objc_opt_self();
    v66 = swift_dynamicCastObjCClass();
    if (!v66)
    {
      v120 = v154;
      objc_opt_self();
      v121 = swift_dynamicCastObjCClass();
      if (!v121)
      {

        if (*(v152 + *(type metadata accessor for ICAttachmentArchiveModel() + 56) + 8) >> 60 != 15)
        {
          v121 = Data._bridgeToObjectiveC()().super.isa;
        }

        v134 = v144;
        [v144 setMergeableData:v121];

        [v134 attachmentModel];
        return;
      }

      v51 = v25;
      v54 = v121;
      v122 = [v121 audioDocument];
      if (v122)
      {
        v123 = v122;
        v25 = [v122 document];

        v124 = v152 + *(type metadata accessor for ICAttachmentArchiveModel() + 112);
        v125 = *(v124 + 1);
        if (v125 == 1)
        {
          v126 = 0;
        }

        else
        {
          v156 = *v124;
          v157 = v125;
          v135 = *(v124 + 4);
          v160 = *(v124 + 3);
          *v161 = v135;
          *&v161[9] = *(v124 + 73);
          v136 = *(v124 + 1);
          v159 = *(v124 + 2);
          v158 = v136;
          v137 = [v121 audioDocument];
          if (!v137)
          {
LABEL_121:
            __break(1u);
            return;
          }

          v16 = v137;
          v52 = sub_10048759C(v137, v144, &off_100659288, a3, v153);
          if (v120)
          {

            return;
          }

LABEL_106:
          v126 = v52;
        }

        [v25 setRootObject:v126];

        swift_unknownObjectRelease();
        [v54 writeMergeableData];

        return;
      }

LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    v67 = v66;
    v68 = type metadata accessor for ICAttachmentArchiveModel();
    v69 = *(v152 + *(v68 + 92));
    if (!v69)
    {
      return;
    }

    v145 = v68;
    v147 = v25;
    v70 = [v67 table];
    v71 = [v70 rowCount];

    if ((v71 & 0x8000000000000000) != 0)
    {
LABEL_116:
      __break(1u);
    }

    else
    {
      for (; v71; --v71)
      {
        v72 = [v67 table];
        [v72 removeRowAtIndex:0];
      }

      v73 = [v67 table];
      v74 = [v73 columnCount];

      if ((v74 & 0x8000000000000000) == 0)
      {
        for (; v74; --v74)
        {
          v75 = [v67 table];
          [v75 removeColumnAtIndex:0];
        }

        v76 = [v67 table];

        v77 = [v67 table];
        v78 = v77;
        v148 = *(v69 + 2);
        if (!v148)
        {

LABEL_95:
          v129 = *(v152 + *(v145 + 24));
          if (v129 != 2)
          {
            v130 = v129 & 1;
            v131 = [v67 table];
            v132 = [v131 isRightToLeft];

            if (v132 != v130)
            {
              v133 = [v67 table];
              [v133 reverseColumnDirection];
            }
          }

          [v67 writeMergeableData];

          return;
        }

        v79 = *(v69 + 4);
        v149 = v69 + 32;

        v80 = 0;
        v81 = v153;
        v146 = v69;
        while (1)
        {
          if (v80 >= *(v69 + 2))
          {
            __break(1u);
            goto LABEL_116;
          }

          v106 = *(*&v149[8 * v80] + 16);

          v155 = v106;
          if (v106)
          {
            break;
          }

LABEL_80:
          v80 = (v80 + 1);

          v69 = v146;
          if (v80 == v148)
          {
            goto LABEL_95;
          }
        }

        v108 = 0;
        v29 = v107 + 48;
        v150 = v80;
        v151 = v107;
        while (1)
        {
          if (v108 >= *(v107 + 16))
          {
            goto LABEL_113;
          }

          v110 = *(v29 - 16);
          v109 = *(v29 - 8);
          v111 = *v29;

          v112 = v67;
          v113 = [v67 attachment];
          if (!v113)
          {
            goto LABEL_118;
          }

          v114 = v113;
          v115 = sub_1001909D4(_swiftEmptyArrayStorage);
          v116 = v154;
          v117 = sub_1002EEF18(v115, v114, &off_100659288, v81, v110, v109, v111);
          if (v116)
          {

            v128 = v147;

            return;
          }

          v118 = v117;
          v154 = 0;

          v67 = v112;
          v119 = [v112 table];
          v80 = v150;
          [v119 setAttributedString:v118 columnIndex:v108 rowIndex:v150];

          v29 += 24;
          ++v108;
          v81 = v153;
          v107 = v151;
          if (v155 == v108)
          {
            goto LABEL_80;
          }
        }
      }
    }

    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v26 = v25;
  v27 = [a1 managedObjectContext];
  if (!v27)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v153 = v27;
  v28 = *(v152 + *(type metadata accessor for ICAttachmentArchiveModel() + 100));
  v29 = _swiftEmptyArrayStorage;
  v30 = v155;
  if (v28)
  {
    v162 = _swiftEmptyArrayStorage;
    v31 = *(v28 + 16);
    v151 = v26;
    if (v31)
    {
      v25 = 0;
      v32 = (v28 + 40);
      v150 = (v31 - 1);
      v33 = _swiftEmptyArrayStorage;
      v152 = (v28 + 40);
      while (1)
      {
        v34 = &v32[2 * v25];
        v35 = v25;
        while (1)
        {
          if (v35 >= *(v28 + 16))
          {
            goto LABEL_110;
          }

          if (!*(a3 + 16))
          {
            goto LABEL_7;
          }

          v36 = *(v34 - 1);
          v16 = *v34;

          v29 = a3;
          v37 = sub_1002DF11C(v36, v16);
          if (v38)
          {
            break;
          }

LABEL_7:
          v35 = (v35 + 1);
          v34 += 16;
          if (v31 == v35)
          {
            v26 = v151;
            goto LABEL_20;
          }
        }

        v39 = *(*(a3 + 56) + 8 * v37);

        v29 = &v162;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v25 = (v35 + 1);
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v33 = v162;
        v26 = v151;
        v32 = v152;
        if (v150 == v35)
        {
LABEL_20:
          if (!(v33 >> 62))
          {
            goto LABEL_21;
          }

LABEL_60:
          v29 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_22;
        }
      }
    }

    v33 = _swiftEmptyArrayStorage;
    if (_swiftEmptyArrayStorage >> 62)
    {
      goto LABEL_60;
    }

LABEL_21:
    v29 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_22:
    v152 = v26;
    if (v29)
    {
      v44 = 0;
      v25 = &selRef_showSimplifiedWebEditor_;
      do
      {
        if ((v33 & 0xC000000000000001) != 0)
        {
          v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v44 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_112;
          }

          v45 = *(v33 + 8 * v44 + 32);
        }

        v46 = v45;
        v16 = (v44 + 1);
        if (__OFADD__(v44, 1))
        {
          goto LABEL_111;
        }

        [v155 addSubAttachment:v45];

        ++v44;
      }

      while (v16 != v29);
    }

    v47 = v152;

    v30 = v155;
    v26 = v151;
  }

  v152 = v26;
  [v30 writeMergeableData];
  v162 = _swiftEmptyArrayStorage;
  v48 = 1 << *(a3 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(a3 + 64);
  v51 = ((v48 + 63) >> 6);

  v53 = 0;
  v54 = &selRef_operatingSystemVersion;
  if (v50)
  {
    goto LABEL_41;
  }

  while (1)
  {
LABEL_37:
    v55 = v53 + 1;
    if (__OFADD__(v53, 1))
    {
      __break(1u);
      goto LABEL_106;
    }

    if (v55 >= v51)
    {
      break;
    }

    v50 = *(a3 + 64 + 8 * v55);
    ++v53;
    if (v50)
    {
      while (1)
      {
        v56 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v25 = *(*(a3 + 56) + ((v55 << 9) | (8 * v56)));
        v57 = [v25 parentAttachment];
        if (v57)
        {
          v58 = v57;

          v53 = v55;
          if (!v50)
          {
            goto LABEL_37;
          }
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v16 = *(v162 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v52 = specialized ContiguousArray._endMutation()();
          v53 = v55;
          if (!v50)
          {
            goto LABEL_37;
          }
        }

LABEL_41:
        v55 = v53;
      }
    }
  }

  v29 = v162;
  if (v162 < 0 || (v162 & 0x4000000000000000) != 0)
  {
    goto LABEL_114;
  }

  for (i = *(v162 + 16); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v60 = v153;
    if (!i)
    {
      break;
    }

    v61 = 0;
    while (1)
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v61 >= *(v29 + 16))
        {
          goto LABEL_109;
        }

        v62 = *(v29 + 8 * v61 + 32);
      }

      v63 = v62;
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        break;
      }

      [v60 deleteObject:v62];

      ++v61;
      if (v64 == i)
      {
        goto LABEL_57;
      }
    }

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
    ;
  }

LABEL_57:

  v65 = v152;
}

uint64_t sub_100278204(void *a1)
{
  v3 = v1;
  v5 = sub_10015DA04(&qword_1006C1F00);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_10027B934();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v11 = 0;
  type metadata accessor for CGPoint(0);
  sub_10027B988(&qword_1006C1F08, type metadata accessor for CGPoint);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = v3[1];
  v11 = 1;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v3[2];
  v11 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v12 = v3[3];
  v11 = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100278448()
{
  v1 = 0x7466654C706F74;
  v2 = 0x69526D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x654C6D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
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

uint64_t sub_1002784D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10027B12C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002784F8(uint64_t a1)
{
  v2 = sub_10027B934();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100278534(uint64_t a1)
{
  v2 = sub_10027B934();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100278570@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10027B29C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

Swift::Int sub_1002785D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10027867C()
{
  String.hash(into:)();
}

Swift::Int sub_10027870C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002787AC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027B548(*a1);
  *a2 = result;
  return result;
}

void sub_1002787DC(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 20565;
  v4 = 0xE400000000000000;
  v5 = 1413891404;
  if (*v1 != 2)
  {
    v5 = 0x5448474952;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 1314344772;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100278954(void *a1)
{
  v3 = sub_10015DA04(&qword_1006C1EC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_10017CC60(a1, a1[3]);
  sub_10027B790();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v9 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

Swift::Int sub_100278AE8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100278BD8()
{
  String.hash(into:)();
}

Swift::Int sub_100278CB4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100278DA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10027B594(*a1);
  *a2 = result;
  return result;
}

void sub_100278DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x4F544F4850;
  v5 = 0xE900000000000045;
  v6 = 0x4C41435359415247;
  v7 = 0xEF45544948575F44;
  v8 = 0x4E415F4B43414C42;
  if (v2 != 3)
  {
    v8 = 0x414F424554494857;
    v7 = 0xEA00000000004452;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x524F4C4F43;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_100278F68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return ArgumentDecodable<>.init(fromArgument:)();
}

uint64_t sub_100279028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5();
  a6();

  return static ArgumentDecodable<>.typeSummary(forName:)();
}

uint64_t sub_1002790B4()
{
  if (*v0)
  {
    return 0x64757469676E6F6CLL;
  }

  else
  {
    return 0x656475746974616CLL;
  }
}

uint64_t sub_1002790F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1002791D8(uint64_t a1)
{
  v2 = sub_10027B790();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100279214(uint64_t a1)
{
  v2 = sub_10027B790();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100279250(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10027B5E0(a1);
  if (!v2)
  {
    *a2 = v4;
    *(a2 + 8) = v5;
  }
}

id sub_100279298()
{
  result = sub_10036D6B8();
  v2 = v1;
  if (v1)
  {
    v3 = result;
    v20 = result;
    v21 = v1;
    __chkstk_darwin(result);
    v19[2] = &v20;
    v4 = sub_100474E24(sub_1001D3624, v19, &off_10064C3A0);
    swift_arrayDestroy();
    if (v4)
    {
      v20 = v3;
      v21 = v2;
      v24 = 46;
      v25 = 0xE100000000000000;
      sub_10019E0AC();
      v5 = StringProtocol.components<A>(separatedBy:)();

      v20 = sub_1003E954C(1uLL, v5);
      v21 = v6;
      v22 = v7;
      v23 = v8;

      sub_10015DA04(&qword_1006C1C08);
      sub_1000060B4(&qword_1006C1C10, &qword_1006C1C08);
      v9 = BidirectionalCollection<>.joined(separator:)();
      v11 = v10;
      swift_unknownObjectRelease();
      v12 = *(v5 + 16);
      if (v12)
      {
        v13 = (v5 + 16 + 16 * v12);
        v14 = *v13;
        v15 = v13[1];

        v20 = v9;
        v21 = v11;
        v16._countAndFlagsBits = 3027488;
        v16._object = 0xE300000000000000;
        String.append(_:)(v16);
        v17._countAndFlagsBits = v14;
        v17._object = v15;
        String.append(_:)(v17);
      }

      else
      {

        v20 = v9;
        v21 = v11;
        v18._countAndFlagsBits = 12832;
        v18._object = 0xE200000000000000;
        String.append(_:)(v18);
      }

      return v20;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

uint64_t sub_1002794A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65644965707974 && a2 == 0xEE00726569666974;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100569E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6954746E65726170 && a2 == 0xEB00000000656C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100569E60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100569E80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100569EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C6946616964656DLL && a2 == 0xED0000656D616E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4164657461657263 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x73646E756F62 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x676E6970706F7263 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6C69466567616D69 && a2 == 0xEB00000000726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474657070696E73 && a2 == 0xEB00000000617461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 1937207154 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x5474686769527369 && a2 == 0xED00007466654C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000100569EC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65746F75516C7275 && a2 == 0xEC00000074786554 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100569EE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6365526F69647561 && a2 == 0xEE00676E6964726FLL)
  {

    return 24;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 24;
    }

    else
    {
      return 25;
    }
  }
}

void sub_100279C8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 croppingQuadTopLeftX];
  if (v4 == 0.0 && ([a1 croppingQuadTopLeftY], v5 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightX"), v6 == 1.0) && (objc_msgSend(a1, "croppingQuadTopRightY"), v7 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightX"), v8 == 1.0) && (objc_msgSend(a1, "croppingQuadBottomRightY"), v9 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftX"), v10 == 0.0) && (objc_msgSend(a1, "croppingQuadBottomLeftY"), v11 == 0.0))
  {

    v12 = 1;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  else
  {
    [a1 croppingQuadTopLeftX];
    v32 = v17;
    [a1 croppingQuadTopLeftY];
    v31 = v18;
    [a1 croppingQuadTopRightX];
    v29 = v19;
    [a1 croppingQuadTopRightY];
    v30 = v20;
    [a1 croppingQuadBottomRightX];
    v27 = v21;
    [a1 croppingQuadBottomRightY];
    v28 = v22;
    [a1 croppingQuadBottomLeftX];
    v25 = v23;
    [a1 croppingQuadBottomLeftY];
    v26 = v24;

    *&v14 = v29;
    *&v13 = v32;
    v12 = 0;
    *(&v13 + 1) = v31;
    *(&v14 + 1) = v30;
    *&v15 = v27;
    *(&v15 + 1) = v28;
    *&v16 = v25;
    *(&v16 + 1) = v26;
  }

  *a2 = v13;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v12;
}

uint64_t sub_100279E70(unint64_t a1)
{
  if (a1 < 4)
  {
    return 0x3020104u >> (8 * a1);
  }

  if (qword_1006BC690 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10002597C(v2, qword_1006C1BE8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Unknown drawing orientation — returning nil", v5, 2u);
  }

  return 4;
}

uint64_t sub_100279FC0(void *a1, _OWORD *a2)
{
  v14 = _swiftEmptyArrayStorage;
  v4 = [a1 table];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a2[1];
  *(v5 + 24) = *a2;
  *(v5 + 40) = v6;
  *(v5 + 56) = a2[2];
  *(v5 + 69) = *(a2 + 45);
  *(v5 + 88) = &v14;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10027A1DC;
  *(v7 + 24) = v5;
  aBlock[4] = sub_10027A1EC;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100276790;
  aBlock[3] = &unk_100652390;
  v8 = _Block_copy(aBlock);
  v9 = a1;
  sub_10027A180(a2, v12);

  [v4 enumerateRowsWithBlock:v8];

  _Block_release(v8);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v11 = v14;

    return v11;
  }

  return result;
}

void sub_10027A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for UUID() - 8);
  v8 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v3 + 16);
  v11 = *(v3 + ((v9 + 68) & 0xFFFFFFFFFFFFFFF8));

  sub_100276508(a1, a2, a3, v10, v3 + v8, v3 + v9, v11);
}

void sub_10027A300()
{
  sub_10027A640(319, &qword_1006C0620);
  if (v0 <= 0x3F)
  {
    sub_10027A640(319, &unk_1006BF638);
    if (v1 <= 0x3F)
    {
      sub_10027A5EC(319, &qword_1006C0EE8, &type metadata accessor for Date);
      if (v2 <= 0x3F)
      {
        sub_10027A640(319, &qword_1006C1C80);
        if (v3 <= 0x3F)
        {
          sub_10027A5EC(319, &qword_1006C1C88, type metadata accessor for CGRect);
          if (v4 <= 0x3F)
          {
            sub_10027A640(319, &qword_1006C1C90);
            if (v5 <= 0x3F)
            {
              sub_10027A640(319, &qword_1006C1C98);
              if (v6 <= 0x3F)
              {
                sub_10027A640(319, &qword_1006C1CA0);
                if (v7 <= 0x3F)
                {
                  sub_10027A5EC(319, &qword_1006BEC68, &type metadata accessor for URL);
                  if (v8 <= 0x3F)
                  {
                    sub_10027A640(319, &qword_1006C1CA8);
                    if (v9 <= 0x3F)
                    {
                      sub_100005B5C(319, &qword_1006C1CB0, &qword_1006C1CB8);
                      if (v10 <= 0x3F)
                      {
                        sub_100005B5C(319, &qword_1006C1CC0, &qword_1006C13F0);
                        if (v11 <= 0x3F)
                        {
                          sub_10027A640(319, &qword_1006C1CC8);
                          if (v12 <= 0x3F)
                          {
                            sub_10027A640(319, &unk_1006C1CD0);
                            if (v13 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
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
    }
  }
}

void sub_10027A5EC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_10027A640(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 sub_10027A6BC(uint64_t a1, uint64_t a2)
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

uint64_t sub_10027A6D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10027A6F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_10027A740()
{
  result = qword_1006C1D60;
  if (!qword_1006C1D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1D60);
  }

  return result;
}

unint64_t sub_10027A7DC()
{
  result = qword_1006C1D78;
  if (!qword_1006C1D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1D78);
  }

  return result;
}

unint64_t sub_10027A834()
{
  result = qword_1006C1D80;
  if (!qword_1006C1D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1D80);
  }

  return result;
}

unint64_t sub_10027A8D0()
{
  result = qword_1006C1D98;
  if (!qword_1006C1D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1D98);
  }

  return result;
}

uint64_t sub_10027A924(uint64_t a1)
{
  *(a1 + 8) = sub_10027B988(&qword_1006C1DD8, type metadata accessor for ICAttachmentArchiveModel);
  result = sub_10027B988(&qword_1006C1DE0, type metadata accessor for ICAttachmentArchiveModel);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10027A9A8()
{
  result = qword_1006C1DF0;
  if (!qword_1006C1DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1DF0);
  }

  return result;
}

unint64_t sub_10027A9FC()
{
  result = qword_1006C1DF8;
  if (!qword_1006C1DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1DF8);
  }

  return result;
}

uint64_t sub_10027AA50(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001C4E38(a1, a2);
  }

  return a1;
}

unint64_t sub_10027AA64()
{
  result = qword_1006C1E08;
  if (!qword_1006C1E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E08);
  }

  return result;
}

unint64_t sub_10027AAB8()
{
  result = qword_1006C1E10;
  if (!qword_1006C1E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E10);
  }

  return result;
}

unint64_t sub_10027AB0C()
{
  result = qword_1006C1E18;
  if (!qword_1006C1E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E18);
  }

  return result;
}

unint64_t sub_10027AB60()
{
  result = qword_1006C1E20;
  if (!qword_1006C1E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E20);
  }

  return result;
}

unint64_t sub_10027ABE8()
{
  result = qword_1006C1E38;
  if (!qword_1006C1E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E38);
  }

  return result;
}

unint64_t sub_10027AC3C()
{
  result = qword_1006C1E48;
  if (!qword_1006C1E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E48);
  }

  return result;
}

unint64_t sub_10027AC90()
{
  result = qword_1006C1E50;
  if (!qword_1006C1E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E50);
  }

  return result;
}

unint64_t sub_10027ACE4()
{
  result = qword_1006C1E60;
  if (!qword_1006C1E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E60);
  }

  return result;
}

unint64_t sub_10027AD38()
{
  result = qword_1006C1E70;
  if (!qword_1006C1E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E70);
  }

  return result;
}

unint64_t sub_10027AD8C()
{
  result = qword_1006C1E78;
  if (!qword_1006C1E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E78);
  }

  return result;
}

uint64_t sub_10027ADE0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C1CB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10027AE8C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006BF398);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10027AF04()
{
  result = qword_1006C1E90;
  if (!qword_1006C1E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1E90);
  }

  return result;
}

uint64_t sub_10027AF58(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10017992C(&qword_1006C13F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10027AFC4()
{
  result = qword_1006C1EA0;
  if (!qword_1006C1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EA0);
  }

  return result;
}

unint64_t sub_10027B018()
{
  result = qword_1006C1EA8;
  if (!qword_1006C1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EA8);
  }

  return result;
}

uint64_t sub_10027B06C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027B0D0(uint64_t a1)
{
  v2 = type metadata accessor for ICAttachmentArchiveModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10027B12C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10027B29C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_10015DA04(&qword_1006C1EE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18 - v7;
  sub_10017CC60(a1, a1[3]);
  sub_10027B934();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100009F60(a1);
  }

  type metadata accessor for CGPoint(0);
  v20 = 0;
  sub_10027B988(&qword_1006C1EF8, type metadata accessor for CGPoint);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v18;
  v10 = v19;
  v20 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v18;
  v12 = v19;
  v20 = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13 = v18;
  v14 = v19;
  v20 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v15 = v18;
  v16 = v19;
  result = sub_100009F60(a1);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  a2[3] = v12;
  a2[4] = v13;
  a2[5] = v14;
  a2[6] = v15;
  a2[7] = v16;
  return result;
}

unint64_t sub_10027B548(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C3E0, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10027B594(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10064C460, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

double sub_10027B5E0(void *a1)
{
  v2 = sub_10015DA04(&qword_1006C1EB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9[-v4];
  sub_10017CC60(a1, a1[3]);
  sub_10027B790();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v9[15] = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = v6;
  v9[14] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_100009F60(a1);
  return v7;
}

unint64_t sub_10027B790()
{
  result = qword_1006C1EB8;
  if (!qword_1006C1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EB8);
  }

  return result;
}

unint64_t sub_10027B7E4()
{
  result = qword_1006C1EC8;
  if (!qword_1006C1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EC8);
  }

  return result;
}

unint64_t sub_10027B838()
{
  result = qword_1006C1ED0;
  if (!qword_1006C1ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1ED0);
  }

  return result;
}

unint64_t sub_10027B88C()
{
  result = qword_1006C1ED8;
  if (!qword_1006C1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1ED8);
  }

  return result;
}

unint64_t sub_10027B8E0()
{
  result = qword_1006C1EE0;
  if (!qword_1006C1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EE0);
  }

  return result;
}

unint64_t sub_10027B934()
{
  result = qword_1006C1EF0;
  if (!qword_1006C1EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C1EF0);
  }

  return result;
}

uint64_t sub_10027B988(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for ICAttachmentArchiveModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}