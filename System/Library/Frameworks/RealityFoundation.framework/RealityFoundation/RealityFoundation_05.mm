void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = (*(v4 + 56) + 80 * v19);
        v23 = v21[1];
        v22 = v21[2];
        v24 = v21[4];
        v33 = v21[3];
        v34 = v24;
        v30 = *v21;
        v31 = v23;
        v32 = v22;
        *(*(v6 + 48) + 8 * v19) = v20;
        v25 = (*(v6 + 56) + 80 * v19);
        *v25 = v30;
        v26 = v31;
        v27 = v32;
        v28 = v34;
        v25[3] = v33;
        v25[4] = v28;
        v25[1] = v26;
        v25[2] = v27;
        result = outlined init with copy of ComponentInfo(&v30, &v29);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
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

      v18 = *(v4 + 64 + 8 * v10);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = (*(v4 + 56) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        v23 = (*(v6 + 56) + 16 * v19);
        *v23 = v22;
        v23[1] = v21;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 16 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 16 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
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

      v18 = *(v4 + 64 + 8 * v10);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v39 = *(v35 - 8);
  v2 = v39[8];
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v31 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVAEGMR);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v38 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v33 = v39 + 4;
    v34 = v39 + 2;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v40 = (v16 - 1) & v16;
LABEL_14:
        v21 = v39;
        v22 = v39[9] * (v18 | (v12 << 6));
        v23 = v39[2];
        v25 = v35;
        v24 = v36;
        v23(v36, *(v6 + 48) + v22, v35);
        v26 = v37;
        v23(v37, *(v6 + 56) + v22, v25);
        v27 = v6;
        v28 = v38;
        v29 = v21[4];
        v29(*(v38 + 48) + v22, v24, v25);
        v30 = *(v28 + 56);
        v6 = v27;
        result = (v29)(v30 + v22, v26, v25);
        v16 = v40;
      }

      while (v40);
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

        v1 = v31;
        v8 = v38;
        goto LABEL_18;
      }

      v20 = *(v32 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v40 = (v20 - 1) & v20;
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

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV10RealityKit6EntityCGMR);
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

{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVScTyyts5NeverOGGMR);
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

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo13USKObjectPathCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(__int128 *, uint64_t *))
{
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *v3;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v25 = *v23;
        v24 = v23[1];
        v21 *= 80;
        v26 = *(v6 + 56) + v21;
        v28 = *(v26 + 16);
        v27 = *(v26 + 32);
        v29 = *(v26 + 48);
        v40 = *(v26 + 64);
        v39 = v29;
        v36 = *v26;
        v37 = v28;
        v38 = v27;
        v30 = (*(v8 + 48) + v22);
        *v30 = v25;
        v30[1] = v24;
        v31 = *(v8 + 56) + v21;
        *v31 = v36;
        v32 = v37;
        v33 = v38;
        v34 = v39;
        *(v31 + 64) = v40;
        *(v31 + 32) = v33;
        *(v31 + 48) = v34;
        *(v31 + 16) = v32;

        result = a3(&v36, &v35);
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
        goto LABEL_19;
      }

      v20 = *(v6 + 64 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
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

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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

        result = v22;
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

uint64_t specialized static InternalBindPath.entityNameFromKey(_:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    return 0;
  }

  v22[2] = a1;
  v22[3] = a2;
  v22[0] = 0x7365697469746E65;
  v22[1] = 0xE90000000000005BLL;
  v9 = type metadata accessor for Locale();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  lazy protocol witness table accessor for type String and conformance String();
  v10 = StringProtocol.range<A>(of:options:range:locale:)();
  v12 = v11;
  v14 = v13;
  outlined destroy of BodyTrackingComponent?(v7, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v15 = String.index(before:)();
  if ((v14 & 1) != 0 || v10 >> 14)
  {
    goto LABEL_14;
  }

  v16 = v15;
  if (String.subscript.getter() == 93 && v17 == 0xE100000000000000)
  {

    goto LABEL_12;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v19 & 1) == 0)
  {
LABEL_14:

    return a1;
  }

LABEL_12:
  if (v16 >> 14 >= v12 >> 14)
  {
    v20 = String.subscript.getter();
    MEMORY[0x1C68F3380](v20);

    String.utf8CString.getter();

    v21 = REBindKeyUnescape();

    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t specialized static BindPath.Part.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 6)
  {
    if (*(a1 + 16) <= 1u)
    {
      if (*(a1 + 16))
      {
        if (v7 != 1)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          v11 = 1;
          outlined copy of BindPath.Part(*a1, v3, 1u);
          outlined copy of BindPath.Part(v2, v3, 1u);
          outlined consume of BindPath.Part(v2, v3, 1u);
          outlined consume of BindPath.Part(v2, v3, 1u);
          return v11 & 1;
        }

        v15 = *a1;
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 1u);
        outlined copy of BindPath.Part(v5, v6, 1u);
        outlined consume of BindPath.Part(v2, v3, 1u);
        v17 = v5;
        v18 = v6;
        v19 = 1;
      }

      else
      {
        if (*(a2 + 16))
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0);
          outlined copy of BindPath.Part(v2, v3, 0);
          outlined consume of BindPath.Part(v2, v3, 0);
          v12 = v2;
          v13 = v3;
          v14 = 0;
          goto LABEL_75;
        }

        v25 = *a1;
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0);
        outlined copy of BindPath.Part(v5, v6, 0);
        outlined consume of BindPath.Part(v2, v3, 0);
        v17 = v5;
        v18 = v6;
        v19 = 0;
      }
    }

    else if (v4 == 2)
    {
      if (v7 != 2)
      {
        goto LABEL_76;
      }

      if (v2 == v5 && v3 == v6)
      {
        outlined copy of BindPath.Part(*a1, v3, 2u);
        outlined copy of BindPath.Part(v2, v3, 2u);
        outlined consume of BindPath.Part(v2, v3, 2u);
        v12 = v2;
        v13 = v3;
        v14 = 2;
        goto LABEL_75;
      }

      v22 = *a1;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BindPath.Part(v2, v3, 2u);
      outlined copy of BindPath.Part(v5, v6, 2u);
      outlined consume of BindPath.Part(v2, v3, 2u);
      v17 = v5;
      v18 = v6;
      v19 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        if (v4 == 6 && v7 == 6)
        {
          outlined consume of BindPath.Part(*a1, v3, 6u);
          outlined consume of BindPath.Part(v5, v6, 6u);
          if (v3)
          {
            v11 = v6;
          }

          else
          {
            v11 = (v2 == v5) & ~v6;
          }

          return v11 & 1;
        }

        goto LABEL_76;
      }

      if (v7 != 3)
      {
LABEL_76:
        outlined copy of BindPath.Part(*a1, v3, v4);
        outlined copy of BindPath.Part(v5, v6, v7);
        outlined consume of BindPath.Part(v2, v3, v4);
        outlined consume of BindPath.Part(v5, v6, v7);
        v11 = 0;
        return v11 & 1;
      }

      if (v2 == v5 && v3 == v6)
      {
        outlined copy of BindPath.Part(*a1, v3, 3u);
        outlined copy of BindPath.Part(v2, v3, 3u);
        outlined consume of BindPath.Part(v2, v3, 3u);
        v12 = v2;
        v13 = v3;
        v14 = 3;
        goto LABEL_75;
      }

      v20 = *a1;
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of BindPath.Part(v2, v3, 3u);
      outlined copy of BindPath.Part(v5, v6, 3u);
      outlined consume of BindPath.Part(v2, v3, 3u);
      v17 = v5;
      v18 = v6;
      v19 = 3;
    }
  }

  else
  {
    if (*(a1 + 16) <= 9u)
    {
      if (v4 == 7)
      {
        if (v7 == 7)
        {
          outlined consume of BindPath.Part(*a1, v3, 7u);
          v8 = v5;
          v9 = v6;
          v10 = 7;
          goto LABEL_51;
        }
      }

      else if (v4 == 8)
      {
        if (v7 == 8)
        {
          outlined consume of BindPath.Part(*a1, v3, 8u);
          v8 = v5;
          v9 = v6;
          v10 = 8;
          goto LABEL_51;
        }
      }

      else if (v4 == 9 && v7 == 9)
      {
        outlined consume of BindPath.Part(*a1, v3, 9u);
        v8 = v5;
        v9 = v6;
        v10 = 9;
LABEL_51:
        outlined consume of BindPath.Part(v8, v9, v10);
        v11 = v2 == v5;
        return v11 & 1;
      }

      goto LABEL_76;
    }

    switch(v4)
    {
      case 0xAu:
        if (v7 != 10)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0xAu);
          outlined copy of BindPath.Part(v2, v3, 0xAu);
          outlined consume of BindPath.Part(v2, v3, 0xAu);
          v12 = v2;
          v13 = v3;
          v14 = 10;
          goto LABEL_75;
        }

        v23 = *a1;
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0xAu);
        outlined copy of BindPath.Part(v5, v6, 0xAu);
        outlined consume of BindPath.Part(v2, v3, 0xAu);
        v17 = v5;
        v18 = v6;
        v19 = 10;
        break;
      case 0xBu:
        if (v7 != 11)
        {
          goto LABEL_76;
        }

        if (v2 == v5 && v3 == v6)
        {
          outlined copy of BindPath.Part(*a1, v3, 0xBu);
          outlined copy of BindPath.Part(v2, v3, 0xBu);
          outlined consume of BindPath.Part(v2, v3, 0xBu);
          v12 = v2;
          v13 = v3;
          v14 = 11;
          goto LABEL_75;
        }

        v21 = *a1;
        v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindPath.Part(v2, v3, 0xBu);
        outlined copy of BindPath.Part(v5, v6, 0xBu);
        outlined consume of BindPath.Part(v2, v3, 0xBu);
        v17 = v5;
        v18 = v6;
        v19 = 11;
        break;
      case 0xCu:
        if (v2 > 1)
        {
          if (v2 ^ 2 | v3)
          {
            if (v2 ^ 4 | v3 || v7 != 12 || v5 != 4 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v12 = 4;
          }

          else
          {
            if (v7 != 12 || v5 != 2 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v12 = 2;
          }
        }

        else
        {
          if (v2 | v3)
          {
            if (v2 ^ 1 | v3 || v7 != 12 || v5 != 1 || v6)
            {
              goto LABEL_76;
            }

            outlined consume of BindPath.Part(*a1, v3, 0xCu);
            v11 = 1;
            outlined consume of BindPath.Part(1, 0, 0xCu);
            return v11 & 1;
          }

          if (v7 != 12 || v6 | v5)
          {
            goto LABEL_76;
          }

          outlined consume of BindPath.Part(*a1, v3, 0xCu);
          v12 = 0;
        }

        v13 = 0;
        v14 = 12;
LABEL_75:
        outlined consume of BindPath.Part(v12, v13, v14);
        v11 = 1;
        return v11 & 1;
      default:
        goto LABEL_76;
    }
  }

  outlined consume of BindPath.Part(v17, v18, v19);
  return v16 & 1;
}

uint64_t specialized static BindTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 != 1)
      {
        v16 = *a1;
        if (v7 == 2)
        {
          outlined copy of BindTarget(*a2, *(a2 + 8), 2u);
          outlined copy of BindTarget(v3, v2, 2u);
          v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ17RealityFoundation8BindPathV4PartO_Tt1g5(v3, v5);
          outlined consume of BindTarget(v3, v2, 2u);
          v18 = v5;
          v19 = v6;
          v20 = 2;
          goto LABEL_47;
        }

LABEL_30:

        goto LABEL_31;
      }

      if (v7 == 1)
      {
        if (v3 == v5 && v2 == v6)
        {
          v8 = 1;
          outlined copy of BindTarget(*a1, v2, 1u);
          outlined copy of BindTarget(v3, v2, 1u);
          outlined consume of BindTarget(v3, v2, 1u);
          outlined consume of BindTarget(v3, v2, 1u);
          return v8 & 1;
        }

        v23 = *a1;
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindTarget(v5, v6, 1u);
        outlined copy of BindTarget(v3, v2, 1u);
        outlined consume of BindTarget(v3, v2, 1u);
        v18 = v5;
        v19 = v6;
        v20 = 1;
        goto LABEL_47;
      }
    }

    else if (!*(a2 + 16))
    {
      v12 = *a1;
      v13 = String.lowercased()();
      v14 = String.lowercased()();
      if (v13._countAndFlagsBits == v14._countAndFlagsBits && v13._object == v14._object)
      {
        v8 = 1;
      }

      else
      {
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      outlined copy of BindTarget(v5, v6, 0);
      outlined copy of BindTarget(v3, v2, 0);

      outlined consume of BindTarget(v3, v2, 0);
      outlined consume of BindTarget(v5, v6, 0);
      return v8 & 1;
    }

    goto LABEL_29;
  }

  if (*(a1 + 16) > 4u)
  {
    if (v4 != 5)
    {
      if (v3 <= 1)
      {
        if (v3 | v2)
        {
          if (v7 == 6 && v5 == 1 && !v6)
          {
            outlined consume of BindTarget(*a1, v2, 6u);
            v8 = 1;
            outlined consume of BindTarget(1, 0, 6u);
            return v8 & 1;
          }

          goto LABEL_31;
        }

        if (v7 != 6 || v6 | v5)
        {
LABEL_31:
          outlined copy of BindTarget(v5, v6, v7);
          outlined consume of BindTarget(v3, v2, v4);
          outlined consume of BindTarget(v5, v6, v7);
          v8 = 0;
          return v8 & 1;
        }

        outlined consume of BindTarget(*a1, v2, 6u);
        v9 = 0;
      }

      else if (v3 ^ 2 | v2)
      {
        if (v3 ^ 3 | v2)
        {
          if (v7 != 6 || v5 != 4 || v6)
          {
            goto LABEL_31;
          }

          outlined consume of BindTarget(*a1, v2, 6u);
          v9 = 4;
        }

        else
        {
          if (v7 != 6 || v5 != 3 || v6)
          {
            goto LABEL_31;
          }

          outlined consume of BindTarget(*a1, v2, 6u);
          v9 = 3;
        }
      }

      else
      {
        if (v7 != 6 || v5 != 2 || v6)
        {
          goto LABEL_31;
        }

        outlined consume of BindTarget(*a1, v2, 6u);
        v9 = 2;
      }

      v10 = 0;
      v11 = 6;
      goto LABEL_57;
    }

    if (v7 == 5)
    {
      if (v3 != v5 || v2 != v6)
      {
        v24 = *a1;
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of BindTarget(v5, v6, 5u);
        outlined copy of BindTarget(v3, v2, 5u);
        outlined consume of BindTarget(v3, v2, 5u);
        v18 = v5;
        v19 = v6;
        v20 = 5;
        goto LABEL_47;
      }

      outlined copy of BindTarget(*a1, v2, 5u);
      outlined copy of BindTarget(v3, v2, 5u);
      outlined consume of BindTarget(v3, v2, 5u);
      v9 = v3;
      v10 = v2;
      v11 = 5;
LABEL_57:
      outlined consume of BindTarget(v9, v10, v11);
      v8 = 1;
      return v8 & 1;
    }

LABEL_29:
    v21 = *(a1 + 8);
    goto LABEL_30;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      outlined consume of BindTarget(*a1, v2, 3u);
      outlined consume of BindTarget(v5, v6, 3u);
      v8 = v3 == v5;
      return v8 & 1;
    }

    goto LABEL_31;
  }

  if (v7 != 4)
  {
    goto LABEL_29;
  }

  if (v3 == v5 && v2 == v6)
  {
    outlined copy of BindTarget(*a1, v2, 4u);
    outlined copy of BindTarget(v3, v2, 4u);
    outlined consume of BindTarget(v3, v2, 4u);
    v9 = v3;
    v10 = v2;
    v11 = 4;
    goto LABEL_57;
  }

  v25 = *a1;
  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
  outlined copy of BindTarget(v5, v6, 4u);
  outlined copy of BindTarget(v3, v2, 4u);
  outlined consume of BindTarget(v3, v2, 4u);
  v18 = v5;
  v19 = v6;
  v20 = 4;
LABEL_47:
  outlined consume of BindTarget(v18, v19, v20);
  return v17 & 1;
}

unint64_t specialized static InternalBindPath.pathFromTarget(_:_:)(uint64_t a1, char a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v5 != 1)
      {
        v61 = 0;
        v11 = *(v4 + 16);
        if (!v11)
        {
          return 0;
        }

        v12 = (v4 + 48);
        v13 = 1;
        do
        {
          v17 = *(v12 - 2);
          v18 = *(v12 - 1);
          v19 = *v12;
          outlined copy of BindPath.Part(v17, v18, *v12);
          if ((v13 & 1) == 0)
          {
            MEMORY[0x1C68F3410](46, 0xE100000000000000);
          }

          v12 += 24;
          switch(v19)
          {
            case 1:
              if (v13)
              {

                v61 = 0x2F2F3A656E656373;
              }

              if (a2)
              {
                String.utf8CString.getter();
                v51 = REBindKeyEscape();

                v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v54 = v53;

                MEMORY[0x1C68F3410](v52, v54);

                MEMORY[0x1C68F3410](93, 0xE100000000000000);
                v34 = 0x7365697469746E65;
                v35 = 0xE90000000000005BLL;
              }

              else
              {

                v34 = v17;
                v35 = v18;
              }

              MEMORY[0x1C68F3410](v34, v35);
              v14 = v17;
              v15 = v18;
              v16 = 1;
              goto LABEL_18;
            case 2:
              if (a2)
              {
                String.utf8CString.getter();
                v42 = REBindKeyEscape();

                v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v45 = v44;

                MEMORY[0x1C68F3410](v43, v45);

                MEMORY[0x1C68F3410](93, 0xE100000000000000);
                v28 = 0x7365697469746E65;
                v29 = 0xE90000000000005BLL;
              }

              else
              {

                v28 = v17;
                v29 = v18;
              }

              MEMORY[0x1C68F3410](v28, v29);
              v14 = v17;
              v15 = v18;
              v16 = 2;
              goto LABEL_18;
            case 3:
              _StringGuts.grow(_:)(26);

              if (a2)
              {
                String.utf8CString.getter();
                v46 = REBindKeyEscape();

                v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v31 = v48;

                v30 = v47;
              }

              else
              {

                v30 = v17;
                v31 = v18;
              }

              MEMORY[0x1C68F3410](v30, v31);

              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD000000000000017, 0x80000001C18DE510);
              v14 = v17;
              v15 = v18;
              v16 = 3;
              goto LABEL_18;
            case 4:
              _StringGuts.grow(_:)(34);

              v59 = 0xD00000000000001FLL;
              v24 = 0x80000001C18DE460;
              goto LABEL_34;
            case 5:
              _StringGuts.grow(_:)(34);

              MEMORY[0x1C68F3410](v17, v18);
              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD00000000000001FLL, 0x80000001C18DE460);
              v14 = v17;
              v15 = v18;
              v16 = 5;
              goto LABEL_18;
            case 6:
              _StringGuts.grow(_:)(34);

              v59 = 0xD00000000000001ELL;
              v60 = 0x80000001C18DE420;
              v36 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v36);

              v37 = 23849;
              v38 = 0xE200000000000000;
              goto LABEL_49;
            case 7:
              v59 = 0;
              v60 = 0xE000000000000000;
              v32 = 0x5B73746567726174;
              v33 = 0xE800000000000000;
              goto LABEL_47;
            case 8:
              v59 = 0;
              v60 = 0xE000000000000000;
              _StringGuts.grow(_:)(17);
              v32 = 0x615474416B6F6F6CLL;
              v33 = 0xEE005B7374656772;
LABEL_47:
              MEMORY[0x1C68F3410](v32, v33);
              _print_unlocked<A, B>(_:_:)();
              goto LABEL_48;
            case 9:
              _StringGuts.grow(_:)(31);

              v59 = 0xD00000000000001CLL;
              v24 = 0x80000001C18DE400;
LABEL_34:
              v60 = v24;
              v27 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1C68F3410](v27);

LABEL_48:
              v37 = 93;
              v38 = 0xE100000000000000;
LABEL_49:
              MEMORY[0x1C68F3410](v37, v38);
              MEMORY[0x1C68F3410](v59, v60);
              goto LABEL_19;
            case 10:

              MEMORY[0x1C68F3410](v17, v18);
              outlined consume of BindPath.Part(v17, v18, 0xAu);
              outlined consume of BindPath.Part(v17, v18, 0xAu);
              break;
            case 11:
              _StringGuts.grow(_:)(30);

              if (a2)
              {
                String.utf8CString.getter();
                v39 = REBindKeyEscape();

                v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v23 = v41;

                v22 = v40;
              }

              else
              {

                v22 = v17;
                v23 = v18;
              }

              MEMORY[0x1C68F3410](v22, v23);

              MEMORY[0x1C68F3410](93, 0xE100000000000000);
              MEMORY[0x1C68F3410](0xD00000000000001BLL, 0x80000001C18DE4B0);
              v14 = v17;
              v15 = v18;
              v16 = 11;
LABEL_18:
              outlined consume of BindPath.Part(v14, v15, v16);
LABEL_19:

              break;
            case 12:
              if (v17 <= 1)
              {
                if (v17 | v18)
                {
                  v25 = 0xD00000000000001DLL;
                  v26 = "SkeletalPose.skeletalPoses[";
                }

                else
                {
                  v25 = 0xD000000000000013;
                  v26 = "SkeletalPose.skeletalPoses[0]";
                }
              }

              else if (v17 ^ 2 | v18)
              {
                if (v17 ^ 3 | v18)
                {
                  v25 = 0xD000000000000015;
                  v26 = "IKParametersComponent.solvers[";
                }

                else
                {
                  v25 = 0xD000000000000021;
                  v26 = "BlendShapeWeights.blendWeights[";
                }
              }

              else
              {
                v25 = 0xD000000000000018;
                v26 = ") is not an entity.";
              }

              MEMORY[0x1C68F3410](v25, v26 | 0x8000000000000000);
              break;
            default:

              if (a2)
              {
                String.utf8CString.getter();
                v49 = REBindKeyEscape();

                v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v21 = v50;
              }

              else
              {

                v20 = v17;
                v21 = v18;
              }

              MEMORY[0x1C68F3410](v20, v21);

              outlined consume of BindPath.Part(v17, v18, 0);
              v61 = 0x3A65636976726573;
              break;
          }

          v13 = 0;
          --v11;
        }

        while (v11);
        return v61;
      }

      _StringGuts.grow(_:)(26);

      v61 = 0xD000000000000017;
      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    v10 = *(a1 + 8);
  }

  else
  {
    if (*(a1 + 16) <= 4u)
    {
      if (v5 != 3)
      {
        _StringGuts.grow(_:)(34);

        v61 = 0xD00000000000001FLL;
        MEMORY[0x1C68F3410](v4, v3);
        goto LABEL_67;
      }

      _StringGuts.grow(_:)(34);

      v61 = 0xD00000000000001FLL;
      v6 = dispatch thunk of CustomStringConvertible.description.getter();
LABEL_13:
      MEMORY[0x1C68F3410](v6, v7);

LABEL_67:
      MEMORY[0x1C68F3410](93, 0xE100000000000000);
      return v61;
    }

    if (v5 == 5)
    {
      _StringGuts.grow(_:)(30);

      v61 = 0xD00000000000001BLL;
      if (a2)
      {
LABEL_11:
        String.utf8CString.getter();
        v8 = REBindKeyEscape();

        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = v9;

        goto LABEL_12;
      }

LABEL_8:

LABEL_12:
      v6 = v4;
      v7 = v3;
      goto LABEL_13;
    }

    if (v4 <= 1)
    {
      v56 = v4 | v3;
      v57 = 0xD000000000000013;
      v58 = 0xD00000000000001DLL;
    }

    else
    {
      v56 = v4 ^ 2 | v3;
      v57 = 0xD000000000000018;
      v58 = 0xD000000000000015;
      if (!(v4 ^ 3 | v3))
      {
        v58 = 0xD000000000000021;
      }
    }

    if (v56)
    {
      return v58;
    }

    else
    {
      return v57;
    }
  }

  return v4;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t specialized ParameterSet.subscript.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v51 = a3;
  v44 = a6;
  v8 = type metadata accessor for BindableValue();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v41 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  v18 = *(a5 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v10 + 16);
  v50 = a1;
  v48 = v24;
  (v24)(v17, a1, v9, v21);
  v25 = *(v8 - 8);
  v49 = *(v25 + 48);
  v26 = v49(v17, 1, v8);
  v47 = v25;
  if (v26 == 1)
  {
    (*(v10 + 8))(v17, v9);
LABEL_6:
    v55 = 0;
    v53 = 0u;
    v54 = 0u;
    v28 = v50;
    v27 = v51;
    v29 = v52;
    v30 = v49;
    goto LABEL_7;
  }

  (*(v18 + 16))(v23, v17, a5);
  (*(v25 + 8))(v17, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation20BindableDataInternal_pMd, &_s17RealityFoundation20BindableDataInternal_pMR);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v28 = v50;
  v27 = v51;
  v29 = v52;
  v30 = v49;
  if (*(&v54 + 1))
  {
    outlined init with take of ForceEffectBase(&v53, v56);
    v42 = v9;
    v31 = a5;
    v33 = v58;
    v32 = v59;
    __swift_project_boxed_opaque_existential_1(v56, v58);
    v34 = v32;
    a5 = v31;
    v35 = v33;
    v29 = v52;
    v9 = v42;
    (*(v34 + 56))(v46, v27, *v45, v35);
    __swift_destroy_boxed_opaque_existential_1(v56);
    goto LABEL_8;
  }

LABEL_7:
  outlined destroy of BodyTrackingComponent?(&v53, &_s17RealityFoundation20BindableDataInternal_pSgMd, &_s17RealityFoundation20BindableDataInternal_pSgMR);
LABEL_8:
  if (v30(v28, 1, v8) != 1)
  {
    v48(v29, v28, v9);
    result = v30(v29, 1, v8);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v37 = BindableValue.isOverriden.getter(v8);
    (*(v47 + 8))(v29, v8);
    if (v37)
    {
      v38 = *v45;
      v39 = v43;
      v48(v43, v28, v9);
      v56[0] = v46;
      v56[1] = v27;
      v57 = 1;
      *&v53 = v38;

      BindableValuesReference.subscript.setter(v39, v56, v40, a5);
    }
  }
}

uint64_t outlined copy of BindPath.Part(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBu && ((1 << a3) & 0xC2F) != 0)
  {
  }

  return result;
}

uint64_t outlined consume of BindPath.Part(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xBu && ((1 << a3) & 0xC2F) != 0)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation8BindPathV4PartO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xB)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BindPath.Part(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BindPath.Part(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
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

uint64_t destructiveInjectEnumTag for BindPath.Part(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_17RealityFoundation10BindTargetO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t getEnumTagSinglePayload for BindTarget(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for BindTarget(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t destructiveInjectEnumTag for BindTarget(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for BindTarget.TextureCoordinateTransformPath(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for BindTarget.TextureCoordinateTransformPath(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for InternalBindPath(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for InternalBindPath(uint64_t result, int a2, int a3)
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

uint64_t type metadata completion function for BindableValue(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BindableValue(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5)
  {
    v7 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v7 = v6 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v9 = v7 + ((v6 + *(v4 + 80)) & ~*(v4 + 80));
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v12 < 2)
    {
LABEL_25:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_25;
  }

LABEL_14:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *storeEnumTagSinglePayload for BindableValue(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = (v7 + *(v5 + 80)) & ~*(v5 + 80);
  if (!v6)
  {
    ++v7;
  }

  v9 = v7 + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_41:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_38;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_41;
      }
    }

LABEL_38:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_30;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_30;
  }

  if (!a2)
  {
    return result;
  }

LABEL_30:
  v20 = *(v5 + 56);

  return v20();
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for BindPath(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BindPath(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined assign with take of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 40))(a2, a1, Trace);
  return a2;
}

uint64_t outlined init with copy of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 16))(a2, a1, Trace);
  return a2;
}

uint64_t outlined init with take of LoadTrace(uint64_t a1, uint64_t a2)
{
  Trace = type metadata accessor for LoadTrace(0);
  (*(*(Trace - 8) + 32))(a2, a1, Trace);
  return a2;
}

void outlined consume of __MaterialResource.CoreMaterialFunction?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a3)
  {
  }
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
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

uint64_t outlined assign with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of __RealityFileURLResolver.Weak<__RealityFileURLResolver>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMd, &_s10RealityKit02__A15FileURLResolverC4Weak013_E37E9A4A00F7H18D3DDD061C85B1FFBD5LLVy_ACGMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static ForceEffectLogger.logger);
  __swift_project_value_buffer(v0, static ForceEffectLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static AnimationLogger.logger);
  __swift_project_value_buffer(v0, static AnimationLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static BlendShapeLogger.logger);
  __swift_project_value_buffer(v0, static BlendShapeLogger.logger);
  return Logger.init(subsystem:category:)();
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, logger);
  __swift_project_value_buffer(v0, logger);
  return Logger.init(subsystem:category:)();
}

_BYTE *_Proto_MeshDeformation_v1.CustomDeformerSpec.init(cadence:inputSpec:outputSpec:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, char *a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  a4[1] = v4;
  a4[2] = v5;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerTraits.deformer.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  result = (*(a1 + 8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerComponent.deformer.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponent.getData(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = (*(a3 + 48))(a2, a3);
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  outlined copy of _Proto_MeshScope_v1(v3, v4, v5, v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  MEMORY[0x1C68F31A0](&v15, &v11, v7, &type metadata for _Proto_MeshScope_v1, AssociatedTypeWitness, v9);

  outlined consume of _Proto_MeshScope_v1(v11, v12, v13, v14);
  return v15;
}

uint64_t outlined copy of _Proto_MeshScope_v1(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1()
{
  result = lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1;
  if (!lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1;
  if (!lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1);
  }

  return result;
}

uint64_t outlined consume of _Proto_MeshScope_v1(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

Swift::Void __swiftcall _Proto_MeshDeformation_v1.CustomDeformerComponent.forceDeform()()
{
  v2 = v1;
  v19 = v0;
  v3 = (*(v1 + 48))();
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v4 = 0;
  v6 = v3 + 64;
  v5 = *(v3 + 64);
  v21 = v3;
  v7 = 1 << *(v3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;
  v20 = v2;
  if ((v8 & v5) != 0)
  {
    do
    {
      v11 = v4;
LABEL_9:
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = *(v21 + 48) + ((v11 << 11) | (32 * v12));
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(v13 + 24);
      v22 = *(v20 + 88);
      outlined copy of _Proto_MeshScope_v1(*v13, v15, v16, v17);
      v18 = v22(v23, v19, v20);
      specialized Set._Variant.insert(_:)(v24, v14, v15, v16, v17);
      outlined consume of _Proto_MeshScope_v1(v24[0], v24[1], v24[2], v25);
      v18(v23, 0);
    }

    while (v9);
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v11);
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponent.setTargetDatum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v20 = a2;
  v16 = v6;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  v10 = *(a4 + 64);
  outlined copy of _Proto_MeshScope_v1(v6, v7, v8, v9);
  swift_unknownObjectRetain();
  v11 = v10(v15, a3, a4);
  swift_getAssociatedTypeWitness();
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  type metadata accessor for Dictionary();
  Dictionary.subscript.setter();
  v11(v15, 0);
  v12 = *(a4 + 88);
  outlined copy of _Proto_MeshScope_v1(v6, v7, v8, v9);
  v13 = v12(v15, a3, a4);
  specialized Set._Variant.insert(_:)(&v16, v6, v7, v8, v9);
  outlined consume of _Proto_MeshScope_v1(v16, v17, v18, v19);
  return v13(v15, 0);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.init(targetData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = 1;
  *&v20 = a1;
  *(&v20 + 1) = MEMORY[0x1E69E7CD0];
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  for (i = 0; v5; result = outlined consume of _Proto_MeshScope_v1(v18[0], v18[1], v18[2], v19))
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = *(a1 + 48) + ((v9 << 11) | (32 * v10));
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    outlined copy of _Proto_MeshScope_v1(*v11, v13, v14, v15);
    specialized Set._Variant.insert(_:)(v18, v12, v13, v14, v15);
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      v16 = v21;
      *a2 = v20;
      *(a2 + 16) = v16;
      return result;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.forceDeform()()
{
  v1 = *v0;
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    while (1)
    {
      v7 = v6;
LABEL_9:
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = *(v1 + 48) + ((v7 << 11) | (32 * v8));
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 16);
      v13 = *(v9 + 24);
      outlined copy of _Proto_MeshScope_v1(*v9, v11, v12, v13);
      specialized Set._Variant.insert(_:)(v14, v10, v11, v12, v13);
      outlined consume of _Proto_MeshScope_v1(v14[0], v14[1], v14[2], v15);
      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.setTargetDatum(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v14 = a2;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  outlined copy of _Proto_MeshScope_v1(v4, v5, v6, v7);
  v8 = *(a3 + 16);
  lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  type metadata accessor for Dictionary();
  swift_unknownObjectRetain();
  Dictionary.subscript.setter();
  outlined copy of _Proto_MeshScope_v1(v4, v5, v6, v7);
  specialized Set._Variant.insert(_:)(&v10, v4, v5, v6, v7);
  return outlined consume of _Proto_MeshScope_v1(v10, v11, v12, v13);
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.targetData.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.dirtyTargets.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.cadenceDirty.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerComponent.__fromCore(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  type metadata accessor for __ServiceLocator();
  v5 = static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 24);
  swift_unownedRetainStrong();

  v7 = *(v6 + 24);

  REEngineGetServiceLocator();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = static Array._allocateUninitialized(_:)();
  v63 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v10 = specialized Dictionary.init(dictionaryLiteral:)(v9, &type metadata for _Proto_MeshScope_v1, AssociatedTypeWitness, v63);

  v73 = v10;
  v58 = a3;
  v60 = swift_getAssociatedTypeWitness();
  v59 = *(swift_getAssociatedConformanceWitness() + 8);
  (v59)(v60);
  String.utf8CString.getter();

  RECustomDeformerComponentGetDeformationIndex();

  result = RECustomDeformerComponentGetDeformationIndexInputObjectCount();
  if (result < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  else
  {
    v12 = result;
    if (result)
    {
      v13 = 0;
      v62 = result;
      do
      {
        if (RECustomDeformerComponentGetDeformationIndexInputObject())
        {
          RECustomDeformerComponentGetDeformationIndexInputMeshID();
          v69 = v70;
          if (v70 - 1 < 2)
          {
            v16 = v71;
            v68 = String.init(cString:)();
            if (v16)
            {
              v67 = v17;
              v61 = String.init(cString:)();
              v19 = v18;
              v20 = v73 + 64;
              v21 = 1 << *(v73 + 32);
              if (v21 < 64)
              {
                v22 = ~(-1 << v21);
              }

              else
              {
                v22 = -1;
              }

              v23 = v22 & *(v73 + 64);
              v24 = (v21 + 63) >> 6;

              v25 = 0;
              v64 = result;
              for (i = v13; ; v13 = i)
              {
                do
                {
                  if (!v23)
                  {
                    while (1)
                    {
                      v26 = v25 + 1;
                      if (__OFADD__(v25, 1))
                      {
                        break;
                      }

                      if (v26 >= v24)
                      {

                        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
                        inited = swift_initStackObject();
                        *(inited + 16) = xmmword_1C1887600;
                        *(inited + 32) = v61;
                        *(inited + 40) = v19;

                        v15 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(inited);
                        swift_setDeallocating();
                        outlined destroy of String(inited + 32);
                        static _Proto_MeshScope_v1.fromCore(_:_:_:)(v69, v68, v67, v15, &v70);

                        swift_unknownObjectRetain();

                        swift_dynamicCast();
                        type metadata accessor for Dictionary();
                        Dictionary.subscript.setter();
                        swift_unknownObjectRelease();
                        v12 = v62;
                        goto LABEL_5;
                      }

                      v23 = *(v20 + 8 * v26);
                      ++v25;
                      if (v23)
                      {
                        v25 = v26;
                        goto LABEL_21;
                      }
                    }

                    __break(1u);
                    goto LABEL_48;
                  }

LABEL_21:
                  v27 = __clz(__rbit64(v23));
                  v23 &= v23 - 1;
                  v28 = v27 | (v25 << 6);
                  v29 = *(result + 48) + 32 * v28;
                  v30 = *(v29 + 24);
                }

                while (v69 != ((0x30102u >> (8 * v30)) & 3));
                if (v30 > 1)
                {
                  goto LABEL_49;
                }

                v31 = *(v29 + 24);
                v32 = *v29;
                v33 = *(v29 + 8);
                v34 = *(v29 + 16);
                v35 = *(*(result + 56) + 8 * v28);

                if (v32 == v68 && v67 == v33)
                {
                  swift_unknownObjectRetain();
                  v56 = v34;
                  v57 = v31;
                  outlined copy of _Proto_MeshScope_v1(v68, v33, v34, v31);

                  goto LABEL_44;
                }

                v66 = _stringCompareWithSmolCheck(_:_:expecting:)();
                swift_unknownObjectRetain();
                outlined copy of _Proto_MeshScope_v1(v32, v33, v34, v31);

                if (v66)
                {
                  break;
                }

                swift_unknownObjectRelease();
                outlined consume of _Proto_MeshScope_v1(v32, v33, v34, v31);
                result = v64;
              }

              v68 = v32;
              v56 = v34;
              v57 = v31;
LABEL_44:
              *&v70 = v68;
              *(&v70 + 1) = v33;
              v71 = v56;
              v72 = v57;
              type metadata accessor for Dictionary();
              Dictionary.removeValue(forKey:)();
              swift_unknownObjectRelease();
              _Proto_MeshScope_v1.appendPart(_:)(v61, v19, &v70);
              result = outlined consume of _Proto_MeshScope_v1(v68, v33, v56, v57);
              v12 = v62;
              v13 = i;
              if (v72 == 255)
              {
                goto LABEL_50;
              }

              Dictionary.subscript.setter();

              swift_unknownObjectRelease();
              goto LABEL_5;
            }

            static _Proto_MeshScope_v1.fromCore(_:_:_:)(v69, v68, v17, MEMORY[0x1E69E7CD0], &v70);
            swift_unknownObjectRetain();

            swift_dynamicCast();
            type metadata accessor for Dictionary();
            goto LABEL_40;
          }

          if (v70)
          {
            if (v70 == 3)
            {
              swift_unknownObjectRetain();
              swift_dynamicCast();
              v70 = 0uLL;
              v71 = 0;
              v72 = 2;
              type metadata accessor for Dictionary();
LABEL_40:
              Dictionary.subscript.setter();
              goto LABEL_41;
            }

            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v49 = type metadata accessor for Logger();
            __swift_project_value_buffer(v49, logger);
            v38 = Logger.logObject.getter();
            v50 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v38, v50))
            {
              goto LABEL_38;
            }

            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v70 = v41;
            *v40 = 136315138;
            v51 = v59();
            v53 = v13;
            v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v70);

            *(v40 + 4) = v54;
            v13 = v53;
            v46 = v50;
            v47 = v38;
            v48 = "unknown mesh scope type returned from Core in CustomDeformerComponent id:%s";
          }

          else
          {
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v37 = type metadata accessor for Logger();
            __swift_project_value_buffer(v37, logger);
            v38 = Logger.logObject.getter();
            v39 = static os_log_type_t.error.getter();
            if (!os_log_type_enabled(v38, v39))
            {
LABEL_38:

LABEL_41:
              swift_unknownObjectRelease();
              goto LABEL_5;
            }

            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            *&v70 = v41;
            *v40 = 136315138;
            v42 = v59();
            v44 = v13;
            v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v70);

            *(v40 + 4) = v45;
            v13 = v44;
            v46 = v39;
            v47 = v38;
            v48 = "invalid mesh scope type returned from Core in CustomDeformerComponent id:%s";
          }

          _os_log_impl(&dword_1C1358000, v47, v46, v48, v40, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v41);
          v55 = v41;
          v12 = v62;
          MEMORY[0x1C6902A30](v55, -1, -1);
          MEMORY[0x1C6902A30](v40, -1, -1);

          swift_unknownObjectRelease();
        }

LABEL_5:
        ++v13;
      }

      while (v13 != v12);
    }

    return (*(v58 + 120))(v73);
  }

  return result;
}

void protocol witness for Component.__toCore(_:) in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(a1, a2, WitnessTable);
}

void _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v131 = *a1;
  v5 = specialized static __ServiceLocator.shared.getter();
  swift_beginAccess();
  v6 = *(v5 + 24);
  v7 = *(swift_unownedRetainStrong() + 24);

  REEngineGetServiceLocator();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(&v132, AssociatedTypeWitness, AssociatedConformanceWitness);
  v115 = *(a3 + 48);
  v10 = v115(a2, a3);
  v114 = swift_getAssociatedTypeWitness();
  v113 = lazy protocol witness table accessor for type _Proto_MeshScope_v1 and conformance _Proto_MeshScope_v1();
  v11 = 0;
  v12 = 1 << *(v10 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v130 = AssociatedConformanceWitness;
  v16 = v10 + 64;
  v120 = a3;
  v121 = a2;
  v122 = v15;
  v116 = v10 + 64;
  v118 = v10;
  if (v14)
  {
    goto LABEL_7;
  }

  do
  {
LABEL_8:
    v17 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_78;
    }

    if (v17 >= v15)
    {

      v40 = *(a3 + 72);
      v41 = *(v40(v121, a3) + 16);

      if (!v41)
      {
        return;
      }

      v42 = v40(v121, a3);
      v43 = v42;
      v44 = 0;
      v45 = v42 + 56;
      v46 = 1 << *(v42 + 32);
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      else
      {
        v47 = -1;
      }

      v48 = v47 & *(v42 + 56);
      v49 = (v46 + 63) >> 6;
      v108 = v42;
      v110 = v49;
      v112 = v42 + 56;
      while (1)
      {
        if (v48)
        {
          v50 = v44;
        }

        else
        {
          do
          {
            v50 = v44 + 1;
            if (__OFADD__(v44, 1))
            {
              goto LABEL_80;
            }

            if (v50 >= v49)
            {

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v44;
          }

          while (!v48);
        }

        v51 = *(v43 + 48) + ((v50 << 11) | (32 * __clz(__rbit64(v48))));
        v52 = *v51;
        v53 = *(v51 + 8);
        v54 = *(v51 + 16);
        v55 = *(v51 + 24);
        outlined copy of _Proto_MeshScope_v1(*v51, v53, v54, *(v51 + 24));
        v56 = v115(v121, v120);
        v132 = v52;
        v133 = v53;
        v134 = v54;
        v135 = v55;
        v129 = v52;
        v127 = v54;
        outlined copy of _Proto_MeshScope_v1(v52, v53, v54, v55);
        MEMORY[0x1C68F31A0](&v136, &v132, v56, &type metadata for _Proto_MeshScope_v1, v114, v113);

        outlined consume of _Proto_MeshScope_v1(v132, v133, v134, v135);
        if (!v136)
        {
          goto LABEL_81;
        }

        v48 &= v48 - 1;
        if (v55 >= 2)
        {
          break;
        }

        v57 = v54;
        v117 = v55;
        if (*(v54 + 16))
        {
          v58 = v54 + 56;
          v59 = 1 << *(v54 + 32);
          if (v59 < 64)
          {
            v60 = ~(-1 << v59);
          }

          else
          {
            v60 = -1;
          }

          v61 = v60 & *(v54 + 56);
          v62 = (v59 + 63) >> 6;

          v63 = 0;
          v123 = v62;
          v119 = v48;
          if (v61)
          {
            goto LABEL_50;
          }

          while (1)
          {
LABEL_51:
            v64 = v63 + 1;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_79;
            }

            if (v64 >= v62)
            {
              break;
            }

            v61 = *(v58 + 8 * v64);
            ++v63;
            if (v61)
            {
              while (1)
              {
                v65 = __clz(__rbit64(v61));
                v61 &= v61 - 1;
                v66 = (*(v57 + 48) + ((v64 << 10) | (16 * v65)));
                v67 = *v66;
                v68 = v66[1];
                v69 = *(v130 + 8);

                v69();
                String.utf8CString.getter();
                swift_unknownObjectRetain();

                String.utf8CString.getter();
                v124 = v67;
                String.utf8CString.getter();
                LOBYTE(v67) = RECustomDeformerComponentSetCustomDeformationInputObject();
                swift_unknownObjectRelease();

                if (v67)
                {
                  break;
                }

                if (one-time initialization token for logger != -1)
                {
                  swift_once();
                }

                v70 = type metadata accessor for Logger();
                __swift_project_value_buffer(v70, logger);
                outlined copy of _Proto_MeshScope_v1(v129, v53, v127, v117);
                v71 = v68;

                v57 = v127;
                v72 = Logger.logObject.getter();
                v73 = static os_log_type_t.error.getter();
                outlined consume of _Proto_MeshScope_v1(v129, v53, v127, v117);

                v109 = v73;
                v74 = os_log_type_enabled(v72, v73);
                v48 = v119;
                if (v74)
                {
                  log = v72;
                  v75 = swift_slowAlloc();
                  v107 = swift_slowAlloc();
                  v136 = v107;
                  *v75 = 136315394;
                  v132 = v129;
                  v133 = v53;
                  v134 = v127;
                  v135 = v117;
                  outlined copy of _Proto_MeshScope_v1(v129, v53, v127, v117);
                  v76 = _Proto_MeshScope_v1.description.getter();
                  v78 = v77;
                  outlined consume of _Proto_MeshScope_v1(v132, v133, v134, v135);
                  v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v78, &v136);

                  *(v75 + 4) = v79;
                  *(v75 + 12) = 2080;
                  v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v124, v71, &v136);

                  *(v75 + 14) = v80;
                  v57 = v127;
                  _os_log_impl(&dword_1C1358000, log, v109, "failed to set target datum for target: %s, on part:%s", v75, 0x16u);
                  swift_arrayDestroy();
                  MEMORY[0x1C6902A30](v107, -1, -1);
                  MEMORY[0x1C6902A30](v75, -1, -1);
                }

                else
                {
                }

                v63 = v64;
                v58 = v127 + 56;
                v62 = v123;
                if (!v61)
                {
                  goto LABEL_51;
                }

LABEL_50:
                v64 = v63;
              }

              v63 = v64;
              v57 = v127;
              v62 = v123;
              v48 = v119;
              if (v61)
              {
                goto LABEL_50;
              }
            }
          }

          swift_unknownObjectRelease();

          outlined consume of _Proto_MeshScope_v1(v129, v53, v57, v117);

          v44 = v50;
          v43 = v108;
LABEL_35:
          v49 = v110;
          v45 = v112;
        }

        else
        {
          (*(v130 + 8))();
          String.utf8CString.getter();
          swift_unknownObjectRetain();

          String.utf8CString.getter();

          v93 = RECustomDeformerComponentSetCustomDeformationInputObject();
          swift_unknownObjectRelease();

          if (v93)
          {
            swift_unknownObjectRelease();
            outlined consume of _Proto_MeshScope_v1(v129, v53, v54, v55);
            v44 = v50;
            v49 = v110;
            v45 = v112;
          }

          else
          {
            v49 = v110;
            if (one-time initialization token for logger != -1)
            {
              swift_once();
            }

            v94 = type metadata accessor for Logger();
            __swift_project_value_buffer(v94, logger);
            outlined copy of _Proto_MeshScope_v1(v129, v53, v54, v55);
            v95 = Logger.logObject.getter();
            v96 = static os_log_type_t.error.getter();
            outlined consume of _Proto_MeshScope_v1(v129, v53, v127, v55);
            v126 = v96;
            v97 = v96;
            v98 = v95;
            if (os_log_type_enabled(v95, v97))
            {
              v99 = v53;
              v100 = swift_slowAlloc();
              v101 = swift_slowAlloc();
              v136 = v101;
              *v100 = 136315138;
              v132 = v129;
              v133 = v99;
              v134 = v127;
              v135 = v117;
              v102 = _Proto_MeshScope_v1.description.getter();
              v104 = v103;
              outlined consume of _Proto_MeshScope_v1(v132, v133, v134, v135);
              v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v136);

              *(v100 + 4) = v105;
              v43 = v108;
              _os_log_impl(&dword_1C1358000, v98, v126, "failed to set target datum for target: %s", v100, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v101);
              MEMORY[0x1C6902A30](v101, -1, -1);
              MEMORY[0x1C6902A30](v100, -1, -1);

              swift_unknownObjectRelease();
              v44 = v50;
              v45 = v112;
            }

            else
            {

              swift_unknownObjectRelease();
              outlined consume of _Proto_MeshScope_v1(v129, v53, v127, v55);
              v44 = v50;
              v45 = v112;
              v43 = v108;
            }
          }
        }
      }

      (*(v130 + 8))();
      String.utf8CString.getter();
      swift_unknownObjectRetain();

      v81 = RECustomDeformerComponentSetCustomDeformationInputObject();
      swift_unknownObjectRelease();

      if ((v81 & 1) == 0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v82 = type metadata accessor for Logger();
        __swift_project_value_buffer(v82, logger);
        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v87 = v53;
          v88 = v86;
          v136 = v86;
          *v85 = 136315138;
          v132 = v129;
          v133 = v87;
          v134 = v127;
          v135 = 2;
          v89 = _Proto_MeshScope_v1.description.getter();
          v91 = v90;
          outlined consume of _Proto_MeshScope_v1(v132, v133, v134, v135);
          v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, &v136);

          *(v85 + 4) = v92;
          v43 = v108;
          _os_log_impl(&dword_1C1358000, v83, v84, "failed to set target datum for target: %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          MEMORY[0x1C6902A30](v88, -1, -1);
          MEMORY[0x1C6902A30](v85, -1, -1);
        }
      }

      swift_unknownObjectRelease();
      v44 = v50;
      goto LABEL_35;
    }

    v14 = *(v16 + 8 * v17);
    ++v11;
  }

  while (!v14);
  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = *(v10 + 48) + ((v17 << 11) | (32 * v18));
    v20 = *(v19 + 24);
    if (v20 >= 2)
    {
      (*(v130 + 8))();
      String.utf8CString.getter();

      RECustomDeformerComponentForceContinuousDeformations();

      v11 = v17;
      v15 = v122;
      if (!v14)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    v22 = *v19;
    v21 = *(v19 + 8);
    v23 = *(v19 + 16);

    if (*(v23 + 16))
    {
      break;
    }

    v39 = *(v130 + 8);
    outlined copy of _Proto_MeshScope_v1(v22, v21, v23, v20);
    v39();
    outlined consume of _Proto_MeshScope_v1(v22, v21, v23, v20);
    String.utf8CString.getter();

    String.utf8CString.getter();

    RECustomDeformerComponentForceContinuousDeformations();

    v11 = v17;
LABEL_26:
    v16 = v116;
    v10 = v118;
    v15 = v122;
    if (!v14)
    {
      goto LABEL_8;
    }

LABEL_7:
    v17 = v11;
  }

  v24 = v23;
  v27 = *(v23 + 56);
  v26 = v23 + 56;
  v25 = v27;
  v28 = 1 << *(v24 + 32);
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  else
  {
    v29 = -1;
  }

  v30 = v29 & v25;
  v125 = v22;
  outlined copy of _Proto_MeshScope_v1(v22, v21, v24, v20);
  v31 = (v28 + 63) >> 6;

  v32 = v20;
  v33 = 0;
  v111 = v32;
  while (v30)
  {
    v34 = v33;
LABEL_22:
    v35 = __clz(__rbit64(v30));
    v30 &= v30 - 1;
    v36 = (*(v24 + 48) + ((v34 << 10) | (16 * v35)));
    v37 = v36[1];
    v128 = *v36;
    v38 = *(v130 + 8);

    v38();
    String.utf8CString.getter();

    String.utf8CString.getter();
    String.utf8CString.getter();

    RECustomDeformerComponentForceContinuousDeformations();
  }

  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      outlined consume of _Proto_MeshScope_v1(v125, v21, v24, v111);

      v11 = v17;
      a3 = v120;
      goto LABEL_26;
    }

    v30 = *(v26 + 8 * v34);
    ++v33;
    if (v30)
    {
      v33 = v34;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
}

uint64_t static _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.makeRuntime()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, char *, uint64_t, void *))
{
  v13 = (*(a4 + 8))(a2, a4);
  v15 = v14;
  (*(a4 + 16))(&v23, a2, a4);
  v21 = v23;
  v22 = *(&v23 + 1);
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  v16[6] = a5;
  v17 = a8(v13, v15, &v21, a7, v16);

  return v17;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.getter()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV10targetDataSDyAA01_c1_d6Scope_F0OxGvgTf4n_g_0();
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify(void *a1))()
{
  *a1 = *v1;
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    v5 = *v3;

    *v3 = v2;
  }

  else
  {
    v7 = *v3;

    *v3 = v2;
  }

  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.getter()
{
  _s17RealityFoundation25_Proto_MeshDeformation_v1V26CustomDeformerComponentGPUV12dirtyTargetsShyAA01_c1_d6Scope_F0OGvgTf4n_g_0();
}

uint64_t key path getter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, _OWORD *)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, void *a6@<X8>)
{
  v8 = *(a2 + a3 - 8);
  v9 = *(a1 + 16);
  v15 = *a1;
  v16 = v9;
  v10 = *(a2 + a3 - 24);
  v13[0] = *(a2 + a3 - 40);
  v13[1] = v10;
  v14 = v8;
  v11 = a4(0, v13);
  *a6 = a5(v11);
}

uint64_t key path setter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.targetData : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, _OWORD *), uint64_t (*a6)(uint64_t))
{
  v8 = a3 + a4;
  v9 = *(a3 + a4 - 8);
  v10 = *a1;

  v11 = *(v8 - 24);
  v13[0] = *(v8 - 40);
  v13[1] = v11;
  v14 = v9;
  a5(0, v13);
  return a6(v10);
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify(void *a1))()
{
  *a1 = *(v1 + 8);
  a1[1] = v1;

  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.dirtyTargets.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *a1;

    v5 = *(v3 + 8);

    *(v3 + 8) = v2;
  }

  else
  {
    v7 = *(v3 + 8);

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t key path getter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, _OWORD *)@<X3>, uint64_t (*a5)(uint64_t)@<X4>, _BYTE *a6@<X8>)
{
  v8 = *(a2 + a3 - 8);
  v9 = *(a1 + 16);
  v15 = *a1;
  v16 = v9;
  v10 = *(a2 + a3 - 24);
  v13[0] = *(a2 + a3 - 40);
  v13[1] = v10;
  v14 = v8;
  v11 = a4(0, v13);
  result = a5(v11);
  *a6 = result & 1;
  return result;
}

uint64_t key path setter for _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.cadenceDirty : <A, B, C>_Proto_MeshDeformation_v1.CustomDeformerComponentGPU<A, B, C>(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, _OWORD *), uint64_t (*a6)(uint64_t))
{
  v7 = *(a3 + a4 - 8);
  v8 = *a1;
  v9 = *(a3 + a4 - 24);
  v11[0] = *(a3 + a4 - 40);
  v11[1] = v9;
  v12 = v7;
  a5(0, v11);
  return a6(v8);
}

_BYTE *(*_Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify(uint64_t a1))(_BYTE *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + 16);
  return _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify;
}

double _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.init(targetData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _Proto_MeshDeformation_v1.CustomDeformerComponentStorage.init(targetData:)(a1, &v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.storage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

__n128 _Proto_MeshDeformation_v1.CustomDeformerComponentGPU.storage.setter(__n128 *a1)
{
  v3 = a1[1].n128_u8[0];
  v5 = *v1;
  v4 = v1[1];

  result = *a1;
  *v1 = *a1;
  *(v1 + 16) = v3;
  return result;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.targetData.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.targetData.modify(v2);
  return protocol witness for AnimationDefinition.bindTarget.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.dirtyTargets.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.dirtyTargets.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

uint64_t (*protocol witness for _Proto_MeshDeformation_v1.CustomDeformerComponent.cadenceDirty.modify in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = _Proto_MeshDeformation_v1.CustomDeformerComponentCPU.cadenceDirty.modify(v2);
  return protocol witness for AnimationDefinition.name.modify in conformance FromToByAnimation<A>;
}

void protocol witness for Component.__toCore(_:) in conformance _Proto_MeshDeformation_v1.CustomDeformerComponentCPU<A, B, C>(uint64_t *a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  _Proto_MeshDeformation_v1.CustomDeformerComponent.__toCore(_:)(a1, a2, WitnessTable);
}

unint64_t __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v9, a2, a3);
}

unint64_t __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24[1] = a1;
  v25 = a4;
  v6 = *(*(a3 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v4;
  v11 = -1 << *(v4 + 32);
  v13 = v12 & ~v11;
  v24[0] = v4 + 64;
  if ((*(v4 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v11;
    v17 = *(v7 + 16);
    v15 = v7 + 16;
    v16 = v17;
    v18 = *(v15 + 56);
    v19 = (v15 - 8);
    do
    {
      v20 = v15;
      v16(v10, *(v26 + 48) + v18 * v13, a3, v8);
      v21 = *(v25 + 8);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v19)(v10, a3);
      if (v22)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      v15 = v20;
    }

    while (((*(v24[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v50 = *v5;
  v11 = *(*v5 + 40);
  Hasher.init(_seed:)();
  v46 = v5;
  v47 = a1;
  if (a5)
  {
    if (a5 != 1)
    {
      MEMORY[0x1C68F4C10](0);
      goto LABEL_7;
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  MEMORY[0x1C68F4C10](v12);
  String.hash(into:)();
  specialized Set.hash(into:)(v51, a4);
LABEL_7:
  v13 = Hasher._finalize()();
  v14 = -1 << *(v50 + 32);
  v15 = v13 & ~v14;
  if (((*(v50 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_41:
    v34 = *v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v51[0] = *v46;
    outlined copy of _Proto_MeshScope_v1(a2, a3, a4, a5);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v15, isUniquelyReferenced_nonNull_native);
    *v46 = *&v51[0];
    *v47 = a2;
    *(v47 + 8) = a3;
    *(v47 + 16) = a4;
    *(v47 + 24) = a5;
    return 1;
  }

  v49 = ~v14;
  v17 = a5 != 2 || (a3 | a2 | a4) != 0;
  v48 = v17;
  while (1)
  {
    v19 = *(v50 + 48) + 32 * v15;
    v21 = *v19;
    v20 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    if (!*(v19 + 24))
    {
      if (!a5)
      {
        if (v21 != a2 || v20 != a3)
        {
          v31 = *v19;
          v32 = *(v19 + 8);
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 0);
            outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 0);
            v25 = 0;
            goto LABEL_32;
          }
        }

        outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 0);
        outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 0);
        outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 0);
        v33 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v22, a4);
        outlined consume of _Proto_MeshScope_v1(v21, v20, v22, 0);
        outlined consume of _Proto_MeshScope_v1(v21, v20, v22, 0);
        outlined consume of _Proto_MeshScope_v1(a2, a3, a4, 0);
        if (v33)
        {
          v37 = a2;
          v38 = a3;
          v39 = a4;
          v40 = 0;
          goto LABEL_44;
        }

        goto LABEL_16;
      }

      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, a5);
      v26 = v21;
      v27 = v20;
      v28 = v22;
      v29 = 0;
LABEL_31:
      outlined copy of _Proto_MeshScope_v1(v26, v27, v28, v29);
      v25 = a5;
      goto LABEL_32;
    }

    if (v23 != 1)
    {
      if (!v48)
      {
        outlined consume of _Proto_MeshScope_v1(v21, v20, v22, 2u);
        v37 = 0;
        v38 = 0;
        v39 = 0;
        v40 = 2;
        goto LABEL_44;
      }

      v26 = a2;
      v27 = a3;
      v28 = a4;
      v29 = a5;
      goto LABEL_31;
    }

    if (a5 != 1)
    {
      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, a5);
      v26 = v21;
      v27 = v20;
      v28 = v22;
      v29 = 1;
      goto LABEL_31;
    }

    v24 = v21 == a2 && v20 == a3;
    if (!v24 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v25 = 1;
      outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 1u);
      outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 1u);
LABEL_32:
      outlined consume of _Proto_MeshScope_v1(v21, v20, v22, v23);
      outlined consume of _Proto_MeshScope_v1(a2, a3, a4, v25);
      goto LABEL_16;
    }

    outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 1u);
    outlined copy of _Proto_MeshScope_v1(a2, a3, a4, 1u);
    outlined copy of _Proto_MeshScope_v1(v21, v20, v22, 1u);
    v18 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v22, a4);
    outlined consume of _Proto_MeshScope_v1(v21, v20, v22, 1u);
    outlined consume of _Proto_MeshScope_v1(v21, v20, v22, 1u);
    outlined consume of _Proto_MeshScope_v1(a2, a3, a4, 1u);
    if (v18)
    {
      break;
    }

LABEL_16:
    v15 = (v15 + 1) & v49;
    if (((*(v50 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v37 = a2;
  v38 = a3;
  v39 = a4;
  v40 = 1;
LABEL_44:
  outlined consume of _Proto_MeshScope_v1(v37, v38, v39, v40);
  v41 = *(v50 + 48) + 32 * v15;
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  *v47 = *v41;
  *(v47 + 8) = v43;
  *(v47 + 16) = v44;
  v45 = *(v41 + 24);
  *(v47 + 24) = v45;
  outlined copy of _Proto_MeshScope_v1(v42, v43, v44, v45);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(float32x4_t *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(a2 + 48);
  v31 = *(a2 + 32);
  v32 = v7;
  v33 = *(a2 + 64);
  v8 = *(a2 + 16);
  v29 = *a2;
  v30 = v8;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v28);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if ((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *a2;
    while (1)
    {
      v14 = *(v5 + 48) + 80 * v11;
      v15 = *(v14 + 8);
      v16 = *(v14 + 12);
      v17 = *v14 == v13 && v15 == *(a2 + 8);
      if (v17 && v16 == *(a2 + 12))
      {
        v20 = *(v14 + 48);
        v19 = *(v14 + 64);
        v22 = *(v14 + 16);
        v21 = *(v14 + 32);
        if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v21, *(a2 + 32)), vceqq_f32(v22, *(a2 + 16))), vandq_s8(vceqq_f32(v20, *(a2 + 48)), vceqq_f32(v19, *(a2 + 64))))) & 0x80000000) != 0)
        {
          break;
        }
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    result = 0;
    a1->i64[0] = v13;
    a1->f32[2] = v15;
    a1->f32[3] = v16;
    a1[1] = v22;
    a1[2] = v21;
    a1[3] = v20;
    a1[4] = v19;
  }

  else
  {
LABEL_14:
    v24 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29.i64[0] = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v11, isUniquelyReferenced_nonNull_native);
    *v2 = v29.i64[0];
    v26 = *(a2 + 48);
    a1[2] = *(a2 + 32);
    a1[3] = v26;
    a1[4] = *(a2 + 64);
    v27 = *(a2 + 16);
    result = 1;
    *a1 = *a2;
    a1[1] = v27;
  }

  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, float32x4_t *a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v7 = a2->i64[1];
  v8 = a2[1].i64[0];
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v5 + 32);
  v11 = v9 & ~v10;
  if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_29:
    v20 = *v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of GeometricPin(a2, &v27);
    v26 = *v25;
    specialized _NativeSet.insertNew(_:at:isUnique:)(&v27, v11, isUniquelyReferenced_nonNull_native);
    *v25 = v26;
    outlined init with take of GeometricPin(a2, a1);
    return 1;
  }

  v12 = ~v10;
  while (1)
  {
    outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v11, &v27);
    v13 = v27.i64[1] == v7 && v28 == v8;
    if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_27;
    }

    v14 = a2[2].i64[0];
    if (v30)
    {
      if (!v14 || (v29 != a2[1].i64[1] || v30 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v14)
    {
      goto LABEL_27;
    }

    v15 = vmovn_s32(vceqq_f32(v31, a2[3]));
    if ((v15.i8[0] & 1) == 0 || (v15.i8[2] & 1) == 0 || (v15.i8[4] & 1) == 0 || (vminv_u16(vmovn_s32(vceqq_f32(v32, a2[4]))) & 1) == 0)
    {
      goto LABEL_27;
    }

    Strong = swift_weakLoadStrong();
    v17 = swift_weakLoadStrong();
    if (!Strong)
    {
      break;
    }

    if (!v17)
    {
      goto LABEL_26;
    }

    v23 = *(Strong + 16);
    v18 = v17;

    v24 = a1;
    v19 = *(v18 + 16);

    outlined destroy of GeometricPin(&v27);
    v13 = v23 == v19;
    a1 = v24;
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_28:
    v11 = (v11 + 1) & v12;
    if (((*(v5 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (v17)
  {
LABEL_26:

LABEL_27:
    outlined destroy of GeometricPin(&v27);
    goto LABEL_28;
  }

  outlined destroy of GeometricPin(&v27);
LABEL_31:
  outlined destroy of GeometricPin(a2);
  outlined init with copy of GeometricPin(*(v5 + 48) + 80 * v11, a1);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v8 = a2 & 1;
  MEMORY[0x1C68F4C10](v8);
  v9 = Hasher._finalize()();
  v10 = -1 << *(v6 + 32);
  v11 = v9 & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = *(v6 + 48);
      if (*(v13 + v11) == v8)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v8) = *(v13 + v11);
  }

  else
  {
LABEL_5:
    v14 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v8, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    result = 1;
  }

  *a1 = v8;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v42 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v54 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v42 - v22;
  v43 = v2;
  v57 = *v2;
  v24 = *(v57 + 40);
  Hasher.init(_seed:)();
  v56 = a2;
  outlined init with copy of UUID?(a2, v23);
  v25 = *(v8 + 48);
  v55 = v8 + 48;
  if (v25(v23, 1, v7) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v8 + 32))(v11, v23, v7);
    Hasher._combine(_:)(1u);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v8 + 8))(v11, v7);
  }

  v26 = Hasher._finalize()();
  v27 = -1 << *(v57 + 32);
  v28 = v26 & ~v27;
  v53 = v57 + 56;
  v29 = v47;
  if (((*(v57 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
  {
LABEL_14:
    v36 = v43;
    v37 = *v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v56;
    v40 = v42;
    outlined init with copy of UUID?(v56, v42);
    v58 = *v36;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v40, v28, isUniquelyReferenced_nonNull_native);
    *v36 = v58;
    outlined init with take of UUID?(v39, v44);
    return 1;
  }

  v52 = v25;
  v46 = v11;
  v50 = ~v27;
  v45 = (v8 + 32);
  v51 = *(v13 + 72);
  v49 = (v8 + 8);
  while (1)
  {
    v30 = v51 * v28;
    outlined init with copy of UUID?(*(v57 + 48) + v51 * v28, v18);
    v31 = *(v29 + 48);
    outlined init with copy of UUID?(v18, v6);
    outlined init with copy of UUID?(v56, &v6[v31]);
    v32 = v52;
    if (v52(v6, 1, v7) == 1)
    {
      break;
    }

    outlined init with copy of UUID?(v6, v54);
    if (v32(&v6[v31], 1, v7) == 1)
    {
      outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      (*v49)(v54, v7);
      goto LABEL_7;
    }

    v33 = v54;
    v34 = v46;
    (*v45)(v46, &v6[v31], v7);
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
    v48 = dispatch thunk of static Equatable.== infix(_:_:)();
    v35 = *v49;
    (*v49)(v34, v7);
    outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v35(v33, v7);
    v29 = v47;
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v48)
    {
      goto LABEL_16;
    }

LABEL_8:
    v28 = (v28 + 1) & v50;
    if (((*(v53 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  outlined destroy of BodyTrackingComponent?(v18, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v32(&v6[v31], 1, v7) != 1)
  {
LABEL_7:
    outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    goto LABEL_8;
  }

  outlined destroy of BodyTrackingComponent?(v6, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_16:
  outlined destroy of BodyTrackingComponent?(v56, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of UUID?(*(v57 + 48) + v30, v44);
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for __REAsset();
      swift_dynamicCast();
      result = 0;
      *a1 = v21;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_Tt1g5(v7, result + 1);
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  v10 = *(v6 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a2 + 16));
  v11 = Hasher._finalize()();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v22;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (*(*(*(v6 + 48) + 8 * v13) + 16) != *(a2 + 16))
  {
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = *(v5 + 48);
      if (*(v11 + 8 * v9) == a2)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v11 + 8 * v9);
  }

  else
  {
LABEL_5:
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation5IKRigV5JointV2IDVGMd, &_ss11_SetStorageCy17RealityFoundation5IKRigV5JointV2IDVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVGMd, &_ss11_SetStorageCy17RealityFoundation5IKRigV10ConstraintV2IDVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV28SceneUnderstandingCapabilityVGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMd, &_ss11_SetStorageCy17RealityFoundation22SpatialTrackingSessionC13ConfigurationV16AnchorCapabilityVGMR);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = MEMORY[0x1C68F4BF0](*(*v4 + 40));
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v9 + 48) + 8 * v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v14 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v12, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v17;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1C68F4BD0](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v33 = ~v7;
    v9 = 0xEB00000000746E65;
    v10 = 0xE90000000000006ELL;
    while (1)
    {
      v11 = *(*(v4 + 48) + v8);
      v35 = v8;
      if (v11 > 4)
      {
        if (*(*(v4 + 48) + v8) <= 6u)
        {
          if (v11 == 5)
          {
            v17 = 0xE400000000000000;
            v16 = 1752393069;
          }

          else
          {
            v17 = 0xE700000000000000;
            v16 = 0x73636973796870;
          }
        }

        else if (v11 == 7)
        {
          v17 = 0xE700000000000000;
          v16 = 0x65727574786574;
        }

        else if (v11 == 8)
        {
          v16 = 0x6F4C797469746E65;
          v17 = 0xEA00000000006461;
        }

        else
        {
          v17 = 0xE500000000000000;
          v16 = 0x6F65646976;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x4D6E49746C697562;
        }

        else
        {
          v12 = 0xD000000000000013;
        }

        if (v11 == 3)
        {
          v13 = 0xEF6C616972657461;
        }

        else
        {
          v13 = 0x80000001C18DDAF0;
        }

        if (v11 == 2)
        {
          v12 = 0x6D6E6F7269766E65;
          v13 = v9;
        }

        v14 = *(*(v4 + 48) + v8) ? 0x6F69647561 : 0x6F6974616D696E61;
        v15 = *(*(v4 + 48) + v8) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v16 = *(*(v4 + 48) + v8) <= 1u ? v14 : v12;
        v17 = *(*(v4 + 48) + v8) <= 1u ? v15 : v13;
      }

      v18 = 0x6F4C797469746E65;
      if (a2 != 8)
      {
        v18 = 0x6F65646976;
      }

      v19 = 0xEA00000000006461;
      if (a2 != 8)
      {
        v19 = 0xE500000000000000;
      }

      if (a2 == 7)
      {
        v18 = 0x65727574786574;
        v19 = 0xE700000000000000;
      }

      v20 = 0x73636973796870;
      if (a2 == 5)
      {
        v20 = 1752393069;
      }

      v21 = 0xE400000000000000;
      if (a2 != 5)
      {
        v21 = 0xE700000000000000;
      }

      if (a2 <= 6u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (a2 == 3)
      {
        v22 = 0x4D6E49746C697562;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (a2 == 3)
      {
        v23 = 0xEF6C616972657461;
      }

      else
      {
        v23 = 0x80000001C18DDAF0;
      }

      if (a2 == 2)
      {
        v22 = 0x6D6E6F7269766E65;
        v23 = v9;
      }

      if (a2)
      {
        v24 = 0x6F69647561;
      }

      else
      {
        v24 = 0x6F6974616D696E61;
      }

      if (a2)
      {
        v10 = 0xE500000000000000;
      }

      if (a2 <= 1u)
      {
        v22 = v24;
        v23 = v10;
      }

      v25 = a2 <= 4u ? v22 : v18;
      v26 = a2 <= 4u ? v23 : v19;
      if (v16 == v25 && v17 == v26)
      {
        break;
      }

      v27 = v9;
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v34)
      {
        goto LABEL_73;
      }

      v8 = (v35 + 1) & v33;
      v9 = v27;
      v10 = 0xE90000000000006ELL;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_71;
      }
    }

LABEL_73:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v35);
  }

  else
  {
LABEL_71:
    v28 = *v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v31;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v31 = v36;
    result = 1;
  }

  *a1 = a2;
  return result;
}

{
  v4 = *v2;
  v5 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if ((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v30 = ~v7;
    v9 = 0xED00006F65726574;
    v10 = 0xE900000000000044;
    v11 = 0x336C616974617073;
    while (1)
    {
      v12 = *(*(v4 + 48) + v8);
      if (v12 <= 1)
      {
        if (*(*(v4 + 48) + v8))
        {
          v13 = 0x536C616974617073;
        }

        else
        {
          v13 = 1869508461;
        }

        if (*(*(v4 + 48) + v8))
        {
          v14 = v9;
        }

        else
        {
          v14 = 0xE400000000000000;
        }
      }

      else if (v12 == 2)
      {
        v13 = 0xD000000000000016;
        v14 = 0x80000001C18DDB40;
      }

      else
      {
        if (v12 == 3)
        {
          v13 = v11;
        }

        else
        {
          v13 = 0xD000000000000012;
        }

        if (v12 == 3)
        {
          v14 = 0xE900000000000044;
        }

        else
        {
          v14 = 0x80000001C18DDB70;
        }
      }

      v15 = 0xD000000000000016;
      if (a2 == 3)
      {
        v16 = v11;
      }

      else
      {
        v16 = 0xD000000000000012;
      }

      if (a2 != 3)
      {
        v10 = 0x80000001C18DDB70;
      }

      if (a2 != 2)
      {
        v15 = v16;
      }

      v17 = 0x80000001C18DDB40;
      if (a2 != 2)
      {
        v17 = v10;
      }

      v18 = a2 ? 0x536C616974617073 : 1869508461;
      v19 = a2 ? v9 : 0xE400000000000000;
      v20 = a2 <= 1u ? v18 : v15;
      v21 = a2 <= 1u ? v19 : v17;
      if (v13 == v20 && v14 == v21)
      {
        break;
      }

      v22 = v11;
      v23 = v9;
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_45;
      }

      v8 = (v8 + 1) & v30;
      v9 = v23;
      v10 = 0xE900000000000044;
      v11 = v22;
      if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

LABEL_45:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v8);
  }

  else
  {
LABEL_43:
    v25 = *v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v28;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v31;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4)
{
  v9 = *v4;
  v10 = *(*v4 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](a2);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (*(*(v9 + 48) + 8 * v13) != a2)
    {
      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v13, isUniquelyReferenced_nonNull_native, a3, a4);
    *v4 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC10RealityKit9__REAssetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10RealityKit9__REAssetCGMd, &_ss11_SetStorageCy10RealityKit9__REAssetCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v16 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for __REAsset();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          specialized _NativeSet.resize(capacity:)(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        Hasher.init(_seed:)();
        MEMORY[0x1C68F4C10](*(v15 + 16));
        result = Hasher._finalize()();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
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
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v7 = 0;
    v8 = (v3 + 56);
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
    while (1)
    {
      if (!v11)
      {
        v17 = v7;
        while (1)
        {
          v7 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            __break(1u);
            goto LABEL_38;
          }

          if (v7 >= v12)
          {
            break;
          }

          v18 = v8[v7];
          ++v17;
          if (v18)
          {
            v16 = __clz(__rbit64(v18));
            v11 = (v18 - 1) & v18;
            goto LABEL_17;
          }
        }

        v32 = 1 << *(v3 + 32);
        if (v32 >= 64)
        {
          bzero(v8, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v8 = -1 << v32;
        }

        v2 = v33;
        *(v3 + 16) = 0;
        goto LABEL_36;
      }

      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 32 * (v16 | (v7 << 6));
      v20 = *(v19 + 8);
      v35 = *v19;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (!v22)
      {
        break;
      }

      if (v22 == 1)
      {
        v24 = 2;
LABEL_21:
        MEMORY[0x1C68F4C10](v24);
        String.hash(into:)();
        specialized Set.hash(into:)(v36, v21);
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

LABEL_38:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 32 * v14;
      *v15 = v35;
      *(v15 + 8) = v20;
      *(v15 + 16) = v21;
      *(v15 + 24) = v22;
      ++*(v6 + 16);
      v3 = v34;
    }

    v24 = 1;
    goto LABEL_21;
  }

LABEL_36:

  *v2 = v6;
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
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v27 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      outlined init with take of GeometricPin(*(v3 + 48) + 80 * (v15 | (v7 << 6)), v28);
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      result = outlined init with take of GeometricPin(v28, *(v6 + 48) + 80 * v14);
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v18);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - v12;
  v14 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v15 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVSgGMd, &_ss11_SetStorageCy10Foundation4UUIDVSgGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v50 = v4;
    v44 = v2;
    v18 = 0;
    v19 = (v14 + 56);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 56);
    v23 = (v20 + 63) >> 6;
    v49 = (v5 + 48);
    v45 = (v5 + 8);
    v46 = (v5 + 32);
    v24 = result + 56;
    v25 = v52;
    v47 = v14;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = *(v14 + 48);
      v53 = *(v51 + 72);
      outlined init with take of UUID?(v30 + v53 * (v27 | (v18 << 6)), v13);
      v31 = *(v17 + 40);
      Hasher.init(_seed:)();
      v32 = v13;
      outlined init with copy of UUID?(v13, v25);
      v33 = v50;
      if ((*v49)(v25, 1, v50) == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        v34 = v48;
        (*v46)(v48, v25, v33);
        Hasher._combine(_:)(1u);
        _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
        dispatch thunk of Hashable.hash(into:)();
        v35 = v34;
        v14 = v47;
        (*v45)(v35, v33);
      }

      result = Hasher._finalize()();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      v13 = v32;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v25 = v52;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v25 = v52;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = outlined init with take of UUID?(v32, *(v17 + 48) + v26 * v53);
      ++*(v17 + 16);
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    v43 = 1 << *(v14 + 32);
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    v2 = v44;
    *(v14 + 16) = 0;
  }

  *v2 = v17;
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
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](*(v18 + 16));
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v18);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v26 = v2;
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 4 * (v15 | (v7 << 6)));
      result = MEMORY[0x1C68F4BD0](*(v6 + 40), v18, 4);
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 4 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v18);
      result = Hasher._finalize()();
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
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
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
    v8 = (v3 + 56);
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

{
  v2 = v1;
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
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
    v8 = (v3 + 56);
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
    v28 = v2;
    v13 = result + 56;
    while (v11)
    {
      v18 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_18:
      v21 = *(*(v3 + 48) + (v18 | (v7 << 6)));
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v14 = -1 << *(v6 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v13 + 8 * (v15 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v14) >> 6;
        while (++v16 != v24 || (v23 & 1) == 0)
        {
          v25 = v16 == v24;
          if (v16 == v24)
          {
            v16 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v16);
          if (v26 != -1)
          {
            v17 = __clz(__rbit64(~v26)) + (v16 << 6);
            goto LABEL_10;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v13 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v6 + 48) + v17) = v21;
      ++*(v6 + 16);
    }

    v19 = v7;
    while (1)
    {
      v7 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v7 >= v12)
      {
        break;
      }

      v20 = v8[v7];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v11 = (v20 - 1) & v20;
        goto LABEL_18;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMd, &_ss11_SetStorageCy17RealityFoundation17CollisionPlane_v1VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
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
    for (i = (v9 + 63) >> 6; v11; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_14:
      v16 = *(v3 + 48) + 80 * (v13 | (v7 << 6));
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 12);
      v28 = *(v16 + 32);
      v29 = *(v16 + 16);
      v26 = *(v16 + 64);
      v27 = *(v16 + 48);
      v20 = *(v6 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v17);
      if (v18 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v18;
      }

      Hasher._combine(_:)(LODWORD(v21));
      if (v19 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v19;
      }

      Hasher._combine(_:)(LODWORD(v22));
      specialized SIMD.hash(into:)(v30, v29);
      specialized SIMD.hash(into:)(v30, v28);
      specialized SIMD.hash(into:)(v30, v27);
      specialized SIMD.hash(into:)(v30, v26);
      Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(v6 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v24 = *(v6 + 48) + 80 * result;
      *v24 = v17;
      *(v24 + 8) = v18;
      *(v24 + 12) = v19;
      *(v24 + 16) = v29;
      *(v24 + 32) = v28;
      *(v24 + 48) = v27;
      *(v24 + 64) = v26;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return result;
      }

      if (v7 >= i)
      {
        break;
      }

      v15 = v8[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    v28 = v4;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      result = MEMORY[0x1C68F4BF0](*(v8 + 40), v20);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    if (v11 >= 64)
    {
      bzero((v5 + 56), 8 * v14);
    }

    else
    {
      *v10 = -1 << v11;
    }

    v4 = v28;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
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
    v30 = v4;
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      Hasher.init(_seed:)();
      MEMORY[0x1C68F4C10](v20);
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v4 = v30;
    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(a1 + 16));
  Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5, char a6)
{
  v13 = result;
  v14 = *(*v6 + 16);
  v15 = *(*v6 + 24);
  if (v15 > v14 && (a6 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a6)
  {
    specialized _NativeSet.resize(capacity:)(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v14 + 1);
  }

  v45 = *v6;
  v16 = *(*v6 + 40);
  Hasher.init(_seed:)();
  if (!a4)
  {
    v17 = 1;
    goto LABEL_12;
  }

  if (a4 == 1)
  {
    v17 = 2;
LABEL_12:
    MEMORY[0x1C68F4C10](v17);
    String.hash(into:)();
    specialized Set.hash(into:)(v46, a3);
    goto LABEL_14;
  }

  MEMORY[0x1C68F4C10](0);
LABEL_14:
  v6 = v46;
  result = Hasher._finalize()();
  v18 = -1 << *(v45 + 32);
  a5 = result & ~v18;
  if ((*(v45 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v44 = ~v18;
    v20 = a4 != 2 || (a2 | v13 | a3) != 0;
    v43 = v20;
    do
    {
      v26 = *(v45 + 48) + 32 * a5;
      v8 = *v26;
      v7 = *(v26 + 8);
      v6 = *(v26 + 16);
      v27 = *(v26 + 24);
      if (*(v26 + 24))
      {
        if (v27 != 1)
        {
          if (!v43)
          {
            goto LABEL_51;
          }

          v30 = v13;
          v31 = a2;
          v32 = a3;
          v33 = a4;
          goto LABEL_39;
        }

        if (a4 != 1)
        {
          outlined copy of _Proto_MeshScope_v1(v13, a2, a3, a4);
          v30 = v8;
          v31 = v7;
          v32 = v6;
          v33 = 1;
          goto LABEL_39;
        }

        v28 = v8 == v13 && v7 == a2;
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          outlined copy of _Proto_MeshScope_v1(v13, a2, a3, 1u);
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          v21 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, a3);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 1u);
          v22 = v13;
          v23 = a2;
          v24 = a3;
          v25 = 1;
          goto LABEL_23;
        }

        v29 = 1;
        outlined copy of _Proto_MeshScope_v1(v13, a2, a3, 1u);
        outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 1u);
      }

      else
      {
        if (a4)
        {
          outlined copy of _Proto_MeshScope_v1(v13, a2, a3, a4);
          v30 = v8;
          v31 = v7;
          v32 = v6;
          v33 = 0;
LABEL_39:
          outlined copy of _Proto_MeshScope_v1(v30, v31, v32, v33);
          v29 = a4;
          goto LABEL_40;
        }

        v34 = v8 == v13 && v7 == a2;
        if (v34 || (v35 = *v26, v36 = *(v26 + 8), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
          outlined copy of _Proto_MeshScope_v1(v13, a2, a3, 0);
          outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
          v21 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, a3);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 0);
          outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 0);
          v22 = v13;
          v23 = a2;
          v24 = a3;
          v25 = 0;
LABEL_23:
          result = outlined consume of _Proto_MeshScope_v1(v22, v23, v24, v25);
          if (v21)
          {
            goto LABEL_52;
          }

          goto LABEL_24;
        }

        outlined copy of _Proto_MeshScope_v1(v13, a2, a3, 0);
        outlined copy of _Proto_MeshScope_v1(v8, v7, v6, 0);
        v29 = 0;
      }

LABEL_40:
      outlined consume of _Proto_MeshScope_v1(v8, v7, v6, v27);
      result = outlined consume of _Proto_MeshScope_v1(v13, a2, a3, v29);
LABEL_24:
      a5 = (a5 + 1) & v44;
    }

    while (((*(v45 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_48:
  v37 = *v42;
  *(*v42 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v38 = *(v37 + 48) + 32 * a5;
  *v38 = v13;
  *(v38 + 8) = a2;
  *(v38 + 16) = a3;
  *(v38 + 24) = a4;
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_51:
    outlined consume of _Proto_MeshScope_v1(v8, v7, v6, 2u);
    outlined consume of _Proto_MeshScope_v1(0, 0, 0, 2u);
LABEL_52:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

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
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_21;
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
      goto LABEL_21;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = *(v4 + 48);
  v27 = *(v4 + 32);
  v28 = v10;
  v29 = *(v4 + 64);
  v11 = *(v4 + 16);
  v25 = *v4;
  v26 = v11;
  Hasher.init(_seed:)();
  CollisionPlane_v1.hash(into:)(v24);
  result = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (1)
    {
      v14 = (*(v8 + 48) + 80 * a2);
      v15 = v14->i64[0] == *v4 && v14->f32[2] == *(v4 + 8);
      v16 = v15 && v14->f32[3] == *(v4 + 12);
      if (v16 && (vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v14[3], *(v4 + 48)), vceqq_f32(v14[4], *(v4 + 64))), vandq_s8(vceqq_f32(v14[2], *(v4 + 32)), vceqq_f32(v14[1], *(v4 + 16))))) & 0x80000000) != 0)
      {
        break;
      }

      a2 = (a2 + 1) & v13;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_21:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = (*(v17 + 48) + 80 * a2);
  v19 = *(v4 + 64);
  v18[3] = *(v4 + 48);
  v18[4] = v19;
  v20 = *(v4 + 32);
  v18[1] = *(v4 + 16);
  v18[2] = v20;
  *v18 = *v4;
  v21 = *(v17 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v23;
  }

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
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4 & 1);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
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
  *(*(v12 + 48) + a2) = v4 & 1;
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
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](*(v4 + 16));
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = result & ~v10;
    result = type metadata accessor for __REAsset();
    a2 = v12;
    while (*(*(*(v8 + 48) + 8 * a2) + 16) != *(v4 + 16))
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
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v4;
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
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCys13OpaquePointerVGMd, &_ss11_SetStorageCys13OpaquePointerVGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation7ServiceOGMd, &_ss11_SetStorageCy17RealityFoundation7ServiceOGMR);
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
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
  v38 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_81;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()(&_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMd, &_ss11_SetStorageCy17RealityFoundation27NetworkSendBlockingCategoryOGMR);
      goto LABEL_81;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v37 = ~v9;
    v10 = 0xEF6C616972657461;
    v11 = 0xEB00000000746E65;
    do
    {
      v12 = *(*(v7 + 48) + a2);
      if (v12 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v12 == 5)
          {
            v18 = 0xE400000000000000;
            v17 = 1752393069;
          }

          else
          {
            v18 = 0xE700000000000000;
            v17 = 0x73636973796870;
          }
        }

        else if (v12 == 7)
        {
          v18 = 0xE700000000000000;
          v17 = 0x65727574786574;
        }

        else if (v12 == 8)
        {
          v17 = 0x6F4C797469746E65;
          v18 = 0xEA00000000006461;
        }

        else
        {
          v18 = 0xE500000000000000;
          v17 = 0x6F65646976;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x4D6E49746C697562;
        }

        else
        {
          v13 = 0xD000000000000013;
        }

        if (v12 == 3)
        {
          v14 = v10;
        }

        else
        {
          v14 = 0x80000001C18DDAF0;
        }

        if (v12 == 2)
        {
          v13 = 0x6D6E6F7269766E65;
          v14 = v11;
        }

        v15 = *(*(v7 + 48) + a2) ? 0x6F69647561 : 0x6F6974616D696E61;
        v16 = *(*(v7 + 48) + a2) ? 0xE500000000000000 : 0xE90000000000006ELL;
        v17 = *(*(v7 + 48) + a2) <= 1u ? v15 : v13;
        v18 = *(*(v7 + 48) + a2) <= 1u ? v16 : v14;
      }

      v19 = 0x6F4C797469746E65;
      if (v38 != 8)
      {
        v19 = 0x6F65646976;
      }

      v20 = 0xEA00000000006461;
      if (v38 != 8)
      {
        v20 = 0xE500000000000000;
      }

      if (v38 == 7)
      {
        v19 = 0x65727574786574;
        v20 = 0xE700000000000000;
      }

      v21 = 0x73636973796870;
      if (v38 == 5)
      {
        v21 = 1752393069;
      }

      v22 = 0xE400000000000000;
      if (v38 != 5)
      {
        v22 = 0xE700000000000000;
      }

      if (v38 <= 6u)
      {
        v19 = v21;
        v20 = v22;
      }

      if (v38 == 3)
      {
        v23 = 0x4D6E49746C697562;
      }

      else
      {
        v23 = 0xD000000000000013;
      }

      v24 = v10;
      if (v38 == 3)
      {
        v25 = v10;
      }

      else
      {
        v25 = 0x80000001C18DDAF0;
      }

      if (v38 == 2)
      {
        v23 = 0x6D6E6F7269766E65;
      }

      v26 = v11;
      if (v38 == 2)
      {
        v25 = v11;
      }

      if (v38)
      {
        v27 = 0x6F69647561;
      }

      else
      {
        v27 = 0x6F6974616D696E61;
      }

      if (v38)
      {
        v28 = 0xE500000000000000;
      }

      else
      {
        v28 = 0xE90000000000006ELL;
      }

      if (v38 <= 1u)
      {
        v23 = v27;
        v25 = v28;
      }

      v29 = v38 <= 4u ? v23 : v19;
      v30 = v38 <= 4u ? v25 : v20;
      if (v17 == v29 && v18 == v30)
      {
        goto LABEL_84;
      }

      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v31)
      {
        goto LABEL_85;
      }

      a2 = (a2 + 1) & v37;
      v10 = v24;
      v11 = v26;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_81:
  v32 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v32 + 48) + a2) = v38;
  v33 = *(v32 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (!v34)
  {
    *(v32 + 16) = v35;
    return result;
  }

  __break(1u);
LABEL_84:

LABEL_85:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v33 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_48;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  v32 = v7 + 56;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = ~v9;
    v10 = 0xED00006F65726574;
    v11 = 0x336C616974617073;
    v12 = v7;
    do
    {
      v13 = *(*(v7 + 48) + a2);
      if (v13 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v15 = 0x536C616974617073;
        }

        else
        {
          v15 = 1869508461;
        }

        if (*(*(v7 + 48) + a2))
        {
          v16 = v10;
        }

        else
        {
          v16 = 0xE400000000000000;
        }

        v14 = 0xD000000000000012;
      }

      else
      {
        v14 = 0xD000000000000012;
        if (v13 == 2)
        {
          v15 = 0xD000000000000016;
          v16 = 0x80000001C18DDB40;
        }

        else
        {
          if (v13 == 3)
          {
            v15 = v11;
          }

          else
          {
            v15 = 0xD000000000000012;
          }

          if (v13 == 3)
          {
            v16 = 0xE900000000000044;
          }

          else
          {
            v16 = 0x80000001C18DDB70;
          }
        }
      }

      v17 = 0xD000000000000016;
      v18 = v11;
      if (v33 == 3)
      {
        v14 = v11;
      }

      v19 = 0xE900000000000044;
      if (v33 != 3)
      {
        v19 = 0x80000001C18DDB70;
      }

      if (v33 == 2)
      {
        v20 = 0x80000001C18DDB40;
      }

      else
      {
        v17 = v14;
        v20 = v19;
      }

      if (v33)
      {
        v21 = 0x536C616974617073;
      }

      else
      {
        v21 = 1869508461;
      }

      v22 = v10;
      if (!v33)
      {
        v10 = 0xE400000000000000;
      }

      v23 = v33 <= 1u ? v21 : v17;
      v24 = v33 <= 1u ? v10 : v20;
      if (v15 == v23 && v16 == v24)
      {
        goto LABEL_51;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_52;
      }

      a2 = (a2 + 1) & v31;
      v10 = v22;
      v7 = v12;
      v11 = v18;
    }

    while (((*(v32 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_48:
  v26 = *v30;
  *(*v30 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v33;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v26 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_51:

LABEL_52:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(float32x4_t *a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        specialized _NativeSet.copy()();
        goto LABEL_34;
      }

      specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v11 = a1->i64[1];
    v12 = a1[1].i64[0];
    String.hash(into:)();
    v13 = Hasher._finalize()();
    v14 = -1 << *(v9 + 32);
    a2 = v13 & ~v14;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v15 = ~v14;
      do
      {
        outlined init with copy of GeometricPin(*(v9 + 48) + 80 * a2, v29);
        v16 = v30 == v11 && v31 == v12;
        if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_32;
        }

        v17 = a1[2].i64[0];
        if (v33)
        {
          if (!v17 || (v32 != a1[1].i64[1] || v33 != v17) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        else if (v17)
        {
          goto LABEL_32;
        }

        v18 = vmovn_s32(vceqq_f32(v34, a1[3]));
        if (v18.i8[0] & 1) != 0 && (v18.i8[2] & 1) != 0 && (v18.i8[4] & 1) != 0 && (vminv_u16(vmovn_s32(vceqq_f32(v35, a1[4]))))
        {
          Strong = swift_weakLoadStrong();
          v20 = swift_weakLoadStrong();
          if (Strong)
          {
            if (v20)
            {
              v28 = *(Strong + 16);
              v21 = v20;

              v27 = *(v21 + 16);

              outlined destroy of GeometricPin(v29);
              if (v28 == v27)
              {
                goto LABEL_38;
              }

              goto LABEL_33;
            }
          }

          else if (!v20)
          {
            goto LABEL_37;
          }
        }

LABEL_32:
        outlined destroy of GeometricPin(v29);
LABEL_33:
        a2 = (a2 + 1) & v15;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_34:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of GeometricPin(a1, *(v22 + 48) + 80 * a2);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
LABEL_37:
    outlined destroy of GeometricPin(v29);
LABEL_38:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v61 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v52 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v50 = *(v14 - 8);
  v15 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v60 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46 - v22;
  v24 = *(*v3 + 16);
  v25 = *(*v3 + 24);
  v47 = v3;
  if (v25 <= v24 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v46 = v21;
      specialized _NativeSet.resize(capacity:)(v24 + 1);
    }

    else
    {
      if (v25 > v24)
      {
        specialized _NativeSet.copy()();
        goto LABEL_21;
      }

      v46 = v21;
      specialized _NativeSet.copyAndResize(capacity:)(v24 + 1);
    }

    v59 = *v3;
    v26 = *(v59 + 40);
    Hasher.init(_seed:)();
    outlined init with copy of UUID?(v61, v23);
    v58 = *(v11 + 48);
    v51 = v11 + 48;
    if (v58(v23, 1, v10) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v27 = v52;
      (*(v11 + 32))(v52, v23, v10);
      Hasher._combine(_:)(1u);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v11 + 8))(v27, v10);
    }

    v28 = Hasher._finalize()();
    v29 = -1 << *(v59 + 32);
    a2 = v28 & ~v29;
    v57 = v59 + 56;
    if ((*(v59 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v56 = ~v29;
      v48 = (v11 + 32);
      v30 = *(v50 + 72);
      v54 = (v11 + 8);
      v55 = v30;
      v31 = &_s10Foundation4UUIDVSgMR;
      v49 = v19;
      do
      {
        outlined init with copy of UUID?(*(v59 + 48) + v55 * a2, v19);
        v39 = *(v6 + 48);
        outlined init with copy of UUID?(v19, v9);
        outlined init with copy of UUID?(v61, &v9[v39]);
        v40 = v58;
        if (v58(v9, 1, v10) == 1)
        {
          outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, v31);
          if (v40(&v9[v39], 1, v10) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          outlined init with copy of UUID?(v9, v60);
          if (v40(&v9[v39], 1, v10) != 1)
          {
            v32 = &v9[v39];
            v33 = v10;
            v34 = v31;
            v35 = v60;
            v36 = v52;
            (*v48)(v52, v32, v33);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
            v53 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *v54;
            v19 = v49;
            (*v54)(v36, v33);
            outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, v34);
            v38 = v35;
            v31 = v34;
            v10 = v33;
            v37(v38, v33);
            outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, v31);
            if (v53)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          outlined destroy of BodyTrackingComponent?(v19, &_s10Foundation4UUIDVSgMd, v31);
          (*v54)(v60, v10);
        }

        outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
LABEL_14:
        a2 = (a2 + 1) & v56;
      }

      while (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v41 = *v47;
  *(*v47 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of UUID?(v61, *(v41 + 48) + *(v50 + 72) * a2);
  v43 = *(v41 + 16);
  v44 = __OFADD__(v43, 1);
  v45 = v43 + 1;
  if (v44)
  {
    __break(1u);
LABEL_24:
    outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v41 + 16) = v45;
  }

  return result;
}

{
  v34 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}