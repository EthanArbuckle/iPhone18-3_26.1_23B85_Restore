void *specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd);
}

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit23WeakCalculateExpression33_8D2F688A48D6891537C9DABEFCA94965LLVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 8;
        outlined init with copy of WeakCalculateExpression(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = outlined init with take of WeakCalculateExpression(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit17CalculateMathItem_pGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        outlined init with copy of FindResult(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = outlined init with take of CalculateMathItem(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDV11CalculateUI0E15GraphExpressionCGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69953F0], &_ss18_DictionaryStorageCySS9Coherence7AnyCRDTVGMd);
}

{
  v1 = v0;
  v2 = type metadata accessor for PDFPageID();
  v24 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit9PDFPageIDVSiGMd);
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
        v21 = *(v24 + 72) * v20;
        outlined init with copy of PDFPageID(*(v5 + 48) + v21, v4);
        v22 = *(*(v5 + 56) + 8 * v20);
        result = _s8PaperKit19GraphableExpressionVWObTm_0(v4, *(v7 + 48) + v21, type metadata accessor for PDFPageID);
        *(*(v7 + 56) + 8 * v20) = v22;
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

{
  v1 = v0;
  v29 = type metadata accessor for AnyCRValue();
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi9Coherence10AnyCRValueVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit17FormPageAnalyticsCGMd);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo10UIDragItemCyycGMd);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSiGMd);
}

{
  v1 = v0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v32 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9Coherence3RefVyAC10CRRegisterVy8PaperKit12TaggedStrokeOGGSo17CGAffineTransformVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v42 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v18 *= 48;
        v23 = *(v3 + 56) + v18;
        v24 = *(v23 + 32);
        v25 = *(v23 + 40);
        v26 = v38;
        v27 = *(v38 + 48);
        v28 = *(v19 + 32);
        v29 = *v23;
        v40 = *(v23 + 16);
        v41 = v29;
        result = v28(v27 + v20, v21, v22);
        v30 = *(v26 + 56) + v18;
        v31 = v40;
        *v30 = v41;
        *(v30 + 16) = v31;
        *(v30 + 32) = v24;
        *(v30 + 40) = v25;
        v13 = v42;
      }

      while (v42);
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

        v1 = v33;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v42 = (v17 - 1) & v17;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo10UIDragItemCySo21UITargetedDragPreviewCcGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSObjectCyXlGMd);
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E6995408], &_ss18_DictionaryStorageCy9Coherence7CRAssetVSiGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo22PDFDocumentWriteOptionayXlGMd);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataV8PaperKit10AsyncCacheC0H5State33_D762270EDF0902B2A411957938316D98LLOyAESo10CGImageRefa_GGMd);
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
        v18 = 16 * v17;
        v17 *= 24;
        v19 = *(v2 + 56) + v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(*(v2 + 48) + v18);
        *(*(v4 + 48) + v18) = v23;
        v24 = *(v4 + 56) + v17;
        *v24 = v20;
        *(v24 + 8) = v21;
        *(v24 + 16) = v22;
        outlined copy of Data._Representation(v23, *(&v23 + 1));
        result = outlined copy of AsyncCache<Data, CGImageRef>.CacheState(v20, v21, v22);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DataVSSGMd);
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
        v18 = (*(v2 + 56) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v21;
        v22 = (*(v4 + 56) + v17);
        *v22 = v19;
        v22[1] = v20;
        outlined copy of Data._Representation(v21, *(&v21 + 1));
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

{
  v1 = v0;
  v33 = type metadata accessor for UUID();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV8PaperKit28CanvasCollaborationStateViewC0H6CursorVGMd);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
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
    v31[1] = v35 + 32;
    v31[2] = v35 + 16;
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
        v21 = v32;
        v22 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v18 *= 32;
        v23 = (*(v3 + 56) + v18);
        v24 = v34;
        v25 = *(v34 + 48);
        v26 = *(v19 + 32);
        v27 = v23[1];
        v37 = *v23;
        v38 = v27;
        v26(v25 + v20, v21, v22);
        v28 = (*(v24 + 56) + v18);
        v29 = v38;
        *v28 = v37;
        v28[1] = v29;

        v30 = *(&v37 + 1);

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

        v1 = v31[0];
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
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

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit17DrawingIdentifier33_8D2F688A48D6891537C9DABEFCA94965LLVAC27CalculateDocumentControllerCGMd);
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
        result = v19;
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDVSo9PKDrawingCGMd);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69695A8], &_ss18_DictionaryStorageCy10Foundation4UUIDVSo8NSNumberCGMd);
}

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathV8PaperKit20AnyCanvasElementViewCGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21NSAttributedStringKeyaypGMd);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemCSo6CGRectV_12CoreGraphics7CGFloatVtGMd);
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
        v19 = *(v2 + 56) + 40 * v17;
        v20 = *(v19 + 32);
        v21 = *v19;
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        result = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo10UIDragItemC8PaperKit22StickerDropPreviewInfoVGMd);
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
        v19 = *(v2 + 56) + 40 * v17;
        v20 = *(v19 + 32);
        v21 = *v19;
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = *(v4 + 56) + 40 * v17;
        *v23 = v21;
        *(v23 + 16) = v22;
        *(v23 + 32) = v20;
        result = v18;
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E6995408], &_ss18_DictionaryStorageCy9Coherence7CRAssetV8PaperKit0eF11PDFDocumentCGMd);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo7UIColorCSo7UIImageCGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd);
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

{
  return specialized _NativeDictionary.copy()(MEMORY[0x1E69954B8], &_ss18_DictionaryStorageCy9Coherence9CRKeyPathVSo13PDFAnnotationCGMd);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8PaperKit0cD7PDFPageCAC15PageOverlayView_pGMd);
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
        v20 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 16 * v17) = v20;
        v19 = v18;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySo13PDFAnnotationC8PaperKit20AnyCanvasElementViewCGMd);
}

void *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v41 = a1(0);
  v43 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v36 = v4;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v14;
    v15 = 1 << *(v6 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v6 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v6;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v44 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = 16 * v22;
        v24 = *(v6 + 56);
        v25 = (*(v6 + 48) + 16 * v22);
        v26 = *v25;
        v27 = v25[1];
        v28 = v43;
        v29 = *(v43 + 72) * v22;
        v30 = v40;
        v31 = v41;
        (*(v43 + 16))(v40, v24 + v29, v41);
        v32 = v42;
        v33 = (*(v42 + 48) + v23);
        *v33 = v26;
        v33[1] = v27;
        v34 = *(v32 + 56) + v29;
        v6 = v39;
        (*(v28 + 32))(v34, v30, v31);

        v17 = v44;
      }

      while (v44);
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

        v4 = v36;
        v8 = v42;
        goto LABEL_21;
      }

      v21 = *(v10 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
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

{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
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

{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
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
        result = (*(v23 + 32))(*(v18 + 48) + v24, v26, v25);
        *(*(v18 + 56) + 8 * v22) = v27;
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

void *specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 16 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 16 * v18) = v20;
        v21 = v19;
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

      v17 = *(v3 + 64 + 8 * v9);
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

char *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v34 - v6;
  v43 = type metadata accessor for CRKeyPath();
  v47 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v8 = *v3;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
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

id specialized _NativeDictionary.copy()(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
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
        v20 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        *(*(v5 + 56) + 8 * v18) = v20;
        v21 = v19;
        result = v20;
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

      v17 = *(v3 + 64 + 8 * v9);
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

char *specialized _NativeDictionary.copy()(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v44 = a1(0);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v33 - v5;
  v42 = type metadata accessor for UUID();
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *v2;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v33 = v4;
    v34 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v45 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v38 = v46 + 16;
    v39 = v18;
    v36 = v46 + 32;
    v37 = v47 + 16;
    v35 = v47 + 32;
    v40 = v7;
    v20 = v41;
    v19 = v42;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v48 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = v46;
        v26 = *(v46 + 72) * v24;
        (*(v46 + 16))(v20, *(v7 + 48) + v26, v19);
        v27 = v47;
        v28 = *(v47 + 72) * v24;
        v29 = v43;
        v30 = v44;
        (*(v47 + 16))(v43, *(v7 + 56) + v28, v44);
        v31 = v45;
        (*(v25 + 32))(*(v45 + 48) + v26, v20, v19);
        v32 = *(v31 + 56);
        v7 = v40;
        result = (*(v27 + 32))(v32 + v28, v29, v30);
        v18 = v39;
        v17 = v48;
      }

      while (v48);
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

        v4 = v33;
        v9 = v45;
        goto LABEL_18;
      }

      v23 = *(v34 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v48 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v4 = v9;
  }

  return result;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 3) < *(v6 - 3))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

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

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x1E69695A8]);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMd, &_ss23_ContiguousArrayStorageCy9Coherence15SharedTagged_10Vy8PaperKit0F13CanvasElementVGGMR, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized static SortableCalculateExpression.== infix(_:_:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  CalculateExpression.id.getter();
  CalculateExpression.id.getter();
  v19 = static UUID.== infix(_:_:)();
  v20 = *(v13 + 8);
  v20(v15, v12);
  v20(v18, v12);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = CalculateExpression.expression.getter();
  v23 = v22;
  if (v21 == CalculateExpression.expression.getter() && v23 == v24)
  {

    if (a1 != a2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v26 = 0;
    if ((v25 & 1) == 0 || a1 != a2)
    {
      return v26 & 1;
    }
  }

  v27 = CalculateExpression.format.getter();
  if (v27 != CalculateExpression.format.getter())
  {
LABEL_12:
    v26 = 0;
    return v26 & 1;
  }

  if (a4 == v29 && a5 == v30)
  {
    v26 = 1;
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v26 & 1;
}

void *outlined copy of SortableCalculateExpression?(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t specialized SortableCalculateExpression.encode(to:)(void *a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[1] = a5;
  v17[0] = a4;
  v7 = type metadata accessor for UUID();
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV10CodingKeysOGMd);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v17 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  CalculateExpression.id.getter();
  v25 = 0;
  _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v19 = v10;
  v14 = v17[2];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v18 + 8))(v9, v7);
  if (v14)
  {
    return (*(v11 + 8))(v13, v19);
  }

  CalculateExpression.expression.getter();
  v24 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();

  v23 = a2;
  v22 = 2;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  CalculateExpression.format.getter();
  v21 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v20 = 4;
  v16 = v19;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v11 + 8))(v13, v16);
}

unint64_t lazy protocol witness table accessor for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys);
  }

  return result;
}

unint64_t specialized SortableCalculateExpression.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SortableCalculateExpression.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized SortableCalculateExpression.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for CalculateExpression.Base();
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v52 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLV10CodingKeysOGMd);
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type SortableCalculateExpression.CodingKeys and conformance SortableCalculateExpression.CodingKeys();
  v16 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v48 = v8;
  v55 = v5;
  v18 = v51;
  v17 = v52;
  v19 = v53;
  LOBYTE(v57) = 0;
  _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  LOBYTE(v57) = 1;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v21;
  v46 = v20;
  v47 = v11;
  LOBYTE(v57) = 3;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = 2;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v44 = v23;
  v45 = 0;
  v25 = v57;
  LOBYTE(v57) = 4;
  if (KeyedDecodingContainer.contains(_:)())
  {
    LOBYTE(v57) = 4;
    v26 = v45;
    v27 = KeyedDecodingContainer.decode(_:forKey:)();
    if (!v26)
    {
      v29 = v19;
      v42 = v28;
      v43 = v27;
      v45 = 0;
      goto LABEL_9;
    }

    (*(v17 + 8))(v47, v6);
    (*(v18 + 8))(v14, v12);
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v43 = 0;
  v42 = 0xE000000000000000;
  v29 = v19;
LABEL_9:
  v53 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo12CalculateKeya_yptGMd);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4058CF0;
  v31 = *MEMORY[0x1E6992250];
  v41 = inited;
  *(inited + 32) = v31;
  v40 = inited + 32;
  result = type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSNumber);
  v32 = v44;
  if ((v44 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v33 = result;
    v34 = v31;
    v35.super.super.isa = NSNumber.init(integerLiteral:)(v32).super.super.isa;
    v36 = v41;
    v41[8].super.super.isa = v33;
    v36[5].super.super.isa = v35.super.super.isa;
    v44 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo12CalculateKeya_ypTt0g5Tf4g_n(v36);
    swift_setDeallocating();
    outlined destroy of StocksKitCurrencyCache.Provider?(v40, &_sSo12CalculateKeya_yptMd);
    v37 = v47;
    (*(v17 + 16))(v48, v47, v6);
    (*(v49 + 104))(v55, *MEMORY[0x1E6992100], v50);
    type metadata accessor for CalculateExpression();
    swift_allocObject();
    v38 = CalculateExpression.init(_:options:base:id:)();
    (*(v17 + 8))(v37, v6);
    (*(v18 + 8))(v14, v12);
    result = __swift_destroy_boxed_opaque_existential_0(v54);
    *v29 = 0;
    v29[1] = v38;
    v29[2] = v25;
    v39 = v42;
    v29[3] = v43;
    v29[4] = v39;
  }

  return result;
}

uint64_t specialized CanvasCalculateDocumentProxy.__allocating_init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8PaperKit28CanvasCalculateDocumentProxyC10CodingKeysOGMd);
  v14 = *(v3 - 8);
  v15 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  type metadata accessor for CanvasCalculateDocumentProxy();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4UUIDVTt0g5Tf4g_n(v7);
  *(v6 + 40) = 0;
  *(v6 + 48) = 0;
  *(v6 + 32) = v8;
  *(v6 + 56) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVTt0g5Tf4g_n(v7);
  *(v6 + 64) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
  }

  else
  {
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy10Foundation4UUIDV8PaperKit27SortableCalculateExpression33_E3D731F3B4C1040BE7071FABB2CF7A67LLVGMd);
    lazy protocol witness table accessor for type [UUID : SortableCalculateExpression] and conformance <> [A : B]();
    v10 = v15;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v9 + 8))(v5, v10);
    v11 = v16;
    swift_beginAccess();
    *(v6 + 56) = v11;

    *(v6 + 16) = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

unint64_t lazy protocol witness table accessor for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CanvasCalculateDocumentProxy.CodingKeys and conformance CanvasCalculateDocumentProxy.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SortableCalculateExpression and conformance SortableCalculateExpression()
{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression;
  if (!lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SortableCalculateExpression and conformance SortableCalculateExpression);
  }

  return result;
}

uint64_t outlined destroy of GraphableExpression(uint64_t a1)
{
  v2 = type metadata accessor for GraphableExpression(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<CRRegister<TaggedStroke>> and conformance Ref<A>);
  }

  return result;
}

uint64_t _s8PaperKit19GraphableExpressionVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit5ColorVAC9Coherence7CRValueAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

void Capsule<>.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  v12 = CGImageSource(from:fileCoordinator:)(a1, 0);
  if (v2)
  {
    goto LABEL_2;
  }

  v13 = v12;
  if (!CGImageSourceHasNormalOrientation(_:)(v12) || (v14 = CGImageSourceCopyMetadataAtIndex(v13, 0, 0)) == 0)
  {
LABEL_7:
    v18 = [objc_opt_self() mainScreen];
    [v18 nativeBounds];

    v19 = v13;
    Capsule<>.init(burnedIn:maxArea:)(v19, v8);
    v20 = (*(v6 + 32))(a2, v8, v5);
    MEMORY[0x1EEE9AC00](v20);
    v21[-2] = v19;
    Capsule.callAsFunction<A>(_:)();

LABEL_2:
    _s8PaperKit9DataOrURLOWOhTm_1(a1, type metadata accessor for DataOrURL);
    return;
  }

  v15 = v14;
  v16 = Data.init(with:path:in:)(0x70705F656C707061, 0xE90000000000006BLL, 0x6C65646F6DLL, 0xE500000000000000, v15);
  if (v17 >> 60 == 15)
  {

    goto LABEL_7;
  }

  v21[5] = v17;
  v21[1] = v16;
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v21[0] = type metadata accessor for Image(0);
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);

  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();

  _s8PaperKit9DataOrURLOWOhTm_1(a1, type metadata accessor for DataOrURL);
  (*(v6 + 32))(a2, v11, v5);
}

uint64_t CGImageSource(from:fileCoordinator:)(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = 0;
  _s8PaperKit9DataOrURLOWOcTm_0(a1, v10, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v23 = *v10;
    v24 = v10[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v22 = CGImageSourceCreateWithData(isa, 0);
    outlined consume of Data._Representation(v23, v24);

    v21 = 0;
    v30 = v22;
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_9:
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    swift_willThrow();

    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21);
    return v22;
  }

  (*(v5 + 32))(v7, v10, v4);
  if (!a2)
  {
    URL._bridgeToObjectiveC()(v11);
    v27 = v26;
    v22 = CGImageSourceCreateWithURL(v26, 0);

    (*(v5 + 8))(v7, v4);
    v28 = v30;
    v30 = v22;

    v21 = 0;
    if (v22)
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  v12 = a2;
  URL._bridgeToObjectiveC()(v13);
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = &v30;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in CGImageSource(from:fileCoordinator:);
  *(v17 + 24) = v16;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ();
  aBlock[3] = &block_descriptor_39;
  v18 = _Block_copy(aBlock);

  [v12 coordinateReadingItemAtURL:v15 options:0 error:0 byAccessor:v18];
  _Block_release(v18);

  (*(v5 + 8))(v7, v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v21 = partial apply for closure #1 in CGImageSource(from:fileCoordinator:);
    v22 = v30;
    if (!v30)
    {
      goto LABEL_9;
    }

LABEL_7:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v21);
    return v22;
  }

  __break(1u);
  return result;
}

BOOL CGImageSourceHasNormalOrientation(_:)(CGImageSource *a1)
{
  v1 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
  if (!v1)
  {
    return 1;
  }

  v2 = v1;
  type metadata accessor for NSObject();
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject);
  v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *MEMORY[0x1E696DE78];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = v4;
    v6 = __CocoaDictionary.lookup(_:)();

    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    if (!*(v3 + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v4), (v7 & 1) == 0))
    {

      return 1;
    }

    swift_unknownObjectRetain();
  }

  if (swift_dynamicCast())
  {
    return v9 < 2;
  }

  return 1;
}

uint64_t Data.init(with:path:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{

  MEMORY[0x1DA6CD010](0x5F636E653ALL, 0xE500000000000000);
  MEMORY[0x1DA6CD010](a3, a4);
  MEMORY[0x1DA6CD010](58, 0xE100000000000000);
  MEMORY[0x1DA6CD010](a3, a4);

  v10 = a5;
  v11 = Data.init(at:in:)(a1, a2, v10);
  if (v12 >> 60 == 15)
  {
    result = Data.init(at:in:)(a1, a2, v10);
    if (v14 >> 60 == 15)
    {
      return 0;
    }
  }

  else
  {
    v15 = v11;
    v16 = v12;
    objc_opt_self();
    v17 = +[PPKPayloadEncryption sharedInstance];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = [(PPKPayloadEncryption *)v17 decryptData:?];

    v20 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    outlined consume of Data?(v15, v16);

    return v20;
  }

  return result;
}

void Capsule<>.init(burnedIn:maxArea:)(CGImageSource *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for Image(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - v9;
  if (one-time initialization token for forceOriginalResolution != -1)
  {
    swift_once();
  }

  v11 = specialized static Capsule<>.imageData(from:downsampled:with:)(a1);
  if (v12 >> 60 == 15)
  {
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    swift_willThrow();
  }

  else
  {
    v15 = 1.0;
    *&v22[5] = v14;
    v22[0] = a2;
    *&v22[1] = v13;
    if (v13 <= 0.0)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = 1.0;
      if (v14 > 0.0)
      {
        v17 = v13 / v14;
        if (v13 / v14 <= 1.0)
        {
          v19 = 1024.0;
          v18 = v17 * 1024.0;
        }

        else
        {
          v18 = 1024.0;
          v19 = 1024.0 / v17;
        }

        if (v18 >= v13)
        {
          v15 = v13;
        }

        else
        {
          v15 = v18;
        }

        if (v19 >= v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = v19;
        }
      }
    }

    v20 = v11;
    v21 = v12;
    outlined copy of Data._Representation(v11, v12);
    Image.init(from:size:)(v20, v21, v15, v16);
    _s8PaperKit9DataOrURLOWOcTm_0(v10, v7, type metadata accessor for Image);
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    Capsule.init(_:id:)();

    outlined consume of Data?(v20, v21);
    _s8PaperKit9DataOrURLOWOhTm_1(v10, type metadata accessor for Image);
  }
}

uint64_t Capsule<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for DataOrURL();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(from:), 0, 0);
}

uint64_t Capsule<>.init(from:)()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v8 = v0[3];
  v7 = v0[4];
  *v2 = v8;
  v2[1] = v7;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(v8, v7);
  static TaskPriority.userInitiated.getter();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
  _s8PaperKit9DataOrURLOWOcTm_0(v2, v1, type metadata accessor for DataOrURL);
  outlined init with copy of Date?(v5, v4, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOcTm_0(v1, v3, type metadata accessor for DataOrURL);
  outlined init with copy of Date?(v4, v6, &_sScPSgMd);
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = Capsule<>.init(from:);
  v11 = v0[13];
  v12 = v0[9];
  v13 = v0[7];

  return Capsule<>.init(_:priority:fileCoordinator:)(v13, v11, v12, 0);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = Capsule<>.init(from:);
  }

  else
  {
    v2 = Capsule<>.init(from:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[8];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v13 = v0[4];
  v7 = v0[2];
  v11 = v0[11];
  v12 = v0[3];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[10], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v1, type metadata accessor for DataOrURL);
  v8 = *(v5 + 32);
  v8(v3, v4, v6);
  v8(v7, v3, v6);
  outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v2, type metadata accessor for DataOrURL);
  outlined consume of Data._Representation(v12, v13);

  v9 = v0[1];

  return v9();
}

{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[11];
  v4 = v0[3];
  v5 = v0[4];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[10], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v2, type metadata accessor for DataOrURL);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v1, type metadata accessor for DataOrURL);
  outlined consume of Data._Representation(v4, v5);

  v6 = v0[1];

  return v6();
}

uint64_t Capsule<>.init(baseImage:with:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  type metadata accessor for CRKeyPath();
  v5[7] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = type metadata accessor for Image(0);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImage:with:priority:), 0, 0);
}

uint64_t Capsule<>.init(baseImage:with:priority:)()
{
  if (one-time initialization token for forceOriginalResolution != -1)
  {
    swift_once();
  }

  v1 = static Capsule<>.forceOriginalResolution;
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = Capsule<>.init(baseImage:with:priority:);
  v3 = v0[6];
  v4 = v0[3];

  return static Capsule<>.imageDataAsync(from:downsampled:priority:)(v4, (v1 & 1) == 0, v3);
}

{
  v1 = v0[17];
  if (v1 >> 60 == 15)
  {
    v3 = v0[4];
    v2 = v0[5];
    v4 = type metadata accessor for CRCodingError();
    lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198]);
    swift_allocError();
    strcpy(v5, "Malformed data");
    v5[15] = -18;
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6995188], v4);
    swift_willThrow();
    outlined consume of Data._Representation(v3, v2);
    v6 = v0[3];
    outlined destroy of StocksKitCurrencyCache.Provider?(v0[6], &_sScPSgMd);
    _s8PaperKit9DataOrURLOWOhTm_1(v6, type metadata accessor for DataOrURL);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[16];
    v11 = v0[4];
    v10 = v0[5];
    type metadata accessor for MainActor();
    outlined copy of Data?(v9, v1);
    outlined copy of Data._Representation(v11, v10);
    v0[20] = static MainActor.shared.getter();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImage:with:priority:), v13, v12);
  }
}

{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  v3 = *(v0 + 144);
  v4 = v1 <= 0.0;
  v5 = 1.0;
  v6 = 1.0;
  if (!v4 && v2 > 0.0)
  {
    v7 = *(v0 + 152);
    v8 = v3 / v7;
    if (v3 / v7 <= 1.0)
    {
      v10 = 1024.0;
      v9 = v8 * 1024.0;
    }

    else
    {
      v9 = 1024.0;
      v10 = 1024.0 / v8;
    }

    if (v9 >= v3)
    {
      v5 = *(v0 + 144);
    }

    else
    {
      v5 = v9;
    }

    if (v10 >= v7)
    {
      v6 = *(v0 + 152);
    }

    else
    {
      v6 = v10;
    }
  }

  v12 = *(v0 + 128);
  v11 = *(v0 + 136);
  v14 = *(v0 + 104);
  v13 = *(v0 + 112);
  v15 = *(v0 + 32);
  v16 = *(v0 + 40);
  outlined copy of Data._Representation(v12, v11);
  Image.init(from:size:)(v12, v11, v5, v6);
  _s8PaperKit9DataOrURLOWOcTm_0(v13, v14, type metadata accessor for Image);
  static CRKeyPath.unique.getter();
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  Capsule.init(_:id:)();
  if (v5 / v3 <= 1.0)
  {
    v17 = v5 / v3;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = swift_task_alloc();
  *(v18 + 16) = v15;
  *(v18 + 24) = v16;
  *(v18 + 32) = v17;
  Capsule.callAsFunction<A>(_:)();

  if (*(v0 + 176) == 1)
  {
    v20 = *(v0 + 128);
    v19 = *(v0 + 136);
    v21 = *(v0 + 72);
    outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
    outlined consume of Data?(v20, v19);
    v22 = *(v21 + 32);
  }

  else
  {
    outlined copy of Data._Representation(*(v0 + 32), *(v0 + 40));
    if (one-time initialization token for allReadableFileFormatVersions != -1)
    {
      swift_once();
    }

    Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
    *(v0 + 168) = 0;
    v24 = *(v0 + 128);
    v23 = *(v0 + 136);
    v25 = *(v0 + 112);
    v26 = *(v0 + 72);
    v31 = *(v0 + 80);
    v27 = *(v0 + 64);
    v32 = *(v0 + 32);
    v33 = *(v0 + 40);
    v28 = *(v0 + 88);
    (*(v26 + 8))();
    v22 = *(v26 + 32);
    v22(v28, v31, v27);
    *(swift_task_alloc() + 16) = v25;
    Capsule.mutate<A>(_:)();
    outlined consume of Data._Representation(v32, v33);
    outlined consume of Data?(v24, v23);
  }

  v29 = *(v0 + 112);
  v22(*(v0 + 16), *(v0 + 88), *(v0 + 64));
  _s8PaperKit9DataOrURLOWOhTm_1(v29, type metadata accessor for Image);

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImage:with:priority:), 0, 0);
}

{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[6];
  v4 = v0[3];
  outlined consume of Data._Representation(v0[4], v0[5]);
  outlined consume of Data?(v2, v1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v3, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v4, type metadata accessor for DataOrURL);

  v5 = v0[1];

  return v5();
}

{
  v2 = v0[16];
  v1 = v0[17];
  outlined consume of Data._Representation(v0[4], v0[5]);
  outlined consume of Data?(v2, v1);
  v3 = v0[3];
  outlined destroy of StocksKitCurrencyCache.Provider?(v0[6], &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v3, type metadata accessor for DataOrURL);

  v4 = v0[1];

  return v4();
}

uint64_t Capsule<>.init(baseImage:with:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = a4;

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImage:with:priority:), 0, 0);
}

uint64_t Capsule<>.init(_:priority:fileCoordinator:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
  v4[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(_:priority:fileCoordinator:), 0, 0);
}

uint64_t Capsule<>.init(_:priority:fileCoordinator:)()
{
  v1 = CGImageSource(from:fileCoordinator:)(*(v0 + 56), *(v0 + 72));
  *(v0 + 144) = v1;
  v2 = v1;
  if (!CGImageSourceHasNormalOrientation(_:)(v1) || (v3 = CGImageSourceCopyMetadataAtIndex(v2, 0, 0), (*(v0 + 152) = v3) == 0))
  {
LABEL_8:
    v13 = *(v0 + 144);
    outlined init with copy of Date?(*(v0 + 64), *(v0 + 112), &_sScPSgMd);
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 248) = v15;
    *v15 = v0;
    v15[1] = Capsule<>.init(_:priority:fileCoordinator:);
    v16 = *(v0 + 144);
    v17 = *(v0 + 112);
    v18 = *(v0 + 96);

    return Capsule<>.init(burnedIn:priority:)(v18, v16, v17);
  }

  v4 = v3;
  v5 = Data.init(with:path:in:)(0x6B615F656C707061, 0xE800000000000000, 0x616D695F65736162, 0xEA00000000006567, v4);
  *(v0 + 160) = v5;
  *(v0 + 168) = v6;
  if (v6 >> 60 != 15)
  {
    v7 = v5;
    v8 = v6;
    v9 = Data.init(with:path:in:)(0x6B615F656C707061, 0xE800000000000000, 0x6C65646F6DLL, 0xE500000000000000, v4);
    *(v0 + 176) = v9;
    *(v0 + 184) = v10;
    if (v10 >> 60 != 15)
    {
      v30 = v9;
      v31 = v10;
      outlined init with copy of Date?(*(v0 + 64), *(v0 + 128), &_sScPSgMd);
      outlined copy of Data?(v7, v8);
      outlined copy of Data?(v30, v31);
      v32 = swift_task_alloc();
      *(v0 + 192) = v32;
      *v32 = v0;
      v32[1] = Capsule<>.init(_:priority:fileCoordinator:);
      v34 = *(v0 + 128);
      v33 = *(v0 + 136);

      return Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:)(v33, v7, v8, v30, v31, v34);
    }

    outlined consume of Data?(v7, v8);
  }

  v11 = Data.init(with:path:in:)(0x70705F656C707061, 0xE90000000000006BLL, 0x6C65646F6DLL, 0xE500000000000000, *(v0 + 152));
  *(v0 + 208) = v11;
  *(v0 + 216) = v12;
  if (v12 >> 60 == 15)
  {

    goto LABEL_8;
  }

  v20 = *(v0 + 120);
  v21 = v11;
  v22 = v12;
  outlined init with copy of Date?(*(v0 + 64), v20, &_sScPSgMd);
  outlined copy of Data._Representation(v21, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v21;
  v23[5] = v22;
  outlined copy of Data._Representation(v21, v22);
  v24 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ9Coherence7CapsuleVy8PaperKit5ImageVG_Tt2g5(0, 0, v20, &async function pointer to partial apply for closure #1 in Capsule<>.init(serializedData:priority:), v23);
  *(v0 + 224) = v24;
  v25 = swift_task_alloc();
  *(v0 + 232) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
  *v25 = v0;
  v25[1] = Capsule<>.init(_:priority:fileCoordinator:);
  v27 = *(v0 + 104);
  v28 = *(v0 + 80);
  v29 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](v27, v24, v28, v26, v29);
}

{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  else
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 136);
  v4 = *(v0 + 80);
  v5 = *(v0 + 88);
  outlined consume of Data?(*(v0 + 160), *(v0 + 168));
  outlined consume of Data?(v1, v2);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(*(v0 + 136), &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd);
    v6 = Data.init(with:path:in:)(0x70705F656C707061, 0xE90000000000006BLL, 0x6C65646F6DLL, 0xE500000000000000, *(v0 + 152));
    *(v0 + 208) = v6;
    *(v0 + 216) = v7;
    if (v7 >> 60 == 15)
    {

      v8 = *(v0 + 144);
      outlined init with copy of Date?(*(v0 + 64), *(v0 + 112), &_sScPSgMd);
      v9 = v8;
      v10 = swift_task_alloc();
      *(v0 + 248) = v10;
      *v10 = v0;
      v10[1] = Capsule<>.init(_:priority:fileCoordinator:);
      v11 = *(v0 + 144);
      v12 = *(v0 + 112);
      v13 = *(v0 + 96);

      return Capsule<>.init(burnedIn:priority:)(v13, v11, v12);
    }

    else
    {
      v24 = *(v0 + 120);
      v25 = v6;
      v26 = v7;
      outlined init with copy of Date?(*(v0 + 64), v24, &_sScPSgMd);
      outlined copy of Data._Representation(v25, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v25;
      v27[5] = v26;
      outlined copy of Data._Representation(v25, v26);
      v28 = _sScTss5Error_pRs_rlE8detached4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntFZ9Coherence7CapsuleVy8PaperKit5ImageVG_Tt2g5(0, 0, v24, &async function pointer to partial apply for closure #1 in Capsule<>.init(serializedData:priority:), v27);
      *(v0 + 224) = v28;
      v29 = swift_task_alloc();
      *(v0 + 232) = v29;
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
      *v29 = v0;
      v29[1] = Capsule<>.init(_:priority:fileCoordinator:);
      v31 = *(v0 + 104);
      v32 = *(v0 + 80);
      v33 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v31, v28, v32, v30, v33);
    }
  }

  else
  {
    v15 = *(v0 + 144);
    v16 = *(v0 + 136);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v19 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v21 = *(v0 + 56);

    outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_sScPSgMd);
    _s8PaperKit9DataOrURLOWOhTm_1(v21, type metadata accessor for DataOrURL);
    (*(v18 + 32))(v22, v16, v17);

    v23 = *(v0 + 8);

    return v23();
  }
}

{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  else
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = v0[15];
  v5 = v0[13];
  v7 = v0[10];
  v6 = v0[11];
  v11 = v0[9];
  v12 = v0[8];
  v13 = v0[19];
  v8 = v0[6];
  v14 = v0[7];
  outlined consume of Data?(v2, v1);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sScPSgMd);
  (*(v6 + 32))(v8, v5, v7);
  *(swift_task_alloc() + 16) = v3;
  Capsule.callAsFunction<A>(_:)();

  outlined consume of Data?(v2, v1);

  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v14, type metadata accessor for DataOrURL);

  v9 = v0[1];

  return v9();
}

{
  v23 = v0;
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[19];
  v4 = v0[15];
  outlined consume of Data?(v1, v2);
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sScPSgMd);

  outlined consume of Data?(v1, v2);
  v5 = v0[30];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D38C4000, v8, v9, "Unable to read or decrypt archived model data: %s.\nFalling back to a burned-in image.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  else
  {
  }

  v15 = v0[18];
  outlined init with copy of Date?(v0[8], v0[14], &_sScPSgMd);
  v16 = v15;
  v17 = swift_task_alloc();
  v0[31] = v17;
  *v17 = v0;
  v17[1] = Capsule<>.init(_:priority:fileCoordinator:);
  v18 = v0[18];
  v19 = v0[14];
  v20 = v0[12];

  return Capsule<>.init(burnedIn:priority:)(v20, v18, v19);
}

{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  else
  {
    v2 = Capsule<>.init(_:priority:fileCoordinator:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  v1 = v0[18];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[8];
  (*(v0[11] + 32))(v0[6], v0[12], v0[10]);
  *(swift_task_alloc() + 16) = v1;
  Capsule.callAsFunction<A>(_:)();

  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v3, type metadata accessor for DataOrURL);

  v5 = v0[1];

  return v5();
}

{
  v23 = v0;
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);

  outlined consume of Data?(v4, v3);
  outlined consume of Data?(v1, v2);
  v5 = *(v0 + 200);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = Error.localizedDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v22);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1D38C4000, v8, v9, "Unable to read or decrypt archived model data: %s.\nFalling back to a burned-in image.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1DA6D0660](v11, -1, -1);
    MEMORY[0x1DA6D0660](v10, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 144);
  outlined init with copy of Date?(*(v0 + 64), *(v0 + 112), &_sScPSgMd);
  v16 = v15;
  v17 = swift_task_alloc();
  *(v0 + 248) = v17;
  *v17 = v0;
  v17[1] = Capsule<>.init(_:priority:fileCoordinator:);
  v18 = *(v0 + 144);
  v19 = *(v0 + 112);
  v20 = *(v0 + 96);

  return Capsule<>.init(burnedIn:priority:)(v20, v18, v19);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  outlined destroy of StocksKitCurrencyCache.Provider?(v1, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v3, type metadata accessor for DataOrURL);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t static Capsule<>.imageDataAsync(from:downsampled:priority:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 160) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a3;
  v4 = *(type metadata accessor for DataOrURL() - 8);
  *(v3 + 64) = v4;
  *(v3 + 72) = *(v4 + 64);
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  *(v3 + 136) = a2;
  *(v3 + 48) = a1;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

uint64_t static Capsule<>.imageDataAsync(from:downsampled:priority:)()
{
  v0[11] = objc_opt_self();
  v0[12] = type metadata accessor for MainActor();
  v0[13] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), v2, v1);
}

{
  v1 = *(v0 + 88);

  *(v0 + 112) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  *(v0 + 120) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), v2, v1);
}

{
  v1 = v0[14];

  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;

  v0[16] = v3;
  v0[17] = v5;

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 160);
  v6 = fmax(*(v0 + 136) * *(v0 + 128), 3307500.0);
  _s8PaperKit9DataOrURLOWOcTm_0(*(v0 + 48), v1, type metadata accessor for DataOrURL);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = v7 + v2;
  v9 = (v7 + v2) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  outlined init with take of DataOrURL(v1, v10 + v7);
  *(v10 + v8) = v5;
  *(v10 + v9 + 8) = v6;
  v11 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZ10Foundation4DataV_So6CGSizeVtSg_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:), v10);
  *(v0 + 144) = v11;
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So6CGSizeVtSgMd);
  *v12 = v0;
  v12[1] = static Capsule<>.imageDataAsync(from:downsampled:priority:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v11, v13);
}

{

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

{
  v0[8] = objc_opt_self();
  v0[9] = type metadata accessor for MainActor();
  v0[10] = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), v2, v1);
}

{
  v1 = *(v0 + 64);

  *(v0 + 88) = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  *(v0 + 96) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), v2, v1);
}

{
  v1 = v0[11];

  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;

  v0[13] = v3;
  v0[14] = v5;

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  v1 = *(v0 + 136);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = fmax(*(v0 + 112) * *(v0 + 104), 3307500.0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
  *(v5 + 48) = v4;
  v6 = v3;
  v7 = _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZ10Foundation4DataV_So6CGSizeVtSg_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:), v5);
  *(v0 + 120) = v7;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So6CGSizeVtSgMd);
  *v8 = v0;
  v8[1] = static Capsule<>.imageDataAsync(from:downsampled:priority:);

  return MEMORY[0x1EEE6DA40](v0 + 16, v7, v9);
}

{

  return MEMORY[0x1EEE6DFA0](static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{

  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 32) = a2;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

{
  *(v6 + 32) = a2;
  *(v6 + 40) = a6;
  *(v6 + 16) = a1;
  *(v6 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:), 0, 0);
}

uint64_t closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:)()
{
  v1 = v0[2];
  *v1 = specialized static Capsule<>.imageData(from:downsampled:with:)(v0[3]);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = v0[1];

  return v5();
}

{
  v1 = *(v0 + 16);
  *v1 = specialized static Capsule<>.imageData(from:downsampled:with:)(*(v0 + 24));
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = *(v0 + 8);

  return v5();
}

void one-time initialization function for forceOriginalResolution()
{
  if (one-time initialization token for isLowJetsamLimitEnvironment != -1)
  {
    swift_once();
  }

  if (static NSBundle.isLowJetsamLimitEnvironment)
  {
    v0 = 0;
  }

  else
  {
    v1 = [objc_opt_self() standardUserDefaults];
    v2 = MEMORY[0x1DA6CCED0](0xD00000000000001ALL, 0x80000001D408AAF0);
    v0 = [v1 BOOLForKey_];
  }

  static Capsule<>.forceOriginalResolution = v0;
}

uint64_t Image.init(from:size:)(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v8 = type metadata accessor for SHA256();
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SHA256Digest();
  v30 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v31 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v27 - v16);
  Image.init()();
  v32 = 0uLL;
  v33 = a3;
  v34 = a4;
  v29 = type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.setter();
  CRRegister.wrappedValue.getter();
  CRRegister.wrappedValue.setter();
  outlined copy of Data._Representation(a1, a2);
  outlined copy of Data._Representation(a1, a2);
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type SHA256 and conformance SHA256, MEMORY[0x1E6966620]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(a1, a2);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(a1, a2);
  outlined consume of Data._Representation(a1, a2);
  dispatch thunk of HashFunction.finalize()();
  (*(v27 + 8))(v10, v8);
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type SHA256Digest and conformance SHA256Digest, MEMORY[0x1E69663E0]);
  v18 = v28;
  v19 = Digest.makeIterator()();
  v21 = specialized _copySequenceToContiguousArray<A>(_:)(v19, v20);

  v22 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v21);
  v24 = v23;

  outlined consume of Data._Representation(a1, a2);
  (*(v30 + 8))(v12, v18);
  *v17 = v22;
  v17[1] = v24;
  v17[2] = a1;
  v17[3] = a2;
  v25 = type metadata accessor for CRAssetOrData();
  swift_storeEnumTagMultiPayload();
  (*(*(v25 - 8) + 56))(v17, 0, 1, v25);
  outlined init with copy of Date?(v17, v31, &_s8PaperKit13CRAssetOrDataOSgMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  outlined consume of Data._Representation(a1, a2);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v17, &_s8PaperKit13CRAssetOrDataOSgMd);
}

uint64_t _s8PaperKit9DataOrURLOWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit9DataOrURLOWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t closure #1 in Capsule<>.init(downsampledBaseImageData:imageSize:with:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v0 - 8);
  swift_getKeyPath();
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.getter();
  return Capsule.Ref.subscript.setter();
}

uint64_t Capsule<>.init(burnedIn:priority:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  type metadata accessor for CRKeyPath();
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for Image(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(burnedIn:priority:), 0, 0);
}

uint64_t Capsule<>.init(burnedIn:priority:)()
{
  if (one-time initialization token for forceOriginalResolution != -1)
  {
    swift_once();
  }

  v1 = static Capsule<>.forceOriginalResolution;
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = Capsule<>.init(burnedIn:priority:);
  v4 = v0[8];
  v3 = v0[9];

  return static Capsule<>.imageDataAsync(from:downsampled:priority:)(v4, (v1 & 1) == 0, v3);
}

{
  v1 = *(v0 + 120);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 64);
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    swift_willThrow();

    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_sScPSgMd);

    v4 = *(v0 + 8);
  }

  else
  {
    v5 = *(v0 + 136);
    v17 = *(v0 + 128);
    v6 = 1.0;
    if (v17 <= 0.0)
    {
      v7 = 1.0;
    }

    else
    {
      v7 = 1.0;
      if (v5 > 0.0)
      {
        v8 = v17 / v5;
        if (v17 / v5 <= 1.0)
        {
          v10 = 1024.0;
          v9 = v8 * 1024.0;
        }

        else
        {
          v9 = 1024.0;
          v10 = 1024.0 / v8;
        }

        if (v9 >= v17)
        {
          v6 = *(v0 + 128);
        }

        else
        {
          v6 = v9;
        }

        if (v10 >= v5)
        {
          v7 = *(v0 + 136);
        }

        else
        {
          v7 = v10;
        }
      }
    }

    v11 = *(v0 + 24);
    v12 = *(v0 + 96);
    v13 = *(v0 + 104);
    v14 = *(v0 + 64);
    v16 = *(v0 + 72);
    outlined copy of Data._Representation(v11, v1);
    Image.init(from:size:)(v11, v1, v6, v7);
    _s8PaperKit9DataOrURLOWOcTm_0(v13, v12, type metadata accessor for Image);
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    Capsule.init(_:id:)();

    outlined consume of Data?(v11, v1);
    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_sScPSgMd);
    _s8PaperKit9DataOrURLOWOhTm_1(v13, type metadata accessor for Image);

    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t Capsule<>.init(burnedIn:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;
  v5[5] = a3;
  v5[6] = a4;
  v5[15] = a2;
  v5[16] = a3;
  v5[17] = a4;

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(burnedIn:priority:), 0, 0);
}

uint64_t Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  type metadata accessor for CRKeyPath();
  v6[12] = swift_task_alloc();
  v6[13] = type metadata accessor for Image(0);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v6[16] = type metadata accessor for DataOrURL();
  v6[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:), 0, 0);
}

uint64_t Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:)()
{
  v1 = v0[17];
  v2 = v0[7];
  v3 = v0[8];
  *v1 = v2;
  v1[1] = v3;
  swift_storeEnumTagMultiPayload();
  outlined copy of Data._Representation(v2, v3);
  if (one-time initialization token for forceOriginalResolution != -1)
  {
    swift_once();
  }

  v4 = static Capsule<>.forceOriginalResolution;
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:);
  v6 = v0[17];
  v7 = v0[11];

  return static Capsule<>.imageDataAsync(from:downsampled:priority:)(v6, (v4 & 1) == 0, v7);
}

{
  v1 = *(v0 + 184);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 88);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:256 userInfo:0];
    swift_willThrow();
    outlined consume of Data._Representation(v4, v3);
    outlined consume of Data._Representation(v5, v6);
    outlined destroy of StocksKitCurrencyCache.Provider?(v2, &_sScPSgMd);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 192);
    v10 = 1.0;
    if (v9 <= 0.0)
    {
      v12 = 1.0;
    }

    else
    {
      v11 = *(v0 + 200);
      v12 = 1.0;
      if (v11 > 0.0)
      {
        v13 = v9 / v11;
        if (v9 / v11 <= 1.0)
        {
          v15 = 1024.0;
          v14 = v13 * 1024.0;
        }

        else
        {
          v14 = 1024.0;
          v15 = 1024.0 / v13;
        }

        if (v14 >= v9)
        {
          v10 = *(v0 + 192);
        }

        else
        {
          v10 = v14;
        }

        if (v15 >= v11)
        {
          v12 = *(v0 + 200);
        }

        else
        {
          v12 = v15;
        }
      }
    }

    v16 = *(v0 + 176);
    v17 = *(v0 + 112);
    v18 = *(v0 + 120);
    outlined copy of Data._Representation(v16, *(v0 + 184));
    Image.init(from:size:)(v16, v1, v10, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
    CRRegister.wrappedValue.getter();
    *(v0 + 208) = CGRectGetWidth(*(v0 + 16));
    _s8PaperKit9DataOrURLOWOcTm_0(v18, v17, type metadata accessor for Image);
    static CRKeyPath.unique.getter();
    lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
    Capsule.init(_:id:)();
    type metadata accessor for MainActor();
    *(v0 + 216) = static MainActor.shared.getter();
    v20 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:), v20, v19);
  }
}

{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);

  if (v1 / v2 <= 1.0)
  {
    v5 = v1 / v2;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  Capsule.callAsFunction<A>(_:)();

  *(v0 + 225) = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:), 0, 0);
}

{
  v1 = *(v0 + 225);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 56);
  outlined consume of Data._Representation(*(v0 + 72), *(v0 + 80));
  outlined consume of Data?(v3, v2);
  outlined consume of Data._Representation(v7, v6);
  outlined destroy of StocksKitCurrencyCache.Provider?(v5, &_sScPSgMd);
  _s8PaperKit9DataOrURLOWOhTm_1(v4, type metadata accessor for Image);
  v8 = *(v0 + 152);
  if (v1 == 1)
  {
    (*(v8 + 32))(*(v0 + 48), *(v0 + 160), *(v0 + 144));
    v9 = 0;
  }

  else
  {
    (*(v8 + 8))(*(v0 + 160), *(v0 + 144));
    v9 = 1;
  }

  (*(*(v0 + 152) + 56))(*(v0 + 48), v9, 1, *(v0 + 144));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  v5[22] = a1;
  v5[23] = a2;
  v5[24] = a3;
  v5[25] = a4;

  _s8PaperKit9DataOrURLOWOhTm_1(v6, type metadata accessor for DataOrURL);

  return MEMORY[0x1EEE6DFA0](Capsule<>.init(baseImageData:annotationKitArchivedModelData:priority:), 0, 0);
}

uint64_t closure #1 in Capsule<>.init(serializedData:priority:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](closure #1 in Capsule<>.init(serializedData:priority:), 0, 0);
}

uint64_t closure #1 in Capsule<>.init(serializedData:priority:)()
{
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = v0[4];

  outlined copy of Data._Representation(v1, v2);
  type metadata accessor for Image(0);
  lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image);
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)();
  v3 = v0[1];

  return v3();
}

uint64_t Data.init(at:in:)(uint64_t a1, uint64_t a2, const CGImageMetadata *a3)
{
  v4 = MEMORY[0x1DA6CCED0]();

  v5 = CGImageMetadataCopyTagWithPath(a3, 0, v4);

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = CGImageMetadataTagCopyValue(v5);
  if (!v6)
  {

LABEL_10:
    return 0;
  }

  v7 = CFGetTypeID(v6);
  if (v7 != CFStringGetTypeID())
  {

    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  swift_unknownObjectRetain();
  if (swift_dynamicCast())
  {
    v8 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    v9 = MEMORY[0x1DA6CCED0]();

    v10 = [v8 initWithBase64EncodedString:v9 options:0];

    if (v10)
    {
      static Data._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return 0;
}

void closure #1 in CGImageSource(from:fileCoordinator:)(void **a1@<X1>, NSURL *a2@<X8>)
{
  URL._bridgeToObjectiveC()(a2);
  v4 = v3;
  v5 = CGImageSourceCreateWithURL(v3, 0);

  v6 = *a1;
  *a1 = v5;
}

uint64_t thunk for @escaping @callee_guaranteed (@in_guaranteed URL) -> ()(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t outlined init with take of DataOrURL(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataOrURL();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:)(uint64_t a1)
{
  v4 = *(type metadata accessor for DataOrURL() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:)(a1, v10, v7, v8, v1 + v5, v9);
}

{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in static Capsule<>.imageDataAsync(from:downsampled:priority:)(a1, v8, v4, v5, v6, v7);
}

uint64_t specialized static Capsule<>.writableImageType(for:hasAlpha:)(uint64_t a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = CGImageDestinationCopyTypeIdentifiers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v21 = 0;
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  v12 = v21;
  if (v21)
  {

    v21 = a1;
    v22 = a2;
    MEMORY[0x1EEE9AC00](v13);
    *&v20[-16] = &v21;
    if (specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v20[-32], v12))
    {
    }

    else
    {
      static UTType.heic.getter();
      v14 = UTType.identifier.getter();
      v16 = v15;
      v17 = *(v7 + 8);
      v18 = v17(v9, v6);
      v21 = v14;
      v22 = v16;
      MEMORY[0x1EEE9AC00](v18);
      *&v20[-16] = &v21;
      v19 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v20[-32], v12);

      if (v19)
      {
        static UTType.heic.getter();
      }

      else if (a3)
      {
        static UTType.png.getter();
      }

      else
      {
        static UTType.jpeg.getter();
      }

      a1 = UTType.identifier.getter();
      v17(v9, v6);
    }

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CGImageRef specialized static Capsule<>.imageData(from:downsampled:with:)(CGImageSource *a1)
{
  result = CGImageSourceCreateImageAtIndex(a1, 0, 0);
  if (result)
  {
    v3 = result;
    v4 = CGImageSourceGetType(a1);
    if (v4)
    {
      v5 = v4;
      HasAlpha = CGImageHasAlpha();
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      specialized static Capsule<>.writableImageType(for:hasAlpha:)(v7, v8, HasAlpha);

      CGImageGetWidth(v3);
      CGImageGetHeight(v3);
      v9 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
      if (v9)
      {
        v10 = v9;
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          return 0;
        }

        type metadata accessor for NSObject();
        lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, type metadata accessor for NSObject);
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

CGImageRef specialized static Capsule<>.imageData(from:downsampled:with:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataOrURL();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s8PaperKit9DataOrURLOWOcTm_0(a1, v8, type metadata accessor for DataOrURL);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v15 = *v8;
    v16 = v8[1];
    isa = Data._bridgeToObjectiveC()().super.isa;
    v12 = CGImageSourceCreateWithData(isa, 0);
    outlined consume of Data._Representation(v15, v16);

    if (v12)
    {
      goto LABEL_3;
    }

    return 0;
  }

  (*(v3 + 32))(v5, v8, v2);
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = CGImageSourceCreateWithURL(v10, 0);

  (*(v3 + 8))(v5, v2);
  if (!v12)
  {
    return 0;
  }

LABEL_3:
  v13 = v12;
  v14 = specialized static Capsule<>.imageData(from:downsampled:with:)(v13);

  return v14;
}

uint64_t lazy protocol witness table accessor for type CRCodingError and conformance CRCodingError(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in Capsule<>.loadMetadata(from:)()
{
  return partial apply for closure #1 in Capsule<>.loadMetadata(from:)();
}

{
  v1 = *(v0 + 16);
  v2 = Capsule.Ref.root.modify();
  Image.loadMetadata(from:)(v1);
  return v2(&v4, 0);
}

uint64_t partial apply for closure #1 in Capsule<>.init(serializedData:priority:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in Capsule<>.init(serializedData:priority:)(a1, v4, v5, v7, v6);
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *PaperLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a1;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit0C0VGMd);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v25 - v18;
  (*(v9 + 16))(v11, v5, v8, v17);
  type metadata accessor for Paper(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type Paper and conformance Paper, type metadata accessor for Paper);
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Ref<Paper> and conformance Ref<A>, &_s9Coherence3RefVy8PaperKit0C0VGMd);
  Capsule.encapsulate<A>(_:)();
  (*(v13 + 8))(v15, v12);
  v20 = objc_allocWithZone(type metadata accessor for PaperView());
  v21 = a3;
  v22 = a2;
  v23 = specialized PaperView.init(canvasElement:canvas:parentCanvasElement:)(v19, a2, a3);

  return v23;
}

uint64_t closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)(uint64_t a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, void (*a8)(uint64_t), uint64_t a9)
{
  v84 = a9;
  v85 = a8;
  v74 = a7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = v69 - v15;
  v16 = type metadata accessor for DispatchWorkItemFlags();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for DispatchQoS();
  v76 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x1EEE9AC00](v19);
  v73 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v70 = v69 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v71 = v69 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v72 = v69 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = v69 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v69 - v37;
  if (a1)
  {
    aBlock = a1;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
    v39 = swift_dynamicCast();
    v40 = v20[7];
    v41 = v39 ^ 1u;
    v42 = v38;
  }

  else
  {
    v40 = v20[7];
    v42 = v69 - v37;
    v41 = 1;
  }

  v43 = v40;
  v40(v42, v41, 1, v19);
  outlined init with copy of URL?(v38, v35);
  v81 = v20;
  v44 = v20[6];
  v45 = v44(v35, 1, v19);
  outlined destroy of StocksKitCurrencyCache.Provider?(v35, &_s10Foundation3URLVSgMd);
  if (v45 == 1)
  {
    if (a1)
    {
      v86 = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
      if (swift_dynamicCast())
      {
        v46 = aBlock;
        v47 = v88;
        v48 = v71;
        v69[1] = v81 + 7;
        v69[0] = v43;
        v43(v71, 1, 1, v19);
        v49 = v72;
        URL.init(dataRepresentation:relativeTo:isAbsolute:)();
        outlined consume of Data._Representation(v46, v47);
        outlined destroy of StocksKitCurrencyCache.Provider?(v48, &_s10Foundation3URLVSgMd);
        if (v44(v49, 1, v19) == 1)
        {
          outlined destroy of StocksKitCurrencyCache.Provider?(v49, &_s10Foundation3URLVSgMd);
        }

        else
        {
          v50 = v81[4];
          v51 = v70;
          v50(v70, v49, v19);
          outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s10Foundation3URLVSgMd);
          v50(v38, v51, v19);
          (v69[0])(v38, 0, 1, v19);
        }
      }
    }
  }

  outlined init with copy of URL?(v38, v28);
  if (v44(v28, 1, v19) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v28, &_s10Foundation3URLVSgMd);
  }

  else
  {
    v52 = v81;
    v53 = v82;
    v54 = v81[4];
    v54(v82, v28, v19);
    type metadata accessor for OS_dispatch_queue();
    v72 = static OS_dispatch_queue.main.getter();
    v55 = v73;
    (v52[2])(v73, v53, v19);
    v56 = (*(v52 + 80) + 24) & ~*(v52 + 80);
    v57 = swift_allocObject();
    v58 = v74;
    *(v57 + 16) = v74;
    v54((v57 + v56), v55, v19);
    v59 = (v57 + ((v21 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v59 = a2;
    v59[1] = a3;
    v59[2] = a4;
    v59[3] = a5;
    v91 = partial apply for closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:);
    v92 = v57;
    aBlock = MEMORY[0x1E69E9820];
    v88 = 1107296256;
    v89 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v90 = &block_descriptor_7_0;
    v60 = _Block_copy(&aBlock);
    v61 = v58;

    v62 = v75;
    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
    v63 = v77;
    v64 = v80;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v65 = v72;
    MEMORY[0x1DA6CD890](0, v62, v63, v60);
    _Block_release(v60);

    (*(v79 + 8))(v63, v64);
    (*(v76 + 8))(v62, v78);
    (v52[1])(v82, v19);
  }

  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  v67 = v83;
  (*(*(v66 - 8) + 56))(v83, 1, 1, v66);
  v85(v67);
  outlined destroy of StocksKitCurrencyCache.Provider?(v67, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v38, &_s10Foundation3URLVSgMd);
}

uint64_t closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = MEMORY[0x1E69E7D40];
  v13 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x440))();
  v15 = v14;
  ObjectType = swift_getObjectType();
  v17 = (*(v15 + 136))(a2, 0, 0, 0, 1, ObjectType, v15);
  v19 = v18;
  v21 = v20;
  v23 = v22;

  (*((*v12 & *a1) + 0x598))(v17, v19, v21, v23 & 1, a3, a4, a5, a6);
}

uint64_t closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:)(uint64_t a1, uint64_t a2, void (*a3)(char *), void (*a4)(char *))
{
  v45 = a3;
  v46 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for DispatchQoS();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = type metadata accessor for URL();
  v17 = a1;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v39 - v24;
  if (v22)
  {
    aBlock[0] = v22;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd);
    v26 = swift_dynamicCast();
    (*(v18 + 56))(v15, v26 ^ 1u, 1, v16);
    if ((*(v18 + 48))(v15, 1, v16) != 1)
    {
      v41 = v6;
      v27 = *(v18 + 32);
      v27(v25, v15, v16);
      type metadata accessor for OS_dispatch_queue();
      v40 = static OS_dispatch_queue.main.getter();
      (*(v18 + 16))(v20, v25, v16);
      v28 = *(v18 + 80);
      v39 = v5;
      v29 = (v28 + 16) & ~v28;
      v30 = swift_allocObject();
      v27((v30 + v29), v20, v16);
      v31 = (v30 + ((v19 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
      v32 = v46;
      *v31 = v45;
      v31[1] = v32;
      aBlock[4] = partial apply for closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:);
      aBlock[5] = v30;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_40;
      v33 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
      lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
      v34 = v43;
      v35 = v39;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v36 = v40;
      MEMORY[0x1DA6CD890](0, v9, v34, v33);
      _Block_release(v33);

      (*(v41 + 8))(v34, v35);
      (*(v42 + 8))(v9, v44);
      return (*(v18 + 8))(v25, v16);
    }
  }

  else
  {
    (*(v18 + 56))(v15, 1, 1, v16, v23);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v15, &_s10Foundation3URLVSgMd);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  (*(*(v38 - 8) + 56))(v12, 1, 1, v38);
  v45(v12);
  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
}

unint64_t type metadata accessor for OS_dispatch_queue()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue;
  if (!lazy cache variable for type metadata for OS_dispatch_queue)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue);
  }

  return result;
}

uint64_t closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:)(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v20[1] = a1;
  FileVersionPolicy = type metadata accessor for CRDataStoreBundleReadFileVersionPolicy();
  v3 = *(FileVersionPolicy - 8);
  MEMORY[0x1EEE9AC00](FileVersionPolicy);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  type metadata accessor for CRContext();
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v9 = MEMORY[0x1DA6CC630](0, v24);
  outlined destroy of StocksKitCurrencyCache.Provider?(v24, &_s9Coherence18EncryptionDelegate_pSgMd);
  v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence17CRDataStoreBundleCy8PaperKit0E0VGMd);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9Coherence16CRCodableVersionOGMd);
  v10 = type metadata accessor for CRCodableVersion();
  v11 = *(v10 - 8);
  v12 = *(v11 + 72);
  v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D405C990;
  v15 = v14 + v13;
  v16 = *(v11 + 104);
  v16(v15, *MEMORY[0x1E6995280], v10);
  v16(v15 + v12, *MEMORY[0x1E6995288], v10);
  if (one-time initialization token for allReadableFileFormatVersions != -1)
  {
    swift_once();
  }

  v17 = FileVersionPolicy;
  (*(v3 + 104))(v5, *MEMORY[0x1E6995398], FileVersionPolicy);
  static CRDataStoreBundle.read(_:url:fileVersionPolicy:allowedEncodings:allowedAppFormats:)();
  (*(v3 + 8))(v5, v17);

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C0VGMd);
  (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  v23(v8);

  return outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s9Coherence7CapsuleVy8PaperKit0C0VGSgMd);
}

uint64_t partial apply for closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v4 = *v3;
  v5 = *(v3 + 8);

  return closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:canvasFrame:frame:anchor:offset:assetManager:dragItem:typeIdentifier:completion:)(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for PaperLayout()
{
  result = type metadata singleton initialization cache for PaperLayout;
  if (!type metadata singleton initialization cache for PaperLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t protocol witness for static Layout.canHandle(itemProvider:) in conformance PaperLayout(void *a1)
{
  v2 = MEMORY[0x1DA6CCED0](0x6C7070612E6D6F63, 0xEF72657061702E65);
  v3 = [a1 hasItemConformingToTypeIdentifier_];

  if (v3)
  {
    return 1;
  }

  v5 = MEMORY[0x1DA6CCED0](0xD000000000000017, 0x80000001D4081380);
  v6 = [a1 hasItemConformingToTypeIdentifier_];

  return v6;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];

  return closure #1 in closure #1 in static PaperLayout.loadItemProvider(_:frame:canvas:dragItem:typeIdentifier:completion:)(v3, v0 + v2, v5, v6, v7, v8);
}

uint64_t one-time initialization function for osLog()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static PPKSignpost.osLog = result;
  return result;
}

uint64_t PPKSignpost.init(name:identifier:message:)(const char *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v8 = v7;
  v50 = a7;
  v46 = a6;
  v47 = a4;
  v13 = type metadata accessor for OSSignposter();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v51 = v17;
  v52 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  swift_defaultActor_initialize();
  *(v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_ended) = 0;
  v49 = a1;
  *(v8 + 112) = a1;
  *(v8 + 120) = a2;
  *(v8 + 128) = a3;
  if (a5)
  {
    if (one-time initialization token for osLog != -1)
    {
      swift_once();
    }

    v26 = static PPKSignpost.osLog;
    OSSignpostID.init(log:)();
  }

  else
  {
    OSSignpostID.init(_:)();
  }

  LODWORD(v47) = a3;
  (*(v52 + 32))(v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_id, v25, v51);
  if (one-time initialization token for osLog != -1)
  {
    swift_once();
  }

  v27 = static PPKSignpost.osLog;
  OSSignposter.init(logHandle:)();
  (*(v14 + 32))(v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_signposter, v16, v13);
  if (v50)
  {
    v28 = v51;
    v29 = *(v52 + 16);
    (v29)(v20, v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_id, v51);

    v30 = OSSignposter.logHandle.getter();
    v31 = static os_signpost_type_t.begin.getter();
    result = OS_os_log.signpostsEnabled.getter();
    if (result)
    {
      LODWORD(v48) = v31;
      if (v47)
      {
        if (!(v49 >> 32))
        {
          if ((v49 & 0xFFFFF800) == 0xD800)
          {
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          if (v49 >> 16 <= 0x10)
          {
            v33 = v50;

            v49 = &v53;
            goto LABEL_22;
          }

          goto LABEL_33;
        }
      }

      else
      {

        if (v49)
        {
          v33 = v50;
LABEL_22:
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v53 = v37;
          *v36 = 136315138;
          v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v33, &v53);

          *(v36 + 4) = v38;
          v39 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_1D38C4000, v30, v48, v39, v49, "%s", v36, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v37);
          MEMORY[0x1DA6D0660](v37, -1, -1);
          MEMORY[0x1DA6D0660](v36, -1, -1);

          v28 = v51;
          goto LABEL_23;
        }

        __break(1u);
      }

      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

LABEL_17:
    swift_bridgeObjectRelease_n();

LABEL_23:
    (v29)(v25, v20, v28);
LABEL_30:
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v44 = OSSignpostIntervalState.init(id:isOpen:)();
    (*(v52 + 8))(v20, v28);
    *(v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_state) = v44;
    return v8;
  }

  v28 = v51;
  v30 = *(v52 + 16);
  v20 = v48;
  (v30)(v48, v8 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_id, v51);
  v34 = OSSignposter.logHandle.getter();
  v35 = static os_signpost_type_t.begin.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
LABEL_29:

    (v30)(v25, v20, v28);
    goto LABEL_30;
  }

  if ((v47 & 1) == 0)
  {
    v29 = v49;
    if (!v49)
    {
      __break(1u);
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (v49 >> 32)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v49 & 0xFFFFF800) != 0xD800)
  {
    if (v49 >> 16 > 0x10)
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v29 = &v54;
LABEL_28:
    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = v48;
    v42 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1D38C4000, v34, v35, v42, v29, "", v40, 2u);
    v43 = v40;
    v20 = v41;
    MEMORY[0x1DA6D0660](v43, -1, -1);
    goto LABEL_29;
  }

LABEL_37:
  __break(1u);
  return result;
}

void PPKSignpost.complete(message:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for OSSignpostError();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for OSSignpostID();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v43 - v20;
  if ((*(v3 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_ended) & 1) == 0)
  {
    v45 = a1;
    v46 = a2;
    v48 = v7;
    v49 = v8;
    v50 = v19;
    v51 = v18;
    *(v3 + OBJC_IVAR____TtC8PaperKit11PPKSignpost_ended) = 1;
    v22 = *(v3 + 112);
    v23 = *(v3 + 128);

    v24 = OSSignposter.logHandle.getter();
    v47 = a3;
    if ((a3 & 0x100) == 0)
    {
      OSSignpostIntervalState.signpostID.getter();
      v16 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        if (v23)
        {
          if (v22 >> 32)
          {
            goto LABEL_31;
          }

          if ((v22 & 0xFFFFF800) == 0xD800)
          {
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          if (v22 >> 16 > 0x10)
          {
            goto LABEL_33;
          }

          v22 = &v53;
        }

        else if (!v22)
        {
          __break(1u);
          goto LABEL_7;
        }

        v44 = v22;

        checkForErrorAndConsumeState(state:)();

        v28 = v48;
        v27 = v49;
        if ((*(v49 + 88))(v13, v48) == *MEMORY[0x1E69E93E8])
        {
          v29 = 0;
          v30 = 0;
          v31 = "[Error] Interval already ended";
        }

        else
        {
          (*(v27 + 8))(v13, v28);
          v31 = "%s";
          v30 = 2;
          v29 = 1;
        }

        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v52 = v36;
        *v35 = v30;
        *(v35 + 1) = v29;
        *(v35 + 2) = 2080;
        v37 = StaticString.description.getter();
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v38, &v52);

        *(v35 + 4) = v39;
        v40 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&dword_1D38C4000, v24, v16, v40, v44, v31, v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x1DA6D0660](v36, -1, -1);
        MEMORY[0x1DA6D0660](v35, -1, -1);
      }

      (*(v50 + 8))(v21, v51);
      return;
    }

LABEL_7:
    OSSignpostIntervalState.signpostID.getter();
    v25 = static os_signpost_type_t.end.getter();
    if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
    {
LABEL_28:

      (*(v50 + 8))(v16, v51);
      return;
    }

    if (v23)
    {
      if (!(v22 >> 32))
      {
        if ((v22 & 0xFFFFF800) == 0xD800)
        {
LABEL_36:
          __break(1u);
          return;
        }

        if (v22 >> 16 <= 0x10)
        {
          v26 = &v54;
          goto LABEL_21;
        }

        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (v22)
    {
      v26 = v22;
LABEL_21:
      v33 = v48;
      v32 = v49;

      checkForErrorAndConsumeState(state:)();

      if ((*(v32 + 88))(v10, v33) == *MEMORY[0x1E69E93E8])
      {
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(v32 + 8))(v10, v33);
        v34 = "";
      }

      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_1D38C4000, v24, v25, v42, v26, v34, v41, 2u);
      MEMORY[0x1DA6D0660](v41, -1, -1);
      goto LABEL_28;
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
    goto LABEL_35;
  }
}

uint64_t PPKSignpost.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8PaperKit11PPKSignpost_id;
  v2 = type metadata accessor for OSSignpostID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8PaperKit11PPKSignpost_signposter;
  v4 = type metadata accessor for OSSignposter();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for PPKSignpost()
{
  result = type metadata singleton initialization cache for PPKSignpost;
  if (!type metadata singleton initialization cache for PPKSignpost)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for PPKSignpost()
{
  result = type metadata accessor for OSSignpostID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for OSSignposter();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t specialized static PPKSignpost.emit(_:message:)(const char *a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  v23 = a4;
  v25 = a1;
  v7 = type metadata accessor for OSSignposter();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for OSSignpostID();
  v11 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for osLog != -1)
  {
    swift_once();
  }

  v14 = static PPKSignpost.osLog;
  OSSignpostID.init(log:)();
  OSSignposter.init(logHandle:)();

  v15 = OSSignposter.logHandle.getter();
  v16 = static os_signpost_type_t.event.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_7;
  }

  v22 = v7;
  if ((a3 & 1) == 0)
  {

    if (!v25)
    {
      __break(1u);
LABEL_7:

      (*(v8 + 8))(v10, v7);
      return (*(v11 + 8))(v13, v24);
    }

LABEL_12:
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136315138;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, a5, &v26);
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_1D38C4000, v15, v16, v20, v25, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x1DA6D0660](v19, -1, -1);
    MEMORY[0x1DA6D0660](v18, -1, -1);

    (*(v8 + 8))(v10, v22);
    return (*(v11 + 8))(v13, v24);
  }

  if (v25 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v25 & 0xFFFFF800) != 0xD800)
  {
    if (v25 >> 16 <= 0x10)
    {

      v25 = &v26;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

char *ReflowCursor.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v10 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v11 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v12 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_panGesture;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  *&v4[OBJC_IVAR____TtC8PaperKit12ReflowCursor_panDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v16.receiver = v4;
  v16.super_class = type metadata accessor for ReflowCursor();
  v13 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  ReflowCursor.setupLayers()();
  v14 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_panGesture;
  [*&v13[OBJC_IVAR____TtC8PaperKit12ReflowCursor_panGesture] addTarget:v13 action:sel_handlePan_];
  [v13 addGestureRecognizer_];

  return v13;
}

void ReflowCursor.setupLayers()()
{
  v1 = objc_opt_self();
  v2 = [v1 clearColor];
  [v0 setBackgroundColor_];

  v3 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer];
  v4 = [v0 window];
  v5 = v4;
  if (!v4 || (v6 = [v4 tintColor]) == 0)
  {
    v6 = [v1 systemBlueColor];
  }

  v7 = [v6 CGColor];
  [v3 setBackgroundColor_];

  [v3 setCornerRadius_];
  v8 = [v0 layer];
  [v8 addSublayer_];

  v9 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer];
  v10 = [v0 window];
  v11 = v10;
  if (!v10 || (v12 = [v10 tintColor]) == 0)
  {
    v12 = [v1 systemBlueColor];
  }

  v13 = [v12 CGColor];
  [v9 setFillColor_];

  v14 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer];
  v15 = [v0 window];
  v16 = v15;
  if (!v15 || (v17 = [v15 tintColor]) == 0)
  {
    v17 = [v1 systemBlueColor];
  }

  v18 = [v17 CGColor];
  [v14 setFillColor_];

  v19 = [v0 layer];
  [v19 addSublayer_];

  v20 = [v0 layer];
  [v20 addSublayer_];

  ReflowCursor.updateTriangleLayers()();
}

__C::CGRect __swiftcall ReflowCursor.boundedBarLayerFrame(newFrame:at:against:)(__C::CGRect newFrame, CGPoint at, __C::CGRect against)
{
  y = against.origin.y;
  x = against.origin.x;
  v6 = at.x;
  width = newFrame.size.width;
  v8 = newFrame.origin.x;
  if (at.x <= against.origin.x)
  {
    [*(v3 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer) setHidden_];
    v12 = x - v6;
  }

  else
  {
    v17 = newFrame.origin.y;
    height = newFrame.size.height;
    if (CGRectGetWidth(against) + against.origin.x > at.x)
    {
      [*(v3 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer) setHidden_];
      [*(v3 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer) setHidden_];
      v10 = height;
      v11 = v17;
      goto LABEL_9;
    }

    [*(v3 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer) setHidden_];
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = against.size.width;
    v18.size.height = against.size.height;
    v12 = v6 - CGRectGetWidth(v18);
  }

  v13 = v12 / 50.0;
  if (v13 > 1.0)
  {
    v13 = 1.0;
  }

  v14 = v13 * 40.0;
  v10 = v14 + 40.0;
  v11 = y + v14 * -0.5;
LABEL_9:
  v15 = v8;
  v16 = width;
  result.size.height = v10;
  result.size.width = v16;
  result.origin.y = v11;
  result.origin.x = v15;
  return result;
}

void ReflowCursor.updateTriangleLayers()()
{
  v1 = *(v0 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer);
  [v1 frame];
  v3 = v2 + -1.0;
  [v1 frame];
  v5 = v4;
  [v1 frame];
  Height = CGRectGetHeight(v18);
  v7 = specialized ReflowCursor.trianglePathWithClockwisePoints(_:pointB:pointC:radius:)(v3, v5 + Height * 0.5 + 8.66025404, v3 + -15.0, v5 + Height * 0.5, v3, v5 + Height * 0.5 + -8.66025404, 2.0);
  if (v7)
  {
    v8 = v7;
    [*(v0 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer) setPath_];
  }

  [v1 frame];
  v10 = v9;
  [v1 bounds];
  v11 = v10 + CGRectGetWidth(v19) + 1.0;
  [v1 frame];
  v13 = v12;
  [v1 frame];
  v14 = CGRectGetHeight(v20);
  v15 = specialized ReflowCursor.trianglePathWithClockwisePoints(_:pointB:pointC:radius:)(v11, v13 + v14 * 0.5 + 8.66025404, v11, v13 + v14 * 0.5 + -8.66025404, v11 + 15.0, v13 + v14 * 0.5, 2.0);
  if (v15)
  {
    v16 = v15;
    [*(v0 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer) setPath_];
  }
}

Swift::Void __swiftcall ReflowCursor.layoutSubviews()()
{
  v1 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer];
  v2 = [v0 window];
  v3 = v2;
  if (!v2 || (v4 = [v2 tintColor]) == 0)
  {
    v4 = [objc_opt_self() systemBlueColor];
  }

  v5 = [v4 CGColor];
  [v1 setBackgroundColor_];

  v6 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer];
  v7 = [v0 window];
  v8 = v7;
  if (!v7 || (v9 = [v7 tintColor]) == 0)
  {
    v9 = [objc_opt_self() systemBlueColor];
  }

  v10 = [v9 CGColor];
  [v6 setFillColor_];

  v11 = *&v0[OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer];
  v12 = [v0 window];
  v13 = v12;
  if (!v12 || (v14 = [v12 tintColor]) == 0)
  {
    v14 = [objc_opt_self() systemBlueColor];
  }

  v15 = [v14 CGColor];
  [v11 setFillColor_];

  v16.receiver = v0;
  v16.super_class = type metadata accessor for ReflowCursor();
  objc_msgSendSuper2(&v16, sel_layoutSubviews);
}

id ReflowCursor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReflowCursor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

CGPath *specialized ReflowCursor.trianglePathWithClockwisePoints(_:pointB:pointC:radius:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = atan2(a4 - a2, a3 - a1);
  v15 = atan2(a6 - a4, a5 - a3);
  v50 = v14;
  v16 = __sincos_stret(v14);
  v17 = __sincos_stret(v15);
  v18 = a1 - v16.__sinval * a7;
  v19 = a3 - v16.__sinval * a7;
  v20 = v16.__cosval * a7 + a4;
  v21 = a3 - v17.__sinval * a7;
  v22 = v17.__cosval * a7 + a4;
  v23 = v17.__cosval * a7 + a6;
  v24 = v22 - v23;
  v25 = (v18 - v19) * (v22 - v23) - (v16.__cosval * a7 + a2 - v20) * (v21 - (a5 - v17.__sinval * a7));
  if (v25 == 0.0)
  {
    return 0;
  }

  v40 = a5 - v17.__sinval * a7;
  v41 = v19;
  v42 = v22;
  v43 = v21;
  v44 = v16.__cosval * a7 + a2;
  v45 = a1 - v16.__sinval * a7;
  v47 = v18 - v19;
  v48 = v44 - v20;
  v49 = a7;
  v26 = v21 - v40;
  v46 = atan2(a2 - a6, a1 - a5);
  v27 = __sincos_stret(v46);
  v28 = a5 - v27.__sinval * v49;
  v29 = a1 - v27.__sinval * v49;
  v30 = v27.__cosval * v49 + a6 - (v27.__cosval * v49 + a2);
  if (v26 * v30 - v24 * (v28 - v29) == 0.0 || v48 * (v28 - v29) - v47 * v30 == 0.0)
  {
    return 0;
  }

  v33 = v45 * v20 - v44 * v41;
  v34 = v43 * v23 - v42 * v40;
  v35 = (v33 * v26 - v47 * v34) / v25;
  v36 = (v33 * v24 - v48 * v34) / v25;
  Mutable = CGPathCreateMutable();
  v37 = v50 + -1.57079633;
  *&v38 = v35 + cosf(v37) * v49;
  v39 = sinf(v37);
  transform.a = 1.0;
  transform.b = 0.0;
  transform.c = 0.0;
  transform.d = 1.0;
  transform.tx = 0.0;
  transform.ty = 0.0;
  CGMutablePathRef.move(to:transform:)(__PAIR128__(v36 + v39 * v49, v38), &transform);
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  CGMutablePathRef.addArc(center:radius:startAngle:endAngle:clockwise:transform:)();
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void specialized ReflowCursor.init(coder:)()
{
  v1 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_barLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  v2 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_leftTriangleLayer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v3 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_rightTriangleLayer;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  v4 = OBJC_IVAR____TtC8PaperKit12ReflowCursor_panGesture;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x1E69DCD28]) init];
  *(v0 + OBJC_IVAR____TtC8PaperKit12ReflowCursor_panDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void static ImageWriterEncoder.addGainMapImage(to:sdrImage:hdrImage:metadata:imageOptions:)(CGImageDestination *a1, void *a2, void *a3, const CGImageMetadata *a4, uint64_t a5)
{
  v7 = a3;
  if (a2)
  {
    if (!a3)
    {
      return;
    }

    v10 = a2;
  }

  else
  {
    if (!a3)
    {
      return;
    }

    v7 = a3;
    v10 = v7;
  }

  v11 = objc_allocWithZone(PPKImageWriter);
  v12 = v7;
  v13 = a2;
  v14 = [v11 init];
  v15 = v12;
  v16 = v10;
  if (a5)
  {
    v17.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v17.super.isa = 0;
  }

  isa = v17.super.isa;
  [(PPKImageWriter *)v14 addGainMapImageToImageDestination:a1 sdrImage:v10 hdrImage:v12 imageMetadata:a4 imageOptions:v17.super.isa];
}

void static ImageWriterEncoder.addImage(to:dataType:sdrImage:hdrImage:metadata:imageOptions:accessibilityImageDescription:)(CGImageDestination *a1, uint64_t a2, void *a3, void *a4, const CGImageMetadata *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a6;
  v44 = a1;
  v45 = a5;
  v12 = type metadata accessor for UTType();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a8 && (v45 && (MutableCopy = CGImageMetadataCreateMutableCopy(v45)) != 0 || (MutableCopy = CGImageMetadataCreateMutable()) != 0))
  {
    v45 = MutableCopy;
    v17 = MEMORY[0x1DA6CCED0](a7, a8);
    PPKSetAccessibilityDescriptionIntoMetadata(v45, v17);
  }

  else
  {
    v18 = v45;
  }

  v19 = objc_opt_self();
  v20 = UTType.identifier.getter();
  v21 = MEMORY[0x1DA6CCED0](v20);

  v22 = [(PPKImageWriter *)v19 supportsGainMapForImageDataType:v21];

  if (v22 && a3)
  {
    if (a4)
    {
      v23 = objc_allocWithZone(PPKImageWriter);
      v24 = a4;
      v42 = a3;
      v25 = [v23 init];
      if (v43)
      {
        v26 = v42;
        v27 = v24;
        v28.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v37 = v42;
        v38 = v24;
        v28.super.isa = 0;
      }

      [(PPKImageWriter *)v25 addGainMapImageToImageDestination:v44 sdrImage:v42 hdrImage:v24 imageMetadata:v45 imageOptions:v28.super.isa];

      v39 = v42;
      goto LABEL_24;
    }

LABEL_15:
    v29 = a3;
    goto LABEL_16;
  }

  if (!a4)
  {
    if (!a3)
    {
      v39 = v45;
LABEL_24:

      return;
    }

    goto LABEL_15;
  }

  v29 = a4;
LABEL_16:
  v30 = a4;
  static UTType.heic.getter();
  v31 = static UTType.== infix(_:_:)();
  (*(v13 + 8))(v15, v12);
  if (v31)
  {
    v32 = [objc_allocWithZone(PPKImageWriter) init];
    if (v43)
    {
      v33 = v29;
      v34.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v40 = v29;
      v34.super.isa = 0;
    }

    [(PPKImageWriter *)v32 addSDRHEICImageToImageDestination:v44 sdrImage:v29 imageMetadata:v45 imageOptions:v34.super.isa];
  }

  else if (v45)
  {
    if (v43)
    {
      v35 = v45;
      v36.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v35 = v45;
      v36.super.isa = 0;
    }

    CGImageDestinationAddImageAndMetadata(v44, v29, v35, v36.super.isa);
  }

  else
  {
    if (v43)
    {
      v41.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v41.super.isa = 0;
    }

    CGImageDestinationAddImage(v44, v29, v41.super.isa);
  }
}

uint64_t closure #1 in miniButton(systemName:withPadding:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v39 = a6;
  v8 = type metadata accessor for LiftHoverEffect();
  v9 = *(v8 - 8);
  v37 = v8;
  v38 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PlainButtonStyle();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindK0VyAA6CircleVGGAPGGAA010_AlignmentjK0VGMd);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA15ModifiedContentVyAA0G0VyAA012_ConditionalI0VyAGyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_i9ShapeKindO0VyAA6CircleVGGATGGAA010_AlignmentnO0VG_AA05PlaingE0VQo_Md);
  v20 = *(v19 - 8);
  v35 = v19;
  v36 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v31[-v21];
  v23 = swift_allocObject();
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v40 = v32;
  v41 = v33;
  v42 = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindJ0VyAA6CircleVGGANGMd);
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>();
  Button.init(action:label:)();
  v24 = static VerticalAlignment.firstTextBaseline.getter();
  v25 = &v18[*(v16 + 36)];
  *v25 = v24;
  v25[1] = closure #4 in MiniColorButton.body.getter;
  v25[2] = 0;
  PlainButtonStyle.init()();
  v26 = lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  v27 = lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type PlainButtonStyle and conformance PlainButtonStyle, MEMORY[0x1E697C248]);
  View.buttonStyle<A>(_:)();
  (*(v13 + 8))(v15, v12);
  outlined destroy of StocksKitCurrencyCache.Provider?(v18, &_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindK0VyAA6CircleVGGAPGGAA010_AlignmentjK0VGMd);
  static CustomHoverEffect<>.lift.getter();
  v43 = v16;
  v44 = v12;
  v45 = v26;
  v46 = v27;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(&lazy protocol witness table cache variable for type LiftHoverEffect and conformance LiftHoverEffect, MEMORY[0x1E697C168]);
  v28 = v35;
  v29 = v37;
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v38 + 8))(v11, v29);
  return (*(v36 + 8))(v22, v28);
}

uint64_t closure #2 in closure #1 in miniButton(systemName:withPadding:_:)(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindK0VyAA6CircleVGGAP_GMd);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v34[-v3 - 8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34[-v6 - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9 - 8];
  if (a1)
  {

    v11 = Image.init(systemName:)();
    if (one-time initialization token for buttonFontSize != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Font.Design();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = static Font.system(size:weight:design:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI4FontV6DesignOSgMd);
    KeyPath = swift_getKeyPath();
    v15 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v35 = 0;
    v24 = &v10[*(v8 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    static ContentShapeKinds.interaction.getter();
    *&v36 = v11;
    *(&v36 + 1) = KeyPath;
    *&v37 = v13;
    BYTE8(v37) = v15;
    *&v38 = v17;
    *(&v38 + 1) = v19;
    *&v39 = v21;
    *(&v39 + 1) = v23;
    v25 = v35;
    v40 = v35;
    *v24 = 0;
    v10[64] = v25;
    v26 = v39;
    *(v10 + 2) = v38;
    *(v10 + 3) = v26;
    v27 = v37;
    *v10 = v36;
    *(v10 + 1) = v27;
    v41[0] = v11;
    v41[1] = KeyPath;
    v41[2] = v13;
    v42 = v15;
    v43 = v17;
    v44 = v19;
    v45 = v21;
    v46 = v23;
    v47 = v25;
    outlined init with copy of Date?(&v36, v34, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    outlined destroy of StocksKitCurrencyCache.Provider?(v41, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGMd);
    outlined init with copy of Date?(v10, v4, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    return outlined destroy of StocksKitCurrencyCache.Provider?(v10, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
  }

  else
  {

    v29 = Image.init(systemName:)();
    if (one-time initialization token for buttonFontSize != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Font.Design();
    (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
    v31 = static Font.system(size:weight:design:)();
    outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI4FontV6DesignOSgMd);
    v32 = swift_getKeyPath();
    *v4 = v29;
    v4[1] = v32;
    v4[2] = v31;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    return _ConditionalContent<>.init(storage:)();
  }
}

unint64_t lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>()
{
  result = lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>;
  if (!lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0VyAEyAEyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindJ0VyAA6CircleVGGANGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>> and conformance <> _ConditionalContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<Circle> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ButtonVyAA012_ConditionalD0VyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_d9ShapeKindK0VyAA6CircleVGGAPGGAA010_AlignmentjK0VGMd);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>> and conformance Button<A>, &_s7SwiftUI6ButtonVyAA19_ConditionalContentVyAA08ModifiedE0VyAGyAGyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAA14_PaddingLayoutVGAA01_e9ShapeKindK0VyAA6CircleVGGAPGGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<Button<_ConditionalContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, ModifiedContent<Image, _EnvironmentKeyWritingModifier<Font?>>>>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PlainButtonStyle and conformance PlainButtonStyle(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t MiniButton.body.getter@<X0>(void (*a1)(__n128)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v21[1] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ModifiedContent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v21 - v16;
  a1(v15);
  static Alignment.center.getter();
  View.frame(width:height:alignment:)();
  (*(v7 + 8))(v9, a2);
  v21[2] = a3;
  v21[3] = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  static ViewBuilder.buildExpression<A>(_:)(v13, v10, WitnessTable);
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)(v17, v10, WitnessTable);
  return (v19)(v17, v10);
}

uint64_t type metadata instantiation function for MiniButton()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Image.init()()
{
  v37 = type metadata accessor for ImageMetadata();
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v28 - v2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - v5;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v8;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  type metadata accessor for CGRect(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGRect and conformance CGRect, type metadata accessor for CGRect);
  v38 = 0u;
  v39 = 0u;
  CRRegister.init(wrappedValue:)();
  type metadata accessor for Image(0);
  v38 = 0u;
  v39 = 0u;
  CRRegister.init(wrappedValue:)();
  *&v38 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  CRRegister.init(wrappedValue:)();
  v20 = type metadata accessor for ContentsBounds(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  outlined init with copy of Date?(v19, v16, &_s8PaperKit14ContentsBoundsOSgMd);
  lazy protocol witness table accessor for type ContentsBounds? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v19, &_s8PaperKit14ContentsBoundsOSgMd);
  v21 = type metadata accessor for ImageFilter(0);
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  outlined init with copy of Date?(v13, v10, &_s8PaperKit11ImageFilterOSgMd);
  lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v13, &_s8PaperKit11ImageFilterOSgMd);
  v22 = type metadata accessor for CRAssetOrData();
  v23 = v30;
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  outlined init with copy of Date?(v23, v31, &_s8PaperKit13CRAssetOrDataOSgMd);
  lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v23, &_s8PaperKit13CRAssetOrDataOSgMd);
  v38 = 0uLL;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd);
  CRRegister.init(wrappedValue:)();
  v38 = xmmword_1D405C100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd);
  lazy protocol witness table accessor for type Date? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, &_s10Foundation4DataVSgMd);
  CRRegister.init(wrappedValue:)();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v25 = v33;
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  outlined init with copy of Date?(v25, v34, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  lazy protocol witness table accessor for type Ref<PKDrawingStruct>? and conformance <A> A?();
  CRRegister.init(wrappedValue:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v25, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  LODWORD(v38) = 1;
  type metadata accessor for CGImagePropertyOrientation(0);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CGImagePropertyOrientation and conformance CGImagePropertyOrientation, type metadata accessor for CGImagePropertyOrientation);
  CRRegister.init(wrappedValue:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type SharedTagged_10<TaggedCanvasElement> and conformance SharedTagged_10<A>, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd);
  CROrderedSet.init()();
  v26 = v28;
  *(v28 + 1) = 0;
  *(v26 + 16) = 0;
  *v26 = 0;
  *(v26 + 24) = 1;
  *(v26 + 32) = 0;
  *(v26 + 40) = 1;
  UnknownValueProperties.init()();
  outlined init with copy of ImageMetadata(v26, v36, type metadata accessor for ImageMetadata);
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageMetadata and conformance ImageMetadata, type metadata accessor for ImageMetadata);
  CRRegister.init(wrappedValue:)();
  outlined destroy of ImageMetadata(v26, type metadata accessor for ImageMetadata);
  v38 = 0uLL;
  CRRegister.init(wrappedValue:)();
  return UnknownProperties.init()();
}

unint64_t lazy protocol witness table accessor for type ImageFilter? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type ImageFilter? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type ImageFilter? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit11ImageFilterOSgMd);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type ImageFilter and conformance ImageFilter, type metadata accessor for ImageFilter);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageFilter? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRAssetOrData? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CRAssetOrData? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CRAssetOrData? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit13CRAssetOrDataOSgMd);
    _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type CRAssetOrData and conformance CRAssetOrData, type metadata accessor for CRAssetOrData);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRAssetOrData? and conformance <A> A?);
  }

  return result;
}

uint64_t Image.image.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit13CRAssetOrDataOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit13CRAssetOrDataOSgMd);
}

uint64_t Image.frame.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Image.rotation.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t key path setter for Image.image : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit13CRAssetOrDataOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit13CRAssetOrDataOSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit13CRAssetOrDataOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit13CRAssetOrDataOSgMd);
}

uint64_t key path setter for Image.contentsBounds : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit14ContentsBoundsOSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit14ContentsBoundsOSgMd);
}

uint64_t Image.contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit14ContentsBoundsOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit14ContentsBoundsOSgMd);
}

double Image.bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Image.orientation.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Image.orientation.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.wrappedValue.setter();
}

float64_t Image.pdfContentsBounds.getter()
{
  v0 = type metadata accessor for ContentsBounds(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit14ContentsBoundsOSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  CRRegister.wrappedValue.getter();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s8PaperKit14ContentsBoundsOSgMd);
  }

  else
  {
    outlined init with copy of ImageMetadata(v6, v3, type metadata accessor for ContentsBounds);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = v3[1];
      v13 = *v3;
      v14 = v7;
      v8 = v3[2];
      v15 = v3[3];
      v12 = v8;
      outlined destroy of ImageMetadata(v6, type metadata accessor for ContentsBounds);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
      CRRegister.wrappedValue.getter();
      v9 = v17;
      v10 = vmulq_f64(v12, v17);
      v16 = vmulq_f64(v13, v17);
      v17 = vmulq_f64(v14, v17);
      v18 = v10;
      v19 = vmulq_f64(v15, v9);
      Quad.perspectiveCorrectedSize.getter();
      return 0.0;
    }

    outlined destroy of ImageMetadata(v3, type metadata accessor for ContentsBounds);
    outlined destroy of ImageMetadata(v6, type metadata accessor for ContentsBounds);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v16.f64[0];
}

BOOL specialized ContainerCanvasElement.hasMarkup(in:)(void *a1)
{
  v19 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v20 = &v17 - v2;
  v17 = type metadata accessor for PKDrawingStruct(0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<SharedTagged_10<TaggedCanvasElement>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v24 != v23)
  {
    return 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.getter();
  v11 = v8;
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
    return 0;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    v13 = v18;
    Ref.subscript.getter();
    v14 = v20;
    v15 = v21;
    v16 = v22;
    (*(v21 + 16))(v20, v13 + *(v17 + 20), v22);
    outlined destroy of ImageMetadata(v13, type metadata accessor for PKDrawingStruct);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CROrderedSet<Ref<CRRegister<TaggedStroke>>> and conformance CROrderedSet<A>, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    (*(v15 + 8))(v14, v16);
    (*(v11 + 8))(v10, v7);
    return v24 != v23;
  }
}

uint64_t Image.$orientation.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t Image.$orientation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

double Image.frame.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Image.$frame.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t Image.$frame.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t Image.contentsBounds.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Image(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  return a1(v2);
}

uint64_t Image.$contentsBounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t Image.filter.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Image(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  return a1(v2);
}

uint64_t Image.$filter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t Image.image.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Image(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  return a1(v2);
}

uint64_t Image.$image.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

id specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(id a1, char a2)
{
  if (a2)
  {
    [a1 boundsForBox_];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = off_1F4F62900;
    v12 = type metadata accessor for Paper(0);
    v13 = (v11)(v12, &protocol witness table for Paper);
    if (!CGRect.almostEqual(_:threshold:)(v13, v14, v15, v16, 1.0, v4, v6, v8, v10))
    {
      [a1 setBounds:0 forBox:{(v11)(v12, &protocol witness table for Paper)}];
    }
  }

  else
  {
    v11 = off_1F4F62900;
  }

  v17 = type metadata accessor for Paper(0);
  v18 = (v11)(v17, &protocol witness table for Paper);
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [a1 boundsForBox_];
  v26 = v25;
  v28 = v27;
  v40.origin.x = v18;
  v40.origin.y = v20;
  v40.size.width = v22;
  v40.size.height = v24;
  MinX = CGRectGetMinX(v40);
  v41.origin.x = v18;
  v41.origin.y = v20;
  v41.size.width = v22;
  v41.size.height = v24;
  v30 = v28 + v26 + v26 - CGRectGetMaxY(v41);
  v42.origin.x = v18;
  v42.origin.y = v20;
  v42.size.width = v22;
  v42.size.height = v24;
  Width = CGRectGetWidth(v42);
  v43.origin.x = v18;
  v43.origin.y = v20;
  v43.size.width = v22;
  v43.size.height = v24;
  Height = CGRectGetHeight(v43);
  [a1 boundsForBox_];
  if (!CGRect.almostEqual(_:threshold:)(MinX, v30, Width, Height, 1.0, v33, v34, v35, v36))
  {
    [a1 setBounds:1 forBox:{MinX, v30, Width, Height}];
  }

  v37 = specialized PaperPage.axisAlignedRotationInDegrees.getter();
  result = [a1 rotation];
  if (result != v37)
  {

    return [a1 setRotation_];
  }

  return result;
}

{
  if (a2)
  {
    [a1 boundsForBox_];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v11 = Image.pdfContentsBounds.getter();
    if (!CGRect.almostEqual(_:threshold:)(v11, v12, v13, v14, 1.0, v4, v6, v8, v10))
    {
      [a1 setBounds:0 forBox:Image.pdfContentsBounds.getter()];
    }
  }

  v15 = Image.pdfContentsBounds.getter();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [a1 boundsForBox_];
  v23 = v22;
  v25 = v24;
  v37.origin.x = v15;
  v37.origin.y = v17;
  v37.size.width = v19;
  v37.size.height = v21;
  MinX = CGRectGetMinX(v37);
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  v27 = v25 + v23 + v23 - CGRectGetMaxY(v38);
  v39.origin.x = v15;
  v39.origin.y = v17;
  v39.size.width = v19;
  v39.size.height = v21;
  Width = CGRectGetWidth(v39);
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  Height = CGRectGetHeight(v40);
  [a1 boundsForBox_];
  if (!CGRect.almostEqual(_:threshold:)(MinX, v27, Width, Height, 1.0, v30, v31, v32, v33))
  {
    [a1 setBounds:1 forBox:{MinX, v27, Width, Height}];
  }

  v34 = specialized PaperPage.axisAlignedRotationInDegrees.getter();
  result = [a1 rotation];
  if (result != v34)
  {

    return [a1 setRotation_];
  }

  return result;
}

void specialized PaperPage.updateCropAndRotation(pdfPage:updateMediaBox:)(id a1, char a2)
{
  if (a2)
  {
    specialized PaperPage.bounds.getter([a1 boundsForBox_]);
  }

  specialized PaperPage.bounds.getter(a1);
}

id sub_1D3C3B93C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  [v28 *(v29 + 928)];
  v35 = v34;
  v37 = v36;
  v48.origin.x = a9;
  v48.origin.y = a10;
  v48.size.width = a11;
  v48.size.height = a12;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = a9;
  v49.origin.y = a10;
  v49.size.width = a11;
  v49.size.height = a12;
  v39 = v37 + v35 + v35 - CGRectGetMaxY(v49);
  v50.origin.x = a9;
  v50.origin.y = a10;
  v50.size.width = a11;
  v50.size.height = a12;
  Width = CGRectGetWidth(v50);
  v51.origin.x = a9;
  v51.origin.y = a10;
  v51.size.width = a11;
  v51.size.height = a12;
  Height = CGRectGetHeight(v51);
  [v28 *(v29 + 928)];
  if (!CGRect.almostEqual(_:threshold:)(MinX, v39, Width, Height, 1.0, v42, v43, v44, v45))
  {
    [v28 setBounds:1 forBox:{MinX, v39, Width, Height}];
  }

  result = [v28 rotation];
  if (result)
  {

    return [v28 setRotation_];
  }

  return result;
}

uint64_t one-time initialization function for defaultFilterQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v0);
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for OS_dispatch_queue);
  static DispatchQoS.userInitiated.getter();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v1);
  v7[1] = MEMORY[0x1E69E7CC0];
  _sSo6CGRectVAB9Coherence7CRValue8PaperKitWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  defaultFilterQueue = result;
  return result;
}

uint64_t (*Image.bounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.$bounds.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);

  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$bounds : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$bounds.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

void (*Image.$bounds.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$inherited.modify;
}

uint64_t (*Image.frame.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for Image.$frame : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$frame : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Image.$frame.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 20);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

double Image.rotation.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t (*Image.rotation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.$rotation.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Image.$rotation : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$rotation : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$rotation.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Image.$rotation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 24);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Image.contentsBounds.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for Image.contentsBounds : Image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Image(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  return a4(v5);
}

uint64_t key path setter for Image.$contentsBounds : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Image.$contentsBounds.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 28);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for Image.filter : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s8PaperKit11ImageFilterOSgMd);
  outlined init with copy of Date?(v7, v4, &_s8PaperKit11ImageFilterOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s8PaperKit11ImageFilterOSgMd);
}

uint64_t Image.filter.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit11ImageFilterOSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s8PaperKit11ImageFilterOSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s8PaperKit11ImageFilterOSgMd);
}

uint64_t (*Image.filter.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for Image.filter : Image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Image(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  return a4(v5);
}

uint64_t key path setter for Image.$filter : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Image.$filter.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 32);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Image.image.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t key path getter for Image.image : Image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Image(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  return a4(v5);
}

uint64_t key path setter for Image.$image : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Image.$image.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 36);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Image.name.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Image.name : Image@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Image.name : Image()
{
  type metadata accessor for Image(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Image.name.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Image.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.$name.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Image.$name : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$name : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$name.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Image.$name.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 40);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Image.imageGenerationRecipe.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

double key path getter for Image.imageGenerationRecipe : Image@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  CRRegister.wrappedValue.getter();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t key path setter for Image.imageGenerationRecipe : Image(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Image(0);
  outlined copy of Data?(v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t Image.imageGenerationRecipe.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Image.imageGenerationRecipe.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.$imageGenerationRecipe.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Image.$imageGenerationRecipe : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$imageGenerationRecipe : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$imageGenerationRecipe.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Image.$imageGenerationRecipe.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 44);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t key path setter for Image.drawing : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  outlined init with copy of Date?(a1, &v9 - v6, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  outlined init with copy of Date?(v7, v4, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t Image.drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  outlined init with copy of Date?(a1, &v5 - v3, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  CRRegister.wrappedValue.setter();
  return outlined destroy of StocksKitCurrencyCache.Provider?(a1, &_s9Coherence3RefVy8PaperKit15PKDrawingStructVGSgMd);
}

uint64_t (*Image.drawing.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.drawing.getter(uint64_t (*a1)(uint64_t))
{
  type metadata accessor for Image(0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return a1(v2);
}

uint64_t key path getter for Image.drawing : Image(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for Image(0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  return a4(v5);
}

uint64_t key path setter for Image.$drawing : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$drawing.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Image.$drawing.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 48);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t (*Image.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeStruct.properties.modify;
}

uint64_t key path getter for Image.$orientation : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$orientation : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t (*Image.$orientation.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 52);
  CRRegister.projectedValue.getter();
  return PKStrokeStruct.$properties.modify;
}

uint64_t Image.subelements.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Image(0) + 56);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Image.subelements.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Image(0) + 56);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA15SharedTagged_10Vy8PaperKit0E13CanvasElementVGGMd);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Image._accessibilityDescription.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  CRRegister.wrappedValue.getter();
  return v1;
}

uint64_t Image._accessibilityDescription.setter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.wrappedValue.setter();
}

uint64_t (*Image._accessibilityDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  *(v3 + 32) = CRRegister.wrappedValue.modify();
  return PKStrokeInheritedProperties.inherited.modify;
}

uint64_t Image.$_accessibilityDescription.getter()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path getter for Image.$_accessibilityDescription : Image()
{
  type metadata accessor for Image(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  return CRRegister.projectedValue.getter();
}

uint64_t key path setter for Image.$_accessibilityDescription : Image(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(v9, v2);
}

uint64_t Image.$_accessibilityDescription.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  type metadata accessor for Image(0);
  CRRegister.projectedValue.setter();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*Image.$_accessibilityDescription.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for Image(0) + 64);
  CRRegister.projectedValue.getter();
  return PKStrokeInheritedProperties.$ink.modify;
}

uint64_t Image.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v276 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v235 = &v221 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v247 = &v221 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v266 = &v221 - v8;
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v275 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v233 = &v221 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v246 = &v221 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v264 = &v221 - v13;
  v262 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v274 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v232 = &v221 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v244 = &v221 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v261 = &v221 - v18;
  v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v273 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v231 = &v221 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v243 = &v221 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v259 = &v221 - v23;
  v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v272 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v230 = &v221 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v242 = &v221 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v257 = &v221 - v28;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v277 = *(v279 - 8);
  MEMORY[0x1EEE9AC00](v279);
  v234 = &v221 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v229 = &v221 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v245 = &v221 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v263 = &v221 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v241 = &v221 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v256 = &v221 - v39;
  v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v271 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v228 = &v221 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v240 = &v221 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v254 = &v221 - v44;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v270 = *(v253 - 8);
  MEMORY[0x1EEE9AC00](v253);
  v227 = &v221 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v239 = &v221 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v252 = &v221 - v49;
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v269 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v226 = &v221 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v238 = &v221 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v250 = &v221 - v54;
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v268 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v225 = &v221 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v237 = &v221 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v248 = &v221 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v61 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v224 = &v221 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v223 = &v221 - v64;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v236 = &v221 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v221 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v221 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v221 - v74;
  v281 = type metadata accessor for Image.Partial(0);
  MEMORY[0x1EEE9AC00](v281);
  v77 = &v221 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v2;
  outlined init with copy of ImageMetadata(v2, v77, type metadata accessor for Image.Partial);
  LODWORD(v2) = Image.Partial.canMerge(delta:)(a1);
  outlined destroy of ImageMetadata(v77, type metadata accessor for Image.Partial);
  v278 = v2;
  if ((v2 & 1) == 0)
  {
    return v278 & 1;
  }

  v280 = a1;
  outlined init with copy of Date?(v78, v75, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v222 = v61;
  v79 = *(v61 + 48);
  v80 = v79(v75, 1, v60);
  outlined destroy of StocksKitCurrencyCache.Provider?(v75, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v80 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280, v78, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    outlined init with copy of Date?(v280, v72, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v79(v72, 1, v60) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v81 = v222;
      v82 = v223;
      (*(v222 + 32))(v223, v72, v60);
      if (!v79(v78, 1, v60))
      {
        CRRegister.merge(delta:)();
      }

      (*(v81 + 8))(v82, v60);
    }
  }

  v83 = v281;
  v84 = v281[5];
  outlined init with copy of Date?(v78 + v84, v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v85 = v79(v69, 1, v60);
  outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v86 = v83[5];
  if (v85 == 1)
  {
    v87 = v280;
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v86, v78 + v84, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v88 = v268;
  }

  else
  {
    v89 = v236;
    outlined init with copy of Date?(v280 + v86, v236, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v90 = v79(v89, 1, v60);
    v88 = v268;
    if (v90 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v89, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v91 = v222;
      v92 = v224;
      (*(v222 + 32))(v224, v89, v60);
      if (!v79((v78 + v84), 1, v60))
      {
        CRRegister.merge(delta:)();
      }

      (*(v91 + 8))(v92, v60);
    }

    v87 = v280;
  }

  v93 = v281;
  v94 = v281[6];
  v95 = v78 + v94;
  v96 = v78;
  v97 = v248;
  outlined init with copy of Date?(v95, v248, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v98 = *(v88 + 48);
  v99 = v249;
  v236 = v98;
  v100 = (v98)(v97, 1, v249);
  outlined destroy of StocksKitCurrencyCache.Provider?(v97, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v101 = v93[6];
  if (v100 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v87 + v101, v96 + v94, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v102 = v96;
    v103 = v251;
  }

  else
  {
    v102 = v96;
    v104 = v237;
    outlined init with copy of Date?(v87 + v101, v237, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v105 = v236;
    v106 = (v236)(v104, 1, v99);
    v103 = v251;
    if (v106 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    }

    else
    {
      v107 = v268;
      v108 = v225;
      (*(v268 + 32))(v225, v104, v99);
      if (!v105(v102 + v94, 1, v99))
      {
        CRRegister.merge(delta:)();
      }

      (*(v107 + 8))(v108, v99);
    }
  }

  v109 = v281;
  v110 = v281[7];
  v111 = v250;
  outlined init with copy of Date?(v102 + v110, v250, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v112 = *(v269 + 48);
  v113 = v112(v111, 1, v103);
  outlined destroy of StocksKitCurrencyCache.Provider?(v111, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v114 = v109[7];
  if (v113 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v114, v102 + v110, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  }

  else
  {
    v115 = v238;
    outlined init with copy of Date?(v280 + v114, v238, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    if (v112(v115, 1, v103) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v115, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    }

    else
    {
      v116 = v269;
      v117 = v226;
      (*(v269 + 32))(v226, v115, v103);
      if (!v112(v102 + v110, 1, v103))
      {
        CRRegister.merge(delta:)();
      }

      (*(v116 + 8))(v117, v103);
    }
  }

  v118 = v281;
  v119 = v281[8];
  v120 = v252;
  outlined init with copy of Date?(v102 + v119, v252, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  v121 = *(v270 + 6);
  v122 = v253;
  v123 = v121(v120, 1, v253);
  outlined destroy of StocksKitCurrencyCache.Provider?(v120, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  v124 = v118[8];
  if (v123 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v124, v102 + v119, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
    v125 = v255;
  }

  else
  {
    v269 = v102;
    v126 = v239;
    outlined init with copy of Date?(v280 + v124, v239, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
    v127 = v121(v126, 1, v122);
    v125 = v255;
    if (v127 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v126, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
      v102 = v269;
    }

    else
    {
      v128 = v270;
      v129 = v227;
      (*(v270 + 4))(v227, v126, v122);
      v102 = v269;
      if (!v121(v269 + v119, 1, v122))
      {
        CRRegister.merge(delta:)();
      }

      (*(v128 + 1))(v129, v122);
    }
  }

  v130 = v281;
  v131 = v281[9];
  v132 = v254;
  outlined init with copy of Date?(v102 + v131, v254, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  v133 = *(v271 + 48);
  v134 = v133(v132, 1, v125);
  outlined destroy of StocksKitCurrencyCache.Provider?(v132, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  v135 = v130[9];
  if (v134 == 1)
  {
    v136 = v102;
    v137 = v280;
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v135, v136 + v131, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  }

  else
  {
    v138 = v280;
    v139 = v240;
    outlined init with copy of Date?(v280 + v135, v240, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
    if (v133(v139, 1, v125) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v139, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
    }

    else
    {
      v140 = v271;
      v141 = v228;
      (*(v271 + 32))(v228, v139, v125);
      if (!v133(v102 + v131, 1, v125))
      {
        CRRegister.merge(delta:)();
      }

      (*(v140 + 8))(v141, v125);
    }

    v136 = v102;
    v137 = v138;
  }

  v142 = v281;
  v143 = v281[10];
  v144 = v256;
  outlined init with copy of Date?(v136 + v143, v256, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v145 = v277 + 48;
  v146 = *(v277 + 48);
  v147 = v279;
  v148 = v146(v144, 1, v279);
  outlined destroy of StocksKitCurrencyCache.Provider?(v144, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v149 = v142[10];
  v270 = v146;
  v271 = v145;
  if (v148 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v137 + v149, v136 + v143, &_s9Coherence10CRRegisterVySSSgGSgMd);
LABEL_50:
    v152 = v258;
    v153 = v136;
    goto LABEL_54;
  }

  v150 = v143;
  v151 = v241;
  outlined init with copy of Date?(v137 + v149, v241, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v146(v151, 1, v147) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v151, &_s9Coherence10CRRegisterVySSSgGSgMd);
    goto LABEL_50;
  }

  v154 = v277;
  v155 = v229;
  (*(v277 + 32))(v229, v151, v147);
  v153 = v136;
  if (!v146(v136 + v150, 1, v147))
  {
    CRRegister.merge(delta:)();
  }

  (*(v154 + 8))(v155, v147);
  v152 = v258;
LABEL_54:
  v156 = v281;
  v157 = v281[11];
  v158 = v257;
  outlined init with copy of Date?(v153 + v157, v257, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v159 = *(v272 + 48);
  v160 = v159(v158, 1, v152);
  outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v161 = v156[11];
  if (v160 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v161, v153 + v157, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  }

  else
  {
    v162 = v242;
    outlined init with copy of Date?(v280 + v161, v242, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    if (v159(v162, 1, v152) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v162, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    }

    else
    {
      v163 = v272;
      v164 = v230;
      (*(v272 + 32))(v230, v162, v152);
      if (!v159(v153 + v157, 1, v152))
      {
        CRRegister.merge(delta:)();
      }

      (*(v163 + 8))(v164, v152);
    }
  }

  v165 = v281;
  v166 = v281[12];
  v167 = v259;
  outlined init with copy of Date?(v153 + v166, v259, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v168 = *(v273 + 48);
  v169 = v260;
  v170 = v168(v167, 1, v260);
  outlined destroy of StocksKitCurrencyCache.Provider?(v167, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v171 = v165[12];
  if (v170 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v171, v153 + v166, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  }

  else
  {
    v172 = v243;
    outlined init with copy of Date?(v280 + v171, v243, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    if (v168(v172, 1, v169) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v172, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    }

    else
    {
      v173 = v273;
      v174 = v231;
      (*(v273 + 32))(v231, v172, v169);
      if (!v168(v153 + v166, 1, v169))
      {
        CRRegister.merge(delta:)();
      }

      (*(v173 + 8))(v174, v169);
    }
  }

  v175 = v281;
  v176 = v281[13];
  v177 = v261;
  outlined init with copy of Date?(v153 + v176, v261, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v178 = *(v274 + 48);
  v179 = v262;
  v180 = v178(v177, 1, v262);
  outlined destroy of StocksKitCurrencyCache.Provider?(v177, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v181 = v175[13];
  if (v180 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v181, v153 + v176, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  else
  {
    v182 = v244;
    outlined init with copy of Date?(v280 + v181, v244, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    if (v178(v182, 1, v179) != 1)
    {
      v185 = v179;
      v186 = v274;
      v187 = v232;
      (*(v274 + 32))(v232, v182, v179);
      v188 = v178(v153 + v176, 1, v179);
      v184 = v265;
      if (!v188)
      {
        CRRegister.merge(delta:)();
      }

      (*(v186 + 8))(v187, v185);
      v183 = v275;
      goto LABEL_76;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v182, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  }

  v183 = v275;
  v184 = v265;
LABEL_76:
  v189 = v281;
  v190 = v281[14];
  v191 = v264;
  outlined init with copy of Date?(v153 + v190, v264, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v192 = *(v183 + 48);
  v193 = v192(v191, 1, v184);
  outlined destroy of StocksKitCurrencyCache.Provider?(v191, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v194 = v189[14];
  if (v193 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v194, v153 + v190, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  }

  else
  {
    v195 = v246;
    outlined init with copy of Date?(v280 + v194, v246, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    if (v192(v195, 1, v184) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v195, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    }

    else
    {
      v196 = v275;
      v197 = v233;
      (*(v275 + 32))(v233, v195, v184);
      if (!v192(v153 + v190, 1, v184))
      {
        CROrderedSet.MergeableDelta.merge(delta:)();
      }

      (*(v196 + 8))(v197, v184);
    }
  }

  v198 = v281;
  v199 = v281[15];
  v200 = v266;
  outlined init with copy of Date?(v153 + v199, v266, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  v201 = *(v276 + 48);
  v202 = v267;
  v203 = v201(v200, 1, v267);
  outlined destroy of StocksKitCurrencyCache.Provider?(v200, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  v204 = v198[15];
  if (v203 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v204, v153 + v199, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
    v205 = v279;
  }

  else
  {
    v206 = v247;
    outlined init with copy of Date?(v280 + v204, v247, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
    v207 = v201(v206, 1, v202);
    v205 = v279;
    if (v207 == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v206, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
    }

    else
    {
      v208 = v276;
      v209 = v235;
      (*(v276 + 32))(v235, v206, v202);
      if (!v201(v153 + v199, 1, v202))
      {
        CRRegister.merge(delta:)();
      }

      (*(v208 + 8))(v209, v202);
    }
  }

  v210 = v281;
  v211 = v281[16];
  v212 = v263;
  outlined init with copy of Date?(v153 + v211, v263, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v213 = v153;
  v214 = v270;
  v215 = v270(v212, 1, v205);
  outlined destroy of StocksKitCurrencyCache.Provider?(v212, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v216 = v210[16];
  if (v215 == 1)
  {
    outlined assign with copy of CRRegister<Ref<PKStrokeInheritedProperties>?>?(v280 + v216, v213 + v211, &_s9Coherence10CRRegisterVySSSgGSgMd);
  }

  else
  {
    v217 = v245;
    outlined init with copy of Date?(v280 + v216, v245, &_s9Coherence10CRRegisterVySSSgGSgMd);
    if (v214(v217, 1, v205) == 1)
    {
      outlined destroy of StocksKitCurrencyCache.Provider?(v217, &_s9Coherence10CRRegisterVySSSgGSgMd);
    }

    else
    {
      v218 = v277;
      v219 = v234;
      (*(v277 + 32))(v234, v217, v205);
      if (!v214(v213 + v211, 1, v205))
      {
        CRRegister.merge(delta:)();
      }

      (*(v218 + 8))(v219, v205);
    }
  }

  return v278 & 1;
}

BOOL Image.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v190 = &v185[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v204 = &v185[-v5];
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGMd);
  v205 = *(v206 - 8);
  MEMORY[0x1EEE9AC00](v206);
  v189 = &v185[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v192 = &v185[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v208 = &v185[-v10];
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GMd);
  v209 = *(v210 - 8);
  MEMORY[0x1EEE9AC00](v210);
  v191 = &v185[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v194 = &v185[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v214 = &v185[-v15];
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GMd);
  v215 = *(v216 - 8);
  MEMORY[0x1EEE9AC00](v216);
  v193 = &v185[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v196 = &v185[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v232 = &v185[-v20];
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGMd);
  v219 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v195 = &v185[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v198 = &v185[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v228 = &v185[-v25];
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy10Foundation4DataVSgGMd);
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v197 = &v185[-v26];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGSgMd);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v188 = &v185[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29);
  v199 = &v185[-v30];
  MEMORY[0x1EEE9AC00](v31);
  v201 = &v185[-v32];
  MEMORY[0x1EEE9AC00](v33);
  v227 = &v185[-v34];
  v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySSSgGMd);
  v224 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235);
  v187 = &v185[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v36);
  v200 = &v185[-v37];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v203 = &v185[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v40);
  v223 = &v185[-v41];
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGMd);
  v226 = *(v239 - 1);
  MEMORY[0x1EEE9AC00](v239);
  v202 = &v185[-v42];
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v237 = &v185[-((v44 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v45);
  v230 = &v185[-v46];
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGMd);
  v231 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v207 = &v185[-v47];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v212 = &v185[-((v49 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v50);
  v236 = &v185[-v51];
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGMd);
  v234 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v211 = &v185[-v52];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v53 - 8);
  v218 = &v185[-((v54 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v55);
  v233 = &v185[-v56];
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GMd);
  v238 = *(v242 - 1);
  MEMORY[0x1EEE9AC00](v242);
  v217 = &v185[-v57];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v60 = &v185[-((v59 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v185[-v62];
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v185[-v65];
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v185[-v68];
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GMd);
  v71 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v220 = &v185[-((v72 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v185[-v74];
  v241 = a1;
  outlined init with copy of Date?(a1, v69, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  v76 = *(v71 + 48);
  if (v76(v69, 1, v70) == 1)
  {
    v66 = v69;
LABEL_5:
    outlined destroy of StocksKitCurrencyCache.Provider?(v66, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v77 = v242;
    v78 = v238;
    goto LABEL_6;
  }

  (*(v71 + 32))(v75, v69, v70);
  outlined init with copy of Date?(v240, v66, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v76(v66, 1, v70) == 1)
  {
    (*(v71 + 8))(v75, v70);
    goto LABEL_5;
  }

  v186 = CRRegister.canMerge(delta:)();
  v119 = *(v71 + 8);
  v119(v75, v70);
  v119(v66, v70);
  v77 = v242;
  v78 = v238;
  if ((v186 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v242 = type metadata accessor for Image.Partial(0);
  outlined init with copy of Date?(v241 + v242[5], v63, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v76(v63, 1, v70) == 1)
  {
    v60 = v63;
LABEL_10:
    v80 = v239;
    outlined destroy of StocksKitCurrencyCache.Provider?(v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
    v82 = v236;
    v81 = v237;
    goto LABEL_11;
  }

  v79 = v220;
  (*(v71 + 32))(v220, v63, v70);
  outlined init with copy of Date?(v240 + v242[5], v60, &_s9Coherence10CRRegisterVySo6CGRectVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v76(v60, 1, v70) == 1)
  {
    (*(v71 + 8))(v79, v70);
    goto LABEL_10;
  }

  v120 = v79;
  v121 = CRRegister.canMerge(delta:)();
  v122 = *(v71 + 8);
  v122(v120, v70);
  v122(v60, v70);
  v78 = v238;
  v80 = v239;
  v82 = v236;
  v81 = v237;
  if ((v121 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v83 = v233;
  outlined init with copy of Date?(v241 + v242[6], v233, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  v84 = *(v78 + 48);
  if (v84(v83, 1, v77) == 1)
  {
    v85 = v83;
LABEL_15:
    outlined destroy of StocksKitCurrencyCache.Provider?(v85, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
    v89 = v234;
    v90 = v81;
    goto LABEL_16;
  }

  v86 = v217;
  (*(v78 + 32))(v217, v83, v77);
  v87 = v77;
  v88 = v218;
  outlined init with copy of Date?(v240 + v242[6], v218, &_s9Coherence10CRRegisterVy12CoreGraphics7CGFloatVAfA7CRValue8PaperKityHCg_GSgMd);
  if (v84(v88, 1, v87) == 1)
  {
    (*(v78 + 8))(v86, v87);
    v85 = v88;
    v80 = v239;
    goto LABEL_15;
  }

  v132 = CRRegister.canMerge(delta:)();
  v133 = *(v78 + 8);
  v133(v86, v87);
  v133(v88, v87);
  v89 = v234;
  v80 = v239;
  v90 = v81;
  if ((v132 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  outlined init with copy of Date?(v241 + v242[7], v82, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  v91 = *(v89 + 48);
  v92 = v229;
  if (v91(v82, 1, v229) == 1)
  {
LABEL_19:
    outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
    v95 = v230;
    v94 = v231;
    goto LABEL_20;
  }

  v93 = v211;
  (*(v89 + 32))(v211, v82, v92);
  v82 = v212;
  outlined init with copy of Date?(v240 + v242[7], v212, &_s9Coherence10CRRegisterVy8PaperKit14ContentsBoundsOSgGSgMd);
  if (v91(v82, 1, v92) == 1)
  {
    (*(v89 + 8))(v93, v92);
    goto LABEL_19;
  }

  v141 = CRRegister.canMerge(delta:)();
  v142 = *(v89 + 8);
  v142(v93, v92);
  v142(v82, v92);
  v95 = v230;
  v94 = v231;
  if ((v141 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  outlined init with copy of Date?(v241 + v242[8], v95, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  v96 = *(v94 + 48);
  v97 = v225;
  if (v96(v95, 1, v225) == 1)
  {
    v90 = v95;
LABEL_24:
    outlined destroy of StocksKitCurrencyCache.Provider?(v90, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
    v101 = v226;
    v100 = v227;
    goto LABEL_25;
  }

  v98 = v95;
  v99 = v207;
  (*(v94 + 32))(v207, v98, v97);
  outlined init with copy of Date?(v240 + v242[8], v90, &_s9Coherence10CRRegisterVy8PaperKit11ImageFilterOSgGSgMd);
  if (v96(v90, 1, v97) == 1)
  {
    (*(v94 + 8))(v99, v97);
    goto LABEL_24;
  }

  v163 = CRRegister.canMerge(delta:)();
  v164 = *(v94 + 8);
  v164(v99, v97);
  v164(v90, v97);
  v101 = v226;
  v100 = v227;
  if ((v163 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  v102 = v223;
  outlined init with copy of Date?(v241 + v242[9], v223, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  v103 = *(v101 + 48);
  if (v103(v102, 1, v80) == 1)
  {
    v104 = v102;
LABEL_29:
    outlined destroy of StocksKitCurrencyCache.Provider?(v104, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
    v108 = v235;
    v109 = v228;
    goto LABEL_30;
  }

  v105 = v202;
  (*(v101 + 32))(v202, v102, v80);
  v106 = v80;
  v107 = v203;
  outlined init with copy of Date?(v240 + v242[9], v203, &_s9Coherence10CRRegisterVy8PaperKit13CRAssetOrDataOSgGSgMd);
  if (v103(v107, 1, v106) == 1)
  {
    (*(v101 + 8))(v105, v106);
    v104 = v107;
    goto LABEL_29;
  }

  v165 = CRRegister.canMerge(delta:)();
  v166 = *(v101 + 8);
  v166(v105, v106);
  v166(v107, v106);
  v108 = v235;
  v109 = v228;
  if ((v165 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  outlined init with copy of Date?(v241 + v242[10], v100, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v110 = v224;
  v111 = *(v224 + 48);
  v112 = (v111)(v100, 1, v108);
  v239 = v111;
  if (v112 == 1)
  {
LABEL_33:
    v114 = v222;
    outlined destroy of StocksKitCurrencyCache.Provider?(v100, &_s9Coherence10CRRegisterVySSSgGSgMd);
    v115 = v221;
    goto LABEL_34;
  }

  v113 = v200;
  (*(v110 + 32))(v200, v100, v108);
  v100 = v201;
  outlined init with copy of Date?(v240 + v242[10], v201, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if ((v111)(v100, 1, v108) == 1)
  {
    (*(v110 + 8))(v113, v108);
    goto LABEL_33;
  }

  v167 = v108;
  v168 = v110;
  v169 = CRRegister.canMerge(delta:)();
  v170 = *(v168 + 8);
  v170(v113, v167);
  v171 = v167;
  v109 = v228;
  v170(v100, v171);
  v115 = v221;
  v114 = v222;
  if ((v169 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  outlined init with copy of Date?(v241 + v242[11], v109, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  v116 = v115;
  v117 = *(v115 + 48);
  if (v117(v109, 1, v114) == 1)
  {
    v118 = v109;
LABEL_42:
    outlined destroy of StocksKitCurrencyCache.Provider?(v118, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
    v127 = v219;
    goto LABEL_43;
  }

  v123 = v197;
  (*(v116 + 32))(v197, v109, v114);
  v124 = v114;
  v125 = v116;
  v126 = v198;
  outlined init with copy of Date?(v240 + v242[11], v198, &_s9Coherence10CRRegisterVy10Foundation4DataVSgGSgMd);
  if (v117(v126, 1, v124) == 1)
  {
    (*(v125 + 8))(v123, v124);
    v118 = v126;
    goto LABEL_42;
  }

  v172 = CRRegister.canMerge(delta:)();
  v173 = *(v125 + 8);
  v173(v123, v124);
  v173(v126, v124);
  v127 = v219;
  if ((v172 & 1) == 0)
  {
    return 0;
  }

LABEL_43:
  v128 = v232;
  outlined init with copy of Date?(v241 + v242[12], v232, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  v129 = *(v127 + 48);
  v130 = v213;
  if (v129(v128, 1, v213) == 1)
  {
    v131 = v232;
LABEL_49:
    outlined destroy of StocksKitCurrencyCache.Provider?(v131, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
    v136 = v215;
    v137 = v216;
    v138 = v214;
    goto LABEL_50;
  }

  v134 = v195;
  (*(v127 + 32))(v195, v232, v130);
  v135 = v196;
  outlined init with copy of Date?(v240 + v242[12], v196, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit15PKDrawingStructVGSgGSgMd);
  if (v129(v135, 1, v130) == 1)
  {
    (*(v127 + 8))(v134, v130);
    v131 = v135;
    goto LABEL_49;
  }

  v174 = CRRegister.canMerge(delta:)();
  v175 = *(v127 + 8);
  v175(v134, v130);
  v175(v135, v130);
  v136 = v215;
  v137 = v216;
  v138 = v214;
  if ((v174 & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  outlined init with copy of Date?(v241 + v242[13], v138, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  v139 = *(v136 + 48);
  if (v139(v138, 1, v137) == 1)
  {
    v140 = v138;
LABEL_56:
    outlined destroy of StocksKitCurrencyCache.Provider?(v140, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
    v146 = v209;
    v147 = v208;
    v148 = v210;
    goto LABEL_57;
  }

  v143 = v193;
  (*(v136 + 32))(v193, v138, v137);
  v144 = v143;
  v145 = v194;
  outlined init with copy of Date?(v240 + v242[13], v194, &_s9Coherence10CRRegisterVySo26CGImagePropertyOrientationVAeA7CRValue8PaperKityHCg_GSgMd);
  if (v139(v145, 1, v137) == 1)
  {
    (*(v136 + 8))(v144, v137);
    v140 = v145;
    goto LABEL_56;
  }

  v176 = CRRegister.canMerge(delta:)();
  v177 = *(v136 + 8);
  v177(v144, v137);
  v177(v145, v137);
  v146 = v209;
  v147 = v208;
  v148 = v210;
  if ((v176 & 1) == 0)
  {
    return 0;
  }

LABEL_57:
  outlined init with copy of Date?(v241 + v242[14], v147, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  v149 = *(v146 + 48);
  if (v149(v147, 1, v148) == 1)
  {
LABEL_60:
    v151 = v235;
    outlined destroy of StocksKitCurrencyCache.Provider?(v147, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
    v152 = v205;
    v153 = v204;
    v154 = v206;
    goto LABEL_61;
  }

  v150 = v191;
  (*(v146 + 32))(v191, v147, v148);
  v147 = v192;
  outlined init with copy of Date?(v240 + v242[14], v192, &_s9Coherence12CROrderedSetV14MergeableDeltaVyAA15SharedTagged_10Vy8PaperKit0G13CanvasElementVG_GSgMd);
  if (v149(v147, 1, v148) == 1)
  {
    (*(v146 + 8))(v150, v148);
    goto LABEL_60;
  }

  v178 = CROrderedSet.MergeableDelta.canMerge(delta:)();
  v179 = *(v146 + 8);
  v179(v150, v148);
  v179(v147, v148);
  v152 = v205;
  v153 = v204;
  v151 = v235;
  v154 = v206;
  if ((v178 & 1) == 0)
  {
    return 0;
  }

LABEL_61:
  outlined init with copy of Date?(v241 + v242[15], v153, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  v155 = *(v152 + 48);
  if (v155(v153, 1, v154) != 1)
  {
    v156 = v189;
    (*(v152 + 32))(v189, v153, v154);
    v153 = v190;
    outlined init with copy of Date?(v240 + v242[15], v190, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
    if (v155(v153, 1, v154) != 1)
    {
      v180 = CRRegister.canMerge(delta:)();
      v181 = *(v152 + 8);
      v181(v156, v154);
      v181(v153, v154);
      v157 = v151;
      if ((v180 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_65;
    }

    (*(v152 + 8))(v156, v154);
  }

  outlined destroy of StocksKitCurrencyCache.Provider?(v153, &_s9Coherence10CRRegisterVy8PaperKit13ImageMetadataVGSgMd);
  v157 = v151;
LABEL_65:
  v158 = v199;
  outlined init with copy of Date?(v241 + v242[16], v199, &_s9Coherence10CRRegisterVySSSgGSgMd);
  v159 = v239;
  if ((v239)(v158, 1, v157) == 1)
  {
LABEL_68:
    outlined destroy of StocksKitCurrencyCache.Provider?(v158, &_s9Coherence10CRRegisterVySSSgGSgMd);
    return 1;
  }

  v160 = v224;
  v161 = v187;
  (*(v224 + 32))(v187, v158, v157);
  v158 = v188;
  outlined init with copy of Date?(v240 + v242[16], v188, &_s9Coherence10CRRegisterVySSSgGSgMd);
  if (v159(v158, 1, v157) == 1)
  {
    (*(v160 + 8))(v161, v157);
    goto LABEL_68;
  }

  v182 = v160;
  v183 = CRRegister.canMerge(delta:)();
  v184 = *(v182 + 8);
  v184(v161, v157);
  v184(v158, v157);
  return (v183 & 1) != 0;
}