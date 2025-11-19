uint64_t sub_100046FBC(uint64_t a1, int a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v50 = a5;
  v51 = a6;
  v8 = v6;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v46 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v6;
  sub_1000040E8(a3);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = v18 + 63;
    v22 = v10;
    v23 = v21 >> 6;
    v41 = v6;
    v42 = (v11 + 16);
    v47 = (v11 + 32);
    v24 = result + 64;
    v49 = v22;
    v25 = v46;
    v43 = v11;
    v44 = v13;
    while (v20)
    {
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v30 = v27 | (v16 << 6);
      v31 = *(v13 + 48);
      v48 = *(v11 + 72);
      v32 = v31 + v48 * v30;
      if (v45)
      {
        (*v47)(v25, v32, v49);
        sub_10000A930(*(v13 + 56) + 8 * v30, v52, v50);
      }

      else
      {
        (*v42)(v25, v32, v49);
        sub_1000287E8(*(v13 + 56) + 8 * v30, v52, v50);
      }

      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v33 = -1 << *(v15 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v24 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v25 = v46;
        v13 = v44;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v24 + 8 * v35);
          if (v39 != -1)
          {
            v26 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v34) & ~*(v24 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v25 = v46;
      v13 = v44;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v47)((*(v15 + 48) + v48 * v26), v25, v49);
      result = sub_10000A930(v52, *(v15 + 56) + 8 * v26, v50);
      ++*(v15 + 16);
      v11 = v43;
    }

    v28 = v16;
    while (1)
    {
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v23)
      {
        break;
      }

      v29 = v17[v16];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v20 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v8 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v13 + 32);
    v8 = v41;
    if (v40 >= 64)
    {
      bzero(v17, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v40;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v8 = v15;
  return result;
}

uint64_t sub_1000473C4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115E60);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_1000477A0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115E50);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      v27 = *(*(v9 + 56) + v24);
      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v11 + 56) + v19) = v27;
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

uint64_t sub_100047B60(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1000040E8(a3);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_100047F3C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115F40);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
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
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        v26 = v42;
      }

      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v43 * v19, v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
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

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_100048314(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040E8(&qword_100115DF8);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v17 = __clz(__rbit64(v12));
      v38 = (v12 - 1) & v12;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
        sub_100050338(*v22, *(v22 + 8), *(v22 + 16));
      }

      Hasher.init(_seed:)();
      if (v25)
      {
        if (v25 == 1)
        {
          Hasher._combine(_:)(3uLL);
          v27 = v24;
        }

        else if (v24 | v23)
        {
          if (v24 ^ 1 | v23)
          {
            v27 = 4;
          }

          else
          {
            v27 = 2;
          }
        }

        else
        {
          v27 = 1;
        }

        Hasher._combine(_:)(v27);
      }

      else
      {
        Hasher._combine(_:)(0);
        String.hash(into:)();
      }

      result = Hasher._finalize()();
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

LABEL_45:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v23;
      *(v16 + 16) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v36;
      v12 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_45;
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
        v38 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_43;
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

LABEL_43:
  *v3 = v7;
  return result;
}

uint64_t sub_100048650(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ClimateDefrost();
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CAUVehicleLayoutKey();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000040E8(&qword_100115ED0);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_100050608(v27 + v28 * v24, v47);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000505A4(v29 + v28 * v24, v47);
      }

      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_100050608(v47, *(v12 + 56) + v28 * v20);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_100048AB4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for CAUVehicleLayoutKey();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115ED8);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100048E90(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = sub_1000040E8(&unk_100114790);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - v6;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000040E8(&qword_100115E78);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_100049340(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000040E8(&qword_100115E28);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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
      *(*(v7 + 48) + v15) = v20;
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

uint64_t sub_1000495C0(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000040E8(&qword_100115E20);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

unint64_t sub_10004999C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v31[0] = a3;
  v31[1] = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    v34 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v35 = *(v17 + 56);
    v32 = (v17 - 8);
    v33 = v18;
    do
    {
      v19 = v11;
      v20 = v35 * v13;
      v21 = v16;
      v22 = v17;
      v33(v10, *(a2 + 48) + v35 * v13, v6);
      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v32)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v34)
      {
        if (v24 >= v34 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v35 * a1;
          if (v35 * a1 < v20 || result >= v27 + v20 + v35)
          {
            result = swift_arrayInitWithTakeFrontToBack();
          }

          else if (v35 * a1 != v20)
          {
            result = swift_arrayInitWithTakeBackToFront();
          }

          if (a1 < v13 || *(a2 + 56) + 8 * a1 >= *(a2 + 56) + 8 * v13 + 8)
          {
            sub_1000040E8(v31[0]);
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v16 = v21;
          }

          else
          {
            v16 = v21;
            if (a1 != v13)
            {
              sub_1000040E8(v31[0]);
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }
        }
      }

      else if (v24 >= v34 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v13 = (v13 + 1) & v16;
      v11 = v19;
      v17 = v22;
    }

    while (((*(v19 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100049CC0(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  result = __chkstk_darwin(v8);
  v12 = &v37 - v11;
  v13 = a2 + 64;
  v14 = -1 << *(a2 + 32);
  v15 = (a1 + 1) & ~v14;
  if ((*(a2 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = _HashTable.previousHole(before:)();
    v18 = v16;
    v40 = (v17 + 1) & v16;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v44 = *(v19 + 56);
    v38 = (v19 - 8);
    v39 = v20;
    do
    {
      v21 = v44 * v15;
      v22 = v18;
      v23 = v19;
      v39(v12, *(a2 + 48) + v44 * v15, v8);
      sub_10005055C(v41, v42);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v12, v8);
      v18 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v44 * a1;
          v29 = v28 + v21 + v44;
          v30 = v44 * a1 < v21 || result >= v29;
          v19 = v23;
          if (!v30)
          {
            if (v44 * a1 != v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v18 = v22;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v15);
            if (a1 != v15 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v15;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v19 = v23;
LABEL_4:
      v15 = (v15 + 1) & v18;
    }

    while (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100049F74(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_10004A294(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for CAUVehicleLayoutKey();
  v4 = *(v40 - 8);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = _HashTable.previousHole(before:)();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_10005055C(&qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

uint64_t sub_10004A5B4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v27 = v4;
    do
    {
      v9 = 24 * v6;
      v10 = *(a2 + 48) + 24 * v6;
      v12 = *v10;
      v11 = *(v10 + 8);
      v13 = *(v10 + 16);
      Hasher.init(_seed:)();
      if (v13)
      {
        if (v13 == 1)
        {
          Hasher._combine(_:)(3uLL);
          v14 = v12;
        }

        else if (v12 | v11)
        {
          if (v12 ^ 1 | v11)
          {
            v14 = 4;
          }

          else
          {
            v14 = 2;
          }
        }

        else
        {
          v14 = 1;
        }

        Hasher._combine(_:)(v14);
      }

      else
      {
        Hasher._combine(_:)(0);

        String.hash(into:)();
      }

      v15 = Hasher._finalize()();
      result = sub_10000E1FC(v12, v11, v13);
      v16 = v15 & v7;
      if (v3 >= v8)
      {
        v4 = v27;
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v27;
        if (v16 >= v8)
        {
          goto LABEL_20;
        }
      }

      if (v3 >= v16)
      {
LABEL_20:
        v17 = *(a2 + 48);
        v18 = v17 + 24 * v3;
        v19 = (v17 + v9);
        if (24 * v3 < v9 || v18 >= v19 + 24 || v3 != v6)
        {
          v20 = *v19;
          *(v18 + 16) = *(v19 + 2);
          *v18 = v20;
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

uint64_t sub_10004A808(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      Hasher.init(_seed:)();

      String.hash(into:)();
      v9 = Hasher._finalize()();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_10004AA00(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v41 = a2;
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    a2 = v41;
    v40 = (v12 + 1) & v13;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = v8;
    v39 = v15;
    v16 = *(v14 + 56);
    v37 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v10;
      v19 = v13;
      v20 = v14;
      v39(v7, *(a2 + 48) + v16 * v10, v4);
      sub_10005055C(&qword_100115800, &type metadata accessor for UUID);
      v21 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v37)(v7, v4);
      v13 = v19;
      v22 = v21 & v19;
      if (a1 >= v40)
      {
        if (v22 >= v40 && a1 >= v22)
        {
LABEL_15:
          v14 = v20;
          if (v17 * a1 < v18 || *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v17 * a1 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v25 = *(v41 + 56);
          v26 = *(*(sub_1000040E8(&unk_100114790) - 8) + 72);
          v27 = v26 * a1;
          v28 = v25 + v26 * a1;
          v29 = v26 * v10;
          v30 = v25 + v26 * v10 + v26;
          if (v27 < v29 || v28 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v8 = v38;
            v13 = v19;
          }

          else
          {
            a1 = v10;
            v32 = v27 == v29;
            v8 = v38;
            v13 = v19;
            if (!v32)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v19;
              a1 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v40 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v14 = v20;
      v8 = v38;
      a2 = v41;
LABEL_4:
      v10 = (v10 + 1) & v13;
      v16 = v17;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_10004AD98(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v42 = a5;
  v43 = a6;
  v41 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v37 - v10;
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _HashTable.previousHole(before:)();
    v17 = v15;
    v40 = (v16 + 1) & v15;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v44 = *(v18 + 56);
    v38 = (v18 - 8);
    v39 = v19;
    do
    {
      v20 = v44 * v14;
      v21 = v17;
      v22 = v18;
      v39(v11, *(a2 + 48) + v44 * v14, v8);
      sub_10005055C(v41, v42);
      v23 = dispatch thunk of Hashable._rawHashValue(seed:)();
      (*v38)(v11, v8);
      v17 = v21;
      v24 = v23 & v21;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          v28 = v27 + v44 * a1;
          v29 = v27 + v20 + v44;
          v30 = v44 * a1 < v20 || v28 >= v29;
          v18 = v22;
          if (!v30)
          {
            if (v44 * a1 != v20)
            {
              swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v17 = v21;
            }

            v31 = *(a2 + 56);
            v32 = (v31 + 8 * a1);
            v33 = (v31 + 8 * v14);
            if (a1 != v14 || v32 >= v33 + 1)
            {
              *v32 = *v33;
              a1 = v14;
            }

            goto LABEL_4;
          }

          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v18 = v22;
LABEL_4:
      v14 = (v14 + 1) & v17;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_10004B070(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007DD80(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004CC5C(&type metadata accessor for UUID, &qword_100115E98);
      goto LABEL_7;
    }

    sub_100046BE0(v17, a3 & 1);
    v22 = sub_10007DD80(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004C2F0(v14, v11, a1, v20, &type metadata accessor for UUID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10004B298(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v29 = a5;
  v8 = v7;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v7;
  v18 = sub_10007DD80(a2);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_14;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 >= v21 && (a3 & 1) != 0)
  {
LABEL_7:
    v24 = *v8;
    if (v22)
    {
      return sub_100050BA4(a1, v24[7] + 8 * v18, v30);
    }

    goto LABEL_11;
  }

  if (v23 >= v21 && (a3 & 1) == 0)
  {
    sub_10004C4AC(v28, v29, v30, v31);
    goto LABEL_7;
  }

  sub_100046FBC(v21, a3 & 1, v28, v29, v30, v31);
  v26 = sub_10007DD80(a2);
  if ((v22 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v26;
  v24 = *v8;
  if (v22)
  {
    return sub_100050BA4(a1, v24[7] + 8 * v18, v30);
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  return sub_10004C0A8(v18, v15, a1, v24, v30);
}

uint64_t sub_10004B474(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007DEE8(a2);
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
      *(v20[7] + v14) = a1;
      return result;
    }

    goto LABEL_11;
  }

  if (v19 >= result && (a3 & 1) == 0)
  {
    result = sub_10004C778();
    goto LABEL_7;
  }

  sub_1000477A0(result, a3 & 1);
  result = sub_10007DEE8(a2);
  if ((v18 & 1) != (v21 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  return sub_10004C180(v14, v11, a1, v20);
}

void sub_10004B624(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007DEE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004C9E8();
      goto LABEL_7;
    }

    sub_100047F3C(v17, a3 & 1);
    v23 = sub_10007DEE8(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_10004C238(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

uint64_t sub_10004B804(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v26[0] = a4;
  v26[1] = a5;
  v6 = v5;
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = sub_10007DEE8(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_10004CC5C(&type metadata accessor for CAUVehicleLayoutKey, v26[0]);
      goto LABEL_7;
    }

    sub_100047B60(v19, a3 & 1, v26[0]);
    v24 = sub_10007DEE8(a2);
    if ((v20 & 1) == (v25 & 1))
    {
      v16 = v24;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      return sub_10004C2F0(v16, v13, a1, v22, &type metadata accessor for CAUVehicleLayoutKey);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v22[7] + 8 * v16) = a1;
}

uint64_t sub_10004BA08(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10007DFBC(a2, a3, a4);
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
      sub_100048314(v18, a5 & 1);
      v13 = sub_10007DFBC(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
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
      sub_10004CED8();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = v23[6] + 24 * v13;
  *v25 = a2;
  *(v25 + 8) = a3;
  *(v25 + 16) = a4;
  *(v23[7] + 8 * v13) = a1;
  v26 = v23[2];
  v17 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  return sub_100050338(a2, a3, a4);
}

uint64_t sub_10004BBA0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CAUVehicleLayoutKey();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007DEE8(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004D4C4();
      goto LABEL_7;
    }

    sub_100048AB4(v17, a3 & 1);
    v22 = sub_10007DEE8(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004C238(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_10004BD6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_10007DD80(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_10004D744();
      goto LABEL_7;
    }

    sub_100048E90(v17, a3 & 1);
    v28 = sub_10007DD80(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_10004C3AC(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_1000040E8(&unk_100114790);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_10004BF7C(char a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10007E128(a2);
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
    sub_10004DAA0();
    result = v17;
    goto LABEL_8;
  }

  sub_100049340(v14, a3 & 1);
  result = sub_10007E128(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + result) = a1 & 1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + result) = a1 & 1;
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10004C0A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a4[6];
  v11 = type metadata accessor for UUID();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_10000A930(a3, a4[7] + 8 * a1, a5);
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

uint64_t sub_10004C180(unint64_t a1, uint64_t a2, char a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CAUVehicleLayoutKey();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + a1) = a3;
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

uint64_t sub_10004C238(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CAUVehicleLayoutKey();
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

uint64_t sub_10004C2F0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

uint64_t sub_10004C3AC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1000040E8(&unk_100114790);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
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

void *sub_10004C4AC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = v4;
  v39 = type metadata accessor for UUID();
  v42 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(a1);
  v8 = *v4;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v33 = v6;
    v34 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v34, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v43 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v8;
    v20 = v42;
    v21 = v10;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v44 = (v18 - 1) & v18;
LABEL_17:
        v25 = v22 | (v14 << 6);
        v26 = *(v20 + 72) * v25;
        v28 = v38;
        v27 = v39;
        (*(v20 + 16))(v38, *(v8 + 48) + v26, v39);
        v25 *= 8;
        v29 = *(v8 + 56) + v25;
        v30 = v40;
        sub_1000287E8(v29, v45, v40);
        (*(v20 + 32))(*(v21 + 48) + v26, v28, v27);
        v31 = v30;
        v8 = v37;
        result = sub_10000A930(v45, *(v21 + 56) + v25, v31);
        v18 = v44;
      }

      while (v44);
    }

    v23 = v14;
    v10 = v43;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v33;
        goto LABEL_21;
      }

      v24 = *(v34 + v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v44 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}

char *sub_10004C778()
{
  v1 = v0;
  v31 = type metadata accessor for CAUVehicleLayoutKey();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&qword_100115E50);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
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

char *sub_10004C9E8()
{
  v1 = v0;
  v31 = type metadata accessor for CAUVehicleLayoutKey();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&qword_100115F40);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
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

void *sub_10004CC5C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_1000040E8(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
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

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

void *sub_10004CED8()
{
  v1 = v0;
  sub_1000040E8(&qword_100115DF8);
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
        v18 = *(v2 + 48) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = *(v4 + 48) + 24 * v17;
        v23 = *(v18 + 16);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v23;
        *(*(v4 + 56) + 8 * v17) = v21;
        sub_100050338(v19, v20, v23);
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

id sub_10004D054()
{
  v1 = v0;
  sub_1000040E8(&qword_100115E00);
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

char *sub_10004D1C0()
{
  v1 = v0;
  v2 = type metadata accessor for ClimateDefrost();
  v36 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for CAUVehicleLayoutKey();
  v37 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&qword_100115ED0);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_1000505A4(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_100050608(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

char *sub_10004D4C4()
{
  v1 = v0;
  v33 = type metadata accessor for CAUVehicleLayoutKey();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&qword_100115ED8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

char *sub_10004D744()
{
  v1 = v0;
  v41 = sub_1000040E8(&unk_100114790);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040E8(&qword_100115E78);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
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

void *sub_10004DAA0()
{
  v1 = v0;
  sub_1000040E8(&qword_100115E28);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
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

id sub_10004DC3C(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  sub_1000040E8(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    v18 = v8;
    if (v16)
    {
      do
      {
        v19 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v22 = v19 | (v12 << 6);
        v23 = v36;
        v24 = *(v36 + 72) * v22;
        v26 = v33;
        v25 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v24, v34);
        v27 = *(*(v6 + 56) + 8 * v22);
        (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + 8 * v22) = v27;
        result = v27;
        v16 = v37;
      }

      while (v37);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v21 = *(v30 + v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

uint64_t (*sub_10004DEB4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for UUID();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10004EF44(v5);
  v5[12] = sub_10004E420(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_10004DFF0;
}

uint64_t (*sub_10004DFF4(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10004EF78(v5);
  v5[12] = sub_10004E74C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_100050C24;
}

uint64_t (*sub_10004E130(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for CAUVehicleLayoutKey();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[9] = v7;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[10] = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v8 + 16))(v10, a2, v6);
  v5[11] = sub_10004EF78(v5);
  v5[12] = sub_10004EA8C(v5 + 4, v10, isUniquelyReferenced_nonNull_native);
  return sub_100050C24;
}

void sub_10004E26C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_10004E304(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = sub_10004EF78(v9);
  v9[9] = sub_10004EC70(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  return sub_10004E3C0;
}

void sub_10004E3C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_10004E420(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for UUID();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_10007DD80(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10004CC5C(&type metadata accessor for UUID, &qword_100115E98);
      v14 = v22;
      goto LABEL_14;
    }

    sub_100046BE0(v19, a3 & 1);
    v14 = sub_10007DD80(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10004E5F4;
}

void sub_10004E5F4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_10004C2F0(v4, v7, v2, v3, &type metadata accessor for UUID);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_100049CC0(v5, v6, &type metadata accessor for UUID, &qword_100115800, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_10004E74C(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_10007DEE8(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10004CC5C(&type metadata accessor for CAUVehicleLayoutKey, &qword_100115E58);
      v14 = v22;
      goto LABEL_14;
    }

    sub_100047B60(v19, a3 & 1, &qword_100115E58);
    v14 = sub_10007DEE8(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_10004E930;
}

void sub_10004E934(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v3 = *v1[2];
    v4 = v1[6];
    if ((*a1)[7])
    {
      *(v3[7] + 8 * v4) = v2;
    }

    else
    {
      v7 = v1[5];
      (*(v1[4] + 16))(v7, v1[1], v1[3]);
      sub_10004C2F0(v4, v7, v2, v3, &type metadata accessor for CAUVehicleLayoutKey);
    }
  }

  else if ((*a1)[7])
  {
    v5 = v1[6];
    v6 = *v1[2];
    (*(v1[4] + 8))(*(v6 + 48) + *(v1[4] + 72) * v5, v1[3]);
    sub_100049CC0(v5, v6, &type metadata accessor for CAUVehicleLayoutKey, &qword_100115E40, &type metadata accessor for CAUVehicleLayoutKey, &protocol conformance descriptor for CAUVehicleLayoutKey);
  }

  v8 = v1[5];

  free(v8);

  free(v1);
}

uint64_t (*sub_10004EA8C(uint64_t *a1, uint64_t a2, char a3))()
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x40uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  *(v9 + 24) = v10;
  v11 = *(v10 - 8);
  *(v9 + 32) = v11;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  *(v9 + 40) = v12;
  v13 = *v3;
  v14 = sub_10007DEE8(a2);
  *(v9 + 56) = v15 & 1;
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v22 = v14;
      sub_10004CC5C(&type metadata accessor for CAUVehicleLayoutKey, &qword_100115E38);
      v14 = v22;
      goto LABEL_14;
    }

    sub_100047B60(v19, a3 & 1, &qword_100115E38);
    v14 = sub_10007DEE8(a2);
    if ((v20 & 1) == (v23 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v9 + 48) = v14;
  if (v20)
  {
    v24 = *(*(*v4 + 56) + 8 * v14);
  }

  else
  {
    v24 = 0;
  }

  *v9 = v24;
  return sub_100050C28;
}

void (*sub_10004EC70(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x30uLL);
  }

  v13 = v12;
  *a1 = v12;
  *(v12 + 16) = a3;
  *(v12 + 24) = v5;
  *(v12 + 40) = a4;
  *(v12 + 8) = a2;
  v14 = *v5;
  v15 = sub_10007DFBC(a2, a3, a4);
  *(v13 + 41) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      sub_10004CED8();
      v15 = v23;
      goto LABEL_11;
    }

    sub_100048314(v20, a5 & 1);
    v15 = sub_10007DFBC(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v13 + 32) = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return sub_10004EDE0;
}

void sub_10004EDE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 41);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if (*(*a1 + 41))
    {
      goto LABEL_9;
    }

    v7 = *(v2 + 40);
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[1];
      v19 = v2[2];
      v20 = *(v2 + 40);
      v6[2] = v4;
      sub_100050338(v18, v19, v20);
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_100050464(*(v13 + 48) + 24 * v12);
      sub_10004A5B4(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v14 = *(v2 + 40);
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_10004EF44(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_10004EF6C;
}

uint64_t (*sub_10004EF78(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_100050C0C;
}

unint64_t sub_10004EFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040E8(&qword_100115F50);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000287E8(v4, &v11, &qword_100115F58);
      v5 = v11;
      result = sub_10007DE54(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100050B94(&v12, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004F0C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000040E8(&qword_100115E30);
  v4 = static _DictionaryStorage.allocate(capacity:)();
  v5 = *(a1 + 32);
  v22 = *(a1 + 40);
  v6 = *(a1 + 56);
  result = sub_10007DD14(v5);
  v8 = v22;
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v8;
    v21 = v1;

    return v4;
  }

  v10 = (a1 + 88);
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v5;
    v11 = v4[7] + 24 * result;
    *v11 = v8;
    *(v11 + 16) = v6;
    v12 = v4[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      break;
    }

    v4[2] = v14;
    v1 = *(&v8 + 1);
    if (!--v2)
    {
      goto LABEL_8;
    }

    v15 = v10 + 4;
    v5 = *(v10 - 3);
    v23 = *(v10 - 1);
    v16 = *v10;
    v17 = v8;
    v18 = v1;

    result = sub_10007DD14(v5);
    v10 = v15;
    v6 = v16;
    v8 = v23;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10004F224(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115EA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E90);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &qword_100115EA0);
      result = sub_10007DD80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10000A930(&v5[v8], v7[7] + 8 * v13, &unk_100117FE0);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004F420(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_100115E68);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E60);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &unk_100115E68);
      result = sub_10007DEE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CAUVehicleLayoutKey();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004F608(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115F18);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E98);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &qword_100115F18);
      result = sub_10007DD80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004F814(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115F38);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115F40);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &qword_100115F38);
      result = sub_10007DEE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CAUVehicleLayoutKey();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004FA20(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v24[1] = a3;
  v7 = sub_1000040E8(a2);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1000040E8(a4);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v7 + 48);
    v14 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v15 = *(v8 + 72);

    while (1)
    {
      sub_1000287E8(v14, v10, a2);
      result = sub_10007DEE8(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for CAUVehicleLayoutKey();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 8 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
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

unint64_t sub_10004FC24(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115F20);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E50);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &qword_100115F20);
      result = sub_10007DEE8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for CAUVehicleLayoutKey();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10004FE0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000040E8(&qword_100115E00);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10007E0B0(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10004FF10(uint64_t a1)
{
  v2 = sub_1000040E8(&unk_100115E80);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E78);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &unk_100115E80);
      result = sub_10007DD80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1000040E8(&unk_100114790);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_10005013C(uint64_t a1)
{
  v2 = sub_1000040E8(&qword_100115E08);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1000040E8(&qword_100115E10);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000287E8(v9, v5, &qword_100115E08);
      result = sub_10007DD80(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for UUID();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_10000A930(&v5[v8], v7[7] + 8 * v13, &unk_100116D30);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_100050338(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

unint64_t sub_10005034C()
{
  result = qword_100115DD0;
  if (!qword_100115DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DD0);
  }

  return result;
}

unint64_t sub_1000503A8()
{
  result = qword_100115DE8;
  if (!qword_100115DE8)
  {
    sub_1000082C4(&unk_100115DD8);
    sub_10005055C(&qword_100115DF0, &type metadata accessor for CAUPhysicalControlBarsLayout);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100115DE8);
  }

  return result;
}

uint64_t sub_1000504CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100050504()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100050544(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10005055C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000505A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClimateDefrost();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100050608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClimateDefrost();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10005066C(void *a1)
{
  v3 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v4 = qword_10011B1C0;
  if (os_log_type_enabled(qword_10011B1C0, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = a1;
    *v6 = a1;
    v7 = a1;
    _os_log_impl(&_mh_execute_header, v4, v3, "didUpdateCurrentCar %{public}@", v5, 0xCu);
    sub_100008904(v6, &unk_1001149E0);
  }

  v8 = *&v1[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager];
  v9 = OBJC_IVAR____TtC7Climate22ClimateSignpostManager_car;
  v10 = *(v8 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_car);
  *(v8 + OBJC_IVAR____TtC7Climate22ClimateSignpostManager_car) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20)
  {
    v11 = [v20 positionManager];

    if (v11)
    {
      [v11 unregisterObserver:v1];
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v20)
  {
    [v20 unregisterObserver:v1];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v1;
  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v13 = v12;
  static Published.subscript.setter();
  sub_100041A5C();
  sub_100036CB8();
  swift_getKeyPath();
  swift_getKeyPath();
  v21 = a1;
  v14 = a1;
  v15 = v13;
  static Published.subscript.setter();
  v16 = *(v8 + v9);
  *(v8 + v9) = a1;

  if (a1)
  {
    v17 = v14;
    [v17 registerObserver:{v15, v21, 0, 0, 0, 0, 0, 0}];
    v18 = [v17 positionManager];
    if (v18)
    {
      v19 = v18;
      [v18 registerObserver:v15];
    }
  }

  sub_100044F58(0xD000000000000022, 0x80000001000DC540);
}

uint64_t sub_100050A00()
{
  sub_100044F58(0xD000000000000022, 0x80000001000DC4F0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v7)
  {
    v1 = 1 << *(v10 + 32);
    v2 = -1;
    if (v1 < 64)
    {
      v2 = ~(-1 << v1);
    }

    v3 = v2 & *(v10 + 64);
    v4 = (v1 + 63) >> 6;

    v5 = 0;
    if (v3)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6 >= v4)
      {
        sub_1000081D8(v7, v8, v9);
      }

      v3 = *(v10 + 64 + 8 * v6);
      ++v5;
      if (v3)
      {
        v5 = v6;
        do
        {
LABEL_10:
          v3 &= v3 - 1;

          sub_10007163C();
        }

        while (v3);
        continue;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100050B88(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_100050B94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100050BA4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1000040E8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100050C2C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl);
  v2 = [v1 level];
  v3 = [v1 levelRestricted];
  v4 = [v1 levelInvalid];
  v5 = [v1 levelDisabled];
  if (v2)
  {
    if (v3)
    {
      v6 = 5;
      if (v4)
      {
        v6 = 13;
      }

      if ((v5 & 1) == 0)
      {
        return v6;
      }

      return v6 | 0x10;
    }

    v6 = 9;
    if (!v4)
    {
      v6 = 1;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else if (v3)
  {
    v6 = 4;
    if (v4)
    {
      v6 = 12;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  else
  {
    v6 = 8;
    if (!v4)
    {
      v6 = 0;
    }

    if (v5)
    {
      return v6 | 0x10;
    }
  }

  return v6;
}

void sub_100050E00(void *a1)
{
  v3 = [a1 level];
  v4 = [a1 levelRange];
  v5 = [v4 minimum];
  v6 = [v5 intValue];

  v7 = [v4 maximum];
  LODWORD(v5) = [v7 intValue];

  v8 = v5 & (v5 >> 31);
  v9 = v6 - v8;
  if (__OFSUB__(v6, v8))
  {
    __break(1u);
    goto LABEL_55;
  }

  v10 = [v4 maximum];
  v11 = [v10 intValue];

  v12 = [v4 minimum];
  LODWORD(v10) = [v12 intValue];

  v13 = v10 & ~(v10 >> 31);
  v14 = __OFSUB__(v11, v13);
  v15 = v11 - v13;
  if (v14)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v153 = v1;
  v154 = a1;
  if (v9 >= 0)
  {
    v16 = v9;
  }

  else
  {
    v16 = -v9;
  }

  if (v15 < 0)
  {
    v15 = -v15;
  }

  v17 = v16 > 3 || v15 >= 4;
  v152 = v4;
  v155 = v3;
  if (v17)
  {
    v18 = objc_allocWithZone(type metadata accessor for ClimateBarProgressView());
    v19 = [objc_allocWithZone(UIView) init];
    [v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 _setContinuousCornerRadius:2.0];
    *&v18[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView] = v19;
    v20 = [objc_allocWithZone(UIView) init];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v20 _setContinuousCornerRadius:2.0];
    *&v18[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView] = v20;
    v21 = [v20 widthAnchor];
    v22 = [v21 constraintEqualToConstant:0.0];

    *&v18[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint] = v22;
    v23 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    v24 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
    v25 = v4;
    *&v18[v23] = [v24 init];
    v18[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
    v26 = v3;
    v27 = &v18[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
    v28 = objc_opt_self();
    v29 = [v28 labelColor];
    v30 = [v28 labelColor];
    v31 = [v30 colorWithAlphaComponent:0.25];

    v32 = [v28 labelColor];
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v32;
    v27[3] = &_swiftEmptyDictionarySingleton;
    *&v18[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
    *&v18[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v25;
    *&v18[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v26;
    v156.receiver = v18;
    v156.super_class = type metadata accessor for ClimateProgressView();
    v150 = v25;
    v33 = objc_msgSendSuper2(&v156, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v33 setTranslatesAutoresizingMaskIntoConstraints:0];
    v34 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    [*(v33 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
    v35 = [objc_opt_self() configurationWithScale:-1];
    v36 = *(v33 + v34);
    v37 = v35;
    v38 = ClimateButton.imageSymbolConfiguration.getter();
    v39 = *&v36[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v36[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v37;
    v40 = v37;

    v41 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    LOBYTE(v39) = static NSObject.== infix(_:_:)();

    if ((v39 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v42 = *(v33 + v34);
    v43 = &v42[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
    swift_beginAccess();
    v44 = *v43;
    v45 = *(v43 + 1);
    *v43 = xmmword_1000D7420;
    if (!v45 || (v44 != 0x6C6C69662E6E6166 || v45 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v46 = v42;
      ClimateButton.updateClimateConfiguration()();
    }

    [*(v33 + v34) setContentMode:1];
    [*(v33 + v34) _setContinuousCornerRadius:0.0];
    v47 = *(v33 + v34);
    v48 = &v47[OBJC_IVAR____TtC7Climate13ClimateButton_title];
    swift_beginAccess();
    v49 = *v48;
    v50 = *(v48 + 1);
    *v48 = xmmword_1000D7430;
    if (!v50 || (v49 != 1330926913 || v50 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v51 = v47;
      ClimateButton.updateClimateConfiguration()();
    }

    v148 = v40;
    v52 = [*(v33 + v34) titleLabel];
    if (v52)
    {
      v53 = v52;
      [v52 setNumberOfLines:1];
    }

    v54 = *(v33 + v34);
    v55 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
    swift_beginAccess();
    v56 = v54[v55];
    v54[v55] = 1;
    if ((v56 & 1) == 0)
    {
      v57 = v54;
      ClimateButton.updateClimateConfiguration()();
    }

    v58 = *(v33 + v34);
    v59 = [v28 clearColor];
    v60 = *(v33 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
    sub_10007A4CC(v59, v60, &_swiftEmptyDictionarySingleton);

    [v33 addSubview:*(v33 + v34)];
    v61 = [*(v33 + v34) centerYAnchor];
    v62 = [v33 centerYAnchor];
    v63 = [v61 constraintEqualToAnchor:v62];

    v64 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_1000D5D90;
    v66 = [*(v33 + v34) widthAnchor];
    v67 = [v66 constraintEqualToConstant:45.0];

    *(v65 + 32) = v67;
    v68 = [*(v33 + v34) heightAnchor];
    v69 = [v68 constraintEqualToConstant:30.0];

    *(v65 + 40) = v69;
    *(v65 + 48) = v63;
    v70 = *(v33 + v34);
    v71 = v63;
    v72 = [v70 centerXAnchor];
    v73 = [v33 centerXAnchor];

    v74 = [v72 constraintEqualToAnchor:v73];
    *(v65 + 56) = v74;
    sub_10000827C(0, &qword_1001149C0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v64 activateConstraints:isa];

    v76 = *(v33 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
    *(v33 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v71;
    v77 = v71;

    v78 = v154;
    if (v155)
    {
      (*((swift_isaMask & *v33) + 0x128))(0);
    }

    else
    {
      (*((swift_isaMask & *v33) + 0x120))(0);
    }

    v137 = v152;
    v136 = v153;

    v138 = v33;
    sub_10008FE7C(4.0, 18.0);
  }

  else
  {
    v79 = objc_allocWithZone(type metadata accessor for ClimateDotsProgressView());
    v80 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView;
    sub_10000827C(0, &unk_100116370);
    *&v79[v80] = UIStackView.init(axis:spacing:arrangedSubviews:)();
    *&v79[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots] = _swiftEmptyArrayStorage;
    *&v79[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_diameter] = 0x4010000000000000;
    v81 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    v82 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
    v83 = v4;
    *&v79[v81] = [v82 init];
    v79[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
    v84 = &v79[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
    v85 = objc_opt_self();
    v86 = [v85 labelColor];
    v87 = [v85 labelColor];
    v88 = [v87 colorWithAlphaComponent:0.25];

    v89 = [v85 labelColor];
    *v84 = v86;
    v84[1] = v88;
    v84[2] = v89;
    v84[3] = &_swiftEmptyDictionarySingleton;
    *&v79[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
    *&v79[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v83;
    *&v79[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v3;
    v158.receiver = v79;
    v158.super_class = type metadata accessor for ClimateProgressView();
    v151 = v83;
    v90 = objc_msgSendSuper2(&v158, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v90 setTranslatesAutoresizingMaskIntoConstraints:0];
    v91 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    [*(v90 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
    v92 = [objc_opt_self() configurationWithScale:-1];
    v93 = *(v90 + v91);
    v94 = v92;
    v95 = ClimateButton.imageSymbolConfiguration.getter();
    v96 = *&v93[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v93[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v94;
    v97 = v94;

    v98 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    v99 = static NSObject.== infix(_:_:)();

    if ((v99 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v100 = *(v90 + v91);
    v101 = &v100[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
    swift_beginAccess();
    v102 = *v101;
    v103 = *(v101 + 1);
    *v101 = xmmword_1000D7420;
    if (!v103 || (v102 != 0x6C6C69662E6E6166 || v103 != 0xE800000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v104 = v100;
      ClimateButton.updateClimateConfiguration()();
    }

    [*(v90 + v91) setContentMode:1];
    [*(v90 + v91) _setContinuousCornerRadius:0.0];
    v105 = *(v90 + v91);
    v106 = &v105[OBJC_IVAR____TtC7Climate13ClimateButton_title];
    swift_beginAccess();
    v107 = *v106;
    v108 = *(v106 + 1);
    *v106 = xmmword_1000D7430;
    if (!v108 || (v107 != 1330926913 || v108 != 0xE400000000000000) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v109 = v105;
      ClimateButton.updateClimateConfiguration()();
    }

    v149 = v97;
    v110 = [*(v90 + v91) titleLabel];
    if (v110)
    {
      v111 = v110;
      [v110 setNumberOfLines:1];
    }

    v112 = *(v90 + v91);
    v113 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
    swift_beginAccess();
    v114 = v112[v113];
    v112[v113] = 1;
    if ((v114 & 1) == 0)
    {
      v115 = v112;
      ClimateButton.updateClimateConfiguration()();
    }

    v116 = *(v90 + v91);
    v117 = [v85 clearColor];
    v118 = *(v90 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
    sub_10007A4CC(v117, v118, &_swiftEmptyDictionarySingleton);

    [v90 addSubview:*(v90 + v91)];
    v119 = [*(v90 + v91) centerYAnchor];
    v120 = [v90 centerYAnchor];
    v121 = [v119 constraintEqualToAnchor:v120];

    v122 = objc_opt_self();
    sub_1000040E8(&unk_100114770);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_1000D5D90;
    v124 = [*(v90 + v91) widthAnchor];
    v125 = [v124 constraintEqualToConstant:45.0];

    *(v123 + 32) = v125;
    v126 = [*(v90 + v91) heightAnchor];
    v127 = [v126 constraintEqualToConstant:30.0];

    *(v123 + 40) = v127;
    *(v123 + 48) = v121;
    v128 = *(v90 + v91);
    v129 = v121;
    v130 = [v128 centerXAnchor];
    v131 = [v90 centerXAnchor];

    v132 = [v130 constraintEqualToAnchor:v131];
    *(v123 + 56) = v132;
    sub_10000827C(0, &qword_1001149C0);
    v133 = Array._bridgeToObjectiveC()().super.isa;

    [v122 activateConstraints:v133];

    v134 = *(v90 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
    *(v90 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v129;
    v135 = v129;

    if (v155)
    {
      (*((swift_isaMask & *v90) + 0x128))(0);
    }

    else
    {
      (*((swift_isaMask & *v90) + 0x120))(0);
    }

    v136 = v153;
    v78 = v154;
    v137 = v152;

    v138 = v90;
    sub_100034D30(v155, v151, 4.0);
  }

  *&v136[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView] = v138;
  *&v136[OBJC_IVAR____TtC7Climate31ClimateAutoControlServiceButton_autoClimateControl] = v78;
  v139 = type metadata accessor for ClimateAutoControlServiceButton();
  v157.receiver = v136;
  v157.super_class = v139;
  v140 = v78;
  v141 = objc_msgSendSuper2(&v157, "init");
  (*((swift_isaMask & *v141) + 0x1F8))();
  [v140 registerObserver:v141];
  v142 = v141;
  sub_100052124();
  v143 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v144 = swift_allocObject();
  *(v144 + 16) = v143;
  *(v144 + 24) = v140;
  v145 = (v142 + OBJC_IVAR____TtC7Climate13ClimateButton_action);
  swift_beginAccess();
  v146 = *v145;
  *v145 = sub_100052810;
  v145[1] = v144;
  v147 = v140;

  sub_100003380(v146);

  sub_1000523EC();
}

void sub_100052024(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a3 level] + 1;
    if ((v6 >> 8))
    {
      __break(1u);
    }

    else
    {
      v7 = [a3 levelRange];
      v8 = [v7 maximumValue];

      if (v8 < v6)
      {
        v9 = [a3 levelRange];
        LOBYTE(v6) = [v9 minimumValue];
      }

      [a3 setLevel:v6];
      sub_1000523EC();
    }
  }
}

void sub_100052124()
{
  v1 = *&v0[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView];
  v2 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  v3 = *&v1[OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView];
  v4 = v3[OBJC_IVAR____TtC7Climate13ClimateButton_textOnTopOfSymbol];
  v3[OBJC_IVAR____TtC7Climate13ClimateButton_textOnTopOfSymbol] = 1;
  if ((v4 & 1) == 0)
  {
    [v3 setNeedsLayout];
  }

  v5 = *&v1[v2];
  *&v5[OBJC_IVAR____TtC7Climate13ClimateButton_spaceBetweenSymbolAndTitle] = 0xC000000000000000;
  [v5 setNeedsLayout];
  [v0 addSubview:v1];
  v6 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000D5D90;
  v8 = [v1 leadingAnchor];
  v9 = [v0 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];

  *(v7 + 32) = v10;
  v11 = [v1 trailingAnchor];
  v12 = [v0 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];

  *(v7 + 40) = v13;
  v14 = [v1 topAnchor];
  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];

  *(v7 + 48) = v16;
  v17 = [v1 bottomAnchor];
  v18 = [v0 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];

  *(v7 + 56) = v19;
  sub_10000827C(0, &qword_1001149C0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 activateConstraints:isa];
}

void sub_1000523EC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Climate26ClimateAutoModeLevelButton_progressView];
  if (sub_100050C2C())
  {
    if (qword_100113E88 != -1)
    {
      swift_once();
    }

    v3 = qword_10011AFA0;
  }

  else
  {
    v3 = [objc_opt_self() labelColor];
    if (qword_100113E88 != -1)
    {
      swift_once();
    }
  }

  v4 = [qword_10011AFA0 colorWithAlphaComponent:0.25];
  v5 = qword_10011AFA0;
  v6 = *((swift_isaMask & *v2) + 0xD0);
  v7 = qword_10011AFA0;
  v6(v3, v4, v5, &_swiftEmptyDictionarySingleton);
  sub_1000C10C4();
  [v1 setEnabled:sub_100050C2C() < 8];
  if ((sub_100050C2C() & 0x1B) == 1)
  {
    v8 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  v9 = &v1[*v8];
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);
  v12 = *v9;
  v13 = v10;

  sub_10007A4CC(v12, v13, v11);

  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

id sub_1000526B4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAutoModeLevelButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAutoModeLevelButton()
{
  result = qword_100115FE8;
  if (!qword_100115FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100052798()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000527D0()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100052880()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateApp();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1000528D0()
{
  v0 = static CommandLine.argc.getter();
  v1 = static CommandLine.unsafeArgv.getter();
  type metadata accessor for ClimateApp();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = String._bridgeToObjectiveC()();
  }

  type metadata accessor for ClimateAppDelegate();
  v4 = swift_getObjCClassFromMetadata();
  v5 = NSStringFromClass(v4);
  if (!v5)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    delegateClassNamea = String._bridgeToObjectiveC()();

    v5 = delegateClassNamea;
  }

  delegateClassName = v5;
  UIApplicationMain(v0, v1, v3, v5);
}

void sub_1000529CC()
{
  v0 = objc_opt_self();
  v1 = [v0 sharedApplication];
  v2 = [v1 delegate];

  if (!v2)
  {
    __break(1u);
    goto LABEL_13;
  }

  type metadata accessor for ClimateAppDelegate();
  swift_dynamicCastClassUnconditional();
  v3 = sub_1000AF438();
  swift_unknownObjectRelease();
  v4 = *&v3[OBJC_IVAR____TtC7Climate18ClimateCoordinator_appWindow];
  v5 = v4;

  if (v4)
  {
    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 activationState];

      if (!v8)
      {
        return;
      }
    }
  }

  v9 = [v0 sharedApplication];
  v10 = [v9 delegate];

  if (!v10)
  {
LABEL_13:
    __break(1u);
    return;
  }

  swift_dynamicCastClassUnconditional();
  v11 = sub_1000AF438();
  swift_unknownObjectRelease();
  v12 = *&v11[OBJC_IVAR____TtC7Climate18ClimateCoordinator_overlayWindow];
  v13 = v12;

  if (!v12)
  {
    static os_log_type_t.debug.getter();
    if (qword_100113F00 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    [objc_allocWithZone(UIWindow) init];
  }
}

char *sub_100052BEC()
{
  v0 = sub_10001414C(1, 0x4036000000000000, 0);
  v1 = &v0[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v2 = *v1;
  v3 = *(v1 + 1);
  *v1 = xmmword_1000D7470;
  if (v3 && (v2 == 0x6B72616D78 ? (v4 = v3 == 0xE500000000000000) : (v4 = 0), v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v5 = v0;
  }

  else
  {
    v6 = v0;
    ClimateButton.updateClimateConfiguration()();
  }

  v7 = [objc_opt_self() systemFontOfSize:14.0 weight:UIFontWeightMedium];
  v8 = [objc_opt_self() configurationWithFont:v7 scale:1];
  v9 = ClimateButton.imageSymbolConfiguration.getter();
  v10 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v0[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v8;
  v11 = v8;

  v12 = ClimateButton.imageSymbolConfiguration.getter();
  sub_100052F1C();
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v13 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig];
  v14 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 8];
  v15 = *&v0[OBJC_IVAR____TtC7Climate13ClimateButton_colorConfig + 16];
  v16 = objc_opt_self();
  v17 = v13;
  v18 = v14;

  v19 = [v16 clearColor];
  v20 = [v16 labelColor];
  v21 = v20;
  if (!v19)
  {
    v19 = v17;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_15:
    v21 = v18;
    goto LABEL_13;
  }

  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_13:

  sub_10007A4CC(v19, v21, v15);

  return v0;
}

id sub_100052E58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateCloseButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateCloseButton()
{
  result = qword_100116048;
  if (!qword_100116048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_100052F1C()
{
  result = qword_100116930;
  if (!qword_100116930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100116930);
  }

  return result;
}

__n128 sub_100052F68(uint64_t a1, uint64_t a2)
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

uint64_t sub_100052F84(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_100052FCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_100053028@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v5 + 104);
  v12(&v22 - v10, enum case for CAUVehicleLayoutKey.seat_front_left(_:), v4, v9);
  if (*(a1 + 16))
  {
    v13 = sub_10007DEE8(v11);
    if (v14)
    {
      v15 = *(*(a1 + 56) + 8 * v13);
      v16 = *(v5 + 8);

      v16(v11, v4);
LABEL_8:
      *(a2 + 24) = type metadata accessor for ClimateZone();
      *(a2 + 32) = &off_1000F8990;
      *a2 = v15;
      return result;
    }
  }

  v17 = *(v5 + 8);
  v17(v11, v4);
  sub_100054E70();
  if ((v18 & 1) == 0)
  {
    (v12)(v7, enum case for CAUVehicleLayoutKey.seat_front(_:), v4);
    if (*(a1 + 16))
    {
      v19 = sub_10007DEE8(v7);
      if (v20)
      {
        v15 = *(*(a1 + 56) + 8 * v19);

        v17(v7, v4);
        goto LABEL_8;
      }
    }

    v17(v7, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

double sub_100053224@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v8);
  v11 = &v22 - v10;
  v12 = *(v5 + 104);
  v12(&v22 - v10, enum case for CAUVehicleLayoutKey.seat_front_right(_:), v4, v9);
  if (*(a1 + 16))
  {
    v13 = sub_10007DEE8(v11);
    if (v14)
    {
      v15 = *(*(a1 + 56) + 8 * v13);
      v16 = *(v5 + 8);

      v16(v11, v4);
LABEL_8:
      *(a2 + 24) = type metadata accessor for ClimateZone();
      *(a2 + 32) = &off_1000F8990;
      *a2 = v15;
      return result;
    }
  }

  v17 = *(v5 + 8);
  v17(v11, v4);
  sub_100054E70();
  if (v18)
  {
    (v12)(v7, enum case for CAUVehicleLayoutKey.seat_front(_:), v4);
    if (*(a1 + 16))
    {
      v19 = sub_10007DEE8(v7);
      if (v20)
      {
        v15 = *(*(a1 + 56) + 8 * v19);

        v17(v7, v4);
        goto LABEL_8;
      }
    }

    v17(v7, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_100053420(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v80 = a5;
  v81 = a4;
  v91 = type metadata accessor for CAUVehicleLayoutKey();
  v7 = *(v91 - 8);
  __chkstk_darwin(v91);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v80 - v11;
  __chkstk_darwin(v13);
  v15 = &v80 - v14;
  v16 = CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)();
  v96 = v16;
  v17 = [a3 steeringWheelHeatingCooling];
  v89 = v12;
  v90 = a1;
  v83 = v7;
  v82 = v9;
  if (!v17)
  {
    v27 = v91;
    goto LABEL_21;
  }

  v87 = v17;
  v88 = a3;
  v92 = v16;
  v18 = CAFPositionManager.layoutKeys.getter();
  sub_100054E70();
  if (v19)
  {
    v20 = enum case for CAUVehicleLayoutKey.seat_front_right(_:);
    v21 = *(v7 + 104);
    v22 = v12;
    v23 = v12;
    v24 = v91;
    v21(v22, enum case for CAUVehicleLayoutKey.seat_front_right(_:), v91);
    v25 = sub_1000606C4(v23, v18);
    v26 = *(v7 + 8);
    v26(v23, v24);
    if (v25)
    {

      v21(v15, v20, v24);
      goto LABEL_12;
    }

    v12 = v89;
    v7 = v83;
  }

  else
  {
    v21 = *(v7 + 104);
  }

  v28 = enum case for CAUVehicleLayoutKey.seat_front_left(_:);
  v29 = v12;
  v30 = v12;
  v31 = v91;
  v21(v29, enum case for CAUVehicleLayoutKey.seat_front_left(_:), v91);
  v32 = sub_1000606C4(v30, v18);

  v26 = *(v7 + 8);
  v26(v30, v31);
  if (v32)
  {
    v33 = v15;
    v34 = v28;
  }

  else
  {
    v34 = enum case for CAUVehicleLayoutKey.seat_front(_:);
    v33 = v15;
  }

  v21(v33, v34, v31);
LABEL_12:
  sub_10005596C(&qword_100115100, &type metadata accessor for CAUVehicleLayoutKey);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = v92;
  if (v95[0] == v93 && v95[1] == v94)
  {
    v35 = v15;
    v27 = v91;
    v26(v35, v91);

LABEL_16:
    v38 = v87;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    a1 = v90;
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v16 = v96;
    goto LABEL_20;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v37 = v15;
  v27 = v91;
  v26(v37, v91);

  if (v36)
  {
    goto LABEL_16;
  }

  a1 = v90;
LABEL_20:
  a3 = v88;
LABEL_21:
  v39 = [a3 climateControlsLockeds];
  if (!v39)
  {
    goto LABEL_43;
  }

  v40 = v39;
  sub_10000827C(0, &qword_100116088);
  v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v41 >> 62)
  {
    v42 = _CocoaArrayWrapper.endIndex.getter();
    if (v42)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
LABEL_24:
      if (v42 < 1)
      {
        __break(1u);
        return;
      }

      v43 = 0;
      v92 = (v41 & 0xC000000000000001);
      v86 = enum case for CAUVehicleLayoutKey.seat_front(_:);
      v84 = (v83 + 8);
      v85 = (v83 + 104);
      v87 = v42;
      v88 = v41;
      do
      {
        if (v92)
        {
          v44 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v44 = *(v41 + 8 * v43 + 32);
        }

        v45 = v44;
        v46 = [v44 vehicleLayoutKey];
        if (v46)
        {
          v47 = v46;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v48._countAndFlagsBits = CAUVehicleLayoutKey.rawValue.getter();
          v49 = String.hasPrefix(_:)(v48);

          if (v49)
          {
            v50 = v45;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v16 = v96;
          }

          else
          {
          }
        }

        else
        {
          v51 = v16;
          CAUVehicleLayoutKey.rawValue.getter();
          v52 = v89;
          v53 = v91;
          (*v85)(v89, v86, v91);
          v54 = CAUVehicleLayoutKey.rawValue.getter();
          v56 = v55;
          (*v84)(v52, v53);
          v57._countAndFlagsBits = v54;
          v57._object = v56;
          LOBYTE(v52) = String.hasPrefix(_:)(v57);

          if (v52)
          {

            a1 = v90;
            v16 = v51;
            v42 = v87;
            v41 = v88;
          }

          else
          {
            v58 = v45;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v42 = v87;
            if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v16 = v96;
            a1 = v90;
            v41 = v88;
          }
        }

        ++v43;
      }

      while (v42 != v43);
    }
  }

  v27 = v91;
LABEL_43:
  v59 = static os_log_type_t.debug.getter();
  if (qword_100113F00 != -1)
  {
    swift_once();
  }

  v60 = qword_10011B1C0;
  v61 = v83;
  v62 = v82;
  v92 = *(v83 + 16);
  v92(v82, a1, v27);
  v63 = v16 >> 62;
  if (os_log_type_enabled(v60, v59))
  {

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v95[0] = v65;
    *v64 = 134349314;
    LODWORD(v88) = v59;
    if (v63)
    {
      v66 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v66 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v64 + 4) = v66;
    v67 = v16;

    *(v64 + 12) = 2082;
    v68 = v62;
    v69 = CAUVehicleLayoutKey.rawValue.getter();
    v71 = v70;
    v72 = v68;
    v73 = v91;
    (*(v83 + 8))(v72, v91);
    v74 = sub_10000835C(v69, v71, v95);

    *(v64 + 14) = v74;
    _os_log_impl(&_mh_execute_header, v60, v88, "%{public}ld services for %{public}s", v64, 0x16u);
    sub_100006B9C(v65);

    v27 = v73;

    a1 = v90;
  }

  else
  {
    v67 = v16;
    (*(v61 + 8))(v62, v27);
  }

  v75 = v89;
  v76 = v92;
  if (!v63)
  {
    if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

LABEL_55:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_55;
  }

LABEL_52:
  v76(v75, a1, v27);
  v77 = [v81 automakerSettings];
  type metadata accessor for ClimateZone();
  swift_allocObject();
  v78 = sub_100071964(v67, v75, v77);
  if (v78)
  {
    v79 = v78;
    v76(v75, a1, v27);
    sub_100078700(v79, v75);
  }
}

uint64_t sub_100053D6C(void *a1)
{
  v2 = sub_1000040E8(&unk_100114790);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v56 = v47 - v7;
  v55 = type metadata accessor for UUID();
  v8 = *(v55 - 8);
  __chkstk_darwin(v55);
  v62 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000559B4();
  v11 = *(v10 + 16);
  if (v11)
  {
    v61 = v2;
    v12 = sub_10000827C(0, &unk_100114750);
    v13 = 0;
    v58 = (v3 + 32);
    v47[2] = v8 + 16;
    v48 = v8;
    v53 = (v8 + 8);
    v47[1] = v3 + 40;
    v14 = &selRef_maxDefrostOn;
    v49 = a1;
    v50 = v12;
    v54 = v3;
    v51 = v11;
    v52 = v10;
    while (v13 < *(v10 + 16))
    {
      v15 = *(v10 + 8 * v13 + 32);
      if (v15 == v12)
      {
        objc_opt_self();
        v63 = swift_dynamicCastObjCClass();
        if (v63)
        {
          v60 = v15;
          v16 = objc_opt_self();
          v17 = a1;
          v18 = [v16 sharedApplication];
          v19 = [v18 delegate];

          if (!v19)
          {
            goto LABEL_25;
          }

          type metadata accessor for ClimateAppDelegate();
          swift_dynamicCastClassUnconditional();
          v20 = sub_1000AF438();
          swift_unknownObjectRelease();
          v21 = *&v20[OBJC_IVAR____TtC7Climate18ClimateCoordinator_targetTemperatureTracker];

          v22 = v63;
          v23 = [v63 uniqueIdentifier];
          v24 = v62;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v25 = [v22 targetTemperature];
          sub_10000827C(0, &qword_100114AB0);
          v26 = v56;
          static Measurement._unconditionallyBridgeFromObjectiveC(_:)();

          v27 = OBJC_IVAR____TtC7Climate31ClimateTargetTemperatureTracker_targetTemperatures;
          swift_beginAccess();
          v28 = v5;
          v57 = *v58;
          v57(v5, v26, v61);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v64 = *&v21[v27];
          v30 = v64;
          *&v21[v27] = 0x8000000000000000;
          v32 = sub_10007DD80(v24);
          v33 = v30[2];
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_23;
          }

          v36 = v31;
          if (v30[3] >= v35)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10004D744();
            }
          }

          else
          {
            sub_100048E90(v35, isUniquelyReferenced_nonNull_native);
            v37 = sub_10007DD80(v62);
            if ((v36 & 1) != (v38 & 1))
            {
              goto LABEL_26;
            }

            v32 = v37;
          }

          v5 = v28;
          v59 = v17;
          v39 = v64;
          if (v36)
          {
            (*(v54 + 40))(v64[7] + *(v54 + 72) * v32, v28, v61);
            (*v53)(v62, v55);
            v11 = v51;
            v10 = v52;
            v12 = v50;
          }

          else
          {
            v64[(v32 >> 6) + 8] |= 1 << v32;
            v40 = v48;
            v41 = v62;
            v42 = v55;
            (*(v48 + 16))(v39[6] + *(v48 + 72) * v32, v62, v55);
            v57((v39[7] + *(v54 + 72) * v32), v5, v61);
            (*(v40 + 8))(v41, v42);
            v43 = v39[2];
            v44 = __OFADD__(v43, 1);
            v45 = v43 + 1;
            if (v44)
            {
              goto LABEL_24;
            }

            v39[2] = v45;
            v11 = v51;
            v10 = v52;
            v12 = v50;
          }

          v14 = &selRef_maxDefrostOn;
          *&v21[v27] = v39;

          swift_endAccess();
          [v63 registerObserver:v21];

          a1 = v49;
        }
      }

      if ([a1 v14[258]])
      {

        return 1;
      }

      if (v11 == ++v13)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
LABEL_20:

    return 0;
  }

  return result;
}

uint64_t sub_10005437C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  v37 = v6;
  v34 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = v5;
    v12 = *(*(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5))))) + OBJC_IVAR____TtC7Climate11ClimateZone_monitoredServices);
    v13 = v12 >> 62;
    v14 = v12;
    if (v12 >> 62)
    {
      v15 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v9 >> 62;
    if (v9 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v15;
    v17 = __OFADD__(result, v15);
    v18 = result + v15;
    if (v17)
    {
      goto LABEL_40;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v16)
      {
LABEL_21:
        _CocoaArrayWrapper.endIndex.getter();
      }

LABEL_22:
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = result;
      v19 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v16)
    {
      goto LABEL_21;
    }

    v19 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v18 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v38 = v9;
LABEL_23:
    v20 = *(v19 + 16);
    v21 = *(v19 + 24);
    v22 = v14;
    if (v13)
    {
      v24 = v19;
      result = _CocoaArrayWrapper.endIndex.getter();
      v19 = v24;
      v22 = v14;
      v23 = result;
    }

    else
    {
      v23 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_42;
      }

      v25 = v19 + 8 * v20 + 32;
      v36 = v19;
      v41 = v22;
      if (v13)
      {
        if (v23 < 1)
        {
          goto LABEL_44;
        }

        sub_100055908();
        v26 = 0;
        do
        {
          sub_1000040E8(&qword_100118040);
          v27 = v23;
          v28 = v25;
          v29 = sub_1000BB6E8(v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        sub_10000827C(0, &qword_100116078);
        swift_arrayInitWithCopy();
      }

      v9 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v17 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v17)
        {
          goto LABEL_43;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v9 = v38;
      v6 = v37;
      v5 = (v11 - 1) & v11;
      if (v39 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1000546DC(uint64_t a1)
{
  v2 = type metadata accessor for ClimateDefrost();
  v47 = *(v2 - 8);
  v48 = v2;
  __chkstk_darwin(v2);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  v44 = v8;
  v45 = a1;
  v42 = a1 + 64;
  while (1)
  {
    if (!v7)
    {
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v13 >= v8)
        {
          goto LABEL_38;
        }

        v7 = *(v4 + 8 * v13);
        ++v10;
        if (v7)
        {
          v10 = v13;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      return result;
    }

LABEL_10:
    v14 = v7;
    v15 = __clz(__rbit64(v7)) | (v10 << 6);
    v16 = v46;
    sub_1000505A4(*(a1 + 56) + *(v47 + 72) * v15, v46);
    v17 = *(v16 + *(v48 + 24));

    sub_100055848(v16);
    v18 = v17 >> 62;
    v19 = v17;
    v20 = v17 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v11 >> 62;
    v51 = v20;
    if (v11 >> 62)
    {
      break;
    }

    v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v22 + v20;
    if (__OFADD__(v22, v20))
    {
      goto LABEL_37;
    }

LABEL_14:
    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v21)
      {
        v24 = v11 & 0xFFFFFFFFFFFFFF8;
        if (v23 <= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v50 = v11;
          v25 = v19;
          v26 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v27 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (!v18)
          {
            goto LABEL_23;
          }

          goto LABEL_18;
        }

LABEL_20:
        v25 = v19;
        goto LABEL_22;
      }
    }

    else if (!v21)
    {
      goto LABEL_20;
    }

    _CocoaArrayWrapper.endIndex.getter();
    v25 = v19;
LABEL_22:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v50 = result;
    v24 = result & 0xFFFFFFFFFFFFFF8;
    v26 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (!v18)
    {
LABEL_23:
      v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_24;
    }

LABEL_18:
    v28 = v24;
    result = _CocoaArrayWrapper.endIndex.getter();
    v24 = v28;
    v29 = result;
LABEL_24:
    v49 = (v14 - 1) & v14;
    if (v29)
    {
      if (((v27 >> 1) - v26) < v51)
      {
        goto LABEL_41;
      }

      v30 = v24 + 8 * v26 + 32;
      v43 = v24;
      v53 = v19;
      if (v18)
      {
        if (v29 < 1)
        {
          goto LABEL_43;
        }

        sub_100055908();
        v31 = 0;
        do
        {
          sub_1000040E8(&qword_100118040);
          v32 = v29;
          v33 = v30;
          v34 = sub_1000BB6E8(v52, v31, v53);
          v36 = *v35;
          (v34)(v52, 0);
          v30 = v33;
          v29 = v32;
          *(v30 + 8 * v31++) = v36;
        }

        while (v32 != v31);
      }

      else
      {
        sub_10000827C(0, &qword_100116078);
        swift_arrayInitWithCopy();
      }

      v11 = v50;
      v8 = v44;
      a1 = v45;
      v4 = v42;
      v7 = v49;
      if (v51 >= 1)
      {
        v37 = *(v43 + 16);
        v38 = __OFADD__(v37, v51);
        v39 = v37 + v51;
        if (v38)
        {
          goto LABEL_42;
        }

        *(v43 + 16) = v39;
      }
    }

    else
    {
      v12 = v51;

      v8 = v44;
      a1 = v45;
      v7 = v49;
      v11 = v50;
      if (v12 > 0)
      {
        goto LABEL_40;
      }
    }
  }

  v40 = _CocoaArrayWrapper.endIndex.getter();
  v23 = v40 + v51;
  if (!__OFADD__(v40, v51))
  {
    goto LABEL_14;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  return v11;
}

uint64_t sub_100054AE4()
{
  v1 = v0;
  v2 = 1701736302;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v28 = 0xE000000000000000;
  _StringGuts.grow(_:)(86);
  v7._countAndFlagsBits = 0xD00000000000001BLL;
  v7._object = 0x80000001000DC650;
  String.append(_:)(v7);
  v8 = [*v0 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10005596C(&qword_100116058, &type metadata accessor for UUID);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  (*(v4 + 8))(v6, v3);
  v10._countAndFlagsBits = 0x3D73656E6F7A20;
  v10._object = 0xE700000000000000;
  String.append(_:)(v10);
  v26 = *(v1[5] + 2);
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x74736F7266656420;
  v12._object = 0xEA00000000003D73;
  String.append(_:)(v12);
  v26 = *(v1[6] + 2);
  v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0x6F72467466656C20;
  v14._object = 0xEF3D656E6F5A746ELL;
  String.append(_:)(v14);
  if (v1[3])
  {
    v15 = CAUVehicleLayoutKey.rawValue.getter();
    v17 = v16;
  }

  else
  {
    v17 = 0xE400000000000000;
    v15 = 1701736302;
  }

  v18 = v17;
  String.append(_:)(*&v15);

  v19._object = 0x80000001000DC670;
  v19._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v19);
  if (v1[4])
  {
    v2 = CAUVehicleLayoutKey.rawValue.getter();
    v21 = v20;
  }

  else
  {
    v21 = 0xE400000000000000;
  }

  v22._countAndFlagsBits = v2;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 62;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return v27;
}

uint64_t sub_100054DF4()
{
  v0 = sub_1000040E8(&qword_1001160B0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_1001160B8;
  }

  else
  {
    v2 = &unk_100114770;
  }

  return sub_1000040E8(v2);
}

void sub_100054E70()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = [*&v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_sessionStatus] currentSession];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 configuration];

      [v5 rightHandDrive];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100054F80(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000040E8(&qword_100116060);
  __chkstk_darwin(v4 - 8);
  v6 = v64 - v5;
  v75 = type metadata accessor for ClimateDefrost();
  v69 = *(v75 - 8);
  __chkstk_darwin(v75);
  v73 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v72 = v64 - v9;
  v10 = type metadata accessor for CAUVehicleLayoutKey();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v74 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v64 - v14;
  *&v17 = __chkstk_darwin(v16).n128_u64[0];
  v19 = (v64 - v18);
  v20 = [a1 climate];
  if (!v20)
  {

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
LABEL_41:
    *a2 = v26;
    a2[1] = v27;
    a2[2] = v28;
    a2[3] = v29;
    a2[4] = v30;
    a2[5] = v20;
    a2[6] = v31;
    return;
  }

  v21 = [a1 positionManager];
  if (!v21)
  {

    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v20 = 0;
    v31 = 0;
    goto LABEL_41;
  }

  v67 = a2;
  v68 = v6;
  v83 = &_swiftEmptyDictionarySingleton;
  v22 = v21;
  v76 = a1;
  v66 = v20;
  v78 = v20;
  v65 = v22;
  v79 = v22;
  v23 = static CAUVehicleLayoutKey.seatKeys.getter();
  v24 = *(v23 + 16);
  if (v24)
  {
    v25 = 0;
    v20 = v11 + 8;
    while (v25 < *(v23 + 16))
    {
      (*(v11 + 16))(v19, v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v10);
      sub_100053420(v19, v79, v78, v76, &v83);
      ++v25;
      (*v20)(v19, v10);
      if (v24 == v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_10:

  v32 = static CAUVehicleLayoutKey.defrostKeys.getter();
  v33 = *(v32 + 16);
  if (v33)
  {
    v64[0] = 0;
    v35 = *(v11 + 16);
    v34 = v11 + 16;
    v78 = v35;
    v36 = (*(v34 + 64) + 32) & ~*(v34 + 64);
    v64[1] = v32;
    v37 = v32 + v36;
    v77 = *(v34 + 56);
    v38 = v68;
    v71 = (v69 + 48);
    v39 = &_swiftEmptyDictionarySingleton;
    v70 = (v34 - 8);
    while (1)
    {
      v40 = v78;
      (v78)(v15, v37, v10);
      v41 = CAFPositionManager.services(for:includeSharedServices:requireSpecificServices:filter:)();
      v42 = v74;
      v40(v74, v15, v10);
      sub_1000C024C(v41, v42, v38);
      if ((*v71)(v38, 1, v75) != 1)
      {
        break;
      }

      (*v70)(v15, v10);
      sub_100008904(v38, &qword_100116060);
LABEL_13:
      v37 += v77;
      if (!--v33)
      {

        v56 = v39;
        goto LABEL_29;
      }
    }

    v43 = v72;
    sub_100050608(v38, v72);
    sub_1000505A4(v43, v73);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v81[0] = v39;
    v19 = v39;
    v20 = sub_10007DEE8(v15);
    v46 = v39[2];
    v47 = (v45 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_43;
    }

    v49 = v45;
    if (v39[3] < v48)
    {
      sub_100048650(v48, isUniquelyReferenced_nonNull_native);
      v19 = v81[0];
      v50 = sub_10007DEE8(v15);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_46;
      }

      v20 = v50;
      v52 = v81[0];
      if ((v49 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_22:
      v39 = v52;
      sub_1000558A4(v73, *(v52 + 56) + *(v69 + 72) * v20);
LABEL_26:
      sub_100055848(v72);
      (*v70)(v15, v10);
      v38 = v68;
      goto LABEL_13;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v52 = v81[0];
      if (v45)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v19 = v81;
      sub_10004D1C0();
      v52 = v81[0];
      if (v49)
      {
        goto LABEL_22;
      }
    }

LABEL_24:
    *(v52 + 8 * (v20 >> 6) + 64) |= 1 << v20;
    v39 = v52;
    (v78)(*(v52 + 48) + v20 * v77, v15, v10);
    sub_100050608(v73, v39[7] + *(v69 + 72) * v20);
    v53 = v39[2];
    v54 = __OFADD__(v53, 1);
    v55 = v53 + 1;
    if (v54)
    {
      goto LABEL_44;
    }

    v39[2] = v55;
    goto LABEL_26;
  }

  v56 = &_swiftEmptyDictionarySingleton;
LABEL_29:
  v20 = v83;

  v31 = v56;

  sub_100053028(v20, v81);
  a2 = v67;
  if (v82)
  {
    sub_1000040E8(&qword_100116070);
    type metadata accessor for ClimateZone();
    if (swift_dynamicCast())
    {
      v29 = v80;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    sub_100008904(v81, &qword_100116068);
    v29 = 0;
  }

  sub_100053224(v20, v81);
  if (v82)
  {
    sub_1000040E8(&qword_100116070);
    type metadata accessor for ClimateZone();
    if (swift_dynamicCast())
    {
      v30 = v80;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    sub_100008904(v81, &qword_100116068);
    v30 = 0;
  }

  v58 = sub_10005437C(v57);

  v81[0] = v58;

  v60 = sub_1000546DC(v59);

  sub_1000B7720(v60);
  v19 = [objc_opt_self() sharedApplication];
  v61 = [v19 delegate];

  if (v61)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v62 = sub_1000AF438();
    swift_unknownObjectRelease();
    v63 = *&v62[OBJC_IVAR____TtC7Climate18ClimateCoordinator_signpostManager];

    sub_1000B41CC(v81[0]);

    v27 = v66;
    v28 = v65;
    v26 = v76;
    goto LABEL_41;
  }

LABEL_45:
  __break(1u);

  (*v20)(v19, v10);
  __break(1u);
LABEL_46:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100055848(uint64_t a1)
{
  v2 = type metadata accessor for ClimateDefrost();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000558A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClimateDefrost();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_100055908()
{
  result = qword_100116080;
  if (!qword_100116080)
  {
    sub_1000082C4(&qword_100118040);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116080);
  }

  return result;
}

uint64_t sub_10005596C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000559B4()
{
  sub_100054DF4();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D74A0;
  *(v0 + 32) = sub_10000827C(0, &qword_1001152C0);
  *(v0 + 40) = sub_10000827C(0, &qword_1001152D0);
  *(v0 + 48) = sub_10000827C(0, &qword_100116090);
  *(v0 + 56) = sub_10000827C(0, &qword_100116088);
  *(v0 + 64) = sub_10000827C(0, &unk_1001178A0);
  *(v0 + 72) = sub_10000827C(0, &qword_100116098);
  *(v0 + 80) = sub_10000827C(0, &qword_1001160A0);
  *(v0 + 88) = sub_10000827C(0, &qword_100115830);
  *(v0 + 96) = sub_10000827C(0, &unk_100114750);
  *(v0 + 104) = sub_10000827C(0, &unk_100116920);
  *(v0 + 112) = sub_10000827C(0, &unk_100116360);
  *(v0 + 120) = sub_10000827C(0, &unk_100118030);
  *(v0 + 128) = sub_10000827C(0, &qword_1001160A8);
  return v0;
}

id sub_100055E58(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, "initWithFrame:", a2, a3, a4, a5);
}

id sub_100055FF0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, "initWithCoder:", v5);

  if (v6)
  {
  }

  return v6;
}

id sub_100056084(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for ClimateSlotType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ClimateSlotType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100056230(char a1)
{
  result = 0x6E4F656E6F7ALL;
  switch(a1)
  {
    case 1:
      result = 1953391990;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x70706574536E6166;
      break;
    case 4:
      result = 0x65646F4D6F747561;
      break;
    case 5:
      result = 0x7461654874616573;
      break;
    case 6:
      result = 0x6E614674616573;
      break;
    case 7:
      result = 0x7373614D74616573;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x736C6F72746E6F63;
      break;
    case 10:
      result = 0x6B6E694C70656564;
      break;
    case 11:
      result = 0x6C75637269636572;
      break;
    case 12:
      result = 0x434178616DLL;
      break;
    case 13:
      result = 0x6F7266654478616DLL;
      break;
    case 14:
      result = 1668184435;
      break;
    case 15:
      result = 0x666544746E6F7266;
      break;
    case 16:
      result = 0x7266654472616572;
      break;
    case 17:
      result = 25441;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_100056474(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))();

  return sub_100060154(v2, &off_1000F65F8);
}

uint64_t sub_1000564E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = v6(a2, a3);
  if (sub_100056230(v7) == 1953391990 && v8 == 0xE400000000000000)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  type metadata accessor for ClimateGroupedVentsButton(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
LABEL_16:
    v16 = v6(a2, a3) & 0xFE;
    v17 = 2;
    if (a1)
    {
      v17 = 3;
    }

    if (v16 == 2)
    {
      return v17;
    }

    else
    {
      return 1;
    }
  }

  v12 = *(v11 + OBJC_IVAR____TtC7Climate25ClimateGroupedVentsButton_ventButtons);
  if (v12 >> 62)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 2;
  if (v13 != 2)
  {
    v14 = 3;
  }

  if (v13 == 1)
  {
    return 1;
  }

  else
  {
    return v14;
  }
}

void sub_100056628()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v2 = sub_1000AF438();
    swift_unknownObjectRelease();
    v3 = v2[OBJC_IVAR____TtC7Climate18ClimateCoordinator_hasDualStatusBar];

    v4 = &off_1000F6620;
    if (v3 == 1)
    {
      v4 = sub_1000566F0(&off_1000F6620);
    }

    qword_10011AE68 = v4;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000566F0(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100056AC8(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000567A8()
{
  sub_1000040E8(&qword_100116170);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000D5BA0;
  if (qword_100113E70 != -1)
  {
    v2 = v0;
    swift_once();
    v0 = v2;
  }

  *(v0 + 32) = qword_10011AE68;
  *(v0 + 40) = &off_1000F65F8;
  qword_10011AE70 = v0;
}

uint64_t sub_10005685C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100056230(*a1);
  v5 = v4;
  if (v3 == sub_100056230(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000568E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100056230(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100056948()
{
  sub_100056230(*v0);
  String.hash(into:)();
}

Swift::Int sub_10005699C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100056230(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000569FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100056B40();
  *a1 = result;
  return result;
}

unint64_t sub_100056A2C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100056230(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100056A5C()
{
  result = qword_100116168;
  if (!qword_100116168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100116168);
  }

  return result;
}

uint64_t sub_100056ADC(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_100056B40()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v0;
  }
}

id sub_100056DE0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateFocusOverlay();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100056E40()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v2 = [v1 hvacOn];
  v3 = [v1 hvacOnInvalid];
  v4 = 8;
  if (v2)
  {
    v4 = 9;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

void sub_100056EA8(void *a1, unsigned __int8 a2)
{
  v3 = a1;
  v4 = sub_10003FC80(v3, a2);
  v5 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 1);
  *v5 = xmmword_1000D5B30;
  if (v7 && (v6 == 0x7265776F70 ? (v8 = v7 == 0xE500000000000000) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v9 = v4;
  }

  else
  {
    v10 = v4;
    ClimateButton.updateClimateConfiguration()();
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v3;
  v13 = &v4[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v14 = *v13;
  *v13 = sub_100057714;
  v13[1] = v12;
  v15 = v3;
  v16 = v4;

  sub_100003380(v14);

  v17 = [v16 titleLabel];

  if (v17)
  {
    if (qword_100113F10 != -1)
    {
      swift_once();
    }

    [v17 setFont:qword_10011B250];
  }

  sub_1000C10C4();
  v18 = OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin;
  [*&v16[OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin] hvacOn];
  [v16 setEnabled:{objc_msgSend(*&v16[v18], "hvacOnInvalid") ^ 1}];
  sub_100057284();
  ClimateButton.refreshColorConfig()();
  ClimateButton.createEdgeInsets()();
  v19 = [objc_opt_self() sharedApplication];
  v20 = [v19 delegate];

  if (v20)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v21 = sub_1000AF438();
    swift_unknownObjectRelease();
    v22 = *&v21[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v23 = v16;
    sub_1000AD348();
  }

  else
  {
    __break(1u);
  }
}

void sub_1000571B8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a3 setHvacOn:{objc_msgSend(a3, "hvacOn") ^ 1}];
    sub_1000C10C4();
    v6 = OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin;
    [*&v5[OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin] hvacOn];
    [v5 setEnabled:{objc_msgSend(*&v5[v6], "hvacOnInvalid") ^ 1}];
    sub_100057284();
    ClimateButton.refreshColorConfig()();
    ClimateButton.createEdgeInsets()();
  }
}

void sub_100057284()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin);
  v3 = [v2 hvacOn];
  if ([v2 hvacOnInvalid] & 1 | ((v3 & 1) == 0))
  {
    v4 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_offColor;
  }

  else
  {
    v4 = &OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor;
  }

  v5 = v1 + *v4;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);
  v8 = *v5;
  v9 = v6;

  sub_10007A4CC(v8, v9, v7);

  v10 = [objc_opt_self() sharedApplication];
  v11 = [v10 delegate];

  if (v11)
  {
    type metadata accessor for ClimateAppDelegate();
    swift_dynamicCastClassUnconditional();
    v12 = sub_1000AF438();
    swift_unknownObjectRelease();
    v13 = *&v12[OBJC_IVAR____TtC7Climate18ClimateCoordinator_accessibilityManager];

    v14 = *&v13[OBJC_IVAR____TtC7Climate27ClimateAccessibilityManager_colorFilter];
    if (v14 == 2)
    {
      if (qword_100113EE0 != -1)
      {
        swift_once();
      }

      v15 = qword_10011B0B8;
      v16 = qword_10011B0C0;
      v17 = qword_10011B0C8;
      v18 = [objc_opt_self() labelColor];
      if (!v18)
      {
        v18 = v16;
      }

      v21 = v15;
    }

    else
    {
      if (*(v1 + OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_style) == 4)
      {
        if (qword_100113EF0 != -1)
        {
          swift_once();
        }

        v19 = &qword_10011B0E8;
      }

      else
      {
        if (qword_100113EE0 != -1)
        {
          swift_once();
        }

        v19 = &qword_10011B0B8;
      }

      v20 = v19[1];
      v17 = v19[2];
      v21 = *v19;
      v18 = v20;
    }

    sub_1000A70A8(v21, v18, v17);
  }

  else
  {
    __break(1u);
  }
}

id sub_1000575C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateHVACButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateHVACButton()
{
  result = qword_1001161C8;
  if (!qword_1001161C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10005769C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000576D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005771C()
{
  sub_1000C10C4();
  v1 = *&v0[OBJC_IVAR____TtC7Climate25ClimateCabinServiceButton_cabin];
  [v1 hvacOn];
  [v0 setEnabled:{objc_msgSend(v1, "hvacOnInvalid") ^ 1}];
  sub_100057284();
  ClimateButton.refreshColorConfig()();

  ClimateButton.createEdgeInsets()();
}

id sub_100057840()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClimateAutoControlServiceButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ClimateAutoControlServiceButton()
{
  result = qword_100116208;
  if (!qword_100116208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000578E4(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x1F8);
  v2 = a1;
  v1();
}

unint64_t sub_100057970()
{
  result = qword_1001152D0;
  if (!qword_1001152D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001152D0);
  }

  return result;
}

id sub_1000579BC(void *a1)
{
  if ([a1 hasLevel])
  {
    v2 = objc_allocWithZone(type metadata accessor for ClimateAutoModeLevelButton());
    sub_100050E00(a1);
  }

  else
  {
    v4 = objc_allocWithZone(type metadata accessor for ClimateAutoModeIntensityButton());
    v3 = sub_10008C9D0(a1);
  }

  v5 = v3;
  v6 = *(v3 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor);
  v7 = *(v3 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 8);
  v8 = *(v3 + OBJC_IVAR____TtC7Climate15ClimateOnButton_onColor + 16);
  v9 = objc_opt_self();
  v10 = v5;
  v11 = v6;
  v12 = v7;

  v13 = [v9 systemGreenColor];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  sub_1000A70A8(v11, v12, v8);

  v15 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v16 = *(v10 + v15);
  *(v10 + v15) = 1;
  if ((v16 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  return v10;
}

void sub_100057B18()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue;
  v3 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue);
  v4 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_seatFan);
  v5 = [v4 fanLevelRange];
  CAFRange.minimumValue<A>()();

  if (v19 == v3)
  {
    v6 = [v4 fanLevelRange];
    CAFRange.maximumValue<A>()();

    LOBYTE(v7) = v13;
LABEL_8:
    *(v1 + v2) = v7;
    (*((swift_isaMask & **(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView)) + 0x88))(v7);
    return;
  }

  v8 = [v4 fanLevelRange];
  CAFRange.minimumValue<A>()();

  if (v18 >= v3)
  {
    v12 = [v4 fanLevelRange];
    CAFRange.maximumValue<A>()();

    LOBYTE(v7) = v17;
    goto LABEL_8;
  }

  v9 = [v4 fanLevelRange];
  CAFRange.stepValue<A>()();

  v7 = v3 - v16;
  if ((v7 & 0xFFFFFF00) == 0)
  {
    v10 = [v4 fanLevelRange];
    CAFRange.minimumValue<A>()();

    if (v15 > v7)
    {
      v11 = [v4 fanLevelRange];
      CAFRange.minimumValue<A>()();

      LOBYTE(v7) = v14;
    }

    goto LABEL_8;
  }

  __break(1u);
}

id sub_100057D6C()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView) + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v2 = ClimateButton.imageSymbolConfiguration.getter();

  return v2;
}

void sub_100057DBC(void *a1)
{
  v7 = *(*(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView) + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView);
  v3 = ClimateButton.imageSymbolConfiguration.getter();
  v4 = *&v7[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v7[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = a1;
  v5 = a1;

  v6 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }
}

void (*sub_100057EA0(void *a1))(uint64_t a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView);
  v4 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  a1[1] = v3;
  a1[2] = v4;
  v5 = *(v3 + v4);
  v6 = ClimateButton.imageSymbolConfiguration.getter();

  *a1 = v6;
  return sub_100057F1C;
}

void sub_100057F1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*(a1 + 8) + *(a1 + 16));
  if (a2)
  {
    v5 = v2;
    v6 = v3;
    v7 = ClimateButton.imageSymbolConfiguration.getter();
    v8 = *&v6[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v6[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v5;
    v9 = v5;

    v10 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    LOBYTE(v8) = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v11 = *a1;
  }

  else
  {
    v12 = v3;
    v13 = ClimateButton.imageSymbolConfiguration.getter();
    v14 = *&v12[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
    *&v12[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v2;
    v16 = v2;

    v15 = ClimateButton.imageSymbolConfiguration.getter();
    sub_10000827C(0, &qword_100116930);
    LOBYTE(v14) = static NSObject.== infix(_:_:)();

    if ((v14 & 1) == 0)
    {
      ClimateButton.updateClimateConfiguration()();
    }

    v11 = v16;
  }
}

uint64_t sub_10005808C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_seatFan);
  if (![v1 hasOn])
  {
    v4 = CAFSeatFan.isVenting.getter();
    v5 = [v1 autoMode];
    v6 = [v1 fanLevelRestricted];
    v7 = [v1 fanLevelInvalid];
    v8 = [v1 fanLevelDisabled];
    if (v4)
    {
      if (v5)
      {
        if (v6)
        {
          if (v7)
          {
            result = 15;
          }

          else
          {
            result = 7;
          }

          if ((v8 & 1) == 0)
          {
            return result;
          }
        }

        else
        {
          if (v7)
          {
            result = 11;
          }

          else
          {
            result = 3;
          }

          if (!v8)
          {
            return result;
          }
        }
      }

      else if (v6)
      {
        if (v7)
        {
          result = 13;
        }

        else
        {
          result = 5;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v7)
        {
          result = 9;
        }

        else
        {
          result = 1;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v5)
    {
      if (v6)
      {
        if (v7)
        {
          result = 14;
        }

        else
        {
          result = 6;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        if (v7)
        {
          result = 10;
        }

        else
        {
          result = 2;
        }

        if ((v8 & 1) == 0)
        {
          return result;
        }
      }
    }

    else if (v6)
    {
      if (v7)
      {
        result = 12;
      }

      else
      {
        result = 4;
      }

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      if (v7)
      {
        result = 8;
      }

      else
      {
        result = 0;
      }

      if ((v8 & 1) == 0)
      {
        return result;
      }
    }

    return result | 0x10;
  }

  v2 = [v1 autoMode];
  if ([v1 onRestricted])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v1 fanLevelRestricted];
  }

  if ([v1 onInvalid])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v1 fanLevelInvalid];
  }

  if ([v1 onDisabled])
  {
    if (v2)
    {
      if (v3)
      {
        if ((v10 & 1) == 0)
        {
          return 22;
        }

        return 30;
      }

      if (v10)
      {
        return 26;
      }

      return 18;
    }

    if (v3)
    {
      if (v10)
      {
        return 28;
      }

      return 20;
    }

    if (v10)
    {
      return 24;
    }

    return 16;
  }

  v11 = [v1 fanLevelDisabled];
  if (v2)
  {
    if (v3)
    {
      if (v10)
      {
        if (v11)
        {
          return 30;
        }

        return 14;
      }

      else
      {
        if (v11)
        {
          return 22;
        }

        return 6;
      }
    }

    else if (v10)
    {
      if (v11)
      {
        return 26;
      }

      return 10;
    }

    else
    {
      if (v11)
      {
        return 18;
      }

      return 2;
    }
  }

  else if (v3)
  {
    if (v10)
    {
      if (v11)
      {
        return 28;
      }

      return 12;
    }

    else
    {
      if (v11)
      {
        return 20;
      }

      return 4;
    }
  }

  else if (v10)
  {
    if (v11)
    {
      return 24;
    }

    return 8;
  }

  else
  {
    if (v11)
    {
      return 16;
    }

    return 0;
  }
}

char *sub_1000584A8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CAUVehicleLayoutKey();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_currentValue] = 0;
  v8 = OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_autoModeGlyph;
  *&v2[v8] = [objc_allocWithZone(UIImageView) init];
  sub_10000827C(0, &unk_100116360);
  CAFPositionedRequired.layoutKey.getter();
  sub_100028A98();
  LOBYTE(v8) = v9;
  (*(v5 + 8))(v7, v4);
  v10 = "carseat.left.fan";
  v11 = 0xD000000000000010;
  if (v8)
  {
    v11 = 0xD000000000000011;
  }

  else
  {
    v10 = "eatFanServiceButton.swift";
  }

  v12 = (v10 | 0x8000000000000000);
  v13 = &v2[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_symbolName];
  v175 = v12;
  v176 = v11;
  *v13 = v11;
  v13[1] = v12;
  *&v2[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_seatFan] = a1;

  v14 = a1;
  v177 = [v14 fanLevel];
  v15 = [v14 fanLevelRange];
  v16 = [v15 int32Range];

  v17 = &selRef_maxDefrostOn;
  v18 = [v16 minimum];
  v19 = [v18 intValue];

  v20 = [v16 maximum];
  v21 = [v20 intValue];

  v22 = v21 & (v21 >> 31);
  v23 = v19 - v22;
  if (__OFSUB__(v19, v22))
  {
    __break(1u);
    goto LABEL_54;
  }

  v24 = [v16 maximum];
  v25 = [v24 intValue];

  v20 = [v16 minimum];
  v26 = [v20 intValue];

  v27 = v26 & ~(v26 >> 31);
  v28 = __OFSUB__(v25, v27);
  v29 = v25 - v27;
  if (v28)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v173 = v14;
  v174 = v2;
  if (v23 >= 0)
  {
    v30 = v23;
  }

  else
  {
    v30 = -v23;
  }

  if (v29 < 0)
  {
    v29 = -v29;
  }

  v172 = v16;
  if (v30 <= 3 && v29 < 4)
  {
    v31 = objc_allocWithZone(type metadata accessor for ClimateDotsProgressView());
    v32 = OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_stackView;
    sub_10000827C(0, &unk_100116370);
    *&v31[v32] = UIStackView.init(axis:spacing:arrangedSubviews:)();
    *&v31[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_dots] = &_swiftEmptyArrayStorage;
    *&v31[OBJC_IVAR____TtC7Climate23ClimateDotsProgressView_diameter] = 0x4010000000000000;
    v33 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    v34 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
    v35 = v16;
    *&v31[v33] = [v34 init];
    v31[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
    v36 = &v31[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
    v37 = objc_opt_self();
    v38 = [v37 labelColor];
    v39 = [v37 labelColor];
    v40 = [v39 colorWithAlphaComponent:0.25];

    v41 = [v37 labelColor];
    *v36 = v38;
    v36[1] = v40;
    v36[2] = v41;
    v36[3] = &_swiftEmptyDictionarySingleton;
    *&v31[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
    *&v31[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v35;
    *&v31[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v177;
    v42 = type metadata accessor for ClimateProgressView();
    v180.receiver = v31;
    v180.super_class = v42;
    v43 = v35;
    v44 = objc_msgSendSuper2(&v180, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
    v45 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
    [*(v44 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
    result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
    if (result)
    {
      v47 = result;
      v48 = [objc_opt_self() configurationWithFont:result scale:3];

      v49 = *(v44 + v45);
      v50 = v48;
      v51 = ClimateButton.imageSymbolConfiguration.getter();
      v52 = *&v49[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
      *&v49[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v50;
      v53 = v50;

      v54 = ClimateButton.imageSymbolConfiguration.getter();
      sub_10000827C(0, &qword_100116930);
      LOBYTE(v52) = static NSObject.== infix(_:_:)();

      if ((v52 & 1) == 0)
      {
        ClimateButton.updateClimateConfiguration()();
      }

      v55 = *(v44 + v45);
      v56 = &v55[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
      swift_beginAccess();
      v57 = *v56;
      v58 = *(v56 + 1);
      v60 = v175;
      v59 = v176;
      *v56 = v176;
      *(v56 + 1) = v60;
      if (!v58 || (v59 != v57 || v60 != v58) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v61 = v55;
        ClimateButton.updateClimateConfiguration()();
      }

      [*(v44 + v45) setContentMode:1];
      [*(v44 + v45) _setContinuousCornerRadius:0.0];
      v62 = *(v44 + v45);
      v63 = &v62[OBJC_IVAR____TtC7Climate13ClimateButton_title];
      swift_beginAccess();
      v64 = *(v63 + 1);
      *v63 = 0;
      *(v63 + 1) = 0;
      if (v64)
      {
        v65 = v62;
        ClimateButton.updateClimateConfiguration()();
      }

      v66 = [*(v44 + v45) titleLabel];
      if (v66)
      {
        v67 = v66;
        [v66 setNumberOfLines:1];
      }

      v175 = v53;
      v176 = v43;
      v68 = *(v44 + v45);
      v69 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
      swift_beginAccess();
      v70 = v68[v69];
      v68[v69] = 1;
      if ((v70 & 1) == 0)
      {
        v71 = v68;
        ClimateButton.updateClimateConfiguration()();
      }

      v72 = *(v44 + v45);
      v73 = [v37 clearColor];
      v74 = *(v44 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
      sub_10007A4CC(v73, v74, &_swiftEmptyDictionarySingleton);

      [v44 addSubview:*(v44 + v45)];
      v75 = [*(v44 + v45) centerYAnchor];
      v76 = [v44 centerYAnchor];
      v77 = [v75 constraintEqualToAnchor:v76];

      v78 = objc_opt_self();
      sub_1000040E8(&unk_100114770);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_1000D5D90;
      v80 = [*(v44 + v45) widthAnchor];
      v81 = [v80 constraintEqualToConstant:30.0];

      *(v79 + 32) = v81;
      v82 = [*(v44 + v45) heightAnchor];
      v83 = [v82 constraintEqualToConstant:30.0];

      *(v79 + 40) = v83;
      *(v79 + 48) = v77;
      v84 = *(v44 + v45);
      v85 = v77;
      v86 = [v84 centerXAnchor];
      v87 = [v44 centerXAnchor];

      v88 = [v86 constraintEqualToAnchor:v87];
      *(v79 + 56) = v88;
      sub_10000827C(0, &qword_1001149C0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v78 activateConstraints:isa];

      v90 = *(v44 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
      *(v44 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v85;
      v91 = v85;

      if (v177)
      {
        (*((swift_isaMask & *v44) + 0x128))(0);
      }

      else
      {
        (*((swift_isaMask & *v44) + 0x120))(0);
      }

      v124 = v174;
      v156 = v172;
      v159 = v176;

      v158 = v44;
      sub_100034D30(v177, v159, 4.0);
      goto LABEL_49;
    }

LABEL_57:
    __break(1u);
    return result;
  }

  v92 = objc_allocWithZone(type metadata accessor for ClimateBarProgressView());
  v93 = [objc_allocWithZone(UIView) init];
  [v93 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v93 _setContinuousCornerRadius:2.0];
  *&v92[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_trackView] = v93;
  v94 = [objc_allocWithZone(UIView) init];
  [v94 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v94 _setContinuousCornerRadius:2.0];
  *&v92[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressView] = v94;
  v95 = [v94 widthAnchor];
  v96 = [v95 constraintEqualToConstant:0.0];

  *&v92[OBJC_IVAR____TtC7Climate22ClimateBarProgressView_progressViewConstraint] = v96;
  v97 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  v98 = objc_allocWithZone(type metadata accessor for ClimatePassthroughButton());
  v99 = v16;
  *&v92[v97] = [v98 init];
  v92[OBJC_IVAR____TtC7Climate19ClimateProgressView_isHighlighted] = 0;
  v100 = &v92[OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig];
  v101 = objc_opt_self();
  v102 = [v101 labelColor];
  v103 = [v101 labelColor];
  v104 = [v103 colorWithAlphaComponent:0.25];

  v105 = [v101 labelColor];
  *v100 = v102;
  v100[1] = v104;
  v100[2] = v105;
  v100[3] = &_swiftEmptyDictionarySingleton;
  *&v92[OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint] = 0;
  *&v92[OBJC_IVAR____TtC7Climate19ClimateProgressView_range] = v99;
  *&v92[OBJC_IVAR____TtC7Climate19ClimateProgressView_currentValue] = v177;
  v106 = type metadata accessor for ClimateProgressView();
  v178.receiver = v92;
  v178.super_class = v106;
  v107 = v99;
  v108 = objc_msgSendSuper2(&v178, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v108 setTranslatesAutoresizingMaskIntoConstraints:0];
  v109 = OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView;
  [*(v108 + OBJC_IVAR____TtC7Climate19ClimateProgressView_contentView) setTranslatesAutoresizingMaskIntoConstraints:0];
  result = [objc_opt_self() _preferredFontForTextStyle:UIFontTextStyleBody weight:UIFontWeightSemibold];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v110 = result;
  v111 = [objc_opt_self() configurationWithFont:result scale:3];

  v112 = *(v108 + v109);
  v113 = v111;
  v114 = ClimateButton.imageSymbolConfiguration.getter();
  v115 = *&v112[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration];
  *&v112[OBJC_IVAR____TtC7Climate13ClimateButton____lazy_storage___imageSymbolConfiguration] = v113;
  v116 = v113;

  v117 = ClimateButton.imageSymbolConfiguration.getter();
  sub_10000827C(0, &qword_100116930);
  LOBYTE(v115) = static NSObject.== infix(_:_:)();

  if ((v115 & 1) == 0)
  {
    ClimateButton.updateClimateConfiguration()();
  }

  v118 = *(v108 + v109);
  v119 = &v118[OBJC_IVAR____TtC7Climate13ClimateButton_imageSystemName];
  swift_beginAccess();
  v120 = *v119;
  v121 = *(v119 + 1);
  v123 = v175;
  v122 = v176;
  *v119 = v176;
  *(v119 + 1) = v123;
  v124 = v174;
  if (!v121 || (v122 != v120 || v123 != v121) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v125 = v118;
    ClimateButton.updateClimateConfiguration()();
  }

  [*(v108 + v109) setContentMode:1];
  [*(v108 + v109) _setContinuousCornerRadius:0.0];
  v126 = *(v108 + v109);
  v127 = &v126[OBJC_IVAR____TtC7Climate13ClimateButton_title];
  swift_beginAccess();
  v128 = *(v127 + 1);
  *v127 = 0;
  *(v127 + 1) = 0;
  if (v128)
  {
    v129 = v126;
    ClimateButton.updateClimateConfiguration()();
  }

  v130 = [*(v108 + v109) titleLabel];
  if (v130)
  {
    v131 = v130;
    [v130 setNumberOfLines:1];
  }

  v175 = v116;
  v176 = v107;
  v132 = *(v108 + v109);
  v133 = OBJC_IVAR____TtC7Climate13ClimateButton_smallTitle;
  swift_beginAccess();
  v134 = v132[v133];
  v132[v133] = 1;
  if ((v134 & 1) == 0)
  {
    v135 = v132;
    ClimateButton.updateClimateConfiguration()();
  }

  v136 = *(v108 + v109);
  v137 = [v101 clearColor];
  v138 = *(v108 + OBJC_IVAR____TtC7Climate19ClimateProgressView_progressColorConfig);
  sub_10007A4CC(v137, v138, &_swiftEmptyDictionarySingleton);

  [v108 addSubview:*(v108 + v109)];
  v139 = [*(v108 + v109) centerYAnchor];
  v140 = [v108 centerYAnchor];
  v141 = [v139 constraintEqualToAnchor:v140];

  v142 = objc_opt_self();
  sub_1000040E8(&unk_100114770);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_1000D5D90;
  v144 = [*(v108 + v109) widthAnchor];
  v145 = [v144 constraintEqualToConstant:30.0];

  *(v143 + 32) = v145;
  v146 = [*(v108 + v109) heightAnchor];
  v147 = [v146 constraintEqualToConstant:30.0];

  *(v143 + 40) = v147;
  *(v143 + 48) = v141;
  v148 = *(v108 + v109);
  v149 = v141;
  v150 = [v148 centerXAnchor];
  v151 = [v108 centerXAnchor];

  v152 = [v150 constraintEqualToAnchor:v151];
  *(v143 + 56) = v152;
  sub_10000827C(0, &qword_1001149C0);
  v153 = Array._bridgeToObjectiveC()().super.isa;

  [v142 activateConstraints:v153];

  v154 = *(v108 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint);
  *(v108 + OBJC_IVAR____TtC7Climate19ClimateProgressView_centerSymbolYConstraint) = v149;
  v155 = v149;

  if (v177)
  {
    (*((swift_isaMask & *v108) + 0x128))(0);
  }

  else
  {
    (*((swift_isaMask & *v108) + 0x120))(0);
  }

  v156 = v172;
  v157 = v176;

  v158 = v108;
  sub_10008FE7C(4.0, 18.0);
LABEL_49:

  *&v124[OBJC_IVAR____TtC7Climate27ClimateSeatFanServiceButton_progressView] = v158;
  v160 = type metadata accessor for ClimateSeatFanServiceButton();
  v179.receiver = v124;
  v179.super_class = v160;
  v161 = objc_msgSendSuper2(&v179, "init");
  sub_1000599BC();
  v162 = v173;
  [v173 registerObserver:v161];
  v163 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v164 = swift_allocObject();
  *(v164 + 16) = v163;
  *(v164 + 24) = v162;
  v165 = &v161[OBJC_IVAR____TtC7Climate13ClimateButton_action];
  swift_beginAccess();
  v166 = *v165;
  *v165 = sub_10005A564;
  v165[1] = v164;
  v17 = v162;
  v20 = v161;

  sub_100003380(v166);

  if (qword_100113ED0 != -1)
  {
LABEL_55:
    swift_once();
  }

  v167 = qword_10011B088;
  v168 = qword_10011B098;
  if (qword_100113E98 != -1)
  {
    swift_once();
  }

  v169 = qword_10011AFB0;
  v170 = v167;

  sub_1000A70A8(v170, v169, v168);

  sub_10006DBA8();
  sub_100059C30();

  return v20;
}