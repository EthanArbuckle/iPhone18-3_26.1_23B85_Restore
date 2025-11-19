uint64_t specialized _NativeSet.resize(capacity:)()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore10ActionTypeOGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      ActionType.rawValue.getter(v16);
      String.hash(into:)();

      result = Hasher._finalize()();
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
      *(*(v4 + 48) + v12) = v16;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMd);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v10)
      {
        break;
      }

      v18 = v6[v5];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v35 = type metadata accessor for AudioVariant();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit12AudioVariantOGMd);
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
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo18NSNotificationNameaGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v26 = v0;
    v27 = v2;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v17 = Hasher._finalize()();

      v18 = -1 << *(v4 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
      v2 = v27;
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

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero(v6, ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v26;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore18BackgroundMaterialOGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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
      *(*(v4 + 48) + v12) = v16;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
  result = static _SetStorage.resize(original:capacity:move:)();
  v4 = result;
  if (*(v2 + 16))
  {
    v25 = v2;
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      type metadata accessor for AnyCancellable();
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      v2 = v25;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero(v6, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore7LibraryO4MenuV10IdentifierOGMd);
  v3 = static _SetStorage.resize(original:capacity:move:)();
  v4 = v3;
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
    v11 = v3 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_16:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v12 = Hasher._finalize()();
      v13 = -1 << *(v4 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        do
        {
          if (++v15 == v22 && (v21 & 1) != 0)
          {
            goto LABEL_31;
          }

          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
        }

        while (v24 == -1);
        v16 = __clz(__rbit64(~v24)) + (v15 << 6);
      }

      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        JUMPOUT(0x10019DA90);
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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
      *(*(v4 + 48) + v12) = v16;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit0C6ItemIDVGMd);
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

{
  v1 = v0;
  v35 = type metadata accessor for Playlist.Collaborator();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit8PlaylistV0cD8InternalE12CollaboratorVGMd);
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
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
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

{
  v1 = v0;
  v35 = type metadata accessor for IndexPath();
  v2 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation9IndexPathVGMd);
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
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd_0);
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

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX0C14OptionsManagerC6OptionOGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(qword_100519430[v16]);
      result = Hasher._finalize()();
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
      *(*(v4 + 48) + v12) = v16;
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd);
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7Combine14AnyCancellableC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7Combine14AnyCancellableCGMd);
    v2 = static _SetStorage.convert(_:capacity:)();
    v14 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for AnyCancellable();
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          specialized _NativeSet.resize(capacity:)();
        }

        v2 = v14;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyCancellable();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9MusicCore10ActionTypeOGMd);
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  ActionType.rawValue.getter(v6);
  String.hash(into:)();

  result = Hasher._finalize()();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = ActionType.rawValue.getter(*(*(v9 + 48) + a2));
      v14 = v13;
      if (v12 == ActionType.rawValue.getter(v6) && v14 == v15)
      {
        goto LABEL_19;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v18 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v6;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v36 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_84;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9MusicCore23ApplicationCapabilitiesV7ServiceOGMd);
      goto LABEL_84;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  ApplicationCapabilities.Service.rawValue.getter(v36);
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v35 = ~v8;
    v9 = 0xEB00000000736F65;
    v10 = 0x80000001004C4B80;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 <= 4)
      {
        if (v11 == 3)
        {
          v14 = 0x6C6169636F73;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v11 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }

        if (v11 == 2)
        {
          v14 = 0xD000000000000013;
          v15 = v10;
        }

        v16 = *(*(v7 + 48) + a2) ? 0x646956636973756DLL : 0x636973756DLL;
        v17 = *(*(v7 + 48) + a2) ? v9 : 0xE500000000000000;
        v12 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
        v13 = *(*(v7 + 48) + a2) <= 1u ? v17 : v15;
      }

      else if (*(*(v7 + 48) + a2) > 7u)
      {
        if (v11 == 8)
        {
          v12 = 0xD000000000000013;
          v13 = 0x80000001004C4BC0;
        }

        else if (v11 == 9)
        {
          v12 = 0xD000000000000011;
          v13 = 0x80000001004C4BE0;
        }

        else
        {
          v12 = 0x6C62616E45696C6DLL;
          v13 = 0xEA00000000006465;
        }
      }

      else if (v11 == 5)
      {
        v13 = 0xE600000000000000;
        v12 = 0x73656E757469;
      }

      else if (v11 == 6)
      {
        v12 = 0x74634170756F7267;
        v13 = 0xED00007974697669;
      }

      else
      {
        v12 = 0x746963696C707865;
        v13 = 0xEF746E65746E6F43;
      }

      v18 = 0xD000000000000011;
      if (v36 != 9)
      {
        v18 = 0x6C62616E45696C6DLL;
      }

      v19 = 0xEA00000000006465;
      if (v36 == 9)
      {
        v19 = 0x80000001004C4BE0;
      }

      if (v36 == 8)
      {
        v18 = 0xD000000000000013;
        v19 = 0x80000001004C4BC0;
      }

      v20 = 0x746963696C707865;
      if (v36 == 6)
      {
        v20 = 0x74634170756F7267;
      }

      v21 = 0xEF746E65746E6F43;
      if (v36 == 6)
      {
        v21 = 0xED00007974697669;
      }

      if (v36 == 5)
      {
        v20 = 0x73656E757469;
        v21 = 0xE600000000000000;
      }

      if (v36 <= 7u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v36 == 3)
      {
        v22 = 0x6C6169636F73;
      }

      else
      {
        v22 = 0x6F69646172;
      }

      if (v36 == 3)
      {
        v23 = 0xE600000000000000;
      }

      else
      {
        v23 = 0xE500000000000000;
      }

      if (v36 == 2)
      {
        v22 = 0xD000000000000013;
      }

      v24 = v10;
      if (v36 == 2)
      {
        v23 = v10;
      }

      if (v36)
      {
        v25 = 0x646956636973756DLL;
      }

      else
      {
        v25 = 0x636973756DLL;
      }

      v26 = v9;
      if (!v36)
      {
        v9 = 0xE500000000000000;
      }

      if (v36 <= 1u)
      {
        v22 = v25;
        v23 = v9;
      }

      v27 = v36 <= 4u ? v22 : v18;
      v28 = v36 <= 4u ? v23 : v19;
      if (v12 == v27 && v13 == v28)
      {
        goto LABEL_87;
      }

      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v29)
      {
        goto LABEL_88;
      }

      a2 = (a2 + 1) & v35;
      v9 = v26;
      v10 = v24;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_84:
  v30 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v30 + 48) + a2) = v36;
  v31 = *(v30 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (!v32)
  {
    *(v30 + 16) = v33;
    return result;
  }

  __break(1u);
LABEL_87:

LABEL_88:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4 & 1);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v11 + 48) + a2) = v4 & 1;
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

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)();
    }

    else
    {
      if (v7 > v6)
      {
        result = specialized _NativeSet.copy()(&_ss11_SetStorageCy9MusicCore7LibraryO4MenuV10IdentifierOGMd);
        goto LABEL_40;
      }

      specialized _NativeSet.copyAndResize(capacity:)();
    }

    v8 = *v3;
    Hasher.init(_seed:)();
    Library.Menu.Identifier.rawValue.getter(v5);
    String.hash(into:)();

    result = Hasher._finalize()();
    v9 = -1 << *(v8 + 32);
    a2 = result & ~v9;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v10 = ~v9;
      while (1)
      {
        v11 = 0xD000000000000029;
        v12 = "orites";
        switch(*(*(v8 + 48) + a2))
        {
          case 1:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v11 = 0xD000000000000023;
            v12 = "LibraryView.Playlists";
            break;
          case 3:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.Artists";
            break;
          case 4:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Albums";
            break;
          case 5:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Songs";
            break;
          case 6:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.MadeForYou";
            break;
          case 7:
            v11 = 0xD000000000000022;
            v12 = "LibraryView.MusicVideos";
            break;
          case 8:
            v11 = 0xD000000000000028;
            v12 = "LibraryView.Genres";
            break;
          case 9:
            v11 = 0xD000000000000025;
            v12 = "LibraryView.Compilations";
            break;
          case 0xA:
            v11 = 0xD000000000000021;
            v12 = "LibraryView.Composers";
            break;
          case 0xB:
            v11 = 0xD000000000000026;
            v12 = "LibraryView.Shows";
            break;
          case 0xC:
            v11 = 0xD000000000000027;
            v12 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v13 = v12 | 0x8000000000000000;
        v14 = 0xD000000000000029;
        v15 = "orites";
        switch(v5)
        {
          case 1:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v14 = 0xD000000000000023;
            v15 = "LibraryView.Playlists";
            break;
          case 3:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.Artists";
            break;
          case 4:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Albums";
            break;
          case 5:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Songs";
            break;
          case 6:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.MadeForYou";
            break;
          case 7:
            v14 = 0xD000000000000022;
            v15 = "LibraryView.MusicVideos";
            break;
          case 8:
            v14 = 0xD000000000000028;
            v15 = "LibraryView.Genres";
            break;
          case 9:
            v14 = 0xD000000000000025;
            v15 = "LibraryView.Compilations";
            break;
          case 10:
            v14 = 0xD000000000000021;
            v15 = "LibraryView.Composers";
            break;
          case 11:
            v14 = 0xD000000000000026;
            v15 = "LibraryView.Shows";
            break;
          case 12:
            v14 = 0xD000000000000027;
            v15 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v11 == v14 && v13 == (v15 | 0x8000000000000000))
        {
          break;
        }

        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v16)
        {
          goto LABEL_44;
        }

        a2 = (a2 + 1) & v10;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

LABEL_43:

LABEL_44:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      JUMPOUT(0x10019F6CCLL);
    }
  }

LABEL_40:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_43;
  }

  *(v17 + 16) = v20;
  return result;
}

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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCySo17MPCPlaybackEngineC9MusicCoreE6OptionOGMd);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
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
  *(*(v11 + 48) + a2) = v4;
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  v9 = qword_100519430[v4];
  Hasher._combine(_:)(v9);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (qword_100519430[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = result & ~v9;
    result = type metadata accessor for SyncedLyricsLineView.Word();
    a2 = v11;
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
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for AudioVariant();
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v12 = *v3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
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
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
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

{
  v32 = a1;
  v6 = type metadata accessor for Playlist.Collaborator();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type Collaboration.Management.Model and conformance Collaboration.Management.Model(&lazy protocol witness table cache variable for type Playlist.Collaborator and conformance Playlist.Collaborator, &type metadata accessor for Playlist.Collaborator);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v13 = *v3;
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
  v14 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v8 > v7)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v9 = *v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v10 = Hasher._finalize()();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for NSNotificationName(0);
    do
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
  }

  v8 = *v3;
  type metadata accessor for AnyCancellable();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AnyCancellable and conformance AnyCancellable, &type metadata accessor for AnyCancellable);
    do
    {
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v5;
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
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
    specialized _NativeSet.resize(capacity:)();
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)();
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

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9MusicCore7LibraryO4MenuV10IdentifierOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_9i5Core7k2O4l3V10M5O_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n03_s9itkul81V8RevisionV7migrate33_CDE7296BF475887520DF32E716B298B1LL2toyAG7VersionV_tKFSbAE10M7OXEfU2_AL8RevisionV7VersionVTf1nnc_n(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = specialized closure #1 in _NativeSet.filter(_:)(v8, a2, a3, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for AudioVariant();
  v8 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return &_swiftEmptySetSingleton;
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8MusicKit12AudioVariantOGMd);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type AudioVariant and conformance AudioVariant, &type metadata accessor for AudioVariant);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo14MSVLyricsAgentCGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy7LyricsX06SyncedC8LineViewC4WordCGMd);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v16);
    result = Hasher._finalize()();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

_BYTE *specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  v5 = a3;
  if (*(a4 + 16) != a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy9MusicCore7LibraryO4MenuV10IdentifierOGMd);
    v8 = static _SetStorage.allocate(capacity:)();
    v9 = v8;
    if (a2 < 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = *a1;
    }

    v12 = 0;
    v13 = v8 + 56;
    while (1)
    {
      if (v10)
      {
        v14 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
        goto LABEL_17;
      }

      v15 = v12;
      do
      {
        v12 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          JUMPOUT(0x1001A02A0);
        }

        if (v12 >= a2)
        {
          goto LABEL_6;
        }

        v16 = a1[v12];
        ++v15;
      }

      while (!v16);
      v14 = __clz(__rbit64(v16));
      v10 = (v16 - 1) & v16;
LABEL_17:
      v17 = *(*(v4 + 48) + (v14 | (v12 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      v18 = Hasher._finalize()();
      v19 = -1 << v9[32];
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_31;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v9 + 6) + v22) = v17;
      ++*(v9 + 2);
      if (__OFSUB__(v5--, 1))
      {
        goto LABEL_32;
      }

      if (!v5)
      {
LABEL_6:

        return v9;
      }
    }
  }

  return v4;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        result = specialized Set._Variant.remove(_:)(*(*(v2 + 48) + (v10 | (v9 << 6))));
        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

_BYTE *specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (*(a2 + 16))
  {
    v6 = a1;
    v58 = 0;
    v7 = *(a1 + 56);
    v78 = a1 + 56;
    v8 = -1 << *(a1 + 32);
    v77 = ~v8;
    if (-v8 < 64)
    {
      v9 = ~(-1 << -v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & v7;
    v63 = (63 - v8) >> 6;
    v81 = (a2 + 56);

    v79 = 0;
    v76 = "LibraryView.RecentlyAdded";
    v75 = "LibraryView.Playlists";
    v74 = "LibraryView.Artists";
    v73 = "LibraryView.Albums";
    v72 = "LibraryView.Songs";
    v71 = "LibraryView.MadeForYou";
    v70 = "LibraryView.MusicVideos";
    v69 = "LibraryView.Genres";
    v68 = "LibraryView.Compilations";
    v67 = "LibraryView.Composers";
    v66 = "LibraryView.Shows";
    v65 = "LibraryView.Downloaded";
    do
    {
LABEL_6:
      if (!v10)
      {
        v12 = v78;
        v13 = v79;
        while (1)
        {
          v14 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v14 >= v63)
          {
            goto LABEL_105;
          }

          v10 = *(v78 + 8 * v14);
          ++v13;
          if (v10)
          {
            v79 = v14;
            goto LABEL_13;
          }
        }

LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v12 = v78;
LABEL_13:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = *(*(v6 + 48) + (v15 | (v79 << 6)));
      v83 = v6;
      v84 = v12;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      Hasher.init(_seed:)();
      v80 = v16;
      Library.Menu.Identifier.rawValue.getter(v16);
      String.hash(into:)();

      v17 = Hasher._finalize()();
      v18 = -1 << v5[32];
      v2 = v17 & ~v18;
      v3 = v2 >> 6;
      v4 = 1 << v2;
    }

    while (((1 << v2) & v81[v2 >> 6]) == 0);
    v64 = v6;
    v19 = ~v18;
    while (1)
    {
      v20 = 0xD000000000000029;
      v21 = "orites";
      switch(*(*(v5 + 6) + v2))
      {
        case 1:
          v20 = 0xD000000000000025;
          v22 = &v99;
          goto LABEL_28;
        case 2:
          v20 = 0xD000000000000023;
          v22 = &v98;
          goto LABEL_28;
        case 3:
          v20 = 0xD000000000000022;
          v22 = &v97;
          goto LABEL_28;
        case 4:
          v20 = 0xD000000000000021;
          v22 = &v96;
          goto LABEL_28;
        case 5:
          v20 = 0xD000000000000026;
          v22 = &v95;
          goto LABEL_28;
        case 6:
          v20 = 0xD000000000000027;
          v22 = &v94;
          goto LABEL_28;
        case 7:
          v20 = 0xD000000000000022;
          v22 = &v93;
          goto LABEL_28;
        case 8:
          v20 = 0xD000000000000028;
          v22 = &v92;
          goto LABEL_28;
        case 9:
          v20 = 0xD000000000000025;
          v22 = &v91;
          goto LABEL_28;
        case 0xA:
          v20 = 0xD000000000000021;
          v22 = &v90;
          goto LABEL_28;
        case 0xB:
          v20 = 0xD000000000000026;
          v22 = &v89;
          goto LABEL_28;
        case 0xC:
          v20 = 0xD000000000000027;
          v22 = &v88;
LABEL_28:
          v21 = *(v22 - 32);
          break;
        default:
          break;
      }

      v23 = v21 | 0x8000000000000000;
      v24 = 0xD000000000000029;
      v25 = "orites";
      switch(v80)
      {
        case 1:
          v24 = 0xD000000000000025;
          v26 = &v99;
          goto LABEL_42;
        case 2:
          v24 = 0xD000000000000023;
          v26 = &v98;
          goto LABEL_42;
        case 3:
          v24 = 0xD000000000000022;
          v26 = &v97;
          goto LABEL_42;
        case 4:
          v24 = 0xD000000000000021;
          v26 = &v96;
          goto LABEL_42;
        case 5:
          v24 = 0xD000000000000026;
          v26 = &v95;
          goto LABEL_42;
        case 6:
          v24 = 0xD000000000000027;
          v26 = &v94;
          goto LABEL_42;
        case 7:
          v24 = 0xD000000000000022;
          v26 = &v93;
          goto LABEL_42;
        case 8:
          v24 = 0xD000000000000028;
          v26 = &v92;
          goto LABEL_42;
        case 9:
          v24 = 0xD000000000000025;
          v26 = &v91;
          goto LABEL_42;
        case 10:
          v24 = 0xD000000000000021;
          v26 = &v90;
          goto LABEL_42;
        case 11:
          v24 = 0xD000000000000026;
          v26 = &v89;
          goto LABEL_42;
        case 12:
          v24 = 0xD000000000000027;
          v26 = &v88;
LABEL_42:
          v25 = *(v26 - 32);
          break;
        default:
          break;
      }

      if (v20 == v24 && v23 == (v25 | 0x8000000000000000))
      {
        break;
      }

      v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v27)
      {
        goto LABEL_51;
      }

      v2 = (v2 + 1) & v19;
      v3 = v2 >> 6;
      v4 = 1 << v2;
      if ((v81[v2 >> 6] & (1 << v2)) == 0)
      {
        v6 = v64;
        goto LABEL_6;
      }
    }

LABEL_51:
    v29 = v5[32];
    v59 = ((1 << v29) + 63) >> 6;
    v11 = 8 * v59;
    if ((v29 & 0x3Fu) <= 0xD)
    {
      goto LABEL_52;
    }

LABEL_109:
    v53 = v11;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v54 = swift_slowAlloc();
      memcpy(v54, v81, v53);
      v55 = v58;
      v56 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v54, v59, v5, v2, &v83);

      if (v55)
      {

        __break(1u);
        JUMPOUT(0x1001A0DD0);
      }

      v5 = v56;
      goto LABEL_105;
    }

LABEL_52:
    v60 = &v57;
    __chkstk_darwin(v28);
    v31 = &v57 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v31, v81, v30);
    v32 = *&v31[8 * v3] & ~v4;
    v33 = *(v5 + 2);
    v62 = v31;
    *&v31[8 * v3] = v32;
    v34 = v33 - 1;
LABEL_53:
    v61 = v34;
LABEL_54:
    while (v10)
    {
      v35 = v78;
LABEL_61:
      v38 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v3 = *(*(v64 + 48) + (v38 | (v79 << 6)));
      v83 = v64;
      v84 = v35;
      v85 = v77;
      v86 = v79;
      v87 = v10;
      Hasher.init(_seed:)();
      Library.Menu.Identifier.rawValue.getter(v3);
      String.hash(into:)();

      v2 = &v82;
      v39 = Hasher._finalize()();
      v40 = -1 << v5[32];
      v41 = v39 & ~v40;
      v4 = v41 >> 6;
      v42 = 1 << v41;
      if (((1 << v41) & v81[v41 >> 6]) != 0)
      {
        v80 = ~v40;
        while (1)
        {
          v43 = 0xD000000000000029;
          v44 = "orites";
          switch(*(*(v5 + 6) + v41))
          {
            case 1:
              v43 = 0xD000000000000025;
              v45 = &v99;
              goto LABEL_76;
            case 2:
              v43 = 0xD000000000000023;
              v45 = &v98;
              goto LABEL_76;
            case 3:
              v43 = 0xD000000000000022;
              v45 = &v97;
              goto LABEL_76;
            case 4:
              v43 = 0xD000000000000021;
              v45 = &v96;
              goto LABEL_76;
            case 5:
              v43 = 0xD000000000000026;
              v45 = &v95;
              goto LABEL_76;
            case 6:
              v43 = 0xD000000000000027;
              v45 = &v94;
              goto LABEL_76;
            case 7:
              v43 = 0xD000000000000022;
              v45 = &v93;
              goto LABEL_76;
            case 8:
              v43 = 0xD000000000000028;
              v45 = &v92;
              goto LABEL_76;
            case 9:
              v43 = 0xD000000000000025;
              v45 = &v91;
              goto LABEL_76;
            case 0xA:
              v43 = 0xD000000000000021;
              v45 = &v90;
              goto LABEL_76;
            case 0xB:
              v43 = 0xD000000000000026;
              v45 = &v89;
              goto LABEL_76;
            case 0xC:
              v43 = 0xD000000000000027;
              v45 = &v88;
LABEL_76:
              v44 = *(v45 - 32);
              break;
            default:
              break;
          }

          v2 = v44 | 0x8000000000000000;
          v46 = 0xD000000000000029;
          v47 = "orites";
          switch(v3)
          {
            case 1uLL:
              v46 = 0xD000000000000025;
              v48 = &v99;
              goto LABEL_90;
            case 2uLL:
              v46 = 0xD000000000000023;
              v48 = &v98;
              goto LABEL_90;
            case 3uLL:
              v46 = 0xD000000000000022;
              v48 = &v97;
              goto LABEL_90;
            case 4uLL:
              v46 = 0xD000000000000021;
              v48 = &v96;
              goto LABEL_90;
            case 5uLL:
              v46 = 0xD000000000000026;
              v48 = &v95;
              goto LABEL_90;
            case 6uLL:
              v46 = 0xD000000000000027;
              v48 = &v94;
              goto LABEL_90;
            case 7uLL:
              v46 = 0xD000000000000022;
              v48 = &v93;
              goto LABEL_90;
            case 8uLL:
              v46 = 0xD000000000000028;
              v48 = &v92;
              goto LABEL_90;
            case 9uLL:
              v46 = 0xD000000000000025;
              v48 = &v91;
              goto LABEL_90;
            case 0xAuLL:
              v46 = 0xD000000000000021;
              v48 = &v90;
              goto LABEL_90;
            case 0xBuLL:
              v46 = 0xD000000000000026;
              v48 = &v89;
              goto LABEL_90;
            case 0xCuLL:
              v46 = 0xD000000000000027;
              v48 = &v88;
LABEL_90:
              v47 = *(v48 - 32);
              break;
            default:
              break;
          }

          if (v43 == v46 && v2 == (v47 | 0x8000000000000000))
          {
            break;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            goto LABEL_97;
          }

          v41 = (v41 + 1) & v80;
          v4 = v41 >> 6;
          v42 = 1 << v41;
          if ((v81[v41 >> 6] & (1 << v41)) == 0)
          {
            goto LABEL_54;
          }
        }

LABEL_97:
        v50 = v62[v4];
        v62[v4] = v50 & ~v42;
        if ((v50 & v42) != 0)
        {
          v34 = v61 - 1;
          if (__OFSUB__(v61, 1))
          {
            __break(1u);
          }

          if (v61 == 1)
          {

            v5 = &_swiftEmptySetSingleton;
            goto LABEL_105;
          }

          goto LABEL_53;
        }
      }
    }

    v35 = v78;
    v36 = v79;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
        goto LABEL_108;
      }

      if (v37 >= v63)
      {
        break;
      }

      v10 = *(v78 + 8 * v37);
      ++v36;
      if (v10)
      {
        v79 = v37;
        goto LABEL_61;
      }
    }

    if (v63 <= v79 + 1)
    {
      v51 = v79 + 1;
    }

    else
    {
      v51 = v63;
    }

    v83 = v64;
    v84 = v78;
    v85 = v77;
    v86 = v51 - 1;
    v87 = 0;
    v5 = specialized _NativeSet.extractSubset(using:count:)(v62, v59, v61, v5);
LABEL_105:
    outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

_BYTE *specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v6 = v5 - 1;
  v32 = a3 + 56;
LABEL_2:
  v28 = v6;
LABEL_3:
  while (1)
  {
    v7 = a5[3];
    v8 = a5[4];
    if (!v8)
    {
      break;
    }

    v9 = a5[3];
LABEL_9:
    v12 = *(*(*a5 + 48) + (__clz(__rbit64(v8)) | (v9 << 6)));
    a5[3] = v9;
    a5[4] = (v8 - 1) & v8;
    Hasher.init(_seed:)();
    Library.Menu.Identifier.rawValue.getter(v12);
    String.hash(into:)();

    v13 = Hasher._finalize()();
    v14 = -1 << *(a3 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    v17 = 1 << v15;
    if (((1 << v15) & *(v32 + 8 * (v15 >> 6))) != 0)
    {
      v31 = ~v14;
      while (1)
      {
        v18 = 0xD000000000000029;
        v19 = "orites";
        switch(*(*(a3 + 48) + v15))
        {
          case 1:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v18 = 0xD000000000000023;
            v19 = "LibraryView.Playlists";
            break;
          case 3:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.Artists";
            break;
          case 4:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Albums";
            break;
          case 5:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Songs";
            break;
          case 6:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.MadeForYou";
            break;
          case 7:
            v18 = 0xD000000000000022;
            v19 = "LibraryView.MusicVideos";
            break;
          case 8:
            v18 = 0xD000000000000028;
            v19 = "LibraryView.Genres";
            break;
          case 9:
            v18 = 0xD000000000000025;
            v19 = "LibraryView.Compilations";
            break;
          case 0xA:
            v18 = 0xD000000000000021;
            v19 = "LibraryView.Composers";
            break;
          case 0xB:
            v18 = 0xD000000000000026;
            v19 = "LibraryView.Shows";
            break;
          case 0xC:
            v18 = 0xD000000000000027;
            v19 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        v20 = v19 | 0x8000000000000000;
        v21 = 0xD000000000000029;
        v22 = "orites";
        switch(v12)
        {
          case 1:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.RecentlyAdded";
            break;
          case 2:
            v21 = 0xD000000000000023;
            v22 = "LibraryView.Playlists";
            break;
          case 3:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.Artists";
            break;
          case 4:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Albums";
            break;
          case 5:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Songs";
            break;
          case 6:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.MadeForYou";
            break;
          case 7:
            v21 = 0xD000000000000022;
            v22 = "LibraryView.MusicVideos";
            break;
          case 8:
            v21 = 0xD000000000000028;
            v22 = "LibraryView.Genres";
            break;
          case 9:
            v21 = 0xD000000000000025;
            v22 = "LibraryView.Compilations";
            break;
          case 10:
            v21 = 0xD000000000000021;
            v22 = "LibraryView.Composers";
            break;
          case 11:
            v21 = 0xD000000000000026;
            v22 = "LibraryView.Shows";
            break;
          case 12:
            v21 = 0xD000000000000027;
            v22 = "LibraryView.Downloaded";
            break;
          default:
            break;
        }

        if (v18 == v21 && v20 == (v22 | 0x8000000000000000))
        {
          break;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {
          goto LABEL_43;
        }

        v15 = (v15 + 1) & v31;
        v16 = v15 >> 6;
        v17 = 1 << v15;
        if ((*(v32 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_43:
      v24 = a1[v16];
      a1[v16] = v24 & ~v17;
      if ((v24 & v17) != 0)
      {
        v6 = v28 - 1;
        if (__OFSUB__(v28, 1))
        {
          goto LABEL_52;
        }

        if (v28 == 1)
        {
          return &_swiftEmptySetSingleton;
        }

        goto LABEL_2;
      }
    }
  }

  v10 = (a5[2] + 64) >> 6;
  v11 = a5[3];
  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
      JUMPOUT(0x1001A1330);
    }

    if (v9 >= v10)
    {
      break;
    }

    v8 = *(a5[1] + 8 * v9);
    ++v11;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  if (v10 <= v7 + 1)
  {
    v26 = v7 + 1;
  }

  else
  {
    v26 = (a5[2] + 64) >> 6;
  }

  a5[3] = v26 - 1;
  a5[4] = 0;

  return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v28, a3);
}

BOOL specialized static Library.Menu.Request.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }

    type metadata accessor for MusicLibrary();
    if ((static MusicLibrary.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSObject);
    if ((static NSObject.== infix(_:_:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    type metadata accessor for UIAction(0, &lazy cache variable for type metadata for MPMediaPickerConfiguration);
    v6 = v5;
    v7 = v4;
    v8 = static NSObject.== infix(_:_:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (_sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(*(a1 + 32), *(a2 + 32)) & 1) == 0 || ((*(a1 + 40) ^ *(a2 + 40)) & 1) != 0 || ((*(a1 + 41) ^ *(a2 + 41)) & 1) != 0 || ((*(a1 + 42) ^ *(a2 + 42)))
  {
    return 0;
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 72);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v16 = *(a2 + 64);
  v15 = *(a2 + 72);
  if (v10)
  {
    if (v13)
    {
      outlined copy of Library.Menu.Revision?(v13);
      outlined copy of Library.Menu.Revision?(v10);
      if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v10, v13) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v9, v14) & 1) != 0 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v12, v16))
      {
        v17 = _sSh2eeoiySbShyxG_ABtFZ9MusicCore7LibraryO4MenuV10IdentifierO_Tt1g5(v11, v15);

        outlined consume of Library.Menu.Revision?(v10);
        return (v17 & 1) != 0;
      }

      v18 = v10;
LABEL_27:
      outlined consume of Library.Menu.Revision?(v18);
      return 0;
    }

LABEL_25:
    outlined copy of Library.Menu.Revision?(v13);
    outlined copy of Library.Menu.Revision?(v10);
    outlined consume of Library.Menu.Revision?(v10);
    v18 = v13;
    goto LABEL_27;
  }

  if (v13)
  {
    goto LABEL_25;
  }

  return 1;
}

uint64_t specialized Sequence.first(where:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = a3 >> 1;
  result = swift_beginAccess();
  if (a2 <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2;
  }

  v10 = v9 - a2;
  v11 = (a1 + a2);
  for (i = v7 - a2; ; --i)
  {
    if (!i)
    {
      return 13;
    }

    if (!v10)
    {
      break;
    }

    v14 = *v11++;
    v13 = v14;
    v15 = *a4;

    v16 = specialized Sequence<>.contains(_:)(v14, v15);

    --v10;
    if (v16)
    {
      return v13;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized closure #3 in Library.Menu.Revision.migrate(to:)(char *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  result = specialized Collection<>.firstIndex(of:)(*a1, a2);
  if (v7)
  {
    goto LABEL_43;
  }

  v8 = result;
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v9 = *(a2 + 16);
  if (v9 < result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  LOBYTE(v10) = specialized BidirectionalCollection.last(where:)(a2, a2 + 32, 0, (2 * result) | 1, a3);
  if (v8 >= (v9 - 1))
  {
LABEL_11:
    if (v10 == 13)
    {
      goto LABEL_12;
    }

LABEL_14:
    swift_beginAccess();
    v16 = *a3;

    v17 = specialized Collection<>.firstIndex(of:)(v10, v16);
    v19 = v18;

    if (v19)
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v20 = __OFADD__(v17, 1);
    v10 = v17 + 1;
    if (!v20)
    {
      result = swift_beginAccess();
      if (*(*a3 + 16) >= v10)
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_37;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = specialized Sequence.first(where:)(a2 + 32, v8, (2 * v9) | 1, a3);
  if (v10 == 13)
  {
    if (v11 == 13)
    {
LABEL_12:
      swift_beginAccess();
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v5);
      return swift_endAccess();
    }

    v12 = v11;
    swift_beginAccess();
    v13 = *a3;

    v10 = specialized Collection<>.firstIndex(of:)(v12, v13);
    v15 = v14;

    if (v15)
    {
      goto LABEL_45;
    }

    result = swift_beginAccess();
    if (*(*a3 + 16) < v10)
    {
      goto LABEL_38;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_18:
      specialized Array.replaceSubrange<A>(_:with:)(v10, v10, v5);
      return swift_endAccess();
    }

    __break(1u);
    goto LABEL_11;
  }

  if (v11 == 13)
  {
    goto LABEL_14;
  }

  v21 = v11;
  swift_beginAccess();
  v22 = *a3;

  v23 = specialized Collection<>.firstIndex(of:)(v10, v22);
  v25 = v24;

  if (v25)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  swift_beginAccess();
  v26 = *a3;

  v27 = specialized Collection<>.firstIndex(of:)(v21, v26);
  v29 = v28;

  if ((v29 & 1) == 0)
  {
    if (v27 <= v23)
    {
      v30 = v23;
    }

    else
    {
      v30 = v27;
    }

    if (v27 >= v23)
    {
      v31 = v23;
    }

    else
    {
      v31 = v27;
    }

    v20 = __OFSUB__(v30, v31);
    v32 = v30 - v31;
    if (!v20)
    {
      v10 = v31 + v32 / 2;
      if (!__OFADD__(v31, v32 / 2))
      {
        result = swift_beginAccess();
        if (*(*a3 + 16) >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_18;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

LABEL_47:
  __break(1u);
  return result;
}

unint64_t specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v14 << 6)));
      result = specialized closure #3 in Library.Menu.Revision.migrate(to:)(&v15, a2, a3);
      if (v3)
      {
      }

      v10 &= v10 - 1;
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t specialized Library.Menu.Identifier.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    result = specialized Set.contains(_:)(*(*(a3 + 48) + v17), a4);
    if (result)
    {
      *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return specialized _NativeSet.extractSubset(using:count:)(v6, a2, v7, a3);
      }
    }
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
      goto LABEL_15;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *specialized _NativeSet.filter(_:)(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v10;
    v26 = a2;
    v27 = v4;
    v24[1] = v24;
    __chkstk_darwin(v12);
    v13 = v24 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    a2 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v10 = v17 | (v4 << 6);
      if (specialized Set.contains(_:)(*(*(a1 + 48) + v10), a3))
      {
        *&v13[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = specialized _NativeSet.extractSubset(using:count:)(v13, v25, v11, a1);

          return v21;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_16;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v21 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy9MusicCore7LibraryO4MenuV10IdentifierOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_9i5Core7k2O4l3V10M5O_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n03_s9itkul81V8RevisionV7migrate33_CDE7296BF475887520DF32E716B298B12toyAG7VersionV_tKFSbAE10M7OXEfU2_AL8RevisionV7VersionVTf1nnc_n(v23, v10, a1, a2, a3);

  return v21;
}

uint64_t specialized static Library.Menu.Revision.migrate(oldStorage:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:

LABEL_37:
      swift_beginAccess();
      v30 = specialized Array.remove(at:)(v4);
      specialized Array.replaceSubrange<A>(_:with:)(0, 0, v30);
      specialized Set._Variant.insert(_:)(&v38, 0);
      swift_endAccess();
      return v36;
    }

    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v12._countAndFlagsBits = v10;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v12);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v8[v15 + 32] = v13;
      v5 = v4;
      goto LABEL_2;
    }
  }

  v4 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 40;
  v18 = _swiftEmptyArrayStorage;
  v35 = a2 + 40;
LABEL_13:
  v19 = (v17 + 16 * v4);
  while (v16 != v4)
  {
    if (v4 >= v16)
    {
      goto LABEL_34;
    }

    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v23);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v35;
      goto LABEL_13;
    }
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(v18);

  v36 = v8;
  v37 = v8;

  Library.Menu.Revision.migrate(to:)(a3, a4);
  if (v33)
  {
  }

  swift_beginAccess();
  v28 = *(v8 + 2);
  if (v28)
  {
    v4 = 0;
    while (2)
    {
      if (v4 < *(v37 + 2))
      {
        switch(v37[v4 + 32])
        {
          case 1:
          case 2:
          case 3:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          case 9:
          case 10:
          case 11:
          case 12:
            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_37;
            }

            if (v28 == ++v4)
            {
              return v36;
            }

            continue;
          default:
            goto LABEL_36;
        }
      }

      break;
    }

    __break(1u);
    JUMPOUT(0x1001A2418);
  }

  return v36;
}

uint64_t specialized Library.Menu.Revision.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV10CodingKeysOGMd);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v60 - v5;
  v7 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return v7;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd);
    v68 = 1;
    v9 = lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], &_sSaySSGMd);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60[1] = v9;
    v61 = v8;
    v63 = v4;
    v64 = v6;
    v65 = v3;
    v11 = 0;
    v12 = v67;
    v13 = *(v67 + 16);
    v14 = v67 + 40;
    v66 = _swiftEmptyArrayStorage;
    v62 = v67 + 40;
LABEL_4:
    v15 = (v14 + 16 * v11);
    while (v13 != v11)
    {
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      ++v11;
      v16 = v15 + 2;
      v17 = *(v15 - 1);
      v18 = *v15;

      v19._countAndFlagsBits = v17;
      v19._object = v18;
      v20 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v19);

      v15 = v16;
      if (v20 < 0xD)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v66;
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
          v21 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v66 = v21;
        v21[v23 + 32] = v20;
        v14 = v62;
        goto LABEL_4;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    v68 = 0;
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>, &_sShySSGMd);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = 0;
    v24 = v67;
    v25 = v67 + 56;
    v26 = 1 << *(v67 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v67 + 56);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    if (!v28)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = (*(v24 + 48) + ((v30 << 10) | (16 * v32)));
        v34 = *v33;
        v35 = v33[1];

        v36._countAndFlagsBits = v34;
        v36._object = v35;
        v37 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v36);

        if (v37 < 0xD)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31[2] + 1, 1, v31);
        v31 = result;
      }

      v39 = v31;
      v40 = v31[2];
      v41 = v39;
      v42 = v39[3];
      if (v40 >= v42 >> 1)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), (v40 + 1), 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v40 + 1;
      v43 = &v40[v41];
      v31 = v41;
      v43[32] = v37;
    }

    while (v28);
LABEL_19:
    while (1)
    {
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v38 >= v29)
      {

        v44 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MusicCore7LibraryO4MenuV10IdentifierO_SayAJGTt0g5Tf4g_n(v31);

        v68 = 2;
        v45 = v64;
        v46 = v65;
        v47 = v62;
        result = KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (v47)
        {

          v68 = 2;
          lazy protocol witness table accessor for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v63 + 8))(v45, v46);
          v7 = v67;
        }

        else
        {
          v62 = v44;
          v48 = 0;
          v49 = v67;
          v50 = *(v67 + 16);
          v51 = v67 + 40;
          v7 = _swiftEmptyArrayStorage;
          v61 = v67 + 40;
LABEL_32:
          v52 = (v51 + 16 * v48);
          while (v50 != v48)
          {
            if (v48 >= *(v49 + 16))
            {
              goto LABEL_44;
            }

            ++v48;
            v53 = v52 + 2;
            v54 = *(v52 - 1);
            v55 = *v52;

            v56._countAndFlagsBits = v54;
            v56._object = v55;
            v57 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Identifier.init(rawValue:), v56);

            v52 = v53;
            if (v57 < 0xD)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
                v7 = result;
              }

              v59 = v7[2];
              v58 = v7[3];
              if (v59 >= v58 >> 1)
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), (v59 + 1), 1, v7);
                v7 = result;
              }

              v7[2] = v59 + 1;
              v59[v7 + 32] = v57;
              v51 = v61;
              goto LABEL_32;
            }
          }

          (*(v63 + 8))(v64, v65);
        }

        goto LABEL_3;
      }

      v28 = *(v25 + 8 * v38);
      ++v30;
      if (v28)
      {
        v30 = v38;
        goto LABEL_17;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.CodingKeys and conformance Library.Menu.Revision.CodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<Library.Menu.Identifier> and conformance <> Set<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version and conformance Library.Menu.Revision.Version);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys);
  }

  return result;
}

unint64_t specialized Library.Menu.Revision.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.Menu.Revision.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized Library.Menu.Revision.Version.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MusicCore7LibraryO4MenuV8RevisionV7VersionV10CodingKeys33_CDE7296BF475887520DF32E716B298B1LLOGMd);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  lazy protocol witness table accessor for type Library.Menu.Revision.Version.CodingKeys and conformance Library.Menu.Revision.Version.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMd);
  HIBYTE(v8) = 0;
  lazy protocol witness table accessor for type [Library.Menu.Identifier] and conformance <A> [A](&lazy protocol witness table cache variable for type [Library.Menu.Identifier] and conformance <A> [A], lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy9MusicCore7LibraryO4MenuV10IdentifierOGMd);
  HIBYTE(v8) = 1;
  lazy protocol witness table accessor for type Set<Library.Menu.Identifier> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<Library.Menu.Identifier> and conformance <> Set<A>, lazy protocol witness table accessor for type Library.Menu.Identifier and conformance Library.Menu.Identifier);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.SelectionState and conformance Library.Menu.SelectionState()
{
  result = lazy protocol witness table cache variable for type Library.Menu.SelectionState and conformance Library.Menu.SelectionState;
  if (!lazy protocol witness table cache variable for type Library.Menu.SelectionState and conformance Library.Menu.SelectionState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.SelectionState and conformance Library.Menu.SelectionState);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Library.Menu.Request(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Library.Menu.Request and conformance Library.Menu.Request();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Request and conformance Library.Menu.Request()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Request and conformance Library.Menu.Request;
  if (!lazy protocol witness table cache variable for type Library.Menu.Request and conformance Library.Menu.Request)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Request and conformance Library.Menu.Request);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore7LibraryO4MenuV8RevisionVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Library.Menu.Request(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Library.Menu.Request(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Library.Menu.Request.MediaLibrarySource(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Library.Menu.Request.MediaLibrarySource(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Library.Menu.Identifier.Location(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Library.Menu.Identifier.Location(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTag for Library.Menu.Identifier.Location(unsigned __int8 *a1)
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

_BYTE *destructiveInjectEnumTag for Library.Menu.Identifier.Location(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Library.Menu.MoveError(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for Library.Menu.MoveError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001A37B4()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Result<Library.Menu, Error>, @guaranteed RequestResponseInvalidatable?) -> ()(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t lazy protocol witness table accessor for type [Library.Menu.Identifier] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay9MusicCore7LibraryO4MenuV10IdentifierOGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey()
{
  result = lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey;
  if (!lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSUserDefaults.LegacyKey and conformance NSUserDefaults.LegacyKey);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Library.Menu.Revision.MigrationFailure and conformance Library.Menu.Revision.MigrationFailure()
{
  result = lazy protocol witness table cache variable for type Library.Menu.Revision.MigrationFailure and conformance Library.Menu.Revision.MigrationFailure;
  if (!lazy protocol witness table cache variable for type Library.Menu.Revision.MigrationFailure and conformance Library.Menu.Revision.MigrationFailure)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.Menu.Revision.MigrationFailure and conformance Library.Menu.Revision.MigrationFailure);
  }

  return result;
}

uint64_t *partial apply for specialized closure #1 in BidirectionalCollection.last(where:)@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A3AA0()
{

  return swift_deallocObject();
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Library.Menu.MoveError.Failure(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for Library.Menu.MoveError.Failure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(33);

  v2 = 0xE600000000000000;
  v3 = 0x736D75626C61;
  v4 = 0xE900000000000073;
  v5 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v5 = 0x73676E6F73;
    v4 = 0xE500000000000000;
  }

  v6 = 0xEA0000000000756FLL;
  v7 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  return 0xD00000000000001FLL;
}

uint64_t Library.SortConfiguration.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736D75626C61;
  v2 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v2 = 0x73676E6F73;
  }

  v3 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v3 = 0x646956636973756DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x73747369747261;
  if (a1 != 1)
  {
    v4 = 0x74616C69706D6F63;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Library.SortConfiguration()
{
  String.hash(into:)();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Library.SortConfiguration@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Library.SortConfiguration.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Library.SortConfiguration(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  v5 = 0xE900000000000073;
  v6 = 0x7473696C79616C70;
  if (v2 != 5)
  {
    v6 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000756FLL;
  v8 = 0x59726F466564616DLL;
  if (v2 != 3)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 1)
  {
    v10 = 0x74616C69706D6F63;
    v9 = 0xEC000000736E6F69;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t specialized Library.SortConfiguration.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Library.SortConfiguration.init(rawValue:), v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type Library.SortConfiguration and conformance Library.SortConfiguration()
{
  result = lazy protocol witness table cache variable for type Library.SortConfiguration and conformance Library.SortConfiguration;
  if (!lazy protocol witness table cache variable for type Library.SortConfiguration and conformance Library.SortConfiguration)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Library.SortConfiguration and conformance Library.SortConfiguration);
  }

  return result;
}

unint64_t *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = &_swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      outlined init with take of URL?(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    type metadata accessor for NSSortDescriptor();

    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSSortDescriptor();
  }

  return v1;
}

id *specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v4;
      v8 = result;
      v7 = result[3];
      if (v5 >= v7 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), (v5 + 1), 1);
        result = v8;
      }

      result[2] = v5 + 1;
      *(result + v5 + 8) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      outlined init with copy of AnyHashable(v4, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo25MRGroupSessionParticipant_pMd);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (v6)
  {
    v17 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      outlined init with copy of Lyrics.Translation(v8, v5, type metadata accessor for Lyrics.TextLine);
      v17 = v7;
      v11 = v7[2];
      v10 = v7[3];
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for Lyrics.TextLine;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      outlined init with copy of Lyrics.Translation(v5, boxed_opaque_existential_1, type metadata accessor for Lyrics.TextLine);
      v7[2] = (v11 + 1);
      outlined init with take of ActionPerforming(&v14, &v7[5 * v11 + 4]);
      outlined destroy of Lyrics.Translation(v5, type metadata accessor for Lyrics.TextLine);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  SortOptions.SortType.sort.getter(a1, v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_0Tm(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(v5);
  return v3;
}

Swift::Int SortOptions.SortType.sort.getter@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &protocol witness table for PlaylistOrderSort;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &protocol witness table for TitleSort;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &protocol witness table for RecentlyAddedSort;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &protocol witness table for RecentlyPlayedSort;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &protocol witness table for RecentlyUpdatedSort;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &protocol witness table for ArtistSort;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &protocol witness table for AlbumSort;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &protocol witness table for PlaylistTypeSort;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &protocol witness table for YearSort;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &protocol witness table for YearSort;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore11SortOptionsV11ContentTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of SortOptions.SortType.sort.getter);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &protocol witness table for ReleaseDateSort;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore11SortOptionsV11ContentTypeO_Tt0g5Tf4g_n(&outlined read-only object #1 of SortOptions.SortType.sort.getter);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &protocol witness table for ReleaseDateSort;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &protocol witness table for PlaylistOrderSort;
LABEL_16:
      *(a2 + 24) = v2;
      *(a2 + 32) = v3;
      *a2 = 1;
      break;
  }

  return result;
}

id SortOptions.SortType.image.getter(char a1)
{
  result = 0;
  v3 = 1 << a1;
  if ((v3 & 0x1FC) == 0)
  {
    if ((v3 & 0xC01) != 0)
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v5 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v7];

      if (v6)
      {
LABEL_6:
        v8 = [v6 imageWithConfiguration:v4];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SortOptions.SortType.sortDescriptors(for:)(uint64_t a1, Swift::Int a2)
{
  SortOptions.SortType.sort.getter(a2, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_0Tm(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v7);
  return v5;
}

uint64_t ContentSort.supports(_:)(int a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 16))(a2, a3);
  LOBYTE(a1) = specialized Set.contains(_:)(a1, v4);

  return a1 & 1;
}

unint64_t SortOptions.SortType.rawValue.getter(char a1)
{
  result = 0x656C7469547942;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7473697472417942;
      break;
    case 7:
      result = 0x6D75626C417942;
      break;
    case 8:
      result = 0x696C79616C507942;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x646E656373417942;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SortOptions.SortType(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SortOptions.SortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SortOptions.SortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SortOptions.SortType@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized SortOptions.SortType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SortOptions.SortType@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v7, v9, v3);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v10 = static NSBundle.module;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v11;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, int a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&outlined read-only object #0 of one-time initialization function for allAvailable + v4 + 32);
    switch(*(&outlined read-only object #0 of one-time initialization function for allAvailable + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &protocol witness table for PlaylistOrderSort;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &protocol witness table for TitleSort;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &protocol witness table for RecentlyAddedSort;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &protocol witness table for RecentlyPlayedSort;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &protocol witness table for RecentlyUpdatedSort;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &protocol witness table for ArtistSort;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &protocol witness table for AlbumSort;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &protocol witness table for PlaylistTypeSort;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &protocol witness table for YearSort;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &protocol witness table for YearSort;
        goto LABEL_19;
      case 0xB:
        v9 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore11SortOptionsV11ContentTypeO_Tt0g5Tf4g_n(&outlined read-only object #0 of SortOptions.ContentType.availableSortTypes(withSelectedType:));
        v23 = &protocol witness table for ReleaseDateSort;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9MusicCore11SortOptionsV11ContentTypeO_Tt0g5Tf4g_n(&outlined read-only object #1 of SortOptions.ContentType.availableSortTypes(withSelectedType:));
        v23 = &protocol witness table for ReleaseDateSort;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &protocol witness table for ReleaseDateSort;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &protocol witness table for PlaylistOrderSort;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    __swift_project_boxed_opaque_existential_0Tm(v21, v7);
    v10 = (v8[2])();
    v11 = specialized Set.contains(_:)(a2, v10);

    __swift_destroy_boxed_opaque_existential_0Tm(v21);
    if (v11)
    {
      v12 = a1;
      if (v6 > 8)
      {
        if (v6 > 10)
        {
          v12 = 24;
          if (v6 == 11)
          {
            v13 = 0xD000000000000017;
            v14 = 0x80000001004C5360;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x80000001004C5340;
          }
        }

        else
        {
          v13 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          if (v6 != 9)
          {
            v12 = 24;
            v13 = 0xD000000000000010;
            v14 = 0x80000001004C5310;
          }
        }
      }

      else
      {
        v12 = v6 - 2;
        if ((v6 - 2) < 7)
        {
LABEL_53:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x80000001004C5240;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x80000001004C5260;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x80000001004C5240;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x80000001004C5260;
          if (v13 != 0xD000000000000019)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 2:
          goto LABEL_48;
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
          goto LABEL_51;
        case 4:
          v15 = 0x80000001004C52B0;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x80000001004C5310;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 10:
          v16 = 0x646E656373417942;
          v15 = 0xEF72616559676E69;
LABEL_48:
          if (v13 == v16)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 11:
          v15 = 0x80000001004C5340;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x80000001004C5360;
          if (v13 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

LABEL_49:
          if (v14 == v15)
          {

            LOBYTE(v6) = a1;
          }

          else
          {
LABEL_51:
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v17)
            {
              LOBYTE(v6) = a1;
            }
          }

          break;
        default:
          goto LABEL_53;
      }

      goto LABEL_53;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 10);
  return v5;
}

uint64_t SortOptions.ContentType.defaultSortType.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      return 8;
    }

    else
    {
      return 0x206u >> (8 * (a1 + 64));
    }
  }

  else
  {
    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }
}

uint64_t SortOptions.ContentType.preferredStorageKey.getter(unsigned __int8 a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    Hasher.init(_seed:)();
    v3 = SortOptions.ContentType.identifier.getter(a1);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    if (v4 != Hasher._finalize()())
    {
      v1 = 0x75626C4174726F53;
      if ((a1 & 0xC0) != 0x40)
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v7 = Hasher._finalize()();
        Hasher.init(_seed:)();
        String.hash(into:)();
        if (v7 == Hasher._finalize()())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((a1 & 0x3F) != 0)
      {
LABEL_5:

        v5._countAndFlagsBits = 0x6570795474726F53;
        v5._object = 0xE800000000000000;
        String.append(_:)(v5);

        return v3;
      }
    }
  }

  return v1;
}

uint64_t SortOptions.ContentType.identifier.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if (a1)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0x7473696C79616C70;
      }
    }

    else
    {
      v5 = 0x736569766F6DLL;
      if (a1 != 193)
      {
        v5 = 0x7473696C79616C70;
      }

      if (a1 == 192)
      {
        return 0x73676E6F73;
      }

      else
      {
        return v5;
      }
    }
  }

  else if (a1 >> 6)
  {
    v2 = 0x736D75626C61;
    v3 = 0xD000000000000016;
    v4 = 0x7265736F706D6F63;
    if ((a1 & 0x3F) != 3)
    {
      v4 = 0x626C4165726E6567;
    }

    if ((a1 & 0x3F) != 2)
    {
      v3 = v4;
    }

    if ((a1 & 0x3F) != 0)
    {
      v2 = 0x6C41747369747261;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646956636973756DLL;
  }
}

Swift::String __swiftcall SortOptions.ContentType.storageKey(using:)(Swift::String_optional using)
{
  if (using.value._object)
  {
    object = using.value._object;
    countAndFlagsBits = using.value._countAndFlagsBits;
    v10 = SortOptions.ContentType.preferredStorageKey.getter(v1);
    v11 = v4;

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    v6._countAndFlagsBits = countAndFlagsBits;
    v6._object = object;
    String.append(_:)(v6);

    v7 = v10;
    v8 = v11;
  }

  else
  {
    v7 = SortOptions.ContentType.preferredStorageKey.getter(v1);
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t SortOptions.ContentType.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SortOptions.SortType(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SortOptions.SortType(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SortOptions.SortType(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2F80;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t PlaylistOrderSort.sortDescriptors(for:)(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2F10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void one-time initialization function for playlistSongsByTitleSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2FF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EF0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2EB0;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 56) = v9;
  *(v7 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 72) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  static TitleSort.playlistSongsByTitleSortDescriptors = v0;
}

uint64_t protocol witness for ContentSort.localizedTitle.getter in conformance TitleSort()
{
  return protocol witness for ContentSort.localizedTitle.getter in conformance TitleSort();
}

{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

void one-time initialization function for songsByArtistSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F3000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EB0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2EF0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  static ArtistSort.songsByArtistSortDescriptors = v0;
}

void one-time initialization function for albumsByArtistSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2FF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EF0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  static ArtistSort.albumsByArtistSortDescriptors = v0;
}

void one-time initialization function for playlistSongsByArtistSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2F80;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EB0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2EB0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 72) = v11;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2EF0;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 56) = v16;
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  static ArtistSort.playlistSongsByArtistSortDescriptors = v0;
}

uint64_t protocol witness for ContentSort.sortDescriptors(for:) in conformance ArtistSort(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (one-time initialization token for albumsByArtistSortDescriptors == -1)
      {
      }

      goto LABEL_15;
    }

LABEL_7:
    if (one-time initialization token for songsByArtistSortDescriptors == -1)
    {
    }

LABEL_15:
    swift_once();
  }

  if (a1 >> 6 != 3)
  {
    goto LABEL_17;
  }

  if (a1 == 192)
  {
    goto LABEL_7;
  }

  if (a1 == 194)
  {
    if (one-time initialization token for playlistSongsByArtistSortDescriptors != -1)
    {
      swift_once();
    }

    v2 = static ArtistSort.playlistSongsByArtistSortDescriptors;

    return specialized _arrayForceCast<A, B>(_:)(v2);
  }

  else
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void one-time initialization function for playlistSongsByAlbumSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F2FF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F2EB0;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004F2EF0;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  static AlbumSort.playlistSongsByAlbumSortDescriptors = v0;
}

uint64_t protocol witness for ContentSort.sortDescriptors(for:) in conformance AlbumSort(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (one-time initialization token for playlistSongsByAlbumSortDescriptors != -1)
    {
      swift_once();
    }

    v1 = static AlbumSort.playlistSongsByAlbumSortDescriptors;

    return specialized _arrayForceCast<A, B>(_:)(v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void one-time initialization function for songsByLibraryAddedDateSortDescriptors()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004F3000;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  static RecentlyAddedSort.songsByLibraryAddedDateSortDescriptors = v0;
}

id *protocol witness for ContentSort.sortDescriptors(for:) in conformance PlaylistTypeSort(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for ContentSort.localizedTitle.getter in conformance RecentlyUpdatedSort()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t YearSort.sortDescriptors(for:)(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2FF0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t protocol witness for ContentSort.localizedTitle.getter in conformance ReleaseDateSort()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v5, v7, v1);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v8 = static NSBundle.module;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t NSUserDefaults.sortType(for:keyDomain:)(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v13._countAndFlagsBits = SortOptions.ContentType.preferredStorageKey.getter(a1);
    v13._object = v6;

    v7._countAndFlagsBits = 45;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  else
  {
    countAndFlagsBits = SortOptions.ContentType.preferredStorageKey.getter(a1);
    object = v11;
  }

  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.getter(&v13, &v14);

  if (!v15)
  {
    outlined destroy of Any?(&v14);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (result = specialized SortOptions.SortType.init(rawValue:)(v13), result == 13))
  {
LABEL_9:
    if ((a1 >> 6) > 1u)
    {
      if (a1 >> 6 == 2)
      {
        return 8;
      }

      else
      {
        return 0x206u >> (8 * (a1 + 64));
      }
    }

    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }

  return result;
}

void NSUserDefaults.setSortType(_:for:keyDomain:)(char a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v29 = SortOptions.ContentType.preferredStorageKey.getter(a2);
    v30 = v8;

    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    String.append(_:)(v10);

    v11 = v29;
    v12 = v30;
  }

  else
  {
    v11 = SortOptions.ContentType.preferredStorageKey.getter(a2);
    v12 = v13;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v14 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Hasher.init(_seed:)();
    SortOptions.ContentType.identifier.getter(a2);
    String.hash(into:)();

    v15 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = v15 == Hasher._finalize()();
    if (a4)
    {
LABEL_12:
      v21 = SortOptions.SortType.rawValue.getter(a1);
      v22 = v24;
      v23 = 0;
      goto LABEL_14;
    }
  }

  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v17 = SortOptions.SortType.rawValue.getter(v16);
  v19 = v18;
  v21 = SortOptions.SortType.rawValue.getter(a1);
  v22 = v20;
  if (v17 == v21 && v19 == v20)
  {

    v23 = 0;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v25 ^ 1;
  }

LABEL_14:
  v31 = &type metadata for String;
  v29 = v21;
  v30 = v22;
  v28[0] = v11;
  v28[1] = v12;
  lazy protocol witness table accessor for type String and conformance String();
  NSUserDefaults.subscript.setter(&v29, v28, &type metadata for String);
  if (v23)
  {
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    v27 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v26, v27, 0, 0, 1u);
  }
}

id MPModelPlaylist.canBeSorted.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyMovieLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertySongLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVEpisodeLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVSeasonLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  result = [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  if (result)
  {
    return [v0 isLibraryAdded];
  }

  return result;
}

uint64_t MPModelPlaylist.sortStorageKeyDomain.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 globalPlaylistID];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    v9 = [v0 identifiers];
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  lazy protocol witness table accessor for type String and conformance String();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v8;
}

uint64_t MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter()
{
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 sortStorageKeyDomain];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v4, v6);

  SortOptions.SortType.sort.getter(v8, v12);
  v9 = v13;
  v10 = v14;
  __swift_project_boxed_opaque_existential_0Tm(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  return v11;
}

Class @objc MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    type metadata accessor for NSSortDescriptor();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id MPModelPlaylist.preferredTracklistSortDescriptors.getter()
{
  v1 = v0;
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  result = [v0 sortStorageKeyDomain];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v63[0] = 0x2D74726F53;
    v63[1] = 0xE500000000000000;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    String.append(_:)(v8);

    lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    lazy protocol witness table accessor for type Actions.SortPlaylist.TrackListSort and conformance Actions.SortPlaylist.TrackListSort();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v63);

    v9 = LOWORD(v63[0]);
    if ((v63[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v10 = result;
        type metadata accessor for NSSortDescriptor();
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }

    else
    {
      v12 = LOBYTE(v63[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
      if (v9 <= 1u)
      {
        if (v12)
        {
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1004F2FF0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_1004F2EF0;
          *(v51 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 40) = v52;
          *(v51 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 56) = v53;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v55 = objc_opt_self();
          v56 = [v55 sortDescriptorWithKeyPath:isa ascending:(v9 >> 8) & 1];

          *(v50 + 32) = v56;
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_1004F2EB0;
          *(v57 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 40) = v58;
          *(v57 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 56) = v59;
          *(v57 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 72) = v60;
          v61 = Array._bridgeToObjectiveC()().super.isa;

          v62 = [v55 sortDescriptorWithKeyPath:v61 ascending:1];

          result = v50;
          *(v50 + 40) = v62;
        }

        else
        {
          v25 = (v9 >> 8) & 1;
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1004F2F10;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = objc_allocWithZone(NSSortDescriptor);
          v28 = String._bridgeToObjectiveC()();

          v29 = [v27 initWithKey:v28 ascending:v25];

          result = v26;
          *(v26 + 32) = v29;
        }
      }

      else if (v12 == 2)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_1004F2F80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1004F2EB0;
        *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 40) = v32;
        *(v31 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 56) = v33;
        *(v31 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 72) = v34;
        v35 = Array._bridgeToObjectiveC()().super.isa;

        v36 = objc_opt_self();
        v37 = [v36 sortDescriptorWithKeyPath:v35 ascending:(v9 >> 8) & 1];

        *(v30 + 32) = v37;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1004F2EB0;
        *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 40) = v39;
        *(v38 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 56) = v40;
        *(v38 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 72) = v41;
        v42 = Array._bridgeToObjectiveC()().super.isa;

        v43 = [v36 sortDescriptorWithKeyPath:v42 ascending:1];

        *(v30 + 40) = v43;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_1004F2EF0;
        *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 40) = v45;
        *(v44 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 56) = v46;
        v47 = Array._bridgeToObjectiveC()().super.isa;

        v48 = [v36 sortDescriptorWithKeyPath:v47 ascending:1];

        result = v30;
        *(v30 + 48) = v48;
      }

      else
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_1004F2FF0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1004F2EB0;
        *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 40) = v15;
        *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 56) = v16;
        *(v14 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 72) = v17;
        v18 = Array._bridgeToObjectiveC()().super.isa;

        v19 = objc_opt_self();
        v20 = [v19 sortDescriptorWithKeyPath:v18 ascending:(v9 >> 8) & 1];

        *(v13 + 32) = v20;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_1004F2EF0;
        *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 40) = v22;
        *(v21 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 56) = v23;
        v24 = Array._bridgeToObjectiveC()().super.isa;

        v49 = [v19 sortDescriptorWithKeyPath:v24 ascending:1];

        result = v13;
        *(v13 + 40) = v49;
      }
    }
  }

  return result;
}

uint64_t one-time initialization function for sortOptions()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sortOptions);
  __swift_project_value_buffer(v0, static Logger.sortOptions);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (one-time initialization token for sortOptions != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for sortOptions != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.sortOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t specialized static SortOptions.ContentType.== infix(_:_:)(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2 && a1 == 192 && a2 == 192)
    {
      return 1;
    }
  }

  else if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      return ((a2 ^ a1) & 0x3F) == 0;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v3);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v2);
  String.hash(into:)();

  return v6 == Hasher._finalize()();
}

uint64_t specialized ReleaseDateSort.sortDescriptors(for:)(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2FF0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1004F2EB0;
    *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 40) = v5;
    *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 56) = v6;
    *(v4 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 72) = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1004F2EF0;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    *(v11 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 56) = v13;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized RecentlyAddedSort.sortDescriptors(for:)(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (one-time initialization token for songsByLibraryAddedDateSortDescriptors != -1)
    {
      swift_once();
    }

    v1 = static RecentlyAddedSort.songsByLibraryAddedDateSortDescriptors;

    return v1;
  }

  if (a1 >> 6 == 2)
  {
    goto LABEL_10;
  }

  if (a1 == 192)
  {
    goto LABEL_6;
  }

  if (a1 == 193)
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2F10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RecentlyPlayedSort.sortDescriptors(for:)(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1004F2F10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id *specialized TitleSort.sortDescriptors(for:)(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1004F2F10;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:1];

    result = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    if ((a1 & 0xFE) == 0xC0)
    {
      return _swiftEmptyArrayStorage;
    }

    if (one-time initialization token for playlistSongsByTitleSortDescriptors != -1)
    {
      swift_once();
    }

    if (static TitleSort.playlistSongsByTitleSortDescriptors >> 62)
    {
      type metadata accessor for NSSortDescriptor();

      v7 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v7 = static TitleSort.playlistSongsByTitleSortDescriptors;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSSortDescriptor();
    }

    return v7;
  }

  return result;
}

unint64_t specialized SortOptions.SortType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SortOptions.SortType.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t type metadata accessor for NSSortDescriptor()
{
  result = lazy cache variable for type metadata for NSSortDescriptor;
  if (!lazy cache variable for type metadata for NSSortDescriptor)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSSortDescriptor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.SortType and conformance SortOptions.SortType()
{
  result = lazy protocol witness table cache variable for type SortOptions.SortType and conformance SortOptions.SortType;
  if (!lazy protocol witness table cache variable for type SortOptions.SortType and conformance SortOptions.SortType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.SortType and conformance SortOptions.SortType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.ContentType and conformance SortOptions.ContentType()
{
  result = lazy protocol witness table cache variable for type SortOptions.ContentType and conformance SortOptions.ContentType;
  if (!lazy protocol witness table cache variable for type SortOptions.ContentType and conformance SortOptions.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.ContentType and conformance SortOptions.ContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.ViewType.Albums and conformance SortOptions.ViewType.Albums()
{
  result = lazy protocol witness table cache variable for type SortOptions.ViewType.Albums and conformance SortOptions.ViewType.Albums;
  if (!lazy protocol witness table cache variable for type SortOptions.ViewType.Albums and conformance SortOptions.ViewType.Albums)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.ViewType.Albums and conformance SortOptions.ViewType.Albums);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.ViewType.MusicVideos and conformance SortOptions.ViewType.MusicVideos()
{
  result = lazy protocol witness table cache variable for type SortOptions.ViewType.MusicVideos and conformance SortOptions.ViewType.MusicVideos;
  if (!lazy protocol witness table cache variable for type SortOptions.ViewType.MusicVideos and conformance SortOptions.ViewType.MusicVideos)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.ViewType.MusicVideos and conformance SortOptions.ViewType.MusicVideos);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.ViewType.Playlists and conformance SortOptions.ViewType.Playlists()
{
  result = lazy protocol witness table cache variable for type SortOptions.ViewType.Playlists and conformance SortOptions.ViewType.Playlists;
  if (!lazy protocol witness table cache variable for type SortOptions.ViewType.Playlists and conformance SortOptions.ViewType.Playlists)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.ViewType.Playlists and conformance SortOptions.ViewType.Playlists);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortOptions.ViewType.Detail and conformance SortOptions.ViewType.Detail()
{
  result = lazy protocol witness table cache variable for type SortOptions.ViewType.Detail and conformance SortOptions.ViewType.Detail;
  if (!lazy protocol witness table cache variable for type SortOptions.ViewType.Detail and conformance SortOptions.ViewType.Detail)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortOptions.ViewType.Detail and conformance SortOptions.ViewType.Detail);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SortOptions.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTag for SortOptions.ContentType(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *destructiveInjectEnumTag for SortOptions.ContentType(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t static MPModelPlaylist.artworkPlaceholderSystemImageName(for:)(uint64_t a1, char a2)
{
  result = 0x6F6E2E636973756DLL;
  if ((a2 & 1) == 0)
  {
    v4 = a1 - 1;
    if (v4 <= 2)
    {
      return *&aGearshapgenius[8 * v4];
    }
  }

  return result;
}

uint64_t MPModelPlaylist.artworkPlaceholderImage.getter()
{
  v1 = 0x6F6E2E636973756DLL;
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v2 = [v0 type] - 1;
    if (v2 <= 2)
    {
      return *&aGearshapgenius[8 * v2];
    }
  }

  return v1;
}

id MPModelPlaylist.preferredArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    goto LABEL_12;
  }

  v1 = [v0 type];
  if (v1 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v1) & 0x173) != 0)
  {
    result = MPModelPlaylist.coverArtworkCatalog.getter();
    if (!result)
    {
      result = [v0 artworkCatalog];
      if (!result)
      {
        if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
        {
          v3 = [v0 tracksTiledArtworkCatalogWithRows:2 columns:2];
          return v3;
        }

        return 0;
      }
    }

    return result;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 != 7 || ![v0 hasLoadedValueForKey:MPModelPropertyPlaylistEditorialArtwork] || (result = objc_msgSend(v0, "editorialArtworkCatalog")) == 0)
  {
LABEL_12:
    v3 = [v0 artworkCatalog];
    return v3;
  }

  return result;
}

char *ModelObjectBackedStoreItemMetadata.init(modelObject:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  *&v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 anyObject];
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v6 = [v7 innerObject];
LABEL_5:
    v8 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = a1;
LABEL_7:
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = [v9 identifiers];
  v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v11);
  v14 = v13;

  if (v14)
  {
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = a1;
    v18 = v15;

    v19 = &v18[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
    swift_beginAccess();
    *v19 = v12;
    *(v19 + 1) = v14;
  }

  else
  {

    type metadata accessor for ModelObjectBackedStoreItemMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v8 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  outlined init with copy of Date?(a2, v7);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  v13 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithStorePlatformDictionary:expirationDate:", v9.super.isa, isa);

  outlined destroy of TaskPriority?(a2, &_s10Foundation4DateVSgMd);
  return v14;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = specialized ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(a1, a2, a3);

  return v4;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(downloadAssetDictionary:)(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(downloadAssetDictionary:)(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id @objc ModelObjectBackedStoreItemMetadata.init(downloadAssetDictionary:)(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v8 = objc_msgSendSuper2(&v10, *a4, isa);

  return v8;
}

id CTRunRef.PartialRunView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

void ModelObjectBackedStoreItemMetadata.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ModelObjectBackedStoreItemMetadata.modelObject.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ModelObjectBackedStoreItemMetadata.modelObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *ModelObjectBackedStoreItemMetadata.appending(_:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v3 = objc_msgSendSuper2(&v14, "metadataByAppendingMetadata:", a1);
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;
  v8 = v5;

  v9 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  return v3;
}

uint64_t ModelObjectBackedStoreItemMetadata.artistName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.artistName.getter;
  *(v3 + 24) = v2;
  v9[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed () -> ();
  v9[3] = &block_descriptor_25;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t closure #1 in ModelObjectBackedStoreItemMetadata.artistName.getter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 artist];
      if (v10)
      {
LABEL_7:
        v13 = v10;
        v14 = [v10 name];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

LABEL_12:
          *a2 = v15;
          a2[1] = v17;
        }
      }

LABEL_9:

      goto LABEL_10;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v9 = v6;
      v10 = [v12 artist];
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v18 = result;
      v19 = v6;
      v20 = [v18 show];
      v21 = v20;
      if (!v20)
      {
        v22 = [v18 season];
        v15 = [v22 show];

        if (!v15)
        {

          goto LABEL_11;
        }

        v21 = v15;
        v20 = 0;
      }

      v23 = v20;
      v24 = [v21 title];

      if (v24)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v25;

        goto LABEL_12;
      }

LABEL_10:
      v15 = 0;
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = partial apply for closure #1 in ModelObjectBackedStoreItemMetadata.artistStoreID.getter;
  *(v5 + 24) = v4;
  aBlock[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_13_0;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void closure #1 in ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = [v6 artist];
LABEL_5:
      v8 = *a2;
      *a2 = v7;

      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = [v10 show];
      if (v12)
      {
        v13 = v12;

        v7 = v13;
      }

      else
      {
        v14 = [v10 season];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 show];

          v7 = v16;
        }

        else
        {

          v7 = 0;
        }
      }

      goto LABEL_5;
    }
  }
}