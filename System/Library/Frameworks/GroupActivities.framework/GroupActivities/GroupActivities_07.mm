void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
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
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 40 * v20;
        outlined init with copy of Transferable(*(v5 + 56) + 40 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
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

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities30SystemCoordinatorConfigurationCGMR);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities21SystemCoordinatorHostCGMR);
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV14CopresenceCore32BackgroundSessionCreationRequestCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV14CopresenceCore32BackgroundSessionCreationRequestCGMR);
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = v22 + *(*(type metadata accessor for LinkManager.Attachment(0) - 8) + 72) * v15;

  return outlined assign with take of LinkManager.Attachment(a1, v23);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV2os23OSSignpostIntervalStateCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities0E23SessionProviderObserverCGMR);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities08PresenceE23SessionProviderObserverCGMR);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 24 * v15;

  return outlined assign with take of GroupSessionTable.Storage(a1, v22);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12TopicManagerC18ConversationClientCGMR);
}

{
  v4 = v3;
  v8 = *v3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
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
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScS12ContinuationVySi_GMd, &_sScS12ContinuationVySi_GMR);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return specialized _NativeDictionary._insert(at:key:value:)(v10, a2, a1, v16);
}

{
  return specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV15GroupActivities12ConversationCGMR);
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_0(v22);

  return outlined init with take of Any(a1, v22);
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      if ((v19 & 1) != (v23 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
    }
  }

  v24 = *v6;
  if ((v19 & 1) == 0)
  {
    v24[(result >> 6) + 8] |= 1 << result;
    *(v24[6] + 8 * result) = a4;
    v28 = (v24[7] + 24 * result);
    *v28 = a1;
    v28[1] = a2;
    v28[2] = a3;
    v29 = v24[2];
    v17 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (!v17)
    {
      v24[2] = v30;
      return result;
    }

    goto LABEL_15;
  }

  v25 = (v24[7] + 24 * result);
  v27 = v25[1];
  v26 = v25[2];
  *v25 = a1;
  v25[1] = a2;
  v25[2] = a3;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
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

{
  v5 = v4;
  v32 = a1;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 >= v19 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, a4 & 1);
    v22 = *v5;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v20 & 1) == (v24 & 1))
    {
      v16 = v23;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v25 = v32;
  v26 = *v5;
  if (v20)
  {
    v27 = (v26[7] + 16 * v16);
    v29 = *v27;
    v28 = v27[1];
    *v27 = v32;
    v27[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v13, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v16, v13, v25, a2, v26);
  }
}

{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v20 = *v5;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()();
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

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      v18 = *v4;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v19 & 1))
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
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + result) = a2;
    v22 = (v20[7] + 48 * result);
    v23 = *a1;
    v24 = a1[1];
    *(v22 + 25) = *(a1 + 25);
    *v22 = v23;
    v22[1] = v24;
    v25 = v20[2];
    v13 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v13)
    {
      v20[2] = v26;
      return result;
    }

    goto LABEL_15;
  }

  v21 = v20[7] + 48 * result;

  return outlined assign with take of TopicManager.ConversationClient.Service(a1, v21);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a4;
  v30 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v29, v30);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, v29, v30);
    v26 = *v6;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v28 & 1))
    {
      v17 = v27;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v23);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v30 = a4;
  v31 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()(v30, v31);
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a3 & 1, v30, v31);
    v27 = *v6;
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v21 & 1) == (v29 & 1))
    {
      v17 = v28;
      v23 = *v6;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v14, a2, v10);
      return specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v23);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v23 = *v6;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = v23[7];
  v25 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v22 = *v6;
    result = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 16 * result;
    *v25 = a1;
    *(v25 + 8) = a2 & 1;
    *(v25 + 9) = HIBYTE(a2);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(result, a3, a4, a1, a2 & 0xFF01, v24);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
      specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMd, &_ss18_DictionaryStorageCySS15GroupActivities19SpatialTemplateRole_pGMR, outlined init with take of Transferable);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
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
    v23 = (v22[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Transferable(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t partial apply for closure #1 in SystemCoordinatorHostManager.setAliasParticipantIdentifier(_:)()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

void partial apply for closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in SystemCoordinatorHostManager.refreshAliasedParticipantIdentifiers(for:)(v2, v3);
}

void type metadata completion function for SystemCoordinatorHostManager()
{
  type metadata accessor for Published<[UUID : SystemCoordinatorConfiguration]>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(319);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t type metadata completion function for SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit()
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t outlined init with copy of SystemCoordinatorHostManager.ConfigurationUpdatesRateLimit(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

id specialized SystemCoordinatorState.aliasingParticipantIDs(with:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates);
  v43 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs6UInt64V_15GroupActivities22SystemCoordinatorStateC011ParticipantH0CTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = a2 + OBJC_IVAR____TtC15GroupActivities28SystemCoordinatorHostManager_aliasParticipantIdentifier;
  v44 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_uuid;
  v9 = (v5 + 63) >> 6;

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v7)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = (v10 << 9) | (8 * v12);
    v14 = *(*(v4 + 48) + v13);
    v15 = *v8;
    v16 = *(v8 + 8);
    v17 = *(*(v4 + 56) + v13);

    v18 = v15(&a3[v44], v14);
    LOBYTE(v14) = v19;

    if (v14)
    {
    }

    else
    {
      v41 = v17;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v43;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      v23 = v43[2];
      v24 = (v22 & 1) == 0;
      v25 = __OFADD__(v23, v24);
      v26 = v23 + v24;
      if (v25)
      {
        goto LABEL_22;
      }

      v27 = v22;
      if (v43[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = v21;
          specialized _NativeDictionary.copy()();
          v21 = v33;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
        if ((v27 & 1) != (v28 & 1))
        {
          goto LABEL_24;
        }
      }

      v43 = v47;
      if (v27)
      {
        v29 = v47[7];
        v30 = *(v29 + 8 * v21);
        *(v29 + 8 * v21) = v41;
      }

      else
      {
        v47[(v21 >> 6) + 8] |= 1 << v21;
        *(v43[6] + 8 * v21) = v18;
        *(v43[7] + 8 * v21) = v41;

        v31 = v43[2];
        v25 = __OFADD__(v31, 1);
        v32 = v31 + 1;
        if (v25)
        {
          goto LABEL_23;
        }

        v43[2] = v32;
      }
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      v34 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_localParticipantState);
      v35 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle);
      v36 = *(a1 + OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount);
      v37 = type metadata accessor for SystemCoordinatorState();
      v38 = objc_allocWithZone(v37);
      *&v38[OBJC_IVAR___CPSystemCoordinatorState_localParticipantState] = v34;
      v38[OBJC_IVAR___CPSystemCoordinatorState_groupImmersionStyle] = v35;
      *&v38[OBJC_IVAR___CPSystemCoordinatorState_activeSpatialParticipantCount] = v36;
      *&v38[OBJC_IVAR___CPSystemCoordinatorState_remoteParticipantStates] = v43;
      v46.receiver = v38;
      v46.super_class = v37;
      v39 = v34;
      return objc_msgSendSuper2(&v46, sel_init);
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v11;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:

  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t outlined assign with take of LinkManager.Attachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkManager.Attachment(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s15GroupActivities11ParticipantVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void _Streamed.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v6 = *(*v1 + 80);
  v7 = *(*v1 + 88);
  type metadata accessor for _Streamed.State();
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  partial apply for closure #1 in _Streamed.wrappedValue.getter(v3 + v4, a1);
  os_unfair_lock_unlock((v3 + v5));
}

uint64_t _Streamed.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  specialized _Streamed.wrappedValue.setter();
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

uint64_t partial apply for closure #1 in _Streamed.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v7 = type metadata accessor for _Streamed.State();
  return (*(*(v6 - 8) + 16))(a2, a1 + *(v7 + 40), v6);
}

uint64_t _Streamed.yield(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v41 = &v33 - v7;
  v40 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v8 = *(v40 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v33 - v10;
  v11 = type metadata accessor for AsyncStream.Continuation();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v33 - v14;
  v15 = v1[2];
  v45 = v4;
  v46 = *(v3 + 88);
  v47 = a1;
  v42 = v4;
  v43 = a1;
  type metadata accessor for _Streamed.State();
  v38 = v11;
  type metadata accessor for Dictionary.Values();
  type metadata accessor for Optional();
  v16 = *(*v15 + *MEMORY[0x1E69E6B68] + 16);
  v17 = (*(*v15 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v15 + v17));
  partial apply for closure #1 in _Streamed.yield(_:)(v15 + v16, &v48);
  os_unfair_lock_unlock((v15 + v17));
  result = v48;
  if (v48)
  {
    v19 = v48 + 64;
    v20 = 1 << *(v48 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v48 + 64);
    v23 = (v20 + 63) >> 6;
    v34 = (v5 + 16);
    v35 = v12 + 16;
    v36 = v12;
    v33 = v12 + 8;
    v24 = (v8 + 8);
    v44 = v48;

    v25 = 0;
    v26 = v36;
    for (i = v39; v22; result = (*v24)(i, v40))
    {
      v28 = v25;
      v29 = v44;
LABEL_11:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v37;
      v32 = v38;
      (*(v26 + 16))(v37, *(v29 + 56) + *(v26 + 72) * (v30 | (v28 << 6)), v38);
      (*v34)(v41, v43, v42);
      AsyncStream.Continuation.yield(_:)();
      (*(v26 + 8))(v31, v32);
    }

    v29 = v44;
    while (1)
    {
      v28 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v28 >= v23)
      {
      }

      v22 = *(v19 + 8 * v28);
      ++v25;
      if (v22)
      {
        v25 = v28;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

void (*_Streamed.wrappedValue.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  _Streamed.wrappedValue.getter(v9);
  return _Streamed.wrappedValue.modify;
}

void _Streamed.wrappedValue.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[3], v4, v5);
    _Streamed.yield(_:)(v3);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    _Streamed.yield(_:)((*a1)[4]);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void *_Streamed.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = v1;
  swift_allocObject();
  v4 = specialized _Streamed.init(wrappedValue:)(a1);
  (*(*(*(v2 + 80) - 8) + 8))(a1);
  return v4;
}

void *_Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *v1;
  v4 = specialized _Streamed.init(wrappedValue:)(a1);
  (*(*(*(v3 + 80) - 8) + 8))(a1);
  return v4;
}

uint64_t _Streamed.deinit()
{
  _Streamed.finish()();
  v1 = *(v0 + 16);

  return v0;
}

Swift::Void __swiftcall _Streamed.finish()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for AsyncStream.Continuation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - v6;
  v8 = v0[2];
  v21[4] = v2;
  v21[5] = *(v1 + 88);
  type metadata accessor for _Streamed.State();
  type metadata accessor for Dictionary();
  v9 = *(*v8 + *MEMORY[0x1E69E6B68] + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  partial apply for closure #1 in _Streamed.finish()(v8 + v9, &v22);
  os_unfair_lock_unlock((v8 + v10));
  v11 = 0;
  v12 = v22;
  v14 = v22 + 64;
  v13 = *(v22 + 64);
  v15 = 1 << *(v22 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v21[1] = v4 + 16;
  if ((v16 & v13) != 0)
  {
    do
    {
      v19 = v11;
LABEL_9:
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v4 + 16))(v7, *(v12 + 56) + *(v4 + 72) * (v20 | (v19 << 6)), v3);
      AsyncStream.Continuation.finish()();
      (*(v4 + 8))(v7, v3);
    }

    while (v17);
  }

  while (1)
  {
    v19 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v19 >= v18)
    {

      return;
    }

    v17 = *(v14 + 8 * v19);
    ++v11;
    if (v17)
    {
      v11 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t _Streamed.__deallocating_deinit()
{
  _Streamed.finish()();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t _Streamed.projectedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = v1;
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = v2;
  v6 = type metadata accessor for AsyncStream.Continuation.YieldResult();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v46 = v40 - v8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = TupleTypeMetadata2 - 8;
  v11 = *(*(TupleTypeMetadata2 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v14 = v40 - v13;
  v43 = *(v4 - 8);
  v15 = *(v43 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v45 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v41 = v40 - v18;
  v19 = type metadata accessor for AsyncStream.Continuation.BufferingPolicy();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v40 - v22;
  v24 = type metadata accessor for AsyncStream.Continuation();
  v44 = *(v24 - 8);
  v25 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = v40 - v26;
  (*(v20 + 104))(v23, *MEMORY[0x1E69E8650], v19);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v20 + 8))(v23, v19);
  v40[1] = v5;
  v28 = v5[2];
  v49 = v4;
  v50 = *(v3 + 88);
  v29 = v50;
  v51 = v27;
  type metadata accessor for _Streamed.State();
  v30 = *(*v28 + *MEMORY[0x1E69E6B68] + 16);
  v31 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v31));
  partial apply for closure #1 in _Streamed.projectedValue.getter((v28 + v30), v14);
  os_unfair_lock_unlock((v28 + v31));
  v32 = *v14;
  v33 = v43;
  v34 = &v14[*(v10 + 56)];
  v35 = v41;
  (*(v43 + 32))(v41, v34, v4);
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = swift_allocObject();
  v37[2] = v4;
  v37[3] = v29;
  v37[4] = v36;
  v37[5] = v32;
  AsyncStream.Continuation.onTermination.setter();
  (*(v33 + 16))(v45, v35, v4);
  v38 = v46;
  AsyncStream.Continuation.yield(_:)();
  (*(v47 + 8))(v38, v48);
  (*(v33 + 8))(v35, v4);
  return (*(v44 + 8))(v27, v24);
}

uint64_t closure #1 in _Streamed.projectedValue.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = type metadata accessor for AsyncStream.Continuation();
  v11 = type metadata accessor for Optional();
  v12 = *(*(v11 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v21 - v14;
  v16 = *a1;
  v17 = *a1 + 1;
  if (__OFADD__(*a1, 1))
  {
    __break(1u);
  }

  else
  {
    v21[0] = a4;
    *a1 = v17;
    v18 = *(v10 - 8);
    (*(v18 + 16))(v15, a2, v10);
    (*(v18 + 56))(v15, 0, 1, v10);
    v21[3] = v16;
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    *a5 = v16;
    v20 = type metadata accessor for _Streamed.State();
    return (*(*(a3 - 8) + 16))(&a5[v19], a1 + *(v20 + 40), a3);
  }

  return result;
}

uint64_t closure #2 in _Streamed.projectedValue.getter()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    type metadata accessor for _Streamed.State();
    v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v4));
    partial apply for closure #1 in closure #2 in _Streamed.projectedValue.getter(v1 + v3);
    os_unfair_lock_unlock((v1 + v4));
  }

  return result;
}

uint64_t closure #1 in closure #2 in _Streamed.projectedValue.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AsyncStream.Continuation();
  v3 = type metadata accessor for Optional();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - v6;
  v9[1] = a2;
  type metadata accessor for Dictionary();
  Dictionary.removeValue(forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t closure #1 in _Streamed.yield(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for _Streamed.State() + 40);
  (*(v8 + 16))(v11, a1 + v12, a3);
  v13 = dispatch thunk of static Equatable.== infix(_:_:)();
  result = (*(v8 + 8))(v11, a3);
  v15 = 0;
  if ((v13 & 1) == 0)
  {
    (*(v8 + 24))(a1 + v12, a2, a3);
    v15 = *(a1 + 8);
    type metadata accessor for AsyncStream.Continuation();
  }

  *a4 = v15;
  return result;
}

void closure #1 in _Streamed.finish()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  type metadata accessor for AsyncStream.Continuation();
  type metadata accessor for Dictionary();

  Dictionary.removeAll(keepingCapacity:)(0);
  *a2 = v3;
}

uint64_t specialized OSAllocatedUnfairLock.init(uncheckedState:)()
{
  type metadata accessor for os_unfair_lock_s(255);
  type metadata accessor for ManagedBuffer();
  return static ManagedBuffer.create(minimumCapacity:makingHeaderWith:)();
}

void *specialized _Streamed.init(wrappedValue:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  v9 = *(v8 + 88);
  v10 = type metadata accessor for _Streamed.State();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v4 + 16))(v7, a1, v3);
  type metadata accessor for AsyncStream.Continuation();
  v15 = Dictionary.init()();
  *v14 = 0;
  *(v14 + 1) = v15;
  (*(v4 + 32))(&v14[*(v10 + 40)], v7, v3);
  v16 = specialized OSAllocatedUnfairLock.init(uncheckedState:)();
  (*(v11 + 8))(v14, v10);
  v1[2] = v16;
  return v1;
}

void partial apply for closure #1 in _Streamed.finish()(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  closure #1 in _Streamed.finish()(a1, a2);
}

uint64_t partial apply for closure #2 in _Streamed.projectedValue.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return closure #2 in _Streamed.projectedValue.getter();
}

uint64_t type metadata completion function for _Streamed.State(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for AsyncStream.Continuation();
  result = type metadata accessor for Dictionary();
  if (v3 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _Streamed.State(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      v15 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((v15 + v6 + 8) & ~v6);
      }

      v16 = *v15;
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
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

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for _Streamed.State(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
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
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t partial apply for closure #1 in closure #2 in _Streamed.projectedValue.getter(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return closure #1 in closure #2 in _Streamed.projectedValue.getter(a1, v1[4]);
}

uint64_t partial apply for closure #1 in OSAllocatedUnfairLock.init(uncheckedState:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t SystemCoordinatorHostConnection.__allocating_init(connection:queue:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  return XPCHostConnection.init(connection:queue:)();
}

void SystemCoordinatorHostConnection.delegate.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*SystemCoordinatorHostConnection.delegate.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = direct field offset for SystemCoordinatorHostConnection.delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return SystemCoordinatorHostConnection.delegate.modify;
}

void SystemCoordinatorHostConnection.delegate.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  v5 = (*a1)[5] + (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

Swift::Void __swiftcall SystemCoordinatorHostConnection.handleHostConnectionInvalidated()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    SystemCoordinatorHost.invalidate()();
  }
}

uint64_t SystemCoordinatorHostConnection.init(connection:queue:)()
{
  swift_unknownObjectWeakInit();

  return XPCHostConnection.init(connection:queue:)();
}

id SystemCoordinatorHostConnection.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SystemCoordinatorHostConnection.requestCurrentState(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = XPCHostConnection.queue.getter();
  v16 = swift_allocObject();
  v16[2] = v2;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = partial apply for closure #1 in SystemCoordinatorHostConnection.requestCurrentState(_:);
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_7;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  static DispatchQoS.unspecified.getter();
  v20[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v14, v9, v17);
  _Block_release(v17);

  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void closure #1 in SystemCoordinatorHostConnection.requestCurrentState(_:)(uint64_t a1, void (*a2)(void))
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_queue);
    *v7 = v10;
    (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
    v11 = v10;
    LOBYTE(v10) = _dispatchPreconditionTest(_:)();
    (*(v4 + 8))(v7, v3);
    if (v10)
    {
      v12 = OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_currentState;
      swift_beginAccess();
      v13 = *&v9[v12];
      a2();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t @objc SystemCoordinatorHostConnection.requestCurrentState(_:)(void *a1, int a2, void *aBlock)
{
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = a1;
  SystemCoordinatorHostConnection.requestCurrentState(_:)(partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned SystemCoordinatorState) -> (), v5);
}

uint64_t SystemCoordinatorHostConnection.setConfiguration(_:)(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = XPCHostConnection.queue.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:);
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_6;
  v15 = _Block_copy(aBlock);
  v16 = v1;
  v17 = a1;
  static DispatchQoS.unspecified.getter();
  v19[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
}

void closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_configurationUpdateSubject);
    v2 = Strong;
    PassthroughSubject.send(_:)();
  }
}

void partial apply for closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  closure #1 in SystemCoordinatorHostConnection.setConfiguration(_:)();
}

uint64_t type metadata accessor for SystemCoordinatorHostConnection()
{
  result = type metadata singleton initialization cache for SystemCoordinatorHostConnection;
  if (!type metadata singleton initialization cache for SystemCoordinatorHostConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void @objc SystemCoordinatorHostConnection.setConfiguration(_:)(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SystemCoordinatorHostConnection.setConfiguration(_:)(v4);
}

uint64_t GroupStateObserver.isEligibleForGroupSession.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path getter for GroupStateObserver.isEligibleForGroupSession : GroupStateObserver@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GroupStateObserver.isEligibleForGroupSession : GroupStateObserver(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t key path getter for GroupStateObserver.$isEligibleForGroupSession : GroupStateObserver(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for GroupStateObserver.$isEligibleForGroupSession : GroupStateObserver(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(uint64_t *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t GroupStateObserver.init(conversationManagerClient:queue:)(uint64_t *a1, void *a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v10, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v12;
}

uint64_t GroupStateObserver.__allocating_init(queue:)(void *a1)
{
  v2 = v1;
  type metadata accessor for ConversationManagerClient();
  v4 = static ConversationManagerClient.shared.getter();
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = specialized GroupStateObserver.init(conversationManagerClient:queue:)(v4, a1, v7);

  return v8;
}

uint64_t GroupStateObserver.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t GroupStateObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t specialized GroupStateObserver.init(conversationManagerClient:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v77 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v60 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v75 = &v60 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v63 = *(v64 - 8);
  v16 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v64);
  v18 = &v60 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  v68 = *(v70 - 8);
  v19 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v65 = &v60 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v72 = *(v21 - 8);
  v73 = v21;
  v22 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v71 = &v60 - v23;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v76 = *(v74 - 8);
  v24 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v60 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySbGMd, &_s7Combine9PublishedVySbGMR);
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v60 - v30;
  v32 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v69 = v34;
  v35 = &v60 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a4;
  (*(v34 + 32))();
  v81 = a3;
  v37 = a3 + OBJC_IVAR____TtC15GroupActivities18GroupStateObserver__isEligibleForGroupSession;
  LOBYTE(v82) = 0;
  Published.init(initialValue:)();
  v38 = *(v27 + 32);
  v67 = v26;
  v38(v37, v31, v26);
  if (one-time initialization token for client != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  __swift_project_value_buffer(v39, static Logger.client);
  v40 = a2;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v43 = 138412290;
    *(v43 + 4) = v40;
    *v44 = v40;
    v45 = v40;
    _os_log_impl(&dword_1AEE80000, v41, v42, "Initialized group state observer on queue: %@", v43, 0xCu);
    outlined destroy of NSObject?(v44, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v44, -1, -1);
    MEMORY[0x1B2715BA0](v43, -1, -1);
  }

  v46 = *(v62 + 8);
  v61 = v35;
  v60 = v36;
  v82 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
  v47 = v66;
  Publisher.map<A>(_:)();

  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, Bool> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGSbGMR);
  v48 = v74;
  v82 = Publisher.eraseToAnyPublisher()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  Publisher<>.removeDuplicates()();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGMR);
  v49 = v64;
  v50 = v65;
  Publisher.handleEvents(receiveSubscription:receiveOutput:receiveCompletion:receiveCancel:receiveRequest:)();
  (*(v63 + 8))(v18, v49);
  v82 = v40;
  v51 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v52 = v75;
  (*(*(v51 - 8) + 56))(v75, 1, 1, v51);
  type metadata accessor for OS_dispatch_queue();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>> and conformance Publishers.HandleEvents<A>, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMd, &_s7Combine10PublishersO12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGMR);
  lazy protocol witness table accessor for type OS_dispatch_queue and conformance OS_dispatch_queue();
  v53 = v70;
  v54 = v71;
  Publisher.receive<A>(on:options:)();
  outlined destroy of NSObject?(v52, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(v68 + 8))(v50, v53);
  swift_beginAccess();
  v55 = v78;
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.ReceiveOn<Publishers.HandleEvents<Publishers.RemoveDuplicates<AnyPublisher<Bool, Never>>>, OS_dispatch_queue> and conformance Publishers.ReceiveOn<A, B>, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO9ReceiveOnVy_AC12HandleEventsVy_AC16RemoveDuplicatesVy_AA12AnyPublisherVySbs5NeverOGGGSo17OS_dispatch_queueCGMR);
  v56 = v73;
  Publisher<>.assign(to:)();
  (*(v72 + 8))(v54, v56);
  v58 = v79;
  v57 = v80;
  (*(v79 + 16))(v77, v55, v80);
  swift_beginAccess();
  Published.projectedValue.setter();
  swift_endAccess();

  (*(v58 + 8))(v55, v57);
  (*(v76 + 8))(v47, v48);
  (*(v69 + 8))(v61, v60);
  return v81;
}

uint64_t specialized GroupStateObserver.__allocating_init(conversationManagerClient:queue:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return specialized GroupStateObserver.init(conversationManagerClient:queue:)(v12, a2, v16, a4, a5);
}

uint64_t Subject.wrappedValue.getter(void *a1)
{
  if (v1[1])
  {
    v2 = v1[1];
  }

  else
  {
    v3 = a1[2];
    v4 = a1[3];
    v5 = a1[4];
    v2 = closure #1 in Subject.wrappedValue.getter(v1);
    v1[1] = v2;
  }

  return v2;
}

uint64_t Subject.wrappedValue.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Subject.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PassthroughSubject();
  result = PassthroughSubject.__allocating_init()();
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t closure #1 in Subject.wrappedValue.getter(uint64_t *a1)
{
  v2 = *a1;
  type metadata accessor for PassthroughSubject();
  swift_getWitnessTable();
  return Publisher.eraseToAnyPublisher()();
}

uint64_t (*Subject.wrappedValue.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  a1[1] = v2;
  *a1 = Subject.wrappedValue.getter(a2);
  return Subject.wrappedValue.modify;
}

uint64_t Subject.wrappedValue.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v3 + 8);
  if (a2)
  {
    v5 = *a1;

    *(v3 + 8) = v2;
  }

  else
  {
    v7 = *(v3 + 8);

    *(v3 + 8) = v2;
  }

  return result;
}

uint64_t type metadata instantiation function for Subject()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t specialized _PublisherElements.Iterator.Inner.cancel()(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v9 = v4;
  v10 = *(v4 + 16);
  os_unfair_lock_lock(v10);
  swift_beginAccess();
  v11 = *(v4 + 24);
  *(v4 + 24) = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  outlined init with copy of URL?(v4 + 32, &v56, a1, a2);
  if (v57 >= 2)
  {
    outlined init with take of Transferable(&v56, v54);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Log.default);
    outlined init with copy of Transferable(v54, &v52);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v44 = v11;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v47 = v24;
      *v23 = 136315138;
      outlined init with copy of Transferable(&v52, v50);
      outlined init with copy of URL?(v50, &v48, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      v42 = v10;
      if (v49)
      {
        outlined init with take of Transferable(&v48, v46);
        outlined init with copy of Transferable(v46, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12Subscription_pMd, &_s7Combine12Subscription_pMR);
        v25 = String.init<A>(reflecting:)();
        v27 = v26;
        __swift_destroy_boxed_opaque_existential_0(v46);
      }

      else
      {
        v25 = 7104878;
        v27 = 0xE300000000000000;
      }

      outlined destroy of NSObject?(v50, &_s7Combine12Subscription_pSgMd, &_s7Combine12Subscription_pSgMR);
      __swift_destroy_boxed_opaque_existential_0(&v52);
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v47);

      *(v23 + 4) = v34;
      _os_log_impl(&dword_1AEE80000, v21, v22, "Handling cancellation by terminating upstream subscription: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);

      v10 = v42;
      v11 = v44;
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v52);
    }

    v52 = 0uLL;
    *v53 = 0;
    *&v53[8] = xmmword_1AF00FCC0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(&v52, v9 + 32, a1, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v35 = *(&v55 + 1);
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v36 = *(v35 + 8);
    dispatch thunk of Cancellable.cancel()();
    v37 = *(v11 + 16);
    if (v37)
    {
      v38 = (v11 + 32);
      do
      {
        v39 = *v38++;
        **(*(v39 + 64) + 40) = 0;
        swift_continuation_resume();
        --v37;
      }

      while (v37);
    }

    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Log.default);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v41 = v10;
      v43 = v11;
      v15 = a4;
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v46[0] = v17;
      *v16 = 136315138;
      outlined init with copy of URL?(v9 + 32, v54, a1, a2);
      v40 = v15;
      outlined init with copy of URL?(v54, &v52, a3, v15);
      if (*&v53[8] == 2)
      {
        v18 = 7104878;
        v19 = 0xE300000000000000;
      }

      else
      {
        v50[0] = v52;
        v50[1] = *v53;
        v51 = *&v53[16];
        outlined init with copy of URL?(v50, &v48, a1, a2);
        __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
        v18 = String.init<A>(reflecting:)();
        v19 = v28;
        outlined destroy of NSObject?(v50, a1, a2);
      }

      outlined destroy of NSObject?(v54, a3, v40);
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v46);

      *(v16 + 4) = v29;
      _os_log_impl(&dword_1AEE80000, v13, v14, "Terminating sequence from state: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);

      v10 = v41;
      v11 = v43;
    }

    else
    {
    }

    memset(v54, 0, sizeof(v54));
    v55 = xmmword_1AF00FCC0;
    swift_beginAccess();
    outlined assign with take of _PublisherElements<AnyPublisher<[GroupSessionAttachmentManager.Attachment], Never>>.Iterator.Inner.State(v54, v9 + 32, a1, a2);
    swift_endAccess();
    os_unfair_lock_unlock(v10);
    v30 = *(v11 + 16);
    if (v30)
    {
      v31 = (v11 + 32);
      do
      {
        v32 = *v31++;
        **(*(v32 + 64) + 40) = 0;
        swift_continuation_resume();
        --v30;
      }

      while (v30);
    }

    return outlined destroy of NSObject?(&v56, a1, a2);
  }
}

uint64_t GroupSessionJournal.session.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t GroupSessionJournal.attachments.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  if (*(v1 + 32))
  {
    v8 = *(v1 + 32);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
    v9 = v1;
    Published.projectedValue.getter();
    swift_endAccess();
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionJournal.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
    v8 = Publisher.eraseToAnyPublisher()();
    (*(v4 + 8))(v7, v3);
    v10 = *(v9 + 32);
    *(v9 + 32) = v8;
  }

  *a1 = v8;
}

uint64_t GroupSessionJournal.attachments.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t GroupSessionJournal.Attachments.init(_:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Published<[GroupSessionJournal.Attachment]>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVG_GMR);
  v7 = Publisher.eraseToAnyPublisher()();

  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t (*GroupSessionJournal.attachments.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  GroupSessionJournal.attachments.getter(a1);
  return GroupSessionJournal.attachments.modify;
}

uint64_t GroupSessionJournal.attachments.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
}

uint64_t GroupSessionJournal._attachments.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t GroupSessionJournal.cancellables.getter()
{
  v1 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t GroupSessionJournal.cancellables.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t GroupSessionJournal.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v5[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v5[9] = v9;
  v10 = *(v9 - 8);
  v5[10] = v10;
  v11 = *(v10 + 64) + 15;
  v5[11] = swift_task_alloc();
  v12 = type metadata accessor for Optional();
  v5[12] = v12;
  v13 = *(v12 - 8);
  v5[13] = v13;
  v14 = *(v13 + 64) + 15;
  v5[14] = swift_task_alloc();
  v15 = *(a3 - 8);
  v5[15] = v15;
  v16 = *(v15 + 64) + 15;
  v5[16] = swift_task_alloc();
  v17 = type metadata accessor for UUID();
  v5[17] = v17;
  v18 = *(v17 - 8);
  v5[18] = v18;
  v19 = *(v18 + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add<A>(_:), 0, 0);
}

uint64_t GroupSessionJournal.add<A>(_:)()
{
  v48 = v0;
  v1 = v0[20];
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v7 = v0[15];
  v6 = v0[16];
  v9 = v0[3];
  v8 = v0[4];
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.ledger);
  v45 = *(v7 + 16);
  v45(v6, v9, v8);
  v11 = *(v5 + 16);
  v0[21] = v11;
  v0[22] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[18];
  v16 = v0[19];
  v18 = v0[16];
  v17 = v0[17];
  v19 = v0[15];
  if (v14)
  {
    v41 = v0[19];
    v42 = v0[17];
    v20 = v0[13];
    v21 = v0[14];
    v40 = v0[12];
    v22 = v0[4];
    log = v12;
    v23 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v47 = v44;
    *v23 = 136315394;
    v45(v21, v18, v22);
    (*(v19 + 56))(v21, 0, 1, v22);
    v24 = >> prefix<A>(_:)(v21, v22);
    v46 = v13;
    v26 = v25;
    (*(v20 + 8))(v21, v40);
    (*(v19 + 8))(v18, v22);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, &v47);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = *(v15 + 8);
    v31(v41, v42);
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v47);

    *(v23 + 14) = v32;
    _os_log_impl(&dword_1AEE80000, log, v46, "Received add request for item: %s, using ID: %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v44, -1, -1);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  else
  {
    v33 = v0[4];

    v31 = *(v15 + 8);
    v31(v16, v17);
    (*(v19 + 8))(v18, v33);
  }

  v0[23] = v31;
  v34 = swift_task_alloc();
  v0[24] = v34;
  *v34 = v0;
  v34[1] = GroupSessionJournal.add<A>(_:);
  v35 = v0[11];
  v36 = v0[4];
  v37 = v0[5];
  v38 = v0[3];

  return static URL.file<A>(from:)(v35, v38, v36, v37);
}

{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.add<A>(_:);
  }

  else
  {
    v3 = GroupSessionJournal.add<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 176);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  (*(v0 + 168))(v5, *(v0 + 160), *(v0 + 136));
  v8 = v5 + *(v6 + 24);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48);
  (*(v3 + 16))(v8, v2, v4);
  *(v8 + v9) = xmmword_1AF011260;
  type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  swift_storeEnumTagMultiPayload();
  v10 = *(v6 + 20);
  swift_weakInit();
  v12 = *(v7 + 16);
  v11 = *(v7 + 24);
  ObjectType = swift_getObjectType();
  v14 = *(v11 + 40);
  v20 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *v16 = v0;
  v16[1] = GroupSessionJournal.add<A>(_:);
  v17 = *(v0 + 160);
  v18 = *(v0 + 88);

  return (v20)(v17, v18, 0, 0xF000000000000000, ObjectType, v11);
}

{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.add<A>(_:);
  }

  else
  {
    v3 = GroupSessionJournal.add<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[17];
  v5 = v0[18];
  v11 = v0[16];
  v12 = v0[14];
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[9];
  outlined init with take of GroupSessionJournal.Attachment(v0[8], v0[2], type metadata accessor for GroupSessionJournal.Attachment);
  (*(v6 + 8))(v7, v8);
  v1(v3, v4);

  v9 = v0[1];

  return v9();
}

{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  outlined destroy of GroupSessionJournal.Attachment(*(v0 + 64), type metadata accessor for GroupSessionJournal.Attachment);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 216);
  v5 = *(v0 + 152);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 64);
  v10 = *(v0 + 144) + 8;
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v11 = *(v0 + 8);

  return v11();
}

{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);
  v3 = *(v0 + 128);
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 144) + 8;
  (*(v0 + 184))(*(v0 + 160), *(v0 + 136));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t static URL.file<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[24] = v6;
  v7 = *(v6 - 8);
  v4[25] = v7;
  v8 = *(v7 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = type metadata accessor for UUID();
  v4[29] = v9;
  v10 = *(v9 - 8);
  v4[30] = v10;
  v11 = *(v10 + 64) + 15;
  v4[31] = swift_task_alloc();
  v12 = type metadata accessor for ResolvedTransferRepresentation();
  v4[32] = v12;
  v13 = *(v12 - 8);
  v4[33] = v13;
  v14 = *(v13 + 64) + 15;
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v15 = type metadata accessor for _TransferRepresentationInputs();
  v4[36] = v15;
  v16 = *(v15 - 8);
  v4[37] = v16;
  v17 = *(v16 + 64) + 15;
  v4[38] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[39] = AssociatedTypeWitness;
  v19 = type metadata accessor for _TransferRepresentationValue();
  v4[40] = v19;
  v20 = *(v19 - 8);
  v4[41] = v20;
  v21 = *(v20 + 64) + 15;
  v4[42] = swift_task_alloc();
  v22 = type metadata accessor for _TransferRepresentationOutputs();
  v4[43] = v22;
  v23 = *(v22 - 8);
  v4[44] = v23;
  v24 = *(v23 + 64) + 15;
  v4[45] = swift_task_alloc();
  v25 = *(AssociatedTypeWitness - 8);
  v4[46] = v25;
  v26 = *(v25 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v27 = type metadata accessor for UTType();
  v4[49] = v27;
  v28 = *(v27 - 8);
  v4[50] = v28;
  v29 = *(v28 + 64) + 15;
  v4[51] = swift_task_alloc();
  v4[52] = swift_task_alloc();
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v30 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v31 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](static URL.file<A>(from:), 0, 0);
}

uint64_t static URL.file<A>(from:)()
{
  v138 = v0;
  v137[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 176);
  v2 = *(v0 + 168);
  v3 = static Transferable.readableContentTypes.getter();
  v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC22UniformTypeIdentifiers6UTTypeV_SayAFGTt0g5Tf4g_n(v3);

  *(v0 + 120) = v4;
  if (one-time initialization token for default != -1)
  {
LABEL_42:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  *(v0 + 488) = v5;
  *(v0 + 496) = __swift_project_value_buffer(v5, static Log.default);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v134 = *(v0 + 392);
    v8 = *(v0 + 168);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v137[0] = v10;
    *v9 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, v137);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);

    v14 = Set.description.getter();
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, v137);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1AEE80000, v6, v7, "ItemType: %s has readableContentTypes: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v18 = *(v0 + 480);
  v19 = *(v0 + 456);
  v20 = *(v0 + 392);
  v21 = *(v0 + 400);
  static UTType.fileURL.getter();
  swift_beginAccess();
  specialized Set._Variant.remove(_:)(v19, v18);
  swift_endAccess();
  v22 = *(v21 + 8);
  *(v0 + 504) = v22;
  *(v0 + 512) = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v120 = v22;
  v22(v19, v20);
  v23 = *(v21 + 48);
  *(v0 + 520) = v23;
  *(v0 + 528) = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v24 = v23(v18, 1, v20);
  outlined destroy of NSObject?(v18, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v24 == 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v26 = *(v0 + 448);
    static UTType.fileURL.getter();
    v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v29 = v27[2];
    v28 = v27[3];
    v30 = v27;
    if (v29 >= v28 >> 1)
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v28 > 1, v29 + 1, 1, v27);
    }

    v31 = *(v0 + 448);
    v32 = *(v0 + 392);
    v33 = *(v0 + 400);
    *(v30 + 16) = v29 + 1;
    v34 = v30 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v29;
    v25 = v30;
    (*(v33 + 32))(v34, v31, v32);
  }

  v35 = *(v0 + 400);
  v36 = *(v0 + 120);
  *(v0 + 536) = v36;
  v37 = v36 + 56;
  v38 = -1;
  v39 = -1 << *(v36 + 32);
  if (-v39 < 64)
  {
    v38 = ~(-1 << -v39);
  }

  v40 = v38 & *(v36 + 56);
  v41 = (63 - v39) >> 6;
  v135 = v35;
  v125 = v36;
  swift_bridgeObjectRetain_n();
  v42 = 0;
  *(v0 + 544) = v25;
  if (v40)
  {
    while (1)
    {
      v131 = v25;
LABEL_17:
      v45 = *(v0 + 432);
      v44 = *(v0 + 440);
      v46 = *(v0 + 392);
      v128 = *(v135 + 72);
      v47 = *(v135 + 16);
      v47(v44, *(v125 + 48) + v128 * (__clz(__rbit64(v40)) | (v42 << 6)), v46);
      v47(v45, v44, v46);
      v48 = v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v131[2] + 1, 1, v131);
      }

      v50 = v48[2];
      v49 = v48[3];
      v51 = v48;
      if (v50 >= v49 >> 1)
      {
        v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v49 > 1, v50 + 1, 1, v48);
      }

      v40 &= v40 - 1;
      v52 = *(v0 + 432);
      v53 = *(v0 + 440);
      v54 = *(v0 + 392);
      *(v51 + 16) = v50 + 1;
      v25 = v51;
      (*(v135 + 32))(v51 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + v50 * v128, v52, v54);
      v120(v53, v54);
      *(v0 + 544) = v25;
      if (!v40)
      {
        goto LABEL_13;
      }
    }
  }

  while (1)
  {
LABEL_13:
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v43 >= v41)
    {
      break;
    }

    v40 = *(v37 + 8 * v43);
    ++v42;
    if (v40)
    {
      v131 = v25;
      v42 = v43;
      goto LABEL_17;
    }
  }

  v55 = v25[2];
  *(v0 + 552) = v55;
  if (v55)
  {
    *(v0 + 560) = 0;
    v56 = *(v0 + 544);
    if (*(v56 + 16))
    {
      v57 = 0;
      while (1)
      {
        v123 = *(v0 + 424);
        v58 = *(v0 + 392);
        v59 = *(v0 + 400);
        v61 = *(v0 + 376);
        v60 = *(v0 + 384);
        v62 = *(v0 + 368);
        v116 = *(v0 + 360);
        v129 = *(v0 + 352);
        v132 = *(v0 + 344);
        v114 = *(v0 + 336);
        v121 = *(v0 + 328);
        v63 = *(v0 + 312);
        v126 = *(v0 + 320);
        v65 = *(v0 + 296);
        v64 = *(v0 + 304);
        v118 = *(v0 + 288);
        v66 = *(v0 + 168);
        v67 = *(v0 + 176);
        v68 = *(v59 + 16);
        v59 += 16;
        v69 = v56 + ((*(v59 + 64) + 32) & ~*(v59 + 64)) + *(v59 + 56) * v57;
        *(v0 + 568) = v68;
        *(v0 + 576) = v59 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v68();
        dispatch thunk of static Transferable.transferRepresentation.getter();
        swift_getDynamicType();
        (*(v62 + 16))(v61, v60, v63);
        _TransferRepresentationValue.init(_:)();
        _TransferRepresentationInputs.init()();
        swift_getAssociatedConformanceWitness();
        dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
        (*(v65 + 8))(v64, v118);
        (*(v121 + 8))(v114, v126);
        v70 = _TransferRepresentationOutputs.storage.getter();
        (*(v129 + 8))(v116, v132);
        v71 = swift_task_alloc();
        *(v71 + 16) = v123;
        v72 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v71, v70);
        v73 = MEMORY[0x1E6969080];
        *(v0 + 584) = v72;

        v74 = *(v72 + 16);
        *(v0 + 592) = v74;
        if (v74)
        {
          break;
        }

LABEL_31:
        v82 = *(v0 + 584);
        v83 = *(v0 + 384);
        v84 = *(v0 + 368);
        v85 = *(v0 + 312);

        (*(v84 + 8))(v83, v85);
        v86 = *(v0 + 552);
        v87 = *(v0 + 512);
        v88 = *(v0 + 560) + 1;
        (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
        if (v88 == v86)
        {
          goto LABEL_37;
        }

        v57 = *(v0 + 560) + 1;
        *(v0 + 560) = v57;
        v56 = *(v0 + 544);
        if (v57 >= *(v56 + 16))
        {
          goto LABEL_33;
        }
      }

      v75 = 0;
      *(v0 + 704) = *(*(v0 + 264) + 80);
      while (1)
      {
        *(v0 + 600) = v75;
        v76 = *(v0 + 584);
        if (v75 >= *(v76 + 16))
        {
          goto LABEL_41;
        }

        v77 = *(v0 + 280);
        v78 = *(v0 + 256);
        v79 = *(v0 + 264);
        v80 = *(v79 + 16);
        v79 += 16;
        v81 = v76 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v79 + 56) * v75;
        *(v0 + 608) = v80;
        *(v0 + 616) = v79 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v80(v77, v81, v78);
        if (ResolvedTransferRepresentation.representationType.getter() == v73)
        {
          goto LABEL_34;
        }

        (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
        v75 = *(v0 + 600) + 1;
        if (v75 == *(v0 + 592))
        {
          goto LABEL_31;
        }
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    v89 = swift_task_alloc();
    *(v0 + 624) = v89;
    *v89 = v0;
    v89[1] = static URL.file<A>(from:);
    v90 = *(v0 + 280);
    v91 = *(v0 + 168);
    v92 = *(v0 + 176);
    v93 = *(v0 + 160);
    v94 = *MEMORY[0x1E69E9840];

    return ResolvedTransferRepresentation.data<A>(from:)(v93, v91, v92);
  }

  else
  {
LABEL_37:
    v96 = *(v0 + 544);
    v97 = *(v0 + 536);
    v99 = *(v0 + 472);
    v98 = *(v0 + 480);
    v100 = *(v0 + 456);
    v101 = *(v0 + 464);
    v102 = *(v0 + 448);
    v106 = *(v0 + 440);
    v107 = *(v0 + 432);
    v108 = *(v0 + 424);
    v109 = *(v0 + 416);
    v110 = *(v0 + 408);
    v111 = *(v0 + 384);
    v112 = *(v0 + 376);
    v113 = *(v0 + 360);
    v115 = *(v0 + 336);
    v117 = *(v0 + 304);
    v119 = *(v0 + 280);
    v122 = *(v0 + 272);
    v124 = *(v0 + 248);
    v127 = *(v0 + 224);
    v130 = *(v0 + 216);
    v133 = *(v0 + 208);
    v136 = *(v0 + 184);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v103 = 1;
    swift_willThrow();

    v104 = *(v0 + 8);
    v105 = *MEMORY[0x1E69E9840];

    return v104();
  }
}

{
  v199 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 584);
  v3 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v194 = *(v0 + 168);
  outlined copy of Data._Representation(*(v0 + 640), *(v0 + 648));

  UUID.init()();
  UUID.uuidString.getter();
  (*(v3 + 8))(v2, v5);
  v9 = NSTemporaryDirectory();
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  URL.init(fileURLWithPath:isDirectory:)();

  URL.appendingPathComponent(_:isDirectory:)();

  v10 = *(v8 + 8);
  *(v0 + 656) = v10;
  *(v0 + 664) = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  if (v7 != v194)
  {
    v11 = *(v0 + 632);
    goto LABEL_3;
  }

  v43 = *(v0 + 280);
  v44 = ResolvedTransferRepresentation.importing.getter();
  *(v0 + 672) = v44;
  *(v0 + 680) = v45;
  if (!v44)
  {
    v75 = *(v0 + 192);
    v76 = *(v0 + 200);
    v77 = *(v0 + 184);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    outlined destroy of NSObject?(v0 + 16, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    (*(v76 + 56))(v77, 1, 1, v75);
    v11 = *(v0 + 632);
    outlined destroy of NSObject?(*(v0 + 184), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_3:
    v12 = *(v0 + 648);
    v13 = *(v0 + 640);
    v14 = *(v0 + 224);
    Data.write(to:options:)();
    if (v11)
    {
      v15 = *(v0 + 664);
      v16 = *(v0 + 656);
      v17 = *(v0 + 648);
      v18 = *(v0 + 640);
      v19 = *(v0 + 280);
      v195 = v11;
      v21 = *(v0 + 256);
      v20 = *(v0 + 264);
      v22 = *(v0 + 224);
      v23 = *(v0 + 192);
      outlined consume of Data._Representation(v18, v17);
      outlined consume of Data._Representation(v18, v17);
      v16(v22, v23);
      (*(v20 + 8))(v19, v21);
      v24 = *(v0 + 576);
      v25 = *(v0 + 568);
      v26 = *(v0 + 496);
      v28 = *(v0 + 416);
      v27 = *(v0 + 424);
      v29 = *(v0 + 392);
      (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
      v25(v28, v27, v29);
      v30 = v195;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v186 = v32;
        v190 = v31;
        v33 = *(v0 + 576);
        v34 = *(v0 + 568);
        v173 = *(v0 + 520);
        v177 = *(v0 + 528);
        v36 = *(v0 + 464);
        v35 = *(v0 + 472);
        v37 = *(v0 + 416);
        v39 = *(v0 + 392);
        v38 = *(v0 + 400);
        v40 = swift_slowAlloc();
        v182 = swift_slowAlloc();
        *(v0 + 128) = v182;
        *v40 = 136315394;
        v34(v35, v37, v39);
        (*(v38 + 56))(v35, 0, 1, v39);
        outlined init with copy of URL?(v35, v36, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        if (v173(v36, 1, v39) == 1)
        {
          v41 = 0xE300000000000000;
          v42 = 7104878;
        }

        else
        {
          v78 = *(v0 + 576);
          v79 = *(v0 + 568);
          v80 = *(v0 + 504);
          v179 = *(v0 + 512);
          v81 = *(v0 + 456);
          v82 = *(v0 + 408);
          v83 = *(v0 + 392);
          (*(*(v0 + 400) + 32))(v81, *(v0 + 464), v83);
          v79(v82, v81, v83);
          v42 = String.init<A>(reflecting:)();
          v41 = v84;
          v80(v81, v83);
        }

        v85 = *(v0 + 504);
        v86 = *(v0 + 512);
        v87 = *(v0 + 416);
        v88 = *(v0 + 392);
        outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        v85(v87, v88);
        v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v41, (v0 + 128));

        *(v40 + 4) = v89;
        *(v40 + 12) = 2080;
        *(v0 + 136) = v195;
        v90 = v195;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v91 = String.init<A>(reflecting:)();
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, (v0 + 128));

        *(v40 + 14) = v93;
        _os_log_impl(&dword_1AEE80000, v190, v186, "Failed to get file from type: %s, error: %s", v40, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1B2715BA0](v182, -1, -1);
        MEMORY[0x1B2715BA0](v40, -1, -1);
      }

      else
      {
        v72 = *(v0 + 504);
        v71 = *(v0 + 512);
        v73 = *(v0 + 416);
        v74 = *(v0 + 392);

        v72(v73, v74);
      }

      v94 = *(v0 + 552);
      v95 = *(v0 + 512);
      v96 = *(v0 + 560) + 1;
      (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
      if (v96 != v94)
      {
        while (1)
        {
          v113 = *(v0 + 560) + 1;
          *(v0 + 560) = v113;
          v114 = *(v0 + 544);
          if (v113 >= *(v114 + 16))
          {
            goto LABEL_34;
          }

          v181 = *(v0 + 424);
          v115 = *(v0 + 392);
          v116 = *(v0 + 400);
          v118 = *(v0 + 376);
          v117 = *(v0 + 384);
          v119 = *(v0 + 368);
          v169 = *(v0 + 360);
          v189 = *(v0 + 352);
          v120 = *(v0 + 336);
          v193 = *(v0 + 344);
          v176 = *(v0 + 328);
          v121 = *(v0 + 312);
          v185 = *(v0 + 320);
          v123 = *(v0 + 296);
          v122 = *(v0 + 304);
          v172 = *(v0 + 288);
          v124 = *(v0 + 168);
          v125 = *(v0 + 176);
          v126 = *(v116 + 16);
          v116 += 16;
          v127 = v114 + ((*(v116 + 64) + 32) & ~*(v116 + 64)) + *(v116 + 56) * v113;
          *(v0 + 568) = v126;
          *(v0 + 576) = v116 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v126();
          dispatch thunk of static Transferable.transferRepresentation.getter();
          swift_getDynamicType();
          (*(v119 + 16))(v118, v117, v121);
          v128 = MEMORY[0x1E6969080];
          _TransferRepresentationValue.init(_:)();
          _TransferRepresentationInputs.init()();
          swift_getAssociatedConformanceWitness();
          dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
          (*(v123 + 8))(v122, v172);
          (*(v176 + 8))(v120, v185);
          v129 = _TransferRepresentationOutputs.storage.getter();
          (*(v189 + 8))(v169, v193);
          v130 = swift_task_alloc();
          *(v130 + 16) = v181;
          v131 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v130, v129);
          *(v0 + 584) = v131;

          v132 = *(v131 + 16);
          *(v0 + 592) = v132;
          if (v132)
          {
            break;
          }

LABEL_22:
          v106 = *(v0 + 584);
          v107 = *(v0 + 384);
          v108 = *(v0 + 368);
          v109 = *(v0 + 312);

          (*(v108 + 8))(v107, v109);
          v110 = *(v0 + 552);
          v111 = *(v0 + 512);
          v112 = *(v0 + 560) + 1;
          (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
          if (v112 == v110)
          {
            goto LABEL_17;
          }
        }

        v133 = 0;
        *(v0 + 704) = *(*(v0 + 264) + 80);
        while (1)
        {
          *(v0 + 600) = v133;
          v134 = *(v0 + 584);
          if (v133 >= *(v134 + 16))
          {
            break;
          }

          v135 = *(v0 + 280);
          v136 = *(v0 + 256);
          v137 = *(v0 + 264);
          v138 = *(v137 + 16);
          v137 += 16;
          v139 = v134 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v137 + 56) * v133;
          *(v0 + 608) = v138;
          *(v0 + 616) = v137 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v138(v135, v139, v136);
          if (ResolvedTransferRepresentation.representationType.getter() == v128)
          {
            v140 = swift_task_alloc();
            *(v0 + 624) = v140;
            *v140 = v0;
            v140[1] = static URL.file<A>(from:);
            v141 = *(v0 + 280);
            v142 = *(v0 + 168);
            v143 = *(v0 + 176);
            v144 = *(v0 + 160);
            v145 = *MEMORY[0x1E69E9840];

            return ResolvedTransferRepresentation.data<A>(from:)(v144, v142, v143);
          }

          (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
          v133 = *(v0 + 600) + 1;
          if (v133 == *(v0 + 592))
          {
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);
      }

LABEL_17:
      v97 = *(v0 + 544);
      v98 = *(v0 + 536);
      v100 = *(v0 + 472);
      v99 = *(v0 + 480);
      v101 = *(v0 + 456);
      v102 = *(v0 + 464);
      v103 = *(v0 + 448);
      v150 = *(v0 + 440);
      v152 = *(v0 + 432);
      v154 = *(v0 + 424);
      v156 = *(v0 + 416);
      v158 = *(v0 + 408);
      v160 = *(v0 + 384);
      v162 = *(v0 + 376);
      v164 = *(v0 + 360);
      v166 = *(v0 + 336);
      v168 = *(v0 + 304);
      v171 = *(v0 + 280);
      v175 = *(v0 + 272);
      v180 = *(v0 + 248);
      v184 = *(v0 + 224);
      v188 = *(v0 + 216);
      v192 = *(v0 + 208);
      v198 = *(v0 + 184);
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v104 = 1;
      swift_willThrow();

      v69 = *(v0 + 8);
      v105 = *MEMORY[0x1E69E9840];
    }

    else
    {
      v54 = *(v0 + 648);
      v55 = *(v0 + 640);
      v56 = *(v0 + 200);
      (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
      outlined consume of Data._Representation(v55, v54);
      outlined consume of Data._Representation(v55, v54);
      v57 = *(v56 + 32);
      v58 = *(v0 + 544);
      v59 = *(v0 + 536);
      v61 = *(v0 + 504);
      v60 = *(v0 + 512);
      v146 = *(v0 + 480);
      v147 = *(v0 + 472);
      v148 = *(v0 + 464);
      v149 = *(v0 + 456);
      v151 = *(v0 + 448);
      v153 = *(v0 + 440);
      v62 = *(v0 + 424);
      v155 = *(v0 + 432);
      v157 = *(v0 + 416);
      v159 = *(v0 + 408);
      v64 = *(v0 + 384);
      v63 = *(v0 + 392);
      v65 = *(v0 + 368);
      v161 = *(v0 + 376);
      v163 = *(v0 + 360);
      v165 = *(v0 + 336);
      v66 = *(v0 + 312);
      v170 = *(v0 + 304);
      v174 = *(v0 + 280);
      v178 = *(v0 + 272);
      v183 = *(v0 + 248);
      v167 = *(v0 + 224);
      v191 = *(v0 + 216);
      v197 = *(v0 + 208);
      v67 = *(v0 + 192);
      v187 = *(v0 + 184);
      v68 = (*(v0 + 200) + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v57(*(v0 + 152));
      (*(v65 + 8))(v64, v66);
      v61(v62, v63);

      v69 = *(v0 + 8);
      v70 = *MEMORY[0x1E69E9840];
    }

    return v69();
  }

  v46 = v44;
  v47 = *(v0 + 648);
  v48 = *(v0 + 640);
  v49 = MEMORY[0x1E6965B68];
  *(v0 + 80) = MEMORY[0x1E6969080];
  *(v0 + 88) = v49;
  *(v0 + 56) = v48;
  *(v0 + 64) = v47;
  outlined copy of Data._Representation(v48, v47);
  v196 = (v46 + *v46);
  v50 = v46[1];
  v51 = swift_task_alloc();
  *(v0 + 688) = v51;
  *v51 = v0;
  v51[1] = static URL.file<A>(from:);
  v52 = *MEMORY[0x1E69E9840];

  return v196(v0 + 16, v0 + 56);
}

{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = (*v1)[86];
  v9 = *v1;
  (*v1)[87] = v0;

  v4 = v2[85];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2[84]);
  if (v0)
  {
    v5 = static URL.file<A>(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v5 = static URL.file<A>(from:);
  }

  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

{
  v203 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  v4 = swift_dynamicCast();
  (*(v2 + 56))(v3, v4 ^ 1u, 1, v1);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = *(v0 + 696);
    outlined destroy of NSObject?(*(v0 + 184), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v6 = *(v0 + 648);
    v7 = *(v0 + 640);
    v8 = *(v0 + 224);
    Data.write(to:options:)();
    if (v5)
    {
      v9 = *(v0 + 664);
      v10 = *(v0 + 656);
      v11 = *(v0 + 648);
      v12 = *(v0 + 640);
      v198 = *(v0 + 280);
      v14 = *(v0 + 256);
      v13 = *(v0 + 264);
      v15 = *(v0 + 224);
      v16 = *(v0 + 192);
      outlined consume of Data._Representation(v12, v11);
      outlined consume of Data._Representation(v12, v11);
      v10(v15, v16);
      (*(v13 + 8))(v198, v14);
      v17 = v5;
      goto LABEL_7;
    }

    v64 = *(v0 + 648);
    v65 = *(v0 + 640);
    v66 = *(v0 + 200);
    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    outlined consume of Data._Representation(v65, v64);
    outlined consume of Data._Representation(v65, v64);
    v36 = *(v66 + 32);
LABEL_12:
    v67 = *(v0 + 544);
    v68 = *(v0 + 536);
    v70 = *(v0 + 504);
    v69 = *(v0 + 512);
    v149 = *(v0 + 480);
    v150 = *(v0 + 472);
    v151 = *(v0 + 464);
    v152 = *(v0 + 456);
    v154 = *(v0 + 448);
    v156 = *(v0 + 440);
    v71 = *(v0 + 424);
    v158 = *(v0 + 432);
    v160 = *(v0 + 416);
    v162 = *(v0 + 408);
    v73 = *(v0 + 384);
    v72 = *(v0 + 392);
    v74 = *(v0 + 368);
    v164 = *(v0 + 376);
    v166 = *(v0 + 360);
    v75 = *(v0 + 312);
    v168 = *(v0 + 336);
    v170 = *(v0 + 304);
    v176 = *(v0 + 280);
    v180 = *(v0 + 272);
    v184 = *(v0 + 248);
    v173 = *(v0 + 224);
    v190 = *(v0 + 216);
    v195 = *(v0 + 208);
    v76 = *(v0 + 192);
    v201 = *(v0 + 184);
    v77 = *(v0 + 200) + 32;
    v36(*(v0 + 152));
    (*(v74 + 8))(v73, v75);
    v70(v71, v72);

    v78 = *(v0 + 8);
    v79 = *MEMORY[0x1E69E9840];
LABEL_17:

    return v78();
  }

  v18 = *(v0 + 224);
  v19 = *(*(v0 + 200) + 32);
  (v19)(*(v0 + 208), *(v0 + 184), *(v0 + 192));
  v20 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v21);
  v23 = v22;
  URL._bridgeToObjectiveC()(v24);
  v26 = v25;
  *(v0 + 144) = 0;
  v27 = [v20 copyItemAtURL:v23 toURL:v25 error:v0 + 144];

  v28 = *(v0 + 144);
  v30 = *(v0 + 648);
  v29 = *(v0 + 656);
  v31 = *(v0 + 640);
  v193 = *(v0 + 664);
  v199 = *(v0 + 280);
  v32 = *(v0 + 264);
  v188 = *(v0 + 256);
  if (v27)
  {
    v33 = *(v0 + 208);
    v34 = *(v0 + 192);
    v35 = v28;
    outlined consume of Data._Representation(v31, v30);
    outlined consume of Data._Representation(v31, v30);
    v29(v33, v34);
    (*(v32 + 8))(v199, v188);
    v36 = v19;
    goto LABEL_12;
  }

  v37 = *(v0 + 224);
  v38 = *(v0 + 208);
  v39 = *(v0 + 192);
  v40 = v28;
  v17 = _convertNSErrorToError(_:)();

  swift_willThrow();
  outlined consume of Data._Representation(v31, v30);
  outlined consume of Data._Representation(v31, v30);
  v29(v38, v39);
  v29(v37, v39);
  (*(v32 + 8))(v199, v188);
LABEL_7:
  v41 = *(v0 + 576);
  v42 = *(v0 + 568);
  v43 = *(v0 + 496);
  v45 = *(v0 + 416);
  v44 = *(v0 + 424);
  v46 = *(v0 + 392);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
  v42(v45, v44, v46);
  v47 = v17;
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v48, v49))
  {
    v194 = v49;
    v200 = v48;
    v50 = *(v0 + 576);
    v51 = *(v0 + 568);
    v183 = *(v0 + 528);
    v179 = *(v0 + 520);
    v53 = *(v0 + 464);
    v52 = *(v0 + 472);
    v54 = *(v0 + 416);
    v56 = *(v0 + 392);
    v55 = *(v0 + 400);
    v57 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    *(v0 + 128) = v189;
    *v57 = 136315394;
    v51(v52, v54, v56);
    (*(v55 + 56))(v52, 0, 1, v56);
    outlined init with copy of URL?(v52, v53, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v179(v53, 1, v56) == 1)
    {
      v58 = 0xE300000000000000;
      v59 = 7104878;
    }

    else
    {
      v80 = *(v0 + 576);
      v81 = *(v0 + 568);
      v82 = *(v0 + 504);
      v185 = *(v0 + 512);
      v83 = *(v0 + 456);
      v84 = *(v0 + 408);
      v85 = *(v0 + 392);
      (*(*(v0 + 400) + 32))(v83, *(v0 + 464), v85);
      v81(v84, v83, v85);
      v59 = String.init<A>(reflecting:)();
      v58 = v86;
      v82(v83, v85);
    }

    v88 = *(v0 + 504);
    v87 = *(v0 + 512);
    v89 = *(v0 + 416);
    v90 = *(v0 + 392);
    outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v88(v89, v90);
    v91 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v58, (v0 + 128));

    *(v57 + 4) = v91;
    *(v57 + 12) = 2080;
    *(v0 + 136) = v17;
    v92 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v93 = String.init<A>(reflecting:)();
    v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, (v0 + 128));

    *(v57 + 14) = v95;
    _os_log_impl(&dword_1AEE80000, v200, v194, "Failed to get file from type: %s, error: %s", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v189, -1, -1);
    MEMORY[0x1B2715BA0](v57, -1, -1);
  }

  else
  {
    v61 = *(v0 + 504);
    v60 = *(v0 + 512);
    v62 = *(v0 + 416);
    v63 = *(v0 + 392);

    v61(v62, v63);
  }

  v96 = *(v0 + 552);
  v97 = *(v0 + 512);
  v98 = *(v0 + 560) + 1;
  (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
  if (v98 == v96)
  {
LABEL_16:
    v99 = *(v0 + 544);
    v100 = *(v0 + 536);
    v102 = *(v0 + 472);
    v101 = *(v0 + 480);
    v103 = *(v0 + 456);
    v104 = *(v0 + 464);
    v105 = *(v0 + 448);
    v153 = *(v0 + 440);
    v155 = *(v0 + 432);
    v157 = *(v0 + 424);
    v159 = *(v0 + 416);
    v161 = *(v0 + 408);
    v163 = *(v0 + 384);
    v165 = *(v0 + 376);
    v167 = *(v0 + 360);
    v169 = *(v0 + 336);
    v171 = *(v0 + 304);
    v174 = *(v0 + 280);
    v177 = *(v0 + 272);
    v181 = *(v0 + 248);
    v186 = *(v0 + 224);
    v191 = *(v0 + 216);
    v196 = *(v0 + 208);
    v202 = *(v0 + 184);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v106 = 1;
    swift_willThrow();

    v78 = *(v0 + 8);
    v107 = *MEMORY[0x1E69E9840];
    goto LABEL_17;
  }

  while (1)
  {
    v116 = *(v0 + 560) + 1;
    *(v0 + 560) = v116;
    v117 = *(v0 + 544);
    if (v116 >= *(v117 + 16))
    {
      goto LABEL_33;
    }

    v182 = *(v0 + 424);
    v118 = *(v0 + 392);
    v119 = *(v0 + 400);
    v121 = *(v0 + 376);
    v120 = *(v0 + 384);
    v122 = *(v0 + 368);
    v172 = *(v0 + 360);
    v192 = *(v0 + 352);
    v123 = *(v0 + 336);
    v197 = *(v0 + 344);
    v178 = *(v0 + 328);
    v124 = *(v0 + 312);
    v187 = *(v0 + 320);
    v126 = *(v0 + 296);
    v125 = *(v0 + 304);
    v175 = *(v0 + 288);
    v127 = *(v0 + 168);
    v128 = *(v0 + 176);
    v129 = *(v119 + 16);
    v119 += 16;
    v130 = v117 + ((*(v119 + 64) + 32) & ~*(v119 + 64)) + *(v119 + 56) * v116;
    *(v0 + 568) = v129;
    *(v0 + 576) = v119 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v129();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v122 + 16))(v121, v120, v124);
    v131 = MEMORY[0x1E6969080];
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v126 + 8))(v125, v175);
    (*(v178 + 8))(v123, v187);
    v132 = _TransferRepresentationOutputs.storage.getter();
    (*(v192 + 8))(v172, v197);
    v133 = swift_task_alloc();
    *(v133 + 16) = v182;
    v134 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v133, v132);
    *(v0 + 584) = v134;

    v135 = *(v134 + 16);
    *(v0 + 592) = v135;
    if (v135)
    {
      break;
    }

LABEL_21:
    v109 = *(v0 + 584);
    v110 = *(v0 + 384);
    v111 = *(v0 + 368);
    v112 = *(v0 + 312);

    (*(v111 + 8))(v110, v112);
    v113 = *(v0 + 552);
    v114 = *(v0 + 512);
    v115 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v115 == v113)
    {
      goto LABEL_16;
    }
  }

  v136 = 0;
  *(v0 + 704) = *(*(v0 + 264) + 80);
  while (1)
  {
    *(v0 + 600) = v136;
    v137 = *(v0 + 584);
    if (v136 >= *(v137 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v138 = *(v0 + 280);
    v139 = *(v0 + 256);
    v140 = *(v0 + 264);
    v141 = *(v140 + 16);
    v140 += 16;
    v142 = v137 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v140 + 56) * v136;
    *(v0 + 608) = v141;
    *(v0 + 616) = v140 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v141(v138, v142, v139);
    if (ResolvedTransferRepresentation.representationType.getter() == v131)
    {
      break;
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    v136 = *(v0 + 600) + 1;
    if (v136 == *(v0 + 592))
    {
      goto LABEL_21;
    }
  }

  v143 = swift_task_alloc();
  *(v0 + 624) = v143;
  *v143 = v0;
  v143[1] = static URL.file<A>(from:);
  v144 = *(v0 + 280);
  v145 = *(v0 + 168);
  v146 = *(v0 + 176);
  v147 = *(v0 + 160);
  v148 = *MEMORY[0x1E69E9840];

  return ResolvedTransferRepresentation.data<A>(from:)(v147, v145, v146);
}

{
  v111 = v0;
  v110[1] = *MEMORY[0x1E69E9840];
  if (one-time initialization token for ledger != -1)
  {
LABEL_21:
    swift_once();
  }

  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 272);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  __swift_project_value_buffer(*(v0 + 488), static Log.ledger);
  v3(v4, v5, v6);
  v7 = v1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.fault.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 632);
  if (v10)
  {
    v96 = *(v0 + 504);
    v99 = *(v0 + 512);
    v12 = *(v0 + 456);
    v90 = *(v0 + 392);
    v13 = *(v0 + 272);
    v108 = *(v0 + 280);
    v14 = *(v0 + 264);
    v93 = *(v0 + 256);
    v102 = *(v0 + 632);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v110[0] = v105;
    *v15 = 136315394;
    ResolvedTransferRepresentation.contentType.getter();
    v17 = UTType.identifier.getter();
    v19 = v18;
    v96(v12, v90);
    v20 = *(v14 + 8);
    v20(v13, v93);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v110);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    v22 = v102;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Error loading data for type identifier\n%s: %@", v15, 0x16u);
    outlined destroy of NSObject?(v16, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1B2715BA0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v105);
    MEMORY[0x1B2715BA0](v105, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);

    v20(v108, v93);
  }

  else
  {
    v25 = *(v0 + 272);
    v24 = *(v0 + 280);
    v26 = *(v0 + 256);
    v27 = *(v0 + 264);

    v28 = *(v27 + 8);
    v28(v25, v26);
    v28(v24, v26);
  }

  while (1)
  {
    v29 = *(v0 + 600) + 1;
    if (v29 == *(v0 + 592))
    {
      break;
    }

LABEL_10:
    *(v0 + 600) = v29;
    v56 = *(v0 + 584);
    if (v29 >= *(v56 + 16))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v57 = *(v0 + 280);
    v58 = *(v0 + 256);
    v59 = *(v0 + 264);
    v60 = *(v59 + 16);
    v59 += 16;
    v61 = v56 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v59 + 56) * v29;
    *(v0 + 608) = v60;
    *(v0 + 616) = v59 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v60(v57, v61, v58);
    if (ResolvedTransferRepresentation.representationType.getter() == MEMORY[0x1E6969080])
    {
      v73 = swift_task_alloc();
      *(v0 + 624) = v73;
      *v73 = v0;
      v73[1] = static URL.file<A>(from:);
      v74 = *(v0 + 280);
      v75 = *(v0 + 168);
      v76 = *(v0 + 176);
      v77 = *(v0 + 160);
      v78 = *MEMORY[0x1E69E9840];

      return ResolvedTransferRepresentation.data<A>(from:)(v77, v75, v76);
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
  }

  while (1)
  {
    v30 = *(v0 + 584);
    v31 = *(v0 + 384);
    v32 = *(v0 + 368);
    v33 = *(v0 + 312);

    (*(v32 + 8))(v31, v33);
    v34 = *(v0 + 552);
    v35 = *(v0 + 512);
    v36 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v36 == v34)
    {
      break;
    }

    v37 = *(v0 + 560) + 1;
    *(v0 + 560) = v37;
    v38 = *(v0 + 544);
    if (v37 >= *(v38 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v97 = *(v0 + 424);
    v39 = *(v0 + 392);
    v40 = *(v0 + 400);
    v42 = *(v0 + 376);
    v41 = *(v0 + 384);
    v43 = *(v0 + 368);
    v88 = *(v0 + 360);
    v103 = *(v0 + 352);
    v44 = *(v0 + 336);
    v106 = *(v0 + 344);
    v94 = *(v0 + 328);
    v45 = *(v0 + 312);
    v100 = *(v0 + 320);
    v47 = *(v0 + 296);
    v46 = *(v0 + 304);
    v91 = *(v0 + 288);
    v48 = *(v0 + 168);
    v49 = *(v0 + 176);
    v50 = *(v40 + 16);
    v40 += 16;
    v51 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64)) + *(v40 + 56) * v37;
    *(v0 + 568) = v50;
    *(v0 + 576) = v40 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v50();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v43 + 16))(v42, v41, v45);
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v47 + 8))(v46, v91);
    (*(v94 + 8))(v44, v100);
    v52 = _TransferRepresentationOutputs.storage.getter();
    v103[1](v88, v106);
    v53 = swift_task_alloc();
    *(v53 + 16) = v97;
    v54 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v53, v52);
    *(v0 + 584) = v54;

    v55 = *(v54 + 16);
    *(v0 + 592) = v55;
    if (v55)
    {
      v29 = 0;
      *(v0 + 704) = *(*(v0 + 264) + 80);
      goto LABEL_10;
    }
  }

  v62 = *(v0 + 544);
  v63 = *(v0 + 536);
  v65 = *(v0 + 472);
  v64 = *(v0 + 480);
  v66 = *(v0 + 456);
  v67 = *(v0 + 464);
  v68 = *(v0 + 448);
  v79 = *(v0 + 440);
  v80 = *(v0 + 432);
  v81 = *(v0 + 424);
  v82 = *(v0 + 416);
  v83 = *(v0 + 408);
  v84 = *(v0 + 384);
  v85 = *(v0 + 376);
  v86 = *(v0 + 360);
  v87 = *(v0 + 336);
  v89 = *(v0 + 304);
  v92 = *(v0 + 280);
  v95 = *(v0 + 272);
  v98 = *(v0 + 248);
  v101 = *(v0 + 224);
  v104 = *(v0 + 216);
  v107 = *(v0 + 208);
  v109 = *(v0 + 184);
  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v69 = 1;
  swift_willThrow();

  v70 = *(v0 + 8);
  v71 = *MEMORY[0x1E69E9840];

  return v70();
}

{
  v134 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 648);
  v4 = *(v0 + 640);
  v5 = *(v0 + 280);
  v6 = *(v0 + 256);
  v7 = *(v0 + 264);
  v8 = *(v0 + 224);
  v9 = *(v0 + 192);
  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v4, v3);
  v2(v8, v9);
  (*(v7 + 8))(v5, v6);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v10 = *(v0 + 696);
  v11 = *(v0 + 576);
  v12 = *(v0 + 568);
  v13 = *(v0 + 496);
  v15 = *(v0 + 416);
  v14 = *(v0 + 424);
  v16 = *(v0 + 392);
  (*(*(v0 + 368) + 8))(*(v0 + 384), *(v0 + 312));
  v12(v15, v14, v16);
  v17 = v10;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v129 = v19;
    v132 = v18;
    v20 = *(v0 + 576);
    v21 = *(v0 + 568);
    v119 = *(v0 + 520);
    v122 = *(v0 + 528);
    v23 = *(v0 + 464);
    v22 = *(v0 + 472);
    v24 = *(v0 + 416);
    v26 = *(v0 + 392);
    v25 = *(v0 + 400);
    v27 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    *(v0 + 128) = v126;
    *v27 = 136315394;
    v21(v22, v24, v26);
    (*(v25 + 56))(v22, 0, 1, v26);
    outlined init with copy of URL?(v22, v23, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v119(v23, 1, v26) == 1)
    {
      v28 = 0xE300000000000000;
      v29 = 7104878;
    }

    else
    {
      v34 = *(v0 + 576);
      v35 = *(v0 + 568);
      v36 = *(v0 + 504);
      v123 = *(v0 + 512);
      v37 = *(v0 + 456);
      v38 = *(v0 + 408);
      v39 = *(v0 + 392);
      (*(*(v0 + 400) + 32))(v37, *(v0 + 464), v39);
      v35(v38, v37, v39);
      v29 = String.init<A>(reflecting:)();
      v28 = v40;
      v36(v37, v39);
    }

    v42 = *(v0 + 504);
    v41 = *(v0 + 512);
    v43 = *(v0 + 416);
    v44 = *(v0 + 392);
    outlined destroy of NSObject?(*(v0 + 472), &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    v42(v43, v44);
    v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v28, (v0 + 128));

    *(v27 + 4) = v45;
    *(v27 + 12) = 2080;
    *(v0 + 136) = v10;
    v46 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v47 = String.init<A>(reflecting:)();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, (v0 + 128));

    *(v27 + 14) = v49;
    _os_log_impl(&dword_1AEE80000, v132, v129, "Failed to get file from type: %s, error: %s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v126, -1, -1);
    MEMORY[0x1B2715BA0](v27, -1, -1);
  }

  else
  {
    v31 = *(v0 + 504);
    v30 = *(v0 + 512);
    v32 = *(v0 + 416);
    v33 = *(v0 + 392);

    v31(v32, v33);
  }

  v50 = *(v0 + 552);
  v51 = *(v0 + 512);
  v52 = *(v0 + 560) + 1;
  (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
  if (v52 == v50)
  {
LABEL_8:
    v53 = *(v0 + 544);
    v54 = *(v0 + 536);
    v56 = *(v0 + 472);
    v55 = *(v0 + 480);
    v57 = *(v0 + 456);
    v58 = *(v0 + 464);
    v59 = *(v0 + 448);
    v104 = *(v0 + 440);
    v105 = *(v0 + 432);
    v106 = *(v0 + 424);
    v107 = *(v0 + 416);
    v108 = *(v0 + 408);
    v109 = *(v0 + 384);
    v110 = *(v0 + 376);
    v111 = *(v0 + 360);
    v112 = *(v0 + 336);
    v113 = *(v0 + 304);
    v115 = *(v0 + 280);
    v117 = *(v0 + 272);
    v120 = *(v0 + 248);
    v124 = *(v0 + 224);
    v127 = *(v0 + 216);
    v130 = *(v0 + 208);
    v133 = *(v0 + 184);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v60 = 1;
    swift_willThrow();

    v61 = *(v0 + 8);
    v62 = *MEMORY[0x1E69E9840];

    return v61();
  }

  while (1)
  {
    v71 = *(v0 + 560) + 1;
    *(v0 + 560) = v71;
    v72 = *(v0 + 544);
    if (v71 >= *(v72 + 16))
    {
      goto LABEL_24;
    }

    v121 = *(v0 + 424);
    v73 = *(v0 + 392);
    v74 = *(v0 + 400);
    v76 = *(v0 + 376);
    v75 = *(v0 + 384);
    v77 = *(v0 + 368);
    v114 = *(v0 + 360);
    v128 = *(v0 + 352);
    v78 = *(v0 + 336);
    v131 = *(v0 + 344);
    v118 = *(v0 + 328);
    v79 = *(v0 + 312);
    v125 = *(v0 + 320);
    v81 = *(v0 + 296);
    v80 = *(v0 + 304);
    v116 = *(v0 + 288);
    v82 = *(v0 + 168);
    v83 = *(v0 + 176);
    v84 = *(v74 + 16);
    v74 += 16;
    v85 = v72 + ((*(v74 + 64) + 32) & ~*(v74 + 64)) + *(v74 + 56) * v71;
    *(v0 + 568) = v84;
    *(v0 + 576) = v74 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v84();
    dispatch thunk of static Transferable.transferRepresentation.getter();
    swift_getDynamicType();
    (*(v77 + 16))(v76, v75, v79);
    v86 = MEMORY[0x1E6969080];
    _TransferRepresentationValue.init(_:)();
    _TransferRepresentationInputs.init()();
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
    (*(v81 + 8))(v80, v116);
    (*(v118 + 8))(v78, v125);
    v87 = _TransferRepresentationOutputs.storage.getter();
    (*(v128 + 8))(v114, v131);
    v88 = swift_task_alloc();
    *(v88 + 16) = v121;
    v89 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #2 in static URL.file<A>(from:), v88, v87);
    *(v0 + 584) = v89;

    v90 = *(v89 + 16);
    *(v0 + 592) = v90;
    if (v90)
    {
      break;
    }

LABEL_12:
    v64 = *(v0 + 584);
    v65 = *(v0 + 384);
    v66 = *(v0 + 368);
    v67 = *(v0 + 312);

    (*(v66 + 8))(v65, v67);
    v68 = *(v0 + 552);
    v69 = *(v0 + 512);
    v70 = *(v0 + 560) + 1;
    (*(v0 + 504))(*(v0 + 424), *(v0 + 392));
    if (v70 == v68)
    {
      goto LABEL_8;
    }
  }

  v91 = 0;
  *(v0 + 704) = *(*(v0 + 264) + 80);
  while (1)
  {
    *(v0 + 600) = v91;
    v92 = *(v0 + 584);
    if (v91 >= *(v92 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
    }

    v93 = *(v0 + 280);
    v94 = *(v0 + 256);
    v95 = *(v0 + 264);
    v96 = *(v95 + 16);
    v95 += 16;
    v97 = v92 + ((*(v0 + 704) + 32) & ~*(v0 + 704)) + *(v95 + 56) * v91;
    *(v0 + 608) = v96;
    *(v0 + 616) = v95 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v96(v93, v97, v94);
    if (ResolvedTransferRepresentation.representationType.getter() == v86)
    {
      break;
    }

    (*(*(v0 + 264) + 8))(*(v0 + 280), *(v0 + 256));
    v91 = *(v0 + 600) + 1;
    if (v91 == *(v0 + 592))
    {
      goto LABEL_12;
    }
  }

  v98 = swift_task_alloc();
  *(v0 + 624) = v98;
  *v98 = v0;
  v98[1] = static URL.file<A>(from:);
  v99 = *(v0 + 280);
  v100 = *(v0 + 168);
  v101 = *(v0 + 176);
  v102 = *(v0 + 160);
  v103 = *MEMORY[0x1E69E9840];

  return ResolvedTransferRepresentation.data<A>(from:)(v102, v100, v101);
}

uint64_t static URL.file<A>(from:)(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  v7 = *(*v3 + 624);
  v12 = *v3;
  *(*v3 + 632) = v2;

  if (v2)
  {
    v8 = static URL.file<A>(from:);
  }

  else
  {
    *(v6 + 640) = a1;
    *(v6 + 648) = a2;
    v8 = static URL.file<A>(from:);
  }

  v9 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t GroupSessionJournal.add(id:attachmentData:developerMetadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add(id:attachmentData:developerMetadata:), 0, 0);
}

uint64_t GroupSessionJournal.add(id:attachmentData:developerMetadata:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v9 = v5 + *(v8 + 24);
  v10 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
  v11 = type metadata accessor for URL();
  (*(*(v11 - 8) + 16))(v9, v4, v11);
  *v10 = v3;
  v10[1] = v1;
  type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  swift_storeEnumTagMultiPayload();
  v12 = *(v8 + 20);
  swift_weakInit();
  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 40);
  outlined copy of Data?(v3, v1);
  v24 = (v16 + *v16);
  v17 = v16[1];
  v18 = swift_task_alloc();
  v0[8] = v18;
  *v18 = v0;
  v18[1] = GroupSessionJournal.add(id:attachmentData:developerMetadata:);
  v19 = v0[5];
  v20 = v0[6];
  v22 = v0[3];
  v21 = v0[4];

  return v24(v22, v21, v19, v20, ObjectType, v14);
}

{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add(id:attachmentData:developerMetadata:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  outlined destroy of GroupSessionJournal.Attachment(v0[2], type metadata accessor for GroupSessionJournal.Attachment);
  v1 = v0[1];
  v2 = v0[9];

  return v1();
}

uint64_t GroupSessionJournal.add<A, B>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = a8;
  v9[9] = v8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v12 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v9[10] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v9[11] = swift_task_alloc();
  v14 = type metadata accessor for URL();
  v9[12] = v14;
  v15 = *(v14 - 8);
  v9[13] = v15;
  v16 = *(v15 + 64) + 15;
  v9[14] = swift_task_alloc();
  v17 = type metadata accessor for Optional();
  v9[15] = v17;
  v18 = *(v17 - 8);
  v9[16] = v18;
  v19 = *(v18 + 64) + 15;
  v9[17] = swift_task_alloc();
  v20 = type metadata accessor for Optional();
  v9[18] = v20;
  v21 = *(v20 - 8);
  v9[19] = v21;
  v22 = *(v21 + 64) + 15;
  v9[20] = swift_task_alloc();
  v23 = *(a5 - 8);
  v9[21] = v23;
  v24 = *(v23 + 64) + 15;
  v9[22] = swift_task_alloc();
  v25 = *(a4 - 8);
  v9[23] = v25;
  v26 = *(v25 + 64) + 15;
  v9[24] = swift_task_alloc();
  v27 = type metadata accessor for UUID();
  v9[25] = v27;
  v28 = *(v27 - 8);
  v9[26] = v28;
  v29 = *(v28 + 64) + 15;
  v9[27] = swift_task_alloc();
  v9[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.add<A, B>(_:metadata:), 0, 0);
}

uint64_t GroupSessionJournal.add<A, B>(_:metadata:)()
{
  v65 = v0;
  v1 = v0[28];
  UUID.init()();
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v60 = v0[27];
  v62 = v0[28];
  v2 = v0[26];
  v58 = v0[25];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[21];
  v6 = v0[22];
  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Log.ledger);
  v54 = *(v3 + 16);
  v54(v4, v10, v8);
  v56 = *(v5 + 16);
  v56(v6, v9, v7);
  v12 = *(v2 + 16);
  v0[29] = v12;
  v0[30] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v60, v62, v58);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = v0[26];
  v17 = v0[27];
  v18 = v0[24];
  v19 = v0[25];
  v20 = v0[23];
  v63 = v0[22];
  v21 = v0[21];
  if (v15)
  {
    v61 = v13;
    v57 = v0[25];
    v23 = v0[19];
    v22 = v0[20];
    v49 = v0[17];
    v50 = v0[16];
    v51 = v0[15];
    v47 = v0[18];
    v48 = v0[6];
    v53 = v0[27];
    v24 = v0[5];
    v52 = v0[26];
    v25 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v25 = 136315650;
    v54(v22, v18, v24);
    (*(v20 + 56))(v22, 0, 1, v24);
    v26 = >> prefix<A>(_:)(v22, v24);
    v55 = v14;
    v28 = v27;
    (*(v23 + 8))(v22, v47);
    (*(v20 + 8))(v18, v24);
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v28, &v64);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    v56(v49, v63, v48);
    (*(v21 + 56))(v49, 0, 1, v48);
    v30 = >> prefix<A>(_:)(v49, v48);
    v32 = v31;
    (*(v50 + 8))(v49, v51);
    (*(v21 + 8))(v63, v48);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v64);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2080;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v37 = *(v52 + 8);
    v37(v53, v57);
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v64);

    *(v25 + 24) = v38;
    _os_log_impl(&dword_1AEE80000, v61, v55, "Received add request for item: %s, metadata: %s, using ID: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v59, -1, -1);
    MEMORY[0x1B2715BA0](v25, -1, -1);
  }

  else
  {
    v39 = v0[5];
    v40 = v0[6];

    v37 = *(v16 + 8);
    v37(v17, v19);
    (*(v21 + 8))(v63, v40);
    (*(v20 + 8))(v18, v39);
  }

  v0[31] = v37;
  v41 = swift_task_alloc();
  v0[32] = v41;
  *v41 = v0;
  v41[1] = GroupSessionJournal.add<A, B>(_:metadata:);
  v42 = v0[14];
  v43 = v0[7];
  v44 = v0[5];
  v45 = v0[3];

  return static URL.file<A>(from:)(v42, v45, v44, v43);
}

{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  else
  {
    v3 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v0 + 272) = JSONEncoder.init()();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 280) = v8;
  *(v0 + 288) = v9;
  if (v1)
  {
    v11 = *(v0 + 104);
    v10 = *(v0 + 112);
    v12 = *(v0 + 96);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 176);
    v16 = *(v0 + 160);
    v17 = *(v0 + 136);
    v18 = *(v0 + 112);
    v19 = *(v0 + 208) + 8;
    v20 = *(v0 + 88);
    (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v24 = *(v0 + 232);
    v23 = *(v0 + 240);
    v25 = *(v0 + 224);
    v26 = *(v0 + 200);
    v27 = *(v0 + 104);
    v28 = *(v0 + 88);
    v43 = *(v0 + 96);
    v44 = *(v0 + 112);
    v29 = *(v0 + 80);
    v46 = *(v0 + 72);
    v30 = v8;
    v31 = v9;
    outlined copy of Data._Representation(v8, v9);
    v24(v28, v25, v26);
    v32 = v28 + *(v29 + 24);
    v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
    (*(v27 + 16))(v32, v44, v43);
    *v33 = v30;
    v33[1] = v31;
    type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
    swift_storeEnumTagMultiPayload();
    v34 = *(v29 + 20);
    swift_weakInit();
    v35 = *(v46 + 16);
    v36 = *(v46 + 24);
    ObjectType = swift_getObjectType();
    v38 = *(v36 + 40);
    outlined copy of Data._Representation(v30, v31);
    v45 = (v38 + *v38);
    v39 = v38[1];
    v40 = swift_task_alloc();
    *(v0 + 296) = v40;
    *v40 = v0;
    v40[1] = GroupSessionJournal.add<A, B>(_:metadata:);
    v41 = *(v0 + 224);
    v42 = *(v0 + 112);

    return v45(v41, v42, v30, v31, ObjectType, v36);
  }
}

{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  else
  {
    v3 = GroupSessionJournal.add<A, B>(_:metadata:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[35];
  v1 = v0[36];
  v3 = v0[34];
  v4 = v0[28];
  v14 = v0[31];
  v15 = v0[27];
  v12 = v0[26];
  v13 = v0[25];
  v16 = v0[24];
  v17 = v0[22];
  v18 = v0[20];
  v19 = v0[17];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[2];
  outlined consume of Data._Representation(v2, v1);
  outlined init with take of GroupSessionJournal.Attachment(v7, v9, type metadata accessor for GroupSessionJournal.Attachment);

  outlined consume of Data._Representation(v2, v1);
  (*(v6 + 8))(v5, v8);
  v14(v4, v13);

  v10 = v0[1];

  return v10();
}

{
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);
  v3 = *(v0 + 272);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v7 = *(v0 + 88);
  v6 = *(v0 + 96);
  outlined consume of Data._Representation(v1, v2);
  outlined destroy of GroupSessionJournal.Attachment(v7, type metadata accessor for GroupSessionJournal.Attachment);

  outlined consume of Data._Representation(v1, v2);
  (*(v5 + 8))(v4, v6);
  v8 = *(v0 + 304);
  v9 = *(v0 + 216);
  v10 = *(v0 + 192);
  v11 = *(v0 + 176);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v14 = *(v0 + 112);
  v15 = *(v0 + 208) + 8;
  v16 = *(v0 + 88);
  (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

  v17 = *(v0 + 8);

  return v17();
}

{
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);
  v5 = *(v0 + 160);
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);
  v9 = *(v0 + 208) + 8;
  (*(v0 + 248))(*(v0 + 224), *(v0 + 200));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t GroupSessionJournal.Attachment.init(id:ledger:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v8 = *(v7 + 20);
  swift_weakInit();

  return outlined init with take of GroupSessionJournal.Attachment(a2, a3 + *(v7 + 24), type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
}

uint64_t GroupSessionJournal.remove(attachment:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.remove(attachment:), 0, 0);
}

uint64_t GroupSessionJournal.remove(attachment:)()
{
  v1 = v0[3];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 64);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = GroupSessionJournal.remove(attachment:);
  v8 = v0[2];

  return v10(v8, ObjectType, v2);
}

{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *GroupSessionJournal.__allocating_init<A>(session:)(uint64_t a1)
{
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = type metadata accessor for GroupSession();
  v6 = *(v1 + 48);
  v7 = *(v1 + 52);
  v8 = swift_allocObject();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v8, v5, &protocol witness table for GroupSession<A>);
}

char *GroupSessionJournal.__allocating_init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionJournal.__allocating_init(transportSession:)(a1, v2, ObjectType, a2);
}

char *GroupSessionJournal.init(transportSession:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized GroupSessionJournal.init(transportSession:)(a1, v2, ObjectType, a2);
}

uint64_t closure #1 in GroupSessionJournal.init(transportSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for UUID();
  v9 = *(v32 - 8);
  v10 = *(v9 + 64);
  result = MEMORY[0x1EEE9AC00](v32);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*a1 + 16);
  if (v14)
  {
    v15 = *a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    swift_beginAccess();
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v30 = *(v16 + 56);
    v31 = v17;
    v29 = (v16 - 8);
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v20 = v31;
      v19 = v32;
      v31(v13, v15, v32);
      v21 = v16;
      v20(v8, v13, v19);
      v22 = a2;
      swift_weakLoadStrong();
      (*v29)(v13, v19);
      v23 = v34;
      v24 = *(v34 + 24);
      type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
      swift_storeEnumTagMultiPayload();
      v25 = *(v23 + 20);
      swift_weakInit();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
      }

      v27 = v18[2];
      v26 = v18[3];
      if (v27 >= v26 >> 1)
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1, v18);
      }

      v18[2] = v27 + 1;
      result = outlined init with take of GroupSessionJournal.Attachment(v8, v18 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, type metadata accessor for GroupSessionJournal.Attachment);
      v15 += v30;
      --v14;
      a2 = v22;
      v16 = v21;
    }

    while (v14);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  *v28 = v18;
  return result;
}

uint64_t closure #2 in GroupSessionJournal.init(transportSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a4;
  v84 = a2;
  v85 = a3;
  v76 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v5 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v7 = (&v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v78 = *(v75 - 8);
  v8 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v74 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v81 = &v70 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v82 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Participant();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for UUID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v90 = &v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v86 = &v70 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v79 = &v70 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v80 = &v70 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v70 - v35;
  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = __swift_project_value_buffer(v37, static Log.ledger);
  v39 = *(v25 + 16);
  v88 = a1;
  v39(v36, a1, v24);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v85, v23, type metadata accessor for Participant);
  v85 = v38;
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();
  v42 = os_log_type_enabled(v40, v41);
  v83 = v25 + 16;
  v89 = v39;
  if (v42)
  {
    v72 = v41;
    v73 = v7;
    v43 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v91[0] = v71;
    *v43 = 136315394;
    v39(v19, v36, v24);
    (*(v25 + 56))(v19, 0, 1, v24);
    v44 = v82;
    outlined init with copy of URL?(v19, v82, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if ((*(v25 + 48))(v44, 1, v24) == 1)
    {
      v45 = 7104878;
      v46 = 0xE300000000000000;
    }

    else
    {
      v47 = *(v25 + 32);
      v70 = v40;
      v48 = v80;
      v47(v80, v44, v24);
      v39(v79, v48, v24);
      v45 = String.init<A>(reflecting:)();
      v46 = v49;
      v50 = v48;
      v40 = v70;
      (*(v25 + 8))(v50, v24);
    }

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v25 + 8))(v36, v24);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v91);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    v52 = Participant.description.getter();
    v54 = v53;
    outlined destroy of GroupSessionJournal.Attachment(v23, type metadata accessor for Participant);
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v54, v91);

    *(v43 + 14) = v55;
    _os_log_impl(&dword_1AEE80000, v40, v72, "Received new attachment: %s from: %s", v43, 0x16u);
    v56 = v71;
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v56, -1, -1);
    MEMORY[0x1B2715BA0](v43, -1, -1);

    v7 = v73;
  }

  else
  {

    outlined destroy of GroupSessionJournal.Attachment(v23, type metadata accessor for Participant);
    (*(v25 + 8))(v36, v24);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  v58 = v86;
  v87 = result;
  if (result)
  {
    v89(v86, v88, v24);
    *v7 = Data.init(contentsOf:options:)();
    v7[1] = v59;
    swift_storeEnumTagMultiPayload();
    v60 = v77;
    (*(v25 + 32))(v77, v58, v24);
    v61 = v75;
    v62 = *(v75 + 20);
    swift_weakInit();
    outlined init with take of GroupSessionJournal.Attachment(v7, v60 + *(v61 + 24), type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
    swift_getKeyPath();
    swift_getKeyPath();
    v63 = static Published.subscript.modify();
    v65 = v64;
    v66 = *v64;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v65 = v66;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66[2] + 1, 1, v66);
      *v65 = v66;
    }

    v69 = v66[2];
    v68 = v66[3];
    if (v69 >= v68 >> 1)
    {
      v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v68 > 1, v69 + 1, 1, v66);
      *v65 = v66;
    }

    v66[2] = v69 + 1;
    outlined init with take of GroupSessionJournal.Attachment(v60, v66 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v69, type metadata accessor for GroupSessionJournal.Attachment);
    v63(v91, 0);
  }

  return result;
}

uint64_t GroupSessionJournal.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables);

  return v0;
}

uint64_t GroupSessionJournal.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 4);

  v3 = OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal___attachments;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMd, &_s7Combine9PublishedVySay15GroupActivities0C14SessionJournalC10AttachmentVGGMR);
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *&v0[OBJC_IVAR____TtC15GroupActivities19GroupSessionJournal_cancellables];

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t GroupSessionJournal.Attachment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupSessionJournal.Attachment.id.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t key path getter for GroupSessionJournal.Attachment.ledger : GroupSessionJournal.Attachment@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(a1, v8, type metadata accessor for GroupSessionJournal.Attachment);
  v9 = *(v5 + 28);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of GroupSessionJournal.Attachment(v8, type metadata accessor for GroupSessionJournal.Attachment);
  *a2 = Strong;
  return result;
}

uint64_t GroupSessionJournal.Attachment.ledger.getter()
{
  v1 = v0 + *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);

  return swift_weakLoadStrong();
}

uint64_t GroupSessionJournal.Attachment.ledger.setter()
{
  v0 = *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);
  swift_weakAssign();
}

uint64_t (*GroupSessionJournal.Attachment.ledger.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);
  *a1 = swift_weakLoadStrong();
  return GroupSessionJournal.Attachment.ledger.modify;
}

uint64_t GroupSessionJournal.Attachment.ledger.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + *(a1 + 4);
  swift_weakAssign();
}

uint64_t GroupSessionJournal.Attachment.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupSessionJournal.Attachment(0) + 24);

  return outlined assign with take of GroupSessionJournal.Attachment.AttachmentSource(a1, v3);
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[119] = v4;
  v5[118] = a4;
  v5[117] = a3;
  v5[116] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR) - 8) + 64) + 15;
  v5[120] = swift_task_alloc();
  v5[121] = swift_task_alloc();
  v7 = type metadata accessor for GroupSessionJournal.Attachment(0);
  v5[122] = v7;
  v8 = *(v7 - 8);
  v5[123] = v8;
  v9 = *(v8 + 64) + 15;
  v5[124] = swift_task_alloc();
  v5[125] = swift_task_alloc();
  v5[126] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR) - 8) + 64) + 15;
  v5[127] = swift_task_alloc();
  v5[128] = swift_task_alloc();
  v11 = type metadata accessor for Optional();
  v5[129] = v11;
  v12 = *(v11 - 8);
  v5[130] = v12;
  v13 = *(v12 + 64) + 15;
  v5[131] = swift_task_alloc();
  v5[132] = swift_task_alloc();
  v14 = type metadata accessor for UTType();
  v5[133] = v14;
  v15 = *(v14 - 8);
  v5[134] = v15;
  v16 = *(v15 + 64) + 15;
  v5[135] = swift_task_alloc();
  v5[136] = swift_task_alloc();
  v5[137] = swift_task_alloc();
  v17 = type metadata accessor for ResolvedTransferRepresentation();
  v5[138] = v17;
  v18 = *(v17 - 8);
  v5[139] = v18;
  v19 = *(v18 + 64) + 15;
  v5[140] = swift_task_alloc();
  v5[141] = swift_task_alloc();
  v5[142] = swift_task_alloc();
  v5[143] = swift_task_alloc();
  v5[144] = swift_task_alloc();
  v5[145] = swift_task_alloc();
  v5[146] = swift_task_alloc();
  v20 = type metadata accessor for _TransferRepresentationInputs();
  v5[147] = v20;
  v21 = *(v20 - 8);
  v5[148] = v21;
  v22 = *(v21 + 64) + 15;
  v5[149] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[150] = AssociatedTypeWitness;
  v24 = type metadata accessor for _TransferRepresentationValue();
  v5[151] = v24;
  v25 = *(v24 - 8);
  v5[152] = v25;
  v26 = *(v25 + 64) + 15;
  v5[153] = swift_task_alloc();
  v27 = type metadata accessor for _TransferRepresentationOutputs();
  v5[154] = v27;
  v28 = *(v27 - 8);
  v5[155] = v28;
  v29 = *(v28 + 64) + 15;
  v5[156] = swift_task_alloc();
  v30 = *(AssociatedTypeWitness - 8);
  v5[157] = v30;
  v31 = *(v30 + 64) + 15;
  v5[158] = swift_task_alloc();
  v5[159] = swift_task_alloc();
  v32 = type metadata accessor for URL();
  v5[160] = v32;
  v33 = *(v32 - 8);
  v5[161] = v33;
  v34 = *(v33 + 64) + 15;
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v35 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v5[164] = v35;
  v36 = *(*(v35 - 8) + 64) + 15;
  v5[165] = swift_task_alloc();
  v37 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR) - 8) + 64) + 15;
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.load<A>(_:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)()
{
  v197 = v0;
  v1 = v0[164];
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v0[119] + *(v0[122] + 24), v0[165], type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = v0[165];
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR);
    outlined consume of Data?(*(v7 + *(v8 + 48)), *(v7 + *(v8 + 48) + 8));
    v9 = v0[167];
    v10 = v0[166];
    v11 = v0[161];
    v12 = v0[160];
    v13 = *(v11 + 32);
    v13(v9, v0[165], v12);
    (*(v11 + 56))(v9, 0, 1, v12);
    outlined init with copy of URL?(v9, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if ((*(v11 + 48))(v10, 1, v12) == 1)
    {
      outlined destroy of NSObject?(v0[166], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if (one-time initialization token for ledger == -1)
      {
LABEL_6:
        v14 = v0[126];
        v15 = v0[119];
        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Log.ledger);
        outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v15, v14, type metadata accessor for GroupSessionJournal.Attachment);
        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();
        v19 = os_log_type_enabled(v17, v18);
        v20 = v0[126];
        if (v19)
        {
          v21 = v0[123];
          v22 = v0[122];
          v23 = v0[121];
          v24 = v0[120];
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v196[0] = v26;
          *v25 = 136315138;
          outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v20, v23, type metadata accessor for GroupSessionJournal.Attachment);
          (*(v21 + 56))(v23, 0, 1, v22);
          outlined init with copy of URL?(v23, v24, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
          if ((*(v21 + 48))(v24, 1, v22) == 1)
          {
            v27 = 7104878;
            v28 = 0xE300000000000000;
          }

          else
          {
            v142 = v0[125];
            v143 = v0[124];
            v144 = v0[122];
            outlined init with take of GroupSessionJournal.Attachment(v0[120], v142, type metadata accessor for GroupSessionJournal.Attachment);
            outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v142, v143, type metadata accessor for GroupSessionJournal.Attachment);
            v27 = String.init<A>(reflecting:)();
            v28 = v145;
            outlined destroy of GroupSessionJournal.Attachment(v142, type metadata accessor for GroupSessionJournal.Attachment);
          }

          v146 = v0[126];
          outlined destroy of NSObject?(v0[121], &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
          outlined destroy of GroupSessionJournal.Attachment(v146, type metadata accessor for GroupSessionJournal.Attachment);
          v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v196);

          *(v25 + 4) = v147;
          _os_log_impl(&dword_1AEE80000, v17, v18, "Failed to find URL for attachment %s", v25, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v26);
          MEMORY[0x1B2715BA0](v26, -1, -1);
          MEMORY[0x1B2715BA0](v25, -1, -1);
        }

        else
        {

          outlined destroy of GroupSessionJournal.Attachment(v20, type metadata accessor for GroupSessionJournal.Attachment);
        }

        v148 = v0[167];
        lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
        swift_allocError();
        *v149 = 2;
        swift_willThrow();
        outlined destroy of NSObject?(v148, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        goto LABEL_50;
      }
    }

    else
    {
      v40 = v0[159];
      v41 = v0[158];
      v42 = v0[157];
      v179 = v0[156];
      v190 = v0[155];
      v193 = v0[154];
      v177 = v0[153];
      v183 = v0[152];
      v185 = v0[151];
      v43 = v0[150];
      v44 = v0[149];
      v45 = v0[148];
      v181 = v0[147];
      v46 = v0[118];
      v47 = v0[117];
      v48 = (v0[161] + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v13(v0[162], v0[166], v0[160]);
      dispatch thunk of static Transferable.transferRepresentation.getter();
      swift_getDynamicType();
      (*(v42 + 16))(v41, v40, v43);
      _TransferRepresentationValue.init(_:)();
      _TransferRepresentationInputs.init()();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
      (*(v45 + 8))(v44, v181);
      (*(v183 + 8))(v177, v185);
      v49 = _TransferRepresentationOutputs.storage.getter();
      (*(v190 + 1))(v179, v193);
      v50 = v49;
      v194 = v0;
      v186 = *(v49 + 16);
      if (v186)
      {
        v51 = 0;
        v52 = v0[139];
        v53 = MEMORY[0x1E69E7CC0];
        while (v51 < v50[2])
        {
          v54 = v194[146];
          v55 = v194[145];
          v56 = v194[138];
          v57 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v0 = v50;
          v58 = *(v52 + 72);
          (*(v52 + 16))(v54, v50 + v57 + v58 * v51, v56);
          v59 = *(v52 + 32);
          v59(v55, v54, v56);
          v196[0] = v53;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v53 + 16) + 1, 1);
            v53 = v196[0];
          }

          v61 = *(v53 + 16);
          v60 = *(v53 + 24);
          if (v61 >= v60 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v60 > 1, v61 + 1, 1);
            v53 = v196[0];
          }

          ++v51;
          v62 = v194[145];
          v63 = v194[138];
          *(v53 + 16) = v61 + 1;
          v59(v53 + v57 + v61 * v58, v62, v63);
          v50 = v0;
          if (v186 == v51)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
LABEL_25:
        v0 = v194;
        v194[172] = v53;

        if (one-time initialization token for ledger != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        v194[173] = __swift_project_value_buffer(v65, static Log.ledger);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v196[0] = v69;
          *v68 = 136315138;
          v194[115] = v53;

          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
          v70 = String.init<A>(reflecting:)();
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v196);

          *(v68 + 4) = v72;
          _os_log_impl(&dword_1AEE80000, v66, v67, "Supported representations: %s", v68, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v69);
          MEMORY[0x1B2715BA0](v69, -1, -1);
          MEMORY[0x1B2715BA0](v68, -1, -1);
        }

        v73 = *(v53 + 16);
        v194[174] = v73;
        if (!v73)
        {
LABEL_43:
          v125 = v194[172];
          v126 = v194[167];
          v127 = v194[162];
          v128 = v194[161];
          v129 = v194[160];
          v130 = v194[159];
          v131 = v194[157];
          v132 = v194[150];

          lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
          swift_allocError();
          *v133 = 0;
          swift_willThrow();
          (*(v128 + 8))(v127, v129);
          outlined destroy of NSObject?(v126, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
          (*(v131 + 8))(v130, v132);
          goto LABEL_50;
        }

        v74 = 0;
        *(v194 + 386) = *(v194[139] + 80);
        while (1)
        {
          v194[175] = v74;
          v75 = v194[172];
          if (v74 >= *(v75 + 16))
          {
            break;
          }

          v76 = v194[144];
          v77 = v194[139];
          v78 = v194[138];
          v80 = *(v77 + 16);
          v77 += 16;
          v79 = v80;
          v81 = v75 + ((*(v194 + 1544) + 32) & ~*(v194 + 1544)) + *(v77 + 56) * v74;
          v194[176] = v80;
          v194[177] = v77 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v80(v76, v81, v78);
          v82 = ResolvedTransferRepresentation.importing.getter();
          v194[178] = v82;
          v194[179] = v83;
          if (v82)
          {
            v84 = v82;
            v85 = v194[144];
            v86 = v194[137];
            v87 = v194[136];
            v88 = v194[134];
            v89 = v194[133];
            ResolvedTransferRepresentation.contentType.getter();
            static UTType.url.getter();
            LOBYTE(v85) = static UTType.== infix(_:_:)();
            v90 = *(v88 + 8);
            v194[180] = v90;
            v194[181] = (v88 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
            v90(v87, v89);
            v90(v86, v89);
            if (v85)
            {
              goto LABEL_44;
            }

            v91 = v194[144];
            v92 = v194[137];
            v93 = v194[136];
            v94 = v194[133];
            ResolvedTransferRepresentation.contentType.getter();
            static UTType.fileURL.getter();
            LOBYTE(v91) = static UTType.== infix(_:_:)();
            v90(v93, v94);
            v90(v92, v94);
            if (v91)
            {
LABEL_44:
              v134 = v194[144];
              v135 = v194[135];
              ResolvedTransferRepresentation.contentType.getter();
              v136 = *(MEMORY[0x1E6965B90] + 4);
              v137 = swift_task_alloc();
              v194[182] = v137;
              v138 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
              *v137 = v194;
              v137[1] = GroupSessionJournal.Attachment.load<A>(_:);
              v139 = v194[162];
              v140 = v194[160];
              v141 = v194[135];

              return MEMORY[0x1EEDBF578](v141, v140, v138);
            }

            else
            {
              v95 = v194[162];
              v96 = Data.init(contentsOf:options:)();
              v194[189] = v96;
              v194[190] = v97;
              v161 = MEMORY[0x1E6965B68];
              v194[25] = MEMORY[0x1E6969080];
              v194[26] = v161;
              v194[22] = v96;
              v194[23] = v97;
              outlined copy of Data._Representation(v96, v97);
              v192 = (v84 + *v84);
              v162 = v84[1];
              v163 = swift_task_alloc();
              v194[191] = v163;
              *v163 = v194;
              v163[1] = GroupSessionJournal.Attachment.load<A>(_:);

              return (v192)(v194 + 17, v194 + 22);
            }
          }

          v98 = v194[173];
          v79(v194[142], v194[144], v194[138]);
          v99 = Logger.logObject.getter();
          v100 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v99, v100))
          {
            v191 = v100;
            v101 = v194[142];
            v102 = v194[139];
            v103 = v194[138];
            v104 = v194[128];
            v105 = v194[127];
            v106 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            v194[107] = v187;
            *v106 = 136315138;
            v79(v104, v101, v103);
            (*(v102 + 56))(v104, 0, 1, v103);
            outlined init with copy of URL?(v104, v105, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
            if ((*(v102 + 48))(v105, 1, v103) == 1)
            {
              v107 = 0xE300000000000000;
              v108 = 7104878;
            }

            else
            {
              v114 = v194[141];
              v115 = v194[140];
              v116 = v194[139];
              v117 = v194[138];
              (*(v116 + 32))(v114, v194[127], v117);
              v79(v115, v114, v117);
              v108 = String.init<A>(reflecting:)();
              v107 = v118;
              (*(v116 + 8))(v114, v117);
            }

            v119 = v194[144];
            v120 = v194[142];
            v121 = v194[139];
            v122 = v194[138];
            outlined destroy of NSObject?(v194[128], &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
            v123 = *(v121 + 8);
            v123(v120, v122);
            v124 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v107, v194 + 107);

            *(v106 + 4) = v124;
            _os_log_impl(&dword_1AEE80000, v99, v191, "Failed to find importing closure from representation %s", v106, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v187);
            MEMORY[0x1B2715BA0](v187, -1, -1);
            MEMORY[0x1B2715BA0](v106, -1, -1);

            v123(v119, v122);
          }

          else
          {
            v109 = v194[144];
            v110 = v194[142];
            v111 = v194[139];
            v112 = v194[138];

            v113 = *(v111 + 8);
            v113(v110, v112);
            v113(v109, v112);
          }

          v74 = v194[175] + 1;
          if (v74 == v194[174])
          {
            goto LABEL_43;
          }
        }
      }

      __break(1u);
    }

    swift_once();
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[165];
    v5 = *v3;
    v4 = v3[1];
    lazy protocol witness table accessor for type GroupSessionErrors and conformance GroupSessionErrors();
    swift_allocError();
    *v6 = 11;
    swift_willThrow();
    outlined consume of Data._Representation(v5, v4);
LABEL_50:
    v150 = v0[167];
    v151 = v0[166];
    v152 = v0[165];
    v153 = v0[163];
    v154 = v0[162];
    v155 = v0[159];
    v156 = v0[158];
    v157 = v0[156];
    v158 = v0[153];
    v159 = v0[149];
    v164 = v0[146];
    v165 = v0[145];
    v166 = v0[144];
    v167 = v0[143];
    v168 = v0[142];
    v169 = v0[141];
    v170 = v0[140];
    v171 = v0[137];
    v172 = v0[136];
    v173 = v0[135];
    v174 = v0[132];
    v175 = v0[131];
    v176 = v0[128];
    v178 = v0[127];
    v180 = v0[126];
    v182 = v0[125];
    v184 = v0[124];
    v188 = v0[121];
    v195 = v0[120];

    v160 = v0[1];

    return v160();
  }

  v29 = v0[119];
  v30 = *(v0[122] + 20);
  Strong = swift_weakLoadStrong();
  v0[168] = Strong;
  if (!Strong)
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v64 = 2;
    swift_willThrow();
    goto LABEL_50;
  }

  v0[169] = *(Strong + 16);
  v32 = *(Strong + 24);
  ObjectType = swift_getObjectType();
  v34 = *(v32 + 48);
  swift_unknownObjectRetain();
  v189 = (v34 + *v34);
  v35 = v34[1];
  v36 = swift_task_alloc();
  v0[170] = v36;
  *v36 = v0;
  v36[1] = GroupSessionJournal.Attachment.load<A>(_:);
  v37 = v0[163];
  v38 = v0[119];

  return (v189)(v37, v38, ObjectType, v32);
}

{
  v2 = *(*v1 + 1360);
  v5 = *v1;
  *(*v1 + 1368) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    v3 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v204 = v0;
  v1 = *(v0 + 1352);
  v2 = *(v0 + 1344);

  swift_unknownObjectRelease();
  v3 = *(v0 + 1368);
  v4 = *(v0 + 1336);
  v5 = *(v0 + 1328);
  v6 = *(v0 + 1288);
  v7 = *(v0 + 1280);
  v8 = *(v6 + 32);
  v8(v4, *(v0 + 1304), v7);
  (*(v6 + 56))(v4, 0, 1, v7);
  outlined init with copy of URL?(v4, v5, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v6 + 48))(v5, 1, v7) == 1)
  {
    outlined destroy of NSObject?(*(v0 + 1328), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for ledger == -1)
    {
LABEL_3:
      v9 = *(v0 + 1008);
      v10 = *(v0 + 952);
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Log.ledger);
      outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v10, v9, type metadata accessor for GroupSessionJournal.Attachment);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      v14 = os_log_type_enabled(v12, v13);
      v15 = *(v0 + 1008);
      if (v14)
      {
        v16 = *(v0 + 984);
        v17 = *(v0 + 976);
        v18 = *(v0 + 968);
        v19 = *(v0 + 960);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v203[0] = v21;
        *v20 = 136315138;
        outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v15, v18, type metadata accessor for GroupSessionJournal.Attachment);
        (*(v16 + 56))(v18, 0, 1, v17);
        outlined init with copy of URL?(v18, v19, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
        if ((*(v16 + 48))(v19, 1, v17) == 1)
        {
          v22 = 7104878;
          v23 = 0xE300000000000000;
        }

        else
        {
          v145 = *(v0 + 1000);
          v146 = *(v0 + 992);
          v147 = *(v0 + 976);
          outlined init with take of GroupSessionJournal.Attachment(*(v0 + 960), v145, type metadata accessor for GroupSessionJournal.Attachment);
          outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v145, v146, type metadata accessor for GroupSessionJournal.Attachment);
          v22 = String.init<A>(reflecting:)();
          v23 = v148;
          outlined destroy of GroupSessionJournal.Attachment(v145, type metadata accessor for GroupSessionJournal.Attachment);
        }

        v149 = *(v0 + 1008);
        outlined destroy of NSObject?(*(v0 + 968), &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMd, &_s15GroupActivities0A14SessionJournalC10AttachmentVSgMR);
        outlined destroy of GroupSessionJournal.Attachment(v149, type metadata accessor for GroupSessionJournal.Attachment);
        v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v203);

        *(v20 + 4) = v150;
        _os_log_impl(&dword_1AEE80000, v12, v13, "Failed to find URL for attachment %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x1B2715BA0](v21, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }

      else
      {

        outlined destroy of GroupSessionJournal.Attachment(v15, type metadata accessor for GroupSessionJournal.Attachment);
      }

      v151 = *(v0 + 1336);
      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v152 = 2;
      swift_willThrow();
      outlined destroy of NSObject?(v151, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_46;
    }

LABEL_54:
    swift_once();
    goto LABEL_3;
  }

  v186 = v3;
  v24 = *(v0 + 1272);
  v25 = *(v0 + 1264);
  v26 = *(v0 + 1256);
  v182 = *(v0 + 1248);
  v196 = *(v0 + 1240);
  v200 = *(v0 + 1232);
  v180 = *(v0 + 1224);
  v189 = *(v0 + 1216);
  v192 = *(v0 + 1208);
  v27 = *(v0 + 1200);
  v28 = *(v0 + 1192);
  v29 = *(v0 + 1184);
  v184 = *(v0 + 1176);
  v30 = *(v0 + 944);
  v31 = *(v0 + 936);
  v32 = (*(v0 + 1288) + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(*(v0 + 1296), *(v0 + 1328), *(v0 + 1280));
  dispatch thunk of static Transferable.transferRepresentation.getter();
  swift_getDynamicType();
  (*(v26 + 16))(v25, v24, v27);
  _TransferRepresentationValue.init(_:)();
  _TransferRepresentationInputs.init()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of static TransferRepresentation._decomposedTransferRepresentation(_:inputs:)();
  (*(v29 + 8))(v28, v184);
  (*(v189 + 8))(v180, v192);
  v33 = _TransferRepresentationOutputs.storage.getter();
  (*(v196 + 8))(v182, v200);
  v34 = v33;
  v201 = v0;
  v193 = *(v33 + 16);
  if (v193)
  {
    v35 = 0;
    v36 = *(v0 + 1112);
    v37 = MEMORY[0x1E69E7CC0];
    while (v35 < *(v34 + 16))
    {
      v38 = *(v201 + 1168);
      v39 = *(v201 + 1160);
      v40 = *(v201 + 1104);
      v41 = (*(v36 + 80) + 32) & ~*(v36 + 80);
      v42 = v34;
      v43 = *(v36 + 72);
      (*(v36 + 16))(v38, v34 + v41 + v43 * v35, v40);
      v0 = *(v36 + 32);
      (v0)(v39, v38, v40);
      v203[0] = v37;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 16) + 1, 1);
        v37 = v203[0];
      }

      v45 = *(v37 + 16);
      v44 = *(v37 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v44 > 1, v45 + 1, 1);
        v37 = v203[0];
      }

      ++v35;
      v46 = *(v201 + 1160);
      v47 = *(v201 + 1104);
      *(v37 + 16) = v45 + 1;
      (v0)(v37 + v41 + v45 * v43, v46, v47);
      v34 = v42;
      if (v193 == v35)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_17:
  v0 = v201;
  *(v201 + 1376) = v37;

  if (one-time initialization token for ledger != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  *(v201 + 1384) = __swift_project_value_buffer(v48, static Log.ledger);

  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();

  v51 = v186;
  if (os_log_type_enabled(v49, v50))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v203[0] = v53;
    *v52 = 136315138;
    *(v201 + 920) = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CoreTransferable30ResolvedTransferRepresentationVGMd, &_sSay16CoreTransferable30ResolvedTransferRepresentationVGMR);
    v54 = String.init<A>(reflecting:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v203);

    *(v52 + 4) = v56;
    _os_log_impl(&dword_1AEE80000, v49, v50, "Supported representations: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x1B2715BA0](v53, -1, -1);
    MEMORY[0x1B2715BA0](v52, -1, -1);
  }

  v57 = *(v37 + 16);
  *(v201 + 1392) = v57;
  if (v57)
  {
    v58 = 0;
    *(v201 + 1544) = *(*(v201 + 1112) + 80);
    while (1)
    {
      *(v0 + 1400) = v58;
      v59 = *(v0 + 1376);
      if (v58 >= *(v59 + 16))
      {
        break;
      }

      v60 = *(v0 + 1152);
      v61 = *(v0 + 1112);
      v62 = *(v0 + 1104);
      v64 = *(v61 + 16);
      v61 += 16;
      v63 = v64;
      v65 = v59 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v61 + 56) * v58;
      *(v0 + 1408) = v64;
      *(v0 + 1416) = v61 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v64(v60, v65, v62);
      v66 = ResolvedTransferRepresentation.importing.getter();
      *(v0 + 1424) = v66;
      *(v0 + 1432) = v67;
      if (v66)
      {
        v68 = v66;
        v69 = *(v0 + 1152);
        v70 = *(v0 + 1096);
        v71 = *(v0 + 1088);
        v72 = *(v0 + 1072);
        v73 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.url.getter();
        LOBYTE(v69) = static UTType.== infix(_:_:)();
        v74 = *(v72 + 8);
        *(v0 + 1440) = v74;
        *(v0 + 1448) = (v72 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v74(v71, v73);
        v74(v70, v73);
        if (v69)
        {
          goto LABEL_40;
        }

        v75 = *(v0 + 1152);
        v76 = *(v0 + 1096);
        v77 = *(v0 + 1088);
        v78 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        LOBYTE(v75) = static UTType.== infix(_:_:)();
        v74(v77, v78);
        v74(v76, v78);
        if (v75)
        {
LABEL_40:
          v137 = *(v0 + 1152);
          v138 = *(v0 + 1080);
          ResolvedTransferRepresentation.contentType.getter();
          v139 = *(MEMORY[0x1E6965B90] + 4);
          v140 = swift_task_alloc();
          *(v0 + 1456) = v140;
          v141 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
          *v140 = v0;
          v140[1] = GroupSessionJournal.Attachment.load<A>(_:);
          v142 = *(v0 + 1296);
          v143 = *(v0 + 1280);
          v144 = *(v0 + 1080);

          return MEMORY[0x1EEDBF578](v144, v143, v141);
        }

        v79 = *(v0 + 1296);
        v80 = Data.init(contentsOf:options:)();
        *(v0 + 1512) = v80;
        *(v0 + 1520) = v81;
        if (!v51)
        {
          v164 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v164;
          *(v0 + 176) = v80;
          *(v0 + 184) = v81;
          outlined copy of Data._Representation(v80, v81);
          v202 = (v68 + *v68);
          v165 = v68[1];
          v166 = swift_task_alloc();
          *(v0 + 1528) = v166;
          *v166 = v0;
          v166[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v202(v0 + 136, v0 + 176);
        }

        $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
        outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v68);
        v82 = *(v0 + 1384);
        v83 = v51;
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.error.getter();

        v86 = os_log_type_enabled(v84, v85);
        v87 = *(v0 + 1152);
        v88 = *(v0 + 1112);
        v89 = *(v0 + 1104);
        if (v86)
        {
          v90 = *(v0 + 936);
          v91 = swift_slowAlloc();
          v197 = v87;
          v92 = swift_slowAlloc();
          v203[0] = v92;
          *v91 = 136315394;
          *(v201 + 912) = v90;
          MetatypeMetadata = swift_getMetatypeMetadata();
          v94 = >> prefix<A>(_:)(v201 + 912, MetatypeMetadata);
          v96 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94, v95, v203);

          *(v91 + 4) = v96;
          *(v91 + 12) = 2080;
          *(v201 + 904) = v51;
          v97 = v51;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
          v98 = String.init<A>(reflecting:)();
          v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v203);

          *(v91 + 14) = v100;
          _os_log_impl(&dword_1AEE80000, v84, v85, "Failed load %s, error: %s", v91, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1B2715BA0](v92, -1, -1);
          v0 = v201;
          MEMORY[0x1B2715BA0](v91, -1, -1);

          (*(v88 + 8))(v197, v89);
        }

        else
        {

          (*(v88 + 8))(v87, v89);
        }

        v51 = 0;
      }

      else
      {
        v101 = *(v0 + 1384);
        v63(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v198 = v103;
          v187 = v51;
          v104 = *(v0 + 1136);
          v105 = *(v0 + 1112);
          v106 = *(v0 + 1104);
          v107 = *(v0 + 1024);
          v108 = *(v0 + 1016);
          v109 = swift_slowAlloc();
          v190 = swift_slowAlloc();
          *(v0 + 856) = v190;
          v194 = v109;
          *v109 = 136315138;
          v63(v107, v104, v106);
          (*(v105 + 56))(v107, 0, 1, v106);
          outlined init with copy of URL?(v107, v108, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          if ((*(v105 + 48))(v108, 1, v106) == 1)
          {
            v110 = 0xE300000000000000;
            v111 = 7104878;
          }

          else
          {
            v117 = *(v0 + 1128);
            v118 = *(v0 + 1120);
            v119 = *(v0 + 1112);
            v120 = *(v0 + 1104);
            (*(v119 + 32))(v117, *(v0 + 1016), v120);
            v63(v118, v117, v120);
            v111 = String.init<A>(reflecting:)();
            v110 = v121;
            (*(v119 + 8))(v117, v120);
          }

          v122 = *(v0 + 1152);
          v123 = *(v0 + 1136);
          v124 = *(v0 + 1112);
          v125 = *(v0 + 1104);
          outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
          v126 = *(v124 + 8);
          v126(v123, v125);
          v127 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v110, (v0 + 856));

          *(v194 + 1) = v127;
          _os_log_impl(&dword_1AEE80000, v102, v198, "Failed to find importing closure from representation %s", v194, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v190);
          MEMORY[0x1B2715BA0](v190, -1, -1);
          MEMORY[0x1B2715BA0](v194, -1, -1);

          v126(v122, v125);
          v51 = v187;
        }

        else
        {
          v112 = *(v0 + 1152);
          v113 = *(v0 + 1136);
          v114 = *(v0 + 1112);
          v115 = *(v0 + 1104);

          v116 = *(v114 + 8);
          v116(v113, v115);
          v116(v112, v115);
        }
      }

      v58 = *(v0 + 1400) + 1;
      if (v58 == *(v0 + 1392))
      {
        goto LABEL_39;
      }
    }

LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

LABEL_39:
  v128 = *(v0 + 1376);
  v129 = *(v0 + 1336);
  v130 = *(v0 + 1296);
  v131 = *(v0 + 1288);
  v132 = *(v0 + 1280);
  v133 = *(v0 + 1272);
  v134 = *(v0 + 1256);
  v135 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v136 = 0;
  swift_willThrow();
  (*(v131 + 8))(v130, v132);
  outlined destroy of NSObject?(v129, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v134 + 8))(v133, v135);
LABEL_46:
  v153 = *(v0 + 1336);
  v154 = *(v0 + 1328);
  v155 = *(v0 + 1320);
  v156 = *(v0 + 1304);
  v157 = *(v0 + 1296);
  v158 = *(v0 + 1272);
  v159 = *(v0 + 1264);
  v160 = *(v0 + 1248);
  v161 = *(v0 + 1224);
  v162 = *(v0 + 1192);
  v168 = *(v0 + 1168);
  v169 = *(v0 + 1160);
  v170 = *(v0 + 1152);
  v171 = *(v0 + 1144);
  v172 = *(v0 + 1136);
  v173 = *(v0 + 1128);
  v174 = *(v0 + 1120);
  v175 = *(v0 + 1096);
  v176 = *(v0 + 1088);
  v177 = *(v0 + 1080);
  v178 = *(v0 + 1056);
  v179 = *(v0 + 1048);
  v181 = *(v0 + 1024);
  v183 = *(v0 + 1016);
  v185 = *(v0 + 1008);
  v188 = *(v0 + 1000);
  v191 = *(v0 + 992);
  v195 = *(v0 + 968);
  v199 = *(v0 + 960);

  v163 = *(v0 + 8);

  return v163();
}

{
  v40 = v0;
  v1 = *(v0 + 1472);
  v2 = *(v0 + 1464);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1384);
  (*(v0 + 1408))(*(v0 + 1144), *(v0 + 1152), *(v0 + 1104));
  outlined copy of Data._Representation(v2, v1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  outlined consume of Data._Representation(v2, v1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 1464);
    v32 = *(v0 + 1440);
    v33 = *(v0 + 1448);
    v8 = *(v0 + 1144);
    v9 = *(v0 + 1112);
    v34 = *(v0 + 1104);
    v35 = *(v0 + 1472);
    v10 = *(v0 + 1096);
    v11 = *(v0 + 1064);
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v12 = 136315394;
    v36 = v6;
    ResolvedTransferRepresentation.contentType.getter();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450]);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    v32(v10, v11);
    v16 = *(v9 + 8);
    v16(v8, v34);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v39);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    outlined copy of Data._Representation(v7, v35);
    v18 = Data.description.getter();
    v20 = v19;
    outlined consume of Data._Representation(v7, v35);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, &v39);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, v5, v36, "Exported data from attachmentURL to contentType: %s successfully. %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v37, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);
  }

  else
  {
    v22 = *(v0 + 1144);
    v23 = *(v0 + 1112);
    v24 = *(v0 + 1104);

    v16 = *(v23 + 8);
    v16(v22, v24);
  }

  *(v0 + 1488) = v16;
  v25 = *(v0 + 1472);
  v26 = *(v0 + 1464);
  v27 = *(v0 + 1432);
  v28 = *(v0 + 1424);
  *(v0 + 600) = MEMORY[0x1E6969080];
  *(v0 + 608) = MEMORY[0x1E6965B68];
  *(v0 + 576) = v26;
  *(v0 + 584) = v25;
  outlined copy of Data._Representation(v26, v25);
  v38 = (v28 + *v28);
  v29 = v28[1];
  v30 = swift_task_alloc();
  *(v0 + 1496) = v30;
  *v30 = v0;
  v30[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return v38(v0 + 536, v0 + 576);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1496);
  v6 = *v1;
  *(*v1 + 1504) = v0;

  if (v0)
  {
    v4 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 576));
    v4 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v215 = v0;
  v1 = *(v0 + 1384);
  outlined init with copy of Transferable(v0 + 536, v0 + 616);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *(v0 + 880) = v5;
    *v4 = 136315138;
    outlined init with copy of Transferable(v0 + 616, v0 + 416);
    outlined init with copy of URL?(v0 + 416, v0 + 296, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 320))
    {
      outlined init with take of Transferable((v0 + 296), v0 + 96);
      outlined init with copy of Transferable(v0 + 96, v0 + 56);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
      v6 = String.init<A>(reflecting:)();
      v8 = v7;
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }

    else
    {
      v6 = 7104878;
      v8 = 0xE300000000000000;
    }

    outlined destroy of NSObject?(v0 + 416, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 616));
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, (v0 + 880));

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1AEE80000, v2, v3, "Imported attachmentURL successfully. %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B2715BA0](v5, -1, -1);
    MEMORY[0x1B2715BA0](v4, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 616));
  }

  v10 = *(v0 + 1056);
  v11 = *(v0 + 936);
  outlined init with copy of Transferable(v0 + 536, v0 + 656);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v12 = *(v0 + 1472);
    v13 = *(v0 + 1464);
    v14 = *(v0 + 1432);
    v15 = *(v0 + 1376);
    v203 = *(v0 + 1336);
    v194 = *(v0 + 1296);
    v199 = *(v0 + 1488);
    v16 = *(v0 + 1288);
    v190 = *(v0 + 1280);
    v17 = *(v0 + 1152);
    v18 = *(v0 + 1104);
    v19 = *(v0 + 1056);
    v20 = *(v0 + 936);
    v21 = *(v0 + 1112) + 8;
    v208 = *(v0 + 928);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424));
    outlined consume of Data._Representation(v13, v12);

    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v199(v17, v18);
    (*(v16 + 8))(v194, v190);
    outlined destroy of NSObject?(v203, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v22 = *(v20 - 8);
    (*(v22 + 56))(v19, 0, 1, v20);
    (*(v22 + 32))(v208, v19, v20);
    v23 = *(v0 + 1336);
    v24 = *(v0 + 1328);
    v25 = *(v0 + 1320);
    v26 = *(v0 + 1304);
    v27 = *(v0 + 1296);
    v28 = *(v0 + 1264);
    v29 = *(v0 + 1248);
    v30 = *(v0 + 1224);
    v159 = *(v0 + 1192);
    v161 = *(v0 + 1168);
    v163 = *(v0 + 1160);
    v165 = *(v0 + 1152);
    v167 = *(v0 + 1144);
    v169 = *(v0 + 1136);
    v171 = *(v0 + 1128);
    v173 = *(v0 + 1120);
    v175 = *(v0 + 1096);
    v177 = *(v0 + 1088);
    v179 = *(v0 + 1080);
    v181 = *(v0 + 1056);
    v183 = *(v0 + 1048);
    v185 = *(v0 + 1024);
    v187 = *(v0 + 1016);
    v191 = *(v0 + 1008);
    v195 = *(v0 + 1000);
    v200 = *(v0 + 992);
    v204 = *(v0 + 968);
    v209 = *(v0 + 960);
    (*(*(v0 + 1256) + 8))(*(v0 + 1272), *(v0 + 1200));

    v31 = *(v0 + 8);
LABEL_17:

    return v31();
  }

  v32 = *(v0 + 1384);
  v33 = *(v0 + 1056);
  v34 = *(v0 + 1040);
  v35 = *(v0 + 1032);
  (*(*(*(v0 + 936) - 8) + 56))(v33, 1, 1);
  (*(v34 + 8))(v33, v35);
  outlined init with copy of Transferable(v0 + 536, v0 + 696);
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *(v0 + 872) = v39;
    *v38 = 136315394;
    outlined init with copy of Transferable(v0 + 696, v0 + 776);
    outlined init with copy of URL?(v0 + 776, v0 + 816, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 840))
    {
      outlined init with take of Transferable((v0 + 816), v0 + 16);
      outlined init with copy of Transferable(v0 + 16, v0 + 736);
      v40 = String.init<A>(reflecting:)();
      v42 = v41;
      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
      v42 = 0xE300000000000000;
      v40 = 7104878;
    }

    v210 = *(v0 + 1488);
    v188 = *(v0 + 1464);
    v192 = *(v0 + 1472);
    v53 = *(v0 + 1432);
    v54 = *(v0 + 1424);
    v205 = *(v0 + 1152);
    v55 = *(v0 + 936);
    v196 = *(v0 + 1112) + 8;
    v201 = *(v0 + 1104);
    outlined destroy of NSObject?(v0 + 776, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, (v0 + 872));

    *(v38 + 4) = v56;
    *(v38 + 12) = 2080;
    *(v0 + 864) = v55;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v58 = >> prefix<A>(_:)(v0 + 864, MetatypeMetadata);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, (v0 + 872));

    *(v38 + 14) = v60;
    _os_log_impl(&dword_1AEE80000, v36, v37, "Failed to convert %s to %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v39, -1, -1);
    MEMORY[0x1B2715BA0](v38, -1, -1);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v54);

    outlined consume of Data._Representation(v188, v192);
    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v50 = (v210)(v205, v201);
  }

  else
  {
    v43 = *(v0 + 1488);
    v44 = *(v0 + 1472);
    v45 = *(v0 + 1464);
    v46 = *(v0 + 1432);
    v47 = *(v0 + 1152);
    v48 = *(v0 + 1104);
    v49 = *(v0 + 1112) + 8;
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424));

    outlined consume of Data._Representation(v45, v44);
    __swift_destroy_boxed_opaque_existential_0((v0 + 696));
    __swift_destroy_boxed_opaque_existential_0((v0 + 536));
    v50 = v43(v47, v48);
  }

  v61 = *(v0 + 1400) + 1;
  if (v61 == *(v0 + 1392))
  {
LABEL_16:
    v62 = *(v0 + 1376);
    v63 = *(v0 + 1336);
    v64 = *(v0 + 1296);
    v65 = *(v0 + 1288);
    v66 = *(v0 + 1280);
    v67 = *(v0 + 1272);
    v68 = *(v0 + 1256);
    v69 = *(v0 + 1200);

    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v70 = 0;
    swift_willThrow();
    (*(v65 + 8))(v64, v66);
    outlined destroy of NSObject?(v63, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v68 + 8))(v67, v69);
    v71 = *(v0 + 1336);
    v72 = *(v0 + 1328);
    v73 = *(v0 + 1320);
    v74 = *(v0 + 1304);
    v75 = *(v0 + 1296);
    v76 = *(v0 + 1272);
    v77 = *(v0 + 1264);
    v78 = *(v0 + 1248);
    v79 = *(v0 + 1224);
    v80 = *(v0 + 1192);
    v160 = *(v0 + 1168);
    v162 = *(v0 + 1160);
    v164 = *(v0 + 1152);
    v166 = *(v0 + 1144);
    v168 = *(v0 + 1136);
    v170 = *(v0 + 1128);
    v172 = *(v0 + 1120);
    v174 = *(v0 + 1096);
    v176 = *(v0 + 1088);
    v178 = *(v0 + 1080);
    v180 = *(v0 + 1056);
    v182 = *(v0 + 1048);
    v184 = *(v0 + 1024);
    v186 = *(v0 + 1016);
    v189 = *(v0 + 1008);
    v193 = *(v0 + 1000);
    v197 = *(v0 + 992);
    v202 = *(v0 + 968);
    v206 = *(v0 + 960);

    v31 = *(v0 + 8);
    goto LABEL_17;
  }

  v198 = *(v0 + 1504);
  while (1)
  {
    *(v0 + 1400) = v61;
    v87 = *(v0 + 1376);
    if (v61 >= *(v87 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v50, v51, v52);
    }

    v88 = *(v0 + 1152);
    v89 = *(v0 + 1112);
    v90 = *(v0 + 1104);
    v92 = *(v89 + 16);
    v89 += 16;
    v91 = v92;
    v93 = v87 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v89 + 56) * v61;
    *(v0 + 1408) = v92;
    *(v0 + 1416) = v89 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v92(v88, v93, v90);
    v94 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v94;
    *(v0 + 1432) = v95;
    if (v94)
    {
      break;
    }

    v96 = *(v0 + 1384);
    v91(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v97, v98))
    {
      v211 = v98;
      v99 = *(v0 + 1136);
      v100 = *(v0 + 1112);
      v101 = *(v0 + 1104);
      v102 = *(v0 + 1024);
      v103 = *(v0 + 1016);
      v104 = swift_slowAlloc();
      v207 = swift_slowAlloc();
      *(v0 + 856) = v207;
      *v104 = 136315138;
      v91(v102, v99, v101);
      (*(v100 + 56))(v102, 0, 1, v101);
      outlined init with copy of URL?(v102, v103, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v100 + 48))(v103, 1, v101) == 1)
      {
        v105 = 0xE300000000000000;
        v106 = 7104878;
      }

      else
      {
        v107 = *(v0 + 1128);
        v108 = *(v0 + 1120);
        v109 = *(v0 + 1112);
        v110 = *(v0 + 1104);
        (*(v109 + 32))(v107, *(v0 + 1016), v110);
        v91(v108, v107, v110);
        v106 = String.init<A>(reflecting:)();
        v105 = v111;
        (*(v109 + 8))(v107, v110);
      }

      v112 = *(v0 + 1152);
      v113 = *(v0 + 1136);
      v114 = *(v0 + 1112);
      v115 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v116 = *(v114 + 8);
      v116(v113, v115);
      v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v105, (v0 + 856));

      *(v104 + 4) = v117;
      _os_log_impl(&dword_1AEE80000, v97, v211, "Failed to find importing closure from representation %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v207);
      MEMORY[0x1B2715BA0](v207, -1, -1);
      MEMORY[0x1B2715BA0](v104, -1, -1);

      v50 = (v116)(v112, v115);
    }

    else
    {
      v82 = *(v0 + 1152);
      v83 = *(v0 + 1136);
      v84 = *(v0 + 1112);
      v85 = *(v0 + 1104);

      v86 = *(v84 + 8);
      v86(v83, v85);
      v50 = (v86)(v82, v85);
    }

LABEL_22:
    v61 = *(v0 + 1400) + 1;
    if (v61 == *(v0 + 1392))
    {
      goto LABEL_16;
    }
  }

  v118 = v94;
  v119 = *(v0 + 1152);
  v120 = *(v0 + 1096);
  v121 = *(v0 + 1088);
  v122 = *(v0 + 1072);
  v123 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.url.getter();
  LOBYTE(v119) = static UTType.== infix(_:_:)();
  v124 = *(v122 + 8);
  *(v0 + 1440) = v124;
  *(v0 + 1448) = (v122 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v124(v121, v123);
  v124(v120, v123);
  if (v119)
  {
    goto LABEL_37;
  }

  v125 = *(v0 + 1152);
  v126 = *(v0 + 1096);
  v127 = *(v0 + 1088);
  v128 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.fileURL.getter();
  LOBYTE(v125) = static UTType.== infix(_:_:)();
  v124(v127, v128);
  v124(v126, v128);
  if (v125)
  {
LABEL_37:
    v151 = *(v0 + 1152);
    v152 = *(v0 + 1080);
    ResolvedTransferRepresentation.contentType.getter();
    v153 = *(MEMORY[0x1E6965B90] + 4);
    v154 = swift_task_alloc();
    *(v0 + 1456) = v154;
    v52 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    *v154 = v0;
    v154[1] = GroupSessionJournal.Attachment.load<A>(_:);
    v155 = *(v0 + 1296);
    v51 = *(v0 + 1280);
    v50 = *(v0 + 1080);

    return MEMORY[0x1EEDBF578](v50, v51, v52);
  }

  v129 = *(v0 + 1296);
  v130 = Data.init(contentsOf:options:)();
  *(v0 + 1512) = v130;
  *(v0 + 1520) = v131;
  if (v198)
  {
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v118);
    v132 = *(v0 + 1384);
    v133 = v198;
    v134 = Logger.logObject.getter();
    v135 = static os_log_type_t.error.getter();

    v136 = os_log_type_enabled(v134, v135);
    v137 = *(v0 + 1152);
    v138 = *(v0 + 1112);
    v139 = *(v0 + 1104);
    if (v136)
    {
      v212 = *(v0 + 1104);
      v140 = *(v0 + 936);
      v141 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v214[0] = v142;
      *v141 = 136315394;
      *(v0 + 912) = v140;
      v143 = swift_getMetatypeMetadata();
      v144 = >> prefix<A>(_:)(v0 + 912, v143);
      v146 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, v214);

      *(v141 + 4) = v146;
      *(v141 + 12) = 2080;
      *(v0 + 904) = v198;
      v147 = v198;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v148 = String.init<A>(reflecting:)();
      v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, v214);

      *(v141 + 14) = v150;
      _os_log_impl(&dword_1AEE80000, v134, v135, "Failed load %s, error: %s", v141, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v142, -1, -1);
      MEMORY[0x1B2715BA0](v141, -1, -1);

      v50 = (*(v138 + 8))(v137, v212);
    }

    else
    {

      v50 = (*(v138 + 8))(v137, v139);
    }

    v198 = 0;
    goto LABEL_22;
  }

  v156 = MEMORY[0x1E6965B68];
  *(v0 + 200) = MEMORY[0x1E6969080];
  *(v0 + 208) = v156;
  *(v0 + 176) = v130;
  *(v0 + 184) = v131;
  outlined copy of Data._Representation(v130, v131);
  v213 = (v118 + *v118);
  v157 = v118[1];
  v158 = swift_task_alloc();
  *(v0 + 1528) = v158;
  *v158 = v0;
  v158[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return (v213)(v0 + 136, v0 + 176);
}

{
  v2 = *v1;
  v3 = *(*v1 + 1528);
  v6 = *v1;
  *(*v1 + 1536) = v0;

  if (v0)
  {
    v4 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 176));
    v4 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v201 = v0;
  v1 = *(v0 + 1048);
  v2 = *(v0 + 936);
  outlined init with copy of Transferable(v0 + 136, v0 + 216);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B0_pMd, &_s16CoreTransferable0B0_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 1520);
    v4 = *(v0 + 1512);
    v188 = *(v0 + 1432);
    v181 = *(v0 + 1424);
    v5 = *(v0 + 1376);
    v6 = *(v0 + 1296);
    v7 = *(v0 + 1288);
    v191 = *(v0 + 1280);
    v195 = *(v0 + 1336);
    v184 = *(v0 + 1152);
    v8 = *(v0 + 1112);
    v9 = *(v0 + 1048);
    v175 = *(v0 + 952);
    v178 = *(v0 + 1104);
    v10 = *(v0 + 936);
    v11 = *(v0 + 928);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
    outlined consume of Data._Representation(v4, v3);

    v12 = *(v10 - 8);
    (*(v12 + 56))(v9, 0, 1, v10);
    (*(v12 + 32))(v11, v9, v10);
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(v175, v6);
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v181);
    (*(v8 + 8))(v184, v178);
    (*(v7 + 8))(v6, v191);
    outlined destroy of NSObject?(v195, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(v0 + 1336);
    v14 = *(v0 + 1328);
    v15 = *(v0 + 1320);
    v16 = *(v0 + 1304);
    v17 = *(v0 + 1296);
    v18 = *(v0 + 1264);
    v19 = *(v0 + 1248);
    v20 = *(v0 + 1224);
    v149 = *(v0 + 1192);
    v151 = *(v0 + 1168);
    v153 = *(v0 + 1160);
    v155 = *(v0 + 1152);
    v157 = *(v0 + 1144);
    v159 = *(v0 + 1136);
    v161 = *(v0 + 1128);
    v163 = *(v0 + 1120);
    v165 = *(v0 + 1096);
    v167 = *(v0 + 1088);
    v169 = *(v0 + 1080);
    v171 = *(v0 + 1056);
    v173 = *(v0 + 1048);
    v176 = *(v0 + 1024);
    v179 = *(v0 + 1016);
    v182 = *(v0 + 1008);
    v185 = *(v0 + 1000);
    v189 = *(v0 + 992);
    v192 = *(v0 + 968);
    v196 = *(v0 + 960);
    (*(*(v0 + 1256) + 8))(*(v0 + 1272), *(v0 + 1200));

    v21 = *(v0 + 8);
LABEL_11:

    return v21();
  }

  v22 = *(v0 + 1384);
  v23 = *(v0 + 1048);
  v24 = *(v0 + 1040);
  v25 = *(v0 + 1032);
  (*(*(*(v0 + 936) - 8) + 56))(v23, 1, 1);
  (*(v24 + 8))(v23, v25);
  outlined init with copy of Transferable(v0 + 136, v0 + 256);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *(v0 + 896) = v29;
    *v28 = 136315394;
    outlined init with copy of Transferable(v0 + 256, v0 + 336);
    outlined init with copy of URL?(v0 + 336, v0 + 376, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    if (*(v0 + 400))
    {
      outlined init with take of Transferable((v0 + 376), v0 + 456);
      outlined init with copy of Transferable(v0 + 456, v0 + 496);
      v30 = String.init<A>(reflecting:)();
      v32 = v31;
      __swift_destroy_boxed_opaque_existential_0((v0 + 456));
    }

    else
    {
      v32 = 0xE300000000000000;
      v30 = 7104878;
    }

    v35 = *(v0 + 1520);
    v36 = *(v0 + 1512);
    v37 = *(v0 + 936);
    outlined destroy of NSObject?(v0 + 336, &_s16CoreTransferable0B0_pSgMd, &_s16CoreTransferable0B0_pSgMR);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    v38 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, (v0 + 896));

    *(v28 + 4) = v38;
    *(v28 + 12) = 2080;
    *(v0 + 888) = v37;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v40 = >> prefix<A>(_:)(v0 + 888, MetatypeMetadata);
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v41, (v0 + 896));

    *(v28 + 14) = v42;
    _os_log_impl(&dword_1AEE80000, v26, v27, "Failed to convert %s to %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v29, -1, -1);
    MEMORY[0x1B2715BA0](v28, -1, -1);

    outlined consume of Data._Representation(v36, v35);
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  else
  {
    v33 = *(v0 + 1520);
    v34 = *(v0 + 1512);

    outlined consume of Data._Representation(v34, v33);
    __swift_destroy_boxed_opaque_existential_0((v0 + 256));
    __swift_destroy_boxed_opaque_existential_0((v0 + 136));
  }

  v43 = *(v0 + 1432);
  v44 = *(v0 + 1424);
  v45 = *(v0 + 1152);
  v46 = *(v0 + 1112);
  v47 = *(v0 + 1104);
  $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v44);
  v48 = (*(v46 + 8))(v45, v47);
  v51 = *(v0 + 1400) + 1;
  if (v51 == *(v0 + 1392))
  {
LABEL_10:
    v52 = *(v0 + 1376);
    v53 = *(v0 + 1336);
    v54 = *(v0 + 1296);
    v55 = *(v0 + 1288);
    v56 = *(v0 + 1280);
    v57 = *(v0 + 1272);
    v58 = *(v0 + 1256);
    v59 = *(v0 + 1200);

    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v60 = 0;
    swift_willThrow();
    (*(v55 + 8))(v54, v56);
    outlined destroy of NSObject?(v53, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v58 + 8))(v57, v59);
    v61 = *(v0 + 1336);
    v62 = *(v0 + 1328);
    v63 = *(v0 + 1320);
    v64 = *(v0 + 1304);
    v65 = *(v0 + 1296);
    v66 = *(v0 + 1272);
    v67 = *(v0 + 1264);
    v68 = *(v0 + 1248);
    v69 = *(v0 + 1224);
    v70 = *(v0 + 1192);
    v150 = *(v0 + 1168);
    v152 = *(v0 + 1160);
    v154 = *(v0 + 1152);
    v156 = *(v0 + 1144);
    v158 = *(v0 + 1136);
    v160 = *(v0 + 1128);
    v162 = *(v0 + 1120);
    v164 = *(v0 + 1096);
    v166 = *(v0 + 1088);
    v168 = *(v0 + 1080);
    v170 = *(v0 + 1056);
    v172 = *(v0 + 1048);
    v174 = *(v0 + 1024);
    v177 = *(v0 + 1016);
    v180 = *(v0 + 1008);
    v183 = *(v0 + 1000);
    v186 = *(v0 + 992);
    v190 = *(v0 + 968);
    v193 = *(v0 + 960);

    v21 = *(v0 + 8);
    goto LABEL_11;
  }

  v187 = *(v0 + 1536);
  while (1)
  {
    *(v0 + 1400) = v51;
    v77 = *(v0 + 1376);
    if (v51 >= *(v77 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v48, v49, v50);
    }

    v78 = *(v0 + 1152);
    v79 = *(v0 + 1112);
    v80 = *(v0 + 1104);
    v82 = *(v79 + 16);
    v79 += 16;
    v81 = v82;
    v83 = v77 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v79 + 56) * v51;
    *(v0 + 1408) = v82;
    *(v0 + 1416) = v79 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v82(v78, v83, v80);
    v84 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v84;
    *(v0 + 1432) = v85;
    if (v84)
    {
      break;
    }

    v86 = *(v0 + 1384);
    v81(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v197 = v88;
      v89 = *(v0 + 1136);
      v90 = *(v0 + 1112);
      v91 = *(v0 + 1104);
      v92 = *(v0 + 1024);
      v93 = *(v0 + 1016);
      v94 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      *(v0 + 856) = v194;
      *v94 = 136315138;
      v81(v92, v89, v91);
      (*(v90 + 56))(v92, 0, 1, v91);
      outlined init with copy of URL?(v92, v93, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v90 + 48))(v93, 1, v91) == 1)
      {
        v95 = 0xE300000000000000;
        v96 = 7104878;
      }

      else
      {
        v97 = *(v0 + 1128);
        v98 = *(v0 + 1120);
        v99 = *(v0 + 1112);
        v100 = *(v0 + 1104);
        (*(v99 + 32))(v97, *(v0 + 1016), v100);
        v81(v98, v97, v100);
        v96 = String.init<A>(reflecting:)();
        v95 = v101;
        (*(v99 + 8))(v97, v100);
      }

      v102 = *(v0 + 1152);
      v103 = *(v0 + 1136);
      v104 = *(v0 + 1112);
      v105 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v106 = *(v104 + 8);
      v106(v103, v105);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v95, (v0 + 856));

      *(v94 + 4) = v107;
      _os_log_impl(&dword_1AEE80000, v87, v197, "Failed to find importing closure from representation %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v194);
      MEMORY[0x1B2715BA0](v194, -1, -1);
      MEMORY[0x1B2715BA0](v94, -1, -1);

      v48 = (v106)(v102, v105);
    }

    else
    {
      v72 = *(v0 + 1152);
      v73 = *(v0 + 1136);
      v74 = *(v0 + 1112);
      v75 = *(v0 + 1104);

      v76 = *(v74 + 8);
      v76(v73, v75);
      v48 = (v76)(v72, v75);
    }

LABEL_16:
    v51 = *(v0 + 1400) + 1;
    if (v51 == *(v0 + 1392))
    {
      goto LABEL_10;
    }
  }

  v108 = v84;
  v109 = *(v0 + 1152);
  v110 = *(v0 + 1096);
  v111 = *(v0 + 1088);
  v112 = *(v0 + 1072);
  v113 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.url.getter();
  LOBYTE(v109) = static UTType.== infix(_:_:)();
  v114 = *(v112 + 8);
  *(v0 + 1440) = v114;
  *(v0 + 1448) = (v112 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v114(v111, v113);
  v114(v110, v113);
  if (v109)
  {
    goto LABEL_31;
  }

  v115 = *(v0 + 1152);
  v116 = *(v0 + 1096);
  v117 = *(v0 + 1088);
  v118 = *(v0 + 1064);
  ResolvedTransferRepresentation.contentType.getter();
  static UTType.fileURL.getter();
  LOBYTE(v115) = static UTType.== infix(_:_:)();
  v114(v117, v118);
  v114(v116, v118);
  if (v115)
  {
LABEL_31:
    v141 = *(v0 + 1152);
    v142 = *(v0 + 1080);
    ResolvedTransferRepresentation.contentType.getter();
    v143 = *(MEMORY[0x1E6965B90] + 4);
    v144 = swift_task_alloc();
    *(v0 + 1456) = v144;
    v50 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
    *v144 = v0;
    v144[1] = GroupSessionJournal.Attachment.load<A>(_:);
    v145 = *(v0 + 1296);
    v49 = *(v0 + 1280);
    v48 = *(v0 + 1080);

    return MEMORY[0x1EEDBF578](v48, v49, v50);
  }

  v119 = *(v0 + 1296);
  v120 = Data.init(contentsOf:options:)();
  *(v0 + 1512) = v120;
  *(v0 + 1520) = v121;
  if (v187)
  {
    $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(*(v0 + 952), *(v0 + 1296));
    outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v108);
    v122 = *(v0 + 1384);
    v123 = v187;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = *(v0 + 1152);
    v128 = *(v0 + 1112);
    v129 = *(v0 + 1104);
    if (v126)
    {
      v198 = *(v0 + 1104);
      v130 = *(v0 + 936);
      v131 = swift_slowAlloc();
      v132 = swift_slowAlloc();
      v200[0] = v132;
      *v131 = 136315394;
      *(v0 + 912) = v130;
      v133 = swift_getMetatypeMetadata();
      v134 = >> prefix<A>(_:)(v0 + 912, v133);
      v136 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v135, v200);

      *(v131 + 4) = v136;
      *(v131 + 12) = 2080;
      *(v0 + 904) = v187;
      v137 = v187;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v138 = String.init<A>(reflecting:)();
      v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v139, v200);

      *(v131 + 14) = v140;
      _os_log_impl(&dword_1AEE80000, v124, v125, "Failed load %s, error: %s", v131, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v132, -1, -1);
      MEMORY[0x1B2715BA0](v131, -1, -1);

      v48 = (*(v128 + 8))(v127, v198);
    }

    else
    {

      v48 = (*(v128 + 8))(v127, v129);
    }

    v187 = 0;
    goto LABEL_16;
  }

  v146 = MEMORY[0x1E6965B68];
  *(v0 + 200) = MEMORY[0x1E6969080];
  *(v0 + 208) = v146;
  *(v0 + 176) = v120;
  *(v0 + 184) = v121;
  outlined copy of Data._Representation(v120, v121);
  v199 = (v108 + *v108);
  v147 = v108[1];
  v148 = swift_task_alloc();
  *(v0 + 1528) = v148;
  *v148 = v0;
  v148[1] = GroupSessionJournal.Attachment.load<A>(_:);

  return (v199)(v0 + 136, v0 + 176);
}

{
  v1 = v0[169];
  v2 = v0[168];

  swift_unknownObjectRelease();
  v34 = v0[171];
  v3 = v0[167];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[163];
  v7 = v0[162];
  v8 = v0[159];
  v9 = v0[158];
  v10 = v0[156];
  v11 = v0[153];
  v12 = v0[149];
  v15 = v0[146];
  v16 = v0[145];
  v17 = v0[144];
  v18 = v0[143];
  v19 = v0[142];
  v20 = v0[141];
  v21 = v0[140];
  v22 = v0[137];
  v23 = v0[136];
  v24 = v0[135];
  v25 = v0[132];
  v26 = v0[131];
  v27 = v0[128];
  v28 = v0[127];
  v29 = v0[126];
  v30 = v0[125];
  v31 = v0[124];
  v32 = v0[121];
  v33 = v0[120];

  v13 = v0[1];

  return v13();
}

{
  v130 = v0;
  v1 = *(v0 + 1432);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(*(v0 + 1424));
  v2 = *(v0 + 1480);
  v3 = *(v0 + 1384);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1152);
  v9 = *(v0 + 1112);
  v10 = *(v0 + 1104);
  if (v7)
  {
    v11 = *(v0 + 936);
    v12 = swift_slowAlloc();
    v127 = v8;
    v129[0] = swift_slowAlloc();
    v13 = v129[0];
    *v12 = 136315394;
    *(v0 + 912) = v11;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v15 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v129);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    *(v0 + 904) = v2;
    v18 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v19 = String.init<A>(reflecting:)();
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v129);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1AEE80000, v5, v6, "Failed load %s, error: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v13, -1, -1);
    MEMORY[0x1B2715BA0](v12, -1, -1);

    v22 = (*(v9 + 8))(v127, v10);
  }

  else
  {

    v22 = (*(v9 + 8))(v8, v10);
  }

  while (1)
  {
    v30 = *(v0 + 1400) + 1;
    if (v30 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v30;
    v31 = *(v0 + 1376);
    if (v30 >= *(v31 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v22, v23, v24);
    }

    v32 = *(v0 + 1152);
    v33 = *(v0 + 1112);
    v34 = *(v0 + 1104);
    v36 = *(v33 + 16);
    v33 += 16;
    v35 = v36;
    v37 = v31 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v33 + 56) * v30;
    *(v0 + 1408) = v36;
    *(v0 + 1416) = v33 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v36(v32, v37, v34);
    v38 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v38;
    *(v0 + 1432) = v39;
    if (v38)
    {
      v62 = v38;
      v63 = *(v0 + 1152);
      v64 = *(v0 + 1096);
      v65 = *(v0 + 1088);
      v66 = *(v0 + 1072);
      v67 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      LOBYTE(v63) = static UTType.== infix(_:_:)();
      v68 = *(v66 + 8);
      *(v0 + 1440) = v68;
      *(v0 + 1448) = (v66 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v68(v65, v67);
      v68(v64, v67);
      if ((v63 & 1) == 0)
      {
        v69 = *(v0 + 1152);
        v70 = *(v0 + 1096);
        v71 = *(v0 + 1088);
        v72 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        LOBYTE(v69) = static UTType.== infix(_:_:)();
        v68(v71, v72);
        v68(v70, v72);
        if ((v69 & 1) == 0)
        {
          v73 = *(v0 + 1296);
          v74 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v74;
          *(v0 + 1520) = v75;
          v102 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v102;
          *(v0 + 176) = v74;
          *(v0 + 184) = v75;
          outlined copy of Data._Representation(v74, v75);
          v128 = (v62 + *v62);
          v103 = v62[1];
          v104 = swift_task_alloc();
          *(v0 + 1528) = v104;
          *v104 = v0;
          v104[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v128(v0 + 136, v0 + 176);
        }
      }

      v97 = *(v0 + 1152);
      v98 = *(v0 + 1080);
      ResolvedTransferRepresentation.contentType.getter();
      v99 = *(MEMORY[0x1E6965B90] + 4);
      v100 = swift_task_alloc();
      *(v0 + 1456) = v100;
      v24 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      *v100 = v0;
      v100[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v101 = *(v0 + 1296);
      v23 = *(v0 + 1280);
      v22 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v22, v23, v24);
    }

    v40 = *(v0 + 1384);
    v35(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v125 = v41;
      v43 = *(v0 + 1136);
      v44 = *(v0 + 1112);
      v45 = *(v0 + 1104);
      v46 = *(v0 + 1024);
      v47 = *(v0 + 1016);
      v48 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      *(v0 + 856) = v123;
      *v48 = 136315138;
      v35(v46, v43, v45);
      (*(v44 + 56))(v46, 0, 1, v45);
      outlined init with copy of URL?(v46, v47, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v44 + 48))(v47, 1, v45) == 1)
      {
        v49 = 0xE300000000000000;
        v50 = 7104878;
      }

      else
      {
        v51 = *(v0 + 1128);
        v52 = *(v0 + 1120);
        v120 = v42;
        v53 = *(v0 + 1112);
        v54 = *(v0 + 1104);
        (*(v53 + 32))(v51, *(v0 + 1016), v54);
        v35(v52, v51, v54);
        v50 = String.init<A>(reflecting:)();
        v49 = v55;
        (*(v53 + 8))(v51, v54);
        v42 = v120;
      }

      v56 = *(v0 + 1152);
      v57 = *(v0 + 1136);
      v58 = *(v0 + 1112);
      v59 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v60 = *(v58 + 8);
      v60(v57, v59);
      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v49, (v0 + 856));

      *(v48 + 4) = v61;
      _os_log_impl(&dword_1AEE80000, v125, v42, "Failed to find importing closure from representation %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v123);
      MEMORY[0x1B2715BA0](v123, -1, -1);
      MEMORY[0x1B2715BA0](v48, -1, -1);

      v22 = (v60)(v56, v59);
    }

    else
    {
      v25 = *(v0 + 1152);
      v26 = *(v0 + 1136);
      v27 = *(v0 + 1112);
      v28 = *(v0 + 1104);

      v29 = *(v27 + 8);
      v29(v26, v28);
      v22 = (v29)(v25, v28);
    }
  }

  v76 = *(v0 + 1376);
  v77 = *(v0 + 1336);
  v78 = *(v0 + 1296);
  v79 = *(v0 + 1288);
  v80 = *(v0 + 1280);
  v81 = *(v0 + 1272);
  v82 = *(v0 + 1256);
  v83 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v84 = 0;
  swift_willThrow();
  (*(v79 + 8))(v78, v80);
  outlined destroy of NSObject?(v77, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v82 + 8))(v81, v83);
  v85 = *(v0 + 1336);
  v86 = *(v0 + 1328);
  v87 = *(v0 + 1320);
  v88 = *(v0 + 1304);
  v89 = *(v0 + 1296);
  v90 = *(v0 + 1272);
  v91 = *(v0 + 1264);
  v92 = *(v0 + 1248);
  v93 = *(v0 + 1224);
  v94 = *(v0 + 1192);
  v105 = *(v0 + 1168);
  v106 = *(v0 + 1160);
  v107 = *(v0 + 1152);
  v108 = *(v0 + 1144);
  v109 = *(v0 + 1136);
  v110 = *(v0 + 1128);
  v111 = *(v0 + 1120);
  v112 = *(v0 + 1096);
  v113 = *(v0 + 1088);
  v114 = *(v0 + 1080);
  v115 = *(v0 + 1056);
  v116 = *(v0 + 1048);
  v117 = *(v0 + 1024);
  v118 = *(v0 + 1016);
  v119 = *(v0 + 1008);
  v121 = *(v0 + 1000);
  v122 = *(v0 + 992);
  v124 = *(v0 + 968);
  v126 = *(v0 + 960);

  v95 = *(v0 + 8);

  return v95();
}

{
  v131 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  outlined consume of Data._Representation(*(v0 + 1464), *(v0 + 1472));
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 576));
  v3 = *(v0 + 1504);
  v4 = *(v0 + 1384);
  v5 = v3;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1152);
  v10 = *(v0 + 1112);
  v11 = *(v0 + 1104);
  if (v8)
  {
    v12 = *(v0 + 936);
    v13 = swift_slowAlloc();
    v128 = v9;
    v130[0] = swift_slowAlloc();
    v14 = v130[0];
    *v13 = 136315394;
    *(v0 + 912) = v12;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v16 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v130);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v0 + 904) = v3;
    v19 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v20 = String.init<A>(reflecting:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v130);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_1AEE80000, v6, v7, "Failed load %s, error: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v14, -1, -1);
    MEMORY[0x1B2715BA0](v13, -1, -1);

    v23 = (*(v10 + 8))(v128, v11);
  }

  else
  {

    v23 = (*(v10 + 8))(v9, v11);
  }

  while (1)
  {
    v31 = *(v0 + 1400) + 1;
    if (v31 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v31;
    v32 = *(v0 + 1376);
    if (v31 >= *(v32 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v23, v24, v25);
    }

    v33 = *(v0 + 1152);
    v34 = *(v0 + 1112);
    v35 = *(v0 + 1104);
    v37 = *(v34 + 16);
    v34 += 16;
    v36 = v37;
    v38 = v32 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v34 + 56) * v31;
    *(v0 + 1408) = v37;
    *(v0 + 1416) = v34 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v37(v33, v38, v35);
    v39 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v39;
    *(v0 + 1432) = v40;
    if (v39)
    {
      v63 = v39;
      v64 = *(v0 + 1152);
      v65 = *(v0 + 1096);
      v66 = *(v0 + 1088);
      v67 = *(v0 + 1072);
      v68 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      LOBYTE(v64) = static UTType.== infix(_:_:)();
      v69 = *(v67 + 8);
      *(v0 + 1440) = v69;
      *(v0 + 1448) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v69(v66, v68);
      v69(v65, v68);
      if ((v64 & 1) == 0)
      {
        v70 = *(v0 + 1152);
        v71 = *(v0 + 1096);
        v72 = *(v0 + 1088);
        v73 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        LOBYTE(v70) = static UTType.== infix(_:_:)();
        v69(v72, v73);
        v69(v71, v73);
        if ((v70 & 1) == 0)
        {
          v74 = *(v0 + 1296);
          v75 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v75;
          *(v0 + 1520) = v76;
          v103 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v103;
          *(v0 + 176) = v75;
          *(v0 + 184) = v76;
          outlined copy of Data._Representation(v75, v76);
          v129 = (v63 + *v63);
          v104 = v63[1];
          v105 = swift_task_alloc();
          *(v0 + 1528) = v105;
          *v105 = v0;
          v105[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v129(v0 + 136, v0 + 176);
        }
      }

      v98 = *(v0 + 1152);
      v99 = *(v0 + 1080);
      ResolvedTransferRepresentation.contentType.getter();
      v100 = *(MEMORY[0x1E6965B90] + 4);
      v101 = swift_task_alloc();
      *(v0 + 1456) = v101;
      v25 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      *v101 = v0;
      v101[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v102 = *(v0 + 1296);
      v24 = *(v0 + 1280);
      v23 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v23, v24, v25);
    }

    v41 = *(v0 + 1384);
    v36(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v126 = v42;
      v44 = *(v0 + 1136);
      v45 = *(v0 + 1112);
      v46 = *(v0 + 1104);
      v47 = *(v0 + 1024);
      v48 = *(v0 + 1016);
      v49 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      *(v0 + 856) = v124;
      *v49 = 136315138;
      v36(v47, v44, v46);
      (*(v45 + 56))(v47, 0, 1, v46);
      outlined init with copy of URL?(v47, v48, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v45 + 48))(v48, 1, v46) == 1)
      {
        v50 = 0xE300000000000000;
        v51 = 7104878;
      }

      else
      {
        v52 = *(v0 + 1128);
        v53 = *(v0 + 1120);
        v121 = v43;
        v54 = *(v0 + 1112);
        v55 = *(v0 + 1104);
        (*(v54 + 32))(v52, *(v0 + 1016), v55);
        v36(v53, v52, v55);
        v51 = String.init<A>(reflecting:)();
        v50 = v56;
        (*(v54 + 8))(v52, v55);
        v43 = v121;
      }

      v57 = *(v0 + 1152);
      v58 = *(v0 + 1136);
      v59 = *(v0 + 1112);
      v60 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v61 = *(v59 + 8);
      v61(v58, v60);
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, (v0 + 856));

      *(v49 + 4) = v62;
      _os_log_impl(&dword_1AEE80000, v126, v43, "Failed to find importing closure from representation %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v124);
      MEMORY[0x1B2715BA0](v124, -1, -1);
      MEMORY[0x1B2715BA0](v49, -1, -1);

      v23 = (v61)(v57, v60);
    }

    else
    {
      v26 = *(v0 + 1152);
      v27 = *(v0 + 1136);
      v28 = *(v0 + 1112);
      v29 = *(v0 + 1104);

      v30 = *(v28 + 8);
      v30(v27, v29);
      v23 = (v30)(v26, v29);
    }
  }

  v77 = *(v0 + 1376);
  v78 = *(v0 + 1336);
  v79 = *(v0 + 1296);
  v80 = *(v0 + 1288);
  v81 = *(v0 + 1280);
  v82 = *(v0 + 1272);
  v83 = *(v0 + 1256);
  v84 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v85 = 0;
  swift_willThrow();
  (*(v80 + 8))(v79, v81);
  outlined destroy of NSObject?(v78, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v83 + 8))(v82, v84);
  v86 = *(v0 + 1336);
  v87 = *(v0 + 1328);
  v88 = *(v0 + 1320);
  v89 = *(v0 + 1304);
  v90 = *(v0 + 1296);
  v91 = *(v0 + 1272);
  v92 = *(v0 + 1264);
  v93 = *(v0 + 1248);
  v94 = *(v0 + 1224);
  v95 = *(v0 + 1192);
  v106 = *(v0 + 1168);
  v107 = *(v0 + 1160);
  v108 = *(v0 + 1152);
  v109 = *(v0 + 1144);
  v110 = *(v0 + 1136);
  v111 = *(v0 + 1128);
  v112 = *(v0 + 1120);
  v113 = *(v0 + 1096);
  v114 = *(v0 + 1088);
  v115 = *(v0 + 1080);
  v116 = *(v0 + 1056);
  v117 = *(v0 + 1048);
  v118 = *(v0 + 1024);
  v119 = *(v0 + 1016);
  v120 = *(v0 + 1008);
  v122 = *(v0 + 1000);
  v123 = *(v0 + 992);
  v125 = *(v0 + 968);
  v127 = *(v0 + 960);

  v96 = *(v0 + 8);

  return v96();
}

{
  v133 = v0;
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1296);
  v4 = *(v0 + 952);
  outlined consume of Data._Representation(*(v0 + 1512), *(v0 + 1520));
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));
  $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(v4, v3);
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v2);
  v5 = *(v0 + 1536);
  v6 = *(v0 + 1384);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1112);
  v13 = *(v0 + 1104);
  if (v10)
  {
    v14 = *(v0 + 936);
    v15 = swift_slowAlloc();
    v130 = v11;
    v132[0] = swift_slowAlloc();
    v16 = v132[0];
    *v15 = 136315394;
    *(v0 + 912) = v14;
    MetatypeMetadata = swift_getMetatypeMetadata();
    v18 = >> prefix<A>(_:)(v0 + 912, MetatypeMetadata);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v132);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    *(v0 + 904) = v5;
    v21 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v22 = String.init<A>(reflecting:)();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v132);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1AEE80000, v8, v9, "Failed load %s, error: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v16, -1, -1);
    MEMORY[0x1B2715BA0](v15, -1, -1);

    v25 = (*(v12 + 8))(v130, v13);
  }

  else
  {

    v25 = (*(v12 + 8))(v11, v13);
  }

  while (1)
  {
    v33 = *(v0 + 1400) + 1;
    if (v33 == *(v0 + 1392))
    {
      break;
    }

    *(v0 + 1400) = v33;
    v34 = *(v0 + 1376);
    if (v33 >= *(v34 + 16))
    {
      __break(1u);
      return MEMORY[0x1EEDBF578](v25, v26, v27);
    }

    v35 = *(v0 + 1152);
    v36 = *(v0 + 1112);
    v37 = *(v0 + 1104);
    v39 = *(v36 + 16);
    v36 += 16;
    v38 = v39;
    v40 = v34 + ((*(v0 + 1544) + 32) & ~*(v0 + 1544)) + *(v36 + 56) * v33;
    *(v0 + 1408) = v39;
    *(v0 + 1416) = v36 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v39(v35, v40, v37);
    v41 = ResolvedTransferRepresentation.importing.getter();
    *(v0 + 1424) = v41;
    *(v0 + 1432) = v42;
    if (v41)
    {
      v65 = v41;
      v66 = *(v0 + 1152);
      v67 = *(v0 + 1096);
      v68 = *(v0 + 1088);
      v69 = *(v0 + 1072);
      v70 = *(v0 + 1064);
      ResolvedTransferRepresentation.contentType.getter();
      static UTType.url.getter();
      LOBYTE(v66) = static UTType.== infix(_:_:)();
      v71 = *(v69 + 8);
      *(v0 + 1440) = v71;
      *(v0 + 1448) = (v69 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v71(v68, v70);
      v71(v67, v70);
      if ((v66 & 1) == 0)
      {
        v72 = *(v0 + 1152);
        v73 = *(v0 + 1096);
        v74 = *(v0 + 1088);
        v75 = *(v0 + 1064);
        ResolvedTransferRepresentation.contentType.getter();
        static UTType.fileURL.getter();
        LOBYTE(v72) = static UTType.== infix(_:_:)();
        v71(v74, v75);
        v71(v73, v75);
        if ((v72 & 1) == 0)
        {
          v76 = *(v0 + 1296);
          v77 = Data.init(contentsOf:options:)();
          *(v0 + 1512) = v77;
          *(v0 + 1520) = v78;
          v105 = MEMORY[0x1E6965B68];
          *(v0 + 200) = MEMORY[0x1E6969080];
          *(v0 + 208) = v105;
          *(v0 + 176) = v77;
          *(v0 + 184) = v78;
          outlined copy of Data._Representation(v77, v78);
          v131 = (v65 + *v65);
          v106 = v65[1];
          v107 = swift_task_alloc();
          *(v0 + 1528) = v107;
          *v107 = v0;
          v107[1] = GroupSessionJournal.Attachment.load<A>(_:);

          return v131(v0 + 136, v0 + 176);
        }
      }

      v100 = *(v0 + 1152);
      v101 = *(v0 + 1080);
      ResolvedTransferRepresentation.contentType.getter();
      v102 = *(MEMORY[0x1E6965B90] + 4);
      v103 = swift_task_alloc();
      *(v0 + 1456) = v103;
      v27 = _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      *v103 = v0;
      v103[1] = GroupSessionJournal.Attachment.load<A>(_:);
      v104 = *(v0 + 1296);
      v26 = *(v0 + 1280);
      v25 = *(v0 + 1080);

      return MEMORY[0x1EEDBF578](v25, v26, v27);
    }

    v43 = *(v0 + 1384);
    v38(*(v0 + 1136), *(v0 + 1152), *(v0 + 1104));
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v128 = v44;
      v46 = *(v0 + 1136);
      v47 = *(v0 + 1112);
      v48 = *(v0 + 1104);
      v49 = *(v0 + 1024);
      v50 = *(v0 + 1016);
      v51 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      *(v0 + 856) = v126;
      *v51 = 136315138;
      v38(v49, v46, v48);
      (*(v47 + 56))(v49, 0, 1, v48);
      outlined init with copy of URL?(v49, v50, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      if ((*(v47 + 48))(v50, 1, v48) == 1)
      {
        v52 = 0xE300000000000000;
        v53 = 7104878;
      }

      else
      {
        v54 = *(v0 + 1128);
        v55 = *(v0 + 1120);
        v123 = v45;
        v56 = *(v0 + 1112);
        v57 = *(v0 + 1104);
        (*(v56 + 32))(v54, *(v0 + 1016), v57);
        v38(v55, v54, v57);
        v53 = String.init<A>(reflecting:)();
        v52 = v58;
        (*(v56 + 8))(v54, v57);
        v45 = v123;
      }

      v59 = *(v0 + 1152);
      v60 = *(v0 + 1136);
      v61 = *(v0 + 1112);
      v62 = *(v0 + 1104);
      outlined destroy of NSObject?(*(v0 + 1024), &_s16CoreTransferable30ResolvedTransferRepresentationVSgMd, &_s16CoreTransferable30ResolvedTransferRepresentationVSgMR);
      v63 = *(v61 + 8);
      v63(v60, v62);
      v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v52, (v0 + 856));

      *(v51 + 4) = v64;
      _os_log_impl(&dword_1AEE80000, v128, v45, "Failed to find importing closure from representation %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v126);
      MEMORY[0x1B2715BA0](v126, -1, -1);
      MEMORY[0x1B2715BA0](v51, -1, -1);

      v25 = (v63)(v59, v62);
    }

    else
    {
      v28 = *(v0 + 1152);
      v29 = *(v0 + 1136);
      v30 = *(v0 + 1112);
      v31 = *(v0 + 1104);

      v32 = *(v30 + 8);
      v32(v29, v31);
      v25 = (v32)(v28, v31);
    }
  }

  v79 = *(v0 + 1376);
  v80 = *(v0 + 1336);
  v81 = *(v0 + 1296);
  v82 = *(v0 + 1288);
  v83 = *(v0 + 1280);
  v84 = *(v0 + 1272);
  v85 = *(v0 + 1256);
  v86 = *(v0 + 1200);

  lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
  swift_allocError();
  *v87 = 0;
  swift_willThrow();
  (*(v82 + 8))(v81, v83);
  outlined destroy of NSObject?(v80, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(v85 + 8))(v84, v86);
  v88 = *(v0 + 1336);
  v89 = *(v0 + 1328);
  v90 = *(v0 + 1320);
  v91 = *(v0 + 1304);
  v92 = *(v0 + 1296);
  v93 = *(v0 + 1272);
  v94 = *(v0 + 1264);
  v95 = *(v0 + 1248);
  v96 = *(v0 + 1224);
  v97 = *(v0 + 1192);
  v108 = *(v0 + 1168);
  v109 = *(v0 + 1160);
  v110 = *(v0 + 1152);
  v111 = *(v0 + 1144);
  v112 = *(v0 + 1136);
  v113 = *(v0 + 1128);
  v114 = *(v0 + 1120);
  v115 = *(v0 + 1096);
  v116 = *(v0 + 1088);
  v117 = *(v0 + 1080);
  v118 = *(v0 + 1056);
  v119 = *(v0 + 1048);
  v120 = *(v0 + 1024);
  v121 = *(v0 + 1016);
  v122 = *(v0 + 1008);
  v124 = *(v0 + 1000);
  v125 = *(v0 + 992);
  v127 = *(v0 + 968);
  v129 = *(v0 + 960);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1456);
  v7 = *v3;
  v5[183] = a1;
  v5[184] = a2;
  v5[185] = v2;

  v8 = v4[181];
  (v4[180])(v4[135], v4[133]);
  if (v2)
  {
    v9 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  else
  {
    v9 = GroupSessionJournal.Attachment.load<A>(_:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = type metadata accessor for ResolvedTransferRepresentation();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v38;
  }

  return result;
}

void $defer #1 <A>() in GroupSessionJournal.Attachment.load<A>(_:)(uint64_t a1, uint64_t a2)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GroupSessionJournal.Attachment(0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(a1 + *(v13 + 24), v12, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  outlined destroy of GroupSessionJournal.Attachment(v12, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  if (a1 != 2)
  {
LABEL_11:
    v38 = *MEMORY[0x1E69E9840];
    return;
  }

  v14 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v15);
  v17 = v16;
  v40[0] = 0;
  v18 = [v14 removeItemAtURL:v16 error:v40];

  v19 = v40[0];
  if (!v18)
  {
    v39[1] = v40[0];
    v22 = v40[0];
    v23 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for ledger != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Log.ledger);
    (*(v5 + 16))(v8, a2, v4);
    v25 = v23;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v40[0] = v29;
      *v28 = 136315394;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      (*(v5 + 8))(v8, v4);
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v40);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2080;
      v39[2] = v23;
      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v35 = String.init<A>(reflecting:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, v40);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_1AEE80000, v26, v27, "Failed to remove file: %s, reason: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v29, -1, -1);
      MEMORY[0x1B2715BA0](v28, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v8, v4);
    }

    goto LABEL_11;
  }

  v20 = *MEMORY[0x1E69E9840];

  v21 = v19;
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  v6 = type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource(0);
  v5[6] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadMetadata<A>(of:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  v4 = type metadata accessor for GroupSessionJournal.Attachment(0);
  outlined init with copy of GroupSessionJournal.Attachment.AttachmentSource(v3 + *(v4 + 24), v2, type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v7 = v0[7];
    v8 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMd, &_s10Foundation3URLV14attachmentData_AA0D0VSg17developerMetadatatMR) + 48));
    v9 = *v8;
    v10 = v8[1];
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 8))(v7, v11);
    if (v10 >> 60 == 15)
    {
      if (one-time initialization token for ledger != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      __swift_project_value_buffer(v12, static Log.ledger);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1AEE80000, v13, v14, "Failed to find the metadata", v15, 2u);
        MEMORY[0x1B2715BA0](v15, -1, -1);
      }

      lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
      swift_allocError();
      *v16 = 2;
      swift_willThrow();
      outlined consume of Data?(v9, v10);
    }

    else
    {
      v21 = v0[3];
      v20 = v0[4];
      v22 = v0[2];
      v23 = type metadata accessor for JSONDecoder();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      JSONDecoder.init()();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      outlined consume of Data._Representation(v9, v10);
    }

    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined destroy of GroupSessionJournal.Attachment(v0[7], type metadata accessor for GroupSessionJournal.Attachment.AttachmentSource);
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
LABEL_14:
    v26 = v0[7];

    v27 = v0[1];

    return v27();
  }

  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  v18 = v0[5];

  return GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(v18);
}

{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];
  v7 = type metadata accessor for JSONDecoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  outlined consume of Data._Representation(v1, v2);
  v10 = v0[7];

  v11 = v0[1];

  return v11();
}

{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t GroupSessionJournal.Attachment.loadMetadata<A>(of:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 64);
  v8 = *v3;
  *(*v3 + 72) = v2;

  if (v2)
  {
    v9 = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  }

  else
  {
    *(v6 + 80) = a2;
    *(v6 + 88) = a1;
    v9 = GroupSessionJournal.Attachment.loadMetadata<A>(of:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)()
{
  v1 = v0[3];
  v2 = *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);
  Strong = swift_weakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v0[5] = *(Strong + 16);
    v4 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 56);
    swift_unknownObjectRetain();
    v13 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
    v9 = v0[2];

    return v13(v9, ObjectType, v4);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

{
  v2 = v0[4];
  v1 = v0[5];
  swift_unknownObjectRelease();

  v3 = v0[1];
  v5 = v0[8];
  v4 = v0[9];

  return v3(v4, v5);
}

{
  v2 = v0[4];
  v1 = v0[5];
  swift_unknownObjectRelease();

  v3 = v0[7];
  v4 = v0[1];

  return v4();
}

uint64_t GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v9 = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v9 = GroupSessionJournal.Attachment.loadMetadataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:), 0, 0);
}

uint64_t GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:)()
{
  v1 = v0[4];
  v2 = *(type metadata accessor for GroupSessionJournal.Attachment(0) + 20);
  Strong = swift_weakLoadStrong();
  v0[5] = Strong;
  if (Strong)
  {
    v0[6] = *(Strong + 16);
    v4 = *(Strong + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 48);
    swift_unknownObjectRetain();
    v14 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[7] = v8;
    *v8 = v0;
    v8[1] = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
    v9 = v0[2];
    v10 = v0[3];

    return v14(v9, v10, ObjectType, v4);
  }

  else
  {
    lazy protocol witness table accessor for type GroupSessionJournal.Errors and conformance GroupSessionJournal.Errors();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
    v13 = v0[1];

    return v13();
  }
}

{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
  }

  else
  {
    v3 = GroupSessionJournal.Attachment.loadDataFromAttachment(attachmentID:);
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[1];

  return v3();
}

{
  v2 = v0[5];
  v1 = v0[6];
  swift_unknownObjectRelease();

  v3 = v0[8];
  v4 = v0[1];

  return v4();
}

uint64_t GroupSessionJournal.Attachments.makeAsyncIterator()@<X0>(uint64_t *a1@<X8>)
{
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 72) = static Subscribers.Demand.none.getter();
  *v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionJournal.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionJournal.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  *a1 = v3;
  return result;
}

uint64_t GroupSessionJournal.Attachments.Iterator.baseIterator.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t GroupSessionJournal.Attachments.Iterator.next()()
{
  *(v1 + 24) = v0;
  return MEMORY[0x1EEE6DFA0](GroupSessionJournal.Attachments.Iterator.next(), 0, 0);
}

{
  v1 = v0[3];
  v2 = *v1;
  v0[4] = *v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x1E69E88F0] + 4);

  v5 = swift_task_alloc();
  v0[6] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMR);
  *v5 = v0;
  v5[1] = GroupSessionJournal.Attachments.Iterator.next();

  return MEMORY[0x1EEE6DE18](v0 + 2, &async function pointer to partial apply for specialized closure #2 in _PublisherElements.Iterator.next(), v3, partial apply for specialized closure #1 in _PublisherElements.Iterator.next(), v2, 0, 0, v6);
}

void GroupSessionJournal.Attachments.Iterator.next()()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[4];
    v6 = v2[5];

    v7 = v2[2];

    v8 = *(v4 + 8);

    v8(v7);
  }
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator, 0, 0);
}

uint64_t protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator()
{
  v1 = v0[4];
  v2 = *v1;
  v0[5] = *v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *(v3 + 16) = v1;
  v4 = *(MEMORY[0x1E69E88F0] + 4);

  v5 = swift_task_alloc();
  v0[7] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMd, &_sSay15GroupActivities0A14SessionJournalC10AttachmentVGSgMR);
  *v5 = v0;
  v5[1] = protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator;

  return MEMORY[0x1EEE6DE18](v0 + 2, &closure #2 in _PublisherElements.Iterator.next()specialized partial apply, v3, closure #1 in _PublisherElements.Iterator.next()specialized partial apply, v2, 0, 0, v6);
}

{
  **(v0 + 24) = *(v0 + 64);
  return (*(v0 + 8))();
}

void protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[5];
    v6 = v2[6];

    v2[8] = v2[2];

    MEMORY[0x1EEE6DFA0](protocol witness for AsyncIteratorProtocol.next() in conformance GroupSessionJournal.Attachments.Iterator, 0, 0);
  }
}

uint64_t _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTW(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF15GroupActivities0E14SessionJournalC11AttachmentsV8IteratorV_Tg5(a2, a3);
}

uint64_t _s15GroupActivities0A14SessionJournalC11AttachmentsV8IteratorVScIAAScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTWTQ0_(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t protocol witness for AsyncSequence.makeAsyncIterator() in conformance GroupSessionJournal.Attachments@<X0>(uint64_t *a1@<X8>)
{
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  v5 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *(v3 + 72) = static Subscribers.Demand.none.getter();
  *v4 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[GroupSessionJournal.Attachment], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMd, &_s7Combine12AnyPublisherVySay15GroupActivities0D14SessionJournalC10AttachmentVGs5NeverOGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type _PublisherElements<AnyPublisher<[GroupSessionJournal.Attachment], Never>>.Iterator.Inner and conformance _PublisherElements<A>.Iterator.Inner, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMd, &_s15GroupActivities18_PublisherElementsV8IteratorV5InnerCy7Combine03AnyC0VySayAA0A14SessionJournalC10AttachmentVGs5NeverOG__GMR);
  Publisher.subscribe<A>(_:)();

  *a1 = v3;
}

Swift::Int GroupSessionJournal.InternalErrors.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

Swift::Int GroupSessionJournal.Errors.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1);
  return Hasher._finalize()();
}

uint64_t closure #2 in static URL.file<A>(from:)()
{
  v0 = type metadata accessor for UTType();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  ResolvedTransferRepresentation.contentType.getter();
  v5 = static UTType.== infix(_:_:)();
  (*(v1 + 8))(v4, v0);
  return v5 & 1;
}

uint64_t ResolvedTransferRepresentation.data<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[16] = a3;
  v4[17] = v3;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](ResolvedTransferRepresentation.data<A>(from:), 0, 0);
}

uint64_t ResolvedTransferRepresentation.data<A>(from:)()
{
  v1 = *(v0 + 136);
  v2 = ResolvedTransferRepresentation.exporting.getter();
  *(v0 + 144) = v2;
  *(v0 + 152) = v3;
  if (v2)
  {
    v4 = v2;
    v5 = *(v0 + 112);
    v13 = *(v0 + 120);
    *(v0 + 80) = v13;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 56));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v5);
    v14 = (v4 + *v4);
    v7 = v4[1];
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = ResolvedTransferRepresentation.data<A>(from:);

    return v14(v0 + 16, v0 + 56);
  }

  else
  {
    v10 = type metadata accessor for TransferableError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E6965BC8], v10);
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v6 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = ResolvedTransferRepresentation.data<A>(from:);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56));
    v4 = ResolvedTransferRepresentation.data<A>(from:);
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

{
  v1 = v0[19];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable0B8Currency_pMd, &_s16CoreTransferable0B8Currency_pMR);
  if (swift_dynamicCast())
  {
    v2 = v0[12];
    v3 = v0[13];
    v4 = v0[1];

    return v4(v2, v3);
  }

  else
  {
    v6 = type metadata accessor for TransferableError();
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type TransferableError and conformance TransferableError, MEMORY[0x1E6965BD8]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x1E6965BC8], v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

{
  v1 = v0[19];
  outlined consume of (@escaping @callee_guaranteed (@unowned Bool) -> ())?(v0[18]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v2 = v0[21];
  v3 = v0[1];

  return v3();
}

uint64_t key path getter for GroupSessionJournal._attachments : GroupSessionJournal@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t key path setter for GroupSessionJournal._attachments : GroupSessionJournal(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t outlined init with take of GroupSessionJournal.Attachment(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t specialized closure #2 in _PublisherElements.Iterator.next()(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}

{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x1EEE6DFA0](specialized closure #2 in _PublisherElements.Iterator.next(), 0, 0);
}