id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v17 = *v4;
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for _EXQuery();
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7];
    v21 = *(v20 + 8 * v8);
    *(v20 + 8 * v8) = a1;
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  *(v19[7] + 8 * v8) = a1;
  v23 = v19[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v24;

  return a2;
}

uint64_t _EXQuery.hash.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____EXQuery_inner;
  swift_beginAccess();
  outlined init with copy of _InnerAppExtensionIdentity(v0 + v2, v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  if (v7)
  {
    v8 = MEMORY[0x1865F3830](v5, v7);
  }

  else
  {
    v8 = Int.hashValue.getter();
  }

  outlined init with copy of _InnerAppExtensionIdentity(v1 + v2, v13);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v11 = (*(v10 + 40))(v9, v10);
  __swift_destroy_boxed_opaque_existential_0Tm(v13);
  return MEMORY[0x1865F4330](v11) ^ v8;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMd, &_ss11_SetStorageCy19ExtensionFoundation14_EXActiveQueryC06ActiveF8ObserverVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = result;
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
    v35 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v36 = (v11 - 1) & v11;
LABEL_17:
      v38 = *(*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v18 = v6[5];
      Hasher.init(_seed:)();
      swift_getObjectType();
      v19 = *(*(&v38 + 1) + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v37 = &v32;
      v21 = *(AssociatedTypeWitness - 8);
      v22 = *(v21 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v24 = &v32 - v23;
      v39 = v38;
      swift_unknownObjectRetain();
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      (*(v21 + 8))(v24, AssociatedTypeWitness);
      result = Hasher._finalize()();
      v6 = v34;
      v25 = -1 << *(v34 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v13 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v3 = v35;
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v26) & ~*(v13 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v3 = v35;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v6[6] + 16 * v14) = v38;
      ++v6[2];
      v11 = v36;
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

        v2 = v33;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
  v41 = type metadata accessor for UUID();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMd, &_ss11_SetStorageCy19ExtensionFoundation03AppC8IdentityVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v11 = 0;
    v12 = v7 + 56;
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
    v38 = (v4 + 8);
    v39 = v7;
    v17 = result + 56;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      outlined init with copy of AppExtensionIdentity(*(v7 + 48) + 40 * (v22 | (v11 << 6)), &v42);
      v25 = *(v10 + 40);
      Hasher.init(_seed:)();
      v26 = *(&v43 + 1);
      v27 = v44;
      __swift_project_boxed_opaque_existential_1(&v42, *(&v43 + 1));
      v28 = v40;
      (*(v27 + 56))(v26, v27);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v29 = v41;
      dispatch thunk of Hashable.hash(into:)();
      (*v38)(v28, v29);
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v39;
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

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v39;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 40 * v18;
      v20 = v42;
      v21 = v43;
      *(v19 + 32) = v44;
      *v19 = v20;
      *(v19 + 16) = v21;
      ++*(v10 + 16);
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v37;
        goto LABEL_28;
      }

      v24 = *(v12 + 8 * v11);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v15 = (v24 - 1) & v24;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMd, _ss11_SetStorageCy19ExtensionFoundation03AppC5PointVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
      v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();

      v25 = v23;
      String.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 32 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v23;
      ++*(v6 + 16);
      v3 = v34;
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

        v2 = v33;
        goto LABEL_28;
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
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v33 = *(v4 - 8);
  v5 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMd, &_ss11_SetStorageCy19ExtensionFoundation23LocalLSDatabaseObserverC0G0VGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v33 + 72);
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v8 + 48) + v22 * (v19 | (v12 << 6)), v7);
      v23 = *(v11 + 40);
      Hasher.init(_seed:)();
      UUID.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v11 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = outlined init with take of LocalLSDatabaseObserver.Observer(v7, *(v11 + 48) + v18 * v22);
      ++*(v11 + 16);
    }

    v20 = v12;
    while (1)
    {
      v12 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v21 = *(v8 + 56 + 8 * v12);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
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
    *v2 = v11;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      outlined init with copy of AnyHashable(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
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

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v5);
}

unint64_t lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver()
{
  result = lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver;
  if (!lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for _EXQuery();
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
    v6 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1865F3E60](v9, a1);
      outlined destroy of AnyHashable(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v20 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
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
      _s10Foundation4UUIDVACSHAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID);
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

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall _EXActiveQuery.update()()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v201 = *(v2 - 8);
  v3 = v201[8];
  v4 = MEMORY[0x1EEE9AC00](v2);
  v209 = &v190 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v190 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v190 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v190 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v190 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v190 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v207 = &v190 - v21;
  UUID.init()();
  v23 = *(v0 + 16);
  v22 = *(v0 + 24);
  v24 = *&v23[OBJC_IVAR____EXQuery_resultType];
  v208 = v2;
  if (v24)
  {
    v199 = _EXDiscoveryController.identities(matching:)(v23);
    v25 = *&v199[OBJC_IVAR____EXQueryResult_availablility];
    if (!v25)
    {
      goto LABEL_104;
    }

    v26 = v23;
    type metadata accessor for _EXExtensionAvailability();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v22 = v25;
    if (![v22 isKindOfClass_])
    {
      goto LABEL_106;
    }

    v28 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
    *&v28[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = MEMORY[0x1E69E7CD0];
    *&v28[OBJC_IVAR____EXQueryResult_identities] = 0;
    *&v28[OBJC_IVAR____EXQueryResult_availablility] = v25;
    v29 = type metadata accessor for _EXQueryResult();
    v219.receiver = v28;
    v219.super_class = v29;
    v206 = objc_msgSendSuper2(&v219, sel_init);
    swift_beginAccess();
    v30 = v1[4];

    C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation14_EXActiveQueryC06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n(v31);

    v200 = C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n;
    v34 = *(C06ActiveG8ObserverVG_AF01_fgI0_ps5NeverOTg504_s19d13Foundation14_fg22C9observersSayAA01_cD8I29_pGvgAaE_pAC06ActivedF0VXEfU_Tf1cn_n + 16);
    v35 = v209;
    if (v34)
    {
      v36 = (v200 + 32);
      v204 = (v201 + 1);
      v205 = (v201 + 2);
      *&v33 = 136446466;
      v202 = v33;
      v203 = v26;
      do
      {
        v38 = one-time initialization token for discovery;
        v210 = *v36;
        swift_unknownObjectRetain();
        if (v38 != -1)
        {
          swift_once();
        }

        v39 = type metadata accessor for Logger();
        __swift_project_value_buffer(v39, static Logger.discovery);
        (*v205)(v35, v207, v2);
        swift_unknownObjectRetain();
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.debug.getter();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v218[0] = v43;
          *v42 = v202;
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v44 = dispatch thunk of CustomStringConvertible.description.getter();
          v46 = v45;
          (*v204)(v209, v208);
          v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, v218);

          *(v42 + 4) = v47;
          *(v42 + 12) = 2082;
          v220 = v210;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation22_EXActiveQueryObserver_pMd, &_s19ExtensionFoundation22_EXActiveQueryObserver_pMR);
          v48 = String.init<A>(describing:)();
          v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v218);

          *(v42 + 14) = v50;
          v2 = v208;
          _os_log_impl(&dword_1847D1000, v40, v41, "[%{public}s] Sending update observer update to %{public}s", v42, 0x16u);
          swift_arrayDestroy();
          v51 = v43;
          v26 = v203;
          MEMORY[0x1865F56C0](v51, -1, -1);
          v52 = v42;
          v35 = v209;
          MEMORY[0x1865F56C0](v52, -1, -1);
        }

        else
        {

          (*v204)(v35, v2);
        }

        ObjectType = swift_getObjectType();
        (*(*(&v210 + 1) + 24))(v26, v206, ObjectType);
        swift_unknownObjectRelease();
        ++v36;
        --v34;
      }

      while (v34);
    }

    (v201[1])(v207, v2);
    return;
  }

  v209 = v20;
  v191 = v8;
  type metadata accessor for _EXQuery();
  if (![v23 isKindOfClass_])
  {
    goto LABEL_107;
  }

  *&v202 = v17;
  v204 = v14;
  v200 = v11;
  v53 = v23;
  v22 = _EXDiscoveryController.identities(matching:)(v53);
  v205 = v53;

  v54 = *(v22 + OBJC_IVAR____EXQueryResult_identities);

  if (!v54)
  {
    goto LABEL_105;
  }

  swift_beginAccess();
  v55 = v1[5];
  v56 = MEMORY[0x1E69E7CD0];
  v1[5] = MEMORY[0x1E69E7CD0];
  v57 = *(v55 + 2);
  v206 = v55;
  v58 = v209;
  v193 = v54;
  *&v194 = v1;
  if (v57)
  {
    v59 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
    *&v59[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = v56;
    *&v59[OBJC_IVAR____EXQueryResult_identities] = v54;
    *&v59[OBJC_IVAR____EXQueryResult_availablility] = 0;
    v60 = type metadata accessor for _EXQueryResult();
    v211.receiver = v59;
    v211.super_class = v60;
    v22 = sel_init;

    v61 = objc_msgSendSuper2(&v211, sel_init);
    v62 = v55 + 56;
    v63 = 1 << v55[32];
    v64 = -1;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    v65 = v64 & *(v55 + 7);
    v66 = (v63 + 63) >> 6;
    v198 = (v201 + 2);
    v199 = v61;
    v197 = (v201 + 1);

    v67 = 0;
    *&v68 = 136446466;
    v192 = v68;
    while (v65)
    {
LABEL_26:
      v71 = one-time initialization token for discovery;
      v210 = *(*(v55 + 6) + ((v67 << 10) | (16 * __clz(__rbit64(v65)))));
      v72 = v210;
      swift_unknownObjectRetain();
      if (v71 != -1)
      {
        swift_once();
      }

      v73 = type metadata accessor for Logger();
      __swift_project_value_buffer(v73, static Logger.discovery);
      (*v198)(v58, v207, v2);
      swift_unknownObjectRetain();
      v74 = v2;
      v75 = Logger.logObject.getter();
      v76 = v58;
      v77 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      LODWORD(v203) = v77;
      if (os_log_type_enabled(v75, v77))
      {
        v78 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        *&v220 = v196;
        *v78 = v192;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v195 = v75;
        v79 = v74;
        v80 = dispatch thunk of CustomStringConvertible.description.getter();
        v82 = v81;
        (*v197)(v209, v79);
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v82, &v220);

        *(v78 + 4) = v83;
        *(v78 + 12) = 2082;
        v213 = v210;
        swift_unknownObjectRetain();
        v84 = String.init<A>(describing:)();
        v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v84, v85, &v220);

        *(v78 + 14) = v86;
        v55 = v206;
        v87 = v195;
        _os_log_impl(&dword_1847D1000, v195, v203, "[%{public}s] Sending initial observer update to %{public}s", v78, 0x16u);
        v88 = v196;
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v88, -1, -1);
        v89 = v78;
        v58 = v209;
        MEMORY[0x1865F56C0](v89, -1, -1);

        v2 = v208;
      }

      else
      {

        (*v197)(v76, v74);
        v2 = v74;
        v58 = v76;
        v55 = v206;
      }

      v65 &= v65 - 1;
      v69 = swift_getObjectType();
      v22 = v72;
      (*(*(&v210 + 1) + 24))(v205, v199, v69);
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v70 = v67 + 1;
      if (__OFADD__(v67, 1))
      {
        goto LABEL_102;
      }

      if (v70 >= v66)
      {
        break;
      }

      v65 = *&v62[8 * v70];
      ++v67;
      if (v65)
      {
        v67 = v70;
        goto LABEL_26;
      }
    }

    v54 = v193;
    v1 = v194;
    v56 = MEMORY[0x1E69E7CD0];
  }

  v90 = v1[6];
  v217 = v56;
  *&v210 = v90;
  if ((v54 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, 255, type metadata accessor for _EXExtensionIdentity);
    Set.Iterator.init(_cocoa:)();
    v91 = *(&v220 + 1);
    v54 = v220;
    v22 = v221;
    v92 = v222;
    v93 = v223;
  }

  else
  {
    v94 = -1 << *(v54 + 32);
    v91 = v54 + 56;
    v22 = ~v94;
    v95 = -v94;
    if (v95 < 64)
    {
      v96 = ~(-1 << v95);
    }

    else
    {
      v96 = -1;
    }

    v93 = v96 & *(v54 + 56);

    v92 = 0;
  }

  v203 = v22;
  v97 = (v22 + 64) >> 6;
  v209 = (v201 + 1);
  if (v54 < 0)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v98 = v92;
    v99 = v93;
    v100 = v92;
    if (!v93)
    {
      break;
    }

LABEL_42:
    v101 = (v99 - 1) & v99;
    v102 = *(*(v54 + 48) + ((v100 << 9) | (8 * __clz(__rbit64(v99)))));
    if (!v102)
    {
      goto LABEL_48;
    }

    while (1)
    {
      v104 = [v102 uniqueIdentifier];
      v105 = v204;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = &v217;
      v106 = v202;
      specialized Set._Variant.insert(_:)(v202, v105);

      (*v209)(v106, v208);
      v92 = v100;
      v93 = v101;
      if ((v54 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_44:
      v103 = __CocoaSet.Iterator.next()();
      if (v103)
      {
        v215 = v103;
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v102 = v213;
        v100 = v92;
        v101 = v93;
        if (v213)
        {
          continue;
        }
      }

      goto LABEL_48;
    }
  }

  while (1)
  {
    v100 = v98 + 1;
    if (__OFADD__(v98, 1))
    {
      goto LABEL_101;
    }

    if (v100 >= v97)
    {
      break;
    }

    v99 = *(v91 + 8 * v100);
    ++v98;
    if (v99)
    {
      goto LABEL_42;
    }
  }

LABEL_48:
  outlined consume of [String : Any].Iterator._Variant();
  v107 = v217;
  v108 = v210;
  if (*(v210 + 16) <= *(v217 + 16) >> 3)
  {
    *&v213 = v217;

    specialized Set._subtract<A>(_:)(v108);
    v109 = v213;
  }

  else
  {

    v109 = specialized _NativeSet.subtracting<A>(_:)(v108, v107);
  }

  v110 = v208;
  v111 = v206;
  v112 = v194;
  if (*(v107 + 16) <= *(v108 + 16) >> 3)
  {
    *&v213 = v108;
    specialized Set._subtract<A>(_:)(v107);
    v22 = v213;
  }

  else
  {
    v22 = specialized _NativeSet.subtracting<A>(_:)(v107, v108);
  }

  v113 = *(v112 + 48);
  *(v112 + 48) = v107;

  v114 = specialized Set._Variant.filter(_:)(v193, v109);

  if ((v114 & 0xC000000000000001) == 0)
  {
    if (*(v114 + 16) >= 1)
    {
      goto LABEL_56;
    }

LABEL_58:
    v115 = *(v22 + 16);

    if (!v115)
    {

      swift_beginAccess();
      v175 = *(v112 + 32);
      v176 = v175 + 56;
      v177 = 1 << *(v175 + 32);
      v178 = -1;
      if (v177 < 64)
      {
        v178 = ~(-1 << v177);
      }

      v179 = v178 & *(v175 + 56);
      v180 = (v177 + 63) >> 6;
      *&v210 = v175;

      v181 = 0;
      if (!v179)
      {
        goto LABEL_93;
      }

      while (1)
      {
        for (i = v181; ; v181 = i)
        {
          v183 = __clz(__rbit64(v179));
          v179 &= v179 - 1;
          v184 = (*(v210 + 48) + ((i << 10) | (16 * v183)));
          v22 = *v184;
          v185 = v184[1];
          v186 = swift_getObjectType();
          v187 = *(v185 + 16);
          swift_unknownObjectRetain();
          v187(v205, v186, v185);
          swift_unknownObjectRelease();
          v110 = v208;
          if (v179)
          {
            break;
          }

          do
          {
LABEL_93:
            i = v181 + 1;
            if (__OFADD__(v181, 1))
            {
              goto LABEL_103;
            }

            if (i >= v180)
            {
              (*v209)(v207, v110);

              return;
            }

            v179 = *(v176 + 8 * i);
            ++v181;
          }

          while (!v179);
        }
      }
    }

    goto LABEL_59;
  }

  if (__CocoaSet.count.getter() < 1)
  {
    goto LABEL_58;
  }

LABEL_56:

LABEL_59:
  v116 = objc_allocWithZone(type metadata accessor for _EXQueryResultUpdate());
  *&v116[OBJC_IVAR____EXQueryResultUpdate_removedUUIDs] = v22;
  *&v116[OBJC_IVAR____EXQueryResult_identities] = v114;
  *&v116[OBJC_IVAR____EXQueryResult_availablility] = 0;
  v117 = type metadata accessor for _EXQueryResult();
  v216.receiver = v116;
  v216.super_class = v117;
  *&v202 = objc_msgSendSuper2(&v216, sel_init);
  swift_beginAccess();
  v118 = *(v112 + 32);
  v119 = (v118 + 56);
  v120 = 1 << *(v118 + 32);
  if (v120 < 64)
  {
    v121 = ~(-1 << v120);
  }

  else
  {
    v121 = -1;
  }

  v122 = v121 & *(v118 + 56);
  v123 = (v120 + 63) >> 6;
  v195 = v111 + 7;
  v197 = (v201 + 2);
  v203 = v118;

  v124 = 0;
  *&v125 = 136446466;
  v194 = v125;
  v198 = v123;
  v199 = v119;
  if (!v122)
  {
    goto LABEL_66;
  }

  do
  {
    while (1)
    {
LABEL_70:
      v128 = __clz(__rbit64(v122));
      v122 &= v122 - 1;
      v214 = *(*(v203 + 48) + ((v124 << 10) | (16 * v128)));
      isa = v111[2].isa;
      v130 = *(&v214 + 1);
      v210 = v214;
      v204 = *(&v214 + 1);
      if (!isa)
      {
        swift_unknownObjectRetain();
        v144 = v200;
        goto LABEL_77;
      }

      v131 = v111[5].isa;
      Hasher.init(_seed:)();
      v132 = v210;
      swift_getObjectType();
      v133 = *(v130 + 8);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v201 = &v190;
      v135 = *(AssociatedTypeWitness - 8);
      v136 = *(v135 + 64);
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
      v138 = &v190 - v137;
      v212 = v210;
      v196 = v132;
      swift_unknownObjectRetain();
      dispatch thunk of Identifiable.id.getter();
      swift_getAssociatedConformanceWitness();
      dispatch thunk of Hashable.hash(into:)();
      v139 = v138;
      v111 = v206;
      (*(v135 + 8))(v139, AssociatedTypeWitness);
      v140 = v195;
      v141 = Hasher._finalize()();
      v142 = -1 << LOBYTE(v111[4].isa);
      v143 = v141 & ~v142;
      v144 = v200;
      if ((*(&v140->isa + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143))
      {
        break;
      }

LABEL_77:
      if (one-time initialization token for discovery != -1)
      {
        swift_once();
      }

      v146 = type metadata accessor for Logger();
      __swift_project_value_buffer(v146, static Logger.discovery);
      v147 = v208;
      (*v197)(v144, v207, v208);
      v148 = v210;
      swift_unknownObjectRetain();
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        *&v214 = v201;
        *v151 = v194;
        lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
        v152 = dispatch thunk of CustomStringConvertible.description.getter();
        v153 = v144;
        v155 = v154;
        (*v209)(v153, v147);
        v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v152, v155, &v214);

        *(v151 + 4) = v156;
        *(v151 + 12) = 2082;
        v213 = v210;
        swift_unknownObjectRetain();
        v157 = String.init<A>(describing:)();
        v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v214);

        *(v151 + 14) = v159;
        _os_log_impl(&dword_1847D1000, v149, v150, "[%{public}s] Sending update observer update to %{public}s", v151, 0x16u);
        v160 = v201;
        swift_arrayDestroy();
        MEMORY[0x1865F56C0](v160, -1, -1);
        MEMORY[0x1865F56C0](v151, -1, -1);
      }

      else
      {

        (*v209)(v144, v147);
      }

      v123 = v198;
      v119 = v199;
      v126 = swift_getObjectType();
      v22 = v148;
      (*(v204 + 24))(v205, v202, v126);
      swift_unknownObjectRelease();
      v111 = v206;
      if (!v122)
      {
        goto LABEL_66;
      }
    }

    v145 = ~v142;
    lazy protocol witness table accessor for type _EXActiveQuery.ActiveQueryObserver and conformance _EXActiveQuery.ActiveQueryObserver();
    while (1)
    {
      v213 = *(v111[6].isa + v143);
      if (dispatch thunk of static Equatable.== infix(_:_:)())
      {
        break;
      }

      v143 = (v143 + 1) & v145;
      if (((*(&v140->isa + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
      {
        goto LABEL_77;
      }
    }

    if (one-time initialization token for discovery != -1)
    {
      swift_once();
    }

    v161 = type metadata accessor for Logger();
    v22 = __swift_project_value_buffer(v161, static Logger.discovery);
    v162 = v191;
    v163 = v208;
    (*v197)(v191, v207, v208);
    swift_unknownObjectRetain();
    v164 = Logger.logObject.getter();
    v165 = static os_log_type_t.debug.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v164, v165))
    {
      v166 = swift_slowAlloc();
      v167 = v162;
      v204 = swift_slowAlloc();
      *&v214 = v204;
      *v166 = v194;
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v168 = dispatch thunk of CustomStringConvertible.description.getter();
      v170 = v169;
      (*v209)(v167, v163);
      v171 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v170, &v214);

      *(v166 + 4) = v171;
      *(v166 + 12) = 2082;
      v213 = v210;
      swift_unknownObjectRetain();
      v172 = String.init<A>(describing:)();
      v174 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v172, v173, &v214);

      *(v166 + 14) = v174;
      v111 = v206;
      _os_log_impl(&dword_1847D1000, v164, v165, "[%{public}s] Skipping observer update to %{public}s", v166, 0x16u);
      v22 = v204;
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v22, -1, -1);
      MEMORY[0x1865F56C0](v166, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*v209)(v162, v163);
    }

    v123 = v198;
    v119 = v199;
  }

  while (v122);
LABEL_66:
  while (1)
  {
    v127 = v124 + 1;
    if (__OFADD__(v124, 1))
    {
      break;
    }

    if (v127 >= v123)
    {
      (*v209)(v207, v208);

      return;
    }

    v122 = *&v119[8 * v127];
    ++v124;
    if (v122)
    {
      v124 = v127;
      goto LABEL_70;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  v188 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();

  swift_unexpectedError();
  __break(1u);
LABEL_107:
  v189 = [objc_opt_self() _EX_parameterError];
  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
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
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
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
      *(*(v8 + 48) + 8 * v15) = v20;
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

uint64_t specialized _copyCollectionToContiguousArray<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo20_EXExtensionIdentityC_Tt1g5(v2, 0);

    v1 = specialized Sequence._copySequenceContents(initializing:)(&v5, (v3 + 32), v2, v1);
    outlined consume of [String : Any].Iterator._Variant();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

id specialized Sequence._copySequenceContents(initializing:)(id result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v12 = 0;
    goto LABEL_32;
  }

  __CocoaSet.makeIterator()();
  type metadata accessor for _EXExtensionIdentity();
  lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject();
  result = Set.Iterator.init(_cocoa:)();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v12 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v22 = v9;
  v23 = v7;
  v12 = 0;
  v13 = (v9 + 64) >> 6;
  v7 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!__CocoaSet.Iterator.next()())
      {
        goto LABEL_30;
      }

      type metadata accessor for _EXExtensionIdentity();
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v7 == a3)
    {
      v12 = a3;
      goto LABEL_30;
    }

    ++a2;
    v12 = v7;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v13)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v13;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
  v7 = v23;
LABEL_32:
  *v7 = v4;
  *(v7 + 8) = v8;
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 32) = v11;
  return v12;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _EXExtensionIdentity, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR, type metadata accessor for _EXExtensionIdentity);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _EXServiceClient.ActiveClientQuery, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMd, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMR, type metadata accessor for _EXServiceClient.ActiveClientQuery);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20_EXExtensionIdentityC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          specialized _NativeSet.resize(capacity:)(v29 + 1, a4, a5);
        }

        v30 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v30, v28);

        *v11 = v28;
        *a1 = v30;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v31 = *(*(v14 + 48) + 8 * v21);
      *a1 = v31;
      v32 = v31;
      return 0;
    }

    else
    {
LABEL_11:
      v25 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v27 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v27, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v37;
      *a1 = v27;
      return 1;
    }
  }

  return result;
}

void specialized Set.formUnion<A>(_:)(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_1(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
    Set.Iterator.init(_cocoa:)();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      outlined consume of [String : Any].Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo18RBSDomainAttributeC_Tt1g5Tm(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
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
    v16 = *(v9 + 40);
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
    *(*(v9 + 48) + 8 * v21) = v17;
    ++*(v9 + 16);
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
  v37 = type metadata accessor for UUID();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.allocate(capacity:)();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v32 = (v8 + 32);
  v33 = v8 + 16;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v35 = *(v8 + 72);
    (*(v8 + 16))(v36, v19 + v35 * (v16 | (v14 << 6)), v37);
    v20 = *(v11 + 40);
    lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = (*v32)(*(v11 + 48) + v24 * v35, v36, v37);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
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

uint64_t QueryController.resultDidUpdate(_:)(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v86 = *(v3 - 8);
  v87 = v3;
  v4 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v84 = v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for DispatchQoS();
  v83 = *(v85 - 8);
  v6 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v82 = v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____EXQueryResult_identities))
  {
    v8 = *(a1 + OBJC_IVAR____EXQueryResult_identities);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  v9 = *(a1 + OBJC_IVAR____EXQueryResultUpdate_removedUUIDs);
  v10 = one-time initialization token for discovery;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.discovery);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();

  v14 = os_log_type_enabled(v12, v13);
  v88 = v1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    aBlock[0] = v16;
    *v15 = 136446210;
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
    v17 = Set.description.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, aBlock);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1847D1000, v12, v13, "Query results update: To add: '%{public}s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1865F56C0](v16, -1, -1);
    MEMORY[0x1865F56C0](v15, -1, -1);
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock[0] = v23;
    *v22 = 136446210;
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v24 = Set.description.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, aBlock);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_1847D1000, v20, v21, "Query results update: To remove UUIDs: '%{public}s'", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    MEMORY[0x1865F56C0](v23, -1, -1);
    MEMORY[0x1865F56C0](v22, -1, -1);
  }

  v27 = v88;
  v28 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v29 = *&v88[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock];

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions;
  ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n = MEMORY[0x1E69E7CC0];
  if (*&v27[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions])
  {

    v32 = v27;

    ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShySo20_EXExtensionIdentityCG_AGs5NeverOTg5088_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n(v33, v9);
  }

  v34 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSo20_EXExtensionIdentityC_SayAEGTt0g5Tf4g_n(ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSo20_dE8CAHXEfU_Shy10Foundation4UUIDVG0hU00jK0CTf1cn_nTf4ngd_n);

  specialized Set.union<A>(_:)(v8, v34);

  v36 = specialized Set._Variant.filter(_:)(v35, v9);

  if ((v8 & 0xC000000000000001) != 0)
  {
    v37 = __CocoaSet.count.getter();
  }

  else
  {
    v37 = *(v8 + 16);
  }

  v38 = v88;

  if (v37 >= 1)
  {
    v39 = *&v38[v30];
LABEL_18:
    *&v38[v30] = v36;

    v40 = *&v38[v28];

    os_unfair_lock_unlock(v40 + 4);

    v41 = v38;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    v44 = os_log_type_enabled(v42, v43);
    v88 = v36;
    if (v44)
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      aBlock[0] = v46;
      *v45 = 136446210;
      v47 = *&v41[OBJC_IVAR____TtC19ExtensionFoundation15QueryController__queries];
      v48 = type metadata accessor for _EXQuery();

      v50 = MEMORY[0x1865F38E0](v49, v48);
      v52 = v51;

      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, aBlock);

      *(v45 + 4) = v53;
      _os_log_impl(&dword_1847D1000, v42, v43, "Query results did change: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x1865F56C0](v46, -1, -1);
      MEMORY[0x1865F56C0](v45, -1, -1);
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      aBlock[0] = v57;
      *v56 = 136446466;
      type metadata accessor for _EXExtensionIdentity();
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
      v58 = Set.description.getter();
      v60 = v59;

      v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, aBlock);

      *(v56 + 4) = v61;
      *(v56 + 12) = 2082;

      v62 = Set.description.getter();
      v64 = v63;

      v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, aBlock);

      *(v56 + 14) = v65;
      _os_log_impl(&dword_1847D1000, v54, v55, "Update original results:\n%{public}s\nupdated results:\n%{public}s", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865F56C0](v57, -1, -1);
      MEMORY[0x1865F56C0](v56, -1, -1);
    }

    else
    {
    }

    v66 = &v41[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
    v67 = *&v41[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_callbacks];
    if (v67 == 1)
    {
    }

    else
    {
      v70 = *(v66 + 2);
      v69 = *(v66 + 3);
      v71 = *(v66 + 1);
      v72 = *&v41[OBJC_IVAR____TtC19ExtensionFoundation15QueryController_notificationQueue];
      v73 = swift_allocObject();
      v73[2] = v67;
      v73[3] = v71;
      v73[4] = v70;
      v73[5] = v69;
      v80[1] = v69;
      aBlock[4] = partial apply for closure #3 in QueryController.resultDidUpdate(_:);
      aBlock[5] = v73;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      aBlock[3] = &block_descriptor_38;
      v81 = _Block_copy(aBlock);
      outlined copy of QueryController.Callbacks?(v67, v71, v70);
      v74 = v72;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v67);
      outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v70);
      v75 = v82;
      static DispatchQoS.unspecified.getter();
      v89 = MEMORY[0x1E69E7CC0];
      _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      v76 = v84;
      v77 = v87;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v78 = v81;
      MEMORY[0x1865F3C00](0, v75, v76, v81);
      _Block_release(v78);

      outlined consume of (@escaping @callee_guaranteed () -> ())?(v67);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v70);
      (*(v86 + 8))(v76, v77);
      (*(v83 + 8))(v75, v85);
    }
  }

  if (*(v9 + 16) || !*&v38[v30])
  {
    goto LABEL_18;
  }

  *&v38[v30] = v36;

  v79 = *&v38[v28];

  os_unfair_lock_unlock(v79 + 4);
}

uint64_t sub_1847EB650()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4])
  {
    v2 = v0[5];
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a1 + 56);
    v16 = (v13 + 63) >> 6;
    v20[0] = v8 + 8;
    v20[1] = v8 + 16;

    for (i = 0; v15; result = outlined destroy of UUID?(v6))
    {
      v18 = i;
LABEL_10:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      (*(v8 + 16))(v12, *(a1 + 48) + *(v8 + 72) * (v19 | (v18 << 6)), v7);
      specialized Set._Variant.remove(_:)(v12, v6);
      (*(v8 + 8))(v12, v7);
    }

    while (1)
    {
      v18 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
      }

      v15 = *(a1 + 56 + 8 * v18);
      ++i;
      if (v15)
      {
        i = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v60 = *MEMORY[0x1E69E9840];
  v58 = type metadata accessor for UUID();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v58);
  v55 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v41 - v10;
  v11 = *(a1 + 32);
  v12 = v11 & 0x3F;
  v13 = ((1 << v11) + 63) >> 6;
  v14 = 8 * v13;

  if (v12 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v42 = v13;
    v43 = v3;
    v41 = &v41;
    MEMORY[0x1EEE9AC00](v15);
    v45 = &v41 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v45, v14);
    v16 = 0;
    v17 = *(a1 + 56);
    v46 = a1 + 56;
    v47 = 0;
    v18 = 1 << *(a1 + 32);
    v19 = v18 < 64 ? ~(-1 << v18) : -1;
    v20 = v19 & v17;
    v21 = (v18 + 63) >> 6;
    v54 = v6 + 16;
    v44 = v6;
    v56 = a2 + 56;
    v57 = (v6 + 8);
    v49 = v21;
    v50 = a1;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v52 = (v20 - 1) & v20;
LABEL_14:
      v25 = v22 | (v16 << 6);
      v26 = *(a1 + 48);
      v48 = v25;
      v51 = *(v26 + 8 * v25);
      v27 = [v51 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16) && (v28 = *(a2 + 40), lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]), v29 = dispatch thunk of Hashable._rawHashValue(seed:)(), v30 = -1 << *(a2 + 32), v14 = v29 & ~v30, ((*(v56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v53 = ~v30;
        v31 = *(v44 + 72);
        v6 = *(v44 + 16);
        while (1)
        {
          v3 = a2;
          v13 = v55;
          v32 = v58;
          (v6)(v55, *(a2 + 48) + v31 * v14, v58);
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v33 = dispatch thunk of static Equatable.== infix(_:_:)();
          v34 = *v57;
          (*v57)(v13, v32);
          if (v33)
          {
            break;
          }

          v14 = (v14 + 1) & v53;
          a2 = v3;
          if (((*(v56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v34(v59, v58);

        *&v45[(v48 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v48;
        v35 = __OFADD__(v47++, 1);
        a2 = v3;
        v21 = v49;
        a1 = v50;
        v20 = v52;
        if (v35)
        {
          __break(1u);
LABEL_23:
          C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v45, v42, v47, a1);

          goto LABEL_24;
        }
      }

      else
      {
LABEL_6:
        (*v57)(v59, v58);

        v21 = v49;
        a1 = v50;
        v20 = v52;
      }
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {
        goto LABEL_23;
      }

      v24 = *(v46 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v52 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v39 = a1;
  v40 = swift_slowAlloc();

  C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n052_s19ExtensionFoundation14_EXActiveQueryC6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n(v40, v13, v39, a2);

  MEMORY[0x1865F56C0](v40, -1, -1);

LABEL_24:
  v37 = *MEMORY[0x1E69E9840];
  return C6updateyyFSbq1_iJ6CXEfU_Shy10Foundation4UUIDVGTf1nnc_n;
}

{
  v3 = v2;
  v72 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v68 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v52 - v11;
  v13 = *(a1 + 32);
  v14 = v13 & 0x3F;
  v53 = ((1 << v13) + 63) >> 6;
  v15 = (8 * v53);

  if (v14 > 0xD)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v52[1] = v3;
    v52[0] = v52;
    MEMORY[0x1EEE9AC00](v16);
    v57 = v52 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v15);
    v61 = 0;
    v18 = 0;
    v19 = *(a1 + 56);
    v56 = a1 + 56;
    v20 = 1 << *(a1 + 32);
    v21 = v20 < 64 ? ~(-1 << v20) : -1;
    v22 = v21 & v19;
    v23 = (v20 + 63) >> 6;
    v69 = a2 + 56;
    v67 = v7 + 16;
    v71 = (v7 + 8);
    *&v17 = 138543362;
    v55 = v17;
    v3 = v7;
    v59 = a1;
    v60 = v23;
    v58 = v7;
    v70 = a2;
    v54 = v12;
    while (v22)
    {
      v24 = __clz(__rbit64(v22));
      v66 = (v22 - 1) & v22;
LABEL_14:
      v27 = v24 | (v18 << 6);
      v28 = *(a1 + 48);
      v63 = v27;
      v65 = *(v28 + 8 * v27);
      v7 = [v65 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v29 = *(a2 + 16);
      v62 = v71 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v29 && (v30 = *(a2 + 40), _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]), v7 = v12, v31 = dispatch thunk of Hashable._rawHashValue(seed:)(), v32 = -1 << *(a2 + 32), v33 = v31 & ~v32, ((*(v69 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v64 = v18;
        v34 = v12;
        v35 = ~v32;
        v36 = *(v3 + 72);
        v37 = *(v3 + 16);
        while (1)
        {
          v38 = v68;
          v37(v68, *(v70 + 48) + v36 * v33, v6);
          _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v7 = dispatch thunk of static Equatable.== infix(_:_:)();
          v15 = *v71;
          (*v71)(v38, v6);
          if (v7)
          {
            break;
          }

          v33 = (v33 + 1) & v35;
          if (((*(v69 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            a2 = v70;
            v3 = v58;
            a1 = v59;
            v12 = v34;
            v18 = v64;
            v15(v12, v6);
            goto LABEL_20;
          }
        }

        v12 = v34;
        v15(v34, v6);
        if (one-time initialization token for discovery != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        v7 = __swift_project_value_buffer(v40, static Logger.discovery);
        v15 = v65;
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();

        v43 = os_log_type_enabled(v41, v42);
        a2 = v70;
        v3 = v58;
        v18 = v64;
        if (v43)
        {
          v7 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v7 = v55;
          *(v7 + 4) = v15;
          *v44 = v15;
          v45 = v44;
          v46 = v15;
          _os_log_impl(&dword_1847D1000, v41, v42, "Query results: removing '%{public}@'", v7, 0xCu);
          outlined destroy of NSObject?(v45);
          v47 = v45;
          v12 = v54;
          MEMORY[0x1865F56C0](v47, -1, -1);
          MEMORY[0x1865F56C0](v7, -1, -1);
        }

        a1 = v59;
        v23 = v60;
        v22 = v66;
      }

      else
      {
        v15 = *v71;
        (*v71)(v12, v6);
LABEL_20:

        *&v57[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
        v23 = v60;
        v39 = __OFADD__(v61++, 1);
        v22 = v66;
        if (v39)
        {
          goto LABEL_31;
        }
      }
    }

    v25 = v18;
    while (1)
    {
      v18 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v18 >= v23)
      {
        ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v57, v53, v61, a1);

        goto LABEL_29;
      }

      v26 = *(v56 + 8 * v18);
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v66 = (v26 - 1) & v26;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v51 = swift_slowAlloc();

  ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVySo20_EXExtensionIdentityCG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab12VKXEfU_So20_iJ5C_TG5AJxSbs5Error_pRi_zRi0_zlyAIIsgndzo_Tf1nc_n085_s19ExtensionFoundation15QueryControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n(v51, v53, a1, a2);

  MEMORY[0x1865F56C0](v51, -1, -1);

LABEL_29:
  v49 = *MEMORY[0x1E69E9840];
  return ControllerC15resultDidUpdateyyAA014_EXQueryResultG0CFSbq1_iJ7CXEfU0_Shy10Foundation4UUIDVGTf1nnc_n;
}

uint64_t closure #1 in _EXQueryController.init(queries:delegate:)()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = objc_opt_self();
    [v2 queryControllerDelegate:swift_unknownObjectWeakLoadStrong() didUpdateController:v1];

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized Set.union<A>(_:)(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
    Set.Iterator.init(_cocoa:)();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      outlined consume of [String : Any].Iterator._Variant();
      return;
    }

    while (1)
    {
      specialized Set._Variant.insert(_:)(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for _EXExtensionIdentity();
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t _EXQuery.ValuesQuery.description.getter()
{
  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  v6 = 0xD00000000000001ALL;
  v7 = 0x80000001848C34D0;
  v5 = *v0;
  outlined init with copy of _EXQuery.ValuesQuery(v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x1865F37A0](v1);

  MEMORY[0x1865F37A0](0x6F6674616C702060, 0xED0000203A736D72);
  LODWORD(v4[0]) = *(v0 + 16);
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v2);

  return v6;
}

uint64_t outlined copy of QueryController.Callbacks?(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(result);

    return outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(a3);
  }

  return result;
}

void _EXQueryResultUpdate.init(currentExtensions:updatedExtensions:)(uint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v43);
  v41 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v40 = v38 - v8;
  v50 = a2;
  v51 = MEMORY[0x1E69E7CD0];
  if ((a1 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for _EXExtensionIdentity();
    _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
    Set.Iterator.init(_cocoa:)();
    a1 = v52;
    v9 = v53;
    v10 = v54;
    v11 = v55;
    v12 = v56;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v9 = a1 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(a1 + 56);

    v11 = 0;
  }

  v38[1] = v10;
  v16 = (v10 + 64) >> 6;
  v17 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 < 0)
  {
    v17 = a2;
  }

  v42 = v17;
  v47 = a2;
  v45 = a2 & 0xC000000000000001;
  v46 = a2 + 56;
  v39 = (v4 + 8);
  v44 = a1;
  while (a1 < 0)
  {
    v26 = __CocoaSet.Iterator.next()();
    if (!v26 || (v48 = v26, type metadata accessor for _EXExtensionIdentity(), swift_dynamicCast(), v25 = v49, v23 = v11, v24 = v12, !v49))
    {
LABEL_31:
      outlined consume of [String : Any].Iterator._Variant();

      type metadata accessor for _EXExtensionIdentity();
      _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject, type metadata accessor for _EXExtensionIdentity);
      isa = Set._bridgeToObjectiveC()().super.isa;

      _sSo20_EXExtensionIdentityCSo8NSObjectCSH10ObjectiveCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v37 = Set._bridgeToObjectiveC()().super.isa;

      [v38[2] initWithAddedExtensions:isa removedUUIDs:v37];

      return;
    }

LABEL_21:

    if (v45)
    {
      v27 = v25;
      v28 = __CocoaSet.contains(_:)();

      if ((v28 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (!v47[2] || (type metadata accessor for _EXExtensionIdentity(), v29 = v47, v30 = NSObject._rawHashValue(seed:)(v47[5]), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*(v46 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0))
      {
LABEL_10:
        v18 = [v25 uniqueIdentifier];
        v19 = v41;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v20 = v40;
        specialized Set._Variant.insert(_:)(v40, v19);

        (*v39)(v20, v43);
        goto LABEL_11;
      }

      v33 = ~v31;
      while (1)
      {
        v34 = *(v47[6] + 8 * v32);
        v35 = static NSObject.== infix(_:_:)();

        if (v35)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v46 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_11:
    v11 = v23;
    v12 = v24;
    a1 = v44;
  }

  v21 = v11;
  v22 = v12;
  v23 = v11;
  if (v12)
  {
LABEL_17:
    v24 = (v22 - 1) & v22;
    v25 = *(*(a1 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      goto LABEL_31;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v16)
    {
      goto LABEL_31;
    }

    v22 = *(v9 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t _EXQueryController.extensionIdentities.getter()
{
  v1 = *(v0 + OBJC_IVAR____EXQueryController_innerController);
  v2 = OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock;
  v3 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController_extensionsLock);

  os_unfair_lock_lock(v3 + 4);

  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions))
  {
    v4 = *(v1 + OBJC_IVAR____TtC19ExtensionFoundation15QueryController__internalExtensions);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CD0];
  }

  v5 = *(v1 + v2);

  os_unfair_lock_unlock(v5 + 4);

  v6 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  return v6;
}

id protocol witness for _InnerAppExtensionIdentity.containingBundleRecord.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  v1 = [*v0 containingBundleRecord];

  return v1;
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
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
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

uint64_t lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v8 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*v4 + 16);
  v15 = *(*v4 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v28 = v11;
    specialized _NativeSet.resize(capacity:)(v14 + 1);
  }

  else
  {
    if (v15 > v14)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    v28 = v11;
    specialized _NativeSet.copyAndResize(capacity:)(v14 + 1);
  }

  v16 = *v4;
  v17 = *(*v4 + 40);
  Hasher.init(_seed:)();
  UUID.hash(into:)();
  v18 = Hasher._finalize()();
  v19 = -1 << *(v16 + 32);
  a2 = v18 & ~v19;
  if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v20 = ~v19;
    v21 = *(v9 + 72);
    do
    {
      outlined init with copy of LocalLSDatabaseObserver.Observer(*(v16 + 48) + v21 * a2, v13);
      v22 = static UUID.== infix(_:_:)();
      outlined destroy of LocalLSDatabaseObserver.Observer(v13);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v20;
    }

    while (((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = outlined init with take of LocalLSDatabaseObserver.Observer(a1, *(v23 + 48) + *(v9 + 72) * a2);
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

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v98 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v69 - v10);
  v12 = type metadata accessor for UUID();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = (&v69 - v17);
  MEMORY[0x1EEE9AC00](v16);
  v84 = (&v69 - v20);
  if (!*(a2 + 16))
  {

    a2 = MEMORY[0x1E69E7CD0];
    goto LABEL_54;
  }

  v70 = v11;
  v72 = v9;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v83 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v91 = (v24 & v21);
  v76 = (63 - v23) >> 6;
  v90 = v19 + 16;
  v81 = (v19 + 48);
  v82 = (v19 + 56);
  v80 = (v19 + 32);
  v86 = (a2 + 56);
  v71 = v19;
  v92 = (v19 + 8);

  v26 = 0;
  v73 = a1;
  for (i = a1 + 56; ; v22 = i)
  {
    v27 = v91;
    v28 = v26;
    if (v91)
    {
LABEL_14:
      v2 = (v27 - 1) & v27;
      v32 = v70;
      (*(v71 + 16))(v70, *(a1 + 48) + *(v71 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
      v33 = 0;
      v30 = v28;
    }

    else
    {
      v29 = v76 <= (v26 + 1) ? v26 + 1 : v76;
      v30 = v29 - 1;
      v31 = v26;
      while (1)
      {
        v28 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_57;
        }

        if (v28 >= v76)
        {
          break;
        }

        v27 = *(v22 + 8 * v28);
        ++v31;
        if (v27)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v33 = 1;
      v32 = v70;
    }

    v78 = *v82;
    v78(v32, v33, 1, v12);
    v93 = a1;
    v94 = v22;
    v95 = v83;
    v96 = v30;
    v97 = v2;
    v77 = *v81;
    if (v77(v32, 1, v12) == 1)
    {
      outlined destroy of UUID?(v32);
      goto LABEL_52;
    }

    v75 = *v80;
    v75(v84, v32, v12);
    v34 = *(a2 + 40);
    v74 = lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v35 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v36 = -1 << *(a2 + 32);
    v26 = v35 & ~v36;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) != 0)
    {
      break;
    }

    (*v92)(v84, v12);
LABEL_22:
    v26 = v30;
    v91 = v2;
  }

  v69 = v92 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v85 = ~v36;
  v37 = *(v71 + 72);
  v87 = *(v71 + 16);
  v88 = v37;
  while (1)
  {
    v87(v18, *(a2 + 48) + v88 * v26, v12);
    v38 = lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
    v39 = dispatch thunk of static Equatable.== infix(_:_:)();
    v91 = *v92;
    v91(v18, v12);
    if (v39)
    {
      break;
    }

    v26 = (v26 + 1) & v85;
    v28 = v26 >> 6;
    v22 = 1 << v26;
    if (((1 << v26) & v86[v26 >> 6]) == 0)
    {
      a1 = v73;
      v91(v84, v12);
      goto LABEL_22;
    }
  }

  v85 = v38;
  v40 = (v91)(v84, v12);
  v41 = *(a2 + 32);
  v69 = ((1 << v41) + 63) >> 6;
  v25 = 8 * v69;
  a1 = v73;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v70 = &v69;
    MEMORY[0x1EEE9AC00](v40);
    v43 = &v69 - ((v42 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v43, v86, v42);
    v44 = *&v43[8 * v28] & ~v22;
    v45 = *(a2 + 16);
    v84 = v43;
    *&v43[8 * v28] = v44;
    v46 = v45 - 1;
    v26 = v72;
    v47 = i;
    v48 = v76;
LABEL_26:
    v71 = v46;
    while (v2)
    {
      v49 = v30;
LABEL_38:
      v52 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v87(v26, *(a1 + 48) + (v52 | (v49 << 6)) * v88, v12);
      v53 = 0;
LABEL_39:
      v78(v26, v53, 1, v12);
      v93 = a1;
      v94 = v47;
      v95 = v83;
      v96 = v30;
      v97 = v2;
      if (v77(v26, 1, v12) == 1)
      {
        outlined destroy of UUID?(v26);
        a2 = specialized _NativeSet.extractSubset(using:count:)(v84, v69, v71, a2);
        goto LABEL_52;
      }

      v75(v89, v26, v12);
      v54 = *(a2 + 40);
      v55 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v56 = a2;
      v57 = -1 << *(a2 + 32);
      v58 = v55 & ~v57;
      v28 = v58 >> 6;
      v22 = 1 << v58;
      if (((1 << v58) & v86[v58 >> 6]) != 0)
      {
        v87(v18, *(v56 + 48) + v58 * v88, v12);
        v59 = dispatch thunk of static Equatable.== infix(_:_:)();
        v91(v18, v12);
        if ((v59 & 1) == 0)
        {
          v60 = ~v57;
          do
          {
            v58 = (v58 + 1) & v60;
            v28 = v58 >> 6;
            v22 = 1 << v58;
            if (((1 << v58) & v86[v58 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v87(v18, *(v56 + 48) + v58 * v88, v12);
            v61 = dispatch thunk of static Equatable.== infix(_:_:)();
            v91(v18, v12);
          }

          while ((v61 & 1) == 0);
        }

        v91(v89, v12);
        v62 = v84[v28];
        v84[v28] = v62 & ~v22;
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
        if ((v62 & v22) != 0)
        {
          v46 = v71 - 1;
          if (__OFSUB__(v71, 1))
          {
            __break(1u);
          }

          if (v71 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v91(v89, v12);
        a2 = v56;
        a1 = v73;
        v26 = v72;
        v47 = i;
        v48 = v76;
      }
    }

    if (v48 <= (v30 + 1))
    {
      v50 = v30 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v2 = 0;
        v53 = 1;
        v30 = v51;
        goto LABEL_39;
      }

      v2 = *(v47 + 8 * v49);
      ++v30;
      if (v2)
      {
        v30 = v49;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v65 = v25;

    v84 = a2;
    v66 = v65;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v67 = v84;

      a2 = v67;
      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();
  memcpy(v68, v86, v66);
  a2 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v68, v69, v84, v26, &v93);

  MEMORY[0x1865F56C0](v68, -1, -1);
LABEL_52:
  outlined consume of [String : Any].Iterator._Variant();
LABEL_54:
  v63 = *MEMORY[0x1E69E9840];
  return a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _EXActiveQuery.ActiveQueryObserver(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  swift_getObjectType();
  v6 = *(v3 + 8);
  v7 = Identifiable<>.id.getter();
  swift_getObjectType();
  v8 = *(v5 + 8);
  return v7 == Identifiable<>.id.getter();
}

uint64_t specialized Set._Variant.remove(_:)(void *a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v11 = *v5;
    }

    else
    {
      v11 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *v5;

    v13 = a1;
    v14 = __CocoaSet.contains(_:)();

    if (v14)
    {
      v15 = specialized Set._Variant._migrateToNative(_:removing:)(v11, v13, a3, a4, a5, a5);

      return v15;
    }

    return 0;
  }

  v27 = v5;
  a2(0);
  v17 = NSObject._rawHashValue(seed:)(*(v9 + 40));
  v18 = -1 << *(v9 + 32);
  v19 = v17 & ~v18;
  if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
    return 0;
  }

  v20 = ~v18;
  while (1)
  {
    v21 = *(*(v9 + 48) + 8 * v19);
    v22 = static NSObject.== infix(_:_:)();

    if (v22)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v9 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      return 0;
    }
  }

  v23 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v27;
  v28 = *v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()(a3, a4);
    v25 = v28;
  }

  v26 = *(*(v25 + 48) + 8 * v19);
  specialized _NativeSet._delete(at:)(v19);
  result = v26;
  *v27 = v28;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(void *a1)
{
  return specialized Set._Variant.remove(_:)(a1, type metadata accessor for _EXExtensionIdentity, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR, type metadata accessor for _EXExtensionIdentity);
}

{
  return specialized Set._Variant.remove(_:)(a1, type metadata accessor for _EXServiceClient.ActiveClientQuery, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMd, &_ss11_SetStorageCy19ExtensionFoundation16_EXServiceClientC06ActiveF5Query33_591406279EDD09BF7033B88E7B83DCFDLLCGMR, type metadata accessor for _EXServiceClient.ActiveClientQuery);
}

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
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
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = NSObject._rawHashValue(seed:)(v11);

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v12 = *(v3 + 40);
        v13 = (*(v3 + 48) + 32 * v6);
        v14 = *v13;
        v15 = v13[1];
        v16 = v13[2];
        v17 = v13[3];
        Hasher.init(_seed:)();

        v18 = v17;
        String.hash(into:)();
        v19 = Hasher._finalize()();

        v20 = v19 & v7;
        if (v2 >= v10)
        {
          if (v20 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v20 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v20)
        {
LABEL_11:
          v21 = *(v3 + 48);
          v22 = (v21 + 32 * v2);
          v23 = (v21 + 32 * v6);
          if (v2 != v6 || v22 >= v23 + 2)
          {
            v11 = v23[1];
            *v22 = *v23;
            v22[1] = v11;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v24 = *(v3 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v26;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v32 = v3;
      v33 = v4;
      v31 = (v9 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = (*(v3 + 48) + 16 * v6);
        v13 = *v11;
        v12 = v11[1];
        Hasher.init(_seed:)();
        swift_getObjectType();
        v14 = v7;
        v15 = *(v12 + 8);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v34 = &v31;
        v17 = *(AssociatedTypeWitness - 8);
        v18 = *(v17 + 64);
        MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
        v19 = v2;
        v21 = &v31 - v20;
        v35 = v13;
        swift_unknownObjectRetain();
        dispatch thunk of Identifiable.id.getter();
        v7 = v14;
        swift_getAssociatedConformanceWitness();
        dispatch thunk of Hashable.hash(into:)();
        v22 = v21;
        v2 = v19;
        (*(v17 + 8))(v22, AssociatedTypeWitness);
        v23 = Hasher._finalize()();
        swift_unknownObjectRelease();
        v24 = v23 & v14;
        if (v19 >= v31)
        {
          if (v24 < v31)
          {
            v3 = v32;
            v4 = v33;
            goto LABEL_5;
          }

          v3 = v32;
          if (v19 >= v24)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v3 = v32;
          if (v24 >= v31 || v19 >= v24)
          {
LABEL_12:
            v25 = *(v3 + 48);
            v26 = (v25 + 16 * v19);
            v27 = (v25 + 16 * v6);
            v4 = v33;
            if (v2 != v6 || v26 >= v27 + 1)
            {
              *v26 = *v27;
              v2 = v6;
            }

            goto LABEL_5;
          }
        }

        v4 = v33;
LABEL_5:
        v6 = (v6 + 1) & v14;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v28 = *(v3 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v30;
    ++*(v3 + 36);
  }

  return result;
}

{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * v6, v23);
        v13 = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
        outlined destroy of AnyHashable(v23);
        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = v17 + 40 * v2;
            v19 = (v17 + 40 * v6);
            if (v2 != v6 || v18 >= v19 + 40)
            {
              v11 = *v19;
              v12 = v19[1];
              *(v18 + 32) = *(v19 + 4);
              *v18 = v11;
              *(v18 + 16) = v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1847EE338()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t specialized static QueryController.execute(queries:completion:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() sharedInstance];
  v16 = [v15 preferInProcessDiscovery];

  if (v16)
  {
    v22 = v7;
    if (one-time initialization token for asyncQueryQueue != -1)
    {
      swift_once();
    }

    v17 = swift_allocObject();
    v17[2] = a1;
    v17[3] = a2;
    v17[4] = a3;
    aBlock[4] = partial apply for closure #1 in static QueryController.execute(queries:completion:);
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_3;
    v18 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v24 = MEMORY[0x1E69E7CC0];
    _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x1865F3C00](0, v14, v10, v18);
    _Block_release(v18);
    (*(v22 + 8))(v10, v6);
    (*(v11 + 8))(v14, v23);
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    *(v20 + 16) = a2;
    *(v20 + 24) = a3;

    _EXServiceClient.fetchExtensions(with:completion:)(a1, partial apply for closure #2 in static QueryController.execute(queries:completion:), v20);
  }
}

uint64_t sub_1847EE768()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1847EE7A0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t one-time initialization function for asyncQueryQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v11 = MEMORY[0x1E69E7CC0];
  _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static QueryController.asyncQueryQueue = result;
  return result;
}

uint64_t closure #1 in static QueryController.execute(queries:completion:)(unint64_t a1, void (*a2)(uint64_t))
{
  if (one-time initialization token for shared != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v3 = _EXDiscoveryController.identities(matching:)(a1);
  v4 = *&v3[OBJC_IVAR____EXQueryResult_identities];

  if (!v4)
  {
    if (MEMORY[0x1E69E7CC0] >> 62 && __CocoaSet.count.getter())
    {
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo20_EXExtensionIdentityC_Tt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v4 = v8;
    }

    else
    {
      v4 = MEMORY[0x1E69E7CD0];
    }
  }

  v5 = specialized _copyCollectionToContiguousArray<A>(_:)(v4);

  a2(v5);
}

void type metadata completion function for AppExtensionProcess._InstanceIdentifier()
{
  _s7Network15NWApplicationIDVSgMaTm_0(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t protocol witness for _EXActiveQueryObserver.query(_:resultDidUpdate:) in conformance QueryController(uint64_t a1, void *a2)
{
  type metadata accessor for _EXQueryResultUpdate();
  if ([a2 isKindOfClass_])
  {

    return QueryController.resultDidUpdate(_:)(a2);
  }

  else
  {
    v4 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

Swift::Int specialized Set._Variant.filter(_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v43 = *(v4 - 8);
  v5 = v43[8];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v49 = &v41 - v10;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return specialized _NativeSet.filter(_:)(v9, a2);
  }

  v11 = MEMORY[0x1E69E7CD0];
  v52 = MEMORY[0x1E69E7CD0];

  v45 = __CocoaSet.makeIterator()();
  v12 = __CocoaSet.Iterator.next()();
  if (v12)
  {
    v13 = v12;
    v44 = type metadata accessor for _EXExtensionIdentity();
    v14 = v13;
    v46 = v43 + 2;
    v47 = a2 + 56;
    v15 = (v43 + 1);
    v42 = MEMORY[0x1E69E7CD0];
    v48 = a2;
    do
    {
      v50 = v14;
      swift_dynamicCast();
      v16 = [v51 uniqueIdentifier];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(a2 + 16) && (v17 = *(a2 + 40), lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]), v18 = dispatch thunk of Hashable._rawHashValue(seed:)(), v19 = v48, v20 = -1 << *(v48 + 32), v21 = v18 & ~v20, ((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
      {
        v22 = ~v20;
        v23 = v43[9];
        v24 = v43[2];
        while (1)
        {
          v24(v8, *(v19 + 48) + v23 * v21, v4);
          lazy protocol witness table accessor for type _EXActiveQuery and conformance _EXActiveQuery(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x1E69695A8]);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v15;
          (*v15)(v8, v4);
          if (v25)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          v19 = v48;
          if (((*(v47 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v26(v49, v4);
        v27 = v51;
        v28 = *(v42 + 16);
        if (*(v42 + 24) <= v28)
        {
          specialized _NativeSet.resize(capacity:)(v28 + 1, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMd, &_ss11_SetStorageCySo20_EXExtensionIdentityCGMR);
        }

        v29 = v52;
        result = NSObject._rawHashValue(seed:)(*(v52 + 40));
        v31 = v29 + 56;
        v32 = -1 << *(v29 + 32);
        v33 = result & ~v32;
        v34 = v33 >> 6;
        if (((-1 << v33) & ~*(v29 + 56 + 8 * (v33 >> 6))) != 0)
        {
          v35 = __clz(__rbit64((-1 << v33) & ~*(v29 + 56 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v36 = 0;
          v37 = (63 - v32) >> 6;
          do
          {
            if (++v34 == v37 && (v36 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v38 = v34 == v37;
            if (v34 == v37)
            {
              v34 = 0;
            }

            v36 |= v38;
            v39 = *(v31 + 8 * v34);
          }

          while (v39 == -1);
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
        }

        *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        *(*(v29 + 48) + 8 * v35) = v27;
        v40 = *(v29 + 16) + 1;
        v42 = v29;
        *(v29 + 16) = v40;
      }

      else
      {
LABEL_4:
        (*v15)(v49, v4);
      }

      v14 = __CocoaSet.Iterator.next()();
      a2 = v48;
    }

    while (v14);
  }

  else
  {
    v42 = v11;
  }

  return v42;
}

{
  v5 = type metadata accessor for UUID();
  v50 = *(v5 - 8);
  v6 = v50[8];
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v48 - v10;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E69E7CD0];
    v61 = MEMORY[0x1E69E7CD0];

    v52 = __CocoaSet.makeIterator()();
    v11 = __CocoaSet.Iterator.next()();
    if (v11)
    {
      v12 = v11;
      v51 = type metadata accessor for _EXExtensionIdentity();
      v13 = v12;
      v55 = v50 + 2;
      v56 = a2 + 56;
      v57 = (v50 + 1);
      *&v14 = 138543362;
      v48 = v14;
      do
      {
        v54 = v2;
        v59 = v13;
        swift_dynamicCast();
        v53 = v60;
        v21 = [v60 uniqueIdentifier];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        if (*(a2 + 16) && (v22 = *(a2 + 40), _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]), v23 = dispatch thunk of Hashable._rawHashValue(seed:)(), v24 = -1 << *(a2 + 32), v25 = v23 & ~v24, ((*(v56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
        {
          v26 = ~v24;
          v27 = v50[9];
          v28 = v50[2];
          while (1)
          {
            v29 = a2;
            v28(v9, *(a2 + 48) + v27 * v25, v5);
            _s10Foundation4UUIDVACSHAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
            v30 = dispatch thunk of static Equatable.== infix(_:_:)();
            v31 = *v57;
            (*v57)(v9, v5);
            if (v30)
            {
              break;
            }

            v25 = (v25 + 1) & v26;
            a2 = v29;
            if (((*(v56 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          v31(v58, v5);
          if (one-time initialization token for discovery != -1)
          {
            swift_once();
          }

          v38 = type metadata accessor for Logger();
          __swift_project_value_buffer(v38, static Logger.discovery);
          v39 = v53;
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.debug.getter();

          v42 = os_log_type_enabled(v40, v41);
          a2 = v29;
          v2 = v54;
          if (v42)
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            *v43 = v48;
            *(v43 + 4) = v39;
            *v44 = v39;
            v45 = v39;
            _os_log_impl(&dword_1847D1000, v40, v41, "Query results: removing '%{public}@'", v43, 0xCu);
            outlined destroy of NSObject?(v44);
            MEMORY[0x1865F56C0](v44, -1, -1);
            MEMORY[0x1865F56C0](v43, -1, -1);
          }
        }

        else
        {
LABEL_13:
          (*v57)(v58, v5);
          v32 = v60;
          v33 = *(v54 + 16);
          if (*(v54 + 24) <= v33)
          {
            specialized _NativeSet.resize(capacity:)(v33 + 1);
          }

          v2 = v61;
          result = NSObject._rawHashValue(seed:)(*(v61 + 40));
          v16 = v2 + 56;
          v17 = -1 << *(v2 + 32);
          v18 = result & ~v17;
          v19 = v18 >> 6;
          if (((-1 << v18) & ~*(v2 + 56 + 8 * (v18 >> 6))) != 0)
          {
            v20 = __clz(__rbit64((-1 << v18) & ~*(v2 + 56 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v34 = 0;
            v35 = (63 - v17) >> 6;
            do
            {
              if (++v19 == v35 && (v34 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v36 = v19 == v35;
              if (v19 == v35)
              {
                v19 = 0;
              }

              v34 |= v36;
              v37 = *(v16 + 8 * v19);
            }

            while (v37 == -1);
            v20 = __clz(__rbit64(~v37)) + (v19 << 6);
          }

          *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
          *(*(v2 + 48) + 8 * v20) = v32;
          ++*(v2 + 16);
        }

        v13 = __CocoaSet.Iterator.next()();
      }

      while (v13);
    }
  }

  else
  {
    v46 = v49;
    v47 = specialized _NativeSet.filter(_:)(a1, a2);
    if (!v46)
    {
      return v47;
    }
  }

  return v2;
}

void partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1)
{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

{
  thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(a1, *(v1 + 16));
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray) -> ()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _EXExtensionIdentity();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24_EXExtensionRepresenting_pMd, &_sSo24_EXExtensionRepresenting_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

void type metadata accessor for NWApplicationID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void _s7Network15NWApplicationIDVSgMaTm_0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t specialized _InnerAppExtensionIdentity.presentsUserInterface.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6940), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6940);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LaunchArguments and conformance LaunchArguments()
{
  result = lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments;
  if (!lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments;
  if (!lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments and conformance LaunchArguments);
  }

  return result;
}

uint64_t LaunchArguments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMd, &_ss22KeyedEncodingContainerVy19ExtensionFoundation15LaunchArgumentsV10CodingKeys33_D2FCF0381CAFFB8CF6AB845243C2FE04LLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v13[0] = *(v1 + 2);
  v13[1] = v10;
  v14 = v1[24];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v9;
  v17 = 0;
  lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v16 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

unint64_t lazy protocol witness table accessor for type ExtensionType and conformance ExtensionType()
{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType;
  if (!lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionType and conformance ExtensionType);
  }

  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySJGMd, &_ss23_ContiguousArrayStorageCySJGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.serviceDomains.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  (*(v3 + 496))(&v23, v2, v3);
  v4 = MEMORY[0x1E69E7CC8];
  if (v23 != 8)
  {
    v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
    v24 = v6;
    *&v23 = v5;
    outlined init with take of Any(&v23, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x767265536E69614DLL, 0xEB00000000656369, isUniquelyReferenced_nonNull_native);
    v8 = v1[3];
    v9 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v8);
    if ((*(v9 + 104))(v8, v9))
    {
      v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v24 = v6;
      *&v23 = v10;
      outlined init with take of Any(&v23, v22);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0x6C616E7265746E49, 0xEF65636976726553, v11);
    }

    v12 = v1[3];
    v13 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v12);
    (*(v13 + 496))(&v23, v12, v13);
    if (v23 == 7)
    {
      v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      v24 = v6;
      *&v23 = v14;
      outlined init with take of Any(&v23, v22);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0xD000000000000026, 0x80000001848C3E90, v15);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSSDySSypGGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSSDySSypGGtGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1848BA260;
    *(inited + 32) = 0x6976726553435058;
    *(inited + 40) = 0xEA00000000006563;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SDySSypGtGMd, &_ss23_ContiguousArrayStorageCySS_SDySSypGtGMR);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1848BA260;
    *(v17 + 32) = 0x7365636976726553;
    v18 = v17 + 32;
    *(v17 + 40) = 0xE800000000000000;
    *(v17 + 48) = v4;
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(v17);
    swift_setDeallocating();
    outlined destroy of NSObject?(v18, &_sSS_SDySSypGtMd, &_sSS_SDySSypGtMR);
    *(inited + 48) = v19;
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSDySSypGGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of NSObject?(inited + 32, &_sSS_SDySSSDySSypGGtMd, &_sSS_SDySSSDySSypGGtMR);
    v4 = specialized _dictionaryUpCast<A, B, C, D>(_:)(v20);
  }

  return v4;
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
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
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
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
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
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
      outlined init with copy of UUID?(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
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

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
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

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        specialized _NativeDictionary.copy()();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = specialized _NativeDictionary._delete(at:)(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.performsUserInteractiveWork.getter(void *a1)
{
  if (specialized _InnerAppExtensionIdentity.presentsUserInterface.getter())
  {
    return 1;
  }

  v3 = [a1 extensionPointRecord];
  v4 = [v3 extensionPointType];

  if (!v4 || (v5 = [a1 extensionPointRecord], v6 = objc_msgSend(v5, sel_extensionPointType), v5, v6 == 1))
  {
    v7 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C6B70), (v9 & 1) != 0))
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      if (swift_dynamicCast())
      {
        return v11;
      }
    }

    else
    {
    }
  }

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

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1847F0758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v93 - v4;
  v6 = _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter();
  v7 = MEMORY[0x1E69E6158];
  v96 = MEMORY[0x1E69E6158];
  *&v95 = v6;
  *(&v95 + 1) = v8;
  outlined init with take of Any(&v95, v94);
  v9 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v97 = v9;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x54706F6F4C6E7552, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  v11 = v97;
  v12 = v1[3];
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  v14 = (*(v13 + 232))(v12, v13);
  v15 = 0x746163696C707041;
  if (v14)
  {
    v15 = 0x6D6574737953;
  }

  v16 = 0xEB000000006E6F69;
  v96 = v7;
  if (v14)
  {
    v16 = 0xE600000000000000;
  }

  *&v95 = v15;
  *(&v95 + 1) = v16;
  outlined init with take of Any(&v95, v94);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v97 = v11;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x5465636976726553, 0xEB00000000657079, v17);
  v18 = v97;
  v19 = MEMORY[0x1E69E6370];
  v96 = MEMORY[0x1E69E6370];
  LOBYTE(v95) = 0;
  outlined init with take of Any(&v95, v94);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v97 = v18;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000013, 0x80000001848C3EE0, v20);
  v21 = v97;
  active_platform = dyld_get_active_platform();
  v96 = MEMORY[0x1E69E7668];
  LODWORD(v95) = active_platform;
  outlined init with take of Any(&v95, v94);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v21;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x6D726F6674616C50, 0xE800000000000000, v23);
  v24 = v93;
  v97 = v93;
  v25 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  outlined init with copy of UUID?(v1 + *(v25 + 24), v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = type metadata accessor for UUID();
  v27 = (*(*(v26 - 8) + 48))(v5, 1, v26) != 1;
  outlined destroy of NSObject?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v96 = v19;
  LOBYTE(v95) = v27;
  outlined init with take of Any(&v95, v94);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v24;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000012, 0x80000001848C3F00, v28);
  v29 = v93;
  v30 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *&v95 = v30;
  outlined init with take of Any(&v95, v94);
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v29;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000014, 0x80000001848C3F20, v31);
  v32 = v93;
  v97 = v93;
  v33 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v33);
  if ((*(v34 + 360))(v33, v34))
  {
    v96 = MEMORY[0x1E69E6530];
    *&v95 = 0;
    outlined init with take of Any(&v95, v94);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v32;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000016, 0x80000001848C3F40, v35);
    v36 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000016, 0x80000001848C3F40, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
    v36 = v97;
  }

  v37 = _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v96 = v38;
  *&v95 = v37;
  outlined init with take of Any(&v95, v94);
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v36;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000016, 0x80000001848C1EE0, v39);
  v40 = v93;
  v41 = _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v96 = v42;
  *&v95 = v41;
  outlined init with take of Any(&v95, v94);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v40;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000010, 0x80000001848C3F60, v43);
  v44 = v93;
  v45 = _EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter();
  v96 = v42;
  *&v95 = v45;
  outlined init with take of Any(&v95, v94);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v44;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000013, 0x80000001848C3F80, v46);
  v47 = v93;
  v97 = v93;
  v48 = _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter();
  if (v49)
  {
    v96 = v7;
    *&v95 = v48;
    *(&v95 + 1) = v49;
    outlined init with take of Any(&v95, v94);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v47;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x786F62646E61535FLL, 0xEF656C69666F7250, v50);
    v51 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x786F62646E61535FLL, 0xEF656C69666F7250, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
    v51 = v97;
  }

  v52 = MEMORY[0x1E69E6370];
  v96 = MEMORY[0x1E69E6370];
  LOBYTE(v95) = 0;
  outlined init with take of Any(&v95, v94);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v51;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000016, 0x80000001848C3FA0, v53);
  v54 = v93;
  v55 = v1[3];
  v56 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v55);
  v57 = (*(v56 + 216))(v55, v56);
  v96 = v52;
  LOBYTE(v95) = (v57 & 1) == 0;
  outlined init with take of Any(&v95, v94);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v54;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000011, 0x80000001848C3FC0, v58);
  v59 = v93;
  v60 = _EXExtensionProcessIdentity.JobDescriptor.additionalProperties.getter();
  v96 = v38;
  *&v95 = v60;
  outlined init with take of Any(&v95, v94);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v59;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000015, 0x80000001848C3FE0, v61);
  v62 = v93;
  v97 = v93;
  v63 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter();
  if (v64)
  {
    v96 = v7;
    *&v95 = v63;
    *(&v95 + 1) = v64;
    outlined init with take of Any(&v95, v94);
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v62;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000013, 0x80000001848C4000, v65);
    v97 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000013, 0x80000001848C4000, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
  }

  v66 = _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter();
  if (v67)
  {
    v96 = v7;
    *&v95 = v66;
    *(&v95 + 1) = v67;
    outlined init with take of Any(&v95, v94);
    v68 = v97;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v68;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD00000000000001BLL, 0x80000001848C4020, v69);
    v97 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001BLL, 0x80000001848C4020, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
  }

  v70 = v1[3];
  v71 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v70);
  if ((*(v71 + 232))(v70, v71))
  {
    v96 = v7;
    *&v95 = 0x656C69626F6DLL;
    *(&v95 + 1) = 0xE600000000000000;
    outlined init with take of Any(&v95, v94);
    v72 = v97;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v72;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x636341656C6F525FLL, 0xEC000000746E756FLL, v73);
    v97 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0x636341656C6F525FLL, 0xEC000000746E756FLL, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
  }

  v74 = _EXExtensionProcessIdentity.JobDescriptor.urgentLogSubmission.getter();
  if (v74)
  {
    v96 = v38;
    *&v95 = v74;
    outlined init with take of Any(&v95, v94);
    v75 = v97;
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v75;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000014, 0x80000001848C4040, v76);
    v97 = v93;
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000014, 0x80000001848C4040, &v95);
    outlined destroy of NSObject?(&v95, &_sypSgMd, &_sypSgMR);
  }

  v77 = v1[3];
  v78 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v77);
  if ((*(v78 + 152))(v77, v78))
  {
    v96 = v52;
    LOBYTE(v95) = 1;
    outlined init with take of Any(&v95, v94);
    v79 = v97;
    v80 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v79;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000018, 0x80000001848C4080, v80);
    v97 = v93;
  }

  v81 = v1[3];
  v82 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v81);
  v83 = (*(v82 + 96))(v81, v82);
  if (v84)
  {
    v96 = v7;
    *&v95 = v83;
    *(&v95 + 1) = v84;
    outlined init with take of Any(&v95, v94);
    v85 = v97;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v93 = v85;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x737365636F72505FLL, 0xEC00000065707954, v86);
    v87 = v93;
  }

  else
  {
    v87 = v97;
  }

  v96 = v7;
  *&v95 = 558059608;
  *(&v95 + 1) = 0xE400000000000000;
  outlined init with take of Any(&v95, v94);
  v88 = MEMORY[0x1E69E7CC8];
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v88;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0xD000000000000013, 0x80000001848C4060, v89);
  v90 = v93;
  v96 = v38;
  *&v95 = v87;
  outlined init with take of Any(&v95, v94);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v93 = v90;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v94, 0x6976726553435058, 0xEA00000000006563, v91);
  return v93;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.runLoopType.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  if ((*(v2 + 368))(v1, v2))
  {
    return 0xD000000000000012;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v16 + 5, v3, v4);
  if (BYTE5(v16) == 2)
  {
    return 0xD000000000000012;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v16 + 4, v5, v6);
  if (BYTE4(v16) == 3)
  {
    return 0xD000000000000012;
  }

  v7 = v0[3];
  v8 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v7);
  (*(v8 + 496))(&v16 + 3, v7, v8);
  if (BYTE3(v16) == 4)
  {
    return 0xD000000000000012;
  }

  v9 = v0[3];
  v10 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v9);
  (*(v10 + 496))(&v16 + 2, v9, v10);
  if (BYTE2(v16) == 5)
  {
    return 0xD000000000000012;
  }

  v11 = v0[3];
  v12 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v11);
  (*(v12 + 496))(&v16 + 1, v11, v12);
  if (BYTE1(v16) == 6)
  {
    return 0xD000000000000012;
  }

  v13 = v0[3];
  v14 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v13);
  (*(v14 + 496))(&v16, v13, v14);
  if (v16 == 7)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6F6F4C6E7552534ELL;
  }
}

BOOL protocol witness for _InnerAppExtensionIdentity.targetsServiceExtensionPoint.getter in conformance AppExtensionIdentity.RecordIdentity()
{
  specialized _InnerAppExtensionIdentity.groupIdentifier.getter(*v0);
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

char *_EXExtensionProcessIdentity.JobDescriptor.managedByServices.getter()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = _InnerAppExtensionIdentity.serviceName.getter(v2, v3);
  v6 = v5;
  v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 2);
  v8 = *(v7 + 3);
  if (v9 >= v8 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1, v7);
  }

  *(v7 + 2) = v9 + 1;
  v10 = &v7[16 * v9];
  *(v10 + 4) = v4;
  *(v10 + 5) = v6;
  v11 = v1[3];
  v12 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v11);
  (*(v12 + 496))(&v48 + 5, v11, v12);
  if (BYTE5(v48) != 8)
  {
    v13 = _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter();
    v16 = *(v7 + 2);
    v15 = *(v7 + 3);
    if (v16 >= v15 >> 1)
    {
      v39 = v13;
      v40 = v14;
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v7);
      v14 = v40;
      v7 = v41;
      v13 = v39;
    }

    *(v7 + 2) = v16 + 1;
    v17 = &v7[16 * v16];
    *(v17 + 4) = v13;
    *(v17 + 5) = v14;
    v18 = v1[3];
    v19 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v18);
    (*(v19 + 496))(&v48 + 4, v18, v19);
    if (BYTE4(v48) == 3)
    {
      goto LABEL_10;
    }

    v20 = v1[3];
    v21 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v20);
    (*(v21 + 496))(&v48 + 3, v20, v21);
    if (BYTE3(v48) == 4)
    {
      goto LABEL_10;
    }

    v22 = v1[3];
    v23 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v22);
    (*(v23 + 496))(&v48 + 2, v22, v23);
    if (BYTE2(v48) == 5 || (v24 = v1[3], v25 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v24), (*(v25 + 496))(&v48 + 1, v24, v25), BYTE1(v48) == 6))
    {
LABEL_10:
      v26 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
      v29 = *(v7 + 2);
      v28 = *(v7 + 3);
      if (v29 >= v28 >> 1)
      {
        v42 = v26;
        v43 = v27;
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1, v7);
        v27 = v43;
        v7 = v44;
        v26 = v42;
      }

      *(v7 + 2) = v29 + 1;
      v30 = &v7[16 * v29];
      *(v30 + 4) = v26;
      *(v30 + 5) = v27;
    }

    v31 = v1[3];
    v32 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v31);
    (*(v32 + 496))(&v48, v31, v32);
    if (v48 == 2)
    {
      v33 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
      v36 = *(v7 + 2);
      v35 = *(v7 + 3);
      if (v36 >= v35 >> 1)
      {
        v45 = v33;
        v46 = v34;
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v7);
        v34 = v46;
        v7 = v47;
        v33 = v45;
      }

      *(v7 + 2) = v36 + 1;
      v37 = &v7[16 * v36];
      *(v37 + 4) = v33;
      *(v37 + 5) = v34;
    }
  }

  return v7;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter()
{
  v1 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v2 = *(v1 + 48);
  v3 = (v0 + v2);
  if (*(v0 + v2 + 8))
  {
    v4 = *v3;
    v5 = *(v0 + v2 + 8);
  }

  else
  {
    v6 = (v0 + *(v1 + 28));
    v8 = *v6;
    v9 = v6[1];

    MEMORY[0x1865F37A0](46, 0xE100000000000000);
    MEMORY[0x1865F37A0](0x737365732D637078, 0xEB000000006E6F69);
    v4 = v8;
    *v3 = v8;
    v3[1] = v9;
  }

  return v4;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.uiApplicationClass.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v8 + 2, v1, v2);
  if (BYTE2(v8) == 7)
  {
    return 0xD000000000000017;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v8 + 1, v3, v4);
  if (BYTE1(v8) == 3)
  {
    return 0xD000000000000017;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v8, v5, v6);
  if (v8 == 5)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0;
  }
}

uint64_t outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x1865F3AE0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *_EXLaunchConfiguration.hostConfiguration.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v29[-v4];
  v6 = *(v0 + OBJC_IVAR____EXLaunchConfiguration__extensionIdentity);
  v7 = type metadata accessor for _EXHostConfiguration();
  v8 = objc_allocWithZone(v7);
  v9 = objc_allocWithZone(v7);
  v10 = v6;
  v11 = specialized _EXHostConfiguration.init(with:instanceIdentifier:)(v10, 0);

  swift_getObjectType();
  v12 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x30);
  v13 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x34);
  swift_deallocPartialClassInstance();
  v14 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_instanceIdentifier);
  v15 = *&v11[OBJC_IVAR____EXHostConfiguration_instanceIdentifier];
  *&v11[OBJC_IVAR____EXHostConfiguration_instanceIdentifier] = v14;
  v16 = v14;

  v17 = *&v11[OBJC_IVAR____EXHostConfiguration_preferredLanguages];
  *&v11[OBJC_IVAR____EXHostConfiguration_preferredLanguages] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_preferredLanguages);

  v18 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName + 8);
  v19 = &v11[OBJC_IVAR____EXHostConfiguration_sandboxProfileName];
  v20 = *&v11[OBJC_IVAR____EXHostConfiguration_sandboxProfileName + 8];
  *v19 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_sandboxProfileName);
  *(v19 + 1) = v18;

  v21 = *&v11[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables];
  *&v11[OBJC_IVAR____EXHostConfiguration_additionalEnvironmentVariables] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_additionalEnvironmentVariables);

  v22 = *(v1 + OBJC_IVAR____EXLaunchConfiguration_launchPersona);
  v23 = *&v11[OBJC_IVAR____EXHostConfiguration_launchPersona];
  *&v11[OBJC_IVAR____EXHostConfiguration_launchPersona] = v22;
  v24 = v22;

  v25 = *&v11[OBJC_IVAR____EXHostConfiguration_assertionAttributes];
  *&v11[OBJC_IVAR____EXHostConfiguration_assertionAttributes] = *(v1 + OBJC_IVAR____EXLaunchConfiguration_assertionAttributes);

  v26 = OBJC_IVAR____EXLaunchConfiguration_networkApplicationID;
  swift_beginAccess();
  outlined init with copy of UUID?(v1 + v26, v5, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v27 = OBJC_IVAR____EXHostConfiguration_networkApplicationID;
  swift_beginAccess();
  outlined assign with take of AppExtensionIdentity?(v5, &v11[v27], &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  swift_endAccess();
  return v11;
}

uint64_t RBSProcessIdentity.Attachment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v18 = v3[2];
    HIBYTE(v17) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = v3[3];
    HIBYTE(v17) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(type metadata accessor for RBSProcessIdentity.Attachment(0) + 32);
    LOBYTE(v18) = 4;
    type metadata accessor for NWApplicationID();
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys;
  if (!lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RBSProcessIdentity.Attachment.CodingKeys()
{
  v1 = *v0;
  v2 = 0xD00000000000001ELL;
  v3 = 0xD000000000000010;
  if (v1 != 3)
  {
    v3 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  *v0;
  if (*v0 <= 1u)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t outlined destroy of _EXExtensionProcessIdentity.JobConfiguration(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_1847F294C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
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
      outlined init with copy of UUID?(v4, &v13, &_sSS_yptMd, &_sSS_yptMR);
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

uint64_t _InnerAppExtensionIdentity.translocatedExecutableURL.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = type metadata accessor for URL();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 272))(a1, a2);
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v21 _EX_URLForBundleExecutable];

  if (v23)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  (*(v16 + 56))(v12, v24, 1, v15);
  v25 = v12;
  v26 = v14;
  outlined init with take of URL?(v25, v14);
  outlined init with copy of UUID?(v14, v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    outlined destroy of NSObject?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v27 = v34;
    (*(v16 + 32))(v34, v9, v15);
    if (URL.path.getter() || v28 != 0xE000000000000000)
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v29 & 1) == 0)
      {
        outlined destroy of NSObject?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        return (*(v16 + 8))(v19, v15);
      }
    }

    else
    {
    }

    (*(v16 + 8))(v27, v15);
  }

  v30 = objc_opt_self();
  v31 = MEMORY[0x1865F36D0](0xD000000000000029, 0x80000001848C6E10);
  [v30 _EX_errorWithCode_description_];

  swift_willThrow();
  outlined destroy of NSObject?(v26, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v16 + 8))(v19, v15);
}

uint64_t outlined init with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v51 - v4;
  v60 = type metadata accessor for NWApplicationID();
  v5 = *(v60 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v60);
  v52 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1848BA260;
  v16 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v17 = (v1 + v16[8]);
  v18 = v17[1];
  *(v15 + 32) = *v17;
  *(v15 + 40) = v18;
  v66 = v15;
  v56 = v16[5];
  outlined init with copy of UUID?(v1 + v56, v14, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v19 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  v57 = v19;
  v55 = v21;
  v54 = v20 + 48;
  if ((v21)(v14, 1) == 1)
  {

    outlined destroy of NSObject?(v14, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  }

  else
  {
    v22 = *(v14 + 3);

    outlined destroy of _EXExtensionProcessIdentity.Inner(v14, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    if (v22)
    {
      if (*(v22 + 16))
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1848BAA10;
        *(inited + 32) = 0x614C656C7070412DLL;
        *(inited + 40) = 0xEF7365676175676ELL;
        v62 = 8744;
        v63 = 0xE200000000000000;
        v61 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
        lazy protocol witness table accessor for type [String] and conformance [A]();
        v24 = BidirectionalCollection<>.joined(separator:)();
        v26 = v25;

        MEMORY[0x1865F37A0](v24, v26);

        MEMORY[0x1865F37A0](10530, 0xE200000000000000);
        v27 = v63;
        *(inited + 48) = v62;
        *(inited + 56) = v27;
        specialized Array.append<A>(contentsOf:)(inited);
      }

      else
      {
      }
    }
  }

  v59 = v5;
  v28 = v1[3];
  v29 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v28);
  (*(v29 + 496))(&v62, v28, v29);
  LOBYTE(v29) = v62;
  v30 = (v1 + v16[7]);
  v31 = *v30;
  v32 = v30[1];
  v33 = v1[3];
  v34 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v33);
  v35 = *(v34 + 168);

  LOBYTE(v33) = v35(v33, v34) & 1;
  v36 = type metadata accessor for JSONEncoder();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  LOBYTE(v62) = v29;
  v63 = v31;
  v64 = v32;
  v65 = v33;
  lazy protocol witness table accessor for type LaunchArguments and conformance LaunchArguments();
  v39 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v41 = v40;

  v42 = swift_initStackObject();
  *(v42 + 16) = xmmword_1848BAA10;
  *(v42 + 32) = 0xD000000000000010;
  *(v42 + 40) = 0x80000001848C4170;
  *(v42 + 48) = Data.base64EncodedString(options:)(0);
  specialized Array.append<A>(contentsOf:)(v42);
  outlined consume of Data._Representation(v39, v41);
  v43 = v59;
  outlined init with copy of UUID?(v1 + v56, v12, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v44 = v57;
  v45 = v55(v12, 1, v57);
  v46 = v60;
  v47 = v58;
  if (v45 == 1)
  {
    outlined destroy of NSObject?(v12, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    (*(v43 + 56))(v47, 1, 1, v46);
  }

  else
  {
    outlined init with copy of UUID?(&v12[*(v44 + 28)], v58, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    outlined destroy of _EXExtensionProcessIdentity.Inner(v12, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    if ((*(v43 + 48))(v47, 1, v46) != 1)
    {
      v48 = v52;
      (*(v43 + 32))(v52, v47, v46);
      v49 = NWApplicationID.encodedNetworkAppIDArgs()();
      specialized Array.append<A>(contentsOf:)(v49);
      (*(v43 + 8))(v48, v46);
      return v66;
    }
  }

  outlined destroy of NSObject?(v47, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  return v66;
}

uint64_t outlined destroy of _EXExtensionProcessIdentity.Inner(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t specialized _InnerAppExtensionIdentity.type.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  if ((specialized _InnerAppExtensionIdentity.presentsUserInterface.getter() & 1) == 0)
  {
    result = specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter();
    if (result)
    {
      v5 = 8;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_8;
  }

  result = [a1 platform];
  if ((result & 0x80000000) == 0)
  {
    if (result == 1)
    {
      v5 = 2;
    }

    else
    {
      result = specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter();
      if (result)
      {
        v5 = 7;
      }

      else
      {
        result = specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter(a1);
        if (result)
        {
          v5 = 3;
        }

        else
        {
          v5 = 4;
        }
      }
    }

LABEL_8:
    *a2 = v5;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys;
  if (!lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LaunchArguments.CodingKeys and conformance LaunchArguments.CodingKeys);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LaunchArguments.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchArguments.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LaunchArguments.CodingKeys()
{
  v1 = 0x4E65636976726573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter()
{
  v1 = v0;
  v43 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  outlined init with copy of UUID?(v1 + *(v8 + 20), v7, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v9 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of NSObject?(v7, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v10 = *(v7 + 2);

    outlined destroy of _EXExtensionProcessIdentity.Inner(v7, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  }

  v42 = v10;
  v11 = objc_opt_self();
  _EXExtensionProcessIdentity.JobDescriptor.serviceDomains.getter();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v41 = 0;
  v13 = [v11 dataWithJSONObject:isa options:0 error:&v41];

  v14 = v41;
  if (v13)
  {
    v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    static String.Encoding.utf8.getter();
    v18 = String.init(data:encoding:)();
    specialized Dictionary.subscript.setter(v18, v19, 0xD000000000000010, 0x80000001848C4150);
    outlined consume of Data._Representation(v15, v17);
  }

  else
  {
    v20 = v14;
    v21 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.general);
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = v21;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v29;
      *v27 = v29;
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
      MEMORY[0x1865F56C0](v27, -1, -1);
      MEMORY[0x1865F56C0](v26, -1, -1);
    }

    else
    {
    }
  }

  v30 = v1[3];
  v31 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v30);
  (*(v31 + 496))(&v40, v30, v31);
  v41 = v40;
  v32 = dispatch thunk of CustomStringConvertible.description.getter();
  v34 = v33;
  v35 = v42;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = v35;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v34, 0xD00000000000001CLL, 0x80000001848C1F90, isUniquelyReferenced_nonNull_native);
  result = v41;
  v38 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
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
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v22 = *v6;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v23 & 1))
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
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v24 = *v6;
  if (v19)
  {
    v25 = (v24[7] + 16 * v13);
    v26 = v25[1];
    *v25 = a1;
    v25[1] = a2;
  }

  v24[(v13 >> 6) + 8] |= 1 << v13;
  v28 = (v24[6] + 16 * v13);
  *v28 = a3;
  v28[1] = a4;
  v29 = (v24[7] + 16 * v13);
  *v29 = a1;
  v29[1] = a2;
  v30 = v24[2];
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v31;
}

uint64_t specialized _InnerAppExtensionIdentity.disableLaunchdCheckinTimeout.getter()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 disableLaunchdCheckinTimeout];

  if (v1)
  {
    return 1;
  }

  v3 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6B90), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v7;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 disableLaunchdCheckinTimeout];

  if (v2)
  {
    return 1;
  }

  v4 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C6B90);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v8 = *(*(v4 + 56) + 8 * v5);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.additionalSubServices.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v26, v1, v2);
  v3 = MEMORY[0x1E69E7CC8];
  if (v26 != 8)
  {
    v4 = MEMORY[0x1E69E6370];
    v27 = MEMORY[0x1E69E6370];
    LOBYTE(v26) = 1;
    outlined init with take of Any(&v26, v25);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x737365732D637078, 0xEB000000006E6F69, isUniquelyReferenced_nonNull_native);
    v6 = v0[3];
    v7 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v6);
    (*(v7 + 496))(&v26, v6, v7);
    if (v26 == 3)
    {
      goto LABEL_6;
    }

    v8 = v0[3];
    v9 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v8);
    (*(v9 + 496))(&v26, v8, v9);
    if (v26 == 4)
    {
      goto LABEL_6;
    }

    v10 = v0[3];
    v11 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v10);
    (*(v11 + 496))(&v26, v10, v11);
    if (v26 == 5 || (v12 = v0[3], v13 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v12), (*(v13 + 496))(&v26, v12, v13), v26 == 6))
    {
LABEL_6:
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v14 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0xD000000000000015, 0x80000001848C3EC0, v14);
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v15 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x7672657377656976, 0xEB00000000656369, v15);
    }

    v16 = v0[3];
    v17 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v16);
    (*(v17 + 496))(&v26, v16, v17);
    if (v26 == 2)
    {
      goto LABEL_10;
    }

    v18 = v0[3];
    v19 = v0[4];
    __swift_project_boxed_opaque_existential_1(v0, v18);
    (*(v19 + 496))(&v26, v18, v19);
    if (v26 == 5 || (v20 = v0[3], v21 = v0[4], __swift_project_boxed_opaque_existential_1(v0, v20), (*(v21 + 496))(&v26, v20, v21), v26 == 6))
    {
LABEL_10:
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v22 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0xD000000000000015, 0x80000001848C3EC0, v22);
      v27 = v4;
      LOBYTE(v26) = 1;
      outlined init with take of Any(&v26, v25);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v25, 0x6469726277656976, 0xEA00000000006567, v23);
    }
  }

  return v3;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.sandboxProfile.getter()
{
  v1 = v0;
  v2 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v35[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35[-v8];
  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 forceSandbox];

  if (v11 & 1) != 0 || (v12 = v1[3], v13 = v1[4], __swift_project_boxed_opaque_existential_1(v1, v12), ((*(v13 + 352))(v12, v13)))
  {
    v14 = v1[3];
    v15 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v14);
    v16 = (*(v15 + 328))(v14, v15);
  }

  else
  {
    v16 = 0;
  }

  outlined init with copy of UUID?(v1 + *(v2 + 20), v9, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v17 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  if ((*(*(v17 - 8) + 48))(v9, 1, v17) == 1)
  {
    outlined destroy of NSObject?(v9, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    return v16;
  }

  v18 = *v9;
  v19 = v9[1];

  outlined destroy of _EXExtensionProcessIdentity.Inner(v9, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  if (!v19)
  {
    return v16;
  }

  v20 = v1[3];
  v21 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v20);
  v22 = (*(v21 + 336))(v20, v21);
  v36[0] = v18;
  v36[1] = v19;
  MEMORY[0x1EEE9AC00](v22);
  *&v35[-16] = v36;
  LOBYTE(v20) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v35[-32], v22);

  if ((v20 & 1) == 0)
  {

    return v16;
  }

  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  __swift_project_value_buffer(v23, static Logger.general);
  outlined init with copy of _EXExtensionProcessIdentity.Inner(v1, v5, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v36[0] = v27;
    *v26 = 136446466;
    v28 = v5[3];
    v29 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v28);
    v30 = (*(v29 + 64))(v28, v29);
    v32 = v31;
    outlined destroy of _EXExtensionProcessIdentity.Inner(v5, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
    v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v36);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2082;
    *(v26 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v36);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v27, -1, -1);
    MEMORY[0x1865F56C0](v26, -1, -1);
  }

  else
  {

    outlined destroy of _EXExtensionProcessIdentity.Inner(v5, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
  }

  return v18;
}

unint64_t specialized _InnerAppExtensionIdentity.sandboxProfileName.getter(void *a1)
{
  v2 = [a1 extensionPointRecord];
  v3 = [v2 extensionPointType];

  if (v3)
  {
    v4 = [a1 extensionPointRecord];
    v5 = [v4 extensionPointType];

    if (v5 != 1)
    {
      goto LABEL_25;
    }
  }

  v6 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000015, 0x80000001848C6C60), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();

    v30 = v9;
    if (swift_dynamicCast())
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C6C80), (v12 & 1) == 0))
  {

    goto LABEL_13;
  }

  v13 = *(*(v10 + 56) + 8 * v11);
  swift_unknownObjectRetain();

  v30 = v13;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v16 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
    if (*(v16 + 16))
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(0x736E65747845534ELL, 0xEB000000006E6F69);
      if (v18)
      {
        v19 = *(*(v16 + 56) + 8 * v17);
        swift_unknownObjectRetain();

        v28 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_25:
          v14 = 0;
          v15 = 0;
          goto LABEL_26;
        }

        if (*(v30 + 16))
        {
          v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6CA0);
          if (v21)
          {
            v22 = *(*(v30 + 56) + 8 * v20);
            swift_unknownObjectRetain();

            v23 = swift_dynamicCast();
            if (v23)
            {
              v14 = v28;
            }

            else
            {
              v14 = 0;
            }

            if (v23)
            {
              v15 = v29;
            }

            else
            {
              v15 = 0;
            }

            goto LABEL_26;
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_11:
  v14 = v28;
  v15 = v29;
LABEL_26:
  v24 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  if (AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(v24, 0xD000000000000033, 0x80000001848C6C20, a1) && (swift_dynamicCast() & 1) != 0)
  {
    v14 = v28;
  }

  else if (!v15)
  {
    if (specialized _InnerAppExtensionIdentity.requiresEnhancedSecurity.getter())
    {
      return 0xD00000000000001FLL;
    }

    else
    {
      v25 = [objc_opt_self() sharedInstance];
      v26 = [v25 defaultSandboxProfileName];

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }
  }

  return v14;
}

uint64_t AppExtensionIdentity.RecordIdentity.entitlement(of:named:)(int a1, uint64_t a2, uint64_t a3, id a4)
{
  v6 = [a4 entitlements];
  v7 = MEMORY[0x1865F36D0](a2, a3);
  v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v9 = Optional._bridgeToObjectiveC()();
  outlined destroy of NSObject?(v11, &_sypSgMd, &_sypSgMR);
  return v9;
}

uint64_t closure #1 in _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter(uint64_t a1)
{
  outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
  v2 = v81;
  v3 = v82;
  __swift_project_boxed_opaque_existential_1(&v80, v81);
  v4 = (*(v3 + 232))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  v5 = (a1 + *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 28));
  v7 = *v5;
  v6 = v5[1];
  if (v4)
  {
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
    v8 = v81;
    v9 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, v81);

    v10 = _InnerAppExtensionIdentity.serviceName.getter(v8, v9);
    v79 = MEMORY[0x1E69E6158];
    *&v78 = v10;
    *(&v78 + 1) = v11;
    outlined init with take of Any(&v78, v77);
    v12 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v77, v7, v6, isUniquelyReferenced_nonNull_native);

    v14 = v12;
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
  }

  else
  {
    v15 = MEMORY[0x1E69E6370];
    v81 = MEMORY[0x1E69E6370];
    LOBYTE(v80) = 1;
    outlined init with take of Any(&v80, &v78);

    v16 = MEMORY[0x1E69E7CC8];
    v17 = swift_isUniquelyReferenced_nonNull_native();
    *&v77[0] = v16;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v7, v6, v17);

    v14 = v16;
    outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
    v18 = v81;
    v19 = v82;
    __swift_project_boxed_opaque_existential_1(&v80, v81);
    (*(v19 + 496))(&v78, v18, v19);
    LODWORD(v16) = v78;
    __swift_destroy_boxed_opaque_existential_0Tm(&v80);
    if (v16 != 8)
    {
      v20 = _EXExtensionProcessIdentity.JobDescriptor.xpcSessionMachName.getter();
      v22 = v21;
      v81 = v15;
      LOBYTE(v80) = 1;
      outlined init with take of Any(&v80, &v78);
      v23 = swift_isUniquelyReferenced_nonNull_native();
      *&v77[0] = v14;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v20, v22, v23);

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v24 = v81;
      v25 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      v26 = (*(v25 + 384))(v24, v25);
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      v27 = MEMORY[0x1E69E6158];
      if ((v26 & 1) == 0)
      {
        goto LABEL_7;
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v28 = v81;
      v29 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v29 + 496))(&v78, v28, v29);
      v30 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v30 == 4 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v31 = v81, v32 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v32 + 496))(&v78, v31, v32), v33 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v33 == 6))
      {
LABEL_7:
        v34 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v81 = v27;
        *&v80 = v34;
        *(&v80 + 1) = v35;
        outlined init with take of Any(&v80, &v78);
        v36 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, 0xD000000000000026, 0x80000001848C3E90, v36);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v37 = v81;
      v38 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      v39 = (*(v38 + 384))(v37, v38);
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if ((v39 & 1) == 0)
      {
        goto LABEL_11;
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v40 = v81;
      v41 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v41 + 496))(&v78, v40, v41);
      v42 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v42 == 3 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v43 = v81, v44 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v44 + 496))(&v78, v43, v44), v45 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v45 == 5))
      {
LABEL_11:
        v46 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v81 = v27;
        *&v80 = v46;
        *(&v80 + 1) = v47;
        outlined init with take of Any(&v80, &v78);
        v48 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, 0xD000000000000026, 0x80000001848C3E90, v48);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v49 = v81;
      v50 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v50 + 496))(&v78, v49, v50);
      v51 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v51 == 3)
      {
        goto LABEL_16;
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v52 = v81;
      v53 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v53 + 496))(&v78, v52, v53);
      v54 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v54 == 4)
      {
        goto LABEL_16;
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v55 = v81;
      v56 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v56 + 496))(&v78, v55, v56);
      v57 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v57 == 5 || (outlined init with copy of _InnerAppExtensionIdentity(a1, &v80), v58 = v81, v59 = v82, __swift_project_boxed_opaque_existential_1(&v80, v81), (*(v59 + 496))(&v78, v58, v59), v60 = v78, __swift_destroy_boxed_opaque_existential_0Tm(&v80), v60 == 6))
      {
LABEL_16:
        v61 = _EXExtensionProcessIdentity.JobDescriptor.viewserviceMachName.getter();
        v63 = v62;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v64 = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v61, v63, v64);

        v65 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
        v67 = v66;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v65, v67, v68);
      }

      outlined init with copy of _InnerAppExtensionIdentity(a1, &v80);
      v69 = v81;
      v70 = v82;
      __swift_project_boxed_opaque_existential_1(&v80, v81);
      (*(v70 + 496))(&v78, v69, v70);
      v71 = v78;
      __swift_destroy_boxed_opaque_existential_0Tm(&v80);
      if (v71 == 2)
      {
        v72 = _EXExtensionProcessIdentity.JobDescriptor.internalMachServiceName.getter();
        v74 = v73;
        v81 = v15;
        LOBYTE(v80) = 1;
        outlined init with take of Any(&v80, &v78);
        v75 = swift_isUniquelyReferenced_nonNull_native();
        *&v77[0] = v14;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v78, v72, v74, v75);
      }
    }
  }

  return v14;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter()
{
  v1 = *(type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0) + 52);
  if (*(v0 + v1))
  {
    v2 = *(v0 + v1);
  }

  else
  {
    v2 = closure #1 in _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter(v0);
    v3 = *(v0 + v1);

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.additionalProperties.getter()
{
  v1 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  v12 = v2;
  *&v11 = v1;
  outlined init with take of Any(&v11, v10);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0xD000000000000020, 0x80000001848C4100, isUniquelyReferenced_nonNull_native);
  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  if ((*(v6 + 488))(v5, v6) == 1)
  {
    v12 = MEMORY[0x1E69E6370];
    LOBYTE(v11) = 1;
    outlined init with take of Any(&v11, v10);
    v7 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x66666F6B636142, 0xE700000000000000, v7);
  }

  v12 = v2;
  *&v11 = v3;
  outlined init with take of Any(&v11, v10);
  v8 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x42676E696E6E7552, 0xEC0000006472616FLL, v8);
  return v3;
}

uint64_t specialized _InnerAppExtensionIdentity.launchThrottlePolicy.getter(void *a1)
{
  v2 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C6AC0), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      if (v8 == 0x64656C6261736964 && v9 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      if (v8 == 0x656C74746F726874 && v9 == 0xE900000000000064)
      {

        return 1;
      }

      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v7)
      {
        return 1;
      }
    }
  }

  else
  {
  }

  if (specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter())
  {
    return 2;
  }

  if (specialized _InnerAppExtensionIdentity.launchesViaExtensionKitService.getter(a1))
  {
    if ((specialized _InnerAppExtensionIdentity.presentsUserInterface.getter() & 1) == 0)
    {
      specialized _InnerAppExtensionIdentity.requiresLibXPCConnection.getter();
      return 0;
    }

    result = [a1 platform];
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
      return result;
    }

    if (result == 1)
    {
      return 0;
    }

    if ((specialized _InnerAppExtensionIdentity.requiresFBSceneHosting.getter() & 1) == 0)
    {
      specialized _InnerAppExtensionIdentity.requiresUIKitSceneHosting.getter(a1);
      return 0;
    }
  }

  return 1;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    outlined init with take of Any((*(v12 + 56) + 32 * v9), a3);
    specialized _NativeDictionary._delete(at:)(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

unint64_t _EXExtensionProcessIdentity.JobDescriptor.uiApplicationDelegateClass.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 496))(&v8 + 2, v1, v2);
  if (BYTE2(v8) == 7)
  {
    return 0xD00000000000001FLL;
  }

  v3 = v0[3];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v3);
  (*(v4 + 496))(&v8 + 1, v3, v4);
  if (BYTE1(v8) == 3)
  {
    return 0xD00000000000001FLL;
  }

  v5 = v0[3];
  v6 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v5);
  (*(v6 + 496))(&v8, v5, v6);
  if (v8 == 5)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _InnerAppExtensionIdentity.requiresUrgentCheckedAllocationsLogSubmission.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002FLL, 0x80000001848C6D20), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002FLL, 0x80000001848C6D20);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

uint64_t _EXExtensionProcessIdentity.JobDescriptor.urgentLogSubmission.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  v3 = (*(v2 + 160))(v1, v2);
  result = MEMORY[0x1E69E7CC8];
  if (v3)
  {
    v9 = MEMORY[0x1E69E6370];
    LOBYTE(v8) = 1;
    v5 = MEMORY[0x1E69E7CC8];
    outlined init with take of Any(&v8, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0xD000000000000012, 0x80000001848C40A0, isUniquelyReferenced_nonNull_native);
    result = v5;
  }

  if (!*(result + 16))
  {

    return 0;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.forceCheckedAllocations.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6D50), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x80000001848C6D50);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

uint64_t specialized _InnerAppExtensionIdentity.processType.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365636F72505845, 0xED00006570795473), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x7365636F72505845, 0xED00006570795473), (v3 & 1) != 0) && (v6 = *(*(v1 + 56) + 8 * v2), swift_unknownObjectRetain(), swift_dynamicCast()))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized _InnerAppExtensionIdentity.requiresLegacyInfrastructure.getter()
{
  v0 = protocol witness for _InnerAppExtensionIdentity.sdkDictionary.getter in conformance AppExtensionIdentity.RecordIdentity();
  if (*(v0 + 16) && (v1 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2620), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);
    swift_unknownObjectRetain();

    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
  }

  return 0;
}

{
  v1 = *(v0 + *(type metadata accessor for AppExtensionIdentity.ValueIdentity() + 64));
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2620);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(v1 + 56) + 8 * v2);
  swift_unknownObjectRetain();
  result = swift_dynamicCast();
  if (result)
  {
    return v5;
  }

  return result;
}

uint64_t @objc static _EXLaunchConfiguration.configureRBInfo(_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  v6 = a3;
  specialized static _EXLaunchConfiguration.configureRBInfo(_:)(v6, a5);

  return 1;
}

uint64_t RBSProcessIdentity.attachment.getter()
{
  v1 = [v0 validationToken];
  if (v1)
  {
    v2 = v1;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    v6 = type metadata accessor for JSONDecoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for RBSProcessIdentity.Attachment(0);
    lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment, type metadata accessor for RBSProcessIdentity.Attachment);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data._Representation(v3, v5);
  }

  else
  {
    v10 = objc_opt_self();
    v11 = MEMORY[0x1865F36D0](0xD00000000000001FLL, 0x80000001848C4890);
    [v10 _EX_errorWithCode_description_];

    return swift_willThrow();
  }
}

uint64_t RBSProcessIdentity.Attachment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVySo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLV10CodingKeysOGMR);
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment.CodingKeys and conformance RBSProcessIdentity.Attachment.CodingKeys();
  v26 = v11;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v18 = v24;
  v17 = v25;
  LOBYTE(v28) = 0;
  *v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v15[1] = v19;
  v22[2] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v27 = 1;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v15[2] = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v27 = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  v22[1] = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15[3] = v28;
  LOBYTE(v28) = 3;
  v15[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v15[5] = v20;
  type metadata accessor for NWApplicationID();
  LOBYTE(v28) = 4;
  lazy protocol witness table accessor for type RBSProcessIdentity.Attachment and conformance RBSProcessIdentity.Attachment(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID, MEMORY[0x1E6977CA8]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 8))(v26, v17);
  outlined init with take of UUID?(v7, v15 + *(v12 + 32), &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v15, v23, type metadata accessor for RBSProcessIdentity.Attachment);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v15, type metadata accessor for RBSProcessIdentity.Attachment);
}

uint64_t getEnumTagSinglePayload for _EXExtensionProcessIdentity.JobConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void specialized static _EXLaunchConfiguration.configureRBInfo(_:)(void *a1, char *a2)
{
  if (one-time initialization token for launch != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.launch);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    format = a2;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v28 = v10;
    *v9 = 136315138;
    v11 = [v6 identity];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 xpcServiceIdentifier];

      if (v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    v14 = String.init<A>(describing:)();
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, &v28);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_1847D1000, v7, v8, format, v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x1865F56C0](v10, -1, -1);
    MEMORY[0x1865F56C0](v9, -1, -1);
  }

  specialized static _EXLaunchConfiguration._configureLaunchContext(_:onlyJobInfo:)(v6);
  if (v2)
  {
    v17 = _convertErrorToNSError(_:)();
    v18 = [v17 domain];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        v24 = objc_opt_self();
        v25 = v17;
        v26 = _convertErrorToNSError(_:)();

        [v24 _EX_errorWithCode_underlyingError_];
        swift_willThrow();

        goto LABEL_15;
      }
    }

    swift_willThrow();
LABEL_15:
  }
}

void specialized static _EXLaunchConfiguration._configureLaunchContext(_:onlyJobInfo:)(void *a1)
{
  v347 = *MEMORY[0x1E69E9840];
  v323 = type metadata accessor for URL();
  v322 = *(v323 - 8);
  v2 = *(v322 + 64);
  v3 = MEMORY[0x1EEE9AC00](v323);
  v321 = &v295 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v326 = &v295 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v324 = &v295 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v331 = &v295 - v10;
  v329 = type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor(0);
  v11 = *(*(v329 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v329);
  v327 = &v295 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v325 = &v295 - v14;
  v328 = type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration(0);
  v336 = *(v328 - 8);
  v15 = *(v336 + 64);
  MEMORY[0x1EEE9AC00](v328);
  v330 = (&v295 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v335 = type metadata accessor for UUID();
  v334 = *(v335 - 8);
  v17 = *(v334 + 64);
  MEMORY[0x1EEE9AC00](v335);
  v332 = &v295 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v333 = &v295 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v295 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v295 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v295 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLVSgMd, &_sSo18RBSProcessIdentityC19ExtensionFoundationE10Attachment33_0985F4D16046E2F53D44E0038F37634ALLVSgMR);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v295 - v33;
  v35 = type metadata accessor for RBSProcessIdentity.Attachment(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v39 = &v295 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v43 = &v295 - v42;
  v44 = v337;
  v45 = RBSLaunchContext.hostHandle.getter();
  if (v44)
  {
    goto LABEL_63;
  }

  v311 = v30;
  v320 = v43;
  v317 = v36;
  v318 = v35;
  v319 = v34;
  v313 = v39;
  v310 = v25;
  v312 = v28;
  v337 = a1;
  v46 = v45;
  v47 = [objc_opt_self() identifierWithPid_];
  if (!v47)
  {
    v50 = objc_opt_self();
    *v345.val = 0;
    *&v345.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    *v345.val = 0xD00000000000002BLL;
    *&v345.val[2] = 0x80000001848C4590;
    atoken.val[0] = [v46 pid];
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865F37A0](v51);

    MEMORY[0x1865F37A0](96, 0xE100000000000000);
    v52 = MEMORY[0x1865F36D0](*v345.val, *&v345.val[2]);

    [v50 _EX_errorWithCode_description_];

    swift_willThrow();
LABEL_63:
    v145 = *MEMORY[0x1E69E9840];
    return;
  }

  v314 = v47;
  v316 = v46;
  [v46 auditToken];
  v339 = v341;
  v340 = v342;
  v48 = type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSBundleRecord, 0x1E6963620);
  v49 = @nonobjc LSBundleRecord.__allocating_init(auditToken:)(v339, *(&v339 + 1), v340, *(&v340 + 1));
  v53 = v49;
  v54 = v337;
  v55 = v319;
  if (v49)
  {
    objc_opt_self();
    v56 = swift_dynamicCastObjCClass();
    if (v56)
    {
      v57 = [v56 containingBundleRecord];
      if (v57)
      {
        v58 = v57;
        objc_opt_self();
        v315 = swift_dynamicCastObjCClass();
        if (v315)
        {
LABEL_11:
          v54 = v337;
          goto LABEL_13;
        }
      }

      v315 = 0;
      goto LABEL_11;
    }
  }

  v315 = 0;
LABEL_13:
  v59 = [v54 identity];
  if (!v59)
  {
    v69 = v53;
    v70 = objc_opt_self();
    v71 = MEMORY[0x1865F36D0](0xD000000000000028, 0x80000001848C45C0);
    [v70 _EX_errorWithCode_description_];

    swift_willThrow();
    goto LABEL_63;
  }

  v60 = v59;
  v61 = type metadata accessor for NWApplicationID();
  v62 = *(v61 - 8);
  v63 = *(v62 + 56);
  v308 = v62 + 56;
  v63(v320, 1, 1, v61);
  v64 = [v60 personaString];
  v319 = v60;
  if (v64 || (v64 = [v54 managedPersona]) != 0)
  {
    v65 = v64;
    v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v309 = v66;
  }

  else
  {
    v307 = 0;
    v309 = 0;
  }

  RBSProcessIdentity.attachment.getter();
  v67 = v55;
  v68 = (v317 + 56);
  v304 = v48;
  v305 = v63;
  v317 = v61;
  v306 = v53;
  v72 = v320;
  outlined destroy of NSObject?(v320, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v73 = v318;
  (*v68)(v67, 0, 1, v318);
  v74 = v67;
  v75 = v313;
  outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v74, v313, type metadata accessor for RBSProcessIdentity.Attachment);
  v76 = *v75;
  v77 = v75[1];
  v78 = v75[2];
  outlined init with copy of UUID?(v75 + *(v73 + 32), v72, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
  v79 = v75[3];

  [v316 auditToken];
  atoken = v345;
  audit_token_to_euid(&atoken);
  v80 = specialized RBSProcessIdentity.Attachment.makeAppExtensionRecord(userID:)();
  v299 = v76;
  v318 = v79;
  v81 = v80;
  v82 = [v81 bundleIdentifier];
  if (!v82)
  {
    goto LABEL_30;
  }

  v298 = v81;
  v303 = v77;
  v83 = v82;
  v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v86 = v85;

  v87 = [v319 xpcServiceIdentifier];
  v88 = v336;
  if (!v87)
  {
    goto LABEL_29;
  }

  v302 = v78;
  v89 = v87;
  v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v92 = v91;

  if (v84 == v90 && v86 == v92)
  {

    goto LABEL_27;
  }

  v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v93 & 1) == 0)
  {
LABEL_29:

    v81 = v298;
LABEL_30:

    v100 = 0xE000000000000000;
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    MEMORY[0x1865F37A0](0xD000000000000014, 0x80000001848C4760);
    v101 = [v81 bundleIdentifier];

    if (v101)
    {
      v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v103;
    }

    else
    {
      v102 = 0;
    }

    v104 = v313;
    MEMORY[0x1865F37A0](v102, v100);

    MEMORY[0x1865F37A0](0xD000000000000027, 0x80000001848C4780);
    v105 = [v319 xpcServiceIdentifier];
    if (v105)
    {
      v106 = v105;
      v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v109 = v108;
    }

    else
    {
      v107 = 0;
      v109 = 0xE000000000000000;
    }

    v110 = objc_opt_self();
    MEMORY[0x1865F37A0](v107, v109);

    MEMORY[0x1865F37A0](96, 0xE100000000000000);
    v111 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v110 _EX_errorWithCode_description_];

    swift_willThrow();
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v104, type metadata accessor for RBSProcessIdentity.Attachment);
    goto LABEL_61;
  }

LABEL_27:
  v94 = [v319 validationToken];
  v95 = v306;
  v297 = v86;
  if (v94)
  {
    v96 = v94;
    v97 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
  }

  else
  {
    v97 = 0;
    v99 = 0xF000000000000000;
  }

  v129 = v298;
  v130 = RBSProcessIdentity.makeProcessIdentityWith(_:validationToken:hostIdentifier:)(v298, v97, v99, v314);
  v300 = 0;
  v131 = v130;
  outlined consume of Data?(v97, v99);
  v132 = [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord_];
  v133 = [v129 extensionPointRecord];
  v134 = [v133 _EX_parentAppRecord];

  v301 = v131;
  if (v134)
  {
    if (v95)
    {
      v135 = v132;
      v136 = v95;
      v137 = static NSObject.== infix(_:_:)();

      v132 = v135;
      if ((v137 & 1) == 0)
      {
        goto LABEL_105;
      }

LABEL_101:

      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v313, type metadata accessor for RBSProcessIdentity.Attachment);
      v227 = v319;
      v228 = v303;
      v229 = v302;
LABEL_121:
      v264 = v301;
      v265 = v318;
      v266 = v299;
      goto LABEL_37;
    }
  }

  else if (!v95)
  {
    goto LABEL_101;
  }

LABEL_105:
  v296 = v132;
  if (v132 && (v251 = MEMORY[0x1865F36D0](0xD000000000000039, 0x80000001848C42F0), type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98), v252 = [v132 entitlementNamed:v251 ofClass:swift_getObjCClassFromMetadata()], v251, _bridgeAnyObjectToAny(_:)(), swift_unknownObjectRelease(), (swift_dynamicCast() & 1) != 0))
  {
    v253 = *v343.val;
    v254 = [*v343.val BOOLValue];
  }

  else
  {
    v254 = 0;
  }

  v255 = [v298 containingBundleRecord];
  if (!v255)
  {
    v228 = v303;
    v229 = v302;
    if (v95)
    {
      goto LABEL_119;
    }

LABEL_114:
    v259 = [v298 extensionPointRecord];
    v260 = [v259 extensionPointType];

    if (v260 == 1)
    {
      if (v95)
      {
        v261 = [v95 entitlements];
        v262 = MEMORY[0x1865F36D0](0x6B7361742D746567, 0xEE00776F6C6C612DLL);
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
        v263 = [v261 objectForKey:v262 ofClass:swift_getObjCClassFromMetadata()];

        if (v263)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          memset(&v343, 0, sizeof(v343));
        }

        v132 = v296;
        atoken = v343;
        if (*&v343.val[6])
        {
          if (swift_dynamicCast() && (v343.val[0] & 1) != 0)
          {
            goto LABEL_120;
          }

          goto LABEL_139;
        }
      }

      else
      {
        memset(&atoken, 0, sizeof(atoken));
        v132 = v296;
      }

      outlined destroy of NSObject?(&atoken, &_sypSgMd, &_sypSgMR);
      goto LABEL_139;
    }

    goto LABEL_119;
  }

  v256 = v255;
  if (!v95)
  {

    v228 = v303;
    v229 = v302;
    goto LABEL_119;
  }

  v257 = v95;
  v258 = static NSObject.== infix(_:_:)();

  v228 = v303;
  v229 = v302;
  if (v258)
  {
    goto LABEL_114;
  }

LABEL_119:
  v132 = v296;
  if (v254)
  {
LABEL_120:
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v313, type metadata accessor for RBSProcessIdentity.Attachment);

    v227 = v319;
    goto LABEL_121;
  }

LABEL_139:
  if (!v132)
  {
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v287 = objc_opt_self();
  v288 = [v132 requiredHostEntitlements];
  v289 = v132;
  v290 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  specialized _dictionaryUpCast<A, B, C, D>(_:)(v290);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *atoken.val = 0;
  LODWORD(v288) = [v287 auditToken:&v339 hasRequiredEntitlements:isa error:&atoken];

  if (!v288)
  {
    v293 = v95;
    v294 = *atoken.val;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v313, type metadata accessor for RBSProcessIdentity.Attachment);
    outlined destroy of NSObject?(v320, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    goto LABEL_63;
  }

  v292 = *atoken.val;
  _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v313, type metadata accessor for RBSProcessIdentity.Attachment);

  v227 = v319;
  v264 = v301;
  v265 = v318;
  v266 = v299;
  v132 = v289;
LABEL_37:
  if (!v132)
  {

    v118 = v264;
    v119 = v95;
    v120 = objc_opt_self();
    v113 = v227;
    v121 = MEMORY[0x1865F36D0](0xD000000000000027, 0x80000001848C4620);
    [v120 _EX_errorWithCode_description_];

    swift_willThrow();
LABEL_60:

LABEL_61:
    v142 = &_s7Network15NWApplicationIDVSgMd;
    v143 = &_s7Network15NWApplicationIDVSgMR;
    v144 = v320;
LABEL_62:
    outlined destroy of NSObject?(v144, v142, v143);
    goto LABEL_63;
  }

  v299 = v266;
  v318 = v265;
  v302 = v229;
  v112 = v132;
  v113 = v112;
  v301 = v264;
  v313 = v112;
  v303 = v228;
  if (v95)
  {
    v114 = [v112 containingBundleRecord];
    if (v114)
    {
      v115 = v114;
      v116 = v95;
      v117 = static NSObject.== infix(_:_:)();

      v118 = v301;
    }

    else
    {
      v118 = v264;
      v117 = 0;
    }

    v122 = [v313 containingBundleRecord];
    if (v122)
    {
      v123 = v122;
      v124 = v315;
      v125 = v315;
      if (v124)
      {
        v126 = v125;
        v127 = static NSObject.== infix(_:_:)();

        v117 |= v127;
      }

      else
      {
      }

      v118 = v301;
      v113 = v313;
    }

    else
    {
      v113 = v313;
      if (!v315)
      {
        v128 = 0;
        v117 = 1;
      }
    }
  }

  else
  {
    v118 = v264;
    v117 = 0;
  }

  if ([v113 requiresHostToBeContainerApp])
  {
    v138 = [v113 containingBundleRecord];

    v139 = v333;
    if (v138)
    {

      if ((v117 & 1) == 0)
      {

        v119 = v95;
        v140 = objc_opt_self();
        v141 = MEMORY[0x1865F36D0](0xD00000000000003BLL, 0x80000001848C46E0);
        [v140 _EX_errorWithCode_description_];

        swift_willThrow();
        goto LABEL_60;
      }
    }
  }

  else
  {

    v139 = v333;
  }

  v146 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v304 = v146;
  outlined init with copy of UUID?(v113 + v146, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (!*&atoken.val[6])
  {
    __break(1u);
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  outlined init with take of _InnerAppExtensionIdentity(&atoken, &v345);
  v147 = *&v345.val[6];
  v148 = v346;
  __swift_project_boxed_opaque_existential_1(&v345, *&v345.val[6]);
  v149 = (*(v148 + 224))(v147, v148);
  if (v150)
  {
    v151 = v149;
    v152 = v150;
    v153 = v309;
    __swift_destroy_boxed_opaque_existential_0Tm(&v345);
    v154 = specialized AuditToken.entitlement<A>(name:)();
    if (v154)
    {
      v155 = v154;
    }

    else
    {
      v155 = MEMORY[0x1E69E7CC0];
    }

    v156 = (v155 + 40);
    v157 = *(v155 + 16) + 1;
    v158 = v320;
    while (--v157)
    {
      if (*(v156 - 1) != v151 || v152 != *v156)
      {
        v156 += 2;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }

      v88 = v336;
      v160 = v301;
      v139 = v333;
      goto LABEL_79;
    }

    v177 = v95;
    v178 = objc_opt_self();
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    *atoken.val = 0xD000000000000026;
    *&atoken.val[2] = 0x80000001848C4360;
    MEMORY[0x1865F37A0](v151, v152);

    MEMORY[0x1865F37A0](96, 0xE100000000000000);
    v179 = MEMORY[0x1865F36D0](*atoken.val, *&atoken.val[2]);

    [v178 _EX_errorWithCode_description_];

    swift_willThrow();
    v142 = &_s7Network15NWApplicationIDVSgMd;
    v143 = &_s7Network15NWApplicationIDVSgMR;
    v144 = v158;
    goto LABEL_62;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(&v345);
  v160 = v118;
  v153 = v309;
LABEL_79:
  v161 = [v160 uuid];
  v162 = v335;
  v163 = v334;
  v164 = v332;
  v306 = v95;
  v309 = v153;
  if (v161)
  {
    v165 = v161;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v166 = v164;
    v167 = *(v163 + 32);
    v168 = v312;
    v167(v312, v166, v162);
    v169 = v311;
    v170 = *(v163 + 56);
    v170(v168, 0, 1, v162);
    v167(v169, v168, v162);
    v171 = v169;
    v170(v169, 0, 1, v162);
  }

  else
  {
    v172 = *(v334 + 56);
    v173 = 1;
    v172(v312, 1, 1, v335);
    v174 = [v337 oneShotUUID];
    v175 = v310;
    if (v174)
    {
      v176 = v174;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v173 = 0;
    }

    v180 = v175;
    v181 = v173;
    v182 = v175;
    v183 = v335;
    v172(v180, v181, 1, v335);
    v171 = v311;
    outlined init with take of UUID?(v182, v311, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    v184 = v312;
    if ((*(v334 + 48))(v312, 1, v183) != 1)
    {
      outlined destroy of NSObject?(v184, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  v185 = v337;
  v186 = [v337 requiredExistingProcess];
  if (v186)
  {

    v187 = v335;
    v188 = v171;
    v189 = v334;
    v190 = v313;
  }

  else
  {
    v190 = v313;
    v191 = [v313 requiresLegacyInfrastructure];
    v187 = v335;
    v188 = v171;
    v189 = v334;
    if (v191)
    {

      v192 = objc_opt_self();
      *v345.val = 0;
      *&v345.val[2] = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      strcpy(&v345, "Extension ");
      HIBYTE(v345.val[2]) = 0;
      v345.val[3] = -369098752;
      v193 = [v190 bundleIdentifier];
      v194 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v196 = v195;

      MEMORY[0x1865F37A0](v194, v196);

      MEMORY[0x1865F37A0](0xD000000000000020, 0x80000001848C46B0);
      v197 = MEMORY[0x1865F36D0](*v345.val, *&v345.val[2]);

      v198 = [v192 _EX_errorWithCode_description_];
LABEL_93:
      v198;

      swift_willThrow();
      outlined destroy of NSObject?(v320, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
      v142 = &_s10Foundation4UUIDVSgMd;
      v143 = &_s10Foundation4UUIDVSgMR;
      v144 = v188;
      goto LABEL_62;
    }
  }

  v199 = [v190 requiresMultiInstance];
  v200 = v309;
  if (v199 && (*(v189 + 48))(v188, 1, v187) == 1)
  {

    v201 = objc_opt_self();
    *v345.val = 0;
    *&v345.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(75);
    MEMORY[0x1865F37A0](0xD000000000000010, 0x80000001848C4650);
    v190 = v313;
    v202 = [v313 extensionPointIdentifier];
    v203 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v205 = v204;

    MEMORY[0x1865F37A0](v203, v205);

    MEMORY[0x1865F37A0](0xD000000000000039, 0x80000001848C4670);
    v197 = MEMORY[0x1865F36D0](*v345.val, *&v345.val[2]);

    v198 = [v201 _EX_errorWithCode_description_];
    goto LABEL_93;
  }

  v206 = [v185 requiredExistingProcess];
  v207 = v302;
  if (v206)
  {

    outlined destroy of NSObject?(v320, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
LABEL_96:
    v142 = &_s10Foundation4UUIDVSgMd;
    v143 = &_s10Foundation4UUIDVSgMR;
    v144 = v188;
    goto LABEL_62;
  }

  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v208 = v328;
  v209 = *(v328 + 28);
  v210 = v330;
  v305(v330 + v209, 1, 1, v317);

  v211 = (v210 + *(v208 + 32));
  v212 = v303;
  *v210 = v299;
  v210[1] = v212;
  v210[2] = v318;
  v210[3] = v207;
  outlined assign with copy of NWApplicationID?(v320, v210 + v209);
  *v211 = v307;
  v211[1] = v200;
  outlined init with copy of UUID?(v313 + v304, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  if (!*&atoken.val[6])
  {
    goto LABEL_145;
  }

  outlined init with take of _InnerAppExtensionIdentity(&atoken, &v345);
  v213 = v331;
  outlined init with copy of _EXExtensionProcessIdentity.JobConfiguration(v210, v331, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
  (*(v88 + 56))(v213, 0, 1, v208);
  v214 = v139;
  outlined init with copy of UUID?(v188, v139, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v215 = v329;
  v216 = v188;
  v217 = v327;
  v218 = &v327[*(v329 + 36)];
  *v218 = 0;
  *(v218 + 1) = 0;
  v219 = (v217 + v215[10]);
  *v219 = 0;
  v219[1] = 0;
  v220 = (v217 + v215[11]);
  *v220 = 0;
  v220[1] = 0;
  v221 = (v217 + v215[12]);
  *v221 = 0;
  v221[1] = 0;
  *(v217 + v215[13]) = 0;
  v222 = v215[14];
  *(v217 + v222) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v217 + v215[15]) = 0;
  v223 = *&v345.val[6];
  v224 = v346;
  __swift_project_boxed_opaque_existential_1(&v345, *&v345.val[6]);
  v225 = v326;
  v226 = v300;
  _InnerAppExtensionIdentity.translocatedExecutableURL.getter(v223, v224, v326);
  v300 = v226;
  if (v226)
  {

    outlined destroy of NSObject?(v214, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v331, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    outlined destroy of NSObject?(v320, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    __swift_destroy_boxed_opaque_existential_0Tm(&v345);

    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v210, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    v144 = v216;
    v142 = &_s10Foundation4UUIDVSgMd;
    v143 = &_s10Foundation4UUIDVSgMR;
    goto LABEL_62;
  }

  v230 = v321;
  URL.absoluteURL.getter();
  v231 = *(v322 + 8);
  v232 = v323;
  v231(v225, v323);
  v233 = URL.path(percentEncoded:)(0);
  v231(v230, v232);
  *(v217 + v215[8]) = v233;
  outlined init with copy of _InnerAppExtensionIdentity(&v345, v217);
  v234 = v331;
  outlined init with copy of UUID?(v331, v217 + v215[5], &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v235 = v333;
  outlined init with copy of UUID?(v333, v217 + v215[6], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v236 = *&v345.val[6];
  v237 = v346;
  __swift_project_boxed_opaque_existential_1(&v345, *&v345.val[6]);
  v238 = _InnerAppExtensionIdentity.serviceName.getter(v236, v237);
  v240 = v239;
  outlined destroy of NSObject?(v235, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v234, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
  v241 = (v217 + v215[7]);
  *v241 = v238;
  v241[1] = v240;
  v242 = v325;
  outlined init with take of _EXExtensionProcessIdentity.JobDescriptor(v217, v325, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
  __swift_destroy_boxed_opaque_existential_0Tm(&v345);
  v243 = MEMORY[0x1865F36D0](*(v242 + v215[8]), *(v242 + v215[8] + 8));
  v244 = v337;
  [v337 _setOverrideExecutablePath_];

  _EXExtensionProcessIdentity.JobDescriptor.programArguments.getter();
  v245 = Array._bridgeToObjectiveC()().super.isa;

  [v244 setArguments_];

  v246 = _EXExtensionProcessIdentity.JobDescriptor.environmentVariables.getter();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v246);

  v247 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v244 _setAdditionalEnvironment_];

  v248 = [v244 attributes];
  if (v248)
  {
    v249 = v248;
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
    v250 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v250 = MEMORY[0x1E69E7CC0];
  }

  v188 = v311;
  v338 = v250;
  outlined init with copy of UUID?(v313 + v304, &atoken, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  v267 = v320;
  if (*&atoken.val[6])
  {
    outlined init with take of _InnerAppExtensionIdentity(&atoken, &v345);
    v268 = *&v345.val[6];
    v269 = v346;
    __swift_project_boxed_opaque_existential_1(&v345, *&v345.val[6]);
    v270 = _InnerAppExtensionIdentity.assertionAttributes.getter(v268, v269);
    if (v270 >> 62)
    {
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      v271 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
      v271 = v270;
    }

    specialized Array.append<A>(contentsOf:)(v271);
    __swift_destroy_boxed_opaque_existential_0Tm(&v345);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for RBSAttribute, 0x1E69C7550);
    v272 = Array._bridgeToObjectiveC()().super.isa;

    v273 = v337;
    [v337 setAttributes_];

    v274 = v325;
    _EXExtensionProcessIdentity.JobDescriptor.xpcOverlay.getter();
    v275 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v273 setExtensionOverlay_];

    v276 = _EXExtensionProcessIdentity.JobDescriptor._launchRequestEndpointIdentifiers.getter();
    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSyp_GTt0g5(v276);
    v277 = Set._bridgeToObjectiveC()().super.isa;

    [v273 setManagedEndpointLaunchIdentifiers_];

    v278 = v324;
    outlined init with copy of UUID?(v274 + *(v329 + 20), v324, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
    v279 = v328;
    if ((*(v336 + 48))(v278, 1, v328) == 1)
    {
      outlined destroy of NSObject?(v278, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMd, &_s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVSgMR);
      v280 = 0;
      v281 = &unk_1E6E4E000;
    }

    else
    {
      v282 = (v278 + *(v279 + 32));
      v284 = *v282;
      v283 = v282[1];

      _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v278, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
      v281 = &unk_1E6E4E000;
      if (v283)
      {
        v280 = MEMORY[0x1865F36D0](v284, v283);
      }

      else
      {
        v280 = 0;
      }
    }

    v285 = v337;
    [v337 setManagedPersona_];

    v286 = v316;
    [v285 setHostPid_];

    outlined destroy of NSObject?(v267, &_s7Network15NWApplicationIDVSgMd, &_s7Network15NWApplicationIDVSgMR);
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v274, type metadata accessor for _EXExtensionProcessIdentity.JobDescriptor);
    _s19ExtensionFoundation27_EXExtensionProcessIdentityC16JobConfigurationVWOhTm_0(v330, type metadata accessor for _EXExtensionProcessIdentity.JobConfiguration);
    goto LABEL_96;
  }

LABEL_147:
  __break(1u);
}