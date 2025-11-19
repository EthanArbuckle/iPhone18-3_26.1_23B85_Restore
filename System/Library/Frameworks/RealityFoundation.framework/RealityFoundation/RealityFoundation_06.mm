uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  result = MEMORY[0x1C68F4BF0](*(*v5 + 40), v6);
  v11 = -1 << *(v10 + 32);
  a2 = result & ~v11;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v6;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
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
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
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

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x1C68F4BD0](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v11 + 48) + 4 * a2) = v4;
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v6);
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMd, &_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMR);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        result = outlined copy of _Proto_MeshScope_v1(v19, v20, v21, v23);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(v23 + 64) = v22)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 80 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v21 = *(v18 + 48);
      v22 = *(v18 + 64);
      v23 = *(v4 + 48) + v17;
      v24 = *(v18 + 8);
      *v23 = *v18;
      *(v23 + 8) = v24;
      *(v23 + 16) = v19;
      *(v23 + 32) = v20;
      *(v23 + 48) = v21;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMd, &_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMR);
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
        v17 = 80 * (v14 | (v8 << 6));
        outlined init with copy of GeometricPin(*(v2 + 48) + v17, v18);
        result = outlined init with take of GeometricPin(v18, *(v4 + 48) + v17);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMd, &_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
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
        v22 = *(v3 + 72) * (v19 | (v13 << 6));
        outlined init with copy of UUID?(*(v7 + 48) + v22, v6);
        result = outlined init with take of UUID?(v6, *(v9 + 48) + v22);
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_16;
      }

      v21 = *(v11 + 8 * v13);
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
LABEL_16:

    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
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
    *v1 = v9;
  }

  return result;
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
}

{
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
}

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMd, &_ss11_SetStorageCy17RealityFoundation19_Proto_MeshScope_v1OGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_34:
    *v2 = v6;
    return result;
  }

  v32 = v2;
  v33 = v3;
  v7 = 0;
  v8 = v3 + 56;
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_17:
    v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
    v20 = *(v19 + 8);
    v34 = *v19;
    v21 = *(v19 + 16);
    v22 = *(v19 + 24);
    v23 = *(v6 + 40);
    Hasher.init(_seed:)();
    if (!v22)
    {
      v24 = 1;
      goto LABEL_21;
    }

    if (v22 == 1)
    {
      v24 = 2;
LABEL_21:
      MEMORY[0x1C68F4C10](v24);

      String.hash(into:)();
      specialized Set.hash(into:)(v35, v21);
      goto LABEL_23;
    }

    MEMORY[0x1C68F4C10](0);
LABEL_23:
    result = Hasher._finalize()();
    v25 = -1 << *(v6 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
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
        v31 = *(v13 + 8 * v27);
        if (v31 != -1)
        {
          v14 = __clz(__rbit64(~v31)) + (v27 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_36;
    }

    v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    v15 = *(v6 + 48) + 32 * v14;
    *v15 = v34;
    *(v15 + 8) = v20;
    *(v15 + 16) = v21;
    *(v15 + 24) = v22;
    ++*(v6 + 16);
    v3 = v33;
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {

      v2 = v32;
      goto LABEL_34;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v11 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMd, &_ss11_SetStorageCy17RealityFoundation12GeometricPinVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      outlined init with copy of GeometricPin(*(v3 + 48) + 80 * (v14 | (v7 << 6)), v26);
      v17 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      result = outlined init with take of GeometricPin(v26, *(v6 + 48) + 80 * v13);
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v25;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMd, &_ss11_SetStorageCy17RealityFoundation20InputTargetComponentV06DirectE4TypeV0hE6OptionOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v43 - v14;
  v15 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v16 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v50 = v4;
    v43 = v2;
    v19 = 0;
    v20 = v15 + 56;
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 56);
    v24 = (v21 + 63) >> 6;
    v48 = (v5 + 48);
    v49 = v15;
    v44 = (v5 + 8);
    v45 = (v5 + 32);
    v25 = result + 56;
    v46 = v9;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = *(v15 + 48);
      v51 = *(v9 + 72);
      v31 = v52;
      outlined init with copy of UUID?(v30 + v51 * (v27 | (v19 << 6)), v52);
      v32 = *(v18 + 40);
      Hasher.init(_seed:)();
      outlined init with copy of UUID?(v31, v12);
      v33 = v50;
      if ((*v48)(v12, 1, v50) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v34 = v47;
        (*v45)(v47, v12, v33);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        dispatch thunk of Hashable.hash(into:)();
        v35 = v34;
        v9 = v46;
        (*v44)(v35, v33);
      }

      result = Hasher._finalize()();
      v36 = -1 << *(v18 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v15 = v49;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = outlined init with take of UUID?(v52, *(v18 + 48) + v26 * v51);
      ++*(v18 + 16);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v29 = *(v20 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v18;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v17 + 16));
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v7 << 6)));
      result = MEMORY[0x1C68F4BD0](*(v6 + 40), v17, 4);
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 4 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation7ServiceOGMd, &_ss11_SetStorageCy17RealityFoundation7ServiceOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_18:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

unint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v2 + 16))
  {
    v6 = 0;
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
    for (i = (v7 + 63) >> 6; v9; ++*(v5 + 16))
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_14:
      v14 = *(v2 + 48) + 80 * (v11 | (v6 << 6));
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = *(v14 + 12);
      v26 = *(v14 + 32);
      v27 = *(v14 + 16);
      v24 = *(v14 + 64);
      v25 = *(v14 + 48);
      v18 = *(v5 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v15);
      if (v16 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v16;
      }

      Hasher._combine(_:)(LODWORD(v19));
      if (v17 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v17;
      }

      Hasher._combine(_:)(LODWORD(v20));
      specialized SIMD.hash(into:)(v28, v27);
      specialized SIMD.hash(into:)(v28, v26);
      specialized SIMD.hash(into:)(v28, v25);
      specialized SIMD.hash(into:)(v28, v24);
      Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = *(v5 + 48) + 80 * result;
      *v22 = v15;
      *(v22 + 8) = v16;
      *(v22 + 12) = v17;
      *(v22 + 16) = v27;
      *(v22 + 32) = v26;
      *(v22 + 48) = v25;
      *(v22 + 64) = v24;
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_22;
      }

      v13 = *(v2 + 56 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:

    *v23 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
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
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v19);
      v20 = -1 << *(v8 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_26;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v4 = v8;
  }

  return result;
}

{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
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
LABEL_17:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v19);
      result = Hasher._finalize()();
      v21 = -1 << *(v8 + 32);
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
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t specialized Dictionary.init(dictionaryLiteral:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v13 = v24 - v12;
  if (MEMORY[0x1C68F3740](a1, TupleTypeMetadata2, v11))
  {
    type metadata accessor for _DictionaryStorage();
    v14 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = MEMORY[0x1C68F3770](a1, TupleTypeMetadata2);
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = __RawDictionaryStorage.find<A>(_:)(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerSpec(unsigned __int16 *a1, unsigned int a2)
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
  v6 = v4 - 2;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerSpec(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata instantiation function for _Proto_MeshDeformation_v1.PartFromCore()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.PartFromCore(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.PartFromCore(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for _Proto_MeshDeformation_v1.CustomDeformerComponentStorage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd, &_ss11_SetStorageCySo16NSURLResourceKeyaGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

unint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10RealityKit9__REAssetC_Tt0g5Tf4g_n(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = __CocoaSet.count.getter();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!v2)
  {
LABEL_4:
    v5 = *(v4 + 16);
    if (!v5)
    {
      return v3;
    }

    goto LABEL_9;
  }

LABEL_8:
  result = __CocoaSet.count.getter();
  v5 = result;
  if (!result)
  {
    return v3;
  }

LABEL_9:
  v6 = v3 + 56;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      result = MEMORY[0x1C68F41F0](v7, v1);
      v8 = __OFADD__(v7++, 1);
      if (v8)
      {
        break;
      }

      v9 = result;
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v9 + 16));
      result = Hasher._finalize()();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v6 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      v16 = *(v3 + 48);
      if (((1 << v12) & v14) != 0)
      {
        v17 = ~v11;
        while (*(*(v16 + 8 * v12) + 16) != *(v9 + 16))
        {
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = *(v6 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
        if (v7 == v5)
        {
          return v3;
        }
      }

      else
      {
LABEL_17:
        *(v6 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v9;
        v18 = *(v3 + 16);
        v8 = __OFADD__(v18, 1);
        v19 = v18 + 1;
        if (v8)
        {
          goto LABEL_31;
        }

        *(v3 + 16) = v19;
        if (v7 == v5)
        {
          return v3;
        }
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    v20 = 0;
    v21 = v1 + 32;
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20 != v22)
    {
      v25 = *(v21 + 8 * v20);
      v26 = *(v3 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v25 + 16));
      result = Hasher._finalize()();
      v27 = -1 << *(v3 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      v32 = *(v3 + 48);
      if (((1 << v28) & v30) != 0)
      {
        v33 = ~v27;
        while (*(*(v32 + 8 * v28) + 16) != *(v25 + 16))
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_21:
        *(v6 + 8 * v29) = v31 | v30;
        *(v32 + 8 * v28) = v25;
        v23 = *(v3 + 16);
        v8 = __OFADD__(v23, 1);
        v24 = v23 + 1;
        if (v8)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v24;
      }

      if (++v20 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs6UInt32V_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x1C68F4BD0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC17RealityFoundation26ImagePresentationComponentV11ViewingModeV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMd, &_ss11_SetStorageCy17RealityFoundation26ImagePresentationComponentV11ViewingModeVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v27 = v4 + 1;
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          v14 = *(*(v3 + 48) + v10);
          if (v14 <= 1)
          {
            if (*(*(v3 + 48) + v10))
            {
              v15 = 0x536C616974617073;
            }

            else
            {
              v15 = 1869508461;
            }

            if (*(*(v3 + 48) + v10))
            {
              v16 = 0xED00006F65726574;
            }

            else
            {
              v16 = 0xE400000000000000;
            }

            if (v6 > 1)
            {
LABEL_23:
              v17 = 0xD000000000000012;
              if (v6 == 3)
              {
                v17 = 0x336C616974617073;
              }

              v18 = 0xE900000000000044;
              if (v6 != 3)
              {
                v18 = 0x80000001C18DDB70;
              }

              if (v6 == 2)
              {
                v19 = 0xD000000000000016;
              }

              else
              {
                v19 = v17;
              }

              if (v6 == 2)
              {
                v20 = 0x80000001C18DDB40;
              }

              else
              {
                v20 = v18;
              }

              if (v15 != v19)
              {
                goto LABEL_41;
              }

              goto LABEL_40;
            }
          }

          else if (v14 == 2)
          {
            v15 = 0xD000000000000016;
            v16 = 0x80000001C18DDB40;
            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (v14 == 3)
            {
              v15 = 0x336C616974617073;
            }

            else
            {
              v15 = 0xD000000000000012;
            }

            if (v14 == 3)
            {
              v16 = 0xE900000000000044;
            }

            else
            {
              v16 = 0x80000001C18DDB70;
            }

            if (v6 > 1)
            {
              goto LABEL_23;
            }
          }

          if (v6)
          {
            v20 = 0xED00006F65726574;
            if (v15 != 0x536C616974617073)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v20 = 0xE400000000000000;
            if (v15 != 1869508461)
            {
              goto LABEL_41;
            }
          }

LABEL_40:
          if (v16 == v20)
          {

            goto LABEL_4;
          }

LABEL_41:
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v21)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      *(v3 + 16) = v24;
LABEL_4:
      v4 = v27;
      if (v27 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

CGColorRef __AmbientLightComponent.init()@<X0>(uint64_t a1@<X8>)
{
  result = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  *a1 = result;
  *(a1 + 8) = 1143652352;
  return result;
}

void static __AmbientLightComponent.__fromCore(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  REAmbientLightComponentGetColorGamut3F();
  REAmbientLightComponentGetIntensity();
  v5 = v4;
  v6 = RECreateCGColorFromColorGamut();

  *a2 = v6;
  *(a2 + 8) = v5;
  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __AmbientLightComponent.__toCore(_:)(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 2);
  RECGColorToColorGamut();
  REAmbientLightComponentSetColorGamut3F();
  REAmbientLightComponentSetIntensity();
  result = RENetworkMarkComponentDirty();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t static __AmbientLightComponent.== infix(_:_:)(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v3 == v5);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __AmbientLightComponent(float *a1, float *a2)
{
  v2 = *a1;
  v3 = a1[2];
  v4 = *a2;
  v5 = a2[2];
  type metadata accessor for CGColorRef(0);
  lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef();
  return static _CFObject.== infix(_:_:)() & (v3 == v5);
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for __AmbientLightComponent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t storeEnumTagSinglePayload for __AmbientLightComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall RKChangeSceneActionSimulationTechnique.switchScenes()()
{
  v1 = *(v0 + 16);
  if (v1 && (v2 = *(v1 + 16), (SceneNullable = REEntityGetSceneNullable()) != 0))
  {
    v17 = v0;
    v4 = SceneNullable;
    v5 = RESceneGetSwiftObject();
    type metadata accessor for Scene();
    if (v5)
    {
      swift_dynamicCastClassUnconditional();
    }

    else
    {
      swift_allocObject();
      Scene.init(coreScene:)(v4);
    }

    Scene.__interactionService.getter();
    type metadata accessor for __RKEntityInteractionManager();
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = v7;
      swift_beginAccess();
      v9 = *(v8 + 48);
      v10 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v9 + 24);
        ObjectType = swift_getObjectType();
        v13 = *(v11 + 8);

        v6 = v13(v14, v17 + v10, ObjectType, v11);
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = 0;
      }

      specialized RKChangeSceneActionSimulationTechnique.reRegisterInteractions(rootEntity:)(v15);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t RKChangeSceneActionSimulationTechnique.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC17RealityFoundation33RKChangeSceneActionBasicTechnique_targetSceneIdentifier;
  v3 = type metadata accessor for UUID();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RKChangeSceneActionSimulationTechnique()
{
  result = type metadata singleton initialization cache for RKChangeSceneActionSimulationTechnique;
  if (!type metadata singleton initialization cache for RKChangeSceneActionSimulationTechnique)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized RKChangeSceneActionSimulationTechnique.reRegisterInteractions(rootEntity:)(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityInteractionsComponent.registration || (v2 = *(static __RKEntityInteractionsComponent.registration + 3), v3 = *(a1 + 16), !REEntityGetCustomComponent()) || (result = RECustomComponentGetObject()) == 0)
  {
    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v5 = *(result + 16);
  if (!v5)
  {
    v6 = __RKEntityInteractionsComponent.decodedJSON()();
LABEL_8:
    v7 = *(v6 + 16);

    if (!v7)
    {
      return result;
    }

    goto LABEL_9;
  }

  if (!*(v5 + 16))
  {
    return result;
  }

LABEL_9:
  if (static __RKEntityInteractionsComponent.registration && (v8 = *(static __RKEntityInteractionsComponent.registration + 3), v9 = *(a1 + 16), REEntityGetCustomComponent()) && (Object = RECustomComponentGetObject()) != 0)
  {
    v11 = *(Object + 16);
    if (v11)
    {
      v12 = *(Object + 16);
    }

    else
    {
      v11 = __RKEntityInteractionsComponent.decodedJSON()();
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  Entity.__interactions.setter(MEMORY[0x1E69E7CC0]);
  return Entity.__interactions.setter(v11);
}

uint64_t _s17RealityFoundation18InteractionsLoggerVyACs12StaticStringV_xSgtcRlzClufC0A3Kit6EntityC_Tt2g5@<X0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  if (a1)
  {
    _print_unlocked<A, B>(_:_:)();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x1C68F3410](v3, v4);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v5 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v5);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  *a2 = 91;
  a2[1] = 0xE100000000000000;
  return result;
}

uint64_t __RKEntityLookAtCameraAction.__allocating_init(targetEntity:duration:direction:upVector:)(float a1, __n128 a2, __n128 a3)
{
  type metadata accessor for __RKEntityLookAtCameraAction();
  v4 = swift_allocObject();
  *(v4 + 184) = 0u;
  *(v4 + 200) = 0u;
  *(v4 + 216) = 0u;
  *(v4 + 232) = 0u;
  *(v4 + 248) = 1;
  *(v4 + 256) = 0;
  *(v4 + 264) = 0;
  *(v4 + 108) = a1;
  *(v4 + 112) = 0;
  *(v4 + 128) = a2;
  *(v4 + 160) = a3;
  *(v4 + 176) = 0;
  *(v4 + 144) = 0;

  v6 = __RKEntityAction.init(targetEntity:)(v5);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v6;
}

uint64_t __RKEntityLookAtCameraAction.__allocating_init(targetEntity:duration:animationDuration:direction:rotation:upVector:loops:)(float a1, float a2, __n128 a3, float a4, __n128 a5, uint64_t a6, char a7)
{
  v11 = swift_allocObject();
  *(v11 + 184) = 0u;
  *(v11 + 200) = 0u;
  *(v11 + 216) = 0u;
  *(v11 + 232) = 0u;
  *(v11 + 248) = 1;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 108) = a1;
  *(v11 + 112) = a2;
  *(v11 + 128) = a3;
  *(v11 + 160) = a5;
  *(v11 + 176) = a7;
  *(v11 + 144) = a4;

  v13 = __RKEntityAction.init(targetEntity:)(v12);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v13;
}

uint64_t __RKEntityLookAtCameraAction.init(targetEntity:duration:animationDuration:direction:rotation:upVector:loops:)(float a1, float a2, __n128 a3, float a4, __n128 a5, uint64_t a6, char a7)
{
  *(v7 + 232) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 184) = 0u;
  *(v7 + 248) = 1;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 108) = a1;
  *(v7 + 112) = a2;
  *(v7 + 128) = a3;
  *(v7 + 160) = a5;
  *(v7 + 176) = a7;
  *(v7 + 144) = a4;

  v9 = __RKEntityAction.init(targetEntity:)(v8);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  return v9;
}

Swift::Void __swiftcall __RKEntityLookAtCameraAction.setFinalRotation()()
{
  v1 = *(v0 + 128);
  v2 = vextq_s8(v1, v1, 4uLL).u64[0];
  if (*v1.i32 == 0.0)
  {
    v3 = vceq_f32(v2, 3212836864);
    if (v3.i32[0] & v3.i32[1])
    {
      v4 = xmmword_1C1899C40;
LABEL_13:
      v8 = -0.017453;
LABEL_20:
      *(v0 + 256) = v4;
      goto LABEL_21;
    }

    if (*v1.i32 == 0.0)
    {
      v5 = vceq_f32(v2, 0x3F80000000000000);
      if (v5.i32[0] & v5.i32[1])
      {
        v4 = xmmword_1C1887660;
        goto LABEL_13;
      }

      if (*v1.i32 == 0.0)
      {
        v6 = vceq_f32(v2, 0xBF80000000000000);
        if (v6.i32[0] & v6.i32[1])
        {
          v4 = xmmword_1C1899C50;
          goto LABEL_13;
        }

        if (*v1.i32 == 0.0)
        {
          v7 = vceq_f32(v2, 1065353216);
          if (v7.i32[0] & v7.i32[1])
          {
            v4 = xmmword_1C1899C60;
            goto LABEL_13;
          }
        }
      }
    }
  }

  if (*v1.i32 == 1.0)
  {
    v9 = vceqz_f32(v2);
    if (v9.i32[0] & v9.i32[1])
    {
      v4 = xmmword_1C1899C70;
      v8 = 0.017453;
      goto LABEL_20;
    }
  }

  if (*v1.i32 != -1.0)
  {
    v8 = 0.017453;
    goto LABEL_21;
  }

  v10 = vceqz_f32(v2);
  v11 = v10.i8[0] & v10.i8[4];
  v8 = 0.017453;
  if (v11)
  {
    v4 = xmmword_1C1899C80;
    goto LABEL_20;
  }

LABEL_21:
  *(v0 + 144) = *(v0 + 144) * v8;
}

double __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(float32x4_t a1, float a2, double a3, float32x2_t a4, float a5)
{
  v6 = *(v5 + 160);
  if (*v6.i32 == 0.0 && (v7 = vceqz_f32(*&vextq_s8(v6, v6, 4uLL)), (v7.i32[0] & v7.i32[1] & 1) != 0))
  {
    REMakeLookAtPose();
    v18 = v8;
    v9 = *(v5 + 256);
    v17 = *(v5 + 128);
    __sincosf_stret(*(v5 + 144) * 0.5);
    return v18;
  }

  else
  {
    *a1.f32 = vsub_f32(*a1.f32, a4);
    v11 = a1;
    v11.f32[2] = a2 - a5;
    v12 = vmulq_f32(v11, v11);
    v10 = 0.0;
    if (sqrtf(v12.f32[2] + vaddv_f32(*v12.f32)) != 0.0)
    {
      v16 = *(v5 + 160);
      __sincosf_stret(*(v5 + 144) * 0.5);
      REMakeLookAtPose();
      v10 = v13;
      v14 = *(v5 + 256);
    }
  }

  return v10;
}

Swift::Void __swiftcall __RKEntityLookAtCameraAction.update()()
{
  v69 = StaticString.description.getter();
  v70 = v1;
  MEMORY[0x1C68F3410](8250, 0xE200000000000000);
  v3 = v69;
  v2 = v70;
  swift_beginAccess();
  v4 = *(v0 + 16);
  if (!v4)
  {
    v67 = v69;
    v68 = v70;
    v25 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v25, &v67);

    return;
  }

  v5 = *(v4 + 16);
  v6 = *(v0 + 16);

  SceneNullable = REEntityGetSceneNullable();
  if (SceneNullable)
  {
    v64.i64[0] = SceneNullable;
    RETransformComponentGetComponentType();
    ComponentByClass = REEntityGetComponentByClass();
    if (ComponentByClass)
    {
      v9 = ComponentByClass;
      RETransformComponentGetWorldSRT();
      v63 = v10;
      v65 = v11;
      v12 = static os_log_type_t.debug.getter();
      if (one-time initialization token for interactionsLoggingEnabled != -1)
      {
        v56 = v12;
        swift_once();
        v12 = v56;
      }

      v13 = interactionsLoggingEnabled;
      if (interactionsLoggingEnabled)
      {
        LODWORD(v61) = v12;
        v60 = &v57;
        LODWORD(v62) = 1;
        v67 = 0;
        v68 = 0xE000000000000000;
        _StringGuts.grow(_:)(23);

        v67 = 0xD000000000000015;
        v68 = 0x80000001C18DE6E0;
        v66 = v65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
        v14 = SIMD.description.getter();
        MEMORY[0x1C68F3410](v14);

        v15 = v67;
        v16 = v68;
        if (one-time initialization token for interactionsLogger != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        __swift_project_value_buffer(v17, interactionsLogger);

        v18 = Logger.logObject.getter();

        if (os_log_type_enabled(v18, v61))
        {
          v19 = swift_slowAlloc();
          v58 = v15;
          v20 = v19;
          v59 = swift_slowAlloc();
          v67 = v59;
          *v20 = 136315394;
          *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v67);
          *(v20 + 12) = 2080;
          v21 = v9;
          v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v16, &v67);

          *(v20 + 14) = v22;
          v9 = v21;
          v23 = v18;
          _os_log_impl(&dword_1C1358000, v18, v61, "%s%s", v20, 0x16u);
          v24 = v59;
          swift_arrayDestroy();
          MEMORY[0x1C6902A30](v24, -1, -1);
          MEMORY[0x1C6902A30](v20, -1, -1);
        }

        else
        {
        }

        v13 = v62;
      }

      if (RESceneFindFirstCameraComponent())
      {
        v28 = v65.f32[2];
        RECustomMatrixCameraComponentCalculateWorldPose();
        v64 = v29;
        v30 = v29.f32[2];
        v31 = static os_log_type_t.debug.getter();
        if (v13)
        {
          LODWORD(v61) = v31;
          v60 = &v57;
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v67 = 0xD000000000000014;
          v68 = 0x80000001C18DE6C0;
          v66 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
          v33 = SIMD.description.getter();
          MEMORY[0x1C68F3410](v33);

          v34 = v67;
          v35 = v68;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v36 = type metadata accessor for Logger();
          __swift_project_value_buffer(v36, interactionsLogger);

          v37 = Logger.logObject.getter();

          if (os_log_type_enabled(v37, v61))
          {
            v38 = swift_slowAlloc();
            v62 = v34;
            v39 = v38;
            v59 = swift_slowAlloc();
            v67 = v59;
            *v39 = 136315394;
            *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v67);
            *(v39 + 12) = 2080;
            v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v35, &v67);
            LODWORD(v62) = v13;
            v41 = v9;
            v42 = v40;

            *(v39 + 14) = v42;
            v9 = v41;
            v13 = v62;
            v43 = v37;
            _os_log_impl(&dword_1C1358000, v37, v61, "%s%s", v39, 0x16u);
            v44 = v59;
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v44, -1, -1);
            MEMORY[0x1C6902A30](v39, -1, -1);
          }

          else
          {
          }
        }

        __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(v64, v30, v32, *v65.f32, v28);
        v64 = v45;
        v46 = static os_log_type_t.debug.getter();
        if (v13)
        {
          v47 = v46;
          v62 = v9;
          v67 = 0;
          v68 = 0xE000000000000000;
          _StringGuts.grow(_:)(19);
          MEMORY[0x1C68F3410](0xD000000000000011, 0x80000001C18DE6A0);
          v66 = v64;
          type metadata accessor for simd_quatf(0);
          _print_unlocked<A, B>(_:_:)();
          v49 = v67;
          v48 = v68;
          if (one-time initialization token for interactionsLogger != -1)
          {
            swift_once();
          }

          v50 = type metadata accessor for Logger();
          __swift_project_value_buffer(v50, interactionsLogger);

          v51 = Logger.logObject.getter();

          if (os_log_type_enabled(v51, v47))
          {
            v52 = swift_slowAlloc();
            v61 = &v57;
            v53 = v52;
            v54 = swift_slowAlloc();
            v67 = v54;
            *v53 = 136315394;
            *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v2, &v67);
            *(v53 + 12) = 2080;
            v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v48, &v67);

            *(v53 + 14) = v55;
            _os_log_impl(&dword_1C1358000, v51, v47, "%s%s", v53, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1C6902A30](v54, -1, -1);
            MEMORY[0x1C6902A30](v53, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }

        RETransformComponentSetWorldAnimatedSRT();
        RENetworkMarkComponentDirty();
        REAnimationComponentGetComponentType();
        if (!REEntityGetComponentByClass() || (REAnimationComponentHasRunningAnimations() & 1) == 0)
        {
          RETransformComponentSetWorldOrientation();
        }

        goto LABEL_23;
      }
    }

    else
    {
      v67 = v69;
      v68 = v70;
      v27 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v27, &v67);
    }
  }

  else
  {
    v67 = v69;
    v68 = v70;
    v26 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v26, &v67);
  }

LABEL_23:
}

uint64_t __RKEntityLookAtCameraAction.createLookAtAnimation()()
{
  v13 = *MEMORY[0x1E69E9840];
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = *(v1 + 16);
  v3 = *(v0 + 16);

  if (!REEntityGetSceneNullable())
  {
    goto LABEL_9;
  }

  RETransformComponentGetComponentType();
  result = REEntityGetComponentByClass();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  RETransformComponentGetWorldPose();
  v11 = v5;
  RETransformComponentGetLocalUnanimatedSRT();
  if (!RESceneFindFirstCameraComponent() || (RECustomMatrixCameraComponentCalculateWorldPose(), v10 = v6, REAnimationComponentGetComponentType(), REEntityGetOrAddComponentByClass(), !RESceneGetECSManagerNullable()))
  {
LABEL_9:

LABEL_10:
    result = 0;
    goto LABEL_11;
  }

  ServiceLocator = REECSManagerGetServiceLocator();
  result = MEMORY[0x1C68FE1F0](ServiceLocator);
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __RKEntityLookAtCameraAction.getPose(cameraPose:currentPose:)(v10, v10.f32[2], v8, *&v11, *(&v11 + 2));
  RETransformComponentGetWorldOrientation();
  RETransformComponentSetWorldOrientation();
  RETransformComponentGetLocalUnanimatedSRT();
  RETransformComponentSetWorldOrientation();
  RENetworkMarkComponentDirty();
  REMakeSRT();
  REFromToByAnimationDefaultParameters();
  v12 = *(v0 + 112);
  result = REAssetManagerTimelineAssetCreateSRTAnimation();
  if (result)
  {
    *(v0 + 240) = REAnimationComponentPlay();
    *(v0 + 248) = 0;
    RERelease();

    result = 1;
LABEL_11:
    v9 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  v36 = 91;
  v37 = 0xE100000000000000;
  if (v4)
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    v38 = v4;

    _print_unlocked<A, B>(_:_:)();
    v6 = 0xE000000000000000;
    v5 = 0;
  }

  else
  {
    v6 = 0xE300000000000000;
    v5 = 7104878;
  }

  MEMORY[0x1C68F3410](v5, v6);

  MEMORY[0x1C68F3410](8285, 0xE200000000000000);
  v7 = StaticString.description.getter();
  MEMORY[0x1C68F3410](v7);

  MEMORY[0x1C68F3410](8250, 0xE200000000000000);

  v9 = v36;
  v8 = v37;
  v10 = *(v1 + 16);
  if (!v10)
  {
    v15 = static os_log_type_t.error.getter();
    specialized InteractionsLogger.log(_:_:)(v15, &v36);

    return 0;
  }

  swift_beginAccess();
  if (*(v1 + 104) == 1 && *(v1 + 96) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 105) == 1)
    {

LABEL_14:
      v16 = static os_log_type_t.info.getter();
      specialized InteractionsLogger.log(_:_:)(v16, &v36);

      return 0;
    }
  }

  v11 = *(v3 + 16);

  if (!RESceneGetECSManagerNullable())
  {
    goto LABEL_14;
  }

  v12 = *(v10 + 16);
  RERigidBodyComponentGetComponentType();
  ComponentByClass = REEntityGetComponentByClass();
  if (ComponentByClass)
  {
    MotionType = RERigidBodyComponentGetMotionType();
    if (MotionType != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  else
  {
    MotionType = 0;
  }

  v18 = *(v10 + 16);
  String.utf8CString.getter();

  REBindPointCreateReferenceForEntityAnimatedValuesSRT();

  IsValid = REBindPointIsValid();

  if (IsValid)
  {
    v20 = ComponentByClass == 0;
    REBindPointSetOverrideEnabled();
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v12;
    *(v22 + 32) = MotionType;
    *(v22 + 36) = v20;
    v23 = *(v2 + 32);
    v24 = *(v2 + 40);
    *(v2 + 32) = partial apply for specialized closure #1 in __RKEntityLookAtCameraAction.perform(with:);
    *(v2 + 40) = v22;

    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(v23);

    if (*(v2 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v25 = CACurrentMediaTime();
    }

    v26 = *(v2 + 112);
    *(v2 + 224) = v25 + *(v2 + 108);
    if (v26 >= 0.1)
    {
      if (*(v2 + 24))
      {
        REEngineGetCurrentTime();
      }

      else
      {
        v31 = CACurrentMediaTime();
      }

      *(v2 + 232) = v31 + *(v2 + 112);
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = partial apply for closure #2 in __RKEntityLookAtCameraAction.perform(with:);
    }

    else
    {
      v27 = *(v2 + 96);
      v28 = *(v2 + 104);
      *(v2 + 96) = 1;
      *(v2 + 104) = 1;
      v36 = v27;
      LOBYTE(v37) = v28;
      __RKEntityAction.state.didset(&v36);
      v35 = 0;
      v33 = 0u;
      v34 = 0u;
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = partial apply for closure #3 in __RKEntityLookAtCameraAction.perform(with:);
    }

    _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5(&v33, v30, v29, &v36);

    outlined destroy of BodyTrackingComponent?(&v33, &_s10RealityKit11EventSource_pSgMd, &_s10RealityKit11EventSource_pSgMR);
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v36, v2 + 184);
    swift_endAccess();
    v36 = v9;
    v37 = v8;
    v32 = static os_log_type_t.info.getter();
    specialized InteractionsLogger.log(_:_:)(v32, &v36);
    REBindPointDestroy();

    return 1;
  }

  else
  {
    result = REBindPointDestroy();
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #1 in __RKEntityLookAtCameraAction.perform(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    outlined init with copy of Cancellable?(v5 + 184, &v10);
    if (*(&v11 + 1))
    {
      outlined init with copy of __REAssetService(&v10, v9);
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
      __swift_project_boxed_opaque_existential_1(v9, v9[3]);
      dispatch thunk of Cancellable.cancel()();
      __swift_destroy_boxed_opaque_existential_1(v9);
    }

    else
    {
      outlined destroy of BodyTrackingComponent?(&v10, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
    }

    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    swift_beginAccess();
    outlined assign with take of Cancellable?(&v10, v5 + 184);
    swift_endAccess();
    swift_beginAccess();
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *(v6 + 16);
      v8 = *(v5 + 16);

      REAnimationComponentGetComponentType();
      if (REEntityGetComponentByClass())
      {
        if (REAnimationComponentHasRunningAnimations())
        {
          if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v5 + 104) == 1) && *(v5 + 96) == 3)
          {
            REAnimationComponentStopAllAnimations();
            RENetworkMarkComponentDirty();
          }
        }
      }

      *(v5 + 240) = 0;
      *(v5 + 248) = 1;
    }

    RERigidBodyComponentGetComponentType();
    if (REEntityGetComponentByClass() && (a3 & 0x100000000) == 0 && a3 != 1)
    {
      RERigidBodyComponentSetMotionType();
      RENetworkMarkComponentDirty();
    }
  }

  return result;
}

uint64_t closure #2 in __RKEntityLookAtCameraAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    if ((*(result + 249) & 1) == 0 && *(result + 112) >= 0.1)
    {
      *(result + 249) = __RKEntityLookAtCameraAction.createLookAtAnimation()() & 1;
      swift_beginAccess();
      v2 = *(v1 + 96);
      v3 = *(v1 + 104);
      *(v1 + 96) = 1;
      *(v1 + 104) = 1;
      v10 = v2;
      v11 = v3;

      __RKEntityAction.state.didset(&v10);
    }

    if (*(v1 + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v4 = CACurrentMediaTime();
    }

    if (*(v1 + 224) <= v4 && (*(v1 + 176) & 1) == 0)
    {
      swift_beginAccess();
      v5 = *(v1 + 96);
      v6 = *(v1 + 104);
      *(v1 + 96) = 2;
      *(v1 + 104) = 1;
      v10 = v5;
      v11 = v6;
      __RKEntityAction.state.didset(&v10);
      *(v1 + 249) = 0;
    }

    if (*(v1 + 24))
    {
      REEngineGetCurrentTime();
    }

    else
    {
      v7 = CACurrentMediaTime();
    }

    if (*(v1 + 232) <= v7)
    {
      swift_beginAccess();
      v8 = *(v1 + 16);

      if (v8)
      {
        v9 = *(v8 + 16);
        REAnimationComponentGetComponentType();
        if (REEntityGetComponentByClass())
        {
          if (REAnimationComponentHasRunningAnimations())
          {
            if ((REAnimationComponentAllAnimationsCompleted() & 1) != 0 || (swift_beginAccess(), *(v1 + 104) == 1) && *(v1 + 96) == 3)
            {
              REAnimationComponentStopAllAnimations();
              RENetworkMarkComponentDirty();
            }
          }
        }

        *(v1 + 240) = 0;
        *(v1 + 248) = 1;
      }

      *(v1 + 232) = *(v1 + 232) + *(v1 + 112);
      *(v1 + 249) = 0;
    }

    else
    {
    }
  }

  return result;
}

uint64_t _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6UpdateV_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6UpdateV_Tt0g5(a1, &v12);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SceneEvents.Update> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6UpdateVGMR);
  v9 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v11 = MEMORY[0x1E695BF08];
  a4[3] = result;
  a4[4] = v11;
  *a4 = v9;
  return result;
}

uint64_t _s10RealityKit5SceneC9subscribe2to2on_7Combine11Cancellable_pxm_AA11EventSource_pSgyxctAA0I0RzlFAA0C6EventsO6RenderV_Tt0g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  _s10RealityKit5SceneC0A10FoundationE9publisher3for2on13componentTypeAC9PublisherVy_xGxm_AA11EventSource_pSgAA9Component_pXpSgtAA0K0RzlFAA0C6EventsO6RenderV_Tt0g5(a1, &v12);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a2;
  v8[4] = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR);
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type Scene.Publisher<SceneEvents.Render> and conformance Scene.Publisher<A>, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMd, &_s10RealityKit5SceneC9PublisherVy_AA0C6EventsO6RenderVGMR);
  v9 = Publisher<>.sink(receiveValue:)();

  result = type metadata accessor for AnyCancellable();
  v11 = MEMORY[0x1E695BF08];
  a4[3] = result;
  a4[4] = v11;
  *a4 = v9;
  return result;
}

uint64_t closure #3 in __RKEntityLookAtCameraAction.perform(with:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    __RKEntityLookAtCameraAction.update()();
    if (*(v1 + 24))
    {

      REEngineGetCurrentTime();
    }

    else
    {

      v2 = CACurrentMediaTime();
    }

    if (*(v1 + 224) <= v2)
    {
      swift_beginAccess();
      v3 = *(v1 + 96);
      v4 = *(v1 + 104);
      *(v1 + 96) = 2;
      *(v1 + 104) = 1;
      v5 = v3;
      v6 = v4;
      __RKEntityAction.state.didset(&v5);
    }
  }

  return result;
}

uint64_t __RKEntityLookAtCameraAction.copy(with:)@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 144);
  v11 = *(v1 + 160);
  v12 = *(v1 + 128);
  v5 = *(v1 + 176);
  v6 = type metadata accessor for __RKEntityLookAtCameraAction();
  v7 = swift_allocObject();
  *(v7 + 184) = 0u;
  *(v7 + 200) = 0u;
  *(v7 + 216) = 0u;
  *(v7 + 232) = 0u;
  *(v7 + 248) = 1;
  *(v7 + 256) = 0;
  *(v7 + 264) = 0;
  *(v7 + 108) = *(v1 + 108);
  *(v7 + 128) = v12;
  *(v7 + 160) = v11;
  *(v7 + 176) = v5;
  *(v7 + 144) = v4;
  v8 = swift_retain_n();
  v9 = __RKEntityAction.init(targetEntity:)(v8);
  __RKEntityLookAtCameraAction.setFinalRotation()();

  a1[3] = v6;
  *a1 = v9;
  return result;
}

uint64_t __RKEntityLookAtCameraAction.clone(matching:newEntity:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 && *(a1 + 16) == *(v3 + 16))
  {
    v5 = *(v1 + 144);
    v10 = *(v1 + 160);
    v11 = *(v1 + 128);
    v6 = *(v1 + 176);
    type metadata accessor for __RKEntityLookAtCameraAction();
    v7 = swift_allocObject();
    *(v7 + 184) = 0u;
    *(v7 + 200) = 0u;
    *(v7 + 216) = 0u;
    *(v7 + 232) = 0u;
    *(v7 + 248) = 1;
    *(v7 + 256) = 0;
    *(v7 + 264) = 0;
    *(v7 + 108) = *(v1 + 108);
    *(v7 + 128) = v11;
    *(v7 + 160) = v10;
    *(v7 + 176) = v6;
    *(v7 + 144) = v5;

    v4 = __RKEntityAction.init(targetEntity:)(v8);
    __RKEntityLookAtCameraAction.setFinalRotation()();
  }

  else
  {
    __RKEntityLookAtCameraAction.copy(with:)(v13);
    type metadata accessor for __RKEntityAction();
    if (swift_dynamicCast())
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t __RKEntityLookAtCameraAction.deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return v0;
}

uint64_t __RKEntityLookAtCameraAction.__deallocating_deinit()
{
  swift_beginAccess();
  *(v0 + 96) = 2;
  *(v0 + 104) = 1;
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 32));
  v3 = *(v0 + 56);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 48));
  v4 = *(v0 + 64);

  v5 = *(v0 + 80);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed SynchronizationComponent.OwnershipTransferCompletionResult) -> ())?(*(v0 + 72));
  outlined destroy of BodyTrackingComponent?(v0 + 184, &_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  return swift_deallocClassInstance();
}

uint64_t specialized closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(void *a1, uint64_t a2, void (*a3)(void *))
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 16);
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(v7);
    }
  }

  return result;
}

uint64_t specialized closure #2 in Scene.subscribe<A>(to:on:componentType:rootEntity:matching:_:)(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t *))
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + 16);
    if (RESceneIsFromActiveRealityRendererSceneGroup())
    {
      a3(&v6);
    }
  }

  return result;
}

uint64_t outlined assign with take of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_54Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Cancellable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine11Cancellable_pSgMd, &_s7Combine11Cancellable_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t one-time initialization function for instances()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit02__A15FileURLResolverCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCy0A3Kit02__A15FileURLResolverCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverCTt0g5Tf4g_nTm(MEMORY[0x1E69E7CC0], &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverCGMR);
  *(v0 + 24) = result;
  static __RealityFileURLResolver.instances = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA02__A30FileARReferenceProvidingPluginCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA02__A30FileARReferenceProvidingPluginCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation02__E30FileARReferenceProvidingPluginCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __RealityFileARReferenceProvidingPlugin.instances = v0;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation26AssetServiceScopedRegistryCyAA31__USDARReferenceProvidingPluginCGMd, &_s17RealityFoundation26AssetServiceScopedRegistryCyAA31__USDARReferenceProvidingPluginCGMR);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation31__USDARReferenceProvidingPluginCTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = result;
  static __USDARReferenceProvidingPlugin.instances = v0;
  return result;
}

void *one-time initialization function for weakInstances()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static __RealityFileURLResolver.weakInstances = result;
  return result;
}

uint64_t static __RealityFileURLResolver.weakShared.setter(uint64_t a1)
{
  specialized static __RealityFileURLResolver.weakShared.setter(a1);
}

uint64_t static __RealityFileURLResolver.weakShared.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {

    specialized static __RealityFileURLResolver.weakShared.setter(v3);
  }

  else
  {
    specialized static __RealityFileURLResolver.weakShared.setter(v2);
  }
}

void *static __RealityFileURLResolver.shared.getter()
{
  v0 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v0 + 120, v7);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v1 = static __RealityFileURLResolver.instances;
  v2 = v8;
  v3 = v9;
  v4 = __swift_project_boxed_opaque_existential_1(v7, v8);

  v5 = specialized AssetServiceScopedRegistry.instance(for:)(v4, v1, v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

void *static __RealityFileURLResolver.instance(for:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return specialized static __RealityFileURLResolver.instance(for:)(v4, v1, v2, v3);
}

uint64_t __RealityFileURLResolver.__allocating_init()()
{
  v0 = swift_allocObject();
  __RealityFileURLResolver.init()();
  return v0;
}

void *__RealityFileURLResolver.init()()
{
  v1 = v0;
  v23 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v23 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v25 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, *MEMORY[0x1E69E8090], v23);
  v0[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = MEMORY[0x1E69E7CC0];
  v1[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v1[9] = v10;
  v11 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  outlined init with copy of __REAssetService(v11 + 120, (v1 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v12 = v1[5];
  v13 = v1[6];
  v14 = __swift_project_boxed_opaque_existential_1(v1 + 2, v12);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v19, v17);
  v20 = (*(v13 + 32))(v12, v13);
  (*(v15 + 8))(v19, v12);
  swift_weakInit();
  swift_weakAssign();
  v24[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v24, v20);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init());
  return v1;
}

uint64_t closure #1 in __RealityFileURLResolver.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for weakInstances != -1)
  {
LABEL_16:
    swift_once();
  }

  swift_beginAccess();
  v4 = static __RealityFileURLResolver.weakInstances;
  v5 = static __RealityFileURLResolver.weakInstances + 64;
  v6 = 1 << *(static __RealityFileURLResolver.weakInstances + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(static __RealityFileURLResolver.weakInstances + 8);
  v9 = (v6 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd;
  v23 = v4;
  do
  {
    while (1)
    {
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_14;
          }

          v8 = *&v5[8 * v12];
          ++v10;
          if (v8)
          {
            v10 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_16;
      }

LABEL_11:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      outlined init with copy of [String : String](v4[7] + ((v10 << 9) | (8 * v13)), v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

      outlined destroy of BodyTrackingComponent?(v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    }

    v15 = v11;
    v16 = *(Strong + 56);
    v17 = Strong;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = v17;
    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = a4;
    v19 = _Block_copy(aBlock);
    v20 = v16;

    dispatch_sync(v20, v19);

    v11 = v15;
    v4 = v23;
    _Block_release(v19);

    outlined destroy of BodyTrackingComponent?(v28, v11, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();
  }

  while ((isEscapingClosureAtFileLocation & 1) == 0);
  __break(1u);
LABEL_14:
}

uint64_t __RealityFileURLResolver.deinit()
{
  v1 = *(v0 + 56);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver();
  *(v2 + 24) = v0;
  v8[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v8[5] = v2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed () -> ();
  v8[3] = &block_descriptor;
  v3 = _Block_copy(v8);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v6 = *(v0 + 64);

    v7 = *(v0 + 72);

    return v0;
  }

  return result;
}

uint64_t __RealityFileURLResolver.__deallocating_deinit()
{
  __RealityFileURLResolver.deinit();

  return swift_deallocClassInstance();
}

uint64_t one-time initialization function for schemePrefix()
{
  result = MEMORY[0x1C68F3410](58, 0xE100000000000000);
  static __RealityFileURLResolver.schemePrefix = 0x7974696C616572;
  unk_1EBEA8A30 = 0xE700000000000000;
  return result;
}

uint64_t static __RealityFileURLResolver.schemePrefix.getter()
{
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v0 = static __RealityFileURLResolver.schemePrefix;

  return v0;
}

uint64_t __RealityFileURLResolver.registerRealityFileResolver(assetService:)()
{
  outlined init with copy of __REAssetService(v0 + 16, v6);
  v1 = v7;
  v2 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v2 + 32))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v6);
  outlined init with copy of __REAssetService(v0 + 16, v6);
  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 32))(v3, v4);
  String.utf8CString.getter();
  REAssetManagerRegisterAssetResolver();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::Void __swiftcall __RealityFileURLResolver.unregisterRealityFileResolver()()
{
  v1 = *(v0 + 56);
  v2 = swift_allocObject();
  *(v2 + 16) = closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver()partial apply;
  *(v2 + 24) = v0;
  v5[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = thunk for @escaping @callee_guaranteed () -> ();
  v5[3] = &block_descriptor_8;
  v3 = _Block_copy(v5);
  v4 = v1;

  dispatch_sync(v4, v3);

  _Block_release(v3);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

uint64_t closure #1 in __RealityFileURLResolver.unregisterRealityFileResolver()(uint64_t a1)
{
  v47[4] = *MEMORY[0x1E69E9840];
  v46 = type metadata accessor for URL();
  v43 = *(v46 - 8);
  v2 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v4 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v5 = *(a1 + 64);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = *(a1 + 64);
  *(a1 + 64) = v7;

  v9 = 0;
  v44 = *(a1 + 72);
  v45 = 0;
  *(a1 + 72) = v6;
  v10 = v5 + 64;
  v11 = v5;
  v12 = 1 << *(v5 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v5 + 64);
  v15 = (v12 + 63) >> 6;
  if (v14)
  {
    goto LABEL_6;
  }

  while (1)
  {
LABEL_7:
    v18 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
    }

    if (v18 >= v15)
    {
      break;
    }

    v14 = *(v10 + 8 * v18);
    ++v9;
    if (v14)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v20 = (*(v11 + 56) + ((v18 << 10) | (16 * v19)));
        v21 = *v20;
        v22 = v20[1];
        v23 = objc_opt_self();

        v24 = [v23 defaultManager];
        v25 = MEMORY[0x1C68F3280](v21, v22);

        v47[0] = 0;
        LODWORD(v22) = [v24 removeItemAtPath:v25 error:v47];

        if (v22)
        {
          v26 = v47[0];
          v9 = v18;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

        else
        {
          v16 = v47[0];
          v17 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v45 = 0;
          v9 = v18;
          if (!v14)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v18 = v9;
      }
    }
  }

  v27 = v44;
  v28 = *(v44 + 16);
  if (v28)
  {
    v45 = objc_opt_self();
    v29 = *(v43 + 16);
    v30 = v27 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v31 = *(v43 + 72);
    v32 = (v43 + 8);
    do
    {
      v34 = v46;
      v29(v4, v30, v46);
      v35 = [v45 defaultManager];
      URL._bridgeToObjectiveC()(v36);
      v38 = v37;
      (*v32)(v4, v34);
      v47[0] = 0;
      LODWORD(v34) = [v35 removeItemAtURL:v38 error:v47];

      if (v34)
      {
        v33 = v47[0];
      }

      else
      {
        v39 = v47[0];
        v40 = _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v30 += v31;
      --v28;
    }

    while (v28);
  }

  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __RealityFileURLResolver.resolvedURL(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - v7;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v17 = type metadata accessor for CharacterSet();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  v46 = a2;
  static CharacterSet.urlQueryAllowed.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
  v23 = v22;
  (*(v18 + 8))(v21, v17);
  if (!v23)
  {
    return (*(v10 + 56))(v44, 1, 1, v9);
  }

  URL.init(string:)();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of BodyTrackingComponent?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return (*(v10 + 56))(v44, 1, 1, v9);
  }

  v24 = *(v10 + 32);
  v24(v16, v8, v9);
  v25 = URL.pathComponents.getter();
  v26 = v25;
  v27 = *(v25 + 16);
  if (!v27)
  {
    goto LABEL_12;
  }

  v41 = v24;
  v42 = &v40;
  v28 = *(v43 + 56);
  MEMORY[0x1EEE9AC00](v25);
  *(&v40 - 2) = v29;
  *(&v40 - 1) = v26;
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  OS_dispatch_queue.sync<A>(execute:)();

  if (!v46)
  {
LABEL_12:
    (*(v10 + 8))(v16, v9);

    return (*(v10 + 56))(v44, 1, 1, v9);
  }

  URL.init(fileURLWithPath:)();

  v33 = v27 - 1;
  if (v27 == 1)
  {
LABEL_11:

    (*(v10 + 8))(v16, v9);
    v39 = v44;
    v41(v44, v14, v9);
    return (*(v10 + 56))(v39, 0, 1, v9);
  }

  v34 = *(v26 + 16);
  if (v34 >= 2 && v27 <= v34)
  {
    v35 = (v26 + 56);
    do
    {
      v36 = *(v35 - 1);
      v37 = *v35;

      v38._countAndFlagsBits = v36;
      v38._object = v37;
      URL.appendPathComponent(_:)(v38);

      v35 += 2;
      --v33;
    }

    while (v33);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in __RealityFileURLResolver.resolvedURL(for:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for schemePrefix != -1)
  {
    v16 = a2;
    swift_once();
    a2 = v16;
  }

  result = unk_1EBEA8A30;
  v17 = static __RealityFileURLResolver.schemePrefix;
  v18 = unk_1EBEA8A30;
  if (a2[2])
  {
    v6 = a2[4];
    v7 = a2[5];

    MEMORY[0x1C68F3410](v6, v7);

    swift_beginAccess();
    v8 = *(a1 + 64);
    if (*(v8 + 16) && (v9 = *(a1 + 64), , v10 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), v12 = v11, , (v12 & 1) != 0))
    {
      v13 = (*(v8 + 56) + 16 * v10);
      v15 = *v13;
      v14 = v13[1];
    }

    else
    {

      v15 = 0;
      v14 = 0;
    }

    *a3 = v15;
    a3[1] = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __RealityFileURLResolver.resolvedURL(group:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10._countAndFlagsBits = 47;
  v10._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v10) || (v11 = 47, v12 = 0xE100000000000000, v13._countAndFlagsBits = 47, v13._object = 0xE100000000000000, String.hasPrefix(_:)(v13)))
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v11, v12);

  MEMORY[0x1C68F3410](a3, a4);

  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  if (String.hasPrefix(_:)(static __RealityFileURLResolver.schemePrefix) && (lazy protocol witness table accessor for type String and conformance String(), v14 = StringProtocol.components<A>(separatedBy:)(), , (v15 = *(v14 + 16)) != 0))
  {
    v16 = (v14 + 16 + 16 * v15);
    v17 = *v16;
    v18 = v16[1];

    __RealityFileURLResolver.resolvedURL(for:)(v17, v18, a5);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1C1887600;
    _StringGuts.grow(_:)(53);
    MEMORY[0x1C68F3410](0xD000000000000027, 0x80000001C18DE8A0);
    MEMORY[0x1C68F3410](a1, a2);
    MEMORY[0x1C68F3410](0x20656D616E202C22, 0xE900000000000022);
    MEMORY[0x1C68F3410](a3, a4);
    MEMORY[0x1C68F3410](34, 0xE100000000000000);
    *(v20 + 56) = MEMORY[0x1E69E6158];
    *(v20 + 32) = 0;
    *(v20 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();

    v21 = type metadata accessor for URL();
    return (*(*(v21 - 8) + 56))(a5, 1, 1, v21);
  }
}

Swift::Void __swiftcall __RealityFileURLResolver.setResolvedURLPath(_:for:)(Swift::String _, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v6 = _._object;
  v7 = _._countAndFlagsBits;
  v8 = *(v3 + 56);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = countAndFlagsBits;
  v9[4] = object;
  v9[5] = v7;
  v9[6] = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in __RealityFileURLResolver.setResolvedURLPath(_:for:);
  *(v10 + 24) = v9;
  v13[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = thunk for @escaping @callee_guaranteed () -> ();
  v13[3] = &block_descriptor_18;
  v11 = _Block_copy(v13);
  v12 = v8;

  dispatch_sync(v12, v11);

  _Block_release(v11);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t closure #1 in __RealityFileURLResolver.setResolvedURLPath(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v43 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v49 = &v43 - v23;
  swift_beginAccess();
  v24 = *(a1 + 64);
  if (*(v24 + 16))
  {
    v25 = *(a1 + 64);

    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if (v27)
    {
      v45 = a2;
      v28 = (*(v24 + 56) + 16 * v26);
      v43 = v11;
      v29 = a5;
      v31 = *v28;
      v30 = v28[1];

      URL.init(fileURLWithPath:)();

      v32 = v48;
      v44 = a4;
      v46 = v29;
      v33 = v43;
      URL.init(fileURLWithPath:)();
      URL.standardized.getter();
      URL.standardized.getter();
      lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v35 = *(v33 + 8);
      v35(v16, v10);
      v35(v19, v10);
      if (v34)
      {
        v35(v32, v10);
        v35(v49, v10);
        a2 = v45;
        a5 = v46;
        a4 = v44;
      }

      else
      {
        (*(v33 + 16))(v47, v49, v10);
        v36 = *(a1 + 72);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 72) = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36[2] + 1, 1, v36);
          *(a1 + 72) = v36;
        }

        a4 = v44;
        v39 = v36[2];
        v38 = v36[3];
        if (v39 >= v38 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1, v36);
        }

        v36[2] = v39 + 1;
        (*(v33 + 32))(v36 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v39, v47, v10);
        *(a1 + 72) = v36;
        v35(v48, v10);
        v35(v49, v10);
        a2 = v45;
        a5 = v46;
      }
    }

    else
    {
    }
  }

  swift_beginAccess();

  v40 = *(a1 + 64);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *(a1 + 64);
  *(a1 + 64) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5, a2, a3, v41);

  *(a1 + 64) = v50;
  return swift_endAccess();
}

Swift::String __swiftcall __RealityFileURLResolver.createSchemePrefix(with:)(Swift::String with)
{
  object = with._object;
  countAndFlagsBits = with._countAndFlagsBits;
  if (one-time initialization token for schemePrefix != -1)
  {
    swift_once();
  }

  v6 = static __RealityFileURLResolver.schemePrefix;

  MEMORY[0x1C68F3410](countAndFlagsBits, object);
  v4 = *(&v6 + 1);
  v3 = v6;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall __RealityFileURLResolver.createSubAssetPath(with:)(Swift::String with)
{
  MEMORY[0x1C68F3410](with._countAndFlagsBits, with._object);
  v1 = 0x2F737465737361;
  v2 = 0xE700000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t __RealityFileURLResolver.createFullSchemePath(group:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7._countAndFlagsBits = 47;
  v7._object = 0xE100000000000000;
  if (String.hasSuffix(_:)(v7) || (v8 = 47, v9 = 0xE100000000000000, v10._countAndFlagsBits = 47, v10._object = 0xE100000000000000, String.hasPrefix(_:)(v10)))
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x1C68F3410](v8, v9);

  MEMORY[0x1C68F3410](a3, a4);

  return a1;
}

void *specialized static __RealityFileURLResolver.instance(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v8);
  if (one-time initialization token for instances != -1)
  {
    swift_once();
  }

  v11 = static __RealityFileURLResolver.instances;

  v12 = specialized AssetServiceScopedRegistry.instance(for:)(v10, v11, a3, a4);

  (*(v6 + 8))(v10, a3);
  return v12;
}

void *specialized AssetServiceScopedRegistry.instance(for:)(uint64_t a1, uint64_t a2)
{
  v29[3] = type metadata accessor for __REAssetManager();
  v29[4] = &protocol witness table for __REAssetManager;
  v29[0] = a1;
  v4 = *(a1 + 88);
  v5 = *(a2 + 16);

  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(a2 + 24);
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    os_unfair_lock_unlock(v5 + 4);
    outlined init with copy of __REAssetService(v29, aBlock);
    type metadata accessor for __RealityFileURLResolver();
    v10 = swift_allocObject();
    v11 = v25;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(aBlock, v25);
    v13 = *(*(v11 - 1) + 64);
    MEMORY[0x1EEE9AC00](v12);
    v15 = (&aBlock[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v9 = specialized __RealityFileURLResolver.init(_:)(*v15, v10);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    os_unfair_lock_lock(v5 + 4);
    swift_beginAccess();

    v17 = *(a2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *(a2 + 24);
    *(a2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v4, isUniquelyReferenced_nonNull_native);
    *(a2 + 24) = v28;
    swift_endAccess();
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v4;
    v26 = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v27 = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v25 = &block_descriptor_42;
    v21 = _Block_copy(aBlock);

    REAssetManagerAddCleanupCallback();
    _Block_release(v21);
  }

  os_unfair_lock_unlock(v5 + 4);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v9;
}

void *specialized __RealityFileURLResolver.init(_:)(uint64_t a1, void *a2)
{
  v15 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v19[3] = type metadata accessor for __REAssetManager();
  v19[4] = &protocol witness table for __REAssetManager;
  v16 = a1;
  v19[0] = a1;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v17 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8090], v15);
  a2[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = MEMORY[0x1E69E7CC0];
  a2[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a2[9] = v12;
  outlined init with copy of __REAssetService(v19, (a2 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v13 = *(v16 + 88);
  swift_weakInit();
  swift_weakAssign();
  v18[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v18, v13);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init(_:));
  __swift_destroy_boxed_opaque_existential_1(v19);
  return a2;
}

void *specialized __RealityFileURLResolver.init(_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v8 = *(v22 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_queue.Attributes();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v26[3] = a3;
  v26[4] = a4;
  v23 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  v17 = *(*(a3 - 8) + 32);
  v21[1] = boxed_opaque_existential_1;
  v17(boxed_opaque_existential_1, a1, a3);
  v21[0] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8090], v22);
  a2[7] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v18 = MEMORY[0x1E69E7CC0];
  a2[8] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  a2[9] = v18;
  outlined init with copy of __REAssetService(v26, (a2 + 2));
  if (one-time initialization token for weakInstances != -1)
  {
    swift_once();
  }

  v19 = (*(v23 + 32))(a3);
  swift_weakInit();
  swift_weakAssign();
  v25[8] = 0;
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v25, v19);
  swift_endAccess();
  atexit(@objc closure #1 in __RealityFileURLResolver.init(_:));
  __swift_destroy_boxed_opaque_existential_1(v26);
  return a2;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_So19REComponentClassPtraTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMd, &_ss18_DictionaryStorageCySOSo19REComponentClassPtraGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19REComponentClassPtra_10RealityKit9Component_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtra10RealityKit9Component_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCySO17RealityFoundation13ComponentInfoVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of [String : String](v23, v22, &_sSO_17RealityFoundation13ComponentInfoVtMd, &_sSO_17RealityFoundation13ComponentInfoVtMR);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[72];
    v11[3] = *&v23[56];
    v11[4] = v14;
    v11[1] = v12;
    v11[2] = v13;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of [String : String](v23, v22, &_sSO_17RealityFoundation13ComponentInfoVtMd, &_sSO_17RealityFoundation13ComponentInfoVtMR);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_17RealityFoundation13ComponentInfoVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMd, &_ss18_DictionaryStorageCys13OpaquePointerV17RealityFoundation13ComponentInfoVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 64);
  v5 = *(a1 + 96);
  *&v23[48] = *(a1 + 80);
  *&v23[64] = v5;
  *&v23[80] = *(a1 + 112);
  v6 = *(a1 + 48);
  *v23 = *(a1 + 32);
  *&v23[16] = v6;
  *&v23[32] = v4;
  v7 = *v23;
  result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    outlined init with copy of [String : String](v23, v22, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMd, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMR);
    return v3;
  }

  v10 = a1 + 120;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v7;
    v11 = (v3[7] + 80 * result);
    *v11 = *&v23[8];
    v12 = *&v23[24];
    v13 = *&v23[40];
    v14 = *&v23[72];
    v11[3] = *&v23[56];
    v11[4] = v14;
    v11[1] = v12;
    v11[2] = v13;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    outlined init with copy of [String : String](v23, v22, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMd, &_ss13OpaquePointerV_17RealityFoundation13ComponentInfoVtMR);
    v18 = *(v10 + 32);
    v19 = *(v10 + 64);
    *&v23[48] = *(v10 + 48);
    *&v23[64] = v19;
    *&v23[80] = *(v10 + 80);
    v20 = *(v10 + 16);
    *v23 = *v10;
    *&v23[16] = v20;
    *&v23[32] = v18;
    v7 = *v23;
    result = specialized __RawDictionaryStorage.find<A>(_:)(*v23);
    v10 += 88;
    if (v21)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt32V_17RealityFoundation9LoadTraceVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt32V_17RealityFoundation9LoadTraceVtMd, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMd, &_ss18_DictionaryStorageCys6UInt32V17RealityFoundation9LoadTraceVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMd, &_ss6UInt32V_17RealityFoundation9LoadTraceVtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      Trace = type metadata accessor for LoadTrace(0);
      result = outlined init with take of LoadTrace(v6 + v9, v16 + *(*(Trace - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMd, &_ss18_DictionaryStorageCySS17RealityFoundation12EntityAction_SeSEpXp6action_Se_SEpXp9parametertGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i = (i + 72))
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v16 = i[1];
      v17 = *i;
      v15 = i[2];
      v7 = *(i + 6);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[7] + 56 * result;
      *v11 = v17;
      *(v11 + 16) = v16;
      *(v11 + 32) = v15;
      *(v11 + 48) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMd, &_ss18_DictionaryStorageCySOSDy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15ActionEventTypeV_So20RESubscriptionHandleaTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMd, &_ss18_DictionaryStorageCy17RealityFoundation15ActionEventTypeVSo20RESubscriptionHandleaGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 1);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMd, &_ss18_DictionaryStorageCySO17RealityFoundation21ActionHandlerProtocol_pSg0C3Kit27AnimationPlaybackControllerC_AC0E9EventDataVSbS2dAF8__EngineCSVAF6EntityCSgtcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_17RealityFoundation19ForceEffectProtocol_SeSEpXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMd, &_ss18_DictionaryStorageCySO17RealityFoundation19ForceEffectProtocol_SeSEpXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 56); ; i = (i + 40))
    {
      v5 = *(i - 3);
      v12 = *i;
      v13 = *(i - 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = (v3[7] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit15TextureResourceCSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMd, &_ss18_DictionaryStorageCySS10RealityKit15TextureResourceCSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit9Component_pXpTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v9 = *(i - 1);
      v15 = *i;
      result = a4(v9);
      if (v11)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 16 * result) = v15;
      v12 = v7[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v7[2] = v14;
      if (!--v4)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11REAssetTypeV_17RealityFoundation16LoadableResource_pXpTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11REAssetTypeV17RealityFoundation16LoadableResource_pXpGMd, &_ss18_DictionaryStorageCySo11REAssetTypeV17RealityFoundation16LoadableResource_pXpGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 2);
      v11 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit13AudioResourceCTt0gq5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = a4(v9, v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation13AudioMixGroupVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMd, &_ss18_DictionaryStorageCySS17RealityFoundation13AudioMixGroupVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v4;
  v28[0] = *(a1 + 96);
  *(v28 + 9) = *(a1 + 105);
  v5 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v5;
  v7 = *(&v24 + 1);
  v6 = v24;
  outlined init with copy of [String : String](&v24, v23, &_sSS_17RealityFoundation13AudioMixGroupVtMd, &_sSS_17RealityFoundation13AudioMixGroupVtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 128);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + 80 * result);
    *v12 = v25;
    v13 = v26;
    v14 = v27;
    v15 = v28[0];
    *(v12 + 57) = *(v28 + 9);
    v12[2] = v14;
    v12[3] = v15;
    v12[1] = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 6;
    v20 = v10[3];
    v26 = v10[2];
    v27 = v20;
    v28[0] = v10[4];
    *(v28 + 9) = *(v10 + 73);
    v21 = v10[1];
    v24 = *v10;
    v25 = v21;
    v7 = *(&v24 + 1);
    v6 = v24;
    outlined init with copy of [String : String](&v24, v23, &_sSS_17RealityFoundation13AudioMixGroupVtMd, &_sSS_17RealityFoundation13AudioMixGroupVtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_SayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMd, &_ss18_DictionaryStorageCys6UInt64VSayAD16audioPlayerToken_s5UInt8V9groupSizeAD016transportControlF0tGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMd, &_ss18_DictionaryStorageCys13OpaquePointerV10RealityKit02__E15FileURLResolverC4Weak013_E37E9A4A00F7L18D3DDD061C85B1FFBD5LLVy_AGGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 16)
    {
      outlined init with copy of [String : String](i, &v11, &_ss13OpaquePointerV_10RealityKit02__C15FileURLResolverC4Weak013_E37E9A4A00F7J18D3DDD061C85B1FFBD5LLVy_AEGtMd, &_ss13OpaquePointerV_10RealityKit02__C15FileURLResolverC4Weak013_E37E9A4A00F7J18D3DDD061C85B1FFBD5LLVy_AEGtMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(&v12, v3[7] + 8 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SayAC34__RKEntityInteractionSpecificationVGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSayAC34__RKEntityInteractionSpecificationVGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_AETt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_s10Foundation4UUIDV_ACtMd, &_s10Foundation4UUIDV_ACtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 32);
      v18 = *(v16 + 72) * v13;
      v17(v14 + v18, v6, v15);
      result = (v17)(v8[7] + v18, &v6[v23], v15);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs10AnyKeyPathC_17RealityFoundation07_Proto_C21AnimatableProperty_v1VyAE16OpacityComponentVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Say10RealityKit30__RKEntityTriggerSpecificationOG0C10Foundation19USDDecodableContextVcTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v15 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v5[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      *(v5[7] + 16 * result) = v15;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s13OpaquePointerVTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ADTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaADGMd, &_ss18_DictionaryStorageCySo11CFStringRefaADGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit6EntityC_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMd, &_ss18_DictionaryStorageCy10RealityKit6EntityCSbGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v4;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = result;
    *(v3[7] + v8) = v5 & 1;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 16;
    v15 = *(v10 - 1);
    v5 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v15);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMd, &_ss18_DictionaryStorageCys17CodingUserInfoKeyVypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_ss17CodingUserInfoKeyV_yptMd, &_ss17CodingUserInfoKeyV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_ScTy0C3Kit02__F8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersVScTy0C3Kit02__F8ResourceCs5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v24 = v4[4];
      v25 = v6;
      v7 = v4[7];
      v26 = v4[6];
      v27 = v7;
      v8 = v4[1];
      v21[0] = *v4;
      v21[1] = v8;
      v9 = v4[3];
      v22 = v4[2];
      v23 = v9;
      v10 = *(&v7 + 1);
      v30 = v22;
      v31 = v9;
      v28 = v21[0];
      v29 = v8;
      v35 = *(v4 + 14);
      v33 = v6;
      v34 = v26;
      v32 = v24;
      outlined init with copy of [String : String](v21, &v20, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_ScTy0A3Kit02__D8ResourceCs5Error_pGtMd, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_ScTy0A3Kit02__D8ResourceCs5Error_pGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v28);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 120 * result;
      v14 = v33;
      *(v13 + 64) = v32;
      *(v13 + 80) = v14;
      *(v13 + 96) = v34;
      *(v13 + 112) = v35;
      v15 = v29;
      *v13 = v28;
      *(v13 + 16) = v15;
      v16 = v31;
      *(v13 + 32) = v30;
      *(v13 + 48) = v16;
      *(v3[7] + 8 * result) = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation14CustomMaterialV0E16ShaderParametersV_0C3Kit02__F8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation14CustomMaterialV0E16ShaderParametersV0C3Kit02__F8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    for (i = v1 - 1; ; --i)
    {
      v6 = v4[5];
      v24 = v4[4];
      v25 = v6;
      v7 = v4[7];
      v26 = v4[6];
      v27 = v7;
      v8 = v4[1];
      v21[0] = *v4;
      v21[1] = v8;
      v9 = v4[3];
      v22 = v4[2];
      v23 = v9;
      v10 = *(&v7 + 1);
      v30 = v22;
      v31 = v9;
      v28 = v21[0];
      v29 = v8;
      v35 = *(v4 + 14);
      v33 = v6;
      v34 = v26;
      v32 = v24;
      outlined init with copy of [String : String](v21, &v20, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_0A3Kit02__D8ResourceCtMd, &_s17RealityFoundation14CustomMaterialV0C16ShaderParametersV_0A3Kit02__D8ResourceCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(&v28);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 120 * result;
      v14 = v33;
      *(v13 + 64) = v32;
      *(v13 + 80) = v14;
      *(v13 + 96) = v34;
      *(v13 + 112) = v35;
      v15 = v29;
      *v13 = v28;
      *(v13 + 16) = v15;
      v16 = v31;
      *(v13 + 32) = v30;
      *(v13 + 48) = v16;
      *(v3[7] + 8 * result) = v10;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_11;
      }

      v3[2] = v19;
      if (!i)
      {

        return v3;
      }

      v4 += 8;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_ScTyAC02__F8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVScTyAC02__F8ResourceCs5Error_pGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 37);
  v8 = *(a1 + 40);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v3[6] + 6 * v11;
    *v14 = v4 & 1;
    *(v14 + 2) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 2;
    v4 = *(v13 - 8);
    v5 = *(v13 - 3);
    v6 = *(v13 - 4);
    v7 = *(v13 - 3);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit13UnlitMaterialV0E16ShaderParametersV_AC02__F8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMd, &_ss18_DictionaryStorageCy10RealityKit13UnlitMaterialV0E16ShaderParametersVAC02__F8ResourceCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 34);
  v6 = *(a1 + 36);
  v7 = *(a1 + 37);
  v8 = *(a1 + 40);
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = v9;
  result = v8;
  v13 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v11;
    v14 = v3[6] + 6 * v11;
    *v14 = v4 & 1;
    *(v14 + 2) = v5;
    *(v14 + 4) = v6;
    *(v14 + 5) = v7;
    *(v3[7] + 8 * v11) = result;
    v15 = v3[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v3[2] = v17;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v18 = v13 + 2;
    v4 = *(v13 - 8);
    v5 = *(v13 - 3);
    v6 = *(v13 - 4);
    v7 = *(v13 - 3);
    v19 = *v13;

    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v4 | (v5 << 16) | (v6 << 32) | (v7 << 40));
    v13 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_ScTy0C3Kit02__G8ResourceCs5Error_pGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersVScTy0C3Kit02__G8ResourceCs5Error_pGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (v2 + 56); ; i += 4)
    {
      v18 = v1;
      v5 = *(i - 24);
      v6 = *(i - 11);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;
      LODWORD(v2) = v2 & 0xFF00 | v5 | (v6 << 16);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v2, v7, (v9 << 8) | (v10 << 16) | v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 2) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 17) = v9;
      *(v14 + 18) = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;

      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV_0C3Kit02__G8ResourceCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMd, &_ss18_DictionaryStorageCy17RealityFoundation23PhysicallyBasedMaterialV19PBRShaderParametersV0C3Kit02__G8ResourceCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (v2 + 56); ; i += 4)
    {
      v18 = v1;
      v5 = *(i - 24);
      v6 = *(i - 11);
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *(i - 7);
      v10 = *(i - 6);
      v11 = *i;
      LODWORD(v2) = v2 & 0xFF00 | v5 | (v6 << 16);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v2, v7, (v9 << 8) | (v10 << 16) | v8);
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v3[6] + 24 * result;
      *v14 = v5;
      *(v14 + 2) = v6;
      *(v14 + 8) = v7;
      *(v14 + 16) = v8;
      *(v14 + 17) = v9;
      *(v14 + 18) = v10;
      *(v3[7] + 8 * result) = v11;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;

      v1 = v18 - 1;
      if (v18 == 1)
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10RealityKit18__MaterialResourceC15BuildParametersV5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10RealityKit18__MaterialResourceC15BuildParametersV5ValueOGMd, &_ss18_DictionaryStorageCySS10RealityKit18__MaterialResourceC15BuildParametersV5ValueOGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 48)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 32 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10RealityKit9__REAssetC_0C10Foundation17RESceneDescriptorCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMd, &_ss18_DictionaryStorageCy10RealityKit9__REAssetC0C10Foundation17RESceneDescriptorCGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo15CIContextOptiona_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo15CIContextOptionaypGMd, &_ss18_DictionaryStorageCySo15CIContextOptionaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v11, &_sSo15CIContextOptiona_yptMd, &_sSo15CIContextOptiona_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v11, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of Any(&v12, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC16AlchemistService10ALCServiceC16GenerationOptionO_ypTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMd, &_ss18_DictionaryStorageCy16AlchemistService10ALCServiceC16GenerationOptionOypGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMd, &_s16AlchemistService10ALCServiceC16GenerationOptionO_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ALCService.GenerationOption();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = outlined init with take of Any(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMd, &_ss18_DictionaryStorageCy17RealityFoundation15EmitterAssetKey33_FBB855774C32D6121558AC20A575B6E9LLVSiGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6, v7);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 24 * result);
      *v11 = v5;
      v11[1] = v6;
      v11[2] = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation29StateMachineParameterProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss18_DictionaryStorageCySS17RealityFoundation29StateMachineParameterProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v13, &_sSS_17RealityFoundation29StateMachineParameterProtocol_ptMd, &_sSS_17RealityFoundation29StateMachineParameterProtocol_ptMR);
      v5 = v13;
      v6 = v14;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = outlined init with take of ForceEffectBase(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_17RealityFoundation18MaterialParametersV5ValueOTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = static _DictionaryStorage.allocate(capacity:)();

  v10 = *(a1 + 80);
  v32 = *(a1 + 64);
  v33 = v10;
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v11 = *(a1 + 48);
  v30 = *(a1 + 32);
  v31 = v11;
  v13 = *(&v30 + 1);
  v12 = v30;
  outlined init with copy of [String : String](&v30, v29, a4, a5);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
  if (v15)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v9;
  }

  v16 = (a1 + 128);
  while (1)
  {
    *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v17 = (v9[6] + 16 * result);
    *v17 = v12;
    v17[1] = v13;
    v18 = v9[7] + 80 * result;
    *v18 = v31;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    *(v18 + 64) = v35;
    *(v18 + 32) = v20;
    *(v18 + 48) = v21;
    *(v18 + 16) = v19;
    v22 = v9[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      break;
    }

    v9[2] = v24;
    if (!--v5)
    {
      goto LABEL_8;
    }

    v25 = v16 + 6;
    v26 = v16[3];
    v32 = v16[2];
    v33 = v26;
    v34 = v16[4];
    v35 = *(v16 + 80);
    v27 = v16[1];
    v30 = *v16;
    v31 = v27;
    v13 = *(&v30 + 1);
    v12 = v30;
    outlined init with copy of [String : String](&v30, v29, a4, a5);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v12, v13);
    v16 = v25;
    if (v28)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSV_17RealityFoundation21ActionHandlerProtocol_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMd, &_ss18_DictionaryStorageCySV17RealityFoundation21ActionHandlerProtocol_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of [String : String](i, &v11, &_sSV_17RealityFoundation21ActionHandlerProtocol_ptMd, &_sSV_17RealityFoundation21ActionHandlerProtocol_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of ForceEffectBase(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_ScTyyts5NeverOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_ScTyyts5NeverOGtMd, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMd, &_s10Foundation4UUIDV_ScTyyts5NeverOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_So13simd_float4x4aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMd, &_ss18_DictionaryStorageCySiSo13simd_float4x4aSgGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v16 = *(a1 + 80);
  v17 = *(a1 + 96);
  v18 = *(a1 + 112);
  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v8 = v3[7] + 80 * result;
    *(v8 + 64) = v18;
    *(v8 + 32) = v16;
    *(v8 + 48) = v17;
    *v8 = v14;
    *(v8 + 16) = v15;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      return v3;
    }

    v12 = v7 + 6;
    v4 = *(v7 - 2);
    v16 = v7[2];
    v17 = v7[3];
    v18 = *(v7 + 64);
    v14 = *v7;
    v15 = v7[1];
    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v12;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation21PhotogrammetrySessionC4PoseVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation21PhotogrammetrySessionC4PoseVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 144)
    {
      outlined init with copy of [String : String](i, &v18, &_sSi_17RealityFoundation21PhotogrammetrySessionC4PoseVtMd, &_sSi_17RealityFoundation21PhotogrammetrySessionC4PoseVtMR);
      v5 = v18;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      v8 = v3[7] + (result << 7);
      v9 = v19;
      v10 = v20;
      v11 = v22;
      *(v8 + 32) = v21;
      *(v8 + 48) = v11;
      *v8 = v9;
      *(v8 + 16) = v10;
      v12 = v23;
      v13 = v24;
      v14 = v25;
      *(v8 + 112) = v26;
      *(v8 + 80) = v13;
      *(v8 + 96) = v14;
      *(v8 + 64) = v12;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_10Foundation3URLVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_10Foundation3URLVtMd, &_sSi_10Foundation3URLVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10Foundation3URLVGMd, &_ss18_DictionaryStorageCySi10Foundation3URLVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of [String : String](v10, v6, &_sSi_10Foundation3URLVtMd, &_sSi_10Foundation3URLVtMR);
      v12 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for URL();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation11MeshBuffersO10IdentifierV_AC0E12BufferErased_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMd, &_ss18_DictionaryStorageCy17RealityFoundation11MeshBuffersO10IdentifierVAC0E12BufferErased_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, &v15, &_s17RealityFoundation11MeshBuffersO10IdentifierV_AA0C12BufferErased_ptMd, &_s17RealityFoundation11MeshBuffersO10IdentifierV_AA0C12BufferErased_ptMR);
      v5 = v18 ? 256 : 0;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v5 | v17);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = v3[6] + 24 * result;
      v9 = v16;
      v10 = v17;
      v11 = v18;
      *v8 = v15;
      *(v8 + 8) = v9;
      *(v8 + 16) = v10;
      *(v8 + 17) = v11;
      result = outlined init with take of ForceEffectBase(&v19, v3[7] + 40 * result);
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_13;
      }

      v3[2] = v14;
      v4 += 64;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_17RealityFoundation16BufferDescriptorVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMd, &_ss18_DictionaryStorageCySi17RealityFoundation16BufferDescriptorVGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 57);
  v9 = *(a1 + 58);
  v10 = *(a1 + 59);
  v24 = a1;
  v11 = *(a1 + 60);
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v6;
  v16 = (v24 + 92);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 8 * v14) = v4;
    v17 = v3[7] + 24 * v14;
    *v17 = v5;
    *(v17 + 8) = result;
    *(v17 + 16) = v7 & 1;
    *(v17 + 17) = v8 & 1;
    *(v17 + 18) = v9;
    *(v17 + 19) = v10;
    *(v17 + 20) = v11 & 1;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v16 + 32;
    v4 = *(v16 - 28);
    v25 = *(v16 - 20);
    v22 = *(v16 - 12);
    v7 = *(v16 - 4);
    v8 = *(v16 - 3);
    v9 = *(v16 - 2);
    v10 = *(v16 - 1);
    v11 = *v16;

    v14 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v16 = v21;
    result = v22;
    v5 = v25;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs5Int32VGMd, &_ss18_DictionaryStorageCySSs5Int32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSO_SSTt0g5Tf4g_nTm(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = a4(v8);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v13 = v11;
  result = v10;
  v15 = a1 + 9;
  while (1)
  {
    *(v7 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    *(v7[6] + 8 * v13) = v8;
    v16 = (v7[7] + 16 * v13);
    *v16 = v9;
    v16[1] = result;
    v17 = v7[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v7[2] = v19;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v20 = v15 + 3;
    v8 = *(v15 - 2);
    v9 = *(v15 - 1);
    v21 = *v15;

    v13 = a4(v8);
    v15 = v20;
    result = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of [String : String](v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
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
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_s5Int32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMd, &_ss18_DictionaryStorageCys13OpaquePointerVs5Int32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs13OpaquePointerV_10RealityKit02__E15FileURLResolverCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v15 = *(a1 + 32);
  result = specialized __RawDictionaryStorage.find<A>(_:)(*(a1 + 32));
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v8 = (a1 + 48);
  v9 = v3 - 1;
  while (1)
  {
    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v5[6] + 8 * result) = v15;
    *(v5[7] + 8 * result) = *(&v15 + 1);
    v10 = v5[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v5[2] = v12;
    if (!v9)
    {
      goto LABEL_8;
    }

    v13 = *v8++;
    v15 = v13;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    --v9;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefaSg_So09CFBooleanD0aSgTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaSgSo09CFBooleanD0aSgGMd, &_ss18_DictionaryStorageCySo11CFStringRefaSgSo09CFBooleanD0aSgGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_AETt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMd, &_ss18_DictionaryStorageCy17RealityFoundation23ExtrudedGlyphDescriptorV4InfoVAEGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  *&v30[16] = *(a1 + 96);
  *&v30[32] = v4;
  v5 = *(a1 + 144);
  *&v30[48] = *(a1 + 128);
  *&v30[64] = v5;
  v6 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v6;
  v7 = *(a1 + 80);
  v29 = *(a1 + 64);
  *v30 = v7;
  v34 = *(a1 + 80);
  v32 = v6;
  v33 = v29;
  v31 = v27;
  outlined init with copy of [String : String](&v27, v26, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMR);
  result = specialized __RawDictionaryStorage.find<A>(_:)(&v31);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 160);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = v3[6] + 56 * result;
    v12 = v32;
    *v11 = v31;
    *(v11 + 16) = v12;
    *(v11 + 32) = v33;
    *(v11 + 48) = v34;
    v13 = v3[7] + 72 * result;
    v14 = *&v30[72];
    v15 = *&v30[56];
    v16 = *&v30[40];
    *(v13 + 16) = *&v30[24];
    *(v13 + 32) = v16;
    *(v13 + 48) = v15;
    *(v13 + 64) = v14;
    *v13 = *&v30[8];
    v17 = v3[2];
    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (v18)
    {
      break;
    }

    v3[2] = v19;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v20 = v10 + 8;
    v21 = v10[5];
    *&v30[16] = v10[4];
    *&v30[32] = v21;
    v22 = v10[7];
    *&v30[48] = v10[6];
    *&v30[64] = v22;
    v23 = v10[1];
    v27 = *v10;
    v28 = v23;
    v24 = v10[3];
    v29 = v10[2];
    *v30 = v24;
    v34 = *(v10 + 6);
    v32 = v23;
    v33 = v29;
    v31 = v27;
    outlined init with copy of [String : String](&v27, v26, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMd, &_s17RealityFoundation23ExtrudedGlyphDescriptorV4InfoV_ACtMR);
    result = specialized __RawDictionaryStorage.find<A>(_:)(&v31);
    v10 = v20;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}