void *specialized _NativeSet.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
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

id specialized _NativeSet.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)()
{
  v1 = v0;
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin();
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetMapsClustererC7ClusterVGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v0;
    v30 = v5;
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
      v20 = *(v31 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v19 + v20 * (v16 | (v8 << 6)), v4);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
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

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, *(v7 + 48) + v15 * v20);
      ++*(v7 + 16);
      v5 = v30;
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

        v1 = v29;
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService30MOSuggestionAssetVisualSubTypeOGMd);
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
      v15 = *(*(v2 + 48) + (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + v11) = v15;
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

        v1 = v0;
        goto LABEL_26;
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
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

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd);
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
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy16MomentsUIService20MOProtectedAppSourceVGMd);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo30MOSuggestionAssetMediaItemTypeVGMd);
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
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

        goto LABEL_28;
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

        v1 = v0;
        goto LABEL_26;
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo33BMMomentsEngagementSuggestionTypeVGMd);
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
      v15 = *(*(v2 + 48) + 4 * (v12 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v15);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 4 * v11) = v15;
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

        v1 = v0;
        goto LABEL_26;
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd);
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

{
  v1 = v0;
  v32 = type metadata accessor for CloudDevice.Capability();
  v2 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MomentsUI11CloudDeviceV10CapabilityOGMd);
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
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v4 + 16))
  {
    v28 = v2;
    v29 = v4;
    v7 = 0;
    v8 = v4 + 56;
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
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v19 = v18;
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v19;
      ++*(v6 + 16);
      v4 = v29;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v3 = v28;
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v3 = v6;
  }

  return result;
}

size_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(size_t a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(double *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

void *specialized _ArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR, &_sSaySdGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMd, &_ss23_ContiguousArrayStorageCySay16MomentsUIService030MOSuggestionCollectionViewCellH5ModelCGGMR, &_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMd, &_ss23_ContiguousArrayStorageCySo17MOSuggestionAssetC_SitGMR, &_sSo17MOSuggestionAssetC_SitMd);
}

uint64_t specialized _ArrayBuffer._consumeAndCreateNew()(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, Swift::Int), uint64_t (*a3)(void, Swift::Int, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

{
  v6 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v6);
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for MOEventBundle);
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v24, v18);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v14);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v35 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = __chkstk_darwin(v35);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v27 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v27 - v16;
  v29 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v34 = v18;
    v28 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v32 = v20;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    while (1)
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v23, v17);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v20, v13);
      v24 = *(v17 + 3);
      v25 = *(v13 + 3);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v17);
      if (v24 >= v25)
      {
LABEL_4:
        a3 = v33 + 1;
        v20 = v32 + v28;
        v22 = v31 - 1;
        v23 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v8 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v47 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v45 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v44 = &v39 - v12;
  v13 = __chkstk_darwin(v11);
  v46 = &v39 - v14;
  result = __chkstk_darwin(v13);
  v49 = &v39 - v16;
  v40 = a2;
  if (a3 != a2)
  {
    v48 = *a4;
    v17 = (v48 + 8 * a3 - 8);
    v18 = a1 - a3;
LABEL_8:
    v42 = v17;
    v43 = a3;
    v19 = *(v48 + 8 * a3);
    v41 = v18;
    v20 = v18;
    while (1)
    {
      v21 = *v17;
      v22 = *(*v19 + 224);

      if (!v22(v23))
      {
        goto LABEL_6;
      }

      v25 = *(*v21 + 224);
      if (v25(v24))
      {

        v27 = v22(v26);
        if (!v27)
        {
          goto LABEL_6;
        }

        if (!*(v27 + 16))
        {

          goto LABEL_7;
        }

        v28 = v46;
        v29 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        outlined init with copy of MOSuggestionSheetAssetDateRange(v27 + v29, v46);

        v30 = outlined init with take of MOSuggestionSheetAssetDateRange(v28, v49);
        v31 = v25(v30);
        if (!v31)
        {
          goto LABEL_5;
        }

        if (!*(v31 + 16))
        {

LABEL_5:
          outlined destroy of MOSuggestionSheetAssetDateRange(v49);
LABEL_6:

LABEL_7:
          a3 = v43 + 1;
          v17 = v42 + 1;
          v18 = v41 - 1;
          if (v43 + 1 == v40)
          {
            return result;
          }

          goto LABEL_8;
        }

        v32 = v45;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v31 + v29, v45);

        v33 = v32;
        v34 = v44;
        outlined init with take of MOSuggestionSheetAssetDateRange(v33, v44);
        v35 = v49;
        v36 = static Date.< infix(_:_:)();
        outlined destroy of MOSuggestionSheetAssetDateRange(v34);
        outlined destroy of MOSuggestionSheetAssetDateRange(v35);

        if ((v36 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (!v48)
        {
          goto LABEL_23;
        }
      }

      else
      {

        if (!v48)
        {
LABEL_23:
          __break(1u);
          return result;
        }
      }

      v37 = *v17;
      v19 = v17[1];
      *v17 = v19;
      v17[1] = v37;
      --v17;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_7;
      }
    }
  }

  return result;
}

{
  v34 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v8 = __chkstk_darwin(v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v26 - v12;
  result = __chkstk_darwin(v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      outlined init with copy of MOSuggestionSheetAssetDateRange(v23, v17, type metadata accessor for MOSuggestionSheetAssetDateRange);
      outlined init with copy of MOSuggestionSheetAssetDateRange(v20, v13, type metadata accessor for MOSuggestionSheetAssetDateRange);
      v24 = static Date.< infix(_:_:)();
      outlined destroy of MOSuggestionSheetAssetDateRange(v13, type metadata accessor for MOSuggestionSheetAssetDateRange);
      result = outlined destroy of MOSuggestionSheetAssetDateRange(v17, type metadata accessor for MOSuggestionSheetAssetDateRange);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      outlined init with take of MOSuggestionSheetAssetDateRange(v23, v10, type metadata accessor for MOSuggestionSheetAssetDateRange);
      swift_arrayInitWithTakeFrontToBack();
      result = outlined init with take of MOSuggestionSheetAssetDateRange(v10, v20, type metadata accessor for MOSuggestionSheetAssetDateRange);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v35 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v35);
  v34 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  v30 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v36 = *a4;
    v15 = (v36 + 8 * a3 - 8);
    v16 = a1 - a3;
LABEL_5:
    v32 = v15;
    v33 = a3;
    v17 = *(v36 + 8 * a3);
    v31 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = *(v17 + 16);

      v21 = [v20 displayStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = [*(v19 + 16) displayStartDate];
      v23 = v34;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v22) = static Date.< infix(_:_:)();
      v24 = *v14;
      v25 = v23;
      v26 = v35;
      (*v14)(v25, v35);
      v24(v13, v26);

      if ((v22 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v15 = v32 + 1;
        v16 = v31 - 1;
        if (v33 + 1 == v30)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = *v15;
      v17 = v15[1];
      *v15 = v17;
      v15[1] = v27;
      --v15;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

{
  v8 = type metadata accessor for CloudDevice.Capability();
  v9 = __chkstk_darwin(v8);
  v41 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v45 = &v31 - v12;
  result = __chkstk_darwin(v11);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v14 + 16);
    v43 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v39 = (v14 + 32);
    v40 = v16;
    v19 = v16 + v17 * (a3 - 1);
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      v42(v44, v21, v8);
      v25 = v45;
      v24(v45, v22, v8);
      lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      v27 = *v18;
      (*v18)(v25, v8);
      result = v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v28)(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v118 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v114 = *(v118 - 8);
  v9 = __chkstk_darwin(v118);
  v110 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v117 = &v103 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v103 - v14);
  result = __chkstk_darwin(v13);
  v18 = (&v103 - v17);
  v116 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_132;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_126:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
    }

    v119 = v21;
    v99 = *(v21 + 2);
    if (v99 >= 2)
    {
      while (*v116)
      {
        v100 = *&v21[16 * v99];
        v101 = *&v21[16 * v99 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v100, *v116 + *(v114 + 72) * *&v21[16 * v99 + 16], *v116 + *(v114 + 72) * v101, v5);
        if (v6)
        {
        }

        if (v101 < v100)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v99 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v102 = &v21[16 * v99];
        *v102 = v100;
        *(v102 + 1) = v101;
        v119 = v21;
        result = specialized Array.remove(at:)(v99 - 1);
        v21 = v119;
        v99 = *(v119 + 2);
        if (v99 <= 1)
        {
        }
      }

      goto LABEL_130;
    }
  }

  v106 = a4;
  v20 = 0;
  v21 = _swiftEmptyArrayStorage;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = v22;
      v25 = *v116;
      v26 = *(v114 + 72);
      v5 = *v116 + v26 * v23;
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v18);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25 + v26 * v24, v15);
      v27 = v18[2];
      v28 = v15[2];
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
      v107 = v24;
      v29 = v24 + 2;
      v115 = v26;
      v30 = v25 + v26 * v29;
      while (v19 != v29)
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v18);
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v15);
        v31 = v18[2];
        v32 = v15[2];
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
        ++v29;
        v30 += v115;
        v5 += v115;
        if (v28 < v27 == v32 >= v31)
        {
          v19 = v29 - 1;
          break;
        }
      }

      v22 = v107;
      if (v28 < v27)
      {
        if (v19 < v107)
        {
          goto LABEL_123;
        }

        if (v107 < v19)
        {
          v104 = v21;
          v105 = v6;
          v33 = v115 * (v19 - 1);
          v34 = v19 * v115;
          v113 = v19;
          v35 = v19;
          v36 = v107;
          v37 = v107 * v115;
          do
          {
            if (v36 != --v35)
            {
              v5 = *v116;
              if (!*v116)
              {
                goto LABEL_129;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5 + v37, v110);
              if (v37 < v33 || v5 + v37 >= v5 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v110, v5 + v33);
            }

            ++v36;
            v33 -= v115;
            v34 -= v115;
            v37 += v115;
          }

          while (v36 < v35);
          v21 = v104;
          v6 = v105;
          v22 = v107;
          v19 = v113;
        }
      }
    }

    v38 = v116[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_122;
      }

      if (v19 - v22 < v106)
      {
        if (__OFADD__(v22, v106))
        {
          goto LABEL_124;
        }

        if (v22 + v106 >= v38)
        {
          v39 = v116[1];
        }

        else
        {
          v39 = v22 + v106;
        }

        if (v39 < v22)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_121;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      v21 = result;
    }

    v42 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v43 = &v21[16 * v42];
    *(v43 + 4) = v22;
    *(v43 + 5) = v40;
    v44 = *v108;
    if (!*v108)
    {
      goto LABEL_131;
    }

    v111 = v40;
    if (v42)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v21 + 4);
          v47 = *(v21 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_52:
          if (v49)
          {
            goto LABEL_110;
          }

          v62 = &v21[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_113;
          }

          v68 = &v21[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_117;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v72 = &v21[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_66:
        if (v67)
        {
          goto LABEL_112;
        }

        v75 = &v21[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_115;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_73:
        v83 = v45 - 1;
        if (v45 - 1 >= v5)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v116)
        {
          goto LABEL_128;
        }

        v84 = *&v21[16 * v83 + 32];
        v5 = *&v21[16 * v45 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v116 + *(v114 + 72) * v84, *v116 + *(v114 + 72) * *&v21[16 * v45 + 32], *v116 + *(v114 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
        }

        if (v83 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v85 = &v21[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v119 = v21;
        result = specialized Array.remove(at:)(v45);
        v21 = v119;
        v5 = *(v119 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v21[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_108;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_109;
      }

      v57 = &v21[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_111;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_114;
      }

      if (v61 >= v53)
      {
        v79 = &v21[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v116[1];
    v20 = v111;
    if (v111 >= v19)
    {
      goto LABEL_94;
    }
  }

  v104 = v21;
  v105 = v6;
  v86 = *v116;
  v87 = *(v114 + 72);
  v88 = *v116 + v87 * (v19 - 1);
  v89 = v19;
  v90 = -v87;
  v107 = v22;
  v91 = v22 - v89;
  v113 = v89;
  v109 = v87;
  v92 = v86 + v89 * v87;
  v111 = v39;
LABEL_85:
  v5 = v92;
  v112 = v91;
  v93 = v91;
  v115 = v88;
  v94 = v88;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v5, v18);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v94, v15);
    v95 = v18[2];
    v96 = v15[2];
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v15);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v18);
    if (v96 >= v95)
    {
LABEL_84:
      v88 = v115 + v109;
      v91 = v112 - 1;
      v92 += v109;
      v40 = v111;
      if (++v113 != v111)
      {
        goto LABEL_85;
      }

      v21 = v104;
      v6 = v105;
      v22 = v107;
      if (v111 < v107)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v86)
    {
      break;
    }

    v97 = v117;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v5, v117);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v97, v94);
    v94 += v90;
    v5 += v90;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

{
  v106 = a1;
  v119 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v113 = *(v119 - 8);
  v7 = __chkstk_darwin(v119);
  v109 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v118 = &v102 - v10;
  v11 = __chkstk_darwin(v9);
  v13 = &v102 - v12;
  result = __chkstk_darwin(v11);
  v16 = &v102 - v15;
  v115 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_98:
    v4 = *v106;
    if (!*v106)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v13 = v117;
    if ((result & 1) == 0)
    {
LABEL_130:
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
    }

    v120 = v19;
    v98 = *(v19 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = *&v19[16 * v98];
        v100 = *&v19[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * v99, *v115 + *(v113 + 72) * *&v19[16 * v98 + 16], *v115 + *(v113 + 72) * v100, v4);
        if (v13)
        {
        }

        if (v100 < v99)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        }

        if (v98 - 2 >= *(v19 + 2))
        {
          goto LABEL_124;
        }

        v101 = &v19[16 * v98];
        *v101 = v99;
        *(v101 + 1) = v100;
        v120 = v19;
        result = specialized Array.remove(at:)(v98 - 1);
        v19 = v120;
        v98 = *(v120 + 2);
        if (v98 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v104 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v110 = v13;
  while (1)
  {
    v20 = v18;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v21 = *v115;
      v22 = *(v113 + 72);
      v4 = *v115 + v22 * (v18 + 1);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v16);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v21 + v22 * v18, v13);
      v23 = *(v16 + 3);
      v111 = *(v13 + 3);
      v112 = v23;
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
      result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
      v105 = v18;
      v24 = v18 + 2;
      v114 = v22;
      v25 = v21 + v22 * (v18 + 2);
      while (v17 != v24)
      {
        LODWORD(v116) = v112 < v111;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25, v16);
        v26 = v16;
        v27 = v110;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v110);
        v28 = *(v26 + 24);
        v29 = v17;
        v30 = v19;
        v31 = *(v27 + 24);
        v32 = v27;
        v16 = v26;
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v32);
        result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v26);
        v33 = v28 < v31;
        v19 = v30;
        v17 = v29;
        v34 = !v33;
        ++v24;
        v25 += v114;
        v4 += v114;
        if (((v116 ^ v34) & 1) == 0)
        {
          v17 = v24 - 1;
          break;
        }
      }

      v13 = v110;
      v20 = v105;
      if (v112 < v111)
      {
        if (v17 < v105)
        {
          goto LABEL_127;
        }

        if (v105 < v17)
        {
          v103 = v19;
          v35 = v114 * (v17 - 1);
          v36 = v17 * v114;
          v37 = v17;
          v38 = v105 * v114;
          do
          {
            if (v20 != --v37)
            {
              v116 = v37;
              v4 = *v115;
              if (!*v115)
              {
                goto LABEL_133;
              }

              outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4 + v38, v109);
              if (v38 < v35 || v4 + v38 >= v4 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
                v37 = v116;
              }

              else
              {
                v37 = v116;
                if (v38 != v35)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v109, v4 + v35);
            }

            ++v20;
            v35 -= v114;
            v36 -= v114;
            v38 += v114;
          }

          while (v20 < v37);
          v19 = v103;
          v20 = v105;
        }
      }
    }

    v39 = v115[1];
    if (v17 < v39)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v104)
      {
        if (__OFADD__(v20, v104))
        {
          goto LABEL_128;
        }

        if (v20 + v104 >= v39)
        {
          v40 = v115[1];
        }

        else
        {
          v40 = v20 + v104;
        }

        if (v40 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v40)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_36:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
      v19 = result;
    }

    v42 = *(v19 + 2);
    v41 = *(v19 + 3);
    v4 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = v4;
    v43 = &v19[16 * v42];
    *(v43 + 4) = v20;
    *(v43 + 5) = v18;
    v44 = *v106;
    if (!*v106)
    {
      goto LABEL_135;
    }

    if (v42)
    {
      while (1)
      {
        v45 = v4 - 1;
        if (v4 >= 4)
        {
          break;
        }

        if (v4 == 3)
        {
          v46 = *(v19 + 4);
          v47 = *(v19 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_55:
          if (v49)
          {
            goto LABEL_114;
          }

          v62 = &v19[16 * v4];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_117;
          }

          v68 = &v19[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_121;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v4 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v72 = &v19[16 * v4];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_69:
        if (v67)
        {
          goto LABEL_116;
        }

        v75 = &v19[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_119;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_76:
        v83 = v45 - 1;
        if (v45 - 1 >= v4)
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

        if (!*v115)
        {
          goto LABEL_132;
        }

        v84 = *&v19[16 * v83 + 32];
        v4 = *&v19[16 * v45 + 40];
        v85 = v117;
        specialized _merge<A>(low:mid:high:buffer:by:)(*v115 + *(v113 + 72) * v84, *v115 + *(v113 + 72) * *&v19[16 * v45 + 32], *v115 + *(v113 + 72) * v4, v44);
        v117 = v85;
        if (v85)
        {
        }

        if (v4 < v84)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        }

        if (v83 >= *(v19 + 2))
        {
          goto LABEL_111;
        }

        v86 = &v19[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v4;
        v120 = v19;
        result = specialized Array.remove(at:)(v45);
        v19 = v120;
        v4 = *(v120 + 2);
        if (v4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v19[16 * v4 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_112;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_113;
      }

      v57 = &v19[16 * v4];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_115;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_118;
      }

      if (v61 >= v53)
      {
        v79 = &v19[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_122;
        }

        if (v48 < v82)
        {
          v45 = v4 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v17 = v115[1];
    if (v18 >= v17)
    {
      goto LABEL_98;
    }
  }

  v103 = v19;
  v87 = v17;
  v88 = *v115;
  v89 = *(v113 + 72);
  v90 = *v115 + v89 * (v87 - 1);
  v91 = v20;
  v92 = -v89;
  v105 = v91;
  v93 = v91 - v87;
  v116 = v87;
  v107 = v89;
  v108 = v40;
  v4 = v88 + v87 * v89;
LABEL_88:
  v111 = v4;
  v112 = v93;
  v114 = v90;
  while (1)
  {
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v4, v16);
    outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v90, v13);
    v94 = *(v16 + 3);
    v95 = *(v13 + 3);
    outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v13);
    result = outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v16);
    if (v94 >= v95)
    {
LABEL_87:
      v18 = v108;
      v90 = v114 + v107;
      v93 = v112 - 1;
      v4 = v111 + v107;
      if (++v116 != v108)
      {
        goto LABEL_88;
      }

      v19 = v103;
      v20 = v105;
      if (v108 < v105)
      {
        goto LABEL_125;
      }

      goto LABEL_36;
    }

    if (!v88)
    {
      break;
    }

    v96 = v118;
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v4, v118);
    swift_arrayInitWithTakeFrontToBack();
    outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v96, v90);
    v90 += v92;
    v4 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_87;
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
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

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
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

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v37);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
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
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v12);
        v21 = v45;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v21);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
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
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v48, &v47, &v46);
  return 1;
}

{
  v42 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v8 = __chkstk_darwin(v42);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v36 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        while (1)
        {
          if (v26 <= a1)
          {
            v47 = v26;
            v45 = v36;
            goto LABEL_58;
          }

          v28 = a3;
          v37 = v23;
          a3 += v24;
          v29 = v25 + v24;
          v30 = v25 + v24;
          v31 = v43;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v30, v43);
          v32 = v27;
          v33 = v44;
          outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v27, v44);
          v34 = *(v31 + 24);
          v35 = *(v33 + 24);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v33);
          outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v31);
          if (v34 < v35)
          {
            break;
          }

          v23 = v29;
          if (v28 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v32;
            v24 = v38;
            a1 = v39;
          }

          else
          {
            v27 = v32;
            v24 = v38;
            a1 = v39;
            if (v28 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v29;
          v26 = v41;
          if (v29 <= v40)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v28 < v41 || a3 >= v41)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v32;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v28 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a2, v43);
        v20 = v44;
        outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(a4, v44);
        v21 = *(v19 + 24);
        v22 = *(v20 + 24);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v20);
        outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v19);
        if (v21 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_58:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v47, &v46, &v45);
  return 1;
}

{
  v42 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v8 = __chkstk_darwin(v42);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v43 = &v36 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v47 = a1;
  v46 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = v42;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = v22;
      do
      {
        v36 = v25;
        v26 = a2 + v22;
        v41 = a2;
        v42 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v45 = v36;
            goto LABEL_59;
          }

          v37 = v25;
          v28 = v24;
          v29 = a3 + v22;
          v30 = v23 + v22;
          v31 = v43;
          outlined init with copy of MOSuggestionSheetAssetDateRange(v30, v43, type metadata accessor for MOSuggestionSheetAssetDateRange);
          v32 = v26;
          v33 = v44;
          outlined init with copy of MOSuggestionSheetAssetDateRange(v32, v44, type metadata accessor for MOSuggestionSheetAssetDateRange);
          v34 = static Date.< infix(_:_:)();
          outlined destroy of MOSuggestionSheetAssetDateRange(v33, type metadata accessor for MOSuggestionSheetAssetDateRange);
          outlined destroy of MOSuggestionSheetAssetDateRange(v31, type metadata accessor for MOSuggestionSheetAssetDateRange);
          if (v34)
          {
            break;
          }

          v25 = v30;
          if (a3 < v23 || v29 >= v23)
          {
            a3 = v29;
            v24 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v35 = a3 == v23;
            a3 = v29;
            v24 = v28;
            a1 = v39;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v30;
          a2 = v41;
          v27 = v30 > v40;
          v26 = v42;
          v22 = v38;
          if (!v27)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          v24 = v28;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v38;
          a1 = v39;
          v25 = v37;
        }

        else
        {
          v35 = a3 == v41;
          a3 = v29;
          v24 = v28;
          a2 = v42;
          v22 = v38;
          a1 = v39;
          v25 = v37;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        outlined init with copy of MOSuggestionSheetAssetDateRange(a2, v43, type metadata accessor for MOSuggestionSheetAssetDateRange);
        v20 = v44;
        outlined init with copy of MOSuggestionSheetAssetDateRange(a4, v44, type metadata accessor for MOSuggestionSheetAssetDateRange);
        v21 = static Date.< infix(_:_:)();
        outlined destroy of MOSuggestionSheetAssetDateRange(v20, type metadata accessor for MOSuggestionSheetAssetDateRange);
        outlined destroy of MOSuggestionSheetAssetDateRange(v19, type metadata accessor for MOSuggestionSheetAssetDateRange);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v47, &v46, &v45);
  return 1;
}

{
  v52 = type metadata accessor for CloudDevice.Capability();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v50 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v49 = &v40 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_63;
  }

  v51 = a3;
  v16 = (a2 - a1) / v14;
  v55 = a1;
  v54 = a4;
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

    v27 = a4 + v18;
    if (v18 >= 1)
    {
      v28 = -v14;
      v43 = a4;
      v44 = (v8 + 16);
      v41 = (v8 + 8);
      v42 = a1;
      v29 = a4 + v18;
      v30 = v51;
      v45 = v28;
      do
      {
        v40 = v27;
        v31 = a2 + v28;
        v47 = a2 + v28;
        v48 = v27;
        v46 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v55 = a2;
            v27 = v40;
            goto LABEL_59;
          }

          v33 = v30;
          v51 = v30 + v28;
          v34 = v29 + v28;
          v35 = *v44;
          v36 = v49;
          v37 = v52;
          (*v44)(v49, v29 + v28, v52);
          v38 = v50;
          v35(v50, v31, v37);
          lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
          LOBYTE(v35) = dispatch thunk of static Comparable.< infix(_:_:)();
          v39 = *v41;
          (*v41)(v38, v37);
          v39(v36, v37);
          if (v35)
          {
            break;
          }

          v30 = v51;
          if (v33 < v29 || v51 >= v29)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v47;
            a1 = v42;
          }

          else
          {
            v31 = v47;
            a1 = v42;
            if (v33 != v29)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v48 = v34;
          v29 = v34;
          v32 = v34 > v43;
          v28 = v45;
          a2 = v46;
          if (!v32)
          {
            v27 = v48;
            goto LABEL_58;
          }
        }

        v30 = v51;
        if (v33 < v46 || v51 >= v46)
        {
          a2 = v47;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v42;
        }

        else
        {
          a2 = v47;
          a1 = v42;
          if (v33 != v46)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v27 = v48;
        v28 = v45;
      }

      while (v29 > v43);
    }

LABEL_58:
    v55 = a2;
LABEL_59:
    v53 = v27;
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

    v48 = a4 + v17;
    v53 = a4 + v17;
    if (v17 >= 1 && a2 < v51)
    {
      v46 = *(v8 + 16);
      v47 = v8 + 16;
      v44 = v14;
      v45 = (v8 + 8);
      do
      {
        v20 = v49;
        v21 = v52;
        v22 = v46;
        v46(v49, a2, v52);
        v23 = v50;
        v22(v50, a4, v21);
        lazy protocol witness table accessor for type MOPresenterServer and conformance MOPresenterServer(&lazy protocol witness table cache variable for type CloudDevice.Capability and conformance CloudDevice.Capability, &type metadata accessor for CloudDevice.Capability);
        LOBYTE(v22) = dispatch thunk of static Comparable.< infix(_:_:)();
        v24 = *v45;
        (*v45)(v23, v21);
        v24(v20, v21);
        if (v22)
        {
          v25 = v44;
          if (a1 < a2 || a1 >= v44 + a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v25;
        }

        else
        {
          v25 = v44;
          v26 = v44 + a4;
          if (a1 < a4 || a1 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v54 = v26;
          a4 += v25;
        }

        a1 += v25;
        v55 = a1;
      }

      while (a4 < v48 && a2 < v51);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v55, &v54, &v53, &type metadata accessor for CloudDevice.Capability);
  return 1;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v25 + v26 * (v24 | (v19 << 6)), v11);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v11, v14);
      outlined init with take of MOSuggestionAssetMapsClusterer.Cluster(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 64;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

{
  v40 = type metadata accessor for CloudDevice.Capability();
  v42 = *(v40 - 8);
  v8 = __chkstk_darwin(v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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

uint64_t specialized MOSuggestionAssetMapsClusterer.distanceMatrix(clusters:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    v3[2] = v2;
    memset_pattern16(v3 + 4, &unk_1002A4A80, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = &_swiftEmptyArrayStorage;
  }

  v5 = _sSa9repeating5countSayxGx_SitcfCSaySdG_Tt1g5Tf4gn_n(v3, v4);

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      return v5;
    }

    v9 = 0;
    v30 = v1;
    v31 = v1 + 8;
    v10 = 5;
    v11 = 1;
    v12 = v7 - 1;
    v28 = v7 - 1;
    v29 = *(v1 + 16);
    while (v9 != v8)
    {
      v13 = *(v1 + 16);
      if (v7 > v13 || v9 + 1 >= v13)
      {
        goto LABEL_32;
      }

      v32 = v9 + 1;
      v15 = *(type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      v18 = (v1 + v16 + v17 * v9);
      v33 = v11;
      v34 = v10;
      v19 = (v31 + v16 + v17 * v11);
      v20 = v12;
      do
      {
        v21 = *v18;
        v22 = v18[1];
        v24 = *(v19 - 1);
        v23 = *v19;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          v5 = result;
        }

        if (v9 >= v5[2])
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v25 = v5[v9 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v9 + 4] = v25;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
          v25 = result;
          v5[v9 + 4] = result;
        }

        if ((v10 - 4) >= *(v25 + 16))
        {
          goto LABEL_28;
        }

        v26 = (v21 - v24) * (v21 - v24) + (v22 - v23) * (v22 - v23);
        *(v25 + 8 * v10) = v26;
        if ((v10 - 4) >= v5[2])
        {
          goto LABEL_29;
        }

        v27 = v5[v10];
        result = swift_isUniquelyReferenced_nonNull_native();
        v5[v10] = v27;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
          v27 = result;
          v5[v10] = result;
        }

        if (v9 >= *(v27 + 16))
        {
          goto LABEL_30;
        }

        *(v27 + 8 * v9 + 32) = v26;
        ++v10;
        v19 = (v19 + v17);
        --v20;
      }

      while (v20);
      --v12;
      v10 = v34 + 1;
      v11 = v33 + 1;
      ++v9;
      v8 = v28;
      v7 = v29;
      v1 = v30;
      if (v32 == v28)
      {
        return v5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of MOSuggestionAssetMapsClusterer.Cluster(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized static MOSuggestionAssetMapsClusterer.clusteredPins(locations:targetRegion:numBuckets:)(unint64_t a1, NSObject *a2, long double a3, long double a4, double a5, double a6)
{
  v7 = a1;
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_144;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
  {
LABEL_145:

    return v7;
  }

  else
  {
    while (1)
    {
      if ((((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a4 < 0.0)
      {
        v11 = a3;
        v12 = a6;
        v13 = a5;
        v14 = remainder(a4, 360.0);
        a5 = v13;
        a6 = v12;
        v15 = v14;
        a3 = v11;
        a4 = v15 + 360.0;
      }

      v16 = a5 * 0.5;
      v17 = a3 - v16;
      v18 = vabdd_f64(a3 - v16, v16 + a3);
      v19 = a2;
      v20 = v18 / a2;
      if (v20 <= 0.0)
      {
        goto LABEL_145;
      }

      a5 = a6 * 0.5;
      v21 = a4 - a6 * 0.5;
      a4 = vabdd_f64(v21, a4 + a6 * 0.5);
      v22 = a4 / v19;
      if (a4 / v19 <= 0.0)
      {
        goto LABEL_145;
      }

      v132 = &_swiftEmptyDictionarySingleton;
      if (!v8)
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v8)
        {
          break;
        }

        goto LABEL_64;
      }

      v8 = _CocoaArrayWrapper.endIndex.getter();
      if (v8)
      {
        break;
      }

LABEL_64:
      v49 = &_swiftEmptyDictionarySingleton;
LABEL_65:
      v7 = _swiftEmptyArrayStorage;
      v131 = _swiftEmptyArrayStorage;
      v50 = (v49 + 8);
      v51 = 1 << *(v49 + 32);
      if (v51 < 64)
      {
        v52 = ~(-1 << v51);
      }

      else
      {
        v52 = -1;
      }

      v53 = v52 & v49[8];
      v54 = (v51 + 63) >> 6;

      v55 = 0;
      *&a3 = 134218242;
      v125 = v54;
      v127 = (v49 + 8);
LABEL_69:
      v56 = v55;
      if (!v53)
      {
        goto LABEL_71;
      }

      do
      {
        v55 = v56;
LABEL_74:
        v57 = *(v49[7] + ((v55 << 9) | (8 * __clz(__rbit64(v53)))));
        v58 = one-time initialization token for assets;

        if (v58 != -1)
        {
          swift_once();
        }

        v59 = type metadata accessor for Logger();
        __swift_project_value_buffer(v59, static MOAngelLogger.assets);

        a2 = Logger.logObject.getter();
        v60 = static os_log_type_t.debug.getter();
        v61 = v57 >> 62;
        if (os_log_type_enabled(a2, v60))
        {
          v62 = swift_slowAlloc();
          *v62 = 134217984;
          if (v61)
          {
            v63 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v63 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v62 + 4) = v63;

          _os_log_impl(&_mh_execute_header, a2, v60, "[ClusterPins] Group Count %ld", v62, 0xCu);
        }

        else
        {
        }

        v53 &= v53 - 1;
        v8 = (v57 & 0xFFFFFFFFFFFFFF8);
        if (v61)
        {
          if (v57 >= 0)
          {
            a2 = (v57 & 0xFFFFFFFFFFFFFF8);
          }

          else
          {
            a2 = v57;
          }

          v65 = _CocoaArrayWrapper.endIndex.getter();
          if (v65 <= 1)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_94:
              if ((v57 & 0xC000000000000001) != 0)
              {
                specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_148;
                }
              }

              v66 = Logger.logObject.getter();
              v67 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v66, v67))
              {
                v8 = swift_slowAlloc();
                *v8 = 0;
                _os_log_impl(&_mh_execute_header, v66, v67, "[ClusterPins] Single location pass through", v8, 2u);
              }

              a2 = &v131;
              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              v54 = v125;
              v50 = v127;
              if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v8 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

              v7 = v131;
              goto LABEL_69;
            }
          }

          else
          {
            v114 = v57 & 0xFFFFFFFFFFFFFF8;
            v8 = v65;
            v130 = 0;
            v64 = _CocoaArrayWrapper.endIndex.getter();
            if (v64)
            {
              v112 = v8;
              v113 = v49;
              if (v64 < 1)
              {
                __break(1u);
LABEL_131:

                return v7;
              }

              goto LABEL_103;
            }
          }
        }

        else
        {
          v64 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64 > 1)
          {
            v113 = v49;
            v114 = v57 & 0xFFFFFFFFFFFFFF8;
            v130 = 0;
            v112 = v64;
LABEL_103:
            v68 = v64;
            v122 = v57 & 0xC000000000000001;
            swift_beginAccess();
            v69 = 0;
            v116 = v57;
            v117 = 0;
            v70 = 0.0;
            v71 = 0.0;
            v115 = v68;
            do
            {
              if (v122)
              {
                v74 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v74 = *(v57 + 8 * v69 + 32);
              }

              v75 = (*(*v74 + 240))();
              v76 = (*(*v74 + 264))();
              v77 = *(*v74 + 288);
              v72 = v77();
              if (v72)
              {
                v78 = v72;
                v79 = v77();
                if (v79)
                {
                  v80 = [v79 _poiCategory];
                  swift_unknownObjectRelease();
                  if (v80)
                  {

                    v130 = v78;
                    v72 = swift_unknownObjectRelease();
                    v117 = v78;
                  }

                  else
                  {
                    v72 = swift_unknownObjectRelease();
                  }

                  v68 = v115;
                }

                else
                {
                  v72 = swift_unknownObjectRelease();
                }

                v57 = v116;
              }

              ++v69;
              v71 = v71 + v75;
              v70 = v70 + v76;
              v73 = (v77)(v72);

              swift_unknownObjectRelease();
            }

            while (v68 != v69);
            v81 = v117;
            if (!v117 && v73)
            {
              v130 = v73;
              swift_unknownObjectRetain();
              v81 = v73;
            }

            v118 = v81;
            v82 = Logger.logObject.getter();
            v83 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v82, v83))
            {
              v84 = v68;
              v85 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              *v85 = 134218242;
              *(v85 + 4) = v84;
              *(v85 + 12) = 2080;
              v128[4] = v118;
              v129 = v86;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo10GEOMapItem_pSgMd);
              v87 = Optional.debugDescription.getter();
              v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v87, v88, &v129);

              *(v85 + 14) = v89;
              _os_log_impl(&_mh_execute_header, v82, v83, "[ClusterPins] Conslidating %ld locations into a single pin, mapItem:%s", v85, 0x16u);
              __swift_destroy_boxed_opaque_existential_0(v86);
            }

            if (v122)
            {
              swift_unknownObjectRetain();
              v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v91 = v115;
            }

            else
            {
              v91 = v115;
              if (!*(v114 + 16))
              {
                goto LABEL_149;
              }

              v90 = *(v57 + 32);
              swift_unknownObjectRetain();
            }

            v93 = v71 / v91;
            v94 = (*(*v90 + 360))(v92);

            type metadata accessor for MOMapLocation();
            v95 = swift_allocObject();
            v96 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_startDate;
            v97 = type metadata accessor for Date();
            v98 = *(*(v97 - 8) + 56);
            v98(v95 + v96, 1, 1, v97);
            v98(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_endDate, 1, 1, v97);
            v99 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_mapItem) = 0;
            v100 = v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_clusterCount;
            *v100 = 0;
            *(v100 + 8) = 1;
            v101 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_confidenceLevel) = 0;
            v102 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isWork) = 0;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_userPlaceType) = -1;
            v103 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_enclosingArea);
            *v103 = 0;
            v103[1] = 0;
            v120 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_horizontalUncertainty) = 0;
            v123 = OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_isScaledDownPOI) = 0;
            v104 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_poiCategory);
            *v104 = 0;
            v104[1] = 0xE000000000000000;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_latitude) = v93;
            *(v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_longitude) = v70 / v112;
            v105 = (v95 + OBJC_IVAR____TtC16MomentsUIService13MOMapLocation_title);
            *v105 = 0;
            v105[1] = 0xE000000000000000;
            swift_beginAccess();
            *v100 = v115;
            *(v100 + 8) = 0;
            swift_beginAccess();
            v8 = v118;
            *(v95 + v99) = v118;
            swift_beginAccess();
            *(v95 + v101) = v94;
            swift_beginAccess();
            *(v95 + v102) = 0;
            swift_beginAccess();
            *v103 = 0;
            v103[1] = 0;
            swift_beginAccess();
            *(v95 + v120) = 0;
            swift_beginAccess();
            *(v95 + v123) = 0;
            swift_beginAccess();
            *v104 = 0;
            v104[1] = 0xE000000000000000;
            a2 = &v131;
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v8 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_unknownObjectRelease();
            v7 = v131;
            swift_unknownObjectRelease();
            v49 = v113;
            v54 = v125;
            v50 = v127;
            goto LABEL_69;
          }

          if (v64)
          {
            goto LABEL_94;
          }
        }

        v56 = v55;
        v54 = v125;
        v50 = v127;
      }

      while (v53);
LABEL_71:
      while (1)
      {
        v55 = v56 + 1;
        if (__OFADD__(v56, 1))
        {
          break;
        }

        if (v55 >= v54)
        {
          goto LABEL_131;
        }

        v53 = *&v50[8 * v55];
        ++v56;
        if (v53)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
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
      v106 = a6;
      v107 = a4;
      v108 = a3;
      v109 = a5;
      v110 = _CocoaArrayWrapper.endIndex.getter();
      a5 = v109;
      a3 = v108;
      a4 = v107;
      a6 = v106;
      if (v110 < 2)
      {
        goto LABEL_145;
      }
    }

    v121 = &a2->isa + 1;
    if (!__OFADD__(a2, 1))
    {
      v23 = 0;
      v124 = v7 & 0xC000000000000001;
      v119 = v7 & 0xFFFFFFFFFFFFFF8;
      *&a3 = 1;
      while (1)
      {
        if (v124)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        else
        {
          if (v23 >= *(v119 + 16))
          {
            goto LABEL_142;
          }

          v26 = *(v7 + 8 * v23 + 32);

          v25 = (v23 + 1);
          if (__OFADD__(v23, 1))
          {
            goto LABEL_133;
          }
        }

        a2 = v26;
        v27 = (*(*v26 + 240))();
        a3 = (*(*v26 + 264))();
        if ((((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) - 1 < 0xFFFFFFFFFFFFFLL) && a3 < 0.0)
        {
          a3 = remainder(a3, 360.0) + 360.0;
        }

        a4 = (v27 - v17) / v20;
        a5 = -9.22337204e18;
        if (a4 <= -9.22337204e18)
        {
          goto LABEL_134;
        }

        a5 = 9.22337204e18;
        if (a4 >= 9.22337204e18)
        {
          goto LABEL_135;
        }

        a3 = (a3 - v21) / v22;
        if (COERCE__INT64(fabs((v27 - v17) / v20)) > 0x7FEFFFFFFFFFFFFFLL || (*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_136;
        }

        a5 = -9.22337204e18;
        if (a3 <= -9.22337204e18)
        {
          goto LABEL_137;
        }

        a5 = 9.22337204e18;
        if (a3 >= 9.22337204e18)
        {
          goto LABEL_138;
        }

        v30 = a3 * v121;
        if ((a3 * v121) >> 64 != v30 >> 63)
        {
          goto LABEL_139;
        }

        v31 = a4 + v30;
        if (__OFADD__(a4, v30))
        {
          goto LABEL_140;
        }

        a2 = v132;
        if (v132[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if (v32)
          {
            a2 = &v132;
            v34 = specialized Dictionary.subscript.modify(v128, v31);
            if (v33->isa)
            {
              a2 = v33;

              specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
              if (*((a2->isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a2->isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            }

            (v34)(v128, 0);

            goto LABEL_20;
          }
        }

        v126 = v25;
        v35 = v8;
        v8 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_1002A4A70;
        *(v7 + 32) = v26;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128[0] = a2;
        v38 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
        isa = a2[2].isa;
        v40 = (v37 & 1) == 0;
        v41 = isa + v40;
        if (__OFADD__(isa, v40))
        {
          goto LABEL_141;
        }

        v42 = v37;
        if (a2[3].isa >= v41)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            v45 = v128[0];
            if ((v37 & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          else
          {
            a2 = v128;
            specialized _NativeDictionary.copy()();
            v45 = v128[0];
            if ((v42 & 1) == 0)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v41, isUniquelyReferenced_nonNull_native);
          a2 = v128[0];
          v43 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if ((v42 & 1) != (v44 & 1))
          {
            goto LABEL_150;
          }

          v38 = v43;
          v45 = v128[0];
          if ((v42 & 1) == 0)
          {
LABEL_58:
            v45[(v38 >> 6) + 8] |= 1 << v38;
            *(v45[6] + 8 * v38) = v31;
            *(v45[7] + 8 * v38) = v7;

            v46 = v45[2];
            v47 = __OFADD__(v46, 1);
            v48 = v46 + 1;
            if (v47)
            {
              goto LABEL_143;
            }

            v45[2] = v48;
            goto LABEL_19;
          }
        }

        v24 = v45[7];
        a2 = *(v24 + 8 * v38);
        *(v24 + 8 * v38) = v7;

LABEL_19:
        v132 = v45;
        v7 = v8;
        v8 = v35;
        v25 = v126;
LABEL_20:
        ++v23;
        if (v25 == v8)
        {
          v49 = v132;
          goto LABEL_65;
        }
      }
    }

    __break(1u);
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized MOSuggestionAssetMapsClusterer.printClusters(_:)(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionAssetMapsClusterer.Cluster() - 8;
  result = __chkstk_darwin(v2);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v9 = *(v4 + 72);
    v18 = xmmword_1002A48B0;
    do
    {
      outlined init with copy of MOSuggestionAssetMapsClusterer.Cluster(v8, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
      v10 = swift_allocObject();
      *(v10 + 16) = v18;
      v20 = 0;
      v21 = 0xE000000000000000;
      _StringGuts.grow(_:)(51);
      v11._countAndFlagsBits = 0x616E6964726F6F63;
      v11._object = 0xED0000203A736574;
      String.append(_:)(v11);
      v19 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSd_SdtMd);
      _print_unlocked<A, B>(_:_:)();
      v12._countAndFlagsBits = 0x6E6174736964202CLL;
      v12._object = 0xEC000000203A6563;
      String.append(_:)(v12);
      Double.write<A>(to:)();
      v13._countAndFlagsBits = 0x3A746E756F63202CLL;
      v13._object = 0xE900000000000020;
      String.append(_:)(v13);
      v19._countAndFlagsBits = v6[1]._object;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0x3A6E69616863202CLL;
      v15._object = 0xE900000000000020;
      String.append(_:)(v15);
      String.append(_:)(v6[2]);
      outlined destroy of MOSuggestionAssetMapsClusterer.Cluster(v6);
      v16 = v20;
      v17 = v21;
      *(v10 + 56) = &type metadata for String;
      *(v10 + 32) = v16;
      *(v10 + 40) = v17;
      print(_:separator:terminator:)();

      v8 += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_10002A958@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x78))();
  *a2 = result;
  return result;
}

uint64_t sub_10002A9B4(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x80);

  return v2(v3);
}

uint64_t sub_10002AA18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((swift_isaMask & **a1) + 0x90))();
  *a2 = result;
  return result;
}

uint64_t sub_10002AA74(uint64_t a1, void **a2)
{
  v2 = *((swift_isaMask & **a2) + 0x98);

  return v2(v3);
}

uint64_t sub_10002AAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10002ABAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for UUID();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for MOSuggestionAssetMapsClusterer.Cluster()
{
  type metadata accessor for (Double, Double)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      type metadata accessor for GEOMapItem?();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (Double, Double)()
{
  if (!lazy cache variable for type metadata for (Double, Double))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Double, Double));
    }
  }
}

void type metadata accessor for GEOMapItem?()
{
  if (!lazy cache variable for type metadata for GEOMapItem?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo10GEOMapItem_pMd);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for GEOMapItem?);
    }
  }
}

char *specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for NotificationApprovedApplication();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
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

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for MOSuggestionCollectionViewCellViewModel();
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t type metadata accessor for NotificationApprovedApplication()
{
  result = lazy cache variable for type metadata for NotificationApprovedApplication;
  if (!lazy cache variable for type metadata for NotificationApprovedApplication)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NotificationApprovedApplication);
  }

  return result;
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MOSuggestionCollectionViewCellViewModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
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
  result = _CocoaArrayWrapper.endIndex.getter();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16MomentsUIService030MOSuggestionCollectionViewCellE5ModelCGMd);
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

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    outlined init with copy of Any(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void *specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    if (v4)
    {
      type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKUnit);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t MOSuggestionInterstitialListAssetViewModel.__allocating_init(stateOfMindAssets:bundleStartDate:bundleEndDate:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v154 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v158 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_89;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 < 1)
  {
LABEL_90:

    v127 = type metadata accessor for Date();
    v128 = *(*(v127 - 8) + 8);
    v128(a3, v127);
    v128(a2, v127);
    return 0;
  }

LABEL_3:
  v160 = v10;
  v163 = v7;
  v143 = a3;
  v152 = a2;
  rawValue = _swiftEmptyArrayStorage;
  v12 = v8;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
  v13 = v12;
  a2 = 0;
  v14._rawValue = rawValue;
  v164 = v12 & 0xC000000000000001;
  a3 = &type metadata for String;
  v162 = v12;
  do
  {
    if (v164)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v15 = *(v13 + 8 * a2 + 32);
    }

    v16 = v15;
    v17 = [v15 identifier];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v19;

    v165[0]._countAndFlagsBits = v18;
    v165[0]._object = v10;
    v167 = 35;
    v168 = 0xE100000000000000;
    v161 = lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.components<A>(separatedBy:)();

    if (!v20[2])
    {
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      v124 = v7;
      v125 = v8;
      v126 = _CocoaArrayWrapper.endIndex.getter();
      v8 = v125;
      v11 = v126;
      v7 = v124;
      if (v11 < 1)
      {
        goto LABEL_90;
      }

      goto LABEL_3;
    }

    v21 = v20[4];
    v22 = v20[5];

    rawValue = v14._rawValue;
    v24 = *(v14._rawValue + 2);
    v23 = *(v14._rawValue + 3);
    if (v24 >= v23 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      v14._rawValue = rawValue;
    }

    ++a2;
    *(v14._rawValue + 2) = v24 + 1;
    v25 = v14._rawValue + 16 * v24;
    *(v25 + 4) = v21;
    *(v25 + 5) = v22;
    v13 = v162;
  }

  while (v11 != a2);
  v26 = String.init(combinedIdentifiersFrom:)(v14);
  countAndFlagsBits = v26._countAndFlagsBits;
  object = v26._object;
  v27 = MOSuggestionAssetsTypeStateOfMindAsset;
  v169 = _swiftEmptyArrayStorage;
  v170 = _swiftEmptyArrayStorage;
  v28 = type metadata accessor for Date();
  v10 = *(v28 - 8);
  v29 = v158;
  (*(v10 + 2))(v158, v152, v28);
  v30 = *(v163 + 5);
  v141 = v10;
  v142 = v28;
  (*(v10 + 7))(v29 + v30, 1, 1, v28);
  v144 = v27;
  if (v160)
  {
    v31 = v162;
    a2 = _CocoaArrayWrapper.endIndex.getter();
    v32 = &unk_1002A4000;
    if (!a2)
    {
      goto LABEL_76;
    }

LABEL_13:
    v159 = v31 & 0xFFFFFFFFFFFFFF8;
    v135 = 0x80000001002AF8A0;
    v136 = 0x80000001002AF860;
    v134 = 0x80000001002AF8E0;
    v7 = v27;
    a3 = 0;
    v150 = v32[139];
    v139 = xmmword_1002A4A70;
    v137 = xmmword_1002A4A00;
    v33 = _swiftEmptyArrayStorage;
    v155 = _swiftEmptyArrayStorage;
    v151 = _swiftEmptyArrayStorage;
    v160 = a2;
    while (1)
    {
      if (v164)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a3 >= *(v159 + 16))
        {
          goto LABEL_88;
        }

        v7 = *(v31 + 8 * a3 + 32);
      }

      v34 = v7;
      if (__OFADD__(a3, 1))
      {
        goto LABEL_87;
      }

      v163 = (a3 + 1);
      v35 = [v7 assetType];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;
      v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v36;
      v10 = v39;
      if (v41 == v40 && v38 == v39)
      {
      }

      else
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) == 0)
        {
          [v34 contentClassType];
          ObjCClassMetadata = swift_getObjCClassMetadata();
          if (ObjCClassMetadata != type metadata accessor for MOSuggestionGenericFallBackInfo())
          {
            if (one-time initialization token for shared != -1)
            {
              swift_once();
            }

            v45 = type metadata accessor for Logger();
            __swift_project_value_buffer(v45, static MOAngelLogger.shared);
            v46 = Logger.logObject.getter();
            v10 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v46, v10))
            {
              v47 = swift_slowAlloc();
              *v47 = 0;
              _os_log_impl(&_mh_execute_header, v46, v10, "[MOSuggestionInterstitialListAssetViewModel.stateOfMindAsset] Mismatched init for asset type", v47, 2u);
            }

            goto LABEL_44;
          }
        }
      }

      v48 = [v34 content];
      objc_opt_self();
      v49 = swift_dynamicCastObjCClass();
      if (!v49)
      {

        v7 = swift_unknownObjectRelease();
LABEL_45:
        a2 = v160;
        goto LABEL_46;
      }

      v50 = v49;
      v51 = [v34 metadata];
      v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v52 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v10);

      if (!v52)
      {
        swift_unknownObjectRelease();
        goto LABEL_44;
      }

      if (!*(v52 + 16) || (v53 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyStateOfMindValenceClassificationAndReflectiveIntervalLocalized), (v54 & 1) == 0))
      {
        swift_unknownObjectRelease();

        goto LABEL_45;
      }

      outlined init with copy of Any(*(v52 + 56) + 32 * v53, v165);
      if ((swift_dynamicCast() & 1) == 0)
      {
        swift_unknownObjectRelease();

LABEL_44:

        goto LABEL_45;
      }

      v156 = v168;
      v157 = v167;
      type metadata accessor for MOSuggestionSheetImage();
      v55 = swift_allocObject();
      *(v55 + 40) = 0;
      v153 = v48;
      *(v55 + 32) = 0;
      *(v55 + 24) = 0;
      *(v55 + 72) = 0u;
      *(v55 + 56) = 0u;
      *(v55 + 88) = 1;
      *(v55 + 96) = 0;
      v151 = (v55 + 96);
      *(v55 + 104) = 1;
      *(v55 + 16) = v50;
      swift_beginAccess();
      *(v55 + 24) = 0;
      swift_beginAccess();
      *(v55 + 32) = 0;
      swift_beginAccess();
      v56 = *(v55 + 40);
      *(v55 + 40) = 0;
      swift_unknownObjectRetain();

      v27 = v55;
      *(v55 + 48) = 0;
      swift_beginAccess();
      *(v55 + 72) = 0u;
      *(v55 + 56) = 0u;
      *(v55 + 88) = 1;
      v57 = v151;
      swift_beginAccess();
      *v57 = 0;
      *(v55 + 104) = 1;
      if (*(v52 + 16) && (v58 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyStateOfMindLabelsLocalized), (v59 & 1) != 0) && (outlined init with copy of Any(*(v52 + 56) + 32 * v58, v165), (swift_dynamicCast() & 1) != 0))
      {
        v60 = v167;
        v61 = v168;
      }

      else
      {
        v60 = 0;
        v61 = 0xE000000000000000;
      }

      v62 = v157;
      if (*(v52 + 16) && (v63 = specialized __RawDictionaryStorage.find<A>(_:)(MOSuggestionAssetMetadataKeyStateOfMindDomainsLocalized), (v64 & 1) != 0))
      {
        outlined init with copy of Any(*(v52 + 56) + 32 * v63, v165);

        if (swift_dynamicCast())
        {
          v66 = v167;
          v65 = v168;
          if (v60)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        }
      }

      else
      {
      }

      v66 = 0;
      v65 = 0xE000000000000000;
      if (v60)
      {
        goto LABEL_57;
      }

LABEL_56:
      if (v61 == 0xE000000000000000)
      {
        goto LABEL_58;
      }

LABEL_57:
      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
LABEL_58:

        if (v66)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v67 = swift_allocObject();
      v151 = v66;
      *(v67 + 16) = v137;
      v68 = v156;
      *(v67 + 32) = v62;
      *(v67 + 40) = v68;
      *(v67 + 48) = v60;
      *(v67 + 56) = v61;
      v165[0]._countAndFlagsBits = v67;
      v69 = v65;
      v70 = [objc_opt_self() mainBundle];
      v171._countAndFlagsBits = 0xD000000000000033;
      v171._object = v136;
      v71._countAndFlagsBits = 8236;
      v71._object = 0xE200000000000000;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v71, 0, v70, v72, v171);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v65 = v69;
      v62 = BidirectionalCollection<>.joined(separator:)();
      v156 = v73;
      v66 = v151;

      if (v66)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (v65 != 0xE000000000000000)
      {
LABEL_62:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
          v74 = swift_allocObject();
          v157 = v74;
          *(v74 + 16) = v137;
          v75 = v156;
          *(v74 + 32) = v62;
          *(v74 + 40) = v75;
          v76 = objc_opt_self();
          v77 = v65;
          v78 = [v76 mainBundle];
          v172._object = v135;
          v79._countAndFlagsBits = 10272;
          v79._object = 0xE200000000000000;
          v80._countAndFlagsBits = 0;
          v80._object = 0xE000000000000000;
          v172._countAndFlagsBits = 0xD00000000000003ELL;
          v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v79, 0, v78, v80, v172);

          v165[0] = v81;

          v82._countAndFlagsBits = v66;
          v82._object = v77;
          String.append(_:)(v82);

          v84 = v165[0]._object;
          v83 = v165[0]._countAndFlagsBits;
          v85 = [v76 mainBundle];
          v173._object = v134;
          v86._countAndFlagsBits = 41;
          v86._object = 0xE100000000000000;
          v87._countAndFlagsBits = 0;
          v87._object = 0xE000000000000000;
          v173._countAndFlagsBits = 0xD00000000000003ELL;
          v88 = NSLocalizedString(_:tableName:bundle:value:comment:)(v86, 0, v85, v87, v173);

          v165[0] = __PAIR128__(v84, v83);

          String.append(_:)(v88);

          v89 = v165[0]._object;
          v90 = v157;
          *(v157 + 48) = v165[0]._countAndFlagsBits;
          *(v90 + 56) = v89;
          v165[0]._countAndFlagsBits = v90;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v62 = BidirectionalCollection<>.joined(separator:)();
          v156 = v91;
        }
      }

      v92 = [v34 identifier];
      v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v94;

      v165[0]._countAndFlagsBits = v93;
      v165[0]._object = v33;
      v167 = 35;
      v168 = 0xE100000000000000;
      v95 = StringProtocol.components<A>(separatedBy:)();

      if (!v95[2])
      {
        __break(1u);
        goto LABEL_92;
      }

      v96 = v95[5];
      v151 = v95[4];
      v147 = v96;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
      v97 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v98 = swift_allocObject();
      v146 = v98;
      *(v98 + 16) = v150;
      outlined init with copy of MOSuggestionSheetAssetDateRange(v158, v98 + v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v99 = swift_allocObject();
      *(v99 + 16) = v150;
      v157 = v62;
      v100 = v156;
      *(v99 + 32) = v62;
      *(v99 + 40) = v100;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      v101 = swift_allocObject();
      v145 = v101;
      *(v101 + 16) = v139;
      *(v101 + 32) = v27;
      type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
      v102 = swift_allocObject();
      *(v102 + 32) = 0u;
      *(v102 + 48) = 0u;
      *(v102 + 64) = 0;
      *(v102 + 16) = 0u;
      *(v102 + 90) = 1;

      v148 = v27;

      UUID.init()();
      swift_beginAccess();
      *(v102 + 16) = 0;

      swift_beginAccess();
      *(v102 + 24) = 0;
      *(v102 + 32) = 0;

      swift_beginAccess();
      *(v102 + 40) = v146;

      swift_beginAccess();
      *(v102 + 48) = v99;

      swift_beginAccess();
      *(v102 + 56) = v145;

      *(v102 + 65) = 25;
      v103 = v147;
      *(v102 + 72) = v151;
      *(v102 + 80) = v103;
      *(v102 + 90) = 1;
      *(v102 + 88) = 0;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v151 = v170;
      v10 = v155;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v144;
      a2 = v160;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 2) + 1, 1, v10);
      }

      v106 = *(v10 + 2);
      v105 = *(v10 + 3);
      if (v106 >= v105 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v10);
      }

      *(v10 + 2) = v106 + 1;
      v155 = v10;
      v107 = &v10[16 * v106];
      v108 = v156;
      *(v107 + 4) = v157;
      *(v107 + 5) = v108;

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      swift_unknownObjectRelease();

      v33 = v169;
      v31 = v162;
LABEL_46:
      ++a3;
      if (v163 == a2)
      {
        goto LABEL_77;
      }
    }
  }

  v31 = v162;
  a2 = *((v162 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v32 = &unk_1002A4000;
  if (a2)
  {
    goto LABEL_13;
  }

LABEL_76:
  v109 = v27;
  v33 = _swiftEmptyArrayStorage;
  v155 = _swiftEmptyArrayStorage;
  v151 = _swiftEmptyArrayStorage;
LABEL_77:

  if (v33 >> 62)
  {
LABEL_92:
    v129 = _CocoaArrayWrapper.endIndex.getter();
    v110 = v151;
    v111 = v152;
    if (!v129)
    {
      goto LABEL_93;
    }

LABEL_79:
    if ((v33 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);

        __break(1u);
        return result;
      }
    }

    v112 = (*(v149 + 344))(countAndFlagsBits, object, 0, 0, 0, 0, 0, 0, 281);
    if (v110 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter() < 2)
      {
        goto LABEL_85;
      }
    }

    else if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_85:

      v115 = MOSuggestionInterstitialListAssetViewModel._groupAssetTypeAndCountDescription(with:)(0);
      v117 = v116;
      swift_beginAccess();
      v112[3] = v115;
      v112[4] = v117;

      swift_beginAccess();
      v112[6] = v155;

      swift_beginAccess();
      v112[7] = v33;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16MomentsUIService31MOSuggestionSheetAssetDateRangeVGMd);
      v118 = (*(v154 + 80) + 32) & ~*(v154 + 80);
      v119 = swift_allocObject();
      *(v119 + 16) = xmmword_1002A48B0;
      v120 = v119 + v118;
      v121 = v158;
      outlined init with copy of MOSuggestionSheetAssetDateRange(v158, v120);

      v122 = v142;
      v123 = *(v141 + 1);
      v123(v143, v142);
      v123(v111, v122);
      outlined destroy of MOSuggestionSheetAssetDateRange(v121);
      swift_beginAccess();
      v112[5] = v119;

      return v112;
    }

    v165[0]._countAndFlagsBits = specialized Array._copyToContiguousArray()(v113, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5, specialized Array._copyContents(initializing:));
    specialized MutableCollection<>.sort(by:)(&v165[0]._countAndFlagsBits);

    v114 = v165[0]._countAndFlagsBits;
    swift_beginAccess();
    v112[2] = v114;
    goto LABEL_85;
  }

  v110 = v151;
  v111 = v152;
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_79;
  }

LABEL_93:

  v130 = v142;
  v131 = *(v141 + 1);
  v131(v143, v142);
  v131(v111, v130);
  outlined destroy of MOSuggestionSheetAssetDateRange(v158);

  return 0;
}

uint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo28MOSuggestionAssetMetadataKeyaypGMd);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v8 = 0;
  while (1)
  {
    if (!v4)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v5)
        {

          return v1;
        }

        v4 = *(a1 + 64 + 8 * v10);
        ++v8;
        if (v4)
        {
          v8 = v10;
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_29;
    }

LABEL_15:
    v11 = __clz(__rbit64(v4)) | (v8 << 6);
    outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v11, v31);
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v32 + 8);
    v29[0] = v32[0];
    v29[1] = v32[1];
    v30 = v33;
    v28[0] = v31[0];
    v28[1] = v31[1];
    outlined init with copy of AnyHashable(v28, v25);
    type metadata accessor for MOSuggestionAssetMetadataKey(0);
    if (!swift_dynamicCast())
    {
      break;
    }

    v12 = v24;
    outlined init with copy of Any(v29 + 8, v26 + 8);
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_ss11AnyHashableV3key_yp5valuetMd);
    outlined init with take of Any((v26 + 8), v23);
    v13 = v12;
    outlined init with take of Any(v23, v27);
    outlined init with take of Any(v27, v26);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = Hasher._finalize()();

    v15 = -1 << v1[32];
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v6[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v6[8 * v17];
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

LABEL_29:
      __break(1u);
      return result;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*&v6[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v9) = v13;
    result = outlined init with take of Any(v26, (*(v1 + 7) + 32 * v9));
    ++*(v1 + 2);
  }

  outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v28, &_ss11AnyHashableV3key_yp5valuetMd);

  return 0;
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v12, v27);
        *(&v28 + 1) = *(*(a1 + 56) + 8 * v12);
        v25[0] = v27[0];
        v25[1] = v27[1];
        v26 = v28;
        outlined init with copy of AnyHashable(v25, &v23);
        swift_unknownObjectRetain();
        if (!swift_dynamicCast())
        {
          outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_ss11AnyHashableV3key_yXl5valuetMd);

          goto LABEL_23;
        }

        v13 = v21;
        v14 = *(&v26 + 1);
        swift_unknownObjectRetain();
        outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v25, &_ss11AnyHashableV3key_yXl5valuetMd);
        v21 = v14;
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v5 &= v5 - 1;
        v15 = v23;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v13;
          v9[1] = v22;
          v10 = result;

          *(v2[7] + 8 * v10) = v15;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v13;
          v17[1] = v22;
          *(v2[7] + 8 * result) = v15;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      v23 = 0;
      v24 = 1;
LABEL_23:

      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6, 0, type metadata accessor for MOSuggestionAssetReference, specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:), specialized MutableCollection<>._insertionSort(within:sortedEnd:by:));
  return specialized ContiguousArray._endMutation()();
}

{
  NewAByxGyFSo16CMMotionActivityC_Tg5_0 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = NewAByxGyFSo16CMMotionActivityC_Tg5_0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    NewAByxGyFSo16CMMotionActivityC_Tg5_0 = _ss22_ContiguousArrayBufferV20_consumeAndCreateNewAByxGyFSo16CMMotionActivityC_Tg5_0(NewAByxGyFSo16CMMotionActivityC_Tg5_0);
    *a1 = NewAByxGyFSo16CMMotionActivityC_Tg5_0;
  }

  v4 = *(NewAByxGyFSo16CMMotionActivityC_Tg5_0 + 16);
  v6[0] = NewAByxGyFSo16CMMotionActivityC_Tg5_0 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = static Hasher._hash(seed:_:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  MOSuggestionAssetAnalytics.AssetTransferEvent.EventFields.rawValue.getter(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  MOSuggestionAssetTileSize.hash(into:)(v4, a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3 & 1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v19 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for HKQuantityType);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;
      if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(v2 + 48);
    do
    {
      v8 = *(v7 + result);
      if (v8 <= 5)
      {
        if (*(v7 + result) > 3u)
        {
          if (v8 == 4)
          {
            if (a1 == 4)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 5)
          {
            if (a1 == 5)
            {
              return result;
            }

            goto LABEL_4;
          }
        }

        else
        {
          if (v8 == 2)
          {
            if (a1 == 2)
            {
              return result;
            }

            goto LABEL_4;
          }

          if (v8 == 3)
          {
            if (a1 == 3)
            {
              return result;
            }

            goto LABEL_4;
          }
        }
      }

      else if (*(v7 + result) <= 7u)
      {
        if (v8 == 6)
        {
          if (a1 == 6)
          {
            return result;
          }

          goto LABEL_4;
        }

        if (v8 == 7)
        {
          if (a1 == 7)
          {
            return result;
          }

          goto LABEL_4;
        }
      }

      else
      {
        switch(v8)
        {
          case 8u:
            if (a1 == 8)
            {
              return result;
            }

            goto LABEL_4;
          case 9u:
            if (a1 == 9)
            {
              return result;
            }

            goto LABEL_4;
          case 0xAu:
            if (a1 == 10)
            {
              return result;
            }

            goto LABEL_4;
        }
      }

      if (a1 - 2 >= 9 && ((v8 ^ a1) & 1) == 0)
      {
        return result;
      }

LABEL_4:
      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE900000000000073;
      v8 = 0x74657373416D756ELL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x80000001002AEA00;
          break;
        case 2:
          v8 = 0xD000000000000013;
          v7 = 0x80000001002AEA20;
          break;
        case 3:
          v8 = 0xD000000000000012;
          v7 = 0x80000001002AEA40;
          break;
        case 4:
          v8 = 0x74657373416D756ELL;
          v7 = 0xEF616964654D5F73;
          break;
        case 5:
          v8 = 0xD000000000000018;
          v7 = 0x80000001002AEA70;
          break;
        case 6:
          v8 = 0x74657373416D756ELL;
          v9 = 0x746F68505F73;
          goto LABEL_19;
        case 7:
          v8 = 0xD000000000000014;
          v7 = 0x80000001002AEAA0;
          break;
        case 8:
          v8 = 0x74657373416D756ELL;
          v9 = 0x656469565F73;
LABEL_19:
          v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEF6F000000000000;
          break;
        case 9:
          v8 = 0xD000000000000011;
          v7 = 0x80000001002AEAD0;
          break;
        case 0xA:
          v8 = 0xD000000000000016;
          v7 = 0x80000001002AEAF0;
          break;
        case 0xB:
          v8 = 0xD000000000000013;
          v7 = 0x80000001002AEB10;
          break;
        case 0xC:
          v8 = 0xD000000000000011;
          v7 = 0x80000001002AEB30;
          break;
        case 0xD:
          v8 = 0xD000000000000013;
          v7 = 0x80000001002AEB50;
          break;
        case 0xE:
          v8 = 0x726566736E617274;
          v7 = 0xEA00000000004449;
          break;
        case 0xF:
          v8 = 0xD000000000000013;
          v7 = 0x80000001002AEB70;
          break;
        default:
          break;
      }

      v10 = 0x74657373416D756ELL;
      v11 = 0xE900000000000073;
      switch(a1)
      {
        case 1:
          v11 = 0x80000001002AEA00;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_48;
          }

          goto LABEL_49;
        case 2:
          v11 = 0x80000001002AEA20;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 3:
          v11 = 0x80000001002AEA40;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 4:
          v11 = 0xEF616964654D5F73;
          if (v8 != 0x74657373416D756ELL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 5:
          v11 = 0x80000001002AEA70;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 6:
          v12 = 0x746F68505F73;
          goto LABEL_53;
        case 7:
          v11 = 0x80000001002AEAA0;
          if (v8 != 0xD000000000000014)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 8:
          v12 = 0x656469565F73;
LABEL_53:
          v11 = v12 & 0xFFFFFFFFFFFFLL | 0xEF6F000000000000;
          if (v8 != 0x74657373416D756ELL)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 9:
          v11 = 0x80000001002AEAD0;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 10:
          v10 = 0xD000000000000016;
          v11 = 0x80000001002AEAF0;
          goto LABEL_47;
        case 11:
          v11 = 0x80000001002AEB10;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 12:
          v11 = 0x80000001002AEB30;
          if (v8 != 0xD000000000000011)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 13:
          v11 = 0x80000001002AEB50;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 14:
          v11 = 0xEA00000000004449;
          if (v8 != 0x726566736E617274)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        case 15:
          v11 = 0x80000001002AEB70;
          if (v8 != 0xD000000000000013)
          {
            goto LABEL_49;
          }

          goto LABEL_48;
        default:
LABEL_47:
          if (v8 != v10)
          {
            goto LABEL_49;
          }

LABEL_48:
          if (v7 == v11)
          {

            return v4;
          }

LABEL_49:
          v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a4 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v4 + 48) + 24 * v6;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
      if (v11 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v13 == v14)
      {

        if (v10)
        {
LABEL_3:
          if (a3)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      else
      {
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v16 & 1) == 0)
        {
          goto LABEL_4;
        }

        if (v10)
        {
          goto LABEL_3;
        }
      }

      if ((a3 & 1) == 0 && v9 == a2)
      {
        return v6;
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

Swift::Int specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for MOSuggestionInterstitialListAssetViewModel();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }

  return result;
}

uint64_t specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v134 = a1;
  v9 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v145 = *(v9 - 8);
  v10 = __chkstk_darwin(v9 - 8);
  v142 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v141 = &v127 - v13;
  v14 = __chkstk_darwin(v12);
  v143 = &v127 - v15;
  v16 = __chkstk_darwin(v14);
  v147 = &v127 - v17;
  v18 = __chkstk_darwin(v16);
  v130 = &v127 - v19;
  v20 = __chkstk_darwin(v18);
  v129 = &v127 - v21;
  v22 = __chkstk_darwin(v20);
  v131 = &v127 - v23;
  result = __chkstk_darwin(v22);
  v135 = &v127 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = _swiftEmptyArrayStorage;
LABEL_118:
    v29 = *v134;
    if (!*v134)
    {
      goto LABEL_158;
    }

    v4 = v28;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
LABEL_121:
      v150 = result;
      v4 = *(result + 16);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v123 = *(result + 16 * v4);
          v124 = result;
          v125 = *(result + 16 * (v4 - 1) + 40);
          specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v123), (*a3 + 8 * *(result + 16 * (v4 - 1) + 32)), (*a3 + 8 * v125), v29);
          if (v6)
          {
          }

          if (v125 < v123)
          {
            goto LABEL_145;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v124 = specialized _ArrayBuffer._consumeAndCreateNew()(v124);
          }

          if (v4 - 2 >= *(v124 + 2))
          {
            goto LABEL_146;
          }

          v126 = &v124[16 * v4];
          *v126 = v123;
          *(v126 + 1) = v125;
          v150 = v124;
          specialized Array.remove(at:)(v4 - 1);
          result = v150;
          v4 = *(v150 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_156;
      }
    }

LABEL_152:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
    goto LABEL_121;
  }

  v27 = 0;
  v28 = _swiftEmptyArrayStorage;
  v138 = a3;
  v133 = a4;
  while (1)
  {
    v29 = v27 + 1;
    v136 = v27;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v132 = v28;
    v4 = *a3;
    v30 = *(*a3 + 8 * v29);
    v148 = *(*a3 + 8 * v27);
    v149 = v30;

    LODWORD(v146) = closure #1 in Array<A>.sortedByAscendingTime.getter(&v149, &v148);
    if (v6)
    {
    }

    v29 = v27 + 2;
    if (v27 + 2 < v26)
    {
      v4 += 8 * v27 + 16;
      v140 = v26;
      while (1)
      {
        v144 = v29;
        v31 = v6;
        v32 = *(v4 - 8);
        v33 = *(**v4 + 224);

        if (v33(v34))
        {

          v36 = *(*v32 + 224);
          if (!v36(v35))
          {

            v6 = v31;
            a3 = v138;
            v26 = v140;
            if ((v146 & 1) == 0)
            {
              v28 = v132;
              a4 = v133;
              v29 = v144;
              v27 = v136;
              goto LABEL_37;
            }

            goto LABEL_10;
          }

          v38 = v33(v37);
          if (v38)
          {
            v6 = v31;
            a3 = v138;
            if (*(v38 + 16))
            {
              v139 = (*(v145 + 80) + 32) & ~*(v145 + 80);
              v39 = v131;
              outlined init with copy of MOSuggestionSheetAssetDateRange(v38 + v139, v131);

              v40 = outlined init with take of MOSuggestionSheetAssetDateRange(v39, v135);
              v41 = v36(v40);
              v26 = v140;
              if (v41)
              {
                if (*(v41 + 16))
                {
                  v42 = v130;
                  outlined init with copy of MOSuggestionSheetAssetDateRange(v41 + v139, v130);

                  v43 = v42;
                  v44 = v129;
                  outlined init with take of MOSuggestionSheetAssetDateRange(v43, v129);
                  v45 = v135;
                  v46 = static Date.< infix(_:_:)();
                  outlined destroy of MOSuggestionSheetAssetDateRange(v44);
                  v47 = v45;
                  v26 = v140;
                  outlined destroy of MOSuggestionSheetAssetDateRange(v47);

                  if ((v146 ^ v46))
                  {
                    a4 = v133;
                    v29 = v144;
                    break;
                  }

                  goto LABEL_10;
                }
              }

              outlined destroy of MOSuggestionSheetAssetDateRange(v135);
            }

            else
            {

              v26 = v140;
            }
          }

          else
          {

            v6 = v31;
            a3 = v138;
            v26 = v140;
          }
        }

        else
        {

          v6 = v31;
          a3 = v138;
        }

        if (v146)
        {
          v28 = v132;
          a4 = v133;
          v29 = v144;
          v27 = v136;
          if (v144 < v136)
          {
            goto LABEL_149;
          }

LABEL_30:
          if (v27 < v29)
          {
            v48 = 8 * v29 - 8;
            v49 = 8 * v27;
            v50 = v29;
            v51 = v27;
            do
            {
              if (v51 != --v50)
              {
                v53 = *a3;
                if (!*a3)
                {
                  goto LABEL_155;
                }

                v52 = *(v53 + v49);
                *(v53 + v49) = *(v53 + v48);
                *(v53 + v48) = v52;
              }

              ++v51;
              v48 -= 8;
              v49 += 8;
            }

            while (v51 < v50);
          }

          goto LABEL_37;
        }

LABEL_10:
        v29 = (v144 + 1);
        v4 += 8;
        if (v26 == v144 + 1)
        {
          v29 = v26;
          a4 = v133;
          break;
        }
      }
    }

    v28 = v132;
    v27 = v136;
    if (v146)
    {
      if (v29 < v136)
      {
        goto LABEL_149;
      }

      goto LABEL_30;
    }

LABEL_37:
    v54 = a3[1];
    if (v29 < v54)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_148;
      }

      if (v29 - v27 < a4)
      {
        break;
      }
    }

LABEL_66:
    if (v29 < v27)
    {
      goto LABEL_147;
    }

    v77 = v28;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v28 = v77;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v77 + 2) + 1, 1, v77);
      v28 = result;
    }

    v4 = *(v28 + 2);
    v78 = *(v28 + 3);
    v79 = v4 + 1;
    if (v4 >= v78 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), v4 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 2) = v79;
    v80 = &v28[16 * v4];
    *(v80 + 4) = v136;
    *(v80 + 5) = v29;
    v27 = v29;
    v29 = *v134;
    if (!*v134)
    {
      goto LABEL_157;
    }

    if (v4)
    {
      while (1)
      {
        v81 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v82 = *(v28 + 4);
          v83 = *(v28 + 5);
          v92 = __OFSUB__(v83, v82);
          v84 = v83 - v82;
          v85 = v92;
LABEL_86:
          if (v85)
          {
            goto LABEL_136;
          }

          v98 = &v28[16 * v79];
          v100 = *v98;
          v99 = *(v98 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_139;
          }

          v104 = &v28[16 * v81 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v92 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v92)
          {
            goto LABEL_142;
          }

          if (__OFADD__(v102, v107))
          {
            goto LABEL_143;
          }

          if (v102 + v107 >= v84)
          {
            if (v84 < v107)
            {
              v81 = v79 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v108 = &v28[16 * v79];
        v110 = *v108;
        v109 = *(v108 + 1);
        v92 = __OFSUB__(v109, v110);
        v102 = v109 - v110;
        v103 = v92;
LABEL_100:
        if (v103)
        {
          goto LABEL_138;
        }

        v111 = &v28[16 * v81];
        v113 = *(v111 + 4);
        v112 = *(v111 + 5);
        v92 = __OFSUB__(v112, v113);
        v114 = v112 - v113;
        if (v92)
        {
          goto LABEL_141;
        }

        if (v114 < v102)
        {
          goto LABEL_3;
        }

LABEL_107:
        v4 = v81 - 1;
        if (v81 - 1 >= v79)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*a3)
        {
          goto LABEL_154;
        }

        v119 = v28;
        v120 = *&v28[16 * v4 + 32];
        v121 = *&v28[16 * v81 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v120), (*a3 + 8 * *&v28[16 * v81 + 32]), (*a3 + 8 * v121), v29);
        if (v6)
        {
        }

        if (v121 < v120)
        {
          goto LABEL_132;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = specialized _ArrayBuffer._consumeAndCreateNew()(v119);
        }

        if (v4 >= *(v119 + 2))
        {
          goto LABEL_133;
        }

        v122 = &v119[16 * v4];
        *(v122 + 4) = v120;
        *(v122 + 5) = v121;
        v150 = v119;
        result = specialized Array.remove(at:)(v81);
        v28 = v150;
        v79 = *(v150 + 2);
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v86 = &v28[16 * v79 + 32];
      v87 = *(v86 - 64);
      v88 = *(v86 - 56);
      v92 = __OFSUB__(v88, v87);
      v89 = v88 - v87;
      if (v92)
      {
        goto LABEL_134;
      }

      v91 = *(v86 - 48);
      v90 = *(v86 - 40);
      v92 = __OFSUB__(v90, v91);
      v84 = v90 - v91;
      v85 = v92;
      if (v92)
      {
        goto LABEL_135;
      }

      v93 = &v28[16 * v79];
      v95 = *v93;
      v94 = *(v93 + 1);
      v92 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v92)
      {
        goto LABEL_137;
      }

      v92 = __OFADD__(v84, v96);
      v97 = v84 + v96;
      if (v92)
      {
        goto LABEL_140;
      }

      if (v97 >= v89)
      {
        v115 = &v28[16 * v81 + 32];
        v117 = *v115;
        v116 = *(v115 + 1);
        v92 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v92)
        {
          goto LABEL_144;
        }

        if (v84 < v118)
        {
          v81 = v79 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v26 = a3[1];
    a4 = v133;
    if (v27 >= v26)
    {
      goto LABEL_118;
    }
  }

  v55 = (v27 + a4);
  if (__OFADD__(v27, a4))
  {
    goto LABEL_150;
  }

  if (v55 >= v54)
  {
    v55 = a3[1];
  }

  if (v55 < v27)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  if (v29 == v55)
  {
    goto LABEL_66;
  }

  v132 = v28;
  v128 = v6;
  v146 = *a3;
  v4 = v146 + 8 * v29 - 8;
  v56 = v27 - v29;
  v137 = v55;
LABEL_50:
  v144 = v29;
  v57 = *(v146 + 8 * v29);
  v139 = v56;
  v140 = v4;
  while (1)
  {
    v58 = *v4;
    v59 = *(*v57 + 224);

    if (!v59(v60))
    {
      goto LABEL_48;
    }

    v62 = *(*v58 + 224);
    if (!v62(v61))
    {

      if (!v146)
      {
        break;
      }

      goto LABEL_61;
    }

    v64 = v59(v63);
    if (!v64)
    {
      goto LABEL_48;
    }

    if (!*(v64 + 16))
    {

      goto LABEL_49;
    }

    v65 = (*(v145 + 80) + 32) & ~*(v145 + 80);
    v66 = v143;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v64 + v65, v143);

    v67 = outlined init with take of MOSuggestionSheetAssetDateRange(v66, v147);
    v68 = v62(v67);
    if (!v68)
    {
      goto LABEL_47;
    }

    if (!*(v68 + 16))
    {

LABEL_47:
      outlined destroy of MOSuggestionSheetAssetDateRange(v147);
LABEL_48:

LABEL_49:
      v29 = (v144 + 1);
      v4 = v140 + 8;
      v56 = v139 - 1;
      if (v144 + 1 == v137)
      {
        v29 = v137;
        v6 = v128;
        a3 = v138;
        v28 = v132;
        v27 = v136;
        goto LABEL_66;
      }

      goto LABEL_50;
    }

    v69 = v68 + v65;
    v70 = v142;
    outlined init with copy of MOSuggestionSheetAssetDateRange(v69, v142);

    v71 = v70;
    v72 = v141;
    outlined init with take of MOSuggestionSheetAssetDateRange(v71, v141);
    v73 = v147;
    v74 = static Date.< infix(_:_:)();
    outlined destroy of MOSuggestionSheetAssetDateRange(v72);
    outlined destroy of MOSuggestionSheetAssetDateRange(v73);

    if ((v74 & 1) == 0)
    {
      goto LABEL_49;
    }

    if (!v146)
    {
      break;
    }

LABEL_61:
    v75 = *v4;
    v57 = *(v4 + 8);
    *v4 = v57;
    *(v4 + 8) = v75;
    v4 -= 8;
    if (__CFADD__(v56++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, char *a3, char *a4)
{
  v8 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  v76 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v73 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v72 = &v71 - v12;
  v13 = __chkstk_darwin(v11);
  v75 = &v71 - v14;
  v15 = __chkstk_darwin(v13);
  v77 = &v71 - v16;
  v17 = __chkstk_darwin(v15);
  v18 = __chkstk_darwin(v17);
  v19 = __chkstk_darwin(v18);
  v74 = &v71 - v20;
  __chkstk_darwin(v19);
  v79 = &v71 - v23;
  v24 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v24 = a2 - a1;
  }

  v25 = v24 >> 3;
  v26 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v26 = a3 - a2;
  }

  v27 = v26 >> 3;
  if (v25 < v26 >> 3)
  {
    v75 = v22;
    v77 = v21;
    if (a4 != a1 || &a1[8 * v25] <= a4)
    {
      memmove(a4, a1, 8 * v25);
    }

    v28 = &a4[8 * v25];
    if (a2 - a1 < 8)
    {
      goto LABEL_34;
    }

    v29 = a2;
    if (a2 >= a3)
    {
      goto LABEL_34;
    }

    v82 = &a4[8 * v25];
    while (1)
    {
      v81 = a1;
      v30 = *a4;
      v31 = *(**v29 + 224);

      if (!v31(v32))
      {
        goto LABEL_29;
      }

      v80 = v29;

      v34 = *(*v30 + 224);
      if (v34(v33))
      {

        v36 = v31(v35);
        if (!v36)
        {

LABEL_26:
          v29 = v80;
          v28 = v82;
          goto LABEL_30;
        }

        if (!*(v36 + 16))
        {

          goto LABEL_26;
        }

        v37 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        v38 = v74;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v36 + v37, v74);

        v39 = outlined init with take of MOSuggestionSheetAssetDateRange(v38, v79);
        v40 = v34(v39);
        v29 = v80;
        v28 = v82;
        if (!v40)
        {
          goto LABEL_28;
        }

        if (!*(v40 + 16))
        {

LABEL_28:
          outlined destroy of MOSuggestionSheetAssetDateRange(v79);
LABEL_29:

LABEL_30:
          v47 = a4;
          v48 = v81;
          v49 = v81 == a4;
          a4 += 8;
          if (v49)
          {
            goto LABEL_32;
          }

LABEL_31:
          *v48 = *v47;
          goto LABEL_32;
        }

        v41 = v40 + v37;
        v42 = v77;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v41, v77);

        v43 = v42;
        v44 = v75;
        outlined init with take of MOSuggestionSheetAssetDateRange(v43, v75);
        v45 = v79;
        v46 = static Date.< infix(_:_:)();
        outlined destroy of MOSuggestionSheetAssetDateRange(v44);
        outlined destroy of MOSuggestionSheetAssetDateRange(v45);

        if ((v46 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {

        v29 = v80;
        v28 = v82;
      }

      v47 = v29;
      v48 = v81;
      v49 = v81 == v29;
      v29 += 8;
      if (!v49)
      {
        goto LABEL_31;
      }

LABEL_32:
      a1 = v48 + 8;
      if (a4 >= v28 || v29 >= a3)
      {
        goto LABEL_34;
      }
    }
  }

  v81 = a1;
  if (a4 != a2 || &a2[8 * v27] <= a4)
  {
    memmove(a4, a2, 8 * v27);
  }

  v28 = &a4[8 * v27];
  if (a3 - a2 < 8)
  {
    v50 = a2;
    goto LABEL_67;
  }

  v50 = a2;
  if (a2 > v81)
  {
    v78 = a4;
    while (1)
    {
      v80 = v50;
      a1 = v50 - 8;
      a3 -= 8;
      v51 = v28;
      while (1)
      {
        v82 = v28;
        v52 = *(v51 - 1);
        v51 -= 8;
        v53 = *a1;
        v54 = *(*v52 + 224);

        if (!v54(v55))
        {
          goto LABEL_56;
        }

        v79 = a3;
        v56 = a1;

        v58 = *(*v53 + 224);
        if (!v58(v57))
        {
          break;
        }

        v60 = v54(v59);
        if (!v60)
        {

LABEL_53:
          a1 = v56;
          a3 = v79;
          goto LABEL_57;
        }

        if (!*(v60 + 16))
        {

          goto LABEL_53;
        }

        v61 = v75;
        v62 = (*(v76 + 80) + 32) & ~*(v76 + 80);
        outlined init with copy of MOSuggestionSheetAssetDateRange(v60 + v62, v75);

        v63 = outlined init with take of MOSuggestionSheetAssetDateRange(v61, v77);
        v64 = v58(v63);
        a1 = v56;
        a3 = v79;
        if (!v64)
        {
          goto LABEL_55;
        }

        if (!*(v64 + 16))
        {

LABEL_55:
          outlined destroy of MOSuggestionSheetAssetDateRange(v77);
LABEL_56:

          goto LABEL_57;
        }

        v65 = v73;
        outlined init with copy of MOSuggestionSheetAssetDateRange(v64 + v62, v73);

        v66 = v65;
        v67 = v72;
        outlined init with take of MOSuggestionSheetAssetDateRange(v66, v72);
        v68 = v77;
        v69 = static Date.< infix(_:_:)();
        outlined destroy of MOSuggestionSheetAssetDateRange(v67);
        outlined destroy of MOSuggestionSheetAssetDateRange(v68);

        if (v69)
        {
          goto LABEL_60;
        }

LABEL_57:
        a4 = v78;
        if (a3 + 8 != v82)
        {
          *a3 = *v51;
        }

        a3 -= 8;
        v28 = v51;
        if (v51 <= a4)
        {
          v28 = v51;
          v50 = v80;
          goto LABEL_67;
        }
      }

      a1 = v56;
      a3 = v79;
LABEL_60:
      a4 = v78;
      v28 = v82;
      if (a3 + 8 != v80)
      {
        *a3 = *a1;
      }

      if (v28 > a4)
      {
        v50 = a1;
        if (a1 > v81)
        {
          continue;
        }
      }

LABEL_34:
      v50 = a1;
      break;
    }
  }

LABEL_67:
  if (v50 != a4 || v50 >= &a4[(v28 - a4 + (v28 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v50, a4, 8 * ((v28 - a4) / 8));
  }

  return 1;
}

{
  v52 = type metadata accessor for Date();
  v8 = *(v52 - 8);
  v9 = __chkstk_darwin(v52);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v50 = &v46 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v53 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v55 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v53)
    {
      v47 = a4;
      v48 = (v8 + 8);
LABEL_27:
      v46 = a1;
      v29 = a1 - 8;
      v30 = a3 - 8;
      v31 = v55;
      v49 = a1 - 8;
      do
      {
        v54 = v30;
        v32 = v30 + 8;
        v33 = *(v31 - 1);
        v31 -= 8;
        v34 = *v29;
        v35 = *(v33 + 16);

        v36 = [v35 displayStartDate];
        v37 = v50;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v38 = [*(v34 + 16) displayStartDate];
        v39 = v51;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v38) = static Date.< infix(_:_:)();
        v40 = *v48;
        v41 = v39;
        v42 = v52;
        (*v48)(v41, v52);
        v40(v37, v42);

        if (v38)
        {
          a4 = v47;
          a3 = v54;
          v44 = v49;
          if (v32 != v46)
          {
            *v54 = *v49;
          }

          if (v55 <= a4 || (a1 = v44, v44 <= v53))
          {
            a1 = v44;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v47;
        v43 = v54;
        if (v32 != v55)
        {
          *v54 = *v31;
        }

        v30 = v43 - 8;
        v55 = v31;
        v29 = v49;
      }

      while (v31 > a4);
      v55 = v31;
      a1 = v46;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v55 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v53 = a1;
        v17 = *a4;
        v18 = *(*a2 + 16);

        v19 = [v18 displayStartDate];
        v20 = v50;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v21 = [*(v17 + 16) displayStartDate];
        v22 = v51;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v21) = static Date.< infix(_:_:)();
        v23 = *v16;
        v24 = v22;
        v25 = v52;
        (*v16)(v24, v52);
        v23(v20, v25);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v53;
        v28 = v53 == a2;
        a2 += 8;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 8;
        if (a4 >= v55 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v53;
      v28 = v53 == a4;
      a4 += 8;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v55 - a4 + (v55 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v55 - a4) / 8));
  }

  return 1;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of MOSuggestionSheetAssetDateRange(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of MOSuggestionSheetAssetDateRange(uint64_t a1)
{
  v2 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*specialized protocol witness for Collection.subscript.read in conformance [A](void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

{
  return specialized Array._copyToContiguousArray()(a1, _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo16CMMotionActivityC_Tt1g5, specialized Array._copyContents(initializing:));
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t _s10Foundation4UUIDVACSHAAWlTm_0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with take of MOSuggestionSheetAssetDateRange(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MOSuggestionSheetAssetDateRange(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        specialized _NativeDictionary.copy()();
        v14 = v16;
      }

      result = specialized _NativeDictionary._delete(at:)(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgSgMd);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v10);
  v12 = &v16 - v11;
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a1, &_s10Foundation4DateVSgSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v9);

    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s10Foundation4DateVSgSgMd);
  }

  else
  {
    outlined init with take of Date?(a1, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v17;
  }

  return result;
}

unint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        specialized _NativeDictionary.copy()();
        v13 = v15;
      }

      result = specialized _NativeDictionary._delete(at:)(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a1, &_sypSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(v6);

    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v6, &_sypSgMd);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of URLBasedAsset, specialized _NativeDictionary._insert(at:key:value:));
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a1, &_s16MomentsUIService19TaskProcessorWorker_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s16MomentsUIService19TaskProcessorWorker_pSgMd);
  }

  return result;
}

{
  if (*(a1 + 24))
  {
    outlined init with take of MOMusicPlaybackCoordinatorDelegate(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a2, isUniquelyReferenced_nonNull_native, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:), outlined init with take of URLBasedAsset, specialized _NativeDictionary._insert(at:key:value:));
    v5 = type metadata accessor for UUID();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(a1, &_s9MomentsUI13URLBasedAsset_pSgMd);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v9);
    v7 = type metadata accessor for UUID();
    (*(*(v7 - 8) + 8))(a2, v7);
    return outlined destroy of (key: AnyHashable, value: Swift.AnyObject)(v9, &_s9MomentsUI13URLBasedAsset_pSgMd);
  }

  return result;
}

MomentsUIService::NotificationRealTimeCheckManager::MotionActivityEnum_optional __swiftcall NotificationRealTimeCheckManager.MotionActivityEnum.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t *protocol witness for RawRepresentable.init(rawValue:) in conformance NotificationRealTimeCheckManager.MotionActivityEnum@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

id one-time initialization function for shared()
{
  result = [objc_allocWithZone(type metadata accessor for NotificationRealTimeCheckManager()) init];
  static NotificationRealTimeCheckManager.shared = result;
  return result;
}

{
  type metadata accessor for MOAssetPhotoMomentProvider();
  v0 = swift_allocObject();
  result = [objc_opt_self() defaultManager];
  *(v0 + 16) = result;
  static MOAssetPhotoMomentProvider.shared = v0;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for SuggestionNotificationManager()) init];
  static SuggestionNotificationManager.shared = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for MOProcessingServer()) init];
  static MOProcessingServer.shared = result;
  return result;
}

{
  type metadata accessor for MOSuggestionAssetAppIconProvider();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  result = [objc_allocWithZone(ISImageDescriptor) initWithSize:350.0 scale:{350.0, v3}];
  *(v0 + 16) = result;
  static MOSuggestionAssetAppIconProvider.shared = v0;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for MOPresenterServer()) init];
  static MOPresenterServer.shared = result;
  return result;
}

{
  type metadata accessor for MOSuggestionAssetCacheManager();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(NSCache) init];
  v0[2] = v1;
  v0[3] = &_swiftEmptySetSingleton;
  v0[4] = &_swiftEmptyDictionarySingleton;
  v0[5] = 0;
  type metadata accessor for MOSuggestionAssetPhotoLivePhotoVideosProvider();
  swift_allocObject();
  v0[6] = MOSuggestionAssetPhotoLivePhotoVideosProvider.init()();
  [v1 setCountLimit:30];
  result = [v1 setTotalCostLimit:80];
  static MOSuggestionAssetCacheManager.shared = v0;
  return result;
}

uint64_t *NotificationRealTimeCheckManager.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static NotificationRealTimeCheckManager.shared;
}

id static NotificationRealTimeCheckManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static NotificationRealTimeCheckManager.shared;

  return v1;
}

uint64_t NotificationRealTimeCheckManager.fetchLastVisit()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7RTVisitCSgMd);
  *v1 = v0;
  v1[1] = NotificationRealTimeCheckManager.fetchLastVisit();

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000010, 0x80000001002AF940, closure #1 in NotificationRealTimeCheckManager.fetchLastVisit(), 0, v2);
}

{

  return _swift_task_switch(NotificationRealTimeCheckManager.fetchLastVisit(), 0, 0);
}

{
  return (*(v0 + 8))(*(v0 + 16));
}

void closure #1 in NotificationRealTimeCheckManager.fetchLastVisit()(uint64_t a1)
{
  v21 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7RTVisitCSgs5NeverOGMd);
  v1 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v20 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002A4A70;
  *(inited + 32) = [objc_allocWithZone(NSNumber) initWithInteger:1];
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo8NSNumberC_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  v7 = type metadata accessor for DateInterval();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v5, 1, 1, v7);
  type metadata accessor for UIApplication(0, &lazy cache variable for type metadata for NSNumber);
  v9.super.super.isa = NSNumber.init(integerLiteral:)(1).super.super.isa;
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = DateInterval._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v11 = objc_allocWithZone(RTStoredVisitFetchOptions);
  lazy protocol witness table accessor for type NSNumber and conformance NSObject();
  v12 = Set._bridgeToObjectiveC()().super.isa;

  v13 = [v11 initWithAscending:0 confidence:0 dateInterval:isa labelVisit:1 limit:v9.super.super.isa sources:v12];

  v14 = [objc_allocWithZone(RTRoutineManager) init];
  v15 = v20;
  v16 = v22;
  (*(v1 + 16))(v20, v21, v22);
  v17 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v18 = swift_allocObject();
  (*(v1 + 32))(v18 + v17, v15, v16);
  aBlock[4] = partial apply for closure #1 in closure #1 in NotificationRealTimeCheckManager.fetchLastVisit();
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [RTVisit]?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_83;
  v19 = _Block_copy(aBlock);

  [v14 fetchStoredVisitsWithOptions:v13 handler:v19];
  _Block_release(v19);
}

uint64_t closure #1 in closure #1 in NotificationRealTimeCheckManager.fetchLastVisit()(unint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - v10;
  __chkstk_darwin(v9);
  v13 = &v31 - v12;
  if (a2)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.notification.getter();
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v16 = 136446466;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002AF940, &v32);
      *(v16 + 12) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v32);

      *(v16 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v14, v15, "Notification real time check.%{public}s, error fetching stored visits: %s", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v13, v4);
LABEL_5:
    v32 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    type metadata accessor for CommonLogger();
    static CommonLogger.notification.getter();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136446210;
      *(v27 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002AF940, &v32);
      _os_log_impl(&_mh_execute_header, v25, v26, "Notification real time check.%{public}s, got 0 visit", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
    }

    (*(v5 + 8))(v8, v4);
    goto LABEL_5;
  }

  type metadata accessor for CommonLogger();
  static CommonLogger.notification.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = a1 >> 62;
  if (!os_log_type_enabled(v21, v22))
  {

    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  a2 = swift_slowAlloc();
  v32 = a2;
  *v13 = 136446466;
  *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, 0x80000001002AF940, &v32);
  *(v13 + 6) = 2048;
  if (v23)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v13 + 14) = i;

    _os_log_impl(&_mh_execute_header, v21, v22, "Notification real time check.%{public}s, got %ld visit", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(a2);

LABEL_16:
    v29 = *(v5 + 8);
    v5 += 8;
    v29(v11, v4);
    v21 = (a1 & 0xFFFFFFFFFFFFFF8);
    if (v23)
    {
      v30 = _CocoaArrayWrapper.endIndex.getter();
      if (!v30)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_24;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v32 = *(a1 + 32);
      goto LABEL_6;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_24:
  v32 = v30;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7RTVisitCSgs5NeverOGMd);
  return CheckedContinuation.resume(returning:)();
}