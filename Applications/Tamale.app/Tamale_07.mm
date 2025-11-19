uint64_t sub_1000BE6FC(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v42 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&unk_1001D9C60);
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
        sub_1000C54DC(v27 + v28 * v24, v47, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1000C5474(v29 + v28 * v24, v47, type metadata accessor for ARCameraSource.Tracker.TrackState);
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
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
      result = sub_1000C54DC(v47, *(v12 + 56) + v28 * v20, type metadata accessor for ARCameraSource.Tracker.TrackState);
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

uint64_t sub_1000BEB9C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1000033A8(&unk_1001D80A0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v35 - v6;
  v8 = *v2;
  sub_1000033A8(&qword_1001D9C58);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v36 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1000C5404(v25, v7);
      }

      else
      {
        sub_1000C5394(v25, v7);
        v26 = v23;
      }

      result = NSObject._rawHashValue(seed:)(*(v10 + 40));
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
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      result = sub_1000C5404(v7, *(v10 + 56) + v24 * v18);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1000BEEB0(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for CVTrackedDetection.Prediction();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1000033A8(&qword_1001D9C40);
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

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
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

uint64_t sub_1000BF358(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1000033A8(&unk_1001D9C48);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v47 = v8;
    v39 = v2;
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
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v46 = *(v42 + 72);
      v26 = v25 + v46 * v24;
      if (v43)
      {
        (*v44)(v47, v26, v5);
        v27 = (*(v9 + 56) + 16 * v24);
        v45 = *v27;
        v28 = v27[1];
      }

      else
      {
        (*v40)(v47, v26, v5);
        v29 = *(v9 + 56) + 16 * v24;
        v28 = *(v29 + 8);
        v45 = *v29;
      }

      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v46 * v19, v47, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      *v20 = v45;
      v20[1] = v28;
      ++*(v11 + 16);
      v9 = v41;
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
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1000BF754(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C00);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
    v31 = v3;
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
      result = static Hasher._hash(seed:_:)();
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000BF9B8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C08);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((a2 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Color.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
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

      v3 = v2;
      goto LABEL_33;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000BFC44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9C28);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        swift_unknownObjectRetain();
      }

      result = static Hasher._hash(seed:_:)();
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

uint64_t sub_1000BFEB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000033A8(&qword_1001D9CA0);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v22 = *(v5 + 56) + 24 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 20);
      if ((v36 & 1) == 0)
      {
      }

      result = static Hasher._hash(seed:_:)();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 24 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 20) = v26;
      ++*(v7 + 16);
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

    if (v36)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1000C0184(uint64_t a1, int a2, uint64_t *a3)
{
  v5 = v3;
  v7 = type metadata accessor for CVDetection.DetectionType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  sub_1000033A8(a3);
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

      sub_1000C55A8(&qword_1001D8388, &type metadata accessor for CVDetection.DetectionType);
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

unint64_t sub_1000C0560(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(sub_1000033A8(&unk_1001D8190) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

unint64_t sub_1000C08B0(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1000C55A8(&unk_1001D9550, &type metadata accessor for UUID);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for ARCameraSource.Tracker.TrackState(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

  return result;
}

uint64_t sub_1000C0BF4(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = static Hasher._hash(seed:_:)();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1000C0D64(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C22D4();
      goto LABEL_7;
    }

    sub_1000BE24C(v17, a3 & 1);
    v28 = sub_100095B4C(a2);
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
      return sub_1000C1984(v14, v11, a1, v20);
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
  v22 = sub_1000033A8(&unk_1001D8190);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1000C0F74(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C2630();
      goto LABEL_7;
    }

    sub_1000BE6FC(v17, a3 & 1);
    v24 = sub_100095B4C(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1000C1A84(v14, v11, a1, v20);
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
  v22 = v21 + *(*(type metadata accessor for ARCameraSource.Tracker.TrackState(0) - 8) + 72) * v14;

  return sub_1000C5544(a1, v22);
}

uint64_t sub_1000C115C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_100095B4C(a2);
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
      sub_1000C2B6C();
      goto LABEL_7;
    }

    sub_1000BEEB0(v17, a3 & 1);
    v28 = sub_100095B4C(a2);
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
      return sub_1000C1B74(v14, v11, a1, v20);
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
  v22 = type metadata accessor for CVTrackedDetection.Prediction();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

unint64_t sub_1000C1360(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100096048(a2);
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
    sub_1000C3158();
    result = v17;
    goto LABEL_8;
  }

  sub_1000BF754(v14, a3 & 1);
  result = sub_100096048(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

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

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1000C1484(uint64_t a1, char a2, __n128 a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_10009608C(a1);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a2 & 1) == 0)
  {
    if (v15 < v13 || (a2 & 1) != 0)
    {
      sub_1000BF9B8(v13, a2 & 1);
      result = sub_10009608C(a1);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1000C32A4();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 16 * result) = a3;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a1;
  *(v18[7] + 16 * result) = a3;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;
}

unint64_t sub_1000C15D8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100096048(a2);
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
      sub_1000BFC44(v14, a3 & 1);
      result = sub_100096048(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000C3404();
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

  return swift_unknownObjectRelease();
}

unint64_t sub_1000C1724(uint64_t a1, unint64_t a2, char a3, double a4, double a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1000960F8(a5);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      v21 = v13;
      sub_1000C3560();
      v13 = v21;
      goto LABEL_8;
    }

    sub_1000BFEB4(v18, a3 & 1);
    v13 = sub_1000960F8(a5);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * v13;
    *v24 = a1;
    *(v24 + 8) = a4;
    *(v24 + 16) = a2;
    *(v24 + 20) = BYTE4(a2) & 1;
  }

  else
  {

    return sub_1000C1C68(v13, a1, a2 | ((HIDWORD(a2) & 1) << 32), v23, a5, a4);
  }
}

uint64_t sub_1000C188C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for RaycastAccuracy(0);
  result = sub_1000C54DC(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for RaycastAccuracy);
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

unint64_t sub_1000C1940(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
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

uint64_t sub_1000C1984(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_1000033A8(&unk_1001D8190);
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

uint64_t sub_1000C1A84(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  result = sub_1000C54DC(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for ARCameraSource.Tracker.TrackState);
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

uint64_t sub_1000C1B74(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for CVTrackedDetection.Prediction();
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

unint64_t sub_1000C1C68(unint64_t result, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a5;
  v6 = a4[7] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a6;
  *(v6 + 16) = a3;
  *(v6 + 20) = BYTE4(a3) & 1;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

char *sub_1000C1CC4()
{
  v1 = v0;
  v33 = type metadata accessor for CVDetection.DetectionType();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C80);
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

void *sub_1000C1F44()
{
  v1 = v0;
  v2 = type metadata accessor for RaycastAccuracy(0);
  v28 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v27 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C70);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
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

    v26 = v4 + 64;
    v9 = 0;
    v10 = *(v4 + 16);
    v29 = v6;
    *(v6 + 16) = v10;
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
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v27;
        v21 = *(v28 + 72) * v19;
        sub_1000C5474(*(v4 + 48) + v21, v27, type metadata accessor for RaycastAccuracy);
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = v29;
        result = sub_1000C54DC(v20, *(v29 + 48) + v21, type metadata accessor for RaycastAccuracy);
        *(*(v23 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v25;
        v6 = v29;
        goto LABEL_18;
      }

      v18 = *(v26 + 8 * v9);
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

void *sub_1000C2188()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D8368);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

char *sub_1000C22D4()
{
  v1 = v0;
  v41 = sub_1000033A8(&unk_1001D8190);
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - v2;
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C30);
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

char *sub_1000C2630()
{
  v1 = v0;
  v2 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  v38 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v40 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C60);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_1000C5474(v26 + v28, v37, type metadata accessor for ARCameraSource.Tracker.TrackState);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_1000C54DC(v29, *(v18 + 56) + v28, type metadata accessor for ARCameraSource.Tracker.TrackState);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
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

id sub_1000C2954()
{
  v1 = v0;
  v2 = sub_1000033A8(&unk_1001D80A0);
  v24 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v4 = &v23 - v3;
  sub_1000033A8(&qword_1001D9C58);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
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
        sub_1000C5394(*(v5 + 56) + v22, v4);
        *(*(v7 + 48) + 8 * v20) = v21;
        sub_1000C5404(v4, *(v7 + 56) + v22);
        result = v21;
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

char *sub_1000C2B6C()
{
  v1 = v0;
  v41 = type metadata accessor for CVTrackedDetection.Prediction();
  v44 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for UUID();
  v43 = *(v39 - 8);
  __chkstk_darwin(v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&qword_1001D9C40);
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

id sub_1000C2EC0()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000033A8(&unk_1001D9C48);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v29 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v35 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v36 + 32;
    v31 = v36 + 16;
    v32 = v3;
    v15 = v5;
    if (v13)
    {
      do
      {
        v16 = __clz(__rbit64(v13));
        v37 = (v13 - 1) & v13;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v3 + 48) + v21, v34);
        v19 *= 16;
        v24 = *(v3 + 56) + v19;
        v25 = *v24;
        v26 = *(v24 + 8);
        (*(v20 + 32))(*(v15 + 48) + v21, v23, v22);
        v27 = (*(v15 + 56) + v19);
        *v27 = v25;
        v27[1] = v26;
        result = v25;
        v3 = v32;
        v13 = v37;
      }

      while (v37);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v35;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
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
    *v1 = v5;
  }

  return result;
}

void *sub_1000C3158()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C00);
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

void *sub_1000C32A4()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C08);
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

void *sub_1000C3404()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9C28);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1000C3560()
{
  v1 = v0;
  sub_1000033A8(&qword_1001D9CA0);
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
        v18 = *(v2 + 56) + 24 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        LOBYTE(v18) = *(v18 + 20);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v22 = *(v4 + 56) + 24 * v17;
        *v22 = v19;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 20) = v18;
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

unint64_t sub_1000C3748(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  type metadata accessor for DeviceType(0);
  result = swift_arrayDestroy();
  v11 = __OFSUB__(a3, v5);
  v12 = a3 - v5;
  if (v11)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v12)
  {
    v13 = *(v9 + 16);
    v11 = __OFSUB__(v13, a2);
    v14 = v13 - a2;
    if (!v11)
    {
      result = &v10[a3];
      v15 = (v9 + 32 + 8 * a2);
      if (result != v15 || result >= v15 + 8 * v14)
      {
        result = memmove(result, v15, 8 * v14);
      }

      v17 = *(v9 + 16);
      v11 = __OFADD__(v17, v12);
      v18 = v17 + v12;
      if (!v11)
      {
        *(v9 + 16) = v18;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v10 = a4;
    result = a4;
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t sub_1000C3828(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

void sub_1000C38C4(uint64_t a1, uint64_t a2)
{
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (((a2 | a1) & 0x8000000000000000) == 0)
  {
    if (a2 <= 0xFFFFFFFFLL)
    {
      FPSupport_EnsureCAImageQueue();
      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  goto LABEL_7;
}

uint64_t sub_1000C3DBC(uint64_t a1)
{
  result = CAImageQueueGetReleasedImageInfo();
  if (!result || !a1)
  {
    return result;
  }

  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 56);
  v6 = *(**(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_cleaning) + 136);

  v8 = atomic_load(v6(v7));

  if (v8)
  {
    goto LABEL_4;
  }

  if (!v3)
  {
    static LoggingSignposter.previewLayerCollectUndisplayed.getter();
    LoggingSignposter.emitEvent(_:shouldLog:)();
LABEL_4:
  }

  if (*(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_targetFrameInterval) + 0.001 < v5)
  {
    static LoggingSignposter.previewLayerLongPreviewFrame.getter();
    LoggingSignposter.emitEvent(_:shouldLog:)();
  }

  v9 = OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes;
  v10 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_recentDisplayTimes);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1000953CC(0, *(v10 + 2) + 1, 1, v10);
    *(a1 + v9) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1000953CC((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  *&v10[8 * v13 + 32] = v4;
  *(a1 + v9) = v10;
  v14 = sub_1000B7E3C();
  v16 = v15;
  v18 = v17;
  (v14)(v25, 0);
  if (v16 || v18)
  {
    v19 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
    v20 = swift_allocObject();
    *(v20 + 16) = a1;
    *(v20 + 24) = 1;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1000C4F50;
    *(v21 + 24) = v20;
    v25[4] = sub_1000C5638;
    v25[5] = v21;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 1107296256;
    v25[2] = sub_100071D78;
    v25[3] = &unk_1001C3928;
    v22 = _Block_copy(v25);

    dispatch_sync(v19, v22);
    _Block_release(v22);
    LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

    if (v19)
    {
      __break(1u);
      return result;
    }

    v23 = *(a1 + OBJC_IVAR____TtC6Tamale12PreviewLayer_previewFrameDisplayedCallback);
    if (v23)
    {

      v23(v24);
      sub_100005640(v23);
    }
  }
}

unint64_t sub_1000C4108(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 8 * result + 8 * a3;
  v10 = (v6 + 32 + 8 * a2);
  if (result != v10 || result >= v10 + 8 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 8 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000C41B0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1000953CC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1000C4108(v6, a2, 0);
  *v2 = v4;
  return result;
}

void sub_1000C4270(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __IOSurface *a6)
{
  v79 = a5;
  v80 = a6;
  v78 = a1;
  v10 = type metadata accessor for CameraImage();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000033A8(&unk_1001D9BE8);
  v76 = *(v14 - 8);
  v77 = v14;
  __chkstk_darwin(v14);
  v75 = &v64 - v15;
  v16 = type metadata accessor for CameraSourceFrameMetadata();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a4 == 1 || a4 == 3 && a2 == 2 && !a3)
    {
      v73 = v6;
      v74 = Strong;
      dispatch thunk of CameraSourceFrame.metadata.getter();
      v21 = CameraSourceFrameMetadata.isHighResolutionStill.getter();
      v22 = *(v17 + 8);
      v72 = v19;
      v71 = v22;
      v70 = v17 + 8;
      v22(v19, v16);
      if (v21)
      {

        return;
      }

      dispatch thunk of CameraSourceFrame.cameraImage.getter();
      if ((*(v11 + 88))(v13, v10) != enum case for CameraImage.pixelBuffer(_:))
      {

        (*(v11 + 8))(v13, v10);
        return;
      }

      (*(v11 + 96))(v13, v10);
      (*(v76 + 32))(v75, v13, v77);
      SendableTransfer.wrappedValue.getter();
      v23 = aBlock;
      v24 = v73;
      v25 = v73 + OBJC_IVAR____TtC6Tamale12PreviewLayer_queueWrapper;
      swift_beginAccess();
      v26 = v72;
      if (*v25)
      {
        goto LABEL_16;
      }

      Width = CVPixelBufferGetWidth(v23);
      v68 = v23;
      Height = CVPixelBufferGetHeight(v23);
      sub_1000C38C4(Width, Height);
      v30 = v29;
      v32 = v31;
      swift_beginAccess();
      if (*v25)
      {
        sub_1000C4EE0(*v25);
      }

      *v25 = v30;
      *(v25 + 8) = v32;
      swift_endAccess();
      v33 = *(v24 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
      v34 = swift_allocObject();
      *(v34 + 16) = v24;
      *(v34 + 24) = 1;
      v35 = swift_allocObject();
      *(v35 + 16) = sub_1000C5634;
      *(v35 + 24) = v34;
      v86 = sub_1000C5638;
      v87 = v35;
      aBlock = _NSConcreteStackBlock;
      v83 = 1107296256;
      v84 = sub_100071D78;
      v85 = &unk_1001C37C0;
      v36 = _Block_copy(&aBlock);

      dispatch_sync(v33, v36);
      _Block_release(v36);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      v23 = v68;
      if (v33)
      {
        __break(1u);
      }

      else
      {
LABEL_16:
        v38 = sub_1000B7E3C();
        v69 = v39;
        if (!v39 && !v37)
        {
          (v38)(&aBlock, 0);

          (*(v76 + 8))(v75, v77);
          return;
        }

        (v38)(&aBlock, 0);
        v40 = *(v24 + OBJC_IVAR____TtC6Tamale12PreviewLayer__layerStateMutexQueue);
        OS_dispatch_queue.sync<A>(execute:)();
        if (aBlock == 1)
        {
          v68 = v40;
          sub_10005BBC4(0, &qword_1001D6B40);
          v41 = static OS_dispatch_queue.main.getter();
          v42 = swift_allocObject();
          v43 = v69;
          *(v42 + 16) = v74;
          *(v42 + 24) = v43;
          v44 = swift_allocObject();
          *(v44 + 16) = sub_1000C4F38;
          *(v44 + 24) = v42;
          v67 = v42;
          v86 = sub_1000C5638;
          v87 = v44;
          aBlock = _NSConcreteStackBlock;
          v83 = 1107296256;
          v84 = sub_100071D78;
          v85 = &unk_1001C3838;
          v45 = _Block_copy(&aBlock);
          v46 = v74;

          dispatch_sync(v41, v45);

          _Block_release(v45);
          LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

          if (v41)
          {
LABEL_41:
            __break(1u);
            goto LABEL_42;
          }

          v47 = swift_allocObject();
          *(v47 + 16) = v24;
          *(v47 + 24) = 0;
          v48 = swift_allocObject();
          *(v48 + 16) = sub_1000C5634;
          *(v48 + 24) = v47;
          v86 = sub_1000C5638;
          v87 = v48;
          aBlock = _NSConcreteStackBlock;
          v83 = 1107296256;
          v84 = sub_100071D78;
          v85 = &unk_1001C38B0;
          v49 = _Block_copy(&aBlock);

          dispatch_sync(v68, v49);
          _Block_release(v49);
          LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

          if (v49)
          {
LABEL_42:
            __break(1u);
            return;
          }

          v50 = sub_1000C4F38;
        }

        else
        {
          v50 = 0;
          v67 = 0;
        }

        IOSurface = CVPixelBufferGetIOSurface(v23);
        if (!IOSurface)
        {
          (*(v76 + 8))(v75, v77);

          v63 = v50;
LABEL_36:
          sub_100005640(v63);
          return;
        }

        v65 = v50;
        v66 = v16;
        v52 = IOSurface;
        BaseAddress = IOSurfaceGetBaseAddress(v52);
        v54 = OBJC_IVAR____TtC6Tamale12PreviewLayer_bufferIdentifiers;
        swift_beginAccess();
        v55 = *(v24 + v54);
        if (!*(v55 + 16) || (sub_100096048(BaseAddress), (v56 & 1) == 0))
        {
          static LoggingSignposter.previewLayerImageQueueRegisterSurface.getter();
          v68 = v23;
          default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
          LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
          v57 = CAImageQueueRegisterIOSurfaceBuffer();
          sub_100006AAC(&aBlock, v85);
          v23 = v68;
          dispatch thunk of LoggingSignposter.Interval.end()();
          sub_100006B44(&aBlock);
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v81 = *(v24 + v54);
          *(v24 + v54) = 0x8000000000000000;
          sub_1000C1360(v57, BaseAddress, isUniquelyReferenced_nonNull_native);
          v55 = v81;
          *(v24 + v54) = v81;
          swift_endAccess();
        }

        v80 = v52;
        if (*(v55 + 16))
        {
          sub_100096048(BaseAddress);
          if (v59)
          {
            v60 = CACurrentMediaTime();
            sub_1000B96F4(v60);
            static LoggingSignposter.previewLayerImageQueueEnqueue.getter();
            LoggingSignposter.emitEvent(_:shouldLog:)();
            dispatch thunk of CameraSourceFrame.metadata.getter();
            sub_1000B9C44();
            v71(v26, v66);
            CAImageQueueInsertImageWithRotation();
            static LoggingSignposter.previewLayerImageQueueCollect.getter();
            default argument 2 of LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
            LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)();
            v61 = CAImageQueueCollect();
            sub_100006AAC(&aBlock, v85);
            dispatch thunk of LoggingSignposter.Interval.end()();
            if (v61 > 1)
            {
              (*(v76 + 8))(v75, v77);

              v62 = v65;
            }

            else
            {
              static LoggingSignposter.previewLayerConsumeUnconsumed.getter();
              LoggingSignposter.emitEvent(_:shouldLog:)();
              v62 = v65;
              CAImageQueueConsumeUnconsumedInRange();

              (*(v76 + 8))(v75, v77);
            }

            sub_100006B44(&aBlock);
            v63 = v62;
            goto LABEL_36;
          }

          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }
  }
}

void sub_1000C4EE0(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_1000C4F00()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4F5C()
{

  return swift_deallocObject();
}

uint64_t sub_1000C4FA0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1000C4FD8()
{
  v1 = *(v0 + 16);
  v2 = sub_1000033A8(&unk_1001D9BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);

  if (*(v0 + 64) >= 5uLL)
  {
  }

  v8 = (v4 + 97) & ~v4;
  sub_1000616E4(*(v0 + 80), *(v0 + 88), *(v0 + 96));
  (*(v3 + 8))(v0 + v8, v2);
  (*(v6 + 8))(v0 + ((v8 + v5 + v7) & ~v7), v1);

  return swift_deallocObject();
}

uint64_t sub_1000C5164()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1000033A8(&unk_1001D9BE8) - 8);
  v3 = (*(v2 + 80) + 97) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  return sub_1000BAA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), (v0 + 56), v0 + v3, v0 + v4, *(v0 + ((*(*(v1 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)), v1);
}

uint64_t sub_1000C532C(uint64_t a1)
{
  v2 = sub_1000033A8(&unk_1001D9590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000C5394(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D80A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&unk_1001D80A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C5474(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C54DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C5544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ARCameraSource.Tracker.TrackState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000C55A8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1000C5798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SubjectLiftViewDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C5800()
{
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_1000C58A4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 40);
}

uint64_t sub_1000C5950()
{
  swift_getKeyPath();
  sub_1000C5E60(&qword_1001D9EC0, type metadata accessor for SubjectLiftAnalysisViewModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1000C5A1C()
{
  *(v0 + 16) = [objc_allocWithZone(UIView) init];
  *(v0 + 24) = [objc_allocWithZone(type metadata accessor for SubjectLiftViewDelegate()) init];
  *(v0 + 32) = [objc_allocWithZone(VKCImageAnalysisInteraction) init];
  *(v0 + 40) = &_swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  [*(v0 + 32) setWantsAutomaticContentsRectCalculation:0];
  [*(v0 + 32) setDelegate:*(v0 + 24)];
  [*(v0 + 16) addInteraction:*(v0 + 32)];
  return v0;
}

uint64_t sub_1000C5AD4()
{

  v1 = OBJC_IVAR____TtC6Tamale28SubjectLiftAnalysisViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C5BB8()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000C5C7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000C5CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000C5D8C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000C5E60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000C5EA8()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

Swift::Int sub_1000C5EE4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  Hasher.init(_seed:)();
  if (a3 <= 1u)
  {
    if (a3)
    {
      v6 = 4;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
    v7 = a1;
    goto LABEL_8;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 1;
    }

LABEL_8:
    Hasher._combine(_:)(v7);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(5uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000C5FE4()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }

    Hasher._combine(_:)(v3);
    v5 = v1;
    goto LABEL_10;
  }

  v4 = v0[1];
  if (v2 != 2)
  {
    if (v1 | v4)
    {
      if (v1 ^ 1 | v4)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_10:
    Hasher._combine(_:)(v5);
    return;
  }

  Hasher._combine(_:)(5uLL);

  String.hash(into:)();
}

Swift::Int sub_1000C60A8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  if (v3 <= 1)
  {
    if (v3)
    {
      v4 = 4;
    }

    else
    {
      v4 = 0;
    }

    Hasher._combine(_:)(v4);
    v5 = v1;
    goto LABEL_8;
  }

  if (v3 != 2)
  {
    if (v1 | v2)
    {
      if (v1 ^ 1 | v2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = 1;
    }

LABEL_8:
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(5uLL);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000C6178@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C6624(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C61B0()
{
  v1 = 0x6E2820796D6C6162;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0x2820797473616F74;
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

uint64_t sub_1000C635C(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1000C6378(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000C63C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1000C6404(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1000C6434()
{
  result = qword_1001D9F60;
  if (!qword_1001D9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F60);
  }

  return result;
}

unint64_t sub_1000C6488()
{
  result = qword_1001D9F68;
  if (!qword_1001D9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F68);
  }

  return result;
}

unint64_t sub_1000C64E4()
{
  result = qword_1001D9F70;
  if (!qword_1001D9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F70);
  }

  return result;
}

uint64_t sub_1000C6538(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        return a4 == a1;
      }
    }

    else if (!a6)
    {
      return a4 == a1;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a1 | a2)
    {
      if (a1 ^ 1 | a2)
      {
        if (a6 == 3 && a4 == 2 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 3 && a4 == 1 && !a5)
      {
        return 1;
      }
    }

    else if (a6 == 3 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

unint64_t sub_1000C6624(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000C6634()
{
  result = qword_1001D9F78;
  if (!qword_1001D9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F78);
  }

  return result;
}

unint64_t sub_1000C66A4()
{
  result = qword_1001D9F80;
  if (!qword_1001D9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001D9F80);
  }

  return result;
}

void *sub_1000C6704()
{
  v1 = type metadata accessor for Text.Layout.Line();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Text.Layout();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v18[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000033A8(&qword_1001DA1A0);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18[-1] - v11;
  v19 = &_swiftEmptyArrayStorage;
  (*(v6 + 16))(v8, v0, v5);
  sub_1000CB3D8(&qword_1001DA1A8, &type metadata accessor for Text.Layout);
  dispatch thunk of Sequence.makeIterator()();
  v13 = *(v10 + 44);
  sub_1000CB3D8(&qword_1001DA1B0, &type metadata accessor for Text.Layout);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v12[v13] != v18[0])
  {
    v14 = (v2 + 16);
    do
    {
      v15 = dispatch thunk of Collection.subscript.read();
      (*v14)(v4);
      v15(v18, 0);
      dispatch thunk of Collection.formIndex(after:)();
      sub_1000EB94C(v4);
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v12[v13] != v18[0]);
  }

  sub_10001370C(v12, &qword_1001DA1A0);
  return v19;
}

uint64_t sub_1000C69FC(uint64_t a1)
{
  v68 = a1;
  v1 = sub_1000033A8(&qword_1001DA138);
  __chkstk_darwin(v1);
  v65 = &v48 - v2;
  v3 = sub_1000033A8(&qword_1001DA148);
  v4 = __chkstk_darwin(v3 - 8);
  v64 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v63 = &v48 - v7;
  __chkstk_darwin(v6);
  v9 = &v48 - v8;
  v49 = type metadata accessor for Text.CustomAttributes();
  v61 = *(v49 - 8);
  __chkstk_darwin(v49);
  v71 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AttributedString.Runs.Index();
  v67 = *(v70 - 8);
  __chkstk_darwin(v70);
  v69 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AttributedString.Runs.Run();
  v60 = *(v73 - 8);
  v12 = __chkstk_darwin(v73);
  v72 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v62 = &v48 - v14;
  v15 = type metadata accessor for AttributedString.Runs();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AttributedSubstring();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000033A8(&qword_1001DA150);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v48 - v25;
  v27 = sub_100013608(&qword_1001DA158, &qword_1001DA138);
  v66 = v1;
  v59 = v27;
  AttributedString.subscript.getter();
  AttributedSubstring.runs.getter();
  (*(v20 + 8))(v22, v19);
  (*(v16 + 16))(v26, v18, v15);
  v28 = *(v24 + 44);
  v29 = v15;
  v30 = sub_1000CB3D8(&qword_1001DA160, &type metadata accessor for AttributedString.Runs);
  v68 = v28;
  dispatch thunk of Collection.startIndex.getter();
  v31 = v18;
  v32 = v49;
  (*(v16 + 8))(v31, v29);
  ++v67;
  v57 = (v60 + 16);
  v56 = (v60 + 32);
  v55 = (v61 + 48);
  v50 = (v61 + 32);
  v54 = (v61 + 16);
  v53 = (v61 + 56);
  v52 = (v61 + 8);
  v51 = (v60 + 8);
  v60 = v26;
  v61 = v29;
  v58 = v30;
  while (1)
  {
    v40 = v69;
    dispatch thunk of Collection.endIndex.getter();
    sub_1000CB3D8(&qword_1001DA168, &type metadata accessor for AttributedString.Runs.Index);
    v41 = v70;
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v67)(v40, v41);
    if (v42)
    {
      break;
    }

    v43 = dispatch thunk of Collection.subscript.read();
    v44 = v62;
    v45 = v73;
    (*v57)(v62);
    v43(v74, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v56)(v72, v44, v45);
    sub_1000CB0CC();
    AttributedString.Runs.Run.subscript.getter();
    v46 = *v55;
    if ((*v55)(v9, 1, v32) == 1)
    {
      Text.CustomAttributes.init()();
      if (v46(v9, 1, v32) != 1)
      {
        sub_10001370C(v9, &qword_1001DA148);
      }
    }

    else
    {
      (*v50)(v71, v9, v32);
    }

    sub_1000CB120();
    v33 = v71;
    Text.CustomAttributes.add<A>(_:)();
    v34 = v9;
    v35 = v65;
    v36 = v72;
    AttributedString.Runs.Run.range.getter();
    v37 = v63;
    (*v54)(v63, v33, v32);
    (*v53)(v37, 0, 1, v32);
    v38 = AttributedString.subscript.modify();
    sub_1000CB174(v37, v64);
    AttributedSubstring.subscript.setter();
    sub_10001370C(v37, &qword_1001DA148);
    v38(v74, 0);
    v39 = v35;
    v9 = v34;
    sub_10001370C(v39, &qword_1001DA138);
    (*v52)(v33, v32);
    (*v51)(v36, v73);
    v26 = v60;
  }

  return sub_10001370C(v26, &qword_1001DA150);
}

uint64_t sub_1000C72F8@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = sub_1000033A8(&qword_1001DA128);
  __chkstk_darwin(v1 - 8);
  v3 = &v49 - v2;
  v4 = sub_1000033A8(&qword_1001DA130);
  __chkstk_darwin(v4 - 8);
  v6 = &v49 - v5;
  v60 = sub_1000033A8(&qword_1001DA138);
  v7 = *(v60 - 8);
  __chkstk_darwin(v60);
  v55 = &v49 - v8;
  v9 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for AttributedString();
  v52 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v56 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v49 - v13;

  v15 = String.tokensWithSpaces()();
  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  v51 = v15;
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = type metadata accessor for Locale();
    v18 = *(v17 - 8);
    v19 = *(v18 + 56);
    v58 = v18 + 56;
    v59 = v19;
    v57 = (v7 + 48);
    v53 = (v52 + 8);
    v54 = v17;
    v20 = (v51 + 40);
    do
    {
      v23 = *v20;
      v61 = *(v20 - 1);
      v62 = v23;
      v59(v3, 1, 1, v17);
      sub_1000CB3D8(&qword_1001DA140, &type metadata accessor for AttributedString);
      sub_10002EC9C();

      AttributedStringProtocol.range<A>(of:options:locale:)();
      sub_10001370C(v3, &qword_1001DA128);

      if ((*v57)(v6, 1, v60) == 1)
      {
        v21 = v6;
        v22 = &qword_1001DA130;
      }

      else
      {
        v24 = v55;
        sub_1000CB05C(v6, v55);
        sub_1000C69FC(v24);
        v25 = v6;
        v26 = v3;
        v27 = v10;
        v28 = v56;
        AttributedString.init(stringLiteral:)();
        AttributedString.insert<A>(_:at:)();
        v29 = v28;
        v10 = v27;
        v3 = v26;
        v6 = v25;
        v17 = v54;
        (*v53)(v29, v10);
        v21 = v24;
        v22 = &qword_1001DA138;
      }

      sub_10001370C(v21, v22);
      v20 += 2;
      --v16;
    }

    while (v16);
  }

  v30 = v52;
  (*(v52 + 16))(v56, v14, v10);
  v31 = Text.init(_:)();
  v33 = v32;
  v35 = v34;
  (*(v30 + 8))(v14, v10);
  static Font.largeTitle.getter();
  v36 = Text.font(_:)();
  v38 = v37;
  v40 = v39;

  sub_100020D44(v31, v33, v35 & 1);

  static Font.Weight.bold.getter();
  v41 = Text.fontWeight(_:)();
  v43 = v42;
  LOBYTE(v33) = v44;
  v46 = v45;
  sub_100020D44(v36, v38, v40 & 1);

  result = swift_getKeyPath();
  v48 = v50;
  *v50 = v41;
  v48[1] = v43;
  *(v48 + 16) = v33 & 1;
  v48[3] = v46;
  v48[4] = result;
  *(v48 + 40) = 1;
  return result;
}

uint64_t sub_1000C7890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = type metadata accessor for LocalizedStringResource();
  v44 = *(v3 - 8);
  v45 = v3;
  __chkstk_darwin(v3);
  v43 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v39 = *(v5 - 8);
  v40 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingMastheadView();
  v9 = (v8 - 8);
  v37 = *(v8 - 8);
  v10 = *(v37 + 64);
  __chkstk_darwin(v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000033A8(&qword_1001DA028);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  __chkstk_darwin(v12);
  v38 = &v34 - v14;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v15 = (v1 + v9[8]);
  v16 = *v15;
  v17 = v15[1];
  v61[0] = v16;
  v61[1] = v17;
  sub_1000033A8(&qword_1001D4888);
  State.wrappedValue.getter();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v35 = static Alignment.center.getter();
  v36 = v18;
  static Color.white.getter();
  v19 = v1 + v9[9];
  v20 = *v19;
  v21 = *(v19 + 8);
  LOBYTE(v61[0]) = v20;
  v61[1] = v21;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  v22 = Color.opacity(_:)();

  v23 = static Alignment.center.getter();
  v25 = v24;
  sub_1000C7E98(v2, v49);
  *&v50[0] = v23;
  *(&v50[0] + 1) = v25;
  v50[1] = *v49;
  v50[2] = *&v49[16];
  v50[3] = *&v49[32];
  v50[4] = *&v49[48];
  v58 = *&v49[16];
  v59 = *&v49[32];
  v60 = *&v49[48];
  v56 = v50[0];
  v57 = *v49;
  v51[0] = v23;
  v51[1] = v25;
  v52 = *v49;
  v53 = *&v49[16];
  v54 = *&v49[32];
  v55 = *&v49[48];
  sub_1000CA18C(v50, v61);
  sub_10001370C(v51, &qword_1001DA030);
  sub_1000CA1FC(v2, v11);
  v26 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v27 = swift_allocObject();
  sub_1000CA264(v11, v27 + v26);
  *v49 = &off_1001BEEC8;
  *&v49[8] = 0x403C000000000000;
  *&v49[80] = v66;
  *&v49[96] = v67;
  *&v49[16] = v62;
  *&v49[32] = v63;
  *&v49[64] = v65;
  *&v49[48] = v64;
  *&v49[160] = v71;
  *&v49[144] = v70;
  *&v49[112] = v68;
  *&v49[128] = v69;
  *&v49[176] = v22;
  *&v49[184] = v35;
  *&v49[264] = v60;
  *&v49[248] = v59;
  *&v49[232] = v58;
  *&v49[216] = v57;
  *&v49[200] = v56;
  *&v49[192] = v36;
  *&v49[280] = 0x3FD999999999999ALL;
  *&v49[288] = 0x3FF3333333333333;
  *&v49[296] = sub_1000CA2C8;
  *&v49[304] = v27;
  *&v49[312] = 0;
  *&v49[320] = 0;
  static AccessibilityChildBehavior.combine.getter();
  v28 = sub_1000033A8(&qword_1001DA038);
  v29 = sub_1000CA2E0();
  v30 = v38;
  View.accessibilityElement(children:)();
  (*(v39 + 8))(v7, v40);
  memcpy(v61, v49, sizeof(v61));
  sub_10001370C(v61, &qword_1001DA038);
  (*(v44 + 16))(v43, v2 + v9[10], v45);
  *v49 = String.init(localized:)();
  *&v49[8] = v31;
  v47 = v28;
  v48 = v29;
  swift_getOpaqueTypeConformance2();
  sub_10002EC9C();
  v32 = v41;
  View.accessibilityLabel<A>(_:)();

  return (*(v42 + 8))(v30, v32);
}

uint64_t sub_1000C7E98@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OnboardingMastheadView();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LocalizedStringResource();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 20);
  v28 = a1;
  v11 = (a1 + v10);
  v12 = *v11;
  v13 = *(v11 + 1);
  v30 = v12;
  v31 = v13;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  result = 0;
  v20 = 0;
  v21 = 0;
  if (v29 == 1)
  {
    v22 = v28;
    (*(v7 + 16))(v9, v28 + *(v4 + 32), v6);
    v14 = String.init(localized:)();
    v15 = v23;
    sub_1000CA758();
    v16 = AnyTransition.init<A>(_:)();
    v24 = v27;
    sub_1000CA1FC(v22, v27);
    v25 = (*(v26 + 80) + 16) & ~*(v26 + 80);
    v18 = swift_allocObject();
    sub_1000CA264(v24, v18 + v25);
    result = static Alignment.center.getter();
    v17 = sub_1000CA7AC;
    v21 = 256;
  }

  *a2 = v14;
  a2[1] = v15;
  a2[2] = v16;
  a2[3] = v21;
  a2[4] = v17;
  a2[5] = v18;
  a2[6] = result;
  a2[7] = v20;
  return result;
}

uint64_t sub_1000C80F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v39 = a3;
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v40 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OnboardingMastheadView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ContentSizeCategory();
  v12 = *(v38 - 8);
  __chkstk_darwin(v38);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = static Color.clear.getter();
  v36 = a2;
  v37 = v15;
  v42 = v15;
  sub_100054378(v14);
  sub_1000CA1FC(a2, v11);
  v35 = *(v5 + 16);
  v30 = v7;
  v31 = v4;
  v16 = v4;
  v35(v7, v41, v4);
  v17 = *(v9 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = *(v5 + 80);
  v20 = (v10 + v19 + v18) & ~v19;
  v33 = v17 | v19;
  v34 = v18;
  v21 = swift_allocObject();
  sub_1000CA264(v11, v21 + v18);
  v32 = *(v5 + 32);
  v32(v21 + v20, v7, v16);
  sub_1000CB3D8(&qword_1001DA0C8, &type metadata accessor for ContentSizeCategory);
  v22 = v38;
  v23 = v39;
  View.onChange<A>(of:initial:_:)();

  (*(v12 + 8))(v14, v22);

  sub_1000CA1FC(v36, v11);
  v24 = v30;
  v25 = v31;
  v35(v30, v41, v31);
  v26 = swift_allocObject();
  sub_1000CA264(v11, v26 + v34);
  v32(v26 + v20, v24, v25);
  result = sub_1000033A8(&qword_1001DA0D0);
  v28 = (v23 + *(result + 36));
  *v28 = sub_1000CAA54;
  v28[1] = v26;
  v28[2] = 0;
  v28[3] = 0;
  return result;
}

uint64_t sub_1000C84B4()
{
  GeometryProxy.size.getter();
  type metadata accessor for OnboardingMastheadView();
  sub_1000033A8(&qword_1001D4888);
  return State.wrappedValue.setter();
}

uint64_t sub_1000C8534(uint64_t a1)
{
  v32 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnboardingMastheadView();
  v7 = v6 - 8;
  v28 = *(v6 - 8);
  v8 = *(v28 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for DispatchTime();
  v30 = v9;
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  GeometryProxy.size.getter();
  v16 = (a1 + *(v7 + 32));
  v17 = *v16;
  v18 = v16[1];
  aBlock = v17;
  v37 = v18;
  v42 = v19;
  sub_1000033A8(&qword_1001D4888);
  State.wrappedValue.setter();
  sub_100014FBC();
  v20 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v29 = *(v10 + 8);
  v29(v13, v9);
  sub_1000CA1FC(a1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v22 = swift_allocObject();
  sub_1000CA264(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v40 = sub_1000CACCC;
  v41 = v22;
  aBlock = _NSConcreteStackBlock;
  v37 = 1107296256;
  v38 = sub_1000B5F04;
  v39 = &unk_1001C3F20;
  v23 = _Block_copy(&aBlock);
  static DispatchQoS.unspecified.getter();
  v42 = &_swiftEmptyArrayStorage;
  sub_1000CB3D8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v24 = v31;
  v25 = v32;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);

  (*(v35 + 8))(v24, v25);
  (*(v33 + 8))(v5, v34);
  v29(v15, v30);
}

uint64_t sub_1000C89E0()
{
  static Animation.linear(duration:)();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000C8A54()
{
  type metadata accessor for OnboardingMastheadView();
  sub_1000033A8(&qword_1001D3E88);
  return State.wrappedValue.setter();
}

uint64_t sub_1000C8AD0(uint64_t a1)
{
  v30 = a1;
  v33 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for DispatchQoS();
  v34 = *(v2 - 8);
  v35 = v2;
  __chkstk_darwin(v2);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OnboardingMastheadView();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = type metadata accessor for DispatchTime();
  v29 = v6;
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v26 - v11;
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014FBC();
  (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v14 + 8))(v16, v13);
  static DispatchTime.now()();
  + infix(_:_:)();
  v17 = *(v7 + 8);
  v17(v10, v6);
  sub_1000CA1FC(v30, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_1000CA264(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  aBlock[4] = sub_1000CA70C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C3E58;
  v20 = _Block_copy(aBlock);
  v21 = v31;
  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_1000CB3D8(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v23 = v32;
  v22 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v24 = v28;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v20);

  (*(v36 + 8))(v23, v22);
  (*(v34 + 8))(v21, v35);
  v17(v12, v29);
}

uint64_t sub_1000C8FEC()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000C9058()
{
  type metadata accessor for OnboardingMastheadView();

  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  State.wrappedValue.setter();
}

uint64_t sub_1000C9114@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  __chkstk_darwin(v6 - 8);
  v7 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v7 - 8);
  *a1 = swift_getKeyPath();
  sub_1000033A8(&qword_1001D6228);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for OnboardingMastheadView();
  v9 = a1 + v8[5];
  LOBYTE(v17) = 0;
  State.init(wrappedValue:)();
  v10 = v19;
  *v9 = v18;
  *(v9 + 1) = v10;
  v11 = (a1 + v8[6]);
  v17 = 0;
  State.init(wrappedValue:)();
  v12 = v19;
  *v11 = v18;
  v11[1] = v12;
  v13 = a1 + v8[7];
  LOBYTE(v17) = 0;
  State.init(wrappedValue:)();
  v14 = v19;
  *v13 = v18;
  *(v13 + 1) = v14;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v3 + 104))(v5, enum case for LocalizedStringResource.BundleDescription.main(_:), v2);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000C942C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t *a6)
{
  v10 = type metadata accessor for Text.Layout.Run();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000C6704();
  v15 = v14[2];
  if (v15)
  {
    v16 = 0;
    v17 = a2 - a4;
    v18 = *a6;
    v21 = *(v11 + 16);
    v19 = v11 + 16;
    v20 = v21;
    v22 = (*(v19 + 64) + 32) & ~*(v19 + 64);
    v29 = v14;
    v23 = v14 + v22;
    v24 = *(v19 + 56);
    do
    {
      v20(v13, v23, v10);
      v25 = a1 - v17 * v16;
      if (v25 > a2)
      {
        v25 = a2;
      }

      if (v25 < 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v25;
      }

      ++v16;
      v30 = v18;

      sub_1000C9618(v13, &v30, v26, v27, a2);

      (*(v19 - 8))(v13, v10);
      v23 += v24;
    }

    while (v15 != v16);
  }
}

uint64_t sub_1000C9618(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v21 = a2;
  v24 = a1;
  v7 = type metadata accessor for GraphicsContext.Filter();
  v22 = *(v7 - 8);
  v23 = v7;
  __chkstk_darwin(v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Spring();
  v10 = *(v20 - 8);
  __chkstk_darwin(v20);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UnitCurve();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UnitCurve.easeIn.getter();
  UnitCurve.value(at:)(a3 / a5);
  v17 = *(v14 + 8);
  v17(v16, v13);
  type metadata accessor for Text.Layout.Run();
  sub_1000CB3D8(&qword_1001DA198, &type metadata accessor for Text.Layout.Run);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  dispatch thunk of Collection.distance(from:to:)();
  static UnitCurve.easeIn.getter();
  UnitCurve.value(at:)(1.0 - a3 / a5);
  v17(v16, v13);
  Spring.init(response:dampingRatio:)();
  v26 = 0;
  v27 = 0x4040000000000000;
  v25 = 0;
  Spring.value<A>(fromValue:toValue:initialVelocity:time:)();
  (*(v10 + 8))(v12, v20);
  GraphicsContext.translateBy(x:y:)();
  static GraphicsContext.Filter.blur(radius:options:)();
  GraphicsContext.addFilter(_:options:)();
  (*(v22 + 8))(v9, v23);
  GraphicsContext.opacity.setter();
  return GraphicsContext.draw(_:options:)();
}

double sub_1000C99EC@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double sub_1000C99F8(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*sub_1000C9A04(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return sub_1000C9A30;
}

double sub_1000C9A30(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

uint64_t sub_1000C9A44()
{
  result = Transaction.disablesAnimations.getter();
  if ((result & 1) == 0)
  {
    static Animation.linear(duration:)();
    return Transaction.animation.setter();
  }

  return result;
}

uint64_t sub_1000C9A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_1000033A8(&qword_1001DA110);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = sub_1000033A8(&qword_1001DA0F0);
  v14 = (a2 + *(result + 36));
  *v14 = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  return result;
}

uint64_t sub_1000C9B38()
{
  TransitionPhase.isIdentity.getter();
  *(swift_allocObject() + 16) = 0x4014000000000000;
  sub_1000033A8(&qword_1001DA0E8);
  sub_1000033A8(&qword_1001DA0F0);
  sub_100013608(&qword_1001DA0F8, &qword_1001DA0E8);
  sub_1000CAF70();
  View.transaction<A>(_:body:)();
}

uint64_t sub_1000C9CE4(uint64_t a1)
{
  v2 = type metadata accessor for ContentSizeCategory();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.sizeCategory.setter();
}

uint64_t type metadata accessor for OnboardingMastheadView()
{
  result = qword_1001D9FE0;
  if (!qword_1001D9FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000C9E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000033A8(&qword_1001D8E48);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for LocalizedStringResource();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1000C9F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000033A8(&qword_1001D8E48);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for LocalizedStringResource();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1000CA098()
{
  sub_1000A5444();
  if (v0 <= 0x3F)
  {
    sub_100023B6C(319, &qword_1001D44A0);
    if (v1 <= 0x3F)
    {
      sub_100023B6C(319, &qword_1001D4800);
      if (v2 <= 0x3F)
      {
        type metadata accessor for LocalizedStringResource();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000CA18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA1FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingMastheadView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CA264(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingMastheadView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CA2E0()
{
  result = qword_1001DA040;
  if (!qword_1001DA040)
  {
    sub_10001276C(&qword_1001DA038);
    sub_1000CA36C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA040);
  }

  return result;
}

unint64_t sub_1000CA36C()
{
  result = qword_1001DA048;
  if (!qword_1001DA048)
  {
    sub_10001276C(&qword_1001DA050);
    sub_1000CA3F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA048);
  }

  return result;
}

unint64_t sub_1000CA3F8()
{
  result = qword_1001DA058;
  if (!qword_1001DA058)
  {
    sub_10001276C(&qword_1001DA060);
    sub_1000CA484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA058);
  }

  return result;
}

unint64_t sub_1000CA484()
{
  result = qword_1001DA068;
  if (!qword_1001DA068)
  {
    sub_10001276C(&qword_1001DA070);
    sub_1000CA53C();
    sub_100013608(&qword_1001DA0B8, &qword_1001DA030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA068);
  }

  return result;
}

unint64_t sub_1000CA53C()
{
  result = qword_1001DA078;
  if (!qword_1001DA078)
  {
    sub_10001276C(&qword_1001DA080);
    sub_1000CA5F4();
    sub_100013608(&qword_1001DA0A8, &qword_1001DA0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA078);
  }

  return result;
}

unint64_t sub_1000CA5F4()
{
  result = qword_1001DA088;
  if (!qword_1001DA088)
  {
    sub_10001276C(&qword_1001DA090);
    sub_1000CA680();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA088);
  }

  return result;
}

unint64_t sub_1000CA680()
{
  result = qword_1001DA098;
  if (!qword_1001DA098)
  {
    sub_10001276C(&qword_1001DA0A0);
    sub_1000B719C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA098);
  }

  return result;
}

uint64_t sub_1000CA724(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1000CA758()
{
  result = qword_1001DA0C0;
  if (!qword_1001DA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA0C0);
  }

  return result;
}

uint64_t sub_1000CA7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for OnboardingMastheadView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000C80F8(a1, v6, a2);
}

uint64_t sub_1000CA848()
{
  v1 = type metadata accessor for OnboardingMastheadView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  sub_1000033A8(&qword_1001D6228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for ContentSizeCategory();
    (*(*(v7 - 8) + 8))(v0 + v2, v7);
  }

  else
  {
  }

  v8 = *(v1 + 32);
  v9 = type metadata accessor for LocalizedStringResource();
  (*(*(v9 - 8) + 8))(v0 + v2 + v8, v9);
  (*(v5 + 8))(v0 + ((v2 + v3 + v6) & ~v6), v4);

  return swift_deallocObject();
}

uint64_t sub_1000CAA6C(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for OnboardingMastheadView() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for GeometryProxy() - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_1000CAB4C()
{
  v1 = type metadata accessor for OnboardingMastheadView();
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1000033A8(&qword_1001D6228);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = type metadata accessor for ContentSizeCategory();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 32);
  v5 = type metadata accessor for LocalizedStringResource();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1000CACE4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingMastheadView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000CAD84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000CADCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CAE1C()
{
  result = qword_1001DA0D8;
  if (!qword_1001DA0D8)
  {
    sub_10001276C(&qword_1001DA0E0);
    sub_10001276C(&qword_1001DA038);
    sub_1000CA2E0();
    swift_getOpaqueTypeConformance2();
    sub_1000CB3D8(&qword_1001D3DB8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA0D8);
  }

  return result;
}

unint64_t sub_1000CAF70()
{
  result = qword_1001DA100;
  if (!qword_1001DA100)
  {
    sub_10001276C(&qword_1001DA0F0);
    sub_100013608(&qword_1001DA108, &qword_1001DA110);
    sub_100013608(&qword_1001DA118, &qword_1001DA120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA100);
  }

  return result;
}

uint64_t sub_1000CB05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA138);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CB0CC()
{
  result = qword_1001DA170;
  if (!qword_1001DA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA170);
  }

  return result;
}

unint64_t sub_1000CB120()
{
  result = qword_1001DA178;
  if (!qword_1001DA178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA178);
  }

  return result;
}

uint64_t sub_1000CB174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA148);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CB204()
{
  sub_10001276C(&qword_1001DA0E8);
  sub_10001276C(&qword_1001DA0F0);
  sub_100013608(&qword_1001DA0F8, &qword_1001DA0E8);
  sub_1000CAF70();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1000CB2D4()
{
  result = qword_1001DA180;
  if (!qword_1001DA180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA180);
  }

  return result;
}

unint64_t sub_1000CB32C()
{
  result = qword_1001DA188;
  if (!qword_1001DA188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA188);
  }

  return result;
}

unint64_t sub_1000CB384()
{
  result = qword_1001DA190;
  if (!qword_1001DA190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA190);
  }

  return result;
}

uint64_t sub_1000CB3D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000CB44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000033A8(&qword_1001DA1B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000CB51C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000033A8(&qword_1001DA1B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for OnboardingOverlay()
{
  result = qword_1001DA218;
  if (!qword_1001DA218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000CB618()
{
  sub_1000CB750(319, &qword_1001DA228, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10001B610();
    if (v1 <= 0x3F)
    {
      sub_1000CB750(319, &qword_1001D4800, &type metadata for CGFloat, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_1000CB750(319, &qword_1001D44A0, &type metadata for Bool, &type metadata accessor for State);
        if (v3 <= 0x3F)
        {
          sub_1000CB7A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1000CB750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000CB7A0()
{
  if (!qword_1001DA230)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DA230);
    }
  }
}

uint64_t sub_1000CB814@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSmartDialog.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000CB86C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v37 = type metadata accessor for ScrollBounceBehavior();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1000033A8(&qword_1001DA278);
  v34 = *(v35 - 8);
  __chkstk_darwin(v35);
  v5 = v28 - v4;
  v33 = sub_1000033A8(&qword_1001DA280);
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v7 = v28 - v6;
  v29 = sub_1000033A8(&qword_1001DA288);
  __chkstk_darwin(v29);
  v9 = v28 - v8;
  v31 = sub_1000033A8(&qword_1001DA290);
  __chkstk_darwin(v31);
  v11 = v28 - v10;
  v32 = sub_1000033A8(&qword_1001DA298);
  __chkstk_darwin(v32);
  v13 = v28 - v12;
  sub_1000033A8(&qword_1001D7208);
  swift_allocObject();
  v14 = PassthroughSubject.init()();
  v39 = v1;
  v40 = v14;
  v28[1] = v14;
  static Axis.Set.vertical.getter();
  sub_1000033A8(&qword_1001DA2A0);
  sub_100013608(&qword_1001DA2A8, &qword_1001DA2A0);
  ScrollView.init(_:showsIndicators:content:)();
  static ScrollBounceBehavior.basedOnSize.getter();
  v15 = static Axis.Set.vertical.getter();
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v15)
  {
    Axis.Set.init(rawValue:)();
  }

  sub_100013608(&qword_1001DA2B0, &qword_1001DA278);
  v16 = v35;
  View.scrollBounceBehavior(_:axes:)();
  (*(v36 + 8))(v3, v37);
  (*(v34 + 8))(v5, v16);
  v17 = static Color.white.getter();
  KeyPath = swift_getKeyPath();
  (*(v30 + 32))(v9, v7, v33);
  v19 = &v9[*(v29 + 36)];
  *v19 = KeyPath;
  v19[1] = v17;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v9, v11, &qword_1001DA288);
  v20 = &v11[*(v31 + 36)];
  v21 = v46;
  *(v20 + 4) = v45;
  *(v20 + 5) = v21;
  *(v20 + 6) = v47;
  v22 = v42;
  *v20 = v41;
  *(v20 + 1) = v22;
  v23 = v44;
  *(v20 + 2) = v43;
  *(v20 + 3) = v23;
  sub_10002091C(v11, v13, &qword_1001DA290);
  *&v13[*(v32 + 36)] = 0;
  v24 = static SafeAreaRegions.all.getter();
  LOBYTE(KeyPath) = static Edge.Set.all.getter();

  v25 = v38;
  sub_10002091C(v13, v38, &qword_1001DA298);
  result = sub_1000033A8(&qword_1001DA2B8);
  v27 = v25 + *(result + 36);
  *v27 = v24;
  *(v27 + 8) = KeyPath;
  return result;
}

uint64_t sub_1000CBE5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = static Alignment.center.getter();
  a3[1] = v6;
  v7 = sub_1000033A8(&qword_1001DA2C0);
  return sub_1000CBEBC(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_1000CBEBC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v35 = a1;
  v36 = a2;
  v38 = a3;
  v37 = sub_1000033A8(&qword_1001DA2C8);
  v3 = __chkstk_darwin(v37);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = (&v34 - v6);
  v8 = sub_1000033A8(&qword_1001D50B0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v34 - v13;
  v39 = 0;
  v40 = 1;
  sub_1000033A8(&qword_1001D50B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100170800;
  v16 = static Axis.Set.horizontal.getter();
  *(inited + 32) = v16;
  v17 = static Axis.Set.vertical.getter();
  *(inited + 33) = v17;
  Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v16)
  {
    Axis.Set.init(rawValue:)();
  }

  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v17)
  {
    Axis.Set.init(rawValue:)();
  }

  static Alignment.center.getter();
  View.containerRelativeFrame(_:alignment:)();
  *v7 = static Alignment.center.getter();
  v7[1] = v18;
  v19 = v7 + *(sub_1000033A8(&qword_1001DA2D0) + 44);
  *v19 = static HorizontalAlignment.center.getter();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = sub_1000033A8(&qword_1001DA2D8);
  sub_1000CC278(v35, v36, &v19[*(v20 + 44)]);
  LOBYTE(v19) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v21 = v7 + *(v37 + 36);
  *v21 = v19;
  *(v21 + 1) = v22;
  *(v21 + 2) = v23;
  *(v21 + 3) = v24;
  *(v21 + 4) = v25;
  v21[40] = 0;
  v26 = *(v9 + 16);
  v26(v12, v14, v8);
  sub_1000138BC(v7, v5, &qword_1001DA2C8);
  v27 = v14;
  v28 = v12;
  v29 = v5;
  v30 = v38;
  v26(v38, v28, v8);
  v31 = &v30[*(sub_1000033A8(&qword_1001DA2E0) + 48)];
  sub_1000138BC(v29, v31, &qword_1001DA2C8);
  sub_10001370C(v7, &qword_1001DA2C8);
  v32 = *(v9 + 8);
  v32(v27, v8);
  sub_10001370C(v29, &qword_1001DA2C8);
  return (v32)(v28, v8);
}

uint64_t sub_1000CC278@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v67 = a3;
  v56 = a2;
  v58 = *a2;
  v4 = type metadata accessor for Spring();
  __chkstk_darwin(v4 - 8);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmartDialogAnimationSettings();
  __chkstk_darwin(v6 - 8);
  v68 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001DA2E8);
  v62 = *(v8 - 8);
  v63 = v8;
  __chkstk_darwin(v8);
  v59 = &v51 - v9;
  v61 = sub_1000033A8(&qword_1001DA2F0);
  __chkstk_darwin(v61);
  v60 = &v51 - v10;
  v11 = sub_1000033A8(&qword_1001DA2F8);
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = __chkstk_darwin(v11);
  v64 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v69 = &v51 - v14;
  v15 = type metadata accessor for OnboardingOverlay();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = __chkstk_darwin(v15);
  v53 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  v20 = type metadata accessor for OnboardingMastheadView();
  __chkstk_darwin(v20);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_1000033A8(&qword_1001DA300);
  v24 = v23 - 8;
  v25 = __chkstk_darwin(v23);
  v57 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v51 - v27;
  sub_1000C9114(v22);
  sub_1000033A8(&qword_1001DA1B8);
  AccessibilityFocusState.projectedValue.getter();
  sub_1000CED8C(&qword_1001DA308, type metadata accessor for OnboardingMastheadView);
  v54 = v28;
  View.accessibilityFocused(_:)();

  sub_1000CE24C(v22);
  sub_1000CE2A8(a1, v19);
  v29 = (*(v52 + 80) + 16) & ~*(v52 + 80);
  v30 = swift_allocObject();
  sub_1000CE310(v19, v30 + v29);
  v31 = &v28[*(v24 + 44)];
  *v31 = sub_1000CE374;
  v31[1] = v30;
  v31[2] = 0;
  v31[3] = 0;
  Spring.init(response:dampingRatio:)();
  SmartDialogAnimationSettings.init(springAnimation:lineAnimationDelay:)();
  v71 = v56;
  sub_100013608(&qword_1001D7210, &qword_1001D7208);
  Publisher.eraseToAnyPublisher()();
  sub_1000CE2A8(a1, v19);
  v32 = swift_allocObject();
  sub_1000CE310(v19, v32 + v29);
  v33 = v53;
  sub_1000CE2A8(a1, v53);
  v34 = swift_allocObject();
  sub_1000CE310(v33, v34 + v29);
  sub_1000033A8(&qword_1001DA310);
  sub_1000033A8(&qword_1001DA318);
  sub_1000CE440();
  sub_1000CE4F8();
  v35 = v59;
  SmartDialog.init(animationSettings:animationTrigger:header:body:)();
  v36 = *(a1 + 80);
  v37 = *(a1 + 88);
  LOBYTE(v71) = v36;
  v72 = v37;
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.getter();
  if (v70)
  {
    v38 = 1.0;
  }

  else
  {
    v38 = 0.0;
  }

  v39 = v60;
  (*(v62 + 32))(v60, v35, v63);
  *(v39 + *(v61 + 36)) = v38;
  LOBYTE(v71) = v36;
  v72 = v37;
  State.wrappedValue.getter();
  LOBYTE(v71) = v70;
  sub_1000CE5B0();

  v40 = v69;
  View.onChange<A>(of:initial:_:)();

  sub_10001370C(v39, &qword_1001DA2F0);
  v41 = v54;
  v42 = v57;
  sub_1000138BC(v54, v57, &qword_1001DA300);
  v43 = v64;
  v44 = v65;
  v45 = *(v65 + 16);
  v46 = v66;
  v45(v64, v40, v66);
  v47 = v67;
  sub_1000138BC(v42, v67, &qword_1001DA300);
  v48 = sub_1000033A8(&qword_1001DA360);
  v45((v47 + *(v48 + 48)), v43, v46);
  v49 = *(v44 + 8);
  v49(v69, v46);
  sub_10001370C(v41, &qword_1001DA300);
  v49(v43, v46);
  return sub_10001370C(v42, &qword_1001DA300);
}

uint64_t sub_1000CCAE8(uint64_t a1)
{
  v23 = a1;
  v25 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v25 - 8);
  __chkstk_darwin(v25);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v26 = *(v3 - 8);
  v27 = v3;
  __chkstk_darwin(v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OnboardingOverlay();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = type metadata accessor for DispatchTime();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v22 - v14;
  sub_100014FBC();
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v24 = *(v10 + 8);
  v24(v13, v9);
  sub_1000CE2A8(v23, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_1000CE310(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  aBlock[4] = sub_1000CECE8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000B5F04;
  aBlock[3] = &unk_1001C4158;
  v18 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v29 = &_swiftEmptyArrayStorage;
  sub_1000CED8C(&qword_1001D6B10, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000033A8(&unk_1001D8010);
  sub_100013608(&qword_1001D6B20, &unk_1001D8010);
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v28 + 8))(v2, v19);
  (*(v26 + 8))(v5, v27);
  v24(v15, v9);
}

uint64_t sub_1000CCF3C()
{
  static Animation.default.getter();
  withAnimation<A>(_:_:)();
}

uint64_t sub_1000CCFA8()
{
  sub_1000033A8(&qword_1001D3E88);
  State.wrappedValue.setter();
  type metadata accessor for OnboardingOverlay();
  sub_1000033A8(&qword_1001DA1B8);
  return AccessibilityFocusState.wrappedValue.setter();
}

__n128 sub_1000CD050@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000033A8(&qword_1001DA330);
  __chkstk_darwin(v4 - 8);
  v6 = v12 - v5;
  *v6 = static HorizontalAlignment.center.getter();
  *(v6 + 1) = 0x4028000000000000;
  v6[16] = 0;
  v7 = sub_1000033A8(&qword_1001DA3B8);
  sub_1000CD1B0(a1, &v6[*(v7 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v6, a2, &qword_1001DA330);
  v8 = a2 + *(sub_1000033A8(&qword_1001DA310) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_1000CD1B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v86 = type metadata accessor for Font.Leading();
  v3 = *(v86 - 8);
  __chkstk_darwin(v86);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000033A8(&qword_1001DA3C0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v82 - v7;
  v9 = sub_1000033A8(&qword_1001DA3C8);
  v10 = __chkstk_darwin(v9 - 8);
  v89 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v88 = &v82 - v13;
  v14 = __chkstk_darwin(v12);
  v87 = &v82 - v15;
  __chkstk_darwin(v14);
  v93 = v5;
  v94 = &v82 - v16;
  v17 = a1[1];
  v91 = v8;
  v92 = v6;
  if (v17)
  {
    *&v104 = *a1;
    *(&v104 + 1) = v17;
    sub_10002EC9C();

    v18 = Text.init<A>(_:)();
    v20 = v19;
    v84 = v3;
    v22 = v21;
    static Font.title3.getter();
    v23 = Text.font(_:)();
    v83 = a1;
    v25 = v24;
    v27 = v26;

    sub_100020D44(v18, v20, v22 & 1);

    static Font.Weight.regular.getter();
    v28 = Text.fontWeight(_:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_100020D44(v23, v25, v27 & 1);

    KeyPath = swift_getKeyPath();
    v36 = static Color.white.getter();
    LOBYTE(v25) = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v103 = v32 & 1;
    v102 = 0;
    *&v95 = v28;
    *(&v95 + 1) = v30;
    LOBYTE(v96) = v32 & 1;
    *(&v96 + 1) = v34;
    *&v97 = KeyPath;
    v3 = v84;
    BYTE8(v97) = 1;
    *&v98 = v36;
    v37 = v91;
    BYTE8(v98) = v25;
    v38 = v94;
    *&v99 = v39;
    *(&v99 + 1) = v40;
    *&v100 = v41;
    *(&v100 + 1) = v42;
    v101 = 0;
    sub_1000033A8(&qword_1001DA3D8);
    sub_1000CEA30();
    View.accessibilityIdentifier(_:)();
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v104 = v95;
    v105 = v96;
    v106 = v97;
    v107 = v98;
    v43 = v92;
    v5 = v93;
    sub_10001370C(&v104, &qword_1001DA3D8);
    sub_10002091C(v37, v38, &qword_1001DA3C0);
    v44 = *(v43 + 56);
    v45 = v38;
    a1 = v83;
    v44(v45, 0, 1, v5);
  }

  else
  {
    v44 = *(v6 + 56);
    v44(v94, 1, 1, v5);
  }

  v46 = a1[3];
  if (v46)
  {
    *&v104 = a1[2];
    *(&v104 + 1) = v46;
    sub_10002EC9C();

    v47 = Text.init<A>(_:)();
    v49 = v48;
    v51 = v50;
    static Font.subheadline.getter();
    v52 = v3;
    v53 = *(v3 + 104);
    v54 = v85;
    v55 = v86;
    v53(v85, enum case for Font.Leading.tight(_:), v86);
    Font.leading(_:)();

    (*(v52 + 8))(v54, v55);
    v56 = Text.font(_:)();
    v58 = v57;
    LOBYTE(v54) = v59;

    sub_100020D44(v47, v49, v51 & 1);

    static Font.Weight.medium.getter();
    v60 = Text.fontWeight(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_100020D44(v56, v58, v54 & 1);

    v67 = swift_getKeyPath();
    static Color.white.getter();
    v68 = Color.opacity(_:)();

    LOBYTE(v58) = static Edge.Set.top.getter();
    EdgeInsets.init(_all:)();
    v103 = v64 & 1;
    v102 = 0;
    *&v95 = v60;
    *(&v95 + 1) = v62;
    LOBYTE(v96) = v64 & 1;
    *(&v96 + 1) = v66;
    *&v97 = v67;
    BYTE8(v97) = 1;
    *&v98 = v68;
    BYTE8(v98) = v58;
    *&v99 = v69;
    *(&v99 + 1) = v70;
    *&v100 = v71;
    *(&v100 + 1) = v72;
    v101 = 0;
    sub_1000033A8(&qword_1001DA3D8);
    sub_1000CEA30();
    v73 = v91;
    View.accessibilityIdentifier(_:)();
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v104 = v95;
    v105 = v96;
    v106 = v97;
    v107 = v98;
    sub_10001370C(&v104, &qword_1001DA3D8);
    v74 = v73;
    v75 = v87;
    sub_10002091C(v74, v87, &qword_1001DA3C0);
    (*(v92 + 56))(v75, 0, 1, v93);
  }

  else
  {
    v75 = v87;
    v44(v87, 1, 1, v5);
  }

  v76 = v94;
  v77 = v88;
  sub_1000CE9B8(v94, v88);
  v78 = v89;
  sub_1000CE9B8(v75, v89);
  v79 = v90;
  sub_1000CE9B8(v77, v90);
  v80 = sub_1000033A8(&qword_1001DA3D0);
  sub_1000CE9B8(v78, v79 + *(v80 + 48));
  sub_10001370C(v75, &qword_1001DA3C8);
  sub_10001370C(v76, &qword_1001DA3C8);
  sub_10001370C(v78, &qword_1001DA3C8);
  return sub_10001370C(v77, &qword_1001DA3C8);
}

__n128 sub_1000CD948@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000033A8(&qword_1001DA348);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = sub_1000033A8(&qword_1001DA368);
  sub_1000CDAA4(&v4[*(v5 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_10002091C(v4, a1, &qword_1001DA348);
  v6 = a1 + *(sub_1000033A8(&qword_1001DA318) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t sub_1000CDAA4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OpacityTransition();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = __chkstk_darwin(v2);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v43 = &v35 - v5;
  v6 = sub_1000033A8(&qword_1001D50F8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v35 - v8;
  v35 = sub_1000033A8(&qword_1001DA370);
  v10 = *(v35 - 8);
  __chkstk_darwin(v35);
  v12 = &v35 - v11;
  v42 = sub_1000033A8(&qword_1001DA378);
  __chkstk_darwin(v42);
  v14 = &v35 - v13;
  v15 = sub_1000033A8(&qword_1001DA380);
  v16 = __chkstk_darwin(v15 - 8);
  v41 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v36 = &v35 - v18;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v39 = v53;
  v40 = v51;
  v38 = v55;
  v37 = v56;
  v59 = 1;
  v58 = v52;
  v57 = v54;

  sub_1000033A8(&qword_1001D5190);
  sub_100035D10();
  Button.init(action:label:)();
  v19 = sub_100013608(&qword_1001D51B0, &qword_1001D50F8);
  v20 = sub_100035DC8();
  View.buttonStyle<A>(_:)();
  (*(v7 + 8))(v9, v6);
  v47 = v6;
  v48 = &type metadata for OnboardingProminentButtonStyle;
  v49 = v19;
  v50 = v20;
  swift_getOpaqueTypeConformance2();
  v21 = v35;
  View.smartDialogAnimatable()();
  (*(v10 + 8))(v12, v21);
  KeyPath = swift_getKeyPath();
  v23 = &v14[*(sub_1000033A8(&qword_1001DA388) + 36)];
  *v23 = KeyPath;
  v23[8] = 0;
  LODWORD(KeyPath) = static HierarchicalShapeStyle.primary.getter();
  *&v14[*(sub_1000033A8(&qword_1001DA390) + 36)] = KeyPath;
  v24 = v43;
  OpacityTransition.init()();
  v25 = v45;
  v26 = v46;
  (*(v45 + 16))(v44, v24, v46);
  sub_1000CED8C(&qword_1001D4E70, &type metadata accessor for OpacityTransition);
  v27 = v26;
  v28 = AnyTransition.init<A>(_:)();
  (*(v25 + 8))(v24, v27);
  *&v14[*(v42 + 36)] = v28;
  sub_1000CE6C0();
  v29 = v36;
  View.accessibilityIdentifier(_:)();
  sub_10001370C(v14, &qword_1001DA378);
  LOBYTE(v28) = v59;
  LOBYTE(v27) = v58;
  LOBYTE(v25) = v57;
  v30 = v41;
  sub_1000138BC(v29, v41, &qword_1001DA380);
  *a1 = 0;
  *(a1 + 8) = v28;
  v31 = v39;
  *(a1 + 16) = v40;
  *(a1 + 24) = v27;
  *(a1 + 32) = v31;
  *(a1 + 40) = v25;
  v32 = v37;
  *(a1 + 48) = v38;
  *(a1 + 56) = v32;
  v33 = sub_1000033A8(&qword_1001DA3B0);
  sub_1000138BC(v30, a1 + *(v33 + 48), &qword_1001DA380);
  sub_10001370C(v29, &qword_1001DA380);
  return sub_10001370C(v30, &qword_1001DA380);
}

uint64_t sub_1000CE0E8@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  v2 = Text.init(_:tableName:bundle:comment:)();
  v4 = v3;
  v6 = v5;
  static Font.title3.getter();
  v7 = Text.font(_:)();
  v9 = v8;
  v11 = v10;

  sub_100020D44(v2, v4, v6 & 1);

  static Font.Weight.semibold.getter();
  v12 = Text.fontWeight(_:)();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_100020D44(v7, v9, v11 & 1);

  result = swift_getKeyPath();
  *a1 = v12;
  *(a1 + 8) = v14;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v18;
  *(a1 + 32) = result;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_1000CE24C(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingMastheadView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000CE2A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingOverlay();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE310(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingOverlay();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000CE3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingOverlay() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1000CE440()
{
  result = qword_1001DA320;
  if (!qword_1001DA320)
  {
    sub_10001276C(&qword_1001DA310);
    sub_100013608(&qword_1001DA328, &qword_1001DA330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA320);
  }

  return result;
}

unint64_t sub_1000CE4F8()
{
  result = qword_1001DA338;
  if (!qword_1001DA338)
  {
    sub_10001276C(&qword_1001DA318);
    sub_100013608(&qword_1001DA340, &qword_1001DA348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA338);
  }

  return result;
}

unint64_t sub_1000CE5B0()
{
  result = qword_1001DA350;
  if (!qword_1001DA350)
  {
    sub_10001276C(&qword_1001DA2F0);
    sub_100013608(&qword_1001DA358, &qword_1001DA2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA350);
  }

  return result;
}

uint64_t sub_1000CE668@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.isSmartDialog.getter();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1000CE6C0()
{
  result = qword_1001DA398;
  if (!qword_1001DA398)
  {
    sub_10001276C(&qword_1001DA378);
    sub_1000CE778();
    sub_100013608(&qword_1001D3CD0, &qword_1001D3CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA398);
  }

  return result;
}

unint64_t sub_1000CE778()
{
  result = qword_1001DA3A0;
  if (!qword_1001DA3A0)
  {
    sub_10001276C(&qword_1001DA390);
    sub_1000CE830();
    sub_100013608(&qword_1001D5170, &qword_1001D5178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3A0);
  }

  return result;
}

unint64_t sub_1000CE830()
{
  result = qword_1001DA3A8;
  if (!qword_1001DA3A8)
  {
    sub_10001276C(&qword_1001DA388);
    sub_10001276C(&qword_1001DA370);
    sub_10001276C(&qword_1001D50F8);
    sub_100013608(&qword_1001D51B0, &qword_1001D50F8);
    sub_100035DC8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D7268, &qword_1001D7198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3A8);
  }

  return result;
}

uint64_t sub_1000CE9B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA3C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000CEA30()
{
  result = qword_1001DA3E0;
  if (!qword_1001DA3E0)
  {
    sub_10001276C(&qword_1001DA3D8);
    sub_1000CEABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3E0);
  }

  return result;
}

unint64_t sub_1000CEABC()
{
  result = qword_1001DA3E8;
  if (!qword_1001DA3E8)
  {
    sub_10001276C(&qword_1001DA3F0);
    sub_10002ED44();
    sub_100013608(&qword_1001D3E68, &qword_1001D3E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3E8);
  }

  return result;
}

uint64_t sub_1000CEB74()
{
  v1 = (type metadata accessor for OnboardingOverlay() - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[12];
  v4 = type metadata accessor for AccessibilityTechnologies();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1000033A8(&qword_1001DA1B8);

  return swift_deallocObject();
}

uint64_t sub_1000CED00(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for OnboardingOverlay() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1000CED74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000CED8C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000CEDF4()
{
  result = qword_1001DA3F8;
  if (!qword_1001DA3F8)
  {
    sub_10001276C(&qword_1001DA2B8);
    sub_1000CEE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA3F8);
  }

  return result;
}

unint64_t sub_1000CEE80()
{
  result = qword_1001DA400;
  if (!qword_1001DA400)
  {
    sub_10001276C(&qword_1001DA298);
    sub_1000CEF0C();
    sub_1000CF0C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA400);
  }

  return result;
}

unint64_t sub_1000CEF0C()
{
  result = qword_1001DA408;
  if (!qword_1001DA408)
  {
    sub_10001276C(&qword_1001DA290);
    sub_1000CEF98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA408);
  }

  return result;
}

unint64_t sub_1000CEF98()
{
  result = qword_1001DA410;
  if (!qword_1001DA410)
  {
    sub_10001276C(&qword_1001DA288);
    sub_10001276C(&qword_1001DA278);
    sub_100013608(&qword_1001DA2B0, &qword_1001DA278);
    swift_getOpaqueTypeConformance2();
    sub_100013608(&qword_1001D46D0, &qword_1001D46D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA410);
  }

  return result;
}

unint64_t sub_1000CF0C0()
{
  result = qword_1001DA418;
  if (!qword_1001DA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA418);
  }

  return result;
}

uint64_t sub_1000CF120(uint64_t a1, uint64_t a2)
{
  v2[37] = a1;
  v2[38] = a2;
  v3 = swift_task_alloc();
  v2[39] = v3;
  *v3 = v2;
  v3[1] = sub_1000CF1B0;

  return sub_1000CF8F4();
}

uint64_t sub_1000CF1B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 320) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1000CF2E4, 0, 0);
  }
}

uint64_t sub_1000CF2E4()
{
  v1 = v0[40];
  v3 = v0[37];
  v2 = v0[38];
  v4 = swift_allocObject();
  v0[41] = v4;
  *(v4 + 16) = 0;
  v5 = [objc_opt_self() sharedPhotoLibrary];
  v0[42] = v5;
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v6[5] = v4;
  v0[32] = sub_1000D04C0;
  v0[33] = v6;
  v0[28] = _NSConcreteStackBlock;
  v0[29] = 1107296256;
  v0[30] = sub_1000B5F04;
  v0[31] = &unk_1001C41D0;
  v7 = _Block_copy(v0 + 28);
  v0[43] = v7;

  v8 = v1;

  v0[2] = v0;
  v0[3] = sub_1000CF4FC;
  v9 = swift_continuation_init();
  v0[27] = sub_1000033A8(&qword_1001DA430);
  v0[20] = _NSConcreteStackBlock;
  v0[21] = 1107296256;
  v0[22] = sub_1000D014C;
  v0[23] = &unk_1001C41F8;
  v0[24] = v9;
  [v5 performChanges:v7 completionHandler:v0 + 20];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000CF4FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_1000CF800;
  }

  else
  {
    v2 = sub_1000CF60C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CF60C()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);

  _Block_release(v1);
  swift_beginAccess();
  if (*(v2 + 16) == 1)
  {
    v3 = *(v0 + 320);
    sub_1000033A8(&unk_1001D6B30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100171DA0;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v5;
    *(inited + 48) = 0xD00000000000003FLL;
    *(inited + 56) = 0x800000010016E230;
    sub_100097328(inited);
    swift_setDeallocating();
    sub_1000D04E4(inited + 32);
    v6 = objc_allocWithZone(NSError);
    v7 = String._bridgeToObjectiveC()();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v6 initWithDomain:v7 code:2 userInfo:isa];

    swift_willThrow();
  }

  else
  {
    v10 = *(v0 + 320);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000CF800()
{
  v1 = v0[43];
  v2 = v0[42];
  v3 = v0[40];
  swift_willThrow();

  _Block_release(v1);

  v4 = v0[1];

  return v4();
}

id sub_1000CF894()
{
  v0 = objc_opt_self();
  URL._bridgeToObjectiveC()(v1);
  v3 = v2;
  v4 = [v0 creationRequestForAssetFromVideoAtFileURL:v2];

  return v4;
}

uint64_t sub_1000CF910()
{
  if (sub_1000D02C8())
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = swift_allocObject();
    v0[37] = v3;
    *(v3 + 16) = 0;
    v4 = [objc_opt_self() sharedPhotoLibrary];
    v0[38] = v4;
    v0[32] = sub_1000D0584;
    v0[33] = v3;
    v0[28] = _NSConcreteStackBlock;
    v0[29] = 1107296256;
    v0[30] = sub_1000B5F04;
    v0[31] = &unk_1001C4248;
    v5 = _Block_copy(v0 + 28);
    v0[39] = v5;

    v0[2] = v0;
    v0[3] = sub_1000CFB34;
    v6 = swift_continuation_init();
    v0[27] = sub_1000033A8(&qword_1001DA430);
    v0[20] = _NSConcreteStackBlock;
    v0[21] = 1107296256;
    v0[22] = sub_1000D014C;
    v0[23] = &unk_1001C4270;
    v0[24] = v6;
    [v4 performChanges:v5 completionHandler:v0 + 20];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1000CFB34()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_1000CFF40;
  }

  else
  {
    v2 = sub_1000CFC44;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000CFC44()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);

  _Block_release(v1);
  sub_1000033A8(&qword_1001D6310);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100171DA0;
  result = swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v5 localIdentifier];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    *(v3 + 32) = v8;
    *(v3 + 40) = v10;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v12 = [v6 fetchAssetCollectionsWithLocalIdentifiers:isa options:0];

    v13 = [v12 firstObject];
    if (v13)
    {
      v14 = v13;

      v15 = *(v0 + 8);

      return v15(v14);
    }

    else
    {
      sub_1000033A8(&unk_1001D6B30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100171DA0;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(inited + 72) = &type metadata for String;
      *(inited + 40) = v17;
      *(inited + 48) = 0xD00000000000002BLL;
      *(inited + 56) = 0x800000010016E270;
      sub_100097328(inited);
      swift_setDeallocating();
      sub_1000D04E4(inited + 32);
      v18 = objc_allocWithZone(NSError);
      v19 = String._bridgeToObjectiveC()();
      v20 = Dictionary._bridgeToObjectiveC()().super.isa;

      [v18 initWithDomain:v19 code:1 userInfo:v20];

      swift_willThrow();

      v21 = *(v0 + 8);

      return v21();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000CFF40()
{
  v1 = v0[39];
  v2 = v0[38];
  swift_willThrow();

  _Block_release(v1);

  v3 = v0[1];

  return v3();
}

void sub_1000CFFCC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1();
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6;
  v8 = [v6 placeholderForCreatedAsset];
  if (!v8)
  {
    v9 = v7;
LABEL_9:

LABEL_10:
    swift_beginAccess();
    *(a4 + 16) = 1;
    return;
  }

  v9 = v8;
  v10 = [objc_opt_self() changeRequestForAssetCollection:a3];
  if (!v10)
  {

    goto LABEL_9;
  }

  v11 = v10;
  sub_1000033A8(&qword_1001D5248);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100176B10;
  *(v12 + 32) = v9;
  sub_10005BBC4(0, &qword_1001DA438);
  v13 = v9;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 addAssets:isa];
}

uint64_t sub_1000D014C(uint64_t a1, int a2, void *a3)
{
  v5 = sub_100006AAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a2)
  {
    v5 = *v5;

    return _swift_continuation_throwingResume(v5);
  }

  if (!a3)
  {
    __break(1u);
    return _swift_continuation_throwingResume(v5);
  }

  sub_1000033A8(&qword_1001D57D0);
  v7 = swift_allocError();
  *v8 = a3;
  v9 = a3;

  return _swift_continuation_throwingResumeWithError(v6, v7);
}

void sub_1000D0204(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 creationRequestForAssetCollectionWithTitle:v3];

  v5 = [v4 placeholderForCreatedAssetCollection];
  swift_beginAccess();
  v6 = *(a1 + 16);
  *(a1 + 16) = v5;
}

id sub_1000D02C8()
{
  v0 = [objc_allocWithZone(PHFetchOptions) init];
  sub_10005BBC4(0, &qword_1001DA420);
  sub_1000033A8(&qword_1001D58A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100171DA0;
  *(v1 + 56) = &type metadata for String;
  *(v1 + 64) = sub_1000D0414();
  *(v1 + 32) = 0xD00000000000001ALL;
  *(v1 + 40) = 0x800000010016E210;
  v2 = NSPredicate.init(format:_:)();
  [v0 setPredicate:v2];

  v3 = [objc_opt_self() fetchAssetCollectionsWithType:1 subtype:0x7FFFFFFFFFFFFFFFLL options:v0];
  v4 = [v3 firstObject];

  return v4;
}

unint64_t sub_1000D0414()
{
  result = qword_1001DA428;
  if (!qword_1001DA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA428);
  }

  return result;
}

uint64_t sub_1000D0478()
{

  return swift_deallocObject();
}

uint64_t sub_1000D04CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000D04E4(uint64_t a1)
{
  v2 = sub_1000033A8(&qword_1001D8230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D054C()
{

  return swift_deallocObject();
}

const char *sub_1000D05D8()
{
  v1 = "DeveloperMode";
  if (*v0 != 1)
  {
    v1 = "RecordingOnly";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AFMPlus";
  }
}

unint64_t sub_1000D0630()
{
  result = qword_1001DA440;
  if (!qword_1001DA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA440);
  }

  return result;
}

unint64_t sub_1000D0698()
{
  result = qword_1001DA448;
  if (!qword_1001DA448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA448);
  }

  return result;
}

uint64_t sub_1000D06FC(uint64_t a1, char a2, _BYTE *a3)
{
  v8 = &type metadata for TamaleFeatureFlagsKey;
  v9 = sub_1000D0630();
  v7[0] = a2;
  v5 = isFeatureEnabled(_:)();
  result = sub_100006B44(v7);
  *a3 = v5 & 1;
  return result;
}

Swift::Int ActionBarSortOrder.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t sub_1000D07E4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  String.hash(into:)();
  String.hash(into:)();
  v11 = sub_1000033A8(&qword_1001DA600);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v12 = *(v1 + v11[10]);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[18]));
  v14 = *(v2 + v11[19]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[12]));
  sub_1000D4784(v2 + v11[14], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001370C(v6, &qword_1001D44B0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D0ADC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  ActionPin.Pill.localizedTitle.getter();
  String.hash(into:)();

  ActionPin.Pill.glyphName.getter();
  String.hash(into:)();

  v11 = sub_1000033A8(&qword_1001DA608);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v12 = *(v1 + v11[10]);
  if (v12)
  {
    Hasher._combine(_:)(1u);
    v13 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[18]));
  v14 = *(v2 + v11[19]);
  if (v14)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v14);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v2 + v11[12]));
  sub_1000D4784(v2 + v11[14], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_10001370C(v6, &qword_1001D44B0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t ActionBarItemWrapper.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  v13 = *(a2 + 24);
  (*(v13 + 16))(v14, v13);
  String.hash(into:)();

  (*(v13 + 24))(v14, v13);
  String.hash(into:)();

  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of Hashable.hash(into:)();
  v15 = *(v2 + *(a2 + 40));
  if (v15)
  {
    Hasher._combine(_:)(1u);
    v16 = v15;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(a2 + 72)));
  v17 = *(v3 + *(a2 + 76));
  if (v17)
  {
    Hasher._combine(_:)(1u);
    sub_1000D3F94(a1, v17);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(*(v3 + *(a2 + 48)));
  sub_1000D4784(v3 + *(a2 + 56), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10001370C(v8, &qword_1001D44B0);
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1000D1184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  type metadata accessor for ActionPin.Pill();
  sub_1000D5690(qword_1001DA470, &type metadata accessor for ActionPin.Pill);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v26 = v7;
  v27 = v5;
  v28 = v4;
  v14 = sub_1000033A8(&qword_1001DA608);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31 == v29 && v32 == v30)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + v14[12]) == *(a2 + v14[12]) && *(a1 + v14[18]) == *(a2 + v14[18]))
  {
    v18 = v14[14];
    v19 = *(v11 + 48);
    sub_1000D4784(a1 + v18, v13);
    sub_1000D4784(a2 + v18, &v13[v19]);
    v21 = v27;
    v20 = v28;
    v22 = *(v27 + 48);
    if (v22(v13, 1, v28) == 1)
    {
      if (v22(&v13[v19], 1, v20) == 1)
      {
        sub_10001370C(v13, &qword_1001D44B0);
        v16 = 1;
        return v16 & 1;
      }
    }

    else
    {
      sub_1000D4784(v13, v10);
      if (v22(&v13[v19], 1, v20) != 1)
      {
        v23 = v26;
        (*(v21 + 32))(v26, &v13[v19], v20);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *(v21 + 8);
        v24(v23, v20);
        v24(v10, v20);
        sub_10001370C(v13, &qword_1001D44B0);
        return v16 & 1;
      }

      (*(v21 + 8))(v10, v20);
    }

    sub_10001370C(v13, &qword_1001DA458);
    v16 = 0;
    return v16 & 1;
  }

LABEL_8:
  v16 = 0;
  return v16 & 1;
}

uint64_t sub_1000D1600(void *a1, void *a2)
{
  v4 = type metadata accessor for UUID();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = a1[2];
  v13 = a1[3];
  v15 = a2[2];
  v14 = a2[3];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v12 != v15 || v13 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_13;
  }

  v28 = v4;
  v16 = sub_1000033A8(&qword_1001DA600);
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v33 == v31 && v34 == v32)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + v16[12]) == *(a2 + v16[12]) && *(a1 + v16[18]) == *(a2 + v16[18]))
  {
    v20 = v16[14];
    v21 = *(v9 + 48);
    sub_1000D4784(a1 + v20, v11);
    sub_1000D4784(a2 + v20, &v11[v21]);
    v22 = v30;
    v23 = *(v30 + 48);
    v24 = v28;
    if (v23(v11, 1, v28) == 1)
    {
      if (v23(&v11[v21], 1, v24) == 1)
      {
        sub_10001370C(v11, &qword_1001D44B0);
        v18 = 1;
        return v18 & 1;
      }
    }

    else
    {
      sub_1000D4784(v11, v8);
      if (v23(&v11[v21], 1, v24) != 1)
      {
        v25 = v29;
        (*(v22 + 32))(v29, &v11[v21], v24);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        v26 = *(v22 + 8);
        v26(v25, v24);
        v26(v8, v24);
        sub_10001370C(v11, &qword_1001D44B0);
        return v18 & 1;
      }

      (*(v22 + 8))(v8, v24);
    }

    sub_10001370C(v11, &qword_1001DA458);
    v18 = 0;
    return v18 & 1;
  }

LABEL_13:
  v18 = 0;
  return v18 & 1;
}

uint64_t static ActionBarItemWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000033A8(&qword_1001D44B0);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_1000033A8(&qword_1001DA458);
  __chkstk_darwin(v11);
  v13 = &v25 - v12;
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v26 = v7;
  v27 = v5;
  v28 = v4;
  v14 = type metadata accessor for ActionBarItemWrapper();
  type metadata accessor for ActionAnalytics.ActionType();
  sub_1000D5690(&qword_1001DA460, &type metadata accessor for ActionAnalytics.ActionType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v31 == v29 && v32 == v30)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (*(a1 + v14[12]) == *(a2 + v14[12]) && *(a1 + v14[18]) == *(a2 + v14[18]))
  {
    v18 = v14[14];
    v19 = *(v11 + 48);
    sub_1000D4784(a1 + v18, v13);
    sub_1000D4784(a2 + v18, &v13[v19]);
    v21 = v27;
    v20 = v28;
    v22 = *(v27 + 48);
    if (v22(v13, 1, v28) == 1)
    {
      if (v22(&v13[v19], 1, v20) == 1)
      {
        sub_10001370C(v13, &qword_1001D44B0);
        v16 = 1;
        return v16 & 1;
      }
    }

    else
    {
      sub_1000D4784(v13, v10);
      if (v22(&v13[v19], 1, v20) != 1)
      {
        v23 = v26;
        (*(v21 + 32))(v26, &v13[v19], v20);
        sub_1000D5690(&qword_1001D80D0, &type metadata accessor for UUID);
        v16 = dispatch thunk of static Equatable.== infix(_:_:)();
        v24 = *(v21 + 8);
        v24(v23, v20);
        v24(v10, v20);
        sub_10001370C(v13, &qword_1001D44B0);
        return v16 & 1;
      }

      (*(v21 + 8))(v10, v20);
    }

    sub_10001370C(v13, &qword_1001DA458);
    v16 = 0;
    return v16 & 1;
  }

LABEL_8:
  v16 = 0;
  return v16 & 1;
}

Swift::Int ActionBarItemWrapper.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  ActionBarItemWrapper.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000D1F20(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  ActionBarItemWrapper.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t sub_1000D1F64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000033A8(&qword_1001DA600);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1000033A8(&qword_1001DA608);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v2, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002091C(v12, v6, &qword_1001DA600);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(a1);
    v13 = v6;
    v14 = &qword_1001DA600;
  }

  else
  {
    sub_10002091C(v12, v9, &qword_1001DA608);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(a1);
    v13 = v9;
    v14 = &qword_1001DA608;
  }

  return sub_10001370C(v13, v14);
}

Swift::Int sub_1000D2130()
{
  v1 = sub_1000033A8(&qword_1001DA600);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2 - 8];
  v4 = sub_1000033A8(&qword_1001DA608);
  __chkstk_darwin(v4 - 8);
  v6 = &v14[-v5 - 8];
  v7 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v7);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Hasher.init(_seed:)();
  sub_1000D56E4(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002091C(v9, v3, &qword_1001DA600);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(v14);
    v10 = v3;
    v11 = &qword_1001DA600;
  }

  else
  {
    sub_10002091C(v9, v6, &qword_1001DA608);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(v14);
    v10 = v6;
    v11 = &qword_1001DA608;
  }

  sub_10001370C(v10, v11);
  return Hasher._finalize()();
}

uint64_t sub_1000D2310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for ActionAnalytics.ActionType();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *sub_1000D2384(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));
  v3 = v2;
  return v2;
}

uint64_t sub_1000D23E4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 60));

  return v2;
}

uint64_t sub_1000D241C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 64));

  return v2;
}

uint64_t sub_1000D2454(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 68));
  sub_100005630(v2);
  return v2;
}

uint64_t sub_1000D24A4()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1000D24D4()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1000D2504(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

Swift::Int sub_1000D25B0()
{
  v1 = sub_1000033A8(&qword_1001DA600);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2 - 8];
  v4 = sub_1000033A8(&qword_1001DA608);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v14[-v6 - 8];
  __chkstk_darwin(v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  Hasher.init(_seed:)();
  sub_1000D56E4(v0, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10002091C(v9, v3, &qword_1001DA600);
    Hasher._combine(_:)(1uLL);
    sub_1000D07E4(v14);
    v10 = v3;
    v11 = &qword_1001DA600;
  }

  else
  {
    sub_10002091C(v9, v7, &qword_1001DA608);
    Hasher._combine(_:)(0);
    sub_1000D0ADC(v14);
    v10 = v7;
    v11 = &qword_1001DA608;
  }

  sub_10001370C(v10, v11);
  return Hasher._finalize()();
}

uint64_t *sub_1000D2794@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_1000D27AC@<X0>(Swift::Int *a1@<X8>)
{
  result = sub_1000D2130();
  *a1 = result;
  return result;
}

uint64_t sub_1000D27D4()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(*(v8 + 8) + 16))(v7);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D2940()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(*(v8 + 8) + 24))(v7);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D2AAC()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 40))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D2C10()
{
  v1 = v0;
  v2 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v4);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v6 = &unk_1001DA610;
  }

  else
  {
    v5 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v6 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v6, v5);
  v7 = sub_1000D5748(&v11);
  sub_10002091C(v4, v7, v5);
  sub_10002AAA4(&v11, v14);
  v8 = v15;
  v9 = v16;
  sub_100006AAC(v14, v15);
  (*(v9 + 16))(v8, v9);
  return sub_100006B44(v14);
}

uint64_t sub_1000D2D78()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 24))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D2EDC()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 32))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D3040()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v11 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v11 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v12 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v10);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v10, v13);
  v7 = v14;
  v8 = v15;
  sub_100006AAC(v13, v14);
  LOBYTE(v7) = (*(v8 + 64))(v7, v8);
  sub_100006B44(v13);
  return v7 & 1;
}

uint64_t sub_1000D31A4()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 72))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D3310()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 80))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D347C()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 88))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D35E8()
{
  v1 = type metadata accessor for ActionBarItem();
  __chkstk_darwin(v1);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 96))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D374C()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v11 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v11 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v12 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v10);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v10, v13);
  v7 = v14;
  v8 = v15;
  sub_100006AAC(v13, v14);
  (*(v8 + 16))(v7, v8);
  return sub_100006B44(v13);
}

uint64_t sub_1000D38A8()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 24))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D3A04()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 32))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D3B60()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 40))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

uint64_t sub_1000D3CBC()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v11 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v11 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v12 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v10);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v10, v13);
  v7 = v14;
  v8 = v15;
  sub_100006AAC(v13, v14);
  (*(v8 + 56))(v7, v8);
  return sub_100006B44(v13);
}

uint64_t sub_1000D3E1C()
{
  v1 = __chkstk_darwin(v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D56E4(v1, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = &qword_1001DA600;
    v12 = sub_1000033A8(&qword_1001DA600);
    v5 = &unk_1001DA610;
  }

  else
  {
    v4 = &qword_1001DA608;
    v12 = sub_1000033A8(&qword_1001DA608);
    v5 = &unk_1001DA618;
  }

  v13 = sub_1000D57AC(v5, v4);
  v6 = sub_1000D5748(&v11);
  sub_10002091C(v3, v6, v4);
  sub_10002AAA4(&v11, v14);
  v7 = v15;
  v8 = v16;
  sub_100006AAC(v14, v15);
  v9 = (*(v8 + 72))(v7, v8);
  sub_100006B44(v14);
  return v9;
}

void sub_1000D3F94(uint64_t a1, uint64_t a2)
{
  v54 = sub_1000033A8(&qword_1001DA600);
  __chkstk_darwin(v54);
  v5 = &v41 - v4;
  v6 = sub_1000033A8(&qword_1001D44B0);
  v7 = __chkstk_darwin(v6 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v41 - v9;
  v11 = type metadata accessor for UUID();
  v51 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v42 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v41 = &v41 - v14;
  v53 = sub_1000033A8(&qword_1001DA608);
  __chkstk_darwin(v53);
  v16 = &v41 - v15;
  v52 = type metadata accessor for ActionBarItem();
  v49 = *(v52 - 8);
  v17 = __chkstk_darwin(v52);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v41 - v20;
  v22 = *(a2 + 16);
  Hasher._combine(_:)(v22);
  if (v22)
  {
    v23 = a2 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v49 = *(v49 + 72);
    v50 = (v51 + 48);
    v43 = (v51 + 8);
    v44 = (v51 + 32);
    v51 = v19;
    v45 = v10;
    v46 = v11;
    v48 = v21;
    do
    {
      sub_1000D56E4(v23, v21);
      sub_1000D56E4(v21, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v47;
        sub_10002091C(v19, v5, &qword_1001DA600);
        Hasher._combine(_:)(1uLL);
        String.hash(into:)();
        String.hash(into:)();
        v25 = v54;
        type metadata accessor for ActionAnalytics.ActionType();
        sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType);
        dispatch thunk of Hashable.hash(into:)();
        v26 = *&v5[*(v25 + 40)];
        if (v26)
        {
          Hasher._combine(_:)(1u);
          v27 = v26;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v31 = v54;
        Hasher._combine(_:)(v5[*(v54 + 72)]);
        v32 = *&v5[*(v31 + 76)];
        v21 = v48;
        if (v32)
        {
          Hasher._combine(_:)(1u);
          sub_1000D3F94(a1, v32);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v10 = v45;
        v35 = v54;
        Hasher._combine(_:)(v5[*(v54 + 48)]);
        sub_1000D4784(&v5[*(v35 + 56)], v24);
        v36 = v24;
        v37 = v24;
        v11 = v46;
        if ((*v50)(v36, 1, v46) == 1)
        {
          sub_1000D5B0C(v21);
          sub_10001370C(v37, &qword_1001D44B0);
        }

        else
        {
          v38 = v42;
          (*v44)(v42, v37, v11);
          sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          (*v43)(v38, v11);
          sub_1000D5B0C(v21);
        }

        v19 = v51;
        sub_10001370C(v5, &qword_1001DA600);
      }

      else
      {
        sub_10002091C(v19, v16, &qword_1001DA608);
        Hasher._combine(_:)(0);
        ActionPin.Pill.localizedTitle.getter();
        String.hash(into:)();

        ActionPin.Pill.glyphName.getter();
        String.hash(into:)();

        v28 = v53;
        type metadata accessor for ActionAnalytics.ActionType();
        sub_1000D5690(&qword_1001DA450, &type metadata accessor for ActionAnalytics.ActionType);
        dispatch thunk of Hashable.hash(into:)();
        v29 = *&v16[*(v28 + 40)];
        if (v29)
        {
          Hasher._combine(_:)(1u);
          v30 = v29;
          NSObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v33 = v53;
        Hasher._combine(_:)(v16[*(v53 + 72)]);
        v34 = *&v16[*(v33 + 76)];
        v21 = v48;
        if (v34)
        {
          Hasher._combine(_:)(1u);
          sub_1000D3F94(a1, v34);
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v39 = v53;
        Hasher._combine(_:)(v16[*(v53 + 48)]);
        sub_1000D4784(&v16[*(v39 + 56)], v10);
        if ((*v50)(v10, 1, v11) == 1)
        {
          sub_10001370C(v10, &qword_1001D44B0);
        }

        else
        {
          v40 = v41;
          (*v44)(v41, v10, v11);
          sub_1000D5690(&unk_1001D9550, &type metadata accessor for UUID);
          dispatch thunk of Hashable.hash(into:)();
          (*v43)(v40, v11);
        }

        v19 = v51;
        sub_10001370C(v16, &qword_1001DA608);
        sub_1000D5B0C(v21);
      }

      v23 += v49;
      --v22;
    }

    while (v22);
  }
}

uint64_t sub_1000D4784(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001D44B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D4810()
{
  result = qword_1001DA468;
  if (!qword_1001DA468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA468);
  }

  return result;
}

uint64_t sub_1000D4864(uint64_t a1)
{
  result = sub_1000D5690(qword_1001DA470, &type metadata accessor for ActionPin.Pill);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D48D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D4914(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1000D4968()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ActionAnalytics.ActionType();
    if (v1 <= 0x3F)
    {
      sub_1000D51F8(319, &qword_1001DA4F8, sub_1000A0B60);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RenderingMode(319);
        if (v3 <= 0x3F)
        {
          sub_1000D51F8(319, &qword_1001DA500, &type metadata accessor for UUID);
          if (v4 <= 0x3F)
          {
            sub_10001B610();
            if (v5 <= 0x3F)
            {
              sub_1000D524C(319, &qword_1001D8EC0, &qword_1001D8338);
              if (v6 <= 0x3F)
              {
                sub_1000D524C(319, &qword_1001DA508, &qword_1001DA510);
                if (v7 <= 0x3F)
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

uint64_t sub_1000D4B00(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v38 = type metadata accessor for ActionAnalytics.ActionType();
  v8 = *(v38 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(type metadata accessor for UUID() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v10 <= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 80);
  v17 = *(v11 + 80);
  v18 = *(v11 + 64);
  if (!v13)
  {
    ++v18;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v16;
  v20 = *(v8 + 64) + 7;
  v21 = v17 + 10;
  v22 = v18 + 7;
  if (v15 < a2)
  {
    v23 = ((((((v22 + ((v21 + ((((v20 + (v19 & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
    if ((v23 & 0xFFFFFFF8) != 0)
    {
      v24 = 2;
    }

    else
    {
      v24 = a2 - v15 + 1;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    if (v26 > 1)
    {
      if (v26 == 2)
      {
        v27 = *(a1 + v23);
        if (*(a1 + v23))
        {
          goto LABEL_30;
        }
      }

      else
      {
        v27 = *(a1 + v23);
        if (v27)
        {
          goto LABEL_30;
        }
      }
    }

    else if (v26)
    {
      v27 = *(a1 + v23);
      if (*(a1 + v23))
      {
LABEL_30:
        v28 = v27 - 1;
        if ((v23 & 0xFFFFFFF8) != 0)
        {
          v28 = 0;
          v29 = *a1;
        }

        else
        {
          v29 = 0;
        }

        return v15 + (v29 | v28) + 1;
      }
    }
  }

  if (v7 == v15)
  {
    v30 = *(v6 + 48);
    v31 = a1;
    v32 = v7;
    v33 = v5;

    return v30(v31, v32, v33);
  }

  v31 = ((a1 + v19) & ~v16);
  if (v9 == v15)
  {
    v30 = *(v8 + 48);
    v32 = v9;
    v33 = v38;

    return v30(v31, v32, v33);
  }

  v35 = (v21 + ((((v31 + v20) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v17;
  if (v14 == v15)
  {
    if (v13 >= 2)
    {
      v37 = (*(v12 + 48))(v35);
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v36 = *((v22 + v35) & 0xFFFFFFFFFFFFFFF8);
  if (v36 >= 0xFFFFFFFF)
  {
    LODWORD(v36) = -1;
  }

  return (v36 + 1);
}

void sub_1000D4E6C(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v38 = *(a4 + 16);
  v6 = *(v38 - 8);
  v37 = v6;
  v7 = *(v6 + 84);
  v36 = type metadata accessor for ActionAnalytics.ActionType();
  v8 = *(v36 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = 0;
  v12 = *(type metadata accessor for UUID() - 8);
  v13 = v12;
  v14 = *(v12 + 84);
  v15 = *(v6 + 64);
  v16 = v14 - 1;
  if (!v14)
  {
    v16 = 0;
  }

  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  v19 = *(v12 + 80);
  v20 = *(v12 + 64);
  if (v10 <= v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = v10;
  }

  if (v21 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  if (!v14)
  {
    ++v20;
  }

  v22 = v20 + 7;
  v23 = ((((((v22 + ((v19 + 10 + ((((v18 + 7 + ((v15 + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v21 < a3)
  {
    if (((((((v22 + ((v19 + 10 + ((((v18 + 7 + ((v15 + v17) & ~v17)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v19)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v24 = a3 - v21 + 1;
    }

    else
    {
      v24 = 2;
    }

    if (v24 >= 0x10000)
    {
      v25 = 4;
    }

    else
    {
      v25 = 2;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    if (v24 >= 2)
    {
      v11 = v25;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > v21)
  {
    if (((((((v22 + ((v19 + 10 + ((((v18 + 7 + ((v15 + v17) & ~v17)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v19)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v26 = a2 - v21;
    }

    else
    {
      v26 = 1;
    }

    if (((((((v22 + ((v19 + 10 + ((((v18 + 7 + ((v15 + v17) & ~v17)) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8)) & ~v19)) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v27 = ~v21 + a2;
      bzero(a1, ((((((v22 + ((v19 + 10 + ((((v18 + 7 + ((v15 + v17) & ~v17)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v27;
    }

    if (v11 > 1)
    {
      if (v11 == 2)
      {
        *(a1 + v23) = v26;
      }

      else
      {
        *(a1 + v23) = v26;
      }
    }

    else if (v11)
    {
      *(a1 + v23) = v26;
    }

    return;
  }

  v28 = a1;
  if (v11 <= 1)
  {
    if (v11)
    {
      *(a1 + v23) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *(a1 + v23) = 0;
    goto LABEL_42;
  }

  *(a1 + v23) = 0;
  if (!a2)
  {
    return;
  }

LABEL_43:
  if (v7 == v21)
  {
    v29 = v38;
    v30 = *(v37 + 56);
    v31 = a2;
    v32 = v7;
LABEL_47:

    v30(v28, v31, v32, v29);
    return;
  }

  v28 = ((a1 + v15 + v17) & ~v17);
  if (v9 == v21)
  {
    v30 = *(v8 + 56);
    v31 = a2;
    v32 = v9;
    v29 = v36;
    goto LABEL_47;
  }

  v33 = (v19 + 10 + ((((v28 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v19;
  if (v16 == v21)
  {
    v34 = *(v13 + 56);

    v34(v33, (a2 + 1));
  }

  else
  {
    v35 = ((v22 + v33) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v35 = a2 & 0x7FFFFFFF;
      v35[1] = 0;
    }

    else
    {
      *v35 = (a2 - 1);
    }
  }
}

void sub_1000D51F8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1000D524C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    sub_10001276C(a3);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for ActionBarItem()
{
  result = qword_1001DA588;
  if (!qword_1001DA588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000D52FC()
{
  sub_1000D5370();
  if (v0 <= 0x3F)
  {
    sub_1000D5404();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000D5370()
{
  if (!qword_1001DA598)
  {
    type metadata accessor for ActionPin.Pill();
    sub_1000D5690(&qword_1001DA5A0, &type metadata accessor for ActionPin.Pill);
    v0 = type metadata accessor for ActionBarItemWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DA598);
    }
  }
}

void sub_1000D5404()
{
  if (!qword_1001DA5A8)
  {
    sub_1000D5460();
    v0 = type metadata accessor for ActionBarItemWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1001DA5A8);
    }
  }
}

unint64_t sub_1000D5460()
{
  result = qword_1001DA5B0;
  if (!qword_1001DA5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA5B0);
  }

  return result;
}

unint64_t sub_1000D550C(uint64_t a1)
{
  result = sub_1000D5534();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000D5534()
{
  result = qword_1001DA5E8;
  if (!qword_1001DA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA5E8);
  }

  return result;
}

unint64_t sub_1000D558C()
{
  result = qword_1001DA5F0;
  if (!qword_1001DA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001DA5F0);
  }

  return result;
}

uint64_t sub_1000D55E0(uint64_t a1)
{
  result = sub_1000D5690(&qword_1001DA5E0, type metadata accessor for ActionBarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D5638(uint64_t a1)
{
  result = sub_1000D5690(&qword_1001DA5F8, type metadata accessor for ActionBarItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000D5690(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000D56E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionBarItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000D5748(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000D57AC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10001276C(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000D5800(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000033A8(&qword_1001DA600);
  __chkstk_darwin(v4 - 8);
  v6 = (&v27 - v5);
  v7 = sub_1000033A8(&qword_1001DA608);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for ActionBarItem();
  v11 = __chkstk_darwin(v10);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v15 = &v27 - v14;
  v16 = sub_1000033A8(qword_1001DA620);
  v17 = __chkstk_darwin(v16 - 8);
  v19 = &v27 - v18;
  v20 = *(v17 + 56);
  sub_1000D56E4(a1, &v27 - v18);
  sub_1000D56E4(a2, &v19[v20]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000D56E4(v19, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10002091C(&v19[v20], v6, &qword_1001DA600);
      v21 = sub_1000D1600(v13, v6);
      sub_10001370C(v6, &qword_1001DA600);
      v22 = v13;
      v23 = &qword_1001DA600;
LABEL_9:
      sub_10001370C(v22, v23);
      sub_1000D5B0C(v19);
      return v21 & 1;
    }

    v24 = &qword_1001DA600;
    v25 = v13;
  }

  else
  {
    sub_1000D56E4(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_10002091C(&v19[v20], v9, &qword_1001DA608);
      v21 = sub_1000D1184(v15, v9);
      sub_10001370C(v9, &qword_1001DA608);
      v22 = v15;
      v23 = &qword_1001DA608;
      goto LABEL_9;
    }

    v24 = &qword_1001DA608;
    v25 = v15;
  }

  sub_10001370C(v25, v24);
  sub_10001370C(v19, qword_1001DA620);
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1000D5B0C(uint64_t a1)
{
  v2 = type metadata accessor for ActionBarItem();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000D5B68()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SaliencyStreamIngredients();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v3 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1000D5C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v5 = sub_1000033A8(&qword_1001D41B0);
  __chkstk_darwin(v5 - 8);
  v34 = &v29 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v32 = *(v7 - 8);
  v33 = v7;
  __chkstk_darwin(v7);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v9);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for Logger();
  __chkstk_darwin(v11 - 8);
  static Log.cameraPreview.getter();
  OSSignposter.init(logger:)();
  v12 = sub_1000DDBF0();
  if (v12)
  {
    v13 = v12;
    v30 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapesMutex;
    dispatch_workloop_set_scheduler_priority();
    v29 = sub_100014FBC();
    v14 = v13;
    static DispatchQoS.unspecified.getter();
    v38 = &_swiftEmptyArrayStorage;
    sub_1000DDDB8(&unk_1001D8040, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000033A8(&unk_1001D6B50);
    sub_100013608(&unk_1001D8050, &unk_1001D6B50);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v32 + 104))(v31, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v33);
    v15 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    dispatch_activate(v14);

    *(v4 + v30) = v15;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksInternal) = &_swiftEmptyArrayStorage;
    v16 = OBJC_IVAR____TtC6Tamale17DebugPreviewLayer__tracksLock;
    sub_1000033A8(&qword_1001DA750);
    v17 = swift_allocObject();
    *(v17 + 16) = 0;
    *(v4 + v16) = v17;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_colors) = &_swiftEmptyDictionarySingleton;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_systemPressureLevel) = 0;
    v18 = (v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_cameraMotionState);
    *v18 = 0;
    v18[1] = 0;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_currentCommandBuffer) = 0;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_textures) = &_swiftEmptyDictionarySingleton;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_fontSize) = 75;
    *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_padding) = 0x402E000000000000;
    if (qword_1001D31B8 != -1)
    {
      swift_once();
    }

    v19 = sub_1000DDC20(qword_1001D96D0);
    if (v19)
    {
      v20 = v19;
      v21 = v37;
      sub_10001FFF8(v37, v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_configuration);
      *(v4 + OBJC_IVAR____TtC6Tamale17DebugPreviewLayer_drawShapes) = v20;
      swift_unknownObjectRetain_n();
      v22 = String._bridgeToObjectiveC()();
      [v20 selectFont:v22 fontSize:75];
      swift_unknownObjectRelease();

      v23 = type metadata accessor for TaskPriority();
      v24 = v34;
      (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
      v25 = swift_allocObject();
      swift_weakInit();
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v27 = v36;
      v26[4] = v35;
      v26[5] = v27;
      v26[6] = v25;

      sub_1000154EC(0, 0, v24, &unk_10017A0D0, v26);
      swift_unknownObjectRelease();

      sub_10002005C(v21);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D62A8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a6;
  v8 = type metadata accessor for CVDetection.DetectionType();
  v6[7] = v8;
  v6[8] = *(v8 - 8);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for CVDetection();
  v6[11] = v9;
  v6[12] = *(v9 - 8);
  v6[13] = swift_task_alloc();
  v10 = type metadata accessor for CVTrackSnapshot();
  v6[14] = v10;
  v6[15] = *(v10 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v11 = type metadata accessor for TrackManager.State();
  v6[18] = v11;
  v6[19] = *(v11 - 8);
  v6[20] = swift_task_alloc();
  sub_1000033A8(&qword_1001DA758);
  v6[21] = swift_task_alloc();
  v6[22] = sub_1000033A8(&qword_1001DA760);
  v12 = swift_task_alloc();
  v6[23] = v12;
  v13 = sub_1000033A8(&qword_1001DA768);
  v6[24] = v13;
  v6[25] = *(v13 - 8);
  v6[26] = swift_task_alloc();
  v16 = (a4 + *a4);
  v14 = swift_task_alloc();
  v6[27] = v14;
  *v14 = v6;
  v14[1] = sub_1000D6610;

  return v16(v12);
}

uint64_t sub_1000D6610()
{

  return _swift_task_switch(sub_1000D670C, 0, 0);
}

uint64_t sub_1000D670C()
{
  sub_100013608(&qword_1001DA770, &qword_1001DA760);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  swift_beginAccess();
  *(v0 + 232) = enum case for CVDetection.DetectionType.meta(_:);
  sub_100013608(&qword_1001DA778, &qword_1001DA768);
  v1 = swift_task_alloc();
  *(v0 + 224) = v1;
  *v1 = v0;
  v1[1] = sub_1000D6864;
  v2 = *(v0 + 168);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, 0, 0);
}